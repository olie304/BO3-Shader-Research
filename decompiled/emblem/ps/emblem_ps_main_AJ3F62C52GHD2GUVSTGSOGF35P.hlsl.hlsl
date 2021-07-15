// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:51 2021

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

SamplerState emblemSampler_s : register(s1);
SamplerState modSampler_s : register(s2);
Texture2D<float4> emblemTexture : register(t0);
Texture2D<float4> modTexture : register(t6);


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

  r0.x = cmp(scriptVector5.x != 0.000000);
  if (r0.x != 0) {
    r0.xy = (int2)v0.xy;
    r0.zw = (int2)scriptVector6.zw;
    r1.xy = cmp((int2)r0.xy == int2(0,0));
    r1.zw = (int2)r0.zw + int2(-1,-1);
    r2.xy = cmp((int2)r0.xy == (int2)r1.zw);
    r1.x = (int)r1.x | (int)r2.x;
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = (int)r2.y | (int)r1.x;
    if (r1.x != 0) {
      o0.xyzw = float4(1,0,0,1);
    } else {
      r1.x = (int)scriptVector5.z;
      r2.xy = (int2)r0.xy & int2(-2147483648,-2147483648);
      r2.zw = max((int2)-r0.xy, (int2)r0.xy);
      r1.y = max((int)-r1.x, (int)r1.x);
      r3.xy = (uint2)r2.zw % (uint2)r1.yy;
      r3.zw = -(int2)r3.xy;
      r2.xy = r2.xy ? r3.zw : r3.xy;
      r2.xy = cmp((int2)r2.xy == int2(0,0));
      r2.x = (int)r2.y | (int)r2.x;
      if (r2.x != 0) {
        o0.xyzw = float4(1,1,1,1);
      } else {
        r2.x = cmp(scriptVector5.y != 0.000000);
        if (r2.x != 0) {
          r2.xy = (int2)r0.zw ^ int2(2,2);
          r0.zw = max((int2)-r0.zw, (int2)r0.zw);
          r0.zw = (uint2)r0.zw >> int2(1,1);
          r3.xy = -(int2)r0.zw;
          r2.xy = r2.xy ? float2(-0,-0) : 0;
          r0.zw = r2.xy ? r3.xy : r0.zw;
          r0.zw = (int2)-r0.zw + (int2)r0.xy;
          r0.zw = max((int2)r0.zw, (int2)-r0.zw);
          r0.zw = cmp(int2(1,1) >= (int2)r0.zw);
          r0.z = (int)r0.w | (int)r0.z;
          r0.xy = (int2)r0.xy ^ (int2)r1.xx;
          uiDest.xy = (uint2)r2.zw / (uint2)r1.yy;
          r2.xy = uiDest.xy;
          r2.zw = -(int2)r2.xy;
          r0.xy = (int2)r0.xy & int2(-2147483648,-2147483648);
          r0.xy = r0.xy ? r2.zw : r2.xy;
          r2.xy = (int2)r1.xx ^ (int2)r1.zw;
          r1.xz = max((int2)-r1.zw, (int2)r1.zw);
          uiDest.xy = (uint2)r1.xz / (uint2)r1.yy;
          r1.xy = uiDest.xy;
          r1.zw = -(int2)r1.xy;
          r2.xy = (int2)r2.xy & int2(-2147483648,-2147483648);
          r1.xy = r2.xy ? r1.zw : r1.xy;
          r1.zw = cmp((int2)r0.xy == int2(0,0));
          r0.w = (int)r1.w | (int)r1.z;
          r0.xy = cmp((int2)r0.xy == (int2)r1.xy);
          r0.x = (int)r0.x | (int)r0.w;
          r0.x = (int)r0.y | (int)r0.x;
          r0.x = (int)r0.z | (int)r0.x;
          o0.xyzw = r0.xxxx ? float4(1,1,1,1) : 0;
        } else {
          o0.xyzw = float4(0,0,0,0);
        }
      }
    }
    return;
  }
  r0.xy = cmp(v2.xy < float2(0,0));
  r0.x = (int)r0.y | (int)r0.x;
  r0.yz = cmp(float2(1,1) < v2.xy);
  r0.y = (int)r0.z | (int)r0.y;
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) discard;
  r0.x = emblemTexture.Sample(emblemSampler_s, v2.xy).z;
  r0.yz = float2(0.5,0.5) + -scriptVector6.yx;
  r0.w = cmp(r0.x < r0.y);
  r1.x = scriptVector6.y + scriptVector6.x;
  r1.x = 0.5 + -r1.x;
  r0.y = -r1.x + r0.y;
  r1.x = -r1.x + r0.x;
  r0.y = 1 / r0.y;
  r0.y = saturate(r1.x * r0.y);
  r1.x = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = r1.x * r0.y;
  r1.x = 0.5 + scriptVector6.y;
  r1.y = cmp(r1.x < r0.x);
  r1.x = -r1.x + r0.x;
  r1.z = 1 / scriptVector6.x;
  r1.x = saturate(r1.x * r1.z);
  r1.z = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = -r1.z * r1.x + 1;
  r1.x = r1.y ? r1.x : 1;
  r0.y = r0.w ? r0.y : r1.x;
  r1.xy = cmp(float2(0,0) < scriptVector6.yx);
  r0.w = 0.5 + -r0.z;
  r0.z = r0.x + -r0.z;
  r0.w = 1 / r0.w;
  r0.z = saturate(r0.z * r0.w);
  r0.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.x = cmp(0.5 < r0.x);
  r0.x = r0.x ? 1.000000 : 0;
  r0.x = r1.y ? r0.z : r0.x;
  r0.x = r1.x ? r0.y : r0.x;
  r0.y = cmp(0 >= r0.x);
  if (r0.y != 0) discard;
  r0.y = cmp(0 != scriptVector2.z);
  r0.zw = float2(-0.5,-0.5) + v2.xy;
  r1.x = dot(r0.zw, r0.zw);
  r1.x = sqrt(r1.x);
  r1.x = 1.41421354 * r1.x;
  r1.y = 0.0174527783 * scriptVector2.x;
  sincos(r1.y, r2.x, r3.x);
  r0.w = r2.x * r0.w;
  r0.z = r0.z * r3.x + r0.w;
  r0.w = 0.5 * abs(r2.x);
  r0.w = abs(r3.x) * 0.5 + r0.w;
  r0.z = r0.z / r0.w;
  r0.z = r0.z * 0.5 + 0.5;
  r0.y = r0.y ? r1.x : r0.z;
  r0.y = max(0.00999999978, r0.y);
  r0.y = min(0.99000001, r0.y);
  r0.z = cmp(r0.y < scriptVector2.y);
  r0.w = r0.y / scriptVector2.y;
  r0.w = 0.5 * r0.w;
  r0.y = -scriptVector2.y + r0.y;
  r1.x = 1 + -scriptVector2.y;
  r0.y = r0.y / r1.x;
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.z ? r0.w : r0.y;
  r1.xyzw = scriptVector1.xyzw + -scriptVector0.xyzw;
  r1.xyzw = r0.yyyy * r1.xyzw + scriptVector0.xyzw;
  r2.xy = v2.xy;
  r2.z = 1;
  r3.x = dot(r2.xyz, scriptVector3.xyz);
  r3.y = dot(r2.xyz, scriptVector4.xyz);
  r0.yzw = modTexture.Sample(modSampler_s, r3.xy).xyz;
  o0.xyz = r1.xyz * r0.yzw;
  o0.w = r1.w * r0.x;
  return;
}