// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:46 2021

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



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)scriptVector1.xy;
  r0.xy = cmp((uint2)vThreadID.xy < (uint2)r0.xy);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyzw = (uint4)scriptVector0.zwxy;
    r1.xy = (uint2)scriptVector1.zw;
    r0.xyzw = (int4)r0.xyzw + (int4)vThreadID.xyxy;
    r1.zw = r0.zw;
  // No code for instruction (needs manual fix):
    ld_uav_typed_indexable(texture2darray)(float,float,float,float) r1.x, r1.zwxx, u0.xyzw
    r0.zw = r1.yy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r1.xxxx
  }
  return;
}