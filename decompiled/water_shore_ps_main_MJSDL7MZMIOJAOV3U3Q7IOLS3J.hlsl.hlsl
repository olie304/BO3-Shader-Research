// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:07 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  out float o0 : SV_TARGET0)
{
  o0.x = v0.z;
  return;
}