// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:45 2021

SamplerState biLinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float3 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r1.x = dot(r0.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r1.x = 1 + r1.x;
  r1.x = (int)-r1.x + 0x7ef311c2;
  r0.w = 1;
  r0.xyzw = r1.xxxx * r0.xyzw;
  r1.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy).xyz;
  r2.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.x = 1 + r2.x;
  r2.x = (int)-r2.x + 0x7ef311c2;
  r1.w = 1;
  r0.xyzw = r2.xxxx * r1.xyzw + r0.xyzw;
  r1.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r2.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.x = 1 + r2.x;
  r2.x = (int)-r2.x + 0x7ef311c2;
  r1.w = 1;
  r0.xyzw = r2.xxxx * r1.xyzw + r0.xyzw;
  r1.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r2.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.x = 1 + r2.x;
  r2.x = (int)-r2.x + 0x7ef311c2;
  r1.w = 1;
  r0.xyzw = r2.xxxx * r1.xyzw + r0.xyzw;
  r1.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r2.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.x = 1 + r2.x;
  r2.x = (int)-r2.x + 0x7ef311c2;
  r1.w = 1;
  r0.xyzw = r2.xxxx * r1.xyzw + r0.xyzw;
  r0.xyzw = float4(0.0714285746,0.0714285746,0.0714285746,0.0714285746) * r0.xyzw;
  r1.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r2.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.x = 1 + r2.x;
  r2.x = (int)-r2.x + 0x7ef311c2;
  r1.w = 1;
  r1.xyzw = r2.xxxx * r1.xyzw;
  r2.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r3.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r3.x = 1 + r3.x;
  r3.x = (int)-r3.x + 0x7ef311c2;
  r2.w = 1;
  r1.xyzw = r3.xxxx * r2.xyzw + r1.xyzw;
  r2.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r3.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r3.x = 1 + r3.x;
  r3.x = (int)-r3.x + 0x7ef311c2;
  r2.w = 1;
  r1.xyzw = r3.xxxx * r2.xyzw + r1.xyzw;
  r2.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r3.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r3.x = 1 + r3.x;
  r3.x = (int)-r3.x + 0x7ef311c2;
  r2.w = 1;
  r1.xyzw = r3.xxxx * r2.xyzw + r1.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0357142873,0.0357142873,0.0357142873,0.0357142873) + r0.xyzw;
  r1.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r2.x = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.x = 1 + r2.x;
  r2.x = (int)-r2.x + 0x7ef311c2;
  r1.w = 1;
  r1.xyzw = r2.xxxx * r1.xyzw;
  r2.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r3.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r3.x = 1 + r3.x;
  r3.x = (int)-r3.x + 0x7ef311c2;
  r2.w = 1;
  r1.xyzw = r3.xxxx * r2.xyzw + r1.xyzw;
  r2.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r3.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r3.x = 1 + r3.x;
  r3.x = (int)-r3.x + 0x7ef311c2;
  r2.w = 1;
  r1.xyzw = r3.xxxx * r2.xyzw + r1.xyzw;
  r2.xyz = codeTexture0.Sample(biLinearClamp_s, v0.xy, int2(0, 0)).xyz;
  r3.x = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r3.x = 1 + r3.x;
  r3.x = (int)-r3.x + 0x7ef311c2;
  r2.w = 1;
  r1.xyzw = r3.xxxx * r2.xyzw + r1.xyzw;
  r0.xyzw = r1.xyzw * float4(0.125,0.125,0.125,0.125) + r0.xyzw;
  r0.w = rcp(r0.w);
  o0.xyz = r0.xyz * r0.www;
  return;
}