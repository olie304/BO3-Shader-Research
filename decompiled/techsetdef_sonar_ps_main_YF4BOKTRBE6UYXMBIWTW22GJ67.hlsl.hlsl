// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:27 2021

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

SamplerState sonarSampler_s : register(s1);
Texture2D<float4> sonarTexture : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  sonarTexture.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
  r0.xy = uiDest.xy;
  r0.xyzw = (uint4)r0.xyxy;
  r0.xyzw = float4(1,1,1,1) / r0.xyzw;
  r1.xyzw = v0.xyxy * r0.zwzw + float4(0,-0.00277777785,0,0.00277777785);
  r2.xyz = sonarTexture.Sample(sonarSampler_s, r1.zw).xyz;
  r1.xyz = sonarTexture.Sample(sonarSampler_s, r1.xy).xyz;
  r1.w = dot(r2.xyz, float3(1,1,1));
  r2.xyz = r1.xyz + r2.xyz;
  r1.x = dot(r1.xyz, float3(1,1,1));
  r3.xyzw = v0.xyxy * r0.xyzw + float4(-0.00156250002,0,0.00156250002,0);
  r0.xy = v0.xy * r0.zw;
  r0.xyz = sonarTexture.Sample(sonarSampler_s, r0.xy).xyz;
  r4.xyz = sonarTexture.Sample(sonarSampler_s, r3.xy).xyz;
  r3.xyz = sonarTexture.Sample(sonarSampler_s, r3.zw).xyz;
  r1.y = dot(r4.xyz, float3(1,1,1));
  r2.xyz = r4.xyz + r2.xyz;
  r2.xyz = r2.xyz + r3.xyz;
  r1.z = dot(r3.xyz, float3(1,1,1));
  r2.xyz = float3(0.25,0.25,0.25) * r2.xyz;
  r1.y = max(r1.w, r1.y);
  r1.y = max(r1.y, r1.z);
  r1.x = max(r1.y, r1.x);
  r1.y = dot(r0.xyz, float3(1,1,1));
  r1.y = cmp(r1.y == 0.000000);
  r1.x = r1.y ? r1.x : 0;
  r1.x = cmp(0 < r1.x);
  r2.w = 0.699999988;
  r0.w = 0;
  r0.xyzw = r1.xxxx ? r2.xyzw : r0.xyzw;
  r0.xyz = hdrControl0.www * r0.xyz;
  o0.w = r0.w;
  r0.xyz = relHDRExposure.yyy * r0.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}