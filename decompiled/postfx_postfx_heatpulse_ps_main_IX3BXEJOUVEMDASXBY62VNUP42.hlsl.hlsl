// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:15 2021

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
  float solidBeam : packoffset(c10);
  float noiseThreshold : packoffset(c10.y);
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

SamplerState samp0_s : register(s0);
Texture2D<float4> floatZSampler : register(t0);
Texture2D<float4> colorMapSampler : register(t6);


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

  r0.xy = renderTargetSize.xy * v1.xy;
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  r0.x = floatZSampler.Load(r0.xyz).x;
  r0.y = cmp(r0.x >= 0.984375);
  r0.z = 1.01587307 * r0.x;
  r0.x = r0.x * 64 + -63;
  r0.x = r0.y ? r0.x : r0.z;
  r0.x = max(9.99999994e-09, r0.x);
  r0.w = rcp(r0.x);
  r1.xy = float2(-0.5,-0.5) + v1.xy;
  r0.y = r1.x * r0.w;
  r0.z = -r1.y * r0.w;
  r1.yzw = float3(1.69885421,0.955605447,1) * r0.yzw;
  r0.xyz = float3(0.0611587502,0.0344017968,0.0359999985) * r0.yzw;
  r0.xyz = frac(r0.xyz);
  r0.xyz = cmp(float3(0.899999976,0.899999976,0.899999976) < r0.xyz);
  r1.x = gameTime.w;
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.x = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.y = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.z = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.w = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.x = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.y = frac(r2.x);
  r2.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.z = frac(r2.x);
  r1.x = dot(r1.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r1.x = frac(r1.x);
  r1.x = cmp(noiseThreshold < r1.x);
  r1.y = 0.100000001 * gameTime.w;
  r1.y = frac(r1.y);
  r1.y = r1.y * 2000 + 50;
  r0.w = r1.y + -r0.w;
  r0.w = 50 + -r0.w;
  r1.y = cmp(50 < r0.w);
  r1.z = cmp(r0.w < 0);
  r0.w = 0.0199999996 * r0.w;
  r1.y = r1.z ? 0 : r1.y;
  r1.y = (int)r1.y | (int)r1.z;
  r1.x = (int)r1.x | (int)r1.y;
  r0.x = (int)r0.y | (int)r0.x;
  r0.x = (int)r0.z | (int)r0.x;
  r0.x = r0.x ? 0.250000 : 0;
  r2.xyzw = float4(0,-0.00138888892,0,0.00138888892) + v1.xyxy;
  r0.y = floatZSampler.Sample(samp0_s, r2.zw).x;
  r0.z = floatZSampler.Sample(samp0_s, r2.xy).x;
  r1.y = floatZSampler.Sample(samp0_s, v1.xy).x;
  r0.y = -r1.y + r0.y;
  r2.xyzw = float4(-0.000781250012,0,0.000781250012,0) + v1.xyxy;
  r1.z = floatZSampler.Sample(samp0_s, r2.xy).x;
  r1.w = floatZSampler.Sample(samp0_s, r2.zw).x;
  r1.zw = r1.zw + -r1.yy;
  r0.z = -r1.y + r0.z;
  r0.y = max(abs(r1.z), abs(r0.y));
  r0.y = max(r0.y, abs(r1.w));
  r0.y = max(r0.y, abs(r0.z));
  r0.y = 1000 * r0.y;
  r0.y = min(1, r0.y);
  r0.x = r0.y + r0.x;
  r0.y = 1 + -r0.x;
  r0.x = solidBeam * r0.y + r0.x;
  r0.x = r0.w * r0.x;
  r0.x = r1.x ? 0 : r0.x;
  r1.xyzw = colorMapSampler.Sample(samp0_s, v1.xy).xyzw;
  r0.xyzw = r1.xyzw * float4(3.05175781e-05,3.05175781e-05,3.05175781e-05,1) + r0.xxxx;
  o0.xyzw = float4(32768,32768,32768,1) * r0.xyzw;
  return;
}