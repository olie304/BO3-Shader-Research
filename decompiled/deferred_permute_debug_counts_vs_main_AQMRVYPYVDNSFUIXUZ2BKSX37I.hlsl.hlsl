// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:18 2021

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

cbuffer PerSceneConsts : register(b1)
{
  row_major float4x4 projectionMatrix : packoffset(c0);
  row_major float4x4 viewMatrix : packoffset(c4);
  row_major float4x4 viewProjectionMatrix : packoffset(c8);
  row_major float4x4 inverseProjectionMatrix : packoffset(c12);
  row_major float4x4 inverseViewMatrix : packoffset(c16);
  row_major float4x4 inverseViewProjectionMatrix : packoffset(c20);
  float4 eyeOffset : packoffset(c24);
  float4 adsZScale : packoffset(c25);
  float4 hdrControl0 : packoffset(c26);
  float4 hdrControl1 : packoffset(c27);
  float4 fogColor : packoffset(c28);
  float4 fogConsts : packoffset(c29);
  float4 fogConsts2 : packoffset(c30);
  float4 fogConsts3 : packoffset(c31);
  float4 fogConsts4 : packoffset(c32);
  float4 fogConsts5 : packoffset(c33);
  float4 fogConsts6 : packoffset(c34);
  float4 fogConsts7 : packoffset(c35);
  float4 fogConsts8 : packoffset(c36);
  float4 fogConsts9 : packoffset(c37);
  float3 sunFogDir : packoffset(c38);
  float4 sunFogColor : packoffset(c39);
  float2 sunFog : packoffset(c40);
  float4 zNear : packoffset(c41);
  float3 clothPrimaryTint : packoffset(c42);
  float3 clothSecondaryTint : packoffset(c43);
  float4 renderTargetSize : packoffset(c44);
  float4 upscaledTargetSize : packoffset(c45);
  float4 materialColor : packoffset(c46);
  float4 cameraUp : packoffset(c47);
  float4 cameraLook : packoffset(c48);
  float4 cameraSide : packoffset(c49);
  float4 cameraVelocity : packoffset(c50);
  float4 skyMxR : packoffset(c51);
  float4 skyMxG : packoffset(c52);
  float4 skyMxB : packoffset(c53);
  float4 sunMxR : packoffset(c54);
  float4 sunMxG : packoffset(c55);
  float4 sunMxB : packoffset(c56);
  float4 skyRotationTransition : packoffset(c57);
  float4 debugColorOverride : packoffset(c58);
  float4 debugAlphaOverride : packoffset(c59);
  float4 debugNormalOverride : packoffset(c60);
  float4 debugSpecularOverride : packoffset(c61);
  float4 debugGlossOverride : packoffset(c62);
  float4 debugOcclusionOverride : packoffset(c63);
  float4 debugStreamerControl : packoffset(c64);
  float4 emblemLUTSelector : packoffset(c65);
  float4 colorMatrixR : packoffset(c66);
  float4 colorMatrixG : packoffset(c67);
  float4 colorMatrixB : packoffset(c68);
  float4 gameTime : packoffset(c69);
  float4 gameTick : packoffset(c70);
  float4 subpixelOffset : packoffset(c71);
  float4 viewportDimensions : packoffset(c72);
  float4 viewSpaceScaleBias : packoffset(c73);
  float4 ui3dUVSetup0 : packoffset(c74);
  float4 ui3dUVSetup1 : packoffset(c75);
  float4 ui3dUVSetup2 : packoffset(c76);
  float4 ui3dUVSetup3 : packoffset(c77);
  float4 ui3dUVSetup4 : packoffset(c78);
  float4 ui3dUVSetup5 : packoffset(c79);
  float4 clipSpaceLookupScale : packoffset(c80);
  float4 clipSpaceLookupOffset : packoffset(c81);
  uint4 computeSpriteControl : packoffset(c82);
  float4 invBcTexSizes : packoffset(c83);
  float4 invMaskTexSizes : packoffset(c84);
  float4 relHDRExposure : packoffset(c85);
  uint4 triDensityFlags : packoffset(c86);
  float4 triDensityParams : packoffset(c87);
  float4 voldecalRevealTextureInfo : packoffset(c88);
  float4 extraClipPlane0 : packoffset(c89);
  float4 extraClipPlane1 : packoffset(c90);
  float4 shaderDebug : packoffset(c91);
  uint isDepthHack : packoffset(c92);
}

Buffer<uint> codeBuffer0 : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
StructuredBuffer<boneMatrixBuffer> boneMatrixBuffer : register(t5);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  uint v3 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = codeBuffer0.Load(float4(0,0,0,0)).x;
  r0.y = r0.x;
  r0.z = 1;
  while (true) {
    r0.w = cmp((int)r0.z >= 64);
    if (r0.w != 0) break;
    r0.w = (int)r0.z * 3;
    r0.w = codeBuffer0.Load(r0.w).x;
    r0.y = (int)r0.w + (int)r0.y;
    r0.z = (int)r0.z + 1;
  }
  r0.x = 3 * scriptVector0.x;
  r0.x = (uint)r0.x;
  r0.x = codeBuffer0.Load(r0.x).x;
  r0.z = (uint)scriptVector0.x;
  r1.x = 0;
  r1.y = r0.z;
  while (true) {
    r0.w = cmp((uint)r1.y < 16);
    if (r0.w != 0) break;
    r1.y = (int)r1.y + -16;
    r0.w = (int)r1.y * 3;
    r0.w = codeBuffer0.Load(r0.w).x;
    r1.x = (int)r0.w + (int)r1.x;
  }
  r0.z = cmp(v0.x < 0);
  r0.xy = (uint2)r0.xy;
  r0.x = r0.x / r0.y;
  r0.x = r0.x * scriptVector0.y + -v0.x;
  r0.x = 1 + r0.x;
  r0.x = r0.z ? r0.x : v0.x;
  r0.z = (uint)r1.x;
  r0.y = r0.z / r0.y;
  r0.x = r0.y * scriptVector0.y + r0.x;
  r0.x = 1 + r0.x;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v3.x, l(12), t4.xxxx
r1.x = codeBuffer0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(0), t5.xyzw
r2.x = codeBuffer0[]..swiz;
r2.y = codeBuffer0[]..swiz;
r2.z = codeBuffer0[]..swiz;
r2.w = codeBuffer0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
r3.x = codeBuffer0[]..swiz;
r3.y = codeBuffer0[]..swiz;
r3.z = codeBuffer0[]..swiz;
r3.w = codeBuffer0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
r1.x = codeBuffer0[]..swiz;
r1.y = codeBuffer0[]..swiz;
r1.z = codeBuffer0[]..swiz;
r1.w = codeBuffer0[]..swiz;
  r4.x = r2.w;
  r4.y = r3.w;
  r4.z = r1.w;
  r4.xyw = -eyeOffset.xyz + r4.xyz;
  r0.yzw = v0.yzw;
  r2.w = r4.x;
  r1.w = dot(r0.xyzw, r2.xyzw);
  r3.w = r4.y;
  r2.x = dot(r0.xyzw, r3.xyzw);
  r4.xyz = r1.xyz;
  r0.x = dot(r0.xyzw, r4.xyzw);
  r2.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r2.xxxx;
  r1.xyzw = r1.wwww * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r0.xyzw = r0.xxxx * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  o0.xyzw = v0.wwww * viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  o1.xyzw = v1.xyzw;
  return;
}