// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:45 2021

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
  r0.x = permuteStride << 4;
  r0.x = (int)r0.x + (int)vThreadGroupID.x;
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
  r0.w = GBufferDepth.Load(r1.xyw).x;
  r3.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r4.xy = (uint2)r1.xy;
  r4.zw = float2(0.5,0.5) + r4.xy;
  r5.x = cmp(r0.w >= 0.984375);
  r5.z = 1.01587307 * r0.w;
  r0.w = r0.w * 64 + -63;
  r0.w = r5.x ? r0.w : r5.z;
  r0.w = max(9.99999994e-09, r0.w);
  r5.y = rcp(r0.w);
  r0.zw = r0.zz ? r5.xy : 0;
  r5.xy = renderTargetSize.zw * r4.zw;
  r6.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r5.xy).xyzw;
  r5.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r5.xy).xyzw;
  r7.xy = float2(0.5,0.5) * r4.zw;
  r7.xy = frac(r7.xy);
  r7.zw = float2(1,1) + -r7.yx;
  r8.xyzw = r7.xwyx * r7.zzwy;
  r7.x = dot(r6.xyzw, r8.xyzw);
  r5.xyzw = r5.xyzw + -r0.wwww;
  r7.y = min(abs(r5.z), abs(r5.w));
  r7.y = min(r7.y, abs(r5.y));
  r7.y = min(r7.y, abs(r5.x));
  r7.z = max(abs(r5.z), abs(r5.w));
  r7.z = max(r7.z, abs(r5.y));
  r5.x = max(r7.z, abs(r5.x));
  r5.yzw = cmp(abs(r5.yzw) == r7.yyy);
  r5.y = r5.y ? r6.y : r6.x;
  r5.y = r5.z ? r6.z : r5.y;
  r5.y = r5.w ? r6.w : r5.y;
  r5.z = 0.00999999978 * r0.w;
  r5.x = cmp(r5.z < r5.x);
  r5.x = r5.x ? r5.y : r7.x;
  r3.z = r5.x * r3.z;
  if (showAO != 0) {
    r5.x = 0.75 * r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r5.xxxx
    return;
  } else {
    r5.x = enableAO ? r3.z : 1;
  }
  r3.z = cmp(r2.z >= 0.5);
  r5.yzw = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = -subpixelOffset.xy + r4.zw;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r10.x = inverseProjectionMatrix._m00 * r1.z;
  r10.y = inverseProjectionMatrix._m11 * r1.w;
  r10.z = 1;
  r10.xyz = r10.xyz * r0.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r10.yyy;
  r10.xyw = r10.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r10.xyz = r10.zzz * inverseViewMatrix._m20_m21_m22 + r10.xyw;
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r1.zw = r2.xy * float2(2,2) + float2(-1,-1);
  r1.zw = float2(0.850000024,0.850000024) * r1.zw;
  r2.x = dot(r1.zw, r1.zw);
  r11.zw = float2(2,1) + -r2.xx;
  r2.x = sqrt(r11.z);
  r11.xy = r2.xx * r1.zw;
  r12.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.w = (int)r12.w ^ (int)r12.z;
  r12.z = r0.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r2.xyw = r11.yyy * r2.xyw;
  r2.xyw = r13.xyz * r11.xxx + r2.xyw;
  r11.xyz = r12.xyz * r11.zzz + r2.xyw;
  r0.w = r3.z ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r10.xyz, -r10.xyz);
  r0.w = rsqrt(r0.w);
  r12.xyz = -r10.xyz * r0.www;
  r0.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r4.x, r13.x);
  r1.zw = (uint2)r1.yx;
  r0.w = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r14.x, r15.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.w = dot(-r12.xyz, r11.xyz);
  r0.w = r0.w + r0.w;
  r16.xyz = r11.xyz * -r0.www + -r12.xyz;
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
    r14.yzw = float3(0,0,0);
    r15.yz = float2(0,0);
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
      r30.xyzw = r17.yxzw;
      r31.xyzw = r18.xyzw;
      r32.xyzw = r19.yzwx;
      r33.xyzw = r20.xyzw;
      r34.xyzw = r21.xyzw;
      r35.xyzw = r22.zwxy;
      r36.xyzw = r23.zwxy;
      r37.xyzw = r25.zwxy;
      r38.xyzw = r26.zwxy;
      r39.xyz = r14.yzw;
      r40.xy = r15.zy;
      r13.w = r7.w;
      r15.w = r28.z;
      r28.w = r29.z;
      r29.w = r8.w;
      r41.xyzw = r24.zwxy;
      r42.xyzw = r27.zwxy;
      r39.w = r12.w;
      while (true) {
        if (r39.w == 0) break;
        r40.z = firstbitlow((uint)r39.w);
        r40.w = 1 << (int)r40.z;
        r40.w = ~(int)r40.w;
        r39.w = (int)r39.w & (int)r40.w;
        r40.z = (int)r9.w + (int)r40.z;
        r40.z = (int)r40.z * 14;
        r43.xyz = -refProbeConstantsCB[r40.z].data[0].xyz + r10.xyz;
        r40.w = dot(r43.xyz, r43.xyz);
        r40.w = sqrt(r40.w);
        r40.w = cmp(probeDebugRadius >= r40.w);
        if (r40.w != 0) {
          r30.yzw = refProbeConstantsCB[r40.z].data[1].xyz;
          r30.x = refProbeConstantsCB[r40.z].data[0].w;
          r31.yzw = refProbeConstantsCB[r40.z].data[2].xyz;
          r31.x = refProbeConstantsCB[r40.z].data[1].w;
          r32.xyz = refProbeConstantsCB[r40.z].data[3].xyz;
          r32.w = refProbeConstantsCB[r40.z].data[4].z;
          r33.yz = refProbeConstantsCB[r40.z].data[4].xy;
          r33.x = refProbeConstantsCB[r40.z].data[3].w;
          r33.w = refProbeConstantsCB[r40.z].data[6].x;
          r34.yzw = refProbeConstantsCB[r40.z].data[5].xyz;
          r34.x = refProbeConstantsCB[r40.z].data[4].w;
          r35.yz = refProbeConstantsCB[r40.z].data[7].yw;
          r35.x = refProbeConstantsCB[r40.z].data[6].y;
          r35.w = refProbeConstantsCB[r40.z].data[8].x;
          r36.xyz = refProbeConstantsCB[r40.z].data[8].yzw;
          r36.w = refProbeConstantsCB[r40.z].data[9].x;
          r37.xyz = refProbeConstantsCB[r40.z].data[10].yzw;
          r37.w = refProbeConstantsCB[r40.z].data[11].x;
          r38.xyz = refProbeConstantsCB[r40.z].data[11].yzw;
          r38.w = refProbeConstantsCB[r40.z].data[12].x;
          r39.xyz = refProbeConstantsCB[r40.z].data[0].xyz;
          r43.xy = refProbeConstantsCB[r40.z].data[13].yz;
          r13.w = -1;
          r15.w = refProbeConstantsCB[r40.z].data[2].w;
          r28.w = refProbeConstantsCB[r40.z].data[5].w;
          r29.w = refProbeConstantsCB[r40.z].data[7].z;
          r41.xyz = refProbeConstantsCB[r40.z].data[9].yzw;
          r41.w = refProbeConstantsCB[r40.z].data[10].x;
          r42.xyz = refProbeConstantsCB[r40.z].data[12].yzw;
          r42.w = refProbeConstantsCB[r40.z].data[13].x;
          r40.xy = r43.xy;
          break;
        }
      }
      if (r13.w != 0) {
        r17.xyzw = r30.yxzw;
        r18.xyzw = r31.xyzw;
        r19.xyzw = r32.wxyz;
        r20.xyzw = r33.xyzw;
        r21.xyzw = r34.xyzw;
        r22.xyzw = r35.zwxy;
        r23.xyzw = r36.zwxy;
        r24.xyzw = r41.zwxy;
        r25.xyzw = r37.zwxy;
        r26.xyzw = r38.zwxy;
        r27.xyzw = r42.zwxy;
        r14.yzw = r39.xyz;
        r15.yz = r40.yx;
        r7.w = -1;
        r28.z = r15.w;
        r29.z = r28.w;
        r8.w = r29.w;
        break;
      }
      r9.w = (int)r9.w + 32;
      r17.xyzw = r30.yxzw;
      r18.xyzw = r31.xyzw;
      r19.xyzw = r32.wxyz;
      r20.xyzw = r33.xyzw;
      r21.xyzw = r34.xyzw;
      r22.xyzw = r35.zwxy;
      r23.xyzw = r36.zwxy;
      r25.xyzw = r37.zwxy;
      r26.xyzw = r38.zwxy;
      r14.yzw = r39.xyz;
      r15.yz = r40.yx;
      r7.w = r13.w;
      r28.z = r15.w;
      r29.z = r28.w;
      r8.w = r29.w;
      r24.xyzw = r41.zwxy;
      r27.xyzw = r42.zwxy;
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
    r27.z = r15.z;
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
    r15.z = dot(refProbeAttenuationConstantsCB[r12.w].data[1].xyz, r14.yzw);
    r15.z = saturate(refProbeAttenuationConstantsCB[r12.w].data[1].w + r15.z);
    r13.w = r15.z * r13.w;
    r15.z = dot(refProbeAttenuationConstantsCB[r12.w].data[2].xyz, r14.yzw);
    r15.z = saturate(refProbeAttenuationConstantsCB[r12.w].data[2].w + r15.z);
    r13.w = r15.z * r13.w;
    r15.z = dot(refProbeAttenuationConstantsCB[r12.w].data[3].xyz, r14.yzw);
    r15.z = saturate(refProbeAttenuationConstantsCB[r12.w].data[3].w + r15.z);
    r13.w = r15.z * r13.w;
    r15.z = dot(refProbeAttenuationConstantsCB[r12.w].data[4].xyz, r14.yzw);
    r15.z = saturate(refProbeAttenuationConstantsCB[r12.w].data[4].w + r15.z);
    r13.w = r15.z * r13.w;
    r15.z = dot(refProbeAttenuationConstantsCB[r12.w].data[5].xyz, r14.yzw);
    r12.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[5].w + r15.z);
    r31.x = r13.w * r12.w;
    r12.w = (int)r20.w & 1;
    r31.yz = float2(0,1);
    r15.zw = r12.ww ? r31.xy : r31.zx;
    r31.x = 1;
    r12.w = r20.w;
    r32.xy = r15.zw;
    r13.w = 1;
    while (true) {
      r17.w = cmp((int)r13.w >= (int)r9.w);
      if (r17.w != 0) break;
      r17.w = (int)r6.w + (int)r13.w;
      r17.w = (int)r17.w * 6;
      r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[0].xyz, r14.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[0].w + r18.w);
      r18.w = r32.x * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[1].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[1].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[2].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[2].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[3].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[3].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[4].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[4].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r17.w].data[5].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[5].w + r19.w);
      r32.x = r18.w * r17.w;
      r19.w = (uint)r12.w >> 2;
      if (1 == 0) r21.z = 0; else if (1+2 < 32) {       r21.z = (uint)r12.w << (32-(1 + 2)); r21.z = (uint)r21.z >> (32-1);      } else r21.z = (uint)r12.w >> 2;
      r21.w = (int)r19.w & 2;
      r22.w = max(r32.y, r32.x);
      r17.w = -r18.w * r17.w + 1;
      r17.w = r32.y * r17.w;
      r31.y = r21.w ? r17.w : r22.w;
      r32.xy = r21.zz ? r32.xy : r31.xy;
      r13.w = (int)r13.w + 1;
      r12.w = r19.w;
    }
    r32.y = saturate(r32.y);
    r31.w = r32.y * r21.x;
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
      r6.w = r31.w * r21.y;
      r9.w = dot(r16.xyz, r22.xyz);
      r12.w = dot(r14.yzw, r22.xyz);
      r12.w = r12.w + -r23.w;
      r13.w = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r4.z);
      r12.w = r13.w ? r12.w : -r12.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r12.w / r9.w;
      r9.w = min(131072, abs(r9.w));
      r12.w = dot(r16.xyz, r23.xyz);
      r13.w = dot(r14.yzw, r23.xyz);
      r13.w = r13.w + -r24.w;
      r15.z = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r15.z ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r12.w = dot(r16.xyz, r24.xyz);
      r13.w = dot(r14.yzw, r24.xyz);
      r13.w = r13.w + -r25.w;
      r15.z = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r15.z ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r12.w = dot(r16.xyz, r25.xyz);
      r13.w = dot(r14.yzw, r25.xyz);
      r13.w = r13.w + -r26.w;
      r15.z = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r15.z ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r12.w = dot(r16.xyz, r26.xyz);
      r13.w = dot(r14.yzw, r26.xyz);
      r13.w = r13.w + -r27.w;
      r15.z = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r15.z ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r12.w = dot(r16.xyz, r27.xyz);
      r13.w = dot(r14.yzw, r27.xyz);
      r13.w = r13.w + -r15.y;
      r15.y = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r15.y ? r13.w : -r13.w;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.w / r12.w;
      r9.w = min(abs(r12.w), r9.w);
      r15.yzw = r20.xyz + r14.yzw;
      r15.yzw = r16.xyz * r9.www + r15.yzw;
      r12.w = dot(r15.yzw, r15.yzw);
      r12.w = sqrt(r12.w);
      r9.w = r9.w / r12.w;
      r9.w = r9.w + r9.w;
      r9.w = sqrt(r9.w);
      r9.w = r2.z * 5 + r9.w;
      r9.w = -0.844799995 + r9.w;
      r20.x = dot(r15.yzw, r30.xyz);
      r20.y = dot(r15.yzw, r17.xyz);
      r20.z = dot(r15.yzw, r28.xyz);
      if (9 == 0) r8.w = 0; else if (9+16 < 32) {       r8.w = (uint)r8.w << (32-(9 + 16)); r8.w = (uint)r8.w >> (32-9);      } else r8.w = (uint)r8.w >> 16;
      r20.w = (uint)r8.w;
      r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, r9.w).xyz;
      r21.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
      r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
      r8.w = (int)r21.y | (int)r21.x;
      r8.w = (int)r21.z | (int)r8.w;
      r15.yzw = r8.www ? float3(1,1,0) : r15.yzw;
      r21.x = dot(r14.yzw, r30.xyz);
      r21.y = dot(r14.yzw, r17.xyz);
      r21.z = dot(r14.yzw, r28.xyz);
      r14.yzw = saturate(r21.xyz * r18.xyz + float3(0.5,0.5,0.5));
      r14.yzw = r14.yzw * r19.xyz + r29.xyz;
      r20.x = dot(r11.xyz, r30.xyz);
      r20.y = dot(r11.xyz, r17.xyz);
      r20.z = dot(r11.xyz, r28.xyz);
      r17.xyz = cmp(float3(0,0,0) < r20.xyz);
      r18.z = r17.x ? 0 : 0.5;
      r18.xy = float2(0,0);
      r18.xyz = r18.xyz + r14.yzw;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r19.xyz = r20.xyz * r20.xyz;
      r19.xyz = r19.xyz * r6.www;
      r21.z = r17.y ? 0 : 0.5;
      r21.xy = float2(0,0);
      r17.xyw = r21.xyz + r14.yzw;
      r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
      r17.xyw = r17.xyw * r19.yyy;
      r17.xyw = r18.xyz * r19.xxx + r17.xyw;
      r18.z = r17.z ? 0 : 0.5;
      r18.xy = float2(0,0);
      r14.yzw = r18.xyz + r14.yzw;
      r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
      r14.yzw = r14.yzw * r19.zzz + r17.xyw;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, 6).xyz;
      r18.xyz = (int3)r17.xyz & int3(-2147483648,-2147483648,-2147483648);
      r18.xyz = cmp((int3)r18.xyz == int3(2139095040,2139095040,2139095040));
      r8.w = (int)r18.y | (int)r18.x;
      r8.w = (int)r18.z | (int)r8.w;
      r17.xyz = r8.www ? float3(1,1,0) : r17.xyz;
      r14.yzw = r17.xyz * r14.yzw;
      r8.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r9.w = r8.w * r4.w;
      r14.yzw = r15.yzw * r6.www;
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
    r17.x = 16;
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r20.xz = float2(1,1);
    r21.xy = float2(0,0);
    r22.xy = float2(0,0);
    r23.xyz = float3(0,0,0);
    r23.w = r31.x;
    r24.xyz = r31.yzw;
    r24.w = r6.w;
    r14.z = r9.w;
    while (true) {
      r14.w = cmp((uint)r14.z >= numRefProbes);
      if (r14.w != 0) break;
      r14.w = (uint)r14.z >> 5;
      r14.w = (int)r8.w + (int)r14.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t26.xxxx
    r14.w = samplerLinear[]..swiz;
      r15.y = cmp((int)r9.w == (int)r14.z);
      bitmask.z = ((~(-1 << r12.w)) << 0) & 0xffffffff;  r15.z = (((uint)0 << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
      r14.w = r15.y ? r15.z : r14.w;
      r15.y = cmp((int)r13.w == (int)r14.z);
      if (r14.y == 0) r15.z = 0; else if (r14.y+0 < 32) {       r15.z = (uint)r14.w << (32-(r14.y + 0)); r15.z = (uint)r15.z >> (32-r14.y);      } else r15.z = (uint)r14.w >> 0;
      r14.w = r15.y ? r15.z : r14.w;
      r25.xyzw = r23.xyzw;
      r26.xyzw = r24.xyzw;
      r15.y = r14.w;
      while (true) {
        if (r15.y == 0) break;
        r15.z = firstbitlow((uint)r15.y);
        r15.w = 1 << (int)r15.z;
        r15.w = ~(int)r15.w;
        r15.y = (int)r15.w & (int)r15.y;
        r15.z = (int)r14.z + (int)r15.z;
        r15.z = (int)r15.z * 14;
        r15.w = (int)r26.w & 255;
        r18.w = cmp((uint)r15.w < 32);
        r18.w = r18.w ? r1.w : 0;
        if (r18.w != 0) {
          r15.w = mad((int)r15.w, 20, 880);
          r17.yzw = refProbeConstantsCB[r15.z].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r15.w = u2.xyzw;
        }
        r27.w = (int)r26.w + 1;
        r17.yzw = -refProbeConstantsCB[r15.z].data[0].xyz + r10.xyz;
        r15.w = 0x0000ffff & (int)refProbeConstantsCB[r15.z].data[7].z;
        if (6 == 0) r18.w = 0; else if (6+25 < 32) {         r18.w = (uint)refProbeConstantsCB[r15.z].data[7].z << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);        } else r18.w = (uint)refProbeConstantsCB[r15.z].data[7].z >> 25;
        r19.w = (int)r15.w * 6;
        r21.w = dot(refProbeAttenuationConstantsCB[r19.w].data[0].xyz, r17.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[0].w + r21.w);
        r22.w = dot(refProbeAttenuationConstantsCB[r19.w].data[1].xyz, r17.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[1].w + r22.w);
        r21.w = r22.w * r21.w;
        r22.w = dot(refProbeAttenuationConstantsCB[r19.w].data[2].xyz, r17.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[2].w + r22.w);
        r21.w = r22.w * r21.w;
        r22.w = dot(refProbeAttenuationConstantsCB[r19.w].data[3].xyz, r17.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[3].w + r22.w);
        r21.w = r22.w * r21.w;
        r22.w = dot(refProbeAttenuationConstantsCB[r19.w].data[4].xyz, r17.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[4].w + r22.w);
        r21.w = r22.w * r21.w;
        r22.w = dot(refProbeAttenuationConstantsCB[r19.w].data[5].xyz, r17.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[5].w + r22.w);
        r18.x = r21.w * r19.w;
        r19.w = 1 & (int)refProbeConstantsCB[r15.z].data[6].x;
        r28.xy = r19.ww ? r18.xy : r18.zx;
        r18.x = refProbeConstantsCB[r15.z].data[6].x;
        r29.xy = r28.xy;
        r19.w = 1;
        while (true) {
          r21.w = cmp((int)r19.w >= (int)r18.w);
          if (r21.w != 0) break;
          r21.w = (int)r15.w + (int)r19.w;
          r21.w = (int)r21.w * 6;
          r22.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r17.yzw);
          r22.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r22.w);
          r22.w = r29.x * r22.w;
          r28.z = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r17.yzw);
          r28.z = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r28.z);
          r22.w = r28.z * r22.w;
          r28.z = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r17.yzw);
          r28.z = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r28.z);
          r22.w = r28.z * r22.w;
          r28.z = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r17.yzw);
          r28.z = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r28.z);
          r22.w = r28.z * r22.w;
          r28.z = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r17.yzw);
          r28.z = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r28.z);
          r22.w = r28.z * r22.w;
          r28.z = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r17.yzw);
          r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r28.z);
          r29.x = r22.w * r21.w;
          r28.z = (uint)r18.x >> 2;
          if (1 == 0) r28.w = 0; else if (1+2 < 32) {           r28.w = (uint)r18.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);          } else r28.w = (uint)r18.x >> 2;
          r29.z = (int)r28.z & 2;
          r29.w = max(r29.y, r29.x);
          r21.w = -r22.w * r21.w + 1;
          r21.w = r29.y * r21.w;
          r20.y = r29.z ? r21.w : r29.w;
          r29.xy = r28.ww ? r29.xy : r20.xy;
          r19.w = (int)r19.w + 1;
          r18.x = r28.z;
        }
        r29.y = saturate(r29.y);
        r15.w = refProbeConstantsCB[r15.z].data[6].y * r29.y;
        r18.x = cmp(0 < r15.w);
        if (r18.x != 0) {
          r18.x = (int)r27.w & 255;
          r18.w = (int)r18.x + -1;
          r18.w = cmp((uint)r18.w < 32);
          r18.w = r18.w ? r1.w : 0;
          if (r18.w != 0) {
            r18.xw = mad((int2)r18.xx, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.w, cb2[52].x, r18.x, u2.xxxx
          r19.w = samplerLinear[]..swiz;
            r19.w = (int)r19.w | 32;
            GBufferDiffuseColor[viewID].r18.x = u2.x;
            GBufferDiffuseColor[viewID].r18.w = u2.x;
          }
          r26.w = (int)r26.w + 257;
          r26.z = r29.y * refProbeConstantsCB[r15.z].data[6].y + r26.z;
          r15.w = refProbeConstantsCB[r15.z].data[7].y * r15.w;
          r28.x = refProbeConstantsCB[r15.z].data[7].w;
          r28.yz = refProbeConstantsCB[r15.z].data[8].xy;
          r18.x = dot(r16.xyz, r28.xyz);
          r18.w = dot(r17.yzw, r28.xyz);
          r18.w = -refProbeConstantsCB[r15.z].data[8].z + r18.w;
          r19.w = cmp(r18.w >= 0);
          r18.w = max(abs(r18.w), r4.z);
          r18.w = r19.w ? r18.w : -r18.w;
          r18.x = max(1.00000001e-07, -r18.x);
          r18.x = r18.w / r18.x;
          r18.x = min(131072, abs(r18.x));
          r28.x = refProbeConstantsCB[r15.z].data[8].w;
          r28.yz = refProbeConstantsCB[r15.z].data[9].xy;
          r18.w = dot(r16.xyz, r28.xyz);
          r19.w = dot(r17.yzw, r28.xyz);
          r19.w = -refProbeConstantsCB[r15.z].data[9].z + r19.w;
          r20.y = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r4.z);
          r19.w = r20.y ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.x = min(r18.x, abs(r18.w));
          r28.x = refProbeConstantsCB[r15.z].data[9].w;
          r28.yz = refProbeConstantsCB[r15.z].data[10].xy;
          r18.w = dot(r16.xyz, r28.xyz);
          r19.w = dot(r17.yzw, r28.xyz);
          r19.w = -refProbeConstantsCB[r15.z].data[10].z + r19.w;
          r20.y = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r4.z);
          r19.w = r20.y ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.x = min(r18.x, abs(r18.w));
          r28.x = refProbeConstantsCB[r15.z].data[10].w;
          r28.yz = refProbeConstantsCB[r15.z].data[11].xy;
          r18.w = dot(r16.xyz, r28.xyz);
          r19.w = dot(r17.yzw, r28.xyz);
          r19.w = -refProbeConstantsCB[r15.z].data[11].z + r19.w;
          r20.y = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r4.z);
          r19.w = r20.y ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.x = min(r18.x, abs(r18.w));
          r28.x = refProbeConstantsCB[r15.z].data[11].w;
          r28.yz = refProbeConstantsCB[r15.z].data[12].xy;
          r18.w = dot(r16.xyz, r28.xyz);
          r19.w = dot(r17.yzw, r28.xyz);
          r19.w = -refProbeConstantsCB[r15.z].data[12].z + r19.w;
          r20.y = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r4.z);
          r19.w = r20.y ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.x = min(r18.x, abs(r18.w));
          r28.x = refProbeConstantsCB[r15.z].data[12].w;
          r28.yz = refProbeConstantsCB[r15.z].data[13].xy;
          r18.w = dot(r16.xyz, r28.xyz);
          r19.w = dot(r17.yzw, r28.xyz);
          r19.w = -refProbeConstantsCB[r15.z].data[13].z + r19.w;
          r20.y = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r4.z);
          r19.w = r20.y ? r19.w : -r19.w;
          r18.w = max(1.00000001e-07, -r18.w);
          r18.w = r19.w / r18.w;
          r18.x = min(r18.x, abs(r18.w));
          r28.x = refProbeConstantsCB[r15.z].data[3].w + r17.y;
          r28.yz = refProbeConstantsCB[r15.z].data[4].xy + r17.zw;
          r28.xyz = r16.xyz * r18.xxx + r28.xyz;
          r18.w = dot(r28.xyz, r28.xyz);
          r18.w = sqrt(r18.w);
          r18.x = r18.x / r18.w;
          r18.x = r18.x + r18.x;
          r18.x = sqrt(r18.x);
          r18.x = r2.z * 5 + r18.x;
          r18.x = -0.844799995 + r18.x;
          r30.x = refProbeConstantsCB[r15.z].data[0].w;
          r30.y = refProbeConstantsCB[r15.z].data[1].z;
          r30.z = refProbeConstantsCB[r15.z].data[2].y;
          r32.x = dot(r28.xyz, r30.xyz);
          r33.xy = refProbeConstantsCB[r15.z].data[1].xw;
          r33.z = refProbeConstantsCB[r15.z].data[2].z;
          r32.y = dot(r28.xyz, r33.xyz);
          r34.x = refProbeConstantsCB[r15.z].data[1].y;
          r34.yz = refProbeConstantsCB[r15.z].data[2].xw;
          r32.z = dot(r28.xyz, r34.xyz);
          if (9 == 0) r18.w = 0; else if (9+16 < 32) {           r18.w = (uint)refProbeConstantsCB[r15.z].data[7].z << (32-(9 + 16)); r18.w = (uint)r18.w >> (32-9);          } else r18.w = (uint)refProbeConstantsCB[r15.z].data[7].z >> 16;
          r32.w = (uint)r18.w;
          r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r18.x).xyz;
          r29.xzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
          r29.xzw = cmp((int3)r29.xzw == int3(2139095040,2139095040,2139095040));
          r18.x = (int)r29.z | (int)r29.x;
          r18.x = (int)r29.w | (int)r18.x;
          r28.xyz = r18.xxx ? float3(1,1,0) : r28.xyz;
          r35.x = dot(r17.yzw, r30.xyz);
          r35.y = dot(r17.yzw, r33.xyz);
          r35.z = dot(r17.yzw, r34.xyz);
          r17.yzw = saturate(r35.xyz * refProbeConstantsCB[r15.z].data[3].xyz + float3(0.5,0.5,0.5));
          r35.xy = refProbeConstantsCB[r15.z].data[4].zw * r17.yz;
          r35.z = refProbeConstantsCB[r15.z].data[5].x * r17.w;
          r17.yzw = refProbeConstantsCB[r15.z].data[5].yzw + r35.xyz;
          r32.x = dot(r11.xyz, r30.xyz);
          r32.y = dot(r11.xyz, r33.xyz);
          r32.z = dot(r11.xyz, r34.xyz);
          r29.xzw = cmp(float3(0,0,0) < r32.xyz);
          r19.z = r29.x ? 0 : 0.5;
          r30.xyz = r19.xyz + r17.yzw;
          r30.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
          r33.xyz = r32.xyz * r32.xyz;
          r33.xyz = r33.xyz * r15.www;
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
          r15.z = (int)r30.y | (int)r30.x;
          r15.z = (int)r30.z | (int)r15.z;
          r29.xzw = r15.zzz ? float3(1,1,0) : r29.xzw;
          r30.xyz = r29.xzw * r17.yzw;
          r15.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r25.xyz = r17.yzw * r29.xzw + r25.xyz;
          r17.y = r15.z * r4.w;
          r28.xyz = r28.xyz * r15.www;
          r15.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r15.z = r4.w * r15.z + r15.w;
          r15.z = r17.y / r15.z;
          r30.x = r25.w;
          r30.yz = r26.xy;
          r17.yzw = r28.xyz * r15.zzz + r30.xyz;
          r25.w = r17.y;
          r26.xy = r17.zw;
        } else {
          r27.xyz = r26.xyz;
          r26.xyzw = r27.xyzw;
        }
      }
      r23.xyzw = r25.xyzw;
      r24.xyzw = r26.xyzw;
      r14.z = (int)r14.z + 32;
    }
    r17.x = 16;
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xy = float2(0,0);
    r14.yzw = r23.xyz;
    r25.x = r23.w;
    r25.yz = r24.xy;
    r15.yzw = r24.zwz;
    r13.w = 0;
    while (true) {
      r18.w = cmp((uint)r13.w >= (uint)r7.w);
      if (r18.w != 0) break;
      r18.w = (uint)r13.w >> 5;
      r18.w = (int)r8.w + (int)r18.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t26.xxxx
    r18.w = samplerLinear[]..swiz;
      r19.w = cmp((int)r9.w == (int)r13.w);
      if (r12.w == 0) r20.x = 0; else if (r12.w+0 < 32) {       r20.x = (uint)r18.w << (32-(r12.w + 0)); r20.x = (uint)r20.x >> (32-r12.w);      } else r20.x = (uint)r18.w >> 0;
      r18.w = r19.w ? r20.x : r18.w;
      r26.xyz = r14.yzw;
      r27.xyz = r25.xyz;
      r28.xyz = r15.ywz;
      r19.w = r18.w;
      while (true) {
        if (r19.w == 0) break;
        r20.x = firstbitlow((uint)r19.w);
        r20.y = 1 << (int)r20.x;
        r20.y = ~(int)r20.y;
        r19.w = (int)r19.w & (int)r20.y;
        r20.x = (int)r13.w + (int)r20.x;
        r20.x = (int)r20.x * 14;
        r20.y = (int)r28.z & 255;
        r21.w = cmp((uint)r20.y < 32);
        r21.w = r21.w ? r1.w : 0;
        if (r21.w != 0) {
          r20.y = mad((int)r20.y, 20, 880);
          r17.yzw = refProbeConstantsCB[r20.x].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r20.y = u2.xyzw;
        }
        r29.y = (int)r28.z + 1;
        r17.yzw = -refProbeConstantsCB[r20.x].data[0].xyz + r10.xyz;
        r20.y = 0x0000ffff & (int)refProbeConstantsCB[r20.x].data[7].z;
        if (6 == 0) r21.w = 0; else if (6+25 < 32) {         r21.w = (uint)refProbeConstantsCB[r20.x].data[7].z << (32-(6 + 25)); r21.w = (uint)r21.w >> (32-6);        } else r21.w = (uint)refProbeConstantsCB[r20.x].data[7].z >> 25;
        r22.w = (int)r20.y * 6;
        r25.w = dot(refProbeAttenuationConstantsCB[r22.w].data[0].xyz, r17.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[0].w + r25.w);
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[1].xyz, r17.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[1].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[2].xyz, r17.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[2].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[3].xyz, r17.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[3].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[4].xyz, r17.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[4].w + r26.w);
        r25.w = r26.w * r25.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[5].xyz, r17.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[5].w + r26.w);
        r18.x = r25.w * r22.w;
        r22.w = 1 & (int)refProbeConstantsCB[r20.x].data[6].x;
        r29.zw = r22.ww ? r18.xy : r18.zx;
        r18.x = refProbeConstantsCB[r20.x].data[6].x;
        r30.xy = r29.zw;
        r22.w = 1;
        while (true) {
          r25.w = cmp((int)r22.w >= (int)r21.w);
          if (r25.w != 0) break;
          r25.w = (int)r20.y + (int)r22.w;
          r25.w = (int)r25.w * 6;
          r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[0].xyz, r17.yzw);
          r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[0].w + r26.w);
          r26.w = r30.x * r26.w;
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
          r30.x = r26.w * r25.w;
          r27.w = (uint)r18.x >> 2;
          if (1 == 0) r28.w = 0; else if (1+2 < 32) {           r28.w = (uint)r18.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);          } else r28.w = (uint)r18.x >> 2;
          r30.z = (int)r27.w & 2;
          r30.w = max(r30.y, r30.x);
          r25.w = -r26.w * r25.w + 1;
          r25.w = r30.y * r25.w;
          r20.w = r30.z ? r25.w : r30.w;
          r30.xy = r28.ww ? r30.xy : r20.zw;
          r22.w = (int)r22.w + 1;
          r18.x = r27.w;
        }
        r18.x = saturate(r30.y + -r28.y);
        r20.y = refProbeConstantsCB[r20.x].data[6].y * r18.x;
        r20.w = cmp(0 < r20.y);
        if (r20.w != 0) {
          r20.w = (int)r29.y & 255;
          r21.w = (int)r20.w + -1;
          r21.w = cmp((uint)r21.w < 32);
          r21.w = r21.w ? r1.w : 0;
          if (r21.w != 0) {
            r29.zw = mad((int2)r20.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r29.z, u2.xxxx
          r20.w = samplerLinear[]..swiz;
            r20.w = (int)r20.w | 32;
            GBufferDiffuseColor[viewID].r29.z = u2.x;
            GBufferDiffuseColor[viewID].r29.w = u2.x;
          }
          r28.z = (int)r28.z + 257;
          r28.x = r18.x * refProbeConstantsCB[r20.x].data[6].y + r28.x;
          r18.x = refProbeConstantsCB[r20.x].data[7].y * r20.y;
          r32.x = refProbeConstantsCB[r20.x].data[7].w;
          r32.yz = refProbeConstantsCB[r20.x].data[8].xy;
          r20.y = dot(r16.xyz, r32.xyz);
          r20.w = dot(r17.yzw, r32.xyz);
          r20.w = -refProbeConstantsCB[r20.x].data[8].z + r20.w;
          r21.w = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r4.z);
          r20.w = r21.w ? r20.w : -r20.w;
          r20.y = max(1.00000001e-07, -r20.y);
          r20.y = r20.w / r20.y;
          r20.y = min(131072, abs(r20.y));
          r32.x = refProbeConstantsCB[r20.x].data[8].w;
          r32.yz = refProbeConstantsCB[r20.x].data[9].xy;
          r20.w = dot(r16.xyz, r32.xyz);
          r21.w = dot(r17.yzw, r32.xyz);
          r21.w = -refProbeConstantsCB[r20.x].data[9].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r22.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r20.y = min(r20.y, abs(r20.w));
          r32.x = refProbeConstantsCB[r20.x].data[9].w;
          r32.yz = refProbeConstantsCB[r20.x].data[10].xy;
          r20.w = dot(r16.xyz, r32.xyz);
          r21.w = dot(r17.yzw, r32.xyz);
          r21.w = -refProbeConstantsCB[r20.x].data[10].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r22.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r20.y = min(r20.y, abs(r20.w));
          r32.x = refProbeConstantsCB[r20.x].data[10].w;
          r32.yz = refProbeConstantsCB[r20.x].data[11].xy;
          r20.w = dot(r16.xyz, r32.xyz);
          r21.w = dot(r17.yzw, r32.xyz);
          r21.w = -refProbeConstantsCB[r20.x].data[11].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r22.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r20.y = min(r20.y, abs(r20.w));
          r32.x = refProbeConstantsCB[r20.x].data[11].w;
          r32.yz = refProbeConstantsCB[r20.x].data[12].xy;
          r20.w = dot(r16.xyz, r32.xyz);
          r21.w = dot(r17.yzw, r32.xyz);
          r21.w = -refProbeConstantsCB[r20.x].data[12].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r22.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r20.y = min(r20.y, abs(r20.w));
          r32.x = refProbeConstantsCB[r20.x].data[12].w;
          r32.yz = refProbeConstantsCB[r20.x].data[13].xy;
          r20.w = dot(r16.xyz, r32.xyz);
          r21.w = dot(r17.yzw, r32.xyz);
          r21.w = -refProbeConstantsCB[r20.x].data[13].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r4.z);
          r21.w = r22.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r20.y = min(r20.y, abs(r20.w));
          r32.x = refProbeConstantsCB[r20.x].data[3].w + r17.y;
          r32.yz = refProbeConstantsCB[r20.x].data[4].xy + r17.zw;
          r30.xzw = r16.xyz * r20.yyy + r32.xyz;
          r20.w = dot(r30.xzw, r30.xzw);
          r20.w = sqrt(r20.w);
          r20.y = r20.y / r20.w;
          r20.y = r20.y + r20.y;
          r20.y = sqrt(r20.y);
          r20.y = r2.z * 5 + r20.y;
          r20.y = -0.844799995 + r20.y;
          r32.x = refProbeConstantsCB[r20.x].data[0].w;
          r32.y = refProbeConstantsCB[r20.x].data[1].z;
          r32.z = refProbeConstantsCB[r20.x].data[2].y;
          r33.x = dot(r30.xzw, r32.xyz);
          r34.xy = refProbeConstantsCB[r20.x].data[1].xw;
          r34.z = refProbeConstantsCB[r20.x].data[2].z;
          r33.y = dot(r30.xzw, r34.xyz);
          r35.x = refProbeConstantsCB[r20.x].data[1].y;
          r35.yz = refProbeConstantsCB[r20.x].data[2].xw;
          r33.z = dot(r30.xzw, r35.xyz);
          if (9 == 0) r20.w = 0; else if (9+16 < 32) {           r20.w = (uint)refProbeConstantsCB[r20.x].data[7].z << (32-(9 + 16)); r20.w = (uint)r20.w >> (32-9);          } else r20.w = (uint)refProbeConstantsCB[r20.x].data[7].z >> 16;
          r33.w = (uint)r20.w;
          r30.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r20.y).xyz;
          r36.xyz = (int3)r30.xzw & int3(-2147483648,-2147483648,-2147483648);
          r36.xyz = cmp((int3)r36.xyz == int3(2139095040,2139095040,2139095040));
          r20.y = (int)r36.y | (int)r36.x;
          r20.y = (int)r36.z | (int)r20.y;
          r30.xzw = r20.yyy ? float3(1,1,0) : r30.xzw;
          r36.x = dot(r17.yzw, r32.xyz);
          r36.y = dot(r17.yzw, r34.xyz);
          r36.z = dot(r17.yzw, r35.xyz);
          r17.yzw = saturate(r36.xyz * refProbeConstantsCB[r20.x].data[3].xyz + float3(0.5,0.5,0.5));
          r36.xy = refProbeConstantsCB[r20.x].data[4].zw * r17.yz;
          r36.z = refProbeConstantsCB[r20.x].data[5].x * r17.w;
          r17.yzw = refProbeConstantsCB[r20.x].data[5].yzw + r36.xyz;
          r33.x = dot(r11.xyz, r32.xyz);
          r33.y = dot(r11.xyz, r34.xyz);
          r33.z = dot(r11.xyz, r35.xyz);
          r20.xyw = cmp(float3(0,0,0) < r33.xyz);
          r19.z = r20.x ? 0 : 0.5;
          r32.xyz = r19.xyz + r17.yzw;
          r32.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
          r34.xyz = r33.xyz * r33.xyz;
          r34.xyz = r34.xyz * r18.xxx;
          r21.z = r20.y ? 0 : 0.5;
          r35.xyz = r21.xyz + r17.yzw;
          r35.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r35.xyz, 0).xyz;
          r35.xyz = r35.xyz * r34.yyy;
          r32.xyz = r32.xyz * r34.xxx + r35.xyz;
          r22.z = r20.w ? 0 : 0.5;
          r17.yzw = r22.xyz + r17.yzw;
          r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
          r17.yzw = r17.yzw * r34.zzz + r32.xyz;
          r20.xyw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
          r32.xyz = (int3)r20.xyw & int3(-2147483648,-2147483648,-2147483648);
          r32.xyz = cmp((int3)r32.xyz == int3(2139095040,2139095040,2139095040));
          r19.z = (int)r32.y | (int)r32.x;
          r19.z = (int)r32.z | (int)r19.z;
          r20.xyw = r19.zzz ? float3(1,1,0) : r20.xyw;
          r32.xyz = r20.xyw * r17.yzw;
          r19.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r26.xyz = r17.yzw * r20.xyw + r26.xyz;
          r17.y = r19.z * r4.w;
          r20.xyw = r30.xzw * r18.xxx;
          r17.z = dot(r20.xyw, float3(0.212599993,0.715200007,0.0722000003));
          r17.z = r4.w * r19.z + r17.z;
          r17.y = r17.y / r17.z;
          r27.xyz = r20.xyw * r17.yyy + r27.xyz;
        } else {
          r29.x = r28.x;
          r28.xz = r29.xy;
        }
      }
      r14.yzw = r26.xyz;
      r25.xyz = r27.xyz;
      r15.yz = r28.xz;
      r13.w = (int)r13.w + 32;
    }
    r2.z = cmp(r24.z >= 1);
    r4.z = (int)r24.w & 0x0000ff00;
    bitmask.z = ((~(-1 << 8)) << 0) & 0xffffffff;  r4.z = (((uint)r15.z << 0) & bitmask.z) | ((uint)r4.z & ~bitmask.z);
    r6.w = r2.z ? r4.z : r15.z;
    r2.z = max(1, r15.y);
    r2.z = rcp(r2.z);
    r15.y = saturate(r15.y);
    r17.xyz = r14.yzw * r2.zzz;
    r31.xyz = r25.xyz * r2.zzz;
    r4.z = cmp(r15.y < 0.99000001);
    if (r4.z != 0) {
      r6.w = (int)r6.w + 256;
      r4.z = 1 + -r15.y;
      r4.w = sunConstants.globalProbeExposure * r4.z;
      r15.yzw = -globalProbeConstants.data[0].xyz + r10.xyz;
      r18.x = globalProbeConstants.data[0].w * r15.y;
      r18.yz = globalProbeConstants.data[1].xy * r15.zw;
      r15.yzw = saturate(float3(0.5,0.5,0.5) + r18.xyz);
      r18.xy = globalProbeConstants.data[1].zw * r15.yz;
      r18.z = globalProbeConstants.data[2].x * r15.w;
      r15.yzw = globalProbeConstants.data[2].yzw + r18.xyz;
      r18.xyz = cmp(float3(0,0,0) < r11.xyz);
      r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r18.w = 0;
      r19.xyz = r18.wwx + r15.yzw;
      r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r20.xyz = r11.xyz * r11.xyz;
      r20.xyz = r20.xyz * r4.www;
      r21.xyz = r18.wwy + r15.yzw;
      r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
      r21.xyz = r21.xyz * r20.yyy;
      r19.xyz = r19.xyz * r20.xxx + r21.xyz;
      r15.yzw = r18.wwz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r20.zzz + r19.xyz;
      r11.w = 0;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
      r15.yzw = r18.xyz * r15.yzw;
      r4.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r17.xyz = r14.yzw * r2.zzz + r15.yzw;
      r16.w = 0;
      r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r2.w).xyz;
      r2.z = sunConstants.globalProbeExposure * r4.z + -r4.w;
      r2.z = r2.y * r2.z + r4.w;
      r31.xyz = r14.yzw * r2.zzz + r31.xyz;
    }
  } else {
    r17.xyz = float3(0,0,0);
  }
  r2.z = r2.x + r5.x;
  r2.z = log2(abs(r2.z));
  r2.z = r2.z * r1.z;
  r2.z = exp2(r2.z);
  r2.z = r2.z + r5.x;
  r2.z = saturate(-1 + r2.z);
  r14.yzw = r17.xyz * r5.xxx;
  r15.yzw = r3.zzz ? r14.yzw : 0;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r17.xyz = r31.xyz * r2.zzz;
  r18.xyz = r17.xyz * r2.yyy;
  r2.yzw = r17.xyz * r2.www;
  r4.z = sqrt(r1.z);
  r4.z = r4.z * 0.5 + 0.5;
  r4.z = r4.z * r4.z;
  r4.w = 0.5 * r4.z;
  r4.z = -r4.z * 0.5 + 1;
  r5.x = r2.x * r4.z + r4.w;
  r4.zw = r5.xx * r4.zw;
  r5.x = (uint)renderTargetSize.x;
  r5.x = (int)r5.x + 7;
  r5.x = (uint)r5.x >> 3;
  r5.x = mad((int)r0.y, (int)r5.x, (int)r0.x);
  r5.x = (uint)r5.x << 5;
  r7.w = ~(int)r0.z;
  r17.x = -r4.x;
  r2.x = -r2.x * 0.5 + 1;
  r19.x = 2;
  r10.w = 1;
  r20.x = 2;
  r21.z = 1;
  r22.w = 1;
  r23.w = 1;
  r24.w = 1;
  r17.z = r4.x;
  r25.w = 1;
  r17.yw = r13.xx;
  r4.y = r17.w;
  r13.y = r17.x;
  r26.x = r13.x;
  r26.y = r17.x;
  r26.z = r4.x;
  r13.z = r4.x;
  r27.w = 1;
  r28.x = r13.x;
  r28.y = r17.x;
  r28.z = r4.x;
  r29.x = r13.x;
  r29.y = r17.x;
  r29.z = r4.x;
  r30.xyz = r14.yzw;
  r31.xyz = r15.yzw;
  r32.xyz = r18.xyz;
  r33.xyz = r2.yzw;
  r8.w = enableDitheredShadow;
  r9.w = 0;
  r11.w = 0;
  while (true) {
    r12.w = cmp((uint)r11.w >= numLights);
    if (r12.w != 0) break;
    r12.w = (uint)r11.w >> 5;
    r12.w = (int)r5.x + (int)r12.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t26.xxxx
  r12.w = samplerLinear[]..swiz;
    r34.xyz = r30.xyz;
    r35.xyz = r31.xyz;
    r36.xyz = r32.xyz;
    r37.xyz = r33.xyz;
    r13.w = r8.w;
    r16.w = r9.w;
    r18.w = r12.w;
    while (true) {
      if (r18.w == 0) break;
      r21.w = firstbitlow((uint)r18.w);
      r26.w = 1 << (int)r21.w;
      r26.w = ~(int)r26.w;
      r18.w = (int)r18.w & (int)r26.w;
      r21.w = (int)r11.w + (int)r21.w;
      r21.w = (int)r21.w * 15;
      if (3 == 0) r26.w = 0; else if (3+24 < 32) {       r26.w = (uint)lightConstantsCB[r21.w].data[1].w << (32-(3 + 24)); r26.w = (uint)r26.w >> (32-3);      } else r26.w = (uint)lightConstantsCB[r21.w].data[1].w >> 24;
      r28.w = cmp((int)r26.w == 2);
      if (r28.w != 0) {
        if (3 == 0) r28.w = 0; else if (3+27 < 32) {         r28.w = (uint)lightConstantsCB[r21.w].data[1].w << (32-(3 + 27)); r28.w = (uint)r28.w >> (32-3);        } else r28.w = (uint)lightConstantsCB[r21.w].data[1].w >> 27;
        r29.w = (int)r16.w & 255;
        r30.w = cmp((uint)r29.w < 32);
        r30.w = r30.w ? r1.w : 0;
        if (r30.w != 0) {
          r29.w = mad((int)r29.w, 24, 112);
          r19.yzw = lightConstantsCB[r21.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r29.w = u2.xyzw;
        }
        r19.y = (int)r16.w + 1;
        r38.xy = lightConstantsCB[r21.w].data[3].zw + -r10.xy;
        r38.z = lightConstantsCB[r21.w].data[4].x + -r10.z;
        r19.z = dot(r38.xyz, r38.xyz);
        r19.z = rsqrt(r19.z);
        r39.xyz = r38.xyz * r19.zzz;
        r19.w = lightConstantsCB[r21.w].data[1].z * r0.w;
        r19.w = 0.25 * r19.w;
        r29.w = dot(r11.xyz, r39.xyz);
        r30.w = saturate(r29.w);
        r31.w = r3.z ? abs(r29.w) : r30.w;
        r32.w = cmp(0 < r31.w);
        if (r32.w != 0) {
          r39.xyz = lightConstantsCB[r21.w].data[7].yzw;
          r39.w = lightConstantsCB[r21.w].data[8].x;
          r32.w = dot(r39.xyzw, r10.xyzw);
          r33.w = cmp(r32.w < 1);
          if (r33.w != 0) {
            r40.xyz = float3(1,1,1);
            r33.w = 0;
          } else {
            r41.xyz = lightConstantsCB[r21.w].data[0].xyz + -r10.xyz;
            r34.w = lightConstantsCB[r21.w].data[3].x * lightConstantsCB[r21.w].data[3].x;
            r35.w = dot(r41.xyz, r41.xyz);
            r34.w = r34.w / r35.w;
            r34.w = min(1, r34.w);
            r41.xy = saturate(r32.ww * lightConstantsCB[r21.w].data[2].xz + lightConstantsCB[r21.w].data[2].yw);
            r41.zw = r41.xy * r41.xy;
            r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
            r41.xy = r41.zw * r41.xy;
            r34.w = r41.x * r34.w;
            r34.w = r34.w * r41.y;
            r41.xyz = lightConstantsCB[r21.w].data[4].yzw;
            r41.w = lightConstantsCB[r21.w].data[5].x;
            r41.x = dot(r41.xyzw, r10.xyzw);
            r42.xyz = lightConstantsCB[r21.w].data[5].yzw;
            r42.w = lightConstantsCB[r21.w].data[6].x;
            r41.y = dot(r42.xyzw, r10.xyzw);
            r21.xy = r41.xy / r32.ww;
            r32.w = cmp(lightConstantsCB[r21.w].data[10].w < 0.00048828125);
            if (r32.w != 0) {
              r41.xy = saturate(abs(r21.xy) * lightConstantsCB[r21.w].data[12].xy + lightConstantsCB[r21.w].data[12].zw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r32.w = r41.x * r41.y;
            } else {
              r41.xyzw = saturate(lightConstantsCB[r21.w].data[11].xyzw * abs(r21.yyxx));
              r41.xyzw = log2(r41.xyzw);
              r41.xyzw = lightConstantsCB[r21.w].data[12].zzzz * r41.xyzw;
              r41.xyzw = exp2(r41.xyzw);
              r41.xy = r41.xy + r41.zw;
              r41.xy = log2(r41.xy);
              r41.xy = lightConstantsCB[r21.w].data[12].ww * r41.xy;
              r41.xy = exp2(r41.xy);
              r35.w = lightConstantsCB[r21.w].data[12].x * r41.x;
              r36.w = lightConstantsCB[r21.w].data[12].y * r41.y + -1;
              r35.w = lightConstantsCB[r21.w].data[12].y * r41.y + -r35.w;
              r35.w = saturate(r36.w / r35.w);
              r36.w = r35.w * r35.w;
              r35.w = r35.w * -2 + 3;
              r32.w = r36.w * r35.w;
            }
            r33.w = r34.w * r32.w;
            r32.w = 255 & (int)lightConstantsCB[r21.w].data[14].w;
            if (r32.w != 0) {
              r34.w = dot(lightConstantsCB[r21.w].data[13].xyz, r21.xyz);
              r41.x = lightConstantsCB[r21.w].data[13].w;
              r41.yz = lightConstantsCB[r21.w].data[14].xy;
              r21.x = dot(r41.xyz, r21.xyz);
              r41.x = frac(r34.w);
              r41.y = frac(r21.x);
              r21.x = (int)r32.w + -1;
              r41.z = (uint)r21.x;
              r40.xyz = gCookieArray.SampleLevel(samplerLinear_s, r41.xyz, 0).xyz;
            } else {
              r40.xyz = float3(1,1,1);
            }
          }
          r41.x = lightConstantsCB[r21.w].data[0].w;
          r41.yz = lightConstantsCB[r21.w].data[1].xy;
          r40.xyz = r41.xyz * r40.xyz;
          r21.x = cmp(0 < r33.w);
          if (r21.x != 0) {
            r21.x = (int)r19.y & 255;
            r21.y = (int)r21.x + -1;
            r21.y = cmp((uint)r21.y < 32);
            r21.y = r21.y ? r1.w : 0;
            if (r21.y != 0) {
              r21.xy = mad((int2)r21.xx, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r32.w, cb2[52].x, r21.x, u2.xxxx
            r32.w = samplerLinear[]..swiz;
              r32.w = (int)r32.w | 4;
              GBufferDiffuseColor[viewID].r21.x = u2.x;
              GBufferDiffuseColor[viewID].r21.y = u2.x;
            }
            r21.x = (int)r16.w + 257;
            r21.y = cmp((int)r28.w != 1);
            if (r21.y != 0) {
              r21.y = abs(r29.w) * -0.200000003 + 0.400000006;
              r28.w = cmp(r29.w < 0);
              r28.w = r3.z ? r28.w : 0;
              r21.y = r28.w ? -r21.y : r21.y;
              r22.xyz = r11.xyz * r21.yyy + r10.xyz;
              r41.xyz = lightConstantsCB[r21.w].data[6].yzw;
              r41.w = lightConstantsCB[r21.w].data[7].x;
              r21.y = dot(r41.xyzw, r22.xyzw);
              r28.w = dot(r39.xyzw, r22.xyzw);
              r32.w = cmp(r28.w >= r21.y);
              if (r32.w != 0) {
                r39.xyz = lightConstantsCB[r21.w].data[4].yzw;
                r39.w = lightConstantsCB[r21.w].data[5].x;
                r39.x = dot(r39.xyzw, r22.xyzw);
                r41.xyz = lightConstantsCB[r21.w].data[5].yzw;
                r41.w = lightConstantsCB[r21.w].data[6].x;
                r39.y = dot(r41.xyzw, r22.xyzw);
                r22.xy = r39.xy / r28.ww;
                r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r39.x = r22.x * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                r39.y = r22.y * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                r21.y = r21.y / r28.w;
                r21.y = max(6.10351563e-05, r21.y);
                r22.x = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                if (r13.w != 0) {
                  r41.z = (uint)r22.x;
                  r22.yz = float2(0,0);
                  while (true) {
                    r28.w = cmp((int)r22.z >= 8);
                    if (r28.w != 0) break;
                    r42.x = dot(icb[r22.z+0].yx, r17.xy);
                    r42.y = dot(icb[r22.z+0].yx, r17.yz);
                    r41.xy = r42.xy * lightConstantsCB[r21.w].data[3].yy + r39.xy;
                    r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r21.y).x;
                    r22.y = r28.w * 0.125 + r22.y;
                    r22.z = (int)r22.z + 1;
                  }
                } else {
                  r39.z = (uint)r22.x;
                  r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r21.y).x;
                }
                r21.y = r22.y * r22.y;
                r21.y = r21.y * r22.y;
              } else {
                r21.y = 1;
              }
            } else {
              r21.y = 1;
            }
            r21.y = r33.w * r21.y;
            r22.x = cmp(0 < r21.y);
            if (r22.x != 0) {
              if (4 == 0) r22.x = 0; else if (4+16 < 32) {               r22.x = (uint)lightConstantsCB[r21.w].data[1].w << (32-(4 + 16)); r22.x = (uint)r22.x >> (32-4);              } else r22.x = (uint)lightConstantsCB[r21.w].data[1].w >> 16;
              r22.z = cmp(0 < (uint)r22.x);
              r22.z = r0.z ? r22.z : 0;
              if (r22.z != 0) {
                r22.x = (int)r22.x + numLights;
                r22.x = mad((int)r22.x, 15, -15);
                r22.z = abs(r29.w) * -0.200000003 + 0.400000006;
                r28.w = cmp(r29.w < 0);
                r28.w = r3.z ? r28.w : 0;
                r22.z = r28.w ? -r22.z : r22.z;
                r23.xyz = r11.xyz * r22.zzz + r10.xyz;
                r39.xyz = lightConstantsCB[r22.x].data[6].yzw;
                r39.w = lightConstantsCB[r22.x].data[7].x;
                r22.z = dot(r39.xyzw, r23.xyzw);
                r39.xyz = lightConstantsCB[r22.x].data[7].yzw;
                r39.w = lightConstantsCB[r22.x].data[8].x;
                r28.w = dot(r39.xyzw, r23.xyzw);
                r32.w = cmp(r28.w < r22.z);
                if (r32.w == 0) {
                  r39.xyz = lightConstantsCB[r22.x].data[4].yzw;
                  r39.w = lightConstantsCB[r22.x].data[5].x;
                  r39.x = dot(r39.xyzw, r23.xyzw);
                  r41.xyz = lightConstantsCB[r22.x].data[5].yzw;
                  r41.w = lightConstantsCB[r22.x].data[6].x;
                  r39.y = dot(r41.xyzw, r23.xyzw);
                  r23.xy = r39.xy / r28.ww;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r39.x = lightConstantsCB[r22.x].data[9].w + r23.x;
                  r39.y = lightConstantsCB[r22.x].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r22.x].data[9].yz * r39.xy;
                  r39.xy = lightConstantsCB[r22.x].data[3].yy / lightConstantsCB[r22.x].data[8].yw;
                  r39.zw = float2(1,1) + -r39.xy;
                  r39.zw = cmp(r23.xy >= r39.zw);
                  r39.xy = cmp(r39.xy >= r23.xy);
                  r39.xy = (int2)r39.xy | (int2)r39.zw;
                  r23.z = (int)r39.y | (int)r39.x;
                  if (r23.z == 0) {
                    r23.xy = saturate(r23.xy);
                    r39.x = r23.x * lightConstantsCB[r22.x].data[8].y + lightConstantsCB[r22.x].data[8].z;
                    r39.y = r23.y * lightConstantsCB[r22.x].data[8].w + lightConstantsCB[r22.x].data[9].x;
                    r23.x = lightConstantsCB[r22.x].data[10].z * r28.w;
                    r22.z = lightConstantsCB[r22.x].data[10].y * r28.w + r22.z;
                    r22.z = r22.z / r23.x;
                  }
                } else {
                  r23.z = -1;
                }
                r23.x = (int)r32.w | (int)r23.z;
                if (r23.x == 0) {
                  r22.z = max(6.10351563e-05, r22.z);
                  r23.x = 0x0000ffff & (int)lightConstantsCB[r22.x].data[1].w;
                  if (r13.w != 0) {
                    r41.z = (uint)r23.x;
                    r23.yz = float2(0,0);
                    while (true) {
                      r28.w = cmp((int)r23.z >= 8);
                      if (r28.w != 0) break;
                      r42.x = dot(icb[r23.z+0].yx, r17.xw);
                      r42.y = dot(icb[r23.z+0].xy, r4.xy);
                      r41.xy = r42.xy * lightConstantsCB[r22.x].data[3].yy + r39.xy;
                      r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r22.z).x;
                      r23.y = r28.w * 0.125 + r23.y;
                      r23.z = (int)r23.z + 1;
                    }
                  } else {
                    r39.z = (uint)r23.x;
                    r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r22.z).x;
                  }
                  r22.x = r23.y * r23.y;
                  r22.x = r22.x * r23.y;
                } else {
                  r22.x = 1;
                }
                r21.y = r22.x * r21.y;
              } else {
                if (4 == 0) r22.x = 0; else if (4+20 < 32) {                 r22.x = (uint)lightConstantsCB[r21.w].data[1].w << (32-(4 + 20)); r22.x = (uint)r22.x >> (32-4);                } else r22.x = (uint)lightConstantsCB[r21.w].data[1].w >> 20;
                r22.z = cmp(0 < (uint)r22.x);
                r22.z = r22.z ? r7.w : 0;
                if (r22.z != 0) {
                  r22.x = (int)r22.x + numLights;
                  r22.x = mad((int)r22.x, 15, -15);
                  r22.z = abs(r29.w) * -0.200000003 + 0.400000006;
                  r23.x = cmp(r29.w < 0);
                  r23.x = r3.z ? r23.x : 0;
                  r22.z = r23.x ? -r22.z : r22.z;
                  r24.xyz = r11.xyz * r22.zzz + r10.xyz;
                  r39.xyz = lightConstantsCB[r22.x].data[6].yzw;
                  r39.w = lightConstantsCB[r22.x].data[7].x;
                  r22.z = dot(r39.xyzw, r24.xyzw);
                  r39.xyz = lightConstantsCB[r22.x].data[7].yzw;
                  r39.w = lightConstantsCB[r22.x].data[8].x;
                  r23.x = dot(r39.xyzw, r24.xyzw);
                  r23.z = cmp(r23.x < r22.z);
                  if (r23.z == 0) {
                    r39.xyz = lightConstantsCB[r22.x].data[4].yzw;
                    r39.w = lightConstantsCB[r22.x].data[5].x;
                    r39.x = dot(r39.xyzw, r24.xyzw);
                    r41.xyz = lightConstantsCB[r22.x].data[5].yzw;
                    r41.w = lightConstantsCB[r22.x].data[6].x;
                    r39.y = dot(r41.xyzw, r24.xyzw);
                    r24.xy = r39.xy / r23.xx;
                    r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r39.x = lightConstantsCB[r22.x].data[9].w + r24.x;
                    r39.y = lightConstantsCB[r22.x].data[10].x + r24.y;
                    r24.xy = lightConstantsCB[r22.x].data[9].yz * r39.xy;
                    r39.xy = lightConstantsCB[r22.x].data[3].yy / lightConstantsCB[r22.x].data[8].yw;
                    r39.zw = float2(1,1) + -r39.xy;
                    r39.zw = cmp(r24.xy >= r39.zw);
                    r39.xy = cmp(r39.xy >= r24.xy);
                    r39.xy = (int2)r39.xy | (int2)r39.zw;
                    r24.z = (int)r39.y | (int)r39.x;
                    if (r24.z == 0) {
                      r24.xy = saturate(r24.xy);
                      r39.x = r24.x * lightConstantsCB[r22.x].data[8].y + lightConstantsCB[r22.x].data[8].z;
                      r39.y = r24.y * lightConstantsCB[r22.x].data[8].w + lightConstantsCB[r22.x].data[9].x;
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
                    if (r13.w != 0) {
                      r24.z = (uint)r23.x;
                      r23.z = 0;
                      r28.w = 0;
                      while (true) {
                        r32.w = cmp((int)r28.w >= 8);
                        if (r32.w != 0) break;
                        r41.x = dot(icb[r28.w+0].xy, r26.xy);
                        r41.y = dot(icb[r28.w+0].yx, r26.xz);
                        r24.xy = r41.xy * lightConstantsCB[r22.x].data[3].yy + r39.xy;
                        r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r22.z).x;
                        r23.z = r24.x * 0.125 + r23.z;
                        r28.w = (int)r28.w + 1;
                      }
                    } else {
                      r39.z = (uint)r23.x;
                      r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r22.z).x;
                    }
                    r22.x = r23.z * r23.z;
                    r22.x = r22.x * r23.z;
                  } else {
                    r22.x = 1;
                  }
                  r21.y = r22.x * r21.y;
                }
              }
              r22.x = -r31.w * r2.x + 1;
              r22.x = r22.x * r22.x;
              r22.x = -r22.x * 0.620000005 + 0.620000005;
              r22.x = r22.x + -r31.w;
              r22.x = r1.z * r22.x + r31.w;
              r22.x = r22.x * r21.y;
              r22.z = cmp(0 < r29.w);
              r24.xyz = r22.xxx * r40.xyz + r34.xyz;
              r38.xyz = r38.xyz * r19.zzz + r12.xyz;
              r19.z = dot(r38.xyz, r38.xyz);
              r19.z = rsqrt(r19.z);
              r38.xyz = r38.xyz * r19.zzz;
              r19.z = dot(r38.xyz, r12.xyz);
              r23.x = dot(r11.xyz, r38.xyz);
              r28.w = abs(r23.x) * r0.w + -abs(r23.x);
              r23.x = abs(r23.x) * r28.w + 1;
              r28.w = r30.w * r4.z + r4.w;
              r23.x = r23.x * r23.x;
              r23.x = r23.x * r28.w;
              r23.x = rcp(r23.x);
              r19.w = r30.w * r19.w;
              r19.w = r23.x * r19.w;
              r19.w = r19.w * r21.y;
              r38.xyz = r19.www * r40.xyz + r37.xyz;
              r19.z = saturate(1 + -r19.z);
              r23.x = r19.z * r19.z;
              r23.x = r23.x * r23.x;
              r19.z = r23.x * r19.z;
              r19.z = r19.w * r19.z;
              r39.xyz = r19.zzz * r40.xyz + r36.xyz;
              r40.xyz = r22.xxx * r40.xyz + r35.xyz;
              r40.xyz = r3.zzz ? r40.xyz : r35.xyz;
              r34.xyz = r22.zzz ? r24.xyz : r34.xyz;
              r35.xyz = r22.zzz ? r35.xyz : r40.xyz;
              r36.xyz = r22.zzz ? r39.xyz : r36.xyz;
              r37.xyz = r22.zzz ? r38.xyz : r37.xyz;
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
              r16.w = (int)r16.w + 0x00010101;
            } else {
              r16.w = r21.x;
            }
          } else {
            r16.w = r19.y;
          }
        } else {
          r16.w = r19.y;
        }
      } else {
        r19.y = cmp((int)r26.w == 4);
        if (r19.y != 0) {
          if (3 == 0) r19.y = 0; else if (3+27 < 32) {           r19.y = (uint)lightConstantsCB[r21.w].data[1].w << (32-(3 + 27)); r19.y = (uint)r19.y >> (32-3);          } else r19.y = (uint)lightConstantsCB[r21.w].data[1].w >> 27;
          r19.z = (int)r16.w & 255;
          r19.w = cmp((uint)r19.z < 32);
          r19.w = r19.w ? r1.w : 0;
          if (r19.w != 0) {
            r19.z = mad((int)r19.z, 24, 112);
            r20.yzw = lightConstantsCB[r21.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r19.z = u2.xyzw;
          }
          r19.z = (int)r16.w + 1;
          r19.w = lightConstantsCB[r21.w].data[1].z * r0.w;
          r19.w = 0.25 * r19.w;
          r20.y = cmp(0 < lightConstantsCB[r21.w].data[6].y);
          r24.xy = lightConstantsCB[r21.w].data[5].zw;
          r24.z = lightConstantsCB[r21.w].data[6].x;
          r38.xyz = -r24.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r21.w].data[0].xyz;
          r39.xyz = r38.xyz + -r10.xyz;
          r20.z = dot(r24.xyz, r16.xyz);
          r20.w = dot(r24.xyz, r39.xyz);
          r21.x = dot(r16.xyz, r39.xyz);
          r21.y = -r20.z * r20.z + lightConstantsCB[r21.w].data[6].y;
          r20.z = r20.z * r21.x + -r20.w;
          r20.w = saturate(-r20.w / lightConstantsCB[r21.w].data[6].y);
          r20.z = saturate(r20.z / r21.y);
          r21.x = r21.y / lightConstantsCB[r21.w].data[6].y;
          r21.x = 10 * r21.x;
          r21.x = min(1, r21.x);
          r20.z = r20.z + -r20.w;
          r20.z = r21.x * r20.z + r20.w;
          r39.xyz = r20.zzz * r24.xyz + r38.xyz;
          r24.xyz = r20.www * r24.xyz + r38.xyz;
          r24.xyz = r20.yyy ? r24.xyz : lightConstantsCB[r21.w].data[0].xyz;
          r20.yzw = r20.yyy ? r39.xyz : lightConstantsCB[r21.w].data[0].xyz;
          r20.yzw = r20.yzw + -r10.xyz;
          r24.xyz = r24.xyz + -r10.xyz;
          r21.x = dot(r20.yzw, r20.yzw);
          r21.x = rsqrt(r21.x);
          r38.xyz = r21.xxx * r20.yzw;
          r21.y = dot(r24.xyz, r24.xyz);
          r22.x = rsqrt(r21.y);
          r24.xyz = r24.xyz * r22.xxx;
          r22.x = dot(r11.xyz, r24.xyz);
          r22.z = saturate(r22.x);
          r22.z = r3.z ? abs(r22.x) : r22.z;
          r23.x = cmp(0 < r22.z);
          if (r23.x != 0) {
            r23.x = sqrt(r21.y);
            r24.x = lightConstantsCB[r21.w].data[3].x * lightConstantsCB[r21.w].data[3].x;
            r21.y = r24.x / r21.y;
            r21.y = min(1, r21.y);
            r24.xy = saturate(r23.xx * lightConstantsCB[r21.w].data[2].xz + lightConstantsCB[r21.w].data[2].yw);
            r39.xy = r24.xy * r24.xy;
            r24.xy = r24.xy * float2(-2,-2) + float2(3,3);
            r24.xy = r39.xy * r24.xy;
            r21.y = r24.x * r21.y;
            r21.y = r21.y * r24.y;
            r23.x = cmp(0 < r21.y);
            if (r23.x != 0) {
              r23.x = (int)r19.z & 255;
              r24.x = (int)r23.x + -1;
              r24.x = cmp((uint)r24.x < 32);
              r24.x = r24.x ? r1.w : 0;
              if (r24.x != 0) {
                r24.xy = mad((int2)r23.xx, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r23.x, cb2[52].x, r24.x, u2.xxxx
              r23.x = samplerLinear[]..swiz;
                r23.x = (int)r23.x | 4;
                GBufferDiffuseColor[viewID].r24.x = u2.x;
                GBufferDiffuseColor[viewID].r24.y = u2.x;
              }
              r23.x = (int)r16.w + 257;
              r19.y = cmp((int)r19.y != 1);
              if (r19.y != 0) {
                r19.y = abs(r22.x) * -0.200000003 + 0.400000006;
                r24.x = cmp(r22.x < 0);
                r24.x = r3.z ? r24.x : 0;
                r19.y = r24.x ? -r19.y : r19.y;
                r24.xyz = r11.xyz * r19.yyy + r10.xyz;
                r24.xyz = -lightConstantsCB[r21.w].data[4].yzw + r24.xyz;
                r19.y = max(abs(r24.y), abs(r24.z));
                r19.y = max(abs(r24.x), r19.y);
                r19.y = lightConstantsCB[r21.w].data[5].x / r19.y;
                r19.y = lightConstantsCB[r21.w].data[5].y + r19.y;
                r26.w = dot(r24.xyz, r24.xyz);
                r26.w = rsqrt(r26.w);
                r19.y = max(6.10351563e-05, r19.y);
                r28.w = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                r39.w = (uint)r28.w;
                r28.w = 0;
                r29.w = 0;
                while (true) {
                  r30.w = cmp((int)r29.w >= 8);
                  if (r30.w != 0) break;
                  r40.y = dot(icb[r29.w+0].xy, r13.xy);
                  r40.z = dot(icb[r29.w+0].yx, r13.xz);
                  r40.yz = lightConstantsCB[r21.w].data[3].yy * r40.yz;
                  r40.x = r40.y * r15.x;
                  r40.w = r40.y * r14.x;
                  r39.xyz = r24.xyz * r26.www + r40.xzw;
                  r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyzw, r19.y).x;
                  r28.w = r30.w * 0.125 + r28.w;
                  r29.w = (int)r29.w + 1;
                }
              } else {
                r28.w = 1;
              }
              r19.y = r28.w * r21.y;
              r21.y = cmp(0 < r19.y);
              if (r21.y != 0) {
                if (4 == 0) r21.y = 0; else if (4+16 < 32) {                 r21.y = (uint)lightConstantsCB[r21.w].data[1].w << (32-(4 + 16)); r21.y = (uint)r21.y >> (32-4);                } else r21.y = (uint)lightConstantsCB[r21.w].data[1].w >> 16;
                r24.x = cmp(0 < (uint)r21.y);
                r24.x = r0.z ? r24.x : 0;
                if (r24.x != 0) {
                  r21.y = (int)r21.y + numLights;
                  r21.y = mad((int)r21.y, 15, -15);
                  r24.x = abs(r22.x) * -0.200000003 + 0.400000006;
                  r24.y = cmp(r22.x < 0);
                  r24.y = r3.z ? r24.y : 0;
                  r24.x = r24.y ? -r24.x : r24.x;
                  r25.xyz = r11.xyz * r24.xxx + r10.xyz;
                  r39.xyz = lightConstantsCB[r21.y].data[6].yzw;
                  r39.w = lightConstantsCB[r21.y].data[7].x;
                  r24.x = dot(r39.xyzw, r25.xyzw);
                  r39.xyz = lightConstantsCB[r21.y].data[7].yzw;
                  r39.w = lightConstantsCB[r21.y].data[8].x;
                  r24.y = dot(r39.xyzw, r25.xyzw);
                  r24.z = cmp(r24.y < r24.x);
                  if (r24.z == 0) {
                    r39.xyz = lightConstantsCB[r21.y].data[4].yzw;
                    r39.w = lightConstantsCB[r21.y].data[5].x;
                    r39.x = dot(r39.xyzw, r25.xyzw);
                    r40.xyz = lightConstantsCB[r21.y].data[5].yzw;
                    r40.w = lightConstantsCB[r21.y].data[6].x;
                    r39.y = dot(r40.xyzw, r25.xyzw);
                    r25.xy = r39.xy / r24.yy;
                    r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r39.x = lightConstantsCB[r21.y].data[9].w + r25.x;
                    r39.y = lightConstantsCB[r21.y].data[10].x + r25.y;
                    r25.xy = lightConstantsCB[r21.y].data[9].yz * r39.xy;
                    r39.xy = lightConstantsCB[r21.y].data[3].yy / lightConstantsCB[r21.y].data[8].yw;
                    r39.zw = float2(1,1) + -r39.xy;
                    r39.zw = cmp(r25.xy >= r39.zw);
                    r39.xy = cmp(r39.xy >= r25.xy);
                    r39.xy = (int2)r39.xy | (int2)r39.zw;
                    r25.z = (int)r39.y | (int)r39.x;
                    if (r25.z == 0) {
                      r25.xy = saturate(r25.xy);
                      r39.x = r25.x * lightConstantsCB[r21.y].data[8].y + lightConstantsCB[r21.y].data[8].z;
                      r39.y = r25.y * lightConstantsCB[r21.y].data[8].w + lightConstantsCB[r21.y].data[9].x;
                      r25.x = lightConstantsCB[r21.y].data[10].z * r24.y;
                      r24.x = lightConstantsCB[r21.y].data[10].y * r24.y + r24.x;
                      r24.x = r24.x / r25.x;
                    }
                  } else {
                    r25.z = -1;
                  }
                  r24.y = (int)r24.z | (int)r25.z;
                  if (r24.y == 0) {
                    r24.x = max(6.10351563e-05, r24.x);
                    r24.y = 0x0000ffff & (int)lightConstantsCB[r21.y].data[1].w;
                    if (r13.w != 0) {
                      r25.z = (uint)r24.y;
                      r24.z = 0;
                      r26.w = 0;
                      while (true) {
                        r29.w = cmp((int)r26.w >= 8);
                        if (r29.w != 0) break;
                        r40.x = dot(icb[r26.w+0].xy, r28.xy);
                        r40.y = dot(icb[r26.w+0].yx, r28.xz);
                        r25.xy = r40.xy * lightConstantsCB[r21.y].data[3].yy + r39.xy;
                        r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r24.x).x;
                        r24.z = r25.x * 0.125 + r24.z;
                        r26.w = (int)r26.w + 1;
                      }
                    } else {
                      r39.z = (uint)r24.y;
                      r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r24.x).x;
                    }
                    r21.y = r24.z * r24.z;
                    r21.y = r21.y * r24.z;
                  } else {
                    r21.y = 1;
                  }
                  r19.y = r21.y * r19.y;
                } else {
                  if (4 == 0) r21.y = 0; else if (4+20 < 32) {                   r21.y = (uint)lightConstantsCB[r21.w].data[1].w << (32-(4 + 20)); r21.y = (uint)r21.y >> (32-4);                  } else r21.y = (uint)lightConstantsCB[r21.w].data[1].w >> 20;
                  r24.x = cmp(0 < (uint)r21.y);
                  r24.x = r24.x ? r7.w : 0;
                  if (r24.x != 0) {
                    r21.y = (int)r21.y + numLights;
                    r21.y = mad((int)r21.y, 15, -15);
                    r24.x = abs(r22.x) * -0.200000003 + 0.400000006;
                    r24.y = cmp(r22.x < 0);
                    r24.y = r3.z ? r24.y : 0;
                    r24.x = r24.y ? -r24.x : r24.x;
                    r27.xyz = r11.xyz * r24.xxx + r10.xyz;
                    r39.xyz = lightConstantsCB[r21.y].data[6].yzw;
                    r39.w = lightConstantsCB[r21.y].data[7].x;
                    r24.x = dot(r39.xyzw, r27.xyzw);
                    r39.xyz = lightConstantsCB[r21.y].data[7].yzw;
                    r39.w = lightConstantsCB[r21.y].data[8].x;
                    r24.y = dot(r39.xyzw, r27.xyzw);
                    r25.x = cmp(r24.y < r24.x);
                    if (r25.x == 0) {
                      r39.xyz = lightConstantsCB[r21.y].data[4].yzw;
                      r39.w = lightConstantsCB[r21.y].data[5].x;
                      r39.x = dot(r39.xyzw, r27.xyzw);
                      r40.xyz = lightConstantsCB[r21.y].data[5].yzw;
                      r40.w = lightConstantsCB[r21.y].data[6].x;
                      r39.y = dot(r40.xyzw, r27.xyzw);
                      r25.yz = r39.xy / r24.yy;
                      r25.yz = r25.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                      r27.x = lightConstantsCB[r21.y].data[9].w + r25.y;
                      r27.y = lightConstantsCB[r21.y].data[10].x + r25.z;
                      r25.yz = lightConstantsCB[r21.y].data[9].yz * r27.xy;
                      r27.xy = lightConstantsCB[r21.y].data[3].yy / lightConstantsCB[r21.y].data[8].yw;
                      r39.xy = float2(1,1) + -r27.xy;
                      r39.xy = cmp(r25.yz >= r39.xy);
                      r27.xy = cmp(r27.xy >= r25.yz);
                      r27.xy = (int2)r27.xy | (int2)r39.xy;
                      r26.w = (int)r27.y | (int)r27.x;
                      if (r26.w == 0) {
                        r25.yz = saturate(r25.yz);
                        r27.x = r25.y * lightConstantsCB[r21.y].data[8].y + lightConstantsCB[r21.y].data[8].z;
                        r27.y = r25.z * lightConstantsCB[r21.y].data[8].w + lightConstantsCB[r21.y].data[9].x;
                        r25.y = lightConstantsCB[r21.y].data[10].z * r24.y;
                        r24.x = lightConstantsCB[r21.y].data[10].y * r24.y + r24.x;
                        r24.x = r24.x / r25.y;
                      }
                    } else {
                      r26.w = -1;
                    }
                    r24.y = (int)r25.x | (int)r26.w;
                    if (r24.y == 0) {
                      r24.x = max(6.10351563e-05, r24.x);
                      r24.y = 0x0000ffff & (int)lightConstantsCB[r21.y].data[1].w;
                      if (r13.w != 0) {
                        r25.z = (uint)r24.y;
                        r26.w = 0;
                        r29.w = 0;
                        while (true) {
                          r30.w = cmp((int)r29.w >= 8);
                          if (r30.w != 0) break;
                          r39.x = dot(icb[r29.w+0].xy, r29.xy);
                          r39.y = dot(icb[r29.w+0].yx, r29.xz);
                          r25.xy = r39.xy * lightConstantsCB[r21.y].data[3].yy + r27.xy;
                          r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r24.x).x;
                          r26.w = r25.x * 0.125 + r26.w;
                          r29.w = (int)r29.w + 1;
                        }
                      } else {
                        r27.z = (uint)r24.y;
                        r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r24.x).x;
                      }
                      r21.y = r26.w * r26.w;
                      r21.y = r21.y * r26.w;
                    } else {
                      r21.y = 1;
                    }
                    r19.y = r21.y * r19.y;
                  }
                }
                r21.y = -r22.z * r2.x + 1;
                r21.y = r21.y * r21.y;
                r21.y = -r21.y * 0.620000005 + 0.620000005;
                r21.y = r21.y + -r22.z;
                r21.y = r1.z * r21.y + r22.z;
                r21.y = r21.y * r19.y;
                r25.x = lightConstantsCB[r21.w].data[0].w;
                r25.yz = lightConstantsCB[r21.w].data[1].xy;
                r21.w = cmp(0 < r22.x);
                r27.xyz = r21.yyy * r25.xyz + r34.xyz;
                r22.x = saturate(dot(r11.xyz, r38.xyz));
                r20.yzw = r20.yzw * r21.xxx + r12.xyz;
                r21.x = dot(r20.yzw, r20.yzw);
                r21.x = rsqrt(r21.x);
                r20.yzw = r21.xxx * r20.yzw;
                r21.x = dot(r20.yzw, r12.xyz);
                r20.y = dot(r11.xyz, r20.yzw);
                r20.z = abs(r20.y) * r0.w + -abs(r20.y);
                r20.y = abs(r20.y) * r20.z + 1;
                r20.z = r22.x * r4.z + r4.w;
                r20.y = r20.y * r20.y;
                r20.y = r20.y * r20.z;
                r20.y = rcp(r20.y);
                r19.w = r22.x * r19.w;
                r19.w = r20.y * r19.w;
                r19.w = r19.w * r19.y;
                r20.yzw = r19.www * r25.xyz + r37.xyz;
                r21.x = saturate(1 + -r21.x);
                r22.x = r21.x * r21.x;
                r22.x = r22.x * r22.x;
                r21.x = r22.x * r21.x;
                r19.w = r21.x * r19.w;
                r38.xyz = r19.www * r25.xyz + r36.xyz;
                r25.xyz = r21.yyy * r25.xyz + r35.xyz;
                r25.xyz = r3.zzz ? r25.xyz : r35.xyz;
                r34.xyz = r21.www ? r27.xyz : r34.xyz;
                r35.xyz = r21.www ? r35.xyz : r25.xyz;
                r36.xyz = r21.www ? r38.xyz : r36.xyz;
                r37.xyz = r21.www ? r20.yzw : r37.xyz;
                r19.w = (int)r23.x & 255;
                r20.y = (int)r19.w + -1;
                r20.y = cmp((uint)r20.y < 32);
                r20.y = r20.y ? r1.w : 0;
                if (r20.y != 0) {
                  r20.yz = mad((int2)r19.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.w, cb2[52].x, r20.y, u2.xxxx
                r19.w = samplerLinear[]..swiz;
                  r19.w = (int)r19.w | 8;
                  GBufferDiffuseColor[viewID].r20.y = u2.x;
                  GBufferDiffuseColor[viewID].r20.z = u2.x;
                }
                r16.w = (int)r16.w + 0x00010101;
              } else {
                r16.w = r23.x;
              }
            } else {
              r16.w = r19.z;
            }
          } else {
            r16.w = r19.z;
          }
        }
      }
    }
    r30.xyz = r34.xyz;
    r31.xyz = r35.xyz;
    r32.xyz = r36.xyz;
    r33.xyz = r37.xyz;
    r9.w = r16.w;
    r11.w = (int)r11.w + 32;
  }
  r2.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r2.y;
  r3.xyw = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r3.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r3.xy = r0.ww ? r3.yw : float2(-1,0);
  r4.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r4.xy = r0.ww ? r4.yz : float2(-1,0);
  r6.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r4.zw = r0.ww ? r6.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.z = cmp((int)r0.z == (int)r0.w);
  r0.zw = r0.zz ? r6.yz : float2(-1,0);
  r7.x = r3.x;
  r7.yz = r4.xz;
  r7.w = r0.z;
  r7.xyzw = r7.xyzw + -r2.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r7.x + r7.y;
  r0.z = r0.z + r7.z;
  r0.z = r0.z + r7.w;
  r1.z = r7.y * r4.y;
  r1.z = r7.x * r3.y + r1.z;
  r1.z = r7.z * r4.w + r1.z;
  r0.w = r7.w * r0.w + r1.z;
  r2.w = r0.w / r0.z;
  r0.z = cmp(0 >= r0.z);
  r2.yz = r0.zz ? float2(0,0) : r2.zw;
  r0.zw = (int2)r1.xy & int2(1,1);
  r0.z = cmp((int)r0.w == (int)r0.z);
  r2.xyz = r0.zzz ? r2.xyz : r2.xzy;
  r0.z = -r2.z * 0.5 + r2.x;
  r4.y = r2.z + r0.z;
  r4.z = -r2.y * 0.5 + r0.z;
  r4.x = r4.z + r2.y;
  r2.xyz = r30.xyz * r5.yzw;
  r2.xyz = r31.xyz * r4.xyz + r2.xyz;
  r3.xyw = float3(0.959999979,0.959999979,0.959999979) * r32.xyz;
  r3.xyw = r33.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r3.xyw;
  r2.xyz = r3.xyw + r2.xyz;
  r3.xyw = float3(1,1,1) + -r4.xyz;
  r3.xyw = r32.xyz * r3.xyw;
  r3.xyw = r33.xyz * r4.xyz + r3.xyw;
  r3.xyw = r30.xyz * r5.yzw + r3.xyw;
  r2.xyz = r3.zzz ? r2.xyz : r3.xyw;
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