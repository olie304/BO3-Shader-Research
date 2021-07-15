// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:22 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float3 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = float4(0.000883883447,-0.0015713484,-0.00187499996,0) + v1.xyxy;
  r1.xyzw = codeTexture0.Sample(bilinearClamp_s, r0.xy).xyzw;
  r0.xyzw = codeTexture0.Sample(bilinearClamp_s, r0.zw).xyzw;
  r2.xyzw = float4(-0.000883883447,-0.0015713484,0,-0.00333333341) + v1.xyxy;
  r3.xyzw = codeTexture0.Sample(bilinearClamp_s, r2.zw).xyzw;
  r2.xyzw = codeTexture0.Sample(bilinearClamp_s, r2.xy).xyzw;
  r4.xyzw = codeTexture0.Sample(bilinearClamp_s, v1.xy).xyzw;
  r2.w = r4.w * r2.w;
  r2.xyz = r2.xyz * r2.www;
  r2.w = r4.w * r4.w + r2.w;
  r2.w = r3.w * r4.w + r2.w;
  r2.w = r1.w * r4.w + r2.w;
  r2.w = r0.w * r4.w + r2.w;
  r5.x = r4.w * r4.w;
  r2.xyz = r4.xyz * r5.xxx + r2.xyz;
  r3.w = r4.w * r3.w;
  r2.xyz = r3.xyz * r3.www + r2.xyz;
  r1.w = r4.w * r1.w;
  r1.xyz = r1.xyz * r1.www + r2.xyz;
  r0.w = r4.w * r0.w;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r1.xyzw = float4(0.00187499996,0,-0.000883883447,0.0015713484) + v1.xyxy;
  r3.xyzw = codeTexture0.Sample(bilinearClamp_s, r1.xy).xyzw;
  r1.xyzw = codeTexture0.Sample(bilinearClamp_s, r1.zw).xyzw;
  r0.w = r3.w * r4.w;
  r0.xyz = r3.xyz * r0.www + r0.xyz;
  r0.w = r3.w * r4.w + r2.w;
  r0.w = r1.w * r4.w + r0.w;
  r1.w = r1.w * r4.w;
  r0.xyz = r1.xyz * r1.www + r0.xyz;
  r1.xyzw = float4(0,0.00333333341,0.000883883447,0.0015713484) + v1.xyxy;
  r2.xyzw = codeTexture0.Sample(bilinearClamp_s, r1.xy).xyzw;
  r1.xyzw = codeTexture0.Sample(bilinearClamp_s, r1.zw).xyzw;
  r3.x = r2.w * r4.w;
  r0.xyz = r2.xyz * r3.xxx + r0.xyz;
  r0.w = r2.w * r4.w + r0.w;
  r0.w = r1.w * r4.w + r0.w;
  r1.w = r1.w * r4.w;
  r0.xyz = r1.xyz * r1.www + r0.xyz;
  r1.xyz = r0.xyz / r0.www;
  r0.w = cmp(0 < r0.w);
  r0.xyz = r0.www ? r1.xyz : r0.xyz;
  o0.xyz = min(r4.xyz, r0.xyz);
  return;
}