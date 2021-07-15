// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:32 2021

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

SamplerState codeTexture0_C4_P0_sampler_s : register(s1);
Texture2D<float4> codeTexture0_C4_P0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = scriptVector0.xx * float2(120,120) + float2(10,-113.599998);
  r0.x = floor(r0.x);
  r0.y = saturate(0.15624997 * r0.y);
  r0.x = r0.x + r0.x;
  r0.zw = v2.xy * r0.xx;
  r0.zw = floor(r0.zw);
  r0.zw = r0.zw / r0.xx;
  r0.x = 1 / r0.x;
  r0.xz = r0.xx * float2(0.5,0.5) + r0.zw;
  r1.xyzw = codeTexture0_C4_P0.Sample(codeTexture0_C4_P0_sampler_s, r0.xz).xyzw;
  r2.xyzw = codeTexture0_C4_P0.Sample(codeTexture0_C4_P0_sampler_s, v2.xy).xyzw;
  r2.xyzw = r2.xyzw + -r1.xyzw;
  r0.xyzw = r0.yyyy * r2.xyzw + r1.xyzw;
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}