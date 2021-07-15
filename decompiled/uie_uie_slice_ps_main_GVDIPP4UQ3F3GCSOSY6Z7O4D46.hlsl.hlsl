// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:44 2021

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

SamplerState tileMipBilinearSampler_s : register(s1);
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
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -scriptVector7.y + v2.y;
  r0.y = scriptVector7.w + -scriptVector7.y;
  r0.x = r0.x / r0.y;
  r0.x = scriptVector0.x * r0.x;
  r0.x = floor(r0.x);
  r0.y = -1 + scriptVector0.x;
  r0.z = r0.y + -r0.x;
  r0.w = 1 + -scriptVector2.x;
  r0.y = r0.w / r0.y;
  r0.z = r0.z * r0.y + scriptVector1.x;
  r0.x = -r0.x * r0.y + scriptVector1.x;
  r0.xy = r0.xz / scriptVector2.xx;
  r0.xy = v2.xx + -r0.xy;
  r0.x = max(0, r0.x);
  r0.x = min(v2.x, r0.x);
  r0.y = max(v2.x, r0.y);
  r0.y = min(1, r0.y);
  r0.z = cmp(scriptVector1.x < 0);
  r0.x = r0.z ? r0.y : r0.x;
  r0.y = v2.y;
  o0.xyzw = colorMapSampler.Sample(tileMipBilinearSampler_s, r0.xy).xyzw;
  return;
}