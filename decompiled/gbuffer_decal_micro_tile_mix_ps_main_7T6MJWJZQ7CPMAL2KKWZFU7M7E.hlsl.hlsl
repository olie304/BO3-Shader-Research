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
SamplerState specColorSampler_s : register(s3);
SamplerState normalSampler_s : register(s4);
SamplerState aoSampler_s : register(s5);
SamplerState mixSampler_s : register(s6);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> revealMap : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> tintMask : register(t9);
Texture2D<float4> normalMap : register(t10);
Texture2D<float4> glossMap : register(t11);
Texture2D<float4> aoMap : register(t12);
Texture2D<float4> detailMap1 : register(t14);
Texture2D<float4> tintMask2 : register(t15);
Texture2D<float4> detailMap2 : register(t16);
Texture2D<float4> glossMapDetail2 : register(t17);
Texture2D<float4> colorMapDetail2 : register(t18);
Texture2D<float4> mixMap : register(t19);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation float3 v2 : UVOFFSETS0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  sincos(rotateUVs1, r0.x, r1.x);
  r2.z = r0.x;
  r2.y = r1.x;
  r2.x = -r0.x;
  r0.xy = float2(-0.5,-0.5) + w1.xy;
  r1.x = dot(r0.xy, r2.yz);
  r1.y = dot(r0.xy, r2.xy);
  r0.zw = v2.yx + r1.xy;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xy = detailScale1.xy * r1.xy;
  r1.z = 0.5 + v2.z;
  r0.zw = r1.zz + r0.zw;
  r0.zw = detailScale1.xy * r0.zw;
  r0.zw = useUVOffsets1 ? r0.zw : r1.xy;
  r1.x = tintMask.Sample(colorSampler_s, r0.zw).x;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyw = r1.xxx * r2.xyz + float3(1,1,1);
  r2.xyz = colorMap.Sample(colorSampler_s, r0.zw).xyz;
  r1.xyw = r2.xyz * r1.xyw;
  sincos(rotateUVs2, r2.x, r3.x);
  r4.z = r2.x;
  r4.y = r3.x;
  r4.x = -r2.x;
  r2.y = dot(r0.xy, r4.xy);
  r2.x = dot(r0.xy, r4.yz);
  r0.xy = v2.yx + r2.xy;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = detailScale2.xy * r2.xy;
  r0.xy = r0.xy + r1.zz;
  r0.xy = detailScale2.xy * r0.xy;
  r0.xy = useUVOffsets1 ? r0.xy : r2.xy;
  r1.z = tintMask2.Sample(colorSampler_s, r0.xy).x;
  r2.xyz = float3(-1,-1,-1) + colorTint1.xyz;
  r2.xyz = r1.zzz * r2.xyz + float3(1,1,1);
  r3.xyz = colorMapDetail2.Sample(colorSampler_s, r0.xy).xyz;
  r2.xyz = r3.xyz * r2.xyz + -r1.xyw;
  r3.xy = mixScale.xy * w1.xy;
  r1.z = mixMap.Sample(mixSampler_s, r3.xy).x;
  r1.xyw = r1.zzz * r2.xyz + r1.xyw;
  r2.x = saturate(v1.x * 0.998000026 + 0.00100000005);
  r2.y = log2(r2.x);
  r2.x = 1 + -r2.x;
  r2.z = saturate(alphaRevealRamp);
  r2.y = r2.z * r2.y;
  r2.y = exp2(r2.y);
  r3.x = -r2.y;
  r2.y = log2(r2.x);
  r2.y = r2.z * r2.y;
  r3.y = exp2(r2.y);
  r2.xy = saturate(alphaRevealSoftEdge * r3.xy + r2.xx);
  r2.zw = useUVOffsets1 * w1.xy;
  r2.zw = revealScale.xy * r2.zw;
  r2.z = revealMap.Sample(revealSampler_s, r2.zw).x;
  r2.z = r2.z + -r2.x;
  r2.x = r2.y + -r2.x;
  r2.x = saturate(r2.z / r2.x);
  o0.xyz = r2.xxx * r1.xyw;
  o0.w = r2.x;
  r1.x = glossMapDetail2.Sample(specColorSampler_s, r0.xy).x;
  r2.yzw = detailMap2.Sample(normalSampler_s, r0.xy).xyz;
  r0.x = glossRange2.y + -glossRange2.x;
  r0.x = r1.x * r0.x + glossRange2.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r0.y = glossMap.Sample(specColorSampler_s, r0.zw).x;
  r1.xyw = detailMap1.Sample(normalSampler_s, r0.zw).xyz;
  r0.z = glossRange.y + -glossRange.x;
  r0.y = r0.y * r0.z + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r0.x = r0.x + -r0.y;
  r0.x = r1.z * r0.x + r0.y;
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = r2.w * r2.w;
  r0.zw = r2.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.y = 0.333333343 * r0.y;
  r0.y = min(1, r0.y);
  r2.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.yzw = float3(-0.5,-0.5,-0) + r2.yzw;
  r2.yzw = baseNormalHeight * r2.yzw + float3(0.5,0.5,0);
  r2.w = r2.w * r2.w;
  r2.yz = r2.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r3.w = r0.y * detailScaleHeight2 + r2.w;
  r0.y = r1.w * r1.w;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.xy = r1.xy * detailScaleHeight1 + r2.yz;
  r0.y = 0.333333343 * r0.y;
  r0.y = min(1, r0.y);
  r5.w = r0.y * detailScaleHeight1 + r2.w;
  r6.xy = r0.zw * detailScaleHeight2 + r2.yz;
  r0.y = dot(r2.yz, r2.yz);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r4.z = sqrt(r0.y);
  r6.z = r4.z;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = r6.xyz * r0.yyy;
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = rsqrt(r0.y);
  r5.xyz = r4.xyz * r0.yyy;
  r3.xyzw = -r5.xyzw + r3.xyzw;
  r1.xyzw = r1.zzzz * r3.xyzw + r5.xyzw;
  r0.x = r1.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  r3.xy = (uint2)v0.xy;
  r3.zw = float2(0,0);
  r0.yz = resolvedNormal.Load(r3.xyz).zw;
  r0.w = cmp(r0.y >= 0.5);
  r0.w = r0.w ? 0.5 : 0.00146627566;
  r3.z = r0.x * 0.49755621 + r0.w;
  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r2.yzw = v5.xyz * r0.xxx;
  r0.x = v6.x ? 1 : -1;
  r2.yzw = r2.yzw * r0.xxx;
  r2.yzw = r2.yzw * r1.yyy;
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v4.xyz * r0.www;
  r4.xyz = r4.xyz * r0.xxx;
  r1.xyw = r4.xyz * r1.xxx + r2.yzw;
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = rsqrt(r0.w);
  r2.yzw = v3.xyz * r0.www;
  r2.yzw = r2.yzw * r0.xxx;
  r1.xyz = r2.yzw * r1.zzz + r1.xyw;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r1.xyz = r1.xyz * r0.xxx;
  r0.x = r0.z * 3 + 0.5;
  r0.y = cmp(0 < r0.y);
  r0.x = (uint)r0.x;
  r4.xyzw = (int4)r0.xxxx & int4(2,1,2,1);
  r4.xyzw = r4.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.x = (int)r4.w ^ (int)r4.z;
  r4.z = r0.x ? -0.577350259 : 0.577350259;
  r0.x = dot(r1.xyz, r4.xyz);
  r0.x = 1 + abs(r0.x);
  r0.x = rsqrt(r0.x);
  r2.yzw = float3(0.707106769,-1.41421354,0.707106769) * r4.xyz;
  r0.zw = float2(-1.22474492,1.22474492) * r4.xz;
  r4.y = dot(r1.xz, r0.zw);
  r4.x = dot(r1.xyz, r2.yzw);
  r0.xz = r4.xy * r0.xx;
  r3.xy = r0.xz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.xyz = r0.yyy ? r3.xyz : 0;
  o1.xyz = r0.xyz * r2.xxx;
  o1.w = r2.x;
  r0.z = aoMap.Sample(aoSampler_s, w1.xy).x;
  r0.xyw = float3(0.0399999991,0.5,1);
  o2.xyzw = r0.xyzw * r2.xxxx;
  return;
}