// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:45 2021

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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(scriptVector1.x < scriptVector1.y);
  r0.y = scriptVector1.y + -scriptVector1.x;
  r0.y = 1 / r0.y;
  r0.zw = float2(-0.5,-0.5) + v2.xy;
  r1.x = abs(r0.z) * 2 + -scriptVector1.x;
  r0.y = saturate(r1.x * r0.y);
  r1.x = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = -r1.x * r0.y + 1;
  r1.xy = abs(r0.zw) + abs(r0.zw);
  r1.x = cmp(r1.x >= scriptVector1.y);
  r1.y = cmp(r1.y >= scriptVector3.y);
  r1.xy = r1.xy ? float2(0,0) : float2(1,1);
  r0.x = r0.x ? r0.y : r1.x;
  r0.y = scriptVector3.y + -scriptVector3.x;
  r0.y = 1 / r0.y;
  r1.x = abs(r0.w) * 2 + -scriptVector3.x;
  r0.y = saturate(r1.x * r0.y);
  r1.x = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = -r1.x * r0.y + 1;
  r1.x = cmp(scriptVector3.x < scriptVector3.y);
  r0.y = r1.x ? r0.y : r1.y;
  r0.x = min(r0.x, r0.y);
  r1.x = r0.z * scriptVector4.x + scriptVector0.x;
  r1.y = r0.w * scriptVector4.y + scriptVector2.x;
  r0.yz = float2(0.5,0.5) + r1.xy;
  r1.xyzw = colorMapSampler.Sample(tileMipBilinearSampler_s, r0.yz).xyzw;
  r1.xyzw = v1.xyzw * r1.xyzw;
  o0.w = r1.w * r0.x;
  o0.xyz = r1.xyz;
  return;
}