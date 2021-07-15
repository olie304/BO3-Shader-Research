// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:40 2021

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

SamplerState clampNoMipBilinearSampler_s : register(s1);
SamplerState tileMipBilinearSampler_s : register(s2);
Texture2D<float4> colorMapSampler : register(t0);
Texture2D<float4> colorMapSampler1 : register(t6);
Texture2D<float4> colorMapSampler2 : register(t7);
Texture2D<float4> colorMapSampler3 : register(t9);


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

  r0.xy = float2(-0.5,-0.5) + v2.xy;
  r0.z = max(abs(r0.y), abs(r0.x));
  r0.z = 1 / r0.z;
  r0.w = min(abs(r0.y), abs(r0.x));
  r0.z = r0.w * r0.z;
  r0.w = r0.z * r0.z;
  r1.x = r0.w * 0.0208350997 + -0.0851330012;
  r1.x = r0.w * r1.x + 0.180141002;
  r1.x = r0.w * r1.x + -0.330299497;
  r0.w = r0.w * r1.x + 0.999866009;
  r1.x = r0.z * r0.w;
  r1.x = r1.x * -2 + 1.57079637;
  r1.y = cmp(abs(r0.x) < abs(r0.y));
  r1.x = r1.y ? r1.x : 0;
  r0.z = r0.z * r0.w + r1.x;
  r0.w = cmp(r0.x < -r0.x);
  r0.w = r0.w ? -3.141593 : 0;
  r0.z = r0.z + r0.w;
  r0.w = min(r0.y, r0.x);
  r0.w = cmp(r0.w < -r0.w);
  r1.x = max(r0.y, r0.x);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.y = cmp(r1.x >= -r1.x);
  r0.y = r0.y ? r0.w : 0;
  r0.y = r0.y ? -r0.z : r0.z;
  r0.zw = float2(3.14159274,1.57079637) + r0.yy;
  r0.z = 3.14159274 + -r0.z;
  r0.z = min(r0.w, r0.z);
  r0.z = saturate(200 * r0.z);
  r0.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.w = 0.318309873 * r0.y;
  sincos(r0.y, r1.x, r2.x);
  r3.x = r0.w / scriptVector2.x;
  r0.y = floor(gameTime.w);
  r0.y = r0.y * 0.125 + r0.w;
  r4.x = r0.w / scriptVector1.z;
  r5.y = 0.5 + r0.y;
  r5.x = gameTime.w * scriptVector0.x;
  r5.xyzw = colorMapSampler1.Sample(tileMipBilinearSampler_s, r5.xy).xyzw;
  r0.y = -r5.y * scriptVector0.y + 1;
  r1.yzw = scriptVector0.yyy * r5.xzw;
  r0.y = r0.y * r0.y;
  r0.w = scriptVector2.y + -scriptVector2.z;
  r0.y = r0.y * r0.w + scriptVector2.z;
  r0.w = -0.379999995 + r0.x;
  r3.y = saturate(r0.w * r0.y + 0.5);
  r3.xyzw = colorMapSampler2.Sample(tileMipBilinearSampler_s, r3.xy).xyzw;
  r4.w = 0.25 + r4.x;
  r0.y = scriptVector1.y + -scriptVector1.x;
  r0.yw = r1.zw * r0.yy + scriptVector1.xx;
  r1.y = -r1.y * 0.200000003 + 1;
  r1.y = r1.y * r0.x;
  r0.xy = r0.xx + -r0.yw;
  r4.yz = saturate(r0.xy * scriptVector1.ww + float2(0.5,0.5));
  r0.x = 1.25 * r1.y;
  r5.xyzw = colorMapSampler3.Sample(tileMipBilinearSampler_s, r4.wz).xyzw;
  r4.xyzw = colorMapSampler3.Sample(tileMipBilinearSampler_s, r4.xy).xyzw;
  r4.xyzw = r4.xyzw + r5.xyzw;
  r3.xyzw = r3.xyzw * r0.zzzz + r4.xyzw;
  r2.x = r2.x * r0.x;
  r2.y = r1.x * r0.x;
  r0.xy = float2(0.5,0.5) + r2.xy;
  r0.xyzw = colorMapSampler.Sample(clampNoMipBilinearSampler_s, r0.xy).xyzw;
  r0.xyzw = r3.xyzw + r0.xyzw;
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}