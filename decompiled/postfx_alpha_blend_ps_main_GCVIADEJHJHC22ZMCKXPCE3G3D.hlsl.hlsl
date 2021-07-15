// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:06 2021

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
  float2 colorFlipRowsCols : packoffset(c10.z);
  float colorFlipTime : packoffset(c11);
  float colorScale : packoffset(c11.y);
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

SamplerState bilinearSampler_s : register(s1);
Texture2D<float4> frameBuffer : register(t0);
Texture2D<float4> colorMap : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0.00100000005 * scriptVector7.y;
  r0.y = colorFlipRowsCols.x * colorFlipRowsCols.y;
  r0.z = colorFlipTime * r0.y;
  r0.w = r0.x * r0.z;
  r0.w = cmp(r0.w >= -r0.w);
  r0.w = r0.w ? r0.z : -r0.z;
  r1.x = 1 / r0.w;
  r0.x = r1.x * r0.x;
  r0.x = frac(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = r0.x / r0.z;
  r0.x = r0.x * r0.y;
  r0.x = round(r0.x);
  r0.y = colorFlipRowsCols.y * r0.x;
  r0.y = cmp(r0.y >= -r0.y);
  r0.y = r0.y ? colorFlipRowsCols.y : -colorFlipRowsCols.y;
  r0.z = 1 / r0.y;
  r0.z = r0.x * r0.z;
  r0.x = r0.x / colorFlipRowsCols.y;
  r0.x = trunc(r0.x);
  r0.x = v1.y + r0.x;
  r1.y = r0.x / colorFlipRowsCols.x;
  r0.x = frac(r0.z);
  r0.x = r0.y * r0.x;
  r0.x = trunc(r0.x);
  r0.x = v1.x + r0.x;
  r1.x = r0.x / colorFlipRowsCols.y;
  r0.x = cmp(0 < colorFlipTime);
  r0.xy = r0.xx ? r1.xy : v1.xy;
  r0.xy = colorScale * r0.xy;
  r0.xyzw = colorMap.Sample(bilinearSampler_s, r0.xy).xyzw;
  r1.xy = saturate(scriptVector0.zx);
  r0.w = r1.y * r0.w;
  r1.yzw = log2(abs(scriptVector1.xyz));
  r1.yzw = float3(2.20000005,2.20000005,2.20000005) * r1.yzw;
  r1.yzw = exp2(r1.yzw);
  r1.yzw = float3(-1,-1,-1) + r1.yzw;
  r1.xyz = r1.xxx * r1.yzw + float3(1,1,1);
  r2.xyzw = frameBuffer.Sample(bilinearSampler_s, v1.xy).xyzw;
  r2.xyz = float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) * r2.xyz;
  o0.w = r2.w;
  r0.xyz = r0.xyz * r1.xyz + -r2.xyz;
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  return;
}