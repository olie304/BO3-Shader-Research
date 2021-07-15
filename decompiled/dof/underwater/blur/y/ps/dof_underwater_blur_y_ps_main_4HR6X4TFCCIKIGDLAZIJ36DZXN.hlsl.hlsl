// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:29 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t1);


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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0;
  r0.z = codeTexture0.Sample(bilinearClamp_s, v0.xy).x;
  r1.xyzw = v1.xzyw * r0.zzzz;
  r0.yw = r1.xz;
  r0.xyzw = v0.xyxy + -r0.xyxw;
  r2.xyzw = codeTexture1.Sample(bilinearClamp_s, r0.xy).xyzw;
  r0.xyzw = codeTexture1.Sample(bilinearClamp_s, r0.zw).xyzw;
  r3.xyzw = r2.xyzw + r0.xyzw;
  r1.x = 0;
  r4.xyzw = v0.xyxy + -r1.xyxw;
  r1.xyzw = v0.xyxy + r1.xwxy;
  r5.xyzw = codeTexture1.Sample(bilinearClamp_s, r4.xy).xyzw;
  r4.xyzw = codeTexture1.Sample(bilinearClamp_s, r4.zw).xyzw;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r3.xyzw = r3.xyzw + r4.xyzw;
  r4.xyzw = codeTexture1.Sample(bilinearClamp_s, v0.xy).xyzw;
  r3.xyzw = r4.xyzw + r3.xyzw;
  r4.xyzw = codeTexture1.Sample(bilinearClamp_s, r1.xy).xyzw;
  r1.xyzw = codeTexture1.Sample(bilinearClamp_s, r1.zw).xyzw;
  r3.xyzw = r4.xyzw + r3.xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r0.xyzw = r0.xyzw + r2.xyzw;
  r1.x = cmp(0 < r0.w);
  r1.y = rcp(r0.w);
  r1.x = r1.x ? r1.y : 0;
  o0.xyzw = r1.xxxx * r0.xyzw;
  return;
}