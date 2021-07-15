// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:18 2021

StructuredBuffer<gPermuteAccumulateBuffer> gPermuteAccumulateBuffer : register(t25);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t25, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u5
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, vThreadIDInGroup.x, l(0), t25.xxxx
r0.x = gPermuteAccumulateBuffer[]..swiz;
  r0.y = (int)vThreadIDInGroup.x * 3;
// No code for instruction (needs manual fix):
store_uav_typed u5.xyzw, r0.yyyy, r0.xxxx
  r0.xz = mad((int2)vThreadIDInGroup.xx, int2(3,3), int2(1,2));
// No code for instruction (needs manual fix):
store_uav_typed u5.xyzw, r0.xxxx, l(1,1,1,1)
// No code for instruction (needs manual fix):
store_uav_typed u5.xyzw, r0.zzzz, l(1,1,1,1)
  return;
}