// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:28 2021

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
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
}

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState specColorSampler_s : register(s3);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> revealMap : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> tintMask : register(t9);
Texture2D<float4> glossMap : register(t10);


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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = tintMask.Sample(colorSampler_s, w1.xy).x;
  r0.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r0.xyz = r0.xxx * r0.yzw + float3(1,1,1);
  r1.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = saturate(v1.x * 0.998000026 + 0.00100000005);
  r1.x = log2(r0.w);
  r0.w = 1 + -r0.w;
  r1.y = saturate(alphaRevealRamp);
  r1.x = r1.y * r1.x;
  r1.x = exp2(r1.x);
  r2.x = -r1.x;
  r1.x = log2(r0.w);
  r1.x = r1.y * r1.x;
  r2.y = exp2(r1.x);
  r1.xy = saturate(alphaRevealSoftEdge * r2.xy + r0.ww);
  r1.zw = revealScale.xy * w1.xy;
  r0.w = revealMap.Sample(revealSampler_s, r1.zw).x;
  r0.w = r0.w + -r1.x;
  r1.x = r1.y + -r1.x;
  r0.w = saturate(r0.w / r1.x);
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  r0.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r0.y = glossRange.y + -glossRange.x;
  r0.x = r0.x * r0.y + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r0.y = resolvedNormal.Load(r1.xyz).z;
  r0.z = cmp(r0.y >= 0.5);
  r0.y = cmp(0 < r0.y);
  r0.z = r0.z ? 0.5 : 0.00146627566;
  r1.z = r0.x * 0.49755621 + r0.z;
  r1.xy = float2(0.5,0.5);
  r0.xyz = r0.yyy ? r1.xyz : 0;
  o1.xyz = r0.xyz * r0.www;
  o1.w = r0.w;
  o2.xyzw = float4(0.0399999991,0.5,0,1) * r0.wwww;
  return;
}