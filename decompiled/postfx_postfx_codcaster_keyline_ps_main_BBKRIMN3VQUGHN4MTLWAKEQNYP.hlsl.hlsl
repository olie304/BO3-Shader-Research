// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:14 2021

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
  float fillOpacity : packoffset(c10.z);
  float edgeWidth : packoffset(c10.w);
  float edgeHarshness : packoffset(c11);
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

SamplerState bilinearClamp_s : register(s1);
Texture2D<float4> floatZSampler : register(t0);
Texture2D<float4> codeTexture0 : register(t6);
Texture2D<float4> codeTexture1 : register(t7);
Texture2D<float4> codeTexture2 : register(t9);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = renderTargetSize.zw * edgeWidth;
  r1.xyz = codeTexture0.Sample(bilinearClamp_s, v1.xy).xyz;
  r0.w = floatZSampler.Sample(bilinearClamp_s, v1.xy).x;
  r1.w = cmp(r0.w >= 0.984375);
  r2.xy = -r0.yx;
  r2.z = 0;
  r2.xyzw = v1.xyxy + r2.zxyz;
  r3.xyz = codeTexture1.Sample(bilinearClamp_s, r2.xy).xyz;
  r0.z = 0;
  r4.xyzw = v1.xyxy + r0.zyxz;
  r0.xyz = codeTexture1.Sample(bilinearClamp_s, r4.xy).xyz;
  r2.xyz = codeTexture1.Sample(bilinearClamp_s, r2.zw).xyz;
  r4.xyz = codeTexture1.Sample(bilinearClamp_s, r4.zw).xyz;
  if (r1.w != 0) {
    o0.xyz = r1.xyz;
    o0.w = 1;
    return;
  }
  r5.xyz = r3.xyz + r0.xyz;
  r5.xyz = r5.xyz + r2.xyz;
  r5.xyz = r5.xyz + r4.xyz;
  r5.xyz = float3(0.25,0.25,0.25) * r5.xyz;
  r1.w = max(r5.y, r5.z);
  r1.w = max(r5.x, r1.w);
  r1.w = cmp(r1.w == 0.000000);
  if (r1.w != 0) {
    o0.xyz = r1.xyz;
    o0.w = 1;
    return;
  }
  r6.xyz = codeTexture1.Sample(bilinearClamp_s, v1.xy).xyz;
  r0.xyz = max(r3.xyz, r0.xyz);
  r0.xyz = max(r0.xyz, r2.xyz);
  r0.xyz = max(r0.xyz, r4.xyz);
  r1.w = dot(r5.xyz, float3(0.298999995,0.587000012,0.114));
  r2.x = saturate(1 + -edgeHarshness);
  r2.x = max(0.00100000005, r2.x);
  r1.w = log2(r1.w);
  r1.w = r2.x * r1.w;
  r1.w = exp2(r1.w);
  r2.xyz = float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) * r1.xyz;
  r2.w = codeTexture2.Sample(bilinearClamp_s, v1.xy).x;
  r3.x = cmp(0 < r2.w);
  r0.w = cmp(r2.w < r0.w);
  r0.w = r0.w ? r3.x : 0;
  r0.w = r0.w ? fillOpacity : 0;
  r2.w = max(r6.y, r6.z);
  r2.w = max(r6.x, r2.w);
  r2.w = cmp(0.100000001 < r2.w);
  r1.w = r2.w ? 0 : r1.w;
  r0.w = saturate(r1.w + r0.w);
  r0.xyz = -r1.xyz * float3(3.05175781e-05,3.05175781e-05,3.05175781e-05) + r0.xyz;
  r0.xyz = r0.www * r0.xyz + r2.xyz;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  o0.w = 1;
  return;
}