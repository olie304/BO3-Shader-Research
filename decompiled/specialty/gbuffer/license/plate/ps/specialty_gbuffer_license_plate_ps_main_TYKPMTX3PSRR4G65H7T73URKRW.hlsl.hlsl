// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:13 2021

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
  float charOffset1 : packoffset(c10.w);
  float charOffset2 : packoffset(c11);
  float charOffset3 : packoffset(c11.y);
  float charOffset4 : packoffset(c11.z);
  float charOffset5 : packoffset(c11.w);
  float charOffset6 : packoffset(c12);
  float charOffset7 : packoffset(c12.y);
  float charOffset8 : packoffset(c12.z);
  float charPosCount : packoffset(c12.w);
  float charListCount : packoffset(c13);
}

SamplerState colorSampler_s : register(s1);
SamplerState normalSampler_s : register(s2);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> characterColorMap : register(t9);
Texture2D<float4> characterNormalMap : register(t10);
Texture2D<float4> characterRevealMap : register(t11);


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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = max(1, charPosCount);
  r0.x = min(8, r0.x);
  r0.x = 1 / r0.x;
  r0.y = max(1, charListCount);
  r0.y = 1 / r0.y;
  r1.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r0.zw = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r0.zw, r0.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r3.z = sqrt(r1.w);
  r1.w = r2.z * r2.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.xyz = characterRevealMap.Sample(colorSampler_s, w1.xy).xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.w, v2.x, l(4), t4.xxxx
r3.w = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r4.xyzw, r3.w, l(0), t0.xyzw
r4.x = colorSampler[]..swiz;
r4.y = colorSampler[]..swiz;
r4.z = colorSampler[]..swiz;
r4.w = colorSampler[]..swiz;
  r5.x = cmp(r2.z < r0.x);
  if (r5.x != 0) {
    r4.x = saturate(r4.x);
    r4.x = r4.x * r0.y;
    r2.x = r2.x * r0.y + r4.x;
  } else {
    r4.x = r0.x + r0.x;
    r4.x = cmp(r2.z < r4.x);
    if (r4.x != 0) {
      r4.y = saturate(r4.y);
      r4.x = r4.y * r0.y;
      r2.x = r2.x * r0.y + r4.x;
    } else {
      r4.x = 3 * r0.x;
      r4.x = cmp(r2.z < r4.x);
      if (r4.x != 0) {
        r4.z = saturate(r4.z);
        r4.x = r4.z * r0.y;
        r2.x = r2.x * r0.y + r4.x;
      } else {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r5.xyzw, r3.w, l(16), t0.xyzw
      r5.x = colorSampler[]..swiz;
      r5.y = colorSampler[]..swiz;
      r5.z = colorSampler[]..swiz;
      r5.w = colorSampler[]..swiz;
        r4.w = saturate(r4.w);
        r5.xyzw = saturate(r5.xyzw);
        r6.xyzw = float4(4,5,6,7) * r0.xxxx;
        r3.w = r2.x * r0.y;
        r4.x = r0.y * r4.w + r3.w;
        r6.xyzw = cmp(r2.zzzz < r6.xyzw);
        r0.x = 8 * r0.x;
        r0.x = cmp(r2.z < r0.x);
        r5.xyzw = r0.yyyy * r5.xyzw + r3.wwww;
        r2.xzw = r5.wzy;
        r0.xy = r0.xx ? r2.xy : w1.xy;
        r0.xy = r6.ww ? r2.zy : r0.xy;
        r0.xy = r6.zz ? r2.wy : r0.xy;
        r4.y = r5.x;
        r4.z = r2.y;
        r0.xy = r6.yy ? r4.yz : r0.xy;
        r2.xy = r6.xx ? r4.xz : r0.xy;
      }
    }
  }
  r4.xyzw = characterColorMap.Sample(colorSampler_s, r2.xy).xyzw;
  r2.xyz = characterNormalMap.Sample(normalSampler_s, r2.xy).xyz;
  r0.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = r2.z * r2.z;
  r2.x = 0.333333343 * r2.x;
  r2.x = min(1, r2.x);
  r3.xy = r0.xy * r4.ww + r0.zw;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r3.xyz * r0.xxx;
  r0.w = r2.x * r4.w + r1.w;
  r2.xyz = r4.xyz + -r1.xyz;
  o0.xyz = r4.www * r2.xyz + r1.xyz;
  r1.x = saturate(0.0588235296 * glossRange.y);
  r1.y = v6.x ? 1 : -1;
  r1.z = dot(v3.xyz, v3.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = v3.xyz * r1.zzz;
  r3.xyz = r2.xyz * r1.yyy;
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = v4.xyz * r1.zzz;
  r4.xyz = r4.xyz * r1.yyy;
  r1.z = dot(v5.xyz, v5.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = v5.xyz * r1.zzz;
  r5.xyz = r5.xyz * r1.yyy;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r1.x + r0.w;
  r0.w = log2(r0.w);
  r0.w = saturate(-0.0588235296 * r0.w);
  r1.xzw = r5.xyz * r0.yyy;
  r1.xzw = r4.xyz * r0.xxx + r1.xzw;
  r0.xyz = r3.xyz * r0.zzz + r1.xzw;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r4.yzw = r1.xxx * r0.xyz;
  r0.x = r3.x + r3.y;
  r0.x = r2.z * r1.y + r0.x;
  r0.x = 0.5 * r0.x;
  r1.xyz = r2.xyz * r1.yyy + -r0.xxx;
  r0.y = max(r1.y, r1.z);
  r0.y = max(r1.x, r0.y);
  r0.x = max(r0.x, r0.y);
  r0.y = cmp(r0.x == r1.x);
  r2.yzw = float3(1,-1,-1) * r4.yzw;
  r0.z = 2 + r0.x;
  r2.x = 1;
  r4.x = 0;
  r2.xyzw = r0.yyyy ? r2.xyzw : r4.xyzw;
  r0.x = r0.y ? r0.z : r0.x;
  r0.y = cmp(r0.x == r1.y);
  r3.yzw = float3(-1,1,-1) * r2.yzw;
  r0.z = 2 + r0.x;
  r3.x = 2;
  r2.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
  r0.x = r0.y ? r0.z : r0.x;
  r0.x = cmp(r0.x == r1.z);
  r1.yzw = float3(-1,-1,1) * r2.yzw;
  r1.x = 3;
  r1.xyzw = r0.xxxx ? r1.xyzw : r2.xyzw;
  r0.x = r1.y + r1.z;
  r0.z = r0.x + r1.w;
  r0.y = r1.w + -r1.y;
  r0.x = -r1.z * 3 + r0.z;
  r0.xyz = float3(0.408248305,0.707106769,0.577350259) * r0.xyz;
  r0.z = 1 + abs(r0.z);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  o1.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.w * 0.49755621 + 0.00146627566;
  r0.x = (uint)r1.x;
  o1.w = 0.333333343 * r0.x;
  o0.w = 1;
  o2.xyzw = float4(0.0399999991,0.5,1,0.333333343);
  return;
}