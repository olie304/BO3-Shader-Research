// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:57 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : COLOR0,
  nointerpolation uint v3 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xz, float2(0.707106709,0.707106709));
  r0.y = dot(v1.xz, float2(-0.707106709,-0.707106709));
  r0.xyz = max(r0.xxx, r0.yyy);
  r0.w = 0.100000001;
  r0.xyzw = v2.xyzw * r0.xyzw;
  r1.x = cmp((int)v3.x == 1);
  o0.xyzw = r1.xxxx ? r0.xyzw : v2.xyzw;
  return;
}