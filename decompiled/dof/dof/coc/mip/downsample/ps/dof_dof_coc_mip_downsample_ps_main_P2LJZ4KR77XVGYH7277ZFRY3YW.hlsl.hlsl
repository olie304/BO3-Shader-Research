// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:24 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture0.Gather(bilinearClamp_s, v1.xy).xyzw;
  r1.xyzw = cmp(float4(0,0,0,0) < r0.xyzw);
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.x = r1.x + r1.y;
  r2.x = r2.x + r1.z;
  r2.x = r2.x + r1.w;
  r3.xyzw = codeTexture0.Gather(bilinearClamp_s, v1.xy).xyzw;
  r3.x = dot(r3.xyzw, r1.xyzw);
  r4.xyzw = codeTexture0.Gather(bilinearClamp_s, v1.xy).xyzw;
  r3.y = dot(r4.xyzw, r1.xyzw);
  r4.xyzw = codeTexture0.Gather(bilinearClamp_s, v1.xy).xyzw;
  r3.z = dot(r4.xyzw, r1.xyzw);
  r3.w = dot(r0.xyzw, r1.xyzw);
  r0.xyzw = r3.xyzw / r2.xxxx;
  r1.x = cmp(0 < r2.x);
  o0.xyzw = r1.xxxx ? r0.xyzw : r3.xyzw;
  return;
}