// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:02 2021

Texture2D<float4> floatZSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u1
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadIDInGroup.xy << int2(1,1);
  r0.xy = mad((int2)vThreadGroupID.xy, int2(16,16), (int2)r0.xy);
  floatZSampler.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
  r1.xy = uiDest.xy;
  r1.xy = cmp((uint2)r1.xy < (uint2)r0.xy);
  r1.x = (int)r1.y | (int)r1.x;
  if (r1.x != 0) {
    r1.xyzw = float4(2,2,2,2);
  } else {
    r0.zw = float2(0,0);
    r1.x = floatZSampler.Load(r0.xyw).x;
    r2.xyzw = (int4)r0.xyww + int4(0,1,0,0);
    r1.y = floatZSampler.Load(r2.xyz).x;
    r2.xyzw = (int4)r0.xyww + int4(1,0,0,0);
    r1.z = floatZSampler.Load(r2.xyz).x;
    r0.xyzw = (int4)r0.xyzw + int4(1,1,0,0);
    r1.w = floatZSampler.Load(r0.xyz).x;
  }
  r0.xy = min(r1.xz, r1.yw);
  r0.x = min(r0.x, r0.y);
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(2.000000)
  }
  GroupMemoryBarrierWithGroupSync();
  // Needs manual fix for instruction:
atomic_umin g0, l(0), r0.x
  InterlockedMin(dest, value, orig_value);
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroupFlattened.x == 0) {
    r0.xy = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)vThreadIDInGroup.xy);
    if (27 == 0) r0.x = 0; else if (27+4 < 32) {     r0.x = (uint)r0.x << (32-(27 + 4)); r0.x = (uint)r0.x >> (32-27);    } else r0.x = (uint)r0.x >> 4;
    if (27 == 0) r0.y = 0; else if (27+4 < 32) {     r0.y = (uint)r0.y << (32-(27 + 4)); r0.y = (uint)r0.y >> (32-27);    } else r0.y = (uint)r0.y >> 4;
  // No code for instruction (needs manual fix):
    ld_raw r0.z, l(0), g0.xxxx
    // Needs manual fix for instruction:
    atomic_umin u1, r0.xyxx, r0.z
    InterlockedMin(dest, value, orig_value);
  }
  return;
}