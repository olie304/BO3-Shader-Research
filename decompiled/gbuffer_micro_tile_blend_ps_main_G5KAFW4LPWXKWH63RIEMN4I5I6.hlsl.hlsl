// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:30:49 2021

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
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 mixScale : packoffset(c11.z);
  float detailScaleHeight1 : packoffset(c12);
  float detailScaleHeight2 : packoffset(c12.y);
  float4 colorTint : packoffset(c13);
  float4 colorTint1 : packoffset(c14);
  float2 glossRange2 : packoffset(c15);
  float rotateUVs1 : packoffset(c15.z);
  float rotateUVs2 : packoffset(c15.w);
  bool useUVOffsets1 : packoffset(c16);
  bool useUVOffsets2 : packoffset(c16.y);
  float4 specColorTint1 : packoffset(c17);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
SamplerState mixSampler_s : register(s5);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> specColorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> glossMap : register(t9);
Texture2D<float4> aoMap : register(t10);
Texture2D<float4> detailMap1 : register(t11);
Texture2D<float4> detailMap2 : register(t12);
Texture2D<float4> glossMapDetail2 : register(t14);
Texture2D<float4> colorMapDetail2 : register(t15);
Texture2D<float4> mixMap : register(t16);
Texture2D<float4> specularMapDetail2 : register(t17);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r2.xyzw = colorMap.Sample(colorSampler_s, r0.zw).xyzw;
  r1.xyw = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyw = r2.www * r1.xyw + float3(1,1,1);
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
  r2.xyzw = colorMapDetail2.Sample(colorSampler_s, r0.xy).xyzw;
  r3.xyz = float3(-1,-1,-1) + colorTint1.xyz;
  r3.xyz = r2.www * r3.xyz + float3(1,1,1);
  r2.xyz = r2.xyz * r3.xyz + -r1.xyw;
  r3.xy = mixScale.xy * w1.xy;
  r1.z = mixMap.Sample(mixSampler_s, r3.xy).x;
  o0.xyz = r1.zzz * r2.xyz + r1.xyw;
  o0.w = 1;
  r1.x = glossMapDetail2.Sample(specColorSampler_s, r0.xy).x;
  r1.y = glossRange2.y + -glossRange2.x;
  r1.x = r1.x * r1.y + glossRange2.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r1.y = glossMap.Sample(specColorSampler_s, r0.zw).x;
  r1.w = glossRange.y + -glossRange.x;
  r1.y = r1.y * r1.w + glossRange.x;
  r1.y = saturate(0.0588235296 * r1.y);
  r1.x = r1.x + -r1.y;
  r1.x = r1.z * r1.x + r1.y;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r2.xyz = detailMap2.Sample(normalSampler_s, r0.xy).xyz;
  r3.xyz = specularMapDetail2.Sample(specColorSampler_s, r0.xy).xyz;
  r0.x = r2.z * r2.z;
  r1.yw = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.x = 0.333333343 * r0.x;
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r0.y = r2.z * r2.z;
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.y = 0.333333343 * r0.y;
  r0.xy = min(float2(1,1), r0.xy);
  r4.w = r0.x * detailScaleHeight2 + r0.y;
  r5.xyz = detailMap1.Sample(normalSampler_s, r0.zw).xyz;
  r0.xzw = specColorMap.Sample(specColorSampler_s, r0.zw).xyz;
  r2.z = r5.z * r5.z;
  r5.xy = r5.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r5.xy = r5.xy * detailScaleHeight1 + r2.xy;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r6.w = r2.z * detailScaleHeight1 + r0.y;
  r7.xy = r1.yw * detailScaleHeight2 + r2.xy;
  r0.y = dot(r2.xy, r2.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r5.z = sqrt(r0.y);
  r7.z = r5.z;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = rsqrt(r0.y);
  r4.xyz = r7.xyz * r0.yyy;
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.y);
  r6.xyz = r5.xyz * r0.yyy;
  r2.xyzw = -r6.xyzw + r4.xyzw;
  r2.xyzw = r1.zzzz * r2.xyzw + r6.xyzw;
  r0.y = r2.w + r1.x;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  o1.z = r0.y * 0.49755621 + 0.00146627566;
  r0.y = dot(v5.xyz, v5.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyw = v5.xyz * r0.yyy;
  r0.y = v6.x ? 1 : -1;
  r1.xyw = r1.xyw * r0.yyy;
  r1.xyw = r1.xyw * r2.yyy;
  r2.y = dot(v4.xyz, v4.xyz);
  r2.y = rsqrt(r2.y);
  r4.xyz = v4.xyz * r2.yyy;
  r4.xyz = r4.xyz * r0.yyy;
  r1.xyw = r4.xyz * r2.xxx + r1.xyw;
  r2.x = dot(v3.xyz, v3.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyw = v3.xyz * r2.xxx;
  r4.xyz = r2.xyw * r0.yyy;
  r1.xyw = r4.xyz * r2.zzz + r1.xyw;
  r2.z = r4.x + r4.y;
  r2.z = r2.w * r0.y + r2.z;
  r2.z = 0.5 * r2.z;
  r3.w = dot(r1.xyw, r1.xyw);
  r3.w = rsqrt(r3.w);
  r4.yzw = r3.www * r1.xyw;
  r5.yzw = float3(1,-1,-1) * r4.yzw;
  r5.x = 1;
  r4.x = 0;
  r1.xyw = r2.xyw * r0.yyy + -r2.zzz;
  r0.y = max(r1.y, r1.w);
  r0.y = max(r1.x, r0.y);
  r0.y = max(r2.z, r0.y);
  r1.x = cmp(r0.y == r1.x);
  r2.xyzw = r1.xxxx ? r5.xyzw : r4.xyzw;
  r4.yzw = float3(-1,1,-1) * r2.yzw;
  r4.x = 2;
  r3.w = 2 + r0.y;
  r0.y = r1.x ? r3.w : r0.y;
  r1.x = cmp(r0.y == r1.y);
  r2.xyzw = r1.xxxx ? r4.xyzw : r2.xyzw;
  r4.yzw = float3(-1,-1,1) * r2.yzw;
  r1.y = 2 + r0.y;
  r0.y = r1.x ? r1.y : r0.y;
  r0.y = cmp(r0.y == r1.w);
  r4.x = 3;
  r2.xyzw = r0.yyyy ? r4.xyzw : r2.xyzw;
  r0.y = r2.y + r2.z;
  r4.z = r0.y + r2.w;
  r4.x = -r2.z * 3 + r4.z;
  r4.y = r2.w + -r2.y;
  r0.y = (uint)r2.x;
  o1.w = 0.333333343 * r0.y;
  r1.xyw = float3(0.408248305,0.707106769,0.577350259) * r4.xyz;
  r0.y = 1 + abs(r1.w);
  r0.y = rsqrt(r0.y);
  r1.xy = r1.xy * r0.yy;
  o1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r1.xyw = r3.xyz + -r0.xzw;
  r0.xyz = r1.zzz * r1.xyw + r0.xzw;
  r1.y = r0.x + -r0.z;
  r0.x = r1.y * 0.5 + r0.z;
  r1.z = r0.y + -r0.x;
  r1.x = r1.z * 0.5 + r0.x;
  r0.xy = (uint2)v0.xy;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  o2.z = r0.x;
  o2.w = 0.333333343;
  return;
}