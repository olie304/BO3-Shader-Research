// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:31 2021

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
  float3 colorTint : packoffset(c10);
  float alphaRevealSoftEdge : packoffset(c10.w);
  float alphaRevealRamp : packoffset(c11);
}

SamplerState colorSampler_s : register(s1);
SamplerState revealSampler_s : register(s2);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> revealMap : register(t6);


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

  r0.x = revealMap.Sample(revealSampler_s, v2.xy).x;
  r0.y = saturate(v1.w * 0.998000026 + 0.00100000005);
  r0.z = 1 + -r0.y;
  r0.w = saturate(alphaRevealRamp);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r1.x = -r0.y;
  r0.y = log2(r0.z);
  r0.y = r0.w * r0.y;
  r1.y = exp2(r0.y);
  r0.yz = saturate(alphaRevealSoftEdge * r1.xy + r0.zz);
  r0.x = r0.x + -r0.y;
  r0.y = r0.z + -r0.y;
  r0.x = saturate(r0.x / r0.y);
  r0.y = cmp(r0.x < 0.5);
  if (r0.y != 0) discard;
  r1.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.yzw = log2(abs(r1.xyz));
  r0.yzw = float3(0.454545468,0.454545468,0.454545468) * r0.yzw;
  r1.xyz = exp2(r0.yzw);
  r1.xyzw = v1.xyzw * r1.xyzw;
  r0.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r0.yzw = r1.www * r0.yzw + float3(1,1,1);
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = r0.x;
  return;
}