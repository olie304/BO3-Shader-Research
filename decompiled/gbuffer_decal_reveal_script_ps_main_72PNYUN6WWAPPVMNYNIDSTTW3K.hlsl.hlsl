// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:15 2021

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
  float detailScaleHeight : packoffset(c12.z);
  float scriptProxy : packoffset(c12.w);
}

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState specColorSampler_s : register(s3);
SamplerState normalSampler_s : register(s4);
SamplerState aoSampler_s : register(s5);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> resolvedNormal : register(t6);
Texture2D<float4> revealMap : register(t7);
Texture2D<float4> colorMap : register(t9);
Texture2D<float4> tintMask : register(t10);
Texture2D<float4> normalMap : register(t11);
Texture2D<float4> glossMap : register(t12);
Texture2D<float4> aoMap : register(t14);
Texture2D<float4> detailMap : register(t15);
Texture2D<float4> transitionDiffuse : register(t16);
Texture2D<float4> transitionNormal : register(t17);
Texture2D<float4> transitionGloss : register(t18);


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

  r0.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r2.xyz = transitionDiffuse.Sample(colorSampler_s, w1.xy).xyz;
  r2.xyz = r2.xyz * r1.xyz;
  r0.xyz = r0.xyz * r1.xyz + -r2.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v2.x, l(4), t4.xxxx
r0.w = revealSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.w, r0.w, l(0), t0.xxxx
r0.w = revealSampler[]..swiz;
  r0.w = saturate(r0.w * 0.998000026 + 0.00100000005);
  r1.x = log2(r0.w);
  r0.w = 1 + -r0.w;
  r1.y = saturate(alphaRevealParms.y);
  r1.x = r1.y * r1.x;
  r1.x = exp2(r1.x);
  r3.x = -r1.x;
  r1.x = log2(r0.w);
  r1.x = r1.y * r1.x;
  r3.y = exp2(r1.x);
  r1.xy = saturate(alphaRevealParms.xx * r3.xy + r0.ww);
  r0.w = revealMap.Sample(revealSampler_s, w1.xy).x;
  r0.w = r0.w + -r1.x;
  r1.x = r1.y + -r1.x;
  r0.w = saturate(r0.w / r1.x);
  r1.x = cmp(r0.w >= 0.99000001);
  r1.x = r1.x ? 1.000000 : 0;
  r0.xyz = r1.xxx * r0.xyz + r2.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  r0.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r0.xyz = float3(-0.5,-0.5,-0) + r0.xyz;
  r0.xyz = baseNormalHeight * r0.xyz + float3(0.5,0.5,0);
  r0.xy = r0.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = r0.z * r0.z;
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r1.y = dot(r0.xy, r0.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r2.z = sqrt(r1.y);
  r1.yz = detailScale.xy * w1.xy;
  r1.yzw = detailMap.Sample(normalSampler_s, r1.yz).xyz;
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r0.z = r1.w * detailScaleHeight + r0.z;
  r2.xy = r1.yz * detailScaleHeight + r0.xy;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r1.yzw = r2.xyz * r0.xxx;
  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = v5.xyz * r0.xxx;
  r0.x = v6.x ? 1 : -1;
  r2.xyz = r2.xyz * r0.xxx;
  r3.xyz = r2.xyz * r1.zzz;
  r0.y = dot(v4.xyz, v4.xyz);
  r0.y = rsqrt(r0.y);
  r4.xyz = v4.xyz * r0.yyy;
  r4.xyz = r4.xyz * r0.xxx;
  r3.xyz = r4.xyz * r1.yyy + r3.xyz;
  r0.y = dot(v3.xyz, v3.xyz);
  r0.y = rsqrt(r0.y);
  r5.xyz = v3.xyz * r0.yyy;
  r5.xyz = r5.xyz * r0.xxx;
  r1.yzw = r5.xyz * r1.www + r3.xyz;
  r0.x = dot(r1.yzw, r1.yzw);
  r0.x = rsqrt(r0.x);
  r3.xyz = transitionNormal.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.y = r3.z * r3.z;
  r0.y = 0.333333343 * r0.y;
  r0.y = min(1, r0.y);
  r2.xyz = r3.yyy * r2.xyz;
  r2.xyz = r4.xyz * r3.xxx + r2.xyz;
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r2.xyz = r5.xyz * r2.www + r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r1.yzw = r1.yzw * r0.xxx + -r2.xyz;
  r1.yzw = r1.xxx * r1.yzw + r2.xyz;
  r2.xy = (uint2)v0.xy;
  r2.zw = float2(0,0);
  r2.xy = resolvedNormal.Load(r2.xyz).zw;
  r0.x = r2.y * 3 + 0.5;
  r0.x = (uint)r0.x;
  r3.xyzw = (int4)r0.xxxx & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.x = (int)r3.w ^ (int)r3.z;
  r3.z = r0.x ? -0.577350259 : 0.577350259;
  r0.x = dot(r1.yzw, r3.xyz);
  r0.x = 1 + abs(r0.x);
  r0.x = rsqrt(r0.x);
  r2.yzw = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r3.xy = float2(-1.22474492,1.22474492) * r3.xz;
  r3.y = dot(r1.yw, r3.xy);
  r3.x = dot(r1.yzw, r2.yzw);
  r1.yz = r3.xy * r0.xx;
  r3.xy = r1.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r0.x = r0.x * r1.y + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.z + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  r0.z = transitionGloss.Sample(specColorSampler_s, w1.xy).x;
  r0.z = r0.z * r1.y + glossRange.x;
  r0.z = saturate(0.0588235296 * r0.z);
  r0.z = -17 * r0.z;
  r0.z = exp2(r0.z);
  r0.y = r0.y + r0.z;
  r0.y = log2(r0.y);
  r0.y = -0.0588235296 * r0.y;
  r0.y = max(0, r0.y);
  r0.x = r0.x + -r0.y;
  r0.x = r1.x * r0.x + r0.y;
  r0.y = cmp(r2.x >= 0.5);
  r0.z = cmp(0 < r2.x);
  r0.y = r0.y ? 0.5 : 0.00146627566;
  r3.z = r0.x * 0.49755621 + r0.y;
  r0.xyz = r0.zzz ? r3.xyz : 0;
  o1.xyz = r0.xyz * r0.www;
  o1.w = r0.w;
  r0.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.z = min(1, r0.x);
  r1.xyw = float3(0.0399999991,0.5,1);
  o2.xyzw = r1.xyzw * r0.wwww;
  return;
}