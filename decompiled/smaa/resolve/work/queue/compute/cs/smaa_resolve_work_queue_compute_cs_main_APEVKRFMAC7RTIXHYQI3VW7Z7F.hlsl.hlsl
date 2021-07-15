// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:48 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured_opc u6, 8
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
  if (vThreadIDInGroupFlattened.x == 0) {
    // Needs manual fix for instruction:
    imm_atomic_alloc r0.x, u6
    InterlockedExchange ?(dest, value, orig_value);
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), r0.x
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.x, l(0), g0.xxxx
  r0.y = (int)r0.x + 63;
  r0.z = (int)r0.y & -64;
  r0.x = (int)r0.x + (int)vThreadIDInGroupFlattened.x;
  r0.z = cmp((uint)r0.x < (uint)r0.z);
  if (r0.z != 0) {
    [r0.x].0 = u6.xy;
  }
  if (vThreadIDInGroupFlattened.x == 0) {
    r0.x = (uint)r0.y >> 6;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, l(0,0,0,0), r0.xxxx
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, l(1,1,1,1), l(1,1,1,1)
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, l(2,2,2,2), l(1,1,1,1)
  }
  return;
}