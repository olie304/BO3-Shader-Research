// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:29 2021

Texture2D<float4> floatZSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_Position0,
  out float oDepth : SV_Depth)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r0.y << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r0.xy = (uint2)r0.xy << int2(1,1);
  r0.w = r1.y;
  r0.z = 0;
  r0.w = floatZSampler.Load(r0.xwz).x;
  r1.zw = r0.yz;
  r0.x = floatZSampler.Load(r0.xyz).x;
  r0.y = floatZSampler.Load(r1.xyw).x;
  r0.z = floatZSampler.Load(r1.xzw).x;
  r0.xy = min(r0.xw, r0.zy);
  oDepth = min(r0.x, r0.y);
  return;
}