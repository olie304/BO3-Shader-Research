// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:31:37 2021

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
  float2 wind1Parms : packoffset(c11.z);
  float2 wind2Parms : packoffset(c12);
  float2 wind3Parms : packoffset(c12.z);
  float2 vertexColorScale : packoffset(c13);
  float3 treeCanopyScatterColor : packoffset(c14);
  float backsideGlossScale : packoffset(c14.w);
}

SamplerState colorSampler_s : register(s1);
SamplerState normalSampler_s : register(s2);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> tintMask : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> specColorMapThick : register(t9);
Texture2D<float4> underFfuseMap : register(t10);


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

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.w = cmp(r0.w < 0.5);
  if (r0.w != 0) discard;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r0.w = tintMask.Sample(colorSampler_s, v2.xy).x;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.w = saturate(0.0588235296 * glossRange.y);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r1.w = r2.z * r2.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.w = max(0, r0.w);
  if (v6.x == 0) {
    r1.w = max(9.99999975e-05, backsideGlossScale);
    r0.w = r1.w * r0.w;
    r3.xyzw = underFfuseMap.Sample(colorSampler_s, v2.xy).xyzw;
    r1.w = cmp(r3.w < 0.5);
    if (r1.w != 0) discard;
    r3.xyz = r3.xyz * r1.xyz;
  } else {
    r3.xyz = r1.xyz * r0.xyz;
  }
  r0.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r0.z = sqrt(r0.z);
  r1.x = v6.x ? 1 : -1;
  r1.y = dot(v3.xyz, v3.xyz);
  r1.y = rsqrt(r1.y);
  r1.yzw = v3.xyz * r1.yyy;
  r2.xyz = r1.yzw * r1.xxx;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = v4.xyz * r2.www;
  r4.xyz = r4.xyz * r1.xxx;
  r2.w = dot(v5.xyz, v5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = v5.xyz * r2.www;
  r5.xyz = r5.xyz * r1.xxx;
  r5.xyz = r5.xyz * r0.yyy;
  r4.xyz = r4.xyz * r0.xxx + r5.xyz;
  r0.xyz = r2.xyz * r0.zzz + r4.xyz;
  r2.z = dot(r0.xyz, r0.xyz);
  r2.z = rsqrt(r2.z);
  r4.yzw = r2.zzz * r0.xyz;
  r0.x = specColorMapThick.Sample(colorSampler_s, v2.xy).x;
  r0.x = 1 + -r0.x;
  r5.xyz = treeCanopyScatterColor.xyz * r3.xyz;
  r0.y = r5.z * r0.x;
  r0.z = r2.x + r2.y;
  r0.z = r1.w * r1.x + r0.z;
  r0.z = 0.5 * r0.z;
  r1.xyz = r1.yzw * r1.xxx + -r0.zzz;
  r1.w = max(r1.y, r1.z);
  r1.w = max(r1.x, r1.w);
  r0.z = max(r1.w, r0.z);
  r1.x = cmp(r0.z == r1.x);
  r2.yzw = float3(1,-1,-1) * r4.yzw;
  r1.w = 2 + r0.z;
  r2.x = 1;
  r4.x = 0;
  r2.xyzw = r1.xxxx ? r2.xyzw : r4.xyzw;
  r0.z = r1.x ? r1.w : r0.z;
  r1.x = cmp(r0.z == r1.y);
  r4.yzw = float3(-1,1,-1) * r2.yzw;
  r1.y = 2 + r0.z;
  r4.x = 2;
  r2.xyzw = r1.xxxx ? r4.xyzw : r2.xyzw;
  r0.z = r1.x ? r1.y : r0.z;
  r0.z = cmp(r0.z == r1.z);
  r1.yzw = float3(-1,-1,1) * r2.yzw;
  r1.x = 3;
  r1.xyzw = r0.zzzz ? r1.xyzw : r2.xyzw;
  r0.z = r1.y + r1.z;
  r2.z = r0.z + r1.w;
  r2.y = r1.w + -r1.y;
  r2.x = -r1.z * 3 + r2.z;
  r1.yzw = float3(0.408248305,0.707106769,0.577350259) * r2.xyz;
  r0.z = 1 + abs(r1.w);
  r0.z = rsqrt(r0.z);
  r1.yz = r1.yz * r0.zz;
  o1.xy = r1.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  o1.z = r0.w * 0.49755621 + 0.5;
  r0.z = (uint)r1.x;
  o1.w = 0.333333343 * r0.z;
  r0.zw = (uint2)v0.xy;
  r1.y = r5.x * r0.x + -r0.y;
  r0.y = r1.y * 0.5 + r0.y;
  r1.z = r5.y * r0.x + -r0.y;
  r1.x = r1.z * 0.5 + r0.y;
  r0.xy = (int2)r0.zw & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  o0.xyz = r3.xyz;
  o0.w = 1;
  o2.z = w1.x;
  o2.w = 0.666666687;
  return;
}