// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:21 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  uint v0 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cmp((int2)v0.xx == int2(2,3));
  r0.y = r0.y ? 2 : v0.x;
  r0.x = r0.x ? 3 : r0.y;
  r0.y = (int)r0.x & 1;
  if (1 == 0) r0.x = 0; else if (1+1 < 32) {   r0.x = (uint)r0.x << (32-(1 + 1)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)r0.x >> 1;
  r0.xy = (uint2)r0.xy;
  o0.x = r0.y * 2 + -1;
  o1.x = r0.y;
  o0.y = r0.x * 2 + -1;
  o1.y = 1 + -r0.x;
  o0.zw = float2(0,1);
  return;
}