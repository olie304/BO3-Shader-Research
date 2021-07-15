// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:03 2021

Texture2DMS<float,2> floatZSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r1.x = floatZSampler.Load(r0.xy, 0).x;
  r0.x = floatZSampler.Load(r0.xy, 1).x;
  o0.xyzw = max(r1.xxxx, r0.xxxx);
  return;
}