// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:54 2021

SamplerState volumeLightSamplerState_s : register(s1);
Texture2D<float4> volumeLightTexture : register(t0);
Texture2D<float4> blendTexture : register(t5);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r0.xyz = blendTexture.Load(r0.xyz).xyz;
  volumeLightTexture.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
  r1.xy = uiDest.xy;
  r1.xy = (uint2)r1.xy;
  r1.xy = rcp(r1.xy);
  r1.zw = float2(0.5,0.5) * v0.xy;
  r1.zw = floor(r1.zw);
  r1.zw = float2(0.5,0.5) + r1.zw;
  r1.xy = r1.zw * r1.xy;
  r2.xyzw = volumeLightTexture.Gather(volumeLightSamplerState_s, r1.xy).xyzw;
  r2.x = dot(float4(1,1,1,1), r2.xyzw);
  r3.xyzw = volumeLightTexture.Gather(volumeLightSamplerState_s, r1.xy).xyzw;
  r1.xyzw = volumeLightTexture.Gather(volumeLightSamplerState_s, r1.xy).xyzw;
  r2.z = dot(float4(1,1,1,1), r1.xyzw);
  r2.y = dot(float4(1,1,1,1), r3.xyzw);
  o0.xyz = r2.xyz * float3(0.25,0.25,0.25) + r0.xyz;
  o0.w = 0;
  return;
}