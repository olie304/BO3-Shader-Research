// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:26 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 1;
  r0.xyzw = codeTexture1.Gather(bilinearClamp_s, v0.xy).xyzw;
  r1.xyzw = cmp(r0.xyzw >= float4(0.0837696344,0.0837696344,0.0837696344,0.0837696344));
  r1.xyzw = r1.xyzw ? float4(1,1,1,1) : 0;
  r2.x = r1.x + r1.y;
  r2.x = r2.x + r1.z;
  r2.x = r2.x + r1.w;
  r2.y = cmp(0 < r2.x);
  r2.z = rcp(r2.x);
  r2.y = r2.y ? r2.z : 0;
  r3.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy).xyzw;
  r2.z = dot(r3.xyzw, r1.xyzw);
  o0.x = r2.z * r2.y;
  r3.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy).xyzw;
  r2.z = dot(r3.xyzw, r1.xyzw);
  o0.y = r2.z * r2.y;
  r3.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy).xyzw;
  r2.z = dot(r3.xyzw, r1.xyzw);
  r0.x = dot(r0.xyzw, r1.xyzw);
  o1.x = r0.x * r2.y;
  o0.z = r2.z * r2.y;
  o1.y = r2.x * r2.y;
  o1.zw = float2(1,1);
  return;
}