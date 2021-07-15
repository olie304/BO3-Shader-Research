// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:46 2021

SamplerState ySampler_s : register(s1);
SamplerState cbcrSampler_s : register(s2);
Texture2D<float4> yTexture : register(t0);
Texture2D<float4> cbcrTexture : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = yTexture.Sample(ySampler_s, w1.xy).x;
  r0.x = -0.0625 + r0.x;
  r1.xy = cbcrTexture.Sample(cbcrSampler_s, w1.xy).xy;
  r0.yz = float2(-0.5,-0.5) + r1.xy;
  r1.x = dot(float2(1.16439998,1.79270005), r0.xz);
  r1.y = dot(float3(1.16439998,-0.213300005,-0.532899976), r0.xyz);
  r1.z = dot(float2(1.16439998,2.11240005), r0.xy);
  r0.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r1.xyz;
  r0.xyz = float3(0.947867334,0.947867334,0.947867334) * r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(2.4000001,2.4000001,2.4000001) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r2.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r1.xyz);
  r1.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r1.xyz;
  r0.xyz = r2.xyz ? r1.xyz : r0.xyz;
  r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = -0.00100000005 + r0.w;
  r0.w = saturate(10.1010103 * r0.w);
  r1.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r1.x * r0.w;
  r0.w = v1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}