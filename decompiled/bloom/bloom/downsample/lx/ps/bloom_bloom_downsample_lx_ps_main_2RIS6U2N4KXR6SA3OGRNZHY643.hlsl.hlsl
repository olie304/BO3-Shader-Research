// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:46 2021

SamplerState biLinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r1.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r1.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r1.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r1.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r0.xyzw = float4(0.0714285746,0.0714285746,0.0714285746,0.0714285746) * r0.xyzw;
  r1.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0357142873,0.0357142873,0.0357142873,0.0357142873) + r0.xyzw;
  r1.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  o0.xyzw = r1.xyzw * float4(0.125,0.125,0.125,0.125) + r0.xyzw;
  return;
}