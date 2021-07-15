// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:25 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float3 o0 : SV_TARGET0,
  out float o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture0.Gather(bilinearClamp_s, v1.xy).xyzw;
  r1.xyzw = codeTexture0.Gather(bilinearClamp_s, v1.xy).xyzw;
  r2.xyzw = codeTexture0.Gather(bilinearClamp_s, v1.xy).xyzw;
  r3.xyzw = codeTexture1.Gather(bilinearClamp_s, v1.xy).xyzw;
  r0.x = dot(r0.xyzw, r3.xyzw);
  r0.y = dot(r1.xyzw, r3.xyzw);
  r0.z = dot(r2.xyzw, r3.xyzw);
  r0.w = dot(r3.xyzw, r3.xyzw);
  r1.x = r3.x + r3.y;
  r1.x = r1.x + r3.z;
  r1.x = r1.x + r3.w;
  r1.y = cmp(0 < r1.x);
  r2.xyzw = r0.xyzw / r1.xxxx;
  r0.xyzw = r1.yyyy ? r2.xyzw : r0.xyzw;
  r1.x = cmp(0 >= r0.w);
  if (r1.x != 0) discard;
  o0.xyz = r0.xyz;
  o1.x = r0.w;
  return;
}