// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:26 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  o0.w = 1;
  o1.xyzw = float4(0,0,1,1);
  return;
}