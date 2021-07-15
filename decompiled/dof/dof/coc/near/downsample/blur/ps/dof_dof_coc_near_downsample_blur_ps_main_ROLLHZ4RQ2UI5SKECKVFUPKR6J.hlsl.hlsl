// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:24 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation float2 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xw = v0.xy;
  r1.xyzw = v1.xyxy * float4(-1,-1,1,1) + v0.xyxy;
  r0.yz = r1.yx;
  r0.x = codeTexture0.Sample(bilinearClamp_s, r0.xy).x;
  r0.y = codeTexture0.Sample(bilinearClamp_s, r0.zw).x;
  r0.x = 0.1171875 * r0.x;
  r0.z = codeTexture0.Sample(bilinearClamp_s, r1.xy).x;
  r0.x = r0.z * 0.03515625 + r0.x;
  r0.z = codeTexture0.Sample(bilinearClamp_s, r1.zy).x;
  r0.x = r0.z * 0.03515625 + r0.x;
  r0.x = r0.y * 0.1171875 + r0.x;
  r0.y = codeTexture0.Sample(bilinearClamp_s, v0.xy).x;
  r0.x = r0.y * 0.390625 + r0.x;
  r2.xw = r1.zw;
  r2.yz = v0.yx;
  r0.y = codeTexture0.Sample(bilinearClamp_s, r2.xy).x;
  r0.z = codeTexture0.Sample(bilinearClamp_s, r2.zw).x;
  r0.x = r0.y * 0.1171875 + r0.x;
  r0.y = codeTexture0.Sample(bilinearClamp_s, r1.xw).x;
  r0.w = codeTexture0.Sample(bilinearClamp_s, r1.zw).x;
  r0.x = r0.y * 0.03515625 + r0.x;
  r0.x = r0.z * 0.1171875 + r0.x;
  r0.x = r0.w * 0.03515625 + r0.x;
  r1.xyzw = codeTexture0.Gather(bilinearClamp_s, v0.xy).xyzw;
  r0.yz = max(r1.xz, r1.yw);
  r0.y = max(r0.y, r0.z);
  r0.x = max(r0.y, r0.x);
  o0.x = saturate(r0.x * 2 + -r0.y);
  return;
}