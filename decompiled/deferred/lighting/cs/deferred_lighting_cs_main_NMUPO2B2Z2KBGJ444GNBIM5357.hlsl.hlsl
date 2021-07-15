// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:43 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42;
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
  r0.x = mad(permuteStride, 50, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
  r0.yz = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.yz, int2(8,8), (int2)vThreadIDInGroup.xy);
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
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.w = dot(-r12.xyz, r11.xyz);
  r0.w = r0.w + r0.w;
  r15.xyz = r11.xyz * -r0.www + -r12.xyz;
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
  if (probeDebug != 0) {
    r3.w = (uint)renderTargetSize.x;
    r3.w = (int)r3.w + 7;
    r3.w = (uint)r3.w >> 3;
    r3.w = mad((int)r0.z, (int)r3.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r3.w = (((uint)r3.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r16.xyzw = float4(0,0,0,0);
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
    r13.yzw = float3(0,0,0);
    r14.yz = float2(0,0);
    r6.w = 0;
    r27.z = 0;
    r28.z = 0;
    r7.w = 0;
    r8.w = 0;
    while (true) {
      r9.w = cmp((uint)r8.w >= numRefProbes);
      if (r9.w != 0) break;
      r9.w = (uint)r8.w >> 5;
      r9.w = (int)r3.w + (int)r9.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t26.xxxx
    r9.w = samplerLinear[]..swiz;
      r29.xyzw = r16.yxzw;
      r30.xyzw = r17.xyzw;
      r31.xyzw = r18.yzwx;
      r32.xyzw = r19.xyzw;
      r33.xyzw = r20.xyzw;
      r34.xyzw = r21.zwxy;
      r35.xyzw = r22.zwxy;
      r36.xyzw = r24.zwxy;
      r37.xyzw = r25.zwxy;
      r38.xyz = r13.yzw;
      r39.xy = r14.zy;
      r10.w = r6.w;
      r12.w = r27.z;
      r14.w = r28.z;
      r27.w = r7.w;
      r40.xyzw = r23.zwxy;
      r41.xyzw = r26.zwxy;
      r28.w = r9.w;
      while (true) {
        if (r28.w == 0) break;
        r38.w = firstbitlow((uint)r28.w);
        r39.z = 1 << (int)r38.w;
        r39.z = ~(int)r39.z;
        r28.w = (int)r28.w & (int)r39.z;
        r38.w = (int)r8.w + (int)r38.w;
        r38.w = (int)r38.w * 14;
        r42.xyz = -refProbeConstantsCB[r38.w].data[0].xyz + r5.xyz;
        r39.z = dot(r42.xyz, r42.xyz);
        r39.z = sqrt(r39.z);
        r39.z = cmp(probeDebugRadius >= r39.z);
        if (r39.z != 0) {
          r29.yzw = refProbeConstantsCB[r38.w].data[1].xyz;
          r29.x = refProbeConstantsCB[r38.w].data[0].w;
          r30.yzw = refProbeConstantsCB[r38.w].data[2].xyz;
          r30.x = refProbeConstantsCB[r38.w].data[1].w;
          r31.xyz = refProbeConstantsCB[r38.w].data[3].xyz;
          r31.w = refProbeConstantsCB[r38.w].data[4].z;
          r32.yz = refProbeConstantsCB[r38.w].data[4].xy;
          r32.x = refProbeConstantsCB[r38.w].data[3].w;
          r32.w = refProbeConstantsCB[r38.w].data[6].x;
          r33.yzw = refProbeConstantsCB[r38.w].data[5].xyz;
          r33.x = refProbeConstantsCB[r38.w].data[4].w;
          r34.yz = refProbeConstantsCB[r38.w].data[7].yw;
          r34.x = refProbeConstantsCB[r38.w].data[6].y;
          r34.w = refProbeConstantsCB[r38.w].data[8].x;
          r35.xyz = refProbeConstantsCB[r38.w].data[8].yzw;
          r35.w = refProbeConstantsCB[r38.w].data[9].x;
          r36.xyz = refProbeConstantsCB[r38.w].data[10].yzw;
          r36.w = refProbeConstantsCB[r38.w].data[11].x;
          r37.xyz = refProbeConstantsCB[r38.w].data[11].yzw;
          r37.w = refProbeConstantsCB[r38.w].data[12].x;
          r38.xyz = refProbeConstantsCB[r38.w].data[0].xyz;
          r39.zw = refProbeConstantsCB[r38.w].data[13].yz;
          r10.w = -1;
          r12.w = refProbeConstantsCB[r38.w].data[2].w;
          r14.w = refProbeConstantsCB[r38.w].data[5].w;
          r27.w = refProbeConstantsCB[r38.w].data[7].z;
          r40.xyz = refProbeConstantsCB[r38.w].data[9].yzw;
          r40.w = refProbeConstantsCB[r38.w].data[10].x;
          r41.xyz = refProbeConstantsCB[r38.w].data[12].yzw;
          r41.w = refProbeConstantsCB[r38.w].data[13].x;
          r39.xy = r39.zw;
          break;
        }
      }
      if (r10.w != 0) {
        r16.xyzw = r29.yxzw;
        r17.xyzw = r30.xyzw;
        r18.xyzw = r31.wxyz;
        r19.xyzw = r32.xyzw;
        r20.xyzw = r33.xyzw;
        r21.xyzw = r34.zwxy;
        r22.xyzw = r35.zwxy;
        r23.xyzw = r40.zwxy;
        r24.xyzw = r36.zwxy;
        r25.xyzw = r37.zwxy;
        r26.xyzw = r41.zwxy;
        r13.yzw = r38.xyz;
        r14.yz = r39.yx;
        r6.w = -1;
        r27.z = r12.w;
        r28.z = r14.w;
        r7.w = r27.w;
        break;
      }
      r8.w = (int)r8.w + 32;
      r16.xyzw = r29.yxzw;
      r17.xyzw = r30.xyzw;
      r18.xyzw = r31.wxyz;
      r19.xyzw = r32.xyzw;
      r20.xyzw = r33.xyzw;
      r21.xyzw = r34.zwxy;
      r22.xyzw = r35.zwxy;
      r24.xyzw = r36.zwxy;
      r25.xyzw = r37.zwxy;
      r13.yzw = r38.xyz;
      r14.yz = r39.yx;
      r6.w = r10.w;
      r27.z = r12.w;
      r28.z = r14.w;
      r7.w = r27.w;
      r23.xyzw = r40.zwxy;
      r26.xyzw = r41.zwxy;
    }
    r29.xy = r16.yw;
    r27.x = r16.z;
    r16.yz = r17.xw;
    r27.y = r17.y;
    r29.z = r17.z;
    r17.xyz = r18.yzw;
    r18.yz = r20.xy;
    r28.xy = r20.zw;
    r20.xy = r21.zw;
    r21.z = r22.z;
    r22.z = r23.z;
    r23.z = r24.z;
    r24.z = r25.z;
    r25.z = r26.z;
    r26.z = r14.z;
  } else {
    r6.w = 0;
  }
  if (r6.w != 0) {
    if (r1.w != 0) {
      r30.yzw = eyeOffset.xyz + r13.yzw;
      r30.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r13.yzw = -r13.yzw + r5.xyz;
    r3.w = (int)r7.w & 0x0000ffff;
    if (6 == 0) r8.w = 0; else if (6+25 < 32) {     r8.w = (uint)r7.w << (32-(6 + 25)); r8.w = (uint)r8.w >> (32-6);    } else r8.w = (uint)r7.w >> 25;
    r9.w = (int)r3.w * 6;
    r10.w = dot(refProbeAttenuationConstantsCB[r9.w].data[0].xyz, r13.yzw);
    r10.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[0].w + r10.w);
    r12.w = dot(refProbeAttenuationConstantsCB[r9.w].data[1].xyz, r13.yzw);
    r12.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[1].w + r12.w);
    r10.w = r12.w * r10.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r9.w].data[2].xyz, r13.yzw);
    r12.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[2].w + r12.w);
    r10.w = r12.w * r10.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r9.w].data[3].xyz, r13.yzw);
    r12.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[3].w + r12.w);
    r10.w = r12.w * r10.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r9.w].data[4].xyz, r13.yzw);
    r12.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[4].w + r12.w);
    r10.w = r12.w * r10.w;
    r12.w = dot(refProbeAttenuationConstantsCB[r9.w].data[5].xyz, r13.yzw);
    r9.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[5].w + r12.w);
    r30.x = r10.w * r9.w;
    r9.w = (int)r19.w & 1;
    r30.yz = float2(0,1);
    r14.zw = r9.ww ? r30.xy : r30.zx;
    r30.x = 1;
    r9.w = r19.w;
    r31.xy = r14.zw;
    r10.w = 1;
    while (true) {
      r12.w = cmp((int)r10.w >= (int)r8.w);
      if (r12.w != 0) break;
      r12.w = (int)r3.w + (int)r10.w;
      r12.w = (int)r12.w * 6;
      r16.w = dot(refProbeAttenuationConstantsCB[r12.w].data[0].xyz, r13.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[0].w + r16.w);
      r16.w = r31.x * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r12.w].data[1].xyz, r13.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[1].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r12.w].data[2].xyz, r13.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[2].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r12.w].data[3].xyz, r13.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[3].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r12.w].data[4].xyz, r13.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[4].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r12.w].data[5].xyz, r13.yzw);
      r12.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[5].w + r17.w);
      r31.x = r16.w * r12.w;
      r17.w = (uint)r9.w >> 2;
      if (1 == 0) r18.w = 0; else if (1+2 < 32) {       r18.w = (uint)r9.w << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);      } else r18.w = (uint)r9.w >> 2;
      r20.z = (int)r17.w & 2;
      r20.w = max(r31.y, r31.x);
      r12.w = -r16.w * r12.w + 1;
      r12.w = r31.y * r12.w;
      r30.y = r20.z ? r12.w : r20.w;
      r31.xy = r18.ww ? r31.xy : r30.xy;
      r10.w = (int)r10.w + 1;
      r9.w = r17.w;
    }
    r31.y = saturate(r31.y);
    r30.w = r31.y * r20.x;
    r3.w = cmp(0 < r30.w);
    if (r3.w != 0) {
      if (r1.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r3.w, cb2[52].x, l(880), u2.xxxx
      r3.w = samplerLinear[]..swiz;
        r3.w = (int)r3.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r3.w = r30.w * r20.y;
      r8.w = dot(r15.xyz, r21.xyz);
      r9.w = dot(r13.yzw, r21.xyz);
      r9.w = r9.w + -r22.w;
      r10.w = cmp(r9.w >= 0);
      r9.w = max(abs(r9.w), r3.y);
      r9.w = r10.w ? r9.w : -r9.w;
      r8.w = max(1.00000001e-07, -r8.w);
      r8.w = r9.w / r8.w;
      r8.w = min(131072, abs(r8.w));
      r9.w = dot(r15.xyz, r22.xyz);
      r10.w = dot(r13.yzw, r22.xyz);
      r10.w = r10.w + -r23.w;
      r12.w = cmp(r10.w >= 0);
      r10.w = max(abs(r10.w), r3.y);
      r10.w = r12.w ? r10.w : -r10.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r10.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r9.w = dot(r15.xyz, r23.xyz);
      r10.w = dot(r13.yzw, r23.xyz);
      r10.w = r10.w + -r24.w;
      r12.w = cmp(r10.w >= 0);
      r10.w = max(abs(r10.w), r3.y);
      r10.w = r12.w ? r10.w : -r10.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r10.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r9.w = dot(r15.xyz, r24.xyz);
      r10.w = dot(r13.yzw, r24.xyz);
      r10.w = r10.w + -r25.w;
      r12.w = cmp(r10.w >= 0);
      r10.w = max(abs(r10.w), r3.y);
      r10.w = r12.w ? r10.w : -r10.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r10.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r9.w = dot(r15.xyz, r25.xyz);
      r10.w = dot(r13.yzw, r25.xyz);
      r10.w = r10.w + -r26.w;
      r12.w = cmp(r10.w >= 0);
      r10.w = max(abs(r10.w), r3.y);
      r10.w = r12.w ? r10.w : -r10.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r10.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r9.w = dot(r15.xyz, r26.xyz);
      r10.w = dot(r13.yzw, r26.xyz);
      r10.w = r10.w + -r14.y;
      r12.w = cmp(r10.w >= 0);
      r10.w = max(abs(r10.w), r3.y);
      r10.w = r12.w ? r10.w : -r10.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r10.w / r9.w;
      r8.w = min(abs(r9.w), r8.w);
      r14.yzw = r19.xyz + r13.yzw;
      r14.yzw = r15.xyz * r8.www + r14.yzw;
      r9.w = dot(r14.yzw, r14.yzw);
      r9.w = sqrt(r9.w);
      r8.w = r8.w / r9.w;
      r8.w = r8.w + r8.w;
      r8.w = sqrt(r8.w);
      r8.w = r2.z * 5 + r8.w;
      r8.w = -0.844799995 + r8.w;
      r19.x = dot(r14.yzw, r29.xyz);
      r19.y = dot(r14.yzw, r16.xyz);
      r19.z = dot(r14.yzw, r27.xyz);
      if (9 == 0) r7.w = 0; else if (9+16 < 32) {       r7.w = (uint)r7.w << (32-(9 + 16)); r7.w = (uint)r7.w >> (32-9);      } else r7.w = (uint)r7.w >> 16;
      r19.w = (uint)r7.w;
      r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r8.w).xyz;
      r20.xyz = (int3)r14.yzw & int3(-2147483648,-2147483648,-2147483648);
      r20.xyz = cmp((int3)r20.xyz == int3(2139095040,2139095040,2139095040));
      r7.w = (int)r20.y | (int)r20.x;
      r7.w = (int)r20.z | (int)r7.w;
      r14.yzw = r7.www ? float3(1,1,0) : r14.yzw;
      r20.x = dot(r13.yzw, r29.xyz);
      r20.y = dot(r13.yzw, r16.xyz);
      r20.z = dot(r13.yzw, r27.xyz);
      r13.yzw = saturate(r20.xyz * r17.xyz + float3(0.5,0.5,0.5));
      r13.yzw = r13.yzw * r18.xyz + r28.xyz;
      r19.x = dot(r11.xyz, r29.xyz);
      r19.y = dot(r11.xyz, r16.xyz);
      r19.z = dot(r11.xyz, r27.xyz);
      r16.xyz = cmp(float3(0,0,0) < r19.xyz);
      r17.z = r16.x ? 0 : 0.5;
      r17.xy = float2(0,0);
      r17.xyz = r17.xyz + r13.yzw;
      r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r18.xyz = r19.xyz * r19.xyz;
      r18.xyz = r18.xyz * r3.www;
      r20.z = r16.y ? 0 : 0.5;
      r20.xy = float2(0,0);
      r16.xyw = r20.xyz + r13.yzw;
      r16.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyw, 0).xyz;
      r16.xyw = r16.xyw * r18.yyy;
      r16.xyw = r17.xyz * r18.xxx + r16.xyw;
      r17.z = r16.z ? 0 : 0.5;
      r17.xy = float2(0,0);
      r13.yzw = r17.xyz + r13.yzw;
      r13.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
      r13.yzw = r13.yzw * r18.zzz + r16.xyw;
      r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, 6).xyz;
      r17.xyz = (int3)r16.xyz & int3(-2147483648,-2147483648,-2147483648);
      r17.xyz = cmp((int3)r17.xyz == int3(2139095040,2139095040,2139095040));
      r7.w = (int)r17.y | (int)r17.x;
      r7.w = (int)r17.z | (int)r7.w;
      r16.xyz = r7.www ? float3(1,1,0) : r16.xyz;
      r13.yzw = r16.xyz * r13.yzw;
      r7.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r8.w = r7.w * r3.z;
      r13.yzw = r14.yzw * r3.www;
      r3.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r3.w = r3.z * r7.w + r3.w;
      r3.w = r8.w / r3.w;
      r30.xyz = r13.yzw * r3.www;
      r3.w = 257;
    } else {
      r30.xyzw = float4(0,0,0,0);
      r3.w = 1;
    }
    r7.w = -1;
  } else {
    r30.xyzw = float4(0,0,0,0);
    r3.w = 0;
  }
  r6.w = (int)r6.w & (int)r7.w;
  if (r6.w == 0) {
    r6.w = numRefProbes + -numOverrideProbes;
    r7.w = (uint)renderTargetSize.x;
    r7.w = (int)r7.w + 7;
    r7.w = (uint)r7.w >> 3;
    r7.w = mad((int)r0.z, (int)r7.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r7.w = (((uint)r7.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r8.w = (int)r6.w & -32;
    r9.w = (int)r6.w + (int)-r8.w;
    r10.w = numRefProbes & -32;
    r12.w = (int)-r10.w + numRefProbes;
    r16.x = 16;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.xz = float2(1,1);
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xyz = float3(0,0,0);
    r22.w = r30.x;
    r23.xyz = r30.yzw;
    r23.w = r3.w;
    r13.y = r8.w;
    while (true) {
      r13.z = cmp((uint)r13.y >= numRefProbes);
      if (r13.z != 0) break;
      r13.z = (uint)r13.y >> 5;
      r13.z = (int)r7.w + (int)r13.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t26.xxxx
    r13.z = samplerLinear[]..swiz;
      r13.w = cmp((int)r8.w == (int)r13.y);
      bitmask.y = ((~(-1 << r9.w)) << 0) & 0xffffffff;  r14.y = (((uint)0 << 0) & bitmask.y) | ((uint)r13.z & ~bitmask.y);
      r13.z = r13.w ? r14.y : r13.z;
      r13.w = cmp((int)r10.w == (int)r13.y);
      if (r12.w == 0) r14.y = 0; else if (r12.w+0 < 32) {       r14.y = (uint)r13.z << (32-(r12.w + 0)); r14.y = (uint)r14.y >> (32-r12.w);      } else r14.y = (uint)r13.z >> 0;
      r13.z = r13.w ? r14.y : r13.z;
      r24.xyzw = r22.xyzw;
      r25.xyzw = r23.xyzw;
      r13.w = r13.z;
      while (true) {
        if (r13.w == 0) break;
        r14.y = firstbitlow((uint)r13.w);
        r14.z = 1 << (int)r14.y;
        r14.z = ~(int)r14.z;
        r13.w = (int)r13.w & (int)r14.z;
        r14.y = (int)r13.y + (int)r14.y;
        r14.y = (int)r14.y * 14;
        r14.z = (int)r25.w & 255;
        r14.w = cmp((uint)r14.z < 32);
        r14.w = r14.w ? r1.w : 0;
        if (r14.w != 0) {
          r14.z = mad((int)r14.z, 20, 880);
          r16.yzw = refProbeConstantsCB[r14.y].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r14.z = u2.xyzw;
        }
        r26.w = (int)r25.w + 1;
        r16.yzw = -refProbeConstantsCB[r14.y].data[0].xyz + r5.xyz;
        r14.z = 0x0000ffff & (int)refProbeConstantsCB[r14.y].data[7].z;
        if (6 == 0) r14.w = 0; else if (6+25 < 32) {         r14.w = (uint)refProbeConstantsCB[r14.y].data[7].z << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);        } else r14.w = (uint)refProbeConstantsCB[r14.y].data[7].z >> 25;
        r17.w = (int)r14.z * 6;
        r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[0].xyz, r16.yzw);
        r18.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[0].w + r18.w);
        r20.w = dot(refProbeAttenuationConstantsCB[r17.w].data[1].xyz, r16.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[1].w + r20.w);
        r18.w = r20.w * r18.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r17.w].data[2].xyz, r16.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[2].w + r20.w);
        r18.w = r20.w * r18.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r17.w].data[3].xyz, r16.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[3].w + r20.w);
        r18.w = r20.w * r18.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r17.w].data[4].xyz, r16.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[4].w + r20.w);
        r18.w = r20.w * r18.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r17.w].data[5].xyz, r16.yzw);
        r17.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[5].w + r20.w);
        r17.x = r18.w * r17.w;
        r17.w = 1 & (int)refProbeConstantsCB[r14.y].data[6].x;
        r17.xw = r17.ww ? r17.xy : r17.zx;
        r18.w = refProbeConstantsCB[r14.y].data[6].x;
        r27.xy = r17.xw;
        r20.w = 1;
        while (true) {
          r21.w = cmp((int)r20.w >= (int)r14.w);
          if (r21.w != 0) break;
          r21.w = (int)r14.z + (int)r20.w;
          r21.w = (int)r21.w * 6;
          r27.z = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r16.yzw);
          r27.z = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r27.z);
          r27.z = r27.x * r27.z;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r27.w);
          r27.z = r27.z * r27.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r27.w);
          r27.z = r27.z * r27.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r27.w);
          r27.z = r27.z * r27.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r27.w);
          r27.z = r27.z * r27.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r16.yzw);
          r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r27.w);
          r27.x = r27.z * r21.w;
          r27.w = (uint)r18.w >> 2;
          if (1 == 0) r28.x = 0; else if (1+2 < 32) {           r28.x = (uint)r18.w << (32-(1 + 2)); r28.x = (uint)r28.x >> (32-1);          } else r28.x = (uint)r18.w >> 2;
          r28.y = (int)r27.w & 2;
          r28.z = max(r27.y, r27.x);
          r21.w = -r27.z * r21.w + 1;
          r21.w = r27.y * r21.w;
          r19.y = r28.y ? r21.w : r28.z;
          r27.xy = r28.xx ? r27.xy : r19.xy;
          r20.w = (int)r20.w + 1;
          r18.w = r27.w;
        }
        r27.y = saturate(r27.y);
        r14.z = refProbeConstantsCB[r14.y].data[6].y * r27.y;
        r14.w = cmp(0 < r14.z);
        if (r14.w != 0) {
          r14.w = (int)r26.w & 255;
          r17.x = (int)r14.w + -1;
          r17.x = cmp((uint)r17.x < 32);
          r17.x = r17.x ? r1.w : 0;
          if (r17.x != 0) {
            r17.xw = mad((int2)r14.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.w, cb2[52].x, r17.x, u2.xxxx
          r14.w = samplerLinear[]..swiz;
            r14.w = (int)r14.w | 32;
            GBufferDiffuseColor[viewID].r17.x = u2.x;
            GBufferDiffuseColor[viewID].r17.w = u2.x;
          }
          r25.w = (int)r25.w + 257;
          r25.z = r27.y * refProbeConstantsCB[r14.y].data[6].y + r25.z;
          r14.z = refProbeConstantsCB[r14.y].data[7].y * r14.z;
          r28.x = refProbeConstantsCB[r14.y].data[7].w;
          r28.yz = refProbeConstantsCB[r14.y].data[8].xy;
          r14.w = dot(r15.xyz, r28.xyz);
          r17.x = dot(r16.yzw, r28.xyz);
          r17.x = -refProbeConstantsCB[r14.y].data[8].z + r17.x;
          r17.w = cmp(r17.x >= 0);
          r17.x = max(abs(r17.x), r3.y);
          r17.x = r17.w ? r17.x : -r17.x;
          r14.w = max(1.00000001e-07, -r14.w);
          r14.w = r17.x / r14.w;
          r14.w = min(131072, abs(r14.w));
          r28.x = refProbeConstantsCB[r14.y].data[8].w;
          r28.yz = refProbeConstantsCB[r14.y].data[9].xy;
          r17.x = dot(r15.xyz, r28.xyz);
          r17.w = dot(r16.yzw, r28.xyz);
          r17.w = -refProbeConstantsCB[r14.y].data[9].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r3.y);
          r17.w = r18.w ? r17.w : -r17.w;
          r17.x = max(1.00000001e-07, -r17.x);
          r17.x = r17.w / r17.x;
          r14.w = min(abs(r17.x), r14.w);
          r28.x = refProbeConstantsCB[r14.y].data[9].w;
          r28.yz = refProbeConstantsCB[r14.y].data[10].xy;
          r17.x = dot(r15.xyz, r28.xyz);
          r17.w = dot(r16.yzw, r28.xyz);
          r17.w = -refProbeConstantsCB[r14.y].data[10].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r3.y);
          r17.w = r18.w ? r17.w : -r17.w;
          r17.x = max(1.00000001e-07, -r17.x);
          r17.x = r17.w / r17.x;
          r14.w = min(abs(r17.x), r14.w);
          r28.x = refProbeConstantsCB[r14.y].data[10].w;
          r28.yz = refProbeConstantsCB[r14.y].data[11].xy;
          r17.x = dot(r15.xyz, r28.xyz);
          r17.w = dot(r16.yzw, r28.xyz);
          r17.w = -refProbeConstantsCB[r14.y].data[11].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r3.y);
          r17.w = r18.w ? r17.w : -r17.w;
          r17.x = max(1.00000001e-07, -r17.x);
          r17.x = r17.w / r17.x;
          r14.w = min(abs(r17.x), r14.w);
          r28.x = refProbeConstantsCB[r14.y].data[11].w;
          r28.yz = refProbeConstantsCB[r14.y].data[12].xy;
          r17.x = dot(r15.xyz, r28.xyz);
          r17.w = dot(r16.yzw, r28.xyz);
          r17.w = -refProbeConstantsCB[r14.y].data[12].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r3.y);
          r17.w = r18.w ? r17.w : -r17.w;
          r17.x = max(1.00000001e-07, -r17.x);
          r17.x = r17.w / r17.x;
          r14.w = min(abs(r17.x), r14.w);
          r28.x = refProbeConstantsCB[r14.y].data[12].w;
          r28.yz = refProbeConstantsCB[r14.y].data[13].xy;
          r17.x = dot(r15.xyz, r28.xyz);
          r17.w = dot(r16.yzw, r28.xyz);
          r17.w = -refProbeConstantsCB[r14.y].data[13].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r3.y);
          r17.w = r18.w ? r17.w : -r17.w;
          r17.x = max(1.00000001e-07, -r17.x);
          r17.x = r17.w / r17.x;
          r14.w = min(abs(r17.x), r14.w);
          r28.x = refProbeConstantsCB[r14.y].data[3].w + r16.y;
          r28.yz = refProbeConstantsCB[r14.y].data[4].xy + r16.zw;
          r27.xzw = r15.xyz * r14.www + r28.xyz;
          r17.x = dot(r27.xzw, r27.xzw);
          r17.x = sqrt(r17.x);
          r14.w = r14.w / r17.x;
          r14.w = r14.w + r14.w;
          r14.w = sqrt(r14.w);
          r14.w = r2.z * 5 + r14.w;
          r14.w = -0.844799995 + r14.w;
          r28.x = refProbeConstantsCB[r14.y].data[0].w;
          r28.y = refProbeConstantsCB[r14.y].data[1].z;
          r28.z = refProbeConstantsCB[r14.y].data[2].y;
          r29.x = dot(r27.xzw, r28.xyz);
          r31.xy = refProbeConstantsCB[r14.y].data[1].xw;
          r31.z = refProbeConstantsCB[r14.y].data[2].z;
          r29.y = dot(r27.xzw, r31.xyz);
          r32.x = refProbeConstantsCB[r14.y].data[1].y;
          r32.yz = refProbeConstantsCB[r14.y].data[2].xw;
          r29.z = dot(r27.xzw, r32.xyz);
          if (9 == 0) r17.x = 0; else if (9+16 < 32) {           r17.x = (uint)refProbeConstantsCB[r14.y].data[7].z << (32-(9 + 16)); r17.x = (uint)r17.x >> (32-9);          } else r17.x = (uint)refProbeConstantsCB[r14.y].data[7].z >> 16;
          r29.w = (uint)r17.x;
          r27.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r14.w).xyz;
          r33.xyz = (int3)r27.xzw & int3(-2147483648,-2147483648,-2147483648);
          r33.xyz = cmp((int3)r33.xyz == int3(2139095040,2139095040,2139095040));
          r14.w = (int)r33.y | (int)r33.x;
          r14.w = (int)r33.z | (int)r14.w;
          r27.xzw = r14.www ? float3(1,1,0) : r27.xzw;
          r33.x = dot(r16.yzw, r28.xyz);
          r33.y = dot(r16.yzw, r31.xyz);
          r33.z = dot(r16.yzw, r32.xyz);
          r16.yzw = saturate(r33.xyz * refProbeConstantsCB[r14.y].data[3].xyz + float3(0.5,0.5,0.5));
          r33.xy = refProbeConstantsCB[r14.y].data[4].zw * r16.yz;
          r33.z = refProbeConstantsCB[r14.y].data[5].x * r16.w;
          r16.yzw = refProbeConstantsCB[r14.y].data[5].yzw + r33.xyz;
          r29.x = dot(r11.xyz, r28.xyz);
          r29.y = dot(r11.xyz, r31.xyz);
          r29.z = dot(r11.xyz, r32.xyz);
          r28.xyz = cmp(float3(0,0,0) < r29.xyz);
          r18.z = r28.x ? 0 : 0.5;
          r31.xyz = r18.xyz + r16.yzw;
          r31.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r31.xyz, 0).xyz;
          r32.xyz = r29.xyz * r29.xyz;
          r32.xyz = r32.xyz * r14.zzz;
          r20.z = r28.y ? 0 : 0.5;
          r28.xyw = r20.xyz + r16.yzw;
          r28.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xyw, 0).xyz;
          r28.xyw = r28.xyw * r32.yyy;
          r28.xyw = r31.xyz * r32.xxx + r28.xyw;
          r21.z = r28.z ? 0 : 0.5;
          r16.yzw = r21.xyz + r16.yzw;
          r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
          r16.yzw = r16.yzw * r32.zzz + r28.xyw;
          r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
          r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
          r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
          r14.y = (int)r29.y | (int)r29.x;
          r14.y = (int)r29.z | (int)r14.y;
          r28.xyz = r14.yyy ? float3(1,1,0) : r28.xyz;
          r29.xyz = r28.xyz * r16.yzw;
          r14.y = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r24.xyz = r16.yzw * r28.xyz + r24.xyz;
          r14.w = r14.y * r3.z;
          r16.yzw = r27.xzw * r14.zzz;
          r14.z = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
          r14.y = r3.z * r14.y + r14.z;
          r14.y = r14.w / r14.y;
          r28.x = r24.w;
          r28.yz = r25.xy;
          r14.yzw = r16.yzw * r14.yyy + r28.xyz;
          r24.w = r14.y;
          r25.xy = r14.zw;
        } else {
          r26.xyz = r25.xyz;
          r25.xyzw = r26.xyzw;
        }
      }
      r22.xyzw = r24.xyzw;
      r23.xyzw = r25.xyzw;
      r13.y = (int)r13.y + 32;
    }
    r16.x = 16;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r13.yzw = r22.xyz;
    r24.x = r22.w;
    r24.yz = r23.xy;
    r14.yzw = r23.zwz;
    r10.w = 0;
    while (true) {
      r12.w = cmp((uint)r10.w >= (uint)r6.w);
      if (r12.w != 0) break;
      r12.w = (uint)r10.w >> 5;
      r12.w = (int)r7.w + (int)r12.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t26.xxxx
    r12.w = samplerLinear[]..swiz;
      r17.w = cmp((int)r8.w == (int)r10.w);
      if (r9.w == 0) r18.w = 0; else if (r9.w+0 < 32) {       r18.w = (uint)r12.w << (32-(r9.w + 0)); r18.w = (uint)r18.w >> (32-r9.w);      } else r18.w = (uint)r12.w >> 0;
      r12.w = r17.w ? r18.w : r12.w;
      r25.xyz = r13.yzw;
      r26.xyz = r24.xyz;
      r27.xyz = r14.ywz;
      r17.w = r12.w;
      while (true) {
        if (r17.w == 0) break;
        r18.w = firstbitlow((uint)r17.w);
        r19.x = 1 << (int)r18.w;
        r19.x = ~(int)r19.x;
        r17.w = (int)r17.w & (int)r19.x;
        r18.w = (int)r10.w + (int)r18.w;
        r18.w = (int)r18.w * 14;
        r19.x = (int)r27.z & 255;
        r19.y = cmp((uint)r19.x < 32);
        r19.y = r19.y ? r1.w : 0;
        if (r19.y != 0) {
          r19.x = mad((int)r19.x, 20, 880);
          r16.yzw = refProbeConstantsCB[r18.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r19.x = u2.xyzw;
        }
        r19.y = (int)r27.z + 1;
        r16.yzw = -refProbeConstantsCB[r18.w].data[0].xyz + r5.xyz;
        r20.w = 0x0000ffff & (int)refProbeConstantsCB[r18.w].data[7].z;
        if (6 == 0) r21.w = 0; else if (6+25 < 32) {         r21.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(6 + 25)); r21.w = (uint)r21.w >> (32-6);        } else r21.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 25;
        r24.w = (int)r20.w * 6;
        r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[0].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[0].w + r25.w);
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[1].xyz, r16.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[1].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[2].xyz, r16.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[2].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[3].xyz, r16.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[3].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[4].xyz, r16.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[4].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r24.w].data[5].xyz, r16.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[5].w + r26.w);
        r17.x = r25.w * r24.w;
        r24.w = 1 & (int)refProbeConstantsCB[r18.w].data[6].x;
        r28.xy = r24.ww ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r18.w].data[6].x;
        r29.xy = r28.xy;
        r24.w = 1;
        while (true) {
          r25.w = cmp((int)r24.w >= (int)r21.w);
          if (r25.w != 0) break;
          r25.w = (int)r20.w + (int)r24.w;
          r25.w = (int)r25.w * 6;
          r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[0].xyz, r16.yzw);
          r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[0].w + r26.w);
          r26.w = r29.x * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[1].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[1].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[2].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[2].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[3].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[3].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[4].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[4].w + r27.w);
          r26.w = r27.w * r26.w;
          r27.w = dot(refProbeAttenuationConstantsCB[r25.w].data[5].xyz, r16.yzw);
          r25.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[5].w + r27.w);
          r29.x = r26.w * r25.w;
          r27.w = (uint)r17.x >> 2;
          if (1 == 0) r28.z = 0; else if (1+2 < 32) {           r28.z = (uint)r17.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);          } else r28.z = (uint)r17.x >> 2;
          r28.w = (int)r27.w & 2;
          r29.z = max(r29.y, r29.x);
          r25.w = -r26.w * r25.w + 1;
          r25.w = r29.y * r25.w;
          r19.w = r28.w ? r25.w : r29.z;
          r29.xy = r28.zz ? r29.xy : r19.zw;
          r24.w = (int)r24.w + 1;
          r17.x = r27.w;
        }
        r17.x = saturate(r29.y + -r27.y);
        r19.w = refProbeConstantsCB[r18.w].data[6].y * r17.x;
        r20.w = cmp(0 < r19.w);
        if (r20.w != 0) {
          r20.w = (int)r19.y & 255;
          r21.w = (int)r20.w + -1;
          r21.w = cmp((uint)r21.w < 32);
          r21.w = r21.w ? r1.w : 0;
          if (r21.w != 0) {
            r28.xy = mad((int2)r20.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r28.x, u2.xxxx
          r20.w = samplerLinear[]..swiz;
            r20.w = (int)r20.w | 32;
            GBufferDiffuseColor[viewID].r28.x = u2.x;
            GBufferDiffuseColor[viewID].r28.y = u2.x;
          }
          r27.z = (int)r27.z + 257;
          r27.x = r17.x * refProbeConstantsCB[r18.w].data[6].y + r27.x;
          r17.x = refProbeConstantsCB[r18.w].data[7].y * r19.w;
          r28.x = refProbeConstantsCB[r18.w].data[7].w;
          r28.yz = refProbeConstantsCB[r18.w].data[8].xy;
          r19.w = dot(r15.xyz, r28.xyz);
          r20.w = dot(r16.yzw, r28.xyz);
          r20.w = -refProbeConstantsCB[r18.w].data[8].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.y);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.w = min(131072, abs(r19.w));
          r28.x = refProbeConstantsCB[r18.w].data[8].w;
          r28.yz = refProbeConstantsCB[r18.w].data[9].xy;
          r20.w = dot(r15.xyz, r28.xyz);
          r21.w = dot(r16.yzw, r28.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[9].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r3.y);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r28.x = refProbeConstantsCB[r18.w].data[9].w;
          r28.yz = refProbeConstantsCB[r18.w].data[10].xy;
          r20.w = dot(r15.xyz, r28.xyz);
          r21.w = dot(r16.yzw, r28.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[10].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r3.y);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r28.x = refProbeConstantsCB[r18.w].data[10].w;
          r28.yz = refProbeConstantsCB[r18.w].data[11].xy;
          r20.w = dot(r15.xyz, r28.xyz);
          r21.w = dot(r16.yzw, r28.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[11].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r3.y);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r28.x = refProbeConstantsCB[r18.w].data[11].w;
          r28.yz = refProbeConstantsCB[r18.w].data[12].xy;
          r20.w = dot(r15.xyz, r28.xyz);
          r21.w = dot(r16.yzw, r28.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[12].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r3.y);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r28.x = refProbeConstantsCB[r18.w].data[12].w;
          r28.yz = refProbeConstantsCB[r18.w].data[13].xy;
          r20.w = dot(r15.xyz, r28.xyz);
          r21.w = dot(r16.yzw, r28.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[13].z + r21.w;
          r24.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r3.y);
          r21.w = r24.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.w = min(abs(r20.w), r19.w);
          r28.x = refProbeConstantsCB[r18.w].data[3].w + r16.y;
          r28.yz = refProbeConstantsCB[r18.w].data[4].xy + r16.zw;
          r28.xyz = r15.xyz * r19.www + r28.xyz;
          r20.w = dot(r28.xyz, r28.xyz);
          r20.w = sqrt(r20.w);
          r19.w = r19.w / r20.w;
          r19.w = r19.w + r19.w;
          r19.w = sqrt(r19.w);
          r19.w = r2.z * 5 + r19.w;
          r19.w = -0.844799995 + r19.w;
          r31.x = refProbeConstantsCB[r18.w].data[0].w;
          r31.y = refProbeConstantsCB[r18.w].data[1].z;
          r31.z = refProbeConstantsCB[r18.w].data[2].y;
          r32.x = dot(r28.xyz, r31.xyz);
          r33.xy = refProbeConstantsCB[r18.w].data[1].xw;
          r33.z = refProbeConstantsCB[r18.w].data[2].z;
          r32.y = dot(r28.xyz, r33.xyz);
          r34.x = refProbeConstantsCB[r18.w].data[1].y;
          r34.yz = refProbeConstantsCB[r18.w].data[2].xw;
          r32.z = dot(r28.xyz, r34.xyz);
          if (9 == 0) r20.w = 0; else if (9+16 < 32) {           r20.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(9 + 16)); r20.w = (uint)r20.w >> (32-9);          } else r20.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 16;
          r32.w = (uint)r20.w;
          r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r19.w).xyz;
          r29.xzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
          r29.xzw = cmp((int3)r29.xzw == int3(2139095040,2139095040,2139095040));
          r19.w = (int)r29.z | (int)r29.x;
          r19.w = (int)r29.w | (int)r19.w;
          r28.xyz = r19.www ? float3(1,1,0) : r28.xyz;
          r35.x = dot(r16.yzw, r31.xyz);
          r35.y = dot(r16.yzw, r33.xyz);
          r35.z = dot(r16.yzw, r34.xyz);
          r16.yzw = saturate(r35.xyz * refProbeConstantsCB[r18.w].data[3].xyz + float3(0.5,0.5,0.5));
          r35.xy = refProbeConstantsCB[r18.w].data[4].zw * r16.yz;
          r35.z = refProbeConstantsCB[r18.w].data[5].x * r16.w;
          r16.yzw = refProbeConstantsCB[r18.w].data[5].yzw + r35.xyz;
          r32.x = dot(r11.xyz, r31.xyz);
          r32.y = dot(r11.xyz, r33.xyz);
          r32.z = dot(r11.xyz, r34.xyz);
          r29.xzw = cmp(float3(0,0,0) < r32.xyz);
          r18.z = r29.x ? 0 : 0.5;
          r31.xyz = r18.xyz + r16.yzw;
          r31.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r31.xyz, 0).xyz;
          r33.xyz = r32.xyz * r32.xyz;
          r33.xyz = r33.xyz * r17.xxx;
          r20.z = r29.z ? 0 : 0.5;
          r34.xyz = r20.xyz + r16.yzw;
          r34.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r34.xyz, 0).xyz;
          r34.xyz = r34.xyz * r33.yyy;
          r31.xyz = r31.xyz * r33.xxx + r34.xyz;
          r21.z = r29.w ? 0 : 0.5;
          r16.yzw = r21.xyz + r16.yzw;
          r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
          r16.yzw = r16.yzw * r33.zzz + r31.xyz;
          r29.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
          r31.xyz = (int3)r29.xzw & int3(-2147483648,-2147483648,-2147483648);
          r31.xyz = cmp((int3)r31.xyz == int3(2139095040,2139095040,2139095040));
          r18.z = (int)r31.y | (int)r31.x;
          r18.z = (int)r31.z | (int)r18.z;
          r29.xzw = r18.zzz ? float3(1,1,0) : r29.xzw;
          r31.xyz = r29.xzw * r16.yzw;
          r18.z = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r25.xyz = r16.yzw * r29.xzw + r25.xyz;
          r16.y = r18.z * r3.z;
          r28.xyz = r28.xyz * r17.xxx;
          r16.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r16.z = r3.z * r18.z + r16.z;
          r16.y = r16.y / r16.z;
          r26.xyz = r28.xyz * r16.yyy + r26.xyz;
        } else {
          r19.x = r27.x;
          r27.xz = r19.xy;
        }
      }
      r13.yzw = r25.xyz;
      r24.xyz = r26.xyz;
      r14.yz = r27.xz;
      r10.w = (int)r10.w + 32;
    }
    r2.z = cmp(r23.z >= 1);
    r3.y = (int)r23.w & 0x0000ff00;
    bitmask.y = ((~(-1 << 8)) << 0) & 0xffffffff;  r3.y = (((uint)r14.z << 0) & bitmask.y) | ((uint)r3.y & ~bitmask.y);
    r3.w = r2.z ? r3.y : r14.z;
    r2.z = max(1, r14.y);
    r2.z = rcp(r2.z);
    r14.y = saturate(r14.y);
    r16.xyz = r13.yzw * r2.zzz;
    r30.xyz = r24.xyz * r2.zzz;
    r3.y = cmp(r14.y < 0.99000001);
    if (r3.y != 0) {
      r3.w = (int)r3.w + 256;
      r3.y = 1 + -r14.y;
      r3.z = sunConstants.globalProbeExposure * r3.y;
      r14.yzw = -globalProbeConstants.data[0].xyz + r5.xyz;
      r17.x = globalProbeConstants.data[0].w * r14.y;
      r17.yz = globalProbeConstants.data[1].xy * r14.zw;
      r14.yzw = saturate(float3(0.5,0.5,0.5) + r17.xyz);
      r17.xy = globalProbeConstants.data[1].zw * r14.yz;
      r17.z = globalProbeConstants.data[2].x * r14.w;
      r14.yzw = globalProbeConstants.data[2].yzw + r17.xyz;
      r17.xyz = cmp(float3(0,0,0) < r11.xyz);
      r17.xyz = r17.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r17.w = 0;
      r18.xyz = r17.wwx + r14.yzw;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r19.xyz = r11.xyz * r11.xyz;
      r19.xyz = r19.xyz * r3.zzz;
      r20.xyz = r17.wwy + r14.yzw;
      r20.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r20.xyz = r20.xyz * r19.yyy;
      r18.xyz = r18.xyz * r19.xxx + r20.xyz;
      r14.yzw = r17.wwz + r14.yzw;
      r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
      r14.yzw = r14.yzw * r19.zzz + r18.xyz;
      r11.w = 0;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
      r14.yzw = r17.xyz * r14.yzw;
      r3.z = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r16.xyz = r13.yzw * r2.zzz + r14.yzw;
      r15.w = 0;
      r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r2.w).xyz;
      r2.z = sunConstants.globalProbeExposure * r3.y + -r3.z;
      r2.z = r2.y * r2.z + r3.z;
      r30.xyz = r13.yzw * r2.zzz + r30.xyz;
    }
  } else {
    r16.xyz = float3(0,0,0);
  }
  r2.z = r2.x + r4.z;
  r2.z = log2(abs(r2.z));
  r2.z = r2.z * r1.z;
  r2.z = exp2(r2.z);
  r2.z = r2.z + r4.z;
  r2.z = saturate(-1 + r2.z);
  r13.yzw = r16.xyz * r4.zzz;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r14.yzw = r30.xyz * r2.zzz;
  r16.xyz = r14.yzw * r2.yyy;
  r2.yzw = r14.yzw * r2.www;
  r3.y = sqrt(r1.z);
  r3.y = r3.y * 0.5 + 0.5;
  r3.y = r3.y * r3.y;
  r3.z = 0.5 * r3.y;
  r3.y = -r3.y * 0.5 + 1;
  r4.z = r2.x * r3.y + r3.z;
  r3.yz = r4.zz * r3.yz;
  r0.x = (uint)r0.x >> 24;
  r0.x = (int)r0.x * 15;
  if (3 == 0) r4.z = 0; else if (3+24 < 32) {   r4.z = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 24)); r4.z = (uint)r4.z >> (32-3);  } else r4.z = (uint)lightConstantsCB[r0.x].data[1].w >> 24;
  switch (r4.z) {
    case 4 :    if (r1.w != 0) {
      r17.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r17.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r6.w = cmp(0 < lightConstantsCB[r0.x].data[6].y);
    r17.xy = lightConstantsCB[r0.x].data[5].zw;
    r17.z = lightConstantsCB[r0.x].data[6].x;
    r14.yzw = -r17.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.x].data[0].xyz;
    r18.xyz = r14.yzw + -r5.xyz;
    r7.w = dot(r17.xyz, r18.xyz);
    r8.w = saturate(-r7.w / lightConstantsCB[r0.x].data[6].y);
    r19.xyz = r8.www * r17.xyz + r14.yzw;
    r19.xyz = r6.www ? r19.xyz : lightConstantsCB[r0.x].data[0].xyz;
    r19.xyz = r19.xyz + -r5.xyz;
    r9.w = dot(r19.xyz, r19.xyz);
    r10.w = rsqrt(r9.w);
    r19.xyz = r19.xyz * r10.www;
    r10.w = dot(r11.xyz, r19.xyz);
    r11.w = saturate(r10.w);
    r12.w = cmp(0 < r11.w);
    if (r12.w != 0) {
      r12.w = sqrt(r9.w);
      r15.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
      r9.w = r15.w / r9.w;
      r9.w = min(1, r9.w);
      r19.xy = saturate(r12.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
      r19.zw = r19.xy * r19.xy;
      r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
      r19.xy = r19.zw * r19.xy;
      r9.w = r19.x * r9.w;
      r9.w = r9.w * r19.y;
      r12.w = cmp(0 < r9.w);
      if (r12.w != 0) {
        if (3 == 0) r12.w = 0; else if (3+27 < 32) {         r12.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);        } else r12.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r1.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r15.w, cb2[52].x, l(112), u2.xxxx
        r15.w = samplerLinear[]..swiz;
          r15.w = (int)r15.w | 4;
          GBufferDiffuseColor[viewID].112 = u2.x;
          GBufferDiffuseColor[viewID].128 = u2.x;
        }
        r12.w = cmp((int)r12.w != 1);
        if (r12.w != 0) {
          r19.xy = (uint2)r1.yx;
          r12.w = dot(r19.xy, float2(0.0671105608,0.00583714992));
          r12.w = frac(r12.w);
          r12.w = 52.9829178 * r12.w;
          r12.w = frac(r12.w);
          r12.w = r12.w * 6.28318548 + gameTick.w;
          sincos(r12.w, r19.x, r20.x);
          r12.w = abs(r10.w) * -0.200000003 + 0.400000006;
          r19.yzw = r11.xyz * r12.www + r5.xyz;
          r19.yzw = -lightConstantsCB[r0.x].data[4].yzw + r19.yzw;
          r12.w = max(abs(r19.z), abs(r19.w));
          r12.w = max(abs(r19.y), r12.w);
          r12.w = lightConstantsCB[r0.x].data[5].x / r12.w;
          r12.w = lightConstantsCB[r0.x].data[5].y + r12.w;
          r15.w = dot(r19.yzw, r19.yzw);
          r15.w = rsqrt(r15.w);
          r12.w = max(6.10351563e-05, r12.w);
          r16.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
          r21.x = -r13.x;
          r22.w = (uint)r16.w;
          r21.y = r14.x;
          r21.z = r13.x;
          r16.w = 0;
          r17.w = 0;
          while (true) {
            r18.w = cmp((int)r17.w >= 8);
            if (r18.w != 0) break;
            r20.y = dot(icb[r17.w+0].yx, r21.xy);
            r20.z = dot(icb[r17.w+0].yx, r21.yz);
            r23.yz = lightConstantsCB[r0.x].data[3].yy * r20.yz;
            r23.x = r23.y * r20.x;
            r23.w = r23.y * r19.x;
            r22.xyz = r19.yzw * r15.www + r23.xzw;
            r18.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyzw, r12.w).x;
            r16.w = r18.w * 0.125 + r16.w;
            r17.w = (int)r17.w + 1;
          }
        } else {
          r16.w = 1;
        }
        r9.w = r16.w * r9.w;
        r12.w = cmp(0 < r9.w);
        if (r12.w != 0) {
          r12.w = lightConstantsCB[r0.x].data[1].z * r0.w;
          r12.w = 0.25 * r12.w;
          r15.w = dot(r17.xyz, r15.xyz);
          r15.x = dot(r15.xyz, r18.xyz);
          r15.y = -r15.w * r15.w + lightConstantsCB[r0.x].data[6].y;
          r7.w = r15.w * r15.x + -r7.w;
          r7.w = saturate(r7.w / r15.y);
          r15.x = r15.y / lightConstantsCB[r0.x].data[6].y;
          r15.x = 10 * r15.x;
          r15.x = min(1, r15.x);
          r7.w = r7.w + -r8.w;
          r7.w = r15.x * r7.w + r8.w;
          r14.yzw = r7.www * r17.xyz + r14.yzw;
          r14.yzw = r6.www ? r14.yzw : lightConstantsCB[r0.x].data[0].xyz;
          r14.yzw = r14.yzw + -r5.xyz;
          r6.w = dot(r14.yzw, r14.yzw);
          r6.w = rsqrt(r6.w);
          r15.xyz = r14.yzw * r6.www;
          if (4 == 0) r7.w = 0; else if (4+16 < 32) {           r7.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r7.w = (uint)r7.w >> (32-4);          } else r7.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r8.w = cmp(0 < (uint)r7.w);
          r8.w = r8.w ? r3.x : 0;
          if (r8.w != 0) {
            r7.w = (int)r7.w + numLights;
            r7.w = mad((int)r7.w, 15, -15);
            r8.w = abs(r10.w) * -0.200000003 + 0.400000006;
            r17.xyz = r11.xyz * r8.www + r5.xyz;
            r18.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r18.w = lightConstantsCB[r7.w].data[7].x;
            r17.w = 1;
            r8.w = dot(r18.xyzw, r17.xyzw);
            r18.xyz = lightConstantsCB[r7.w].data[7].yzw;
            r18.w = lightConstantsCB[r7.w].data[8].x;
            r15.w = dot(r18.xyzw, r17.xyzw);
            r16.w = cmp(r15.w < r8.w);
            if (r16.w == 0) {
              r18.xyz = lightConstantsCB[r7.w].data[4].yzw;
              r18.w = lightConstantsCB[r7.w].data[5].x;
              r18.x = dot(r18.xyzw, r17.xyzw);
              r19.xyz = lightConstantsCB[r7.w].data[5].yzw;
              r19.w = lightConstantsCB[r7.w].data[6].x;
              r18.y = dot(r19.xyzw, r17.xyzw);
              r17.xy = r18.xy / r15.ww;
              r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r18.x = lightConstantsCB[r7.w].data[9].w + r17.x;
              r18.y = lightConstantsCB[r7.w].data[10].x + r17.y;
              r17.xy = lightConstantsCB[r7.w].data[9].yz * r18.xy;
              r17.zw = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
              r18.xy = float2(1,1) + -r17.zw;
              r18.xy = cmp(r17.xy >= r18.xy);
              r17.zw = cmp(r17.zw >= r17.xy);
              r17.zw = (int2)r17.zw | (int2)r18.xy;
              r17.z = (int)r17.w | (int)r17.z;
              if (r17.z == 0) {
                r17.xy = saturate(r17.xy);
                r18.x = r17.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                r18.y = r17.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                r17.x = lightConstantsCB[r7.w].data[10].z * r15.w;
                r8.w = lightConstantsCB[r7.w].data[10].y * r15.w + r8.w;
                r8.w = r8.w / r17.x;
              }
            } else {
              r17.z = -1;
            }
            r15.w = (int)r16.w | (int)r17.z;
            if (r15.w == 0) {
              r8.w = max(6.10351563e-05, r8.w);
              r15.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r17.x = -r13.x;
                r19.z = (uint)r15.w;
                r17.y = r14.x;
                r17.z = r13.x;
                r16.w = 0;
                r17.w = 0;
                while (true) {
                  r18.w = cmp((int)r17.w >= 8);
                  if (r18.w != 0) break;
                  r20.x = dot(icb[r17.w+0].yx, r17.xy);
                  r20.y = dot(icb[r17.w+0].yx, r17.yz);
                  r19.xy = r20.xy * lightConstantsCB[r7.w].data[3].yy + r18.xy;
                  r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r8.w).x;
                  r16.w = r18.w * 0.125 + r16.w;
                  r17.w = (int)r17.w + 1;
                }
              } else {
                r18.z = (uint)r15.w;
                r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
              }
              r7.w = r16.w * r16.w;
              r7.w = r7.w * r16.w;
            } else {
              r7.w = 1;
            }
            r9.w = r9.w * r7.w;
          } else {
            if (4 == 0) r7.w = 0; else if (4+20 < 32) {             r7.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r7.w = (uint)r7.w >> (32-4);            } else r7.w = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r8.w = cmp(0 < (uint)r7.w);
            r15.w = ~(int)r3.x;
            r8.w = r8.w ? r15.w : 0;
            if (r8.w != 0) {
              r7.w = (int)r7.w + numLights;
              r7.w = mad((int)r7.w, 15, -15);
              r8.w = abs(r10.w) * -0.200000003 + 0.400000006;
              r17.xyz = r11.xyz * r8.www + r5.xyz;
              r18.xyz = lightConstantsCB[r7.w].data[6].yzw;
              r18.w = lightConstantsCB[r7.w].data[7].x;
              r17.w = 1;
              r8.w = dot(r18.xyzw, r17.xyzw);
              r18.xyz = lightConstantsCB[r7.w].data[7].yzw;
              r18.w = lightConstantsCB[r7.w].data[8].x;
              r15.w = dot(r18.xyzw, r17.xyzw);
              r16.w = cmp(r15.w < r8.w);
              if (r16.w == 0) {
                r18.xyz = lightConstantsCB[r7.w].data[4].yzw;
                r18.w = lightConstantsCB[r7.w].data[5].x;
                r18.x = dot(r18.xyzw, r17.xyzw);
                r19.xyz = lightConstantsCB[r7.w].data[5].yzw;
                r19.w = lightConstantsCB[r7.w].data[6].x;
                r18.y = dot(r19.xyzw, r17.xyzw);
                r17.xy = r18.xy / r15.ww;
                r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r18.x = lightConstantsCB[r7.w].data[9].w + r17.x;
                r18.y = lightConstantsCB[r7.w].data[10].x + r17.y;
                r17.xy = lightConstantsCB[r7.w].data[9].yz * r18.xy;
                r17.zw = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                r18.xy = float2(1,1) + -r17.zw;
                r18.xy = cmp(r17.xy >= r18.xy);
                r17.zw = cmp(r17.zw >= r17.xy);
                r17.zw = (int2)r17.zw | (int2)r18.xy;
                r17.z = (int)r17.w | (int)r17.z;
                if (r17.z == 0) {
                  r17.xy = saturate(r17.xy);
                  r18.x = r17.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                  r18.y = r17.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                  r17.x = lightConstantsCB[r7.w].data[10].z * r15.w;
                  r8.w = lightConstantsCB[r7.w].data[10].y * r15.w + r8.w;
                  r8.w = r8.w / r17.x;
                }
              } else {
                r17.z = -1;
              }
              r15.w = (int)r16.w | (int)r17.z;
              if (r15.w == 0) {
                r8.w = max(6.10351563e-05, r8.w);
                r15.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r17.x = -r13.x;
                  r19.z = (uint)r15.w;
                  r17.y = r14.x;
                  r17.z = r13.x;
                  r16.w = 0;
                  r17.w = 0;
                  while (true) {
                    r18.w = cmp((int)r17.w >= 8);
                    if (r18.w != 0) break;
                    r20.x = dot(icb[r17.w+0].yx, r17.xy);
                    r20.y = dot(icb[r17.w+0].yx, r17.yz);
                    r19.xy = r20.xy * lightConstantsCB[r7.w].data[3].yy + r18.xy;
                    r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r8.w).x;
                    r16.w = r18.w * 0.125 + r16.w;
                    r17.w = (int)r17.w + 1;
                  }
                } else {
                  r18.z = (uint)r15.w;
                  r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
                }
                r7.w = r16.w * r16.w;
                r7.w = r7.w * r16.w;
              } else {
                r7.w = 1;
              }
              r9.w = r9.w * r7.w;
            }
          }
          r7.w = -r2.x * 0.5 + 1;
          r7.w = -r11.w * r7.w + 1;
          r7.w = r7.w * r7.w;
          r7.w = -r7.w * 0.620000005 + 0.620000005;
          r7.w = r7.w + -r11.w;
          r7.w = r1.z * r7.w + r11.w;
          r7.w = r7.w * r9.w;
          r17.x = lightConstantsCB[r0.x].data[0].w;
          r17.yz = lightConstantsCB[r0.x].data[1].xy;
          r8.w = cmp(0 < r10.w);
          r18.xyz = r7.www * r17.xyz + r13.yzw;
          r7.w = saturate(dot(r11.xyz, r15.xyz));
          r14.yzw = r14.yzw * r6.www + r12.xyz;
          r6.w = dot(r14.yzw, r14.yzw);
          r6.w = rsqrt(r6.w);
          r14.yzw = r14.yzw * r6.www;
          r6.w = dot(r14.yzw, r12.xyz);
          r10.w = dot(r11.xyz, r14.yzw);
          r11.w = abs(r10.w) * r0.w + -abs(r10.w);
          r10.w = abs(r10.w) * r11.w + 1;
          r11.w = r7.w * r3.y + r3.z;
          r10.w = r10.w * r10.w;
          r10.w = r10.w * r11.w;
          r10.w = rcp(r10.w);
          r7.w = r7.w * r12.w;
          r7.w = r10.w * r7.w;
          r7.w = r7.w * r9.w;
          r14.yzw = r7.www * r17.xyz + r2.yzw;
          r6.w = saturate(1 + -r6.w);
          r10.w = r6.w * r6.w;
          r10.w = r10.w * r10.w;
          r6.w = r10.w * r6.w;
          r6.w = r7.w * r6.w;
          r15.xyz = r6.www * r17.xyz + r16.xyz;
          r13.yzw = r8.www ? r18.xyz : r13.yzw;
          r16.xyz = r8.www ? r15.xyz : r16.xyz;
          r2.yzw = r8.www ? r14.yzw : r2.yzw;
          if (r1.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r6.w, cb2[52].x, l(112), u2.xxxx
          r6.w = samplerLinear[]..swiz;
            r6.w = (int)r6.w | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r4.z = 0x00010101;
        } else {
          r4.z = 257;
        }
      } else {
        r4.z = 1;
      }
    } else {
      r4.z = 1;
    }
    break;
    case 2 :    if (r1.w != 0) {
      r15.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r15.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r15.xy = lightConstantsCB[r0.x].data[3].zw + -r5.xy;
    r15.z = lightConstantsCB[r0.x].data[4].x + -r5.z;
    r6.w = dot(r15.xyz, r15.xyz);
    r6.w = rsqrt(r6.w);
    r14.yzw = r15.xyz * r6.www;
    r7.w = dot(r11.xyz, r14.yzw);
    r8.w = saturate(r7.w);
    r9.w = cmp(0 < r8.w);
    if (r9.w != 0) {
      r17.xyz = lightConstantsCB[r0.x].data[7].yzw;
      r17.w = lightConstantsCB[r0.x].data[8].x;
      r5.w = 1;
      r9.w = dot(r17.xyzw, r5.xyzw);
      r10.w = cmp(r9.w < 1);
      if (r10.w != 0) {
        r14.yzw = float3(1,1,1);
        r10.w = 0;
      } else {
        r18.xyz = lightConstantsCB[r0.x].data[0].xyz + -r5.xyz;
        r11.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
        r12.w = dot(r18.xyz, r18.xyz);
        r11.w = r11.w / r12.w;
        r11.w = min(1, r11.w);
        r18.xy = saturate(r9.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
        r18.zw = r18.xy * r18.xy;
        r18.xy = r18.xy * float2(-2,-2) + float2(3,3);
        r18.xy = r18.zw * r18.xy;
        r11.w = r18.x * r11.w;
        r11.w = r11.w * r18.y;
        r18.xyz = lightConstantsCB[r0.x].data[4].yzw;
        r18.w = lightConstantsCB[r0.x].data[5].x;
        r18.x = dot(r18.xyzw, r5.xyzw);
        r19.xyz = lightConstantsCB[r0.x].data[5].yzw;
        r19.w = lightConstantsCB[r0.x].data[6].x;
        r18.y = dot(r19.xyzw, r5.xyzw);
        r18.xy = r18.xy / r9.ww;
        r5.w = cmp(lightConstantsCB[r0.x].data[10].w < 0.00048828125);
        if (r5.w != 0) {
          r19.xy = saturate(abs(r18.xy) * lightConstantsCB[r0.x].data[12].xy + lightConstantsCB[r0.x].data[12].zw);
          r19.zw = r19.xy * r19.xy;
          r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
          r19.xy = r19.zw * r19.xy;
          r5.w = r19.x * r19.y;
        } else {
          r19.xyzw = saturate(lightConstantsCB[r0.x].data[11].xyzw * abs(r18.yyxx));
          r19.xyzw = log2(r19.xyzw);
          r19.xyzw = lightConstantsCB[r0.x].data[12].zzzz * r19.xyzw;
          r19.xyzw = exp2(r19.xyzw);
          r19.xy = r19.xy + r19.zw;
          r19.xy = log2(r19.xy);
          r19.xy = lightConstantsCB[r0.x].data[12].ww * r19.xy;
          r19.xy = exp2(r19.xy);
          r9.w = lightConstantsCB[r0.x].data[12].x * r19.x;
          r12.w = lightConstantsCB[r0.x].data[12].y * r19.y + -1;
          r9.w = lightConstantsCB[r0.x].data[12].y * r19.y + -r9.w;
          r9.w = saturate(r12.w / r9.w);
          r12.w = r9.w * r9.w;
          r9.w = r9.w * -2 + 3;
          r5.w = r12.w * r9.w;
        }
        r10.w = r11.w * r5.w;
        r5.w = 255 & (int)lightConstantsCB[r0.x].data[14].w;
        if (r5.w != 0) {
          r18.z = 1;
          r9.w = dot(lightConstantsCB[r0.x].data[13].xyz, r18.xyz);
          r19.x = lightConstantsCB[r0.x].data[13].w;
          r19.yz = lightConstantsCB[r0.x].data[14].xy;
          r11.w = dot(r19.xyz, r18.xyz);
          r18.x = frac(r9.w);
          r18.y = frac(r11.w);
          r5.w = (int)r5.w + -1;
          r18.z = (uint)r5.w;
          r14.yzw = gCookieArray.SampleLevel(samplerLinear_s, r18.xyz, 0).xyz;
        } else {
          r14.yzw = float3(1,1,1);
        }
      }
      r18.x = lightConstantsCB[r0.x].data[0].w;
      r18.yz = lightConstantsCB[r0.x].data[1].xy;
      r14.yzw = r18.xyz * r14.yzw;
      r5.w = cmp(0 < r10.w);
      if (r5.w != 0) {
        if (3 == 0) r5.w = 0; else if (3+27 < 32) {         r5.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r5.w = (uint)r5.w >> (32-3);        } else r5.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r1.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, l(112), u2.xxxx
        r9.w = samplerLinear[]..swiz;
          r9.w = (int)r9.w | 4;
          GBufferDiffuseColor[viewID].112 = u2.x;
          GBufferDiffuseColor[viewID].128 = u2.x;
        }
        r5.w = cmp((int)r5.w != 1);
        if (r5.w != 0) {
          r5.w = abs(r7.w) * -0.200000003 + 0.400000006;
          r18.xyz = r11.xyz * r5.www + r5.xyz;
          r19.xyz = lightConstantsCB[r0.x].data[6].yzw;
          r19.w = lightConstantsCB[r0.x].data[7].x;
          r18.w = 1;
          r5.w = dot(r19.xyzw, r18.xyzw);
          r9.w = dot(r17.xyzw, r18.xyzw);
          r11.w = cmp(r9.w >= r5.w);
          if (r11.w != 0) {
            r17.xyz = lightConstantsCB[r0.x].data[4].yzw;
            r17.w = lightConstantsCB[r0.x].data[5].x;
            r17.x = dot(r17.xyzw, r18.xyzw);
            r19.xyz = lightConstantsCB[r0.x].data[5].yzw;
            r19.w = lightConstantsCB[r0.x].data[6].x;
            r17.y = dot(r19.xyzw, r18.xyzw);
            r17.xy = r17.xy / r9.ww;
            r17.xy = saturate(r17.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r18.x = r17.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
            r18.y = r17.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
            r5.w = r5.w / r9.w;
            r5.w = max(6.10351563e-05, r5.w);
            r9.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r17.x = -r13.x;
              r19.z = (uint)r9.w;
              r17.y = r14.x;
              r17.z = r13.x;
              r11.w = 0;
              r12.w = 0;
              while (true) {
                r15.w = cmp((int)r12.w >= 8);
                if (r15.w != 0) break;
                r20.x = dot(icb[r12.w+0].yx, r17.xy);
                r20.y = dot(icb[r12.w+0].yx, r17.yz);
                r19.xy = r20.xy * lightConstantsCB[r0.x].data[3].yy + r18.xy;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.w).x;
                r11.w = r15.w * 0.125 + r11.w;
                r12.w = (int)r12.w + 1;
              }
            } else {
              r18.z = (uint)r9.w;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
            }
            r5.w = r11.w * r11.w;
            r5.w = r5.w * r11.w;
          } else {
            r5.w = 1;
          }
        } else {
          r5.w = 1;
        }
        r5.w = r10.w * r5.w;
        r9.w = cmp(0 < r5.w);
        if (r9.w != 0) {
          r9.w = lightConstantsCB[r0.x].data[1].z * r0.w;
          r9.w = r9.w * r8.w;
          if (4 == 0) r10.w = 0; else if (4+16 < 32) {           r10.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r10.w = (uint)r10.w >> (32-4);          } else r10.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r11.w = cmp(0 < (uint)r10.w);
          r11.w = r11.w ? r3.x : 0;
          if (r11.w != 0) {
            r10.w = (int)r10.w + numLights;
            r10.w = mad((int)r10.w, 15, -15);
            r11.w = abs(r7.w) * -0.200000003 + 0.400000006;
            r17.xyz = r11.xyz * r11.www + r5.xyz;
            r18.xyz = lightConstantsCB[r10.w].data[6].yzw;
            r18.w = lightConstantsCB[r10.w].data[7].x;
            r17.w = 1;
            r11.w = dot(r18.xyzw, r17.xyzw);
            r18.xyz = lightConstantsCB[r10.w].data[7].yzw;
            r18.w = lightConstantsCB[r10.w].data[8].x;
            r12.w = dot(r18.xyzw, r17.xyzw);
            r15.w = cmp(r12.w < r11.w);
            if (r15.w == 0) {
              r18.xyz = lightConstantsCB[r10.w].data[4].yzw;
              r18.w = lightConstantsCB[r10.w].data[5].x;
              r18.x = dot(r18.xyzw, r17.xyzw);
              r19.xyz = lightConstantsCB[r10.w].data[5].yzw;
              r19.w = lightConstantsCB[r10.w].data[6].x;
              r18.y = dot(r19.xyzw, r17.xyzw);
              r17.xy = r18.xy / r12.ww;
              r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r18.x = lightConstantsCB[r10.w].data[9].w + r17.x;
              r18.y = lightConstantsCB[r10.w].data[10].x + r17.y;
              r17.xy = lightConstantsCB[r10.w].data[9].yz * r18.xy;
              r17.zw = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
              r18.xy = float2(1,1) + -r17.zw;
              r18.xy = cmp(r17.xy >= r18.xy);
              r17.zw = cmp(r17.zw >= r17.xy);
              r17.zw = (int2)r17.zw | (int2)r18.xy;
              r16.w = (int)r17.w | (int)r17.z;
              if (r16.w == 0) {
                r17.xy = saturate(r17.xy);
                r18.x = r17.x * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
                r18.y = r17.y * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
                r17.x = lightConstantsCB[r10.w].data[10].z * r12.w;
                r11.w = lightConstantsCB[r10.w].data[10].y * r12.w + r11.w;
                r11.w = r11.w / r17.x;
              }
            } else {
              r16.w = -1;
            }
            r12.w = (int)r15.w | (int)r16.w;
            if (r12.w == 0) {
              r11.w = max(6.10351563e-05, r11.w);
              r12.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r17.x = -r13.x;
                r19.z = (uint)r12.w;
                r17.y = r14.x;
                r17.z = r13.x;
                r15.w = 0;
                r16.w = 0;
                while (true) {
                  r17.w = cmp((int)r16.w >= 8);
                  if (r17.w != 0) break;
                  r20.x = dot(icb[r16.w+0].yx, r17.xy);
                  r20.y = dot(icb[r16.w+0].yx, r17.yz);
                  r19.xy = r20.xy * lightConstantsCB[r10.w].data[3].yy + r18.xy;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r11.w).x;
                  r15.w = r17.w * 0.125 + r15.w;
                  r16.w = (int)r16.w + 1;
                }
              } else {
                r18.z = (uint)r12.w;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r11.w).x;
              }
              r10.w = r15.w * r15.w;
              r10.w = r10.w * r15.w;
            } else {
              r10.w = 1;
            }
            r5.w = r10.w * r5.w;
          } else {
            if (4 == 0) r0.x = 0; else if (4+20 < 32) {             r0.x = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r0.x = (uint)r0.x >> (32-4);            } else r0.x = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r10.w = cmp(0 < (uint)r0.x);
            r3.x = ~(int)r3.x;
            r3.x = r10.w ? r3.x : 0;
            if (r3.x != 0) {
              r0.x = (int)r0.x + numLights;
              r0.x = mad((int)r0.x, 15, -15);
              r3.x = abs(r7.w) * -0.200000003 + 0.400000006;
              r17.xyz = r11.xyz * r3.xxx + r5.xyz;
              r18.xyz = lightConstantsCB[r0.x].data[6].yzw;
              r18.w = lightConstantsCB[r0.x].data[7].x;
              r17.w = 1;
              r3.x = dot(r18.xyzw, r17.xyzw);
              r18.xyz = lightConstantsCB[r0.x].data[7].yzw;
              r18.w = lightConstantsCB[r0.x].data[8].x;
              r10.w = dot(r18.xyzw, r17.xyzw);
              r11.w = cmp(r10.w < r3.x);
              if (r11.w == 0) {
                r18.xyz = lightConstantsCB[r0.x].data[4].yzw;
                r18.w = lightConstantsCB[r0.x].data[5].x;
                r18.x = dot(r18.xyzw, r17.xyzw);
                r19.xyz = lightConstantsCB[r0.x].data[5].yzw;
                r19.w = lightConstantsCB[r0.x].data[6].x;
                r18.y = dot(r19.xyzw, r17.xyzw);
                r17.xy = r18.xy / r10.ww;
                r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r18.x = lightConstantsCB[r0.x].data[9].w + r17.x;
                r18.y = lightConstantsCB[r0.x].data[10].x + r17.y;
                r17.xy = lightConstantsCB[r0.x].data[9].yz * r18.xy;
                r17.zw = lightConstantsCB[r0.x].data[3].yy / lightConstantsCB[r0.x].data[8].yw;
                r18.xy = float2(1,1) + -r17.zw;
                r18.xy = cmp(r17.xy >= r18.xy);
                r17.zw = cmp(r17.zw >= r17.xy);
                r17.zw = (int2)r17.zw | (int2)r18.xy;
                r12.w = (int)r17.w | (int)r17.z;
                if (r12.w == 0) {
                  r17.xy = saturate(r17.xy);
                  r18.x = r17.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
                  r18.y = r17.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
                  r15.w = lightConstantsCB[r0.x].data[10].z * r10.w;
                  r3.x = lightConstantsCB[r0.x].data[10].y * r10.w + r3.x;
                  r3.x = r3.x / r15.w;
                }
              } else {
                r12.w = -1;
              }
              r10.w = (int)r11.w | (int)r12.w;
              if (r10.w == 0) {
                r3.x = max(6.10351563e-05, r3.x);
                r10.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
                if (enableDitheredShadow != 0) {
                  r17.x = -r13.x;
                  r19.z = (uint)r10.w;
                  r17.y = r14.x;
                  r17.z = r13.x;
                  r11.w = 0;
                  r12.w = 0;
                  while (true) {
                    r13.x = cmp((int)r12.w >= 8);
                    if (r13.x != 0) break;
                    r20.x = dot(icb[r12.w+0].yx, r17.xy);
                    r20.y = dot(icb[r12.w+0].yx, r17.yz);
                    r19.xy = r20.xy * lightConstantsCB[r0.x].data[3].yy + r18.xy;
                    r13.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r3.x).x;
                    r11.w = r13.x * 0.125 + r11.w;
                    r12.w = (int)r12.w + 1;
                  }
                } else {
                  r18.z = (uint)r10.w;
                  r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r3.x).x;
                }
                r0.x = r11.w * r11.w;
                r0.x = r0.x * r11.w;
              } else {
                r0.x = 1;
              }
              r5.w = r5.w * r0.x;
            }
          }
          r0.x = -r2.x * 0.5 + 1;
          r0.x = -r8.w * r0.x + 1;
          r0.x = r0.x * r0.x;
          r0.x = -r0.x * 0.620000005 + 0.620000005;
          r0.x = r0.x + -r8.w;
          r0.x = r1.z * r0.x + r8.w;
          r0.x = r0.x * r5.w;
          r1.z = cmp(0 < r7.w);
          r17.xyz = r0.xxx * r14.yzw + r13.yzw;
          r15.xyz = r15.xyz * r6.www + r12.xyz;
          r0.x = dot(r15.xyz, r15.xyz);
          r0.x = rsqrt(r0.x);
          r15.xyz = r15.xyz * r0.xxx;
          r0.x = dot(r15.xyz, r12.xyz);
          r2.x = dot(r11.xyz, r15.xyz);
          r0.w = abs(r2.x) * r0.w + -abs(r2.x);
          r0.w = abs(r2.x) * r0.w + 1;
          r2.x = r8.w * r3.y + r3.z;
          r0.w = r0.w * r0.w;
          r0.w = r0.w * r2.x;
          r0.w = rcp(r0.w);
          r0.w = r0.w * r9.w;
          r0.w = r5.w * r0.w;
          r0.w = 0.25 * r0.w;
          r3.xyz = r0.www * r14.yzw + r2.yzw;
          r0.x = saturate(1 + -r0.x);
          r2.x = r0.x * r0.x;
          r2.x = r2.x * r2.x;
          r0.x = r2.x * r0.x;
          r0.x = r0.w * r0.x;
          r11.xyz = r0.xxx * r14.yzw + r16.xyz;
          r13.yzw = r1.zzz ? r17.xyz : r13.yzw;
          r16.xyz = r1.zzz ? r11.xyz : r16.xyz;
          r2.yzw = r1.zzz ? r3.xyz : r2.yzw;
          if (r1.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.x, cb2[52].x, l(112), u2.xxxx
          r0.x = samplerLinear[]..swiz;
            r0.x = (int)r0.x | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r4.z = 0x00010101;
        } else {
          r4.z = 257;
        }
      } else {
        r4.z = 1;
      }
    } else {
      r4.z = 1;
    }
    break;
    default :
    r4.z = 0;
    break;
  }
  r11.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r11.y;
  r3.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r3.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r3.xy = r0.ww ? r3.yz : float2(-1,0);
  r4.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r4.xy = r0.ww ? r4.yw : float2(-1,0);
  r7.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r7.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r7.xy = r0.ww ? r7.yz : float2(-1,0);
  r8.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r8.x;
  r0.x = cmp((int)r0.x == (int)r0.w);
  r0.xw = r0.xx ? r8.yz : float2(-1,0);
  r8.x = r3.x;
  r8.y = r4.x;
  r8.z = r7.x;
  r8.w = r0.x;
  r8.xyzw = r8.xyzw + -r11.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r8.x + r8.y;
  r0.x = r0.x + r8.z;
  r0.x = r0.x + r8.w;
  r1.z = r8.y * r4.y;
  r1.z = r8.x * r3.y + r1.z;
  r1.z = r8.z * r7.y + r1.z;
  r0.w = r8.w * r0.w + r1.z;
  r11.w = r0.w / r0.x;
  r0.x = cmp(0 >= r0.x);
  r11.yz = r0.xx ? float2(0,0) : r11.zw;
  r0.xw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.w == (int)r0.x);
  r3.xyz = r0.xxx ? r11.xyz : r11.xzy;
  r0.x = -r3.z * 0.5 + r3.x;
  r7.y = r3.z + r0.x;
  r7.z = -r3.y * 0.5 + r0.x;
  r7.x = r7.z + r3.y;
  r3.xyz = float3(1,1,1) + -r7.xyz;
  r3.xyz = r16.xyz * r3.xyz;
  r2.xyz = r2.yzw * r7.xyz + r3.xyz;
  r2.xyz = r13.yzw * r6.xyz + r2.xyz;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(r5.xyz, r5.xyz);
    r0.w = rsqrt(r0.x);
    r3.xyz = r5.xyz * r0.www;
    r0.x = sqrt(r0.x);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r4.xy = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r0.w = cmp(0.00999999978 < abs(r5.z));
      r6.xy = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r6.zw = float2(-1.44269502,-1.44269502) * r6.xy;
      r6.zw = exp2(r6.zw);
      r6.zw = float2(1,1) + -r6.zw;
      r6.xy = r6.zw / r6.xy;
      r6.xy = r6.xy * r4.xy;
      r4.xy = r0.ww ? r6.xy : r4.xy;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r6.xyz = exp2(r6.xyz);
      r4.xyw = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r4.xyw = exp2(r4.xyw);
      r4.xyw = r4.xyw + -r6.xyz;
      r4.xyw = fogConstants.blendAmount * r4.xyw + r6.xyz;
    } else {
      r0.w = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.z = cmp(0.00999999978 < abs(r5.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r5.w = -1.44269502 * r2.w;
      r5.w = exp2(r5.w);
      r5.w = 1 + -r5.w;
      r2.w = r5.w / r2.w;
      r2.w = r2.w * r0.w;
      r0.w = r1.z ? r2.w : r0.w;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyw = exp2(r6.xyz);
    }
    r4.xyw = r4.xyw * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyw = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyw);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.w = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r2.w = r2.w * r2.w;
    r2.w = 12.566371 * r2.w;
    r1.z = r1.z / r2.w;
    r0.x = -fogConstants.atmospherehazebasedist + r0.x;
    r0.x = saturate(fogConstants.atmospherehazefadedist * r0.x);
    r0.x = r1.z * r0.x;
    r0.w = saturate(r0.w);
    r0.w = r0.w * r0.w + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConstants.atmospheresunstrength * r0.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r3.xyz = r0.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r6.xyz = float3(1,1,1) + -r4.xyw;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyw + r3.xyz;
  } else {
    r0.x = fogConstants.heightFalloff * r5.z;
    r0.w = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r1.z = cmp(abs(r0.x) < 9.99999975e-05);
    r2.w = min(64, r0.w);
    r2.w = 1.44269502 * r2.w;
    r2.w = exp2(r2.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.y ? r2.w : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.x = r1.z ? 1 : r0.x;
    r0.x = r0.w / r0.x;
    r0.x = r1.z ? r4.x : r0.x;
    r0.x = fogConstants.expMul * r0.x;
    r0.w = dot(r5.xyz, r5.xyz);
    r1.z = sqrt(r0.w);
    r0.x = r0.x * r1.z + fogConstants.expAdd;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r0.w = rsqrt(r0.w);
    r4.xyw = r5.xyz * r0.www;
    r0.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyw);
    r0.w = saturate(fogConstants.sunFogAngles.y * r0.w + fogConstants.sunFogAngles.x);
    r6.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r6.xyzw = r0.wwww * r6.xyzw + fogConstants.sunFogColor.xyzw;
    r0.x = r6.w * r0.x;
    r4.xyw = r6.xyz + -r2.xyz;
    r3.xyz = r0.xxx * r4.xyw + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.x = cmp(0 < permuteHighlight);
  r6.xyzw = permuteHighlight & int4(32,3,64,12);
  r3.xy = cmp((int2)r6.xz != int2(0,0));
  r4.xy = cmp((int2)r6.yw == int2(2,0));
  r3.xy = r3.xy ? r4.xy : 0;
  r3.xy = r3.xy ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 16);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.xxx ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r4.z & 1;
        break;
        case 2 :        if (1 == 0) r0.x = 0; else if (1+8 < 32) {         r0.x = (uint)r4.z << (32-(1 + 8)); r0.x = (uint)r0.x >> (32-1);        } else r0.x = (uint)r4.z >> 8;
        break;
        case 3 :        r0.x = (uint)r4.z >> 16;
        break;
        case 4 :        r0.x = (int)r3.w & 255;
        break;
        case 5 :        if (8 == 0) r0.x = 0; else if (8+8 < 32) {         r0.x = (uint)r3.w << (32-(8 + 8)); r0.x = (uint)r0.x >> (32-8);        } else r0.x = (uint)r3.w >> 8;
        break;
        default :
        r0.x = 0;
        break;
      }
      r0.x = (uint)r0.x;
      r0.x = drawNumLighstScale * r0.x;
      r3.xyz = r0.xxx * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyz + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r1.w != 0) {
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r4.z & 1;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.x = (int)r3.w & 255;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r4.z & 1;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (1 == 0) r0.w = 0; else if (1+8 < 32) {     r0.w = (uint)r4.z << (32-(1 + 8)); r0.w = (uint)r0.w >> (32-1);    } else r0.w = (uint)r4.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r0.w
    InterlockedAdd(dest, value, orig_value);
    r1.x = (uint)r4.z >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (int)r3.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.y
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r3.w << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r3.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r1.z
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r0.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(4), r0.w
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(8), r1.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(12), r1.y
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), r1.z
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, g0, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.x = cmp((int)r1.x == 63);
    if (r0.x != 0) {
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
        ld_raw r0.x, l(16), g1.xxxx
      r1.xz = viewID;
      r1.yw = float2(7.8472714e-44,0);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.x
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
        ld_raw r0.x, l(16), g2.xxxx
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.x
      InterlockedMax(dest, value, orig_value);
      r0.yz = cmp((int2)r0.yz == centerGroupIDx);
      r0.y = r0.z ? r0.y : 0;
      if (r0.y != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}