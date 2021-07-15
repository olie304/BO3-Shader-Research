// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:28 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float2 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float3 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -v1.xy + v0.xy;
  r0.xyz = codeTexture0.Sample(bilinearClamp_s, r0.xy).xyz;
  r1.xyzw = v1.xyxy * float4(1,-1,-1,1) + v0.xyxy;
  r2.xyz = codeTexture0.Sample(bilinearClamp_s, r1.xy).xyz;
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, r1.zw).xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r0.xyz = r0.xyz + r1.xyz;
  r1.xy = v1.xy + v0.xy;
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, r1.xy).xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o0.xyz = float3(0.25,0.25,0.25) * r0.xyz;
  return;
}