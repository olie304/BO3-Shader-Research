// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:43 2021

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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = saturate(scriptVector3.x);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.z = r0.y * r0.x;
  r0.w = -r0.y * r0.x + 1;
  r1.xy = float2(0.5,0.5) * scriptVector4.xy;
  r1.zw = scriptVector4.yx * v2.yx + -r1.yx;
  r2.x = min(abs(r1.z), abs(r1.w));
  r2.y = max(abs(r1.z), abs(r1.w));
  r2.y = 1 / r2.y;
  r2.x = r2.x * r2.y;
  r2.y = r2.x * r2.x;
  r2.z = r2.y * 0.0208350997 + -0.0851330012;
  r2.z = r2.y * r2.z + 0.180141002;
  r2.z = r2.y * r2.z + -0.330299497;
  r2.y = r2.y * r2.z + 0.999866009;
  r2.z = r2.x * r2.y;
  r2.w = cmp(abs(r1.w) < abs(r1.z));
  r2.z = r2.z * -2 + 1.57079637;
  r2.z = r2.w ? r2.z : 0;
  r2.x = r2.x * r2.y + r2.z;
  r2.y = cmp(r1.w < -r1.w);
  r2.y = r2.y ? -3.141593 : 0;
  r2.x = r2.x + r2.y;
  r2.y = min(r1.z, r1.w);
  r2.z = max(r1.z, r1.w);
  r2.y = cmp(r2.y < -r2.y);
  r2.z = cmp(r2.z >= -r2.z);
  r2.y = r2.z ? r2.y : 0;
  r2.x = r2.y ? -r2.x : r2.x;
  r2.y = scriptVector2.z * r0.z;
  r2.y = 0.0174532924 * r2.y;
  r2.z = r2.y;
  while (true) {
    r2.w = cmp(r2.z >= 0);
    if (r2.w != 0) break;
    r2.z = 6.28318548 + r2.z;
  }
  r2.y = r2.z;
  while (true) {
    r2.w = cmp(6.28318548 >= r2.y);
    if (r2.w != 0) break;
    r2.y = -6.28318548 + r2.y;
  }
  r2.z = r2.x + -r2.y;
  r2.w = scriptVector0.y + scriptVector0.y;
  r2.w = 6.28318548 / r2.w;
  r0.x = r0.y * r0.x + 1;
  r0.x = r2.w * r0.x;
  r0.y = r0.x * 0.5 + r2.z;
  r2.z = r0.y;
  while (true) {
    r3.x = cmp(r2.z >= 0);
    if (r3.x != 0) break;
    r2.z = 6.28318548 + r2.z;
  }
  r0.y = r2.z;
  while (true) {
    r3.x = cmp(6.28318548 >= r0.y);
    if (r3.x != 0) break;
    r0.y = -6.28318548 + r0.y;
  }
  r2.x = r2.x + r2.y;
  r0.x = r0.x * 0.5 + r2.x;
  r2.x = r0.x;
  while (true) {
    r2.z = cmp(r2.x >= 0);
    if (r2.z != 0) break;
    r2.x = 6.28318548 + r2.x;
  }
  r0.x = r2.x;
  while (true) {
    r2.z = cmp(6.28318548 >= r0.x);
    if (r2.z != 0) break;
    r0.x = -6.28318548 + r0.x;
  }
  r2.x = scriptVector0.w + -scriptVector0.z;
  r2.x = r2.x * r0.w + scriptVector0.z;
  r0.y = r0.y / r2.w;
  r2.z = floor(r0.y);
  r2.w = (int)r2.z;
  r3.x = (int)r2.w & 0x80000000;
  r2.w = max((int)-r2.w, (int)r2.w);
  r2.w = (int)r2.w & 1;
  r3.y = -(int)r2.w;
  r2.w = r3.x ? r3.y : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r0.y = -r2.z + r0.y;
  r0.y = cmp(r0.z >= r0.y);
  r0.y = (int)r0.y | (int)r2.w;
  if (r0.y != 0) {
    r2.zw = r2.xx * r1.xy;
    r3.xy = r1.wz * r1.wz;
    r2.zw = r2.zw * r2.zw;
    r2.zw = r3.xy / r2.zw;
    r0.y = r2.z + r2.w;
    r2.z = cmp(1 >= r0.y);
    r3.zw = r1.xy * r2.xx + -scriptVector0.xx;
    r4.xy = cmp(float2(0,0) >= r3.zw);
    r2.w = (int)r4.y | (int)r4.x;
    r4.x = 1 + -scriptVector2.y;
    r4.y = 1 + -r4.x;
    r0.y = -r4.x + r0.y;
    r4.x = 1 / r4.y;
    r0.y = saturate(r4.x * r0.y);
    r4.x = r0.y * -2 + 3;
    r0.y = r0.y * r0.y;
    r0.y = -r4.x * r0.y + 1;
    r3.zw = r3.zw * r3.zw;
    r3.xy = r3.xy / r3.zw;
    r3.x = r3.x + r3.y;
    r3.y = cmp(r3.x >= 1);
    r3.x = -1 + r3.x;
    r3.z = 1 / scriptVector2.y;
    r3.x = saturate(r3.x * r3.z);
    r3.z = r3.x * -2 + 3;
    r3.x = r3.x * r3.x;
    r3.x = r3.z * r3.x;
    r3.x = r3.x * r0.y;
    r3.x = r3.y ? r3.x : 0;
    r0.y = r2.w ? r0.y : r3.x;
    r0.y = r2.z ? r0.y : 0;
  } else {
    r0.y = 0;
  }
  r2.z = cmp(0 < scriptVector3.x);
  if (r2.z != 0) {
    r2.z = saturate(10 * scriptVector3.x);
    r2.w = r2.z * -2 + 3;
    r2.z = r2.z * r2.z;
    r2.z = r2.w * r2.z;
    r2.w = scriptVector1.y + scriptVector1.y;
    r2.w = 6.28318548 / r2.w;
    r0.x = r0.x / r2.w;
    r2.w = floor(r0.x);
    r3.x = (int)r2.w;
    r3.y = (int)r3.x & 0x80000000;
    r3.x = max((int)-r3.x, (int)r3.x);
    r3.x = (int)r3.x & 1;
    r3.z = -(int)r3.x;
    r3.x = r3.y ? r3.z : r3.x;
    r3.x = cmp((int)r3.x == 0);
    r0.x = -r2.w + r0.x;
    r0.x = cmp(r0.z >= r0.x);
    r0.x = (int)r0.x | (int)r3.x;
    if (r0.x != 0) {
      r0.x = scriptVector1.w + -scriptVector1.z;
      r0.x = r0.x * r0.w + scriptVector1.z;
      r0.zw = r1.xy * r0.xx;
      r3.xy = r1.wz * r1.wz;
      r0.zw = r0.zw * r0.zw;
      r0.zw = r3.xy / r0.zw;
      r0.z = r0.z + r0.w;
      r0.w = cmp(1 >= r0.z);
      r3.zw = r1.xy * r0.xx + -scriptVector1.xx;
      r4.xy = cmp(float2(0,0) >= r3.zw);
      r0.x = (int)r4.y | (int)r4.x;
      r2.w = 1 + -scriptVector2.y;
      r4.x = 1 + -r2.w;
      r0.z = -r2.w + r0.z;
      r2.w = 1 / r4.x;
      r0.z = saturate(r2.w * r0.z);
      r2.w = r0.z * -2 + 3;
      r0.z = r0.z * r0.z;
      r0.z = -r2.w * r0.z + 1;
      r3.zw = r3.zw * r3.zw;
      r3.xy = r3.xy / r3.zw;
      r2.w = r3.x + r3.y;
      r3.x = cmp(r2.w >= 1);
      r2.w = -1 + r2.w;
      r3.y = 1 / scriptVector2.y;
      r2.w = saturate(r3.y * r2.w);
      r3.y = r2.w * -2 + 3;
      r2.w = r2.w * r2.w;
      r2.w = r3.y * r2.w;
      r2.w = r2.w * r0.z;
      r2.w = r3.x ? r2.w : 0;
      r0.x = r0.x ? r0.z : r2.w;
      r0.x = r0.w ? r0.x : 0;
    } else {
      r0.x = 0;
    }
    r0.x = r2.z * r0.x;
  } else {
    r0.x = 0;
  }
  r0.z = 0.5 * scriptVector0.x;
  r0.zw = r1.xy * r2.xx + -r0.zz;
  r2.xz = r1.wz * r1.wz;
  r0.zw = r0.zw * r0.zw;
  r0.zw = r2.xz / r0.zw;
  r0.z = r0.z + r0.w;
  r0.z = cmp(1 < r0.z);
  r1.xy = r1.xy * r1.xy;
  r1.xy = r2.xz / r1.xy;
  r0.w = r1.x + r1.y;
  r0.w = cmp(1 >= r0.w);
  r0.z = r0.w ? r0.z : 0;
  sincos(-r2.y, r1.x, r2.x);
  r1.xy = r1.zw * r1.xx;
  r0.w = r1.w * r2.x + -r1.x;
  r1.x = r1.z * r2.x + r1.y;
  r1.y = 5 * scriptVector2.y;
  r1.z = -scriptVector2.x * -0.5 + r0.w;
  r1.w = 1 / r1.y;
  r1.z = saturate(r1.z * r1.w);
  r2.x = r1.z * -2 + 3;
  r1.z = r1.z * r1.z;
  r1.z = r2.x * r1.z;
  r1.y = scriptVector2.x * 0.5 + -r1.y;
  r2.x = scriptVector2.x * 0.5 + -r1.y;
  r0.w = -r1.y + r0.w;
  r2.x = 1 / r2.x;
  r0.w = saturate(r2.x * r0.w);
  r2.y = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = -r2.y * r0.w + 1;
  r3.y = r1.z * r0.w;
  r0.w = -scriptVector2.x * -0.5 + r1.x;
  r0.w = saturate(r0.w * r1.w);
  r1.z = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r1.z * r0.w;
  r1.x = r1.x + -r1.y;
  r1.x = saturate(r1.x * r2.x);
  r1.y = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = -r1.y * r1.x + 1;
  r3.x = r1.x * r0.w;
  r0.zw = r0.zz ? r3.xy : 0;
  r0.z = max(r0.w, r0.z);
  r0.x = max(r0.x, r0.z);
  r0.x = max(r0.y, r0.x);
  o0.w = v1.w * r0.x;
  o0.xyz = v1.xyz;
  return;
}