// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:17 2021

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

SamplerState ShadowSamplerState_s : register(s14);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
Texture2D<float> gSunShadowMax : register(t14);
StructuredBuffer<gPermuteExtentsBuffer> gPermuteExtentsBuffer : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t24, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u5, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u6, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u7, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = float2(7,7) + renderTargetSize.xy;
  r0.xy = (uint2)r0.xy;
  r0.xy = (uint2)r0.xy >> int2(3,3);
  r0.zw = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)vThreadIDInGroup.xy);
  r1.xy = cmp((uint2)r0.zw >= (uint2)r0.xy);
  r0.y = (int)r1.y | (int)r1.x;
  if (r0.y != 0) {
    return;
  }
  r0.y = mad((int)r0.w, (int)r0.x, (int)r0.z);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.zw, r0.y, l(0), t24.xxxy
r0.z = ShadowSamplerState[]..swiz;
r0.w = ShadowSamplerState[]..swiz;
  r1.x = cmp(r0.z == 340282346638528859811704183484516925440.000000);
  if (r1.x != 0) {
    return;
  }
  r1.x = cmp(r0.w < 0);
  r1.y = r1.x ? 0.000000 : 0;
  uiDest.x = (uint)r0.y / (uint)r0.x;
  r2.x = (uint)r0.y % (uint)r0.x;
  r0.x = uiDest.x;
  r2.y = r0.x;
  r1.zw = (uint2)r2.xy << int2(3,3);
  r2.y = (uint)r0.y << 5;
  r3.xyw = (uint3)r1.zww;
  r2.zw = float2(0.5,0.5) + r3.xy;
  r2.zw = -subpixelOffset.xy + r2.zw;
  r2.zw = renderTargetSize.zw * r2.zw;
  r2.zw = r2.zw * float2(2,-2) + float2(-1,1);
  r3.x = inverseProjectionMatrix._m00;
  r3.y = inverseProjectionMatrix._m11;
  r4.xy = r3.xy * r2.zw;
  r4.z = 1;
  r5.xyz = r4.xyz * abs(r0.zzz);
  r6.xyz = inverseViewMatrix._m10_m11_m12 * r5.yyy;
  r5.xyw = r5.xxx * inverseViewMatrix._m00_m01_m02 + r6.xyz;
  r5.xyz = r5.zzz * inverseViewMatrix._m20_m21_m22 + r5.xyw;
  r2.zw = (int2)r1.zw + int2(8,8);
  r3.z = (uint)r2.z;
  r3.zw = -subpixelOffset.xy + r3.zw;
  r3.zw = float2(0.5,0.5) + r3.zw;
  r3.zw = renderTargetSize.zw * r3.zw;
  r3.zw = r3.zw * float2(2,-2) + float2(-1,1);
  r6.xy = r3.zw * r3.xy;
  r6.z = 1;
  r7.xyz = r6.xyz * abs(r0.zzz);
  r8.xyz = inverseViewMatrix._m10_m11_m12 * r7.yyy;
  r7.xyw = r7.xxx * inverseViewMatrix._m00_m01_m02 + r8.xyz;
  r7.xyz = r7.zzz * inverseViewMatrix._m20_m21_m22 + r7.xyw;
  r8.xyw = (uint3)r2.zww;
  r2.zw = -subpixelOffset.xy + r8.xy;
  r2.zw = float2(0.5,0.5) + r2.zw;
  r2.zw = renderTargetSize.zw * r2.zw;
  r2.zw = r2.zw * float2(2,-2) + float2(-1,1);
  r9.xy = r2.zw * r3.xy;
  r9.z = 1;
  r10.xyz = r9.xyz * abs(r0.zzz);
  r11.xyz = inverseViewMatrix._m11_m12_m10 * r10.yyy;
  r10.xyw = r10.xxx * inverseViewMatrix._m01_m02_m00 + r11.xyz;
  r10.xyz = r10.zzz * inverseViewMatrix._m21_m22_m20 + r10.xyw;
  r8.z = (uint)r1.z;
  r1.zw = -subpixelOffset.xy + r8.zw;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r3.xy = r1.zw * r3.xy;
  r3.z = 1;
  r8.xyz = r3.xyz * abs(r0.zzz);
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r8.yyy;
  r8.xyw = r8.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r8.xyz = r8.zzz * inverseViewMatrix._m20_m21_m22 + r8.xyw;
  r4.xyz = r4.xyz * abs(r0.www);
  r11.xyz = inverseViewMatrix._m11_m12_m10 * r4.yyy;
  r4.xyw = r4.xxx * inverseViewMatrix._m01_m02_m00 + r11.xyz;
  r4.xyz = r4.zzz * inverseViewMatrix._m21_m22_m20 + r4.xyw;
  r6.xyz = r6.xyz * abs(r0.www);
  r11.xyz = inverseViewMatrix._m12_m10_m11 * r6.yyy;
  r6.xyw = r6.xxx * inverseViewMatrix._m02_m00_m01 + r11.xyz;
  r6.xyz = r6.zzz * inverseViewMatrix._m22_m20_m21 + r6.xyw;
  r9.xyz = r9.xyz * abs(r0.www);
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r9.yyy;
  r9.xyw = r9.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r9.xyz = r9.zzz * inverseViewMatrix._m20_m21_m22 + r9.xyw;
  r3.xyz = r3.xyz * abs(r0.www);
  r11.xyz = inverseViewMatrix._m12_m10_m11 * r3.yyy;
  r3.xyw = r3.xxx * inverseViewMatrix._m02_m00_m01 + r11.xyz;
  r3.xyz = r3.zzz * inverseViewMatrix._m22_m20_m21 + r3.xyw;
  r11.xyz = float3(0.125,0.125,0.125) * r7.xyz;
  r11.xyz = r5.xyz * float3(0.125,0.125,0.125) + r11.xyz;
  r11.xyz = r10.zxy * float3(0.125,0.125,0.125) + r11.xyz;
  r11.xyz = r8.xyz * float3(0.125,0.125,0.125) + r11.xyz;
  r11.xyz = r4.zxy * float3(0.125,0.125,0.125) + r11.xyz;
  r11.xyz = r6.yzx * float3(0.125,0.125,0.125) + r11.xyz;
  r11.xyz = r9.xyz * float3(0.125,0.125,0.125) + r11.xyz;
  r11.xyz = r3.yzx * float3(0.125,0.125,0.125) + r11.xyz;
  r12.xyz = -r11.xyz + r5.xyz;
  r13.xyz = -r11.xyz + r7.xyz;
  r12.xyz = max(abs(r13.xyz), abs(r12.xyz));
  r13.xyz = -r11.xyz + r10.zxy;
  r12.xyz = max(abs(r13.xyz), r12.xyz);
  r13.xyz = -r11.xyz + r8.xyz;
  r12.xyz = max(abs(r13.xyz), r12.xyz);
  r13.xyz = -r11.xyz + r4.zxy;
  r12.xyz = max(abs(r13.xyz), r12.xyz);
  r13.xyz = -r11.xyz + r6.yzx;
  r12.xyz = max(abs(r13.xyz), r12.xyz);
  r13.xyz = -r11.xyz + r9.xyz;
  r12.xyz = max(abs(r13.xyz), r12.xyz);
  r13.xyz = -r11.xyz + r3.yzx;
  r12.xyz = max(abs(r13.xyz), r12.xyz);
  r0.z = max(sunConstants.color.y, sunConstants.color.z);
  r0.z = max(sunConstants.color.x, r0.z);
  r0.z = cmp(0 < r0.z);
  if (r0.z != 0) {
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r5.yyy;
    r13.xyz = r5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.xyz;
    r13.xyz = r5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.xyz;
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.xyz;
    r14.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r7.yyy;
    r14.xyz = r7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r14.xyz;
    r14.xyz = r7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r14.xyz;
    r14.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.xyz;
    r15.xyz = min(r14.xyz, r13.xyz);
    r0.zw = max(r14.xy, r13.xy);
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.xxx;
    r13.xyz = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.xyz;
    r13.xyz = r10.yyy * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.xyz;
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.xyz;
    r14.xyz = min(r15.xyz, r13.xyz);
    r0.zw = max(r13.xy, r0.zw);
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r8.yyy;
    r13.xyz = r8.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.xyz;
    r13.xyz = r8.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.xyz;
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.xyz;
    r14.xyz = min(r14.xyz, r13.xyz);
    r0.zw = max(r13.xy, r0.zw);
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r4.xxx;
    r13.xyz = r4.zzz * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.xyz;
    r13.xyz = r4.yyy * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.xyz;
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.xyz;
    r14.xyz = min(r14.xyz, r13.xyz);
    r0.zw = max(r13.xy, r0.zw);
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r6.zzz;
    r13.xyz = r6.yyy * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.xyz;
    r13.xyz = r6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.xyz;
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.xyz;
    r14.xyz = min(r14.xyz, r13.xyz);
    r0.zw = max(r13.xy, r0.zw);
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r9.yyy;
    r13.xyz = r9.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.xyz;
    r13.xyz = r9.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.xyz;
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.xyz;
    r14.xyz = min(r14.xyz, r13.xyz);
    r0.zw = max(r13.xy, r0.zw);
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r3.zzz;
    r13.xyz = r3.yyy * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.xyz;
    r13.xyz = r3.xxx * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.xyz;
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.xyz;
    r14.xyz = min(r14.xyz, r13.xyz);
    r0.zw = max(r13.xy, r0.zw);
    r1.zw = r14.xy + r0.zw;
    r1.zw = float2(0.5,0.5) * r1.zw;
    r13.xyz = float3(128,0.5,0.5) * sunConstants.sstLightingConstants.constants.inchesPerTexel;
    r15.x = rcp(r13.x);
    r15.y = -r15.x;
    r1.zw = r1.zw * r15.xy + r13.yz;
    r0.zw = r0.zw + -r14.xy;
    r2.z = cmp(r0.z >= r0.w);
    r0.z = r2.z ? r0.z : r0.w;
    r1.zw = saturate(minMaxConstants.sstToMinMaxScale.xy * r1.zw);
    r0.z = minMaxConstants.rcpInchesDimLevel0 * r0.z;
    r0.z = max(1, r0.z);
    r0.z = log2(r0.z);
    r0.z = min(8, r0.z);
    r0.z = ceil(r0.z);
    r0.w = (int)r0.z;
    r0.w = 1 << (int)r0.w;
    r0.w = (int)r0.w;
    r1.zw = -minMaxConstants.halfMinTexelSize.xy * r0.ww + r1.zw;
    r0.w = gSunShadowMax.SampleLevel(ShadowSamplerState_s, r1.zw, r0.z, int2(0, 0)).x;
    r0.w = max(0, r0.w);
    r2.z = gSunShadowMax.SampleLevel(ShadowSamplerState_s, r1.zw, r0.z, int2(1, 0)).x;
    r0.w = max(r2.z, r0.w);
    r2.z = gSunShadowMax.SampleLevel(ShadowSamplerState_s, r1.zw, r0.z, int2(0, 1)).x;
    r0.w = max(r2.z, r0.w);
    r0.z = gSunShadowMax.SampleLevel(ShadowSamplerState_s, r1.zw, r0.z, int2(1, 1)).x;
    r0.z = max(r0.w, r0.z);
    r0.z = r0.z * 262144 + minMaxConstants.shadowBiasInches;
    r0.z = cmp(r0.z < r14.z);
    r0.w = r1.x ? 48 : 16;
    r1.y = r0.z ? r0.w : r1.y;
  }
  if (numRefProbes != 0) {
    r0.z = numRefProbes + numLights;
    r1.xzw = r10.zxy + r5.xyz;
    r1.xzw = r1.xzw * float3(0.5,0.5,0.5) + -viewMatrix._m30_m31_m32;
    r13.xyz = r9.xyz + r4.zxy;
    r13.xyz = r13.xyz * float3(0.5,0.5,0.5) + -viewMatrix._m30_m31_m32;
    r14.xyz = r10.zxy + r7.xyz;
    r14.xyz = -r14.xyz * float3(0.5,0.5,0.5) + r1.xzw;
    r15.xyz = r7.xyz + r5.xyz;
    r15.xyz = -r15.xyz * float3(0.5,0.5,0.5) + r1.xzw;
    r16.xyz = r9.xyz + r6.yzx;
    r16.xyz = -r16.xyz * float3(0.5,0.5,0.5) + r13.xyz;
    r17.xyz = r6.yzx + r4.zxy;
    r17.xyz = -r17.xyz * float3(0.5,0.5,0.5) + r13.xyz;
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r0.w = (((uint)r0.y << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r18.xyz = -r16.yzx + r13.yzx;
    r19.xyz = r18.xyz + -r17.yzx;
    r20.xyz = -r14.yzx + r1.zwx;
    r21.xyz = r20.xyz + -r15.yzx;
    r19.xyz = -r21.xyz + r19.xyz;
    r21.xyz = r16.yzx + r13.yzx;
    r22.xyz = r21.xyz + r17.yzx;
    r23.xyz = r14.yzx + r1.zwx;
    r24.xyz = r23.xyz + r15.yzx;
    r22.xyz = -r24.xyz + r22.xyz;
    r24.xyz = viewMatrix._m02_m00_m01 * r19.xyz;
    r24.xyz = viewMatrix._m01_m02_m00 * r19.yzx + -r24.xyz;
    r25.xyz = viewMatrix._m02_m00_m01 * r22.xyz;
    r25.xyz = viewMatrix._m01_m02_m00 * r22.yzx + -r25.xyz;
    r26.xyz = viewMatrix._m12_m10_m11 * r19.xyz;
    r26.xyz = viewMatrix._m11_m12_m10 * r19.yzx + -r26.xyz;
    r27.xyz = viewMatrix._m12_m10_m11 * r22.xyz;
    r27.xyz = viewMatrix._m11_m12_m10 * r22.yzx + -r27.xyz;
    r2.z = dot(r1.xzw, viewMatrix._m20_m21_m22);
    r2.w = dot(r14.xyz, viewMatrix._m20_m21_m22);
    r3.w = dot(r15.xyz, viewMatrix._m20_m21_m22);
    r2.w = abs(r3.w) + abs(r2.w);
    r3.w = dot(r13.xyz, viewMatrix._m20_m21_m22);
    r4.w = dot(r16.xyz, viewMatrix._m20_m21_m22);
    r5.w = dot(r17.xyz, viewMatrix._m20_m21_m22);
    r4.w = abs(r5.w) + abs(r4.w);
    r5.w = r2.z + -r2.w;
    r6.w = -r4.w + r3.w;
    r5.w = min(r6.w, r5.w);
    r2.z = r2.z + r2.w;
    r2.w = r4.w + r3.w;
    r2.z = max(r2.z, r2.w);
    r2.w = dot(r1.xzw, r25.xyz);
    r3.w = dot(r1.xzw, r24.xyz);
    r4.w = dot(r14.xyz, r24.xyz);
    r6.w = dot(r15.xyz, r24.xyz);
    r4.w = abs(r6.w) + abs(r4.w);
    r6.w = dot(r13.xyz, r24.xyz);
    r7.w = dot(r16.xyz, r24.xyz);
    r8.w = dot(r17.xyz, r24.xyz);
    r7.w = abs(r8.w) + abs(r7.w);
    r8.w = -r4.w + r3.w;
    r9.w = -r7.w + r6.w;
    r8.w = min(r9.w, r8.w);
    r3.w = r4.w + r3.w;
    r4.w = r7.w + r6.w;
    r3.w = max(r4.w, r3.w);
    r4.w = dot(r14.xyz, r25.xyz);
    r6.w = dot(r15.xyz, r25.xyz);
    r4.w = abs(r6.w) + abs(r4.w);
    r6.w = dot(r13.xyz, r25.xyz);
    r7.w = dot(r16.xyz, r25.xyz);
    r9.w = dot(r17.xyz, r25.xyz);
    r7.w = abs(r9.w) + abs(r7.w);
    r9.w = -r4.w + r2.w;
    r10.w = -r7.w + r6.w;
    r9.w = min(r10.w, r9.w);
    r2.w = r4.w + r2.w;
    r4.w = r7.w + r6.w;
    r2.w = max(r4.w, r2.w);
    r4.w = dot(r1.xzw, r26.xyz);
    r6.w = dot(r14.xyz, r26.xyz);
    r7.w = dot(r15.xyz, r26.xyz);
    r6.w = abs(r7.w) + abs(r6.w);
    r7.w = dot(r13.xyz, r26.xyz);
    r10.w = dot(r16.xyz, r26.xyz);
    r11.w = dot(r17.xyz, r26.xyz);
    r10.w = abs(r11.w) + abs(r10.w);
    r11.w = -r6.w + r4.w;
    r12.w = -r10.w + r7.w;
    r11.w = min(r12.w, r11.w);
    r4.w = r6.w + r4.w;
    r6.w = r10.w + r7.w;
    r4.w = max(r6.w, r4.w);
    r6.w = dot(r1.xzw, r27.xyz);
    r7.w = dot(r14.xyz, r27.xyz);
    r10.w = dot(r15.xyz, r27.xyz);
    r7.w = abs(r10.w) + abs(r7.w);
    r10.w = dot(r13.xyz, r27.xyz);
    r12.w = dot(r16.xyz, r27.xyz);
    r13.w = dot(r17.xyz, r27.xyz);
    r12.w = abs(r13.w) + abs(r12.w);
    r13.w = -r7.w + r6.w;
    r14.w = -r12.w + r10.w;
    r13.w = min(r14.w, r13.w);
    r6.w = r7.w + r6.w;
    r7.w = r12.w + r10.w;
    r6.w = max(r7.w, r6.w);
    r21.xyz = r21.xyz + -r17.yzx;
    r23.xyz = r23.xyz + -r15.yzx;
    r21.xyz = -r23.xyz + r21.xyz;
    r18.xyz = r18.xyz + r17.yzx;
    r20.xyz = r20.xyz + r15.yzx;
    r18.xyz = -r20.xyz + r18.xyz;
    r20.y = 0;
    r7.w = r0.w;
    r23.xyzw = float4(0,0,0,0);
    r10.w = numLights;
    while (true) {
      r12.w = cmp((uint)r10.w >= (uint)r0.z);
      if (r12.w != 0) break;
      r12.w = (int)r10.w + -numLights;
      r14.w = (int)r12.w & 31;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(0), t11.xyzw
    r28.x = ShadowSamplerState[]..swiz;
    r28.y = ShadowSamplerState[]..swiz;
    r28.z = ShadowSamplerState[]..swiz;
    r28.w = ShadowSamplerState[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(16), t11.xyzw
    r29.x = ShadowSamplerState[]..swiz;
    r29.y = ShadowSamplerState[]..swiz;
    r29.z = ShadowSamplerState[]..swiz;
    r29.w = ShadowSamplerState[]..swiz;
      r30.xyz = r28.xyz + -r11.xyz;
      r31.x = r28.w;
      r31.yz = r29.xy;
      r31.xyz = r31.xyz + r12.xyz;
      r30.xyz = cmp(r31.xyz < abs(r30.xyz));
      r15.w = (int)r30.y | (int)r30.x;
      r15.w = (int)r30.z | (int)r15.w;
      if (r15.w == 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(32), t11.xyzw
      r30.x = ShadowSamplerState[]..swiz;
      r30.y = ShadowSamplerState[]..swiz;
      r30.z = ShadowSamplerState[]..swiz;
      r30.w = ShadowSamplerState[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(48), t11.xyzw
      r31.x = ShadowSamplerState[]..swiz;
      r31.y = ShadowSamplerState[]..swiz;
      r31.z = ShadowSamplerState[]..swiz;
      r31.w = ShadowSamplerState[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r10.w, l(64), t11.xyxx
      r32.x = ShadowSamplerState[]..swiz;
      r32.y = ShadowSamplerState[]..swiz;
        r29.xyz = r30.yzw * r29.zzz;
        r33.xyz = r31.xyz * r29.www;
        r32.z = r31.w;
        r34.xyz = r32.zxy * r30.xxx;
        r20.zw = float2(0,0);
        r15.w = 0;
        while (true) {
          r16.w = cmp((int)r20.w >= 3);
          r15.w = 0;
          if (r16.w != 0) break;
          r35.xyz = icb[r20.w+0].xxx * r30.yzw;
          r35.xyz = icb[r20.w+0].yyy * r31.xyz + r35.xyz;
          r35.xyz = icb[r20.w+0].zzz * r32.zxy + r35.xyz;
          r16.w = dot(r28.xyz, r35.xyz);
          r17.w = dot(r29.xyz, r35.xyz);
          r18.w = dot(r33.xyz, r35.xyz);
          r17.w = abs(r18.w) + abs(r17.w);
          r18.w = dot(r34.xyz, r35.xyz);
          r17.w = abs(r18.w) + r17.w;
          r18.w = -r17.w + r16.w;
          r16.w = r17.w + r16.w;
          r17.w = dot(r1.xzw, r35.xyz);
          r19.w = dot(r14.xyz, r35.xyz);
          r21.w = dot(r15.xyz, r35.xyz);
          r19.w = abs(r21.w) + abs(r19.w);
          r21.w = dot(r13.xyz, r35.xyz);
          r22.w = dot(r16.xyz, r35.xyz);
          r24.w = dot(r17.xyz, r35.xyz);
          r22.w = abs(r24.w) + abs(r22.w);
          r24.w = -r19.w + r17.w;
          r25.w = -r22.w + r21.w;
          r24.w = min(r25.w, r24.w);
          r17.w = r19.w + r17.w;
          r19.w = r22.w + r21.w;
          r17.w = max(r19.w, r17.w);
          r16.w = cmp(r16.w < r24.w);
          r17.w = cmp(r17.w < r18.w);
          r16.w = (int)r16.w | (int)r17.w;
          if (r16.w != 0) {
            r20.z = -1;
            r15.w = -1;
            break;
          }
          r20.x = (int)r20.w + 1;
          r20.zw = r20.yx;
          r15.w = r16.w;
        }
        if (r15.w == 0) {
          r16.w = dot(r28.xyz, viewMatrix._m20_m21_m22);
          r17.w = dot(r29.xyz, viewMatrix._m20_m21_m22);
          r18.w = dot(r33.xyz, viewMatrix._m20_m21_m22);
          r17.w = abs(r18.w) + abs(r17.w);
          r18.w = dot(r34.xyz, viewMatrix._m20_m21_m22);
          r17.w = abs(r18.w) + r17.w;
          r18.w = -r17.w + r16.w;
          r16.w = r17.w + r16.w;
          r16.w = cmp(r16.w < r5.w);
          r17.w = cmp(r2.z < r18.w);
          r16.w = (int)r16.w | (int)r17.w;
          r20.z = (int)r20.z | (int)r16.w;
          r17.w = ~(int)r16.w;
          if (r16.w == 0) {
            if (r16.w == 0) {
              r18.w = dot(r28.xyz, r24.xyz);
              r19.w = dot(r29.xyz, r24.xyz);
              r20.x = dot(r33.xyz, r24.xyz);
              r19.w = abs(r20.x) + abs(r19.w);
              r20.x = dot(r34.xyz, r24.xyz);
              r19.w = abs(r20.x) + r19.w;
              r20.x = -r19.w + r18.w;
              r18.w = r19.w + r18.w;
              r18.w = cmp(r18.w < r8.w);
              r19.w = cmp(r3.w < r20.x);
              r35.y = (int)r18.w | (int)r19.w;
              r20.z = (int)r20.z | (int)r35.y;
              r35.x = r35.y;
            } else {
              r35.xy = float2(-1,-1);
            }
            r20.xw = r17.ww ? r35.yx : 0;
            r20.xw = (int2)r16.ww | (int2)r20.wx;
          } else {
            r20.xw = float2(-1,-1);
          }
          r16.w = ~(int)r20.w;
          r17.w = ~(int)r20.x;
          r16.w = r16.w ? r17.w : 0;
          if (r16.w != 0) {
            r16.w = dot(r28.xyz, r25.xyz);
            r17.w = dot(r29.xyz, r25.xyz);
            r18.w = dot(r33.xyz, r25.xyz);
            r17.w = abs(r18.w) + abs(r17.w);
            r18.w = dot(r34.xyz, r25.xyz);
            r17.w = abs(r18.w) + r17.w;
            r18.w = -r17.w + r16.w;
            r16.w = r17.w + r16.w;
            r16.w = cmp(r16.w < r9.w);
            r17.w = cmp(r2.w < r18.w);
            r16.w = (int)r16.w | (int)r17.w;
            r20.z = (int)r20.z | (int)r16.w;
            r20.x = r16.w;
          } else {
            r16.w = -1;
          }
          r16.w = ~(int)r16.w;
          r17.w = ~(int)r20.x;
          r16.w = r17.w ? r16.w : 0;
          if (r16.w != 0) {
            r16.w = dot(r28.xyz, r26.xyz);
            r17.w = dot(r29.xyz, r26.xyz);
            r18.w = dot(r33.xyz, r26.xyz);
            r17.w = abs(r18.w) + abs(r17.w);
            r18.w = dot(r34.xyz, r26.xyz);
            r17.w = abs(r18.w) + r17.w;
            r18.w = -r17.w + r16.w;
            r16.w = r17.w + r16.w;
            r16.w = cmp(r16.w < r11.w);
            r17.w = cmp(r4.w < r18.w);
            r16.w = (int)r16.w | (int)r17.w;
            r20.z = (int)r20.z | (int)r16.w;
            r20.x = r16.w;
          } else {
            r16.w = -1;
          }
          r16.w = ~(int)r16.w;
          r17.w = ~(int)r20.x;
          r16.w = r17.w ? r16.w : 0;
          if (r16.w != 0) {
            r16.w = dot(r28.xyz, r27.xyz);
            r17.w = dot(r29.xyz, r27.xyz);
            r18.w = dot(r33.xyz, r27.xyz);
            r17.w = abs(r18.w) + abs(r17.w);
            r18.w = dot(r34.xyz, r27.xyz);
            r17.w = abs(r18.w) + r17.w;
            r18.w = -r17.w + r16.w;
            r16.w = r17.w + r16.w;
            r16.w = cmp(r16.w < r13.w);
            r17.w = cmp(r6.w < r18.w);
            r20.x = (int)r16.w | (int)r17.w;
            r20.z = (int)r20.z | (int)r20.x;
          }
          if (r20.x == 0) {
            r35.xyz = viewMatrix._m01_m02_m00 * r30.wyz;
            r35.xyz = r30.zwy * viewMatrix._m02_m00_m01 + -r35.xyz;
            r16.w = dot(r28.xyz, r35.xyz);
            r17.w = dot(r29.xyz, r35.xyz);
            r18.w = dot(r33.xyz, r35.xyz);
            r17.w = abs(r18.w) + abs(r17.w);
            r18.w = dot(r34.xyz, r35.xyz);
            r17.w = abs(r18.w) + r17.w;
            r18.w = -r17.w + r16.w;
            r16.w = r17.w + r16.w;
            r17.w = dot(r1.xzw, r35.xyz);
            r19.w = dot(r14.xyz, r35.xyz);
            r20.x = dot(r15.xyz, r35.xyz);
            r19.w = abs(r20.x) + abs(r19.w);
            r20.x = dot(r13.xyz, r35.xyz);
            r20.w = dot(r16.xyz, r35.xyz);
            r21.w = dot(r17.xyz, r35.xyz);
            r20.w = abs(r21.w) + abs(r20.w);
            r21.w = -r19.w + r17.w;
            r22.w = r20.x + -r20.w;
            r21.w = min(r22.w, r21.w);
            r17.w = r19.w + r17.w;
            r19.w = r20.x + r20.w;
            r17.w = max(r19.w, r17.w);
            r16.w = cmp(r16.w < r21.w);
            r17.w = cmp(r17.w < r18.w);
            r16.w = (int)r16.w | (int)r17.w;
            r17.w = (int)r20.z | (int)r16.w;
            r18.w = ~(int)r16.w;
            if (r16.w == 0) {
              if (r16.w == 0) {
                r35.xyz = viewMatrix._m01_m02_m00 * r31.zxy;
                r35.xyz = r31.yzx * viewMatrix._m02_m00_m01 + -r35.xyz;
                r19.w = dot(r28.xyz, r35.xyz);
                r20.x = dot(r29.xyz, r35.xyz);
                r20.w = dot(r33.xyz, r35.xyz);
                r20.x = abs(r20.x) + abs(r20.w);
                r20.w = dot(r34.xyz, r35.xyz);
                r20.x = r20.x + abs(r20.w);
                r20.w = -r20.x + r19.w;
                r19.w = r20.x + r19.w;
                r20.x = dot(r1.xzw, r35.xyz);
                r21.w = dot(r14.xyz, r35.xyz);
                r22.w = dot(r15.xyz, r35.xyz);
                r21.w = abs(r22.w) + abs(r21.w);
                r22.w = dot(r13.xyz, r35.xyz);
                r24.w = dot(r16.xyz, r35.xyz);
                r25.w = dot(r17.xyz, r35.xyz);
                r24.w = abs(r25.w) + abs(r24.w);
                r25.w = -r21.w + r20.x;
                r26.w = -r24.w + r22.w;
                r25.w = min(r26.w, r25.w);
                r20.x = r21.w + r20.x;
                r21.w = r24.w + r22.w;
                r20.x = max(r21.w, r20.x);
                r19.w = cmp(r19.w < r25.w);
                r20.x = cmp(r20.x < r20.w);
                r35.y = (int)r19.w | (int)r20.x;
                r17.w = (int)r17.w | (int)r35.y;
                r35.x = r35.y;
              } else {
                r35.xy = float2(-1,-1);
              }
              r20.xw = (int2)r18.ww & (int2)r35.yx;
              r20.xw = (int2)r16.ww | (int2)r20.wx;
            } else {
              r20.xw = float2(-1,-1);
            }
            r16.w = ~(int)r20.w;
            r18.w = ~(int)r20.x;
            r16.w = r16.w ? r18.w : 0;
            if (r16.w != 0) {
              r35.xyz = viewMatrix._m01_m02_m00 * r32.yzx;
              r35.xyz = r32.xyz * viewMatrix._m02_m00_m01 + -r35.xyz;
              r16.w = dot(r28.xyz, r35.xyz);
              r18.w = dot(r29.xyz, r35.xyz);
              r19.w = dot(r33.xyz, r35.xyz);
              r18.w = abs(r19.w) + abs(r18.w);
              r19.w = dot(r34.xyz, r35.xyz);
              r18.w = abs(r19.w) + r18.w;
              r19.w = -r18.w + r16.w;
              r16.w = r18.w + r16.w;
              r18.w = dot(r1.xzw, r35.xyz);
              r20.w = dot(r14.xyz, r35.xyz);
              r21.w = dot(r15.xyz, r35.xyz);
              r20.w = abs(r21.w) + abs(r20.w);
              r21.w = dot(r13.xyz, r35.xyz);
              r22.w = dot(r16.xyz, r35.xyz);
              r24.w = dot(r17.xyz, r35.xyz);
              r22.w = abs(r24.w) + abs(r22.w);
              r24.w = -r20.w + r18.w;
              r25.w = -r22.w + r21.w;
              r24.w = min(r25.w, r24.w);
              r18.w = r20.w + r18.w;
              r20.w = r22.w + r21.w;
              r18.w = max(r20.w, r18.w);
              r16.w = cmp(r16.w < r24.w);
              r18.w = cmp(r18.w < r19.w);
              r20.x = (int)r16.w | (int)r18.w;
              r17.w = (int)r17.w | (int)r20.x;
            }
            r16.w = ~(int)r20.x;
            if (r20.x == 0) {
              if (r20.x == 0) {
                if (r20.x == 0) {
                  r35.xyz = viewMatrix._m11_m12_m10 * r30.wyz;
                  r35.xyz = r30.zwy * viewMatrix._m12_m10_m11 + -r35.xyz;
                  r18.w = dot(r28.xyz, r35.xyz);
                  r19.w = dot(r29.xyz, r35.xyz);
                  r20.x = dot(r33.xyz, r35.xyz);
                  r19.w = abs(r20.x) + abs(r19.w);
                  r20.x = dot(r34.xyz, r35.xyz);
                  r19.w = abs(r20.x) + r19.w;
                  r20.x = -r19.w + r18.w;
                  r18.w = r19.w + r18.w;
                  r19.w = dot(r1.xzw, r35.xyz);
                  r20.w = dot(r14.xyz, r35.xyz);
                  r21.w = dot(r15.xyz, r35.xyz);
                  r20.w = abs(r21.w) + abs(r20.w);
                  r21.w = dot(r13.xyz, r35.xyz);
                  r22.w = dot(r16.xyz, r35.xyz);
                  r24.w = dot(r17.xyz, r35.xyz);
                  r22.w = abs(r24.w) + abs(r22.w);
                  r24.w = -r20.w + r19.w;
                  r25.w = -r22.w + r21.w;
                  r24.w = min(r25.w, r24.w);
                  r19.w = r20.w + r19.w;
                  r20.w = r22.w + r21.w;
                  r19.w = max(r20.w, r19.w);
                  r18.w = cmp(r18.w < r24.w);
                  r19.w = cmp(r19.w < r20.x);
                  r18.w = (int)r18.w | (int)r19.w;
                  r17.w = (int)r17.w | (int)r18.w;
                  r20.x = r18.w;
                } else {
                  r20.x = -1;
                  r18.w = 0;
                }
              } else {
                r20.x = -1;
                r18.w = -1;
              }
              r18.w = ~(int)r18.w;
              r19.w = ~(int)r20.x;
              r18.w = r19.w ? r18.w : 0;
              if (r18.w != 0) {
                r35.xyz = viewMatrix._m11_m12_m10 * r31.zxy;
                r35.xyz = r31.yzx * viewMatrix._m12_m10_m11 + -r35.xyz;
                r18.w = dot(r28.xyz, r35.xyz);
                r19.w = dot(r29.xyz, r35.xyz);
                r21.w = dot(r33.xyz, r35.xyz);
                r19.w = abs(r21.w) + abs(r19.w);
                r21.w = dot(r34.xyz, r35.xyz);
                r19.w = abs(r21.w) + r19.w;
                r21.w = -r19.w + r18.w;
                r18.w = r19.w + r18.w;
                r19.w = dot(r1.xzw, r35.xyz);
                r22.w = dot(r14.xyz, r35.xyz);
                r24.w = dot(r15.xyz, r35.xyz);
                r22.w = abs(r24.w) + abs(r22.w);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r16.xyz, r35.xyz);
                r26.w = dot(r17.xyz, r35.xyz);
                r25.w = abs(r26.w) + abs(r25.w);
                r26.w = -r22.w + r19.w;
                r27.w = -r25.w + r24.w;
                r26.w = min(r27.w, r26.w);
                r19.w = r22.w + r19.w;
                r22.w = r25.w + r24.w;
                r19.w = max(r22.w, r19.w);
                r18.w = cmp(r18.w < r26.w);
                r19.w = cmp(r19.w < r21.w);
                r18.w = (int)r18.w | (int)r19.w;
                r17.w = (int)r17.w | (int)r18.w;
                r20.x = r18.w;
              } else {
                r18.w = -1;
              }
              r18.w = ~(int)r18.w;
              r19.w = ~(int)r20.x;
              r18.w = r19.w ? r18.w : 0;
              if (r18.w != 0) {
                r35.xyz = viewMatrix._m11_m12_m10 * r32.yzx;
                r35.xyz = r32.xyz * viewMatrix._m12_m10_m11 + -r35.xyz;
                r18.w = dot(r28.xyz, r35.xyz);
                r19.w = dot(r29.xyz, r35.xyz);
                r21.w = dot(r33.xyz, r35.xyz);
                r19.w = abs(r21.w) + abs(r19.w);
                r21.w = dot(r34.xyz, r35.xyz);
                r19.w = abs(r21.w) + r19.w;
                r21.w = -r19.w + r18.w;
                r18.w = r19.w + r18.w;
                r19.w = dot(r1.xzw, r35.xyz);
                r22.w = dot(r14.xyz, r35.xyz);
                r24.w = dot(r15.xyz, r35.xyz);
                r22.w = abs(r24.w) + abs(r22.w);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r16.xyz, r35.xyz);
                r26.w = dot(r17.xyz, r35.xyz);
                r25.w = abs(r26.w) + abs(r25.w);
                r26.w = -r22.w + r19.w;
                r27.w = -r25.w + r24.w;
                r26.w = min(r27.w, r26.w);
                r19.w = r22.w + r19.w;
                r22.w = r25.w + r24.w;
                r19.w = max(r22.w, r19.w);
                r18.w = cmp(r18.w < r26.w);
                r19.w = cmp(r19.w < r21.w);
                r20.x = (int)r18.w | (int)r19.w;
                r17.w = (int)r17.w | (int)r20.x;
              }
            } else {
              r20.x = -1;
            }
            r18.w = ~(int)r20.x;
            r16.w = r16.w ? r18.w : 0;
            if (r16.w != 0) {
              r35.xyz = r30.wyz * r19.xyz;
              r35.xyz = r30.zwy * r19.yzx + -r35.xyz;
              r18.w = dot(r28.xyz, r35.xyz);
              r19.w = dot(r29.xyz, r35.xyz);
              r21.w = dot(r33.xyz, r35.xyz);
              r19.w = abs(r21.w) + abs(r19.w);
              r21.w = dot(r34.xyz, r35.xyz);
              r19.w = abs(r21.w) + r19.w;
              r21.w = -r19.w + r18.w;
              r18.w = r19.w + r18.w;
              r19.w = dot(r1.xzw, r35.xyz);
              r22.w = dot(r14.xyz, r35.xyz);
              r24.w = dot(r15.xyz, r35.xyz);
              r22.w = abs(r24.w) + abs(r22.w);
              r24.w = dot(r13.xyz, r35.xyz);
              r25.w = dot(r16.xyz, r35.xyz);
              r26.w = dot(r17.xyz, r35.xyz);
              r25.w = abs(r26.w) + abs(r25.w);
              r26.w = -r22.w + r19.w;
              r27.w = -r25.w + r24.w;
              r26.w = min(r27.w, r26.w);
              r19.w = r22.w + r19.w;
              r22.w = r25.w + r24.w;
              r19.w = max(r22.w, r19.w);
              r18.w = cmp(r18.w < r26.w);
              r19.w = cmp(r19.w < r21.w);
              r18.w = (int)r18.w | (int)r19.w;
              r17.w = (int)r17.w | (int)r18.w;
              r19.w = ~(int)r18.w;
              if (r18.w == 0) {
                if (r18.w == 0) {
                  r35.xyz = r31.zxy * r19.xyz;
                  r35.xyz = r31.yzx * r19.yzx + -r35.xyz;
                  r21.w = dot(r28.xyz, r35.xyz);
                  r22.w = dot(r29.xyz, r35.xyz);
                  r24.w = dot(r33.xyz, r35.xyz);
                  r22.w = abs(r24.w) + abs(r22.w);
                  r24.w = dot(r34.xyz, r35.xyz);
                  r22.w = abs(r24.w) + r22.w;
                  r24.w = -r22.w + r21.w;
                  r21.w = r22.w + r21.w;
                  r22.w = dot(r1.xzw, r35.xyz);
                  r25.w = dot(r14.xyz, r35.xyz);
                  r26.w = dot(r15.xyz, r35.xyz);
                  r25.w = abs(r26.w) + abs(r25.w);
                  r26.w = dot(r13.xyz, r35.xyz);
                  r27.w = dot(r16.xyz, r35.xyz);
                  r28.w = dot(r17.xyz, r35.xyz);
                  r27.w = abs(r28.w) + abs(r27.w);
                  r28.w = -r25.w + r22.w;
                  r29.w = -r27.w + r26.w;
                  r28.w = min(r29.w, r28.w);
                  r22.w = r25.w + r22.w;
                  r25.w = r27.w + r26.w;
                  r22.w = max(r25.w, r22.w);
                  r21.w = cmp(r21.w < r28.w);
                  r22.w = cmp(r22.w < r24.w);
                  r35.y = (int)r21.w | (int)r22.w;
                  r17.w = (int)r17.w | (int)r35.y;
                  r35.x = r35.y;
                } else {
                  r35.xy = float2(-1,-1);
                }
                r35.xy = r19.ww ? r35.yx : 0;
                r20.xw = (int2)r18.ww | (int2)r35.yx;
              } else {
                r20.xw = float2(-1,-1);
              }
              r18.w = ~(int)r20.w;
              r19.w = ~(int)r20.x;
              r18.w = r18.w ? r19.w : 0;
              if (r18.w != 0) {
                r35.xyz = r32.yzx * r19.xyz;
                r35.xyz = r32.xyz * r19.yzx + -r35.xyz;
                r18.w = dot(r28.xyz, r35.xyz);
                r19.w = dot(r29.xyz, r35.xyz);
                r21.w = dot(r33.xyz, r35.xyz);
                r19.w = abs(r21.w) + abs(r19.w);
                r21.w = dot(r34.xyz, r35.xyz);
                r19.w = abs(r21.w) + r19.w;
                r21.w = -r19.w + r18.w;
                r18.w = r19.w + r18.w;
                r19.w = dot(r1.xzw, r35.xyz);
                r22.w = dot(r14.xyz, r35.xyz);
                r24.w = dot(r15.xyz, r35.xyz);
                r22.w = abs(r24.w) + abs(r22.w);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r16.xyz, r35.xyz);
                r26.w = dot(r17.xyz, r35.xyz);
                r25.w = abs(r26.w) + abs(r25.w);
                r26.w = -r22.w + r19.w;
                r27.w = -r25.w + r24.w;
                r26.w = min(r27.w, r26.w);
                r19.w = r22.w + r19.w;
                r22.w = r25.w + r24.w;
                r19.w = max(r22.w, r19.w);
                r18.w = cmp(r18.w < r26.w);
                r19.w = cmp(r19.w < r21.w);
                r20.x = (int)r18.w | (int)r19.w;
                r17.w = (int)r17.w | (int)r20.x;
              }
            }
            r18.w = ~(int)r20.x;
            r16.w = r16.w ? r18.w : 0;
            if (r16.w != 0) {
              r35.xyz = r30.wyz * r21.xyz;
              r35.xyz = r30.zwy * r21.yzx + -r35.xyz;
              r18.w = dot(r28.xyz, r35.xyz);
              r19.w = dot(r29.xyz, r35.xyz);
              r21.w = dot(r33.xyz, r35.xyz);
              r19.w = abs(r21.w) + abs(r19.w);
              r21.w = dot(r34.xyz, r35.xyz);
              r19.w = abs(r21.w) + r19.w;
              r21.w = -r19.w + r18.w;
              r18.w = r19.w + r18.w;
              r19.w = dot(r1.xzw, r35.xyz);
              r22.w = dot(r14.xyz, r35.xyz);
              r24.w = dot(r15.xyz, r35.xyz);
              r22.w = abs(r24.w) + abs(r22.w);
              r24.w = dot(r13.xyz, r35.xyz);
              r25.w = dot(r16.xyz, r35.xyz);
              r26.w = dot(r17.xyz, r35.xyz);
              r25.w = abs(r26.w) + abs(r25.w);
              r26.w = -r22.w + r19.w;
              r27.w = -r25.w + r24.w;
              r26.w = min(r27.w, r26.w);
              r19.w = r22.w + r19.w;
              r22.w = r25.w + r24.w;
              r19.w = max(r22.w, r19.w);
              r18.w = cmp(r18.w < r26.w);
              r19.w = cmp(r19.w < r21.w);
              r18.w = (int)r18.w | (int)r19.w;
              r17.w = (int)r17.w | (int)r18.w;
              r19.w = ~(int)r18.w;
              if (r18.w == 0) {
                if (r18.w == 0) {
                  r35.xyz = r31.zxy * r21.xyz;
                  r35.xyz = r31.yzx * r21.yzx + -r35.xyz;
                  r21.w = dot(r28.xyz, r35.xyz);
                  r22.w = dot(r29.xyz, r35.xyz);
                  r24.w = dot(r33.xyz, r35.xyz);
                  r22.w = abs(r24.w) + abs(r22.w);
                  r24.w = dot(r34.xyz, r35.xyz);
                  r22.w = abs(r24.w) + r22.w;
                  r24.w = -r22.w + r21.w;
                  r21.w = r22.w + r21.w;
                  r22.w = dot(r1.xzw, r35.xyz);
                  r25.w = dot(r14.xyz, r35.xyz);
                  r26.w = dot(r15.xyz, r35.xyz);
                  r25.w = abs(r26.w) + abs(r25.w);
                  r26.w = dot(r13.xyz, r35.xyz);
                  r27.w = dot(r16.xyz, r35.xyz);
                  r28.w = dot(r17.xyz, r35.xyz);
                  r27.w = abs(r28.w) + abs(r27.w);
                  r28.w = -r25.w + r22.w;
                  r29.w = -r27.w + r26.w;
                  r28.w = min(r29.w, r28.w);
                  r22.w = r25.w + r22.w;
                  r25.w = r27.w + r26.w;
                  r22.w = max(r25.w, r22.w);
                  r21.w = cmp(r21.w < r28.w);
                  r22.w = cmp(r22.w < r24.w);
                  r35.y = (int)r21.w | (int)r22.w;
                  r17.w = (int)r17.w | (int)r35.y;
                  r35.x = r35.y;
                } else {
                  r35.xy = float2(-1,-1);
                }
                r35.xy = r19.ww ? r35.yx : 0;
                r20.xw = (int2)r18.ww | (int2)r35.yx;
              } else {
                r20.xw = float2(-1,-1);
              }
              r18.w = ~(int)r20.w;
              r19.w = ~(int)r20.x;
              r18.w = r18.w ? r19.w : 0;
              if (r18.w != 0) {
                r35.xyz = r32.yzx * r21.xyz;
                r35.xyz = r32.xyz * r21.yzx + -r35.xyz;
                r18.w = dot(r28.xyz, r35.xyz);
                r19.w = dot(r29.xyz, r35.xyz);
                r21.w = dot(r33.xyz, r35.xyz);
                r19.w = abs(r21.w) + abs(r19.w);
                r21.w = dot(r34.xyz, r35.xyz);
                r19.w = abs(r21.w) + r19.w;
                r21.w = -r19.w + r18.w;
                r18.w = r19.w + r18.w;
                r19.w = dot(r1.xzw, r35.xyz);
                r22.w = dot(r14.xyz, r35.xyz);
                r24.w = dot(r15.xyz, r35.xyz);
                r22.w = abs(r24.w) + abs(r22.w);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r16.xyz, r35.xyz);
                r26.w = dot(r17.xyz, r35.xyz);
                r25.w = abs(r26.w) + abs(r25.w);
                r26.w = -r22.w + r19.w;
                r27.w = -r25.w + r24.w;
                r26.w = min(r27.w, r26.w);
                r19.w = r22.w + r19.w;
                r22.w = r25.w + r24.w;
                r19.w = max(r22.w, r19.w);
                r18.w = cmp(r18.w < r26.w);
                r19.w = cmp(r19.w < r21.w);
                r20.x = (int)r18.w | (int)r19.w;
                r17.w = (int)r17.w | (int)r20.x;
              }
            }
            r18.w = ~(int)r20.x;
            r16.w = r16.w ? r18.w : 0;
            if (r16.w != 0) {
              r35.xyz = r30.wyz * r18.xyz;
              r35.xyz = r30.zwy * r18.yzx + -r35.xyz;
              r18.w = dot(r28.xyz, r35.xyz);
              r19.w = dot(r29.xyz, r35.xyz);
              r21.w = dot(r33.xyz, r35.xyz);
              r19.w = abs(r21.w) + abs(r19.w);
              r21.w = dot(r34.xyz, r35.xyz);
              r19.w = abs(r21.w) + r19.w;
              r21.w = -r19.w + r18.w;
              r18.w = r19.w + r18.w;
              r19.w = dot(r1.xzw, r35.xyz);
              r22.w = dot(r14.xyz, r35.xyz);
              r24.w = dot(r15.xyz, r35.xyz);
              r22.w = abs(r24.w) + abs(r22.w);
              r24.w = dot(r13.xyz, r35.xyz);
              r25.w = dot(r16.xyz, r35.xyz);
              r26.w = dot(r17.xyz, r35.xyz);
              r25.w = abs(r26.w) + abs(r25.w);
              r26.w = -r22.w + r19.w;
              r27.w = -r25.w + r24.w;
              r26.w = min(r27.w, r26.w);
              r19.w = r22.w + r19.w;
              r22.w = r25.w + r24.w;
              r19.w = max(r22.w, r19.w);
              r18.w = cmp(r18.w < r26.w);
              r19.w = cmp(r19.w < r21.w);
              r18.w = (int)r18.w | (int)r19.w;
              r17.w = (int)r17.w | (int)r18.w;
              r19.w = ~(int)r18.w;
              if (r18.w == 0) {
                if (r18.w == 0) {
                  r35.xyz = r31.zxy * r18.xyz;
                  r35.xyz = r31.yzx * r18.yzx + -r35.xyz;
                  r21.w = dot(r28.xyz, r35.xyz);
                  r22.w = dot(r29.xyz, r35.xyz);
                  r24.w = dot(r33.xyz, r35.xyz);
                  r22.w = abs(r24.w) + abs(r22.w);
                  r24.w = dot(r34.xyz, r35.xyz);
                  r22.w = abs(r24.w) + r22.w;
                  r24.w = -r22.w + r21.w;
                  r21.w = r22.w + r21.w;
                  r22.w = dot(r1.xzw, r35.xyz);
                  r25.w = dot(r14.xyz, r35.xyz);
                  r26.w = dot(r15.xyz, r35.xyz);
                  r25.w = abs(r26.w) + abs(r25.w);
                  r26.w = dot(r13.xyz, r35.xyz);
                  r27.w = dot(r16.xyz, r35.xyz);
                  r28.w = dot(r17.xyz, r35.xyz);
                  r27.w = abs(r28.w) + abs(r27.w);
                  r28.w = -r25.w + r22.w;
                  r29.w = -r27.w + r26.w;
                  r28.w = min(r29.w, r28.w);
                  r22.w = r25.w + r22.w;
                  r25.w = r27.w + r26.w;
                  r22.w = max(r25.w, r22.w);
                  r21.w = cmp(r21.w < r28.w);
                  r22.w = cmp(r22.w < r24.w);
                  r35.y = (int)r21.w | (int)r22.w;
                  r17.w = (int)r17.w | (int)r35.y;
                  r35.x = r35.y;
                } else {
                  r35.xy = float2(-1,-1);
                }
                r35.xy = r19.ww ? r35.yx : 0;
                r20.xw = (int2)r18.ww | (int2)r35.yx;
              } else {
                r20.xw = float2(-1,-1);
              }
              r18.w = ~(int)r20.w;
              r19.w = ~(int)r20.x;
              r18.w = r18.w ? r19.w : 0;
              if (r18.w != 0) {
                r35.xyz = r32.yzx * r18.xyz;
                r35.xyz = r32.xyz * r18.yzx + -r35.xyz;
                r18.w = dot(r28.xyz, r35.xyz);
                r19.w = dot(r29.xyz, r35.xyz);
                r21.w = dot(r33.xyz, r35.xyz);
                r19.w = abs(r21.w) + abs(r19.w);
                r21.w = dot(r34.xyz, r35.xyz);
                r19.w = abs(r21.w) + r19.w;
                r21.w = -r19.w + r18.w;
                r18.w = r19.w + r18.w;
                r19.w = dot(r1.xzw, r35.xyz);
                r22.w = dot(r14.xyz, r35.xyz);
                r24.w = dot(r15.xyz, r35.xyz);
                r22.w = abs(r24.w) + abs(r22.w);
                r24.w = dot(r13.xyz, r35.xyz);
                r25.w = dot(r16.xyz, r35.xyz);
                r26.w = dot(r17.xyz, r35.xyz);
                r25.w = abs(r26.w) + abs(r25.w);
                r26.w = -r22.w + r19.w;
                r27.w = -r25.w + r24.w;
                r26.w = min(r27.w, r26.w);
                r19.w = r22.w + r19.w;
                r22.w = r25.w + r24.w;
                r19.w = max(r22.w, r19.w);
                r18.w = cmp(r18.w < r26.w);
                r19.w = cmp(r19.w < r21.w);
                r20.x = (int)r18.w | (int)r19.w;
                r17.w = (int)r17.w | (int)r20.x;
              }
            }
            r18.w = ~(int)r20.x;
            r16.w = r16.w ? r18.w : 0;
            if (r16.w != 0) {
              r35.xyz = r30.wyz * r22.xyz;
              r30.xyz = r30.zwy * r22.yzx + -r35.xyz;
              r16.w = dot(r28.xyz, r30.xyz);
              r18.w = dot(r29.xyz, r30.xyz);
              r19.w = dot(r33.xyz, r30.xyz);
              r18.w = abs(r19.w) + abs(r18.w);
              r19.w = dot(r34.xyz, r30.xyz);
              r18.w = abs(r19.w) + r18.w;
              r19.w = -r18.w + r16.w;
              r16.w = r18.w + r16.w;
              r18.w = dot(r1.xzw, r30.xyz);
              r21.w = dot(r14.xyz, r30.xyz);
              r22.w = dot(r15.xyz, r30.xyz);
              r21.w = abs(r22.w) + abs(r21.w);
              r22.w = dot(r13.xyz, r30.xyz);
              r24.w = dot(r16.xyz, r30.xyz);
              r25.w = dot(r17.xyz, r30.xyz);
              r24.w = abs(r25.w) + abs(r24.w);
              r25.w = -r21.w + r18.w;
              r26.w = -r24.w + r22.w;
              r25.w = min(r26.w, r25.w);
              r18.w = r21.w + r18.w;
              r21.w = r24.w + r22.w;
              r18.w = max(r21.w, r18.w);
              r16.w = cmp(r16.w < r25.w);
              r18.w = cmp(r18.w < r19.w);
              r16.w = (int)r16.w | (int)r18.w;
              r17.w = (int)r17.w | (int)r16.w;
              r18.w = ~(int)r16.w;
              if (r16.w == 0) {
                if (r16.w == 0) {
                  r30.xyz = r31.zxy * r22.xyz;
                  r30.xyz = r31.yzx * r22.yzx + -r30.xyz;
                  r19.w = dot(r28.xyz, r30.xyz);
                  r21.w = dot(r29.xyz, r30.xyz);
                  r22.w = dot(r33.xyz, r30.xyz);
                  r21.w = abs(r22.w) + abs(r21.w);
                  r22.w = dot(r34.xyz, r30.xyz);
                  r21.w = abs(r22.w) + r21.w;
                  r22.w = -r21.w + r19.w;
                  r19.w = r21.w + r19.w;
                  r21.w = dot(r1.xzw, r30.xyz);
                  r24.w = dot(r14.xyz, r30.xyz);
                  r25.w = dot(r15.xyz, r30.xyz);
                  r24.w = abs(r25.w) + abs(r24.w);
                  r25.w = dot(r13.xyz, r30.xyz);
                  r26.w = dot(r16.xyz, r30.xyz);
                  r27.w = dot(r17.xyz, r30.xyz);
                  r26.w = abs(r27.w) + abs(r26.w);
                  r27.w = -r24.w + r21.w;
                  r28.w = -r26.w + r25.w;
                  r27.w = min(r28.w, r27.w);
                  r21.w = r24.w + r21.w;
                  r24.w = r26.w + r25.w;
                  r21.w = max(r24.w, r21.w);
                  r19.w = cmp(r19.w < r27.w);
                  r21.w = cmp(r21.w < r22.w);
                  r30.y = (int)r19.w | (int)r21.w;
                  r17.w = (int)r17.w | (int)r30.y;
                  r30.x = r30.y;
                } else {
                  r30.xy = float2(-1,-1);
                }
                r30.xy = r18.ww ? r30.yx : 0;
                r20.xw = (int2)r16.ww | (int2)r30.yx;
              } else {
                r20.xw = float2(-1,-1);
              }
              r16.w = ~(int)r20.w;
              r18.w = ~(int)r20.x;
              r16.w = r16.w ? r18.w : 0;
              if (r16.w != 0) {
                r30.xyz = r32.yzx * r22.xyz;
                r30.xyz = r32.xyz * r22.yzx + -r30.xyz;
                r16.w = dot(r28.xyz, r30.xyz);
                r18.w = dot(r29.xyz, r30.xyz);
                r19.w = dot(r33.xyz, r30.xyz);
                r18.w = abs(r19.w) + abs(r18.w);
                r19.w = dot(r34.xyz, r30.xyz);
                r18.w = abs(r19.w) + r18.w;
                r19.w = -r18.w + r16.w;
                r16.w = r18.w + r16.w;
                r18.w = dot(r1.xzw, r30.xyz);
                r20.w = dot(r14.xyz, r30.xyz);
                r21.w = dot(r15.xyz, r30.xyz);
                r20.w = abs(r21.w) + abs(r20.w);
                r21.w = dot(r13.xyz, r30.xyz);
                r22.w = dot(r16.xyz, r30.xyz);
                r24.w = dot(r17.xyz, r30.xyz);
                r22.w = abs(r24.w) + abs(r22.w);
                r24.w = -r20.w + r18.w;
                r25.w = -r22.w + r21.w;
                r24.w = min(r25.w, r24.w);
                r18.w = r20.w + r18.w;
                r20.w = r22.w + r21.w;
                r18.w = max(r20.w, r18.w);
                r16.w = cmp(r16.w < r24.w);
                r18.w = cmp(r18.w < r19.w);
                r20.x = (int)r16.w | (int)r18.w;
                r17.w = (int)r17.w | (int)r20.x;
              }
            }
            r20.z = r17.w ? r20.x : 0;
          }
        }
        r28.x = r23.z ? r23.x : r12.w;
        r16.w = cmp((int)r23.z == 1);
        r28.y = r16.w ? r12.w : r23.y;
        r28.z = (int)r23.z + 1;
        bitmask.w = ((~(-1 << 1)) << r12.w) & 0xffffffff;  r28.w = (((uint)1 << r12.w) & bitmask.w) | ((uint)r23.w & ~bitmask.w);
        r23.xyzw = r20.zzzz ? r23.xyzw : r28.xyzw;
      }
      r12.w = cmp((int)r14.w == 31);
      if (r12.w != 0) {
        [r7.w].0 = u7.x;
        r7.w = (int)r7.w + 1;
        r23.w = 0;
      }
      r10.w = (int)r10.w + 1;
    }
    r0.z = (int)r2.y + 32;
    r0.z = cmp((uint)r7.w < (uint)r0.z);
    if (r0.z != 0) {
      [r7.w].0 = u7.x;
    }
    r0.z = cmp(2 >= (uint)r23.z);
    r0.w = (uint)r23.z << 2;
    r0.w = (int)r0.w + 4;
    r0.w = (int)r1.y + (int)r0.w;
    r0.z = r0.z ? r0.w : r1.y;
  } else {
    r0.z = (int)r1.y + 4;
    r23.xy = float2(0,0);
  }
  if (numLights != 0) {
    r1.xyz = r4.yzx + -r5.zxy;
    r13.xyz = r7.zxy + -r5.zxy;
    r14.xyz = r13.zxy * r1.xyz;
    r1.xyz = r1.zxy * r13.xyz + -r14.xyz;
    r0.w = dot(r1.xyz, r1.xyz);
    r0.w = rsqrt(r0.w);
    r1.xyz = r1.xyz * r0.www;
    r0.w = dot(r1.xyz, r5.xyz);
    r14.xyz = r6.xyz + -r7.zxy;
    r15.xyz = r10.xyz + -r7.yzx;
    r16.xyz = r15.xyz * r14.xyz;
    r14.xyz = r14.zxy * r15.yzx + -r16.xyz;
    r1.w = dot(r14.xyz, r14.xyz);
    r1.w = rsqrt(r1.w);
    r14.xyz = r14.xyz * r1.www;
    r1.w = dot(r14.xyz, r7.xyz);
    r7.xyz = r9.zxy + -r10.yzx;
    r15.xyz = r8.yzx + -r10.xyz;
    r16.xyz = r15.xyz * r7.xyz;
    r7.xyz = r7.zxy * r15.yzx + -r16.xyz;
    r2.z = dot(r7.xyz, r7.xyz);
    r2.z = rsqrt(r2.z);
    r7.xyz = r7.xyz * r2.zzz;
    r2.z = dot(r7.yzx, r10.xyz);
    r3.xyz = r3.xyz + -r8.zxy;
    r15.xyz = -r8.yzx + r5.yzx;
    r16.xyz = r15.xyz * r3.xyz;
    r3.xyz = r3.zxy * r15.yzx + -r16.xyz;
    r2.w = dot(r3.xyz, r3.xyz);
    r2.w = rsqrt(r2.w);
    r3.xyz = r3.xyz * r2.www;
    r2.w = dot(r3.xyz, r8.xyz);
    r8.xyz = r10.xyz + -r5.yzx;
    r10.xyz = r13.xyz * r8.xyz;
    r8.xyz = r13.zxy * r8.yzx + -r10.xyz;
    r3.w = dot(r8.xyz, r8.xyz);
    r3.w = rsqrt(r3.w);
    r8.xyz = r8.xyz * r3.www;
    r3.w = dot(r8.xyz, r5.xyz);
    r5.xyz = -r9.zxy + r6.xyz;
    r4.xyz = -r9.yzx + r4.xyz;
    r6.xyz = r5.xyz * r4.xyz;
    r4.xyz = r5.zxy * r4.yzx + -r6.xyz;
    r4.w = dot(r4.xyz, r4.xyz);
    r4.w = rsqrt(r4.w);
    r4.xyz = r4.xyz * r4.www;
    r4.w = dot(r4.xyz, r9.xyz);
    r5.x = dot(r12.xyz, r12.xyz);
    r5.x = sqrt(r5.x);
    r5.yzw = -r12.xyz + r11.xyz;
    r6.xyz = r12.xyz + r11.xyz;
    r6.w = r2.y;
    r9.xyzw = float4(0,0,0,0);
    r7.w = 0;
    while (true) {
      r8.w = cmp((uint)r7.w >= numLights);
      if (r8.w != 0) break;
      r8.w = (int)r7.w & 31;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r10.xyzw, r7.w, l(0), t11.xyzw
    r10.x = ShadowSamplerState[]..swiz;
    r10.y = ShadowSamplerState[]..swiz;
    r10.z = ShadowSamplerState[]..swiz;
    r10.w = ShadowSamplerState[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xyzw, r7.w, l(16), t11.zwxy
    r13.x = ShadowSamplerState[]..swiz;
    r13.y = ShadowSamplerState[]..swiz;
    r13.z = ShadowSamplerState[]..swiz;
    r13.w = ShadowSamplerState[]..swiz;
      r15.xyz = r10.xyz + -r11.xyz;
      r16.x = r10.w;
      r16.yz = r13.zw;
      r17.xyz = r16.xyz + r12.xyz;
      r15.xyz = cmp(r17.xyz < abs(r15.xyz));
      r10.w = (int)r15.y | (int)r15.x;
      r10.w = (int)r15.z | (int)r10.w;
      if (r10.w == 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(32), t11.xyzw
      r15.x = ShadowSamplerState[]..swiz;
      r15.y = ShadowSamplerState[]..swiz;
      r15.z = ShadowSamplerState[]..swiz;
      r15.w = ShadowSamplerState[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xy, r7.w, l(48), t11.xyxx
      r17.x = ShadowSamplerState[]..swiz;
      r17.y = ShadowSamplerState[]..swiz;
        r10.w = cmp(0 < r17.x);
        r13.z = r15.x;
        r13.xyz = -r13.xyz + r11.xyz;
        r11.w = dot(r13.xyz, r15.yzw);
        r12.w = cmp(r11.w >= r5.x);
        r13.xyz = -r15.yzw * r11.www + r13.xyz;
        r13.x = dot(r13.xyz, r13.xyz);
        r13.y = r17.x * r17.x;
        r11.w = r17.y * r11.w + -r5.x;
        r13.x = r13.x * r13.y;
        r11.w = r11.w * r11.w;
        r11.w = cmp(r13.x >= r11.w);
        r11.w = (int)r12.w | (int)r11.w;
        r13.xzw = max(r15.yzw, r5.yzw);
        r13.xzw = min(r13.xzw, r6.xyz);
        r13.xzw = r15.yzw + -r13.xzw;
        r12.w = dot(r13.xzw, r13.xzw);
        r12.w = cmp(r13.y < r12.w);
        r12.w = (int)r10.w | (int)r12.w;
        r10.w = r10.w ? r11.w : -1;
        r10.w = r12.w ? r10.w : 0;
      } else {
        r10.w = -1;
      }
      if (r10.w == 0) {
        r10.w = dot(r10.xyz, r1.xyz);
        r11.w = dot(r16.xyz, abs(r1.xyz));
        r10.w = r11.w + r10.w;
        r10.w = cmp(r10.w < r0.w);
        r11.w = ~(int)r10.w;
        r12.w = dot(r10.xyz, r14.xyz);
        r13.x = dot(r16.xyz, abs(r14.xyz));
        r12.w = r13.x + r12.w;
        r12.w = cmp(r12.w < r1.w);
        r12.w = (int)r10.w | (int)r12.w;
        r11.w = r12.w ? r11.w : 0;
        r10.w = (int)r10.w | (int)r11.w;
        r11.w = dot(r10.xyz, r7.xyz);
        r12.w = dot(r16.xyz, abs(r7.xyz));
        r11.w = r12.w + r11.w;
        r11.w = cmp(r11.w < r2.z);
        r10.w = (int)r10.w | (int)r11.w;
        r11.w = dot(r10.xyz, r3.xyz);
        r12.w = dot(r16.xyz, abs(r3.xyz));
        r11.w = r12.w + r11.w;
        r11.w = cmp(r11.w < r2.w);
        r10.w = (int)r10.w | (int)r11.w;
        r11.w = dot(r10.xyz, r8.xyz);
        r12.w = dot(r16.xyz, abs(r8.xyz));
        r11.w = r12.w + r11.w;
        r11.w = cmp(r11.w < r3.w);
        r10.w = (int)r10.w | (int)r11.w;
        r10.x = dot(r10.xyz, r4.xyz);
        r10.y = dot(r16.xyz, abs(r4.xyz));
        r10.x = r10.x + r10.y;
        r10.x = cmp(r10.x < r4.w);
        r10.x = (int)r10.x | (int)r10.w;
        r13.x = r9.z ? r9.x : r7.w;
        r10.y = cmp((int)r9.z == 1);
        r13.y = r10.y ? r7.w : r9.y;
        r13.z = (int)r9.z + 1;
        bitmask.w = ((~(-1 << 1)) << r7.w) & 0xffffffff;  r13.w = (((uint)1 << r7.w) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
        r9.xyzw = r10.xxxx ? r9.xyzw : r13.xyzw;
      }
      r8.w = cmp((int)r8.w == 31);
      if (r8.w != 0) {
        [r6.w].0 = u7.x;
        r6.w = (int)r6.w + 1;
        r9.w = 0;
      }
      r7.w = (int)r7.w + 1;
    }
    bitmask.y = ((~(-1 << 27)) << 5) & 0xffffffff;  r0.y = (((uint)r0.y << 5) & bitmask.y) | ((uint)16 & ~bitmask.y);
    r0.y = cmp((uint)r6.w < (uint)r0.y);
    if (r0.y != 0) {
      [r6.w].0 = u7.x;
    }
    r0.y = cmp(2 >= (uint)r9.z);
    r0.w = (int)r9.z + 1;
    r0.w = (int)r0.z + (int)r0.w;
    r1.x = r0.y ? r0.w : r0.z;
  } else {
    r1.x = (int)r0.z + 1;
    r9.xy = float2(0,0);
  }
  r1.y = 0;
  // Needs manual fix for instruction:
imm_atomic_iadd r3.x, u6, r1.xyxx, l(1)
  InterlockedAdd(dest, imm_value, orig_value);
  r0.y = mad((int)r1.x, permuteStride, (int)r3.x);
  bitmask.z = ((~(-1 << 10)) << 12) & 0xffffffff;  r0.z = (((uint)r9.y << 12) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.z = ((~(-1 << 8)) << 24) & 0xffffffff;  r0.z = (((uint)r9.x << 24) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
  bitmask.x = ((~(-1 << 12)) << 0) & 0xffffffff;  r1.x = (((uint)r2.x << 0) & bitmask.x) | ((uint)r0.z & ~bitmask.x);
  bitmask.z = ((~(-1 << 10)) << 12) & 0xffffffff;  r0.z = (((uint)r23.y << 12) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.z = ((~(-1 << 8)) << 24) & 0xffffffff;  r0.z = (((uint)r23.x << 24) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
  bitmask.y = ((~(-1 << 12)) << 0) & 0xffffffff;  r1.y = (((uint)r0.x << 0) & bitmask.y) | ((uint)r0.z & ~bitmask.y);
  [r0.y].0 = u5.xy;
  return;
}