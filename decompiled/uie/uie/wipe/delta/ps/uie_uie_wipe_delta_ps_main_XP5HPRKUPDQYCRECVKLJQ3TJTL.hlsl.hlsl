// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:45 2021

cbuffer GenericsCBuffer : register(b3)
{
  float4 scriptVector0 : packoffset(c0);
  float4 scriptVector1 : packoffset(c1);
  float4 scriptVector2 : packoffset(c2);
  float4 scriptVector3 : packoffset(c3);
  float4 scriptVector4 : packoffset(c4);
  float4 scriptVector5 : packoffset(c5);
  float4 scriptVector6 : packoffset(c6);
  float4 scriptVector7 : packoffset(c7);
  float4 weaponParam0 : packoffset(c8);
  float4 weaponParam1 : packoffset(c9);
  float4 weaponParam2 : packoffset(c10);
  float4 weaponParam3 : packoffset(c11);
  float4 weaponParam4 : packoffset(c12);
  float4 weaponParam5 : packoffset(c13);
  float4 weaponParam6 : packoffset(c14);
  float4 weaponParam7 : packoffset(c15);
}

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMapSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(scriptVector0.y < scriptVector0.x);
  r0.xy = r0.xx ? scriptVector0.yx : scriptVector0.xy;
  r1.x = max(0, scriptVector1.z);
  r0.zw = r1.xx * r0.xy;
  r0.zw = ceil(r0.zw);
  r0.zw = r0.zw / r1.xx;
  r1.y = max(0, scriptVector3.z);
  r1.xz = cmp(float2(0,0) < r1.xy);
  r0.xy = r1.xx ? r0.zw : r0.xy;
  r1.x = cmp(scriptVector2.y < scriptVector2.x);
  r1.xw = r1.xx ? scriptVector2.yx : scriptVector2.xy;
  r2.xy = r1.xw * r1.yy;
  r2.xy = ceil(r2.xy);
  r2.xy = r2.xy / r1.yy;
  r0.zw = r1.zz ? r2.xy : r1.xw;
  r1.xz = max(float2(9.99999975e-05,9.99999975e-05), scriptVector1.xy);
  r1.yw = max(float2(9.99999975e-05,9.99999975e-05), scriptVector3.xy);
  r1.zw = -r1.zw + r0.yw;
  r1.xy = float2(1,1) / r1.xy;
  r0.yw = -r1.zw + r0.yw;
  r1.zw = v2.xy + -r1.zw;
  r0.xz = v2.xy + -r0.xz;
  r0.xz = saturate(r0.xz * r1.xy);
  r0.yw = float2(1,1) / r0.yw;
  r0.yw = saturate(r1.zw * r0.yw);
  r1.xy = r0.yw * float2(-2,-2) + float2(3,3);
  r0.yw = r0.yw * r0.yw;
  r0.yw = -r1.xy * r0.yw + float2(1,1);
  r1.xy = r0.xz * float2(-2,-2) + float2(3,3);
  r0.xz = r0.xz * r0.xz;
  r0.xz = r1.xy * r0.xz;
  r0.xy = r0.xz * r0.yw;
  r0.x = r0.x * r0.y;
  r1.xyzw = colorMapSampler.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyzw = v1.xyzw * r1.xyzw;
  o0.w = r1.w * r0.x;
  o0.xyz = r1.xyz;
  return;
}