// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:52 2021

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
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float rowCount : packoffset(c12.z);
  float columnCount : packoffset(c12.w);
  float imageTime : packoffset(c13);
  float2 rotateUVs : packoffset(c13.y);
  float2 scrollUVs : packoffset(c14);
  float2 scaleUVs : packoffset(c14.z);
  float2 offsetUVs : packoffset(c15);
  float2 zoomUVs : packoffset(c15.z);
  float zoomRate : packoffset(c16);
  float layerDepth : packoffset(c16.y);
  bool clampU : packoffset(c16.z);
  bool clampV : packoffset(c16.w);
  float2 flickerSeed : packoffset(c17);
  float flickerSpeed : packoffset(c17.z);
  float2 flickerRange : packoffset(c18);
  float flickerPower : packoffset(c18.z);
  bool useAsCamo : packoffset(c18.w);
  float3 emissiveTint1 : packoffset(c19);
  float hdrScale : packoffset(c19.w);
  float uvMotionToggle1 : packoffset(c20);
  bool relativeHDR : packoffset(c20.y);
  float3 emissiveTint2 : packoffset(c21);
  float rowCount2 : packoffset(c21.w);
  float columnCount2 : packoffset(c22);
  float imageTime2 : packoffset(c22.y);
  float2 rotateUVs2 : packoffset(c22.z);
  float2 scrollUVs2 : packoffset(c23);
  float2 scaleUVs2 : packoffset(c23.z);
  float2 offsetUVs2 : packoffset(c24);
  float2 zoomUVs2 : packoffset(c24.z);
  float zoomRate2 : packoffset(c25);
  float layer2Depth : packoffset(c25.y);
  float uvMotionToggle2 : packoffset(c25.z);
  bool clampU2 : packoffset(c25.w);
  bool clampV2 : packoffset(c26);
  float2 flickerSeed2 : packoffset(c26.y);
  float flickerSpeed2 : packoffset(c26.w);
  float2 flickerRange2 : packoffset(c27);
  float flickerPower2 : packoffset(c27.z);
  float3 emissiveTint3 : packoffset(c28);
  float rowCount3 : packoffset(c28.w);
  float columnCount3 : packoffset(c29);
  float imageTime3 : packoffset(c29.y);
  float2 rotateUVs3 : packoffset(c29.z);
  float2 scrollUVs3 : packoffset(c30);
  float2 scaleUVs3 : packoffset(c30.z);
  float2 offsetUVs3 : packoffset(c31);
  float2 zoomUVs3 : packoffset(c31.z);
  float zoomRate3 : packoffset(c32);
  float layer3Depth : packoffset(c32.y);
  float uvMotionToggle3 : packoffset(c32.z);
  bool clampU3 : packoffset(c32.w);
  bool clampV3 : packoffset(c33);
  float2 flickerSeed3 : packoffset(c33.y);
  float flickerSpeed3 : packoffset(c33.w);
  float2 flickerRange3 : packoffset(c34);
  float flickerPower3 : packoffset(c34.z);
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
SamplerState specColorSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState normalSampler_s : register(s5);
SamplerState aoSampler_s : register(s6);
SamplerState lookupSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
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
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> specColorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> flickerLookupMap : register(t29);
Texture2D<float4> camoMaskMap : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
Texture2D<float4> emissiveMap1 : register(t37);
Texture2D<float4> emissiveMap2 : register(t38);
Texture2DArray<float4> materialTexBC7 : register(t42);
Texture2DArray<float4> materialTexBC3 : register(t43);
Texture2DArray<float4> materialTexBC7linear : register(t44);
Texture2DArray<float4> materialTexMask : register(t45);
Texture2D<float4> emissiveMap3 : register(t46);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation float3 v2 : UVOFFSETS0,
  nointerpolation uint w2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  uint v7 : SV_IsFrontFace0,
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
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t36, 128
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46;
  uint4 bitmask, uiDest;
  float4 fDest;

  if (useAsCamo != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.w, l(4), t4.xxxx
  r0.x = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(208), t0.xxyz
  r0.y = samp0[]..swiz;
  r0.z = samp0[]..swiz;
  r0.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyz, r0.x, l(224), t0.xyzx
  r1.x = samp0[]..swiz;
  r1.y = samp0[]..swiz;
  r1.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyz, r0.x, l(240), t0.xyzx
  r2.x = samp0[]..swiz;
  r2.y = samp0[]..swiz;
  r2.z = samp0[]..swiz;
    r3.xyz = camoMaskMap.Sample(colorSampler_s, w1.xy).xyz;
    r0.x = saturate(dot(r3.xyz, r0.yzw));
    r3.xy = w1.xy;
    r3.z = 1;
    r1.x = dot(r1.xyz, r3.xyz);
    r1.y = dot(r2.xyz, r3.xyz);
    r0.yz = r1.xy;
  } else {
    r0.yz = w1.xy;
    r1.xy = w1.xy;
    r0.x = 1;
  }
  r2.xyzw = colorMap.Sample(colorSampler_s, r0.yz).xyzw;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r2.www * r3.xyz + float3(1,1,1);
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = v1.x * r2.w;
  r1.z = specColorMap.Sample(specColorSampler_s, r0.yz).x;
  r3.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r3.xyz = r1.zzz * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.z = saturate(1 + -r1.z);
  r2.xyz = r2.xyz * r1.zzz;
  r1.z = aoMap.Sample(aoSampler_s, r0.yz).x;
  r1.w = glossMap.Sample(specColorSampler_s, r0.yz).x;
  r3.w = glossRange.y + -glossRange.x;
  r1.w = r1.w * r3.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r4.xyz = normalMap.Sample(normalSampler_s, r0.yz).xyz;
  r4.xyz = float3(-0.5,-0.5,-0) + r4.xyz;
  r4.xyz = baseNormalHeight * r4.xyz + float3(0.5,0.5,0);
  r4.xy = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.w = dot(r4.xy, r4.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r4.z = r4.z * r4.z;
  r4.z = 0.333333343 * r4.z;
  r4.z = min(1, r4.z);
  r5.x = v7.x ? 1 : -1;
  r5.y = dot(v3.xyz, v3.xyz);
  r5.y = rsqrt(r5.y);
  r5.yzw = v3.xyz * r5.yyy;
  r5.yzw = r5.yzw * r5.xxx;
  r6.x = dot(v4.xyz, v4.xyz);
  r6.x = rsqrt(r6.x);
  r6.xyz = v4.xyz * r6.xxx;
  r6.xyz = r6.xyz * r5.xxx;
  r6.w = dot(v5.xyz, v5.xyz);
  r6.w = rsqrt(r6.w);
  r7.xyz = v5.xyz * r6.www;
  r7.xyz = r7.xyz * r5.xxx;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r4.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r8.xyz = r7.xyz * r4.yyy;
  r8.xyz = r6.xyz * r4.xxx + r8.xyz;
  r4.xyw = r5.yzw * r4.www + r8.xyz;
  r6.w = dot(r4.xyw, r4.xyw);
  r6.w = rsqrt(r6.w);
  r4.xyw = r6.www * r4.xyw;
  r3.w = debugGlossOverride.x * r3.w + glossRange.x;
  r3.w = saturate(0.0588235296 * r3.w);
  r3.w = -17 * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r4.z + r3.w;
  r3.w = log2(r3.w);
  r3.w = -0.0588235296 * r3.w;
  r3.w = max(0, r3.w);
  r4.z = cmp(0 < debugStreamerControl.w);
  if (r4.z != 0) {
    r4.z = (int)debugStreamerControl.w;
    r6.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r0.yz);
    r0.y = colorMap.CalculateLevelOfDetail(colorSampler_s, r0.yz);
    r0.z = cmp(r6.w < r0.y);
    r0.y = cmp(0 < r0.y);
    r8.xyz = (int3)r4.zzz & int3(1,2,4);
    r9.xyz = r8.xxx ? float3(1,0,1) : r2.xyz;
    r8.xyw = r8.yyy ? float3(0,1,1) : r2.xyz;
    r8.xyw = r0.yyy ? r9.xyz : r8.xyw;
    r9.xyz = r8.zzz ? float3(0,1,0) : r2.xyz;
    r2.xyz = r0.zzz ? r8.xyw : r9.xyz;
  }
  r8.xyz = debugColorOverride.xyz + -r2.xyz;
  r2.xyz = debugColorOverride.www * r8.xyz + r2.xyz;
  r0.y = -r2.w * v1.x + debugAlphaOverride.x;
  r0.y = debugAlphaOverride.w * r0.y + r0.w;
  r8.xyz = debugSpecularOverride.xyz + -r3.xyz;
  r3.xyz = debugSpecularOverride.www * r8.xyz + r3.xyz;
  r0.z = r3.w + -r1.w;
  r0.z = debugGlossOverride.w * r0.z + r1.w;
  r0.w = debugOcclusionOverride.x + -r1.z;
  r0.w = debugOcclusionOverride.w * r0.w + r1.z;
  r8.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r1.z = dot(r8.xyz, r8.xyz);
  r1.z = rsqrt(r1.z);
  r8.xyz = r8.xyz * r1.zzz + -r4.xyw;
  r4.xyz = debugNormalOverride.www * r8.xyz + r4.xyw;
  r1.z = cmp(v0.z >= 0.984375);
  r1.w = 1.01587307 * v0.z;
  r2.w = v0.z * 64 + -63;
  r1.z = r1.z ? r2.w : r1.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.z = rcp(r1.z);
  r8.xy = (uint2)v0.xy;
  r9.xyz = ddx_coarse(v6.xyz);
  r10.xyz = ddy_coarse(v6.xyz);
  r1.w = numRefProbes + numLights;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.w, v2.w, l(8), t4.xxxx
r2.w = samp0[]..swiz;
  r8.zw = (int2)r2.ww & int2(268435456,536870912);
  if (r8.z != 0) {
    r11.xyz = eyeOffset.xyz + v6.xyz;
    r2.w = 0.0078125 * r1.z;
    r2.w = min(15, r2.w);
    r2.w = (uint)r2.w;
    r12.xy = (uint2)r8.xy >> int2(6,6);
    r12.z = (uint)r2.w << 4;
    r2.w = numStaticDecals & -32;
    r3.w = (int)-r2.w + numStaticDecals;
    r13.xy = float2(0,0);
    r14.w = 0;
    r11.w = 1;
    r15.xyzw = float4(0,0,0,0);
    r16.xyz = float3(0,0,0);
    r17.yz = float2(0,0);
    r18.xy = float2(0,0);
    r4.w = 0;
    while (true) {
      r6.w = cmp((uint)r4.w >= numStaticDecals);
      if (r6.w != 0) break;
      r13.z = (uint)r4.w >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r6.w = visibleDecals.Load(r14.xyzw).x;
      r7.w = cmp((int)r2.w == (int)r4.w);
      if (r3.w == 0) r8.z = 0; else if (r3.w+0 < 32) {       r8.z = (uint)r6.w << (32-(r3.w + 0)); r8.z = (uint)r8.z >> (32-r3.w);      } else r8.z = (uint)r6.w >> 0;
      r6.w = r7.w ? r8.z : r6.w;
      r7.w = (int)r1.w + (int)r4.w;
      r19.xyzw = r15.xzwy;
      r14.xyz = r16.xyz;
      r20.yz = r17.yz;
      r21.xy = r18.xy;
      r8.z = r6.w;
      while (true) {
        if (r8.z == 0) break;
        r9.w = firstbitlow((uint)r8.z);
        r10.w = 1 << (int)r9.w;
        r12.w = (int)r8.z & (int)r10.w;
        if (r12.w != 0) {
          r8.z = (int)r8.z ^ (int)r10.w;
          r10.w = (int)r7.w + (int)r9.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r10.w, l(0), t11.xyzw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r10.w, l(16), t11.xyxx
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
          r22.xyz = -v6.xyz + r22.xyz;
          r23.z = r22.w;
          r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
          r10.w = r22.y ? r22.x : 0;
          r10.w = r22.z ? r10.w : 0;
          if (r10.w != 0) {
            r9.w = (int)r4.w + (int)r9.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyz, r9.w, l(0), t36.xyzx
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyz, r9.w, l(16), t36.xyzx
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r24.xyz, r9.w, l(32), t36.xyzx
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
            r25.x = r22.x;
            r25.y = r23.x;
            r25.z = r24.x;
            r10.w = dot(r25.xyz, r25.xyz);
            r10.w = rsqrt(r10.w);
            r26.xyz = r25.xyz * r10.www;
            r10.w = dot(r26.xyz, r5.yzw);
            r10.w = cmp(r10.w >= 0.5);
            if (r10.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r27.xyw, r9.w, l(48), t36.xyxz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r25.w = r27.x;
              r25.x = dot(r11.xyzw, r25.xyzw);
              r28.x = r22.y;
              r28.y = r23.y;
              r28.z = r24.y;
              r28.w = r27.y;
              r25.y = dot(r11.xyzw, r28.xyzw);
              r27.x = r22.z;
              r27.y = r23.z;
              r27.z = r24.z;
              r25.z = dot(r11.xyzw, r27.xyzw);
              r22.xyz = cmp(abs(r25.xyz) < float3(1,1,1));
              r10.w = r22.y ? r22.x : 0;
              r10.w = r22.z ? r10.w : 0;
              if (r10.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyzw, r9.w, l(64), t36.xyzw
              r22.x = samp0[]..swiz;
              r22.y = samp0[]..swiz;
              r22.z = samp0[]..swiz;
              r22.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyzw, r9.w, l(80), t36.xyzw
              r23.x = samp0[]..swiz;
              r23.y = samp0[]..swiz;
              r23.z = samp0[]..swiz;
              r23.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r24.xyzw, r9.w, l(96), t36.xyzw
              r24.x = samp0[]..swiz;
              r24.y = samp0[]..swiz;
              r24.z = samp0[]..swiz;
              r24.w = samp0[]..swiz;
                r29.x = dot(r9.xyz, r28.xyz);
                r29.y = dot(r9.xyz, r27.xyz);
                r30.x = dot(r10.xyz, r28.xyz);
                r30.y = dot(r10.xyz, r27.xyz);
                r13.zw = r25.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.xyz = float3(0.5,-0.5,0.5) * r29.xyx;
                r29.xyz = float3(0.5,-0.5,0.5) * r30.xyx;
                r30.xy = (int2)r23.yz & int2(65535,65535);
                if (r30.x != 0) {
                  if (4 == 0) r10.w = 0; else if (4+24 < 32) {                   r10.w = (uint)r23.w << (32-(4 + 24)); r10.w = (uint)r10.w >> (32-4);                  } else r10.w = (uint)r23.w >> 24;
                  r10.w = 1 << (int)r10.w;
                  r12.w = (uint)r23.w >> 28;
                  r12.w = 1 << (int)r12.w;
                  r16.w = cmp((int)r30.x == 4);
                  if (r16.w != 0) {
                    r16.w = (int)r23.w & 4095;
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r23.w << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r23.w >> 12;
                    r18.w = (int)r24.w & 1023;
                    r31.xz = (uint2)r10.ww;
                    r31.y = (uint)r12.w;
                    r30.zw = r13.zw * r31.zy + float2(0.5,0.5);
                    r32.xy = float2(-0.5,-0.5) + r31.zy;
                    r30.zw = min(r32.xy, r30.zw);
                    r32.x = (uint)r16.w;
                    r32.y = (uint)r17.w;
                    r30.zw = r32.xy + r30.zw;
                    r32.xy = invBcTexSizes.xy * r30.zw;
                    r32.z = (uint)r18.w;
                    r33.xyz = invBcTexSizes.xyx * r25.zyz;
                    r33.xyz = r33.xyz * r31.xyz;
                    r34.xyz = invBcTexSizes.xyx * r29.zyz;
                    r31.xyz = r34.xyz * r31.xyz;
                    r31.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r32.xyz, r33.xyzx, r31.xyzx).xyzw;
                  } else {
                    r16.w = cmp((int)r30.x == 1);
                    if (r16.w != 0) {
                      r16.w = (int)r23.w & 4095;
                      if (12 == 0) r17.w = 0; else if (12+12 < 32) {                       r17.w = (uint)r23.w << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                      } else r17.w = (uint)r23.w >> 12;
                      r18.w = (int)r24.w & 1023;
                      r32.xz = (uint2)r10.ww;
                      r32.y = (uint)r12.w;
                      r30.xz = r13.zw * r32.zy + float2(0.5,0.5);
                      r33.xy = float2(-0.5,-0.5) + r32.zy;
                      r30.xz = min(r33.xy, r30.xz);
                      r33.x = (uint)r16.w;
                      r33.y = (uint)r17.w;
                      r30.xz = r33.xy + r30.xz;
                      r33.xy = invBcTexSizes.zw * r30.xz;
                      r33.z = (uint)r18.w;
                      r30.xzw = invBcTexSizes.zwz * r25.zyz;
                      r30.xzw = r30.xzw * r32.xyz;
                      r34.xyz = invBcTexSizes.zwz * r29.zyz;
                      r32.xyz = r34.xyz * r32.xyz;
                      r31.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r33.xyz, r30.xzwx, r32.xyzx).xyzw;
                    } else {
                      r31.xyzw = float4(1,1,1,1);
                    }
                  }
                  r22.xyz = r31.xyz * r22.xyz;
                  r10.w = r31.w * r22.w;
                } else {
                  r22.xyz = float3(0,0,0);
                  r10.w = 0;
                }
                r12.w = cmp(r23.x != 1.000000);
                r16.w = r10.w + r22.w;
                r16.w = saturate(r16.w * r23.x + -r23.x);
                r10.w = r12.w ? r16.w : r10.w;
                if (r30.y != 0) {
                  if (4 == 0) r12.w = 0; else if (4+24 < 32) {                   r12.w = (uint)r24.y << (32-(4 + 24)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r24.y >> 24;
                  r12.w = 1 << (int)r12.w;
                  r16.w = (uint)r24.y >> 28;
                  r16.w = 1 << (int)r16.w;
                  r17.w = cmp((int)r30.y == 2);
                  if (r17.w != 0) {
                    r17.w = (int)r24.y & 4095;
                    if (12 == 0) r23.x = 0; else if (12+12 < 32) {                     r23.x = (uint)r24.y << (32-(12 + 12)); r23.x = (uint)r23.x >> (32-12);                    } else r23.x = (uint)r24.y >> 12;
                    if (10 == 0) r23.w = 0; else if (10+20 < 32) {                     r23.w = (uint)r24.w << (32-(10 + 20)); r23.w = (uint)r23.w >> (32-10);                    } else r23.w = (uint)r24.w >> 20;
                    r31.xz = (uint2)r12.ww;
                    r31.y = (uint)r16.w;
                    r30.xz = r13.zw * r31.zy + float2(0.5,0.5);
                    r32.xy = float2(-0.5,-0.5) + r31.zy;
                    r30.xz = min(r32.xy, r30.xz);
                    r32.x = (uint)r17.w;
                    r32.yz = (uint2)r23.xw;
                    r30.xz = r32.xy + r30.xz;
                    r32.xy = invMaskTexSizes.xy * r30.xz;
                    r30.xzw = invMaskTexSizes.xyx * r25.zyz;
                    r30.xzw = r30.xzw * r31.xyz;
                    r33.xyz = invMaskTexSizes.xyx * r29.zyz;
                    r31.xyz = r33.xyz * r31.xyz;
                    r17.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r32.xyz, r30.x, r31.x).x;
                  } else {
                    r18.w = cmp((int)r30.y == 4);
                    if (r18.w != 0) {
                      r18.w = (int)r24.y & 4095;
                      if (12 == 0) r23.x = 0; else if (12+12 < 32) {                       r23.x = (uint)r24.y << (32-(12 + 12)); r23.x = (uint)r23.x >> (32-12);                      } else r23.x = (uint)r24.y >> 12;
                      if (10 == 0) r23.w = 0; else if (10+20 < 32) {                       r23.w = (uint)r24.w << (32-(10 + 20)); r23.w = (uint)r23.w >> (32-10);                      } else r23.w = (uint)r24.w >> 20;
                      r30.xz = (uint2)r12.ww;
                      r30.y = (uint)r16.w;
                      r31.xy = r13.zw * r30.zy + float2(0.5,0.5);
                      r31.zw = float2(-0.5,-0.5) + r30.zy;
                      r31.xy = min(r31.xy, r31.zw);
                      r32.x = (uint)r18.w;
                      r32.y = (uint)r23.x;
                      r31.xy = r32.xy + r31.xy;
                      r31.xy = invBcTexSizes.xy * r31.xy;
                      r31.z = (uint)r23.w;
                      r32.xyz = invBcTexSizes.xyx * r25.zyz;
                      r32.xyz = r32.xyz * r30.xyz;
                      r33.xyz = invBcTexSizes.xyx * r29.zyz;
                      r30.xyz = r33.xyz * r30.xyz;
                      r17.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.x, r30.x).x;
                    } else {
                      r18.w = (int)r24.y & 4095;
                      if (12 == 0) r23.x = 0; else if (12+12 < 32) {                       r23.x = (uint)r24.y << (32-(12 + 12)); r23.x = (uint)r23.x >> (32-12);                      } else r23.x = (uint)r24.y >> 12;
                      if (10 == 0) r23.w = 0; else if (10+20 < 32) {                       r23.w = (uint)r24.w << (32-(10 + 20)); r23.w = (uint)r23.w >> (32-10);                      } else r23.w = (uint)r24.w >> 20;
                      r30.xz = (uint2)r12.ww;
                      r30.y = (uint)r16.w;
                      r31.xy = r13.zw * r30.zy + float2(0.5,0.5);
                      r31.zw = float2(-0.5,-0.5) + r30.zy;
                      r31.xy = min(r31.xy, r31.zw);
                      r32.x = (uint)r18.w;
                      r32.y = (uint)r23.x;
                      r31.xy = r32.xy + r31.xy;
                      r31.xy = invBcTexSizes.zw * r31.xy;
                      r31.z = (uint)r23.w;
                      r32.xyz = invBcTexSizes.zwz * r25.zyz;
                      r32.xyz = r32.xyz * r30.xyz;
                      r33.xyz = invBcTexSizes.zwz * r29.zyz;
                      r30.xyz = r33.xyz * r30.xyz;
                      r17.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r31.xyz, r32.x, r30.x).x;
                    }
                  }
                  r30.xyz = r17.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r12.w = saturate(1 + -r17.w);
                  r22.xyz = r22.xyz * r12.www;
                } else {
                  r30.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r23.xy = (uint2)r23.zy >> int2(16,16);
                if (r23.x != 0) {
                  r12.w = cmp((int)r23.x == 2);
                  if (r12.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(112), t36.xxxx
                  r9.w = samp0[]..swiz;
                    if (4 == 0) r23.z = 0; else if (4+24 < 32) {                     r23.z = (uint)r24.z << (32-(4 + 24)); r23.z = (uint)r23.z >> (32-4);                    } else r23.z = (uint)r24.z >> 24;
                    if (12 == 0) r23.w = 0; else if (12+12 < 32) {                     r23.w = (uint)r24.z << (32-(12 + 12)); r23.w = (uint)r23.w >> (32-12);                    } else r23.w = (uint)r24.z >> 12;
                    r12.w = 1 << (int)r23.z;
                    r16.w = (uint)r24.z >> 28;
                    r16.w = 1 << (int)r16.w;
                    r17.w = (int)r24.z & 4095;
                    r9.w = (int)r9.w & 1023;
                    r31.xz = (uint2)r12.ww;
                    r31.y = (uint)r16.w;
                    r24.yz = r13.zw * r31.zy + float2(0.5,0.5);
                    r32.xy = float2(-0.5,-0.5) + r31.zy;
                    r24.yz = min(r32.xy, r24.yz);
                    r32.x = (uint)r17.w;
                    r32.y = (uint)r23.w;
                    r23.zw = r32.xy + r24.yz;
                    r32.xy = invMaskTexSizes.xy * r23.zw;
                    r32.z = (uint)r9.w;
                    r33.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r33.xyz = r33.xyz * r31.xyz;
                    r34.xyz = invMaskTexSizes.xyx * r29.zyz;
                    r31.xyz = r34.xyz * r31.xyz;
                    r9.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r32.xyz, r33.x, r31.x).x;
                  } else {
                    r12.w = cmp((int)r23.x == 6);
                    r9.w = r12.w ? 0 : 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = saturate(0.764705896 * r9.w);
                if (r23.y != 0) {
                  r12.w = cmp((int)r23.y == 3);
                  if (r12.w != 0) {
                    if (4 == 0) r23.x = 0; else if (4+24 < 32) {                     r23.x = (uint)r24.x << (32-(4 + 24)); r23.x = (uint)r23.x >> (32-4);                    } else r23.x = (uint)r24.x >> 24;
                    if (12 == 0) r23.y = 0; else if (12+12 < 32) {                     r23.y = (uint)r24.x << (32-(12 + 12)); r23.y = (uint)r23.y >> (32-12);                    } else r23.y = (uint)r24.x >> 12;
                    if (10 == 0) r23.z = 0; else if (10+10 < 32) {                     r23.z = (uint)r24.w << (32-(10 + 10)); r23.z = (uint)r23.z >> (32-10);                    } else r23.z = (uint)r24.w >> 10;
                    r12.w = 1 << (int)r23.x;
                    r16.w = (uint)r24.x >> 28;
                    r16.w = 1 << (int)r16.w;
                    r17.w = (int)r24.x & 4095;
                    r24.xz = (uint2)r12.ww;
                    r24.y = (uint)r16.w;
                    r13.zw = r13.zw * r24.xy + float2(0.5,0.5);
                    r23.xw = float2(-0.5,-0.5) + r24.zy;
                    r13.zw = min(r23.xw, r13.zw);
                    r31.x = (uint)r17.w;
                    r31.yz = (uint2)r23.yz;
                    r13.zw = r31.xy + r13.zw;
                    r31.xy = invMaskTexSizes.zw * r13.zw;
                    r23.xyz = invMaskTexSizes.zwz * r25.xyz;
                    r23.xyz = r23.xyz * r24.xyz;
                    r25.xyz = invMaskTexSizes.zwz * r29.xyz;
                    r24.xyz = r25.xyz * r24.xyz;
                    r23.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r31.xyz, r23.xyz, r24.xyz).xyz;
                  } else {
                    r23.xyz = float3(0.5,0.5,1);
                  }
                  r13.zw = r23.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r12.w = dot(r13.zw, r13.zw);
                  r12.w = 1 + -r12.w;
                  r12.w = max(0, r12.w);
                  r12.w = sqrt(r12.w);
                  r16.w = r23.z * r23.z;
                  r16.w = 0.333333343 * r16.w;
                  r16.w = min(1, r16.w);
                  r17.w = dot(r28.xyz, r28.xyz);
                  r17.w = rsqrt(r17.w);
                  r23.xyz = r28.xyz * r17.www;
                  r17.w = dot(-r27.xyz, -r27.xyz);
                  r17.w = rsqrt(r17.w);
                  r24.xyz = -r27.xyz * r17.www;
                  r25.xyz = r26.xyz * r5.xxx;
                  r23.xyz = r23.xyz * r5.xxx;
                  r24.xyz = r24.xyz * r5.xxx;
                  r17.w = -17 * r9.w;
                  r17.w = exp2(r17.w);
                  r16.w = r17.w + r16.w;
                  r16.w = log2(r16.w);
                  r16.w = -0.0588235296 * r16.w;
                  r9.w = max(0, r16.w);
                  r24.xyz = r24.xyz * r13.www;
                  r23.xyz = r23.xyz * r13.zzz + r24.xyz;
                  r23.xyz = r25.xyz * r12.www + r23.xyz;
                  r12.w = dot(r23.xyz, r23.xyz);
                  r12.w = rsqrt(r12.w);
                  r23.xyz = r23.xyz * r12.www;
                  r12.w = 1 + -r10.w;
                  r20.x = r19.x;
                  r24.xyz = r20.xyz * r12.www;
                  r20.xyz = r23.xyz * r10.www + r24.xyz;
                  r19.x = r20.x;
                }
                r12.w = 1 + -r10.w;
                r23.xyz = r14.xyz * r12.www;
                r14.xyz = r22.xyz * r10.www + r23.xyz;
                r21.z = r19.y;
                r22.xyz = r21.xyz * r12.www;
                r21.xyz = r30.xyz * r10.www + r22.xyz;
                r13.z = r19.w * r12.w;
                r19.z = r19.z * r12.w + r10.w;
                r19.w = r9.w * r10.w + r13.z;
                r19.y = r21.z;
              }
            }
          }
        }
      }
      r15.xyzw = r19.xwyz;
      r16.xyz = r14.xyz;
      r17.yz = r20.yz;
      r18.xy = r21.xy;
      r4.w = (int)r4.w + 32;
    }
    r17.x = r15.x;
    r18.z = r15.z;
    r15.xy = r15.wy;
  } else {
    r16.xyz = float3(0,0,0);
    r17.xyz = float3(0,0,0);
    r18.xyz = float3(0,0,0);
    r15.xy = float2(0,0);
  }
  if (r8.w != 0) {
    r11.xyz = eyeOffset.xyz + v6.xyz;
    r2.w = numDynamicDecals + numStaticDecals;
    r3.w = 0.0078125 * r1.z;
    r3.w = min(15, r3.w);
    r3.w = (uint)r3.w;
    r12.xy = (uint2)r8.xy >> int2(6,6);
    r12.z = (uint)r3.w << 4;
    r3.w = numStaticDecals & -32;
    r4.w = (int)-r3.w + numStaticDecals;
    r6.w = (int)r2.w & -32;
    r7.w = (int)r2.w + (int)-r6.w;
    r13.xy = float2(0,0);
    r14.w = 0;
    r11.w = 1;
    r19.xyz = r16.xyz;
    r20.xyz = r17.xyz;
    r21.xyz = r18.xyz;
    r22.xy = r15.xy;
    r8.z = r3.w;
    while (true) {
      r8.w = cmp((uint)r8.z >= (uint)r2.w);
      if (r8.w != 0) break;
      r13.z = (uint)r8.z >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r8.w = visibleDecals.Load(r14.xyzw).x;
      r9.w = cmp((int)r3.w == (int)r8.z);
      bitmask.w = ((~(-1 << r4.w)) << 0) & 0xffffffff;  r10.w = (((uint)0 << 0) & bitmask.w) | ((uint)r8.w & ~bitmask.w);
      r8.w = r9.w ? r10.w : r8.w;
      r9.w = cmp((int)r6.w == (int)r8.z);
      if (r7.w == 0) r10.w = 0; else if (r7.w+0 < 32) {       r10.w = (uint)r8.w << (32-(r7.w + 0)); r10.w = (uint)r10.w >> (32-r7.w);      } else r10.w = (uint)r8.w >> 0;
      r8.w = r9.w ? r10.w : r8.w;
      r9.w = (int)r1.w + (int)r8.z;
      r14.xyz = r19.xyz;
      r23.xyz = r20.xyz;
      r24.xyz = r21.xyz;
      r13.zw = r22.xy;
      r10.w = r8.w;
      while (true) {
        if (r10.w == 0) break;
        r12.w = firstbitlow((uint)r10.w);
        r15.z = 1 << (int)r12.w;
        r15.w = (int)r10.w & (int)r15.z;
        if (r15.w != 0) {
          r10.w = (int)r10.w ^ (int)r15.z;
          r15.z = (int)r9.w + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r15.z, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r15.z, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v6.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r15.z = r25.y ? r25.x : 0;
          r15.z = r25.z ? r15.z : 0;
          if (r15.z != 0) {
            r12.w = (int)r8.z + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r25.xyz, r12.w, l(0), t36.xyzx
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r26.xyz, r12.w, l(16), t36.xyzx
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r27.xyz, r12.w, l(32), t36.xyzx
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
            r28.x = r25.x;
            r28.y = r26.x;
            r28.z = r27.x;
            r15.z = dot(r28.xyz, r28.xyz);
            r15.z = rsqrt(r15.z);
            r29.xyz = r28.xyz * r15.zzz;
            r15.z = dot(r29.xyz, r5.yzw);
            r15.z = cmp(r15.z >= 0.5);
            if (r15.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r30.xyw, r12.w, l(48), t36.xyxz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.w = samp0[]..swiz;
              r28.w = r30.x;
              r28.x = dot(r11.xyzw, r28.xyzw);
              r31.x = r25.y;
              r31.y = r26.y;
              r31.z = r27.y;
              r31.w = r30.y;
              r28.y = dot(r11.xyzw, r31.xyzw);
              r30.x = r25.z;
              r30.y = r26.z;
              r30.z = r27.z;
              r28.z = dot(r11.xyzw, r30.xyzw);
              r25.xyz = cmp(abs(r28.xyz) < float3(1,1,1));
              r15.z = r25.y ? r25.x : 0;
              r15.z = r25.z ? r15.z : 0;
              if (r15.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(64), t36.xyzw
              r25.x = samp0[]..swiz;
              r25.y = samp0[]..swiz;
              r25.z = samp0[]..swiz;
              r25.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(80), t36.xyzw
              r26.x = samp0[]..swiz;
              r26.y = samp0[]..swiz;
              r26.z = samp0[]..swiz;
              r26.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(96), t36.xyzw
              r27.x = samp0[]..swiz;
              r27.y = samp0[]..swiz;
              r27.z = samp0[]..swiz;
              r27.w = samp0[]..swiz;
                r32.x = dot(r9.xyz, r31.xyz);
                r32.y = dot(r9.xyz, r30.xyz);
                r33.x = dot(r10.xyz, r31.xyz);
                r33.y = dot(r10.xyz, r30.xyz);
                r15.zw = r28.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r28.xyz = float3(0.5,-0.5,0.5) * r32.xyx;
                r32.xyz = float3(0.5,-0.5,0.5) * r33.xyx;
                r22.zw = (int2)r26.yz & int2(65535,65535);
                if (r22.z != 0) {
                  if (4 == 0) r16.w = 0; else if (4+24 < 32) {                   r16.w = (uint)r26.w << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                  } else r16.w = (uint)r26.w >> 24;
                  r16.w = 1 << (int)r16.w;
                  r17.w = (uint)r26.w >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.w = cmp((int)r22.z == 4);
                  if (r18.w != 0) {
                    r18.w = (int)r26.w & 4095;
                    if (12 == 0) r19.w = 0; else if (12+12 < 32) {                     r19.w = (uint)r26.w << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                    } else r19.w = (uint)r26.w >> 12;
                    r20.w = (int)r27.w & 1023;
                    r33.xz = (uint2)r16.ww;
                    r33.y = (uint)r17.w;
                    r34.xy = r15.zw * r33.zy + float2(0.5,0.5);
                    r34.zw = float2(-0.5,-0.5) + r33.zy;
                    r34.xy = min(r34.xy, r34.zw);
                    r35.x = (uint)r18.w;
                    r35.y = (uint)r19.w;
                    r34.xy = r35.xy + r34.xy;
                    r34.xy = invBcTexSizes.xy * r34.xy;
                    r34.z = (uint)r20.w;
                    r35.xyz = invBcTexSizes.xyx * r28.zyz;
                    r35.xyz = r35.xyz * r33.xyz;
                    r36.xyz = invBcTexSizes.xyx * r32.zyz;
                    r33.xyz = r36.xyz * r33.xyz;
                    r33.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r34.xyz, r35.xyzx, r33.xyzx).xyzw;
                  } else {
                    r18.w = cmp((int)r22.z == 1);
                    if (r18.w != 0) {
                      r18.w = (int)r26.w & 4095;
                      if (12 == 0) r19.w = 0; else if (12+12 < 32) {                       r19.w = (uint)r26.w << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                      } else r19.w = (uint)r26.w >> 12;
                      r20.w = (int)r27.w & 1023;
                      r34.xz = (uint2)r16.ww;
                      r34.y = (uint)r17.w;
                      r35.xy = r15.zw * r34.zy + float2(0.5,0.5);
                      r35.zw = float2(-0.5,-0.5) + r34.zy;
                      r35.xy = min(r35.xy, r35.zw);
                      r36.x = (uint)r18.w;
                      r36.y = (uint)r19.w;
                      r35.xy = r36.xy + r35.xy;
                      r35.xy = invBcTexSizes.zw * r35.xy;
                      r35.z = (uint)r20.w;
                      r36.xyz = invBcTexSizes.zwz * r28.zyz;
                      r36.xyz = r36.xyz * r34.xyz;
                      r37.xyz = invBcTexSizes.zwz * r32.zyz;
                      r34.xyz = r37.xyz * r34.xyz;
                      r33.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r35.xyz, r36.xyzx, r34.xyzx).xyzw;
                    } else {
                      r33.xyzw = float4(1,1,1,1);
                    }
                  }
                  r25.xyz = r33.xyz * r25.xyz;
                  r16.w = r33.w * r25.w;
                } else {
                  r25.xyz = float3(0,0,0);
                  r16.w = 0;
                }
                r17.w = cmp(r26.x != 1.000000);
                r18.w = r16.w + r25.w;
                r18.w = saturate(r18.w * r26.x + -r26.x);
                r16.w = r17.w ? r18.w : r16.w;
                if (r22.w != 0) {
                  if (4 == 0) r17.w = 0; else if (4+24 < 32) {                   r17.w = (uint)r27.y << (32-(4 + 24)); r17.w = (uint)r17.w >> (32-4);                  } else r17.w = (uint)r27.y >> 24;
                  r17.w = 1 << (int)r17.w;
                  r18.w = (uint)r27.y >> 28;
                  r18.w = 1 << (int)r18.w;
                  r19.w = cmp((int)r22.w == 2);
                  if (r19.w != 0) {
                    r19.w = (int)r27.y & 4095;
                    if (12 == 0) r26.x = 0; else if (12+12 < 32) {                     r26.x = (uint)r27.y << (32-(12 + 12)); r26.x = (uint)r26.x >> (32-12);                    } else r26.x = (uint)r27.y >> 12;
                    if (10 == 0) r26.w = 0; else if (10+20 < 32) {                     r26.w = (uint)r27.w << (32-(10 + 20)); r26.w = (uint)r26.w >> (32-10);                    } else r26.w = (uint)r27.w >> 20;
                    r33.xz = (uint2)r17.ww;
                    r33.y = (uint)r18.w;
                    r34.xy = r15.zw * r33.zy + float2(0.5,0.5);
                    r34.zw = float2(-0.5,-0.5) + r33.zy;
                    r34.xy = min(r34.xy, r34.zw);
                    r35.x = (uint)r19.w;
                    r35.y = (uint)r26.x;
                    r34.xy = r35.xy + r34.xy;
                    r34.xy = invMaskTexSizes.xy * r34.xy;
                    r34.z = (uint)r26.w;
                    r35.xyz = invMaskTexSizes.xyx * r28.zyz;
                    r35.xyz = r35.xyz * r33.xyz;
                    r36.xyz = invMaskTexSizes.xyx * r32.zyz;
                    r33.xyz = r36.xyz * r33.xyz;
                    r19.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r34.xyz, r35.x, r33.x).x;
                  } else {
                    r20.w = cmp((int)r22.w == 4);
                    if (r20.w != 0) {
                      r20.w = (int)r27.y & 4095;
                      if (12 == 0) r22.z = 0; else if (12+12 < 32) {                       r22.z = (uint)r27.y << (32-(12 + 12)); r22.z = (uint)r22.z >> (32-12);                      } else r22.z = (uint)r27.y >> 12;
                      if (10 == 0) r22.w = 0; else if (10+20 < 32) {                       r22.w = (uint)r27.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                      } else r22.w = (uint)r27.w >> 20;
                      r33.xz = (uint2)r17.ww;
                      r33.y = (uint)r18.w;
                      r26.xw = r15.zw * r33.zy + float2(0.5,0.5);
                      r34.xy = float2(-0.5,-0.5) + r33.zy;
                      r26.xw = min(r34.xy, r26.xw);
                      r34.x = (uint)r20.w;
                      r34.yz = (uint2)r22.zw;
                      r26.xw = r34.xy + r26.xw;
                      r34.xy = invBcTexSizes.xy * r26.xw;
                      r35.xyz = invBcTexSizes.xyx * r28.zyz;
                      r35.xyz = r35.xyz * r33.xyz;
                      r36.xyz = invBcTexSizes.xyx * r32.zyz;
                      r33.xyz = r36.xyz * r33.xyz;
                      r19.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r34.xyz, r35.x, r33.x).x;
                    } else {
                      r20.w = (int)r27.y & 4095;
                      if (12 == 0) r22.z = 0; else if (12+12 < 32) {                       r22.z = (uint)r27.y << (32-(12 + 12)); r22.z = (uint)r22.z >> (32-12);                      } else r22.z = (uint)r27.y >> 12;
                      if (10 == 0) r22.w = 0; else if (10+20 < 32) {                       r22.w = (uint)r27.w << (32-(10 + 20)); r22.w = (uint)r22.w >> (32-10);                      } else r22.w = (uint)r27.w >> 20;
                      r33.xz = (uint2)r17.ww;
                      r33.y = (uint)r18.w;
                      r26.xw = r15.zw * r33.zy + float2(0.5,0.5);
                      r34.xy = float2(-0.5,-0.5) + r33.zy;
                      r26.xw = min(r34.xy, r26.xw);
                      r34.x = (uint)r20.w;
                      r34.yz = (uint2)r22.zw;
                      r26.xw = r34.xy + r26.xw;
                      r34.xy = invBcTexSizes.zw * r26.xw;
                      r35.xyz = invBcTexSizes.zwz * r28.zyz;
                      r35.xyz = r35.xyz * r33.xyz;
                      r36.xyz = invBcTexSizes.zwz * r32.zyz;
                      r33.xyz = r36.xyz * r33.xyz;
                      r19.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r34.xyz, r35.x, r33.x).x;
                    }
                  }
                  r33.xyz = r19.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r17.w = saturate(1 + -r19.w);
                  r25.xyz = r25.xyz * r17.www;
                } else {
                  r33.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r22.zw = (uint2)r26.zy >> int2(16,16);
                if (r22.z != 0) {
                  r17.w = cmp((int)r22.z == 2);
                  if (r17.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(112), t36.xxxx
                  r12.w = samp0[]..swiz;
                    if (4 == 0) r26.x = 0; else if (4+24 < 32) {                     r26.x = (uint)r27.z << (32-(4 + 24)); r26.x = (uint)r26.x >> (32-4);                    } else r26.x = (uint)r27.z >> 24;
                    if (12 == 0) r26.y = 0; else if (12+12 < 32) {                     r26.y = (uint)r27.z << (32-(12 + 12)); r26.y = (uint)r26.y >> (32-12);                    } else r26.y = (uint)r27.z >> 12;
                    r17.w = 1 << (int)r26.x;
                    r18.w = (uint)r27.z >> 28;
                    r18.w = 1 << (int)r18.w;
                    r19.w = (int)r27.z & 4095;
                    r12.w = (int)r12.w & 1023;
                    r34.xz = (uint2)r17.ww;
                    r34.y = (uint)r18.w;
                    r26.xz = r15.zw * r34.zy + float2(0.5,0.5);
                    r27.yz = float2(-0.5,-0.5) + r34.zy;
                    r26.xz = min(r27.yz, r26.xz);
                    r35.x = (uint)r19.w;
                    r35.y = (uint)r26.y;
                    r26.xy = r35.xy + r26.xz;
                    r26.xy = invMaskTexSizes.xy * r26.xy;
                    r26.z = (uint)r12.w;
                    r35.xyz = invMaskTexSizes.xyx * r28.zyz;
                    r35.xyz = r35.xyz * r34.xyz;
                    r36.xyz = invMaskTexSizes.xyx * r32.zyz;
                    r34.xyz = r36.xyz * r34.xyz;
                    r12.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r26.xyz, r35.x, r34.x).x;
                  } else {
                    r17.w = cmp((int)r22.z == 6);
                    r12.w = r17.w ? 0 : 1;
                  }
                } else {
                  r12.w = 1;
                }
                r12.w = saturate(0.764705896 * r12.w);
                if (r22.w != 0) {
                  r17.w = cmp((int)r22.w == 3);
                  if (r17.w != 0) {
                    if (4 == 0) r26.x = 0; else if (4+24 < 32) {                     r26.x = (uint)r27.x << (32-(4 + 24)); r26.x = (uint)r26.x >> (32-4);                    } else r26.x = (uint)r27.x >> 24;
                    if (12 == 0) r26.y = 0; else if (12+12 < 32) {                     r26.y = (uint)r27.x << (32-(12 + 12)); r26.y = (uint)r26.y >> (32-12);                    } else r26.y = (uint)r27.x >> 12;
                    if (10 == 0) r26.z = 0; else if (10+10 < 32) {                     r26.z = (uint)r27.w << (32-(10 + 10)); r26.z = (uint)r26.z >> (32-10);                    } else r26.z = (uint)r27.w >> 10;
                    r17.w = 1 << (int)r26.x;
                    r18.w = (uint)r27.x >> 28;
                    r18.w = 1 << (int)r18.w;
                    r19.w = (int)r27.x & 4095;
                    r27.xz = (uint2)r17.ww;
                    r27.y = (uint)r18.w;
                    r15.zw = r15.zw * r27.xy + float2(0.5,0.5);
                    r22.zw = float2(-0.5,-0.5) + r27.zy;
                    r15.zw = min(r22.zw, r15.zw);
                    r34.x = (uint)r19.w;
                    r34.yz = (uint2)r26.yz;
                    r15.zw = r34.xy + r15.zw;
                    r34.xy = invMaskTexSizes.zw * r15.zw;
                    r26.xyz = invMaskTexSizes.zwz * r28.xyz;
                    r26.xyz = r26.xyz * r27.xyz;
                    r28.xyz = invMaskTexSizes.zwz * r32.xyz;
                    r27.xyz = r28.xyz * r27.xyz;
                    r26.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r34.xyz, r26.xyz, r27.xyz).xyz;
                  } else {
                    r26.xyz = float3(0.5,0.5,1);
                  }
                  r15.zw = r26.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r17.w = dot(r15.zw, r15.zw);
                  r17.w = 1 + -r17.w;
                  r17.w = max(0, r17.w);
                  r17.w = sqrt(r17.w);
                  r18.w = r26.z * r26.z;
                  r18.w = 0.333333343 * r18.w;
                  r18.w = min(1, r18.w);
                  r19.w = dot(r31.xyz, r31.xyz);
                  r19.w = rsqrt(r19.w);
                  r26.xyz = r31.xyz * r19.www;
                  r19.w = dot(-r30.xyz, -r30.xyz);
                  r19.w = rsqrt(r19.w);
                  r27.xyz = -r30.xyz * r19.www;
                  r28.xyz = r29.xyz * r5.xxx;
                  r26.xyz = r26.xyz * r5.xxx;
                  r27.xyz = r27.xyz * r5.xxx;
                  r19.w = -17 * r12.w;
                  r19.w = exp2(r19.w);
                  r18.w = r19.w + r18.w;
                  r18.w = log2(r18.w);
                  r18.w = -0.0588235296 * r18.w;
                  r12.w = max(0, r18.w);
                  r27.xyz = r27.xyz * r15.www;
                  r26.xyz = r26.xyz * r15.zzz + r27.xyz;
                  r26.xyz = r28.xyz * r17.www + r26.xyz;
                  r15.z = dot(r26.xyz, r26.xyz);
                  r15.z = rsqrt(r15.z);
                  r26.xyz = r26.xyz * r15.zzz;
                  r15.z = 1 + -r16.w;
                  r27.xyz = r23.xyz * r15.zzz;
                  r23.xyz = r26.xyz * r16.www + r27.xyz;
                }
                r15.z = 1 + -r16.w;
                r26.xyz = r15.zzz * r14.xyz;
                r14.xyz = r25.xyz * r16.www + r26.xyz;
                r25.xyz = r24.xyz * r15.zzz;
                r24.xyz = r33.xyz * r16.www + r25.xyz;
                r15.w = r15.z * r13.w;
                r13.z = r13.z * r15.z + r16.w;
                r13.w = r12.w * r16.w + r15.w;
              }
            }
          }
        }
      }
      r19.xyz = r14.xyz;
      r20.xyz = r23.xyz;
      r21.xyz = r24.xyz;
      r22.xy = r13.zw;
      r8.z = (int)r8.z + 32;
    }
    r16.xyz = r19.xyz;
    r17.xyz = r20.xyz;
    r18.xyz = r21.xyz;
    r15.xy = r22.xy;
  }
  r15.x = saturate(r15.x);
  r1.w = 1 + -r15.x;
  r2.xyz = r2.xyz * r1.www + r16.xyz;
  r0.y = r0.y * r1.w + r15.x;
  r4.xyz = r4.xyz * r1.www + r17.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r9.y = r0.z * r1.w + r15.y;
  r3.xyz = r3.xyz * r1.www + r18.xyz;
  r0.z = cmp(0.5 < uvMotionToggle1);
  if (r0.z != 0) {
    r0.z = rowCount * columnCount;
    r2.w = imageTime * r0.z;
    r3.w = gameTime.w * r2.w;
    r3.w = cmp(r3.w >= -r3.w);
    r3.w = r3.w ? r2.w : -r2.w;
    r5.x = 1 / r3.w;
    r5.x = gameTime.w * r5.x;
    r5.x = frac(r5.x);
    r3.w = r5.x * r3.w;
    r2.w = r3.w / r2.w;
    r0.z = r2.w * r0.z;
    r0.z = round(r0.z);
    r2.w = r0.z / columnCount;
    r3.w = columnCount * r0.z;
    r3.w = cmp(r3.w >= -r3.w);
    r3.w = r3.w ? columnCount : -columnCount;
    r5.x = 1 / r3.w;
    r0.z = r5.x * r0.z;
    r0.z = frac(r0.z);
    r0.z = r3.w * r0.z;
    r0.z = trunc(r0.z);
    r0.z = r1.x + r0.z;
    r10.x = r0.z / columnCount;
    r0.z = trunc(r2.w);
    r0.z = r1.y + r0.z;
    r10.y = r0.z / rowCount;
  } else {
    r0.z = dot(-v6.xyz, -v6.xyz);
    r0.z = rsqrt(r0.z);
    r11.xyz = -v6.xyz * r0.zzz;
    r12.x = dot(r11.xyz, r6.xyz);
    r12.y = dot(r11.xyz, r7.xyz);
    r0.z = dot(r11.xyz, r5.yzw);
    r2.w = cmp(0 < r0.z);
    r8.zw = -r12.xy / r0.zz;
    r8.zw = r2.ww ? r8.zw : 0;
    r9.zw = float2(-0.5,-0.5) + r1.xy;
    r0.z = 9.99999975e-06 + layerDepth;
    r8.zw = r8.zw * r0.zz;
    r8.zw = scaleUVs.xy * r8.zw;
    r8.zw = r9.zw * scaleUVs.xy + r8.zw;
    r8.zw = offsetUVs.xy * scaleUVs.xy + r8.zw;
    r0.z = rotateUVs.y * gameTime.w + 1;
    r0.z = rotateUVs.x * r0.z;
    r0.z = 0.0174532924 * r0.z;
    sincos(r0.z, r5.x, r11.x);
    r11.y = r11.x;
    r11.z = r5.x;
    r12.x = dot(r11.yz, r8.zw);
    r11.x = -r5.x;
    r12.y = dot(r11.xy, r8.zw);
    r8.zw = gameTime.ww * scrollUVs.xy;
    r8.zw = r8.zw * scaleUVs.xy + r12.xy;
    r0.z = gameTime.w * zoomRate;
    r0.z = cos(r0.z);
    r0.z = r0.z * 0.5 + 0.5;
    r0.z = 1 + -r0.z;
    r2.w = zoomUVs.y + -zoomUVs.x;
    r0.z = r0.z * r2.w + zoomUVs.x;
    r8.zw = r8.zw / r0.zz;
    r8.zw = float2(0.5,0.5) + r8.zw;
    r9.zw = saturate(r8.zw);
    r10.xy = clampU ? r9.zw : r8.zw;
  }
  r10.xyzw = emissiveMap1.Sample(colorSampler_s, r10.xy).xyzw;
  r10.xyzw = emissiveTint1.xyzw * r10.xyzw;
  r10.xyz = r10.xyz * r10.www;
  r0.z = v2.x + v2.y;
  r0.z = v2.z + r0.z;
  r2.w = flickerSeed.y + r0.z;
  r2.w = frac(r2.w);
  r11.y = gameTime.w * flickerSpeed + r2.w;
  r11.x = flickerSeed.x;
  r2.w = flickerLookupMap.SampleLevel(lookupSampler_s, r11.xy, 0).x;
  r2.w = log2(abs(r2.w));
  r2.w = flickerPower * r2.w;
  r2.w = exp2(r2.w);
  r3.w = flickerRange.y + -flickerRange.x;
  r2.w = r2.w * r3.w + flickerRange.x;
  r10.xyz = r10.xyz * r2.www;
  r2.w = cmp(0.5 < uvMotionToggle2);
  if (r2.w != 0) {
    r2.w = columnCount2 * rowCount2;
    r3.w = imageTime2 * r2.w;
    r5.x = gameTime.w * r3.w;
    r5.x = cmp(r5.x >= -r5.x);
    r5.x = r5.x ? r3.w : -r3.w;
    r6.w = 1 / r5.x;
    r6.w = gameTime.w * r6.w;
    r6.w = frac(r6.w);
    r5.x = r6.w * r5.x;
    r3.w = r5.x / r3.w;
    r2.w = r3.w * r2.w;
    r2.w = round(r2.w);
    r3.w = r2.w / columnCount2;
    r5.x = columnCount2 * r2.w;
    r5.x = cmp(r5.x >= -r5.x);
    r5.x = r5.x ? columnCount2 : -columnCount2;
    r6.w = 1 / r5.x;
    r2.w = r6.w * r2.w;
    r2.w = frac(r2.w);
    r2.w = r5.x * r2.w;
    r2.w = trunc(r2.w);
    r2.w = r2.w + r1.x;
    r11.x = r2.w / columnCount2;
    r2.w = trunc(r3.w);
    r2.w = r2.w + r1.y;
    r11.y = r2.w / rowCount2;
  } else {
    r2.w = dot(-v6.xyz, -v6.xyz);
    r2.w = rsqrt(r2.w);
    r12.xyz = -v6.xyz * r2.www;
    r13.x = dot(r12.xyz, r6.xyz);
    r13.y = dot(r12.xyz, r7.xyz);
    r2.w = dot(r12.xyz, r5.yzw);
    r3.w = cmp(0 < r2.w);
    r8.zw = -r13.xy / r2.ww;
    r8.zw = r3.ww ? r8.zw : 0;
    r9.zw = float2(-0.5,-0.5) + r1.xy;
    r2.w = 9.99999975e-06 + layer2Depth;
    r8.zw = r8.zw * r2.ww;
    r8.zw = scaleUVs2.xy * r8.zw;
    r8.zw = r9.zw * scaleUVs2.xy + r8.zw;
    r8.zw = offsetUVs2.xy * scaleUVs2.xy + r8.zw;
    r2.w = rotateUVs2.y * gameTime.w + 1;
    r2.w = rotateUVs2.x * r2.w;
    r2.w = 0.0174532924 * r2.w;
    sincos(r2.w, r5.x, r12.x);
    r12.y = r12.x;
    r12.z = r5.x;
    r13.x = dot(r12.yz, r8.zw);
    r12.x = -r5.x;
    r13.y = dot(r12.xy, r8.zw);
    r8.zw = gameTime.ww * scrollUVs2.xy;
    r8.zw = r8.zw * scaleUVs2.xy + r13.xy;
    r2.w = gameTime.w * zoomRate2;
    r2.w = cos(r2.w);
    r2.w = r2.w * 0.5 + 0.5;
    r2.w = 1 + -r2.w;
    r3.w = zoomUVs2.y + -zoomUVs2.x;
    r2.w = r2.w * r3.w + zoomUVs2.x;
    r8.zw = r8.zw / r2.ww;
    r8.zw = float2(0.5,0.5) + r8.zw;
    r9.zw = saturate(r8.zw);
    r11.x = clampU2 ? r9.z : r8.z;
    r11.y = clampV2 ? r9.w : r8.w;
  }
  r11.xyzw = emissiveMap2.Sample(colorSampler_s, r11.xy).xyzw;
  r11.xyz = emissiveTint2.xyz * r11.xyz;
  r2.w = hdrScale * r11.w;
  r11.xyz = r11.xyz * r2.www;
  r2.w = clampV2 + r0.z;
  r2.w = frac(r2.w);
  r12.y = gameTime.w * clampV2 + r2.w;
  r12.x = clampV2;
  r2.w = flickerLookupMap.SampleLevel(lookupSampler_s, r12.xy, 0).x;
  r2.w = log2(abs(r2.w));
  r2.w = flickerPower2 * r2.w;
  r2.w = exp2(r2.w);
  r3.w = flickerRange2.y + -flickerRange2.x;
  r2.w = r2.w * r3.w + flickerRange2.x;
  r11.xyz = r11.xyz * r2.www;
  r2.w = 1 + -r11.w;
  r10.xyz = r10.xyz * r2.www + r11.xyz;
  r2.w = cmp(0.5 < uvMotionToggle3);
  if (r2.w != 0) {
    r2.w = columnCount3 * rowCount3;
    r3.w = imageTime3 * r2.w;
    r5.x = gameTime.w * r3.w;
    r5.x = cmp(r5.x >= -r5.x);
    r5.x = r5.x ? r3.w : -r3.w;
    r6.w = 1 / r5.x;
    r6.w = gameTime.w * r6.w;
    r6.w = frac(r6.w);
    r5.x = r6.w * r5.x;
    r3.w = r5.x / r3.w;
    r2.w = r3.w * r2.w;
    r2.w = round(r2.w);
    r3.w = r2.w / columnCount3;
    r5.x = columnCount3 * r2.w;
    r5.x = cmp(r5.x >= -r5.x);
    r5.x = r5.x ? columnCount3 : -columnCount3;
    r6.w = 1 / r5.x;
    r2.w = r6.w * r2.w;
    r2.w = frac(r2.w);
    r2.w = r5.x * r2.w;
    r2.w = trunc(r2.w);
    r2.w = r2.w + r1.x;
    r11.x = r2.w / columnCount3;
    r2.w = trunc(r3.w);
    r2.w = r2.w + r1.y;
    r11.y = r2.w / rowCount3;
  } else {
    r2.w = dot(-v6.xyz, -v6.xyz);
    r2.w = rsqrt(r2.w);
    r12.xyz = -v6.xyz * r2.www;
    r6.x = dot(r12.xyz, r6.xyz);
    r6.y = dot(r12.xyz, r7.xyz);
    r2.w = dot(r12.xyz, r5.yzw);
    r3.w = cmp(0 < r2.w);
    r5.xy = -r6.xy / r2.ww;
    r5.xy = r3.ww ? r5.xy : 0;
    r1.xy = float2(-0.5,-0.5) + r1.xy;
    r2.w = 9.99999975e-06 + layer3Depth;
    r5.xy = r5.xy * r2.ww;
    r5.xy = scaleUVs3.xy * r5.xy;
    r1.xy = r1.xy * scaleUVs3.xy + r5.xy;
    r1.xy = offsetUVs3.xy * scaleUVs3.xy + r1.xy;
    r2.w = rotateUVs3.y * gameTime.w + 1;
    r2.w = rotateUVs3.x * r2.w;
    r2.w = 0.0174532924 * r2.w;
    sincos(r2.w, r5.x, r6.x);
    r6.y = r6.x;
    r6.z = r5.x;
    r7.x = dot(r6.yz, r1.xy);
    r6.x = -r5.x;
    r7.y = dot(r6.xy, r1.xy);
    r1.xy = gameTime.ww * scrollUVs3.xy;
    r1.xy = r1.xy * scaleUVs3.xy + r7.xy;
    r2.w = gameTime.w * zoomRate3;
    r2.w = cos(r2.w);
    r2.w = r2.w * 0.5 + 0.5;
    r2.w = 1 + -r2.w;
    r3.w = zoomUVs3.y + -zoomUVs3.x;
    r2.w = r2.w * r3.w + zoomUVs3.x;
    r1.xy = r1.xy / r2.ww;
    r1.xy = float2(0.5,0.5) + r1.xy;
    r5.xy = saturate(r1.xy);
    r11.x = clampU3 ? r5.x : r1.x;
    r11.y = clampV3 ? r5.y : r1.y;
  }
  r5.xyzw = emissiveMap3.Sample(colorSampler_s, r11.xy).xyzw;
  r5.xyz = emissiveTint3.xyz * r5.xyz;
  r1.x = hdrScale * r5.w;
  r5.xyz = r5.xyz * r1.xxx;
  r0.z = clampV3 + r0.z;
  r0.z = frac(r0.z);
  r1.y = gameTime.w * clampV3 + r0.z;
  r1.x = clampV3;
  r0.z = flickerLookupMap.SampleLevel(lookupSampler_s, r1.xy, 0).x;
  r0.z = log2(abs(r0.z));
  r0.z = flickerPower3 * r0.z;
  r0.z = exp2(r0.z);
  r1.x = flickerRange3.y + -flickerRange3.x;
  r0.z = r0.z * r1.x + flickerRange3.x;
  r5.xyz = r5.xyz * r0.zzz;
  r0.z = 1 + -r5.w;
  r5.xyz = r10.xyz * r0.zzz + r5.xyz;
  r5.xyz = r5.xyz * r1.www;
  r0.z = dot(-v6.xyz, -v6.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyw = -v6.xyz * r0.zzz;
  r2.w = cmp(isDepthHack != 0);
  r6.xy = (uint2)r8.yx;
  r3.w = dot(r6.yx, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r7.x, r10.x);
  r3.w = dot(r6.xy, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r6.x, r11.x);
  r9.x = saturate(dot(r4.xyz, r1.xyw));
  r3.w = dot(-r1.xyw, r4.xyz);
  r3.w = r3.w + r3.w;
  r12.xyz = r4.xyz * -r3.www + -r1.xyw;
  r3.w = 17 * r9.y;
  r3.w = exp2(r3.w);
  r3.w = 2 + r3.w;
  r3.w = 2 / r3.w;
  r6.y = sqrt(r3.w);
  r6.z = 1 + -r9.y;
  r6.w = 5 * r6.z;
  r7.z = r6.z * 5 + -2.5;
  r7.z = saturate(0.400000006 * r7.z);
  r7.z = 100 * r7.z;
  r8.zw = -r6.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r8.z);
  r7.w = r9.x * r7.w;
  r7.w = 9.1368103 * r7.w;
  r8.z = r6.w * r6.z;
  r8.z = -r8.z * 2.0159049 + r8.w;
  r8.z = exp2(r8.z);
  r8.z = r9.x * r8.z;
  r8.z = 9.70808983 * r8.z;
  r7.w = max(r8.z, r7.w);
  r7.w = max(1.26815999, r7.w);
  r1.z = 0.0078125 * r1.z;
  r1.z = min(15, r1.z);
  r1.z = (uint)r1.z;
  r8.xy = (uint2)r8.xy >> int2(6,6);
  r8.z = (uint)r1.z << 4;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r1.z = 0;
  r8.w = 0;
  while (true) {
    r9.z = cmp((uint)r8.w >= numRefProbes);
    if (r9.z != 0) break;
    r13.z = (uint)r8.w >> 5;
    r14.xyz = (int3)r8.xyz + (int3)r13.xyz;
    r9.z = visibleProbes.Load(r14.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r8.w, l(0), t15.wxyz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r8.w, l(16), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r8.w, l(32), t15.yxwz
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r8.w, l(48), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r8.w, l(64), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r8.w, l(80), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.yz, r8.w, l(96), t15.xxyx
  r11.y = samp0[]..swiz;
  r11.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r8.w, l(116), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r8.w, l(132), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(148), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(164), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(180), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(196), t15.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r8.w, l(212), t15.xyxx
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
    r14.xyz = v6.xyz + -r22.yzw;
    r9.w = dot(r14.xyz, r14.xyz);
    r9.w = sqrt(r9.w);
    r9.w = cmp(probeDebugRadius >= r9.w);
    r10.w = (int)r28.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(0), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(16), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(32), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(48), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(64), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(80), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
    r11.w = dot(r35.xyz, r14.xyz);
    r11.w = saturate(r11.w + r35.w);
    r13.z = dot(r36.xyz, r14.xyz);
    r13.z = saturate(r13.z + r36.w);
    r11.w = r13.z * r11.w;
    r13.z = dot(r37.xyz, r14.xyz);
    r13.z = saturate(r13.z + r37.w);
    r11.w = r13.z * r11.w;
    r13.z = dot(r38.xyz, r14.xyz);
    r13.z = saturate(r13.z + r38.w);
    r11.w = r13.z * r11.w;
    r13.z = dot(r39.xyz, r14.xyz);
    r13.z = saturate(r13.z + r39.w);
    r11.w = r13.z * r11.w;
    r13.z = dot(r40.xyz, r14.xyz);
    r13.z = saturate(r13.z + r40.w);
    r15.x = r13.z * r11.w;
    r11.w = (int)r11.y & 1;
    r13.zw = r11.ww ? r15.xy : r15.zx;
    r35.xy = r28.zw;
    r35.z = r29.z;
    r11.w = dot(r12.xyz, r35.xyz);
    r15.x = dot(r14.xyz, r35.xyz);
    r15.x = r15.x + -r29.w;
    r15.w = cmp(r15.x >= 0);
    r15.x = max(abs(r15.x), r7.z);
    r15.x = r15.w ? r15.x : -r15.x;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r15.x / r11.w;
    r11.w = min(131072, abs(r11.w));
    r29.z = r30.z;
    r15.x = dot(r12.xyz, r29.xyz);
    r15.w = dot(r14.xyz, r29.xyz);
    r15.w = r15.w + -r30.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r7.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r15.x = max(1.00000001e-07, -r15.x);
    r15.x = r15.w / r15.x;
    r11.w = min(abs(r15.x), r11.w);
    r30.z = r31.z;
    r15.x = dot(r12.xyz, r30.xyz);
    r15.w = dot(r14.xyz, r30.xyz);
    r15.w = r15.w + -r31.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r7.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r15.x = max(1.00000001e-07, -r15.x);
    r15.x = r15.w / r15.x;
    r11.w = min(abs(r15.x), r11.w);
    r31.z = r32.z;
    r15.x = dot(r12.xyz, r31.xyz);
    r15.w = dot(r14.xyz, r31.xyz);
    r15.w = r15.w + -r32.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r7.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r15.x = max(1.00000001e-07, -r15.x);
    r15.x = r15.w / r15.x;
    r11.w = min(abs(r15.x), r11.w);
    r32.z = r33.x;
    r15.x = dot(r12.xyz, r32.xyz);
    r15.w = dot(r14.xyz, r32.xyz);
    r15.w = r15.w + -r33.y;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r7.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r15.x = max(1.00000001e-07, -r15.x);
    r15.x = r15.w / r15.x;
    r11.w = min(abs(r15.x), r11.w);
    r34.zw = r33.zw;
    r15.x = dot(r12.zxy, r34.xzw);
    r15.w = dot(r14.zxy, r34.xzw);
    r15.w = r15.w + -r34.y;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r7.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r15.x = max(1.00000001e-07, -r15.x);
    r15.x = r15.w / r15.x;
    r11.w = min(abs(r15.x), r11.w);
    r29.x = r25.w;
    r29.yz = r26.zw;
    r29.xyz = r29.xyz + r14.xyz;
    r29.xyz = r12.xyz * r11.www + r29.xyz;
    r15.x = dot(r29.xyz, r29.xyz);
    r15.x = sqrt(r15.x);
    r11.w = r11.w / r15.x;
    r11.w = r11.w + r11.w;
    r11.w = sqrt(r11.w);
    r11.w = r6.z * 5 + r11.w;
    r11.w = -0.844799995 + r11.w;
    r22.y = r23.z;
    r22.z = r24.x;
    r30.x = dot(r29.xyz, r22.xyz);
    r31.xy = r23.xw;
    r31.z = r24.w;
    r30.y = dot(r29.xyz, r31.xyz);
    r24.x = r23.y;
    r30.z = dot(r29.xyz, r24.xyz);
    if (6 == 0) r15.x = 0; else if (6+25 < 32) {     r15.x = (uint)r28.y << (32-(6 + 25)); r15.x = (uint)r15.x >> (32-6);    } else r15.x = (uint)r28.y >> 25;
    if (9 == 0) r15.w = 0; else if (9+16 < 32) {     r15.w = (uint)r28.y << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);    } else r15.w = (uint)r28.y >> 16;
    r30.w = (uint)r15.w;
    r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r11.w).xyz;
    r28.yzw = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r28.z | (int)r28.y;
    r11.w = (int)r28.w | (int)r11.w;
    r23.xyz = r11.www ? float3(1,1,0) : r23.xyz;
    r29.x = dot(r14.xyz, r22.xyz);
    r29.y = dot(r14.xyz, r31.xyz);
    r29.z = dot(r14.xyz, r24.xyz);
    r25.xyz = saturate(r29.xyz * r25.xyz + float3(0.5,0.5,0.5));
    r26.z = r27.x;
    r25.xyz = r25.xyz * r26.xyz + r27.yzw;
    r30.x = dot(r4.xyz, r22.xyz);
    r30.y = dot(r4.xyz, r31.xyz);
    r30.z = dot(r4.xyz, r24.xyz);
    r22.xyz = cmp(float3(0,0,0) < r30.xyz);
    r16.z = r22.x ? 0 : 0.5;
    r24.xyz = r25.xyz + r16.xyz;
    r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r17.z = r22.y ? 0 : 0.5;
    r22.xyw = r25.xyz + r17.xyz;
    r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
    r18.z = r22.z ? 0 : 0.5;
    r25.xyz = r25.xyz + r18.xyz;
    r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r26.xyz = r30.xyz * r30.xyz;
    r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
    r28.yzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r28.z | (int)r28.y;
    r11.w = (int)r28.w | (int)r11.w;
    r27.xyz = r11.www ? float3(1,1,0) : r27.xyz;
    r29.xyzw = r20.xyzw;
    r28.yzw = r21.yzw;
    r11.w = r1.z;
    r15.w = r9.z;
    while (true) {
      if (r15.w == 0) break;
      r16.z = firstbitlow((uint)r15.w);
      r16.z = 1 << (int)r16.z;
      r16.w = (int)r15.w & (int)r16.z;
      if (r16.w != 0) {
        r16.z = ~(int)r16.z;
        r15.w = (int)r15.w & (int)r16.z;
        if (r9.w != 0) {
          r16.z = r11.y;
          r30.xy = r13.zw;
          r16.w = 1;
          while (true) {
            r17.z = cmp((int)r16.w >= (int)r15.x);
            if (r17.z != 0) break;
            r17.z = (int)r10.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.z, l(0), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(16), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(32), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(48), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(64), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r17.z, l(80), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
            r17.z = dot(r31.xyz, r14.xyz);
            r17.z = saturate(r17.z + r31.w);
            r17.z = r30.x * r17.z;
            r17.w = dot(r32.xyz, r14.xyz);
            r17.w = saturate(r17.w + r32.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r33.xyz, r14.xyz);
            r17.w = saturate(r17.w + r33.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r34.xyz, r14.xyz);
            r17.w = saturate(r17.w + r34.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r35.xyz, r14.xyz);
            r17.w = saturate(r17.w + r35.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r36.xyz, r14.xyz);
            r17.w = saturate(r17.w + r36.w);
            r30.x = r17.z * r17.w;
            r18.z = (uint)r16.z >> 2;
            if (1 == 0) r18.w = 0; else if (1+2 < 32) {             r18.w = (uint)r16.z << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);            } else r18.w = (uint)r16.z >> 2;
            r19.z = (int)r18.z & 2;
            r19.w = max(r30.y, r30.x);
            r17.z = -r17.z * r17.w + 1;
            r17.z = r30.y * r17.z;
            r19.y = r19.z ? r17.z : r19.w;
            r30.xy = r18.ww ? r30.xy : r19.xy;
            r16.w = (int)r16.w + 1;
            r16.z = r18.z;
          }
          r30.y = saturate(r30.y);
          r16.z = r30.y * r11.z;
          r16.w = cmp(0 < r16.z);
          if (r16.w != 0) {
            r31.z = r30.y * r11.z + r28.w;
            r16.z = r16.z * r28.x;
            r19.yzw = r26.xyz * r16.zzz;
            r30.xzw = r22.xyw * r19.zzz;
            r30.xzw = r24.xyz * r19.yyy + r30.xzw;
            r19.yzw = r25.xyz * r19.www + r30.xzw;
            r30.xzw = r19.yzw * r27.xyz;
            r16.w = dot(r30.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r32.xyz = r19.yzw * r27.xyz + r29.xyz;
            r17.z = r16.w * r7.w;
            r19.yzw = r23.xyz * r16.zzz;
            r16.z = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r16.z = r7.w * r16.w + r16.z;
            r16.z = r17.z / r16.z;
            r33.x = r29.w;
            r33.yz = r28.yz;
            r31.xyw = r19.zwy * r16.zzz + r33.yzx;
            r32.w = r31.w;
          } else {
            r32.xyzw = r29.xyzw;
            r31.xyz = r28.yzw;
          }
          r11.w = -1;
          r29.xyzw = r32.xyzw;
          r28.yzw = r31.xyz;
          break;
        }
      }
    }
    if (r11.w != 0) {
      r20.xyzw = r29.xyzw;
      r21.yzw = r28.yzw;
      r1.z = -1;
      break;
    }
    r8.w = (int)r8.w + 32;
    r20.xyzw = r29.xyzw;
    r21.yzw = r28.yzw;
    r1.z = r11.w;
  }
  if (r1.z == 0) {
    r1.z = numRefProbes + -numOverrideProbes;
    r8.w = (int)r1.z & -32;
    r9.z = (int)r1.z + (int)-r8.w;
    r9.w = numRefProbes & -32;
    r10.w = (int)-r9.w + numRefProbes;
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.xyzw = r20.xyzw;
    r23.yzw = r21.yzw;
    r11.y = r8.w;
    while (true) {
      r11.z = cmp((uint)r11.y >= numRefProbes);
      if (r11.z != 0) break;
      r13.z = (uint)r11.y >> 5;
      r14.xyz = (int3)r8.xyz + (int3)r13.xyz;
      r11.z = visibleProbes.Load(r14.xyzw).x;
      r11.w = cmp((int)r8.w == (int)r11.y);
      bitmask.z = ((~(-1 << r9.z)) << 0) & 0xffffffff;  r13.z = (((uint)0 << 0) & bitmask.z) | ((uint)r11.z & ~bitmask.z);
      r11.z = r11.w ? r13.z : r11.z;
      r11.w = cmp((int)r9.w == (int)r11.y);
      if (r10.w == 0) r13.z = 0; else if (r10.w+0 < 32) {       r13.z = (uint)r11.z << (32-(r10.w + 0)); r13.z = (uint)r13.z >> (32-r10.w);      } else r13.z = (uint)r11.z >> 0;
      r11.z = r11.w ? r13.z : r11.z;
      r11.w = (int)r11.y + numLights;
      r24.xyzw = r22.xyzw;
      r25.xyz = r23.yzw;
      r13.z = r11.z;
      while (true) {
        if (r13.z == 0) break;
        r13.w = firstbitlow((uint)r13.z);
        r14.x = 1 << (int)r13.w;
        r14.y = (int)r13.z & (int)r14.x;
        if (r14.y != 0) {
          r13.z = (int)r13.z ^ (int)r14.x;
          r14.x = (int)r11.w + (int)r13.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r14.x, l(0), t11.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r14.x, l(16), t11.xyxx
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
          r26.xyz = -v6.xyz + r26.xyz;
          r14.z = r26.w;
          r14.xyz = cmp(abs(r26.xyz) < r14.zxy);
          r14.x = r14.y ? r14.x : 0;
          r14.x = r14.z ? r14.x : 0;
          if (r14.x != 0) {
            r13.w = (int)r11.y + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(0), t15.wxyz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xy, r13.w, l(96), t15.xyxx
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r28.xyz = v6.xyz + -r26.yzw;
            r14.z = (int)r27.w & 0x0000ffff;
            if (6 == 0) r15.w = 0; else if (6+25 < 32) {             r15.w = (uint)r27.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);            } else r15.w = (uint)r27.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.z, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.z, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.z, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.z, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.z, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r14.z, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r16.w = dot(r29.xyz, r28.xyz);
            r16.w = saturate(r16.w + r29.w);
            r17.z = dot(r30.xyz, r28.xyz);
            r17.z = saturate(r17.z + r30.w);
            r16.w = r17.z * r16.w;
            r17.z = dot(r31.xyz, r28.xyz);
            r17.z = saturate(r17.z + r31.w);
            r16.w = r17.z * r16.w;
            r17.z = dot(r32.xyz, r28.xyz);
            r17.z = saturate(r17.z + r32.w);
            r16.w = r17.z * r16.w;
            r17.z = dot(r33.xyz, r28.xyz);
            r17.z = saturate(r17.z + r33.w);
            r16.w = r17.z * r16.w;
            r17.z = dot(r34.xyz, r28.xyz);
            r17.z = saturate(r17.z + r34.w);
            r15.x = r17.z * r16.w;
            r16.w = r14.x ? 0.000000 : 0;
            r17.zw = r16.ww ? r15.xy : r15.zx;
            r15.x = r14.x;
            r29.xy = r17.zw;
            r16.w = 1;
            while (true) {
              r18.w = cmp((int)r16.w >= (int)r15.w);
              if (r18.w != 0) break;
              r18.w = (int)r14.z + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r18.w = dot(r30.xyz, r28.xyz);
              r18.w = saturate(r18.w + r30.w);
              r18.w = r29.x * r18.w;
              r19.w = dot(r31.xyz, r28.xyz);
              r19.w = saturate(r19.w + r31.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r32.xyz, r28.xyz);
              r19.w = saturate(r19.w + r32.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r33.xyz, r28.xyz);
              r19.w = saturate(r19.w + r33.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r34.xyz, r28.xyz);
              r19.w = saturate(r19.w + r34.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r35.xyz, r28.xyz);
              r19.w = saturate(r19.w + r35.w);
              r29.x = r19.w * r18.w;
              r26.w = (uint)r15.x >> 2;
              if (1 == 0) r28.w = 0; else if (1+2 < 32) {               r28.w = (uint)r15.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);              } else r28.w = (uint)r15.x >> 2;
              r29.z = (int)r26.w & 2;
              r29.w = max(r29.y, r29.x);
              r18.w = -r18.w * r19.w + 1;
              r18.w = r29.y * r18.w;
              r17.y = r29.z ? r18.w : r29.w;
              r29.xy = r28.ww ? r29.xy : r17.xy;
              r16.w = (int)r16.w + 1;
              r15.x = r26.w;
            }
            r29.y = saturate(r29.y);
            r14.x = r29.y * r14.y;
            r14.z = cmp(0 < r14.x);
            if (r14.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(16), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r13.w, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r25.z = r29.y * r14.y + r25.z;
              r13.w = r14.x * r27.z;
              r27.z = r35.z;
              r14.x = dot(r12.xyz, r27.xyz);
              r14.y = dot(r28.xyz, r27.xyz);
              r14.y = r14.y + -r35.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r7.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.y / r14.x;
              r14.x = min(131072, abs(r14.x));
              r35.z = r36.z;
              r14.y = dot(r12.xyz, r35.xyz);
              r14.z = dot(r28.xyz, r35.xyz);
              r14.z = r14.z + -r36.w;
              r15.x = cmp(r14.z >= 0);
              r14.z = max(abs(r14.z), r7.z);
              r14.z = r15.x ? r14.z : -r14.z;
              r14.y = max(1.00000001e-07, -r14.y);
              r14.y = r14.z / r14.y;
              r14.x = min(r14.x, abs(r14.y));
              r36.z = r37.z;
              r14.y = dot(r12.xyz, r36.xyz);
              r14.z = dot(r28.xyz, r36.xyz);
              r14.z = r14.z + -r37.w;
              r15.x = cmp(r14.z >= 0);
              r14.z = max(abs(r14.z), r7.z);
              r14.z = r15.x ? r14.z : -r14.z;
              r14.y = max(1.00000001e-07, -r14.y);
              r14.y = r14.z / r14.y;
              r14.x = min(r14.x, abs(r14.y));
              r37.z = r38.z;
              r14.y = dot(r12.xyz, r37.xyz);
              r14.z = dot(r28.xyz, r37.xyz);
              r14.z = r14.z + -r38.w;
              r15.x = cmp(r14.z >= 0);
              r14.z = max(abs(r14.z), r7.z);
              r14.z = r15.x ? r14.z : -r14.z;
              r14.y = max(1.00000001e-07, -r14.y);
              r14.y = r14.z / r14.y;
              r14.x = min(r14.x, abs(r14.y));
              r38.z = r39.x;
              r14.y = dot(r12.xyz, r38.xyz);
              r14.z = dot(r28.xyz, r38.xyz);
              r14.z = r14.z + -r39.y;
              r15.x = cmp(r14.z >= 0);
              r14.z = max(abs(r14.z), r7.z);
              r14.z = r15.x ? r14.z : -r14.z;
              r14.y = max(1.00000001e-07, -r14.y);
              r14.y = r14.z / r14.y;
              r14.x = min(r14.x, abs(r14.y));
              r40.zw = r39.zw;
              r14.y = dot(r12.zxy, r40.xzw);
              r14.z = dot(r28.zxy, r40.xzw);
              r14.z = r14.z + -r40.y;
              r15.x = cmp(r14.z >= 0);
              r14.z = max(abs(r14.z), r7.z);
              r14.z = r15.x ? r14.z : -r14.z;
              r14.y = max(1.00000001e-07, -r14.y);
              r14.y = r14.z / r14.y;
              r14.x = min(r14.x, abs(r14.y));
              r27.x = r32.w;
              r27.yz = r33.zw;
              r17.yzw = r27.xyz + r28.xyz;
              r17.yzw = r12.xyz * r14.xxx + r17.yzw;
              r14.y = dot(r17.yzw, r17.yzw);
              r14.y = sqrt(r14.y);
              r14.x = r14.x / r14.y;
              r14.x = r14.x + r14.x;
              r14.x = sqrt(r14.x);
              r14.x = r6.z * 5 + r14.x;
              r14.x = -0.844799995 + r14.x;
              r26.y = r30.z;
              r26.z = r31.x;
              r35.x = dot(r17.yzw, r26.xyz);
              r27.xy = r30.xw;
              r27.z = r31.w;
              r35.y = dot(r17.yzw, r27.xyz);
              r31.x = r30.y;
              r35.z = dot(r17.yzw, r31.xyz);
              if (9 == 0) r14.y = 0; else if (9+16 < 32) {               r14.y = (uint)r27.w << (32-(9 + 16)); r14.y = (uint)r14.y >> (32-9);              } else r14.y = (uint)r27.w >> 16;
              r35.w = (uint)r14.y;
              r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r14.x).xyz;
              r17.yzw = (int3)r14.xyz & int3(-2147483648,-2147483648,-2147483648);
              r17.yzw = cmp((int3)r17.yzw == int3(2139095040,2139095040,2139095040));
              r15.x = (int)r17.z | (int)r17.y;
              r15.x = (int)r17.w | (int)r15.x;
              r14.xyz = r15.xxx ? float3(1,1,0) : r14.xyz;
              r30.x = dot(r28.xyz, r26.xyz);
              r30.y = dot(r28.xyz, r27.xyz);
              r30.z = dot(r28.xyz, r31.xyz);
              r17.yzw = saturate(r30.xyz * r32.xyz + float3(0.5,0.5,0.5));
              r33.z = r34.x;
              r17.yzw = r17.yzw * r33.xyz + r34.yzw;
              r35.x = dot(r4.xyz, r26.xyz);
              r35.y = dot(r4.xyz, r27.xyz);
              r35.z = dot(r4.xyz, r31.xyz);
              r26.xyz = cmp(float3(0,0,0) < r35.xyz);
              r16.z = r26.x ? 0 : 0.5;
              r27.xyz = r17.yzw + r16.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r28.xyz = r35.xyz * r35.xyz;
              r28.xyz = r28.xyz * r13.www;
              r18.z = r26.y ? 0 : 0.5;
              r26.xyw = r18.xyz + r17.yzw;
              r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
              r26.xyw = r26.xyw * r28.yyy;
              r26.xyw = r27.xyz * r28.xxx + r26.xyw;
              r19.z = r26.z ? 0 : 0.5;
              r17.yzw = r19.xyz + r17.yzw;
              r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
              r17.yzw = r17.yzw * r28.zzz + r26.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
              r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
              r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
              r15.x = (int)r27.y | (int)r27.x;
              r15.x = (int)r27.z | (int)r15.x;
              r26.xyz = r15.xxx ? float3(1,1,0) : r26.xyz;
              r27.xyz = r26.xyz * r17.yzw;
              r15.x = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.xyz = r17.yzw * r26.xyz + r24.xyz;
              r15.w = r15.x * r7.w;
              r14.xyz = r14.xyz * r13.www;
              r13.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r13.w = r7.w * r15.x + r13.w;
              r13.w = r15.w / r13.w;
              r26.x = r24.w;
              r26.yz = r25.xy;
              r25.xyw = r14.yzx * r13.www + r26.yzx;
              r24.w = r25.w;
            }
          }
        }
      }
      r22.xyzw = r24.xyzw;
      r23.yzw = r25.xyz;
      r11.y = (int)r11.y + 32;
    }
    r9.w = cmp(r23.w < 1);
    if (r9.w != 0) {
      r13.xy = float2(0,0);
      r14.w = 0;
      r15.yz = float2(0,1);
      r16.xy = float2(0,0);
      r17.x = 1;
      r18.xy = float2(0,0);
      r19.xy = float2(0,0);
      r24.x = r22.w;
      r24.yzw = r23.yzw;
      r11.yzw = r22.xyz;
      r9.w = r23.w;
      r10.w = 0;
      while (true) {
        r13.w = cmp((uint)r10.w >= (uint)r1.z);
        if (r13.w != 0) break;
        r13.z = (uint)r10.w >> 5;
        r14.xyz = (int3)r8.xyz + (int3)r13.xyz;
        r13.z = visibleProbes.Load(r14.xyzw).x;
        r13.w = cmp((int)r8.w == (int)r10.w);
        if (r9.z == 0) r14.x = 0; else if (r9.z+0 < 32) {         r14.x = (uint)r13.z << (32-(r9.z + 0)); r14.x = (uint)r14.x >> (32-r9.z);        } else r14.x = (uint)r13.z >> 0;
        r13.z = r13.w ? r14.x : r13.z;
        r13.w = (int)r10.w + numLights;
        r25.xyzw = r24.xyzw;
        r14.xyz = r11.yzw;
        r15.w = r9.w;
        r16.w = r13.z;
        while (true) {
          if (r16.w == 0) break;
          r17.z = firstbitlow((uint)r16.w);
          r17.w = 1 << (int)r17.z;
          r18.w = (int)r16.w & (int)r17.w;
          if (r18.w != 0) {
            r16.w = (int)r16.w ^ (int)r17.w;
            r17.w = (int)r13.w + (int)r17.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r17.w, l(0), t11.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xy, r17.w, l(16), t11.xyxx
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
            r26.xyz = -v6.xyz + r26.xyz;
            r27.z = r26.w;
            r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
            r17.w = r26.y ? r26.x : 0;
            r17.w = r26.z ? r17.w : 0;
            if (r17.w != 0) {
              r17.z = (int)r10.w + (int)r17.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r17.z, l(0), t15.wxyz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xy, r17.z, l(96), t15.xyxx
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r17.z, l(116), t15.zwxy
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
              r29.xyz = v6.xyz + -r26.yzw;
              r17.w = (int)r28.w & 0x0000ffff;
              if (6 == 0) r18.w = 0; else if (6+25 < 32) {               r18.w = (uint)r28.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);              } else r18.w = (uint)r28.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r19.w = dot(r30.xyz, r29.xyz);
              r19.w = saturate(r19.w + r30.w);
              r21.w = dot(r31.xyz, r29.xyz);
              r21.w = saturate(r21.w + r31.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r32.xyz, r29.xyz);
              r21.w = saturate(r21.w + r32.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r33.xyz, r29.xyz);
              r21.w = saturate(r21.w + r33.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r34.xyz, r29.xyz);
              r21.w = saturate(r21.w + r34.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r35.xyz, r29.xyz);
              r21.w = saturate(r21.w + r35.w);
              r15.x = r21.w * r19.w;
              r19.w = (int)r27.x & 1;
              r27.zw = r19.ww ? r15.xy : r15.zx;
              r15.x = r27.x;
              r30.xy = r27.zw;
              r19.w = 1;
              while (true) {
                r21.w = cmp((int)r19.w >= (int)r18.w);
                if (r21.w != 0) break;
                r21.w = (int)r17.w + (int)r19.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r21.w, l(0), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r21.w, l(16), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r21.w, l(32), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r21.w, l(48), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r21.w, l(64), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r21.w, l(80), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
                r21.w = dot(r31.xyz, r29.xyz);
                r21.w = saturate(r21.w + r31.w);
                r21.w = r30.x * r21.w;
                r26.w = dot(r32.xyz, r29.xyz);
                r26.w = saturate(r26.w + r32.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r33.xyz, r29.xyz);
                r26.w = saturate(r26.w + r33.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r34.xyz, r29.xyz);
                r26.w = saturate(r26.w + r34.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r35.xyz, r29.xyz);
                r26.w = saturate(r26.w + r35.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r36.xyz, r29.xyz);
                r26.w = saturate(r26.w + r36.w);
                r30.x = r26.w * r21.w;
                r29.w = (uint)r15.x >> 2;
                if (1 == 0) r30.z = 0; else if (1+2 < 32) {                 r30.z = (uint)r15.x << (32-(1 + 2)); r30.z = (uint)r30.z >> (32-1);                } else r30.z = (uint)r15.x >> 2;
                r30.w = (int)r29.w & 2;
                r31.x = max(r30.y, r30.x);
                r21.w = -r21.w * r26.w + 1;
                r21.w = r30.y * r21.w;
                r17.y = r30.w ? r21.w : r31.x;
                r30.xy = r30.zz ? r30.xy : r17.xy;
                r19.w = (int)r19.w + 1;
                r15.x = r29.w;
              }
              r15.x = saturate(r30.y + -r15.w);
              r17.y = r15.x * r27.y;
              r17.w = cmp(0 < r17.y);
              if (r17.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r17.z, l(16), t15.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(32), t15.yxwz
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(48), t15.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(64), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(80), t15.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r17.z, l(132), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r17.z, l(148), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r17.z, l(164), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r17.z, l(180), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r17.z, l(196), t15.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r17.z, l(212), t15.xyxx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
                r25.w = r15.x * r27.y + r25.w;
                r15.x = r17.y * r28.z;
                r28.z = r36.z;
                r17.y = dot(r12.xyz, r28.xyz);
                r17.z = dot(r29.xyz, r28.xyz);
                r17.z = r17.z + -r36.w;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r7.z);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r17.y = min(131072, abs(r17.y));
                r36.z = r37.z;
                r17.z = dot(r12.xyz, r36.xyz);
                r17.w = dot(r29.xyz, r36.xyz);
                r17.w = r17.w + -r37.w;
                r18.w = cmp(r17.w >= 0);
                r17.w = max(abs(r17.w), r7.z);
                r17.w = r18.w ? r17.w : -r17.w;
                r17.z = max(1.00000001e-07, -r17.z);
                r17.z = r17.w / r17.z;
                r17.y = min(r17.y, abs(r17.z));
                r37.z = r38.z;
                r17.z = dot(r12.xyz, r37.xyz);
                r17.w = dot(r29.xyz, r37.xyz);
                r17.w = r17.w + -r38.w;
                r18.w = cmp(r17.w >= 0);
                r17.w = max(abs(r17.w), r7.z);
                r17.w = r18.w ? r17.w : -r17.w;
                r17.z = max(1.00000001e-07, -r17.z);
                r17.z = r17.w / r17.z;
                r17.y = min(r17.y, abs(r17.z));
                r38.z = r39.z;
                r17.z = dot(r12.xyz, r38.xyz);
                r17.w = dot(r29.xyz, r38.xyz);
                r17.w = r17.w + -r39.w;
                r18.w = cmp(r17.w >= 0);
                r17.w = max(abs(r17.w), r7.z);
                r17.w = r18.w ? r17.w : -r17.w;
                r17.z = max(1.00000001e-07, -r17.z);
                r17.z = r17.w / r17.z;
                r17.y = min(r17.y, abs(r17.z));
                r39.z = r40.x;
                r17.z = dot(r12.xyz, r39.xyz);
                r17.w = dot(r29.xyz, r39.xyz);
                r17.w = r17.w + -r40.y;
                r18.w = cmp(r17.w >= 0);
                r17.w = max(abs(r17.w), r7.z);
                r17.w = r18.w ? r17.w : -r17.w;
                r17.z = max(1.00000001e-07, -r17.z);
                r17.z = r17.w / r17.z;
                r17.y = min(r17.y, abs(r17.z));
                r41.zw = r40.zw;
                r17.z = dot(r12.zxy, r41.xzw);
                r17.w = dot(r29.zxy, r41.xzw);
                r17.w = r17.w + -r41.y;
                r18.w = cmp(r17.w >= 0);
                r17.w = max(abs(r17.w), r7.z);
                r17.w = r18.w ? r17.w : -r17.w;
                r17.z = max(1.00000001e-07, -r17.z);
                r17.z = r17.w / r17.z;
                r17.y = min(r17.y, abs(r17.z));
                r27.x = r33.w;
                r27.yz = r34.zw;
                r27.xyz = r27.xyz + r29.xyz;
                r27.xyz = r12.xyz * r17.yyy + r27.xyz;
                r17.z = dot(r27.xyz, r27.xyz);
                r17.z = sqrt(r17.z);
                r17.y = r17.y / r17.z;
                r17.y = r17.y + r17.y;
                r17.y = sqrt(r17.y);
                r17.y = r6.z * 5 + r17.y;
                r17.y = -0.844799995 + r17.y;
                r26.y = r31.z;
                r26.z = r32.x;
                r36.x = dot(r27.xyz, r26.xyz);
                r28.xy = r31.xw;
                r28.z = r32.w;
                r36.y = dot(r27.xyz, r28.xyz);
                r32.x = r31.y;
                r36.z = dot(r27.xyz, r32.xyz);
                if (9 == 0) r17.z = 0; else if (9+16 < 32) {                 r17.z = (uint)r28.w << (32-(9 + 16)); r17.z = (uint)r17.z >> (32-9);                } else r17.z = (uint)r28.w >> 16;
                r36.w = (uint)r17.z;
                r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r17.y).xyz;
                r27.xyz = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
                r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
                r18.w = (int)r27.y | (int)r27.x;
                r18.w = (int)r27.z | (int)r18.w;
                r17.yzw = r18.www ? float3(1,1,0) : r17.yzw;
                r27.x = dot(r29.xyz, r26.xyz);
                r27.y = dot(r29.xyz, r28.xyz);
                r27.z = dot(r29.xyz, r32.xyz);
                r27.xyz = saturate(r27.xyz * r33.xyz + float3(0.5,0.5,0.5));
                r34.z = r35.x;
                r27.xyz = r27.xyz * r34.xyz + r35.yzw;
                r36.x = dot(r4.xyz, r26.xyz);
                r36.y = dot(r4.xyz, r28.xyz);
                r36.z = dot(r4.xyz, r32.xyz);
                r26.xyz = cmp(float3(0,0,0) < r36.xyz);
                r16.z = r26.x ? 0 : 0.5;
                r28.xyz = r27.xyz + r16.xyz;
                r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r29.xyz = r36.xyz * r36.xyz;
                r29.xyz = r29.xyz * r15.xxx;
                r18.z = r26.y ? 0 : 0.5;
                r26.xyw = r27.xyz + r18.xyz;
                r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
                r26.xyw = r26.xyw * r29.yyy;
                r26.xyw = r28.xyz * r29.xxx + r26.xyw;
                r19.z = r26.z ? 0 : 0.5;
                r27.xyz = r27.xyz + r19.xyz;
                r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r26.xyz = r27.xyz * r29.zzz + r26.xyw;
                r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
                r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r16.z = (int)r28.y | (int)r28.x;
                r16.z = (int)r28.z | (int)r16.z;
                r27.xyz = r16.zzz ? float3(1,1,0) : r27.xyz;
                r28.xyz = r27.xyz * r26.xyz;
                r16.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r14.xyz = r26.xyz * r27.xyz + r14.xyz;
                r18.z = r16.z * r7.w;
                r17.yzw = r17.yzw * r15.xxx;
                r15.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r15.x = r7.w * r16.z + r15.x;
                r15.x = r18.z / r15.x;
                r25.xyz = r17.yzw * r15.xxx + r25.xyz;
              }
            }
          }
        }
        r24.xyzw = r25.xyzw;
        r11.yzw = r14.xyz;
        r10.w = (int)r10.w + 32;
      }
      r23.xyzw = r24.zxyw;
      r22.xyz = r11.yzw;
      r23.xyzw = r23.yzxw;
    } else {
      r23.x = r22.w;
    }
    r1.z = max(1, r23.w);
    r1.z = rcp(r1.z);
    r23.w = saturate(r23.w);
    r20.xyz = r22.xyz * r1.zzz;
    r21.xyz = r23.xyz * r1.zzz;
    r6.z = cmp(r23.w < 0.99000001);
    if (r6.z != 0) {
      r6.z = 1 + -r23.w;
      r7.z = sunConstants.globalProbeExposure * r6.z;
      r11.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
      r13.x = globalProbeConstants.data[0].w * r11.y;
      r13.yz = globalProbeConstants.data[1].xy * r11.zw;
      r11.yzw = saturate(float3(0.5,0.5,0.5) + r13.xyz);
      r13.xy = globalProbeConstants.data[1].zw * r11.yz;
      r13.z = globalProbeConstants.data[2].x * r11.w;
      r11.yzw = globalProbeConstants.data[2].yzw + r13.xyz;
      r13.xyz = cmp(float3(0,0,0) < r4.xyz);
      r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r13.w = 0;
      r14.xyz = r13.wwx + r11.yzw;
      r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r15.xyz = r4.xyz * r4.xyz;
      r15.xyz = r15.xyz * r7.zzz;
      r16.xyz = r13.wwy + r11.yzw;
      r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r16.xyz = r16.xyz * r15.yyy;
      r14.xyz = r14.xyz * r15.xxx + r16.xyz;
      r11.yzw = r13.wwz + r11.yzw;
      r11.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.yzw, 0).xyz;
      r11.yzw = r11.yzw * r15.zzz + r14.xyz;
      r4.w = 0;
      r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r4.xyzw, 6).xyz;
      r11.yzw = r13.xyz * r11.yzw;
      r4.w = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r20.xyz = r22.xyz * r1.zzz + r11.yzw;
      r12.w = 0;
      r11.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r6.w).xyz;
      r1.z = sunConstants.globalProbeExposure * r6.z + -r4.w;
      r1.z = r9.y * r1.z + r4.w;
      r21.xyz = r11.yzw * r1.zzz + r21.xyz;
    }
  } else {
    r21.x = r20.w;
  }
  r1.z = r9.x + r0.w;
  r1.z = log2(abs(r1.z));
  r1.z = r6.y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z + r0.w;
  r1.z = saturate(-1 + r1.z);
  r13.xyz = r20.xyz * r0.www;
  r6.zw = r9.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r6.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r6.zw, 0).xy;
  r9.yzw = r21.xyz * r1.zzz;
  r14.xyz = r9.zwy * r6.zzz;
  r9.yzw = r9.yzw * r6.www;
  r0.w = sqrt(r6.y);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r1.z = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r4.w = r9.x * r0.w + r1.z;
  r0.w = r4.w * r0.w;
  r1.z = r4.w * r1.z;
  r4.w = dot(r4.xyz, sunConstants.wldDir.xyz);
  r6.z = saturate(r4.w);
  r6.w = cmp(0 >= r6.z);
  if (r6.w != 0) {
    r7.z = 0;
  }
  if (r6.w == 0) {
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r11.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.yzw;
    r11.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.yzw;
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.yzw;
    r6.w = -sunConstants.splitDepthOffset + r11.w;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r7.w = saturate(r6.w);
    r7.w = cmp(r6.w == r7.w);
    if (r7.w != 0) {
      r7.w = 0;
      r8.w = 0;
      while (true) {
        r10.w = cmp(r7.w >= 3);
        if (r10.w != 0) break;
        r10.w = (uint)r7.w;
        r15.xy = -sunConstants.splitPinTransform[r10.w].xy + r11.yz;
        r12.w = max(abs(r15.x), abs(r15.y));
        r8.w = sunConstants.splitPinTransform[r10.w].z * r12.w;
        r10.w = cmp(r8.w < 1);
        if (r10.w != 0) {
          break;
        }
        r7.w = 1 + r7.w;
        r8.w = 0;
      }
    } else {
      r7.w = 3;
      r8.w = 0;
    }
    r10.w = cmp(r7.w >= 3);
    if (r10.w != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r11.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r12.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r12.w = r12.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r12.w = (uint)r12.w;
      r12.w = (int)r12.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r12.w, l(0), t23.xxxx
    r15.w = samp0[]..swiz;
      r16.x = (int)r15.w & 0x40000000;
      r16.y = (uint)r15.w << 2;
      if (r16.x == 0) {
        r16.x = (int)r15.w & 0x01ffffff;
        r17.x = (int)r12.w + (int)r16.x;
        r12.w = (uint)r15.w >> 25;
        r12.w = (uint)r12.w;
        r15.xyz = r15.xyz * r12.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xz = (uint2)r15.zy >> int2(6,6);
        r12.w = (int)r17.z & 0xc0000000;
        r15.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.w = r16.z ? r17.z : r15.w;
        r16.z = (uint)r15.w >> 13;
        r15.w = r16.x ? r16.z : r15.w;
        r15.w = (int)r15.w & 8191;
        r18.x = (int)r15.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.xzw = r12.www ? r17.xyz : r18.xyz;
        r18.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r15.zy >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r15.w = (int)r16.w & 0xc0000000;
        r17.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r17.w = r19.y ? r16.w : r17.w;
        r18.y = (uint)r17.w >> 13;
        r17.w = r19.x ? r18.y : r17.w;
        r17.w = (int)r17.w & 8191;
        r18.x = (int)r16.x + (int)r17.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.xzw = r15.www ? r16.xzw : r18.xzw;
        r16.xzw = r12.www ? r17.xyz : r16.xzw;
        r12.w = (int)r16.w & 0xc0000000;
        if (r12.w == 0) {
          r12.w = (int)-r16.z + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r12.ww;
          r12.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r12.w = (uint)r12.w >> (uint)r15.w;
          r12.w = (int)r12.w & 1023;
          r17.x = (int)r12.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.zz + int2(1,2);
          r12.w = (int)-r17.y + 6;
          r18.xy = (uint2)r15.zy >> (uint2)r12.ww;
          r12.w = (int)r17.w & 0xc0000000;
          r15.w = (int)r17.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r18.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.z = (((uint)r18.x << 0) & bitmask.z) | ((uint)r16.z & ~bitmask.z);
          r16.z = (int)r16.z * 10;
          r15.w = (uint)r15.w >> (uint)r16.z;
          r15.w = (int)r15.w & 1023;
          r18.x = (int)r15.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r12.www ? r17.xyw : r18.xyz;
          r15.w = (int)-r18.y + 6;
          r17.yz = (uint2)r15.zy >> (uint2)r15.ww;
          r15.w = (int)r18.z & 0xc0000000;
          r16.z = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r16.z = (uint)r16.z >> (uint)r17.y;
          r16.z = (int)r16.z & 1023;
          r19.x = (int)r16.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r15.ww ? r18.xz : r19.xy;
          r16.xw = r12.ww ? r17.xw : r17.yz;
        }
        r12.w = (int)r16.w & 0xc0000000;
        if (r12.w == 0) {
          if (14 == 0) r15.w = 0; else if (14+15 < 32) {           r15.w = (uint)r16.w << (32-(14 + 15)); r15.w = (uint)r15.w >> (32-14);          } else r15.w = (uint)r16.w >> 15;
          r15.w = (uint)r15.w;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 6.10388815e-05 * r15.w;
          r17.xy = (int2)r16.ww & int2(32767,536870912);
          r16.z = (uint)r17.x;
          r16.z = sunConstants.sstLightingConstants.constants.spanInInches * r16.z;
          r16.z = 3.05185094e-05 * r16.z;
          r17.x = (int)r15.y & 3;
          r17.x = (int)r16.x + (int)r17.x;
          r17.x = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r17.x, l(0), t23.xxxx
        r17.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r15.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.x = (uint)r17.x >> (uint)r18.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r16.z;
          r15.x = r15.x * 0.00392156886 + r15.w;
          r15.y = (int)r18.y + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r18.z;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r16.z;
          r15.y = r15.y * 1.52590219e-05 + r15.w;
          r16.y = r17.y ? r15.x : r15.y;
        } else {
          r15.x = (int)r16.w & 0x80000000;
          r15.y = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.x = r15.x ? r15.y : 0;
          r15.y = (uint)r16.w << 2;
          r15.z = (uint)r15.x >> 16;
          r15.x = (int)r15.x & 0x0000ffff;
          r15.xz = f16tof32(r15.xz);
          r15.y = r11.y * r15.z + r15.y;
          r15.x = r11.z * r15.x + r15.y;
          r16.y = r12.w ? r15.x : r16.y;
        }
      }
      r11.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.w;
      r11.w = cmp(r16.y < r11.w);
      r7.z = r11.w ? 0 : 1;
    }
    if (r10.w == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r7.w;
        r15.xy = -sunConstants.splitPinTransform[r10.w].xy + r11.yz;
        r15.xy = sunConstants.splitPinTransform[r10.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r10.w + r7.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
        r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r10.w = r11.w + r10.w;
        r10.w = saturate(-1 + r10.w);
        r11.w = r10.w * r10.w;
        r7.z = r11.w * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r7.x;
        r10.w = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.w = (uint)r8.w;
        r16.xy = -sunConstants.splitPinTransform[r10.w].xy + r11.yz;
        r16.xy = sunConstants.splitPinTransform[r10.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = -sunConstants.splitPinTransform[r7.w].xy + r11.yz;
        r11.yz = sunConstants.splitPinTransform[r7.w].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r10.x;
        r15.z = r7.x;
        r11.w = 0;
        r12.w = 0;
        while (true) {
          r15.w = cmp((uint)r12.w >= 8);
          if (r15.w != 0) break;
          r15.w = cmp((uint)r8.w < (uint)r12.w);
          r16.zw = r15.ww ? r11.yz : r16.xy;
          r17.x = r15.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r10.w].w;
          r15.w = r15.w ? r7.w : r10.w;
          r18.x = dot(icb[r12.w+0].yx, r15.xy);
          r18.y = dot(icb[r12.w+0].yx, r15.yz);
          r17.xy = r18.xy * r17.xx + r16.zw;
          r15.w = (int)r15.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r15.w;
          r15.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
          r16.z = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r15.w = r16.z + r15.w;
          r15.w = saturate(-1 + r15.w);
          r11.w = r15.w * 0.125 + r11.w;
          r12.w = (int)r12.w + 1;
        }
        r6.w = r11.w * r11.w;
        r7.z = r6.w * r11.w;
      }
    }
  }
  r6.w = cmp(0 < r6.z);
  if (r6.w != 0) {
    r6.w = cmp(0 < r7.z);
    if (r6.w != 0) {
      r6.w = sunConstants.specScale * r3.w;
      r6.w = r6.w * r6.z;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v6.xyz;
        r15.w = 1;
        r7.w = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.x = frac(r7.w);
        r15.y = frac(r8.w);
        r7.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r7.w;
        r11.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r11.yzw = float3(-1,-1,-1) + r11.yzw;
        r11.yzw = sunConstants.sunCookieIntensity * r11.yzw + float3(1,1,1);
        r11.yzw = sunConstants.color.xyz * r11.yzw;
      } else {
        r11.yzw = sunConstants.color.xyz;
      }
      r7.w = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r7.w);
      r8.w = r2.w ? r8.w : 0;
      if (r8.w != 0) {
        r7.w = (int)r7.w + numLights;
        r7.w = (int)r7.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(52), t12.xxxx
      r8.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r10.w = abs(r4.w) * -0.200000003 + 0.400000006;
        r19.xyz = r4.xyz * r10.www + v6.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xy = r15.xy + r18.zw;
        r15.xy = r15.xy * r18.xy;
        r15.zw = r8.ww / r17.xz;
        r16.xy = float2(1,1) + -r15.zw;
        r16.xy = cmp(r15.xy >= r16.xy);
        r15.zw = cmp(r15.zw >= r15.xy);
        r15.zw = (int2)r15.zw | (int2)r16.xy;
        r10.w = (int)r15.w | (int)r15.z;
        if (r10.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r7.w, l(28), t12.xxxx
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.zw, r7.w, l(164), t12.xxxy
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
          r7.w = dot(r16.xyzw, r19.xyzw);
          r15.xy = saturate(r15.xy);
          r16.xy = r15.xy * r17.xz + r17.yw;
          r7.w = r7.w + r15.z;
          r7.w = r7.w / r15.w;
          r7.w = max(6.10351563e-05, r7.w);
          r10.w = (int)r10.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r15.x = -r7.x;
            r17.z = (uint)r10.w;
            r15.y = r10.x;
            r15.z = r7.x;
            r12.w = 0;
            r15.w = 0;
            while (true) {
              r16.w = cmp((int)r15.w >= 8);
              if (r16.w != 0) break;
              r18.x = dot(icb[r15.w+0].yx, r15.xy);
              r18.y = dot(icb[r15.w+0].yx, r15.yz);
              r17.xy = r18.xy * r8.ww + r16.xy;
              r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
              r12.w = r16.w * 0.125 + r12.w;
              r15.w = (int)r15.w + 1;
            }
          } else {
            r16.z = (uint)r10.w;
            r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
          }
          r7.w = r12.w * r12.w;
          r7.w = r7.w * r12.w;
        } else {
          r7.w = 1;
        }
        r7.z = r7.z * r7.w;
      } else {
        r7.w = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r7.w);
        r10.w = ~(int)r2.w;
        r8.w = r8.w ? r10.w : 0;
        if (r8.w != 0) {
          r7.w = (int)r7.w + numLights;
          r7.w = (int)r7.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r10.w = abs(r4.w) * -0.200000003 + 0.400000006;
          r19.xyz = r4.xyz * r10.www + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r15.xy = r15.xy + r18.zw;
          r15.xy = r15.xy * r18.xy;
          r15.zw = r8.ww / r17.xz;
          r16.xy = float2(1,1) + -r15.zw;
          r16.xy = cmp(r15.xy >= r16.xy);
          r15.zw = cmp(r15.zw >= r15.xy);
          r15.zw = (int2)r15.zw | (int2)r16.xy;
          r10.w = (int)r15.w | (int)r15.z;
          if (r10.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r7.w, l(28), t12.xxxx
          r10.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.zw, r7.w, l(164), t12.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
            r7.w = dot(r16.xyzw, r19.xyzw);
            r15.xy = saturate(r15.xy);
            r16.xy = r15.xy * r17.xz + r17.yw;
            r7.w = r7.w + r15.z;
            r7.w = r7.w / r15.w;
            r7.w = max(6.10351563e-05, r7.w);
            r10.w = (int)r10.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r15.x = -r7.x;
              r17.z = (uint)r10.w;
              r15.y = r10.x;
              r15.z = r7.x;
              r12.w = 0;
              r15.w = 0;
              while (true) {
                r16.w = cmp((int)r15.w >= 8);
                if (r16.w != 0) break;
                r18.x = dot(icb[r15.w+0].yx, r15.xy);
                r18.y = dot(icb[r15.w+0].yx, r15.yz);
                r17.xy = r18.xy * r8.ww + r16.xy;
                r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
                r12.w = r16.w * 0.125 + r12.w;
                r15.w = (int)r15.w + 1;
              }
            } else {
              r16.z = (uint)r10.w;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
            }
            r7.w = r12.w * r12.w;
            r7.w = r7.w * r12.w;
          } else {
            r7.w = 1;
          }
          r7.z = r7.z * r7.w;
        }
      }
      r7.w = -r9.x * 0.5 + 1;
      r7.w = -r6.z * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -r6.z;
      r7.w = r6.y * r7.w + r6.z;
      r7.w = r7.w * r7.z;
      r4.w = cmp(0 < r4.w);
      r15.xyz = r7.www * r11.yzw + r13.xyz;
      r16.xyz = -v6.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r16.xyz, r16.xyz);
      r0.z = rsqrt(r0.z);
      r16.xyz = r16.xyz * r0.zzz;
      r0.z = dot(r16.xyz, r1.xyw);
      r7.w = dot(r4.xyz, r16.xyz);
      r8.w = abs(r7.w) * r3.w + -abs(r7.w);
      r7.w = abs(r7.w) * r8.w + 1;
      r6.z = r6.z * r0.w + r1.z;
      r7.w = r7.w * r7.w;
      r6.z = r7.w * r6.z;
      r6.z = rcp(r6.z);
      r6.z = r6.z * r6.w;
      r6.z = r7.z * r6.z;
      r6.z = 0.25 * r6.z;
      r16.xyz = r6.zzz * r11.yzw + r9.yzw;
      r0.z = saturate(1 + -r0.z);
      r6.w = r0.z * r0.z;
      r6.w = r6.w * r6.w;
      r0.z = r6.w * r0.z;
      r0.z = r6.z * r0.z;
      r17.xyz = r0.zzz * r11.zwy + r14.xyz;
      r15.w = r17.z;
      r13.w = r14.z;
      r13.xyzw = r4.wwww ? r15.xyzw : r13.xyzw;
      r17.zw = r16.xy;
      r14.zw = r9.yz;
      r15.xyzw = r4.wwww ? r17.xyzw : r14.xyzw;
      r9.w = r4.w ? r16.z : r9.w;
      r14.z = r13.w;
      r14.xy = r15.xy;
      r9.yz = r15.zw;
    }
  }
  r15.x = -r7.x;
  r0.z = ~(int)r2.w;
  r4.w = -r9.x * 0.5 + 1;
  r16.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v6.xyz;
  r18.w = 1;
  r19.w = 1;
  r15.z = r7.x;
  r20.w = 1;
  r21.z = 1;
  r22.w = 1;
  r15.yw = r10.xx;
  r7.y = r15.w;
  r23.w = 1;
  r10.y = r15.x;
  r10.z = r7.x;
  r24.w = 1;
  r25.x = r10.x;
  r25.y = r15.x;
  r25.z = r7.x;
  r26.x = r10.x;
  r26.y = r15.x;
  r26.z = r7.x;
  r27.x = r10.x;
  r27.y = r15.x;
  r27.z = r7.x;
  r11.yzw = r13.xyz;
  r28.xyz = r14.zxy;
  r29.xyz = r9.yzw;
  r6.z = enableDitheredShadow;
  r6.w = 0;
  while (true) {
    r7.z = cmp((uint)r6.w >= numLights);
    if (r7.z != 0) break;
    r16.z = (uint)r6.w >> 5;
    r17.xyz = (int3)r8.xyz + (int3)r16.xyz;
    r7.z = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r11.yzw;
    r30.xyz = r28.xyz;
    r31.xyz = r29.xyz;
    r7.w = r6.z;
    r8.w = r7.z;
    while (true) {
      if (r8.w == 0) break;
      r9.x = firstbitlow((uint)r8.w);
      r10.w = 1 << (int)r9.x;
      r12.w = (int)r8.w & (int)r10.w;
      if (r12.w != 0) {
        r8.w = (int)r8.w ^ (int)r10.w;
        r9.x = (int)r6.w + (int)r9.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xyzw, r9.x, l(0), t11.xyzw
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r33.xy, r9.x, l(16), t11.xyxx
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
        r32.xyz = -v6.xyz + r32.xyz;
        r33.z = r32.w;
        r32.xyz = cmp(abs(r32.xyz) < r33.zxy);
        r10.w = r32.y ? r32.x : 0;
        r10.w = r32.z ? r10.w : 0;
        if (r10.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r9.x, l(0), t12.wxyz
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r9.x, l(16), t12.zxyw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r9.x, l(32), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r9.x, l(48), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r9.x, l(64), t12.yzwx
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r9.x, l(80), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r9.x, l(96), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
          if (3 == 0) r10.w = 0; else if (3+24 < 32) {           r10.w = (uint)r33.w << (32-(3 + 24)); r10.w = (uint)r10.w >> (32-3);          } else r10.w = (uint)r33.w >> 24;
          switch (r10.w) {
            case 4 :            r10.w = cmp(0 < r38.x);
            r39.xy = r37.zw;
            r39.z = r38.w;
            r40.xyz = -r39.xyz * float3(0.5,0.5,0.5) + r32.yzw;
            r41.xyz = -v6.xyz + r40.xyz;
            r12.w = dot(r39.xyz, r41.xyz);
            r13.w = saturate(-r12.w / r38.x);
            r42.xyz = r13.www * r39.xyz + r40.xyz;
            r42.xyz = r10.www ? r42.xyz : r32.yzw;
            r42.xyz = -v6.xyz + r42.xyz;
            r14.w = dot(r42.xyz, r42.xyz);
            r16.z = rsqrt(r14.w);
            r42.xyz = r42.xyz * r16.zzz;
            r16.z = dot(r4.xyz, r42.xyz);
            r16.w = saturate(r16.z);
            r21.w = cmp(0 < r16.w);
            if (r21.w != 0) {
              r21.w = sqrt(r14.w);
              r25.w = r35.x * r35.x;
              r14.w = r25.w / r14.w;
              r14.w = min(1, r14.w);
              r42.xy = saturate(r21.ww * r34.xz + r34.yw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r14.w = r42.x * r14.w;
              r14.w = r14.w * r42.y;
              r21.w = cmp(0 < r14.w);
              if (r21.w != 0) {
                if (3 == 0) r21.w = 0; else if (3+27 < 32) {                 r21.w = (uint)r33.w << (32-(3 + 27)); r21.w = (uint)r21.w >> (32-3);                } else r21.w = (uint)r33.w >> 27;
                r21.w = cmp((int)r21.w != 1);
                if (r21.w != 0) {
                  r21.w = abs(r16.z) * -0.200000003 + 0.400000006;
                  r42.xyz = r4.xyz * r21.www + v6.xyz;
                  r42.xyz = r42.xyz + -r36.xyz;
                  r21.w = max(abs(r42.y), abs(r42.z));
                  r21.w = max(abs(r42.x), r21.w);
                  r21.w = r37.x / r21.w;
                  r21.w = r21.w + r37.y;
                  r25.w = dot(r42.xyz, r42.xyz);
                  r25.w = rsqrt(r25.w);
                  r21.w = max(6.10351563e-05, r21.w);
                  r26.w = (int)r33.w & 0x0000ffff;
                  r43.w = (uint)r26.w;
                  r26.w = 0;
                  r27.w = 0;
                  while (true) {
                    r28.w = cmp((int)r27.w >= 8);
                    if (r28.w != 0) break;
                    r44.y = dot(icb[r27.w+0].yx, r15.xy);
                    r44.z = dot(icb[r27.w+0].yx, r15.yz);
                    r44.yz = r44.yz * r35.yy;
                    r44.x = r44.y * r11.x;
                    r44.w = r44.y * r6.x;
                    r43.xyz = r42.xyz * r25.www + r44.xzw;
                    r28.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyzw, r21.w).x;
                    r26.w = r28.w * 0.125 + r26.w;
                    r27.w = (int)r27.w + 1;
                  }
                } else {
                  r26.w = 1;
                }
                r14.w = r26.w * r14.w;
                r21.w = cmp(0 < r14.w);
                if (r21.w != 0) {
                  r21.w = r33.x * r3.w;
                  r21.w = 0.25 * r21.w;
                  r25.w = dot(r39.xyz, r12.xyz);
                  r27.w = dot(r12.xyz, r41.xyz);
                  r28.w = -r25.w * r25.w + r38.x;
                  r12.w = r25.w * r27.w + -r12.w;
                  r12.w = saturate(r12.w / r28.w);
                  r25.w = r28.w / r38.x;
                  r25.w = 10 * r25.w;
                  r25.w = min(1, r25.w);
                  r12.w = r12.w + -r13.w;
                  r12.w = r25.w * r12.w + r13.w;
                  r39.xyz = r12.www * r39.xyz + r40.xyz;
                  r39.xyz = r10.www ? r39.xyz : r32.yzw;
                  r39.xyz = -v6.xyz + r39.xyz;
                  r10.w = dot(r39.xyz, r39.xyz);
                  r10.w = rsqrt(r10.w);
                  r40.xyz = r39.xyz * r10.www;
                  if (4 == 0) r12.w = 0; else if (4+16 < 32) {                   r12.w = (uint)r33.w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r33.w >> 16;
                  r13.w = cmp(0 < (uint)r12.w);
                  r13.w = r2.w ? r13.w : 0;
                  if (r13.w != 0) {
                    r12.w = (int)r12.w + numLights;
                    r12.w = (int)r12.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(52), t12.xxxx
                  r13.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(100), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(116), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                    r25.w = abs(r16.z) * -0.200000003 + 0.400000006;
                    r19.xyz = r4.xyz * r25.www + v6.xyz;
                    r25.w = dot(r41.xyzw, r19.xyzw);
                    r27.w = dot(r42.xyzw, r19.xyzw);
                    r28.w = cmp(r27.w < r25.w);
                    if (r28.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(68), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(84), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(132), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(148), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r12.w, l(164), t12.xyxx
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                      r41.x = dot(r41.xyzw, r19.xyzw);
                      r41.y = dot(r42.xyzw, r19.xyzw);
                      r19.xy = r41.xy / r27.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r44.zw;
                      r19.xy = r19.xy * r44.xy;
                      r41.xy = r13.ww / r43.xz;
                      r41.zw = float2(1,1) + -r41.xy;
                      r41.zw = cmp(r19.xy >= r41.zw);
                      r41.xy = cmp(r41.xy >= r19.xy);
                      r41.xy = (int2)r41.xy | (int2)r41.zw;
                      r19.z = (int)r41.y | (int)r41.x;
                      r19.xy = saturate(r19.xy);
                      r41.xy = r19.xy * r43.xz + r43.yw;
                      r19.x = r45.y * r27.w;
                      r19.y = r45.x * r27.w + r25.w;
                      r19.x = r19.y / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.y = (int)r28.w | (int)r19.z;
                    if (r19.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(28), t12.xxxx
                    r12.w = samp0[]..swiz;
                      r19.x = max(6.10351563e-05, r19.x);
                      r12.w = (int)r12.w & 0x0000ffff;
                      if (r7.w != 0) {
                        r42.z = (uint)r12.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r19.z >= 8);
                          if (r25.w != 0) break;
                          r43.x = dot(icb[r19.z+0].yx, r15.xw);
                          r43.y = dot(icb[r19.z+0].xy, r7.xy);
                          r42.xy = r43.xy * r13.ww + r41.xy;
                          r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r19.x).x;
                          r19.y = r25.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r41.z = (uint)r12.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                      }
                      r12.w = r19.y * r19.y;
                      r12.w = r12.w * r19.y;
                    } else {
                      r12.w = 1;
                    }
                    r14.w = r14.w * r12.w;
                  } else {
                    if (4 == 0) r12.w = 0; else if (4+20 < 32) {                     r12.w = (uint)r33.w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);                    } else r12.w = (uint)r33.w >> 20;
                    r13.w = cmp(0 < (uint)r12.w);
                    r13.w = r13.w ? r0.z : 0;
                    if (r13.w != 0) {
                      r12.w = (int)r12.w + numLights;
                      r12.w = (int)r12.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(52), t12.xxxx
                    r13.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(100), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(116), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                      r19.x = abs(r16.z) * -0.200000003 + 0.400000006;
                      r20.xyz = r4.xyz * r19.xxx + v6.xyz;
                      r19.x = dot(r41.xyzw, r20.xyzw);
                      r19.z = dot(r42.xyzw, r20.xyzw);
                      r25.w = cmp(r19.z < r19.x);
                      if (r25.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(68), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(84), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(132), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(148), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r12.w, l(164), t12.xyxx
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                        r41.x = dot(r41.xyzw, r20.xyzw);
                        r41.y = dot(r42.xyzw, r20.xyzw);
                        r20.xy = r41.xy / r19.zz;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r44.zw;
                        r20.xy = r20.xy * r44.xy;
                        r41.xy = r13.ww / r43.xz;
                        r41.zw = float2(1,1) + -r41.xy;
                        r41.zw = cmp(r20.xy >= r41.zw);
                        r41.xy = cmp(r41.xy >= r20.xy);
                        r41.xy = (int2)r41.xy | (int2)r41.zw;
                        r20.z = (int)r41.y | (int)r41.x;
                        r20.xy = saturate(r20.xy);
                        r41.xy = r20.xy * r43.xz + r43.yw;
                        r20.x = r45.y * r19.z;
                        r19.x = r45.x * r19.z + r19.x;
                        r19.x = r19.x / r20.x;
                      } else {
                        r20.z = -1;
                      }
                      r19.z = (int)r25.w | (int)r20.z;
                      if (r19.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(28), t12.xxxx
                      r12.w = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r12.w = (int)r12.w & 0x0000ffff;
                        if (r7.w != 0) {
                          r20.z = (uint)r12.w;
                          r19.z = 0;
                          r25.w = 0;
                          while (true) {
                            r27.w = cmp((int)r25.w >= 8);
                            if (r27.w != 0) break;
                            r42.x = dot(icb[r25.w+0].xy, r10.xy);
                            r42.y = dot(icb[r25.w+0].yx, r10.xz);
                            r20.xy = r42.xy * r13.ww + r41.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                            r19.z = r20.x * 0.125 + r19.z;
                            r25.w = (int)r25.w + 1;
                          }
                        } else {
                          r41.z = (uint)r12.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                        }
                        r12.w = r19.z * r19.z;
                        r12.w = r12.w * r19.z;
                      } else {
                        r12.w = 1;
                      }
                      r14.w = r14.w * r12.w;
                    }
                  }
                  r12.w = -r16.w * r4.w + 1;
                  r12.w = r12.w * r12.w;
                  r12.w = -r12.w * 0.620000005 + 0.620000005;
                  r12.w = r12.w + -r16.w;
                  r12.w = r6.y * r12.w + r16.w;
                  r12.w = r12.w * r14.w;
                  r33.x = r32.x;
                  r13.w = cmp(0 < r16.z);
                  r20.xyz = r12.www * r33.xyz + r17.xyz;
                  r12.w = saturate(dot(r4.xyz, r40.xyz));
                  r39.xyz = r39.xyz * r10.www + r1.xyw;
                  r10.w = dot(r39.xyz, r39.xyz);
                  r10.w = rsqrt(r10.w);
                  r39.xyz = r39.xyz * r10.www;
                  r10.w = dot(r39.xyz, r1.xyw);
                  r16.z = dot(r4.xyz, r39.xyz);
                  r16.w = abs(r16.z) * r3.w + -abs(r16.z);
                  r16.z = abs(r16.z) * r16.w + 1;
                  r16.w = r12.w * r0.w + r1.z;
                  r16.z = r16.z * r16.z;
                  r16.z = r16.z * r16.w;
                  r16.z = rcp(r16.z);
                  r12.w = r12.w * r21.w;
                  r12.w = r16.z * r12.w;
                  r12.w = r12.w * r14.w;
                  r39.xyz = r12.www * r33.xyz + r31.xyz;
                  r10.w = saturate(1 + -r10.w);
                  r14.w = r10.w * r10.w;
                  r14.w = r14.w * r14.w;
                  r10.w = r14.w * r10.w;
                  r10.w = r12.w * r10.w;
                  r40.xyz = r10.www * r33.xyz + r30.xyz;
                  r17.xyz = r13.www ? r20.xyz : r17.xyz;
                  r30.xyz = r13.www ? r40.xyz : r30.xyz;
                  r31.xyz = r13.www ? r39.xyz : r31.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r35.zw;
            r20.z = r36.w;
            r20.xyz = -v6.xyz + r20.xyz;
            r10.w = dot(r20.xyz, r20.xyz);
            r10.w = rsqrt(r10.w);
            r39.xyz = r20.xyz * r10.www;
            r12.w = dot(r4.xyz, r39.xyz);
            r13.w = saturate(r12.w);
            r14.w = cmp(0 < r13.w);
            if (r14.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.x, l(112), t12.yzwx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r9.x, l(128), t12.zxyw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
              r41.xyz = r39.xyz;
              r41.w = r40.y;
              r14.w = dot(r41.xyzw, r18.xyzw);
              r16.z = cmp(r14.w < 1);
              if (r16.z != 0) {
                r42.xyz = float3(1,1,1);
                r16.z = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.x, l(172), t12.yzwx
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.x, l(188), t12.wxyz
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r9.x, l(204), t12.xyzw
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r9.x, l(236), t12.xxxx
              r16.w = samp0[]..swiz;
                r46.xyz = -v6.xyz + r32.yzw;
                r19.x = r35.x * r35.x;
                r21.w = dot(r46.xyz, r46.xyz);
                r19.x = r19.x / r21.w;
                r19.x = min(1, r19.x);
                r34.xy = saturate(r14.ww * r34.xz + r34.yw);
                r34.zw = r34.xy * r34.xy;
                r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                r34.xy = r34.zw * r34.xy;
                r19.x = r34.x * r19.x;
                r19.x = r19.x * r34.y;
                r36.w = r37.x;
                r34.x = dot(r36.xyzw, r18.xyzw);
                r46.xyz = r37.yzw;
                r46.w = r38.w;
                r34.y = dot(r46.xyzw, r18.xyzw);
                r21.xy = r34.xy / r14.ww;
                r14.w = cmp(r43.w < 0.00048828125);
                if (r14.w != 0) {
                  r44.y = r45.x;
                  r34.xy = saturate(abs(r21.xy) * r44.zw + r44.xy);
                  r34.zw = r34.xy * r34.xy;
                  r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                  r34.xy = r34.zw * r34.xy;
                  r14.w = r34.x * r34.y;
                } else {
                  r43.w = r44.y;
                  r34.xyzw = saturate(r43.xyzw * abs(r21.yyxx));
                  r34.xyzw = log2(r34.xyzw);
                  r34.xyzw = r44.xxxx * r34.xyzw;
                  r34.xyzw = exp2(r34.xyzw);
                  r34.xy = r34.xy + r34.zw;
                  r34.xy = log2(r34.xy);
                  r34.xy = r45.xx * r34.xy;
                  r34.xy = exp2(r34.xy);
                  r21.w = r44.z * r34.x;
                  r25.w = r44.w * r34.y + -1;
                  r21.w = r44.w * r34.y + -r21.w;
                  r21.w = saturate(r25.w / r21.w);
                  r25.w = r21.w * r21.w;
                  r21.w = r21.w * -2 + 3;
                  r14.w = r25.w * r21.w;
                }
                r16.z = r19.x * r14.w;
                r14.w = (int)r16.w & 255;
                if (r14.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyz, r9.x, l(220), t12.xyzx
                r34.x = samp0[]..swiz;
                r34.y = samp0[]..swiz;
                r34.z = samp0[]..swiz;
                  r16.w = dot(r45.yzw, r21.xyz);
                  r19.x = dot(r34.xyz, r21.xyz);
                  r34.x = frac(r16.w);
                  r34.y = frac(r19.x);
                  r14.w = (int)r14.w + -1;
                  r34.z = (uint)r14.w;
                  r42.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
                } else {
                  r42.xyz = float3(1,1,1);
                }
              }
              r32.yz = r33.yz;
              r21.xyw = r32.xyz * r42.xyz;
              r14.w = cmp(0 < r16.z);
              if (r14.w != 0) {
                if (3 == 0) r14.w = 0; else if (3+27 < 32) {                 r14.w = (uint)r33.w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);                } else r14.w = (uint)r33.w >> 27;
                r14.w = cmp((int)r14.w != 1);
                if (r14.w != 0) {
                  r14.w = abs(r12.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r4.xyz * r14.www + v6.xyz;
                  r39.xyz = r38.xyz;
                  r14.w = dot(r39.xyzw, r22.xyzw);
                  r16.w = dot(r41.xyzw, r22.xyzw);
                  r19.x = cmp(r16.w >= r14.w);
                  if (r19.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.y, r9.x, l(144), t12.xxxx
                  r40.y = samp0[]..swiz;
                    r36.w = r37.x;
                    r32.x = dot(r36.xyzw, r22.xyzw);
                    r38.xyz = r37.yzw;
                    r32.y = dot(r38.xyzw, r22.xyzw);
                    r22.xy = r32.xy / r16.ww;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r40.zw + r40.xy;
                    r9.x = r14.w / r16.w;
                    r9.x = max(6.10351563e-05, r9.x);
                    r14.w = (int)r33.w & 0x0000ffff;
                    if (r7.w != 0) {
                      r32.z = (uint)r14.w;
                      r16.w = 0;
                      r19.x = 0;
                      while (true) {
                        r25.w = cmp((int)r19.x >= 8);
                        if (r25.w != 0) break;
                        r34.x = dot(icb[r19.x+0].xy, r25.xy);
                        r34.y = dot(icb[r19.x+0].yx, r25.xz);
                        r32.xy = r34.xy * r35.yy + r22.xy;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r9.x).x;
                        r16.w = r25.w * 0.125 + r16.w;
                        r19.x = (int)r19.x + 1;
                      }
                    } else {
                      r22.z = (uint)r14.w;
                      r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r9.x).x;
                    }
                    r9.x = r16.w * r16.w;
                    r9.x = r9.x * r16.w;
                  } else {
                    r9.x = 1;
                  }
                } else {
                  r9.x = 1;
                }
                r9.x = r16.z * r9.x;
                r14.w = cmp(0 < r9.x);
                if (r14.w != 0) {
                  r14.w = r33.x * r3.w;
                  r14.w = r14.w * r13.w;
                  if (4 == 0) r16.z = 0; else if (4+16 < 32) {                   r16.z = (uint)r33.w << (32-(4 + 16)); r16.z = (uint)r16.z >> (32-4);                  } else r16.z = (uint)r33.w >> 16;
                  r19.x = cmp(0 < (uint)r16.z);
                  r19.x = r2.w ? r19.x : 0;
                  if (r19.x != 0) {
                    r16.z = (int)r16.z + numLights;
                    r16.z = (int)r16.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r16.z, l(52), t12.xxxx
                  r19.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(68), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r16.z, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r16.z, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r16.z, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r22.x = abs(r12.w) * -0.200000003 + 0.400000006;
                    r23.xyz = r4.xyz * r22.xxx + v6.xyz;
                    r22.x = dot(r32.xyzw, r23.xyzw);
                    r22.y = dot(r34.xyzw, r23.xyzw);
                    r22.z = dot(r35.xyzw, r23.xyzw);
                    r23.x = dot(r36.xyzw, r23.xyzw);
                    r23.y = cmp(r23.x < r22.z);
                    r22.xy = r22.xy / r23.xx;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.xy = r22.xy + r38.zw;
                    r22.xy = r22.xy * r38.xy;
                    r32.xy = r19.xx / r37.xz;
                    r32.zw = float2(1,1) + -r32.xy;
                    r32.zw = cmp(r22.xy >= r32.zw);
                    r32.xy = cmp(r32.xy >= r22.xy);
                    r32.xy = (int2)r32.xy | (int2)r32.zw;
                    r23.z = (int)r32.y | (int)r32.x;
                    r23.y = (int)r23.y | (int)r23.z;
                    if (r23.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r16.z, l(28), t12.xxxx
                    r23.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r16.z, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r22.xy = saturate(r22.xy);
                      r33.xy = r22.xy * r37.xz + r37.yw;
                      r16.z = r32.y * r23.x;
                      r22.x = r32.x * r23.x + r22.z;
                      r16.z = r22.x / r16.z;
                      r16.z = max(6.10351563e-05, r16.z);
                      r22.x = r23.y ? 0.000000 : 0;
                      if (r7.w != 0) {
                        r23.z = (uint)r22.x;
                        r22.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r22.z >= 8);
                          if (r25.w != 0) break;
                          r32.x = dot(icb[r22.z+0].xy, r26.xy);
                          r32.y = dot(icb[r22.z+0].yx, r26.xz);
                          r23.xy = r32.xy * r19.xx + r33.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.z).x;
                          r22.y = r23.x * 0.125 + r22.y;
                          r22.z = (int)r22.z + 1;
                        }
                      } else {
                        r33.z = (uint)r22.x;
                        r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r16.z).x;
                      }
                      r16.z = r22.y * r22.y;
                      r16.z = r16.z * r22.y;
                    } else {
                      r16.z = 1;
                    }
                    r9.x = r16.z * r9.x;
                  } else {
                    if (4 == 0) r16.z = 0; else if (4+20 < 32) {                     r16.z = (uint)r33.w << (32-(4 + 20)); r16.z = (uint)r16.z >> (32-4);                    } else r16.z = (uint)r33.w >> 20;
                    r19.x = cmp(0 < (uint)r16.z);
                    r19.x = r19.x ? r0.z : 0;
                    if (r19.x != 0) {
                      r16.z = (int)r16.z + numLights;
                      r16.z = (int)r16.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r16.z, l(52), t12.xxxx
                    r19.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r16.z, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r16.z, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r22.x = abs(r12.w) * -0.200000003 + 0.400000006;
                      r24.xyz = r4.xyz * r22.xxx + v6.xyz;
                      r23.x = dot(r32.xyzw, r24.xyzw);
                      r23.y = dot(r33.xyzw, r24.xyzw);
                      r22.x = dot(r34.xyzw, r24.xyzw);
                      r22.z = dot(r35.xyzw, r24.xyzw);
                      r23.z = cmp(r22.z < r22.x);
                      r23.xy = r23.xy / r22.zz;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r37.zw;
                      r23.xy = r23.xy * r37.xy;
                      r24.xy = r19.xx / r36.xz;
                      r32.xy = float2(1,1) + -r24.xy;
                      r32.xy = cmp(r23.xy >= r32.xy);
                      r24.xy = cmp(r24.xy >= r23.xy);
                      r24.xy = (int2)r24.xy | (int2)r32.xy;
                      r24.x = (int)r24.y | (int)r24.x;
                      r23.z = (int)r23.z | (int)r24.x;
                      if (r23.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.z, r16.z, l(28), t12.xxxx
                      r23.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xy, r16.z, l(164), t12.xyxx
                      r24.x = samp0[]..swiz;
                      r24.y = samp0[]..swiz;
                        r23.xy = saturate(r23.xy);
                        r32.xy = r23.xy * r36.xz + r36.yw;
                        r16.z = r24.y * r22.z;
                        r22.x = r24.x * r22.z + r22.x;
                        r16.z = r22.x / r16.z;
                        r16.z = max(6.10351563e-05, r16.z);
                        r22.x = r23.z ? 0.000000 : 0;
                        if (r7.w != 0) {
                          r23.z = (uint)r22.x;
                          r22.z = 0;
                          r24.x = 0;
                          while (true) {
                            r24.y = cmp((int)r24.x >= 8);
                            if (r24.y != 0) break;
                            r33.x = dot(icb[r24.x+0].xy, r27.xy);
                            r33.y = dot(icb[r24.x+0].yx, r27.xz);
                            r23.xy = r33.xy * r19.xx + r32.xy;
                            r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.z).x;
                            r22.z = r23.x * 0.125 + r22.z;
                            r24.x = (int)r24.x + 1;
                          }
                        } else {
                          r32.z = (uint)r22.x;
                          r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r16.z).x;
                        }
                        r16.z = r22.z * r22.z;
                        r16.z = r16.z * r22.z;
                      } else {
                        r16.z = 1;
                      }
                      r9.x = r16.z * r9.x;
                    }
                  }
                  r16.z = -r13.w * r4.w + 1;
                  r16.z = r16.z * r16.z;
                  r16.z = -r16.z * 0.620000005 + 0.620000005;
                  r16.z = r16.z + -r13.w;
                  r16.z = r6.y * r16.z + r13.w;
                  r16.z = r16.z * r9.x;
                  r12.w = cmp(0 < r12.w);
                  r23.xyz = r16.zzz * r21.xyw + r17.xyz;
                  r20.xyz = r20.xyz * r10.www + r1.xyw;
                  r10.w = dot(r20.xyz, r20.xyz);
                  r10.w = rsqrt(r10.w);
                  r20.xyz = r20.xyz * r10.www;
                  r10.w = dot(r20.xyz, r1.xyw);
                  r16.z = dot(r4.xyz, r20.xyz);
                  r19.x = abs(r16.z) * r3.w + -abs(r16.z);
                  r16.z = abs(r16.z) * r19.x + 1;
                  r13.w = r13.w * r0.w + r1.z;
                  r16.z = r16.z * r16.z;
                  r13.w = r16.z * r13.w;
                  r13.w = rcp(r13.w);
                  r13.w = r13.w * r14.w;
                  r9.x = r13.w * r9.x;
                  r9.x = 0.25 * r9.x;
                  r20.xyz = r9.xxx * r21.xyw + r31.xyz;
                  r10.w = saturate(1 + -r10.w);
                  r13.w = r10.w * r10.w;
                  r13.w = r13.w * r13.w;
                  r10.w = r13.w * r10.w;
                  r9.x = r10.w * r9.x;
                  r21.xyw = r9.xxx * r21.xyw + r30.xyz;
                  r17.xyz = r12.www ? r23.xyz : r17.xyz;
                  r30.xyz = r12.www ? r21.xyw : r30.xyz;
                  r31.xyz = r12.www ? r20.xyz : r31.xyz;
                }
              }
            }
            break;
            default :
            break;
          }
        }
      }
    }
    r11.yzw = r17.xyz;
    r28.xyz = r30.xyz;
    r29.xyz = r31.xyz;
    r6.w = (int)r6.w + 32;
  }
  r1.xyz = float3(1,1,1) + -r3.xyz;
  r1.xyz = r28.xyz * r1.xyz;
  r1.xyz = r29.xyz * r3.xyz + r1.xyz;
  r1.xyz = r11.yzw * r2.xyz + r1.xyz;
  r0.z = dot(r1.xyz, float3(0.298999995,0.587000012,0.114));
  r0.z = max(9.99999975e-05, r0.z);
  r2.w = max(relHDRExposure.x, r0.z);
  r2.xyz = r5.xyz * r2.www;
  r5.w = 1;
  r2.xyzw = relativeHDR ? r2.xyzw : r5.xyzw;
  r1.xyz = r2.xyz + r1.xyz;
  r0.z = hdrScale * r2.w;
  r0.z = max(1, r0.z);
  r2.xyz = r2.xyz / r0.zzz;
  r0.z = saturate(dot(r2.xyz, float3(0.298999995,0.587000012,0.114)));
  r0.y = r0.y + r0.z;
  o0.w = r0.y * r0.x;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(v6.xyz, v6.xyz);
    r0.y = rsqrt(r0.x);
    r0.yzw = v6.xyz * r0.yyy;
    r0.x = sqrt(r0.x);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r1.w = cmp(0.00999999978 < abs(v6.z));
      r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r3.xy = float2(-1.44269502,-1.44269502) * r2.zw;
      r3.xy = exp2(r3.xy);
      r3.xy = float2(1,1) + -r3.xy;
      r2.zw = r3.xy / r2.zw;
      r2.zw = r2.xy * r2.zw;
      r2.xy = r1.ww ? r2.zw : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r3.xyz + r2.xzw;
    } else {
      r1.w = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r3.y = -1.44269502 * r3.x;
      r3.y = exp2(r3.y);
      r3.y = 1 + -r3.y;
      r3.x = r3.y / r3.x;
      r3.x = r3.x * r1.w;
      r1.w = r2.w ? r3.x : r1.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r2.xyz = exp2(r3.xyz);
    }
    r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r0.y = dot(fogConstants.wldSunFogDir.xyz, -r0.yzw);
    r0.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r0.w = fogConstants.atmosphereMieSchlickK * -r0.y + 1;
    r0.w = r0.w * r0.w;
    r0.w = 12.566371 * r0.w;
    r0.z = r0.z / r0.w;
    r0.x = -fogConstants.atmospherehazebasedist + r0.x;
    r0.x = saturate(fogConstants.atmospherehazefadedist * r0.x);
    r0.x = r0.z * r0.x;
    r0.y = saturate(r0.y);
    r0.y = r0.y * r0.y + 1;
    r0.y = r0.y * 0.0596831031 + -1;
    r0.y = fogConstants.atmospheresunstrength * r0.y + 1;
    r0.xzw = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r0.xyz = r0.yyy * fogConstants.atmosphereRayleighDensity.xyz + r0.xzw;
    r0.xyz = fogConstants.atmosphereInScatterIntensity * r0.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r0.xyz = r3.xyz * r0.xyz;
    r0.xyz = r1.xyz * r2.xyz + r0.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v6.z;
    r1.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r2.x = cmp(abs(r0.w) < 9.99999975e-05);
    r2.y = min(64, r1.w);
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r2.z = saturate(fogConstants.K0b);
    r2.w = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r2.w ? r2.y : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r2.x ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.x ? r2.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(v6.xyz, v6.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v6.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r1.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r2.w * r0.w;
    r2.xyz = r2.xyz + -r1.xyz;
    r0.xyz = r0.www * r2.xyz + r1.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r0.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}