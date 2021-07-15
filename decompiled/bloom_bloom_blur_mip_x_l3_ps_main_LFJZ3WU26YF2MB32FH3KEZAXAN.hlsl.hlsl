// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:16 2021

SamplerState biLinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float4 v1 : TEXCOORD1,
  nointerpolation float2 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xz = v1.xy;
  r0.yw = float2(0,0);
  r1.xyzw = v0.xyxy + -r0.xyzw;
  r0.xyzw = v0.xyxy + r0.zwxw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, r1.xy).xyzw;
  r1.xyzw = codeTexture0.Sample(biLinearClamp_s, r1.zw).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.x = v1.z;
  r2.y = 0;
  r2.zw = v0.xy + -r2.xy;
  r2.xy = v0.xy + r2.xy;
  r3.xyzw = codeTexture0.Sample(biLinearClamp_s, r2.xy).xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, r2.zw).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xz = v2.xy;
  r2.yw = float2(0,0);
  r4.xyzw = v0.xyxy + -r2.xyzw;
  r2.xyzw = v0.xyxy + r2.zwxw;
  r5.xyzw = codeTexture0.Sample(biLinearClamp_s, r4.xy).xyzw;
  r4.xyzw = codeTexture0.Sample(biLinearClamp_s, r4.zw).xyzw;
  r1.xyzw = r5.xyzw + r1.xyzw;
  r1.xyzw = r1.xyzw + r4.xyzw;
  r4.xyzw = codeTexture0.Sample(biLinearClamp_s, v0.xy).xyzw;
  r1.xyzw = r4.xyzw + r1.xyzw;
  r4.xyzw = codeTexture0.Sample(biLinearClamp_s, r2.xy).xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, r2.zw).xyzw;
  r1.xyzw = r4.xyzw + r1.xyzw;
  r1.xyzw = r1.xyzw + r2.xyzw;
  r1.xyzw = r1.xyzw + r3.xyzw;
  r2.xyzw = codeTexture0.Sample(biLinearClamp_s, r0.xy).xyzw;
  r0.xyzw = codeTexture0.Sample(biLinearClamp_s, r0.zw).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  o0.xyzw = float4(0.0909090936,0.0909090936,0.0909090936,0.0909090936) * r0.xyzw;
  return;
}