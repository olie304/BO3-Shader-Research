// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:12 2021

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
  float scanlineScale : packoffset(c10.z);
  float2 w1ScaleUVs : packoffset(c11);
  float2 w1OffsetUVs : packoffset(c11.z);
  float2 w1RotateUVs : packoffset(c12);
  float2 w1ScrollUVs : packoffset(c12.z);
  float2 w1ZoomUVs : packoffset(c13);
  float w1ZoomRate : packoffset(c13.z);
  bool w1Enabled : packoffset(c13.w);
  float2 w2ScaleUVs : packoffset(c14);
  float2 w2OffsetUVs : packoffset(c14.z);
  float2 w2RotateUVs : packoffset(c15);
  float2 w2ScrollUVs : packoffset(c15.z);
  float2 w2ZoomUVs : packoffset(c16);
  float w2ZoomRate : packoffset(c16.z);
  bool w2Enabled : packoffset(c16.w);
  float2 w3ScaleUVs : packoffset(c17);
  float2 w3OffsetUVs : packoffset(c17.z);
  float2 w3RotateUVs : packoffset(c18);
  float2 w3ScrollUVs : packoffset(c18.z);
  float2 w3ZoomUVs : packoffset(c19);
  float w3ZoomRate : packoffset(c19.z);
  bool w3Enabled : packoffset(c19.w);
  float2 w4ScaleUVs : packoffset(c20);
  float2 w4OffsetUVs : packoffset(c20.z);
  float2 w4RotateUVs : packoffset(c21);
  float2 w4ScrollUVs : packoffset(c21.z);
  float2 w4ZoomUVs : packoffset(c22);
  float w4ZoomRate : packoffset(c22.z);
  bool w4Enabled : packoffset(c22.w);
  float2 w5ScaleUVs : packoffset(c23);
  float2 w5OffsetUVs : packoffset(c23.z);
  float2 w5RotateUVs : packoffset(c24);
  float2 w5ScrollUVs : packoffset(c24.z);
  float2 w5ZoomUVs : packoffset(c25);
  float w5ZoomRate : packoffset(c25.z);
  bool w5Enabled : packoffset(c25.w);
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

SamplerState bilinearClampler_s : register(s1);
SamplerState bilinearSampler_s : register(s2);
Texture2D<float4> frameBuffer : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> widgetMap1 : register(t7);
Texture2D<float4> widgetMap2 : register(t9);
Texture2D<float4> widgetMap3 : register(t10);
Texture2D<float4> widgetMap4 : register(t11);
Texture2D<float4> widgetMap5 : register(t12);
Texture2D<float4> scanlineMap : register(t14);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = renderTargetSize.x / renderTargetSize.y;
  r1.xyzw = colorMap.Sample(bilinearClampler_s, v1.xy).xyzw;
  r2.xy = scanlineScale * v1.xy;
  r2.xyzw = scanlineMap.Sample(bilinearSampler_s, r2.xy).xyzw;
  r2.w = scriptVector1.z * r2.w;
  r2.xyz = float3(-2,-2,-2) + r2.xyz;
  r2.xyz = r2.www * r2.xyz + float3(2,2,2);
  r3.xyz = cmp(float3(0,0,0) < scriptVector0.yzw);
  if (r3.x != 0) {
    r0.y = 1;
    r3.xw = w1ScaleUVs.xy * r0.xy;
    r4.xy = float2(-0.5,-0.5) + v1.xy;
    r4.zw = w1OffsetUVs.xy * r3.xw;
    r4.xy = r4.xy * r3.xw + r4.zw;
    r4.zw = gameTime.ww * w1ScrollUVs.xy;
    r2.w = w1RotateUVs.y * gameTime.w + 1;
    r2.w = w1RotateUVs.x * r2.w;
    r2.w = 0.0174532924 * r2.w;
    sincos(r2.w, r5.x, r6.x);
    r6.y = r6.x;
    r6.z = r5.x;
    r7.x = dot(r6.yz, r4.xy);
    r6.x = -r5.x;
    r7.y = dot(r6.xy, r4.xy);
    r3.xw = r4.zw * r3.xw + r7.xy;
    r2.w = gameTime.w * w1ZoomRate;
    r2.w = cos(r2.w);
    r2.w = r2.w * 0.5 + 0.5;
    r2.w = 1 + -r2.w;
    r4.x = w1ZoomUVs.y + -w1ZoomUVs.x;
    r2.w = r2.w * r4.x + w1ZoomUVs.x;
    r3.xw = r3.xw / r2.ww;
    r3.xw = float2(0.5,0.5) + r3.xw;
    r4.xyz = widgetMap1.Sample(bilinearClampler_s, r3.xw).xyz;
    r5.xyz = float3(1,1,1) + -r1.xyz;
    r4.xyz = -r4.xyz * scriptVector0.yyy + float3(1,1,1);
    r1.xyz = -r5.xyz * r4.xyz + float3(1,1,1);
  }
  if (r3.y != 0) {
    r0.z = 1;
    r3.xy = w2ScaleUVs.xy * r0.xz;
    r4.xy = float2(-0.5,-0.5) + v1.xy;
    r4.zw = w2OffsetUVs.xy * r3.xy;
    r4.xy = r4.xy * r3.xy + r4.zw;
    r4.zw = gameTime.ww * w2ScrollUVs.xy;
    r0.z = w2RotateUVs.y * gameTime.w + 1;
    r0.z = w2RotateUVs.x * r0.z;
    r0.z = 0.0174532924 * r0.z;
    sincos(r0.z, r5.x, r6.x);
    r6.y = r6.x;
    r6.z = r5.x;
    r7.x = dot(r6.yz, r4.xy);
    r6.x = -r5.x;
    r7.y = dot(r6.xy, r4.xy);
    r3.xy = r4.zw * r3.xy + r7.xy;
    r0.z = gameTime.w * w2ZoomRate;
    r0.z = cos(r0.z);
    r0.z = r0.z * 0.5 + 0.5;
    r0.z = 1 + -r0.z;
    r2.w = w2ZoomUVs.y + -w2ZoomUVs.x;
    r0.z = r0.z * r2.w + w2ZoomUVs.x;
    r3.xy = r3.xy / r0.zz;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r3.xyw = widgetMap2.Sample(bilinearClampler_s, r3.xy).xyz;
    r4.xyz = float3(1,1,1) + -r1.xyz;
    r3.xyw = -r3.xyw * scriptVector0.zzz + float3(1,1,1);
    r1.xyz = -r4.xyz * r3.xyw + float3(1,1,1);
  }
  if (r3.z != 0) {
    r0.w = 1;
    r0.zw = w3ScaleUVs.xy * r0.xw;
    r3.xy = float2(-0.5,-0.5) + v1.xy;
    r3.zw = w3OffsetUVs.xy * r0.zw;
    r3.xy = r3.xy * r0.zw + r3.zw;
    r3.zw = gameTime.ww * w3ScrollUVs.xy;
    r2.w = w3RotateUVs.y * gameTime.w + 1;
    r2.w = w3RotateUVs.x * r2.w;
    r2.w = 0.0174532924 * r2.w;
    sincos(r2.w, r4.x, r5.x);
    r5.y = r5.x;
    r5.z = r4.x;
    r6.x = dot(r5.yz, r3.xy);
    r5.x = -r4.x;
    r6.y = dot(r5.xy, r3.xy);
    r0.zw = r3.zw * r0.zw + r6.xy;
    r2.w = gameTime.w * w3ZoomRate;
    r2.w = cos(r2.w);
    r2.w = r2.w * 0.5 + 0.5;
    r2.w = 1 + -r2.w;
    r3.x = w3ZoomUVs.y + -w3ZoomUVs.x;
    r2.w = r2.w * r3.x + w3ZoomUVs.x;
    r0.zw = r0.zw / r2.ww;
    r0.zw = float2(0.5,0.5) + r0.zw;
    r3.xyz = widgetMap3.Sample(bilinearClampler_s, r0.zw).xyz;
    r4.xyz = float3(1,1,1) + -r1.xyz;
    r3.xyz = -r3.xyz * scriptVector0.www + float3(1,1,1);
    r1.xyz = -r4.xyz * r3.xyz + float3(1,1,1);
  }
  r0.zw = cmp(float2(0,0) < scriptVector1.xy);
  if (r0.z != 0) {
    r0.y = 1;
    r3.xy = w4ScaleUVs.xy * r0.xy;
    r3.zw = float2(-0.5,-0.5) + v1.xy;
    r4.xy = w4OffsetUVs.xy * r3.xy;
    r3.zw = r3.zw * r3.xy + r4.xy;
    r4.xy = gameTime.ww * w4ScrollUVs.xy;
    r0.z = w4RotateUVs.y * gameTime.w + 1;
    r0.z = w4RotateUVs.x * r0.z;
    r0.z = 0.0174532924 * r0.z;
    sincos(r0.z, r5.x, r6.x);
    r6.y = r6.x;
    r6.z = r5.x;
    r7.x = dot(r6.yz, r3.zw);
    r6.x = -r5.x;
    r7.y = dot(r6.xy, r3.zw);
    r3.xy = r4.xy * r3.xy + r7.xy;
    r0.z = gameTime.w * w4ZoomRate;
    r0.z = cos(r0.z);
    r0.z = r0.z * 0.5 + 0.5;
    r0.z = 1 + -r0.z;
    r2.w = w4ZoomUVs.y + -w4ZoomUVs.x;
    r0.z = r0.z * r2.w + w4ZoomUVs.x;
    r3.xy = r3.xy / r0.zz;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r3.xyz = widgetMap4.Sample(bilinearClampler_s, r3.xy).xyz;
    r4.xyz = float3(1,1,1) + -r1.xyz;
    r3.xyz = -r3.xyz * scriptVector1.xxx + float3(1,1,1);
    r1.xyz = -r4.xyz * r3.xyz + float3(1,1,1);
  }
  if (r0.w != 0) {
    r0.y = 1;
    r0.xy = w5ScaleUVs.xy * r0.xy;
    r0.zw = float2(-0.5,-0.5) + v1.xy;
    r3.xy = w5OffsetUVs.xy * r0.xy;
    r0.zw = r0.zw * r0.xy + r3.xy;
    r3.xy = gameTime.ww * w5ScrollUVs.xy;
    r2.w = w5RotateUVs.y * gameTime.w + 1;
    r2.w = w5RotateUVs.x * r2.w;
    r2.w = 0.0174532924 * r2.w;
    sincos(r2.w, r4.x, r5.x);
    r5.y = r5.x;
    r5.z = r4.x;
    r6.x = dot(r5.yz, r0.zw);
    r5.x = -r4.x;
    r6.y = dot(r5.xy, r0.zw);
    r0.xy = r3.xy * r0.xy + r6.xy;
    r0.z = gameTime.w * w5ZoomRate;
    r0.z = cos(r0.z);
    r0.z = r0.z * 0.5 + 0.5;
    r0.z = 1 + -r0.z;
    r0.w = w5ZoomUVs.y + -w5ZoomUVs.x;
    r0.z = r0.z * r0.w + w5ZoomUVs.x;
    r0.xy = r0.xy / r0.zz;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.xyz = widgetMap5.Sample(bilinearClampler_s, r0.xy).xyz;
    r3.xyz = float3(1,1,1) + -r1.xyz;
    r0.xyz = -r0.xyz * scriptVector1.yyy + float3(1,1,1);
    r1.xyz = -r3.xyz * r0.xyz + float3(1,1,1);
  }
  r0.xyzw = frameBuffer.Sample(bilinearClampler_s, v1.xy).xyzw;
  r2.w = saturate(scriptVector0.x);
  r1.w = r2.w * r1.w;
  r0.xyz = -r0.xyz * float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) + float3(1,1,1);
  r1.xyz = -r1.xyz * r1.www + float3(1,1,1);
  r0.xyz = -r0.xyz * r1.xyz + float3(1,1,1);
  r0.xyz = r0.xyz * r2.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  o0.w = r0.w;
  return;
}