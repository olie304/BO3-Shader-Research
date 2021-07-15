// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:13 2021

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

SamplerState floatZWriteDepthSampler_s : register(s1);
TextureCubeArray<float3> floatCubeArraySampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_TARGET0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)scriptVector0.x;
  r0.y = (int)r0.x ^ 6;
  r0.z = max((int)-r0.x, (int)r0.x);
  uiDest.z = (uint)r0.z / 6;
  r0.z = uiDest.z;
  r0.w = -(int)r0.z;
  r0.y = (int)r0.y & 0x80000000;
  r0.y = r0.y ? r0.w : r0.z;
  r0.x = mad((int)r0.y, -6, (int)r0.x);
  switch (r0.x) {
    case 0 :    r1.x = 1;
    r1.yz = v2.yx * float2(-2,-2) + float2(1,1);
    break;
    case 1 :    r1.x = -1;
    r1.yz = v2.yx * float2(-2,2) + float2(1,-1);
    break;
    case 2 :    r1.xz = v2.xy * float2(2,2) + float2(-1,-1);
    r1.y = 1;
    break;
    case 3 :    r1.xz = v2.xy * float2(2,-2) + float2(-1,1);
    r1.y = -1;
    break;
    case 4 :    r1.xy = v2.xy * float2(2,-2) + float2(-1,1);
    r1.z = 1;
    break;
    default :
    r1.xy = v2.xy * float2(-2,-2) + float2(1,1);
    r1.z = -1;
    break;
  }
  r1.w = (int)r0.y;
  r0.x = floatCubeArraySampler.SampleLevel(floatZWriteDepthSampler_s, r1.xyzw, 0).x;
  o0.xyzw = float4(0,0,0,0);
  oDepth = r0.x;
  return;
}