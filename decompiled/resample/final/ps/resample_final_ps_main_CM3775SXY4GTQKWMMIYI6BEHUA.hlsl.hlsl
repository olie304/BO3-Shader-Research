// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:29 2021

SamplerState samp0_s : register(s0);
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture0.Sample(samp0_s, v1.xy).xyzw;
  r0.xyz = log2(r0.xyz);
  o0.w = r0.w;
  r0.xyz = float3(0.447761863,0.447761863,0.447761863) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyz = (int3)r0.xyz & int3(2139095040,2139095040,2139095040);
  r1.xyz = cmp((int3)r1.xyz != int3(2139095040,2139095040,2139095040));
  o0.xyz = r1.xyz ? r0.xyz : float3(65536,65536,65536);
  return;
}