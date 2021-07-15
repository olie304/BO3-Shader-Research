// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:46 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture0.Sample(bilinearClamp_s, v0.xz).xyzw;
  r0.xyzw = float4(0.234375,0.234375,0.234375,0.234375) * r0.xyzw;
  r1.xyzw = codeTexture0.Sample(bilinearClamp_s, v0.xy).xyzw;
  r0.xyzw = r1.xyzw * float4(0.01953125,0.01953125,0.01953125,0.01953125) + r0.xyzw;
  r1.xyzw = codeTexture0.Sample(bilinearClamp_s, v0.xw).xyzw;
  r0.xyzw = r1.xyzw * float4(0.4921875,0.4921875,0.4921875,0.4921875) + r0.xyzw;
  r1.xyzw = codeTexture0.Sample(bilinearClamp_s, v1.xy).xyzw;
  r0.xyzw = r1.xyzw * float4(0.234375,0.234375,0.234375,0.234375) + r0.xyzw;
  r1.xyzw = codeTexture0.Sample(bilinearClamp_s, v1.xz).xyzw;
  o0.xyzw = r1.xyzw * float4(0.01953125,0.01953125,0.01953125,0.01953125) + r0.xyzw;
  return;
}