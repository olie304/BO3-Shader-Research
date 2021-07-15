// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:42 2021

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = scriptVector2.x * v2.x;
  r0.x = frac(r0.x);
  r0.y = scriptVector2.x * v2.x + -r0.x;
  r0.z = scriptVector3.x * v2.y;
  r0.z = frac(r0.z);
  r0.w = scriptVector3.x * v2.y + -r0.z;
  r0.x = cmp(r0.x < r0.z);
  r0.y = scriptVector2.x * r0.w + r0.y;
  r0.z = r0.y + r0.y;
  r0.y = r0.y * 2 + 1;
  r0.y = r0.x ? r0.y : r0.z;
  r1.x = scriptVector2.x * scriptVector0.x;
  r0.z = scriptVector3.x * r1.x;
  r1.y = dot(r0.yz, float2(81.2394867,59.3948402));
  r0.x = frac(r1.y);
  r1.y = dot(r0.xz, float2(81.2394867,59.3948402));
  r0.w = frac(r1.y);
  r1.y = dot(r0.xwz, float3(81.2394867,17.3480244,59.3948402));
  r2.xyw = r0.xwz;
  r2.z = frac(r1.y);
  r0.x = dot(r2.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r2.w = frac(r0.x);
  r0.x = dot(r2.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r0.x = frac(r0.x);
  r0.x = frac(r0.x);
  r0.x = -0.5 + r0.x;
  r0.x = r0.x * scriptVector1.x + r0.y;
  r0.y = cmp(r0.x < r0.z);
  r0.w = dot(scriptVector3.xx, scriptVector2.xx);
  r1.x = r1.x * scriptVector3.x + -r0.w;
  r1.x = max(0, r1.x);
  r1.x = min(r1.x, r0.w);
  r0.z = cmp(r0.w < r0.z);
  r0.x = cmp(r1.x < r0.x);
  r0.xy = r0.xy ? float2(0,0) : float2(1,1);
  r0.x = r0.z ? r0.x : r0.y;
  r1.xyzw = colorMapSampler.Sample(tileMipBilinearSampler_s, v2.xy).xyzw;
  o0.xyzw = r0.xxxx * -r1.xyzw + r1.xyzw;
  return;
}