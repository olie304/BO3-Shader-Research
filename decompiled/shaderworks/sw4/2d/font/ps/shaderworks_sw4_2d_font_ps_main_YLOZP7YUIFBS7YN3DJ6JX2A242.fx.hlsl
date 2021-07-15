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

SamplerState FontTextutre_Sampler_s : register(s1);
Texture2D<float4> FontTextutre : register(t0);


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

  r0.x = FontTextutre.Sample(FontTextutre_Sampler_s, v2.xy).w;
  r0.xy = float2(1,0.5) + -r0.xx;
  r0.y = r0.y / scriptVector0.x;
  r0.y = saturate(1 + -r0.y);
  r0.z = cmp(scriptVector0.y >= 0);
  if (r0.z != 0) {
    r0.z = 1 + -scriptVector0.y;
    r0.w = 1 + -r0.z;
    r0.w = 0.25 * r0.w;
    r1.xyzw = float4(0.00999999978,0.00999999978,-0.00999999978,-0.00999999978) + v2.xyxy;
    r1.x = FontTextutre.Sample(FontTextutre_Sampler_s, r1.xy).w;
    r1.x = 1 + -r1.x;
    r1.x = r1.x * r0.w;
    r0.z = r0.x * r0.z + r1.x;
    r1.x = FontTextutre.Sample(FontTextutre_Sampler_s, r1.zw).w;
    r1.x = 1 + -r1.x;
    r0.z = r1.x * r0.w + r0.z;
    r1.xyzw = float4(-0.00999999978,0.00999999978,0.00999999978,-0.00999999978) + v2.xyxy;
    r1.x = FontTextutre.Sample(FontTextutre_Sampler_s, r1.xy).w;
    r1.x = 1 + -r1.x;
    r0.z = r1.x * r0.w + r0.z;
    r1.x = FontTextutre.Sample(FontTextutre_Sampler_s, r1.zw).w;
    r1.x = 1 + -r1.x;
    r0.z = r1.x * r0.w + r0.z;
    r0.z = -scriptVector3.w * scriptVector0.w + r0.z;
    r0.w = -scriptVector3.w * scriptVector0.w + scriptVector0.w;
    r0.w = max(0.00100000005, r0.w);
    r0.z = saturate(r0.z / r0.w);
    r0.z = 1 + -r0.z;
    r1.w = scriptVector2.w * r0.z;
    r0.z = cmp(scriptVector3.z >= 0);
    r0.w = scriptVector3.z * 0.5 + 0.5;
    r0.w = r0.x + -r0.w;
    r0.w = saturate(r0.w / scriptVector0.x);
    r0.w = 1 + -r0.w;
    r1.xyz = scriptVector2.xyz;
    r2.xyzw = scriptVector5.xyzw + -r1.xyzw;
    r2.xyzw = r0.wwww * r2.xyzw + r1.xyzw;
    r1.xyzw = r0.zzzz ? r2.xyzw : r1.xyzw;
    r2.xyzw = scriptVector1.xyzw + -r1.xyzw;
    r1.xyzw = r0.yyyy * r2.wxyz + r1.wxyz;
    o0.xyz = r1.yzw;
  } else {
    r0.z = cmp(scriptVector3.z >= 0);
    r0.w = scriptVector3.z * 0.5 + 0.5;
    r0.x = r0.x + -r0.w;
    r0.x = saturate(r0.x / scriptVector0.x);
    r0.x = 1 + -r0.x;
    r2.w = scriptVector5.w * r0.x;
    r2.xyz = scriptVector5.xyz;
    r3.xyzw = scriptVector1.xyzw + -r2.xyzw;
    r2.xyzw = r0.yyyy * r3.xyzw + r2.xyzw;
    r3.w = scriptVector1.w * r0.y;
    r3.xyz = scriptVector1.xyz;
    r1.xyzw = r0.zzzz ? r2.wxyz : r3.wxyz;
    o0.xyz = r1.yzw;
  }
  o0.w = v1.w * r1.x;
  return;
}