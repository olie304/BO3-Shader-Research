// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:39 2021

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(0.5,0.5) * scriptVector1.xy;
  r0.xy = scriptVector1.xy * v2.xy + -r0.xy;
  r0.z = min(abs(r0.y), abs(r0.x));
  r0.w = max(abs(r0.y), abs(r0.x));
  r0.w = 1 / r0.w;
  r0.z = r0.z * r0.w;
  r0.w = r0.z * r0.z;
  r1.x = r0.w * 0.0208350997 + -0.0851330012;
  r1.x = r0.w * r1.x + 0.180141002;
  r1.x = r0.w * r1.x + -0.330299497;
  r0.w = r0.w * r1.x + 0.999866009;
  r1.x = r0.z * r0.w;
  r1.y = cmp(abs(r0.x) < abs(r0.y));
  r1.x = r1.x * -2 + 1.57079637;
  r1.x = r1.y ? r1.x : 0;
  r0.z = r0.z * r0.w + r1.x;
  r0.w = cmp(r0.x < -r0.x);
  r0.w = r0.w ? -3.141593 : 0;
  r0.z = r0.z + r0.w;
  r0.w = min(r0.y, r0.x);
  r1.x = max(r0.y, r0.x);
  r0.w = cmp(r0.w < -r0.w);
  r1.x = cmp(r1.x >= -r1.x);
  r0.w = r0.w ? r1.x : 0;
  r0.z = r0.w ? -r0.z : r0.z;
  r0.w = cmp(r0.z < 0);
  r1.x = 3.14159274 + r0.z;
  r0.z = r0.w ? r1.x : r0.z;
  r0.w = cmp(1.57079637 < r0.z);
  r1.x = -1.57079637 + r0.z;
  r1.x = 1.57079637 + -r1.x;
  r0.z = r0.w ? r1.x : r0.z;
  r0.w = 0.00872664619 * scriptVector3.y;
  r0.w = cmp(r0.w >= r0.z);
  r1.x = -scriptVector3.z * 0.00872664619 + 1.57079637;
  r0.z = cmp(r0.z >= r1.x);
  r0.z = (int)r0.z | (int)r0.w;
  if (r0.z != 0) {
    r0.z = cmp(0 < scriptVector3.x);
    r0.w = saturate(scriptVector3.x);
    r1.xy = scriptVector1.xy * float2(0.5,0.5) + -scriptVector0.yy;
    r1.zw = r0.xy * r0.xy;
    r2.xy = r1.xy * r1.xy;
    r2.xy = r1.zw / r2.xy;
    r2.x = r2.x + r2.y;
    r2.y = cmp(1 >= r2.x);
    r1.xy = -scriptVector0.xx + r1.xy;
    r1.xy = r1.xy * r1.xy;
    r1.xy = r1.zw / r1.xy;
    r1.x = r1.x + r1.y;
    r1.y = cmp(r1.x >= 1);
    r1.z = 1 + -scriptVector2.y;
    r1.w = 1 + -r1.z;
    r1.z = r2.x + -r1.z;
    r1.w = 1 / r1.w;
    r1.z = saturate(r1.z * r1.w);
    r1.w = r1.z * -2 + 3;
    r1.z = r1.z * r1.z;
    r1.z = -r1.w * r1.z + 1;
    r1.x = -1 + r1.x;
    r1.w = 1 / scriptVector2.x;
    r1.x = saturate(r1.x * r1.w);
    r1.w = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = r1.w * r1.x;
    r1.x = r1.z * r1.x;
    r1.x = r1.y ? r1.x : 0;
    r1.x = r2.y ? r1.x : 0;
    r0.w = r1.x * r0.w;
    r0.z = r0.z ? r0.w : 0;
  } else {
    r0.z = 0;
  }
  r0.w = cmp(0 < scriptVector0.y);
  if (r0.w != 0) {
    r0.w = 0.5 * scriptVector0.x;
    r0.w = cmp(abs(r0.y) < r0.w);
    if (r0.w != 0) {
      r1.xy = cmp(float2(0,0) < scriptVector4.xy);
      r1.zw = scriptVector1.xy * float2(0.5,0.5) + -scriptVector0.yy;
      r1.zw = -scriptVector0.xx * float2(0.5,0.5) + r1.zw;
      r2.xy = r0.xy * r0.xy;
      r1.zw = r1.zw * r1.zw;
      r1.zw = r2.xy / r1.zw;
      r0.w = r1.z + r1.w;
      r1.z = cmp(1 < r0.w);
      r1.x = r1.z ? r1.x : 0;
      r1.z = -scriptVector2.z + scriptVector0.x;
      r1.w = scriptVector0.x + -r1.z;
      r0.y = -r1.z + abs(r0.y);
      r1.z = 1 / r1.w;
      r0.y = saturate(r1.z * r0.y);
      r1.z = r0.y * -2 + 3;
      r0.y = r0.y * r0.y;
      r0.y = -r1.z * r0.y + 1;
      r1.zw = scriptVector4.xy * r0.yy;
      r0.y = scriptVector1.x * 0.5 + -scriptVector2.z;
      r2.x = scriptVector1.x * 0.5 + -r0.y;
      r0.x = abs(r0.x) + -r0.y;
      r0.y = 1 / r2.x;
      r0.x = saturate(r0.x * r0.y);
      r0.y = r0.x * -2 + 3;
      r0.x = r0.x * r0.x;
      r0.x = -r0.y * r0.x + 1;
      r0.x = r1.z * r0.x;
      r0.x = max(r0.z, r0.x);
      r0.y = cmp(1 >= r0.w);
      r0.y = r0.y ? r1.y : 0;
      r0.w = max(r1.w, r0.z);
      r0.y = r0.y ? r0.w : r0.z;
      r0.z = r1.x ? r0.x : r0.y;
    }
  }
  o0.w = v1.w * r0.z;
  o0.xyz = v1.xyz;
  return;
}