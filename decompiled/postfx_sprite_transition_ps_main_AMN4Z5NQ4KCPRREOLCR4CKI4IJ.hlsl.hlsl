// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:25 2021

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
  float heightScale : packoffset(c10.z);
  float2 sprites : packoffset(c11);
  float2 source : packoffset(c11.z);
  float count : packoffset(c12);
  float seed : packoffset(c12.y);
  float2 scaleMin : packoffset(c12.z);
  float2 scaleMax : packoffset(c13);
  float2 lifeMaxMin : packoffset(c13.z);
  float2 fadeInMaxMin : packoffset(c14);
  float2 fadeOutMaxMin : packoffset(c14.z);
  float2 pauseMaxMin : packoffset(c15);
  float2 stretchMaxMin : packoffset(c15.z);
  float2 slideMaxMin : packoffset(c16);
  float2 heightMaxMin : packoffset(c16.z);
  float2 warpMaxMin : packoffset(c17);
  float2 jitterMaxMin : packoffset(c17.z);
  float2 rotationMaxMin : packoffset(c18);
  float blurPixels : packoffset(c18.z);
  float prevFrameBoost : packoffset(c18.w);
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
Texture2D<float4> resolvedScene : register(t0);
Texture2D<float4> codeTexture0 : register(t6);
Texture2D<float4> octogonMask : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD3,
  float4 v2 : TEXCOORD2,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = octogonMask.Sample(bilinearClampler_s, v1.xy).x;
  r0.x = v2.z * r0.x;
  r0.x = cmp(0 >= r0.x);
  if (r0.x != 0) discard;
  r0.xy = renderTargetSize.zw * v0.xy;
  r0.zw = r0.xy * float2(2,2) + float2(-1,-1);
  r1.xy = w1.xy * float2(2,2) + float2(-1,-1);
  r0.zw = -r1.xy + r0.zw;
  r0.z = dot(r0.zw, r0.zw);
  r0.z = sqrt(r0.z);
  r0.z = min(1, r0.z);
  r0.z = log2(r0.z);
  r0.z = 0.300000012 * r0.z;
  r0.z = exp2(r0.z);
  r0.w = renderTargetSize.z * blurPixels;
  r0.w = scriptVector0.y * r0.w;
  r0.w = r0.w * r0.z;
  r1.xyzw = saturate(r0.wwww * float4(-0.563089311,-0.268058598,-0.107148901,-0.652221084) + w1.xyzw);
  r2.xyz = codeTexture0.Sample(bilinearClampler_s, r1.xy).xyz;
  r1.xyz = codeTexture0.Sample(bilinearClampler_s, r1.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = saturate(r0.wwww * float4(-0.297493488,0.236788303,-0.940281689,0.287647098) + w1.xyzw);
  r3.xyz = codeTexture0.Sample(bilinearClampler_s, r2.xy).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClampler_s, r2.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = saturate(r0.wwww * float4(0.374713004,-0.33693859,0.4578771,-0.749875307) + w1.xyzw);
  r3.xyz = codeTexture0.Sample(bilinearClampler_s, r2.xy).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClampler_s, r2.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = saturate(r0.wwww * float4(-0.4427737,-0.886700988,0.788797915,-0.427877992) + w1.xyzw);
  r3.xyz = codeTexture0.Sample(bilinearClampler_s, r2.xy).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClampler_s, r2.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = saturate(r0.wwww * float4(-0.0290644299,-0.2007249,0.427763313,0.165135205) + w1.xyzw);
  r3.xyz = codeTexture0.Sample(bilinearClampler_s, r2.xy).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClampler_s, r2.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = saturate(r0.wwww * float4(-0.230788201,0.640438676,-0.657632113,0.674599111) + w1.xyzw);
  r3.xyz = codeTexture0.Sample(bilinearClampler_s, r2.xy).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClampler_s, r2.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = saturate(r0.wwww * float4(0.869136691,0.00676916121,0.283670396,0.930419683) + w1.xyzw);
  r3.xyz = codeTexture0.Sample(bilinearClampler_s, r2.xy).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClampler_s, r2.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = saturate(r0.wwww * float4(0.512029588,0.590522408,-0.968446076,-0.189363196) + w1.xyzw);
  r3.xyz = codeTexture0.Sample(bilinearClampler_s, r2.xy).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r2.xyz = codeTexture0.Sample(bilinearClampler_s, r2.zw).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = float3(1.90734863e-06,1.90734863e-06,1.90734863e-06) * r1.xyz;
  r0.z = saturate(scriptVector0.z * r0.z);
  r0.w = -1 + prevFrameBoost;
  r0.z = r0.z * r0.w + 1;
  r2.xyzw = resolvedScene.Sample(bilinearClampler_s, r0.xy).xyzw;
  r0.xyw = float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) * r2.xyz;
  r1.w = saturate(scriptVector0.x);
  r2.x = saturate(0.0333333351 * v2.z);
  r1.w = r2.x * r1.w;
  r1.xyz = r1.xyz * r0.zzz + -r0.xyw;
  r0.xyz = r1.www * r1.xyz + r0.xyw;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  o0.w = r2.w;
  return;
}