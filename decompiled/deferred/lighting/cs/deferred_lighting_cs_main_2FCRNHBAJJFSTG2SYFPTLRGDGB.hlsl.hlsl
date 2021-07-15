// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:53 2021

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
  r0.x = mad(permuteStride, 13, (int)vThreadGroupID.x);
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
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.w = dot(-r12.xyz, r11.xyz);
  r1.w = r1.w + r1.w;
  r15.xyz = r11.xyz * -r1.www + -r12.xyz;
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
  r5.w = cmp(0 >= r3.w);
  if (r5.w != 0) {
    r6.w = 0;
  }
  if (r5.w == 0) {
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r5.yyy;
    r13.yzw = r5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.yzw;
    r13.yzw = r5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.yzw;
    r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.yzw;
    r5.w = -sunConstants.splitDepthOffset + r13.w;
    r5.w = -r5.w * 6.10351563e-05 + 1;
    r7.w = saturate(r5.w);
    r7.w = cmp(r5.w == r7.w);
    if (r7.w != 0) {
      r7.w = 0;
      r8.w = 0;
      while (true) {
        r9.w = cmp(r7.w >= 3);
        if (r9.w != 0) break;
        r9.w = (uint)r7.w;
        r14.yz = -sunConstants.splitPinTransform[r9.w].xy + r13.yz;
        r10.w = max(abs(r14.y), abs(r14.z));
        r8.w = sunConstants.splitPinTransform[r9.w].z * r10.w;
        r9.w = cmp(r8.w < 1);
        if (r9.w != 0) {
          break;
        }
        r7.w = 1 + r7.w;
        r8.w = 0;
      }
    } else {
      r7.w = 3;
      r8.w = 0;
    }
    r9.w = cmp(r7.w >= 3);
    if (r9.w != 0) {
      r14.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r14.yy);
      r16.y = -r16.z;
      r14.yzw = r13.yzy * r16.xyz + r14.zwz;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.yzw = max(float3(0,0,0), r14.yzw);
      r14.yzw = min(r14.yzw, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r14.wz;
      r16.xy = floor(r16.xy);
      r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r10.w = r10.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r10.w = (uint)r10.w;
      r10.w = (int)r10.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r10.w, l(0), t23.xxxx
    r12.w = samp0[]..swiz;
      r16.x = (int)r12.w & 0x40000000;
      r16.y = (uint)r12.w << 2;
      if (r16.x == 0) {
        r16.x = (int)r12.w & 0x01ffffff;
        r17.x = (int)r10.w + (int)r16.x;
        r10.w = (uint)r12.w >> 25;
        r10.w = (uint)r10.w;
        r14.yzw = r14.yzw * r10.www;
        r14.yzw = frac(r14.yzw);
        r14.yzw = float3(128,128,128) * r14.yzw;
        r14.yzw = (uint3)r14.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xz = (uint2)r14.wz >> int2(6,6);
        r10.w = (int)r17.z & 0xc0000000;
        r12.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r16.z ? r17.z : r12.w;
        r16.z = (uint)r12.w >> 13;
        r12.w = r16.x ? r16.z : r12.w;
        r12.w = (int)r12.w & 8191;
        r18.x = (int)r12.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.xzw = r10.www ? r17.xyz : r18.xyz;
        r18.yz = r10.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r14.wz >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r12.w = (int)r16.w & 0xc0000000;
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
        r16.xzw = r12.www ? r16.xzw : r18.xzw;
        r16.xzw = r10.www ? r17.xyz : r16.xzw;
        r10.w = (int)r16.w & 0xc0000000;
        if (r10.w == 0) {
          r10.w = (int)-r16.z + 6;
          r17.xy = (uint2)r14.wz >> (uint2)r10.ww;
          r10.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r10.w = (uint)r10.w >> (uint)r12.w;
          r10.w = (int)r10.w & 1023;
          r17.x = (int)r10.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.zz + int2(1,2);
          r10.w = (int)-r17.y + 6;
          r18.xy = (uint2)r14.wz >> (uint2)r10.ww;
          r10.w = (int)r17.w & 0xc0000000;
          r12.w = (int)r17.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r18.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.z = (((uint)r18.x << 0) & bitmask.z) | ((uint)r16.z & ~bitmask.z);
          r16.z = (int)r16.z * 10;
          r12.w = (uint)r12.w >> (uint)r16.z;
          r12.w = (int)r12.w & 1023;
          r18.x = (int)r12.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r10.www ? r17.xyw : r18.xyz;
          r12.w = (int)-r18.y + 6;
          r17.yz = (uint2)r14.wz >> (uint2)r12.ww;
          r12.w = (int)r18.z & 0xc0000000;
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
          r17.yz = r12.ww ? r18.xz : r19.xy;
          r16.xw = r10.ww ? r17.xw : r17.yz;
        }
        r10.w = (int)r16.w & 0xc0000000;
        if (r10.w == 0) {
          if (14 == 0) r12.w = 0; else if (14+15 < 32) {           r12.w = (uint)r16.w << (32-(14 + 15)); r12.w = (uint)r12.w >> (32-14);          } else r12.w = (uint)r16.w >> 15;
          r12.w = (uint)r12.w;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 6.10388815e-05 * r12.w;
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
          r14.y = r14.y * 0.00392156886 + r12.w;
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
          r12.w = r14.z * 1.52590219e-05 + r12.w;
          r16.y = r17.y ? r14.y : r12.w;
        } else {
          r12.w = (int)r16.w & 0x80000000;
          r14.y = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r12.w = r12.w ? r14.y : 0;
          r14.y = (uint)r16.w << 2;
          r14.z = (uint)r12.w >> 16;
          r14.z = f16tof32(r14.z);
          r12.w = (int)r12.w & 0x0000ffff;
          r12.w = f16tof32(r12.w);
          r14.y = r13.y * r14.z + r14.y;
          r12.w = r13.z * r12.w + r14.y;
          r16.y = r10.w ? r12.w : r16.y;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.w;
      r10.w = cmp(r16.y < r10.w);
      r6.w = r10.w ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r7.w;
        r14.yz = -sunConstants.splitPinTransform[r9.w].xy + r13.yz;
        r14.yz = sunConstants.splitPinTransform[r9.w].zz * r14.yz;
        r16.xy = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r9.w + r7.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.w).x;
        r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r9.w = r10.w + r9.w;
        r9.w = saturate(-1 + r9.w);
        r10.w = r9.w * r9.w;
        r6.w = r10.w * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r13.x;
        r9.w = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.w = (uint)r8.w;
        r14.yz = -sunConstants.splitPinTransform[r9.w].xy + r13.yz;
        r14.yz = sunConstants.splitPinTransform[r9.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.yz = -sunConstants.splitPinTransform[r7.w].xy + r13.yz;
        r13.yz = sunConstants.splitPinTransform[r7.w].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r14.x;
        r16.z = r13.x;
        r10.w = 0;
        r12.w = 0;
        while (true) {
          r13.w = cmp((uint)r12.w >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r8.w < (uint)r12.w);
          r17.xy = r13.ww ? r13.yz : r14.yz;
          r14.w = r13.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r9.w].w;
          r13.w = r13.w ? r7.w : r9.w;
          r18.x = dot(icb[r12.w+0].yx, r16.xy);
          r18.y = dot(icb[r12.w+0].yx, r16.yz);
          r17.xy = r18.xy * r14.ww + r17.xy;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r5.w).x;
          r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r13.w = r14.w + r13.w;
          r13.w = saturate(-1 + r13.w);
          r10.w = r13.w * 0.125 + r10.w;
          r12.w = (int)r12.w + 1;
        }
        r5.w = r10.w * r10.w;
        r6.w = r5.w * r10.w;
      }
    }
  }
  r5.w = 1 + -r2.y;
  r7.w = 5 * r5.w;
  r8.w = r5.w * 5 + -2.5;
  r8.w = 0.400000006 * r8.w;
  r8.w = max(0, r8.w);
  r8.w = 100 * r8.w;
  r13.yz = -r5.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r9.w = exp2(r13.y);
  r9.w = r9.w * r2.x;
  r9.w = 9.1368103 * r9.w;
  r10.w = r7.w * r5.w;
  r10.w = -r10.w * 2.0159049 + r13.z;
  r10.w = exp2(r10.w);
  r10.w = r10.w * r2.x;
  r10.w = 9.70808983 * r10.w;
  r9.w = max(r10.w, r9.w);
  r9.w = max(1.26815999, r9.w);
  r10.w = numRefProbes + -numOverrideProbes;
  r12.w = (uint)r0.y >> 24;
  if (10 == 0) r0.y = 0; else if (10+12 < 32) {   r0.y = (uint)r0.y << (32-(10 + 12)); r0.y = (uint)r0.y >> (32-10);  } else r0.y = (uint)r0.y >> 12;
  r16.x = 16;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r19.xz = float2(1,1);
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r22.xyzw = float4(0,0,0,0);
  r23.xyzw = float4(0,0,0,0);
  r13.y = 0;
  while (true) {
    r13.z = cmp((int)r13.y == 2);
    if (r13.z != 0) break;
    r13.z = r13.y ? r0.y : r12.w;
    r13.w = cmp((uint)r13.z >= (uint)r10.w);
    r14.y = cmp((uint)r13.z < numRefProbes);
    r13.w = r13.w ? r14.y : 0;
    if (r13.w != 0) {
      r13.z = (int)r13.z * 14;
      if (r2.w != 0) {
        r13.w = (int)r23.w & 3;
        r13.w = mad((int)r13.w, 20, 880);
        r16.yzw = refProbeConstantsCB[r13.z].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r13.w = u2.xyzw;
      }
      r24.w = (int)r23.w + 1;
      r14.yzw = -refProbeConstantsCB[r13.z].data[0].xyz + r5.xyz;
      r13.w = 0x0000ffff & (int)refProbeConstantsCB[r13.z].data[7].z;
      if (6 == 0) r16.y = 0; else if (6+25 < 32) {       r16.y = (uint)refProbeConstantsCB[r13.z].data[7].z << (32-(6 + 25)); r16.y = (uint)r16.y >> (32-6);      } else r16.y = (uint)refProbeConstantsCB[r13.z].data[7].z >> 25;
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
      r16.z = 1 & (int)refProbeConstantsCB[r13.z].data[6].x;
      r16.zw = r16.zz ? r17.xy : r17.zx;
      r17.x = refProbeConstantsCB[r13.z].data[6].x;
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
      r13.w = refProbeConstantsCB[r13.z].data[6].y * r25.y;
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
        r23.z = r25.y * refProbeConstantsCB[r13.z].data[6].y + r23.z;
        r13.w = refProbeConstantsCB[r13.z].data[7].y * r13.w;
        r26.x = refProbeConstantsCB[r13.z].data[7].w;
        r26.yz = refProbeConstantsCB[r13.z].data[8].xy;
        r16.y = dot(r15.xyz, r26.xyz);
        r16.z = dot(r14.yzw, r26.xyz);
        r16.z = -refProbeConstantsCB[r13.z].data[8].z + r16.z;
        r16.w = cmp(r16.z >= 0);
        r16.z = max(abs(r16.z), r8.w);
        r16.z = r16.w ? r16.z : -r16.z;
        r16.y = max(1.00000001e-07, -r16.y);
        r16.y = r16.z / r16.y;
        r16.y = min(131072, abs(r16.y));
        r26.x = refProbeConstantsCB[r13.z].data[8].w;
        r26.yz = refProbeConstantsCB[r13.z].data[9].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r13.z].data[9].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r8.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r13.z].data[9].w;
        r26.yz = refProbeConstantsCB[r13.z].data[10].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r13.z].data[10].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r8.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r13.z].data[10].w;
        r26.yz = refProbeConstantsCB[r13.z].data[11].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r13.z].data[11].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r8.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r13.z].data[11].w;
        r26.yz = refProbeConstantsCB[r13.z].data[12].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r13.z].data[12].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r8.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r13.z].data[12].w;
        r26.yz = refProbeConstantsCB[r13.z].data[13].xy;
        r16.z = dot(r15.xyz, r26.xyz);
        r16.w = dot(r14.yzw, r26.xyz);
        r16.w = -refProbeConstantsCB[r13.z].data[13].z + r16.w;
        r17.x = cmp(r16.w >= 0);
        r16.w = max(abs(r16.w), r8.w);
        r16.w = r17.x ? r16.w : -r16.w;
        r16.z = max(1.00000001e-07, -r16.z);
        r16.z = r16.w / r16.z;
        r16.y = min(r16.y, abs(r16.z));
        r26.x = refProbeConstantsCB[r13.z].data[3].w + r14.y;
        r26.yz = refProbeConstantsCB[r13.z].data[4].xy + r14.zw;
        r25.xzw = r15.xyz * r16.yyy + r26.xyz;
        r16.z = dot(r25.xzw, r25.xzw);
        r16.z = sqrt(r16.z);
        r16.y = r16.y / r16.z;
        r16.y = r16.y + r16.y;
        r16.y = sqrt(r16.y);
        r16.y = r5.w * 5 + r16.y;
        r16.y = -0.844799995 + r16.y;
        r26.x = refProbeConstantsCB[r13.z].data[0].w;
        r26.y = refProbeConstantsCB[r13.z].data[1].z;
        r26.z = refProbeConstantsCB[r13.z].data[2].y;
        r27.x = dot(r25.xzw, r26.xyz);
        r28.xy = refProbeConstantsCB[r13.z].data[1].xw;
        r28.z = refProbeConstantsCB[r13.z].data[2].z;
        r27.y = dot(r25.xzw, r28.xyz);
        r29.x = refProbeConstantsCB[r13.z].data[1].y;
        r29.yz = refProbeConstantsCB[r13.z].data[2].xw;
        r27.z = dot(r25.xzw, r29.xyz);
        if (9 == 0) r16.z = 0; else if (9+16 < 32) {         r16.z = (uint)refProbeConstantsCB[r13.z].data[7].z << (32-(9 + 16)); r16.z = (uint)r16.z >> (32-9);        } else r16.z = (uint)refProbeConstantsCB[r13.z].data[7].z >> 16;
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
        r14.yzw = saturate(r30.xyz * refProbeConstantsCB[r13.z].data[3].xyz + float3(0.5,0.5,0.5));
        r30.xy = refProbeConstantsCB[r13.z].data[4].zw * r14.yz;
        r30.z = refProbeConstantsCB[r13.z].data[5].x * r14.w;
        r14.yzw = refProbeConstantsCB[r13.z].data[5].yzw + r30.xyz;
        r27.x = dot(r11.xyz, r26.xyz);
        r27.y = dot(r11.xyz, r28.xyz);
        r27.z = dot(r11.xyz, r29.xyz);
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
        r13.z = (int)r26.y | (int)r26.x;
        r13.z = (int)r26.z | (int)r13.z;
        r25.xzw = r13.zzz ? float3(1,1,0) : r25.xzw;
        r26.xyz = r25.xzw * r14.yzw;
        r13.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r22.xyz = r14.yzw * r25.xzw + r22.xyz;
        r14.y = r13.z * r9.w;
        r16.yzw = r16.yzw * r13.www;
        r13.w = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r13.z = r9.w * r13.z + r13.w;
        r13.z = r14.y / r13.z;
        r26.x = r22.w;
        r26.yz = r23.xy;
        r14.yzw = r16.yzw * r13.zzz + r26.xyz;
        r22.w = r14.y;
        r23.xy = r14.zw;
      } else {
        r24.xyz = r23.xyz;
        r23.xyzw = r24.xyzw;
      }
    }
    r13.y = (int)r13.y + 1;
  }
  r16.x = 16;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r13.yzw = r22.xyz;
  r24.x = r22.w;
  r24.yz = r23.xy;
  r14.yz = r23.zw;
  r14.w = 0;
  while (true) {
    r17.w = cmp((int)r14.w == 2);
    if (r17.w != 0) break;
    r17.w = r14.w ? r0.y : r12.w;
    r18.w = cmp((uint)r17.w < (uint)r10.w);
    if (r18.w != 0) {
      r17.w = (int)r17.w * 14;
      if (r2.w != 0) {
        r18.w = (int)r14.z & 15;
        r18.w = mad((int)r18.w, 20, 880);
        r16.yzw = refProbeConstantsCB[r17.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r18.w = u2.xyzw;
      }
      r19.y = (int)r14.z + 1;
      r16.yzw = -refProbeConstantsCB[r17.w].data[0].xyz + r5.xyz;
      r18.w = 0x0000ffff & (int)refProbeConstantsCB[r17.w].data[7].z;
      if (6 == 0) r20.w = 0; else if (6+25 < 32) {       r20.w = (uint)refProbeConstantsCB[r17.w].data[7].z << (32-(6 + 25)); r20.w = (uint)r20.w >> (32-6);      } else r20.w = (uint)refProbeConstantsCB[r17.w].data[7].z >> 25;
      r21.w = (int)r18.w * 6;
      r24.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r16.yzw);
      r24.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r24.w);
      r25.x = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r16.yzw);
      r25.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r25.x);
      r24.w = r25.x * r24.w;
      r25.x = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r16.yzw);
      r25.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r25.x);
      r24.w = r25.x * r24.w;
      r25.x = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r16.yzw);
      r25.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r25.x);
      r24.w = r25.x * r24.w;
      r25.x = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r16.yzw);
      r25.x = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r25.x);
      r24.w = r25.x * r24.w;
      r25.x = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r16.yzw);
      r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r25.x);
      r17.x = r24.w * r21.w;
      r21.w = 1 & (int)refProbeConstantsCB[r17.w].data[6].x;
      r25.xy = r21.ww ? r17.xy : r17.zx;
      r17.x = refProbeConstantsCB[r17.w].data[6].x;
      r26.xy = r25.xy;
      r21.w = 1;
      while (true) {
        r24.w = cmp((int)r21.w >= (int)r20.w);
        if (r24.w != 0) break;
        r24.w = (int)r18.w + (int)r21.w;
        r24.w = (int)r24.w * 6;
        r25.z = dot(refProbeAttenuationConstantsCB[r24.w].data[0].xyz, r16.yzw);
        r25.z = saturate(refProbeAttenuationConstantsCB[r24.w].data[0].w + r25.z);
        r25.z = r26.x * r25.z;
        r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[1].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[1].w + r25.w);
        r25.z = r25.z * r25.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[2].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[2].w + r25.w);
        r25.z = r25.z * r25.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[3].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[3].w + r25.w);
        r25.z = r25.z * r25.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[4].xyz, r16.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[4].w + r25.w);
        r25.z = r25.z * r25.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r24.w].data[5].xyz, r16.yzw);
        r24.w = saturate(refProbeAttenuationConstantsCB[r24.w].data[5].w + r25.w);
        r26.x = r25.z * r24.w;
        r25.w = (uint)r17.x >> 2;
        if (1 == 0) r26.z = 0; else if (1+2 < 32) {         r26.z = (uint)r17.x << (32-(1 + 2)); r26.z = (uint)r26.z >> (32-1);        } else r26.z = (uint)r17.x >> 2;
        r26.w = (int)r25.w & 2;
        r27.x = max(r26.y, r26.x);
        r24.w = -r25.z * r24.w + 1;
        r24.w = r26.y * r24.w;
        r19.w = r26.w ? r24.w : r27.x;
        r26.xy = r26.zz ? r26.xy : r19.zw;
        r21.w = (int)r21.w + 1;
        r17.x = r25.w;
      }
      r17.x = saturate(r26.y + -r23.z);
      r18.w = refProbeConstantsCB[r17.w].data[6].y * r17.x;
      r19.w = cmp(0 < r18.w);
      if (r19.w != 0) {
        r19.w = (int)r19.y & 31;
        r20.w = (int)r19.w + -1;
        r20.w = cmp((uint)r20.w < 32);
        r20.w = r20.w ? r2.w : 0;
        if (r20.w != 0) {
          r25.xy = mad((int2)r19.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.w, cb2[52].x, r25.x, u2.xxxx
        r19.w = samp0[]..swiz;
          r19.w = (int)r19.w | 32;
          GBufferDiffuseColor[viewID].r25.x = u2.x;
          GBufferDiffuseColor[viewID].r25.y = u2.x;
        }
        r14.z = (int)r14.z + 257;
        r14.y = r17.x * refProbeConstantsCB[r17.w].data[6].y + r14.y;
        r17.x = refProbeConstantsCB[r17.w].data[7].y * r18.w;
        r25.x = refProbeConstantsCB[r17.w].data[7].w;
        r25.yz = refProbeConstantsCB[r17.w].data[8].xy;
        r18.w = dot(r15.xyz, r25.xyz);
        r19.w = dot(r16.yzw, r25.xyz);
        r19.w = -refProbeConstantsCB[r17.w].data[8].z + r19.w;
        r20.w = cmp(r19.w >= 0);
        r19.w = max(abs(r19.w), r8.w);
        r19.w = r20.w ? r19.w : -r19.w;
        r18.w = max(1.00000001e-07, -r18.w);
        r18.w = r19.w / r18.w;
        r18.w = min(131072, abs(r18.w));
        r25.x = refProbeConstantsCB[r17.w].data[8].w;
        r25.yz = refProbeConstantsCB[r17.w].data[9].xy;
        r19.w = dot(r15.xyz, r25.xyz);
        r20.w = dot(r16.yzw, r25.xyz);
        r20.w = -refProbeConstantsCB[r17.w].data[9].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r8.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r18.w = min(abs(r19.w), r18.w);
        r25.x = refProbeConstantsCB[r17.w].data[9].w;
        r25.yz = refProbeConstantsCB[r17.w].data[10].xy;
        r19.w = dot(r15.xyz, r25.xyz);
        r20.w = dot(r16.yzw, r25.xyz);
        r20.w = -refProbeConstantsCB[r17.w].data[10].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r8.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r18.w = min(abs(r19.w), r18.w);
        r25.x = refProbeConstantsCB[r17.w].data[10].w;
        r25.yz = refProbeConstantsCB[r17.w].data[11].xy;
        r19.w = dot(r15.xyz, r25.xyz);
        r20.w = dot(r16.yzw, r25.xyz);
        r20.w = -refProbeConstantsCB[r17.w].data[11].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r8.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r18.w = min(abs(r19.w), r18.w);
        r25.x = refProbeConstantsCB[r17.w].data[11].w;
        r25.yz = refProbeConstantsCB[r17.w].data[12].xy;
        r19.w = dot(r15.xyz, r25.xyz);
        r20.w = dot(r16.yzw, r25.xyz);
        r20.w = -refProbeConstantsCB[r17.w].data[12].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r8.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r18.w = min(abs(r19.w), r18.w);
        r25.x = refProbeConstantsCB[r17.w].data[12].w;
        r25.yz = refProbeConstantsCB[r17.w].data[13].xy;
        r19.w = dot(r15.xyz, r25.xyz);
        r20.w = dot(r16.yzw, r25.xyz);
        r20.w = -refProbeConstantsCB[r17.w].data[13].z + r20.w;
        r21.w = cmp(r20.w >= 0);
        r20.w = max(abs(r20.w), r8.w);
        r20.w = r21.w ? r20.w : -r20.w;
        r19.w = max(1.00000001e-07, -r19.w);
        r19.w = r20.w / r19.w;
        r18.w = min(abs(r19.w), r18.w);
        r25.x = refProbeConstantsCB[r17.w].data[3].w + r16.y;
        r25.yz = refProbeConstantsCB[r17.w].data[4].xy + r16.zw;
        r25.xyz = r15.xyz * r18.www + r25.xyz;
        r19.w = dot(r25.xyz, r25.xyz);
        r19.w = sqrt(r19.w);
        r18.w = r18.w / r19.w;
        r18.w = r18.w + r18.w;
        r18.w = sqrt(r18.w);
        r18.w = r5.w * 5 + r18.w;
        r18.w = -0.844799995 + r18.w;
        r27.x = refProbeConstantsCB[r17.w].data[0].w;
        r27.y = refProbeConstantsCB[r17.w].data[1].z;
        r27.z = refProbeConstantsCB[r17.w].data[2].y;
        r28.x = dot(r25.xyz, r27.xyz);
        r29.xy = refProbeConstantsCB[r17.w].data[1].xw;
        r29.z = refProbeConstantsCB[r17.w].data[2].z;
        r28.y = dot(r25.xyz, r29.xyz);
        r30.x = refProbeConstantsCB[r17.w].data[1].y;
        r30.yz = refProbeConstantsCB[r17.w].data[2].xw;
        r28.z = dot(r25.xyz, r30.xyz);
        if (9 == 0) r19.w = 0; else if (9+16 < 32) {         r19.w = (uint)refProbeConstantsCB[r17.w].data[7].z << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);        } else r19.w = (uint)refProbeConstantsCB[r17.w].data[7].z >> 16;
        r28.w = (uint)r19.w;
        r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r18.w).xyz;
        r26.xzw = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
        r26.xzw = cmp((int3)r26.xzw == int3(2139095040,2139095040,2139095040));
        r18.w = (int)r26.z | (int)r26.x;
        r18.w = (int)r26.w | (int)r18.w;
        r25.xyz = r18.www ? float3(1,1,0) : r25.xyz;
        r31.x = dot(r16.yzw, r27.xyz);
        r31.y = dot(r16.yzw, r29.xyz);
        r31.z = dot(r16.yzw, r30.xyz);
        r16.yzw = saturate(r31.xyz * refProbeConstantsCB[r17.w].data[3].xyz + float3(0.5,0.5,0.5));
        r31.xy = refProbeConstantsCB[r17.w].data[4].zw * r16.yz;
        r31.z = refProbeConstantsCB[r17.w].data[5].x * r16.w;
        r16.yzw = refProbeConstantsCB[r17.w].data[5].yzw + r31.xyz;
        r28.x = dot(r11.xyz, r27.xyz);
        r28.y = dot(r11.xyz, r29.xyz);
        r28.z = dot(r11.xyz, r30.xyz);
        r26.xzw = cmp(float3(0,0,0) < r28.xyz);
        r18.z = r26.x ? 0 : 0.5;
        r27.xyz = r18.xyz + r16.yzw;
        r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
        r29.xyz = r28.xyz * r28.xyz;
        r29.xyz = r29.xyz * r17.xxx;
        r20.z = r26.z ? 0 : 0.5;
        r30.xyz = r20.xyz + r16.yzw;
        r30.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
        r30.xyz = r30.xyz * r29.yyy;
        r27.xyz = r27.xyz * r29.xxx + r30.xyz;
        r21.z = r26.w ? 0 : 0.5;
        r16.yzw = r21.xyz + r16.yzw;
        r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
        r16.yzw = r16.yzw * r29.zzz + r27.xyz;
        r26.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
        r27.xyz = (int3)r26.xzw & int3(-2147483648,-2147483648,-2147483648);
        r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
        r17.w = (int)r27.y | (int)r27.x;
        r17.w = (int)r27.z | (int)r17.w;
        r26.xzw = r17.www ? float3(1,1,0) : r26.xzw;
        r27.xyz = r26.xzw * r16.yzw;
        r17.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r13.yzw = r16.yzw * r26.xzw + r13.yzw;
        r16.y = r17.w * r9.w;
        r25.xyz = r25.xyz * r17.xxx;
        r16.z = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r16.z = r9.w * r17.w + r16.z;
        r16.y = r16.y / r16.z;
        r24.xyz = r25.xyz * r16.yyy + r24.xyz;
      } else {
        r19.x = r14.y;
        r14.yz = r19.xy;
      }
    }
    r14.w = (int)r14.w + 1;
  }
  r0.y = cmp(r23.z >= 1);
  bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r5.w = (((uint)r14.z << 0) & bitmask.w) | ((uint)r23.w & ~bitmask.w);
  r0.y = r0.y ? r5.w : r14.z;
  r5.w = max(1, r14.y);
  r5.w = rcp(r5.w);
  r14.y = saturate(r14.y);
  r16.xyz = r13.yzw * r5.www;
  r17.xyz = r24.xyz * r5.www;
  r8.w = cmp(r14.y < 0.99000001);
  if (r8.w != 0) {
    r0.y = (int)r0.y + 256;
    r8.w = 1 + -r14.y;
    r9.w = sunConstants.globalProbeExposure * r8.w;
    r14.yzw = -globalProbeConstants.data[0].xyz + r5.xyz;
    r18.x = globalProbeConstants.data[0].w * r14.y;
    r18.yz = globalProbeConstants.data[1].xy * r14.zw;
    r14.yzw = saturate(float3(0.5,0.5,0.5) + r18.xyz);
    r18.xy = globalProbeConstants.data[1].zw * r14.yz;
    r18.z = globalProbeConstants.data[2].x * r14.w;
    r14.yzw = globalProbeConstants.data[2].yzw + r18.xyz;
    r18.xyz = cmp(float3(0,0,0) < r11.xyz);
    r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r18.w = 0;
    r19.xyz = r18.wwx + r14.yzw;
    r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r20.xyz = r11.xyz * r11.xyz;
    r20.xyz = r20.xyz * r9.www;
    r21.xyz = r18.wwy + r14.yzw;
    r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r21.xyz = r21.xyz * r20.yyy;
    r19.xyz = r19.xyz * r20.xxx + r21.xyz;
    r14.yzw = r18.wwz + r14.yzw;
    r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
    r14.yzw = r14.yzw * r20.zzz + r19.xyz;
    r11.w = 0;
    r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r14.yzw = r18.xyz * r14.yzw;
    r9.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r16.xyz = r13.yzw * r5.www + r14.yzw;
    r15.w = 0;
    r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r7.w).xyz;
    r5.w = sunConstants.globalProbeExposure * r8.w + -r9.w;
    r5.w = r2.y * r5.w + r9.w;
    r17.xyz = r13.yzw * r5.www + r17.xyz;
  }
  r5.w = r2.x + r4.z;
  r5.w = log2(abs(r5.w));
  r5.w = r5.w * r2.z;
  r5.w = exp2(r5.w);
  r5.w = r5.w + r4.z;
  r5.w = saturate(-1 + r5.w);
  r13.yzw = r16.xyz * r4.zzz;
  r14.yzw = r0.www ? r13.yzw : 0;
  r15.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r15.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r15.xy, 0).xy;
  r17.xyz = r17.xyz * r5.www;
  r15.xzw = r17.xyz * r15.xxx;
  r17.xyz = r17.xyz * r15.yyy;
  if (r2.w != 0) {
    r18.x = 3;
    r18.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r2.y = cmp(0 < r3.w);
  if (r2.y != 0) {
    if (r2.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r2.y, cb2[52].x, l(112), u2.xxxx
    r2.y = samp0[]..swiz;
      r2.y = (int)r2.y | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r2.y = cmp(0 < r6.w);
    if (r2.y != 0) {
      r2.y = sqrt(r2.z);
      r2.y = r2.y * 0.5 + 0.5;
      r2.y = r2.y * r2.y;
      r5.w = 0.5 * r2.y;
      r2.y = -r2.y * 0.5 + 1;
      r7.w = r2.x * r2.y + r5.w;
      r2.y = r7.w * r2.y;
      r5.w = r7.w * r5.w;
      r7.w = sunConstants.specScale * r1.w;
      r7.w = r7.w * r3.z;
      if (sunConstants.sunCookieIndex != 0) {
        r18.xyz = eyeOffset.xyz + r5.xyz;
        r18.w = 1;
        r8.w = dot(sunConstants.sunCookieTransform[0].xyzw, r18.xyzw);
        r9.w = dot(sunConstants.sunCookieTransform[1].xyzw, r18.xyzw);
        r18.x = frac(r8.w);
        r18.y = frac(r9.w);
        r8.w = -1 + (int14)sunConstants.sunCookieIndex;
        r18.z = (uint)r8.w;
        r18.xyz = gCookieArray.SampleLevel(samplerLinear_s, r18.xyz, 0).xyz;
        r18.xyz = float3(-1,-1,-1) + r18.xyz;
        r18.xyz = sunConstants.sunCookieIntensity * r18.xyz + float3(1,1,1);
        r18.xyz = sunConstants.color.xyz * r18.xyz;
      } else {
        r18.xyz = sunConstants.color.xyz;
      }
      r8.w = viewmodelSunShadowRaw >> 16;
      r9.w = cmp(0 < (uint)r8.w);
      r9.w = r9.w ? r3.x : 0;
      if (r9.w != 0) {
        r8.w = (int)r8.w + numLights;
        r8.w = mad((int)r8.w, 15, -15);
        r9.w = abs(r3.y) * -0.200000003 + 0.400000006;
        r10.w = cmp(r3.y < 0);
        r10.w = r0.w ? r10.w : 0;
        r9.w = r10.w ? -r9.w : r9.w;
        r19.xyz = r11.xyz * r9.www + r5.xyz;
        r20.xyz = lightConstantsCB[r8.w].data[4].yzw;
        r20.w = lightConstantsCB[r8.w].data[5].x;
        r19.w = 1;
        r20.x = dot(r20.xyzw, r19.xyzw);
        r21.xyz = lightConstantsCB[r8.w].data[5].yzw;
        r21.w = lightConstantsCB[r8.w].data[6].x;
        r20.y = dot(r21.xyzw, r19.xyzw);
        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r21.x = lightConstantsCB[r8.w].data[9].w + r20.x;
        r21.y = lightConstantsCB[r8.w].data[10].x + r20.y;
        r20.xy = lightConstantsCB[r8.w].data[9].yz * r21.xy;
        r20.zw = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
        r21.xy = float2(1,1) + -r20.zw;
        r21.xy = cmp(r20.xy >= r21.xy);
        r20.zw = cmp(r20.zw >= r20.xy);
        r20.zw = (int2)r20.zw | (int2)r21.xy;
        r9.w = (int)r20.w | (int)r20.z;
        if (r9.w == 0) {
          r21.xyz = lightConstantsCB[r8.w].data[6].yzw;
          r21.w = lightConstantsCB[r8.w].data[7].x;
          r9.w = dot(r21.xyzw, r19.xyzw);
          r20.xy = saturate(r20.xy);
          r19.x = r20.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
          r19.y = r20.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
          r9.w = lightConstantsCB[r8.w].data[10].y + r9.w;
          r9.w = r9.w / lightConstantsCB[r8.w].data[10].z;
          r9.w = max(6.10351563e-05, r9.w);
          r10.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r20.x = -r13.x;
            r21.z = (uint)r10.w;
            r20.y = r14.x;
            r20.z = r13.x;
            r11.w = 0;
            r12.w = 0;
            while (true) {
              r15.y = cmp((int)r12.w >= 8);
              if (r15.y != 0) break;
              r22.x = dot(icb[r12.w+0].yx, r20.xy);
              r22.y = dot(icb[r12.w+0].yx, r20.yz);
              r21.xy = r22.xy * lightConstantsCB[r8.w].data[3].yy + r19.xy;
              r15.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r9.w).x;
              r11.w = r15.y * 0.125 + r11.w;
              r12.w = (int)r12.w + 1;
            }
          } else {
            r19.z = (uint)r10.w;
            r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r9.w).x;
          }
          r8.w = r11.w * r11.w;
          r8.w = r8.w * r11.w;
        } else {
          r8.w = 1;
        }
        r6.w = r8.w * r6.w;
      } else {
        r8.w = viewmodelSunShadowRaw & 0x0000ffff;
        r9.w = cmp(0 < (uint)r8.w);
        r3.x = ~(int)r3.x;
        r3.x = r9.w ? r3.x : 0;
        if (r3.x != 0) {
          r3.x = (int)r8.w + numLights;
          r3.x = mad((int)r3.x, 15, -15);
          r8.w = abs(r3.y) * -0.200000003 + 0.400000006;
          r9.w = cmp(r3.y < 0);
          r9.w = r0.w ? r9.w : 0;
          r8.w = r9.w ? -r8.w : r8.w;
          r19.xyz = r11.xyz * r8.www + r5.xyz;
          r20.xyz = lightConstantsCB[r3.x].data[4].yzw;
          r20.w = lightConstantsCB[r3.x].data[5].x;
          r19.w = 1;
          r20.x = dot(r20.xyzw, r19.xyzw);
          r21.xyz = lightConstantsCB[r3.x].data[5].yzw;
          r21.w = lightConstantsCB[r3.x].data[6].x;
          r20.y = dot(r21.xyzw, r19.xyzw);
          r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r21.x = lightConstantsCB[r3.x].data[9].w + r20.x;
          r21.y = lightConstantsCB[r3.x].data[10].x + r20.y;
          r20.xy = lightConstantsCB[r3.x].data[9].yz * r21.xy;
          r20.zw = lightConstantsCB[r3.x].data[3].yy / lightConstantsCB[r3.x].data[8].yw;
          r21.xy = float2(1,1) + -r20.zw;
          r21.xy = cmp(r20.xy >= r21.xy);
          r20.zw = cmp(r20.zw >= r20.xy);
          r20.zw = (int2)r20.zw | (int2)r21.xy;
          r8.w = (int)r20.w | (int)r20.z;
          if (r8.w == 0) {
            r21.xyz = lightConstantsCB[r3.x].data[6].yzw;
            r21.w = lightConstantsCB[r3.x].data[7].x;
            r8.w = dot(r21.xyzw, r19.xyzw);
            r20.xy = saturate(r20.xy);
            r19.x = r20.x * lightConstantsCB[r3.x].data[8].y + lightConstantsCB[r3.x].data[8].z;
            r19.y = r20.y * lightConstantsCB[r3.x].data[8].w + lightConstantsCB[r3.x].data[9].x;
            r8.w = lightConstantsCB[r3.x].data[10].y + r8.w;
            r8.w = r8.w / lightConstantsCB[r3.x].data[10].z;
            r8.w = max(6.10351563e-05, r8.w);
            r9.w = 0x0000ffff & (int)lightConstantsCB[r3.x].data[1].w;
            if (enableDitheredShadow != 0) {
              r20.x = -r13.x;
              r21.z = (uint)r9.w;
              r20.y = r14.x;
              r20.z = r13.x;
              r10.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r22.x = dot(icb[r11.w+0].yx, r20.xy);
                r22.y = dot(icb[r11.w+0].yx, r20.yz);
                r21.xy = r22.xy * lightConstantsCB[r3.x].data[3].yy + r19.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
                r10.w = r12.w * 0.125 + r10.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r19.z = (uint)r9.w;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r8.w).x;
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
      r2.x = -r3.w * r2.x + 1;
      r2.x = r2.x * r2.x;
      r2.x = -r2.x * 0.620000005 + 0.620000005;
      r2.x = r2.x + -r3.w;
      r2.x = r2.z * r2.x + r3.w;
      r2.x = r2.x * r6.w;
      r19.xyz = r2.xxx * r18.xyz;
      r2.z = cmp(0 < r3.y);
      r3.xyw = r16.xyz * r4.zzz + r19.xyz;
      r16.xyz = -r5.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r1.z = dot(r16.xyz, r16.xyz);
      r1.z = rsqrt(r1.z);
      r16.xyz = r16.xyz * r1.zzz;
      r1.z = dot(r16.xyz, r12.xyz);
      r4.z = dot(r11.xyz, r16.xyz);
      r1.w = abs(r4.z) * r1.w + -abs(r4.z);
      r1.w = abs(r4.z) * r1.w + 1;
      r2.y = r3.z * r2.y + r5.w;
      r1.w = r1.w * r1.w;
      r1.w = r1.w * r2.y;
      r1.w = rcp(r1.w);
      r1.w = r1.w * r7.w;
      r1.w = r6.w * r1.w;
      r1.w = 0.25 * r1.w;
      r11.xyz = r1.www * r18.xyz + r17.xyz;
      r1.z = saturate(1 + -r1.z);
      r2.y = r1.z * r1.z;
      r2.y = r2.y * r2.y;
      r1.z = r2.y * r1.z;
      r1.z = r1.w * r1.z;
      r12.xyz = r1.zzz * r18.xyz + r15.xzw;
      r16.xyz = r2.xxx * r18.xyz + r14.yzw;
      r16.xyz = r0.www ? r16.xyz : 0;
      r13.yzw = r2.zzz ? r3.xyw : r13.yzw;
      r14.yzw = r2.zzz ? r14.yzw : r16.xyz;
      r15.xzw = r2.zzz ? r12.xyz : r15.xzw;
      r17.xyz = r2.zzz ? r11.xyz : r17.xyz;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r1.z, cb2[52].x, l(112), u2.xxxx
      r1.z = samp0[]..swiz;
        r1.z = (int)r1.z | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r1.z = 0x00010101;
    } else {
      r1.z = 257;
    }
  } else {
    r1.z = 1;
  }
  r3.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.w = (uint)r3.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r1.w == (int)r2.x);
  r2.xy = r2.xx ? r2.yz : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r4.x;
  r2.z = cmp((int)r1.w == (int)r2.z);
  r4.xy = r2.zz ? r4.yz : float2(-1,0);
  r7.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r7.x;
  r2.z = cmp((int)r1.w == (int)r2.z);
  r4.zw = r2.zz ? r7.yz : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r7.x;
  r1.w = cmp((int)r1.w == (int)r2.z);
  r7.xy = r1.ww ? r7.yz : float2(-1,0);
  r8.x = r2.x;
  r8.yz = r4.xz;
  r8.w = r7.x;
  r8.xyzw = r8.xyzw + -r3.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.w = r8.x + r8.y;
  r1.w = r1.w + r8.z;
  r1.w = r1.w + r8.w;
  r2.x = r8.y * r4.y;
  r2.x = r8.x * r2.y + r2.x;
  r2.x = r8.z * r4.w + r2.x;
  r2.x = r8.w * r7.y + r2.x;
  r3.w = r2.x / r1.w;
  r1.w = cmp(0 >= r1.w);
  r3.yz = r1.ww ? float2(0,0) : r3.zw;
  r2.xy = (int2)r1.xy & int2(1,1);
  r1.w = cmp((int)r2.y == (int)r2.x);
  r2.xyz = r1.www ? r3.xyz : r3.xzy;
  r1.w = -r2.z * 0.5 + r2.x;
  r3.y = r2.z + r1.w;
  r3.z = -r2.y * 0.5 + r1.w;
  r3.x = r3.z + r2.y;
  r2.xyz = r13.yzw * r6.xyz;
  r2.xyz = r14.yzw * r3.xyz + r2.xyz;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r15.xzw;
  r4.xyz = r17.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r4.xyz = r15.xzw * r4.xyz;
  r3.xyz = r17.xyz * r3.xyz + r4.xyz;
  r3.xyz = r13.yzw * r6.xyz + r3.xyz;
  r2.xyz = r0.www ? r2.xyz : r3.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r5.xyz, r5.xyz);
    r1.w = rsqrt(r0.w);
    r3.xyz = r5.xyz * r1.www;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r4.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r1.w = cmp(0.00999999978 < abs(r5.z));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r6.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r6.xy = exp2(r6.xy);
      r6.xy = float2(1,1) + -r6.xy;
      r4.zw = r6.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r1.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r6.xyz + r4.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r3.w = cmp(0.00999999978 < abs(r5.z));
      r4.w = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r5.w = -1.44269502 * r4.w;
      r5.w = exp2(r5.w);
      r5.w = 1 + -r5.w;
      r4.w = r5.w / r4.w;
      r4.w = r4.w * r1.w;
      r1.w = r3.w ? r4.w : r1.w;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r4.xyz = exp2(r6.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r3.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.y = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
    r3.y = r3.y * r3.y;
    r3.y = 12.566371 * r3.y;
    r3.x = r3.x / r3.y;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r3.x * r0.w;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r3.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r6.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * r5.z;
    r1.w = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r3.w = cmp(abs(r0.w) < 9.99999975e-05);
    r4.x = min(64, r1.w);
    r4.x = 1.44269502 * r4.x;
    r4.x = exp2(r4.x);
    r4.y = saturate(fogConstants.K0b);
    r4.z = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r4.z ? r4.x : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r3.w ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r3.w ? r4.y : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(r5.xyz, r5.xyz);
    r3.w = sqrt(r1.w);
    r0.w = r0.w * r3.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r4.xyz = r5.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.wwww * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r4.w * r0.w;
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyz = r0.www * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.w = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r3.xz = cmp((int2)r3.xz != int2(0,0));
  r3.yw = cmp((int2)r3.yw == int2(1,12));
  r3.xy = r3.yw ? r3.xz : 0;
  r3.xy = r3.xy ? float2(0.200000003,0.200000003) : 0;
  r1.w = permuteHighlight & 16;
  r3.w = cmp((int)r1.w != 0);
  r1.w = cmp((int)r1.w == 0);
  r1.w = r1.w ? r3.w : 0;
  r3.z = r1.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.www ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.w = 1;
        break;
        case 2 :        if (1 == 0) r0.w = 0; else if (1+8 < 32) {         r0.w = (uint)r1.z << (32-(1 + 8)); r0.w = (uint)r0.w >> (32-1);        } else r0.w = (uint)r1.z >> 8;
        break;
        case 3 :        r0.w = (uint)r1.z >> 16;
        break;
        case 4 :        r0.w = (int)r0.y & 15;
        break;
        case 5 :        r0.w = (uint)r0.y >> 8;
        break;
        default :
        r0.w = 0;
        break;
      }
      r0.w = (uint)r0.w;
      r0.w = drawNumLighstScale * r0.w;
      r3.xyz = r0.www * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyz + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r2.w != 0) {
    r2.xyz = eyeOffset.xyz + r5.xyz;
    r2.w = 1;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.w = (int)r0.y & 15;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), l(1)
    InterlockedAdd(dest, value, orig_value);
    if (1 == 0) r0.w = 0; else if (1+8 < 32) {     r0.w = (uint)r1.z << (32-(1 + 8)); r0.w = (uint)r0.w >> (32-1);    } else r0.w = (uint)r1.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r0.w
    InterlockedAdd(dest, value, orig_value);
    r1.x = (uint)r1.z >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (int)r0.y & 15;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.y
    InterlockedAdd(dest, value, orig_value);
    r0.y = (uint)r0.y >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r0.y
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), l(1)
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