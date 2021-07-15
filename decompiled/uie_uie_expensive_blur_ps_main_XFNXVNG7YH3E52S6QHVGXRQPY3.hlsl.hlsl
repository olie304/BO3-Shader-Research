// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:40 2021

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
  const float4 icb[] = { { 0.000086, 0, 0, 0},
                              { 0.000260, 0, 0, 0},
                              { 0.000614, 0, 0, 0},
                              { 0.001132, 0, 0, 0},
                              { 0.001634, 0, 0, 0},
                              { 0.001847, 0, 0, 0},
                              { 0.001634, 0, 0, 0},
                              { 0.001132, 0, 0, 0},
                              { 0.000614, 0, 0, 0},
                              { 0.000260, 0, 0, 0},
                              { 0.000086, 0, 0, 0},
                              { 0.000260, 0, 0, 0},
                              { 0.000784, 0, 0, 0},
                              { 0.001848, 0, 0, 0},
                              { 0.003408, 0, 0, 0},
                              { 0.004920, 0, 0, 0},
                              { 0.005561, 0, 0, 0},
                              { 0.004920, 0, 0, 0},
                              { 0.003408, 0, 0, 0},
                              { 0.001848, 0, 0, 0},
                              { 0.000784, 0, 0, 0},
                              { 0.000260, 0, 0, 0},
                              { 0.000614, 0, 0, 0},
                              { 0.001848, 0, 0, 0},
                              { 0.004354, 0, 0, 0},
                              { 0.008030, 0, 0, 0},
                              { 0.011594, 0, 0, 0},
                              { 0.013104, 0, 0, 0},
                              { 0.011594, 0, 0, 0},
                              { 0.008030, 0, 0, 0},
                              { 0.004354, 0, 0, 0},
                              { 0.001848, 0, 0, 0},
                              { 0.000614, 0, 0, 0},
                              { 0.001132, 0, 0, 0},
                              { 0.003408, 0, 0, 0},
                              { 0.008030, 0, 0, 0},
                              { 0.014812, 0, 0, 0},
                              { 0.021385, 0, 0, 0},
                              { 0.024170, 0, 0, 0},
                              { 0.021385, 0, 0, 0},
                              { 0.014812, 0, 0, 0},
                              { 0.008030, 0, 0, 0},
                              { 0.003408, 0, 0, 0},
                              { 0.001132, 0, 0, 0},
                              { 0.001634, 0, 0, 0},
                              { 0.004920, 0, 0, 0},
                              { 0.011594, 0, 0, 0},
                              { 0.021385, 0, 0, 0},
                              { 0.030875, 0, 0, 0},
                              { 0.034896, 0, 0, 0},
                              { 0.030875, 0, 0, 0},
                              { 0.021385, 0, 0, 0},
                              { 0.011594, 0, 0, 0},
                              { 0.004920, 0, 0, 0},
                              { 0.001634, 0, 0, 0},
                              { 0.001847, 0, 0, 0},
                              { 0.005561, 0, 0, 0},
                              { 0.013104, 0, 0, 0},
                              { 0.024170, 0, 0, 0},
                              { 0.034896, 0, 0, 0},
                              { 0.039440, 0, 0, 0},
                              { 0.034896, 0, 0, 0},
                              { 0.024170, 0, 0, 0},
                              { 0.013104, 0, 0, 0},
                              { 0.005561, 0, 0, 0},
                              { 0.001847, 0, 0, 0},
                              { 0.001634, 0, 0, 0},
                              { 0.004920, 0, 0, 0},
                              { 0.011594, 0, 0, 0},
                              { 0.021385, 0, 0, 0},
                              { 0.030875, 0, 0, 0},
                              { 0.034896, 0, 0, 0},
                              { 0.030875, 0, 0, 0},
                              { 0.021385, 0, 0, 0},
                              { 0.011594, 0, 0, 0},
                              { 0.004920, 0, 0, 0},
                              { 0.001634, 0, 0, 0},
                              { 0.001132, 0, 0, 0},
                              { 0.003408, 0, 0, 0},
                              { 0.008030, 0, 0, 0},
                              { 0.014812, 0, 0, 0},
                              { 0.021385, 0, 0, 0},
                              { 0.024170, 0, 0, 0},
                              { 0.021385, 0, 0, 0},
                              { 0.014812, 0, 0, 0},
                              { 0.008030, 0, 0, 0},
                              { 0.003408, 0, 0, 0},
                              { 0.001132, 0, 0, 0},
                              { 0.000614, 0, 0, 0},
                              { 0.001848, 0, 0, 0},
                              { 0.004354, 0, 0, 0},
                              { 0.008030, 0, 0, 0},
                              { 0.011594, 0, 0, 0},
                              { 0.013104, 0, 0, 0},
                              { 0.011594, 0, 0, 0},
                              { 0.008030, 0, 0, 0},
                              { 0.004354, 0, 0, 0},
                              { 0.001848, 0, 0, 0},
                              { 0.000614, 0, 0, 0},
                              { 0.000260, 0, 0, 0},
                              { 0.000784, 0, 0, 0},
                              { 0.001848, 0, 0, 0},
                              { 0.003408, 0, 0, 0},
                              { 0.004920, 0, 0, 0},
                              { 0.005561, 0, 0, 0},
                              { 0.004920, 0, 0, 0},
                              { 0.003408, 0, 0, 0},
                              { 0.001848, 0, 0, 0},
                              { 0.000784, 0, 0, 0},
                              { 0.000260, 0, 0, 0},
                              { 0.000086, 0, 0, 0},
                              { 0.000260, 0, 0, 0},
                              { 0.000614, 0, 0, 0},
                              { 0.001132, 0, 0, 0},
                              { 0.001634, 0, 0, 0},
                              { 0.001847, 0, 0, 0},
                              { 0.001634, 0, 0, 0},
                              { 0.001132, 0, 0, 0},
                              { 0.000614, 0, 0, 0},
                              { 0.000260, 0, 0, 0},
                              { 0.000086, 0, 0, 0} };
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  colorMapSampler.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
  r0.xy = uiDest.xy;
  r0.xy = (uint2)r0.xy;
  r0.xy = float2(1,1) / r0.xy;
  r0.xy = scriptVector1.xx * r0.xy;
  r1.xyz = float3(0,0,0);
  r0.zw = float2(0,-5);
  while (true) {
    r1.w = cmp(5 < r0.w);
    if (r1.w != 0) break;
    r2.y = r0.w * r0.y;
    r3.xyz = r1.xyz;
    r1.w = r0.z;
    r2.z = -5;
    while (true) {
      r2.w = cmp(5 < r2.z);
      if (r2.w != 0) break;
      r2.x = r2.z * r0.x;
      r2.xw = v2.xy + r2.xy;
      r4.xyz = colorMapSampler.Sample(tileMipBilinearSampler_s, r2.xw).xyz;
      r3.xyz = icb[r1.w+0].xxx * r4.xyz + r3.xyz;
      r1.w = (int)r1.w + 1;
      r2.z = 1 + r2.z;
    }
    r1.xyz = r3.xyz;
    r0.z = r1.w;
    r0.w = 1 + r0.w;
  }
  r0.x = 1 + -scriptVector0.x;
  r0.yzw = colorMapSampler.Sample(tileMipBilinearSampler_s, v2.xy).xyz;
  r0.xyz = r0.xxx * r0.yzw;
  o0.xyz = scriptVector0.xxx * r1.xyz + r0.xyz;
  o0.w = v1.w;
  return;
}