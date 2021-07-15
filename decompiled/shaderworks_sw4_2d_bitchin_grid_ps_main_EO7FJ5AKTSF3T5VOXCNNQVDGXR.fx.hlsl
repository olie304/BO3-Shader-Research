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

  r0.xyzw = codeTexture0_C4_P0.Sample(codeTexture0_C4_P0_sampler_s, v2.xy).xyzw;
  r1.x = max(r0.x, r0.y);
  r1.x = max(r1.x, r0.z);
  r1.y = min(r0.x, r0.y);
  r1.y = min(r1.y, r0.z);
  r1.x = r1.x + r1.y;
  r1.y = scriptVector0.x * r1.x;
  r1.x = r1.x * 0.25 + 0.5;
  r1.y = r1.y * 0.330000013 + 1;
  r1.zw = float2(-0.5,-0.5) + v2.xy;
  r1.yz = r1.zw / r1.yy;
  r1.yz = float2(0.5,0.5) + r1.yz;
  r1.yz = float2(20,20) * r1.yz;
  r2.xy = cmp(r1.yz >= -r1.yz);
  r1.yz = frac(abs(r1.yz));
  r1.yz = r2.xy ? r1.yz : -r1.yz;
  r1.yz = max(float2(0,0), r1.yz);
  r1.yz = float2(-0.5,-0.5) + r1.yz;
  r1.yz = float2(4,4) * abs(r1.yz);
  r1.yz = min(float2(1,1), r1.yz);
  r1.yz = float2(1,1) + -r1.yz;
  r1.y = max(r1.y, r1.z);
  r1.y = r1.y * r0.w;
  r1.x = r1.y * r1.x;
  r1.y = saturate(scriptVector0.x + scriptVector0.x);
  r1.y = r1.y + r1.y;
  r1.y = min(1, r1.y);
  r1.w = r1.x * r1.y;
  r1.xyz = float3(0.357143015,1,0.939732015);
  r0.xyzw = -r1.xyzw + r0.xyzw;
  r2.x = -0.5 + scriptVector0.x;
  r2.x = saturate(r2.x + r2.x);
  r2.x = v2.y + -r2.x;
  r2.xy = saturate(float2(0.00999999978,0.5) + r2.xx);
  r2.x = 40 * r2.x;
  r2.y = -0.5 + r2.y;
  r2.y = 54.6304703 * abs(r2.y);
  r2.xy = min(float2(1,1), r2.xy);
  r2.xy = float2(1,1) + -r2.xy;
  r0.xyzw = r2.xxxx * r0.xyzw + r1.xyzw;
  r0.xyz = r0.xyz + r2.yyy;
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}