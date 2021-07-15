// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:38 2021

cbuffer _Globals : register(b0)
{
  float4 flagParams : packoffset(c0);
  float4 colorObjMin : packoffset(c1);
  float4 colorObjMax : packoffset(c2);
  float colorObjMinBaseBlend : packoffset(c3);
  float colorObjMaxBaseBlend : packoffset(c3.y);
  float2 uvScroll : packoffset(c3.z);
  float4 detailScale : packoffset(c4);
  float4 detailScale1 : packoffset(c5);
  float4 detailScale2 : packoffset(c6);
  float4 detailScale3 : packoffset(c7);
  float4 alphaRevealParms : packoffset(c8);
  float4 colorDetailScale : packoffset(c9);
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float2 mixScale : packoffset(c12.z);
  float detailScaleHeight1 : packoffset(c13);
  float detailScaleHeight2 : packoffset(c13.y);
  float4 colorTint1 : packoffset(c14);
  float2 glossRange2 : packoffset(c15);
  float rotateUVs1 : packoffset(c15.z);
  float rotateUVs2 : packoffset(c15.w);
  bool useUVOffsets1 : packoffset(c16);
  bool useUVOffsets2 : packoffset(c16.y);
  float2 revealTiling : packoffset(c16.z);
}

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState mixSampler_s : register(s4);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> revealMap : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> tintMask : register(t9);
Texture2D<float4> normalMap : register(t10);
Texture2D<float4> detailMap1 : register(t11);
Texture2D<float4> tintMask2 : register(t12);
Texture2D<float4> detailMap2 : register(t14);
Texture2D<float4> colorMapDetail2 : register(t15);
Texture2D<float4> mixMap : register(t16);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  sincos(rotateUVs1, r0.x, r1.x);
  r2.z = r0.x;
  r2.y = r1.x;
  r2.x = -r0.x;
  r0.xy = float2(-0.5,-0.5) + v2.xy;
  r1.x = dot(r0.xy, r2.yz);
  r1.y = dot(r0.xy, r2.xy);
  r0.zw = v3.yx + r1.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xy = detailScale1.xy * r1.xy;
  r1.z = 0.5 + v3.z;
  r0.zw = r1.zz + r0.zw;
  r0.zw = detailScale1.xy * r0.zw;
  r0.zw = useUVOffsets1 ? r0.zw : r1.xy;
  r1.x = tintMask.Sample(colorSampler_s, r0.zw).x;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyw = r1.xxx * r2.xyz + float3(1,1,1);
  r2.xyz = colorMap.Sample(colorSampler_s, r0.zw).xyz;
  r3.xyz = detailMap1.Sample(normalSampler_s, r0.zw).xyz;
  r1.xyw = r2.xyz * r1.xyw;
  sincos(rotateUVs2, r2.x, r4.x);
  r5.z = r2.x;
  r5.y = r4.x;
  r5.x = -r2.x;
  r2.y = dot(r0.xy, r5.xy);
  r2.x = dot(r0.xy, r5.yz);
  r0.xy = v3.yx + r2.xy;
  r0.zw = float2(0.5,0.5) + r2.xy;
  r0.xy = r0.xy + r1.zz;
  r0.xyzw = detailScale2.xyxy * r0.xyzw;
  r0.xy = useUVOffsets1 ? r0.xy : r0.zw;
  r0.z = tintMask2.Sample(colorSampler_s, r0.xy).x;
  r2.xyz = float3(-1,-1,-1) + colorTint1.xyz;
  r2.xyz = r0.zzz * r2.xyz + float3(1,1,1);
  r4.xyz = colorMapDetail2.Sample(colorSampler_s, r0.xy).xyz;
  r0.xyz = detailMap2.Sample(normalSampler_s, r0.xy).xyz;
  r2.xyz = r4.xyz * r2.xyz + -r1.xyw;
  r4.xy = mixScale.xy * v2.xy;
  r0.w = mixMap.Sample(mixSampler_s, r4.xy).x;
  r1.xyz = r0.www * r2.xyz + r1.xyw;
  r1.xyz = v1.xyz * r1.xyz;
  r1.w = saturate(w1.x * 0.998000026 + 0.00100000005);
  r2.x = log2(r1.w);
  r1.w = 1 + -r1.w;
  r2.y = saturate(alphaRevealRamp);
  r2.x = r2.y * r2.x;
  r2.x = exp2(r2.x);
  r4.x = -r2.x;
  r2.x = log2(r1.w);
  r2.x = r2.y * r2.x;
  r4.y = exp2(r2.x);
  r2.xy = saturate(alphaRevealSoftEdge * r4.xy + r1.ww);
  r2.zw = useUVOffsets1 * v2.xy;
  r2.zw = revealScale.xy * r2.zw;
  r1.w = revealMap.Sample(revealSampler_s, r2.zw).x;
  r1.w = r1.w + -r2.x;
  r2.x = r2.y + -r2.x;
  r1.w = saturate(r1.w / r2.x);
  o0.xyz = r1.xyz * r1.www;
  o0.w = r1.w;
  r0.z = r0.z * r0.z;
  r0.xy = r0.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r1.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r1.z = r1.z * r1.z;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r2.w = r0.z * detailScaleHeight2 + r1.z;
  r0.z = r3.z * r3.z;
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.xy = r3.xy * detailScaleHeight1 + r1.xy;
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r4.w = r0.z * detailScaleHeight1 + r1.z;
  r0.xy = r0.xy * detailScaleHeight2 + r1.xy;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r3.z = sqrt(r1.x);
  r0.z = r3.z;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r2.xyz = r1.xxx * r0.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r4.xyz = r3.xyz * r0.xxx;
  r2.xyzw = -r4.xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + r4.xyzw;
  r0.x = dot(v6.xyz, v6.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v6.xyz * r0.xxx;
  r1.x = v7.x ? 1 : -1;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r0.xyz * r2.yyy;
  r1.y = dot(v5.xyz, v5.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = v5.xyz * r1.yyy;
  r3.xyz = r3.xyz * r1.xxx;
  r0.xyz = r3.xyz * r2.xxx + r0.xyz;
  r1.y = dot(v4.xyz, v4.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = v4.xyz * r1.yyy;
  r1.xyz = r3.xyz * r1.xxx;
  r0.xyz = r1.xyz * r2.zzz + r0.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r3.xy = (uint2)v0.xy;
  r3.zw = float2(0,0);
  r1.xy = resolvedNormal.Load(r3.xyz).zw;
  r1.y = r1.y * 3 + 0.5;
  r1.y = (uint)r1.y;
  r3.xyzw = (int4)r1.yyyy & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r1.y = (int)r3.w ^ (int)r3.z;
  r3.z = r1.y ? -0.577350259 : 0.577350259;
  r1.y = dot(r0.xyz, r3.xyz);
  r1.y = 1 + abs(r1.y);
  r1.y = rsqrt(r1.y);
  r2.xyz = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r3.xy = float2(-1.22474492,1.22474492) * r3.xz;
  r3.y = dot(r0.xz, r3.xy);
  r3.x = dot(r0.xyz, r2.xyz);
  r0.xy = r3.xy * r1.yy;
  r0.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r1.y = saturate(0.0588235296 * glossRange2.y);
  r1.z = saturate(0.0588235296 * glossRange.y);
  r1.y = r1.y + -r1.z;
  r0.w = r0.w * r1.y + r1.z;
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.w + r0.w;
  r0.w = log2(r0.w);
  r0.w = saturate(-0.0588235296 * r0.w);
  r1.y = cmp(r1.x >= 0.5);
  r1.x = cmp(0 < r1.x);
  r1.y = r1.y ? 0.5 : 0.00146627566;
  r0.z = r0.w * 0.49755621 + r1.y;
  r0.xyz = r1.xxx ? r0.xyz : 0;
  o1.xyz = r0.xyz * r1.www;
  o1.w = r1.w;
  o2.xyzw = float4(0.0399999991,0.5,1,1) * r1.wwww;
  return;
}