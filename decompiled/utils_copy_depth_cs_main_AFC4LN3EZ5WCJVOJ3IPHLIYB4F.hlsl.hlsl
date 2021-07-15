// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:46 2021

Texture2D<float4> floatZSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = vThreadID.xy;
  r0.zw = float2(0,0);
  r0.x = floatZSampler.Load(r0.xyz).x;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xxxx
  return;
}