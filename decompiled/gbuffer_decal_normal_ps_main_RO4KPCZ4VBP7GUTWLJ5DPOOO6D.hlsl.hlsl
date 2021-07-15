// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:52 2021

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
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
}

SamplerState revealSampler_s : register(s1);
SamplerState normalSampler_s : register(s2);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> revealMap : register(t6);
Texture2D<float4> normalMap : register(t7);


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
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v4.xyz * r0.xxx;
  r0.w = v5.x ? 1 : -1;
  r0.xyz = r0.xyz * r0.www;
  r1.xy = normalMap.Sample(normalSampler_s, w1.xy).xy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r1.xy = baseNormalHeight * r1.xy + float2(0.5,0.5);
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.xyz = r1.yyy * r0.xyz;
  r1.z = dot(v3.xyz, v3.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = v3.xyz * r1.zzz;
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.xyz * r1.xxx + r0.xyz;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.y = dot(v2.xyz, v2.xyz);
  r1.y = rsqrt(r1.y);
  r1.yzw = v2.xyz * r1.yyy;
  r1.yzw = r1.yzw * r0.www;
  r0.xyz = r1.yzw * r1.xxx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r1.xy = resolvedNormal.Load(r1.xyz).zw;
  r0.w = r1.y * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r2.xyzw = r2.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.w = (int)r2.w ^ (int)r2.z;
  r2.z = r0.w ? -0.577350259 : 0.577350259;
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r1.yzw = float3(0.707106769,-1.41421354,0.707106769) * r2.xyz;
  r2.xy = float2(-1.22474492,1.22474492) * r2.xz;
  r2.y = dot(r0.xz, r2.xy);
  r2.x = dot(r0.xyz, r1.yzw);
  r0.xy = r2.xy * r0.ww;
  r0.xy = r0.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.w = cmp(r1.x >= 0.5);
  r1.x = cmp(0 < r1.x);
  r0.z = r0.w ? 0.5 : 0.00146627566;
  r0.xyz = r1.xxx ? r0.xyz : 0;
  r0.w = saturate(v1.x * 0.998000026 + 0.00100000005);
  r1.x = log2(r0.w);
  r0.w = 1 + -r0.w;
  r1.y = saturate(alphaRevealRamp);
  r1.x = r1.y * r1.x;
  r1.x = exp2(r1.x);
  r2.x = -r1.x;
  r1.x = log2(r0.w);
  r1.x = r1.y * r1.x;
  r2.y = exp2(r1.x);
  r1.xy = saturate(alphaRevealSoftEdge * r2.xy + r0.ww);
  r1.zw = revealScale.xy * w1.xy;
  r0.w = revealMap.Sample(revealSampler_s, r1.zw).x;
  r0.w = r0.w + -r1.x;
  r1.x = r1.y + -r1.x;
  r0.w = saturate(r0.w / r1.x);
  o1.xyz = r0.xyz * r0.www;
  o1.w = r0.w;
  return;
}