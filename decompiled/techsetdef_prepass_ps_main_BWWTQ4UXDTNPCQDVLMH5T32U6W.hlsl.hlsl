// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:16 2021

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
}

SamplerState colorSampler_s : register(s1);
SamplerState revealSampler_s : register(s2);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> revealMap : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR0,
  float2 w1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = colorMap.Sample(colorSampler_s, w1.xy).w;
  r0.x = v1.x * r0.x;
  r0.y = revealMap.Sample(revealSampler_s, w1.xy).x;
  r0.z = saturate(v1.x * 0.998000026 + 0.00100000005);
  r0.w = 1 + -r0.z;
  r1.x = saturate(alphaRevealRamp);
  r0.z = log2(r0.z);
  r0.z = r1.x * r0.z;
  r0.z = exp2(r0.z);
  r2.x = -r0.z;
  r0.z = log2(r0.w);
  r0.z = r1.x * r0.z;
  r2.y = exp2(r0.z);
  r0.zw = saturate(alphaRevealSoftEdge * r2.xy + r0.ww);
  r0.y = r0.y + -r0.z;
  r0.z = r0.w + -r0.z;
  r0.y = saturate(r0.y / r0.z);
  r0.x = r0.x * r0.y;
  r0.x = cmp(r0.x < 0.5);
  if (r0.x != 0) discard;
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = rsqrt(r0.x);
  r1.yzw = v2.xyz * r0.xxx;
  r0.y = r1.y + r1.z;
  r0.y = v2.z * r0.x + r0.y;
  r0.y = 0.5 * r0.y;
  r0.xzw = v2.xyz * r0.xxx + -r0.yyy;
  r2.x = max(r0.z, r0.w);
  r2.x = max(r2.x, r0.x);
  r0.y = max(r2.x, r0.y);
  r0.x = cmp(r0.y == r0.x);
  r2.yzw = float3(1,-1,-1) * r1.yzw;
  r3.x = 2 + r0.y;
  r2.x = 1;
  r1.x = 0;
  r1.xyzw = r0.xxxx ? r2.xyzw : r1.xyzw;
  r0.x = r0.x ? r3.x : r0.y;
  r0.y = cmp(r0.x == r0.z);
  r2.yzw = float3(-1,1,-1) * r1.yzw;
  r0.z = 2 + r0.x;
  r2.x = 2;
  r1.xyzw = r0.yyyy ? r2.xyzw : r1.xyzw;
  r0.x = r0.y ? r0.z : r0.x;
  r0.x = cmp(r0.x == r0.w);
  r2.yzw = float3(-1,-1,1) * r1.yzw;
  r2.x = 3;
  r0.xyzw = r0.xxxx ? r2.xyzw : r1.xyzw;
  r1.x = r0.y + r0.z;
  r1.z = r1.x + r0.w;
  r1.y = r0.w + -r0.y;
  r1.x = -r0.z * 3 + r1.z;
  r0.yzw = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r0.yz = r0.yz * r0.ww;
  o0.xy = r0.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.x = (uint)r0.x;
  o0.w = 0.333333343 * r0.x;
  o0.z = 0;
  return;
}