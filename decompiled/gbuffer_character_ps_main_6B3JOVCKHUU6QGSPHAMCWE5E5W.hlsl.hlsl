// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:49 2021

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
  float2 swatch1Scale : packoffset(c12.z);
  float2 swatch2Scale : packoffset(c13);
  float swatchHeight : packoffset(c13.z);
  float4 colorTint1 : packoffset(c14);
  float4 colorTint2 : packoffset(c15);
  float4 colorTint3 : packoffset(c16);
  float2 glossRange1 : packoffset(c17);
  float2 glossRange2 : packoffset(c17.z);
  float2 glossRange3 : packoffset(c18);
  float2 specTweak1 : packoffset(c18.z);
  float2 specTweak2 : packoffset(c19);
  float2 specTweak3 : packoffset(c19.z);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> specColorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);
Texture2D<float4> styleMaskMap : register(t12);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float4 v6 : TEXCOORD4,
  nointerpolation uint v7 : TEXCOORD9,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v7.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(256), t0.xyzw
r1.x = colorSampler[]..swiz;
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
r1.w = colorSampler[]..swiz;
  r0.y = cmp(0 < r1.w);
  if (r0.y != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, l(272), t0.xyzw
  r2.x = colorSampler[]..swiz;
  r2.y = colorSampler[]..swiz;
  r2.z = colorSampler[]..swiz;
  r2.w = colorSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(288), t0.xxyz
  r0.y = colorSampler[]..swiz;
  r0.z = colorSampler[]..swiz;
  r0.w = colorSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(304), t0.xyzw
  r3.x = colorSampler[]..swiz;
  r3.y = colorSampler[]..swiz;
  r3.z = colorSampler[]..swiz;
  r3.w = colorSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r4.xyz, r0.x, l(320), t0.xyzx
  r4.x = colorSampler[]..swiz;
  r4.y = colorSampler[]..swiz;
  r4.z = colorSampler[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r5.xyzw, r0.x, l(336), t0.xyzw
  r5.x = colorSampler[]..swiz;
  r5.y = colorSampler[]..swiz;
  r5.z = colorSampler[]..swiz;
  r5.w = colorSampler[]..swiz;
    r6.xy = r2.zw;
    r6.zw = r3.zw;
  } else {
    r6.xy = specTweak1.xy;
    r6.zw = specTweak2.xy;
    r1.xyz = colorTint1.xyz;
    r0.yzw = colorTint2.xyz;
    r4.xyz = colorTint3.xyz;
    r2.xy = glossRange1.xy;
    r3.xy = glossRange2.xy;
    r5.xy = glossRange3.xy;
    r5.zw = specTweak3.xy;
  }
  r7.xyz = styleMaskMap.Sample(colorSampler_s, v2.xy).xyz;
  r0.x = r7.x + r7.y;
  r0.x = saturate(r0.x + r7.z);
  r2.zw = r7.yy * r3.xy;
  r2.xy = r7.xx * r2.xy + r2.zw;
  r2.xy = r7.zz * r5.xy + r2.xy;
  r0.x = 1 + -r0.x;
  r2.zw = glossRange.xy + -r2.xy;
  r2.xy = r0.xx * r2.zw + r2.xy;
  r2.xy = max(float2(0,0), r2.xy);
  r2.xy = min(float2(17,17), r2.xy);
  r3.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r3.xyzw = v1.xyzw * r3.xyzw;
  r8.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r8.xyz = r3.www * r8.xyz + float3(1,1,1);
  r3.xyz = r8.xyz * r3.xyz;
  r8.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r8.xyz = float3(-0.5,-0.5,-0) + r8.xyz;
  r8.xyz = baseNormalHeight * r8.xyz + float3(0.5,0.5,0);
  r9.xyz = specColorMap.Sample(specColorSampler_s, v2.xy).xyz;
  r1.w = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r2.y = r2.y + -r2.x;
  r1.w = r1.w * r2.y + r2.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r2.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  r2.yz = r8.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r2.yz, r2.yz);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r4.w = r8.z * r8.z;
  r4.w = 0.333333343 * r4.w;
  r4.w = min(1, r4.w);
  r1.w = 17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 / r1.w;
  r1.w = r4.w + r1.w;
  r1.w = 1 / r1.w;
  r1.w = log2(r1.w);
  r1.w = 0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r8.xyz = v5.xyz * r2.zzz;
  r8.xyz = v4.xyz * r2.yyy + r8.xyz;
  r2.yzw = v3.xyz * r2.www + r8.xyz;
  r4.w = dot(r2.yzw, r2.yzw);
  r4.w = rsqrt(r4.w);
  r8.yzw = r4.www * r2.yzw;
  r3.w = cmp(r3.w != 0.000000);
  r0.yzw = r7.yyy * r0.yzw;
  r0.yzw = r7.xxx * r1.xyz + r0.yzw;
  r0.yzw = r7.zzz * r4.xyz + r0.yzw;
  r1.xyz = float3(1,1,1) + -r0.yzw;
  r0.yzw = r0.xxx * r1.xyz + r0.yzw;
  r0.yzw = r0.yzw * r3.xyz;
  r1.x = dot(r9.xyz, float3(0.298999995,0.587000012,0.114));
  r1.y = dot(r7.xy, r6.xz);
  r1.y = r7.z * r5.z + r1.y;
  r0.x = saturate(r1.y + r0.x);
  r4.xyz = r9.xyz + -r1.xxx;
  r1.xyz = r0.xxx * r4.xyz + r1.xxx;
  r0.x = dot(r7.xy, r6.yw);
  r0.x = r7.z * r5.w + r0.x;
  r1.xyz = saturate(r1.xyz + r0.xxx);
  o0.xyz = r3.www ? r0.yzw : r3.xyz;
  r0.xyz = r3.www ? r1.xyz : r9.xyz;
  r0.w = r8.y + r8.z;
  r0.w = r2.w * r4.w + r0.w;
  r0.w = 0.5 * r0.w;
  r1.xyz = r2.yzw * r4.www + -r0.www;
  r2.y = max(r1.y, r1.z);
  r2.y = max(r2.y, r1.x);
  r0.w = max(r2.y, r0.w);
  r1.x = cmp(r0.w == r1.x);
  r3.yzw = float3(1,-1,-1) * r8.yzw;
  r2.y = 2 + r0.w;
  r3.x = 1;
  r8.x = 0;
  r3.xyzw = r1.xxxx ? r3.xyzw : r8.xyzw;
  r0.w = r1.x ? r2.y : r0.w;
  r1.x = cmp(r0.w == r1.y);
  r4.yzw = float3(-1,1,-1) * r3.yzw;
  r1.y = 2 + r0.w;
  r4.x = 2;
  r3.xyzw = r1.xxxx ? r4.xyzw : r3.xyzw;
  r0.w = r1.x ? r1.y : r0.w;
  r0.w = cmp(r0.w == r1.z);
  r4.yzw = float3(-1,-1,1) * r3.yzw;
  r4.x = 3;
  r3.xyzw = r0.wwww ? r4.xyzw : r3.xyzw;
  r0.w = r3.y + r3.z;
  r1.z = r0.w + r3.w;
  r1.y = r3.w + -r3.y;
  r1.x = -r3.z * 3 + r1.z;
  r1.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.w = 1 + abs(r1.z);
  r0.w = rsqrt(r0.w);
  r1.xy = r1.xy * r0.ww;
  o1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r1.w * 0.49755621 + 0.00146627566;
  r0.w = (uint)r3.x;
  o1.w = 0.333333343 * r0.w;
  r1.xy = (uint2)v0.xy;
  r3.y = r0.x + -r0.z;
  r0.x = r3.y * 0.5 + r0.z;
  r3.z = r0.y + -r0.x;
  r3.x = r3.z * 0.5 + r0.x;
  r0.xy = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r3.xy : r3.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  o0.w = 1;
  o2.z = r2.x;
  o2.w = 0.333333343;
  return;
}