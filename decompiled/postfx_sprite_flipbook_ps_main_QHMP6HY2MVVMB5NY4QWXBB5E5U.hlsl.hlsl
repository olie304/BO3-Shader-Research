// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:24 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float heightScale : packoffset(c10.z);
  float2 sprites : packoffset(c11);
  float2 source : packoffset(c11.z);
  float count : packoffset(c12);
  float seed : packoffset(c12.y);
  float2 scaleMin : packoffset(c12.z);
  float2 scaleMax : packoffset(c13);
  float2 lifeMaxMin : packoffset(c13.z);
  float2 fadeInMaxMin : packoffset(c14);
  float2 fadeOutMaxMin : packoffset(c14.z);
  float2 pauseMaxMin : packoffset(c15);
  float2 stretchMaxMin : packoffset(c15.z);
  float2 slideMaxMin : packoffset(c16);
  float2 heightMaxMin : packoffset(c16.z);
  float2 warpMaxMin : packoffset(c17);
  float2 jitterMaxMin : packoffset(c17.z);
  float2 rotationMaxMin : packoffset(c18);
  float2 flipbookCounts : packoffset(c18.z);
  float flipbookTime : packoffset(c19);
}

cbuffer GenericsCBuffer : register(b3)
{
  float4 scriptVector0 : packoffset(c0);
  float4 scriptVector1 : packoffset(c1);
  float4 scriptVector2 : packoffset(c2);
  float4 scriptVector3 : packoffset(c3);
  float4 scriptVector4 : packoffset(c4);
  float4 scriptVector5 : packoffset(c5);
  float4 scriptVector6 : packoffset(c6);
  float4 scriptVector7 : packoffset(c7);
  float4 weaponParam0 : packoffset(c8);
  float4 weaponParam1 : packoffset(c9);
  float4 weaponParam2 : packoffset(c10);
  float4 weaponParam3 : packoffset(c11);
  float4 weaponParam4 : packoffset(c12);
  float4 weaponParam5 : packoffset(c13);
  float4 weaponParam6 : packoffset(c14);
  float4 weaponParam7 : packoffset(c15);
}

SamplerState trilinearSampler_s : register(s1);
Texture2D<float4> colorMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD3,
  float4 v2 : TEXCOORD2,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 100 * flipbookTime;
  r0.y = w1.x * v2.w + scriptVector7.x;
  r0.z = flipbookCounts.x * flipbookCounts.y;
  r0.x = r0.x * r0.z;
  r0.w = r0.y * r0.x;
  r0.w = cmp(r0.w >= -r0.w);
  r0.w = r0.w ? r0.x : -r0.x;
  r1.x = 1 / r0.w;
  r0.y = r1.x * r0.y;
  r0.y = frac(r0.y);
  r0.y = r0.w * r0.y;
  r0.x = r0.y / r0.x;
  r0.x = r0.x * r0.z;
  r0.x = round(r0.x);
  r0.y = r0.x / flipbookCounts.y;
  r0.z = flipbookCounts.y * r0.x;
  r0.z = cmp(r0.z >= -r0.z);
  r0.z = r0.z ? flipbookCounts.y : -flipbookCounts.y;
  r0.w = 1 / r0.z;
  r0.x = r0.x * r0.w;
  r0.x = frac(r0.x);
  r0.x = r0.z * r0.x;
  r0.x = trunc(r0.x);
  r0.x = v1.x + r0.x;
  r1.x = r0.x / flipbookCounts.y;
  r0.x = trunc(r0.y);
  r0.x = -v1.y + r0.x;
  r1.y = r0.x / flipbookCounts.x;
  r0.xyzw = colorMap.Sample(trilinearSampler_s, r1.xy).xyzw;
  r0.w = scriptVector0.x * r0.w;
  r1.x = cmp(0 >= r0.w);
  if (r1.x != 0) discard;
  r0.w = v2.z * r0.w;
  o0.w = 0.0333333351 * r0.w;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  return;
}