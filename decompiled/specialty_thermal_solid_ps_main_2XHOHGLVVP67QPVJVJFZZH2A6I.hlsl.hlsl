// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:56 2021

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
SamplerState normalSampler_s : register(s3);
SamplerState thermalHeatmapSampler_s : register(s5);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> normalMap : register(t22);
Texture2D<float4> thermalHeatmap : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = colorMap.Sample(colorSampler_s, w1.xy).w;
  r0.x = v1.x * r0.x;
  r0.x = cmp(r0.x < 0.0500000007);
  if (r0.x != 0) discard;
  r0.xy = normalMap.Sample(normalSampler_s, w1.xy).xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.xy = baseNormalHeight * r0.xy + float2(0.5,0.5);
  r0.xy = r0.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r0.z = sqrt(r0.z);
  r0.w = v7.x ? 1 : -1;
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v3.xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.www;
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v4.xyz * r1.www;
  r2.xyz = r2.xyz * r0.www;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v5.xyz * r1.www;
  r3.xyz = r3.xyz * r0.www;
  r3.xyz = r3.xyz * r0.yyy;
  r0.xyw = r2.xyz * r0.xxx + r3.xyz;
  r0.xyz = r1.xyz * r0.zzz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.x = dot(float3(1,1,1), r0.xyz);
  r0.x = r0.x * 0.25 + 1;
  r0.y = thermalHeatmap.Sample(thermalHeatmapSampler_s, w1.xy).x;
  o0.x = r0.x * r0.y;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) o0.y, r0.x, l(128), t0.xxxx
r0.y = colorSampler[]..swiz;
  o0.zw = float2(0,1);
  return;
}