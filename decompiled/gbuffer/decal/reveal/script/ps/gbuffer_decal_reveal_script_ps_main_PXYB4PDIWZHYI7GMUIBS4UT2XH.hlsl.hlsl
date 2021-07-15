// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:16 2021

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
  float baseNormalHeight : packoffset(c10);
  float2 glossRange : packoffset(c10.y);
  float scriptProxy : packoffset(c10.w);
}

SamplerState colorSampler_s : register(s1);
SamplerState normalSampler_s : register(s2);
SamplerState revealSampler_s : register(s3);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> resolvedNormal : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> revealMap : register(t10);
Texture2D<float4> transitionDiffuse : register(t11);
Texture2D<float4> transitionNormal : register(t12);


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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t0.xxxx
r0.x = colorSampler[]..swiz;
  r0.x = saturate(r0.x * 0.998000026 + 0.00100000005);
  r0.y = log2(r0.x);
  r0.x = 1 + -r0.x;
  r0.z = saturate(alphaRevealParms.y);
  r0.y = r0.z * r0.y;
  r0.y = exp2(r0.y);
  r1.x = -r0.y;
  r0.y = log2(r0.x);
  r0.y = r0.z * r0.y;
  r1.y = exp2(r0.y);
  r0.xy = saturate(alphaRevealParms.xx * r1.xy + r0.xx);
  r0.z = revealMap.Sample(revealSampler_s, w1.xy).x;
  r0.z = r0.z + -r0.x;
  r0.x = r0.y + -r0.x;
  r0.x = saturate(r0.z / r0.x);
  r0.y = cmp(r0.x >= 0.99000001);
  r0.y = r0.y ? 1.000000 : 0;
  r1.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r2.xyz = transitionDiffuse.Sample(colorSampler_s, w1.xy).xyz;
  r1.xyz = -r2.xyz + r1.xyz;
  r1.xyz = r0.yyy * r1.xyz + r2.xyz;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = r0.x;
  r0.z = dot(v5.xyz, v5.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = v5.xyz * r0.zzz;
  r0.z = v6.x ? 1 : -1;
  r1.xyz = r1.xyz * r0.zzz;
  r2.xyz = transitionNormal.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = r2.z * r2.z;
  r0.w = 0.333333343 * r0.w;
  r3.xyz = r2.yyy * r1.xyz;
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = v4.xyz * r1.www;
  r4.xyz = r4.xyz * r0.zzz;
  r3.xyz = r4.xyz * r2.xxx + r3.xyz;
  r1.w = dot(r2.xy, r2.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r2.x = dot(v3.xyz, v3.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v3.xyz * r2.xxx;
  r2.xyz = r2.xyz * r0.zzz;
  r3.xyz = r2.xyz * r1.www + r3.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r5.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r5.xyz = float3(-0.5,-0.5,-0) + r5.xyz;
  r5.xyz = baseNormalHeight * r5.xyz + float3(0.5,0.5,0);
  r5.xy = r5.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = r5.z * r5.z;
  r0.z = 0.333333343 * r0.z;
  r0.zw = min(float2(1,1), r0.zw);
  r1.xyz = r5.yyy * r1.xyz;
  r1.xyz = r4.xyz * r5.xxx + r1.xyz;
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r1.xyz = r2.xyz * r1.www + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www + -r3.xyz;
  r1.xyz = r0.yyy * r1.xyz + r3.xyz;
  r2.xy = (uint2)v0.xy;
  r2.zw = float2(0,0);
  r2.xy = resolvedNormal.Load(r2.xyz).zw;
  r1.w = r2.y * 3 + 0.5;
  r1.w = (uint)r1.w;
  r3.xyzw = (int4)r1.wwww & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r1.w = (int)r3.w ^ (int)r3.z;
  r3.z = r1.w ? -0.577350259 : 0.577350259;
  r1.w = dot(r1.xyz, r3.xyz);
  r1.w = 1 + abs(r1.w);
  r1.w = rsqrt(r1.w);
  r2.yzw = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r3.xy = float2(-1.22474492,1.22474492) * r3.xz;
  r3.y = dot(r1.xz, r3.xy);
  r3.x = dot(r1.xyz, r2.yzw);
  r1.xy = r3.xy * r1.ww;
  r1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r1.w = saturate(0.0588235296 * glossRange.y);
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r0.zw = r1.ww + r0.zw;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.z = log2(r0.z);
  r0.z = -0.0588235296 * r0.z;
  r0.zw = max(float2(0,0), r0.zw);
  r0.z = r0.z + -r0.w;
  r0.y = r0.y * r0.z + r0.w;
  r0.z = cmp(r2.x >= 0.5);
  r0.w = cmp(0 < r2.x);
  r0.z = r0.z ? 0.5 : 0.00146627566;
  r1.z = r0.y * 0.49755621 + r0.z;
  r0.yzw = r0.www ? r1.xyz : 0;
  o1.xyz = r0.yzw * r0.xxx;
  o1.w = r0.x;
  o2.xyzw = float4(0.0399999991,0.5,1,1) * r0.xxxx;
  return;
}