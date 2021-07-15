// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:42 2021

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

  r0.xyzw = colorMapSampler.Gather(tileMipBilinearSampler_s, v2.xy).xyzw;
  r0.x = dot(r0.xyzw, float4(1,1,1,1));
  r1.xyzw = colorMapSampler.Gather(tileMipBilinearSampler_s, v2.xy).xyzw;
  r0.y = dot(r1.xyzw, float4(1,1,1,1));
  r1.xyzw = colorMapSampler.Gather(tileMipBilinearSampler_s, v2.xy).xyzw;
  r0.z = dot(r1.xyzw, float4(1,1,1,1));
  r0.xyz = scriptVector1.xxx * r0.xyz;
  r0.w = dot(r0.xyz, float3(0.349999994,0.5,0.150000006));
  o0.xyz = float3(0.699999988,0.699999988,1) * r0.xyz;
  r0.x = log2(abs(r0.w));
  r0.x = 0.25 * r0.x;
  r0.x = exp2(r0.x);
  r0.yzw = colorMapSampler.Sample(tileMipBilinearSampler_s, v2.xy).xyz;
  r0.y = dot(r0.yzw, float3(0.349999994,0.5,0.150000006));
  r0.y = r0.y + r0.y;
  r0.x = saturate(max(r0.y, r0.x));
  o0.w = v1.w * r0.x;
  return;
}