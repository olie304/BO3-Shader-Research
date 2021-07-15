// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:04 2021

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
  float lightningGlow : packoffset(c10.z);
  float2 lightningReveal : packoffset(c11);
  float anusSpin : packoffset(c11.z);
  float anusGlow : packoffset(c11.w);
  float anusOpacity : packoffset(c12);
  float vagSpin : packoffset(c12.y);
  float vagGlow : packoffset(c12.z);
  float vagOpacity : packoffset(c12.w);
  float wipeGlow : packoffset(c13);
  float warpPixels : packoffset(c13.y);
  float faceOpacity : packoffset(c13.z);
  float faceGlow : packoffset(c13.w);
  float faceAngle : packoffset(c14);
  float faceSpeed : packoffset(c14.y);
  float sparkleSpeed : packoffset(c14.z);
  float sparkleGlow : packoffset(c14.w);
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

SamplerState trilinearSampler_s : register(s1);
SamplerState bilinearClampSampler_s : register(s2);
Texture2D<float4> frameBuffer : register(t0);
Texture2D<float4> lightningTexture : register(t6);
Texture2D<float4> spaceAnusTexture : register(t7);
Texture2D<float4> pantherVagTexture : register(t9);
Texture2D<float4> lookupTexture : register(t10);
Texture2D<float4> faceTexture1 : register(t11);
Texture2D<float4> faceTexture2 : register(t12);
Texture2D<float4> sparkleTexture : register(t14);
Texture2D<float4> spaceTexture : register(t15);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v1.xy;
  r1.xyzw = lightningTexture.Sample(trilinearSampler_s, v1.xy).xyzw;
  r0.z = saturate(scriptVector1.y * 0.998000026 + 0.00100000005);
  r0.w = 1 + -r0.z;
  r2.x = saturate(lightningReveal.y);
  r0.z = log2(r0.z);
  r0.z = r2.x * r0.z;
  r0.z = exp2(r0.z);
  r3.x = -r0.z;
  r0.z = log2(r0.w);
  r0.z = r2.x * r0.z;
  r3.y = exp2(r0.z);
  r0.zw = saturate(lightningReveal.xx * r3.xy + r0.ww);
  r1.w = r1.w + -r0.z;
  r0.z = r0.w + -r0.z;
  r0.z = saturate(r1.w / r0.z);
  r2.xy = cmp(float2(0,0) < scriptVector2.zy);
  if (r2.x != 0) {
    r3.y = gameTime.w * sparkleSpeed;
    r3.x = 0;
    r2.xz = v1.xy + r3.xy;
    r3.xyzw = sparkleTexture.Sample(trilinearSampler_s, r2.xz).xyzw;
  } else {
    r3.xyzw = float4(0,0,0,0);
  }
  r2.xz = scriptVector1.zw * anusOpacity;
  r2.xz = cmp(float2(0,0) < r2.xz);
  if (r2.x != 0) {
    r0.w = gameTime.w * anusSpin;
    r1.w = anusSpin * gameTime.w + 1;
    r1.w = 0.226892799 * r1.w;
    sincos(r1.w, r2.x, r4.x);
    r4.y = r4.x;
    r4.z = r2.x;
    r5.x = dot(r4.yz, r0.xy);
    r4.x = -r2.x;
    r5.y = dot(r4.xy, r0.xy);
    r2.xw = scriptVector0.xx * r0.xy + r5.xy;
    r2.xw = float2(0.5,0.5) + r2.xw;
    r4.xyzw = spaceAnusTexture.Sample(trilinearSampler_s, r2.xw).xyzw;
    r0.w = -r0.w * 0.970000029 + 1;
    r0.w = 0.506145477 * r0.w;
    sincos(r0.w, r2.x, r5.x);
    r5.y = r5.x;
    r5.z = r2.x;
    r6.x = dot(r5.yz, r0.xy);
    r5.x = -r2.x;
    r6.y = dot(r5.xy, r0.xy);
    r2.xw = scriptVector0.xx * r0.xy + r6.xy;
    r2.xw = float2(0.5,0.5) + r2.xw;
    r5.xyzw = spaceAnusTexture.Sample(trilinearSampler_s, r2.xw).xyzw;
    r4.xyzw = r5.xyzw + r4.xyzw;
  } else {
    r4.xyzw = float4(0,0,0,0);
  }
  if (r2.z != 0) {
    r0.w = vagSpin * gameTime.w + 1;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r2.x, r5.x);
    r5.y = r5.x;
    r5.z = r2.x;
    r6.x = dot(r5.yz, r0.xy);
    r5.x = -r2.x;
    r6.y = dot(r5.xy, r0.xy);
    r2.xz = scriptVector0.yy * r0.xy + r6.xy;
    r2.xz = saturate(float2(0.5,0.5) + r2.xz);
    r5.xyzw = pantherVagTexture.Sample(trilinearSampler_s, r2.xz).xyzw;
  } else {
    r5.xyzw = float4(0,0,0,0);
  }
  r0.w = scriptVector2.x * faceOpacity;
  r0.w = cmp(0 < r0.w);
  if (r0.w != 0) {
    r6.xyzw = saturate(v1.xyxy * float4(-2,1,2,1) + float4(1,-0.5,-1,-0.5));
    r2.xz = r6.xz * r6.xz;
    r7.yw = -r6.xz * faceAngle + r6.yw;
    r6.yw = log2(r6.xz);
    r6.yw = float2(0.00999999978,0.00999999978) * r6.yw;
    r6.yw = exp2(r6.yw);
    r8.yw = r6.yw * float2(-598,-598) + float2(600,600);
    r7.xz = -gameTime.ww * faceSpeed + r6.xz;
    r8.xz = float2(5,5);
    r6.xyzw = r8.xyzw * r7.xyzw;
    r7.xyzw = faceTexture1.Sample(bilinearClampSampler_s, r6.xy).xyzw;
    r8.w = r7.w * r2.x;
    r8.xyz = r8.www * r7.xyz;
    r6.xyzw = faceTexture2.Sample(bilinearClampSampler_s, r6.zw).xyzw;
    r7.w = r6.w * r2.z;
    r7.xyz = r6.xyz;
    r9.xyzw = r7.xyzw + -r8.xyzw;
    r7.xyzw = r7.wwww * r9.xyzw + r8.xyzw;
    r0.w = r6.w * r2.z + r7.w;
  } else {
    r7.xyz = float3(0,0,0);
    r0.w = 0;
  }
  r6.xyzw = float4(0.129999995,0.0900000036,-0.170000002,0.0500000007) * gameTime.wwww;
  r8.x = 0.930000007;
  r8.y = 0.129999995 * gameTime.w;
  r1.w = lookupTexture.Sample(trilinearSampler_s, r8.xy).x;
  r2.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.x = frac(r2.x);
  r6.yzw = float3(0.0900000036,-0.170000002,0.0500000007) * gameTime.www;
  r2.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.y = frac(r2.x);
  r2.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.z = frac(r2.x);
  r2.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.w = frac(r2.x);
  r2.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.x = frac(r2.x);
  r2.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.y = frac(r2.x);
  r2.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r6.z = frac(r2.x);
  r2.x = dot(r6.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r2.x = frac(r2.x);
  r2.z = r6.x * r6.y;
  r2.z = r2.z * r6.z;
  r2.x = r2.z * r2.x;
  r2.z = dot(r0.xy, r0.xy);
  r2.z = sqrt(r2.z);
  r1.w = r2.x * r1.w + r2.z;
  r2.x = 9.99999975e-05 + scriptVector0.z;
  r2.w = r2.x * r2.x;
  r2.x = r2.x * r2.w;
  r1.w = 1 / r1.w;
  r1.w = saturate(r2.x * r1.w);
  r2.x = r1.w * -2 + 3;
  r1.w = r1.w * r1.w;
  r1.w = r2.x * r1.w;
  if (r2.y != 0) {
    r6.xyzw = spaceTexture.Sample(trilinearSampler_s, v1.xy).xyzw;
    r6.xyzw = anusGlow * r6.xyzw;
    o0.w = r6.w;
  } else {
    r2.x = 1 / r2.z;
    r2.x = saturate(0.216000006 * r2.x);
    r2.y = r2.x * -2 + 3;
    r2.x = r2.x * r2.x;
    r2.x = r2.y * r2.x;
    r2.yz = renderTargetSize.zw * warpPixels;
    r2.yz = scriptVector0.ww * r2.yz;
    r2.w = cmp(0 < scriptVector1.x);
    r8.xy = r2.xx * r2.yz + float2(1,1);
    r8.xy = r0.xy * r8.xy + float2(0.5,0.5);
    r2.xy = -r2.xx * r2.yz + float2(1,1);
    r0.xy = r0.xy * r2.xy + float2(0.5,0.5);
    r0.xy = saturate(r2.ww ? r8.xy : r0.xy);
    r2.xyzw = frameBuffer.Sample(trilinearSampler_s, r0.xy).xyzw;
    r6.xyzw = float4(3.05175781e-05,3.05175781e-05,3.05175781e-05,3.05175781e-05) * r2.xyzw;
    o0.w = r6.w;
  }
  r1.xyz = r1.xyz * lightningGlow + -r6.xyz;
  r0.xyz = r0.zzz * r1.xyz + r6.xyz;
  r1.x = scriptVector2.z * r3.w;
  r2.xyz = r3.xyz * sparkleGlow + -r0.xyz;
  r0.xyz = r1.xxx * r2.xyz + r0.xyz;
  r1.x = anusOpacity * r4.w;
  r1.x = scriptVector1.z * r1.x;
  r2.xyz = r4.xyz * anusGlow + -r0.xyz;
  r0.xyz = r1.xxx * r2.xyz + r0.xyz;
  r1.x = vagOpacity * r5.w;
  r1.x = scriptVector1.w * r1.x;
  r2.xyz = r5.xyz * vagGlow + -r0.xyz;
  r0.xyz = r1.xxx * r2.xyz + r0.xyz;
  r0.w = scriptVector2.x * r0.w;
  r1.xyz = r7.xyz * faceGlow + -r0.xyz;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  r1.xyz = wipeGlow + -r0.xyz;
  r0.xyz = r1.www * r1.xyz + r0.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  return;
}