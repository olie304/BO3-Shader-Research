// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:16 2021

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
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, vThreadGroupID.x, l(0), t25.xyxx
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
  r4.z = saturate(r2.w);
  r4.w = r3.z ? abs(r2.w) : r4.z;
  r6.w = cmp(0 >= r4.w);
  if (r6.w != 0) {
    r7.w = 0;
  }
  if (r6.w == 0) {
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.yyy;
    r14.yzw = r10.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r14.yzw;
    r14.yzw = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r14.yzw;
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.yzw;
    r6.w = -sunConstants.splitDepthOffset + r14.w;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r8.w = saturate(r6.w);
    r8.w = cmp(r6.w == r8.w);
    if (r8.w != 0) {
      r8.w = 0;
      r9.w = 0;
      while (true) {
        r12.w = cmp(r8.w >= 3);
        if (r12.w != 0) break;
        r12.w = (uint)r8.w;
        r15.yz = -sunConstants.splitPinTransform[r12.w].xy + r14.yz;
        r13.w = max(abs(r15.y), abs(r15.z));
        r9.w = sunConstants.splitPinTransform[r12.w].z * r13.w;
        r12.w = cmp(r9.w < 1);
        if (r12.w != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r9.w = 0;
      }
    } else {
      r8.w = 3;
      r9.w = 0;
    }
    r12.w = cmp(r8.w >= 3);
    if (r12.w != 0) {
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r15.yy);
      r17.y = -r17.z;
      r15.yzw = r14.yzy * r17.xyz + r15.zwz;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.yzw = max(float3(0,0,0), r15.yzw);
      r15.yzw = min(r15.yzw, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r15.wz;
      r17.xy = floor(r17.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r13.w, l(0), t23.xxxx
    r17.x = samp0[]..swiz;
      r17.y = (int)r17.x & 0x40000000;
      r17.z = (uint)r17.x << 2;
      if (r17.y == 0) {
        r17.y = (int)r17.x & 0x01ffffff;
        r18.x = (int)r13.w + (int)r17.y;
        r13.w = (uint)r17.x >> 25;
        r13.w = (uint)r13.w;
        r15.yzw = r15.yzw * r13.www;
        r15.yzw = frac(r15.yzw);
        r15.yzw = float3(128,128,128) * r15.yzw;
        r15.yzw = (uint3)r15.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.xy = (uint2)r15.wz >> int2(6,6);
        r13.w = (int)r18.z & 0xc0000000;
        r17.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r17.y = r17.y ? r18.z : r17.w;
        r17.w = (uint)r17.y >> 13;
        r17.x = r17.x ? r17.w : r17.y;
        r17.x = (int)r17.x & 8191;
        r19.x = (int)r17.x + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.xyw = r13.www ? r18.xyz : r19.xyz;
        r19.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r15.wz >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r18.w = (int)r17.w & 0xc0000000;
        r19.y = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.y, l(0), t23.xxxx
      r19.y = samp0[]..swiz;
        r19.y = r20.y ? r17.w : r19.y;
        r20.y = (uint)r19.y >> 13;
        r19.y = r20.x ? r20.y : r19.y;
        r19.y = (int)r19.y & 8191;
        r19.x = (int)r17.x + (int)r19.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.xyw = r18.www ? r17.xyw : r19.xzw;
        r17.xyw = r13.www ? r18.xyz : r17.xyw;
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r17.y + 6;
          r18.xy = (uint2)r15.wz >> (uint2)r13.ww;
          r13.w = (int)r17.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.y = (((uint)r18.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.x = (((uint)r18.x << 0) & bitmask.x) | ((uint)r18.y & ~bitmask.x);
          r18.x = (int)r18.x * 10;
          r13.w = (uint)r13.w >> (uint)r18.x;
          r13.w = (int)r13.w & 1023;
          r18.x = (int)r13.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.yy + int2(1,2);
          r13.w = (int)-r18.y + 6;
          r19.xy = (uint2)r15.wz >> (uint2)r13.ww;
          r13.w = (int)r18.w & 0xc0000000;
          r17.y = (int)r18.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r19.y = (((uint)r19.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r19.x = (((uint)r19.x << 0) & bitmask.x) | ((uint)r19.y & ~bitmask.x);
          r19.x = (int)r19.x * 10;
          r17.y = (uint)r17.y >> (uint)r19.x;
          r17.y = (int)r17.y & 1023;
          r19.x = (int)r17.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r13.www ? r18.xyw : r19.xyz;
          r17.y = (int)-r19.y + 6;
          r18.yz = (uint2)r15.wz >> (uint2)r17.yy;
          r17.y = (int)r19.z & 0xc0000000;
          r19.y = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r18.z & ~bitmask.y);
          r18.y = (int)r18.y * 10;
          r18.y = (uint)r19.y >> (uint)r18.y;
          r18.y = (int)r18.y & 1023;
          r20.x = (int)r18.y + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r17.yy ? r19.xz : r20.xy;
          r17.xw = r13.ww ? r18.xw : r18.yz;
        }
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r17.y = 0; else if (14+15 < 32) {           r17.y = (uint)r17.w << (32-(14 + 15)); r17.y = (uint)r17.y >> (32-14);          } else r17.y = (uint)r17.w >> 15;
          r17.y = (uint)r17.y;
          r17.y = sunConstants.sstLightingConstants.constants.spanInInches * r17.y;
          r17.y = 6.10388815e-05 * r17.y;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r18.x = (uint)r18.x;
          r18.x = sunConstants.sstLightingConstants.constants.spanInInches * r18.x;
          r18.x = 3.05185094e-05 * r18.x;
          r18.z = (int)r15.z & 3;
          r18.z = (int)r17.x + (int)r18.z;
          r18.z = (int)r18.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.z, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r15.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r15.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r15.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.y = (uint)r18.z >> (uint)r19.x;
          r15.y = (int)r15.y & 255;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r18.x;
          r15.y = r15.y * 0.00392156886 + r17.y;
          r15.z = (int)r19.y + 1;
          if (1 == 0) r15.w = 0; else if (1+1 < 32) {           r15.w = (uint)r15.w << (32-(1 + 1)); r15.w = (uint)r15.w >> (32-1);          } else r15.w = (uint)r15.w >> 1;
          r15.z = (int)r15.w + (int)r15.z;
          r15.z = (int)r15.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.z = (uint)r15.z >> (uint)r19.z;
          r15.z = (int)r15.z & 0x0000ffff;
          r15.z = (uint)r15.z;
          r15.z = r15.z * r18.x;
          r15.z = r15.z * 1.52590219e-05 + r17.y;
          r17.z = r18.y ? r15.y : r15.z;
        } else {
          r15.y = (int)r17.w & 0x80000000;
          r15.z = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r15.y ? r15.z : 0;
          r15.z = (uint)r17.w << 2;
          r15.w = (uint)r15.y >> 16;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.yw = f16tof32(r15.yw);
          r15.z = r14.y * r15.w + r15.z;
          r15.y = r14.z * r15.y + r15.z;
          r17.z = r13.w ? r15.y : r17.z;
        }
      }
      r13.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r14.w;
      r13.w = cmp(r17.z < r13.w);
      r7.w = r13.w ? 0 : 1;
    }
    if (r12.w == 0) {
      if (enableDitheredShadow == 0) {
        r12.w = (uint)r8.w;
        r15.yz = -sunConstants.splitPinTransform[r12.w].xy + r14.yz;
        r15.yz = sunConstants.splitPinTransform[r12.w].zz * r15.yz;
        r17.xy = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.w = (int16)sunConstants.splitArrayOffset;
        r17.z = r12.w + r8.w;
        r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
        r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
        r12.w = r13.w + r12.w;
        r12.w = saturate(-1 + r12.w);
        r13.w = r12.w * r12.w;
        r7.w = r13.w * r12.w;
      }
      if (enableDitheredShadow != 0) {
        r17.x = -r4.x;
        r12.w = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r15.yz = -sunConstants.splitPinTransform[r12.w].xy + r14.yz;
        r15.yz = sunConstants.splitPinTransform[r12.w].zz * r15.yz;
        r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.yz = -sunConstants.splitPinTransform[r8.w].xy + r14.yz;
        r14.yz = sunConstants.splitPinTransform[r8.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r17.y = r13.x;
        r17.z = r4.x;
        r13.w = 0;
        r14.w = 0;
        while (true) {
          r15.w = cmp((uint)r14.w >= 8);
          if (r15.w != 0) break;
          r15.w = cmp((uint)r9.w < (uint)r14.w);
          r18.xy = r15.ww ? r14.yz : r15.yz;
          r17.w = r15.w ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r12.w].w;
          r15.w = r15.w ? r8.w : r12.w;
          r19.x = dot(icb[r14.w+0].yx, r17.xy);
          r19.y = dot(icb[r14.w+0].yx, r17.yz);
          r18.xy = r19.xy * r17.ww + r18.xy;
          r15.w = (int)r15.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r15.w;
          r15.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r6.w).x;
          r17.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r15.w = r17.w + r15.w;
          r15.w = saturate(-1 + r15.w);
          r13.w = r15.w * 0.125 + r13.w;
          r14.w = (int)r14.w + 1;
        }
        r6.w = r13.w * r13.w;
        r7.w = r6.w * r13.w;
      }
    }
  }
  r6.w = 1 + -r2.y;
  r8.w = 5 * r6.w;
  r9.w = r6.w * 5 + -2.5;
  r9.w = 0.400000006 * r9.w;
  r9.w = max(0, r9.w);
  r9.w = 100 * r9.w;
  r14.yz = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r12.w = exp2(r14.y);
  r12.w = r12.w * r2.x;
  r12.w = 9.1368103 * r12.w;
  r13.w = r8.w * r6.w;
  r13.w = -r13.w * 2.0159049 + r14.z;
  r13.w = exp2(r13.w);
  r13.w = r13.w * r2.x;
  r13.w = 9.70808983 * r13.w;
  r12.w = max(r13.w, r12.w);
  r12.w = max(1.26815999, r12.w);
  if (probeDebug != 0) {
    r13.w = (uint)renderTargetSize.x;
    r13.w = (int)r13.w + 7;
    r13.w = (uint)r13.w >> 3;
    r13.w = mad((int)r0.y, (int)r13.w, (int)r0.x);
    bitmask.w = ((~(-1 << 27)) << 5) & 0xffffffff;  r13.w = (((uint)r13.w << 5) & bitmask.w) | ((uint)16 & ~bitmask.w);
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
    r15.yzw = float3(0,0,0);
    r28.zw = float2(0,0);
    r29.zw = float2(0,0);
    while (true) {
      r30.x = cmp((uint)r29.w >= numRefProbes);
      if (r30.x != 0) break;
      r30.x = (uint)r29.w >> 5;
      r30.x = (int)r13.w + (int)r30.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r30.x, r30.x, l(0), t26.xxxx
    r30.x = samp0[]..swiz;
      r31.xyzw = r17.yxzw;
      r32.xyzw = r18.xyzw;
      r33.xyzw = r19.yzwx;
      r34.xyzw = r20.xyzw;
      r35.xyzw = r21.xyzw;
      r36.xyzw = r22.zwxy;
      r37.xyzw = r23.zwxy;
      r38.xyzw = r25.zwxy;
      r39.xyzw = r26.zwxy;
      r30.yzw = r14.yzw;
      r40.xyz = r15.zyw;
      r40.w = r28.z;
      r41.x = r29.z;
      r41.y = r28.w;
      r42.xyzw = r24.zwxy;
      r43.xyzw = r27.zwxy;
      r41.z = r30.x;
      while (true) {
        if (r41.z == 0) break;
        r41.w = firstbitlow((uint)r41.z);
        r44.x = 1 << (int)r41.w;
        r44.x = ~(int)r44.x;
        r41.z = (int)r41.z & (int)r44.x;
        r41.w = (int)r29.w + (int)r41.w;
        r41.w = (int)r41.w * 14;
        r44.xyz = -refProbeConstantsCB[r41.w].data[0].xyz + r10.xyz;
        r44.x = dot(r44.xyz, r44.xyz);
        r44.x = sqrt(r44.x);
        r44.x = cmp(probeDebugRadius >= r44.x);
        if (r44.x != 0) {
          r31.yzw = refProbeConstantsCB[r41.w].data[1].xyz;
          r31.x = refProbeConstantsCB[r41.w].data[0].w;
          r32.yzw = refProbeConstantsCB[r41.w].data[2].xyz;
          r32.x = refProbeConstantsCB[r41.w].data[1].w;
          r33.xyz = refProbeConstantsCB[r41.w].data[3].xyz;
          r33.w = refProbeConstantsCB[r41.w].data[4].z;
          r34.yz = refProbeConstantsCB[r41.w].data[4].xy;
          r34.x = refProbeConstantsCB[r41.w].data[3].w;
          r34.w = refProbeConstantsCB[r41.w].data[6].x;
          r35.yzw = refProbeConstantsCB[r41.w].data[5].xyz;
          r35.x = refProbeConstantsCB[r41.w].data[4].w;
          r36.yz = refProbeConstantsCB[r41.w].data[7].yw;
          r36.x = refProbeConstantsCB[r41.w].data[6].y;
          r36.w = refProbeConstantsCB[r41.w].data[8].x;
          r37.xyz = refProbeConstantsCB[r41.w].data[8].yzw;
          r37.w = refProbeConstantsCB[r41.w].data[9].x;
          r38.xyz = refProbeConstantsCB[r41.w].data[10].yzw;
          r38.w = refProbeConstantsCB[r41.w].data[11].x;
          r39.xyz = refProbeConstantsCB[r41.w].data[11].yzw;
          r39.w = refProbeConstantsCB[r41.w].data[12].x;
          r30.yzw = refProbeConstantsCB[r41.w].data[0].xyz;
          r44.xy = refProbeConstantsCB[r41.w].data[13].yz;
          r40.z = -1;
          r40.w = refProbeConstantsCB[r41.w].data[2].w;
          r41.x = refProbeConstantsCB[r41.w].data[5].w;
          r41.y = refProbeConstantsCB[r41.w].data[7].z;
          r42.xyz = refProbeConstantsCB[r41.w].data[9].yzw;
          r42.w = refProbeConstantsCB[r41.w].data[10].x;
          r43.xyz = refProbeConstantsCB[r41.w].data[12].yzw;
          r43.w = refProbeConstantsCB[r41.w].data[13].x;
          r40.xy = r44.xy;
          break;
        }
      }
      if (r40.z != 0) {
        r17.xyzw = r31.yxzw;
        r18.xyzw = r32.xyzw;
        r19.xyzw = r33.wxyz;
        r20.xyzw = r34.xyzw;
        r21.xyzw = r35.xyzw;
        r22.xyzw = r36.zwxy;
        r23.xyzw = r37.zwxy;
        r24.xyzw = r42.zwxy;
        r25.xyzw = r38.zwxy;
        r26.xyzw = r39.zwxy;
        r27.xyzw = r43.zwxy;
        r14.yzw = r30.yzw;
        r15.yz = r40.yx;
        r15.w = -1;
        r28.z = r40.w;
        r29.z = r41.x;
        r28.w = r41.y;
        break;
      }
      r29.w = (int)r29.w + 32;
      r17.xyzw = r31.yxzw;
      r18.xyzw = r32.xyzw;
      r19.xyzw = r33.wxyz;
      r20.xyzw = r34.xyzw;
      r21.xyzw = r35.xyzw;
      r22.xyzw = r36.zwxy;
      r23.xyzw = r37.zwxy;
      r25.xyzw = r38.zwxy;
      r26.xyzw = r39.zwxy;
      r14.yzw = r30.yzw;
      r15.yzw = r40.yxz;
      r28.z = r40.w;
      r29.z = r41.x;
      r28.w = r41.y;
      r24.xyzw = r42.zwxy;
      r27.xyzw = r43.zwxy;
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
    r15.w = 0;
  }
  if (r15.w != 0) {
    if (r2.z != 0) {
      r31.yzw = eyeOffset.xyz + r14.yzw;
      r31.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r14.yzw = -r14.yzw + r10.xyz;
    r13.w = (int)r28.w & 0x0000ffff;
    if (6 == 0) r15.z = 0; else if (6+25 < 32) {     r15.z = (uint)r28.w << (32-(6 + 25)); r15.z = (uint)r15.z >> (32-6);    } else r15.z = (uint)r28.w >> 25;
    r17.w = (int)r13.w * 6;
    r18.w = dot(refProbeAttenuationConstantsCB[r17.w].data[0].xyz, r14.yzw);
    r18.w = saturate(refProbeAttenuationConstantsCB[r17.w].data[0].w + r18.w);
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
    r31.x = r18.w * r17.w;
    r17.w = (int)r20.w & 1;
    r31.yz = float2(0,1);
    r21.zw = r17.ww ? r31.xy : r31.zx;
    r31.x = 1;
    r17.w = r20.w;
    r32.xy = r21.zw;
    r18.w = 1;
    while (true) {
      r19.w = cmp((int)r18.w >= (int)r15.z);
      if (r19.w != 0) break;
      r19.w = (int)r13.w + (int)r18.w;
      r19.w = (int)r19.w * 6;
      r22.w = dot(refProbeAttenuationConstantsCB[r19.w].data[0].xyz, r14.yzw);
      r22.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[0].w + r22.w);
      r22.w = r32.x * r22.w;
      r29.w = dot(refProbeAttenuationConstantsCB[r19.w].data[1].xyz, r14.yzw);
      r29.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[1].w + r29.w);
      r22.w = r29.w * r22.w;
      r29.w = dot(refProbeAttenuationConstantsCB[r19.w].data[2].xyz, r14.yzw);
      r29.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[2].w + r29.w);
      r22.w = r29.w * r22.w;
      r29.w = dot(refProbeAttenuationConstantsCB[r19.w].data[3].xyz, r14.yzw);
      r29.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[3].w + r29.w);
      r22.w = r29.w * r22.w;
      r29.w = dot(refProbeAttenuationConstantsCB[r19.w].data[4].xyz, r14.yzw);
      r29.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[4].w + r29.w);
      r22.w = r29.w * r22.w;
      r29.w = dot(refProbeAttenuationConstantsCB[r19.w].data[5].xyz, r14.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[5].w + r29.w);
      r32.x = r22.w * r19.w;
      r29.w = (uint)r17.w >> 2;
      if (1 == 0) r30.w = 0; else if (1+2 < 32) {       r30.w = (uint)r17.w << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);      } else r30.w = (uint)r17.w >> 2;
      r31.z = (int)r29.w & 2;
      r31.w = max(r32.y, r32.x);
      r19.w = -r22.w * r19.w + 1;
      r19.w = r32.y * r19.w;
      r31.y = r31.z ? r19.w : r31.w;
      r32.xy = r30.ww ? r32.xy : r31.xy;
      r18.w = (int)r18.w + 1;
      r17.w = r29.w;
    }
    r32.y = saturate(r32.y);
    r31.w = r32.y * r21.x;
    r13.w = cmp(0 < r31.w);
    if (r13.w != 0) {
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.w, cb2[52].x, l(880), u2.xxxx
      r13.w = samp0[]..swiz;
        r13.w = (int)r13.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r13.w = r31.w * r21.y;
      r15.z = dot(r16.xyz, r22.xyz);
      r17.w = dot(r14.yzw, r22.xyz);
      r17.w = r17.w + -r23.w;
      r18.w = cmp(r17.w >= 0);
      r17.w = max(abs(r17.w), r9.w);
      r17.w = r18.w ? r17.w : -r17.w;
      r15.z = max(1.00000001e-07, -r15.z);
      r15.z = r17.w / r15.z;
      r15.z = min(131072, abs(r15.z));
      r17.w = dot(r16.xyz, r23.xyz);
      r18.w = dot(r14.yzw, r23.xyz);
      r18.w = r18.w + -r24.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r9.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r15.z = min(abs(r17.w), r15.z);
      r17.w = dot(r16.xyz, r24.xyz);
      r18.w = dot(r14.yzw, r24.xyz);
      r18.w = r18.w + -r25.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r9.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r15.z = min(abs(r17.w), r15.z);
      r17.w = dot(r16.xyz, r25.xyz);
      r18.w = dot(r14.yzw, r25.xyz);
      r18.w = r18.w + -r26.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r9.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r15.z = min(abs(r17.w), r15.z);
      r17.w = dot(r16.xyz, r26.xyz);
      r18.w = dot(r14.yzw, r26.xyz);
      r18.w = r18.w + -r27.w;
      r19.w = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r9.w);
      r18.w = r19.w ? r18.w : -r18.w;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.w / r17.w;
      r15.z = min(abs(r17.w), r15.z);
      r17.w = dot(r16.xyz, r27.xyz);
      r18.w = dot(r14.yzw, r27.xyz);
      r15.y = r18.w + -r15.y;
      r18.w = cmp(r15.y >= 0);
      r15.y = max(abs(r15.y), r9.w);
      r15.y = r18.w ? r15.y : -r15.y;
      r17.w = max(1.00000001e-07, -r17.w);
      r15.y = r15.y / r17.w;
      r15.y = min(r15.z, abs(r15.y));
      r20.xyz = r20.xyz + r14.yzw;
      r20.xyz = r16.xyz * r15.yyy + r20.xyz;
      r15.z = dot(r20.xyz, r20.xyz);
      r15.z = sqrt(r15.z);
      r15.y = r15.y / r15.z;
      r15.y = r15.y + r15.y;
      r15.y = sqrt(r15.y);
      r15.y = r6.w * 5 + r15.y;
      r15.y = -0.844799995 + r15.y;
      r21.x = dot(r20.xyz, r30.xyz);
      r21.y = dot(r20.xyz, r17.xyz);
      r21.z = dot(r20.xyz, r28.xyz);
      if (9 == 0) r15.z = 0; else if (9+16 < 32) {       r15.z = (uint)r28.w << (32-(9 + 16)); r15.z = (uint)r15.z >> (32-9);      } else r15.z = (uint)r28.w >> 16;
      r21.w = (uint)r15.z;
      r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, r15.y).xyz;
      r22.xyz = (int3)r20.xyz & int3(-2147483648,-2147483648,-2147483648);
      r22.xyz = cmp((int3)r22.xyz == int3(2139095040,2139095040,2139095040));
      r15.y = (int)r22.y | (int)r22.x;
      r15.y = (int)r22.z | (int)r15.y;
      r20.xyz = r15.yyy ? float3(1,1,0) : r20.xyz;
      r22.x = dot(r14.yzw, r30.xyz);
      r22.y = dot(r14.yzw, r17.xyz);
      r22.z = dot(r14.yzw, r28.xyz);
      r14.yzw = saturate(r22.xyz * r18.xyz + float3(0.5,0.5,0.5));
      r14.yzw = r14.yzw * r19.xyz + r29.xyz;
      r21.x = dot(r11.xyz, r30.xyz);
      r21.y = dot(r11.xyz, r17.xyz);
      r21.z = dot(r11.xyz, r28.xyz);
      r17.xyz = cmp(float3(0,0,0) < r21.xyz);
      r18.z = r17.x ? 0 : 0.5;
      r18.xy = float2(0,0);
      r18.xyz = r18.xyz + r14.yzw;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r19.xyz = r21.xyz * r21.xyz;
      r19.xyz = r19.xyz * r13.www;
      r22.z = r17.y ? 0 : 0.5;
      r22.xy = float2(0,0);
      r17.xyw = r22.xyz + r14.yzw;
      r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
      r17.xyw = r17.xyw * r19.yyy;
      r17.xyw = r18.xyz * r19.xxx + r17.xyw;
      r18.z = r17.z ? 0 : 0.5;
      r18.xy = float2(0,0);
      r14.yzw = r18.xyz + r14.yzw;
      r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
      r14.yzw = r14.yzw * r19.zzz + r17.xyw;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, 6).xyz;
      r18.xyz = (int3)r17.xyz & int3(-2147483648,-2147483648,-2147483648);
      r18.xyz = cmp((int3)r18.xyz == int3(2139095040,2139095040,2139095040));
      r15.y = (int)r18.y | (int)r18.x;
      r15.y = (int)r18.z | (int)r15.y;
      r17.xyz = r15.yyy ? float3(1,1,0) : r17.xyz;
      r14.yzw = r17.xyz * r14.yzw;
      r14.y = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r14.z = r14.y * r12.w;
      r17.xyz = r20.xyz * r13.www;
      r13.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r13.w = r12.w * r14.y + r13.w;
      r13.w = r14.z / r13.w;
      r31.xyz = r17.xyz * r13.www;
      r13.w = 257;
    } else {
      r31.xyzw = float4(0,0,0,0);
      r13.w = 1;
    }
    r14.y = -1;
  } else {
    r31.xyzw = float4(0,0,0,0);
    r13.w = 0;
  }
  r14.y = (int)r14.y & (int)r15.w;
  if (r14.y == 0) {
    r14.y = numRefProbes + -numOverrideProbes;
    r14.z = (uint)renderTargetSize.x;
    r14.z = (int)r14.z + 7;
    r14.z = (uint)r14.z >> 3;
    r14.z = mad((int)r0.y, (int)r14.z, (int)r0.x);
    bitmask.z = ((~(-1 << 27)) << 5) & 0xffffffff;  r14.z = (((uint)r14.z << 5) & bitmask.z) | ((uint)16 & ~bitmask.z);
    r14.w = (int)r14.y & -32;
    r15.y = (int)-r14.w + (int)r14.y;
    r15.z = numRefProbes & -32;
    r15.w = (int)-r15.z + numRefProbes;
    r17.x = 16;
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r20.xz = float2(1,1);
    r21.xy = float2(0,0);
    r22.xy = float2(0,0);
    r23.xyz = float3(0,0,0);
    r23.w = r31.x;
    r24.xyz = r31.yzw;
    r24.w = r13.w;
    r18.w = r14.w;
    while (true) {
      r19.w = cmp((uint)r18.w >= numRefProbes);
      if (r19.w != 0) break;
      r19.w = (uint)r18.w >> 5;
      r19.w = (int)r14.z + (int)r19.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t26.xxxx
    r19.w = samp0[]..swiz;
      r21.w = cmp((int)r14.w == (int)r18.w);
      bitmask.w = ((~(-1 << r15.y)) << 0) & 0xffffffff;  r22.w = (((uint)0 << 0) & bitmask.w) | ((uint)r19.w & ~bitmask.w);
      r19.w = r21.w ? r22.w : r19.w;
      r21.w = cmp((int)r15.z == (int)r18.w);
      if (r15.w == 0) r22.w = 0; else if (r15.w+0 < 32) {       r22.w = (uint)r19.w << (32-(r15.w + 0)); r22.w = (uint)r22.w >> (32-r15.w);      } else r22.w = (uint)r19.w >> 0;
      r19.w = r21.w ? r22.w : r19.w;
      r25.xyzw = r23.xyzw;
      r26.xyzw = r24.xyzw;
      r21.w = r19.w;
      while (true) {
        if (r21.w == 0) break;
        r22.w = firstbitlow((uint)r21.w);
        r27.x = 1 << (int)r22.w;
        r27.x = ~(int)r27.x;
        r21.w = (int)r21.w & (int)r27.x;
        r22.w = (int)r18.w + (int)r22.w;
        r22.w = (int)r22.w * 14;
        r27.x = (int)r26.w & 255;
        r27.y = cmp((uint)r27.x < 32);
        r27.y = r2.z ? r27.y : 0;
        if (r27.y != 0) {
          r27.x = mad((int)r27.x, 20, 880);
          r17.yzw = refProbeConstantsCB[r22.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r27.x = u2.xyzw;
        }
        r27.w = (int)r26.w + 1;
        r17.yzw = -refProbeConstantsCB[r22.w].data[0].xyz + r10.xyz;
        r28.x = 0x0000ffff & (int)refProbeConstantsCB[r22.w].data[7].z;
        if (6 == 0) r28.y = 0; else if (6+25 < 32) {         r28.y = (uint)refProbeConstantsCB[r22.w].data[7].z << (32-(6 + 25)); r28.y = (uint)r28.y >> (32-6);        } else r28.y = (uint)refProbeConstantsCB[r22.w].data[7].z >> 25;
        r28.z = (int)r28.x * 6;
        r28.w = dot(refProbeAttenuationConstantsCB[r28.z].data[0].xyz, r17.yzw);
        r28.w = saturate(refProbeAttenuationConstantsCB[r28.z].data[0].w + r28.w);
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[1].xyz, r17.yzw);
        r29.x = saturate(refProbeAttenuationConstantsCB[r28.z].data[1].w + r29.x);
        r28.w = r29.x * r28.w;
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[2].xyz, r17.yzw);
        r29.x = saturate(refProbeAttenuationConstantsCB[r28.z].data[2].w + r29.x);
        r28.w = r29.x * r28.w;
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[3].xyz, r17.yzw);
        r29.x = saturate(refProbeAttenuationConstantsCB[r28.z].data[3].w + r29.x);
        r28.w = r29.x * r28.w;
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[4].xyz, r17.yzw);
        r29.x = saturate(refProbeAttenuationConstantsCB[r28.z].data[4].w + r29.x);
        r28.w = r29.x * r28.w;
        r29.x = dot(refProbeAttenuationConstantsCB[r28.z].data[5].xyz, r17.yzw);
        r28.z = saturate(refProbeAttenuationConstantsCB[r28.z].data[5].w + r29.x);
        r18.x = r28.w * r28.z;
        r28.z = 1 & (int)refProbeConstantsCB[r22.w].data[6].x;
        r28.zw = r28.zz ? r18.xy : r18.zx;
        r18.x = refProbeConstantsCB[r22.w].data[6].x;
        r29.xy = r28.zw;
        r29.z = 1;
        while (true) {
          r29.w = cmp((int)r29.z >= (int)r28.y);
          if (r29.w != 0) break;
          r29.w = (int)r28.x + (int)r29.z;
          r29.w = (int)r29.w * 6;
          r30.x = dot(refProbeAttenuationConstantsCB[r29.w].data[0].xyz, r17.yzw);
          r30.x = saturate(refProbeAttenuationConstantsCB[r29.w].data[0].w + r30.x);
          r30.x = r30.x * r29.x;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[1].xyz, r17.yzw);
          r30.y = saturate(refProbeAttenuationConstantsCB[r29.w].data[1].w + r30.y);
          r30.x = r30.x * r30.y;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[2].xyz, r17.yzw);
          r30.y = saturate(refProbeAttenuationConstantsCB[r29.w].data[2].w + r30.y);
          r30.x = r30.x * r30.y;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[3].xyz, r17.yzw);
          r30.y = saturate(refProbeAttenuationConstantsCB[r29.w].data[3].w + r30.y);
          r30.x = r30.x * r30.y;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[4].xyz, r17.yzw);
          r30.y = saturate(refProbeAttenuationConstantsCB[r29.w].data[4].w + r30.y);
          r30.x = r30.x * r30.y;
          r30.y = dot(refProbeAttenuationConstantsCB[r29.w].data[5].xyz, r17.yzw);
          r29.w = saturate(refProbeAttenuationConstantsCB[r29.w].data[5].w + r30.y);
          r29.x = r30.x * r29.w;
          r30.y = (uint)r18.x >> 2;
          if (1 == 0) r30.z = 0; else if (1+2 < 32) {           r30.z = (uint)r18.x << (32-(1 + 2)); r30.z = (uint)r30.z >> (32-1);          } else r30.z = (uint)r18.x >> 2;
          r30.w = (int)r30.y & 2;
          r32.x = max(r29.y, r29.x);
          r29.w = -r30.x * r29.w + 1;
          r29.w = r29.y * r29.w;
          r20.y = r30.w ? r29.w : r32.x;
          r29.xy = r30.zz ? r29.xy : r20.xy;
          r29.z = (int)r29.z + 1;
          r18.x = r30.y;
        }
        r29.y = saturate(r29.y);
        r18.x = refProbeConstantsCB[r22.w].data[6].y * r29.y;
        r20.y = cmp(0 < r18.x);
        if (r20.y != 0) {
          r20.y = (int)r27.w & 255;
          r28.x = (int)r20.y + -1;
          r28.x = cmp((uint)r28.x < 32);
          r28.x = r2.z ? r28.x : 0;
          if (r28.x != 0) {
            r28.xy = mad((int2)r20.yy, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.y, cb2[52].x, r28.x, u2.xxxx
          r20.y = samp0[]..swiz;
            r20.y = (int)r20.y | 32;
            GBufferDiffuseColor[viewID].r28.x = u2.x;
            GBufferDiffuseColor[viewID].r28.y = u2.x;
          }
          r26.w = (int)r26.w + 257;
          r26.z = r29.y * refProbeConstantsCB[r22.w].data[6].y + r26.z;
          r18.x = refProbeConstantsCB[r22.w].data[7].y * r18.x;
          r28.x = refProbeConstantsCB[r22.w].data[7].w;
          r28.yz = refProbeConstantsCB[r22.w].data[8].xy;
          r20.y = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[8].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r9.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r20.y = max(1.00000001e-07, -r20.y);
          r20.y = r28.x / r20.y;
          r20.y = min(131072, abs(r20.y));
          r28.x = refProbeConstantsCB[r22.w].data[8].w;
          r28.yz = refProbeConstantsCB[r22.w].data[9].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[9].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r9.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[9].w;
          r28.yz = refProbeConstantsCB[r22.w].data[10].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[10].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r9.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[10].w;
          r28.yz = refProbeConstantsCB[r22.w].data[11].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[11].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r9.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[11].w;
          r28.yz = refProbeConstantsCB[r22.w].data[12].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[12].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r9.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[12].w;
          r28.yz = refProbeConstantsCB[r22.w].data[13].xy;
          r28.w = dot(r16.xyz, r28.xyz);
          r28.x = dot(r17.yzw, r28.xyz);
          r28.x = -refProbeConstantsCB[r22.w].data[13].z + r28.x;
          r28.y = cmp(r28.x >= 0);
          r28.x = max(abs(r28.x), r9.w);
          r28.x = r28.y ? r28.x : -r28.x;
          r28.y = max(1.00000001e-07, -r28.w);
          r28.x = r28.x / r28.y;
          r20.y = min(abs(r28.x), r20.y);
          r28.x = refProbeConstantsCB[r22.w].data[3].w + r17.y;
          r28.yz = refProbeConstantsCB[r22.w].data[4].xy + r17.zw;
          r28.xyz = r16.xyz * r20.yyy + r28.xyz;
          r28.w = dot(r28.xyz, r28.xyz);
          r28.w = sqrt(r28.w);
          r20.y = r20.y / r28.w;
          r20.y = r20.y + r20.y;
          r20.y = sqrt(r20.y);
          r20.y = r6.w * 5 + r20.y;
          r20.y = -0.844799995 + r20.y;
          r30.x = refProbeConstantsCB[r22.w].data[0].w;
          r30.y = refProbeConstantsCB[r22.w].data[1].z;
          r30.z = refProbeConstantsCB[r22.w].data[2].y;
          r32.x = dot(r28.xyz, r30.xyz);
          r33.xy = refProbeConstantsCB[r22.w].data[1].xw;
          r33.z = refProbeConstantsCB[r22.w].data[2].z;
          r32.y = dot(r28.xyz, r33.xyz);
          r34.x = refProbeConstantsCB[r22.w].data[1].y;
          r34.yz = refProbeConstantsCB[r22.w].data[2].xw;
          r32.z = dot(r28.xyz, r34.xyz);
          if (9 == 0) r28.x = 0; else if (9+16 < 32) {           r28.x = (uint)refProbeConstantsCB[r22.w].data[7].z << (32-(9 + 16)); r28.x = (uint)r28.x >> (32-9);          } else r28.x = (uint)refProbeConstantsCB[r22.w].data[7].z >> 16;
          r32.w = (uint)r28.x;
          r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r20.y).xyz;
          r29.xzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
          r29.xzw = cmp((int3)r29.xzw == int3(2139095040,2139095040,2139095040));
          r20.y = (int)r29.z | (int)r29.x;
          r20.y = (int)r29.w | (int)r20.y;
          r28.xyz = r20.yyy ? float3(1,1,0) : r28.xyz;
          r35.x = dot(r17.yzw, r30.xyz);
          r35.y = dot(r17.yzw, r33.xyz);
          r35.z = dot(r17.yzw, r34.xyz);
          r17.yzw = saturate(r35.xyz * refProbeConstantsCB[r22.w].data[3].xyz + float3(0.5,0.5,0.5));
          r35.xy = refProbeConstantsCB[r22.w].data[4].zw * r17.yz;
          r35.z = refProbeConstantsCB[r22.w].data[5].x * r17.w;
          r17.yzw = refProbeConstantsCB[r22.w].data[5].yzw + r35.xyz;
          r32.x = dot(r11.xyz, r30.xyz);
          r32.y = dot(r11.xyz, r33.xyz);
          r32.z = dot(r11.xyz, r34.xyz);
          r29.xzw = cmp(float3(0,0,0) < r32.xyz);
          r19.z = r29.x ? 0 : 0.5;
          r30.xyz = r19.xyz + r17.yzw;
          r30.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
          r33.xyz = r32.xyz * r32.xyz;
          r33.xyz = r33.xyz * r18.xxx;
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
          r19.z = (int)r30.y | (int)r30.x;
          r19.z = (int)r30.z | (int)r19.z;
          r29.xzw = r19.zzz ? float3(1,1,0) : r29.xzw;
          r30.xyz = r29.xzw * r17.yzw;
          r19.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r25.xyz = r17.yzw * r29.xzw + r25.xyz;
          r17.y = r19.z * r12.w;
          r28.xyz = r28.xyz * r18.xxx;
          r17.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r17.z = r12.w * r19.z + r17.z;
          r17.y = r17.y / r17.z;
          r30.x = r25.w;
          r30.yz = r26.xy;
          r17.yzw = r28.xyz * r17.yyy + r30.xyz;
          r25.w = r17.y;
          r26.xy = r17.zw;
        } else {
          r27.xyz = r26.xyz;
          r26.xyzw = r27.xyzw;
        }
      }
      r23.xyzw = r25.xyzw;
      r24.xyzw = r26.xyzw;
      r18.w = (int)r18.w + 32;
    }
    r17.x = 16;
    r18.yz = float2(0,1);
    r19.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xy = float2(0,0);
    r25.xyz = r23.xyz;
    r26.x = r23.w;
    r26.yz = r24.xy;
    r27.xyz = r24.zwz;
    r15.z = 0;
    while (true) {
      r15.w = cmp((uint)r15.z >= (uint)r14.y);
      if (r15.w != 0) break;
      r15.w = (uint)r15.z >> 5;
      r15.w = (int)r14.z + (int)r15.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t26.xxxx
    r15.w = samp0[]..swiz;
      r18.w = cmp((int)r14.w == (int)r15.z);
      if (r15.y == 0) r19.w = 0; else if (r15.y+0 < 32) {       r19.w = (uint)r15.w << (32-(r15.y + 0)); r19.w = (uint)r19.w >> (32-r15.y);      } else r19.w = (uint)r15.w >> 0;
      r15.w = r18.w ? r19.w : r15.w;
      r28.xyz = r25.xyz;
      r29.xyz = r26.xyz;
      r30.xyz = r27.xzy;
      r18.w = r15.w;
      while (true) {
        if (r18.w == 0) break;
        r19.w = firstbitlow((uint)r18.w);
        r20.x = 1 << (int)r19.w;
        r20.x = ~(int)r20.x;
        r18.w = (int)r18.w & (int)r20.x;
        r19.w = (int)r15.z + (int)r19.w;
        r19.w = (int)r19.w * 14;
        r20.x = (int)r30.z & 255;
        r20.y = cmp((uint)r20.x < 32);
        r20.y = r2.z ? r20.y : 0;
        if (r20.y != 0) {
          r20.x = mad((int)r20.x, 20, 880);
          r17.yzw = refProbeConstantsCB[r19.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r20.x = u2.xyzw;
        }
        r20.y = (int)r30.z + 1;
        r17.yzw = -refProbeConstantsCB[r19.w].data[0].xyz + r10.xyz;
        r21.w = 0x0000ffff & (int)refProbeConstantsCB[r19.w].data[7].z;
        if (6 == 0) r22.w = 0; else if (6+25 < 32) {         r22.w = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(6 + 25)); r22.w = (uint)r22.w >> (32-6);        } else r22.w = (uint)refProbeConstantsCB[r19.w].data[7].z >> 25;
        r25.w = (int)r21.w * 6;
        r26.w = dot(refProbeAttenuationConstantsCB[r25.w].data[0].xyz, r17.yzw);
        r26.w = saturate(refProbeAttenuationConstantsCB[r25.w].data[0].w + r26.w);
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
        r18.x = r26.w * r25.w;
        r25.w = 1 & (int)refProbeConstantsCB[r19.w].data[6].x;
        r32.xy = r25.ww ? r18.xy : r18.zx;
        r18.x = refProbeConstantsCB[r19.w].data[6].x;
        r33.xy = r32.xy;
        r25.w = 1;
        while (true) {
          r26.w = cmp((int)r25.w >= (int)r22.w);
          if (r26.w != 0) break;
          r26.w = (int)r21.w + (int)r25.w;
          r26.w = (int)r26.w * 6;
          r27.w = dot(refProbeAttenuationConstantsCB[r26.w].data[0].xyz, r17.yzw);
          r27.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[0].w + r27.w);
          r27.w = r33.x * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[1].xyz, r17.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[1].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[2].xyz, r17.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[2].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[3].xyz, r17.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[3].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[4].xyz, r17.yzw);
          r28.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[4].w + r28.w);
          r27.w = r28.w * r27.w;
          r28.w = dot(refProbeAttenuationConstantsCB[r26.w].data[5].xyz, r17.yzw);
          r26.w = saturate(refProbeAttenuationConstantsCB[r26.w].data[5].w + r28.w);
          r33.x = r27.w * r26.w;
          r28.w = (uint)r18.x >> 2;
          if (1 == 0) r29.w = 0; else if (1+2 < 32) {           r29.w = (uint)r18.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);          } else r29.w = (uint)r18.x >> 2;
          r30.w = (int)r28.w & 2;
          r31.w = max(r33.y, r33.x);
          r26.w = -r27.w * r26.w + 1;
          r26.w = r33.y * r26.w;
          r20.w = r30.w ? r26.w : r31.w;
          r33.xy = r29.ww ? r33.xy : r20.zw;
          r25.w = (int)r25.w + 1;
          r18.x = r28.w;
        }
        r18.x = saturate(r33.y + -r30.y);
        r20.w = refProbeConstantsCB[r19.w].data[6].y * r18.x;
        r21.w = cmp(0 < r20.w);
        if (r21.w != 0) {
          r21.w = (int)r20.y & 255;
          r22.w = (int)r21.w + -1;
          r22.w = cmp((uint)r22.w < 32);
          r22.w = r2.z ? r22.w : 0;
          if (r22.w != 0) {
            r32.xy = mad((int2)r21.ww, int2(20,20), int2(860,876));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r21.w, cb2[52].x, r32.x, u2.xxxx
          r21.w = samp0[]..swiz;
            r21.w = (int)r21.w | 32;
            GBufferDiffuseColor[viewID].r32.x = u2.x;
            GBufferDiffuseColor[viewID].r32.y = u2.x;
          }
          r30.z = (int)r30.z + 257;
          r30.x = r18.x * refProbeConstantsCB[r19.w].data[6].y + r30.x;
          r18.x = refProbeConstantsCB[r19.w].data[7].y * r20.w;
          r32.x = refProbeConstantsCB[r19.w].data[7].w;
          r32.yz = refProbeConstantsCB[r19.w].data[8].xy;
          r20.w = dot(r16.xyz, r32.xyz);
          r21.w = dot(r17.yzw, r32.xyz);
          r21.w = -refProbeConstantsCB[r19.w].data[8].z + r21.w;
          r22.w = cmp(r21.w >= 0);
          r21.w = max(abs(r21.w), r9.w);
          r21.w = r22.w ? r21.w : -r21.w;
          r20.w = max(1.00000001e-07, -r20.w);
          r20.w = r21.w / r20.w;
          r20.w = min(131072, abs(r20.w));
          r32.x = refProbeConstantsCB[r19.w].data[8].w;
          r32.yz = refProbeConstantsCB[r19.w].data[9].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[9].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r9.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[9].w;
          r32.yz = refProbeConstantsCB[r19.w].data[10].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[10].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r9.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[10].w;
          r32.yz = refProbeConstantsCB[r19.w].data[11].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[11].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r9.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[11].w;
          r32.yz = refProbeConstantsCB[r19.w].data[12].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[12].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r9.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[12].w;
          r32.yz = refProbeConstantsCB[r19.w].data[13].xy;
          r21.w = dot(r16.xyz, r32.xyz);
          r22.w = dot(r17.yzw, r32.xyz);
          r22.w = -refProbeConstantsCB[r19.w].data[13].z + r22.w;
          r25.w = cmp(r22.w >= 0);
          r22.w = max(abs(r22.w), r9.w);
          r22.w = r25.w ? r22.w : -r22.w;
          r21.w = max(1.00000001e-07, -r21.w);
          r21.w = r22.w / r21.w;
          r20.w = min(abs(r21.w), r20.w);
          r32.x = refProbeConstantsCB[r19.w].data[3].w + r17.y;
          r32.yz = refProbeConstantsCB[r19.w].data[4].xy + r17.zw;
          r32.xyz = r16.xyz * r20.www + r32.xyz;
          r21.w = dot(r32.xyz, r32.xyz);
          r21.w = sqrt(r21.w);
          r20.w = r20.w / r21.w;
          r20.w = r20.w + r20.w;
          r20.w = sqrt(r20.w);
          r20.w = r6.w * 5 + r20.w;
          r20.w = -0.844799995 + r20.w;
          r34.x = refProbeConstantsCB[r19.w].data[0].w;
          r34.y = refProbeConstantsCB[r19.w].data[1].z;
          r34.z = refProbeConstantsCB[r19.w].data[2].y;
          r35.x = dot(r32.xyz, r34.xyz);
          r36.xy = refProbeConstantsCB[r19.w].data[1].xw;
          r36.z = refProbeConstantsCB[r19.w].data[2].z;
          r35.y = dot(r32.xyz, r36.xyz);
          r37.x = refProbeConstantsCB[r19.w].data[1].y;
          r37.yz = refProbeConstantsCB[r19.w].data[2].xw;
          r35.z = dot(r32.xyz, r37.xyz);
          if (9 == 0) r21.w = 0; else if (9+16 < 32) {           r21.w = (uint)refProbeConstantsCB[r19.w].data[7].z << (32-(9 + 16)); r21.w = (uint)r21.w >> (32-9);          } else r21.w = (uint)refProbeConstantsCB[r19.w].data[7].z >> 16;
          r35.w = (uint)r21.w;
          r32.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r20.w).xyz;
          r33.xzw = (int3)r32.xyz & int3(-2147483648,-2147483648,-2147483648);
          r33.xzw = cmp((int3)r33.xzw == int3(2139095040,2139095040,2139095040));
          r20.w = (int)r33.z | (int)r33.x;
          r20.w = (int)r33.w | (int)r20.w;
          r32.xyz = r20.www ? float3(1,1,0) : r32.xyz;
          r38.x = dot(r17.yzw, r34.xyz);
          r38.y = dot(r17.yzw, r36.xyz);
          r38.z = dot(r17.yzw, r37.xyz);
          r17.yzw = saturate(r38.xyz * refProbeConstantsCB[r19.w].data[3].xyz + float3(0.5,0.5,0.5));
          r38.xy = refProbeConstantsCB[r19.w].data[4].zw * r17.yz;
          r38.z = refProbeConstantsCB[r19.w].data[5].x * r17.w;
          r17.yzw = refProbeConstantsCB[r19.w].data[5].yzw + r38.xyz;
          r35.x = dot(r11.xyz, r34.xyz);
          r35.y = dot(r11.xyz, r36.xyz);
          r35.z = dot(r11.xyz, r37.xyz);
          r33.xzw = cmp(float3(0,0,0) < r35.xyz);
          r19.z = r33.x ? 0 : 0.5;
          r34.xyz = r19.xyz + r17.yzw;
          r34.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r34.xyz, 0).xyz;
          r36.xyz = r35.xyz * r35.xyz;
          r36.xyz = r36.xyz * r18.xxx;
          r21.z = r33.z ? 0 : 0.5;
          r37.xyz = r21.xyz + r17.yzw;
          r37.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r37.xyz, 0).xyz;
          r37.xyz = r37.xyz * r36.yyy;
          r34.xyz = r34.xyz * r36.xxx + r37.xyz;
          r22.z = r33.w ? 0 : 0.5;
          r17.yzw = r22.xyz + r17.yzw;
          r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
          r17.yzw = r17.yzw * r36.zzz + r34.xyz;
          r33.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
          r34.xyz = (int3)r33.xzw & int3(-2147483648,-2147483648,-2147483648);
          r34.xyz = cmp((int3)r34.xyz == int3(2139095040,2139095040,2139095040));
          r19.z = (int)r34.y | (int)r34.x;
          r19.z = (int)r34.z | (int)r19.z;
          r33.xzw = r19.zzz ? float3(1,1,0) : r33.xzw;
          r34.xyz = r33.xzw * r17.yzw;
          r19.z = dot(r34.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r28.xyz = r17.yzw * r33.xzw + r28.xyz;
          r17.y = r19.z * r12.w;
          r32.xyz = r32.xyz * r18.xxx;
          r17.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
          r17.z = r12.w * r19.z + r17.z;
          r17.y = r17.y / r17.z;
          r29.xyz = r32.xyz * r17.yyy + r29.xyz;
        } else {
          r20.x = r30.x;
          r30.xz = r20.xy;
        }
      }
      r25.xyz = r28.xyz;
      r26.xyz = r29.xyz;
      r27.xy = r30.xz;
      r15.z = (int)r15.z + 32;
    }
    r6.w = cmp(r24.z >= 1);
    r9.w = (int)r24.w & 0x0000ff00;
    bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r9.w = (((uint)r27.y << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
    r13.w = r6.w ? r9.w : r27.y;
    r6.w = max(1, r27.x);
    r6.w = rcp(r6.w);
    r27.x = saturate(r27.x);
    r14.yzw = r25.xyz * r6.www;
    r31.xyz = r26.xyz * r6.www;
    r9.w = cmp(r27.x < 0.99000001);
    if (r9.w != 0) {
      r13.w = (int)r13.w + 256;
      r9.w = 1 + -r27.x;
      r12.w = sunConstants.globalProbeExposure * r9.w;
      r15.yzw = -globalProbeConstants.data[0].xyz + r10.xyz;
      r17.x = globalProbeConstants.data[0].w * r15.y;
      r17.yz = globalProbeConstants.data[1].xy * r15.zw;
      r15.yzw = saturate(float3(0.5,0.5,0.5) + r17.xyz);
      r17.xy = globalProbeConstants.data[1].zw * r15.yz;
      r17.z = globalProbeConstants.data[2].x * r15.w;
      r15.yzw = globalProbeConstants.data[2].yzw + r17.xyz;
      r17.xyz = cmp(float3(0,0,0) < r11.xyz);
      r17.xyz = r17.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r17.w = 0;
      r18.xyz = r17.wwx + r15.yzw;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r19.xyz = r11.xyz * r11.xyz;
      r19.xyz = r19.xyz * r12.www;
      r20.xyz = r17.wwy + r15.yzw;
      r20.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r20.xyz = r20.xyz * r19.yyy;
      r18.xyz = r18.xyz * r19.xxx + r20.xyz;
      r15.yzw = r17.wwz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r19.zzz + r18.xyz;
      r11.w = 0;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
      r15.yzw = r17.xyz * r15.yzw;
      r11.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r14.yzw = r25.xyz * r6.www + r15.yzw;
      r16.w = 0;
      r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r8.w).xyz;
      r6.w = sunConstants.globalProbeExposure * r9.w + -r11.w;
      r6.w = r2.y * r6.w + r11.w;
      r31.xyz = r15.yzw * r6.www + r31.xyz;
    }
  } else {
    r14.yzw = float3(0,0,0);
  }
  r6.w = r2.x + r5.x;
  r6.w = log2(abs(r6.w));
  r6.w = r6.w * r1.w;
  r6.w = exp2(r6.w);
  r6.w = r6.w + r5.x;
  r6.w = saturate(-1 + r6.w);
  r17.xyz = r14.yzw * r5.xxx;
  r18.xyz = r3.zzz ? r17.yzx : 0;
  r15.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r15.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r15.yz, 0).xy;
  r19.xyz = r31.xyz * r6.www;
  r20.xyz = r19.xyz * r15.yyy;
  r19.xyz = r19.xyz * r15.zzz;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r6.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r8.w = r2.x * r2.y + r6.w;
  r2.y = r8.w * r2.y;
  r6.w = r8.w * r6.w;
  if (r2.z != 0) {
    r21.x = 3;
    r21.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r8.w = cmp(0 < r4.w);
  if (r8.w != 0) {
    if (r2.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, l(112), u2.xxxx
    r8.w = samp0[]..swiz;
      r8.w = (int)r8.w | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r8.w = cmp(0 < r7.w);
    if (r8.w != 0) {
      r8.w = sunConstants.specScale * r1.z;
      r8.w = r8.w * r4.z;
      if (sunConstants.sunCookieIndex != 0) {
        r21.xyz = eyeOffset.xyz + r10.xyz;
        r21.w = 1;
        r9.w = dot(sunConstants.sunCookieTransform[0].xyzw, r21.xyzw);
        r11.w = dot(sunConstants.sunCookieTransform[1].xyzw, r21.xyzw);
        r21.x = frac(r9.w);
        r21.y = frac(r11.w);
        r9.w = -1 + (int14)sunConstants.sunCookieIndex;
        r21.z = (uint)r9.w;
        r15.yzw = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
        r15.yzw = float3(-1,-1,-1) + r15.yzw;
        r15.yzw = sunConstants.sunCookieIntensity * r15.yzw + float3(1,1,1);
        r15.yzw = sunConstants.color.xyz * r15.yzw;
      } else {
        r15.yzw = sunConstants.color.xyz;
      }
      r9.w = viewmodelSunShadowRaw >> 16;
      r11.w = cmp(0 < (uint)r9.w);
      r11.w = r0.z ? r11.w : 0;
      if (r11.w != 0) {
        r9.w = (int)r9.w + numLights;
        r9.w = mad((int)r9.w, 15, -15);
        r11.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r12.w = cmp(r2.w < 0);
        r12.w = r3.z ? r12.w : 0;
        r11.w = r12.w ? -r11.w : r11.w;
        r21.xyz = r11.xyz * r11.www + r10.xyz;
        r22.xyz = lightConstantsCB[r9.w].data[4].yzw;
        r22.w = lightConstantsCB[r9.w].data[5].x;
        r21.w = 1;
        r22.x = dot(r22.xyzw, r21.xyzw);
        r23.xyz = lightConstantsCB[r9.w].data[5].yzw;
        r23.w = lightConstantsCB[r9.w].data[6].x;
        r22.y = dot(r23.xyzw, r21.xyzw);
        r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r23.x = lightConstantsCB[r9.w].data[9].w + r22.x;
        r23.y = lightConstantsCB[r9.w].data[10].x + r22.y;
        r22.xy = lightConstantsCB[r9.w].data[9].yz * r23.xy;
        r22.zw = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
        r23.xy = float2(1,1) + -r22.zw;
        r23.xy = cmp(r22.xy >= r23.xy);
        r22.zw = cmp(r22.zw >= r22.xy);
        r22.zw = (int2)r22.zw | (int2)r23.xy;
        r11.w = (int)r22.w | (int)r22.z;
        if (r11.w == 0) {
          r23.xyz = lightConstantsCB[r9.w].data[6].yzw;
          r23.w = lightConstantsCB[r9.w].data[7].x;
          r11.w = dot(r23.xyzw, r21.xyzw);
          r22.xy = saturate(r22.xy);
          r21.x = r22.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
          r21.y = r22.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
          r11.w = lightConstantsCB[r9.w].data[10].y + r11.w;
          r11.w = r11.w / lightConstantsCB[r9.w].data[10].z;
          r11.w = max(6.10351563e-05, r11.w);
          r12.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r22.x = -r4.x;
            r23.z = (uint)r12.w;
            r22.y = r13.x;
            r22.z = r4.x;
            r16.w = 0;
            r20.w = 0;
            while (true) {
              r21.w = cmp((int)r20.w >= 8);
              if (r21.w != 0) break;
              r24.x = dot(icb[r20.w+0].yx, r22.xy);
              r24.y = dot(icb[r20.w+0].yx, r22.yz);
              r23.xy = r24.xy * lightConstantsCB[r9.w].data[3].yy + r21.xy;
              r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
              r16.w = r21.w * 0.125 + r16.w;
              r20.w = (int)r20.w + 1;
            }
          } else {
            r21.z = (uint)r12.w;
            r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r11.w).x;
          }
          r9.w = r16.w * r16.w;
          r9.w = r9.w * r16.w;
        } else {
          r9.w = 1;
        }
        r7.w = r9.w * r7.w;
      } else {
        r9.w = viewmodelSunShadowRaw & 0x0000ffff;
        r11.w = cmp(0 < (uint)r9.w);
        r12.w = ~(int)r0.z;
        r11.w = r11.w ? r12.w : 0;
        if (r11.w != 0) {
          r9.w = (int)r9.w + numLights;
          r9.w = mad((int)r9.w, 15, -15);
          r11.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r12.w = cmp(r2.w < 0);
          r12.w = r3.z ? r12.w : 0;
          r11.w = r12.w ? -r11.w : r11.w;
          r21.xyz = r11.xyz * r11.www + r10.xyz;
          r22.xyz = lightConstantsCB[r9.w].data[4].yzw;
          r22.w = lightConstantsCB[r9.w].data[5].x;
          r21.w = 1;
          r22.x = dot(r22.xyzw, r21.xyzw);
          r23.xyz = lightConstantsCB[r9.w].data[5].yzw;
          r23.w = lightConstantsCB[r9.w].data[6].x;
          r22.y = dot(r23.xyzw, r21.xyzw);
          r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r23.x = lightConstantsCB[r9.w].data[9].w + r22.x;
          r23.y = lightConstantsCB[r9.w].data[10].x + r22.y;
          r22.xy = lightConstantsCB[r9.w].data[9].yz * r23.xy;
          r22.zw = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
          r23.xy = float2(1,1) + -r22.zw;
          r23.xy = cmp(r22.xy >= r23.xy);
          r22.zw = cmp(r22.zw >= r22.xy);
          r22.zw = (int2)r22.zw | (int2)r23.xy;
          r11.w = (int)r22.w | (int)r22.z;
          if (r11.w == 0) {
            r23.xyz = lightConstantsCB[r9.w].data[6].yzw;
            r23.w = lightConstantsCB[r9.w].data[7].x;
            r11.w = dot(r23.xyzw, r21.xyzw);
            r22.xy = saturate(r22.xy);
            r21.x = r22.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
            r21.y = r22.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
            r11.w = lightConstantsCB[r9.w].data[10].y + r11.w;
            r11.w = r11.w / lightConstantsCB[r9.w].data[10].z;
            r11.w = max(6.10351563e-05, r11.w);
            r12.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r22.x = -r4.x;
              r23.z = (uint)r12.w;
              r22.y = r13.x;
              r22.z = r4.x;
              r16.w = 0;
              r20.w = 0;
              while (true) {
                r21.w = cmp((int)r20.w >= 8);
                if (r21.w != 0) break;
                r24.x = dot(icb[r20.w+0].yx, r22.xy);
                r24.y = dot(icb[r20.w+0].yx, r22.yz);
                r23.xy = r24.xy * lightConstantsCB[r9.w].data[3].yy + r21.xy;
                r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
                r16.w = r21.w * 0.125 + r16.w;
                r20.w = (int)r20.w + 1;
              }
            } else {
              r21.z = (uint)r12.w;
              r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r11.w).x;
            }
            r9.w = r16.w * r16.w;
            r9.w = r9.w * r16.w;
          } else {
            r9.w = 1;
          }
          r7.w = r9.w * r7.w;
        }
      }
      r9.w = -r2.x * 0.5 + 1;
      r9.w = -r4.w * r9.w + 1;
      r9.w = r9.w * r9.w;
      r9.w = -r9.w * 0.620000005 + 0.620000005;
      r9.w = r9.w + -r4.w;
      r4.w = r1.w * r9.w + r4.w;
      r4.w = r4.w * r7.w;
      r21.xyz = r4.www * r15.yzw;
      r2.w = cmp(0 < r2.w);
      r21.xyz = r14.yzw * r5.xxx + r21.xyz;
      r14.yzw = -r10.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r14.yzw, r14.yzw);
      r0.w = rsqrt(r0.w);
      r14.yzw = r14.yzw * r0.www;
      r0.w = dot(r14.yzw, r12.xyz);
      r5.x = dot(r11.xyz, r14.yzw);
      r9.w = abs(r5.x) * r1.z + -abs(r5.x);
      r5.x = abs(r5.x) * r9.w + 1;
      r4.z = r4.z * r2.y + r6.w;
      r5.x = r5.x * r5.x;
      r4.z = r5.x * r4.z;
      r4.z = rcp(r4.z);
      r4.z = r4.z * r8.w;
      r4.z = r7.w * r4.z;
      r4.z = 0.25 * r4.z;
      r22.yzw = r4.zzz * r15.yzw + r19.xyz;
      r0.w = saturate(1 + -r0.w);
      r5.x = r0.w * r0.w;
      r5.x = r5.x * r5.x;
      r0.w = r5.x * r0.w;
      r0.w = r4.z * r0.w;
      r14.yzw = r0.www * r15.yzw + r20.xyz;
      r15.yzw = r4.www * r15.yzw + r18.zxy;
      r23.xyz = r3.zzz ? r15.zwy : 0;
      r21.w = r18.z;
      r17.w = r23.z;
      r17.xyzw = r2.wwww ? r21.xyzw : r17.xyzw;
      r18.zw = r14.yz;
      r23.zw = r20.xy;
      r21.xyzw = r2.wwww ? r18.xyzw : r23.xyzw;
      r22.x = r14.w;
      r19.w = r20.z;
      r19.xyzw = r2.wwww ? r22.yzwx : r19.xyzw;
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.w, cb2[52].x, l(112), u2.xxxx
      r0.w = samp0[]..swiz;
        r0.w = (int)r0.w | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r18.z = r17.w;
      r18.xy = r21.xy;
      r20.xy = r21.zw;
      r20.z = r19.w;
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
  r4.z = ~(int)r0.z;
  r21.x = -r4.x;
  r2.x = -r2.x * 0.5 + 1;
  r22.x = 2;
  r10.w = 1;
  r23.x = 2;
  r24.z = 1;
  r25.w = 1;
  r26.w = 1;
  r27.w = 1;
  r21.z = r4.x;
  r28.w = 1;
  r21.yw = r13.xx;
  r4.y = r21.w;
  r13.y = r21.x;
  r29.x = r13.x;
  r29.y = r21.x;
  r29.z = r4.x;
  r13.z = r4.x;
  r30.w = 1;
  r31.x = r13.x;
  r31.y = r21.x;
  r31.z = r4.x;
  r32.x = r13.x;
  r32.y = r21.x;
  r32.z = r4.x;
  r14.yzw = r17.xyz;
  r33.xyz = r18.zxy;
  r34.xyz = r20.xyz;
  r15.yzw = r19.xyz;
  r4.w = enableDitheredShadow;
  r5.x = r0.w;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= numLights);
    if (r8.w != 0) break;
    r8.w = (uint)r7.w >> 5;
    r8.w = (int)r2.w + (int)r8.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(0), t26.xxxx
  r8.w = samp0[]..swiz;
    r35.xyz = r14.yzw;
    r36.xyz = r33.xyz;
    r37.xyz = r34.xyz;
    r38.xyz = r15.yzw;
    r9.w = r4.w;
    r11.w = r5.x;
    r12.w = r8.w;
    while (true) {
      if (r12.w == 0) break;
      r16.w = firstbitlow((uint)r12.w);
      r17.w = 1 << (int)r16.w;
      r17.w = ~(int)r17.w;
      r12.w = (int)r12.w & (int)r17.w;
      r16.w = (int)r7.w + (int)r16.w;
      r16.w = (int)r16.w * 15;
      if (3 == 0) r17.w = 0; else if (3+24 < 32) {       r17.w = (uint)lightConstantsCB[r16.w].data[1].w << (32-(3 + 24)); r17.w = (uint)r17.w >> (32-3);      } else r17.w = (uint)lightConstantsCB[r16.w].data[1].w >> 24;
      r18.w = cmp((int)r17.w == 2);
      if (r18.w != 0) {
        if (3 == 0) r18.w = 0; else if (3+27 < 32) {         r18.w = (uint)lightConstantsCB[r16.w].data[1].w << (32-(3 + 27)); r18.w = (uint)r18.w >> (32-3);        } else r18.w = (uint)lightConstantsCB[r16.w].data[1].w >> 27;
        r19.w = (int)r11.w & 255;
        r20.w = cmp((uint)r19.w < 32);
        r20.w = r2.z ? r20.w : 0;
        if (r20.w != 0) {
          r19.w = mad((int)r19.w, 24, 112);
          r22.yzw = lightConstantsCB[r16.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r19.w = u2.xyzw;
        }
        r19.w = (int)r11.w + 1;
        r39.xy = lightConstantsCB[r16.w].data[3].zw + -r10.xy;
        r39.z = lightConstantsCB[r16.w].data[4].x + -r10.z;
        r20.w = dot(r39.xyz, r39.xyz);
        r20.w = rsqrt(r20.w);
        r22.yzw = r39.xyz * r20.www;
        r24.w = lightConstantsCB[r16.w].data[1].z * r1.z;
        r24.w = 0.25 * r24.w;
        r22.y = dot(r11.xyz, r22.yzw);
        r22.z = saturate(r22.y);
        r22.w = r3.z ? abs(r22.y) : r22.z;
        r29.w = cmp(0 < r22.w);
        if (r29.w != 0) {
          r40.xyz = lightConstantsCB[r16.w].data[7].yzw;
          r40.w = lightConstantsCB[r16.w].data[8].x;
          r29.w = dot(r40.xyzw, r10.xyzw);
          r31.w = cmp(r29.w < 1);
          if (r31.w != 0) {
            r41.xyz = float3(1,1,1);
            r31.w = 0;
          } else {
            r42.xyz = lightConstantsCB[r16.w].data[0].xyz + -r10.xyz;
            r32.w = lightConstantsCB[r16.w].data[3].x * lightConstantsCB[r16.w].data[3].x;
            r33.w = dot(r42.xyz, r42.xyz);
            r32.w = r32.w / r33.w;
            r32.w = min(1, r32.w);
            r42.xy = saturate(r29.ww * lightConstantsCB[r16.w].data[2].xz + lightConstantsCB[r16.w].data[2].yw);
            r42.zw = r42.xy * r42.xy;
            r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
            r42.xy = r42.zw * r42.xy;
            r32.w = r42.x * r32.w;
            r32.w = r32.w * r42.y;
            r42.xyz = lightConstantsCB[r16.w].data[4].yzw;
            r42.w = lightConstantsCB[r16.w].data[5].x;
            r42.x = dot(r42.xyzw, r10.xyzw);
            r43.xyz = lightConstantsCB[r16.w].data[5].yzw;
            r43.w = lightConstantsCB[r16.w].data[6].x;
            r42.y = dot(r43.xyzw, r10.xyzw);
            r24.xy = r42.xy / r29.ww;
            r29.w = cmp(lightConstantsCB[r16.w].data[10].w < 0.00048828125);
            if (r29.w != 0) {
              r42.xy = saturate(abs(r24.xy) * lightConstantsCB[r16.w].data[12].xy + lightConstantsCB[r16.w].data[12].zw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r29.w = r42.x * r42.y;
            } else {
              r42.xyzw = saturate(lightConstantsCB[r16.w].data[11].xyzw * abs(r24.yyxx));
              r42.xyzw = log2(r42.xyzw);
              r42.xyzw = lightConstantsCB[r16.w].data[12].zzzz * r42.xyzw;
              r42.xyzw = exp2(r42.xyzw);
              r42.xy = r42.xy + r42.zw;
              r42.xy = log2(r42.xy);
              r42.xy = lightConstantsCB[r16.w].data[12].ww * r42.xy;
              r42.xy = exp2(r42.xy);
              r33.w = lightConstantsCB[r16.w].data[12].x * r42.x;
              r34.w = lightConstantsCB[r16.w].data[12].y * r42.y + -1;
              r33.w = lightConstantsCB[r16.w].data[12].y * r42.y + -r33.w;
              r33.w = saturate(r34.w / r33.w);
              r34.w = r33.w * r33.w;
              r33.w = r33.w * -2 + 3;
              r29.w = r34.w * r33.w;
            }
            r31.w = r32.w * r29.w;
            r29.w = 255 & (int)lightConstantsCB[r16.w].data[14].w;
            if (r29.w != 0) {
              r32.w = dot(lightConstantsCB[r16.w].data[13].xyz, r24.xyz);
              r42.x = lightConstantsCB[r16.w].data[13].w;
              r42.yz = lightConstantsCB[r16.w].data[14].xy;
              r24.x = dot(r42.xyz, r24.xyz);
              r42.x = frac(r32.w);
              r42.y = frac(r24.x);
              r24.x = (int)r29.w + -1;
              r42.z = (uint)r24.x;
              r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r42.xyz, 0).xyz;
            } else {
              r41.xyz = float3(1,1,1);
            }
          }
          r42.x = lightConstantsCB[r16.w].data[0].w;
          r42.yz = lightConstantsCB[r16.w].data[1].xy;
          r41.xyz = r42.xyz * r41.xyz;
          r24.x = cmp(0 < r31.w);
          if (r24.x != 0) {
            r24.x = (int)r19.w & 255;
            r24.y = (int)r24.x + -1;
            r24.y = cmp((uint)r24.y < 32);
            r24.y = r2.z ? r24.y : 0;
            if (r24.y != 0) {
              r24.xy = mad((int2)r24.xx, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r29.w, cb2[52].x, r24.x, u2.xxxx
            r29.w = samp0[]..swiz;
              r29.w = (int)r29.w | 4;
              GBufferDiffuseColor[viewID].r24.x = u2.x;
              GBufferDiffuseColor[viewID].r24.y = u2.x;
            }
            r24.x = (int)r11.w + 257;
            r18.w = cmp((int)r18.w != 1);
            if (r18.w != 0) {
              r18.w = abs(r22.y) * -0.200000003 + 0.400000006;
              r24.y = cmp(r22.y < 0);
              r24.y = r3.z ? r24.y : 0;
              r18.w = r24.y ? -r18.w : r18.w;
              r25.xyz = r11.xyz * r18.www + r10.xyz;
              r42.xyz = lightConstantsCB[r16.w].data[6].yzw;
              r42.w = lightConstantsCB[r16.w].data[7].x;
              r18.w = dot(r42.xyzw, r25.xyzw);
              r24.y = dot(r40.xyzw, r25.xyzw);
              r29.w = cmp(r24.y >= r18.w);
              if (r29.w != 0) {
                r40.xyz = lightConstantsCB[r16.w].data[4].yzw;
                r40.w = lightConstantsCB[r16.w].data[5].x;
                r40.x = dot(r40.xyzw, r25.xyzw);
                r42.xyz = lightConstantsCB[r16.w].data[5].yzw;
                r42.w = lightConstantsCB[r16.w].data[6].x;
                r40.y = dot(r42.xyzw, r25.xyzw);
                r25.xy = r40.xy / r24.yy;
                r25.xy = saturate(r25.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r40.x = r25.x * lightConstantsCB[r16.w].data[8].y + lightConstantsCB[r16.w].data[8].z;
                r40.y = r25.y * lightConstantsCB[r16.w].data[8].w + lightConstantsCB[r16.w].data[9].x;
                r18.w = r18.w / r24.y;
                r18.w = max(6.10351563e-05, r18.w);
                r24.y = 0x0000ffff & (int)lightConstantsCB[r16.w].data[1].w;
                if (r9.w != 0) {
                  r25.z = (uint)r24.y;
                  r29.w = 0;
                  r32.w = 0;
                  while (true) {
                    r33.w = cmp((int)r32.w >= 8);
                    if (r33.w != 0) break;
                    r42.x = dot(icb[r32.w+0].yx, r21.xy);
                    r42.y = dot(icb[r32.w+0].yx, r21.yz);
                    r25.xy = r42.xy * lightConstantsCB[r16.w].data[3].yy + r40.xy;
                    r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r18.w).x;
                    r29.w = r25.x * 0.125 + r29.w;
                    r32.w = (int)r32.w + 1;
                  }
                } else {
                  r40.z = (uint)r24.y;
                  r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.w).x;
                }
                r18.w = r29.w * r29.w;
                r18.w = r18.w * r29.w;
              } else {
                r18.w = 1;
              }
            } else {
              r18.w = 1;
            }
            r18.w = r31.w * r18.w;
            r24.y = cmp(0 < r18.w);
            if (r24.y != 0) {
              if (4 == 0) r24.y = 0; else if (4+16 < 32) {               r24.y = (uint)lightConstantsCB[r16.w].data[1].w << (32-(4 + 16)); r24.y = (uint)r24.y >> (32-4);              } else r24.y = (uint)lightConstantsCB[r16.w].data[1].w >> 16;
              r25.x = cmp(0 < (uint)r24.y);
              r25.x = r0.z ? r25.x : 0;
              if (r25.x != 0) {
                r24.y = (int)r24.y + numLights;
                r24.y = mad((int)r24.y, 15, -15);
                r25.x = abs(r22.y) * -0.200000003 + 0.400000006;
                r25.y = cmp(r22.y < 0);
                r25.y = r3.z ? r25.y : 0;
                r25.x = r25.y ? -r25.x : r25.x;
                r26.xyz = r11.xyz * r25.xxx + r10.xyz;
                r40.xyz = lightConstantsCB[r24.y].data[6].yzw;
                r40.w = lightConstantsCB[r24.y].data[7].x;
                r25.x = dot(r40.xyzw, r26.xyzw);
                r40.xyz = lightConstantsCB[r24.y].data[7].yzw;
                r40.w = lightConstantsCB[r24.y].data[8].x;
                r25.y = dot(r40.xyzw, r26.xyzw);
                r25.z = cmp(r25.y < r25.x);
                if (r25.z == 0) {
                  r40.xyz = lightConstantsCB[r24.y].data[4].yzw;
                  r40.w = lightConstantsCB[r24.y].data[5].x;
                  r40.x = dot(r40.xyzw, r26.xyzw);
                  r42.xyz = lightConstantsCB[r24.y].data[5].yzw;
                  r42.w = lightConstantsCB[r24.y].data[6].x;
                  r40.y = dot(r42.xyzw, r26.xyzw);
                  r26.xy = r40.xy / r25.yy;
                  r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r40.x = lightConstantsCB[r24.y].data[9].w + r26.x;
                  r40.y = lightConstantsCB[r24.y].data[10].x + r26.y;
                  r26.xy = lightConstantsCB[r24.y].data[9].yz * r40.xy;
                  r40.xy = lightConstantsCB[r24.y].data[3].yy / lightConstantsCB[r24.y].data[8].yw;
                  r40.zw = float2(1,1) + -r40.xy;
                  r40.zw = cmp(r26.xy >= r40.zw);
                  r40.xy = cmp(r40.xy >= r26.xy);
                  r40.xy = (int2)r40.xy | (int2)r40.zw;
                  r26.z = (int)r40.y | (int)r40.x;
                  if (r26.z == 0) {
                    r26.xy = saturate(r26.xy);
                    r40.x = r26.x * lightConstantsCB[r24.y].data[8].y + lightConstantsCB[r24.y].data[8].z;
                    r40.y = r26.y * lightConstantsCB[r24.y].data[8].w + lightConstantsCB[r24.y].data[9].x;
                    r26.x = lightConstantsCB[r24.y].data[10].z * r25.y;
                    r25.x = lightConstantsCB[r24.y].data[10].y * r25.y + r25.x;
                    r25.x = r25.x / r26.x;
                  }
                } else {
                  r26.z = -1;
                }
                r25.y = (int)r25.z | (int)r26.z;
                if (r25.y == 0) {
                  r25.x = max(6.10351563e-05, r25.x);
                  r25.y = 0x0000ffff & (int)lightConstantsCB[r24.y].data[1].w;
                  if (r9.w != 0) {
                    r26.z = (uint)r25.y;
                    r25.z = 0;
                    r31.w = 0;
                    while (true) {
                      r32.w = cmp((int)r31.w >= 8);
                      if (r32.w != 0) break;
                      r42.x = dot(icb[r31.w+0].yx, r21.xw);
                      r42.y = dot(icb[r31.w+0].xy, r4.xy);
                      r26.xy = r42.xy * lightConstantsCB[r24.y].data[3].yy + r40.xy;
                      r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r25.x).x;
                      r25.z = r26.x * 0.125 + r25.z;
                      r31.w = (int)r31.w + 1;
                    }
                  } else {
                    r40.z = (uint)r25.y;
                    r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r25.x).x;
                  }
                  r24.y = r25.z * r25.z;
                  r24.y = r24.y * r25.z;
                } else {
                  r24.y = 1;
                }
                r18.w = r24.y * r18.w;
              } else {
                if (4 == 0) r24.y = 0; else if (4+20 < 32) {                 r24.y = (uint)lightConstantsCB[r16.w].data[1].w << (32-(4 + 20)); r24.y = (uint)r24.y >> (32-4);                } else r24.y = (uint)lightConstantsCB[r16.w].data[1].w >> 20;
                r25.x = cmp(0 < (uint)r24.y);
                r25.x = r25.x ? r4.z : 0;
                if (r25.x != 0) {
                  r24.y = (int)r24.y + numLights;
                  r24.y = mad((int)r24.y, 15, -15);
                  r25.x = abs(r22.y) * -0.200000003 + 0.400000006;
                  r25.y = cmp(r22.y < 0);
                  r25.y = r3.z ? r25.y : 0;
                  r25.x = r25.y ? -r25.x : r25.x;
                  r27.xyz = r11.xyz * r25.xxx + r10.xyz;
                  r40.xyz = lightConstantsCB[r24.y].data[6].yzw;
                  r40.w = lightConstantsCB[r24.y].data[7].x;
                  r25.x = dot(r40.xyzw, r27.xyzw);
                  r40.xyz = lightConstantsCB[r24.y].data[7].yzw;
                  r40.w = lightConstantsCB[r24.y].data[8].x;
                  r25.y = dot(r40.xyzw, r27.xyzw);
                  r26.x = cmp(r25.y < r25.x);
                  if (r26.x == 0) {
                    r40.xyz = lightConstantsCB[r24.y].data[4].yzw;
                    r40.w = lightConstantsCB[r24.y].data[5].x;
                    r40.x = dot(r40.xyzw, r27.xyzw);
                    r42.xyz = lightConstantsCB[r24.y].data[5].yzw;
                    r42.w = lightConstantsCB[r24.y].data[6].x;
                    r40.y = dot(r42.xyzw, r27.xyzw);
                    r26.yz = r40.xy / r25.yy;
                    r26.yz = r26.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r27.x = lightConstantsCB[r24.y].data[9].w + r26.y;
                    r27.y = lightConstantsCB[r24.y].data[10].x + r26.z;
                    r26.yz = lightConstantsCB[r24.y].data[9].yz * r27.xy;
                    r27.xy = lightConstantsCB[r24.y].data[3].yy / lightConstantsCB[r24.y].data[8].yw;
                    r40.xy = float2(1,1) + -r27.xy;
                    r40.xy = cmp(r26.yz >= r40.xy);
                    r27.xy = cmp(r27.xy >= r26.yz);
                    r27.xy = (int2)r27.xy | (int2)r40.xy;
                    r27.x = (int)r27.y | (int)r27.x;
                    if (r27.x == 0) {
                      r26.yz = saturate(r26.yz);
                      r40.x = r26.y * lightConstantsCB[r24.y].data[8].y + lightConstantsCB[r24.y].data[8].z;
                      r40.y = r26.z * lightConstantsCB[r24.y].data[8].w + lightConstantsCB[r24.y].data[9].x;
                      r26.y = lightConstantsCB[r24.y].data[10].z * r25.y;
                      r25.x = lightConstantsCB[r24.y].data[10].y * r25.y + r25.x;
                      r25.x = r25.x / r26.y;
                    }
                  } else {
                    r27.x = -1;
                  }
                  r25.y = (int)r26.x | (int)r27.x;
                  if (r25.y == 0) {
                    r25.x = max(6.10351563e-05, r25.x);
                    r25.y = 0x0000ffff & (int)lightConstantsCB[r24.y].data[1].w;
                    if (r9.w != 0) {
                      r26.z = (uint)r25.y;
                      r27.xy = float2(0,0);
                      while (true) {
                        r27.z = cmp((int)r27.y >= 8);
                        if (r27.z != 0) break;
                        r42.x = dot(icb[r27.y+0].xy, r29.xy);
                        r42.y = dot(icb[r27.y+0].yx, r29.xz);
                        r26.xy = r42.xy * lightConstantsCB[r24.y].data[3].yy + r40.xy;
                        r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r25.x).x;
                        r27.x = r26.x * 0.125 + r27.x;
                        r27.y = (int)r27.y + 1;
                      }
                    } else {
                      r40.z = (uint)r25.y;
                      r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r25.x).x;
                    }
                    r24.y = r27.x * r27.x;
                    r24.y = r24.y * r27.x;
                  } else {
                    r24.y = 1;
                  }
                  r18.w = r24.y * r18.w;
                }
              }
              r24.y = -r22.w * r2.x + 1;
              r24.y = r24.y * r24.y;
              r24.y = -r24.y * 0.620000005 + 0.620000005;
              r24.y = r24.y + -r22.w;
              r22.w = r1.w * r24.y + r22.w;
              r22.w = r22.w * r18.w;
              r22.y = cmp(0 < r22.y);
              r26.xyz = r22.www * r41.xyz + r35.xyz;
              r39.xyz = r39.xyz * r20.www + r12.xyz;
              r20.w = dot(r39.xyz, r39.xyz);
              r20.w = rsqrt(r20.w);
              r39.xyz = r39.xyz * r20.www;
              r20.w = dot(r39.xyz, r12.xyz);
              r24.y = dot(r11.xyz, r39.xyz);
              r25.x = abs(r24.y) * r1.z + -abs(r24.y);
              r24.y = abs(r24.y) * r25.x + 1;
              r25.x = r22.z * r2.y + r6.w;
              r24.y = r24.y * r24.y;
              r24.y = r24.y * r25.x;
              r24.y = rcp(r24.y);
              r22.z = r22.z * r24.w;
              r22.z = r24.y * r22.z;
              r22.z = r22.z * r18.w;
              r39.xyz = r22.zzz * r41.xyz + r38.xyz;
              r20.w = saturate(1 + -r20.w);
              r24.y = r20.w * r20.w;
              r24.y = r24.y * r24.y;
              r20.w = r24.y * r20.w;
              r20.w = r22.z * r20.w;
              r40.xyz = r20.www * r41.xyz + r37.xyz;
              r41.xyz = r22.www * r41.xyz + r36.xyz;
              r41.xyz = r3.zzz ? r41.xyz : r36.xyz;
              r35.xyz = r22.yyy ? r26.xyz : r35.xyz;
              r36.xyz = r22.yyy ? r36.xyz : r41.xyz;
              r37.xyz = r22.yyy ? r40.xyz : r37.xyz;
              r38.xyz = r22.yyy ? r39.xyz : r38.xyz;
              r20.w = (int)r24.x & 255;
              r22.y = (int)r20.w + -1;
              r22.y = cmp((uint)r22.y < 32);
              r22.y = r2.z ? r22.y : 0;
              if (r22.y != 0) {
                r22.yz = mad((int2)r20.ww, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r22.y, u2.xxxx
              r20.w = samp0[]..swiz;
                r20.w = (int)r20.w | 8;
                GBufferDiffuseColor[viewID].r22.y = u2.x;
                GBufferDiffuseColor[viewID].r22.z = u2.x;
              }
              r11.w = (int)r11.w + 0x00010101;
            } else {
              r11.w = r24.x;
            }
          } else {
            r11.w = r19.w;
          }
        } else {
          r11.w = r19.w;
        }
      } else {
        r17.w = cmp((int)r17.w == 4);
        if (r17.w != 0) {
          if (3 == 0) r17.w = 0; else if (3+27 < 32) {           r17.w = (uint)lightConstantsCB[r16.w].data[1].w << (32-(3 + 27)); r17.w = (uint)r17.w >> (32-3);          } else r17.w = (uint)lightConstantsCB[r16.w].data[1].w >> 27;
          r18.w = (int)r11.w & 255;
          r19.w = cmp((uint)r18.w < 32);
          r19.w = r2.z ? r19.w : 0;
          if (r19.w != 0) {
            r18.w = mad((int)r18.w, 24, 112);
            r23.yzw = lightConstantsCB[r16.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r18.w = u2.xyzw;
          }
          r18.w = (int)r11.w + 1;
          r19.w = lightConstantsCB[r16.w].data[1].z * r1.z;
          r19.w = 0.25 * r19.w;
          r20.w = cmp(0 < lightConstantsCB[r16.w].data[6].y);
          r26.xy = lightConstantsCB[r16.w].data[5].zw;
          r26.z = lightConstantsCB[r16.w].data[6].x;
          r22.yzw = -r26.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r16.w].data[0].xyz;
          r23.yzw = r22.yzw + -r10.xyz;
          r24.x = dot(r26.xyz, r16.xyz);
          r24.y = dot(r26.xyz, r23.yzw);
          r23.y = dot(r16.xyz, r23.yzw);
          r23.z = -r24.x * r24.x + lightConstantsCB[r16.w].data[6].y;
          r23.y = r24.x * r23.y + -r24.y;
          r23.w = saturate(-r24.y / lightConstantsCB[r16.w].data[6].y);
          r23.y = saturate(r23.y / r23.z);
          r23.z = r23.z / lightConstantsCB[r16.w].data[6].y;
          r23.z = 10 * r23.z;
          r23.z = min(1, r23.z);
          r23.y = r23.y + -r23.w;
          r23.y = r23.z * r23.y + r23.w;
          r24.xyw = r23.yyy * r26.xyz + r22.yzw;
          r22.yzw = r23.www * r26.xyz + r22.yzw;
          r22.yzw = r20.www ? r22.yzw : lightConstantsCB[r16.w].data[0].xyz;
          r23.yzw = r20.www ? r24.xyw : lightConstantsCB[r16.w].data[0].xyz;
          r23.yzw = r23.yzw + -r10.xyz;
          r22.yzw = r22.yzw + -r10.xyz;
          r20.w = dot(r23.yzw, r23.yzw);
          r20.w = rsqrt(r20.w);
          r24.xyw = r23.yzw * r20.www;
          r25.x = dot(r22.yzw, r22.yzw);
          r25.y = rsqrt(r25.x);
          r22.yzw = r25.yyy * r22.yzw;
          r22.y = dot(r11.xyz, r22.yzw);
          r22.z = saturate(r22.y);
          r22.z = r3.z ? abs(r22.y) : r22.z;
          r22.w = cmp(0 < r22.z);
          if (r22.w != 0) {
            r22.w = sqrt(r25.x);
            r25.y = lightConstantsCB[r16.w].data[3].x * lightConstantsCB[r16.w].data[3].x;
            r25.x = r25.y / r25.x;
            r25.x = min(1, r25.x);
            r26.xy = saturate(r22.ww * lightConstantsCB[r16.w].data[2].xz + lightConstantsCB[r16.w].data[2].yw);
            r27.yz = r26.xy * r26.xy;
            r26.xy = r26.xy * float2(-2,-2) + float2(3,3);
            r26.xy = r27.yz * r26.xy;
            r22.w = r26.x * r25.x;
            r22.w = r22.w * r26.y;
            r25.x = cmp(0 < r22.w);
            if (r25.x != 0) {
              r25.x = (int)r18.w & 255;
              r25.y = (int)r25.x + -1;
              r25.y = cmp((uint)r25.y < 32);
              r25.y = r2.z ? r25.y : 0;
              if (r25.y != 0) {
                r25.xy = mad((int2)r25.xx, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r26.x, cb2[52].x, r25.x, u2.xxxx
              r26.x = samp0[]..swiz;
                r26.x = (int)r26.x | 4;
                GBufferDiffuseColor[viewID].r25.x = u2.x;
                GBufferDiffuseColor[viewID].r25.y = u2.x;
              }
              r25.x = (int)r11.w + 257;
              r17.w = cmp((int)r17.w != 1);
              if (r17.w != 0) {
                r17.w = abs(r22.y) * -0.200000003 + 0.400000006;
                r25.y = cmp(r22.y < 0);
                r25.y = r3.z ? r25.y : 0;
                r17.w = r25.y ? -r17.w : r17.w;
                r26.xyz = r11.xyz * r17.www + r10.xyz;
                r26.xyz = -lightConstantsCB[r16.w].data[4].yzw + r26.xyz;
                r17.w = max(abs(r26.y), abs(r26.z));
                r17.w = max(abs(r26.x), r17.w);
                r17.w = lightConstantsCB[r16.w].data[5].x / r17.w;
                r17.w = lightConstantsCB[r16.w].data[5].y + r17.w;
                r25.y = dot(r26.xyz, r26.xyz);
                r25.y = rsqrt(r25.y);
                r17.w = max(6.10351563e-05, r17.w);
                r27.y = 0x0000ffff & (int)lightConstantsCB[r16.w].data[1].w;
                r39.w = (uint)r27.y;
                r27.yz = float2(0,0);
                while (true) {
                  r31.w = cmp((int)r27.z >= 8);
                  if (r31.w != 0) break;
                  r40.y = dot(icb[r27.z+0].xy, r13.xy);
                  r40.z = dot(icb[r27.z+0].yx, r13.xz);
                  r40.yz = lightConstantsCB[r16.w].data[3].yy * r40.yz;
                  r40.x = r40.y * r15.x;
                  r40.w = r40.y * r14.x;
                  r39.xyz = r26.xyz * r25.yyy + r40.xzw;
                  r31.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyzw, r17.w).x;
                  r27.y = r31.w * 0.125 + r27.y;
                  r27.z = (int)r27.z + 1;
                }
              } else {
                r27.y = 1;
              }
              r17.w = r27.y * r22.w;
              r22.w = cmp(0 < r17.w);
              if (r22.w != 0) {
                if (4 == 0) r22.w = 0; else if (4+16 < 32) {                 r22.w = (uint)lightConstantsCB[r16.w].data[1].w << (32-(4 + 16)); r22.w = (uint)r22.w >> (32-4);                } else r22.w = (uint)lightConstantsCB[r16.w].data[1].w >> 16;
                r25.y = cmp(0 < (uint)r22.w);
                r25.y = r0.z ? r25.y : 0;
                if (r25.y != 0) {
                  r22.w = (int)r22.w + numLights;
                  r22.w = mad((int)r22.w, 15, -15);
                  r25.y = abs(r22.y) * -0.200000003 + 0.400000006;
                  r26.x = cmp(r22.y < 0);
                  r26.x = r3.z ? r26.x : 0;
                  r25.y = r26.x ? -r25.y : r25.y;
                  r28.xyz = r11.xyz * r25.yyy + r10.xyz;
                  r39.xyz = lightConstantsCB[r22.w].data[6].yzw;
                  r39.w = lightConstantsCB[r22.w].data[7].x;
                  r25.y = dot(r39.xyzw, r28.xyzw);
                  r39.xyz = lightConstantsCB[r22.w].data[7].yzw;
                  r39.w = lightConstantsCB[r22.w].data[8].x;
                  r26.x = dot(r39.xyzw, r28.xyzw);
                  r26.y = cmp(r26.x < r25.y);
                  if (r26.y == 0) {
                    r39.xyz = lightConstantsCB[r22.w].data[4].yzw;
                    r39.w = lightConstantsCB[r22.w].data[5].x;
                    r39.x = dot(r39.xyzw, r28.xyzw);
                    r40.xyz = lightConstantsCB[r22.w].data[5].yzw;
                    r40.w = lightConstantsCB[r22.w].data[6].x;
                    r39.y = dot(r40.xyzw, r28.xyzw);
                    r28.xy = r39.xy / r26.xx;
                    r28.xy = r28.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r39.x = lightConstantsCB[r22.w].data[9].w + r28.x;
                    r39.y = lightConstantsCB[r22.w].data[10].x + r28.y;
                    r28.xy = lightConstantsCB[r22.w].data[9].yz * r39.xy;
                    r39.xy = lightConstantsCB[r22.w].data[3].yy / lightConstantsCB[r22.w].data[8].yw;
                    r39.zw = float2(1,1) + -r39.xy;
                    r39.zw = cmp(r28.xy >= r39.zw);
                    r39.xy = cmp(r39.xy >= r28.xy);
                    r39.xy = (int2)r39.xy | (int2)r39.zw;
                    r26.z = (int)r39.y | (int)r39.x;
                    if (r26.z == 0) {
                      r28.xy = saturate(r28.xy);
                      r39.x = r28.x * lightConstantsCB[r22.w].data[8].y + lightConstantsCB[r22.w].data[8].z;
                      r39.y = r28.y * lightConstantsCB[r22.w].data[8].w + lightConstantsCB[r22.w].data[9].x;
                      r27.z = lightConstantsCB[r22.w].data[10].z * r26.x;
                      r25.y = lightConstantsCB[r22.w].data[10].y * r26.x + r25.y;
                      r25.y = r25.y / r27.z;
                    }
                  } else {
                    r26.z = -1;
                  }
                  r26.x = (int)r26.y | (int)r26.z;
                  if (r26.x == 0) {
                    r25.y = max(6.10351563e-05, r25.y);
                    r26.x = 0x0000ffff & (int)lightConstantsCB[r22.w].data[1].w;
                    if (r9.w != 0) {
                      r28.z = (uint)r26.x;
                      r26.yz = float2(0,0);
                      while (true) {
                        r27.z = cmp((int)r26.z >= 8);
                        if (r27.z != 0) break;
                        r40.x = dot(icb[r26.z+0].xy, r31.xy);
                        r40.y = dot(icb[r26.z+0].yx, r31.xz);
                        r28.xy = r40.xy * lightConstantsCB[r22.w].data[3].yy + r39.xy;
                        r27.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r25.y).x;
                        r26.y = r27.z * 0.125 + r26.y;
                        r26.z = (int)r26.z + 1;
                      }
                    } else {
                      r39.z = (uint)r26.x;
                      r26.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r25.y).x;
                    }
                    r22.w = r26.y * r26.y;
                    r22.w = r22.w * r26.y;
                  } else {
                    r22.w = 1;
                  }
                  r17.w = r22.w * r17.w;
                } else {
                  if (4 == 0) r22.w = 0; else if (4+20 < 32) {                   r22.w = (uint)lightConstantsCB[r16.w].data[1].w << (32-(4 + 20)); r22.w = (uint)r22.w >> (32-4);                  } else r22.w = (uint)lightConstantsCB[r16.w].data[1].w >> 20;
                  r25.y = cmp(0 < (uint)r22.w);
                  r25.y = r25.y ? r4.z : 0;
                  if (r25.y != 0) {
                    r22.w = (int)r22.w + numLights;
                    r22.w = mad((int)r22.w, 15, -15);
                    r25.y = abs(r22.y) * -0.200000003 + 0.400000006;
                    r26.x = cmp(r22.y < 0);
                    r26.x = r3.z ? r26.x : 0;
                    r25.y = r26.x ? -r25.y : r25.y;
                    r30.xyz = r11.xyz * r25.yyy + r10.xyz;
                    r39.xyz = lightConstantsCB[r22.w].data[6].yzw;
                    r39.w = lightConstantsCB[r22.w].data[7].x;
                    r25.y = dot(r39.xyzw, r30.xyzw);
                    r39.xyz = lightConstantsCB[r22.w].data[7].yzw;
                    r39.w = lightConstantsCB[r22.w].data[8].x;
                    r26.x = dot(r39.xyzw, r30.xyzw);
                    r26.z = cmp(r26.x < r25.y);
                    if (r26.z == 0) {
                      r39.xyz = lightConstantsCB[r22.w].data[4].yzw;
                      r39.w = lightConstantsCB[r22.w].data[5].x;
                      r28.x = dot(r39.xyzw, r30.xyzw);
                      r39.xyz = lightConstantsCB[r22.w].data[5].yzw;
                      r39.w = lightConstantsCB[r22.w].data[6].x;
                      r28.y = dot(r39.xyzw, r30.xyzw);
                      r28.xy = r28.xy / r26.xx;
                      r28.xy = r28.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r30.x = lightConstantsCB[r22.w].data[9].w + r28.x;
                      r30.y = lightConstantsCB[r22.w].data[10].x + r28.y;
                      r28.xy = lightConstantsCB[r22.w].data[9].yz * r30.xy;
                      r30.xy = lightConstantsCB[r22.w].data[3].yy / lightConstantsCB[r22.w].data[8].yw;
                      r39.xy = float2(1,1) + -r30.xy;
                      r39.xy = cmp(r28.xy >= r39.xy);
                      r30.xy = cmp(r30.xy >= r28.xy);
                      r30.xy = (int2)r30.xy | (int2)r39.xy;
                      r27.z = (int)r30.y | (int)r30.x;
                      if (r27.z == 0) {
                        r28.xy = saturate(r28.xy);
                        r30.x = r28.x * lightConstantsCB[r22.w].data[8].y + lightConstantsCB[r22.w].data[8].z;
                        r30.y = r28.y * lightConstantsCB[r22.w].data[8].w + lightConstantsCB[r22.w].data[9].x;
                        r28.x = lightConstantsCB[r22.w].data[10].z * r26.x;
                        r25.y = lightConstantsCB[r22.w].data[10].y * r26.x + r25.y;
                        r25.y = r25.y / r28.x;
                      }
                    } else {
                      r27.z = -1;
                    }
                    r26.x = (int)r26.z | (int)r27.z;
                    if (r26.x == 0) {
                      r25.y = max(6.10351563e-05, r25.y);
                      r26.x = 0x0000ffff & (int)lightConstantsCB[r22.w].data[1].w;
                      if (r9.w != 0) {
                        r28.z = (uint)r26.x;
                        r26.z = 0;
                        r27.z = 0;
                        while (true) {
                          r31.w = cmp((int)r27.z >= 8);
                          if (r31.w != 0) break;
                          r39.x = dot(icb[r27.z+0].xy, r32.xy);
                          r39.y = dot(icb[r27.z+0].yx, r32.xz);
                          r28.xy = r39.xy * lightConstantsCB[r22.w].data[3].yy + r30.xy;
                          r28.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r25.y).x;
                          r26.z = r28.x * 0.125 + r26.z;
                          r27.z = (int)r27.z + 1;
                        }
                      } else {
                        r30.z = (uint)r26.x;
                        r26.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r25.y).x;
                      }
                      r22.w = r26.z * r26.z;
                      r22.w = r22.w * r26.z;
                    } else {
                      r22.w = 1;
                    }
                    r17.w = r22.w * r17.w;
                  }
                }
                r22.w = -r22.z * r2.x + 1;
                r22.w = r22.w * r22.w;
                r22.w = -r22.w * 0.620000005 + 0.620000005;
                r22.w = r22.w + -r22.z;
                r22.z = r1.w * r22.w + r22.z;
                r22.z = r22.z * r17.w;
                r28.x = lightConstantsCB[r16.w].data[0].w;
                r28.yz = lightConstantsCB[r16.w].data[1].xy;
                r16.w = cmp(0 < r22.y);
                r30.xyz = r22.zzz * r28.xyz + r35.xyz;
                r22.y = saturate(dot(r11.xyz, r24.xyw));
                r23.yzw = r23.yzw * r20.www + r12.xyz;
                r20.w = dot(r23.yzw, r23.yzw);
                r20.w = rsqrt(r20.w);
                r23.yzw = r23.yzw * r20.www;
                r20.w = dot(r23.yzw, r12.xyz);
                r22.w = dot(r11.xyz, r23.yzw);
                r23.y = abs(r22.w) * r1.z + -abs(r22.w);
                r22.w = abs(r22.w) * r23.y + 1;
                r23.y = r22.y * r2.y + r6.w;
                r22.w = r22.w * r22.w;
                r22.w = r22.w * r23.y;
                r22.w = rcp(r22.w);
                r19.w = r22.y * r19.w;
                r19.w = r22.w * r19.w;
                r19.w = r19.w * r17.w;
                r23.yzw = r19.www * r28.xyz + r38.xyz;
                r20.w = saturate(1 + -r20.w);
                r22.y = r20.w * r20.w;
                r22.y = r22.y * r22.y;
                r20.w = r22.y * r20.w;
                r19.w = r20.w * r19.w;
                r24.xyw = r19.www * r28.xyz + r37.xyz;
                r22.yzw = r22.zzz * r28.xyz + r36.xyz;
                r22.yzw = r3.zzz ? r22.yzw : r36.xyz;
                r35.xyz = r16.www ? r30.xyz : r35.xyz;
                r36.xyz = r16.www ? r36.xyz : r22.yzw;
                r37.xyz = r16.www ? r24.xyw : r37.xyz;
                r38.xyz = r16.www ? r23.yzw : r38.xyz;
                r16.w = (int)r25.x & 255;
                r19.w = (int)r16.w + -1;
                r19.w = cmp((uint)r19.w < 32);
                r19.w = r2.z ? r19.w : 0;
                if (r19.w != 0) {
                  r22.yz = mad((int2)r16.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r16.w, cb2[52].x, r22.y, u2.xxxx
                r16.w = samp0[]..swiz;
                  r16.w = (int)r16.w | 8;
                  GBufferDiffuseColor[viewID].r22.y = u2.x;
                  GBufferDiffuseColor[viewID].r22.z = u2.x;
                }
                r11.w = (int)r11.w + 0x00010101;
              } else {
                r11.w = r25.x;
              }
            } else {
              r11.w = r18.w;
            }
          } else {
            r11.w = r18.w;
          }
        }
      }
    }
    r14.yzw = r35.xyz;
    r33.xyz = r36.xyz;
    r34.xyz = r37.xyz;
    r15.yzw = r38.xyz;
    r5.x = r11.w;
    r7.w = (int)r7.w + 32;
  }
  r4.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r4.y;
  r2.xyw = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r1.zw = r0.ww ? r2.yw : float2(-1,0);
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r2.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r2.xy = r0.ww ? r2.yw : float2(-1,0);
  r3.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r3.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r3.xy = r0.ww ? r3.yw : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.z = cmp((int)r0.z == (int)r0.w);
  r0.zw = r0.zz ? r6.yz : float2(-1,0);
  r6.x = r1.z;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r0.z;
  r6.xyzw = r6.xyzw + -r4.xxxx;
  r6.xyzw = cmp(abs(r6.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r6.xyzw = r6.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r6.x + r6.y;
  r0.z = r0.z + r6.z;
  r0.z = r0.z + r6.w;
  r1.z = r6.y * r2.y;
  r1.z = r6.x * r1.w + r1.z;
  r1.z = r6.z * r3.y + r1.z;
  r0.w = r6.w * r0.w + r1.z;
  r4.w = r0.w / r0.z;
  r0.z = cmp(0 >= r0.z);
  r4.yz = r0.zz ? float2(0,0) : r4.zw;
  r0.zw = (int2)r1.xy & int2(1,1);
  r0.z = cmp((int)r0.w == (int)r0.z);
  r2.xyw = r0.zzz ? r4.xyz : r4.xzy;
  r0.z = -r2.w * 0.5 + r2.x;
  r4.y = r2.w + r0.z;
  r4.z = -r2.y * 0.5 + r0.z;
  r4.x = r4.z + r2.y;
  r2.xyw = r14.yzw * r5.yzw;
  r2.xyw = r33.xyz * r4.xyz + r2.xyw;
  r3.xyw = float3(0.959999979,0.959999979,0.959999979) * r34.xyz;
  r3.xyw = r15.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r3.xyw;
  r2.xyw = r3.xyw + r2.xyw;
  r3.xyw = float3(1,1,1) + -r4.xyz;
  r3.xyw = r34.xyz * r3.xyw;
  r3.xyw = r15.yzw * r4.xyz + r3.xyw;
  r3.xyw = r14.yzw * r5.yzw + r3.xyw;
  r2.xyw = r3.zzz ? r2.xyw : r3.xyw;
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
  r3.xy = cmp((int2)r3.yw == int2(0,0));
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
        case 4 :        r0.z = (int)r13.w & 255;
        break;
        case 5 :        if (8 == 0) r0.z = 0; else if (8+8 < 32) {         r0.z = (uint)r13.w << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r13.w >> 8;
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
    r0.z = (int)r13.w & 255;
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
    r0.w = (int)r13.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r0.w
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.z = 0; else if (8+8 < 32) {     r1.z = (uint)r13.w << (32-(8 + 8)); r1.z = (uint)r1.z >> (32-8);    } else r1.z = (uint)r13.w >> 8;
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