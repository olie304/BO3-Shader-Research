// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:24 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  out float4 o0 : SV_TARGET0)
{
  o0.xyz = v1.xyz * w1.xww;
  o0.w = w1.x;
  return;
}