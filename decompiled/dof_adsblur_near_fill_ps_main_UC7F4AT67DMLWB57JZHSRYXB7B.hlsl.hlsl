// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:21 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float4 v1 : TEXCOORD1,
  nointerpolation float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -v1.y;
  r0.yw = -v2.zy;
  r0.xy = v0.xy + r0.xy;
  r1.x = codeTexture0.Sample(bilinearClamp_s, r0.xy).w;
  r0.z = v1.z;
  r0.xy = v0.xy + r0.zw;
  r1.y = codeTexture0.Sample(bilinearClamp_s, r0.xy).w;
  r0.x = v1.y;
  r0.yw = v2.zy;
  r0.xy = v0.xy + r0.xy;
  r1.z = codeTexture0.Sample(bilinearClamp_s, r0.xy).w;
  r0.z = -v1.z;
  r0.xy = v0.xy + r0.zw;
  r1.w = codeTexture0.Sample(bilinearClamp_s, r0.xy).w;
  r0.x = dot(r1.xyzw, float4(0.121212125,0.121212125,0.121212125,0.121212125));
  r1.y = -v2.y;
  r1.xz = v1.xy;
  r0.yz = v0.xy + r1.xy;
  r2.x = codeTexture0.Sample(bilinearClamp_s, r0.yz).w;
  r1.yw = v2.yx;
  r0.yz = v0.xy + r1.zw;
  r2.y = codeTexture0.Sample(bilinearClamp_s, r0.yz).w;
  r1.xz = -v1.xy;
  r0.yz = v0.xy + r1.xy;
  r2.z = codeTexture0.Sample(bilinearClamp_s, r0.yz).w;
  r1.w = -v2.x;
  r0.yz = v0.xy + r1.zw;
  r2.w = codeTexture0.Sample(bilinearClamp_s, r0.yz).w;
  r0.y = dot(r2.xyzw, float4(0.121212125,0.121212125,0.121212125,0.121212125));
  r1.xyzw = codeTexture0.Sample(bilinearClamp_s, v0.xy).xyzw;
  r0.y = r1.w * 0.0303030312 + r0.y;
  r0.x = r0.y + r0.x;
  r0.x = max(r0.x, r1.w);
  r0.x = r0.x * 2 + -r1.w;
  r0.y = r1.x + r1.y;
  r0.y = r0.y + r1.z;
  r0.y = r0.y + r1.w;
  o0.xyz = r1.xyz;
  r0.y = cmp(0 < r0.y);
  o0.w = r0.y ? r0.x : 0;
  return;
}