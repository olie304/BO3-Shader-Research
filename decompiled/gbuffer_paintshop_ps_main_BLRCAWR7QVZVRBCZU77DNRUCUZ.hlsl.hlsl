// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:31:30 2021

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
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> resolvedNormal : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> specColorMap : register(t9);
Texture2D<float4> normalMap : register(t10);
Texture2D<float4> glossMap : register(t11);


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
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 1;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v2.x, l(4), t4.xxxx
r1.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.yzw, r1.x, l(224), t0.xxyz
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
r1.w = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyz, r1.x, l(240), t0.xyzx
r2.x = colorSampler[]..swiz;
r2.y = colorSampler[]..swiz;
r2.z = colorSampler[]..swiz;
  r3.xy = w1.xy;
  r3.z = 1;
  r1.x = dot(r1.yzw, r3.xyz);
  r1.y = dot(r2.xyz, r3.xyz);
  r2.xyzw = colorMap.Sample(colorSampler_s, r1.xy).xyzw;
  r0.xyz = r2.xyz;
  o0.xyzw = r2.wwww * r0.xyzw;
  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r0.w = v6.x ? 1 : -1;
  r0.xyz = r0.xyz * r0.www;
  r1.z = dot(v5.xyz, v5.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = v5.xyz * r1.zzz;
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = normalMap.Sample(normalSampler_s, r1.xy).xyzw;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r1.z = r3.w * r2.w;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r3.z * r3.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.xyz = r3.yyy * r2.xyz;
  r0.xyz = r0.xyz * r3.xxx + r2.xyz;
  r2.x = dot(r3.xy, r3.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r2.y = dot(v3.xyz, v3.xyz);
  r2.y = rsqrt(r2.y);
  r3.xyz = v3.xyz * r2.yyy;
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.xyz * r2.xxx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.zw = float2(0,0);
  r3.xy = (uint2)v0.xy;
  r2.xy = resolvedNormal.Load(r3.xyz).zw;
  r3.xy = (int2)r3.xy & int2(1,1);
  r0.w = cmp((int)r3.y == (int)r3.x);
  r2.y = r2.y * 3 + 0.5;
  r2.y = (uint)r2.y;
  r3.xyzw = (int4)r2.yyyy & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r2.y = (int)r3.w ^ (int)r3.z;
  r3.z = r2.y ? -0.577350259 : 0.577350259;
  r2.y = dot(r0.xyz, r3.xyz);
  r2.y = 1 + abs(r2.y);
  r2.y = rsqrt(r2.y);
  r4.xyz = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r3.xy = float2(-1.22474492,1.22474492) * r3.xz;
  r3.y = dot(r0.xz, r3.xy);
  r3.x = dot(r0.xyz, r4.xyz);
  r0.xy = r3.xy * r2.yy;
  r0.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r2.yz = glossMap.Sample(specColorSampler_s, r1.xy).xw;
  r3.xyzw = specColorMap.Sample(specColorSampler_s, r1.xy).xyzw;
  r1.x = glossRange.y + -glossRange.x;
  r1.x = r2.y * r1.x + glossRange.x;
  r1.y = r2.z * r2.w;
  r2.y = r3.w * r2.w;
  r1.x = saturate(0.0588235296 * r1.x);
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.w + r1.x;
  r1.x = log2(r1.x);
  r1.x = -0.0588235296 * r1.x;
  r1.x = max(0, r1.x);
  r1.w = cmp(r2.x >= 0.5);
  r2.x = cmp(0 < r2.x);
  r1.w = r1.w ? 0.5 : 0.00146627566;
  r0.z = r1.x * 0.49755621 + r1.w;
  r0.xyz = r2.xxx ? r0.xyz : 0;
  o1.xyz = r0.xyz * r1.zzy;
  o1.w = max(r1.z, r1.y);
  r0.y = r3.x + -r3.z;
  r1.x = r0.y * 0.5 + r3.z;
  r0.z = r3.y + -r1.x;
  r0.x = r0.z * 0.5 + r1.x;
  r0.xy = r0.ww ? r0.xy : r0.xz;
  r0.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.zw = float2(1,1);
  o2.xyzw = r0.xyzw * r2.yyyy;
  return;
}