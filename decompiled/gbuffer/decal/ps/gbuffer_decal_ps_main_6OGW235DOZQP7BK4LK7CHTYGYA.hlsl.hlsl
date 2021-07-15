// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:58 2021

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
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
}

SamplerState colorSampler_s : register(s1);
SamplerState normalSampler_s : register(s2);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> tintMask : register(t7);
Texture2D<float4> normalMap : register(t9);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation float3 v2 : UVOFFSETS0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xy = v2.xy + w1.xy;
  r1.xy = v2.zz + r1.xy;
  r0.w = tintMask.Sample(colorSampler_s, r1.xy).x;
  r0.xyz = r0.www * r0.xyz + float3(1,1,1);
  r2.xyzw = colorMap.Sample(colorSampler_s, r1.xy).xyzw;
  r1.xyz = normalMap.Sample(normalSampler_s, r1.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r0.xyz = r2.xyz * r0.xyz;
  r0.w = v1.x * r2.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  r0.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = r1.z * r1.z;
  r0.z = 0.333333343 * r0.z;
  r0.z = min(1, r0.z);
  r1.x = dot(v5.xyz, v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v5.xyz * r1.xxx;
  r1.w = v6.x ? 1 : -1;
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz * r0.yyy;
  r2.x = dot(v4.xyz, v4.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v4.xyz * r2.xxx;
  r2.xyz = r2.xyz * r1.www;
  r1.xyz = r2.xyz * r0.xxx + r1.xyz;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.x = sqrt(r0.x);
  r0.y = dot(v3.xyz, v3.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = v3.xyz * r0.yyy;
  r2.xyz = r2.xyz * r1.www;
  r1.xyz = r2.xyz * r0.xxx + r1.xyz;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r1.xyz = r1.xyz * r0.xxx;
  r2.xy = (uint2)v0.xy;
  r2.zw = float2(0,0);
  r0.xy = resolvedNormal.Load(r2.xyz).zw;
  r0.y = r0.y * 3 + 0.5;
  r0.y = (uint)r0.y;
  r2.xyzw = (int4)r0.yyyy & int4(2,1,2,1);
  r2.xyzw = r2.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.y = (int)r2.w ^ (int)r2.z;
  r2.z = r0.y ? -0.577350259 : 0.577350259;
  r0.y = dot(r1.xyz, r2.xyz);
  r0.y = 1 + abs(r0.y);
  r0.y = rsqrt(r0.y);
  r3.xyz = float3(0.707106769,-1.41421354,0.707106769) * r2.xyz;
  r2.xy = float2(-1.22474492,1.22474492) * r2.xz;
  r2.y = dot(r1.xz, r2.xy);
  r2.x = dot(r1.xyz, r3.xyz);
  r1.xy = r2.xy * r0.yy;
  r1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = saturate(0.0588235296 * glossRange.y);
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.z + r0.y;
  r0.y = log2(r0.y);
  r0.y = -0.0588235296 * r0.y;
  r0.y = max(0, r0.y);
  r0.z = cmp(r0.x >= 0.5);
  r0.x = cmp(0 < r0.x);
  r0.z = r0.z ? 0.5 : 0.00146627566;
  r1.z = r0.y * 0.49755621 + r0.z;
  r0.xyz = r0.xxx ? r1.xyz : 0;
  o1.xyz = r0.xyz * r0.www;
  o1.w = r0.w;
  o2.xyzw = float4(0.0399999991,0.5,1,1) * r0.wwww;
  return;
}