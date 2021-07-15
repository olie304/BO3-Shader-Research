// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:14 2021

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
  float detailScaleHeight : packoffset(c12.z);
  float3 crackReveal : packoffset(c13);
  float4 colorTint1 : packoffset(c14);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
SamplerState crackSampler_s : register(s5);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> specColorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);
Texture2D<float4> detailMap : register(t12);
Texture2D<float4> crackMap : register(t14);
Texture2D<float4> crackNormalMap : register(t15);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  nointerpolation uint4 v3 : TEXCOORD4,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.y, r0.x, l(32), t0.xxxx
r0.y = colorSampler[]..swiz;
  r0.y = saturate(r0.y);
  r0.y = r0.y * -v1.y + 1;
  r0.z = saturate(alphaRevealParms.x + r0.y);
  r0.y = saturate(r0.y);
  r0.z = r0.z + -r0.y;
  r0.z = 1 / r0.z;
  r0.w = alphaRevealParms.y + alphaRevealParms.y;
  r1.xy = colorDetailScale.xy * v2.xy;
  r2.xyzw = crackMap.Sample(crackSampler_s, r1.xy).xyzw;
  r1.xyz = crackNormalMap.Sample(crackSampler_s, r1.xy).xyz;
  r1.w = saturate(r2.w * 0.998000026 + 0.00100000005);
  r1.w = log2(r1.w);
  r0.w = r1.w * r0.w;
  r0.w = exp2(r0.w);
  r0.y = r0.w + -r0.y;
  r0.y = saturate(r0.y * r0.z);
  r0.z = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = r0.z * r0.y;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.z, r0.x, l(16), t0.xxxx
r0.z = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(48), t0.xxxx
r0.x = colorSampler[]..swiz;
  r0.xz = saturate(r0.xz);
  r0.x = r0.x * -v1.z + 1;
  r0.z = r0.z * -v1.x + 1;
  r1.w = saturate(alphaRevealParms.x + r0.z);
  r0.z = saturate(r0.z);
  r1.w = r1.w + -r0.z;
  r0.z = r0.w + -r0.z;
  r1.w = 1 / r1.w;
  r0.z = saturate(r1.w * r0.z);
  r1.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.y = r1.w * r0.z + r0.y;
  r0.z = saturate(alphaRevealParms.x + r0.x);
  r0.x = saturate(r0.x);
  r0.z = r0.z + -r0.x;
  r0.x = r0.w + -r0.x;
  r0.z = 1 / r0.z;
  r0.x = saturate(r0.x * r0.z);
  r0.z = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r0.z * r0.x + r0.y;
  r0.x = min(1, r0.x);
  r0.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.yzw = r3.www * r0.yzw + float3(1,1,1);
  r0.yzw = r3.xyz * r0.yzw;
  r1.w = specColorMap.Sample(specColorSampler_s, v2.xy).x;
  r2.w = saturate(1 + -r1.w);
  r0.yzw = r2.www * r0.yzw;
  r2.xyz = r2.xyz * colorTint1.xyz + -r0.yzw;
  o0.xyz = r0.xxx * r2.xyz + r0.yzw;
  o0.w = 1;
  r0.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r0.yzw = float3(-0.5,-0.5,-0) + r0.yzw;
  r0.yzw = baseNormalHeight * r0.yzw + float3(0.5,0.5,0);
  r0.yz = r0.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = r0.w * r0.w;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  r2.x = dot(r0.yz, r0.yz);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.z = sqrt(r2.x);
  r3.xy = detailScale.xy * v2.xy;
  r3.xyz = detailMap.Sample(normalSampler_s, r3.xy).xyz;
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = r3.z * r3.z;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r0.w = r2.w * detailScaleHeight + r0.w;
  r2.xy = r3.xy * detailScaleHeight + r0.yz;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r2.xyz * r0.yyy;
  r0.y = dot(v6.xyz, v6.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = v6.xyz * r0.yyy;
  r0.y = v7.x ? 1 : -1;
  r3.xyz = r3.xyz * r0.yyy;
  r4.xyz = r3.xyz * r2.yyy;
  r0.z = dot(v5.xyz, v5.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = v5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r0.yyy;
  r2.xyw = r5.xyz * r2.xxx + r4.xyz;
  r0.z = dot(v4.xyz, v4.xyz);
  r0.z = rsqrt(r0.z);
  r4.xyz = v4.xyz * r0.zzz;
  r6.xyz = r4.xyz * r0.yyy;
  r2.xyz = r6.xyz * r2.zzz + r2.xyw;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = r1.z * r1.z;
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r3.xyz = r3.xyz * r1.yyy;
  r3.xyz = r5.xyz * r1.xxx + r3.xyz;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.xyz = r6.xyz * r1.xxx + r3.xyz;
  r2.w = r6.x + r6.y;
  r2.w = r4.z * r0.y + r2.w;
  r2.w = 0.5 * r2.w;
  r3.x = dot(r1.xyz, r1.xyz);
  r3.x = rsqrt(r3.x);
  r1.xyz = r1.xyz * r3.xxx + -r2.xyz;
  r3.yzw = r0.xxx * r1.xyz + r2.xyz;
  r5.yzw = float3(1,-1,-1) * r3.yzw;
  r5.x = 1;
  r3.x = 0;
  r1.xyz = r4.xyz * r0.yyy + -r2.www;
  r0.y = max(r1.y, r1.z);
  r0.y = max(r1.x, r0.y);
  r0.y = max(r2.w, r0.y);
  r1.x = cmp(r0.y == r1.x);
  r2.xyzw = r1.xxxx ? r5.xyzw : r3.xyzw;
  r3.yzw = float3(-1,1,-1) * r2.yzw;
  r3.x = 2;
  r4.x = 2 + r0.y;
  r0.y = r1.x ? r4.x : r0.y;
  r1.x = cmp(r0.y == r1.y);
  r2.xyzw = r1.xxxx ? r3.xyzw : r2.xyzw;
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r1.y = 2 + r0.y;
  r0.y = r1.x ? r1.y : r0.y;
  r0.y = cmp(r0.y == r1.z);
  r3.x = 3;
  r2.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
  r0.y = r2.y + r2.z;
  r1.z = r0.y + r2.w;
  r1.x = -r2.z * 3 + r1.z;
  r1.y = r2.w + -r2.y;
  r0.y = (uint)r2.x;
  o1.w = 0.333333343 * r0.y;
  r1.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.y = 1 + abs(r1.z);
  r0.y = rsqrt(r0.y);
  r1.xy = r1.xy * r0.yy;
  o1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r1.x = glossRange.y + -glossRange.x;
  r0.y = r0.y * r1.x + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.w + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  r0.w = -17 * r0.y;
  r0.w = exp2(r0.w);
  r0.z = r0.z + r0.w;
  r0.z = log2(r0.z);
  r0.z = -0.0588235296 * r0.z;
  r0.z = max(0, r0.z);
  r0.z = r0.z + -r0.y;
  r0.x = r0.x * r0.z + r0.y;
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  r0.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r0.xyz = r1.www * r0.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.y = r0.x + -r0.z;
  r0.x = r1.y * 0.5 + r0.z;
  r1.z = r0.y + -r0.x;
  r1.x = r1.z * 0.5 + r0.x;
  r0.xy = (uint2)v0.xy;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  o2.z = r0.x;
  o2.w = 0.333333343;
  return;
}