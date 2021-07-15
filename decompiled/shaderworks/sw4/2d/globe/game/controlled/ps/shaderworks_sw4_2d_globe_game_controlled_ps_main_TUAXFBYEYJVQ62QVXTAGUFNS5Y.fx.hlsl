// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:36 2021

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

SamplerState DayMap_Sampler_s : register(s1);
SamplerState Mesh_Sampler_s : register(s2);
Texture2D<float4> DayMap : register(t0);
Texture2D<float4> Mesh : register(t6);


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

  r0.xy = v2.yx * float2(2,2) + float2(-1,-1);
  r0.z = -r0.y * r0.y + 1;
  r0.z = -r0.x * r0.x + r0.z;
  r0.w = sqrt(r0.z);
  r0.z = cmp(r0.z >= 0);
  sincos(scriptVector2.z, r1.x, r2.x);
  r1.xy = r1.xx * r0.xy;
  r0.y = r0.y * r2.x + -r1.x;
  r0.x = r0.x * r2.x + r1.y;
  sincos(scriptVector2.x, r1.x, r2.x);
  r1.y = r1.x * r0.w;
  r1.y = r0.x * r2.x + -r1.y;
  r1.z = r2.x * r0.w;
  r0.x = r0.x * r1.x + r1.z;
  sincos(scriptVector2.y, r1.x, r2.x);
  r1.z = r1.x * r0.x;
  r1.z = r0.y * r2.x + -r1.z;
  r0.x = r2.x * r0.x;
  r0.x = r0.y * r1.x + r0.x;
  r0.y = min(abs(r1.z), abs(r0.x));
  r1.x = max(abs(r1.z), abs(r0.x));
  r1.x = 1 / r1.x;
  r0.y = r1.x * r0.y;
  r1.x = r0.y * r0.y;
  r1.w = r1.x * 0.0208350997 + -0.0851330012;
  r1.w = r1.x * r1.w + 0.180141002;
  r1.w = r1.x * r1.w + -0.330299497;
  r1.x = r1.x * r1.w + 0.999866009;
  r1.w = r1.x * r0.y;
  r2.x = cmp(abs(r0.x) < abs(r1.z));
  r1.w = r1.w * -2 + 1.57079637;
  r1.w = r2.x ? r1.w : 0;
  r0.y = r0.y * r1.x + r1.w;
  r1.x = cmp(r0.x < -r0.x);
  r1.x = r1.x ? -3.141593 : 0;
  r0.y = r1.x + r0.y;
  r1.x = min(r1.z, r0.x);
  r0.x = max(r1.z, r0.x);
  r1.x = cmp(r1.x < -r1.x);
  r0.x = cmp(r0.x >= -r0.x);
  r0.x = r0.x ? r1.x : 0;
  r0.x = r0.x ? -r0.y : r0.y;
  r0.x = r0.x * 0.159154937 + 0.5;
  r1.x = 1 + -abs(r1.y);
  r1.x = sqrt(r1.x);
  r1.z = abs(r1.y) * -0.0187292993 + 0.0742610022;
  r1.z = r1.z * abs(r1.y) + -0.212114394;
  r1.z = r1.z * abs(r1.y) + 1.57072878;
  r1.w = r1.z * r1.x;
  r1.w = r1.w * -2 + 3.14159274;
  r2.x = cmp(-r1.y < r1.y);
  r1.w = r2.x ? r1.w : 0;
  r1.x = r1.z * r1.x + r1.w;
  r0.y = 0.318309873 * r1.x;
  r2.xyzw = Mesh.Sample(Mesh_Sampler_s, r0.xy).xyzw;
  r3.xyzw = DayMap.Sample(DayMap_Sampler_s, r0.xy).xyzw;
  if (r0.z != 0) {
    r0.x = r0.w * r0.w;
    r0.x = 20 * r0.x;
    r0.x = min(1, r0.x);
    r0.y = 1 + -r1.y;
    r0.z = r0.y * 0.5 + -scriptVector0.x;
    r0.z = saturate(20 * r0.z);
    r0.z = 1 + -r0.z;
    r0.z = r0.x * r0.z;
    r0.w = 1 + -scriptVector0.y;
    r0.y = r0.y * 0.5 + -r0.w;
    r0.y = saturate(20 * r0.y);
    r0.x = r0.x * r0.y;
    r2.w = r2.w * r0.z;
    r1.w = r3.w * r0.x;
    r1.xyz = r3.xyz;
    r2.xyzw = r2.xyzw * r2.wwww;
    r0.x = -r3.w * r0.x + 1;
    r0.xyzw = r2.xyzw * r0.xxxx;
    r0.xyzw = r1.wwww * r1.xyzw + r0.xyzw;
    r0.xyz = r0.xyz / r0.www;
  } else {
    r0.xyzw = float4(0,0,0,0);
  }
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}