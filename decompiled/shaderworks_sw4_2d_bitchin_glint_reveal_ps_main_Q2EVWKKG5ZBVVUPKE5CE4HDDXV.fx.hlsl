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

SamplerState codeTexture0_C8_P0_sampler_s : register(s1);
Texture2D<float4> codeTexture0_C8_P0 : register(t0);


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

  r0.xy = float2(-0.5,-0.5) + v2.xy;
  r0.x = dot(float2(0.684547186,-0.728968561), r0.xy);
  r0.x = 0.5 + r0.x;
  r0.x = scriptVector0.x * -2 + r0.x;
  r0.xy = saturate(float2(1,0.5) + r0.xx);
  r0.x = -0.5 + r0.x;
  r0.y = 8.4218998 * r0.y;
  r0.y = min(1, r0.y);
  r0.z = -0.5 + scriptVector0.x;
  r0.z = abs(r0.z) * 0.585600019 + 0.707199991;
  r0.x = dot(abs(r0.xx), r0.zz);
  r0.x = min(1, r0.x);
  r0.xy = float2(1,1) + -r0.xy;
  r1.xyzw = codeTexture0_C8_P0.Sample(codeTexture0_C8_P0_sampler_s, v2.xy).xyzw;
  r2.xyz = r1.xyz + r0.xxx;
  r2.w = r1.w * r0.y;
  o0.xyzw = v1.xyzw * r2.xyzw;
  return;
}