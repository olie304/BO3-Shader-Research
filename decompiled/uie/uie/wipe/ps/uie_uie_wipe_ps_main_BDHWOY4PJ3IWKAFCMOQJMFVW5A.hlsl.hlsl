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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(scriptVector0.x < 0);
  r1.x = scriptVector0.x;
  r1.y = 0;
  r0.xy = r0.xx ? r1.xy : r1.yx;
  r1.xz = max(float2(9.99999975e-05,0), scriptVector1.xy);
  r0.zw = r1.zz * r0.xy;
  r0.zw = ceil(r0.zw);
  r0.zw = r0.zw / r1.zz;
  r1.yw = max(float2(9.99999975e-05,0), scriptVector3.xy);
  r2.xy = cmp(float2(0,0) < r1.zw);
  r0.xy = r2.xx ? r0.zw : r0.xy;
  r1.z = cmp(scriptVector2.x < 0);
  r2.z = scriptVector2.x;
  r2.w = 0;
  r2.xz = r1.zz ? r2.zw : r2.wz;
  r3.xy = r2.xz * r1.ww;
  r3.xy = ceil(r3.xy);
  r1.zw = r3.xy / r1.ww;
  r0.zw = r2.yy ? r1.zw : r2.xz;
  r1.xy = r0.yw + -r1.xy;
  r0.yw = -r1.xy + r0.yw;
  r1.xy = v2.xy + -r1.xy;
  r0.xz = v2.xy + -r0.xz;
  r0.xz = saturate(float2(10000,10000) * r0.xz);
  r0.yw = float2(1,1) / r0.yw;
  r0.yw = saturate(r1.xy * r0.yw);
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