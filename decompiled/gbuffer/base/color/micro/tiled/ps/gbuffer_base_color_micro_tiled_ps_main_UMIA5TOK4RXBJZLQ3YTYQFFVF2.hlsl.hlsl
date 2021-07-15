// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:46 2021

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
  float3 colorTint : packoffset(c10);
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float detailScaleHeight : packoffset(c12.z);
  float baseGloss : packoffset(c12.w);
  float baseReflectance : packoffset(c13);
  float3 colorTint1 : packoffset(c13.y);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
SamplerState baseColorSampler_s : register(s5);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> specColorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> glossMap : register(t9);
Texture2D<float4> aoMap : register(t10);
Texture2D<float4> detailMap : register(t11);
Texture2D<float4> baseColorMap : register(t12);


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

  r0.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xy = v3.xy + v2.xy;
  r1.xy = v3.zz + r1.xy;
  r1.xy = detailScale.xy * r1.xy;
  r2.xyzw = colorMap.Sample(colorSampler_s, r1.xy).xyzw;
  r0.xyz = r2.www * r0.xyz + float3(1,1,1);
  r0.xyz = r2.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  r0.w = specColorMap.Sample(specColorSampler_s, r1.xy).x;
  r1.x = glossMap.Sample(specColorSampler_s, r1.xy).x;
  r1.y = saturate(1 + -r0.w);
  r0.xyz = r1.yyy * r0.xyz;
  r2.xyzw = baseColorMap.Sample(baseColorSampler_s, v2.xy).xyzw;
  r3.xyzw = colorTint1.xyz * r2.xyzw;
  r1.yzw = v1.xyz * r3.xyz;
  r1.yzw = r1.yzw * r2.www;
  r2.x = 1 + -r2.w;
  o0.xyz = r0.xyz * r2.xxx + r1.yzw;
  o0.w = 1;
  r0.x = glossRange.y + -glossRange.x;
  r0.y = r1.x * r0.x + glossRange.x;
  r0.x = baseGloss * r0.x + glossRange.x;
  r0.xy = saturate(float2(0.0588235296,0.0588235296) * r0.xy);
  r0.xy = float2(-17,-17) * r0.xy;
  r0.x = exp2(r0.x);
  r0.y = exp2(r0.y);
  r1.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r0.z = r1.z * r1.z;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r1.zw = detailScale.xy * v2.xy;
  r3.xyz = detailMap.Sample(normalSampler_s, r1.zw).xyz;
  r1.z = r3.z * r3.z;
  r2.yz = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.xy = r2.yz * detailScaleHeight + r1.xy;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r3.z = sqrt(r1.x);
  r1.x = 0.333333343 * r1.z;
  r1.x = min(1, r1.x);
  r0.z = r1.x * detailScaleHeight + r0.z;
  r0.xy = r0.zz + r0.xy;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  r0.x = r0.x * r2.w;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  r0.x = r0.y * r2.x + r0.x;
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r3.xyz * r0.xxx;
  r1.x = dot(v6.xyz, v6.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v6.xyz * r1.xxx;
  r1.w = v7.x ? 1 : -1;
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz * r0.yyy;
  r0.y = dot(v5.xyz, v5.xyz);
  r0.y = rsqrt(r0.y);
  r2.yzw = v5.xyz * r0.yyy;
  r2.yzw = r2.yzw * r1.www;
  r1.xyz = r2.yzw * r0.xxx + r1.xyz;
  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r2.yzw = v4.xyz * r0.xxx;
  r3.xyz = r2.yzw * r1.www;
  r0.xyz = r3.xyz * r0.zzz + r1.xyz;
  r1.x = r3.x + r3.y;
  r1.x = r2.w * r1.w + r1.x;
  r1.x = 0.5 * r1.x;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r4.yzw = r1.yyy * r0.xyz;
  r5.yzw = float3(1,-1,-1) * r4.yzw;
  r5.x = 1;
  r4.x = 0;
  r0.xyz = r2.yzw * r1.www + -r1.xxx;
  r1.y = max(r0.y, r0.z);
  r1.y = max(r1.y, r0.x);
  r1.x = max(r1.x, r1.y);
  r0.x = cmp(r0.x == r1.x);
  r4.xyzw = r0.xxxx ? r5.xyzw : r4.xyzw;
  r5.yzw = float3(-1,1,-1) * r4.yzw;
  r5.x = 2;
  r1.y = 2 + r1.x;
  r0.x = r0.x ? r1.y : r1.x;
  r0.y = cmp(r0.x == r0.y);
  r1.xyzw = r0.yyyy ? r5.xyzw : r4.xyzw;
  r4.yzw = float3(-1,-1,1) * r1.yzw;
  r2.y = 2 + r0.x;
  r0.x = r0.y ? r2.y : r0.x;
  r0.x = cmp(r0.x == r0.z);
  r4.x = 3;
  r1.xyzw = r0.xxxx ? r4.xyzw : r1.xyzw;
  r0.x = r1.y + r1.z;
  r0.z = r0.x + r1.w;
  r0.x = -r1.z * 3 + r0.z;
  r0.y = r1.w + -r1.y;
  r1.x = (uint)r1.x;
  o1.w = 0.333333343 * r1.x;
  r0.xyz = float3(0.408248305,0.707106769,0.577350259) * r0.xyz;
  r0.z = 1 + abs(r0.z);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  o1.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r0.xyz = r0.www * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.xyz = r0.xyz * r2.xxx + r3.www;
  r1.y = r0.x + -r0.z;
  r0.x = r1.y * 0.5 + r0.z;
  r1.z = r0.y + -r0.x;
  r1.x = r1.z * 0.5 + r0.x;
  r0.xy = (uint2)v0.xy;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  o2.z = r0.x;
  o2.w = 0.333333343;
  return;
}