// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:54 2021

StructuredBuffer<volumetricSpotLightBits> volumetricSpotLightBits : register(t0);
StructuredBuffer<volumetricOmniLightBits> volumetricOmniLightBits : register(t1);
Texture2DArray<uint> visibleLights : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u1
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 2, 2, 16
  r0.xyz = mad((int3)vThreadGroupID.xyz, int3(2,2,16), (int3)vThreadIDInGroup.xyz);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r1.x, vThreadIDInGroup.z, l(0), t0.xxxx
r1.x = volumetricSpotLightBits[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r1.y, vThreadIDInGroup.z, l(0), t1.xxxx
r1.y = volumetricSpotLightBits[]..swiz;
  r1.z = (int)r1.y | (int)r1.x;
  if (r1.z != 0) {
    r2.xy = r0.xy;
    r2.w = 0;
    r3.x = r0.z;
    r3.y = 0;
    r1.z = 0;
    while (true) {
      r1.w = cmp((uint)r3.y >= 16);
      if (r1.w != 0) break;
      r2.z = r3.x;
      r1.w = visibleLights.Load(r2.xyzw).x;
      r1.z = (int)r1.w | (int)r1.z;
      r3.xy = (int2)r3.xy + int2(16,1);
    }
  } else {
    r1.z = 0;
  }
  r0.z = (int)r1.x & (int)r1.z;
  r0.w = vThreadIDInGroup.z;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyww, r0.zzzz
  r0.z = (int)r1.y & (int)r1.z;
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r0.xyww, r0.zzzz
  return;
}