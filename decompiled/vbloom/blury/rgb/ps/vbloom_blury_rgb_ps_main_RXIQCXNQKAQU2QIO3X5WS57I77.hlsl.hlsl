// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:47 2021

SamplerState biLinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float4 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float3 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy).xyz;
  r1.xz = v0.xx;
  r2.xyzw = v1.xzyw + v0.yyyy;
  r1.yw = r2.xz;
  r3.xyz = codeTexture0.Sample(biLinearClamp_s, r1.xy).xyz;
  r1.xyz = codeTexture0.Sample(biLinearClamp_s, r1.zw).xyz;
  r3.xyz = float3(0.234375,0.234375,0.234375) * r3.xyz;
  r0.xyz = r0.xyz * float3(0.01953125,0.01953125,0.01953125) + r3.xyz;
  r0.xyz = r1.xyz * float3(0.4921875,0.4921875,0.4921875) + r0.xyz;
  r2.xz = v0.xx;
  r1.xyz = codeTexture0.Sample(biLinearClamp_s, r2.xy).xyz;
  r2.xyz = codeTexture0.Sample(biLinearClamp_s, r2.zw).xyz;
  r0.xyz = r1.xyz * float3(0.234375,0.234375,0.234375) + r0.xyz;
  o0.xyz = r2.xyz * float3(0.01953125,0.01953125,0.01953125) + r0.xyz;
  return;
}