// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:46 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float2 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = v0.xy;
  r1.xyzw = v1.xyxy * float4(-1,-1,1,1) + v0.xyxy;
  r0.yz = r1.yx;
  r2.xyzw = codeTexture0.Sample(bilinearClamp_s, r0.xy).xyzw;
  r0.xyzw = codeTexture0.Sample(bilinearClamp_s, r0.zw).xyzw;
  r2.xyzw = float4(0.1171875,0.1171875,0.1171875,0.1171875) * r2.xyzw;
  r3.xyzw = codeTexture0.Sample(bilinearClamp_s, r1.xy).xyzw;
  r2.xyzw = r3.xyzw * float4(0.03515625,0.03515625,0.03515625,0.03515625) + r2.xyzw;
  r3.xyzw = codeTexture0.Sample(bilinearClamp_s, r1.zy).xyzw;
  r2.xyzw = r3.xyzw * float4(0.03515625,0.03515625,0.03515625,0.03515625) + r2.xyzw;
  r0.xyzw = r0.xyzw * float4(0.1171875,0.1171875,0.1171875,0.1171875) + r2.xyzw;
  r2.xyzw = codeTexture0.Sample(bilinearClamp_s, v0.xy).xyzw;
  r0.xyzw = r2.xyzw * float4(0.390625,0.390625,0.390625,0.390625) + r0.xyzw;
  r2.xw = r1.zw;
  r2.yz = v0.yx;
  r3.xyzw = codeTexture0.Sample(bilinearClamp_s, r2.xy).xyzw;
  r2.xyzw = codeTexture0.Sample(bilinearClamp_s, r2.zw).xyzw;
  r0.xyzw = r3.xyzw * float4(0.1171875,0.1171875,0.1171875,0.1171875) + r0.xyzw;
  r3.xyzw = codeTexture0.Sample(bilinearClamp_s, r1.xw).xyzw;
  r1.xyzw = codeTexture0.Sample(bilinearClamp_s, r1.zw).xyzw;
  r0.xyzw = r3.xyzw * float4(0.03515625,0.03515625,0.03515625,0.03515625) + r0.xyzw;
  r0.xyzw = r2.xyzw * float4(0.1171875,0.1171875,0.1171875,0.1171875) + r0.xyzw;
  o0.xyzw = r1.xyzw * float4(0.03515625,0.03515625,0.03515625,0.03515625) + r0.xyzw;
  return;
}