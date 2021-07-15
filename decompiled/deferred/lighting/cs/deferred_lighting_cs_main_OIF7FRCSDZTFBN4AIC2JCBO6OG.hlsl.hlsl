// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:46 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43;
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
  r0.x = mad(permuteStride, 48, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
  r0.xy = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.xy, int2(8,8), (int2)vThreadIDInGroup.xy);
  r1.zw = float2(0,0);
  r2.xyzw = GBufferNormalAndGloss.Load(r1.xyw).xyzw;
  r0.zw = (uint2)renderTargetSize.xy;
  r0.zw = cmp((uint2)r1.xy < (uint2)r0.zw);
  r0.z = r0.w ? r0.z : 0;
  r0.w = cmp(0 < r2.z);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z == 0) {
    return;
  }
  r3.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r4.xy = (uint2)r1.xy;
  r4.zw = float2(0.5,0.5) + r4.xy;
  r5.xy = renderTargetSize.zw * r4.zw;
  r0.w = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r5.xy, 0).x;
  r0.w = r3.z * r0.w;
  if (showAO != 0) {
    r3.z = 0.75 * r0.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r3.zzzz
    return;
  } else {
    r3.z = enableAO ? r0.w : 1;
  }
  r0.w = cmp(r2.z >= 0.5);
  r5.x = GBufferDepth.Load(r1.xyw).x;
  r5.yzw = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r10.x = cmp(r5.x >= 0.984375);
  r1.z = 1.01587307 * r5.x;
  r1.w = r5.x * 64 + -63;
  r1.z = r10.x ? r1.w : r1.z;
  r1.z = max(9.99999994e-09, r1.z);
  r10.y = rcp(r1.z);
  r1.zw = r0.zz ? r10.xy : 0;
  r4.zw = -subpixelOffset.xy + r4.zw;
  r4.zw = renderTargetSize.zw * r4.zw;
  r4.zw = r4.zw * float2(2,-2) + float2(-1,1);
  r10.x = inverseProjectionMatrix._m00 * r4.z;
  r10.y = inverseProjectionMatrix._m11 * r4.w;
  r10.z = 1;
  r10.xyz = r10.xyz * r1.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r10.yyy;
  r10.xyw = r10.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r10.xyz = r10.zzz * inverseViewMatrix._m20_m21_m22 + r10.xyw;
  r0.z = r2.w * 3 + 0.5;
  r0.z = (uint)r0.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r1.w = dot(r2.xy, r2.xy);
  r11.zw = float2(2,1) + -r1.ww;
  r1.w = sqrt(r11.z);
  r11.xy = r2.xy * r1.ww;
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
  r0.z = r0.w ? -0.5 : -0.00146627566;
  r0.z = r2.z + r0.z;
  r2.y = saturate(2.00982332 * r0.z);
  r0.z = dot(-r10.xyz, -r10.xyz);
  r0.z = rsqrt(r0.z);
  r12.xyz = -r10.xyz * r0.zzz;
  r0.z = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r4.x, r13.x);
  r0.zw = (uint2)r1.yx;
  r0.z = dot(r0.zw, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r5.x, r14.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.z = dot(-r12.xyz, r11.xyz);
  r0.z = r0.z + r0.z;
  r15.xyz = r11.xyz * -r0.zzz + -r12.xyz;
  r0.z = 17 * r2.y;
  r0.z = exp2(r0.z);
  r0.z = 2 + r0.z;
  r0.z = 2 / r0.z;
  r0.w = sqrt(r0.z);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r1.w = r2.w ? r2.z : 0;
  r2.z = 1 + -r2.y;
  r2.w = 5 * r2.z;
  r4.z = r2.z * 5 + -2.5;
  r4.z = 0.400000006 * r4.z;
  r4.z = max(0, r4.z);
  r14.yz = -r2.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r4.w = exp2(r14.y);
  r4.w = r4.w * r2.x;
  r4.zw = float2(100,9.1368103) * r4.zw;
  r6.w = r2.w * r2.z;
  r6.w = -r6.w * 2.0159049 + r14.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r2.x;
  r6.w = 9.70808983 * r6.w;
  r4.w = max(r6.w, r4.w);
  r4.w = max(1.26815999, r4.w);
  if (probeDebug != 0) {
    r6.w = (uint)renderTargetSize.x;
    r6.w = (int)r6.w + 7;
    r6.w = (uint)r6.w >> 3;
    r6.w = mad((int)r0.y, (int)r6.w, (int)r0.x);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r6.w = (((uint)r6.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
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
    r14.yzw = float3(0,0,0);
    r27.xy = float2(0,0);
    r7.w = 0;
    r28.z = 0;
    r29.z = 0;
    r8.w = 0;
    r9.w = 0;
    while (true) {
      r12.w = cmp((uint)r9.w >= numRefProbes);
      if (r12.w != 0) break;
      r12.w = (uint)r9.w >> 5;
      r12.w = (int)r6.w + (int)r12.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t26.xxxx
    r12.w = samplerLinear[]..swiz;
      r30.xyzw = r16.yxzw;
      r31.xyzw = r17.xyzw;
      r32.xyzw = r18.yzwx;
      r33.xyzw = r19.xyzw;
      r34.xyzw = r20.xyzw;
      r35.xyzw = r21.zwxy;
      r36.xyzw = r22.zwxy;
      r37.xyzw = r24.zwxy;
      r38.xyzw = r25.zwxy;
      r39.xyz = r14.yzw;
      r27.zw = r27.yx;
      r13.w = r7.w;
      r28.w = r28.z;
      r29.w = r29.z;
      r39.w = r8.w;
      r40.xyzw = r23.zwxy;
      r41.xyzw = r26.zwxy;
      r42.x = r12.w;
      while (true) {
        if (r42.x == 0) break;
        r42.y = firstbitlow((uint)r42.x);
        r42.z = 1 << (int)r42.y;
        r42.z = ~(int)r42.z;
        r42.x = (int)r42.z & (int)r42.x;
        r42.y = (int)r9.w + (int)r42.y;
        r42.y = (int)r42.y * 14;
        r43.xyz = -refProbeConstantsCB[r42.y].data[0].xyz + r10.xyz;
        r42.z = dot(r43.xyz, r43.xyz);
        r42.z = sqrt(r42.z);
        r42.z = cmp(probeDebugRadius >= r42.z);
        if (r42.z != 0) {
          r30.yzw = refProbeConstantsCB[r42.y].data[1].xyz;
          r30.x = refProbeConstantsCB[r42.y].data[0].w;
          r31.yzw = refProbeConstantsCB[r42.y].data[2].xyz;
          r31.x = refProbeConstantsCB[r42.y].data[1].w;
          r32.xyz = refProbeConstantsCB[r42.y].data[3].xyz;
          r32.w = refProbeConstantsCB[r42.y].data[4].z;
          r33.yz = refProbeConstantsCB[r42.y].data[4].xy;
          r33.x = refProbeConstantsCB[r42.y].data[3].w;
          r33.w = refProbeConstantsCB[r42.y].data[6].x;
          r34.yzw = refProbeConstantsCB[r42.y].data[5].xyz;
          r34.x = refProbeConstantsCB[r42.y].data[4].w;
          r35.yz = refProbeConstantsCB[r42.y].data[7].yw;
          r35.x = refProbeConstantsCB[r42.y].data[6].y;
          r35.w = refProbeConstantsCB[r42.y].data[8].x;
          r36.xyz = refProbeConstantsCB[r42.y].data[8].yzw;
          r36.w = refProbeConstantsCB[r42.y].data[9].x;
          r37.xyz = refProbeConstantsCB[r42.y].data[10].yzw;
          r37.w = refProbeConstantsCB[r42.y].data[11].x;
          r38.xyz = refProbeConstantsCB[r42.y].data[11].yzw;
          r38.w = refProbeConstantsCB[r42.y].data[12].x;
          r39.xyz = refProbeConstantsCB[r42.y].data[0].xyz;
          r42.zw = refProbeConstantsCB[r42.y].data[13].yz;
          r13.w = -1;
          r28.w = refProbeConstantsCB[r42.y].data[2].w;
          r29.w = refProbeConstantsCB[r42.y].data[5].w;
          r39.w = refProbeConstantsCB[r42.y].data[7].z;
          r40.xyz = refProbeConstantsCB[r42.y].data[9].yzw;
          r40.w = refProbeConstantsCB[r42.y].data[10].x;
          r41.xyz = refProbeConstantsCB[r42.y].data[12].yzw;
          r41.w = refProbeConstantsCB[r42.y].data[13].x;
          r27.zw = r42.zw;
          break;
        }
      }
      if (r13.w != 0) {
        r16.xyzw = r30.yxzw;
        r17.xyzw = r31.xyzw;
        r18.xyzw = r32.wxyz;
        r19.xyzw = r33.xyzw;
        r20.xyzw = r34.xyzw;
        r21.xyzw = r35.zwxy;
        r22.xyzw = r36.zwxy;
        r23.xyzw = r40.zwxy;
        r24.xyzw = r37.zwxy;
        r25.xyzw = r38.zwxy;
        r26.xyzw = r41.zwxy;
        r14.yzw = r39.xyz;
        r27.xy = r27.wz;
        r7.w = -1;
        r28.z = r28.w;
        r29.z = r29.w;
        r8.w = r39.w;
        break;
      }
      r9.w = (int)r9.w + 32;
      r16.xyzw = r30.yxzw;
      r17.xyzw = r31.xyzw;
      r18.xyzw = r32.wxyz;
      r19.xyzw = r33.xyzw;
      r20.xyzw = r34.xyzw;
      r21.xyzw = r35.zwxy;
      r22.xyzw = r36.zwxy;
      r24.xyzw = r37.zwxy;
      r25.xyzw = r38.zwxy;
      r14.yzw = r39.xyz;
      r27.xy = r27.wz;
      r7.w = r13.w;
      r28.z = r28.w;
      r29.z = r29.w;
      r8.w = r39.w;
      r23.xyzw = r40.zwxy;
      r26.xyzw = r41.zwxy;
    }
    r30.xy = r16.yw;
    r28.x = r16.z;
    r16.yz = r17.xw;
    r28.y = r17.y;
    r30.z = r17.z;
    r17.xyz = r18.yzw;
    r18.yz = r20.xy;
    r29.xy = r20.zw;
    r20.xy = r21.zw;
    r21.z = r22.z;
    r22.z = r23.z;
    r23.z = r24.z;
    r24.z = r25.z;
    r25.z = r26.z;
    r26.z = r27.y;
  } else {
    r7.w = 0;
  }
  if (r7.w != 0) {
    if (r1.w != 0) {
      r31.yzw = eyeOffset.xyz + r14.yzw;
      r31.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r14.yzw = -r14.yzw + r10.xyz;
    r6.w = (int)r8.w & 0x0000ffff;
    if (6 == 0) r9.w = 0; else if (6+25 < 32) {     r9.w = (uint)r8.w << (32-(6 + 25)); r9.w = (uint)r9.w >> (32-6);    } else r9.w = (uint)r8.w >> 25;
    r12.w = (int)r6.w * 6;
    r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[0].xyz, r14.yzw);
    r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[0].w + r13.w);
    r16.w = dot(refProbeAttenuationConstantsCB[r12.w].data[1].xyz, r14.yzw);
    r16.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[1].w + r16.w);
    r13.w = r16.w * r13.w;
    r16.w = dot(refProbeAttenuationConstantsCB[r12.w].data[2].xyz, r14.yzw);
    r16.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[2].w + r16.w);
    r13.w = r16.w * r13.w;
    r16.w = dot(refProbeAttenuationConstantsCB[r12.w].data[3].xyz, r14.yzw);
    r16.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[3].w + r16.w);
    r13.w = r16.w * r13.w;
    r16.w = dot(refProbeAttenuationConstantsCB[r12.w].data[4].xyz, r14.yzw);
    r16.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[4].w + r16.w);
    r13.w = r16.w * r13.w;
    r16.w = dot(refProbeAttenuationConstantsCB[r12.w].data[5].xyz, r14.yzw);
    r12.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[5].w + r16.w);
    r31.x = r13.w * r12.w;
    r12.w = (int)r19.w & 1;
    r31.yz = float2(0,1);
    r20.zw = r12.ww ? r31.xy : r31.zx;
    r31.x = 1;
    r12.w = r19.w;
    r32.xy = r20.zw;
    r13.w = 1;
    while (true) {
      r16.w = cmp((int)r13.w >= (int)r9.w);
      if (r16.w != 0) break;
      r16.w = (int)r6.w + (int)r13.w;
      r16.w = (int)r16.w * 6;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.w);
      r17.w = r32.x * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r14.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r14.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r14.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r14.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r14.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r18.w);
      r32.x = r17.w * r16.w;
      r18.w = (uint)r12.w >> 2;
      if (1 == 0) r21.w = 0; else if (1+2 < 32) {       r21.w = (uint)r12.w << (32-(1 + 2)); r21.w = (uint)r21.w >> (32-1);      } else r21.w = (uint)r12.w >> 2;
      r27.y = (int)r18.w & 2;
      r27.z = max(r32.y, r32.x);
      r16.w = -r17.w * r16.w + 1;
      r16.w = r32.y * r16.w;
      r31.y = r27.y ? r16.w : r27.z;
      r32.xy = r21.ww ? r32.xy : r31.xy;
      r13.w = (int)r13.w + 1;
      r12.w = r18.w;
    }
    r32.y = saturate(r32.y);
    r31.w = r32.y * r20.x;
    r6.w = cmp(0 < r31.w);
    if (r6.w != 0) {
      if (r1.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r6.w, cb2[52].x, l(880), u2.xxxx
      r6.w = samplerLinear[]..swiz;
        r6.w = (int)r6.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r6.w = r31.w * r20.y;
      r9.w = dot(r15.xyz, r21.xyz);
      r12.w = dot(r14.yzw, r21.xyz);
      r12.w = r12.w + -r22.w;
      r13.w = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r4.z);
      r12.w = r13.w ? r12.w : -r12.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r12.w / r9.w;
      r9.w = min(131072, abs(r9.w));
      r12.w = dot(r15.xyz, r22.xyz);
      r13.w = dot(r14.yzw, r22.xyz);
      r13.w = r13.w + -r23.w;
      r16.w = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r16.w ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r12.w = dot(r15.xyz, r23.xyz);
      r13.w = dot(r14.yzw, r23.xyz);
      r13.w = r13.w + -r24.w;
      r16.w = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r16.w ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r12.w = dot(r15.xyz, r24.xyz);
      r13.w = dot(r14.yzw, r24.xyz);
      r13.w = r13.w + -r25.w;
      r16.w = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r16.w ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r12.w = dot(r15.xyz, r25.xyz);
      r13.w = dot(r14.yzw, r25.xyz);
      r13.w = r13.w + -r26.w;
      r16.w = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r16.w ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r12.w = dot(r15.xyz, r26.xyz);
      r13.w = dot(r14.yzw, r26.xyz);
      r13.w = r13.w + -r27.x;
      r16.w = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r16.w ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r19.xyz = r19.xyz + r14.yzw;
      r19.xyz = r15.xyz * r9.www + r19.xyz;
      r12.w = dot(r19.xyz, r19.xyz);
      r12.w = sqrt(r12.w);
      r9.w = r9.w / r12.w;
      r9.w = r9.w + r9.w;
      r9.w = sqrt(r9.w);
      r9.w = r2.z * 5 + r9.w;
      r9.w = -0.844799995 + r9.w;
      r20.x = dot(r19.xyz, r30.xyz);
      r20.y = dot(r19.xyz, r16.xyz);
      r20.z = dot(r19.xyz, r28.xyz);
      if (9 == 0) r8.w = 0; else if (9+16 < 32) {       r8.w = (uint)r8.w << (32-(9 + 16)); r8.w = (uint)r8.w >> (32-9);      } else r8.w = (uint)r8.w >> 16;
      r20.w = (uint)r8.w;
      r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, r9.w).xyz;
      r21.xyz = (int3)r19.xyz & int3(-2147483648,-2147483648,-2147483648);
      r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
      r8.w = (int)r21.y | (int)r21.x;
      r8.w = (int)r21.z | (int)r8.w;
      r19.xyz = r8.www ? float3(1,1,0) : r19.xyz;
      r21.x = dot(r14.yzw, r30.xyz);
      r21.y = dot(r14.yzw, r16.xyz);
      r21.z = dot(r14.yzw, r28.xyz);
      r14.yzw = saturate(r21.xyz * r17.xyz + float3(0.5,0.5,0.5));
      r14.yzw = r14.yzw * r18.xyz + r29.xyz;
      r20.x = dot(r11.xyz, r30.xyz);
      r20.y = dot(r11.xyz, r16.xyz);
      r20.z = dot(r11.xyz, r28.xyz);
      r16.xyz = cmp(float3(0,0,0) < r20.xyz);
      r17.z = r16.x ? 0 : 0.5;
      r17.xy = float2(0,0);
      r17.xyz = r17.xyz + r14.yzw;
      r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r18.xyz = r20.xyz * r20.xyz;
      r18.xyz = r18.xyz * r6.www;
      r21.z = r16.y ? 0 : 0.5;
      r21.xy = float2(0,0);
      r16.xyw = r21.xyz + r14.yzw;
      r16.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyw, 0).xyz;
      r16.xyw = r16.xyw * r18.yyy;
      r16.xyw = r17.xyz * r18.xxx + r16.xyw;
      r17.z = r16.z ? 0 : 0.5;
      r17.xy = float2(0,0);
      r14.yzw = r17.xyz + r14.yzw;
      r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
      r14.yzw = r14.yzw * r18.zzz + r16.xyw;
      r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, 6).xyz;
      r17.xyz = (int3)r16.xyz & int3(-2147483648,-2147483648,-2147483648);
      r17.xyz = cmp((int3)r17.xyz == int3(2139095040,2139095040,2139095040));
      r8.w = (int)r17.y | (int)r17.x;
      r8.w = (int)r17.z | (int)r8.w;
      r16.xyz = r8.www ? float3(1,1,0) : r16.xyz;
      r14.yzw = r16.xyz * r14.yzw;
      r8.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r9.w = r8.w * r4.w;
      r14.yzw = r19.xyz * r6.www;
      r6.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r6.w = r4.w * r8.w + r6.w;
      r6.w = r9.w / r6.w;
      r31.xyz = r14.yzw * r6.www;
      r6.w = 257;
    } else {
      r31.xyzw = float4(0,0,0,0);
      r6.w = 1;
    }
    r8.w = -1;
  } else {
    r31.xyzw = float4(0,0,0,0);
    r6.w = 0;
  }
  r7.w = (int)r7.w & (int)r8.w;
  if (r7.w == 0) {
    r7.w = numRefProbes + -numOverrideProbes;
    r8.w = (uint)renderTargetSize.x;
    r8.w = (int)r8.w + 7;
    r8.w = (uint)r8.w >> 3;
    r8.w = mad((int)r0.y, (int)r8.w, (int)r0.x);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r8.w = (((uint)r8.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r9.w = (int)r7.w & -32;
    r12.w = (int)r7.w + (int)-r9.w;
    r13.w = numRefProbes & -32;
    r14.y = (int)-r13.w + numRefProbes;
    r16.x = 16;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.xz = float2(1,1);
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xyz = float3(0,0,0);
    r22.w = r31.x;
    r23.xyz = r31.yzw;
    r23.w = r6.w;
    r14.z = r9.w;
    while (true) {
      r14.w = cmp((uint)r14.z >= numRefProbes);
      if (r14.w != 0) break;
      r14.w = (uint)r14.z >> 5;
      r14.w = (int)r8.w + (int)r14.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t26.xxxx
    r14.w = samplerLinear[]..swiz;
      r17.w = cmp((int)r9.w == (int)r14.z);
      bitmask.w = ((~(-1 << r12.w)) << 0) & 0xffffffff;  r18.w = (((uint)0 << 0) & bitmask.w) | ((uint)r14.w & ~bitmask.w);
      r14.w = r17.w ? r18.w : r14.w;
      r17.w = cmp((int)r13.w == (int)r14.z);
      if (r14.y == 0) r18.w = 0; else if (r14.y+0 < 32) {       r18.w = (uint)r14.w << (32-(r14.y + 0)); r18.w = (uint)r18.w >> (32-r14.y);      } else r18.w = (uint)r14.w >> 0;
      r14.w = r17.w ? r18.w : r14.w;
      r24.xyzw = r22.xyzw;
      r25.xyzw = r23.xyzw;
      r17.w = r14.w;
      while (true) {
        if (r17.w == 0) break;
        r18.w = firstbitlow((uint)r17.w);
        r20.w = 1 << (int)r18.w;
        r20.w = ~(int)r20.w;
        r17.w = (int)r17.w & (int)r20.w;
        r18.w = (int)r14.z + (int)r18.w;
        r18.w = (int)r18.w * 14;
        r20.w = (int)r25.w & 255;
        r21.w = cmp((uint)r20.w < 32);
        r21.w = r21.w ? r1.w : 0;
        if (r21.w != 0) {
          r20.w = mad((int)r20.w, 20, 880);
          r16.yzw = refProbeConstantsCB[r18.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r20.w = u2.xyzw;
        }
        r26.w = (int)r25.w + 1;
        r16.yzw = -refProbeConstantsCB[r18.w].data[0].xyz + r10.xyz;
        r20.w = 0x0000ffff & (int)refProbeConstantsCB[r18.w].data[7].z;
        if (6 == 0) r21.w = 0; else if (6+25 < 32) {         r21.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(6 + 25)); r21.w = (uint)r21.w >> (32-6);        } else r21.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 25;
        r27.x = (int)r20.w * 6;
        r27.y = dot(refProbeAttenuationConstantsCB[r27.x].data[0].xyz, r16.yzw);
        r27.y = saturate(refProbeAttenuationConstantsCB[r27.x].data[0].w + r27.y);
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[1].xyz, r16.yzw);
        r27.z = saturate(refProbeAttenuationConstantsCB[r27.x].data[1].w + r27.z);
        r27.y = r27.y * r27.z;
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[2].xyz, r16.yzw);
        r27.z = saturate(refProbeAttenuationConstantsCB[r27.x].data[2].w + r27.z);
        r27.y = r27.y * r27.z;
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[3].xyz, r16.yzw);
        r27.z = saturate(refProbeAttenuationConstantsCB[r27.x].data[3].w + r27.z);
        r27.y = r27.y * r27.z;
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[4].xyz, r16.yzw);
        r27.z = saturate(refProbeAttenuationConstantsCB[r27.x].data[4].w + r27.z);
        r27.y = r27.y * r27.z;
        r27.z = dot(refProbeAttenuationConstantsCB[r27.x].data[5].xyz, r16.yzw);
        r27.x = saturate(refProbeAttenuationConstantsCB[r27.x].data[5].w + r27.z);
        r17.x = r27.y * r27.x;
        r27.x = 1 & (int)refProbeConstantsCB[r18.w].data[6].x;
        r27.xy = r27.xx ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r18.w].data[6].x;
        r28.xy = r27.xy;
        r27.z = 1;
        while (true) {
          r27.w = cmp((int)r27.z >= (int)r21.w);
          if (r27.w != 0) break;
          r27.w = (int)r20.w + (int)r27.z;
          r27.w = (int)r27.w * 6;
          r28.z = dot(refProbeAttenuationConstantsCB[r27.w].data[0].xyz, r16.yzw);
          r28.z = saturate(refProbeAttenuationConstantsCB[r27.w].data[0].w + r28.z);
          r28.z = r28.x * r28.z;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[1].xyz, r16.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[1].w + r28.w);
          r28.z = r28.z * r28.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[2].xyz, r16.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[2].w + r28.w);
          r28.z = r28.z * r28.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[3].xyz, r16.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[3].w + r28.w);
          r28.z = r28.z * r28.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[4].xyz, r16.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[4].w + r28.w);
          r28.z = r28.z * r28.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[5].xyz, r16.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[5].w + r28.w);
          r28.x = r28.z * r27.w;
          r28.w = (uint)r17.x >> 2;
          if (1 == 0) r29.x = 0; else if (1+2 < 32) {           r29.x = (uint)r17.x << (32-(1 + 2)); r29.x = (uint)r29.x >> (32-1);          } else r29.x = (uint)r17.x >> 2;
          r29.y = (int)r28.w & 2;
          r29.z = max(r28.y, r28.x);
          r27.w = -r28.z * r27.w + 1;
          r27.w = r28.y * r27.w;
          r19.y = r29.y ? r27.w : r29.z;
          r28.xy = r29.xx ? r28.xy : r19.xy;
          r27.z = (int)r27.z + 1;
          r17.x = r28.w;
        }
        r28.y = saturate(r28.y);
        r17.x = refProbeConstantsCB[r18.w].data[6].y * r28.y;
        r19.y = cmp(0 < r17.x);
        if (r19.y != 0) {
          r19.y = (int)r26.w & 255;
          r20.w = (int)r19.y + -1;
          r20.w = cmp((uint)r20.w < 32);
          r20.w = r20.w ? r1.w : 0;
          if (r20.w != 0) {
            r27.xy = mad((int2)r19.yy, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.y, cb2[52].x, r27.x, u2.xxxx
          r19.y = samplerLinear[]..swiz;
            r19.y = (int)r19.y | 32;
            GBufferDiffuseColor[viewID].r27.x = u2.x;
            GBufferDiffuseColor[viewID].r27.y = u2.x;
          }
          r25.w = (int)r25.w + 257;
          r25.z = r28.y * refProbeConstantsCB[r18.w].data[6].y + r25.z;
          r17.x = refProbeConstantsCB[r18.w].data[7].y * r17.x;
          r27.x = refProbeConstantsCB[r18.w].data[7].w;
          r27.yz = refProbeConstantsCB[r18.w].data[8].xy;
          r19.y = dot(r15.xyz, r27.xyz);
          r20.w = dot(r16.yzw, r27.xyz);
          r20.w = -refProbeConstantsCB[r18.w].data[8].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r4.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.y = max(1.00000001e-07, -r19.y);
          r19.y = r20.w / r19.y;
          r19.y = min(131072, abs(r19.y));
          r27.x = refProbeConstantsCB[r18.w].data[8].w;
          r27.yz = refProbeConstantsCB[r18.w].data[9].xy;
          r20.w = dot(r15.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[9].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[9].w;
          r27.yz = refProbeConstantsCB[r18.w].data[10].xy;
          r20.w = dot(r15.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[10].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[10].w;
          r27.yz = refProbeConstantsCB[r18.w].data[11].xy;
          r20.w = dot(r15.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[11].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[11].w;
          r27.yz = refProbeConstantsCB[r18.w].data[12].xy;
          r20.w = dot(r15.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[12].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[12].w;
          r27.yz = refProbeConstantsCB[r18.w].data[13].xy;
          r20.w = dot(r15.xyz, r27.xyz);
          r21.w = dot(r16.yzw, r27.xyz);
          r21.w = -refProbeConstantsCB[r18.w].data[13].z + r21.w;
          r27.x = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r27.x ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r19.y = min(abs(r20.w), r19.y);
          r27.x = refProbeConstantsCB[r18.w].data[3].w + r16.y;
          r27.yz = refProbeConstantsCB[r18.w].data[4].xy + r16.zw;
          r27.xyz = r15.xyz * r19.yyy + r27.xyz;
          r20.w = dot(r27.xyz, r27.xyz);
          r20.w = sqrt(r20.w);
          r19.y = r19.y / r20.w;
          r19.y = r19.y + r19.y;
          r19.y = sqrt(r19.y);
          r19.y = r2.z * 5 + r19.y;
          r19.y = -0.844799995 + r19.y;
          r29.x = refProbeConstantsCB[r18.w].data[0].w;
          r29.y = refProbeConstantsCB[r18.w].data[1].z;
          r29.z = refProbeConstantsCB[r18.w].data[2].y;
          r30.x = dot(r27.xyz, r29.xyz);
          r32.xy = refProbeConstantsCB[r18.w].data[1].xw;
          r32.z = refProbeConstantsCB[r18.w].data[2].z;
          r30.y = dot(r27.xyz, r32.xyz);
          r33.x = refProbeConstantsCB[r18.w].data[1].y;
          r33.yz = refProbeConstantsCB[r18.w].data[2].xw;
          r30.z = dot(r27.xyz, r33.xyz);
          if (9 == 0) r20.w = 0; else if (9+16 < 32) {           r20.w = (uint)refProbeConstantsCB[r18.w].data[7].z << (32-(9 + 16)); r20.w = (uint)r20.w >> (32-9);          } else r20.w = (uint)refProbeConstantsCB[r18.w].data[7].z >> 16;
          r30.w = (uint)r20.w;
          r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r19.y).xyz;
          r28.xzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
          r28.xzw = cmp((int3)r28.xzw == int3(2139095040,2139095040,2139095040));
          r19.y = (int)r28.z | (int)r28.x;
          r19.y = (int)r28.w | (int)r19.y;
          r27.xyz = r19.yyy ? float3(1,1,0) : r27.xyz;
          r34.x = dot(r16.yzw, r29.xyz);
          r34.y = dot(r16.yzw, r32.xyz);
          r34.z = dot(r16.yzw, r33.xyz);
          r16.yzw = saturate(r34.xyz * refProbeConstantsCB[r18.w].data[3].xyz + float3(0.5,0.5,0.5));
          r34.xy = refProbeConstantsCB[r18.w].data[4].zw * r16.yz;
          r34.z = refProbeConstantsCB[r18.w].data[5].x * r16.w;
          r16.yzw = refProbeConstantsCB[r18.w].data[5].yzw + r34.xyz;
          r30.x = dot(r11.xyz, r29.xyz);
          r30.y = dot(r11.xyz, r32.xyz);
          r30.z = dot(r11.xyz, r33.xyz);
          r28.xzw = cmp(float3(0,0,0) < r30.xyz);
          r18.z = r28.x ? 0 : 0.5;
          r29.xyz = r18.xyz + r16.yzw;
          r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
          r32.xyz = r30.xyz * r30.xyz;
          r32.xyz = r32.xyz * r17.xxx;
          r20.z = r28.z ? 0 : 0.5;
          r33.xyz = r20.xyz + r16.yzw;
          r33.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r33.xyz, 0).xyz;
          r33.xyz = r33.xyz * r32.yyy;
          r29.xyz = r29.xyz * r32.xxx + r33.xyz;
          r21.z = r28.w ? 0 : 0.5;
          r16.yzw = r21.xyz + r16.yzw;
          r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
          r16.yzw = r16.yzw * r32.zzz + r29.xyz;
          r28.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
          r29.xyz = (int3)r28.xzw & int3(-2147483648,-2147483648,-2147483648);
          r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
          r18.z = (int)r29.y | (int)r29.x;
          r18.z = (int)r29.z | (int)r18.z;
          r28.xzw = r18.zzz ? float3(1,1,0) : r28.xzw;
          r29.xyz = r28.xzw * r16.yzw;
          r18.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r24.xyz = r16.yzw * r28.xzw + r24.xyz;
          r16.y = r18.z * r4.w;
          r27.xyz = r27.xyz * r17.xxx;
          r16.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r16.z = r4.w * r18.z + r16.z;
          r16.y = r16.y / r16.z;
          r29.x = r24.w;
          r29.yz = r25.xy;
          r16.yzw = r27.xyz * r16.yyy + r29.xyz;
          r24.w = r16.y;
          r25.xy = r16.zw;
        } else {
          r26.xyz = r25.xyz;
          r25.xyzw = r26.xyzw;
        }
      }
      r22.xyzw = r24.xyzw;
      r23.xyzw = r25.xyzw;
      r14.z = (int)r14.z + 32;
    }
    r16.x = 16;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r14.yzw = r22.xyz;
    r24.x = r22.w;
    r24.yz = r23.xy;
    r25.xyz = r23.zwz;
    r13.w = 0;
    while (true) {
      r17.w = cmp((uint)r13.w >= (uint)r7.w);
      if (r17.w != 0) break;
      r17.w = (uint)r13.w >> 5;
      r17.w = (int)r8.w + (int)r17.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t26.xxxx
    r17.w = samplerLinear[]..swiz;
      r18.w = cmp((int)r9.w == (int)r13.w);
      if (r12.w == 0) r19.x = 0; else if (r12.w+0 < 32) {       r19.x = (uint)r17.w << (32-(r12.w + 0)); r19.x = (uint)r19.x >> (32-r12.w);      } else r19.x = (uint)r17.w >> 0;
      r17.w = r18.w ? r19.x : r17.w;
      r26.xyz = r14.yzw;
      r27.xyz = r24.xyz;
      r28.xyz = r25.xzy;
      r18.w = r17.w;
      while (true) {
        if (r18.w == 0) break;
        r19.x = firstbitlow((uint)r18.w);
        r19.y = 1 << (int)r19.x;
        r19.y = ~(int)r19.y;
        r18.w = (int)r18.w & (int)r19.y;
        r19.x = (int)r13.w + (int)r19.x;
        r19.x = (int)r19.x * 14;
        r19.y = (int)r28.z & 255;
        r20.w = cmp((uint)r19.y < 32);
        r20.w = r20.w ? r1.w : 0;
        if (r20.w != 0) {
          r19.y = mad((int)r19.y, 20, 880);
          r16.yzw = refProbeConstantsCB[r19.x].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r19.y = u2.xyzw;
        }
        r29.y = (int)r28.z + 1;
        r16.yzw = -refProbeConstantsCB[r19.x].data[0].xyz + r10.xyz;
        r19.y = 0x0000ffff & (int)refProbeConstantsCB[r19.x].data[7].z;
        if (6 == 0) r20.w = 0; else if (6+25 < 32) {         r20.w = (uint)refProbeConstantsCB[r19.x].data[7].z << (32-(6 + 25)); r20.w = (uint)r20.w >> (32-6);        } else r20.w = (uint)refProbeConstantsCB[r19.x].data[7].z >> 25;
        r21.w = (int)r19.y * 6;
        r24.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r16.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r24.w);
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r25.w);
        r24.w = r25.w * r24.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r25.w);
        r24.w = r25.w * r24.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r25.w);
        r24.w = r25.w * r24.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r25.w);
        r24.w = r25.w * r24.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r16.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r25.w);
        r17.x = r24.w * r21.w;
        r21.w = 1 & (int)refProbeConstantsCB[r19.x].data[6].x;
        r29.zw = r21.ww ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r19.x].data[6].x;
        r30.xy = r29.zw;
        r21.w = 1;
        while (true) {
          r24.w = cmp((int)r21.w >= (int)r20.w);
          if (r24.w != 0) break;
          r24.w = (int)r19.y + (int)r21.w;
          r24.w = (int)r24.w * 6;
          r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[0].xyz, r16.yzw);
          r25.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[0].w + r25.w);
          r25.w = r30.x * r25.w;
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
          r30.x = r25.w * r24.w;
          r26.w = (uint)r17.x >> 2;
          if (1 == 0) r27.w = 0; else if (1+2 < 32) {           r27.w = (uint)r17.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);          } else r27.w = (uint)r17.x >> 2;
          r28.w = (int)r26.w & 2;
          r30.z = max(r30.y, r30.x);
          r24.w = -r25.w * r24.w + 1;
          r24.w = r30.y * r24.w;
          r19.w = r28.w ? r24.w : r30.z;
          r30.xy = r27.ww ? r30.xy : r19.zw;
          r21.w = (int)r21.w + 1;
          r17.x = r26.w;
        }
        r17.x = saturate(r30.y + -r28.y);
        r19.y = refProbeConstantsCB[r19.x].data[6].y * r17.x;
        r19.w = cmp(0 < r19.y);
        if (r19.w != 0) {
          r19.w = (int)r29.y & 255;
          r20.w = (int)r19.w + -1;
          r20.w = cmp((uint)r20.w < 32);
          r20.w = r20.w ? r1.w : 0;
          if (r20.w != 0) {
            r29.zw = mad((int2)r19.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.w, cb2[52].x, r29.z, u2.xxxx
          r19.w = samplerLinear[]..swiz;
            r19.w = (int)r19.w | 32;
            GBufferDiffuseColor[viewID].r29.z = u2.x;
            GBufferDiffuseColor[viewID].r29.w = u2.x;
          }
          r28.z = (int)r28.z + 257;
          r28.x = r17.x * refProbeConstantsCB[r19.x].data[6].y + r28.x;
          r17.x = refProbeConstantsCB[r19.x].data[7].y * r19.y;
          r32.x = refProbeConstantsCB[r19.x].data[7].w;
          r32.yz = refProbeConstantsCB[r19.x].data[8].xy;
          r19.y = dot(r15.xyz, r32.xyz);
          r19.w = dot(r16.yzw, r32.xyz);
          r19.w = -refProbeConstantsCB[r19.x].data[8].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r4.z);
          r19.w = r20.w ? r19.w : -r19.w;
          r19.y = max(1.00000001e-07, -r19.y);
          r19.y = r19.w / r19.y;
          r19.y = min(131072, abs(r19.y));
          r32.x = refProbeConstantsCB[r19.x].data[8].w;
          r32.yz = refProbeConstantsCB[r19.x].data[9].xy;
          r19.w = dot(r15.xyz, r32.xyz);
          r20.w = dot(r16.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[9].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r4.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[9].w;
          r32.yz = refProbeConstantsCB[r19.x].data[10].xy;
          r19.w = dot(r15.xyz, r32.xyz);
          r20.w = dot(r16.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[10].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r4.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[10].w;
          r32.yz = refProbeConstantsCB[r19.x].data[11].xy;
          r19.w = dot(r15.xyz, r32.xyz);
          r20.w = dot(r16.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[11].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r4.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[11].w;
          r32.yz = refProbeConstantsCB[r19.x].data[12].xy;
          r19.w = dot(r15.xyz, r32.xyz);
          r20.w = dot(r16.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[12].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r4.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[12].w;
          r32.yz = refProbeConstantsCB[r19.x].data[13].xy;
          r19.w = dot(r15.xyz, r32.xyz);
          r20.w = dot(r16.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[13].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r4.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r32.x = refProbeConstantsCB[r19.x].data[3].w + r16.y;
          r32.yz = refProbeConstantsCB[r19.x].data[4].xy + r16.zw;
          r30.xzw = r15.xyz * r19.yyy + r32.xyz;
          r19.w = dot(r30.xzw, r30.xzw);
          r19.w = sqrt(r19.w);
          r19.y = r19.y / r19.w;
          r19.y = r19.y + r19.y;
          r19.y = sqrt(r19.y);
          r19.y = r2.z * 5 + r19.y;
          r19.y = -0.844799995 + r19.y;
          r32.x = refProbeConstantsCB[r19.x].data[0].w;
          r32.y = refProbeConstantsCB[r19.x].data[1].z;
          r32.z = refProbeConstantsCB[r19.x].data[2].y;
          r33.x = dot(r30.xzw, r32.xyz);
          r34.xy = refProbeConstantsCB[r19.x].data[1].xw;
          r34.z = refProbeConstantsCB[r19.x].data[2].z;
          r33.y = dot(r30.xzw, r34.xyz);
          r35.x = refProbeConstantsCB[r19.x].data[1].y;
          r35.yz = refProbeConstantsCB[r19.x].data[2].xw;
          r33.z = dot(r30.xzw, r35.xyz);
          if (9 == 0) r19.w = 0; else if (9+16 < 32) {           r19.w = (uint)refProbeConstantsCB[r19.x].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);          } else r19.w = (uint)refProbeConstantsCB[r19.x].data[7].z >> 16;
          r33.w = (uint)r19.w;
          r30.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r19.y).xyz;
          r36.xyz = (int3)r30.xzw & int3(-2147483648,-2147483648,-2147483648);
          r36.xyz = cmp((int3)r36.xyz == int3(2139095040,2139095040,2139095040));
          r19.y = (int)r36.y | (int)r36.x;
          r19.y = (int)r36.z | (int)r19.y;
          r30.xzw = r19.yyy ? float3(1,1,0) : r30.xzw;
          r36.x = dot(r16.yzw, r32.xyz);
          r36.y = dot(r16.yzw, r34.xyz);
          r36.z = dot(r16.yzw, r35.xyz);
          r16.yzw = saturate(r36.xyz * refProbeConstantsCB[r19.x].data[3].xyz + float3(0.5,0.5,0.5));
          r36.xy = refProbeConstantsCB[r19.x].data[4].zw * r16.yz;
          r36.z = refProbeConstantsCB[r19.x].data[5].x * r16.w;
          r16.yzw = refProbeConstantsCB[r19.x].data[5].yzw + r36.xyz;
          r33.x = dot(r11.xyz, r32.xyz);
          r33.y = dot(r11.xyz, r34.xyz);
          r33.z = dot(r11.xyz, r35.xyz);
          r19.xyw = cmp(float3(0,0,0) < r33.xyz);
          r18.z = r19.x ? 0 : 0.5;
          r32.xyz = r18.xyz + r16.yzw;
          r32.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
          r34.xyz = r33.xyz * r33.xyz;
          r34.xyz = r34.xyz * r17.xxx;
          r20.z = r19.y ? 0 : 0.5;
          r35.xyz = r20.xyz + r16.yzw;
          r35.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r35.xyz, 0).xyz;
          r35.xyz = r35.xyz * r34.yyy;
          r32.xyz = r32.xyz * r34.xxx + r35.xyz;
          r21.z = r19.w ? 0 : 0.5;
          r16.yzw = r21.xyz + r16.yzw;
          r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
          r16.yzw = r16.yzw * r34.zzz + r32.xyz;
          r19.xyw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
          r32.xyz = (int3)r19.xyw & int3(-2147483648,-2147483648,-2147483648);
          r32.xyz = cmp((int3)r32.xyz == int3(2139095040,2139095040,2139095040));
          r18.z = (int)r32.y | (int)r32.x;
          r18.z = (int)r32.z | (int)r18.z;
          r19.xyw = r18.zzz ? float3(1,1,0) : r19.xyw;
          r32.xyz = r19.xyw * r16.yzw;
          r18.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r26.xyz = r16.yzw * r19.xyw + r26.xyz;
          r16.y = r18.z * r4.w;
          r19.xyw = r30.xzw * r17.xxx;
          r16.z = dot(r19.xyw, float3(0.212599993,0.715200007,0.0722000003));
          r16.z = r4.w * r18.z + r16.z;
          r16.y = r16.y / r16.z;
          r27.xyz = r19.xyw * r16.yyy + r27.xyz;
        } else {
          r29.x = r28.x;
          r28.xz = r29.xy;
        }
      }
      r14.yzw = r26.xyz;
      r24.xyz = r27.xyz;
      r25.xy = r28.xz;
      r13.w = (int)r13.w + 32;
    }
    r2.z = cmp(r23.z >= 1);
    r4.z = (int)r23.w & 0x0000ff00;
    bitmask.z = ((~(-1 << 8)) << 0) & 0xffffffff;  r4.z = (((uint)r25.y << 0) & bitmask.z) | ((uint)r4.z & ~bitmask.z);
    r6.w = r2.z ? r4.z : r25.y;
    r2.z = max(1, r25.x);
    r2.z = rcp(r2.z);
    r25.x = saturate(r25.x);
    r16.xyz = r14.yzw * r2.zzz;
    r31.xyz = r24.xyz * r2.zzz;
    r4.z = cmp(r25.x < 0.99000001);
    if (r4.z != 0) {
      r6.w = (int)r6.w + 256;
      r4.z = 1 + -r25.x;
      r4.w = sunConstants.globalProbeExposure * r4.z;
      r17.xyz = -globalProbeConstants.data[0].xyz + r10.xyz;
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
      r20.xyz = r20.xyz * r4.www;
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
      r4.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r16.xyz = r14.yzw * r2.zzz + r17.xyz;
      r15.w = 0;
      r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r2.w).xyz;
      r2.z = sunConstants.globalProbeExposure * r4.z + -r4.w;
      r2.z = r2.y * r2.z + r4.w;
      r31.xyz = r14.yzw * r2.zzz + r31.xyz;
    }
  } else {
    r16.xyz = float3(0,0,0);
  }
  r2.z = r2.x + r3.z;
  r2.z = log2(abs(r2.z));
  r2.z = r2.z * r0.w;
  r2.z = exp2(r2.z);
  r2.z = r2.z + r3.z;
  r2.z = saturate(-1 + r2.z);
  r14.yzw = r16.xyz * r3.zzz;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r16.xyz = r31.xyz * r2.zzz;
  r17.xyz = r16.xyz * r2.yyy;
  r2.yzw = r16.xyz * r2.www;
  r3.z = sqrt(r0.w);
  r3.z = r3.z * 0.5 + 0.5;
  r3.z = r3.z * r3.z;
  r4.z = 0.5 * r3.z;
  r3.z = -r3.z * 0.5 + 1;
  r4.w = r2.x * r3.z + r4.z;
  r3.z = r4.w * r3.z;
  r4.z = r4.z * r4.w;
  r4.w = (uint)renderTargetSize.x;
  r4.w = (int)r4.w + 7;
  r4.w = (uint)r4.w >> 3;
  r4.w = mad((int)r0.y, (int)r4.w, (int)r0.x);
  r4.w = (uint)r4.w << 5;
  r7.w = ~(int)r1.z;
  r16.x = -r4.x;
  r2.x = -r2.x * 0.5 + 1;
  r18.x = 2;
  r10.w = 1;
  r19.x = 2;
  r20.z = 1;
  r21.w = 1;
  r22.w = 1;
  r23.w = 1;
  r16.z = r4.x;
  r24.w = 1;
  r16.yw = r13.xx;
  r4.y = r16.w;
  r13.y = r16.x;
  r25.x = r13.x;
  r25.y = r16.x;
  r25.z = r4.x;
  r13.z = r4.x;
  r26.w = 1;
  r27.x = r13.x;
  r27.y = r16.x;
  r27.z = r4.x;
  r28.x = r13.x;
  r28.y = r16.x;
  r28.z = r4.x;
  r29.xyz = r14.yzw;
  r30.xyz = r17.xyz;
  r31.xyz = r2.yzw;
  r8.w = enableDitheredShadow;
  r9.w = 0;
  r11.w = 0;
  while (true) {
    r12.w = cmp((uint)r11.w >= numLights);
    if (r12.w != 0) break;
    r12.w = (uint)r11.w >> 5;
    r12.w = (int)r4.w + (int)r12.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t26.xxxx
  r12.w = samplerLinear[]..swiz;
    r32.xyz = r29.xyz;
    r33.xyz = r30.xyz;
    r34.xyz = r31.xyz;
    r13.w = r8.w;
    r15.w = r9.w;
    r17.w = r12.w;
    while (true) {
      if (r17.w == 0) break;
      r20.w = firstbitlow((uint)r17.w);
      r25.w = 1 << (int)r20.w;
      r25.w = ~(int)r25.w;
      r17.w = (int)r17.w & (int)r25.w;
      r20.w = (int)r11.w + (int)r20.w;
      r20.w = (int)r20.w * 15;
      if (3 == 0) r25.w = 0; else if (3+24 < 32) {       r25.w = (uint)lightConstantsCB[r20.w].data[1].w << (32-(3 + 24)); r25.w = (uint)r25.w >> (32-3);      } else r25.w = (uint)lightConstantsCB[r20.w].data[1].w >> 24;
      r27.w = cmp((int)r25.w == 2);
      if (r27.w != 0) {
        if (3 == 0) r27.w = 0; else if (3+27 < 32) {         r27.w = (uint)lightConstantsCB[r20.w].data[1].w << (32-(3 + 27)); r27.w = (uint)r27.w >> (32-3);        } else r27.w = (uint)lightConstantsCB[r20.w].data[1].w >> 27;
        r28.w = (int)r15.w & 255;
        r29.w = cmp((uint)r28.w < 32);
        r29.w = r29.w ? r1.w : 0;
        if (r29.w != 0) {
          r28.w = mad((int)r28.w, 24, 112);
          r18.yzw = lightConstantsCB[r20.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r28.w = u2.xyzw;
        }
        r18.y = (int)r15.w + 1;
        r35.xy = lightConstantsCB[r20.w].data[3].zw + -r10.xy;
        r35.z = lightConstantsCB[r20.w].data[4].x + -r10.z;
        r18.z = dot(r35.xyz, r35.xyz);
        r18.z = rsqrt(r18.z);
        r36.xyz = r35.xyz * r18.zzz;
        r18.w = lightConstantsCB[r20.w].data[1].z * r0.z;
        r18.w = 0.25 * r18.w;
        r28.w = dot(r11.xyz, r36.xyz);
        r29.w = saturate(r28.w);
        r30.w = cmp(0 < r29.w);
        if (r30.w != 0) {
          r36.xyz = lightConstantsCB[r20.w].data[7].yzw;
          r36.w = lightConstantsCB[r20.w].data[8].x;
          r30.w = dot(r36.xyzw, r10.xyzw);
          r31.w = cmp(r30.w < 1);
          if (r31.w != 0) {
            r37.xyz = float3(1,1,1);
            r31.w = 0;
          } else {
            r38.xyz = lightConstantsCB[r20.w].data[0].xyz + -r10.xyz;
            r32.w = lightConstantsCB[r20.w].data[3].x * lightConstantsCB[r20.w].data[3].x;
            r33.w = dot(r38.xyz, r38.xyz);
            r32.w = r32.w / r33.w;
            r32.w = min(1, r32.w);
            r38.xy = saturate(r30.ww * lightConstantsCB[r20.w].data[2].xz + lightConstantsCB[r20.w].data[2].yw);
            r38.zw = r38.xy * r38.xy;
            r38.xy = r38.xy * float2(-2,-2) + float2(3,3);
            r38.xy = r38.zw * r38.xy;
            r32.w = r38.x * r32.w;
            r32.w = r32.w * r38.y;
            r38.xyz = lightConstantsCB[r20.w].data[4].yzw;
            r38.w = lightConstantsCB[r20.w].data[5].x;
            r38.x = dot(r38.xyzw, r10.xyzw);
            r39.xyz = lightConstantsCB[r20.w].data[5].yzw;
            r39.w = lightConstantsCB[r20.w].data[6].x;
            r38.y = dot(r39.xyzw, r10.xyzw);
            r20.xy = r38.xy / r30.ww;
            r30.w = cmp(lightConstantsCB[r20.w].data[10].w < 0.00048828125);
            if (r30.w != 0) {
              r38.xy = saturate(abs(r20.xy) * lightConstantsCB[r20.w].data[12].xy + lightConstantsCB[r20.w].data[12].zw);
              r38.zw = r38.xy * r38.xy;
              r38.xy = r38.xy * float2(-2,-2) + float2(3,3);
              r38.xy = r38.zw * r38.xy;
              r30.w = r38.x * r38.y;
            } else {
              r38.xyzw = saturate(lightConstantsCB[r20.w].data[11].xyzw * abs(r20.yyxx));
              r38.xyzw = log2(r38.xyzw);
              r38.xyzw = lightConstantsCB[r20.w].data[12].zzzz * r38.xyzw;
              r38.xyzw = exp2(r38.xyzw);
              r38.xy = r38.xy + r38.zw;
              r38.xy = log2(r38.xy);
              r38.xy = lightConstantsCB[r20.w].data[12].ww * r38.xy;
              r38.xy = exp2(r38.xy);
              r33.w = lightConstantsCB[r20.w].data[12].x * r38.x;
              r34.w = lightConstantsCB[r20.w].data[12].y * r38.y + -1;
              r33.w = lightConstantsCB[r20.w].data[12].y * r38.y + -r33.w;
              r33.w = saturate(r34.w / r33.w);
              r34.w = r33.w * r33.w;
              r33.w = r33.w * -2 + 3;
              r30.w = r34.w * r33.w;
            }
            r31.w = r32.w * r30.w;
            r30.w = 255 & (int)lightConstantsCB[r20.w].data[14].w;
            if (r30.w != 0) {
              r32.w = dot(lightConstantsCB[r20.w].data[13].xyz, r20.xyz);
              r38.x = lightConstantsCB[r20.w].data[13].w;
              r38.yz = lightConstantsCB[r20.w].data[14].xy;
              r20.x = dot(r38.xyz, r20.xyz);
              r38.x = frac(r32.w);
              r38.y = frac(r20.x);
              r20.x = (int)r30.w + -1;
              r38.z = (uint)r20.x;
              r37.xyz = gCookieArray.SampleLevel(samplerLinear_s, r38.xyz, 0).xyz;
            } else {
              r37.xyz = float3(1,1,1);
            }
          }
          r38.x = lightConstantsCB[r20.w].data[0].w;
          r38.yz = lightConstantsCB[r20.w].data[1].xy;
          r37.xyz = r38.xyz * r37.xyz;
          r20.x = cmp(0 < r31.w);
          if (r20.x != 0) {
            r20.x = (int)r18.y & 255;
            r20.y = (int)r20.x + -1;
            r20.y = cmp((uint)r20.y < 32);
            r20.y = r20.y ? r1.w : 0;
            if (r20.y != 0) {
              r20.xy = mad((int2)r20.xx, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r30.w, cb2[52].x, r20.x, u2.xxxx
            r30.w = samplerLinear[]..swiz;
              r30.w = (int)r30.w | 4;
              GBufferDiffuseColor[viewID].r20.x = u2.x;
              GBufferDiffuseColor[viewID].r20.y = u2.x;
            }
            r20.x = (int)r15.w + 257;
            r20.y = cmp((int)r27.w != 1);
            if (r20.y != 0) {
              r20.y = abs(r28.w) * -0.200000003 + 0.400000006;
              r21.xyz = r11.xyz * r20.yyy + r10.xyz;
              r38.xyz = lightConstantsCB[r20.w].data[6].yzw;
              r38.w = lightConstantsCB[r20.w].data[7].x;
              r20.y = dot(r38.xyzw, r21.xyzw);
              r27.w = dot(r36.xyzw, r21.xyzw);
              r30.w = cmp(r27.w >= r20.y);
              if (r30.w != 0) {
                r36.xyz = lightConstantsCB[r20.w].data[4].yzw;
                r36.w = lightConstantsCB[r20.w].data[5].x;
                r36.x = dot(r36.xyzw, r21.xyzw);
                r38.xyz = lightConstantsCB[r20.w].data[5].yzw;
                r38.w = lightConstantsCB[r20.w].data[6].x;
                r36.y = dot(r38.xyzw, r21.xyzw);
                r21.xy = r36.xy / r27.ww;
                r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r36.x = r21.x * lightConstantsCB[r20.w].data[8].y + lightConstantsCB[r20.w].data[8].z;
                r36.y = r21.y * lightConstantsCB[r20.w].data[8].w + lightConstantsCB[r20.w].data[9].x;
                r20.y = r20.y / r27.w;
                r20.y = max(6.10351563e-05, r20.y);
                r21.x = 0x0000ffff & (int)lightConstantsCB[r20.w].data[1].w;
                if (r13.w != 0) {
                  r38.z = (uint)r21.x;
                  r21.yz = float2(0,0);
                  while (true) {
                    r27.w = cmp((int)r21.z >= 8);
                    if (r27.w != 0) break;
                    r39.x = dot(icb[r21.z+0].yx, r16.xy);
                    r39.y = dot(icb[r21.z+0].yx, r16.yz);
                    r38.xy = r39.xy * lightConstantsCB[r20.w].data[3].yy + r36.xy;
                    r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r20.y).x;
                    r21.y = r27.w * 0.125 + r21.y;
                    r21.z = (int)r21.z + 1;
                  }
                } else {
                  r36.z = (uint)r21.x;
                  r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r20.y).x;
                }
                r20.y = r21.y * r21.y;
                r20.y = r20.y * r21.y;
              } else {
                r20.y = 1;
              }
            } else {
              r20.y = 1;
            }
            r20.y = r31.w * r20.y;
            r21.x = cmp(0 < r20.y);
            if (r21.x != 0) {
              if (4 == 0) r21.x = 0; else if (4+16 < 32) {               r21.x = (uint)lightConstantsCB[r20.w].data[1].w << (32-(4 + 16)); r21.x = (uint)r21.x >> (32-4);              } else r21.x = (uint)lightConstantsCB[r20.w].data[1].w >> 16;
              r21.z = cmp(0 < (uint)r21.x);
              r21.z = r21.z ? r1.z : 0;
              if (r21.z != 0) {
                r21.x = (int)r21.x + numLights;
                r21.x = mad((int)r21.x, 15, -15);
                r21.z = abs(r28.w) * -0.200000003 + 0.400000006;
                r22.xyz = r11.xyz * r21.zzz + r10.xyz;
                r36.xyz = lightConstantsCB[r21.x].data[6].yzw;
                r36.w = lightConstantsCB[r21.x].data[7].x;
                r21.z = dot(r36.xyzw, r22.xyzw);
                r36.xyz = lightConstantsCB[r21.x].data[7].yzw;
                r36.w = lightConstantsCB[r21.x].data[8].x;
                r27.w = dot(r36.xyzw, r22.xyzw);
                r30.w = cmp(r27.w < r21.z);
                if (r30.w == 0) {
                  r36.xyz = lightConstantsCB[r21.x].data[4].yzw;
                  r36.w = lightConstantsCB[r21.x].data[5].x;
                  r36.x = dot(r36.xyzw, r22.xyzw);
                  r38.xyz = lightConstantsCB[r21.x].data[5].yzw;
                  r38.w = lightConstantsCB[r21.x].data[6].x;
                  r36.y = dot(r38.xyzw, r22.xyzw);
                  r22.xy = r36.xy / r27.ww;
                  r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r36.x = lightConstantsCB[r21.x].data[9].w + r22.x;
                  r36.y = lightConstantsCB[r21.x].data[10].x + r22.y;
                  r22.xy = lightConstantsCB[r21.x].data[9].yz * r36.xy;
                  r36.xy = lightConstantsCB[r21.x].data[3].yy / lightConstantsCB[r21.x].data[8].yw;
                  r36.zw = float2(1,1) + -r36.xy;
                  r36.zw = cmp(r22.xy >= r36.zw);
                  r36.xy = cmp(r36.xy >= r22.xy);
                  r36.xy = (int2)r36.xy | (int2)r36.zw;
                  r22.z = (int)r36.y | (int)r36.x;
                  if (r22.z == 0) {
                    r22.xy = saturate(r22.xy);
                    r36.x = r22.x * lightConstantsCB[r21.x].data[8].y + lightConstantsCB[r21.x].data[8].z;
                    r36.y = r22.y * lightConstantsCB[r21.x].data[8].w + lightConstantsCB[r21.x].data[9].x;
                    r22.x = lightConstantsCB[r21.x].data[10].z * r27.w;
                    r21.z = lightConstantsCB[r21.x].data[10].y * r27.w + r21.z;
                    r21.z = r21.z / r22.x;
                  }
                } else {
                  r22.z = -1;
                }
                r22.x = (int)r30.w | (int)r22.z;
                if (r22.x == 0) {
                  r21.z = max(6.10351563e-05, r21.z);
                  r22.x = 0x0000ffff & (int)lightConstantsCB[r21.x].data[1].w;
                  if (r13.w != 0) {
                    r38.z = (uint)r22.x;
                    r22.yz = float2(0,0);
                    while (true) {
                      r27.w = cmp((int)r22.z >= 8);
                      if (r27.w != 0) break;
                      r39.x = dot(icb[r22.z+0].yx, r16.xw);
                      r39.y = dot(icb[r22.z+0].xy, r4.xy);
                      r38.xy = r39.xy * lightConstantsCB[r21.x].data[3].yy + r36.xy;
                      r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r21.z).x;
                      r22.y = r27.w * 0.125 + r22.y;
                      r22.z = (int)r22.z + 1;
                    }
                  } else {
                    r36.z = (uint)r22.x;
                    r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r21.z).x;
                  }
                  r21.x = r22.y * r22.y;
                  r21.x = r21.x * r22.y;
                } else {
                  r21.x = 1;
                }
                r20.y = r21.x * r20.y;
              } else {
                if (4 == 0) r21.x = 0; else if (4+20 < 32) {                 r21.x = (uint)lightConstantsCB[r20.w].data[1].w << (32-(4 + 20)); r21.x = (uint)r21.x >> (32-4);                } else r21.x = (uint)lightConstantsCB[r20.w].data[1].w >> 20;
                r21.z = cmp(0 < (uint)r21.x);
                r21.z = r21.z ? r7.w : 0;
                if (r21.z != 0) {
                  r21.x = (int)r21.x + numLights;
                  r21.x = mad((int)r21.x, 15, -15);
                  r21.z = abs(r28.w) * -0.200000003 + 0.400000006;
                  r23.xyz = r11.xyz * r21.zzz + r10.xyz;
                  r36.xyz = lightConstantsCB[r21.x].data[6].yzw;
                  r36.w = lightConstantsCB[r21.x].data[7].x;
                  r21.z = dot(r36.xyzw, r23.xyzw);
                  r36.xyz = lightConstantsCB[r21.x].data[7].yzw;
                  r36.w = lightConstantsCB[r21.x].data[8].x;
                  r22.x = dot(r36.xyzw, r23.xyzw);
                  r22.z = cmp(r22.x < r21.z);
                  if (r22.z == 0) {
                    r36.xyz = lightConstantsCB[r21.x].data[4].yzw;
                    r36.w = lightConstantsCB[r21.x].data[5].x;
                    r36.x = dot(r36.xyzw, r23.xyzw);
                    r38.xyz = lightConstantsCB[r21.x].data[5].yzw;
                    r38.w = lightConstantsCB[r21.x].data[6].x;
                    r36.y = dot(r38.xyzw, r23.xyzw);
                    r23.xy = r36.xy / r22.xx;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r36.x = lightConstantsCB[r21.x].data[9].w + r23.x;
                    r36.y = lightConstantsCB[r21.x].data[10].x + r23.y;
                    r23.xy = lightConstantsCB[r21.x].data[9].yz * r36.xy;
                    r36.xy = lightConstantsCB[r21.x].data[3].yy / lightConstantsCB[r21.x].data[8].yw;
                    r36.zw = float2(1,1) + -r36.xy;
                    r36.zw = cmp(r23.xy >= r36.zw);
                    r36.xy = cmp(r36.xy >= r23.xy);
                    r36.xy = (int2)r36.xy | (int2)r36.zw;
                    r23.z = (int)r36.y | (int)r36.x;
                    if (r23.z == 0) {
                      r23.xy = saturate(r23.xy);
                      r36.x = r23.x * lightConstantsCB[r21.x].data[8].y + lightConstantsCB[r21.x].data[8].z;
                      r36.y = r23.y * lightConstantsCB[r21.x].data[8].w + lightConstantsCB[r21.x].data[9].x;
                      r23.x = lightConstantsCB[r21.x].data[10].z * r22.x;
                      r21.z = lightConstantsCB[r21.x].data[10].y * r22.x + r21.z;
                      r21.z = r21.z / r23.x;
                    }
                  } else {
                    r23.z = -1;
                  }
                  r22.x = (int)r22.z | (int)r23.z;
                  if (r22.x == 0) {
                    r21.z = max(6.10351563e-05, r21.z);
                    r22.x = 0x0000ffff & (int)lightConstantsCB[r21.x].data[1].w;
                    if (r13.w != 0) {
                      r23.z = (uint)r22.x;
                      r22.z = 0;
                      r27.w = 0;
                      while (true) {
                        r30.w = cmp((int)r27.w >= 8);
                        if (r30.w != 0) break;
                        r38.x = dot(icb[r27.w+0].xy, r25.xy);
                        r38.y = dot(icb[r27.w+0].yx, r25.xz);
                        r23.xy = r38.xy * lightConstantsCB[r21.x].data[3].yy + r36.xy;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r21.z).x;
                        r22.z = r23.x * 0.125 + r22.z;
                        r27.w = (int)r27.w + 1;
                      }
                    } else {
                      r36.z = (uint)r22.x;
                      r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r21.z).x;
                    }
                    r21.x = r22.z * r22.z;
                    r21.x = r21.x * r22.z;
                  } else {
                    r21.x = 1;
                  }
                  r20.y = r21.x * r20.y;
                }
              }
              r21.x = -r29.w * r2.x + 1;
              r21.x = r21.x * r21.x;
              r21.x = -r21.x * 0.620000005 + 0.620000005;
              r21.x = r21.x + -r29.w;
              r21.x = r0.w * r21.x + r29.w;
              r21.x = r21.x * r20.y;
              r21.z = cmp(0 < r28.w);
              r23.xyz = r21.xxx * r37.xyz + r32.xyz;
              r35.xyz = r35.xyz * r18.zzz + r12.xyz;
              r18.z = dot(r35.xyz, r35.xyz);
              r18.z = rsqrt(r18.z);
              r35.xyz = r35.xyz * r18.zzz;
              r18.z = dot(r35.xyz, r12.xyz);
              r21.x = dot(r11.xyz, r35.xyz);
              r22.x = abs(r21.x) * r0.z + -abs(r21.x);
              r21.x = abs(r21.x) * r22.x + 1;
              r22.x = r29.w * r3.z + r4.z;
              r21.x = r21.x * r21.x;
              r21.x = r21.x * r22.x;
              r21.x = rcp(r21.x);
              r18.w = r29.w * r18.w;
              r18.w = r21.x * r18.w;
              r18.w = r18.w * r20.y;
              r35.xyz = r18.www * r37.xyz + r34.xyz;
              r18.z = saturate(1 + -r18.z);
              r21.x = r18.z * r18.z;
              r21.x = r21.x * r21.x;
              r18.z = r21.x * r18.z;
              r18.z = r18.w * r18.z;
              r36.xyz = r18.zzz * r37.xyz + r33.xyz;
              r32.xyz = r21.zzz ? r23.xyz : r32.xyz;
              r33.xyz = r21.zzz ? r36.xyz : r33.xyz;
              r34.xyz = r21.zzz ? r35.xyz : r34.xyz;
              r18.z = (int)r20.x & 255;
              r18.w = (int)r18.z + -1;
              r18.w = cmp((uint)r18.w < 32);
              r18.w = r18.w ? r1.w : 0;
              if (r18.w != 0) {
                r18.zw = mad((int2)r18.zz, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r21.x, cb2[52].x, r18.z, u2.xxxx
              r21.x = samplerLinear[]..swiz;
                r21.x = (int)r21.x | 8;
                GBufferDiffuseColor[viewID].r18.z = u2.x;
                GBufferDiffuseColor[viewID].r18.w = u2.x;
              }
              r15.w = (int)r15.w + 0x00010101;
            } else {
              r15.w = r20.x;
            }
          } else {
            r15.w = r18.y;
          }
        } else {
          r15.w = r18.y;
        }
      } else {
        r18.y = cmp((int)r25.w == 4);
        if (r18.y != 0) {
          if (3 == 0) r18.y = 0; else if (3+27 < 32) {           r18.y = (uint)lightConstantsCB[r20.w].data[1].w << (32-(3 + 27)); r18.y = (uint)r18.y >> (32-3);          } else r18.y = (uint)lightConstantsCB[r20.w].data[1].w >> 27;
          r18.z = (int)r15.w & 255;
          r18.w = cmp((uint)r18.z < 32);
          r18.w = r18.w ? r1.w : 0;
          if (r18.w != 0) {
            r18.z = mad((int)r18.z, 24, 112);
            r19.yzw = lightConstantsCB[r20.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r18.z = u2.xyzw;
          }
          r18.z = (int)r15.w + 1;
          r18.w = lightConstantsCB[r20.w].data[1].z * r0.z;
          r18.w = 0.25 * r18.w;
          r19.y = cmp(0 < lightConstantsCB[r20.w].data[6].y);
          r23.xy = lightConstantsCB[r20.w].data[5].zw;
          r23.z = lightConstantsCB[r20.w].data[6].x;
          r35.xyz = -r23.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r20.w].data[0].xyz;
          r36.xyz = r35.xyz + -r10.xyz;
          r19.z = dot(r23.xyz, r15.xyz);
          r19.w = dot(r23.xyz, r36.xyz);
          r20.x = dot(r15.xyz, r36.xyz);
          r20.y = -r19.z * r19.z + lightConstantsCB[r20.w].data[6].y;
          r19.z = r19.z * r20.x + -r19.w;
          r19.w = saturate(-r19.w / lightConstantsCB[r20.w].data[6].y);
          r19.z = saturate(r19.z / r20.y);
          r20.x = r20.y / lightConstantsCB[r20.w].data[6].y;
          r20.x = 10 * r20.x;
          r20.x = min(1, r20.x);
          r19.z = r19.z + -r19.w;
          r19.z = r20.x * r19.z + r19.w;
          r36.xyz = r19.zzz * r23.xyz + r35.xyz;
          r23.xyz = r19.www * r23.xyz + r35.xyz;
          r23.xyz = r19.yyy ? r23.xyz : lightConstantsCB[r20.w].data[0].xyz;
          r19.yzw = r19.yyy ? r36.xyz : lightConstantsCB[r20.w].data[0].xyz;
          r19.yzw = r19.yzw + -r10.xyz;
          r23.xyz = r23.xyz + -r10.xyz;
          r20.x = dot(r19.yzw, r19.yzw);
          r20.x = rsqrt(r20.x);
          r35.xyz = r20.xxx * r19.yzw;
          r20.y = dot(r23.xyz, r23.xyz);
          r21.x = rsqrt(r20.y);
          r23.xyz = r23.xyz * r21.xxx;
          r21.x = dot(r11.xyz, r23.xyz);
          r21.z = saturate(r21.x);
          r22.x = cmp(0 < r21.z);
          if (r22.x != 0) {
            r22.x = sqrt(r20.y);
            r23.x = lightConstantsCB[r20.w].data[3].x * lightConstantsCB[r20.w].data[3].x;
            r20.y = r23.x / r20.y;
            r20.y = min(1, r20.y);
            r23.xy = saturate(r22.xx * lightConstantsCB[r20.w].data[2].xz + lightConstantsCB[r20.w].data[2].yw);
            r36.xy = r23.xy * r23.xy;
            r23.xy = r23.xy * float2(-2,-2) + float2(3,3);
            r23.xy = r36.xy * r23.xy;
            r20.y = r23.x * r20.y;
            r20.y = r20.y * r23.y;
            r22.x = cmp(0 < r20.y);
            if (r22.x != 0) {
              r22.x = (int)r18.z & 255;
              r23.x = (int)r22.x + -1;
              r23.x = cmp((uint)r23.x < 32);
              r23.x = r23.x ? r1.w : 0;
              if (r23.x != 0) {
                r23.xy = mad((int2)r22.xx, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r22.x, cb2[52].x, r23.x, u2.xxxx
              r22.x = samplerLinear[]..swiz;
                r22.x = (int)r22.x | 4;
                GBufferDiffuseColor[viewID].r23.x = u2.x;
                GBufferDiffuseColor[viewID].r23.y = u2.x;
              }
              r22.x = (int)r15.w + 257;
              r18.y = cmp((int)r18.y != 1);
              if (r18.y != 0) {
                r18.y = abs(r21.x) * -0.200000003 + 0.400000006;
                r23.xyz = r11.xyz * r18.yyy + r10.xyz;
                r23.xyz = -lightConstantsCB[r20.w].data[4].yzw + r23.xyz;
                r18.y = max(abs(r23.y), abs(r23.z));
                r18.y = max(abs(r23.x), r18.y);
                r18.y = lightConstantsCB[r20.w].data[5].x / r18.y;
                r18.y = lightConstantsCB[r20.w].data[5].y + r18.y;
                r25.w = dot(r23.xyz, r23.xyz);
                r25.w = rsqrt(r25.w);
                r18.y = max(6.10351563e-05, r18.y);
                r27.w = 0x0000ffff & (int)lightConstantsCB[r20.w].data[1].w;
                r36.w = (uint)r27.w;
                r27.w = 0;
                r28.w = 0;
                while (true) {
                  r29.w = cmp((int)r28.w >= 8);
                  if (r29.w != 0) break;
                  r37.y = dot(icb[r28.w+0].xy, r13.xy);
                  r37.z = dot(icb[r28.w+0].yx, r13.xz);
                  r37.yz = lightConstantsCB[r20.w].data[3].yy * r37.yz;
                  r37.x = r37.y * r14.x;
                  r37.w = r37.y * r5.x;
                  r36.xyz = r23.xyz * r25.www + r37.xzw;
                  r29.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyzw, r18.y).x;
                  r27.w = r29.w * 0.125 + r27.w;
                  r28.w = (int)r28.w + 1;
                }
              } else {
                r27.w = 1;
              }
              r18.y = r27.w * r20.y;
              r20.y = cmp(0 < r18.y);
              if (r20.y != 0) {
                if (4 == 0) r20.y = 0; else if (4+16 < 32) {                 r20.y = (uint)lightConstantsCB[r20.w].data[1].w << (32-(4 + 16)); r20.y = (uint)r20.y >> (32-4);                } else r20.y = (uint)lightConstantsCB[r20.w].data[1].w >> 16;
                r23.x = cmp(0 < (uint)r20.y);
                r23.x = r23.x ? r1.z : 0;
                if (r23.x != 0) {
                  r20.y = (int)r20.y + numLights;
                  r20.y = mad((int)r20.y, 15, -15);
                  r23.x = abs(r21.x) * -0.200000003 + 0.400000006;
                  r24.xyz = r11.xyz * r23.xxx + r10.xyz;
                  r36.xyz = lightConstantsCB[r20.y].data[6].yzw;
                  r36.w = lightConstantsCB[r20.y].data[7].x;
                  r23.x = dot(r36.xyzw, r24.xyzw);
                  r36.xyz = lightConstantsCB[r20.y].data[7].yzw;
                  r36.w = lightConstantsCB[r20.y].data[8].x;
                  r23.y = dot(r36.xyzw, r24.xyzw);
                  r23.z = cmp(r23.y < r23.x);
                  if (r23.z == 0) {
                    r36.xyz = lightConstantsCB[r20.y].data[4].yzw;
                    r36.w = lightConstantsCB[r20.y].data[5].x;
                    r36.x = dot(r36.xyzw, r24.xyzw);
                    r37.xyz = lightConstantsCB[r20.y].data[5].yzw;
                    r37.w = lightConstantsCB[r20.y].data[6].x;
                    r36.y = dot(r37.xyzw, r24.xyzw);
                    r24.xy = r36.xy / r23.yy;
                    r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r36.x = lightConstantsCB[r20.y].data[9].w + r24.x;
                    r36.y = lightConstantsCB[r20.y].data[10].x + r24.y;
                    r24.xy = lightConstantsCB[r20.y].data[9].yz * r36.xy;
                    r36.xy = lightConstantsCB[r20.y].data[3].yy / lightConstantsCB[r20.y].data[8].yw;
                    r36.zw = float2(1,1) + -r36.xy;
                    r36.zw = cmp(r24.xy >= r36.zw);
                    r36.xy = cmp(r36.xy >= r24.xy);
                    r36.xy = (int2)r36.xy | (int2)r36.zw;
                    r24.z = (int)r36.y | (int)r36.x;
                    if (r24.z == 0) {
                      r24.xy = saturate(r24.xy);
                      r36.x = r24.x * lightConstantsCB[r20.y].data[8].y + lightConstantsCB[r20.y].data[8].z;
                      r36.y = r24.y * lightConstantsCB[r20.y].data[8].w + lightConstantsCB[r20.y].data[9].x;
                      r24.x = lightConstantsCB[r20.y].data[10].z * r23.y;
                      r23.x = lightConstantsCB[r20.y].data[10].y * r23.y + r23.x;
                      r23.x = r23.x / r24.x;
                    }
                  } else {
                    r24.z = -1;
                  }
                  r23.y = (int)r23.z | (int)r24.z;
                  if (r23.y == 0) {
                    r23.x = max(6.10351563e-05, r23.x);
                    r23.y = 0x0000ffff & (int)lightConstantsCB[r20.y].data[1].w;
                    if (r13.w != 0) {
                      r24.z = (uint)r23.y;
                      r23.z = 0;
                      r25.w = 0;
                      while (true) {
                        r28.w = cmp((int)r25.w >= 8);
                        if (r28.w != 0) break;
                        r37.x = dot(icb[r25.w+0].xy, r27.xy);
                        r37.y = dot(icb[r25.w+0].yx, r27.xz);
                        r24.xy = r37.xy * lightConstantsCB[r20.y].data[3].yy + r36.xy;
                        r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r23.x).x;
                        r23.z = r24.x * 0.125 + r23.z;
                        r25.w = (int)r25.w + 1;
                      }
                    } else {
                      r36.z = (uint)r23.y;
                      r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r23.x).x;
                    }
                    r20.y = r23.z * r23.z;
                    r20.y = r20.y * r23.z;
                  } else {
                    r20.y = 1;
                  }
                  r18.y = r20.y * r18.y;
                } else {
                  if (4 == 0) r20.y = 0; else if (4+20 < 32) {                   r20.y = (uint)lightConstantsCB[r20.w].data[1].w << (32-(4 + 20)); r20.y = (uint)r20.y >> (32-4);                  } else r20.y = (uint)lightConstantsCB[r20.w].data[1].w >> 20;
                  r23.x = cmp(0 < (uint)r20.y);
                  r23.x = r23.x ? r7.w : 0;
                  if (r23.x != 0) {
                    r20.y = (int)r20.y + numLights;
                    r20.y = mad((int)r20.y, 15, -15);
                    r23.x = abs(r21.x) * -0.200000003 + 0.400000006;
                    r26.xyz = r11.xyz * r23.xxx + r10.xyz;
                    r36.xyz = lightConstantsCB[r20.y].data[6].yzw;
                    r36.w = lightConstantsCB[r20.y].data[7].x;
                    r23.x = dot(r36.xyzw, r26.xyzw);
                    r36.xyz = lightConstantsCB[r20.y].data[7].yzw;
                    r36.w = lightConstantsCB[r20.y].data[8].x;
                    r23.y = dot(r36.xyzw, r26.xyzw);
                    r24.x = cmp(r23.y < r23.x);
                    if (r24.x == 0) {
                      r36.xyz = lightConstantsCB[r20.y].data[4].yzw;
                      r36.w = lightConstantsCB[r20.y].data[5].x;
                      r36.x = dot(r36.xyzw, r26.xyzw);
                      r37.xyz = lightConstantsCB[r20.y].data[5].yzw;
                      r37.w = lightConstantsCB[r20.y].data[6].x;
                      r36.y = dot(r37.xyzw, r26.xyzw);
                      r24.yz = r36.xy / r23.yy;
                      r24.yz = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                      r26.x = lightConstantsCB[r20.y].data[9].w + r24.y;
                      r26.y = lightConstantsCB[r20.y].data[10].x + r24.z;
                      r24.yz = lightConstantsCB[r20.y].data[9].yz * r26.xy;
                      r26.xy = lightConstantsCB[r20.y].data[3].yy / lightConstantsCB[r20.y].data[8].yw;
                      r36.xy = float2(1,1) + -r26.xy;
                      r36.xy = cmp(r24.yz >= r36.xy);
                      r26.xy = cmp(r26.xy >= r24.yz);
                      r26.xy = (int2)r26.xy | (int2)r36.xy;
                      r25.w = (int)r26.y | (int)r26.x;
                      if (r25.w == 0) {
                        r24.yz = saturate(r24.yz);
                        r26.x = r24.y * lightConstantsCB[r20.y].data[8].y + lightConstantsCB[r20.y].data[8].z;
                        r26.y = r24.z * lightConstantsCB[r20.y].data[8].w + lightConstantsCB[r20.y].data[9].x;
                        r24.y = lightConstantsCB[r20.y].data[10].z * r23.y;
                        r23.x = lightConstantsCB[r20.y].data[10].y * r23.y + r23.x;
                        r23.x = r23.x / r24.y;
                      }
                    } else {
                      r25.w = -1;
                    }
                    r23.y = (int)r24.x | (int)r25.w;
                    if (r23.y == 0) {
                      r23.x = max(6.10351563e-05, r23.x);
                      r23.y = 0x0000ffff & (int)lightConstantsCB[r20.y].data[1].w;
                      if (r13.w != 0) {
                        r24.z = (uint)r23.y;
                        r25.w = 0;
                        r28.w = 0;
                        while (true) {
                          r29.w = cmp((int)r28.w >= 8);
                          if (r29.w != 0) break;
                          r36.x = dot(icb[r28.w+0].xy, r28.xy);
                          r36.y = dot(icb[r28.w+0].yx, r28.xz);
                          r24.xy = r36.xy * lightConstantsCB[r20.y].data[3].yy + r26.xy;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r23.x).x;
                          r25.w = r24.x * 0.125 + r25.w;
                          r28.w = (int)r28.w + 1;
                        }
                      } else {
                        r26.z = (uint)r23.y;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r23.x).x;
                      }
                      r20.y = r25.w * r25.w;
                      r20.y = r20.y * r25.w;
                    } else {
                      r20.y = 1;
                    }
                    r18.y = r20.y * r18.y;
                  }
                }
                r20.y = -r21.z * r2.x + 1;
                r20.y = r20.y * r20.y;
                r20.y = -r20.y * 0.620000005 + 0.620000005;
                r20.y = r20.y + -r21.z;
                r20.y = r0.w * r20.y + r21.z;
                r20.y = r20.y * r18.y;
                r24.x = lightConstantsCB[r20.w].data[0].w;
                r24.yz = lightConstantsCB[r20.w].data[1].xy;
                r20.w = cmp(0 < r21.x);
                r26.xyz = r20.yyy * r24.xyz + r32.xyz;
                r20.y = saturate(dot(r11.xyz, r35.xyz));
                r19.yzw = r19.yzw * r20.xxx + r12.xyz;
                r20.x = dot(r19.yzw, r19.yzw);
                r20.x = rsqrt(r20.x);
                r19.yzw = r20.xxx * r19.yzw;
                r20.x = dot(r19.yzw, r12.xyz);
                r19.y = dot(r11.xyz, r19.yzw);
                r19.z = abs(r19.y) * r0.z + -abs(r19.y);
                r19.y = abs(r19.y) * r19.z + 1;
                r19.z = r20.y * r3.z + r4.z;
                r19.y = r19.y * r19.y;
                r19.y = r19.y * r19.z;
                r19.y = rcp(r19.y);
                r18.w = r20.y * r18.w;
                r18.w = r19.y * r18.w;
                r18.w = r18.w * r18.y;
                r19.yzw = r18.www * r24.xyz + r34.xyz;
                r20.x = saturate(1 + -r20.x);
                r20.y = r20.x * r20.x;
                r20.y = r20.y * r20.y;
                r20.x = r20.x * r20.y;
                r18.w = r20.x * r18.w;
                r24.xyz = r18.www * r24.xyz + r33.xyz;
                r32.xyz = r20.www ? r26.xyz : r32.xyz;
                r33.xyz = r20.www ? r24.xyz : r33.xyz;
                r34.xyz = r20.www ? r19.yzw : r34.xyz;
                r18.w = (int)r22.x & 255;
                r19.y = (int)r18.w + -1;
                r19.y = cmp((uint)r19.y < 32);
                r19.y = r19.y ? r1.w : 0;
                if (r19.y != 0) {
                  r19.yz = mad((int2)r18.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.w, cb2[52].x, r19.y, u2.xxxx
                r18.w = samplerLinear[]..swiz;
                  r18.w = (int)r18.w | 8;
                  GBufferDiffuseColor[viewID].r19.y = u2.x;
                  GBufferDiffuseColor[viewID].r19.z = u2.x;
                }
                r15.w = (int)r15.w + 0x00010101;
              } else {
                r15.w = r22.x;
              }
            } else {
              r15.w = r18.z;
            }
          } else {
            r15.w = r18.z;
          }
        }
      }
    }
    r29.xyz = r32.xyz;
    r30.xyz = r33.xyz;
    r31.xyz = r34.xyz;
    r9.w = r15.w;
    r11.w = (int)r11.w + 32;
  }
  r2.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r2.y;
  r3.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r3.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r3.xy = r0.ww ? r3.yz : float2(-1,0);
  r4.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r3.zw = r0.ww ? r4.yz : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r4.xy = r0.ww ? r4.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.z = cmp((int)r0.z == (int)r0.w);
  r0.zw = r0.zz ? r6.yz : float2(-1,0);
  r7.xy = r3.xz;
  r7.z = r4.x;
  r7.w = r0.z;
  r7.xyzw = r7.xyzw + -r2.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r7.x + r7.y;
  r0.z = r0.z + r7.z;
  r0.z = r0.z + r7.w;
  r1.z = r7.y * r3.w;
  r1.z = r7.x * r3.y + r1.z;
  r1.z = r7.z * r4.y + r1.z;
  r0.w = r7.w * r0.w + r1.z;
  r2.w = r0.w / r0.z;
  r0.z = cmp(0 >= r0.z);
  r2.yz = r0.zz ? float2(0,0) : r2.zw;
  r0.zw = (int2)r1.xy & int2(1,1);
  r0.z = cmp((int)r0.w == (int)r0.z);
  r2.xyz = r0.zzz ? r2.xyz : r2.xzy;
  r0.z = -r2.z * 0.5 + r2.x;
  r3.y = r2.z + r0.z;
  r3.z = -r2.y * 0.5 + r0.z;
  r3.x = r3.z + r2.y;
  r2.xyz = float3(1,1,1) + -r3.xyz;
  r2.xyz = r30.xyz * r2.xyz;
  r2.xyz = r31.xyz * r3.xyz + r2.xyz;
  r2.xyz = r29.xyz * r5.yzw + r2.xyz;
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = dot(r10.xyz, r10.xyz);
    r0.w = rsqrt(r0.z);
    r3.xyz = r10.xyz * r0.www;
    r0.z = sqrt(r0.z);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r4.xy = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r0.w = cmp(0.00999999978 < abs(r10.z));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * r10.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.zw = r5.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r0.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xzw;
    } else {
      r0.w = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.z = cmp(0.00999999978 < abs(r10.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r10.z;
      r3.w = -1.44269502 * r2.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r2.w = r3.w / r2.w;
      r2.w = r2.w * r0.w;
      r0.w = r1.z ? r2.w : r0.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.w = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r2.w = r2.w * r2.w;
    r2.w = 12.566371 * r2.w;
    r1.z = r1.z / r2.w;
    r0.z = -fogConstants.atmospherehazebasedist + r0.z;
    r0.z = saturate(fogConstants.atmospherehazefadedist * r0.z);
    r0.z = r1.z * r0.z;
    r0.w = saturate(r0.w);
    r0.w = r0.w * r0.w + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConstants.atmospheresunstrength * r0.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.zzz;
    r3.xyz = r0.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
  } else {
    r0.z = fogConstants.heightFalloff * r10.z;
    r0.w = fogConstants.heightFalloff * r10.z + fogConstants.K0;
    r1.z = cmp(abs(r0.z) < 9.99999975e-05);
    r2.w = min(64, r0.w);
    r2.w = 1.44269502 * r2.w;
    r2.w = exp2(r2.w);
    r3.w = saturate(fogConstants.K0b);
    r4.x = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.x ? r2.w : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.z = r1.z ? 1 : r0.z;
    r0.z = r0.w / r0.z;
    r0.z = r1.z ? r3.w : r0.z;
    r0.z = fogConstants.expMul * r0.z;
    r0.w = dot(r10.xyz, r10.xyz);
    r1.z = sqrt(r0.w);
    r0.z = r0.z * r1.z + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r0.w = rsqrt(r0.w);
    r4.xyz = r10.xyz * r0.www;
    r0.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r0.w = saturate(fogConstants.sunFogAngles.y * r0.w + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r0.wwww * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.z = r4.w * r0.z;
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyz = r0.zzz * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.z = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r3.xz = cmp((int2)r3.xz != int2(0,0));
  r3.yw = cmp((int2)r3.yw == int2(0,0));
  r3.xy = r3.yw ? r3.xz : 0;
  r3.xy = r3.xy ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 16);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.zzz ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.z = (int)r9.w & 255;
        break;
        case 2 :        if (8 == 0) r0.z = 0; else if (8+8 < 32) {         r0.z = (uint)r9.w << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r9.w >> 8;
        break;
        case 3 :        if (8 == 0) r0.z = 0; else if (8+16 < 32) {         r0.z = (uint)r9.w << (32-(8 + 16)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r9.w >> 16;
        break;
        case 4 :        r0.z = (int)r6.w & 255;
        break;
        case 5 :        if (8 == 0) r0.z = 0; else if (8+8 < 32) {         r0.z = (uint)r6.w << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r6.w >> 8;
        break;
        default :
        r0.z = 0;
        break;
      }
      r0.z = (uint)r0.z;
      r0.z = drawNumLighstScale * r0.z;
      r3.xyz = r0.zzz * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyz + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r1.w != 0) {
    r1.xyz = eyeOffset.xyz + r10.xyz;
    r1.w = (int)r9.w & 255;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.z = (int)r6.w & 255;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.z = (int)r9.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.z
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.x = 0; else if (8+8 < 32) {     r1.x = (uint)r9.w << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);    } else r1.x = (uint)r9.w >> 8;
    if (8 == 0) r1.y = 0; else if (8+16 < 32) {     r1.y = (uint)r9.w << (32-(8 + 16)); r1.y = (uint)r1.y >> (32-8);    } else r1.y = (uint)r9.w >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.y
    InterlockedAdd(dest, value, orig_value);
    r0.w = (int)r6.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r0.w
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r6.w << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r6.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r1.z
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r0.z
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(4), r1.x
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(8), r1.y
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(12), r0.w
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), r1.z
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    imm_atomic_iadd r1.x, g0, l(0), l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.z = cmp((int)r1.x == 63);
    if (r0.z != 0) {
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
        ld_raw r0.z, l(16), g1.xxxx
      r1.xz = viewID;
      r1.yw = float2(7.8472714e-44,0);
      // Needs manual fix for instruction:
        atomic_iadd u2, r1.xyxx, r0.z
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
        ld_raw r0.z, l(16), g2.xxxx
      // Needs manual fix for instruction:
        atomic_umax u2, r1.zwzz, r0.z
      InterlockedMax(dest, value, orig_value);
      r0.xy = cmp((int2)r0.xy == centerGroupIDx);
      r0.x = r0.y ? r0.x : 0;
      if (r0.x != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}