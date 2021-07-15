// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:46 2021



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  float3 v5 : OFFPOSITION0,
  out float4 o0 : SV_TARGET0)
{
  o0.xy = w1.xy;
  o0.zw = float2(10,1);
  return;
}