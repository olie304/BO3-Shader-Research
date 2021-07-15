// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:38 2021

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

SamplerState postEffect1_C4_P0_sampler_s : register(s1);
SamplerState postEffect0_C0_P0_sampler_s : register(s2);
Texture2D<float4> postEffect1_C4_P0 : register(t0);
Texture2D<float4> postEffect0_C0_P0 : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = postEffect1_C4_P0.Sample(postEffect1_C4_P0_sampler_s, v1.xy).xyzw;
  r1.xyzw = scriptVector0.xyzw * r0.xxxx;
  r2.xyzw = -scriptVector0.xyzw * r0.xxxx + scriptVector1.xyzw;
  r1.xyzw = r0.yyyy * r2.xyzw + r1.xyzw;
  r2.xyzw = scriptVector2.xyzw + -r1.xyzw;
  r1.xyzw = r0.zzzz * r2.xyzw + r1.xyzw;
  r2.xyzw = scriptVector3.xyzw + -r1.xyzw;
  r0.xyzw = r0.wwww * r2.xyzw + r1.xyzw;
  r1.x = postEffect0_C0_P0.Sample(postEffect0_C0_P0_sampler_s, v1.xy).z;
  r1.x = cmp(r1.x == 0.000000);
  o0.xyzw = r1.xxxx ? r0.xyzw : 0;
  return;
}