// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:26 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = codeTexture0.Sample(bilinearClamp_s, v0.xy).x;
  r0.x = 23.875 * r0.x;
  r0.x = saturate(log2(r0.x));
  r0.y = cmp(0 < r0.x);
  if (r0.y != 0) {
    r1.xyzw = codeTexture1.SampleLevel(bilinearClamp_s, v0.xy, 0).xyzw;
    r0.x = r1.w * r0.x;
    r0.y = cmp(0 < r0.x);
    r2.xyz = r1.xyz / r1.www;
    r2.xyz = float3(-0.598205984,-0.598205984,-0.598205984) + r2.xyz;
    r2.xyz = float3(13.7545986,13.7545986,13.7545986) * r2.xyz;
    r2.xyz = exp2(r2.xyz);
    r2.xyz = float3(-0.00872999988,-0.00872999988,-0.00872999988) + r2.xyz;
    o0.xyz = r0.yyy ? r2.xyz : r1.xyz;
    o0.w = r0.x;
  } else {
    o0.xyzw = float4(0,0,0,0);
  }
  return;
}