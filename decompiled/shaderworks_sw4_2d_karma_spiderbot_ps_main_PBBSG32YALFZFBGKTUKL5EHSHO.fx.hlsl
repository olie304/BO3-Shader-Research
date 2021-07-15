// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:38 2021

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
  float WarpScale : packoffset(c10);
  float LineScale : packoffset(c10.y);
  float LineSpeed : packoffset(c10.z);
  float LineIntensity : packoffset(c10.w);
  float2 NoiseScale : packoffset(c11);
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

SamplerState OverlayMap_Sampler_s : register(s1);
SamplerState VignetteMap_Sampler_s : register(s2);
SamplerState WarpMap_Sampler_s : register(s3);
SamplerState LineMap_Sampler_s : register(s4);
SamplerState resolvedScene_C2_P0_sampler_s : register(s5);
SamplerState NoiseMap_Sampler_s : register(s6);
Texture2D<float4> OverlayMap : register(t0);
Texture2D<float4> VignetteMap : register(t6);
Texture2D<float4> WarpMap : register(t7);
Texture2D<float4> LineMap : register(t9);
Texture2D<float4> resolvedScene_C2_P0 : register(t10);
Texture2D<float4> NoiseMap : register(t11);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = gameTime.w * LineSpeed;
  r0.x = LineScale * r0.x;
  r0.x = frac(r0.x);
  r0.y = WarpMap.Sample(WarpMap_Sampler_s, v1.xy).x;
  r0.y = r0.y * WarpScale + 1;
  r0.z = -0.5 + v1.y;
  r1.y = r0.z * r0.y + 0.5;
  r1.x = v1.x;
  r0.xy = r1.xy * LineScale + r0.xx;
  r1.xyz = resolvedScene_C2_P0.Sample(resolvedScene_C2_P0_sampler_s, r1.xy).xyz;
  r0.xyz = LineMap.Sample(LineMap_Sampler_s, r0.xy).xyz;
  r0.xyz = r0.xyz * LineIntensity + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyzw = VignetteMap.Sample(VignetteMap_Sampler_s, v1.xy).xyzw;
  r0.w = 1;
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.x = gameTime.w * NoiseScale.x;
  r1.xy = float2(23.7310009,35.0309982) * r1.xx;
  r1.xy = frac(r1.xy);
  r1.xy = v1.xy * NoiseScale.xx + r1.xy;
  r1.xyzw = NoiseMap.Sample(NoiseMap_Sampler_s, r1.xy).xyzw;
  r2.xyzw = OverlayMap.Sample(OverlayMap_Sampler_s, v1.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw + r2.xyzw;
  return;
}