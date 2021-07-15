// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:19 2021

cbuffer DrawSST : register(b4)
{

  struct
  {
    float2 pinCoordStart;
    float2 pinPosStart;
    float spanInInches;
    float pinCoordRate;
    float pinPosRate;
    float treeWidth;
    float pinToSplitOffset;
    uint rootOffset;
    float coordScale;
    int splitArrayOffset;
  } sstDecompressConstants[3] : packoffset(c0);

}

StructuredBuffer<gDispatchIDs> gDispatchIDs : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (int)vThreadGroupID.x & 15;
  if (2 == 0) r1.y = 0; else if (2+2 < 32) {   r1.y = (uint)vThreadGroupID.x << (32-(2 + 2)); r1.y = (uint)r1.y >> (32-2);  } else r1.y = (uint)vThreadGroupID.x >> 2;
  r0.y = (uint)r1.y << 2;
  r1.x = (int)-r0.y + (int)r0.x;
  r0.xy = (uint2)r1.xy << int2(3,3);
  r0.z = (uint)vThreadGroupID.x >> 4;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.z, r0.z, l(0), t1.xxxx
r0.z = gDispatchIDs[]..swiz;
  if (5 == 0) r1.x = 0; else if (5+2 < 32) {   r1.x = (uint)r0.z << (32-(5 + 2)); r1.x = (uint)r1.x >> (32-5);  } else r1.x = (uint)r0.z >> 2;
  if (5 == 0) r1.y = 0; else if (5+16 < 32) {   r1.y = (uint)r0.z << (32-(5 + 16)); r1.y = (uint)r1.y >> (32-5);  } else r1.y = (uint)r0.z >> 16;
  r0.z = (int)r0.z & 3;
  r1.xy = (uint2)r1.xy << int2(5,5);
  r0.xy = (int2)r0.xy + (int2)r1.xy;
  r1.xy = (int2)r0.xy + (int2)vThreadIDInGroup.xy;
  r0.x = (int)r0.z * 3;
  r1.zw = (int2)r0.zz + (int16)sstDecompressConstants[r0.x].splitArrayOffset;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, l(0,0,0,0)
  return;
}