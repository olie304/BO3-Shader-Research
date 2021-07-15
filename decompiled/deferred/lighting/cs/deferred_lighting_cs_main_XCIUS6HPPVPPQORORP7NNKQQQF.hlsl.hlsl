// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:08 2021

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

cbuffer LightingPackCBuffer : register(b9)
{

  struct
  {
    uint4 data[15];
  } lightConstantsCB[273] : packoffset(c0);

}

cbuffer RefProbePackCBuffer : register(b10)
{

  struct
  {
    uint4 data[14];
  } refProbeConstantsCB[273] : packoffset(c0);

}

cbuffer RefProbeBlendPackCBuffer : register(b11)
{

  struct
  {
    uint4 data[6];
  } refProbeAttenuationConstantsCB[682] : packoffset(c0);

}

SamplerState samp0_s : register(s0);
SamplerState samplerLinear_s : register(s2);
SamplerState samplerLinearClamp_s : register(s4);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> GBufferDiffuseColor : register(t0);
Texture2D<float4> GBufferNormalAndGloss : register(t1);
Texture2D<float4> GBufferSpecularColorAndOcclusion : register(t2);
Texture2D<float> GBufferDepth : register(t4);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
TextureCubeArray<float> gOmniShadowmapArray : register(t10);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
Texture2DArray<float> gSunShadowmapArray : register(t13);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float> gSSAOTexture : register(t27);
Texture2D<float> gSSAODepthTexture : register(t28);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000},
                              { -0.808114, 0.808114, 0, 0},
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
// unknown dcl_: dcl_resource_structured t23, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g2, 12, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g3, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g4, 12
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g5, 12
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_structured g6, 4, 32
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g7, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g8, 20
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g9, 20
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g7.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g8.xyzw, l(0), l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_raw g8.x, l(16), l(0)
  // No code for instruction (needs manual fix):
    store_raw g9.xyzw, l(0), l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_raw g9.x, l(16), l(0)
  }
  r0.xy = mad((int2)vThreadGroupID.xy, int2(8,8), (int2)vThreadIDInGroup.xy);
  r0.zw = float2(0,0);
  r1.x = GBufferDepth.Load(r0.xyw).x;
  r2.xyzw = GBufferNormalAndGloss.Load(r0.xyw).xyzw;
  r1.yz = (uint2)renderTargetSize.xy;
  r1.yz = cmp((uint2)r0.xy < (uint2)r1.yz);
  r1.w = r1.z ? r1.y : 0;
  r3.x = cmp(0 < r1.x);
  r1.w = r3.x ? r1.w : 0;
  r3.x = cmp(r1.x >= 0.984375);
  r3.z = 1.01587307 * r1.x;
  r1.x = r1.x * 64 + -63;
  r1.x = r3.x ? r1.x : r3.z;
  r1.x = max(9.99999994e-09, r1.x);
  r3.y = rcp(r1.x);
  r3.yz = r3.xy ? r1.ww : 0;
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(340282346638528859811704183484516925440.000000)
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  if (r1.w != 0) {
    // Needs manual fix for instruction:
    atomic_umin g0, l(0), r3.z
    InterlockedMin(dest, value, orig_value);
    r1.x = 0.00100000005 + r3.z;
    // Needs manual fix for instruction:
    atomic_umax g1, l(0), r1.x
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r4.x, l(0), g0.xxxx
// No code for instruction (needs manual fix):
ld_raw r4.y, l(0), g1.xxxx
  r4.zw = cmp((uint2)vThreadIDInGroupFlattened.xx < int2(8,6));
  if (r4.z != 0) {
    r5.xy = (uint2)vThreadGroupID.xy << int2(3,3);
    r1.x = (int)vThreadIDInGroupFlattened.x & 1;
    if (1 == 0) r5.z = 0; else if (1+1 < 32) {     r5.z = (uint)vThreadIDInGroupFlattened.x << (32-(1 + 1)); r5.z = (uint)r5.z >> (32-1);    } else r5.z = (uint)vThreadIDInGroupFlattened.x >> 1;
    if (1 == 0) r5.w = 0; else if (1+2 < 32) {     r5.w = (uint)vThreadIDInGroupFlattened.x << (32-(1 + 2)); r5.w = (uint)r5.w >> (32-1);    } else r5.w = (uint)vThreadIDInGroupFlattened.x >> 2;
    r1.x = (int)r1.x ^ (int)r5.z;
    r1.x = (uint)r1.x << 3;
    r1.x = (int)r1.x + (int)r5.x;
    r3.w = (uint)r5.z << 3;
    r3.w = (int)r3.w + (int)r5.y;
    r4.x = dot(r4.xy, icb[r5.w+0].xy);
    r5.x = (uint)r1.x;
    r5.y = (uint)r3.w;
    r5.xy = float2(0.5,0.5) + r5.xy;
    r5.xy = -subpixelOffset.xy + r5.xy;
    r5.xy = renderTargetSize.zw * r5.xy;
    r5.xy = r5.xy * float2(2,-2) + float2(-1,1);
    r6.x = inverseProjectionMatrix._m00;
    r6.y = inverseProjectionMatrix._m11;
    r5.xy = r6.xy * r5.xy;
    r5.z = 1;
    r5.xyz = r5.xyz * r4.xxx;
    r6.xyz = inverseViewMatrix._m10_m11_m12 * r5.yyy;
    r5.xyw = r5.xxx * inverseViewMatrix._m00_m01_m02 + r6.xyz;
    r5.xyz = r5.zzz * inverseViewMatrix._m20_m21_m22 + r5.xyw;
    GBufferDiffuseColor[vThreadIDInGroupFlattened.x].0 = g2.xyz;
  }
  GroupMemoryBarrierWithGroupSync();
  if (vThreadIDInGroupFlattened.x == 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r5.xyz, l(0), l(0), g2.xyzx
  r5.x = samp0[]..swiz;
  r5.y = samp0[]..swiz;
  r5.z = samp0[]..swiz;
    r5.xyz = float3(0.125,0.125,0.125) * r5.xyz;
    r5.xyz = (int3)r5.xyz;
  // No code for instruction (needs manual fix):
    store_raw g4.xyz, l(0), r5.xyzx
  // No code for instruction (needs manual fix):
    store_raw g5.xyz, l(0), l(0,0,0,0)
  }
  GroupMemoryBarrierWithGroupSync();
  r1.x = cmp(0 < (uint)vThreadIDInGroupFlattened.x);
  r1.x = r4.z ? r1.x : 0;
  if (r1.x != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r5.xyz, vThreadIDInGroupFlattened.x, l(0), g2.xyzx
  r5.x = samp0[]..swiz;
  r5.y = samp0[]..swiz;
  r5.z = samp0[]..swiz;
    r5.xyz = float3(0.125,0.125,0.125) * r5.xyz;
    r5.xyz = (int3)r5.xyz;
    // Needs manual fix for instruction:
    atomic_iadd g4, l(0), r5.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g4, l(4), r5.y
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g4, l(8), r5.z
    InterlockedAdd(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
  if (r4.z != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured r4.xyz, vThreadIDInGroupFlattened.x, l(0), g2.xyzx
  r4.x = samp0[]..swiz;
  r4.y = samp0[]..swiz;
  r4.z = samp0[]..swiz;
  // No code for instruction (needs manual fix):
    ld_raw r5.xyz, l(0), g4.xyzx
    r5.xyz = (int3)r5.xyz;
    r4.xyz = -r5.xyz + r4.xyz;
    r4.xyz = abs(r4.xyz);
    // Needs manual fix for instruction:
    atomic_umax g5, l(0), r4.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g5, l(4), r4.y
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g5, l(8), r4.z
    InterlockedMax(dest, value, orig_value);
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r4.xyz, l(0), g4.xyzx
  r4.xyz = (int3)r4.xyz;
// No code for instruction (needs manual fix):
ld_raw r5.xyz, l(0), g5.xyzx
  if (r4.w != 0) {
    r6.xy = (uint2)vThreadIDInGroupFlattened.xx << int2(2,4);
    r6.xzw = int3(6304272,5338708,4326177) >> (uint3)r6.xxx;
    r6.xzw = (int3)r6.xzw & int3(7,7,7);
  // Known bad code for instruction (needs manual fix):
    ld_structured r7.xyz, r6.x, l(0), g2.xyzx
  r7.x = samp0[]..swiz;
  r7.y = samp0[]..swiz;
  r7.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r8.xyz, r6.z, l(0), g2.xyzx
  r8.x = samp0[]..swiz;
  r8.y = samp0[]..swiz;
  r8.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured r6.xzw, r6.w, l(0), g2.xxyz
  r6.x = samp0[]..swiz;
  r6.z = samp0[]..swiz;
  r6.w = samp0[]..swiz;
    r8.xyz = r8.zxy + -r7.zxy;
    r6.xzw = r6.zwx + -r7.yzx;
    r9.xyz = r8.xyz * r6.xzw;
    r6.xzw = r8.zxy * r6.zwx + -r9.xyz;
    r1.x = dot(r6.xzw, r6.xzw);
    r1.x = rsqrt(r1.x);
    r8.xyz = r6.xzw * r1.xxx;
    r1.x = dot(r8.xyz, r7.xyz);
    r8.w = -r1.x;
  // No code for instruction (needs manual fix):
    store_raw g3.xyzw, r6.y, r8.xyzw
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r6.xyzw, l(0), g3.xyzw
// No code for instruction (needs manual fix):
ld_raw r7.xyzw, l(16), g3.xyzw
// No code for instruction (needs manual fix):
ld_raw r8.xyzw, l(32), g3.xyzw
// No code for instruction (needs manual fix):
ld_raw r9.xyzw, l(48), g3.xyzw
// No code for instruction (needs manual fix):
ld_raw r10.xyzw, l(64), g3.xyzw
// No code for instruction (needs manual fix):
ld_raw r11.xyzw, l(80), g3.xyzw
  r1.x = vThreadIDInGroupFlattened.x;
  while (true) {
    r3.w = cmp((uint)r1.x >= 32);
    if (r3.w != 0) break;
    GBufferDiffuseColor[r1.x].0 = g6.x;
    r1.x = (int)r1.x + 64;
  }
  GroupMemoryBarrierWithGroupSync();
  r1.x = numRefProbes + numLights;
  r12.y = 0;
  r3.w = vThreadIDInGroupFlattened.x;
  while (true) {
    r4.w = cmp((uint)r3.w >= (uint)r1.x);
    if (r4.w != 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xyzw, r3.w, l(0), t11.xyzw
  r13.x = samp0[]..swiz;
  r13.y = samp0[]..swiz;
  r13.z = samp0[]..swiz;
  r13.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r3.w, l(16), t11.xyxx
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
    r15.xyz = r13.xyz + -r4.xyz;
    r14.z = r13.w;
    r16.xyz = r14.zxy + r5.xyz;
    r15.xyz = cmp(r16.xyz < abs(r15.xyz));
    r4.w = (int)r15.y | (int)r15.x;
    r4.w = (int)r15.z | (int)r4.w;
    if (r4.w == 0) {
      r4.w = dot(r13.xyz, r6.xyz);
      r5.w = dot(r14.zxy, abs(r6.xyz));
      r4.w = r5.w + r4.w;
      r4.w = cmp(r4.w < -r6.w);
      r5.w = ~(int)r4.w;
      r12.z = dot(r13.xyz, r7.xyz);
      r12.w = dot(r14.zxy, abs(r7.xyz));
      r12.z = r12.z + r12.w;
      r12.z = cmp(r12.z < -r7.w);
      r12.z = (int)r4.w | (int)r12.z;
      r5.w = r12.z ? r5.w : 0;
      r4.w = (int)r4.w | (int)r5.w;
      r5.w = dot(r13.xyz, r8.xyz);
      r12.z = dot(r14.zxy, abs(r8.xyz));
      r5.w = r12.z + r5.w;
      r5.w = cmp(r5.w < -r8.w);
      r4.w = (int)r4.w | (int)r5.w;
      r5.w = dot(r13.xyz, r9.xyz);
      r12.z = dot(r14.zxy, abs(r9.xyz));
      r5.w = r12.z + r5.w;
      r5.w = cmp(r5.w < -r9.w);
      r4.w = (int)r4.w | (int)r5.w;
      r5.w = dot(r13.xyz, r10.xyz);
      r12.z = dot(r14.zxy, abs(r10.xyz));
      r5.w = r12.z + r5.w;
      r5.w = cmp(r5.w < -r10.w);
      r4.w = (int)r4.w | (int)r5.w;
      r5.w = dot(r13.xyz, r11.xyz);
      r12.z = dot(r14.zxy, abs(r11.xyz));
      r5.w = r12.z + r5.w;
      r5.w = cmp(r5.w < -r11.w);
      r4.w = (int)r4.w | (int)r5.w;
      if (r4.w == 0) {
        r4.w = cmp((uint)r3.w < numLights);
        r5.w = (int)r3.w + -numLights;
        r5.w = r4.w ? r3.w : r5.w;
        r4.w = r4.w ? 0 : 16;
        r12.z = (uint)r5.w >> 5;
        r5.w = 1 << (int)r5.w;
        r12.x = (int)r4.w + (int)r12.z;
        // Needs manual fix for instruction:
            atomic_or g6, r12.xyxx, r5.w
        InterlockedOr(dest, value, orig_value);
      }
    }
    r3.w = (int)r3.w + 64;
  }
  GroupMemoryBarrierWithGroupSync();
  r1.x = cmp(0 < r2.z);
  r1.x = r1.x ? r1.w : 0;
  if (r1.x == 0) {
    return;
  }
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r0.xyw).xyzw;
  r1.xw = (uint2)r0.xy;
  r5.xy = float2(0.5,0.5) + r1.xw;
  r5.zw = renderTargetSize.zw * r5.xy;
  r6.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r5.zw).xyzw;
  r7.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r5.zw).xyzw;
  r5.zw = float2(0.5,0.5) * r5.xy;
  r5.zw = frac(r5.zw);
  r8.xy = float2(1,1) + -r5.wz;
  r9.y = r8.y * r8.x;
  r9.xz = r8.xy * r5.zw;
  r9.w = r5.z * r5.w;
  r3.w = dot(r6.xyzw, r9.xyzw);
  r7.xyzw = r7.xyzw + -r3.zzzz;
  r5.z = min(abs(r7.z), abs(r7.w));
  r5.z = min(abs(r7.y), r5.z);
  r5.z = min(abs(r7.x), r5.z);
  r5.w = max(abs(r7.z), abs(r7.w));
  r5.w = max(abs(r7.y), r5.w);
  r5.w = max(abs(r7.x), r5.w);
  r7.xyz = cmp(r5.zzz == abs(r7.yzw));
  r5.z = r7.x ? r6.y : r6.x;
  r5.z = r7.y ? r6.z : r5.z;
  r5.z = r7.z ? r6.w : r5.z;
  r6.x = 0.00999999978 * r3.z;
  r5.w = cmp(r6.x < r5.w);
  r3.w = r5.w ? r5.z : r3.w;
  r3.w = r4.z * r3.w;
  if (showAO != 0) {
    r4.z = 0.75 * r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyyy, r4.zzzz
    return;
  } else {
    r4.z = enableAO ? r3.w : 1;
  }
  r3.w = cmp(r2.z >= 0.5);
  r6.xyz = GBufferDiffuseColor.Load(r0.xyw).xyz;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyw, int3(0, 0, 0)).xyw;
  r10.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyz, int3(0, 0, 0)).xyw;
  r0.zw = -subpixelOffset.xy + r5.xy;
  r0.zw = renderTargetSize.zw * r0.zw;
  r0.zw = r0.zw * float2(2,-2) + float2(-1,1);
  r5.x = inverseProjectionMatrix._m00;
  r5.y = inverseProjectionMatrix._m11;
  r5.xy = r5.xy * r0.zw;
  r5.z = 1;
  r5.xyz = r5.xyz * r3.zzz;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r5.yyy;
  r5.xyw = r5.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r5.xyz = r5.zzz * inverseViewMatrix._m20_m21_m22 + r5.xyw;
  r0.z = r2.w * 3 + 0.5;
  r0.z = (uint)r0.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r0.w = dot(r2.xy, r2.xy);
  r11.zw = float2(2,1) + -r0.ww;
  r0.w = sqrt(r11.z);
  r11.xy = r2.xy * r0.ww;
  r12.xyzw = (int4)r0.zzzz & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.z = (int)r12.w ^ (int)r12.z;
  r12.z = r0.z ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r2.xyw = r11.yyy * r2.xyw;
  r2.xyw = r13.xyz * r11.xxx + r2.xyw;
  r11.xyz = r12.xyz * r11.zzz + r2.xyw;
  r0.z = r3.w ? -0.5 : -0.00146627566;
  r0.z = r2.z + r0.z;
  r2.y = saturate(2.00982332 * r0.z);
  r0.z = dot(-r5.xyz, -r5.xyz);
  r0.z = rsqrt(r0.z);
  r12.xyz = -r5.xyz * r0.zzz;
  r0.w = dot(r1.xw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r13.x, r14.x);
  r1.xw = (uint2)r0.yx;
  r0.w = dot(r1.xw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r1.x, r15.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.w = dot(-r12.xyz, r11.xyz);
  r0.w = r0.w + r0.w;
  r16.xyz = r11.xyz * -r0.www + -r12.xyz;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.w = sqrt(r0.w);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r0.xy == (int2)r2.zw);
  r2.z = r2.w ? r2.z : 0;
  r2.w = dot(r11.xyz, sunConstants.wldDir.xyz);
  r3.z = saturate(r2.w);
  r6.w = r3.w ? abs(r2.w) : r3.z;
  r7.w = cmp(0 >= r6.w);
  if (r7.w != 0) {
    r8.w = 0;
  }
  if (r7.w == 0) {
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r5.yyy;
    r15.yzw = r5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.yzw;
    r15.yzw = r5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.yzw;
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.yzw;
    r7.w = -sunConstants.splitDepthOffset + r15.w;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r9.w = saturate(r7.w);
    r9.w = cmp(r7.w == r9.w);
    if (r9.w != 0) {
      r9.w = 0;
      r10.w = 0;
      while (true) {
        r12.w = cmp(r9.w >= 3);
        if (r12.w != 0) break;
        r12.w = (uint)r9.w;
        r13.zw = -sunConstants.splitPinTransform[r12.w].xy + r15.yz;
        r13.z = max(abs(r13.z), abs(r13.w));
        r10.w = sunConstants.splitPinTransform[r12.w].z * r13.z;
        r12.w = cmp(r10.w < 1);
        if (r12.w != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r10.w = 0;
      }
    } else {
      r9.w = 3;
      r10.w = 0;
    }
    r12.w = cmp(r9.w >= 3);
    if (r12.w != 0) {
      r17.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r18.xz = rcp(r17.xx);
      r18.y = -r18.z;
      r17.xyz = r15.yzy * r18.xyz + r17.yzy;
      r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r17.xyz = max(float3(0,0,0), r17.xyz);
      r17.xyz = min(r17.xyz, r18.xyz);
      r13.zw = sunConstants.sstLightingConstants.coordScale * r17.zy;
      r13.zw = floor(r13.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r13.z = r13.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r13.z = (uint)r13.z;
      r13.z = (int)r13.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r14.w = (int)r13.w & 0x40000000;
      r17.w = (uint)r13.w << 2;
      if (r14.w == 0) {
        r14.w = (int)r13.w & 0x01ffffff;
        r18.x = (int)r13.z + (int)r14.w;
        r13.z = (uint)r13.w >> 25;
        r13.z = (uint)r13.z;
        r17.xyz = r17.xyz * r13.zzz;
        r17.xyz = frac(r17.xyz);
        r17.xyz = float3(128,128,128) * r17.xyz;
        r17.xyz = (uint3)r17.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r13.zw = (uint2)r17.zy >> int2(6,6);
        r14.w = (int)r18.z & 0xc0000000;
        r18.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r13.w = r13.w ? r18.z : r18.w;
        r18.w = (uint)r13.w >> 13;
        r13.z = r13.z ? r18.w : r13.w;
        r13.z = (int)r13.z & 8191;
        r19.x = (int)r13.z + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r19.xyz = r14.www ? r18.xyz : r19.xyz;
        r20.yz = r14.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r17.zy >> (uint2)r20.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r18.w = (int)r19.z & 0xc0000000;
        r19.w = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r13.w = r13.w ? r19.z : r19.w;
        r19.w = (uint)r13.w >> 13;
        r13.z = r13.z ? r19.w : r13.w;
        r13.z = (int)r13.z & 8191;
        r20.x = (int)r13.z + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r19.xyz = r18.www ? r19.xyz : r20.xzw;
        r18.xyz = r14.www ? r18.xyz : r19.xyz;
        r13.z = (int)r18.z & 0xc0000000;
        if (r13.z == 0) {
          r13.z = (int)-r18.y + 6;
          r13.zw = (uint2)r17.zy >> (uint2)r13.zz;
          r14.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r14.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r19.x = (int)r13.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r18.yy + int2(1,2);
          r13.z = (int)-r19.y + 6;
          r13.zw = (uint2)r17.zy >> (uint2)r13.zz;
          r14.w = (int)r19.w & 0xc0000000;
          r18.y = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r18.y >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r20.x = (int)r13.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r14.www ? r19.xyw : r20.xyz;
          r13.z = (int)-r20.y + 6;
          r13.zw = (uint2)r17.zy >> (uint2)r13.zz;
          r18.y = (int)r20.z & 0xc0000000;
          r18.w = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r18.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r21.x = (int)r13.z + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
        r21.y = samp0[]..swiz;
          r13.zw = r18.yy ? r20.xz : r21.xy;
          r18.xz = r14.ww ? r19.xw : r13.zw;
        }
        r13.z = (int)r18.z & 0xc0000000;
        if (r13.z == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r18.z << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r18.z >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r18.yw = (int2)r18.zz & int2(32767,536870912);
          r14.w = (uint)r18.y;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 3.05185094e-05 * r14.w;
          r18.y = (int)r17.y & 3;
          r18.y = (int)r18.y + (int)r18.x;
          r18.y = (int)r18.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r17.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r17.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r17.x = (uint)r18.y >> (uint)r19.x;
          r17.x = (int)r17.x & 255;
          r17.x = (uint)r17.x;
          r17.x = r17.x * r14.w;
          r17.x = r17.x * 0.00392156886 + r13.w;
          r17.y = (int)r19.y + 1;
          if (1 == 0) r17.z = 0; else if (1+1 < 32) {           r17.z = (uint)r17.z << (32-(1 + 1)); r17.z = (uint)r17.z >> (32-1);          } else r17.z = (uint)r17.z >> 1;
          r17.y = (int)r17.z + (int)r17.y;
          r17.y = (int)r17.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r17.y = (uint)r17.y >> (uint)r19.z;
          r17.y = (int)r17.y & 0x0000ffff;
          r17.y = (uint)r17.y;
          r14.w = r17.y * r14.w;
          r13.w = r14.w * 1.52590219e-05 + r13.w;
          r17.w = r18.w ? r17.x : r13.w;
        } else {
          r13.w = (int)r18.z & 0x80000000;
          r14.w = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r13.w = r13.w ? r14.w : 0;
          r14.w = (uint)r18.z << 2;
          r17.x = (uint)r13.w >> 16;
          r17.x = f16tof32(r17.x);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r14.w = r15.y * r17.x + r14.w;
          r13.w = r15.z * r13.w + r14.w;
          r17.w = r13.z ? r13.w : r17.w;
        }
      }
      r13.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.w;
      r13.z = cmp(r17.w < r13.z);
      r8.w = r13.z ? 0 : 1;
    }
    if (r12.w == 0) {
      if (enableDitheredShadow == 0) {
        r12.w = (uint)r9.w;
        r13.zw = -sunConstants.splitPinTransform[r12.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r12.w].zz * r13.zw;
        r17.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.w = (int16)sunConstants.splitArrayOffset;
        r17.z = r12.w + r9.w;
        r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
        r12.w = r13.z + r12.w;
        r12.w = saturate(-1 + r12.w);
        r13.z = r12.w * r12.w;
        r8.w = r13.z * r12.w;
      }
      if (enableDitheredShadow != 0) {
        r17.x = -r13.x;
        r12.w = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r10.w = 1 + -r10.w;
        r10.w = 28 * r10.w;
        r10.w = (uint)r10.w;
        r13.zw = -sunConstants.splitPinTransform[r12.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r12.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.yz = -sunConstants.splitPinTransform[r9.w].xy + r15.yz;
        r15.yz = sunConstants.splitPinTransform[r9.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r17.y = r14.x;
        r17.z = r13.x;
        r14.w = 0;
        r15.w = 0;
        while (true) {
          r17.w = cmp((uint)r15.w >= 8);
          if (r17.w != 0) break;
          r17.w = cmp((uint)r10.w < (uint)r15.w);
          r18.xy = r17.ww ? r15.yz : r13.zw;
          r18.z = r17.w ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r12.w].w;
          r17.w = r17.w ? r9.w : r12.w;
          r19.x = dot(icb[r15.w+4].yx, r17.xy);
          r19.y = dot(icb[r15.w+4].yx, r17.yz);
          r18.xy = r19.xy * r18.zz + r18.xy;
          r17.w = (int)r17.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r17.w;
          r17.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
          r18.x = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r17.w = r18.x + r17.w;
          r17.w = saturate(-1 + r17.w);
          r14.w = r17.w * 0.125 + r14.w;
          r15.w = (int)r15.w + 1;
        }
        r7.w = r14.w * r14.w;
        r8.w = r7.w * r14.w;
      }
    }
  }
  r7.w = 1 + -r2.y;
  r9.w = 5 * r7.w;
  r10.w = r7.w * 5 + -2.5;
  r10.w = 0.400000006 * r10.w;
  r10.w = max(0, r10.w);
  r10.w = 100 * r10.w;
  r13.zw = -r7.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r12.w = exp2(r13.z);
  r12.w = r12.w * r2.x;
  r12.w = 9.1368103 * r12.w;
  r13.z = r9.w * r7.w;
  r13.z = -r13.z * 2.0159049 + r13.w;
  r13.z = exp2(r13.z);
  r13.z = r13.z * r2.x;
  r13.z = 9.70808983 * r13.z;
  r12.w = max(r13.z, r12.w);
  r12.w = max(1.26815999, r12.w);
  if (probeDebug != 0) {
    r17.xyzw = float4(0,0,0,0);
    r18.xyzw = float4(0,0,0,0);
    r19.xyzw = float4(0,0,0,0);
    r20.xyzw = float4(0,0,0,0);
    r21.xyzw = float4(0,0,0,0);
    r22.xyzw = float4(0,0,0,0);
    r23.xyzw = float4(0,0,0,0);
    r24.xyzw = float4(0,0,0,0);
    r25.xyzw = float4(0,0,0,0);
    r26.xyzw = float4(0,0,0,0);
    r27.xyzw = float4(0,0,0,0);
    r15.yzw = float3(0,0,0);
    r13.zw = float2(0,0);
    r14.w = 0;
    r28.zw = float2(0,0);
    r29.zw = float2(0,0);
    while (true) {
      r30.x = cmp((uint)r29.w >= numRefProbes);
      if (r30.x != 0) break;
      r30.x = (uint)r29.w >> 5;
      r30.x = (int)r30.x + 16;
    // Known bad code for instruction (needs manual fix):
        ld_structured r30.x, r30.x, l(0), g6.xxxx
    r30.x = samp0[]..swiz;
      r31.xyzw = r17.yxzw;
      r32.xyzw = r18.xyzw;
      r33.xyzw = r19.yzwx;
      r34.xyzw = r20.xyzw;
      r35.xyzw = r21.xyzw;
      r36.xyzw = r22.zwxy;
      r37.xyzw = r23.zwxy;
      r38.xyzw = r25.zwxy;
      r39.xyzw = r26.zwxy;
      r30.yzw = r15.yzw;
      r40.xy = r13.wz;
      r40.z = r14.w;
      r40.w = r28.z;
      r41.x = r29.z;
      r41.y = r28.w;
      r42.xyzw = r24.zwxy;
      r43.xyzw = r27.zwxy;
      r41.z = r30.x;
      while (true) {
        if (r41.z == 0) break;
        r41.w = firstbitlow((uint)r41.z);
        r44.x = 1 << (int)r41.w;
        r44.x = ~(int)r44.x;
        r41.z = (int)r41.z & (int)r44.x;
        r41.w = (int)r29.w + (int)r41.w;
        r41.w = (int)r41.w * 14;
        r44.xyz = -refProbeConstantsCB[r41.w].data[0].xyz + r5.xyz;
        r44.x = dot(r44.xyz, r44.xyz);
        r44.x = sqrt(r44.x);
        r44.x = cmp(probeDebugRadius >= r44.x);
        if (r44.x != 0) {
          r31.yzw = refProbeConstantsCB[r41.w].data[1].xyz;
          r31.x = refProbeConstantsCB[r41.w].data[0].w;
          r32.yzw = refProbeConstantsCB[r41.w].data[2].xyz;
          r32.x = refProbeConstantsCB[r41.w].data[1].w;
          r33.xyz = refProbeConstantsCB[r41.w].data[3].xyz;
          r33.w = refProbeConstantsCB[r41.w].data[4].z;
          r34.yz = refProbeConstantsCB[r41.w].data[4].xy;
          r34.x = refProbeConstantsCB[r41.w].data[3].w;
          r34.w = refProbeConstantsCB[r41.w].data[6].x;
          r35.yzw = refProbeConstantsCB[r41.w].data[5].xyz;
          r35.x = refProbeConstantsCB[r41.w].data[4].w;
          r36.yz = refProbeConstantsCB[r41.w].data[7].yw;
          r36.x = refProbeConstantsCB[r41.w].data[6].y;
          r36.w = refProbeConstantsCB[r41.w].data[8].x;
          r37.xyz = refProbeConstantsCB[r41.w].data[8].yzw;
          r37.w = refProbeConstantsCB[r41.w].data[9].x;
          r38.xyz = refProbeConstantsCB[r41.w].data[10].yzw;
          r38.w = refProbeConstantsCB[r41.w].data[11].x;
          r39.xyz = refProbeConstantsCB[r41.w].data[11].yzw;
          r39.w = refProbeConstantsCB[r41.w].data[12].x;
          r30.yzw = refProbeConstantsCB[r41.w].data[0].xyz;
          r44.xy = refProbeConstantsCB[r41.w].data[13].yz;
          r40.z = -1;
          r40.w = refProbeConstantsCB[r41.w].data[2].w;
          r41.x = refProbeConstantsCB[r41.w].data[5].w;
          r41.y = refProbeConstantsCB[r41.w].data[7].z;
          r42.xyz = refProbeConstantsCB[r41.w].data[9].yzw;
          r42.w = refProbeConstantsCB[r41.w].data[10].x;
          r43.xyz = refProbeConstantsCB[r41.w].data[12].yzw;
          r43.w = refProbeConstantsCB[r41.w].data[13].x;
          r40.xy = r44.xy;
          break;
        }
      }
      if (r40.z != 0) {
        r17.xyzw = r31.yxzw;
        r18.xyzw = r32.xyzw;
        r19.xyzw = r33.wxyz;
        r20.xyzw = r34.xyzw;
        r21.xyzw = r35.xyzw;
        r22.xyzw = r36.zwxy;
        r23.xyzw = r37.zwxy;
        r24.xyzw = r42.zwxy;
        r25.xyzw = r38.zwxy;
        r26.xyzw = r39.zwxy;
        r27.xyzw = r43.zwxy;
        r15.yzw = r30.yzw;
        r13.zw = r40.yx;
        r14.w = -1;
        r28.z = r40.w;
        r29.z = r41.x;
        r28.w = r41.y;
        break;
      }
      r29.w = (int)r29.w + 32;
      r17.xyzw = r31.yxzw;
      r18.xyzw = r32.xyzw;
      r19.xyzw = r33.wxyz;
      r20.xyzw = r34.xyzw;
      r21.xyzw = r35.xyzw;
      r22.xyzw = r36.zwxy;
      r23.xyzw = r37.zwxy;
      r25.xyzw = r38.zwxy;
      r26.xyzw = r39.zwxy;
      r15.yzw = r30.yzw;
      r13.zw = r40.yx;
      r14.w = r40.z;
      r28.z = r40.w;
      r29.z = r41.x;
      r28.w = r41.y;
      r24.xyzw = r42.zwxy;
      r27.xyzw = r43.zwxy;
    }
    r30.xy = r17.yw;
    r28.x = r17.z;
    r17.yz = r18.xw;
    r28.y = r18.y;
    r30.z = r18.z;
    r18.xyz = r19.yzw;
    r19.yz = r21.xy;
    r29.xy = r21.zw;
    r21.xy = r22.zw;
    r22.z = r23.z;
    r23.z = r24.z;
    r24.z = r25.z;
    r25.z = r26.z;
    r26.z = r27.z;
    r27.z = r13.w;
  } else {
    r14.w = 0;
  }
  if (r14.w != 0) {
    if (r2.z != 0) {
      r31.yzw = eyeOffset.xyz + r15.yzw;
      r31.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r15.yzw = -r15.yzw + r5.xyz;
    r13.w = (int)r28.w & 0x0000ffff;
    if (6 == 0) r17.w = 0; else if (6+25 < 32) {     r17.w = (uint)r28.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);    } else r17.w = (uint)r28.w >> 25;
    r18.w = (int)r13.w * 6;
    r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r15.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
    r21.z = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r15.yzw);
    r21.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r21.z);
    r19.w = r21.z * r19.w;
    r21.z = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r15.yzw);
    r21.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r21.z);
    r19.w = r21.z * r19.w;
    r21.z = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r15.yzw);
    r21.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r21.z);
    r19.w = r21.z * r19.w;
    r21.z = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r15.yzw);
    r21.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r21.z);
    r19.w = r21.z * r19.w;
    r21.z = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r15.yzw);
    r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r21.z);
    r31.x = r19.w * r18.w;
    r18.w = (int)r20.w & 1;
    r31.yz = float2(0,1);
    r21.zw = r18.ww ? r31.xy : r31.zx;
    r31.x = 1;
    r18.w = r20.w;
    r32.xy = r21.zw;
    r19.w = 1;
    while (true) {
      r22.w = cmp((int)r19.w >= (int)r17.w);
      if (r22.w != 0) break;
      r22.w = (int)r13.w + (int)r19.w;
      r22.w = (int)r22.w * 6;
      r29.w = dot(refProbeAttenuationConstantsCB[r22.w].data[0].xyz, r15.yzw);
      r29.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[0].w + r29.w);
      r29.w = r32.x * r29.w;
      r30.w = dot(refProbeAttenuationConstantsCB[r22.w].data[1].xyz, r15.yzw);
      r30.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[1].w + r30.w);
      r29.w = r30.w * r29.w;
      r30.w = dot(refProbeAttenuationConstantsCB[r22.w].data[2].xyz, r15.yzw);
      r30.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[2].w + r30.w);
      r29.w = r30.w * r29.w;
      r30.w = dot(refProbeAttenuationConstantsCB[r22.w].data[3].xyz, r15.yzw);
      r30.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[3].w + r30.w);
      r29.w = r30.w * r29.w;
      r30.w = dot(refProbeAttenuationConstantsCB[r22.w].data[4].xyz, r15.yzw);
      r30.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[4].w + r30.w);
      r29.w = r30.w * r29.w;
      r30.w = dot(refProbeAttenuationConstantsCB[r22.w].data[5].xyz, r15.yzw);
      r22.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[5].w + r30.w);
      r32.x = r29.w * r22.w;
      r30.w = (uint)r18.w >> 2;
      if (1 == 0) r31.z = 0; else if (1+2 < 32) {       r31.z = (uint)r18.w << (32-(1 + 2)); r31.z = (uint)r31.z >> (32-1);      } else r31.z = (uint)r18.w >> 2;
      r31.w = (int)r30.w & 2;
      r32.z = max(r32.y, r32.x);
      r22.w = -r29.w * r22.w + 1;
      r22.w = r32.y * r22.w;
      r31.y = r31.w ? r22.w : r32.z;
      r32.xy = r31.zz ? r32.xy : r31.xy;
      r19.w = (int)r19.w + 1;
      r18.w = r30.w;
    }
    r32.y = saturate(r32.y);
    r31.w = r32.y * r21.x;
    r13.w = cmp(0 < r31.w);
    if (r13.w != 0) {
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.w, cb2[52].x, l(880), u2.xxxx
      r13.w = samp0[]..swiz;
        r13.w = (int)r13.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r13.w = r31.w * r21.y;
      r17.w = dot(r16.xyz, r22.xyz);
      r18.w = dot(r15.yzw, r22.xyz);
      r18.w = r18.w + -r23.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r10.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r17.w = min(131072, abs(r17.w));
      r18.w = dot(r16.xyz, r23.xyz);
      r19.w = dot(r15.yzw, r23.xyz);
      r19.w = r19.w + -r24.w;
      r20.w = cmp(r19.w >= 0);
      r19.w = max(abs(r19.w), r10.w);
      r19.w = r20.w ? r19.w : -r19.w;
      r18.w = max(1.00000001e-07, -r18.w);
      r18.w = r19.w / r18.w;
      r17.w = min(abs(r18.w), r17.w);
      r18.w = dot(r16.xyz, r24.xyz);
      r19.w = dot(r15.yzw, r24.xyz);
      r19.w = r19.w + -r25.w;
      r20.w = cmp(r19.w >= 0);
      r19.w = max(abs(r19.w), r10.w);
      r19.w = r20.w ? r19.w : -r19.w;
      r18.w = max(1.00000001e-07, -r18.w);
      r18.w = r19.w / r18.w;
      r17.w = min(abs(r18.w), r17.w);
      r18.w = dot(r16.xyz, r25.xyz);
      r19.w = dot(r15.yzw, r25.xyz);
      r19.w = r19.w + -r26.w;
      r20.w = cmp(r19.w >= 0);
      r19.w = max(abs(r19.w), r10.w);
      r19.w = r20.w ? r19.w : -r19.w;
      r18.w = max(1.00000001e-07, -r18.w);
      r18.w = r19.w / r18.w;
      r17.w = min(abs(r18.w), r17.w);
      r18.w = dot(r16.xyz, r26.xyz);
      r19.w = dot(r15.yzw, r26.xyz);
      r19.w = r19.w + -r27.w;
      r20.w = cmp(r19.w >= 0);
      r19.w = max(abs(r19.w), r10.w);
      r19.w = r20.w ? r19.w : -r19.w;
      r18.w = max(1.00000001e-07, -r18.w);
      r18.w = r19.w / r18.w;
      r17.w = min(abs(r18.w), r17.w);
      r18.w = dot(r16.xyz, r27.xyz);
      r19.w = dot(r15.yzw, r27.xyz);
      r13.z = r19.w + -r13.z;
      r19.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r10.w);
      r13.z = r19.w ? r13.z : -r13.z;
      r18.w = max(1.00000001e-07, -r18.w);
      r13.z = r13.z / r18.w;
      r13.z = min(r17.w, abs(r13.z));
      r20.xyz = r20.xyz + r15.yzw;
      r20.xyz = r16.xyz * r13.zzz + r20.xyz;
      r17.w = dot(r20.xyz, r20.xyz);
      r17.w = sqrt(r17.w);
      r13.z = r13.z / r17.w;
      r13.z = r13.z + r13.z;
      r13.z = sqrt(r13.z);
      r13.z = r7.w * 5 + r13.z;
      r13.z = -0.844799995 + r13.z;
      r21.x = dot(r20.xyz, r30.xyz);
      r21.y = dot(r20.xyz, r17.xyz);
      r21.z = dot(r20.xyz, r28.xyz);
      if (9 == 0) r17.w = 0; else if (9+16 < 32) {       r17.w = (uint)r28.w << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);      } else r17.w = (uint)r28.w >> 16;
      r21.w = (uint)r17.w;
      r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, r13.z).xyz;
      r22.xyz = (int3)r20.xyz & int3(-2147483648,-2147483648,-2147483648);
      r22.xyz = cmp((int3)r22.xyz == int3(2139095040,2139095040,2139095040));
      r13.z = (int)r22.y | (int)r22.x;
      r13.z = (int)r22.z | (int)r13.z;
      r20.xyz = r13.zzz ? float3(1,1,0) : r20.xyz;
      r22.x = dot(r15.yzw, r30.xyz);
      r22.y = dot(r15.yzw, r17.xyz);
      r22.z = dot(r15.yzw, r28.xyz);
      r15.yzw = saturate(r22.xyz * r18.xyz + float3(0.5,0.5,0.5));
      r15.yzw = r15.yzw * r19.xyz + r29.xyz;
      r21.x = dot(r11.xyz, r30.xyz);
      r21.y = dot(r11.xyz, r17.xyz);
      r21.z = dot(r11.xyz, r28.xyz);
      r17.xyz = cmp(float3(0,0,0) < r21.xyz);
      r18.z = r17.x ? 0 : 0.5;
      r18.xy = float2(0,0);
      r18.xyz = r18.xyz + r15.yzw;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r19.xyz = r21.xyz * r21.xyz;
      r19.xyz = r19.xyz * r13.www;
      r22.z = r17.y ? 0 : 0.5;
      r22.xy = float2(0,0);
      r17.xyw = r22.xyz + r15.yzw;
      r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
      r17.xyw = r17.xyw * r19.yyy;
      r17.xyw = r18.xyz * r19.xxx + r17.xyw;
      r18.z = r17.z ? 0 : 0.5;
      r18.xy = float2(0,0);
      r15.yzw = r18.xyz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r19.zzz + r17.xyw;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, 6).xyz;
      r18.xyz = (int3)r17.xyz & int3(-2147483648,-2147483648,-2147483648);
      r18.xyz = cmp((int3)r18.xyz == int3(2139095040,2139095040,2139095040));
      r13.z = (int)r18.y | (int)r18.x;
      r13.z = (int)r18.z | (int)r13.z;
      r17.xyz = r13.zzz ? float3(1,1,0) : r17.xyz;
      r15.yzw = r17.xyz * r15.yzw;
      r13.z = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r15.y = r13.z * r12.w;
      r17.xyz = r20.xyz * r13.www;
      r13.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r13.z = r12.w * r13.z + r13.w;
      r13.z = r15.y / r13.z;
      r31.xyz = r17.xyz * r13.zzz;
      r13.z = 257;
    } else {
      r31.xyzw = float4(0,0,0,0);
      r13.z = 1;
    }
    r13.w = -1;
  } else {
    r31.xyzw = float4(0,0,0,0);
    r13.z = 0;
  }
  r13.w = (int)r13.w & (int)r14.w;
  if (r13.w == 0) {
    r13.w = numRefProbes + -numOverrideProbes;
    r14.w = (int)r13.w & -32;
    r15.y = (int)r13.w + (int)-r14.w;
    r15.z = numRefProbes & -32;
    r15.w = (int)-r15.z + numRefProbes;
    r17.x = 16;
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r20.xz = float2(1,1);
    r21.xy = float2(0,0);
    r22.xy = float2(0,0);
    r23.xyz = float3(0,0,0);
    r23.w = r31.x;
    r24.xyz = r31.yzw;
    r24.w = r13.z;
    r18.w = r14.w;
    while (true) {
      r19.w = cmp((uint)r18.w >= numRefProbes);
      if (r19.w != 0) break;
      r19.w = (uint)r18.w >> 5;
      r19.w = (int)r19.w + 16;
    // Known bad code for instruction (needs manual fix):
        ld_structured r19.w, r19.w, l(0), g6.xxxx
    r19.w = samp0[]..swiz;
      r21.w = cmp((int)r14.w == (int)r18.w);
      bitmask.w = ((~(-1 << r15.y)) << 0) & 0xffffffff;  r22.w = (((uint)0 << 0) & bitmask.w) | ((uint)r19.w & ~bitmask.w);
      r19.w = r21.w ? r22.w : r19.w;
      r21.w = cmp((int)r15.z == (int)r18.w);
      if (r15.w == 0) r22.w = 0; else if (r15.w+0 < 32) {       r22.w = (uint)r19.w << (32-(r15.w + 0)); r22.w = (uint)r22.w >> (32-r15.w);      } else r22.w = (uint)r19.w >> 0;
      r19.w = r21.w ? r22.w : r19.w;
      r25.xyzw = r23.xyzw;
      r26.xyzw = r24.xyzw;
      r21.w = r19.w;
      while (true) {
        if (r21.w == 0) break;
        r22.w = firstbitlow((uint)r21.w);
        r27.x = 1 << (int)r22.w;
        r27.x = ~(int)r27.x;
        r21.w = (int)r21.w & (int)r27.x;
        r22.w = (int)r18.w + (int)r22.w;
        r22.w = (int)r22.w * 14;
        r27.x = (int)r26.w & 255;
        r27.y = cmp((uint)r27.x < 32);
        r27.y = r2.z ? r27.y : 0;
        if (r27.y != 0) {
          r27.x = mad((int)r27.x, 20, 880);
          r17.yzw = refProbeConstantsCB[r22.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r27.x = u2.xyzw;
        }
        r27.w = (int)r26.w + 1;
        r17.yzw = -refProbeConstantsCB[r22.w].data[0].xyz + r5.xyz;
        r28.x = 0x0000ffff & (int)refProbeConstantsCB[r22.w].data[7].z;
        if (6 == 0) r28.y = 0; else if (6+25 < 32) {         r28.y = (uint)refProbeConstantsCB[r22.w].data[7].z << (32-(6 + 25)); r28.y = (uint)r28.y >> (32-6);        } else r28.y = (uint)refProbeConstantsCB[r22.w].data[7].z >> 25;
        r28.z = (int)r28.x * 6;
        r28.w = dot(refProbeAttenuationConstantsCB[r28.z].data[0].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r28.z].data[0].w + r28.w);
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[1].xyz, r17.yzw);
        r29.x = saturate(refProbeAttenuationConstantsCB[r28.z].data[1].w + r29.x);
        r28.w = r29.x * r28.w;
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[2].xyz, r17.yzw);
        r29.x = saturate(refProbeAttenuationConstantsCB[r28.z].data[2].w + r29.x);
        r28.w = r29.x * r28.w;
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[3].xyz, r17.yzw);
        r29.x = saturate(refProbeAttenuationConstantsCB[r28.z].data[3].w + r29.x);
        r28.w = r29.x * r28.w;
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[4].xyz, r17.yzw);
        r29.x = saturate(refProbeAttenuationConstantsCB[r28.z].data[4].w + r29.x);
        r28.w = r29.x * r28.w;
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[5].xyz, r17.yzw);
        r28.z = saturate(refProbeAttenuationConstantsCB[r28.z].data[5].w + r29.x);
        r18.x = r28.w * r28.z;
        r28.z = 1 & (int)refProbeConstantsCB[r22.w].data[6].x;
        r28.zw = r28.zz ? r18.xy : r18.zx;
        r18.x = refProbeConstantsCB[r22.w].data[6].x;
        r29.xy = r28.zw;
        r29.z = 1;
        while (true) {
          r29.w = cmp((int)r29.z >= (int)r28.y);
          if (r29.w != 0) break;
          r29.w = (int)r28.x + (int)r29.z;
          r29.w = (int)r29.w * 6;
          r30.x = dot(refProbeAttenuationConstantsCB[r29.w].data[0].xyz, r17.yzw);
          r30.x = saturate(refProbeAttenuationConstantsCB[r29.w].data[0].w + r30.x);
          r30.x = r30.x * r29.x;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[1].xyz, r17.yzw);
          r30.y = saturate(refProbeAttenuationConstantsCB[r29.w].data[1].w + r30.y);
          r30.x = r30.x * r30.y;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[2].xyz, r17.yzw);
          r30.y = saturate(refProbeAttenuationConstantsCB[r29.w].data[2].w + r30.y);
          r30.x = r30.x * r30.y;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[3].xyz, r17.yzw);
          r30.y = saturate(refProbeAttenuationConstantsCB[r29.w].data[3].w + r30.y);
          r30.x = r30.x * r30.y;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[4].xyz, r17.yzw);
          r30.y = saturate(refProbeAttenuationConstantsCB[r29.w].data[4].w + r30.y);
          r30.x = r30.x * r30.y;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[5].xyz, r17.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r29.w].data[5].w + r30.y);
          r29.x = r30.x * r29.w;
          r30.y = (uint)r18.x >> 2;
          if (1 == 0) r30.z = 0; else if (1+2 < 32) {           r30.z = (uint)r18.x << (32-(1 + 2)); r30.z = (uint)r30.z >> (32-1);          } else r30.z = (uint)r18.x >> 2;
          r30.w = (int)r30.y & 2;
          r32.x = max(r29.y, r29.x);
          r29.w = -r30.x * r29.w + 1;
          r29.w = r29.y * r29.w;
          r20.y = r30.w ? r29.w : r32.x;
          r29.xy = r30.zz ? r29.xy : r20.xy;
          r29.z = (int)r29.z + 1;
          r18.x = r30.y;
        }
        r29.y = saturate(r29.y);
        r18.x = refProbeConstantsCB[r22.w].data[6].y * r29.y;
        r20.y = cmp(0 < r18.x);
        if (r20.y != 0) {
          r20.y = (int)r27.w & 255;
          r28.x = (int)r20.y + -1;
          r28.x = cmp((uint)r28.x < 32);
          r28.x = r2.z ? r28.x : 0;
          if (r28.x != 0) {
            r28.xy = mad((int2)r20.yy, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.y, cb2[52].x, r28.x, u2.xxxx
          r20.y = samp0[]..swiz;
            r20.y = (int)r20.y | 32;
            GBufferDiffuseColor[viewID].r28.x = u2.x;
            GBufferDiffuseColor[viewID].r28.y = u2.x;
          }
          r26.w = (int)r26.w + 257;
          r26.z = r29.y * refProbeConstantsCB[r22.w].data[6].y + r26.z;
          r18.x = refProbeConstantsCB[r22.w].data[7].y * r18.x;
          r28.x = refProbeConstantsCB[r22.w].data[7].w;
          r28.yz = refProbeConstantsCB[r22.w].data[8].xy;
          r20.y = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[8].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r10.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r20.y = max(1.00000001e-07, -r20.y);
          r20.y = r28.x / r20.y;
          r20.y = min(131072, abs(r20.y));
          r28.x = refProbeConstantsCB[r22.w].data[8].w;
          r28.yz = refProbeConstantsCB[r22.w].data[9].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[9].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r10.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[9].w;
          r28.yz = refProbeConstantsCB[r22.w].data[10].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[10].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r10.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[10].w;
          r28.yz = refProbeConstantsCB[r22.w].data[11].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[11].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r10.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[11].w;
          r28.yz = refProbeConstantsCB[r22.w].data[12].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[12].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r10.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[12].w;
          r28.yz = refProbeConstantsCB[r22.w].data[13].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[13].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r10.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[3].w + r17.y;
          r28.yz = refProbeConstantsCB[r22.w].data[4].xy + r17.zw;
          r28.xyz = r16.xyz * r20.yyy + r28.xyz;
          r28.w = dot(r28.xyz, r28.xyz);
          r28.w = sqrt(r28.w);
          r20.y = r20.y / r28.w;
          r20.y = r20.y + r20.y;
          r20.y = sqrt(r20.y);
          r20.y = r7.w * 5 + r20.y;
          r20.y = -0.844799995 + r20.y;
          r30.x = refProbeConstantsCB[r22.w].data[0].w;
          r30.y = refProbeConstantsCB[r22.w].data[1].z;
          r30.z = refProbeConstantsCB[r22.w].data[2].y;
          r32.x = dot(r28.xyz, r30.xyz);
          r33.xy = refProbeConstantsCB[r22.w].data[1].xw;
          r33.z = refProbeConstantsCB[r22.w].data[2].z;
          r32.y = dot(r28.xyz, r33.xyz);
          r34.x = refProbeConstantsCB[r22.w].data[1].y;
          r34.yz = refProbeConstantsCB[r22.w].data[2].xw;
          r32.z = dot(r28.xyz, r34.xyz);
          if (9 == 0) r28.x = 0; else if (9+16 < 32) {           r28.x = (uint)refProbeConstantsCB[r22.w].data[7].z << (32-(9 + 16)); r28.x = (uint)r28.x >> (32-9);          } else r28.x = (uint)refProbeConstantsCB[r22.w].data[7].z >> 16;
          r32.w = (uint)r28.x;
          r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r20.y).xyz;
          r29.xzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
          r29.xzw = cmp((int3)r29.xzw == int3(2139095040,2139095040,2139095040));
          r20.y = (int)r29.z | (int)r29.x;
          r20.y = (int)r29.w | (int)r20.y;
          r28.xyz = r20.yyy ? float3(1,1,0) : r28.xyz;
          r35.x = dot(r17.yzw, r30.xyz);
          r35.y = dot(r17.yzw, r33.xyz);
          r35.z = dot(r17.yzw, r34.xyz);
          r17.yzw = saturate(r35.xyz * refProbeConstantsCB[r22.w].data[3].xyz + float3(0.5,0.5,0.5));
          r35.xy = refProbeConstantsCB[r22.w].data[4].zw * r17.yz;
          r35.z = refProbeConstantsCB[r22.w].data[5].x * r17.w;
          r17.yzw = refProbeConstantsCB[r22.w].data[5].yzw + r35.xyz;
          r32.x = dot(r11.xyz, r30.xyz);
          r32.y = dot(r11.xyz, r33.xyz);
          r32.z = dot(r11.xyz, r34.xyz);
          r29.xzw = cmp(float3(0,0,0) < r32.xyz);
          r19.z = r29.x ? 0 : 0.5;
          r30.xyz = r19.xyz + r17.yzw;
          r30.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
          r33.xyz = r32.xyz * r32.xyz;
          r33.xyz = r33.xyz * r18.xxx;
          r21.z = r29.z ? 0 : 0.5;
          r34.xyz = r21.xyz + r17.yzw;
          r34.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r34.xyz, 0).xyz;
          r34.xyz = r34.xyz * r33.yyy;
          r30.xyz = r30.xyz * r33.xxx + r34.xyz;
          r22.z = r29.w ? 0 : 0.5;
          r17.yzw = r22.xyz + r17.yzw;
          r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
          r17.yzw = r17.yzw * r33.zzz + r30.xyz;
          r29.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
          r30.xyz = (int3)r29.xzw & int3(-2147483648,-2147483648,-2147483648);
          r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
          r19.z = (int)r30.y | (int)r30.x;
          r19.z = (int)r30.z | (int)r19.z;
          r29.xzw = r19.zzz ? float3(1,1,0) : r29.xzw;
          r30.xyz = r29.xzw * r17.yzw;
          r19.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r25.xyz = r17.yzw * r29.xzw + r25.xyz;
          r17.y = r19.z * r12.w;
          r28.xyz = r28.xyz * r18.xxx;
          r17.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r17.z = r12.w * r19.z + r17.z;
          r17.y = r17.y / r17.z;
          r30.x = r25.w;
          r30.yz = r26.xy;
          r17.yzw = r28.xyz * r17.yyy + r30.xyz;
          r25.w = r17.y;
          r26.xy = r17.zw;
        } else {
          r27.xyz = r26.xyz;
          r26.xyzw = r27.xyzw;
        }
      }
      r23.xyzw = r25.xyzw;
      r24.xyzw = r26.xyzw;
      r18.w = (int)r18.w + 32;
    }
    r17.x = 16;
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xy = float2(0,0);
    r25.xyz = r23.xyz;
    r26.x = r23.w;
    r26.yz = r24.xy;
    r27.xyz = r24.zwz;
    r15.z = 0;
    while (true) {
      r15.w = cmp((uint)r15.z >= (uint)r13.w);
      if (r15.w != 0) break;
      r15.w = (uint)r15.z >> 5;
      r15.w = (int)r15.w + 16;
    // Known bad code for instruction (needs manual fix):
        ld_structured r15.w, r15.w, l(0), g6.xxxx
    r15.w = samp0[]..swiz;
      r18.w = cmp((int)r14.w == (int)r15.z);
      if (r15.y == 0) r19.w = 0; else if (r15.y+0 < 32) {       r19.w = (uint)r15.w << (32-(r15.y + 0)); r19.w = (uint)r19.w >> (32-r15.y);      } else r19.w = (uint)r15.w >> 0;
      r15.w = r18.w ? r19.w : r15.w;
      r28.xyz = r25.xyz;
      r29.xyz = r26.xyz;
      r30.xyz = r27.xzy;
      r18.w = r15.w;
      while (true) {
        if (r18.w == 0) break;
        r19.w = firstbitlow((uint)r18.w);
        r20.x = 1 << (int)r19.w;
        r20.x = ~(int)r20.x;
        r18.w = (int)r18.w & (int)r20.x;
        r19.w = (int)r15.z + (int)r19.w;
        r19.w = (int)r19.w * 14;
        r20.x = (int)r30.z & 255;
        r20.y = cmp((uint)r20.x < 32);
        r20.y = r2.z ? r20.y : 0;
        if (r20.y != 0) {
          r20.x = mad((int)r20.x, 20, 880);
          r17.yzw = refProbeConstantsCB[r19.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r20.x = u2.xyzw;
        }
        r20.y = (int)r30.z + 1;
        r17.yzw = -refProbeConstantsCB[r19.w].data[0].xyz + r5.xyz;
        r21.w = 0x0000ffff & (int)refProbeConstantsCB[r19.w].data[7].z;
        if (6 == 0) r22.w = 0; else if (6+25 < 32) {         r22.w = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(6 + 25)); r22.w = (uint)r22.w >> (32-6);        } else r22.w = (uint)refProbeConstantsCB[r19.w].data[7].z >> 25;
        r25.w = (int)r21.w * 6;
        r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[0].xyz, r17.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[0].w + r26.w);
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[1].xyz, r17.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[1].w + r27.w);
        r26.w = r27.w * r26.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[2].xyz, r17.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[2].w + r27.w);
        r26.w = r27.w * r26.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[3].xyz, r17.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[3].w + r27.w);
        r26.w = r27.w * r26.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[4].xyz, r17.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[4].w + r27.w);
        r26.w = r27.w * r26.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[5].xyz, r17.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[5].w + r27.w);
        r18.x = r26.w * r25.w;
        r25.w = 1 & (int)refProbeConstantsCB[r19.w].data[6].x;
        r32.xy = r25.ww ? r18.xy : r18.zx;
        r18.x = refProbeConstantsCB[r19.w].data[6].x;
        r33.xy = r32.xy;
        r25.w = 1;
        while (true) {
          r26.w = cmp((int)r25.w >= (int)r22.w);
          if (r26.w != 0) break;
          r26.w = (int)r21.w + (int)r25.w;
          r26.w = (int)r26.w * 6;
          r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[0].xyz, r17.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[0].w + r27.w);
          r27.w = r33.x * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[1].xyz, r17.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[1].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[2].xyz, r17.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[2].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[3].xyz, r17.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[3].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[4].xyz, r17.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[4].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[5].xyz, r17.yzw);
          r26.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[5].w + r28.w);
          r33.x = r27.w * r26.w;
          r28.w = (uint)r18.x >> 2;
          if (1 == 0) r29.w = 0; else if (1+2 < 32) {           r29.w = (uint)r18.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);          } else r29.w = (uint)r18.x >> 2;
          r30.w = (int)r28.w & 2;
          r31.w = max(r33.y, r33.x);
          r26.w = -r27.w * r26.w + 1;
          r26.w = r33.y * r26.w;
          r20.w = r30.w ? r26.w : r31.w;
          r33.xy = r29.ww ? r33.xy : r20.zw;
          r25.w = (int)r25.w + 1;
          r18.x = r28.w;
        }
        r18.x = saturate(r33.y + -r30.y);
        r20.w = refProbeConstantsCB[r19.w].data[6].y * r18.x;
        r21.w = cmp(0 < r20.w);
        if (r21.w != 0) {
          r21.w = (int)r20.y & 255;
          r22.w = (int)r21.w + -1;
          r22.w = cmp((uint)r22.w < 32);
          r22.w = r2.z ? r22.w : 0;
          if (r22.w != 0) {
            r32.xy = mad((int2)r21.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r21.w, cb2[52].x, r32.x, u2.xxxx
          r21.w = samp0[]..swiz;
            r21.w = (int)r21.w | 32;
            GBufferDiffuseColor[viewID].r32.x = u2.x;
            GBufferDiffuseColor[viewID].r32.y = u2.x;
          }
          r30.z = (int)r30.z + 257;
          r30.x = r18.x * refProbeConstantsCB[r19.w].data[6].y + r30.x;
          r18.x = refProbeConstantsCB[r19.w].data[7].y * r20.w;
          r32.x = refProbeConstantsCB[r19.w].data[7].w;
          r32.yz = refProbeConstantsCB[r19.w].data[8].xy;
          r20.w = dot(r16.xyz, r32.xyz);
          r21.w = dot(r17.yzw, r32.xyz);
          r21.w = -refProbeConstantsCB[r19.w].data[8].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r10.w);
          r21.w = r22.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r20.w = min(131072, abs(r20.w));
          r32.x = refProbeConstantsCB[r19.w].data[8].w;
          r32.yz = refProbeConstantsCB[r19.w].data[9].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[9].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[9].w;
          r32.yz = refProbeConstantsCB[r19.w].data[10].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[10].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[10].w;
          r32.yz = refProbeConstantsCB[r19.w].data[11].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[11].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[11].w;
          r32.yz = refProbeConstantsCB[r19.w].data[12].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[12].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[12].w;
          r32.yz = refProbeConstantsCB[r19.w].data[13].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[13].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r10.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[3].w + r17.y;
          r32.yz = refProbeConstantsCB[r19.w].data[4].xy + r17.zw;
          r32.xyz = r16.xyz * r20.www + r32.xyz;
          r21.w = dot(r32.xyz, r32.xyz);
          r21.w = sqrt(r21.w);
          r20.w = r20.w / r21.w;
          r20.w = r20.w + r20.w;
          r20.w = sqrt(r20.w);
          r20.w = r7.w * 5 + r20.w;
          r20.w = -0.844799995 + r20.w;
          r34.x = refProbeConstantsCB[r19.w].data[0].w;
          r34.y = refProbeConstantsCB[r19.w].data[1].z;
          r34.z = refProbeConstantsCB[r19.w].data[2].y;
          r35.x = dot(r32.xyz, r34.xyz);
          r36.xy = refProbeConstantsCB[r19.w].data[1].xw;
          r36.z = refProbeConstantsCB[r19.w].data[2].z;
          r35.y = dot(r32.xyz, r36.xyz);
          r37.x = refProbeConstantsCB[r19.w].data[1].y;
          r37.yz = refProbeConstantsCB[r19.w].data[2].xw;
          r35.z = dot(r32.xyz, r37.xyz);
          if (9 == 0) r21.w = 0; else if (9+16 < 32) {           r21.w = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(9 + 16)); r21.w = (uint)r21.w >> (32-9);          } else r21.w = (uint)refProbeConstantsCB[r19.w].data[7].z >> 16;
          r35.w = (uint)r21.w;
          r32.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r20.w).xyz;
          r33.xzw = (int3)r32.xyz & int3(-2147483648,-2147483648,-2147483648);
          r33.xzw = cmp((int3)r33.xzw == int3(2139095040,2139095040,2139095040));
          r20.w = (int)r33.z | (int)r33.x;
          r20.w = (int)r33.w | (int)r20.w;
          r32.xyz = r20.www ? float3(1,1,0) : r32.xyz;
          r38.x = dot(r17.yzw, r34.xyz);
          r38.y = dot(r17.yzw, r36.xyz);
          r38.z = dot(r17.yzw, r37.xyz);
          r17.yzw = saturate(r38.xyz * refProbeConstantsCB[r19.w].data[3].xyz + float3(0.5,0.5,0.5));
          r38.xy = refProbeConstantsCB[r19.w].data[4].zw * r17.yz;
          r38.z = refProbeConstantsCB[r19.w].data[5].x * r17.w;
          r17.yzw = refProbeConstantsCB[r19.w].data[5].yzw + r38.xyz;
          r35.x = dot(r11.xyz, r34.xyz);
          r35.y = dot(r11.xyz, r36.xyz);
          r35.z = dot(r11.xyz, r37.xyz);
          r33.xzw = cmp(float3(0,0,0) < r35.xyz);
          r19.z = r33.x ? 0 : 0.5;
          r34.xyz = r19.xyz + r17.yzw;
          r34.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r34.xyz, 0).xyz;
          r36.xyz = r35.xyz * r35.xyz;
          r36.xyz = r36.xyz * r18.xxx;
          r21.z = r33.z ? 0 : 0.5;
          r37.xyz = r21.xyz + r17.yzw;
          r37.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r37.xyz, 0).xyz;
          r37.xyz = r37.xyz * r36.yyy;
          r34.xyz = r34.xyz * r36.xxx + r37.xyz;
          r22.z = r33.w ? 0 : 0.5;
          r17.yzw = r22.xyz + r17.yzw;
          r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
          r17.yzw = r17.yzw * r36.zzz + r34.xyz;
          r33.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
          r34.xyz = (int3)r33.xzw & int3(-2147483648,-2147483648,-2147483648);
          r34.xyz = cmp((int3)r34.xyz == int3(2139095040,2139095040,2139095040));
          r19.z = (int)r34.y | (int)r34.x;
          r19.z = (int)r34.z | (int)r19.z;
          r33.xzw = r19.zzz ? float3(1,1,0) : r33.xzw;
          r34.xyz = r33.xzw * r17.yzw;
          r19.z = dot(r34.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r28.xyz = r17.yzw * r33.xzw + r28.xyz;
          r17.y = r19.z * r12.w;
          r32.xyz = r32.xyz * r18.xxx;
          r17.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r17.z = r12.w * r19.z + r17.z;
          r17.y = r17.y / r17.z;
          r29.xyz = r32.xyz * r17.yyy + r29.xyz;
        } else {
          r20.x = r30.x;
          r30.xz = r20.xy;
        }
      }
      r25.xyz = r28.xyz;
      r26.xyz = r29.xyz;
      r27.xy = r30.xz;
      r15.z = (int)r15.z + 32;
    }
    r7.w = cmp(r24.z >= 1);
    r10.w = (int)r24.w & 0x0000ff00;
    bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r10.w = (((uint)r27.y << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
    r13.z = r7.w ? r10.w : r27.y;
    r7.w = max(1, r27.x);
    r7.w = rcp(r7.w);
    r27.x = saturate(r27.x);
    r15.yzw = r25.xyz * r7.www;
    r31.xyz = r26.xyz * r7.www;
    r10.w = cmp(r27.x < 0.99000001);
    if (r10.w != 0) {
      r13.z = (int)r13.z + 256;
      r10.w = 1 + -r27.x;
      r12.w = sunConstants.globalProbeExposure * r10.w;
      r17.xyz = -globalProbeConstants.data[0].xyz + r5.xyz;
      r18.x = globalProbeConstants.data[0].w * r17.x;
      r18.yz = globalProbeConstants.data[1].xy * r17.yz;
      r17.xyz = saturate(float3(0.5,0.5,0.5) + r18.xyz);
      r18.xy = globalProbeConstants.data[1].zw * r17.xy;
      r18.z = globalProbeConstants.data[2].x * r17.z;
      r17.xyz = globalProbeConstants.data[2].yzw + r18.xyz;
      r18.xyz = cmp(float3(0,0,0) < r11.xyz);
      r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r18.w = 0;
      r19.xyz = r18.wwx + r17.xyz;
      r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r20.xyz = r11.xyz * r11.xyz;
      r20.xyz = r20.xyz * r12.www;
      r21.xyz = r18.wwy + r17.xyz;
      r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
      r21.xyz = r21.xyz * r20.yyy;
      r19.xyz = r19.xyz * r20.xxx + r21.xyz;
      r17.xyz = r18.wwz + r17.xyz;
      r17.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r17.xyz = r17.xyz * r20.zzz + r19.xyz;
      r11.w = 0;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
      r17.xyz = r18.xyz * r17.xyz;
      r11.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.yzw = r25.xyz * r7.www + r17.xyz;
      r16.w = 0;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r9.w).xyz;
      r7.w = sunConstants.globalProbeExposure * r10.w + -r11.w;
      r7.w = r2.y * r7.w + r11.w;
      r31.xyz = r17.xyz * r7.www + r31.xyz;
    }
  } else {
    r15.yzw = float3(0,0,0);
  }
  r7.w = r2.x + r4.z;
  r7.w = log2(abs(r7.w));
  r7.w = r7.w * r1.w;
  r7.w = exp2(r7.w);
  r7.w = r7.w + r4.z;
  r7.w = saturate(-1 + r7.w);
  r17.xyz = r15.yzw * r4.zzz;
  r18.xyz = r3.www ? r17.yzx : 0;
  r19.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r19.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r19.xy, 0).xy;
  r20.xyz = r31.xyz * r7.www;
  r19.xzw = r20.xyz * r19.xxx;
  r20.xyz = r20.xyz * r19.yyy;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r7.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r9.w = r2.x * r2.y + r7.w;
  r2.y = r9.w * r2.y;
  r7.w = r9.w * r7.w;
  if (r2.z != 0) {
    r21.x = 3;
    r21.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r9.w = cmp(0 < r6.w);
  if (r9.w != 0) {
    if (r2.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, l(112), u2.xxxx
    r9.w = samp0[]..swiz;
      r9.w = (int)r9.w | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r9.w = cmp(0 < r8.w);
    if (r9.w != 0) {
      r9.w = sunConstants.specScale * r0.w;
      r9.w = r9.w * r3.z;
      if (sunConstants.sunCookieIndex != 0) {
        r21.xyz = eyeOffset.xyz + r5.xyz;
        r21.w = 1;
        r10.w = dot(sunConstants.sunCookieTransform[0].xyzw, r21.xyzw);
        r11.w = dot(sunConstants.sunCookieTransform[1].xyzw, r21.xyzw);
        r21.x = frac(r10.w);
        r21.y = frac(r11.w);
        r10.w = -1 + (int14)sunConstants.sunCookieIndex;
        r21.z = (uint)r10.w;
        r21.xyz = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
        r21.xyz = float3(-1,-1,-1) + r21.xyz;
        r21.xyz = sunConstants.sunCookieIntensity * r21.xyz + float3(1,1,1);
        r21.xyz = sunConstants.color.xyz * r21.xyz;
      } else {
        r21.xyz = sunConstants.color.xyz;
      }
      r10.w = viewmodelSunShadowRaw >> 16;
      r11.w = cmp(0 < (uint)r10.w);
      r11.w = r1.y ? r11.w : 0;
      r11.w = r1.z ? r11.w : 0;
      r11.w = r3.x ? r11.w : 0;
      if (r11.w != 0) {
        r10.w = (int)r10.w + numLights;
        r10.w = mad((int)r10.w, 15, -15);
        r11.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r12.w = cmp(r2.w < 0);
        r12.w = r3.w ? r12.w : 0;
        r11.w = r12.w ? -r11.w : r11.w;
        r22.xyz = r11.xyz * r11.www + r5.xyz;
        r23.xyz = lightConstantsCB[r10.w].data[4].yzw;
        r23.w = lightConstantsCB[r10.w].data[5].x;
        r22.w = 1;
        r23.x = dot(r23.xyzw, r22.xyzw);
        r24.xyz = lightConstantsCB[r10.w].data[5].yzw;
        r24.w = lightConstantsCB[r10.w].data[6].x;
        r23.y = dot(r24.xyzw, r22.xyzw);
        r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r24.x = lightConstantsCB[r10.w].data[9].w + r23.x;
        r24.y = lightConstantsCB[r10.w].data[10].x + r23.y;
        r23.xy = lightConstantsCB[r10.w].data[9].yz * r24.xy;
        r23.zw = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
        r24.xy = float2(1,1) + -r23.zw;
        r24.xy = cmp(r23.xy >= r24.xy);
        r23.zw = cmp(r23.zw >= r23.xy);
        r23.zw = (int2)r23.zw | (int2)r24.xy;
        r11.w = (int)r23.w | (int)r23.z;
        if (r11.w == 0) {
          r24.xyz = lightConstantsCB[r10.w].data[6].yzw;
          r24.w = lightConstantsCB[r10.w].data[7].x;
          r11.w = dot(r24.xyzw, r22.xyzw);
          r23.xy = saturate(r23.xy);
          r22.x = r23.x * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
          r22.y = r23.y * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
          r11.w = lightConstantsCB[r10.w].data[10].y + r11.w;
          r11.w = r11.w / lightConstantsCB[r10.w].data[10].z;
          r11.w = max(6.10351563e-05, r11.w);
          r12.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r23.x = -r13.x;
            r24.z = (uint)r12.w;
            r23.y = r14.x;
            r23.z = r13.x;
            r13.w = 0;
            r14.w = 0;
            while (true) {
              r16.w = cmp((int)r14.w >= 8);
              if (r16.w != 0) break;
              r25.x = dot(icb[r14.w+4].yx, r23.xy);
              r25.y = dot(icb[r14.w+4].yx, r23.yz);
              r24.xy = r25.xy * lightConstantsCB[r10.w].data[3].yy + r22.xy;
              r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r11.w).x;
              r13.w = r16.w * 0.125 + r13.w;
              r14.w = (int)r14.w + 1;
            }
          } else {
            r22.z = (uint)r12.w;
            r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r11.w).x;
          }
          r10.w = r13.w * r13.w;
          r10.w = r10.w * r13.w;
        } else {
          r10.w = 1;
        }
        r8.w = r10.w * r8.w;
      } else {
        r10.w = viewmodelSunShadowRaw & 0x0000ffff;
        r11.w = cmp(0 < (uint)r10.w);
        r12.w = ~(int)r3.y;
        r11.w = r11.w ? r12.w : 0;
        if (r11.w != 0) {
          r10.w = (int)r10.w + numLights;
          r10.w = mad((int)r10.w, 15, -15);
          r11.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r12.w = cmp(r2.w < 0);
          r12.w = r3.w ? r12.w : 0;
          r11.w = r12.w ? -r11.w : r11.w;
          r22.xyz = r11.xyz * r11.www + r5.xyz;
          r23.xyz = lightConstantsCB[r10.w].data[4].yzw;
          r23.w = lightConstantsCB[r10.w].data[5].x;
          r22.w = 1;
          r23.x = dot(r23.xyzw, r22.xyzw);
          r24.xyz = lightConstantsCB[r10.w].data[5].yzw;
          r24.w = lightConstantsCB[r10.w].data[6].x;
          r23.y = dot(r24.xyzw, r22.xyzw);
          r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r24.x = lightConstantsCB[r10.w].data[9].w + r23.x;
          r24.y = lightConstantsCB[r10.w].data[10].x + r23.y;
          r23.xy = lightConstantsCB[r10.w].data[9].yz * r24.xy;
          r23.zw = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
          r24.xy = float2(1,1) + -r23.zw;
          r24.xy = cmp(r23.xy >= r24.xy);
          r23.zw = cmp(r23.zw >= r23.xy);
          r23.zw = (int2)r23.zw | (int2)r24.xy;
          r11.w = (int)r23.w | (int)r23.z;
          if (r11.w == 0) {
            r24.xyz = lightConstantsCB[r10.w].data[6].yzw;
            r24.w = lightConstantsCB[r10.w].data[7].x;
            r11.w = dot(r24.xyzw, r22.xyzw);
            r23.xy = saturate(r23.xy);
            r22.x = r23.x * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
            r22.y = r23.y * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
            r11.w = lightConstantsCB[r10.w].data[10].y + r11.w;
            r11.w = r11.w / lightConstantsCB[r10.w].data[10].z;
            r11.w = max(6.10351563e-05, r11.w);
            r12.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r23.x = -r13.x;
              r24.z = (uint)r12.w;
              r23.y = r14.x;
              r23.z = r13.x;
              r13.w = 0;
              r14.w = 0;
              while (true) {
                r16.w = cmp((int)r14.w >= 8);
                if (r16.w != 0) break;
                r25.x = dot(icb[r14.w+4].yx, r23.xy);
                r25.y = dot(icb[r14.w+4].yx, r23.yz);
                r24.xy = r25.xy * lightConstantsCB[r10.w].data[3].yy + r22.xy;
                r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r11.w).x;
                r13.w = r16.w * 0.125 + r13.w;
                r14.w = (int)r14.w + 1;
              }
            } else {
              r22.z = (uint)r12.w;
              r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r11.w).x;
            }
            r10.w = r13.w * r13.w;
            r10.w = r10.w * r13.w;
          } else {
            r10.w = 1;
          }
          r8.w = r10.w * r8.w;
        }
      }
      r10.w = -r2.x * 0.5 + 1;
      r10.w = -r6.w * r10.w + 1;
      r10.w = r10.w * r10.w;
      r10.w = -r10.w * 0.620000005 + 0.620000005;
      r10.w = r10.w + -r6.w;
      r6.w = r1.w * r10.w + r6.w;
      r6.w = r6.w * r8.w;
      r22.xyz = r6.www * r21.xyz;
      r2.w = cmp(0 < r2.w);
      r22.xyz = r15.yzw * r4.zzz + r22.xyz;
      r15.yzw = -r5.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r15.yzw, r15.yzw);
      r0.z = rsqrt(r0.z);
      r15.yzw = r15.yzw * r0.zzz;
      r0.z = dot(r15.yzw, r12.xyz);
      r4.z = dot(r11.xyz, r15.yzw);
      r10.w = abs(r4.z) * r0.w + -abs(r4.z);
      r4.z = abs(r4.z) * r10.w + 1;
      r3.z = r3.z * r2.y + r7.w;
      r4.z = r4.z * r4.z;
      r3.z = r4.z * r3.z;
      r3.z = rcp(r3.z);
      r3.z = r3.z * r9.w;
      r3.z = r8.w * r3.z;
      r3.z = 0.25 * r3.z;
      r23.yzw = r3.zzz * r21.xyz + r20.xyz;
      r0.z = saturate(1 + -r0.z);
      r4.z = r0.z * r0.z;
      r4.z = r4.z * r4.z;
      r0.z = r4.z * r0.z;
      r0.z = r3.z * r0.z;
      r15.yzw = r0.zzz * r21.xyz + r19.xzw;
      r21.xyz = r6.www * r21.xyz + r18.zxy;
      r21.xyz = r3.www ? r21.yzx : 0;
      r22.w = r18.z;
      r17.w = r21.z;
      r17.xyzw = r2.wwww ? r22.xyzw : r17.xyzw;
      r18.zw = r15.yz;
      r21.zw = r19.xz;
      r21.xyzw = r2.wwww ? r18.xyzw : r21.xyzw;
      r23.x = r15.w;
      r20.w = r19.w;
      r20.xyzw = r2.wwww ? r23.yzwx : r20.xyzw;
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.z, cb2[52].x, l(112), u2.xxxx
      r0.z = samp0[]..swiz;
        r0.z = (int)r0.z | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r18.z = r17.w;
      r18.xy = r21.xy;
      r19.xz = r21.zw;
      r19.w = r20.w;
      r0.z = 0x00010101;
    } else {
      r0.z = 257;
    }
  } else {
    r0.z = 1;
  }
  r2.w = ~(int)r3.y;
  r21.x = -r13.x;
  r2.x = -r2.x * 0.5 + 1;
  r22.x = 2;
  r5.w = 1;
  r23.x = 2;
  r24.z = 1;
  r25.w = 1;
  r26.w = 1;
  r27.w = 1;
  r21.z = r13.x;
  r28.w = 1;
  r21.yw = r14.xx;
  r13.y = r21.w;
  r14.y = r21.x;
  r29.x = r14.x;
  r29.y = r21.x;
  r29.z = r13.x;
  r14.z = r13.x;
  r30.w = 1;
  r31.x = r14.x;
  r31.y = r21.x;
  r31.z = r13.x;
  r32.x = r14.x;
  r32.y = r21.x;
  r32.z = r13.x;
  r15.yzw = r17.xyz;
  r33.xyz = r18.zxy;
  r34.xyz = r19.xzw;
  r35.xyz = r20.xyz;
  r3.y = enableDitheredShadow;
  r3.z = r0.z;
  r4.z = 0;
  while (true) {
    r6.w = cmp((uint)r4.z >= numLights);
    if (r6.w != 0) break;
    r6.w = (uint)r4.z >> 5;
  // Known bad code for instruction (needs manual fix):
    ld_structured r6.w, r6.w, l(0), g6.xxxx
  r6.w = samp0[]..swiz;
    r36.xyz = r15.yzw;
    r37.xyz = r33.xyz;
    r38.xyz = r34.xyz;
    r39.xyz = r35.xyz;
    r8.w = r3.y;
    r9.w = r3.z;
    r10.w = r6.w;
    while (true) {
      if (r10.w == 0) break;
      r11.w = firstbitlow((uint)r10.w);
      r12.w = 1 << (int)r11.w;
      r12.w = ~(int)r12.w;
      r10.w = (int)r10.w & (int)r12.w;
      r11.w = (int)r4.z + (int)r11.w;
      r11.w = (int)r11.w * 15;
      if (3 == 0) r12.w = 0; else if (3+24 < 32) {       r12.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(3 + 24)); r12.w = (uint)r12.w >> (32-3);      } else r12.w = (uint)lightConstantsCB[r11.w].data[1].w >> 24;
      r13.w = cmp((int)r12.w == 2);
      if (r13.w != 0) {
        if (3 == 0) r13.w = 0; else if (3+27 < 32) {         r13.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);        } else r13.w = (uint)lightConstantsCB[r11.w].data[1].w >> 27;
        r14.w = (int)r9.w & 255;
        r16.w = cmp((uint)r14.w < 32);
        r16.w = r2.z ? r16.w : 0;
        if (r16.w != 0) {
          r14.w = mad((int)r14.w, 24, 112);
          r22.yzw = lightConstantsCB[r11.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r14.w = u2.xyzw;
        }
        r14.w = (int)r9.w + 1;
        r40.xy = lightConstantsCB[r11.w].data[3].zw + -r5.xy;
        r40.z = lightConstantsCB[r11.w].data[4].x + -r5.z;
        r16.w = dot(r40.xyz, r40.xyz);
        r16.w = rsqrt(r16.w);
        r22.yzw = r40.xyz * r16.www;
        r17.w = lightConstantsCB[r11.w].data[1].z * r0.w;
        r17.w = 0.25 * r17.w;
        r18.w = dot(r11.xyz, r22.yzw);
        r19.y = saturate(r18.w);
        r20.w = r3.w ? abs(r18.w) : r19.y;
        r22.y = cmp(0 < r20.w);
        if (r22.y != 0) {
          r41.xyz = lightConstantsCB[r11.w].data[7].yzw;
          r41.w = lightConstantsCB[r11.w].data[8].x;
          r22.y = dot(r41.xyzw, r5.xyzw);
          r22.z = cmp(r22.y < 1);
          if (r22.z != 0) {
            r42.xyz = float3(1,1,1);
            r22.z = 0;
          } else {
            r43.xyz = lightConstantsCB[r11.w].data[0].xyz + -r5.xyz;
            r22.w = lightConstantsCB[r11.w].data[3].x * lightConstantsCB[r11.w].data[3].x;
            r24.w = dot(r43.xyz, r43.xyz);
            r22.w = r22.w / r24.w;
            r22.w = min(1, r22.w);
            r43.xy = saturate(r22.yy * lightConstantsCB[r11.w].data[2].xz + lightConstantsCB[r11.w].data[2].yw);
            r43.zw = r43.xy * r43.xy;
            r43.xy = r43.xy * float2(-2,-2) + float2(3,3);
            r43.xy = r43.zw * r43.xy;
            r22.w = r43.x * r22.w;
            r22.w = r22.w * r43.y;
            r43.xyz = lightConstantsCB[r11.w].data[4].yzw;
            r43.w = lightConstantsCB[r11.w].data[5].x;
            r43.x = dot(r43.xyzw, r5.xyzw);
            r44.xyz = lightConstantsCB[r11.w].data[5].yzw;
            r44.w = lightConstantsCB[r11.w].data[6].x;
            r43.y = dot(r44.xyzw, r5.xyzw);
            r24.xy = r43.xy / r22.yy;
            r22.y = cmp(lightConstantsCB[r11.w].data[10].w < 0.00048828125);
            if (r22.y != 0) {
              r43.xy = saturate(abs(r24.xy) * lightConstantsCB[r11.w].data[12].xy + lightConstantsCB[r11.w].data[12].zw);
              r43.zw = r43.xy * r43.xy;
              r43.xy = r43.xy * float2(-2,-2) + float2(3,3);
              r43.xy = r43.zw * r43.xy;
              r22.y = r43.x * r43.y;
            } else {
              r43.xyzw = saturate(lightConstantsCB[r11.w].data[11].xyzw * abs(r24.yyxx));
              r43.xyzw = log2(r43.xyzw);
              r43.xyzw = lightConstantsCB[r11.w].data[12].zzzz * r43.xyzw;
              r43.xyzw = exp2(r43.xyzw);
              r43.xy = r43.xy + r43.zw;
              r43.xy = log2(r43.xy);
              r43.xy = lightConstantsCB[r11.w].data[12].ww * r43.xy;
              r43.xy = exp2(r43.xy);
              r24.w = lightConstantsCB[r11.w].data[12].x * r43.x;
              r29.w = lightConstantsCB[r11.w].data[12].y * r43.y + -1;
              r24.w = lightConstantsCB[r11.w].data[12].y * r43.y + -r24.w;
              r24.w = saturate(r29.w / r24.w);
              r29.w = r24.w * r24.w;
              r24.w = r24.w * -2 + 3;
              r22.y = r29.w * r24.w;
            }
            r22.z = r22.w * r22.y;
            r22.y = 255 & (int)lightConstantsCB[r11.w].data[14].w;
            if (r22.y != 0) {
              r22.w = dot(lightConstantsCB[r11.w].data[13].xyz, r24.xyz);
              r43.x = lightConstantsCB[r11.w].data[13].w;
              r43.yz = lightConstantsCB[r11.w].data[14].xy;
              r24.x = dot(r43.xyz, r24.xyz);
              r43.x = frac(r22.w);
              r43.y = frac(r24.x);
              r22.y = (int)r22.y + -1;
              r43.z = (uint)r22.y;
              r42.xyz = gCookieArray.SampleLevel(samplerLinear_s, r43.xyz, 0).xyz;
            } else {
              r42.xyz = float3(1,1,1);
            }
          }
          r43.x = lightConstantsCB[r11.w].data[0].w;
          r43.yz = lightConstantsCB[r11.w].data[1].xy;
          r24.xyw = r43.xyz * r42.xyz;
          r22.y = cmp(0 < r22.z);
          if (r22.y != 0) {
            r22.y = (int)r14.w & 255;
            r22.w = (int)r22.y + -1;
            r22.w = cmp((uint)r22.w < 32);
            r22.w = r2.z ? r22.w : 0;
            if (r22.w != 0) {
              r22.yw = mad((int2)r22.yy, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r29.w, cb2[52].x, r22.y, u2.xxxx
            r29.w = samp0[]..swiz;
              r29.w = (int)r29.w | 4;
              GBufferDiffuseColor[viewID].r22.y = u2.x;
              GBufferDiffuseColor[viewID].r22.w = u2.x;
            }
            r22.y = (int)r9.w + 257;
            r13.w = cmp((int)r13.w != 1);
            if (r13.w != 0) {
              r13.w = abs(r18.w) * -0.200000003 + 0.400000006;
              r22.w = cmp(r18.w < 0);
              r22.w = r3.w ? r22.w : 0;
              r13.w = r22.w ? -r13.w : r13.w;
              r25.xyz = r11.xyz * r13.www + r5.xyz;
              r42.xyz = lightConstantsCB[r11.w].data[6].yzw;
              r42.w = lightConstantsCB[r11.w].data[7].x;
              r13.w = dot(r42.xyzw, r25.xyzw);
              r22.w = dot(r41.xyzw, r25.xyzw);
              r29.w = cmp(r22.w >= r13.w);
              if (r29.w != 0) {
                r41.xyz = lightConstantsCB[r11.w].data[4].yzw;
                r41.w = lightConstantsCB[r11.w].data[5].x;
                r41.x = dot(r41.xyzw, r25.xyzw);
                r42.xyz = lightConstantsCB[r11.w].data[5].yzw;
                r42.w = lightConstantsCB[r11.w].data[6].x;
                r41.y = dot(r42.xyzw, r25.xyzw);
                r25.xy = r41.xy / r22.ww;
                r25.xy = saturate(r25.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r41.x = r25.x * lightConstantsCB[r11.w].data[8].y + lightConstantsCB[r11.w].data[8].z;
                r41.y = r25.y * lightConstantsCB[r11.w].data[8].w + lightConstantsCB[r11.w].data[9].x;
                r13.w = r13.w / r22.w;
                r13.w = max(6.10351563e-05, r13.w);
                r22.w = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
                if (r8.w != 0) {
                  r25.z = (uint)r22.w;
                  r29.w = 0;
                  r31.w = 0;
                  while (true) {
                    r32.w = cmp((int)r31.w >= 8);
                    if (r32.w != 0) break;
                    r42.x = dot(icb[r31.w+4].yx, r21.xy);
                    r42.y = dot(icb[r31.w+4].yx, r21.yz);
                    r25.xy = r42.xy * lightConstantsCB[r11.w].data[3].yy + r41.xy;
                    r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r13.w).x;
                    r29.w = r25.x * 0.125 + r29.w;
                    r31.w = (int)r31.w + 1;
                  }
                } else {
                  r41.z = (uint)r22.w;
                  r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r13.w).x;
                }
                r13.w = r29.w * r29.w;
                r13.w = r13.w * r29.w;
              } else {
                r13.w = 1;
              }
            } else {
              r13.w = 1;
            }
            r13.w = r22.z * r13.w;
            r22.z = cmp(0 < r13.w);
            if (r22.z != 0) {
              if (4 == 0) r22.z = 0; else if (4+16 < 32) {               r22.z = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 16)); r22.z = (uint)r22.z >> (32-4);              } else r22.z = (uint)lightConstantsCB[r11.w].data[1].w >> 16;
              r22.w = cmp(0 < (uint)r22.z);
              r22.w = r1.y ? r22.w : 0;
              r22.w = r1.z ? r22.w : 0;
              r22.w = r3.x ? r22.w : 0;
              if (r22.w != 0) {
                r22.z = (int)r22.z + numLights;
                r22.z = mad((int)r22.z, 15, -15);
                r22.w = abs(r18.w) * -0.200000003 + 0.400000006;
                r25.x = cmp(r18.w < 0);
                r25.x = r3.w ? r25.x : 0;
                r22.w = r25.x ? -r22.w : r22.w;
                r26.xyz = r11.xyz * r22.www + r5.xyz;
                r41.xyz = lightConstantsCB[r22.z].data[6].yzw;
                r41.w = lightConstantsCB[r22.z].data[7].x;
                r22.w = dot(r41.xyzw, r26.xyzw);
                r41.xyz = lightConstantsCB[r22.z].data[7].yzw;
                r41.w = lightConstantsCB[r22.z].data[8].x;
                r25.x = dot(r41.xyzw, r26.xyzw);
                r25.y = cmp(r25.x < r22.w);
                if (r25.y == 0) {
                  r41.xyz = lightConstantsCB[r22.z].data[4].yzw;
                  r41.w = lightConstantsCB[r22.z].data[5].x;
                  r41.x = dot(r41.xyzw, r26.xyzw);
                  r42.xyz = lightConstantsCB[r22.z].data[5].yzw;
                  r42.w = lightConstantsCB[r22.z].data[6].x;
                  r41.y = dot(r42.xyzw, r26.xyzw);
                  r26.xy = r41.xy / r25.xx;
                  r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r41.x = lightConstantsCB[r22.z].data[9].w + r26.x;
                  r41.y = lightConstantsCB[r22.z].data[10].x + r26.y;
                  r26.xy = lightConstantsCB[r22.z].data[9].yz * r41.xy;
                  r41.xy = lightConstantsCB[r22.z].data[3].yy / lightConstantsCB[r22.z].data[8].yw;
                  r41.zw = float2(1,1) + -r41.xy;
                  r41.zw = cmp(r26.xy >= r41.zw);
                  r41.xy = cmp(r41.xy >= r26.xy);
                  r41.xy = (int2)r41.xy | (int2)r41.zw;
                  r25.z = (int)r41.y | (int)r41.x;
                  if (r25.z == 0) {
                    r26.xy = saturate(r26.xy);
                    r41.x = r26.x * lightConstantsCB[r22.z].data[8].y + lightConstantsCB[r22.z].data[8].z;
                    r41.y = r26.y * lightConstantsCB[r22.z].data[8].w + lightConstantsCB[r22.z].data[9].x;
                    r26.x = lightConstantsCB[r22.z].data[10].z * r25.x;
                    r22.w = lightConstantsCB[r22.z].data[10].y * r25.x + r22.w;
                    r22.w = r22.w / r26.x;
                  }
                } else {
                  r25.z = -1;
                }
                r25.x = (int)r25.y | (int)r25.z;
                if (r25.x == 0) {
                  r22.w = max(6.10351563e-05, r22.w);
                  r25.x = 0x0000ffff & (int)lightConstantsCB[r22.z].data[1].w;
                  if (r8.w != 0) {
                    r26.z = (uint)r25.x;
                    r25.yz = float2(0,0);
                    while (true) {
                      r31.w = cmp((int)r25.z >= 8);
                      if (r31.w != 0) break;
                      r42.x = dot(icb[r25.z+4].yx, r21.xw);
                      r42.y = dot(icb[r25.z+4].xy, r13.xy);
                      r26.xy = r42.xy * lightConstantsCB[r22.z].data[3].yy + r41.xy;
                      r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r22.w).x;
                      r25.y = r26.x * 0.125 + r25.y;
                      r25.z = (int)r25.z + 1;
                    }
                  } else {
                    r41.z = (uint)r25.x;
                    r25.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r22.w).x;
                  }
                  r22.z = r25.y * r25.y;
                  r22.z = r22.z * r25.y;
                } else {
                  r22.z = 1;
                }
                r13.w = r22.z * r13.w;
              } else {
                if (4 == 0) r22.z = 0; else if (4+20 < 32) {                 r22.z = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 20)); r22.z = (uint)r22.z >> (32-4);                } else r22.z = (uint)lightConstantsCB[r11.w].data[1].w >> 20;
                r22.w = cmp(0 < (uint)r22.z);
                r22.w = r2.w ? r22.w : 0;
                if (r22.w != 0) {
                  r22.z = (int)r22.z + numLights;
                  r22.z = mad((int)r22.z, 15, -15);
                  r22.w = abs(r18.w) * -0.200000003 + 0.400000006;
                  r25.x = cmp(r18.w < 0);
                  r25.x = r3.w ? r25.x : 0;
                  r22.w = r25.x ? -r22.w : r22.w;
                  r27.xyz = r11.xyz * r22.www + r5.xyz;
                  r41.xyz = lightConstantsCB[r22.z].data[6].yzw;
                  r41.w = lightConstantsCB[r22.z].data[7].x;
                  r22.w = dot(r41.xyzw, r27.xyzw);
                  r41.xyz = lightConstantsCB[r22.z].data[7].yzw;
                  r41.w = lightConstantsCB[r22.z].data[8].x;
                  r25.x = dot(r41.xyzw, r27.xyzw);
                  r25.z = cmp(r25.x < r22.w);
                  if (r25.z == 0) {
                    r41.xyz = lightConstantsCB[r22.z].data[4].yzw;
                    r41.w = lightConstantsCB[r22.z].data[5].x;
                    r26.x = dot(r41.xyzw, r27.xyzw);
                    r41.xyz = lightConstantsCB[r22.z].data[5].yzw;
                    r41.w = lightConstantsCB[r22.z].data[6].x;
                    r26.y = dot(r41.xyzw, r27.xyzw);
                    r26.xy = r26.xy / r25.xx;
                    r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r27.x = lightConstantsCB[r22.z].data[9].w + r26.x;
                    r27.y = lightConstantsCB[r22.z].data[10].x + r26.y;
                    r26.xy = lightConstantsCB[r22.z].data[9].yz * r27.xy;
                    r27.xy = lightConstantsCB[r22.z].data[3].yy / lightConstantsCB[r22.z].data[8].yw;
                    r41.xy = float2(1,1) + -r27.xy;
                    r41.xy = cmp(r26.xy >= r41.xy);
                    r27.xy = cmp(r27.xy >= r26.xy);
                    r27.xy = (int2)r27.xy | (int2)r41.xy;
                    r26.z = (int)r27.y | (int)r27.x;
                    if (r26.z == 0) {
                      r26.xy = saturate(r26.xy);
                      r27.x = r26.x * lightConstantsCB[r22.z].data[8].y + lightConstantsCB[r22.z].data[8].z;
                      r27.y = r26.y * lightConstantsCB[r22.z].data[8].w + lightConstantsCB[r22.z].data[9].x;
                      r26.x = lightConstantsCB[r22.z].data[10].z * r25.x;
                      r22.w = lightConstantsCB[r22.z].data[10].y * r25.x + r22.w;
                      r22.w = r22.w / r26.x;
                    }
                  } else {
                    r26.z = -1;
                  }
                  r25.x = (int)r25.z | (int)r26.z;
                  if (r25.x == 0) {
                    r22.w = max(6.10351563e-05, r22.w);
                    r25.x = 0x0000ffff & (int)lightConstantsCB[r22.z].data[1].w;
                    if (r8.w != 0) {
                      r26.z = (uint)r25.x;
                      r25.z = 0;
                      r31.w = 0;
                      while (true) {
                        r32.w = cmp((int)r31.w >= 8);
                        if (r32.w != 0) break;
                        r41.x = dot(icb[r31.w+4].xy, r29.xy);
                        r41.y = dot(icb[r31.w+4].yx, r29.xz);
                        r26.xy = r41.xy * lightConstantsCB[r22.z].data[3].yy + r27.xy;
                        r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r22.w).x;
                        r25.z = r26.x * 0.125 + r25.z;
                        r31.w = (int)r31.w + 1;
                      }
                    } else {
                      r27.z = (uint)r25.x;
                      r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r22.w).x;
                    }
                    r22.z = r25.z * r25.z;
                    r22.z = r22.z * r25.z;
                  } else {
                    r22.z = 1;
                  }
                  r13.w = r22.z * r13.w;
                }
              }
              r22.z = -r20.w * r2.x + 1;
              r22.z = r22.z * r22.z;
              r22.z = -r22.z * 0.620000005 + 0.620000005;
              r22.z = r22.z + -r20.w;
              r20.w = r1.w * r22.z + r20.w;
              r20.w = r20.w * r13.w;
              r18.w = cmp(0 < r18.w);
              r26.xyz = r20.www * r24.xyw + r36.xyz;
              r27.xyz = r40.xyz * r16.www + r12.xyz;
              r16.w = dot(r27.xyz, r27.xyz);
              r16.w = rsqrt(r16.w);
              r27.xyz = r27.xyz * r16.www;
              r16.w = dot(r27.xyz, r12.xyz);
              r22.z = dot(r11.xyz, r27.xyz);
              r22.w = abs(r22.z) * r0.w + -abs(r22.z);
              r22.z = abs(r22.z) * r22.w + 1;
              r22.w = r19.y * r2.y + r7.w;
              r22.z = r22.z * r22.z;
              r22.z = r22.z * r22.w;
              r22.z = rcp(r22.z);
              r17.w = r19.y * r17.w;
              r17.w = r22.z * r17.w;
              r17.w = r17.w * r13.w;
              r27.xyz = r17.www * r24.xyw + r39.xyz;
              r16.w = saturate(1 + -r16.w);
              r19.y = r16.w * r16.w;
              r19.y = r19.y * r19.y;
              r16.w = r19.y * r16.w;
              r16.w = r17.w * r16.w;
              r40.xyz = r16.www * r24.xyw + r38.xyz;
              r24.xyw = r20.www * r24.xyw + r37.xyz;
              r24.xyw = r3.www ? r24.xyw : r37.xyz;
              r36.xyz = r18.www ? r26.xyz : r36.xyz;
              r37.xyz = r18.www ? r37.xyz : r24.xyw;
              r38.xyz = r18.www ? r40.xyz : r38.xyz;
              r39.xyz = r18.www ? r27.xyz : r39.xyz;
              r16.w = (int)r22.y & 255;
              r17.w = (int)r16.w + -1;
              r17.w = cmp((uint)r17.w < 32);
              r17.w = r2.z ? r17.w : 0;
              if (r17.w != 0) {
                r22.zw = mad((int2)r16.ww, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r16.w, cb2[52].x, r22.z, u2.xxxx
              r16.w = samp0[]..swiz;
                r16.w = (int)r16.w | 8;
                GBufferDiffuseColor[viewID].r22.z = u2.x;
                GBufferDiffuseColor[viewID].r22.w = u2.x;
              }
              r9.w = (int)r9.w + 0x00010101;
            } else {
              r9.w = r22.y;
            }
          } else {
            r9.w = r14.w;
          }
        } else {
          r9.w = r14.w;
        }
      } else {
        r12.w = cmp((int)r12.w == 4);
        if (r12.w != 0) {
          if (3 == 0) r12.w = 0; else if (3+27 < 32) {           r12.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)lightConstantsCB[r11.w].data[1].w >> 27;
          r13.w = (int)r9.w & 255;
          r14.w = cmp((uint)r13.w < 32);
          r14.w = r2.z ? r14.w : 0;
          if (r14.w != 0) {
            r13.w = mad((int)r13.w, 24, 112);
            r23.yzw = lightConstantsCB[r11.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r13.w = u2.xyzw;
          }
          r13.w = (int)r9.w + 1;
          r14.w = lightConstantsCB[r11.w].data[1].z * r0.w;
          r14.w = 0.25 * r14.w;
          r16.w = cmp(0 < lightConstantsCB[r11.w].data[6].y);
          r26.xy = lightConstantsCB[r11.w].data[5].zw;
          r26.z = lightConstantsCB[r11.w].data[6].x;
          r22.yzw = -r26.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r11.w].data[0].xyz;
          r23.yzw = r22.yzw + -r5.xyz;
          r17.w = dot(r26.xyz, r16.xyz);
          r18.w = dot(r26.xyz, r23.yzw);
          r19.y = dot(r16.xyz, r23.yzw);
          r20.w = -r17.w * r17.w + lightConstantsCB[r11.w].data[6].y;
          r17.w = r17.w * r19.y + -r18.w;
          r18.w = saturate(-r18.w / lightConstantsCB[r11.w].data[6].y);
          r17.w = saturate(r17.w / r20.w);
          r19.y = r20.w / lightConstantsCB[r11.w].data[6].y;
          r19.y = 10 * r19.y;
          r19.y = min(1, r19.y);
          r17.w = r17.w + -r18.w;
          r17.w = r19.y * r17.w + r18.w;
          r23.yzw = r17.www * r26.xyz + r22.yzw;
          r22.yzw = r18.www * r26.xyz + r22.yzw;
          r22.yzw = r16.www ? r22.yzw : lightConstantsCB[r11.w].data[0].xyz;
          r23.yzw = r16.www ? r23.yzw : lightConstantsCB[r11.w].data[0].xyz;
          r23.yzw = r23.yzw + -r5.xyz;
          r22.yzw = r22.yzw + -r5.xyz;
          r16.w = dot(r23.yzw, r23.yzw);
          r16.w = rsqrt(r16.w);
          r24.xyw = r23.yzw * r16.www;
          r17.w = dot(r22.yzw, r22.yzw);
          r18.w = rsqrt(r17.w);
          r22.yzw = r22.yzw * r18.www;
          r18.w = dot(r11.xyz, r22.yzw);
          r19.y = saturate(r18.w);
          r19.y = r3.w ? abs(r18.w) : r19.y;
          r20.w = cmp(0 < r19.y);
          if (r20.w != 0) {
            r20.w = sqrt(r17.w);
            r22.y = lightConstantsCB[r11.w].data[3].x * lightConstantsCB[r11.w].data[3].x;
            r17.w = r22.y / r17.w;
            r17.w = min(1, r17.w);
            r22.yz = saturate(r20.ww * lightConstantsCB[r11.w].data[2].xz + lightConstantsCB[r11.w].data[2].yw);
            r26.xy = r22.yz * r22.yz;
            r22.yz = r22.yz * float2(-2,-2) + float2(3,3);
            r22.yz = r26.xy * r22.yz;
            r17.w = r22.y * r17.w;
            r17.w = r17.w * r22.z;
            r20.w = cmp(0 < r17.w);
            if (r20.w != 0) {
              r20.w = (int)r13.w & 255;
              r22.y = (int)r20.w + -1;
              r22.y = cmp((uint)r22.y < 32);
              r22.y = r2.z ? r22.y : 0;
              if (r22.y != 0) {
                r22.yz = mad((int2)r20.ww, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r22.y, u2.xxxx
              r20.w = samp0[]..swiz;
                r20.w = (int)r20.w | 4;
                GBufferDiffuseColor[viewID].r22.y = u2.x;
                GBufferDiffuseColor[viewID].r22.z = u2.x;
              }
              r20.w = (int)r9.w + 257;
              r12.w = cmp((int)r12.w != 1);
              if (r12.w != 0) {
                r12.w = abs(r18.w) * -0.200000003 + 0.400000006;
                r22.y = cmp(r18.w < 0);
                r22.y = r3.w ? r22.y : 0;
                r12.w = r22.y ? -r12.w : r12.w;
                r22.yzw = r11.xyz * r12.www + r5.xyz;
                r22.yzw = -lightConstantsCB[r11.w].data[4].yzw + r22.yzw;
                r12.w = max(abs(r22.z), abs(r22.w));
                r12.w = max(abs(r22.y), r12.w);
                r12.w = lightConstantsCB[r11.w].data[5].x / r12.w;
                r12.w = lightConstantsCB[r11.w].data[5].y + r12.w;
                r25.x = dot(r22.yzw, r22.yzw);
                r25.x = rsqrt(r25.x);
                r12.w = max(6.10351563e-05, r12.w);
                r26.x = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
                r40.w = (uint)r26.x;
                r26.xy = float2(0,0);
                while (true) {
                  r26.z = cmp((int)r26.y >= 8);
                  if (r26.z != 0) break;
                  r27.y = dot(icb[r26.y+4].xy, r14.xy);
                  r27.z = dot(icb[r26.y+4].yx, r14.xz);
                  r41.yz = lightConstantsCB[r11.w].data[3].yy * r27.yz;
                  r41.x = r41.y * r15.x;
                  r41.w = r41.y * r1.x;
                  r40.xyz = r22.yzw * r25.xxx + r41.xzw;
                  r26.z = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyzw, r12.w).x;
                  r26.x = r26.z * 0.125 + r26.x;
                  r26.y = (int)r26.y + 1;
                }
              } else {
                r26.x = 1;
              }
              r12.w = r26.x * r17.w;
              r17.w = cmp(0 < r12.w);
              if (r17.w != 0) {
                if (4 == 0) r17.w = 0; else if (4+16 < 32) {                 r17.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 16)); r17.w = (uint)r17.w >> (32-4);                } else r17.w = (uint)lightConstantsCB[r11.w].data[1].w >> 16;
                r22.y = cmp(0 < (uint)r17.w);
                r22.y = r1.y ? r22.y : 0;
                r22.y = r1.z ? r22.y : 0;
                r22.y = r3.x ? r22.y : 0;
                if (r22.y != 0) {
                  r17.w = (int)r17.w + numLights;
                  r17.w = mad((int)r17.w, 15, -15);
                  r22.y = abs(r18.w) * -0.200000003 + 0.400000006;
                  r22.z = cmp(r18.w < 0);
                  r22.z = r3.w ? r22.z : 0;
                  r22.y = r22.z ? -r22.y : r22.y;
                  r28.xyz = r11.xyz * r22.yyy + r5.xyz;
                  r40.xyz = lightConstantsCB[r17.w].data[6].yzw;
                  r40.w = lightConstantsCB[r17.w].data[7].x;
                  r22.y = dot(r40.xyzw, r28.xyzw);
                  r40.xyz = lightConstantsCB[r17.w].data[7].yzw;
                  r40.w = lightConstantsCB[r17.w].data[8].x;
                  r22.z = dot(r40.xyzw, r28.xyzw);
                  r22.w = cmp(r22.z < r22.y);
                  if (r22.w == 0) {
                    r40.xyz = lightConstantsCB[r17.w].data[4].yzw;
                    r40.w = lightConstantsCB[r17.w].data[5].x;
                    r27.x = dot(r40.xyzw, r28.xyzw);
                    r40.xyz = lightConstantsCB[r17.w].data[5].yzw;
                    r40.w = lightConstantsCB[r17.w].data[6].x;
                    r27.y = dot(r40.xyzw, r28.xyzw);
                    r26.yz = r27.xy / r22.zz;
                    r26.yz = r26.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r27.x = lightConstantsCB[r17.w].data[9].w + r26.y;
                    r27.y = lightConstantsCB[r17.w].data[10].x + r26.z;
                    r26.yz = lightConstantsCB[r17.w].data[9].yz * r27.xy;
                    r27.xy = lightConstantsCB[r17.w].data[3].yy / lightConstantsCB[r17.w].data[8].yw;
                    r28.xy = float2(1,1) + -r27.xy;
                    r28.xy = cmp(r26.yz >= r28.xy);
                    r27.xy = cmp(r27.xy >= r26.yz);
                    r27.xy = (int2)r27.xy | (int2)r28.xy;
                    r25.x = (int)r27.y | (int)r27.x;
                    if (r25.x == 0) {
                      r26.yz = saturate(r26.yz);
                      r27.x = r26.y * lightConstantsCB[r17.w].data[8].y + lightConstantsCB[r17.w].data[8].z;
                      r27.y = r26.z * lightConstantsCB[r17.w].data[8].w + lightConstantsCB[r17.w].data[9].x;
                      r26.y = lightConstantsCB[r17.w].data[10].z * r22.z;
                      r22.y = lightConstantsCB[r17.w].data[10].y * r22.z + r22.y;
                      r22.y = r22.y / r26.y;
                    }
                  } else {
                    r25.x = -1;
                  }
                  r22.z = (int)r22.w | (int)r25.x;
                  if (r22.z == 0) {
                    r22.y = max(6.10351563e-05, r22.y);
                    r22.z = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                    if (r8.w != 0) {
                      r28.z = (uint)r22.z;
                      r22.w = 0;
                      r25.x = 0;
                      while (true) {
                        r26.y = cmp((int)r25.x >= 8);
                        if (r26.y != 0) break;
                        r40.x = dot(icb[r25.x+4].xy, r31.xy);
                        r40.y = dot(icb[r25.x+4].yx, r31.xz);
                        r28.xy = r40.xy * lightConstantsCB[r17.w].data[3].yy + r27.xy;
                        r26.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r22.y).x;
                        r22.w = r26.y * 0.125 + r22.w;
                        r25.x = (int)r25.x + 1;
                      }
                    } else {
                      r27.z = (uint)r22.z;
                      r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r22.y).x;
                    }
                    r17.w = r22.w * r22.w;
                    r17.w = r17.w * r22.w;
                  } else {
                    r17.w = 1;
                  }
                  r12.w = r17.w * r12.w;
                } else {
                  if (4 == 0) r17.w = 0; else if (4+20 < 32) {                   r17.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 20)); r17.w = (uint)r17.w >> (32-4);                  } else r17.w = (uint)lightConstantsCB[r11.w].data[1].w >> 20;
                  r22.y = cmp(0 < (uint)r17.w);
                  r22.y = r2.w ? r22.y : 0;
                  if (r22.y != 0) {
                    r17.w = (int)r17.w + numLights;
                    r17.w = mad((int)r17.w, 15, -15);
                    r22.y = abs(r18.w) * -0.200000003 + 0.400000006;
                    r22.z = cmp(r18.w < 0);
                    r22.z = r3.w ? r22.z : 0;
                    r22.y = r22.z ? -r22.y : r22.y;
                    r30.xyz = r11.xyz * r22.yyy + r5.xyz;
                    r40.xyz = lightConstantsCB[r17.w].data[6].yzw;
                    r40.w = lightConstantsCB[r17.w].data[7].x;
                    r22.y = dot(r40.xyzw, r30.xyzw);
                    r40.xyz = lightConstantsCB[r17.w].data[7].yzw;
                    r40.w = lightConstantsCB[r17.w].data[8].x;
                    r22.z = dot(r40.xyzw, r30.xyzw);
                    r25.x = cmp(r22.z < r22.y);
                    if (r25.x == 0) {
                      r40.xyz = lightConstantsCB[r17.w].data[4].yzw;
                      r40.w = lightConstantsCB[r17.w].data[5].x;
                      r27.x = dot(r40.xyzw, r30.xyzw);
                      r40.xyz = lightConstantsCB[r17.w].data[5].yzw;
                      r40.w = lightConstantsCB[r17.w].data[6].x;
                      r27.y = dot(r40.xyzw, r30.xyzw);
                      r26.yz = r27.xy / r22.zz;
                      r26.yz = r26.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                      r27.x = lightConstantsCB[r17.w].data[9].w + r26.y;
                      r27.y = lightConstantsCB[r17.w].data[10].x + r26.z;
                      r26.yz = lightConstantsCB[r17.w].data[9].yz * r27.xy;
                      r27.xy = lightConstantsCB[r17.w].data[3].yy / lightConstantsCB[r17.w].data[8].yw;
                      r28.xy = float2(1,1) + -r27.xy;
                      r28.xy = cmp(r26.yz >= r28.xy);
                      r27.xy = cmp(r27.xy >= r26.yz);
                      r27.xy = (int2)r27.xy | (int2)r28.xy;
                      r27.x = (int)r27.y | (int)r27.x;
                      if (r27.x == 0) {
                        r26.yz = saturate(r26.yz);
                        r28.x = r26.y * lightConstantsCB[r17.w].data[8].y + lightConstantsCB[r17.w].data[8].z;
                        r28.y = r26.z * lightConstantsCB[r17.w].data[8].w + lightConstantsCB[r17.w].data[9].x;
                        r26.y = lightConstantsCB[r17.w].data[10].z * r22.z;
                        r22.y = lightConstantsCB[r17.w].data[10].y * r22.z + r22.y;
                        r22.y = r22.y / r26.y;
                      }
                    } else {
                      r27.x = -1;
                    }
                    r22.z = (int)r25.x | (int)r27.x;
                    if (r22.z == 0) {
                      r22.y = max(6.10351563e-05, r22.y);
                      r22.z = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                      if (r8.w != 0) {
                        r27.z = (uint)r22.z;
                        r25.x = 0;
                        r26.y = 0;
                        while (true) {
                          r26.z = cmp((int)r26.y >= 8);
                          if (r26.z != 0) break;
                          r30.x = dot(icb[r26.y+4].xy, r32.xy);
                          r30.y = dot(icb[r26.y+4].yx, r32.xz);
                          r27.xy = r30.xy * lightConstantsCB[r17.w].data[3].yy + r28.xy;
                          r26.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r22.y).x;
                          r25.x = r26.z * 0.125 + r25.x;
                          r26.y = (int)r26.y + 1;
                        }
                      } else {
                        r28.z = (uint)r22.z;
                        r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r22.y).x;
                      }
                      r17.w = r25.x * r25.x;
                      r17.w = r17.w * r25.x;
                    } else {
                      r17.w = 1;
                    }
                    r12.w = r17.w * r12.w;
                  }
                }
                r17.w = -r19.y * r2.x + 1;
                r17.w = r17.w * r17.w;
                r17.w = -r17.w * 0.620000005 + 0.620000005;
                r17.w = r17.w + -r19.y;
                r17.w = r1.w * r17.w + r19.y;
                r17.w = r17.w * r12.w;
                r27.x = lightConstantsCB[r11.w].data[0].w;
                r27.yz = lightConstantsCB[r11.w].data[1].xy;
                r11.w = cmp(0 < r18.w);
                r28.xyz = r17.www * r27.xyz + r36.xyz;
                r18.w = saturate(dot(r11.xyz, r24.xyw));
                r23.yzw = r23.yzw * r16.www + r12.xyz;
                r16.w = dot(r23.yzw, r23.yzw);
                r16.w = rsqrt(r16.w);
                r23.yzw = r23.yzw * r16.www;
                r16.w = dot(r23.yzw, r12.xyz);
                r19.y = dot(r11.xyz, r23.yzw);
                r22.y = abs(r19.y) * r0.w + -abs(r19.y);
                r19.y = abs(r19.y) * r22.y + 1;
                r22.y = r18.w * r2.y + r7.w;
                r19.y = r19.y * r19.y;
                r19.y = r19.y * r22.y;
                r19.y = rcp(r19.y);
                r14.w = r18.w * r14.w;
                r14.w = r19.y * r14.w;
                r14.w = r14.w * r12.w;
                r23.yzw = r14.www * r27.xyz + r39.xyz;
                r16.w = saturate(1 + -r16.w);
                r18.w = r16.w * r16.w;
                r18.w = r18.w * r18.w;
                r16.w = r18.w * r16.w;
                r14.w = r16.w * r14.w;
                r24.xyw = r14.www * r27.xyz + r38.xyz;
                r27.xyz = r17.www * r27.xyz + r37.xyz;
                r27.xyz = r3.www ? r27.xyz : r37.xyz;
                r36.xyz = r11.www ? r28.xyz : r36.xyz;
                r37.xyz = r11.www ? r37.xyz : r27.xyz;
                r38.xyz = r11.www ? r24.xyw : r38.xyz;
                r39.xyz = r11.www ? r23.yzw : r39.xyz;
                r11.w = (int)r20.w & 255;
                r14.w = (int)r11.w + -1;
                r14.w = cmp((uint)r14.w < 32);
                r14.w = r2.z ? r14.w : 0;
                if (r14.w != 0) {
                  r22.yz = mad((int2)r11.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r11.w, cb2[52].x, r22.y, u2.xxxx
                r11.w = samp0[]..swiz;
                  r11.w = (int)r11.w | 8;
                  GBufferDiffuseColor[viewID].r22.y = u2.x;
                  GBufferDiffuseColor[viewID].r22.z = u2.x;
                }
                r9.w = (int)r9.w + 0x00010101;
              } else {
                r9.w = r20.w;
              }
            } else {
              r9.w = r13.w;
            }
          } else {
            r9.w = r13.w;
          }
        }
      }
    }
    r15.yzw = r36.xyz;
    r33.xyz = r37.xyz;
    r34.xyz = r38.xyz;
    r35.xyz = r39.xyz;
    r3.z = r9.w;
    r4.z = (int)r4.z + 32;
  }
  r1.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r1.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r2.xy = r0.ww ? r2.yw : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r3.xy = r0.ww ? r4.yz : float2(-1,0);
  r4.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r4.xy = r0.ww ? r4.yz : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r7.x;
  r0.z = cmp((int)r0.z == (int)r0.w);
  r0.zw = r0.zz ? r7.yz : float2(-1,0);
  r7.x = r2.x;
  r7.y = r3.x;
  r7.z = r4.x;
  r7.w = r0.z;
  r7.xyzw = r7.xyzw + -r1.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r7.x + r7.y;
  r0.z = r0.z + r7.z;
  r0.z = r0.z + r7.w;
  r2.x = r7.y * r3.y;
  r2.x = r7.x * r2.y + r2.x;
  r2.x = r7.z * r4.y + r2.x;
  r0.w = r7.w * r0.w + r2.x;
  r1.w = r0.w / r0.z;
  r0.z = cmp(0 >= r0.z);
  r1.yz = r0.zz ? float2(0,0) : r1.zw;
  r0.zw = (int2)r0.xy & int2(1,1);
  r0.z = cmp((int)r0.w == (int)r0.z);
  r1.xyz = r0.zzz ? r1.xyz : r1.xzy;
  r0.z = -r1.z * 0.5 + r1.x;
  r4.y = r1.z + r0.z;
  r4.z = -r1.y * 0.5 + r0.z;
  r4.x = r4.z + r1.y;
  r1.xyz = r15.yzw * r6.xyz;
  r1.xyz = r33.xyz * r4.xyz + r1.xyz;
  r2.xyw = float3(0.959999979,0.959999979,0.959999979) * r34.xyz;
  r2.xyw = r35.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r2.xyw;
  r1.xyz = r2.xyw + r1.xyz;
  r2.xyw = float3(1,1,1) + -r4.xyz;
  r2.xyw = r34.xyz * r2.xyw;
  r2.xyw = r35.xyz * r4.xyz + r2.xyw;
  r2.xyw = r15.yzw * r6.xyz + r2.xyw;
  r1.xyz = r3.www ? r1.xyz : r2.xyw;
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = dot(r5.xyz, r5.xyz);
    r0.w = rsqrt(r0.z);
    r2.xyw = r5.xyz * r0.www;
    r0.z = sqrt(r0.z);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r3.xy = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r0.w = cmp(0.00999999978 < abs(r5.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r3.xy;
      r3.xy = r0.ww ? r4.xy : r3.xy;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
      r4.xyz = exp2(r4.xyz);
      r3.xyw = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
      r3.xyw = exp2(r3.xyw);
      r3.xyw = r3.xyw + -r4.xyz;
      r3.xyw = fogConstants.blendAmount * r3.xyw + r4.xyz;
    } else {
      r0.w = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.w = cmp(0.00999999978 < abs(r5.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r4.y = -1.44269502 * r4.x;
      r4.y = exp2(r4.y);
      r4.y = 1 + -r4.y;
      r4.x = r4.y / r4.x;
      r4.x = r4.x * r0.w;
      r0.w = r1.w ? r4.x : r0.w;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r3.xyw = exp2(r4.xyz);
    }
    r3.xyw = r3.xyw * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyw = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyw);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r2.xyw);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.x = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r2.x = r2.x * r2.x;
    r2.x = 12.566371 * r2.x;
    r1.w = r1.w / r2.x;
    r0.z = -fogConstants.atmospherehazebasedist + r0.z;
    r0.z = saturate(fogConstants.atmospherehazefadedist * r0.z);
    r0.z = r1.w * r0.z;
    r0.w = saturate(r0.w);
    r0.w = r0.w * r0.w + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConstants.atmospheresunstrength * r0.w + 1;
    r2.xyw = fogConstants.atmosphereMieDensity.xyz * r0.zzz;
    r2.xyw = r0.www * fogConstants.atmosphereRayleighDensity.xyz + r2.xyw;
    r2.xyw = fogConstants.atmosphereInScatterIntensity * r2.xyw;
    r4.xyz = float3(1,1,1) + -r3.xyw;
    r2.xyw = r4.xyz * r2.xyw;
    r2.xyw = r1.xyz * r3.xyw + r2.xyw;
  } else {
    r0.z = fogConstants.heightFalloff * r5.z;
    r0.w = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r1.w = cmp(abs(r0.z) < 9.99999975e-05);
    r3.x = min(64, r0.w);
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r3.y = saturate(fogConstants.K0b);
    r3.w = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r3.w ? r3.x : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.z = r1.w ? 1 : r0.z;
    r0.z = r0.w / r0.z;
    r0.z = r1.w ? r3.y : r0.z;
    r0.z = fogConstants.expMul * r0.z;
    r0.w = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r0.w);
    r0.z = r0.z * r1.w + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r0.w = rsqrt(r0.w);
    r3.xyw = r5.xyz * r0.www;
    r0.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyw);
    r0.w = saturate(fogConstants.sunFogAngles.y * r0.w + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r0.wwww * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.z = r4.w * r0.z;
    r3.xyw = r4.xyz + -r1.xyz;
    r2.xyw = r0.zzz * r3.xyw + r1.xyz;
  }
  r1.xyz = relHDRExposure.yyy * r2.xyw;
  r2.xyw = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r2.xyw ? r1.xyz : 0;
  r1.xyz = min(float3(65024,65024,64512), r1.xyz);
  r0.z = cmp(0 < permuteHighlight);
  r4.xyzw = permuteHighlight & int4(32,3,64,12);
  r2.xy = cmp((int2)r4.xz != int2(0,0));
  r3.xy = cmp((int2)r4.yw == int2(0,0));
  r2.xy = r2.xy ? r3.xy : 0;
  r4.xy = r2.xy ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.w = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 0);
  r0.w = r0.w ? r1.w : 0;
  r4.z = r0.w ? 0.200000 : 0;
  r2.xyw = r4.xyz * relHDRExposure.xxx + -r1.xyz;
  r2.xyw = r2.xyw * float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = r0.zzz ? r2.xyw : r1.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.z = (int)r3.z & 255;
        break;
        case 2 :        if (8 == 0) r0.z = 0; else if (8+8 < 32) {         r0.z = (uint)r3.z << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r3.z >> 8;
        break;
        case 3 :        if (8 == 0) r0.z = 0; else if (8+16 < 32) {         r0.z = (uint)r3.z << (32-(8 + 16)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r3.z >> 16;
        break;
        case 4 :        r0.z = (int)r13.z & 255;
        break;
        case 5 :        if (8 == 0) r0.z = 0; else if (8+8 < 32) {         r0.z = (uint)r13.z << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r13.z >> 8;
        break;
        default :
        r0.z = 0;
        break;
      }
      r0.z = (uint)r0.z;
      r0.z = drawNumLighstScale * r0.z;
      r2.xyw = r0.zzz * float3(0.5,0.5,0.5) + -r1.xyz;
      r1.xyz = drawNumLightsAlpha * r2.xyw + r1.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyyy, r1.xyzx
  if (r2.z != 0) {
    r0.xyz = eyeOffset.xyz + r5.xyz;
    r0.w = (int)r3.z & 255;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.x = (int)r13.z & 255;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r3.z & 255;
    // Needs manual fix for instruction:
    atomic_iadd g8, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r0.y = 0; else if (8+8 < 32) {     r0.y = (uint)r3.z << (32-(8 + 8)); r0.y = (uint)r0.y >> (32-8);    } else r0.y = (uint)r3.z >> 8;
    if (8 == 0) r0.z = 0; else if (8+16 < 32) {     r0.z = (uint)r3.z << (32-(8 + 16)); r0.z = (uint)r0.z >> (32-8);    } else r0.z = (uint)r3.z >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g8, l(4), r0.y
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g8, l(8), r0.z
    InterlockedAdd(dest, value, orig_value);
    r0.w = (int)r13.z & 255;
    // Needs manual fix for instruction:
    atomic_iadd g8, l(12), r0.w
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.x = 0; else if (8+8 < 32) {     r1.x = (uint)r13.z << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);    } else r1.x = (uint)r13.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g8, l(16), r1.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g9, l(0), r0.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g9, l(4), r0.y
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g9, l(8), r0.z
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g9, l(12), r0.w
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g9, l(16), r1.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    imm_atomic_iadd r0.x, g7, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.x = cmp((int)r0.x == 63);
    if (r0.x != 0) {
    // No code for instruction (needs manual fix):
        ld_raw r0.xyzw, l(0), g8.xyzw
      r1.xz = viewID;
      r1.yw = float2(5.60519386e-44,6.16571324e-44);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.x
      InterlockedAdd(dest, value, orig_value);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.zwzz, r0.y
      InterlockedAdd(dest, value, orig_value);
      r1.xz = viewID;
      r1.yw = float2(6.72623263e-44,7.28675201e-44);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.z
      InterlockedAdd(dest, value, orig_value);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.zwzz, r0.w
      InterlockedAdd(dest, value, orig_value);
    // No code for instruction (needs manual fix):
        ld_raw r0.x, l(16), g8.xxxx
      r1.xz = viewID;
      r1.yw = float2(7.8472714e-44,0);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.x
      InterlockedAdd(dest, value, orig_value);
    // No code for instruction (needs manual fix):
        ld_raw r0.xyzw, l(0), g9.xyzw
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.x
      InterlockedMax(dest, value, orig_value);
      r1.xz = viewID;
      r1.yw = float2(5.60519386e-45,1.12103877e-44);
      // Needs manual fix for instruction:
        atomic_umax u2, r1.xyxx, r0.y
      InterlockedMax(dest, value, orig_value);
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.z
      InterlockedMax(dest, value, orig_value);
      r1.xz = viewID;
      r1.yw = float2(1.68155816e-44,2.24207754e-44);
      // Needs manual fix for instruction:
        atomic_umax u2, r1.xyxx, r0.w
      InterlockedMax(dest, value, orig_value);
    // No code for instruction (needs manual fix):
        ld_raw r1.x, l(16), g9.xxxx
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r1.x
      InterlockedMax(dest, value, orig_value);
      r1.yz = cmp((int2)vThreadGroupID.xy == centerGroupIDx);
      r1.y = r1.z ? r1.y : 0;
      if (r1.y != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}