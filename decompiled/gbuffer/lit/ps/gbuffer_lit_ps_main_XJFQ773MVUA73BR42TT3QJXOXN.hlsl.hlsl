// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:29:39 2021

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
  float3 specColorTint : packoffset(c12);
  float baseNormalHeight : packoffset(c12.w);
  float2 glossRange : packoffset(c13);
  float3 transColorTint : packoffset(c14);
  float transNormalHeight : packoffset(c14.w);
  float2 transGlossRange : packoffset(c15);
  float transRevealSoftEdge : packoffset(c15.z);
  float transRevealRamp : packoffset(c15.w);
  float2 transScale : packoffset(c16);
  float scriptReplacement : packoffset(c16.z);
  float vertPush : packoffset(c16.w);
  float scriptPush : packoffset(c17);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
SamplerState transitionSampler_s : register(s5);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> specColorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);
Texture2D<float4> transColorMap : register(t12);
Texture2D<float4> transNormalMap : register(t14);
Texture2D<float4> transGlossMap : register(t15);
Texture2D<float4> transRevealMap : register(t16);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t0.xxxx
r0.x = colorSampler[]..swiz;
  r0.y = transRevealMap.Sample(transitionSampler_s, w1.xy).x;
  r0.x = saturate(r0.x * 0.998000026 + 0.00100000005);
  r0.z = 1 + -r0.x;
  r0.w = saturate(transRevealRamp);
  r0.x = log2(r0.x);
  r0.x = r0.w * r0.x;
  r0.x = exp2(r0.x);
  r1.x = -r0.x;
  r0.x = log2(r0.z);
  r0.x = r0.w * r0.x;
  r1.y = exp2(r0.x);
  r0.xz = saturate(transRevealSoftEdge * r1.xy + r0.zz);
  r0.y = r0.y + -r0.x;
  r0.x = r0.z + -r0.x;
  r0.x = saturate(r0.y / r0.x);
  r0.yz = transScale.xy * w1.xy;
  r1.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r1.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r0.w = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r2.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r2.xyz = r0.www * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.w = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.w = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r2.w = cmp(0 < r0.x);
  r3.xyzw = transColorMap.Sample(transitionSampler_s, r0.yz).xyzw;
  r4.x = transGlossMap.Sample(transitionSampler_s, r0.yz).x;
  if (r2.w != 0) {
    r4.yzw = float3(-1,-1,-1) + transColorTint.xyz;
    r4.yzw = r3.www * r4.yzw + float3(1,1,1);
    r2.w = v1.x * r3.w;
    r3.w = transGlossRange.y + -transGlossRange.x;
    r3.w = r4.x * r3.w + transGlossRange.x;
    r3.w = saturate(0.0588235296 * r3.w);
    r0.x = r2.w * r0.x;
    r3.xyz = r3.xyz * r4.yzw + -r1.xyz;
    r1.xyz = r0.xxx * r3.xyz + r1.xyz;
    r2.w = r3.w * 2 + -1;
    r2.w = r0.x * r2.w + 1;
    r1.w = saturate(r2.w * r1.w);
    r3.xyz = float3(0.0399999991,0.0399999991,0.0399999991) + -r2.xyz;
    r2.xyz = r0.xxx * r3.xyz + r2.xyz;
  } else {
    r0.x = 0;
  }
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r3.w = sqrt(r2.w);
  r2.w = r3.z * r3.z;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r3.z = cmp(0 < r0.x);
  r4.xyz = transNormalMap.Sample(transitionSampler_s, r0.yz).xyz;
  if (r3.z != 0) {
    r4.xyz = float3(-0.5,-0.5,-0) + r4.xyz;
    r4.xyz = transNormalHeight * r4.xyz + float3(0.5,0.5,0);
    r0.yz = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
    r3.z = r4.z * r4.z;
    r3.z = 0.333333343 * r3.z;
    r3.z = min(1, r3.z);
    r3.xy = r0.yz * r0.xx + r3.xy;
    r0.y = dot(r3.xyw, r3.xyw);
    r0.y = rsqrt(r0.y);
    r3.xyw = r3.xyw * r0.yyy;
    r2.w = r3.z * r0.x + r2.w;
  }
  r0.x = v6.x ? 1 : -1;
  r0.y = dot(v3.xyz, v3.xyz);
  r0.y = rsqrt(r0.y);
  r4.xyz = v3.xyz * r0.yyy;
  r5.xyz = r4.xyz * r0.xxx;
  r0.y = dot(v4.xyz, v4.xyz);
  r0.y = rsqrt(r0.y);
  r6.xyz = v4.xyz * r0.yyy;
  r6.xyz = r6.xyz * r0.xxx;
  r0.y = dot(v5.xyz, v5.xyz);
  r0.y = rsqrt(r0.y);
  r7.xyz = v5.xyz * r0.yyy;
  r7.xyz = r7.xyz * r0.xxx;
  r0.y = -17 * r1.w;
  r0.y = exp2(r0.y);
  r0.y = r2.w + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  r7.xyz = r7.xyz * r3.yyy;
  r3.xyz = r6.xyz * r3.xxx + r7.xyz;
  r3.xyz = r5.xyz * r3.www + r3.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.yzw = r3.xyz * r0.zzz;
  r0.z = r5.x + r5.y;
  r0.z = r4.z * r0.x + r0.z;
  r0.z = 0.5 * r0.z;
  r4.xyz = r4.xyz * r0.xxx + -r0.zzz;
  r0.x = max(r4.y, r4.z);
  r0.x = max(r4.x, r0.x);
  r0.x = max(r0.z, r0.x);
  r0.z = cmp(r0.x == r4.x);
  r5.yzw = float3(1,-1,-1) * r3.yzw;
  r1.w = 2 + r0.x;
  r5.x = 1;
  r3.x = 0;
  r3.xyzw = r0.zzzz ? r5.xyzw : r3.xyzw;
  r0.x = r0.z ? r1.w : r0.x;
  r0.z = cmp(r0.x == r4.y);
  r5.yzw = float3(-1,1,-1) * r3.yzw;
  r1.w = 2 + r0.x;
  r5.x = 2;
  r3.xyzw = r0.zzzz ? r5.xyzw : r3.xyzw;
  r0.x = r0.z ? r1.w : r0.x;
  r0.x = cmp(r0.x == r4.z);
  r4.yzw = float3(-1,-1,1) * r3.yzw;
  r4.x = 3;
  r3.xyzw = r0.xxxx ? r4.xyzw : r3.xyzw;
  r0.x = r3.y + r3.z;
  r4.z = r0.x + r3.w;
  r4.y = r3.w + -r3.y;
  r4.x = -r3.z * 3 + r4.z;
  r3.yzw = float3(0.408248305,0.707106769,0.577350259) * r4.xyz;
  r0.x = 1 + abs(r3.w);
  r0.x = rsqrt(r0.x);
  r0.xz = r3.yz * r0.xx;
  o1.xy = r0.xz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.y * 0.49755621 + 0.00146627566;
  r0.x = (uint)r3.x;
  o1.w = 0.333333343 * r0.x;
  r0.xy = (uint2)v0.xy;
  r3.y = r2.x + -r2.z;
  r0.z = r3.y * 0.5 + r2.z;
  r3.z = r2.y + -r0.z;
  r3.x = r3.z * 0.5 + r0.z;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r3.xy : r3.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  o0.xyz = r1.xyz;
  o0.w = 1;
  o2.z = r0.w;
  o2.w = 0.333333343;
  return;
}