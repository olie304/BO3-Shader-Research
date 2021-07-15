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

SamplerState tileNoMipNearest_s : register(s1);
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

  colorMapSampler.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r0.xy = fDest.xy;
  r1.xyzw = colorMapSampler.Sample(tileNoMipNearest_s, v2.xy).xyzw;
  r0.zw = float2(0.5,0.5) * scriptVector0.xy;
  r0.xy = r0.zw / r0.xy;
  r2.xyz = r1.xyz;
  r0.z = -3;
  while (true) {
    r0.w = cmp(3 < (int)r0.z);
    if (r0.w != 0) break;
    if (r0.z == 0) {
      r0.z = 1;
      continue;
    }
    r0.w = (int)r0.z;
    r0.w = 0.333333343 * r0.w;
    r3.xy = r0.ww * r0.xy + v2.xy;
    r3.xy = max(scriptVector7.xy, r3.xy);
    r3.xy = min(scriptVector7.zw, r3.xy);
    r3.xyzw = colorMapSampler.Sample(tileNoMipNearest_s, r3.xy).xyzw;
    r3.xyz = r3.xyz + -r1.xyz;
    r3.xyz = r3.www * r3.xyz + r1.xyz;
    r2.xyz = r3.xyz + r2.xyz;
    r0.z = (int)r0.z + 1;
  }
  o0.xyz = float3(0.142857149,0.142857149,0.142857149) * r2.xyz;
  o0.w = r1.w;
  return;
}