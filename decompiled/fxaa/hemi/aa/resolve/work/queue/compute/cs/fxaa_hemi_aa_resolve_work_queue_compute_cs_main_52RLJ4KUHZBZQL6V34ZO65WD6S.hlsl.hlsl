// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:01 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured_opc u0, 16
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured_opc u1, 16
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u2
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
  if (vThreadIDInGroupFlattened.x == 0) {
    // Needs manual fix for instruction:
    imm_atomic_alloc r0.x, u0
    InterlockedExchange ?(dest, value, orig_value);
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), r0.x
    // Needs manual fix for instruction:
    imm_atomic_alloc r0.x, u1
    InterlockedExchange ?(dest, value, orig_value);
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), r0.x
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.x, l(0), g0.xxxx
  r0.y = (int)r0.x + 63;
  r0.z = (int)r0.y & -64;
// No code for instruction (needs manual fix):
ld_raw r0.w, l(0), g1.xxxx
  r1.x = (int)r0.w + 63;
  r1.y = (int)r1.x & -64;
  r0.x = (int)r0.x + (int)vThreadIDInGroupFlattened.x;
  r0.z = cmp((uint)r0.x < (uint)r0.z);
  if (r0.z != 0) {
    [r0.x].0 = u0.xyzw;
  }
  r0.x = (int)r0.w + (int)vThreadIDInGroupFlattened.x;
  r0.z = cmp((uint)r0.x < (uint)r1.y);
  if (r0.z != 0) {
    [r0.x].0 = u1.xyzw;
  }
  if (vThreadIDInGroupFlattened.x == 0) {
    r0.x = (uint)r0.y >> 6;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, l(0,0,0,0), r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, l(1,1,1,1), l(1,1,1,1)
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, l(2,2,2,2), l(1,1,1,1)
    r0.x = (uint)r1.x >> 6;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, l(3,3,3,3), r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, l(4,4,4,4), l(1,1,1,1)
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, l(5,5,5,5), l(1,1,1,1)
  }
  return;
}