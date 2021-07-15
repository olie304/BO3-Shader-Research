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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(16,16) * v2.xy;
  r0.xy = floor(r0.xy);
  r0.x = r0.y * 16 + r0.x;
  r0.x = 0.00390625 * r0.x;
  r0.x = sin(r0.x);
  r0.x = 42362.4883 * r0.x;
  r0.x = frac(r0.x);
  r0.x = r0.x * 0.949999988 + 0.0500000007;
  r0.y = 1 + -scriptVector0.x;
  r0.x = r0.x + -r0.y;
  r0.x = saturate(20 * r0.x);
  r1.xyzw = codeTexture0_C4_P0.Sample(codeTexture0_C4_P0_sampler_s, v2.xy).xyzw;
  r1.w = r1.w * r0.x;
  o0.xyzw = v1.xyzw * r1.xyzw;
  return;
}