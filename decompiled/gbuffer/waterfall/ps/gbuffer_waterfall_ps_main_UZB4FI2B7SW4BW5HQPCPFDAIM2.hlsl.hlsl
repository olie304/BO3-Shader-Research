// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:31:53 2021

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
  float2 rotateUVs : packoffset(c12.z);
  float2 scrollUVs : packoffset(c13);
  float2 scaleUVs : packoffset(c13.z);
  float2 offsetUVs : packoffset(c14);
  float2 zoomUVs : packoffset(c14.z);
  float zoomRate : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  bool clampU : packoffset(c15.z);
  bool clampV : packoffset(c15.w);
  float2 wind1Parms : packoffset(c16);
  float2 wind2Parms : packoffset(c16.z);
  float2 wind3Parms : packoffset(c17);
  float3 backlightScatterColor : packoffset(c18);
}

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
Texture2D<float4> revealMap : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> thicknessMap : register(t9);


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
  r0.xyz = v1.xyz * r0.xyz;
  r0.w = saturate(0.0588235296 * glossRange.y);
  r1.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r1.xy, r1.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r2.x = v6.x ? 1 : -1;
  r2.y = dot(v3.xyz, v3.xyz);
  r2.y = rsqrt(r2.y);
  r2.yzw = v3.xyz * r2.yyy;
  r3.xyz = r2.yzw * r2.xxx;
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = v4.xyz * r3.www;
  r4.xyz = r4.xyz * r2.xxx;
  r3.w = dot(v5.xyz, v5.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = v5.xyz * r3.www;
  r5.xyz = r5.xyz * r2.xxx;
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.z + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.w = max(0, r0.w);
  r5.xyz = r5.xyz * r1.yyy;
  r1.xyz = r4.xyz * r1.xxx + r5.xyz;
  r1.xyz = r3.xyz * r1.www + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.yzw = r1.xyz * r1.www;
  r3.z = thicknessMap.Sample(colorSampler_s, v2.xy).x;
  r4.xyz = backlightScatterColor.xyz * r0.xyz;
  r3.z = 1 + -r3.z;
  r3.w = r4.z * r3.z;
  r3.x = r3.x + r3.y;
  r3.x = r2.w * r2.x + r3.x;
  r3.x = 0.5 * r3.x;
  r2.xyz = r2.yzw * r2.xxx + -r3.xxx;
  r2.w = max(r2.y, r2.z);
  r2.w = max(r2.x, r2.w);
  r2.w = max(r3.x, r2.w);
  r2.x = cmp(r2.w == r2.x);
  r5.yzw = float3(1,-1,-1) * r1.yzw;
  r3.x = 2 + r2.w;
  r5.x = 1;
  r1.x = 0;
  r1.xyzw = r2.xxxx ? r5.xyzw : r1.xyzw;
  r2.x = r2.x ? r3.x : r2.w;
  r2.y = cmp(r2.x == r2.y);
  r5.yzw = float3(-1,1,-1) * r1.yzw;
  r2.w = 2 + r2.x;
  r5.x = 2;
  r1.xyzw = r2.yyyy ? r5.xyzw : r1.xyzw;
  r2.x = r2.y ? r2.w : r2.x;
  r2.x = cmp(r2.x == r2.z);
  r5.yzw = float3(-1,-1,1) * r1.yzw;
  r5.x = 3;
  r1.xyzw = r2.xxxx ? r5.xyzw : r1.xyzw;
  r2.x = r1.y + r1.z;
  r2.z = r2.x + r1.w;
  r2.y = r1.w + -r1.y;
  r2.x = -r1.z * 3 + r2.z;
  r1.yzw = float3(0.408248305,0.707106769,0.577350259) * r2.xyz;
  r1.w = 1 + abs(r1.w);
  r1.w = rsqrt(r1.w);
  r1.yz = r1.yz * r1.ww;
  o1.xy = r1.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.w * 0.49755621 + 0.5;
  r0.w = (uint)r1.x;
  o1.w = 0.333333343 * r0.w;
  r1.xy = (uint2)v0.xy;
  r2.y = r4.x * r3.z + -r3.w;
  r0.w = r2.y * 0.5 + r3.w;
  r2.z = r4.y * r3.z + -r0.w;
  r2.x = r2.z * 0.5 + r0.w;
  r1.xy = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.y == (int)r1.x);
  r1.xy = r0.ww ? r2.xy : r2.xz;
  o2.xy = r1.xy * float2(1,0.5) + float2(0,0.5);
  o0.xyz = r0.xyz;
  o0.w = 1;
  o2.zw = float2(1,0.666666687);
  return;
}