// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:39 2021

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

StructuredBuffer<volDecalInstanceBuffer> volDecalInstanceBuffer : register(t21);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float3 v0 : POSITION0,
  uint v1 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float3 o5 : TEXCOORD5,
  out uint p5 : TEXCOORD13,
  out float3 o6 : TEXCOORD6,
  out float p6 : TEXCOORD0,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD9,
  out float4 o10 : TEXCOORD12)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t21, 200
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(48), t21.xyzw
r0.x = volDecalInstanceBuffer[]..swiz;
r0.y = volDecalInstanceBuffer[]..swiz;
r0.z = volDecalInstanceBuffer[]..swiz;
r0.w = volDecalInstanceBuffer[]..swiz;
  r1.xyw = -eyeOffset.xyz + r0.xyz;
  r2.w = r1.y;
  r3.xyz = v0.xyz;
  r3.w = 1;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r4.xyzw, v1.x, l(0), t21.xyzw
r4.x = volDecalInstanceBuffer[]..swiz;
r4.y = volDecalInstanceBuffer[]..swiz;
r4.z = volDecalInstanceBuffer[]..swiz;
r4.w = volDecalInstanceBuffer[]..swiz;
  r2.x = r4.y;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r5.xyzw, v1.x, l(16), t21.xyzw
r5.x = volDecalInstanceBuffer[]..swiz;
r5.y = volDecalInstanceBuffer[]..swiz;
r5.z = volDecalInstanceBuffer[]..swiz;
r5.w = volDecalInstanceBuffer[]..swiz;
  r2.y = r5.y;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r6.xyzw, v1.x, l(32), t21.xyzw
r6.x = volDecalInstanceBuffer[]..swiz;
r6.y = volDecalInstanceBuffer[]..swiz;
r6.z = volDecalInstanceBuffer[]..swiz;
r6.w = volDecalInstanceBuffer[]..swiz;
  r2.z = r6.y;
  r2.x = dot(r3.xyzw, r2.xyzw);
  r2.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r2.xxxx;
  r7.w = r1.x;
  r7.x = r4.x;
  r7.y = r5.x;
  r7.z = r6.x;
  r7.x = dot(r3.xyzw, r7.xyzw);
  r2.xyzw = r7.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r1.x = r4.z;
  r1.y = r5.z;
  r1.z = r6.z;
  r1.x = dot(r3.xyzw, r1.xyzw);
  r1.xyzw = r1.xxxx * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  r0.x = r4.w;
  r0.y = r5.w;
  r0.z = r6.w;
  r0.x = dot(r3.xyzw, r0.xyzw);
  o0.xyzw = r0.xxxx * viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o1.xyzw, v1.x, l(64), t21.xyzw
r1.x = volDecalInstanceBuffer[]..swiz;
r1.y = volDecalInstanceBuffer[]..swiz;
r1.z = volDecalInstanceBuffer[]..swiz;
r1.w = volDecalInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o2.xyzw, v1.x, l(80), t21.xyzw
r2.x = volDecalInstanceBuffer[]..swiz;
r2.y = volDecalInstanceBuffer[]..swiz;
r2.z = volDecalInstanceBuffer[]..swiz;
r2.w = volDecalInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o3.xyzw, v1.x, l(96), t21.xyzw
r3.x = volDecalInstanceBuffer[]..swiz;
r3.y = volDecalInstanceBuffer[]..swiz;
r3.z = volDecalInstanceBuffer[]..swiz;
r3.w = volDecalInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o4.xyzw, v1.x, l(112), t21.xyzw
r4.x = volDecalInstanceBuffer[]..swiz;
r4.y = volDecalInstanceBuffer[]..swiz;
r4.z = volDecalInstanceBuffer[]..swiz;
r4.w = volDecalInstanceBuffer[]..swiz;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = rsqrt(r0.x);
  o5.xyz = r4.xyz * r0.xxx;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(128), t21.xyzw
r0.x = volDecalInstanceBuffer[]..swiz;
r0.y = volDecalInstanceBuffer[]..swiz;
r0.z = volDecalInstanceBuffer[]..swiz;
r0.w = volDecalInstanceBuffer[]..swiz;
  p5.x = r0.w;
  o9.xyz = r0.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = rsqrt(r0.x);
  o6.xyz = r5.xyz * r0.xxx;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o6.w, v1.x, l(192), t21.xxxx
r6.w = volDecalInstanceBuffer[]..swiz;
  r0.x = dot(-r6.xyz, -r6.xyz);
  r0.x = rsqrt(r0.x);
  o7.xyz = -r6.xyz * r0.xxx;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o8.xyzw, v1.x, l(144), t21.xyzw
r8.x = volDecalInstanceBuffer[]..swiz;
r8.y = volDecalInstanceBuffer[]..swiz;
r8.z = volDecalInstanceBuffer[]..swiz;
r8.w = volDecalInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o10.xyzw, v1.x, l(176), t21.xyzw
r10.x = volDecalInstanceBuffer[]..swiz;
r10.y = volDecalInstanceBuffer[]..swiz;
r10.z = volDecalInstanceBuffer[]..swiz;
r10.w = volDecalInstanceBuffer[]..swiz;
  return;
}