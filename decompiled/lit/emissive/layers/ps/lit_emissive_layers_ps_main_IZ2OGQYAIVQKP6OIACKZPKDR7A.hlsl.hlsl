// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:59 2021

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
  float rowCount : packoffset(c11.z);
  float columnCount : packoffset(c11.w);
  float imageTime : packoffset(c12);
  float2 rotateUVs : packoffset(c12.y);
  float2 scrollUVs : packoffset(c13);
  float2 scaleUVs : packoffset(c13.z);
  float2 offsetUVs : packoffset(c14);
  float2 zoomUVs : packoffset(c14.z);
  float zoomRate : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  bool clampU : packoffset(c15.z);
  bool clampV : packoffset(c15.w);
  float2 flickerSeed : packoffset(c16);
  float flickerSpeed : packoffset(c16.z);
  float2 flickerRange : packoffset(c17);
  float flickerPower : packoffset(c17.z);
  bool useAsCamo : packoffset(c17.w);
  float3 emissiveTint1 : packoffset(c18);
  float hdrScale : packoffset(c18.w);
  float uvMotionToggle1 : packoffset(c19);
  bool relativeHDR : packoffset(c19.y);
  float3 emissiveTint2 : packoffset(c20);
  float rowCount2 : packoffset(c20.w);
  float columnCount2 : packoffset(c21);
  float imageTime2 : packoffset(c21.y);
  float2 rotateUVs2 : packoffset(c21.z);
  float2 scrollUVs2 : packoffset(c22);
  float2 scaleUVs2 : packoffset(c22.z);
  float2 offsetUVs2 : packoffset(c23);
  float2 zoomUVs2 : packoffset(c23.z);
  float zoomRate2 : packoffset(c24);
  float layer2Depth : packoffset(c24.y);
  float uvMotionToggle2 : packoffset(c24.z);
  bool clampU2 : packoffset(c24.w);
  bool clampV2 : packoffset(c25);
  float2 flickerSeed2 : packoffset(c25.y);
  float flickerSpeed2 : packoffset(c25.w);
  float2 flickerRange2 : packoffset(c26);
  float flickerPower2 : packoffset(c26.z);
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
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> glossMap : register(t24);
Texture2D<float4> aoMap : register(t25);
Texture2D<float4> flickerLookupMap : register(t26);
Texture2D<float4> camoMaskMap : register(t29);
Texture2D<float4> emissiveMap1 : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
Texture2D<float4> emissiveMap2 : register(t37);
Texture2DArray<float4> materialTexBC7 : register(t42);
Texture2DArray<float4> materialTexBC3 : register(t43);
Texture2DArray<float4> materialTexBC7linear : register(t44);
Texture2DArray<float4> materialTexMask : register(t45);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
  nointerpolation uint w3 : TEXCOORD4,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  uint v8 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
  uint4 bitmask, uiDest;
  float4 fDest;

  if (useAsCamo != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.w, l(4), t4.xxxx
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
    r3.xyz = camoMaskMap.Sample(colorSampler_s, v2.xy).xyz;
    r0.x = saturate(dot(r3.xyz, r0.yzw));
    r3.xy = v2.xy;
    r3.z = 1;
    r1.x = dot(r1.xyz, r3.xyz);
    r1.y = dot(r2.xyz, r3.xyz);
    r0.yz = r1.xy;
  } else {
    r0.yz = v2.xy;
    r1.xy = v2.xy;
    r0.x = 1;
  }
  r2.xyzw = colorMap.Sample(colorSampler_s, r0.yz).xyzw;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r2.www * r3.xyz + float3(1,1,1);
  r2.xyz = r3.xyz * r2.xyz;
  r2.xyz = v1.xyz * r2.xyz;
  r0.w = w1.x * r2.w;
  r1.z = aoMap.Sample(aoSampler_s, r0.yz).x;
  r1.w = glossMap.Sample(specColorSampler_s, r0.yz).x;
  r3.x = glossRange.y + -glossRange.x;
  r1.w = r1.w * r3.x + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r3.yzw = normalMap.Sample(normalSampler_s, r0.yz).xyz;
  r3.yzw = float3(-0.5,-0.5,-0) + r3.yzw;
  r3.yzw = baseNormalHeight * r3.yzw + float3(0.5,0.5,0);
  r3.yz = r3.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.x = dot(r3.yz, r3.yz);
  r4.x = 1 + -r4.x;
  r4.x = max(0, r4.x);
  r4.x = sqrt(r4.x);
  r3.w = r3.w * r3.w;
  r3.w = 0.333333343 * r3.w;
  r3.w = min(1, r3.w);
  r4.y = v8.x ? 1 : -1;
  r4.z = dot(v4.xyz, v4.xyz);
  r4.z = rsqrt(r4.z);
  r5.xyz = v4.xyz * r4.zzz;
  r5.xyz = r5.xyz * r4.yyy;
  r4.z = dot(v5.xyz, v5.xyz);
  r4.z = rsqrt(r4.z);
  r6.xyz = v5.xyz * r4.zzz;
  r6.xyz = r6.xyz * r4.yyy;
  r4.z = dot(v6.xyz, v6.xyz);
  r4.z = rsqrt(r4.z);
  r7.xyz = v6.xyz * r4.zzz;
  r7.xyz = r7.xyz * r4.yyy;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r3.w + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r8.xyz = r7.xyz * r3.zzz;
  r8.xyz = r6.xyz * r3.yyy + r8.xyz;
  r4.xzw = r5.xyz * r4.xxx + r8.xyz;
  r3.y = dot(r4.xzw, r4.xzw);
  r3.y = rsqrt(r3.y);
  r4.xzw = r4.xzw * r3.yyy;
  r3.x = debugGlossOverride.x * r3.x + glossRange.x;
  r3.x = saturate(0.0588235296 * r3.x);
  r3.x = -17 * r3.x;
  r3.x = exp2(r3.x);
  r3.x = r3.w + r3.x;
  r3.x = log2(r3.x);
  r3.x = -0.0588235296 * r3.x;
  r3.x = max(0, r3.x);
  r3.y = cmp(0 < debugStreamerControl.w);
  if (r3.y != 0) {
    r3.y = (int)debugStreamerControl.w;
    r3.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r0.yz);
    r0.y = colorMap.CalculateLevelOfDetail(colorSampler_s, r0.yz);
    r0.z = cmp(r3.z < r0.y);
    r0.y = cmp(0 < r0.y);
    r3.yzw = (int3)r3.yyy & int3(1,2,4);
    r8.xyz = r3.yyy ? float3(1,0,1) : r2.xyz;
    r9.xyz = r3.zzz ? float3(0,1,1) : r2.xyz;
    r8.xyz = r0.yyy ? r8.xyz : r9.xyz;
    r3.yzw = r3.www ? float3(0,1,0) : r2.xyz;
    r2.xyz = r0.zzz ? r8.xyz : r3.yzw;
  }
  r3.yzw = debugColorOverride.xyz + -r2.xyz;
  r2.xyz = debugColorOverride.www * r3.yzw + r2.xyz;
  r0.y = -r2.w * w1.x + debugAlphaOverride.x;
  r0.y = debugAlphaOverride.w * r0.y + r0.w;
  r3.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r3.yzw = debugSpecularOverride.www * r3.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.z = r3.x + -r1.w;
  r0.z = debugGlossOverride.w * r0.z + r1.w;
  r0.w = debugOcclusionOverride.x + -r1.z;
  r0.w = debugOcclusionOverride.w * r0.w + r1.z;
  r8.xyz = v8.xxx ? v4.xyz : -v4.xyz;
  r1.z = dot(r8.xyz, r8.xyz);
  r1.z = rsqrt(r1.z);
  r8.xyz = r8.xyz * r1.zzz + -r4.xzw;
  r4.xzw = debugNormalOverride.www * r8.xyz + r4.xzw;
  r1.z = cmp(v0.z >= 0.984375);
  r1.w = 1.01587307 * v0.z;
  r2.w = v0.z * 64 + -63;
  r1.z = r1.z ? r2.w : r1.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.z = rcp(r1.z);
  r8.xy = (uint2)v0.yx;
  r9.xyz = ddx_coarse(v7.xyz);
  r10.xyz = ddy_coarse(v7.xyz);
  r1.w = numRefProbes + numLights;
  r11.xyz = eyeOffset.xyz + v7.xyz;
  r1.z = 0.0078125 * r1.z;
  r1.z = min(15, r1.z);
  r1.z = (uint)r1.z;
  r12.xy = (uint2)r8.yx >> int2(6,6);
  r12.z = (uint)r1.z << 4;
  r1.z = numStaticDecals & -32;
  r2.w = (int)-r1.z + numStaticDecals;
  r13.xy = float2(0,0);
  r14.w = 0;
  r11.w = 1;
  r15.xyz = float3(0,0,0);
  r16.xyz = float3(0,0,0);
  r17.xyz = float3(0,0,0);
  r3.x = 0;
  r5.w = 0;
  r6.w = 0;
  while (true) {
    r7.w = cmp((uint)r6.w >= numStaticDecals);
    if (r7.w != 0) break;
    r13.z = (uint)r6.w >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r7.w = visibleDecals.Load(r14.xyzw).x;
    r8.z = cmp((int)r1.z == (int)r6.w);
    if (r2.w == 0) r8.w = 0; else if (r2.w+0 < 32) {     r8.w = (uint)r7.w << (32-(r2.w + 0)); r8.w = (uint)r8.w >> (32-r2.w);    } else r8.w = (uint)r7.w >> 0;
    r7.w = r8.z ? r8.w : r7.w;
    r8.z = (int)r1.w + (int)r6.w;
    r14.xyz = r15.xyz;
    r18.xyz = r16.xyz;
    r19.xyz = r17.xyz;
    r8.w = r3.x;
    r9.w = r5.w;
    r10.w = r7.w;
    while (true) {
      if (r10.w == 0) break;
      r12.w = firstbitlow((uint)r10.w);
      r13.z = 1 << (int)r12.w;
      r13.w = (int)r10.w & (int)r13.z;
      if (r13.w != 0) {
        r10.w = (int)r10.w ^ (int)r13.z;
        r13.z = (int)r8.z + (int)r12.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xyzw, r13.z, l(0), t11.xyzw
      r20.x = samp0[]..swiz;
      r20.y = samp0[]..swiz;
      r20.z = samp0[]..swiz;
      r20.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xy, r13.z, l(16), t11.xyxx
      r21.x = samp0[]..swiz;
      r21.y = samp0[]..swiz;
        r20.xyz = -v7.xyz + r20.xyz;
        r21.z = r20.w;
        r20.xyz = cmp(abs(r20.xyz) < r21.zxy);
        r13.z = r20.y ? r20.x : 0;
        r13.z = r20.z ? r13.z : 0;
        if (r13.z != 0) {
          r12.w = (int)r6.w + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyz, r12.w, l(0), t36.xyzx
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyz, r12.w, l(16), t36.xyzx
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyz, r12.w, l(32), t36.xyzx
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
          r23.x = r20.x;
          r23.y = r21.x;
          r23.z = r22.x;
          r13.z = dot(r23.xyz, r23.xyz);
          r13.z = rsqrt(r13.z);
          r24.xyz = r23.xyz * r13.zzz;
          r13.z = dot(r24.xyz, r5.xyz);
          r13.z = cmp(r13.z >= 0.5);
          if (r13.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r25.xyw, r12.w, l(48), t36.xyxz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r23.w = r25.x;
            r23.x = dot(r11.xyzw, r23.xyzw);
            r26.x = r20.y;
            r26.y = r21.y;
            r26.z = r22.y;
            r26.w = r25.y;
            r23.y = dot(r11.xyzw, r26.xyzw);
            r25.x = r20.z;
            r25.y = r21.z;
            r25.z = r22.z;
            r23.z = dot(r11.xyzw, r25.xyzw);
            r20.xyz = cmp(abs(r23.xyz) < float3(1,1,1));
            r13.z = r20.y ? r20.x : 0;
            r13.z = r20.z ? r13.z : 0;
            if (r13.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyzw, r12.w, l(64), t36.xyzw
            r20.x = samp0[]..swiz;
            r20.y = samp0[]..swiz;
            r20.z = samp0[]..swiz;
            r20.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyzw, r12.w, l(80), t36.xyzw
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.z = samp0[]..swiz;
            r21.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyzw, r12.w, l(96), t36.xyzw
            r22.x = samp0[]..swiz;
            r22.y = samp0[]..swiz;
            r22.z = samp0[]..swiz;
            r22.w = samp0[]..swiz;
              r27.x = dot(r9.xyz, r26.xyz);
              r27.y = dot(r9.xyz, r25.xyz);
              r28.x = dot(r10.xyz, r26.xyz);
              r28.y = dot(r10.xyz, r25.xyz);
              r13.zw = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r23.xyz = float3(0.5,-0.5,0.5) * r27.xyx;
              r27.xyz = float3(0.5,-0.5,0.5) * r28.xyx;
              r28.xy = (int2)r21.yz & int2(65535,65535);
              if (r28.x != 0) {
                if (4 == 0) r15.w = 0; else if (4+24 < 32) {                 r15.w = (uint)r21.w << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                } else r15.w = (uint)r21.w >> 24;
                r15.w = 1 << (int)r15.w;
                r16.w = (uint)r21.w >> 28;
                r16.w = 1 << (int)r16.w;
                r17.w = cmp((int)r28.x == 4);
                if (r17.w != 0) {
                  r17.w = (int)r21.w & 4095;
                  if (12 == 0) r18.w = 0; else if (12+12 < 32) {                   r18.w = (uint)r21.w << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                  } else r18.w = (uint)r21.w >> 12;
                  r19.w = (int)r22.w & 1023;
                  r29.xz = (uint2)r15.ww;
                  r29.y = (uint)r16.w;
                  r28.zw = r13.zw * r29.zy + float2(0.5,0.5);
                  r30.xy = float2(-0.5,-0.5) + r29.zy;
                  r28.zw = min(r30.xy, r28.zw);
                  r30.x = (uint)r17.w;
                  r30.y = (uint)r18.w;
                  r28.zw = r30.xy + r28.zw;
                  r30.xy = invBcTexSizes.xy * r28.zw;
                  r30.z = (uint)r19.w;
                  r31.xyz = invBcTexSizes.xyx * r23.zyz;
                  r31.xyz = r31.xyz * r29.xyz;
                  r32.xyz = invBcTexSizes.xyx * r27.zyz;
                  r29.xyz = r32.xyz * r29.xyz;
                  r29.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.xyzx, r29.xyzx).xyzw;
                } else {
                  r17.w = cmp((int)r28.x == 1);
                  if (r17.w != 0) {
                    r17.w = (int)r21.w & 4095;
                    if (12 == 0) r18.w = 0; else if (12+12 < 32) {                     r18.w = (uint)r21.w << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                    } else r18.w = (uint)r21.w >> 12;
                    r19.w = (int)r22.w & 1023;
                    r30.xz = (uint2)r15.ww;
                    r30.y = (uint)r16.w;
                    r28.xz = r13.zw * r30.zy + float2(0.5,0.5);
                    r31.xy = float2(-0.5,-0.5) + r30.zy;
                    r28.xz = min(r31.xy, r28.xz);
                    r31.x = (uint)r17.w;
                    r31.y = (uint)r18.w;
                    r28.xz = r31.xy + r28.xz;
                    r31.xy = invBcTexSizes.zw * r28.xz;
                    r31.z = (uint)r19.w;
                    r28.xzw = invBcTexSizes.zwz * r23.zyz;
                    r28.xzw = r28.xzw * r30.xyz;
                    r32.xyz = invBcTexSizes.zwz * r27.zyz;
                    r30.xyz = r32.xyz * r30.xyz;
                    r29.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r31.xyz, r28.xzwx, r30.xyzx).xyzw;
                  } else {
                    r29.xyzw = float4(1,1,1,1);
                  }
                }
                r20.xyz = r29.xyz * r20.xyz;
                r15.w = r29.w * r20.w;
              } else {
                r20.xyz = float3(0,0,0);
                r15.w = 0;
              }
              r16.w = cmp(r21.x != 1.000000);
              r17.w = r15.w + r20.w;
              r17.w = saturate(r17.w * r21.x + -r21.x);
              r15.w = r16.w ? r17.w : r15.w;
              if (r28.y != 0) {
                if (4 == 0) r16.w = 0; else if (4+24 < 32) {                 r16.w = (uint)r22.y << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                } else r16.w = (uint)r22.y >> 24;
                r16.w = 1 << (int)r16.w;
                r17.w = (uint)r22.y >> 28;
                r17.w = 1 << (int)r17.w;
                r18.w = cmp((int)r28.y == 2);
                if (r18.w != 0) {
                  r18.w = (int)r22.y & 4095;
                  if (12 == 0) r21.x = 0; else if (12+12 < 32) {                   r21.x = (uint)r22.y << (32-(12 + 12)); r21.x = (uint)r21.x >> (32-12);                  } else r21.x = (uint)r22.y >> 12;
                  if (10 == 0) r21.w = 0; else if (10+20 < 32) {                   r21.w = (uint)r22.w << (32-(10 + 20)); r21.w = (uint)r21.w >> (32-10);                  } else r21.w = (uint)r22.w >> 20;
                  r29.xz = (uint2)r16.ww;
                  r29.y = (uint)r17.w;
                  r28.xz = r13.zw * r29.zy + float2(0.5,0.5);
                  r30.xy = float2(-0.5,-0.5) + r29.zy;
                  r28.xz = min(r30.xy, r28.xz);
                  r30.x = (uint)r18.w;
                  r30.yz = (uint2)r21.xw;
                  r28.xz = r30.xy + r28.xz;
                  r30.xy = invMaskTexSizes.xy * r28.xz;
                  r28.xzw = invMaskTexSizes.xyx * r23.zyz;
                  r28.xzw = r28.xzw * r29.xyz;
                  r31.xyz = invMaskTexSizes.xyx * r27.zyz;
                  r29.xyz = r31.xyz * r29.xyz;
                  r18.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r30.xyz, r28.x, r29.x).x;
                } else {
                  r19.w = cmp((int)r28.y == 4);
                  if (r19.w != 0) {
                    r19.w = (int)r22.y & 4095;
                    if (12 == 0) r21.x = 0; else if (12+12 < 32) {                     r21.x = (uint)r22.y << (32-(12 + 12)); r21.x = (uint)r21.x >> (32-12);                    } else r21.x = (uint)r22.y >> 12;
                    if (10 == 0) r21.w = 0; else if (10+20 < 32) {                     r21.w = (uint)r22.w << (32-(10 + 20)); r21.w = (uint)r21.w >> (32-10);                    } else r21.w = (uint)r22.w >> 20;
                    r28.xz = (uint2)r16.ww;
                    r28.y = (uint)r17.w;
                    r29.xy = r13.zw * r28.zy + float2(0.5,0.5);
                    r29.zw = float2(-0.5,-0.5) + r28.zy;
                    r29.xy = min(r29.xy, r29.zw);
                    r30.x = (uint)r19.w;
                    r30.y = (uint)r21.x;
                    r29.xy = r30.xy + r29.xy;
                    r29.xy = invBcTexSizes.xy * r29.xy;
                    r29.z = (uint)r21.w;
                    r30.xyz = invBcTexSizes.xyx * r23.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invBcTexSizes.xyx * r27.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r18.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                  } else {
                    r19.w = (int)r22.y & 4095;
                    if (12 == 0) r21.x = 0; else if (12+12 < 32) {                     r21.x = (uint)r22.y << (32-(12 + 12)); r21.x = (uint)r21.x >> (32-12);                    } else r21.x = (uint)r22.y >> 12;
                    if (10 == 0) r21.w = 0; else if (10+20 < 32) {                     r21.w = (uint)r22.w << (32-(10 + 20)); r21.w = (uint)r21.w >> (32-10);                    } else r21.w = (uint)r22.w >> 20;
                    r28.xz = (uint2)r16.ww;
                    r28.y = (uint)r17.w;
                    r29.xy = r13.zw * r28.zy + float2(0.5,0.5);
                    r29.zw = float2(-0.5,-0.5) + r28.zy;
                    r29.xy = min(r29.xy, r29.zw);
                    r30.x = (uint)r19.w;
                    r30.y = (uint)r21.x;
                    r29.xy = r30.xy + r29.xy;
                    r29.xy = invBcTexSizes.zw * r29.xy;
                    r29.z = (uint)r21.w;
                    r30.xyz = invBcTexSizes.zwz * r23.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invBcTexSizes.zwz * r27.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r18.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                  }
                }
                r28.xyz = r18.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r16.w = saturate(1 + -r18.w);
                r20.xyz = r20.xyz * r16.www;
              } else {
                r28.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r21.xy = (uint2)r21.zy >> int2(16,16);
              if (r21.x != 0) {
                r16.w = cmp((int)r21.x == 2);
                if (r16.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(112), t36.xxxx
                r12.w = samp0[]..swiz;
                  if (4 == 0) r21.z = 0; else if (4+24 < 32) {                   r21.z = (uint)r22.z << (32-(4 + 24)); r21.z = (uint)r21.z >> (32-4);                  } else r21.z = (uint)r22.z >> 24;
                  if (12 == 0) r21.w = 0; else if (12+12 < 32) {                   r21.w = (uint)r22.z << (32-(12 + 12)); r21.w = (uint)r21.w >> (32-12);                  } else r21.w = (uint)r22.z >> 12;
                  r16.w = 1 << (int)r21.z;
                  r17.w = (uint)r22.z >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.w = (int)r22.z & 4095;
                  r12.w = (int)r12.w & 1023;
                  r29.xz = (uint2)r16.ww;
                  r29.y = (uint)r17.w;
                  r22.yz = r13.zw * r29.zy + float2(0.5,0.5);
                  r30.xy = float2(-0.5,-0.5) + r29.zy;
                  r22.yz = min(r30.xy, r22.yz);
                  r30.x = (uint)r18.w;
                  r30.y = (uint)r21.w;
                  r21.zw = r30.xy + r22.yz;
                  r30.xy = invMaskTexSizes.xy * r21.zw;
                  r30.z = (uint)r12.w;
                  r31.xyz = invMaskTexSizes.xyx * r23.zyz;
                  r31.xyz = r31.xyz * r29.xyz;
                  r32.xyz = invMaskTexSizes.xyx * r27.zyz;
                  r29.xyz = r32.xyz * r29.xyz;
                  r12.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.x, r29.x).x;
                } else {
                  r16.w = cmp((int)r21.x == 6);
                  r12.w = r16.w ? 0 : 1;
                }
              } else {
                r12.w = 1;
              }
              r12.w = saturate(0.764705896 * r12.w);
              if (r21.y != 0) {
                r16.w = cmp((int)r21.y == 3);
                if (r16.w != 0) {
                  if (4 == 0) r21.x = 0; else if (4+24 < 32) {                   r21.x = (uint)r22.x << (32-(4 + 24)); r21.x = (uint)r21.x >> (32-4);                  } else r21.x = (uint)r22.x >> 24;
                  if (12 == 0) r21.y = 0; else if (12+12 < 32) {                   r21.y = (uint)r22.x << (32-(12 + 12)); r21.y = (uint)r21.y >> (32-12);                  } else r21.y = (uint)r22.x >> 12;
                  if (10 == 0) r21.z = 0; else if (10+10 < 32) {                   r21.z = (uint)r22.w << (32-(10 + 10)); r21.z = (uint)r21.z >> (32-10);                  } else r21.z = (uint)r22.w >> 10;
                  r16.w = 1 << (int)r21.x;
                  r17.w = (uint)r22.x >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.w = (int)r22.x & 4095;
                  r22.xz = (uint2)r16.ww;
                  r22.y = (uint)r17.w;
                  r13.zw = r13.zw * r22.xy + float2(0.5,0.5);
                  r21.xw = float2(-0.5,-0.5) + r22.zy;
                  r13.zw = min(r21.xw, r13.zw);
                  r29.x = (uint)r18.w;
                  r29.yz = (uint2)r21.yz;
                  r13.zw = r29.xy + r13.zw;
                  r29.xy = invMaskTexSizes.zw * r13.zw;
                  r21.xyz = invMaskTexSizes.zwz * r23.xyz;
                  r21.xyz = r21.xyz * r22.xyz;
                  r23.xyz = invMaskTexSizes.zwz * r27.xyz;
                  r22.xyz = r23.xyz * r22.xyz;
                  r21.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r29.xyz, r21.xyz, r22.xyz).xyz;
                } else {
                  r21.xyz = float3(0.5,0.5,1);
                }
                r13.zw = r21.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                r16.w = dot(r13.zw, r13.zw);
                r16.w = 1 + -r16.w;
                r16.w = max(0, r16.w);
                r16.w = sqrt(r16.w);
                r17.w = r21.z * r21.z;
                r17.w = 0.333333343 * r17.w;
                r17.w = min(1, r17.w);
                r18.w = dot(r26.xyz, r26.xyz);
                r18.w = rsqrt(r18.w);
                r21.xyz = r26.xyz * r18.www;
                r18.w = dot(-r25.xyz, -r25.xyz);
                r18.w = rsqrt(r18.w);
                r22.xyz = -r25.xyz * r18.www;
                r23.xyz = r24.xyz * r4.yyy;
                r21.xyz = r21.xyz * r4.yyy;
                r22.xyz = r22.xyz * r4.yyy;
                r18.w = -17 * r12.w;
                r18.w = exp2(r18.w);
                r17.w = r18.w + r17.w;
                r17.w = log2(r17.w);
                r17.w = -0.0588235296 * r17.w;
                r12.w = max(0, r17.w);
                r22.xyz = r22.xyz * r13.www;
                r21.xyz = r21.xyz * r13.zzz + r22.xyz;
                r21.xyz = r23.xyz * r16.www + r21.xyz;
                r13.z = dot(r21.xyz, r21.xyz);
                r13.z = rsqrt(r13.z);
                r21.xyz = r21.xyz * r13.zzz;
                r13.z = 1 + -r15.w;
                r22.xyz = r18.xyz * r13.zzz;
                r18.xyz = r21.xyz * r15.www + r22.xyz;
              }
              r13.z = 1 + -r15.w;
              r21.xyz = r14.xyz * r13.zzz;
              r14.xyz = r20.xyz * r15.www + r21.xyz;
              r20.xyz = r19.xyz * r13.zzz;
              r19.xyz = r28.xyz * r15.www + r20.xyz;
              r8.w = r8.w * r13.z + r15.w;
              r13.z = r13.z * r9.w;
              r9.w = r12.w * r15.w + r13.z;
            }
          }
        }
      }
    }
    r15.xyz = r14.xyz;
    r16.xyz = r18.xyz;
    r17.xyz = r19.xyz;
    r3.x = r8.w;
    r5.w = r9.w;
    r6.w = (int)r6.w + 32;
  }
  r3.x = saturate(r3.x);
  r1.z = 1 + -r3.x;
  r2.xyz = r2.xyz * r1.zzz + r15.xyz;
  r0.y = r0.y * r1.z + r3.x;
  r4.xyz = r4.xzw * r1.zzz + r16.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r9.y = r0.z * r1.z + r5.w;
  r3.xyz = r3.yzw * r1.zzz + r17.xyz;
  r0.z = cmp(0.5 < uvMotionToggle1);
  if (r0.z != 0) {
    r0.z = rowCount * columnCount;
    r1.w = imageTime * r0.z;
    r2.w = gameTime.w * r1.w;
    r2.w = cmp(r2.w >= -r2.w);
    r2.w = r2.w ? r1.w : -r1.w;
    r3.w = 1 / r2.w;
    r3.w = gameTime.w * r3.w;
    r3.w = frac(r3.w);
    r2.w = r3.w * r2.w;
    r1.w = r2.w / r1.w;
    r0.z = r1.w * r0.z;
    r0.z = round(r0.z);
    r1.w = r0.z / columnCount;
    r2.w = columnCount * r0.z;
    r2.w = cmp(r2.w >= -r2.w);
    r2.w = r2.w ? columnCount : -columnCount;
    r3.w = 1 / r2.w;
    r0.z = r3.w * r0.z;
    r0.z = frac(r0.z);
    r0.z = r2.w * r0.z;
    r0.z = trunc(r0.z);
    r0.z = r1.x + r0.z;
    r10.x = r0.z / columnCount;
    r0.z = trunc(r1.w);
    r0.z = r1.y + r0.z;
    r10.y = r0.z / rowCount;
  } else {
    r0.z = dot(-v7.xyz, -v7.xyz);
    r0.z = rsqrt(r0.z);
    r13.xyz = -v7.xyz * r0.zzz;
    r14.x = dot(r13.xyz, r6.xyz);
    r14.y = dot(r13.xyz, r7.xyz);
    r0.z = dot(r13.xyz, r5.xyz);
    r1.w = cmp(0 < r0.z);
    r8.zw = -r14.xy / r0.zz;
    r8.zw = r1.ww ? r8.zw : 0;
    r9.zw = float2(-0.5,-0.5) + r1.xy;
    r0.z = 9.99999975e-06 + layerDepth;
    r8.zw = r8.zw * r0.zz;
    r8.zw = scaleUVs.xy * r8.zw;
    r8.zw = r9.zw * scaleUVs.xy + r8.zw;
    r8.zw = offsetUVs.xy * scaleUVs.xy + r8.zw;
    r0.z = rotateUVs.y * gameTime.w + 1;
    r0.z = rotateUVs.x * r0.z;
    r0.z = 0.0174532924 * r0.z;
    sincos(r0.z, r13.x, r14.x);
    r14.y = r14.x;
    r14.z = r13.x;
    r15.x = dot(r14.yz, r8.zw);
    r14.x = -r13.x;
    r15.y = dot(r14.xy, r8.zw);
    r8.zw = gameTime.ww * scrollUVs.xy;
    r8.zw = r8.zw * scaleUVs.xy + r15.xy;
    r0.z = gameTime.w * zoomRate;
    r0.z = cos(r0.z);
    r0.z = r0.z * 0.5 + 0.5;
    r0.z = 1 + -r0.z;
    r1.w = zoomUVs.y + -zoomUVs.x;
    r0.z = r0.z * r1.w + zoomUVs.x;
    r8.zw = r8.zw / r0.zz;
    r8.zw = float2(0.5,0.5) + r8.zw;
    r9.zw = saturate(r8.zw);
    r10.xy = clampU ? r9.zw : r8.zw;
  }
  r10.xyzw = emissiveMap1.Sample(colorSampler_s, r10.xy).xyzw;
  r10.xyzw = emissiveTint1.xyzw * r10.xyzw;
  r10.xyz = r10.xyz * r10.www;
  r0.z = v3.x + v3.y;
  r0.z = v3.z + r0.z;
  r1.w = flickerSeed.y + r0.z;
  r1.w = frac(r1.w);
  r13.y = gameTime.w * flickerSpeed + r1.w;
  r13.x = flickerSeed.x;
  r1.w = flickerLookupMap.SampleLevel(lookupSampler_s, r13.xy, 0).x;
  r1.w = log2(abs(r1.w));
  r1.w = flickerPower * r1.w;
  r1.w = exp2(r1.w);
  r2.w = flickerRange.y + -flickerRange.x;
  r1.w = r1.w * r2.w + flickerRange.x;
  r10.xyz = r10.xyz * r1.www;
  r1.w = cmp(0.5 < uvMotionToggle2);
  if (r1.w != 0) {
    r1.w = columnCount2 * rowCount2;
    r2.w = imageTime2 * r1.w;
    r3.w = gameTime.w * r2.w;
    r3.w = cmp(r3.w >= -r3.w);
    r3.w = r3.w ? r2.w : -r2.w;
    r5.w = 1 / r3.w;
    r5.w = gameTime.w * r5.w;
    r5.w = frac(r5.w);
    r3.w = r5.w * r3.w;
    r2.w = r3.w / r2.w;
    r1.w = r2.w * r1.w;
    r1.w = round(r1.w);
    r2.w = r1.w / columnCount2;
    r3.w = columnCount2 * r1.w;
    r3.w = cmp(r3.w >= -r3.w);
    r3.w = r3.w ? columnCount2 : -columnCount2;
    r5.w = 1 / r3.w;
    r1.w = r5.w * r1.w;
    r1.w = frac(r1.w);
    r1.w = r3.w * r1.w;
    r1.w = trunc(r1.w);
    r1.w = r1.x + r1.w;
    r13.x = r1.w / columnCount2;
    r1.w = trunc(r2.w);
    r1.w = r1.y + r1.w;
    r13.y = r1.w / rowCount2;
  } else {
    r1.w = dot(-v7.xyz, -v7.xyz);
    r1.w = rsqrt(r1.w);
    r14.xyz = -v7.xyz * r1.www;
    r6.x = dot(r14.xyz, r6.xyz);
    r6.y = dot(r14.xyz, r7.xyz);
    r1.w = dot(r14.xyz, r5.xyz);
    r2.w = cmp(0 < r1.w);
    r5.xy = -r6.xy / r1.ww;
    r5.xy = r2.ww ? r5.xy : 0;
    r1.xy = float2(-0.5,-0.5) + r1.xy;
    r1.w = 9.99999975e-06 + layer2Depth;
    r5.xy = r5.xy * r1.ww;
    r5.xy = scaleUVs2.xy * r5.xy;
    r1.xy = r1.xy * scaleUVs2.xy + r5.xy;
    r1.xy = offsetUVs2.xy * scaleUVs2.xy + r1.xy;
    r1.w = rotateUVs2.y * gameTime.w + 1;
    r1.w = rotateUVs2.x * r1.w;
    r1.w = 0.0174532924 * r1.w;
    sincos(r1.w, r5.x, r6.x);
    r6.y = r6.x;
    r6.z = r5.x;
    r7.x = dot(r6.yz, r1.xy);
    r6.x = -r5.x;
    r7.y = dot(r6.xy, r1.xy);
    r1.xy = gameTime.ww * scrollUVs2.xy;
    r1.xy = r1.xy * scaleUVs2.xy + r7.xy;
    r1.w = gameTime.w * zoomRate2;
    r1.w = cos(r1.w);
    r1.w = r1.w * 0.5 + 0.5;
    r1.w = 1 + -r1.w;
    r2.w = zoomUVs2.y + -zoomUVs2.x;
    r1.w = r1.w * r2.w + zoomUVs2.x;
    r1.xy = r1.xy / r1.ww;
    r1.xy = float2(0.5,0.5) + r1.xy;
    r5.xy = saturate(r1.xy);
    r13.x = clampU2 ? r5.x : r1.x;
    r13.y = clampV2 ? r5.y : r1.y;
  }
  r5.xyzw = emissiveMap2.Sample(colorSampler_s, r13.xy).xyzw;
  r1.xyw = emissiveTint2.xyz * r5.xyz;
  r2.w = hdrScale * r5.w;
  r1.xyw = r2.www * r1.xyw;
  r0.z = clampV2 + r0.z;
  r0.z = frac(r0.z);
  r5.y = gameTime.w * clampV2 + r0.z;
  r5.x = clampV2;
  r0.z = flickerLookupMap.SampleLevel(lookupSampler_s, r5.xy, 0).x;
  r0.z = log2(abs(r0.z));
  r0.z = flickerPower2 * r0.z;
  r0.z = exp2(r0.z);
  r2.w = flickerRange2.y + -flickerRange2.x;
  r0.z = r0.z * r2.w + flickerRange2.x;
  r1.xyw = r1.xyw * r0.zzz;
  r0.z = 1 + -r5.w;
  r1.xyw = r10.xyz * r0.zzz + r1.xyw;
  r1.xyz = r1.xyw * r1.zzz;
  r0.z = dot(-v7.xyz, -v7.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = -v7.xyz * r0.zzz;
  r2.w = cmp(isDepthHack != 0);
  r6.xy = (uint2)r8.xy;
  r3.w = dot(r6.yx, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r7.x, r8.x);
  r3.w = dot(r6.xy, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r6.x, r10.x);
  r9.x = saturate(dot(r4.xyz, r5.xyz));
  r3.w = dot(-r5.xyz, r4.xyz);
  r3.w = r3.w + r3.w;
  r13.xyz = r4.xyz * -r3.www + -r5.xyz;
  r3.w = 17 * r9.y;
  r3.w = exp2(r3.w);
  r3.w = 2 + r3.w;
  r3.w = 2 / r3.w;
  r5.w = sqrt(r3.w);
  r6.y = 1 + -r9.y;
  r6.z = 5 * r6.y;
  r6.w = r6.y * 5 + -2.5;
  r6.w = saturate(0.400000006 * r6.w);
  r6.w = 100 * r6.w;
  r7.zw = -r6.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r7.z = exp2(r7.z);
  r7.z = r9.x * r7.z;
  r8.w = r6.z * r6.y;
  r7.w = -r8.w * 2.0159049 + r7.w;
  r7.w = exp2(r7.w);
  r7.w = r9.x * r7.w;
  r7.zw = float2(9.1368103,9.70808983) * r7.zw;
  r7.z = max(r7.z, r7.w);
  r7.z = max(1.26815999, r7.z);
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.x = 1;
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r7.w = 0;
  r8.w = 0;
  while (true) {
    r9.z = cmp((uint)r8.w >= numRefProbes);
    if (r9.z != 0) break;
    r14.z = (uint)r8.w >> 5;
    r15.xyz = (int3)r12.xyz + (int3)r14.xyz;
    r9.z = visibleProbes.Load(r15.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r8.w, l(0), t15.wxyz
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r8.w, l(16), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r8.w, l(32), t15.yxwz
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r8.w, l(48), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r8.w, l(64), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r8.w, l(80), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.yz, r8.w, l(96), t15.xxyx
  r10.y = samp0[]..swiz;
  r10.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r8.w, l(116), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(132), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(148), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(164), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(180), t15.zwxy
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(196), t15.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xy, r8.w, l(212), t15.xyxx
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
    r15.xyz = v7.xyz + -r23.yzw;
    r9.w = dot(r15.xyz, r15.xyz);
    r9.w = sqrt(r9.w);
    r9.w = cmp(probeDebugRadius >= r9.w);
    r10.w = (int)r29.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(0), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(16), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(32), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(48), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(64), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(80), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
    r12.w = dot(r36.xyz, r15.xyz);
    r12.w = saturate(r12.w + r36.w);
    r14.z = dot(r37.xyz, r15.xyz);
    r14.z = saturate(r14.z + r37.w);
    r12.w = r14.z * r12.w;
    r14.z = dot(r38.xyz, r15.xyz);
    r14.z = saturate(r14.z + r38.w);
    r12.w = r14.z * r12.w;
    r14.z = dot(r39.xyz, r15.xyz);
    r14.z = saturate(r14.z + r39.w);
    r12.w = r14.z * r12.w;
    r14.z = dot(r40.xyz, r15.xyz);
    r14.z = saturate(r14.z + r40.w);
    r12.w = r14.z * r12.w;
    r14.z = dot(r41.xyz, r15.xyz);
    r14.z = saturate(r14.z + r41.w);
    r16.x = r14.z * r12.w;
    r12.w = (int)r10.y & 1;
    r14.zw = r12.ww ? r16.xy : r16.zx;
    r36.xy = r29.zw;
    r36.z = r30.z;
    r12.w = dot(r13.xyz, r36.xyz);
    r16.x = dot(r15.xyz, r36.xyz);
    r16.x = r16.x + -r30.w;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r6.w);
    r16.x = r16.w ? r16.x : -r16.x;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r16.x / r12.w;
    r12.w = min(131072, abs(r12.w));
    r30.z = r31.z;
    r16.x = dot(r13.xyz, r30.xyz);
    r16.w = dot(r15.xyz, r30.xyz);
    r16.w = r16.w + -r31.w;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r6.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r16.x = max(1.00000001e-07, -r16.x);
    r16.x = r16.w / r16.x;
    r12.w = min(abs(r16.x), r12.w);
    r31.z = r32.z;
    r16.x = dot(r13.xyz, r31.xyz);
    r16.w = dot(r15.xyz, r31.xyz);
    r16.w = r16.w + -r32.w;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r6.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r16.x = max(1.00000001e-07, -r16.x);
    r16.x = r16.w / r16.x;
    r12.w = min(abs(r16.x), r12.w);
    r32.z = r33.z;
    r16.x = dot(r13.xyz, r32.xyz);
    r16.w = dot(r15.xyz, r32.xyz);
    r16.w = r16.w + -r33.w;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r6.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r16.x = max(1.00000001e-07, -r16.x);
    r16.x = r16.w / r16.x;
    r12.w = min(abs(r16.x), r12.w);
    r33.z = r34.x;
    r16.x = dot(r13.xyz, r33.xyz);
    r16.w = dot(r15.xyz, r33.xyz);
    r16.w = r16.w + -r34.y;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r6.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r16.x = max(1.00000001e-07, -r16.x);
    r16.x = r16.w / r16.x;
    r12.w = min(abs(r16.x), r12.w);
    r35.zw = r34.zw;
    r16.x = dot(r13.zxy, r35.xzw);
    r16.w = dot(r15.zxy, r35.xzw);
    r16.w = r16.w + -r35.y;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r6.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r16.x = max(1.00000001e-07, -r16.x);
    r16.x = r16.w / r16.x;
    r12.w = min(abs(r16.x), r12.w);
    r30.x = r26.w;
    r30.yz = r27.zw;
    r30.xyz = r30.xyz + r15.xyz;
    r30.xyz = r13.xyz * r12.www + r30.xyz;
    r16.x = dot(r30.xyz, r30.xyz);
    r16.x = sqrt(r16.x);
    r12.w = r12.w / r16.x;
    r12.w = r12.w + r12.w;
    r12.w = sqrt(r12.w);
    r12.w = r6.y * 5 + r12.w;
    r12.w = -0.844799995 + r12.w;
    r23.y = r24.z;
    r23.z = r25.x;
    r31.x = dot(r30.xyz, r23.xyz);
    r32.xy = r24.xw;
    r32.z = r25.w;
    r31.y = dot(r30.xyz, r32.xyz);
    r25.x = r24.y;
    r31.z = dot(r30.xyz, r25.xyz);
    if (6 == 0) r16.x = 0; else if (6+25 < 32) {     r16.x = (uint)r29.y << (32-(6 + 25)); r16.x = (uint)r16.x >> (32-6);    } else r16.x = (uint)r29.y >> 25;
    if (9 == 0) r16.w = 0; else if (9+16 < 32) {     r16.w = (uint)r29.y << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);    } else r16.w = (uint)r29.y >> 16;
    r31.w = (uint)r16.w;
    r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r12.w).xyz;
    r29.yzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
    r29.yzw = cmp((int3)r29.yzw == int3(2139095040,2139095040,2139095040));
    r12.w = (int)r29.z | (int)r29.y;
    r12.w = (int)r29.w | (int)r12.w;
    r24.xyz = r12.www ? float3(1,1,0) : r24.xyz;
    r30.x = dot(r15.xyz, r23.xyz);
    r30.y = dot(r15.xyz, r32.xyz);
    r30.z = dot(r15.xyz, r25.xyz);
    r26.xyz = saturate(r30.xyz * r26.xyz + float3(0.5,0.5,0.5));
    r27.z = r28.x;
    r26.xyz = r26.xyz * r27.xyz + r28.yzw;
    r31.x = dot(r4.xyz, r23.xyz);
    r31.y = dot(r4.xyz, r32.xyz);
    r31.z = dot(r4.xyz, r25.xyz);
    r23.xyz = cmp(float3(0,0,0) < r31.xyz);
    r17.z = r23.x ? 0 : 0.5;
    r25.xyz = r26.xyz + r17.xyz;
    r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r18.z = r23.y ? 0 : 0.5;
    r23.xyw = r26.xyz + r18.xyz;
    r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
    r19.z = r23.z ? 0 : 0.5;
    r26.xyz = r26.xyz + r19.xyz;
    r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
    r27.xyz = r31.xyz * r31.xyz;
    r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
    r29.yzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
    r29.yzw = cmp((int3)r29.yzw == int3(2139095040,2139095040,2139095040));
    r12.w = (int)r29.z | (int)r29.y;
    r12.w = (int)r29.w | (int)r12.w;
    r28.xyz = r12.www ? float3(1,1,0) : r28.xyz;
    r30.xyzw = r21.xyzw;
    r29.yzw = r22.yzw;
    r12.w = r7.w;
    r16.w = r9.z;
    while (true) {
      if (r16.w == 0) break;
      r17.z = firstbitlow((uint)r16.w);
      r17.z = 1 << (int)r17.z;
      r17.w = (int)r16.w & (int)r17.z;
      if (r17.w != 0) {
        r17.z = ~(int)r17.z;
        r16.w = (int)r16.w & (int)r17.z;
        if (r9.w != 0) {
          r17.z = r10.y;
          r31.xy = r14.zw;
          r17.w = 1;
          while (true) {
            r18.z = cmp((int)r17.w >= (int)r16.x);
            if (r18.z != 0) break;
            r18.z = (int)r10.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.z, l(0), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.z, l(16), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.z, l(32), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.z, l(48), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r18.z, l(64), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r18.z, l(80), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
            r18.z = dot(r32.xyz, r15.xyz);
            r18.z = saturate(r18.z + r32.w);
            r18.z = r31.x * r18.z;
            r18.w = dot(r33.xyz, r15.xyz);
            r18.w = saturate(r18.w + r33.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r34.xyz, r15.xyz);
            r18.w = saturate(r18.w + r34.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r35.xyz, r15.xyz);
            r18.w = saturate(r18.w + r35.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r36.xyz, r15.xyz);
            r18.w = saturate(r18.w + r36.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r37.xyz, r15.xyz);
            r18.w = saturate(r18.w + r37.w);
            r31.x = r18.z * r18.w;
            r19.z = (uint)r17.z >> 2;
            if (1 == 0) r19.w = 0; else if (1+2 < 32) {             r19.w = (uint)r17.z << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);            } else r19.w = (uint)r17.z >> 2;
            r20.z = (int)r19.z & 2;
            r20.w = max(r31.y, r31.x);
            r18.z = -r18.z * r18.w + 1;
            r18.z = r31.y * r18.z;
            r20.y = r20.z ? r18.z : r20.w;
            r31.xy = r19.ww ? r31.xy : r20.xy;
            r17.w = (int)r17.w + 1;
            r17.z = r19.z;
          }
          r31.y = saturate(r31.y);
          r17.z = r31.y * r10.z;
          r17.w = cmp(0 < r17.z);
          if (r17.w != 0) {
            r32.z = r31.y * r10.z + r29.w;
            r17.z = r17.z * r29.x;
            r20.yzw = r27.xyz * r17.zzz;
            r31.xzw = r23.xyw * r20.zzz;
            r31.xzw = r25.xyz * r20.yyy + r31.xzw;
            r20.yzw = r26.xyz * r20.www + r31.xzw;
            r31.xzw = r20.yzw * r28.xyz;
            r17.w = dot(r31.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r33.xyz = r20.yzw * r28.xyz + r30.xyz;
            r18.z = r17.w * r7.z;
            r20.yzw = r24.xyz * r17.zzz;
            r17.z = dot(r20.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r17.z = r7.z * r17.w + r17.z;
            r17.z = r18.z / r17.z;
            r34.x = r30.w;
            r34.yz = r29.yz;
            r32.xyw = r20.zwy * r17.zzz + r34.yzx;
            r33.w = r32.w;
          } else {
            r33.xyzw = r30.xyzw;
            r32.xyz = r29.yzw;
          }
          r12.w = -1;
          r30.xyzw = r33.xyzw;
          r29.yzw = r32.xyz;
          break;
        }
      }
    }
    if (r12.w != 0) {
      r21.xyzw = r30.xyzw;
      r22.yzw = r29.yzw;
      r7.w = -1;
      break;
    }
    r8.w = (int)r8.w + 32;
    r21.xyzw = r30.xyzw;
    r22.yzw = r29.yzw;
    r7.w = r12.w;
  }
  if (r7.w == 0) {
    r7.w = numRefProbes + -numOverrideProbes;
    r8.w = (int)r7.w & -32;
    r9.z = (int)r7.w + (int)-r8.w;
    r9.w = numRefProbes & -32;
    r10.y = (int)-r9.w + numRefProbes;
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r20.xy = float2(0,0);
    r23.xyzw = r21.xyzw;
    r24.yzw = r22.yzw;
    r10.z = r8.w;
    while (true) {
      r10.w = cmp((uint)r10.z >= numRefProbes);
      if (r10.w != 0) break;
      r14.z = (uint)r10.z >> 5;
      r15.xyz = (int3)r12.xyz + (int3)r14.xyz;
      r10.w = visibleProbes.Load(r15.xyzw).x;
      r12.w = cmp((int)r8.w == (int)r10.z);
      bitmask.z = ((~(-1 << r9.z)) << 0) & 0xffffffff;  r14.z = (((uint)0 << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
      r10.w = r12.w ? r14.z : r10.w;
      r12.w = cmp((int)r9.w == (int)r10.z);
      if (r10.y == 0) r14.z = 0; else if (r10.y+0 < 32) {       r14.z = (uint)r10.w << (32-(r10.y + 0)); r14.z = (uint)r14.z >> (32-r10.y);      } else r14.z = (uint)r10.w >> 0;
      r10.w = r12.w ? r14.z : r10.w;
      r12.w = (int)r10.z + numLights;
      r25.xyzw = r23.xyzw;
      r26.xyz = r24.yzw;
      r14.z = r10.w;
      while (true) {
        if (r14.z == 0) break;
        r14.w = firstbitlow((uint)r14.z);
        r15.x = 1 << (int)r14.w;
        r15.y = (int)r14.z & (int)r15.x;
        if (r15.y != 0) {
          r14.z = (int)r14.z ^ (int)r15.x;
          r15.x = (int)r12.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r15.x, l(0), t11.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r15.x, l(16), t11.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
          r27.xyz = -v7.xyz + r27.xyz;
          r15.z = r27.w;
          r15.xyz = cmp(abs(r27.xyz) < r15.zxy);
          r15.x = r15.y ? r15.x : 0;
          r15.x = r15.z ? r15.x : 0;
          if (r15.x != 0) {
            r14.w = (int)r10.z + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(0), t15.wxyz
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xy, r14.w, l(96), t15.xyxx
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(116), t15.zwxy
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
            r29.xyz = v7.xyz + -r27.yzw;
            r15.z = (int)r28.w & 0x0000ffff;
            if (6 == 0) r16.w = 0; else if (6+25 < 32) {             r16.w = (uint)r28.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);            } else r16.w = (uint)r28.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.z, l(0), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.z, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.z, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.z, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r15.z, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r15.z, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r17.w = dot(r30.xyz, r29.xyz);
            r17.w = saturate(r17.w + r30.w);
            r18.z = dot(r31.xyz, r29.xyz);
            r18.z = saturate(r18.z + r31.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r32.xyz, r29.xyz);
            r18.z = saturate(r18.z + r32.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r33.xyz, r29.xyz);
            r18.z = saturate(r18.z + r33.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r34.xyz, r29.xyz);
            r18.z = saturate(r18.z + r34.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r35.xyz, r29.xyz);
            r18.z = saturate(r18.z + r35.w);
            r16.x = r18.z * r17.w;
            r17.w = r15.x ? 0.000000 : 0;
            r18.zw = r17.ww ? r16.xy : r16.zx;
            r16.x = r15.x;
            r30.xy = r18.zw;
            r17.w = 1;
            while (true) {
              r19.w = cmp((int)r17.w >= (int)r16.w);
              if (r19.w != 0) break;
              r19.w = (int)r15.z + (int)r17.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r19.w = dot(r31.xyz, r29.xyz);
              r19.w = saturate(r19.w + r31.w);
              r19.w = r30.x * r19.w;
              r20.w = dot(r32.xyz, r29.xyz);
              r20.w = saturate(r20.w + r32.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r33.xyz, r29.xyz);
              r20.w = saturate(r20.w + r33.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r34.xyz, r29.xyz);
              r20.w = saturate(r20.w + r34.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r35.xyz, r29.xyz);
              r20.w = saturate(r20.w + r35.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r36.xyz, r29.xyz);
              r20.w = saturate(r20.w + r36.w);
              r30.x = r20.w * r19.w;
              r27.w = (uint)r16.x >> 2;
              if (1 == 0) r29.w = 0; else if (1+2 < 32) {               r29.w = (uint)r16.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);              } else r29.w = (uint)r16.x >> 2;
              r30.z = (int)r27.w & 2;
              r30.w = max(r30.y, r30.x);
              r19.w = -r19.w * r20.w + 1;
              r19.w = r30.y * r19.w;
              r18.y = r30.z ? r19.w : r30.w;
              r30.xy = r29.ww ? r30.xy : r18.xy;
              r17.w = (int)r17.w + 1;
              r16.x = r27.w;
            }
            r30.y = saturate(r30.y);
            r15.x = r30.y * r15.y;
            r15.z = cmp(0 < r15.x);
            if (r15.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(16), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(32), t15.yxwz
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(48), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(64), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(80), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(132), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(148), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(164), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(180), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(196), t15.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r14.w, l(212), t15.xyxx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
              r26.z = r30.y * r15.y + r26.z;
              r14.w = r15.x * r28.z;
              r28.z = r36.z;
              r15.x = dot(r13.xyz, r28.xyz);
              r15.y = dot(r29.xyz, r28.xyz);
              r15.y = r15.y + -r36.w;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r6.w);
              r15.y = r15.z ? r15.y : -r15.y;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.y / r15.x;
              r15.x = min(131072, abs(r15.x));
              r36.z = r37.z;
              r15.y = dot(r13.xyz, r36.xyz);
              r15.z = dot(r29.xyz, r36.xyz);
              r15.z = r15.z + -r37.w;
              r16.x = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r6.w);
              r15.z = r16.x ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r15.x = min(r15.x, abs(r15.y));
              r37.z = r38.z;
              r15.y = dot(r13.xyz, r37.xyz);
              r15.z = dot(r29.xyz, r37.xyz);
              r15.z = r15.z + -r38.w;
              r16.x = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r6.w);
              r15.z = r16.x ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r15.x = min(r15.x, abs(r15.y));
              r38.z = r39.z;
              r15.y = dot(r13.xyz, r38.xyz);
              r15.z = dot(r29.xyz, r38.xyz);
              r15.z = r15.z + -r39.w;
              r16.x = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r6.w);
              r15.z = r16.x ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r15.x = min(r15.x, abs(r15.y));
              r39.z = r40.x;
              r15.y = dot(r13.xyz, r39.xyz);
              r15.z = dot(r29.xyz, r39.xyz);
              r15.z = r15.z + -r40.y;
              r16.x = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r6.w);
              r15.z = r16.x ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r15.x = min(r15.x, abs(r15.y));
              r41.zw = r40.zw;
              r15.y = dot(r13.zxy, r41.xzw);
              r15.z = dot(r29.zxy, r41.xzw);
              r15.z = r15.z + -r41.y;
              r16.x = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r6.w);
              r15.z = r16.x ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r15.x = min(r15.x, abs(r15.y));
              r28.x = r33.w;
              r28.yz = r34.zw;
              r18.yzw = r28.xyz + r29.xyz;
              r18.yzw = r13.xyz * r15.xxx + r18.yzw;
              r15.y = dot(r18.yzw, r18.yzw);
              r15.y = sqrt(r15.y);
              r15.x = r15.x / r15.y;
              r15.x = r15.x + r15.x;
              r15.x = sqrt(r15.x);
              r15.x = r6.y * 5 + r15.x;
              r15.x = -0.844799995 + r15.x;
              r27.y = r31.z;
              r27.z = r32.x;
              r36.x = dot(r18.yzw, r27.xyz);
              r28.xy = r31.xw;
              r28.z = r32.w;
              r36.y = dot(r18.yzw, r28.xyz);
              r32.x = r31.y;
              r36.z = dot(r18.yzw, r32.xyz);
              if (9 == 0) r15.y = 0; else if (9+16 < 32) {               r15.y = (uint)r28.w << (32-(9 + 16)); r15.y = (uint)r15.y >> (32-9);              } else r15.y = (uint)r28.w >> 16;
              r36.w = (uint)r15.y;
              r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r15.x).xyz;
              r18.yzw = (int3)r15.xyz & int3(-2147483648,-2147483648,-2147483648);
              r18.yzw = cmp((int3)r18.yzw == int3(2139095040,2139095040,2139095040));
              r16.x = (int)r18.z | (int)r18.y;
              r16.x = (int)r18.w | (int)r16.x;
              r15.xyz = r16.xxx ? float3(1,1,0) : r15.xyz;
              r31.x = dot(r29.xyz, r27.xyz);
              r31.y = dot(r29.xyz, r28.xyz);
              r31.z = dot(r29.xyz, r32.xyz);
              r18.yzw = saturate(r31.xyz * r33.xyz + float3(0.5,0.5,0.5));
              r34.z = r35.x;
              r18.yzw = r18.yzw * r34.xyz + r35.yzw;
              r36.x = dot(r4.xyz, r27.xyz);
              r36.y = dot(r4.xyz, r28.xyz);
              r36.z = dot(r4.xyz, r32.xyz);
              r27.xyz = cmp(float3(0,0,0) < r36.xyz);
              r17.z = r27.x ? 0 : 0.5;
              r28.xyz = r18.yzw + r17.xyz;
              r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
              r29.xyz = r36.xyz * r36.xyz;
              r29.xyz = r29.xyz * r14.www;
              r19.z = r27.y ? 0 : 0.5;
              r27.xyw = r19.xyz + r18.yzw;
              r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
              r27.xyw = r27.xyw * r29.yyy;
              r27.xyw = r28.xyz * r29.xxx + r27.xyw;
              r20.z = r27.z ? 0 : 0.5;
              r18.yzw = r20.xyz + r18.yzw;
              r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
              r18.yzw = r18.yzw * r29.zzz + r27.xyw;
              r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
              r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
              r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
              r16.x = (int)r28.y | (int)r28.x;
              r16.x = (int)r28.z | (int)r16.x;
              r27.xyz = r16.xxx ? float3(1,1,0) : r27.xyz;
              r28.xyz = r27.xyz * r18.yzw;
              r16.x = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r25.xyz = r18.yzw * r27.xyz + r25.xyz;
              r16.w = r16.x * r7.z;
              r15.xyz = r15.xyz * r14.www;
              r14.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.w = r7.z * r16.x + r14.w;
              r14.w = r16.w / r14.w;
              r27.x = r25.w;
              r27.yz = r26.xy;
              r26.xyw = r15.yzx * r14.www + r27.yzx;
              r25.w = r26.w;
            }
          }
        }
      }
      r23.xyzw = r25.xyzw;
      r24.yzw = r26.xyz;
      r10.z = (int)r10.z + 32;
    }
    r9.w = cmp(r24.w < 1);
    if (r9.w != 0) {
      r14.xy = float2(0,0);
      r15.w = 0;
      r16.yz = float2(0,1);
      r17.xy = float2(0,0);
      r18.x = 1;
      r19.xy = float2(0,0);
      r20.xy = float2(0,0);
      r25.x = r23.w;
      r25.yzw = r24.yzw;
      r10.yzw = r23.xyz;
      r9.w = r24.w;
      r12.w = 0;
      while (true) {
        r14.w = cmp((uint)r12.w >= (uint)r7.w);
        if (r14.w != 0) break;
        r14.z = (uint)r12.w >> 5;
        r15.xyz = (int3)r12.xyz + (int3)r14.xyz;
        r14.z = visibleProbes.Load(r15.xyzw).x;
        r14.w = cmp((int)r8.w == (int)r12.w);
        if (r9.z == 0) r15.x = 0; else if (r9.z+0 < 32) {         r15.x = (uint)r14.z << (32-(r9.z + 0)); r15.x = (uint)r15.x >> (32-r9.z);        } else r15.x = (uint)r14.z >> 0;
        r14.z = r14.w ? r15.x : r14.z;
        r14.w = (int)r12.w + numLights;
        r26.xyzw = r25.xyzw;
        r15.xyz = r10.yzw;
        r16.w = r9.w;
        r17.w = r14.z;
        while (true) {
          if (r17.w == 0) break;
          r18.z = firstbitlow((uint)r17.w);
          r18.w = 1 << (int)r18.z;
          r19.w = (int)r17.w & (int)r18.w;
          if (r19.w != 0) {
            r17.w = (int)r17.w ^ (int)r18.w;
            r18.w = (int)r14.w + (int)r18.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r18.w, l(0), t11.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xy, r18.w, l(16), t11.xyxx
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
            r27.xyz = -v7.xyz + r27.xyz;
            r28.z = r27.w;
            r27.xyz = cmp(abs(r27.xyz) < r28.zxy);
            r18.w = r27.y ? r27.x : 0;
            r18.w = r27.z ? r18.w : 0;
            if (r18.w != 0) {
              r18.z = (int)r12.w + (int)r18.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r18.z, l(0), t15.wxyz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xy, r18.z, l(96), t15.xyxx
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r18.z, l(116), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
              r30.xyz = v7.xyz + -r27.yzw;
              r18.w = (int)r29.w & 0x0000ffff;
              if (6 == 0) r19.w = 0; else if (6+25 < 32) {               r19.w = (uint)r29.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);              } else r19.w = (uint)r29.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r18.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r20.w = dot(r31.xyz, r30.xyz);
              r20.w = saturate(r20.w + r31.w);
              r22.w = dot(r32.xyz, r30.xyz);
              r22.w = saturate(r22.w + r32.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r33.xyz, r30.xyz);
              r22.w = saturate(r22.w + r33.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r34.xyz, r30.xyz);
              r22.w = saturate(r22.w + r34.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r35.xyz, r30.xyz);
              r22.w = saturate(r22.w + r35.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r36.xyz, r30.xyz);
              r22.w = saturate(r22.w + r36.w);
              r16.x = r22.w * r20.w;
              r20.w = (int)r28.x & 1;
              r28.zw = r20.ww ? r16.xy : r16.zx;
              r16.x = r28.x;
              r31.xy = r28.zw;
              r20.w = 1;
              while (true) {
                r22.w = cmp((int)r20.w >= (int)r19.w);
                if (r22.w != 0) break;
                r22.w = (int)r18.w + (int)r20.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r22.w, l(0), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r22.w, l(16), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r22.w, l(32), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r22.w, l(48), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r22.w, l(64), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r22.w, l(80), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r22.w = dot(r32.xyz, r30.xyz);
                r22.w = saturate(r22.w + r32.w);
                r22.w = r31.x * r22.w;
                r27.w = dot(r33.xyz, r30.xyz);
                r27.w = saturate(r27.w + r33.w);
                r22.w = r27.w * r22.w;
                r27.w = dot(r34.xyz, r30.xyz);
                r27.w = saturate(r27.w + r34.w);
                r22.w = r27.w * r22.w;
                r27.w = dot(r35.xyz, r30.xyz);
                r27.w = saturate(r27.w + r35.w);
                r22.w = r27.w * r22.w;
                r27.w = dot(r36.xyz, r30.xyz);
                r27.w = saturate(r27.w + r36.w);
                r22.w = r27.w * r22.w;
                r27.w = dot(r37.xyz, r30.xyz);
                r27.w = saturate(r27.w + r37.w);
                r31.x = r27.w * r22.w;
                r30.w = (uint)r16.x >> 2;
                if (1 == 0) r31.z = 0; else if (1+2 < 32) {                 r31.z = (uint)r16.x << (32-(1 + 2)); r31.z = (uint)r31.z >> (32-1);                } else r31.z = (uint)r16.x >> 2;
                r31.w = (int)r30.w & 2;
                r32.x = max(r31.y, r31.x);
                r22.w = -r22.w * r27.w + 1;
                r22.w = r31.y * r22.w;
                r18.y = r31.w ? r22.w : r32.x;
                r31.xy = r31.zz ? r31.xy : r18.xy;
                r20.w = (int)r20.w + 1;
                r16.x = r30.w;
              }
              r16.x = saturate(r31.y + -r16.w);
              r18.y = r16.x * r28.y;
              r18.w = cmp(0 < r18.y);
              if (r18.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r18.z, l(16), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r18.z, l(32), t15.yxwz
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r18.z, l(48), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r18.z, l(64), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r18.z, l(80), t15.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r18.z, l(132), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r18.z, l(148), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r18.z, l(164), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r18.z, l(180), t15.zwxy
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r18.z, l(196), t15.xyzw
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xy, r18.z, l(212), t15.xyxx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
                r26.w = r16.x * r28.y + r26.w;
                r16.x = r18.y * r29.z;
                r29.z = r37.z;
                r18.y = dot(r13.xyz, r29.xyz);
                r18.z = dot(r30.xyz, r29.xyz);
                r18.z = r18.z + -r37.w;
                r18.w = cmp(r18.z >= 0);
                r18.z = max(abs(r18.z), r6.w);
                r18.z = r18.w ? r18.z : -r18.z;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r18.z / r18.y;
                r18.y = min(131072, abs(r18.y));
                r37.z = r38.z;
                r18.z = dot(r13.xyz, r37.xyz);
                r18.w = dot(r30.xyz, r37.xyz);
                r18.w = r18.w + -r38.w;
                r19.w = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r6.w);
                r18.w = r19.w ? r18.w : -r18.w;
                r18.z = max(1.00000001e-07, -r18.z);
                r18.z = r18.w / r18.z;
                r18.y = min(r18.y, abs(r18.z));
                r38.z = r39.z;
                r18.z = dot(r13.xyz, r38.xyz);
                r18.w = dot(r30.xyz, r38.xyz);
                r18.w = r18.w + -r39.w;
                r19.w = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r6.w);
                r18.w = r19.w ? r18.w : -r18.w;
                r18.z = max(1.00000001e-07, -r18.z);
                r18.z = r18.w / r18.z;
                r18.y = min(r18.y, abs(r18.z));
                r39.z = r40.z;
                r18.z = dot(r13.xyz, r39.xyz);
                r18.w = dot(r30.xyz, r39.xyz);
                r18.w = r18.w + -r40.w;
                r19.w = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r6.w);
                r18.w = r19.w ? r18.w : -r18.w;
                r18.z = max(1.00000001e-07, -r18.z);
                r18.z = r18.w / r18.z;
                r18.y = min(r18.y, abs(r18.z));
                r40.z = r41.x;
                r18.z = dot(r13.xyz, r40.xyz);
                r18.w = dot(r30.xyz, r40.xyz);
                r18.w = r18.w + -r41.y;
                r19.w = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r6.w);
                r18.w = r19.w ? r18.w : -r18.w;
                r18.z = max(1.00000001e-07, -r18.z);
                r18.z = r18.w / r18.z;
                r18.y = min(r18.y, abs(r18.z));
                r42.zw = r41.zw;
                r18.z = dot(r13.zxy, r42.xzw);
                r18.w = dot(r30.zxy, r42.xzw);
                r18.w = r18.w + -r42.y;
                r19.w = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r6.w);
                r18.w = r19.w ? r18.w : -r18.w;
                r18.z = max(1.00000001e-07, -r18.z);
                r18.z = r18.w / r18.z;
                r18.y = min(r18.y, abs(r18.z));
                r28.x = r34.w;
                r28.yz = r35.zw;
                r28.xyz = r28.xyz + r30.xyz;
                r28.xyz = r13.xyz * r18.yyy + r28.xyz;
                r18.z = dot(r28.xyz, r28.xyz);
                r18.z = sqrt(r18.z);
                r18.y = r18.y / r18.z;
                r18.y = r18.y + r18.y;
                r18.y = sqrt(r18.y);
                r18.y = r6.y * 5 + r18.y;
                r18.y = -0.844799995 + r18.y;
                r27.y = r32.z;
                r27.z = r33.x;
                r37.x = dot(r28.xyz, r27.xyz);
                r29.xy = r32.xw;
                r29.z = r33.w;
                r37.y = dot(r28.xyz, r29.xyz);
                r33.x = r32.y;
                r37.z = dot(r28.xyz, r33.xyz);
                if (9 == 0) r18.z = 0; else if (9+16 < 32) {                 r18.z = (uint)r29.w << (32-(9 + 16)); r18.z = (uint)r18.z >> (32-9);                } else r18.z = (uint)r29.w >> 16;
                r37.w = (uint)r18.z;
                r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, r18.y).xyz;
                r28.xyz = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r19.w = (int)r28.y | (int)r28.x;
                r19.w = (int)r28.z | (int)r19.w;
                r18.yzw = r19.www ? float3(1,1,0) : r18.yzw;
                r28.x = dot(r30.xyz, r27.xyz);
                r28.y = dot(r30.xyz, r29.xyz);
                r28.z = dot(r30.xyz, r33.xyz);
                r28.xyz = saturate(r28.xyz * r34.xyz + float3(0.5,0.5,0.5));
                r35.z = r36.x;
                r28.xyz = r28.xyz * r35.xyz + r36.yzw;
                r37.x = dot(r4.xyz, r27.xyz);
                r37.y = dot(r4.xyz, r29.xyz);
                r37.z = dot(r4.xyz, r33.xyz);
                r27.xyz = cmp(float3(0,0,0) < r37.xyz);
                r17.z = r27.x ? 0 : 0.5;
                r29.xyz = r28.xyz + r17.xyz;
                r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
                r30.xyz = r37.xyz * r37.xyz;
                r30.xyz = r30.xyz * r16.xxx;
                r19.z = r27.y ? 0 : 0.5;
                r27.xyw = r28.xyz + r19.xyz;
                r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
                r27.xyw = r27.xyw * r30.yyy;
                r27.xyw = r29.xyz * r30.xxx + r27.xyw;
                r20.z = r27.z ? 0 : 0.5;
                r28.xyz = r28.xyz + r20.xyz;
                r28.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r27.xyz = r28.xyz * r30.zzz + r27.xyw;
                r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, 6).xyz;
                r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r17.z = (int)r29.y | (int)r29.x;
                r17.z = (int)r29.z | (int)r17.z;
                r28.xyz = r17.zzz ? float3(1,1,0) : r28.xyz;
                r29.xyz = r28.xyz * r27.xyz;
                r17.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r15.xyz = r27.xyz * r28.xyz + r15.xyz;
                r19.z = r17.z * r7.z;
                r18.yzw = r18.yzw * r16.xxx;
                r16.x = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r16.x = r7.z * r17.z + r16.x;
                r16.x = r19.z / r16.x;
                r26.xyz = r18.yzw * r16.xxx + r26.xyz;
              }
            }
          }
        }
        r25.xyzw = r26.xyzw;
        r10.yzw = r15.xyz;
        r12.w = (int)r12.w + 32;
      }
      r24.xyzw = r25.zxyw;
      r23.xyz = r10.yzw;
      r24.xyzw = r24.yzxw;
    } else {
      r24.x = r23.w;
    }
    r6.y = max(1, r24.w);
    r6.y = rcp(r6.y);
    r24.w = saturate(r24.w);
    r21.xyz = r23.xyz * r6.yyy;
    r22.xyz = r24.xyz * r6.yyy;
    r6.w = cmp(r24.w < 0.99000001);
    if (r6.w != 0) {
      r6.w = 1 + -r24.w;
      r7.z = sunConstants.globalProbeExposure * r6.w;
      r10.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
      r14.x = globalProbeConstants.data[0].w * r10.y;
      r14.yz = globalProbeConstants.data[1].xy * r10.zw;
      r10.yzw = saturate(float3(0.5,0.5,0.5) + r14.xyz);
      r14.xy = globalProbeConstants.data[1].zw * r10.yz;
      r14.z = globalProbeConstants.data[2].x * r10.w;
      r10.yzw = globalProbeConstants.data[2].yzw + r14.xyz;
      r14.xyz = cmp(float3(0,0,0) < r4.xyz);
      r14.xyz = r14.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r14.w = 0;
      r15.xyz = r14.wwx + r10.yzw;
      r15.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r16.xyz = r4.xyz * r4.xyz;
      r16.xyz = r16.xyz * r7.zzz;
      r17.xyz = r14.wwy + r10.yzw;
      r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r17.xyz = r17.xyz * r16.yyy;
      r15.xyz = r15.xyz * r16.xxx + r17.xyz;
      r10.yzw = r14.wwz + r10.yzw;
      r10.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
      r10.yzw = r10.yzw * r16.zzz + r15.xyz;
      r4.w = 0;
      r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r4.xyzw, 6).xyz;
      r10.yzw = r14.xyz * r10.yzw;
      r4.w = dot(r10.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r21.xyz = r23.xyz * r6.yyy + r10.yzw;
      r13.w = 0;
      r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r6.z).xyz;
      r6.y = sunConstants.globalProbeExposure * r6.w + -r4.w;
      r4.w = r9.y * r6.y + r4.w;
      r22.xyz = r10.yzw * r4.www + r22.xyz;
    }
  } else {
    r22.x = r21.w;
  }
  r4.w = r9.x + r0.w;
  r4.w = log2(abs(r4.w));
  r4.w = r5.w * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r4.w + r0.w;
  r4.w = saturate(-1 + r4.w);
  r14.xyz = r21.xyz * r0.www;
  r6.yz = r9.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r6.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r6.yz, 0).xy;
  r9.yzw = r22.xyz * r4.www;
  r15.xyz = r9.zwy * r6.yyy;
  r6.yzw = r9.yzw * r6.zzz;
  r0.w = sqrt(r5.w);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r4.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r7.z = r9.x * r0.w + r4.w;
  r0.w = r7.z * r0.w;
  r4.w = r7.z * r4.w;
  r7.z = dot(r4.xyz, sunConstants.wldDir.xyz);
  r7.w = saturate(r7.z);
  r8.w = cmp(0 >= r7.w);
  if (r8.w != 0) {
    r9.y = 0;
  }
  if (r8.w == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r10.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r8.w = -sunConstants.splitDepthOffset + r10.w;
    r8.w = -r8.w * 6.10351563e-05 + 1;
    r9.z = saturate(r8.w);
    r9.z = cmp(r8.w == r9.z);
    if (r9.z != 0) {
      r9.zw = float2(0,0);
      while (true) {
        r12.w = cmp(r9.z >= 3);
        if (r12.w != 0) break;
        r12.w = (uint)r9.z;
        r16.xy = -sunConstants.splitPinTransform[r12.w].xy + r10.yz;
        r13.w = max(abs(r16.x), abs(r16.y));
        r9.w = sunConstants.splitPinTransform[r12.w].z * r13.w;
        r12.w = cmp(r9.w < 1);
        if (r12.w != 0) {
          break;
        }
        r9.z = 1 + r9.z;
        r9.w = 0;
      }
    } else {
      r9.zw = float2(3,0);
    }
    r12.w = cmp(r9.z >= 3);
    if (r12.w != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r10.yzy * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r17.xy = floor(r17.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r13.w, l(0), t23.xxxx
    r16.w = samp0[]..swiz;
      r17.x = (int)r16.w & 0x40000000;
      r17.y = (uint)r16.w << 2;
      if (r17.x == 0) {
        r17.x = (int)r16.w & 0x01ffffff;
        r18.x = (int)r13.w + (int)r17.x;
        r13.w = (uint)r16.w >> 25;
        r13.w = (uint)r13.w;
        r16.xyz = r16.xyz * r13.www;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.xz = (uint2)r16.zy >> int2(6,6);
        r13.w = (int)r18.z & 0xc0000000;
        r16.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.w = r17.z ? r18.z : r16.w;
        r17.z = (uint)r16.w >> 13;
        r16.w = r17.x ? r17.z : r16.w;
        r16.w = (int)r16.w & 8191;
        r19.x = (int)r16.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.xzw = r13.www ? r18.xyz : r19.xyz;
        r19.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r16.w = (int)r17.w & 0xc0000000;
        r18.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r18.w = r20.y ? r17.w : r18.w;
        r19.y = (uint)r18.w >> 13;
        r18.w = r20.x ? r19.y : r18.w;
        r18.w = (int)r18.w & 8191;
        r19.x = (int)r17.x + (int)r18.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.xzw = r16.www ? r17.xzw : r19.xzw;
        r17.xzw = r13.www ? r18.xyz : r17.xzw;
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r17.z + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
          r16.w = (int)r16.w * 10;
          r13.w = (uint)r13.w >> (uint)r16.w;
          r13.w = (int)r13.w & 1023;
          r18.x = (int)r13.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r13.w = (int)-r18.y + 6;
          r19.xy = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r18.w & 0xc0000000;
          r16.w = (int)r18.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r19.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r19.x << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
          r17.z = (int)r17.z * 10;
          r16.w = (uint)r16.w >> (uint)r17.z;
          r16.w = (int)r16.w & 1023;
          r19.x = (int)r16.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r13.www ? r18.xyw : r19.xyz;
          r16.w = (int)-r19.y + 6;
          r18.yz = (uint2)r16.zy >> (uint2)r16.ww;
          r16.w = (int)r19.z & 0xc0000000;
          r17.z = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r18.z & ~bitmask.y);
          r18.y = (int)r18.y * 10;
          r17.z = (uint)r17.z >> (uint)r18.y;
          r17.z = (int)r17.z & 1023;
          r20.x = (int)r17.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r16.ww ? r19.xz : r20.xy;
          r17.xw = r13.ww ? r18.xw : r18.yz;
        }
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r16.w = 0; else if (14+15 < 32) {           r16.w = (uint)r17.w << (32-(14 + 15)); r16.w = (uint)r16.w >> (32-14);          } else r16.w = (uint)r17.w >> 15;
          r16.w = (uint)r16.w;
          r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
          r16.w = 6.10388815e-05 * r16.w;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r17.z = (uint)r18.x;
          r17.z = sunConstants.sstLightingConstants.constants.spanInInches * r17.z;
          r17.z = 3.05185094e-05 * r17.z;
          r18.x = (int)r16.y & 3;
          r18.x = (int)r17.x + (int)r18.x;
          r18.x = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.x, r18.x, l(0), t23.xxxx
        r18.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r16.x = (uint)r18.x >> (uint)r19.x;
          r16.x = (int)r16.x & 255;
          r16.x = (uint)r16.x;
          r16.x = r16.x * r17.z;
          r16.x = r16.x * 0.00392156886 + r16.w;
          r16.y = (int)r19.y + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.z >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r19.z;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r17.z;
          r16.y = r16.y * 1.52590219e-05 + r16.w;
          r17.y = r18.y ? r16.x : r16.y;
        } else {
          r16.x = (int)r17.w & 0x80000000;
          r16.y = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.x = r16.x ? r16.y : 0;
          r16.y = (uint)r17.w << 2;
          r16.z = (uint)r16.x >> 16;
          r16.x = (int)r16.x & 0x0000ffff;
          r16.xz = f16tof32(r16.xz);
          r16.y = r10.y * r16.z + r16.y;
          r16.x = r10.z * r16.x + r16.y;
          r17.y = r13.w ? r16.x : r17.y;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r17.y < r10.w);
      r9.y = r10.w ? 0 : 1;
    }
    if (r12.w == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r9.z;
        r16.xy = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r16.xy = sunConstants.splitPinTransform[r10.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r10.w + r9.z;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.w).x;
        r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r10.w = r12.w + r10.w;
        r10.w = saturate(-1 + r10.w);
        r12.w = r10.w * r10.w;
        r9.y = r12.w * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r7.x;
        r10.w = (uint)r9.z;
        r9.z = 1 + r9.z;
        r9.z = min(2, r9.z);
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.zw = (uint2)r9.zw;
        r17.xy = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r17.xy = sunConstants.splitPinTransform[r10.w].zz * r17.xy;
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r9.z].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r9.z].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r8.x;
        r16.z = r7.x;
        r12.w = 0;
        r13.w = 0;
        while (true) {
          r16.w = cmp((uint)r13.w >= 8);
          if (r16.w != 0) break;
          r16.w = cmp((uint)r9.w < (uint)r13.w);
          r17.zw = r16.ww ? r10.yz : r17.xy;
          r18.x = r16.w ? sunConstants.splitPinTransform[r9.z].w : sunConstants.splitPinTransform[r10.w].w;
          r16.w = r16.w ? r9.z : r10.w;
          r19.x = dot(icb[r13.w+0].yx, r16.xy);
          r19.y = dot(icb[r13.w+0].yx, r16.yz);
          r18.xy = r19.xy * r18.xx + r17.zw;
          r16.w = (int)r16.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r16.w;
          r16.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
          r17.z = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r16.w = r17.z + r16.w;
          r16.w = saturate(-1 + r16.w);
          r12.w = r16.w * 0.125 + r12.w;
          r13.w = (int)r13.w + 1;
        }
        r8.w = r12.w * r12.w;
        r9.y = r8.w * r12.w;
      }
    }
  }
  r8.w = cmp(0 < r7.w);
  if (r8.w != 0) {
    r8.w = cmp(0 < r9.y);
    if (r8.w != 0) {
      r8.w = sunConstants.specScale * r3.w;
      r8.w = r8.w * r7.w;
      if (sunConstants.sunCookieIndex != 0) {
        r11.w = 1;
        r9.z = dot(sunConstants.sunCookieTransform[0].xyzw, r11.xyzw);
        r9.w = dot(sunConstants.sunCookieTransform[1].xyzw, r11.xyzw);
        r11.xy = frac(r9.zw);
        r9.z = -1 + (int14)sunConstants.sunCookieIndex;
        r11.z = (uint)r9.z;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r11.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r9.z = viewmodelSunShadowRaw >> 16;
      r9.w = cmp(0 < (uint)r9.z);
      r9.w = r2.w ? r9.w : 0;
      if (r9.w != 0) {
        r9.z = (int)r9.z + numLights;
        r9.z = (int)r9.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.z, l(52), t12.xxxx
      r9.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r9.z, l(68), t12.xyzw
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
      r11.z = samp0[]..swiz;
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r9.z, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r9.z, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r9.z, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r12.w = abs(r7.z) * -0.200000003 + 0.400000006;
        r19.xyz = r4.xyz * r12.www + v7.xyz;
        r19.w = 1;
        r11.x = dot(r11.xyzw, r19.xyzw);
        r11.y = dot(r16.xyzw, r19.xyzw);
        r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.xy = r11.xy + r18.zw;
        r11.xy = r11.xy * r18.xy;
        r11.zw = r9.ww / r17.xz;
        r16.xy = float2(1,1) + -r11.zw;
        r16.xy = cmp(r11.xy >= r16.xy);
        r11.zw = cmp(r11.zw >= r11.xy);
        r11.zw = (int2)r11.zw | (int2)r16.xy;
        r11.z = (int)r11.w | (int)r11.z;
        if (r11.z == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.z, r9.z, l(28), t12.xxxx
        r11.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r9.z, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r9.z, l(164), t12.xyxx
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
          r9.z = dot(r16.xyzw, r19.xyzw);
          r11.xy = saturate(r11.xy);
          r16.xy = r11.xy * r17.xz + r17.yw;
          r9.z = r9.z + r18.x;
          r9.z = r9.z / r18.y;
          r9.z = max(6.10351563e-05, r9.z);
          r11.x = r11.z ? 0.000000 : 0;
          if (enableDitheredShadow != 0) {
            r17.x = -r7.x;
            r18.z = (uint)r11.x;
            r17.y = r8.x;
            r17.z = r7.x;
            r11.yz = float2(0,0);
            while (true) {
              r11.w = cmp((int)r11.z >= 8);
              if (r11.w != 0) break;
              r19.x = dot(icb[r11.z+0].yx, r17.xy);
              r19.y = dot(icb[r11.z+0].yx, r17.yz);
              r18.xy = r19.xy * r9.ww + r16.xy;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r9.z).x;
              r11.y = r11.w * 0.125 + r11.y;
              r11.z = (int)r11.z + 1;
            }
          } else {
            r16.z = (uint)r11.x;
            r11.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r9.z).x;
          }
          r9.z = r11.y * r11.y;
          r9.z = r9.z * r11.y;
        } else {
          r9.z = 1;
        }
        r9.y = r9.y * r9.z;
      } else {
        r9.z = viewmodelSunShadowRaw & 0x0000ffff;
        r9.w = cmp(0 < (uint)r9.z);
        r11.x = ~(int)r2.w;
        r9.w = r9.w ? r11.x : 0;
        if (r9.w != 0) {
          r9.z = (int)r9.z + numLights;
          r9.z = (int)r9.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.z, l(52), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r9.z, l(68), t12.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r9.z, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r9.z, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r9.z, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r12.w = abs(r7.z) * -0.200000003 + 0.400000006;
          r19.xyz = r4.xyz * r12.www + v7.xyz;
          r19.w = 1;
          r11.x = dot(r11.xyzw, r19.xyzw);
          r11.y = dot(r16.xyzw, r19.xyzw);
          r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r11.xy = r11.xy + r18.zw;
          r11.xy = r11.xy * r18.xy;
          r11.zw = r9.ww / r17.xz;
          r16.xy = float2(1,1) + -r11.zw;
          r16.xy = cmp(r11.xy >= r16.xy);
          r11.zw = cmp(r11.zw >= r11.xy);
          r11.zw = (int2)r11.zw | (int2)r16.xy;
          r11.z = (int)r11.w | (int)r11.z;
          if (r11.z == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.z, r9.z, l(28), t12.xxxx
          r11.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r9.z, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r9.z, l(164), t12.xyxx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
            r9.z = dot(r16.xyzw, r19.xyzw);
            r11.xy = saturate(r11.xy);
            r16.xy = r11.xy * r17.xz + r17.yw;
            r9.z = r9.z + r18.x;
            r9.z = r9.z / r18.y;
            r9.z = max(6.10351563e-05, r9.z);
            r11.x = r11.z ? 0.000000 : 0;
            if (enableDitheredShadow != 0) {
              r17.x = -r7.x;
              r18.z = (uint)r11.x;
              r17.y = r8.x;
              r17.z = r7.x;
              r11.yz = float2(0,0);
              while (true) {
                r11.w = cmp((int)r11.z >= 8);
                if (r11.w != 0) break;
                r19.x = dot(icb[r11.z+0].yx, r17.xy);
                r19.y = dot(icb[r11.z+0].yx, r17.yz);
                r18.xy = r19.xy * r9.ww + r16.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r9.z).x;
                r11.y = r11.w * 0.125 + r11.y;
                r11.z = (int)r11.z + 1;
              }
            } else {
              r16.z = (uint)r11.x;
              r11.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r9.z).x;
            }
            r9.z = r11.y * r11.y;
            r9.z = r9.z * r11.y;
          } else {
            r9.z = 1;
          }
          r9.y = r9.y * r9.z;
        }
      }
      r9.z = -r9.x * 0.5 + 1;
      r9.z = -r7.w * r9.z + 1;
      r9.z = r9.z * r9.z;
      r9.z = -r9.z * 0.620000005 + 0.620000005;
      r9.z = r9.z + -r7.w;
      r9.z = r5.w * r9.z + r7.w;
      r9.z = r9.z * r9.y;
      r7.z = cmp(0 < r7.z);
      r11.xyz = r9.zzz * r10.yzw + r14.xyz;
      r16.xyz = -v7.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r16.xyz, r16.xyz);
      r0.z = rsqrt(r0.z);
      r16.xyz = r16.xyz * r0.zzz;
      r0.z = dot(r16.xyz, r5.xyz);
      r9.z = dot(r4.xyz, r16.xyz);
      r9.w = abs(r9.z) * r3.w + -abs(r9.z);
      r9.z = abs(r9.z) * r9.w + 1;
      r7.w = r7.w * r0.w + r4.w;
      r9.z = r9.z * r9.z;
      r7.w = r9.z * r7.w;
      r7.w = rcp(r7.w);
      r7.w = r7.w * r8.w;
      r7.w = r9.y * r7.w;
      r7.w = 0.25 * r7.w;
      r9.yzw = r7.www * r10.yzw + r6.yzw;
      r0.z = saturate(1 + -r0.z);
      r8.w = r0.z * r0.z;
      r8.w = r8.w * r8.w;
      r0.z = r8.w * r0.z;
      r0.z = r7.w * r0.z;
      r16.xyz = r0.zzz * r10.zwy + r15.xyz;
      r11.w = r16.z;
      r14.w = r15.z;
      r14.xyzw = r7.zzzz ? r11.xyzw : r14.xyzw;
      r16.zw = r9.yz;
      r15.zw = r6.yz;
      r11.xyzw = r7.zzzz ? r16.xyzw : r15.xyzw;
      r6.w = r7.z ? r9.w : r6.w;
      r15.z = r14.w;
      r15.xy = r11.xy;
      r6.yz = r11.zw;
    }
  }
  r11.x = -r7.x;
  r0.z = ~(int)r2.w;
  r7.z = -r9.x * 0.5 + 1;
  r9.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v7.xyz;
  r17.w = 1;
  r18.w = 1;
  r11.z = r7.x;
  r19.w = 1;
  r20.z = 1;
  r21.w = 1;
  r11.yw = r8.xx;
  r7.y = r11.w;
  r22.w = 1;
  r8.y = r11.x;
  r8.z = r7.x;
  r23.w = 1;
  r24.x = r8.x;
  r24.y = r11.x;
  r24.z = r7.x;
  r25.x = r8.x;
  r25.y = r11.x;
  r25.z = r7.x;
  r26.x = r8.x;
  r26.y = r11.x;
  r26.z = r7.x;
  r10.yzw = r14.xyz;
  r27.xyz = r15.zxy;
  r28.xyz = r6.yzw;
  r7.w = enableDitheredShadow;
  r8.w = 0;
  while (true) {
    r9.w = cmp((uint)r8.w >= numLights);
    if (r9.w != 0) break;
    r9.z = (uint)r8.w >> 5;
    r16.xyz = (int3)r9.xyz + (int3)r12.xyz;
    r9.z = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r10.yzw;
    r29.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r9.w = r7.w;
    r12.w = r9.z;
    while (true) {
      if (r12.w == 0) break;
      r13.w = firstbitlow((uint)r12.w);
      r14.w = 1 << (int)r13.w;
      r15.w = (int)r12.w & (int)r14.w;
      if (r15.w != 0) {
        r12.w = (int)r12.w ^ (int)r14.w;
        r13.w = (int)r8.w + (int)r13.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r13.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v7.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r14.w = r31.y ? r31.x : 0;
        r14.w = r31.z ? r14.w : 0;
        if (r14.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r14.w = 0; else if (3+24 < 32) {           r14.w = (uint)r32.w << (32-(3 + 24)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)r32.w >> 24;
          switch (r14.w) {
            case 4 :            r14.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v7.xyz + r39.xyz;
            r15.w = dot(r38.xyz, r40.xyz);
            r20.w = saturate(-r15.w / r37.x);
            r41.xyz = r20.www * r38.xyz + r39.xyz;
            r41.xyz = r14.www ? r41.xyz : r31.yzw;
            r41.xyz = -v7.xyz + r41.xyz;
            r24.w = dot(r41.xyz, r41.xyz);
            r25.w = rsqrt(r24.w);
            r41.xyz = r41.xyz * r25.www;
            r25.w = dot(r4.xyz, r41.xyz);
            r26.w = saturate(r25.w);
            r27.w = cmp(0 < r26.w);
            if (r27.w != 0) {
              r27.w = sqrt(r24.w);
              r28.w = r34.x * r34.x;
              r24.w = r28.w / r24.w;
              r24.w = min(1, r24.w);
              r41.xy = saturate(r27.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r24.w = r41.x * r24.w;
              r24.w = r24.w * r41.y;
              r27.w = cmp(0 < r24.w);
              if (r27.w != 0) {
                if (3 == 0) r27.w = 0; else if (3+27 < 32) {                 r27.w = (uint)r32.w << (32-(3 + 27)); r27.w = (uint)r27.w >> (32-3);                } else r27.w = (uint)r32.w >> 27;
                r27.w = cmp((int)r27.w != 1);
                if (r27.w != 0) {
                  r27.w = abs(r25.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r4.xyz * r27.www + v7.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r27.w = max(abs(r41.y), abs(r41.z));
                  r27.w = max(abs(r41.x), r27.w);
                  r27.w = r36.x / r27.w;
                  r27.w = r27.w + r36.y;
                  r28.w = dot(r41.xyz, r41.xyz);
                  r28.w = rsqrt(r28.w);
                  r27.w = max(6.10351563e-05, r27.w);
                  r29.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r29.w;
                  r29.w = 0;
                  r30.w = 0;
                  while (true) {
                    r38.w = cmp((int)r30.w >= 8);
                    if (r38.w != 0) break;
                    r43.y = dot(icb[r30.w+0].yx, r11.xy);
                    r43.z = dot(icb[r30.w+0].yx, r11.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r10.x;
                    r43.w = r43.y * r6.x;
                    r42.xyz = r41.xyz * r28.www + r43.xzw;
                    r38.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r27.w).x;
                    r29.w = r38.w * 0.125 + r29.w;
                    r30.w = (int)r30.w + 1;
                  }
                } else {
                  r29.w = 1;
                }
                r24.w = r29.w * r24.w;
                r27.w = cmp(0 < r24.w);
                if (r27.w != 0) {
                  r27.w = r32.x * r3.w;
                  r27.w = 0.25 * r27.w;
                  r28.w = dot(r38.xyz, r13.xyz);
                  r30.w = dot(r13.xyz, r40.xyz);
                  r38.w = -r28.w * r28.w + r37.x;
                  r15.w = r28.w * r30.w + -r15.w;
                  r15.w = saturate(r15.w / r38.w);
                  r28.w = r38.w / r37.x;
                  r28.w = 10 * r28.w;
                  r28.w = min(1, r28.w);
                  r15.w = r15.w + -r20.w;
                  r15.w = r28.w * r15.w + r20.w;
                  r38.xyz = r15.www * r38.xyz + r39.xyz;
                  r38.xyz = r14.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v7.xyz + r38.xyz;
                  r14.w = dot(r38.xyz, r38.xyz);
                  r14.w = rsqrt(r14.w);
                  r39.xyz = r38.xyz * r14.www;
                  if (4 == 0) r15.w = 0; else if (4+16 < 32) {                   r15.w = (uint)r32.w << (32-(4 + 16)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r32.w >> 16;
                  r20.w = cmp(0 < (uint)r15.w);
                  r20.w = r2.w ? r20.w : 0;
                  if (r20.w != 0) {
                    r15.w = (int)r15.w + numLights;
                    r15.w = (int)r15.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r15.w, l(52), t12.xxxx
                  r20.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r28.w = abs(r25.w) * -0.200000003 + 0.400000006;
                    r18.xyz = r4.xyz * r28.www + v7.xyz;
                    r28.w = dot(r40.xyzw, r18.xyzw);
                    r30.w = dot(r41.xyzw, r18.xyzw);
                    r38.w = cmp(r30.w < r28.w);
                    if (r38.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r15.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r15.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r15.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r18.xyzw);
                      r40.y = dot(r41.xyzw, r18.xyzw);
                      r18.xy = r40.xy / r30.ww;
                      r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r18.xy = r18.xy + r43.zw;
                      r18.xy = r18.xy * r43.xy;
                      r40.xy = r20.ww / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r18.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r18.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r18.z = (int)r40.y | (int)r40.x;
                      r18.xy = saturate(r18.xy);
                      r40.xy = r18.xy * r42.xz + r42.yw;
                      r18.x = r44.y * r30.w;
                      r18.y = r44.x * r30.w + r28.w;
                      r18.x = r18.y / r18.x;
                    } else {
                      r18.z = -1;
                    }
                    r18.y = (int)r38.w | (int)r18.z;
                    if (r18.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(28), t12.xxxx
                    r15.w = samp0[]..swiz;
                      r18.x = max(6.10351563e-05, r18.x);
                      r15.w = (int)r15.w & 0x0000ffff;
                      if (r9.w != 0) {
                        r41.z = (uint)r15.w;
                        r18.yz = float2(0,0);
                        while (true) {
                          r28.w = cmp((int)r18.z >= 8);
                          if (r28.w != 0) break;
                          r42.x = dot(icb[r18.z+0].yx, r11.xw);
                          r42.y = dot(icb[r18.z+0].xy, r7.xy);
                          r41.xy = r42.xy * r20.ww + r40.xy;
                          r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r18.x).x;
                          r18.y = r28.w * 0.125 + r18.y;
                          r18.z = (int)r18.z + 1;
                        }
                      } else {
                        r40.z = (uint)r15.w;
                        r18.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                      }
                      r15.w = r18.y * r18.y;
                      r15.w = r15.w * r18.y;
                    } else {
                      r15.w = 1;
                    }
                    r24.w = r24.w * r15.w;
                  } else {
                    if (4 == 0) r15.w = 0; else if (4+20 < 32) {                     r15.w = (uint)r32.w << (32-(4 + 20)); r15.w = (uint)r15.w >> (32-4);                    } else r15.w = (uint)r32.w >> 20;
                    r18.x = cmp(0 < (uint)r15.w);
                    r18.x = r18.x ? r0.z : 0;
                    if (r18.x != 0) {
                      r15.w = (int)r15.w + numLights;
                      r15.w = (int)r15.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.x, r15.w, l(52), t12.xxxx
                    r18.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r18.z = abs(r25.w) * -0.200000003 + 0.400000006;
                      r19.xyz = r4.xyz * r18.zzz + v7.xyz;
                      r18.z = dot(r40.xyzw, r19.xyzw);
                      r20.w = dot(r41.xyzw, r19.xyzw);
                      r28.w = cmp(r20.w < r18.z);
                      if (r28.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r15.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r15.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r15.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r19.xyzw);
                        r40.y = dot(r41.xyzw, r19.xyzw);
                        r19.xy = r40.xy / r20.ww;
                        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r19.xy = r19.xy + r43.zw;
                        r19.xy = r19.xy * r43.xy;
                        r40.xy = r18.xx / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r19.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r19.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r19.z = (int)r40.y | (int)r40.x;
                        r19.xy = saturate(r19.xy);
                        r40.xy = r19.xy * r42.xz + r42.yw;
                        r19.x = r44.y * r20.w;
                        r18.z = r44.x * r20.w + r18.z;
                        r18.z = r18.z / r19.x;
                      } else {
                        r19.z = -1;
                      }
                      r19.x = (int)r28.w | (int)r19.z;
                      if (r19.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(28), t12.xxxx
                      r15.w = samp0[]..swiz;
                        r18.z = max(6.10351563e-05, r18.z);
                        r15.w = (int)r15.w & 0x0000ffff;
                        if (r9.w != 0) {
                          r19.z = (uint)r15.w;
                          r20.w = 0;
                          r28.w = 0;
                          while (true) {
                            r30.w = cmp((int)r28.w >= 8);
                            if (r30.w != 0) break;
                            r41.x = dot(icb[r28.w+0].xy, r8.xy);
                            r41.y = dot(icb[r28.w+0].yx, r8.xz);
                            r19.xy = r41.xy * r18.xx + r40.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r18.z).x;
                            r20.w = r19.x * 0.125 + r20.w;
                            r28.w = (int)r28.w + 1;
                          }
                        } else {
                          r40.z = (uint)r15.w;
                          r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.z).x;
                        }
                        r15.w = r20.w * r20.w;
                        r15.w = r15.w * r20.w;
                      } else {
                        r15.w = 1;
                      }
                      r24.w = r24.w * r15.w;
                    }
                  }
                  r15.w = -r26.w * r7.z + 1;
                  r15.w = r15.w * r15.w;
                  r15.w = -r15.w * 0.620000005 + 0.620000005;
                  r15.w = r15.w + -r26.w;
                  r15.w = r5.w * r15.w + r26.w;
                  r15.w = r15.w * r24.w;
                  r32.x = r31.x;
                  r18.x = cmp(0 < r25.w);
                  r19.xyz = r15.www * r32.xyz + r16.xyz;
                  r15.w = saturate(dot(r4.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r14.www + r5.xyz;
                  r14.w = dot(r38.xyz, r38.xyz);
                  r14.w = rsqrt(r14.w);
                  r38.xyz = r38.xyz * r14.www;
                  r14.w = dot(r38.xyz, r5.xyz);
                  r18.z = dot(r4.xyz, r38.xyz);
                  r25.w = abs(r18.z) * r3.w + -abs(r18.z);
                  r18.z = abs(r18.z) * r25.w + 1;
                  r25.w = r15.w * r0.w + r4.w;
                  r18.z = r18.z * r18.z;
                  r18.z = r18.z * r25.w;
                  r18.z = rcp(r18.z);
                  r15.w = r15.w * r27.w;
                  r15.w = r18.z * r15.w;
                  r15.w = r15.w * r24.w;
                  r38.xyz = r15.www * r32.xyz + r30.xyz;
                  r14.w = saturate(1 + -r14.w);
                  r18.z = r14.w * r14.w;
                  r18.z = r18.z * r18.z;
                  r14.w = r18.z * r14.w;
                  r14.w = r15.w * r14.w;
                  r39.xyz = r14.www * r32.xyz + r29.xyz;
                  r16.xyz = r18.xxx ? r19.xyz : r16.xyz;
                  r29.xyz = r18.xxx ? r39.xyz : r29.xyz;
                  r30.xyz = r18.xxx ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r34.zw;
            r19.z = r35.w;
            r19.xyz = -v7.xyz + r19.xyz;
            r14.w = dot(r19.xyz, r19.xyz);
            r14.w = rsqrt(r14.w);
            r38.xyz = r19.xyz * r14.www;
            r15.w = dot(r4.xyz, r38.xyz);
            r18.x = saturate(r15.w);
            r18.z = cmp(0 < r18.x);
            if (r18.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r18.z = dot(r40.xyzw, r17.xyzw);
              r24.w = cmp(r18.z < 1);
              if (r24.w != 0) {
                r41.xyz = float3(1,1,1);
                r24.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.w, r13.w, l(236), t12.xxxx
              r25.w = samp0[]..swiz;
                r45.xyz = -v7.xyz + r31.yzw;
                r26.w = r34.x * r34.x;
                r27.w = dot(r45.xyz, r45.xyz);
                r26.w = r26.w / r27.w;
                r26.w = min(1, r26.w);
                r33.xy = saturate(r18.zz * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r26.w = r33.x * r26.w;
                r26.w = r26.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r17.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r17.xyzw);
                r20.xy = r33.xy / r18.zz;
                r18.z = cmp(r42.w < 0.00048828125);
                if (r18.z != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r20.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r18.z = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r20.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r43.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r44.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r27.w = r43.z * r33.x;
                  r28.w = r43.w * r33.y + -1;
                  r27.w = r43.w * r33.y + -r27.w;
                  r27.w = saturate(r28.w / r27.w);
                  r28.w = r27.w * r27.w;
                  r27.w = r27.w * -2 + 3;
                  r18.z = r28.w * r27.w;
                }
                r24.w = r26.w * r18.z;
                r18.z = (int)r25.w & 255;
                if (r18.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r13.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r25.w = dot(r44.yzw, r20.xyz);
                  r20.x = dot(r33.xyz, r20.xyz);
                  r33.x = frac(r25.w);
                  r33.y = frac(r20.x);
                  r18.z = (int)r18.z + -1;
                  r33.z = (uint)r18.z;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r31.xyz = r31.xyz * r41.xyz;
              r18.z = cmp(0 < r24.w);
              if (r18.z != 0) {
                if (3 == 0) r18.z = 0; else if (3+27 < 32) {                 r18.z = (uint)r32.w << (32-(3 + 27)); r18.z = (uint)r18.z >> (32-3);                } else r18.z = (uint)r32.w >> 27;
                r18.z = cmp((int)r18.z != 1);
                if (r18.z != 0) {
                  r18.z = abs(r15.w) * -0.200000003 + 0.400000006;
                  r21.xyz = r4.xyz * r18.zzz + v7.xyz;
                  r38.xyz = r37.xyz;
                  r18.z = dot(r38.xyzw, r21.xyzw);
                  r20.x = dot(r40.xyzw, r21.xyzw);
                  r20.y = cmp(r20.x >= r18.z);
                  if (r20.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r13.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r33.x = dot(r35.xyzw, r21.xyzw);
                    r37.xyz = r36.yzw;
                    r33.y = dot(r37.xyzw, r21.xyzw);
                    r21.xy = r33.xy / r20.xx;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r21.xy * r39.zw + r39.xy;
                    r13.w = r18.z / r20.x;
                    r13.w = max(6.10351563e-05, r13.w);
                    r18.z = (int)r32.w & 0x0000ffff;
                    if (r9.w != 0) {
                      r33.z = (uint)r18.z;
                      r20.xy = float2(0,0);
                      while (true) {
                        r25.w = cmp((int)r20.y >= 8);
                        if (r25.w != 0) break;
                        r35.x = dot(icb[r20.y+0].xy, r24.xy);
                        r35.y = dot(icb[r20.y+0].yx, r24.xz);
                        r33.xy = r35.xy * r34.yy + r21.xy;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r13.w).x;
                        r20.x = r25.w * 0.125 + r20.x;
                        r20.y = (int)r20.y + 1;
                      }
                    } else {
                      r21.z = (uint)r18.z;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r13.w).x;
                    }
                    r13.w = r20.x * r20.x;
                    r13.w = r13.w * r20.x;
                  } else {
                    r13.w = 1;
                  }
                } else {
                  r13.w = 1;
                }
                r13.w = r24.w * r13.w;
                r18.z = cmp(0 < r13.w);
                if (r18.z != 0) {
                  r18.z = r32.x * r3.w;
                  r18.z = r18.z * r18.x;
                  if (4 == 0) r20.y = 0; else if (4+16 < 32) {                   r20.y = (uint)r32.w << (32-(4 + 16)); r20.y = (uint)r20.y >> (32-4);                  } else r20.y = (uint)r32.w >> 16;
                  r21.x = cmp(0 < (uint)r20.y);
                  r21.x = r2.w ? r21.x : 0;
                  if (r21.x != 0) {
                    r20.y = (int)r20.y + numLights;
                    r20.y = (int)r20.y + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r20.y, l(52), t12.xxxx
                  r21.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r20.y, l(68), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r20.y, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r20.y, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r20.y, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r20.y, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r20.y, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r21.y = abs(r15.w) * -0.200000003 + 0.400000006;
                    r22.xyz = r4.xyz * r21.yyy + v7.xyz;
                    r32.x = dot(r33.xyzw, r22.xyzw);
                    r32.y = dot(r34.xyzw, r22.xyzw);
                    r21.y = dot(r35.xyzw, r22.xyzw);
                    r21.z = dot(r36.xyzw, r22.xyzw);
                    r22.x = cmp(r21.z < r21.y);
                    r22.yz = r32.xy / r21.zz;
                    r22.yz = r22.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.yz = r22.yz + r38.zw;
                    r22.yz = r22.yz * r38.xy;
                    r32.xy = r21.xx / r37.xz;
                    r33.xy = float2(1,1) + -r32.xy;
                    r33.xy = cmp(r22.yz >= r33.xy);
                    r32.xy = cmp(r32.xy >= r22.yz);
                    r32.xy = (int2)r32.xy | (int2)r33.xy;
                    r24.w = (int)r32.y | (int)r32.x;
                    r22.x = (int)r22.x | (int)r24.w;
                    if (r22.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r20.y, l(28), t12.xxxx
                    r22.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r20.y, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r22.yz = saturate(r22.yz);
                      r33.xy = r22.yz * r37.xz + r37.yw;
                      r20.y = r32.y * r21.z;
                      r21.y = r32.x * r21.z + r21.y;
                      r20.y = r21.y / r20.y;
                      r20.y = max(6.10351563e-05, r20.y);
                      r21.y = r22.x ? 0.000000 : 0;
                      if (r9.w != 0) {
                        r22.z = (uint)r21.y;
                        r21.z = 0;
                        r24.w = 0;
                        while (true) {
                          r25.w = cmp((int)r24.w >= 8);
                          if (r25.w != 0) break;
                          r32.x = dot(icb[r24.w+0].xy, r25.xy);
                          r32.y = dot(icb[r24.w+0].yx, r25.xz);
                          r22.xy = r32.xy * r21.xx + r33.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.y).x;
                          r21.z = r22.x * 0.125 + r21.z;
                          r24.w = (int)r24.w + 1;
                        }
                      } else {
                        r33.z = (uint)r21.y;
                        r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r20.y).x;
                      }
                      r20.y = r21.z * r21.z;
                      r20.y = r20.y * r21.z;
                    } else {
                      r20.y = 1;
                    }
                    r13.w = r20.y * r13.w;
                  } else {
                    if (4 == 0) r20.y = 0; else if (4+20 < 32) {                     r20.y = (uint)r32.w << (32-(4 + 20)); r20.y = (uint)r20.y >> (32-4);                    } else r20.y = (uint)r32.w >> 20;
                    r21.x = cmp(0 < (uint)r20.y);
                    r21.x = r21.x ? r0.z : 0;
                    if (r21.x != 0) {
                      r20.y = (int)r20.y + numLights;
                      r20.y = (int)r20.y + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r20.y, l(52), t12.xxxx
                    r21.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r20.y, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r20.y, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r20.y, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r20.y, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r20.y, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r20.y, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r21.y = abs(r15.w) * -0.200000003 + 0.400000006;
                      r23.xyz = r4.xyz * r21.yyy + v7.xyz;
                      r22.x = dot(r32.xyzw, r23.xyzw);
                      r22.y = dot(r33.xyzw, r23.xyzw);
                      r21.y = dot(r34.xyzw, r23.xyzw);
                      r22.z = dot(r35.xyzw, r23.xyzw);
                      r23.x = cmp(r22.z < r21.y);
                      r22.xy = r22.xy / r22.zz;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r37.zw;
                      r22.xy = r22.xy * r37.xy;
                      r23.yz = r21.xx / r36.xz;
                      r32.xy = float2(1,1) + -r23.yz;
                      r32.xy = cmp(r22.xy >= r32.xy);
                      r23.yz = cmp(r23.yz >= r22.xy);
                      r23.yz = (int2)r23.yz | (int2)r32.xy;
                      r23.y = (int)r23.z | (int)r23.y;
                      r23.x = (int)r23.x | (int)r23.y;
                      if (r23.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r20.y, l(28), t12.xxxx
                      r23.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.yz, r20.y, l(164), t12.xxyx
                      r23.y = samp0[]..swiz;
                      r23.z = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r32.xy = r22.xy * r36.xz + r36.yw;
                        r20.y = r23.z * r22.z;
                        r21.y = r23.y * r22.z + r21.y;
                        r20.y = r21.y / r20.y;
                        r20.y = max(6.10351563e-05, r20.y);
                        r21.y = r23.x ? 0.000000 : 0;
                        if (r9.w != 0) {
                          r22.z = (uint)r21.y;
                          r23.xy = float2(0,0);
                          while (true) {
                            r23.z = cmp((int)r23.y >= 8);
                            if (r23.z != 0) break;
                            r33.x = dot(icb[r23.y+0].xy, r26.xy);
                            r33.y = dot(icb[r23.y+0].yx, r26.xz);
                            r22.xy = r33.xy * r21.xx + r32.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.y).x;
                            r23.x = r22.x * 0.125 + r23.x;
                            r23.y = (int)r23.y + 1;
                          }
                        } else {
                          r32.z = (uint)r21.y;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r20.y).x;
                        }
                        r20.y = r23.x * r23.x;
                        r20.y = r20.y * r23.x;
                      } else {
                        r20.y = 1;
                      }
                      r13.w = r20.y * r13.w;
                    }
                  }
                  r20.y = -r18.x * r7.z + 1;
                  r20.y = r20.y * r20.y;
                  r20.y = -r20.y * 0.620000005 + 0.620000005;
                  r20.y = r20.y + -r18.x;
                  r20.y = r5.w * r20.y + r18.x;
                  r20.y = r20.y * r13.w;
                  r15.w = cmp(0 < r15.w);
                  r22.xyz = r20.yyy * r31.xyz + r16.xyz;
                  r19.xyz = r19.xyz * r14.www + r5.xyz;
                  r14.w = dot(r19.xyz, r19.xyz);
                  r14.w = rsqrt(r14.w);
                  r19.xyz = r19.xyz * r14.www;
                  r14.w = dot(r19.xyz, r5.xyz);
                  r19.x = dot(r4.xyz, r19.xyz);
                  r19.y = abs(r19.x) * r3.w + -abs(r19.x);
                  r19.x = abs(r19.x) * r19.y + 1;
                  r18.x = r18.x * r0.w + r4.w;
                  r19.x = r19.x * r19.x;
                  r18.x = r19.x * r18.x;
                  r18.x = rcp(r18.x);
                  r18.x = r18.x * r18.z;
                  r13.w = r18.x * r13.w;
                  r13.w = 0.25 * r13.w;
                  r19.xyz = r13.www * r31.xyz + r30.xyz;
                  r14.w = saturate(1 + -r14.w);
                  r18.x = r14.w * r14.w;
                  r18.x = r18.x * r18.x;
                  r14.w = r18.x * r14.w;
                  r13.w = r14.w * r13.w;
                  r31.xyz = r13.www * r31.xyz + r29.xyz;
                  r16.xyz = r15.www ? r22.xyz : r16.xyz;
                  r29.xyz = r15.www ? r31.xyz : r29.xyz;
                  r30.xyz = r15.www ? r19.xyz : r30.xyz;
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
    r10.yzw = r16.xyz;
    r27.xyz = r29.xyz;
    r28.xyz = r30.xyz;
    r8.w = (int)r8.w + 32;
  }
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r4.xyz = r27.xyz * r4.xyz;
  r3.xyz = r28.xyz * r3.xyz + r4.xyz;
  r2.xyz = r10.yzw * r2.xyz + r3.xyz;
  r0.z = dot(r2.xyz, float3(0.298999995,0.587000012,0.114));
  r0.z = max(9.99999975e-05, r0.z);
  r3.w = max(relHDRExposure.x, r0.z);
  r3.xyz = r3.www * r1.xyz;
  r1.w = 1;
  r1.xyzw = relativeHDR ? r3.xyzw : r1.xyzw;
  r2.xyz = r2.xyz + r1.xyz;
  r0.z = hdrScale * r1.w;
  r0.z = max(1, r0.z);
  r1.xyz = r1.xyz / r0.zzz;
  r0.z = saturate(dot(r1.xyz, float3(0.298999995,0.587000012,0.114)));
  r0.y = r0.y + r0.z;
  o0.w = r0.y * r0.x;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(v7.xyz, v7.xyz);
    r0.y = rsqrt(r0.x);
    r0.yzw = v7.xyz * r0.yyy;
    r0.x = sqrt(r0.x);
    r1.x = cmp(0 < fogConstants.blendAmount);
    if (r1.x != 0) {
      r1.xy = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.xy = fogConstants.atmospherefogdensityatcamera.xy * r1.xy;
      r1.z = cmp(0.00999999978 < abs(v7.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r1.xy;
      r1.xy = r1.zz ? r3.xy : r1.xy;
      r1.xzw = fogConstants.atmosphereTotalDensity.xyz * r1.xxx;
      r1.xzw = exp2(r1.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r1.xzw;
      r1.xyz = fogConstants.blendAmount * r3.xyz + r1.xzw;
    } else {
      r1.w = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r3.y = -1.44269502 * r3.x;
      r3.y = exp2(r3.y);
      r3.y = 1 + -r3.y;
      r3.x = r3.y / r3.x;
      r3.x = r3.x * r1.w;
      r1.w = r2.w ? r3.x : r1.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r1.xyz = exp2(r3.xyz);
    }
    r1.xyz = r1.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r1.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r1.xyz);
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
    r3.xyz = float3(1,1,1) + -r1.xyz;
    r0.xyz = r3.xyz * r0.xyz;
    r0.xyz = r2.xyz * r1.xyz + r0.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r1.x = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r1.y = cmp(abs(r0.w) < 9.99999975e-05);
    r1.z = min(64, r1.x);
    r1.z = 1.44269502 * r1.z;
    r1.z = exp2(r1.z);
    r1.w = saturate(fogConstants.K0b);
    r2.w = cmp(r1.x < 0);
    r1.x = 1 + r1.x;
    r1.x = r2.w ? r1.z : r1.x;
    r1.x = -fogConstants.K0b + r1.x;
    r0.w = r1.y ? 1 : r0.w;
    r0.w = r1.x / r0.w;
    r0.w = r1.y ? r1.w : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.x = dot(v7.xyz, v7.xyz);
    r1.y = sqrt(r1.x);
    r0.w = r0.w * r1.y + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.x = rsqrt(r1.x);
    r1.xyz = v7.xyz * r1.xxx;
    r1.x = dot(fogConstants.wldSunFogDir.xyz, r1.xyz);
    r1.x = saturate(fogConstants.sunFogAngles.y * r1.x + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r1.xyzw = r1.xxxx * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r1.w * r0.w;
    r1.xyz = r1.xyz + -r2.xyz;
    r0.xyz = r0.www * r1.xyz + r2.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r0.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}