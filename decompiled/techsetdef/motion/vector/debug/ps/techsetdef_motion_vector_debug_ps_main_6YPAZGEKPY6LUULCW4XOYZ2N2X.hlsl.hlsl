// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:14 2021

SamplerState motionVectorDebugSampler_s : register(s1);
Texture2D<float4> aaMotionVectorTexture : register(t0);


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

  r0.xy = aaMotionVectorTexture.Sample(motionVectorDebugSampler_s, v2.xy).xy;
  r0.zw = abs(r0.xy) + abs(r0.xy);
  r0.zw = min(float2(1,1), r0.zw);
  r0.zw = float2(10,10) * r0.zw;
  r1.xy = float2(-0.5,-0.5) + abs(r0.xy);
  r0.xy = cmp(r0.xy >= float2(0,0));
  r1.xy = saturate(r1.xy + r1.xy);
  r0.zw = r1.xy * float2(30,30) + r0.zw;
  r0.xy = r0.xy ? r0.zw : -r0.zw;
  r0.xy = float2(0.0250000004,0.0250000004) * r0.xy;
  r1.xyzw = max(float4(0,0,0,0), r0.xxyy);
  r0.xy = max(float2(0,0), -r0.xy);
  r0.zw = float2(1,0) * r1.xy;
  r0.xzw = r0.xxx * float3(0,0,1) + r0.zww;
  r0.xzw = r1.zwz * float3(0,1,0) + r0.xzw;
  o0.xyz = r0.xzw + r0.yyy;
  o0.w = 1;
  return;
}