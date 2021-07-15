// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:14 2021

cbuffer _Globals : register(b0)
{
  float4 flagParams : packoffset(c0);
  float4 colorObjMin : packoffset(c1);
  float4 colorObjMax : packoffset(c2);
  float colorObjMinBaseBlend : packoffset(c3);
  float colorObjMaxBaseBlend : packoffset(c3.y);
  float2 uvScroll : packoffset(c3.z);
  float4 detailScale : packoffset(c4);
  float4 detailScale1 : packoffset(c5);
  float4 detailScale2 : packoffset(c6);
  float4 detailScale3 : packoffset(c7);
  float4 alphaRevealParms : packoffset(c8);
  float4 colorDetailScale : packoffset(c9);
}

SamplerState samp0_s : register(s0);
Texture2D<float4> colorMapSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD2,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = rsqrt(r0.x);
  r0.x = v2.z * r0.x;
  r0.x = r0.x * -0.5 + v1.z;
  r0.x = 6.28318024 * r0.x;
  r0.x = sin(r0.x);
  r0.x = -r0.x * 0.5 + 0.5;
  r0.yzw = colorObjMax.xyz + -colorObjMin.xyz;
  r0.yzw = r0.xxx * r0.yzw + colorObjMin.xyz;
  r1.xyzw = colorMapSampler.Sample(samp0_s, v1.xy).xyzw;
  r2.x = dot(float3(0.333000004,0.333000004,0.333000004), r1.xyz);
  r2.x = 0.5 + r2.x;
  r0.yzw = r2.xxx * r0.yzw;
  r2.x = colorObjMaxBaseBlend + -colorObjMinBaseBlend;
  r0.x = r0.x * r2.x + colorObjMinBaseBlend;
  r1.xyz = r0.xxx * r1.xyz;
  o0.xyz = r0.yzw * r1.www + r1.xyz;
  o0.w = r1.w;
  return;
}