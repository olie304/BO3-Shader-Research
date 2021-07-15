// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:21 2021

StructuredBuffer<umbraOcclusionBuffer> umbraOcclusionBuffer : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  uint v0 : SV_VertexID0,
  uint v1 : TEXCOORD15,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v0.x & 1;
  r0.x = (uint)r0.x;
  r0.x = 0.015625 * r0.x;
  r0.y = (int)v1.x & 63;
  r0.y = (uint)r0.y;
  r0.x = r0.y * 0.015625 + r0.x;
  o0.x = r0.x * 2 + -1;
  if (4 == 0) r0.x = 0; else if (4+2 < 32) {   r0.x = (uint)v1.x << (32-(4 + 2)); r0.x = (uint)r0.x >> (32-4);  } else r0.x = (uint)v1.x >> 2;
  r0.x = (uint)r0.x << 4;
  r0.y = (uint)v1.x >> 6;
  r0.z = (uint)r0.y >> 2;
  r0.x = mad((int)r0.z, 256, (int)r0.x);
  bitmask.z = ((~(-1 << 2)) << 2) & 0xffffffff;  r0.z = (((uint)r0.y << 2) & bitmask.z) | ((uint)0 & ~bitmask.z);
  r0.x = (int)r0.x + (int)r0.z;
  bitmask.x = ((~(-1 << 2)) << 0) & 0xffffffff;  r0.x = (((uint)v1.x << 0) & bitmask.x) | ((uint)r0.x & ~bitmask.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t1.xxxx
r0.x = umbraOcclusionBuffer[]..swiz;
  r0.x = saturate(0.999909997 + -r0.x);
  r0.z = cmp(r0.x < 9.70999972e-05);
  r0.x = r0.z ? 0 : r0.x;
  r0.z = cmp(0 < r0.x);
  o0.z = r0.x;
  o0.w = r0.z ? 1.000000 : 0;
  if (1 == 0) r0.x = 0; else if (1+1 < 32) {   r0.x = (uint)v0.x << (32-(1 + 1)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)v0.x >> 1;
  r0.xy = (uint2)r0.xy;
  r0.x = 0.015625 * r0.x;
  r0.x = r0.y * 0.015625 + r0.x;
  o0.y = r0.x * 2 + -1;
  return;
}