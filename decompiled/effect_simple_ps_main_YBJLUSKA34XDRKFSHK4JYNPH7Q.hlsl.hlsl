// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:13 2021

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
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  uint zFeatherComputeSprites : packoffset(c11.z);
  float desaturationAmount : packoffset(c11.w);
  float4 levelsControls : packoffset(c12);
  bool useOldHDRScale : packoffset(c13);
  float translucentShadowOpacity : packoffset(c13.y);
}

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  nointerpolation float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float2 v6 : TEXCOORD4,
  float2 w6 : TEXCOORD5,
  uint v7 : TEXCOORD6,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = ddx_coarse(v2.xy);
  r0.zw = ddy_coarse(v2.xy);
  r1.x = colorMap.SampleGrad(colorSampler_s, v2.xy, r0.x, r0.z).w;
  r1.zw = cmp(v4.xy != float2(0,1));
  if (r1.z != 0) {
    r0.x = colorMap.SampleGrad(colorSampler_s, v2.zw, r0.x, r0.z).w;
    r0.x = r0.x + -r1.x;
    r1.x = v4.x * r0.x + r1.x;
  }
  r0.x = v1.w + r1.x;
  r0.x = saturate(r0.x * v4.y + -v4.y);
  r0.y = 1;
  r1.y = v1.w;
  r0.xy = r1.ww ? r0.xy : r1.xy;
  r0.x = r0.x * r0.y;
  r0.y = useOldHDRScale * r0.x;
  r0.y = cmp(r0.y < 0.00392156886);
  if (r0.y != 0) discard;
  r0.x = -r0.x * useOldHDRScale + 1;
  o0.xyz = saturate(r0.xxx);
  o0.w = 1;
  return;
}