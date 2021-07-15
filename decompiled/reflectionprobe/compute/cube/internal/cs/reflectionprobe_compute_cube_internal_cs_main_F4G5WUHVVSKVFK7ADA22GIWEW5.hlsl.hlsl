// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:28 2021

cbuffer GenericsCBuffer : register(b3)
{
  float4 scriptVector0 : packoffset(c0);
  float4 scriptVector1 : packoffset(c1);
  float4 scriptVector2 : packoffset(c2);
  float4 scriptVector3 : packoffset(c3);
  float4 scriptVector4 : packoffset(c4);
  float4 scriptVector5 : packoffset(c5);
  float4 scriptVector6 : packoffset(c6);
  float4 scriptVector7 : packoffset(c7);
  float4 weaponParam0 : packoffset(c8);
  float4 weaponParam1 : packoffset(c9);
  float4 weaponParam2 : packoffset(c10);
  float4 weaponParam3 : packoffset(c11);
  float4 weaponParam4 : packoffset(c12);
  float4 weaponParam5 : packoffset(c13);
  float4 weaponParam6 : packoffset(c14);
  float4 weaponParam7 : packoffset(c15);
}

Texture2DArray<float3> gSRVReflectionArray : register(t0);
Texture2D<float3> gSRVReflection0 : register(t1);
Texture2D<float3> gSRVReflection1 : register(t2);
Texture2D<float3> gSRVReflection2 : register(t3);
Texture2D<float3> gSRVReflection3 : register(t4);
Texture2D<float3> gSRVReflection4 : register(t5);
Texture2D<float3> gSRVReflection5 : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u1
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u2
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u3
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 12, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)scriptVector0.xz;
  r0.z = cmp((int)r0.x == 256);
  if (r0.y != 0) {
    r1.xyz = vThreadID.xyz;
    r1.w = 0;
    r1.xyz = gSRVReflectionArray.Load(r1.xyzw).xyz;
  } else {
    switch (vThreadID.z) {
      case 0 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection0.Load(r2.xyz).xyz;
      break;
      case 1 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection1.Load(r2.xyz).xyz;
      break;
      case 2 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection2.Load(r2.xyz).xyz;
      break;
      case 3 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection3.Load(r2.xyz).xyz;
      break;
      case 4 :      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection4.Load(r2.xyz).xyz;
      break;
      default :
      r2.xy = vThreadID.xy;
      r2.zw = float2(0,0);
      r1.xyz = gSRVReflection5.Load(r2.xyz).xyz;
      break;
    }
  }
  r0.y = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r0.w = (int)r0.x + -1;
  r0.w = (int)r0.w + (int)-vThreadID.y;
  r2.y = r0.z ? r0.w : vThreadID.y;
  r2.xzw = vThreadID.xzz;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r2.xyzw, r1.xyzx
  gSRVReflectionArray[r0.y].0 = g0.xyz;
  r0.x = (uint)r0.x >> 1;
  r0.w = min(4, (uint)r0.x);
  GroupMemoryBarrierWithGroupSync();
  r1.xy = cmp((uint2)vThreadIDInGroup.xy < (uint2)r0.ww);
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.xy = (uint2)vThreadIDInGroup.xy << int2(1,1);
    r1.y = (uint)r1.y << 3;
    r1.x = (int)r1.y + (int)r1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.yzw, r1.x, l(0), g0.xxyz
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
  r1.w = gSRVReflectionArray[]..swiz;
    r2.x = (int)r1.x + 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.xyz, r2.x, l(0), g0.xyzx
  r2.x = gSRVReflectionArray[]..swiz;
  r2.y = gSRVReflectionArray[]..swiz;
  r2.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r2.xyzx + r1.yzwy;
    r1.xy = (int2)r1.xx + int2(8,9);
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xzw, r1.x, l(0), g0.xxyz
  r1.x = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
  r1.w = gSRVReflectionArray[]..swiz;
    r2.xyzw = r2.xyzw + r1.xzwx;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xyz, r1.y, l(0), g0.xyzx
  r1.x = gSRVReflectionArray[]..swiz;
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
    r1.xyzw = r2.xyzw + r1.xyzx;
    r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
    gSRVReflectionArray[r0.y].0 = g0.xyz;
    r2.xy = mad((int2)vThreadGroupID.xy, (int2)r0.ww, (int2)vThreadIDInGroup.xy);
    r3.x = (int)r0.x + -1;
    r3.x = (int)-r2.y + (int)r3.x;
    r2.z = r0.z ? r3.x : r2.y;
    r2.w = vThreadID.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r2.xzww, r1.xyzw
  }
  r0.xw = (uint2)r0.xw >> int2(1,1);
  GroupMemoryBarrierWithGroupSync();
  r1.xy = cmp((uint2)vThreadIDInGroup.xy < (uint2)r0.ww);
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    r1.xy = (uint2)vThreadIDInGroup.xy << int2(1,1);
    r1.y = (uint)r1.y << 3;
    r1.x = (int)r1.y + (int)r1.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.yzw, r1.x, l(0), g0.xxyz
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
  r1.w = gSRVReflectionArray[]..swiz;
    r2.x = (int)r1.x + 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.xyz, r2.x, l(0), g0.xyzx
  r2.x = gSRVReflectionArray[]..swiz;
  r2.y = gSRVReflectionArray[]..swiz;
  r2.z = gSRVReflectionArray[]..swiz;
    r2.xyzw = r2.xyzx + r1.yzwy;
    r1.xy = (int2)r1.xx + int2(8,9);
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xzw, r1.x, l(0), g0.xxyz
  r1.x = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
  r1.w = gSRVReflectionArray[]..swiz;
    r2.xyzw = r2.xyzw + r1.xzwx;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xyz, r1.y, l(0), g0.xyzx
  r1.x = gSRVReflectionArray[]..swiz;
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
    r1.xyzw = r2.xyzw + r1.xyzx;
    r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
    gSRVReflectionArray[r0.y].0 = g0.xyz;
    r2.xy = mad((int2)vThreadGroupID.xy, (int2)r0.ww, (int2)vThreadIDInGroup.xy);
    r0.y = (int)r0.x + -1;
    r0.y = (int)-r2.y + (int)r0.y;
    r2.z = r0.z ? r0.y : r2.y;
    r2.w = vThreadID.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u2.xyzw, r2.xzww, r1.xyzw
  }
  r0.y = (uint)r0.w >> 1;
  GroupMemoryBarrierWithGroupSync();
  r0.yw = cmp((uint2)vThreadIDInGroup.xy < (uint2)r0.yy);
  r0.y = r0.w ? r0.y : 0;
  if (r0.y != 0) {
    r0.x = (uint)r0.x >> 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured r1.xyz, l(0), l(0), g0.xyzx
  r1.x = gSRVReflectionArray[]..swiz;
  r1.y = gSRVReflectionArray[]..swiz;
  r1.z = gSRVReflectionArray[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.xyz, l(1), l(0), g0.xyzx
  r2.x = gSRVReflectionArray[]..swiz;
  r2.y = gSRVReflectionArray[]..swiz;
  r2.z = gSRVReflectionArray[]..swiz;
    r1.xyzw = r2.xyzx + r1.xyzx;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.xyz, l(8), l(0), g0.xyzx
  r2.x = gSRVReflectionArray[]..swiz;
  r2.y = gSRVReflectionArray[]..swiz;
  r2.z = gSRVReflectionArray[]..swiz;
    r1.xyzw = r2.xyzx + r1.xyzw;
  // Known bad code for instruction (needs manual fix):
    ld_structured r2.xyz, l(9), l(0), g0.xyzx
  r2.x = gSRVReflectionArray[]..swiz;
  r2.y = gSRVReflectionArray[]..swiz;
  r2.z = gSRVReflectionArray[]..swiz;
    r1.xyzw = r2.xyzx + r1.xyzw;
    r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
    r0.x = (int)r0.x + -1;
    r0.x = (int)r0.x + (int)-vThreadGroupID.y;
    r0.y = r0.z ? r0.x : vThreadGroupID.y;
    r0.x = vThreadGroupID.x;
    r0.zw = vThreadID.zz;
  // No code for instruction (needs manual fix):
    store_uav_typed u3.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}