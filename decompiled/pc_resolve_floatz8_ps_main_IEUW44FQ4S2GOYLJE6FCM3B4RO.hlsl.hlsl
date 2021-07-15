// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:04 2021

Texture2DMS<float,8> floatZSampler : register(t0);


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
  r1.y = floatZSampler.Load(r0.xy, 1).x;
  r1.x = max(r1.x, r1.y);
  r1.y = floatZSampler.Load(r0.xy, 2).x;
  r1.x = max(r1.x, r1.y);
  r1.y = floatZSampler.Load(r0.xy, 3).x;
  r1.x = max(r1.x, r1.y);
  r1.y = floatZSampler.Load(r0.xy, 4).x;
  r1.x = max(r1.x, r1.y);
  r1.y = floatZSampler.Load(r0.xy, 5).x;
  r1.x = max(r1.x, r1.y);
  r1.y = floatZSampler.Load(r0.xy, 6).x;
  r0.x = floatZSampler.Load(r0.xy, 7).x;
  r0.y = max(r1.x, r1.y);
  o0.xyzw = max(r0.yyyy, r0.xxxx);
  return;
}