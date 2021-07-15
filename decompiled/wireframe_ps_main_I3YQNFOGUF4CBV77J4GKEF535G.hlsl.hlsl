// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:28 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD4,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(v1.w < v1.z);
  r0.y = cmp(v1.z < 0);
  r0.x = (int)r0.y | (int)r0.x;
  r0.yz = cmp(abs(v1.xy) >= abs(v1.ww));
  r0.y = (int)r0.z | (int)r0.y;
  r0.x = (int)r0.y | (int)r0.x;
  o0.xyzw = r0.xxxx ? float4(1,0,0,1) : float4(1,1,1,1);
  return;
}