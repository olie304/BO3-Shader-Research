// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:40 2021

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

SamplerState tileMipBilinearSampler_s : register(s1);
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -scriptVector1.x + v2.x;
  r0.y = -scriptVector2.x + v2.y;
  r0.z = max(abs(r0.x), abs(r0.y));
  r0.z = 1 / r0.z;
  r0.w = min(abs(r0.x), abs(r0.y));
  r0.z = r0.w * r0.z;
  r0.w = r0.z * r0.z;
  r1.x = r0.w * 0.0208350997 + -0.0851330012;
  r1.x = r0.w * r1.x + 0.180141002;
  r1.x = r0.w * r1.x + -0.330299497;
  r0.w = r0.w * r1.x + 0.999866009;
  r1.x = r0.z * r0.w;
  r1.x = r1.x * -2 + 1.57079637;
  r1.y = cmp(abs(r0.y) < abs(r0.x));
  r1.x = r1.y ? r1.x : 0;
  r0.z = r0.z * r0.w + r1.x;
  r0.w = cmp(r0.y < -r0.y);
  r0.w = r0.w ? -3.141593 : 0;
  r0.z = r0.z + r0.w;
  r0.w = min(r0.x, r0.y);
  r0.x = max(r0.x, r0.y);
  r0.x = cmp(r0.x >= -r0.x);
  r0.y = cmp(r0.w < -r0.w);
  r0.x = r0.x ? r0.y : 0;
  r0.x = r0.x ? -r0.z : r0.z;
  r0.y = cmp(-9.99999975e-05 >= scriptVector3.x);
  r0.z = max(9.99999975e-05, scriptVector3.x);
  r0.y = r0.y ? scriptVector3.x : r0.z;
  r0.zw = -scriptVector0.xy * float2(6.28318548,6.28318548) + float2(3.14159274,3.14159274);
  r1.x = r0.z + -r0.y;
  r1.y = -r1.x + r0.x;
  r1.z = r0.z + r0.y;
  r1.x = r1.z + -r1.x;
  r1.x = 1 / r1.x;
  r1.x = saturate(r1.y * r1.x);
  r1.y = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.y * r1.x;
  r1.y = r0.x + r0.y;
  r0.y = r0.x + -r0.y;
  r1.y = r1.y + -r0.y;
  r0.y = r0.w + -r0.y;
  r0.z = -scriptVector3.y + r0.z;
  r0.w = 1 / r1.y;
  r0.y = saturate(r0.y * r0.w);
  r0.w = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = r0.w * r0.y;
  r0.y = r1.x * r0.y;
  r0.w = cmp(0 < scriptVector3.y);
  r1.x = cmp(scriptVector3.y < 0);
  r0.w = (int)-r0.w + (int)r1.x;
  r0.w = (int)r0.w;
  r1.x = max(9.99999975e-05, abs(scriptVector3.y));
  r1.y = r0.w * r1.x + r0.z;
  r0.z = -r0.w * r1.x + r0.z;
  r0.w = r1.y + -r0.z;
  r0.x = r0.x + -r0.z;
  r0.z = 1 / r0.w;
  r0.x = saturate(r0.x * r0.z);
  r0.z = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r0.z * r0.x;
  r0.x = r0.y * r0.x;
  r0.z = cmp(abs(scriptVector3.y) >= 9.99999975e-05);
  r0.x = r0.z ? r0.x : r0.y;
  r1.xyzw = colorMapSampler.Sample(tileMipBilinearSampler_s, v2.xy).xyzw;
  r1.xyzw = v1.xyzw * r1.xyzw;
  o0.w = r1.w * r0.x;
  o0.xyz = r1.xyz;
  return;
}