// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:16 2021

SamplerState heatLookupSampler_s : register(s1);
Texture2D<float4> sceneTexture : register(t0);
Texture2D<float4> sceneDepthTexture : register(t6);
Texture2D<float4> sonarTexture : register(t7);
Texture2D<float4> sonarDepthTexture : register(t9);
Texture2D<float4> heatLookup : register(t10);
Texture2D<float4> sceneLookup : register(t11);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r1.xy = sonarTexture.Load(r0.xyw).xy;
  r2.x = cmp(0 < r1.y);
  if (r2.x != 0) {
    r2.x = sceneDepthTexture.Load(r0.xyw).x;
    r2.y = sonarDepthTexture.Load(r0.xyw).x;
    r2.x = cmp(r2.y < r2.x);
    r2.x = r2.x ? 0 : r1.y;
  } else {
    r2.x = r1.y;
  }
  r2.y = cmp(0 < r2.x);
  r1.yw = float2(0.5,0.5);
  r3.xyz = heatLookup.Sample(heatLookupSampler_s, r1.xy).xyz;
  if (r2.y == 0) {
    r3.xyz = float3(0,0,0);
  }
  r1.x = cmp(r2.x < 1);
  r0.xyz = sceneTexture.Load(r0.xyz).xyz;
  r0.xyz = float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) * r0.xyz;
  r1.z = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.xyz = sceneLookup.Sample(heatLookupSampler_s, r1.zw).xyz;
  if (r1.x == 0) {
    r0.xyz = float3(0,0,0);
  }
  r1.xyz = r3.xyz + -r0.xyz;
  r0.xyz = r2.xxx * r1.xyz + r0.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  o0.w = 1;
  return;
}