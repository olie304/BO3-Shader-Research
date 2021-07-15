// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:19 2021

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

StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
StructuredBuffer<boneMatrixBuffer> boneMatrixBuffer : register(t5);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float3 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  uint v3 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0,
  out float3 o2 : TEXCOORD1)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(12), t4.xxxx
r0.x = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(0), t5.xyzw
r1.x = modelInstanceBuffer[]..swiz;
r1.y = modelInstanceBuffer[]..swiz;
r1.z = modelInstanceBuffer[]..swiz;
r1.w = modelInstanceBuffer[]..swiz;
  r2.x = r1.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(16), t5.xyzw
r3.x = modelInstanceBuffer[]..swiz;
r3.y = modelInstanceBuffer[]..swiz;
r3.z = modelInstanceBuffer[]..swiz;
r3.w = modelInstanceBuffer[]..swiz;
  r2.y = r3.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(32), t5.xyzw
r4.x = modelInstanceBuffer[]..swiz;
r4.y = modelInstanceBuffer[]..swiz;
r4.z = modelInstanceBuffer[]..swiz;
r4.w = modelInstanceBuffer[]..swiz;
  r2.z = r4.w;
  r0.yzw = -eyeOffset.xyz + r2.xyz;
  r3.w = r0.z;
  r2.xyz = v0.xyz;
  r2.w = 1;
  r0.z = dot(r2.xyzw, r3.xyzw);
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r0.zzzz;
  r1.w = r0.y;
  r4.w = r0.w;
  r0.y = dot(r2.xyzw, r4.xyzw);
  r0.z = dot(r2.xyzw, r1.xyzw);
  r1.xyzw = r0.zzzz * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r1.xyzw = r0.yyyy * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  o0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
  o1.xy = v1.xy;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(0), t5.xxyz
r0.y = modelInstanceBuffer[]..swiz;
r0.z = modelInstanceBuffer[]..swiz;
r0.w = modelInstanceBuffer[]..swiz;
  r1.xyz = v2.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  o2.x = dot(r1.xyz, r0.yzw);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(16), t5.xxyz
r0.y = modelInstanceBuffer[]..swiz;
r0.z = modelInstanceBuffer[]..swiz;
r0.w = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, r0.x, l(32), t5.xyzx
r2.x = modelInstanceBuffer[]..swiz;
r2.y = modelInstanceBuffer[]..swiz;
r2.z = modelInstanceBuffer[]..swiz;
  o2.z = dot(r1.xyz, r2.xyz);
  o2.y = dot(r1.xyz, r0.yzw);
  return;
}