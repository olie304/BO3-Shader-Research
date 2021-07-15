// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:11 2021

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
  float2 normalMapScale : packoffset(c11.z);
  float4 flowParams : packoffset(c12);
  float4 noiseParams : packoffset(c13);
  bool useOrientedNormalMap : packoffset(c14);
  float4 specularLobeRoughnessControl : packoffset(c15);
  float2 lobeWeighting : packoffset(c16);
  float4 controlVar0 : packoffset(c17);
  float4 controlVar1 : packoffset(c18);
  float4 shoreUVControl : packoffset(c19);
  float reflectionGloss : packoffset(c20);
  float probeReflectionLevel : packoffset(c20.y);
  float2 horizonControl : packoffset(c20.z);
  float SSRLevel : packoffset(c21);
  float2 normalScale : packoffset(c21.y);
  float2 normalsFlowScaleMin : packoffset(c22);
  float3 foamColor : packoffset(c23);
  float3 waterColorShallow : packoffset(c24);
  float3 waterColorDeep : packoffset(c25);
  float3 waterColorShallowScatter : packoffset(c26);
  float3 waterColorDeepScatter : packoffset(c27);
  float3 horizonColor : packoffset(c28);
  float4 foamMaskScroll01 : packoffset(c29);
  float4 foamMaskScroll23 : packoffset(c30);
  float4 foamMaskScale01 : packoffset(c31);
  float4 foamMaskScale23 : packoffset(c32);
  float foamScale : packoffset(c33);
  float3 foamSpacing : packoffset(c33.y);
  float foamColorScale : packoffset(c34);
  float foamWaveIncrease : packoffset(c34.y);
  float4 wave0K : packoffset(c35);
  float4 wave1K : packoffset(c36);
  float4 wave2K : packoffset(c37);
  float4 wave3K : packoffset(c38);
  float4 waveAmplitude : packoffset(c39);
  float4 waveSteepness : packoffset(c40);
  float4 waveFrequency : packoffset(c41);
  bool useFoam : packoffset(c42);
  bool useVertexWaves : packoffset(c42.y);
  bool scaleNormalsWithFlow : packoffset(c42.z);
  bool useSSR : packoffset(c42.w);
  float maxRayDepth : packoffset(c43);
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

SamplerState samp0_s : register(s0);
SamplerState colorSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState flowSampler_s : register(s5);
SamplerState noiseSampler_s : register(s6);
SamplerState bilinearClamp_s : register(s7);
SamplerState bilinearTile_s : register(s8);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
Texture2DArray<uint> visibleLights : register(t6);
Texture2DArray<uint> visibleProbes : register(t7);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
TextureCubeArray<float> gOmniShadowmapArray : register(t10);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
StructuredBuffer<refProbeConstants> refProbeConstants : register(t15);
StructuredBuffer<refProbeAttenuationConstants> refProbeAttenuationConstants : register(t16);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
Texture2D<float4> normalMap : register(t21);
Texture2D<float4> flowMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> noiseMap : register(t24);
Texture2D<float4> controlMap : register(t25);
Texture2D<float4> maskMap : register(t26);
Texture2D<float4> ifloatZScene : register(t29);
Texture2D<float4> iResolveScene : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  float3 v5 : OFFPOSITION0,
  float2 v6 : TEXCOORD6,
  float w6 : TEXCOORD9,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  uint v9 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  const float4 icb[] = { { -0.808114, 0.808114, 0, 0},
                              { 0, -1.000000, 0, 0},
                              { 0.606057, 0.606057, 0, 0},
                              { -0.714286, 0, 0, 0},
                              { 0.404114, -0.404114, 0, 0},
                              { 0, 0.428571, 0, 0},
                              { -0.202057, -0.202057, 0, 0},
                              { 0.142857, 0, 0, 0} };
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = normalMapScale.xy * w1.xy;
  r0.zw = gameTime.ww * noiseParams.xy;
  r0.zw = w1.xy * noiseParams.zz + r0.zw;
  r0.zw = noiseMap.Sample(noiseSampler_s, r0.zw).xy;
  r0.zw = noiseParams.ww * r0.zw;
  r0.zw = w1.xy * flowParams.xx + r0.zw;
  r1.xy = frac(r0.zw);
  r1.zw = r1.xy * float2(-2,-2) + float2(3,3);
  r1.xy = r1.xy * r1.xy;
  r2.xy = r1.zw * r1.xy;
  normalMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r2.zw = fDest.xy;
  r2.zw = r2.zw * r0.xy;
  r3.xy = ddx_coarse(r2.zw);
  r2.zw = ddy_coarse(r2.zw);
  r3.x = dot(r3.xy, r3.xy);
  r2.z = dot(r2.zw, r2.zw);
  r2.z = max(r3.x, r2.z);
  r2.z = log2(r2.z);
  r2.z = 0.5 * r2.z;
  r3.xy = floor(r0.zw);
  r3.xy = r3.xy / flowParams.xx;
  r3.xy = flowMap.Sample(flowSampler_s, r3.xy).xy;
  r3.xy = r3.xy + r3.xy;
  r4.xyzw = float4(1,0,0,1) + r0.zwzw;
  r4.xyzw = floor(r4.xyzw);
  r4.xyzw = r4.xyzw / flowParams.xxxx;
  r3.zw = flowMap.Sample(flowSampler_s, r4.xy).xy;
  r3.zw = r3.zw + r3.zw;
  r4.xy = flowMap.Sample(flowSampler_s, r4.zw).xy;
  r4.xy = r4.xy + r4.xy;
  r0.zw = float2(1,1) + r0.zw;
  r0.zw = floor(r0.zw);
  r0.zw = r0.zw / flowParams.xx;
  r0.zw = flowMap.Sample(flowSampler_s, r0.zw).xy;
  r0.zw = r0.zw + r0.zw;
  if (useFoam != 0) {
    r4.zw = flowMap.Sample(flowSampler_s, w1.xy).xy;
    r5.xy = r4.zw + r4.zw;
    r5.zw = r5.xy * float2(-1,1) + float2(1,-1);
    r4.zw = r5.xw * float2(-1,1) + float2(1,0);
    r2.w = dot(r5.zw, r4.zw);
    r2.w = sqrt(r2.w);
    r2.w = r2.w * normalsFlowScaleMin.y + normalsFlowScaleMin.x;
    r4.zw = normalScale.xy * r2.ww;
  } else {
    r4.zw = normalScale.xy;
  }
  r1.xy = -r1.zw * r1.xy + float2(1,1);
  r1.xy = r1.xy * r1.xy;
  r1.xy = r2.xy * r2.xy + r1.xy;
  r1.xy = rsqrt(r1.xy);
  if (useOrientedNormalMap == 0) {
    r1.z = gameTime.w * flowParams.y;
    r5.xy = r3.xy * float2(-1,1) + float2(1,-1);
    r5.xy = r5.xy * r1.zz + r0.xy;
    r5.xy = normalMap.SampleLevel(normalSampler_s, r5.xy, r2.z).xy;
    r5.zw = r3.zw * float2(-1,1) + float2(1,-1);
    r5.zw = r5.zw * r1.zz + r0.xy;
    r5.zw = normalMap.SampleLevel(normalSampler_s, r5.zw, r2.z).xy;
    r5.zw = r5.zw + -r5.xy;
    r5.xy = r2.xx * r5.zw + r5.xy;
    r5.zw = r4.xy * float2(-1,1) + float2(1,-1);
    r5.zw = r5.zw * r1.zz + r0.xy;
    r5.zw = normalMap.SampleLevel(normalSampler_s, r5.zw, r2.z).xy;
    r6.xy = r0.zw * float2(-1,1) + float2(1,-1);
    r0.xy = r6.xy * r1.zz + r0.xy;
    r0.xy = normalMap.SampleLevel(normalSampler_s, r0.xy, r2.z).xy;
    r0.xy = r0.xy + -r5.zw;
    r0.xy = r2.xx * r0.xy + r5.zw;
    r0.xy = r0.xy + -r5.xy;
    r0.xy = r2.yy * r0.xy + r5.xy;
    r0.xy = r0.xy * r4.zz + r4.ww;
  } else {
    r1.zw = r3.xy * float2(-1,1) + float2(1,-1);
    r2.w = dot(r1.zw, r1.zw);
    r2.w = sqrt(r2.w);
    r2.w = max(9.99999975e-06, r2.w);
    r5.xy = r1.zw / r2.ww;
    r5.z = -r5.x;
    r3.x = dot(w1.xy, r5.yz);
    r3.y = dot(w1.xy, -r5.xy);
    r6.xy = normalMapScale.xy * r3.xy;
    r1.z = gameTime.w * r2.w;
    r6.z = -r1.z * flowParams.y + r6.y;
    r1.zw = normalMap.SampleLevel(normalSampler_s, r6.xz, r2.z).xy;
    r1.zw = r1.zw * r4.zz + r4.ww;
    r3.x = dot(r1.zw, r5.yz);
    r3.y = dot(r1.zw, -r5.xy);
    r1.zw = r3.zw * float2(-1,1) + float2(1,-1);
    r2.w = dot(r1.zw, r1.zw);
    r2.w = sqrt(r2.w);
    r2.w = max(9.99999975e-06, r2.w);
    r5.xy = r1.zw / r2.ww;
    r5.z = -r5.x;
    r6.x = dot(w1.xy, r5.yz);
    r6.y = dot(w1.xy, -r5.xy);
    r6.xy = normalMapScale.xy * r6.xy;
    r1.z = gameTime.w * r2.w;
    r6.z = -r1.z * flowParams.y + r6.y;
    r1.zw = normalMap.SampleLevel(normalSampler_s, r6.xz, r2.z).xy;
    r1.zw = r1.zw * r4.zz + r4.ww;
    r6.x = dot(r1.zw, r5.yz);
    r6.y = dot(r1.zw, -r5.xy);
    r1.zw = r6.xy + -r3.xy;
    r1.zw = r2.xx * r1.zw + r3.xy;
    r3.xy = r4.xy * float2(-1,1) + float2(1,-1);
    r2.w = dot(r3.xy, r3.xy);
    r2.w = sqrt(r2.w);
    r2.w = max(9.99999975e-06, r2.w);
    r3.xy = r3.xy / r2.ww;
    r3.z = -r3.x;
    r4.x = dot(w1.xy, r3.yz);
    r4.y = dot(w1.xy, -r3.xy);
    r5.xy = normalMapScale.xy * r4.xy;
    r2.w = gameTime.w * r2.w;
    r5.z = -r2.w * flowParams.y + r5.y;
    r4.xy = normalMap.SampleLevel(normalSampler_s, r5.xz, r2.z).xy;
    r4.xy = r4.xy * r4.zz + r4.ww;
    r5.x = dot(r4.xy, r3.yz);
    r5.y = dot(r4.xy, -r3.xy);
    r0.zw = r0.zw * float2(-1,1) + float2(1,-1);
    r2.w = dot(r0.zw, r0.zw);
    r2.w = sqrt(r2.w);
    r2.w = max(9.99999975e-06, r2.w);
    r3.xy = r0.zw / r2.ww;
    r3.z = -r3.x;
    r4.x = dot(w1.xy, r3.yz);
    r4.y = dot(w1.xy, -r3.xy);
    r6.xy = normalMapScale.xy * r4.xy;
    r0.z = gameTime.w * r2.w;
    r6.z = -r0.z * flowParams.y + r6.y;
    r0.zw = normalMap.SampleLevel(normalSampler_s, r6.xz, r2.z).xy;
    r0.zw = r0.zw * r4.zz + r4.ww;
    r4.x = dot(r0.zw, r3.yz);
    r4.y = dot(r0.zw, -r3.xy);
    r0.zw = r4.xy + -r5.xy;
    r0.zw = r2.xx * r0.zw + r5.xy;
    r0.zw = r0.zw + -r1.zw;
    r0.xy = r2.yy * r0.zw + r1.zw;
  }
  r0.z = r1.x * r1.y;
  r0.xy = r0.xy * r0.zz;
  r0.yzw = v4.xyz * r0.yyy;
  r0.xyz = v3.xyz * r0.xxx + r0.yzw;
  r0.xyz = v2.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xy = controlVar1.ww * r0.xy;
  r1.zw = r0.xy * controlVar1.zz + w1.xy;
  r2.xyz = controlMap.Sample(bilinearTile_s, r1.zw).xyz;
  r3.xyz = waterColorDeep.xyz + -waterColorShallow.xyz;
  r3.xyz = r2.xxx * r3.xyz + waterColorShallow.xyz;
  r4.xyz = waterColorDeepScatter.xyz + -waterColorShallowScatter.xyz;
  r4.xyz = r2.xxx * r4.xyz + waterColorShallowScatter.xyz;
  r1.xy = r1.xy * r2.yy + v6.xy;
  r1.xyz = colorMap.Sample(colorSampler_s, r1.xy).xyz;
  r1.w = dot(v5.xyz, v5.xyz);
  r2.x = rsqrt(r1.w);
  r5.xyz = v5.xyz * r2.xxx;
  r2.x = saturate(dot(r0.xyz, -r5.xyz));
  r2.x = 1 + -r2.x;
  r2.w = r2.x * r2.x;
  r2.w = r2.w * r2.w;
  r2.x = r2.x * r2.w;
  r2.x = controlVar0.w * r2.x + controlVar0.z;
  r3.xyz = -r4.xyz + r3.xyz;
  r3.xyz = r2.xxx * r3.xyz + r4.xyz;
  if (useFoam != 0) {
    r2.x = maskMap.Sample(bilinearTile_s, v7.xy).x;
    r2.w = maskMap.Sample(bilinearTile_s, v7.zw).x;
    r3.w = maskMap.Sample(bilinearTile_s, v8.xy).x;
    r4.x = maskMap.Sample(bilinearTile_s, v8.zw).x;
    r2.x = r2.x + r2.w;
    r2.x = r2.x + r3.w;
    r2.x = r2.x + r4.x;
    r2.x = foamColorScale * r2.x;
    r2.z = foamSpacing.y * r2.z + foamSpacing.x;
    r2.z = w6.x + r2.z;
    r2.z = max(foamSpacing.z, r2.z);
    r2.x = max(0, r2.x);
    r2.x = log2(r2.x);
    r2.x = r2.z * r2.x;
    r2.x = exp2(r2.x);
    r4.xyz = foamColor.xyz + -r3.xyz;
    r3.xyz = r2.xxx * r4.xyz + r3.xyz;
    r4.xyz = foamColor.xyz + -r1.xyz;
    r1.xyz = r2.xxx * r4.xyz + r1.xyz;
    r2.z = 1 + -r2.x;
    r2.z = reflectionGloss * r2.z;
  } else {
    r2.z = reflectionGloss;
  }
  r4.xy = (uint2)v0.xy;
  r2.w = cmp(v0.z >= 0.984375);
  r3.w = 1.01587307 * v0.z;
  r4.z = v0.z * 64 + -63;
  r2.w = r2.w ? r4.z : r3.w;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r3.w = dot(-v5.xyz, -v5.xyz);
  r3.w = rsqrt(r3.w);
  r6.xyz = -v5.xyz * r3.www;
  r4.zw = (uint2)r4.yx;
  r5.w = dot(r4.wz, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r7.x, r8.x);
  r4.z = dot(r4.zw, float2(0.0671105608,0.00583714992));
  r4.z = frac(r4.z);
  r4.z = 52.9829178 * r4.z;
  r4.z = frac(r4.z);
  r4.z = r4.z * 6.28318548 + gameTick.w;
  sincos(r4.z, r9.x, r10.x);
  r4.z = saturate(dot(r0.xyz, r6.xyz));
  r4.w = dot(-r6.xyz, r0.xyz);
  r4.w = r4.w + r4.w;
  r11.xyz = r0.xyz * -r4.www + -r6.xyz;
  r4.w = 1 + -r2.z;
  r5.w = 5 * r4.w;
  r6.w = r4.w * 5 + -2.5;
  r6.w = saturate(0.400000006 * r6.w);
  r6.w = 100 * r6.w;
  r7.zw = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.z = exp2(r7.z);
  r7.z = r7.z * r4.z;
  r8.w = r5.w * r4.w;
  r7.w = -r8.w * 2.0159049 + r7.w;
  r7.w = exp2(r7.w);
  r7.w = r7.w * r4.z;
  r7.zw = float2(9.1368103,9.70808983) * r7.zw;
  r7.z = max(r7.z, r7.w);
  r7.z = max(1.26815999, r7.z);
  r7.w = numRefProbes + -numOverrideProbes;
  r2.w = 0.0078125 * r2.w;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r12.xy = (uint2)r4.xy >> int2(6,6);
  r12.z = (uint)r2.w << 4;
  r2.w = (int)r7.w & -32;
  r4.x = (int)-r2.w + (int)r7.w;
  r4.y = numRefProbes & -32;
  r8.w = (int)-r4.y + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r9.y = r2.w;
  while (true) {
    r9.z = cmp((uint)r9.y >= numRefProbes);
    if (r9.z != 0) break;
    r13.z = (uint)r9.y >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r9.z = visibleProbes.Load(r14.xyzw).x;
    r9.w = cmp((int)r2.w == (int)r9.y);
    bitmask.y = ((~(-1 << r4.x)) << 0) & 0xffffffff;  r10.y = (((uint)0 << 0) & bitmask.y) | ((uint)r9.z & ~bitmask.y);
    r9.z = r9.w ? r10.y : r9.z;
    r9.w = cmp((int)r4.y == (int)r9.y);
    if (r8.w == 0) r10.y = 0; else if (r8.w+0 < 32) {     r10.y = (uint)r9.z << (32-(r8.w + 0)); r10.y = (uint)r10.y >> (32-r8.w);    } else r10.y = (uint)r9.z >> 0;
    r9.z = r9.w ? r10.y : r9.z;
    r9.w = (int)r9.y + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r10.y = r9.z;
    while (true) {
      if (r10.y == 0) break;
      r10.z = firstbitlow((uint)r10.y);
      r10.w = 1 << (int)r10.z;
      r12.w = (int)r10.w & (int)r10.y;
      if (r12.w != 0) {
        r10.y = (int)r10.w ^ (int)r10.y;
        r10.w = (int)r9.w + (int)r10.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r10.w, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r10.w, l(16), t11.xyxx
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
        r24.xyz = -v5.xyz + r24.xyz;
        r14.z = r24.w;
        r14.xyz = cmp(abs(r24.xyz) < r14.zxy);
        r10.w = r14.y ? r14.x : 0;
        r10.w = r14.z ? r10.w : 0;
        if (r10.w != 0) {
          r10.z = (int)r9.y + (int)r10.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.z, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r10.z, l(96), t15.xxxy
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.z, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r14.xyz = v5.xyz + -r24.yzw;
          r10.w = (int)r25.w & 0x0000ffff;
          if (6 == 0) r12.w = 0; else if (6+25 < 32) {           r12.w = (uint)r25.w << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);          } else r12.w = (uint)r25.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(0), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(16), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(32), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(48), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(64), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(80), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
          r15.w = dot(r26.xyz, r14.xyz);
          r15.w = saturate(r15.w + r26.w);
          r16.w = dot(r27.xyz, r14.xyz);
          r16.w = saturate(r16.w + r27.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r28.xyz, r14.xyz);
          r16.w = saturate(r16.w + r28.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r29.xyz, r14.xyz);
          r16.w = saturate(r16.w + r29.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r30.xyz, r14.xyz);
          r16.w = saturate(r16.w + r30.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r31.xyz, r14.xyz);
          r16.w = saturate(r16.w + r31.w);
          r15.x = r16.w * r15.w;
          r15.w = (int)r13.z & 1;
          r15.xw = r15.ww ? r15.xy : r15.zx;
          r16.w = r13.z;
          r26.xy = r15.xw;
          r17.z = 1;
          while (true) {
            r17.w = cmp((int)r17.z >= (int)r12.w);
            if (r17.w != 0) break;
            r17.w = (int)r10.w + (int)r17.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r17.w = dot(r27.xyz, r14.xyz);
            r17.w = saturate(r17.w + r27.w);
            r17.w = r26.x * r17.w;
            r18.w = dot(r28.xyz, r14.xyz);
            r18.w = saturate(r18.w + r28.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r29.xyz, r14.xyz);
            r18.w = saturate(r18.w + r29.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r30.xyz, r14.xyz);
            r18.w = saturate(r18.w + r30.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r31.xyz, r14.xyz);
            r18.w = saturate(r18.w + r31.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r32.xyz, r14.xyz);
            r18.w = saturate(r18.w + r32.w);
            r26.x = r18.w * r17.w;
            r19.w = (uint)r16.w >> 2;
            if (1 == 0) r24.w = 0; else if (1+2 < 32) {             r24.w = (uint)r16.w << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);            } else r24.w = (uint)r16.w >> 2;
            r26.z = (int)r19.w & 2;
            r26.w = max(r26.y, r26.x);
            r17.w = -r17.w * r18.w + 1;
            r17.w = r26.y * r17.w;
            r17.y = r26.z ? r17.w : r26.w;
            r26.xy = r24.ww ? r26.xy : r17.xy;
            r17.z = (int)r17.z + 1;
            r16.w = r19.w;
          }
          r26.y = saturate(r26.y);
          r10.w = r26.y * r13.w;
          r12.w = cmp(0 < r10.w);
          if (r12.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.z, l(16), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.z, l(32), t15.yxwz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.z, l(48), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.z, l(64), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.z, l(80), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.z, l(132), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.z, l(148), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.z, l(164), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.z, l(180), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.z, l(196), t15.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r10.z, l(212), t15.xyxx
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
            r23.z = r26.y * r13.w + r23.z;
            r10.z = r10.w * r25.z;
            r25.z = r32.z;
            r10.w = dot(r11.xyz, r25.xyz);
            r12.w = dot(r14.xyz, r25.xyz);
            r12.w = r12.w + -r32.w;
            r13.z = cmp(r12.w >= 0);
            r12.w = max(abs(r12.w), r6.w);
            r12.w = r13.z ? r12.w : -r12.w;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.w / r10.w;
            r10.w = min(131072, abs(r10.w));
            r32.z = r33.z;
            r12.w = dot(r11.xyz, r32.xyz);
            r13.z = dot(r14.xyz, r32.xyz);
            r13.z = r13.z + -r33.w;
            r13.w = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r6.w);
            r13.z = r13.w ? r13.z : -r13.z;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r13.z / r12.w;
            r10.w = min(abs(r12.w), r10.w);
            r33.z = r34.z;
            r12.w = dot(r11.xyz, r33.xyz);
            r13.z = dot(r14.xyz, r33.xyz);
            r13.z = r13.z + -r34.w;
            r13.w = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r6.w);
            r13.z = r13.w ? r13.z : -r13.z;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r13.z / r12.w;
            r10.w = min(abs(r12.w), r10.w);
            r34.z = r35.z;
            r12.w = dot(r11.xyz, r34.xyz);
            r13.z = dot(r14.xyz, r34.xyz);
            r13.z = r13.z + -r35.w;
            r13.w = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r6.w);
            r13.z = r13.w ? r13.z : -r13.z;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r13.z / r12.w;
            r10.w = min(abs(r12.w), r10.w);
            r35.z = r36.x;
            r12.w = dot(r11.xyz, r35.xyz);
            r13.z = dot(r14.xyz, r35.xyz);
            r13.z = r13.z + -r36.y;
            r13.w = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r6.w);
            r13.z = r13.w ? r13.z : -r13.z;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r13.z / r12.w;
            r10.w = min(abs(r12.w), r10.w);
            r37.zw = r36.zw;
            r12.w = dot(r11.zxy, r37.xzw);
            r13.z = dot(r14.zxy, r37.xzw);
            r13.z = r13.z + -r37.y;
            r13.w = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r6.w);
            r13.z = r13.w ? r13.z : -r13.z;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r13.z / r12.w;
            r10.w = min(abs(r12.w), r10.w);
            r25.x = r29.w;
            r25.yz = r30.zw;
            r17.yzw = r25.xyz + r14.xyz;
            r17.yzw = r11.xyz * r10.www + r17.yzw;
            r12.w = dot(r17.yzw, r17.yzw);
            r12.w = sqrt(r12.w);
            r10.w = r10.w / r12.w;
            r10.w = r10.w + r10.w;
            r10.w = sqrt(r10.w);
            r10.w = r4.w * 5 + r10.w;
            r10.w = -0.844799995 + r10.w;
            r24.y = r27.z;
            r24.z = r28.x;
            r32.x = dot(r17.yzw, r24.xyz);
            r25.xy = r27.xw;
            r25.z = r28.w;
            r32.y = dot(r17.yzw, r25.xyz);
            r28.x = r27.y;
            r32.z = dot(r17.yzw, r28.xyz);
            if (9 == 0) r12.w = 0; else if (9+16 < 32) {             r12.w = (uint)r25.w << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);            } else r12.w = (uint)r25.w >> 16;
            r32.w = (uint)r12.w;
            r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r10.w).xyz;
            r27.x = dot(r14.xyz, r24.xyz);
            r27.y = dot(r14.xyz, r25.xyz);
            r27.z = dot(r14.xyz, r28.xyz);
            r14.xyz = saturate(r27.xyz * r29.xyz + float3(0.5,0.5,0.5));
            r30.z = r31.x;
            r14.xyz = r14.xyz * r30.xyz + r31.yzw;
            r32.x = dot(r0.xyz, r24.xyz);
            r32.y = dot(r0.xyz, r25.xyz);
            r32.z = dot(r0.xyz, r28.xyz);
            r24.xyz = cmp(float3(0,0,0) < r32.xyz);
            r16.z = r24.x ? 0 : 0.5;
            r25.xyz = r16.xyz + r14.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r26.xzw = r32.xyz * r32.xyz;
            r26.xzw = r26.xzw * r10.zzz;
            r18.z = r24.y ? 0 : 0.5;
            r24.xyw = r18.xyz + r14.xyz;
            r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
            r24.xyw = r24.xyw * r26.zzz;
            r24.xyw = r25.xyz * r26.xxx + r24.xyw;
            r19.z = r24.z ? 0 : 0.5;
            r14.xyz = r19.xyz + r14.xyz;
            r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
            r14.xyz = r14.xyz * r26.www + r24.xyw;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
            r25.xyz = r24.xyz * r14.xyz;
            r10.w = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r14.xyz * r24.xyz + r22.xyz;
            r12.w = r10.w * r7.z;
            r14.xyz = r17.yzw * r10.zzz;
            r10.z = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r10.z = r7.z * r10.w + r10.z;
            r10.z = r12.w / r10.z;
            r24.x = r22.w;
            r24.yz = r23.xy;
            r23.xyw = r14.yzx * r10.zzz + r24.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r9.y = (int)r9.y + 32;
  }
  r4.y = cmp(r21.w < 1);
  if (r4.y != 0) {
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r9.yzw = r20.xyz;
    r4.y = r21.w;
    r8.w = 0;
    while (true) {
      r10.y = cmp((uint)r8.w >= (uint)r7.w);
      if (r10.y != 0) break;
      r13.z = (uint)r8.w >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r10.y = visibleProbes.Load(r14.xyzw).x;
      r10.z = cmp((int)r2.w == (int)r8.w);
      if (r4.x == 0) r10.w = 0; else if (r4.x+0 < 32) {       r10.w = (uint)r10.y << (32-(r4.x + 0)); r10.w = (uint)r10.w >> (32-r4.x);      } else r10.w = (uint)r10.y >> 0;
      r10.y = r10.z ? r10.w : r10.y;
      r10.z = (int)r8.w + numLights;
      r23.xyzw = r22.xyzw;
      r14.xyz = r9.yzw;
      r10.w = r4.y;
      r12.w = r10.y;
      while (true) {
        if (r12.w == 0) break;
        r13.z = firstbitlow((uint)r12.w);
        r13.w = 1 << (int)r13.z;
        r15.w = (int)r12.w & (int)r13.w;
        if (r15.w != 0) {
          r12.w = (int)r12.w ^ (int)r13.w;
          r13.w = (int)r10.z + (int)r13.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r13.w, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v5.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r13.w = r24.y ? r24.x : 0;
          r13.w = r24.z ? r13.w : 0;
          if (r13.w != 0) {
            r13.z = (int)r8.w + (int)r13.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.z, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r13.z, l(96), t15.xxxy
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.z, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v5.xyz + -r24.yzw;
            r13.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r15.w = 0; else if (6+25 < 32) {             r15.w = (uint)r25.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);            } else r15.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r16.w = dot(r27.xyz, r26.xyz);
            r16.w = saturate(r16.w + r27.w);
            r18.w = dot(r28.xyz, r26.xyz);
            r18.w = saturate(r18.w + r28.w);
            r16.w = r18.w * r16.w;
            r18.w = dot(r29.xyz, r26.xyz);
            r18.w = saturate(r18.w + r29.w);
            r16.w = r18.w * r16.w;
            r18.w = dot(r30.xyz, r26.xyz);
            r18.w = saturate(r18.w + r30.w);
            r16.w = r18.w * r16.w;
            r18.w = dot(r31.xyz, r26.xyz);
            r18.w = saturate(r18.w + r31.w);
            r16.w = r18.w * r16.w;
            r18.w = dot(r32.xyz, r26.xyz);
            r18.w = saturate(r18.w + r32.w);
            r15.x = r18.w * r16.w;
            r16.w = (int)r17.z & 1;
            r27.xy = r16.ww ? r15.xy : r15.zx;
            r15.x = r17.z;
            r28.xy = r27.xy;
            r16.w = 1;
            while (true) {
              r18.w = cmp((int)r16.w >= (int)r15.w);
              if (r18.w != 0) break;
              r18.w = (int)r13.w + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r18.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r18.w = dot(r29.xyz, r26.xyz);
              r18.w = saturate(r18.w + r29.w);
              r18.w = r28.x * r18.w;
              r19.w = dot(r30.xyz, r26.xyz);
              r19.w = saturate(r19.w + r30.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r31.xyz, r26.xyz);
              r19.w = saturate(r19.w + r31.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r32.xyz, r26.xyz);
              r19.w = saturate(r19.w + r32.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r33.xyz, r26.xyz);
              r19.w = saturate(r19.w + r33.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r34.xyz, r26.xyz);
              r19.w = saturate(r19.w + r34.w);
              r28.x = r19.w * r18.w;
              r24.w = (uint)r15.x >> 2;
              if (1 == 0) r26.w = 0; else if (1+2 < 32) {               r26.w = (uint)r15.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);              } else r26.w = (uint)r15.x >> 2;
              r27.z = (int)r24.w & 2;
              r27.w = max(r28.y, r28.x);
              r18.w = -r18.w * r19.w + 1;
              r18.w = r28.y * r18.w;
              r17.y = r27.z ? r18.w : r27.w;
              r28.xy = r26.ww ? r28.xy : r17.xy;
              r16.w = (int)r16.w + 1;
              r15.x = r24.w;
            }
            r13.w = saturate(r28.y + -r10.w);
            r15.x = r13.w * r17.w;
            r15.w = cmp(0 < r15.x);
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.z, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.z, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.z, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r13.z, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r23.w = r13.w * r17.w + r23.w;
              r13.z = r15.x * r25.z;
              r25.z = r33.z;
              r13.w = dot(r11.xyz, r25.xyz);
              r15.x = dot(r26.xyz, r25.xyz);
              r15.x = r15.x + -r33.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r6.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.w = min(131072, abs(r13.w));
              r33.z = r34.z;
              r15.x = dot(r11.xyz, r33.xyz);
              r15.w = dot(r26.xyz, r33.xyz);
              r15.w = r15.w + -r34.w;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r6.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r34.z = r35.z;
              r15.x = dot(r11.xyz, r34.xyz);
              r15.w = dot(r26.xyz, r34.xyz);
              r15.w = r15.w + -r35.w;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r6.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r35.z = r36.z;
              r15.x = dot(r11.xyz, r35.xyz);
              r15.w = dot(r26.xyz, r35.xyz);
              r15.w = r15.w + -r36.w;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r6.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r36.z = r37.x;
              r15.x = dot(r11.xyz, r36.xyz);
              r15.w = dot(r26.xyz, r36.xyz);
              r15.w = r15.w + -r37.y;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r6.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r38.zw = r37.zw;
              r15.x = dot(r11.zxy, r38.xzw);
              r15.w = dot(r26.zxy, r38.xzw);
              r15.w = r15.w + -r38.y;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r6.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r25.x = r30.w;
              r25.yz = r31.zw;
              r17.yzw = r25.xyz + r26.xyz;
              r17.yzw = r11.xyz * r13.www + r17.yzw;
              r15.x = dot(r17.yzw, r17.yzw);
              r15.x = sqrt(r15.x);
              r13.w = r13.w / r15.x;
              r13.w = r13.w + r13.w;
              r13.w = sqrt(r13.w);
              r13.w = r4.w * 5 + r13.w;
              r13.w = -0.844799995 + r13.w;
              r24.y = r27.z;
              r24.z = r29.x;
              r33.x = dot(r17.yzw, r24.xyz);
              r25.xy = r27.xw;
              r25.z = r29.w;
              r33.y = dot(r17.yzw, r25.xyz);
              r29.x = r27.y;
              r33.z = dot(r17.yzw, r29.xyz);
              if (9 == 0) r15.x = 0; else if (9+16 < 32) {               r15.x = (uint)r25.w << (32-(9 + 16)); r15.x = (uint)r15.x >> (32-9);              } else r15.x = (uint)r25.w >> 16;
              r33.w = (uint)r15.x;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r13.w).xyz;
              r27.x = dot(r26.xyz, r24.xyz);
              r27.y = dot(r26.xyz, r25.xyz);
              r27.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r27.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r0.xyz, r24.xyz);
              r33.y = dot(r0.xyz, r25.xyz);
              r33.z = dot(r0.xyz, r29.xyz);
              r24.xyz = cmp(float3(0,0,0) < r33.xyz);
              r16.z = r24.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r16.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xyz = r33.xyz * r33.xyz;
              r27.xyz = r27.xyz * r13.zzz;
              r18.z = r24.y ? 0 : 0.5;
              r24.xyw = r26.xyz + r18.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r27.yyy;
              r24.xyw = r25.xyz * r27.xxx + r24.xyw;
              r19.z = r24.z ? 0 : 0.5;
              r25.xyz = r26.xyz + r19.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = r25.xyz * r27.zzz + r24.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r26.xyz = r25.xyz * r24.xyz;
              r13.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.xyz = r24.xyz * r25.xyz + r14.xyz;
              r15.x = r13.w * r7.z;
              r17.yzw = r17.yzw * r13.zzz;
              r13.z = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r13.z = r7.z * r13.w + r13.z;
              r13.z = r15.x / r13.z;
              r23.xyz = r17.yzw * r13.zzz + r23.xyz;
            }
          }
        }
      }
      r22.xyzw = r23.xyzw;
      r9.yzw = r14.xyz;
      r8.w = (int)r8.w + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r9.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r2.w = max(1, r21.w);
  r2.w = rcp(r2.w);
  r21.w = saturate(r21.w);
  r4.xyw = r20.xyz * r2.www;
  r9.yzw = r21.xyz * r2.www;
  r6.w = cmp(r21.w < 0.99000001);
  if (r6.w != 0) {
    r6.w = 1 + -r21.w;
    r7.z = sunConstants.globalProbeExposure * r6.w;
    r10.yzw = -globalProbeConstants.data[0].xyz + v5.xyz;
    r13.x = globalProbeConstants.data[0].w * r10.y;
    r13.yz = globalProbeConstants.data[1].xy * r10.zw;
    r10.yzw = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r10.yz;
    r13.z = globalProbeConstants.data[2].x * r10.w;
    r10.yzw = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = cmp(float3(0,0,0) < r0.xyz);
    r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r13.w = 0;
    r14.xyz = r13.wwx + r10.yzw;
    r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r15.xyz = r0.xyz * r0.xyz;
    r15.xyz = r15.xyz * r7.zzz;
    r16.xyz = r13.wwy + r10.yzw;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r14.xyz = r14.xyz * r15.xxx + r16.xyz;
    r10.yzw = r13.wwz + r10.yzw;
    r10.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
    r10.yzw = r10.yzw * r15.zzz + r14.xyz;
    r0.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r0.xyzw, 6).xyz;
    r10.yzw = r13.xyz * r10.yzw;
    r0.w = dot(r10.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r4.xyw = r20.xyz * r2.www + r10.yzw;
    r11.w = 0;
    r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r5.w).xyz;
    r2.w = sunConstants.globalProbeExposure * r6.w + -r0.w;
    r0.w = r2.z * r2.w + r0.w;
    r9.yzw = r10.yzw * r0.www + r9.yzw;
  }
  r9.yzw = probeReflectionLevel * r9.yzw;
  if (useFoam != 0) {
    r0.w = dot(r5.xyz, r0.xyz);
    r0.w = r0.w + r0.w;
    r11.xyz = r0.xyz * -r0.www + r5.xyz;
    r13.xy = (int2)v0.xy;
    r13.zw = float2(0,0);
    r0.w = ifloatZScene.Load(r13.xyz).x;
    r2.z = cmp(r0.w >= 0.984375);
    r2.w = 1.01587307 * r0.w;
    r0.w = r0.w * 64 + -63;
    r0.w = r2.z ? r0.w : r2.w;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r0.w = -v0.w + r0.w;
    r0.w = max(0, r0.w);
    r0.w = min(maxRayDepth, r0.w);
    r11.w = abs(r11.z);
    r10.yzw = r11.xyw * r0.www + v5.xyz;
    r11.xyz = viewProjectionMatrix._m10_m11_m13 * r10.zzz;
    r11.xyz = r10.yyy * viewProjectionMatrix._m00_m01_m03 + r11.xyz;
    r10.yzw = r10.www * viewProjectionMatrix._m20_m21_m23 + r11.xyz;
    r10.yzw = viewProjectionMatrix._m30_m31_m33 + r10.yzw;
    r2.zw = r10.yz / r10.ww;
    r0.w = max(abs(r2.z), abs(r2.w));
    r2.zw = r2.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r7.zw = renderTargetSize.xy * r2.zw;
    r11.xy = (int2)r7.zw;
    r11.zw = float2(0,0);
    r5.w = ifloatZScene.Load(r11.xyz).x;
    r6.w = cmp(r5.w >= 0.984375);
    r7.z = 1.01587307 * r5.w;
    r5.w = r5.w * 64 + -63;
    r5.w = r6.w ? r5.w : r7.z;
    r5.w = max(9.99999994e-09, r5.w);
    r5.w = rcp(r5.w);
    r5.w = cmp(r5.w >= v0.w);
    r0.w = cmp(r0.w < 1);
    r0.w = r0.w ? r5.w : 0;
    r10.yzw = iResolveScene.Sample(bilinearClamp_s, r2.zw).xyz;
    if (r0.w != 0) {
      r10.yzw = relHDRExposure.xxx * r10.yzw;
      r10.yzw = SSRLevel * r10.yzw;
      r0.w = -r2.x * 0.5 + 1;
      r9.yzw = r10.yzw * r0.www;
    }
  }
  r0.w = dot(r0.xyz, sunConstants.wldDir.xyz);
  r2.x = saturate(r0.w);
  r2.z = cmp(0 >= r2.x);
  if (r2.z != 0) {
    r2.w = 0;
  }
  if (r2.z == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r10.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r2.z = -sunConstants.splitDepthOffset + r10.w;
    r2.z = -r2.z * 6.10351563e-05 + 1;
    r5.w = saturate(r2.z);
    r5.w = cmp(r2.z == r5.w);
    if (r5.w != 0) {
      r5.w = 0;
      r6.w = 0;
      while (true) {
        r7.z = cmp(r5.w >= 3);
        if (r7.z != 0) break;
        r7.z = (uint)r5.w;
        r11.xy = -sunConstants.splitPinTransform[r7.z].xy + r10.yz;
        r7.w = max(abs(r11.x), abs(r11.y));
        r6.w = sunConstants.splitPinTransform[r7.z].z * r7.w;
        r7.z = cmp(r6.w < 1);
        if (r7.z != 0) {
          break;
        }
        r5.w = 1 + r5.w;
        r6.w = 0;
      }
    } else {
      r5.w = 3;
      r6.w = 0;
    }
    r7.z = cmp(r5.w >= 3);
    if (r7.z != 0) {
      r11.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r13.xz = rcp(r11.xx);
      r13.y = -r13.z;
      r11.xyz = r10.yzy * r13.xyz + r11.yzy;
      r13.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r11.xyz = max(float3(0,0,0), r11.xyz);
      r11.xyz = min(r11.xyz, r13.xyz);
      r13.xy = sunConstants.sstLightingConstants.coordScale * r11.zy;
      r13.xy = floor(r13.xy);
      r7.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.y;
      r7.w = r7.w * sunConstants.sstLightingConstants.coordScale + r13.x;
      r7.w = (uint)r7.w;
      r7.w = (int)r7.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(0), t23.xxxx
    r8.w = samp0[]..swiz;
      r11.w = (int)r8.w & 0x40000000;
      r12.w = (uint)r8.w << 2;
      if (r11.w == 0) {
        r11.w = (int)r8.w & 0x01ffffff;
        r13.x = (int)r7.w + (int)r11.w;
        r7.w = (uint)r8.w >> 25;
        r7.w = (uint)r7.w;
        r11.xyz = r11.xyz * r7.www;
        r11.xyz = frac(r11.xyz);
        r11.xyz = float3(128,128,128) * r11.xyz;
        r11.xyz = (uint3)r11.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
      r13.z = samp0[]..swiz;
        r14.xy = (uint2)r11.zy >> int2(6,6);
        r7.w = (int)r13.z & 0xc0000000;
        r8.w = (int)r13.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(0), t23.xxxx
      r8.w = samp0[]..swiz;
        r8.w = r14.y ? r13.z : r8.w;
        r11.w = (uint)r8.w >> 13;
        r8.w = r14.x ? r11.w : r8.w;
        r8.w = (int)r8.w & 8191;
        r14.x = (int)r8.w + (int)r13.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
      r14.z = samp0[]..swiz;
        r13.y = 0;
        r14.y = 1;
        r14.xyz = r7.www ? r13.xyz : r14.xyz;
        r15.yz = r7.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r16.xy = (uint2)r11.zy >> (uint2)r15.yy;
        r16.xy = (int2)r16.xy & int2(1,1);
        r8.w = (int)r14.z & 0xc0000000;
        r11.w = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r11.w = r16.y ? r14.z : r11.w;
        r13.w = (uint)r11.w >> 13;
        r11.w = r16.x ? r13.w : r11.w;
        r11.w = (int)r11.w & 8191;
        r15.x = (int)r11.w + (int)r14.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r14.xyz = r8.www ? r14.xyz : r15.xzw;
        r13.xyz = r7.www ? r13.xyz : r14.xyz;
        r7.w = (int)r13.z & 0xc0000000;
        if (r7.w == 0) {
          r7.w = (int)-r13.y + 6;
          r14.xy = (uint2)r11.zy >> (uint2)r7.ww;
          r7.w = (int)r13.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r14.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.w = (((uint)r14.x << 0) & bitmask.w) | ((uint)r8.w & ~bitmask.w);
          r8.w = (int)r8.w * 10;
          r7.w = (uint)r7.w >> (uint)r8.w;
          r7.w = (int)r7.w & 1023;
          r14.x = (int)r7.w + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r14.yz = (int2)r13.yy + int2(1,2);
          r7.w = (int)-r14.y + 6;
          r13.yw = (uint2)r11.zy >> (uint2)r7.ww;
          r7.w = (int)r14.w & 0xc0000000;
          r8.w = (int)r14.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.w = (((uint)r13.y << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r11.w = (int)r11.w * 10;
          r8.w = (uint)r8.w >> (uint)r11.w;
          r8.w = (int)r8.w & 1023;
          r15.x = (int)r8.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r14.z;
          r15.xyz = r7.www ? r14.xyw : r15.xyz;
          r8.w = (int)-r15.y + 6;
          r13.yw = (uint2)r11.zy >> (uint2)r8.ww;
          r8.w = (int)r15.z & 0xc0000000;
          r11.w = (int)r15.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.y = (((uint)r13.y << 0) & bitmask.y) | ((uint)r13.w & ~bitmask.y);
          r13.y = (int)r13.y * 10;
          r11.w = (uint)r11.w >> (uint)r13.y;
          r11.w = (int)r11.w & 1023;
          r16.x = (int)r11.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r13.yw = r8.ww ? r15.xz : r16.xy;
          r13.xz = r7.ww ? r14.xw : r13.yw;
        }
        r7.w = (int)r13.z & 0xc0000000;
        if (r7.w == 0) {
          if (14 == 0) r8.w = 0; else if (14+15 < 32) {           r8.w = (uint)r13.z << (32-(14 + 15)); r8.w = (uint)r8.w >> (32-14);          } else r8.w = (uint)r13.z >> 15;
          r8.w = (uint)r8.w;
          r8.w = sunConstants.sstLightingConstants.constants.spanInInches * r8.w;
          r8.w = 6.10388815e-05 * r8.w;
          r13.yw = (int2)r13.zz & int2(32767,536870912);
          r11.w = (uint)r13.y;
          r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
          r11.w = 3.05185094e-05 * r11.w;
          r13.y = (int)r11.y & 3;
          r13.y = (int)r13.y + (int)r13.x;
          r13.y = (int)r13.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r14.x = (((uint)r11.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r14.y = (((uint)r11.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r14.z = (((uint)r11.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r11.x = (uint)r13.y >> (uint)r14.x;
          r11.x = (int)r11.x & 255;
          r11.x = (uint)r11.x;
          r11.x = r11.x * r11.w;
          r11.x = r11.x * 0.00392156886 + r8.w;
          r11.y = (int)r14.y + 1;
          if (1 == 0) r11.z = 0; else if (1+1 < 32) {           r11.z = (uint)r11.z << (32-(1 + 1)); r11.z = (uint)r11.z >> (32-1);          } else r11.z = (uint)r11.z >> 1;
          r11.y = (int)r11.z + (int)r11.y;
          r11.y = (int)r11.y + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.y, r11.y, l(0), t23.xxxx
        r11.y = samp0[]..swiz;
          r11.y = (uint)r11.y >> (uint)r14.z;
          r11.y = (int)r11.y & 0x0000ffff;
          r11.y = (uint)r11.y;
          r11.y = r11.y * r11.w;
          r8.w = r11.y * 1.52590219e-05 + r8.w;
          r12.w = r13.w ? r11.x : r8.w;
        } else {
          r8.w = (int)r13.z & 0x80000000;
          r11.x = (int)r13.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.x, r11.x, l(0), t23.xxxx
        r11.x = samp0[]..swiz;
          r8.w = r8.w ? r11.x : 0;
          r11.x = (uint)r13.z << 2;
          r11.y = (uint)r8.w >> 16;
          r11.y = f16tof32(r11.y);
          r8.w = (int)r8.w & 0x0000ffff;
          r8.w = f16tof32(r8.w);
          r11.x = r10.y * r11.y + r11.x;
          r8.w = r10.z * r8.w + r11.x;
          r12.w = r7.w ? r8.w : r12.w;
        }
      }
      r7.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r7.w = cmp(r12.w < r7.w);
      r2.w = r7.w ? 0 : 1;
    }
    if (r7.z == 0) {
      if (enableDitheredShadow == 0) {
        r7.z = (uint)r5.w;
        r11.xy = -sunConstants.splitPinTransform[r7.z].xy + r10.yz;
        r7.zw = sunConstants.splitPinTransform[r7.z].zz * r11.xy;
        r11.xy = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.z = (int16)sunConstants.splitArrayOffset;
        r11.z = r7.z + r5.w;
        r7.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r2.z).x;
        r7.w = gTransShadowmapArray.SampleLevel(samp0_s, r11.xyz, 0).x;
        r7.z = r7.z + r7.w;
        r7.z = saturate(-1 + r7.z);
        r7.w = r7.z * r7.z;
        r2.w = r7.w * r7.z;
      }
      if (enableDitheredShadow != 0) {
        r11.x = -r7.x;
        r7.z = (uint)r5.w;
        r5.w = 1 + r5.w;
        r5.w = min(2, r5.w);
        r5.w = (uint)r5.w;
        r6.w = 1 + -r6.w;
        r6.w = 28 * r6.w;
        r6.w = (uint)r6.w;
        r13.xy = -sunConstants.splitPinTransform[r7.z].xy + r10.yz;
        r13.xy = sunConstants.splitPinTransform[r7.z].zz * r13.xy;
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r5.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r5.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.y = r8.x;
        r11.z = r7.x;
        r7.w = 0;
        r8.w = 0;
        while (true) {
          r10.w = cmp((uint)r8.w >= 8);
          if (r10.w != 0) break;
          r10.w = cmp((uint)r6.w < (uint)r8.w);
          r13.zw = r10.ww ? r10.yz : r13.xy;
          r11.w = r10.w ? sunConstants.splitPinTransform[r5.w].w : sunConstants.splitPinTransform[r7.z].w;
          r10.w = r10.w ? r5.w : r7.z;
          r14.x = dot(icb[r8.w+0].yx, r11.xy);
          r14.y = dot(icb[r8.w+0].yx, r11.yz);
          r14.xy = r14.xy * r11.ww + r13.zw;
          r10.w = (int)r10.w + (int16)sunConstants.splitArrayOffset;
          r14.z = (uint)r10.w;
          r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r2.z).x;
          r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
          r10.w = r11.w + r10.w;
          r10.w = saturate(-1 + r10.w);
          r7.w = r10.w * 0.125 + r7.w;
          r8.w = (int)r8.w + 1;
        }
        r2.z = r7.w * r7.w;
        r2.w = r2.z * r7.w;
      }
    }
  }
  r2.z = viewmodelSunShadowRaw & 0x0000ffff;
  if (r2.z != 0) {
    r2.z = (int)r2.z + numLights;
    r2.z = (int)r2.z + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r5.w, r2.z, l(52), t12.xxxx
  r5.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r2.z, l(68), t12.xyzw
  r11.x = samp0[]..swiz;
  r11.y = samp0[]..swiz;
  r11.z = samp0[]..swiz;
  r11.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r2.z, l(84), t12.xyzw
  r13.x = samp0[]..swiz;
  r13.y = samp0[]..swiz;
  r13.z = samp0[]..swiz;
  r13.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r2.z, l(132), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r2.z, l(148), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
    r0.w = abs(r0.w) * -0.200000003 + 0.400000006;
    r16.xyz = r0.xyz * r0.www + v5.xyz;
    r16.w = 1;
    r11.x = dot(r11.xyzw, r16.xyzw);
    r11.y = dot(r13.xyzw, r16.xyzw);
    r7.zw = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r7.zw = r7.zw + r15.zw;
    r7.zw = r7.zw * r15.xy;
    r10.yz = r5.ww / r14.xz;
    r11.xy = float2(1,1) + -r10.yz;
    r11.xy = cmp(r7.zw >= r11.xy);
    r10.yz = cmp(r10.yz >= r7.zw);
    r10.yz = (int2)r10.yz | (int2)r11.xy;
    r0.w = (int)r10.z | (int)r10.y;
    if (r0.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r0.w, r2.z, l(28), t12.xxxx
    r0.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r2.z, l(100), t12.xyzw
    r11.x = samp0[]..swiz;
    r11.y = samp0[]..swiz;
    r11.z = samp0[]..swiz;
    r11.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.yz, r2.z, l(164), t12.xxyx
    r10.y = samp0[]..swiz;
    r10.z = samp0[]..swiz;
      r2.z = dot(r11.xyzw, r16.xyzw);
      r7.zw = saturate(r7.zw);
      r11.xy = r7.zw * r14.xz + r14.yw;
      r2.z = r2.z + r10.y;
      r2.z = r2.z / r10.z;
      r2.z = max(6.10351563e-05, r2.z);
      r0.w = (int)r0.w & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r13.x = -r7.x;
        r14.z = (uint)r0.w;
        r13.y = r8.x;
        r13.z = r7.x;
        r6.w = 0;
        r7.z = 0;
        while (true) {
          r7.w = cmp((int)r7.z >= 8);
          if (r7.w != 0) break;
          r15.x = dot(icb[r7.z+0].yx, r13.xy);
          r15.y = dot(icb[r7.z+0].yx, r13.yz);
          r14.xy = r15.xy * r5.ww + r11.xy;
          r7.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r2.z).x;
          r6.w = r7.w * 0.125 + r6.w;
          r7.z = (int)r7.z + 1;
        }
      } else {
        r11.z = (uint)r0.w;
        r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r2.z).x;
      }
      r0.w = r6.w * r6.w;
      r0.w = r0.w * r6.w;
    } else {
      r0.w = 1;
    }
    r2.w = r2.w * r0.w;
  }
  r10.yzw = sunConstants.color.xyz * r2.www;
  r11.xyz = -v5.xyz * r3.www + sunConstants.wldDir.xyz;
  r0.w = dot(r11.xyz, r11.xyz);
  r0.w = rsqrt(r0.w);
  r11.xyz = r11.xyz * r0.www;
  r0.w = saturate(dot(r0.xyz, r11.xyz));
  r2.z = saturate(dot(r11.xyz, sunConstants.wldDir.xyz));
  r2.w = saturate(dot(r11.xyz, r6.xyz));
  r2.z = 1 + -r2.z;
  r5.w = r2.z * r2.z;
  r5.w = r5.w * r5.w;
  r2.z = r5.w * r2.z;
  r2.z = controlVar0.w * r2.z + controlVar0.z;
  r0.w = log2(r0.w);
  r7.zw = controlVar0.xy * r0.ww;
  r7.zw = exp2(r7.zw);
  r0.w = dot(r7.zw, controlVar1.xy);
  r2.z = r2.z * r2.x;
  r2.w = 12.566371 * r2.w;
  r2.z = r2.z / r2.w;
  r0.w = r2.z * r0.w;
  r11.xyz = r10.yzw * r0.www;
  r0.w = r2.x + r2.x;
  r0.w = r2.x / r0.w;
  r13.xyz = r10.yzw * r0.www;
  r2.xzw = r10.yzw * r2.xxx;
  r14.x = -r7.x;
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v5.xyz;
  r17.w = 1;
  r18.w = 1;
  r14.z = r7.x;
  r19.z = 1;
  r20.w = 1;
  r14.yw = r8.xx;
  r7.y = r14.w;
  r21.w = 1;
  r8.y = r14.x;
  r8.z = r7.x;
  r22.x = r8.x;
  r22.y = r14.x;
  r22.z = r7.x;
  r10.yzw = r13.xyz;
  r23.xyz = r2.xzw;
  r24.xyz = r11.xyz;
  r0.w = enableDitheredShadow;
  r5.w = 0;
  while (true) {
    r6.w = cmp((uint)r5.w >= numLights);
    if (r6.w != 0) break;
    r15.z = (uint)r5.w >> 5;
    r16.xyz = (int3)r12.xyz + (int3)r15.xyz;
    r6.w = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r10.yzw;
    r25.xyz = r23.xyz;
    r26.xyz = r24.xyz;
    r7.z = r0.w;
    r7.w = r6.w;
    while (true) {
      if (r7.w == 0) break;
      r8.w = firstbitlow((uint)r7.w);
      r11.w = 1 << (int)r8.w;
      r12.w = (int)r7.w & (int)r11.w;
      if (r12.w != 0) {
        r7.w = (int)r7.w ^ (int)r11.w;
        r8.w = (int)r5.w + (int)r8.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xyzw, r8.w, l(0), t12.xyzw
      r27.x = samp0[]..swiz;
      r27.y = samp0[]..swiz;
      r27.z = samp0[]..swiz;
      r27.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xy, r8.w, l(16), t12.xyxx
      r28.x = samp0[]..swiz;
      r28.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r8.w, l(28), t12.xyzw
      r29.x = samp0[]..swiz;
      r29.y = samp0[]..swiz;
      r29.z = samp0[]..swiz;
      r29.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(44), t12.xyzw
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
      r30.z = samp0[]..swiz;
      r30.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(60), t12.zwxy
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(76), t12.xyzw
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(92), t12.zwxy
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
      r33.z = samp0[]..swiz;
      r33.w = samp0[]..swiz;
        if (3 == 0) r11.w = 0; else if (3+24 < 32) {         r11.w = (uint)r29.x << (32-(3 + 24)); r11.w = (uint)r11.w >> (32-3);        } else r11.w = (uint)r29.x >> 24;
        switch (r11.w) {
          case 4 :          r11.w = cmp(0 < r33.x);
          r34.x = r32.w;
          r34.yz = r33.zw;
          r35.xyz = -r34.xyz * float3(0.5,0.5,0.5) + r27.xyz;
          r36.xyz = -v5.xyz + r35.xyz;
          r12.w = dot(r34.xyz, r36.xyz);
          r12.w = saturate(-r12.w / r33.x);
          r34.xyz = r12.www * r34.xyz + r35.xyz;
          r34.xyz = r11.www ? r34.xyz : r27.xyz;
          r34.xyz = -v5.xyz + r34.xyz;
          r11.w = dot(r34.xyz, r34.xyz);
          r12.w = rsqrt(r11.w);
          r34.xyz = r34.xyz * r12.www;
          r12.w = dot(r0.xyz, r34.xyz);
          r13.w = saturate(r12.w);
          r15.z = cmp(0 < r13.w);
          if (r15.z != 0) {
            r15.z = sqrt(r11.w);
            r15.w = r30.y * r30.y;
            r11.w = r15.w / r11.w;
            r11.w = min(1, r11.w);
            r15.w = saturate(r15.z * r29.y + r29.z);
            r15.z = saturate(r15.z * r29.w + r30.x);
            r19.w = r15.w * r15.w;
            r15.w = r15.w * -2 + 3;
            r15.w = r19.w * r15.w;
            r11.w = r15.w * r11.w;
            r15.w = r15.z * r15.z;
            r15.z = r15.z * -2 + 3;
            r15.z = r15.w * r15.z;
            r11.w = r15.z * r11.w;
            r15.z = cmp(0 < r11.w);
            if (r15.z != 0) {
              if (3 == 0) r15.z = 0; else if (3+27 < 32) {               r15.z = (uint)r29.x << (32-(3 + 27)); r15.z = (uint)r15.z >> (32-3);              } else r15.z = (uint)r29.x >> 27;
              if (4 == 0) r15.w = 0; else if (4+20 < 32) {               r15.w = (uint)r29.x << (32-(4 + 20)); r15.w = (uint)r15.w >> (32-4);              } else r15.w = (uint)r29.x >> 20;
              r15.z = cmp((int)r15.z != 1);
              if (r15.z != 0) {
                r15.z = abs(r12.w) * -0.200000003 + 0.400000006;
                r35.xyz = r0.xyz * r15.zzz + v5.xyz;
                r31.z = r32.x;
                r35.xyz = r35.xyz + -r31.xyz;
                r15.z = max(abs(r35.y), abs(r35.z));
                r15.z = max(abs(r35.x), r15.z);
                r15.z = r32.y / r15.z;
                r15.z = r15.z + r32.z;
                r19.w = dot(r35.xyz, r35.xyz);
                r19.w = rsqrt(r19.w);
                r15.z = max(6.10351563e-05, r15.z);
                r22.w = (int)r29.x & 0x0000ffff;
                r36.w = (uint)r22.w;
                r22.w = 0;
                r23.w = 0;
                while (true) {
                  r24.w = cmp((int)r23.w >= 8);
                  if (r24.w != 0) break;
                  r37.y = dot(icb[r23.w+0].yx, r14.xy);
                  r37.z = dot(icb[r23.w+0].yx, r14.yz);
                  r37.yz = r37.yz * r30.zz;
                  r37.x = r37.y * r10.x;
                  r37.w = r37.y * r9.x;
                  r36.xyz = r35.xyz * r19.www + r37.xzw;
                  r24.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyzw, r15.z).x;
                  r22.w = r24.w * 0.125 + r22.w;
                  r23.w = (int)r23.w + 1;
                }
              } else {
                r22.w = 1;
              }
              r11.w = r22.w * r11.w;
              if (r15.w != 0) {
                r15.z = (int)r15.w + numLights;
                r15.z = (int)r15.z + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r15.z, l(52), t12.xxxx
              r15.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r15.z, l(100), t12.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r15.z, l(116), t12.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
                r12.w = abs(r12.w) * -0.200000003 + 0.400000006;
                r18.xyz = r0.xyz * r12.www + v5.xyz;
                r12.w = dot(r35.xyzw, r18.xyzw);
                r19.w = dot(r36.xyzw, r18.xyzw);
                r23.w = cmp(r19.w < r12.w);
                if (r23.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r15.z, l(68), t12.xyzw
                r35.x = samp0[]..swiz;
                r35.y = samp0[]..swiz;
                r35.z = samp0[]..swiz;
                r35.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r15.z, l(84), t12.xyzw
                r36.x = samp0[]..swiz;
                r36.y = samp0[]..swiz;
                r36.z = samp0[]..swiz;
                r36.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r15.z, l(132), t12.xyzw
                r37.x = samp0[]..swiz;
                r37.y = samp0[]..swiz;
                r37.z = samp0[]..swiz;
                r37.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r15.z, l(148), t12.xyzw
                r38.x = samp0[]..swiz;
                r38.y = samp0[]..swiz;
                r38.z = samp0[]..swiz;
                r38.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xy, r15.z, l(164), t12.xyxx
                r39.x = samp0[]..swiz;
                r39.y = samp0[]..swiz;
                  r35.x = dot(r35.xyzw, r18.xyzw);
                  r35.y = dot(r36.xyzw, r18.xyzw);
                  r18.xy = r35.xy / r19.ww;
                  r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r18.xy = r18.xy + r38.zw;
                  r18.xy = r18.xy * r38.xy;
                  r35.xy = r15.ww / r37.xz;
                  r35.zw = float2(1,1) + -r35.xy;
                  r35.zw = cmp(r18.xy >= r35.zw);
                  r35.xy = cmp(r35.xy >= r18.xy);
                  r35.xy = (int2)r35.xy | (int2)r35.zw;
                  r18.z = (int)r35.y | (int)r35.x;
                  r18.xy = saturate(r18.xy);
                  r35.xy = r18.xy * r37.xz + r37.yw;
                  r18.x = r39.y * r19.w;
                  r12.w = r39.x * r19.w + r12.w;
                  r12.w = r12.w / r18.x;
                } else {
                  r18.z = -1;
                }
                r18.x = (int)r23.w | (int)r18.z;
                if (r18.x == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(28), t12.xxxx
                r15.z = samp0[]..swiz;
                  r12.w = max(6.10351563e-05, r12.w);
                  r15.z = (int)r15.z & 0x0000ffff;
                  if (r7.z != 0) {
                    r18.z = (uint)r15.z;
                    r19.w = 0;
                    r23.w = 0;
                    while (true) {
                      r24.w = cmp((int)r23.w >= 8);
                      if (r24.w != 0) break;
                      r36.x = dot(icb[r23.w+0].yx, r14.xw);
                      r36.y = dot(icb[r23.w+0].xy, r7.xy);
                      r18.xy = r36.xy * r15.ww + r35.xy;
                      r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r12.w).x;
                      r19.w = r18.x * 0.125 + r19.w;
                      r23.w = (int)r23.w + 1;
                    }
                  } else {
                    r35.z = (uint)r15.z;
                    r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r12.w).x;
                  }
                  r12.w = r19.w * r19.w;
                  r12.w = r12.w * r19.w;
                } else {
                  r12.w = 1;
                }
                r11.w = r12.w * r11.w;
              }
              r12.w = cmp(0 < r11.w);
              if (r12.w != 0) {
                r18.xyz = -v5.xyz * r3.www + r34.xyz;
                r12.w = dot(r18.xyz, r18.xyz);
                r12.w = rsqrt(r12.w);
                r18.xyz = r18.xyz * r12.www;
                r12.w = saturate(dot(r0.xyz, r18.xyz));
                r15.z = saturate(dot(r18.xyz, r6.xyz));
                r15.w = saturate(dot(r18.xyz, r34.xyz));
                r28.z = r27.w;
                r18.xyz = r11.www * r28.zxy;
                r11.w = r13.w + r4.z;
                r11.w = r13.w / r11.w;
                r16.xyz = r18.xyz * r11.www + r16.xyz;
                r25.xyz = r18.xyz * r13.www + r25.xyz;
                r11.w = 1 + -r15.w;
                r15.w = r11.w * r11.w;
                r15.w = r15.w * r15.w;
                r11.w = r15.w * r11.w;
                r11.w = controlVar0.w * r11.w + controlVar0.z;
                r12.w = log2(r12.w);
                r34.xy = controlVar0.xy * r12.ww;
                r34.xy = exp2(r34.xy);
                r12.w = dot(r34.xy, controlVar1.xy);
                r11.w = r11.w * r13.w;
                r13.w = 12.566371 * r15.z;
                r11.w = r11.w / r13.w;
                r11.w = r12.w * r11.w;
                r26.xyz = r18.xyz * r11.www + r26.xyz;
              }
            }
          }
          break;
          case 2 :          r18.x = r30.w;
          r18.yz = r31.zw;
          r18.xyz = -v5.xyz + r18.xyz;
          r11.w = dot(r18.xyz, r18.xyz);
          r11.w = rsqrt(r11.w);
          r18.xyz = r18.xyz * r11.www;
          r11.w = dot(r0.xyz, r18.xyz);
          r12.w = saturate(r11.w);
          r13.w = cmp(0 < r12.w);
          if (r13.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(108), t12.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(124), t12.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r36.xy = r34.xy;
            r36.zw = r35.xy;
            r13.w = dot(r36.xyzw, r17.xyzw);
            r15.z = cmp(r13.w < 1);
            if (r15.z != 0) {
              r37.xyz = float3(1,1,1);
              r15.z = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r8.w, l(172), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r8.w, l(188), t12.wxyz
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r8.w, l(204), t12.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r8.w, l(236), t12.xxxx
            r15.w = samp0[]..swiz;
              r27.xyz = -v5.xyz + r27.xyz;
              r23.w = r30.y * r30.y;
              r24.w = dot(r27.xyz, r27.xyz);
              r23.w = r23.w / r24.w;
              r23.w = min(1, r23.w);
              r24.w = saturate(r13.w * r29.y + r29.z);
              r25.w = saturate(r13.w * r29.w + r30.x);
              r26.w = r24.w * r24.w;
              r24.w = r24.w * -2 + 3;
              r24.w = r26.w * r24.w;
              r23.w = r24.w * r23.w;
              r24.w = r25.w * r25.w;
              r25.w = r25.w * -2 + 3;
              r24.w = r25.w * r24.w;
              r23.w = r24.w * r23.w;
              r31.zw = r32.xy;
              r27.x = dot(r31.xyzw, r17.xyzw);
              r41.xy = r32.zw;
              r41.zw = r33.zw;
              r27.y = dot(r41.xyzw, r17.xyzw);
              r19.xy = r27.xy / r13.ww;
              r13.w = cmp(r38.w < 0.00048828125);
              if (r13.w != 0) {
                r39.y = r40.x;
                r27.xy = saturate(abs(r19.xy) * r39.zw + r39.xy);
                r29.yz = r27.xy * r27.xy;
                r27.xy = r27.xy * float2(-2,-2) + float2(3,3);
                r27.xy = r29.yz * r27.xy;
                r13.w = r27.x * r27.y;
              } else {
                r38.w = r39.y;
                r38.xyzw = saturate(r38.xyzw * abs(r19.yyxx));
                r38.xyzw = log2(r38.xyzw);
                r38.xyzw = r39.xxxx * r38.xyzw;
                r38.xyzw = exp2(r38.xyzw);
                r27.xy = r38.xy + r38.zw;
                r27.xy = log2(r27.xy);
                r27.xy = r40.xx * r27.xy;
                r27.xy = exp2(r27.xy);
                r24.w = r39.z * r27.x;
                r25.w = r39.w * r27.y + -1;
                r24.w = r39.w * r27.y + -r24.w;
                r24.w = saturate(r25.w / r24.w);
                r25.w = r24.w * r24.w;
                r24.w = r24.w * -2 + 3;
                r13.w = r25.w * r24.w;
              }
              r15.z = r23.w * r13.w;
              r13.w = (int)r15.w & 255;
              if (r13.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xyz, r8.w, l(220), t12.xyzx
              r27.x = samp0[]..swiz;
              r27.y = samp0[]..swiz;
              r27.z = samp0[]..swiz;
                r15.w = dot(r40.yzw, r19.xyz);
                r19.x = dot(r27.xyz, r19.xyz);
                r27.x = frac(r15.w);
                r27.y = frac(r19.x);
                r13.w = (int)r13.w + -1;
                r27.z = (uint)r13.w;
                r37.xyz = gCookieArray.SampleLevel(samplerLinear_s, r27.xyz, 0).xyz;
              } else {
                r37.xyz = float3(1,1,1);
              }
            }
            r28.w = r27.w;
            r27.xyz = r37.xyz * r28.wxy;
            r13.w = cmp(0 < r15.z);
            if (r13.w != 0) {
              if (3 == 0) r19.x = 0; else if (3+27 < 32) {               r19.x = (uint)r29.x << (32-(3 + 27)); r19.x = (uint)r19.x >> (32-3);              } else r19.x = (uint)r29.x >> 27;
              if (4 == 0) r19.y = 0; else if (4+20 < 32) {               r19.y = (uint)r29.x << (32-(4 + 20)); r19.y = (uint)r19.y >> (32-4);              } else r19.y = (uint)r29.x >> 20;
              r13.w = cmp((int)r19.x != 1);
              if (r13.w != 0) {
                r13.w = abs(r11.w) * -0.200000003 + 0.400000006;
                r20.xyz = r0.xyz * r13.www + v5.xyz;
                r34.xy = r33.xy;
                r13.w = dot(r34.xyzw, r20.xyzw);
                r15.w = dot(r36.xyzw, r20.xyzw);
                r19.x = cmp(r15.w >= r13.w);
                if (r19.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xy, r8.w, l(140), t12.xyxx
                r35.x = samp0[]..swiz;
                r35.y = samp0[]..swiz;
                  r31.zw = r32.xy;
                  r28.x = dot(r31.xyzw, r20.xyzw);
                  r33.xy = r32.zw;
                  r28.y = dot(r33.xyzw, r20.xyzw);
                  r20.xy = r28.xy / r15.ww;
                  r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r20.xy = r20.xy * r35.zx + r35.wy;
                  r8.w = r13.w / r15.w;
                  r8.w = max(6.10351563e-05, r8.w);
                  r13.w = (int)r29.x & 0x0000ffff;
                  if (r7.z != 0) {
                    r28.z = (uint)r13.w;
                    r15.w = 0;
                    r19.x = 0;
                    while (true) {
                      r23.w = cmp((int)r19.x >= 8);
                      if (r23.w != 0) break;
                      r29.x = dot(icb[r19.x+0].xy, r8.xy);
                      r29.y = dot(icb[r19.x+0].yx, r8.xz);
                      r28.xy = r29.xy * r30.zz + r20.xy;
                      r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r8.w).x;
                      r15.w = r23.w * 0.125 + r15.w;
                      r19.x = (int)r19.x + 1;
                    }
                  } else {
                    r20.z = (uint)r13.w;
                    r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r8.w).x;
                  }
                  r8.w = r15.w * r15.w;
                  r8.w = r8.w * r15.w;
                } else {
                  r8.w = 1;
                }
              } else {
                r8.w = 1;
              }
              r8.w = r15.z * r8.w;
              if (r19.y != 0) {
                r13.w = (int)r19.y + numLights;
                r13.w = (int)r13.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.z, r13.w, l(52), t12.xxxx
              r15.z = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(68), t12.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(84), t12.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(100), t12.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(116), t12.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(132), t12.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(148), t12.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
                r11.w = abs(r11.w) * -0.200000003 + 0.400000006;
                r21.xyz = r0.xyz * r11.www + v5.xyz;
                r19.x = dot(r28.xyzw, r21.xyzw);
                r19.y = dot(r29.xyzw, r21.xyzw);
                r11.w = dot(r30.xyzw, r21.xyzw);
                r20.x = dot(r31.xyzw, r21.xyzw);
                r20.y = cmp(r20.x < r11.w);
                r19.xy = r19.xy / r20.xx;
                r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r19.xy = r19.xy + r33.zw;
                r19.xy = r19.xy * r33.xy;
                r21.xy = r15.zz / r32.xz;
                r28.xy = float2(1,1) + -r21.xy;
                r28.xy = cmp(r19.xy >= r28.xy);
                r21.xy = cmp(r21.xy >= r19.xy);
                r21.xy = (int2)r21.xy | (int2)r28.xy;
                r20.z = (int)r21.y | (int)r21.x;
                r20.y = (int)r20.y | (int)r20.z;
                if (r20.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.y, r13.w, l(28), t12.xxxx
                r20.y = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xy, r13.w, l(164), t12.xyxx
                r21.x = samp0[]..swiz;
                r21.y = samp0[]..swiz;
                  r19.xy = saturate(r19.xy);
                  r28.xy = r19.xy * r32.xz + r32.yw;
                  r13.w = r21.y * r20.x;
                  r11.w = r21.x * r20.x + r11.w;
                  r11.w = r11.w / r13.w;
                  r11.w = max(6.10351563e-05, r11.w);
                  r13.w = r20.y ? 0.000000 : 0;
                  if (r7.z != 0) {
                    r20.z = (uint)r13.w;
                    r19.xy = float2(0,0);
                    while (true) {
                      r21.x = cmp((int)r19.y >= 8);
                      if (r21.x != 0) break;
                      r21.x = dot(icb[r19.y+0].xy, r22.xy);
                      r21.y = dot(icb[r19.y+0].yx, r22.xz);
                      r20.xy = r21.xy * r15.zz + r28.xy;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r11.w).x;
                      r19.x = r20.x * 0.125 + r19.x;
                      r19.y = (int)r19.y + 1;
                    }
                  } else {
                    r28.z = (uint)r13.w;
                    r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r11.w).x;
                  }
                  r11.w = r19.x * r19.x;
                  r11.w = r11.w * r19.x;
                } else {
                  r11.w = 1;
                }
                r8.w = r11.w * r8.w;
              }
              r11.w = cmp(0 < r8.w);
              if (r11.w != 0) {
                r20.xyz = -v5.xyz * r3.www + r18.xyz;
                r11.w = dot(r20.xyz, r20.xyz);
                r11.w = rsqrt(r11.w);
                r20.xyz = r20.xyz * r11.www;
                r11.w = saturate(dot(r0.xyz, r20.xyz));
                r13.w = saturate(dot(r20.xyz, r6.xyz));
                r15.z = saturate(dot(r20.xyz, r18.xyz));
                r18.xyz = r8.www * r27.xyz;
                r8.w = r12.w + r4.z;
                r8.w = r12.w / r8.w;
                r16.xyz = r18.xyz * r8.www + r16.xyz;
                r25.xyz = r18.xyz * r12.www + r25.xyz;
                r8.w = 1 + -r15.z;
                r15.z = r8.w * r8.w;
                r15.z = r15.z * r15.z;
                r8.w = r15.z * r8.w;
                r8.w = controlVar0.w * r8.w + controlVar0.z;
                r11.w = log2(r11.w);
                r20.xy = controlVar0.xy * r11.ww;
                r20.xy = exp2(r20.xy);
                r11.w = dot(r20.xy, controlVar1.xy);
                r8.w = r8.w * r12.w;
                r12.w = 12.566371 * r13.w;
                r8.w = r8.w / r12.w;
                r8.w = r11.w * r8.w;
                r26.xyz = r18.xyz * r8.www + r26.xyz;
              }
            }
          }
          break;
          default :
          break;
        }
      }
    }
    r10.yzw = r16.xyz;
    r23.xyz = r25.xyz;
    r24.xyz = r26.xyz;
    r5.w = (int)r5.w + 32;
  }
  r0.xyz = r24.xyz + r9.yzw;
  r2.xzw = r10.yzw + r4.xyw;
  r4.xyz = r23.xyz + r4.xyw;
  r2.xzw = r2.xzw * r3.xyz;
  r1.xyz = r4.xyz * r1.xyz + -r2.xzw;
  r1.xyz = r2.yyy * r1.xyz + r2.xzw;
  r0.w = 1 + -r2.y;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.w = sqrt(r1.w);
  r1.x = r0.w * horizonControl.x + horizonControl.y;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.yzw = sunConstants.color.xyz * horizonColor.xyz;
  r0.xyz = -horizonColor.xyz * sunConstants.color.xyz + r0.xyz;
  r0.xyz = r1.xxx * r0.xyz + r1.yzw;
  r1.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.x != 0) {
    r1.x = cmp(0 < fogConstants.blendAmount);
    if (r1.x != 0) {
      r1.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.xy = fogConstants.atmospherefogdensityatcamera.xy * r1.xy;
      r1.z = cmp(0.00999999978 < abs(v5.z));
      r2.xy = fogConstants.atmospherefogheightdensityscale.xy * v5.zz;
      r2.zw = float2(-1.44269502,-1.44269502) * r2.xy;
      r2.zw = exp2(r2.zw);
      r2.zw = float2(1,1) + -r2.zw;
      r2.xy = r2.zw / r2.xy;
      r2.xy = r2.xy * r1.xy;
      r1.xy = r1.zz ? r2.xy : r1.xy;
      r1.xzw = fogConstants.atmosphereTotalDensity.xyz * r1.xxx;
      r1.xzw = exp2(r1.xzw);
      r2.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.yyy;
      r2.xyz = exp2(r2.xyz);
      r2.xyz = r2.xyz + -r1.xzw;
      r1.xyz = fogConstants.blendAmount * r2.xyz + r1.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.x = cmp(0.00999999978 < abs(v5.z));
      r2.y = fogConstants.atmospherefogheightdensityscale.x * v5.z;
      r2.z = -1.44269502 * r2.y;
      r2.z = exp2(r2.z);
      r2.z = 1 + -r2.z;
      r2.y = r2.z / r2.y;
      r2.y = r2.y * r1.w;
      r1.w = r2.x ? r2.y : r1.w;
      r2.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r1.xyz = exp2(r2.xyz);
    }
    r1.xyz = r1.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r1.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r1.xyz);
    r1.w = dot(fogConstants.wldSunFogDir.xyz, -r5.xyz);
    r2.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.y = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
    r2.y = r2.y * r2.y;
    r2.y = 12.566371 * r2.y;
    r2.x = r2.x / r2.y;
    r2.y = -fogConstants.atmospherehazebasedist + r0.w;
    r2.y = saturate(fogConstants.atmospherehazefadedist * r2.y);
    r2.x = r2.x * r2.y;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r2.xyz = fogConstants.atmosphereMieDensity.xyz * r2.xxx;
    r2.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r3.xyz = float3(1,1,1) + -r1.xyz;
    r2.xyz = r3.xyz * r2.xyz;
    r1.xyz = r0.xyz * r1.xyz + r2.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v5.z;
    r2.x = fogConstants.heightFalloff * v5.z + fogConstants.K0;
    r2.y = cmp(abs(r1.w) < 9.99999975e-05);
    r2.z = min(64, r2.x);
    r2.z = 1.44269502 * r2.z;
    r2.z = exp2(r2.z);
    r2.w = saturate(fogConstants.K0b);
    r3.x = cmp(r2.x < 0);
    r2.x = 1 + r2.x;
    r2.x = r3.x ? r2.z : r2.x;
    r2.x = -fogConstants.K0b + r2.x;
    r1.w = r2.y ? 1 : r1.w;
    r1.w = r2.x / r1.w;
    r1.w = r2.y ? r2.w : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r0.w = r1.w * r0.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r5.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r1.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r2.w * r0.w;
    r2.xyz = r2.xyz + -r0.xyz;
    r1.xyz = r0.www * r2.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r1.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = 1;
  return;
}