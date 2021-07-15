// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:48 2021

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
  float2 scrollUVs : packoffset(c10);
  float treadDepth : packoffset(c10.z);
  float reverseTread : packoffset(c10.w);
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

SamplerState colorSampler_s : register(s1);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
StructuredBuffer<boneMatrixBuffer> boneMatrixBuffer : register(t5);
Texture2D<float4> treadHeightMap : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float3 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  float3 v2 : NORMAL0,
  uint v3 : TEXCOORD15,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
r0.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(16), t0.xyxx
r0.x = colorSampler[]..swiz;
r0.y = colorSampler[]..swiz;
  r0.z = cmp(reverseTread != 0.000000);
  r0.x = r0.z ? r0.y : r0.x;
  r0.xy = r0.xx * scrollUVs.xy + v1.xy;
  r0.x = treadHeightMap.SampleLevel(colorSampler_s, r0.xy, 0).x;
  r0.x = treadDepth * r0.x;
  r0.yzw = v2.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v3.x, l(12), t4.xxxx
r1.x = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.yzw, r1.x, l(0), t5.xxyz
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
r1.w = colorSampler[]..swiz;
  r2.x = dot(r0.yzw, r1.yzw);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.yzw, r1.x, l(16), t5.xxyz
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
r1.w = colorSampler[]..swiz;
  r2.y = dot(r0.yzw, r1.yzw);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.yzw, r1.x, l(32), t5.xxyz
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
r1.w = colorSampler[]..swiz;
  r2.z = dot(r0.yzw, r1.yzw);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(0), t5.xyzw
r3.x = colorSampler[]..swiz;
r3.y = colorSampler[]..swiz;
r3.z = colorSampler[]..swiz;
r3.w = colorSampler[]..swiz;
  r4.xyz = v0.xyz;
  r4.w = 1;
  r3.x = dot(r4.xyzw, r3.xyzw);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.x, l(16), t5.xyzw
r5.x = colorSampler[]..swiz;
r5.y = colorSampler[]..swiz;
r5.z = colorSampler[]..swiz;
r5.w = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
r1.x = colorSampler[]..swiz;
r1.y = colorSampler[]..swiz;
r1.z = colorSampler[]..swiz;
r1.w = colorSampler[]..swiz;
  r3.z = dot(r4.xyzw, r1.xyzw);
  r3.y = dot(r4.xyzw, r5.xyzw);
  r0.xyz = r2.xyz * r0.xxx + r3.xyz;
  r1.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r0.yyyy;
  r1.xyzw = r0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r0.xyzw = r0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  r1.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r1.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r1.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  r1.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
  o0.xyzw = r1.xyzw + r0.xyzw;
  return;
}