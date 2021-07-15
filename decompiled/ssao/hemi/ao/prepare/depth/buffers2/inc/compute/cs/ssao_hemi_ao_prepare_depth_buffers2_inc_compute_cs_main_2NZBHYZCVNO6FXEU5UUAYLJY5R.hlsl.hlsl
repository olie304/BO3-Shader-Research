// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:03 2021

Texture2D<float> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u1
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)vThreadID.x << 1) & bitmask.x) | ((uint)vThreadIDInGroup.x & ~bitmask.x);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)vThreadID.y << 1) & bitmask.y) | ((uint)vThreadIDInGroup.y & ~bitmask.y);
  r0.zw = float2(0,0);
  r0.x = codeTexture0.Load(r0.xyz).x;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xxxx
  bitmask.y = ((~(-1 << 2)) << 2) & 0xffffffff;  r0.y = (((uint)vThreadID.y << 2) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.z = ((~(-1 << 2)) << 0) & 0xffffffff;  r1.z = (((uint)vThreadID.x << 0) & bitmask.z) | ((uint)r0.y & ~bitmask.z);
  bitmask.w = ((~(-1 << 2)) << 0) & 0xffffffff;  r1.w = (((uint)vThreadID.x << 0) & bitmask.w) | ((uint)r0.y & ~bitmask.w);
  r1.xy = (uint2)vThreadID.xy >> int2(2,2);
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r1.xyzw, r0.xxxx
  return;
}