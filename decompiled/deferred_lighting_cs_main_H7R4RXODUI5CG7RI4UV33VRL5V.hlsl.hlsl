// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:26 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44;
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
  r0.x = mad(permuteStride, 35, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
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
  if (probeDebug != 0) {
    r9.w = (uint)renderTargetSize.x;
    r9.w = (int)r9.w + 7;
    r9.w = (uint)r9.w >> 3;
    r9.w = mad((int)r0.z, (int)r9.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r9.w = (((uint)r9.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
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
    r28.xyzw = float4(0,0,0,0);
    r15.yzw = float3(0,0,0);
    r13.zw = float2(0,0);
    r10.w = 0;
    r29.z = 0;
    r30.z = 0;
    r12.w = 0;
    r14.w = 0;
    while (true) {
      r16.y = cmp((uint)r14.w >= numRefProbes);
      if (r16.y != 0) break;
      r16.y = (uint)r14.w >> 5;
      r16.y = (int)r9.w + (int)r16.y;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t26.xxxx
    r16.y = samp0[]..swiz;
      r31.xyzw = r18.yxzw;
      r32.xyzw = r19.xyzw;
      r33.xyzw = r20.yzwx;
      r34.xyzw = r21.xyzw;
      r35.xyzw = r22.xyzw;
      r36.xyzw = r23.zwxy;
      r37.xyzw = r24.zwxy;
      r38.xyzw = r26.zwxy;
      r39.xyzw = r27.zwxy;
      r40.xyz = r15.yzw;
      r16.zw = r13.wz;
      r29.w = r10.w;
      r30.w = r29.z;
      r40.w = r30.z;
      r41.x = r12.w;
      r42.xyzw = r25.zwxy;
      r43.xyzw = r28.zwxy;
      r41.y = r16.y;
      while (true) {
        if (r41.y == 0) break;
        r41.z = firstbitlow((uint)r41.y);
        r41.w = 1 << (int)r41.z;
        r41.w = ~(int)r41.w;
        r41.y = (int)r41.w & (int)r41.y;
        r41.z = (int)r14.w + (int)r41.z;
        r41.z = (int)r41.z * 14;
        r44.xyz = -refProbeConstantsCB[r41.z].data[0].xyz + r5.xyz;
        r41.w = dot(r44.xyz, r44.xyz);
        r41.w = sqrt(r41.w);
        r41.w = cmp(probeDebugRadius >= r41.w);
        if (r41.w != 0) {
          r31.yzw = refProbeConstantsCB[r41.z].data[1].xyz;
          r31.x = refProbeConstantsCB[r41.z].data[0].w;
          r32.yzw = refProbeConstantsCB[r41.z].data[2].xyz;
          r32.x = refProbeConstantsCB[r41.z].data[1].w;
          r33.xyz = refProbeConstantsCB[r41.z].data[3].xyz;
          r33.w = refProbeConstantsCB[r41.z].data[4].z;
          r34.yz = refProbeConstantsCB[r41.z].data[4].xy;
          r34.x = refProbeConstantsCB[r41.z].data[3].w;
          r34.w = refProbeConstantsCB[r41.z].data[6].x;
          r35.yzw = refProbeConstantsCB[r41.z].data[5].xyz;
          r35.x = refProbeConstantsCB[r41.z].data[4].w;
          r36.yz = refProbeConstantsCB[r41.z].data[7].yw;
          r36.x = refProbeConstantsCB[r41.z].data[6].y;
          r36.w = refProbeConstantsCB[r41.z].data[8].x;
          r37.xyz = refProbeConstantsCB[r41.z].data[8].yzw;
          r37.w = refProbeConstantsCB[r41.z].data[9].x;
          r38.xyz = refProbeConstantsCB[r41.z].data[10].yzw;
          r38.w = refProbeConstantsCB[r41.z].data[11].x;
          r39.xyz = refProbeConstantsCB[r41.z].data[11].yzw;
          r39.w = refProbeConstantsCB[r41.z].data[12].x;
          r40.xyz = refProbeConstantsCB[r41.z].data[0].xyz;
          r44.xy = refProbeConstantsCB[r41.z].data[13].yz;
          r29.w = -1;
          r30.w = refProbeConstantsCB[r41.z].data[2].w;
          r40.w = refProbeConstantsCB[r41.z].data[5].w;
          r41.x = refProbeConstantsCB[r41.z].data[7].z;
          r42.xyz = refProbeConstantsCB[r41.z].data[9].yzw;
          r42.w = refProbeConstantsCB[r41.z].data[10].x;
          r43.xyz = refProbeConstantsCB[r41.z].data[12].yzw;
          r43.w = refProbeConstantsCB[r41.z].data[13].x;
          r16.zw = r44.xy;
          break;
        }
      }
      if (r29.w != 0) {
        r18.xyzw = r31.yxzw;
        r19.xyzw = r32.xyzw;
        r20.xyzw = r33.wxyz;
        r21.xyzw = r34.xyzw;
        r22.xyzw = r35.xyzw;
        r23.xyzw = r36.zwxy;
        r24.xyzw = r37.zwxy;
        r25.xyzw = r42.zwxy;
        r26.xyzw = r38.zwxy;
        r27.xyzw = r39.zwxy;
        r28.xyzw = r43.zwxy;
        r15.yzw = r40.xyz;
        r13.zw = r16.wz;
        r10.w = -1;
        r29.z = r30.w;
        r30.z = r40.w;
        r12.w = r41.x;
        break;
      }
      r14.w = (int)r14.w + 32;
      r18.xyzw = r31.yxzw;
      r19.xyzw = r32.xyzw;
      r20.xyzw = r33.wxyz;
      r21.xyzw = r34.xyzw;
      r22.xyzw = r35.xyzw;
      r23.xyzw = r36.zwxy;
      r24.xyzw = r37.zwxy;
      r26.xyzw = r38.zwxy;
      r27.xyzw = r39.zwxy;
      r15.yzw = r40.xyz;
      r13.zw = r16.wz;
      r10.w = r29.w;
      r29.z = r30.w;
      r30.z = r40.w;
      r12.w = r41.x;
      r25.xyzw = r42.zwxy;
      r28.xyzw = r43.zwxy;
    }
    r31.xy = r18.yw;
    r29.x = r18.z;
    r18.yz = r19.xw;
    r29.y = r19.y;
    r31.z = r19.z;
    r16.yzw = r20.yzw;
    r20.yz = r22.xy;
    r30.xy = r22.zw;
    r19.xy = r23.zw;
    r23.z = r24.z;
    r24.z = r25.z;
    r25.z = r26.z;
    r26.z = r27.z;
    r27.z = r28.z;
    r28.z = r13.w;
  } else {
    r10.w = 0;
  }
  if (r10.w != 0) {
    if (r2.z != 0) {
      r22.yzw = eyeOffset.xyz + r15.yzw;
      r22.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r15.yzw = -r15.yzw + r5.xyz;
    r9.w = (int)r12.w & 0x0000ffff;
    if (6 == 0) r13.w = 0; else if (6+25 < 32) {     r13.w = (uint)r12.w << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);    } else r13.w = (uint)r12.w >> 25;
    r14.w = (int)r9.w * 6;
    r18.w = dot(refProbeAttenuationConstantsCB[r14.w].data[0].xyz, r15.yzw);
    r18.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[0].w + r18.w);
    r19.z = dot(refProbeAttenuationConstantsCB[r14.w].data[1].xyz, r15.yzw);
    r19.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[1].w + r19.z);
    r18.w = r19.z * r18.w;
    r19.z = dot(refProbeAttenuationConstantsCB[r14.w].data[2].xyz, r15.yzw);
    r19.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[2].w + r19.z);
    r18.w = r19.z * r18.w;
    r19.z = dot(refProbeAttenuationConstantsCB[r14.w].data[3].xyz, r15.yzw);
    r19.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[3].w + r19.z);
    r18.w = r19.z * r18.w;
    r19.z = dot(refProbeAttenuationConstantsCB[r14.w].data[4].xyz, r15.yzw);
    r19.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[4].w + r19.z);
    r18.w = r19.z * r18.w;
    r19.z = dot(refProbeAttenuationConstantsCB[r14.w].data[5].xyz, r15.yzw);
    r14.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[5].w + r19.z);
    r22.x = r18.w * r14.w;
    r14.w = (int)r21.w & 1;
    r22.yz = float2(0,1);
    r19.zw = r14.ww ? r22.xy : r22.zx;
    r22.x = 1;
    r14.w = r21.w;
    r32.xy = r19.zw;
    r18.w = 1;
    while (true) {
      r20.w = cmp((int)r18.w >= (int)r13.w);
      if (r20.w != 0) break;
      r20.w = (int)r9.w + (int)r18.w;
      r20.w = (int)r20.w * 6;
      r22.z = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r15.yzw);
      r22.z = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r22.z);
      r22.z = r32.x * r22.z;
      r22.w = dot(refProbeAttenuationConstantsCB[r20.w].data[1].xyz, r15.yzw);
      r22.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[1].w + r22.w);
      r22.z = r22.z * r22.w;
      r22.w = dot(refProbeAttenuationConstantsCB[r20.w].data[2].xyz, r15.yzw);
      r22.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[2].w + r22.w);
      r22.z = r22.z * r22.w;
      r22.w = dot(refProbeAttenuationConstantsCB[r20.w].data[3].xyz, r15.yzw);
      r22.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[3].w + r22.w);
      r22.z = r22.z * r22.w;
      r22.w = dot(refProbeAttenuationConstantsCB[r20.w].data[4].xyz, r15.yzw);
      r22.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[4].w + r22.w);
      r22.z = r22.z * r22.w;
      r22.w = dot(refProbeAttenuationConstantsCB[r20.w].data[5].xyz, r15.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[5].w + r22.w);
      r32.x = r22.z * r20.w;
      r22.w = (uint)r14.w >> 2;
      if (1 == 0) r23.w = 0; else if (1+2 < 32) {       r23.w = (uint)r14.w << (32-(1 + 2)); r23.w = (uint)r23.w >> (32-1);      } else r23.w = (uint)r14.w >> 2;
      r29.w = (int)r22.w & 2;
      r30.w = max(r32.y, r32.x);
      r20.w = -r22.z * r20.w + 1;
      r20.w = r32.y * r20.w;
      r22.y = r29.w ? r20.w : r30.w;
      r32.xy = r23.ww ? r32.xy : r22.xy;
      r18.w = (int)r18.w + 1;
      r14.w = r22.w;
    }
    r32.y = saturate(r32.y);
    r22.w = r32.y * r19.x;
    r9.w = cmp(0 < r22.w);
    if (r9.w != 0) {
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, l(880), u2.xxxx
      r9.w = samp0[]..swiz;
        r9.w = (int)r9.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r9.w = r22.w * r19.y;
      r13.w = dot(r17.xyz, r23.xyz);
      r14.w = dot(r15.yzw, r23.xyz);
      r14.w = r14.w + -r24.w;
      r18.w = cmp(r14.w >= 0);
      r14.w = max(abs(r14.w), r7.w);
      r14.w = r18.w ? r14.w : -r14.w;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r14.w / r13.w;
      r13.w = min(131072, abs(r13.w));
      r14.w = dot(r17.xyz, r24.xyz);
      r18.w = dot(r15.yzw, r24.xyz);
      r18.w = r18.w + -r25.w;
      r19.x = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r7.w);
      r18.w = r19.x ? r18.w : -r18.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r18.w / r14.w;
      r13.w = min(abs(r14.w), r13.w);
      r14.w = dot(r17.xyz, r25.xyz);
      r18.w = dot(r15.yzw, r25.xyz);
      r18.w = r18.w + -r26.w;
      r19.x = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r7.w);
      r18.w = r19.x ? r18.w : -r18.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r18.w / r14.w;
      r13.w = min(abs(r14.w), r13.w);
      r14.w = dot(r17.xyz, r26.xyz);
      r18.w = dot(r15.yzw, r26.xyz);
      r18.w = r18.w + -r27.w;
      r19.x = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r7.w);
      r18.w = r19.x ? r18.w : -r18.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r18.w / r14.w;
      r13.w = min(abs(r14.w), r13.w);
      r14.w = dot(r17.xyz, r27.xyz);
      r18.w = dot(r15.yzw, r27.xyz);
      r18.w = r18.w + -r28.w;
      r19.x = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r7.w);
      r18.w = r19.x ? r18.w : -r18.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r18.w / r14.w;
      r13.w = min(abs(r14.w), r13.w);
      r14.w = dot(r17.xyz, r28.xyz);
      r18.w = dot(r15.yzw, r28.xyz);
      r13.z = r18.w + -r13.z;
      r18.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r7.w);
      r13.z = r18.w ? r13.z : -r13.z;
      r14.w = max(1.00000001e-07, -r14.w);
      r13.z = r13.z / r14.w;
      r13.z = min(r13.w, abs(r13.z));
      r19.xyz = r21.xyz + r15.yzw;
      r19.xyz = r17.xyz * r13.zzz + r19.xyz;
      r13.w = dot(r19.xyz, r19.xyz);
      r13.w = sqrt(r13.w);
      r13.z = r13.z / r13.w;
      r13.z = r13.z + r13.z;
      r13.z = sqrt(r13.z);
      r13.z = r3.z * 5 + r13.z;
      r13.z = -0.844799995 + r13.z;
      r21.x = dot(r19.xyz, r31.xyz);
      r21.y = dot(r19.xyz, r18.xyz);
      r21.z = dot(r19.xyz, r29.xyz);
      if (9 == 0) r12.w = 0; else if (9+16 < 32) {       r12.w = (uint)r12.w << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);      } else r12.w = (uint)r12.w >> 16;
      r21.w = (uint)r12.w;
      r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, r13.z).xyz;
      r23.xyz = (int3)r19.xyz & int3(-2147483648,-2147483648,-2147483648);
      r23.xyz = cmp((int3)r23.xyz == int3(2139095040,2139095040,2139095040));
      r12.w = (int)r23.y | (int)r23.x;
      r12.w = (int)r23.z | (int)r12.w;
      r19.xyz = r12.www ? float3(1,1,0) : r19.xyz;
      r23.x = dot(r15.yzw, r31.xyz);
      r23.y = dot(r15.yzw, r18.xyz);
      r23.z = dot(r15.yzw, r29.xyz);
      r15.yzw = saturate(r23.xyz * r16.yzw + float3(0.5,0.5,0.5));
      r15.yzw = r15.yzw * r20.xyz + r30.xyz;
      r21.x = dot(r11.xyz, r31.xyz);
      r21.y = dot(r11.xyz, r18.xyz);
      r21.z = dot(r11.xyz, r29.xyz);
      r16.yzw = cmp(float3(0,0,0) < r21.xyz);
      r18.z = r16.y ? 0 : 0.5;
      r18.xy = float2(0,0);
      r18.xyz = r18.xyz + r15.yzw;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r20.xyz = r21.xyz * r21.xyz;
      r20.xyz = r20.xyz * r9.www;
      r23.z = r16.z ? 0 : 0.5;
      r23.xy = float2(0,0);
      r23.xyz = r23.xyz + r15.yzw;
      r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
      r23.xyz = r23.xyz * r20.yyy;
      r18.xyz = r18.xyz * r20.xxx + r23.xyz;
      r23.z = r16.w ? 0 : 0.5;
      r23.xy = float2(0,0);
      r15.yzw = r23.xyz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r20.zzz + r18.xyz;
      r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, 6).xyz;
      r18.xyz = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
      r18.xyz = cmp((int3)r18.xyz == int3(2139095040,2139095040,2139095040));
      r12.w = (int)r18.y | (int)r18.x;
      r12.w = (int)r18.z | (int)r12.w;
      r16.yzw = r12.www ? float3(1,1,0) : r16.yzw;
      r15.yzw = r16.yzw * r15.yzw;
      r12.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r13.z = r12.w * r8.w;
      r15.yzw = r19.xyz * r9.www;
      r9.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r9.w = r8.w * r12.w + r9.w;
      r9.w = r13.z / r9.w;
      r22.xyz = r15.yzw * r9.www;
      r9.w = 257;
    } else {
      r22.xyzw = float4(0,0,0,0);
      r9.w = 1;
    }
    r12.w = -1;
  } else {
    r22.xyzw = float4(0,0,0,0);
    r9.w = 0;
  }
  r10.w = (int)r10.w & (int)r12.w;
  if (r10.w == 0) {
    r10.w = numRefProbes + -numOverrideProbes;
    r12.w = (uint)renderTargetSize.x;
    r12.w = (int)r12.w + 7;
    r12.w = (uint)r12.w >> 3;
    r12.w = mad((int)r0.z, (int)r12.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r12.w = (((uint)r12.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r13.z = (int)r10.w & -32;
    r13.w = (int)r10.w + (int)-r13.z;
    r14.w = numRefProbes & -32;
    r15.y = (int)-r14.w + numRefProbes;
    r18.x = 16;
    r19.yz = float2(0,1);
    r20.xy = float2(0,0);
    r21.xz = float2(1,1);
    r23.xy = float2(0,0);
    r24.xy = float2(0,0);
    r25.xyz = float3(0,0,0);
    r25.w = r22.x;
    r26.xyz = r22.yzw;
    r26.w = r9.w;
    r15.z = r13.z;
    while (true) {
      r15.w = cmp((uint)r15.z >= numRefProbes);
      if (r15.w != 0) break;
      r15.w = (uint)r15.z >> 5;
      r15.w = (int)r12.w + (int)r15.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t26.xxxx
    r15.w = samp0[]..swiz;
      r16.y = cmp((int)r13.z == (int)r15.z);
      bitmask.z = ((~(-1 << r13.w)) << 0) & 0xffffffff;  r16.z = (((uint)0 << 0) & bitmask.z) | ((uint)r15.w & ~bitmask.z);
      r15.w = r16.y ? r16.z : r15.w;
      r16.y = cmp((int)r14.w == (int)r15.z);
      if (r15.y == 0) r16.z = 0; else if (r15.y+0 < 32) {       r16.z = (uint)r15.w << (32-(r15.y + 0)); r16.z = (uint)r16.z >> (32-r15.y);      } else r16.z = (uint)r15.w >> 0;
      r15.w = r16.y ? r16.z : r15.w;
      r27.xyzw = r25.xyzw;
      r28.xyzw = r26.xyzw;
      r16.y = r15.w;
      while (true) {
        if (r16.y == 0) break;
        r16.z = firstbitlow((uint)r16.y);
        r16.w = 1 << (int)r16.z;
        r16.w = ~(int)r16.w;
        r16.y = (int)r16.w & (int)r16.y;
        r16.z = (int)r15.z + (int)r16.z;
        r16.z = (int)r16.z * 14;
        r16.w = (int)r28.w & 255;
        r19.w = cmp((uint)r16.w < 32);
        r19.w = r2.z ? r19.w : 0;
        if (r19.w != 0) {
          r16.w = mad((int)r16.w, 20, 880);
          r18.yzw = refProbeConstantsCB[r16.z].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r16.w = u2.xyzw;
        }
        r29.w = (int)r28.w + 1;
        r18.yzw = -refProbeConstantsCB[r16.z].data[0].xyz + r5.xyz;
        r16.w = 0x0000ffff & (int)refProbeConstantsCB[r16.z].data[7].z;
        if (6 == 0) r19.w = 0; else if (6+25 < 32) {         r19.w = (uint)refProbeConstantsCB[r16.z].data[7].z << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);        } else r19.w = (uint)refProbeConstantsCB[r16.z].data[7].z >> 25;
        r20.w = (int)r16.w * 6;
        r23.w = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r18.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r23.w);
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[1].xyz, r18.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[1].w + r24.w);
        r23.w = r24.w * r23.w;
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[2].xyz, r18.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[2].w + r24.w);
        r23.w = r24.w * r23.w;
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[3].xyz, r18.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[3].w + r24.w);
        r23.w = r24.w * r23.w;
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[4].xyz, r18.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[4].w + r24.w);
        r23.w = r24.w * r23.w;
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[5].xyz, r18.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[5].w + r24.w);
        r19.x = r23.w * r20.w;
        r20.w = 1 & (int)refProbeConstantsCB[r16.z].data[6].x;
        r30.xy = r20.ww ? r19.xy : r19.zx;
        r19.x = refProbeConstantsCB[r16.z].data[6].x;
        r31.xy = r30.xy;
        r20.w = 1;
        while (true) {
          r23.w = cmp((int)r20.w >= (int)r19.w);
          if (r23.w != 0) break;
          r23.w = (int)r16.w + (int)r20.w;
          r23.w = (int)r23.w * 6;
          r24.w = dot(refProbeAttenuationConstantsCB[r23.w].data[0].xyz, r18.yzw);
          r24.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[0].w + r24.w);
          r24.w = r31.x * r24.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r23.w].data[1].xyz, r18.yzw);
          r30.z = saturate(refProbeAttenuationConstantsCB[r23.w].data[1].w + r30.z);
          r24.w = r30.z * r24.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r23.w].data[2].xyz, r18.yzw);
          r30.z = saturate(refProbeAttenuationConstantsCB[r23.w].data[2].w + r30.z);
          r24.w = r30.z * r24.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r23.w].data[3].xyz, r18.yzw);
          r30.z = saturate(refProbeAttenuationConstantsCB[r23.w].data[3].w + r30.z);
          r24.w = r30.z * r24.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r23.w].data[4].xyz, r18.yzw);
          r30.z = saturate(refProbeAttenuationConstantsCB[r23.w].data[4].w + r30.z);
          r24.w = r30.z * r24.w;
          r30.z = dot(refProbeAttenuationConstantsCB[r23.w].data[5].xyz, r18.yzw);
          r23.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[5].w + r30.z);
          r31.x = r24.w * r23.w;
          r30.z = (uint)r19.x >> 2;
          if (1 == 0) r30.w = 0; else if (1+2 < 32) {           r30.w = (uint)r19.x << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);          } else r30.w = (uint)r19.x >> 2;
          r31.z = (int)r30.z & 2;
          r31.w = max(r31.y, r31.x);
          r23.w = -r24.w * r23.w + 1;
          r23.w = r31.y * r23.w;
          r21.y = r31.z ? r23.w : r31.w;
          r31.xy = r30.ww ? r31.xy : r21.xy;
          r20.w = (int)r20.w + 1;
          r19.x = r30.z;
        }
        r31.y = saturate(r31.y);
        r16.w = refProbeConstantsCB[r16.z].data[6].y * r31.y;
        r19.x = cmp(0 < r16.w);
        if (r19.x != 0) {
          r19.x = (int)r29.w & 255;
          r19.w = (int)r19.x + -1;
          r19.w = cmp((uint)r19.w < 32);
          r19.w = r2.z ? r19.w : 0;
          if (r19.w != 0) {
            r19.xw = mad((int2)r19.xx, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r19.x, u2.xxxx
          r20.w = samp0[]..swiz;
            r20.w = (int)r20.w | 32;
            GBufferDiffuseColor[viewID].r19.x = u2.x;
            GBufferDiffuseColor[viewID].r19.w = u2.x;
          }
          r28.w = (int)r28.w + 257;
          r28.z = r31.y * refProbeConstantsCB[r16.z].data[6].y + r28.z;
          r16.w = refProbeConstantsCB[r16.z].data[7].y * r16.w;
          r30.x = refProbeConstantsCB[r16.z].data[7].w;
          r30.yz = refProbeConstantsCB[r16.z].data[8].xy;
          r19.x = dot(r17.xyz, r30.xyz);
          r19.w = dot(r18.yzw, r30.xyz);
          r19.w = -refProbeConstantsCB[r16.z].data[8].z + r19.w;
          r20.w = cmp(r19.w >= 0);
          r19.w = max(abs(r19.w), r7.w);
          r19.w = r20.w ? r19.w : -r19.w;
          r19.x = max(1.00000001e-07, -r19.x);
          r19.x = r19.w / r19.x;
          r19.x = min(131072, abs(r19.x));
          r30.x = refProbeConstantsCB[r16.z].data[8].w;
          r30.yz = refProbeConstantsCB[r16.z].data[9].xy;
          r19.w = dot(r17.xyz, r30.xyz);
          r20.w = dot(r18.yzw, r30.xyz);
          r20.w = -refProbeConstantsCB[r16.z].data[9].z + r20.w;
          r21.y = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.y ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.x = min(r19.x, abs(r19.w));
          r30.x = refProbeConstantsCB[r16.z].data[9].w;
          r30.yz = refProbeConstantsCB[r16.z].data[10].xy;
          r19.w = dot(r17.xyz, r30.xyz);
          r20.w = dot(r18.yzw, r30.xyz);
          r20.w = -refProbeConstantsCB[r16.z].data[10].z + r20.w;
          r21.y = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.y ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.x = min(r19.x, abs(r19.w));
          r30.x = refProbeConstantsCB[r16.z].data[10].w;
          r30.yz = refProbeConstantsCB[r16.z].data[11].xy;
          r19.w = dot(r17.xyz, r30.xyz);
          r20.w = dot(r18.yzw, r30.xyz);
          r20.w = -refProbeConstantsCB[r16.z].data[11].z + r20.w;
          r21.y = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.y ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.x = min(r19.x, abs(r19.w));
          r30.x = refProbeConstantsCB[r16.z].data[11].w;
          r30.yz = refProbeConstantsCB[r16.z].data[12].xy;
          r19.w = dot(r17.xyz, r30.xyz);
          r20.w = dot(r18.yzw, r30.xyz);
          r20.w = -refProbeConstantsCB[r16.z].data[12].z + r20.w;
          r21.y = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.y ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.x = min(r19.x, abs(r19.w));
          r30.x = refProbeConstantsCB[r16.z].data[12].w;
          r30.yz = refProbeConstantsCB[r16.z].data[13].xy;
          r19.w = dot(r17.xyz, r30.xyz);
          r20.w = dot(r18.yzw, r30.xyz);
          r20.w = -refProbeConstantsCB[r16.z].data[13].z + r20.w;
          r21.y = cmp(r20.w >= 0);
          r20.w = max(abs(r20.w), r7.w);
          r20.w = r21.y ? r20.w : -r20.w;
          r19.w = max(1.00000001e-07, -r19.w);
          r19.w = r20.w / r19.w;
          r19.x = min(r19.x, abs(r19.w));
          r30.x = refProbeConstantsCB[r16.z].data[3].w + r18.y;
          r30.yz = refProbeConstantsCB[r16.z].data[4].xy + r18.zw;
          r30.xyz = r17.xyz * r19.xxx + r30.xyz;
          r19.w = dot(r30.xyz, r30.xyz);
          r19.w = sqrt(r19.w);
          r19.x = r19.x / r19.w;
          r19.x = r19.x + r19.x;
          r19.x = sqrt(r19.x);
          r19.x = r3.z * 5 + r19.x;
          r19.x = -0.844799995 + r19.x;
          r32.x = refProbeConstantsCB[r16.z].data[0].w;
          r32.y = refProbeConstantsCB[r16.z].data[1].z;
          r32.z = refProbeConstantsCB[r16.z].data[2].y;
          r33.x = dot(r30.xyz, r32.xyz);
          r34.xy = refProbeConstantsCB[r16.z].data[1].xw;
          r34.z = refProbeConstantsCB[r16.z].data[2].z;
          r33.y = dot(r30.xyz, r34.xyz);
          r35.x = refProbeConstantsCB[r16.z].data[1].y;
          r35.yz = refProbeConstantsCB[r16.z].data[2].xw;
          r33.z = dot(r30.xyz, r35.xyz);
          if (9 == 0) r19.w = 0; else if (9+16 < 32) {           r19.w = (uint)refProbeConstantsCB[r16.z].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);          } else r19.w = (uint)refProbeConstantsCB[r16.z].data[7].z >> 16;
          r33.w = (uint)r19.w;
          r30.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r19.x).xyz;
          r31.xzw = (int3)r30.xyz & int3(-2147483648,-2147483648,-2147483648);
          r31.xzw = cmp((int3)r31.xzw == int3(2139095040,2139095040,2139095040));
          r19.x = (int)r31.z | (int)r31.x;
          r19.x = (int)r31.w | (int)r19.x;
          r30.xyz = r19.xxx ? float3(1,1,0) : r30.xyz;
          r36.x = dot(r18.yzw, r32.xyz);
          r36.y = dot(r18.yzw, r34.xyz);
          r36.z = dot(r18.yzw, r35.xyz);
          r18.yzw = saturate(r36.xyz * refProbeConstantsCB[r16.z].data[3].xyz + float3(0.5,0.5,0.5));
          r36.xy = refProbeConstantsCB[r16.z].data[4].zw * r18.yz;
          r36.z = refProbeConstantsCB[r16.z].data[5].x * r18.w;
          r18.yzw = refProbeConstantsCB[r16.z].data[5].yzw + r36.xyz;
          r33.x = dot(r11.xyz, r32.xyz);
          r33.y = dot(r11.xyz, r34.xyz);
          r33.z = dot(r11.xyz, r35.xyz);
          r31.xzw = cmp(float3(0,0,0) < r33.xyz);
          r20.z = r31.x ? 0 : 0.5;
          r32.xyz = r20.xyz + r18.yzw;
          r32.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
          r34.xyz = r33.xyz * r33.xyz;
          r34.xyz = r34.xyz * r16.www;
          r23.z = r31.z ? 0 : 0.5;
          r35.xyz = r23.xyz + r18.yzw;
          r35.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r35.xyz, 0).xyz;
          r35.xyz = r35.xyz * r34.yyy;
          r32.xyz = r32.xyz * r34.xxx + r35.xyz;
          r24.z = r31.w ? 0 : 0.5;
          r18.yzw = r24.xyz + r18.yzw;
          r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
          r18.yzw = r18.yzw * r34.zzz + r32.xyz;
          r31.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
          r32.xyz = (int3)r31.xzw & int3(-2147483648,-2147483648,-2147483648);
          r32.xyz = cmp((int3)r32.xyz == int3(2139095040,2139095040,2139095040));
          r16.z = (int)r32.y | (int)r32.x;
          r16.z = (int)r32.z | (int)r16.z;
          r31.xzw = r16.zzz ? float3(1,1,0) : r31.xzw;
          r32.xyz = r31.xzw * r18.yzw;
          r16.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r27.xyz = r18.yzw * r31.xzw + r27.xyz;
          r18.y = r16.z * r8.w;
          r30.xyz = r30.xyz * r16.www;
          r16.w = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r16.z = r8.w * r16.z + r16.w;
          r16.z = r18.y / r16.z;
          r32.x = r27.w;
          r32.yz = r28.xy;
          r18.yzw = r30.xyz * r16.zzz + r32.xyz;
          r27.w = r18.y;
          r28.xy = r18.zw;
        } else {
          r29.xyz = r28.xyz;
          r28.xyzw = r29.xyzw;
        }
      }
      r25.xyzw = r27.xyzw;
      r26.xyzw = r28.xyzw;
      r15.z = (int)r15.z + 32;
    }
    r18.x = 16;
    r19.yz = float2(0,1);
    r20.xy = float2(0,0);
    r23.xy = float2(0,0);
    r24.xy = float2(0,0);
    r15.yzw = r25.xyz;
    r27.x = r25.w;
    r27.yz = r26.xy;
    r16.yzw = r26.zwz;
    r14.w = 0;
    while (true) {
      r19.w = cmp((uint)r14.w >= (uint)r10.w);
      if (r19.w != 0) break;
      r19.w = (uint)r14.w >> 5;
      r19.w = (int)r12.w + (int)r19.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t26.xxxx
    r19.w = samp0[]..swiz;
      r20.w = cmp((int)r13.z == (int)r14.w);
      if (r13.w == 0) r21.x = 0; else if (r13.w+0 < 32) {       r21.x = (uint)r19.w << (32-(r13.w + 0)); r21.x = (uint)r21.x >> (32-r13.w);      } else r21.x = (uint)r19.w >> 0;
      r19.w = r20.w ? r21.x : r19.w;
      r28.xyz = r15.yzw;
      r29.xyz = r27.xyz;
      r30.xyz = r16.ywz;
      r20.w = r19.w;
      while (true) {
        if (r20.w == 0) break;
        r21.x = firstbitlow((uint)r20.w);
        r21.y = 1 << (int)r21.x;
        r21.y = ~(int)r21.y;
        r20.w = (int)r20.w & (int)r21.y;
        r21.x = (int)r14.w + (int)r21.x;
        r21.x = (int)r21.x * 14;
        r21.y = (int)r30.z & 255;
        r22.w = cmp((uint)r21.y < 32);
        r22.w = r2.z ? r22.w : 0;
        if (r22.w != 0) {
          r21.y = mad((int)r21.y, 20, 880);
          r18.yzw = refProbeConstantsCB[r21.x].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r21.y = u2.xyzw;
        }
        r31.y = (int)r30.z + 1;
        r18.yzw = -refProbeConstantsCB[r21.x].data[0].xyz + r5.xyz;
        r21.y = 0x0000ffff & (int)refProbeConstantsCB[r21.x].data[7].z;
        if (6 == 0) r22.w = 0; else if (6+25 < 32) {         r22.w = (uint)refProbeConstantsCB[r21.x].data[7].z << (32-(6 + 25)); r22.w = (uint)r22.w >> (32-6);        } else r22.w = (uint)refProbeConstantsCB[r21.x].data[7].z >> 25;
        r23.w = (int)r21.y * 6;
        r24.w = dot(refProbeAttenuationConstantsCB[r23.w].data[0].xyz, r18.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[0].w + r24.w);
        r27.w = dot(refProbeAttenuationConstantsCB[r23.w].data[1].xyz, r18.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[1].w + r27.w);
        r24.w = r27.w * r24.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r23.w].data[2].xyz, r18.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[2].w + r27.w);
        r24.w = r27.w * r24.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r23.w].data[3].xyz, r18.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[3].w + r27.w);
        r24.w = r27.w * r24.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r23.w].data[4].xyz, r18.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[4].w + r27.w);
        r24.w = r27.w * r24.w;
        r27.w = dot(refProbeAttenuationConstantsCB[r23.w].data[5].xyz, r18.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r23.w].data[5].w + r27.w);
        r19.x = r24.w * r23.w;
        r23.w = 1 & (int)refProbeConstantsCB[r21.x].data[6].x;
        r31.zw = r23.ww ? r19.xy : r19.zx;
        r19.x = refProbeConstantsCB[r21.x].data[6].x;
        r32.xy = r31.zw;
        r23.w = 1;
        while (true) {
          r24.w = cmp((int)r23.w >= (int)r22.w);
          if (r24.w != 0) break;
          r24.w = (int)r21.y + (int)r23.w;
          r24.w = (int)r24.w * 6;
          r27.w = dot(refProbeAttenuationConstantsCB[r24.w].data[0].xyz, r18.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[0].w + r27.w);
          r27.w = r32.x * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r24.w].data[1].xyz, r18.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[1].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r24.w].data[2].xyz, r18.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[2].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r24.w].data[3].xyz, r18.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[3].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r24.w].data[4].xyz, r18.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[4].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r24.w].data[5].xyz, r18.yzw);
          r24.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[5].w + r28.w);
          r32.x = r27.w * r24.w;
          r28.w = (uint)r19.x >> 2;
          if (1 == 0) r29.w = 0; else if (1+2 < 32) {           r29.w = (uint)r19.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);          } else r29.w = (uint)r19.x >> 2;
          r30.w = (int)r28.w & 2;
          r32.z = max(r32.y, r32.x);
          r24.w = -r27.w * r24.w + 1;
          r24.w = r32.y * r24.w;
          r21.w = r30.w ? r24.w : r32.z;
          r32.xy = r29.ww ? r32.xy : r21.zw;
          r23.w = (int)r23.w + 1;
          r19.x = r28.w;
        }
        r19.x = saturate(r32.y + -r30.y);
        r21.y = refProbeConstantsCB[r21.x].data[6].y * r19.x;
        r21.w = cmp(0 < r21.y);
        if (r21.w != 0) {
          r21.w = (int)r31.y & 255;
          r22.w = (int)r21.w + -1;
          r22.w = cmp((uint)r22.w < 32);
          r22.w = r2.z ? r22.w : 0;
          if (r22.w != 0) {
            r31.zw = mad((int2)r21.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r21.w, cb2[52].x, r31.z, u2.xxxx
          r21.w = samp0[]..swiz;
            r21.w = (int)r21.w | 32;
            GBufferDiffuseColor[viewID].r31.z = u2.x;
            GBufferDiffuseColor[viewID].r31.w = u2.x;
          }
          r30.z = (int)r30.z + 257;
          r30.x = r19.x * refProbeConstantsCB[r21.x].data[6].y + r30.x;
          r19.x = refProbeConstantsCB[r21.x].data[7].y * r21.y;
          r33.x = refProbeConstantsCB[r21.x].data[7].w;
          r33.yz = refProbeConstantsCB[r21.x].data[8].xy;
          r21.y = dot(r17.xyz, r33.xyz);
          r21.w = dot(r18.yzw, r33.xyz);
          r21.w = -refProbeConstantsCB[r21.x].data[8].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r7.w);
          r21.w = r22.w ? r21.w : -r21.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r21.w / r21.y;
          r21.y = min(131072, abs(r21.y));
          r33.x = refProbeConstantsCB[r21.x].data[8].w;
          r33.yz = refProbeConstantsCB[r21.x].data[9].xy;
          r21.w = dot(r17.xyz, r33.xyz);
          r22.w = dot(r18.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r21.x].data[9].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r7.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r21.y = min(r21.y, abs(r21.w));
          r33.x = refProbeConstantsCB[r21.x].data[9].w;
          r33.yz = refProbeConstantsCB[r21.x].data[10].xy;
          r21.w = dot(r17.xyz, r33.xyz);
          r22.w = dot(r18.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r21.x].data[10].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r7.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r21.y = min(r21.y, abs(r21.w));
          r33.x = refProbeConstantsCB[r21.x].data[10].w;
          r33.yz = refProbeConstantsCB[r21.x].data[11].xy;
          r21.w = dot(r17.xyz, r33.xyz);
          r22.w = dot(r18.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r21.x].data[11].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r7.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r21.y = min(r21.y, abs(r21.w));
          r33.x = refProbeConstantsCB[r21.x].data[11].w;
          r33.yz = refProbeConstantsCB[r21.x].data[12].xy;
          r21.w = dot(r17.xyz, r33.xyz);
          r22.w = dot(r18.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r21.x].data[12].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r7.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r21.y = min(r21.y, abs(r21.w));
          r33.x = refProbeConstantsCB[r21.x].data[12].w;
          r33.yz = refProbeConstantsCB[r21.x].data[13].xy;
          r21.w = dot(r17.xyz, r33.xyz);
          r22.w = dot(r18.yzw, r33.xyz);
          r22.w = -refProbeConstantsCB[r21.x].data[13].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r7.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r21.y = min(r21.y, abs(r21.w));
          r33.x = refProbeConstantsCB[r21.x].data[3].w + r18.y;
          r33.yz = refProbeConstantsCB[r21.x].data[4].xy + r18.zw;
          r32.xzw = r17.xyz * r21.yyy + r33.xyz;
          r21.w = dot(r32.xzw, r32.xzw);
          r21.w = sqrt(r21.w);
          r21.y = r21.y / r21.w;
          r21.y = r21.y + r21.y;
          r21.y = sqrt(r21.y);
          r21.y = r3.z * 5 + r21.y;
          r21.y = -0.844799995 + r21.y;
          r33.x = refProbeConstantsCB[r21.x].data[0].w;
          r33.y = refProbeConstantsCB[r21.x].data[1].z;
          r33.z = refProbeConstantsCB[r21.x].data[2].y;
          r34.x = dot(r32.xzw, r33.xyz);
          r35.xy = refProbeConstantsCB[r21.x].data[1].xw;
          r35.z = refProbeConstantsCB[r21.x].data[2].z;
          r34.y = dot(r32.xzw, r35.xyz);
          r36.x = refProbeConstantsCB[r21.x].data[1].y;
          r36.yz = refProbeConstantsCB[r21.x].data[2].xw;
          r34.z = dot(r32.xzw, r36.xyz);
          if (9 == 0) r21.w = 0; else if (9+16 < 32) {           r21.w = (uint)refProbeConstantsCB[r21.x].data[7].z << (32-(9 + 16)); r21.w = (uint)r21.w >> (32-9);          } else r21.w = (uint)refProbeConstantsCB[r21.x].data[7].z >> 16;
          r34.w = (uint)r21.w;
          r32.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r21.y).xyz;
          r37.xyz = (int3)r32.xzw & int3(-2147483648,-2147483648,-2147483648);
          r37.xyz = cmp((int3)r37.xyz == int3(2139095040,2139095040,2139095040));
          r21.y = (int)r37.y | (int)r37.x;
          r21.y = (int)r37.z | (int)r21.y;
          r32.xzw = r21.yyy ? float3(1,1,0) : r32.xzw;
          r37.x = dot(r18.yzw, r33.xyz);
          r37.y = dot(r18.yzw, r35.xyz);
          r37.z = dot(r18.yzw, r36.xyz);
          r18.yzw = saturate(r37.xyz * refProbeConstantsCB[r21.x].data[3].xyz + float3(0.5,0.5,0.5));
          r37.xy = refProbeConstantsCB[r21.x].data[4].zw * r18.yz;
          r37.z = refProbeConstantsCB[r21.x].data[5].x * r18.w;
          r18.yzw = refProbeConstantsCB[r21.x].data[5].yzw + r37.xyz;
          r34.x = dot(r11.xyz, r33.xyz);
          r34.y = dot(r11.xyz, r35.xyz);
          r34.z = dot(r11.xyz, r36.xyz);
          r21.xyw = cmp(float3(0,0,0) < r34.xyz);
          r20.z = r21.x ? 0 : 0.5;
          r33.xyz = r20.xyz + r18.yzw;
          r33.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r33.xyz, 0).xyz;
          r35.xyz = r34.xyz * r34.xyz;
          r35.xyz = r35.xyz * r19.xxx;
          r23.z = r21.y ? 0 : 0.5;
          r36.xyz = r23.xyz + r18.yzw;
          r36.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r36.xyz, 0).xyz;
          r36.xyz = r36.xyz * r35.yyy;
          r33.xyz = r33.xyz * r35.xxx + r36.xyz;
          r24.z = r21.w ? 0 : 0.5;
          r18.yzw = r24.xyz + r18.yzw;
          r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
          r18.yzw = r18.yzw * r35.zzz + r33.xyz;
          r21.xyw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
          r33.xyz = (int3)r21.xyw & int3(-2147483648,-2147483648,-2147483648);
          r33.xyz = cmp((int3)r33.xyz == int3(2139095040,2139095040,2139095040));
          r20.z = (int)r33.y | (int)r33.x;
          r20.z = (int)r33.z | (int)r20.z;
          r21.xyw = r20.zzz ? float3(1,1,0) : r21.xyw;
          r33.xyz = r21.xyw * r18.yzw;
          r20.z = dot(r33.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r28.xyz = r18.yzw * r21.xyw + r28.xyz;
          r18.y = r20.z * r8.w;
          r21.xyw = r32.xzw * r19.xxx;
          r18.z = dot(r21.xyw, float3(0.212599993,0.715200007,0.0722000003));
          r18.z = r8.w * r20.z + r18.z;
          r18.y = r18.y / r18.z;
          r29.xyz = r21.xyw * r18.yyy + r29.xyz;
        } else {
          r31.x = r30.x;
          r30.xz = r31.xy;
        }
      }
      r15.yzw = r28.xyz;
      r27.xyz = r29.xyz;
      r16.yz = r30.xz;
      r14.w = (int)r14.w + 32;
    }
    r3.z = cmp(r26.z >= 1);
    r7.w = (int)r26.w & 0x0000ff00;
    bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r7.w = (((uint)r16.z << 0) & bitmask.w) | ((uint)r7.w & ~bitmask.w);
    r9.w = r3.z ? r7.w : r16.z;
    r3.z = max(1, r16.y);
    r3.z = rcp(r3.z);
    r16.y = saturate(r16.y);
    r18.xyz = r15.yzw * r3.zzz;
    r22.xyz = r27.xyz * r3.zzz;
    r7.w = cmp(r16.y < 0.99000001);
    if (r7.w != 0) {
      r9.w = (int)r9.w + 256;
      r7.w = 1 + -r16.y;
      r8.w = sunConstants.globalProbeExposure * r7.w;
      r16.yzw = -globalProbeConstants.data[0].xyz + r5.xyz;
      r19.x = globalProbeConstants.data[0].w * r16.y;
      r19.yz = globalProbeConstants.data[1].xy * r16.zw;
      r16.yzw = saturate(float3(0.5,0.5,0.5) + r19.xyz);
      r19.xy = globalProbeConstants.data[1].zw * r16.yz;
      r19.z = globalProbeConstants.data[2].x * r16.w;
      r16.yzw = globalProbeConstants.data[2].yzw + r19.xyz;
      r19.xyz = cmp(float3(0,0,0) < r11.xyz);
      r19.xyz = r19.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r19.w = 0;
      r20.xyz = r19.wwx + r16.yzw;
      r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r21.xyz = r11.xyz * r11.xyz;
      r21.xyz = r21.xyz * r8.www;
      r23.xyz = r19.wwy + r16.yzw;
      r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
      r23.xyz = r23.xyz * r21.yyy;
      r20.xyz = r20.xyz * r21.xxx + r23.xyz;
      r16.yzw = r19.wwz + r16.yzw;
      r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
      r16.yzw = r16.yzw * r21.zzz + r20.xyz;
      r11.w = 0;
      r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
      r16.yzw = r19.xyz * r16.yzw;
      r8.w = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r18.xyz = r15.yzw * r3.zzz + r16.yzw;
      r17.w = 0;
      r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r6.w).xyz;
      r3.z = sunConstants.globalProbeExposure * r7.w + -r8.w;
      r3.z = r2.y * r3.z + r8.w;
      r22.xyz = r15.yzw * r3.zzz + r22.xyz;
    }
  } else {
    r18.xyz = float3(0,0,0);
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
  r15.yzw = r22.xyz * r3.zzz;
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
            r10.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r23.x = dot(icb[r11.w+0].yx, r21.xy);
              r23.y = dot(icb[r11.w+0].yx, r21.yz);
              r22.xy = r23.xy * lightConstantsCB[r6.w].data[3].yy + r20.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r7.w).x;
              r10.w = r12.w * 0.125 + r10.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r20.z = (uint)r8.w;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
          }
          r6.w = r10.w * r10.w;
          r6.w = r6.w * r10.w;
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
              r10.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r23.x = dot(icb[r11.w+0].yx, r21.xy);
                r23.y = dot(icb[r11.w+0].yx, r21.yz);
                r22.xy = r23.xy * lightConstantsCB[r6.w].data[3].yy + r20.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r7.w).x;
                r10.w = r12.w * 0.125 + r10.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r20.z = (uint)r8.w;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r7.w).x;
            }
            r6.w = r10.w * r10.w;
            r6.w = r6.w * r10.w;
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
  r2.w = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r20.x = -r13.x;
  r3.y = ~(int)r3.x;
  r2.x = -r2.x * 0.5 + 1;
  r21.x = 2;
  r22.x = 2;
  r5.w = 1;
  r23.w = 1;
  r20.z = r13.x;
  r24.w = 1;
  r25.z = 1;
  r26.w = 1;
  r20.yw = r14.xx;
  r13.y = r20.w;
  r27.w = 1;
  r14.y = r20.x;
  r14.z = r13.x;
  r28.w = 1;
  r29.x = r14.x;
  r29.y = r20.x;
  r29.z = r13.x;
  r30.x = r14.x;
  r30.y = r20.x;
  r30.z = r13.x;
  r31.x = r14.x;
  r31.y = r20.x;
  r31.z = r13.x;
  r16.yzw = r18.xyz;
  r32.xyz = r19.zxy;
  r33.xyz = r15.yzw;
  r3.w = r0.w;
  r4.z = 0;
  while (true) {
    r6.w = cmp((int)r4.z == 2);
    if (r6.w != 0) break;
    r6.w = r4.z ? r0.x : r2.w;
    r6.w = (int)r6.w * 15;
    if (3 == 0) r7.w = 0; else if (3+24 < 32) {     r7.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(3 + 24)); r7.w = (uint)r7.w >> (32-3);    } else r7.w = (uint)lightConstantsCB[r6.w].data[1].w >> 24;
    switch (r7.w) {
      case 4 :      if (r2.z != 0) {
        r7.w = (int)r3.w & 7;
        r7.w = mad((int)r7.w, 24, 112);
        r21.yzw = lightConstantsCB[r6.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r7.w = u2.xyzw;
      }
      r7.w = (int)r3.w + 1;
      r8.w = cmp(0 < lightConstantsCB[r6.w].data[6].y);
      r34.xy = lightConstantsCB[r6.w].data[5].zw;
      r34.z = lightConstantsCB[r6.w].data[6].x;
      r21.yzw = -r34.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r6.w].data[0].xyz;
      r35.xyz = r21.yzw + -r5.xyz;
      r10.w = dot(r34.xyz, r35.xyz);
      r11.w = saturate(-r10.w / lightConstantsCB[r6.w].data[6].y);
      r36.xyz = r11.www * r34.xyz + r21.yzw;
      r36.xyz = r8.www ? r36.xyz : lightConstantsCB[r6.w].data[0].xyz;
      r36.xyz = r36.xyz + -r5.xyz;
      r12.w = dot(r36.xyz, r36.xyz);
      r13.z = rsqrt(r12.w);
      r36.xyz = r36.xyz * r13.zzz;
      r13.z = dot(r11.xyz, r36.xyz);
      r13.w = saturate(r13.z);
      r14.w = cmp(0 < r13.w);
      if (r14.w != 0) {
        r14.w = sqrt(r12.w);
        r17.w = lightConstantsCB[r6.w].data[3].x * lightConstantsCB[r6.w].data[3].x;
        r12.w = r17.w / r12.w;
        r12.w = min(1, r12.w);
        r36.xy = saturate(r14.ww * lightConstantsCB[r6.w].data[2].xz + lightConstantsCB[r6.w].data[2].yw);
        r36.zw = r36.xy * r36.xy;
        r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
        r36.xy = r36.zw * r36.xy;
        r12.w = r36.x * r12.w;
        r12.w = r12.w * r36.y;
        r14.w = cmp(0 < r12.w);
        if (r14.w != 0) {
          if (3 == 0) r14.w = 0; else if (3+27 < 32) {           r14.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)lightConstantsCB[r6.w].data[1].w >> 27;
          r17.w = (int)r7.w & 15;
          r18.w = (int)r17.w + -1;
          r18.w = cmp((uint)r18.w < 32);
          r18.w = r2.z ? r18.w : 0;
          if (r18.w != 0) {
            r36.xy = mad((int2)r17.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, r36.x, u2.xxxx
          r17.w = samp0[]..swiz;
            r17.w = (int)r17.w | 4;
            GBufferDiffuseColor[viewID].r36.x = u2.x;
            GBufferDiffuseColor[viewID].r36.y = u2.x;
          }
          r17.w = (int)r3.w + 257;
          r14.w = cmp((int)r14.w != 1);
          if (r14.w != 0) {
            r14.w = abs(r13.z) * -0.200000003 + 0.400000006;
            r36.xyz = r11.xyz * r14.www + r5.xyz;
            r36.xyz = -lightConstantsCB[r6.w].data[4].yzw + r36.xyz;
            r14.w = max(abs(r36.y), abs(r36.z));
            r14.w = max(abs(r36.x), r14.w);
            r14.w = lightConstantsCB[r6.w].data[5].x / r14.w;
            r14.w = lightConstantsCB[r6.w].data[5].y + r14.w;
            r18.w = dot(r36.xyz, r36.xyz);
            r18.w = rsqrt(r18.w);
            r14.w = max(6.10351563e-05, r14.w);
            r19.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
            r37.w = (uint)r19.w;
            r19.w = 0;
            r25.w = 0;
            while (true) {
              r29.w = cmp((int)r25.w >= 8);
              if (r29.w != 0) break;
              r38.y = dot(icb[r25.w+0].yx, r20.xy);
              r38.z = dot(icb[r25.w+0].yx, r20.yz);
              r38.yz = lightConstantsCB[r6.w].data[3].yy * r38.yz;
              r38.x = r38.y * r16.x;
              r38.w = r38.y * r15.x;
              r37.xyz = r36.xyz * r18.www + r38.xzw;
              r29.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r14.w).x;
              r19.w = r29.w * 0.125 + r19.w;
              r25.w = (int)r25.w + 1;
            }
          } else {
            r19.w = 1;
          }
          r12.w = r19.w * r12.w;
          r14.w = cmp(0 < r12.w);
          if (r14.w != 0) {
            r14.w = lightConstantsCB[r6.w].data[1].z * r1.z;
            r14.w = 0.25 * r14.w;
            r18.w = dot(r34.xyz, r17.xyz);
            r25.w = dot(r17.xyz, r35.xyz);
            r29.w = -r18.w * r18.w + lightConstantsCB[r6.w].data[6].y;
            r10.w = r18.w * r25.w + -r10.w;
            r10.w = saturate(r10.w / r29.w);
            r18.w = r29.w / lightConstantsCB[r6.w].data[6].y;
            r18.w = 10 * r18.w;
            r18.w = min(1, r18.w);
            r10.w = r10.w + -r11.w;
            r10.w = r18.w * r10.w + r11.w;
            r21.yzw = r10.www * r34.xyz + r21.yzw;
            r21.yzw = r8.www ? r21.yzw : lightConstantsCB[r6.w].data[0].xyz;
            r21.yzw = r21.yzw + -r5.xyz;
            r8.w = dot(r21.yzw, r21.yzw);
            r8.w = rsqrt(r8.w);
            r34.xyz = r21.yzw * r8.www;
            if (4 == 0) r10.w = 0; else if (4+16 < 32) {             r10.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(4 + 16)); r10.w = (uint)r10.w >> (32-4);            } else r10.w = (uint)lightConstantsCB[r6.w].data[1].w >> 16;
            r11.w = cmp(0 < (uint)r10.w);
            r11.w = r11.w ? r3.x : 0;
            if (r11.w != 0) {
              r10.w = (int)r10.w + numLights;
              r10.w = mad((int)r10.w, 15, -15);
              r11.w = abs(r13.z) * -0.200000003 + 0.400000006;
              r23.xyz = r11.xyz * r11.www + r5.xyz;
              r35.xyz = lightConstantsCB[r10.w].data[6].yzw;
              r35.w = lightConstantsCB[r10.w].data[7].x;
              r11.w = dot(r35.xyzw, r23.xyzw);
              r35.xyz = lightConstantsCB[r10.w].data[7].yzw;
              r35.w = lightConstantsCB[r10.w].data[8].x;
              r18.w = dot(r35.xyzw, r23.xyzw);
              r25.w = cmp(r18.w < r11.w);
              if (r25.w == 0) {
                r35.xyz = lightConstantsCB[r10.w].data[4].yzw;
                r35.w = lightConstantsCB[r10.w].data[5].x;
                r35.x = dot(r35.xyzw, r23.xyzw);
                r36.xyz = lightConstantsCB[r10.w].data[5].yzw;
                r36.w = lightConstantsCB[r10.w].data[6].x;
                r35.y = dot(r36.xyzw, r23.xyzw);
                r23.xy = r35.xy / r18.ww;
                r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r35.x = lightConstantsCB[r10.w].data[9].w + r23.x;
                r35.y = lightConstantsCB[r10.w].data[10].x + r23.y;
                r23.xy = lightConstantsCB[r10.w].data[9].yz * r35.xy;
                r35.xy = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
                r35.zw = float2(1,1) + -r35.xy;
                r35.zw = cmp(r23.xy >= r35.zw);
                r35.xy = cmp(r35.xy >= r23.xy);
                r35.xy = (int2)r35.xy | (int2)r35.zw;
                r23.z = (int)r35.y | (int)r35.x;
                if (r23.z == 0) {
                  r23.xy = saturate(r23.xy);
                  r35.x = r23.x * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
                  r35.y = r23.y * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
                  r23.x = lightConstantsCB[r10.w].data[10].z * r18.w;
                  r11.w = lightConstantsCB[r10.w].data[10].y * r18.w + r11.w;
                  r11.w = r11.w / r23.x;
                }
              } else {
                r23.z = -1;
              }
              r18.w = (int)r25.w | (int)r23.z;
              if (r18.w == 0) {
                r11.w = max(6.10351563e-05, r11.w);
                r18.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r23.z = (uint)r18.w;
                  r25.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r36.x = dot(icb[r29.w+0].yx, r20.xw);
                    r36.y = dot(icb[r29.w+0].xy, r13.xy);
                    r23.xy = r36.xy * lightConstantsCB[r10.w].data[3].yy + r35.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
                    r25.w = r23.x * 0.125 + r25.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r35.z = (uint)r18.w;
                  r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r11.w).x;
                }
                r10.w = r25.w * r25.w;
                r10.w = r10.w * r25.w;
              } else {
                r10.w = 1;
              }
              r12.w = r12.w * r10.w;
            } else {
              if (4 == 0) r10.w = 0; else if (4+20 < 32) {               r10.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(4 + 20)); r10.w = (uint)r10.w >> (32-4);              } else r10.w = (uint)lightConstantsCB[r6.w].data[1].w >> 20;
              r11.w = cmp(0 < (uint)r10.w);
              r11.w = r11.w ? r3.y : 0;
              if (r11.w != 0) {
                r10.w = (int)r10.w + numLights;
                r10.w = mad((int)r10.w, 15, -15);
                r11.w = abs(r13.z) * -0.200000003 + 0.400000006;
                r24.xyz = r11.xyz * r11.www + r5.xyz;
                r35.xyz = lightConstantsCB[r10.w].data[6].yzw;
                r35.w = lightConstantsCB[r10.w].data[7].x;
                r11.w = dot(r35.xyzw, r24.xyzw);
                r35.xyz = lightConstantsCB[r10.w].data[7].yzw;
                r35.w = lightConstantsCB[r10.w].data[8].x;
                r18.w = dot(r35.xyzw, r24.xyzw);
                r23.x = cmp(r18.w < r11.w);
                if (r23.x == 0) {
                  r35.xyz = lightConstantsCB[r10.w].data[4].yzw;
                  r35.w = lightConstantsCB[r10.w].data[5].x;
                  r35.x = dot(r35.xyzw, r24.xyzw);
                  r36.xyz = lightConstantsCB[r10.w].data[5].yzw;
                  r36.w = lightConstantsCB[r10.w].data[6].x;
                  r35.y = dot(r36.xyzw, r24.xyzw);
                  r23.yz = r35.xy / r18.ww;
                  r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.x = lightConstantsCB[r10.w].data[9].w + r23.y;
                  r24.y = lightConstantsCB[r10.w].data[10].x + r23.z;
                  r23.yz = lightConstantsCB[r10.w].data[9].yz * r24.xy;
                  r24.xy = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
                  r35.xy = float2(1,1) + -r24.xy;
                  r35.xy = cmp(r23.yz >= r35.xy);
                  r24.xy = cmp(r24.xy >= r23.yz);
                  r24.xy = (int2)r24.xy | (int2)r35.xy;
                  r24.x = (int)r24.y | (int)r24.x;
                  if (r24.x == 0) {
                    r23.yz = saturate(r23.yz);
                    r35.x = r23.y * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
                    r35.y = r23.z * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
                    r23.y = lightConstantsCB[r10.w].data[10].z * r18.w;
                    r11.w = lightConstantsCB[r10.w].data[10].y * r18.w + r11.w;
                    r11.w = r11.w / r23.y;
                  }
                } else {
                  r24.x = -1;
                }
                r18.w = (int)r23.x | (int)r24.x;
                if (r18.w == 0) {
                  r11.w = max(6.10351563e-05, r11.w);
                  r18.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r23.z = (uint)r18.w;
                    r24.xy = float2(0,0);
                    while (true) {
                      r24.z = cmp((int)r24.y >= 8);
                      if (r24.z != 0) break;
                      r36.x = dot(icb[r24.y+0].xy, r14.xy);
                      r36.y = dot(icb[r24.y+0].yx, r14.xz);
                      r23.xy = r36.xy * lightConstantsCB[r10.w].data[3].yy + r35.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
                      r24.x = r23.x * 0.125 + r24.x;
                      r24.y = (int)r24.y + 1;
                    }
                  } else {
                    r35.z = (uint)r18.w;
                    r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r11.w).x;
                  }
                  r10.w = r24.x * r24.x;
                  r10.w = r10.w * r24.x;
                } else {
                  r10.w = 1;
                }
                r12.w = r12.w * r10.w;
              }
            }
            r10.w = -r13.w * r2.x + 1;
            r10.w = r10.w * r10.w;
            r10.w = -r10.w * 0.620000005 + 0.620000005;
            r10.w = r10.w + -r13.w;
            r10.w = r1.w * r10.w + r13.w;
            r10.w = r10.w * r12.w;
            r23.x = lightConstantsCB[r6.w].data[0].w;
            r23.yz = lightConstantsCB[r6.w].data[1].xy;
            r11.w = cmp(0 < r13.z);
            r35.xyz = r10.www * r23.xyz + r16.yzw;
            r10.w = saturate(dot(r11.xyz, r34.xyz));
            r21.yzw = r21.yzw * r8.www + r12.xyz;
            r8.w = dot(r21.yzw, r21.yzw);
            r8.w = rsqrt(r8.w);
            r21.yzw = r21.yzw * r8.www;
            r8.w = dot(r21.yzw, r12.xyz);
            r13.z = dot(r11.xyz, r21.yzw);
            r13.w = abs(r13.z) * r1.z + -abs(r13.z);
            r13.z = abs(r13.z) * r13.w + 1;
            r13.w = r10.w * r2.y + r3.z;
            r13.z = r13.z * r13.z;
            r13.z = r13.z * r13.w;
            r13.z = rcp(r13.z);
            r10.w = r10.w * r14.w;
            r10.w = r13.z * r10.w;
            r10.w = r10.w * r12.w;
            r21.yzw = r10.www * r23.xyz + r33.xyz;
            r8.w = saturate(1 + -r8.w);
            r13.z = r8.w * r8.w;
            r13.z = r13.z * r13.z;
            r8.w = r13.z * r8.w;
            r8.w = r10.w * r8.w;
            r23.xyz = r8.www * r23.xyz + r32.xyz;
            r16.yzw = r11.www ? r35.xyz : r16.yzw;
            r32.xyz = r11.www ? r23.xyz : r32.xyz;
            r33.xyz = r11.www ? r21.yzw : r33.xyz;
            r8.w = (int)r17.w & 15;
            r10.w = (int)r8.w + -1;
            r10.w = cmp((uint)r10.w < 32);
            r10.w = r2.z ? r10.w : 0;
            if (r10.w != 0) {
              r13.zw = mad((int2)r8.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, r13.z, u2.xxxx
            r8.w = samp0[]..swiz;
              r8.w = (int)r8.w | 8;
              GBufferDiffuseColor[viewID].r13.z = u2.x;
              GBufferDiffuseColor[viewID].r13.w = u2.x;
            }
            r3.w = (int)r3.w + 0x00010101;
          } else {
            r3.w = r17.w;
          }
        } else {
          r3.w = r7.w;
        }
      } else {
        r3.w = r7.w;
      }
      break;
      case 2 :      if (r2.z != 0) {
        r7.w = (int)r3.w & 7;
        r7.w = mad((int)r7.w, 24, 112);
        r22.yzw = lightConstantsCB[r6.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r7.w = u2.xyzw;
      }
      r7.w = (int)r3.w + 1;
      r23.xy = lightConstantsCB[r6.w].data[3].zw + -r5.xy;
      r23.z = lightConstantsCB[r6.w].data[4].x + -r5.z;
      r8.w = dot(r23.xyz, r23.xyz);
      r8.w = rsqrt(r8.w);
      r21.yzw = r23.xyz * r8.www;
      r10.w = dot(r11.xyz, r21.yzw);
      r11.w = saturate(r10.w);
      r12.w = cmp(0 < r11.w);
      if (r12.w != 0) {
        r34.xyz = lightConstantsCB[r6.w].data[7].yzw;
        r34.w = lightConstantsCB[r6.w].data[8].x;
        r12.w = dot(r34.xyzw, r5.xyzw);
        r13.z = cmp(r12.w < 1);
        if (r13.z != 0) {
          r21.yzw = float3(1,1,1);
          r13.z = 0;
        } else {
          r22.yzw = lightConstantsCB[r6.w].data[0].xyz + -r5.xyz;
          r13.w = lightConstantsCB[r6.w].data[3].x * lightConstantsCB[r6.w].data[3].x;
          r14.w = dot(r22.yzw, r22.yzw);
          r13.w = r13.w / r14.w;
          r13.w = min(1, r13.w);
          r22.yz = saturate(r12.ww * lightConstantsCB[r6.w].data[2].xz + lightConstantsCB[r6.w].data[2].yw);
          r24.yz = r22.yz * r22.yz;
          r22.yz = r22.yz * float2(-2,-2) + float2(3,3);
          r22.yz = r24.yz * r22.yz;
          r13.w = r22.y * r13.w;
          r13.w = r13.w * r22.z;
          r35.xyz = lightConstantsCB[r6.w].data[4].yzw;
          r35.w = lightConstantsCB[r6.w].data[5].x;
          r35.x = dot(r35.xyzw, r5.xyzw);
          r36.xyz = lightConstantsCB[r6.w].data[5].yzw;
          r36.w = lightConstantsCB[r6.w].data[6].x;
          r35.y = dot(r36.xyzw, r5.xyzw);
          r25.xy = r35.xy / r12.ww;
          r12.w = cmp(lightConstantsCB[r6.w].data[10].w < 0.00048828125);
          if (r12.w != 0) {
            r22.yz = saturate(abs(r25.xy) * lightConstantsCB[r6.w].data[12].xy + lightConstantsCB[r6.w].data[12].zw);
            r24.yz = r22.yz * r22.yz;
            r22.yz = r22.yz * float2(-2,-2) + float2(3,3);
            r22.yz = r24.yz * r22.yz;
            r12.w = r22.y * r22.z;
          } else {
            r35.xyzw = saturate(lightConstantsCB[r6.w].data[11].xyzw * abs(r25.yyxx));
            r35.xyzw = log2(r35.xyzw);
            r35.xyzw = lightConstantsCB[r6.w].data[12].zzzz * r35.xyzw;
            r35.xyzw = exp2(r35.xyzw);
            r22.yz = r35.xy + r35.zw;
            r22.yz = log2(r22.yz);
            r22.yz = lightConstantsCB[r6.w].data[12].ww * r22.yz;
            r22.yz = exp2(r22.yz);
            r14.w = lightConstantsCB[r6.w].data[12].x * r22.y;
            r17.w = lightConstantsCB[r6.w].data[12].y * r22.z + -1;
            r14.w = lightConstantsCB[r6.w].data[12].y * r22.z + -r14.w;
            r14.w = saturate(r17.w / r14.w);
            r17.w = r14.w * r14.w;
            r14.w = r14.w * -2 + 3;
            r12.w = r17.w * r14.w;
          }
          r13.z = r13.w * r12.w;
          r12.w = 255 & (int)lightConstantsCB[r6.w].data[14].w;
          if (r12.w != 0) {
            r13.w = dot(lightConstantsCB[r6.w].data[13].xyz, r25.xyz);
            r35.x = lightConstantsCB[r6.w].data[13].w;
            r35.yz = lightConstantsCB[r6.w].data[14].xy;
            r14.w = dot(r35.xyz, r25.xyz);
            r35.x = frac(r13.w);
            r35.y = frac(r14.w);
            r12.w = (int)r12.w + -1;
            r35.z = (uint)r12.w;
            r21.yzw = gCookieArray.SampleLevel(samplerLinear_s, r35.xyz, 0).xyz;
          } else {
            r21.yzw = float3(1,1,1);
          }
        }
        r35.x = lightConstantsCB[r6.w].data[0].w;
        r35.yz = lightConstantsCB[r6.w].data[1].xy;
        r21.yzw = r35.xyz * r21.yzw;
        r12.w = cmp(0 < r13.z);
        if (r12.w != 0) {
          if (3 == 0) r12.w = 0; else if (3+27 < 32) {           r12.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)lightConstantsCB[r6.w].data[1].w >> 27;
          r13.w = (int)r7.w & 15;
          r14.w = (int)r13.w + -1;
          r14.w = cmp((uint)r14.w < 32);
          r14.w = r2.z ? r14.w : 0;
          if (r14.w != 0) {
            r22.yz = mad((int2)r13.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.w, cb2[52].x, r22.y, u2.xxxx
          r13.w = samp0[]..swiz;
            r13.w = (int)r13.w | 4;
            GBufferDiffuseColor[viewID].r22.y = u2.x;
            GBufferDiffuseColor[viewID].r22.z = u2.x;
          }
          r13.w = (int)r3.w + 257;
          r12.w = cmp((int)r12.w != 1);
          if (r12.w != 0) {
            r12.w = abs(r10.w) * -0.200000003 + 0.400000006;
            r26.xyz = r11.xyz * r12.www + r5.xyz;
            r35.xyz = lightConstantsCB[r6.w].data[6].yzw;
            r35.w = lightConstantsCB[r6.w].data[7].x;
            r12.w = dot(r35.xyzw, r26.xyzw);
            r14.w = dot(r34.xyzw, r26.xyzw);
            r17.w = cmp(r14.w >= r12.w);
            if (r17.w != 0) {
              r34.xyz = lightConstantsCB[r6.w].data[4].yzw;
              r34.w = lightConstantsCB[r6.w].data[5].x;
              r25.x = dot(r34.xyzw, r26.xyzw);
              r34.xyz = lightConstantsCB[r6.w].data[5].yzw;
              r34.w = lightConstantsCB[r6.w].data[6].x;
              r25.y = dot(r34.xyzw, r26.xyzw);
              r22.yz = r25.xy / r14.ww;
              r22.yz = saturate(r22.yz * float2(0.5,-0.5) + float2(0.5,0.5));
              r26.x = r22.y * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
              r26.y = r22.z * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
              r12.w = r12.w / r14.w;
              r12.w = max(6.10351563e-05, r12.w);
              r14.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r34.z = (uint)r14.w;
                r17.w = 0;
                r18.w = 0;
                while (true) {
                  r22.y = cmp((int)r18.w >= 8);
                  if (r22.y != 0) break;
                  r25.x = dot(icb[r18.w+0].xy, r29.xy);
                  r25.y = dot(icb[r18.w+0].yx, r29.xz);
                  r34.xy = r25.xy * lightConstantsCB[r6.w].data[3].yy + r26.xy;
                  r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r12.w).x;
                  r17.w = r22.y * 0.125 + r17.w;
                  r18.w = (int)r18.w + 1;
                }
              } else {
                r26.z = (uint)r14.w;
                r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r12.w).x;
              }
              r12.w = r17.w * r17.w;
              r12.w = r12.w * r17.w;
            } else {
              r12.w = 1;
            }
          } else {
            r12.w = 1;
          }
          r12.w = r13.z * r12.w;
          r13.z = cmp(0 < r12.w);
          if (r13.z != 0) {
            r13.z = lightConstantsCB[r6.w].data[1].z * r1.z;
            r13.z = r13.z * r11.w;
            if (4 == 0) r14.w = 0; else if (4+16 < 32) {             r14.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);            } else r14.w = (uint)lightConstantsCB[r6.w].data[1].w >> 16;
            r18.w = cmp(0 < (uint)r14.w);
            r18.w = r18.w ? r3.x : 0;
            if (r18.w != 0) {
              r14.w = (int)r14.w + numLights;
              r14.w = mad((int)r14.w, 15, -15);
              r18.w = abs(r10.w) * -0.200000003 + 0.400000006;
              r27.xyz = r11.xyz * r18.www + r5.xyz;
              r34.xyz = lightConstantsCB[r14.w].data[6].yzw;
              r34.w = lightConstantsCB[r14.w].data[7].x;
              r18.w = dot(r34.xyzw, r27.xyzw);
              r34.xyz = lightConstantsCB[r14.w].data[7].yzw;
              r34.w = lightConstantsCB[r14.w].data[8].x;
              r22.y = dot(r34.xyzw, r27.xyzw);
              r22.z = cmp(r22.y < r18.w);
              if (r22.z == 0) {
                r34.xyz = lightConstantsCB[r14.w].data[4].yzw;
                r34.w = lightConstantsCB[r14.w].data[5].x;
                r25.x = dot(r34.xyzw, r27.xyzw);
                r34.xyz = lightConstantsCB[r14.w].data[5].yzw;
                r34.w = lightConstantsCB[r14.w].data[6].x;
                r25.y = dot(r34.xyzw, r27.xyzw);
                r24.yz = r25.xy / r22.yy;
                r24.yz = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.x = lightConstantsCB[r14.w].data[9].w + r24.y;
                r25.y = lightConstantsCB[r14.w].data[10].x + r24.z;
                r24.yz = lightConstantsCB[r14.w].data[9].yz * r25.xy;
                r25.xy = lightConstantsCB[r14.w].data[3].yy / lightConstantsCB[r14.w].data[8].yw;
                r26.xy = float2(1,1) + -r25.xy;
                r26.xy = cmp(r24.yz >= r26.xy);
                r25.xy = cmp(r25.xy >= r24.yz);
                r25.xy = (int2)r25.xy | (int2)r26.xy;
                r22.w = (int)r25.y | (int)r25.x;
                if (r22.w == 0) {
                  r24.yz = saturate(r24.yz);
                  r26.x = r24.y * lightConstantsCB[r14.w].data[8].y + lightConstantsCB[r14.w].data[8].z;
                  r26.y = r24.z * lightConstantsCB[r14.w].data[8].w + lightConstantsCB[r14.w].data[9].x;
                  r24.y = lightConstantsCB[r14.w].data[10].z * r22.y;
                  r18.w = lightConstantsCB[r14.w].data[10].y * r22.y + r18.w;
                  r18.w = r18.w / r24.y;
                }
              } else {
                r22.w = -1;
              }
              r22.y = (int)r22.z | (int)r22.w;
              if (r22.y == 0) {
                r18.w = max(6.10351563e-05, r18.w);
                r22.y = 0x0000ffff & (int)lightConstantsCB[r14.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r27.z = (uint)r22.y;
                  r22.zw = float2(0,0);
                  while (true) {
                    r24.y = cmp((int)r22.w >= 8);
                    if (r24.y != 0) break;
                    r25.x = dot(icb[r22.w+0].xy, r30.xy);
                    r25.y = dot(icb[r22.w+0].yx, r30.xz);
                    r27.xy = r25.xy * lightConstantsCB[r14.w].data[3].yy + r26.xy;
                    r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r18.w).x;
                    r22.z = r24.y * 0.125 + r22.z;
                    r22.w = (int)r22.w + 1;
                  }
                } else {
                  r26.z = (uint)r22.y;
                  r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r18.w).x;
                }
                r14.w = r22.z * r22.z;
                r14.w = r14.w * r22.z;
              } else {
                r14.w = 1;
              }
              r12.w = r14.w * r12.w;
            } else {
              if (4 == 0) r6.w = 0; else if (4+20 < 32) {               r6.w = (uint)lightConstantsCB[r6.w].data[1].w << (32-(4 + 20)); r6.w = (uint)r6.w >> (32-4);              } else r6.w = (uint)lightConstantsCB[r6.w].data[1].w >> 20;
              r14.w = cmp(0 < (uint)r6.w);
              r14.w = r14.w ? r3.y : 0;
              if (r14.w != 0) {
                r6.w = (int)r6.w + numLights;
                r6.w = mad((int)r6.w, 15, -15);
                r14.w = abs(r10.w) * -0.200000003 + 0.400000006;
                r28.xyz = r11.xyz * r14.www + r5.xyz;
                r34.xyz = lightConstantsCB[r6.w].data[6].yzw;
                r34.w = lightConstantsCB[r6.w].data[7].x;
                r14.w = dot(r34.xyzw, r28.xyzw);
                r34.xyz = lightConstantsCB[r6.w].data[7].yzw;
                r34.w = lightConstantsCB[r6.w].data[8].x;
                r18.w = dot(r34.xyzw, r28.xyzw);
                r22.y = cmp(r18.w < r14.w);
                if (r22.y == 0) {
                  r34.xyz = lightConstantsCB[r6.w].data[4].yzw;
                  r34.w = lightConstantsCB[r6.w].data[5].x;
                  r25.x = dot(r34.xyzw, r28.xyzw);
                  r34.xyz = lightConstantsCB[r6.w].data[5].yzw;
                  r34.w = lightConstantsCB[r6.w].data[6].x;
                  r25.y = dot(r34.xyzw, r28.xyzw);
                  r24.yz = r25.xy / r18.ww;
                  r24.yz = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r25.x = lightConstantsCB[r6.w].data[9].w + r24.y;
                  r25.y = lightConstantsCB[r6.w].data[10].x + r24.z;
                  r24.yz = lightConstantsCB[r6.w].data[9].yz * r25.xy;
                  r25.xy = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
                  r26.xy = float2(1,1) + -r25.xy;
                  r26.xy = cmp(r24.yz >= r26.xy);
                  r25.xy = cmp(r25.xy >= r24.yz);
                  r25.xy = (int2)r25.xy | (int2)r26.xy;
                  r22.w = (int)r25.y | (int)r25.x;
                  if (r22.w == 0) {
                    r24.yz = saturate(r24.yz);
                    r26.x = r24.y * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
                    r26.y = r24.z * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
                    r24.y = lightConstantsCB[r6.w].data[10].z * r18.w;
                    r14.w = lightConstantsCB[r6.w].data[10].y * r18.w + r14.w;
                    r14.w = r14.w / r24.y;
                  }
                } else {
                  r22.w = -1;
                }
                r18.w = (int)r22.y | (int)r22.w;
                if (r18.w == 0) {
                  r14.w = max(6.10351563e-05, r14.w);
                  r18.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r27.z = (uint)r18.w;
                    r22.yw = float2(0,0);
                    while (true) {
                      r24.y = cmp((int)r22.w >= 8);
                      if (r24.y != 0) break;
                      r25.x = dot(icb[r22.w+0].xy, r31.xy);
                      r25.y = dot(icb[r22.w+0].yx, r31.xz);
                      r27.xy = r25.xy * lightConstantsCB[r6.w].data[3].yy + r26.xy;
                      r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r14.w).x;
                      r22.y = r24.y * 0.125 + r22.y;
                      r22.w = (int)r22.w + 1;
                    }
                  } else {
                    r26.z = (uint)r18.w;
                    r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r14.w).x;
                  }
                  r6.w = r22.y * r22.y;
                  r6.w = r6.w * r22.y;
                } else {
                  r6.w = 1;
                }
                r12.w = r12.w * r6.w;
              }
            }
            r6.w = -r11.w * r2.x + 1;
            r6.w = r6.w * r6.w;
            r6.w = -r6.w * 0.620000005 + 0.620000005;
            r6.w = r6.w + -r11.w;
            r6.w = r1.w * r6.w + r11.w;
            r6.w = r6.w * r12.w;
            r10.w = cmp(0 < r10.w);
            r26.xyz = r6.www * r21.yzw + r16.yzw;
            r23.xyz = r23.xyz * r8.www + r12.xyz;
            r6.w = dot(r23.xyz, r23.xyz);
            r6.w = rsqrt(r6.w);
            r23.xyz = r23.xyz * r6.www;
            r6.w = dot(r23.xyz, r12.xyz);
            r8.w = dot(r11.xyz, r23.xyz);
            r14.w = abs(r8.w) * r1.z + -abs(r8.w);
            r8.w = abs(r8.w) * r14.w + 1;
            r11.w = r11.w * r2.y + r3.z;
            r8.w = r8.w * r8.w;
            r8.w = r8.w * r11.w;
            r8.w = rcp(r8.w);
            r8.w = r8.w * r13.z;
            r8.w = r12.w * r8.w;
            r8.w = 0.25 * r8.w;
            r23.xyz = r8.www * r21.yzw + r33.xyz;
            r6.w = saturate(1 + -r6.w);
            r11.w = r6.w * r6.w;
            r11.w = r11.w * r11.w;
            r6.w = r11.w * r6.w;
            r6.w = r8.w * r6.w;
            r21.yzw = r6.www * r21.yzw + r32.xyz;
            r16.yzw = r10.www ? r26.xyz : r16.yzw;
            r32.xyz = r10.www ? r21.yzw : r32.xyz;
            r33.xyz = r10.www ? r23.xyz : r33.xyz;
            r6.w = (int)r13.w & 15;
            r8.w = (int)r6.w + -1;
            r8.w = cmp((uint)r8.w < 32);
            r8.w = r2.z ? r8.w : 0;
            if (r8.w != 0) {
              r21.yz = mad((int2)r6.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r6.w, cb2[52].x, r21.y, u2.xxxx
            r6.w = samp0[]..swiz;
              r6.w = (int)r6.w | 8;
              GBufferDiffuseColor[viewID].r21.y = u2.x;
              GBufferDiffuseColor[viewID].r21.z = u2.x;
            }
            r3.w = (int)r3.w + 0x00010101;
          } else {
            r3.w = r13.w;
          }
        } else {
          r3.w = r7.w;
        }
      } else {
        r3.w = r7.w;
      }
      break;
      default :
      break;
    }
    r4.z = (int)r4.z + 1;
  }
  r4.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r4.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r1.zw = r0.ww ? r2.yw : float2(-1,0);
  r2.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r2.xy = r0.ww ? r2.yw : float2(-1,0);
  r3.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r3.x;
  r0.w = cmp((int)r0.x == (int)r0.w);
  r3.xy = r0.ww ? r3.yz : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r7.x;
  r0.x = cmp((int)r0.x == (int)r0.w);
  r0.xw = r0.xx ? r7.yz : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.z = r3.x;
  r7.w = r0.x;
  r7.xyzw = r7.xyzw + -r4.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r7.x + r7.y;
  r0.x = r0.x + r7.z;
  r0.x = r0.x + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r3.y + r1.z;
  r0.w = r7.w * r0.w + r1.z;
  r4.w = r0.w / r0.x;
  r0.x = cmp(0 >= r0.x);
  r4.yz = r0.xx ? float2(0,0) : r4.zw;
  r0.xw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r0.w == (int)r0.x);
  r2.xyw = r0.xxx ? r4.xyz : r4.xzy;
  r0.x = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r0.x;
  r3.z = -r2.y * 0.5 + r0.x;
  r3.x = r3.z + r2.y;
  r2.xyw = float3(1,1,1) + -r3.xyz;
  r2.xyw = r32.xyz * r2.xyw;
  r2.xyw = r33.xyz * r3.xyz + r2.xyw;
  r2.xyw = r16.yzw * r6.xyz + r2.xyw;
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
      r4.w = -1.44269502 * r1.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r1.w = r4.w / r1.w;
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
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.y ? r1.w : r0.w;
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
  r4.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r4.xz != int2(0,0));
  r3.xy = cmp((int2)r4.yw == int2(3,0));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 0);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.xxx ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r3.w & 7;
        break;
        case 2 :        if (3 == 0) r0.x = 0; else if (3+8 < 32) {         r0.x = (uint)r3.w << (32-(3 + 8)); r0.x = (uint)r0.x >> (32-3);        } else r0.x = (uint)r3.w >> 8;
        break;
        case 3 :        r0.x = (uint)r3.w >> 16;
        break;
        case 4 :        r0.x = (int)r9.w & 255;
        break;
        case 5 :        if (8 == 0) r0.x = 0; else if (8+8 < 32) {         r0.x = (uint)r9.w << (32-(8 + 8)); r0.x = (uint)r0.x >> (32-8);        } else r0.x = (uint)r9.w >> 8;
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
    r1.w = (int)r3.w & 7;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.x = (int)r9.w & 255;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r3.w & 7;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (3 == 0) r0.w = 0; else if (3+8 < 32) {     r0.w = (uint)r3.w << (32-(3 + 8)); r0.w = (uint)r0.w >> (32-3);    } else r0.w = (uint)r3.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r0.w
    InterlockedAdd(dest, value, orig_value);
    r1.x = (uint)r3.w >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (int)r9.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.y
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r9.w << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r9.w >> 8;
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