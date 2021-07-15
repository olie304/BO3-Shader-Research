// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:01 2021

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

StructuredBuffer<gCullConstants> gCullConstants : register(t11);


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
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (int)vThreadID.z & 15;
  r0.y = (int)r0.x + 1;
  r0.z = (uint)vThreadID.z >> 4;
  r1.xy = (uint2)vThreadID.xy << int2(6,6);
  r0.w = (uint)r0.x;
  r0.w = 128 * r0.w;
  r0.x = r0.x ? r0.w : 1;
  r0.w = cmp((uint)r0.y < 16);
  r0.y = (uint)r0.y;
  r0.y = 128 * r0.y;
  r0.y = r0.w ? r0.y : 131072;
  r2.x = rcp(projectionMatrix._m00);
  r2.y = rcp(projectionMatrix._m11);
  r3.xyw = (uint3)r1.xyy;
  r1.zw = float2(0.5,0.5) + r3.xy;
  r1.zw = -subpixelOffset.xy + r1.zw;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r4.xy = r1.zw * r2.xy;
  r4.z = 1;
  r5.xyz = r4.xyz * r0.xxx;
  r6.xyz = inverseViewMatrix._m10_m11_m12 * r5.yyy;
  r5.xyw = r5.xxx * inverseViewMatrix._m00_m01_m02 + r6.xyz;
  r5.xyz = r5.zzz * inverseViewMatrix._m20_m21_m22 + r5.xyw;
  r1.yz = (int2)r1.xy + int2(64,64);
  r3.z = (uint)r1.y;
  r2.zw = -subpixelOffset.xy + r3.zw;
  r2.zw = float2(0.5,0.5) + r2.zw;
  r2.zw = renderTargetSize.zw * r2.zw;
  r2.zw = r2.zw * float2(2,-2) + float2(-1,1);
  r3.xy = r2.zw * r2.xy;
  r3.z = 1;
  r6.xyz = r3.xyz * r0.xxx;
  r7.xyz = inverseViewMatrix._m10_m11_m12 * r6.yyy;
  r6.xyw = r6.xxx * inverseViewMatrix._m00_m01_m02 + r7.xyz;
  r6.xyz = r6.zzz * inverseViewMatrix._m20_m21_m22 + r6.xyw;
  r7.xyzw = (uint4)r1.yzxz;
  r1.yz = -subpixelOffset.xy + r7.xy;
  r1.yz = float2(0.5,0.5) + r1.yz;
  r1.yz = renderTargetSize.zw * r1.yz;
  r1.yz = r1.yz * float2(2,-2) + float2(-1,1);
  r8.xy = r1.yz * r2.xy;
  r8.z = 1;
  r1.yzw = r8.xyz * r0.xxx;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r1.zzz;
  r9.xyz = r1.yyy * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r1.yzw = r1.www * inverseViewMatrix._m20_m21_m22 + r9.xyz;
  r2.zw = -subpixelOffset.xy + r7.zw;
  r2.zw = float2(0.5,0.5) + r2.zw;
  r2.zw = renderTargetSize.zw * r2.zw;
  r2.zw = r2.zw * float2(2,-2) + float2(-1,1);
  r2.xy = r2.zw * r2.xy;
  r2.z = 1;
  r7.xyz = r2.xyz * r0.xxx;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r7.yyy;
  r7.xyw = r7.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r7.xyz = r7.zzz * inverseViewMatrix._m20_m21_m22 + r7.xyw;
  r4.xyz = r4.xyz * r0.yyy;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r4.yyy;
  r4.xyw = r4.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r4.xyz = r4.zzz * inverseViewMatrix._m20_m21_m22 + r4.xyw;
  r3.xyz = r3.xyz * r0.yyy;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r3.yyy;
  r3.xyw = r3.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r3.xyz = r3.zzz * inverseViewMatrix._m20_m21_m22 + r3.xyw;
  r8.xyz = r8.xyz * r0.yyy;
  r9.xyz = inverseViewMatrix._m10_m11_m12 * r8.yyy;
  r8.xyw = r8.xxx * inverseViewMatrix._m00_m01_m02 + r9.xyz;
  r8.xyz = r8.zzz * inverseViewMatrix._m20_m21_m22 + r8.xyw;
  r0.xyw = r2.xyz * r0.yyy;
  r2.xyz = inverseViewMatrix._m10_m11_m12 * r0.yyy;
  r2.xyz = r0.xxx * inverseViewMatrix._m00_m01_m02 + r2.xyz;
  r0.xyw = r0.www * inverseViewMatrix._m20_m21_m22 + r2.xyz;
  r2.xyz = float3(0.125,0.125,0.125) * r6.xyz;
  r2.xyz = r5.xyz * float3(0.125,0.125,0.125) + r2.xyz;
  r2.xyz = r1.yzw * float3(0.125,0.125,0.125) + r2.xyz;
  r2.xyz = r7.xyz * float3(0.125,0.125,0.125) + r2.xyz;
  r2.xyz = r4.xyz * float3(0.125,0.125,0.125) + r2.xyz;
  r2.xyz = r3.xyz * float3(0.125,0.125,0.125) + r2.xyz;
  r2.xyz = r8.xyz * float3(0.125,0.125,0.125) + r2.xyz;
  r2.xyz = r0.xyw * float3(0.125,0.125,0.125) + r2.xyz;
  r9.xyz = r5.xyz + -r2.xyz;
  r10.xyz = r6.xyz + -r2.xyz;
  r9.xyz = max(abs(r10.xyz), abs(r9.xyz));
  r10.xyz = -r2.xyz + r1.yzw;
  r9.xyz = max(abs(r10.xyz), r9.xyz);
  r7.xyz = r7.xyz + -r2.xyz;
  r7.xyz = max(r9.xyz, abs(r7.xyz));
  r9.xyz = r4.xyz + -r2.xyz;
  r7.xyz = max(abs(r9.xyz), r7.xyz);
  r9.xyz = r3.xyz + -r2.xyz;
  r7.xyz = max(abs(r9.xyz), r7.xyz);
  r9.xyz = r8.xyz + -r2.xyz;
  r7.xyz = max(abs(r9.xyz), r7.xyz);
  r0.xyw = -r2.xyz + r0.xyw;
  r0.xyw = max(r7.xyz, abs(r0.xyw));
  r7.xyz = r5.xyz + r1.yzw;
  r7.xyz = r7.xyz * float3(0.5,0.5,0.5) + -viewMatrix._m30_m31_m32;
  r9.xyz = r8.xyz + r4.xyz;
  r9.xyz = r9.xyz * float3(0.5,0.5,0.5) + -viewMatrix._m30_m31_m32;
  r1.xyz = r6.xyz + r1.yzw;
  r1.xyz = -r1.xyz * float3(0.5,0.5,0.5) + r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r5.xyz = -r5.xyz * float3(0.5,0.5,0.5) + r7.xyz;
  r6.xyz = r8.xyz + r3.xyz;
  r6.xyz = -r6.xyz * float3(0.5,0.5,0.5) + r9.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = -r3.xyz * float3(0.5,0.5,0.5) + r9.xyz;
  r1.w = numRefProbes + numLights;
  r2.w = (uint)r0.z << 5;
  r2.w = (int)r2.w + numLights;
  r1.w = (int)r1.w + (int)-r2.w;
  r1.w = min(32, (uint)r1.w);
  r4.xyz = r9.yzx + -r6.yzx;
  r8.xyz = r4.xyz + -r3.yzx;
  r10.xyz = r7.yzx + -r1.yzx;
  r11.xyz = r10.xyz + -r5.yzx;
  r8.xyz = -r11.xyz + r8.xyz;
  r11.xyz = r9.yzx + r6.yzx;
  r12.xyz = r11.xyz + r3.yzx;
  r13.xyz = r7.yzx + r1.yzx;
  r14.xyz = r13.xyz + r5.yzx;
  r12.xyz = -r14.xyz + r12.xyz;
  r14.xyz = viewMatrix._m02_m00_m01 * r8.xyz;
  r14.xyz = viewMatrix._m01_m02_m00 * r8.yzx + -r14.xyz;
  r15.xyz = viewMatrix._m02_m00_m01 * r12.xyz;
  r15.xyz = viewMatrix._m01_m02_m00 * r12.yzx + -r15.xyz;
  r16.xyz = viewMatrix._m12_m10_m11 * r8.xyz;
  r16.xyz = viewMatrix._m11_m12_m10 * r8.yzx + -r16.xyz;
  r17.xyz = viewMatrix._m12_m10_m11 * r12.xyz;
  r17.xyz = viewMatrix._m11_m12_m10 * r12.yzx + -r17.xyz;
  r3.w = dot(r7.xyz, viewMatrix._m20_m21_m22);
  r4.w = dot(r1.xyz, viewMatrix._m20_m21_m22);
  r5.w = dot(r5.xyz, viewMatrix._m20_m21_m22);
  r4.w = abs(r5.w) + abs(r4.w);
  r5.w = dot(r9.xyz, viewMatrix._m20_m21_m22);
  r6.w = dot(r6.xyz, viewMatrix._m20_m21_m22);
  r7.w = dot(r3.xyz, viewMatrix._m20_m21_m22);
  r6.w = abs(r7.w) + abs(r6.w);
  r7.w = -r4.w + r3.w;
  r8.w = -r6.w + r5.w;
  r7.w = min(r8.w, r7.w);
  r3.w = r4.w + r3.w;
  r4.w = r6.w + r5.w;
  r3.w = max(r4.w, r3.w);
  r4.w = dot(r7.xyz, r15.xyz);
  r5.w = dot(r7.xyz, r14.xyz);
  r6.w = dot(r1.xyz, r14.xyz);
  r8.w = dot(r5.xyz, r14.xyz);
  r6.w = abs(r8.w) + abs(r6.w);
  r8.w = dot(r9.xyz, r14.xyz);
  r9.w = dot(r6.xyz, r14.xyz);
  r10.w = dot(r3.xyz, r14.xyz);
  r9.w = abs(r10.w) + abs(r9.w);
  r10.w = -r6.w + r5.w;
  r11.w = -r9.w + r8.w;
  r10.w = min(r11.w, r10.w);
  r5.w = r6.w + r5.w;
  r6.w = r9.w + r8.w;
  r5.w = max(r6.w, r5.w);
  r6.w = dot(r1.xyz, r15.xyz);
  r8.w = dot(r5.xyz, r15.xyz);
  r6.w = abs(r8.w) + abs(r6.w);
  r8.w = dot(r9.xyz, r15.xyz);
  r9.w = dot(r6.xyz, r15.xyz);
  r11.w = dot(r3.xyz, r15.xyz);
  r9.w = abs(r11.w) + abs(r9.w);
  r11.w = -r6.w + r4.w;
  r12.w = -r9.w + r8.w;
  r11.w = min(r12.w, r11.w);
  r4.w = r6.w + r4.w;
  r6.w = r9.w + r8.w;
  r4.w = max(r6.w, r4.w);
  r6.w = dot(r7.xyz, r16.xyz);
  r8.w = dot(r1.xyz, r16.xyz);
  r9.w = dot(r5.xyz, r16.xyz);
  r8.w = abs(r9.w) + abs(r8.w);
  r9.w = dot(r9.xyz, r16.xyz);
  r12.w = dot(r6.xyz, r16.xyz);
  r13.w = dot(r3.xyz, r16.xyz);
  r12.w = abs(r13.w) + abs(r12.w);
  r13.w = -r8.w + r6.w;
  r14.w = -r12.w + r9.w;
  r13.w = min(r14.w, r13.w);
  r6.w = r8.w + r6.w;
  r8.w = r12.w + r9.w;
  r6.w = max(r8.w, r6.w);
  r8.w = dot(r7.xyz, r17.xyz);
  r9.w = dot(r1.xyz, r17.xyz);
  r12.w = dot(r5.xyz, r17.xyz);
  r9.w = abs(r12.w) + abs(r9.w);
  r12.w = dot(r9.xyz, r17.xyz);
  r14.w = dot(r6.xyz, r17.xyz);
  r15.w = dot(r3.xyz, r17.xyz);
  r14.w = abs(r15.w) + abs(r14.w);
  r15.w = -r9.w + r8.w;
  r16.w = -r14.w + r12.w;
  r15.w = min(r16.w, r15.w);
  r8.w = r9.w + r8.w;
  r9.w = r14.w + r12.w;
  r8.w = max(r9.w, r8.w);
  r11.xyz = r11.xyz + -r3.yzx;
  r13.xyz = r13.xyz + -r5.yzx;
  r11.xyz = -r13.xyz + r11.xyz;
  r4.xyz = r4.xyz + r3.yzx;
  r10.xyz = r10.xyz + r5.yzx;
  r4.xyz = -r10.xyz + r4.xyz;
  r10.y = 0;
  r18.y = r2.w;
  r18.xzw = float3(0,1.40129846e-45,0);
  while (true) {
    r9.w = cmp((uint)r18.w >= (uint)r1.w);
    if (r9.w != 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xyzw, r18.y, l(0), t11.xyzw
  r19.x = gCullConstants[]..swiz;
  r19.y = gCullConstants[]..swiz;
  r19.z = gCullConstants[]..swiz;
  r19.w = gCullConstants[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xyzw, r18.y, l(16), t11.xyzw
  r20.x = gCullConstants[]..swiz;
  r20.y = gCullConstants[]..swiz;
  r20.z = gCullConstants[]..swiz;
  r20.w = gCullConstants[]..swiz;
    r13.xyz = r19.xyz + -r2.xyz;
    r21.x = r19.w;
    r21.yz = r20.xy;
    r21.xyz = r21.xyz + r0.xyw;
    r13.xyz = cmp(r21.xyz < abs(r13.xyz));
    r9.w = (int)r13.y | (int)r13.x;
    r9.w = (int)r13.z | (int)r9.w;
    if (r9.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r18.y, l(32), t11.xyzw
    r21.x = gCullConstants[]..swiz;
    r21.y = gCullConstants[]..swiz;
    r21.z = gCullConstants[]..swiz;
    r21.w = gCullConstants[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r18.y, l(48), t11.xyzw
    r22.x = gCullConstants[]..swiz;
    r22.y = gCullConstants[]..swiz;
    r22.z = gCullConstants[]..swiz;
    r22.w = gCullConstants[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r18.y, l(64), t11.xyxx
    r13.x = gCullConstants[]..swiz;
    r13.y = gCullConstants[]..swiz;
      r20.xyz = r21.yzw * r20.zzz;
      r23.xyz = r22.xyz * r20.www;
      r13.z = r22.w;
      r24.xyz = r13.zxy * r21.xxx;
      r25.xy = float2(0,0);
      r9.w = 0;
      while (true) {
        r10.z = cmp((int)r25.y >= 3);
        r9.w = 0;
        if (r10.z != 0) break;
        r26.xyz = icb[r25.y+0].xxx * r21.yzw;
        r26.xyz = icb[r25.y+0].yyy * r22.xyz + r26.xyz;
        r26.xyz = icb[r25.y+0].zzz * r13.zxy + r26.xyz;
        r10.z = dot(r19.xyz, r26.xyz);
        r12.w = dot(r20.xyz, r26.xyz);
        r14.w = dot(r23.xyz, r26.xyz);
        r12.w = abs(r14.w) + abs(r12.w);
        r14.w = dot(r24.xyz, r26.xyz);
        r12.w = abs(r14.w) + r12.w;
        r14.w = -r12.w + r10.z;
        r10.z = r12.w + r10.z;
        r12.w = dot(r7.xyz, r26.xyz);
        r16.w = dot(r1.xyz, r26.xyz);
        r17.w = dot(r5.xyz, r26.xyz);
        r16.w = abs(r17.w) + abs(r16.w);
        r17.w = dot(r9.xyz, r26.xyz);
        r19.w = dot(r6.xyz, r26.xyz);
        r20.w = dot(r3.xyz, r26.xyz);
        r19.w = abs(r20.w) + abs(r19.w);
        r20.w = -r16.w + r12.w;
        r21.x = -r19.w + r17.w;
        r20.w = min(r21.x, r20.w);
        r12.w = r16.w + r12.w;
        r16.w = r19.w + r17.w;
        r12.w = max(r16.w, r12.w);
        r10.z = cmp(r10.z < r20.w);
        r12.w = cmp(r12.w < r14.w);
        r10.z = (int)r10.z | (int)r12.w;
        if (r10.z != 0) {
          r25.x = -1;
          r9.w = -1;
          break;
        }
        r10.x = (int)r25.y + 1;
        r25.xy = r10.yx;
        r9.w = r10.z;
      }
      if (r9.w == 0) {
        r10.x = dot(r19.xyz, viewMatrix._m20_m21_m22);
        r10.z = dot(r20.xyz, viewMatrix._m20_m21_m22);
        r12.w = dot(r23.xyz, viewMatrix._m20_m21_m22);
        r10.z = abs(r12.w) + abs(r10.z);
        r12.w = dot(r24.xyz, viewMatrix._m20_m21_m22);
        r10.z = abs(r12.w) + r10.z;
        r12.w = r10.x + -r10.z;
        r10.x = r10.x + r10.z;
        r10.x = cmp(r10.x < r7.w);
        r10.z = cmp(r3.w < r12.w);
        r10.x = (int)r10.z | (int)r10.x;
        r25.x = (int)r25.x | (int)r10.x;
        r10.z = ~(int)r10.x;
        if (r10.x == 0) {
          if (r10.x == 0) {
            r12.w = dot(r19.xyz, r14.xyz);
            r14.w = dot(r20.xyz, r14.xyz);
            r16.w = dot(r23.xyz, r14.xyz);
            r14.w = abs(r16.w) + abs(r14.w);
            r16.w = dot(r24.xyz, r14.xyz);
            r14.w = abs(r16.w) + r14.w;
            r16.w = -r14.w + r12.w;
            r12.w = r14.w + r12.w;
            r12.w = cmp(r12.w < r10.w);
            r14.w = cmp(r5.w < r16.w);
            r26.y = (int)r12.w | (int)r14.w;
            r25.x = (int)r25.x | (int)r26.y;
            r26.x = r26.y;
          } else {
            r26.xy = float2(-1,-1);
          }
          r25.yz = r10.zz ? r26.yx : 0;
          r10.xz = (int2)r10.xx | (int2)r25.zy;
        } else {
          r10.xz = float2(-1,-1);
        }
        r10.z = ~(int)r10.z;
        r12.w = ~(int)r10.x;
        r10.z = r12.w ? r10.z : 0;
        if (r10.z != 0) {
          r10.z = dot(r19.xyz, r15.xyz);
          r12.w = dot(r20.xyz, r15.xyz);
          r14.w = dot(r23.xyz, r15.xyz);
          r12.w = abs(r14.w) + abs(r12.w);
          r14.w = dot(r24.xyz, r15.xyz);
          r12.w = abs(r14.w) + r12.w;
          r14.w = -r12.w + r10.z;
          r10.z = r12.w + r10.z;
          r10.z = cmp(r10.z < r11.w);
          r12.w = cmp(r4.w < r14.w);
          r10.z = (int)r10.z | (int)r12.w;
          r25.x = (int)r25.x | (int)r10.z;
          r10.x = r10.z;
        } else {
          r10.z = -1;
        }
        r10.z = ~(int)r10.z;
        r12.w = ~(int)r10.x;
        r10.z = r12.w ? r10.z : 0;
        if (r10.z != 0) {
          r10.z = dot(r19.xyz, r16.xyz);
          r12.w = dot(r20.xyz, r16.xyz);
          r14.w = dot(r23.xyz, r16.xyz);
          r12.w = abs(r14.w) + abs(r12.w);
          r14.w = dot(r24.xyz, r16.xyz);
          r12.w = abs(r14.w) + r12.w;
          r14.w = -r12.w + r10.z;
          r10.z = r12.w + r10.z;
          r10.z = cmp(r10.z < r13.w);
          r12.w = cmp(r6.w < r14.w);
          r10.z = (int)r10.z | (int)r12.w;
          r25.x = (int)r25.x | (int)r10.z;
          r10.x = r10.z;
        } else {
          r10.z = -1;
        }
        r10.z = ~(int)r10.z;
        r12.w = ~(int)r10.x;
        r10.z = r12.w ? r10.z : 0;
        if (r10.z != 0) {
          r10.z = dot(r19.xyz, r17.xyz);
          r12.w = dot(r20.xyz, r17.xyz);
          r14.w = dot(r23.xyz, r17.xyz);
          r12.w = abs(r14.w) + abs(r12.w);
          r14.w = dot(r24.xyz, r17.xyz);
          r12.w = abs(r14.w) + r12.w;
          r14.w = -r12.w + r10.z;
          r10.z = r12.w + r10.z;
          r10.z = cmp(r10.z < r15.w);
          r12.w = cmp(r8.w < r14.w);
          r10.x = (int)r10.z | (int)r12.w;
          r25.x = (int)r25.x | (int)r10.x;
        }
        if (r10.x == 0) {
          r25.yzw = viewMatrix._m01_m02_m00 * r21.wyz;
          r25.yzw = r21.zwy * viewMatrix._m02_m00_m01 + -r25.yzw;
          r10.x = dot(r19.xyz, r25.yzw);
          r10.z = dot(r20.xyz, r25.yzw);
          r12.w = dot(r23.xyz, r25.yzw);
          r10.z = abs(r12.w) + abs(r10.z);
          r12.w = dot(r24.xyz, r25.yzw);
          r10.z = abs(r12.w) + r10.z;
          r12.w = r10.x + -r10.z;
          r10.x = r10.x + r10.z;
          r10.z = dot(r7.xyz, r25.yzw);
          r14.w = dot(r1.xyz, r25.yzw);
          r16.w = dot(r5.xyz, r25.yzw);
          r14.w = abs(r16.w) + abs(r14.w);
          r16.w = dot(r9.xyz, r25.yzw);
          r17.w = dot(r6.xyz, r25.yzw);
          r19.w = dot(r3.xyz, r25.yzw);
          r17.w = abs(r19.w) + abs(r17.w);
          r19.w = -r14.w + r10.z;
          r20.w = -r17.w + r16.w;
          r19.w = min(r20.w, r19.w);
          r10.z = r14.w + r10.z;
          r14.w = r17.w + r16.w;
          r10.z = max(r14.w, r10.z);
          r10.x = cmp(r10.x < r19.w);
          r10.z = cmp(r10.z < r12.w);
          r10.x = (int)r10.z | (int)r10.x;
          r10.z = (int)r25.x | (int)r10.x;
          r12.w = ~(int)r10.x;
          if (r10.x == 0) {
            if (r10.x == 0) {
              r25.yzw = viewMatrix._m01_m02_m00 * r22.zxy;
              r25.yzw = r22.yzx * viewMatrix._m02_m00_m01 + -r25.yzw;
              r14.w = dot(r19.xyz, r25.yzw);
              r16.w = dot(r20.xyz, r25.yzw);
              r17.w = dot(r23.xyz, r25.yzw);
              r16.w = abs(r17.w) + abs(r16.w);
              r17.w = dot(r24.xyz, r25.yzw);
              r16.w = abs(r17.w) + r16.w;
              r17.w = -r16.w + r14.w;
              r14.w = r16.w + r14.w;
              r16.w = dot(r7.xyz, r25.yzw);
              r19.w = dot(r1.xyz, r25.yzw);
              r20.w = dot(r5.xyz, r25.yzw);
              r19.w = abs(r20.w) + abs(r19.w);
              r20.w = dot(r9.xyz, r25.yzw);
              r21.x = dot(r6.xyz, r25.yzw);
              r22.w = dot(r3.xyz, r25.yzw);
              r21.x = abs(r22.w) + abs(r21.x);
              r22.w = -r19.w + r16.w;
              r23.w = -r21.x + r20.w;
              r22.w = min(r23.w, r22.w);
              r16.w = r19.w + r16.w;
              r19.w = r21.x + r20.w;
              r16.w = max(r19.w, r16.w);
              r14.w = cmp(r14.w < r22.w);
              r16.w = cmp(r16.w < r17.w);
              r26.y = (int)r14.w | (int)r16.w;
              r10.z = (int)r10.z | (int)r26.y;
              r26.x = r26.y;
            } else {
              r26.xy = float2(-1,-1);
            }
            r25.yz = (int2)r12.ww & (int2)r26.yx;
            r25.yz = (int2)r10.xx | (int2)r25.zy;
          } else {
            r25.yz = float2(-nan,-nan);
          }
          r10.x = ~(int)r25.z;
          r12.w = ~(int)r25.y;
          r10.x = r10.x ? r12.w : 0;
          if (r10.x != 0) {
            r26.xyz = viewMatrix._m01_m02_m00 * r13.yzx;
            r26.xyz = r13.xyz * viewMatrix._m02_m00_m01 + -r26.xyz;
            r10.x = dot(r19.xyz, r26.xyz);
            r12.w = dot(r20.xyz, r26.xyz);
            r14.w = dot(r23.xyz, r26.xyz);
            r12.w = abs(r14.w) + abs(r12.w);
            r14.w = dot(r24.xyz, r26.xyz);
            r12.w = abs(r14.w) + r12.w;
            r14.w = -r12.w + r10.x;
            r10.x = r12.w + r10.x;
            r12.w = dot(r7.xyz, r26.xyz);
            r16.w = dot(r1.xyz, r26.xyz);
            r17.w = dot(r5.xyz, r26.xyz);
            r16.w = abs(r17.w) + abs(r16.w);
            r17.w = dot(r9.xyz, r26.xyz);
            r19.w = dot(r6.xyz, r26.xyz);
            r20.w = dot(r3.xyz, r26.xyz);
            r19.w = abs(r20.w) + abs(r19.w);
            r20.w = -r16.w + r12.w;
            r21.x = -r19.w + r17.w;
            r20.w = min(r21.x, r20.w);
            r12.w = r16.w + r12.w;
            r16.w = r19.w + r17.w;
            r12.w = max(r16.w, r12.w);
            r10.x = cmp(r10.x < r20.w);
            r12.w = cmp(r12.w < r14.w);
            r25.y = (int)r10.x | (int)r12.w;
            r10.z = (int)r10.z | (int)r25.y;
          }
          r10.x = ~(int)r25.y;
          if (r25.y == 0) {
            if (r25.y == 0) {
              if (r25.y == 0) {
                r25.yzw = viewMatrix._m11_m12_m10 * r21.wyz;
                r25.yzw = r21.zwy * viewMatrix._m12_m10_m11 + -r25.yzw;
                r12.w = dot(r19.xyz, r25.yzw);
                r14.w = dot(r20.xyz, r25.yzw);
                r16.w = dot(r23.xyz, r25.yzw);
                r14.w = abs(r16.w) + abs(r14.w);
                r16.w = dot(r24.xyz, r25.yzw);
                r14.w = abs(r16.w) + r14.w;
                r16.w = -r14.w + r12.w;
                r12.w = r14.w + r12.w;
                r14.w = dot(r7.xyz, r25.yzw);
                r17.w = dot(r1.xyz, r25.yzw);
                r19.w = dot(r5.xyz, r25.yzw);
                r17.w = abs(r19.w) + abs(r17.w);
                r19.w = dot(r9.xyz, r25.yzw);
                r20.w = dot(r6.xyz, r25.yzw);
                r21.x = dot(r3.xyz, r25.yzw);
                r20.w = abs(r21.x) + abs(r20.w);
                r21.x = -r17.w + r14.w;
                r22.w = -r20.w + r19.w;
                r21.x = min(r22.w, r21.x);
                r14.w = r17.w + r14.w;
                r17.w = r20.w + r19.w;
                r14.w = max(r17.w, r14.w);
                r12.w = cmp(r12.w < r21.x);
                r14.w = cmp(r14.w < r16.w);
                r12.w = (int)r12.w | (int)r14.w;
                r10.z = (int)r10.z | (int)r12.w;
                r25.y = r12.w;
              } else {
                r25.y = -1;
                r12.w = 0;
              }
            } else {
              r25.y = -1;
              r12.w = -1;
            }
            r12.w = ~(int)r12.w;
            r14.w = ~(int)r25.y;
            r12.w = r14.w ? r12.w : 0;
            if (r12.w != 0) {
              r26.xyz = viewMatrix._m11_m12_m10 * r22.zxy;
              r26.xyz = r22.yzx * viewMatrix._m12_m10_m11 + -r26.xyz;
              r12.w = dot(r19.xyz, r26.xyz);
              r14.w = dot(r20.xyz, r26.xyz);
              r16.w = dot(r23.xyz, r26.xyz);
              r14.w = abs(r16.w) + abs(r14.w);
              r16.w = dot(r24.xyz, r26.xyz);
              r14.w = abs(r16.w) + r14.w;
              r16.w = -r14.w + r12.w;
              r12.w = r14.w + r12.w;
              r14.w = dot(r7.xyz, r26.xyz);
              r17.w = dot(r1.xyz, r26.xyz);
              r19.w = dot(r5.xyz, r26.xyz);
              r17.w = abs(r19.w) + abs(r17.w);
              r19.w = dot(r9.xyz, r26.xyz);
              r20.w = dot(r6.xyz, r26.xyz);
              r21.x = dot(r3.xyz, r26.xyz);
              r20.w = abs(r21.x) + abs(r20.w);
              r21.x = -r17.w + r14.w;
              r22.w = -r20.w + r19.w;
              r21.x = min(r22.w, r21.x);
              r14.w = r17.w + r14.w;
              r17.w = r20.w + r19.w;
              r14.w = max(r17.w, r14.w);
              r12.w = cmp(r12.w < r21.x);
              r14.w = cmp(r14.w < r16.w);
              r12.w = (int)r12.w | (int)r14.w;
              r10.z = (int)r10.z | (int)r12.w;
              r25.y = r12.w;
            } else {
              r12.w = -1;
            }
            r12.w = ~(int)r12.w;
            r14.w = ~(int)r25.y;
            r12.w = r14.w ? r12.w : 0;
            if (r12.w != 0) {
              r26.xyz = viewMatrix._m11_m12_m10 * r13.yzx;
              r26.xyz = r13.xyz * viewMatrix._m12_m10_m11 + -r26.xyz;
              r12.w = dot(r19.xyz, r26.xyz);
              r14.w = dot(r20.xyz, r26.xyz);
              r16.w = dot(r23.xyz, r26.xyz);
              r14.w = abs(r16.w) + abs(r14.w);
              r16.w = dot(r24.xyz, r26.xyz);
              r14.w = abs(r16.w) + r14.w;
              r16.w = -r14.w + r12.w;
              r12.w = r14.w + r12.w;
              r14.w = dot(r7.xyz, r26.xyz);
              r17.w = dot(r1.xyz, r26.xyz);
              r19.w = dot(r5.xyz, r26.xyz);
              r17.w = abs(r19.w) + abs(r17.w);
              r19.w = dot(r9.xyz, r26.xyz);
              r20.w = dot(r6.xyz, r26.xyz);
              r21.x = dot(r3.xyz, r26.xyz);
              r20.w = abs(r21.x) + abs(r20.w);
              r21.x = -r17.w + r14.w;
              r22.w = -r20.w + r19.w;
              r21.x = min(r22.w, r21.x);
              r14.w = r17.w + r14.w;
              r17.w = r20.w + r19.w;
              r14.w = max(r17.w, r14.w);
              r12.w = cmp(r12.w < r21.x);
              r14.w = cmp(r14.w < r16.w);
              r25.y = (int)r12.w | (int)r14.w;
              r10.z = (int)r10.z | (int)r25.y;
            }
          } else {
            r25.y = -1;
          }
          r12.w = ~(int)r25.y;
          r10.x = r10.x ? r12.w : 0;
          if (r10.x != 0) {
            r26.xyz = r21.wyz * r8.xyz;
            r26.xyz = r21.zwy * r8.yzx + -r26.xyz;
            r12.w = dot(r19.xyz, r26.xyz);
            r14.w = dot(r20.xyz, r26.xyz);
            r16.w = dot(r23.xyz, r26.xyz);
            r14.w = abs(r16.w) + abs(r14.w);
            r16.w = dot(r24.xyz, r26.xyz);
            r14.w = abs(r16.w) + r14.w;
            r16.w = -r14.w + r12.w;
            r12.w = r14.w + r12.w;
            r14.w = dot(r7.xyz, r26.xyz);
            r17.w = dot(r1.xyz, r26.xyz);
            r19.w = dot(r5.xyz, r26.xyz);
            r17.w = abs(r19.w) + abs(r17.w);
            r19.w = dot(r9.xyz, r26.xyz);
            r20.w = dot(r6.xyz, r26.xyz);
            r21.x = dot(r3.xyz, r26.xyz);
            r20.w = abs(r21.x) + abs(r20.w);
            r21.x = -r17.w + r14.w;
            r22.w = -r20.w + r19.w;
            r21.x = min(r22.w, r21.x);
            r14.w = r17.w + r14.w;
            r17.w = r20.w + r19.w;
            r14.w = max(r17.w, r14.w);
            r12.w = cmp(r12.w < r21.x);
            r14.w = cmp(r14.w < r16.w);
            r12.w = (int)r12.w | (int)r14.w;
            r10.z = (int)r10.z | (int)r12.w;
            r14.w = ~(int)r12.w;
            if (r12.w == 0) {
              if (r12.w == 0) {
                r26.xyz = r22.zxy * r8.xyz;
                r26.xyz = r22.yzx * r8.yzx + -r26.xyz;
                r16.w = dot(r19.xyz, r26.xyz);
                r17.w = dot(r20.xyz, r26.xyz);
                r19.w = dot(r23.xyz, r26.xyz);
                r17.w = abs(r19.w) + abs(r17.w);
                r19.w = dot(r24.xyz, r26.xyz);
                r17.w = abs(r19.w) + r17.w;
                r19.w = -r17.w + r16.w;
                r16.w = r17.w + r16.w;
                r17.w = dot(r7.xyz, r26.xyz);
                r20.w = dot(r1.xyz, r26.xyz);
                r21.x = dot(r5.xyz, r26.xyz);
                r20.w = abs(r21.x) + abs(r20.w);
                r21.x = dot(r9.xyz, r26.xyz);
                r22.w = dot(r6.xyz, r26.xyz);
                r23.w = dot(r3.xyz, r26.xyz);
                r22.w = abs(r23.w) + abs(r22.w);
                r23.w = -r20.w + r17.w;
                r24.w = -r22.w + r21.x;
                r23.w = min(r24.w, r23.w);
                r17.w = r20.w + r17.w;
                r20.w = r22.w + r21.x;
                r17.w = max(r20.w, r17.w);
                r16.w = cmp(r16.w < r23.w);
                r17.w = cmp(r17.w < r19.w);
                r26.y = (int)r16.w | (int)r17.w;
                r10.z = (int)r10.z | (int)r26.y;
                r26.x = r26.y;
              } else {
                r26.xy = float2(-1,-1);
              }
              r26.xy = r14.ww ? r26.yx : 0;
              r25.yz = (int2)r12.ww | (int2)r26.yx;
            } else {
              r25.yz = float2(-nan,-nan);
            }
            r12.w = ~(int)r25.z;
            r14.w = ~(int)r25.y;
            r12.w = r12.w ? r14.w : 0;
            if (r12.w != 0) {
              r26.xyz = r13.yzx * r8.xyz;
              r26.xyz = r13.xyz * r8.yzx + -r26.xyz;
              r12.w = dot(r19.xyz, r26.xyz);
              r14.w = dot(r20.xyz, r26.xyz);
              r16.w = dot(r23.xyz, r26.xyz);
              r14.w = abs(r16.w) + abs(r14.w);
              r16.w = dot(r24.xyz, r26.xyz);
              r14.w = abs(r16.w) + r14.w;
              r16.w = -r14.w + r12.w;
              r12.w = r14.w + r12.w;
              r14.w = dot(r7.xyz, r26.xyz);
              r17.w = dot(r1.xyz, r26.xyz);
              r19.w = dot(r5.xyz, r26.xyz);
              r17.w = abs(r19.w) + abs(r17.w);
              r19.w = dot(r9.xyz, r26.xyz);
              r20.w = dot(r6.xyz, r26.xyz);
              r21.x = dot(r3.xyz, r26.xyz);
              r20.w = abs(r21.x) + abs(r20.w);
              r21.x = -r17.w + r14.w;
              r22.w = -r20.w + r19.w;
              r21.x = min(r22.w, r21.x);
              r14.w = r17.w + r14.w;
              r17.w = r20.w + r19.w;
              r14.w = max(r17.w, r14.w);
              r12.w = cmp(r12.w < r21.x);
              r14.w = cmp(r14.w < r16.w);
              r25.y = (int)r12.w | (int)r14.w;
              r10.z = (int)r10.z | (int)r25.y;
            }
          }
          r12.w = ~(int)r25.y;
          r10.x = r10.x ? r12.w : 0;
          if (r10.x != 0) {
            r26.xyz = r21.wyz * r11.xyz;
            r26.xyz = r21.zwy * r11.yzx + -r26.xyz;
            r12.w = dot(r19.xyz, r26.xyz);
            r14.w = dot(r20.xyz, r26.xyz);
            r16.w = dot(r23.xyz, r26.xyz);
            r14.w = abs(r16.w) + abs(r14.w);
            r16.w = dot(r24.xyz, r26.xyz);
            r14.w = abs(r16.w) + r14.w;
            r16.w = -r14.w + r12.w;
            r12.w = r14.w + r12.w;
            r14.w = dot(r7.xyz, r26.xyz);
            r17.w = dot(r1.xyz, r26.xyz);
            r19.w = dot(r5.xyz, r26.xyz);
            r17.w = abs(r19.w) + abs(r17.w);
            r19.w = dot(r9.xyz, r26.xyz);
            r20.w = dot(r6.xyz, r26.xyz);
            r21.x = dot(r3.xyz, r26.xyz);
            r20.w = abs(r21.x) + abs(r20.w);
            r21.x = -r17.w + r14.w;
            r22.w = -r20.w + r19.w;
            r21.x = min(r22.w, r21.x);
            r14.w = r17.w + r14.w;
            r17.w = r20.w + r19.w;
            r14.w = max(r17.w, r14.w);
            r12.w = cmp(r12.w < r21.x);
            r14.w = cmp(r14.w < r16.w);
            r12.w = (int)r12.w | (int)r14.w;
            r10.z = (int)r10.z | (int)r12.w;
            r14.w = ~(int)r12.w;
            if (r12.w == 0) {
              if (r12.w == 0) {
                r26.xyz = r22.zxy * r11.xyz;
                r26.xyz = r22.yzx * r11.yzx + -r26.xyz;
                r16.w = dot(r19.xyz, r26.xyz);
                r17.w = dot(r20.xyz, r26.xyz);
                r19.w = dot(r23.xyz, r26.xyz);
                r17.w = abs(r19.w) + abs(r17.w);
                r19.w = dot(r24.xyz, r26.xyz);
                r17.w = abs(r19.w) + r17.w;
                r19.w = -r17.w + r16.w;
                r16.w = r17.w + r16.w;
                r17.w = dot(r7.xyz, r26.xyz);
                r20.w = dot(r1.xyz, r26.xyz);
                r21.x = dot(r5.xyz, r26.xyz);
                r20.w = abs(r21.x) + abs(r20.w);
                r21.x = dot(r9.xyz, r26.xyz);
                r22.w = dot(r6.xyz, r26.xyz);
                r23.w = dot(r3.xyz, r26.xyz);
                r22.w = abs(r23.w) + abs(r22.w);
                r23.w = -r20.w + r17.w;
                r24.w = -r22.w + r21.x;
                r23.w = min(r24.w, r23.w);
                r17.w = r20.w + r17.w;
                r20.w = r22.w + r21.x;
                r17.w = max(r20.w, r17.w);
                r16.w = cmp(r16.w < r23.w);
                r17.w = cmp(r17.w < r19.w);
                r26.y = (int)r16.w | (int)r17.w;
                r10.z = (int)r10.z | (int)r26.y;
                r26.x = r26.y;
              } else {
                r26.xy = float2(-1,-1);
              }
              r26.xy = r14.ww ? r26.yx : 0;
              r25.yz = (int2)r12.ww | (int2)r26.yx;
            } else {
              r25.yz = float2(-nan,-nan);
            }
            r12.w = ~(int)r25.z;
            r14.w = ~(int)r25.y;
            r12.w = r12.w ? r14.w : 0;
            if (r12.w != 0) {
              r26.xyz = r13.yzx * r11.xyz;
              r26.xyz = r13.xyz * r11.yzx + -r26.xyz;
              r12.w = dot(r19.xyz, r26.xyz);
              r14.w = dot(r20.xyz, r26.xyz);
              r16.w = dot(r23.xyz, r26.xyz);
              r14.w = abs(r16.w) + abs(r14.w);
              r16.w = dot(r24.xyz, r26.xyz);
              r14.w = abs(r16.w) + r14.w;
              r16.w = -r14.w + r12.w;
              r12.w = r14.w + r12.w;
              r14.w = dot(r7.xyz, r26.xyz);
              r17.w = dot(r1.xyz, r26.xyz);
              r19.w = dot(r5.xyz, r26.xyz);
              r17.w = abs(r19.w) + abs(r17.w);
              r19.w = dot(r9.xyz, r26.xyz);
              r20.w = dot(r6.xyz, r26.xyz);
              r21.x = dot(r3.xyz, r26.xyz);
              r20.w = abs(r21.x) + abs(r20.w);
              r21.x = -r17.w + r14.w;
              r22.w = -r20.w + r19.w;
              r21.x = min(r22.w, r21.x);
              r14.w = r17.w + r14.w;
              r17.w = r20.w + r19.w;
              r14.w = max(r17.w, r14.w);
              r12.w = cmp(r12.w < r21.x);
              r14.w = cmp(r14.w < r16.w);
              r25.y = (int)r12.w | (int)r14.w;
              r10.z = (int)r10.z | (int)r25.y;
            }
          }
          r12.w = ~(int)r25.y;
          r10.x = r10.x ? r12.w : 0;
          if (r10.x != 0) {
            r26.xyz = r21.wyz * r4.xyz;
            r26.xyz = r21.zwy * r4.yzx + -r26.xyz;
            r12.w = dot(r19.xyz, r26.xyz);
            r14.w = dot(r20.xyz, r26.xyz);
            r16.w = dot(r23.xyz, r26.xyz);
            r14.w = abs(r16.w) + abs(r14.w);
            r16.w = dot(r24.xyz, r26.xyz);
            r14.w = abs(r16.w) + r14.w;
            r16.w = -r14.w + r12.w;
            r12.w = r14.w + r12.w;
            r14.w = dot(r7.xyz, r26.xyz);
            r17.w = dot(r1.xyz, r26.xyz);
            r19.w = dot(r5.xyz, r26.xyz);
            r17.w = abs(r19.w) + abs(r17.w);
            r19.w = dot(r9.xyz, r26.xyz);
            r20.w = dot(r6.xyz, r26.xyz);
            r21.x = dot(r3.xyz, r26.xyz);
            r20.w = abs(r21.x) + abs(r20.w);
            r21.x = -r17.w + r14.w;
            r22.w = -r20.w + r19.w;
            r21.x = min(r22.w, r21.x);
            r14.w = r17.w + r14.w;
            r17.w = r20.w + r19.w;
            r14.w = max(r17.w, r14.w);
            r12.w = cmp(r12.w < r21.x);
            r14.w = cmp(r14.w < r16.w);
            r12.w = (int)r12.w | (int)r14.w;
            r10.z = (int)r10.z | (int)r12.w;
            r14.w = ~(int)r12.w;
            if (r12.w == 0) {
              if (r12.w == 0) {
                r26.xyz = r22.zxy * r4.xyz;
                r26.xyz = r22.yzx * r4.yzx + -r26.xyz;
                r16.w = dot(r19.xyz, r26.xyz);
                r17.w = dot(r20.xyz, r26.xyz);
                r19.w = dot(r23.xyz, r26.xyz);
                r17.w = abs(r19.w) + abs(r17.w);
                r19.w = dot(r24.xyz, r26.xyz);
                r17.w = abs(r19.w) + r17.w;
                r19.w = -r17.w + r16.w;
                r16.w = r17.w + r16.w;
                r17.w = dot(r7.xyz, r26.xyz);
                r20.w = dot(r1.xyz, r26.xyz);
                r21.x = dot(r5.xyz, r26.xyz);
                r20.w = abs(r21.x) + abs(r20.w);
                r21.x = dot(r9.xyz, r26.xyz);
                r22.w = dot(r6.xyz, r26.xyz);
                r23.w = dot(r3.xyz, r26.xyz);
                r22.w = abs(r23.w) + abs(r22.w);
                r23.w = -r20.w + r17.w;
                r24.w = -r22.w + r21.x;
                r23.w = min(r24.w, r23.w);
                r17.w = r20.w + r17.w;
                r20.w = r22.w + r21.x;
                r17.w = max(r20.w, r17.w);
                r16.w = cmp(r16.w < r23.w);
                r17.w = cmp(r17.w < r19.w);
                r26.y = (int)r16.w | (int)r17.w;
                r10.z = (int)r10.z | (int)r26.y;
                r26.x = r26.y;
              } else {
                r26.xy = float2(-1,-1);
              }
              r26.xy = r14.ww ? r26.yx : 0;
              r25.yz = (int2)r12.ww | (int2)r26.yx;
            } else {
              r25.yz = float2(-nan,-nan);
            }
            r12.w = ~(int)r25.z;
            r14.w = ~(int)r25.y;
            r12.w = r12.w ? r14.w : 0;
            if (r12.w != 0) {
              r26.xyz = r13.yzx * r4.xyz;
              r26.xyz = r13.xyz * r4.yzx + -r26.xyz;
              r12.w = dot(r19.xyz, r26.xyz);
              r14.w = dot(r20.xyz, r26.xyz);
              r16.w = dot(r23.xyz, r26.xyz);
              r14.w = abs(r16.w) + abs(r14.w);
              r16.w = dot(r24.xyz, r26.xyz);
              r14.w = abs(r16.w) + r14.w;
              r16.w = -r14.w + r12.w;
              r12.w = r14.w + r12.w;
              r14.w = dot(r7.xyz, r26.xyz);
              r17.w = dot(r1.xyz, r26.xyz);
              r19.w = dot(r5.xyz, r26.xyz);
              r17.w = abs(r19.w) + abs(r17.w);
              r19.w = dot(r9.xyz, r26.xyz);
              r20.w = dot(r6.xyz, r26.xyz);
              r21.x = dot(r3.xyz, r26.xyz);
              r20.w = abs(r21.x) + abs(r20.w);
              r21.x = -r17.w + r14.w;
              r22.w = -r20.w + r19.w;
              r21.x = min(r22.w, r21.x);
              r14.w = r17.w + r14.w;
              r17.w = r20.w + r19.w;
              r14.w = max(r17.w, r14.w);
              r12.w = cmp(r12.w < r21.x);
              r14.w = cmp(r14.w < r16.w);
              r25.y = (int)r12.w | (int)r14.w;
              r10.z = (int)r10.z | (int)r25.y;
            }
          }
          r12.w = ~(int)r25.y;
          r10.x = r10.x ? r12.w : 0;
          if (r10.x != 0) {
            r26.xyz = r21.wyz * r12.xyz;
            r21.xyz = r21.zwy * r12.yzx + -r26.xyz;
            r10.x = dot(r19.xyz, r21.xyz);
            r12.w = dot(r20.xyz, r21.xyz);
            r14.w = dot(r23.xyz, r21.xyz);
            r12.w = abs(r14.w) + abs(r12.w);
            r14.w = dot(r24.xyz, r21.xyz);
            r12.w = abs(r14.w) + r12.w;
            r14.w = -r12.w + r10.x;
            r10.x = r12.w + r10.x;
            r12.w = dot(r7.xyz, r21.xyz);
            r16.w = dot(r1.xyz, r21.xyz);
            r17.w = dot(r5.xyz, r21.xyz);
            r16.w = abs(r17.w) + abs(r16.w);
            r17.w = dot(r9.xyz, r21.xyz);
            r19.w = dot(r6.xyz, r21.xyz);
            r20.w = dot(r3.xyz, r21.xyz);
            r19.w = abs(r20.w) + abs(r19.w);
            r20.w = -r16.w + r12.w;
            r21.x = -r19.w + r17.w;
            r20.w = min(r21.x, r20.w);
            r12.w = r16.w + r12.w;
            r16.w = r19.w + r17.w;
            r12.w = max(r16.w, r12.w);
            r10.x = cmp(r10.x < r20.w);
            r12.w = cmp(r12.w < r14.w);
            r10.x = (int)r10.x | (int)r12.w;
            r10.z = (int)r10.z | (int)r10.x;
            r12.w = ~(int)r10.x;
            if (r10.x == 0) {
              if (r10.x == 0) {
                r21.xyz = r22.zxy * r12.xyz;
                r21.xyz = r22.yzx * r12.yzx + -r21.xyz;
                r14.w = dot(r19.xyz, r21.xyz);
                r16.w = dot(r20.xyz, r21.xyz);
                r17.w = dot(r23.xyz, r21.xyz);
                r16.w = abs(r17.w) + abs(r16.w);
                r17.w = dot(r24.xyz, r21.xyz);
                r16.w = abs(r17.w) + r16.w;
                r17.w = -r16.w + r14.w;
                r14.w = r16.w + r14.w;
                r16.w = dot(r7.xyz, r21.xyz);
                r19.w = dot(r1.xyz, r21.xyz);
                r20.w = dot(r5.xyz, r21.xyz);
                r19.w = abs(r20.w) + abs(r19.w);
                r20.w = dot(r9.xyz, r21.xyz);
                r21.w = dot(r6.xyz, r21.xyz);
                r21.x = dot(r3.xyz, r21.xyz);
                r21.x = abs(r21.w) + abs(r21.x);
                r21.y = -r19.w + r16.w;
                r21.z = -r21.x + r20.w;
                r21.y = min(r21.y, r21.z);
                r16.w = r19.w + r16.w;
                r19.w = r21.x + r20.w;
                r16.w = max(r19.w, r16.w);
                r14.w = cmp(r14.w < r21.y);
                r16.w = cmp(r16.w < r17.w);
                r21.y = (int)r14.w | (int)r16.w;
                r10.z = (int)r10.z | (int)r21.y;
                r21.x = r21.y;
              } else {
                r21.xy = float2(-1,-1);
              }
              r21.xy = r12.ww ? r21.yx : 0;
              r25.yz = (int2)r10.xx | (int2)r21.yx;
            } else {
              r25.yz = float2(-nan,-nan);
            }
            r10.x = ~(int)r25.z;
            r12.w = ~(int)r25.y;
            r10.x = r10.x ? r12.w : 0;
            if (r10.x != 0) {
              r21.xyz = r13.yzx * r12.xyz;
              r13.xyz = r13.xyz * r12.yzx + -r21.xyz;
              r10.x = dot(r19.xyz, r13.xyz);
              r12.w = dot(r20.xyz, r13.xyz);
              r14.w = dot(r23.xyz, r13.xyz);
              r12.w = abs(r14.w) + abs(r12.w);
              r14.w = dot(r24.xyz, r13.xyz);
              r12.w = abs(r14.w) + r12.w;
              r14.w = -r12.w + r10.x;
              r10.x = r12.w + r10.x;
              r12.w = dot(r7.xyz, r13.xyz);
              r16.w = dot(r1.xyz, r13.xyz);
              r17.w = dot(r5.xyz, r13.xyz);
              r16.w = abs(r17.w) + abs(r16.w);
              r17.w = dot(r9.xyz, r13.xyz);
              r19.x = dot(r6.xyz, r13.xyz);
              r13.x = dot(r3.xyz, r13.xyz);
              r13.x = abs(r19.x) + abs(r13.x);
              r13.y = -r16.w + r12.w;
              r13.z = r17.w + -r13.x;
              r13.y = min(r13.y, r13.z);
              r12.w = r16.w + r12.w;
              r13.x = r17.w + r13.x;
              r12.w = max(r13.x, r12.w);
              r10.x = cmp(r10.x < r13.y);
              r12.w = cmp(r12.w < r14.w);
              r25.y = (int)r10.x | (int)r12.w;
              r10.z = (int)r10.z | (int)r25.y;
            }
          }
          r25.x = r10.z ? r25.y : 0;
        }
      }
      r10.x = (int)r18.z | (int)r18.x;
      r18.x = r25.x ? r18.x : r10.x;
    }
    r18.yw = (int2)r18.yw + int2(1,1);
    r18.z = (uint)r18.z << 1;
  }
  bitmask.x = ((~(-1 << 4)) << 4) & 0xffffffff;  r0.x = (((uint)vThreadID.z << 4) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r0.zw = (int2)r0.zz + (int2)r0.xx;
  r0.xy = vThreadID.xy;
// No code for instruction (needs manual fix):
store_uav_typed u7.xyzw, r0.xyzw, r18.xxxx
  return;
}