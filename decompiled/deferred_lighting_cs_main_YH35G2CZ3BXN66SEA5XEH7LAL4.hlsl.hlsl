// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:11 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38;
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
  r0.x = mad(permuteStride, 47, (int)vThreadGroupID.x);
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
  r3.w = cmp(0 >= r3.z);
  if (r3.w != 0) {
    r4.z = 0;
  }
  if (r3.w == 0) {
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r15.yzw = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.yzw;
    r15.yzw = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.yzw;
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.yzw;
    r3.w = -sunConstants.splitDepthOffset + r15.w;
    r3.w = -r3.w * 6.10351563e-05 + 1;
    r6.w = saturate(r3.w);
    r6.w = cmp(r3.w == r6.w);
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
      r13.z = (int)r10.w & 0x40000000;
      r13.w = (uint)r10.w << 2;
      if (r13.z == 0) {
        r13.z = (int)r10.w & 0x01ffffff;
        r18.x = (int)r9.w + (int)r13.z;
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
        r13.z = (uint)r10.w >> 13;
        r10.w = r19.x ? r13.z : r10.w;
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
        r13.z = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
      r13.z = samp0[]..swiz;
        r13.z = r21.y ? r19.z : r13.z;
        r14.w = (uint)r13.z >> 13;
        r13.z = r21.x ? r14.w : r13.z;
        r13.z = (int)r13.z & 8191;
        r20.x = (int)r13.z + (int)r19.x;
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
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.z = (((uint)r18.w << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r18.y << 0) & bitmask.z) | ((uint)r13.z & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r10.w = (uint)r10.w >> (uint)r13.z;
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
          r13.z = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r18.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.w = (((uint)r18.y << 0) & bitmask.w) | ((uint)r14.w & ~bitmask.w);
          r14.w = (int)r14.w * 10;
          r13.z = (uint)r13.z >> (uint)r14.w;
          r13.z = (int)r13.z & 1023;
          r21.x = (int)r13.z + (int)r20.x;
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
          r13.z = (uint)r18.y;
          r13.z = sunConstants.sstLightingConstants.constants.spanInInches * r13.z;
          r13.z = 3.05185094e-05 * r13.z;
          r14.w = (int)r16.z & 3;
          r14.w = (int)r14.w + (int)r18.x;
          r14.w = (int)r14.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r14.w = (uint)r14.w >> (uint)r19.x;
          r14.w = (int)r14.w & 255;
          r14.w = (uint)r14.w;
          r14.w = r14.w * r13.z;
          r14.w = r14.w * 0.00392156886 + r10.w;
          r16.y = (int)r19.y + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.w << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.w >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r19.z;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r13.z = r16.y * r13.z;
          r10.w = r13.z * 1.52590219e-05 + r10.w;
          r13.w = r18.w ? r14.w : r10.w;
        } else {
          r10.w = (int)r18.z & 0x80000000;
          r13.z = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r10.w = r10.w ? r13.z : 0;
          r13.z = (uint)r18.z << 2;
          r14.w = (uint)r10.w >> 16;
          r14.w = f16tof32(r14.w);
          r10.w = (int)r10.w & 0x0000ffff;
          r10.w = f16tof32(r10.w);
          r13.z = r15.y * r14.w + r13.z;
          r10.w = r15.z * r10.w + r13.z;
          r13.w = r9.w ? r10.w : r13.w;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.w;
      r9.w = cmp(r13.w < r9.w);
      r4.z = r9.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r6.w;
        r13.zw = -sunConstants.splitPinTransform[r8.w].xy + r15.yz;
        r13.zw = sunConstants.splitPinTransform[r8.w].zz * r13.zw;
        r18.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r18.z = r8.w + r6.w;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r3.w).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
        r8.w = r9.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.w = r8.w * r8.w;
        r4.z = r9.w * r8.w;
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
          r14.w = cmp((uint)r10.w >= 8);
          if (r14.w != 0) break;
          r14.w = cmp((uint)r7.w < (uint)r10.w);
          r16.yz = r14.ww ? r15.yz : r13.zw;
          r15.w = r14.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
          r14.w = r14.w ? r6.w : r8.w;
          r19.x = dot(icb[r10.w+0].yx, r18.xy);
          r19.y = dot(icb[r10.w+0].yx, r18.yz);
          r19.xy = r19.xy * r15.ww + r16.yz;
          r14.w = (int)r14.w + (int16)sunConstants.splitArrayOffset;
          r19.z = (uint)r14.w;
          r14.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r3.w).x;
          r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
          r14.w = r15.w + r14.w;
          r14.w = saturate(-1 + r14.w);
          r9.w = r14.w * 0.125 + r9.w;
          r10.w = (int)r10.w + 1;
        }
        r3.w = r9.w * r9.w;
        r4.z = r3.w * r9.w;
      }
    }
  }
  r3.w = 1 + -r2.y;
  r6.w = 5 * r3.w;
  r7.w = r3.w * 5 + -2.5;
  r7.w = 0.400000006 * r7.w;
  r7.w = max(0, r7.w);
  r7.w = 100 * r7.w;
  r13.zw = -r3.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r8.w = exp2(r13.z);
  r8.w = r8.w * r2.x;
  r8.w = 9.1368103 * r8.w;
  r9.w = r6.w * r3.w;
  r9.w = -r9.w * 2.0159049 + r13.w;
  r9.w = exp2(r9.w);
  r9.w = r9.w * r2.x;
  r9.w = 9.70808983 * r9.w;
  r8.w = max(r9.w, r8.w);
  r8.w = max(1.26815999, r8.w);
  r9.w = numRefProbes + -numOverrideProbes;
  r13.zw = (uint2)r0.yx >> int2(24,24);
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.y << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.y >> 12;
  if (10 == 0) r0.y = 0; else if (10+12 < 32) {   r0.y = (uint)r0.x << (32-(10 + 12)); r0.y = (uint)r0.y >> (32-10);  } else r0.y = (uint)r0.x >> 12;
  r18.x = 16;
  r19.yz = float2(0,1);
  r20.xy = float2(0,0);
  r21.xz = float2(1,1);
  r22.xy = float2(0,0);
  r23.xy = float2(0,0);
  r24.xyzw = float4(0,0,0,0);
  r25.xyzw = float4(0,0,0,0);
  r10.w = 0;
  while (true) {
    r14.w = cmp((int)r10.w == 2);
    if (r14.w != 0) break;
    r14.w = r10.w ? r0.x : r13.z;
    r15.y = cmp((uint)r14.w >= (uint)r9.w);
    r15.z = cmp((uint)r14.w < numRefProbes);
    r15.y = r15.z ? r15.y : 0;
    if (r15.y != 0) {
      r14.w = (int)r14.w * 14;
      if (r2.w != 0) {
        r15.y = (int)r25.w & 3;
        r15.y = mad((int)r15.y, 20, 880);
        r18.yzw = refProbeConstantsCB[r14.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r15.y = u2.xyzw;
      }
      r26.w = (int)r25.w + 1;
      r15.yzw = -refProbeConstantsCB[r14.w].data[0].xyz + r11.xyz;
      r16.y = 0x0000ffff & (int)refProbeConstantsCB[r14.w].data[7].z;
      if (6 == 0) r16.z = 0; else if (6+25 < 32) {       r16.z = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(6 + 25)); r16.z = (uint)r16.z >> (32-6);      } else r16.z = (uint)refProbeConstantsCB[r14.w].data[7].z >> 25;
      r16.w = (int)r16.y * 6;
      r18.y = dot(refProbeAttenuationConstantsCB[r16.w].data[0].xyz, r15.yzw);
      r18.y = saturate(refProbeAttenuationConstantsCB[r16.w].data[0].w + r18.y);
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[1].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[1].w + r18.z);
      r18.y = r18.y * r18.z;
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[2].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[2].w + r18.z);
      r18.y = r18.y * r18.z;
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[3].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[3].w + r18.z);
      r18.y = r18.y * r18.z;
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[4].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r16.w].data[4].w + r18.z);
      r18.y = r18.y * r18.z;
      r18.z = dot(refProbeAttenuationConstantsCB[r16.w].data[5].xyz, r15.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.w].data[5].w + r18.z);
      r19.x = r18.y * r16.w;
      r16.w = 1 & (int)refProbeConstantsCB[r14.w].data[6].x;
      r18.yz = r16.ww ? r19.xy : r19.zx;
      r16.w = refProbeConstantsCB[r14.w].data[6].x;
      r27.xy = r18.yz;
      r18.w = 1;
      while (true) {
        r19.x = cmp((int)r18.w >= (int)r16.z);
        if (r19.x != 0) break;
        r19.x = (int)r16.y + (int)r18.w;
        r19.x = (int)r19.x * 6;
        r19.w = dot(refProbeAttenuationConstantsCB[r19.x].data[0].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r19.x].data[0].w + r19.w);
        r19.w = r27.x * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.x].data[1].xyz, r15.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.x].data[1].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.x].data[2].xyz, r15.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.x].data[2].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.x].data[3].xyz, r15.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.x].data[3].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.x].data[4].xyz, r15.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.x].data[4].w + r20.w);
        r19.w = r20.w * r19.w;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.x].data[5].xyz, r15.yzw);
        r19.x = saturate(refProbeAttenuationConstantsCB[r19.x].data[5].w + r20.w);
        r27.x = r19.w * r19.x;
        r20.w = (uint)r16.w >> 2;
        if (1 == 0) r22.w = 0; else if (1+2 < 32) {         r22.w = (uint)r16.w << (32-(1 + 2)); r22.w = (uint)r22.w >> (32-1);        } else r22.w = (uint)r16.w >> 2;
        r23.w = (int)r20.w & 2;
        r27.z = max(r27.y, r27.x);
        r19.x = -r19.w * r19.x + 1;
        r19.x = r27.y * r19.x;
        r21.y = r23.w ? r19.x : r27.z;
        r27.xy = r22.ww ? r27.xy : r21.xy;
        r18.w = (int)r18.w + 1;
        r16.w = r20.w;
      }
      r27.y = saturate(r27.y);
      r16.y = refProbeConstantsCB[r14.w].data[6].y * r27.y;
      r16.z = cmp(0 < r16.y);
      if (r16.z != 0) {
        r16.z = (int)r26.w & 7;
        r16.w = (int)r16.z + -1;
        r16.w = cmp((uint)r16.w < 32);
        r16.w = r16.w ? r2.w : 0;
        if (r16.w != 0) {
          r16.zw = mad((int2)r16.zz, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.y, cb2[52].x, r16.z, u2.xxxx
        r18.y = samp0[]..swiz;
          r18.y = (int)r18.y | 32;
          GBufferDiffuseColor[viewID].r16.z = u2.x;
          GBufferDiffuseColor[viewID].r16.w = u2.x;
        }
        r25.w = (int)r25.w + 257;
        r25.z = r27.y * refProbeConstantsCB[r14.w].data[6].y + r25.z;
        r16.y = refProbeConstantsCB[r14.w].data[7].y * r16.y;
        r28.x = refProbeConstantsCB[r14.w].data[7].w;
        r28.yz = refProbeConstantsCB[r14.w].data[8].xy;
        r16.z = dot(r17.xyz, r28.xyz);
        r16.w = dot(r15.yzw, r28.xyz);
        r16.w = -refProbeConstantsCB[r14.w].data[8].z + r16.w;
        r18.y = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r7.w);
        r16.w = r18.y ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.z = min(131072, abs(r16.z));
        r28.x = refProbeConstantsCB[r14.w].data[8].w;
        r28.yz = refProbeConstantsCB[r14.w].data[9].xy;
        r16.w = dot(r17.xyz, r28.xyz);
        r18.y = dot(r15.yzw, r28.xyz);
        r18.y = -refProbeConstantsCB[r14.w].data[9].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r7.w);
        r18.y = r18.z ? r18.y : -r18.y;
        r16.w = max(1.00000001e-07, -r16.w);
        r16.w = r18.y / r16.w;
        r16.z = min(r16.z, abs(r16.w));
        r28.x = refProbeConstantsCB[r14.w].data[9].w;
        r28.yz = refProbeConstantsCB[r14.w].data[10].xy;
        r16.w = dot(r17.xyz, r28.xyz);
        r18.y = dot(r15.yzw, r28.xyz);
        r18.y = -refProbeConstantsCB[r14.w].data[10].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r7.w);
        r18.y = r18.z ? r18.y : -r18.y;
        r16.w = max(1.00000001e-07, -r16.w);
        r16.w = r18.y / r16.w;
        r16.z = min(r16.z, abs(r16.w));
        r28.x = refProbeConstantsCB[r14.w].data[10].w;
        r28.yz = refProbeConstantsCB[r14.w].data[11].xy;
        r16.w = dot(r17.xyz, r28.xyz);
        r18.y = dot(r15.yzw, r28.xyz);
        r18.y = -refProbeConstantsCB[r14.w].data[11].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r7.w);
        r18.y = r18.z ? r18.y : -r18.y;
        r16.w = max(1.00000001e-07, -r16.w);
        r16.w = r18.y / r16.w;
        r16.z = min(r16.z, abs(r16.w));
        r28.x = refProbeConstantsCB[r14.w].data[11].w;
        r28.yz = refProbeConstantsCB[r14.w].data[12].xy;
        r16.w = dot(r17.xyz, r28.xyz);
        r18.y = dot(r15.yzw, r28.xyz);
        r18.y = -refProbeConstantsCB[r14.w].data[12].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r7.w);
        r18.y = r18.z ? r18.y : -r18.y;
        r16.w = max(1.00000001e-07, -r16.w);
        r16.w = r18.y / r16.w;
        r16.z = min(r16.z, abs(r16.w));
        r28.x = refProbeConstantsCB[r14.w].data[12].w;
        r28.yz = refProbeConstantsCB[r14.w].data[13].xy;
        r16.w = dot(r17.xyz, r28.xyz);
        r18.y = dot(r15.yzw, r28.xyz);
        r18.y = -refProbeConstantsCB[r14.w].data[13].z + r18.y;
        r18.z = cmp(r18.y >= 0);
        r18.y = max(abs(r18.y), r7.w);
        r18.y = r18.z ? r18.y : -r18.y;
        r16.w = max(1.00000001e-07, -r16.w);
        r16.w = r18.y / r16.w;
        r16.z = min(r16.z, abs(r16.w));
        r28.x = refProbeConstantsCB[r14.w].data[3].w + r15.y;
        r28.yz = refProbeConstantsCB[r14.w].data[4].xy + r15.zw;
        r18.yzw = r17.xyz * r16.zzz + r28.xyz;
        r16.w = dot(r18.yzw, r18.yzw);
        r16.w = sqrt(r16.w);
        r16.z = r16.z / r16.w;
        r16.z = r16.z + r16.z;
        r16.z = sqrt(r16.z);
        r16.z = r3.w * 5 + r16.z;
        r16.z = -0.844799995 + r16.z;
        r28.x = refProbeConstantsCB[r14.w].data[0].w;
        r28.y = refProbeConstantsCB[r14.w].data[1].z;
        r28.z = refProbeConstantsCB[r14.w].data[2].y;
        r29.x = dot(r18.yzw, r28.xyz);
        r30.xy = refProbeConstantsCB[r14.w].data[1].xw;
        r30.z = refProbeConstantsCB[r14.w].data[2].z;
        r29.y = dot(r18.yzw, r30.xyz);
        r31.x = refProbeConstantsCB[r14.w].data[1].y;
        r31.yz = refProbeConstantsCB[r14.w].data[2].xw;
        r29.z = dot(r18.yzw, r31.xyz);
        if (9 == 0) r16.w = 0; else if (9+16 < 32) {         r16.w = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);        } else r16.w = (uint)refProbeConstantsCB[r14.w].data[7].z >> 16;
        r29.w = (uint)r16.w;
        r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r16.z).xyz;
        r27.xzw = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
        r27.xzw = cmp((int3)r27.xzw == int3(2139095040,2139095040,2139095040));
        r16.z = (int)r27.z | (int)r27.x;
        r16.z = (int)r27.w | (int)r16.z;
        r18.yzw = r16.zzz ? float3(1,1,0) : r18.yzw;
        r32.x = dot(r15.yzw, r28.xyz);
        r32.y = dot(r15.yzw, r30.xyz);
        r32.z = dot(r15.yzw, r31.xyz);
        r15.yzw = saturate(r32.xyz * refProbeConstantsCB[r14.w].data[3].xyz + float3(0.5,0.5,0.5));
        r32.xy = refProbeConstantsCB[r14.w].data[4].zw * r15.yz;
        r32.z = refProbeConstantsCB[r14.w].data[5].x * r15.w;
        r15.yzw = refProbeConstantsCB[r14.w].data[5].yzw + r32.xyz;
        r29.x = dot(r12.xyz, r28.xyz);
        r29.y = dot(r12.xyz, r30.xyz);
        r29.z = dot(r12.xyz, r31.xyz);
        r27.xzw = cmp(float3(0,0,0) < r29.xyz);
        r20.z = r27.x ? 0 : 0.5;
        r28.xyz = r20.xyz + r15.yzw;
        r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
        r30.xyz = r29.xyz * r29.xyz;
        r30.xyz = r30.xyz * r16.yyy;
        r22.z = r27.z ? 0 : 0.5;
        r31.xyz = r22.xyz + r15.yzw;
        r31.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r31.xyz, 0).xyz;
        r31.xyz = r31.xyz * r30.yyy;
        r28.xyz = r28.xyz * r30.xxx + r31.xyz;
        r23.z = r27.w ? 0 : 0.5;
        r15.yzw = r23.xyz + r15.yzw;
        r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
        r15.yzw = r15.yzw * r30.zzz + r28.xyz;
        r27.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
        r28.xyz = (int3)r27.xzw & int3(-2147483648,-2147483648,-2147483648);
        r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
        r14.w = (int)r28.y | (int)r28.x;
        r14.w = (int)r28.z | (int)r14.w;
        r27.xzw = r14.www ? float3(1,1,0) : r27.xzw;
        r28.xyz = r27.xzw * r15.yzw;
        r14.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r24.xyz = r15.yzw * r27.xzw + r24.xyz;
        r15.y = r14.w * r8.w;
        r16.yzw = r18.yzw * r16.yyy;
        r15.z = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r14.w = r8.w * r14.w + r15.z;
        r14.w = r15.y / r14.w;
        r28.x = r24.w;
        r28.yz = r25.xy;
        r15.yzw = r16.yzw * r14.www + r28.xyz;
        r24.w = r15.y;
        r25.xy = r15.zw;
      } else {
        r26.xyz = r25.xyz;
        r25.xyzw = r26.xyzw;
      }
    }
    r10.w = (int)r10.w + 1;
  }
  r18.x = 16;
  r19.yz = float2(0,1);
  r20.xy = float2(0,0);
  r22.xy = float2(0,0);
  r23.xy = float2(0,0);
  r15.yzw = r24.xyz;
  r26.x = r24.w;
  r26.yz = r25.xy;
  r16.yz = r25.zw;
  r10.w = 0;
  while (true) {
    r14.w = cmp((int)r10.w == 2);
    if (r14.w != 0) break;
    r14.w = r10.w ? r0.x : r13.z;
    r16.w = cmp((uint)r14.w < (uint)r9.w);
    if (r16.w != 0) {
      r14.w = (int)r14.w * 14;
      if (r2.w != 0) {
        r16.w = (int)r16.z & 15;
        r16.w = mad((int)r16.w, 20, 880);
        r18.yzw = refProbeConstantsCB[r14.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r16.w = u2.xyzw;
      }
      r21.y = (int)r16.z + 1;
      r18.yzw = -refProbeConstantsCB[r14.w].data[0].xyz + r11.xyz;
      r16.w = 0x0000ffff & (int)refProbeConstantsCB[r14.w].data[7].z;
      if (6 == 0) r19.w = 0; else if (6+25 < 32) {       r19.w = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);      } else r19.w = (uint)refProbeConstantsCB[r14.w].data[7].z >> 25;
      r20.w = (int)r16.w * 6;
      r22.w = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r18.yzw);
      r22.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r22.w);
      r23.w = dot(refProbeAttenuationConstantsCB[r20.w].data[1].xyz, r18.yzw);
      r23.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[1].w + r23.w);
      r22.w = r23.w * r22.w;
      r23.w = dot(refProbeAttenuationConstantsCB[r20.w].data[2].xyz, r18.yzw);
      r23.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[2].w + r23.w);
      r22.w = r23.w * r22.w;
      r23.w = dot(refProbeAttenuationConstantsCB[r20.w].data[3].xyz, r18.yzw);
      r23.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[3].w + r23.w);
      r22.w = r23.w * r22.w;
      r23.w = dot(refProbeAttenuationConstantsCB[r20.w].data[4].xyz, r18.yzw);
      r23.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[4].w + r23.w);
      r22.w = r23.w * r22.w;
      r23.w = dot(refProbeAttenuationConstantsCB[r20.w].data[5].xyz, r18.yzw);
      r20.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[5].w + r23.w);
      r19.x = r22.w * r20.w;
      r20.w = 1 & (int)refProbeConstantsCB[r14.w].data[6].x;
      r27.xy = r20.ww ? r19.xy : r19.zx;
      r19.x = refProbeConstantsCB[r14.w].data[6].x;
      r28.xy = r27.xy;
      r20.w = 1;
      while (true) {
        r22.w = cmp((int)r20.w >= (int)r19.w);
        if (r22.w != 0) break;
        r22.w = (int)r16.w + (int)r20.w;
        r22.w = (int)r22.w * 6;
        r23.w = dot(refProbeAttenuationConstantsCB[r22.w].data[0].xyz, r18.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[0].w + r23.w);
        r23.w = r28.x * r23.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[1].xyz, r18.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[1].w + r26.w);
        r23.w = r26.w * r23.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[2].xyz, r18.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[2].w + r26.w);
        r23.w = r26.w * r23.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[3].xyz, r18.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[3].w + r26.w);
        r23.w = r26.w * r23.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[4].xyz, r18.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[4].w + r26.w);
        r23.w = r26.w * r23.w;
        r26.w = dot(refProbeAttenuationConstantsCB[r22.w].data[5].xyz, r18.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r22.w].data[5].w + r26.w);
        r28.x = r23.w * r22.w;
        r26.w = (uint)r19.x >> 2;
        if (1 == 0) r27.z = 0; else if (1+2 < 32) {         r27.z = (uint)r19.x << (32-(1 + 2)); r27.z = (uint)r27.z >> (32-1);        } else r27.z = (uint)r19.x >> 2;
        r27.w = (int)r26.w & 2;
        r28.z = max(r28.y, r28.x);
        r22.w = -r23.w * r22.w + 1;
        r22.w = r28.y * r22.w;
        r21.w = r27.w ? r22.w : r28.z;
        r28.xy = r27.zz ? r28.xy : r21.zw;
        r20.w = (int)r20.w + 1;
        r19.x = r26.w;
      }
      r16.w = saturate(r28.y + -r25.z);
      r19.x = refProbeConstantsCB[r14.w].data[6].y * r16.w;
      r19.w = cmp(0 < r19.x);
      if (r19.w != 0) {
        r19.w = (int)r21.y & 31;
        r20.w = (int)r19.w + -1;
        r20.w = cmp((uint)r20.w < 32);
        r20.w = r20.w ? r2.w : 0;
        if (r20.w != 0) {
          r27.xy = mad((int2)r19.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.w, cb2[52].x, r27.x, u2.xxxx
        r19.w = samp0[]..swiz;
          r19.w = (int)r19.w | 32;
          GBufferDiffuseColor[viewID].r27.x = u2.x;
          GBufferDiffuseColor[viewID].r27.y = u2.x;
        }
        r16.z = (int)r16.z + 257;
        r16.y = r16.w * refProbeConstantsCB[r14.w].data[6].y + r16.y;
        r16.w = refProbeConstantsCB[r14.w].data[7].y * r19.x;
        r27.x = refProbeConstantsCB[r14.w].data[7].w;
        r27.yz = refProbeConstantsCB[r14.w].data[8].xy;
        r19.x = dot(r17.xyz, r27.xyz);
        r19.w = dot(r18.yzw, r27.xyz);
        r19.w = -refProbeConstantsCB[r14.w].data[8].z + r19.w;
        r20.w = cmp(r19.w >= 0);
        r19.w = max(abs(r19.w), r7.w);
        r19.w = r20.w ? r19.w : -r19.w;
        r19.x = max(1.00000001e-07, -r19.x);
        r19.x = r19.w / r19.x;
        r19.x = min(131072, abs(r19.x));
        r27.x = refProbeConstantsCB[r14.w].data[8].w;
        r27.yz = refProbeConstantsCB[r14.w].data[9].xy;
        r19.w = dot(r17.xyz, r27.xyz);
        r20.w = dot(r18.yzw, r27.xyz);
        r20.w = -refProbeConstantsCB[r14.w].data[9].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r7.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r27.x = refProbeConstantsCB[r14.w].data[9].w;
        r27.yz = refProbeConstantsCB[r14.w].data[10].xy;
        r19.w = dot(r17.xyz, r27.xyz);
        r20.w = dot(r18.yzw, r27.xyz);
        r20.w = -refProbeConstantsCB[r14.w].data[10].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r7.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r27.x = refProbeConstantsCB[r14.w].data[10].w;
        r27.yz = refProbeConstantsCB[r14.w].data[11].xy;
        r19.w = dot(r17.xyz, r27.xyz);
        r20.w = dot(r18.yzw, r27.xyz);
        r20.w = -refProbeConstantsCB[r14.w].data[11].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r7.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r27.x = refProbeConstantsCB[r14.w].data[11].w;
        r27.yz = refProbeConstantsCB[r14.w].data[12].xy;
        r19.w = dot(r17.xyz, r27.xyz);
        r20.w = dot(r18.yzw, r27.xyz);
        r20.w = -refProbeConstantsCB[r14.w].data[12].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r7.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r27.x = refProbeConstantsCB[r14.w].data[12].w;
        r27.yz = refProbeConstantsCB[r14.w].data[13].xy;
        r19.w = dot(r17.xyz, r27.xyz);
        r20.w = dot(r18.yzw, r27.xyz);
        r20.w = -refProbeConstantsCB[r14.w].data[13].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r7.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r19.x = min(r19.x, abs(r19.w));
        r27.x = refProbeConstantsCB[r14.w].data[3].w + r18.y;
        r27.yz = refProbeConstantsCB[r14.w].data[4].xy + r18.zw;
        r27.xyz = r17.xyz * r19.xxx + r27.xyz;
        r19.w = dot(r27.xyz, r27.xyz);
        r19.w = sqrt(r19.w);
        r19.x = r19.x / r19.w;
        r19.x = r19.x + r19.x;
        r19.x = sqrt(r19.x);
        r19.x = r3.w * 5 + r19.x;
        r19.x = -0.844799995 + r19.x;
        r29.x = refProbeConstantsCB[r14.w].data[0].w;
        r29.y = refProbeConstantsCB[r14.w].data[1].z;
        r29.z = refProbeConstantsCB[r14.w].data[2].y;
        r30.x = dot(r27.xyz, r29.xyz);
        r31.xy = refProbeConstantsCB[r14.w].data[1].xw;
        r31.z = refProbeConstantsCB[r14.w].data[2].z;
        r30.y = dot(r27.xyz, r31.xyz);
        r32.x = refProbeConstantsCB[r14.w].data[1].y;
        r32.yz = refProbeConstantsCB[r14.w].data[2].xw;
        r30.z = dot(r27.xyz, r32.xyz);
        if (9 == 0) r19.w = 0; else if (9+16 < 32) {         r19.w = (uint)refProbeConstantsCB[r14.w].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);        } else r19.w = (uint)refProbeConstantsCB[r14.w].data[7].z >> 16;
        r30.w = (uint)r19.w;
        r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r19.x).xyz;
        r28.xzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
        r28.xzw = cmp((int3)r28.xzw == int3(2139095040,2139095040,2139095040));
        r19.x = (int)r28.z | (int)r28.x;
        r19.x = (int)r28.w | (int)r19.x;
        r27.xyz = r19.xxx ? float3(1,1,0) : r27.xyz;
        r33.x = dot(r18.yzw, r29.xyz);
        r33.y = dot(r18.yzw, r31.xyz);
        r33.z = dot(r18.yzw, r32.xyz);
        r18.yzw = saturate(r33.xyz * refProbeConstantsCB[r14.w].data[3].xyz + float3(0.5,0.5,0.5));
        r33.xy = refProbeConstantsCB[r14.w].data[4].zw * r18.yz;
        r33.z = refProbeConstantsCB[r14.w].data[5].x * r18.w;
        r18.yzw = refProbeConstantsCB[r14.w].data[5].yzw + r33.xyz;
        r30.x = dot(r12.xyz, r29.xyz);
        r30.y = dot(r12.xyz, r31.xyz);
        r30.z = dot(r12.xyz, r32.xyz);
        r28.xzw = cmp(float3(0,0,0) < r30.xyz);
        r20.z = r28.x ? 0 : 0.5;
        r29.xyz = r20.xyz + r18.yzw;
        r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
        r31.xyz = r30.xyz * r30.xyz;
        r31.xyz = r31.xyz * r16.www;
        r22.z = r28.z ? 0 : 0.5;
        r32.xyz = r22.xyz + r18.yzw;
        r32.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
        r32.xyz = r32.xyz * r31.yyy;
        r29.xyz = r29.xyz * r31.xxx + r32.xyz;
        r23.z = r28.w ? 0 : 0.5;
        r18.yzw = r23.xyz + r18.yzw;
        r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
        r18.yzw = r18.yzw * r31.zzz + r29.xyz;
        r28.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
        r29.xyz = (int3)r28.xzw & int3(-2147483648,-2147483648,-2147483648);
        r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
        r14.w = (int)r29.y | (int)r29.x;
        r14.w = (int)r29.z | (int)r14.w;
        r28.xzw = r14.www ? float3(1,1,0) : r28.xzw;
        r29.xyz = r28.xzw * r18.yzw;
        r14.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r15.yzw = r18.yzw * r28.xzw + r15.yzw;
        r18.y = r14.w * r8.w;
        r27.xyz = r27.xyz * r16.www;
        r16.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r14.w = r8.w * r14.w + r16.w;
        r14.w = r18.y / r14.w;
        r26.xyz = r27.xyz * r14.www + r26.xyz;
      } else {
        r21.x = r16.y;
        r16.yz = r21.xy;
      }
    }
    r10.w = (int)r10.w + 1;
  }
  r0.x = cmp(r25.z >= 1);
  bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r3.w = (((uint)r16.z << 0) & bitmask.w) | ((uint)r25.w & ~bitmask.w);
  r0.x = r0.x ? r3.w : r16.z;
  r3.w = max(1, r16.y);
  r3.w = rcp(r3.w);
  r16.y = saturate(r16.y);
  r18.xyz = r15.yzw * r3.www;
  r19.xyz = r26.xyz * r3.www;
  r7.w = cmp(r16.y < 0.99000001);
  if (r7.w != 0) {
    r0.x = (int)r0.x + 256;
    r7.w = 1 + -r16.y;
    r8.w = sunConstants.globalProbeExposure * r7.w;
    r16.yzw = -globalProbeConstants.data[0].xyz + r11.xyz;
    r20.x = globalProbeConstants.data[0].w * r16.y;
    r20.yz = globalProbeConstants.data[1].xy * r16.zw;
    r16.yzw = saturate(float3(0.5,0.5,0.5) + r20.xyz);
    r20.xy = globalProbeConstants.data[1].zw * r16.yz;
    r20.z = globalProbeConstants.data[2].x * r16.w;
    r16.yzw = globalProbeConstants.data[2].yzw + r20.xyz;
    r20.xyz = cmp(float3(0,0,0) < r12.xyz);
    r20.xyz = r20.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r20.w = 0;
    r21.xyz = r20.wwx + r16.yzw;
    r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r22.xyz = r12.xyz * r12.xyz;
    r22.xyz = r22.xyz * r8.www;
    r23.xyz = r20.wwy + r16.yzw;
    r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r23.xyz = r23.xyz * r22.yyy;
    r21.xyz = r21.xyz * r22.xxx + r23.xyz;
    r16.yzw = r20.wwz + r16.yzw;
    r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
    r16.yzw = r16.yzw * r22.zzz + r21.xyz;
    r12.w = 0;
    r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r16.yzw = r20.xyz * r16.yzw;
    r8.w = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r18.xyz = r15.yzw * r3.www + r16.yzw;
    r17.w = 0;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r6.w).xyz;
    r3.w = sunConstants.globalProbeExposure * r7.w + -r8.w;
    r3.w = r2.y * r3.w + r8.w;
    r19.xyz = r15.yzw * r3.www + r19.xyz;
  }
  r3.w = r2.x + r5.z;
  r3.w = log2(abs(r3.w));
  r3.w = r3.w * r2.z;
  r3.w = exp2(r3.w);
  r3.w = r3.w + r5.z;
  r3.w = saturate(-1 + r3.w);
  r18.xyz = r18.xyz * r5.zzz;
  r15.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r15.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r15.yz, 0).xy;
  r16.yzw = r19.xyz * r3.www;
  r19.xyz = r16.zwy * r15.yyy;
  r15.yzw = r16.yzw * r15.zzz;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r3.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r5.z = r2.x * r2.y + r3.w;
  r2.y = r5.z * r2.y;
  r3.w = r5.z * r3.w;
  if (r2.w != 0) {
    r20.x = 3;
    r20.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r5.z = cmp(0 < r3.z);
  if (r5.z != 0) {
    if (r2.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r5.z, cb2[52].x, l(112), u2.xxxx
    r5.z = samp0[]..swiz;
      r5.z = (int)r5.z | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r5.z = cmp(0 < r4.z);
    if (r5.z != 0) {
      r5.z = sunConstants.specScale * r1.w;
      r5.z = r5.z * r3.z;
      if (sunConstants.sunCookieIndex != 0) {
        r20.xyz = eyeOffset.xyz + r11.xyz;
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
      r7.w = r3.x ? r7.w : 0;
      if (r7.w != 0) {
        r6.w = (int)r6.w + numLights;
        r6.w = mad((int)r6.w, 15, -15);
        r7.w = abs(r3.y) * -0.200000003 + 0.400000006;
        r20.xyz = r12.xyz * r7.www + r11.xyz;
        r21.xyz = lightConstantsCB[r6.w].data[4].yzw;
        r21.w = lightConstantsCB[r6.w].data[5].x;
        r20.w = 1;
        r21.x = dot(r21.xyzw, r20.xyzw);
        r22.xyz = lightConstantsCB[r6.w].data[5].yzw;
        r22.w = lightConstantsCB[r6.w].data[6].x;
        r21.y = dot(r22.xyzw, r20.xyzw);
        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r22.x = lightConstantsCB[r6.w].data[9].w + r21.x;
        r22.y = lightConstantsCB[r6.w].data[10].x + r21.y;
        r21.xy = lightConstantsCB[r6.w].data[9].yz * r22.xy;
        r21.zw = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
        r22.xy = float2(1,1) + -r21.zw;
        r22.xy = cmp(r21.xy >= r22.xy);
        r21.zw = cmp(r21.zw >= r21.xy);
        r21.zw = (int2)r21.zw | (int2)r22.xy;
        r7.w = (int)r21.w | (int)r21.z;
        if (r7.w == 0) {
          r22.xyz = lightConstantsCB[r6.w].data[6].yzw;
          r22.w = lightConstantsCB[r6.w].data[7].x;
          r7.w = dot(r22.xyzw, r20.xyzw);
          r21.xy = saturate(r21.xy);
          r20.x = r21.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
          r20.y = r21.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
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
              r12.w = cmp((int)r10.w >= 8);
              if (r12.w != 0) break;
              r23.x = dot(icb[r10.w+0].yx, r21.xy);
              r23.y = dot(icb[r10.w+0].yx, r21.yz);
              r22.xy = r23.xy * lightConstantsCB[r6.w].data[3].yy + r20.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r7.w).x;
              r9.w = r12.w * 0.125 + r9.w;
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
        r4.z = r6.w * r4.z;
      } else {
        r6.w = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r6.w);
        r8.w = ~(int)r3.x;
        r7.w = r7.w ? r8.w : 0;
        if (r7.w != 0) {
          r6.w = (int)r6.w + numLights;
          r6.w = mad((int)r6.w, 15, -15);
          r7.w = abs(r3.y) * -0.200000003 + 0.400000006;
          r20.xyz = r12.xyz * r7.www + r11.xyz;
          r21.xyz = lightConstantsCB[r6.w].data[4].yzw;
          r21.w = lightConstantsCB[r6.w].data[5].x;
          r20.w = 1;
          r21.x = dot(r21.xyzw, r20.xyzw);
          r22.xyz = lightConstantsCB[r6.w].data[5].yzw;
          r22.w = lightConstantsCB[r6.w].data[6].x;
          r21.y = dot(r22.xyzw, r20.xyzw);
          r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r22.x = lightConstantsCB[r6.w].data[9].w + r21.x;
          r22.y = lightConstantsCB[r6.w].data[10].x + r21.y;
          r21.xy = lightConstantsCB[r6.w].data[9].yz * r22.xy;
          r21.zw = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
          r22.xy = float2(1,1) + -r21.zw;
          r22.xy = cmp(r21.xy >= r22.xy);
          r21.zw = cmp(r21.zw >= r21.xy);
          r21.zw = (int2)r21.zw | (int2)r22.xy;
          r7.w = (int)r21.w | (int)r21.z;
          if (r7.w == 0) {
            r22.xyz = lightConstantsCB[r6.w].data[6].yzw;
            r22.w = lightConstantsCB[r6.w].data[7].x;
            r7.w = dot(r22.xyzw, r20.xyzw);
            r21.xy = saturate(r21.xy);
            r20.x = r21.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
            r20.y = r21.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
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
                r12.w = cmp((int)r10.w >= 8);
                if (r12.w != 0) break;
                r23.x = dot(icb[r10.w+0].yx, r21.xy);
                r23.y = dot(icb[r10.w+0].yx, r21.yz);
                r22.xy = r23.xy * lightConstantsCB[r6.w].data[3].yy + r20.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r7.w).x;
                r9.w = r12.w * 0.125 + r9.w;
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
          r4.z = r6.w * r4.z;
        }
      }
      r6.w = -r2.x * 0.5 + 1;
      r6.w = -r3.z * r6.w + 1;
      r6.w = r6.w * r6.w;
      r6.w = -r6.w * 0.620000005 + 0.620000005;
      r6.w = r6.w + -r3.z;
      r6.w = r2.z * r6.w + r3.z;
      r6.w = r6.w * r4.z;
      r3.y = cmp(0 < r3.y);
      r20.xyz = r6.www * r16.yzw + r18.xyz;
      r21.xyz = -r11.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r1.z = dot(r21.xyz, r21.xyz);
      r1.z = rsqrt(r1.z);
      r21.xyz = r21.xyz * r1.zzz;
      r1.z = dot(r21.xyz, r5.xyw);
      r6.w = dot(r12.xyz, r21.xyz);
      r7.w = abs(r6.w) * r1.w + -abs(r6.w);
      r6.w = abs(r6.w) * r7.w + 1;
      r3.z = r3.z * r2.y + r3.w;
      r6.w = r6.w * r6.w;
      r3.z = r6.w * r3.z;
      r3.z = rcp(r3.z);
      r3.z = r3.z * r5.z;
      r3.z = r4.z * r3.z;
      r3.z = 0.25 * r3.z;
      r21.xyz = r3.zzz * r16.yzw + r15.yzw;
      r1.z = saturate(1 + -r1.z);
      r5.z = r1.z * r1.z;
      r5.z = r5.z * r5.z;
      r1.z = r5.z * r1.z;
      r1.z = r3.z * r1.z;
      r22.xyz = r1.zzz * r16.zwy + r19.xyz;
      r20.w = r22.z;
      r18.w = r19.z;
      r18.xyzw = r3.yyyy ? r20.xyzw : r18.xyzw;
      r22.zw = r21.xy;
      r19.zw = r15.yz;
      r20.xyzw = r3.yyyy ? r22.xyzw : r19.xyzw;
      r15.w = r3.y ? r21.z : r15.w;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r1.z, cb2[52].x, l(112), u2.xxxx
      r1.z = samp0[]..swiz;
        r1.z = (int)r1.z | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r19.z = r18.w;
      r19.xy = r20.xy;
      r15.yz = r20.zw;
      r1.z = 0x00010101;
    } else {
      r1.z = 257;
    }
  } else {
    r1.z = 1;
  }
  r20.x = -r13.x;
  r3.y = ~(int)r3.x;
  r2.x = -r2.x * 0.5 + 1;
  r21.x = 2;
  r22.x = 2;
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
  r3.z = r1.z;
  r4.z = 0;
  while (true) {
    r5.z = cmp((int)r4.z == 2);
    if (r5.z != 0) break;
    r5.z = r4.z ? r0.y : r13.w;
    r5.z = (int)r5.z * 15;
    if (3 == 0) r6.w = 0; else if (3+24 < 32) {     r6.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(3 + 24)); r6.w = (uint)r6.w >> (32-3);    } else r6.w = (uint)lightConstantsCB[r5.z].data[1].w >> 24;
    switch (r6.w) {
      case 4 :      if (r2.w != 0) {
        r6.w = (int)r3.z & 7;
        r6.w = mad((int)r6.w, 24, 112);
        r21.yzw = lightConstantsCB[r5.z].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r6.w = u2.xyzw;
      }
      r6.w = (int)r3.z + 1;
      r7.w = cmp(0 < lightConstantsCB[r5.z].data[6].y);
      r34.xy = lightConstantsCB[r5.z].data[5].zw;
      r34.z = lightConstantsCB[r5.z].data[6].x;
      r21.yzw = -r34.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r5.z].data[0].xyz;
      r35.xyz = r21.yzw + -r11.xyz;
      r8.w = dot(r34.xyz, r35.xyz);
      r9.w = saturate(-r8.w / lightConstantsCB[r5.z].data[6].y);
      r36.xyz = r9.www * r34.xyz + r21.yzw;
      r36.xyz = r7.www ? r36.xyz : lightConstantsCB[r5.z].data[0].xyz;
      r36.xyz = r36.xyz + -r11.xyz;
      r10.w = dot(r36.xyz, r36.xyz);
      r12.w = rsqrt(r10.w);
      r36.xyz = r36.xyz * r12.www;
      r12.w = dot(r12.xyz, r36.xyz);
      r13.z = saturate(r12.w);
      r14.w = cmp(0 < r13.z);
      if (r14.w != 0) {
        r14.w = sqrt(r10.w);
        r17.w = lightConstantsCB[r5.z].data[3].x * lightConstantsCB[r5.z].data[3].x;
        r10.w = r17.w / r10.w;
        r10.w = min(1, r10.w);
        r36.xy = saturate(r14.ww * lightConstantsCB[r5.z].data[2].xz + lightConstantsCB[r5.z].data[2].yw);
        r36.zw = r36.xy * r36.xy;
        r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
        r36.xy = r36.zw * r36.xy;
        r10.w = r36.x * r10.w;
        r10.w = r10.w * r36.y;
        r14.w = cmp(0 < r10.w);
        if (r14.w != 0) {
          if (3 == 0) r14.w = 0; else if (3+27 < 32) {           r14.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)lightConstantsCB[r5.z].data[1].w >> 27;
          r17.w = (int)r6.w & 15;
          r18.w = (int)r17.w + -1;
          r18.w = cmp((uint)r18.w < 32);
          r18.w = r18.w ? r2.w : 0;
          if (r18.w != 0) {
            r36.xy = mad((int2)r17.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, r36.x, u2.xxxx
          r17.w = samp0[]..swiz;
            r17.w = (int)r17.w | 4;
            GBufferDiffuseColor[viewID].r36.x = u2.x;
            GBufferDiffuseColor[viewID].r36.y = u2.x;
          }
          r17.w = (int)r3.z + 257;
          r14.w = cmp((int)r14.w != 1);
          if (r14.w != 0) {
            r14.w = abs(r12.w) * -0.200000003 + 0.400000006;
            r36.xyz = r12.xyz * r14.www + r11.xyz;
            r36.xyz = -lightConstantsCB[r5.z].data[4].yzw + r36.xyz;
            r14.w = max(abs(r36.y), abs(r36.z));
            r14.w = max(abs(r36.x), r14.w);
            r14.w = lightConstantsCB[r5.z].data[5].x / r14.w;
            r14.w = lightConstantsCB[r5.z].data[5].y + r14.w;
            r18.w = dot(r36.xyz, r36.xyz);
            r18.w = rsqrt(r18.w);
            r14.w = max(6.10351563e-05, r14.w);
            r19.w = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
            r37.w = (uint)r19.w;
            r19.w = 0;
            r25.w = 0;
            while (true) {
              r29.w = cmp((int)r25.w >= 8);
              if (r29.w != 0) break;
              r38.y = dot(icb[r25.w+0].yx, r20.xy);
              r38.z = dot(icb[r25.w+0].yx, r20.yz);
              r38.yz = lightConstantsCB[r5.z].data[3].yy * r38.yz;
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
          r10.w = r19.w * r10.w;
          r14.w = cmp(0 < r10.w);
          if (r14.w != 0) {
            r14.w = lightConstantsCB[r5.z].data[1].z * r1.w;
            r14.w = 0.25 * r14.w;
            r18.w = dot(r34.xyz, r17.xyz);
            r25.w = dot(r17.xyz, r35.xyz);
            r29.w = -r18.w * r18.w + lightConstantsCB[r5.z].data[6].y;
            r8.w = r18.w * r25.w + -r8.w;
            r8.w = saturate(r8.w / r29.w);
            r18.w = r29.w / lightConstantsCB[r5.z].data[6].y;
            r18.w = 10 * r18.w;
            r18.w = min(1, r18.w);
            r8.w = r8.w + -r9.w;
            r8.w = r18.w * r8.w + r9.w;
            r21.yzw = r8.www * r34.xyz + r21.yzw;
            r21.yzw = r7.www ? r21.yzw : lightConstantsCB[r5.z].data[0].xyz;
            r21.yzw = r21.yzw + -r11.xyz;
            r7.w = dot(r21.yzw, r21.yzw);
            r7.w = rsqrt(r7.w);
            r34.xyz = r21.yzw * r7.www;
            if (4 == 0) r8.w = 0; else if (4+16 < 32) {             r8.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(4 + 16)); r8.w = (uint)r8.w >> (32-4);            } else r8.w = (uint)lightConstantsCB[r5.z].data[1].w >> 16;
            r9.w = cmp(0 < (uint)r8.w);
            r9.w = r3.x ? r9.w : 0;
            if (r9.w != 0) {
              r8.w = (int)r8.w + numLights;
              r8.w = mad((int)r8.w, 15, -15);
              r9.w = abs(r12.w) * -0.200000003 + 0.400000006;
              r23.xyz = r12.xyz * r9.www + r11.xyz;
              r35.xyz = lightConstantsCB[r8.w].data[6].yzw;
              r35.w = lightConstantsCB[r8.w].data[7].x;
              r9.w = dot(r35.xyzw, r23.xyzw);
              r35.xyz = lightConstantsCB[r8.w].data[7].yzw;
              r35.w = lightConstantsCB[r8.w].data[8].x;
              r18.w = dot(r35.xyzw, r23.xyzw);
              r25.w = cmp(r18.w < r9.w);
              if (r25.w == 0) {
                r35.xyz = lightConstantsCB[r8.w].data[4].yzw;
                r35.w = lightConstantsCB[r8.w].data[5].x;
                r35.x = dot(r35.xyzw, r23.xyzw);
                r36.xyz = lightConstantsCB[r8.w].data[5].yzw;
                r36.w = lightConstantsCB[r8.w].data[6].x;
                r35.y = dot(r36.xyzw, r23.xyzw);
                r23.xy = r35.xy / r18.ww;
                r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r35.x = lightConstantsCB[r8.w].data[9].w + r23.x;
                r35.y = lightConstantsCB[r8.w].data[10].x + r23.y;
                r23.xy = lightConstantsCB[r8.w].data[9].yz * r35.xy;
                r35.xy = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
                r35.zw = float2(1,1) + -r35.xy;
                r35.zw = cmp(r23.xy >= r35.zw);
                r35.xy = cmp(r35.xy >= r23.xy);
                r35.xy = (int2)r35.xy | (int2)r35.zw;
                r23.z = (int)r35.y | (int)r35.x;
                if (r23.z == 0) {
                  r23.xy = saturate(r23.xy);
                  r35.x = r23.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                  r35.y = r23.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                  r23.x = lightConstantsCB[r8.w].data[10].z * r18.w;
                  r9.w = lightConstantsCB[r8.w].data[10].y * r18.w + r9.w;
                  r9.w = r9.w / r23.x;
                }
              } else {
                r23.z = -1;
              }
              r18.w = (int)r25.w | (int)r23.z;
              if (r18.w == 0) {
                r9.w = max(6.10351563e-05, r9.w);
                r18.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r23.z = (uint)r18.w;
                  r25.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r36.x = dot(icb[r29.w+0].yx, r20.xw);
                    r36.y = dot(icb[r29.w+0].xy, r13.xy);
                    r23.xy = r36.xy * lightConstantsCB[r8.w].data[3].yy + r35.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r9.w).x;
                    r25.w = r23.x * 0.125 + r25.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r35.z = (uint)r18.w;
                  r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r9.w).x;
                }
                r8.w = r25.w * r25.w;
                r8.w = r8.w * r25.w;
              } else {
                r8.w = 1;
              }
              r10.w = r10.w * r8.w;
            } else {
              if (4 == 0) r8.w = 0; else if (4+20 < 32) {               r8.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(4 + 20)); r8.w = (uint)r8.w >> (32-4);              } else r8.w = (uint)lightConstantsCB[r5.z].data[1].w >> 20;
              r9.w = cmp(0 < (uint)r8.w);
              r9.w = r3.y ? r9.w : 0;
              if (r9.w != 0) {
                r8.w = (int)r8.w + numLights;
                r8.w = mad((int)r8.w, 15, -15);
                r9.w = abs(r12.w) * -0.200000003 + 0.400000006;
                r24.xyz = r12.xyz * r9.www + r11.xyz;
                r35.xyz = lightConstantsCB[r8.w].data[6].yzw;
                r35.w = lightConstantsCB[r8.w].data[7].x;
                r9.w = dot(r35.xyzw, r24.xyzw);
                r35.xyz = lightConstantsCB[r8.w].data[7].yzw;
                r35.w = lightConstantsCB[r8.w].data[8].x;
                r18.w = dot(r35.xyzw, r24.xyzw);
                r23.x = cmp(r18.w < r9.w);
                if (r23.x == 0) {
                  r35.xyz = lightConstantsCB[r8.w].data[4].yzw;
                  r35.w = lightConstantsCB[r8.w].data[5].x;
                  r35.x = dot(r35.xyzw, r24.xyzw);
                  r36.xyz = lightConstantsCB[r8.w].data[5].yzw;
                  r36.w = lightConstantsCB[r8.w].data[6].x;
                  r35.y = dot(r36.xyzw, r24.xyzw);
                  r23.yz = r35.xy / r18.ww;
                  r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.x = lightConstantsCB[r8.w].data[9].w + r23.y;
                  r24.y = lightConstantsCB[r8.w].data[10].x + r23.z;
                  r23.yz = lightConstantsCB[r8.w].data[9].yz * r24.xy;
                  r24.xy = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
                  r35.xy = float2(1,1) + -r24.xy;
                  r35.xy = cmp(r23.yz >= r35.xy);
                  r24.xy = cmp(r24.xy >= r23.yz);
                  r24.xy = (int2)r24.xy | (int2)r35.xy;
                  r24.x = (int)r24.y | (int)r24.x;
                  if (r24.x == 0) {
                    r23.yz = saturate(r23.yz);
                    r35.x = r23.y * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                    r35.y = r23.z * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                    r23.y = lightConstantsCB[r8.w].data[10].z * r18.w;
                    r9.w = lightConstantsCB[r8.w].data[10].y * r18.w + r9.w;
                    r9.w = r9.w / r23.y;
                  }
                } else {
                  r24.x = -1;
                }
                r18.w = (int)r23.x | (int)r24.x;
                if (r18.w == 0) {
                  r9.w = max(6.10351563e-05, r9.w);
                  r18.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r23.z = (uint)r18.w;
                    r24.xy = float2(0,0);
                    while (true) {
                      r24.z = cmp((int)r24.y >= 8);
                      if (r24.z != 0) break;
                      r36.x = dot(icb[r24.y+0].xy, r14.xy);
                      r36.y = dot(icb[r24.y+0].yx, r14.xz);
                      r23.xy = r36.xy * lightConstantsCB[r8.w].data[3].yy + r35.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r9.w).x;
                      r24.x = r23.x * 0.125 + r24.x;
                      r24.y = (int)r24.y + 1;
                    }
                  } else {
                    r35.z = (uint)r18.w;
                    r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r9.w).x;
                  }
                  r8.w = r24.x * r24.x;
                  r8.w = r8.w * r24.x;
                } else {
                  r8.w = 1;
                }
                r10.w = r10.w * r8.w;
              }
            }
            r8.w = -r13.z * r2.x + 1;
            r8.w = r8.w * r8.w;
            r8.w = -r8.w * 0.620000005 + 0.620000005;
            r8.w = r8.w + -r13.z;
            r8.w = r2.z * r8.w + r13.z;
            r8.w = r8.w * r10.w;
            r23.x = lightConstantsCB[r5.z].data[0].w;
            r23.yz = lightConstantsCB[r5.z].data[1].xy;
            r9.w = cmp(0 < r12.w);
            r35.xyz = r8.www * r23.xyz + r16.yzw;
            r8.w = saturate(dot(r12.xyz, r34.xyz));
            r21.yzw = r21.yzw * r7.www + r5.xyw;
            r7.w = dot(r21.yzw, r21.yzw);
            r7.w = rsqrt(r7.w);
            r21.yzw = r21.yzw * r7.www;
            r7.w = dot(r21.yzw, r5.xyw);
            r12.w = dot(r12.xyz, r21.yzw);
            r13.z = abs(r12.w) * r1.w + -abs(r12.w);
            r12.w = abs(r12.w) * r13.z + 1;
            r13.z = r8.w * r2.y + r3.w;
            r12.w = r12.w * r12.w;
            r12.w = r12.w * r13.z;
            r12.w = rcp(r12.w);
            r8.w = r8.w * r14.w;
            r8.w = r12.w * r8.w;
            r8.w = r8.w * r10.w;
            r21.yzw = r8.www * r23.xyz + r33.xyz;
            r7.w = saturate(1 + -r7.w);
            r12.w = r7.w * r7.w;
            r12.w = r12.w * r12.w;
            r7.w = r12.w * r7.w;
            r7.w = r8.w * r7.w;
            r23.xyz = r7.www * r23.xyz + r32.xyz;
            r16.yzw = r9.www ? r35.xyz : r16.yzw;
            r32.xyz = r9.www ? r23.xyz : r32.xyz;
            r33.xyz = r9.www ? r21.yzw : r33.xyz;
            r7.w = (int)r17.w & 15;
            r8.w = (int)r7.w + -1;
            r8.w = cmp((uint)r8.w < 32);
            r8.w = r8.w ? r2.w : 0;
            if (r8.w != 0) {
              r21.yz = mad((int2)r7.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r7.w, cb2[52].x, r21.y, u2.xxxx
            r7.w = samp0[]..swiz;
              r7.w = (int)r7.w | 8;
              GBufferDiffuseColor[viewID].r21.y = u2.x;
              GBufferDiffuseColor[viewID].r21.z = u2.x;
            }
            r3.z = (int)r3.z + 0x00010101;
          } else {
            r3.z = r17.w;
          }
        } else {
          r3.z = r6.w;
        }
      } else {
        r3.z = r6.w;
      }
      break;
      case 2 :      if (r2.w != 0) {
        r6.w = (int)r3.z & 7;
        r6.w = mad((int)r6.w, 24, 112);
        r22.yzw = lightConstantsCB[r5.z].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r6.w = u2.xyzw;
      }
      r6.w = (int)r3.z + 1;
      r23.xy = lightConstantsCB[r5.z].data[3].zw + -r11.xy;
      r23.z = lightConstantsCB[r5.z].data[4].x + -r11.z;
      r7.w = dot(r23.xyz, r23.xyz);
      r7.w = rsqrt(r7.w);
      r21.yzw = r23.xyz * r7.www;
      r8.w = dot(r12.xyz, r21.yzw);
      r9.w = saturate(r8.w);
      r10.w = cmp(0 < r9.w);
      if (r10.w != 0) {
        r34.xyz = lightConstantsCB[r5.z].data[7].yzw;
        r34.w = lightConstantsCB[r5.z].data[8].x;
        r10.w = dot(r34.xyzw, r11.xyzw);
        r12.w = cmp(r10.w < 1);
        if (r12.w != 0) {
          r21.yzw = float3(1,1,1);
          r12.w = 0;
        } else {
          r22.yzw = lightConstantsCB[r5.z].data[0].xyz + -r11.xyz;
          r13.z = lightConstantsCB[r5.z].data[3].x * lightConstantsCB[r5.z].data[3].x;
          r14.w = dot(r22.yzw, r22.yzw);
          r13.z = r13.z / r14.w;
          r13.z = min(1, r13.z);
          r22.yz = saturate(r10.ww * lightConstantsCB[r5.z].data[2].xz + lightConstantsCB[r5.z].data[2].yw);
          r24.yz = r22.yz * r22.yz;
          r22.yz = r22.yz * float2(-2,-2) + float2(3,3);
          r22.yz = r24.yz * r22.yz;
          r13.z = r22.y * r13.z;
          r13.z = r13.z * r22.z;
          r35.xyz = lightConstantsCB[r5.z].data[4].yzw;
          r35.w = lightConstantsCB[r5.z].data[5].x;
          r35.x = dot(r35.xyzw, r11.xyzw);
          r36.xyz = lightConstantsCB[r5.z].data[5].yzw;
          r36.w = lightConstantsCB[r5.z].data[6].x;
          r35.y = dot(r36.xyzw, r11.xyzw);
          r25.xy = r35.xy / r10.ww;
          r10.w = cmp(lightConstantsCB[r5.z].data[10].w < 0.00048828125);
          if (r10.w != 0) {
            r22.yz = saturate(abs(r25.xy) * lightConstantsCB[r5.z].data[12].xy + lightConstantsCB[r5.z].data[12].zw);
            r24.yz = r22.yz * r22.yz;
            r22.yz = r22.yz * float2(-2,-2) + float2(3,3);
            r22.yz = r24.yz * r22.yz;
            r10.w = r22.y * r22.z;
          } else {
            r35.xyzw = saturate(lightConstantsCB[r5.z].data[11].xyzw * abs(r25.yyxx));
            r35.xyzw = log2(r35.xyzw);
            r35.xyzw = lightConstantsCB[r5.z].data[12].zzzz * r35.xyzw;
            r35.xyzw = exp2(r35.xyzw);
            r22.yz = r35.xy + r35.zw;
            r22.yz = log2(r22.yz);
            r22.yz = lightConstantsCB[r5.z].data[12].ww * r22.yz;
            r22.yz = exp2(r22.yz);
            r14.w = lightConstantsCB[r5.z].data[12].x * r22.y;
            r17.w = lightConstantsCB[r5.z].data[12].y * r22.z + -1;
            r14.w = lightConstantsCB[r5.z].data[12].y * r22.z + -r14.w;
            r14.w = saturate(r17.w / r14.w);
            r17.w = r14.w * r14.w;
            r14.w = r14.w * -2 + 3;
            r10.w = r17.w * r14.w;
          }
          r12.w = r13.z * r10.w;
          r10.w = 255 & (int)lightConstantsCB[r5.z].data[14].w;
          if (r10.w != 0) {
            r13.z = dot(lightConstantsCB[r5.z].data[13].xyz, r25.xyz);
            r35.x = lightConstantsCB[r5.z].data[13].w;
            r35.yz = lightConstantsCB[r5.z].data[14].xy;
            r14.w = dot(r35.xyz, r25.xyz);
            r35.x = frac(r13.z);
            r35.y = frac(r14.w);
            r10.w = (int)r10.w + -1;
            r35.z = (uint)r10.w;
            r21.yzw = gCookieArray.SampleLevel(samplerLinear_s, r35.xyz, 0).xyz;
          } else {
            r21.yzw = float3(1,1,1);
          }
        }
        r35.x = lightConstantsCB[r5.z].data[0].w;
        r35.yz = lightConstantsCB[r5.z].data[1].xy;
        r21.yzw = r35.xyz * r21.yzw;
        r10.w = cmp(0 < r12.w);
        if (r10.w != 0) {
          if (3 == 0) r10.w = 0; else if (3+27 < 32) {           r10.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(3 + 27)); r10.w = (uint)r10.w >> (32-3);          } else r10.w = (uint)lightConstantsCB[r5.z].data[1].w >> 27;
          r13.z = (int)r6.w & 15;
          r14.w = (int)r13.z + -1;
          r14.w = cmp((uint)r14.w < 32);
          r14.w = r14.w ? r2.w : 0;
          if (r14.w != 0) {
            r22.yz = mad((int2)r13.zz, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.z, cb2[52].x, r22.y, u2.xxxx
          r13.z = samp0[]..swiz;
            r13.z = (int)r13.z | 4;
            GBufferDiffuseColor[viewID].r22.y = u2.x;
            GBufferDiffuseColor[viewID].r22.z = u2.x;
          }
          r13.z = (int)r3.z + 257;
          r10.w = cmp((int)r10.w != 1);
          if (r10.w != 0) {
            r10.w = abs(r8.w) * -0.200000003 + 0.400000006;
            r26.xyz = r12.xyz * r10.www + r11.xyz;
            r35.xyz = lightConstantsCB[r5.z].data[6].yzw;
            r35.w = lightConstantsCB[r5.z].data[7].x;
            r10.w = dot(r35.xyzw, r26.xyzw);
            r14.w = dot(r34.xyzw, r26.xyzw);
            r17.w = cmp(r14.w >= r10.w);
            if (r17.w != 0) {
              r34.xyz = lightConstantsCB[r5.z].data[4].yzw;
              r34.w = lightConstantsCB[r5.z].data[5].x;
              r25.x = dot(r34.xyzw, r26.xyzw);
              r34.xyz = lightConstantsCB[r5.z].data[5].yzw;
              r34.w = lightConstantsCB[r5.z].data[6].x;
              r25.y = dot(r34.xyzw, r26.xyzw);
              r22.yz = r25.xy / r14.ww;
              r22.yz = saturate(r22.yz * float2(0.5,-0.5) + float2(0.5,0.5));
              r26.x = r22.y * lightConstantsCB[r5.z].data[8].y + lightConstantsCB[r5.z].data[8].z;
              r26.y = r22.z * lightConstantsCB[r5.z].data[8].w + lightConstantsCB[r5.z].data[9].x;
              r10.w = r10.w / r14.w;
              r10.w = max(6.10351563e-05, r10.w);
              r14.w = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
              if (enableDitheredShadow != 0) {
                r34.z = (uint)r14.w;
                r17.w = 0;
                r18.w = 0;
                while (true) {
                  r22.y = cmp((int)r18.w >= 8);
                  if (r22.y != 0) break;
                  r25.x = dot(icb[r18.w+0].xy, r29.xy);
                  r25.y = dot(icb[r18.w+0].yx, r29.xz);
                  r34.xy = r25.xy * lightConstantsCB[r5.z].data[3].yy + r26.xy;
                  r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r10.w).x;
                  r17.w = r22.y * 0.125 + r17.w;
                  r18.w = (int)r18.w + 1;
                }
              } else {
                r26.z = (uint)r14.w;
                r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r10.w).x;
              }
              r10.w = r17.w * r17.w;
              r10.w = r10.w * r17.w;
            } else {
              r10.w = 1;
            }
          } else {
            r10.w = 1;
          }
          r10.w = r12.w * r10.w;
          r12.w = cmp(0 < r10.w);
          if (r12.w != 0) {
            r12.w = lightConstantsCB[r5.z].data[1].z * r1.w;
            r12.w = r12.w * r9.w;
            if (4 == 0) r14.w = 0; else if (4+16 < 32) {             r14.w = (uint)lightConstantsCB[r5.z].data[1].w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);            } else r14.w = (uint)lightConstantsCB[r5.z].data[1].w >> 16;
            r18.w = cmp(0 < (uint)r14.w);
            r18.w = r3.x ? r18.w : 0;
            if (r18.w != 0) {
              r14.w = (int)r14.w + numLights;
              r14.w = mad((int)r14.w, 15, -15);
              r18.w = abs(r8.w) * -0.200000003 + 0.400000006;
              r27.xyz = r12.xyz * r18.www + r11.xyz;
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
              r10.w = r14.w * r10.w;
            } else {
              if (4 == 0) r5.z = 0; else if (4+20 < 32) {               r5.z = (uint)lightConstantsCB[r5.z].data[1].w << (32-(4 + 20)); r5.z = (uint)r5.z >> (32-4);              } else r5.z = (uint)lightConstantsCB[r5.z].data[1].w >> 20;
              r14.w = cmp(0 < (uint)r5.z);
              r14.w = r3.y ? r14.w : 0;
              if (r14.w != 0) {
                r5.z = (int)r5.z + numLights;
                r5.z = mad((int)r5.z, 15, -15);
                r14.w = abs(r8.w) * -0.200000003 + 0.400000006;
                r28.xyz = r12.xyz * r14.www + r11.xyz;
                r34.xyz = lightConstantsCB[r5.z].data[6].yzw;
                r34.w = lightConstantsCB[r5.z].data[7].x;
                r14.w = dot(r34.xyzw, r28.xyzw);
                r34.xyz = lightConstantsCB[r5.z].data[7].yzw;
                r34.w = lightConstantsCB[r5.z].data[8].x;
                r18.w = dot(r34.xyzw, r28.xyzw);
                r22.y = cmp(r18.w < r14.w);
                if (r22.y == 0) {
                  r34.xyz = lightConstantsCB[r5.z].data[4].yzw;
                  r34.w = lightConstantsCB[r5.z].data[5].x;
                  r25.x = dot(r34.xyzw, r28.xyzw);
                  r34.xyz = lightConstantsCB[r5.z].data[5].yzw;
                  r34.w = lightConstantsCB[r5.z].data[6].x;
                  r25.y = dot(r34.xyzw, r28.xyzw);
                  r24.yz = r25.xy / r18.ww;
                  r24.yz = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r25.x = lightConstantsCB[r5.z].data[9].w + r24.y;
                  r25.y = lightConstantsCB[r5.z].data[10].x + r24.z;
                  r24.yz = lightConstantsCB[r5.z].data[9].yz * r25.xy;
                  r25.xy = lightConstantsCB[r5.z].data[3].yy / lightConstantsCB[r5.z].data[8].yw;
                  r26.xy = float2(1,1) + -r25.xy;
                  r26.xy = cmp(r24.yz >= r26.xy);
                  r25.xy = cmp(r25.xy >= r24.yz);
                  r25.xy = (int2)r25.xy | (int2)r26.xy;
                  r22.w = (int)r25.y | (int)r25.x;
                  if (r22.w == 0) {
                    r24.yz = saturate(r24.yz);
                    r26.x = r24.y * lightConstantsCB[r5.z].data[8].y + lightConstantsCB[r5.z].data[8].z;
                    r26.y = r24.z * lightConstantsCB[r5.z].data[8].w + lightConstantsCB[r5.z].data[9].x;
                    r24.y = lightConstantsCB[r5.z].data[10].z * r18.w;
                    r14.w = lightConstantsCB[r5.z].data[10].y * r18.w + r14.w;
                    r14.w = r14.w / r24.y;
                  }
                } else {
                  r22.w = -1;
                }
                r18.w = (int)r22.y | (int)r22.w;
                if (r18.w == 0) {
                  r14.w = max(6.10351563e-05, r14.w);
                  r18.w = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r27.z = (uint)r18.w;
                    r22.yw = float2(0,0);
                    while (true) {
                      r24.y = cmp((int)r22.w >= 8);
                      if (r24.y != 0) break;
                      r25.x = dot(icb[r22.w+0].xy, r31.xy);
                      r25.y = dot(icb[r22.w+0].yx, r31.xz);
                      r27.xy = r25.xy * lightConstantsCB[r5.z].data[3].yy + r26.xy;
                      r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r14.w).x;
                      r22.y = r24.y * 0.125 + r22.y;
                      r22.w = (int)r22.w + 1;
                    }
                  } else {
                    r26.z = (uint)r18.w;
                    r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r14.w).x;
                  }
                  r5.z = r22.y * r22.y;
                  r5.z = r5.z * r22.y;
                } else {
                  r5.z = 1;
                }
                r10.w = r10.w * r5.z;
              }
            }
            r5.z = -r9.w * r2.x + 1;
            r5.z = r5.z * r5.z;
            r5.z = -r5.z * 0.620000005 + 0.620000005;
            r5.z = r5.z + -r9.w;
            r5.z = r2.z * r5.z + r9.w;
            r5.z = r5.z * r10.w;
            r8.w = cmp(0 < r8.w);
            r26.xyz = r5.zzz * r21.yzw + r16.yzw;
            r23.xyz = r23.xyz * r7.www + r5.xyw;
            r5.z = dot(r23.xyz, r23.xyz);
            r5.z = rsqrt(r5.z);
            r23.xyz = r23.xyz * r5.zzz;
            r5.z = dot(r23.xyz, r5.xyw);
            r7.w = dot(r12.xyz, r23.xyz);
            r14.w = abs(r7.w) * r1.w + -abs(r7.w);
            r7.w = abs(r7.w) * r14.w + 1;
            r9.w = r9.w * r2.y + r3.w;
            r7.w = r7.w * r7.w;
            r7.w = r7.w * r9.w;
            r7.w = rcp(r7.w);
            r7.w = r7.w * r12.w;
            r7.w = r10.w * r7.w;
            r7.w = 0.25 * r7.w;
            r23.xyz = r7.www * r21.yzw + r33.xyz;
            r5.z = saturate(1 + -r5.z);
            r9.w = r5.z * r5.z;
            r9.w = r9.w * r9.w;
            r5.z = r9.w * r5.z;
            r5.z = r7.w * r5.z;
            r21.yzw = r5.zzz * r21.yzw + r32.xyz;
            r16.yzw = r8.www ? r26.xyz : r16.yzw;
            r32.xyz = r8.www ? r21.yzw : r32.xyz;
            r33.xyz = r8.www ? r23.xyz : r33.xyz;
            r5.z = (int)r13.z & 15;
            r7.w = (int)r5.z + -1;
            r7.w = cmp((uint)r7.w < 32);
            r7.w = r7.w ? r2.w : 0;
            if (r7.w != 0) {
              r21.yz = mad((int2)r5.zz, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r5.z, cb2[52].x, r21.y, u2.xxxx
            r5.z = samp0[]..swiz;
              r5.z = (int)r5.z | 8;
              GBufferDiffuseColor[viewID].r21.y = u2.x;
              GBufferDiffuseColor[viewID].r21.z = u2.x;
            }
            r3.z = (int)r3.z + 0x00010101;
          } else {
            r3.z = r13.z;
          }
        } else {
          r3.z = r6.w;
        }
      } else {
        r3.z = r6.w;
      }
      break;
      default :
      break;
    }
    r4.z = (int)r4.z + 1;
  }
  r4.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.y = (uint)r4.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.y == (int)r1.z);
  r1.zw = r1.zz ? r2.yz : float2(-1,0);
  r2.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.y == (int)r2.x);
  r2.xy = r2.xx ? r2.yz : float2(-1,0);
  r3.xyw = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r3.x;
  r2.z = cmp((int)r0.y == (int)r2.z);
  r3.xy = r2.zz ? r3.yw : float2(-1,0);
  r5.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r5.x;
  r0.y = cmp((int)r0.y == (int)r2.z);
  r5.xy = r0.yy ? r5.yz : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.z = r3.x;
  r7.w = r5.x;
  r7.xyzw = r7.xyzw + -r4.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.y = r7.x + r7.y;
  r0.y = r0.y + r7.z;
  r0.y = r0.y + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r3.y + r1.z;
  r1.z = r7.w * r5.y + r1.z;
  r4.w = r1.z / r0.y;
  r0.y = cmp(0 >= r0.y);
  r4.yz = r0.yy ? float2(0,0) : r4.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.y = cmp((int)r1.w == (int)r1.z);
  r2.xyz = r0.yyy ? r4.xyz : r4.xzy;
  r0.y = -r2.z * 0.5 + r2.x;
  r4.y = r2.z + r0.y;
  r4.z = -r2.y * 0.5 + r0.y;
  r4.x = r4.z + r2.y;
  r2.xyz = float3(1,1,1) + -r4.xyz;
  r2.xyz = r32.xyz * r2.xyz;
  r2.xyz = r33.xyz * r4.xyz + r2.xyz;
  r2.xyz = r16.yzw * r6.xyz + r2.xyz;
  r0.y = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.y != 0) {
    r0.y = dot(r11.xyz, r11.xyz);
    r1.z = rsqrt(r0.y);
    r3.xyw = r11.xyz * r1.zzz;
    r0.y = sqrt(r0.y);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.yy * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r1.z = r0.y * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r0.y = -fogConstants.atmospherehazebasedist + r0.y;
    r0.y = saturate(fogConstants.atmospherehazefadedist * r0.y);
    r0.y = r1.w * r0.y;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyw = fogConstants.atmosphereMieDensity.xyz * r0.yyy;
    r3.xyw = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyw;
    r3.xyw = fogConstants.atmosphereInScatterIntensity * r3.xyw;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyw = r5.xyz * r3.xyw;
    r3.xyw = r2.xyz * r4.xyz + r3.xyw;
  } else {
    r0.y = fogConstants.heightFalloff * r11.z;
    r1.z = fogConstants.heightFalloff * r11.z + fogConstants.K0;
    r1.w = cmp(abs(r0.y) < 9.99999975e-05);
    r4.x = min(64, r1.z);
    r4.x = 1.44269502 * r4.x;
    r4.x = exp2(r4.x);
    r4.y = saturate(fogConstants.K0b);
    r4.z = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.z ? r4.x : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.y = r1.w ? 1 : r0.y;
    r0.y = r1.z / r0.y;
    r0.y = r1.w ? r4.y : r0.y;
    r0.y = fogConstants.expMul * r0.y;
    r1.z = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r1.z);
    r0.y = r0.y * r1.w + fogConstants.expAdd;
    r0.y = exp2(r0.y);
    r0.y = min(1, r0.y);
    r0.y = 1 + -r0.y;
    r1.z = rsqrt(r1.z);
    r4.xyz = r11.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.y = r4.w * r0.y;
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyw = r0.yyy * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyw;
  r3.xyw = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyw ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.y = cmp(0 < permuteHighlight);
  r4.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r4.xz != int2(0,0));
  r3.xy = cmp((int2)r4.yw == int2(3,12));
  r1.zw = r1.zw ? r3.xy : 0;
  r4.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 0);
  r1.z = r1.z ? r1.w : 0;
  r4.z = r1.z ? 0.200000 : 0;
  r3.xyw = r4.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyw = r3.xyw * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.yyy ? r3.xyw : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.y = (int)r3.z & 7;
        break;
        case 2 :        if (3 == 0) r0.y = 0; else if (3+8 < 32) {         r0.y = (uint)r3.z << (32-(3 + 8)); r0.y = (uint)r0.y >> (32-3);        } else r0.y = (uint)r3.z >> 8;
        break;
        case 3 :        r0.y = (uint)r3.z >> 16;
        break;
        case 4 :        r0.y = (int)r0.x & 15;
        break;
        case 5 :        r0.y = (uint)r0.x >> 8;
        break;
        default :
        r0.y = 0;
        break;
      }
      r0.y = (uint)r0.y;
      r0.y = drawNumLighstScale * r0.y;
      r3.xyw = r0.yyy * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyw + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r2.w != 0) {
    r1.xyz = eyeOffset.xyz + r11.xyz;
    r1.w = (int)r3.z & 7;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.y = (int)r0.x & 15;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.y = (int)r3.z & 7;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.y
    InterlockedAdd(dest, value, orig_value);
    if (3 == 0) r1.x = 0; else if (3+8 < 32) {     r1.x = (uint)r3.z << (32-(3 + 8)); r1.x = (uint)r1.x >> (32-3);    } else r1.x = (uint)r3.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (uint)r3.z >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.y
    InterlockedAdd(dest, value, orig_value);
    r1.z = (int)r0.x & 15;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.z
    InterlockedAdd(dest, value, orig_value);
    r0.x = (uint)r0.x >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r0.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r0.y
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
    atomic_umax g2, l(16), r0.x
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