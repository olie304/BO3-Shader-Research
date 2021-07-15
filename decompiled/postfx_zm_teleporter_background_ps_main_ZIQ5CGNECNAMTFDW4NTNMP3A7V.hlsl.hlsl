// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:27 2021

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
  float blurPixels : packoffset(c10.z);
  float refractionPixels : packoffset(c10.w);
  float refractionRotation : packoffset(c11);
  float2 glowRadius : packoffset(c11.y);
  float3 glowColor : packoffset(c12);
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
Texture2D<float4> frameBuffer : register(t0);
Texture2D<float4> normalMap : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.zw = gameTime.zz * v1.xy;
  r1.x = dot(r0.wzzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r0.x = frac(r1.x);
  r1.x = dot(r0.xzzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r0.y = frac(r1.x);
  r1.x = dot(r0.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r0.z = frac(r1.x);
  r1.x = dot(r0.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r0.w = frac(r1.x);
  r1.x = dot(r0.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r0.x = frac(r1.x);
  r1.x = dot(r0.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.y = glowRadius.y * r0.x;
  r0.y = frac(r1.x);
  r0.x = dot(r0.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r0.x = frac(r0.x);
  r0.x = glowRadius.x * r0.x;
  r0.y = max(r0.x, r1.y);
  r0.x = min(r0.x, r1.y);
  r0.y = r0.y + -r0.x;
  r0.y = 1 / r0.y;
  r0.z = refractionRotation * gameTime.w + 1;
  r0.z = 0.0174532924 * r0.z;
  sincos(r0.z, r1.x, r2.x);
  r3.z = r1.x;
  r3.y = r2.x;
  r3.x = -r1.x;
  r0.zw = v1.xy * float2(2,2) + float2(-1,-1);
  r1.x = dot(r3.yz, r0.zw);
  r1.y = dot(r3.xy, r0.zw);
  r1.xy = r1.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r1.xy = float2(0.800000012,0.800000012) * r1.xy;
  r1.xy = normalMap.Sample(bilinearClampler_s, r1.xy).xy;
  r1.xyzw = r1.xyxy * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r2.x = -refractionRotation * gameTime.w + 1;
  r2.x = 0.0174532924 * r2.x;
  sincos(r2.x, r2.x, r3.x);
  r4.z = r2.x;
  r4.y = r3.x;
  r4.x = -r2.x;
  r2.y = dot(r4.xy, r0.zw);
  r2.x = dot(r4.yz, r0.zw);
  r2.xy = r2.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r2.xy = float2(0.800000012,0.800000012) * r2.xy;
  r2.xy = normalMap.Sample(bilinearClampler_s, r2.xy).xy;
  r1.xyzw = r2.xyxy * float4(2,2,2,2) + r1.xyzw;
  r1.xyzw = float4(-1,-1,-1,-1) + r1.xyzw;
  r2.x = dot(r1.zw, r1.zw);
  r2.x = rsqrt(r2.x);
  r1.xyzw = r2.xxxx * r1.xyzw;
  r2.xyz = renderTargetSize.zwz * refractionPixels;
  r0.zw = r2.xy * r1.xy + r0.zw;
  r1.xyzw = r2.xyxy * r1.xyzw;
  r2.x = scriptVector0.x * r2.z;
  r0.zw = renderTargetSize.xy * r0.zw;
  r0.z = dot(r0.zw, r0.zw);
  r0.z = sqrt(r0.z);
  r0.x = r0.z + -r0.x;
  r0.x = saturate(r0.x * r0.y);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = -r0.y * r0.x + 1;
  r0.x = scriptVector0.x * r0.x;
  r1.xyzw = r1.xyzw * r0.xxxx + v1.xyxy;
  r3.xyzw = saturate(r2.xxxx * float4(-0.563089311,-0.268058598,-0.107148901,-0.652221084) + r1.zwzw);
  r4.xyzw = frameBuffer.Sample(bilinearClampler_s, r3.xy).xyzw;
  r3.xyzw = frameBuffer.Sample(bilinearClampler_s, r3.zw).xyzw;
  r3.xyzw = r4.xyzw + r3.xyzw;
  r4.xyzw = saturate(r2.xxxx * float4(-0.297493488,0.236788303,-0.940281689,0.287647098) + r1.zwzw);
  r5.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.xy).xyzw;
  r4.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.zw).xyzw;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r3.xyzw = r3.xyzw + r4.xyzw;
  r4.xyzw = saturate(r2.xxxx * float4(0.374713004,-0.33693859,0.4578771,-0.749875307) + r1.zwzw);
  r5.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.xy).xyzw;
  r4.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.zw).xyzw;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r3.xyzw = r3.xyzw + r4.xyzw;
  r4.xyzw = saturate(r2.xxxx * float4(-0.4427737,-0.886700988,0.788797915,-0.427877992) + r1.zwzw);
  r5.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.xy).xyzw;
  r4.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.zw).xyzw;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r3.xyzw = r3.xyzw + r4.xyzw;
  r4.xyzw = saturate(r2.xxxx * float4(-0.0290644299,-0.2007249,0.427763313,0.165135205) + r1.zwzw);
  r5.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.xy).xyzw;
  r4.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.zw).xyzw;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r3.xyzw = r3.xyzw + r4.xyzw;
  r4.xyzw = saturate(r2.xxxx * float4(-0.230788201,0.640438676,-0.657632113,0.674599111) + r1.zwzw);
  r5.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.xy).xyzw;
  r4.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.zw).xyzw;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r3.xyzw = r3.xyzw + r4.xyzw;
  r4.xyzw = saturate(r2.xxxx * float4(0.869136691,0.00676916121,0.283670396,0.930419683) + r1.zwzw);
  r1.xyzw = saturate(r2.xxxx * float4(0.512029588,0.590522408,-0.968446076,-0.189363196) + r1.xyzw);
  r2.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.xy).xyzw;
  r4.xyzw = frameBuffer.Sample(bilinearClampler_s, r4.zw).xyzw;
  r2.xyzw = r3.xyzw + r2.xyzw;
  r2.xyzw = r2.xyzw + r4.xyzw;
  r3.xyzw = frameBuffer.Sample(bilinearClampler_s, r1.xy).xyzw;
  r1.xyzw = frameBuffer.Sample(bilinearClampler_s, r1.zw).xyzw;
  r2.xyzw = r3.xyzw + r2.xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r0.yzw = float3(1.90734863e-06,1.90734863e-06,1.90734863e-06) * r1.xyz;
  o0.w = 0.0625 * r1.w;
  r0.yzw = scriptVector0.xxx * -r0.yzw + r0.yzw;
  r1.xyz = float3(-3,-3,-3) + glowColor.xyz;
  r1.xyz = r0.xxx * r1.xyz + float3(3,3,3);
  r0.xyz = r1.xyz * r0.xxx + r0.yzw;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  return;
}