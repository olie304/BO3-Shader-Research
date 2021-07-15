// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:29:53 2021

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
  float3 colorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 wind1Parms : packoffset(c11.z);
  float2 wind2Parms : packoffset(c12);
  float2 wind3Parms : packoffset(c12.z);
  float2 vertexColorScale : packoffset(c13);
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

cbuffer MotionVectorParams : register(b7)
{

  struct
  {
    row_major float4x4 prevFrameOffToClpMatrixFull;
    row_major float4x4 prevFrameOffToClpMatrixPartial;
    row_major float4x4 curFrameCamToOffMatrix;
    float3 prevFrameEyeOffset;
    float motionStrength;
    float3 eyeOffsetFrameDelta;
    float _padding_23;
    float2 curFrameHalfNearPlaneSize;
    float2 _padding_26;
  } motionVectorConstants : packoffset(c0);

}

cbuffer LightingGlobals : register(b2)
{
  uint numLights : packoffset(c0);
  uint numRefProbes : packoffset(c0.y);
  uint numRefProbeBlends : packoffset(c0.z);
  uint numDedicatedLights : packoffset(c0.w);
  float4 clearColor : packoffset(c1);
  float4 sssParams : packoffset(c2);

  struct
  {
    float4 fogColor;
    float4 sunFogColor;
    float K0;
    float skyK0;
    float expMul;
    float expAdd;
    float heightFalloff;
    float skyHeightFalloff;
    float K0b;
    float padding0;
    float skyK0b;
    float3 wldSunFogDir;
    float2 sunFogAngles;
    float atmospheresunstrength;
    float atmosphereMieSchlickK;
    float2 atmosphereskyfogdensityatcamera;
    float atmosphereExtinctionIntensity;
    float atmosphereInScatterIntensity;
    float3 atmosphereRayleighDensity;
    float atmospherehazebasedist;
    float3 atmosphereMieDensity;
    float atmospherehazefadedist;
    float3 atmosphereTotalDensity;
    float worldfogskysize;
    float3 atmosphereInScatterIntensityOverTotalDensity;
    float blendAmount;
    float2 atmosphereskyfogheightdensityscale;
    float2 atmospherefogdistanceoffset;
    float2 atmospherefogdistancedensityscale;
    float2 atmospherefogheightdensityscale;
    float2 atmospherefogdensityatcamera;
    float2 padding1;
  } fogConstants : packoffset(c3);


  struct
  {
    float3 wldDir;
    float splitDepthOffset;
    float3 color;
    float specScale;
    float globalProbeExposure;
    float3 avgGlobalProbeColor;
    float4 splitPinTransform[3];
    uint sunCookieIndex;
    float sunCookieIntensity;
    float sunVolumetricCookieIntensity;
    uint toolsGfxDisableSunShadow;
    float4 sunCookieTransform[2];
    float intensity;
    int splitArrayOffset;
    float2 pad0;

    struct
    {

      struct
      {
        float2 dimensionInTiles;
        float inchesPerTexel;
        float spanInInches;
      } constants;

      row_major float4x4 offToPinTransform;
      float coordScale;
      uint rootOffset;
      uint2 pad0;
    } sstLightingConstants;

  } sunConstants : packoffset(c17);


  struct
  {
    float2 sstToMinMaxScale;
    float2 pad0;
    float2 halfMinTexelSize;
    float rcpInchesDimLevel0;
    float shadowBiasInches;
  } minMaxConstants : packoffset(c33);


  struct
  {
    uint4 data[3];
  } globalProbeConstants : packoffset(c35);


  struct
  {
    float rain;
    float windSpeed;
    float windDirSin;
    float windDirCos;
    float weatherTile;
    float3 weatherVector;
    float3 weatherVector2;
    float padding0;
    float3 weatherTint;
    float padding1;
    float3 weatherTint2;
    float padding2;
  } weather : packoffset(c38);


  struct
  {

    struct
    {
      float2 dimensionInTiles;
      float inchesPerTexel;
      float spanInInches;
    } constants;

    row_major float4x4 offToPinTransform;
    float coordScale;
    uint rootOffset;
    uint2 pad0;
  } outdoorSSTConstants : packoffset(c43);

  float4 pinToWorldZ : packoffset(c49);

  struct
  {
    uint firstSpotLight;
    uint lastSpotLight;
    uint firstOmniLight;
    uint lastOmniLight;
    uint firstProbe;
    uint lastProbe;
    uint padding0;
    uint padding1;
  } volumetric : packoffset(c50);

  uint viewID : packoffset(c52);
  uint enableCountDebug : packoffset(c52.y);
  uint centerGroupIDx : packoffset(c52.z);
  uint centerGroupIDy : packoffset(c52.w);
  uint viewmodelSunShadowRaw : packoffset(c53);
  uint debugDrawOverlayType : packoffset(c53.y);
  float drawNumLighstScale : packoffset(c53.z);
  float drawNumLightsAlpha : packoffset(c53.w);
  uint probeDebug : packoffset(c54);
  float probeDebugRadius : packoffset(c54.y);
  uint showSunVis : packoffset(c54.z);
  uint enableAO : packoffset(c54.w);
  uint showAO : packoffset(c55);
  uint numGpuCullTilesWidth : packoffset(c55.y);
  uint numGpuCullTilesHeight : packoffset(c55.z);
  int permuteHighlight : packoffset(c55.w);
  uint overdrawOverlayMaxValue : packoffset(c56);
  float overdrawOverlayAlpha : packoffset(c56.y);
  uint overdrawDecals : packoffset(c56.z);
  uint overdrawDecalsLayers : packoffset(c56.w);
  uint permuteStride : packoffset(c57);
  uint numDecals : packoffset(c57.y);
  uint numStaticDecals : packoffset(c57.z);
  uint numDynamicDecals : packoffset(c57.w);
  uint numOverrideProbes : packoffset(c58);
  uint enableDitheredShadow : packoffset(c58.y);
  uint oitMaxEntries : packoffset(c58.z);
  uint numAttenuationVolumes : packoffset(c58.w);
}

StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
StructuredBuffer<boneMatrixBuffer> boneMatrixBuffer : register(t5);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float3 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  float3 v3 : NORMAL0,
  float4 v4 : TANGENT0,
  uint v5 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : COLOR0,
  out float p1 : COLOR1,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2,
  out float4 o5 : TEXCOORD3,
  out float4 o6 : TEXCOORD7)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r0.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r0.xyzw;
  r0.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r0.xyzw;
  r0.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r0.xyzw;
  r1.x = dot(v0.xz, v0.xz);
  r1.x = sqrt(r1.x);
  r1.x = weather.windSpeed * r1.x;
  r1.x = weather.windDirSin * r1.x;
  r1.y = weather.windSpeed * gameTime.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.z, v5.x, l(12), t4.xxxx
r1.z = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.w, r1.z, l(12), t5.xxxx
r1.w = modelInstanceBuffer[]..swiz;
  r1.w = 0.100000001 * r1.w;
  r1.y = r1.y * 0.899999976 + r1.w;
  r1.y = 0.0700000003 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.w = gameTime.w * weather.windSpeed + 0.5;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.x, r1.z, l(28), t5.xxxx
r2.x = modelInstanceBuffer[]..swiz;
  r2.x = 0.100000001 * r2.x;
  r1.w = r1.w * 0.699999988 + r2.x;
  r1.w = 0.0700000003 * r1.w;
  r1.w = cos(r1.w);
  r1.y = r1.w * 0.5 + r1.y;
  r1.y = 0.5 + r1.y;
  r1.y = 0.5 * r1.y;
  r1.x = r1.x * r1.y;
  r2.zw = vertexColorScale.xy * v1.xy;
  r2.x = r2.z * r1.x;
  r1.x = dot(v0.yz, v0.yz);
  r1.x = sqrt(r1.x);
  r1.x = weather.windSpeed * r1.x;
  r1.x = weather.windDirCos * r1.x;
  r1.x = r1.x * r1.y;
  r2.y = r1.x * r2.z;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.z, l(0), t5.xyzw
r3.x = modelInstanceBuffer[]..swiz;
r3.y = modelInstanceBuffer[]..swiz;
r3.z = modelInstanceBuffer[]..swiz;
r3.w = modelInstanceBuffer[]..swiz;
  r4.x = r3.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.z, l(16), t5.xyzw
r5.x = modelInstanceBuffer[]..swiz;
r5.y = modelInstanceBuffer[]..swiz;
r5.z = modelInstanceBuffer[]..swiz;
r5.w = modelInstanceBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.z, l(32), t5.xyzw
r1.x = modelInstanceBuffer[]..swiz;
r1.y = modelInstanceBuffer[]..swiz;
r1.z = modelInstanceBuffer[]..swiz;
r1.w = modelInstanceBuffer[]..swiz;
  r4.y = r5.w;
  r4.z = r1.w;
  r4.xyz = -eyeOffset.xyz + r4.xyz;
  r3.w = r4.x;
  r6.xyz = v0.xyz;
  r6.w = 1;
  r7.x = dot(r6.xyzw, r3.xyzw);
  r5.w = r4.y;
  r1.w = r4.z;
  r7.y = dot(r6.xyzw, r5.xyzw);
  r7.z = dot(r6.xyzw, r1.xyzw);
  r4.xyz = eyeOffset.xyz + r7.xyz;
  r4.xyz = r2.xyz * float3(0.00999999978,0.00999999978,0) + r4.xyz;
  o1.xy = r2.zw;
  r2.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r4.yyyy;
  r2.xyzw = r4.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = r4.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  r4.xyz = -motionVectorConstants.prevFrameEyeOffset.xyz + r4.xyz;
  o0.xyzw = r2.xyzw + r0.xyzw;
  o1.zw = v1.zw;
  o2.xy = v2.xy;
  r0.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r2.x = dot(r0.xyz, r3.xyz);
  r2.y = dot(r0.xyz, r5.xyz);
  r2.z = dot(r0.xyz, r1.xyz);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  o3.xyz = r2.xyz * r0.www;
  r2.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r6.x = dot(r2.xyz, r3.xyz);
  r6.y = dot(r2.xyz, r5.xyz);
  r6.z = dot(r2.xyz, r1.xyz);
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r6.xyz * r0.www;
  r6.xyz = r2.yzx * r0.zxy;
  r0.xyz = r0.yzx * r2.zxy + -r6.xyz;
  r0.w = v4.w * 2 + -1;
  r0.xyz = r0.xyz * r0.www;
  r2.x = dot(r0.xyz, r3.xyz);
  r2.y = dot(r0.xyz, r5.xyz);
  r2.z = dot(r0.xyz, r1.xyz);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  o5.xyz = r2.xyz * r0.xxx;
  r0.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m10_m11_m12_m13 * r4.yyyy;
  r0.xyzw = r4.xxxx * motionVectorConstants.prevFrameOffToClpMatrixFull._m00_m01_m02_m03 + r0.xyzw;
  r0.xyzw = r4.zzzz * motionVectorConstants.prevFrameOffToClpMatrixFull._m20_m21_m22_m23 + r0.xyzw;
  o6.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m30_m31_m32_m33 + r0.xyzw;
  return;
}