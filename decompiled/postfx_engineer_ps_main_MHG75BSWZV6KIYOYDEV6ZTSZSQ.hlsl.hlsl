// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:08 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float3 pulseColor : packoffset(c11);
  float glowBoost : packoffset(c11.w);
  float viewOutlineWidth : packoffset(c12);
  float viewOutlineBold : packoffset(c12.y);
  float2 gridScale : packoffset(c12.z);
  float2 gridScroll : packoffset(c13);
}

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

SamplerState nearestSampler_s : register(s1);
SamplerState trilinearSampler_s : register(s2);
Texture2D<float4> frameBuffer : register(t0);
Texture2D<float4> floatzTexture : register(t6);
Texture2D<float4> sonarColorTexture : register(t7);
Texture2D<float4> sonarDepthTexture : register(t9);
Texture2D<float4> irisTexture : register(t10);
Texture2D<float4> gridTexture : register(t11);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = frameBuffer.Sample(trilinearSampler_s, v1.xy).xyzw;
  r1.xy = renderTargetSize.zw * viewOutlineWidth;
  r2.x = sonarColorTexture.Sample(nearestSampler_s, v1.xy).z;
  r2.x = cmp(0 < r2.x);
  r3.x = -r1.y;
  r3.z = 0;
  r2.yz = v1.xy + r3.zx;
  r2.y = sonarDepthTexture.Sample(trilinearSampler_s, r2.yz).x;
  r1.z = 0;
  r3.xyzw = v1.xyxy + r1.zyxz;
  r1.y = sonarDepthTexture.Sample(trilinearSampler_s, r3.xy).x;
  r1.w = -r1.x;
  r1.xz = v1.xy + r1.wz;
  r1.x = sonarDepthTexture.Sample(trilinearSampler_s, r1.xz).x;
  r1.z = sonarDepthTexture.Sample(trilinearSampler_s, r3.zw).x;
  r2.zw = gameTime.ww * gridScroll.xy;
  r2.zw = v1.xy * gridScale.xy + r2.zw;
  r1.w = gridTexture.Sample(trilinearSampler_s, r2.zw).x;
  if (r2.x != 0) {
    r2.x = floatzTexture.Sample(trilinearSampler_s, v1.xy).x;
    r2.z = sonarDepthTexture.Sample(trilinearSampler_s, v1.xy).x;
    r2.x = cmp(r2.x < 0.984375);
    r2.w = cmp(0 < r2.z);
    r2.x = r2.w ? r2.x : 0;
    r2.w = cmp(0 < scriptVector0.y);
    r2.x = r2.w ? r2.x : 0;
    if (r2.x != 0) {
      r2.x = cmp(r2.z >= 0.984375);
      r2.w = 1.01587307 * r2.z;
      r2.z = r2.z * 64 + -63;
      r2.x = r2.x ? r2.z : r2.w;
      r2.x = max(9.99999994e-09, r2.x);
      r2.x = rcp(r2.x);
      r2.z = cmp(r2.y >= 0.984375);
      r2.w = 1.01587307 * r2.y;
      r2.y = r2.y * 64 + -63;
      r2.y = r2.z ? r2.y : r2.w;
      r2.y = max(9.99999994e-09, r2.y);
      r3.x = rcp(r2.y);
      r2.y = cmp(r1.y >= 0.984375);
      r2.z = 1.01587307 * r1.y;
      r1.y = r1.y * 64 + -63;
      r1.y = r2.y ? r1.y : r2.z;
      r1.y = max(9.99999994e-09, r1.y);
      r3.y = rcp(r1.y);
      r1.y = cmp(r1.x >= 0.984375);
      r2.y = 1.01587307 * r1.x;
      r1.x = r1.x * 64 + -63;
      r1.x = r1.y ? r1.x : r2.y;
      r1.x = max(9.99999994e-09, r1.x);
      r3.z = rcp(r1.x);
      r1.x = cmp(r1.z >= 0.984375);
      r1.y = 1.01587307 * r1.z;
      r1.z = r1.z * 64 + -63;
      r1.x = r1.x ? r1.z : r1.y;
      r1.x = max(9.99999994e-09, r1.x);
      r3.w = rcp(r1.x);
      r2.xyzw = -r3.xyzw + r2.xxxx;
      r2.xyzw = cmp(abs(r2.xyzw) >= viewOutlineBold);
      r2.xyzw = r2.xyzw ? float4(1,1,1,1) : 0;
      r1.x = dot(r2.xyzw, float4(1,1,1,1));
      r1.x = r1.w * 2 + r1.x;
      r1.x = glowBoost * r1.x;
      r1.x = scriptVector0.y * r1.x;
    } else {
      r1.x = 0;
    }
  } else {
    r1.x = 0;
  }
  r1.y = irisTexture.Sample(trilinearSampler_s, v1.xy).x;
  r1.x = r1.y * scriptVector0.x + r1.x;
  r1.xyz = pulseColor.xyz * r1.xxx;
  r0.xyz = r0.xyz * float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) + r1.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  o0.w = r0.w;
  return;
}