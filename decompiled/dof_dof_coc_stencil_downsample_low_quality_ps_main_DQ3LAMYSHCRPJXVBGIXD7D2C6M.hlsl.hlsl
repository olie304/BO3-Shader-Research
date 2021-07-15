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
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = codeTexture1.Sample(bilinearClamp_s, v1.xy).x;
  r0.y = cmp(0 >= r0.x);
  if (r0.y != 0) discard;
  r0.yzw = codeTexture0.Sample(bilinearClamp_s, v1.xy).xyz;
  o0.xyz = r0.yzw;
  o1.x = r0.x;
  return;
}