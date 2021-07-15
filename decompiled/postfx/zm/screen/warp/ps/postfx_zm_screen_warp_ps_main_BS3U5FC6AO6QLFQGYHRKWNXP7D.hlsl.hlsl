// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:26 2021

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
  float blurRadius : packoffset(c10.z);
  float distortionAmount : packoffset(c10.w);
  float distortionZoom1 : packoffset(c11);
  float distortionZoom2 : packoffset(c11.y);
  float distortionRotate1 : packoffset(c11.z);
  float distortionRotate2 : packoffset(c11.w);
  float2 distortionScale1 : packoffset(c12);
  float2 distortionScale2 : packoffset(c12.z);
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
Texture2D<float4> distortionTexture : register(t6);
Texture2D<float4> maskTexture : register(t7);


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

  r0.xyzw = frameBuffer.Sample(bilinearClampler_s, v1.xy).xyzw;
  r1.xy = v1.xy * float2(2,2) + float2(-1,-1);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = rsqrt(r1.z);
  r1.zw = r1.xy * r1.zz;
  r2.x = maskTexture.Sample(bilinearSampler_s, v1.xy).x;
  r2.x = saturate(scriptVector0.x * r2.x);
  r2.y = cmp(0 < r2.x);
  r2.z = gameTime.w * distortionZoom1;
  r3.xyzw = distortionRotate1 * gameTime.wwww + float4(1,0.5,1,0.25);
  r3.xz = float2(0.0174532924,0.0174532924) * r3.xz;
  sincos(r3.x, r3.x, r4.x);
  r2.z = frac(r2.z);
  r2.w = r2.z * -0.800000012 + 1;
  r4.yz = r2.ww * r1.xy;
  r4.yz = distortionScale1.xy * r4.yz;
  r5.y = r4.x;
  r5.z = r3.x;
  r6.x = dot(r5.yz, r4.yz);
  r5.x = -r3.x;
  r6.y = dot(r5.xy, r4.yz);
  r4.xy = r6.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r4.xy = distortionTexture.Sample(bilinearSampler_s, r4.xy).xy;
  r4.xy = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.zw = float2(-0.899999976,-0.00100000005) + r2.zz;
  r2.zw = saturate(float2(10.1010065,10.1010103) * r2.zw);
  r4.zw = r2.zw * float2(-2,-2) + float2(3,3);
  r2.zw = r2.zw * r2.zw;
  r2.w = r4.w * r2.w;
  r2.z = -r4.z * r2.z + 1;
  r4.xy = r4.xy * r2.zz;
  r6.xyzw = frac(r3.yyww);
  r7.xyzw = r6.yyww * float4(-0.800000012,-0.800000012,-0.800000012,-0.800000012) + float4(1,1,1,1);
  r7.xyzw = r7.xyzw * r1.xyxy;
  r7.xyzw = distortionScale1.xyzw * r7.xyzw;
  r3.x = dot(r5.yz, r7.xy);
  r3.y = dot(r5.xy, r7.xy);
  r3.xy = r3.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r3.xy = distortionTexture.Sample(bilinearSampler_s, r3.xy).xy;
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r5.xyzw = float4(-0.899999976,-0.00100000005,-0.899999976,-0.00100000005) + r6.xyzw;
  r5.xyzw = saturate(float4(10.1010065,10.1010103,10.1010065,10.1010103) * r5.xyzw);
  r6.xyzw = r5.xyzw * float4(-2,-2,-2,-2) + float4(3,3,3,3);
  r5.xyzw = r5.xyzw * r5.xyzw;
  r4.zw = r6.yw * r5.yw;
  r5.xy = -r6.xz * r5.xz + float2(1,1);
  r3.xy = r5.xx * r3.xy;
  r3.xy = r3.xy * r4.zz;
  r2.zw = r4.xy * r2.ww + r3.xy;
  sincos(r3.z, r3.x, r4.x);
  r4.y = r4.x;
  r4.z = r3.x;
  r6.x = dot(r4.yz, r7.zw);
  r4.x = -r3.x;
  r6.y = dot(r4.xy, r7.zw);
  r3.xy = r6.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r3.xy = distortionTexture.Sample(bilinearSampler_s, r3.xy).xy;
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.xy = r3.xy * r5.yy;
  r2.zw = r3.xy * r4.ww + r2.zw;
  r3.x = distortionZoom2 * gameTime.w + 0.75;
  r3.x = frac(r3.x);
  r3.y = r3.x * -0.800000012 + 1;
  r1.xy = r3.yy * r1.xy;
  r1.xy = distortionScale2.xy * r1.xy;
  r5.x = dot(r4.yz, r1.xy);
  r5.y = dot(r4.xy, r1.xy);
  r1.xy = r5.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r1.xy = distortionTexture.Sample(bilinearSampler_s, r1.xy).xy;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.xy = float2(-0.899999976,-0.00100000005) + r3.xx;
  r3.xy = saturate(float2(10.1010065,10.1010103) * r3.xy);
  r3.zw = r3.xy * float2(-2,-2) + float2(3,3);
  r3.xy = r3.xy * r3.xy;
  r3.y = r3.w * r3.y;
  r3.x = -r3.z * r3.x + 1;
  r1.xy = r3.xx * r1.xy;
  r1.xy = r1.xy * r3.yy + r2.zw;
  r3.xyzw = renderTargetSize.zwzw * distortionAmount;
  r1.xy = r3.xy * r1.xy;
  r2.z = scriptVector0.y * r2.x;
  r1.xy = r1.xy * r2.zz + v1.xy;
  r2.zw = r3.zw * r2.xx;
  r2.z = max(r2.z, r2.w);
  r1.zw = r2.zz * r1.zw;
  r2.zw = saturate(r1.xy);
  r3.xyz = frameBuffer.Sample(bilinearClampler_s, r2.zw).xyz;
  r4.xyzw = saturate(r1.zwzw * float4(0.125,0.125,0.25,0.25) + r1.xyxy);
  r5.xyz = frameBuffer.Sample(bilinearClampler_s, r4.xy).xyz;
  r4.xyz = frameBuffer.Sample(bilinearClampler_s, r4.zw).xyz;
  r6.xyzw = saturate(r1.zwzw * float4(0.375,0.375,0.5,0.5) + r1.xyxy);
  r7.xyz = frameBuffer.Sample(bilinearClampler_s, r6.xy).xyz;
  r6.xyz = frameBuffer.Sample(bilinearClampler_s, r6.zw).xyz;
  r8.xyzw = saturate(r1.zwzw * float4(0.625,0.625,0.75,0.75) + r1.xyxy);
  r9.xyz = frameBuffer.Sample(bilinearClampler_s, r8.xy).xyz;
  r8.xyz = frameBuffer.Sample(bilinearClampler_s, r8.zw).xyz;
  r1.xy = saturate(r1.zw * float2(0.875,0.875) + r1.xy);
  r1.xyz = frameBuffer.Sample(bilinearClampler_s, r1.xy).xyz;
  if (r2.y != 0) {
    r2.yzw = r5.xyz + r3.xyz;
    r2.yzw = r2.yzw + r4.xyz;
    r2.yzw = r2.yzw + r7.xyz;
    r2.yzw = r2.yzw + r6.xyz;
    r2.yzw = r2.yzw + r9.xyz;
    r2.yzw = r2.yzw + r8.xyz;
    r1.xyz = r2.yzw + r1.xyz;
    r1.xyz = float3(0.125,0.125,0.125) * r1.xyz;
  } else {
    r1.xyz = r0.xyz;
  }
  r1.xyz = r1.xyz + -r0.xyz;
  o0.xyz = r2.xxx * r1.xyz + r0.xyz;
  o0.w = r0.w;
  return;
}