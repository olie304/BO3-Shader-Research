// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:04 2021

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
  r0.x = mad(permuteStride, 11, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
  r0.zw = (int2)r0.xy & int2(4095,4095);
  r1.xy = mad((int2)r0.zw, int2(8,8), (int2)vThreadIDInGroup.xy);
  r1.zw = float2(0,0);
  r2.xyzw = GBufferNormalAndGloss.Load(r1.xyw).xyzw;
  r3.xy = (uint2)renderTargetSize.xy;
  r3.xy = cmp((uint2)r1.xy < (uint2)r3.xy);
  r3.x = r3.y ? r3.x : 0;
  r3.y = cmp(0 < r2.z);
  r3.x = r3.y ? r3.x : 0;
  if (r3.x == 0) {
    return;
  }
  r3.y = GBufferDepth.Load(r1.xyw).x;
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r3.zw = (uint2)r1.xy;
  r5.xy = float2(0.5,0.5) + r3.zw;
  r6.x = cmp(r3.y >= 0.984375);
  r5.z = 1.01587307 * r3.y;
  r3.y = r3.y * 64 + -63;
  r3.y = r6.x ? r3.y : r5.z;
  r3.y = max(9.99999994e-09, r3.y);
  r6.y = rcp(r3.y);
  r3.xy = r3.xx ? r6.xy : 0;
  r5.zw = renderTargetSize.zw * r5.xy;
  r6.xyzw = gSSAOTexture.Gather(samplerLinearClamp_s, r5.zw).xyzw;
  r7.xyzw = gSSAODepthTexture.Gather(samplerLinearClamp_s, r5.zw).xyzw;
  r5.zw = float2(0.5,0.5) * r5.xy;
  r5.zw = frac(r5.zw);
  r8.xy = float2(1,1) + -r5.wz;
  r9.y = r8.y * r8.x;
  r9.xz = r8.xy * r5.zw;
  r9.w = r5.z * r5.w;
  r5.z = dot(r6.xyzw, r9.xyzw);
  r7.xyzw = r7.xyzw + -r3.yyyy;
  r5.w = min(abs(r7.z), abs(r7.w));
  r5.w = min(abs(r7.y), r5.w);
  r5.w = min(abs(r7.x), r5.w);
  r8.x = max(abs(r7.z), abs(r7.w));
  r8.x = max(r8.x, abs(r7.y));
  r7.x = max(r8.x, abs(r7.x));
  r7.yzw = cmp(r5.www == abs(r7.yzw));
  r5.w = r7.y ? r6.y : r6.x;
  r5.w = r7.z ? r6.z : r5.w;
  r5.w = r7.w ? r6.w : r5.w;
  r6.x = 0.00999999978 * r3.y;
  r6.x = cmp(r6.x < r7.x);
  r5.z = r6.x ? r5.w : r5.z;
  r4.z = r5.z * r4.z;
  if (showAO != 0) {
    r5.z = 0.75 * r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r5.zzzz
    return;
  } else {
    r5.z = enableAO ? r4.z : 1;
  }
  r4.z = cmp(r2.z >= 0.5);
  r6.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r10.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r1.zw = -subpixelOffset.xy + r5.xy;
  r1.zw = renderTargetSize.zw * r1.zw;
  r1.zw = r1.zw * float2(2,-2) + float2(-1,1);
  r11.x = inverseProjectionMatrix._m00 * r1.z;
  r11.y = inverseProjectionMatrix._m11 * r1.w;
  r11.zw = float2(1,1);
  r5.xyw = r11.xyz * r3.yyy;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r5.yyy;
  r11.xyz = r5.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r11.xyz = r5.www * inverseViewMatrix._m20_m21_m22 + r11.xyz;
  r1.z = r2.w * 3 + 0.5;
  r1.z = (uint)r1.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r1.w = dot(r2.xy, r2.xy);
  r12.zw = float2(2,1) + -r1.ww;
  r1.w = sqrt(r12.z);
  r12.xy = r2.xy * r1.ww;
  r13.xyzw = (int4)r1.zzzz & int4(2,1,2,1);
  r13.xyzw = r13.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r1.z = (int)r13.w ^ (int)r13.z;
  r13.z = r1.z ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r13.xyz;
  r5.xyw = float3(1,-2,1) * r13.xyz;
  r12.xyz = float3(0.408248305,0.707106769,0.577350259) * r12.xyw;
  r2.xyw = r12.yyy * r2.xyw;
  r2.xyw = r5.xyw * r12.xxx + r2.xyw;
  r12.xyz = r13.xyz * r12.zzz + r2.xyw;
  r1.z = r4.z ? -0.5 : -0.00146627566;
  r1.z = r2.z + r1.z;
  r2.y = saturate(2.00982332 * r1.z);
  r1.z = dot(-r11.xyz, -r11.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyw = -r11.xyz * r1.zzz;
  r1.w = dot(r3.zw, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r13.x, r14.x);
  r2.zw = (uint2)r1.yx;
  r1.w = dot(r2.zw, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r15.x, r16.x);
  r2.x = saturate(dot(r12.xyz, r5.xyw));
  r1.w = dot(-r5.xyw, r12.xyz);
  r1.w = r1.w + r1.w;
  r17.xyz = r12.xyz * -r1.www + -r5.xyw;
  r1.w = 17 * r2.y;
  r1.w = exp2(r1.w);
  r1.w = 2 + r1.w;
  r1.w = 2 / r1.w;
  r2.z = sqrt(r1.w);
  r3.yz = float2(0.5,0.5) * renderTargetSize.xy;
  r3.yz = (uint2)r3.yz;
  r3.yz = cmp((int2)r1.xy == (int2)r3.yz);
  r2.w = r3.z ? r3.y : 0;
  r3.y = dot(r12.xyz, sunConstants.wldDir.xyz);
  r3.z = saturate(r3.y);
  r3.w = r4.z ? abs(r3.y) : r3.z;
  r6.w = cmp(0 >= r3.w);
  if (r6.w != 0) {
    r7.w = 0;
  }
  if (r6.w == 0) {
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r15.yzw = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.yzw;
    r15.yzw = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.yzw;
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.yzw;
    r6.w = -sunConstants.splitDepthOffset + r15.w;
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
        r13.zw = -sunConstants.splitPinTransform[r10.w].xy + r15.yz;
        r13.z = max(abs(r13.z), abs(r13.w));
        r9.w = sunConstants.splitPinTransform[r10.w].z * r13.z;
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
      r18.xz = rcp(r16.yy);
      r18.y = -r18.z;
      r16.yzw = r15.yzy * r18.xyz + r16.zwz;
      r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.yzw = max(float3(0,0,0), r16.yzw);
      r16.yzw = min(r16.yzw, r18.xyz);
      r13.zw = sunConstants.sstLightingConstants.coordScale * r16.wz;
      r13.zw = floor(r13.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r13.z = r13.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r13.z = (uint)r13.z;
      r13.z = (int)r13.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r14.w = (int)r13.w & 0x40000000;
      r18.x = (uint)r13.w << 2;
      if (r14.w == 0) {
        r14.w = (int)r13.w & 0x01ffffff;
        r19.x = (int)r13.z + (int)r14.w;
        r13.z = (uint)r13.w >> 25;
        r13.z = (uint)r13.z;
        r16.yzw = r16.yzw * r13.zzz;
        r16.yzw = frac(r16.yzw);
        r16.yzw = float3(128,128,128) * r16.yzw;
        r16.yzw = (uint3)r16.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r13.zw = (uint2)r16.wz >> int2(6,6);
        r14.w = (int)r19.z & 0xc0000000;
        r18.y = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
      r18.y = samp0[]..swiz;
        r13.w = r13.w ? r19.z : r18.y;
        r18.y = (uint)r13.w >> 13;
        r13.z = r13.z ? r18.y : r13.w;
        r13.z = (int)r13.z & 8191;
        r20.x = (int)r13.z + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
      r20.z = samp0[]..swiz;
        r19.y = 0;
        r20.y = 1;
        r18.yzw = r14.www ? r19.xyz : r20.xyz;
        r20.yz = r14.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r16.wz >> (uint2)r20.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r19.w = (int)r18.w & 0xc0000000;
        r20.y = (int)r18.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.y, l(0), t23.xxxx
      r20.y = samp0[]..swiz;
        r13.w = r13.w ? r18.w : r20.y;
        r20.y = (uint)r13.w >> 13;
        r13.z = r13.z ? r20.y : r13.w;
        r13.z = (int)r13.z & 8191;
        r20.x = (int)r13.z + (int)r18.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r18.yzw = r19.www ? r18.yzw : r20.xzw;
        r18.yzw = r14.www ? r19.xyz : r18.yzw;
        r13.z = (int)r18.w & 0xc0000000;
        if (r13.z == 0) {
          r13.z = (int)-r18.z + 6;
          r13.zw = (uint2)r16.wz >> (uint2)r13.zz;
          r14.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r14.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r19.x = (int)r13.z + (int)r18.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r18.zz + int2(1,2);
          r13.z = (int)-r19.y + 6;
          r13.zw = (uint2)r16.wz >> (uint2)r13.zz;
          r14.w = (int)r19.w & 0xc0000000;
          r18.z = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r18.z >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r20.x = (int)r13.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r14.www ? r19.xyw : r20.xyz;
          r13.z = (int)-r20.y + 6;
          r13.zw = (uint2)r16.wz >> (uint2)r13.zz;
          r18.z = (int)r20.z & 0xc0000000;
          r19.y = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r19.y >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r21.x = (int)r13.z + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
        r21.y = samp0[]..swiz;
          r13.zw = r18.zz ? r20.xz : r21.xy;
          r18.yw = r14.ww ? r19.xw : r13.zw;
        }
        r13.z = (int)r18.w & 0xc0000000;
        if (r13.z == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r18.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r18.w >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r19.xy = (int2)r18.ww & int2(32767,536870912);
          r14.w = (uint)r19.x;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 3.05185094e-05 * r14.w;
          r18.z = (int)r16.z & 3;
          r18.z = (int)r18.z + (int)r18.y;
          r18.z = (int)r18.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.z, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.w = (((uint)r16.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r16.y = (uint)r18.z >> (uint)r19.x;
          r16.y = (int)r16.y & 255;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r14.w;
          r16.y = r16.y * 0.00392156886 + r13.w;
          r16.z = (int)r19.z + 1;
          if (1 == 0) r16.w = 0; else if (1+1 < 32) {           r16.w = (uint)r16.w << (32-(1 + 1)); r16.w = (uint)r16.w >> (32-1);          } else r16.w = (uint)r16.w >> 1;
          r16.z = (int)r16.w + (int)r16.z;
          r16.z = (int)r16.z + (int)r18.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.z = (uint)r16.z >> (uint)r19.w;
          r16.z = (int)r16.z & 0x0000ffff;
          r16.z = (uint)r16.z;
          r14.w = r16.z * r14.w;
          r13.w = r14.w * 1.52590219e-05 + r13.w;
          r18.x = r19.y ? r16.y : r13.w;
        } else {
          r13.w = (int)r18.w & 0x80000000;
          r14.w = (int)r18.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r13.w = r13.w ? r14.w : 0;
          r14.w = (uint)r18.w << 2;
          r16.y = (uint)r13.w >> 16;
          r16.y = f16tof32(r16.y);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r14.w = r15.y * r16.y + r14.w;
          r13.w = r15.z * r13.w + r14.w;
          r18.x = r13.z ? r13.w : r18.x;
        }
      }
      r13.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.w;
      r13.z = cmp(r18.x < r13.z);
      r7.w = r13.z ? 0 : 1;
    }
    if (r10.w == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r8.w;
        r13.zw = -sunConstants.splitPinTransform[r10.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r10.w].zz * r13.zw;
        r18.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r18.z = r10.w + r8.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r6.w).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
        r10.w = r13.z + r10.w;
        r10.w = saturate(-1 + r10.w);
        r13.z = r10.w * r10.w;
        r7.w = r13.z * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r18.x = -r13.x;
        r10.w = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r13.zw = -sunConstants.splitPinTransform[r10.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r10.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.yz = -sunConstants.splitPinTransform[r8.w].xy + r15.yz;
        r15.yz = sunConstants.splitPinTransform[r8.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r18.y = r14.x;
        r18.z = r13.x;
        r14.w = 0;
        r15.w = 0;
        while (true) {
          r16.y = cmp((uint)r15.w >= 8);
          if (r16.y != 0) break;
          r16.y = cmp((uint)r9.w < (uint)r15.w);
          r16.zw = r16.yy ? r15.yz : r13.zw;
          r18.w = r16.y ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r10.w].w;
          r16.y = r16.y ? r8.w : r10.w;
          r19.x = dot(icb[r15.w+0].yx, r18.xy);
          r19.y = dot(icb[r15.w+0].yx, r18.yz);
          r19.xy = r19.xy * r18.ww + r16.zw;
          r16.y = (int)r16.y + (int16)sunConstants.splitArrayOffset;
          r19.z = (uint)r16.y;
          r16.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r6.w).x;
          r16.z = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
          r16.y = r16.y + r16.z;
          r16.y = saturate(-1 + r16.y);
          r14.w = r16.y * 0.125 + r14.w;
          r15.w = (int)r15.w + 1;
        }
        r6.w = r14.w * r14.w;
        r7.w = r6.w * r14.w;
      }
    }
  }
  r6.w = 1 + -r2.y;
  r8.w = 5 * r6.w;
  r9.w = r6.w * 5 + -2.5;
  r9.w = 0.400000006 * r9.w;
  r9.w = max(0, r9.w);
  r9.w = 100 * r9.w;
  r13.zw = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r10.w = exp2(r13.z);
  r10.w = r10.w * r2.x;
  r10.w = 9.1368103 * r10.w;
  r13.z = r8.w * r6.w;
  r13.z = -r13.z * 2.0159049 + r13.w;
  r13.z = exp2(r13.z);
  r13.z = r13.z * r2.x;
  r13.z = 9.70808983 * r13.z;
  r10.w = max(r13.z, r10.w);
  r10.w = max(1.26815999, r10.w);
  r13.z = numRefProbes + -numOverrideProbes;
  r15.yz = (uint2)r0.yx >> int2(24,24);
  r0.y = cmp((uint)r15.y >= (uint)r13.z);
  r13.w = cmp((uint)r15.y < numRefProbes);
  r0.y = r0.y ? r13.w : 0;
  if (r0.y != 0) {
    r0.y = (int)r15.y * 14;
    if (r2.w != 0) {
      r18.yzw = refProbeConstantsCB[r0.y].data[0].xyz + eyeOffset.xyz;
      r18.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r16.yzw = -refProbeConstantsCB[r0.y].data[0].xyz + r11.xyz;
    r13.w = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
    if (6 == 0) r14.w = 0; else if (6+25 < 32) {     r14.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);    } else r14.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
    r15.w = (int)r13.w * 6;
    r18.x = dot(refProbeAttenuationConstantsCB[r15.w].data[0].xyz, r16.yzw);
    r18.x = saturate(refProbeAttenuationConstantsCB[r15.w].data[0].w + r18.x);
    r18.y = dot(refProbeAttenuationConstantsCB[r15.w].data[1].xyz, r16.yzw);
    r18.y = saturate(refProbeAttenuationConstantsCB[r15.w].data[1].w + r18.y);
    r18.x = r18.x * r18.y;
    r18.y = dot(refProbeAttenuationConstantsCB[r15.w].data[2].xyz, r16.yzw);
    r18.y = saturate(refProbeAttenuationConstantsCB[r15.w].data[2].w + r18.y);
    r18.x = r18.x * r18.y;
    r18.y = dot(refProbeAttenuationConstantsCB[r15.w].data[3].xyz, r16.yzw);
    r18.y = saturate(refProbeAttenuationConstantsCB[r15.w].data[3].w + r18.y);
    r18.x = r18.x * r18.y;
    r18.y = dot(refProbeAttenuationConstantsCB[r15.w].data[4].xyz, r16.yzw);
    r18.y = saturate(refProbeAttenuationConstantsCB[r15.w].data[4].w + r18.y);
    r18.x = r18.x * r18.y;
    r18.y = dot(refProbeAttenuationConstantsCB[r15.w].data[5].xyz, r16.yzw);
    r15.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[5].w + r18.y);
    r18.x = r18.x * r15.w;
    r15.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
    r18.yz = float2(0,1);
    r18.xy = r15.ww ? r18.xy : r18.zx;
    r19.x = 1;
    r15.w = refProbeConstantsCB[r0.y].data[6].x;
    r20.xy = r18.xy;
    r18.z = 1;
    while (true) {
      r18.w = cmp((int)r18.z >= (int)r14.w);
      if (r18.w != 0) break;
      r18.w = (int)r13.w + (int)r18.z;
      r18.w = (int)r18.w * 6;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r16.yzw);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.z);
      r19.z = r20.x * r19.z;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r16.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r19.w);
      r19.z = r19.z * r19.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r16.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r19.w);
      r19.z = r19.z * r19.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r16.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r19.w);
      r19.z = r19.z * r19.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r16.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r19.w);
      r19.z = r19.z * r19.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r16.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r19.w);
      r20.x = r19.z * r18.w;
      r19.w = (uint)r15.w >> 2;
      if (1 == 0) r20.z = 0; else if (1+2 < 32) {       r20.z = (uint)r15.w << (32-(1 + 2)); r20.z = (uint)r20.z >> (32-1);      } else r20.z = (uint)r15.w >> 2;
      r20.w = (int)r19.w & 2;
      r21.x = max(r20.y, r20.x);
      r18.w = -r19.z * r18.w + 1;
      r18.w = r20.y * r18.w;
      r19.y = r20.w ? r18.w : r21.x;
      r20.xy = r20.zz ? r20.xy : r19.xy;
      r18.z = (int)r18.z + 1;
      r15.w = r19.w;
    }
    r20.y = saturate(r20.y);
    r13.w = refProbeConstantsCB[r0.y].data[6].y * r20.y;
    r14.w = cmp(0 < r13.w);
    if (r14.w != 0) {
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.w, cb2[52].x, l(880), u2.xxxx
      r14.w = samp0[]..swiz;
        r14.w = (int)r14.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r14.w = refProbeConstantsCB[r0.y].data[7].y * r13.w;
      r18.x = refProbeConstantsCB[r0.y].data[7].w;
      r18.yz = refProbeConstantsCB[r0.y].data[8].xy;
      r15.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r16.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[8].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r9.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r15.w = max(1.00000001e-07, -r15.w);
      r15.w = r18.x / r15.w;
      r15.w = min(131072, abs(r15.w));
      r18.x = refProbeConstantsCB[r0.y].data[8].w;
      r18.yz = refProbeConstantsCB[r0.y].data[9].xy;
      r18.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r16.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[9].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r9.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r18.y = max(1.00000001e-07, -r18.w);
      r18.x = r18.x / r18.y;
      r15.w = min(abs(r18.x), r15.w);
      r18.x = refProbeConstantsCB[r0.y].data[9].w;
      r18.yz = refProbeConstantsCB[r0.y].data[10].xy;
      r18.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r16.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[10].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r9.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r18.y = max(1.00000001e-07, -r18.w);
      r18.x = r18.x / r18.y;
      r15.w = min(abs(r18.x), r15.w);
      r18.x = refProbeConstantsCB[r0.y].data[10].w;
      r18.yz = refProbeConstantsCB[r0.y].data[11].xy;
      r18.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r16.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[11].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r9.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r18.y = max(1.00000001e-07, -r18.w);
      r18.x = r18.x / r18.y;
      r15.w = min(abs(r18.x), r15.w);
      r18.x = refProbeConstantsCB[r0.y].data[11].w;
      r18.yz = refProbeConstantsCB[r0.y].data[12].xy;
      r18.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r16.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[12].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r9.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r18.y = max(1.00000001e-07, -r18.w);
      r18.x = r18.x / r18.y;
      r15.w = min(abs(r18.x), r15.w);
      r18.x = refProbeConstantsCB[r0.y].data[12].w;
      r18.yz = refProbeConstantsCB[r0.y].data[13].xy;
      r18.w = dot(r17.xyz, r18.xyz);
      r18.x = dot(r16.yzw, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[13].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r9.w);
      r18.x = r18.y ? r18.x : -r18.x;
      r18.y = max(1.00000001e-07, -r18.w);
      r18.x = r18.x / r18.y;
      r15.w = min(abs(r18.x), r15.w);
      r18.x = refProbeConstantsCB[r0.y].data[3].w + r16.y;
      r18.yz = refProbeConstantsCB[r0.y].data[4].xy + r16.zw;
      r18.xyz = r17.xyz * r15.www + r18.xyz;
      r18.w = dot(r18.xyz, r18.xyz);
      r18.w = sqrt(r18.w);
      r15.w = r15.w / r18.w;
      r15.w = r15.w + r15.w;
      r15.w = sqrt(r15.w);
      r15.w = r6.w * 5 + r15.w;
      r15.w = -0.844799995 + r15.w;
      r19.x = refProbeConstantsCB[r0.y].data[0].w;
      r19.y = refProbeConstantsCB[r0.y].data[1].z;
      r19.z = refProbeConstantsCB[r0.y].data[2].y;
      r20.x = dot(r18.xyz, r19.xyz);
      r21.xy = refProbeConstantsCB[r0.y].data[1].xw;
      r21.z = refProbeConstantsCB[r0.y].data[2].z;
      r20.y = dot(r18.xyz, r21.xyz);
      r22.x = refProbeConstantsCB[r0.y].data[1].y;
      r22.yz = refProbeConstantsCB[r0.y].data[2].xw;
      r20.z = dot(r18.xyz, r22.xyz);
      if (9 == 0) r18.x = 0; else if (9+16 < 32) {       r18.x = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r18.x = (uint)r18.x >> (32-9);      } else r18.x = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
      r20.w = (uint)r18.x;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, r15.w).xyz;
      r23.xyz = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
      r23.xyz = cmp((int3)r23.xyz == int3(2139095040,2139095040,2139095040));
      r15.w = (int)r23.y | (int)r23.x;
      r15.w = (int)r23.z | (int)r15.w;
      r18.xyz = r15.www ? float3(1,1,0) : r18.xyz;
      r23.x = dot(r16.yzw, r19.xyz);
      r23.y = dot(r16.yzw, r21.xyz);
      r23.z = dot(r16.yzw, r22.xyz);
      r16.yzw = saturate(r23.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
      r23.xy = refProbeConstantsCB[r0.y].data[4].zw * r16.yz;
      r23.z = refProbeConstantsCB[r0.y].data[5].x * r16.w;
      r16.yzw = refProbeConstantsCB[r0.y].data[5].yzw + r23.xyz;
      r20.x = dot(r12.xyz, r19.xyz);
      r20.y = dot(r12.xyz, r21.xyz);
      r20.z = dot(r12.xyz, r22.xyz);
      r19.xyz = cmp(float3(0,0,0) < r20.xyz);
      r21.z = r19.x ? 0 : 0.5;
      r21.xy = float2(0,0);
      r21.xyz = r21.xyz + r16.yzw;
      r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
      r22.xyz = r20.xyz * r20.xyz;
      r22.xyz = r22.xyz * r14.www;
      r23.z = r19.y ? 0 : 0.5;
      r23.xy = float2(0,0);
      r19.xyw = r23.xyz + r16.yzw;
      r19.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyw, 0).xyz;
      r19.xyw = r19.xyw * r22.yyy;
      r19.xyw = r21.xyz * r22.xxx + r19.xyw;
      r21.z = r19.z ? 0 : 0.5;
      r21.xy = float2(0,0);
      r16.yzw = r21.xyz + r16.yzw;
      r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
      r16.yzw = r16.yzw * r22.zzz + r19.xyw;
      r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, 6).xyz;
      r20.xyz = (int3)r19.xyz & int3(-2147483648,-2147483648,-2147483648);
      r20.xyz = cmp((int3)r20.xyz == int3(2139095040,2139095040,2139095040));
      r0.y = (int)r20.y | (int)r20.x;
      r0.y = (int)r20.z | (int)r0.y;
      r19.xyz = r0.yyy ? float3(1,1,0) : r19.xyz;
      r16.yzw = r19.xyz * r16.yzw;
      r0.y = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r15.w = r10.w * r0.y;
      r18.xyz = r18.xyz * r14.www;
      r14.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.y = r10.w * r0.y + r14.w;
      r0.y = r15.w / r0.y;
      r18.xyz = r18.xyz * r0.yyy;
      r0.y = 257;
    } else {
      r16.yzw = float3(0,0,0);
      r18.xyz = float3(0,0,0);
      r13.w = 0;
      r0.y = 1;
    }
  } else {
    r16.yzw = float3(0,0,0);
    r18.xyz = float3(0,0,0);
    r13.w = 0;
    r0.y = 0;
  }
  r13.z = cmp((uint)r15.y < (uint)r13.z);
  if (r13.z != 0) {
    r13.z = (int)r15.y * 14;
    if (r2.w != 0) {
      r14.w = (int)r0.y & 1;
      r14.w = mad((int)r14.w, 20, 880);
      r19.yzw = refProbeConstantsCB[r13.z].data[0].xyz + eyeOffset.xyz;
      r19.x = 16;
      GBufferDiffuseColor[viewID].r14.w = u2.xyzw;
    }
    r14.w = (int)r0.y + 1;
    r19.xyz = -refProbeConstantsCB[r13.z].data[0].xyz + r11.xyz;
    r15.y = 0x0000ffff & (int)refProbeConstantsCB[r13.z].data[7].z;
    if (6 == 0) r15.w = 0; else if (6+25 < 32) {     r15.w = (uint)refProbeConstantsCB[r13.z].data[7].z << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);    } else r15.w = (uint)refProbeConstantsCB[r13.z].data[7].z >> 25;
    r18.w = (int)r15.y * 6;
    r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r19.xyz);
    r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
    r20.x = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r19.xyz);
    r20.x = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r20.x);
    r19.w = r20.x * r19.w;
    r20.x = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r19.xyz);
    r20.x = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r20.x);
    r19.w = r20.x * r19.w;
    r20.x = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r19.xyz);
    r20.x = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r20.x);
    r19.w = r20.x * r19.w;
    r20.x = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r19.xyz);
    r20.x = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r20.x);
    r19.w = r20.x * r19.w;
    r20.x = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r19.xyz);
    r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r20.x);
    r20.x = r19.w * r18.w;
    r18.w = 1 & (int)refProbeConstantsCB[r13.z].data[6].x;
    r20.yz = float2(0,1);
    r20.xy = r18.ww ? r20.xy : r20.zx;
    r21.x = 1;
    r18.w = refProbeConstantsCB[r13.z].data[6].x;
    r22.xy = r20.xy;
    r19.w = 1;
    while (true) {
      r20.z = cmp((int)r19.w >= (int)r15.w);
      if (r20.z != 0) break;
      r20.z = (int)r15.y + (int)r19.w;
      r20.z = (int)r20.z * 6;
      r20.w = dot(refProbeAttenuationConstantsCB[r20.z].data[0].xyz, r19.xyz);
      r20.w = saturate(refProbeAttenuationConstantsCB[r20.z].data[0].w + r20.w);
      r20.w = r22.x * r20.w;
      r21.z = dot(refProbeAttenuationConstantsCB[r20.z].data[1].xyz, r19.xyz);
      r21.z = saturate(refProbeAttenuationConstantsCB[r20.z].data[1].w + r21.z);
      r20.w = r21.z * r20.w;
      r21.z = dot(refProbeAttenuationConstantsCB[r20.z].data[2].xyz, r19.xyz);
      r21.z = saturate(refProbeAttenuationConstantsCB[r20.z].data[2].w + r21.z);
      r20.w = r21.z * r20.w;
      r21.z = dot(refProbeAttenuationConstantsCB[r20.z].data[3].xyz, r19.xyz);
      r21.z = saturate(refProbeAttenuationConstantsCB[r20.z].data[3].w + r21.z);
      r20.w = r21.z * r20.w;
      r21.z = dot(refProbeAttenuationConstantsCB[r20.z].data[4].xyz, r19.xyz);
      r21.z = saturate(refProbeAttenuationConstantsCB[r20.z].data[4].w + r21.z);
      r20.w = r21.z * r20.w;
      r21.z = dot(refProbeAttenuationConstantsCB[r20.z].data[5].xyz, r19.xyz);
      r20.z = saturate(refProbeAttenuationConstantsCB[r20.z].data[5].w + r21.z);
      r22.x = r20.w * r20.z;
      r21.z = (uint)r18.w >> 2;
      if (1 == 0) r21.w = 0; else if (1+2 < 32) {       r21.w = (uint)r18.w << (32-(1 + 2)); r21.w = (uint)r21.w >> (32-1);      } else r21.w = (uint)r18.w >> 2;
      r22.z = (int)r21.z & 2;
      r22.w = max(r22.y, r22.x);
      r20.z = -r20.w * r20.z + 1;
      r20.z = r22.y * r20.z;
      r21.y = r22.z ? r20.z : r22.w;
      r22.xy = r21.ww ? r22.xy : r21.xy;
      r19.w = (int)r19.w + 1;
      r18.w = r21.z;
    }
    r15.y = saturate(r22.y + -r13.w);
    r15.w = refProbeConstantsCB[r13.z].data[6].y * r15.y;
    r18.w = cmp(0 < r15.w);
    if (r18.w != 0) {
      r18.w = (int)r14.w & 3;
      r19.w = (int)r18.w + -1;
      r19.w = cmp((uint)r19.w < 32);
      r19.w = r19.w ? r2.w : 0;
      if (r19.w != 0) {
        r20.xy = mad((int2)r18.ww, int2(20,20), int2(860,876));
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.w, cb2[52].x, r20.x, u2.xxxx
      r18.w = samp0[]..swiz;
        r18.w = (int)r18.w | 32;
        GBufferDiffuseColor[viewID].r20.x = u2.x;
        GBufferDiffuseColor[viewID].r20.y = u2.x;
      }
      r14.w = (int)r0.y + 257;
      r15.y = r15.y * refProbeConstantsCB[r13.z].data[6].y + r13.w;
      r15.w = refProbeConstantsCB[r13.z].data[7].y * r15.w;
      r20.x = refProbeConstantsCB[r13.z].data[7].w;
      r20.yz = refProbeConstantsCB[r13.z].data[8].xy;
      r18.w = dot(r17.xyz, r20.xyz);
      r19.w = dot(r19.xyz, r20.xyz);
      r19.w = -refProbeConstantsCB[r13.z].data[8].z + r19.w;
      r20.x = cmp(r19.w >= 0);
      r19.w = max(abs(r19.w), r9.w);
      r19.w = r20.x ? r19.w : -r19.w;
      r18.w = max(1.00000001e-07, -r18.w);
      r18.w = r19.w / r18.w;
      r18.w = min(131072, abs(r18.w));
      r20.x = refProbeConstantsCB[r13.z].data[8].w;
      r20.yz = refProbeConstantsCB[r13.z].data[9].xy;
      r19.w = dot(r17.xyz, r20.xyz);
      r20.x = dot(r19.xyz, r20.xyz);
      r20.x = -refProbeConstantsCB[r13.z].data[9].z + r20.x;
      r20.y = cmp(r20.x >= 0);
      r20.x = max(abs(r20.x), r9.w);
      r20.x = r20.y ? r20.x : -r20.x;
      r19.w = max(1.00000001e-07, -r19.w);
      r19.w = r20.x / r19.w;
      r18.w = min(abs(r19.w), r18.w);
      r20.x = refProbeConstantsCB[r13.z].data[9].w;
      r20.yz = refProbeConstantsCB[r13.z].data[10].xy;
      r19.w = dot(r17.xyz, r20.xyz);
      r20.x = dot(r19.xyz, r20.xyz);
      r20.x = -refProbeConstantsCB[r13.z].data[10].z + r20.x;
      r20.y = cmp(r20.x >= 0);
      r20.x = max(abs(r20.x), r9.w);
      r20.x = r20.y ? r20.x : -r20.x;
      r19.w = max(1.00000001e-07, -r19.w);
      r19.w = r20.x / r19.w;
      r18.w = min(abs(r19.w), r18.w);
      r20.x = refProbeConstantsCB[r13.z].data[10].w;
      r20.yz = refProbeConstantsCB[r13.z].data[11].xy;
      r19.w = dot(r17.xyz, r20.xyz);
      r20.x = dot(r19.xyz, r20.xyz);
      r20.x = -refProbeConstantsCB[r13.z].data[11].z + r20.x;
      r20.y = cmp(r20.x >= 0);
      r20.x = max(abs(r20.x), r9.w);
      r20.x = r20.y ? r20.x : -r20.x;
      r19.w = max(1.00000001e-07, -r19.w);
      r19.w = r20.x / r19.w;
      r18.w = min(abs(r19.w), r18.w);
      r20.x = refProbeConstantsCB[r13.z].data[11].w;
      r20.yz = refProbeConstantsCB[r13.z].data[12].xy;
      r19.w = dot(r17.xyz, r20.xyz);
      r20.x = dot(r19.xyz, r20.xyz);
      r20.x = -refProbeConstantsCB[r13.z].data[12].z + r20.x;
      r20.y = cmp(r20.x >= 0);
      r20.x = max(abs(r20.x), r9.w);
      r20.x = r20.y ? r20.x : -r20.x;
      r19.w = max(1.00000001e-07, -r19.w);
      r19.w = r20.x / r19.w;
      r18.w = min(abs(r19.w), r18.w);
      r20.x = refProbeConstantsCB[r13.z].data[12].w;
      r20.yz = refProbeConstantsCB[r13.z].data[13].xy;
      r19.w = dot(r17.xyz, r20.xyz);
      r20.x = dot(r19.xyz, r20.xyz);
      r20.x = -refProbeConstantsCB[r13.z].data[13].z + r20.x;
      r20.y = cmp(r20.x >= 0);
      r9.w = max(abs(r20.x), r9.w);
      r9.w = r20.y ? r9.w : -r9.w;
      r19.w = max(1.00000001e-07, -r19.w);
      r9.w = r9.w / r19.w;
      r9.w = min(r18.w, abs(r9.w));
      r20.x = refProbeConstantsCB[r13.z].data[3].w + r19.x;
      r20.yz = refProbeConstantsCB[r13.z].data[4].xy + r19.yz;
      r20.xyz = r17.xyz * r9.www + r20.xyz;
      r18.w = dot(r20.xyz, r20.xyz);
      r18.w = sqrt(r18.w);
      r9.w = r9.w / r18.w;
      r9.w = r9.w + r9.w;
      r9.w = sqrt(r9.w);
      r6.w = r6.w * 5 + r9.w;
      r6.w = -0.844799995 + r6.w;
      r21.x = refProbeConstantsCB[r13.z].data[0].w;
      r21.y = refProbeConstantsCB[r13.z].data[1].z;
      r21.z = refProbeConstantsCB[r13.z].data[2].y;
      r22.x = dot(r20.xyz, r21.xyz);
      r23.xy = refProbeConstantsCB[r13.z].data[1].xw;
      r23.z = refProbeConstantsCB[r13.z].data[2].z;
      r22.y = dot(r20.xyz, r23.xyz);
      r24.x = refProbeConstantsCB[r13.z].data[1].y;
      r24.yz = refProbeConstantsCB[r13.z].data[2].xw;
      r22.z = dot(r20.xyz, r24.xyz);
      if (9 == 0) r9.w = 0; else if (9+16 < 32) {       r9.w = (uint)refProbeConstantsCB[r13.z].data[7].z << (32-(9 + 16)); r9.w = (uint)r9.w >> (32-9);      } else r9.w = (uint)refProbeConstantsCB[r13.z].data[7].z >> 16;
      r22.w = (uint)r9.w;
      r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r22.xyzw, r6.w).xyz;
      r25.xyz = (int3)r20.xyz & int3(-2147483648,-2147483648,-2147483648);
      r25.xyz = cmp((int3)r25.xyz == int3(2139095040,2139095040,2139095040));
      r6.w = (int)r25.y | (int)r25.x;
      r6.w = (int)r25.z | (int)r6.w;
      r20.xyz = r6.www ? float3(1,1,0) : r20.xyz;
      r25.x = dot(r19.xyz, r21.xyz);
      r25.y = dot(r19.xyz, r23.xyz);
      r25.z = dot(r19.xyz, r24.xyz);
      r19.xyz = saturate(r25.xyz * refProbeConstantsCB[r13.z].data[3].xyz + float3(0.5,0.5,0.5));
      r25.xy = refProbeConstantsCB[r13.z].data[4].zw * r19.xy;
      r25.z = refProbeConstantsCB[r13.z].data[5].x * r19.z;
      r19.xyz = refProbeConstantsCB[r13.z].data[5].yzw + r25.xyz;
      r22.x = dot(r12.xyz, r21.xyz);
      r22.y = dot(r12.xyz, r23.xyz);
      r22.z = dot(r12.xyz, r24.xyz);
      r21.xyz = cmp(float3(0,0,0) < r22.xyz);
      r23.z = r21.x ? 0 : 0.5;
      r23.xy = float2(0,0);
      r23.xyz = r23.xyz + r19.xyz;
      r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
      r24.xyz = r22.xyz * r22.xyz;
      r24.xyz = r24.xyz * r15.www;
      r25.z = r21.y ? 0 : 0.5;
      r25.xy = float2(0,0);
      r21.xyw = r25.xyz + r19.xyz;
      r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
      r21.xyw = r21.xyw * r24.yyy;
      r21.xyw = r23.xyz * r24.xxx + r21.xyw;
      r23.z = r21.z ? 0 : 0.5;
      r23.xy = float2(0,0);
      r19.xyz = r23.xyz + r19.xyz;
      r19.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r19.xyz = r19.xyz * r24.zzz + r21.xyw;
      r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r22.xyzw, 6).xyz;
      r22.xyz = (int3)r21.xyz & int3(-2147483648,-2147483648,-2147483648);
      r22.xyz = cmp((int3)r22.xyz == int3(2139095040,2139095040,2139095040));
      r6.w = (int)r22.y | (int)r22.x;
      r6.w = (int)r22.z | (int)r6.w;
      r21.xyz = r6.www ? float3(1,1,0) : r21.xyz;
      r22.xyz = r21.xyz * r19.xyz;
      r6.w = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r16.yzw = r19.xyz * r21.xyz + r16.yzw;
      r9.w = r10.w * r6.w;
      r19.xyz = r20.xyz * r15.www;
      r13.z = dot(r19.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r6.w = r10.w * r6.w + r13.z;
      r6.w = r9.w / r6.w;
      r18.xyz = r19.xyz * r6.www + r18.xyz;
    } else {
      r15.y = r13.w;
    }
  } else {
    r15.y = r13.w;
    r14.w = r0.y;
  }
  r6.w = cmp(r13.w >= 1);
  bitmask.y = ((~(-1 << 8)) << 0) & 0xffffffff;  r0.y = (((uint)r14.w << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r0.y = r6.w ? r0.y : r14.w;
  r6.w = max(1, r15.y);
  r6.w = rcp(r6.w);
  r15.y = saturate(r15.y);
  r19.xyz = r16.yzw * r6.www;
  r18.xyz = r18.xyz * r6.www;
  r9.w = cmp(r15.y < 0.99000001);
  if (r9.w != 0) {
    r0.y = (int)r0.y + 256;
    r9.w = 1 + -r15.y;
    r10.w = sunConstants.globalProbeExposure * r9.w;
    r20.xyz = -globalProbeConstants.data[0].xyz + r11.xyz;
    r21.x = globalProbeConstants.data[0].w * r20.x;
    r21.yz = globalProbeConstants.data[1].xy * r20.yz;
    r20.xyz = saturate(float3(0.5,0.5,0.5) + r21.xyz);
    r21.xy = globalProbeConstants.data[1].zw * r20.xy;
    r21.z = globalProbeConstants.data[2].x * r20.z;
    r20.xyz = globalProbeConstants.data[2].yzw + r21.xyz;
    r21.xyz = cmp(float3(0,0,0) < r12.xyz);
    r21.xyz = r21.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r21.w = 0;
    r22.xyz = r21.wwx + r20.xyz;
    r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r23.xyz = r12.xyz * r12.xyz;
    r23.xyz = r23.xyz * r10.www;
    r24.xyz = r21.wwy + r20.xyz;
    r24.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r24.xyz = r24.xyz * r23.yyy;
    r22.xyz = r22.xyz * r23.xxx + r24.xyz;
    r20.xyz = r21.wwz + r20.xyz;
    r20.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r20.xyz = r20.xyz * r23.zzz + r22.xyz;
    r12.w = 0;
    r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r20.xyz = r21.xyz * r20.xyz;
    r10.w = dot(r20.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r19.xyz = r16.yzw * r6.www + r20.xyz;
    r17.w = 0;
    r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r8.w).xyz;
    r6.w = sunConstants.globalProbeExposure * r9.w + -r10.w;
    r6.w = r2.y * r6.w + r10.w;
    r18.xyz = r16.yzw * r6.www + r18.xyz;
  }
  r6.w = r2.x + r5.z;
  r6.w = log2(abs(r6.w));
  r6.w = r6.w * r2.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w + r5.z;
  r6.w = saturate(-1 + r6.w);
  r20.xyz = r19.xyz * r5.zzz;
  r21.xyz = r4.zzz ? r20.yzx : 0;
  r13.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.zw, 0).xy;
  r16.yzw = r18.xyz * r6.www;
  r18.xyz = r16.yzw * r13.zzz;
  r22.xyz = r16.yzw * r13.www;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r6.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r8.w = r2.x * r2.y + r6.w;
  r2.y = r8.w * r2.y;
  r6.w = r8.w * r6.w;
  if (r2.w != 0) {
    r23.x = 3;
    r23.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r8.w = cmp(0 < r3.w);
  if (r8.w != 0) {
    if (r2.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, l(112), u2.xxxx
    r8.w = samp0[]..swiz;
      r8.w = (int)r8.w | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r8.w = cmp(0 < r7.w);
    if (r8.w != 0) {
      r8.w = sunConstants.specScale * r1.w;
      r8.w = r8.w * r3.z;
      if (sunConstants.sunCookieIndex != 0) {
        r23.xyz = eyeOffset.xyz + r11.xyz;
        r23.w = 1;
        r9.w = dot(sunConstants.sunCookieTransform[0].xyzw, r23.xyzw);
        r10.w = dot(sunConstants.sunCookieTransform[1].xyzw, r23.xyzw);
        r23.x = frac(r9.w);
        r23.y = frac(r10.w);
        r9.w = -1 + (int14)sunConstants.sunCookieIndex;
        r23.z = (uint)r9.w;
        r16.yzw = gCookieArray.SampleLevel(samplerLinear_s, r23.xyz, 0).xyz;
        r16.yzw = float3(-1,-1,-1) + r16.yzw;
        r16.yzw = sunConstants.sunCookieIntensity * r16.yzw + float3(1,1,1);
        r16.yzw = sunConstants.color.xyz * r16.yzw;
      } else {
        r16.yzw = sunConstants.color.xyz;
      }
      r9.w = viewmodelSunShadowRaw >> 16;
      r10.w = cmp(0 < (uint)r9.w);
      r10.w = r3.x ? r10.w : 0;
      if (r10.w != 0) {
        r9.w = (int)r9.w + numLights;
        r9.w = mad((int)r9.w, 15, -15);
        r10.w = abs(r3.y) * -0.200000003 + 0.400000006;
        r12.w = cmp(r3.y < 0);
        r12.w = r4.z ? r12.w : 0;
        r10.w = r12.w ? -r10.w : r10.w;
        r23.xyz = r12.xyz * r10.www + r11.xyz;
        r24.xyz = lightConstantsCB[r9.w].data[4].yzw;
        r24.w = lightConstantsCB[r9.w].data[5].x;
        r23.w = 1;
        r24.x = dot(r24.xyzw, r23.xyzw);
        r25.xyz = lightConstantsCB[r9.w].data[5].yzw;
        r25.w = lightConstantsCB[r9.w].data[6].x;
        r24.y = dot(r25.xyzw, r23.xyzw);
        r13.zw = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r24.x = lightConstantsCB[r9.w].data[9].w + r13.z;
        r24.y = lightConstantsCB[r9.w].data[10].x + r13.w;
        r13.zw = lightConstantsCB[r9.w].data[9].yz * r24.xy;
        r15.yw = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
        r24.xy = float2(1,1) + -r15.yw;
        r24.xy = cmp(r13.zw >= r24.xy);
        r15.yw = cmp(r15.yw >= r13.zw);
        r15.yw = (int2)r15.yw | (int2)r24.xy;
        r10.w = (int)r15.w | (int)r15.y;
        if (r10.w == 0) {
          r24.xyz = lightConstantsCB[r9.w].data[6].yzw;
          r24.w = lightConstantsCB[r9.w].data[7].x;
          r10.w = dot(r24.xyzw, r23.xyzw);
          r13.zw = saturate(r13.zw);
          r23.x = r13.z * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
          r23.y = r13.w * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
          r10.w = lightConstantsCB[r9.w].data[10].y + r10.w;
          r10.w = r10.w / lightConstantsCB[r9.w].data[10].z;
          r10.w = max(6.10351563e-05, r10.w);
          r12.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r24.x = -r13.x;
            r25.z = (uint)r12.w;
            r24.y = r14.x;
            r24.z = r13.x;
            r13.zw = float2(0,0);
            while (true) {
              r14.w = cmp((int)r13.w >= 8);
              if (r14.w != 0) break;
              r26.x = dot(icb[r13.w+0].yx, r24.xy);
              r26.y = dot(icb[r13.w+0].yx, r24.yz);
              r25.xy = r26.xy * lightConstantsCB[r9.w].data[3].yy + r23.xy;
              r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r10.w).x;
              r13.z = r14.w * 0.125 + r13.z;
              r13.w = (int)r13.w + 1;
            }
          } else {
            r23.z = (uint)r12.w;
            r13.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r10.w).x;
          }
          r9.w = r13.z * r13.z;
          r9.w = r9.w * r13.z;
        } else {
          r9.w = 1;
        }
        r7.w = r9.w * r7.w;
      } else {
        r9.w = viewmodelSunShadowRaw & 0x0000ffff;
        r10.w = cmp(0 < (uint)r9.w);
        r12.w = ~(int)r3.x;
        r10.w = r10.w ? r12.w : 0;
        if (r10.w != 0) {
          r9.w = (int)r9.w + numLights;
          r9.w = mad((int)r9.w, 15, -15);
          r10.w = abs(r3.y) * -0.200000003 + 0.400000006;
          r12.w = cmp(r3.y < 0);
          r12.w = r4.z ? r12.w : 0;
          r10.w = r12.w ? -r10.w : r10.w;
          r23.xyz = r12.xyz * r10.www + r11.xyz;
          r24.xyz = lightConstantsCB[r9.w].data[4].yzw;
          r24.w = lightConstantsCB[r9.w].data[5].x;
          r23.w = 1;
          r24.x = dot(r24.xyzw, r23.xyzw);
          r25.xyz = lightConstantsCB[r9.w].data[5].yzw;
          r25.w = lightConstantsCB[r9.w].data[6].x;
          r24.y = dot(r25.xyzw, r23.xyzw);
          r13.zw = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r24.x = lightConstantsCB[r9.w].data[9].w + r13.z;
          r24.y = lightConstantsCB[r9.w].data[10].x + r13.w;
          r13.zw = lightConstantsCB[r9.w].data[9].yz * r24.xy;
          r15.yw = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
          r24.xy = float2(1,1) + -r15.yw;
          r24.xy = cmp(r13.zw >= r24.xy);
          r15.yw = cmp(r15.yw >= r13.zw);
          r15.yw = (int2)r15.yw | (int2)r24.xy;
          r10.w = (int)r15.w | (int)r15.y;
          if (r10.w == 0) {
            r24.xyz = lightConstantsCB[r9.w].data[6].yzw;
            r24.w = lightConstantsCB[r9.w].data[7].x;
            r10.w = dot(r24.xyzw, r23.xyzw);
            r13.zw = saturate(r13.zw);
            r23.x = r13.z * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
            r23.y = r13.w * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
            r10.w = lightConstantsCB[r9.w].data[10].y + r10.w;
            r10.w = r10.w / lightConstantsCB[r9.w].data[10].z;
            r10.w = max(6.10351563e-05, r10.w);
            r12.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r24.x = -r13.x;
              r25.z = (uint)r12.w;
              r24.y = r14.x;
              r24.z = r13.x;
              r13.zw = float2(0,0);
              while (true) {
                r14.w = cmp((int)r13.w >= 8);
                if (r14.w != 0) break;
                r26.x = dot(icb[r13.w+0].yx, r24.xy);
                r26.y = dot(icb[r13.w+0].yx, r24.yz);
                r25.xy = r26.xy * lightConstantsCB[r9.w].data[3].yy + r23.xy;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r10.w).x;
                r13.z = r14.w * 0.125 + r13.z;
                r13.w = (int)r13.w + 1;
              }
            } else {
              r23.z = (uint)r12.w;
              r13.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r10.w).x;
            }
            r9.w = r13.z * r13.z;
            r9.w = r9.w * r13.z;
          } else {
            r9.w = 1;
          }
          r7.w = r9.w * r7.w;
        }
      }
      r9.w = -r2.x * 0.5 + 1;
      r9.w = -r3.w * r9.w + 1;
      r9.w = r9.w * r9.w;
      r9.w = -r9.w * 0.620000005 + 0.620000005;
      r9.w = r9.w + -r3.w;
      r3.w = r2.z * r9.w + r3.w;
      r3.w = r3.w * r7.w;
      r23.xyz = r3.www * r16.yzw;
      r3.y = cmp(0 < r3.y);
      r19.xyz = r19.xyz * r5.zzz + r23.xyz;
      r23.xyz = -r11.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r1.z = dot(r23.xyz, r23.xyz);
      r1.z = rsqrt(r1.z);
      r23.xyz = r23.xyz * r1.zzz;
      r1.z = dot(r23.xyz, r5.xyw);
      r5.z = dot(r12.xyz, r23.xyz);
      r9.w = abs(r5.z) * r1.w + -abs(r5.z);
      r5.z = abs(r5.z) * r9.w + 1;
      r3.z = r3.z * r2.y + r6.w;
      r5.z = r5.z * r5.z;
      r3.z = r5.z * r3.z;
      r3.z = rcp(r3.z);
      r3.z = r3.z * r8.w;
      r3.z = r7.w * r3.z;
      r3.z = 0.25 * r3.z;
      r23.yzw = r3.zzz * r16.yzw + r22.xyz;
      r1.z = saturate(1 + -r1.z);
      r5.z = r1.z * r1.z;
      r5.z = r5.z * r5.z;
      r1.z = r5.z * r1.z;
      r1.z = r3.z * r1.z;
      r24.xyz = r1.zzz * r16.yzw + r18.xyz;
      r16.yzw = r3.www * r16.yzw + r21.zxy;
      r25.xyz = r4.zzz ? r16.zwy : 0;
      r19.w = r21.z;
      r20.w = r25.z;
      r20.xyzw = r3.yyyy ? r19.xyzw : r20.xyzw;
      r21.zw = r24.xy;
      r25.zw = r18.xy;
      r19.xyzw = r3.yyyy ? r21.xyzw : r25.xyzw;
      r23.x = r24.z;
      r22.w = r18.z;
      r22.xyzw = r3.yyyy ? r23.yzwx : r22.xyzw;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r1.z, cb2[52].x, l(112), u2.xxxx
      r1.z = samp0[]..swiz;
        r1.z = (int)r1.z | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r21.z = r20.w;
      r21.xy = r19.xy;
      r18.xy = r19.zw;
      r18.z = r22.w;
      r1.z = 0x00010101;
    } else {
      r1.z = 257;
    }
  } else {
    r1.z = 1;
  }
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r19.x = -r13.x;
  r3.y = ~(int)r3.x;
  r2.x = -r2.x * 0.5 + 1;
  r23.x = 2;
  r24.x = 2;
  r25.w = 1;
  r19.z = r13.x;
  r26.w = 1;
  r27.z = 1;
  r28.w = 1;
  r19.yw = r14.xx;
  r13.y = r19.w;
  r29.w = 1;
  r14.y = r19.x;
  r14.z = r13.x;
  r30.w = 1;
  r31.x = r14.x;
  r31.y = r19.x;
  r31.z = r13.x;
  r32.x = r14.x;
  r32.y = r19.x;
  r32.z = r13.x;
  r33.x = r14.x;
  r33.y = r19.x;
  r33.z = r13.x;
  r16.yzw = r20.xyz;
  r34.xyz = r21.zxy;
  r35.xyz = r18.xyz;
  r36.xyz = r22.xyz;
  r3.z = r1.z;
  r3.w = 0;
  while (true) {
    r5.z = cmp((int)r3.w == 2);
    if (r5.z != 0) break;
    r5.z = r3.w ? r0.x : r15.z;
    r5.z = (int)r5.z * 15;
    if (3 == 0) r7.w = 0; else if (3+24 < 32) {     r7.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(3 + 24)); r7.w = (uint)r7.w >> (32-3);    } else r7.w = (uint)lightConstantsCB[r5.z].data[1].w >> 24;
    switch (r7.w) {
      case 4 :      if (r2.w != 0) {
        r7.w = (int)r3.z & 7;
        r7.w = mad((int)r7.w, 24, 112);
        r23.yzw = lightConstantsCB[r5.z].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r7.w = u2.xyzw;
      }
      r7.w = (int)r3.z + 1;
      r8.w = cmp(0 < lightConstantsCB[r5.z].data[6].y);
      r37.xy = lightConstantsCB[r5.z].data[5].zw;
      r37.z = lightConstantsCB[r5.z].data[6].x;
      r23.yzw = -r37.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r5.z].data[0].xyz;
      r38.xyz = r23.yzw + -r11.xyz;
      r9.w = dot(r37.xyz, r38.xyz);
      r10.w = saturate(-r9.w / lightConstantsCB[r5.z].data[6].y);
      r39.xyz = r10.www * r37.xyz + r23.yzw;
      r39.xyz = r8.www ? r39.xyz : lightConstantsCB[r5.z].data[0].xyz;
      r39.xyz = r39.xyz + -r11.xyz;
      r12.w = dot(r39.xyz, r39.xyz);
      r13.z = rsqrt(r12.w);
      r39.xyz = r39.xyz * r13.zzz;
      r13.z = dot(r12.xyz, r39.xyz);
      r13.w = saturate(r13.z);
      r13.w = r4.z ? abs(r13.z) : r13.w;
      r14.w = cmp(0 < r13.w);
      if (r14.w != 0) {
        r14.w = sqrt(r12.w);
        r15.y = lightConstantsCB[r5.z].data[3].x * lightConstantsCB[r5.z].data[3].x;
        r12.w = r15.y / r12.w;
        r12.w = min(1, r12.w);
        r15.yw = saturate(r14.ww * lightConstantsCB[r5.z].data[2].xz + lightConstantsCB[r5.z].data[2].yw);
        r39.xy = r15.yw * r15.yw;
        r15.yw = r15.yw * float2(-2,-2) + float2(3,3);
        r15.yw = r39.xy * r15.yw;
        r12.w = r15.y * r12.w;
        r12.w = r12.w * r15.w;
        r14.w = cmp(0 < r12.w);
        if (r14.w != 0) {
          if (3 == 0) r14.w = 0; else if (3+27 < 32) {           r14.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)lightConstantsCB[r5.z].data[1].w >> 27;
          r15.y = (int)r7.w & 15;
          r15.w = (int)r15.y + -1;
          r15.w = cmp((uint)r15.w < 32);
          r15.w = r15.w ? r2.w : 0;
          if (r15.w != 0) {
            r15.yw = mad((int2)r15.yy, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, r15.y, u2.xxxx
          r17.w = samp0[]..swiz;
            r17.w = (int)r17.w | 4;
            GBufferDiffuseColor[viewID].r15.y = u2.x;
            GBufferDiffuseColor[viewID].r15.w = u2.x;
          }
          r15.y = (int)r3.z + 257;
          r14.w = cmp((int)r14.w != 1);
          if (r14.w != 0) {
            r14.w = abs(r13.z) * -0.200000003 + 0.400000006;
            r15.w = cmp(r13.z < 0);
            r15.w = r4.z ? r15.w : 0;
            r14.w = r15.w ? -r14.w : r14.w;
            r39.xyz = r12.xyz * r14.www + r11.xyz;
            r39.xyz = -lightConstantsCB[r5.z].data[4].yzw + r39.xyz;
            r14.w = max(abs(r39.y), abs(r39.z));
            r14.w = max(abs(r39.x), r14.w);
            r14.w = lightConstantsCB[r5.z].data[5].x / r14.w;
            r14.w = lightConstantsCB[r5.z].data[5].y + r14.w;
            r15.w = dot(r39.xyz, r39.xyz);
            r15.w = rsqrt(r15.w);
            r14.w = max(6.10351563e-05, r14.w);
            r17.w = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
            r40.w = (uint)r17.w;
            r17.w = 0;
            r18.w = 0;
            while (true) {
              r20.w = cmp((int)r18.w >= 8);
              if (r20.w != 0) break;
              r41.y = dot(icb[r18.w+0].yx, r19.xy);
              r41.z = dot(icb[r18.w+0].yx, r19.yz);
              r41.yz = lightConstantsCB[r5.z].data[3].yy * r41.yz;
              r41.x = r41.y * r16.x;
              r41.w = r41.y * r15.x;
              r40.xyz = r39.xyz * r15.www + r41.xzw;
              r20.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyzw, r14.w).x;
              r17.w = r20.w * 0.125 + r17.w;
              r18.w = (int)r18.w + 1;
            }
          } else {
            r17.w = 1;
          }
          r12.w = r17.w * r12.w;
          r14.w = cmp(0 < r12.w);
          if (r14.w != 0) {
            r14.w = lightConstantsCB[r5.z].data[1].z * r1.w;
            r14.w = 0.25 * r14.w;
            r15.w = dot(r37.xyz, r17.xyz);
            r18.w = dot(r17.xyz, r38.xyz);
            r20.w = -r15.w * r15.w + lightConstantsCB[r5.z].data[6].y;
            r9.w = r15.w * r18.w + -r9.w;
            r9.w = saturate(r9.w / r20.w);
            r15.w = r20.w / lightConstantsCB[r5.z].data[6].y;
            r15.w = 10 * r15.w;
            r15.w = min(1, r15.w);
            r9.w = r9.w + -r10.w;
            r9.w = r15.w * r9.w + r10.w;
            r23.yzw = r9.www * r37.xyz + r23.yzw;
            r23.yzw = r8.www ? r23.yzw : lightConstantsCB[r5.z].data[0].xyz;
            r23.yzw = r23.yzw + -r11.xyz;
            r8.w = dot(r23.yzw, r23.yzw);
            r8.w = rsqrt(r8.w);
            r37.xyz = r23.yzw * r8.www;
            if (4 == 0) r9.w = 0; else if (4+16 < 32) {             r9.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(4 + 16)); r9.w = (uint)r9.w >> (32-4);            } else r9.w = (uint)lightConstantsCB[r5.z].data[1].w >> 16;
            r10.w = cmp(0 < (uint)r9.w);
            r10.w = r3.x ? r10.w : 0;
            if (r10.w != 0) {
              r9.w = (int)r9.w + numLights;
              r9.w = mad((int)r9.w, 15, -15);
              r10.w = abs(r13.z) * -0.200000003 + 0.400000006;
              r15.w = cmp(r13.z < 0);
              r15.w = r4.z ? r15.w : 0;
              r10.w = r15.w ? -r10.w : r10.w;
              r25.xyz = r12.xyz * r10.www + r11.xyz;
              r38.xyz = lightConstantsCB[r9.w].data[6].yzw;
              r38.w = lightConstantsCB[r9.w].data[7].x;
              r10.w = dot(r38.xyzw, r25.xyzw);
              r38.xyz = lightConstantsCB[r9.w].data[7].yzw;
              r38.w = lightConstantsCB[r9.w].data[8].x;
              r15.w = dot(r38.xyzw, r25.xyzw);
              r18.w = cmp(r15.w < r10.w);
              if (r18.w == 0) {
                r38.xyz = lightConstantsCB[r9.w].data[4].yzw;
                r38.w = lightConstantsCB[r9.w].data[5].x;
                r38.x = dot(r38.xyzw, r25.xyzw);
                r39.xyz = lightConstantsCB[r9.w].data[5].yzw;
                r39.w = lightConstantsCB[r9.w].data[6].x;
                r38.y = dot(r39.xyzw, r25.xyzw);
                r25.xy = r38.xy / r15.ww;
                r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r38.x = lightConstantsCB[r9.w].data[9].w + r25.x;
                r38.y = lightConstantsCB[r9.w].data[10].x + r25.y;
                r25.xy = lightConstantsCB[r9.w].data[9].yz * r38.xy;
                r38.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
                r38.zw = float2(1,1) + -r38.xy;
                r38.zw = cmp(r25.xy >= r38.zw);
                r38.xy = cmp(r38.xy >= r25.xy);
                r38.xy = (int2)r38.xy | (int2)r38.zw;
                r20.w = (int)r38.y | (int)r38.x;
                if (r20.w == 0) {
                  r25.xy = saturate(r25.xy);
                  r38.x = r25.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                  r38.y = r25.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                  r21.w = lightConstantsCB[r9.w].data[10].z * r15.w;
                  r10.w = lightConstantsCB[r9.w].data[10].y * r15.w + r10.w;
                  r10.w = r10.w / r21.w;
                }
              } else {
                r20.w = -1;
              }
              r15.w = (int)r18.w | (int)r20.w;
              if (r15.w == 0) {
                r10.w = max(6.10351563e-05, r10.w);
                r15.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r25.z = (uint)r15.w;
                  r18.w = 0;
                  r20.w = 0;
                  while (true) {
                    r21.w = cmp((int)r20.w >= 8);
                    if (r21.w != 0) break;
                    r39.x = dot(icb[r20.w+0].yx, r19.xw);
                    r39.y = dot(icb[r20.w+0].xy, r13.xy);
                    r25.xy = r39.xy * lightConstantsCB[r9.w].data[3].yy + r38.xy;
                    r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r10.w).x;
                    r18.w = r21.w * 0.125 + r18.w;
                    r20.w = (int)r20.w + 1;
                  }
                } else {
                  r38.z = (uint)r15.w;
                  r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r10.w).x;
                }
                r9.w = r18.w * r18.w;
                r9.w = r9.w * r18.w;
              } else {
                r9.w = 1;
              }
              r12.w = r12.w * r9.w;
            } else {
              if (4 == 0) r9.w = 0; else if (4+20 < 32) {               r9.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(4 + 20)); r9.w = (uint)r9.w >> (32-4);              } else r9.w = (uint)lightConstantsCB[r5.z].data[1].w >> 20;
              r10.w = cmp(0 < (uint)r9.w);
              r10.w = r3.y ? r10.w : 0;
              if (r10.w != 0) {
                r9.w = (int)r9.w + numLights;
                r9.w = mad((int)r9.w, 15, -15);
                r10.w = abs(r13.z) * -0.200000003 + 0.400000006;
                r15.w = cmp(r13.z < 0);
                r15.w = r4.z ? r15.w : 0;
                r10.w = r15.w ? -r10.w : r10.w;
                r26.xyz = r12.xyz * r10.www + r11.xyz;
                r38.xyz = lightConstantsCB[r9.w].data[6].yzw;
                r38.w = lightConstantsCB[r9.w].data[7].x;
                r10.w = dot(r38.xyzw, r26.xyzw);
                r38.xyz = lightConstantsCB[r9.w].data[7].yzw;
                r38.w = lightConstantsCB[r9.w].data[8].x;
                r15.w = dot(r38.xyzw, r26.xyzw);
                r20.w = cmp(r15.w < r10.w);
                if (r20.w == 0) {
                  r38.xyz = lightConstantsCB[r9.w].data[4].yzw;
                  r38.w = lightConstantsCB[r9.w].data[5].x;
                  r25.x = dot(r38.xyzw, r26.xyzw);
                  r38.xyz = lightConstantsCB[r9.w].data[5].yzw;
                  r38.w = lightConstantsCB[r9.w].data[6].x;
                  r25.y = dot(r38.xyzw, r26.xyzw);
                  r25.xy = r25.xy / r15.ww;
                  r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r26.x = lightConstantsCB[r9.w].data[9].w + r25.x;
                  r26.y = lightConstantsCB[r9.w].data[10].x + r25.y;
                  r25.xy = lightConstantsCB[r9.w].data[9].yz * r26.xy;
                  r26.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
                  r38.xy = float2(1,1) + -r26.xy;
                  r38.xy = cmp(r25.xy >= r38.xy);
                  r26.xy = cmp(r26.xy >= r25.xy);
                  r26.xy = (int2)r26.xy | (int2)r38.xy;
                  r21.w = (int)r26.y | (int)r26.x;
                  if (r21.w == 0) {
                    r25.xy = saturate(r25.xy);
                    r26.x = r25.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                    r26.y = r25.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                    r22.w = lightConstantsCB[r9.w].data[10].z * r15.w;
                    r10.w = lightConstantsCB[r9.w].data[10].y * r15.w + r10.w;
                    r10.w = r10.w / r22.w;
                  }
                } else {
                  r21.w = -1;
                }
                r15.w = (int)r20.w | (int)r21.w;
                if (r15.w == 0) {
                  r10.w = max(6.10351563e-05, r10.w);
                  r15.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r25.z = (uint)r15.w;
                    r20.w = 0;
                    r21.w = 0;
                    while (true) {
                      r22.w = cmp((int)r21.w >= 8);
                      if (r22.w != 0) break;
                      r38.x = dot(icb[r21.w+0].xy, r14.xy);
                      r38.y = dot(icb[r21.w+0].yx, r14.xz);
                      r25.xy = r38.xy * lightConstantsCB[r9.w].data[3].yy + r26.xy;
                      r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r10.w).x;
                      r20.w = r22.w * 0.125 + r20.w;
                      r21.w = (int)r21.w + 1;
                    }
                  } else {
                    r26.z = (uint)r15.w;
                    r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r10.w).x;
                  }
                  r9.w = r20.w * r20.w;
                  r9.w = r9.w * r20.w;
                } else {
                  r9.w = 1;
                }
                r12.w = r12.w * r9.w;
              }
            }
            r9.w = -r13.w * r2.x + 1;
            r9.w = r9.w * r9.w;
            r9.w = -r9.w * 0.620000005 + 0.620000005;
            r9.w = r9.w + -r13.w;
            r9.w = r2.z * r9.w + r13.w;
            r9.w = r9.w * r12.w;
            r25.x = lightConstantsCB[r5.z].data[0].w;
            r25.yz = lightConstantsCB[r5.z].data[1].xy;
            r10.w = cmp(0 < r13.z);
            r26.xyz = r9.www * r25.xyz + r16.yzw;
            r13.z = saturate(dot(r12.xyz, r37.xyz));
            r23.yzw = r23.yzw * r8.www + r5.xyw;
            r8.w = dot(r23.yzw, r23.yzw);
            r8.w = rsqrt(r8.w);
            r23.yzw = r23.yzw * r8.www;
            r8.w = dot(r23.yzw, r5.xyw);
            r13.w = dot(r12.xyz, r23.yzw);
            r15.w = abs(r13.w) * r1.w + -abs(r13.w);
            r13.w = abs(r13.w) * r15.w + 1;
            r15.w = r13.z * r2.y + r6.w;
            r13.w = r13.w * r13.w;
            r13.w = r13.w * r15.w;
            r13.w = rcp(r13.w);
            r13.z = r13.z * r14.w;
            r13.z = r13.w * r13.z;
            r13.z = r13.z * r12.w;
            r23.yzw = r13.zzz * r25.xyz + r36.xyz;
            r8.w = saturate(1 + -r8.w);
            r13.w = r8.w * r8.w;
            r13.w = r13.w * r13.w;
            r8.w = r13.w * r8.w;
            r8.w = r13.z * r8.w;
            r37.xyz = r8.www * r25.xyz + r35.xyz;
            r25.xyz = r9.www * r25.xyz + r34.xyz;
            r25.xyz = r4.zzz ? r25.xyz : r34.xyz;
            r16.yzw = r10.www ? r26.xyz : r16.yzw;
            r34.xyz = r10.www ? r34.xyz : r25.xyz;
            r35.xyz = r10.www ? r37.xyz : r35.xyz;
            r36.xyz = r10.www ? r23.yzw : r36.xyz;
            r8.w = (int)r15.y & 15;
            r9.w = (int)r8.w + -1;
            r9.w = cmp((uint)r9.w < 32);
            r9.w = r9.w ? r2.w : 0;
            if (r9.w != 0) {
              r13.zw = mad((int2)r8.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, r13.z, u2.xxxx
            r8.w = samp0[]..swiz;
              r8.w = (int)r8.w | 8;
              GBufferDiffuseColor[viewID].r13.z = u2.x;
              GBufferDiffuseColor[viewID].r13.w = u2.x;
            }
            r3.z = (int)r3.z + 0x00010101;
          } else {
            r3.z = r15.y;
          }
        } else {
          r3.z = r7.w;
        }
      } else {
        r3.z = r7.w;
      }
      break;
      case 2 :      if (r2.w != 0) {
        r7.w = (int)r3.z & 7;
        r7.w = mad((int)r7.w, 24, 112);
        r24.yzw = lightConstantsCB[r5.z].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r7.w = u2.xyzw;
      }
      r7.w = (int)r3.z + 1;
      r25.xy = lightConstantsCB[r5.z].data[3].zw + -r11.xy;
      r25.z = lightConstantsCB[r5.z].data[4].x + -r11.z;
      r8.w = dot(r25.xyz, r25.xyz);
      r8.w = rsqrt(r8.w);
      r23.yzw = r25.xyz * r8.www;
      r9.w = dot(r12.xyz, r23.yzw);
      r10.w = saturate(r9.w);
      r12.w = r4.z ? abs(r9.w) : r10.w;
      r13.z = cmp(0 < r12.w);
      if (r13.z != 0) {
        r37.xyz = lightConstantsCB[r5.z].data[7].yzw;
        r37.w = lightConstantsCB[r5.z].data[8].x;
        r13.z = dot(r37.xyzw, r11.xyzw);
        r13.w = cmp(r13.z < 1);
        if (r13.w != 0) {
          r23.yzw = float3(1,1,1);
          r13.w = 0;
        } else {
          r24.yzw = lightConstantsCB[r5.z].data[0].xyz + -r11.xyz;
          r14.w = lightConstantsCB[r5.z].data[3].x * lightConstantsCB[r5.z].data[3].x;
          r15.y = dot(r24.yzw, r24.yzw);
          r14.w = r14.w / r15.y;
          r14.w = min(1, r14.w);
          r15.yw = saturate(r13.zz * lightConstantsCB[r5.z].data[2].xz + lightConstantsCB[r5.z].data[2].yw);
          r24.yz = r15.yw * r15.yw;
          r15.yw = r15.yw * float2(-2,-2) + float2(3,3);
          r15.yw = r24.yz * r15.yw;
          r14.w = r15.y * r14.w;
          r14.w = r14.w * r15.w;
          r38.xyz = lightConstantsCB[r5.z].data[4].yzw;
          r38.w = lightConstantsCB[r5.z].data[5].x;
          r26.x = dot(r38.xyzw, r11.xyzw);
          r38.xyz = lightConstantsCB[r5.z].data[5].yzw;
          r38.w = lightConstantsCB[r5.z].data[6].x;
          r26.y = dot(r38.xyzw, r11.xyzw);
          r27.xy = r26.xy / r13.zz;
          r13.z = cmp(lightConstantsCB[r5.z].data[10].w < 0.00048828125);
          if (r13.z != 0) {
            r15.yw = saturate(abs(r27.xy) * lightConstantsCB[r5.z].data[12].xy + lightConstantsCB[r5.z].data[12].zw);
            r24.yz = r15.yw * r15.yw;
            r15.yw = r15.yw * float2(-2,-2) + float2(3,3);
            r15.yw = r24.yz * r15.yw;
            r13.z = r15.y * r15.w;
          } else {
            r38.xyzw = saturate(lightConstantsCB[r5.z].data[11].xyzw * abs(r27.yyxx));
            r38.xyzw = log2(r38.xyzw);
            r38.xyzw = lightConstantsCB[r5.z].data[12].zzzz * r38.xyzw;
            r38.xyzw = exp2(r38.xyzw);
            r15.yw = r38.xy + r38.zw;
            r15.yw = log2(r15.yw);
            r15.yw = lightConstantsCB[r5.z].data[12].ww * r15.yw;
            r15.yw = exp2(r15.yw);
            r15.y = lightConstantsCB[r5.z].data[12].x * r15.y;
            r21.w = lightConstantsCB[r5.z].data[12].y * r15.w + -1;
            r15.y = lightConstantsCB[r5.z].data[12].y * r15.w + -r15.y;
            r15.y = saturate(r21.w / r15.y);
            r15.w = r15.y * r15.y;
            r15.y = r15.y * -2 + 3;
            r13.z = r15.w * r15.y;
          }
          r13.w = r14.w * r13.z;
          r13.z = 255 & (int)lightConstantsCB[r5.z].data[14].w;
          if (r13.z != 0) {
            r14.w = dot(lightConstantsCB[r5.z].data[13].xyz, r27.xyz);
            r26.x = lightConstantsCB[r5.z].data[13].w;
            r26.yz = lightConstantsCB[r5.z].data[14].xy;
            r15.y = dot(r26.xyz, r27.xyz);
            r26.x = frac(r14.w);
            r26.y = frac(r15.y);
            r13.z = (int)r13.z + -1;
            r26.z = (uint)r13.z;
            r23.yzw = gCookieArray.SampleLevel(samplerLinear_s, r26.xyz, 0).xyz;
          } else {
            r23.yzw = float3(1,1,1);
          }
        }
        r26.x = lightConstantsCB[r5.z].data[0].w;
        r26.yz = lightConstantsCB[r5.z].data[1].xy;
        r23.yzw = r26.xyz * r23.yzw;
        r13.z = cmp(0 < r13.w);
        if (r13.z != 0) {
          if (3 == 0) r13.z = 0; else if (3+27 < 32) {           r13.z = (uint)lightConstantsCB[r5.z].data[1].w << (32-(3 + 27)); r13.z = (uint)r13.z >> (32-3);          } else r13.z = (uint)lightConstantsCB[r5.z].data[1].w >> 27;
          r14.w = (int)r7.w & 15;
          r15.y = (int)r14.w + -1;
          r15.y = cmp((uint)r15.y < 32);
          r15.y = r15.y ? r2.w : 0;
          if (r15.y != 0) {
            r15.yw = mad((int2)r14.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.w, cb2[52].x, r15.y, u2.xxxx
          r14.w = samp0[]..swiz;
            r14.w = (int)r14.w | 4;
            GBufferDiffuseColor[viewID].r15.y = u2.x;
            GBufferDiffuseColor[viewID].r15.w = u2.x;
          }
          r14.w = (int)r3.z + 257;
          r13.z = cmp((int)r13.z != 1);
          if (r13.z != 0) {
            r13.z = abs(r9.w) * -0.200000003 + 0.400000006;
            r15.y = cmp(r9.w < 0);
            r15.y = r4.z ? r15.y : 0;
            r13.z = r15.y ? -r13.z : r13.z;
            r28.xyz = r12.xyz * r13.zzz + r11.xyz;
            r38.xyz = lightConstantsCB[r5.z].data[6].yzw;
            r38.w = lightConstantsCB[r5.z].data[7].x;
            r13.z = dot(r38.xyzw, r28.xyzw);
            r15.y = dot(r37.xyzw, r28.xyzw);
            r15.w = cmp(r15.y >= r13.z);
            if (r15.w != 0) {
              r37.xyz = lightConstantsCB[r5.z].data[4].yzw;
              r37.w = lightConstantsCB[r5.z].data[5].x;
              r26.x = dot(r37.xyzw, r28.xyzw);
              r37.xyz = lightConstantsCB[r5.z].data[5].yzw;
              r37.w = lightConstantsCB[r5.z].data[6].x;
              r26.y = dot(r37.xyzw, r28.xyzw);
              r24.yz = r26.xy / r15.yy;
              r24.yz = saturate(r24.yz * float2(0.5,-0.5) + float2(0.5,0.5));
              r26.x = r24.y * lightConstantsCB[r5.z].data[8].y + lightConstantsCB[r5.z].data[8].z;
              r26.y = r24.z * lightConstantsCB[r5.z].data[8].w + lightConstantsCB[r5.z].data[9].x;
              r13.z = r13.z / r15.y;
              r13.z = max(6.10351563e-05, r13.z);
              r15.y = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
              if (enableDitheredShadow != 0) {
                r28.z = (uint)r15.y;
                r15.w = 0;
                r21.w = 0;
                while (true) {
                  r22.w = cmp((int)r21.w >= 8);
                  if (r22.w != 0) break;
                  r27.x = dot(icb[r21.w+0].xy, r31.xy);
                  r27.y = dot(icb[r21.w+0].yx, r31.xz);
                  r28.xy = r27.xy * lightConstantsCB[r5.z].data[3].yy + r26.xy;
                  r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r13.z).x;
                  r15.w = r22.w * 0.125 + r15.w;
                  r21.w = (int)r21.w + 1;
                }
              } else {
                r26.z = (uint)r15.y;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r13.z).x;
              }
              r13.z = r15.w * r15.w;
              r13.z = r13.z * r15.w;
            } else {
              r13.z = 1;
            }
          } else {
            r13.z = 1;
          }
          r13.z = r13.w * r13.z;
          r13.w = cmp(0 < r13.z);
          if (r13.w != 0) {
            r13.w = lightConstantsCB[r5.z].data[1].z * r1.w;
            r13.w = r13.w * r10.w;
            if (4 == 0) r15.y = 0; else if (4+16 < 32) {             r15.y = (uint)lightConstantsCB[r5.z].data[1].w << (32-(4 + 16)); r15.y = (uint)r15.y >> (32-4);            } else r15.y = (uint)lightConstantsCB[r5.z].data[1].w >> 16;
            r21.w = cmp(0 < (uint)r15.y);
            r21.w = r3.x ? r21.w : 0;
            if (r21.w != 0) {
              r15.y = (int)r15.y + numLights;
              r15.y = mad((int)r15.y, 15, -15);
              r21.w = abs(r9.w) * -0.200000003 + 0.400000006;
              r22.w = cmp(r9.w < 0);
              r22.w = r4.z ? r22.w : 0;
              r21.w = r22.w ? -r21.w : r21.w;
              r29.xyz = r12.xyz * r21.www + r11.xyz;
              r37.xyz = lightConstantsCB[r15.y].data[6].yzw;
              r37.w = lightConstantsCB[r15.y].data[7].x;
              r21.w = dot(r37.xyzw, r29.xyzw);
              r37.xyz = lightConstantsCB[r15.y].data[7].yzw;
              r37.w = lightConstantsCB[r15.y].data[8].x;
              r22.w = dot(r37.xyzw, r29.xyzw);
              r24.y = cmp(r22.w < r21.w);
              if (r24.y == 0) {
                r37.xyz = lightConstantsCB[r15.y].data[4].yzw;
                r37.w = lightConstantsCB[r15.y].data[5].x;
                r26.x = dot(r37.xyzw, r29.xyzw);
                r37.xyz = lightConstantsCB[r15.y].data[5].yzw;
                r37.w = lightConstantsCB[r15.y].data[6].x;
                r26.y = dot(r37.xyzw, r29.xyzw);
                r24.zw = r26.xy / r22.ww;
                r24.zw = r24.zw * float2(0.5,-0.5) + float2(0.5,0.5);
                r26.x = lightConstantsCB[r15.y].data[9].w + r24.z;
                r26.y = lightConstantsCB[r15.y].data[10].x + r24.w;
                r24.zw = lightConstantsCB[r15.y].data[9].yz * r26.xy;
                r26.xy = lightConstantsCB[r15.y].data[3].yy / lightConstantsCB[r15.y].data[8].yw;
                r27.xy = float2(1,1) + -r26.xy;
                r27.xy = cmp(r24.zw >= r27.xy);
                r26.xy = cmp(r26.xy >= r24.zw);
                r26.xy = (int2)r26.xy | (int2)r27.xy;
                r26.x = (int)r26.y | (int)r26.x;
                if (r26.x == 0) {
                  r24.zw = saturate(r24.zw);
                  r28.x = r24.z * lightConstantsCB[r15.y].data[8].y + lightConstantsCB[r15.y].data[8].z;
                  r28.y = r24.w * lightConstantsCB[r15.y].data[8].w + lightConstantsCB[r15.y].data[9].x;
                  r24.z = lightConstantsCB[r15.y].data[10].z * r22.w;
                  r21.w = lightConstantsCB[r15.y].data[10].y * r22.w + r21.w;
                  r21.w = r21.w / r24.z;
                }
              } else {
                r26.x = -1;
              }
              r22.w = (int)r24.y | (int)r26.x;
              if (r22.w == 0) {
                r21.w = max(6.10351563e-05, r21.w);
                r22.w = 0x0000ffff & (int)lightConstantsCB[r15.y].data[1].w;
                if (enableDitheredShadow != 0) {
                  r26.z = (uint)r22.w;
                  r24.yz = float2(0,0);
                  while (true) {
                    r24.w = cmp((int)r24.z >= 8);
                    if (r24.w != 0) break;
                    r27.x = dot(icb[r24.z+0].xy, r32.xy);
                    r27.y = dot(icb[r24.z+0].yx, r32.xz);
                    r26.xy = r27.xy * lightConstantsCB[r15.y].data[3].yy + r28.xy;
                    r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r21.w).x;
                    r24.y = r24.w * 0.125 + r24.y;
                    r24.z = (int)r24.z + 1;
                  }
                } else {
                  r28.z = (uint)r22.w;
                  r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r21.w).x;
                }
                r15.y = r24.y * r24.y;
                r15.y = r15.y * r24.y;
              } else {
                r15.y = 1;
              }
              r13.z = r15.y * r13.z;
            } else {
              if (4 == 0) r5.z = 0; else if (4+20 < 32) {               r5.z = (uint)lightConstantsCB[r5.z].data[1].w << (32-(4 + 20)); r5.z = (uint)r5.z >> (32-4);              } else r5.z = (uint)lightConstantsCB[r5.z].data[1].w >> 20;
              r15.y = cmp(0 < (uint)r5.z);
              r15.y = r3.y ? r15.y : 0;
              if (r15.y != 0) {
                r5.z = (int)r5.z + numLights;
                r5.z = mad((int)r5.z, 15, -15);
                r15.y = abs(r9.w) * -0.200000003 + 0.400000006;
                r21.w = cmp(r9.w < 0);
                r21.w = r4.z ? r21.w : 0;
                r15.y = r21.w ? -r15.y : r15.y;
                r30.xyz = r12.xyz * r15.yyy + r11.xyz;
                r37.xyz = lightConstantsCB[r5.z].data[6].yzw;
                r37.w = lightConstantsCB[r5.z].data[7].x;
                r15.y = dot(r37.xyzw, r30.xyzw);
                r37.xyz = lightConstantsCB[r5.z].data[7].yzw;
                r37.w = lightConstantsCB[r5.z].data[8].x;
                r21.w = dot(r37.xyzw, r30.xyzw);
                r22.w = cmp(r21.w < r15.y);
                if (r22.w == 0) {
                  r37.xyz = lightConstantsCB[r5.z].data[4].yzw;
                  r37.w = lightConstantsCB[r5.z].data[5].x;
                  r26.x = dot(r37.xyzw, r30.xyzw);
                  r37.xyz = lightConstantsCB[r5.z].data[5].yzw;
                  r37.w = lightConstantsCB[r5.z].data[6].x;
                  r26.y = dot(r37.xyzw, r30.xyzw);
                  r24.zw = r26.xy / r21.ww;
                  r24.zw = r24.zw * float2(0.5,-0.5) + float2(0.5,0.5);
                  r26.x = lightConstantsCB[r5.z].data[9].w + r24.z;
                  r26.y = lightConstantsCB[r5.z].data[10].x + r24.w;
                  r24.zw = lightConstantsCB[r5.z].data[9].yz * r26.xy;
                  r26.xy = lightConstantsCB[r5.z].data[3].yy / lightConstantsCB[r5.z].data[8].yw;
                  r27.xy = float2(1,1) + -r26.xy;
                  r27.xy = cmp(r24.zw >= r27.xy);
                  r26.xy = cmp(r26.xy >= r24.zw);
                  r26.xy = (int2)r26.xy | (int2)r27.xy;
                  r26.x = (int)r26.y | (int)r26.x;
                  if (r26.x == 0) {
                    r24.zw = saturate(r24.zw);
                    r28.x = r24.z * lightConstantsCB[r5.z].data[8].y + lightConstantsCB[r5.z].data[8].z;
                    r28.y = r24.w * lightConstantsCB[r5.z].data[8].w + lightConstantsCB[r5.z].data[9].x;
                    r24.z = lightConstantsCB[r5.z].data[10].z * r21.w;
                    r15.y = lightConstantsCB[r5.z].data[10].y * r21.w + r15.y;
                    r15.y = r15.y / r24.z;
                  }
                } else {
                  r26.x = -1;
                }
                r21.w = (int)r22.w | (int)r26.x;
                if (r21.w == 0) {
                  r15.y = max(6.10351563e-05, r15.y);
                  r21.w = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r26.z = (uint)r21.w;
                    r22.w = 0;
                    r24.z = 0;
                    while (true) {
                      r24.w = cmp((int)r24.z >= 8);
                      if (r24.w != 0) break;
                      r27.x = dot(icb[r24.z+0].xy, r33.xy);
                      r27.y = dot(icb[r24.z+0].yx, r33.xz);
                      r26.xy = r27.xy * lightConstantsCB[r5.z].data[3].yy + r28.xy;
                      r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r15.y).x;
                      r22.w = r24.w * 0.125 + r22.w;
                      r24.z = (int)r24.z + 1;
                    }
                  } else {
                    r28.z = (uint)r21.w;
                    r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r15.y).x;
                  }
                  r5.z = r22.w * r22.w;
                  r5.z = r5.z * r22.w;
                } else {
                  r5.z = 1;
                }
                r13.z = r13.z * r5.z;
              }
            }
            r5.z = -r12.w * r2.x + 1;
            r5.z = r5.z * r5.z;
            r5.z = -r5.z * 0.620000005 + 0.620000005;
            r5.z = r5.z + -r12.w;
            r5.z = r2.z * r5.z + r12.w;
            r5.z = r5.z * r13.z;
            r9.w = cmp(0 < r9.w);
            r26.xyz = r5.zzz * r23.yzw + r16.yzw;
            r25.xyz = r25.xyz * r8.www + r5.xyw;
            r8.w = dot(r25.xyz, r25.xyz);
            r8.w = rsqrt(r8.w);
            r25.xyz = r25.xyz * r8.www;
            r8.w = dot(r25.xyz, r5.xyw);
            r12.w = dot(r12.xyz, r25.xyz);
            r15.y = abs(r12.w) * r1.w + -abs(r12.w);
            r12.w = abs(r12.w) * r15.y + 1;
            r10.w = r10.w * r2.y + r6.w;
            r12.w = r12.w * r12.w;
            r10.w = r12.w * r10.w;
            r10.w = rcp(r10.w);
            r10.w = r10.w * r13.w;
            r10.w = r13.z * r10.w;
            r10.w = 0.25 * r10.w;
            r25.xyz = r10.www * r23.yzw + r36.xyz;
            r8.w = saturate(1 + -r8.w);
            r12.w = r8.w * r8.w;
            r12.w = r12.w * r12.w;
            r8.w = r12.w * r8.w;
            r8.w = r10.w * r8.w;
            r27.xyw = r8.www * r23.yzw + r35.xyz;
            r23.yzw = r5.zzz * r23.yzw + r34.xyz;
            r23.yzw = r4.zzz ? r23.yzw : r34.xyz;
            r16.yzw = r9.www ? r26.xyz : r16.yzw;
            r34.xyz = r9.www ? r34.xyz : r23.yzw;
            r35.xyz = r9.www ? r27.xyw : r35.xyz;
            r36.xyz = r9.www ? r25.xyz : r36.xyz;
            r5.z = (int)r14.w & 15;
            r8.w = (int)r5.z + -1;
            r8.w = cmp((uint)r8.w < 32);
            r8.w = r8.w ? r2.w : 0;
            if (r8.w != 0) {
              r23.yz = mad((int2)r5.zz, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r5.z, cb2[52].x, r23.y, u2.xxxx
            r5.z = samp0[]..swiz;
              r5.z = (int)r5.z | 8;
              GBufferDiffuseColor[viewID].r23.y = u2.x;
              GBufferDiffuseColor[viewID].r23.z = u2.x;
            }
            r3.z = (int)r3.z + 0x00010101;
          } else {
            r3.z = r14.w;
          }
        } else {
          r3.z = r7.w;
        }
      } else {
        r3.z = r7.w;
      }
      break;
      default :
      break;
    }
    r3.w = (int)r3.w + 1;
  }
  r5.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r5.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r2.yz : float2(-1,0);
  r2.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.x == (int)r2.x);
  r2.xy = r2.xx ? r2.yz : float2(-1,0);
  r3.xyw = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r3.x;
  r2.z = cmp((int)r0.x == (int)r2.z);
  r3.xy = r2.zz ? r3.yw : float2(-1,0);
  r4.xyw = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r4.x;
  r0.x = cmp((int)r0.x == (int)r2.z);
  r4.xy = r0.xx ? r4.yw : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.z = r3.x;
  r7.w = r4.x;
  r7.xyzw = r7.xyzw + -r5.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r7.x + r7.y;
  r0.x = r0.x + r7.z;
  r0.x = r0.x + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r3.y + r1.z;
  r1.z = r7.w * r4.y + r1.z;
  r5.w = r1.z / r0.x;
  r0.x = cmp(0 >= r0.x);
  r5.yz = r0.xx ? float2(0,0) : r5.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r1.w == (int)r1.z);
  r2.xyz = r0.xxx ? r5.xyz : r5.xzy;
  r0.x = -r2.z * 0.5 + r2.x;
  r5.y = r2.z + r0.x;
  r5.z = -r2.y * 0.5 + r0.x;
  r5.x = r5.z + r2.y;
  r2.xyz = r16.yzw * r6.xyz;
  r2.xyz = r34.xyz * r5.xyz + r2.xyz;
  r3.xyw = float3(0.959999979,0.959999979,0.959999979) * r35.xyz;
  r3.xyw = r36.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r3.xyw;
  r2.xyz = r3.xyw + r2.xyz;
  r3.xyw = float3(1,1,1) + -r5.xyz;
  r3.xyw = r35.xyz * r3.xyw;
  r3.xyw = r36.xyz * r5.xyz + r3.xyw;
  r3.xyw = r16.yzw * r6.xyz + r3.xyw;
  r2.xyz = r4.zzz ? r2.xyz : r3.xyw;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(r11.xyz, r11.xyz);
    r1.z = rsqrt(r0.x);
    r3.xyw = r11.xyz * r1.zzz;
    r0.x = sqrt(r0.x);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r4.x = cmp(0.00999999978 < abs(r11.z));
      r4.yz = fogConstants.atmospherefogheightdensityscale.xy * r11.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.yz;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.yz = r5.xy / r4.yz;
      r4.yz = r4.yz * r1.zw;
      r1.zw = r4.xx ? r4.yz : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xyz;
    } else {
      r1.z = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r11.z));
      r4.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
      r5.x = -1.44269502 * r4.w;
      r5.x = exp2(r5.x);
      r5.x = 1 + -r5.x;
      r4.w = r5.x / r4.w;
      r4.w = r4.w * r1.z;
      r1.z = r1.w ? r4.w : r1.z;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r3.xyw);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.x = fogConstants.atmosphereMieSchlickK * -r1.z + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r1.w = r1.w / r3.x;
    r0.x = -fogConstants.atmospherehazebasedist + r0.x;
    r0.x = saturate(fogConstants.atmospherehazefadedist * r0.x);
    r0.x = r1.w * r0.x;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyw = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r3.xyw = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyw;
    r3.xyw = fogConstants.atmosphereInScatterIntensity * r3.xyw;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyw = r5.xyz * r3.xyw;
    r3.xyw = r2.xyz * r4.xyz + r3.xyw;
  } else {
    r0.x = fogConstants.heightFalloff * r11.z;
    r1.z = fogConstants.heightFalloff * r11.z + fogConstants.K0;
    r1.w = cmp(abs(r0.x) < 9.99999975e-05);
    r4.x = min(64, r1.z);
    r4.x = 1.44269502 * r4.x;
    r4.x = exp2(r4.x);
    r4.y = saturate(fogConstants.K0b);
    r4.z = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.z ? r4.x : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.x = r1.w ? 1 : r0.x;
    r0.x = r1.z / r0.x;
    r0.x = r1.w ? r4.y : r0.x;
    r0.x = fogConstants.expMul * r0.x;
    r1.z = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r1.z);
    r0.x = r0.x * r1.w + fogConstants.expAdd;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r1.z = rsqrt(r1.z);
    r4.xyz = r11.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.x = r4.w * r0.x;
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyw = r0.xxx * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyw;
  r3.xyw = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyw ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.x = cmp(0 < permuteHighlight);
  r4.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r4.xz != int2(0,0));
  r3.xy = cmp((int2)r4.yw == int2(3,8));
  r1.zw = r1.zw ? r3.xy : 0;
  r4.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 0);
  r1.z = r1.z ? r1.w : 0;
  r4.z = r1.z ? 0.200000 : 0;
  r3.xyw = r4.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyw = r3.xyw * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.xxx ? r3.xyw : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r3.z & 7;
        break;
        case 2 :        if (3 == 0) r0.x = 0; else if (3+8 < 32) {         r0.x = (uint)r3.z << (32-(3 + 8)); r0.x = (uint)r0.x >> (32-3);        } else r0.x = (uint)r3.z >> 8;
        break;
        case 3 :        r0.x = (uint)r3.z >> 16;
        break;
        case 4 :        r0.x = (int)r0.y & 3;
        break;
        case 5 :        r0.x = (uint)r0.y >> 8;
        break;
        default :
        r0.x = 0;
        break;
      }
      r0.x = (uint)r0.x;
      r0.x = drawNumLighstScale * r0.x;
      r3.xyw = r0.xxx * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyw + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r2.w != 0) {
    r1.xyz = eyeOffset.xyz + r11.xyz;
    r1.w = (int)r3.z & 7;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.x = (int)r0.y & 3;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r3.z & 7;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (3 == 0) r1.x = 0; else if (3+8 < 32) {     r1.x = (uint)r3.z << (32-(3 + 8)); r1.x = (uint)r1.x >> (32-3);    } else r1.x = (uint)r3.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (uint)r3.z >> 16;
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
    atomic_umax g2, l(0), r0.x
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
      r0.yz = cmp((int2)r0.zw == centerGroupIDx);
      r0.y = r0.z ? r0.y : 0;
      if (r0.y != 0) {
        GBufferDiffuseColor[viewID].20 = u2.xyzw;
        GBufferDiffuseColor[viewID].36 = u2.x;
      }
    }
  }
  return;
}