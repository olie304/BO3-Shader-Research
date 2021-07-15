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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = max(float2(9.99999968e-21,9.99999968e-21), scriptVector0.xy);
  r0.zw = float2(0.5,0.5) + -scriptVector0.zw;
  r0.xy = r0.xy * r0.zw;
  r1.xy = -r0.xy * float2(2,2) + v2.xy;
  r1.zw = -r0.xy * float2(4,4) + float2(1,1);
  r1.xy = r1.xy / r1.zw;
  r2.xyzw = float4(0.5,0.5,-0.5,-0.5) + scriptVector0.zwzw;
  r1.zw = r2.xy + -r0.zw;
  r1.xy = r1.xy * r1.zw + r0.zw;
  r1.zw = cmp(r0.xy < float2(0.25,0.25));
  r1.xy = r1.zw ? r1.xy : 0;
  r1.zw = -r0.xy * float2(2,2) + float2(1,1);
  r0.xy = r0.xy + r0.xy;
  r1.zw = cmp(v2.xy >= r1.zw);
  r1.zw = r1.zw ? float2(1,1) : 0;
  r2.xy = cmp(r0.xy >= v2.xy);
  r2.xy = r2.xy ? float2(1,1) : 0;
  r3.xy = r2.xy + r1.zw;
  r3.xy = min(float2(1,1), r3.xy);
  r3.xy = float2(1,1) + -r3.xy;
  r1.xy = r3.xy * r1.xy;
  r3.xy = v2.xy / r0.xy;
  r0.zw = r3.xy * r0.zw;
  r0.zw = r2.xy * r0.zw + r1.xy;
  r1.xy = float2(1,1) + -v2.xy;
  r0.xy = r1.xy / r0.xy;
  r0.xy = r0.xy * r2.zw + float2(1,1);
  r0.xy = r1.zw * r0.xy + r0.zw;
  r0.xyzw = colorMapSampler.Sample(colorSampler_s, r0.xy).xyzw;
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}