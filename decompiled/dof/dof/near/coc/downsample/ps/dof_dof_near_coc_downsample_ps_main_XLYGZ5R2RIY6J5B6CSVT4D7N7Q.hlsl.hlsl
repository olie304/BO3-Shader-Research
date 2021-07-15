// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:28 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy).xyzw;
  r0.xy = max(r0.xz, r0.yw);
  o0.x = max(r0.x, r0.y);
  return;
}