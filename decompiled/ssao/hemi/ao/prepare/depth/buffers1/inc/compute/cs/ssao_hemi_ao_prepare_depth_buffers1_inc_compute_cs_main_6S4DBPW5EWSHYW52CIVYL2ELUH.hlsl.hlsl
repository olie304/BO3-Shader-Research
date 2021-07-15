// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:03 2021

Texture2D<float> GBufferDepth : register(t4);


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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u3
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 4, 256
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = mad((int2)vThreadGroupID.xy, int2(16,16), (int2)vThreadIDInGroup.xy);
  r1.x = mad((int)vThreadIDInGroup.y, 16, (int)vThreadIDInGroup.x);
  r0.zw = float2(0,0);
  r0.z = GBufferDepth.Load(r0.xyz).x;
  r0.w = cmp(r0.z >= 0.984375);
  r1.y = 1.01587307 * r0.z;
  r0.z = r0.z * 64 + -63;
  r0.z = r0.w ? r0.z : r1.y;
  r0.z = max(9.99999994e-09, r0.z);
  r0.z = rcp(r0.z);
  r0.z = min(65504, r0.z);
  [r1.x].0 = g0.x;
  r0.zw = (int2)r1.xx + int2(8,136);
  r2.xyzw = (int4)r0.xyxy + int4(0,8,8,0);
  r3.xy = r2.zw;
  r3.zw = float2(0,0);
  r1.y = GBufferDepth.Load(r3.xyz).x;
  r1.z = cmp(r1.y >= 0.984375);
  r1.w = 1.01587307 * r1.y;
  r1.y = r1.y * 64 + -63;
  r1.y = r1.z ? r1.y : r1.w;
  r1.y = max(9.99999994e-09, r1.y);
  r1.y = rcp(r1.y);
  r1.y = min(65504, r1.y);
  [r0.z].0 = g0.x;
  r0.z = (int)r1.x + 128;
  r2.zw = float2(0,0);
  r1.x = GBufferDepth.Load(r2.xyz).x;
  r1.y = cmp(r1.x >= 0.984375);
  r1.z = 1.01587307 * r1.x;
  r1.x = r1.x * 64 + -63;
  r1.x = r1.y ? r1.x : r1.z;
  r1.x = max(9.99999994e-09, r1.x);
  r1.x = rcp(r1.x);
  r1.x = min(65504, r1.x);
  [r0.z].0 = g0.x;
  r1.xy = (int2)r0.xy + int2(8,8);
  r1.zw = float2(0,0);
  r0.x = GBufferDepth.Load(r1.xyz).x;
  r0.y = cmp(r0.x >= 0.984375);
  r0.z = 1.01587307 * r0.x;
  r0.x = r0.x * 64 + -63;
  r0.x = r0.y ? r0.x : r0.z;
  r0.x = max(9.99999994e-09, r0.x);
  r0.x = rcp(r0.x);
  r0.x = min(65504, r0.x);
  [r0.w].0 = g0.x;
  GroupMemoryBarrierWithGroupSync();
  r0.x = (uint)vThreadIDInGroup.x << 1;
  r0.x = mad((int)vThreadIDInGroup.y, 32, (int)r0.x);
  bitmask.y = ((~(-1 << 1)) << 4) & 0xffffffff;  r0.y = (((uint)vThreadIDInGroup.x << 4) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)vThreadIDInGroup.y << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r0.y = (int)r0.y + (int)r0.x;
// Known bad code for instruction (needs manual fix):
ld_structured r0.y, r0.y, l(0), g0.xxxx
r0.y = GBufferDepth[]..swiz;
  [r0.x].0 = g0.x;
  GroupMemoryBarrierWithGroupSync();
  bitmask.z = ((~(-1 << 2)) << 2) & 0xffffffff;  r0.z = (((uint)vThreadID.y << 2) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.z = ((~(-1 << 2)) << 0) & 0xffffffff;  r1.z = (((uint)vThreadID.x << 0) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
  bitmask.w = ((~(-1 << 2)) << 0) & 0xffffffff;  r1.w = (((uint)vThreadID.x << 0) & bitmask.w) | ((uint)r0.z & ~bitmask.w);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.yyyy
  r1.xy = (uint2)vThreadID.xy >> int2(2,2);
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r1.xyzw, r0.yyyy
  r0.y = (int)vThreadIDInGroupFlattened.x & 9;
  if (r0.y == 0) {
    r0.y = (uint)vThreadIDInGroup.x << 4;
    r0.y = (int)r0.y & 32;
    bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)2 << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
    r0.x = (int)r0.y + (int)r0.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.x, r0.x, l(0), g0.xxxx
  r0.x = GBufferDepth[]..swiz;
    r0.yz = (uint2)vThreadID.xy >> int2(1,1);
    bitmask.w = ((~(-1 << 2)) << 2) & 0xffffffff;  r0.w = (((uint)r0.z << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
    bitmask.z = ((~(-1 << 2)) << 0) & 0xffffffff;  r1.z = (((uint)r0.y << 0) & bitmask.z) | ((uint)r0.w & ~bitmask.z);
    bitmask.w = ((~(-1 << 2)) << 0) & 0xffffffff;  r1.w = (((uint)r0.y << 0) & bitmask.w) | ((uint)r0.w & ~bitmask.w);
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r0.yzzz, r0.xxxx
    r1.xy = (uint2)r0.yz >> int2(2,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r1.xyzw, r0.xxxx
  }
  return;
}