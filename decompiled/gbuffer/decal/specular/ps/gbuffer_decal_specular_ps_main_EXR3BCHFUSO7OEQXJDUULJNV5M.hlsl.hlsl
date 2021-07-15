// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:24 2021

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v0.xy;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r1.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.yz = v1.zw * r1.zw;
  r2.y = r1.x * v1.x + -r0.y;
  r0.y = r2.y * 0.5 + r0.y;
  r2.z = r1.y * v1.y + -r0.y;
  r2.x = r2.z * 0.5 + r0.y;
  r0.xy = r0.xx ? r2.xy : r2.xz;
  r1.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r1.zw = float2(0,1);
  o2.xyzw = r1.xyzw * r0.zzzz;
  return;
}