// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:06 2021

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
  float4 waveAmplitude : packoffset(c38);
  float4 waveSteepness : packoffset(c39);
  float4 waveFrequency : packoffset(c40);
  bool useFoam : packoffset(c41);
  bool useVertexWaves : packoffset(c41.y);
  bool scaleNormalsWithFlow : packoffset(c41.z);
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
SamplerState bilinearTile_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
Texture2DArray<uint> visibleProbes : register(t7);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
StructuredBuffer<refProbeConstants> refProbeConstants : register(t15);
StructuredBuffer<refProbeAttenuationConstants> refProbeAttenuationConstants : register(t16);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2D<float4> normalMap : register(t21);
Texture2D<float4> flowMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> noiseMap : register(t24);
Texture2D<float4> controlMap : register(t25);
Texture2D<float4> maskMap : register(t26);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float2 w2 : TEXCOORD6,
  float3 v3 : TEXCOORD1,
  float w3 : TEXCOORD9,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = normalMapScale.xy * v2.xy;
  r0.zw = gameTime.ww * noiseParams.xy;
  r0.zw = v2.xy * noiseParams.zz + r0.zw;
  r0.zw = noiseMap.Sample(noiseSampler_s, r0.zw).xy;
  r0.zw = noiseParams.ww * r0.zw;
  r0.zw = v2.xy * flowParams.xx + r0.zw;
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
    r4.zw = flowMap.Sample(flowSampler_s, v2.xy).xy;
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
    r3.x = dot(v2.xy, r5.yz);
    r3.y = dot(v2.xy, -r5.xy);
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
    r6.x = dot(v2.xy, r5.yz);
    r6.y = dot(v2.xy, -r5.xy);
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
    r4.x = dot(v2.xy, r3.yz);
    r4.y = dot(v2.xy, -r3.xy);
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
    r4.x = dot(v2.xy, r3.yz);
    r4.y = dot(v2.xy, -r3.xy);
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
  r0.yzw = v5.xyz * r0.yyy;
  r0.xyz = v4.xyz * r0.xxx + r0.yzw;
  r0.xyz = v3.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xy = controlVar1.ww * r0.xy;
  r1.zw = r0.xy * controlVar1.zz + v2.xy;
  r2.xyz = controlMap.Sample(bilinearTile_s, r1.zw).xyz;
  r3.xyz = waterColorDeep.xyz + -waterColorShallow.xyz;
  r3.xyz = r2.xxx * r3.xyz + waterColorShallow.xyz;
  r4.xyz = waterColorDeepScatter.xyz + -waterColorShallowScatter.xyz;
  r4.xyz = r2.xxx * r4.xyz + waterColorShallowScatter.xyz;
  r1.xy = r1.xy * r2.yy + w2.xy;
  r1.xyz = colorMap.Sample(colorSampler_s, r1.xy).xyz;
  r1.w = dot(v6.xyz, v6.xyz);
  r2.x = rsqrt(r1.w);
  r5.xyz = v6.xyz * r2.xxx;
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
    r2.z = w3.x + r2.z;
    r2.z = max(foamSpacing.z, r2.z);
    r2.x = max(0, r2.x);
    r2.x = log2(r2.x);
    r2.x = r2.z * r2.x;
    r2.x = exp2(r2.x);
    r4.xyz = foamColor.xyz + -r3.xyz;
    r3.xyz = r2.xxx * r4.xyz + r3.xyz;
    r4.xyz = foamColor.xyz + -r1.xyz;
    r1.xyz = r2.xxx * r4.xyz + r1.xyz;
    r2.x = 1 + -r2.x;
    r2.x = reflectionGloss * r2.x;
  } else {
    r2.x = reflectionGloss;
  }
  r2.zw = (uint2)v0.xy;
  r3.w = cmp(v0.z >= 0.984375);
  r4.x = 1.01587307 * v0.z;
  r4.y = v0.z * 64 + -63;
  r3.w = r3.w ? r4.y : r4.x;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  r4.x = dot(-v6.xyz, -v6.xyz);
  r4.x = rsqrt(r4.x);
  r4.yzw = -v6.xyz * r4.xxx;
  r6.xy = (uint2)r2.zw;
  r5.w = dot(r6.xy, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r6.x, r7.x);
  r5.w = saturate(dot(r0.xyz, r4.yzw));
  r6.y = dot(-r4.yzw, r0.xyz);
  r6.y = r6.y + r6.y;
  r8.xyz = r0.xyz * -r6.yyy + -r4.yzw;
  r6.y = 1 + -r2.x;
  r6.z = 5 * r6.y;
  r6.w = r6.y * 5 + -2.5;
  r6.w = saturate(0.400000006 * r6.w);
  r6.w = 100 * r6.w;
  r7.yz = -r6.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r7.y = exp2(r7.y);
  r7.y = r7.y * r5.w;
  r7.y = 9.1368103 * r7.y;
  r7.w = r6.z * r6.y;
  r7.z = -r7.w * 2.0159049 + r7.z;
  r7.z = exp2(r7.z);
  r5.w = r7.z * r5.w;
  r5.w = 9.70808983 * r5.w;
  r5.w = max(r7.y, r5.w);
  r5.w = max(1.26815999, r5.w);
  r7.y = numRefProbes + -numOverrideProbes;
  r3.w = 0.0078125 * r3.w;
  r3.w = min(15, r3.w);
  r3.w = (uint)r3.w;
  r9.xy = (uint2)r2.zw >> int2(6,6);
  r9.z = (uint)r3.w << 4;
  r2.z = (int)r7.y & -32;
  r2.w = (int)-r2.z + (int)r7.y;
  r3.w = numRefProbes & -32;
  r7.z = (int)-r3.w + numRefProbes;
  r10.xy = float2(0,0);
  r11.w = 0;
  r12.yz = float2(0,1);
  r13.xy = float2(0,0);
  r14.x = 1;
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xyzw = float4(0,0,0,0);
  r18.yzw = float3(0,0,0);
  r7.w = r2.z;
  while (true) {
    r9.w = cmp((uint)r7.w >= numRefProbes);
    if (r9.w != 0) break;
    r10.z = (uint)r7.w >> 5;
    r11.xyz = (int3)r9.xyz + (int3)r10.xyz;
    r9.w = visibleProbes.Load(r11.xyzw).x;
    r10.z = cmp((int)r2.z == (int)r7.w);
    bitmask.w = ((~(-1 << r2.w)) << 0) & 0xffffffff;  r10.w = (((uint)0 << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
    r9.w = r10.z ? r10.w : r9.w;
    r10.z = cmp((int)r3.w == (int)r7.w);
    if (r7.z == 0) r10.w = 0; else if (r7.z+0 < 32) {     r10.w = (uint)r9.w << (32-(r7.z + 0)); r10.w = (uint)r10.w >> (32-r7.z);    } else r10.w = (uint)r9.w >> 0;
    r9.w = r10.z ? r10.w : r9.w;
    r10.z = (int)r7.w + numLights;
    r19.xyzw = r17.xyzw;
    r20.xyz = r18.yzw;
    r10.w = r9.w;
    while (true) {
      if (r10.w == 0) break;
      r11.x = firstbitlow((uint)r10.w);
      r11.y = 1 << (int)r11.x;
      r11.z = (int)r10.w & (int)r11.y;
      if (r11.z != 0) {
        r10.w = (int)r10.w ^ (int)r11.y;
        r11.y = (int)r10.z + (int)r11.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r11.y, l(0), t11.xyzw
      r21.x = samp0[]..swiz;
      r21.y = samp0[]..swiz;
      r21.z = samp0[]..swiz;
      r21.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xy, r11.y, l(16), t11.xyxx
      r22.x = samp0[]..swiz;
      r22.y = samp0[]..swiz;
        r21.xyz = -v6.xyz + r21.xyz;
        r22.z = r21.w;
        r21.xyz = cmp(abs(r21.xyz) < r22.zxy);
        r11.y = r21.y ? r21.x : 0;
        r11.y = r21.z ? r11.y : 0;
        if (r11.y != 0) {
          r11.x = (int)r7.w + (int)r11.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r11.x, l(0), t15.wxyz
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.yz, r11.x, l(96), t15.xxyx
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r11.x, l(116), t15.zwxy
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
          r23.xyz = v6.xyz + -r21.yzw;
          r12.w = (int)r22.w & 0x0000ffff;
          if (6 == 0) r13.w = 0; else if (6+25 < 32) {           r13.w = (uint)r22.w << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);          } else r13.w = (uint)r22.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(0), t16.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(16), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(32), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(48), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(64), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(80), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
          r14.z = dot(r24.xyz, r23.xyz);
          r14.z = saturate(r14.z + r24.w);
          r14.w = dot(r25.xyz, r23.xyz);
          r14.w = saturate(r14.w + r25.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r26.xyz, r23.xyz);
          r14.w = saturate(r14.w + r26.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r27.xyz, r23.xyz);
          r14.w = saturate(r14.w + r27.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r28.xyz, r23.xyz);
          r14.w = saturate(r14.w + r28.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r29.xyz, r23.xyz);
          r14.w = saturate(r14.w + r29.w);
          r12.x = r14.z * r14.w;
          r14.z = (int)r11.y & 1;
          r14.zw = r14.zz ? r12.xy : r12.zx;
          r12.x = r11.y;
          r24.xy = r14.zw;
          r15.w = 1;
          while (true) {
            r16.w = cmp((int)r15.w >= (int)r13.w);
            if (r16.w != 0) break;
            r16.w = (int)r12.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r16.w = dot(r25.xyz, r23.xyz);
            r16.w = saturate(r16.w + r25.w);
            r16.w = r24.x * r16.w;
            r21.w = dot(r26.xyz, r23.xyz);
            r21.w = saturate(r21.w + r26.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r27.xyz, r23.xyz);
            r21.w = saturate(r21.w + r27.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r28.xyz, r23.xyz);
            r21.w = saturate(r21.w + r28.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r29.xyz, r23.xyz);
            r21.w = saturate(r21.w + r29.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r30.xyz, r23.xyz);
            r21.w = saturate(r21.w + r30.w);
            r24.x = r21.w * r16.w;
            r23.w = (uint)r12.x >> 2;
            if (1 == 0) r24.z = 0; else if (1+2 < 32) {             r24.z = (uint)r12.x << (32-(1 + 2)); r24.z = (uint)r24.z >> (32-1);            } else r24.z = (uint)r12.x >> 2;
            r24.w = (int)r23.w & 2;
            r25.x = max(r24.y, r24.x);
            r16.w = -r16.w * r21.w + 1;
            r16.w = r24.y * r16.w;
            r14.y = r24.w ? r16.w : r25.x;
            r24.xy = r24.zz ? r24.xy : r14.xy;
            r15.w = (int)r15.w + 1;
            r12.x = r23.w;
          }
          r24.y = saturate(r24.y);
          r11.y = r24.y * r11.z;
          r12.x = cmp(0 < r11.y);
          if (r12.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r11.x, l(16), t15.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r11.x, l(32), t15.yxwz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r11.x, l(48), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r11.x, l(64), t15.zwxy
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.x, l(80), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r11.x, l(132), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.x, l(148), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.x, l(164), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.x, l(180), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.x, l(196), t15.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xy, r11.x, l(212), t15.xyxx
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
            r20.z = r24.y * r11.z + r20.z;
            r11.x = r11.y * r22.z;
            r22.z = r30.z;
            r11.y = dot(r8.xyz, r22.xyz);
            r11.z = dot(r23.xyz, r22.xyz);
            r11.z = r11.z + -r30.w;
            r12.x = cmp(r11.z >= 0);
            r11.z = max(abs(r11.z), r6.w);
            r11.z = r12.x ? r11.z : -r11.z;
            r11.y = max(1.00000001e-07, -r11.y);
            r11.y = r11.z / r11.y;
            r11.y = min(131072, abs(r11.y));
            r30.z = r31.z;
            r11.z = dot(r8.xyz, r30.xyz);
            r12.x = dot(r23.xyz, r30.xyz);
            r12.x = r12.x + -r31.w;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r6.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r11.z = max(1.00000001e-07, -r11.z);
            r11.z = r12.x / r11.z;
            r11.y = min(r11.y, abs(r11.z));
            r31.z = r32.z;
            r11.z = dot(r8.xyz, r31.xyz);
            r12.x = dot(r23.xyz, r31.xyz);
            r12.x = r12.x + -r32.w;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r6.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r11.z = max(1.00000001e-07, -r11.z);
            r11.z = r12.x / r11.z;
            r11.y = min(r11.y, abs(r11.z));
            r32.z = r33.z;
            r11.z = dot(r8.xyz, r32.xyz);
            r12.x = dot(r23.xyz, r32.xyz);
            r12.x = r12.x + -r33.w;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r6.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r11.z = max(1.00000001e-07, -r11.z);
            r11.z = r12.x / r11.z;
            r11.y = min(r11.y, abs(r11.z));
            r33.z = r34.x;
            r11.z = dot(r8.xyz, r33.xyz);
            r12.x = dot(r23.xyz, r33.xyz);
            r12.x = r12.x + -r34.y;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r6.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r11.z = max(1.00000001e-07, -r11.z);
            r11.z = r12.x / r11.z;
            r11.y = min(r11.y, abs(r11.z));
            r35.zw = r34.zw;
            r11.z = dot(r8.zxy, r35.xzw);
            r12.x = dot(r23.zxy, r35.xzw);
            r12.x = r12.x + -r35.y;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r6.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r11.z = max(1.00000001e-07, -r11.z);
            r11.z = r12.x / r11.z;
            r11.y = min(r11.y, abs(r11.z));
            r22.x = r27.w;
            r22.yz = r28.zw;
            r14.yzw = r22.xyz + r23.xyz;
            r14.yzw = r8.xyz * r11.yyy + r14.yzw;
            r11.z = dot(r14.yzw, r14.yzw);
            r11.z = sqrt(r11.z);
            r11.y = r11.y / r11.z;
            r11.y = r11.y + r11.y;
            r11.y = sqrt(r11.y);
            r11.y = r6.y * 5 + r11.y;
            r11.y = -0.844799995 + r11.y;
            r21.y = r25.z;
            r21.z = r26.x;
            r30.x = dot(r14.yzw, r21.xyz);
            r22.xy = r25.xw;
            r22.z = r26.w;
            r30.y = dot(r14.yzw, r22.xyz);
            r26.x = r25.y;
            r30.z = dot(r14.yzw, r26.xyz);
            if (9 == 0) r11.z = 0; else if (9+16 < 32) {             r11.z = (uint)r22.w << (32-(9 + 16)); r11.z = (uint)r11.z >> (32-9);            } else r11.z = (uint)r22.w >> 16;
            r30.w = (uint)r11.z;
            r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r11.y).xyz;
            r25.x = dot(r23.xyz, r21.xyz);
            r25.y = dot(r23.xyz, r22.xyz);
            r25.z = dot(r23.xyz, r26.xyz);
            r23.xyz = saturate(r25.xyz * r27.xyz + float3(0.5,0.5,0.5));
            r28.z = r29.x;
            r23.xyz = r23.xyz * r28.xyz + r29.yzw;
            r30.x = dot(r0.xyz, r21.xyz);
            r30.y = dot(r0.xyz, r22.xyz);
            r30.z = dot(r0.xyz, r26.xyz);
            r21.xyz = cmp(float3(0,0,0) < r30.xyz);
            r13.z = r21.x ? 0 : 0.5;
            r22.xyz = r23.xyz + r13.xyz;
            r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
            r24.xzw = r30.xyz * r30.xyz;
            r24.xzw = r24.xzw * r11.xxx;
            r15.z = r21.y ? 0 : 0.5;
            r21.xyw = r23.xyz + r15.xyz;
            r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
            r21.xyw = r21.xyw * r24.zzz;
            r21.xyw = r22.xyz * r24.xxx + r21.xyw;
            r16.z = r21.z ? 0 : 0.5;
            r22.xyz = r23.xyz + r16.xyz;
            r22.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
            r21.xyz = r22.xyz * r24.www + r21.xyw;
            r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
            r23.xyz = r22.xyz * r21.xyz;
            r11.y = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r19.xyz = r21.xyz * r22.xyz + r19.xyz;
            r11.z = r11.y * r5.w;
            r14.yzw = r14.yzw * r11.xxx;
            r11.x = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r11.x = r5.w * r11.y + r11.x;
            r11.x = r11.z / r11.x;
            r21.x = r19.w;
            r21.yz = r20.xy;
            r20.xyw = r14.zwy * r11.xxx + r21.yzx;
            r19.w = r20.w;
          }
        }
      }
    }
    r17.xyzw = r19.xyzw;
    r18.yzw = r20.xyz;
    r7.w = (int)r7.w + 32;
  }
  r3.w = cmp(r18.w < 1);
  if (r3.w != 0) {
    r10.xy = float2(0,0);
    r11.w = 0;
    r12.yz = float2(0,1);
    r13.xy = float2(0,0);
    r14.x = 1;
    r15.xy = float2(0,0);
    r16.xy = float2(0,0);
    r19.x = r17.w;
    r19.yzw = r18.yzw;
    r20.xyz = r17.xyz;
    r3.w = r18.w;
    r7.z = 0;
    while (true) {
      r7.w = cmp((uint)r7.z >= (uint)r7.y);
      if (r7.w != 0) break;
      r10.z = (uint)r7.z >> 5;
      r11.xyz = (int3)r9.xyz + (int3)r10.xyz;
      r7.w = visibleProbes.Load(r11.xyzw).x;
      r9.w = cmp((int)r2.z == (int)r7.z);
      if (r2.w == 0) r10.z = 0; else if (r2.w+0 < 32) {       r10.z = (uint)r7.w << (32-(r2.w + 0)); r10.z = (uint)r10.z >> (32-r2.w);      } else r10.z = (uint)r7.w >> 0;
      r7.w = r9.w ? r10.z : r7.w;
      r9.w = (int)r7.z + numLights;
      r21.xyzw = r19.xyzw;
      r11.xyz = r20.xyz;
      r10.z = r3.w;
      r10.w = r7.w;
      while (true) {
        if (r10.w == 0) break;
        r12.w = firstbitlow((uint)r10.w);
        r13.w = 1 << (int)r12.w;
        r14.z = (int)r10.w & (int)r13.w;
        if (r14.z != 0) {
          r10.w = (int)r10.w ^ (int)r13.w;
          r13.w = (int)r9.w + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r13.w, l(0), t11.xyzw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r13.w, l(16), t11.xyxx
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
          r22.xyz = -v6.xyz + r22.xyz;
          r23.z = r22.w;
          r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
          r13.w = r22.y ? r22.x : 0;
          r13.w = r22.z ? r13.w : 0;
          if (r13.w != 0) {
            r12.w = (int)r7.z + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r12.w, l(0), t15.wxyz
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r12.w, l(96), t15.xxxy
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r12.w, l(116), t15.zwxy
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
            r24.xyz = v6.xyz + -r22.yzw;
            r13.w = (int)r23.w & 0x0000ffff;
            if (6 == 0) r15.w = 0; else if (6+25 < 32) {             r15.w = (uint)r23.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);            } else r15.w = (uint)r23.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r16.w = dot(r25.xyz, r24.xyz);
            r16.w = saturate(r16.w + r25.w);
            r20.w = dot(r26.xyz, r24.xyz);
            r20.w = saturate(r20.w + r26.w);
            r16.w = r20.w * r16.w;
            r20.w = dot(r27.xyz, r24.xyz);
            r20.w = saturate(r20.w + r27.w);
            r16.w = r20.w * r16.w;
            r20.w = dot(r28.xyz, r24.xyz);
            r20.w = saturate(r20.w + r28.w);
            r16.w = r20.w * r16.w;
            r20.w = dot(r29.xyz, r24.xyz);
            r20.w = saturate(r20.w + r29.w);
            r16.w = r20.w * r16.w;
            r20.w = dot(r30.xyz, r24.xyz);
            r20.w = saturate(r20.w + r30.w);
            r12.x = r20.w * r16.w;
            r16.w = (int)r14.z & 1;
            r25.xy = r16.ww ? r12.xy : r12.zx;
            r12.x = r14.z;
            r26.xy = r25.xy;
            r16.w = 1;
            while (true) {
              r20.w = cmp((int)r16.w >= (int)r15.w);
              if (r20.w != 0) break;
              r20.w = (int)r13.w + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r20.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r20.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r20.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r20.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r20.w = dot(r27.xyz, r24.xyz);
              r20.w = saturate(r20.w + r27.w);
              r20.w = r26.x * r20.w;
              r22.w = dot(r28.xyz, r24.xyz);
              r22.w = saturate(r22.w + r28.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r29.xyz, r24.xyz);
              r22.w = saturate(r22.w + r29.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r30.xyz, r24.xyz);
              r22.w = saturate(r22.w + r30.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r31.xyz, r24.xyz);
              r22.w = saturate(r22.w + r31.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r32.xyz, r24.xyz);
              r22.w = saturate(r22.w + r32.w);
              r26.x = r22.w * r20.w;
              r24.w = (uint)r12.x >> 2;
              if (1 == 0) r25.z = 0; else if (1+2 < 32) {               r25.z = (uint)r12.x << (32-(1 + 2)); r25.z = (uint)r25.z >> (32-1);              } else r25.z = (uint)r12.x >> 2;
              r25.w = (int)r24.w & 2;
              r26.z = max(r26.y, r26.x);
              r20.w = -r20.w * r22.w + 1;
              r20.w = r26.y * r20.w;
              r14.y = r25.w ? r20.w : r26.z;
              r26.xy = r25.zz ? r26.xy : r14.xy;
              r16.w = (int)r16.w + 1;
              r12.x = r24.w;
            }
            r12.x = saturate(r26.y + -r10.z);
            r13.w = r12.x * r14.w;
            r14.y = cmp(0 < r13.w);
            if (r14.y != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(16), t15.xyzw
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(32), t15.yxwz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(48), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(64), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(80), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(132), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(148), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(164), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(180), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(196), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r12.w, l(212), t15.xyxx
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
              r21.w = r12.x * r14.w + r21.w;
              r12.x = r13.w * r23.z;
              r23.z = r31.z;
              r12.w = dot(r8.xyz, r23.xyz);
              r13.w = dot(r24.xyz, r23.xyz);
              r13.w = r13.w + -r31.w;
              r14.y = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r6.w);
              r13.w = r14.y ? r13.w : -r13.w;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r13.w / r12.w;
              r12.w = min(131072, abs(r12.w));
              r31.z = r32.z;
              r13.w = dot(r8.xyz, r31.xyz);
              r14.y = dot(r24.xyz, r31.xyz);
              r14.y = r14.y + -r32.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r6.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r32.z = r33.z;
              r13.w = dot(r8.xyz, r32.xyz);
              r14.y = dot(r24.xyz, r32.xyz);
              r14.y = r14.y + -r33.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r6.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r33.z = r34.z;
              r13.w = dot(r8.xyz, r33.xyz);
              r14.y = dot(r24.xyz, r33.xyz);
              r14.y = r14.y + -r34.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r6.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r34.z = r35.x;
              r13.w = dot(r8.xyz, r34.xyz);
              r14.y = dot(r24.xyz, r34.xyz);
              r14.y = r14.y + -r35.y;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r6.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r36.zw = r35.zw;
              r13.w = dot(r8.zxy, r36.xzw);
              r14.y = dot(r24.zxy, r36.xzw);
              r14.y = r14.y + -r36.y;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r6.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r23.x = r28.w;
              r23.yz = r29.zw;
              r14.yzw = r23.xyz + r24.xyz;
              r14.yzw = r8.xyz * r12.www + r14.yzw;
              r13.w = dot(r14.yzw, r14.yzw);
              r13.w = sqrt(r13.w);
              r12.w = r12.w / r13.w;
              r12.w = r12.w + r12.w;
              r12.w = sqrt(r12.w);
              r12.w = r6.y * 5 + r12.w;
              r12.w = -0.844799995 + r12.w;
              r22.y = r25.z;
              r22.z = r27.x;
              r31.x = dot(r14.yzw, r22.xyz);
              r23.xy = r25.xw;
              r23.z = r27.w;
              r31.y = dot(r14.yzw, r23.xyz);
              r27.x = r25.y;
              r31.z = dot(r14.yzw, r27.xyz);
              if (9 == 0) r13.w = 0; else if (9+16 < 32) {               r13.w = (uint)r23.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);              } else r13.w = (uint)r23.w >> 16;
              r31.w = (uint)r13.w;
              r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r12.w).xyz;
              r25.x = dot(r24.xyz, r22.xyz);
              r25.y = dot(r24.xyz, r23.xyz);
              r25.z = dot(r24.xyz, r27.xyz);
              r24.xyz = saturate(r25.xyz * r28.xyz + float3(0.5,0.5,0.5));
              r29.z = r30.x;
              r24.xyz = r24.xyz * r29.xyz + r30.yzw;
              r31.x = dot(r0.xyz, r22.xyz);
              r31.y = dot(r0.xyz, r23.xyz);
              r31.z = dot(r0.xyz, r27.xyz);
              r22.xyz = cmp(float3(0,0,0) < r31.xyz);
              r13.z = r22.x ? 0 : 0.5;
              r23.xyz = r24.xyz + r13.xyz;
              r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r25.xyz = r31.xyz * r31.xyz;
              r25.xyz = r25.xyz * r12.xxx;
              r15.z = r22.y ? 0 : 0.5;
              r22.xyw = r24.xyz + r15.xyz;
              r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
              r22.xyw = r22.xyw * r25.yyy;
              r22.xyw = r23.xyz * r25.xxx + r22.xyw;
              r16.z = r22.z ? 0 : 0.5;
              r23.xyz = r24.xyz + r16.xyz;
              r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r22.xyz = r23.xyz * r25.zzz + r22.xyw;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
              r24.xyz = r23.xyz * r22.xyz;
              r12.w = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r11.xyz = r22.xyz * r23.xyz + r11.xyz;
              r13.z = r12.w * r5.w;
              r14.yzw = r14.yzw * r12.xxx;
              r12.x = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r12.x = r5.w * r12.w + r12.x;
              r12.x = r13.z / r12.x;
              r21.xyz = r14.yzw * r12.xxx + r21.xyz;
            }
          }
        }
      }
      r19.xyzw = r21.xyzw;
      r20.xyz = r11.xyz;
      r7.z = (int)r7.z + 32;
    }
    r18.xyzw = r19.zxyw;
    r17.xyz = r20.xyz;
    r18.xyzw = r18.yzxw;
  } else {
    r18.x = r17.w;
  }
  r2.z = max(1, r18.w);
  r2.z = rcp(r2.z);
  r18.w = saturate(r18.w);
  r7.yzw = r17.xyz * r2.zzz;
  r9.xyz = r18.xyz * r2.zzz;
  r2.w = cmp(r18.w < 0.99000001);
  if (r2.w != 0) {
    r2.w = 1 + -r18.w;
    r3.w = sunConstants.globalProbeExposure * r2.w;
    r10.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
    r11.x = globalProbeConstants.data[0].w * r10.x;
    r11.yz = globalProbeConstants.data[1].xy * r10.yz;
    r10.xyz = saturate(float3(0.5,0.5,0.5) + r11.xyz);
    r11.xy = globalProbeConstants.data[1].zw * r10.xy;
    r11.z = globalProbeConstants.data[2].x * r10.z;
    r10.xyz = globalProbeConstants.data[2].yzw + r11.xyz;
    r11.xyz = cmp(float3(0,0,0) < r0.xyz);
    r11.xyz = r11.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r11.w = 0;
    r12.xyz = r11.wwx + r10.xyz;
    r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r13.xyz = r0.xyz * r0.xyz;
    r13.xyz = r13.xyz * r3.www;
    r14.xyz = r11.wwy + r10.xyz;
    r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r13.yyy;
    r12.xyz = r12.xyz * r13.xxx + r14.xyz;
    r10.xyz = r11.wwz + r10.xyz;
    r10.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
    r10.xyz = r10.xyz * r13.zzz + r12.xyz;
    r0.w = 0;
    r11.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r0.xyzw, 6).xyz;
    r10.xyz = r11.xyz * r10.xyz;
    r0.w = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r7.yzw = r17.xyz * r2.zzz + r10.xyz;
    r8.w = 0;
    r6.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r8.xyzw, r6.z).xyz;
    r2.z = sunConstants.globalProbeExposure * r2.w + -r0.w;
    r0.w = r2.x * r2.z + r0.w;
    r9.xyz = r6.yzw * r0.www + r9.xyz;
  }
  r2.xzw = probeReflectionLevel * r9.xyz;
  r0.w = dot(r0.xyz, sunConstants.wldDir.xyz);
  r3.w = saturate(r0.w);
  r5.w = cmp(0 >= r3.w);
  if (r5.w != 0) {
    r6.y = 0;
  }
  if (r5.w == 0) {
    r8.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r8.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r8.xyz;
    r8.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r8.xyz;
    r8.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r8.xyz;
    r5.w = -sunConstants.splitDepthOffset + r8.z;
    r5.w = -r5.w * 6.10351563e-05 + 1;
    r6.z = saturate(r5.w);
    r6.z = cmp(r5.w == r6.z);
    if (r6.z != 0) {
      r6.zw = float2(0,0);
      while (true) {
        r8.w = cmp(r6.z >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r6.z;
        r9.xy = -sunConstants.splitPinTransform[r8.w].xy + r8.xy;
        r9.x = max(abs(r9.x), abs(r9.y));
        r6.w = sunConstants.splitPinTransform[r8.w].z * r9.x;
        r8.w = cmp(r6.w < 1);
        if (r8.w != 0) {
          break;
        }
        r6.z = 1 + r6.z;
        r6.w = 0;
      }
    } else {
      r6.zw = float2(3,0);
    }
    r8.w = cmp(r6.z >= 3);
    if (r8.w != 0) {
      r9.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r10.xz = rcp(r9.xx);
      r10.y = -r10.z;
      r9.xyz = r8.xyx * r10.xyz + r9.yzy;
      r10.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r9.xyz = max(float3(0,0,0), r9.xyz);
      r9.xyz = min(r9.xyz, r10.xyz);
      r10.xy = sunConstants.sstLightingConstants.coordScale * r9.zy;
      r10.xy = floor(r10.xy);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r10.y;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r10.x;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.x, r9.w, l(0), t23.xxxx
    r10.x = samp0[]..swiz;
      r10.y = (int)r10.x & 0x40000000;
      r10.z = (uint)r10.x << 2;
      if (r10.y == 0) {
        r10.y = (int)r10.x & 0x01ffffff;
        r11.x = (int)r9.w + (int)r10.y;
        r9.w = (uint)r10.x >> 25;
        r9.w = (uint)r9.w;
        r9.xyz = r9.xyz * r9.www;
        r9.xyz = frac(r9.xyz);
        r9.xyz = float3(128,128,128) * r9.xyz;
        r9.xyz = (uint3)r9.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.x, l(0), t23.xxxx
      r11.z = samp0[]..swiz;
        r10.xy = (uint2)r9.zy >> int2(6,6);
        r9.w = (int)r11.z & 0xc0000000;
        r10.w = (int)r11.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.y = r10.y ? r11.z : r10.w;
        r10.w = (uint)r10.y >> 13;
        r10.x = r10.x ? r10.w : r10.y;
        r10.x = (int)r10.x & 8191;
        r12.x = (int)r10.x + (int)r11.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
      r12.z = samp0[]..swiz;
        r11.y = 0;
        r12.y = 1;
        r10.xyw = r9.www ? r11.xyz : r12.xyz;
        r12.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.xy = (uint2)r9.zy >> (uint2)r12.yy;
        r13.xy = (int2)r13.xy & int2(1,1);
        r11.w = (int)r10.w & 0xc0000000;
        r12.y = (int)r10.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.y, r12.y, l(0), t23.xxxx
      r12.y = samp0[]..swiz;
        r12.y = r13.y ? r10.w : r12.y;
        r13.y = (uint)r12.y >> 13;
        r12.y = r13.x ? r13.y : r12.y;
        r12.y = (int)r12.y & 8191;
        r12.x = (int)r10.x + (int)r12.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.x, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r10.xyw = r11.www ? r10.xyw : r12.xzw;
        r10.xyw = r9.www ? r11.xyz : r10.xyw;
        r9.w = (int)r10.w & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r10.y + 6;
          r11.xy = (uint2)r9.zy >> (uint2)r9.ww;
          r9.w = (int)r10.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.y = (((uint)r11.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.x = (((uint)r11.x << 0) & bitmask.x) | ((uint)r11.y & ~bitmask.x);
          r11.x = (int)r11.x * 10;
          r9.w = (uint)r9.w >> (uint)r11.x;
          r9.w = (int)r9.w & 1023;
          r11.x = (int)r9.w + (int)r10.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.x, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          r11.yz = (int2)r10.yy + int2(1,2);
          r9.w = (int)-r11.y + 6;
          r12.xy = (uint2)r9.zy >> (uint2)r9.ww;
          r9.w = (int)r11.w & 0xc0000000;
          r10.y = (int)r11.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.y = (((uint)r12.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.x = (((uint)r12.x << 0) & bitmask.x) | ((uint)r12.y & ~bitmask.x);
          r12.x = (int)r12.x * 10;
          r10.y = (uint)r10.y >> (uint)r12.x;
          r10.y = (int)r10.y & 1023;
          r12.x = (int)r10.y + (int)r11.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          r12.y = r11.z;
          r12.xyz = r9.www ? r11.xyw : r12.xyz;
          r10.y = (int)-r12.y + 6;
          r11.yz = (uint2)r9.zy >> (uint2)r10.yy;
          r10.y = (int)r12.z & 0xc0000000;
          r12.y = (int)r12.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.z = (((uint)r11.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.y = (((uint)r11.y << 0) & bitmask.y) | ((uint)r11.z & ~bitmask.y);
          r11.y = (int)r11.y * 10;
          r11.y = (uint)r12.y >> (uint)r11.y;
          r11.y = (int)r11.y & 1023;
          r13.x = (int)r11.y + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.x, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r11.yz = r10.yy ? r12.xz : r13.xy;
          r10.xw = r9.ww ? r11.xw : r11.yz;
        }
        r9.w = (int)r10.w & 0xc0000000;
        if (r9.w == 0) {
          if (14 == 0) r10.y = 0; else if (14+15 < 32) {           r10.y = (uint)r10.w << (32-(14 + 15)); r10.y = (uint)r10.y >> (32-14);          } else r10.y = (uint)r10.w >> 15;
          r10.y = (uint)r10.y;
          r10.y = sunConstants.sstLightingConstants.constants.spanInInches * r10.y;
          r10.y = 6.10388815e-05 * r10.y;
          r11.xy = (int2)r10.ww & int2(32767,536870912);
          r11.x = (uint)r11.x;
          r11.x = sunConstants.sstLightingConstants.constants.spanInInches * r11.x;
          r11.x = 3.05185094e-05 * r11.x;
          r11.z = (int)r9.y & 3;
          r11.z = (int)r10.x + (int)r11.z;
          r11.z = (int)r11.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.z, l(0), t23.xxxx
        r11.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r12.x = (((uint)r9.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r12.y = (((uint)r9.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r12.z = (((uint)r9.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r9.x = (uint)r11.z >> (uint)r12.x;
          r9.x = (int)r9.x & 255;
          r9.x = (uint)r9.x;
          r9.x = r9.x * r11.x;
          r9.x = r9.x * 0.00392156886 + r10.y;
          r9.y = (int)r12.y + 1;
          if (1 == 0) r9.z = 0; else if (1+1 < 32) {           r9.z = (uint)r9.z << (32-(1 + 1)); r9.z = (uint)r9.z >> (32-1);          } else r9.z = (uint)r9.z >> 1;
          r9.y = (int)r9.z + (int)r9.y;
          r9.y = (int)r9.y + (int)r10.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.y, r9.y, l(0), t23.xxxx
        r9.y = samp0[]..swiz;
          r9.y = (uint)r9.y >> (uint)r12.z;
          r9.y = (int)r9.y & 0x0000ffff;
          r9.y = (uint)r9.y;
          r9.y = r9.y * r11.x;
          r9.y = r9.y * 1.52590219e-05 + r10.y;
          r10.z = r11.y ? r9.x : r9.y;
        } else {
          r9.x = (int)r10.w & 0x80000000;
          r9.y = (int)r10.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.y, r9.y, l(0), t23.xxxx
        r9.y = samp0[]..swiz;
          r9.x = r9.x ? r9.y : 0;
          r9.y = (uint)r10.w << 2;
          r9.z = (uint)r9.x >> 16;
          r9.x = (int)r9.x & 0x0000ffff;
          r9.xz = f16tof32(r9.xz);
          r9.y = r8.x * r9.z + r9.y;
          r9.x = r8.y * r9.x + r9.y;
          r10.z = r9.w ? r9.x : r10.z;
        }
      }
      r8.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r8.z;
      r8.z = cmp(r10.z < r8.z);
      r6.y = r8.z ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.z = (uint)r6.z;
        r9.xy = -sunConstants.splitPinTransform[r8.z].xy + r8.xy;
        r8.zw = sunConstants.splitPinTransform[r8.z].zz * r9.xy;
        r9.xy = r8.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.z = (int16)sunConstants.splitArrayOffset;
        r9.z = r8.z + r6.z;
        r8.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r9.xyz, r5.w).x;
        r8.w = gTransShadowmapArray.SampleLevel(samp0_s, r9.xyz, 0).x;
        r8.z = r8.z + r8.w;
        r8.z = saturate(-1 + r8.z);
        r8.w = r8.z * r8.z;
        r6.y = r8.w * r8.z;
      }
      if (enableDitheredShadow != 0) {
        r9.x = -r6.x;
        r8.z = (uint)r6.z;
        r6.z = 1 + r6.z;
        r6.z = min(2, r6.z);
        r6.w = 1 + -r6.w;
        r6.w = 28 * r6.w;
        r6.zw = (uint2)r6.zw;
        r10.xy = -sunConstants.splitPinTransform[r8.z].xy + r8.xy;
        r10.xy = sunConstants.splitPinTransform[r8.z].zz * r10.xy;
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.xy = -sunConstants.splitPinTransform[r6.z].xy + r8.xy;
        r8.xy = sunConstants.splitPinTransform[r6.z].zz * r8.xy;
        r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.y = r7.x;
        r9.z = r6.x;
        r8.w = 0;
        r9.w = 0;
        while (true) {
          r10.z = cmp((uint)r9.w >= 8);
          if (r10.z != 0) break;
          r10.z = cmp((uint)r6.w < (uint)r9.w);
          r11.xy = r10.zz ? r8.xy : r10.xy;
          r10.w = r10.z ? sunConstants.splitPinTransform[r6.z].w : sunConstants.splitPinTransform[r8.z].w;
          r10.z = r10.z ? r6.z : r8.z;
          r12.x = dot(icb[r9.w+0].yx, r9.xy);
          r12.y = dot(icb[r9.w+0].yx, r9.yz);
          r11.xy = r12.xy * r10.ww + r11.xy;
          r10.z = (int)r10.z + (int16)sunConstants.splitArrayOffset;
          r11.z = (uint)r10.z;
          r10.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r5.w).x;
          r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r11.xyz, 0).x;
          r10.z = r10.z + r10.w;
          r10.z = saturate(-1 + r10.z);
          r8.w = r10.z * 0.125 + r8.w;
          r9.w = (int)r9.w + 1;
        }
        r5.w = r8.w * r8.w;
        r6.y = r5.w * r8.w;
      }
    }
  }
  r5.w = viewmodelSunShadowRaw & 0x0000ffff;
  if (r5.w != 0) {
    r5.w = (int)r5.w + numLights;
    r5.w = (int)r5.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.z, r5.w, l(52), t12.xxxx
  r6.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.xyzw, r5.w, l(68), t12.xyzw
  r8.x = samp0[]..swiz;
  r8.y = samp0[]..swiz;
  r8.z = samp0[]..swiz;
  r8.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.xyzw, r5.w, l(84), t12.xyzw
  r9.x = samp0[]..swiz;
  r9.y = samp0[]..swiz;
  r9.z = samp0[]..swiz;
  r9.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r5.w, l(132), t12.xyzw
  r10.x = samp0[]..swiz;
  r10.y = samp0[]..swiz;
  r10.z = samp0[]..swiz;
  r10.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r5.w, l(148), t12.xyzw
  r11.x = samp0[]..swiz;
  r11.y = samp0[]..swiz;
  r11.z = samp0[]..swiz;
  r11.w = samp0[]..swiz;
    r0.w = abs(r0.w) * -0.200000003 + 0.400000006;
    r12.xyz = r0.xyz * r0.www + v6.xyz;
    r12.w = 1;
    r8.x = dot(r8.xyzw, r12.xyzw);
    r8.y = dot(r9.xyzw, r12.xyzw);
    r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.xy = r8.xy + r11.zw;
    r8.xy = r8.xy * r11.xy;
    r8.zw = r6.zz / r10.xz;
    r9.xy = float2(1,1) + -r8.zw;
    r9.xy = cmp(r8.xy >= r9.xy);
    r8.zw = cmp(r8.zw >= r8.xy);
    r8.zw = (int2)r8.zw | (int2)r9.xy;
    r0.w = (int)r8.w | (int)r8.z;
    if (r0.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r0.w, r5.w, l(28), t12.xxxx
    r0.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.xyzw, r5.w, l(100), t12.xyzw
    r9.x = samp0[]..swiz;
    r9.y = samp0[]..swiz;
    r9.z = samp0[]..swiz;
    r9.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.zw, r5.w, l(164), t12.xxxy
    r8.z = samp0[]..swiz;
    r8.w = samp0[]..swiz;
      r5.w = dot(r9.xyzw, r12.xyzw);
      r8.xy = saturate(r8.xy);
      r9.xy = r8.xy * r10.xz + r10.yw;
      r5.w = r5.w + r8.z;
      r5.w = r5.w / r8.w;
      r5.w = max(6.10351563e-05, r5.w);
      r0.w = (int)r0.w & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r8.x = -r6.x;
        r10.z = (uint)r0.w;
        r8.y = r7.x;
        r8.z = r6.x;
        r6.xw = float2(0,0);
        while (true) {
          r7.x = cmp((int)r6.w >= 8);
          if (r7.x != 0) break;
          r11.x = dot(icb[r6.w+0].yx, r8.xy);
          r11.y = dot(icb[r6.w+0].yx, r8.yz);
          r10.xy = r11.xy * r6.zz + r9.xy;
          r7.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r10.xyz, r5.w).x;
          r6.x = r7.x * 0.125 + r6.x;
          r6.w = (int)r6.w + 1;
        }
      } else {
        r9.z = (uint)r0.w;
        r6.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r9.xyz, r5.w).x;
      }
      r0.w = r6.x * r6.x;
      r0.w = r0.w * r6.x;
    } else {
      r0.w = 1;
    }
    r6.y = r6.y * r0.w;
  }
  r6.xyz = sunConstants.color.xyz * r6.yyy;
  r8.xyz = -v6.xyz * r4.xxx + sunConstants.wldDir.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = rsqrt(r0.w);
  r8.xyz = r8.xyz * r0.www;
  r0.x = saturate(dot(r0.xyz, r8.xyz));
  r0.y = saturate(dot(r8.xyz, sunConstants.wldDir.xyz));
  r0.z = saturate(dot(r8.xyz, r4.yzw));
  r0.y = 1 + -r0.y;
  r0.w = r0.y * r0.y;
  r0.w = r0.w * r0.w;
  r0.y = r0.y * r0.w;
  r0.y = controlVar0.w * r0.y + controlVar0.z;
  r0.x = log2(r0.x);
  r0.xw = controlVar0.xy * r0.xx;
  r0.xw = exp2(r0.xw);
  r0.x = dot(r0.xw, controlVar1.xy);
  r0.y = r0.y * r3.w;
  r0.z = 12.566371 * r0.z;
  r0.y = r0.y / r0.z;
  r0.x = r0.x * r0.y;
  r0.y = r3.w + r3.w;
  r0.y = r3.w / r0.y;
  r0.xzw = r6.xyz * r0.xxx + r2.xzw;
  r2.xzw = r6.xyz * r0.yyy + r7.yzw;
  r4.xyz = r6.xyz * r3.www + r7.yzw;
  r2.xzw = r2.xzw * r3.xyz;
  r1.xyz = r4.xyz * r1.xyz + -r2.xzw;
  r1.xyz = r2.yyy * r1.xyz + r2.xzw;
  r0.y = 1 + -r2.y;
  r0.xyz = r0.xzw * r0.yyy + r1.xyz;
  r0.w = dot(v6.xy, v6.xy);
  r0.w = sqrt(r0.w);
  r0.w = r0.w * horizonControl.x + horizonControl.y;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r1.xyz = sunConstants.color.xyz * horizonColor.xyz;
  r0.xyz = -horizonColor.xyz * sunConstants.color.xyz + r0.xyz;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = sqrt(r1.w);
    r1.x = cmp(0 < fogConstants.blendAmount);
    if (r1.x != 0) {
      r1.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.xy = fogConstants.atmospherefogdensityatcamera.xy * r1.xy;
      r1.z = cmp(0.00999999978 < abs(v6.z));
      r2.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r2.zw = float2(-1.44269502,-1.44269502) * r2.xy;
      r2.zw = exp2(r2.zw);
      r2.zw = float2(1,1) + -r2.zw;
      r2.xy = r2.zw / r2.xy;
      r2.xy = r2.xy * r1.xy;
      r1.xy = r1.zz ? r2.xy : r1.xy;
      r2.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.xxx;
      r2.xyz = exp2(r2.xyz);
      r1.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.yyy;
      r1.xyz = exp2(r1.xyz);
      r1.xyz = r1.xyz + -r2.xyz;
      r1.xyz = fogConstants.blendAmount * r1.xyz + r2.xyz;
    } else {
      r2.x = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.x = fogConstants.atmospherefogdensityatcamera.x * r2.x;
      r2.y = cmp(0.00999999978 < abs(v6.z));
      r2.z = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r2.w = -1.44269502 * r2.z;
      r2.w = exp2(r2.w);
      r2.w = 1 + -r2.w;
      r2.z = r2.w / r2.z;
      r2.z = r2.x * r2.z;
      r2.x = r2.y ? r2.z : r2.x;
      r2.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r1.xyz = exp2(r2.xyz);
    }
    r1.xyz = r1.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r1.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r1.xyz);
    r2.x = dot(fogConstants.wldSunFogDir.xyz, -r5.xyz);
    r2.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.z = fogConstants.atmosphereMieSchlickK * -r2.x + 1;
    r2.z = r2.z * r2.z;
    r2.z = 12.566371 * r2.z;
    r2.y = r2.y / r2.z;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.y * r0.w;
    r2.x = saturate(r2.x);
    r2.x = r2.x * r2.x + 1;
    r2.x = r2.x * 0.0596831031 + -1;
    r2.x = fogConstants.atmospheresunstrength * r2.x + 1;
    r2.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r2.xyz = r2.xxx * fogConstants.atmosphereRayleighDensity.xyz + r2.yzw;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r3.xyz = float3(1,1,1) + -r1.xyz;
    r2.xyz = r3.xyz * r2.xyz;
    r1.xyz = r0.xyz * r1.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v6.z;
    r2.x = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r2.y = cmp(abs(r0.w) < 9.99999975e-05);
    r2.z = min(64, r2.x);
    r2.z = 1.44269502 * r2.z;
    r2.z = exp2(r2.z);
    r2.w = saturate(fogConstants.K0b);
    r3.x = cmp(r2.x < 0);
    r2.x = 1 + r2.x;
    r2.x = r3.x ? r2.z : r2.x;
    r2.x = -fogConstants.K0b + r2.x;
    r0.w = r2.y ? 1 : r0.w;
    r0.w = r2.x / r0.w;
    r0.w = r2.y ? r2.w : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = sqrt(r1.w);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
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