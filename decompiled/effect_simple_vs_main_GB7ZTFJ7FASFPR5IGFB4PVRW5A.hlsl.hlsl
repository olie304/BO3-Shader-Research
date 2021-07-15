// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:30 2021

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
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 rotateUVs : packoffset(c11.z);
  float2 scrollUVs : packoffset(c12);
  float2 scaleUVs : packoffset(c12.z);
  float2 offsetUVs : packoffset(c13);
  float2 zoomUVs : packoffset(c13.z);
  float zoomRate : packoffset(c14);
  float layerDepth : packoffset(c14.y);
  bool clampU : packoffset(c14.z);
  bool clampV : packoffset(c14.w);
  float2 falloffParms : packoffset(c15);
  uint zFeatherComputeSprites : packoffset(c15.z);
  float desaturationAmount : packoffset(c15.w);
  float4 levelsControls : packoffset(c16);
  bool useOldHDRScale : packoffset(c17);
  float2 scaleUVsAlpha : packoffset(c17.y);
  float zFeatherOverride : packoffset(c17.w);
  float2 scaleUVsColor : packoffset(c18);
  float2 offsetUVsColor : packoffset(c18.z);
  float2 rotateUVsColor : packoffset(c19);
  float2 scrollUVsColor : packoffset(c19.z);
  float2 scaleUVsEmissive : packoffset(c20);
  float2 offsetUVsEmissive : packoffset(c20.z);
  float2 rotateUVsEmissive : packoffset(c21);
  float2 scrollUVsEmissive : packoffset(c21.z);
  float translucentShadowOpacity : packoffset(c22);
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



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  float4 v3 : NORMAL0,
  float4 v4 : TANGENT0,
  uint v5 : SV_VertexID0,
  uint v6 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2,
  out float4 o5 : TEXCOORD3,
  out float2 o6 : TEXCOORD4,
  out float2 p6 : TEXCOORD5,
  out uint o7 : TEXCOORD6)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r0.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r0.xyzw;
  r0.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r0.xyzw;
  r0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  r1.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * v0.yyyy;
  r1.xyzw = v0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r1.xyzw = v0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  r1.z = max(0, useOldHDRScale);
  r0.x = max(0.100000001, r1.z);
  r0.x = 1 / r0.x;
  r0.y = saturate(r0.w * r0.x);
  r0.x = cmp(1 >= r0.x);
  r0.y = v1.w * r0.y;
  o1.w = r0.x ? r0.y : v1.w;
  o1.xyz = v1.xyz;
  r0.xyzw = float4(1023,1023,1023,3) * v4.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r0.yzw = (uint3)r0.yzw << int3(10,20,30);
  r0.x = (int)r0.y | (int)r0.x;
  r0.x = (int)r0.z | (int)r0.x;
  r0.z = (int)r0.w | (int)r0.x;
  r0.w = (int)v0.w & 0x0000ffff;
  r0.w = (uint)r0.w;
  r0.x = 0.00390625 * r0.w;
  r0.w = cmp(v3.w == 0.000000);
  r0.y = 1;
  r1.xy = r0.ww ? r0.xy : r0.xz;
  o2.xy = v2.xy * r1.yy;
  o2.z = r1.y;
  r0.x = (uint)v0.w >> 16;
  o3.w = f16tof32(r0.x);
  o3.xyz = -eyeOffset.xyz + v0.xyz;
  r1.w = 0;
  o4.xyzw = r1.wxzw;
  o5.xyz = float3(0,0,0);
  r0.xy = float2(0.0174532924,0.0174532924) * falloffParms.xy;
  r0.xy = cos(r0.xy);
  r0.yz = r0.xy * r0.xy;
  r0.x = r0.x * r0.x + -r0.z;
  r1.x = 1 / r0.x;
  r1.y = -r0.y * r1.x + 1;
  r0.xy = cmp(falloffParms.xy == float2(0,0));
  r0.x = r0.y ? r0.x : 0;
  o6.xy = r0.xx ? float2(0,1) : r1.xy;
  p6.xy = v2.xy;
  o7.x = 0;
  return;
}