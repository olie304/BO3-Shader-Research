// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:43 2021

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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -scriptVector0.x;
  r0.y = -scriptVector1.x;
  r0.z = -scriptVector2.x;
  r0.w = -scriptVector3.x;
  r1.xy = -scriptVector7.xy + v2.xy;
  r1.zw = scriptVector7.zw + -scriptVector7.xy;
  r2.yz = r1.xy / r1.zw;
  r0.xyzw = r2.yyyy + r0.xyzw;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r3.x = min(scriptVector0.y, r0.x);
  r3.y = min(scriptVector1.y, r0.y);
  r3.z = min(scriptVector2.y, r0.z);
  r3.w = min(scriptVector3.y, r0.w);
  r0.x = dot(r3.xyzw, float4(1,1,1,1));
  r2.x = r2.y + -r0.x;
  r0.xy = r2.xz * r1.zw + scriptVector7.xy;
  r0.xyzw = colorMapSampler.Sample(tileMipBilinearSampler_s, r0.xy).xyzw;
  r1.x = cmp(r2.z >= scriptVector0.z);
  r1.y = cmp(scriptVector0.w >= r2.z);
  r1.xy = r1.xy ? float2(1,1) : 0;
  r1.x = -r1.x * r1.y + 1;
  o0.w = r1.x * r0.w;
  o0.xyz = r0.xyz;
  return;
}