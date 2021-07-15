// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:38 2021

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
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0.5 * scriptVector3.x;
  r0.y = -scriptVector3.x * 0.5 + 1;
  r0.z = -scriptVector3.x * 0.5 + r0.y;
  r0.w = -scriptVector0.x + v2.y;
  r1.x = scriptVector1.x + -scriptVector0.x;
  r1.y = -scriptVector3.x * 0.5 + v2.x;
  r1.x = r1.x * r1.y;
  r0.z = r0.z * r0.w + -r1.x;
  r1.xyz = scriptVector2.xyz * v1.xyz;
  r0.z = 100 * abs(r0.z);
  r0.z = min(1, r0.z);
  r0.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = -r0.w * r0.z + 1;
  r0.z = v1.w * r0.z;
  r2.xy = cmp(float2(0,0) < scriptVector3.wz);
  r0.w = 1 + -scriptVector3.x;
  r2.z = cmp(v2.x >= r0.w);
  r2.w = r2.z ? r2.x : 0;
  r3.x = cmp(v2.x < scriptVector3.x);
  r3.y = r2.y ? r3.x : 0;
  r2.w = (int)r2.w | (int)r3.y;
  if (r2.w != 0) {
    r2.w = cmp(0.5 < scriptVector0.x);
    r2.w = r2.w ? r2.y : 0;
    r2.w = r3.x ? r2.w : 0;
    r3.y = scriptVector3.y * 0.5 + scriptVector0.x;
    r3.y = cmp(v2.y < r3.y);
    r3.z = -scriptVector3.y * 0.5 + scriptVector0.x;
    r3.z = cmp(r3.z < v2.y);
    r3.y = r3.z ? r3.y : 0;
    r2.w = r2.w ? r3.y : 0;
    r3.z = cmp(0.5 < scriptVector1.x);
    r3.z = r2.x ? r3.z : 0;
    r0.w = cmp(r0.w < v2.x);
    r3.z = r0.w ? r3.z : 0;
    r3.w = scriptVector3.y * 0.5 + scriptVector1.x;
    r3.w = cmp(v2.y < r3.w);
    r4.x = -scriptVector3.y * 0.5 + scriptVector1.x;
    r4.x = cmp(r4.x < v2.y);
    r3.w = r3.w ? r4.x : 0;
    r3.z = r3.w ? r3.z : 0;
    r2.w = (int)r2.w | (int)r3.z;
    r3.z = cmp(0.5 >= scriptVector0.x);
    r2.y = r2.y ? r3.z : 0;
    r2.y = r3.x ? r2.y : 0;
    r2.y = r3.y ? r2.y : 0;
    r3.y = cmp(scriptVector1.x < 0.5);
    r2.x = r2.x ? r3.y : 0;
    r0.w = r0.w ? r2.x : 0;
    r0.w = r3.w ? r0.w : 0;
    r0.w = (int)r0.w | (int)r2.y;
    r2.x = cmp(v2.x >= r0.y);
    r2.y = cmp(v2.x < r0.x);
    r2.x = (int)r2.y | (int)r2.x;
    r1.w = r2.x ? 0 : r0.z;
    r4.xy = float2(0,1);
    r4.w = v1.w;
    r5.xyzw = r0.wwww ? r4.xyxw : r1.xyzw;
    o0.xyzw = r2.wwww ? r4.yxxw : r5.xyzw;
  } else {
    r2.xy = cmp(scriptVector3.zw == float2(0,0));
    r0.w = r3.x ? r2.x : 0;
    r1.w = scriptVector3.y * 0.5 + scriptVector0.x;
    r1.w = cmp(v2.y < r1.w);
    r2.w = -scriptVector3.y * 0.5 + scriptVector0.x;
    r2.w = cmp(r2.w < v2.y);
    r1.w = r1.w ? r2.w : 0;
    r0.w = r0.w ? r1.w : 0;
    r0.x = cmp(v2.x < r0.x);
    r0.x = r0.x ? r2.x : 0;
    r0.x = (int)r0.x | (int)r0.w;
    r0.w = r2.z ? r2.y : 0;
    r1.w = scriptVector3.y * 0.5 + scriptVector1.x;
    r1.w = cmp(v2.y < r1.w);
    r2.x = -scriptVector3.y * 0.5 + scriptVector1.x;
    r2.x = cmp(r2.x < v2.y);
    r1.w = r1.w ? r2.x : 0;
    r0.w = r0.w ? r1.w : 0;
    r0.x = (int)r0.w | (int)r0.x;
    r0.y = cmp(v2.x >= r0.y);
    r0.y = r0.y ? r2.y : 0;
    r0.x = (int)r0.y | (int)r0.x;
    o0.w = r0.x ? 0 : r0.z;
    o0.xyz = r1.xyz;
  }
  return;
}