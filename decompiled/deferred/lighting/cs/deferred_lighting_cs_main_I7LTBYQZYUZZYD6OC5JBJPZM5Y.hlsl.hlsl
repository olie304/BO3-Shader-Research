// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:29 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40;
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
  r0.x = mad(permuteStride, 36, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
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
  r1.z = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r4.x, r13.x);
  r1.zw = (uint2)r1.yx;
  r1.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r14.x, r15.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.z = dot(-r12.xyz, r11.xyz);
  r1.z = r1.z + r1.z;
  r16.xyz = r11.xyz * -r1.zzz + -r12.xyz;
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
  r3.z = saturate(r2.w);
  r4.z = cmp(0 >= r3.z);
  if (r4.z != 0) {
    r4.w = 0;
  }
  if (r4.z == 0) {
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.yyy;
    r14.yzw = r10.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r14.yzw;
    r14.yzw = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r14.yzw;
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.yzw;
    r4.z = -sunConstants.splitDepthOffset + r14.w;
    r4.z = -r4.z * 6.10351563e-05 + 1;
    r6.w = saturate(r4.z);
    r6.w = cmp(r4.z == r6.w);
    if (r6.w != 0) {
      r6.w = 0;
      r7.w = 0;
      while (true) {
        r8.w = cmp(r6.w >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r6.w;
        r15.yz = -sunConstants.splitPinTransform[r8.w].xy + r14.yz;
        r9.w = max(abs(r15.y), abs(r15.z));
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
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r15.yy);
      r17.y = -r17.z;
      r15.yzw = r14.yzy * r17.xyz + r15.zwz;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.yzw = max(float3(0,0,0), r15.yzw);
      r15.yzw = min(r15.yzw, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r15.wz;
      r17.xy = floor(r17.xy);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r9.w, l(0), t23.xxxx
    r12.w = samp0[]..swiz;
      r13.w = (int)r12.w & 0x40000000;
      r17.x = (uint)r12.w << 2;
      if (r13.w == 0) {
        r13.w = (int)r12.w & 0x01ffffff;
        r18.x = (int)r9.w + (int)r13.w;
        r9.w = (uint)r12.w >> 25;
        r9.w = (uint)r9.w;
        r15.yzw = r15.yzw * r9.www;
        r15.yzw = frac(r15.yzw);
        r15.yzw = float3(128,128,128) * r15.yzw;
        r15.yzw = (uint3)r15.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.yz = (uint2)r15.wz >> int2(6,6);
        r9.w = (int)r18.z & 0xc0000000;
        r12.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r17.z ? r18.z : r12.w;
        r13.w = (uint)r12.w >> 13;
        r12.w = r17.y ? r13.w : r12.w;
        r12.w = (int)r12.w & 8191;
        r19.x = (int)r12.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.yzw = r9.www ? r18.xyz : r19.xyz;
        r19.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r15.wz >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r12.w = (int)r17.w & 0xc0000000;
        r13.w = (int)r17.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r13.w = r20.y ? r17.w : r13.w;
        r18.w = (uint)r13.w >> 13;
        r13.w = r20.x ? r18.w : r13.w;
        r13.w = (int)r13.w & 8191;
        r19.x = (int)r13.w + (int)r17.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.yzw = r12.www ? r17.yzw : r19.xzw;
        r17.yzw = r9.www ? r18.xyz : r17.yzw;
        r9.w = (int)r17.w & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r17.z + 6;
          r18.xy = (uint2)r15.wz >> (uint2)r9.ww;
          r9.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r9.w = (uint)r9.w >> (uint)r12.w;
          r9.w = (int)r9.w & 1023;
          r18.x = (int)r9.w + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r9.w = (int)-r18.y + 6;
          r19.xy = (uint2)r15.wz >> (uint2)r9.ww;
          r9.w = (int)r18.w & 0xc0000000;
          r12.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r19.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r19.x << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
          r13.w = (int)r13.w * 10;
          r12.w = (uint)r12.w >> (uint)r13.w;
          r12.w = (int)r12.w & 1023;
          r19.x = (int)r12.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r9.www ? r18.xyw : r19.xyz;
          r12.w = (int)-r19.y + 6;
          r18.yz = (uint2)r15.wz >> (uint2)r12.ww;
          r12.w = (int)r19.z & 0xc0000000;
          r13.w = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r18.y << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
          r17.z = (int)r17.z * 10;
          r13.w = (uint)r13.w >> (uint)r17.z;
          r13.w = (int)r13.w & 1023;
          r20.x = (int)r13.w + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r12.ww ? r19.xz : r20.xy;
          r17.yw = r9.ww ? r18.xw : r18.yz;
        }
        r9.w = (int)r17.w & 0xc0000000;
        if (r9.w == 0) {
          if (14 == 0) r12.w = 0; else if (14+15 < 32) {           r12.w = (uint)r17.w << (32-(14 + 15)); r12.w = (uint)r12.w >> (32-14);          } else r12.w = (uint)r17.w >> 15;
          r12.w = (uint)r12.w;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 6.10388815e-05 * r12.w;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r13.w = (uint)r18.x;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 3.05185094e-05 * r13.w;
          r17.z = (int)r15.z & 3;
          r17.z = (int)r17.z + (int)r17.y;
          r17.z = (int)r17.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r15.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.z = (((uint)r15.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.w = (((uint)r15.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r15.y = (uint)r17.z >> (uint)r18.x;
          r15.y = (int)r15.y & 255;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r13.w;
          r15.y = r15.y * 0.00392156886 + r12.w;
          r15.z = (int)r18.z + 1;
          if (1 == 0) r15.w = 0; else if (1+1 < 32) {           r15.w = (uint)r15.w << (32-(1 + 1)); r15.w = (uint)r15.w >> (32-1);          } else r15.w = (uint)r15.w >> 1;
          r15.z = (int)r15.w + (int)r15.z;
          r15.z = (int)r15.z + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.z = (uint)r15.z >> (uint)r18.w;
          r15.z = (int)r15.z & 0x0000ffff;
          r15.z = (uint)r15.z;
          r13.w = r15.z * r13.w;
          r12.w = r13.w * 1.52590219e-05 + r12.w;
          r17.x = r18.y ? r15.y : r12.w;
        } else {
          r12.w = (int)r17.w & 0x80000000;
          r13.w = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          r12.w = r12.w ? r13.w : 0;
          r13.w = (uint)r17.w << 2;
          r15.y = (uint)r12.w >> 16;
          r15.y = f16tof32(r15.y);
          r12.w = (int)r12.w & 0x0000ffff;
          r12.w = f16tof32(r12.w);
          r13.w = r14.y * r15.y + r13.w;
          r12.w = r14.z * r12.w + r13.w;
          r17.x = r9.w ? r12.w : r17.x;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r14.w;
      r9.w = cmp(r17.x < r9.w);
      r4.w = r9.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r6.w;
        r15.yz = -sunConstants.splitPinTransform[r8.w].xy + r14.yz;
        r15.yz = sunConstants.splitPinTransform[r8.w].zz * r15.yz;
        r17.xy = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r17.z = r8.w + r6.w;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.z).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
        r8.w = r9.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.w = r8.w * r8.w;
        r4.w = r9.w * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r17.x = -r4.x;
        r8.w = (uint)r6.w;
        r6.w = 1 + r6.w;
        r6.w = min(2, r6.w);
        r6.w = (uint)r6.w;
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.w = (uint)r7.w;
        r15.yz = -sunConstants.splitPinTransform[r8.w].xy + r14.yz;
        r15.yz = sunConstants.splitPinTransform[r8.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.yz = -sunConstants.splitPinTransform[r6.w].xy + r14.yz;
        r14.yz = sunConstants.splitPinTransform[r6.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r17.y = r13.x;
        r17.z = r4.x;
        r9.w = 0;
        r12.w = 0;
        while (true) {
          r13.w = cmp((uint)r12.w >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r7.w < (uint)r12.w);
          r18.xy = r13.ww ? r14.yz : r15.yz;
          r14.w = r13.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
          r13.w = r13.w ? r6.w : r8.w;
          r19.x = dot(icb[r12.w+0].yx, r17.xy);
          r19.y = dot(icb[r12.w+0].yx, r17.yz);
          r18.xy = r19.xy * r14.ww + r18.xy;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r4.z).x;
          r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r13.w = r14.w + r13.w;
          r13.w = saturate(-1 + r13.w);
          r9.w = r13.w * 0.125 + r9.w;
          r12.w = (int)r12.w + 1;
        }
        r4.z = r9.w * r9.w;
        r4.w = r4.z * r9.w;
      }
    }
  }
  r4.z = 1 + -r2.y;
  r4.z = 5 * r4.z;
  r14.yzw = -globalProbeConstants.data[0].xyz + r10.xyz;
  r17.x = globalProbeConstants.data[0].w * r14.y;
  r17.yz = globalProbeConstants.data[1].xy * r14.zw;
  r14.yzw = saturate(float3(0.5,0.5,0.5) + r17.xyz);
  r17.xy = globalProbeConstants.data[1].zw * r14.yz;
  r17.z = globalProbeConstants.data[2].x * r14.w;
  r14.yzw = globalProbeConstants.data[2].yzw + r17.xyz;
  r15.yzw = cmp(float3(0,0,0) < r11.xyz);
  r17.xyz = r15.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r17.w = 0;
  r15.yzw = r17.wwx + r14.yzw;
  r15.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
  r18.xyz = r11.xyz * r11.xyz;
  r18.xyz = sunConstants.globalProbeExposure * r18.xyz;
  r19.xyz = r17.wwy + r14.yzw;
  r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
  r19.xyz = r19.xyz * r18.yyy;
  r15.yzw = r15.yzw * r18.xxx + r19.xyz;
  r14.yzw = r17.wwz + r14.yzw;
  r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
  r14.yzw = r14.yzw * r18.zzz + r15.yzw;
  r11.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
  r14.yzw = r15.yzw * r14.yzw;
  r6.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r16.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r4.z).xyz;
  r4.z = sunConstants.globalProbeExposure + -r6.w;
  r4.z = r2.y * r4.z + r6.w;
  r15.yzw = r15.yzw * r4.zzz;
  r4.z = r2.x + r5.x;
  r4.z = log2(abs(r4.z));
  r4.z = r4.z * r1.w;
  r4.z = exp2(r4.z);
  r4.z = r4.z + r5.x;
  r4.z = saturate(-1 + r4.z);
  r17.xyz = r14.yzw * r5.xxx;
  r14.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r14.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r14.yz, 0).xy;
  r15.yzw = r15.yzw * r4.zzz;
  r18.xyz = r15.zwy * r14.yyy;
  r14.yzw = r15.yzw * r14.zzz;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r4.z = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r5.x = r2.x * r2.y + r4.z;
  r2.y = r5.x * r2.y;
  r4.z = r5.x * r4.z;
  if (r2.z != 0) {
    r19.x = 3;
    r19.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r5.x = cmp(0 < r3.z);
  if (r5.x != 0) {
    if (r2.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r5.x, cb2[52].x, l(112), u2.xxxx
    r5.x = samp0[]..swiz;
      r5.x = (int)r5.x | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r5.x = cmp(0 < r4.w);
    if (r5.x != 0) {
      r5.x = sunConstants.specScale * r1.z;
      r5.x = r5.x * r3.z;
      if (sunConstants.sunCookieIndex != 0) {
        r19.xyz = eyeOffset.xyz + r10.xyz;
        r19.w = 1;
        r6.w = dot(sunConstants.sunCookieTransform[0].xyzw, r19.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r19.xyzw);
        r19.x = frac(r6.w);
        r19.y = frac(r7.w);
        r6.w = -1 + (int14)sunConstants.sunCookieIndex;
        r19.z = (uint)r6.w;
        r15.yzw = gCookieArray.SampleLevel(samplerLinear_s, r19.xyz, 0).xyz;
        r15.yzw = float3(-1,-1,-1) + r15.yzw;
        r15.yzw = sunConstants.sunCookieIntensity * r15.yzw + float3(1,1,1);
        r15.yzw = sunConstants.color.xyz * r15.yzw;
      } else {
        r15.yzw = sunConstants.color.xyz;
      }
      r6.w = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r6.w);
      r7.w = r0.z ? r7.w : 0;
      if (r7.w != 0) {
        r6.w = (int)r6.w + numLights;
        r6.w = mad((int)r6.w, 15, -15);
        r7.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r19.xyz = r11.xyz * r7.www + r10.xyz;
        r20.xyz = lightConstantsCB[r6.w].data[4].yzw;
        r20.w = lightConstantsCB[r6.w].data[5].x;
        r19.w = 1;
        r20.x = dot(r20.xyzw, r19.xyzw);
        r21.xyz = lightConstantsCB[r6.w].data[5].yzw;
        r21.w = lightConstantsCB[r6.w].data[6].x;
        r20.y = dot(r21.xyzw, r19.xyzw);
        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r21.x = lightConstantsCB[r6.w].data[9].w + r20.x;
        r21.y = lightConstantsCB[r6.w].data[10].x + r20.y;
        r20.xy = lightConstantsCB[r6.w].data[9].yz * r21.xy;
        r20.zw = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
        r21.xy = float2(1,1) + -r20.zw;
        r21.xy = cmp(r20.xy >= r21.xy);
        r20.zw = cmp(r20.zw >= r20.xy);
        r20.zw = (int2)r20.zw | (int2)r21.xy;
        r7.w = (int)r20.w | (int)r20.z;
        if (r7.w == 0) {
          r21.xyz = lightConstantsCB[r6.w].data[6].yzw;
          r21.w = lightConstantsCB[r6.w].data[7].x;
          r7.w = dot(r21.xyzw, r19.xyzw);
          r20.xy = saturate(r20.xy);
          r19.x = r20.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
          r19.y = r20.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
          r7.w = lightConstantsCB[r6.w].data[10].y + r7.w;
          r7.w = r7.w / lightConstantsCB[r6.w].data[10].z;
          r7.w = max(6.10351563e-05, r7.w);
          r8.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r20.x = -r4.x;
            r21.z = (uint)r8.w;
            r20.y = r13.x;
            r20.z = r4.x;
            r9.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r22.x = dot(icb[r11.w+0].yx, r20.xy);
              r22.y = dot(icb[r11.w+0].yx, r20.yz);
              r21.xy = r22.xy * lightConstantsCB[r6.w].data[3].yy + r19.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r7.w).x;
              r9.w = r12.w * 0.125 + r9.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r19.z = (uint)r8.w;
            r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r7.w).x;
          }
          r6.w = r9.w * r9.w;
          r6.w = r6.w * r9.w;
        } else {
          r6.w = 1;
        }
        r4.w = r6.w * r4.w;
      } else {
        r6.w = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r6.w);
        r8.w = ~(int)r0.z;
        r7.w = r7.w ? r8.w : 0;
        if (r7.w != 0) {
          r6.w = (int)r6.w + numLights;
          r6.w = mad((int)r6.w, 15, -15);
          r7.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r19.xyz = r11.xyz * r7.www + r10.xyz;
          r20.xyz = lightConstantsCB[r6.w].data[4].yzw;
          r20.w = lightConstantsCB[r6.w].data[5].x;
          r19.w = 1;
          r20.x = dot(r20.xyzw, r19.xyzw);
          r21.xyz = lightConstantsCB[r6.w].data[5].yzw;
          r21.w = lightConstantsCB[r6.w].data[6].x;
          r20.y = dot(r21.xyzw, r19.xyzw);
          r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r21.x = lightConstantsCB[r6.w].data[9].w + r20.x;
          r21.y = lightConstantsCB[r6.w].data[10].x + r20.y;
          r20.xy = lightConstantsCB[r6.w].data[9].yz * r21.xy;
          r20.zw = lightConstantsCB[r6.w].data[3].yy / lightConstantsCB[r6.w].data[8].yw;
          r21.xy = float2(1,1) + -r20.zw;
          r21.xy = cmp(r20.xy >= r21.xy);
          r20.zw = cmp(r20.zw >= r20.xy);
          r20.zw = (int2)r20.zw | (int2)r21.xy;
          r7.w = (int)r20.w | (int)r20.z;
          if (r7.w == 0) {
            r21.xyz = lightConstantsCB[r6.w].data[6].yzw;
            r21.w = lightConstantsCB[r6.w].data[7].x;
            r7.w = dot(r21.xyzw, r19.xyzw);
            r20.xy = saturate(r20.xy);
            r19.x = r20.x * lightConstantsCB[r6.w].data[8].y + lightConstantsCB[r6.w].data[8].z;
            r19.y = r20.y * lightConstantsCB[r6.w].data[8].w + lightConstantsCB[r6.w].data[9].x;
            r7.w = lightConstantsCB[r6.w].data[10].y + r7.w;
            r7.w = r7.w / lightConstantsCB[r6.w].data[10].z;
            r7.w = max(6.10351563e-05, r7.w);
            r8.w = 0x0000ffff & (int)lightConstantsCB[r6.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r20.x = -r4.x;
              r21.z = (uint)r8.w;
              r20.y = r13.x;
              r20.z = r4.x;
              r9.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r22.x = dot(icb[r11.w+0].yx, r20.xy);
                r22.y = dot(icb[r11.w+0].yx, r20.yz);
                r21.xy = r22.xy * lightConstantsCB[r6.w].data[3].yy + r19.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r7.w).x;
                r9.w = r12.w * 0.125 + r9.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r19.z = (uint)r8.w;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r7.w).x;
            }
            r6.w = r9.w * r9.w;
            r6.w = r6.w * r9.w;
          } else {
            r6.w = 1;
          }
          r4.w = r6.w * r4.w;
        }
      }
      r6.w = -r2.x * 0.5 + 1;
      r6.w = -r3.z * r6.w + 1;
      r6.w = r6.w * r6.w;
      r6.w = -r6.w * 0.620000005 + 0.620000005;
      r6.w = r6.w + -r3.z;
      r6.w = r1.w * r6.w + r3.z;
      r6.w = r6.w * r4.w;
      r2.w = cmp(0 < r2.w);
      r19.xyz = r6.www * r15.yzw + r17.xyz;
      r20.xyz = -r10.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r20.xyz, r20.xyz);
      r0.w = rsqrt(r0.w);
      r20.xyz = r20.xyz * r0.www;
      r0.w = dot(r20.xyz, r12.xyz);
      r6.w = dot(r11.xyz, r20.xyz);
      r7.w = abs(r6.w) * r1.z + -abs(r6.w);
      r6.w = abs(r6.w) * r7.w + 1;
      r3.z = r3.z * r2.y + r4.z;
      r6.w = r6.w * r6.w;
      r3.z = r6.w * r3.z;
      r3.z = rcp(r3.z);
      r3.z = r3.z * r5.x;
      r3.z = r4.w * r3.z;
      r3.z = 0.25 * r3.z;
      r20.xyz = r3.zzz * r15.yzw + r14.yzw;
      r0.w = saturate(1 + -r0.w);
      r5.x = r0.w * r0.w;
      r5.x = r5.x * r5.x;
      r0.w = r5.x * r0.w;
      r0.w = r3.z * r0.w;
      r21.xyz = r0.www * r15.zwy + r18.xyz;
      r19.w = r21.z;
      r17.w = r18.z;
      r17.xyzw = r2.wwww ? r19.xyzw : r17.xyzw;
      r21.zw = r20.xy;
      r18.zw = r14.yz;
      r19.xyzw = r2.wwww ? r21.xyzw : r18.xyzw;
      r14.w = r2.w ? r20.z : r14.w;
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.w, cb2[52].x, l(112), u2.xxxx
      r0.w = samp0[]..swiz;
        r0.w = (int)r0.w | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r18.z = r17.w;
      r18.xy = r19.xy;
      r14.yz = r19.zw;
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
  r2.w = mad((int)r0.y, (int)r2.w, (int)r0.x);
  r2.w = (uint)r2.w << 5;
  r3.z = ~(int)r0.z;
  r19.x = -r4.x;
  r2.x = -r2.x * 0.5 + 1;
  r20.x = 2;
  r10.w = 1;
  r21.x = 2;
  r22.z = 1;
  r23.w = 1;
  r24.w = 1;
  r25.w = 1;
  r19.z = r4.x;
  r26.w = 1;
  r19.yw = r13.xx;
  r4.y = r19.w;
  r13.y = r19.x;
  r27.x = r13.x;
  r27.y = r19.x;
  r27.z = r4.x;
  r13.z = r4.x;
  r28.w = 1;
  r29.x = r13.x;
  r29.y = r19.x;
  r29.z = r4.x;
  r30.x = r13.x;
  r30.y = r19.x;
  r30.z = r4.x;
  r15.yzw = r17.xyz;
  r31.xyz = r18.zxy;
  r32.xyz = r14.yzw;
  r4.w = enableDitheredShadow;
  r5.x = r0.w;
  r6.w = 0;
  while (true) {
    r7.w = cmp((uint)r6.w >= numLights);
    if (r7.w != 0) break;
    r7.w = (uint)r6.w >> 5;
    r7.w = (int)r2.w + (int)r7.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(0), t26.xxxx
  r7.w = samp0[]..swiz;
    r33.xyz = r15.yzw;
    r34.xyz = r31.xyz;
    r35.xyz = r32.xyz;
    r8.w = r4.w;
    r9.w = r5.x;
    r11.w = r7.w;
    while (true) {
      if (r11.w == 0) break;
      r12.w = firstbitlow((uint)r11.w);
      r13.w = 1 << (int)r12.w;
      r13.w = ~(int)r13.w;
      r11.w = (int)r11.w & (int)r13.w;
      r12.w = (int)r6.w + (int)r12.w;
      r12.w = (int)r12.w * 15;
      if (3 == 0) r13.w = 0; else if (3+24 < 32) {       r13.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(3 + 24)); r13.w = (uint)r13.w >> (32-3);      } else r13.w = (uint)lightConstantsCB[r12.w].data[1].w >> 24;
      r16.w = cmp((int)r13.w == 2);
      if (r16.w != 0) {
        if (3 == 0) r16.w = 0; else if (3+27 < 32) {         r16.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);        } else r16.w = (uint)lightConstantsCB[r12.w].data[1].w >> 27;
        r17.w = (int)r9.w & 255;
        r18.w = cmp((uint)r17.w < 32);
        r18.w = r2.z ? r18.w : 0;
        if (r18.w != 0) {
          r17.w = mad((int)r17.w, 24, 112);
          r20.yzw = lightConstantsCB[r12.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r17.w = u2.xyzw;
        }
        r17.w = (int)r9.w + 1;
        r36.xy = lightConstantsCB[r12.w].data[3].zw + -r10.xy;
        r36.z = lightConstantsCB[r12.w].data[4].x + -r10.z;
        r18.w = dot(r36.xyz, r36.xyz);
        r18.w = rsqrt(r18.w);
        r20.yzw = r36.xyz * r18.www;
        r22.w = lightConstantsCB[r12.w].data[1].z * r1.z;
        r22.w = 0.25 * r22.w;
        r20.y = dot(r11.xyz, r20.yzw);
        r20.z = saturate(r20.y);
        r20.w = cmp(0 < r20.z);
        if (r20.w != 0) {
          r37.xyz = lightConstantsCB[r12.w].data[7].yzw;
          r37.w = lightConstantsCB[r12.w].data[8].x;
          r20.w = dot(r37.xyzw, r10.xyzw);
          r27.w = cmp(r20.w < 1);
          if (r27.w != 0) {
            r38.xyz = float3(1,1,1);
            r27.w = 0;
          } else {
            r39.xyz = lightConstantsCB[r12.w].data[0].xyz + -r10.xyz;
            r29.w = lightConstantsCB[r12.w].data[3].x * lightConstantsCB[r12.w].data[3].x;
            r30.w = dot(r39.xyz, r39.xyz);
            r29.w = r29.w / r30.w;
            r29.w = min(1, r29.w);
            r39.xy = saturate(r20.ww * lightConstantsCB[r12.w].data[2].xz + lightConstantsCB[r12.w].data[2].yw);
            r39.zw = r39.xy * r39.xy;
            r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
            r39.xy = r39.zw * r39.xy;
            r29.w = r39.x * r29.w;
            r29.w = r29.w * r39.y;
            r39.xyz = lightConstantsCB[r12.w].data[4].yzw;
            r39.w = lightConstantsCB[r12.w].data[5].x;
            r39.x = dot(r39.xyzw, r10.xyzw);
            r40.xyz = lightConstantsCB[r12.w].data[5].yzw;
            r40.w = lightConstantsCB[r12.w].data[6].x;
            r39.y = dot(r40.xyzw, r10.xyzw);
            r22.xy = r39.xy / r20.ww;
            r20.w = cmp(lightConstantsCB[r12.w].data[10].w < 0.00048828125);
            if (r20.w != 0) {
              r39.xy = saturate(abs(r22.xy) * lightConstantsCB[r12.w].data[12].xy + lightConstantsCB[r12.w].data[12].zw);
              r39.zw = r39.xy * r39.xy;
              r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
              r39.xy = r39.zw * r39.xy;
              r20.w = r39.x * r39.y;
            } else {
              r39.xyzw = saturate(lightConstantsCB[r12.w].data[11].xyzw * abs(r22.yyxx));
              r39.xyzw = log2(r39.xyzw);
              r39.xyzw = lightConstantsCB[r12.w].data[12].zzzz * r39.xyzw;
              r39.xyzw = exp2(r39.xyzw);
              r39.xy = r39.xy + r39.zw;
              r39.xy = log2(r39.xy);
              r39.xy = lightConstantsCB[r12.w].data[12].ww * r39.xy;
              r39.xy = exp2(r39.xy);
              r30.w = lightConstantsCB[r12.w].data[12].x * r39.x;
              r31.w = lightConstantsCB[r12.w].data[12].y * r39.y + -1;
              r30.w = lightConstantsCB[r12.w].data[12].y * r39.y + -r30.w;
              r30.w = saturate(r31.w / r30.w);
              r31.w = r30.w * r30.w;
              r30.w = r30.w * -2 + 3;
              r20.w = r31.w * r30.w;
            }
            r27.w = r29.w * r20.w;
            r20.w = 255 & (int)lightConstantsCB[r12.w].data[14].w;
            if (r20.w != 0) {
              r29.w = dot(lightConstantsCB[r12.w].data[13].xyz, r22.xyz);
              r39.x = lightConstantsCB[r12.w].data[13].w;
              r39.yz = lightConstantsCB[r12.w].data[14].xy;
              r22.x = dot(r39.xyz, r22.xyz);
              r39.x = frac(r29.w);
              r39.y = frac(r22.x);
              r20.w = (int)r20.w + -1;
              r39.z = (uint)r20.w;
              r38.xyz = gCookieArray.SampleLevel(samplerLinear_s, r39.xyz, 0).xyz;
            } else {
              r38.xyz = float3(1,1,1);
            }
          }
          r39.x = lightConstantsCB[r12.w].data[0].w;
          r39.yz = lightConstantsCB[r12.w].data[1].xy;
          r38.xyz = r39.xyz * r38.xyz;
          r20.w = cmp(0 < r27.w);
          if (r20.w != 0) {
            r20.w = (int)r17.w & 255;
            r22.x = (int)r20.w + -1;
            r22.x = cmp((uint)r22.x < 32);
            r22.x = r2.z ? r22.x : 0;
            if (r22.x != 0) {
              r22.xy = mad((int2)r20.ww, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r22.x, u2.xxxx
            r20.w = samp0[]..swiz;
              r20.w = (int)r20.w | 4;
              GBufferDiffuseColor[viewID].r22.x = u2.x;
              GBufferDiffuseColor[viewID].r22.y = u2.x;
            }
            r20.w = (int)r9.w + 257;
            r16.w = cmp((int)r16.w != 1);
            if (r16.w != 0) {
              r16.w = abs(r20.y) * -0.200000003 + 0.400000006;
              r23.xyz = r11.xyz * r16.www + r10.xyz;
              r39.xyz = lightConstantsCB[r12.w].data[6].yzw;
              r39.w = lightConstantsCB[r12.w].data[7].x;
              r16.w = dot(r39.xyzw, r23.xyzw);
              r22.x = dot(r37.xyzw, r23.xyzw);
              r22.y = cmp(r22.x >= r16.w);
              if (r22.y != 0) {
                r37.xyz = lightConstantsCB[r12.w].data[4].yzw;
                r37.w = lightConstantsCB[r12.w].data[5].x;
                r37.x = dot(r37.xyzw, r23.xyzw);
                r39.xyz = lightConstantsCB[r12.w].data[5].yzw;
                r39.w = lightConstantsCB[r12.w].data[6].x;
                r37.y = dot(r39.xyzw, r23.xyzw);
                r23.xy = r37.xy / r22.xx;
                r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r37.x = r23.x * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                r37.y = r23.y * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                r16.w = r16.w / r22.x;
                r16.w = max(6.10351563e-05, r16.w);
                r22.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                if (r8.w != 0) {
                  r23.z = (uint)r22.x;
                  r22.y = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r39.x = dot(icb[r29.w+0].yx, r19.xy);
                    r39.y = dot(icb[r29.w+0].yx, r19.yz);
                    r23.xy = r39.xy * lightConstantsCB[r12.w].data[3].yy + r37.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.w).x;
                    r22.y = r23.x * 0.125 + r22.y;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r37.z = (uint)r22.x;
                  r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r16.w).x;
                }
                r16.w = r22.y * r22.y;
                r16.w = r16.w * r22.y;
              } else {
                r16.w = 1;
              }
            } else {
              r16.w = 1;
            }
            r16.w = r27.w * r16.w;
            r22.x = cmp(0 < r16.w);
            if (r22.x != 0) {
              if (4 == 0) r22.x = 0; else if (4+16 < 32) {               r22.x = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 16)); r22.x = (uint)r22.x >> (32-4);              } else r22.x = (uint)lightConstantsCB[r12.w].data[1].w >> 16;
              r23.x = cmp(0 < (uint)r22.x);
              r23.x = r0.z ? r23.x : 0;
              if (r23.x != 0) {
                r22.x = (int)r22.x + numLights;
                r22.x = mad((int)r22.x, 15, -15);
                r23.x = abs(r20.y) * -0.200000003 + 0.400000006;
                r24.xyz = r11.xyz * r23.xxx + r10.xyz;
                r37.xyz = lightConstantsCB[r22.x].data[6].yzw;
                r37.w = lightConstantsCB[r22.x].data[7].x;
                r23.x = dot(r37.xyzw, r24.xyzw);
                r37.xyz = lightConstantsCB[r22.x].data[7].yzw;
                r37.w = lightConstantsCB[r22.x].data[8].x;
                r23.y = dot(r37.xyzw, r24.xyzw);
                r23.z = cmp(r23.y < r23.x);
                if (r23.z == 0) {
                  r37.xyz = lightConstantsCB[r22.x].data[4].yzw;
                  r37.w = lightConstantsCB[r22.x].data[5].x;
                  r37.x = dot(r37.xyzw, r24.xyzw);
                  r39.xyz = lightConstantsCB[r22.x].data[5].yzw;
                  r39.w = lightConstantsCB[r22.x].data[6].x;
                  r37.y = dot(r39.xyzw, r24.xyzw);
                  r24.xy = r37.xy / r23.yy;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r37.x = lightConstantsCB[r22.x].data[9].w + r24.x;
                  r37.y = lightConstantsCB[r22.x].data[10].x + r24.y;
                  r24.xy = lightConstantsCB[r22.x].data[9].yz * r37.xy;
                  r37.xy = lightConstantsCB[r22.x].data[3].yy / lightConstantsCB[r22.x].data[8].yw;
                  r37.zw = float2(1,1) + -r37.xy;
                  r37.zw = cmp(r24.xy >= r37.zw);
                  r37.xy = cmp(r37.xy >= r24.xy);
                  r37.xy = (int2)r37.xy | (int2)r37.zw;
                  r24.z = (int)r37.y | (int)r37.x;
                  if (r24.z == 0) {
                    r24.xy = saturate(r24.xy);
                    r37.x = r24.x * lightConstantsCB[r22.x].data[8].y + lightConstantsCB[r22.x].data[8].z;
                    r37.y = r24.y * lightConstantsCB[r22.x].data[8].w + lightConstantsCB[r22.x].data[9].x;
                    r24.x = lightConstantsCB[r22.x].data[10].z * r23.y;
                    r23.x = lightConstantsCB[r22.x].data[10].y * r23.y + r23.x;
                    r23.x = r23.x / r24.x;
                  }
                } else {
                  r24.z = -1;
                }
                r23.y = (int)r23.z | (int)r24.z;
                if (r23.y == 0) {
                  r23.x = max(6.10351563e-05, r23.x);
                  r23.y = 0x0000ffff & (int)lightConstantsCB[r22.x].data[1].w;
                  if (r8.w != 0) {
                    r24.z = (uint)r23.y;
                    r23.z = 0;
                    r27.w = 0;
                    while (true) {
                      r29.w = cmp((int)r27.w >= 8);
                      if (r29.w != 0) break;
                      r39.x = dot(icb[r27.w+0].yx, r19.xw);
                      r39.y = dot(icb[r27.w+0].xy, r4.xy);
                      r24.xy = r39.xy * lightConstantsCB[r22.x].data[3].yy + r37.xy;
                      r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r23.x).x;
                      r23.z = r24.x * 0.125 + r23.z;
                      r27.w = (int)r27.w + 1;
                    }
                  } else {
                    r37.z = (uint)r23.y;
                    r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r23.x).x;
                  }
                  r22.x = r23.z * r23.z;
                  r22.x = r22.x * r23.z;
                } else {
                  r22.x = 1;
                }
                r16.w = r22.x * r16.w;
              } else {
                if (4 == 0) r22.x = 0; else if (4+20 < 32) {                 r22.x = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 20)); r22.x = (uint)r22.x >> (32-4);                } else r22.x = (uint)lightConstantsCB[r12.w].data[1].w >> 20;
                r23.x = cmp(0 < (uint)r22.x);
                r23.x = r23.x ? r3.z : 0;
                if (r23.x != 0) {
                  r22.x = (int)r22.x + numLights;
                  r22.x = mad((int)r22.x, 15, -15);
                  r23.x = abs(r20.y) * -0.200000003 + 0.400000006;
                  r25.xyz = r11.xyz * r23.xxx + r10.xyz;
                  r37.xyz = lightConstantsCB[r22.x].data[6].yzw;
                  r37.w = lightConstantsCB[r22.x].data[7].x;
                  r23.x = dot(r37.xyzw, r25.xyzw);
                  r37.xyz = lightConstantsCB[r22.x].data[7].yzw;
                  r37.w = lightConstantsCB[r22.x].data[8].x;
                  r23.y = dot(r37.xyzw, r25.xyzw);
                  r24.x = cmp(r23.y < r23.x);
                  if (r24.x == 0) {
                    r37.xyz = lightConstantsCB[r22.x].data[4].yzw;
                    r37.w = lightConstantsCB[r22.x].data[5].x;
                    r37.x = dot(r37.xyzw, r25.xyzw);
                    r39.xyz = lightConstantsCB[r22.x].data[5].yzw;
                    r39.w = lightConstantsCB[r22.x].data[6].x;
                    r37.y = dot(r39.xyzw, r25.xyzw);
                    r24.yz = r37.xy / r23.yy;
                    r24.yz = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r25.x = lightConstantsCB[r22.x].data[9].w + r24.y;
                    r25.y = lightConstantsCB[r22.x].data[10].x + r24.z;
                    r24.yz = lightConstantsCB[r22.x].data[9].yz * r25.xy;
                    r25.xy = lightConstantsCB[r22.x].data[3].yy / lightConstantsCB[r22.x].data[8].yw;
                    r37.xy = float2(1,1) + -r25.xy;
                    r37.xy = cmp(r24.yz >= r37.xy);
                    r25.xy = cmp(r25.xy >= r24.yz);
                    r25.xy = (int2)r25.xy | (int2)r37.xy;
                    r25.x = (int)r25.y | (int)r25.x;
                    if (r25.x == 0) {
                      r24.yz = saturate(r24.yz);
                      r37.x = r24.y * lightConstantsCB[r22.x].data[8].y + lightConstantsCB[r22.x].data[8].z;
                      r37.y = r24.z * lightConstantsCB[r22.x].data[8].w + lightConstantsCB[r22.x].data[9].x;
                      r24.y = lightConstantsCB[r22.x].data[10].z * r23.y;
                      r23.x = lightConstantsCB[r22.x].data[10].y * r23.y + r23.x;
                      r23.x = r23.x / r24.y;
                    }
                  } else {
                    r25.x = -1;
                  }
                  r23.y = (int)r24.x | (int)r25.x;
                  if (r23.y == 0) {
                    r23.x = max(6.10351563e-05, r23.x);
                    r23.y = 0x0000ffff & (int)lightConstantsCB[r22.x].data[1].w;
                    if (r8.w != 0) {
                      r24.z = (uint)r23.y;
                      r25.xy = float2(0,0);
                      while (true) {
                        r25.z = cmp((int)r25.y >= 8);
                        if (r25.z != 0) break;
                        r39.x = dot(icb[r25.y+0].xy, r27.xy);
                        r39.y = dot(icb[r25.y+0].yx, r27.xz);
                        r24.xy = r39.xy * lightConstantsCB[r22.x].data[3].yy + r37.xy;
                        r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r23.x).x;
                        r25.x = r24.x * 0.125 + r25.x;
                        r25.y = (int)r25.y + 1;
                      }
                    } else {
                      r37.z = (uint)r23.y;
                      r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r23.x).x;
                    }
                    r22.x = r25.x * r25.x;
                    r22.x = r22.x * r25.x;
                  } else {
                    r22.x = 1;
                  }
                  r16.w = r22.x * r16.w;
                }
              }
              r22.x = -r20.z * r2.x + 1;
              r22.x = r22.x * r22.x;
              r22.x = -r22.x * 0.620000005 + 0.620000005;
              r22.x = r22.x + -r20.z;
              r22.x = r1.w * r22.x + r20.z;
              r22.x = r22.x * r16.w;
              r20.y = cmp(0 < r20.y);
              r24.xyz = r22.xxx * r38.xyz + r33.xyz;
              r36.xyz = r36.xyz * r18.www + r12.xyz;
              r18.w = dot(r36.xyz, r36.xyz);
              r18.w = rsqrt(r18.w);
              r36.xyz = r36.xyz * r18.www;
              r18.w = dot(r36.xyz, r12.xyz);
              r22.x = dot(r11.xyz, r36.xyz);
              r23.x = abs(r22.x) * r1.z + -abs(r22.x);
              r22.x = abs(r22.x) * r23.x + 1;
              r23.x = r20.z * r2.y + r4.z;
              r22.x = r22.x * r22.x;
              r22.x = r22.x * r23.x;
              r22.x = rcp(r22.x);
              r20.z = r20.z * r22.w;
              r20.z = r22.x * r20.z;
              r20.z = r20.z * r16.w;
              r36.xyz = r20.zzz * r38.xyz + r35.xyz;
              r18.w = saturate(1 + -r18.w);
              r22.x = r18.w * r18.w;
              r22.x = r22.x * r22.x;
              r18.w = r22.x * r18.w;
              r18.w = r20.z * r18.w;
              r37.xyz = r18.www * r38.xyz + r34.xyz;
              r33.xyz = r20.yyy ? r24.xyz : r33.xyz;
              r34.xyz = r20.yyy ? r37.xyz : r34.xyz;
              r35.xyz = r20.yyy ? r36.xyz : r35.xyz;
              r18.w = (int)r20.w & 255;
              r20.y = (int)r18.w + -1;
              r20.y = cmp((uint)r20.y < 32);
              r20.y = r2.z ? r20.y : 0;
              if (r20.y != 0) {
                r20.yz = mad((int2)r18.ww, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.w, cb2[52].x, r20.y, u2.xxxx
              r18.w = samp0[]..swiz;
                r18.w = (int)r18.w | 8;
                GBufferDiffuseColor[viewID].r20.y = u2.x;
                GBufferDiffuseColor[viewID].r20.z = u2.x;
              }
              r9.w = (int)r9.w + 0x00010101;
            } else {
              r9.w = r20.w;
            }
          } else {
            r9.w = r17.w;
          }
        } else {
          r9.w = r17.w;
        }
      } else {
        r13.w = cmp((int)r13.w == 4);
        if (r13.w != 0) {
          if (3 == 0) r13.w = 0; else if (3+27 < 32) {           r13.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);          } else r13.w = (uint)lightConstantsCB[r12.w].data[1].w >> 27;
          r16.w = (int)r9.w & 255;
          r17.w = cmp((uint)r16.w < 32);
          r17.w = r2.z ? r17.w : 0;
          if (r17.w != 0) {
            r16.w = mad((int)r16.w, 24, 112);
            r21.yzw = lightConstantsCB[r12.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r16.w = u2.xyzw;
          }
          r16.w = (int)r9.w + 1;
          r17.w = lightConstantsCB[r12.w].data[1].z * r1.z;
          r17.w = 0.25 * r17.w;
          r18.w = cmp(0 < lightConstantsCB[r12.w].data[6].y);
          r24.xy = lightConstantsCB[r12.w].data[5].zw;
          r24.z = lightConstantsCB[r12.w].data[6].x;
          r20.yzw = -r24.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r12.w].data[0].xyz;
          r21.yzw = r20.yzw + -r10.xyz;
          r22.x = dot(r24.xyz, r16.xyz);
          r22.w = dot(r24.xyz, r21.yzw);
          r21.y = dot(r16.xyz, r21.yzw);
          r21.z = -r22.x * r22.x + lightConstantsCB[r12.w].data[6].y;
          r21.y = r22.x * r21.y + -r22.w;
          r21.w = saturate(-r22.w / lightConstantsCB[r12.w].data[6].y);
          r21.y = saturate(r21.y / r21.z);
          r21.z = r21.z / lightConstantsCB[r12.w].data[6].y;
          r21.z = 10 * r21.z;
          r21.z = min(1, r21.z);
          r21.y = r21.y + -r21.w;
          r21.y = r21.z * r21.y + r21.w;
          r36.xyz = r21.yyy * r24.xyz + r20.yzw;
          r20.yzw = r21.www * r24.xyz + r20.yzw;
          r20.yzw = r18.www ? r20.yzw : lightConstantsCB[r12.w].data[0].xyz;
          r21.yzw = r18.www ? r36.xyz : lightConstantsCB[r12.w].data[0].xyz;
          r21.yzw = r21.yzw + -r10.xyz;
          r20.yzw = r20.yzw + -r10.xyz;
          r18.w = dot(r21.yzw, r21.yzw);
          r18.w = rsqrt(r18.w);
          r24.xyz = r21.yzw * r18.www;
          r22.x = dot(r20.yzw, r20.yzw);
          r22.w = rsqrt(r22.x);
          r20.yzw = r22.www * r20.yzw;
          r20.y = dot(r11.xyz, r20.yzw);
          r20.z = saturate(r20.y);
          r20.w = cmp(0 < r20.z);
          if (r20.w != 0) {
            r20.w = sqrt(r22.x);
            r22.w = lightConstantsCB[r12.w].data[3].x * lightConstantsCB[r12.w].data[3].x;
            r22.x = r22.w / r22.x;
            r22.x = min(1, r22.x);
            r23.xy = saturate(r20.ww * lightConstantsCB[r12.w].data[2].xz + lightConstantsCB[r12.w].data[2].yw);
            r25.yz = r23.xy * r23.xy;
            r23.xy = r23.xy * float2(-2,-2) + float2(3,3);
            r23.xy = r25.yz * r23.xy;
            r20.w = r23.x * r22.x;
            r20.w = r20.w * r23.y;
            r22.x = cmp(0 < r20.w);
            if (r22.x != 0) {
              r22.x = (int)r16.w & 255;
              r22.w = (int)r22.x + -1;
              r22.w = cmp((uint)r22.w < 32);
              r22.w = r2.z ? r22.w : 0;
              if (r22.w != 0) {
                r22.xw = mad((int2)r22.xx, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r23.x, cb2[52].x, r22.x, u2.xxxx
              r23.x = samp0[]..swiz;
                r23.x = (int)r23.x | 4;
                GBufferDiffuseColor[viewID].r22.x = u2.x;
                GBufferDiffuseColor[viewID].r22.w = u2.x;
              }
              r22.x = (int)r9.w + 257;
              r13.w = cmp((int)r13.w != 1);
              if (r13.w != 0) {
                r13.w = abs(r20.y) * -0.200000003 + 0.400000006;
                r36.xyz = r11.xyz * r13.www + r10.xyz;
                r36.xyz = -lightConstantsCB[r12.w].data[4].yzw + r36.xyz;
                r13.w = max(abs(r36.y), abs(r36.z));
                r13.w = max(abs(r36.x), r13.w);
                r13.w = lightConstantsCB[r12.w].data[5].x / r13.w;
                r13.w = lightConstantsCB[r12.w].data[5].y + r13.w;
                r22.w = dot(r36.xyz, r36.xyz);
                r22.w = rsqrt(r22.w);
                r13.w = max(6.10351563e-05, r13.w);
                r23.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                r37.w = (uint)r23.x;
                r23.xy = float2(0,0);
                while (true) {
                  r25.y = cmp((int)r23.y >= 8);
                  if (r25.y != 0) break;
                  r25.y = dot(icb[r23.y+0].xy, r13.xy);
                  r25.z = dot(icb[r23.y+0].yx, r13.xz);
                  r38.yz = lightConstantsCB[r12.w].data[3].yy * r25.yz;
                  r38.x = r38.y * r15.x;
                  r38.w = r38.y * r14.x;
                  r37.xyz = r36.xyz * r22.www + r38.xzw;
                  r25.y = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r13.w).x;
                  r23.x = r25.y * 0.125 + r23.x;
                  r23.y = (int)r23.y + 1;
                }
              } else {
                r23.x = 1;
              }
              r13.w = r23.x * r20.w;
              r20.w = cmp(0 < r13.w);
              if (r20.w != 0) {
                if (4 == 0) r20.w = 0; else if (4+16 < 32) {                 r20.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 16)); r20.w = (uint)r20.w >> (32-4);                } else r20.w = (uint)lightConstantsCB[r12.w].data[1].w >> 16;
                r22.w = cmp(0 < (uint)r20.w);
                r22.w = r0.z ? r22.w : 0;
                if (r22.w != 0) {
                  r20.w = (int)r20.w + numLights;
                  r20.w = mad((int)r20.w, 15, -15);
                  r22.w = abs(r20.y) * -0.200000003 + 0.400000006;
                  r26.xyz = r11.xyz * r22.www + r10.xyz;
                  r36.xyz = lightConstantsCB[r20.w].data[6].yzw;
                  r36.w = lightConstantsCB[r20.w].data[7].x;
                  r22.w = dot(r36.xyzw, r26.xyzw);
                  r36.xyz = lightConstantsCB[r20.w].data[7].yzw;
                  r36.w = lightConstantsCB[r20.w].data[8].x;
                  r23.y = dot(r36.xyzw, r26.xyzw);
                  r25.y = cmp(r23.y < r22.w);
                  if (r25.y == 0) {
                    r36.xyz = lightConstantsCB[r20.w].data[4].yzw;
                    r36.w = lightConstantsCB[r20.w].data[5].x;
                    r36.x = dot(r36.xyzw, r26.xyzw);
                    r37.xyz = lightConstantsCB[r20.w].data[5].yzw;
                    r37.w = lightConstantsCB[r20.w].data[6].x;
                    r36.y = dot(r37.xyzw, r26.xyzw);
                    r26.xy = r36.xy / r23.yy;
                    r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r36.x = lightConstantsCB[r20.w].data[9].w + r26.x;
                    r36.y = lightConstantsCB[r20.w].data[10].x + r26.y;
                    r26.xy = lightConstantsCB[r20.w].data[9].yz * r36.xy;
                    r36.xy = lightConstantsCB[r20.w].data[3].yy / lightConstantsCB[r20.w].data[8].yw;
                    r36.zw = float2(1,1) + -r36.xy;
                    r36.zw = cmp(r26.xy >= r36.zw);
                    r36.xy = cmp(r36.xy >= r26.xy);
                    r36.xy = (int2)r36.xy | (int2)r36.zw;
                    r25.z = (int)r36.y | (int)r36.x;
                    if (r25.z == 0) {
                      r26.xy = saturate(r26.xy);
                      r36.x = r26.x * lightConstantsCB[r20.w].data[8].y + lightConstantsCB[r20.w].data[8].z;
                      r36.y = r26.y * lightConstantsCB[r20.w].data[8].w + lightConstantsCB[r20.w].data[9].x;
                      r26.x = lightConstantsCB[r20.w].data[10].z * r23.y;
                      r22.w = lightConstantsCB[r20.w].data[10].y * r23.y + r22.w;
                      r22.w = r22.w / r26.x;
                    }
                  } else {
                    r25.z = -1;
                  }
                  r23.y = (int)r25.y | (int)r25.z;
                  if (r23.y == 0) {
                    r22.w = max(6.10351563e-05, r22.w);
                    r23.y = 0x0000ffff & (int)lightConstantsCB[r20.w].data[1].w;
                    if (r8.w != 0) {
                      r26.z = (uint)r23.y;
                      r25.yz = float2(0,0);
                      while (true) {
                        r27.w = cmp((int)r25.z >= 8);
                        if (r27.w != 0) break;
                        r37.x = dot(icb[r25.z+0].xy, r29.xy);
                        r37.y = dot(icb[r25.z+0].yx, r29.xz);
                        r26.xy = r37.xy * lightConstantsCB[r20.w].data[3].yy + r36.xy;
                        r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r22.w).x;
                        r25.y = r26.x * 0.125 + r25.y;
                        r25.z = (int)r25.z + 1;
                      }
                    } else {
                      r36.z = (uint)r23.y;
                      r25.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r22.w).x;
                    }
                    r20.w = r25.y * r25.y;
                    r20.w = r20.w * r25.y;
                  } else {
                    r20.w = 1;
                  }
                  r13.w = r20.w * r13.w;
                } else {
                  if (4 == 0) r20.w = 0; else if (4+20 < 32) {                   r20.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 20)); r20.w = (uint)r20.w >> (32-4);                  } else r20.w = (uint)lightConstantsCB[r12.w].data[1].w >> 20;
                  r22.w = cmp(0 < (uint)r20.w);
                  r22.w = r22.w ? r3.z : 0;
                  if (r22.w != 0) {
                    r20.w = (int)r20.w + numLights;
                    r20.w = mad((int)r20.w, 15, -15);
                    r22.w = abs(r20.y) * -0.200000003 + 0.400000006;
                    r28.xyz = r11.xyz * r22.www + r10.xyz;
                    r36.xyz = lightConstantsCB[r20.w].data[6].yzw;
                    r36.w = lightConstantsCB[r20.w].data[7].x;
                    r22.w = dot(r36.xyzw, r28.xyzw);
                    r36.xyz = lightConstantsCB[r20.w].data[7].yzw;
                    r36.w = lightConstantsCB[r20.w].data[8].x;
                    r23.y = dot(r36.xyzw, r28.xyzw);
                    r25.z = cmp(r23.y < r22.w);
                    if (r25.z == 0) {
                      r36.xyz = lightConstantsCB[r20.w].data[4].yzw;
                      r36.w = lightConstantsCB[r20.w].data[5].x;
                      r26.x = dot(r36.xyzw, r28.xyzw);
                      r36.xyz = lightConstantsCB[r20.w].data[5].yzw;
                      r36.w = lightConstantsCB[r20.w].data[6].x;
                      r26.y = dot(r36.xyzw, r28.xyzw);
                      r26.xy = r26.xy / r23.yy;
                      r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r28.x = lightConstantsCB[r20.w].data[9].w + r26.x;
                      r28.y = lightConstantsCB[r20.w].data[10].x + r26.y;
                      r26.xy = lightConstantsCB[r20.w].data[9].yz * r28.xy;
                      r28.xy = lightConstantsCB[r20.w].data[3].yy / lightConstantsCB[r20.w].data[8].yw;
                      r36.xy = float2(1,1) + -r28.xy;
                      r36.xy = cmp(r26.xy >= r36.xy);
                      r28.xy = cmp(r28.xy >= r26.xy);
                      r28.xy = (int2)r28.xy | (int2)r36.xy;
                      r26.z = (int)r28.y | (int)r28.x;
                      if (r26.z == 0) {
                        r26.xy = saturate(r26.xy);
                        r28.x = r26.x * lightConstantsCB[r20.w].data[8].y + lightConstantsCB[r20.w].data[8].z;
                        r28.y = r26.y * lightConstantsCB[r20.w].data[8].w + lightConstantsCB[r20.w].data[9].x;
                        r26.x = lightConstantsCB[r20.w].data[10].z * r23.y;
                        r22.w = lightConstantsCB[r20.w].data[10].y * r23.y + r22.w;
                        r22.w = r22.w / r26.x;
                      }
                    } else {
                      r26.z = -1;
                    }
                    r23.y = (int)r25.z | (int)r26.z;
                    if (r23.y == 0) {
                      r22.w = max(6.10351563e-05, r22.w);
                      r23.y = 0x0000ffff & (int)lightConstantsCB[r20.w].data[1].w;
                      if (r8.w != 0) {
                        r26.z = (uint)r23.y;
                        r25.z = 0;
                        r27.w = 0;
                        while (true) {
                          r29.w = cmp((int)r27.w >= 8);
                          if (r29.w != 0) break;
                          r36.x = dot(icb[r27.w+0].xy, r30.xy);
                          r36.y = dot(icb[r27.w+0].yx, r30.xz);
                          r26.xy = r36.xy * lightConstantsCB[r20.w].data[3].yy + r28.xy;
                          r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r22.w).x;
                          r25.z = r26.x * 0.125 + r25.z;
                          r27.w = (int)r27.w + 1;
                        }
                      } else {
                        r28.z = (uint)r23.y;
                        r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r22.w).x;
                      }
                      r20.w = r25.z * r25.z;
                      r20.w = r20.w * r25.z;
                    } else {
                      r20.w = 1;
                    }
                    r13.w = r20.w * r13.w;
                  }
                }
                r20.w = -r20.z * r2.x + 1;
                r20.w = r20.w * r20.w;
                r20.w = -r20.w * 0.620000005 + 0.620000005;
                r20.w = r20.w + -r20.z;
                r20.z = r1.w * r20.w + r20.z;
                r20.z = r20.z * r13.w;
                r26.x = lightConstantsCB[r12.w].data[0].w;
                r26.yz = lightConstantsCB[r12.w].data[1].xy;
                r12.w = cmp(0 < r20.y);
                r20.yzw = r20.zzz * r26.xyz + r33.xyz;
                r22.w = saturate(dot(r11.xyz, r24.xyz));
                r21.yzw = r21.yzw * r18.www + r12.xyz;
                r18.w = dot(r21.yzw, r21.yzw);
                r18.w = rsqrt(r18.w);
                r21.yzw = r21.yzw * r18.www;
                r18.w = dot(r21.yzw, r12.xyz);
                r21.y = dot(r11.xyz, r21.yzw);
                r21.z = abs(r21.y) * r1.z + -abs(r21.y);
                r21.y = abs(r21.y) * r21.z + 1;
                r21.z = r22.w * r2.y + r4.z;
                r21.y = r21.y * r21.y;
                r21.y = r21.y * r21.z;
                r21.y = rcp(r21.y);
                r17.w = r22.w * r17.w;
                r17.w = r21.y * r17.w;
                r17.w = r17.w * r13.w;
                r21.yzw = r17.www * r26.xyz + r35.xyz;
                r18.w = saturate(1 + -r18.w);
                r22.w = r18.w * r18.w;
                r22.w = r22.w * r22.w;
                r18.w = r22.w * r18.w;
                r17.w = r18.w * r17.w;
                r24.xyz = r17.www * r26.xyz + r34.xyz;
                r33.xyz = r12.www ? r20.yzw : r33.xyz;
                r34.xyz = r12.www ? r24.xyz : r34.xyz;
                r35.xyz = r12.www ? r21.yzw : r35.xyz;
                r12.w = (int)r22.x & 255;
                r17.w = (int)r12.w + -1;
                r17.w = cmp((uint)r17.w < 32);
                r17.w = r2.z ? r17.w : 0;
                if (r17.w != 0) {
                  r20.yz = mad((int2)r12.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r12.w, cb2[52].x, r20.y, u2.xxxx
                r12.w = samp0[]..swiz;
                  r12.w = (int)r12.w | 8;
                  GBufferDiffuseColor[viewID].r20.y = u2.x;
                  GBufferDiffuseColor[viewID].r20.z = u2.x;
                }
                r9.w = (int)r9.w + 0x00010101;
              } else {
                r9.w = r22.x;
              }
            } else {
              r9.w = r16.w;
            }
          } else {
            r9.w = r16.w;
          }
        }
      }
    }
    r15.yzw = r33.xyz;
    r31.xyz = r34.xyz;
    r32.xyz = r35.xyz;
    r5.x = r9.w;
    r6.w = (int)r6.w + 32;
  }
  r3.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r3.y;
  r2.xyw = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r1.zw = r0.ww ? r2.yw : float2(-1,0);
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r2.xy = r0.ww ? r2.yw : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r4.xy = r0.ww ? r4.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.z = cmp((int)r0.z == (int)r0.w);
  r0.zw = r0.zz ? r6.yz : float2(-1,0);
  r6.x = r1.z;
  r6.y = r2.x;
  r6.z = r4.x;
  r6.w = r0.z;
  r6.xyzw = r6.xyzw + -r3.xxxx;
  r6.xyzw = cmp(abs(r6.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r6.xyzw = r6.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r6.x + r6.y;
  r0.z = r0.z + r6.z;
  r0.z = r0.z + r6.w;
  r1.z = r6.y * r2.y;
  r1.z = r6.x * r1.w + r1.z;
  r1.z = r6.z * r4.y + r1.z;
  r0.w = r6.w * r0.w + r1.z;
  r3.w = r0.w / r0.z;
  r0.z = cmp(0 >= r0.z);
  r3.yz = r0.zz ? float2(0,0) : r3.zw;
  r0.zw = (int2)r1.xy & int2(1,1);
  r0.z = cmp((int)r0.w == (int)r0.z);
  r2.xyw = r0.zzz ? r3.xyz : r3.xzy;
  r0.z = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r0.z;
  r3.z = -r2.y * 0.5 + r0.z;
  r3.x = r3.z + r2.y;
  r2.xyw = float3(1,1,1) + -r3.xyz;
  r2.xyw = r31.xyz * r2.xyw;
  r2.xyw = r32.xyz * r3.xyz + r2.xyw;
  r2.xyw = r15.yzw * r5.yzw + r2.xyw;
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = dot(r10.xyz, r10.xyz);
    r0.w = rsqrt(r0.z);
    r3.xyz = r10.xyz * r0.www;
    r0.z = sqrt(r0.z);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r1.zw = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r0.w = cmp(0.00999999978 < abs(r10.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r10.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r0.ww ? r4.xy : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r5.yzw = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.yzw = exp2(r5.yzw);
      r5.yzw = r5.yzw + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.yzw + r4.xyz;
    } else {
      r0.w = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.z = cmp(0.00999999978 < abs(r10.z));
      r1.w = fogConstants.atmospherefogheightdensityscale.x * r10.z;
      r3.w = -1.44269502 * r1.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r1.w = r3.w / r1.w;
      r1.w = r1.w * r0.w;
      r0.w = r1.z ? r1.w : r0.w;
      r5.yzw = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r5.yzw);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.w = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r1.w = r1.w * r1.w;
    r1.w = 12.566371 * r1.w;
    r1.z = r1.z / r1.w;
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
    r5.yzw = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.yzw * r3.xyz;
    r3.xyz = r2.xyw * r4.xyz + r3.xyz;
  } else {
    r0.z = fogConstants.heightFalloff * r10.z;
    r0.w = fogConstants.heightFalloff * r10.z + fogConstants.K0;
    r1.z = cmp(abs(r0.z) < 9.99999975e-05);
    r1.w = min(64, r0.w);
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r3.w = saturate(fogConstants.K0b);
    r4.x = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.x ? r1.w : r0.w;
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
    r4.xyz = r4.xyz + -r2.xyw;
    r3.xyz = r0.zzz * r4.xyz + r2.xyw;
  }
  r2.xyw = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyw = r3.xyz ? r2.xyw : 0;
  r2.xyw = min(float3(65024,65024,64512), r2.xyw);
  r0.z = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(0,4));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 0);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.zzz ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.z = (int)r5.x & 255;
        break;
        case 2 :        if (8 == 0) r0.z = 0; else if (8+8 < 32) {         r0.z = (uint)r5.x << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r5.x >> 8;
        break;
        case 3 :        if (8 == 0) r0.z = 0; else if (8+16 < 32) {         r0.z = (uint)r5.x << (32-(8 + 16)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r5.x >> 16;
        break;
        case 4 :        r0.z = 0;
        break;
        case 5 :        r0.z = 1;
        break;
        default :
        r0.z = 0;
        break;
      }
      r0.z = (uint)r0.z;
      r0.z = drawNumLighstScale * r0.z;
      r3.xyz = r0.zzz * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyz + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
    r1.xyz = eyeOffset.xyz + r10.xyz;
    r1.w = (int)r5.x & 255;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.z = (int)r5.x & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.z
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.x = 0; else if (8+8 < 32) {     r1.x = (uint)r5.x << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);    } else r1.x = (uint)r5.x >> 8;
    if (8 == 0) r1.y = 0; else if (8+16 < 32) {     r1.y = (uint)r5.x << (32-(8 + 16)); r1.y = (uint)r1.y >> (32-8);    } else r1.y = (uint)r5.x >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.y
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), l(0)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), l(1)
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
    atomic_umax g2, l(12), l(0)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), l(1)
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