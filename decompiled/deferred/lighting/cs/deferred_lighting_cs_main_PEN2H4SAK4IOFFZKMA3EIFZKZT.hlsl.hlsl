// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:48 2021

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
Texture2DArray<float> gSunShadowmapArray : register(t13);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
StructuredBuffer<gPermutedTilingBuffer> gPermutedTilingBuffer : register(t25);
StructuredBuffer<gDeferredCullBits> gDeferredCullBits : register(t26);
Texture2D<float> gSSAOTexture : register(t27);
Texture2D<float> gSSAODepthTexture : register(t28);
Texture2DArray<float> gTransShadowmapArray : register(t31);


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
// unknown dcl_: dcl_resource_structured t23, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t25, 8
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t26, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41;
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
  r0.x = mad(permuteStride, 40, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
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
  r1.z = dot(r3.yz, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r13.x, r14.x);
  r1.zw = (uint2)r1.yx;
  r1.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r15.x, r16.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.z = dot(-r12.xyz, r11.xyz);
  r1.z = r1.z + r1.z;
  r17.xyz = r11.xyz * -r1.zzz + -r12.xyz;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r2.z = r2.w ? r2.z : 0;
  r2.w = dot(r11.xyz, sunConstants.wldDir.xyz);
  r3.y = saturate(r2.w);
  r3.z = cmp(0 >= r3.y);
  if (r3.z != 0) {
    r3.w = 0;
  }
  if (r3.z == 0) {
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r5.yyy;
    r15.yzw = r5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.yzw;
    r15.yzw = r5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.yzw;
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.yzw;
    r3.z = -sunConstants.splitDepthOffset + r15.w;
    r3.z = -r3.z * 6.10351563e-05 + 1;
    r6.w = saturate(r3.z);
    r6.w = cmp(r3.z == r6.w);
    if (r6.w != 0) {
      r6.w = 0;
      r7.w = 0;
      while (true) {
        r8.w = cmp(r6.w >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r6.w;
        r13.zw = -sunConstants.splitPinTransform[r8.w].xy + r15.yz;
        r9.w = max(abs(r13.z), abs(r13.w));
        r7.w = sunConstants.splitPinTransform[r8.w].z * r9.w;
        r8.w = cmp(r7.w < 1);
        if (r8.w != 0) {
          break;
        }
        r6.w = 1 + r6.w;
        r7.w = 0;
      }
    } else {
      r6.w = 3;
      r7.w = 0;
    }
    r8.w = cmp(r6.w >= 3);
    if (r8.w != 0) {
      r16.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r18.xz = rcp(r16.yy);
      r18.y = -r18.z;
      r16.yzw = r15.yzy * r18.xyz + r16.zwz;
      r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.yzw = max(float3(0,0,0), r16.yzw);
      r16.yzw = min(r16.yzw, r18.xyz);
      r13.zw = sunConstants.sstLightingConstants.coordScale * r16.wz;
      r13.zw = floor(r13.zw);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(0), t23.xxxx
    r10.w = samp0[]..swiz;
      r12.w = (int)r10.w & 0x40000000;
      r13.z = (uint)r10.w << 2;
      if (r12.w == 0) {
        r12.w = (int)r10.w & 0x01ffffff;
        r18.x = (int)r9.w + (int)r12.w;
        r9.w = (uint)r10.w >> 25;
        r9.w = (uint)r9.w;
        r16.yzw = r16.yzw * r9.www;
        r16.yzw = frac(r16.yzw);
        r16.yzw = float3(128,128,128) * r16.yzw;
        r16.yzw = (uint3)r16.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r19.xy = (uint2)r16.wz >> int2(6,6);
        r9.w = (int)r18.z & 0xc0000000;
        r10.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r19.y ? r18.z : r10.w;
        r12.w = (uint)r10.w >> 13;
        r10.w = r19.x ? r12.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r19.x = (int)r10.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r19.xyz = r9.www ? r18.xyz : r19.xyz;
        r20.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r21.xy = (uint2)r16.wz >> (uint2)r20.yy;
        r21.xy = (int2)r21.xy & int2(1,1);
        r10.w = (int)r19.z & 0xc0000000;
        r12.w = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r21.y ? r19.z : r12.w;
        r13.w = (uint)r12.w >> 13;
        r12.w = r21.x ? r13.w : r12.w;
        r12.w = (int)r12.w & 8191;
        r20.x = (int)r12.w + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r19.xyz = r10.www ? r19.xyz : r20.xzw;
        r18.xyz = r9.www ? r18.xyz : r19.xyz;
        r9.w = (int)r18.z & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r18.y + 6;
          r19.xy = (uint2)r16.wz >> (uint2)r9.ww;
          r9.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r19.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r19.x << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r9.w = (uint)r9.w >> (uint)r10.w;
          r9.w = (int)r9.w & 1023;
          r19.x = (int)r9.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r18.yy + int2(1,2);
          r9.w = (int)-r19.y + 6;
          r18.yw = (uint2)r16.wz >> (uint2)r9.ww;
          r9.w = (int)r19.w & 0xc0000000;
          r10.w = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r18.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r18.y << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r10.w = (uint)r10.w >> (uint)r12.w;
          r10.w = (int)r10.w & 1023;
          r20.x = (int)r10.w + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r9.www ? r19.xyw : r20.xyz;
          r10.w = (int)-r20.y + 6;
          r18.yw = (uint2)r16.wz >> (uint2)r10.ww;
          r10.w = (int)r20.z & 0xc0000000;
          r12.w = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r18.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r18.y << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
          r13.w = (int)r13.w * 10;
          r12.w = (uint)r12.w >> (uint)r13.w;
          r12.w = (int)r12.w & 1023;
          r21.x = (int)r12.w + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
        r21.y = samp0[]..swiz;
          r18.yw = r10.ww ? r20.xz : r21.xy;
          r18.xz = r9.ww ? r19.xw : r18.yw;
        }
        r9.w = (int)r18.z & 0xc0000000;
        if (r9.w == 0) {
          if (14 == 0) r10.w = 0; else if (14+15 < 32) {           r10.w = (uint)r18.z << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);          } else r10.w = (uint)r18.z >> 15;
          r10.w = (uint)r10.w;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 6.10388815e-05 * r10.w;
          r18.yw = (int2)r18.zz & int2(32767,536870912);
          r12.w = (uint)r18.y;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 3.05185094e-05 * r12.w;
          r13.w = (int)r16.z & 3;
          r13.w = (int)r13.w + (int)r18.x;
          r13.w = (int)r13.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r13.w = (uint)r13.w >> (uint)r19.x;
          r13.w = (int)r13.w & 255;
          r13.w = (uint)r13.w;
          r13.w = r13.w * r12.w;
          r13.w = r13.w * 0.00392156886 + r10.w;
          r14.w = (int)r19.y + 1;
          if (1 == 0) r16.y = 0; else if (1+1 < 32) {           r16.y = (uint)r16.w << (32-(1 + 1)); r16.y = (uint)r16.y >> (32-1);          } else r16.y = (uint)r16.w >> 1;
          r14.w = (int)r14.w + (int)r16.y;
          r14.w = (int)r14.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r14.w = (uint)r14.w >> (uint)r19.z;
          r14.w = (int)r14.w & 0x0000ffff;
          r14.w = (uint)r14.w;
          r12.w = r14.w * r12.w;
          r10.w = r12.w * 1.52590219e-05 + r10.w;
          r13.z = r18.w ? r13.w : r10.w;
        } else {
          r10.w = (int)r18.z & 0x80000000;
          r12.w = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
        r12.w = samp0[]..swiz;
          r10.w = r10.w ? r12.w : 0;
          r12.w = (uint)r18.z << 2;
          r13.w = (uint)r10.w >> 16;
          r13.w = f16tof32(r13.w);
          r10.w = (int)r10.w & 0x0000ffff;
          r10.w = f16tof32(r10.w);
          r12.w = r15.y * r13.w + r12.w;
          r10.w = r15.z * r10.w + r12.w;
          r13.z = r9.w ? r10.w : r13.z;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.w;
      r9.w = cmp(r13.z < r9.w);
      r3.w = r9.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r6.w;
        r13.zw = -sunConstants.splitPinTransform[r8.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r8.w].zz * r13.zw;
        r18.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r18.z = r8.w + r6.w;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r3.z).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
        r8.w = r9.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.w = r8.w * r8.w;
        r3.w = r9.w * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r18.x = -r13.x;
        r8.w = (uint)r6.w;
        r6.w = 1 + r6.w;
        r6.w = min(2, r6.w);
        r6.w = (uint)r6.w;
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.w = (uint)r7.w;
        r13.zw = -sunConstants.splitPinTransform[r8.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r8.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.yz = -sunConstants.splitPinTransform[r6.w].xy + r15.yz;
        r15.yz = sunConstants.splitPinTransform[r6.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r18.y = r14.x;
        r18.z = r13.x;
        r9.w = 0;
        r10.w = 0;
        while (true) {
          r12.w = cmp((uint)r10.w >= 8);
          if (r12.w != 0) break;
          r12.w = cmp((uint)r7.w < (uint)r10.w);
          r16.yz = r12.ww ? r15.yz : r13.zw;
          r14.w = r12.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
          r12.w = r12.w ? r6.w : r8.w;
          r19.x = dot(icb[r10.w+0].yx, r18.xy);
          r19.y = dot(icb[r10.w+0].yx, r18.yz);
          r19.xy = r19.xy * r14.ww + r16.yz;
          r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
          r19.z = (uint)r12.w;
          r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r3.z).x;
          r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
          r12.w = r14.w + r12.w;
          r12.w = saturate(-1 + r12.w);
          r9.w = r12.w * 0.125 + r9.w;
          r10.w = (int)r10.w + 1;
        }
        r3.z = r9.w * r9.w;
        r3.w = r3.z * r9.w;
      }
    }
  }
  r3.z = 1 + -r2.y;
  r6.w = 5 * r3.z;
  r7.w = r3.z * 5 + -2.5;
  r7.w = 0.400000006 * r7.w;
  r7.w = max(0, r7.w);
  r7.w = 100 * r7.w;
  r13.zw = -r3.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r8.w = exp2(r13.z);
  r8.w = r8.w * r2.x;
  r8.w = 9.1368103 * r8.w;
  r9.w = r6.w * r3.z;
  r9.w = -r9.w * 2.0159049 + r13.w;
  r9.w = exp2(r9.w);
  r9.w = r9.w * r2.x;
  r9.w = 9.70808983 * r9.w;
  r8.w = max(r9.w, r8.w);
  r8.w = max(1.26815999, r8.w);
  r9.w = numRefProbes + -numOverrideProbes;
  r0.y = (uint)r0.y >> 24;
  r10.w = cmp((uint)r0.y >= (uint)r9.w);
  r12.w = cmp((uint)r0.y < numRefProbes);
  r10.w = r10.w ? r12.w : 0;
  if (r10.w != 0) {
    r10.w = (int)r0.y * 14;
    if (r2.z != 0) {
      r18.yzw = refProbeConstantsCB[r10.w].data[0].xyz + eyeOffset.xyz;
      r18.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r15.yzw = -refProbeConstantsCB[r10.w].data[0].xyz + r5.xyz;
    r12.w = 0x0000ffff & (int)refProbeConstantsCB[r10.w].data[7].z;
    if (6 == 0) r13.z = 0; else if (6+25 < 32) {     r13.z = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(6 + 25)); r13.z = (uint)r13.z >> (32-6);    } else r13.z = (uint)refProbeConstantsCB[r10.w].data[7].z >> 25;
    r13.w = (int)r12.w * 6;
    r14.w = dot(refProbeAttenuationConstantsCB[r13.w].data[0].xyz, r15.yzw);
    r14.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[0].w + r14.w);
    r16.y = dot(refProbeAttenuationConstantsCB[r13.w].data[1].xyz, r15.yzw);
    r16.y = saturate(refProbeAttenuationConstantsCB[r13.w].data[1].w + r16.y);
    r14.w = r16.y * r14.w;
    r16.y = dot(refProbeAttenuationConstantsCB[r13.w].data[2].xyz, r15.yzw);
    r16.y = saturate(refProbeAttenuationConstantsCB[r13.w].data[2].w + r16.y);
    r14.w = r16.y * r14.w;
    r16.y = dot(refProbeAttenuationConstantsCB[r13.w].data[3].xyz, r15.yzw);
    r16.y = saturate(refProbeAttenuationConstantsCB[r13.w].data[3].w + r16.y);
    r14.w = r16.y * r14.w;
    r16.y = dot(refProbeAttenuationConstantsCB[r13.w].data[4].xyz, r15.yzw);
    r16.y = saturate(refProbeAttenuationConstantsCB[r13.w].data[4].w + r16.y);
    r14.w = r16.y * r14.w;
    r16.y = dot(refProbeAttenuationConstantsCB[r13.w].data[5].xyz, r15.yzw);
    r13.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[5].w + r16.y);
    r18.x = r14.w * r13.w;
    r13.w = 1 & (int)refProbeConstantsCB[r10.w].data[6].x;
    r18.yz = float2(0,1);
    r16.yz = r13.ww ? r18.xy : r18.zx;
    r18.x = 1;
    r13.w = refProbeConstantsCB[r10.w].data[6].x;
    r19.xy = r16.yz;
    r14.w = 1;
    while (true) {
      r16.w = cmp((int)r14.w >= (int)r13.z);
      if (r16.w != 0) break;
      r16.w = (int)r12.w + (int)r14.w;
      r16.w = (int)r16.w * 6;
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r18.z);
      r18.z = r19.x * r18.z;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r15.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r18.w);
      r18.z = r18.z * r18.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r15.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r18.w);
      r18.z = r18.z * r18.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r15.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r18.w);
      r18.z = r18.z * r18.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r15.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r18.w);
      r18.z = r18.z * r18.w;
      r18.w = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r15.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r18.w);
      r19.x = r18.z * r16.w;
      r18.w = (uint)r13.w >> 2;
      if (1 == 0) r19.z = 0; else if (1+2 < 32) {       r19.z = (uint)r13.w << (32-(1 + 2)); r19.z = (uint)r19.z >> (32-1);      } else r19.z = (uint)r13.w >> 2;
      r19.w = (int)r18.w & 2;
      r20.x = max(r19.y, r19.x);
      r16.w = -r18.z * r16.w + 1;
      r16.w = r19.y * r16.w;
      r18.y = r19.w ? r16.w : r20.x;
      r19.xy = r19.zz ? r19.xy : r18.xy;
      r14.w = (int)r14.w + 1;
      r13.w = r18.w;
    }
    r19.y = saturate(r19.y);
    r12.w = refProbeConstantsCB[r10.w].data[6].y * r19.y;
    r13.z = cmp(0 < r12.w);
    if (r13.z != 0) {
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.z, cb2[52].x, l(880), u2.xxxx
      r13.z = samp0[]..swiz;
        r13.z = (int)r13.z | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r13.z = refProbeConstantsCB[r10.w].data[7].y * r12.w;
      r18.x = refProbeConstantsCB[r10.w].data[7].w;
      r18.yz = refProbeConstantsCB[r10.w].data[8].xy;
      r13.w = dot(r17.xyz, r18.xyz);
      r14.w = dot(r15.yzw, r18.xyz);
      r14.w = -refProbeConstantsCB[r10.w].data[8].z + r14.w;
      r16.y = cmp(r14.w >= 0);
      r14.w = max(abs(r14.w), r7.w);
      r14.w = r16.y ? r14.w : -r14.w;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r14.w / r13.w;
      r13.w = min(131072, abs(r13.w));
      r18.x = refProbeConstantsCB[r10.w].data[8].w;
      r18.yz = refProbeConstantsCB[r10.w].data[9].xy;
      r14.w = dot(r17.xyz, r18.xyz);
      r16.y = dot(r15.yzw, r18.xyz);
      r16.y = -refProbeConstantsCB[r10.w].data[9].z + r16.y;
      r16.z = cmp(r16.y >= 0);
      r16.y = max(abs(r16.y), r7.w);
      r16.y = r16.z ? r16.y : -r16.y;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r16.y / r14.w;
      r13.w = min(abs(r14.w), r13.w);
      r18.x = refProbeConstantsCB[r10.w].data[9].w;
      r18.yz = refProbeConstantsCB[r10.w].data[10].xy;
      r14.w = dot(r17.xyz, r18.xyz);
      r16.y = dot(r15.yzw, r18.xyz);
      r16.y = -refProbeConstantsCB[r10.w].data[10].z + r16.y;
      r16.z = cmp(r16.y >= 0);
      r16.y = max(abs(r16.y), r7.w);
      r16.y = r16.z ? r16.y : -r16.y;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r16.y / r14.w;
      r13.w = min(abs(r14.w), r13.w);
      r18.x = refProbeConstantsCB[r10.w].data[10].w;
      r18.yz = refProbeConstantsCB[r10.w].data[11].xy;
      r14.w = dot(r17.xyz, r18.xyz);
      r16.y = dot(r15.yzw, r18.xyz);
      r16.y = -refProbeConstantsCB[r10.w].data[11].z + r16.y;
      r16.z = cmp(r16.y >= 0);
      r16.y = max(abs(r16.y), r7.w);
      r16.y = r16.z ? r16.y : -r16.y;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r16.y / r14.w;
      r13.w = min(abs(r14.w), r13.w);
      r18.x = refProbeConstantsCB[r10.w].data[11].w;
      r18.yz = refProbeConstantsCB[r10.w].data[12].xy;
      r14.w = dot(r17.xyz, r18.xyz);
      r16.y = dot(r15.yzw, r18.xyz);
      r16.y = -refProbeConstantsCB[r10.w].data[12].z + r16.y;
      r16.z = cmp(r16.y >= 0);
      r16.y = max(abs(r16.y), r7.w);
      r16.y = r16.z ? r16.y : -r16.y;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r16.y / r14.w;
      r13.w = min(abs(r14.w), r13.w);
      r18.x = refProbeConstantsCB[r10.w].data[12].w;
      r18.yz = refProbeConstantsCB[r10.w].data[13].xy;
      r14.w = dot(r17.xyz, r18.xyz);
      r16.y = dot(r15.yzw, r18.xyz);
      r16.y = -refProbeConstantsCB[r10.w].data[13].z + r16.y;
      r16.z = cmp(r16.y >= 0);
      r16.y = max(abs(r16.y), r7.w);
      r16.y = r16.z ? r16.y : -r16.y;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r16.y / r14.w;
      r13.w = min(abs(r14.w), r13.w);
      r18.x = refProbeConstantsCB[r10.w].data[3].w + r15.y;
      r18.yz = refProbeConstantsCB[r10.w].data[4].xy + r15.zw;
      r16.yzw = r17.xyz * r13.www + r18.xyz;
      r14.w = dot(r16.yzw, r16.yzw);
      r14.w = sqrt(r14.w);
      r13.w = r13.w / r14.w;
      r13.w = r13.w + r13.w;
      r13.w = sqrt(r13.w);
      r13.w = r3.z * 5 + r13.w;
      r13.w = -0.844799995 + r13.w;
      r18.x = refProbeConstantsCB[r10.w].data[0].w;
      r18.y = refProbeConstantsCB[r10.w].data[1].z;
      r18.z = refProbeConstantsCB[r10.w].data[2].y;
      r19.x = dot(r16.yzw, r18.xyz);
      r20.xy = refProbeConstantsCB[r10.w].data[1].xw;
      r20.z = refProbeConstantsCB[r10.w].data[2].z;
      r19.y = dot(r16.yzw, r20.xyz);
      r21.x = refProbeConstantsCB[r10.w].data[1].y;
      r21.yz = refProbeConstantsCB[r10.w].data[2].xw;
      r19.z = dot(r16.yzw, r21.xyz);
      if (9 == 0) r14.w = 0; else if (9+16 < 32) {       r14.w = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);      } else r14.w = (uint)refProbeConstantsCB[r10.w].data[7].z >> 16;
      r19.w = (uint)r14.w;
      r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r13.w).xyz;
      r22.xyz = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
      r22.xyz = cmp((int3)r22.xyz == int3(2139095040,2139095040,2139095040));
      r13.w = (int)r22.y | (int)r22.x;
      r13.w = (int)r22.z | (int)r13.w;
      r16.yzw = r13.www ? float3(1,1,0) : r16.yzw;
      r22.x = dot(r15.yzw, r18.xyz);
      r22.y = dot(r15.yzw, r20.xyz);
      r22.z = dot(r15.yzw, r21.xyz);
      r15.yzw = saturate(r22.xyz * refProbeConstantsCB[r10.w].data[3].xyz + float3(0.5,0.5,0.5));
      r22.xy = refProbeConstantsCB[r10.w].data[4].zw * r15.yz;
      r22.z = refProbeConstantsCB[r10.w].data[5].x * r15.w;
      r15.yzw = refProbeConstantsCB[r10.w].data[5].yzw + r22.xyz;
      r19.x = dot(r11.xyz, r18.xyz);
      r19.y = dot(r11.xyz, r20.xyz);
      r19.z = dot(r11.xyz, r21.xyz);
      r18.xyz = cmp(float3(0,0,0) < r19.xyz);
      r20.z = r18.x ? 0 : 0.5;
      r20.xy = float2(0,0);
      r20.xyz = r20.xyz + r15.yzw;
      r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r21.xyz = r19.xyz * r19.xyz;
      r21.xyz = r21.xyz * r13.zzz;
      r22.z = r18.y ? 0 : 0.5;
      r22.xy = float2(0,0);
      r18.xyw = r22.xyz + r15.yzw;
      r18.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyw, 0).xyz;
      r18.xyw = r18.xyw * r21.yyy;
      r18.xyw = r20.xyz * r21.xxx + r18.xyw;
      r20.z = r18.z ? 0 : 0.5;
      r20.xy = float2(0,0);
      r15.yzw = r20.xyz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r21.zzz + r18.xyw;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, 6).xyz;
      r19.xyz = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
      r19.xyz = cmp((int3)r19.xyz == int3(2139095040,2139095040,2139095040));
      r10.w = (int)r19.y | (int)r19.x;
      r10.w = (int)r19.z | (int)r10.w;
      r18.xyz = r10.www ? float3(1,1,0) : r18.xyz;
      r15.yzw = r18.xyz * r15.yzw;
      r10.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r13.w = r10.w * r8.w;
      r16.yzw = r16.yzw * r13.zzz;
      r13.z = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r10.w = r8.w * r10.w + r13.z;
      r10.w = r13.w / r10.w;
      r16.yzw = r16.yzw * r10.www;
      r10.w = 257;
    } else {
      r15.yzw = float3(0,0,0);
      r16.yzw = float3(0,0,0);
      r12.w = 0;
      r10.w = 1;
    }
  } else {
    r15.yzw = float3(0,0,0);
    r16.yzw = float3(0,0,0);
    r12.w = 0;
    r10.w = 0;
  }
  r9.w = cmp((uint)r0.y < (uint)r9.w);
  if (r9.w != 0) {
    r0.y = (int)r0.y * 14;
    if (r2.z != 0) {
      r9.w = (int)r10.w & 1;
      r9.w = mad((int)r9.w, 20, 880);
      r18.yzw = refProbeConstantsCB[r0.y].data[0].xyz + eyeOffset.xyz;
      r18.x = 16;
      GBufferDiffuseColor[viewID].r9.w = u2.xyzw;
    }
    r9.w = (int)r10.w + 1;
    r18.xyz = -refProbeConstantsCB[r0.y].data[0].xyz + r5.xyz;
    r13.z = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
    if (6 == 0) r13.w = 0; else if (6+25 < 32) {     r13.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);    } else r13.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
    r14.w = (int)r13.z * 6;
    r18.w = dot(refProbeAttenuationConstantsCB[r14.w].data[0].xyz, r18.xyz);
    r18.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[0].w + r18.w);
    r19.x = dot(refProbeAttenuationConstantsCB[r14.w].data[1].xyz, r18.xyz);
    r19.x = saturate(refProbeAttenuationConstantsCB[r14.w].data[1].w + r19.x);
    r18.w = r19.x * r18.w;
    r19.x = dot(refProbeAttenuationConstantsCB[r14.w].data[2].xyz, r18.xyz);
    r19.x = saturate(refProbeAttenuationConstantsCB[r14.w].data[2].w + r19.x);
    r18.w = r19.x * r18.w;
    r19.x = dot(refProbeAttenuationConstantsCB[r14.w].data[3].xyz, r18.xyz);
    r19.x = saturate(refProbeAttenuationConstantsCB[r14.w].data[3].w + r19.x);
    r18.w = r19.x * r18.w;
    r19.x = dot(refProbeAttenuationConstantsCB[r14.w].data[4].xyz, r18.xyz);
    r19.x = saturate(refProbeAttenuationConstantsCB[r14.w].data[4].w + r19.x);
    r18.w = r19.x * r18.w;
    r19.x = dot(refProbeAttenuationConstantsCB[r14.w].data[5].xyz, r18.xyz);
    r14.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[5].w + r19.x);
    r19.x = r18.w * r14.w;
    r14.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
    r19.yz = float2(0,1);
    r19.xy = r14.ww ? r19.xy : r19.zx;
    r20.x = 1;
    r14.w = refProbeConstantsCB[r0.y].data[6].x;
    r21.xy = r19.xy;
    r18.w = 1;
    while (true) {
      r19.z = cmp((int)r18.w >= (int)r13.w);
      if (r19.z != 0) break;
      r19.z = (int)r13.z + (int)r18.w;
      r19.z = (int)r19.z * 6;
      r19.w = dot(refProbeAttenuationConstantsCB[r19.z].data[0].xyz, r18.xyz);
      r19.w = saturate(refProbeAttenuationConstantsCB[r19.z].data[0].w + r19.w);
      r19.w = r21.x * r19.w;
      r20.z = dot(refProbeAttenuationConstantsCB[r19.z].data[1].xyz, r18.xyz);
      r20.z = saturate(refProbeAttenuationConstantsCB[r19.z].data[1].w + r20.z);
      r19.w = r20.z * r19.w;
      r20.z = dot(refProbeAttenuationConstantsCB[r19.z].data[2].xyz, r18.xyz);
      r20.z = saturate(refProbeAttenuationConstantsCB[r19.z].data[2].w + r20.z);
      r19.w = r20.z * r19.w;
      r20.z = dot(refProbeAttenuationConstantsCB[r19.z].data[3].xyz, r18.xyz);
      r20.z = saturate(refProbeAttenuationConstantsCB[r19.z].data[3].w + r20.z);
      r19.w = r20.z * r19.w;
      r20.z = dot(refProbeAttenuationConstantsCB[r19.z].data[4].xyz, r18.xyz);
      r20.z = saturate(refProbeAttenuationConstantsCB[r19.z].data[4].w + r20.z);
      r19.w = r20.z * r19.w;
      r20.z = dot(refProbeAttenuationConstantsCB[r19.z].data[5].xyz, r18.xyz);
      r19.z = saturate(refProbeAttenuationConstantsCB[r19.z].data[5].w + r20.z);
      r21.x = r19.w * r19.z;
      r20.z = (uint)r14.w >> 2;
      if (1 == 0) r20.w = 0; else if (1+2 < 32) {       r20.w = (uint)r14.w << (32-(1 + 2)); r20.w = (uint)r20.w >> (32-1);      } else r20.w = (uint)r14.w >> 2;
      r21.z = (int)r20.z & 2;
      r21.w = max(r21.y, r21.x);
      r19.z = -r19.w * r19.z + 1;
      r19.z = r21.y * r19.z;
      r20.y = r21.z ? r19.z : r21.w;
      r21.xy = r20.ww ? r21.xy : r20.xy;
      r18.w = (int)r18.w + 1;
      r14.w = r20.z;
    }
    r13.z = saturate(r21.y + -r12.w);
    r13.w = refProbeConstantsCB[r0.y].data[6].y * r13.z;
    r14.w = cmp(0 < r13.w);
    if (r14.w != 0) {
      r14.w = (int)r9.w & 3;
      r18.w = (int)r14.w + -1;
      r18.w = cmp((uint)r18.w < 32);
      r18.w = r2.z ? r18.w : 0;
      if (r18.w != 0) {
        r19.xy = mad((int2)r14.ww, int2(20,20), int2(860,876));
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.w, cb2[52].x, r19.x, u2.xxxx
      r14.w = samp0[]..swiz;
        r14.w = (int)r14.w | 32;
        GBufferDiffuseColor[viewID].r19.x = u2.x;
        GBufferDiffuseColor[viewID].r19.y = u2.x;
      }
      r9.w = (int)r10.w + 257;
      r13.z = r13.z * refProbeConstantsCB[r0.y].data[6].y + r12.w;
      r13.w = refProbeConstantsCB[r0.y].data[7].y * r13.w;
      r19.x = refProbeConstantsCB[r0.y].data[7].w;
      r19.yz = refProbeConstantsCB[r0.y].data[8].xy;
      r14.w = dot(r17.xyz, r19.xyz);
      r18.w = dot(r18.xyz, r19.xyz);
      r18.w = -refProbeConstantsCB[r0.y].data[8].z + r18.w;
      r19.x = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r7.w);
      r18.w = r19.x ? r18.w : -r18.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r18.w / r14.w;
      r14.w = min(131072, abs(r14.w));
      r19.x = refProbeConstantsCB[r0.y].data[8].w;
      r19.yz = refProbeConstantsCB[r0.y].data[9].xy;
      r18.w = dot(r17.xyz, r19.xyz);
      r19.x = dot(r18.xyz, r19.xyz);
      r19.x = -refProbeConstantsCB[r0.y].data[9].z + r19.x;
      r19.y = cmp(r19.x >= 0);
      r19.x = max(abs(r19.x), r7.w);
      r19.x = r19.y ? r19.x : -r19.x;
      r18.w = max(1.00000001e-07, -r18.w);
      r18.w = r19.x / r18.w;
      r14.w = min(abs(r18.w), r14.w);
      r19.x = refProbeConstantsCB[r0.y].data[9].w;
      r19.yz = refProbeConstantsCB[r0.y].data[10].xy;
      r18.w = dot(r17.xyz, r19.xyz);
      r19.x = dot(r18.xyz, r19.xyz);
      r19.x = -refProbeConstantsCB[r0.y].data[10].z + r19.x;
      r19.y = cmp(r19.x >= 0);
      r19.x = max(abs(r19.x), r7.w);
      r19.x = r19.y ? r19.x : -r19.x;
      r18.w = max(1.00000001e-07, -r18.w);
      r18.w = r19.x / r18.w;
      r14.w = min(abs(r18.w), r14.w);
      r19.x = refProbeConstantsCB[r0.y].data[10].w;
      r19.yz = refProbeConstantsCB[r0.y].data[11].xy;
      r18.w = dot(r17.xyz, r19.xyz);
      r19.x = dot(r18.xyz, r19.xyz);
      r19.x = -refProbeConstantsCB[r0.y].data[11].z + r19.x;
      r19.y = cmp(r19.x >= 0);
      r19.x = max(abs(r19.x), r7.w);
      r19.x = r19.y ? r19.x : -r19.x;
      r18.w = max(1.00000001e-07, -r18.w);
      r18.w = r19.x / r18.w;
      r14.w = min(abs(r18.w), r14.w);
      r19.x = refProbeConstantsCB[r0.y].data[11].w;
      r19.yz = refProbeConstantsCB[r0.y].data[12].xy;
      r18.w = dot(r17.xyz, r19.xyz);
      r19.x = dot(r18.xyz, r19.xyz);
      r19.x = -refProbeConstantsCB[r0.y].data[12].z + r19.x;
      r19.y = cmp(r19.x >= 0);
      r19.x = max(abs(r19.x), r7.w);
      r19.x = r19.y ? r19.x : -r19.x;
      r18.w = max(1.00000001e-07, -r18.w);
      r18.w = r19.x / r18.w;
      r14.w = min(abs(r18.w), r14.w);
      r19.x = refProbeConstantsCB[r0.y].data[12].w;
      r19.yz = refProbeConstantsCB[r0.y].data[13].xy;
      r18.w = dot(r17.xyz, r19.xyz);
      r19.x = dot(r18.xyz, r19.xyz);
      r19.x = -refProbeConstantsCB[r0.y].data[13].z + r19.x;
      r19.y = cmp(r19.x >= 0);
      r7.w = max(abs(r19.x), r7.w);
      r7.w = r19.y ? r7.w : -r7.w;
      r18.w = max(1.00000001e-07, -r18.w);
      r7.w = r7.w / r18.w;
      r7.w = min(r14.w, abs(r7.w));
      r19.x = refProbeConstantsCB[r0.y].data[3].w + r18.x;
      r19.yz = refProbeConstantsCB[r0.y].data[4].xy + r18.yz;
      r19.xyz = r17.xyz * r7.www + r19.xyz;
      r14.w = dot(r19.xyz, r19.xyz);
      r14.w = sqrt(r14.w);
      r7.w = r7.w / r14.w;
      r7.w = r7.w + r7.w;
      r7.w = sqrt(r7.w);
      r3.z = r3.z * 5 + r7.w;
      r3.z = -0.844799995 + r3.z;
      r20.x = refProbeConstantsCB[r0.y].data[0].w;
      r20.y = refProbeConstantsCB[r0.y].data[1].z;
      r20.z = refProbeConstantsCB[r0.y].data[2].y;
      r21.x = dot(r19.xyz, r20.xyz);
      r22.xy = refProbeConstantsCB[r0.y].data[1].xw;
      r22.z = refProbeConstantsCB[r0.y].data[2].z;
      r21.y = dot(r19.xyz, r22.xyz);
      r23.x = refProbeConstantsCB[r0.y].data[1].y;
      r23.yz = refProbeConstantsCB[r0.y].data[2].xw;
      r21.z = dot(r19.xyz, r23.xyz);
      if (9 == 0) r7.w = 0; else if (9+16 < 32) {       r7.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r7.w = (uint)r7.w >> (32-9);      } else r7.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
      r21.w = (uint)r7.w;
      r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, r3.z).xyz;
      r24.xyz = (int3)r19.xyz & int3(-2147483648,-2147483648,-2147483648);
      r24.xyz = cmp((int3)r24.xyz == int3(2139095040,2139095040,2139095040));
      r3.z = (int)r24.y | (int)r24.x;
      r3.z = (int)r24.z | (int)r3.z;
      r19.xyz = r3.zzz ? float3(1,1,0) : r19.xyz;
      r24.x = dot(r18.xyz, r20.xyz);
      r24.y = dot(r18.xyz, r22.xyz);
      r24.z = dot(r18.xyz, r23.xyz);
      r18.xyz = saturate(r24.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
      r24.xy = refProbeConstantsCB[r0.y].data[4].zw * r18.xy;
      r24.z = refProbeConstantsCB[r0.y].data[5].x * r18.z;
      r18.xyz = refProbeConstantsCB[r0.y].data[5].yzw + r24.xyz;
      r21.x = dot(r11.xyz, r20.xyz);
      r21.y = dot(r11.xyz, r22.xyz);
      r21.z = dot(r11.xyz, r23.xyz);
      r20.xyz = cmp(float3(0,0,0) < r21.xyz);
      r22.z = r20.x ? 0 : 0.5;
      r22.xy = float2(0,0);
      r22.xyz = r22.xyz + r18.xyz;
      r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
      r23.xyz = r21.xyz * r21.xyz;
      r23.xyz = r23.xyz * r13.www;
      r24.z = r20.y ? 0 : 0.5;
      r24.xy = float2(0,0);
      r20.xyw = r24.xyz + r18.xyz;
      r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
      r20.xyw = r20.xyw * r23.yyy;
      r20.xyw = r22.xyz * r23.xxx + r20.xyw;
      r22.z = r20.z ? 0 : 0.5;
      r22.xy = float2(0,0);
      r18.xyz = r22.xyz + r18.xyz;
      r18.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r18.xyz = r18.xyz * r23.zzz + r20.xyw;
      r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, 6).xyz;
      r21.xyz = (int3)r20.xyz & int3(-2147483648,-2147483648,-2147483648);
      r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
      r0.y = (int)r21.y | (int)r21.x;
      r0.y = (int)r21.z | (int)r0.y;
      r20.xyz = r0.yyy ? float3(1,1,0) : r20.xyz;
      r21.xyz = r20.xyz * r18.xyz;
      r0.y = dot(r21.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.yzw = r18.xyz * r20.xyz + r15.yzw;
      r3.z = r8.w * r0.y;
      r18.xyz = r19.xyz * r13.www;
      r7.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.y = r8.w * r0.y + r7.w;
      r0.y = r3.z / r0.y;
      r16.yzw = r18.xyz * r0.yyy + r16.yzw;
    } else {
      r13.z = r12.w;
    }
  } else {
    r13.z = r12.w;
    r9.w = r10.w;
  }
  r0.y = cmp(r12.w >= 1);
  bitmask.z = ((~(-1 << 8)) << 0) & 0xffffffff;  r3.z = (((uint)r9.w << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
  r0.y = r0.y ? r3.z : r9.w;
  r3.z = max(1, r13.z);
  r3.z = rcp(r3.z);
  r13.z = saturate(r13.z);
  r18.xyz = r15.yzw * r3.zzz;
  r16.yzw = r16.yzw * r3.zzz;
  r7.w = cmp(r13.z < 0.99000001);
  if (r7.w != 0) {
    r0.y = (int)r0.y + 256;
    r7.w = 1 + -r13.z;
    r8.w = sunConstants.globalProbeExposure * r7.w;
    r19.xyz = -globalProbeConstants.data[0].xyz + r5.xyz;
    r20.x = globalProbeConstants.data[0].w * r19.x;
    r20.yz = globalProbeConstants.data[1].xy * r19.yz;
    r19.xyz = saturate(float3(0.5,0.5,0.5) + r20.xyz);
    r20.xy = globalProbeConstants.data[1].zw * r19.xy;
    r20.z = globalProbeConstants.data[2].x * r19.z;
    r19.xyz = globalProbeConstants.data[2].yzw + r20.xyz;
    r20.xyz = cmp(float3(0,0,0) < r11.xyz);
    r20.xyz = r20.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r20.w = 0;
    r21.xyz = r20.wwx + r19.xyz;
    r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r22.xyz = r11.xyz * r11.xyz;
    r22.xyz = r22.xyz * r8.www;
    r23.xyz = r20.wwy + r19.xyz;
    r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r23.xyz = r23.xyz * r22.yyy;
    r21.xyz = r21.xyz * r22.xxx + r23.xyz;
    r19.xyz = r20.wwz + r19.xyz;
    r19.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r22.zzz + r21.xyz;
    r11.w = 0;
    r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r19.xyz = r20.xyz * r19.xyz;
    r8.w = dot(r19.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r18.xyz = r15.yzw * r3.zzz + r19.xyz;
    r17.w = 0;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r6.w).xyz;
    r3.z = sunConstants.globalProbeExposure * r7.w + -r8.w;
    r3.z = r2.y * r3.z + r8.w;
    r16.yzw = r15.yzw * r3.zzz + r16.yzw;
  }
  r3.z = r2.x + r4.z;
  r3.z = log2(abs(r3.z));
  r3.z = r3.z * r1.w;
  r3.z = exp2(r3.z);
  r3.z = r3.z + r4.z;
  r3.z = saturate(-1 + r3.z);
  r18.xyz = r18.xyz * r4.zzz;
  r13.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.zw, 0).xy;
  r15.yzw = r16.yzw * r3.zzz;
  r19.xyz = r15.zwy * r13.zzz;
  r15.yzw = r15.yzw * r13.www;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r3.z = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r4.z = r2.x * r2.y + r3.z;
  r2.y = r4.z * r2.y;
  r3.z = r4.z * r3.z;
  if (r2.z != 0) {
    r20.x = 3;
    r20.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r4.z = cmp(0 < r3.y);
  if (r4.z != 0) {
    if (r2.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r4.z, cb2[52].x, l(112), u2.xxxx
    r4.z = samp0[]..swiz;
      r4.z = (int)r4.z | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r4.z = cmp(0 < r3.w);
    if (r4.z != 0) {
      r4.z = sunConstants.specScale * r1.z;
      r4.z = r4.z * r3.y;
      if (sunConstants.sunCookieIndex != 0) {
        r20.xyz = eyeOffset.xyz + r5.xyz;
        r20.w = 1;
        r6.w = dot(sunConstants.sunCookieTransform[0].xyzw, r20.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r20.xyzw);
        r20.x = frac(r6.w);
        r20.y = frac(r7.w);
        r6.w = -1 + (int14)sunConstants.sunCookieIndex;
        r20.z = (uint)r6.w;
        r16.yzw = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        r16.yzw = float3(-1,-1,-1) + r16.yzw;
        r16.yzw = sunConstants.sunCookieIntensity * r16.yzw + float3(1,1,1);
        r16.yzw = sunConstants.color.xyz * r16.yzw;
      } else {
        r16.yzw = sunConstants.color.xyz;
      }
      r6.w = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r6.w);
      r7.w = r7.w ? r3.x : 0;
      if (r7.w != 0) {
        r6.w = (int)r6.w + numLights;
        r6.w = mad((int)r6.w, 15, -15);
        r7.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r20.xyz = r11.xyz * r7.www + r5.xyz;
        r21.xyz = lightConstantsCB[r6.w].data[4].yzw;
        r21.w = lightConstantsCB[r6.w].data[5].x;
        r20.w = 1;
        r21.x = dot(r21.xyzw, r20.xyzw);
        r22.xyz = lightConstantsCB[r6.w].data[5].yzw;
        r22.w = lightConstantsCB[r6.w].data[6].x;
        r21.y = dot(r22.xyzw, r20.xyzw);
        r13.zw = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r21.x = lightConstantsCB[r6.w].data[9].w + r13.z;
        r21.y = lightConstantsCB[r6.w].data[10].x + r13.w;
        r13.zw = lightConstantsCB[r6.w].data[9].yz * r21.xy;
        r21.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
        r21.zw = float2(1,1) + -r21.xy;
        r21.zw = cmp(r13.zw >= r21.zw);
        r21.xy = cmp(r21.xy >= r13.zw);
        r21.xy = (int2)r21.xy | (int2)r21.zw;
        r7.w = (int)r21.y | (int)r21.x;
        if (r7.w == 0) {
          r21.xyz = lightConstantsCB[r6.w].data[6].yzw;
          r21.w = lightConstantsCB[r6.w].data[7].x;
          r7.w = dot(r21.xyzw, r20.xyzw);
          r13.zw = saturate(r13.zw);
          r20.x = r13.z * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
          r20.y = r13.w * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
          r7.w = lightConstantsCB[r6.w].data[10].y + r7.w;
          r7.w = r7.w / lightConstantsCB[r6.w].data[10].z;
          r7.w = max(6.10351563e-05, r7.w);
          r8.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r21.x = -r13.x;
            r22.z = (uint)r8.w;
            r21.y = r14.x;
            r21.z = r13.x;
            r9.w = 0;
            r10.w = 0;
            while (true) {
              r11.w = cmp((int)r10.w >= 8);
              if (r11.w != 0) break;
              r23.x = dot(icb[r10.w+0].yx, r21.xy);
              r23.y = dot(icb[r10.w+0].yx, r21.yz);
              r22.xy = r23.xy * lightConstantsCB[r6.w].data[3].yy + r20.xy;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r7.w).x;
              r9.w = r11.w * 0.125 + r9.w;
              r10.w = (int)r10.w + 1;
            }
          } else {
            r20.z = (uint)r8.w;
            r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
          }
          r6.w = r9.w * r9.w;
          r6.w = r6.w * r9.w;
        } else {
          r6.w = 1;
        }
        r3.w = r6.w * r3.w;
      } else {
        r6.w = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r6.w);
        r8.w = ~(int)r3.x;
        r7.w = r7.w ? r8.w : 0;
        if (r7.w != 0) {
          r6.w = (int)r6.w + numLights;
          r6.w = mad((int)r6.w, 15, -15);
          r7.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r20.xyz = r11.xyz * r7.www + r5.xyz;
          r21.xyz = lightConstantsCB[r6.w].data[4].yzw;
          r21.w = lightConstantsCB[r6.w].data[5].x;
          r20.w = 1;
          r21.x = dot(r21.xyzw, r20.xyzw);
          r22.xyz = lightConstantsCB[r6.w].data[5].yzw;
          r22.w = lightConstantsCB[r6.w].data[6].x;
          r21.y = dot(r22.xyzw, r20.xyzw);
          r13.zw = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r21.x = lightConstantsCB[r6.w].data[9].w + r13.z;
          r21.y = lightConstantsCB[r6.w].data[10].x + r13.w;
          r13.zw = lightConstantsCB[r6.w].data[9].yz * r21.xy;
          r21.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
          r21.zw = float2(1,1) + -r21.xy;
          r21.zw = cmp(r13.zw >= r21.zw);
          r21.xy = cmp(r21.xy >= r13.zw);
          r21.xy = (int2)r21.xy | (int2)r21.zw;
          r7.w = (int)r21.y | (int)r21.x;
          if (r7.w == 0) {
            r21.xyz = lightConstantsCB[r6.w].data[6].yzw;
            r21.w = lightConstantsCB[r6.w].data[7].x;
            r7.w = dot(r21.xyzw, r20.xyzw);
            r13.zw = saturate(r13.zw);
            r20.x = r13.z * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
            r20.y = r13.w * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
            r7.w = lightConstantsCB[r6.w].data[10].y + r7.w;
            r7.w = r7.w / lightConstantsCB[r6.w].data[10].z;
            r7.w = max(6.10351563e-05, r7.w);
            r8.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r21.x = -r13.x;
              r22.z = (uint)r8.w;
              r21.y = r14.x;
              r21.z = r13.x;
              r9.w = 0;
              r10.w = 0;
              while (true) {
                r11.w = cmp((int)r10.w >= 8);
                if (r11.w != 0) break;
                r23.x = dot(icb[r10.w+0].yx, r21.xy);
                r23.y = dot(icb[r10.w+0].yx, r21.yz);
                r22.xy = r23.xy * lightConstantsCB[r6.w].data[3].yy + r20.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r7.w).x;
                r9.w = r11.w * 0.125 + r9.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r20.z = (uint)r8.w;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
            }
            r6.w = r9.w * r9.w;
            r6.w = r6.w * r9.w;
          } else {
            r6.w = 1;
          }
          r3.w = r6.w * r3.w;
        }
      }
      r6.w = -r2.x * 0.5 + 1;
      r6.w = -r3.y * r6.w + 1;
      r6.w = r6.w * r6.w;
      r6.w = -r6.w * 0.620000005 + 0.620000005;
      r6.w = r6.w + -r3.y;
      r6.w = r1.w * r6.w + r3.y;
      r6.w = r6.w * r3.w;
      r2.w = cmp(0 < r2.w);
      r20.xyz = r6.www * r16.yzw + r18.xyz;
      r21.xyz = -r5.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r21.xyz, r21.xyz);
      r0.w = rsqrt(r0.w);
      r21.xyz = r21.xyz * r0.www;
      r0.w = dot(r21.xyz, r12.xyz);
      r6.w = dot(r11.xyz, r21.xyz);
      r7.w = abs(r6.w) * r1.z + -abs(r6.w);
      r6.w = abs(r6.w) * r7.w + 1;
      r3.y = r3.y * r2.y + r3.z;
      r6.w = r6.w * r6.w;
      r3.y = r6.w * r3.y;
      r3.y = rcp(r3.y);
      r3.y = r3.y * r4.z;
      r3.y = r3.w * r3.y;
      r3.y = 0.25 * r3.y;
      r21.xyz = r3.yyy * r16.yzw + r15.yzw;
      r0.w = saturate(1 + -r0.w);
      r4.z = r0.w * r0.w;
      r4.z = r4.z * r4.z;
      r0.w = r4.z * r0.w;
      r0.w = r3.y * r0.w;
      r22.xyz = r0.www * r16.zwy + r19.xyz;
      r20.w = r22.z;
      r18.w = r19.z;
      r18.xyzw = r2.wwww ? r20.xyzw : r18.xyzw;
      r22.zw = r21.xy;
      r19.zw = r15.yz;
      r20.xyzw = r2.wwww ? r22.xyzw : r19.xyzw;
      r15.w = r2.w ? r21.z : r15.w;
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.w, cb2[52].x, l(112), u2.xxxx
      r0.w = samp0[]..swiz;
        r0.w = (int)r0.w | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r19.z = r18.w;
      r19.xy = r20.xy;
      r15.yz = r20.zw;
      r0.w = 0x00010101;
    } else {
      r0.w = 257;
    }
  } else {
    r0.w = 1;
  }
  r2.w = (uint)renderTargetSize.x;
  r2.w = (int)r2.w + 7;
  r2.w = (uint)r2.w >> 3;
  r2.w = mad((int)r0.z, (int)r2.w, (int)r0.x);
  r2.w = (uint)r2.w << 5;
  r3.y = ~(int)r3.x;
  r20.x = -r13.x;
  r2.x = -r2.x * 0.5 + 1;
  r21.x = 2;
  r5.w = 1;
  r22.x = 2;
  r23.z = 1;
  r24.w = 1;
  r25.w = 1;
  r26.w = 1;
  r20.z = r13.x;
  r27.w = 1;
  r20.yw = r14.xx;
  r13.y = r20.w;
  r14.y = r20.x;
  r28.x = r14.x;
  r28.y = r20.x;
  r28.z = r13.x;
  r14.z = r13.x;
  r29.w = 1;
  r30.x = r14.x;
  r30.y = r20.x;
  r30.z = r13.x;
  r31.x = r14.x;
  r31.y = r20.x;
  r31.z = r13.x;
  r16.yzw = r18.xyz;
  r32.xyz = r19.zxy;
  r33.xyz = r15.yzw;
  r3.w = enableDitheredShadow;
  r4.z = r0.w;
  r6.w = 0;
  while (true) {
    r7.w = cmp((uint)r6.w >= numLights);
    if (r7.w != 0) break;
    r7.w = (uint)r6.w >> 5;
    r7.w = (int)r2.w + (int)r7.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(0), t26.xxxx
  r7.w = samp0[]..swiz;
    r34.xyz = r16.yzw;
    r35.xyz = r32.xyz;
    r36.xyz = r33.xyz;
    r8.w = r3.w;
    r9.w = r4.z;
    r10.w = r7.w;
    while (true) {
      if (r10.w == 0) break;
      r11.w = firstbitlow((uint)r10.w);
      r12.w = 1 << (int)r11.w;
      r12.w = ~(int)r12.w;
      r10.w = (int)r10.w & (int)r12.w;
      r11.w = (int)r6.w + (int)r11.w;
      r11.w = (int)r11.w * 15;
      if (3 == 0) r12.w = 0; else if (3+24 < 32) {       r12.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(3 + 24)); r12.w = (uint)r12.w >> (32-3);      } else r12.w = (uint)lightConstantsCB[r11.w].data[1].w >> 24;
      r13.z = cmp((int)r12.w == 2);
      if (r13.z != 0) {
        if (3 == 0) r13.z = 0; else if (3+27 < 32) {         r13.z = (uint)lightConstantsCB[r11.w].data[1].w << (32-(3 + 27)); r13.z = (uint)r13.z >> (32-3);        } else r13.z = (uint)lightConstantsCB[r11.w].data[1].w >> 27;
        r13.w = (int)r9.w & 255;
        r14.w = cmp((uint)r13.w < 32);
        r14.w = r2.z ? r14.w : 0;
        if (r14.w != 0) {
          r13.w = mad((int)r13.w, 24, 112);
          r21.yzw = lightConstantsCB[r11.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r13.w = u2.xyzw;
        }
        r13.w = (int)r9.w + 1;
        r37.xy = lightConstantsCB[r11.w].data[3].zw + -r5.xy;
        r37.z = lightConstantsCB[r11.w].data[4].x + -r5.z;
        r14.w = dot(r37.xyz, r37.xyz);
        r14.w = rsqrt(r14.w);
        r21.yzw = r37.xyz * r14.www;
        r17.w = lightConstantsCB[r11.w].data[1].z * r1.z;
        r17.w = 0.25 * r17.w;
        r18.w = dot(r11.xyz, r21.yzw);
        r19.w = saturate(r18.w);
        r21.y = cmp(0 < r19.w);
        if (r21.y != 0) {
          r38.xyz = lightConstantsCB[r11.w].data[7].yzw;
          r38.w = lightConstantsCB[r11.w].data[8].x;
          r21.y = dot(r38.xyzw, r5.xyzw);
          r21.z = cmp(r21.y < 1);
          if (r21.z != 0) {
            r39.xyz = float3(1,1,1);
            r21.z = 0;
          } else {
            r40.xyz = lightConstantsCB[r11.w].data[0].xyz + -r5.xyz;
            r21.w = lightConstantsCB[r11.w].data[3].x * lightConstantsCB[r11.w].data[3].x;
            r23.w = dot(r40.xyz, r40.xyz);
            r21.w = r21.w / r23.w;
            r21.w = min(1, r21.w);
            r40.xy = saturate(r21.yy * lightConstantsCB[r11.w].data[2].xz + lightConstantsCB[r11.w].data[2].yw);
            r40.zw = r40.xy * r40.xy;
            r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
            r40.xy = r40.zw * r40.xy;
            r21.w = r40.x * r21.w;
            r21.w = r21.w * r40.y;
            r40.xyz = lightConstantsCB[r11.w].data[4].yzw;
            r40.w = lightConstantsCB[r11.w].data[5].x;
            r40.x = dot(r40.xyzw, r5.xyzw);
            r41.xyz = lightConstantsCB[r11.w].data[5].yzw;
            r41.w = lightConstantsCB[r11.w].data[6].x;
            r40.y = dot(r41.xyzw, r5.xyzw);
            r23.xy = r40.xy / r21.yy;
            r21.y = cmp(lightConstantsCB[r11.w].data[10].w < 0.00048828125);
            if (r21.y != 0) {
              r40.xy = saturate(abs(r23.xy) * lightConstantsCB[r11.w].data[12].xy + lightConstantsCB[r11.w].data[12].zw);
              r40.zw = r40.xy * r40.xy;
              r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
              r40.xy = r40.zw * r40.xy;
              r21.y = r40.x * r40.y;
            } else {
              r40.xyzw = saturate(lightConstantsCB[r11.w].data[11].xyzw * abs(r23.yyxx));
              r40.xyzw = log2(r40.xyzw);
              r40.xyzw = lightConstantsCB[r11.w].data[12].zzzz * r40.xyzw;
              r40.xyzw = exp2(r40.xyzw);
              r40.xy = r40.xy + r40.zw;
              r40.xy = log2(r40.xy);
              r40.xy = lightConstantsCB[r11.w].data[12].ww * r40.xy;
              r40.xy = exp2(r40.xy);
              r23.w = lightConstantsCB[r11.w].data[12].x * r40.x;
              r28.w = lightConstantsCB[r11.w].data[12].y * r40.y + -1;
              r23.w = lightConstantsCB[r11.w].data[12].y * r40.y + -r23.w;
              r23.w = saturate(r28.w / r23.w);
              r28.w = r23.w * r23.w;
              r23.w = r23.w * -2 + 3;
              r21.y = r28.w * r23.w;
            }
            r21.z = r21.w * r21.y;
            r21.y = 255 & (int)lightConstantsCB[r11.w].data[14].w;
            if (r21.y != 0) {
              r21.w = dot(lightConstantsCB[r11.w].data[13].xyz, r23.xyz);
              r40.x = lightConstantsCB[r11.w].data[13].w;
              r40.yz = lightConstantsCB[r11.w].data[14].xy;
              r23.x = dot(r40.xyz, r23.xyz);
              r40.x = frac(r21.w);
              r40.y = frac(r23.x);
              r21.y = (int)r21.y + -1;
              r40.z = (uint)r21.y;
              r39.xyz = gCookieArray.SampleLevel(samplerLinear_s, r40.xyz, 0).xyz;
            } else {
              r39.xyz = float3(1,1,1);
            }
          }
          r40.x = lightConstantsCB[r11.w].data[0].w;
          r40.yz = lightConstantsCB[r11.w].data[1].xy;
          r23.xyw = r40.xyz * r39.xyz;
          r21.y = cmp(0 < r21.z);
          if (r21.y != 0) {
            r21.y = (int)r13.w & 255;
            r21.w = (int)r21.y + -1;
            r21.w = cmp((uint)r21.w < 32);
            r21.w = r2.z ? r21.w : 0;
            if (r21.w != 0) {
              r21.yw = mad((int2)r21.yy, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r28.w, cb2[52].x, r21.y, u2.xxxx
            r28.w = samp0[]..swiz;
              r28.w = (int)r28.w | 4;
              GBufferDiffuseColor[viewID].r21.y = u2.x;
              GBufferDiffuseColor[viewID].r21.w = u2.x;
            }
            r21.y = (int)r9.w + 257;
            r13.z = cmp((int)r13.z != 1);
            if (r13.z != 0) {
              r13.z = abs(r18.w) * -0.200000003 + 0.400000006;
              r24.xyz = r11.xyz * r13.zzz + r5.xyz;
              r39.xyz = lightConstantsCB[r11.w].data[6].yzw;
              r39.w = lightConstantsCB[r11.w].data[7].x;
              r13.z = dot(r39.xyzw, r24.xyzw);
              r21.w = dot(r38.xyzw, r24.xyzw);
              r28.w = cmp(r21.w >= r13.z);
              if (r28.w != 0) {
                r38.xyz = lightConstantsCB[r11.w].data[4].yzw;
                r38.w = lightConstantsCB[r11.w].data[5].x;
                r38.x = dot(r38.xyzw, r24.xyzw);
                r39.xyz = lightConstantsCB[r11.w].data[5].yzw;
                r39.w = lightConstantsCB[r11.w].data[6].x;
                r38.y = dot(r39.xyzw, r24.xyzw);
                r24.xy = r38.xy / r21.ww;
                r24.xy = saturate(r24.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r38.x = r24.x * lightConstantsCB[r11.w].data[8].y + lightConstantsCB[r11.w].data[8].z;
                r38.y = r24.y * lightConstantsCB[r11.w].data[8].w + lightConstantsCB[r11.w].data[9].x;
                r13.z = r13.z / r21.w;
                r13.z = max(6.10351563e-05, r13.z);
                r21.w = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
                if (r8.w != 0) {
                  r24.z = (uint)r21.w;
                  r28.w = 0;
                  r30.w = 0;
                  while (true) {
                    r31.w = cmp((int)r30.w >= 8);
                    if (r31.w != 0) break;
                    r39.x = dot(icb[r30.w+0].yx, r20.xy);
                    r39.y = dot(icb[r30.w+0].yx, r20.yz);
                    r24.xy = r39.xy * lightConstantsCB[r11.w].data[3].yy + r38.xy;
                    r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r13.z).x;
                    r28.w = r24.x * 0.125 + r28.w;
                    r30.w = (int)r30.w + 1;
                  }
                } else {
                  r38.z = (uint)r21.w;
                  r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r13.z).x;
                }
                r13.z = r28.w * r28.w;
                r13.z = r13.z * r28.w;
              } else {
                r13.z = 1;
              }
            } else {
              r13.z = 1;
            }
            r13.z = r21.z * r13.z;
            r21.z = cmp(0 < r13.z);
            if (r21.z != 0) {
              if (4 == 0) r21.z = 0; else if (4+16 < 32) {               r21.z = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 16)); r21.z = (uint)r21.z >> (32-4);              } else r21.z = (uint)lightConstantsCB[r11.w].data[1].w >> 16;
              r21.w = cmp(0 < (uint)r21.z);
              r21.w = r21.w ? r3.x : 0;
              if (r21.w != 0) {
                r21.z = (int)r21.z + numLights;
                r21.z = mad((int)r21.z, 15, -15);
                r21.w = abs(r18.w) * -0.200000003 + 0.400000006;
                r25.xyz = r11.xyz * r21.www + r5.xyz;
                r38.xyz = lightConstantsCB[r21.z].data[6].yzw;
                r38.w = lightConstantsCB[r21.z].data[7].x;
                r21.w = dot(r38.xyzw, r25.xyzw);
                r38.xyz = lightConstantsCB[r21.z].data[7].yzw;
                r38.w = lightConstantsCB[r21.z].data[8].x;
                r24.x = dot(r38.xyzw, r25.xyzw);
                r24.y = cmp(r24.x < r21.w);
                if (r24.y == 0) {
                  r38.xyz = lightConstantsCB[r21.z].data[4].yzw;
                  r38.w = lightConstantsCB[r21.z].data[5].x;
                  r38.x = dot(r38.xyzw, r25.xyzw);
                  r39.xyz = lightConstantsCB[r21.z].data[5].yzw;
                  r39.w = lightConstantsCB[r21.z].data[6].x;
                  r38.y = dot(r39.xyzw, r25.xyzw);
                  r25.xy = r38.xy / r24.xx;
                  r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r38.x = lightConstantsCB[r21.z].data[9].w + r25.x;
                  r38.y = lightConstantsCB[r21.z].data[10].x + r25.y;
                  r25.xy = lightConstantsCB[r21.z].data[9].yz * r38.xy;
                  r38.xy = lightConstantsCB[r21.z].data[3].yy / lightConstantsCB[r21.z].data[8].yw;
                  r38.zw = float2(1,1) + -r38.xy;
                  r38.zw = cmp(r25.xy >= r38.zw);
                  r38.xy = cmp(r38.xy >= r25.xy);
                  r38.xy = (int2)r38.xy | (int2)r38.zw;
                  r24.z = (int)r38.y | (int)r38.x;
                  if (r24.z == 0) {
                    r25.xy = saturate(r25.xy);
                    r38.x = r25.x * lightConstantsCB[r21.z].data[8].y + lightConstantsCB[r21.z].data[8].z;
                    r38.y = r25.y * lightConstantsCB[r21.z].data[8].w + lightConstantsCB[r21.z].data[9].x;
                    r25.x = lightConstantsCB[r21.z].data[10].z * r24.x;
                    r21.w = lightConstantsCB[r21.z].data[10].y * r24.x + r21.w;
                    r21.w = r21.w / r25.x;
                  }
                } else {
                  r24.z = -1;
                }
                r24.x = (int)r24.y | (int)r24.z;
                if (r24.x == 0) {
                  r21.w = max(6.10351563e-05, r21.w);
                  r24.x = 0x0000ffff & (int)lightConstantsCB[r21.z].data[1].w;
                  if (r8.w != 0) {
                    r25.z = (uint)r24.x;
                    r24.yz = float2(0,0);
                    while (true) {
                      r30.w = cmp((int)r24.z >= 8);
                      if (r30.w != 0) break;
                      r39.x = dot(icb[r24.z+0].yx, r20.xw);
                      r39.y = dot(icb[r24.z+0].xy, r13.xy);
                      r25.xy = r39.xy * lightConstantsCB[r21.z].data[3].yy + r38.xy;
                      r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.w).x;
                      r24.y = r25.x * 0.125 + r24.y;
                      r24.z = (int)r24.z + 1;
                    }
                  } else {
                    r38.z = (uint)r24.x;
                    r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r21.w).x;
                  }
                  r21.z = r24.y * r24.y;
                  r21.z = r21.z * r24.y;
                } else {
                  r21.z = 1;
                }
                r13.z = r21.z * r13.z;
              } else {
                if (4 == 0) r21.z = 0; else if (4+20 < 32) {                 r21.z = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 20)); r21.z = (uint)r21.z >> (32-4);                } else r21.z = (uint)lightConstantsCB[r11.w].data[1].w >> 20;
                r21.w = cmp(0 < (uint)r21.z);
                r21.w = r21.w ? r3.y : 0;
                if (r21.w != 0) {
                  r21.z = (int)r21.z + numLights;
                  r21.z = mad((int)r21.z, 15, -15);
                  r21.w = abs(r18.w) * -0.200000003 + 0.400000006;
                  r26.xyz = r11.xyz * r21.www + r5.xyz;
                  r38.xyz = lightConstantsCB[r21.z].data[6].yzw;
                  r38.w = lightConstantsCB[r21.z].data[7].x;
                  r21.w = dot(r38.xyzw, r26.xyzw);
                  r38.xyz = lightConstantsCB[r21.z].data[7].yzw;
                  r38.w = lightConstantsCB[r21.z].data[8].x;
                  r24.x = dot(r38.xyzw, r26.xyzw);
                  r24.z = cmp(r24.x < r21.w);
                  if (r24.z == 0) {
                    r38.xyz = lightConstantsCB[r21.z].data[4].yzw;
                    r38.w = lightConstantsCB[r21.z].data[5].x;
                    r25.x = dot(r38.xyzw, r26.xyzw);
                    r38.xyz = lightConstantsCB[r21.z].data[5].yzw;
                    r38.w = lightConstantsCB[r21.z].data[6].x;
                    r25.y = dot(r38.xyzw, r26.xyzw);
                    r25.xy = r25.xy / r24.xx;
                    r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r26.x = lightConstantsCB[r21.z].data[9].w + r25.x;
                    r26.y = lightConstantsCB[r21.z].data[10].x + r25.y;
                    r25.xy = lightConstantsCB[r21.z].data[9].yz * r26.xy;
                    r26.xy = lightConstantsCB[r21.z].data[3].yy / lightConstantsCB[r21.z].data[8].yw;
                    r38.xy = float2(1,1) + -r26.xy;
                    r38.xy = cmp(r25.xy >= r38.xy);
                    r26.xy = cmp(r26.xy >= r25.xy);
                    r26.xy = (int2)r26.xy | (int2)r38.xy;
                    r25.z = (int)r26.y | (int)r26.x;
                    if (r25.z == 0) {
                      r25.xy = saturate(r25.xy);
                      r26.x = r25.x * lightConstantsCB[r21.z].data[8].y + lightConstantsCB[r21.z].data[8].z;
                      r26.y = r25.y * lightConstantsCB[r21.z].data[8].w + lightConstantsCB[r21.z].data[9].x;
                      r25.x = lightConstantsCB[r21.z].data[10].z * r24.x;
                      r21.w = lightConstantsCB[r21.z].data[10].y * r24.x + r21.w;
                      r21.w = r21.w / r25.x;
                    }
                  } else {
                    r25.z = -1;
                  }
                  r24.x = (int)r24.z | (int)r25.z;
                  if (r24.x == 0) {
                    r21.w = max(6.10351563e-05, r21.w);
                    r24.x = 0x0000ffff & (int)lightConstantsCB[r21.z].data[1].w;
                    if (r8.w != 0) {
                      r25.z = (uint)r24.x;
                      r24.z = 0;
                      r30.w = 0;
                      while (true) {
                        r31.w = cmp((int)r30.w >= 8);
                        if (r31.w != 0) break;
                        r38.x = dot(icb[r30.w+0].xy, r28.xy);
                        r38.y = dot(icb[r30.w+0].yx, r28.xz);
                        r25.xy = r38.xy * lightConstantsCB[r21.z].data[3].yy + r26.xy;
                        r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.w).x;
                        r24.z = r25.x * 0.125 + r24.z;
                        r30.w = (int)r30.w + 1;
                      }
                    } else {
                      r26.z = (uint)r24.x;
                      r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r21.w).x;
                    }
                    r21.z = r24.z * r24.z;
                    r21.z = r21.z * r24.z;
                  } else {
                    r21.z = 1;
                  }
                  r13.z = r21.z * r13.z;
                }
              }
              r21.z = -r19.w * r2.x + 1;
              r21.z = r21.z * r21.z;
              r21.z = -r21.z * 0.620000005 + 0.620000005;
              r21.z = r21.z + -r19.w;
              r21.z = r1.w * r21.z + r19.w;
              r21.z = r21.z * r13.z;
              r18.w = cmp(0 < r18.w);
              r25.xyz = r21.zzz * r23.xyw + r34.xyz;
              r26.xyz = r37.xyz * r14.www + r12.xyz;
              r14.w = dot(r26.xyz, r26.xyz);
              r14.w = rsqrt(r14.w);
              r26.xyz = r26.xyz * r14.www;
              r14.w = dot(r26.xyz, r12.xyz);
              r21.z = dot(r11.xyz, r26.xyz);
              r21.w = abs(r21.z) * r1.z + -abs(r21.z);
              r21.z = abs(r21.z) * r21.w + 1;
              r21.w = r19.w * r2.y + r3.z;
              r21.z = r21.z * r21.z;
              r21.z = r21.z * r21.w;
              r21.z = rcp(r21.z);
              r17.w = r19.w * r17.w;
              r17.w = r21.z * r17.w;
              r17.w = r17.w * r13.z;
              r26.xyz = r17.www * r23.xyw + r36.xyz;
              r14.w = saturate(1 + -r14.w);
              r19.w = r14.w * r14.w;
              r19.w = r19.w * r19.w;
              r14.w = r19.w * r14.w;
              r14.w = r17.w * r14.w;
              r23.xyw = r14.www * r23.xyw + r35.xyz;
              r34.xyz = r18.www ? r25.xyz : r34.xyz;
              r35.xyz = r18.www ? r23.xyw : r35.xyz;
              r36.xyz = r18.www ? r26.xyz : r36.xyz;
              r14.w = (int)r21.y & 255;
              r17.w = (int)r14.w + -1;
              r17.w = cmp((uint)r17.w < 32);
              r17.w = r2.z ? r17.w : 0;
              if (r17.w != 0) {
                r21.zw = mad((int2)r14.ww, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.w, cb2[52].x, r21.z, u2.xxxx
              r14.w = samp0[]..swiz;
                r14.w = (int)r14.w | 8;
                GBufferDiffuseColor[viewID].r21.z = u2.x;
                GBufferDiffuseColor[viewID].r21.w = u2.x;
              }
              r9.w = (int)r9.w + 0x00010101;
            } else {
              r9.w = r21.y;
            }
          } else {
            r9.w = r13.w;
          }
        } else {
          r9.w = r13.w;
        }
      } else {
        r12.w = cmp((int)r12.w == 4);
        if (r12.w != 0) {
          if (3 == 0) r12.w = 0; else if (3+27 < 32) {           r12.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)lightConstantsCB[r11.w].data[1].w >> 27;
          r13.z = (int)r9.w & 255;
          r13.w = cmp((uint)r13.z < 32);
          r13.w = r2.z ? r13.w : 0;
          if (r13.w != 0) {
            r13.z = mad((int)r13.z, 24, 112);
            r22.yzw = lightConstantsCB[r11.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r13.z = u2.xyzw;
          }
          r13.z = (int)r9.w + 1;
          r13.w = lightConstantsCB[r11.w].data[1].z * r1.z;
          r13.w = 0.25 * r13.w;
          r14.w = cmp(0 < lightConstantsCB[r11.w].data[6].y);
          r25.xy = lightConstantsCB[r11.w].data[5].zw;
          r25.z = lightConstantsCB[r11.w].data[6].x;
          r21.yzw = -r25.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r11.w].data[0].xyz;
          r22.yzw = r21.yzw + -r5.xyz;
          r17.w = dot(r25.xyz, r17.xyz);
          r18.w = dot(r25.xyz, r22.yzw);
          r19.w = dot(r17.xyz, r22.yzw);
          r22.y = -r17.w * r17.w + lightConstantsCB[r11.w].data[6].y;
          r17.w = r17.w * r19.w + -r18.w;
          r18.w = saturate(-r18.w / lightConstantsCB[r11.w].data[6].y);
          r17.w = saturate(r17.w / r22.y);
          r19.w = r22.y / lightConstantsCB[r11.w].data[6].y;
          r19.w = 10 * r19.w;
          r19.w = min(1, r19.w);
          r17.w = r17.w + -r18.w;
          r17.w = r19.w * r17.w + r18.w;
          r22.yzw = r17.www * r25.xyz + r21.yzw;
          r21.yzw = r18.www * r25.xyz + r21.yzw;
          r21.yzw = r14.www ? r21.yzw : lightConstantsCB[r11.w].data[0].xyz;
          r22.yzw = r14.www ? r22.yzw : lightConstantsCB[r11.w].data[0].xyz;
          r22.yzw = r22.yzw + -r5.xyz;
          r21.yzw = r21.yzw + -r5.xyz;
          r14.w = dot(r22.yzw, r22.yzw);
          r14.w = rsqrt(r14.w);
          r23.xyw = r22.yzw * r14.www;
          r17.w = dot(r21.yzw, r21.yzw);
          r18.w = rsqrt(r17.w);
          r21.yzw = r21.yzw * r18.www;
          r18.w = dot(r11.xyz, r21.yzw);
          r19.w = saturate(r18.w);
          r21.y = cmp(0 < r19.w);
          if (r21.y != 0) {
            r21.y = sqrt(r17.w);
            r21.z = lightConstantsCB[r11.w].data[3].x * lightConstantsCB[r11.w].data[3].x;
            r17.w = r21.z / r17.w;
            r17.w = min(1, r17.w);
            r21.yz = saturate(r21.yy * lightConstantsCB[r11.w].data[2].xz + lightConstantsCB[r11.w].data[2].yw);
            r25.xy = r21.yz * r21.yz;
            r21.yz = r21.yz * float2(-2,-2) + float2(3,3);
            r21.yz = r25.xy * r21.yz;
            r17.w = r21.y * r17.w;
            r17.w = r17.w * r21.z;
            r21.y = cmp(0 < r17.w);
            if (r21.y != 0) {
              r21.y = (int)r13.z & 255;
              r21.z = (int)r21.y + -1;
              r21.z = cmp((uint)r21.z < 32);
              r21.z = r2.z ? r21.z : 0;
              if (r21.z != 0) {
                r21.yz = mad((int2)r21.yy, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r21.w, cb2[52].x, r21.y, u2.xxxx
              r21.w = samp0[]..swiz;
                r21.w = (int)r21.w | 4;
                GBufferDiffuseColor[viewID].r21.y = u2.x;
                GBufferDiffuseColor[viewID].r21.z = u2.x;
              }
              r21.y = (int)r9.w + 257;
              r12.w = cmp((int)r12.w != 1);
              if (r12.w != 0) {
                r12.w = abs(r18.w) * -0.200000003 + 0.400000006;
                r25.xyz = r11.xyz * r12.www + r5.xyz;
                r25.xyz = -lightConstantsCB[r11.w].data[4].yzw + r25.xyz;
                r12.w = max(abs(r25.y), abs(r25.z));
                r12.w = max(abs(r25.x), r12.w);
                r12.w = lightConstantsCB[r11.w].data[5].x / r12.w;
                r12.w = lightConstantsCB[r11.w].data[5].y + r12.w;
                r21.z = dot(r25.xyz, r25.xyz);
                r21.z = rsqrt(r21.z);
                r12.w = max(6.10351563e-05, r12.w);
                r21.w = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
                r37.w = (uint)r21.w;
                r21.w = 0;
                r24.x = 0;
                while (true) {
                  r26.x = cmp((int)r24.x >= 8);
                  if (r26.x != 0) break;
                  r26.y = dot(icb[r24.x+0].xy, r14.xy);
                  r26.z = dot(icb[r24.x+0].yx, r14.xz);
                  r38.yz = lightConstantsCB[r11.w].data[3].yy * r26.yz;
                  r38.x = r38.y * r16.x;
                  r38.w = r38.y * r15.x;
                  r37.xyz = r25.xyz * r21.zzz + r38.xzw;
                  r26.x = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r12.w).x;
                  r21.w = r26.x * 0.125 + r21.w;
                  r24.x = (int)r24.x + 1;
                }
              } else {
                r21.w = 1;
              }
              r12.w = r21.w * r17.w;
              r17.w = cmp(0 < r12.w);
              if (r17.w != 0) {
                if (4 == 0) r17.w = 0; else if (4+16 < 32) {                 r17.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 16)); r17.w = (uint)r17.w >> (32-4);                } else r17.w = (uint)lightConstantsCB[r11.w].data[1].w >> 16;
                r21.z = cmp(0 < (uint)r17.w);
                r21.z = r21.z ? r3.x : 0;
                if (r21.z != 0) {
                  r17.w = (int)r17.w + numLights;
                  r17.w = mad((int)r17.w, 15, -15);
                  r21.z = abs(r18.w) * -0.200000003 + 0.400000006;
                  r27.xyz = r11.xyz * r21.zzz + r5.xyz;
                  r37.xyz = lightConstantsCB[r17.w].data[6].yzw;
                  r37.w = lightConstantsCB[r17.w].data[7].x;
                  r21.z = dot(r37.xyzw, r27.xyzw);
                  r37.xyz = lightConstantsCB[r17.w].data[7].yzw;
                  r37.w = lightConstantsCB[r17.w].data[8].x;
                  r24.x = dot(r37.xyzw, r27.xyzw);
                  r25.x = cmp(r24.x < r21.z);
                  if (r25.x == 0) {
                    r37.xyz = lightConstantsCB[r17.w].data[4].yzw;
                    r37.w = lightConstantsCB[r17.w].data[5].x;
                    r26.x = dot(r37.xyzw, r27.xyzw);
                    r37.xyz = lightConstantsCB[r17.w].data[5].yzw;
                    r37.w = lightConstantsCB[r17.w].data[6].x;
                    r26.y = dot(r37.xyzw, r27.xyzw);
                    r25.yz = r26.xy / r24.xx;
                    r25.yz = r25.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r26.x = lightConstantsCB[r17.w].data[9].w + r25.y;
                    r26.y = lightConstantsCB[r17.w].data[10].x + r25.z;
                    r25.yz = lightConstantsCB[r17.w].data[9].yz * r26.xy;
                    r26.xy = lightConstantsCB[r17.w].data[3].yy / lightConstantsCB[r17.w].data[8].yw;
                    r27.xy = float2(1,1) + -r26.xy;
                    r27.xy = cmp(r25.yz >= r27.xy);
                    r26.xy = cmp(r26.xy >= r25.yz);
                    r26.xy = (int2)r26.xy | (int2)r27.xy;
                    r26.x = (int)r26.y | (int)r26.x;
                    if (r26.x == 0) {
                      r25.yz = saturate(r25.yz);
                      r27.x = r25.y * lightConstantsCB[r17.w].data[8].y + lightConstantsCB[r17.w].data[8].z;
                      r27.y = r25.z * lightConstantsCB[r17.w].data[8].w + lightConstantsCB[r17.w].data[9].x;
                      r25.y = lightConstantsCB[r17.w].data[10].z * r24.x;
                      r21.z = lightConstantsCB[r17.w].data[10].y * r24.x + r21.z;
                      r21.z = r21.z / r25.y;
                    }
                  } else {
                    r26.x = -1;
                  }
                  r24.x = (int)r25.x | (int)r26.x;
                  if (r24.x == 0) {
                    r21.z = max(6.10351563e-05, r21.z);
                    r24.x = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                    if (r8.w != 0) {
                      r25.z = (uint)r24.x;
                      r26.xy = float2(0,0);
                      while (true) {
                        r26.z = cmp((int)r26.y >= 8);
                        if (r26.z != 0) break;
                        r37.x = dot(icb[r26.y+0].xy, r30.xy);
                        r37.y = dot(icb[r26.y+0].yx, r30.xz);
                        r25.xy = r37.xy * lightConstantsCB[r17.w].data[3].yy + r27.xy;
                        r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.z).x;
                        r26.x = r25.x * 0.125 + r26.x;
                        r26.y = (int)r26.y + 1;
                      }
                    } else {
                      r27.z = (uint)r24.x;
                      r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r21.z).x;
                    }
                    r17.w = r26.x * r26.x;
                    r17.w = r17.w * r26.x;
                  } else {
                    r17.w = 1;
                  }
                  r12.w = r17.w * r12.w;
                } else {
                  if (4 == 0) r17.w = 0; else if (4+20 < 32) {                   r17.w = (uint)lightConstantsCB[r11.w].data[1].w << (32-(4 + 20)); r17.w = (uint)r17.w >> (32-4);                  } else r17.w = (uint)lightConstantsCB[r11.w].data[1].w >> 20;
                  r21.z = cmp(0 < (uint)r17.w);
                  r21.z = r21.z ? r3.y : 0;
                  if (r21.z != 0) {
                    r17.w = (int)r17.w + numLights;
                    r17.w = mad((int)r17.w, 15, -15);
                    r21.z = abs(r18.w) * -0.200000003 + 0.400000006;
                    r29.xyz = r11.xyz * r21.zzz + r5.xyz;
                    r37.xyz = lightConstantsCB[r17.w].data[6].yzw;
                    r37.w = lightConstantsCB[r17.w].data[7].x;
                    r21.z = dot(r37.xyzw, r29.xyzw);
                    r37.xyz = lightConstantsCB[r17.w].data[7].yzw;
                    r37.w = lightConstantsCB[r17.w].data[8].x;
                    r24.x = dot(r37.xyzw, r29.xyzw);
                    r25.x = cmp(r24.x < r21.z);
                    if (r25.x == 0) {
                      r37.xyz = lightConstantsCB[r17.w].data[4].yzw;
                      r37.w = lightConstantsCB[r17.w].data[5].x;
                      r27.x = dot(r37.xyzw, r29.xyzw);
                      r37.xyz = lightConstantsCB[r17.w].data[5].yzw;
                      r37.w = lightConstantsCB[r17.w].data[6].x;
                      r27.y = dot(r37.xyzw, r29.xyzw);
                      r25.yz = r27.xy / r24.xx;
                      r25.yz = r25.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                      r27.x = lightConstantsCB[r17.w].data[9].w + r25.y;
                      r27.y = lightConstantsCB[r17.w].data[10].x + r25.z;
                      r25.yz = lightConstantsCB[r17.w].data[9].yz * r27.xy;
                      r26.yz = lightConstantsCB[r17.w].data[3].yy / lightConstantsCB[r17.w].data[8].yw;
                      r27.xy = float2(1,1) + -r26.yz;
                      r27.xy = cmp(r25.yz >= r27.xy);
                      r26.yz = cmp(r26.yz >= r25.yz);
                      r26.yz = (int2)r26.yz | (int2)r27.xy;
                      r26.y = (int)r26.z | (int)r26.y;
                      if (r26.y == 0) {
                        r25.yz = saturate(r25.yz);
                        r27.x = r25.y * lightConstantsCB[r17.w].data[8].y + lightConstantsCB[r17.w].data[8].z;
                        r27.y = r25.z * lightConstantsCB[r17.w].data[8].w + lightConstantsCB[r17.w].data[9].x;
                        r25.y = lightConstantsCB[r17.w].data[10].z * r24.x;
                        r21.z = lightConstantsCB[r17.w].data[10].y * r24.x + r21.z;
                        r21.z = r21.z / r25.y;
                      }
                    } else {
                      r26.y = -1;
                    }
                    r24.x = (int)r25.x | (int)r26.y;
                    if (r24.x == 0) {
                      r21.z = max(6.10351563e-05, r21.z);
                      r24.x = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                      if (r8.w != 0) {
                        r25.z = (uint)r24.x;
                        r26.yz = float2(0,0);
                        while (true) {
                          r29.x = cmp((int)r26.z >= 8);
                          if (r29.x != 0) break;
                          r29.x = dot(icb[r26.z+0].xy, r31.xy);
                          r29.y = dot(icb[r26.z+0].yx, r31.xz);
                          r25.xy = r29.xy * lightConstantsCB[r17.w].data[3].yy + r27.xy;
                          r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.z).x;
                          r26.y = r25.x * 0.125 + r26.y;
                          r26.z = (int)r26.z + 1;
                        }
                      } else {
                        r27.z = (uint)r24.x;
                        r26.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r21.z).x;
                      }
                      r17.w = r26.y * r26.y;
                      r17.w = r17.w * r26.y;
                    } else {
                      r17.w = 1;
                    }
                    r12.w = r17.w * r12.w;
                  }
                }
                r17.w = -r19.w * r2.x + 1;
                r17.w = r17.w * r17.w;
                r17.w = -r17.w * 0.620000005 + 0.620000005;
                r17.w = r17.w + -r19.w;
                r17.w = r1.w * r17.w + r19.w;
                r17.w = r17.w * r12.w;
                r25.x = lightConstantsCB[r11.w].data[0].w;
                r25.yz = lightConstantsCB[r11.w].data[1].xy;
                r11.w = cmp(0 < r18.w);
                r27.xyz = r17.www * r25.xyz + r34.xyz;
                r17.w = saturate(dot(r11.xyz, r23.xyw));
                r22.yzw = r22.yzw * r14.www + r12.xyz;
                r14.w = dot(r22.yzw, r22.yzw);
                r14.w = rsqrt(r14.w);
                r22.yzw = r22.yzw * r14.www;
                r14.w = dot(r22.yzw, r12.xyz);
                r18.w = dot(r11.xyz, r22.yzw);
                r19.w = abs(r18.w) * r1.z + -abs(r18.w);
                r18.w = abs(r18.w) * r19.w + 1;
                r19.w = r17.w * r2.y + r3.z;
                r18.w = r18.w * r18.w;
                r18.w = r18.w * r19.w;
                r18.w = rcp(r18.w);
                r13.w = r17.w * r13.w;
                r13.w = r18.w * r13.w;
                r13.w = r13.w * r12.w;
                r22.yzw = r13.www * r25.xyz + r36.xyz;
                r14.w = saturate(1 + -r14.w);
                r17.w = r14.w * r14.w;
                r17.w = r17.w * r17.w;
                r14.w = r17.w * r14.w;
                r13.w = r14.w * r13.w;
                r23.xyw = r13.www * r25.xyz + r35.xyz;
                r34.xyz = r11.www ? r27.xyz : r34.xyz;
                r35.xyz = r11.www ? r23.xyw : r35.xyz;
                r36.xyz = r11.www ? r22.yzw : r36.xyz;
                r11.w = (int)r21.y & 255;
                r13.w = (int)r11.w + -1;
                r13.w = cmp((uint)r13.w < 32);
                r13.w = r2.z ? r13.w : 0;
                if (r13.w != 0) {
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
                r9.w = r21.y;
              }
            } else {
              r9.w = r13.z;
            }
          } else {
            r9.w = r13.z;
          }
        }
      }
    }
    r16.yzw = r34.xyz;
    r32.xyz = r35.xyz;
    r33.xyz = r36.xyz;
    r4.z = r9.w;
    r6.w = (int)r6.w + 32;
  }
  r3.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.w = (uint)r3.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.w == (int)r1.z);
  r1.zw = r1.zz ? r2.yw : float2(-1,0);
  r2.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.w == (int)r2.x);
  r2.xy = r2.xx ? r2.yw : float2(-1,0);
  r4.xyw = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r4.x;
  r2.w = cmp((int)r0.w == (int)r2.w);
  r4.xy = r2.ww ? r4.yw : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r7.x;
  r0.w = cmp((int)r0.w == (int)r2.w);
  r7.xy = r0.ww ? r7.yz : float2(-1,0);
  r8.x = r1.z;
  r8.y = r2.x;
  r8.z = r4.x;
  r8.w = r7.x;
  r8.xyzw = r8.xyzw + -r3.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.w = r8.x + r8.y;
  r0.w = r0.w + r8.z;
  r0.w = r0.w + r8.w;
  r1.z = r8.y * r2.y;
  r1.z = r8.x * r1.w + r1.z;
  r1.z = r8.z * r4.y + r1.z;
  r1.z = r8.w * r7.y + r1.z;
  r3.w = r1.z / r0.w;
  r0.w = cmp(0 >= r0.w);
  r3.yz = r0.ww ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.w == (int)r1.z);
  r2.xyw = r0.www ? r3.xyz : r3.xzy;
  r0.w = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r0.w;
  r3.z = -r2.y * 0.5 + r0.w;
  r3.x = r3.z + r2.y;
  r2.xyw = float3(1,1,1) + -r3.xyz;
  r2.xyw = r32.xyz * r2.xyw;
  r2.xyw = r33.xyz * r3.xyz + r2.xyw;
  r2.xyw = r16.yzw * r6.xyz + r2.xyw;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r5.xyz, r5.xyz);
    r1.z = rsqrt(r0.w);
    r3.xyz = r5.xyz * r1.zzz;
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r3.w = cmp(0.00999999978 < abs(r5.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r6.xy = float2(-1.44269502,-1.44269502) * r4.xy;
      r6.xy = exp2(r6.xy);
      r6.xy = float2(1,1) + -r6.xy;
      r4.xy = r6.xy / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r3.ww ? r4.xy : r1.zw;
      r4.xyw = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyw = exp2(r4.xyw);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r4.xyw;
      r4.xyw = fogConstants.blendAmount * r6.xyz + r4.xyw;
    } else {
      r1.z = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r5.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r5.w = -1.44269502 * r3.w;
      r5.w = exp2(r5.w);
      r5.w = 1 + -r5.w;
      r3.w = r5.w / r3.w;
      r3.w = r3.w * r1.z;
      r1.z = r1.w ? r3.w : r1.z;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyw = exp2(r6.xyz);
    }
    r4.xyw = r4.xyw * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyw = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyw);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.x = fogConstants.atmosphereMieSchlickK * -r1.z + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r1.w = r1.w / r3.x;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r1.w * r0.w;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r3.xyz = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r6.xyz = float3(1,1,1) + -r4.xyw;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyw * r4.xyw + r3.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * r5.z;
    r1.z = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r1.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.w = min(64, r1.z);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.y ? r3.w : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.w = r1.w ? 1 : r0.w;
    r0.w = r1.z / r0.w;
    r0.w = r1.w ? r4.x : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.z = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r1.z);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.z = rsqrt(r1.z);
    r4.xyw = r5.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyw);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r6.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r6.xyzw = r1.zzzz * r6.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r6.w * r0.w;
    r4.xyw = r6.xyz + -r2.xyw;
    r3.xyz = r0.www * r4.xyw + r2.xyw;
  }
  r2.xyw = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyw = r3.xyz ? r2.xyw : 0;
  r2.xyw = min(float3(65024,65024,64512), r2.xyw);
  r0.w = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(0,8));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 0);
  r1.z = r1.z ? r1.w : 0;
  r3.z = r1.z ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.www ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.w = (int)r4.z & 255;
        break;
        case 2 :        if (8 == 0) r0.w = 0; else if (8+8 < 32) {         r0.w = (uint)r4.z << (32-(8 + 8)); r0.w = (uint)r0.w >> (32-8);        } else r0.w = (uint)r4.z >> 8;
        break;
        case 3 :        if (8 == 0) r0.w = 0; else if (8+16 < 32) {         r0.w = (uint)r4.z << (32-(8 + 16)); r0.w = (uint)r0.w >> (32-8);        } else r0.w = (uint)r4.z >> 16;
        break;
        case 4 :        r0.w = (int)r0.y & 3;
        break;
        case 5 :        r0.w = (uint)r0.y >> 8;
        break;
        default :
        r0.w = 0;
        break;
      }
      r0.w = (uint)r0.w;
      r0.w = drawNumLighstScale * r0.w;
      r3.xyz = r0.www * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyz + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r4.z & 255;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.w = (int)r0.y & 3;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.w = (int)r4.z & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.w
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.x = 0; else if (8+8 < 32) {     r1.x = (uint)r4.z << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);    } else r1.x = (uint)r4.z >> 8;
    if (8 == 0) r1.y = 0; else if (8+16 < 32) {     r1.y = (uint)r4.z << (32-(8 + 16)); r1.y = (uint)r1.y >> (32-8);    } else r1.y = (uint)r4.z >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.y
    InterlockedAdd(dest, value, orig_value);
    r1.z = (int)r0.y & 3;
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