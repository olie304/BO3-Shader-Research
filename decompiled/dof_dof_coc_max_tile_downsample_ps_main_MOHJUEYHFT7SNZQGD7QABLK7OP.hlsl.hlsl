// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:24 2021

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(-3, -3)).xyzw;
  r1.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(-1, -3)).xyzw;
  r0.xyzw = max(r1.xyzw, r0.xyzw);
  r1.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(-3, -1)).xyzw;
  r0.xyzw = max(r1.xyzw, r0.xyzw);
  r1.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(-1, -1)).xyzw;
  r0.xyzw = max(r1.xyzw, r0.xyzw);
  r0.xy = max(r0.xz, r0.yw);
  r0.x = max(r0.x, r0.y);
  r1.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(-3, 1)).xyzw;
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(-1, 1)).xyzw;
  r1.xyzw = max(r2.xyzw, r1.xyzw);
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(-3, 3)).xyzw;
  r1.xyzw = max(r2.xyzw, r1.xyzw);
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(-1, 3)).xyzw;
  r1.xyzw = max(r2.xyzw, r1.xyzw);
  r0.yz = max(r1.xz, r1.yw);
  r0.y = max(r0.y, r0.z);
  r0.x = max(r0.x, r0.y);
  r1.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(1, -3)).xyzw;
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(3, -3)).xyzw;
  r1.xyzw = max(r2.xyzw, r1.xyzw);
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(1, -1)).xyzw;
  r1.xyzw = max(r2.xyzw, r1.xyzw);
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(3, -1)).xyzw;
  r1.xyzw = max(r2.xyzw, r1.xyzw);
  r0.yz = max(r1.xz, r1.yw);
  r0.y = max(r0.y, r0.z);
  r0.x = max(r0.x, r0.y);
  r1.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(1, 1)).xyzw;
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(3, 1)).xyzw;
  r1.xyzw = max(r2.xyzw, r1.xyzw);
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(1, 3)).xyzw;
  r1.xyzw = max(r2.xyzw, r1.xyzw);
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy, int2(3, 3)).xyzw;
  r1.xyzw = max(r2.xyzw, r1.xyzw);
  r0.yz = max(r1.xz, r1.yw);
  r0.y = max(r0.y, r0.z);
  o0.x = max(r0.x, r0.y);
  return;
}