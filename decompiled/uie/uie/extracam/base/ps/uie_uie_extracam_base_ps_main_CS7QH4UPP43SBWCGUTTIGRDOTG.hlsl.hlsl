// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:41 2021

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
Texture2D<float4> extraCamSampler : register(t0);


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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = scriptVector0.zw + -scriptVector0.xy;
  r0.xy = v2.xy * r0.xy + scriptVector0.xy;
  r0.xyzw = extraCamSampler.Sample(samp0_s, r0.xy).xyzw;
  r0.xyzw = v1.xyzw * r0.xyzw;
  r1.xyz = log2(r0.xyz);
  r1.xyz = float3(0.416666657,0.416666657,0.416666657) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r2.xyz = cmp(float3(0.00313080009,0.00313080009,0.00313080009) >= r0.xyz);
  r0.xyz = float3(12.9200001,12.9200001,12.9200001) * r0.xyz;
  o0.xyz = r2.xyz ? r0.xyz : r1.xyz;
  r0.xy = float2(0.5,0.5) + -v2.xy;
  r0.xy = float2(0.5,0.5) + -abs(r0.xy);
  r0.xy = min(scriptVector1.xy, r0.xy);
  r0.xy = scriptVector1.xy + -r0.xy;
  r1.xy = max(float2(9.99999972e-10,1.00000001e-10), scriptVector1.xy);
  r0.xy = r0.xy / r1.xy;
  r0.xy = float2(1,1) + -r0.xy;
  r0.x = r0.x * r0.y;
  o0.w = r0.w * r0.x;
  return;
}