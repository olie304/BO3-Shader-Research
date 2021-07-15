// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:37 2021

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

SamplerState HexagonPattern_Sampler_s : register(s1);
Texture2D<float4> HexagonPattern : register(t0);


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

  r0.xy = scriptVector0.xy + -v2.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = min(1, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = log2(r0.x);
  r0.x = 1.60000002 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = min(1, abs(scriptVector0.z));
  r0.y = 1 + -r0.y;
  r1.xyzw = HexagonPattern.Sample(HexagonPattern_Sampler_s, v2.xy).xyzw;
  r2.xyzw = r1.xyzw * float4(-2,-2,-2,-2) + float4(1,1,1,1);
  r1.xyzw = r0.yyyy * r2.xyzw + r1.xyzw;
  r0.xyzw = r1.xyzw * r0.xxxx;
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}