// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:27 2021

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
  out float o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0;
  r0.yw = v1.xy;
  r1.xyzw = v0.xyxy + -r0.xyxw;
  r0.xyzw = v0.xyxy + r0.xwxy;
  r1.x = codeTexture0.Sample(biLinearClamp_s, r1.xy).x;
  r1.y = codeTexture0.Sample(biLinearClamp_s, r1.zw).x;
  r1.x = r1.x + r1.y;
  r2.x = 0;
  r2.yw = v1.zw;
  r3.xyzw = v0.xyxy + -r2.xyxw;
  r2.xyzw = v0.xyxy + r2.xwxy;
  r1.y = codeTexture0.Sample(biLinearClamp_s, r3.xy).x;
  r1.z = codeTexture0.Sample(biLinearClamp_s, r3.zw).x;
  r1.x = r1.x + r1.y;
  r1.x = r1.x + r1.z;
  r3.x = 0;
  r3.yw = v2.xy;
  r4.xyzw = v0.xyxy + -r3.xyxw;
  r3.xyzw = v0.xyxy + r3.xwxy;
  r1.y = codeTexture0.Sample(biLinearClamp_s, r4.xy).x;
  r1.z = codeTexture0.Sample(biLinearClamp_s, r4.zw).x;
  r1.x = r1.x + r1.y;
  r1.x = r1.x + r1.z;
  r1.y = codeTexture0.Sample(biLinearClamp_s, v0.xy).x;
  r1.x = r1.x + r1.y;
  r1.y = codeTexture0.Sample(biLinearClamp_s, r3.xy).x;
  r1.z = codeTexture0.Sample(biLinearClamp_s, r3.zw).x;
  r1.x = r1.x + r1.y;
  r1.x = r1.x + r1.z;
  r1.y = codeTexture0.Sample(biLinearClamp_s, r2.xy).x;
  r1.z = codeTexture0.Sample(biLinearClamp_s, r2.zw).x;
  r1.x = r1.x + r1.y;
  r1.x = r1.x + r1.z;
  r0.x = codeTexture0.Sample(biLinearClamp_s, r0.xy).x;
  r0.y = codeTexture0.Sample(biLinearClamp_s, r0.zw).x;
  r0.x = r1.x + r0.x;
  r0.x = r0.x + r0.y;
  o0.x = 0.0769230798 * r0.x;
  return;
}