// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:58 2021

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
  r0.x = mad(permuteStride, 18, (int)vThreadGroupID.x);
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
  r1.z = r0.w ? -0.5 : -0.00146627566;
  r1.z = r2.z + r1.z;
  r2.y = saturate(2.00982332 * r1.z);
  r1.z = dot(-r5.xyz, -r5.xyz);
  r1.z = rsqrt(r1.z);
  r12.xyz = -r5.xyz * r1.zzz;
  r1.z = dot(r3.yz, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r13.x, r14.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.z = dot(-r12.xyz, r11.xyz);
  r1.z = r1.z + r1.z;
  r15.xyz = r11.xyz * -r1.zzz + -r12.xyz;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r2.z = r2.w ? r2.z : 0;
  r2.w = 1 + -r2.y;
  r3.y = 5 * r2.w;
  r3.z = r2.w * 5 + -2.5;
  r3.z = 0.400000006 * r3.z;
  r3.z = max(0, r3.z);
  r13.yz = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r3.w = exp2(r13.y);
  r3.w = r3.w * r2.x;
  r3.zw = float2(100,9.1368103) * r3.zw;
  r6.w = r3.y * r2.w;
  r6.w = -r6.w * 2.0159049 + r13.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r2.x;
  r6.w = 9.70808983 * r6.w;
  r3.w = max(r6.w, r3.w);
  r3.w = max(1.26815999, r3.w);
  if (probeDebug != 0) {
    r6.w = (uint)renderTargetSize.x;
    r6.w = (int)r6.w + 7;
    r6.w = (uint)r6.w >> 3;
    r6.w = mad((int)r0.z, (int)r6.w, (int)r0.y);
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
    r13.yzw = float3(0,0,0);
    r14.yz = float2(0,0);
    r7.w = 0;
    r27.z = 0;
    r28.z = 0;
    r8.w = 0;
    r9.w = 0;
    while (true) {
      r10.w = cmp((uint)r9.w >= numRefProbes);
      if (r10.w != 0) break;
      r10.w = (uint)r9.w >> 5;
      r10.w = (int)r6.w + (int)r10.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t26.xxxx
    r10.w = samplerLinear[]..swiz;
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
      r12.w = r7.w;
      r14.w = r27.z;
      r27.w = r28.z;
      r28.w = r8.w;
      r40.xyzw = r23.zwxy;
      r41.xyzw = r26.zwxy;
      r38.w = r10.w;
      while (true) {
        if (r38.w == 0) break;
        r39.z = firstbitlow((uint)r38.w);
        r39.w = 1 << (int)r39.z;
        r39.w = ~(int)r39.w;
        r38.w = (int)r38.w & (int)r39.w;
        r39.z = (int)r9.w + (int)r39.z;
        r39.z = (int)r39.z * 14;
        r42.xyz = -refProbeConstantsCB[r39.z].data[0].xyz + r5.xyz;
        r39.w = dot(r42.xyz, r42.xyz);
        r39.w = sqrt(r39.w);
        r39.w = cmp(probeDebugRadius >= r39.w);
        if (r39.w != 0) {
          r29.yzw = refProbeConstantsCB[r39.z].data[1].xyz;
          r29.x = refProbeConstantsCB[r39.z].data[0].w;
          r30.yzw = refProbeConstantsCB[r39.z].data[2].xyz;
          r30.x = refProbeConstantsCB[r39.z].data[1].w;
          r31.xyz = refProbeConstantsCB[r39.z].data[3].xyz;
          r31.w = refProbeConstantsCB[r39.z].data[4].z;
          r32.yz = refProbeConstantsCB[r39.z].data[4].xy;
          r32.x = refProbeConstantsCB[r39.z].data[3].w;
          r32.w = refProbeConstantsCB[r39.z].data[6].x;
          r33.yzw = refProbeConstantsCB[r39.z].data[5].xyz;
          r33.x = refProbeConstantsCB[r39.z].data[4].w;
          r34.yz = refProbeConstantsCB[r39.z].data[7].yw;
          r34.x = refProbeConstantsCB[r39.z].data[6].y;
          r34.w = refProbeConstantsCB[r39.z].data[8].x;
          r35.xyz = refProbeConstantsCB[r39.z].data[8].yzw;
          r35.w = refProbeConstantsCB[r39.z].data[9].x;
          r36.xyz = refProbeConstantsCB[r39.z].data[10].yzw;
          r36.w = refProbeConstantsCB[r39.z].data[11].x;
          r37.xyz = refProbeConstantsCB[r39.z].data[11].yzw;
          r37.w = refProbeConstantsCB[r39.z].data[12].x;
          r38.xyz = refProbeConstantsCB[r39.z].data[0].xyz;
          r42.xy = refProbeConstantsCB[r39.z].data[13].yz;
          r12.w = -1;
          r14.w = refProbeConstantsCB[r39.z].data[2].w;
          r27.w = refProbeConstantsCB[r39.z].data[5].w;
          r28.w = refProbeConstantsCB[r39.z].data[7].z;
          r40.xyz = refProbeConstantsCB[r39.z].data[9].yzw;
          r40.w = refProbeConstantsCB[r39.z].data[10].x;
          r41.xyz = refProbeConstantsCB[r39.z].data[12].yzw;
          r41.w = refProbeConstantsCB[r39.z].data[13].x;
          r39.xy = r42.xy;
          break;
        }
      }
      if (r12.w != 0) {
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
        r7.w = -1;
        r27.z = r14.w;
        r28.z = r27.w;
        r8.w = r28.w;
        break;
      }
      r9.w = (int)r9.w + 32;
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
      r7.w = r12.w;
      r27.z = r14.w;
      r28.z = r27.w;
      r8.w = r28.w;
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
    r7.w = 0;
  }
  if (r7.w != 0) {
    if (r2.z != 0) {
      r30.yzw = eyeOffset.xyz + r13.yzw;
      r30.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r13.yzw = -r13.yzw + r5.xyz;
    r6.w = (int)r8.w & 0x0000ffff;
    if (6 == 0) r9.w = 0; else if (6+25 < 32) {     r9.w = (uint)r8.w << (32-(6 + 25)); r9.w = (uint)r9.w >> (32-6);    } else r9.w = (uint)r8.w >> 25;
    r10.w = (int)r6.w * 6;
    r12.w = dot(refProbeAttenuationConstantsCB[r10.w].data[0].xyz, r13.yzw);
    r12.w = saturate(refProbeAttenuationConstantsCB[r10.w].data[0].w + r12.w);
    r14.z = dot(refProbeAttenuationConstantsCB[r10.w].data[1].xyz, r13.yzw);
    r14.z = saturate(refProbeAttenuationConstantsCB[r10.w].data[1].w + r14.z);
    r12.w = r14.z * r12.w;
    r14.z = dot(refProbeAttenuationConstantsCB[r10.w].data[2].xyz, r13.yzw);
    r14.z = saturate(refProbeAttenuationConstantsCB[r10.w].data[2].w + r14.z);
    r12.w = r14.z * r12.w;
    r14.z = dot(refProbeAttenuationConstantsCB[r10.w].data[3].xyz, r13.yzw);
    r14.z = saturate(refProbeAttenuationConstantsCB[r10.w].data[3].w + r14.z);
    r12.w = r14.z * r12.w;
    r14.z = dot(refProbeAttenuationConstantsCB[r10.w].data[4].xyz, r13.yzw);
    r14.z = saturate(refProbeAttenuationConstantsCB[r10.w].data[4].w + r14.z);
    r12.w = r14.z * r12.w;
    r14.z = dot(refProbeAttenuationConstantsCB[r10.w].data[5].xyz, r13.yzw);
    r10.w = saturate(refProbeAttenuationConstantsCB[r10.w].data[5].w + r14.z);
    r30.x = r12.w * r10.w;
    r10.w = (int)r19.w & 1;
    r30.yz = float2(0,1);
    r14.zw = r10.ww ? r30.xy : r30.zx;
    r30.x = 1;
    r10.w = r19.w;
    r31.xy = r14.zw;
    r12.w = 1;
    while (true) {
      r16.w = cmp((int)r12.w >= (int)r9.w);
      if (r16.w != 0) break;
      r16.w = (int)r6.w + (int)r12.w;
      r16.w = (int)r16.w * 6;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r13.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r17.w);
      r17.w = r31.x * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r13.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r13.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r13.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r13.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r18.w);
      r17.w = r18.w * r17.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r13.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r18.w);
      r31.x = r17.w * r16.w;
      r18.w = (uint)r10.w >> 2;
      if (1 == 0) r20.z = 0; else if (1+2 < 32) {       r20.z = (uint)r10.w << (32-(1 + 2)); r20.z = (uint)r20.z >> (32-1);      } else r20.z = (uint)r10.w >> 2;
      r20.w = (int)r18.w & 2;
      r21.w = max(r31.y, r31.x);
      r16.w = -r17.w * r16.w + 1;
      r16.w = r31.y * r16.w;
      r30.y = r20.w ? r16.w : r21.w;
      r31.xy = r20.zz ? r31.xy : r30.xy;
      r12.w = (int)r12.w + 1;
      r10.w = r18.w;
    }
    r31.y = saturate(r31.y);
    r30.w = r31.y * r20.x;
    r6.w = cmp(0 < r30.w);
    if (r6.w != 0) {
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r6.w, cb2[52].x, l(880), u2.xxxx
      r6.w = samplerLinear[]..swiz;
        r6.w = (int)r6.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r6.w = r30.w * r20.y;
      r9.w = dot(r15.xyz, r21.xyz);
      r10.w = dot(r13.yzw, r21.xyz);
      r10.w = r10.w + -r22.w;
      r12.w = cmp(r10.w >= 0);
      r10.w = max(abs(r10.w), r3.z);
      r10.w = r12.w ? r10.w : -r10.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r10.w / r9.w;
      r9.w = min(131072, abs(r9.w));
      r10.w = dot(r15.xyz, r22.xyz);
      r12.w = dot(r13.yzw, r22.xyz);
      r12.w = r12.w + -r23.w;
      r14.z = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r3.z);
      r12.w = r14.z ? r12.w : -r12.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r12.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r10.w = dot(r15.xyz, r23.xyz);
      r12.w = dot(r13.yzw, r23.xyz);
      r12.w = r12.w + -r24.w;
      r14.z = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r3.z);
      r12.w = r14.z ? r12.w : -r12.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r12.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r10.w = dot(r15.xyz, r24.xyz);
      r12.w = dot(r13.yzw, r24.xyz);
      r12.w = r12.w + -r25.w;
      r14.z = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r3.z);
      r12.w = r14.z ? r12.w : -r12.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r12.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r10.w = dot(r15.xyz, r25.xyz);
      r12.w = dot(r13.yzw, r25.xyz);
      r12.w = r12.w + -r26.w;
      r14.z = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r3.z);
      r12.w = r14.z ? r12.w : -r12.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r12.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r10.w = dot(r15.xyz, r26.xyz);
      r12.w = dot(r13.yzw, r26.xyz);
      r12.w = r12.w + -r14.y;
      r14.y = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r3.z);
      r12.w = r14.y ? r12.w : -r12.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r12.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r14.yzw = r19.xyz + r13.yzw;
      r14.yzw = r15.xyz * r9.www + r14.yzw;
      r10.w = dot(r14.yzw, r14.yzw);
      r10.w = sqrt(r10.w);
      r9.w = r9.w / r10.w;
      r9.w = r9.w + r9.w;
      r9.w = sqrt(r9.w);
      r9.w = r2.w * 5 + r9.w;
      r9.w = -0.844799995 + r9.w;
      r19.x = dot(r14.yzw, r29.xyz);
      r19.y = dot(r14.yzw, r16.xyz);
      r19.z = dot(r14.yzw, r27.xyz);
      if (9 == 0) r8.w = 0; else if (9+16 < 32) {       r8.w = (uint)r8.w << (32-(9 + 16)); r8.w = (uint)r8.w >> (32-9);      } else r8.w = (uint)r8.w >> 16;
      r19.w = (uint)r8.w;
      r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r9.w).xyz;
      r20.xyz = (int3)r14.yzw & int3(-2147483648,-2147483648,-2147483648);
      r20.xyz = cmp((int3)r20.xyz == int3(2139095040,2139095040,2139095040));
      r8.w = (int)r20.y | (int)r20.x;
      r8.w = (int)r20.z | (int)r8.w;
      r14.yzw = r8.www ? float3(1,1,0) : r14.yzw;
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
      r18.xyz = r18.xyz * r6.www;
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
      r8.w = (int)r17.y | (int)r17.x;
      r8.w = (int)r17.z | (int)r8.w;
      r16.xyz = r8.www ? float3(1,1,0) : r16.xyz;
      r13.yzw = r16.xyz * r13.yzw;
      r8.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r9.w = r8.w * r3.w;
      r13.yzw = r14.yzw * r6.www;
      r6.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r6.w = r3.w * r8.w + r6.w;
      r6.w = r9.w / r6.w;
      r30.xyz = r13.yzw * r6.www;
      r6.w = 257;
    } else {
      r30.xyzw = float4(0,0,0,0);
      r6.w = 1;
    }
    r8.w = -1;
  } else {
    r30.xyzw = float4(0,0,0,0);
    r6.w = 0;
  }
  r7.w = (int)r7.w & (int)r8.w;
  if (r7.w == 0) {
    r7.w = numRefProbes + -numOverrideProbes;
    r8.w = (uint)renderTargetSize.x;
    r8.w = (int)r8.w + 7;
    r8.w = (uint)r8.w >> 3;
    r8.w = mad((int)r0.z, (int)r8.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r8.w = (((uint)r8.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r9.w = (int)r7.w & -32;
    r10.w = (int)r7.w + (int)-r9.w;
    r12.w = numRefProbes & -32;
    r13.y = (int)-r12.w + numRefProbes;
    r16.x = 16;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.xz = float2(1,1);
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xyz = float3(0,0,0);
    r22.w = r30.x;
    r23.xyz = r30.yzw;
    r23.w = r6.w;
    r13.z = r9.w;
    while (true) {
      r13.w = cmp((uint)r13.z >= numRefProbes);
      if (r13.w != 0) break;
      r13.w = (uint)r13.z >> 5;
      r13.w = (int)r8.w + (int)r13.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t26.xxxx
    r13.w = samplerLinear[]..swiz;
      r14.y = cmp((int)r9.w == (int)r13.z);
      bitmask.z = ((~(-1 << r10.w)) << 0) & 0xffffffff;  r14.z = (((uint)0 << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
      r13.w = r14.y ? r14.z : r13.w;
      r14.y = cmp((int)r12.w == (int)r13.z);
      if (r13.y == 0) r14.z = 0; else if (r13.y+0 < 32) {       r14.z = (uint)r13.w << (32-(r13.y + 0)); r14.z = (uint)r14.z >> (32-r13.y);      } else r14.z = (uint)r13.w >> 0;
      r13.w = r14.y ? r14.z : r13.w;
      r24.xyzw = r22.xyzw;
      r25.xyzw = r23.xyzw;
      r14.y = r13.w;
      while (true) {
        if (r14.y == 0) break;
        r14.z = firstbitlow((uint)r14.y);
        r14.w = 1 << (int)r14.z;
        r14.w = ~(int)r14.w;
        r14.y = (int)r14.w & (int)r14.y;
        r14.z = (int)r13.z + (int)r14.z;
        r14.z = (int)r14.z * 14;
        r14.w = (int)r25.w & 255;
        r17.w = cmp((uint)r14.w < 32);
        r17.w = r2.z ? r17.w : 0;
        if (r17.w != 0) {
          r14.w = mad((int)r14.w, 20, 880);
          r16.yzw = refProbeConstantsCB[r14.z].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r14.w = u2.xyzw;
        }
        r26.w = (int)r25.w + 1;
        r16.yzw = -refProbeConstantsCB[r14.z].data[0].xyz + r5.xyz;
        r14.w = 0x0000ffff & (int)refProbeConstantsCB[r14.z].data[7].z;
        if (6 == 0) r17.w = 0; else if (6+25 < 32) {         r17.w = (uint)refProbeConstantsCB[r14.z].data[7].z << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);        } else r17.w = (uint)refProbeConstantsCB[r14.z].data[7].z >> 25;
        r18.w = (int)r14.w * 6;
        r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r16.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r20.w);
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r16.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r16.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r16.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r16.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r16.yzw);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r21.w);
        r17.x = r20.w * r18.w;
        r18.w = 1 & (int)refProbeConstantsCB[r14.z].data[6].x;
        r27.xy = r18.ww ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r14.z].data[6].x;
        r28.xy = r27.xy;
        r18.w = 1;
        while (true) {
          r20.w = cmp((int)r18.w >= (int)r17.w);
          if (r20.w != 0) break;
          r20.w = (int)r14.w + (int)r18.w;
          r20.w = (int)r20.w * 6;
          r21.w = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r16.yzw);
          r21.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r21.w);
          r21.w = r28.x * r21.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r20.w].data[1].xyz, r16.yzw);
          r27.z = saturate(refProbeAttenuationConstantsCB[r20.w].data[1].w + r27.z);
          r21.w = r27.z * r21.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r20.w].data[2].xyz, r16.yzw);
          r27.z = saturate(refProbeAttenuationConstantsCB[r20.w].data[2].w + r27.z);
          r21.w = r27.z * r21.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r20.w].data[3].xyz, r16.yzw);
          r27.z = saturate(refProbeAttenuationConstantsCB[r20.w].data[3].w + r27.z);
          r21.w = r27.z * r21.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r20.w].data[4].xyz, r16.yzw);
          r27.z = saturate(refProbeAttenuationConstantsCB[r20.w].data[4].w + r27.z);
          r21.w = r27.z * r21.w;
          r27.z = dot(refProbeAttenuationConstantsCB[r20.w].data[5].xyz, r16.yzw);
          r20.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[5].w + r27.z);
          r28.x = r21.w * r20.w;
          r27.z = (uint)r17.x >> 2;
          if (1 == 0) r27.w = 0; else if (1+2 < 32) {           r27.w = (uint)r17.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);          } else r27.w = (uint)r17.x >> 2;
          r28.z = (int)r27.z & 2;
          r28.w = max(r28.y, r28.x);
          r20.w = -r21.w * r20.w + 1;
          r20.w = r28.y * r20.w;
          r19.y = r28.z ? r20.w : r28.w;
          r28.xy = r27.ww ? r28.xy : r19.xy;
          r18.w = (int)r18.w + 1;
          r17.x = r27.z;
        }
        r28.y = saturate(r28.y);
        r14.w = refProbeConstantsCB[r14.z].data[6].y * r28.y;
        r17.x = cmp(0 < r14.w);
        if (r17.x != 0) {
          r17.x = (int)r26.w & 255;
          r17.w = (int)r17.x + -1;
          r17.w = cmp((uint)r17.w < 32);
          r17.w = r2.z ? r17.w : 0;
          if (r17.w != 0) {
            r17.xw = mad((int2)r17.xx, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.w, cb2[52].x, r17.x, u2.xxxx
          r18.w = samplerLinear[]..swiz;
            r18.w = (int)r18.w | 32;
            GBufferDiffuseColor[viewID].r17.x = u2.x;
            GBufferDiffuseColor[viewID].r17.w = u2.x;
          }
          r25.w = (int)r25.w + 257;
          r25.z = r28.y * refProbeConstantsCB[r14.z].data[6].y + r25.z;
          r14.w = refProbeConstantsCB[r14.z].data[7].y * r14.w;
          r27.x = refProbeConstantsCB[r14.z].data[7].w;
          r27.yz = refProbeConstantsCB[r14.z].data[8].xy;
          r17.x = dot(r15.xyz, r27.xyz);
          r17.w = dot(r16.yzw, r27.xyz);
          r17.w = -refProbeConstantsCB[r14.z].data[8].z + r17.w;
          r18.w = cmp(r17.w >= 0);
          r17.w = max(abs(r17.w), r3.z);
          r17.w = r18.w ? r17.w : -r17.w;
          r17.x = max(1.00000001e-07, -r17.x);
          r17.x = r17.w / r17.x;
          r17.x = min(131072, abs(r17.x));
          r27.x = refProbeConstantsCB[r14.z].data[8].w;
          r27.yz = refProbeConstantsCB[r14.z].data[9].xy;
          r17.w = dot(r15.xyz, r27.xyz);
          r18.w = dot(r16.yzw, r27.xyz);
          r18.w = -refProbeConstantsCB[r14.z].data[9].z + r18.w;
          r19.y = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r3.z);
          r18.w = r19.y ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r17.x = min(r17.x, abs(r17.w));
          r27.x = refProbeConstantsCB[r14.z].data[9].w;
          r27.yz = refProbeConstantsCB[r14.z].data[10].xy;
          r17.w = dot(r15.xyz, r27.xyz);
          r18.w = dot(r16.yzw, r27.xyz);
          r18.w = -refProbeConstantsCB[r14.z].data[10].z + r18.w;
          r19.y = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r3.z);
          r18.w = r19.y ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r17.x = min(r17.x, abs(r17.w));
          r27.x = refProbeConstantsCB[r14.z].data[10].w;
          r27.yz = refProbeConstantsCB[r14.z].data[11].xy;
          r17.w = dot(r15.xyz, r27.xyz);
          r18.w = dot(r16.yzw, r27.xyz);
          r18.w = -refProbeConstantsCB[r14.z].data[11].z + r18.w;
          r19.y = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r3.z);
          r18.w = r19.y ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r17.x = min(r17.x, abs(r17.w));
          r27.x = refProbeConstantsCB[r14.z].data[11].w;
          r27.yz = refProbeConstantsCB[r14.z].data[12].xy;
          r17.w = dot(r15.xyz, r27.xyz);
          r18.w = dot(r16.yzw, r27.xyz);
          r18.w = -refProbeConstantsCB[r14.z].data[12].z + r18.w;
          r19.y = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r3.z);
          r18.w = r19.y ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r17.x = min(r17.x, abs(r17.w));
          r27.x = refProbeConstantsCB[r14.z].data[12].w;
          r27.yz = refProbeConstantsCB[r14.z].data[13].xy;
          r17.w = dot(r15.xyz, r27.xyz);
          r18.w = dot(r16.yzw, r27.xyz);
          r18.w = -refProbeConstantsCB[r14.z].data[13].z + r18.w;
          r19.y = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r3.z);
          r18.w = r19.y ? r18.w : -r18.w;
          r17.w = max(1.00000001e-07, -r17.w);
          r17.w = r18.w / r17.w;
          r17.x = min(r17.x, abs(r17.w));
          r27.x = refProbeConstantsCB[r14.z].data[3].w + r16.y;
          r27.yz = refProbeConstantsCB[r14.z].data[4].xy + r16.zw;
          r27.xyz = r15.xyz * r17.xxx + r27.xyz;
          r17.w = dot(r27.xyz, r27.xyz);
          r17.w = sqrt(r17.w);
          r17.x = r17.x / r17.w;
          r17.x = r17.x + r17.x;
          r17.x = sqrt(r17.x);
          r17.x = r2.w * 5 + r17.x;
          r17.x = -0.844799995 + r17.x;
          r29.x = refProbeConstantsCB[r14.z].data[0].w;
          r29.y = refProbeConstantsCB[r14.z].data[1].z;
          r29.z = refProbeConstantsCB[r14.z].data[2].y;
          r31.x = dot(r27.xyz, r29.xyz);
          r32.xy = refProbeConstantsCB[r14.z].data[1].xw;
          r32.z = refProbeConstantsCB[r14.z].data[2].z;
          r31.y = dot(r27.xyz, r32.xyz);
          r33.x = refProbeConstantsCB[r14.z].data[1].y;
          r33.yz = refProbeConstantsCB[r14.z].data[2].xw;
          r31.z = dot(r27.xyz, r33.xyz);
          if (9 == 0) r17.w = 0; else if (9+16 < 32) {           r17.w = (uint)refProbeConstantsCB[r14.z].data[7].z << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);          } else r17.w = (uint)refProbeConstantsCB[r14.z].data[7].z >> 16;
          r31.w = (uint)r17.w;
          r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r17.x).xyz;
          r28.xzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
          r28.xzw = cmp((int3)r28.xzw == int3(2139095040,2139095040,2139095040));
          r17.x = (int)r28.z | (int)r28.x;
          r17.x = (int)r28.w | (int)r17.x;
          r27.xyz = r17.xxx ? float3(1,1,0) : r27.xyz;
          r34.x = dot(r16.yzw, r29.xyz);
          r34.y = dot(r16.yzw, r32.xyz);
          r34.z = dot(r16.yzw, r33.xyz);
          r16.yzw = saturate(r34.xyz * refProbeConstantsCB[r14.z].data[3].xyz + float3(0.5,0.5,0.5));
          r34.xy = refProbeConstantsCB[r14.z].data[4].zw * r16.yz;
          r34.z = refProbeConstantsCB[r14.z].data[5].x * r16.w;
          r16.yzw = refProbeConstantsCB[r14.z].data[5].yzw + r34.xyz;
          r31.x = dot(r11.xyz, r29.xyz);
          r31.y = dot(r11.xyz, r32.xyz);
          r31.z = dot(r11.xyz, r33.xyz);
          r28.xzw = cmp(float3(0,0,0) < r31.xyz);
          r18.z = r28.x ? 0 : 0.5;
          r29.xyz = r18.xyz + r16.yzw;
          r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
          r32.xyz = r31.xyz * r31.xyz;
          r32.xyz = r32.xyz * r14.www;
          r20.z = r28.z ? 0 : 0.5;
          r33.xyz = r20.xyz + r16.yzw;
          r33.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r33.xyz, 0).xyz;
          r33.xyz = r33.xyz * r32.yyy;
          r29.xyz = r29.xyz * r32.xxx + r33.xyz;
          r21.z = r28.w ? 0 : 0.5;
          r16.yzw = r21.xyz + r16.yzw;
          r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
          r16.yzw = r16.yzw * r32.zzz + r29.xyz;
          r28.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
          r29.xyz = (int3)r28.xzw & int3(-2147483648,-2147483648,-2147483648);
          r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
          r14.z = (int)r29.y | (int)r29.x;
          r14.z = (int)r29.z | (int)r14.z;
          r28.xzw = r14.zzz ? float3(1,1,0) : r28.xzw;
          r29.xyz = r28.xzw * r16.yzw;
          r14.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r24.xyz = r16.yzw * r28.xzw + r24.xyz;
          r16.y = r14.z * r3.w;
          r27.xyz = r27.xyz * r14.www;
          r14.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r14.z = r3.w * r14.z + r14.w;
          r14.z = r16.y / r14.z;
          r29.x = r24.w;
          r29.yz = r25.xy;
          r16.yzw = r27.xyz * r14.zzz + r29.xyz;
          r24.w = r16.y;
          r25.xy = r16.zw;
        } else {
          r26.xyz = r25.xyz;
          r25.xyzw = r26.xyzw;
        }
      }
      r22.xyzw = r24.xyzw;
      r23.xyzw = r25.xyzw;
      r13.z = (int)r13.z + 32;
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
    r12.w = 0;
    while (true) {
      r17.w = cmp((uint)r12.w >= (uint)r7.w);
      if (r17.w != 0) break;
      r17.w = (uint)r12.w >> 5;
      r17.w = (int)r8.w + (int)r17.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t26.xxxx
    r17.w = samplerLinear[]..swiz;
      r18.w = cmp((int)r9.w == (int)r12.w);
      if (r10.w == 0) r19.x = 0; else if (r10.w+0 < 32) {       r19.x = (uint)r17.w << (32-(r10.w + 0)); r19.x = (uint)r19.x >> (32-r10.w);      } else r19.x = (uint)r17.w >> 0;
      r17.w = r18.w ? r19.x : r17.w;
      r25.xyz = r13.yzw;
      r26.xyz = r24.xyz;
      r27.xyz = r14.ywz;
      r18.w = r17.w;
      while (true) {
        if (r18.w == 0) break;
        r19.x = firstbitlow((uint)r18.w);
        r19.y = 1 << (int)r19.x;
        r19.y = ~(int)r19.y;
        r18.w = (int)r18.w & (int)r19.y;
        r19.x = (int)r12.w + (int)r19.x;
        r19.x = (int)r19.x * 14;
        r19.y = (int)r27.z & 255;
        r20.w = cmp((uint)r19.y < 32);
        r20.w = r2.z ? r20.w : 0;
        if (r20.w != 0) {
          r19.y = mad((int)r19.y, 20, 880);
          r16.yzw = refProbeConstantsCB[r19.x].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r19.y = u2.xyzw;
        }
        r28.y = (int)r27.z + 1;
        r16.yzw = -refProbeConstantsCB[r19.x].data[0].xyz + r5.xyz;
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
        r28.zw = r21.ww ? r17.xy : r17.zx;
        r17.x = refProbeConstantsCB[r19.x].data[6].x;
        r29.xy = r28.zw;
        r21.w = 1;
        while (true) {
          r24.w = cmp((int)r21.w >= (int)r20.w);
          if (r24.w != 0) break;
          r24.w = (int)r19.y + (int)r21.w;
          r24.w = (int)r24.w * 6;
          r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[0].xyz, r16.yzw);
          r25.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[0].w + r25.w);
          r25.w = r29.x * r25.w;
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
          r29.x = r25.w * r24.w;
          r26.w = (uint)r17.x >> 2;
          if (1 == 0) r27.w = 0; else if (1+2 < 32) {           r27.w = (uint)r17.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);          } else r27.w = (uint)r17.x >> 2;
          r29.z = (int)r26.w & 2;
          r29.w = max(r29.y, r29.x);
          r24.w = -r25.w * r24.w + 1;
          r24.w = r29.y * r24.w;
          r19.w = r29.z ? r24.w : r29.w;
          r29.xy = r27.ww ? r29.xy : r19.zw;
          r21.w = (int)r21.w + 1;
          r17.x = r26.w;
        }
        r17.x = saturate(r29.y + -r27.y);
        r19.y = refProbeConstantsCB[r19.x].data[6].y * r17.x;
        r19.w = cmp(0 < r19.y);
        if (r19.w != 0) {
          r19.w = (int)r28.y & 255;
          r20.w = (int)r19.w + -1;
          r20.w = cmp((uint)r20.w < 32);
          r20.w = r2.z ? r20.w : 0;
          if (r20.w != 0) {
            r28.zw = mad((int2)r19.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.w, cb2[52].x, r28.z, u2.xxxx
          r19.w = samplerLinear[]..swiz;
            r19.w = (int)r19.w | 32;
            GBufferDiffuseColor[viewID].r28.z = u2.x;
            GBufferDiffuseColor[viewID].r28.w = u2.x;
          }
          r27.z = (int)r27.z + 257;
          r27.x = r17.x * refProbeConstantsCB[r19.x].data[6].y + r27.x;
          r17.x = refProbeConstantsCB[r19.x].data[7].y * r19.y;
          r31.x = refProbeConstantsCB[r19.x].data[7].w;
          r31.yz = refProbeConstantsCB[r19.x].data[8].xy;
          r19.y = dot(r15.xyz, r31.xyz);
          r19.w = dot(r16.yzw, r31.xyz);
          r19.w = -refProbeConstantsCB[r19.x].data[8].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r3.z);
          r19.w = r20.w ? r19.w : -r19.w;
          r19.y = max(1.00000001e-07, -r19.y);
          r19.y = r19.w / r19.y;
          r19.y = min(131072, abs(r19.y));
          r31.x = refProbeConstantsCB[r19.x].data[8].w;
          r31.yz = refProbeConstantsCB[r19.x].data[9].xy;
          r19.w = dot(r15.xyz, r31.xyz);
          r20.w = dot(r16.yzw, r31.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[9].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r31.x = refProbeConstantsCB[r19.x].data[9].w;
          r31.yz = refProbeConstantsCB[r19.x].data[10].xy;
          r19.w = dot(r15.xyz, r31.xyz);
          r20.w = dot(r16.yzw, r31.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[10].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r31.x = refProbeConstantsCB[r19.x].data[10].w;
          r31.yz = refProbeConstantsCB[r19.x].data[11].xy;
          r19.w = dot(r15.xyz, r31.xyz);
          r20.w = dot(r16.yzw, r31.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[11].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r31.x = refProbeConstantsCB[r19.x].data[11].w;
          r31.yz = refProbeConstantsCB[r19.x].data[12].xy;
          r19.w = dot(r15.xyz, r31.xyz);
          r20.w = dot(r16.yzw, r31.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[12].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r31.x = refProbeConstantsCB[r19.x].data[12].w;
          r31.yz = refProbeConstantsCB[r19.x].data[13].xy;
          r19.w = dot(r15.xyz, r31.xyz);
          r20.w = dot(r16.yzw, r31.xyz);
          r20.w = -refProbeConstantsCB[r19.x].data[13].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r3.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.y = min(r19.y, abs(r19.w));
          r31.x = refProbeConstantsCB[r19.x].data[3].w + r16.y;
          r31.yz = refProbeConstantsCB[r19.x].data[4].xy + r16.zw;
          r29.xzw = r15.xyz * r19.yyy + r31.xyz;
          r19.w = dot(r29.xzw, r29.xzw);
          r19.w = sqrt(r19.w);
          r19.y = r19.y / r19.w;
          r19.y = r19.y + r19.y;
          r19.y = sqrt(r19.y);
          r19.y = r2.w * 5 + r19.y;
          r19.y = -0.844799995 + r19.y;
          r31.x = refProbeConstantsCB[r19.x].data[0].w;
          r31.y = refProbeConstantsCB[r19.x].data[1].z;
          r31.z = refProbeConstantsCB[r19.x].data[2].y;
          r32.x = dot(r29.xzw, r31.xyz);
          r33.xy = refProbeConstantsCB[r19.x].data[1].xw;
          r33.z = refProbeConstantsCB[r19.x].data[2].z;
          r32.y = dot(r29.xzw, r33.xyz);
          r34.x = refProbeConstantsCB[r19.x].data[1].y;
          r34.yz = refProbeConstantsCB[r19.x].data[2].xw;
          r32.z = dot(r29.xzw, r34.xyz);
          if (9 == 0) r19.w = 0; else if (9+16 < 32) {           r19.w = (uint)refProbeConstantsCB[r19.x].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);          } else r19.w = (uint)refProbeConstantsCB[r19.x].data[7].z >> 16;
          r32.w = (uint)r19.w;
          r29.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r19.y).xyz;
          r35.xyz = (int3)r29.xzw & int3(-2147483648,-2147483648,-2147483648);
          r35.xyz = cmp((int3)r35.xyz == int3(2139095040,2139095040,2139095040));
          r19.y = (int)r35.y | (int)r35.x;
          r19.y = (int)r35.z | (int)r19.y;
          r29.xzw = r19.yyy ? float3(1,1,0) : r29.xzw;
          r35.x = dot(r16.yzw, r31.xyz);
          r35.y = dot(r16.yzw, r33.xyz);
          r35.z = dot(r16.yzw, r34.xyz);
          r16.yzw = saturate(r35.xyz * refProbeConstantsCB[r19.x].data[3].xyz + float3(0.5,0.5,0.5));
          r35.xy = refProbeConstantsCB[r19.x].data[4].zw * r16.yz;
          r35.z = refProbeConstantsCB[r19.x].data[5].x * r16.w;
          r16.yzw = refProbeConstantsCB[r19.x].data[5].yzw + r35.xyz;
          r32.x = dot(r11.xyz, r31.xyz);
          r32.y = dot(r11.xyz, r33.xyz);
          r32.z = dot(r11.xyz, r34.xyz);
          r19.xyw = cmp(float3(0,0,0) < r32.xyz);
          r18.z = r19.x ? 0 : 0.5;
          r31.xyz = r18.xyz + r16.yzw;
          r31.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r31.xyz, 0).xyz;
          r33.xyz = r32.xyz * r32.xyz;
          r33.xyz = r33.xyz * r17.xxx;
          r20.z = r19.y ? 0 : 0.5;
          r34.xyz = r20.xyz + r16.yzw;
          r34.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r34.xyz, 0).xyz;
          r34.xyz = r34.xyz * r33.yyy;
          r31.xyz = r31.xyz * r33.xxx + r34.xyz;
          r21.z = r19.w ? 0 : 0.5;
          r16.yzw = r21.xyz + r16.yzw;
          r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
          r16.yzw = r16.yzw * r33.zzz + r31.xyz;
          r19.xyw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
          r31.xyz = (int3)r19.xyw & int3(-2147483648,-2147483648,-2147483648);
          r31.xyz = cmp((int3)r31.xyz == int3(2139095040,2139095040,2139095040));
          r18.z = (int)r31.y | (int)r31.x;
          r18.z = (int)r31.z | (int)r18.z;
          r19.xyw = r18.zzz ? float3(1,1,0) : r19.xyw;
          r31.xyz = r19.xyw * r16.yzw;
          r18.z = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r25.xyz = r16.yzw * r19.xyw + r25.xyz;
          r16.y = r18.z * r3.w;
          r19.xyw = r29.xzw * r17.xxx;
          r16.z = dot(r19.xyw, float3(0.212599993,0.715200007,0.0722000003));
          r16.z = r3.w * r18.z + r16.z;
          r16.y = r16.y / r16.z;
          r26.xyz = r19.xyw * r16.yyy + r26.xyz;
        } else {
          r28.x = r27.x;
          r27.xz = r28.xy;
        }
      }
      r13.yzw = r25.xyz;
      r24.xyz = r26.xyz;
      r14.yz = r27.xz;
      r12.w = (int)r12.w + 32;
    }
    r2.w = cmp(r23.z >= 1);
    r3.z = (int)r23.w & 0x0000ff00;
    bitmask.z = ((~(-1 << 8)) << 0) & 0xffffffff;  r3.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r3.z & ~bitmask.z);
    r6.w = r2.w ? r3.z : r14.z;
    r2.w = max(1, r14.y);
    r2.w = rcp(r2.w);
    r14.y = saturate(r14.y);
    r16.xyz = r13.yzw * r2.www;
    r30.xyz = r24.xyz * r2.www;
    r3.z = cmp(r14.y < 0.99000001);
    if (r3.z != 0) {
      r6.w = (int)r6.w + 256;
      r3.z = 1 + -r14.y;
      r3.w = sunConstants.globalProbeExposure * r3.z;
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
      r19.xyz = r19.xyz * r3.www;
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
      r3.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r16.xyz = r13.yzw * r2.www + r14.yzw;
      r15.w = 0;
      r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r3.y).xyz;
      r2.w = sunConstants.globalProbeExposure * r3.z + -r3.w;
      r2.w = r2.y * r2.w + r3.w;
      r30.xyz = r13.yzw * r2.www + r30.xyz;
    }
  } else {
    r16.xyz = float3(0,0,0);
  }
  r2.w = r2.x + r4.z;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r4.z;
  r2.w = saturate(-1 + r2.w);
  r3.yzw = r16.xyz * r4.zzz;
  r13.yzw = r0.www ? r3.yzw : 0;
  r14.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r14.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r14.yz, 0).xy;
  r17.xyz = r30.xyz * r2.www;
  r18.xyz = r17.xyz * r14.yyy;
  r14.yzw = r17.xyz * r14.zzz;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r7.w = r2.x * r2.y + r2.w;
  r2.yw = r7.ww * r2.yw;
  r0.x = (uint)r0.x >> 24;
  r0.x = (int)r0.x * 15;
  if (3 == 0) r7.w = 0; else if (3+24 < 32) {   r7.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 24)); r7.w = (uint)r7.w >> (32-3);  } else r7.w = (uint)lightConstantsCB[r0.x].data[1].w >> 24;
  switch (r7.w) {
    case 4 :    if (r2.z != 0) {
      r17.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r17.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r8.w = cmp(0 < lightConstantsCB[r0.x].data[6].y);
    r17.xy = lightConstantsCB[r0.x].data[5].zw;
    r17.z = lightConstantsCB[r0.x].data[6].x;
    r19.xyz = -r17.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.x].data[0].xyz;
    r20.xyz = r19.xyz + -r5.xyz;
    r9.w = dot(r17.xyz, r20.xyz);
    r10.w = saturate(-r9.w / lightConstantsCB[r0.x].data[6].y);
    r21.xyz = r10.www * r17.xyz + r19.xyz;
    r21.xyz = r8.www ? r21.xyz : lightConstantsCB[r0.x].data[0].xyz;
    r21.xyz = r21.xyz + -r5.xyz;
    r11.w = dot(r21.xyz, r21.xyz);
    r12.w = rsqrt(r11.w);
    r21.xyz = r21.xyz * r12.www;
    r12.w = dot(r11.xyz, r21.xyz);
    r15.w = saturate(r12.w);
    r15.w = r0.w ? abs(r12.w) : r15.w;
    r16.w = cmp(0 < r15.w);
    if (r16.w != 0) {
      r16.w = sqrt(r11.w);
      r17.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
      r11.w = r17.w / r11.w;
      r11.w = min(1, r11.w);
      r21.xy = saturate(r16.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
      r21.zw = r21.xy * r21.xy;
      r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
      r21.xy = r21.zw * r21.xy;
      r11.w = r21.x * r11.w;
      r11.w = r11.w * r21.y;
      r16.w = cmp(0 < r11.w);
      if (r16.w != 0) {
        if (3 == 0) r16.w = 0; else if (3+27 < 32) {         r16.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);        } else r16.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r2.z != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, l(112), u2.xxxx
        r17.w = samplerLinear[]..swiz;
          r17.w = (int)r17.w | 4;
          GBufferDiffuseColor[viewID].112 = u2.x;
          GBufferDiffuseColor[viewID].128 = u2.x;
        }
        r16.w = cmp((int)r16.w != 1);
        if (r16.w != 0) {
          r21.xy = (uint2)r1.yx;
          r16.w = dot(r21.xy, float2(0.0671105608,0.00583714992));
          r16.w = frac(r16.w);
          r16.w = 52.9829178 * r16.w;
          r16.w = frac(r16.w);
          r16.w = r16.w * 6.28318548 + gameTick.w;
          sincos(r16.w, r21.x, r22.x);
          r16.w = abs(r12.w) * -0.200000003 + 0.400000006;
          r17.w = cmp(r12.w < 0);
          r17.w = r0.w ? r17.w : 0;
          r16.w = r17.w ? -r16.w : r16.w;
          r21.yzw = r11.xyz * r16.www + r5.xyz;
          r21.yzw = -lightConstantsCB[r0.x].data[4].yzw + r21.yzw;
          r16.w = max(abs(r21.z), abs(r21.w));
          r16.w = max(abs(r21.y), r16.w);
          r16.w = lightConstantsCB[r0.x].data[5].x / r16.w;
          r16.w = lightConstantsCB[r0.x].data[5].y + r16.w;
          r17.w = dot(r21.yzw, r21.yzw);
          r17.w = rsqrt(r17.w);
          r16.w = max(6.10351563e-05, r16.w);
          r18.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
          r23.x = -r13.x;
          r24.w = (uint)r18.w;
          r23.y = r14.x;
          r23.z = r13.x;
          r18.w = 0;
          r19.w = 0;
          while (true) {
            r20.w = cmp((int)r19.w >= 8);
            if (r20.w != 0) break;
            r22.y = dot(icb[r19.w+0].yx, r23.xy);
            r22.z = dot(icb[r19.w+0].yx, r23.yz);
            r25.yz = lightConstantsCB[r0.x].data[3].yy * r22.yz;
            r25.x = r25.y * r22.x;
            r25.w = r25.y * r21.x;
            r24.xyz = r21.yzw * r17.www + r25.xzw;
            r20.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyzw, r16.w).x;
            r18.w = r20.w * 0.125 + r18.w;
            r19.w = (int)r19.w + 1;
          }
        } else {
          r18.w = 1;
        }
        r11.w = r18.w * r11.w;
        r16.w = cmp(0 < r11.w);
        if (r16.w != 0) {
          r16.w = lightConstantsCB[r0.x].data[1].z * r1.z;
          r16.w = 0.25 * r16.w;
          r17.w = dot(r17.xyz, r15.xyz);
          r15.x = dot(r15.xyz, r20.xyz);
          r15.y = -r17.w * r17.w + lightConstantsCB[r0.x].data[6].y;
          r9.w = r17.w * r15.x + -r9.w;
          r9.w = saturate(r9.w / r15.y);
          r15.x = r15.y / lightConstantsCB[r0.x].data[6].y;
          r15.x = 10 * r15.x;
          r15.x = min(1, r15.x);
          r9.w = r9.w + -r10.w;
          r9.w = r15.x * r9.w + r10.w;
          r15.xyz = r9.www * r17.xyz + r19.xyz;
          r15.xyz = r8.www ? r15.xyz : lightConstantsCB[r0.x].data[0].xyz;
          r15.xyz = r15.xyz + -r5.xyz;
          r8.w = dot(r15.xyz, r15.xyz);
          r8.w = rsqrt(r8.w);
          r17.xyz = r15.xyz * r8.www;
          if (4 == 0) r9.w = 0; else if (4+16 < 32) {           r9.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r9.w = (uint)r9.w >> (32-4);          } else r9.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r10.w = cmp(0 < (uint)r9.w);
          r10.w = r10.w ? r3.x : 0;
          if (r10.w != 0) {
            r9.w = (int)r9.w + numLights;
            r9.w = mad((int)r9.w, 15, -15);
            r10.w = abs(r12.w) * -0.200000003 + 0.400000006;
            r17.w = cmp(r12.w < 0);
            r17.w = r0.w ? r17.w : 0;
            r10.w = r17.w ? -r10.w : r10.w;
            r19.xyz = r11.xyz * r10.www + r5.xyz;
            r20.xyz = lightConstantsCB[r9.w].data[6].yzw;
            r20.w = lightConstantsCB[r9.w].data[7].x;
            r19.w = 1;
            r10.w = dot(r20.xyzw, r19.xyzw);
            r20.xyz = lightConstantsCB[r9.w].data[7].yzw;
            r20.w = lightConstantsCB[r9.w].data[8].x;
            r17.w = dot(r20.xyzw, r19.xyzw);
            r18.w = cmp(r17.w < r10.w);
            if (r18.w == 0) {
              r20.xyz = lightConstantsCB[r9.w].data[4].yzw;
              r20.w = lightConstantsCB[r9.w].data[5].x;
              r20.x = dot(r20.xyzw, r19.xyzw);
              r21.xyz = lightConstantsCB[r9.w].data[5].yzw;
              r21.w = lightConstantsCB[r9.w].data[6].x;
              r20.y = dot(r21.xyzw, r19.xyzw);
              r19.xy = r20.xy / r17.ww;
              r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r20.x = lightConstantsCB[r9.w].data[9].w + r19.x;
              r20.y = lightConstantsCB[r9.w].data[10].x + r19.y;
              r19.xy = lightConstantsCB[r9.w].data[9].yz * r20.xy;
              r19.zw = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
              r20.xy = float2(1,1) + -r19.zw;
              r20.xy = cmp(r19.xy >= r20.xy);
              r19.zw = cmp(r19.zw >= r19.xy);
              r19.zw = (int2)r19.zw | (int2)r20.xy;
              r19.z = (int)r19.w | (int)r19.z;
              if (r19.z == 0) {
                r19.xy = saturate(r19.xy);
                r20.x = r19.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                r20.y = r19.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                r19.x = lightConstantsCB[r9.w].data[10].z * r17.w;
                r10.w = lightConstantsCB[r9.w].data[10].y * r17.w + r10.w;
                r10.w = r10.w / r19.x;
              }
            } else {
              r19.z = -1;
            }
            r17.w = (int)r18.w | (int)r19.z;
            if (r17.w == 0) {
              r10.w = max(6.10351563e-05, r10.w);
              r17.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r19.x = -r13.x;
                r21.z = (uint)r17.w;
                r19.y = r14.x;
                r19.z = r13.x;
                r18.w = 0;
                r19.w = 0;
                while (true) {
                  r20.w = cmp((int)r19.w >= 8);
                  if (r20.w != 0) break;
                  r22.x = dot(icb[r19.w+0].yx, r19.xy);
                  r22.y = dot(icb[r19.w+0].yx, r19.yz);
                  r21.xy = r22.xy * lightConstantsCB[r9.w].data[3].yy + r20.xy;
                  r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r10.w).x;
                  r18.w = r20.w * 0.125 + r18.w;
                  r19.w = (int)r19.w + 1;
                }
              } else {
                r20.z = (uint)r17.w;
                r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r10.w).x;
              }
              r9.w = r18.w * r18.w;
              r9.w = r9.w * r18.w;
            } else {
              r9.w = 1;
            }
            r11.w = r11.w * r9.w;
          } else {
            if (4 == 0) r9.w = 0; else if (4+20 < 32) {             r9.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r9.w = (uint)r9.w >> (32-4);            } else r9.w = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r10.w = cmp(0 < (uint)r9.w);
            r17.w = ~(int)r3.x;
            r10.w = r10.w ? r17.w : 0;
            if (r10.w != 0) {
              r9.w = (int)r9.w + numLights;
              r9.w = mad((int)r9.w, 15, -15);
              r10.w = abs(r12.w) * -0.200000003 + 0.400000006;
              r17.w = cmp(r12.w < 0);
              r17.w = r0.w ? r17.w : 0;
              r10.w = r17.w ? -r10.w : r10.w;
              r19.xyz = r11.xyz * r10.www + r5.xyz;
              r20.xyz = lightConstantsCB[r9.w].data[6].yzw;
              r20.w = lightConstantsCB[r9.w].data[7].x;
              r19.w = 1;
              r10.w = dot(r20.xyzw, r19.xyzw);
              r20.xyz = lightConstantsCB[r9.w].data[7].yzw;
              r20.w = lightConstantsCB[r9.w].data[8].x;
              r17.w = dot(r20.xyzw, r19.xyzw);
              r18.w = cmp(r17.w < r10.w);
              if (r18.w == 0) {
                r20.xyz = lightConstantsCB[r9.w].data[4].yzw;
                r20.w = lightConstantsCB[r9.w].data[5].x;
                r20.x = dot(r20.xyzw, r19.xyzw);
                r21.xyz = lightConstantsCB[r9.w].data[5].yzw;
                r21.w = lightConstantsCB[r9.w].data[6].x;
                r20.y = dot(r21.xyzw, r19.xyzw);
                r19.xy = r20.xy / r17.ww;
                r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.x = lightConstantsCB[r9.w].data[9].w + r19.x;
                r20.y = lightConstantsCB[r9.w].data[10].x + r19.y;
                r19.xy = lightConstantsCB[r9.w].data[9].yz * r20.xy;
                r19.zw = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
                r20.xy = float2(1,1) + -r19.zw;
                r20.xy = cmp(r19.xy >= r20.xy);
                r19.zw = cmp(r19.zw >= r19.xy);
                r19.zw = (int2)r19.zw | (int2)r20.xy;
                r19.z = (int)r19.w | (int)r19.z;
                if (r19.z == 0) {
                  r19.xy = saturate(r19.xy);
                  r20.x = r19.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                  r20.y = r19.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                  r19.x = lightConstantsCB[r9.w].data[10].z * r17.w;
                  r10.w = lightConstantsCB[r9.w].data[10].y * r17.w + r10.w;
                  r10.w = r10.w / r19.x;
                }
              } else {
                r19.z = -1;
              }
              r17.w = (int)r18.w | (int)r19.z;
              if (r17.w == 0) {
                r10.w = max(6.10351563e-05, r10.w);
                r17.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r19.x = -r13.x;
                  r21.z = (uint)r17.w;
                  r19.y = r14.x;
                  r19.z = r13.x;
                  r18.w = 0;
                  r19.w = 0;
                  while (true) {
                    r20.w = cmp((int)r19.w >= 8);
                    if (r20.w != 0) break;
                    r22.x = dot(icb[r19.w+0].yx, r19.xy);
                    r22.y = dot(icb[r19.w+0].yx, r19.yz);
                    r21.xy = r22.xy * lightConstantsCB[r9.w].data[3].yy + r20.xy;
                    r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r10.w).x;
                    r18.w = r20.w * 0.125 + r18.w;
                    r19.w = (int)r19.w + 1;
                  }
                } else {
                  r20.z = (uint)r17.w;
                  r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r10.w).x;
                }
                r9.w = r18.w * r18.w;
                r9.w = r9.w * r18.w;
              } else {
                r9.w = 1;
              }
              r11.w = r11.w * r9.w;
            }
          }
          r9.w = -r2.x * 0.5 + 1;
          r9.w = -r15.w * r9.w + 1;
          r9.w = r9.w * r9.w;
          r9.w = -r9.w * 0.620000005 + 0.620000005;
          r9.w = r9.w + -r15.w;
          r9.w = r1.w * r9.w + r15.w;
          r9.w = r9.w * r11.w;
          r19.x = lightConstantsCB[r0.x].data[0].w;
          r19.yz = lightConstantsCB[r0.x].data[1].xy;
          r20.xyz = r19.xyz * r9.www;
          r10.w = cmp(0 < r12.w);
          r20.xyz = r16.xyz * r4.zzz + r20.xyz;
          r12.w = saturate(dot(r11.xyz, r17.xyz));
          r15.xyz = r15.xyz * r8.www + r12.xyz;
          r8.w = dot(r15.xyz, r15.xyz);
          r8.w = rsqrt(r8.w);
          r15.xyz = r15.xyz * r8.www;
          r8.w = dot(r15.xyz, r12.xyz);
          r15.x = dot(r11.xyz, r15.xyz);
          r15.y = abs(r15.x) * r1.z + -abs(r15.x);
          r15.x = abs(r15.x) * r15.y + 1;
          r15.y = r12.w * r2.y + r2.w;
          r15.x = r15.x * r15.x;
          r15.x = r15.x * r15.y;
          r15.x = rcp(r15.x);
          r12.w = r12.w * r16.w;
          r12.w = r15.x * r12.w;
          r12.w = r12.w * r11.w;
          r15.xyz = r12.www * r19.xyz + r14.yzw;
          r8.w = saturate(1 + -r8.w);
          r15.w = r8.w * r8.w;
          r15.w = r15.w * r15.w;
          r8.w = r15.w * r8.w;
          r8.w = r12.w * r8.w;
          r17.xyz = r8.www * r19.xyz + r18.xyz;
          r19.xyz = r9.www * r19.xyz + r13.yzw;
          r19.xyz = r0.www ? r19.xyz : 0;
          r3.yzw = r10.www ? r20.xyz : r3.yzw;
          r13.yzw = r10.www ? r13.yzw : r19.xyz;
          r18.xyz = r10.www ? r17.xyz : r18.xyz;
          r14.yzw = r10.www ? r15.xyz : r14.yzw;
          if (r2.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, l(112), u2.xxxx
          r8.w = samplerLinear[]..swiz;
            r8.w = (int)r8.w | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r7.w = 0x00010101;
        } else {
          r7.w = 257;
        }
      } else {
        r7.w = 1;
      }
    } else {
      r7.w = 1;
    }
    break;
    case 2 :    if (r2.z != 0) {
      r15.yzw = lightConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r15.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r15.xy = lightConstantsCB[r0.x].data[3].zw + -r5.xy;
    r15.z = lightConstantsCB[r0.x].data[4].x + -r5.z;
    r8.w = dot(r15.xyz, r15.xyz);
    r8.w = rsqrt(r8.w);
    r17.xyz = r15.xyz * r8.www;
    r9.w = dot(r11.xyz, r17.xyz);
    r10.w = saturate(r9.w);
    r11.w = r0.w ? abs(r9.w) : r10.w;
    r12.w = cmp(0 < r11.w);
    if (r12.w != 0) {
      r17.xyz = lightConstantsCB[r0.x].data[7].yzw;
      r17.w = lightConstantsCB[r0.x].data[8].x;
      r5.w = 1;
      r12.w = dot(r17.xyzw, r5.xyzw);
      r15.w = cmp(r12.w < 1);
      if (r15.w != 0) {
        r19.xyz = float3(1,1,1);
        r15.w = 0;
      } else {
        r20.xyz = lightConstantsCB[r0.x].data[0].xyz + -r5.xyz;
        r16.w = lightConstantsCB[r0.x].data[3].x * lightConstantsCB[r0.x].data[3].x;
        r18.w = dot(r20.xyz, r20.xyz);
        r16.w = r16.w / r18.w;
        r16.w = min(1, r16.w);
        r20.xy = saturate(r12.ww * lightConstantsCB[r0.x].data[2].xz + lightConstantsCB[r0.x].data[2].yw);
        r20.zw = r20.xy * r20.xy;
        r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
        r20.xy = r20.zw * r20.xy;
        r16.w = r20.x * r16.w;
        r16.w = r16.w * r20.y;
        r20.xyz = lightConstantsCB[r0.x].data[4].yzw;
        r20.w = lightConstantsCB[r0.x].data[5].x;
        r20.x = dot(r20.xyzw, r5.xyzw);
        r21.xyz = lightConstantsCB[r0.x].data[5].yzw;
        r21.w = lightConstantsCB[r0.x].data[6].x;
        r20.y = dot(r21.xyzw, r5.xyzw);
        r20.xy = r20.xy / r12.ww;
        r5.w = cmp(lightConstantsCB[r0.x].data[10].w < 0.00048828125);
        if (r5.w != 0) {
          r21.xy = saturate(abs(r20.xy) * lightConstantsCB[r0.x].data[12].xy + lightConstantsCB[r0.x].data[12].zw);
          r21.zw = r21.xy * r21.xy;
          r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
          r21.xy = r21.zw * r21.xy;
          r5.w = r21.x * r21.y;
        } else {
          r21.xyzw = saturate(lightConstantsCB[r0.x].data[11].xyzw * abs(r20.yyxx));
          r21.xyzw = log2(r21.xyzw);
          r21.xyzw = lightConstantsCB[r0.x].data[12].zzzz * r21.xyzw;
          r21.xyzw = exp2(r21.xyzw);
          r21.xy = r21.xy + r21.zw;
          r21.xy = log2(r21.xy);
          r21.xy = lightConstantsCB[r0.x].data[12].ww * r21.xy;
          r21.xy = exp2(r21.xy);
          r12.w = lightConstantsCB[r0.x].data[12].x * r21.x;
          r18.w = lightConstantsCB[r0.x].data[12].y * r21.y + -1;
          r12.w = lightConstantsCB[r0.x].data[12].y * r21.y + -r12.w;
          r12.w = saturate(r18.w / r12.w);
          r18.w = r12.w * r12.w;
          r12.w = r12.w * -2 + 3;
          r5.w = r18.w * r12.w;
        }
        r15.w = r16.w * r5.w;
        r5.w = 255 & (int)lightConstantsCB[r0.x].data[14].w;
        if (r5.w != 0) {
          r20.z = 1;
          r12.w = dot(lightConstantsCB[r0.x].data[13].xyz, r20.xyz);
          r21.x = lightConstantsCB[r0.x].data[13].w;
          r21.yz = lightConstantsCB[r0.x].data[14].xy;
          r16.w = dot(r21.xyz, r20.xyz);
          r20.x = frac(r12.w);
          r20.y = frac(r16.w);
          r5.w = (int)r5.w + -1;
          r20.z = (uint)r5.w;
          r19.xyz = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        } else {
          r19.xyz = float3(1,1,1);
        }
      }
      r20.x = lightConstantsCB[r0.x].data[0].w;
      r20.yz = lightConstantsCB[r0.x].data[1].xy;
      r19.xyz = r20.xyz * r19.xyz;
      r5.w = cmp(0 < r15.w);
      if (r5.w != 0) {
        if (3 == 0) r5.w = 0; else if (3+27 < 32) {         r5.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(3 + 27)); r5.w = (uint)r5.w >> (32-3);        } else r5.w = (uint)lightConstantsCB[r0.x].data[1].w >> 27;
        if (r2.z != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r12.w, cb2[52].x, l(112), u2.xxxx
        r12.w = samplerLinear[]..swiz;
          r12.w = (int)r12.w | 4;
          GBufferDiffuseColor[viewID].112 = u2.x;
          GBufferDiffuseColor[viewID].128 = u2.x;
        }
        r5.w = cmp((int)r5.w != 1);
        if (r5.w != 0) {
          r5.w = abs(r9.w) * -0.200000003 + 0.400000006;
          r12.w = cmp(r9.w < 0);
          r12.w = r0.w ? r12.w : 0;
          r5.w = r12.w ? -r5.w : r5.w;
          r20.xyz = r11.xyz * r5.www + r5.xyz;
          r21.xyz = lightConstantsCB[r0.x].data[6].yzw;
          r21.w = lightConstantsCB[r0.x].data[7].x;
          r20.w = 1;
          r5.w = dot(r21.xyzw, r20.xyzw);
          r12.w = dot(r17.xyzw, r20.xyzw);
          r16.w = cmp(r12.w >= r5.w);
          if (r16.w != 0) {
            r17.xyz = lightConstantsCB[r0.x].data[4].yzw;
            r17.w = lightConstantsCB[r0.x].data[5].x;
            r17.x = dot(r17.xyzw, r20.xyzw);
            r21.xyz = lightConstantsCB[r0.x].data[5].yzw;
            r21.w = lightConstantsCB[r0.x].data[6].x;
            r17.y = dot(r21.xyzw, r20.xyzw);
            r17.xy = r17.xy / r12.ww;
            r17.xy = saturate(r17.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r20.x = r17.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
            r20.y = r17.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
            r5.w = r5.w / r12.w;
            r5.w = max(6.10351563e-05, r5.w);
            r12.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r17.x = -r13.x;
              r21.z = (uint)r12.w;
              r17.y = r14.x;
              r17.z = r13.x;
              r16.w = 0;
              r17.w = 0;
              while (true) {
                r18.w = cmp((int)r17.w >= 8);
                if (r18.w != 0) break;
                r22.x = dot(icb[r17.w+0].yx, r17.xy);
                r22.y = dot(icb[r17.w+0].yx, r17.yz);
                r21.xy = r22.xy * lightConstantsCB[r0.x].data[3].yy + r20.xy;
                r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r5.w).x;
                r16.w = r18.w * 0.125 + r16.w;
                r17.w = (int)r17.w + 1;
              }
            } else {
              r20.z = (uint)r12.w;
              r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r5.w).x;
            }
            r5.w = r16.w * r16.w;
            r5.w = r5.w * r16.w;
          } else {
            r5.w = 1;
          }
        } else {
          r5.w = 1;
        }
        r5.w = r15.w * r5.w;
        r12.w = cmp(0 < r5.w);
        if (r12.w != 0) {
          r12.w = lightConstantsCB[r0.x].data[1].z * r1.z;
          r12.w = r12.w * r10.w;
          if (4 == 0) r15.w = 0; else if (4+16 < 32) {           r15.w = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 16)); r15.w = (uint)r15.w >> (32-4);          } else r15.w = (uint)lightConstantsCB[r0.x].data[1].w >> 16;
          r16.w = cmp(0 < (uint)r15.w);
          r16.w = r16.w ? r3.x : 0;
          if (r16.w != 0) {
            r15.w = (int)r15.w + numLights;
            r15.w = mad((int)r15.w, 15, -15);
            r16.w = abs(r9.w) * -0.200000003 + 0.400000006;
            r17.x = cmp(r9.w < 0);
            r17.x = r0.w ? r17.x : 0;
            r16.w = r17.x ? -r16.w : r16.w;
            r17.xyz = r11.xyz * r16.www + r5.xyz;
            r20.xyz = lightConstantsCB[r15.w].data[6].yzw;
            r20.w = lightConstantsCB[r15.w].data[7].x;
            r17.w = 1;
            r16.w = dot(r20.xyzw, r17.xyzw);
            r20.xyz = lightConstantsCB[r15.w].data[7].yzw;
            r20.w = lightConstantsCB[r15.w].data[8].x;
            r18.w = dot(r20.xyzw, r17.xyzw);
            r19.w = cmp(r18.w < r16.w);
            if (r19.w == 0) {
              r20.xyz = lightConstantsCB[r15.w].data[4].yzw;
              r20.w = lightConstantsCB[r15.w].data[5].x;
              r20.x = dot(r20.xyzw, r17.xyzw);
              r21.xyz = lightConstantsCB[r15.w].data[5].yzw;
              r21.w = lightConstantsCB[r15.w].data[6].x;
              r20.y = dot(r21.xyzw, r17.xyzw);
              r17.xy = r20.xy / r18.ww;
              r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r20.x = lightConstantsCB[r15.w].data[9].w + r17.x;
              r20.y = lightConstantsCB[r15.w].data[10].x + r17.y;
              r17.xy = lightConstantsCB[r15.w].data[9].yz * r20.xy;
              r17.zw = lightConstantsCB[r15.w].data[3].yy / lightConstantsCB[r15.w].data[8].yw;
              r20.xy = float2(1,1) + -r17.zw;
              r20.xy = cmp(r17.xy >= r20.xy);
              r17.zw = cmp(r17.zw >= r17.xy);
              r17.zw = (int2)r17.zw | (int2)r20.xy;
              r17.z = (int)r17.w | (int)r17.z;
              if (r17.z == 0) {
                r17.xy = saturate(r17.xy);
                r20.x = r17.x * lightConstantsCB[r15.w].data[8].y + lightConstantsCB[r15.w].data[8].z;
                r20.y = r17.y * lightConstantsCB[r15.w].data[8].w + lightConstantsCB[r15.w].data[9].x;
                r17.x = lightConstantsCB[r15.w].data[10].z * r18.w;
                r16.w = lightConstantsCB[r15.w].data[10].y * r18.w + r16.w;
                r16.w = r16.w / r17.x;
              }
            } else {
              r17.z = -1;
            }
            r17.x = (int)r19.w | (int)r17.z;
            if (r17.x == 0) {
              r16.w = max(6.10351563e-05, r16.w);
              r17.x = 0x0000ffff & (int)lightConstantsCB[r15.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r21.x = -r13.x;
                r22.z = (uint)r17.x;
                r21.y = r14.x;
                r21.z = r13.x;
                r17.yz = float2(0,0);
                while (true) {
                  r17.w = cmp((int)r17.z >= 8);
                  if (r17.w != 0) break;
                  r23.x = dot(icb[r17.z+0].yx, r21.xy);
                  r23.y = dot(icb[r17.z+0].yx, r21.yz);
                  r22.xy = r23.xy * lightConstantsCB[r15.w].data[3].yy + r20.xy;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r16.w).x;
                  r17.y = r17.w * 0.125 + r17.y;
                  r17.z = (int)r17.z + 1;
                }
              } else {
                r20.z = (uint)r17.x;
                r17.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r16.w).x;
              }
              r15.w = r17.y * r17.y;
              r15.w = r15.w * r17.y;
            } else {
              r15.w = 1;
            }
            r5.w = r15.w * r5.w;
          } else {
            if (4 == 0) r0.x = 0; else if (4+20 < 32) {             r0.x = (uint)lightConstantsCB[r0.x].data[1].w << (32-(4 + 20)); r0.x = (uint)r0.x >> (32-4);            } else r0.x = (uint)lightConstantsCB[r0.x].data[1].w >> 20;
            r15.w = cmp(0 < (uint)r0.x);
            r3.x = ~(int)r3.x;
            r3.x = r15.w ? r3.x : 0;
            if (r3.x != 0) {
              r0.x = (int)r0.x + numLights;
              r0.x = mad((int)r0.x, 15, -15);
              r3.x = abs(r9.w) * -0.200000003 + 0.400000006;
              r15.w = cmp(r9.w < 0);
              r15.w = r0.w ? r15.w : 0;
              r3.x = r15.w ? -r3.x : r3.x;
              r17.xyz = r11.xyz * r3.xxx + r5.xyz;
              r20.xyz = lightConstantsCB[r0.x].data[6].yzw;
              r20.w = lightConstantsCB[r0.x].data[7].x;
              r17.w = 1;
              r3.x = dot(r20.xyzw, r17.xyzw);
              r20.xyz = lightConstantsCB[r0.x].data[7].yzw;
              r20.w = lightConstantsCB[r0.x].data[8].x;
              r15.w = dot(r20.xyzw, r17.xyzw);
              r16.w = cmp(r15.w < r3.x);
              if (r16.w == 0) {
                r20.xyz = lightConstantsCB[r0.x].data[4].yzw;
                r20.w = lightConstantsCB[r0.x].data[5].x;
                r20.x = dot(r20.xyzw, r17.xyzw);
                r21.xyz = lightConstantsCB[r0.x].data[5].yzw;
                r21.w = lightConstantsCB[r0.x].data[6].x;
                r20.y = dot(r21.xyzw, r17.xyzw);
                r17.xy = r20.xy / r15.ww;
                r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.x = lightConstantsCB[r0.x].data[9].w + r17.x;
                r20.y = lightConstantsCB[r0.x].data[10].x + r17.y;
                r17.xy = lightConstantsCB[r0.x].data[9].yz * r20.xy;
                r17.zw = lightConstantsCB[r0.x].data[3].yy / lightConstantsCB[r0.x].data[8].yw;
                r20.xy = float2(1,1) + -r17.zw;
                r20.xy = cmp(r17.xy >= r20.xy);
                r17.zw = cmp(r17.zw >= r17.xy);
                r17.zw = (int2)r17.zw | (int2)r20.xy;
                r17.z = (int)r17.w | (int)r17.z;
                if (r17.z == 0) {
                  r17.xy = saturate(r17.xy);
                  r20.x = r17.x * lightConstantsCB[r0.x].data[8].y + lightConstantsCB[r0.x].data[8].z;
                  r20.y = r17.y * lightConstantsCB[r0.x].data[8].w + lightConstantsCB[r0.x].data[9].x;
                  r17.x = lightConstantsCB[r0.x].data[10].z * r15.w;
                  r3.x = lightConstantsCB[r0.x].data[10].y * r15.w + r3.x;
                  r3.x = r3.x / r17.x;
                }
              } else {
                r17.z = -1;
              }
              r15.w = (int)r16.w | (int)r17.z;
              if (r15.w == 0) {
                r3.x = max(6.10351563e-05, r3.x);
                r15.w = 0x0000ffff & (int)lightConstantsCB[r0.x].data[1].w;
                if (enableDitheredShadow != 0) {
                  r17.x = -r13.x;
                  r21.z = (uint)r15.w;
                  r17.y = r14.x;
                  r17.z = r13.x;
                  r13.x = 0;
                  r14.x = 0;
                  while (true) {
                    r16.w = cmp((int)r14.x >= 8);
                    if (r16.w != 0) break;
                    r22.x = dot(icb[r14.x+0].yx, r17.xy);
                    r22.y = dot(icb[r14.x+0].yx, r17.yz);
                    r21.xy = r22.xy * lightConstantsCB[r0.x].data[3].yy + r20.xy;
                    r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r3.x).x;
                    r13.x = r16.w * 0.125 + r13.x;
                    r14.x = (int)r14.x + 1;
                  }
                } else {
                  r20.z = (uint)r15.w;
                  r13.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r3.x).x;
                }
                r0.x = r13.x * r13.x;
                r0.x = r0.x * r13.x;
              } else {
                r0.x = 1;
              }
              r5.w = r5.w * r0.x;
            }
          }
          r0.x = -r2.x * 0.5 + 1;
          r0.x = -r11.w * r0.x + 1;
          r0.x = r0.x * r0.x;
          r0.x = -r0.x * 0.620000005 + 0.620000005;
          r0.x = r0.x + -r11.w;
          r0.x = r1.w * r0.x + r11.w;
          r0.x = r0.x * r5.w;
          r17.xyz = r0.xxx * r19.xyz;
          r1.w = cmp(0 < r9.w);
          r16.xyz = r16.xyz * r4.zzz + r17.xyz;
          r15.xyz = r15.xyz * r8.www + r12.xyz;
          r2.x = dot(r15.xyz, r15.xyz);
          r2.x = rsqrt(r2.x);
          r15.xyz = r15.xyz * r2.xxx;
          r2.x = dot(r15.xyz, r12.xyz);
          r3.x = dot(r11.xyz, r15.xyz);
          r1.z = abs(r3.x) * r1.z + -abs(r3.x);
          r1.z = abs(r3.x) * r1.z + 1;
          r2.y = r10.w * r2.y + r2.w;
          r1.z = r1.z * r1.z;
          r1.z = r1.z * r2.y;
          r1.z = rcp(r1.z);
          r1.z = r1.z * r12.w;
          r1.z = r5.w * r1.z;
          r1.z = 0.25 * r1.z;
          r11.xyz = r1.zzz * r19.xyz + r14.yzw;
          r2.x = saturate(1 + -r2.x);
          r2.y = r2.x * r2.x;
          r2.y = r2.y * r2.y;
          r2.x = r2.x * r2.y;
          r1.z = r2.x * r1.z;
          r2.xyw = r1.zzz * r19.xyz + r18.xyz;
          r12.xyz = r0.xxx * r19.xyz + r13.yzw;
          r12.xyz = r0.www ? r12.xyz : 0;
          r3.yzw = r1.www ? r16.xyz : r3.yzw;
          r13.yzw = r1.www ? r13.yzw : r12.xyz;
          r18.xyz = r1.www ? r2.xyw : r18.xyz;
          r14.yzw = r1.www ? r11.xyz : r14.yzw;
          if (r2.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.x, cb2[52].x, l(112), u2.xxxx
          r0.x = samplerLinear[]..swiz;
            r0.x = (int)r0.x | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r7.w = 0x00010101;
        } else {
          r7.w = 257;
        }
      } else {
        r7.w = 1;
      }
    } else {
      r7.w = 1;
    }
    break;
    default :
    r7.w = 0;
    break;
  }
  r4.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r4.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r2.yw : float2(-1,0);
  r2.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.x == (int)r2.x);
  r2.xy = r2.xx ? r2.yw : float2(-1,0);
  r7.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r7.x;
  r2.w = cmp((int)r0.x == (int)r2.w);
  r7.xy = r2.ww ? r7.yz : float2(-1,0);
  r8.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r8.x;
  r0.x = cmp((int)r0.x == (int)r2.w);
  r8.xy = r0.xx ? r8.yz : float2(-1,0);
  r9.x = r1.z;
  r9.y = r2.x;
  r9.z = r7.x;
  r9.w = r8.x;
  r9.xyzw = r9.xyzw + -r4.xxxx;
  r9.xyzw = cmp(abs(r9.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r9.xyzw = r9.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r9.x + r9.y;
  r0.x = r0.x + r9.z;
  r0.x = r0.x + r9.w;
  r1.z = r9.y * r2.y;
  r1.z = r9.x * r1.w + r1.z;
  r1.z = r9.z * r7.y + r1.z;
  r1.z = r9.w * r8.y + r1.z;
  r4.w = r1.z / r0.x;
  r0.x = cmp(0 >= r0.x);
  r4.yz = r0.xx ? float2(0,0) : r4.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r1.w == (int)r1.z);
  r2.xyw = r0.xxx ? r4.xyz : r4.xzy;
  r0.x = -r2.w * 0.5 + r2.x;
  r4.y = r2.w + r0.x;
  r4.z = -r2.y * 0.5 + r0.x;
  r4.x = r4.z + r2.y;
  r2.xyw = r3.yzw * r6.xyz;
  r2.xyw = r13.yzw * r4.xyz + r2.xyw;
  r7.xyz = float3(0.959999979,0.959999979,0.959999979) * r18.xyz;
  r7.xyz = r14.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r7.xyz;
  r2.xyw = r7.xyz + r2.xyw;
  r7.xyz = float3(1,1,1) + -r4.xyz;
  r7.xyz = r18.xyz * r7.xyz;
  r4.xyz = r14.yzw * r4.xyz + r7.xyz;
  r3.xyz = r3.yzw * r6.xyz + r4.xyz;
  r2.xyw = r0.www ? r2.xyw : r3.xyz;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(r5.xyz, r5.xyz);
    r0.w = rsqrt(r0.x);
    r3.xyz = r5.xyz * r0.www;
    r0.x = sqrt(r0.x);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r1.zw = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r0.w = cmp(0.00999999978 < abs(r5.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r0.ww ? r4.xy : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r6.xyz + r4.xyz;
    } else {
      r0.w = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.z = cmp(0.00999999978 < abs(r5.z));
      r1.w = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r3.w = -1.44269502 * r1.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r1.w = r3.w / r1.w;
      r1.w = r1.w * r0.w;
      r0.w = r1.z ? r1.w : r0.w;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r6.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.w = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r1.w = r1.w * r1.w;
    r1.w = 12.566371 * r1.w;
    r1.z = r1.z / r1.w;
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
    r6.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyw * r4.xyz + r3.xyz;
  } else {
    r0.x = fogConstants.heightFalloff * r5.z;
    r0.w = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r1.z = cmp(abs(r0.x) < 9.99999975e-05);
    r1.w = min(64, r0.w);
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r3.w = saturate(fogConstants.K0b);
    r4.x = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.x ? r1.w : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.x = r1.z ? 1 : r0.x;
    r0.x = r0.w / r0.x;
    r0.x = r1.z ? r3.w : r0.x;
    r0.x = fogConstants.expMul * r0.x;
    r0.w = dot(r5.xyz, r5.xyz);
    r1.z = sqrt(r0.w);
    r0.x = r0.x * r1.z + fogConstants.expAdd;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r0.w = rsqrt(r0.w);
    r4.xyz = r5.xyz * r0.www;
    r0.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r0.w = saturate(fogConstants.sunFogAngles.y * r0.w + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r0.wwww * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.x = r4.w * r0.x;
    r4.xyz = r4.xyz + -r2.xyw;
    r3.xyz = r0.xxx * r4.xyz + r2.xyw;
  }
  r2.xyw = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyw = r3.xyz ? r2.xyw : 0;
  r2.xyw = min(float3(65024,65024,64512), r2.xyw);
  r0.x = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(2,0));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 16);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.xxx ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r7.w & 1;
        break;
        case 2 :        if (1 == 0) r0.x = 0; else if (1+8 < 32) {         r0.x = (uint)r7.w << (32-(1 + 8)); r0.x = (uint)r0.x >> (32-1);        } else r0.x = (uint)r7.w >> 8;
        break;
        case 3 :        r0.x = (uint)r7.w >> 16;
        break;
        case 4 :        r0.x = (int)r6.w & 255;
        break;
        case 5 :        if (8 == 0) r0.x = 0; else if (8+8 < 32) {         r0.x = (uint)r6.w << (32-(8 + 8)); r0.x = (uint)r0.x >> (32-8);        } else r0.x = (uint)r6.w >> 8;
        break;
        default :
        r0.x = 0;
        break;
      }
      r0.x = (uint)r0.x;
      r0.x = drawNumLighstScale * r0.x;
      r3.xyz = r0.xxx * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyz + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r7.w & 1;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.x = (int)r6.w & 255;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r7.w & 1;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (1 == 0) r0.w = 0; else if (1+8 < 32) {     r0.w = (uint)r7.w << (32-(1 + 8)); r0.w = (uint)r0.w >> (32-1);    } else r0.w = (uint)r7.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r0.w
    InterlockedAdd(dest, value, orig_value);
    r1.x = (uint)r7.w >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (int)r6.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.y
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r6.w << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r6.w >> 8;
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