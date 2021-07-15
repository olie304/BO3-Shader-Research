// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:26 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float3 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy, int2(0, 0)).xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r0.xyz = float3(0.111111112,0.111111112,0.111111112) * r0.xyz;
  o0.xyz = min(r0.xyz, r1.xyz);
  return;
}