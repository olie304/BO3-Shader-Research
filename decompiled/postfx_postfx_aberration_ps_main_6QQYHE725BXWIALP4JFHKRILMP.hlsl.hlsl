// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:13 2021

SamplerState samp0_s : register(s0);
Texture2D<float4> colorMapSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v1.xy;
  r0.zw = r0.xy * r0.xy;
  r0.z = r0.z + r0.w;
  r0.w = sqrt(r0.z);
  r1.xyz = r0.www * float3(-0.159999996,-0.159999996,-0.159999996) + float3(0.0914999992,0,-0.0914999992);
  r1.xyz = r0.zzz * r1.xyz + float3(1,1,1);
  r2.xyz = r1.xyz * r0.xxx + float3(0.5,0.5,0.5);
  r0.xyz = r1.xyz * r0.yyy + float3(0.5,0.5,0.5);
  r1.x = r2.z;
  r1.y = r0.z;
  r0.z = colorMapSampler.Sample(samp0_s, r1.xy).z;
  o0.z = r0.z;
  r2.w = r0.x;
  r0.x = colorMapSampler.Sample(samp0_s, r2.xw).x;
  r0.w = r2.y;
  r0.y = colorMapSampler.Sample(samp0_s, r0.wy).y;
  o0.xy = r0.xy;
  o0.w = 1;
  return;
}