// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:06 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31;
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
  r0.x = mad(permuteStride, 46, (int)vThreadGroupID.x);
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
  r11.z = 1;
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
  r2.x = saturate(dot(r12.xyz, r5.xyw));
  r1.w = dot(-r5.xyw, r12.xyz);
  r1.w = r1.w + r1.w;
  r15.xyz = r12.xyz * -r1.www + -r5.xyw;
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
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r11.yyy;
    r13.yzw = r11.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.yzw;
    r13.yzw = r11.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.yzw;
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.yzw;
    r3.w = -sunConstants.splitDepthOffset + r13.w;
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
        r14.yz = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r9.w = max(abs(r14.y), abs(r14.z));
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
      r14.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r14.yy);
      r16.y = -r16.z;
      r14.yzw = r13.yzy * r16.xyz + r14.zwz;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.yzw = max(float3(0,0,0), r14.yzw);
      r14.yzw = min(r14.yzw, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r14.wz;
      r16.xy = floor(r16.xy);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(0), t23.xxxx
    r10.w = samp0[]..swiz;
      r16.x = (int)r10.w & 0x40000000;
      r16.y = (uint)r10.w << 2;
      if (r16.x == 0) {
        r16.x = (int)r10.w & 0x01ffffff;
        r17.x = (int)r9.w + (int)r16.x;
        r9.w = (uint)r10.w >> 25;
        r9.w = (uint)r9.w;
        r14.yzw = r14.yzw * r9.www;
        r14.yzw = frac(r14.yzw);
        r14.yzw = float3(128,128,128) * r14.yzw;
        r14.yzw = (uint3)r14.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xz = (uint2)r14.wz >> int2(6,6);
        r9.w = (int)r17.z & 0xc0000000;
        r10.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r16.z ? r17.z : r10.w;
        r16.z = (uint)r10.w >> 13;
        r10.w = r16.x ? r16.z : r10.w;
        r10.w = (int)r10.w & 8191;
        r18.x = (int)r10.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.xzw = r9.www ? r17.xyz : r18.xyz;
        r18.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r14.wz >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r10.w = (int)r16.w & 0xc0000000;
        r17.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r17.w = r19.y ? r16.w : r17.w;
        r18.y = (uint)r17.w >> 13;
        r17.w = r19.x ? r18.y : r17.w;
        r17.w = (int)r17.w & 8191;
        r18.x = (int)r16.x + (int)r17.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.xzw = r10.www ? r16.xzw : r18.xzw;
        r16.xzw = r9.www ? r17.xyz : r16.xzw;
        r9.w = (int)r16.w & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r16.z + 6;
          r17.xy = (uint2)r14.wz >> (uint2)r9.ww;
          r9.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r9.w = (uint)r9.w >> (uint)r10.w;
          r9.w = (int)r9.w & 1023;
          r17.x = (int)r9.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.zz + int2(1,2);
          r9.w = (int)-r17.y + 6;
          r18.xy = (uint2)r14.wz >> (uint2)r9.ww;
          r9.w = (int)r17.w & 0xc0000000;
          r10.w = (int)r17.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r18.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.z = (((uint)r18.x << 0) & bitmask.z) | ((uint)r16.z & ~bitmask.z);
          r16.z = (int)r16.z * 10;
          r10.w = (uint)r10.w >> (uint)r16.z;
          r10.w = (int)r10.w & 1023;
          r18.x = (int)r10.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r9.www ? r17.xyw : r18.xyz;
          r10.w = (int)-r18.y + 6;
          r17.yz = (uint2)r14.wz >> (uint2)r10.ww;
          r10.w = (int)r18.z & 0xc0000000;
          r16.z = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r16.z = (uint)r16.z >> (uint)r17.y;
          r16.z = (int)r16.z & 1023;
          r19.x = (int)r16.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r10.ww ? r18.xz : r19.xy;
          r16.xw = r9.ww ? r17.xw : r17.yz;
        }
        r9.w = (int)r16.w & 0xc0000000;
        if (r9.w == 0) {
          if (14 == 0) r10.w = 0; else if (14+15 < 32) {           r10.w = (uint)r16.w << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);          } else r10.w = (uint)r16.w >> 15;
          r10.w = (uint)r10.w;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 6.10388815e-05 * r10.w;
          r17.xy = (int2)r16.ww & int2(32767,536870912);
          r16.z = (uint)r17.x;
          r16.z = sunConstants.sstLightingConstants.constants.spanInInches * r16.z;
          r16.z = 3.05185094e-05 * r16.z;
          r17.x = (int)r14.z & 3;
          r17.x = (int)r16.x + (int)r17.x;
          r17.x = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r17.x, l(0), t23.xxxx
        r17.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r14.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r14.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r14.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r14.y = (uint)r17.x >> (uint)r18.x;
          r14.y = (int)r14.y & 255;
          r14.y = (uint)r14.y;
          r14.y = r14.y * r16.z;
          r14.y = r14.y * 0.00392156886 + r10.w;
          r14.z = (int)r18.y + 1;
          if (1 == 0) r14.w = 0; else if (1+1 < 32) {           r14.w = (uint)r14.w << (32-(1 + 1)); r14.w = (uint)r14.w >> (32-1);          } else r14.w = (uint)r14.w >> 1;
          r14.z = (int)r14.w + (int)r14.z;
          r14.z = (int)r14.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.z, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r14.z = (uint)r14.z >> (uint)r18.z;
          r14.z = (int)r14.z & 0x0000ffff;
          r14.z = (uint)r14.z;
          r14.z = r14.z * r16.z;
          r10.w = r14.z * 1.52590219e-05 + r10.w;
          r16.y = r17.y ? r14.y : r10.w;
        } else {
          r10.w = (int)r16.w & 0x80000000;
          r14.y = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r10.w = r10.w ? r14.y : 0;
          r14.y = (uint)r16.w << 2;
          r14.z = (uint)r10.w >> 16;
          r14.z = f16tof32(r14.z);
          r10.w = (int)r10.w & 0x0000ffff;
          r10.w = f16tof32(r10.w);
          r14.y = r13.y * r14.z + r14.y;
          r10.w = r13.z * r10.w + r14.y;
          r16.y = r9.w ? r10.w : r16.y;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.w;
      r9.w = cmp(r16.y < r9.w);
      r4.z = r9.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r6.w;
        r14.yz = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r14.yz = sunConstants.splitPinTransform[r8.w].zz * r14.yz;
        r16.xy = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r8.w + r6.w;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r3.w).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r8.w = r9.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.w = r8.w * r8.w;
        r4.z = r9.w * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r13.x;
        r8.w = (uint)r6.w;
        r6.w = 1 + r6.w;
        r6.w = min(2, r6.w);
        r6.w = (uint)r6.w;
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.w = (uint)r7.w;
        r14.yz = -sunConstants.splitPinTransform[r8.w].xy + r13.yz;
        r14.yz = sunConstants.splitPinTransform[r8.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.yz = -sunConstants.splitPinTransform[r6.w].xy + r13.yz;
        r13.yz = sunConstants.splitPinTransform[r6.w].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r14.x;
        r16.z = r13.x;
        r9.w = 0;
        r10.w = 0;
        while (true) {
          r13.w = cmp((uint)r10.w >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r7.w < (uint)r10.w);
          r17.xy = r13.ww ? r13.yz : r14.yz;
          r14.w = r13.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
          r13.w = r13.w ? r6.w : r8.w;
          r18.x = dot(icb[r10.w+0].yx, r16.xy);
          r18.y = dot(icb[r10.w+0].yx, r16.yz);
          r17.xy = r18.xy * r14.ww + r17.xy;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r3.w).x;
          r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r13.w = r14.w + r13.w;
          r13.w = saturate(-1 + r13.w);
          r9.w = r13.w * 0.125 + r9.w;
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
  r13.yz = -r3.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r8.w = exp2(r13.y);
  r8.w = r8.w * r2.x;
  r8.w = 9.1368103 * r8.w;
  r9.w = r6.w * r3.w;
  r9.w = -r9.w * 2.0159049 + r13.z;
  r9.w = exp2(r9.w);
  r9.w = r9.w * r2.x;
  r9.w = 9.70808983 * r9.w;
  r8.w = max(r9.w, r8.w);
  r8.w = max(1.26815999, r8.w);
  r9.w = numRefProbes + -numOverrideProbes;
  r13.yz = (uint2)r0.yx >> int2(24,24);
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.y << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.y >> 12;
  r16.x = 16;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r19.xz = float2(1,1);
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r22.xyzw = float4(0,0,0,0);
  r23.xyzw = float4(0,0,0,0);
  r0.y = 0;
  while (true) {
    r10.w = cmp((int)r0.y == 2);
    if (r10.w != 0) break;
    r10.w = r0.y ? r0.x : r13.y;
    r13.w = cmp((uint)r10.w >= (uint)r9.w);
    r14.y = cmp((uint)r10.w < numRefProbes);
    r13.w = r13.w ? r14.y : 0;
    if (r13.w != 0) {
      r10.w = (int)r10.w * 14;
      if (r2.w != 0) {
        r13.w = (int)r23.w & 3;
        r13.w = mad((int)r13.w, 20, 880);
        r16.yzw = refProbeConstantsCB[r10.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r13.w = u2.xyzw;
      }
      r24.w = (int)r23.w + 1;
      r14.yzw = -refProbeConstantsCB[r10.w].data[0].xyz + r11.xyz;
      r13.w = 0x0000ffff & (int)refProbeConstantsCB[r10.w].data[7].z;
      if (6 == 0) r16.y = 0; else if (6+25 < 32) {       r16.y = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(6 + 25)); r16.y = (uint)r16.y >> (32-6);      } else r16.y = (uint)refProbeConstantsCB[r10.w].data[7].z >> 25;
      r16.z = (int)r13.w * 6;
      r16.w = dot(refProbeAttenuationConstantsCB[r16.z].data[0].xyz, r14.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r16.z].data[0].w + r16.w);
      r17.w = dot(refProbeAttenuationConstantsCB[r16.z].data[1].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.z].data[1].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.z].data[2].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.z].data[2].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.z].data[3].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.z].data[3].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.z].data[4].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r16.z].data[4].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r16.z].data[5].xyz, r14.yzw);
      r16.z = saturate(refProbeAttenuationConstantsCB[r16.z].data[5].w + r17.w);
      r17.x = r16.w * r16.z;
      r16.z = 1 & (int)refProbeConstantsCB[r10.w].data[6].x;
      r16.zw = r16.zz ? r17.xy : r17.zx;
      r17.x = refProbeConstantsCB[r10.w].data[6].x;
      r25.xy = r16.zw;
      r17.w = 1;
      while (true) {
        r18.w = cmp((int)r17.w >= (int)r16.y);
        if (r18.w != 0) break;
        r18.w = (int)r13.w + (int)r17.w;
        r18.w = (int)r18.w * 6;
        r20.w = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r14.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r20.w);
        r20.w = r25.x * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r14.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r14.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r14.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r14.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r21.w);
        r20.w = r21.w * r20.w;
        r21.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r14.yzw);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r21.w);
        r25.x = r20.w * r18.w;
        r21.w = (uint)r17.x >> 2;
        if (1 == 0) r25.z = 0; else if (1+2 < 32) {         r25.z = (uint)r17.x << (32-(1 + 2)); r25.z = (uint)r25.z >> (32-1);        } else r25.z = (uint)r17.x >> 2;
        r25.w = (int)r21.w & 2;
        r26.x = max(r25.y, r25.x);
        r18.w = -r20.w * r18.w + 1;
        r18.w = r25.y * r18.w;
        r19.y = r25.w ? r18.w : r26.x;
        r25.xy = r25.zz ? r25.xy : r19.xy;
        r17.w = (int)r17.w + 1;
        r17.x = r21.w;
      }
      r25.y = saturate(r25.y);
      r13.w = refProbeConstantsCB[r10.w].data[6].y * r25.y;
      r16.y = cmp(0 < r13.w);
      if (r16.y != 0) {
        r16.y = (int)r24.w & 7;
        r16.z = (int)r16.y + -1;
        r16.z = cmp((uint)r16.z < 32);
        r16.z = r16.z ? r2.w : 0;
        if (r16.z != 0) {
          r16.yz = mad((int2)r16.yy, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r16.w, cb2[52].x, r16.y, u2.xxxx
        r16.w = samp0[]..swiz;
          r16.w = (int)r16.w | 32;
          GBufferDiffuseColor[viewID].r16.y = u2.x;
          GBufferDiffuseColor[viewID].r16.z = u2.x;
        }
        r23.w = (int)r23.w + 257;
        r23.z = r25.y * refProbeConstantsCB[r10.w].data[6].y + r23.z;
        r13.w = refProbeConstantsCB[r10.w].data[7].y * r13.w;
        r26.x = refProbeConstantsCB[r10.w].data[7].w;
        r26.yz = refProbeConstantsCB[r10.w].data[8].xy;
        r16.y = dot(r15.xyz, r26.xyz);
        r16.z = dot(r14.yzw, r26.xyz);
        r16.z = -refProbeConstantsCB[r10.w].data[8].z + r16.z;
        r16.w = cmp(r16.z >= 0);
        r16.z = max(abs(r16.z), r7.w);
        r16.z = r16.w ? r16.z : -r16.z;
        r16.y = max(1.00000001e-07, -r16.y);
        r16.y = r16.z / r16.y;
        r16.y = min(131072, abs(r16.y));
        r26.x = refProbeConstantsCB[r10.w].data[8].w;
        r26.yz = refProbeConstantsCB[r10.w].data[9].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r10.w].data[9].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r7.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r10.w].data[9].w;
        r26.yz = refProbeConstantsCB[r10.w].data[10].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r10.w].data[10].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r7.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r10.w].data[10].w;
        r26.yz = refProbeConstantsCB[r10.w].data[11].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r10.w].data[11].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r7.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r10.w].data[11].w;
        r26.yz = refProbeConstantsCB[r10.w].data[12].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r10.w].data[12].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r7.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r10.w].data[12].w;
        r26.yz = refProbeConstantsCB[r10.w].data[13].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r10.w].data[13].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r7.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r10.w].data[3].w + r14.y;
        r26.yz = refProbeConstantsCB[r10.w].data[4].xy + r14.zw;
        r25.xzw = r15.xyz * r16.yyy + r26.xyz;
        r16.z = dot(r25.xzw, r25.xzw);
        r16.z = sqrt(r16.z);
        r16.y = r16.y / r16.z;
        r16.y = r16.y + r16.y;
        r16.y = sqrt(r16.y);
        r16.y = r3.w * 5 + r16.y;
        r16.y = -0.844799995 + r16.y;
        r26.x = refProbeConstantsCB[r10.w].data[0].w;
        r26.y = refProbeConstantsCB[r10.w].data[1].z;
        r26.z = refProbeConstantsCB[r10.w].data[2].y;
        r27.x = dot(r25.xzw, r26.xyz);
        r28.xy = refProbeConstantsCB[r10.w].data[1].xw;
        r28.z = refProbeConstantsCB[r10.w].data[2].z;
        r27.y = dot(r25.xzw, r28.xyz);
        r29.x = refProbeConstantsCB[r10.w].data[1].y;
        r29.yz = refProbeConstantsCB[r10.w].data[2].xw;
        r27.z = dot(r25.xzw, r29.xyz);
        if (9 == 0) r16.z = 0; else if (9+16 < 32) {         r16.z = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(9 + 16)); r16.z = (uint)r16.z >> (32-9);        } else r16.z = (uint)refProbeConstantsCB[r10.w].data[7].z >> 16;
        r27.w = (uint)r16.z;
        r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r16.y).xyz;
        r25.xzw = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
        r25.xzw = cmp((int3)r25.xzw == int3(2139095040,2139095040,2139095040));
        r17.x = (int)r25.z | (int)r25.x;
        r17.x = (int)r25.w | (int)r17.x;
        r16.yzw = r17.xxx ? float3(1,1,0) : r16.yzw;
        r30.x = dot(r14.yzw, r26.xyz);
        r30.y = dot(r14.yzw, r28.xyz);
        r30.z = dot(r14.yzw, r29.xyz);
        r14.yzw = saturate(r30.xyz * refProbeConstantsCB[r10.w].data[3].xyz + float3(0.5,0.5,0.5));
        r30.xy = refProbeConstantsCB[r10.w].data[4].zw * r14.yz;
        r30.z = refProbeConstantsCB[r10.w].data[5].x * r14.w;
        r14.yzw = refProbeConstantsCB[r10.w].data[5].yzw + r30.xyz;
        r27.x = dot(r12.xyz, r26.xyz);
        r27.y = dot(r12.xyz, r28.xyz);
        r27.z = dot(r12.xyz, r29.xyz);
        r25.xzw = cmp(float3(0,0,0) < r27.xyz);
        r18.z = r25.x ? 0 : 0.5;
        r26.xyz = r18.xyz + r14.yzw;
        r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
        r28.xyz = r27.xyz * r27.xyz;
        r28.xyz = r28.xyz * r13.www;
        r20.z = r25.z ? 0 : 0.5;
        r29.xyz = r20.xyz + r14.yzw;
        r29.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
        r29.xyz = r29.xyz * r28.yyy;
        r26.xyz = r26.xyz * r28.xxx + r29.xyz;
        r21.z = r25.w ? 0 : 0.5;
        r14.yzw = r21.xyz + r14.yzw;
        r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
        r14.yzw = r14.yzw * r28.zzz + r26.xyz;
        r25.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
        r26.xyz = (int3)r25.xzw & int3(-2147483648,-2147483648,-2147483648);
        r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
        r10.w = (int)r26.y | (int)r26.x;
        r10.w = (int)r26.z | (int)r10.w;
        r25.xzw = r10.www ? float3(1,1,0) : r25.xzw;
        r26.xyz = r25.xzw * r14.yzw;
        r10.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r22.xyz = r14.yzw * r25.xzw + r22.xyz;
        r14.y = r10.w * r8.w;
        r16.yzw = r16.yzw * r13.www;
        r13.w = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r10.w = r8.w * r10.w + r13.w;
        r10.w = r14.y / r10.w;
        r26.x = r22.w;
        r26.yz = r23.xy;
        r14.yzw = r16.yzw * r10.www + r26.xyz;
        r22.w = r14.y;
        r23.xy = r14.zw;
      } else {
        r24.xyz = r23.xyz;
        r23.xyzw = r24.xyzw;
      }
    }
    r0.y = (int)r0.y + 1;
  }
  r16.x = 16;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r14.yzw = r22.xyz;
  r24.x = r22.w;
  r24.yz = r23.xy;
  r19.xy = r23.zw;
  r0.y = 0;
  while (true) {
    r10.w = cmp((int)r0.y == 2);
    if (r10.w != 0) break;
    r10.w = r0.y ? r0.x : r13.y;
    r13.w = cmp((uint)r10.w < (uint)r9.w);
    if (r13.w != 0) {
      r10.w = (int)r10.w * 14;
      if (r2.w != 0) {
        r13.w = (int)r19.y & 15;
        r13.w = mad((int)r13.w, 20, 880);
        r16.yzw = refProbeConstantsCB[r10.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r13.w = u2.xyzw;
      }
      r25.y = (int)r19.y + 1;
      r16.yzw = -refProbeConstantsCB[r10.w].data[0].xyz + r11.xyz;
      r13.w = 0x0000ffff & (int)refProbeConstantsCB[r10.w].data[7].z;
      if (6 == 0) r17.w = 0; else if (6+25 < 32) {       r17.w = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);      } else r17.w = (uint)refProbeConstantsCB[r10.w].data[7].z >> 25;
      r18.w = (int)r13.w * 6;
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
      r18.w = 1 & (int)refProbeConstantsCB[r10.w].data[6].x;
      r25.zw = r18.ww ? r17.xy : r17.zx;
      r17.x = refProbeConstantsCB[r10.w].data[6].x;
      r26.xy = r25.zw;
      r18.w = 1;
      while (true) {
        r20.w = cmp((int)r18.w >= (int)r17.w);
        if (r20.w != 0) break;
        r20.w = (int)r13.w + (int)r18.w;
        r20.w = (int)r20.w * 6;
        r21.w = dot(refProbeAttenuationConstantsCB[r20.w].data[0].xyz, r16.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[0].w + r21.w);
        r21.w = r26.x * r21.w;
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[1].xyz, r16.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[1].w + r24.w);
        r21.w = r24.w * r21.w;
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[2].xyz, r16.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[2].w + r24.w);
        r21.w = r24.w * r21.w;
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[3].xyz, r16.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[3].w + r24.w);
        r21.w = r24.w * r21.w;
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[4].xyz, r16.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[4].w + r24.w);
        r21.w = r24.w * r21.w;
        r24.w = dot(refProbeAttenuationConstantsCB[r20.w].data[5].xyz, r16.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r20.w].data[5].w + r24.w);
        r26.x = r21.w * r20.w;
        r24.w = (uint)r17.x >> 2;
        if (1 == 0) r26.z = 0; else if (1+2 < 32) {         r26.z = (uint)r17.x << (32-(1 + 2)); r26.z = (uint)r26.z >> (32-1);        } else r26.z = (uint)r17.x >> 2;
        r26.w = (int)r24.w & 2;
        r27.x = max(r26.y, r26.x);
        r20.w = -r21.w * r20.w + 1;
        r20.w = r26.y * r20.w;
        r19.w = r26.w ? r20.w : r27.x;
        r26.xy = r26.zz ? r26.xy : r19.zw;
        r18.w = (int)r18.w + 1;
        r17.x = r24.w;
      }
      r13.w = saturate(r26.y + -r23.z);
      r17.x = refProbeConstantsCB[r10.w].data[6].y * r13.w;
      r17.w = cmp(0 < r17.x);
      if (r17.w != 0) {
        r17.w = (int)r25.y & 31;
        r18.w = (int)r17.w + -1;
        r18.w = cmp((uint)r18.w < 32);
        r18.w = r18.w ? r2.w : 0;
        if (r18.w != 0) {
          r25.zw = mad((int2)r17.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, r25.z, u2.xxxx
        r17.w = samp0[]..swiz;
          r17.w = (int)r17.w | 32;
          GBufferDiffuseColor[viewID].r25.z = u2.x;
          GBufferDiffuseColor[viewID].r25.w = u2.x;
        }
        r19.y = (int)r19.y + 257;
        r19.x = r13.w * refProbeConstantsCB[r10.w].data[6].y + r19.x;
        r13.w = refProbeConstantsCB[r10.w].data[7].y * r17.x;
        r27.x = refProbeConstantsCB[r10.w].data[7].w;
        r27.yz = refProbeConstantsCB[r10.w].data[8].xy;
        r17.x = dot(r15.xyz, r27.xyz);
        r17.w = dot(r16.yzw, r27.xyz);
        r17.w = -refProbeConstantsCB[r10.w].data[8].z + r17.w;
        r18.w = cmp(r17.w >= 0);
        r17.w = max(abs(r17.w), r7.w);
        r17.w = r18.w ? r17.w : -r17.w;
        r17.x = max(1.00000001e-07, -r17.x);
        r17.x = r17.w / r17.x;
        r17.x = min(131072, abs(r17.x));
        r27.x = refProbeConstantsCB[r10.w].data[8].w;
        r27.yz = refProbeConstantsCB[r10.w].data[9].xy;
        r17.w = dot(r15.xyz, r27.xyz);
        r18.w = dot(r16.yzw, r27.xyz);
        r18.w = -refProbeConstantsCB[r10.w].data[9].z + r18.w;
        r19.w = cmp(r18.w >= 0);
        r18.w = max(abs(r18.w), r7.w);
        r18.w = r19.w ? r18.w : -r18.w;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.w / r17.w;
        r17.x = min(r17.x, abs(r17.w));
        r27.x = refProbeConstantsCB[r10.w].data[9].w;
        r27.yz = refProbeConstantsCB[r10.w].data[10].xy;
        r17.w = dot(r15.xyz, r27.xyz);
        r18.w = dot(r16.yzw, r27.xyz);
        r18.w = -refProbeConstantsCB[r10.w].data[10].z + r18.w;
        r19.w = cmp(r18.w >= 0);
        r18.w = max(abs(r18.w), r7.w);
        r18.w = r19.w ? r18.w : -r18.w;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.w / r17.w;
        r17.x = min(r17.x, abs(r17.w));
        r27.x = refProbeConstantsCB[r10.w].data[10].w;
        r27.yz = refProbeConstantsCB[r10.w].data[11].xy;
        r17.w = dot(r15.xyz, r27.xyz);
        r18.w = dot(r16.yzw, r27.xyz);
        r18.w = -refProbeConstantsCB[r10.w].data[11].z + r18.w;
        r19.w = cmp(r18.w >= 0);
        r18.w = max(abs(r18.w), r7.w);
        r18.w = r19.w ? r18.w : -r18.w;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.w / r17.w;
        r17.x = min(r17.x, abs(r17.w));
        r27.x = refProbeConstantsCB[r10.w].data[11].w;
        r27.yz = refProbeConstantsCB[r10.w].data[12].xy;
        r17.w = dot(r15.xyz, r27.xyz);
        r18.w = dot(r16.yzw, r27.xyz);
        r18.w = -refProbeConstantsCB[r10.w].data[12].z + r18.w;
        r19.w = cmp(r18.w >= 0);
        r18.w = max(abs(r18.w), r7.w);
        r18.w = r19.w ? r18.w : -r18.w;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.w / r17.w;
        r17.x = min(r17.x, abs(r17.w));
        r27.x = refProbeConstantsCB[r10.w].data[12].w;
        r27.yz = refProbeConstantsCB[r10.w].data[13].xy;
        r17.w = dot(r15.xyz, r27.xyz);
        r18.w = dot(r16.yzw, r27.xyz);
        r18.w = -refProbeConstantsCB[r10.w].data[13].z + r18.w;
        r19.w = cmp(r18.w >= 0);
        r18.w = max(abs(r18.w), r7.w);
        r18.w = r19.w ? r18.w : -r18.w;
        r17.w = max(1.00000001e-07, -r17.w);
        r17.w = r18.w / r17.w;
        r17.x = min(r17.x, abs(r17.w));
        r27.x = refProbeConstantsCB[r10.w].data[3].w + r16.y;
        r27.yz = refProbeConstantsCB[r10.w].data[4].xy + r16.zw;
        r26.xzw = r15.xyz * r17.xxx + r27.xyz;
        r17.w = dot(r26.xzw, r26.xzw);
        r17.w = sqrt(r17.w);
        r17.x = r17.x / r17.w;
        r17.x = r17.x + r17.x;
        r17.x = sqrt(r17.x);
        r17.x = r3.w * 5 + r17.x;
        r17.x = -0.844799995 + r17.x;
        r27.x = refProbeConstantsCB[r10.w].data[0].w;
        r27.y = refProbeConstantsCB[r10.w].data[1].z;
        r27.z = refProbeConstantsCB[r10.w].data[2].y;
        r28.x = dot(r26.xzw, r27.xyz);
        r29.xy = refProbeConstantsCB[r10.w].data[1].xw;
        r29.z = refProbeConstantsCB[r10.w].data[2].z;
        r28.y = dot(r26.xzw, r29.xyz);
        r30.x = refProbeConstantsCB[r10.w].data[1].y;
        r30.yz = refProbeConstantsCB[r10.w].data[2].xw;
        r28.z = dot(r26.xzw, r30.xyz);
        if (9 == 0) r17.w = 0; else if (9+16 < 32) {         r17.w = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);        } else r17.w = (uint)refProbeConstantsCB[r10.w].data[7].z >> 16;
        r28.w = (uint)r17.w;
        r26.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r17.x).xyz;
        r31.xyz = (int3)r26.xzw & int3(-2147483648,-2147483648,-2147483648);
        r31.xyz = cmp((int3)r31.xyz == int3(2139095040,2139095040,2139095040));
        r17.x = (int)r31.y | (int)r31.x;
        r17.x = (int)r31.z | (int)r17.x;
        r26.xzw = r17.xxx ? float3(1,1,0) : r26.xzw;
        r31.x = dot(r16.yzw, r27.xyz);
        r31.y = dot(r16.yzw, r29.xyz);
        r31.z = dot(r16.yzw, r30.xyz);
        r16.yzw = saturate(r31.xyz * refProbeConstantsCB[r10.w].data[3].xyz + float3(0.5,0.5,0.5));
        r31.xy = refProbeConstantsCB[r10.w].data[4].zw * r16.yz;
        r31.z = refProbeConstantsCB[r10.w].data[5].x * r16.w;
        r16.yzw = refProbeConstantsCB[r10.w].data[5].yzw + r31.xyz;
        r28.x = dot(r12.xyz, r27.xyz);
        r28.y = dot(r12.xyz, r29.xyz);
        r28.z = dot(r12.xyz, r30.xyz);
        r27.xyz = cmp(float3(0,0,0) < r28.xyz);
        r18.z = r27.x ? 0 : 0.5;
        r29.xyz = r18.xyz + r16.yzw;
        r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
        r30.xyz = r28.xyz * r28.xyz;
        r30.xyz = r30.xyz * r13.www;
        r20.z = r27.y ? 0 : 0.5;
        r27.xyw = r20.xyz + r16.yzw;
        r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
        r27.xyw = r27.xyw * r30.yyy;
        r27.xyw = r29.xyz * r30.xxx + r27.xyw;
        r21.z = r27.z ? 0 : 0.5;
        r16.yzw = r21.xyz + r16.yzw;
        r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
        r16.yzw = r16.yzw * r30.zzz + r27.xyw;
        r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
        r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
        r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
        r10.w = (int)r28.y | (int)r28.x;
        r10.w = (int)r28.z | (int)r10.w;
        r27.xyz = r10.www ? float3(1,1,0) : r27.xyz;
        r28.xyz = r27.xyz * r16.yzw;
        r10.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r14.yzw = r16.yzw * r27.xyz + r14.yzw;
        r16.y = r10.w * r8.w;
        r26.xzw = r26.xzw * r13.www;
        r13.w = dot(r26.xzw, float3(0.212599993,0.715200007,0.0722000003));
        r10.w = r8.w * r10.w + r13.w;
        r10.w = r16.y / r10.w;
        r24.xyz = r26.xzw * r10.www + r24.xyz;
      } else {
        r25.x = r19.x;
        r19.xy = r25.xy;
      }
    }
    r0.y = (int)r0.y + 1;
  }
  r0.x = cmp(r23.z >= 1);
  bitmask.y = ((~(-1 << 8)) << 0) & 0xffffffff;  r0.y = (((uint)r19.y << 0) & bitmask.y) | ((uint)r23.w & ~bitmask.y);
  r0.x = r0.x ? r0.y : r19.y;
  r0.y = max(1, r19.x);
  r0.y = rcp(r0.y);
  r19.x = saturate(r19.x);
  r16.xyz = r14.yzw * r0.yyy;
  r17.xyz = r24.xyz * r0.yyy;
  r3.w = cmp(r19.x < 0.99000001);
  if (r3.w != 0) {
    r0.x = (int)r0.x + 256;
    r3.w = 1 + -r19.x;
    r7.w = sunConstants.globalProbeExposure * r3.w;
    r18.xyz = -globalProbeConstants.data[0].xyz + r11.xyz;
    r19.x = globalProbeConstants.data[0].w * r18.x;
    r19.yz = globalProbeConstants.data[1].xy * r18.yz;
    r18.xyz = saturate(float3(0.5,0.5,0.5) + r19.xyz);
    r19.xy = globalProbeConstants.data[1].zw * r18.xy;
    r19.z = globalProbeConstants.data[2].x * r18.z;
    r18.xyz = globalProbeConstants.data[2].yzw + r19.xyz;
    r19.xyz = cmp(float3(0,0,0) < r12.xyz);
    r19.xyz = r19.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r19.w = 0;
    r20.xyz = r19.wwx + r18.xyz;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r21.xyz = r12.xyz * r12.xyz;
    r21.xyz = r21.xyz * r7.www;
    r22.xyz = r19.wwy + r18.xyz;
    r22.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r22.xyz = r22.xyz * r21.yyy;
    r20.xyz = r20.xyz * r21.xxx + r22.xyz;
    r18.xyz = r19.wwz + r18.xyz;
    r18.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r21.zzz + r20.xyz;
    r12.w = 0;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r18.xyz = r19.xyz * r18.xyz;
    r7.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r16.xyz = r14.yzw * r0.yyy + r18.xyz;
    r15.w = 0;
    r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r6.w).xyz;
    r0.y = sunConstants.globalProbeExposure * r3.w + -r7.w;
    r0.y = r2.y * r0.y + r7.w;
    r17.xyz = r14.yzw * r0.yyy + r17.xyz;
  }
  r0.y = r2.x + r5.z;
  r0.y = log2(abs(r0.y));
  r0.y = r2.z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y + r5.z;
  r0.y = saturate(-1 + r0.y);
  r16.xyz = r16.xyz * r5.zzz;
  r13.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.yw, 0).xy;
  r14.yzw = r17.xyz * r0.yyy;
  r17.xyz = r14.zwy * r13.yyy;
  r14.yzw = r14.yzw * r13.www;
  r0.y = sqrt(r2.z);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r2.y = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r3.w = r2.x * r0.y + r2.y;
  r0.y = r3.w * r0.y;
  r2.y = r3.w * r2.y;
  if (r2.w != 0) {
    r18.x = 3;
    r18.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r3.w = cmp(0 < r3.z);
  if (r3.w != 0) {
    if (r2.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r3.w, cb2[52].x, l(112), u2.xxxx
    r3.w = samp0[]..swiz;
      r3.w = (int)r3.w | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r3.w = cmp(0 < r4.z);
    if (r3.w != 0) {
      r3.w = sunConstants.specScale * r1.w;
      r3.w = r3.w * r3.z;
      if (sunConstants.sunCookieIndex != 0) {
        r18.xyz = eyeOffset.xyz + r11.xyz;
        r18.w = 1;
        r5.z = dot(sunConstants.sunCookieTransform[0].xyzw, r18.xyzw);
        r6.w = dot(sunConstants.sunCookieTransform[1].xyzw, r18.xyzw);
        r18.x = frac(r5.z);
        r18.y = frac(r6.w);
        r5.z = -1 + (int14)sunConstants.sunCookieIndex;
        r18.z = (uint)r5.z;
        r18.xyz = gCookieArray.SampleLevel(samplerLinear_s, r18.xyz, 0).xyz;
        r18.xyz = float3(-1,-1,-1) + r18.xyz;
        r18.xyz = sunConstants.sunCookieIntensity * r18.xyz + float3(1,1,1);
        r18.xyz = sunConstants.color.xyz * r18.xyz;
      } else {
        r18.xyz = sunConstants.color.xyz;
      }
      r5.z = viewmodelSunShadowRaw >> 16;
      r6.w = cmp(0 < (uint)r5.z);
      r6.w = r3.x ? r6.w : 0;
      if (r6.w != 0) {
        r5.z = (int)r5.z + numLights;
        r5.z = mad((int)r5.z, 15, -15);
        r6.w = abs(r3.y) * -0.200000003 + 0.400000006;
        r19.xyz = r12.xyz * r6.www + r11.xyz;
        r20.xyz = lightConstantsCB[r5.z].data[4].yzw;
        r20.w = lightConstantsCB[r5.z].data[5].x;
        r19.w = 1;
        r20.x = dot(r20.xyzw, r19.xyzw);
        r21.xyz = lightConstantsCB[r5.z].data[5].yzw;
        r21.w = lightConstantsCB[r5.z].data[6].x;
        r20.y = dot(r21.xyzw, r19.xyzw);
        r13.yw = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r20.x = lightConstantsCB[r5.z].data[9].w + r13.y;
        r20.y = lightConstantsCB[r5.z].data[10].x + r13.w;
        r13.yw = lightConstantsCB[r5.z].data[9].yz * r20.xy;
        r20.xy = lightConstantsCB[r5.z].data[3].yy / lightConstantsCB[r5.z].data[8].yw;
        r20.zw = float2(1,1) + -r20.xy;
        r20.zw = cmp(r13.yw >= r20.zw);
        r20.xy = cmp(r20.xy >= r13.yw);
        r20.xy = (int2)r20.xy | (int2)r20.zw;
        r6.w = (int)r20.y | (int)r20.x;
        if (r6.w == 0) {
          r20.xyz = lightConstantsCB[r5.z].data[6].yzw;
          r20.w = lightConstantsCB[r5.z].data[7].x;
          r6.w = dot(r20.xyzw, r19.xyzw);
          r13.yw = saturate(r13.yw);
          r19.x = r13.y * lightConstantsCB[r5.z].data[8].y + lightConstantsCB[r5.z].data[8].z;
          r19.y = r13.w * lightConstantsCB[r5.z].data[8].w + lightConstantsCB[r5.z].data[9].x;
          r6.w = lightConstantsCB[r5.z].data[10].y + r6.w;
          r6.w = r6.w / lightConstantsCB[r5.z].data[10].z;
          r6.w = max(6.10351563e-05, r6.w);
          r7.w = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
          if (enableDitheredShadow != 0) {
            r20.x = -r13.x;
            r21.z = (uint)r7.w;
            r20.y = r14.x;
            r20.z = r13.x;
            r8.w = 0;
            r9.w = 0;
            while (true) {
              r10.w = cmp((int)r9.w >= 8);
              if (r10.w != 0) break;
              r22.x = dot(icb[r9.w+0].yx, r20.xy);
              r22.y = dot(icb[r9.w+0].yx, r20.yz);
              r21.xy = r22.xy * lightConstantsCB[r5.z].data[3].yy + r19.xy;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r6.w).x;
              r8.w = r10.w * 0.125 + r8.w;
              r9.w = (int)r9.w + 1;
            }
          } else {
            r19.z = (uint)r7.w;
            r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r6.w).x;
          }
          r5.z = r8.w * r8.w;
          r5.z = r5.z * r8.w;
        } else {
          r5.z = 1;
        }
        r4.z = r5.z * r4.z;
      } else {
        r5.z = viewmodelSunShadowRaw & 0x0000ffff;
        r6.w = cmp(0 < (uint)r5.z);
        r7.w = ~(int)r3.x;
        r6.w = r6.w ? r7.w : 0;
        if (r6.w != 0) {
          r5.z = (int)r5.z + numLights;
          r5.z = mad((int)r5.z, 15, -15);
          r6.w = abs(r3.y) * -0.200000003 + 0.400000006;
          r19.xyz = r12.xyz * r6.www + r11.xyz;
          r20.xyz = lightConstantsCB[r5.z].data[4].yzw;
          r20.w = lightConstantsCB[r5.z].data[5].x;
          r19.w = 1;
          r20.x = dot(r20.xyzw, r19.xyzw);
          r21.xyz = lightConstantsCB[r5.z].data[5].yzw;
          r21.w = lightConstantsCB[r5.z].data[6].x;
          r20.y = dot(r21.xyzw, r19.xyzw);
          r13.yw = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r20.x = lightConstantsCB[r5.z].data[9].w + r13.y;
          r20.y = lightConstantsCB[r5.z].data[10].x + r13.w;
          r13.yw = lightConstantsCB[r5.z].data[9].yz * r20.xy;
          r20.xy = lightConstantsCB[r5.z].data[3].yy / lightConstantsCB[r5.z].data[8].yw;
          r20.zw = float2(1,1) + -r20.xy;
          r20.zw = cmp(r13.yw >= r20.zw);
          r20.xy = cmp(r20.xy >= r13.yw);
          r20.xy = (int2)r20.xy | (int2)r20.zw;
          r6.w = (int)r20.y | (int)r20.x;
          if (r6.w == 0) {
            r20.xyz = lightConstantsCB[r5.z].data[6].yzw;
            r20.w = lightConstantsCB[r5.z].data[7].x;
            r6.w = dot(r20.xyzw, r19.xyzw);
            r13.yw = saturate(r13.yw);
            r19.x = r13.y * lightConstantsCB[r5.z].data[8].y + lightConstantsCB[r5.z].data[8].z;
            r19.y = r13.w * lightConstantsCB[r5.z].data[8].w + lightConstantsCB[r5.z].data[9].x;
            r6.w = lightConstantsCB[r5.z].data[10].y + r6.w;
            r6.w = r6.w / lightConstantsCB[r5.z].data[10].z;
            r6.w = max(6.10351563e-05, r6.w);
            r7.w = 0x0000ffff & (int)lightConstantsCB[r5.z].data[1].w;
            if (enableDitheredShadow != 0) {
              r20.x = -r13.x;
              r21.z = (uint)r7.w;
              r20.y = r14.x;
              r20.z = r13.x;
              r8.w = 0;
              r9.w = 0;
              while (true) {
                r10.w = cmp((int)r9.w >= 8);
                if (r10.w != 0) break;
                r22.x = dot(icb[r9.w+0].yx, r20.xy);
                r22.y = dot(icb[r9.w+0].yx, r20.yz);
                r21.xy = r22.xy * lightConstantsCB[r5.z].data[3].yy + r19.xy;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r6.w).x;
                r8.w = r10.w * 0.125 + r8.w;
                r9.w = (int)r9.w + 1;
              }
            } else {
              r19.z = (uint)r7.w;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r6.w).x;
            }
            r5.z = r8.w * r8.w;
            r5.z = r5.z * r8.w;
          } else {
            r5.z = 1;
          }
          r4.z = r5.z * r4.z;
        }
      }
      r5.z = -r2.x * 0.5 + 1;
      r5.z = -r3.z * r5.z + 1;
      r5.z = r5.z * r5.z;
      r5.z = -r5.z * 0.620000005 + 0.620000005;
      r5.z = r5.z + -r3.z;
      r5.z = r2.z * r5.z + r3.z;
      r5.z = r5.z * r4.z;
      r3.y = cmp(0 < r3.y);
      r19.xyz = r5.zzz * r18.xyz + r16.xyz;
      r20.xyz = -r11.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r1.z = dot(r20.xyz, r20.xyz);
      r1.z = rsqrt(r1.z);
      r20.xyz = r20.xyz * r1.zzz;
      r1.z = dot(r20.xyz, r5.xyw);
      r5.z = dot(r12.xyz, r20.xyz);
      r6.w = abs(r5.z) * r1.w + -abs(r5.z);
      r5.z = abs(r5.z) * r6.w + 1;
      r3.z = r3.z * r0.y + r2.y;
      r5.z = r5.z * r5.z;
      r3.z = r5.z * r3.z;
      r3.z = rcp(r3.z);
      r3.z = r3.z * r3.w;
      r3.z = r4.z * r3.z;
      r3.z = 0.25 * r3.z;
      r20.xyz = r3.zzz * r18.xyz + r14.yzw;
      r1.z = saturate(1 + -r1.z);
      r3.w = r1.z * r1.z;
      r3.w = r3.w * r3.w;
      r1.z = r3.w * r1.z;
      r1.z = r3.z * r1.z;
      r18.xyz = r1.zzz * r18.yzx + r17.xyz;
      r19.w = r18.z;
      r16.w = r17.z;
      r16.xyzw = r3.yyyy ? r19.xyzw : r16.xyzw;
      r18.zw = r20.xy;
      r17.zw = r14.yz;
      r18.xyzw = r3.yyyy ? r18.xyzw : r17.xyzw;
      r14.w = r3.y ? r20.z : r14.w;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r1.z, cb2[52].x, l(112), u2.xxxx
      r1.z = samp0[]..swiz;
        r1.z = (int)r1.z | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r17.z = r16.w;
      r17.xy = r18.xy;
      r14.yz = r18.zw;
      r1.z = 0x00010101;
    } else {
      r1.z = 257;
    }
  } else {
    r1.z = 1;
  }
  r3.y = (int)r13.z * 15;
  if (3 == 0) r3.z = 0; else if (3+24 < 32) {   r3.z = (uint)lightConstantsCB[r3.y].data[1].w << (32-(3 + 24)); r3.z = (uint)r3.z >> (32-3);  } else r3.z = (uint)lightConstantsCB[r3.y].data[1].w >> 24;
  switch (r3.z) {
    case 4 :    if (r2.w != 0) {
      r18.yzw = lightConstantsCB[r3.y].data[0].xyz + eyeOffset.xyz;
      r18.x = 2;
      GBufferDiffuseColor[viewID].136 = u2.xyzw;
    }
    r3.z = (int)r1.z + 1;
    r3.w = cmp(0 < lightConstantsCB[r3.y].data[6].y);
    r18.xy = lightConstantsCB[r3.y].data[5].zw;
    r18.z = lightConstantsCB[r3.y].data[6].x;
    r13.yzw = -r18.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r3.y].data[0].xyz;
    r19.xyz = r13.yzw + -r11.xyz;
    r4.z = dot(r18.xyz, r19.xyz);
    r5.z = saturate(-r4.z / lightConstantsCB[r3.y].data[6].y);
    r20.xyz = r5.zzz * r18.xyz + r13.yzw;
    r20.xyz = r3.www ? r20.xyz : lightConstantsCB[r3.y].data[0].xyz;
    r20.xyz = r20.xyz + -r11.xyz;
    r6.w = dot(r20.xyz, r20.xyz);
    r7.w = rsqrt(r6.w);
    r20.xyz = r20.xyz * r7.www;
    r7.w = dot(r12.xyz, r20.xyz);
    r8.w = saturate(r7.w);
    r9.w = cmp(0 < r8.w);
    if (r9.w != 0) {
      r9.w = sqrt(r6.w);
      r10.w = lightConstantsCB[r3.y].data[3].x * lightConstantsCB[r3.y].data[3].x;
      r6.w = r10.w / r6.w;
      r6.w = min(1, r6.w);
      r20.xy = saturate(r9.ww * lightConstantsCB[r3.y].data[2].xz + lightConstantsCB[r3.y].data[2].yw);
      r20.zw = r20.xy * r20.xy;
      r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
      r20.xy = r20.zw * r20.xy;
      r6.w = r20.x * r6.w;
      r6.w = r6.w * r20.y;
      r9.w = cmp(0 < r6.w);
      if (r9.w != 0) {
        if (3 == 0) r9.w = 0; else if (3+27 < 32) {         r9.w = (uint)lightConstantsCB[r3.y].data[1].w << (32-(3 + 27)); r9.w = (uint)r9.w >> (32-3);        } else r9.w = (uint)lightConstantsCB[r3.y].data[1].w >> 27;
        if (r2.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, l(136), u2.xxxx
        r10.w = samp0[]..swiz;
          r10.w = (int)r10.w | 4;
          GBufferDiffuseColor[viewID].136 = u2.x;
          GBufferDiffuseColor[viewID].152 = u2.x;
        }
        r10.w = (int)r1.z + 257;
        r9.w = cmp((int)r9.w != 1);
        if (r9.w != 0) {
          r20.xy = (uint2)r1.yx;
          r9.w = dot(r20.xy, float2(0.0671105608,0.00583714992));
          r9.w = frac(r9.w);
          r9.w = 52.9829178 * r9.w;
          r9.w = frac(r9.w);
          r9.w = r9.w * 6.28318548 + gameTick.w;
          sincos(r9.w, r20.x, r21.x);
          r9.w = abs(r7.w) * -0.200000003 + 0.400000006;
          r20.yzw = r12.xyz * r9.www + r11.xyz;
          r20.yzw = -lightConstantsCB[r3.y].data[4].yzw + r20.yzw;
          r9.w = max(abs(r20.z), abs(r20.w));
          r9.w = max(abs(r20.y), r9.w);
          r9.w = lightConstantsCB[r3.y].data[5].x / r9.w;
          r9.w = lightConstantsCB[r3.y].data[5].y + r9.w;
          r12.w = dot(r20.yzw, r20.yzw);
          r12.w = rsqrt(r12.w);
          r9.w = max(6.10351563e-05, r9.w);
          r15.w = 0x0000ffff & (int)lightConstantsCB[r3.y].data[1].w;
          r22.x = -r13.x;
          r23.w = (uint)r15.w;
          r22.y = r14.x;
          r22.z = r13.x;
          r15.w = 0;
          r16.w = 0;
          while (true) {
            r17.w = cmp((int)r16.w >= 8);
            if (r17.w != 0) break;
            r21.y = dot(icb[r16.w+0].yx, r22.xy);
            r21.z = dot(icb[r16.w+0].yx, r22.yz);
            r24.yz = lightConstantsCB[r3.y].data[3].yy * r21.yz;
            r24.x = r24.y * r21.x;
            r24.w = r24.y * r20.x;
            r23.xyz = r20.yzw * r12.www + r24.xzw;
            r17.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyzw, r9.w).x;
            r15.w = r17.w * 0.125 + r15.w;
            r16.w = (int)r16.w + 1;
          }
        } else {
          r15.w = 1;
        }
        r6.w = r15.w * r6.w;
        r9.w = cmp(0 < r6.w);
        if (r9.w != 0) {
          r9.w = lightConstantsCB[r3.y].data[1].z * r1.w;
          r9.w = 0.25 * r9.w;
          r12.w = dot(r18.xyz, r15.xyz);
          r15.x = dot(r15.xyz, r19.xyz);
          r15.y = -r12.w * r12.w + lightConstantsCB[r3.y].data[6].y;
          r4.z = r12.w * r15.x + -r4.z;
          r4.z = saturate(r4.z / r15.y);
          r12.w = r15.y / lightConstantsCB[r3.y].data[6].y;
          r12.w = 10 * r12.w;
          r12.w = min(1, r12.w);
          r4.z = r4.z + -r5.z;
          r4.z = r12.w * r4.z + r5.z;
          r13.yzw = r4.zzz * r18.xyz + r13.yzw;
          r13.yzw = r3.www ? r13.yzw : lightConstantsCB[r3.y].data[0].xyz;
          r13.yzw = r13.yzw + -r11.xyz;
          r3.w = dot(r13.yzw, r13.yzw);
          r3.w = rsqrt(r3.w);
          r15.xyz = r13.yzw * r3.www;
          if (4 == 0) r4.z = 0; else if (4+16 < 32) {           r4.z = (uint)lightConstantsCB[r3.y].data[1].w << (32-(4 + 16)); r4.z = (uint)r4.z >> (32-4);          } else r4.z = (uint)lightConstantsCB[r3.y].data[1].w >> 16;
          r5.z = cmp(0 < (uint)r4.z);
          r5.z = r3.x ? r5.z : 0;
          if (r5.z != 0) {
            r4.z = (int)r4.z + numLights;
            r4.z = mad((int)r4.z, 15, -15);
            r5.z = abs(r7.w) * -0.200000003 + 0.400000006;
            r18.xyz = r12.xyz * r5.zzz + r11.xyz;
            r19.xyz = lightConstantsCB[r4.z].data[6].yzw;
            r19.w = lightConstantsCB[r4.z].data[7].x;
            r18.w = 1;
            r5.z = dot(r19.xyzw, r18.xyzw);
            r19.xyz = lightConstantsCB[r4.z].data[7].yzw;
            r19.w = lightConstantsCB[r4.z].data[8].x;
            r12.w = dot(r19.xyzw, r18.xyzw);
            r15.w = cmp(r12.w < r5.z);
            if (r15.w == 0) {
              r19.xyz = lightConstantsCB[r4.z].data[4].yzw;
              r19.w = lightConstantsCB[r4.z].data[5].x;
              r19.x = dot(r19.xyzw, r18.xyzw);
              r20.xyz = lightConstantsCB[r4.z].data[5].yzw;
              r20.w = lightConstantsCB[r4.z].data[6].x;
              r19.y = dot(r20.xyzw, r18.xyzw);
              r18.xy = r19.xy / r12.ww;
              r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r19.x = lightConstantsCB[r4.z].data[9].w + r18.x;
              r19.y = lightConstantsCB[r4.z].data[10].x + r18.y;
              r18.xy = lightConstantsCB[r4.z].data[9].yz * r19.xy;
              r18.zw = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
              r19.xy = float2(1,1) + -r18.zw;
              r19.xy = cmp(r18.xy >= r19.xy);
              r18.zw = cmp(r18.zw >= r18.xy);
              r18.zw = (int2)r18.zw | (int2)r19.xy;
              r16.w = (int)r18.w | (int)r18.z;
              if (r16.w == 0) {
                r18.xy = saturate(r18.xy);
                r19.x = r18.x * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
                r19.y = r18.y * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
                r17.w = lightConstantsCB[r4.z].data[10].z * r12.w;
                r5.z = lightConstantsCB[r4.z].data[10].y * r12.w + r5.z;
                r5.z = r5.z / r17.w;
              }
            } else {
              r16.w = -1;
            }
            r12.w = (int)r15.w | (int)r16.w;
            if (r12.w == 0) {
              r5.z = max(6.10351563e-05, r5.z);
              r12.w = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
              if (enableDitheredShadow != 0) {
                r18.x = -r13.x;
                r20.z = (uint)r12.w;
                r18.y = r14.x;
                r18.z = r13.x;
                r15.w = 0;
                r16.w = 0;
                while (true) {
                  r17.w = cmp((int)r16.w >= 8);
                  if (r17.w != 0) break;
                  r21.x = dot(icb[r16.w+0].yx, r18.xy);
                  r21.y = dot(icb[r16.w+0].yx, r18.yz);
                  r20.xy = r21.xy * lightConstantsCB[r4.z].data[3].yy + r19.xy;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r5.z).x;
                  r15.w = r17.w * 0.125 + r15.w;
                  r16.w = (int)r16.w + 1;
                }
              } else {
                r19.z = (uint)r12.w;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.z).x;
              }
              r4.z = r15.w * r15.w;
              r4.z = r4.z * r15.w;
            } else {
              r4.z = 1;
            }
            r6.w = r6.w * r4.z;
          } else {
            if (4 == 0) r4.z = 0; else if (4+20 < 32) {             r4.z = (uint)lightConstantsCB[r3.y].data[1].w << (32-(4 + 20)); r4.z = (uint)r4.z >> (32-4);            } else r4.z = (uint)lightConstantsCB[r3.y].data[1].w >> 20;
            r5.z = cmp(0 < (uint)r4.z);
            r12.w = ~(int)r3.x;
            r5.z = r5.z ? r12.w : 0;
            if (r5.z != 0) {
              r4.z = (int)r4.z + numLights;
              r4.z = mad((int)r4.z, 15, -15);
              r5.z = abs(r7.w) * -0.200000003 + 0.400000006;
              r18.xyz = r12.xyz * r5.zzz + r11.xyz;
              r19.xyz = lightConstantsCB[r4.z].data[6].yzw;
              r19.w = lightConstantsCB[r4.z].data[7].x;
              r18.w = 1;
              r5.z = dot(r19.xyzw, r18.xyzw);
              r19.xyz = lightConstantsCB[r4.z].data[7].yzw;
              r19.w = lightConstantsCB[r4.z].data[8].x;
              r12.w = dot(r19.xyzw, r18.xyzw);
              r15.w = cmp(r12.w < r5.z);
              if (r15.w == 0) {
                r19.xyz = lightConstantsCB[r4.z].data[4].yzw;
                r19.w = lightConstantsCB[r4.z].data[5].x;
                r19.x = dot(r19.xyzw, r18.xyzw);
                r20.xyz = lightConstantsCB[r4.z].data[5].yzw;
                r20.w = lightConstantsCB[r4.z].data[6].x;
                r19.y = dot(r20.xyzw, r18.xyzw);
                r18.xy = r19.xy / r12.ww;
                r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r19.x = lightConstantsCB[r4.z].data[9].w + r18.x;
                r19.y = lightConstantsCB[r4.z].data[10].x + r18.y;
                r18.xy = lightConstantsCB[r4.z].data[9].yz * r19.xy;
                r18.zw = lightConstantsCB[r4.z].data[3].yy / lightConstantsCB[r4.z].data[8].yw;
                r19.xy = float2(1,1) + -r18.zw;
                r19.xy = cmp(r18.xy >= r19.xy);
                r18.zw = cmp(r18.zw >= r18.xy);
                r18.zw = (int2)r18.zw | (int2)r19.xy;
                r16.w = (int)r18.w | (int)r18.z;
                if (r16.w == 0) {
                  r18.xy = saturate(r18.xy);
                  r19.x = r18.x * lightConstantsCB[r4.z].data[8].y + lightConstantsCB[r4.z].data[8].z;
                  r19.y = r18.y * lightConstantsCB[r4.z].data[8].w + lightConstantsCB[r4.z].data[9].x;
                  r17.w = lightConstantsCB[r4.z].data[10].z * r12.w;
                  r5.z = lightConstantsCB[r4.z].data[10].y * r12.w + r5.z;
                  r5.z = r5.z / r17.w;
                }
              } else {
                r16.w = -1;
              }
              r12.w = (int)r15.w | (int)r16.w;
              if (r12.w == 0) {
                r5.z = max(6.10351563e-05, r5.z);
                r12.w = 0x0000ffff & (int)lightConstantsCB[r4.z].data[1].w;
                if (enableDitheredShadow != 0) {
                  r18.x = -r13.x;
                  r20.z = (uint)r12.w;
                  r18.y = r14.x;
                  r18.z = r13.x;
                  r15.w = 0;
                  r16.w = 0;
                  while (true) {
                    r17.w = cmp((int)r16.w >= 8);
                    if (r17.w != 0) break;
                    r21.x = dot(icb[r16.w+0].yx, r18.xy);
                    r21.y = dot(icb[r16.w+0].yx, r18.yz);
                    r20.xy = r21.xy * lightConstantsCB[r4.z].data[3].yy + r19.xy;
                    r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r5.z).x;
                    r15.w = r17.w * 0.125 + r15.w;
                    r16.w = (int)r16.w + 1;
                  }
                } else {
                  r19.z = (uint)r12.w;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.z).x;
                }
                r4.z = r15.w * r15.w;
                r4.z = r4.z * r15.w;
              } else {
                r4.z = 1;
              }
              r6.w = r6.w * r4.z;
            }
          }
          r4.z = -r2.x * 0.5 + 1;
          r4.z = -r8.w * r4.z + 1;
          r4.z = r4.z * r4.z;
          r4.z = -r4.z * 0.620000005 + 0.620000005;
          r4.z = r4.z + -r8.w;
          r4.z = r2.z * r4.z + r8.w;
          r4.z = r4.z * r6.w;
          r18.x = lightConstantsCB[r3.y].data[0].w;
          r18.yz = lightConstantsCB[r3.y].data[1].xy;
          r5.z = cmp(0 < r7.w);
          r19.xyz = r4.zzz * r18.xyz + r16.xyz;
          r4.z = saturate(dot(r12.xyz, r15.xyz));
          r13.yzw = r13.yzw * r3.www + r5.xyw;
          r3.w = dot(r13.yzw, r13.yzw);
          r3.w = rsqrt(r3.w);
          r13.yzw = r13.yzw * r3.www;
          r3.w = dot(r13.yzw, r5.xyw);
          r7.w = dot(r12.xyz, r13.yzw);
          r8.w = abs(r7.w) * r1.w + -abs(r7.w);
          r7.w = abs(r7.w) * r8.w + 1;
          r8.w = r4.z * r0.y + r2.y;
          r7.w = r7.w * r7.w;
          r7.w = r7.w * r8.w;
          r7.w = rcp(r7.w);
          r4.z = r4.z * r9.w;
          r4.z = r7.w * r4.z;
          r4.z = r4.z * r6.w;
          r13.yzw = r4.zzz * r18.xyz + r14.yzw;
          r3.w = saturate(1 + -r3.w);
          r7.w = r3.w * r3.w;
          r7.w = r7.w * r7.w;
          r3.w = r7.w * r3.w;
          r3.w = r4.z * r3.w;
          r15.xyz = r3.www * r18.xyz + r17.zxy;
          r16.xyz = r5.zzz ? r19.xyz : r16.xyz;
          r17.xyz = r5.zzz ? r15.yzx : r17.xyz;
          r14.yzw = r5.zzz ? r13.yzw : r14.yzw;
          if (r2.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r3.w, cb2[52].x, l(136), u2.xxxx
          r3.w = samp0[]..swiz;
            r3.w = (int)r3.w | 8;
            GBufferDiffuseColor[viewID].136 = u2.x;
            GBufferDiffuseColor[viewID].156 = u2.x;
          }
          r1.z = (int)r1.z + 0x00010101;
        } else {
          r1.z = r10.w;
        }
      } else {
        r1.z = r3.z;
      }
    } else {
      r1.z = r3.z;
    }
    break;
    case 2 :    if (r2.w != 0) {
      r15.yzw = lightConstantsCB[r3.y].data[0].xyz + eyeOffset.xyz;
      r15.x = 2;
      GBufferDiffuseColor[viewID].136 = u2.xyzw;
    }
    r3.z = (int)r1.z + 1;
    r15.xy = lightConstantsCB[r3.y].data[3].zw + -r11.xy;
    r15.z = lightConstantsCB[r3.y].data[4].x + -r11.z;
    r3.w = dot(r15.xyz, r15.xyz);
    r3.w = rsqrt(r3.w);
    r13.yzw = r15.xyz * r3.www;
    r4.z = dot(r12.xyz, r13.yzw);
    r5.z = saturate(r4.z);
    r6.w = cmp(0 < r5.z);
    if (r6.w != 0) {
      r18.xyz = lightConstantsCB[r3.y].data[7].yzw;
      r18.w = lightConstantsCB[r3.y].data[8].x;
      r11.w = 1;
      r6.w = dot(r18.xyzw, r11.xyzw);
      r7.w = cmp(r6.w < 1);
      if (r7.w != 0) {
        r13.yzw = float3(1,1,1);
        r7.w = 0;
      } else {
        r19.xyz = lightConstantsCB[r3.y].data[0].xyz + -r11.xyz;
        r8.w = lightConstantsCB[r3.y].data[3].x * lightConstantsCB[r3.y].data[3].x;
        r9.w = dot(r19.xyz, r19.xyz);
        r8.w = r8.w / r9.w;
        r8.w = min(1, r8.w);
        r19.xy = saturate(r6.ww * lightConstantsCB[r3.y].data[2].xz + lightConstantsCB[r3.y].data[2].yw);
        r19.zw = r19.xy * r19.xy;
        r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
        r19.xy = r19.zw * r19.xy;
        r8.w = r19.x * r8.w;
        r8.w = r8.w * r19.y;
        r19.xyz = lightConstantsCB[r3.y].data[4].yzw;
        r19.w = lightConstantsCB[r3.y].data[5].x;
        r19.x = dot(r19.xyzw, r11.xyzw);
        r20.xyz = lightConstantsCB[r3.y].data[5].yzw;
        r20.w = lightConstantsCB[r3.y].data[6].x;
        r19.y = dot(r20.xyzw, r11.xyzw);
        r19.xy = r19.xy / r6.ww;
        r6.w = cmp(lightConstantsCB[r3.y].data[10].w < 0.00048828125);
        if (r6.w != 0) {
          r20.xy = saturate(abs(r19.xy) * lightConstantsCB[r3.y].data[12].xy + lightConstantsCB[r3.y].data[12].zw);
          r20.zw = r20.xy * r20.xy;
          r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
          r20.xy = r20.zw * r20.xy;
          r6.w = r20.x * r20.y;
        } else {
          r20.xyzw = saturate(lightConstantsCB[r3.y].data[11].xyzw * abs(r19.yyxx));
          r20.xyzw = log2(r20.xyzw);
          r20.xyzw = lightConstantsCB[r3.y].data[12].zzzz * r20.xyzw;
          r20.xyzw = exp2(r20.xyzw);
          r20.xy = r20.xy + r20.zw;
          r20.xy = log2(r20.xy);
          r20.xy = lightConstantsCB[r3.y].data[12].ww * r20.xy;
          r20.xy = exp2(r20.xy);
          r9.w = lightConstantsCB[r3.y].data[12].x * r20.x;
          r10.w = lightConstantsCB[r3.y].data[12].y * r20.y + -1;
          r9.w = lightConstantsCB[r3.y].data[12].y * r20.y + -r9.w;
          r9.w = saturate(r10.w / r9.w);
          r10.w = r9.w * r9.w;
          r9.w = r9.w * -2 + 3;
          r6.w = r10.w * r9.w;
        }
        r7.w = r8.w * r6.w;
        r6.w = 255 & (int)lightConstantsCB[r3.y].data[14].w;
        if (r6.w != 0) {
          r19.z = 1;
          r8.w = dot(lightConstantsCB[r3.y].data[13].xyz, r19.xyz);
          r20.x = lightConstantsCB[r3.y].data[13].w;
          r20.yz = lightConstantsCB[r3.y].data[14].xy;
          r9.w = dot(r20.xyz, r19.xyz);
          r19.x = frac(r8.w);
          r19.y = frac(r9.w);
          r6.w = (int)r6.w + -1;
          r19.z = (uint)r6.w;
          r13.yzw = gCookieArray.SampleLevel(samplerLinear_s, r19.xyz, 0).xyz;
        } else {
          r13.yzw = float3(1,1,1);
        }
      }
      r19.x = lightConstantsCB[r3.y].data[0].w;
      r19.yz = lightConstantsCB[r3.y].data[1].xy;
      r13.yzw = r19.xyz * r13.yzw;
      r6.w = cmp(0 < r7.w);
      if (r6.w != 0) {
        if (3 == 0) r6.w = 0; else if (3+27 < 32) {         r6.w = (uint)lightConstantsCB[r3.y].data[1].w << (32-(3 + 27)); r6.w = (uint)r6.w >> (32-3);        } else r6.w = (uint)lightConstantsCB[r3.y].data[1].w >> 27;
        if (r2.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, l(136), u2.xxxx
        r8.w = samp0[]..swiz;
          r8.w = (int)r8.w | 4;
          GBufferDiffuseColor[viewID].136 = u2.x;
          GBufferDiffuseColor[viewID].152 = u2.x;
        }
        r8.w = (int)r1.z + 257;
        r6.w = cmp((int)r6.w != 1);
        if (r6.w != 0) {
          r6.w = abs(r4.z) * -0.200000003 + 0.400000006;
          r19.xyz = r12.xyz * r6.www + r11.xyz;
          r20.xyz = lightConstantsCB[r3.y].data[6].yzw;
          r20.w = lightConstantsCB[r3.y].data[7].x;
          r19.w = 1;
          r6.w = dot(r20.xyzw, r19.xyzw);
          r9.w = dot(r18.xyzw, r19.xyzw);
          r10.w = cmp(r9.w >= r6.w);
          if (r10.w != 0) {
            r18.xyz = lightConstantsCB[r3.y].data[4].yzw;
            r18.w = lightConstantsCB[r3.y].data[5].x;
            r18.x = dot(r18.xyzw, r19.xyzw);
            r20.xyz = lightConstantsCB[r3.y].data[5].yzw;
            r20.w = lightConstantsCB[r3.y].data[6].x;
            r18.y = dot(r20.xyzw, r19.xyzw);
            r18.xy = r18.xy / r9.ww;
            r18.xy = saturate(r18.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r19.x = r18.x * lightConstantsCB[r3.y].data[8].y + lightConstantsCB[r3.y].data[8].z;
            r19.y = r18.y * lightConstantsCB[r3.y].data[8].w + lightConstantsCB[r3.y].data[9].x;
            r6.w = r6.w / r9.w;
            r6.w = max(6.10351563e-05, r6.w);
            r9.w = 0x0000ffff & (int)lightConstantsCB[r3.y].data[1].w;
            if (enableDitheredShadow != 0) {
              r18.x = -r13.x;
              r20.z = (uint)r9.w;
              r18.y = r14.x;
              r18.z = r13.x;
              r10.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r21.x = dot(icb[r11.w+0].yx, r18.xy);
                r21.y = dot(icb[r11.w+0].yx, r18.yz);
                r20.xy = r21.xy * lightConstantsCB[r3.y].data[3].yy + r19.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r6.w).x;
                r10.w = r12.w * 0.125 + r10.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r19.z = (uint)r9.w;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r6.w).x;
            }
            r6.w = r10.w * r10.w;
            r6.w = r6.w * r10.w;
          } else {
            r6.w = 1;
          }
        } else {
          r6.w = 1;
        }
        r6.w = r7.w * r6.w;
        r7.w = cmp(0 < r6.w);
        if (r7.w != 0) {
          r7.w = lightConstantsCB[r3.y].data[1].z * r1.w;
          r7.w = r7.w * r5.z;
          if (4 == 0) r9.w = 0; else if (4+16 < 32) {           r9.w = (uint)lightConstantsCB[r3.y].data[1].w << (32-(4 + 16)); r9.w = (uint)r9.w >> (32-4);          } else r9.w = (uint)lightConstantsCB[r3.y].data[1].w >> 16;
          r10.w = cmp(0 < (uint)r9.w);
          r10.w = r3.x ? r10.w : 0;
          if (r10.w != 0) {
            r9.w = (int)r9.w + numLights;
            r9.w = mad((int)r9.w, 15, -15);
            r10.w = abs(r4.z) * -0.200000003 + 0.400000006;
            r18.xyz = r12.xyz * r10.www + r11.xyz;
            r19.xyz = lightConstantsCB[r9.w].data[6].yzw;
            r19.w = lightConstantsCB[r9.w].data[7].x;
            r18.w = 1;
            r10.w = dot(r19.xyzw, r18.xyzw);
            r19.xyz = lightConstantsCB[r9.w].data[7].yzw;
            r19.w = lightConstantsCB[r9.w].data[8].x;
            r11.w = dot(r19.xyzw, r18.xyzw);
            r12.w = cmp(r11.w < r10.w);
            if (r12.w == 0) {
              r19.xyz = lightConstantsCB[r9.w].data[4].yzw;
              r19.w = lightConstantsCB[r9.w].data[5].x;
              r19.x = dot(r19.xyzw, r18.xyzw);
              r20.xyz = lightConstantsCB[r9.w].data[5].yzw;
              r20.w = lightConstantsCB[r9.w].data[6].x;
              r19.y = dot(r20.xyzw, r18.xyzw);
              r18.xy = r19.xy / r11.ww;
              r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r19.x = lightConstantsCB[r9.w].data[9].w + r18.x;
              r19.y = lightConstantsCB[r9.w].data[10].x + r18.y;
              r18.xy = lightConstantsCB[r9.w].data[9].yz * r19.xy;
              r18.zw = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
              r19.xy = float2(1,1) + -r18.zw;
              r19.xy = cmp(r18.xy >= r19.xy);
              r18.zw = cmp(r18.zw >= r18.xy);
              r18.zw = (int2)r18.zw | (int2)r19.xy;
              r15.w = (int)r18.w | (int)r18.z;
              if (r15.w == 0) {
                r18.xy = saturate(r18.xy);
                r19.x = r18.x * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                r19.y = r18.y * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                r16.w = lightConstantsCB[r9.w].data[10].z * r11.w;
                r10.w = lightConstantsCB[r9.w].data[10].y * r11.w + r10.w;
                r10.w = r10.w / r16.w;
              }
            } else {
              r15.w = -1;
            }
            r11.w = (int)r12.w | (int)r15.w;
            if (r11.w == 0) {
              r10.w = max(6.10351563e-05, r10.w);
              r11.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r18.x = -r13.x;
                r20.z = (uint)r11.w;
                r18.y = r14.x;
                r18.z = r13.x;
                r12.w = 0;
                r15.w = 0;
                while (true) {
                  r16.w = cmp((int)r15.w >= 8);
                  if (r16.w != 0) break;
                  r21.x = dot(icb[r15.w+0].yx, r18.xy);
                  r21.y = dot(icb[r15.w+0].yx, r18.yz);
                  r20.xy = r21.xy * lightConstantsCB[r9.w].data[3].yy + r19.xy;
                  r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r10.w).x;
                  r12.w = r16.w * 0.125 + r12.w;
                  r15.w = (int)r15.w + 1;
                }
              } else {
                r19.z = (uint)r11.w;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.w).x;
              }
              r9.w = r12.w * r12.w;
              r9.w = r9.w * r12.w;
            } else {
              r9.w = 1;
            }
            r6.w = r9.w * r6.w;
          } else {
            if (4 == 0) r3.y = 0; else if (4+20 < 32) {             r3.y = (uint)lightConstantsCB[r3.y].data[1].w << (32-(4 + 20)); r3.y = (uint)r3.y >> (32-4);            } else r3.y = (uint)lightConstantsCB[r3.y].data[1].w >> 20;
            r9.w = cmp(0 < (uint)r3.y);
            r3.x = ~(int)r3.x;
            r3.x = r3.x ? r9.w : 0;
            if (r3.x != 0) {
              r3.x = (int)r3.y + numLights;
              r3.x = mad((int)r3.x, 15, -15);
              r3.y = abs(r4.z) * -0.200000003 + 0.400000006;
              r18.xyz = r12.xyz * r3.yyy + r11.xyz;
              r19.xyz = lightConstantsCB[r3.x].data[6].yzw;
              r19.w = lightConstantsCB[r3.x].data[7].x;
              r18.w = 1;
              r3.y = dot(r19.xyzw, r18.xyzw);
              r19.xyz = lightConstantsCB[r3.x].data[7].yzw;
              r19.w = lightConstantsCB[r3.x].data[8].x;
              r9.w = dot(r19.xyzw, r18.xyzw);
              r10.w = cmp(r9.w < r3.y);
              if (r10.w == 0) {
                r19.xyz = lightConstantsCB[r3.x].data[4].yzw;
                r19.w = lightConstantsCB[r3.x].data[5].x;
                r19.x = dot(r19.xyzw, r18.xyzw);
                r20.xyz = lightConstantsCB[r3.x].data[5].yzw;
                r20.w = lightConstantsCB[r3.x].data[6].x;
                r19.y = dot(r20.xyzw, r18.xyzw);
                r18.xy = r19.xy / r9.ww;
                r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r19.x = lightConstantsCB[r3.x].data[9].w + r18.x;
                r19.y = lightConstantsCB[r3.x].data[10].x + r18.y;
                r18.xy = lightConstantsCB[r3.x].data[9].yz * r19.xy;
                r18.zw = lightConstantsCB[r3.x].data[3].yy / lightConstantsCB[r3.x].data[8].yw;
                r19.xy = float2(1,1) + -r18.zw;
                r19.xy = cmp(r18.xy >= r19.xy);
                r18.zw = cmp(r18.zw >= r18.xy);
                r18.zw = (int2)r18.zw | (int2)r19.xy;
                r11.w = (int)r18.w | (int)r18.z;
                if (r11.w == 0) {
                  r18.xy = saturate(r18.xy);
                  r19.x = r18.x * lightConstantsCB[r3.x].data[8].y + lightConstantsCB[r3.x].data[8].z;
                  r19.y = r18.y * lightConstantsCB[r3.x].data[8].w + lightConstantsCB[r3.x].data[9].x;
                  r12.w = lightConstantsCB[r3.x].data[10].z * r9.w;
                  r3.y = lightConstantsCB[r3.x].data[10].y * r9.w + r3.y;
                  r3.y = r3.y / r12.w;
                }
              } else {
                r11.w = -1;
              }
              r9.w = (int)r10.w | (int)r11.w;
              if (r9.w == 0) {
                r3.y = max(6.10351563e-05, r3.y);
                r9.w = 0x0000ffff & (int)lightConstantsCB[r3.x].data[1].w;
                if (enableDitheredShadow != 0) {
                  r18.x = -r13.x;
                  r20.z = (uint)r9.w;
                  r18.y = r14.x;
                  r18.z = r13.x;
                  r10.w = 0;
                  r11.w = 0;
                  while (true) {
                    r12.w = cmp((int)r11.w >= 8);
                    if (r12.w != 0) break;
                    r21.x = dot(icb[r11.w+0].yx, r18.xy);
                    r21.y = dot(icb[r11.w+0].yx, r18.yz);
                    r20.xy = r21.xy * lightConstantsCB[r3.x].data[3].yy + r19.xy;
                    r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r3.y).x;
                    r10.w = r12.w * 0.125 + r10.w;
                    r11.w = (int)r11.w + 1;
                  }
                } else {
                  r19.z = (uint)r9.w;
                  r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r3.y).x;
                }
                r3.x = r10.w * r10.w;
                r3.x = r3.x * r10.w;
              } else {
                r3.x = 1;
              }
              r6.w = r6.w * r3.x;
            }
          }
          r2.x = -r2.x * 0.5 + 1;
          r2.x = -r5.z * r2.x + 1;
          r2.x = r2.x * r2.x;
          r2.x = -r2.x * 0.620000005 + 0.620000005;
          r2.x = r2.x + -r5.z;
          r2.x = r2.z * r2.x + r5.z;
          r2.x = r2.x * r6.w;
          r2.z = cmp(0 < r4.z);
          r18.xyz = r2.xxx * r13.yzw + r16.xyz;
          r3.xyw = r15.xyz * r3.www + r5.xyw;
          r2.x = dot(r3.xyw, r3.xyw);
          r2.x = rsqrt(r2.x);
          r3.xyw = r3.xyw * r2.xxx;
          r2.x = dot(r3.xyw, r5.xyw);
          r3.x = dot(r12.xyz, r3.xyw);
          r1.w = abs(r3.x) * r1.w + -abs(r3.x);
          r1.w = abs(r3.x) * r1.w + 1;
          r0.y = r5.z * r0.y + r2.y;
          r1.w = r1.w * r1.w;
          r0.y = r1.w * r0.y;
          r0.y = rcp(r0.y);
          r0.y = r0.y * r7.w;
          r0.y = r6.w * r0.y;
          r0.y = 0.25 * r0.y;
          r3.xyw = r0.yyy * r13.yzw + r14.yzw;
          r1.w = saturate(1 + -r2.x);
          r2.x = r1.w * r1.w;
          r2.x = r2.x * r2.x;
          r1.w = r2.x * r1.w;
          r0.y = r1.w * r0.y;
          r5.xyz = r0.yyy * r13.yzw + r17.zxy;
          r16.xyz = r2.zzz ? r18.xyz : r16.xyz;
          r17.xyz = r2.zzz ? r5.yzx : r17.xyz;
          r14.yzw = r2.zzz ? r3.xyw : r14.yzw;
          if (r2.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.y, cb2[52].x, l(136), u2.xxxx
          r0.y = samp0[]..swiz;
            r0.y = (int)r0.y | 8;
            GBufferDiffuseColor[viewID].136 = u2.x;
            GBufferDiffuseColor[viewID].156 = u2.x;
          }
          r1.z = (int)r1.z + 0x00010101;
        } else {
          r1.z = r8.w;
        }
      } else {
        r1.z = r3.z;
      }
    } else {
      r1.z = r3.z;
    }
    break;
    default :
    break;
  }
  r3.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.y = (uint)r3.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r2.x;
  r1.w = cmp((int)r0.y == (int)r1.w);
  r2.xy = r1.ww ? r2.yz : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r4.x;
  r1.w = cmp((int)r0.y == (int)r1.w);
  r4.xy = r1.ww ? r4.yz : float2(-1,0);
  r5.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r1.w = cmp((int)r0.y == (int)r1.w);
  r4.zw = r1.ww ? r5.yz : float2(-1,0);
  r5.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r5.x;
  r0.y = cmp((int)r0.y == (int)r1.w);
  r5.xy = r0.yy ? r5.yz : float2(-1,0);
  r7.x = r2.x;
  r7.yz = r4.xz;
  r7.w = r5.x;
  r7.xyzw = r7.xyzw + -r3.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.y = r7.x + r7.y;
  r0.y = r0.y + r7.z;
  r0.y = r0.y + r7.w;
  r1.w = r7.y * r4.y;
  r1.w = r7.x * r2.y + r1.w;
  r1.w = r7.z * r4.w + r1.w;
  r1.w = r7.w * r5.y + r1.w;
  r3.w = r1.w / r0.y;
  r0.y = cmp(0 >= r0.y);
  r3.yz = r0.yy ? float2(0,0) : r3.zw;
  r2.xy = (int2)r1.xy & int2(1,1);
  r0.y = cmp((int)r2.y == (int)r2.x);
  r2.xyz = r0.yyy ? r3.xyz : r3.xzy;
  r0.y = -r2.z * 0.5 + r2.x;
  r3.y = r2.z + r0.y;
  r3.z = -r2.y * 0.5 + r0.y;
  r3.x = r3.z + r2.y;
  r2.xyz = float3(1,1,1) + -r3.xyz;
  r2.xyz = r17.zxy * r2.xyz;
  r2.xyz = r14.yzw * r3.xyz + r2.xyz;
  r2.xyz = r16.xyz * r6.xyz + r2.xyz;
  r0.y = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.y != 0) {
    r0.y = dot(r11.xyz, r11.xyz);
    r1.w = rsqrt(r0.y);
    r3.xyz = r11.xyz * r1.www;
    r0.y = sqrt(r0.y);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r4.xy = r0.yy * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r1.w = cmp(0.00999999978 < abs(r11.z));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * r11.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.zw = r5.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r1.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xzw;
    } else {
      r1.w = r0.y * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r3.w = cmp(0.00999999978 < abs(r11.z));
      r4.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
      r5.x = -1.44269502 * r4.w;
      r5.x = exp2(r5.x);
      r5.x = 1 + -r5.x;
      r4.w = r5.x / r4.w;
      r4.w = r4.w * r1.w;
      r1.w = r3.w ? r4.w : r1.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r3.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.y = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
    r3.y = r3.y * r3.y;
    r3.y = 12.566371 * r3.y;
    r3.x = r3.x / r3.y;
    r0.y = -fogConstants.atmospherehazebasedist + r0.y;
    r0.y = saturate(fogConstants.atmospherehazefadedist * r0.y);
    r0.y = r3.x * r0.y;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.yyy;
    r3.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
  } else {
    r0.y = fogConstants.heightFalloff * r11.z;
    r1.w = fogConstants.heightFalloff * r11.z + fogConstants.K0;
    r3.w = cmp(abs(r0.y) < 9.99999975e-05);
    r4.x = min(64, r1.w);
    r4.x = 1.44269502 * r4.x;
    r4.x = exp2(r4.x);
    r4.y = saturate(fogConstants.K0b);
    r4.z = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r4.z ? r4.x : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.y = r3.w ? 1 : r0.y;
    r0.y = r1.w / r0.y;
    r0.y = r3.w ? r4.y : r0.y;
    r0.y = fogConstants.expMul * r0.y;
    r1.w = dot(r11.xyz, r11.xyz);
    r3.w = sqrt(r1.w);
    r0.y = r0.y * r3.w + fogConstants.expAdd;
    r0.y = exp2(r0.y);
    r0.y = min(1, r0.y);
    r0.y = 1 + -r0.y;
    r1.w = rsqrt(r1.w);
    r4.xyz = r11.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.wwww * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.y = r4.w * r0.y;
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyz = r0.yyy * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.y = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r3.xz = cmp((int2)r3.xz != int2(0,0));
  r3.yw = cmp((int2)r3.yw == int2(2,12));
  r3.xy = r3.yw ? r3.xz : 0;
  r3.xy = r3.xy ? float2(0.200000003,0.200000003) : 0;
  r1.w = permuteHighlight & 16;
  r3.w = cmp((int)r1.w != 0);
  r1.w = cmp((int)r1.w == 0);
  r1.w = r1.w ? r3.w : 0;
  r3.z = r1.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.yyy ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.y = (int)r1.z & 3;
        break;
        case 2 :        if (2 == 0) r0.y = 0; else if (2+8 < 32) {         r0.y = (uint)r1.z << (32-(2 + 8)); r0.y = (uint)r0.y >> (32-2);        } else r0.y = (uint)r1.z >> 8;
        break;
        case 3 :        r0.y = (uint)r1.z >> 16;
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
      r3.xyz = r0.yyy * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyz + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r2.w != 0) {
    r2.xyz = eyeOffset.xyz + r11.xyz;
    r2.w = (int)r1.z & 3;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.y = (int)r0.x & 15;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.y = (int)r1.z & 3;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.y
    InterlockedAdd(dest, value, orig_value);
    if (2 == 0) r1.x = 0; else if (2+8 < 32) {     r1.x = (uint)r1.z << (32-(2 + 8)); r1.x = (uint)r1.x >> (32-2);    } else r1.x = (uint)r1.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (uint)r1.z >> 16;
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