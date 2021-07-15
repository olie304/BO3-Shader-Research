// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:44 2021

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

SamplerState clampMipBilinearSampler_s : register(s1);
Texture2D<float4> colorMapSampler : register(t0);
Texture2D<float4> colorMapSampler1 : register(t6);


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

  colorMapSampler1.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r0.xy = fDest.xy;
  r0.zw = float2(0.5,0.5) * scriptVector0.xy;
  r0.xy = r0.zw / r0.xy;
  r0.zw = scriptVector6.xy + v0.xy;
  r1.xyzw = float4(0,0,0,-nan);
  while (true) {
    r2.x = cmp(3 < (int)r1.w);
    if (r2.x != 0) break;
    r2.x = (int)r1.w;
    r2.x = 0.333333343 * r2.x;
    r2.xy = r2.xx * r0.xy;
    r2.xy = r0.zw * scriptVector6.zw + r2.xy;
    r2.xyz = colorMapSampler1.Sample(clampMipBilinearSampler_s, r2.xy).xyz;
    r3.xyz = (int3)r2.xyz & int3(2139095040,2139095040,2139095040);
    r3.xyz = cmp((int3)r3.xyz != int3(2139095040,2139095040,2139095040));
    r2.xyz = r3.xyz ? r2.xyz : float3(65536,65536,65536);
    r1.xyz = r2.xyz + r1.xyz;
    r1.w = (int)r1.w + 1;
  }
  r0.xyz = float3(4.35965421e-06,4.35965421e-06,4.35965421e-06) * r1.xyz;
  r2.xyz = cmp(float3(718.130371,718.130371,718.130371) >= r1.xyz);
  r1.xyz = float3(5.63267313e-05,5.63267313e-05,5.63267313e-05) * r1.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.416666657,0.416666657,0.416666657) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r0.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r0.xyz = r2.xyz ? r1.xyz : r0.xyz;
  o0.xyz = v1.xyz * r0.xyz;
  r0.x = colorMapSampler.Sample(clampMipBilinearSampler_s, v2.xy).w;
  o0.w = v1.w * r0.x;
  return;
}