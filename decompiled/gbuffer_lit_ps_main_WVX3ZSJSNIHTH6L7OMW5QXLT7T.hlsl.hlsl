// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:29:38 2021

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
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float detailScaleHeight : packoffset(c11.z);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> normalMap : register(t6);
Texture2D<float4> glossMap : register(t7);
Texture2D<float4> aoMap : register(t9);
Texture2D<float4> detailMap : register(t10);


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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xy = v2.xy + w1.xy;
  r1.xy = v2.zz + r1.xy;
  r1.xy = detailScale.xy * r1.xy;
  r2.xyzw = colorMap.Sample(colorSampler_s, r1.xy).xyzw;
  r0.xyz = r2.www * r0.xyz + float3(1,1,1);
  o0.xyz = r2.xyz * r0.xyz;
  o0.w = 1;
  r0.x = glossMap.Sample(specColorSampler_s, r1.xy).x;
  r0.yzw = detailMap.Sample(normalSampler_s, r1.xy).xyz;
  r1.x = glossRange.y + -glossRange.x;
  r0.x = r0.x * r1.x + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.w = r0.w * r0.w;
  r0.yz = r0.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  r1.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r1.z = r1.z * r1.z;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r0.w = r0.w * detailScaleHeight + r1.z;
  r0.x = r0.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  r0.xy = r0.yz * detailScaleHeight + r1.xy;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.z = sqrt(r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v5.xyz * r0.www;
  r0.w = v6.x ? 1 : -1;
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = r1.xyz * r0.yyy;
  r0.y = dot(v4.xyz, v4.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = v4.xyz * r0.yyy;
  r2.xyz = r2.xyz * r0.www;
  r1.xyz = r2.xyz * r0.xxx + r1.xyz;
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = v3.xyz * r0.xxx;
  r3.xyz = r2.xyz * r0.www;
  r0.xyz = r3.xyz * r0.zzz + r1.xyz;
  r1.x = r3.x + r3.y;
  r1.x = r2.z * r0.w + r1.x;
  r1.x = 0.5 * r1.x;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r3.yzw = r1.yyy * r0.xyz;
  r4.yzw = float3(1,-1,-1) * r3.yzw;
  r4.x = 1;
  r3.x = 0;
  r0.xyz = r2.xyz * r0.www + -r1.xxx;
  r0.w = max(r0.y, r0.z);
  r0.w = max(r0.x, r0.w);
  r0.w = max(r1.x, r0.w);
  r0.x = cmp(r0.w == r0.x);
  r1.xyzw = r0.xxxx ? r4.xyzw : r3.xyzw;
  r2.yzw = float3(-1,1,-1) * r1.yzw;
  r2.x = 2;
  r3.x = 2 + r0.w;
  r0.x = r0.x ? r3.x : r0.w;
  r0.y = cmp(r0.x == r0.y);
  r1.xyzw = r0.yyyy ? r2.xyzw : r1.xyzw;
  r2.yzw = float3(-1,-1,1) * r1.yzw;
  r0.w = 2 + r0.x;
  r0.x = r0.y ? r0.w : r0.x;
  r0.x = cmp(r0.x == r0.z);
  r2.x = 3;
  r0.xyzw = r0.xxxx ? r2.xyzw : r1.xyzw;
  r1.x = r0.y + r0.z;
  r1.z = r1.x + r0.w;
  r1.x = -r0.z * 3 + r1.z;
  r1.y = r0.w + -r0.y;
  r0.x = (uint)r0.x;
  o1.w = 0.333333343 * r0.x;
  r0.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.z = 1 + abs(r0.z);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  o1.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  o2.z = r0.x;
  o2.xyw = float3(0.0399999991,0.5,0.333333343);
  return;
}