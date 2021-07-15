// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:31 2021

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyz = log2(abs(r0.xyz));
  r1.xyz = float3(0.454545468,0.454545468,0.454545468) * r1.xyz;
  r0.xyz = exp2(r1.xyz);
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}