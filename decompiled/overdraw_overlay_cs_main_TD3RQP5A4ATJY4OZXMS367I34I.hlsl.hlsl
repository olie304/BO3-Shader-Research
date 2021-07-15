// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:02 2021

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

Texture2D<float> codeTexture0 : register(t0);
Texture2D<float3> codeTexture1 : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g0, 4, 64
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g2, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 64, 1, 1
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture2d)(float,float,float,float)_uint r0.x, l(0), u0.xyzw
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=1, constZero.eType=4, returnType=2, texture.eType=30, afImmediates[0]=0.000000
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g2.x, l(0), l(0)
  }
  codeTexture0[vThreadIDInGroupFlattened.x].0 = g0.x;
  GroupMemoryBarrierWithGroupSync();
  if (overdrawDecals != 0) {
    r1.y = vThreadGroupID.y;
    r1.zw = float2(0,0);
    r2.x = 0;
    r1.x = vThreadIDInGroupFlattened.x;
    while (true) {
      r0.y = cmp((uint)r1.x >= (uint)r0.x);
      if (r0.y != 0) break;
      r0.y = codeTexture0.Load(r1.xyw).x;
      r0.y = (uint)r0.y;
      r2.yzw = codeTexture1.Load(r1.xyz).xyz;
      r0.y = cmp((int)r0.y == overdrawDecalsLayers);
      r3.xyz = float3(32768,0,0) + -r2.yzw;
      r3.yzw = overdrawOverlayAlpha * r3.xyz + r2.yzw;
      r3.x = (int)r2.x + 1;
      r2.xyzw = r0.yyyy ? r3.xyzw : r2.xyzw;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r2.yzwy
      r1.x = (int)r1.x + 64;
    }
    r0.y = 0;
  } else {
    r0.z = overdrawOverlayMaxValue;
    r1.y = vThreadGroupID.y;
    r1.zw = float2(0,0);
    r3.y = 0;
    r2.x = 0;
    r0.y = 0;
    r1.x = vThreadIDInGroupFlattened.x;
    while (true) {
      r0.w = cmp((uint)r1.x >= (uint)r0.x);
      if (r0.w != 0) break;
      r0.w = codeTexture0.Load(r1.xyw).x;
      r0.w = (uint)r0.w;
      r2.x = (int)r0.w + (int)r2.x;
      r0.y = max((uint)r0.y, (uint)r0.w);
      r3.x = min(63, (uint)r0.w);
      // Needs manual fix for instruction:
        atomic_iadd g0, r3.xyxx, l(1)
      InterlockedAdd(dest, value, orig_value);
      r2.y = cmp(overdrawOverlayMaxValue >= (uint)r0.w);
      r0.w = (uint)r0.w;
      r0.w = r0.w / r0.z;
      r0.w = min(1, r0.w);
      r0.w = 32768 * r0.w;
      r4.xyzw = r2.yyyy ? r0.wwww : float4(32768,0,0,32768);
      r2.yzw = codeTexture1.Load(r1.xyz).xyz;
      r4.xyzw = r4.xyzw + -r2.yzwy;
      r4.xyzw = overdrawOverlayAlpha * r4.xyzw + r2.yzwy;
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r1.xyyy, r4.xyzw
      r1.x = (int)r1.x + 64;
    }
  }
  // Needs manual fix for instruction:
atomic_iadd g1, l(0), r2.x
  InterlockedAdd(dest, value, orig_value);
  // Needs manual fix for instruction:
atomic_umax g2, l(0), r0.y
  InterlockedMax(dest, value, orig_value);
  r0.x = (uint)vThreadIDInGroupFlattened.x << 2;
// Known bad code for instruction (needs manual fix):
ld_structured r0.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
r0.y = codeTexture0[]..swiz;
  r1.y = (int)r0.x + 1520;
  r1.x = viewID;
  // Needs manual fix for instruction:
atomic_iadd u2, r1.xyxx, r0.y
  InterlockedAdd(dest, value, orig_value);
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g1.xxxx
    r1.xz = viewID;
    r1.yw = float2(2.48870607e-42,2.49431127e-42);
    // Needs manual fix for instruction:
    atomic_iadd u2, r1.xyxx, r0.x
    InterlockedAdd(dest, value, orig_value);
  // No code for instruction (needs manual fix):
    ld_raw r0.x, l(0), g2.xxxx
    // Needs manual fix for instruction:
    atomic_umax u2, r1.zwzz, r0.x
    InterlockedMax(dest, value, orig_value);
  }
  return;
}