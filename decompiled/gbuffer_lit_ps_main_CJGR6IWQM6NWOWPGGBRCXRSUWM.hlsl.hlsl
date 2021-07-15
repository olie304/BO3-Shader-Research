// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:29:05 2021

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
SamplerState aoSampler_s : register(s4);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> tintMask : register(t6);
Texture2D<float4> specColorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> aoMap : register(t11);


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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.w = v1.x * r0.w;
  r0.w = cmp(r0.w < 0.5);
  if (r0.w != 0) discard;
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  o0.xyz = r1.xyz * r0.xyz;
  r0.xyz = specColorMap.Sample(specColorSampler_s, w1.xy).xyz;
  r0.w = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r1.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.yzw = float3(-0.5,-0.5,-0) + r1.yzw;
  r1.yzw = baseNormalHeight * r1.yzw + float3(0.5,0.5,0);
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.yz, r1.yz);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.y = v5.x ? 1 : -1;
  r2.z = dot(v2.xyz, v2.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = v2.xyz * r2.zzz;
  r4.xyz = r3.xyz * r2.yyy;
  r2.z = dot(v3.xyz, v3.xyz);
  r2.z = rsqrt(r2.z);
  r5.xyz = v3.xyz * r2.zzz;
  r5.xyz = r5.xyz * r2.yyy;
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = rsqrt(r2.z);
  r6.xyz = v4.xyz * r2.zzz;
  r6.xyz = r6.xyz * r2.yyy;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.w + r1.x;
  r1.x = log2(r1.x);
  r1.x = -0.0588235296 * r1.x;
  r1.x = max(0, r1.x);
  r6.xyz = r6.xyz * r1.zzz;
  r1.yzw = r5.xyz * r1.yyy + r6.xyz;
  r1.yzw = r4.xyz * r2.xxx + r1.yzw;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = rsqrt(r2.x);
  r5.yzw = r2.xxx * r1.yzw;
  r1.y = r4.x + r4.y;
  r1.y = r3.z * r2.y + r1.y;
  r1.y = 0.5 * r1.y;
  r2.xyz = r3.xyz * r2.yyy + -r1.yyy;
  r1.z = max(r2.y, r2.z);
  r1.z = max(r2.x, r1.z);
  r1.y = max(r1.y, r1.z);
  r1.z = cmp(r1.y == r2.x);
  r3.yzw = float3(1,-1,-1) * r5.yzw;
  r1.w = 2 + r1.y;
  r3.x = 1;
  r5.x = 0;
  r3.xyzw = r1.zzzz ? r3.xyzw : r5.xyzw;
  r1.y = r1.z ? r1.w : r1.y;
  r1.z = cmp(r1.y == r2.y);
  r4.yzw = float3(-1,1,-1) * r3.yzw;
  r1.w = 2 + r1.y;
  r4.x = 2;
  r3.xyzw = r1.zzzz ? r4.xyzw : r3.xyzw;
  r1.y = r1.z ? r1.w : r1.y;
  r1.y = cmp(r1.y == r2.z);
  r2.yzw = float3(-1,-1,1) * r3.yzw;
  r2.x = 3;
  r2.xyzw = r1.yyyy ? r2.xyzw : r3.xyzw;
  r1.y = r2.y + r2.z;
  r3.z = r1.y + r2.w;
  r3.y = r2.w + -r2.y;
  r3.x = -r2.z * 3 + r3.z;
  r1.yzw = float3(0.408248305,0.707106769,0.577350259) * r3.xyz;
  r1.w = 1 + abs(r1.w);
  r1.w = rsqrt(r1.w);
  r1.yz = r1.yz * r1.ww;
  o1.xy = r1.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r1.x * 0.49755621 + 0.00146627566;
  r1.x = (uint)r2.x;
  o1.w = 0.333333343 * r1.x;
  r1.xy = (uint2)v0.xy;
  r2.y = r0.x + -r0.z;
  r0.x = r2.y * 0.5 + r0.z;
  r2.z = r0.y + -r0.x;
  r2.x = r2.z * 0.5 + r0.x;
  r0.xy = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r2.xy : r2.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  o0.w = 1;
  o2.z = r0.w;
  o2.w = 0.333333343;
  return;
}