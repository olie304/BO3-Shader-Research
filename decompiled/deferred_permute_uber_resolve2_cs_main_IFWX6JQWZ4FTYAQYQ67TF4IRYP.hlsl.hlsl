// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:18 2021

Texture2D<float4> DS8x : register(t2);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u2
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u3
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u4
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 4, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)vThreadIDInGroup.xy);
  r0.zw = float2(0,0);
  r0.z = DS8x.Load(r0.xyz).x;
  [vThreadIDInGroupFlattened.x].0 = g0.x;
  GroupMemoryBarrierWithGroupSync();
  r1.xyzw = (int4)vThreadIDInGroupFlattened.xxxx & int4(1,9,11,27);
  if (r1.x == 0) {
    r0.w = (int)vThreadIDInGroupFlattened.x | 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r0.w, l(0), g0.xxxx
  r0.w = DS8x[]..swiz;
    r0.z = min(r0.z, r0.w);
    [vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.y == 0) {
    r0.w = (int)vThreadIDInGroupFlattened.x | 8;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r0.w, l(0), g0.xxxx
  r0.w = DS8x[]..swiz;
    r0.z = min(r0.z, r0.w);
    [vThreadIDInGroupFlattened.x].0 = g0.x;
    r2.xyzw = (uint4)r0.xyyy >> int4(1,1,1,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r2.xyzw, r0.zzzz
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.z == 0) {
    r0.w = (int)vThreadIDInGroupFlattened.x | 2;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r0.w, l(0), g0.xxxx
  r0.w = DS8x[]..swiz;
    r0.z = min(r0.z, r0.w);
    [vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.w == 0) {
    r0.w = (int)vThreadIDInGroupFlattened.x | 16;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.w, r0.w, l(0), g0.xxxx
  r0.w = DS8x[]..swiz;
    r0.z = min(r0.z, r0.w);
    [vThreadIDInGroupFlattened.x].0 = g0.x;
    r1.xyzw = (uint4)r0.xyyy >> int4(2,2,2,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r1.xyzw, r0.zzzz
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = (int)vThreadIDInGroupFlattened.x & 31;
  if (r0.x == 0) {
    r0.x = (int)vThreadIDInGroupFlattened.x | 4;
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.x, r0.x, l(0), g0.xxxx
  r0.x = DS8x[]..swiz;
    r0.z = min(r0.z, r0.x);
    [vThreadIDInGroupFlattened.x].0 = g0.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroupFlattened.x == 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r0.x, l(32), l(0), g0.xxxx
  r0.x = DS8x[]..swiz;
    r0.x = min(r0.z, r0.x);
    if (29 == 0) r1.x = 0; else if (29+0 < 32) {     r1.x = (uint)vThreadGroupID.x << (32-(29 + 0)); r1.x = (uint)r1.x >> (32-29);    } else r1.x = (uint)vThreadGroupID.x >> 0;
    if (29 == 0) r1.y = 0; else if (29+0 < 32) {     r1.y = (uint)vThreadGroupID.y << (32-(29 + 0)); r1.y = (uint)r1.y >> (32-29);    } else r1.y = (uint)vThreadGroupID.y >> 0;
    if (29 == 0) r1.z = 0; else if (29+0 < 32) {     r1.z = (uint)vThreadGroupID.y << (32-(29 + 0)); r1.z = (uint)r1.z >> (32-29);    } else r1.z = (uint)vThreadGroupID.y >> 0;
    if (29 == 0) r1.w = 0; else if (29+0 < 32) {     r1.w = (uint)vThreadGroupID.y << (32-(29 + 0)); r1.w = (uint)r1.w >> (32-29);    } else r1.w = (uint)vThreadGroupID.y >> 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u4.xyzw, r1.xyzw, r0.xxxx
  }
  return;
}