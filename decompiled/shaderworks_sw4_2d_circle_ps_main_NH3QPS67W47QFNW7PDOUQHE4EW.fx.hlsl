// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:33 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(0.5,0.5) + -v2.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = r0.x * 2 + -0.99000001;
  r0.x = saturate(100 * r0.x);
  r0.w = 1 + -r0.x;
  r0.xyz = float3(1,1,1);
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}