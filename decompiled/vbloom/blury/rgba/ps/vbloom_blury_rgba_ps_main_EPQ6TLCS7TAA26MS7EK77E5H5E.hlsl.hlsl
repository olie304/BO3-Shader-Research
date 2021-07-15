// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:47 2021

SamplerState biLinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float4 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy).xyzw;
  r1.xz = v0.xx;
  r2.xyzw = v1.xzyw + v0.yyyy;
  r1.yw = r2.xz;
  r3.xyzw = codeTexture0.Sample(biLinearClamp_s, r1.xy).xyzw;
  r1.xyzw = codeTexture0.Sample(biLinearClamp_s, r1.zw).xyzw;
  r3.xyzw = float4(0.234375,0.234375,0.234375,0.234375) * r3.xyzw;
  r0.xyzw = r0.xyzw * float4(0.01953125,0.01953125,0.01953125,0.01953125) + r3.xyzw;
  r0.xyzw = r1.xyzw * float4(0.4921875,0.4921875,0.4921875,0.4921875) + r0.xyzw;
  r2.xz = v0.xx;
  r1.xyzw = codeTexture0.Sample(biLinearClamp_s, r2.xy).xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, r2.zw).xyzw;
  r0.xyzw = r1.xyzw * float4(0.234375,0.234375,0.234375,0.234375) + r0.xyzw;
  o0.xyzw = r2.xyzw * float4(0.01953125,0.01953125,0.01953125,0.01953125) + r0.xyzw;
  return;
}