// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:16 2021

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
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<gPermutedTilingBuffer> gPermutedTilingBuffer : register(t25);
StructuredBuffer<gDeferredCullBits> gDeferredCullBits : register(t26);
Texture2D<float> gSSAOTexture : register(t27);
Texture2D<float> gSSAODepthTexture : register(t28);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main()
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
// unknown dcl_: dcl_resource_structured t25, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t26, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g1, 20
// Needs manual fix for instruction: 
// unknown dcl_: dcl_tgsm_raw g2, 20
// Needs manual fix for instruction: 
// unknown dcl_: dcl_thread_group 8, 8, 1
  if (vThreadIDInGroupFlattened.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g0.x, l(0), l(0)
  // No code for instruction (needs manual fix):
    store_raw g1.xyzw, l(0), l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(16), l(0)
  // No code for instruction (needs manual fix):
    store_raw g2.xyzw, l(0), l(0,0,0,0)
  // No code for instruction (needs manual fix):
    store_raw g2.x, l(16), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = mad(permuteStride, 60, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
  r0.xz = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.xz, int2(8,8), (int2)vThreadIDInGroup.xy);
  r1.zw = float2(0,0);
  r2.xyzw = GBufferNormalAndGloss.Load(r1.xyw).xyzw;
  r3.xy = (uint2)renderTargetSize.xy;
  r3.xy = cmp((uint2)r1.xy < (uint2)r3.xy);
  r0.w = r3.y ? r3.x : 0;
  r3.x = cmp(0 < r2.z);
  r0.w = r3.x ? r0.w : 0;
  if (r0.w == 0) {
    return;
  }
  r3.x = GBufferDepth.Load(r1.xyw).x;
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r3.yz = (uint2)r1.xy;
  r5.xy = float2(0.5,0.5) + r3.yz;
  r6.x = cmp(r3.x >= 0.984375);
  r3.w = 1.01587307 * r3.x;
  r3.x = r3.x * 64 + -63;
  r3.x = r6.x ? r3.x : r3.w;
  r3.x = max(9.99999994e-09, r3.x);
  r6.y = rcp(r3.x);
  r3.xw = r6.xy ? r0.ww : 0;
  r5.zw = renderTargetSize.zw * r5.xy;
  r6.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r5.zw).xyzw;
  r7.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r5.zw).xyzw;
  r5.zw = float2(0.5,0.5) * r5.xy;
  r5.zw = frac(r5.zw);
  r8.xy = float2(1,1) + -r5.wz;
  r9.y = r8.y * r8.x;
  r9.xz = r8.xy * r5.zw;
  r9.w = r5.z * r5.w;
  r0.w = dot(r6.xyzw, r9.xyzw);
  r7.xyzw = r7.xyzw + -r3.wwww;
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
  r6.x = 0.00999999978 * r3.w;
  r5.w = cmp(r6.x < r5.w);
  r0.w = r5.w ? r5.z : r0.w;
  r0.w = r4.z * r0.w;
  if (showAO != 0) {
    r4.z = 0.75 * r0.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r4.zzzz
    return;
  } else {
    r4.z = enableAO ? r0.w : 1;
  }
  r0.w = cmp(r2.z >= 0.5);
  r6.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r10.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = -subpixelOffset.xy + r5.xy;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r5.x = inverseProjectionMatrix._m00 * r1.z;
  r5.y = inverseProjectionMatrix._m11 * r1.w;
  r5.z = 1;
  r5.xyz = r5.xyz * r3.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r5.yyy;
  r5.xyw = r5.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r5.xyz = r5.zzz * inverseViewMatrix._m20_m21_m22 + r5.xyw;
  r1.z = r2.w * 3 + 0.5;
  r1.z = (uint)r1.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r1.w = dot(r2.xy, r2.xy);
  r11.zw = float2(2,1) + -r1.ww;
  r1.w = sqrt(r11.z);
  r11.xy = r2.xy * r1.ww;
  r12.xyzw = (int4)r1.zzzz & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r1.z = (int)r12.w ^ (int)r12.z;
  r12.z = r1.z ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r2.xyw = r11.yyy * r2.xyw;
  r2.xyw = r13.xyz * r11.xxx + r2.xyw;
  r11.xyz = r12.xyz * r11.zzz + r2.xyw;
  r0.w = r0.w ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r5.xyz, -r5.xyz);
  r0.w = rsqrt(r0.w);
  r12.xyz = -r5.xyz * r0.www;
  r0.w = dot(r3.yz, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r13.x, r14.x);
  r1.zw = (uint2)r1.yx;
  r0.w = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r15.x, r16.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.w = dot(-r12.xyz, r11.xyz);
  r0.w = r0.w + r0.w;
  r17.xyz = r11.xyz * -r0.www + -r12.xyz;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.z = sqrt(r0.w);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r1.w = r2.w ? r2.z : 0;
  r2.z = 1 + -r2.y;
  r2.w = 5 * r2.z;
  r3.y = r2.z * 5 + -2.5;
  r3.y = 0.400000006 * r3.y;
  r3.y = max(0, r3.y);
  r3.zw = -r2.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r3.z = exp2(r3.z);
  r3.z = r3.z * r2.x;
  r6.w = r2.w * r2.z;
  r3.w = -r6.w * 2.0159049 + r3.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w * r2.x;
  r3.yzw = float3(100,9.1368103,9.70808983) * r3.yzw;
  r3.z = max(r3.z, r3.w);
  r3.z = max(1.26815999, r3.z);
  r3.w = numRefProbes + -numOverrideProbes;
  r6.w = (uint)r0.y >> 24;
  if (10 == 0) r0.y = 0; else if (10+12 < 32) {   r0.y = (uint)r0.y << (32-(10 + 12)); r0.y = (uint)r0.y >> (32-10);  } else r0.y = (uint)r0.y >> 12;
  r18.x = 16;
  r19.yz = float2(0,1);
  r20.xy = float2(0,0);
  r21.xz = float2(1,1);
  r22.xy = float2(0,0);
  r23.xy = float2(0,0);
  r24.xyzw = float4(0,0,0,0);
  r25.xyzw = float4(0,0,0,0);
  r7.w = 0;
  while (true) {
    r8.w = cmp((int)r7.w == 2);
    if (r8.w != 0) break;
    r8.w = r7.w ? r0.y : r6.w;
    r9.w = cmp((uint)r8.w >= (uint)r3.w);
    r10.w = cmp((uint)r8.w < numRefProbes);
    r9.w = r9.w ? r10.w : 0;
    if (r9.w != 0) {
      r8.w = (int)r8.w * 14;
      if (r1.w != 0) {
        r9.w = (int)r25.w & 3;
        r9.w = mad((int)r9.w, 20, 880);
        r18.yzw = refProbeConstantsCB[r8.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r9.w = u2.xyzw;
      }
      r26.w = (int)r25.w + 1;
      r15.yzw = -refProbeConstantsCB[r8.w].data[0].xyz + r5.xyz;
      r9.w = 0x0000ffff & (int)refProbeConstantsCB[r8.w].data[7].z;
      if (6 == 0) r10.w = 0; else if (6+25 < 32) {       r10.w = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);      } else r10.w = (uint)refProbeConstantsCB[r8.w].data[7].z >> 25;
      r12.w = (int)r9.w * 6;
      r13.z = dot(refProbeAttenuationConstantsCB[r12.w].data[0].xyz, r15.yzw);
      r13.z = saturate(refProbeAttenuationConstantsCB[r12.w].data[0].w + r13.z);
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[1].xyz, r15.yzw);
      r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[1].w + r13.w);
      r13.z = r13.z * r13.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[2].xyz, r15.yzw);
      r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[2].w + r13.w);
      r13.z = r13.z * r13.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[3].xyz, r15.yzw);
      r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[3].w + r13.w);
      r13.z = r13.z * r13.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[4].xyz, r15.yzw);
      r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[4].w + r13.w);
      r13.z = r13.z * r13.w;
      r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[5].xyz, r15.yzw);
      r12.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[5].w + r13.w);
      r19.x = r13.z * r12.w;
      r12.w = 1 & (int)refProbeConstantsCB[r8.w].data[6].x;
      r13.zw = r12.ww ? r19.xy : r19.zx;
      r12.w = refProbeConstantsCB[r8.w].data[6].x;
      r27.xy = r13.zw;
      r14.w = 1;
      while (true) {
        r16.y = cmp((int)r14.w >= (int)r10.w);
        if (r16.y != 0) break;
        r16.y = (int)r9.w + (int)r14.w;
        r16.y = (int)r16.y * 6;
        r16.z = dot(refProbeAttenuationConstantsCB[r16.y].data[0].xyz, r15.yzw);
        r16.z = saturate(refProbeAttenuationConstantsCB[r16.y].data[0].w + r16.z);
        r16.z = r27.x * r16.z;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[1].xyz, r15.yzw);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.y].data[1].w + r16.w);
        r16.z = r16.z * r16.w;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[2].xyz, r15.yzw);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.y].data[2].w + r16.w);
        r16.z = r16.z * r16.w;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[3].xyz, r15.yzw);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.y].data[3].w + r16.w);
        r16.z = r16.z * r16.w;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[4].xyz, r15.yzw);
        r16.w = saturate(refProbeAttenuationConstantsCB[r16.y].data[4].w + r16.w);
        r16.z = r16.z * r16.w;
        r16.w = dot(refProbeAttenuationConstantsCB[r16.y].data[5].xyz, r15.yzw);
        r16.y = saturate(refProbeAttenuationConstantsCB[r16.y].data[5].w + r16.w);
        r27.x = r16.z * r16.y;
        r16.w = (uint)r12.w >> 2;
        if (1 == 0) r18.y = 0; else if (1+2 < 32) {         r18.y = (uint)r12.w << (32-(1 + 2)); r18.y = (uint)r18.y >> (32-1);        } else r18.y = (uint)r12.w >> 2;
        r18.z = (int)r16.w & 2;
        r18.w = max(r27.y, r27.x);
        r16.y = -r16.z * r16.y + 1;
        r16.y = r27.y * r16.y;
        r21.y = r18.z ? r16.y : r18.w;
        r27.xy = r18.yy ? r27.xy : r21.xy;
        r14.w = (int)r14.w + 1;
        r12.w = r16.w;
      }
      r27.y = saturate(r27.y);
      r9.w = refProbeConstantsCB[r8.w].data[6].y * r27.y;
      r10.w = cmp(0 < r9.w);
      if (r10.w != 0) {
        r10.w = (int)r26.w & 7;
        r12.w = (int)r10.w + -1;
        r12.w = cmp((uint)r12.w < 32);
        r12.w = r12.w ? r1.w : 0;
        if (r12.w != 0) {
          r13.zw = mad((int2)r10.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, r13.z, u2.xxxx
        r10.w = samplerLinear[]..swiz;
          r10.w = (int)r10.w | 32;
          GBufferDiffuseColor[viewID].r13.z = u2.x;
          GBufferDiffuseColor[viewID].r13.w = u2.x;
        }
        r25.w = (int)r25.w + 257;
        r25.z = r27.y * refProbeConstantsCB[r8.w].data[6].y + r25.z;
        r9.w = refProbeConstantsCB[r8.w].data[7].y * r9.w;
        r28.x = refProbeConstantsCB[r8.w].data[7].w;
        r28.yz = refProbeConstantsCB[r8.w].data[8].xy;
        r10.w = dot(r17.xyz, r28.xyz);
        r12.w = dot(r15.yzw, r28.xyz);
        r12.w = -refProbeConstantsCB[r8.w].data[8].z + r12.w;
        r13.z = cmp(r12.w >= 0);
        r12.w = max(abs(r12.w), r3.y);
        r12.w = r13.z ? r12.w : -r12.w;
        r10.w = max(1.00000001e-07, -r10.w);
        r10.w = r12.w / r10.w;
        r10.w = min(131072, abs(r10.w));
        r28.x = refProbeConstantsCB[r8.w].data[8].w;
        r28.yz = refProbeConstantsCB[r8.w].data[9].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r13.z = dot(r15.yzw, r28.xyz);
        r13.z = -refProbeConstantsCB[r8.w].data[9].z + r13.z;
        r13.w = cmp(r13.z >= 0);
        r13.z = max(abs(r13.z), r3.y);
        r13.z = r13.w ? r13.z : -r13.z;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.z / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[9].w;
        r28.yz = refProbeConstantsCB[r8.w].data[10].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r13.z = dot(r15.yzw, r28.xyz);
        r13.z = -refProbeConstantsCB[r8.w].data[10].z + r13.z;
        r13.w = cmp(r13.z >= 0);
        r13.z = max(abs(r13.z), r3.y);
        r13.z = r13.w ? r13.z : -r13.z;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.z / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[10].w;
        r28.yz = refProbeConstantsCB[r8.w].data[11].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r13.z = dot(r15.yzw, r28.xyz);
        r13.z = -refProbeConstantsCB[r8.w].data[11].z + r13.z;
        r13.w = cmp(r13.z >= 0);
        r13.z = max(abs(r13.z), r3.y);
        r13.z = r13.w ? r13.z : -r13.z;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.z / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[11].w;
        r28.yz = refProbeConstantsCB[r8.w].data[12].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r13.z = dot(r15.yzw, r28.xyz);
        r13.z = -refProbeConstantsCB[r8.w].data[12].z + r13.z;
        r13.w = cmp(r13.z >= 0);
        r13.z = max(abs(r13.z), r3.y);
        r13.z = r13.w ? r13.z : -r13.z;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.z / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[12].w;
        r28.yz = refProbeConstantsCB[r8.w].data[13].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r13.z = dot(r15.yzw, r28.xyz);
        r13.z = -refProbeConstantsCB[r8.w].data[13].z + r13.z;
        r13.w = cmp(r13.z >= 0);
        r13.z = max(abs(r13.z), r3.y);
        r13.z = r13.w ? r13.z : -r13.z;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.z / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[3].w + r15.y;
        r28.yz = refProbeConstantsCB[r8.w].data[4].xy + r15.zw;
        r16.yzw = r17.xyz * r10.www + r28.xyz;
        r12.w = dot(r16.yzw, r16.yzw);
        r12.w = sqrt(r12.w);
        r10.w = r10.w / r12.w;
        r10.w = r10.w + r10.w;
        r10.w = sqrt(r10.w);
        r10.w = r2.z * 5 + r10.w;
        r10.w = -0.844799995 + r10.w;
        r28.x = refProbeConstantsCB[r8.w].data[0].w;
        r28.y = refProbeConstantsCB[r8.w].data[1].z;
        r28.z = refProbeConstantsCB[r8.w].data[2].y;
        r29.x = dot(r16.yzw, r28.xyz);
        r30.xy = refProbeConstantsCB[r8.w].data[1].xw;
        r30.z = refProbeConstantsCB[r8.w].data[2].z;
        r29.y = dot(r16.yzw, r30.xyz);
        r31.x = refProbeConstantsCB[r8.w].data[1].y;
        r31.yz = refProbeConstantsCB[r8.w].data[2].xw;
        r29.z = dot(r16.yzw, r31.xyz);
        if (9 == 0) r12.w = 0; else if (9+16 < 32) {         r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);        } else r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z >> 16;
        r29.w = (uint)r12.w;
        r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r10.w).xyz;
        r18.yzw = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
        r18.yzw = cmp((int3)r18.yzw == int3(2139095040,2139095040,2139095040));
        r10.w = (int)r18.z | (int)r18.y;
        r10.w = (int)r18.w | (int)r10.w;
        r16.yzw = r10.www ? float3(1,1,0) : r16.yzw;
        r32.x = dot(r15.yzw, r28.xyz);
        r32.y = dot(r15.yzw, r30.xyz);
        r32.z = dot(r15.yzw, r31.xyz);
        r15.yzw = saturate(r32.xyz * refProbeConstantsCB[r8.w].data[3].xyz + float3(0.5,0.5,0.5));
        r32.xy = refProbeConstantsCB[r8.w].data[4].zw * r15.yz;
        r32.z = refProbeConstantsCB[r8.w].data[5].x * r15.w;
        r15.yzw = refProbeConstantsCB[r8.w].data[5].yzw + r32.xyz;
        r29.x = dot(r11.xyz, r28.xyz);
        r29.y = dot(r11.xyz, r30.xyz);
        r29.z = dot(r11.xyz, r31.xyz);
        r18.yzw = cmp(float3(0,0,0) < r29.xyz);
        r20.z = r18.y ? 0 : 0.5;
        r27.xzw = r20.xyz + r15.yzw;
        r27.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xzw, 0).xyz;
        r28.xyz = r29.xyz * r29.xyz;
        r28.xyz = r28.xyz * r9.www;
        r22.z = r18.z ? 0 : 0.5;
        r30.xyz = r22.xyz + r15.yzw;
        r30.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
        r30.xyz = r30.xyz * r28.yyy;
        r27.xzw = r27.xzw * r28.xxx + r30.xyz;
        r23.z = r18.w ? 0 : 0.5;
        r15.yzw = r23.xyz + r15.yzw;
        r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
        r15.yzw = r15.yzw * r28.zzz + r27.xzw;
        r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
        r27.xzw = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
        r27.xzw = cmp((int3)r27.xzw == int3(2139095040,2139095040,2139095040));
        r8.w = (int)r27.z | (int)r27.x;
        r8.w = (int)r27.w | (int)r8.w;
        r18.yzw = r8.www ? float3(1,1,0) : r18.yzw;
        r27.xzw = r18.yzw * r15.yzw;
        r8.w = dot(r27.xzw, float3(0.212599993,0.715200007,0.0722000003));
        r24.xyz = r15.yzw * r18.yzw + r24.xyz;
        r10.w = r8.w * r3.z;
        r15.yzw = r16.yzw * r9.www;
        r9.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r8.w = r3.z * r8.w + r9.w;
        r8.w = r10.w / r8.w;
        r28.x = r24.w;
        r28.yz = r25.xy;
        r15.yzw = r15.yzw * r8.www + r28.xyz;
        r24.w = r15.y;
        r25.xy = r15.zw;
      } else {
        r26.xyz = r25.xyz;
        r25.xyzw = r26.xyzw;
      }
    }
    r7.w = (int)r7.w + 1;
  }
  r18.x = 16;
  r19.yz = float2(0,1);
  r20.xy = float2(0,0);
  r22.xy = float2(0,0);
  r23.xy = float2(0,0);
  r15.yzw = r24.xyz;
  r26.x = r24.w;
  r26.yz = r25.xy;
  r13.zw = r25.zw;
  r7.w = 0;
  while (true) {
    r8.w = cmp((int)r7.w == 2);
    if (r8.w != 0) break;
    r8.w = r7.w ? r0.y : r6.w;
    r9.w = cmp((uint)r8.w < (uint)r3.w);
    if (r9.w != 0) {
      r8.w = (int)r8.w * 14;
      if (r1.w != 0) {
        r9.w = (int)r13.w & 15;
        r9.w = mad((int)r9.w, 20, 880);
        r18.yzw = refProbeConstantsCB[r8.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r9.w = u2.xyzw;
      }
      r21.y = (int)r13.w + 1;
      r16.yzw = -refProbeConstantsCB[r8.w].data[0].xyz + r5.xyz;
      r9.w = 0x0000ffff & (int)refProbeConstantsCB[r8.w].data[7].z;
      if (6 == 0) r10.w = 0; else if (6+25 < 32) {       r10.w = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);      } else r10.w = (uint)refProbeConstantsCB[r8.w].data[7].z >> 25;
      r12.w = (int)r9.w * 6;
      r14.w = dot(refProbeAttenuationConstantsCB[r12.w].data[0].xyz, r16.yzw);
      r14.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[0].w + r14.w);
      r18.y = dot(refProbeAttenuationConstantsCB[r12.w].data[1].xyz, r16.yzw);
      r18.y = saturate(refProbeAttenuationConstantsCB[r12.w].data[1].w + r18.y);
      r14.w = r18.y * r14.w;
      r18.y = dot(refProbeAttenuationConstantsCB[r12.w].data[2].xyz, r16.yzw);
      r18.y = saturate(refProbeAttenuationConstantsCB[r12.w].data[2].w + r18.y);
      r14.w = r18.y * r14.w;
      r18.y = dot(refProbeAttenuationConstantsCB[r12.w].data[3].xyz, r16.yzw);
      r18.y = saturate(refProbeAttenuationConstantsCB[r12.w].data[3].w + r18.y);
      r14.w = r18.y * r14.w;
      r18.y = dot(refProbeAttenuationConstantsCB[r12.w].data[4].xyz, r16.yzw);
      r18.y = saturate(refProbeAttenuationConstantsCB[r12.w].data[4].w + r18.y);
      r14.w = r18.y * r14.w;
      r18.y = dot(refProbeAttenuationConstantsCB[r12.w].data[5].xyz, r16.yzw);
      r12.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[5].w + r18.y);
      r19.x = r14.w * r12.w;
      r12.w = 1 & (int)refProbeConstantsCB[r8.w].data[6].x;
      r18.yz = r12.ww ? r19.xy : r19.zx;
      r12.w = refProbeConstantsCB[r8.w].data[6].x;
      r27.xy = r18.yz;
      r14.w = 1;
      while (true) {
        r18.w = cmp((int)r14.w >= (int)r10.w);
        if (r18.w != 0) break;
        r18.w = (int)r9.w + (int)r14.w;
        r18.w = (int)r18.w * 6;
        r19.x = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r16.yzw);
        r19.x = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.x);
        r19.x = r27.x * r19.x;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r16.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r19.w);
        r19.x = r19.x * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r16.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r19.w);
        r19.x = r19.x * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r16.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r19.w);
        r19.x = r19.x * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r16.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r19.w);
        r19.x = r19.x * r19.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r16.yzw);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r19.w);
        r27.x = r19.x * r18.w;
        r19.w = (uint)r12.w >> 2;
        if (1 == 0) r20.w = 0; else if (1+2 < 32) {         r20.w = (uint)r12.w << (32-(1 + 2)); r20.w = (uint)r20.w >> (32-1);        } else r20.w = (uint)r12.w >> 2;
        r22.w = (int)r19.w & 2;
        r23.w = max(r27.y, r27.x);
        r18.w = -r19.x * r18.w + 1;
        r18.w = r27.y * r18.w;
        r21.w = r22.w ? r18.w : r23.w;
        r27.xy = r20.ww ? r27.xy : r21.zw;
        r14.w = (int)r14.w + 1;
        r12.w = r19.w;
      }
      r9.w = saturate(r27.y + -r25.z);
      r10.w = refProbeConstantsCB[r8.w].data[6].y * r9.w;
      r12.w = cmp(0 < r10.w);
      if (r12.w != 0) {
        r12.w = (int)r21.y & 31;
        r14.w = (int)r12.w + -1;
        r14.w = cmp((uint)r14.w < 32);
        r14.w = r14.w ? r1.w : 0;
        if (r14.w != 0) {
          r18.yz = mad((int2)r12.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r12.w, cb2[52].x, r18.y, u2.xxxx
        r12.w = samplerLinear[]..swiz;
          r12.w = (int)r12.w | 32;
          GBufferDiffuseColor[viewID].r18.y = u2.x;
          GBufferDiffuseColor[viewID].r18.z = u2.x;
        }
        r13.w = (int)r13.w + 257;
        r13.z = r9.w * refProbeConstantsCB[r8.w].data[6].y + r13.z;
        r9.w = refProbeConstantsCB[r8.w].data[7].y * r10.w;
        r28.x = refProbeConstantsCB[r8.w].data[7].w;
        r28.yz = refProbeConstantsCB[r8.w].data[8].xy;
        r10.w = dot(r17.xyz, r28.xyz);
        r12.w = dot(r16.yzw, r28.xyz);
        r12.w = -refProbeConstantsCB[r8.w].data[8].z + r12.w;
        r14.w = cmp(r12.w >= 0);
        r12.w = max(abs(r12.w), r3.y);
        r12.w = r14.w ? r12.w : -r12.w;
        r10.w = max(1.00000001e-07, -r10.w);
        r10.w = r12.w / r10.w;
        r10.w = min(131072, abs(r10.w));
        r28.x = refProbeConstantsCB[r8.w].data[8].w;
        r28.yz = refProbeConstantsCB[r8.w].data[9].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r14.w = dot(r16.yzw, r28.xyz);
        r14.w = -refProbeConstantsCB[r8.w].data[9].z + r14.w;
        r18.y = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r3.y);
        r14.w = r18.y ? r14.w : -r14.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r14.w / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[9].w;
        r28.yz = refProbeConstantsCB[r8.w].data[10].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r14.w = dot(r16.yzw, r28.xyz);
        r14.w = -refProbeConstantsCB[r8.w].data[10].z + r14.w;
        r18.y = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r3.y);
        r14.w = r18.y ? r14.w : -r14.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r14.w / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[10].w;
        r28.yz = refProbeConstantsCB[r8.w].data[11].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r14.w = dot(r16.yzw, r28.xyz);
        r14.w = -refProbeConstantsCB[r8.w].data[11].z + r14.w;
        r18.y = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r3.y);
        r14.w = r18.y ? r14.w : -r14.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r14.w / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[11].w;
        r28.yz = refProbeConstantsCB[r8.w].data[12].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r14.w = dot(r16.yzw, r28.xyz);
        r14.w = -refProbeConstantsCB[r8.w].data[12].z + r14.w;
        r18.y = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r3.y);
        r14.w = r18.y ? r14.w : -r14.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r14.w / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[12].w;
        r28.yz = refProbeConstantsCB[r8.w].data[13].xy;
        r12.w = dot(r17.xyz, r28.xyz);
        r14.w = dot(r16.yzw, r28.xyz);
        r14.w = -refProbeConstantsCB[r8.w].data[13].z + r14.w;
        r18.y = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r3.y);
        r14.w = r18.y ? r14.w : -r14.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r14.w / r12.w;
        r10.w = min(abs(r12.w), r10.w);
        r28.x = refProbeConstantsCB[r8.w].data[3].w + r16.y;
        r28.yz = refProbeConstantsCB[r8.w].data[4].xy + r16.zw;
        r18.yzw = r17.xyz * r10.www + r28.xyz;
        r12.w = dot(r18.yzw, r18.yzw);
        r12.w = sqrt(r12.w);
        r10.w = r10.w / r12.w;
        r10.w = r10.w + r10.w;
        r10.w = sqrt(r10.w);
        r10.w = r2.z * 5 + r10.w;
        r10.w = -0.844799995 + r10.w;
        r28.x = refProbeConstantsCB[r8.w].data[0].w;
        r28.y = refProbeConstantsCB[r8.w].data[1].z;
        r28.z = refProbeConstantsCB[r8.w].data[2].y;
        r29.x = dot(r18.yzw, r28.xyz);
        r30.xy = refProbeConstantsCB[r8.w].data[1].xw;
        r30.z = refProbeConstantsCB[r8.w].data[2].z;
        r29.y = dot(r18.yzw, r30.xyz);
        r31.x = refProbeConstantsCB[r8.w].data[1].y;
        r31.yz = refProbeConstantsCB[r8.w].data[2].xw;
        r29.z = dot(r18.yzw, r31.xyz);
        if (9 == 0) r12.w = 0; else if (9+16 < 32) {         r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);        } else r12.w = (uint)refProbeConstantsCB[r8.w].data[7].z >> 16;
        r29.w = (uint)r12.w;
        r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r10.w).xyz;
        r27.xzw = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
        r27.xzw = cmp((int3)r27.xzw == int3(2139095040,2139095040,2139095040));
        r10.w = (int)r27.z | (int)r27.x;
        r10.w = (int)r27.w | (int)r10.w;
        r18.yzw = r10.www ? float3(1,1,0) : r18.yzw;
        r32.x = dot(r16.yzw, r28.xyz);
        r32.y = dot(r16.yzw, r30.xyz);
        r32.z = dot(r16.yzw, r31.xyz);
        r16.yzw = saturate(r32.xyz * refProbeConstantsCB[r8.w].data[3].xyz + float3(0.5,0.5,0.5));
        r32.xy = refProbeConstantsCB[r8.w].data[4].zw * r16.yz;
        r32.z = refProbeConstantsCB[r8.w].data[5].x * r16.w;
        r16.yzw = refProbeConstantsCB[r8.w].data[5].yzw + r32.xyz;
        r29.x = dot(r11.xyz, r28.xyz);
        r29.y = dot(r11.xyz, r30.xyz);
        r29.z = dot(r11.xyz, r31.xyz);
        r27.xzw = cmp(float3(0,0,0) < r29.xyz);
        r20.z = r27.x ? 0 : 0.5;
        r28.xyz = r20.xyz + r16.yzw;
        r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
        r30.xyz = r29.xyz * r29.xyz;
        r30.xyz = r30.xyz * r9.www;
        r22.z = r27.z ? 0 : 0.5;
        r31.xyz = r22.xyz + r16.yzw;
        r31.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r31.xyz, 0).xyz;
        r31.xyz = r31.xyz * r30.yyy;
        r28.xyz = r28.xyz * r30.xxx + r31.xyz;
        r23.z = r27.w ? 0 : 0.5;
        r16.yzw = r23.xyz + r16.yzw;
        r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
        r16.yzw = r16.yzw * r30.zzz + r28.xyz;
        r27.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
        r28.xyz = (int3)r27.xzw & int3(-2147483648,-2147483648,-2147483648);
        r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
        r8.w = (int)r28.y | (int)r28.x;
        r8.w = (int)r28.z | (int)r8.w;
        r27.xzw = r8.www ? float3(1,1,0) : r27.xzw;
        r28.xyz = r27.xzw * r16.yzw;
        r8.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r15.yzw = r16.yzw * r27.xzw + r15.yzw;
        r10.w = r8.w * r3.z;
        r16.yzw = r18.yzw * r9.www;
        r9.w = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r8.w = r3.z * r8.w + r9.w;
        r8.w = r10.w / r8.w;
        r26.xyz = r16.yzw * r8.www + r26.xyz;
      } else {
        r21.x = r13.z;
        r13.zw = r21.xy;
      }
    }
    r7.w = (int)r7.w + 1;
  }
  r0.y = cmp(r25.z >= 1);
  bitmask.z = ((~(-1 << 8)) << 0) & 0xffffffff;  r2.z = (((uint)r13.w << 0) & bitmask.z) | ((uint)r25.w & ~bitmask.z);
  r0.y = r0.y ? r2.z : r13.w;
  r2.z = max(1, r13.z);
  r2.z = rcp(r2.z);
  r13.z = saturate(r13.z);
  r3.yzw = r15.yzw * r2.zzz;
  r16.yzw = r26.xyz * r2.zzz;
  r6.w = cmp(r13.z < 0.99000001);
  if (r6.w != 0) {
    r0.y = (int)r0.y + 256;
    r6.w = 1 + -r13.z;
    r7.w = sunConstants.globalProbeExposure * r6.w;
    r18.xyz = -globalProbeConstants.data[0].xyz + r5.xyz;
    r19.x = globalProbeConstants.data[0].w * r18.x;
    r19.yz = globalProbeConstants.data[1].xy * r18.yz;
    r18.xyz = saturate(float3(0.5,0.5,0.5) + r19.xyz);
    r19.xy = globalProbeConstants.data[1].zw * r18.xy;
    r19.z = globalProbeConstants.data[2].x * r18.z;
    r18.xyz = globalProbeConstants.data[2].yzw + r19.xyz;
    r19.xyz = cmp(float3(0,0,0) < r11.xyz);
    r19.xyz = r19.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r19.w = 0;
    r20.xyz = r19.wwx + r18.xyz;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r21.xyz = r11.xyz * r11.xyz;
    r21.xyz = r21.xyz * r7.www;
    r22.xyz = r19.wwy + r18.xyz;
    r22.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r22.xyz = r22.xyz * r21.yyy;
    r20.xyz = r20.xyz * r21.xxx + r22.xyz;
    r18.xyz = r19.wwz + r18.xyz;
    r18.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r21.zzz + r20.xyz;
    r11.w = 0;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r18.xyz = r19.xyz * r18.xyz;
    r7.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r3.yzw = r15.yzw * r2.zzz + r18.xyz;
    r17.w = 0;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r2.w).xyz;
    r2.z = sunConstants.globalProbeExposure * r6.w + -r7.w;
    r2.z = r2.y * r2.z + r7.w;
    r16.yzw = r15.yzw * r2.zzz + r16.yzw;
  }
  r2.z = r2.x + r4.z;
  r2.z = log2(abs(r2.z));
  r2.z = r2.z * r1.z;
  r2.z = exp2(r2.z);
  r2.z = r2.z + r4.z;
  r2.z = saturate(-1 + r2.z);
  r3.yzw = r3.yzw * r4.zzz;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r15.yzw = r16.yzw * r2.zzz;
  r16.yzw = r15.yzw * r2.yyy;
  r2.yzw = r15.yzw * r2.www;
  r4.z = sqrt(r1.z);
  r4.z = r4.z * 0.5 + 0.5;
  r4.z = r4.z * r4.z;
  r6.w = 0.5 * r4.z;
  r4.z = -r4.z * 0.5 + 1;
  r7.w = r2.x * r4.z + r6.w;
  r4.z = r7.w * r4.z;
  r6.w = r7.w * r6.w;
  r7.w = (uint)renderTargetSize.x;
  r7.w = (int)r7.w + 7;
  r7.w = (uint)r7.w >> 3;
  r7.w = mad((int)r0.z, (int)r7.w, (int)r0.x);
  r7.w = (uint)r7.w << 5;
  r8.w = ~(int)r3.x;
  r18.x = -r13.x;
  r2.x = -r2.x * 0.5 + 1;
  r19.x = 2;
  r5.w = 1;
  r20.x = 2;
  r21.z = 1;
  r22.w = 1;
  r23.w = 1;
  r24.w = 1;
  r18.z = r13.x;
  r25.w = 1;
  r18.yw = r14.xx;
  r13.y = r18.w;
  r14.y = r18.x;
  r26.x = r14.x;
  r26.y = r18.x;
  r26.z = r13.x;
  r14.z = r13.x;
  r27.w = 1;
  r28.x = r14.x;
  r28.y = r18.x;
  r28.z = r13.x;
  r29.x = r14.x;
  r29.y = r18.x;
  r29.z = r13.x;
  r15.yzw = r3.yzw;
  r30.xyz = r16.yzw;
  r31.xyz = r2.yzw;
  r9.w = enableDitheredShadow;
  r10.w = 0;
  r11.w = 0;
  while (true) {
    r12.w = cmp((uint)r11.w >= numLights);
    if (r12.w != 0) break;
    r12.w = (uint)r11.w >> 5;
    r12.w = (int)r7.w + (int)r12.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t26.xxxx
  r12.w = samplerLinear[]..swiz;
    r32.xyz = r15.yzw;
    r33.xyz = r30.xyz;
    r34.xyz = r31.xyz;
    r13.z = r9.w;
    r13.w = r10.w;
    r14.w = r12.w;
    while (true) {
      if (r14.w == 0) break;
      r17.w = firstbitlow((uint)r14.w);
      r21.w = 1 << (int)r17.w;
      r21.w = ~(int)r21.w;
      r14.w = (int)r14.w & (int)r21.w;
      r17.w = (int)r11.w + (int)r17.w;
      r17.w = (int)r17.w * 15;
      if (3 == 0) r21.w = 0; else if (3+24 < 32) {       r21.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(3 + 24)); r21.w = (uint)r21.w >> (32-3);      } else r21.w = (uint)lightConstantsCB[r17.w].data[1].w >> 24;
      r26.w = cmp((int)r21.w == 2);
      if (r26.w != 0) {
        if (3 == 0) r26.w = 0; else if (3+27 < 32) {         r26.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(3 + 27)); r26.w = (uint)r26.w >> (32-3);        } else r26.w = (uint)lightConstantsCB[r17.w].data[1].w >> 27;
        r28.w = (int)r13.w & 255;
        r29.w = cmp((uint)r28.w < 32);
        r29.w = r29.w ? r1.w : 0;
        if (r29.w != 0) {
          r28.w = mad((int)r28.w, 24, 112);
          r19.yzw = lightConstantsCB[r17.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r28.w = u2.xyzw;
        }
        r19.y = (int)r13.w + 1;
        r35.xy = lightConstantsCB[r17.w].data[3].zw + -r5.xy;
        r35.z = lightConstantsCB[r17.w].data[4].x + -r5.z;
        r19.z = dot(r35.xyz, r35.xyz);
        r19.z = rsqrt(r19.z);
        r36.xyz = r35.xyz * r19.zzz;
        r19.w = lightConstantsCB[r17.w].data[1].z * r0.w;
        r19.w = 0.25 * r19.w;
        r28.w = dot(r11.xyz, r36.xyz);
        r29.w = saturate(r28.w);
        r30.w = cmp(0 < r29.w);
        if (r30.w != 0) {
          r36.xyz = lightConstantsCB[r17.w].data[7].yzw;
          r36.w = lightConstantsCB[r17.w].data[8].x;
          r30.w = dot(r36.xyzw, r5.xyzw);
          r31.w = cmp(r30.w < 1);
          if (r31.w != 0) {
            r37.xyz = float3(1,1,1);
            r31.w = 0;
          } else {
            r38.xyz = lightConstantsCB[r17.w].data[0].xyz + -r5.xyz;
            r32.w = lightConstantsCB[r17.w].data[3].x * lightConstantsCB[r17.w].data[3].x;
            r33.w = dot(r38.xyz, r38.xyz);
            r32.w = r32.w / r33.w;
            r32.w = min(1, r32.w);
            r38.xy = saturate(r30.ww * lightConstantsCB[r17.w].data[2].xz + lightConstantsCB[r17.w].data[2].yw);
            r38.zw = r38.xy * r38.xy;
            r38.xy = r38.xy * float2(-2,-2) + float2(3,3);
            r38.xy = r38.zw * r38.xy;
            r32.w = r38.x * r32.w;
            r32.w = r32.w * r38.y;
            r38.xyz = lightConstantsCB[r17.w].data[4].yzw;
            r38.w = lightConstantsCB[r17.w].data[5].x;
            r38.x = dot(r38.xyzw, r5.xyzw);
            r39.xyz = lightConstantsCB[r17.w].data[5].yzw;
            r39.w = lightConstantsCB[r17.w].data[6].x;
            r38.y = dot(r39.xyzw, r5.xyzw);
            r21.xy = r38.xy / r30.ww;
            r30.w = cmp(lightConstantsCB[r17.w].data[10].w < 0.00048828125);
            if (r30.w != 0) {
              r38.xy = saturate(abs(r21.xy) * lightConstantsCB[r17.w].data[12].xy + lightConstantsCB[r17.w].data[12].zw);
              r38.zw = r38.xy * r38.xy;
              r38.xy = r38.xy * float2(-2,-2) + float2(3,3);
              r38.xy = r38.zw * r38.xy;
              r30.w = r38.x * r38.y;
            } else {
              r38.xyzw = saturate(lightConstantsCB[r17.w].data[11].xyzw * abs(r21.yyxx));
              r38.xyzw = log2(r38.xyzw);
              r38.xyzw = lightConstantsCB[r17.w].data[12].zzzz * r38.xyzw;
              r38.xyzw = exp2(r38.xyzw);
              r38.xy = r38.xy + r38.zw;
              r38.xy = log2(r38.xy);
              r38.xy = lightConstantsCB[r17.w].data[12].ww * r38.xy;
              r38.xy = exp2(r38.xy);
              r33.w = lightConstantsCB[r17.w].data[12].x * r38.x;
              r34.w = lightConstantsCB[r17.w].data[12].y * r38.y + -1;
              r33.w = lightConstantsCB[r17.w].data[12].y * r38.y + -r33.w;
              r33.w = saturate(r34.w / r33.w);
              r34.w = r33.w * r33.w;
              r33.w = r33.w * -2 + 3;
              r30.w = r34.w * r33.w;
            }
            r31.w = r32.w * r30.w;
            r30.w = 255 & (int)lightConstantsCB[r17.w].data[14].w;
            if (r30.w != 0) {
              r32.w = dot(lightConstantsCB[r17.w].data[13].xyz, r21.xyz);
              r38.x = lightConstantsCB[r17.w].data[13].w;
              r38.yz = lightConstantsCB[r17.w].data[14].xy;
              r21.x = dot(r38.xyz, r21.xyz);
              r38.x = frac(r32.w);
              r38.y = frac(r21.x);
              r21.x = (int)r30.w + -1;
              r38.z = (uint)r21.x;
              r37.xyz = gCookieArray.SampleLevel(samplerLinear_s, r38.xyz, 0).xyz;
            } else {
              r37.xyz = float3(1,1,1);
            }
          }
          r38.x = lightConstantsCB[r17.w].data[0].w;
          r38.yz = lightConstantsCB[r17.w].data[1].xy;
          r37.xyz = r38.xyz * r37.xyz;
          r21.x = cmp(0 < r31.w);
          if (r21.x != 0) {
            r21.x = (int)r19.y & 255;
            r21.y = (int)r21.x + -1;
            r21.y = cmp((uint)r21.y < 32);
            r21.y = r21.y ? r1.w : 0;
            if (r21.y != 0) {
              r21.xy = mad((int2)r21.xx, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r30.w, cb2[52].x, r21.x, u2.xxxx
            r30.w = samplerLinear[]..swiz;
              r30.w = (int)r30.w | 4;
              GBufferDiffuseColor[viewID].r21.x = u2.x;
              GBufferDiffuseColor[viewID].r21.y = u2.x;
            }
            r21.x = (int)r13.w + 257;
            r21.y = cmp((int)r26.w != 1);
            if (r21.y != 0) {
              r21.y = abs(r28.w) * -0.200000003 + 0.400000006;
              r22.xyz = r11.xyz * r21.yyy + r5.xyz;
              r38.xyz = lightConstantsCB[r17.w].data[6].yzw;
              r38.w = lightConstantsCB[r17.w].data[7].x;
              r21.y = dot(r38.xyzw, r22.xyzw);
              r26.w = dot(r36.xyzw, r22.xyzw);
              r30.w = cmp(r26.w >= r21.y);
              if (r30.w != 0) {
                r36.xyz = lightConstantsCB[r17.w].data[4].yzw;
                r36.w = lightConstantsCB[r17.w].data[5].x;
                r36.x = dot(r36.xyzw, r22.xyzw);
                r38.xyz = lightConstantsCB[r17.w].data[5].yzw;
                r38.w = lightConstantsCB[r17.w].data[6].x;
                r36.y = dot(r38.xyzw, r22.xyzw);
                r22.xy = r36.xy / r26.ww;
                r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r36.x = r22.x * lightConstantsCB[r17.w].data[8].y + lightConstantsCB[r17.w].data[8].z;
                r36.y = r22.y * lightConstantsCB[r17.w].data[8].w + lightConstantsCB[r17.w].data[9].x;
                r21.y = r21.y / r26.w;
                r21.y = max(6.10351563e-05, r21.y);
                r22.x = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                if (r13.z != 0) {
                  r38.z = (uint)r22.x;
                  r22.yz = float2(0,0);
                  while (true) {
                    r26.w = cmp((int)r22.z >= 8);
                    if (r26.w != 0) break;
                    r39.x = dot(icb[r22.z+0].yx, r18.xy);
                    r39.y = dot(icb[r22.z+0].yx, r18.yz);
                    r38.xy = r39.xy * lightConstantsCB[r17.w].data[3].yy + r36.xy;
                    r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r21.y).x;
                    r22.y = r26.w * 0.125 + r22.y;
                    r22.z = (int)r22.z + 1;
                  }
                } else {
                  r36.z = (uint)r22.x;
                  r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r21.y).x;
                }
                r21.y = r22.y * r22.y;
                r21.y = r21.y * r22.y;
              } else {
                r21.y = 1;
              }
            } else {
              r21.y = 1;
            }
            r21.y = r31.w * r21.y;
            r22.x = cmp(0 < r21.y);
            if (r22.x != 0) {
              if (4 == 0) r22.x = 0; else if (4+16 < 32) {               r22.x = (uint)lightConstantsCB[r17.w].data[1].w << (32-(4 + 16)); r22.x = (uint)r22.x >> (32-4);              } else r22.x = (uint)lightConstantsCB[r17.w].data[1].w >> 16;
              r22.z = cmp(0 < (uint)r22.x);
              r22.z = r22.z ? r3.x : 0;
              if (r22.z != 0) {
                r22.x = (int)r22.x + numLights;
                r22.x = mad((int)r22.x, 15, -15);
                r22.z = abs(r28.w) * -0.200000003 + 0.400000006;
                r23.xyz = r11.xyz * r22.zzz + r5.xyz;
                r36.xyz = lightConstantsCB[r22.x].data[6].yzw;
                r36.w = lightConstantsCB[r22.x].data[7].x;
                r22.z = dot(r36.xyzw, r23.xyzw);
                r36.xyz = lightConstantsCB[r22.x].data[7].yzw;
                r36.w = lightConstantsCB[r22.x].data[8].x;
                r26.w = dot(r36.xyzw, r23.xyzw);
                r30.w = cmp(r26.w < r22.z);
                if (r30.w == 0) {
                  r36.xyz = lightConstantsCB[r22.x].data[4].yzw;
                  r36.w = lightConstantsCB[r22.x].data[5].x;
                  r36.x = dot(r36.xyzw, r23.xyzw);
                  r38.xyz = lightConstantsCB[r22.x].data[5].yzw;
                  r38.w = lightConstantsCB[r22.x].data[6].x;
                  r36.y = dot(r38.xyzw, r23.xyzw);
                  r23.xy = r36.xy / r26.ww;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r36.x = lightConstantsCB[r22.x].data[9].w + r23.x;
                  r36.y = lightConstantsCB[r22.x].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r22.x].data[9].yz * r36.xy;
                  r36.xy = lightConstantsCB[r22.x].data[3].yy / lightConstantsCB[r22.x].data[8].yw;
                  r36.zw = float2(1,1) + -r36.xy;
                  r36.zw = cmp(r23.xy >= r36.zw);
                  r36.xy = cmp(r36.xy >= r23.xy);
                  r36.xy = (int2)r36.xy | (int2)r36.zw;
                  r23.z = (int)r36.y | (int)r36.x;
                  if (r23.z == 0) {
                    r23.xy = saturate(r23.xy);
                    r36.x = r23.x * lightConstantsCB[r22.x].data[8].y + lightConstantsCB[r22.x].data[8].z;
                    r36.y = r23.y * lightConstantsCB[r22.x].data[8].w + lightConstantsCB[r22.x].data[9].x;
                    r23.x = lightConstantsCB[r22.x].data[10].z * r26.w;
                    r22.z = lightConstantsCB[r22.x].data[10].y * r26.w + r22.z;
                    r22.z = r22.z / r23.x;
                  }
                } else {
                  r23.z = -1;
                }
                r23.x = (int)r30.w | (int)r23.z;
                if (r23.x == 0) {
                  r22.z = max(6.10351563e-05, r22.z);
                  r23.x = 0x0000ffff & (int)lightConstantsCB[r22.x].data[1].w;
                  if (r13.z != 0) {
                    r38.z = (uint)r23.x;
                    r23.yz = float2(0,0);
                    while (true) {
                      r26.w = cmp((int)r23.z >= 8);
                      if (r26.w != 0) break;
                      r39.x = dot(icb[r23.z+0].yx, r18.xw);
                      r39.y = dot(icb[r23.z+0].xy, r13.xy);
                      r38.xy = r39.xy * lightConstantsCB[r22.x].data[3].yy + r36.xy;
                      r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r22.z).x;
                      r23.y = r26.w * 0.125 + r23.y;
                      r23.z = (int)r23.z + 1;
                    }
                  } else {
                    r36.z = (uint)r23.x;
                    r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r22.z).x;
                  }
                  r22.x = r23.y * r23.y;
                  r22.x = r22.x * r23.y;
                } else {
                  r22.x = 1;
                }
                r21.y = r22.x * r21.y;
              } else {
                if (4 == 0) r22.x = 0; else if (4+20 < 32) {                 r22.x = (uint)lightConstantsCB[r17.w].data[1].w << (32-(4 + 20)); r22.x = (uint)r22.x >> (32-4);                } else r22.x = (uint)lightConstantsCB[r17.w].data[1].w >> 20;
                r22.z = cmp(0 < (uint)r22.x);
                r22.z = r22.z ? r8.w : 0;
                if (r22.z != 0) {
                  r22.x = (int)r22.x + numLights;
                  r22.x = mad((int)r22.x, 15, -15);
                  r22.z = abs(r28.w) * -0.200000003 + 0.400000006;
                  r24.xyz = r11.xyz * r22.zzz + r5.xyz;
                  r36.xyz = lightConstantsCB[r22.x].data[6].yzw;
                  r36.w = lightConstantsCB[r22.x].data[7].x;
                  r22.z = dot(r36.xyzw, r24.xyzw);
                  r36.xyz = lightConstantsCB[r22.x].data[7].yzw;
                  r36.w = lightConstantsCB[r22.x].data[8].x;
                  r23.x = dot(r36.xyzw, r24.xyzw);
                  r23.z = cmp(r23.x < r22.z);
                  if (r23.z == 0) {
                    r36.xyz = lightConstantsCB[r22.x].data[4].yzw;
                    r36.w = lightConstantsCB[r22.x].data[5].x;
                    r36.x = dot(r36.xyzw, r24.xyzw);
                    r38.xyz = lightConstantsCB[r22.x].data[5].yzw;
                    r38.w = lightConstantsCB[r22.x].data[6].x;
                    r36.y = dot(r38.xyzw, r24.xyzw);
                    r24.xy = r36.xy / r23.xx;
                    r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r36.x = lightConstantsCB[r22.x].data[9].w + r24.x;
                    r36.y = lightConstantsCB[r22.x].data[10].x + r24.y;
                    r24.xy = lightConstantsCB[r22.x].data[9].yz * r36.xy;
                    r36.xy = lightConstantsCB[r22.x].data[3].yy / lightConstantsCB[r22.x].data[8].yw;
                    r36.zw = float2(1,1) + -r36.xy;
                    r36.zw = cmp(r24.xy >= r36.zw);
                    r36.xy = cmp(r36.xy >= r24.xy);
                    r36.xy = (int2)r36.xy | (int2)r36.zw;
                    r24.z = (int)r36.y | (int)r36.x;
                    if (r24.z == 0) {
                      r24.xy = saturate(r24.xy);
                      r36.x = r24.x * lightConstantsCB[r22.x].data[8].y + lightConstantsCB[r22.x].data[8].z;
                      r36.y = r24.y * lightConstantsCB[r22.x].data[8].w + lightConstantsCB[r22.x].data[9].x;
                      r24.x = lightConstantsCB[r22.x].data[10].z * r23.x;
                      r22.z = lightConstantsCB[r22.x].data[10].y * r23.x + r22.z;
                      r22.z = r22.z / r24.x;
                    }
                  } else {
                    r24.z = -1;
                  }
                  r23.x = (int)r23.z | (int)r24.z;
                  if (r23.x == 0) {
                    r22.z = max(6.10351563e-05, r22.z);
                    r23.x = 0x0000ffff & (int)lightConstantsCB[r22.x].data[1].w;
                    if (r13.z != 0) {
                      r24.z = (uint)r23.x;
                      r23.z = 0;
                      r26.w = 0;
                      while (true) {
                        r30.w = cmp((int)r26.w >= 8);
                        if (r30.w != 0) break;
                        r38.x = dot(icb[r26.w+0].xy, r26.xy);
                        r38.y = dot(icb[r26.w+0].yx, r26.xz);
                        r24.xy = r38.xy * lightConstantsCB[r22.x].data[3].yy + r36.xy;
                        r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r22.z).x;
                        r23.z = r24.x * 0.125 + r23.z;
                        r26.w = (int)r26.w + 1;
                      }
                    } else {
                      r36.z = (uint)r23.x;
                      r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r22.z).x;
                    }
                    r22.x = r23.z * r23.z;
                    r22.x = r22.x * r23.z;
                  } else {
                    r22.x = 1;
                  }
                  r21.y = r22.x * r21.y;
                }
              }
              r22.x = -r29.w * r2.x + 1;
              r22.x = r22.x * r22.x;
              r22.x = -r22.x * 0.620000005 + 0.620000005;
              r22.x = r22.x + -r29.w;
              r22.x = r1.z * r22.x + r29.w;
              r22.x = r22.x * r21.y;
              r22.z = cmp(0 < r28.w);
              r24.xyz = r22.xxx * r37.xyz + r32.xyz;
              r35.xyz = r35.xyz * r19.zzz + r12.xyz;
              r19.z = dot(r35.xyz, r35.xyz);
              r19.z = rsqrt(r19.z);
              r35.xyz = r35.xyz * r19.zzz;
              r19.z = dot(r35.xyz, r12.xyz);
              r22.x = dot(r11.xyz, r35.xyz);
              r23.x = abs(r22.x) * r0.w + -abs(r22.x);
              r22.x = abs(r22.x) * r23.x + 1;
              r23.x = r29.w * r4.z + r6.w;
              r22.x = r22.x * r22.x;
              r22.x = r22.x * r23.x;
              r22.x = rcp(r22.x);
              r19.w = r29.w * r19.w;
              r19.w = r22.x * r19.w;
              r19.w = r19.w * r21.y;
              r35.xyz = r19.www * r37.xyz + r34.xyz;
              r19.z = saturate(1 + -r19.z);
              r22.x = r19.z * r19.z;
              r22.x = r22.x * r22.x;
              r19.z = r22.x * r19.z;
              r19.z = r19.w * r19.z;
              r36.xyz = r19.zzz * r37.xyz + r33.xyz;
              r32.xyz = r22.zzz ? r24.xyz : r32.xyz;
              r33.xyz = r22.zzz ? r36.xyz : r33.xyz;
              r34.xyz = r22.zzz ? r35.xyz : r34.xyz;
              r19.z = (int)r21.x & 255;
              r19.w = (int)r19.z + -1;
              r19.w = cmp((uint)r19.w < 32);
              r19.w = r19.w ? r1.w : 0;
              if (r19.w != 0) {
                r19.zw = mad((int2)r19.zz, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r22.x, cb2[52].x, r19.z, u2.xxxx
              r22.x = samplerLinear[]..swiz;
                r22.x = (int)r22.x | 8;
                GBufferDiffuseColor[viewID].r19.z = u2.x;
                GBufferDiffuseColor[viewID].r19.w = u2.x;
              }
              r13.w = (int)r13.w + 0x00010101;
            } else {
              r13.w = r21.x;
            }
          } else {
            r13.w = r19.y;
          }
        } else {
          r13.w = r19.y;
        }
      } else {
        r19.y = cmp((int)r21.w == 4);
        if (r19.y != 0) {
          if (3 == 0) r19.y = 0; else if (3+27 < 32) {           r19.y = (uint)lightConstantsCB[r17.w].data[1].w << (32-(3 + 27)); r19.y = (uint)r19.y >> (32-3);          } else r19.y = (uint)lightConstantsCB[r17.w].data[1].w >> 27;
          r19.z = (int)r13.w & 255;
          r19.w = cmp((uint)r19.z < 32);
          r19.w = r19.w ? r1.w : 0;
          if (r19.w != 0) {
            r19.z = mad((int)r19.z, 24, 112);
            r20.yzw = lightConstantsCB[r17.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r19.z = u2.xyzw;
          }
          r19.z = (int)r13.w + 1;
          r19.w = lightConstantsCB[r17.w].data[1].z * r0.w;
          r19.w = 0.25 * r19.w;
          r20.y = cmp(0 < lightConstantsCB[r17.w].data[6].y);
          r24.xy = lightConstantsCB[r17.w].data[5].zw;
          r24.z = lightConstantsCB[r17.w].data[6].x;
          r21.xyw = -r24.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r17.w].data[0].xyz;
          r35.xyz = r21.xyw + -r5.xyz;
          r20.z = dot(r24.xyz, r17.xyz);
          r20.w = dot(r24.xyz, r35.xyz);
          r22.x = dot(r17.xyz, r35.xyz);
          r22.z = -r20.z * r20.z + lightConstantsCB[r17.w].data[6].y;
          r20.z = r20.z * r22.x + -r20.w;
          r20.w = saturate(-r20.w / lightConstantsCB[r17.w].data[6].y);
          r20.z = saturate(r20.z / r22.z);
          r22.x = r22.z / lightConstantsCB[r17.w].data[6].y;
          r22.x = 10 * r22.x;
          r22.x = min(1, r22.x);
          r20.z = r20.z + -r20.w;
          r20.z = r22.x * r20.z + r20.w;
          r35.xyz = r20.zzz * r24.xyz + r21.xyw;
          r21.xyw = r20.www * r24.xyz + r21.xyw;
          r21.xyw = r20.yyy ? r21.xyw : lightConstantsCB[r17.w].data[0].xyz;
          r20.yzw = r20.yyy ? r35.xyz : lightConstantsCB[r17.w].data[0].xyz;
          r20.yzw = r20.yzw + -r5.xyz;
          r21.xyw = r21.xyw + -r5.xyz;
          r22.x = dot(r20.yzw, r20.yzw);
          r22.x = rsqrt(r22.x);
          r24.xyz = r22.xxx * r20.yzw;
          r22.z = dot(r21.xyw, r21.xyw);
          r23.x = rsqrt(r22.z);
          r21.xyw = r23.xxx * r21.xyw;
          r21.x = dot(r11.xyz, r21.xyw);
          r21.y = saturate(r21.x);
          r21.w = cmp(0 < r21.y);
          if (r21.w != 0) {
            r21.w = sqrt(r22.z);
            r23.x = lightConstantsCB[r17.w].data[3].x * lightConstantsCB[r17.w].data[3].x;
            r22.z = r23.x / r22.z;
            r22.z = min(1, r22.z);
            r35.xy = saturate(r21.ww * lightConstantsCB[r17.w].data[2].xz + lightConstantsCB[r17.w].data[2].yw);
            r35.zw = r35.xy * r35.xy;
            r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
            r35.xy = r35.zw * r35.xy;
            r21.w = r35.x * r22.z;
            r21.w = r21.w * r35.y;
            r22.z = cmp(0 < r21.w);
            if (r22.z != 0) {
              r22.z = (int)r19.z & 255;
              r23.x = (int)r22.z + -1;
              r23.x = cmp((uint)r23.x < 32);
              r23.x = r23.x ? r1.w : 0;
              if (r23.x != 0) {
                r35.xy = mad((int2)r22.zz, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r22.z, cb2[52].x, r35.x, u2.xxxx
              r22.z = samplerLinear[]..swiz;
                r22.z = (int)r22.z | 4;
                GBufferDiffuseColor[viewID].r35.x = u2.x;
                GBufferDiffuseColor[viewID].r35.y = u2.x;
              }
              r22.z = (int)r13.w + 257;
              r19.y = cmp((int)r19.y != 1);
              if (r19.y != 0) {
                r19.y = abs(r21.x) * -0.200000003 + 0.400000006;
                r35.xyz = r11.xyz * r19.yyy + r5.xyz;
                r35.xyz = -lightConstantsCB[r17.w].data[4].yzw + r35.xyz;
                r19.y = max(abs(r35.y), abs(r35.z));
                r19.y = max(abs(r35.x), r19.y);
                r19.y = lightConstantsCB[r17.w].data[5].x / r19.y;
                r19.y = lightConstantsCB[r17.w].data[5].y + r19.y;
                r23.x = dot(r35.xyz, r35.xyz);
                r23.x = rsqrt(r23.x);
                r19.y = max(6.10351563e-05, r19.y);
                r26.w = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                r36.w = (uint)r26.w;
                r26.w = 0;
                r28.w = 0;
                while (true) {
                  r29.w = cmp((int)r28.w >= 8);
                  if (r29.w != 0) break;
                  r37.y = dot(icb[r28.w+0].xy, r14.xy);
                  r37.z = dot(icb[r28.w+0].yx, r14.xz);
                  r37.yz = lightConstantsCB[r17.w].data[3].yy * r37.yz;
                  r37.x = r37.y * r16.x;
                  r37.w = r37.y * r15.x;
                  r36.xyz = r35.xyz * r23.xxx + r37.xzw;
                  r29.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyzw, r19.y).x;
                  r26.w = r29.w * 0.125 + r26.w;
                  r28.w = (int)r28.w + 1;
                }
              } else {
                r26.w = 1;
              }
              r19.y = r26.w * r21.w;
              r21.w = cmp(0 < r19.y);
              if (r21.w != 0) {
                if (4 == 0) r21.w = 0; else if (4+16 < 32) {                 r21.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(4 + 16)); r21.w = (uint)r21.w >> (32-4);                } else r21.w = (uint)lightConstantsCB[r17.w].data[1].w >> 16;
                r23.x = cmp(0 < (uint)r21.w);
                r23.x = r23.x ? r3.x : 0;
                if (r23.x != 0) {
                  r21.w = (int)r21.w + numLights;
                  r21.w = mad((int)r21.w, 15, -15);
                  r23.x = abs(r21.x) * -0.200000003 + 0.400000006;
                  r25.xyz = r11.xyz * r23.xxx + r5.xyz;
                  r35.xyz = lightConstantsCB[r21.w].data[6].yzw;
                  r35.w = lightConstantsCB[r21.w].data[7].x;
                  r23.x = dot(r35.xyzw, r25.xyzw);
                  r35.xyz = lightConstantsCB[r21.w].data[7].yzw;
                  r35.w = lightConstantsCB[r21.w].data[8].x;
                  r28.w = dot(r35.xyzw, r25.xyzw);
                  r29.w = cmp(r28.w < r23.x);
                  if (r29.w == 0) {
                    r35.xyz = lightConstantsCB[r21.w].data[4].yzw;
                    r35.w = lightConstantsCB[r21.w].data[5].x;
                    r35.x = dot(r35.xyzw, r25.xyzw);
                    r36.xyz = lightConstantsCB[r21.w].data[5].yzw;
                    r36.w = lightConstantsCB[r21.w].data[6].x;
                    r35.y = dot(r36.xyzw, r25.xyzw);
                    r25.xy = r35.xy / r28.ww;
                    r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r35.x = lightConstantsCB[r21.w].data[9].w + r25.x;
                    r35.y = lightConstantsCB[r21.w].data[10].x + r25.y;
                    r25.xy = lightConstantsCB[r21.w].data[9].yz * r35.xy;
                    r35.xy = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                    r35.zw = float2(1,1) + -r35.xy;
                    r35.zw = cmp(r25.xy >= r35.zw);
                    r35.xy = cmp(r35.xy >= r25.xy);
                    r35.xy = (int2)r35.xy | (int2)r35.zw;
                    r25.z = (int)r35.y | (int)r35.x;
                    if (r25.z == 0) {
                      r25.xy = saturate(r25.xy);
                      r35.x = r25.x * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                      r35.y = r25.y * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                      r25.x = lightConstantsCB[r21.w].data[10].z * r28.w;
                      r23.x = lightConstantsCB[r21.w].data[10].y * r28.w + r23.x;
                      r23.x = r23.x / r25.x;
                    }
                  } else {
                    r25.z = -1;
                  }
                  r25.x = (int)r29.w | (int)r25.z;
                  if (r25.x == 0) {
                    r23.x = max(6.10351563e-05, r23.x);
                    r25.x = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                    if (r13.z != 0) {
                      r36.z = (uint)r25.x;
                      r25.yz = float2(0,0);
                      while (true) {
                        r28.w = cmp((int)r25.z >= 8);
                        if (r28.w != 0) break;
                        r37.x = dot(icb[r25.z+0].xy, r28.xy);
                        r37.y = dot(icb[r25.z+0].yx, r28.xz);
                        r36.xy = r37.xy * lightConstantsCB[r21.w].data[3].yy + r35.xy;
                        r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r23.x).x;
                        r25.y = r28.w * 0.125 + r25.y;
                        r25.z = (int)r25.z + 1;
                      }
                    } else {
                      r35.z = (uint)r25.x;
                      r25.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r23.x).x;
                    }
                    r21.w = r25.y * r25.y;
                    r21.w = r21.w * r25.y;
                  } else {
                    r21.w = 1;
                  }
                  r19.y = r21.w * r19.y;
                } else {
                  if (4 == 0) r21.w = 0; else if (4+20 < 32) {                   r21.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(4 + 20)); r21.w = (uint)r21.w >> (32-4);                  } else r21.w = (uint)lightConstantsCB[r17.w].data[1].w >> 20;
                  r23.x = cmp(0 < (uint)r21.w);
                  r23.x = r23.x ? r8.w : 0;
                  if (r23.x != 0) {
                    r21.w = (int)r21.w + numLights;
                    r21.w = mad((int)r21.w, 15, -15);
                    r23.x = abs(r21.x) * -0.200000003 + 0.400000006;
                    r27.xyz = r11.xyz * r23.xxx + r5.xyz;
                    r35.xyz = lightConstantsCB[r21.w].data[6].yzw;
                    r35.w = lightConstantsCB[r21.w].data[7].x;
                    r23.x = dot(r35.xyzw, r27.xyzw);
                    r35.xyz = lightConstantsCB[r21.w].data[7].yzw;
                    r35.w = lightConstantsCB[r21.w].data[8].x;
                    r25.x = dot(r35.xyzw, r27.xyzw);
                    r25.z = cmp(r25.x < r23.x);
                    if (r25.z == 0) {
                      r35.xyz = lightConstantsCB[r21.w].data[4].yzw;
                      r35.w = lightConstantsCB[r21.w].data[5].x;
                      r35.x = dot(r35.xyzw, r27.xyzw);
                      r36.xyz = lightConstantsCB[r21.w].data[5].yzw;
                      r36.w = lightConstantsCB[r21.w].data[6].x;
                      r35.y = dot(r36.xyzw, r27.xyzw);
                      r27.xy = r35.xy / r25.xx;
                      r27.xy = r27.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r35.x = lightConstantsCB[r21.w].data[9].w + r27.x;
                      r35.y = lightConstantsCB[r21.w].data[10].x + r27.y;
                      r27.xy = lightConstantsCB[r21.w].data[9].yz * r35.xy;
                      r35.xy = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                      r35.zw = float2(1,1) + -r35.xy;
                      r35.zw = cmp(r27.xy >= r35.zw);
                      r35.xy = cmp(r35.xy >= r27.xy);
                      r35.xy = (int2)r35.xy | (int2)r35.zw;
                      r27.z = (int)r35.y | (int)r35.x;
                      if (r27.z == 0) {
                        r27.xy = saturate(r27.xy);
                        r35.x = r27.x * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                        r35.y = r27.y * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                        r27.x = lightConstantsCB[r21.w].data[10].z * r25.x;
                        r23.x = lightConstantsCB[r21.w].data[10].y * r25.x + r23.x;
                        r23.x = r23.x / r27.x;
                      }
                    } else {
                      r27.z = -1;
                    }
                    r25.x = (int)r25.z | (int)r27.z;
                    if (r25.x == 0) {
                      r23.x = max(6.10351563e-05, r23.x);
                      r25.x = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                      if (r13.z != 0) {
                        r27.z = (uint)r25.x;
                        r25.z = 0;
                        r28.w = 0;
                        while (true) {
                          r29.w = cmp((int)r28.w >= 8);
                          if (r29.w != 0) break;
                          r36.x = dot(icb[r28.w+0].xy, r29.xy);
                          r36.y = dot(icb[r28.w+0].yx, r29.xz);
                          r27.xy = r36.xy * lightConstantsCB[r21.w].data[3].yy + r35.xy;
                          r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r23.x).x;
                          r25.z = r27.x * 0.125 + r25.z;
                          r28.w = (int)r28.w + 1;
                        }
                      } else {
                        r35.z = (uint)r25.x;
                        r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r23.x).x;
                      }
                      r21.w = r25.z * r25.z;
                      r21.w = r21.w * r25.z;
                    } else {
                      r21.w = 1;
                    }
                    r19.y = r21.w * r19.y;
                  }
                }
                r21.w = -r21.y * r2.x + 1;
                r21.w = r21.w * r21.w;
                r21.w = -r21.w * 0.620000005 + 0.620000005;
                r21.w = r21.w + -r21.y;
                r21.y = r1.z * r21.w + r21.y;
                r21.y = r21.y * r19.y;
                r27.x = lightConstantsCB[r17.w].data[0].w;
                r27.yz = lightConstantsCB[r17.w].data[1].xy;
                r17.w = cmp(0 < r21.x);
                r21.xyw = r21.yyy * r27.xyz + r32.xyz;
                r23.x = saturate(dot(r11.xyz, r24.xyz));
                r20.yzw = r20.yzw * r22.xxx + r12.xyz;
                r22.x = dot(r20.yzw, r20.yzw);
                r22.x = rsqrt(r22.x);
                r20.yzw = r22.xxx * r20.yzw;
                r22.x = dot(r20.yzw, r12.xyz);
                r20.y = dot(r11.xyz, r20.yzw);
                r20.z = abs(r20.y) * r0.w + -abs(r20.y);
                r20.y = abs(r20.y) * r20.z + 1;
                r20.z = r23.x * r4.z + r6.w;
                r20.y = r20.y * r20.y;
                r20.y = r20.y * r20.z;
                r20.y = rcp(r20.y);
                r19.w = r23.x * r19.w;
                r19.w = r20.y * r19.w;
                r19.w = r19.w * r19.y;
                r20.yzw = r19.www * r27.xyz + r34.xyz;
                r22.x = saturate(1 + -r22.x);
                r23.x = r22.x * r22.x;
                r23.x = r23.x * r23.x;
                r22.x = r23.x * r22.x;
                r19.w = r22.x * r19.w;
                r24.xyz = r19.www * r27.xyz + r33.xyz;
                r32.xyz = r17.www ? r21.xyw : r32.xyz;
                r33.xyz = r17.www ? r24.xyz : r33.xyz;
                r34.xyz = r17.www ? r20.yzw : r34.xyz;
                r17.w = (int)r22.z & 255;
                r19.w = (int)r17.w + -1;
                r19.w = cmp((uint)r19.w < 32);
                r19.w = r19.w ? r1.w : 0;
                if (r19.w != 0) {
                  r20.yz = mad((int2)r17.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, r20.y, u2.xxxx
                r17.w = samplerLinear[]..swiz;
                  r17.w = (int)r17.w | 8;
                  GBufferDiffuseColor[viewID].r20.y = u2.x;
                  GBufferDiffuseColor[viewID].r20.z = u2.x;
                }
                r13.w = (int)r13.w + 0x00010101;
              } else {
                r13.w = r22.z;
              }
            } else {
              r13.w = r19.z;
            }
          } else {
            r13.w = r19.z;
          }
        }
      }
    }
    r15.yzw = r32.xyz;
    r30.xyz = r33.xyz;
    r31.xyz = r34.xyz;
    r10.w = r13.w;
    r11.w = (int)r11.w + 32;
  }
  r2.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.w = (uint)r2.y;
  r3.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r3.x;
  r1.z = cmp((int)r0.w == (int)r1.z);
  r3.xy = r1.zz ? r3.yz : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r4.x;
  r1.z = cmp((int)r0.w == (int)r1.z);
  r3.zw = r1.zz ? r4.yz : float2(-1,0);
  r4.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r4.x;
  r1.z = cmp((int)r0.w == (int)r1.z);
  r4.xy = r1.zz ? r4.yz : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r7.x;
  r0.w = cmp((int)r0.w == (int)r1.z);
  r4.zw = r0.ww ? r7.yz : float2(-1,0);
  r7.xy = r3.xz;
  r7.zw = r4.xz;
  r7.xyzw = r7.xyzw + -r2.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.w = r7.x + r7.y;
  r0.w = r0.w + r7.z;
  r0.w = r0.w + r7.w;
  r1.z = r7.y * r3.w;
  r1.z = r7.x * r3.y + r1.z;
  r1.z = r7.z * r4.y + r1.z;
  r1.z = r7.w * r4.w + r1.z;
  r2.w = r1.z / r0.w;
  r0.w = cmp(0 >= r0.w);
  r2.yz = r0.ww ? float2(0,0) : r2.zw;
  r3.xy = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r3.y == (int)r3.x);
  r2.xyz = r0.www ? r2.xyz : r2.xzy;
  r0.w = -r2.z * 0.5 + r2.x;
  r3.y = r2.z + r0.w;
  r3.z = -r2.y * 0.5 + r0.w;
  r3.x = r3.z + r2.y;
  r2.xyz = float3(1,1,1) + -r3.xyz;
  r2.xyz = r30.xyz * r2.xyz;
  r2.xyz = r31.xyz * r3.xyz + r2.xyz;
  r2.xyz = r15.yzw * r6.xyz + r2.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r5.xyz, r5.xyz);
    r1.z = rsqrt(r0.w);
    r3.xyz = r5.xyz * r1.zzz;
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r4.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r1.z = cmp(0.00999999978 < abs(r5.z));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r6.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r6.xy = exp2(r6.xy);
      r6.xy = float2(1,1) + -r6.xy;
      r4.zw = r6.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r1.zz ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r6.xyz + r4.xzw;
    } else {
      r1.z = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r2.w = cmp(0.00999999978 < abs(r5.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.z;
      r1.z = r2.w ? r3.w : r1.z;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r6.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r2.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.x = fogConstants.atmosphereMieSchlickK * -r1.z + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r2.w = r2.w / r3.x;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.w * r0.w;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r3.xyz = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r6.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * r5.z;
    r1.z = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r2.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.w = min(64, r1.z);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.y ? r3.w : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.w = r2.w ? 1 : r0.w;
    r0.w = r1.z / r0.w;
    r0.w = r2.w ? r4.x : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.z = dot(r5.xyz, r5.xyz);
    r2.w = sqrt(r1.z);
    r0.w = r0.w * r2.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.z = rsqrt(r1.z);
    r4.xyz = r5.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r4.w * r0.w;
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyz = r0.www * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.w = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r3.xz = cmp((int2)r3.xz != int2(0,0));
  r3.yw = cmp((int2)r3.yw == int2(0,12));
  r3.xy = r3.yw ? r3.xz : 0;
  r3.xy = r3.xy ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r2.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 16);
  r1.z = r1.z ? r2.w : 0;
  r3.z = r1.z ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.www ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.w = (int)r10.w & 255;
        break;
        case 2 :        if (8 == 0) r0.w = 0; else if (8+8 < 32) {         r0.w = (uint)r10.w << (32-(8 + 8)); r0.w = (uint)r0.w >> (32-8);        } else r0.w = (uint)r10.w >> 8;
        break;
        case 3 :        if (8 == 0) r0.w = 0; else if (8+16 < 32) {         r0.w = (uint)r10.w << (32-(8 + 16)); r0.w = (uint)r0.w >> (32-8);        } else r0.w = (uint)r10.w >> 16;
        break;
        case 4 :        r0.w = (int)r0.y & 15;
        break;
        case 5 :        r0.w = (uint)r0.y >> 8;
        break;
        default :
        r0.w = 0;
        break;
      }
      r0.w = (uint)r0.w;
      r0.w = drawNumLighstScale * r0.w;
      r3.xyz = r0.www * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyz + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r1.w != 0) {
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r10.w & 255;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.w = (int)r0.y & 15;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.w = (int)r10.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.w
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.x = 0; else if (8+8 < 32) {     r1.x = (uint)r10.w << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);    } else r1.x = (uint)r10.w >> 8;
    if (8 == 0) r1.y = 0; else if (8+16 < 32) {     r1.y = (uint)r10.w << (32-(8 + 16)); r1.y = (uint)r1.y >> (32-8);    } else r1.y = (uint)r10.w >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.y
    InterlockedAdd(dest, value, orig_value);
    r1.z = (int)r0.y & 15;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.z
    InterlockedAdd(dest, value, orig_value);
    r0.y = (uint)r0.y >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r0.y
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r0.w
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(4), r1.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(8), r1.y
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(12), r1.z
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), r0.y
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, g0, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.y = cmp((int)r1.x == 63);
    if (r0.y != 0) {
    // No code for instruction (needs manual fix):
        ld_raw r1.xyzw, l(0), g1.xyzw
      r2.xz = viewID;
      r2.yw = float2(5.60519386e-44,6.16571324e-44);
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.xyxx, r1.x
      InterlockedAdd(dest, value, orig_value);
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.zwzz, r1.y
      InterlockedAdd(dest, value, orig_value);
      r2.xz = viewID;
      r2.yw = float2(6.72623263e-44,7.28675201e-44);
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.xyxx, r1.z
      InterlockedAdd(dest, value, orig_value);
      // Needs manual fix for instruction:
        atomic_iadd u2, r2.zwzz, r1.w
      InterlockedAdd(dest, value, orig_value);
    // No code for instruction (needs manual fix):
        ld_raw r0.y, l(16), g1.xxxx
      r1.xz = viewID;
      r1.yw = float2(7.8472714e-44,0);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.y
      InterlockedAdd(dest, value, orig_value);
    // No code for instruction (needs manual fix):
        ld_raw r2.xyzw, l(0), g2.xyzw
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r2.x
      InterlockedMax(dest, value, orig_value);
      r1.xz = viewID;
      r1.yw = float2(5.60519386e-45,1.12103877e-44);
      // Needs manual fix for instruction:
        atomic_umax u2, r1.xyxx, r2.y
      InterlockedMax(dest, value, orig_value);
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r2.z
      InterlockedMax(dest, value, orig_value);
      r1.xz = viewID;
      r1.yw = float2(1.68155816e-44,2.24207754e-44);
      // Needs manual fix for instruction:
        atomic_umax u2, r1.xyxx, r2.w
      InterlockedMax(dest, value, orig_value);
    // No code for instruction (needs manual fix):
        ld_raw r0.y, l(16), g2.xxxx
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.y
      InterlockedMax(dest, value, orig_value);
      r0.xz = cmp((int2)r0.xz == centerGroupIDx);
      r0.x = r0.z ? r0.x : 0;
      if (r0.x != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}