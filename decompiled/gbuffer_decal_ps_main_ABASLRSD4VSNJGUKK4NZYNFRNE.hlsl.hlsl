// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:59 2021

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
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> tintMask : register(t7);
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = tintMask.Sample(colorSampler_s, w1.xy).x;
  r0.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r0.xyz = r0.xxx * r0.yzw + float3(1,1,1);
  r1.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = v1.x * r1.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v3.xyz * r0.xxx;
  r1.x = v5.x ? 1 : -1;
  r0.xyz = r1.xxx * r0.xyz;
  r1.y = dot(v4.xyz, v4.xyz);
  r1.y = rsqrt(r1.y);
  r1.yzw = v4.xyz * r1.yyy;
  r1.yzw = r1.yzw * r1.xxx;
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r1.yzw = r2.yyy * r1.yzw;
  r0.xyz = r0.xyz * r2.xxx + r1.yzw;
  r1.y = dot(r2.xy, r2.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r1.y = sqrt(r1.y);
  r1.z = dot(v2.xyz, v2.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyw = v2.xyz * r1.zzz;
  r1.xzw = r2.xyw * r1.xxx;
  r0.xyz = r1.xzw * r1.yyy + r0.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r1.xy = resolvedNormal.Load(r1.xyz).zw;
  r1.y = r1.y * 3 + 0.5;
  r1.y = (uint)r1.y;
  r3.xyzw = (int4)r1.yyyy & int4(2,1,2,1);
  r3.xyzw = r3.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r1.y = (int)r3.w ^ (int)r3.z;
  r3.z = r1.y ? -0.577350259 : 0.577350259;
  r1.y = dot(r0.xyz, r3.xyz);
  r1.y = 1 + abs(r1.y);
  r1.y = rsqrt(r1.y);
  r2.xyw = float3(0.707106769,-1.41421354,0.707106769) * r3.xyz;
  r1.zw = float2(-1.22474492,1.22474492) * r3.xz;
  r3.y = dot(r0.xz, r1.zw);
  r3.x = dot(r0.xyz, r2.xyw);
  r0.xy = r3.xy * r1.yy;
  r0.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r1.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.z = glossRange.y + -glossRange.x;
  r1.y = r1.y * r1.z + glossRange.x;
  r1.y = saturate(0.0588235296 * r1.y);
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r2.z + r1.y;
  r1.y = log2(r1.y);
  r1.y = -0.0588235296 * r1.y;
  r1.y = max(0, r1.y);
  r1.z = cmp(r1.x >= 0.5);
  r1.x = cmp(0 < r1.x);
  r1.z = r1.z ? 0.5 : 0.00146627566;
  r0.z = r1.y * 0.49755621 + r1.z;
  r0.xyz = r1.xxx ? r0.xyz : 0;
  o1.xyz = r0.xyz * r0.www;
  o1.w = r0.w;
  r1.z = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.xyw = float3(0.0399999991,0.5,1);
  o2.xyzw = r1.xyzw * r0.wwww;
  return;
}