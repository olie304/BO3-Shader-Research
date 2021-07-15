// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:31:52 2021

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
  float2 rotateUVs : packoffset(c11.z);
  float2 scrollUVs : packoffset(c12);
  float2 scaleUVs : packoffset(c12.z);
  float2 offsetUVs : packoffset(c13);
  float2 zoomUVs : packoffset(c13.z);
  float zoomRate : packoffset(c14);
  float layerDepth : packoffset(c14.y);
  bool clampU : packoffset(c14.z);
  bool clampV : packoffset(c14.w);
  float2 wind1Parms : packoffset(c15);
  float2 wind2Parms : packoffset(c15.z);
  float2 wind3Parms : packoffset(c16);
  float3 backlightScatterColor : packoffset(c17);
}

SamplerState colorSampler_s : register(s1);
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> normalMap : register(t6);
Texture2D<float4> glossMap : register(t7);
Texture2D<float4> aoMap : register(t9);
Texture2D<float4> thicknessMap : register(t10);


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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r0.xyz = r1.www * r0.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  o0.xyz = r0.xyz;
  r0.xyz = backlightScatterColor.xyz * r0.xyz;
  o0.w = 1;
  r1.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = r1.z * r1.z;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = v4.xyz * r1.zzz;
  r1.z = v5.x ? 1 : -1;
  r2.xyz = r2.xyz * r1.zzz;
  r2.xyz = r2.xyz * r1.yyy;
  r1.w = dot(v3.xyz, v3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v3.xyz * r1.www;
  r3.xyz = r3.xyz * r1.zzz;
  r2.xyz = r3.xyz * r1.xxx + r2.xyz;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.y = dot(v2.xyz, v2.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = v2.xyz * r1.yyy;
  r4.xyz = r3.xyz * r1.zzz;
  r1.xyw = r4.xyz * r1.xxx + r2.xyz;
  r2.x = r4.x + r4.y;
  r2.x = r3.z * r1.z + r2.x;
  r2.x = 0.5 * r2.x;
  r2.y = dot(r1.xyw, r1.xyw);
  r2.y = rsqrt(r2.y);
  r4.yzw = r2.yyy * r1.xyw;
  r5.yzw = float3(1,-1,-1) * r4.yzw;
  r5.x = 1;
  r4.x = 0;
  r1.xyz = r3.xyz * r1.zzz + -r2.xxx;
  r1.w = max(r1.y, r1.z);
  r1.w = max(r1.x, r1.w);
  r1.w = max(r2.x, r1.w);
  r1.x = cmp(r1.w == r1.x);
  r2.xyzw = r1.xxxx ? r5.xyzw : r4.xyzw;
  r3.yzw = float3(-1,1,-1) * r2.yzw;
  r3.x = 2;
  r4.x = 2 + r1.w;
  r1.x = r1.x ? r4.x : r1.w;
  r1.y = cmp(r1.x == r1.y);
  r2.xyzw = r1.yyyy ? r3.xyzw : r2.xyzw;
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r1.w = 2 + r1.x;
  r1.x = r1.y ? r1.w : r1.x;
  r1.x = cmp(r1.x == r1.z);
  r3.x = 3;
  r1.xyzw = r1.xxxx ? r3.xyzw : r2.xyzw;
  r2.x = r1.y + r1.z;
  r2.z = r2.x + r1.w;
  r2.x = -r1.z * 3 + r2.z;
  r2.y = r1.w + -r1.y;
  r1.x = (uint)r1.x;
  o1.w = 0.333333343 * r1.x;
  r1.xyz = float3(0.408248305,0.707106769,0.577350259) * r2.xyz;
  r1.z = 1 + abs(r1.z);
  r1.z = rsqrt(r1.z);
  r1.xy = r1.xy * r1.zz;
  o1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r1.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r1.x + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.w = max(0, r0.w);
  o1.z = r0.w * 0.49755621 + 0.5;
  r0.w = thicknessMap.Sample(colorSampler_s, w1.xy).x;
  r0.w = 1 + -r0.w;
  r0.z = r0.z * r0.w;
  r1.y = r0.x * r0.w + -r0.z;
  r0.x = r1.y * 0.5 + r0.z;
  r1.z = r0.y * r0.w + -r0.x;
  r1.x = r1.z * 0.5 + r0.x;
  r0.xy = (uint2)v0.xy;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  o2.z = r0.x;
  o2.w = 0.666666687;
  return;
}