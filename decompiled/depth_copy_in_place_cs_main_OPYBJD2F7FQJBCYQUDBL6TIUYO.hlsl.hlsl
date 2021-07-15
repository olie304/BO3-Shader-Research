// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:20 2021

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

Texture2DArray<float> src : register(t0);
StructuredBuffer<gCopyCommands> gCopyCommands : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 32, 32, 1
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, vThreadGroupID.x, l(0), t1.xxxx
r0.x = src[]..swiz;
  r0.y = (int)r0.x & 3;
  if (5 == 0) r1.x = 0; else if (5+2 < 32) {   r1.x = (uint)r0.x << (32-(5 + 2)); r1.x = (uint)r1.x >> (32-5);  } else r1.x = (uint)r0.x >> 2;
  if (5 == 0) r1.y = 0; else if (5+7 < 32) {   r1.y = (uint)r0.x << (32-(5 + 7)); r1.y = (uint)r1.y >> (32-5);  } else r1.y = (uint)r0.x >> 7;
  if (5 == 0) r1.z = 0; else if (5+12 < 32) {   r1.z = (uint)r0.x << (32-(5 + 12)); r1.z = (uint)r1.z >> (32-5);  } else r1.z = (uint)r0.x >> 12;
  if (5 == 0) r1.w = 0; else if (5+17 < 32) {   r1.w = (uint)r0.x << (32-(5 + 17)); r1.w = (uint)r1.w >> (32-5);  } else r1.w = (uint)r0.x >> 17;
  r1.xyzw = mad((int4)r1.xyzw, int4(32,32,32,32), (int4)vThreadIDInGroup.xyxy);
  r0.z = (int)r0.y + (int16)sstDecompressConstants[0].splitArrayOffset;
  r0.w = 0;
  r0.xy = r1.xy;
  r0.x = src.Load(r0.xyzw).x;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.zwww, r0.xxxx
  return;
}