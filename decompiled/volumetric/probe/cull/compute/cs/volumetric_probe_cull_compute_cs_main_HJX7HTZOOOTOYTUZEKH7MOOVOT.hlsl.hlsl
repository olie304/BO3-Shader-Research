// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:57 2021

StructuredBuffer<volumetricProbeBits> volumetricProbeBits : register(t0);
Texture2DArray<uint> visibleProbes : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 2, 2, 16
  r0.w = 0;
  r0.xyz = mad((int3)vThreadGroupID.xyz, int3(2,2,16), (int3)vThreadIDInGroup.xyz);
  r0.w = visibleProbes.Load(r0.xyzw).x;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r1.x, vThreadIDInGroup.z, l(0), t0.xxxx
r1.x = volumetricProbeBits[]..swiz;
  r0.w = (int)r0.w & (int)r1.x;
  r0.w = r1.x ? r0.w : 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzz, r0.wwww
  return;
}