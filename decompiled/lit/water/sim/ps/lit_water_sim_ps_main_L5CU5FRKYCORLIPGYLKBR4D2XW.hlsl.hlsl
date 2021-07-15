// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:43 2021

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
  float2 normalMapScale : packoffset(c10);
  float4 specularLobeRoughnessControl : packoffset(c11);
  float4 lobeWeightingThicknessRefraction : packoffset(c12);
  float3 normalAdjustAndGloss : packoffset(c13);
  float4 decalTint : packoffset(c14);
  float2 opacityScale : packoffset(c15);
  float invZFeatherDepth : packoffset(c15.z);
  float2 normalsFlowScaleMin : packoffset(c16);
  float4 ssrParams : packoffset(c17);
  float translucentShadowOpacity : packoffset(c18);
  float2 shadowParams : packoffset(c18.y);
  bool useFoam : packoffset(c18.w);
  bool useSSR : packoffset(c19);
  bool useLoopedSSR : packoffset(c19.y);
  bool useSpecularZFeather : packoffset(c19.z);
  bool scaleNormalsWithFlow : packoffset(c19.w);
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

SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
StructuredBuffer<lightConstants> lightConstants : register(t12);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : TEXCOORD1,
  uint v2 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = viewmodelSunShadowRaw >> 16;
  if (r0.x != 0) {
    r0.x = (int)r0.x + numLights;
    r0.x = (int)r0.x + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r0.y, r0.x, l(52), t12.xxxx
  r0.y = ShadowSamplerComparisonState[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(68), t12.xyzw
  r1.x = ShadowSamplerComparisonState[]..swiz;
  r1.y = ShadowSamplerComparisonState[]..swiz;
  r1.z = ShadowSamplerComparisonState[]..swiz;
  r1.w = ShadowSamplerComparisonState[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, l(84), t12.xyzw
  r2.x = ShadowSamplerComparisonState[]..swiz;
  r2.y = ShadowSamplerComparisonState[]..swiz;
  r2.z = ShadowSamplerComparisonState[]..swiz;
  r2.w = ShadowSamplerComparisonState[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(132), t12.xyzw
  r3.x = ShadowSamplerComparisonState[]..swiz;
  r3.y = ShadowSamplerComparisonState[]..swiz;
  r3.z = ShadowSamplerComparisonState[]..swiz;
  r3.w = ShadowSamplerComparisonState[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(148), t12.xyzw
  r4.x = ShadowSamplerComparisonState[]..swiz;
  r4.y = ShadowSamplerComparisonState[]..swiz;
  r4.z = ShadowSamplerComparisonState[]..swiz;
  r4.w = ShadowSamplerComparisonState[]..swiz;
    r5.xyz = v1.xyz;
    r5.w = 1;
    r1.x = dot(r1.xyzw, r5.xyzw);
    r1.y = dot(r2.xyzw, r5.xyzw);
    r0.zw = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.zw = r0.zw + r4.zw;
    r0.zw = r0.zw * r4.xy;
    r1.xy = r0.yy / r3.xz;
    r1.zw = float2(1,1) + -r1.xy;
    r1.zw = cmp(r0.zw >= r1.zw);
    r1.xy = cmp(r1.xy >= r0.zw);
    r1.xy = (int2)r1.xy | (int2)r1.zw;
    r0.y = (int)r1.y | (int)r1.x;
    if (r0.y == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r0.y, r0.x, l(28), t12.xxxx
    r0.y = ShadowSamplerComparisonState[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(100), t12.xyzw
    r1.x = ShadowSamplerComparisonState[]..swiz;
    r1.y = ShadowSamplerComparisonState[]..swiz;
    r1.z = ShadowSamplerComparisonState[]..swiz;
    r1.w = ShadowSamplerComparisonState[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r2.xy, r0.x, l(164), t12.xyxx
    r2.x = ShadowSamplerComparisonState[]..swiz;
    r2.y = ShadowSamplerComparisonState[]..swiz;
      r0.x = dot(r1.xyzw, r5.xyzw);
      r1.xy = r0.zw * r3.xz + r3.yw;
      r0.x = r0.x + r2.x;
      r0.x = r0.x / r2.y;
      r0.x = max(6.10351563e-05, r0.x);
      r0.y = (int)r0.y & 0x0000ffff;
      r1.z = (uint)r0.y;
      r0.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r1.xyz, r0.x).x;
      r0.y = -1 + shadowParams.x;
      r0.x = r0.x * r0.y + 1;
    } else {
      r0.x = shadowParams.x;
    }
  } else {
    r0.x = shadowParams.x;
  }
  o0.xyz = r0.xxx;
  o0.w = 1;
  return;
}