// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:30:50 2021

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
  float baseNormalHeight : packoffset(c10);
  float2 glossRange : packoffset(c10.y);
  float2 mixScale : packoffset(c11);
  float detailScaleHeight1 : packoffset(c11.z);
  float detailScaleHeight2 : packoffset(c11.w);
  float4 colorTint : packoffset(c12);
  float4 colorTint1 : packoffset(c13);
  float2 glossRange2 : packoffset(c14);
  float rotateUVs1 : packoffset(c14.z);
  float rotateUVs2 : packoffset(c14.w);
  bool useUVOffsets1 : packoffset(c15);
  bool useUVOffsets2 : packoffset(c15.y);
}

SamplerState colorSampler_s : register(s1);
SamplerState normalSampler_s : register(s2);
SamplerState mixSampler_s : register(s3);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> normalMap : register(t6);
Texture2D<float4> detailMap1 : register(t7);
Texture2D<float4> tintMask1 : register(t9);
Texture2D<float4> tintMask2 : register(t10);
Texture2D<float4> detailMap2 : register(t11);
Texture2D<float4> colorMapDetail2 : register(t12);
Texture2D<float4> mixMap : register(t14);


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

  r0.xy = mixScale.xy * w1.xy;
  r0.x = mixMap.Sample(mixSampler_s, r0.xy).x;
  sincos(rotateUVs1, r1.x, r2.x);
  r3.x = -r1.x;
  r0.yz = float2(-0.5,-0.5) + w1.xy;
  r3.y = r2.x;
  r3.z = r1.x;
  r1.x = dot(r0.yz, r3.yz);
  r1.y = dot(r0.yz, r3.xy);
  r1.zw = v2.yx + r1.xy;
  r0.w = 0.5 + v2.z;
  r1.zw = r1.zw + r0.ww;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.xyzw = detailScale1.xyxy * r1.xyzw;
  r1.xy = useUVOffsets1 ? r1.zw : r1.xy;
  r2.xyzw = colorMap.Sample(colorSampler_s, r1.xy).xyzw;
  r1.z = tintMask1.Sample(colorSampler_s, r1.xy).x;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r1.zzz * r3.xyz + float3(1,1,1);
  r2.xyz = r3.xyz * r2.xyz;
  sincos(rotateUVs2, r3.x, r4.x);
  r5.x = -r3.x;
  r5.y = r4.x;
  r5.z = r3.x;
  r3.x = dot(r0.yz, r5.yz);
  r3.y = dot(r0.yz, r5.xy);
  r0.yz = v2.yx + r3.xy;
  r0.yz = r0.yz + r0.ww;
  r0.yz = detailScale2.xy * r0.yz;
  r1.zw = float2(0.5,0.5) + r3.xy;
  r1.zw = detailScale2.xy * r1.zw;
  r0.yz = useUVOffsets1 ? r0.yz : r1.zw;
  r3.xyzw = colorMapDetail2.Sample(colorSampler_s, r0.yz).xyzw;
  r0.w = tintMask2.Sample(colorSampler_s, r0.yz).x;
  r4.xyz = float3(-1,-1,-1) + colorTint1.xyz;
  r4.xyz = r0.www * r4.xyz + float3(1,1,1);
  r3.xyz = r4.xyz * r3.xyz;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r2.xyzw = r0.xxxx * r3.xyzw + r2.xyzw;
  r0.w = cmp(r2.w < 0.5);
  if (r0.w != 0) discard;
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r1.zw = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = dot(r1.zw, r1.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r0.w = r3.z * r3.z;
  r0.w = 0.333333343 * r0.w;
  r3.xyz = detailMap1.Sample(normalSampler_s, r1.xy).xyz;
  r1.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = r3.z * r3.z;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r3.xyz = detailMap2.Sample(normalSampler_s, r0.yz).xyz;
  r0.y = saturate(0.0588235296 * glossRange.y);
  r0.z = saturate(0.0588235296 * glossRange2.y);
  r0.z = r0.z + -r0.y;
  r0.y = r0.x * r0.z + r0.y;
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = r3.z * r3.z;
  r0.yz = float2(-17,0.333333343) * r0.yz;
  r0.zw = min(float2(1,1), r0.zw);
  r4.xy = r1.xy * detailScaleHeight1 + r1.zw;
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = rsqrt(r1.x);
  r5.xyz = r4.xyz * r1.xxx;
  r5.w = r2.w * detailScaleHeight1 + r0.w;
  r4.xy = r3.xy * detailScaleHeight2 + r1.zw;
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = r4.xyz * r1.xxx;
  r1.w = r0.z * detailScaleHeight2 + r0.w;
  r1.xyzw = r1.xyzw + -r5.xyzw;
  r1.xyzw = r0.xxxx * r1.xyzw + r5.xyzw;
  r0.x = v6.x ? 1 : -1;
  r0.z = dot(v3.xyz, v3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = v3.xyz * r0.zzz;
  r4.xyz = r3.xyz * r0.xxx;
  r0.z = dot(v4.xyz, v4.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = v4.xyz * r0.zzz;
  r5.xyz = r5.xyz * r0.xxx;
  r0.z = dot(v5.xyz, v5.xyz);
  r0.z = rsqrt(r0.z);
  r6.xyz = v5.xyz * r0.zzz;
  r6.xyz = r6.xyz * r0.xxx;
  r0.y = exp2(r0.y);
  r0.y = r1.w + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  r6.xyz = r6.xyz * r1.yyy;
  r1.xyw = r5.xyz * r1.xxx + r6.xyz;
  r1.xyz = r4.xyz * r1.zzz + r1.xyw;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.yzw = r1.xyz * r0.zzz;
  r0.z = r4.x + r4.y;
  r0.z = r3.z * r0.x + r0.z;
  r0.z = 0.5 * r0.z;
  r3.xyz = r3.xyz * r0.xxx + -r0.zzz;
  r0.x = max(r3.y, r3.z);
  r0.x = max(r3.x, r0.x);
  r0.x = max(r0.z, r0.x);
  r0.z = cmp(r0.x == r3.x);
  r4.yzw = float3(1,-1,-1) * r1.yzw;
  r0.w = 2 + r0.x;
  r4.x = 1;
  r1.x = 0;
  r1.xyzw = r0.zzzz ? r4.xyzw : r1.xyzw;
  r0.x = r0.z ? r0.w : r0.x;
  r0.z = cmp(r0.x == r3.y);
  r4.yzw = float3(-1,1,-1) * r1.yzw;
  r0.w = 2 + r0.x;
  r4.x = 2;
  r1.xyzw = r0.zzzz ? r4.xyzw : r1.xyzw;
  r0.x = r0.z ? r0.w : r0.x;
  r0.x = cmp(r0.x == r3.z);
  r3.yzw = float3(-1,-1,1) * r1.yzw;
  r3.x = 3;
  r1.xyzw = r0.xxxx ? r3.xyzw : r1.xyzw;
  r0.x = r1.y + r1.z;
  r3.z = r0.x + r1.w;
  r3.y = r1.w + -r1.y;
  r3.x = -r1.z * 3 + r3.z;
  r0.xzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r0.xz = r0.xz * r0.ww;
  o1.xy = r0.xz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.y * 0.49755621 + 0.00146627566;
  r0.x = (uint)r1.x;
  o1.w = 0.333333343 * r0.x;
  o0.xyz = r2.xyz;
  o0.w = 1;
  o2.xyzw = float4(0.0399999991,0.5,1,0.333333343);
  return;
}