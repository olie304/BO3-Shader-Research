// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:41 2021

cbuffer GenericsCBuffer : register(b3)
{
  float4 scriptVector0 : packoffset(c0);
  float4 scriptVector1 : packoffset(c1);
  float4 scriptVector2 : packoffset(c2);
  float4 scriptVector3 : packoffset(c3);
  float4 scriptVector4 : packoffset(c4);
  float4 scriptVector5 : packoffset(c5);
  float4 scriptVector6 : packoffset(c6);
  float4 scriptVector7 : packoffset(c7);
  float4 weaponParam0 : packoffset(c8);
  float4 weaponParam1 : packoffset(c9);
  float4 weaponParam2 : packoffset(c10);
  float4 weaponParam3 : packoffset(c11);
  float4 weaponParam4 : packoffset(c12);
  float4 weaponParam5 : packoffset(c13);
  float4 weaponParam6 : packoffset(c14);
  float4 weaponParam7 : packoffset(c15);
}

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMapSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = max(float2(1,1), scriptVector0.xy);
  r0.z = r0.x * r0.y;
  r0.w = scriptVector1.x * r0.z;
  r0.w = cmp(r0.w >= -r0.w);
  r0.z = r0.w ? r0.z : -r0.z;
  r0.w = 1 / r0.z;
  r0.w = scriptVector1.x * r0.w;
  r0.w = frac(r0.w);
  r0.z = r0.z * r0.w;
  r0.z = floor(r0.z);
  r0.w = r0.z * r0.x;
  r0.w = cmp(r0.w >= -r0.w);
  r0.w = r0.w ? r0.x : -r0.x;
  r1.x = 1 / r0.w;
  r1.x = r1.x * r0.z;
  r0.z = r0.z / r0.x;
  r0.xy = float2(1,1) / r0.xy;
  r0.z = floor(r0.z);
  r0.z = v2.y + r0.z;
  r2.y = r0.z * r0.y;
  r0.y = frac(r1.x);
  r0.y = r0.w * r0.y + v2.x;
  r2.x = r0.y * r0.x;
  r0.xyzw = colorMapSampler.Sample(colorSampler_s, r2.xy).xyzw;
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}