// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:38 2021

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

SamplerState Noise_Sampler_s : register(s1);
SamplerState Wireframe_Sampler_s : register(s2);
SamplerState Image_Sampler_s : register(s3);
Texture2D<float4> Noise : register(t0);
Texture2D<float4> Wireframe : register(t6);
Texture2D<float4> Image : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = Noise.Sample(Noise_Sampler_s, v2.yx).x;
  r0.x = -0.5 + r0.x;
  r0.y = -0.5 + v2.x;
  r0.y = 0.600000024 * abs(r0.y);
  r0.x = r0.x * 0.0500000007 + r0.y;
  r0.y = v2.y + r0.x;
  r0.zw = scriptVector0.xy * float2(1.60000002,1.60000002) + float2(-0.300000012,-0.300000012);
  r0.xy = r0.wy + -r0.xw;
  r0.y = 20 * abs(r0.y);
  r0.y = min(1, r0.y);
  r0.y = 1 + -r0.y;
  r1.x = r0.y * r0.y;
  r1.xyz = r1.xxx * float3(0.100000024,0.199999988,0.200000003) + float3(0.899999976,0.689999998,0.200000003);
  r2.xyzw = Image.Sample(Image_Sampler_s, v2.xy).xyzw;
  r3.x = r2.x + r2.y;
  r3.x = r3.x + r2.z;
  r0.y = r3.x * r0.y;
  r1.w = 0.333333343 * r0.y;
  r0.y = -r0.y * 0.333333343 + 1;
  r1.xyzw = r1.xyzw * r1.wwww;
  r0.x = cmp(r0.x < v2.y);
  r0.x = r0.x ? 0 : 1;
  r2.xyzw = r2.xyzw * r0.xxxx;
  r1.xyzw = r2.xyzw * r0.yyyy + r1.xyzw;
  r0.x = 1 + -r1.w;
  r1.xyzw = r1.xyzw * r1.wwww;
  r0.y = v2.x * -0.300000012 + v2.y;
  r0.y = r0.y + -r0.z;
  r0.z = -v2.x * -0.300000012 + r0.z;
  r0.z = cmp(r0.z < v2.y);
  r0.z = r0.z ? 0 : 1;
  r0.y = 20 * abs(r0.y);
  r0.y = min(1, r0.y);
  r0.y = 1 + -r0.y;
  r0.w = r0.y * r3.x;
  r0.y = r0.y * r0.y;
  r2.xyz = r0.yyy * float3(0.100000024,0.199999988,0.200000003) + float3(0.899999976,0.689999998,0.200000003);
  r2.w = 0.333333343 * r0.w;
  r0.y = -r0.w * 0.333333343 + 1;
  r2.xyzw = r2.xyzw * r2.wwww;
  r3.w = Wireframe.Sample(Wireframe_Sampler_s, v2.xy).w;
  r3.xyz = float3(0,0,0);
  r3.xyzw = r3.xyzw * r0.zzzz;
  r2.xyzw = r3.xyzw * r0.yyyy + r2.xyzw;
  r0.xyzw = r2.xyzw * r0.xxxx + r1.xyzw;
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}