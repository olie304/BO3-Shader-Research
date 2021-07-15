// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:46 2021

StructuredBuffer<src> src : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u0, 4
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, vThreadID.x, l(0), t0.xxxx
r0.x = src[]..swiz;
  src[vThreadID.x].0 = u0.x;
  return;
}