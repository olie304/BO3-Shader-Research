// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:02 2021

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
  r0.x = mad(permuteStride, 3, (int)vThreadGroupID.x);
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
  r1.z = r0.w ? -0.5 : -0.00146627566;
  r1.z = r2.z + r1.z;
  r2.y = saturate(2.00982332 * r1.z);
  r1.z = dot(-r5.xyz, -r5.xyz);
  r1.z = rsqrt(r1.z);
  r12.xyz = -r5.xyz * r1.zzz;
  r1.w = dot(r3.yz, float2(0.0671105608,0.00583714992));
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
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.w = dot(-r12.xyz, r11.xyz);
  r1.w = r1.w + r1.w;
  r17.xyz = r11.xyz * -r1.www + -r12.xyz;
  r1.w = 17 * r2.y;
  r1.w = exp2(r1.w);
  r1.w = 2 + r1.w;
  r1.w = 2 / r1.w;
  r2.z = sqrt(r1.w);
  r3.yz = float2(0.5,0.5) * renderTargetSize.xy;
  r3.yz = (uint2)r3.yz;
  r3.yz = cmp((int2)r1.xy == (int2)r3.yz);
  r2.w = r3.z ? r3.y : 0;
  r3.y = dot(r11.xyz, sunConstants.wldDir.xyz);
  r3.z = saturate(r3.y);
  r3.w = r0.w ? abs(r3.y) : r3.z;
  r6.w = cmp(0 >= r3.w);
  if (r6.w != 0) {
    r7.w = 0;
  }
  if (r6.w == 0) {
    r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r5.yyy;
    r15.yzw = r5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.yzw;
    r15.yzw = r5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.yzw;
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
        r12.w = max(abs(r13.z), abs(r13.w));
        r9.w = sunConstants.splitPinTransform[r10.w].z * r12.w;
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
      r12.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r12.w = r12.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r12.w = (uint)r12.w;
      r12.w = (int)r12.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r12.w, l(0), t23.xxxx
    r13.z = samp0[]..swiz;
      r13.w = (int)r13.z & 0x40000000;
      r14.w = (uint)r13.z << 2;
      if (r13.w == 0) {
        r13.w = (int)r13.z & 0x01ffffff;
        r18.x = (int)r12.w + (int)r13.w;
        r12.w = (uint)r13.z >> 25;
        r12.w = (uint)r12.w;
        r16.yzw = r16.yzw * r12.www;
        r16.yzw = frac(r16.yzw);
        r16.yzw = float3(128,128,128) * r16.yzw;
        r16.yzw = (uint3)r16.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r13.zw = (uint2)r16.wz >> int2(6,6);
        r12.w = (int)r18.z & 0xc0000000;
        r18.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r13.w = r13.w ? r18.z : r18.w;
        r18.w = (uint)r13.w >> 13;
        r13.z = r13.z ? r18.w : r13.w;
        r13.z = (int)r13.z & 8191;
        r19.x = (int)r13.z + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r19.xyz = r12.www ? r18.xyz : r19.xyz;
        r20.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r16.wz >> (uint2)r20.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r18.w = (int)r19.z & 0xc0000000;
        r19.w = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r13.w = r13.w ? r19.z : r19.w;
        r19.w = (uint)r13.w >> 13;
        r13.z = r13.z ? r19.w : r13.w;
        r13.z = (int)r13.z & 8191;
        r20.x = (int)r13.z + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r19.xyz = r18.www ? r19.xyz : r20.xzw;
        r18.xyz = r12.www ? r18.xyz : r19.xyz;
        r12.w = (int)r18.z & 0xc0000000;
        if (r12.w == 0) {
          r12.w = (int)-r18.y + 6;
          r13.zw = (uint2)r16.wz >> (uint2)r12.ww;
          r12.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r12.w = (uint)r12.w >> (uint)r13.z;
          r12.w = (int)r12.w & 1023;
          r19.x = (int)r12.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r18.yy + int2(1,2);
          r12.w = (int)-r19.y + 6;
          r13.zw = (uint2)r16.wz >> (uint2)r12.ww;
          r12.w = (int)r19.w & 0xc0000000;
          r18.y = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r18.y >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r20.x = (int)r13.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r12.www ? r19.xyw : r20.xyz;
          r13.z = (int)-r20.y + 6;
          r13.zw = (uint2)r16.wz >> (uint2)r13.zz;
          r18.y = (int)r20.z & 0xc0000000;
          r18.w = (int)r20.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r18.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r21.x = (int)r13.z + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
        r21.y = samp0[]..swiz;
          r13.zw = r18.yy ? r20.xz : r21.xy;
          r18.xz = r12.ww ? r19.xw : r13.zw;
        }
        r12.w = (int)r18.z & 0xc0000000;
        if (r12.w == 0) {
          if (14 == 0) r13.z = 0; else if (14+15 < 32) {           r13.z = (uint)r18.z << (32-(14 + 15)); r13.z = (uint)r13.z >> (32-14);          } else r13.z = (uint)r18.z >> 15;
          r13.z = (uint)r13.z;
          r13.z = sunConstants.sstLightingConstants.constants.spanInInches * r13.z;
          r18.yw = (int2)r18.zz & int2(32767,536870912);
          r13.w = (uint)r18.y;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.zw = float2(6.10388815e-05,3.05185094e-05) * r13.zw;
          r18.y = (int)r16.z & 3;
          r18.y = (int)r18.y + (int)r18.x;
          r18.y = (int)r18.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r16.y = (uint)r18.y >> (uint)r19.x;
          r16.y = (int)r16.y & 255;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r13.w;
          r16.y = r16.y * 0.00392156886 + r13.z;
          r16.z = (int)r19.y + 1;
          if (1 == 0) r16.w = 0; else if (1+1 < 32) {           r16.w = (uint)r16.w << (32-(1 + 1)); r16.w = (uint)r16.w >> (32-1);          } else r16.w = (uint)r16.w >> 1;
          r16.z = (int)r16.w + (int)r16.z;
          r16.z = (int)r16.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.z = (uint)r16.z >> (uint)r19.z;
          r16.z = (int)r16.z & 0x0000ffff;
          r16.z = (uint)r16.z;
          r13.w = r16.z * r13.w;
          r13.z = r13.w * 1.52590219e-05 + r13.z;
          r14.w = r18.w ? r16.y : r13.z;
        } else {
          r13.z = (int)r18.z & 0x80000000;
          r13.w = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          r13.z = r13.z ? r13.w : 0;
          r13.w = (uint)r18.z << 2;
          r16.y = (uint)r13.z >> 16;
          r16.y = f16tof32(r16.y);
          r13.z = (int)r13.z & 0x0000ffff;
          r13.z = f16tof32(r13.z);
          r13.w = r15.y * r16.y + r13.w;
          r13.z = r15.z * r13.z + r13.w;
          r14.w = r12.w ? r13.z : r14.w;
        }
      }
      r12.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.w;
      r12.w = cmp(r14.w < r12.w);
      r7.w = r12.w ? 0 : 1;
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
        r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
        r10.w = r12.w + r10.w;
        r10.w = saturate(-1 + r10.w);
        r12.w = r10.w * r10.w;
        r7.w = r12.w * r10.w;
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
        r12.w = 0;
        r14.w = 0;
        while (true) {
          r15.w = cmp((uint)r14.w >= 8);
          if (r15.w != 0) break;
          r15.w = cmp((uint)r9.w < (uint)r14.w);
          r16.yz = r15.ww ? r15.yz : r13.zw;
          r16.w = r15.w ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r10.w].w;
          r15.w = r15.w ? r8.w : r10.w;
          r19.x = dot(icb[r14.w+0].yx, r18.xy);
          r19.y = dot(icb[r14.w+0].yx, r18.yz);
          r19.xy = r19.xy * r16.ww + r16.yz;
          r15.w = (int)r15.w + (int16)sunConstants.splitArrayOffset;
          r19.z = (uint)r15.w;
          r15.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r6.w).x;
          r16.y = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
          r15.w = r16.y + r15.w;
          r15.w = saturate(-1 + r15.w);
          r12.w = r15.w * 0.125 + r12.w;
          r14.w = (int)r14.w + 1;
        }
        r6.w = r12.w * r12.w;
        r7.w = r6.w * r12.w;
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
  r12.w = r8.w * r6.w;
  r12.w = -r12.w * 2.0159049 + r13.w;
  r12.w = exp2(r12.w);
  r12.w = r12.w * r2.x;
  r12.w = 9.70808983 * r12.w;
  r10.w = max(r12.w, r10.w);
  r10.w = max(1.26815999, r10.w);
  if (probeDebug != 0) {
    r12.w = (uint)renderTargetSize.x;
    r12.w = (int)r12.w + 7;
    r12.w = (uint)r12.w >> 3;
    r12.w = mad((int)r0.z, (int)r12.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r12.w = (((uint)r12.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
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
    r14.w = 0;
    r29.z = 0;
    r30.z = 0;
    r16.yz = float2(0,0);
    while (true) {
      r16.w = cmp((uint)r16.z >= numRefProbes);
      if (r16.w != 0) break;
      r16.w = (uint)r16.z >> 5;
      r16.w = (int)r12.w + (int)r16.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t26.xxxx
    r16.w = samp0[]..swiz;
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
      r41.xy = r13.wz;
      r29.w = r14.w;
      r30.w = r29.z;
      r40.w = r30.z;
      r41.z = r16.y;
      r42.xyzw = r25.zwxy;
      r43.xyzw = r28.zwxy;
      r41.w = r16.w;
      while (true) {
        if (r41.w == 0) break;
        r44.x = firstbitlow((uint)r41.w);
        r44.y = 1 << (int)r44.x;
        r44.y = ~(int)r44.y;
        r41.w = (int)r41.w & (int)r44.y;
        r44.x = (int)r16.z + (int)r44.x;
        r44.x = (int)r44.x * 14;
        r44.yzw = -refProbeConstantsCB[r44.x].data[0].xyz + r5.xyz;
        r44.y = dot(r44.yzw, r44.yzw);
        r44.y = sqrt(r44.y);
        r44.y = cmp(probeDebugRadius >= r44.y);
        if (r44.y != 0) {
          r31.yzw = refProbeConstantsCB[r44.x].data[1].xyz;
          r31.x = refProbeConstantsCB[r44.x].data[0].w;
          r32.yzw = refProbeConstantsCB[r44.x].data[2].xyz;
          r32.x = refProbeConstantsCB[r44.x].data[1].w;
          r33.xyz = refProbeConstantsCB[r44.x].data[3].xyz;
          r33.w = refProbeConstantsCB[r44.x].data[4].z;
          r34.yz = refProbeConstantsCB[r44.x].data[4].xy;
          r34.x = refProbeConstantsCB[r44.x].data[3].w;
          r34.w = refProbeConstantsCB[r44.x].data[6].x;
          r35.yzw = refProbeConstantsCB[r44.x].data[5].xyz;
          r35.x = refProbeConstantsCB[r44.x].data[4].w;
          r36.yz = refProbeConstantsCB[r44.x].data[7].yw;
          r36.x = refProbeConstantsCB[r44.x].data[6].y;
          r36.w = refProbeConstantsCB[r44.x].data[8].x;
          r37.xyz = refProbeConstantsCB[r44.x].data[8].yzw;
          r37.w = refProbeConstantsCB[r44.x].data[9].x;
          r38.xyz = refProbeConstantsCB[r44.x].data[10].yzw;
          r38.w = refProbeConstantsCB[r44.x].data[11].x;
          r39.xyz = refProbeConstantsCB[r44.x].data[11].yzw;
          r39.w = refProbeConstantsCB[r44.x].data[12].x;
          r40.xyz = refProbeConstantsCB[r44.x].data[0].xyz;
          r44.yz = refProbeConstantsCB[r44.x].data[13].yz;
          r29.w = -1;
          r30.w = refProbeConstantsCB[r44.x].data[2].w;
          r40.w = refProbeConstantsCB[r44.x].data[5].w;
          r41.z = refProbeConstantsCB[r44.x].data[7].z;
          r42.xyz = refProbeConstantsCB[r44.x].data[9].yzw;
          r42.w = refProbeConstantsCB[r44.x].data[10].x;
          r43.xyz = refProbeConstantsCB[r44.x].data[12].yzw;
          r43.w = refProbeConstantsCB[r44.x].data[13].x;
          r41.xy = r44.yz;
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
        r13.zw = r41.yx;
        r14.w = -1;
        r29.z = r30.w;
        r30.z = r40.w;
        r16.y = r41.z;
        break;
      }
      r16.z = (int)r16.z + 32;
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
      r13.zw = r41.yx;
      r14.w = r29.w;
      r29.z = r30.w;
      r30.z = r40.w;
      r16.y = r41.z;
      r25.xyzw = r42.zwxy;
      r28.xyzw = r43.zwxy;
    }
    r31.xy = r18.yw;
    r29.x = r18.z;
    r18.yz = r19.xw;
    r29.y = r19.y;
    r31.z = r19.z;
    r19.xyz = r20.yzw;
    r20.yz = r22.xy;
    r30.xy = r22.zw;
    r16.zw = r23.zw;
    r23.z = r24.z;
    r24.z = r25.z;
    r25.z = r26.z;
    r26.z = r27.z;
    r27.z = r28.z;
    r28.z = r13.w;
  } else {
    r14.w = 0;
  }
  if (r14.w != 0) {
    if (r2.w != 0) {
      r22.yzw = eyeOffset.xyz + r15.yzw;
      r22.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r15.yzw = -r15.yzw + r5.xyz;
    r12.w = (int)r16.y & 0x0000ffff;
    if (6 == 0) r13.w = 0; else if (6+25 < 32) {     r13.w = (uint)r16.y << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);    } else r13.w = (uint)r16.y >> 25;
    r18.w = (int)r12.w * 6;
    r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r15.yzw);
    r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.w);
    r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r15.yzw);
    r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r20.w);
    r19.w = r20.w * r19.w;
    r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r15.yzw);
    r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r20.w);
    r19.w = r20.w * r19.w;
    r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r15.yzw);
    r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r20.w);
    r19.w = r20.w * r19.w;
    r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r15.yzw);
    r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r20.w);
    r19.w = r20.w * r19.w;
    r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r15.yzw);
    r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r20.w);
    r22.x = r19.w * r18.w;
    r18.w = (int)r21.w & 1;
    r22.yz = float2(0,1);
    r22.xy = r18.ww ? r22.xy : r22.zx;
    r32.x = 1;
    r18.w = r21.w;
    r33.xy = r22.xy;
    r19.w = 1;
    while (true) {
      r20.w = cmp((int)r19.w >= (int)r13.w);
      if (r20.w != 0) break;
      r20.w = (int)r12.w + (int)r19.w;
      r20.w = (int)r20.w * 6;
      r22.z = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r15.yzw);
      r22.z = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r22.z);
      r22.z = r33.x * r22.z;
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
      r33.x = r22.z * r20.w;
      r22.w = (uint)r18.w >> 2;
      if (1 == 0) r23.w = 0; else if (1+2 < 32) {       r23.w = (uint)r18.w << (32-(1 + 2)); r23.w = (uint)r23.w >> (32-1);      } else r23.w = (uint)r18.w >> 2;
      r29.w = (int)r22.w & 2;
      r30.w = max(r33.y, r33.x);
      r20.w = -r22.z * r20.w + 1;
      r20.w = r33.y * r20.w;
      r32.y = r29.w ? r20.w : r30.w;
      r33.xy = r23.ww ? r33.xy : r32.xy;
      r19.w = (int)r19.w + 1;
      r18.w = r22.w;
    }
    r33.y = saturate(r33.y);
    r22.w = r33.y * r16.z;
    r12.w = cmp(0 < r22.w);
    if (r12.w != 0) {
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r12.w, cb2[52].x, l(880), u2.xxxx
      r12.w = samp0[]..swiz;
        r12.w = (int)r12.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r12.w = r22.w * r16.w;
      r13.w = dot(r17.xyz, r23.xyz);
      r16.z = dot(r15.yzw, r23.xyz);
      r16.z = r16.z + -r24.w;
      r16.w = cmp(r16.z >= 0);
      r16.z = max(abs(r16.z), r9.w);
      r16.z = r16.w ? r16.z : -r16.z;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r16.z / r13.w;
      r13.w = min(131072, abs(r13.w));
      r16.z = dot(r17.xyz, r24.xyz);
      r16.w = dot(r15.yzw, r24.xyz);
      r16.w = r16.w + -r25.w;
      r18.w = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r9.w);
      r16.w = r18.w ? r16.w : -r16.w;
      r16.z = max(1.00000001e-07, -r16.z);
      r16.z = r16.w / r16.z;
      r13.w = min(abs(r16.z), r13.w);
      r16.z = dot(r17.xyz, r25.xyz);
      r16.w = dot(r15.yzw, r25.xyz);
      r16.w = r16.w + -r26.w;
      r18.w = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r9.w);
      r16.w = r18.w ? r16.w : -r16.w;
      r16.z = max(1.00000001e-07, -r16.z);
      r16.z = r16.w / r16.z;
      r13.w = min(abs(r16.z), r13.w);
      r16.z = dot(r17.xyz, r26.xyz);
      r16.w = dot(r15.yzw, r26.xyz);
      r16.w = r16.w + -r27.w;
      r18.w = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r9.w);
      r16.w = r18.w ? r16.w : -r16.w;
      r16.z = max(1.00000001e-07, -r16.z);
      r16.z = r16.w / r16.z;
      r13.w = min(abs(r16.z), r13.w);
      r16.z = dot(r17.xyz, r27.xyz);
      r16.w = dot(r15.yzw, r27.xyz);
      r16.w = r16.w + -r28.w;
      r18.w = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r9.w);
      r16.w = r18.w ? r16.w : -r16.w;
      r16.z = max(1.00000001e-07, -r16.z);
      r16.z = r16.w / r16.z;
      r13.w = min(abs(r16.z), r13.w);
      r16.z = dot(r17.xyz, r28.xyz);
      r16.w = dot(r15.yzw, r28.xyz);
      r13.z = r16.w + -r13.z;
      r16.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r9.w);
      r13.z = r16.w ? r13.z : -r13.z;
      r16.z = max(1.00000001e-07, -r16.z);
      r13.z = r13.z / r16.z;
      r13.z = min(r13.w, abs(r13.z));
      r21.xyz = r21.xyz + r15.yzw;
      r21.xyz = r17.xyz * r13.zzz + r21.xyz;
      r13.w = dot(r21.xyz, r21.xyz);
      r13.w = sqrt(r13.w);
      r13.z = r13.z / r13.w;
      r13.z = r13.z + r13.z;
      r13.z = sqrt(r13.z);
      r13.z = r6.w * 5 + r13.z;
      r13.z = -0.844799995 + r13.z;
      r23.x = dot(r21.xyz, r31.xyz);
      r23.y = dot(r21.xyz, r18.xyz);
      r23.z = dot(r21.xyz, r29.xyz);
      if (9 == 0) r13.w = 0; else if (9+16 < 32) {       r13.w = (uint)r16.y << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);      } else r13.w = (uint)r16.y >> 16;
      r23.w = (uint)r13.w;
      r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r23.xyzw, r13.z).xyz;
      r21.xyz = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
      r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
      r13.z = (int)r21.y | (int)r21.x;
      r13.z = (int)r21.z | (int)r13.z;
      r16.yzw = r13.zzz ? float3(1,1,0) : r16.yzw;
      r21.x = dot(r15.yzw, r31.xyz);
      r21.y = dot(r15.yzw, r18.xyz);
      r21.z = dot(r15.yzw, r29.xyz);
      r15.yzw = saturate(r21.xyz * r19.xyz + float3(0.5,0.5,0.5));
      r15.yzw = r15.yzw * r20.xyz + r30.xyz;
      r23.x = dot(r11.xyz, r31.xyz);
      r23.y = dot(r11.xyz, r18.xyz);
      r23.z = dot(r11.xyz, r29.xyz);
      r18.xyz = cmp(float3(0,0,0) < r23.xyz);
      r19.z = r18.x ? 0 : 0.5;
      r19.xy = float2(0,0);
      r19.xyz = r19.xyz + r15.yzw;
      r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r20.xyz = r23.xyz * r23.xyz;
      r20.xyz = r20.xyz * r12.www;
      r21.z = r18.y ? 0 : 0.5;
      r21.xy = float2(0,0);
      r18.xyw = r21.xyz + r15.yzw;
      r18.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyw, 0).xyz;
      r18.xyw = r18.xyw * r20.yyy;
      r18.xyw = r19.xyz * r20.xxx + r18.xyw;
      r19.z = r18.z ? 0 : 0.5;
      r19.xy = float2(0,0);
      r15.yzw = r19.xyz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r20.zzz + r18.xyw;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r23.xyzw, 6).xyz;
      r19.xyz = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
      r19.xyz = cmp((int3)r19.xyz == int3(2139095040,2139095040,2139095040));
      r13.z = (int)r19.y | (int)r19.x;
      r13.z = (int)r19.z | (int)r13.z;
      r18.xyz = r13.zzz ? float3(1,1,0) : r18.xyz;
      r15.yzw = r18.xyz * r15.yzw;
      r13.z = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r13.w = r13.z * r10.w;
      r15.yzw = r16.yzw * r12.www;
      r12.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r12.w = r10.w * r13.z + r12.w;
      r12.w = r13.w / r12.w;
      r22.xyz = r15.yzw * r12.www;
      r12.w = 257;
    } else {
      r22.xyzw = float4(0,0,0,0);
      r12.w = 1;
    }
    r13.z = -1;
  } else {
    r22.xyzw = float4(0,0,0,0);
    r12.w = 0;
  }
  r13.z = (int)r13.z & (int)r14.w;
  if (r13.z == 0) {
    r13.z = numRefProbes + -numOverrideProbes;
    r13.w = (uint)renderTargetSize.x;
    r13.w = (int)r13.w + 7;
    r13.w = (uint)r13.w >> 3;
    r13.w = mad((int)r0.z, (int)r13.w, (int)r0.y);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r13.w = (((uint)r13.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
    r14.w = (int)r13.z & -32;
    r15.y = (int)r13.z + (int)-r14.w;
    r15.z = numRefProbes & -32;
    r15.w = (int)-r15.z + numRefProbes;
    r18.x = 16;
    r19.yz = float2(0,1);
    r20.xy = float2(0,0);
    r21.xz = float2(1,1);
    r23.xy = float2(0,0);
    r24.xy = float2(0,0);
    r25.xyz = float3(0,0,0);
    r25.w = r22.x;
    r26.xyz = r22.yzw;
    r26.w = r12.w;
    r16.y = r14.w;
    while (true) {
      r16.z = cmp((uint)r16.y >= numRefProbes);
      if (r16.z != 0) break;
      r16.z = (uint)r16.y >> 5;
      r16.z = (int)r13.w + (int)r16.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t26.xxxx
    r16.z = samp0[]..swiz;
      r16.w = cmp((int)r14.w == (int)r16.y);
      bitmask.w = ((~(-1 << r15.y)) << 0) & 0xffffffff;  r19.w = (((uint)0 << 0) & bitmask.w) | ((uint)r16.z & ~bitmask.w);
      r16.z = r16.w ? r19.w : r16.z;
      r16.w = cmp((int)r15.z == (int)r16.y);
      if (r15.w == 0) r19.w = 0; else if (r15.w+0 < 32) {       r19.w = (uint)r16.z << (32-(r15.w + 0)); r19.w = (uint)r19.w >> (32-r15.w);      } else r19.w = (uint)r16.z >> 0;
      r16.z = r16.w ? r19.w : r16.z;
      r27.xyzw = r25.xyzw;
      r28.xyzw = r26.xyzw;
      r16.w = r16.z;
      while (true) {
        if (r16.w == 0) break;
        r19.w = firstbitlow((uint)r16.w);
        r20.w = 1 << (int)r19.w;
        r20.w = ~(int)r20.w;
        r16.w = (int)r16.w & (int)r20.w;
        r19.w = (int)r16.y + (int)r19.w;
        r19.w = (int)r19.w * 14;
        r20.w = (int)r28.w & 255;
        r23.w = cmp((uint)r20.w < 32);
        r23.w = r23.w ? r2.w : 0;
        if (r23.w != 0) {
          r20.w = mad((int)r20.w, 20, 880);
          r18.yzw = refProbeConstantsCB[r19.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r20.w = u2.xyzw;
        }
        r29.w = (int)r28.w + 1;
        r18.yzw = -refProbeConstantsCB[r19.w].data[0].xyz + r5.xyz;
        r20.w = 0x0000ffff & (int)refProbeConstantsCB[r19.w].data[7].z;
        if (6 == 0) r23.w = 0; else if (6+25 < 32) {         r23.w = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(6 + 25)); r23.w = (uint)r23.w >> (32-6);        } else r23.w = (uint)refProbeConstantsCB[r19.w].data[7].z >> 25;
        r24.w = (int)r20.w * 6;
        r30.x = dot(refProbeAttenuationConstantsCB[r24.w].data[0].xyz, r18.yzw);
        r30.x = saturate(refProbeAttenuationConstantsCB[r24.w].data[0].w + r30.x);
        r30.y = dot(refProbeAttenuationConstantsCB[r24.w].data[1].xyz, r18.yzw);
        r30.y = saturate(refProbeAttenuationConstantsCB[r24.w].data[1].w + r30.y);
        r30.x = r30.x * r30.y;
        r30.y = dot(refProbeAttenuationConstantsCB[r24.w].data[2].xyz, r18.yzw);
        r30.y = saturate(refProbeAttenuationConstantsCB[r24.w].data[2].w + r30.y);
        r30.x = r30.x * r30.y;
        r30.y = dot(refProbeAttenuationConstantsCB[r24.w].data[3].xyz, r18.yzw);
        r30.y = saturate(refProbeAttenuationConstantsCB[r24.w].data[3].w + r30.y);
        r30.x = r30.x * r30.y;
        r30.y = dot(refProbeAttenuationConstantsCB[r24.w].data[4].xyz, r18.yzw);
        r30.y = saturate(refProbeAttenuationConstantsCB[r24.w].data[4].w + r30.y);
        r30.x = r30.x * r30.y;
        r30.y = dot(refProbeAttenuationConstantsCB[r24.w].data[5].xyz, r18.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[5].w + r30.y);
        r19.x = r30.x * r24.w;
        r24.w = 1 & (int)refProbeConstantsCB[r19.w].data[6].x;
        r30.xy = r24.ww ? r19.xy : r19.zx;
        r19.x = refProbeConstantsCB[r19.w].data[6].x;
        r31.xy = r30.xy;
        r24.w = 1;
        while (true) {
          r30.z = cmp((int)r24.w >= (int)r23.w);
          if (r30.z != 0) break;
          r30.z = (int)r20.w + (int)r24.w;
          r30.z = (int)r30.z * 6;
          r30.w = dot(refProbeAttenuationConstantsCB[r30.z].data[0].xyz, r18.yzw);
          r30.w = saturate(refProbeAttenuationConstantsCB[r30.z].data[0].w + r30.w);
          r30.w = r31.x * r30.w;
          r31.z = dot(refProbeAttenuationConstantsCB[r30.z].data[1].xyz, r18.yzw);
          r31.z = saturate(refProbeAttenuationConstantsCB[r30.z].data[1].w + r31.z);
          r30.w = r31.z * r30.w;
          r31.z = dot(refProbeAttenuationConstantsCB[r30.z].data[2].xyz, r18.yzw);
          r31.z = saturate(refProbeAttenuationConstantsCB[r30.z].data[2].w + r31.z);
          r30.w = r31.z * r30.w;
          r31.z = dot(refProbeAttenuationConstantsCB[r30.z].data[3].xyz, r18.yzw);
          r31.z = saturate(refProbeAttenuationConstantsCB[r30.z].data[3].w + r31.z);
          r30.w = r31.z * r30.w;
          r31.z = dot(refProbeAttenuationConstantsCB[r30.z].data[4].xyz, r18.yzw);
          r31.z = saturate(refProbeAttenuationConstantsCB[r30.z].data[4].w + r31.z);
          r30.w = r31.z * r30.w;
          r31.z = dot(refProbeAttenuationConstantsCB[r30.z].data[5].xyz, r18.yzw);
          r30.z = saturate(refProbeAttenuationConstantsCB[r30.z].data[5].w + r31.z);
          r31.x = r30.w * r30.z;
          r31.z = (uint)r19.x >> 2;
          if (1 == 0) r31.w = 0; else if (1+2 < 32) {           r31.w = (uint)r19.x << (32-(1 + 2)); r31.w = (uint)r31.w >> (32-1);          } else r31.w = (uint)r19.x >> 2;
          r32.x = (int)r31.z & 2;
          r32.y = max(r31.y, r31.x);
          r30.z = -r30.w * r30.z + 1;
          r30.z = r31.y * r30.z;
          r21.y = r32.x ? r30.z : r32.y;
          r31.xy = r31.ww ? r31.xy : r21.xy;
          r24.w = (int)r24.w + 1;
          r19.x = r31.z;
        }
        r31.y = saturate(r31.y);
        r19.x = refProbeConstantsCB[r19.w].data[6].y * r31.y;
        r20.w = cmp(0 < r19.x);
        if (r20.w != 0) {
          r20.w = (int)r29.w & 255;
          r21.y = (int)r20.w + -1;
          r21.y = cmp((uint)r21.y < 32);
          r21.y = r21.y ? r2.w : 0;
          if (r21.y != 0) {
            r30.xy = mad((int2)r20.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r30.x, u2.xxxx
          r20.w = samp0[]..swiz;
            r20.w = (int)r20.w | 32;
            GBufferDiffuseColor[viewID].r30.x = u2.x;
            GBufferDiffuseColor[viewID].r30.y = u2.x;
          }
          r28.w = (int)r28.w + 257;
          r28.z = r31.y * refProbeConstantsCB[r19.w].data[6].y + r28.z;
          r19.x = refProbeConstantsCB[r19.w].data[7].y * r19.x;
          r30.x = refProbeConstantsCB[r19.w].data[7].w;
          r30.yz = refProbeConstantsCB[r19.w].data[8].xy;
          r20.w = dot(r17.xyz, r30.xyz);
          r21.y = dot(r18.yzw, r30.xyz);
          r21.y = -refProbeConstantsCB[r19.w].data[8].z + r21.y;
          r23.w = cmp(r21.y >= 0);
          r21.y = max(abs(r21.y), r9.w);
          r21.y = r23.w ? r21.y : -r21.y;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.y / r20.w;
          r20.w = min(131072, abs(r20.w));
          r30.x = refProbeConstantsCB[r19.w].data[8].w;
          r30.yz = refProbeConstantsCB[r19.w].data[9].xy;
          r21.y = dot(r17.xyz, r30.xyz);
          r23.w = dot(r18.yzw, r30.xyz);
          r23.w = -refProbeConstantsCB[r19.w].data[9].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r23.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r30.x = refProbeConstantsCB[r19.w].data[9].w;
          r30.yz = refProbeConstantsCB[r19.w].data[10].xy;
          r21.y = dot(r17.xyz, r30.xyz);
          r23.w = dot(r18.yzw, r30.xyz);
          r23.w = -refProbeConstantsCB[r19.w].data[10].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r23.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r30.x = refProbeConstantsCB[r19.w].data[10].w;
          r30.yz = refProbeConstantsCB[r19.w].data[11].xy;
          r21.y = dot(r17.xyz, r30.xyz);
          r23.w = dot(r18.yzw, r30.xyz);
          r23.w = -refProbeConstantsCB[r19.w].data[11].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r23.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r30.x = refProbeConstantsCB[r19.w].data[11].w;
          r30.yz = refProbeConstantsCB[r19.w].data[12].xy;
          r21.y = dot(r17.xyz, r30.xyz);
          r23.w = dot(r18.yzw, r30.xyz);
          r23.w = -refProbeConstantsCB[r19.w].data[12].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r23.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r30.x = refProbeConstantsCB[r19.w].data[12].w;
          r30.yz = refProbeConstantsCB[r19.w].data[13].xy;
          r21.y = dot(r17.xyz, r30.xyz);
          r23.w = dot(r18.yzw, r30.xyz);
          r23.w = -refProbeConstantsCB[r19.w].data[13].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r21.y = max(1.00000001e-07, -r21.y);
          r21.y = r23.w / r21.y;
          r20.w = min(abs(r21.y), r20.w);
          r30.x = refProbeConstantsCB[r19.w].data[3].w + r18.y;
          r30.yz = refProbeConstantsCB[r19.w].data[4].xy + r18.zw;
          r30.xyz = r17.xyz * r20.www + r30.xyz;
          r21.y = dot(r30.xyz, r30.xyz);
          r21.y = sqrt(r21.y);
          r20.w = r20.w / r21.y;
          r20.w = r20.w + r20.w;
          r20.w = sqrt(r20.w);
          r20.w = r6.w * 5 + r20.w;
          r20.w = -0.844799995 + r20.w;
          r32.x = refProbeConstantsCB[r19.w].data[0].w;
          r32.y = refProbeConstantsCB[r19.w].data[1].z;
          r32.z = refProbeConstantsCB[r19.w].data[2].y;
          r33.x = dot(r30.xyz, r32.xyz);
          r34.xy = refProbeConstantsCB[r19.w].data[1].xw;
          r34.z = refProbeConstantsCB[r19.w].data[2].z;
          r33.y = dot(r30.xyz, r34.xyz);
          r35.x = refProbeConstantsCB[r19.w].data[1].y;
          r35.yz = refProbeConstantsCB[r19.w].data[2].xw;
          r33.z = dot(r30.xyz, r35.xyz);
          if (9 == 0) r21.y = 0; else if (9+16 < 32) {           r21.y = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(9 + 16)); r21.y = (uint)r21.y >> (32-9);          } else r21.y = (uint)refProbeConstantsCB[r19.w].data[7].z >> 16;
          r33.w = (uint)r21.y;
          r30.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r20.w).xyz;
          r31.xzw = (int3)r30.xyz & int3(-2147483648,-2147483648,-2147483648);
          r31.xzw = cmp((int3)r31.xzw == int3(2139095040,2139095040,2139095040));
          r20.w = (int)r31.z | (int)r31.x;
          r20.w = (int)r31.w | (int)r20.w;
          r30.xyz = r20.www ? float3(1,1,0) : r30.xyz;
          r36.x = dot(r18.yzw, r32.xyz);
          r36.y = dot(r18.yzw, r34.xyz);
          r36.z = dot(r18.yzw, r35.xyz);
          r18.yzw = saturate(r36.xyz * refProbeConstantsCB[r19.w].data[3].xyz + float3(0.5,0.5,0.5));
          r36.xy = refProbeConstantsCB[r19.w].data[4].zw * r18.yz;
          r36.z = refProbeConstantsCB[r19.w].data[5].x * r18.w;
          r18.yzw = refProbeConstantsCB[r19.w].data[5].yzw + r36.xyz;
          r33.x = dot(r11.xyz, r32.xyz);
          r33.y = dot(r11.xyz, r34.xyz);
          r33.z = dot(r11.xyz, r35.xyz);
          r31.xzw = cmp(float3(0,0,0) < r33.xyz);
          r20.z = r31.x ? 0 : 0.5;
          r32.xyz = r20.xyz + r18.yzw;
          r32.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r32.xyz, 0).xyz;
          r34.xyz = r33.xyz * r33.xyz;
          r34.xyz = r34.xyz * r19.xxx;
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
          r19.w = (int)r32.y | (int)r32.x;
          r19.w = (int)r32.z | (int)r19.w;
          r31.xzw = r19.www ? float3(1,1,0) : r31.xzw;
          r32.xyz = r31.xzw * r18.yzw;
          r19.w = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r27.xyz = r18.yzw * r31.xzw + r27.xyz;
          r18.y = r19.w * r10.w;
          r30.xyz = r30.xyz * r19.xxx;
          r18.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r18.z = r10.w * r19.w + r18.z;
          r18.y = r18.y / r18.z;
          r32.x = r27.w;
          r32.yz = r28.xy;
          r18.yzw = r30.xyz * r18.yyy + r32.xyz;
          r27.w = r18.y;
          r28.xy = r18.zw;
        } else {
          r29.xyz = r28.xyz;
          r28.xyzw = r29.xyzw;
        }
      }
      r25.xyzw = r27.xyzw;
      r26.xyzw = r28.xyzw;
      r16.y = (int)r16.y + 32;
    }
    r18.x = 16;
    r19.yz = float2(0,1);
    r20.xy = float2(0,0);
    r23.xy = float2(0,0);
    r24.xy = float2(0,0);
    r16.yzw = r25.xyz;
    r27.x = r25.w;
    r27.yz = r26.xy;
    r28.xyz = r26.zwz;
    r15.z = 0;
    while (true) {
      r15.w = cmp((uint)r15.z >= (uint)r13.z);
      if (r15.w != 0) break;
      r15.w = (uint)r15.z >> 5;
      r15.w = (int)r13.w + (int)r15.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t26.xxxx
    r15.w = samp0[]..swiz;
      r19.w = cmp((int)r14.w == (int)r15.z);
      if (r15.y == 0) r20.w = 0; else if (r15.y+0 < 32) {       r20.w = (uint)r15.w << (32-(r15.y + 0)); r20.w = (uint)r20.w >> (32-r15.y);      } else r20.w = (uint)r15.w >> 0;
      r15.w = r19.w ? r20.w : r15.w;
      r29.xyz = r16.yzw;
      r30.xyz = r27.xyz;
      r31.xyz = r28.xzy;
      r19.w = r15.w;
      while (true) {
        if (r19.w == 0) break;
        r20.w = firstbitlow((uint)r19.w);
        r21.x = 1 << (int)r20.w;
        r21.x = ~(int)r21.x;
        r19.w = (int)r19.w & (int)r21.x;
        r20.w = (int)r15.z + (int)r20.w;
        r20.w = (int)r20.w * 14;
        r21.x = (int)r31.z & 255;
        r21.y = cmp((uint)r21.x < 32);
        r21.y = r21.y ? r2.w : 0;
        if (r21.y != 0) {
          r21.x = mad((int)r21.x, 20, 880);
          r18.yzw = refProbeConstantsCB[r20.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r21.x = u2.xyzw;
        }
        r21.y = (int)r31.z + 1;
        r18.yzw = -refProbeConstantsCB[r20.w].data[0].xyz + r5.xyz;
        r22.w = 0x0000ffff & (int)refProbeConstantsCB[r20.w].data[7].z;
        if (6 == 0) r23.w = 0; else if (6+25 < 32) {         r23.w = (uint)refProbeConstantsCB[r20.w].data[7].z << (32-(6 + 25)); r23.w = (uint)r23.w >> (32-6);        } else r23.w = (uint)refProbeConstantsCB[r20.w].data[7].z >> 25;
        r24.w = (int)r22.w * 6;
        r27.w = dot(refProbeAttenuationConstantsCB[r24.w].data[0].xyz, r18.yzw);
        r27.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[0].w + r27.w);
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
        r19.x = r27.w * r24.w;
        r24.w = 1 & (int)refProbeConstantsCB[r20.w].data[6].x;
        r32.xy = r24.ww ? r19.xy : r19.zx;
        r19.x = refProbeConstantsCB[r20.w].data[6].x;
        r33.xy = r32.xy;
        r24.w = 1;
        while (true) {
          r27.w = cmp((int)r24.w >= (int)r23.w);
          if (r27.w != 0) break;
          r27.w = (int)r22.w + (int)r24.w;
          r27.w = (int)r27.w * 6;
          r28.w = dot(refProbeAttenuationConstantsCB[r27.w].data[0].xyz, r18.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[0].w + r28.w);
          r28.w = r33.x * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[1].xyz, r18.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[1].w + r29.w);
          r28.w = r29.w * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[2].xyz, r18.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[2].w + r29.w);
          r28.w = r29.w * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[3].xyz, r18.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[3].w + r29.w);
          r28.w = r29.w * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[4].xyz, r18.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[4].w + r29.w);
          r28.w = r29.w * r28.w;
          r29.w = dot(refProbeAttenuationConstantsCB[r27.w].data[5].xyz, r18.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r27.w].data[5].w + r29.w);
          r33.x = r28.w * r27.w;
          r29.w = (uint)r19.x >> 2;
          if (1 == 0) r30.w = 0; else if (1+2 < 32) {           r30.w = (uint)r19.x << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);          } else r30.w = (uint)r19.x >> 2;
          r31.w = (int)r29.w & 2;
          r32.z = max(r33.y, r33.x);
          r27.w = -r28.w * r27.w + 1;
          r27.w = r33.y * r27.w;
          r21.w = r31.w ? r27.w : r32.z;
          r33.xy = r30.ww ? r33.xy : r21.zw;
          r24.w = (int)r24.w + 1;
          r19.x = r29.w;
        }
        r19.x = saturate(r33.y + -r31.y);
        r21.w = refProbeConstantsCB[r20.w].data[6].y * r19.x;
        r22.w = cmp(0 < r21.w);
        if (r22.w != 0) {
          r22.w = (int)r21.y & 255;
          r23.w = (int)r22.w + -1;
          r23.w = cmp((uint)r23.w < 32);
          r23.w = r23.w ? r2.w : 0;
          if (r23.w != 0) {
            r32.xy = mad((int2)r22.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r22.w, cb2[52].x, r32.x, u2.xxxx
          r22.w = samp0[]..swiz;
            r22.w = (int)r22.w | 32;
            GBufferDiffuseColor[viewID].r32.x = u2.x;
            GBufferDiffuseColor[viewID].r32.y = u2.x;
          }
          r31.z = (int)r31.z + 257;
          r31.x = r19.x * refProbeConstantsCB[r20.w].data[6].y + r31.x;
          r19.x = refProbeConstantsCB[r20.w].data[7].y * r21.w;
          r32.x = refProbeConstantsCB[r20.w].data[7].w;
          r32.yz = refProbeConstantsCB[r20.w].data[8].xy;
          r21.w = dot(r17.xyz, r32.xyz);
          r22.w = dot(r18.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r20.w].data[8].z + r22.w;
          r23.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r9.w);
          r22.w = r23.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r21.w = min(131072, abs(r21.w));
          r32.x = refProbeConstantsCB[r20.w].data[8].w;
          r32.yz = refProbeConstantsCB[r20.w].data[9].xy;
          r22.w = dot(r17.xyz, r32.xyz);
          r23.w = dot(r18.yzw, r32.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[9].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r32.x = refProbeConstantsCB[r20.w].data[9].w;
          r32.yz = refProbeConstantsCB[r20.w].data[10].xy;
          r22.w = dot(r17.xyz, r32.xyz);
          r23.w = dot(r18.yzw, r32.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[10].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r32.x = refProbeConstantsCB[r20.w].data[10].w;
          r32.yz = refProbeConstantsCB[r20.w].data[11].xy;
          r22.w = dot(r17.xyz, r32.xyz);
          r23.w = dot(r18.yzw, r32.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[11].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r32.x = refProbeConstantsCB[r20.w].data[11].w;
          r32.yz = refProbeConstantsCB[r20.w].data[12].xy;
          r22.w = dot(r17.xyz, r32.xyz);
          r23.w = dot(r18.yzw, r32.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[12].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r32.x = refProbeConstantsCB[r20.w].data[12].w;
          r32.yz = refProbeConstantsCB[r20.w].data[13].xy;
          r22.w = dot(r17.xyz, r32.xyz);
          r23.w = dot(r18.yzw, r32.xyz);
          r23.w = -refProbeConstantsCB[r20.w].data[13].z + r23.w;
          r24.w = cmp(r23.w >= 0);
          r23.w = max(abs(r23.w), r9.w);
          r23.w = r24.w ? r23.w : -r23.w;
          r22.w = max(1.00000001e-07, -r22.w);
          r22.w = r23.w / r22.w;
          r21.w = min(abs(r22.w), r21.w);
          r32.x = refProbeConstantsCB[r20.w].data[3].w + r18.y;
          r32.yz = refProbeConstantsCB[r20.w].data[4].xy + r18.zw;
          r32.xyz = r17.xyz * r21.www + r32.xyz;
          r22.w = dot(r32.xyz, r32.xyz);
          r22.w = sqrt(r22.w);
          r21.w = r21.w / r22.w;
          r21.w = r21.w + r21.w;
          r21.w = sqrt(r21.w);
          r21.w = r6.w * 5 + r21.w;
          r21.w = -0.844799995 + r21.w;
          r34.x = refProbeConstantsCB[r20.w].data[0].w;
          r34.y = refProbeConstantsCB[r20.w].data[1].z;
          r34.z = refProbeConstantsCB[r20.w].data[2].y;
          r35.x = dot(r32.xyz, r34.xyz);
          r36.xy = refProbeConstantsCB[r20.w].data[1].xw;
          r36.z = refProbeConstantsCB[r20.w].data[2].z;
          r35.y = dot(r32.xyz, r36.xyz);
          r37.x = refProbeConstantsCB[r20.w].data[1].y;
          r37.yz = refProbeConstantsCB[r20.w].data[2].xw;
          r35.z = dot(r32.xyz, r37.xyz);
          if (9 == 0) r22.w = 0; else if (9+16 < 32) {           r22.w = (uint)refProbeConstantsCB[r20.w].data[7].z << (32-(9 + 16)); r22.w = (uint)r22.w >> (32-9);          } else r22.w = (uint)refProbeConstantsCB[r20.w].data[7].z >> 16;
          r35.w = (uint)r22.w;
          r32.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r21.w).xyz;
          r33.xzw = (int3)r32.xyz & int3(-2147483648,-2147483648,-2147483648);
          r33.xzw = cmp((int3)r33.xzw == int3(2139095040,2139095040,2139095040));
          r21.w = (int)r33.z | (int)r33.x;
          r21.w = (int)r33.w | (int)r21.w;
          r32.xyz = r21.www ? float3(1,1,0) : r32.xyz;
          r38.x = dot(r18.yzw, r34.xyz);
          r38.y = dot(r18.yzw, r36.xyz);
          r38.z = dot(r18.yzw, r37.xyz);
          r18.yzw = saturate(r38.xyz * refProbeConstantsCB[r20.w].data[3].xyz + float3(0.5,0.5,0.5));
          r38.xy = refProbeConstantsCB[r20.w].data[4].zw * r18.yz;
          r38.z = refProbeConstantsCB[r20.w].data[5].x * r18.w;
          r18.yzw = refProbeConstantsCB[r20.w].data[5].yzw + r38.xyz;
          r35.x = dot(r11.xyz, r34.xyz);
          r35.y = dot(r11.xyz, r36.xyz);
          r35.z = dot(r11.xyz, r37.xyz);
          r33.xzw = cmp(float3(0,0,0) < r35.xyz);
          r20.z = r33.x ? 0 : 0.5;
          r34.xyz = r20.xyz + r18.yzw;
          r34.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r34.xyz, 0).xyz;
          r36.xyz = r35.xyz * r35.xyz;
          r36.xyz = r36.xyz * r19.xxx;
          r23.z = r33.z ? 0 : 0.5;
          r37.xyz = r23.xyz + r18.yzw;
          r37.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r37.xyz, 0).xyz;
          r37.xyz = r37.xyz * r36.yyy;
          r34.xyz = r34.xyz * r36.xxx + r37.xyz;
          r24.z = r33.w ? 0 : 0.5;
          r18.yzw = r24.xyz + r18.yzw;
          r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
          r18.yzw = r18.yzw * r36.zzz + r34.xyz;
          r33.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
          r34.xyz = (int3)r33.xzw & int3(-2147483648,-2147483648,-2147483648);
          r34.xyz = cmp((int3)r34.xyz == int3(2139095040,2139095040,2139095040));
          r20.z = (int)r34.y | (int)r34.x;
          r20.z = (int)r34.z | (int)r20.z;
          r33.xzw = r20.zzz ? float3(1,1,0) : r33.xzw;
          r34.xyz = r33.xzw * r18.yzw;
          r20.z = dot(r34.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r29.xyz = r18.yzw * r33.xzw + r29.xyz;
          r18.y = r20.z * r10.w;
          r32.xyz = r32.xyz * r19.xxx;
          r18.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r18.z = r10.w * r20.z + r18.z;
          r18.y = r18.y / r18.z;
          r30.xyz = r32.xyz * r18.yyy + r30.xyz;
        } else {
          r21.x = r31.x;
          r31.xz = r21.xy;
        }
      }
      r16.yzw = r29.xyz;
      r27.xyz = r30.xyz;
      r28.xy = r31.xz;
      r15.z = (int)r15.z + 32;
    }
    r6.w = cmp(r26.z >= 1);
    r9.w = (int)r26.w & 0x0000ff00;
    bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r9.w = (((uint)r28.y << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
    r12.w = r6.w ? r9.w : r28.y;
    r6.w = max(1, r28.x);
    r6.w = rcp(r6.w);
    r28.x = saturate(r28.x);
    r15.yzw = r16.yzw * r6.www;
    r22.xyz = r27.xyz * r6.www;
    r9.w = cmp(r28.x < 0.99000001);
    if (r9.w != 0) {
      r12.w = (int)r12.w + 256;
      r9.w = 1 + -r28.x;
      r10.w = sunConstants.globalProbeExposure * r9.w;
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
      r21.xyz = r21.xyz * r10.www;
      r23.xyz = r19.wwy + r18.xyz;
      r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
      r23.xyz = r23.xyz * r21.yyy;
      r20.xyz = r20.xyz * r21.xxx + r23.xyz;
      r18.xyz = r19.wwz + r18.xyz;
      r18.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r18.xyz = r18.xyz * r21.zzz + r20.xyz;
      r11.w = 0;
      r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
      r18.xyz = r19.xyz * r18.xyz;
      r10.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.yzw = r16.yzw * r6.www + r18.xyz;
      r17.w = 0;
      r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r8.w).xyz;
      r6.w = sunConstants.globalProbeExposure * r9.w + -r10.w;
      r6.w = r2.y * r6.w + r10.w;
      r22.xyz = r16.yzw * r6.www + r22.xyz;
    }
  } else {
    r15.yzw = float3(0,0,0);
  }
  r6.w = r2.x + r4.z;
  r6.w = log2(abs(r6.w));
  r6.w = r6.w * r2.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w + r4.z;
  r6.w = saturate(-1 + r6.w);
  r18.xyz = r15.yzw * r4.zzz;
  r19.xyz = r0.www ? r18.yzx : 0;
  r13.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.zw, 0).xy;
  r16.yzw = r22.xyz * r6.www;
  r20.xyz = r16.yzw * r13.zzz;
  r21.xyz = r16.yzw * r13.www;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r6.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r8.w = r2.x * r2.y + r6.w;
  r2.y = r8.w * r2.y;
  r6.w = r8.w * r6.w;
  if (r2.w != 0) {
    r22.x = 3;
    r22.yzw = eyeOffset.xyz;
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
        r22.xyz = eyeOffset.xyz + r5.xyz;
        r22.w = 1;
        r9.w = dot(sunConstants.sunCookieTransform[0].xyzw, r22.xyzw);
        r10.w = dot(sunConstants.sunCookieTransform[1].xyzw, r22.xyzw);
        r22.x = frac(r9.w);
        r22.y = frac(r10.w);
        r9.w = -1 + (int14)sunConstants.sunCookieIndex;
        r22.z = (uint)r9.w;
        r16.yzw = gCookieArray.SampleLevel(samplerLinear_s, r22.xyz, 0).xyz;
        r16.yzw = float3(-1,-1,-1) + r16.yzw;
        r16.yzw = sunConstants.sunCookieIntensity * r16.yzw + float3(1,1,1);
        r16.yzw = sunConstants.color.xyz * r16.yzw;
      } else {
        r16.yzw = sunConstants.color.xyz;
      }
      r9.w = viewmodelSunShadowRaw >> 16;
      r10.w = cmp(0 < (uint)r9.w);
      r10.w = r10.w ? r3.x : 0;
      if (r10.w != 0) {
        r9.w = (int)r9.w + numLights;
        r9.w = mad((int)r9.w, 15, -15);
        r10.w = abs(r3.y) * -0.200000003 + 0.400000006;
        r11.w = cmp(r3.y < 0);
        r11.w = r0.w ? r11.w : 0;
        r10.w = r11.w ? -r10.w : r10.w;
        r22.xyz = r11.xyz * r10.www + r5.xyz;
        r23.xyz = lightConstantsCB[r9.w].data[4].yzw;
        r23.w = lightConstantsCB[r9.w].data[5].x;
        r22.w = 1;
        r23.x = dot(r23.xyzw, r22.xyzw);
        r24.xyz = lightConstantsCB[r9.w].data[5].yzw;
        r24.w = lightConstantsCB[r9.w].data[6].x;
        r23.y = dot(r24.xyzw, r22.xyzw);
        r13.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r23.x = lightConstantsCB[r9.w].data[9].w + r13.z;
        r23.y = lightConstantsCB[r9.w].data[10].x + r13.w;
        r13.zw = lightConstantsCB[r9.w].data[9].yz * r23.xy;
        r23.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
        r23.zw = float2(1,1) + -r23.xy;
        r23.zw = cmp(r13.zw >= r23.zw);
        r23.xy = cmp(r23.xy >= r13.zw);
        r23.xy = (int2)r23.xy | (int2)r23.zw;
        r10.w = (int)r23.y | (int)r23.x;
        if (r10.w == 0) {
          r23.xyz = lightConstantsCB[r9.w].data[6].yzw;
          r23.w = lightConstantsCB[r9.w].data[7].x;
          r10.w = dot(r23.xyzw, r22.xyzw);
          r13.zw = saturate(r13.zw);
          r22.x = r13.z * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
          r22.y = r13.w * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
          r10.w = lightConstantsCB[r9.w].data[10].y + r10.w;
          r10.w = r10.w / lightConstantsCB[r9.w].data[10].z;
          r10.w = max(6.10351563e-05, r10.w);
          r11.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r23.x = -r13.x;
            r24.z = (uint)r11.w;
            r23.y = r14.x;
            r23.z = r13.x;
            r13.zw = float2(0,0);
            while (true) {
              r14.w = cmp((int)r13.w >= 8);
              if (r14.w != 0) break;
              r25.x = dot(icb[r13.w+0].yx, r23.xy);
              r25.y = dot(icb[r13.w+0].yx, r23.yz);
              r24.xy = r25.xy * lightConstantsCB[r9.w].data[3].yy + r22.xy;
              r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r10.w).x;
              r13.z = r14.w * 0.125 + r13.z;
              r13.w = (int)r13.w + 1;
            }
          } else {
            r22.z = (uint)r11.w;
            r13.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r10.w).x;
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
        r11.w = ~(int)r3.x;
        r10.w = r10.w ? r11.w : 0;
        if (r10.w != 0) {
          r9.w = (int)r9.w + numLights;
          r9.w = mad((int)r9.w, 15, -15);
          r10.w = abs(r3.y) * -0.200000003 + 0.400000006;
          r11.w = cmp(r3.y < 0);
          r11.w = r0.w ? r11.w : 0;
          r10.w = r11.w ? -r10.w : r10.w;
          r22.xyz = r11.xyz * r10.www + r5.xyz;
          r23.xyz = lightConstantsCB[r9.w].data[4].yzw;
          r23.w = lightConstantsCB[r9.w].data[5].x;
          r22.w = 1;
          r23.x = dot(r23.xyzw, r22.xyzw);
          r24.xyz = lightConstantsCB[r9.w].data[5].yzw;
          r24.w = lightConstantsCB[r9.w].data[6].x;
          r23.y = dot(r24.xyzw, r22.xyzw);
          r13.zw = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r23.x = lightConstantsCB[r9.w].data[9].w + r13.z;
          r23.y = lightConstantsCB[r9.w].data[10].x + r13.w;
          r13.zw = lightConstantsCB[r9.w].data[9].yz * r23.xy;
          r23.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
          r23.zw = float2(1,1) + -r23.xy;
          r23.zw = cmp(r13.zw >= r23.zw);
          r23.xy = cmp(r23.xy >= r13.zw);
          r23.xy = (int2)r23.xy | (int2)r23.zw;
          r10.w = (int)r23.y | (int)r23.x;
          if (r10.w == 0) {
            r23.xyz = lightConstantsCB[r9.w].data[6].yzw;
            r23.w = lightConstantsCB[r9.w].data[7].x;
            r10.w = dot(r23.xyzw, r22.xyzw);
            r13.zw = saturate(r13.zw);
            r22.x = r13.z * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
            r22.y = r13.w * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
            r10.w = lightConstantsCB[r9.w].data[10].y + r10.w;
            r10.w = r10.w / lightConstantsCB[r9.w].data[10].z;
            r10.w = max(6.10351563e-05, r10.w);
            r11.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r23.x = -r13.x;
              r24.z = (uint)r11.w;
              r23.y = r14.x;
              r23.z = r13.x;
              r13.zw = float2(0,0);
              while (true) {
                r14.w = cmp((int)r13.w >= 8);
                if (r14.w != 0) break;
                r25.x = dot(icb[r13.w+0].yx, r23.xy);
                r25.y = dot(icb[r13.w+0].yx, r23.yz);
                r24.xy = r25.xy * lightConstantsCB[r9.w].data[3].yy + r22.xy;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r10.w).x;
                r13.z = r14.w * 0.125 + r13.z;
                r13.w = (int)r13.w + 1;
              }
            } else {
              r22.z = (uint)r11.w;
              r13.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r10.w).x;
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
      r22.xyz = r3.www * r16.yzw;
      r3.y = cmp(0 < r3.y);
      r22.xyz = r15.yzw * r4.zzz + r22.xyz;
      r15.yzw = -r5.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r1.z = dot(r15.yzw, r15.yzw);
      r1.z = rsqrt(r1.z);
      r15.yzw = r15.yzw * r1.zzz;
      r1.z = dot(r15.yzw, r12.xyz);
      r4.z = dot(r11.xyz, r15.yzw);
      r9.w = abs(r4.z) * r1.w + -abs(r4.z);
      r4.z = abs(r4.z) * r9.w + 1;
      r3.z = r3.z * r2.y + r6.w;
      r4.z = r4.z * r4.z;
      r3.z = r4.z * r3.z;
      r3.z = rcp(r3.z);
      r3.z = r3.z * r8.w;
      r3.z = r7.w * r3.z;
      r3.z = 0.25 * r3.z;
      r23.yzw = r3.zzz * r16.yzw + r21.xyz;
      r1.z = saturate(1 + -r1.z);
      r4.z = r1.z * r1.z;
      r4.z = r4.z * r4.z;
      r1.z = r4.z * r1.z;
      r1.z = r3.z * r1.z;
      r15.yzw = r1.zzz * r16.yzw + r20.xyz;
      r16.yzw = r3.www * r16.yzw + r19.zxy;
      r24.xyz = r0.www ? r16.zwy : 0;
      r22.w = r19.z;
      r18.w = r24.z;
      r18.xyzw = r3.yyyy ? r22.xyzw : r18.xyzw;
      r19.zw = r15.yz;
      r24.zw = r20.xy;
      r22.xyzw = r3.yyyy ? r19.xyzw : r24.xyzw;
      r23.x = r15.w;
      r21.w = r20.z;
      r21.xyzw = r3.yyyy ? r23.yzwx : r21.xyzw;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r1.z, cb2[52].x, l(112), u2.xxxx
      r1.z = samp0[]..swiz;
        r1.z = (int)r1.z | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r19.z = r18.w;
      r19.xy = r22.xy;
      r20.xy = r22.zw;
      r20.z = r21.w;
      r1.z = 0x00010101;
    } else {
      r1.z = 257;
    }
  } else {
    r1.z = 1;
  }
  r3.y = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r22.x = -r13.x;
  r3.z = ~(int)r3.x;
  r2.x = -r2.x * 0.5 + 1;
  r23.x = 2;
  r24.x = 2;
  r5.w = 1;
  r25.w = 1;
  r22.z = r13.x;
  r26.w = 1;
  r27.z = 1;
  r28.w = 1;
  r22.yw = r14.xx;
  r13.y = r22.w;
  r29.w = 1;
  r14.y = r22.x;
  r14.z = r13.x;
  r30.w = 1;
  r31.x = r14.x;
  r31.y = r22.x;
  r31.z = r13.x;
  r32.x = r14.x;
  r32.y = r22.x;
  r32.z = r13.x;
  r33.x = r14.x;
  r33.y = r22.x;
  r33.z = r13.x;
  r15.yzw = r18.xyz;
  r34.xyz = r19.zxy;
  r35.xyz = r20.xyz;
  r16.yzw = r21.xyz;
  r3.w = r1.z;
  r4.z = 0;
  while (true) {
    r7.w = cmp((int)r4.z == 2);
    if (r7.w != 0) break;
    r7.w = r4.z ? r0.x : r3.y;
    r7.w = (int)r7.w * 15;
    if (3 == 0) r8.w = 0; else if (3+24 < 32) {     r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);    } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 24;
    switch (r8.w) {
      case 4 :      if (r2.w != 0) {
        r8.w = (int)r3.w & 7;
        r8.w = mad((int)r8.w, 24, 112);
        r23.yzw = lightConstantsCB[r7.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r8.w = u2.xyzw;
      }
      r8.w = (int)r3.w + 1;
      r9.w = cmp(0 < lightConstantsCB[r7.w].data[6].y);
      r36.xy = lightConstantsCB[r7.w].data[5].zw;
      r36.z = lightConstantsCB[r7.w].data[6].x;
      r23.yzw = -r36.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r7.w].data[0].xyz;
      r37.xyz = r23.yzw + -r5.xyz;
      r10.w = dot(r36.xyz, r37.xyz);
      r11.w = saturate(-r10.w / lightConstantsCB[r7.w].data[6].y);
      r38.xyz = r11.www * r36.xyz + r23.yzw;
      r38.xyz = r9.www ? r38.xyz : lightConstantsCB[r7.w].data[0].xyz;
      r38.xyz = r38.xyz + -r5.xyz;
      r13.z = dot(r38.xyz, r38.xyz);
      r13.w = rsqrt(r13.z);
      r38.xyz = r38.xyz * r13.www;
      r13.w = dot(r11.xyz, r38.xyz);
      r14.w = saturate(r13.w);
      r14.w = r0.w ? abs(r13.w) : r14.w;
      r17.w = cmp(0 < r14.w);
      if (r17.w != 0) {
        r17.w = sqrt(r13.z);
        r18.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
        r13.z = r18.w / r13.z;
        r13.z = min(1, r13.z);
        r38.xy = saturate(r17.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
        r38.zw = r38.xy * r38.xy;
        r38.xy = r38.xy * float2(-2,-2) + float2(3,3);
        r38.xy = r38.zw * r38.xy;
        r13.z = r38.x * r13.z;
        r13.z = r13.z * r38.y;
        r17.w = cmp(0 < r13.z);
        if (r17.w != 0) {
          if (3 == 0) r17.w = 0; else if (3+27 < 32) {           r17.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r17.w = (uint)r17.w >> (32-3);          } else r17.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r18.w = (int)r8.w & 15;
          r19.w = (int)r18.w + -1;
          r19.w = cmp((uint)r19.w < 32);
          r19.w = r19.w ? r2.w : 0;
          if (r19.w != 0) {
            r38.xy = mad((int2)r18.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.w, cb2[52].x, r38.x, u2.xxxx
          r18.w = samp0[]..swiz;
            r18.w = (int)r18.w | 4;
            GBufferDiffuseColor[viewID].r38.x = u2.x;
            GBufferDiffuseColor[viewID].r38.y = u2.x;
          }
          r18.w = (int)r3.w + 257;
          r17.w = cmp((int)r17.w != 1);
          if (r17.w != 0) {
            r17.w = abs(r13.w) * -0.200000003 + 0.400000006;
            r19.w = cmp(r13.w < 0);
            r19.w = r0.w ? r19.w : 0;
            r17.w = r19.w ? -r17.w : r17.w;
            r38.xyz = r11.xyz * r17.www + r5.xyz;
            r38.xyz = -lightConstantsCB[r7.w].data[4].yzw + r38.xyz;
            r17.w = max(abs(r38.y), abs(r38.z));
            r17.w = max(abs(r38.x), r17.w);
            r17.w = lightConstantsCB[r7.w].data[5].x / r17.w;
            r17.w = lightConstantsCB[r7.w].data[5].y + r17.w;
            r19.w = dot(r38.xyz, r38.xyz);
            r19.w = rsqrt(r19.w);
            r17.w = max(6.10351563e-05, r17.w);
            r20.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
            r39.w = (uint)r20.w;
            r20.w = 0;
            r21.w = 0;
            while (true) {
              r27.w = cmp((int)r21.w >= 8);
              if (r27.w != 0) break;
              r40.y = dot(icb[r21.w+0].yx, r22.xy);
              r40.z = dot(icb[r21.w+0].yx, r22.yz);
              r40.yz = lightConstantsCB[r7.w].data[3].yy * r40.yz;
              r40.x = r40.y * r16.x;
              r40.w = r40.y * r15.x;
              r39.xyz = r38.xyz * r19.www + r40.xzw;
              r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyzw, r17.w).x;
              r20.w = r27.w * 0.125 + r20.w;
              r21.w = (int)r21.w + 1;
            }
          } else {
            r20.w = 1;
          }
          r13.z = r20.w * r13.z;
          r17.w = cmp(0 < r13.z);
          if (r17.w != 0) {
            r17.w = lightConstantsCB[r7.w].data[1].z * r1.w;
            r17.w = 0.25 * r17.w;
            r19.w = dot(r36.xyz, r17.xyz);
            r21.w = dot(r17.xyz, r37.xyz);
            r27.w = -r19.w * r19.w + lightConstantsCB[r7.w].data[6].y;
            r10.w = r19.w * r21.w + -r10.w;
            r10.w = saturate(r10.w / r27.w);
            r19.w = r27.w / lightConstantsCB[r7.w].data[6].y;
            r19.w = 10 * r19.w;
            r19.w = min(1, r19.w);
            r10.w = r10.w + -r11.w;
            r10.w = r19.w * r10.w + r11.w;
            r23.yzw = r10.www * r36.xyz + r23.yzw;
            r23.yzw = r9.www ? r23.yzw : lightConstantsCB[r7.w].data[0].xyz;
            r23.yzw = r23.yzw + -r5.xyz;
            r9.w = dot(r23.yzw, r23.yzw);
            r9.w = rsqrt(r9.w);
            r36.xyz = r23.yzw * r9.www;
            if (4 == 0) r10.w = 0; else if (4+16 < 32) {             r10.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r10.w = (uint)r10.w >> (32-4);            } else r10.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
            r11.w = cmp(0 < (uint)r10.w);
            r11.w = r11.w ? r3.x : 0;
            if (r11.w != 0) {
              r10.w = (int)r10.w + numLights;
              r10.w = mad((int)r10.w, 15, -15);
              r11.w = abs(r13.w) * -0.200000003 + 0.400000006;
              r19.w = cmp(r13.w < 0);
              r19.w = r0.w ? r19.w : 0;
              r11.w = r19.w ? -r11.w : r11.w;
              r25.xyz = r11.xyz * r11.www + r5.xyz;
              r37.xyz = lightConstantsCB[r10.w].data[6].yzw;
              r37.w = lightConstantsCB[r10.w].data[7].x;
              r11.w = dot(r37.xyzw, r25.xyzw);
              r37.xyz = lightConstantsCB[r10.w].data[7].yzw;
              r37.w = lightConstantsCB[r10.w].data[8].x;
              r19.w = dot(r37.xyzw, r25.xyzw);
              r21.w = cmp(r19.w < r11.w);
              if (r21.w == 0) {
                r37.xyz = lightConstantsCB[r10.w].data[4].yzw;
                r37.w = lightConstantsCB[r10.w].data[5].x;
                r37.x = dot(r37.xyzw, r25.xyzw);
                r38.xyz = lightConstantsCB[r10.w].data[5].yzw;
                r38.w = lightConstantsCB[r10.w].data[6].x;
                r37.y = dot(r38.xyzw, r25.xyzw);
                r25.xy = r37.xy / r19.ww;
                r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r37.x = lightConstantsCB[r10.w].data[9].w + r25.x;
                r37.y = lightConstantsCB[r10.w].data[10].x + r25.y;
                r25.xy = lightConstantsCB[r10.w].data[9].yz * r37.xy;
                r37.xy = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
                r37.zw = float2(1,1) + -r37.xy;
                r37.zw = cmp(r25.xy >= r37.zw);
                r37.xy = cmp(r37.xy >= r25.xy);
                r37.xy = (int2)r37.xy | (int2)r37.zw;
                r25.z = (int)r37.y | (int)r37.x;
                if (r25.z == 0) {
                  r25.xy = saturate(r25.xy);
                  r37.x = r25.x * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
                  r37.y = r25.y * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
                  r25.x = lightConstantsCB[r10.w].data[10].z * r19.w;
                  r11.w = lightConstantsCB[r10.w].data[10].y * r19.w + r11.w;
                  r11.w = r11.w / r25.x;
                }
              } else {
                r25.z = -1;
              }
              r19.w = (int)r21.w | (int)r25.z;
              if (r19.w == 0) {
                r11.w = max(6.10351563e-05, r11.w);
                r19.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r25.z = (uint)r19.w;
                  r21.w = 0;
                  r27.w = 0;
                  while (true) {
                    r31.w = cmp((int)r27.w >= 8);
                    if (r31.w != 0) break;
                    r38.x = dot(icb[r27.w+0].yx, r22.xw);
                    r38.y = dot(icb[r27.w+0].xy, r13.xy);
                    r25.xy = r38.xy * lightConstantsCB[r10.w].data[3].yy + r37.xy;
                    r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r11.w).x;
                    r21.w = r25.x * 0.125 + r21.w;
                    r27.w = (int)r27.w + 1;
                  }
                } else {
                  r37.z = (uint)r19.w;
                  r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r11.w).x;
                }
                r10.w = r21.w * r21.w;
                r10.w = r10.w * r21.w;
              } else {
                r10.w = 1;
              }
              r13.z = r13.z * r10.w;
            } else {
              if (4 == 0) r10.w = 0; else if (4+20 < 32) {               r10.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r10.w = (uint)r10.w >> (32-4);              } else r10.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
              r11.w = cmp(0 < (uint)r10.w);
              r11.w = r11.w ? r3.z : 0;
              if (r11.w != 0) {
                r10.w = (int)r10.w + numLights;
                r10.w = mad((int)r10.w, 15, -15);
                r11.w = abs(r13.w) * -0.200000003 + 0.400000006;
                r19.w = cmp(r13.w < 0);
                r19.w = r0.w ? r19.w : 0;
                r11.w = r19.w ? -r11.w : r11.w;
                r26.xyz = r11.xyz * r11.www + r5.xyz;
                r37.xyz = lightConstantsCB[r10.w].data[6].yzw;
                r37.w = lightConstantsCB[r10.w].data[7].x;
                r11.w = dot(r37.xyzw, r26.xyzw);
                r37.xyz = lightConstantsCB[r10.w].data[7].yzw;
                r37.w = lightConstantsCB[r10.w].data[8].x;
                r19.w = dot(r37.xyzw, r26.xyzw);
                r25.x = cmp(r19.w < r11.w);
                if (r25.x == 0) {
                  r37.xyz = lightConstantsCB[r10.w].data[4].yzw;
                  r37.w = lightConstantsCB[r10.w].data[5].x;
                  r37.x = dot(r37.xyzw, r26.xyzw);
                  r38.xyz = lightConstantsCB[r10.w].data[5].yzw;
                  r38.w = lightConstantsCB[r10.w].data[6].x;
                  r37.y = dot(r38.xyzw, r26.xyzw);
                  r25.yz = r37.xy / r19.ww;
                  r25.yz = r25.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r26.x = lightConstantsCB[r10.w].data[9].w + r25.y;
                  r26.y = lightConstantsCB[r10.w].data[10].x + r25.z;
                  r25.yz = lightConstantsCB[r10.w].data[9].yz * r26.xy;
                  r26.xy = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
                  r37.xy = float2(1,1) + -r26.xy;
                  r37.xy = cmp(r25.yz >= r37.xy);
                  r26.xy = cmp(r26.xy >= r25.yz);
                  r26.xy = (int2)r26.xy | (int2)r37.xy;
                  r26.x = (int)r26.y | (int)r26.x;
                  if (r26.x == 0) {
                    r25.yz = saturate(r25.yz);
                    r37.x = r25.y * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
                    r37.y = r25.z * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
                    r25.y = lightConstantsCB[r10.w].data[10].z * r19.w;
                    r11.w = lightConstantsCB[r10.w].data[10].y * r19.w + r11.w;
                    r11.w = r11.w / r25.y;
                  }
                } else {
                  r26.x = -1;
                }
                r19.w = (int)r25.x | (int)r26.x;
                if (r19.w == 0) {
                  r11.w = max(6.10351563e-05, r11.w);
                  r19.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r25.z = (uint)r19.w;
                    r26.xy = float2(0,0);
                    while (true) {
                      r26.z = cmp((int)r26.y >= 8);
                      if (r26.z != 0) break;
                      r38.x = dot(icb[r26.y+0].xy, r14.xy);
                      r38.y = dot(icb[r26.y+0].yx, r14.xz);
                      r25.xy = r38.xy * lightConstantsCB[r10.w].data[3].yy + r37.xy;
                      r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r11.w).x;
                      r26.x = r25.x * 0.125 + r26.x;
                      r26.y = (int)r26.y + 1;
                    }
                  } else {
                    r37.z = (uint)r19.w;
                    r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r11.w).x;
                  }
                  r10.w = r26.x * r26.x;
                  r10.w = r10.w * r26.x;
                } else {
                  r10.w = 1;
                }
                r13.z = r13.z * r10.w;
              }
            }
            r10.w = -r14.w * r2.x + 1;
            r10.w = r10.w * r10.w;
            r10.w = -r10.w * 0.620000005 + 0.620000005;
            r10.w = r10.w + -r14.w;
            r10.w = r2.z * r10.w + r14.w;
            r10.w = r10.w * r13.z;
            r25.x = lightConstantsCB[r7.w].data[0].w;
            r25.yz = lightConstantsCB[r7.w].data[1].xy;
            r11.w = cmp(0 < r13.w);
            r37.xyz = r10.www * r25.xyz + r15.yzw;
            r13.w = saturate(dot(r11.xyz, r36.xyz));
            r23.yzw = r23.yzw * r9.www + r12.xyz;
            r9.w = dot(r23.yzw, r23.yzw);
            r9.w = rsqrt(r9.w);
            r23.yzw = r23.yzw * r9.www;
            r9.w = dot(r23.yzw, r12.xyz);
            r14.w = dot(r11.xyz, r23.yzw);
            r19.w = abs(r14.w) * r1.w + -abs(r14.w);
            r14.w = abs(r14.w) * r19.w + 1;
            r19.w = r13.w * r2.y + r6.w;
            r14.w = r14.w * r14.w;
            r14.w = r14.w * r19.w;
            r14.w = rcp(r14.w);
            r13.w = r13.w * r17.w;
            r13.w = r14.w * r13.w;
            r13.w = r13.w * r13.z;
            r23.yzw = r13.www * r25.xyz + r16.yzw;
            r9.w = saturate(1 + -r9.w);
            r14.w = r9.w * r9.w;
            r14.w = r14.w * r14.w;
            r9.w = r14.w * r9.w;
            r9.w = r13.w * r9.w;
            r36.xyz = r9.www * r25.xyz + r35.xyz;
            r25.xyz = r10.www * r25.xyz + r34.xyz;
            r25.xyz = r0.www ? r25.xyz : r34.xyz;
            r15.yzw = r11.www ? r37.xyz : r15.yzw;
            r34.xyz = r11.www ? r34.xyz : r25.xyz;
            r35.xyz = r11.www ? r36.xyz : r35.xyz;
            r16.yzw = r11.www ? r23.yzw : r16.yzw;
            r9.w = (int)r18.w & 15;
            r10.w = (int)r9.w + -1;
            r10.w = cmp((uint)r10.w < 32);
            r10.w = r10.w ? r2.w : 0;
            if (r10.w != 0) {
              r23.yz = mad((int2)r9.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, r23.y, u2.xxxx
            r9.w = samp0[]..swiz;
              r9.w = (int)r9.w | 8;
              GBufferDiffuseColor[viewID].r23.y = u2.x;
              GBufferDiffuseColor[viewID].r23.z = u2.x;
            }
            r3.w = (int)r3.w + 0x00010101;
          } else {
            r3.w = r18.w;
          }
        } else {
          r3.w = r8.w;
        }
      } else {
        r3.w = r8.w;
      }
      break;
      case 2 :      if (r2.w != 0) {
        r8.w = (int)r3.w & 7;
        r8.w = mad((int)r8.w, 24, 112);
        r24.yzw = lightConstantsCB[r7.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r8.w = u2.xyzw;
      }
      r8.w = (int)r3.w + 1;
      r25.xy = lightConstantsCB[r7.w].data[3].zw + -r5.xy;
      r25.z = lightConstantsCB[r7.w].data[4].x + -r5.z;
      r9.w = dot(r25.xyz, r25.xyz);
      r9.w = rsqrt(r9.w);
      r23.yzw = r25.xyz * r9.www;
      r10.w = dot(r11.xyz, r23.yzw);
      r11.w = saturate(r10.w);
      r13.z = r0.w ? abs(r10.w) : r11.w;
      r13.w = cmp(0 < r13.z);
      if (r13.w != 0) {
        r36.xyz = lightConstantsCB[r7.w].data[7].yzw;
        r36.w = lightConstantsCB[r7.w].data[8].x;
        r13.w = dot(r36.xyzw, r5.xyzw);
        r14.w = cmp(r13.w < 1);
        if (r14.w != 0) {
          r23.yzw = float3(1,1,1);
          r14.w = 0;
        } else {
          r24.yzw = lightConstantsCB[r7.w].data[0].xyz + -r5.xyz;
          r17.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
          r18.w = dot(r24.yzw, r24.yzw);
          r17.w = r17.w / r18.w;
          r17.w = min(1, r17.w);
          r24.yz = saturate(r13.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
          r26.yz = r24.yz * r24.yz;
          r24.yz = r24.yz * float2(-2,-2) + float2(3,3);
          r24.yz = r26.yz * r24.yz;
          r17.w = r24.y * r17.w;
          r17.w = r17.w * r24.z;
          r37.xyz = lightConstantsCB[r7.w].data[4].yzw;
          r37.w = lightConstantsCB[r7.w].data[5].x;
          r37.x = dot(r37.xyzw, r5.xyzw);
          r38.xyz = lightConstantsCB[r7.w].data[5].yzw;
          r38.w = lightConstantsCB[r7.w].data[6].x;
          r37.y = dot(r38.xyzw, r5.xyzw);
          r27.xy = r37.xy / r13.ww;
          r13.w = cmp(lightConstantsCB[r7.w].data[10].w < 0.00048828125);
          if (r13.w != 0) {
            r24.yz = saturate(abs(r27.xy) * lightConstantsCB[r7.w].data[12].xy + lightConstantsCB[r7.w].data[12].zw);
            r26.yz = r24.yz * r24.yz;
            r24.yz = r24.yz * float2(-2,-2) + float2(3,3);
            r24.yz = r26.yz * r24.yz;
            r13.w = r24.y * r24.z;
          } else {
            r37.xyzw = saturate(lightConstantsCB[r7.w].data[11].xyzw * abs(r27.yyxx));
            r37.xyzw = log2(r37.xyzw);
            r37.xyzw = lightConstantsCB[r7.w].data[12].zzzz * r37.xyzw;
            r37.xyzw = exp2(r37.xyzw);
            r24.yz = r37.xy + r37.zw;
            r24.yz = log2(r24.yz);
            r24.yz = lightConstantsCB[r7.w].data[12].ww * r24.yz;
            r24.yz = exp2(r24.yz);
            r18.w = lightConstantsCB[r7.w].data[12].x * r24.y;
            r19.w = lightConstantsCB[r7.w].data[12].y * r24.z + -1;
            r18.w = lightConstantsCB[r7.w].data[12].y * r24.z + -r18.w;
            r18.w = saturate(r19.w / r18.w);
            r19.w = r18.w * r18.w;
            r18.w = r18.w * -2 + 3;
            r13.w = r19.w * r18.w;
          }
          r14.w = r17.w * r13.w;
          r13.w = 255 & (int)lightConstantsCB[r7.w].data[14].w;
          if (r13.w != 0) {
            r17.w = dot(lightConstantsCB[r7.w].data[13].xyz, r27.xyz);
            r37.x = lightConstantsCB[r7.w].data[13].w;
            r37.yz = lightConstantsCB[r7.w].data[14].xy;
            r18.w = dot(r37.xyz, r27.xyz);
            r37.x = frac(r17.w);
            r37.y = frac(r18.w);
            r13.w = (int)r13.w + -1;
            r37.z = (uint)r13.w;
            r23.yzw = gCookieArray.SampleLevel(samplerLinear_s, r37.xyz, 0).xyz;
          } else {
            r23.yzw = float3(1,1,1);
          }
        }
        r37.x = lightConstantsCB[r7.w].data[0].w;
        r37.yz = lightConstantsCB[r7.w].data[1].xy;
        r23.yzw = r37.xyz * r23.yzw;
        r13.w = cmp(0 < r14.w);
        if (r13.w != 0) {
          if (3 == 0) r13.w = 0; else if (3+27 < 32) {           r13.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);          } else r13.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r17.w = (int)r8.w & 15;
          r18.w = (int)r17.w + -1;
          r18.w = cmp((uint)r18.w < 32);
          r18.w = r18.w ? r2.w : 0;
          if (r18.w != 0) {
            r24.yz = mad((int2)r17.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, r24.y, u2.xxxx
          r17.w = samp0[]..swiz;
            r17.w = (int)r17.w | 4;
            GBufferDiffuseColor[viewID].r24.y = u2.x;
            GBufferDiffuseColor[viewID].r24.z = u2.x;
          }
          r17.w = (int)r3.w + 257;
          r13.w = cmp((int)r13.w != 1);
          if (r13.w != 0) {
            r13.w = abs(r10.w) * -0.200000003 + 0.400000006;
            r18.w = cmp(r10.w < 0);
            r18.w = r0.w ? r18.w : 0;
            r13.w = r18.w ? -r13.w : r13.w;
            r28.xyz = r11.xyz * r13.www + r5.xyz;
            r37.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r37.w = lightConstantsCB[r7.w].data[7].x;
            r13.w = dot(r37.xyzw, r28.xyzw);
            r18.w = dot(r36.xyzw, r28.xyzw);
            r19.w = cmp(r18.w >= r13.w);
            if (r19.w != 0) {
              r36.xyz = lightConstantsCB[r7.w].data[4].yzw;
              r36.w = lightConstantsCB[r7.w].data[5].x;
              r27.x = dot(r36.xyzw, r28.xyzw);
              r36.xyz = lightConstantsCB[r7.w].data[5].yzw;
              r36.w = lightConstantsCB[r7.w].data[6].x;
              r27.y = dot(r36.xyzw, r28.xyzw);
              r24.yz = r27.xy / r18.ww;
              r24.yz = saturate(r24.yz * float2(0.5,-0.5) + float2(0.5,0.5));
              r28.x = r24.y * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
              r28.y = r24.z * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
              r13.w = r13.w / r18.w;
              r13.w = max(6.10351563e-05, r13.w);
              r18.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r36.z = (uint)r18.w;
                r19.w = 0;
                r24.y = 0;
                while (true) {
                  r24.z = cmp((int)r24.y >= 8);
                  if (r24.z != 0) break;
                  r27.x = dot(icb[r24.y+0].xy, r31.xy);
                  r27.y = dot(icb[r24.y+0].yx, r31.xz);
                  r36.xy = r27.xy * lightConstantsCB[r7.w].data[3].yy + r28.xy;
                  r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r13.w).x;
                  r19.w = r24.z * 0.125 + r19.w;
                  r24.y = (int)r24.y + 1;
                }
              } else {
                r28.z = (uint)r18.w;
                r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r13.w).x;
              }
              r13.w = r19.w * r19.w;
              r13.w = r13.w * r19.w;
            } else {
              r13.w = 1;
            }
          } else {
            r13.w = 1;
          }
          r13.w = r14.w * r13.w;
          r14.w = cmp(0 < r13.w);
          if (r14.w != 0) {
            r14.w = lightConstantsCB[r7.w].data[1].z * r1.w;
            r14.w = r14.w * r11.w;
            if (4 == 0) r18.w = 0; else if (4+16 < 32) {             r18.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r18.w = (uint)r18.w >> (32-4);            } else r18.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
            r24.y = cmp(0 < (uint)r18.w);
            r24.y = r24.y ? r3.x : 0;
            if (r24.y != 0) {
              r18.w = (int)r18.w + numLights;
              r18.w = mad((int)r18.w, 15, -15);
              r24.y = abs(r10.w) * -0.200000003 + 0.400000006;
              r24.z = cmp(r10.w < 0);
              r24.z = r0.w ? r24.z : 0;
              r24.y = r24.z ? -r24.y : r24.y;
              r29.xyz = r11.xyz * r24.yyy + r5.xyz;
              r36.xyz = lightConstantsCB[r18.w].data[6].yzw;
              r36.w = lightConstantsCB[r18.w].data[7].x;
              r24.y = dot(r36.xyzw, r29.xyzw);
              r36.xyz = lightConstantsCB[r18.w].data[7].yzw;
              r36.w = lightConstantsCB[r18.w].data[8].x;
              r24.z = dot(r36.xyzw, r29.xyzw);
              r24.w = cmp(r24.z < r24.y);
              if (r24.w == 0) {
                r36.xyz = lightConstantsCB[r18.w].data[4].yzw;
                r36.w = lightConstantsCB[r18.w].data[5].x;
                r27.x = dot(r36.xyzw, r29.xyzw);
                r36.xyz = lightConstantsCB[r18.w].data[5].yzw;
                r36.w = lightConstantsCB[r18.w].data[6].x;
                r27.y = dot(r36.xyzw, r29.xyzw);
                r26.yz = r27.xy / r24.zz;
                r26.yz = r26.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r27.x = lightConstantsCB[r18.w].data[9].w + r26.y;
                r27.y = lightConstantsCB[r18.w].data[10].x + r26.z;
                r26.yz = lightConstantsCB[r18.w].data[9].yz * r27.xy;
                r27.xy = lightConstantsCB[r18.w].data[3].yy / lightConstantsCB[r18.w].data[8].yw;
                r28.xy = float2(1,1) + -r27.xy;
                r28.xy = cmp(r26.yz >= r28.xy);
                r27.xy = cmp(r27.xy >= r26.yz);
                r27.xy = (int2)r27.xy | (int2)r28.xy;
                r27.x = (int)r27.y | (int)r27.x;
                if (r27.x == 0) {
                  r26.yz = saturate(r26.yz);
                  r28.x = r26.y * lightConstantsCB[r18.w].data[8].y + lightConstantsCB[r18.w].data[8].z;
                  r28.y = r26.z * lightConstantsCB[r18.w].data[8].w + lightConstantsCB[r18.w].data[9].x;
                  r26.y = lightConstantsCB[r18.w].data[10].z * r24.z;
                  r24.y = lightConstantsCB[r18.w].data[10].y * r24.z + r24.y;
                  r24.y = r24.y / r26.y;
                }
              } else {
                r27.x = -1;
              }
              r24.z = (int)r24.w | (int)r27.x;
              if (r24.z == 0) {
                r24.y = max(6.10351563e-05, r24.y);
                r24.z = 0x0000ffff & (int)lightConstantsCB[r18.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r29.z = (uint)r24.z;
                  r24.w = 0;
                  r26.y = 0;
                  while (true) {
                    r26.z = cmp((int)r26.y >= 8);
                    if (r26.z != 0) break;
                    r27.x = dot(icb[r26.y+0].xy, r32.xy);
                    r27.y = dot(icb[r26.y+0].yx, r32.xz);
                    r29.xy = r27.xy * lightConstantsCB[r18.w].data[3].yy + r28.xy;
                    r26.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r24.y).x;
                    r24.w = r26.z * 0.125 + r24.w;
                    r26.y = (int)r26.y + 1;
                  }
                } else {
                  r28.z = (uint)r24.z;
                  r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r24.y).x;
                }
                r18.w = r24.w * r24.w;
                r18.w = r18.w * r24.w;
              } else {
                r18.w = 1;
              }
              r13.w = r18.w * r13.w;
            } else {
              if (4 == 0) r7.w = 0; else if (4+20 < 32) {               r7.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r7.w = (uint)r7.w >> (32-4);              } else r7.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
              r18.w = cmp(0 < (uint)r7.w);
              r18.w = r18.w ? r3.z : 0;
              if (r18.w != 0) {
                r7.w = (int)r7.w + numLights;
                r7.w = mad((int)r7.w, 15, -15);
                r18.w = abs(r10.w) * -0.200000003 + 0.400000006;
                r24.y = cmp(r10.w < 0);
                r24.y = r0.w ? r24.y : 0;
                r18.w = r24.y ? -r18.w : r18.w;
                r30.xyz = r11.xyz * r18.www + r5.xyz;
                r36.xyz = lightConstantsCB[r7.w].data[6].yzw;
                r36.w = lightConstantsCB[r7.w].data[7].x;
                r18.w = dot(r36.xyzw, r30.xyzw);
                r36.xyz = lightConstantsCB[r7.w].data[7].yzw;
                r36.w = lightConstantsCB[r7.w].data[8].x;
                r24.y = dot(r36.xyzw, r30.xyzw);
                r24.z = cmp(r24.y < r18.w);
                if (r24.z == 0) {
                  r36.xyz = lightConstantsCB[r7.w].data[4].yzw;
                  r36.w = lightConstantsCB[r7.w].data[5].x;
                  r27.x = dot(r36.xyzw, r30.xyzw);
                  r36.xyz = lightConstantsCB[r7.w].data[5].yzw;
                  r36.w = lightConstantsCB[r7.w].data[6].x;
                  r27.y = dot(r36.xyzw, r30.xyzw);
                  r26.yz = r27.xy / r24.yy;
                  r26.yz = r26.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r27.x = lightConstantsCB[r7.w].data[9].w + r26.y;
                  r27.y = lightConstantsCB[r7.w].data[10].x + r26.z;
                  r26.yz = lightConstantsCB[r7.w].data[9].yz * r27.xy;
                  r27.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                  r28.xy = float2(1,1) + -r27.xy;
                  r28.xy = cmp(r26.yz >= r28.xy);
                  r27.xy = cmp(r27.xy >= r26.yz);
                  r27.xy = (int2)r27.xy | (int2)r28.xy;
                  r27.x = (int)r27.y | (int)r27.x;
                  if (r27.x == 0) {
                    r26.yz = saturate(r26.yz);
                    r28.x = r26.y * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                    r28.y = r26.z * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                    r26.y = lightConstantsCB[r7.w].data[10].z * r24.y;
                    r18.w = lightConstantsCB[r7.w].data[10].y * r24.y + r18.w;
                    r18.w = r18.w / r26.y;
                  }
                } else {
                  r27.x = -1;
                }
                r24.y = (int)r24.z | (int)r27.x;
                if (r24.y == 0) {
                  r18.w = max(6.10351563e-05, r18.w);
                  r24.y = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r29.z = (uint)r24.y;
                    r24.z = 0;
                    r26.y = 0;
                    while (true) {
                      r26.z = cmp((int)r26.y >= 8);
                      if (r26.z != 0) break;
                      r27.x = dot(icb[r26.y+0].xy, r33.xy);
                      r27.y = dot(icb[r26.y+0].yx, r33.xz);
                      r29.xy = r27.xy * lightConstantsCB[r7.w].data[3].yy + r28.xy;
                      r26.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r18.w).x;
                      r24.z = r26.z * 0.125 + r24.z;
                      r26.y = (int)r26.y + 1;
                    }
                  } else {
                    r28.z = (uint)r24.y;
                    r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r18.w).x;
                  }
                  r7.w = r24.z * r24.z;
                  r7.w = r7.w * r24.z;
                } else {
                  r7.w = 1;
                }
                r13.w = r13.w * r7.w;
              }
            }
            r7.w = -r13.z * r2.x + 1;
            r7.w = r7.w * r7.w;
            r7.w = -r7.w * 0.620000005 + 0.620000005;
            r7.w = r7.w + -r13.z;
            r7.w = r2.z * r7.w + r13.z;
            r7.w = r7.w * r13.w;
            r10.w = cmp(0 < r10.w);
            r27.xyw = r7.www * r23.yzw + r15.yzw;
            r25.xyz = r25.xyz * r9.www + r12.xyz;
            r9.w = dot(r25.xyz, r25.xyz);
            r9.w = rsqrt(r9.w);
            r25.xyz = r25.xyz * r9.www;
            r9.w = dot(r25.xyz, r12.xyz);
            r13.z = dot(r11.xyz, r25.xyz);
            r18.w = abs(r13.z) * r1.w + -abs(r13.z);
            r13.z = abs(r13.z) * r18.w + 1;
            r11.w = r11.w * r2.y + r6.w;
            r13.z = r13.z * r13.z;
            r11.w = r13.z * r11.w;
            r11.w = rcp(r11.w);
            r11.w = r11.w * r14.w;
            r11.w = r13.w * r11.w;
            r11.w = 0.25 * r11.w;
            r25.xyz = r11.www * r23.yzw + r16.yzw;
            r9.w = saturate(1 + -r9.w);
            r13.z = r9.w * r9.w;
            r13.z = r13.z * r13.z;
            r9.w = r13.z * r9.w;
            r9.w = r11.w * r9.w;
            r28.xyz = r9.www * r23.yzw + r35.xyz;
            r23.yzw = r7.www * r23.yzw + r34.xyz;
            r23.yzw = r0.www ? r23.yzw : r34.xyz;
            r15.yzw = r10.www ? r27.xyw : r15.yzw;
            r34.xyz = r10.www ? r34.xyz : r23.yzw;
            r35.xyz = r10.www ? r28.xyz : r35.xyz;
            r16.yzw = r10.www ? r25.xyz : r16.yzw;
            r7.w = (int)r17.w & 15;
            r9.w = (int)r7.w + -1;
            r9.w = cmp((uint)r9.w < 32);
            r9.w = r9.w ? r2.w : 0;
            if (r9.w != 0) {
              r23.yz = mad((int2)r7.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r7.w, cb2[52].x, r23.y, u2.xxxx
            r7.w = samp0[]..swiz;
              r7.w = (int)r7.w | 8;
              GBufferDiffuseColor[viewID].r23.y = u2.x;
              GBufferDiffuseColor[viewID].r23.z = u2.x;
            }
            r3.w = (int)r3.w + 0x00010101;
          } else {
            r3.w = r17.w;
          }
        } else {
          r3.w = r8.w;
        }
      } else {
        r3.w = r8.w;
      }
      break;
      default :
      break;
    }
    r4.z = (int)r4.z + 1;
  }
  r4.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r4.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r2.yz : float2(-1,0);
  r2.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.x == (int)r2.x);
  r2.xy = r2.xx ? r2.yz : float2(-1,0);
  r3.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r3.x;
  r2.z = cmp((int)r0.x == (int)r2.z);
  r3.xy = r2.zz ? r3.yz : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r7.x;
  r0.x = cmp((int)r0.x == (int)r2.z);
  r7.xy = r0.xx ? r7.yz : float2(-1,0);
  r8.x = r1.z;
  r8.y = r2.x;
  r8.z = r3.x;
  r8.w = r7.x;
  r8.xyzw = r8.xyzw + -r4.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r8.x + r8.y;
  r0.x = r0.x + r8.z;
  r0.x = r0.x + r8.w;
  r1.z = r8.y * r2.y;
  r1.z = r8.x * r1.w + r1.z;
  r1.z = r8.z * r3.y + r1.z;
  r1.z = r8.w * r7.y + r1.z;
  r4.w = r1.z / r0.x;
  r0.x = cmp(0 >= r0.x);
  r4.yz = r0.xx ? float2(0,0) : r4.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r1.w == (int)r1.z);
  r2.xyz = r0.xxx ? r4.xyz : r4.xzy;
  r0.x = -r2.z * 0.5 + r2.x;
  r3.y = r2.z + r0.x;
  r3.z = -r2.y * 0.5 + r0.x;
  r3.x = r3.z + r2.y;
  r2.xyz = r15.yzw * r6.xyz;
  r2.xyz = r34.xyz * r3.xyz + r2.xyz;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r35.xyz;
  r4.xyz = r16.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r4.xyz = r35.xyz * r4.xyz;
  r3.xyz = r16.yzw * r3.xyz + r4.xyz;
  r3.xyz = r15.yzw * r6.xyz + r3.xyz;
  r2.xyz = r0.www ? r2.xyz : r3.xyz;
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
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
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
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyz = r0.xxx * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
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
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.xxx ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r3.w & 7;
        break;
        case 2 :        if (3 == 0) r0.x = 0; else if (3+8 < 32) {         r0.x = (uint)r3.w << (32-(3 + 8)); r0.x = (uint)r0.x >> (32-3);        } else r0.x = (uint)r3.w >> 8;
        break;
        case 3 :        r0.x = (uint)r3.w >> 16;
        break;
        case 4 :        r0.x = (int)r12.w & 255;
        break;
        case 5 :        if (8 == 0) r0.x = 0; else if (8+8 < 32) {         r0.x = (uint)r12.w << (32-(8 + 8)); r0.x = (uint)r0.x >> (32-8);        } else r0.x = (uint)r12.w >> 8;
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
  if (r2.w != 0) {
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r3.w & 7;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.x = (int)r12.w & 255;
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
    r1.y = (int)r12.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.y
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r12.w << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r12.w >> 8;
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