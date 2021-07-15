// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:13 2021

SamplerState samp0_s : register(s0);
Texture2D<float4> codeTexture0 : register(t1);
Texture2D<float4> codeTexture1 : register(t2);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = float4(0,-0.00138888892,0,0.00138888892) + v1.xyxy;
  r1.xyzw = codeTexture1.Sample(samp0_s, r0.zw).xyzw;
  r0.xyzw = codeTexture1.Sample(samp0_s, r0.xy).xyzw;
  r2.x = dot(r1.xyz, float3(1,1,1));
  r1.xyzw = r0.xyzw + r1.xyzw;
  r0.x = dot(r0.xyz, float3(1,1,1));
  r3.xyzw = float4(-0.000781250012,0,0.000781250012,0) + v1.xyxy;
  r4.xyzw = codeTexture1.Sample(samp0_s, r3.xy).xyzw;
  r3.xyzw = codeTexture1.Sample(samp0_s, r3.zw).xyzw;
  r0.y = dot(r4.xyz, float3(1,1,1));
  r1.xyzw = r4.xyzw + r1.xyzw;
  r1.xyzw = r1.xyzw + r3.xyzw;
  r0.z = dot(r3.xyz, float3(1,1,1));
  r0.y = max(r2.x, r0.y);
  r0.y = max(r0.y, r0.z);
  r0.x = max(r0.y, r0.x);
  r2.xyzw = codeTexture1.Sample(samp0_s, v1.xy).xyzw;
  r0.y = dot(r2.xyz, float3(1,1,1));
  r0.z = cmp(0 != r2.w);
  r0.y = cmp(r0.y == 0.000000);
  r0.x = r0.y ? r0.x : 0;
  r0.x = cmp(0 < r0.x);
  r2.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
  r1.xyzw = float4(0.0250000004,0.0250000004,0.0250000004,0.0250000004) * r1.xyzw;
  r3.xyzw = r0.xxxx ? r2.xyzw : 0;
  r0.x = dot(r2.xyz, float3(1,1,1));
  r0.x = cmp(r0.x == 0.000000);
  r1.xyzw = r0.xxxx ? float4(0,0.100000001,0.100000001,0.100000001) : r1.xyzw;
  r0.xyzw = r0.zzzz ? r1.xyzw : r3.xyzw;
  r1.xyzw = codeTexture0.Sample(samp0_s, v1.xy).xyzw;
  r0.xyzw = r1.xyzw * float4(3.05175781e-05,3.05175781e-05,3.05175781e-05,1) + r0.xyzw;
  o0.xyzw = float4(32768,32768,32768,1) * r0.xyzw;
  return;
}