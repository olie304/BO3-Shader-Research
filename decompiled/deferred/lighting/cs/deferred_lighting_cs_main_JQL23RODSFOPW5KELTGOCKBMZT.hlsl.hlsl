// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:34 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41;
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
// unknown dcl_: dcl_thread_group 8, 8, 1
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
  r1.x = cmp(r2.z >= 0.5);
  r4.xyz = GBufferDiffuseColor.Load(r0.xyw).xyz;
  r5.xyzw = GBufferSpecularColorAndOcclusion.Load(r0.xyw).xyzw;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r0.xyz, int3(0, 0, 0)).xyw;
  r0.zw = (uint2)r0.yx;
  r10.xy = float2(0.5,0.5) + r0.wz;
  r10.zw = -subpixelOffset.xy + r10.xy;
  r10.zw = renderTargetSize.zw * r10.zw;
  r10.zw = r10.zw * float2(2,-2) + float2(-1,1);
  r11.x = inverseProjectionMatrix._m00;
  r11.y = inverseProjectionMatrix._m11;
  r11.xy = r11.xy * r10.zw;
  r11.z = 1;
  r11.xyz = r11.xyz * r3.zzz;
  r12.xyz = inverseViewMatrix._m10_m11_m12 * r11.yyy;
  r11.xyw = r11.xxx * inverseViewMatrix._m00_m01_m02 + r12.xyz;
  r11.xyz = r11.zzz * inverseViewMatrix._m20_m21_m22 + r11.xyw;
  r1.w = r2.w * 3 + 0.5;
  r1.w = (uint)r1.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r2.w = dot(r2.xy, r2.xy);
  r12.zw = float2(2,1) + -r2.ww;
  r2.w = sqrt(r12.z);
  r12.xy = r2.xy * r2.ww;
  r13.xyzw = (int4)r1.wwww & int4(2,1,2,1);
  r13.xyzw = r13.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r1.w = (int)r13.w ^ (int)r13.z;
  r13.z = r1.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r13.xyz;
  r14.xyz = float3(1,-2,1) * r13.xyz;
  r12.xyz = float3(0.408248305,0.707106769,0.577350259) * r12.xyw;
  r2.xyw = r12.yyy * r2.xyw;
  r2.xyw = r14.xyz * r12.xxx + r2.xyw;
  r12.xyz = r13.xyz * r12.zzz + r2.xyw;
  r1.w = r1.x ? -0.5 : -0.00146627566;
  r1.w = r2.z + r1.w;
  r2.y = saturate(2.00982332 * r1.w);
  r1.w = dot(-r11.xyz, -r11.xyz);
  r1.w = rsqrt(r1.w);
  r13.xyz = -r11.xyz * r1.www;
  r2.z = dot(r0.wz, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.z = 52.9829178 * r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r14.x, r15.x);
  r0.z = dot(r0.zw, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r16.x, r17.x);
  r2.x = saturate(dot(r12.xyz, r13.xyz));
  r0.z = dot(-r13.xyz, r12.xyz);
  r0.z = r0.z + r0.z;
  r18.xyz = r12.xyz * -r0.zzz + -r13.xyz;
  r0.z = 17 * r2.y;
  r0.z = exp2(r0.z);
  r0.z = 2 + r0.z;
  r0.z = 2 / r0.z;
  r0.w = sqrt(r0.z);
  r2.zw = renderTargetSize.zw * r10.xy;
  r2.z = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r2.zw, 0).x;
  r2.w = r5.z * r2.z;
  r3.z = dot(r12.xyz, sunConstants.wldDir.xyz);
  r3.w = saturate(r3.z);
  r4.w = r1.x ? abs(r3.z) : r3.w;
  r6.w = cmp(0 >= r4.w);
  if (r6.w != 0) {
    r7.w = 0;
  }
  if (r6.w == 0) {
    r10.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r10.xyz = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.xyz;
    r10.xyz = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.xyz;
    r10.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.xyz;
    r6.w = -sunConstants.splitDepthOffset + r10.z;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r8.w = saturate(r6.w);
    r8.w = cmp(r6.w == r8.w);
    if (r8.w != 0) {
      r8.w = 0;
      r9.w = 0;
      while (true) {
        r10.w = cmp(r8.w >= 3);
        if (r10.w != 0) break;
        r10.w = (uint)r8.w;
        r14.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.xy;
        r13.w = max(abs(r14.z), abs(r14.w));
        r9.w = sunConstants.splitPinTransform[r10.w].z * r13.w;
        r10.w = cmp(r9.w < 1);
        if (r10.w != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r9.w = 0;
      }
    } else {
      r8.w = 3;
      r9.w = 0;
    }
    r10.w = cmp(r8.w >= 3);
    if (r10.w != 0) {
      r16.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r19.xz = rcp(r16.yy);
      r19.y = -r19.z;
      r16.yzw = r10.xyx * r19.xyz + r16.zwz;
      r17.yzw = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.yzw = max(float3(0,0,0), r16.yzw);
      r16.yzw = min(r16.yzw, r17.yzw);
      r14.zw = sunConstants.sstLightingConstants.coordScale * r16.wz;
      r14.zw = floor(r14.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.w;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r14.z;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r13.w, l(0), t23.xxxx
    r14.z = samp0[]..swiz;
      r14.w = (int)r14.z & 0x40000000;
      r15.w = (uint)r14.z << 2;
      if (r14.w == 0) {
        r14.w = (int)r14.z & 0x01ffffff;
        r19.x = (int)r13.w + (int)r14.w;
        r13.w = (uint)r14.z >> 25;
        r13.w = (uint)r13.w;
        r16.yzw = r16.yzw * r13.www;
        r16.yzw = frac(r16.yzw);
        r16.yzw = float3(128,128,128) * r16.yzw;
        r16.yzw = (uint3)r16.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r14.zw = (uint2)r16.wz >> int2(6,6);
        r13.w = (int)r19.z & 0xc0000000;
        r17.y = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
      r17.y = samp0[]..swiz;
        r14.w = r14.w ? r19.z : r17.y;
        r17.y = (uint)r14.w >> 13;
        r14.z = r14.z ? r17.y : r14.w;
        r14.z = (int)r14.z & 8191;
        r20.x = (int)r14.z + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
      r20.z = samp0[]..swiz;
        r19.y = 0;
        r20.y = 1;
        r17.yzw = r13.www ? r19.xyz : r20.xyz;
        r20.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r14.zw = (uint2)r16.wz >> (uint2)r20.yy;
        r14.zw = (int2)r14.zw & int2(1,1);
        r19.w = (int)r17.w & 0xc0000000;
        r20.y = (int)r17.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.y, l(0), t23.xxxx
      r20.y = samp0[]..swiz;
        r14.w = r14.w ? r17.w : r20.y;
        r20.y = (uint)r14.w >> 13;
        r14.z = r14.z ? r20.y : r14.w;
        r14.z = (int)r14.z & 8191;
        r20.x = (int)r14.z + (int)r17.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r17.yzw = r19.www ? r17.yzw : r20.xzw;
        r17.yzw = r13.www ? r19.xyz : r17.yzw;
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r17.z + 6;
          r14.zw = (uint2)r16.wz >> (uint2)r13.ww;
          r13.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r13.w = (uint)r13.w >> (uint)r14.z;
          r13.w = (int)r13.w & 1023;
          r19.x = (int)r13.w + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r17.zz + int2(1,2);
          r13.w = (int)-r19.y + 6;
          r14.zw = (uint2)r16.wz >> (uint2)r13.ww;
          r13.w = (int)r19.w & 0xc0000000;
          r17.z = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r14.z = (uint)r17.z >> (uint)r14.z;
          r14.z = (int)r14.z & 1023;
          r20.x = (int)r14.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r13.www ? r19.xyw : r20.xyz;
          r14.z = (int)-r20.y + 6;
          r14.zw = (uint2)r16.wz >> (uint2)r14.zz;
          r17.z = (int)r20.z & 0xc0000000;
          r19.y = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r14.z = (uint)r19.y >> (uint)r14.z;
          r14.z = (int)r14.z & 1023;
          r21.x = (int)r14.z + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
        r21.y = samp0[]..swiz;
          r14.zw = r17.zz ? r20.xz : r21.xy;
          r17.yw = r13.ww ? r19.xw : r14.zw;
        }
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r14.z = 0; else if (14+15 < 32) {           r14.z = (uint)r17.w << (32-(14 + 15)); r14.z = (uint)r14.z >> (32-14);          } else r14.z = (uint)r17.w >> 15;
          r14.z = (uint)r14.z;
          r14.z = sunConstants.sstLightingConstants.constants.spanInInches * r14.z;
          r19.xy = (int2)r17.ww & int2(32767,536870912);
          r14.w = (uint)r19.x;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.zw = float2(6.10388815e-05,3.05185094e-05) * r14.zw;
          r17.z = (int)r16.z & 3;
          r17.z = (int)r17.z + (int)r17.y;
          r17.z = (int)r17.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.w = (((uint)r16.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r16.y = (uint)r17.z >> (uint)r19.x;
          r16.y = (int)r16.y & 255;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r14.w;
          r16.y = r16.y * 0.00392156886 + r14.z;
          r16.z = (int)r19.z + 1;
          if (1 == 0) r16.w = 0; else if (1+1 < 32) {           r16.w = (uint)r16.w << (32-(1 + 1)); r16.w = (uint)r16.w >> (32-1);          } else r16.w = (uint)r16.w >> 1;
          r16.z = (int)r16.w + (int)r16.z;
          r16.z = (int)r16.z + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.z = (uint)r16.z >> (uint)r19.w;
          r16.z = (int)r16.z & 0x0000ffff;
          r16.z = (uint)r16.z;
          r14.w = r16.z * r14.w;
          r14.z = r14.w * 1.52590219e-05 + r14.z;
          r15.w = r19.y ? r16.y : r14.z;
        } else {
          r14.z = (int)r17.w & 0x80000000;
          r14.w = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r14.z = r14.z ? r14.w : 0;
          r14.w = (uint)r17.w << 2;
          r16.y = (uint)r14.z >> 16;
          r16.y = f16tof32(r16.y);
          r14.z = (int)r14.z & 0x0000ffff;
          r14.z = f16tof32(r14.z);
          r14.w = r10.x * r16.y + r14.w;
          r14.z = r10.y * r14.z + r14.w;
          r15.w = r13.w ? r14.z : r15.w;
        }
      }
      r10.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.z;
      r10.z = cmp(r15.w < r10.z);
      r7.w = r10.z ? 0 : 1;
    }
    if (r10.w == 0) {
      if (enableDitheredShadow == 0) {
        r10.z = (uint)r8.w;
        r14.zw = -sunConstants.splitPinTransform[r10.z].xy + r10.xy;
        r10.zw = sunConstants.splitPinTransform[r10.z].zz * r14.zw;
        r19.xy = r10.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.z = (int16)sunConstants.splitArrayOffset;
        r19.z = r10.z + r8.w;
        r10.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r6.w).x;
        r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
        r10.z = r10.z + r10.w;
        r10.z = saturate(-1 + r10.z);
        r10.w = r10.z * r10.z;
        r7.w = r10.w * r10.z;
      }
      if (enableDitheredShadow != 0) {
        r19.x = -r14.x;
        r10.z = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r14.zw = -sunConstants.splitPinTransform[r10.z].xy + r10.xy;
        r14.zw = sunConstants.splitPinTransform[r10.z].zz * r14.zw;
        r14.zw = r14.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.xy = -sunConstants.splitPinTransform[r8.w].xy + r10.xy;
        r10.xy = sunConstants.splitPinTransform[r8.w].zz * r10.xy;
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r19.y = r15.x;
        r19.z = r14.x;
        r10.w = 0;
        r13.w = 0;
        while (true) {
          r15.w = cmp((uint)r13.w >= 8);
          if (r15.w != 0) break;
          r15.w = cmp((uint)r9.w < (uint)r13.w);
          r16.yz = r15.ww ? r10.xy : r14.zw;
          r16.w = r15.w ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r10.z].w;
          r15.w = r15.w ? r8.w : r10.z;
          r20.x = dot(icb[r13.w+4].yx, r19.xy);
          r20.y = dot(icb[r13.w+4].yx, r19.yz);
          r20.xy = r20.xy * r16.ww + r16.yz;
          r15.w = (int)r15.w + (int16)sunConstants.splitArrayOffset;
          r20.z = (uint)r15.w;
          r15.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r6.w).x;
          r16.y = gTransShadowmapArray.SampleLevel(samp0_s, r20.xyz, 0).x;
          r15.w = r16.y + r15.w;
          r15.w = saturate(-1 + r15.w);
          r10.w = r15.w * 0.125 + r10.w;
          r13.w = (int)r13.w + 1;
        }
        r6.w = r10.w * r10.w;
        r7.w = r6.w * r10.w;
      }
    }
  }
  r6.w = 1 + -r2.y;
  r8.w = 5 * r6.w;
  r9.w = r6.w * 5 + -2.5;
  r9.w = 0.400000006 * r9.w;
  r9.w = max(0, r9.w);
  r9.w = 100 * r9.w;
  r10.xy = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r10.x = exp2(r10.x);
  r10.x = r10.x * r2.x;
  r10.z = r8.w * r6.w;
  r10.y = -r10.z * 2.0159049 + r10.y;
  r10.y = exp2(r10.y);
  r10.y = r10.y * r2.x;
  r10.xy = float2(9.1368103,9.70808983) * r10.xy;
  r10.x = max(r10.x, r10.y);
  r10.x = max(1.26815999, r10.x);
  r10.y = numRefProbes + -numOverrideProbes;
  r10.z = (int)r10.y & -32;
  r10.w = (int)-r10.z + (int)r10.y;
  r13.w = numRefProbes & -32;
  r14.z = (int)-r13.w + numRefProbes;
  r19.yz = float2(0,1);
  r20.xy = float2(0,0);
  r21.x = 1;
  r22.xy = float2(0,0);
  r23.xy = float2(0,0);
  r24.xyzw = float4(0,0,0,0);
  r25.yzw = float3(0,0,0);
  r14.w = r10.z;
  while (true) {
    r15.w = cmp((uint)r14.w >= numRefProbes);
    if (r15.w != 0) break;
    r15.w = (uint)r14.w >> 5;
    r15.w = (int)r15.w + 16;
  // Known bad code for instruction (needs manual fix):
    ld_structured r15.w, r15.w, l(0), g6.xxxx
  r15.w = samp0[]..swiz;
    r16.y = cmp((int)r10.z == (int)r14.w);
    bitmask.z = ((~(-1 << r10.w)) << 0) & 0xffffffff;  r16.z = (((uint)0 << 0) & bitmask.z) | ((uint)r15.w & ~bitmask.z);
    r15.w = r16.y ? r16.z : r15.w;
    r16.y = cmp((int)r13.w == (int)r14.w);
    if (r14.z == 0) r16.z = 0; else if (r14.z+0 < 32) {     r16.z = (uint)r15.w << (32-(r14.z + 0)); r16.z = (uint)r16.z >> (32-r14.z);    } else r16.z = (uint)r15.w >> 0;
    r15.w = r16.y ? r16.z : r15.w;
    r26.xyzw = r24.xyzw;
    r27.xyz = r25.yzw;
    r16.y = r15.w;
    while (true) {
      if (r16.y == 0) break;
      r16.z = firstbitlow((uint)r16.y);
      r16.w = 1 << (int)r16.z;
      r16.w = ~(int)r16.w;
      r16.y = (int)r16.w & (int)r16.y;
      r16.z = (int)r14.w + (int)r16.z;
      r16.z = (int)r16.z * 14;
      r17.yzw = -refProbeConstantsCB[r16.z].data[0].xyz + r11.xyz;
      r16.w = 0x0000ffff & (int)refProbeConstantsCB[r16.z].data[7].z;
      if (6 == 0) r19.w = 0; else if (6+25 < 32) {       r19.w = (uint)refProbeConstantsCB[r16.z].data[7].z << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);      } else r19.w = (uint)refProbeConstantsCB[r16.z].data[7].z >> 25;
      r20.w = (int)r16.w * 6;
      r21.z = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r17.yzw);
      r21.z = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r21.z);
      r21.w = dot(refProbeAttenuationConstantsCB[r20.w].data[1].xyz, r17.yzw);
      r21.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[1].w + r21.w);
      r21.z = r21.z * r21.w;
      r21.w = dot(refProbeAttenuationConstantsCB[r20.w].data[2].xyz, r17.yzw);
      r21.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[2].w + r21.w);
      r21.z = r21.z * r21.w;
      r21.w = dot(refProbeAttenuationConstantsCB[r20.w].data[3].xyz, r17.yzw);
      r21.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[3].w + r21.w);
      r21.z = r21.z * r21.w;
      r21.w = dot(refProbeAttenuationConstantsCB[r20.w].data[4].xyz, r17.yzw);
      r21.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[4].w + r21.w);
      r21.z = r21.z * r21.w;
      r21.w = dot(refProbeAttenuationConstantsCB[r20.w].data[5].xyz, r17.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[5].w + r21.w);
      r19.x = r21.z * r20.w;
      r20.w = 1 & (int)refProbeConstantsCB[r16.z].data[6].x;
      r21.zw = r20.ww ? r19.xy : r19.zx;
      r19.x = refProbeConstantsCB[r16.z].data[6].x;
      r28.xy = r21.zw;
      r20.w = 1;
      while (true) {
        r22.w = cmp((int)r20.w >= (int)r19.w);
        if (r22.w != 0) break;
        r22.w = (int)r16.w + (int)r20.w;
        r22.w = (int)r22.w * 6;
        r23.w = dot(refProbeAttenuationConstantsCB[r22.w].data[0].xyz, r17.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[0].w + r23.w);
        r23.w = r28.x * r23.w;
        r28.z = dot(refProbeAttenuationConstantsCB[r22.w].data[1].xyz, r17.yzw);
        r28.z = saturate(refProbeAttenuationConstantsCB[r22.w].data[1].w + r28.z);
        r23.w = r28.z * r23.w;
        r28.z = dot(refProbeAttenuationConstantsCB[r22.w].data[2].xyz, r17.yzw);
        r28.z = saturate(refProbeAttenuationConstantsCB[r22.w].data[2].w + r28.z);
        r23.w = r28.z * r23.w;
        r28.z = dot(refProbeAttenuationConstantsCB[r22.w].data[3].xyz, r17.yzw);
        r28.z = saturate(refProbeAttenuationConstantsCB[r22.w].data[3].w + r28.z);
        r23.w = r28.z * r23.w;
        r28.z = dot(refProbeAttenuationConstantsCB[r22.w].data[4].xyz, r17.yzw);
        r28.z = saturate(refProbeAttenuationConstantsCB[r22.w].data[4].w + r28.z);
        r23.w = r28.z * r23.w;
        r28.z = dot(refProbeAttenuationConstantsCB[r22.w].data[5].xyz, r17.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[5].w + r28.z);
        r28.x = r23.w * r22.w;
        r28.z = (uint)r19.x >> 2;
        if (1 == 0) r28.w = 0; else if (1+2 < 32) {         r28.w = (uint)r19.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);        } else r28.w = (uint)r19.x >> 2;
        r29.x = (int)r28.z & 2;
        r29.y = max(r28.y, r28.x);
        r22.w = -r23.w * r22.w + 1;
        r22.w = r28.y * r22.w;
        r21.y = r29.x ? r22.w : r29.y;
        r28.xy = r28.ww ? r28.xy : r21.xy;
        r20.w = (int)r20.w + 1;
        r19.x = r28.z;
      }
      r28.y = saturate(r28.y);
      r16.w = refProbeConstantsCB[r16.z].data[6].y * r28.y;
      r19.x = cmp(0 < r16.w);
      if (r19.x != 0) {
        r27.z = r28.y * refProbeConstantsCB[r16.z].data[6].y + r27.z;
        r16.w = refProbeConstantsCB[r16.z].data[7].y * r16.w;
        r29.x = refProbeConstantsCB[r16.z].data[7].w;
        r29.yz = refProbeConstantsCB[r16.z].data[8].xy;
        r19.x = dot(r18.xyz, r29.xyz);
        r19.w = dot(r17.yzw, r29.xyz);
        r19.w = -refProbeConstantsCB[r16.z].data[8].z + r19.w;
        r20.w = cmp(r19.w >= 0);
        r19.w = max(abs(r19.w), r9.w);
        r19.w = r20.w ? r19.w : -r19.w;
        r19.x = max(1.00000001e-07, -r19.x);
        r19.x = r19.w / r19.x;
        r19.x = min(131072, abs(r19.x));
        r29.x = refProbeConstantsCB[r16.z].data[8].w;
        r29.yz = refProbeConstantsCB[r16.z].data[9].xy;
        r19.w = dot(r18.xyz, r29.xyz);
        r20.w = dot(r17.yzw, r29.xyz);
        r20.w = -refProbeConstantsCB[r16.z].data[9].z + r20.w;
        r21.y = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.y ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r29.x = refProbeConstantsCB[r16.z].data[9].w;
        r29.yz = refProbeConstantsCB[r16.z].data[10].xy;
        r19.w = dot(r18.xyz, r29.xyz);
        r20.w = dot(r17.yzw, r29.xyz);
        r20.w = -refProbeConstantsCB[r16.z].data[10].z + r20.w;
        r21.y = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.y ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r29.x = refProbeConstantsCB[r16.z].data[10].w;
        r29.yz = refProbeConstantsCB[r16.z].data[11].xy;
        r19.w = dot(r18.xyz, r29.xyz);
        r20.w = dot(r17.yzw, r29.xyz);
        r20.w = -refProbeConstantsCB[r16.z].data[11].z + r20.w;
        r21.y = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.y ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r29.x = refProbeConstantsCB[r16.z].data[11].w;
        r29.yz = refProbeConstantsCB[r16.z].data[12].xy;
        r19.w = dot(r18.xyz, r29.xyz);
        r20.w = dot(r17.yzw, r29.xyz);
        r20.w = -refProbeConstantsCB[r16.z].data[12].z + r20.w;
        r21.y = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.y ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r29.x = refProbeConstantsCB[r16.z].data[12].w;
        r29.yz = refProbeConstantsCB[r16.z].data[13].xy;
        r19.w = dot(r18.xyz, r29.xyz);
        r20.w = dot(r17.yzw, r29.xyz);
        r20.w = -refProbeConstantsCB[r16.z].data[13].z + r20.w;
        r21.y = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r9.w);
        r20.w = r21.y ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r29.x = refProbeConstantsCB[r16.z].data[3].w + r17.y;
        r29.yz = refProbeConstantsCB[r16.z].data[4].xy + r17.zw;
        r21.yzw = r18.xyz * r19.xxx + r29.xyz;
        r19.w = dot(r21.yzw, r21.yzw);
        r19.w = sqrt(r19.w);
        r19.x = r19.x / r19.w;
        r19.x = r19.x + r19.x;
        r19.x = sqrt(r19.x);
        r19.x = r6.w * 5 + r19.x;
        r19.x = -0.844799995 + r19.x;
        r29.x = refProbeConstantsCB[r16.z].data[0].w;
        r29.y = refProbeConstantsCB[r16.z].data[1].z;
        r29.z = refProbeConstantsCB[r16.z].data[2].y;
        r30.x = dot(r21.yzw, r29.xyz);
        r31.xy = refProbeConstantsCB[r16.z].data[1].xw;
        r31.z = refProbeConstantsCB[r16.z].data[2].z;
        r30.y = dot(r21.yzw, r31.xyz);
        r32.x = refProbeConstantsCB[r16.z].data[1].y;
        r32.yz = refProbeConstantsCB[r16.z].data[2].xw;
        r30.z = dot(r21.yzw, r32.xyz);
        if (9 == 0) r19.w = 0; else if (9+16 < 32) {         r19.w = (uint)refProbeConstantsCB[r16.z].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);        } else r19.w = (uint)refProbeConstantsCB[r16.z].data[7].z >> 16;
        r30.w = (uint)r19.w;
        r21.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r19.x).xyz;
        r33.x = dot(r17.yzw, r29.xyz);
        r33.y = dot(r17.yzw, r31.xyz);
        r33.z = dot(r17.yzw, r32.xyz);
        r17.yzw = saturate(r33.xyz * refProbeConstantsCB[r16.z].data[3].xyz + float3(0.5,0.5,0.5));
        r33.xy = refProbeConstantsCB[r16.z].data[4].zw * r17.yz;
        r33.z = refProbeConstantsCB[r16.z].data[5].x * r17.w;
        r17.yzw = refProbeConstantsCB[r16.z].data[5].yzw + r33.xyz;
        r30.x = dot(r12.xyz, r29.xyz);
        r30.y = dot(r12.xyz, r31.xyz);
        r30.z = dot(r12.xyz, r32.xyz);
        r28.xzw = cmp(float3(0,0,0) < r30.xyz);
        r20.z = r28.x ? 0 : 0.5;
        r29.xyz = r20.xyz + r17.yzw;
        r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
        r31.xyz = r30.xyz * r30.xyz;
        r31.xyz = r31.xyz * r16.www;
        r22.z = r28.z ? 0 : 0.5;
        r32.xyz = r22.xyz + r17.yzw;
        r32.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
        r32.xyz = r32.xyz * r31.yyy;
        r29.xyz = r29.xyz * r31.xxx + r32.xyz;
        r23.z = r28.w ? 0 : 0.5;
        r17.yzw = r23.xyz + r17.yzw;
        r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
        r17.yzw = r17.yzw * r31.zzz + r29.xyz;
        r28.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
        r29.xyz = r28.xzw * r17.yzw;
        r16.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r26.xyz = r17.yzw * r28.xzw + r26.xyz;
        r17.y = r16.z * r10.x;
        r21.yzw = r21.yzw * r16.www;
        r16.w = dot(r21.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r16.z = r10.x * r16.z + r16.w;
        r16.z = r17.y / r16.z;
        r29.x = r26.w;
        r29.yz = r27.xy;
        r27.xyw = r21.zwy * r16.zzz + r29.yzx;
        r26.w = r27.w;
      }
    }
    r24.xyzw = r26.xyzw;
    r25.yzw = r27.xyz;
    r14.w = (int)r14.w + 32;
  }
  r13.w = cmp(r25.w < 1);
  if (r13.w != 0) {
    r19.yz = float2(0,1);
    r20.xy = float2(0,0);
    r21.x = 1;
    r22.xy = float2(0,0);
    r23.xy = float2(0,0);
    r26.x = r24.w;
    r26.yzw = r25.yzw;
    r16.yzw = r24.xyz;
    r13.w = r25.w;
    r14.z = 0;
    while (true) {
      r14.w = cmp((uint)r14.z >= (uint)r10.y);
      if (r14.w != 0) break;
      r14.w = (uint)r14.z >> 5;
      r14.w = (int)r14.w + 16;
    // Known bad code for instruction (needs manual fix):
        ld_structured r14.w, r14.w, l(0), g6.xxxx
    r14.w = samp0[]..swiz;
      r15.w = cmp((int)r10.z == (int)r14.z);
      if (r10.w == 0) r17.y = 0; else if (r10.w+0 < 32) {       r17.y = (uint)r14.w << (32-(r10.w + 0)); r17.y = (uint)r17.y >> (32-r10.w);      } else r17.y = (uint)r14.w >> 0;
      r14.w = r15.w ? r17.y : r14.w;
      r27.xyzw = r26.xyzw;
      r17.yzw = r16.yzw;
      r15.w = r13.w;
      r19.w = r14.w;
      while (true) {
        if (r19.w == 0) break;
        r20.w = firstbitlow((uint)r19.w);
        r21.z = 1 << (int)r20.w;
        r21.z = ~(int)r21.z;
        r19.w = (int)r19.w & (int)r21.z;
        r20.w = (int)r14.z + (int)r20.w;
        r20.w = (int)r20.w * 14;
        r28.xyz = -refProbeConstantsCB[r20.w].data[0].xyz + r11.xyz;
        r21.z = 0x0000ffff & (int)refProbeConstantsCB[r20.w].data[7].z;
        if (6 == 0) r21.w = 0; else if (6+25 < 32) {         r21.w = (uint)refProbeConstantsCB[r20.w].data[7].z << (32-(6 + 25)); r21.w = (uint)r21.w >> (32-6);        } else r21.w = (uint)refProbeConstantsCB[r20.w].data[7].z >> 25;
        r22.w = (int)r21.z * 6;
        r23.w = dot(refProbeAttenuationConstantsCB[r22.w].data[0].xyz, r28.xyz);
        r23.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[0].w + r23.w);
        r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[1].xyz, r28.xyz);
        r28.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[1].w + r28.w);
        r23.w = r28.w * r23.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[2].xyz, r28.xyz);
        r28.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[2].w + r28.w);
        r23.w = r28.w * r23.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[3].xyz, r28.xyz);
        r28.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[3].w + r28.w);
        r23.w = r28.w * r23.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[4].xyz, r28.xyz);
        r28.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[4].w + r28.w);
        r23.w = r28.w * r23.w;
        r28.w = dot(refProbeAttenuationConstantsCB[r22.w].data[5].xyz, r28.xyz);
        r22.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[5].w + r28.w);
        r19.x = r23.w * r22.w;
        r22.w = 1 & (int)refProbeConstantsCB[r20.w].data[6].x;
        r29.xy = r22.ww ? r19.xy : r19.zx;
        r19.x = refProbeConstantsCB[r20.w].data[6].x;
        r30.xy = r29.xy;
        r22.w = 1;
        while (true) {
          r23.w = cmp((int)r22.w >= (int)r21.w);
          if (r23.w != 0) break;
          r23.w = (int)r21.z + (int)r22.w;
          r23.w = (int)r23.w * 6;
          r28.w = dot(refProbeAttenuationConstantsCB[r23.w].data[0].xyz, r28.xyz);
          r28.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[0].w + r28.w);
          r28.w = r30.x * r28.w;
          r29.z = dot(refProbeAttenuationConstantsCB[r23.w].data[1].xyz, r28.xyz);
          r29.z = saturate(refProbeAttenuationConstantsCB[r23.w].data[1].w + r29.z);
          r28.w = r29.z * r28.w;
          r29.z = dot(refProbeAttenuationConstantsCB[r23.w].data[2].xyz, r28.xyz);
          r29.z = saturate(refProbeAttenuationConstantsCB[r23.w].data[2].w + r29.z);
          r28.w = r29.z * r28.w;
          r29.z = dot(refProbeAttenuationConstantsCB[r23.w].data[3].xyz, r28.xyz);
          r29.z = saturate(refProbeAttenuationConstantsCB[r23.w].data[3].w + r29.z);
          r28.w = r29.z * r28.w;
          r29.z = dot(refProbeAttenuationConstantsCB[r23.w].data[4].xyz, r28.xyz);
          r29.z = saturate(refProbeAttenuationConstantsCB[r23.w].data[4].w + r29.z);
          r28.w = r29.z * r28.w;
          r29.z = dot(refProbeAttenuationConstantsCB[r23.w].data[5].xyz, r28.xyz);
          r23.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[5].w + r29.z);
          r30.x = r28.w * r23.w;
          r29.z = (uint)r19.x >> 2;
          if (1 == 0) r29.w = 0; else if (1+2 < 32) {           r29.w = (uint)r19.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);          } else r29.w = (uint)r19.x >> 2;
          r30.z = (int)r29.z & 2;
          r30.w = max(r30.y, r30.x);
          r23.w = -r28.w * r23.w + 1;
          r23.w = r30.y * r23.w;
          r21.y = r30.z ? r23.w : r30.w;
          r30.xy = r29.ww ? r30.xy : r21.xy;
          r22.w = (int)r22.w + 1;
          r19.x = r29.z;
        }
        r19.x = saturate(r30.y + -r15.w);
        r21.y = refProbeConstantsCB[r20.w].data[6].y * r19.x;
        r21.z = cmp(0 < r21.y);
        if (r21.z != 0) {
          r27.w = r19.x * refProbeConstantsCB[r20.w].data[6].y + r27.w;
          r19.x = refProbeConstantsCB[r20.w].data[7].y * r21.y;
          r29.x = refProbeConstantsCB[r20.w].data[7].w;
          r29.yz = refProbeConstantsCB[r20.w].data[8].xy;
          r21.y = dot(r18.xyz, r29.xyz);
          r21.z = dot(r28.xyz, r29.xyz);
          r21.z = -refProbeConstantsCB[r20.w].data[8].z + r21.z;
          r21.w = cmp(r21.z >= 0);
          r21.z = max(abs(r21.z), r9.w);
          r21.z = r21.w ? r21.z : -r21.z;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r21.z / r21.y;
          r21.y = min(131072, abs(r21.y));
          r29.x = refProbeConstantsCB[r20.w].data[8].w;
          r29.yz = refProbeConstantsCB[r20.w].data[9].xy;
          r21.z = dot(r18.xyz, r29.xyz);
          r21.w = dot(r28.xyz, r29.xyz);
          r21.w = -refProbeConstantsCB[r20.w].data[9].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r22.w ? r21.w : -r21.w;
          r21.z = max(1.00000001e-07, -r21.z);
          r21.z = r21.w / r21.z;
          r21.y = min(r21.y, abs(r21.z));
          r29.x = refProbeConstantsCB[r20.w].data[9].w;
          r29.yz = refProbeConstantsCB[r20.w].data[10].xy;
          r21.z = dot(r18.xyz, r29.xyz);
          r21.w = dot(r28.xyz, r29.xyz);
          r21.w = -refProbeConstantsCB[r20.w].data[10].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r22.w ? r21.w : -r21.w;
          r21.z = max(1.00000001e-07, -r21.z);
          r21.z = r21.w / r21.z;
          r21.y = min(r21.y, abs(r21.z));
          r29.x = refProbeConstantsCB[r20.w].data[10].w;
          r29.yz = refProbeConstantsCB[r20.w].data[11].xy;
          r21.z = dot(r18.xyz, r29.xyz);
          r21.w = dot(r28.xyz, r29.xyz);
          r21.w = -refProbeConstantsCB[r20.w].data[11].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r22.w ? r21.w : -r21.w;
          r21.z = max(1.00000001e-07, -r21.z);
          r21.z = r21.w / r21.z;
          r21.y = min(r21.y, abs(r21.z));
          r29.x = refProbeConstantsCB[r20.w].data[11].w;
          r29.yz = refProbeConstantsCB[r20.w].data[12].xy;
          r21.z = dot(r18.xyz, r29.xyz);
          r21.w = dot(r28.xyz, r29.xyz);
          r21.w = -refProbeConstantsCB[r20.w].data[12].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r22.w ? r21.w : -r21.w;
          r21.z = max(1.00000001e-07, -r21.z);
          r21.z = r21.w / r21.z;
          r21.y = min(r21.y, abs(r21.z));
          r29.x = refProbeConstantsCB[r20.w].data[12].w;
          r29.yz = refProbeConstantsCB[r20.w].data[13].xy;
          r21.z = dot(r18.xyz, r29.xyz);
          r21.w = dot(r28.xyz, r29.xyz);
          r21.w = -refProbeConstantsCB[r20.w].data[13].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r22.w ? r21.w : -r21.w;
          r21.z = max(1.00000001e-07, -r21.z);
          r21.z = r21.w / r21.z;
          r21.y = min(r21.y, abs(r21.z));
          r29.x = refProbeConstantsCB[r20.w].data[3].w + r28.x;
          r29.yz = refProbeConstantsCB[r20.w].data[4].xy + r28.yz;
          r29.xyz = r18.xyz * r21.yyy + r29.xyz;
          r21.z = dot(r29.xyz, r29.xyz);
          r21.z = sqrt(r21.z);
          r21.y = r21.y / r21.z;
          r21.y = r21.y + r21.y;
          r21.y = sqrt(r21.y);
          r21.y = r6.w * 5 + r21.y;
          r21.y = -0.844799995 + r21.y;
          r31.x = refProbeConstantsCB[r20.w].data[0].w;
          r31.y = refProbeConstantsCB[r20.w].data[1].z;
          r31.z = refProbeConstantsCB[r20.w].data[2].y;
          r32.x = dot(r29.xyz, r31.xyz);
          r33.xy = refProbeConstantsCB[r20.w].data[1].xw;
          r33.z = refProbeConstantsCB[r20.w].data[2].z;
          r32.y = dot(r29.xyz, r33.xyz);
          r34.x = refProbeConstantsCB[r20.w].data[1].y;
          r34.yz = refProbeConstantsCB[r20.w].data[2].xw;
          r32.z = dot(r29.xyz, r34.xyz);
          if (9 == 0) r21.z = 0; else if (9+16 < 32) {           r21.z = (uint)refProbeConstantsCB[r20.w].data[7].z << (32-(9 + 16)); r21.z = (uint)r21.z >> (32-9);          } else r21.z = (uint)refProbeConstantsCB[r20.w].data[7].z >> 16;
          r32.w = (uint)r21.z;
          r21.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r21.y).xyz;
          r29.x = dot(r28.xyz, r31.xyz);
          r29.y = dot(r28.xyz, r33.xyz);
          r29.z = dot(r28.xyz, r34.xyz);
          r28.xyz = saturate(r29.xyz * refProbeConstantsCB[r20.w].data[3].xyz + float3(0.5,0.5,0.5));
          r29.xy = refProbeConstantsCB[r20.w].data[4].zw * r28.xy;
          r29.z = refProbeConstantsCB[r20.w].data[5].x * r28.z;
          r28.xyz = refProbeConstantsCB[r20.w].data[5].yzw + r29.xyz;
          r32.x = dot(r12.xyz, r31.xyz);
          r32.y = dot(r12.xyz, r33.xyz);
          r32.z = dot(r12.xyz, r34.xyz);
          r29.xyz = cmp(float3(0,0,0) < r32.xyz);
          r20.z = r29.x ? 0 : 0.5;
          r30.xzw = r28.xyz + r20.xyz;
          r30.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xzw, 0).xyz;
          r31.xyz = r32.xyz * r32.xyz;
          r31.xyz = r31.xyz * r19.xxx;
          r22.z = r29.y ? 0 : 0.5;
          r29.xyw = r28.xyz + r22.xyz;
          r29.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyw, 0).xyz;
          r29.xyw = r29.xyw * r31.yyy;
          r29.xyw = r30.xzw * r31.xxx + r29.xyw;
          r23.z = r29.z ? 0 : 0.5;
          r28.xyz = r28.xyz + r23.xyz;
          r28.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
          r28.xyz = r28.xyz * r31.zzz + r29.xyw;
          r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
          r30.xzw = r29.xyz * r28.xyz;
          r20.z = dot(r30.xzw, float3(0.212599993,0.715200007,0.0722000003));
          r17.yzw = r28.xyz * r29.xyz + r17.yzw;
          r20.w = r20.z * r10.x;
          r21.yzw = r21.yzw * r19.xxx;
          r19.x = dot(r21.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r19.x = r10.x * r20.z + r19.x;
          r19.x = r20.w / r19.x;
          r27.xyz = r21.yzw * r19.xxx + r27.xyz;
        }
      }
      r26.xyzw = r27.xyzw;
      r16.yzw = r17.yzw;
      r14.z = (int)r14.z + 32;
    }
    r25.xyzw = r26.zxyw;
    r24.xyz = r16.yzw;
    r25.xyzw = r25.yzxw;
  } else {
    r25.x = r24.w;
  }
  r6.w = max(1, r25.w);
  r6.w = rcp(r6.w);
  r25.w = saturate(r25.w);
  r10.xyz = r24.xyz * r6.www;
  r16.yzw = r25.xyz * r6.www;
  r9.w = cmp(r25.w < 0.99000001);
  if (r9.w != 0) {
    r9.w = 1 + -r25.w;
    r10.w = sunConstants.globalProbeExposure * r9.w;
    r17.yzw = -globalProbeConstants.data[0].xyz + r11.xyz;
    r19.x = globalProbeConstants.data[0].w * r17.y;
    r19.yz = globalProbeConstants.data[1].xy * r17.zw;
    r17.yzw = saturate(float3(0.5,0.5,0.5) + r19.xyz);
    r19.xy = globalProbeConstants.data[1].zw * r17.yz;
    r19.z = globalProbeConstants.data[2].x * r17.w;
    r17.yzw = globalProbeConstants.data[2].yzw + r19.xyz;
    r19.xyz = cmp(float3(0,0,0) < r12.xyz);
    r19.xyz = r19.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r19.w = 0;
    r20.xyz = r19.wwx + r17.yzw;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r21.xyz = r12.xyz * r12.xyz;
    r21.xyz = r21.xyz * r10.www;
    r22.xyz = r19.wwy + r17.yzw;
    r22.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r22.xyz = r22.xyz * r21.yyy;
    r20.xyz = r20.xyz * r21.xxx + r22.xyz;
    r17.yzw = r19.wwz + r17.yzw;
    r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
    r17.yzw = r17.yzw * r21.zzz + r20.xyz;
    r12.w = 0;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r17.yzw = r19.xyz * r17.yzw;
    r10.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r10.xyz = r24.xyz * r6.www + r17.yzw;
    r18.w = 0;
    r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r18.xyzw, r8.w).xyz;
    r6.w = sunConstants.globalProbeExposure * r9.w + -r10.w;
    r6.w = r2.y * r6.w + r10.w;
    r16.yzw = r17.yzw * r6.www + r16.yzw;
  }
  r6.w = r5.z * r2.z + r2.x;
  r6.w = log2(abs(r6.w));
  r6.w = r6.w * r0.w;
  r6.w = exp2(r6.w);
  r2.z = r5.z * r2.z + r6.w;
  r2.z = saturate(-1 + r2.z);
  r19.xyz = r10.xyz * r2.www;
  r20.xyz = r1.xxx ? r19.yzx : 0;
  r14.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r14.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r14.zw, 0).xy;
  r16.yzw = r16.yzw * r2.zzz;
  r17.yzw = r16.yzw * r14.zzz;
  r21.xyz = r16.yzw * r14.www;
  r2.y = sqrt(r0.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.z = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r5.z = r2.x * r2.y + r2.z;
  r2.yz = r5.zz * r2.yz;
  r5.z = cmp(0 < r4.w);
  if (r5.z != 0) {
    r5.z = cmp(0 < r7.w);
    if (r5.z != 0) {
      r5.z = sunConstants.specScale * r0.z;
      r5.z = r5.z * r3.w;
      if (sunConstants.sunCookieIndex != 0) {
        r22.xyz = eyeOffset.xyz + r11.xyz;
        r22.w = 1;
        r6.w = dot(sunConstants.sunCookieTransform[0].xyzw, r22.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r22.xyzw);
        r22.x = frac(r6.w);
        r22.y = frac(r8.w);
        r6.w = -1 + (int14)sunConstants.sunCookieIndex;
        r22.z = (uint)r6.w;
        r16.yzw = gCookieArray.SampleLevel(samplerLinear_s, r22.xyz, 0).xyz;
        r16.yzw = float3(-1,-1,-1) + r16.yzw;
        r16.yzw = sunConstants.sunCookieIntensity * r16.yzw + float3(1,1,1);
        r16.yzw = sunConstants.color.xyz * r16.yzw;
      } else {
        r16.yzw = sunConstants.color.xyz;
      }
      r6.w = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r6.w);
      r8.w = r1.y ? r8.w : 0;
      r8.w = r1.z ? r8.w : 0;
      r8.w = r3.x ? r8.w : 0;
      if (r8.w != 0) {
        r6.w = (int)r6.w + numLights;
        r6.w = mad((int)r6.w, 15, -15);
        r8.w = abs(r3.z) * -0.200000003 + 0.400000006;
        r9.w = cmp(r3.z < 0);
        r9.w = r1.x ? r9.w : 0;
        r8.w = r9.w ? -r8.w : r8.w;
        r22.xyz = r12.xyz * r8.www + r11.xyz;
        r23.xyz = lightConstantsCB[r6.w].data[4].yzw;
        r23.w = lightConstantsCB[r6.w].data[5].x;
        r22.w = 1;
        r23.x = dot(r23.xyzw, r22.xyzw);
        r24.xyz = lightConstantsCB[r6.w].data[5].yzw;
        r24.w = lightConstantsCB[r6.w].data[6].x;
        r23.y = dot(r24.xyzw, r22.xyzw);
        r14.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r23.x = lightConstantsCB[r6.w].data[9].w + r14.z;
        r23.y = lightConstantsCB[r6.w].data[10].x + r14.w;
        r14.zw = lightConstantsCB[r6.w].data[9].yz * r23.xy;
        r23.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
        r23.zw = float2(1,1) + -r23.xy;
        r23.zw = cmp(r14.zw >= r23.zw);
        r23.xy = cmp(r23.xy >= r14.zw);
        r23.xy = (int2)r23.xy | (int2)r23.zw;
        r8.w = (int)r23.y | (int)r23.x;
        if (r8.w == 0) {
          r23.xyz = lightConstantsCB[r6.w].data[6].yzw;
          r23.w = lightConstantsCB[r6.w].data[7].x;
          r8.w = dot(r23.xyzw, r22.xyzw);
          r14.zw = saturate(r14.zw);
          r22.x = r14.z * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
          r22.y = r14.w * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
          r8.w = lightConstantsCB[r6.w].data[10].y + r8.w;
          r8.w = r8.w / lightConstantsCB[r6.w].data[10].z;
          r8.w = max(6.10351563e-05, r8.w);
          r9.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r23.x = -r14.x;
            r24.z = (uint)r9.w;
            r23.y = r15.x;
            r23.z = r14.x;
            r10.w = 0;
            r12.w = 0;
            while (true) {
              r13.w = cmp((int)r12.w >= 8);
              if (r13.w != 0) break;
              r25.x = dot(icb[r12.w+4].yx, r23.xy);
              r25.y = dot(icb[r12.w+4].yx, r23.yz);
              r24.xy = r25.xy * lightConstantsCB[r6.w].data[3].yy + r22.xy;
              r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r8.w).x;
              r10.w = r13.w * 0.125 + r10.w;
              r12.w = (int)r12.w + 1;
            }
          } else {
            r22.z = (uint)r9.w;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
          }
          r6.w = r10.w * r10.w;
          r6.w = r6.w * r10.w;
        } else {
          r6.w = 1;
        }
        r7.w = r7.w * r6.w;
      } else {
        r6.w = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r6.w);
        r9.w = ~(int)r3.y;
        r8.w = r8.w ? r9.w : 0;
        if (r8.w != 0) {
          r6.w = (int)r6.w + numLights;
          r6.w = mad((int)r6.w, 15, -15);
          r8.w = abs(r3.z) * -0.200000003 + 0.400000006;
          r9.w = cmp(r3.z < 0);
          r9.w = r1.x ? r9.w : 0;
          r8.w = r9.w ? -r8.w : r8.w;
          r22.xyz = r12.xyz * r8.www + r11.xyz;
          r23.xyz = lightConstantsCB[r6.w].data[4].yzw;
          r23.w = lightConstantsCB[r6.w].data[5].x;
          r22.w = 1;
          r23.x = dot(r23.xyzw, r22.xyzw);
          r24.xyz = lightConstantsCB[r6.w].data[5].yzw;
          r24.w = lightConstantsCB[r6.w].data[6].x;
          r23.y = dot(r24.xyzw, r22.xyzw);
          r14.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r23.x = lightConstantsCB[r6.w].data[9].w + r14.z;
          r23.y = lightConstantsCB[r6.w].data[10].x + r14.w;
          r14.zw = lightConstantsCB[r6.w].data[9].yz * r23.xy;
          r23.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
          r23.zw = float2(1,1) + -r23.xy;
          r23.zw = cmp(r14.zw >= r23.zw);
          r23.xy = cmp(r23.xy >= r14.zw);
          r23.xy = (int2)r23.xy | (int2)r23.zw;
          r8.w = (int)r23.y | (int)r23.x;
          if (r8.w == 0) {
            r23.xyz = lightConstantsCB[r6.w].data[6].yzw;
            r23.w = lightConstantsCB[r6.w].data[7].x;
            r8.w = dot(r23.xyzw, r22.xyzw);
            r14.zw = saturate(r14.zw);
            r22.x = r14.z * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
            r22.y = r14.w * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
            r8.w = lightConstantsCB[r6.w].data[10].y + r8.w;
            r8.w = r8.w / lightConstantsCB[r6.w].data[10].z;
            r8.w = max(6.10351563e-05, r8.w);
            r9.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r23.x = -r14.x;
              r24.z = (uint)r9.w;
              r23.y = r15.x;
              r23.z = r14.x;
              r10.w = 0;
              r12.w = 0;
              while (true) {
                r13.w = cmp((int)r12.w >= 8);
                if (r13.w != 0) break;
                r25.x = dot(icb[r12.w+4].yx, r23.xy);
                r25.y = dot(icb[r12.w+4].yx, r23.yz);
                r24.xy = r25.xy * lightConstantsCB[r6.w].data[3].yy + r22.xy;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r8.w).x;
                r10.w = r13.w * 0.125 + r10.w;
                r12.w = (int)r12.w + 1;
              }
            } else {
              r22.z = (uint)r9.w;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
            }
            r6.w = r10.w * r10.w;
            r6.w = r6.w * r10.w;
          } else {
            r6.w = 1;
          }
          r7.w = r7.w * r6.w;
        }
      }
      r6.w = -r2.x * 0.5 + 1;
      r6.w = -r4.w * r6.w + 1;
      r6.w = r6.w * r6.w;
      r6.w = -r6.w * 0.620000005 + 0.620000005;
      r6.w = r6.w + -r4.w;
      r4.w = r0.w * r6.w + r4.w;
      r4.w = r4.w * r7.w;
      r22.xyz = r4.www * r16.yzw;
      r3.z = cmp(0 < r3.z);
      r10.xyz = r10.xyz * r2.www + r22.xyz;
      r22.xyz = -r11.xyz * r1.www + sunConstants.wldDir.xyz;
      r1.w = dot(r22.xyz, r22.xyz);
      r1.w = rsqrt(r1.w);
      r22.xyz = r22.xyz * r1.www;
      r1.w = dot(r22.xyz, r13.xyz);
      r2.w = dot(r12.xyz, r22.xyz);
      r6.w = abs(r2.w) * r0.z + -abs(r2.w);
      r2.w = abs(r2.w) * r6.w + 1;
      r3.w = r3.w * r2.y + r2.z;
      r2.w = r2.w * r2.w;
      r2.w = r2.w * r3.w;
      r2.w = rcp(r2.w);
      r2.w = r2.w * r5.z;
      r2.w = r7.w * r2.w;
      r2.w = 0.25 * r2.w;
      r22.yzw = r2.www * r16.yzw + r21.xyz;
      r1.w = saturate(1 + -r1.w);
      r3.w = r1.w * r1.w;
      r3.w = r3.w * r3.w;
      r1.w = r3.w * r1.w;
      r1.w = r2.w * r1.w;
      r23.xyz = r1.www * r16.yzw + r17.yzw;
      r16.yzw = r4.www * r16.yzw + r20.zxy;
      r24.xyz = r1.xxx ? r16.zwy : 0;
      r10.w = r20.z;
      r19.w = r24.z;
      r19.xyzw = r3.zzzz ? r10.xyzw : r19.xyzw;
      r20.zw = r23.xy;
      r24.zw = r17.yz;
      r10.xyzw = r3.zzzz ? r20.xyzw : r24.xyzw;
      r22.x = r23.z;
      r21.w = r17.w;
      r21.xyzw = r3.zzzz ? r22.yzwx : r21.xyzw;
      r20.z = r19.w;
      r20.xy = r10.xy;
      r17.yz = r10.zw;
      r17.w = r21.w;
    }
  }
  r1.w = ~(int)r3.y;
  r10.x = -r14.x;
  r2.x = -r2.x * 0.5 + 1;
  r11.w = 1;
  r22.z = 1;
  r23.w = 1;
  r24.w = 1;
  r25.w = 1;
  r10.z = r14.x;
  r26.w = 1;
  r10.yw = r15.xx;
  r14.y = r10.w;
  r15.y = r10.x;
  r15.z = r14.x;
  r27.x = r15.x;
  r27.y = r10.x;
  r27.z = r14.x;
  r28.w = 1;
  r29.x = r15.x;
  r29.y = r10.x;
  r29.z = r14.x;
  r30.x = r15.x;
  r30.y = r10.x;
  r30.z = r14.x;
  r3.yzw = r19.xyz;
  r31.xyz = r20.zxy;
  r32.xyz = r17.yzw;
  r16.yzw = r21.xyz;
  r2.w = enableDitheredShadow;
  r4.w = 0;
  while (true) {
    r5.z = cmp((uint)r4.w >= numLights);
    if (r5.z != 0) break;
    r5.z = (uint)r4.w >> 5;
  // Known bad code for instruction (needs manual fix):
    ld_structured r5.z, r5.z, l(0), g6.xxxx
  r5.z = samp0[]..swiz;
    r33.xyz = r3.yzw;
    r34.xyz = r31.xyz;
    r35.xyz = r32.xyz;
    r36.xyz = r16.yzw;
    r6.w = r2.w;
    r7.w = r5.z;
    while (true) {
      if (r7.w == 0) break;
      r8.w = firstbitlow((uint)r7.w);
      r9.w = 1 << (int)r8.w;
      r9.w = ~(int)r9.w;
      r7.w = (int)r7.w & (int)r9.w;
      r8.w = (int)r4.w + (int)r8.w;
      r8.w = (int)r8.w * 15;
      if (3 == 0) r9.w = 0; else if (3+24 < 32) {       r9.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(3 + 24)); r9.w = (uint)r9.w >> (32-3);      } else r9.w = (uint)lightConstantsCB[r8.w].data[1].w >> 24;
      r12.w = cmp((int)r9.w == 2);
      if (r12.w != 0) {
        if (3 == 0) r12.w = 0; else if (3+27 < 32) {         r12.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);        } else r12.w = (uint)lightConstantsCB[r8.w].data[1].w >> 27;
        r37.xy = lightConstantsCB[r8.w].data[3].zw + -r11.xy;
        r37.z = lightConstantsCB[r8.w].data[4].x + -r11.z;
        r13.w = dot(r37.xyz, r37.xyz);
        r13.w = rsqrt(r13.w);
        r38.xyz = r37.xyz * r13.www;
        r14.z = lightConstantsCB[r8.w].data[1].z * r0.z;
        r14.z = 0.25 * r14.z;
        r14.w = dot(r12.xyz, r38.xyz);
        r15.w = saturate(r14.w);
        r18.w = r1.x ? abs(r14.w) : r15.w;
        r19.w = cmp(0 < r18.w);
        if (r19.w != 0) {
          r38.xyz = lightConstantsCB[r8.w].data[7].yzw;
          r38.w = lightConstantsCB[r8.w].data[8].x;
          r19.w = dot(r38.xyzw, r11.xyzw);
          r20.w = cmp(r19.w < 1);
          if (r20.w != 0) {
            r39.xyz = float3(1,1,1);
            r20.w = 0;
          } else {
            r40.xyz = lightConstantsCB[r8.w].data[0].xyz + -r11.xyz;
            r21.w = lightConstantsCB[r8.w].data[3].x * lightConstantsCB[r8.w].data[3].x;
            r22.w = dot(r40.xyz, r40.xyz);
            r21.w = r21.w / r22.w;
            r21.w = min(1, r21.w);
            r40.xy = saturate(r19.ww * lightConstantsCB[r8.w].data[2].xz + lightConstantsCB[r8.w].data[2].yw);
            r40.zw = r40.xy * r40.xy;
            r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
            r40.xy = r40.zw * r40.xy;
            r21.w = r40.x * r21.w;
            r21.w = r21.w * r40.y;
            r40.xyz = lightConstantsCB[r8.w].data[4].yzw;
            r40.w = lightConstantsCB[r8.w].data[5].x;
            r40.x = dot(r40.xyzw, r11.xyzw);
            r41.xyz = lightConstantsCB[r8.w].data[5].yzw;
            r41.w = lightConstantsCB[r8.w].data[6].x;
            r40.y = dot(r41.xyzw, r11.xyzw);
            r22.xy = r40.xy / r19.ww;
            r19.w = cmp(lightConstantsCB[r8.w].data[10].w < 0.00048828125);
            if (r19.w != 0) {
              r40.xy = saturate(abs(r22.xy) * lightConstantsCB[r8.w].data[12].xy + lightConstantsCB[r8.w].data[12].zw);
              r40.zw = r40.xy * r40.xy;
              r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
              r40.xy = r40.zw * r40.xy;
              r19.w = r40.x * r40.y;
            } else {
              r40.xyzw = saturate(lightConstantsCB[r8.w].data[11].xyzw * abs(r22.yyxx));
              r40.xyzw = log2(r40.xyzw);
              r40.xyzw = lightConstantsCB[r8.w].data[12].zzzz * r40.xyzw;
              r40.xyzw = exp2(r40.xyzw);
              r40.xy = r40.xy + r40.zw;
              r40.xy = log2(r40.xy);
              r40.xy = lightConstantsCB[r8.w].data[12].ww * r40.xy;
              r40.xy = exp2(r40.xy);
              r22.w = lightConstantsCB[r8.w].data[12].x * r40.x;
              r27.w = lightConstantsCB[r8.w].data[12].y * r40.y + -1;
              r22.w = lightConstantsCB[r8.w].data[12].y * r40.y + -r22.w;
              r22.w = saturate(r27.w / r22.w);
              r27.w = r22.w * r22.w;
              r22.w = r22.w * -2 + 3;
              r19.w = r27.w * r22.w;
            }
            r20.w = r21.w * r19.w;
            r19.w = 255 & (int)lightConstantsCB[r8.w].data[14].w;
            if (r19.w != 0) {
              r21.w = dot(lightConstantsCB[r8.w].data[13].xyz, r22.xyz);
              r40.x = lightConstantsCB[r8.w].data[13].w;
              r40.yz = lightConstantsCB[r8.w].data[14].xy;
              r22.x = dot(r40.xyz, r22.xyz);
              r40.x = frac(r21.w);
              r40.y = frac(r22.x);
              r19.w = (int)r19.w + -1;
              r40.z = (uint)r19.w;
              r39.xyz = gCookieArray.SampleLevel(samplerLinear_s, r40.xyz, 0).xyz;
            } else {
              r39.xyz = float3(1,1,1);
            }
          }
          r40.x = lightConstantsCB[r8.w].data[0].w;
          r40.yz = lightConstantsCB[r8.w].data[1].xy;
          r22.xyw = r40.xyz * r39.xyz;
          r19.w = cmp(0 < r20.w);
          if (r19.w != 0) {
            r12.w = cmp((int)r12.w != 1);
            if (r12.w != 0) {
              r12.w = abs(r14.w) * -0.200000003 + 0.400000006;
              r19.w = cmp(r14.w < 0);
              r19.w = r1.x ? r19.w : 0;
              r12.w = r19.w ? -r12.w : r12.w;
              r23.xyz = r12.xyz * r12.www + r11.xyz;
              r39.xyz = lightConstantsCB[r8.w].data[6].yzw;
              r39.w = lightConstantsCB[r8.w].data[7].x;
              r12.w = dot(r39.xyzw, r23.xyzw);
              r19.w = dot(r38.xyzw, r23.xyzw);
              r21.w = cmp(r19.w >= r12.w);
              if (r21.w != 0) {
                r38.xyz = lightConstantsCB[r8.w].data[4].yzw;
                r38.w = lightConstantsCB[r8.w].data[5].x;
                r38.x = dot(r38.xyzw, r23.xyzw);
                r39.xyz = lightConstantsCB[r8.w].data[5].yzw;
                r39.w = lightConstantsCB[r8.w].data[6].x;
                r38.y = dot(r39.xyzw, r23.xyzw);
                r23.xy = r38.xy / r19.ww;
                r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r38.x = r23.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                r38.y = r23.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                r12.w = r12.w / r19.w;
                r12.w = max(6.10351563e-05, r12.w);
                r19.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
                if (r6.w != 0) {
                  r23.z = (uint)r19.w;
                  r21.w = 0;
                  r27.w = 0;
                  while (true) {
                    r29.w = cmp((int)r27.w >= 8);
                    if (r29.w != 0) break;
                    r39.x = dot(icb[r27.w+4].yx, r10.xy);
                    r39.y = dot(icb[r27.w+4].yx, r10.yz);
                    r23.xy = r39.xy * lightConstantsCB[r8.w].data[3].yy + r38.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r12.w).x;
                    r21.w = r23.x * 0.125 + r21.w;
                    r27.w = (int)r27.w + 1;
                  }
                } else {
                  r38.z = (uint)r19.w;
                  r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r12.w).x;
                }
                r12.w = r21.w * r21.w;
                r12.w = r12.w * r21.w;
              } else {
                r12.w = 1;
              }
            } else {
              r12.w = 1;
            }
            r12.w = r20.w * r12.w;
            r19.w = cmp(0 < r12.w);
            if (r19.w != 0) {
              if (4 == 0) r19.w = 0; else if (4+16 < 32) {               r19.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 16)); r19.w = (uint)r19.w >> (32-4);              } else r19.w = (uint)lightConstantsCB[r8.w].data[1].w >> 16;
              r20.w = cmp(0 < (uint)r19.w);
              r20.w = r1.y ? r20.w : 0;
              r20.w = r1.z ? r20.w : 0;
              r20.w = r3.x ? r20.w : 0;
              if (r20.w != 0) {
                r19.w = (int)r19.w + numLights;
                r19.w = mad((int)r19.w, 15, -15);
                r20.w = abs(r14.w) * -0.200000003 + 0.400000006;
                r23.x = cmp(r14.w < 0);
                r23.x = r1.x ? r23.x : 0;
                r20.w = r23.x ? -r20.w : r20.w;
                r24.xyz = r12.xyz * r20.www + r11.xyz;
                r38.xyz = lightConstantsCB[r19.w].data[6].yzw;
                r38.w = lightConstantsCB[r19.w].data[7].x;
                r20.w = dot(r38.xyzw, r24.xyzw);
                r38.xyz = lightConstantsCB[r19.w].data[7].yzw;
                r38.w = lightConstantsCB[r19.w].data[8].x;
                r23.x = dot(r38.xyzw, r24.xyzw);
                r23.y = cmp(r23.x < r20.w);
                if (r23.y == 0) {
                  r38.xyz = lightConstantsCB[r19.w].data[4].yzw;
                  r38.w = lightConstantsCB[r19.w].data[5].x;
                  r38.x = dot(r38.xyzw, r24.xyzw);
                  r39.xyz = lightConstantsCB[r19.w].data[5].yzw;
                  r39.w = lightConstantsCB[r19.w].data[6].x;
                  r38.y = dot(r39.xyzw, r24.xyzw);
                  r24.xy = r38.xy / r23.xx;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r38.x = lightConstantsCB[r19.w].data[9].w + r24.x;
                  r38.y = lightConstantsCB[r19.w].data[10].x + r24.y;
                  r24.xy = lightConstantsCB[r19.w].data[9].yz * r38.xy;
                  r38.xy = lightConstantsCB[r19.w].data[3].yy / lightConstantsCB[r19.w].data[8].yw;
                  r38.zw = float2(1,1) + -r38.xy;
                  r38.zw = cmp(r24.xy >= r38.zw);
                  r38.xy = cmp(r38.xy >= r24.xy);
                  r38.xy = (int2)r38.xy | (int2)r38.zw;
                  r23.z = (int)r38.y | (int)r38.x;
                  if (r23.z == 0) {
                    r24.xy = saturate(r24.xy);
                    r38.x = r24.x * lightConstantsCB[r19.w].data[8].y + lightConstantsCB[r19.w].data[8].z;
                    r38.y = r24.y * lightConstantsCB[r19.w].data[8].w + lightConstantsCB[r19.w].data[9].x;
                    r24.x = lightConstantsCB[r19.w].data[10].z * r23.x;
                    r20.w = lightConstantsCB[r19.w].data[10].y * r23.x + r20.w;
                    r20.w = r20.w / r24.x;
                  }
                } else {
                  r23.z = -1;
                }
                r23.x = (int)r23.y | (int)r23.z;
                if (r23.x == 0) {
                  r20.w = max(6.10351563e-05, r20.w);
                  r23.x = 0x0000ffff & (int)lightConstantsCB[r19.w].data[1].w;
                  if (r6.w != 0) {
                    r24.z = (uint)r23.x;
                    r23.yz = float2(0,0);
                    while (true) {
                      r27.w = cmp((int)r23.z >= 8);
                      if (r27.w != 0) break;
                      r39.x = dot(icb[r23.z+4].yx, r10.xw);
                      r39.y = dot(icb[r23.z+4].xy, r14.xy);
                      r24.xy = r39.xy * lightConstantsCB[r19.w].data[3].yy + r38.xy;
                      r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r20.w).x;
                      r23.y = r24.x * 0.125 + r23.y;
                      r23.z = (int)r23.z + 1;
                    }
                  } else {
                    r38.z = (uint)r23.x;
                    r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r20.w).x;
                  }
                  r19.w = r23.y * r23.y;
                  r19.w = r19.w * r23.y;
                } else {
                  r19.w = 1;
                }
                r12.w = r19.w * r12.w;
              } else {
                if (4 == 0) r19.w = 0; else if (4+20 < 32) {                 r19.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 20)); r19.w = (uint)r19.w >> (32-4);                } else r19.w = (uint)lightConstantsCB[r8.w].data[1].w >> 20;
                r20.w = cmp(0 < (uint)r19.w);
                r20.w = r20.w ? r1.w : 0;
                if (r20.w != 0) {
                  r19.w = (int)r19.w + numLights;
                  r19.w = mad((int)r19.w, 15, -15);
                  r20.w = abs(r14.w) * -0.200000003 + 0.400000006;
                  r23.x = cmp(r14.w < 0);
                  r23.x = r1.x ? r23.x : 0;
                  r20.w = r23.x ? -r20.w : r20.w;
                  r25.xyz = r12.xyz * r20.www + r11.xyz;
                  r38.xyz = lightConstantsCB[r19.w].data[6].yzw;
                  r38.w = lightConstantsCB[r19.w].data[7].x;
                  r20.w = dot(r38.xyzw, r25.xyzw);
                  r38.xyz = lightConstantsCB[r19.w].data[7].yzw;
                  r38.w = lightConstantsCB[r19.w].data[8].x;
                  r23.x = dot(r38.xyzw, r25.xyzw);
                  r23.z = cmp(r23.x < r20.w);
                  if (r23.z == 0) {
                    r38.xyz = lightConstantsCB[r19.w].data[4].yzw;
                    r38.w = lightConstantsCB[r19.w].data[5].x;
                    r24.x = dot(r38.xyzw, r25.xyzw);
                    r38.xyz = lightConstantsCB[r19.w].data[5].yzw;
                    r38.w = lightConstantsCB[r19.w].data[6].x;
                    r24.y = dot(r38.xyzw, r25.xyzw);
                    r24.xy = r24.xy / r23.xx;
                    r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r25.x = lightConstantsCB[r19.w].data[9].w + r24.x;
                    r25.y = lightConstantsCB[r19.w].data[10].x + r24.y;
                    r24.xy = lightConstantsCB[r19.w].data[9].yz * r25.xy;
                    r25.xy = lightConstantsCB[r19.w].data[3].yy / lightConstantsCB[r19.w].data[8].yw;
                    r38.xy = float2(1,1) + -r25.xy;
                    r38.xy = cmp(r24.xy >= r38.xy);
                    r25.xy = cmp(r25.xy >= r24.xy);
                    r25.xy = (int2)r25.xy | (int2)r38.xy;
                    r24.z = (int)r25.y | (int)r25.x;
                    if (r24.z == 0) {
                      r24.xy = saturate(r24.xy);
                      r25.x = r24.x * lightConstantsCB[r19.w].data[8].y + lightConstantsCB[r19.w].data[8].z;
                      r25.y = r24.y * lightConstantsCB[r19.w].data[8].w + lightConstantsCB[r19.w].data[9].x;
                      r24.x = lightConstantsCB[r19.w].data[10].z * r23.x;
                      r20.w = lightConstantsCB[r19.w].data[10].y * r23.x + r20.w;
                      r20.w = r20.w / r24.x;
                    }
                  } else {
                    r24.z = -1;
                  }
                  r23.x = (int)r23.z | (int)r24.z;
                  if (r23.x == 0) {
                    r20.w = max(6.10351563e-05, r20.w);
                    r23.x = 0x0000ffff & (int)lightConstantsCB[r19.w].data[1].w;
                    if (r6.w != 0) {
                      r24.z = (uint)r23.x;
                      r23.z = 0;
                      r27.w = 0;
                      while (true) {
                        r29.w = cmp((int)r27.w >= 8);
                        if (r29.w != 0) break;
                        r38.x = dot(icb[r27.w+4].xy, r27.xy);
                        r38.y = dot(icb[r27.w+4].yx, r27.xz);
                        r24.xy = r38.xy * lightConstantsCB[r19.w].data[3].yy + r25.xy;
                        r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r20.w).x;
                        r23.z = r24.x * 0.125 + r23.z;
                        r27.w = (int)r27.w + 1;
                      }
                    } else {
                      r25.z = (uint)r23.x;
                      r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r20.w).x;
                    }
                    r19.w = r23.z * r23.z;
                    r19.w = r19.w * r23.z;
                  } else {
                    r19.w = 1;
                  }
                  r12.w = r19.w * r12.w;
                }
              }
              r19.w = -r18.w * r2.x + 1;
              r19.w = r19.w * r19.w;
              r19.w = -r19.w * 0.620000005 + 0.620000005;
              r19.w = r19.w + -r18.w;
              r18.w = r0.w * r19.w + r18.w;
              r18.w = r18.w * r12.w;
              r14.w = cmp(0 < r14.w);
              r24.xyz = r18.www * r22.xyw + r33.xyz;
              r25.xyz = r37.xyz * r13.www + r13.xyz;
              r13.w = dot(r25.xyz, r25.xyz);
              r13.w = rsqrt(r13.w);
              r25.xyz = r25.xyz * r13.www;
              r13.w = dot(r25.xyz, r13.xyz);
              r19.w = dot(r12.xyz, r25.xyz);
              r20.w = abs(r19.w) * r0.z + -abs(r19.w);
              r19.w = abs(r19.w) * r20.w + 1;
              r20.w = r15.w * r2.y + r2.z;
              r19.w = r19.w * r19.w;
              r19.w = r19.w * r20.w;
              r19.w = rcp(r19.w);
              r14.z = r15.w * r14.z;
              r14.z = r19.w * r14.z;
              r12.w = r14.z * r12.w;
              r25.xyz = r12.www * r22.xyw + r36.xyz;
              r13.w = saturate(1 + -r13.w);
              r14.z = r13.w * r13.w;
              r14.z = r14.z * r14.z;
              r13.w = r14.z * r13.w;
              r12.w = r13.w * r12.w;
              r37.xyz = r12.www * r22.xyw + r35.xyz;
              r22.xyw = r18.www * r22.xyw + r34.xyz;
              r22.xyw = r1.xxx ? r22.xyw : r34.xyz;
              r33.xyz = r14.www ? r24.xyz : r33.xyz;
              r34.xyz = r14.www ? r34.xyz : r22.xyw;
              r35.xyz = r14.www ? r37.xyz : r35.xyz;
              r36.xyz = r14.www ? r25.xyz : r36.xyz;
            }
          }
        }
      } else {
        r9.w = cmp((int)r9.w == 4);
        if (r9.w != 0) {
          if (3 == 0) r9.w = 0; else if (3+27 < 32) {           r9.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(3 + 27)); r9.w = (uint)r9.w >> (32-3);          } else r9.w = (uint)lightConstantsCB[r8.w].data[1].w >> 27;
          r12.w = lightConstantsCB[r8.w].data[1].z * r0.z;
          r12.w = 0.25 * r12.w;
          r13.w = cmp(0 < lightConstantsCB[r8.w].data[6].y);
          r24.xy = lightConstantsCB[r8.w].data[5].zw;
          r24.z = lightConstantsCB[r8.w].data[6].x;
          r22.xyw = -r24.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r8.w].data[0].xyz;
          r25.xyz = r22.xyw + -r11.xyz;
          r14.z = dot(r24.xyz, r18.xyz);
          r14.w = dot(r24.xyz, r25.xyz);
          r15.w = dot(r18.xyz, r25.xyz);
          r18.w = -r14.z * r14.z + lightConstantsCB[r8.w].data[6].y;
          r14.z = r14.z * r15.w + -r14.w;
          r14.w = saturate(-r14.w / lightConstantsCB[r8.w].data[6].y);
          r14.z = saturate(r14.z / r18.w);
          r15.w = r18.w / lightConstantsCB[r8.w].data[6].y;
          r15.w = 10 * r15.w;
          r15.w = min(1, r15.w);
          r14.z = r14.z + -r14.w;
          r14.z = r15.w * r14.z + r14.w;
          r25.xyz = r14.zzz * r24.xyz + r22.xyw;
          r22.xyw = r14.www * r24.xyz + r22.xyw;
          r22.xyw = r13.www ? r22.xyw : lightConstantsCB[r8.w].data[0].xyz;
          r24.xyz = r13.www ? r25.xyz : lightConstantsCB[r8.w].data[0].xyz;
          r24.xyz = r24.xyz + -r11.xyz;
          r22.xyw = r22.xyw + -r11.xyz;
          r13.w = dot(r24.xyz, r24.xyz);
          r13.w = rsqrt(r13.w);
          r25.xyz = r24.xyz * r13.www;
          r14.z = dot(r22.xyw, r22.xyw);
          r14.w = rsqrt(r14.z);
          r22.xyw = r22.xyw * r14.www;
          r14.w = dot(r12.xyz, r22.xyw);
          r15.w = saturate(r14.w);
          r15.w = r1.x ? abs(r14.w) : r15.w;
          r18.w = cmp(0 < r15.w);
          if (r18.w != 0) {
            r18.w = sqrt(r14.z);
            r19.w = lightConstantsCB[r8.w].data[3].x * lightConstantsCB[r8.w].data[3].x;
            r14.z = r19.w / r14.z;
            r14.z = min(1, r14.z);
            r22.xy = saturate(r18.ww * lightConstantsCB[r8.w].data[2].xz + lightConstantsCB[r8.w].data[2].yw);
            r37.xy = r22.xy * r22.xy;
            r22.xy = r22.xy * float2(-2,-2) + float2(3,3);
            r22.xy = r37.xy * r22.xy;
            r14.z = r22.x * r14.z;
            r14.z = r14.z * r22.y;
            r18.w = cmp(0 < r14.z);
            if (r18.w != 0) {
              r9.w = cmp((int)r9.w != 1);
              if (r9.w != 0) {
                r9.w = abs(r14.w) * -0.200000003 + 0.400000006;
                r18.w = cmp(r14.w < 0);
                r18.w = r1.x ? r18.w : 0;
                r9.w = r18.w ? -r9.w : r9.w;
                r22.xyw = r12.xyz * r9.www + r11.xyz;
                r22.xyw = -lightConstantsCB[r8.w].data[4].yzw + r22.xyw;
                r9.w = max(abs(r22.y), abs(r22.w));
                r9.w = max(abs(r22.x), r9.w);
                r9.w = lightConstantsCB[r8.w].data[5].x / r9.w;
                r9.w = lightConstantsCB[r8.w].data[5].y + r9.w;
                r18.w = dot(r22.xyw, r22.xyw);
                r18.w = rsqrt(r18.w);
                r9.w = max(6.10351563e-05, r9.w);
                r19.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
                r37.w = (uint)r19.w;
                r19.w = 0;
                r20.w = 0;
                while (true) {
                  r23.x = cmp((int)r20.w >= 8);
                  if (r23.x != 0) break;
                  r38.y = dot(icb[r20.w+4].xy, r15.xy);
                  r38.z = dot(icb[r20.w+4].yx, r15.xz);
                  r38.yz = lightConstantsCB[r8.w].data[3].yy * r38.yz;
                  r38.x = r38.y * r17.x;
                  r38.w = r38.y * r16.x;
                  r37.xyz = r22.xyw * r18.www + r38.xzw;
                  r23.x = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r9.w).x;
                  r19.w = r23.x * 0.125 + r19.w;
                  r20.w = (int)r20.w + 1;
                }
              } else {
                r19.w = 1;
              }
              r9.w = r19.w * r14.z;
              r14.z = cmp(0 < r9.w);
              if (r14.z != 0) {
                if (4 == 0) r14.z = 0; else if (4+16 < 32) {                 r14.z = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 16)); r14.z = (uint)r14.z >> (32-4);                } else r14.z = (uint)lightConstantsCB[r8.w].data[1].w >> 16;
                r18.w = cmp(0 < (uint)r14.z);
                r18.w = r1.y ? r18.w : 0;
                r18.w = r1.z ? r18.w : 0;
                r18.w = r3.x ? r18.w : 0;
                if (r18.w != 0) {
                  r14.z = (int)r14.z + numLights;
                  r14.z = mad((int)r14.z, 15, -15);
                  r18.w = abs(r14.w) * -0.200000003 + 0.400000006;
                  r20.w = cmp(r14.w < 0);
                  r20.w = r1.x ? r20.w : 0;
                  r18.w = r20.w ? -r18.w : r18.w;
                  r26.xyz = r12.xyz * r18.www + r11.xyz;
                  r37.xyz = lightConstantsCB[r14.z].data[6].yzw;
                  r37.w = lightConstantsCB[r14.z].data[7].x;
                  r18.w = dot(r37.xyzw, r26.xyzw);
                  r37.xyz = lightConstantsCB[r14.z].data[7].yzw;
                  r37.w = lightConstantsCB[r14.z].data[8].x;
                  r20.w = dot(r37.xyzw, r26.xyzw);
                  r22.x = cmp(r20.w < r18.w);
                  if (r22.x == 0) {
                    r37.xyz = lightConstantsCB[r14.z].data[4].yzw;
                    r37.w = lightConstantsCB[r14.z].data[5].x;
                    r37.x = dot(r37.xyzw, r26.xyzw);
                    r38.xyz = lightConstantsCB[r14.z].data[5].yzw;
                    r38.w = lightConstantsCB[r14.z].data[6].x;
                    r37.y = dot(r38.xyzw, r26.xyzw);
                    r22.yw = r37.xy / r20.ww;
                    r22.yw = r22.yw * float2(0.5,-0.5) + float2(0.5,0.5);
                    r26.x = lightConstantsCB[r14.z].data[9].w + r22.y;
                    r26.y = lightConstantsCB[r14.z].data[10].x + r22.w;
                    r22.yw = lightConstantsCB[r14.z].data[9].yz * r26.xy;
                    r26.xy = lightConstantsCB[r14.z].data[3].yy / lightConstantsCB[r14.z].data[8].yw;
                    r37.xy = float2(1,1) + -r26.xy;
                    r37.xy = cmp(r22.yw >= r37.xy);
                    r26.xy = cmp(r26.xy >= r22.yw);
                    r26.xy = (int2)r26.xy | (int2)r37.xy;
                    r23.x = (int)r26.y | (int)r26.x;
                    if (r23.x == 0) {
                      r22.yw = saturate(r22.yw);
                      r26.x = r22.y * lightConstantsCB[r14.z].data[8].y + lightConstantsCB[r14.z].data[8].z;
                      r26.y = r22.w * lightConstantsCB[r14.z].data[8].w + lightConstantsCB[r14.z].data[9].x;
                      r22.y = lightConstantsCB[r14.z].data[10].z * r20.w;
                      r18.w = lightConstantsCB[r14.z].data[10].y * r20.w + r18.w;
                      r18.w = r18.w / r22.y;
                    }
                  } else {
                    r23.x = -1;
                  }
                  r20.w = (int)r22.x | (int)r23.x;
                  if (r20.w == 0) {
                    r18.w = max(6.10351563e-05, r18.w);
                    r20.w = 0x0000ffff & (int)lightConstantsCB[r14.z].data[1].w;
                    if (r6.w != 0) {
                      r37.z = (uint)r20.w;
                      r22.xy = float2(0,0);
                      while (true) {
                        r22.w = cmp((int)r22.y >= 8);
                        if (r22.w != 0) break;
                        r38.x = dot(icb[r22.y+4].xy, r29.xy);
                        r38.y = dot(icb[r22.y+4].yx, r29.xz);
                        r37.xy = r38.xy * lightConstantsCB[r14.z].data[3].yy + r26.xy;
                        r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r18.w).x;
                        r22.x = r22.w * 0.125 + r22.x;
                        r22.y = (int)r22.y + 1;
                      }
                    } else {
                      r26.z = (uint)r20.w;
                      r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r18.w).x;
                    }
                    r14.z = r22.x * r22.x;
                    r14.z = r14.z * r22.x;
                  } else {
                    r14.z = 1;
                  }
                  r9.w = r14.z * r9.w;
                } else {
                  if (4 == 0) r14.z = 0; else if (4+20 < 32) {                   r14.z = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 20)); r14.z = (uint)r14.z >> (32-4);                  } else r14.z = (uint)lightConstantsCB[r8.w].data[1].w >> 20;
                  r18.w = cmp(0 < (uint)r14.z);
                  r18.w = r18.w ? r1.w : 0;
                  if (r18.w != 0) {
                    r14.z = (int)r14.z + numLights;
                    r14.z = mad((int)r14.z, 15, -15);
                    r18.w = abs(r14.w) * -0.200000003 + 0.400000006;
                    r20.w = cmp(r14.w < 0);
                    r20.w = r1.x ? r20.w : 0;
                    r18.w = r20.w ? -r18.w : r18.w;
                    r28.xyz = r12.xyz * r18.www + r11.xyz;
                    r37.xyz = lightConstantsCB[r14.z].data[6].yzw;
                    r37.w = lightConstantsCB[r14.z].data[7].x;
                    r18.w = dot(r37.xyzw, r28.xyzw);
                    r37.xyz = lightConstantsCB[r14.z].data[7].yzw;
                    r37.w = lightConstantsCB[r14.z].data[8].x;
                    r20.w = dot(r37.xyzw, r28.xyzw);
                    r22.y = cmp(r20.w < r18.w);
                    if (r22.y == 0) {
                      r37.xyz = lightConstantsCB[r14.z].data[4].yzw;
                      r37.w = lightConstantsCB[r14.z].data[5].x;
                      r26.x = dot(r37.xyzw, r28.xyzw);
                      r37.xyz = lightConstantsCB[r14.z].data[5].yzw;
                      r37.w = lightConstantsCB[r14.z].data[6].x;
                      r26.y = dot(r37.xyzw, r28.xyzw);
                      r26.xy = r26.xy / r20.ww;
                      r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r28.x = lightConstantsCB[r14.z].data[9].w + r26.x;
                      r28.y = lightConstantsCB[r14.z].data[10].x + r26.y;
                      r26.xy = lightConstantsCB[r14.z].data[9].yz * r28.xy;
                      r28.xy = lightConstantsCB[r14.z].data[3].yy / lightConstantsCB[r14.z].data[8].yw;
                      r37.xy = float2(1,1) + -r28.xy;
                      r37.xy = cmp(r26.xy >= r37.xy);
                      r28.xy = cmp(r28.xy >= r26.xy);
                      r28.xy = (int2)r28.xy | (int2)r37.xy;
                      r22.w = (int)r28.y | (int)r28.x;
                      if (r22.w == 0) {
                        r26.xy = saturate(r26.xy);
                        r28.x = r26.x * lightConstantsCB[r14.z].data[8].y + lightConstantsCB[r14.z].data[8].z;
                        r28.y = r26.y * lightConstantsCB[r14.z].data[8].w + lightConstantsCB[r14.z].data[9].x;
                        r23.x = lightConstantsCB[r14.z].data[10].z * r20.w;
                        r18.w = lightConstantsCB[r14.z].data[10].y * r20.w + r18.w;
                        r18.w = r18.w / r23.x;
                      }
                    } else {
                      r22.w = -1;
                    }
                    r20.w = (int)r22.y | (int)r22.w;
                    if (r20.w == 0) {
                      r18.w = max(6.10351563e-05, r18.w);
                      r20.w = 0x0000ffff & (int)lightConstantsCB[r14.z].data[1].w;
                      if (r6.w != 0) {
                        r26.z = (uint)r20.w;
                        r22.yw = float2(0,0);
                        while (true) {
                          r23.x = cmp((int)r22.w >= 8);
                          if (r23.x != 0) break;
                          r37.x = dot(icb[r22.w+4].xy, r30.xy);
                          r37.y = dot(icb[r22.w+4].yx, r30.xz);
                          r26.xy = r37.xy * lightConstantsCB[r14.z].data[3].yy + r28.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r18.w).x;
                          r22.y = r23.x * 0.125 + r22.y;
                          r22.w = (int)r22.w + 1;
                        }
                      } else {
                        r28.z = (uint)r20.w;
                        r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r18.w).x;
                      }
                      r14.z = r22.y * r22.y;
                      r14.z = r14.z * r22.y;
                    } else {
                      r14.z = 1;
                    }
                    r9.w = r14.z * r9.w;
                  }
                }
                r14.z = -r15.w * r2.x + 1;
                r14.z = r14.z * r14.z;
                r14.z = -r14.z * 0.620000005 + 0.620000005;
                r14.z = r14.z + -r15.w;
                r14.z = r0.w * r14.z + r15.w;
                r14.z = r14.z * r9.w;
                r26.x = lightConstantsCB[r8.w].data[0].w;
                r26.yz = lightConstantsCB[r8.w].data[1].xy;
                r8.w = cmp(0 < r14.w);
                r28.xyz = r14.zzz * r26.xyz + r33.xyz;
                r14.w = saturate(dot(r12.xyz, r25.xyz));
                r24.xyz = r24.xyz * r13.www + r13.xyz;
                r13.w = dot(r24.xyz, r24.xyz);
                r13.w = rsqrt(r13.w);
                r24.xyz = r24.xyz * r13.www;
                r13.w = dot(r24.xyz, r13.xyz);
                r15.w = dot(r12.xyz, r24.xyz);
                r18.w = abs(r15.w) * r0.z + -abs(r15.w);
                r15.w = abs(r15.w) * r18.w + 1;
                r18.w = r14.w * r2.y + r2.z;
                r15.w = r15.w * r15.w;
                r15.w = r15.w * r18.w;
                r15.w = rcp(r15.w);
                r12.w = r14.w * r12.w;
                r12.w = r15.w * r12.w;
                r9.w = r12.w * r9.w;
                r24.xyz = r9.www * r26.xyz + r36.xyz;
                r12.w = saturate(1 + -r13.w);
                r13.w = r12.w * r12.w;
                r13.w = r13.w * r13.w;
                r12.w = r13.w * r12.w;
                r9.w = r12.w * r9.w;
                r25.xyz = r9.www * r26.xyz + r35.xyz;
                r26.xyz = r14.zzz * r26.xyz + r34.xyz;
                r26.xyz = r1.xxx ? r26.xyz : r34.xyz;
                r33.xyz = r8.www ? r28.xyz : r33.xyz;
                r34.xyz = r8.www ? r34.xyz : r26.xyz;
                r35.xyz = r8.www ? r25.xyz : r35.xyz;
                r36.xyz = r8.www ? r24.xyz : r36.xyz;
              }
            }
          }
        }
      }
    }
    r3.yzw = r33.xyz;
    r31.xyz = r34.xyz;
    r32.xyz = r35.xyz;
    r16.yzw = r36.xyz;
    r4.w = (int)r4.w + 32;
  }
  r2.xyz = r5.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r2.y;
  r1.yzw = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r1.y;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r1.yz = r0.ww ? r1.zw : float2(-1,0);
  r5.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r5.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r5.xy = r0.ww ? r5.yz : float2(-1,0);
  r6.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r5.zw = r0.ww ? r6.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.z = cmp((int)r0.z == (int)r0.w);
  r0.zw = r0.zz ? r6.yz : float2(-1,0);
  r6.x = r1.y;
  r6.yz = r5.xz;
  r6.w = r0.z;
  r6.xyzw = r6.xyzw + -r2.xxxx;
  r6.xyzw = cmp(abs(r6.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r6.xyzw = r6.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r6.x + r6.y;
  r0.z = r0.z + r6.z;
  r0.z = r0.z + r6.w;
  r1.y = r6.y * r5.y;
  r1.y = r6.x * r1.z + r1.y;
  r1.y = r6.z * r5.w + r1.y;
  r0.w = r6.w * r0.w + r1.y;
  r2.w = r0.w / r0.z;
  r0.z = cmp(0 >= r0.z);
  r2.yz = r0.zz ? float2(0,0) : r2.zw;
  r0.zw = (int2)r0.xy & int2(1,1);
  r0.z = cmp((int)r0.w == (int)r0.z);
  r1.yzw = r0.zzz ? r2.xyz : r2.xzy;
  r0.z = -r1.w * 0.5 + r1.y;
  r2.y = r1.w + r0.z;
  r2.z = -r1.z * 0.5 + r0.z;
  r2.x = r2.z + r1.z;
  r1.yzw = r3.yzw * r4.xyz;
  r1.yzw = r31.xyz * r2.xyz + r1.yzw;
  r5.xyz = float3(0.959999979,0.959999979,0.959999979) * r32.xyz;
  r5.xyz = r16.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r5.xyz;
  r1.yzw = r5.xyz + r1.yzw;
  r5.xyz = float3(1,1,1) + -r2.xyz;
  r5.xyz = r32.xyz * r5.xyz;
  r2.xyz = r16.yzw * r2.xyz + r5.xyz;
  r2.xyz = r3.yzw * r4.xyz + r2.xyz;
  r1.xyz = r1.xxx ? r1.yzw : r2.xyz;
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = dot(r11.xyz, r11.xyz);
    r0.w = rsqrt(r0.z);
    r2.xyz = r11.xyz * r0.www;
    r0.z = sqrt(r0.z);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r3.xy = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r0.w = cmp(0.00999999978 < abs(r11.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * r11.zz;
      r4.xy = float2(-1.44269502,-1.44269502) * r3.zw;
      r4.xy = exp2(r4.xy);
      r4.xy = float2(1,1) + -r4.xy;
      r3.zw = r4.xy / r3.zw;
      r3.zw = r3.xy * r3.zw;
      r3.xy = r0.ww ? r3.zw : r3.xy;
      r3.xzw = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
      r3.xzw = exp2(r3.xzw);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r3.xzw;
      r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xzw;
    } else {
      r0.w = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.w = cmp(0.00999999978 < abs(r11.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
      r3.w = -1.44269502 * r2.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r2.w = r3.w / r2.w;
      r2.w = r2.w * r0.w;
      r0.w = r1.w ? r2.w : r0.w;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r3.xyz = exp2(r4.xyz);
    }
    r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
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
    r2.xyz = fogConstants.atmosphereMieDensity.xyz * r0.zzz;
    r2.xyz = r0.www * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r1.xyz * r3.xyz + r2.xyz;
  } else {
    r0.z = fogConstants.heightFalloff * r11.z;
    r0.w = fogConstants.heightFalloff * r11.z + fogConstants.K0;
    r1.w = cmp(abs(r0.z) < 9.99999975e-05);
    r2.w = min(64, r0.w);
    r2.w = 1.44269502 * r2.w;
    r2.w = exp2(r2.w);
    r3.x = saturate(fogConstants.K0b);
    r3.y = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r3.y ? r2.w : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.z = r1.w ? 1 : r0.z;
    r0.z = r0.w / r0.z;
    r0.z = r1.w ? r3.x : r0.z;
    r0.z = fogConstants.expMul * r0.z;
    r0.w = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r0.w);
    r0.z = r0.z * r1.w + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r0.w = rsqrt(r0.w);
    r3.xyz = r11.xyz * r0.www;
    r0.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r0.w = saturate(fogConstants.sunFogAngles.y * r0.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r0.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.z = r3.w * r0.z;
    r3.xyz = r3.xyz + -r1.xyz;
    r2.xyz = r0.zzz * r3.xyz + r1.xyz;
  }
  r1.xyzw = relHDRExposure.yyyy * r2.xyzx;
  r2.xyzw = cmp(r1.wyzw >= float4(6.10351563e-05,6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyzw = r2.xyzw ? r1.xyzw : 0;
  r1.xyzw = min(float4(65024,65024,64512,65024), r1.xyzw);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyyy, r1.xyzw
  return;
}