// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:29:26 2021

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
  float scriptReplacement : packoffset(c12.z);
}

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
Texture2D<float4> revealMap : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> normalMap : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = revealScale.xy * v2.xy;
  r0.x = revealMap.Sample(revealSampler_s, r0.xy).x;
  r0.y = saturate(w1.x * 0.998000026 + 0.00100000005);
  r0.z = 1 + -r0.y;
  r0.w = saturate(alphaRevealRamp);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r1.x = -r0.y;
  r0.y = log2(r0.z);
  r0.y = r0.w * r0.y;
  r1.y = exp2(r0.y);
  r0.yz = saturate(alphaRevealSoftEdge * r1.xy + r0.zz);
  r0.x = r0.x + -r0.y;
  r0.y = r0.z + -r0.y;
  r0.x = saturate(r0.x / r0.y);
  r0.x = cmp(r0.x < 0.5);
  if (r0.x != 0) discard;
  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  o0.xyz = v1.xyz * r0.xyz;
  r0.x = saturate(0.0588235296 * glossRange.y);
  r0.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r0.yzw = float3(-0.5,-0.5,-0) + r0.yzw;
  r0.yzw = baseNormalHeight * r0.yzw + float3(0.5,0.5,0);
  r0.yz = r0.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.x = dot(r0.yz, r0.yz);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r0.w = r0.w * r0.w;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
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
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = -0.0588235296 * r0.x;
  r0.x = max(0, r0.x);
  r5.xyz = r5.xyz * r0.zzz;
  r0.yzw = r4.xyz * r0.yyy + r5.xyz;
  r0.yzw = r3.xyz * r1.xxx + r0.yzw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r4.yzw = r1.xxx * r0.yzw;
  r0.y = r3.x + r3.y;
  r0.y = r2.z * r1.y + r0.y;
  r0.y = 0.5 * r0.y;
  r1.xyz = r2.xyz * r1.yyy + -r0.yyy;
  r0.z = max(r1.y, r1.z);
  r0.z = max(r1.x, r0.z);
  r0.y = max(r0.y, r0.z);
  r0.z = cmp(r0.y == r1.x);
  r2.yzw = float3(1,-1,-1) * r4.yzw;
  r0.w = 2 + r0.y;
  r2.x = 1;
  r4.x = 0;
  r2.xyzw = r0.zzzz ? r2.xyzw : r4.xyzw;
  r0.y = r0.z ? r0.w : r0.y;
  r0.z = cmp(r0.y == r1.y);
  r3.yzw = float3(-1,1,-1) * r2.yzw;
  r0.w = 2 + r0.y;
  r3.x = 2;
  r2.xyzw = r0.zzzz ? r3.xyzw : r2.xyzw;
  r0.y = r0.z ? r0.w : r0.y;
  r0.y = cmp(r0.y == r1.z);
  r1.yzw = float3(-1,-1,1) * r2.yzw;
  r1.x = 3;
  r1.xyzw = r0.yyyy ? r1.xyzw : r2.xyzw;
  r0.y = r1.y + r1.z;
  r2.z = r0.y + r1.w;
  r2.y = r1.w + -r1.y;
  r2.x = -r1.z * 3 + r2.z;
  r0.yzw = float3(0.408248305,0.707106769,0.577350259) * r2.xyz;
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r0.yz = r0.yz * r0.ww;
  o1.xy = r0.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  r0.x = (uint)r1.x;
  o1.w = 0.333333343 * r0.x;
  o0.w = 1;
  o2.xyzw = float4(0.0399999991,0.5,1,0.333333343);
  return;
}