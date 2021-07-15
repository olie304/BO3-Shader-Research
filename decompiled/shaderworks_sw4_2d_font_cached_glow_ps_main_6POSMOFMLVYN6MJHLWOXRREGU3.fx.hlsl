// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:35 2021

SamplerState fontCache_sampler_s : register(s1);
Texture2D<float4> fontCache : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = fontCache.Sample(fontCache_sampler_s, v2.xy).w;
  r0.x = r0.x * 2 + -1;
  r1.x = ddx_coarse(r0.x);
  r1.y = ddy_coarse(r0.x);
  r0.y = dot(r1.xy, r1.xy);
  r0.y = sqrt(r0.y);
  r0.z = -0.5 + -r0.y;
  r0.w = r0.y + -r0.z;
  r0.z = r0.x + -r0.z;
  r0.x = r0.x + r0.y;
  r0.y = r0.y + r0.y;
  r0.y = 1 / r0.y;
  r0.x = saturate(r0.x * r0.y);
  r0.y = 1 / r0.w;
  r0.y = saturate(r0.z * r0.y);
  r0.z = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = r0.z * r0.y;
  r0.y = min(1, r0.y);
  r0.z = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = -r0.z * r0.x + 1;
  r0.w = r0.x * r0.y;
  r0.xyz = float3(1,1,1);
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}