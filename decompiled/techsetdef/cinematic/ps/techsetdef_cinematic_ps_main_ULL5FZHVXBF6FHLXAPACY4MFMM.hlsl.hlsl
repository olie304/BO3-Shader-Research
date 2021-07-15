// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:08 2021

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

SamplerState samp0_s : register(s0);
Texture2D<float4> cinematicYSampler : register(t0);
Texture2D<float4> cinematicCrSampler : register(t6);
Texture2D<float4> cinematicCbSampler : register(t7);
Texture2D<float4> cinematicASampler : register(t9);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float4 v2 : COLOR0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cmp(v1.xy >= scriptVector0.xz);
  r0.zw = cmp(scriptVector0.yw >= v1.xy);
  r0.x = r0.z ? r0.x : 0;
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.w ? r0.x : 0;
  r0.yz = float2(40,25) * v1.xy;
  r0.yz = floor(r0.yz);
  r0.yz = float2(0.0250000004,0.0399999991) * r0.yz;
  r0.xy = r0.xx ? r0.yz : v1.xy;
  r1.x = cinematicYSampler.Sample(samp0_s, r0.xy).x;
  r1.y = cinematicCrSampler.Sample(samp0_s, r0.xy).x;
  r0.x = cmp(0.0156862754 >= r1.x);
  r1.w = 1;
  r2.x = dot(float3(1.16412354,1.59579468,-0.87065506), r1.xyw);
  r1.z = cinematicCbSampler.Sample(samp0_s, v1.xy).x;
  r2.y = dot(float4(1.16412354,-0.813476563,-0.391448975,0.529705048), r1.xyzw);
  r2.z = dot(float3(1.16412354,2.01782227,-1.08166885), r1.xzw);
  r0.xyz = r0.xxx ? float3(0,0,0) : r2.xyz;
  r0.w = cinematicASampler.Sample(samp0_s, v1.xy).x;
  o0.xyzw = v2.xyzw * r0.xyzw;
  return;
}