// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:38 2021

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
  float2 P1 : packoffset(c10);
  float LineWidth : packoffset(c10.z);
  float2 P2 : packoffset(c11);
  float3 LineColor : packoffset(c12);
  float CapWidth : packoffset(c12.w);
  float2 Dimensions : packoffset(c13);
}

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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v2.xy * scriptVector0.xy + -scriptVector1.xy;
  r0.zw = scriptVector1.zw + -scriptVector1.xy;
  r0.xy = r0.xy * r0.zw;
  r0.x = r0.x + r0.y;
  r1.xy = r0.zw * r0.zw;
  r0.y = r1.x + r1.y;
  r0.x = r0.x / r0.y;
  r1.x = -1 + r0.x;
  r1.x = min(abs(r1.x), abs(r0.x));
  r1.x = r1.x * r1.x;
  r0.y = r1.x * r0.y;
  r1.xy = scriptVector0.zw * scriptVector0.zw;
  r0.y = min(r1.y, r0.y);
  r0.y = scriptVector0.w * scriptVector0.w + -r0.y;
  r0.y = r0.y / r1.y;
  r1.y = cmp(r0.x < 0);
  r1.z = cmp(1 < r0.x);
  r0.xz = r0.xx * r0.zw + scriptVector1.xy;
  r0.xz = -v2.xy * scriptVector0.xy + r0.xz;
  r0.xz = r0.xz * r0.xz;
  r0.x = r0.x + r0.z;
  r0.x = min(r0.x, r1.x);
  r0.x = scriptVector0.z * scriptVector0.z + -r0.x;
  r0.x = r0.x / r1.x;
  r0.z = (int)r1.z | (int)r1.y;
  r0.y = r0.z ? r0.y : 1;
  r0.x = r0.x * r0.y;
  r0.y = cmp(0 < r0.x);
  r1.w = r0.y ? r0.x : 0;
  r1.xyz = r0.yyy ? LineColor.xyz : 0;
  o0.xyzw = v1.xyzw * r1.xyzw;
  return;
}