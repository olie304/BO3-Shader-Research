// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:31:58 2021

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
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> resolvedNormal : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> specColorMap : register(t9);
Texture2D<float4> normalMap : register(t10);
Texture2D<float4> glossMap : register(t11);
Texture2D<float4> aoMap : register(t12);
Texture2D<float4> camoMaskMap : register(t14);
Texture2D<float4> normalBodyMap : register(t15);
Texture2D<float4> glossBodyMap : register(t16);
Texture2D<float4> camoDetailMap : register(t17);


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
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(208), t0.xxyz
r0.y = colorSampler[]..swiz;
r0.z = colorSampler[]..swiz;
r0.w = colorSampler[]..swiz;
  r1.xyz = camoMaskMap.Sample(colorSampler_s, w1.xy).xyz;
  r0.y = saturate(dot(r1.xyz, r0.yzw));
  r0.z = cmp(r0.y == 0.000000);
  if (r0.z != 0) discard;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyz, r0.x, l(176), t0.xyzx
r1.x = colorSampler[]..swiz;
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.zw, r0.x, l(192), t0.xxxy
r0.z = colorSampler[]..swiz;
r0.w = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, l(224), t0.xyzw
r2.x = colorSampler[]..swiz;
r2.y = colorSampler[]..swiz;
r2.z = colorSampler[]..swiz;
r2.w = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r3.xyz, r0.x, l(240), t0.xyzx
r3.x = colorSampler[]..swiz;
r3.y = colorSampler[]..swiz;
r3.z = colorSampler[]..swiz;
  r4.xy = w1.xy;
  r4.z = 1;
  r2.x = dot(r2.xyz, r4.xyz);
  r2.y = dot(r3.xyz, r4.xyz);
  r3.xyzw = colorMap.Sample(colorSampler_s, r2.xy).xyzw;
  r0.x = r3.w * r0.y;
  r4.xyz = specColorMap.Sample(specColorSampler_s, r2.xy).xyz;
  r5.z = aoMap.Sample(aoSampler_s, r2.xy).x;
  r0.y = glossMap.Sample(specColorSampler_s, r2.xy).x;
  r1.w = (int)r2.w;
  r2.zw = (int2)r1.ww & int2(8,2);
  if (r2.z != 0) {
    r1.w = glossBodyMap.Sample(specColorSampler_s, w1.xy).x;
    r2.z = -r1.w + r0.y;
    r0.y = r0.w * r2.z + r1.w;
  }
  r0.w = glossRange.y + -glossRange.x;
  r0.y = r0.y * r0.w + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r6.xyz = normalMap.Sample(normalSampler_s, r2.xy).xyz;
  r6.xyz = float3(-0.5,-0.5,-0) + r6.xyz;
  r6.xyz = baseNormalHeight * r6.xyz + float3(0.5,0.5,0);
  r6.xy = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r7.z = sqrt(r0.w);
  r0.w = r6.z * r6.z;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  r1.yz = r2.xy * r1.yz;
  r1.yzw = camoDetailMap.Sample(normalSampler_s, r1.yz).xyz;
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r7.xy = r1.yz * r1.xx + r6.xy;
  r1.y = dot(r7.xyz, r7.xyz);
  r1.y = rsqrt(r1.y);
  r2.xyz = r7.xyz * r1.yyy;
  r0.w = r1.w * r1.x + r0.w;
  if (r2.w != 0) {
    r1.xyz = normalBodyMap.Sample(normalSampler_s, w1.xy).xyz;
    r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
    r1.w = dot(r1.xy, r1.xy);
    r1.w = 1 + -r1.w;
    r1.w = max(0, r1.w);
    r6.z = sqrt(r1.w);
    r1.z = r1.z * r1.z;
    r1.z = 0.333333343 * r1.z;
    r1.z = min(1, r1.z);
    r6.xy = r2.xy * r0.zz + r1.xy;
    r1.x = dot(r6.xyz, r6.xyz);
    r1.x = rsqrt(r1.x);
    r2.xyz = r6.xyz * r1.xxx;
    r0.w = r0.w * r0.z + r1.z;
  }
  r0.z = v6.x ? 1 : -1;
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v3.xyz * r1.xxx;
  r1.xyz = r1.xyz * r0.zzz;
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = rsqrt(r1.w);
  r6.xyz = v4.xyz * r1.www;
  r6.xyz = r6.xyz * r0.zzz;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r7.xyz = v5.xyz * r1.www;
  r7.xyz = r7.xyz * r0.zzz;
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.w + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  r7.xyz = r7.xyz * r2.yyy;
  r2.xyw = r6.xyz * r2.xxx + r7.xyz;
  r1.xyz = r1.xyz * r2.zzz + r2.xyw;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  o0.xyz = r3.xyz * r0.xxx;
  r2.xy = (uint2)v0.xy;
  r2.zw = float2(0,0);
  r0.zw = resolvedNormal.Load(r2.xyz).zw;
  r1.w = cmp(0 < r0.z);
  r0.w = r0.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r3.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.w = (int)r3.w ^ (int)r3.z;
  r3.z = r0.w ? -0.577350259 : 0.577350259;
  r2.zw = float2(-1.22474492,1.22474492) * r3.xz;
  r6.xyz = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r6.x = dot(r1.xyz, r6.xyz);
  r6.y = dot(r1.xz, r2.zw);
  r0.w = dot(r1.xyz, r3.xyz);
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r1.xy = r6.xy * r0.ww;
  r1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.z = cmp(r0.z >= 0.5);
  r0.z = r0.z ? 0.5 : 0.00146627566;
  r1.z = r0.y * 0.49755621 + r0.z;
  r0.yzw = r1.www ? r1.xyz : 0;
  o1.xyz = r0.yzw * r0.xxx;
  r1.y = r4.x + -r4.z;
  r0.y = r1.y * 0.5 + r4.z;
  r1.z = r4.y + -r0.y;
  r1.x = r1.z * 0.5 + r0.y;
  r0.yz = (int2)r2.xy & int2(1,1);
  r0.y = cmp((int)r0.z == (int)r0.y);
  r0.yz = r0.yy ? r1.xy : r1.xz;
  r5.xy = r0.yz * float2(1,0.5) + float2(0,0.5);
  r5.w = 1;
  o2.xyzw = r5.xyzw * r0.xxxx;
  o0.w = r0.x;
  o1.w = r0.x;
  return;
}