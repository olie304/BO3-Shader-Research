// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:36 2021

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
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> glossMap : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0;
  r1.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.zw = v1.zw * r1.zw;
  o0.xyzw = r0.xxxw;
  o1.w = r0.w;
  r0.x = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r0.y = glossRange.y + -glossRange.x;
  r0.x = r0.x * r0.y + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r2.zw = float2(0,0);
  r2.xy = (uint2)v0.xy;
  r0.y = resolvedNormal.Load(r2.xyz).z;
  r1.zw = (int2)r2.xy & int2(1,1);
  r1.z = cmp((int)r1.w == (int)r1.z);
  r1.w = cmp(r0.y >= 0.5);
  r0.y = cmp(0 < r0.y);
  r1.w = r1.w ? 0.5 : 0.00146627566;
  r2.z = r0.x * 0.49755621 + r1.w;
  r2.xy = float2(0.5,0.5);
  r2.xyz = r0.yyy ? r2.xyz : 0;
  o1.xyz = r2.xyz * r0.www;
  r2.y = r1.x * v1.x + -r0.z;
  r0.x = r2.y * 0.5 + r0.z;
  r2.z = r1.y * v1.y + -r0.x;
  r2.x = r2.z * 0.5 + r0.x;
  r0.xy = r1.zz ? r2.xy : r2.xz;
  r1.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r1.zw = float2(0,1);
  o2.xyzw = r1.xyzw * r0.wwww;
  return;
}