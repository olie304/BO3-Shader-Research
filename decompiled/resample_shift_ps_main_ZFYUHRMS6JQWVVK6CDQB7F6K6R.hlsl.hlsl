// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:29 2021

SamplerState samp0_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


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

  r0.x = codeTexture0.Sample(samp0_s, v1.xy).x;
  o0.x = r0.x;
  r0.x = codeTexture0.Sample(samp0_s, v1.zw).y;
  o0.y = r0.x;
  r0.x = codeTexture0.Sample(samp0_s, v2.xy).z;
  o0.z = r0.x;
  o0.w = 1;
  return;
}