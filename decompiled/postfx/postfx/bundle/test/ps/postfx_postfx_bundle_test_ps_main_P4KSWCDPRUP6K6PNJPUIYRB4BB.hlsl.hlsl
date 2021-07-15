// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:13 2021

SamplerState testSampler_s : register(s1);
Texture2D<float4> resolvedScene : register(t0);
Texture2D<float4> codeTexture0 : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cmp(v1.xy < float2(0.25,0.25));
  r0.x = (int)r0.y | (int)r0.x;
  r0.yz = cmp(float2(0.75,0.75) < v1.xy);
  r0.x = (int)r0.y | (int)r0.x;
  r0.x = (int)r0.z | (int)r0.x;
  if (r0.x != 0) {
    r0.xyz = resolvedScene.Sample(testSampler_s, v1.xy).zyx;
  } else {
    r0.xyz = codeTexture0.Sample(testSampler_s, v1.xy).xyz;
  }
  o0.xyz = r0.xyz;
  o0.w = 1;
  return;
}