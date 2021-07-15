// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:36 2021

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
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> glossMap : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 0;
  r1.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.z = v1.x * r1.w;
  o0.xyzw = r0.wwwz;
  r0.w = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.w = glossRange.y + -glossRange.x;
  r0.w = r0.w * r1.w + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r2.zw = float2(0,0);
  r2.xy = (uint2)v0.xy;
  r1.w = resolvedNormal.Load(r2.xyz).z;
  r2.xy = (int2)r2.xy & int2(1,1);
  r2.x = cmp((int)r2.y == (int)r2.x);
  r2.y = cmp(r1.w >= 0.5);
  r1.w = cmp(0 < r1.w);
  r2.y = r2.y ? 0.5 : 0.00146627566;
  r3.y = r0.w * 0.49755621 + r2.y;
  r3.x = 0.5;
  r2.yz = r1.ww ? r3.xy : 0;
  r0.xy = r2.yz * r0.zz;
  o1.xyzw = r0.xxyz;
  r3.y = r1.x + -r1.z;
  r0.x = r3.y * 0.5 + r1.z;
  r3.z = r1.y + -r0.x;
  r3.x = r3.z * 0.5 + r0.x;
  r0.xy = r2.xx ? r3.xy : r3.xz;
  r1.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r1.zw = float2(0,1);
  o2.xyzw = r1.xyzw * r0.zzzz;
  return;
}