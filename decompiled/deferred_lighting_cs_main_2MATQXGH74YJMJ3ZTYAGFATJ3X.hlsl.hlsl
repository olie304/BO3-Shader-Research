// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:54 2021

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
  r0.x = permuteStride << 2;
  r0.x = (int)r0.x + (int)vThreadGroupID.x;
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
  r3.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r4.xy = (uint2)r1.xy;
  r4.zw = float2(0.5,0.5) + r4.xy;
  r5.xy = renderTargetSize.zw * r4.zw;
  r0.w = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r5.xy, 0).x;
  r0.w = r3.z * r0.w;
  if (showAO != 0) {
    r3.z = 0.75 * r0.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r3.zzzz
    return;
  } else {
    r3.z = enableAO ? r0.w : 1;
  }
  r0.w = cmp(r2.z >= 0.5);
  r5.x = GBufferDepth.Load(r1.xyw).x;
  r5.yzw = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r6.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r10.x = cmp(r5.x >= 0.984375);
  r1.z = 1.01587307 * r5.x;
  r1.w = r5.x * 64 + -63;
  r1.z = r10.x ? r1.w : r1.z;
  r1.z = max(9.99999994e-09, r1.z);
  r10.y = rcp(r1.z);
  r1.zw = r0.zz ? r10.xy : 0;
  r4.zw = -subpixelOffset.xy + r4.zw;
  r4.zw = renderTargetSize.zw * r4.zw;
  r4.zw = r4.zw * float2(2,-2) + float2(-1,1);
  r10.x = inverseProjectionMatrix._m00 * r4.z;
  r10.y = inverseProjectionMatrix._m11 * r4.w;
  r10.z = 1;
  r10.xyz = r10.xyz * r1.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r10.yyy;
  r10.xyw = r10.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r10.xyz = r10.zzz * inverseViewMatrix._m20_m21_m22 + r10.xyw;
  r0.z = r2.w * 3 + 0.5;
  r0.z = (uint)r0.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r1.w = dot(r2.xy, r2.xy);
  r11.zw = float2(2,1) + -r1.ww;
  r1.w = sqrt(r11.z);
  r11.xy = r2.xy * r1.ww;
  r12.xyzw = (int4)r0.zzzz & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.z = (int)r12.w ^ (int)r12.z;
  r12.z = r0.z ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r2.xyw = r11.yyy * r2.xyw;
  r2.xyw = r13.xyz * r11.xxx + r2.xyw;
  r11.xyz = r12.xyz * r11.zzz + r2.xyw;
  r0.z = r0.w ? -0.5 : -0.00146627566;
  r0.z = r2.z + r0.z;
  r2.y = saturate(2.00982332 * r0.z);
  r0.z = dot(-r10.xyz, -r10.xyz);
  r0.z = rsqrt(r0.z);
  r12.xyz = -r10.xyz * r0.zzz;
  r1.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r4.x, r13.x);
  r2.zw = (uint2)r1.yx;
  r1.w = dot(r2.zw, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r5.x, r14.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.w = dot(-r12.xyz, r11.xyz);
  r1.w = r1.w + r1.w;
  r15.xyz = r11.xyz * -r1.www + -r12.xyz;
  r1.w = 17 * r2.y;
  r1.w = exp2(r1.w);
  r1.w = 2 + r1.w;
  r1.w = 2 / r1.w;
  r2.z = sqrt(r1.w);
  r4.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r4.zw = (uint2)r4.zw;
  r4.zw = cmp((int2)r1.xy == (int2)r4.zw);
  r2.w = r4.w ? r4.z : 0;
  r4.z = dot(r11.xyz, sunConstants.wldDir.xyz);
  r4.w = saturate(r4.z);
  r6.w = r0.w ? abs(r4.z) : r4.w;
  r7.w = cmp(0 >= r6.w);
  if (r7.w != 0) {
    r8.w = 0;
  }
  if (r7.w == 0) {
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r10.yyy;
    r14.yzw = r10.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r14.yzw;
    r14.yzw = r10.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r14.yzw;
    r14.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.yzw;
    r7.w = -sunConstants.splitDepthOffset + r14.w;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r9.w = saturate(r7.w);
    r9.w = cmp(r7.w == r9.w);
    if (r9.w != 0) {
      r9.w = 0;
      r12.w = 0;
      while (true) {
        r13.w = cmp(r9.w >= 3);
        if (r13.w != 0) break;
        r13.w = (uint)r9.w;
        r16.xy = -sunConstants.splitPinTransform[r13.w].xy + r14.yz;
        r16.x = max(abs(r16.x), abs(r16.y));
        r12.w = sunConstants.splitPinTransform[r13.w].z * r16.x;
        r13.w = cmp(r12.w < 1);
        if (r13.w != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r12.w = 0;
      }
    } else {
      r9.w = 3;
      r12.w = 0;
    }
    r13.w = cmp(r9.w >= 3);
    if (r13.w != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r14.yzy * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r17.xy = floor(r17.xy);
      r16.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r16.w = r16.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r16.w = (uint)r16.w;
      r16.w = (int)r16.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r16.w, l(0), t23.xxxx
    r17.x = samp0[]..swiz;
      r17.y = (int)r17.x & 0x40000000;
      r17.z = (uint)r17.x << 2;
      if (r17.y == 0) {
        r17.y = (int)r17.x & 0x01ffffff;
        r18.x = (int)r16.w + (int)r17.y;
        r16.w = (uint)r17.x >> 25;
        r16.w = (uint)r16.w;
        r16.xyz = r16.xyz * r16.www;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.xy = (uint2)r16.zy >> int2(6,6);
        r16.w = (int)r18.z & 0xc0000000;
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
        r17.xyw = r16.www ? r18.xyz : r19.xyz;
        r19.yz = r16.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
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
        r17.xyw = r16.www ? r18.xyz : r17.xyw;
        r16.w = (int)r17.w & 0xc0000000;
        if (r16.w == 0) {
          r16.w = (int)-r17.y + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r16.ww;
          r16.w = (int)r17.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.y = (((uint)r18.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.x = (((uint)r18.x << 0) & bitmask.x) | ((uint)r18.y & ~bitmask.x);
          r18.x = (int)r18.x * 10;
          r16.w = (uint)r16.w >> (uint)r18.x;
          r16.w = (int)r16.w & 1023;
          r18.x = (int)r16.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.yy + int2(1,2);
          r16.w = (int)-r18.y + 6;
          r19.xy = (uint2)r16.zy >> (uint2)r16.ww;
          r16.w = (int)r18.w & 0xc0000000;
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
          r19.xyz = r16.www ? r18.xyw : r19.xyz;
          r17.y = (int)-r19.y + 6;
          r18.yz = (uint2)r16.zy >> (uint2)r17.yy;
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
          r17.xw = r16.ww ? r18.xw : r18.yz;
        }
        r16.w = (int)r17.w & 0xc0000000;
        if (r16.w == 0) {
          if (14 == 0) r17.y = 0; else if (14+15 < 32) {           r17.y = (uint)r17.w << (32-(14 + 15)); r17.y = (uint)r17.y >> (32-14);          } else r17.y = (uint)r17.w >> 15;
          r17.y = (uint)r17.y;
          r17.y = sunConstants.sstLightingConstants.constants.spanInInches * r17.y;
          r17.y = 6.10388815e-05 * r17.y;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r18.x = (uint)r18.x;
          r18.x = sunConstants.sstLightingConstants.constants.spanInInches * r18.x;
          r18.x = 3.05185094e-05 * r18.x;
          r18.z = (int)r16.y & 3;
          r18.z = (int)r17.x + (int)r18.z;
          r18.z = (int)r18.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.z, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r16.x = (uint)r18.z >> (uint)r19.x;
          r16.x = (int)r16.x & 255;
          r16.x = (uint)r16.x;
          r16.x = r16.x * r18.x;
          r16.x = r16.x * 0.00392156886 + r17.y;
          r16.y = (int)r19.y + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.z >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r19.z;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r18.x;
          r16.y = r16.y * 1.52590219e-05 + r17.y;
          r17.z = r18.y ? r16.x : r16.y;
        } else {
          r16.x = (int)r17.w & 0x80000000;
          r16.y = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.x = r16.x ? r16.y : 0;
          r16.y = (uint)r17.w << 2;
          r16.z = (uint)r16.x >> 16;
          r16.x = (int)r16.x & 0x0000ffff;
          r16.xz = f16tof32(r16.xz);
          r16.y = r14.y * r16.z + r16.y;
          r16.x = r14.z * r16.x + r16.y;
          r17.z = r16.w ? r16.x : r17.z;
        }
      }
      r14.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r14.w;
      r14.w = cmp(r17.z < r14.w);
      r8.w = r14.w ? 0 : 1;
    }
    if (r13.w == 0) {
      if (enableDitheredShadow == 0) {
        r13.w = (uint)r9.w;
        r16.xy = -sunConstants.splitPinTransform[r13.w].xy + r14.yz;
        r16.xy = sunConstants.splitPinTransform[r13.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r13.w + r9.w;
        r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
        r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r13.w = r14.w + r13.w;
        r13.w = saturate(-1 + r13.w);
        r14.w = r13.w * r13.w;
        r8.w = r14.w * r13.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r4.x;
        r13.w = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r12.w = 1 + -r12.w;
        r12.w = 28 * r12.w;
        r12.w = (uint)r12.w;
        r17.xy = -sunConstants.splitPinTransform[r13.w].xy + r14.yz;
        r17.xy = sunConstants.splitPinTransform[r13.w].zz * r17.xy;
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.yz = -sunConstants.splitPinTransform[r9.w].xy + r14.yz;
        r14.yz = sunConstants.splitPinTransform[r9.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r13.x;
        r16.z = r4.x;
        r14.w = 0;
        r16.w = 0;
        while (true) {
          r17.z = cmp((uint)r16.w >= 8);
          if (r17.z != 0) break;
          r17.z = cmp((uint)r12.w < (uint)r16.w);
          r18.xy = r17.zz ? r14.yz : r17.xy;
          r17.w = r17.z ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r13.w].w;
          r17.z = r17.z ? r9.w : r13.w;
          r19.x = dot(icb[r16.w+0].yx, r16.xy);
          r19.y = dot(icb[r16.w+0].yx, r16.yz);
          r18.xy = r19.xy * r17.ww + r18.xy;
          r17.z = (int)r17.z + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r17.z;
          r17.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
          r17.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r17.z = r17.z + r17.w;
          r17.z = saturate(-1 + r17.z);
          r14.w = r17.z * 0.125 + r14.w;
          r16.w = (int)r16.w + 1;
        }
        r7.w = r14.w * r14.w;
        r8.w = r7.w * r14.w;
      }
    }
  }
  r7.w = 1 + -r2.y;
  r7.w = 5 * r7.w;
  r14.yzw = -globalProbeConstants.data[0].xyz + r10.xyz;
  r16.x = globalProbeConstants.data[0].w * r14.y;
  r16.yz = globalProbeConstants.data[1].xy * r14.zw;
  r14.yzw = saturate(float3(0.5,0.5,0.5) + r16.xyz);
  r16.xy = globalProbeConstants.data[1].zw * r14.yz;
  r16.z = globalProbeConstants.data[2].x * r14.w;
  r14.yzw = globalProbeConstants.data[2].yzw + r16.xyz;
  r16.xyz = cmp(float3(0,0,0) < r11.xyz);
  r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r16.w = 0;
  r17.xyz = r16.wwx + r14.yzw;
  r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
  r18.xyz = r11.xyz * r11.xyz;
  r18.xyz = sunConstants.globalProbeExposure * r18.xyz;
  r19.xyz = r16.wwy + r14.yzw;
  r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
  r19.xyz = r19.xyz * r18.yyy;
  r17.xyz = r17.xyz * r18.xxx + r19.xyz;
  r14.yzw = r16.wwz + r14.yzw;
  r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
  r14.yzw = r14.yzw * r18.zzz + r17.xyz;
  r11.w = 0;
  r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
  r14.yzw = r16.xyz * r14.yzw;
  r9.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r15.w = 0;
  r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r7.w).xyz;
  r7.w = sunConstants.globalProbeExposure + -r9.w;
  r7.w = r2.y * r7.w + r9.w;
  r16.xyz = r16.xyz * r7.www;
  r7.w = r2.x + r3.z;
  r7.w = log2(abs(r7.w));
  r7.w = r7.w * r2.z;
  r7.w = exp2(r7.w);
  r7.w = r7.w + r3.z;
  r7.w = saturate(-1 + r7.w);
  r17.xyz = r14.yzw * r3.zzz;
  r18.xyz = r0.www ? r17.yzx : 0;
  r19.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r19.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r19.xy, 0).xy;
  r16.xyz = r16.xyz * r7.www;
  r19.xzw = r16.xyz * r19.xxx;
  r16.xyz = r16.xyz * r19.yyy;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r7.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r9.w = r2.x * r2.y + r7.w;
  r2.y = r9.w * r2.y;
  r7.w = r9.w * r7.w;
  if (r2.w != 0) {
    r20.x = 3;
    r20.yzw = eyeOffset.xyz;
    GBufferDiffuseColor[viewID].112 = u2.xyzw;
  }
  r9.w = cmp(0 < r6.w);
  if (r9.w != 0) {
    if (r2.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, l(112), u2.xxxx
    r9.w = samp0[]..swiz;
      r9.w = (int)r9.w | 4;
      GBufferDiffuseColor[viewID].112 = u2.x;
      GBufferDiffuseColor[viewID].128 = u2.x;
    }
    r9.w = cmp(0 < r8.w);
    if (r9.w != 0) {
      r9.w = sunConstants.specScale * r1.w;
      r9.w = r9.w * r4.w;
      if (sunConstants.sunCookieIndex != 0) {
        r20.xyz = eyeOffset.xyz + r10.xyz;
        r20.w = 1;
        r11.w = dot(sunConstants.sunCookieTransform[0].xyzw, r20.xyzw);
        r12.w = dot(sunConstants.sunCookieTransform[1].xyzw, r20.xyzw);
        r20.x = frac(r11.w);
        r20.y = frac(r12.w);
        r11.w = -1 + (int14)sunConstants.sunCookieIndex;
        r20.z = (uint)r11.w;
        r20.xyz = gCookieArray.SampleLevel(samplerLinear_s, r20.xyz, 0).xyz;
        r20.xyz = float3(-1,-1,-1) + r20.xyz;
        r20.xyz = sunConstants.sunCookieIntensity * r20.xyz + float3(1,1,1);
        r20.xyz = sunConstants.color.xyz * r20.xyz;
      } else {
        r20.xyz = sunConstants.color.xyz;
      }
      r11.w = viewmodelSunShadowRaw >> 16;
      r12.w = cmp(0 < (uint)r11.w);
      r12.w = r12.w ? r1.z : 0;
      if (r12.w != 0) {
        r11.w = (int)r11.w + numLights;
        r11.w = mad((int)r11.w, 15, -15);
        r12.w = abs(r4.z) * -0.200000003 + 0.400000006;
        r13.w = cmp(r4.z < 0);
        r13.w = r0.w ? r13.w : 0;
        r12.w = r13.w ? -r12.w : r12.w;
        r21.xyz = r11.xyz * r12.www + r10.xyz;
        r22.xyz = lightConstantsCB[r11.w].data[4].yzw;
        r22.w = lightConstantsCB[r11.w].data[5].x;
        r21.w = 1;
        r22.x = dot(r22.xyzw, r21.xyzw);
        r23.xyz = lightConstantsCB[r11.w].data[5].yzw;
        r23.w = lightConstantsCB[r11.w].data[6].x;
        r22.y = dot(r23.xyzw, r21.xyzw);
        r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r23.x = lightConstantsCB[r11.w].data[9].w + r22.x;
        r23.y = lightConstantsCB[r11.w].data[10].x + r22.y;
        r22.xy = lightConstantsCB[r11.w].data[9].yz * r23.xy;
        r22.zw = lightConstantsCB[r11.w].data[3].yy / lightConstantsCB[r11.w].data[8].yw;
        r23.xy = float2(1,1) + -r22.zw;
        r23.xy = cmp(r22.xy >= r23.xy);
        r22.zw = cmp(r22.zw >= r22.xy);
        r22.zw = (int2)r22.zw | (int2)r23.xy;
        r12.w = (int)r22.w | (int)r22.z;
        if (r12.w == 0) {
          r23.xyz = lightConstantsCB[r11.w].data[6].yzw;
          r23.w = lightConstantsCB[r11.w].data[7].x;
          r12.w = dot(r23.xyzw, r21.xyzw);
          r22.xy = saturate(r22.xy);
          r21.x = r22.x * lightConstantsCB[r11.w].data[8].y + lightConstantsCB[r11.w].data[8].z;
          r21.y = r22.y * lightConstantsCB[r11.w].data[8].w + lightConstantsCB[r11.w].data[9].x;
          r12.w = lightConstantsCB[r11.w].data[10].y + r12.w;
          r12.w = r12.w / lightConstantsCB[r11.w].data[10].z;
          r12.w = max(6.10351563e-05, r12.w);
          r13.w = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
          if (enableDitheredShadow != 0) {
            r22.x = -r4.x;
            r23.z = (uint)r13.w;
            r22.y = r13.x;
            r22.z = r4.x;
            r15.w = 0;
            r19.y = 0;
            while (true) {
              r20.w = cmp((int)r19.y >= 8);
              if (r20.w != 0) break;
              r24.x = dot(icb[r19.y+0].yx, r22.xy);
              r24.y = dot(icb[r19.y+0].yx, r22.yz);
              r23.xy = r24.xy * lightConstantsCB[r11.w].data[3].yy + r21.xy;
              r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r12.w).x;
              r15.w = r20.w * 0.125 + r15.w;
              r19.y = (int)r19.y + 1;
            }
          } else {
            r21.z = (uint)r13.w;
            r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r12.w).x;
          }
          r11.w = r15.w * r15.w;
          r11.w = r11.w * r15.w;
        } else {
          r11.w = 1;
        }
        r8.w = r11.w * r8.w;
      } else {
        r11.w = viewmodelSunShadowRaw & 0x0000ffff;
        r12.w = cmp(0 < (uint)r11.w);
        r13.w = ~(int)r1.z;
        r12.w = r12.w ? r13.w : 0;
        if (r12.w != 0) {
          r11.w = (int)r11.w + numLights;
          r11.w = mad((int)r11.w, 15, -15);
          r12.w = abs(r4.z) * -0.200000003 + 0.400000006;
          r13.w = cmp(r4.z < 0);
          r13.w = r0.w ? r13.w : 0;
          r12.w = r13.w ? -r12.w : r12.w;
          r21.xyz = r11.xyz * r12.www + r10.xyz;
          r22.xyz = lightConstantsCB[r11.w].data[4].yzw;
          r22.w = lightConstantsCB[r11.w].data[5].x;
          r21.w = 1;
          r22.x = dot(r22.xyzw, r21.xyzw);
          r23.xyz = lightConstantsCB[r11.w].data[5].yzw;
          r23.w = lightConstantsCB[r11.w].data[6].x;
          r22.y = dot(r23.xyzw, r21.xyzw);
          r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r23.x = lightConstantsCB[r11.w].data[9].w + r22.x;
          r23.y = lightConstantsCB[r11.w].data[10].x + r22.y;
          r22.xy = lightConstantsCB[r11.w].data[9].yz * r23.xy;
          r22.zw = lightConstantsCB[r11.w].data[3].yy / lightConstantsCB[r11.w].data[8].yw;
          r23.xy = float2(1,1) + -r22.zw;
          r23.xy = cmp(r22.xy >= r23.xy);
          r22.zw = cmp(r22.zw >= r22.xy);
          r22.zw = (int2)r22.zw | (int2)r23.xy;
          r12.w = (int)r22.w | (int)r22.z;
          if (r12.w == 0) {
            r23.xyz = lightConstantsCB[r11.w].data[6].yzw;
            r23.w = lightConstantsCB[r11.w].data[7].x;
            r12.w = dot(r23.xyzw, r21.xyzw);
            r22.xy = saturate(r22.xy);
            r21.x = r22.x * lightConstantsCB[r11.w].data[8].y + lightConstantsCB[r11.w].data[8].z;
            r21.y = r22.y * lightConstantsCB[r11.w].data[8].w + lightConstantsCB[r11.w].data[9].x;
            r12.w = lightConstantsCB[r11.w].data[10].y + r12.w;
            r12.w = r12.w / lightConstantsCB[r11.w].data[10].z;
            r12.w = max(6.10351563e-05, r12.w);
            r13.w = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
            if (enableDitheredShadow != 0) {
              r22.x = -r4.x;
              r23.z = (uint)r13.w;
              r22.y = r13.x;
              r22.z = r4.x;
              r15.w = 0;
              r19.y = 0;
              while (true) {
                r20.w = cmp((int)r19.y >= 8);
                if (r20.w != 0) break;
                r24.x = dot(icb[r19.y+0].yx, r22.xy);
                r24.y = dot(icb[r19.y+0].yx, r22.yz);
                r23.xy = r24.xy * lightConstantsCB[r11.w].data[3].yy + r21.xy;
                r20.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r12.w).x;
                r15.w = r20.w * 0.125 + r15.w;
                r19.y = (int)r19.y + 1;
              }
            } else {
              r21.z = (uint)r13.w;
              r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r12.w).x;
            }
            r11.w = r15.w * r15.w;
            r11.w = r11.w * r15.w;
          } else {
            r11.w = 1;
          }
          r8.w = r11.w * r8.w;
        }
      }
      r11.w = -r2.x * 0.5 + 1;
      r11.w = -r6.w * r11.w + 1;
      r11.w = r11.w * r11.w;
      r11.w = -r11.w * 0.620000005 + 0.620000005;
      r11.w = r11.w + -r6.w;
      r6.w = r2.z * r11.w + r6.w;
      r6.w = r6.w * r8.w;
      r21.xyz = r6.www * r20.xyz;
      r4.z = cmp(0 < r4.z);
      r21.xyz = r14.yzw * r3.zzz + r21.xyz;
      r14.yzw = -r10.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r14.yzw, r14.yzw);
      r0.z = rsqrt(r0.z);
      r14.yzw = r14.yzw * r0.zzz;
      r0.z = dot(r14.yzw, r12.xyz);
      r3.z = dot(r11.xyz, r14.yzw);
      r11.w = abs(r3.z) * r1.w + -abs(r3.z);
      r3.z = abs(r3.z) * r11.w + 1;
      r4.w = r4.w * r2.y + r7.w;
      r3.z = r3.z * r3.z;
      r3.z = r3.z * r4.w;
      r3.z = rcp(r3.z);
      r3.z = r3.z * r9.w;
      r3.z = r8.w * r3.z;
      r3.z = 0.25 * r3.z;
      r22.yzw = r3.zzz * r20.xyz + r16.xyz;
      r0.z = saturate(1 + -r0.z);
      r4.w = r0.z * r0.z;
      r4.w = r4.w * r4.w;
      r0.z = r4.w * r0.z;
      r0.z = r3.z * r0.z;
      r14.yzw = r0.zzz * r20.xyz + r19.xzw;
      r20.xyz = r6.www * r20.xyz + r18.zxy;
      r20.xyz = r0.www ? r20.yzx : 0;
      r21.w = r18.z;
      r17.w = r20.z;
      r17.xyzw = r4.zzzz ? r21.xyzw : r17.xyzw;
      r18.zw = r14.yz;
      r20.zw = r19.xz;
      r20.xyzw = r4.zzzz ? r18.xyzw : r20.xyzw;
      r22.x = r14.w;
      r16.w = r19.w;
      r16.xyzw = r4.zzzz ? r22.yzwx : r16.xyzw;
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.z, cb2[52].x, l(112), u2.xxxx
      r0.z = samp0[]..swiz;
        r0.z = (int)r0.z | 8;
        GBufferDiffuseColor[viewID].112 = u2.x;
        GBufferDiffuseColor[viewID].132 = u2.x;
      }
      r18.z = r17.w;
      r18.xy = r20.xy;
      r19.xz = r20.zw;
      r19.w = r16.w;
      r0.z = 0x00010101;
    } else {
      r0.z = 257;
    }
  } else {
    r0.z = 1;
  }
  r3.z = (uint)renderTargetSize.x;
  r3.z = (int)r3.z + 7;
  r3.z = (uint)r3.z >> 3;
  r3.z = mad((int)r0.y, (int)r3.z, (int)r0.x);
  r3.z = (uint)r3.z << 5;
  r4.z = ~(int)r1.z;
  r20.x = -r4.x;
  r2.x = -r2.x * 0.5 + 1;
  r21.x = 2;
  r10.w = 1;
  r22.x = 2;
  r23.z = 1;
  r24.w = 1;
  r25.w = 1;
  r26.w = 1;
  r20.z = r4.x;
  r27.w = 1;
  r20.yw = r13.xx;
  r4.y = r20.w;
  r13.y = r20.x;
  r28.x = r13.x;
  r28.y = r20.x;
  r28.z = r4.x;
  r13.z = r4.x;
  r29.w = 1;
  r30.x = r13.x;
  r30.y = r20.x;
  r30.z = r4.x;
  r31.x = r13.x;
  r31.y = r20.x;
  r31.z = r4.x;
  r14.yzw = r17.xyz;
  r32.xyz = r18.zxy;
  r33.xyz = r19.xzw;
  r34.xyz = r16.xyz;
  r4.w = enableDitheredShadow;
  r6.w = r0.z;
  r8.w = 0;
  while (true) {
    r9.w = cmp((uint)r8.w >= numLights);
    if (r9.w != 0) break;
    r9.w = (uint)r8.w >> 5;
    r9.w = (int)r3.z + (int)r9.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t26.xxxx
  r9.w = samp0[]..swiz;
    r35.xyz = r14.yzw;
    r36.xyz = r32.xyz;
    r37.xyz = r33.xyz;
    r38.xyz = r34.xyz;
    r11.w = r4.w;
    r12.w = r6.w;
    r13.w = r9.w;
    while (true) {
      if (r13.w == 0) break;
      r15.w = firstbitlow((uint)r13.w);
      r16.w = 1 << (int)r15.w;
      r16.w = ~(int)r16.w;
      r13.w = (int)r13.w & (int)r16.w;
      r15.w = (int)r8.w + (int)r15.w;
      r15.w = (int)r15.w * 15;
      if (3 == 0) r16.w = 0; else if (3+24 < 32) {       r16.w = (uint)lightConstantsCB[r15.w].data[1].w << (32-(3 + 24)); r16.w = (uint)r16.w >> (32-3);      } else r16.w = (uint)lightConstantsCB[r15.w].data[1].w >> 24;
      r17.w = cmp((int)r16.w == 2);
      if (r17.w != 0) {
        if (3 == 0) r17.w = 0; else if (3+27 < 32) {         r17.w = (uint)lightConstantsCB[r15.w].data[1].w << (32-(3 + 27)); r17.w = (uint)r17.w >> (32-3);        } else r17.w = (uint)lightConstantsCB[r15.w].data[1].w >> 27;
        r18.w = (int)r12.w & 255;
        r19.y = cmp((uint)r18.w < 32);
        r19.y = r19.y ? r2.w : 0;
        if (r19.y != 0) {
          r18.w = mad((int)r18.w, 24, 112);
          r21.yzw = lightConstantsCB[r15.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r18.w = u2.xyzw;
        }
        r18.w = (int)r12.w + 1;
        r39.xy = lightConstantsCB[r15.w].data[3].zw + -r10.xy;
        r39.z = lightConstantsCB[r15.w].data[4].x + -r10.z;
        r19.y = dot(r39.xyz, r39.xyz);
        r19.y = rsqrt(r19.y);
        r21.yzw = r39.xyz * r19.yyy;
        r23.w = lightConstantsCB[r15.w].data[1].z * r1.w;
        r23.w = 0.25 * r23.w;
        r21.y = dot(r11.xyz, r21.yzw);
        r21.z = saturate(r21.y);
        r21.w = r0.w ? abs(r21.y) : r21.z;
        r28.w = cmp(0 < r21.w);
        if (r28.w != 0) {
          r40.xyz = lightConstantsCB[r15.w].data[7].yzw;
          r40.w = lightConstantsCB[r15.w].data[8].x;
          r28.w = dot(r40.xyzw, r10.xyzw);
          r30.w = cmp(r28.w < 1);
          if (r30.w != 0) {
            r41.xyz = float3(1,1,1);
            r30.w = 0;
          } else {
            r42.xyz = lightConstantsCB[r15.w].data[0].xyz + -r10.xyz;
            r31.w = lightConstantsCB[r15.w].data[3].x * lightConstantsCB[r15.w].data[3].x;
            r32.w = dot(r42.xyz, r42.xyz);
            r31.w = r31.w / r32.w;
            r31.w = min(1, r31.w);
            r42.xy = saturate(r28.ww * lightConstantsCB[r15.w].data[2].xz + lightConstantsCB[r15.w].data[2].yw);
            r42.zw = r42.xy * r42.xy;
            r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
            r42.xy = r42.zw * r42.xy;
            r31.w = r42.x * r31.w;
            r31.w = r31.w * r42.y;
            r42.xyz = lightConstantsCB[r15.w].data[4].yzw;
            r42.w = lightConstantsCB[r15.w].data[5].x;
            r42.x = dot(r42.xyzw, r10.xyzw);
            r43.xyz = lightConstantsCB[r15.w].data[5].yzw;
            r43.w = lightConstantsCB[r15.w].data[6].x;
            r42.y = dot(r43.xyzw, r10.xyzw);
            r23.xy = r42.xy / r28.ww;
            r28.w = cmp(lightConstantsCB[r15.w].data[10].w < 0.00048828125);
            if (r28.w != 0) {
              r42.xy = saturate(abs(r23.xy) * lightConstantsCB[r15.w].data[12].xy + lightConstantsCB[r15.w].data[12].zw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r28.w = r42.x * r42.y;
            } else {
              r42.xyzw = saturate(lightConstantsCB[r15.w].data[11].xyzw * abs(r23.yyxx));
              r42.xyzw = log2(r42.xyzw);
              r42.xyzw = lightConstantsCB[r15.w].data[12].zzzz * r42.xyzw;
              r42.xyzw = exp2(r42.xyzw);
              r42.xy = r42.xy + r42.zw;
              r42.xy = log2(r42.xy);
              r42.xy = lightConstantsCB[r15.w].data[12].ww * r42.xy;
              r42.xy = exp2(r42.xy);
              r32.w = lightConstantsCB[r15.w].data[12].x * r42.x;
              r33.w = lightConstantsCB[r15.w].data[12].y * r42.y + -1;
              r32.w = lightConstantsCB[r15.w].data[12].y * r42.y + -r32.w;
              r32.w = saturate(r33.w / r32.w);
              r33.w = r32.w * r32.w;
              r32.w = r32.w * -2 + 3;
              r28.w = r33.w * r32.w;
            }
            r30.w = r31.w * r28.w;
            r28.w = 255 & (int)lightConstantsCB[r15.w].data[14].w;
            if (r28.w != 0) {
              r31.w = dot(lightConstantsCB[r15.w].data[13].xyz, r23.xyz);
              r42.x = lightConstantsCB[r15.w].data[13].w;
              r42.yz = lightConstantsCB[r15.w].data[14].xy;
              r23.x = dot(r42.xyz, r23.xyz);
              r42.x = frac(r31.w);
              r42.y = frac(r23.x);
              r23.x = (int)r28.w + -1;
              r42.z = (uint)r23.x;
              r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r42.xyz, 0).xyz;
            } else {
              r41.xyz = float3(1,1,1);
            }
          }
          r42.x = lightConstantsCB[r15.w].data[0].w;
          r42.yz = lightConstantsCB[r15.w].data[1].xy;
          r41.xyz = r42.xyz * r41.xyz;
          r23.x = cmp(0 < r30.w);
          if (r23.x != 0) {
            r23.x = (int)r18.w & 255;
            r23.y = (int)r23.x + -1;
            r23.y = cmp((uint)r23.y < 32);
            r23.y = r23.y ? r2.w : 0;
            if (r23.y != 0) {
              r23.xy = mad((int2)r23.xx, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r28.w, cb2[52].x, r23.x, u2.xxxx
            r28.w = samp0[]..swiz;
              r28.w = (int)r28.w | 4;
              GBufferDiffuseColor[viewID].r23.x = u2.x;
              GBufferDiffuseColor[viewID].r23.y = u2.x;
            }
            r23.x = (int)r12.w + 257;
            r17.w = cmp((int)r17.w != 1);
            if (r17.w != 0) {
              r17.w = abs(r21.y) * -0.200000003 + 0.400000006;
              r23.y = cmp(r21.y < 0);
              r23.y = r0.w ? r23.y : 0;
              r17.w = r23.y ? -r17.w : r17.w;
              r24.xyz = r11.xyz * r17.www + r10.xyz;
              r42.xyz = lightConstantsCB[r15.w].data[6].yzw;
              r42.w = lightConstantsCB[r15.w].data[7].x;
              r17.w = dot(r42.xyzw, r24.xyzw);
              r23.y = dot(r40.xyzw, r24.xyzw);
              r28.w = cmp(r23.y >= r17.w);
              if (r28.w != 0) {
                r40.xyz = lightConstantsCB[r15.w].data[4].yzw;
                r40.w = lightConstantsCB[r15.w].data[5].x;
                r40.x = dot(r40.xyzw, r24.xyzw);
                r42.xyz = lightConstantsCB[r15.w].data[5].yzw;
                r42.w = lightConstantsCB[r15.w].data[6].x;
                r40.y = dot(r42.xyzw, r24.xyzw);
                r24.xy = r40.xy / r23.yy;
                r24.xy = saturate(r24.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r40.x = r24.x * lightConstantsCB[r15.w].data[8].y + lightConstantsCB[r15.w].data[8].z;
                r40.y = r24.y * lightConstantsCB[r15.w].data[8].w + lightConstantsCB[r15.w].data[9].x;
                r17.w = r17.w / r23.y;
                r17.w = max(6.10351563e-05, r17.w);
                r23.y = 0x0000ffff & (int)lightConstantsCB[r15.w].data[1].w;
                if (r11.w != 0) {
                  r24.z = (uint)r23.y;
                  r28.w = 0;
                  r31.w = 0;
                  while (true) {
                    r32.w = cmp((int)r31.w >= 8);
                    if (r32.w != 0) break;
                    r42.x = dot(icb[r31.w+0].yx, r20.xy);
                    r42.y = dot(icb[r31.w+0].yx, r20.yz);
                    r24.xy = r42.xy * lightConstantsCB[r15.w].data[3].yy + r40.xy;
                    r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r17.w).x;
                    r28.w = r24.x * 0.125 + r28.w;
                    r31.w = (int)r31.w + 1;
                  }
                } else {
                  r40.z = (uint)r23.y;
                  r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r17.w).x;
                }
                r17.w = r28.w * r28.w;
                r17.w = r17.w * r28.w;
              } else {
                r17.w = 1;
              }
            } else {
              r17.w = 1;
            }
            r17.w = r30.w * r17.w;
            r23.y = cmp(0 < r17.w);
            if (r23.y != 0) {
              if (4 == 0) r23.y = 0; else if (4+16 < 32) {               r23.y = (uint)lightConstantsCB[r15.w].data[1].w << (32-(4 + 16)); r23.y = (uint)r23.y >> (32-4);              } else r23.y = (uint)lightConstantsCB[r15.w].data[1].w >> 16;
              r24.x = cmp(0 < (uint)r23.y);
              r24.x = r24.x ? r1.z : 0;
              if (r24.x != 0) {
                r23.y = (int)r23.y + numLights;
                r23.y = mad((int)r23.y, 15, -15);
                r24.x = abs(r21.y) * -0.200000003 + 0.400000006;
                r24.y = cmp(r21.y < 0);
                r24.y = r0.w ? r24.y : 0;
                r24.x = r24.y ? -r24.x : r24.x;
                r25.xyz = r11.xyz * r24.xxx + r10.xyz;
                r40.xyz = lightConstantsCB[r23.y].data[6].yzw;
                r40.w = lightConstantsCB[r23.y].data[7].x;
                r24.x = dot(r40.xyzw, r25.xyzw);
                r40.xyz = lightConstantsCB[r23.y].data[7].yzw;
                r40.w = lightConstantsCB[r23.y].data[8].x;
                r24.y = dot(r40.xyzw, r25.xyzw);
                r24.z = cmp(r24.y < r24.x);
                if (r24.z == 0) {
                  r40.xyz = lightConstantsCB[r23.y].data[4].yzw;
                  r40.w = lightConstantsCB[r23.y].data[5].x;
                  r40.x = dot(r40.xyzw, r25.xyzw);
                  r42.xyz = lightConstantsCB[r23.y].data[5].yzw;
                  r42.w = lightConstantsCB[r23.y].data[6].x;
                  r40.y = dot(r42.xyzw, r25.xyzw);
                  r25.xy = r40.xy / r24.yy;
                  r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r40.x = lightConstantsCB[r23.y].data[9].w + r25.x;
                  r40.y = lightConstantsCB[r23.y].data[10].x + r25.y;
                  r25.xy = lightConstantsCB[r23.y].data[9].yz * r40.xy;
                  r40.xy = lightConstantsCB[r23.y].data[3].yy / lightConstantsCB[r23.y].data[8].yw;
                  r40.zw = float2(1,1) + -r40.xy;
                  r40.zw = cmp(r25.xy >= r40.zw);
                  r40.xy = cmp(r40.xy >= r25.xy);
                  r40.xy = (int2)r40.xy | (int2)r40.zw;
                  r25.z = (int)r40.y | (int)r40.x;
                  if (r25.z == 0) {
                    r25.xy = saturate(r25.xy);
                    r40.x = r25.x * lightConstantsCB[r23.y].data[8].y + lightConstantsCB[r23.y].data[8].z;
                    r40.y = r25.y * lightConstantsCB[r23.y].data[8].w + lightConstantsCB[r23.y].data[9].x;
                    r25.x = lightConstantsCB[r23.y].data[10].z * r24.y;
                    r24.x = lightConstantsCB[r23.y].data[10].y * r24.y + r24.x;
                    r24.x = r24.x / r25.x;
                  }
                } else {
                  r25.z = -1;
                }
                r24.y = (int)r24.z | (int)r25.z;
                if (r24.y == 0) {
                  r24.x = max(6.10351563e-05, r24.x);
                  r24.y = 0x0000ffff & (int)lightConstantsCB[r23.y].data[1].w;
                  if (r11.w != 0) {
                    r25.z = (uint)r24.y;
                    r24.z = 0;
                    r30.w = 0;
                    while (true) {
                      r31.w = cmp((int)r30.w >= 8);
                      if (r31.w != 0) break;
                      r42.x = dot(icb[r30.w+0].yx, r20.xw);
                      r42.y = dot(icb[r30.w+0].xy, r4.xy);
                      r25.xy = r42.xy * lightConstantsCB[r23.y].data[3].yy + r40.xy;
                      r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r24.x).x;
                      r24.z = r25.x * 0.125 + r24.z;
                      r30.w = (int)r30.w + 1;
                    }
                  } else {
                    r40.z = (uint)r24.y;
                    r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r24.x).x;
                  }
                  r23.y = r24.z * r24.z;
                  r23.y = r23.y * r24.z;
                } else {
                  r23.y = 1;
                }
                r17.w = r23.y * r17.w;
              } else {
                if (4 == 0) r23.y = 0; else if (4+20 < 32) {                 r23.y = (uint)lightConstantsCB[r15.w].data[1].w << (32-(4 + 20)); r23.y = (uint)r23.y >> (32-4);                } else r23.y = (uint)lightConstantsCB[r15.w].data[1].w >> 20;
                r24.x = cmp(0 < (uint)r23.y);
                r24.x = r4.z ? r24.x : 0;
                if (r24.x != 0) {
                  r23.y = (int)r23.y + numLights;
                  r23.y = mad((int)r23.y, 15, -15);
                  r24.x = abs(r21.y) * -0.200000003 + 0.400000006;
                  r24.y = cmp(r21.y < 0);
                  r24.y = r0.w ? r24.y : 0;
                  r24.x = r24.y ? -r24.x : r24.x;
                  r26.xyz = r11.xyz * r24.xxx + r10.xyz;
                  r40.xyz = lightConstantsCB[r23.y].data[6].yzw;
                  r40.w = lightConstantsCB[r23.y].data[7].x;
                  r24.x = dot(r40.xyzw, r26.xyzw);
                  r40.xyz = lightConstantsCB[r23.y].data[7].yzw;
                  r40.w = lightConstantsCB[r23.y].data[8].x;
                  r24.y = dot(r40.xyzw, r26.xyzw);
                  r25.x = cmp(r24.y < r24.x);
                  if (r25.x == 0) {
                    r40.xyz = lightConstantsCB[r23.y].data[4].yzw;
                    r40.w = lightConstantsCB[r23.y].data[5].x;
                    r40.x = dot(r40.xyzw, r26.xyzw);
                    r42.xyz = lightConstantsCB[r23.y].data[5].yzw;
                    r42.w = lightConstantsCB[r23.y].data[6].x;
                    r40.y = dot(r42.xyzw, r26.xyzw);
                    r25.yz = r40.xy / r24.yy;
                    r25.yz = r25.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r26.x = lightConstantsCB[r23.y].data[9].w + r25.y;
                    r26.y = lightConstantsCB[r23.y].data[10].x + r25.z;
                    r25.yz = lightConstantsCB[r23.y].data[9].yz * r26.xy;
                    r26.xy = lightConstantsCB[r23.y].data[3].yy / lightConstantsCB[r23.y].data[8].yw;
                    r40.xy = float2(1,1) + -r26.xy;
                    r40.xy = cmp(r25.yz >= r40.xy);
                    r26.xy = cmp(r26.xy >= r25.yz);
                    r26.xy = (int2)r26.xy | (int2)r40.xy;
                    r26.x = (int)r26.y | (int)r26.x;
                    if (r26.x == 0) {
                      r25.yz = saturate(r25.yz);
                      r40.x = r25.y * lightConstantsCB[r23.y].data[8].y + lightConstantsCB[r23.y].data[8].z;
                      r40.y = r25.z * lightConstantsCB[r23.y].data[8].w + lightConstantsCB[r23.y].data[9].x;
                      r25.y = lightConstantsCB[r23.y].data[10].z * r24.y;
                      r24.x = lightConstantsCB[r23.y].data[10].y * r24.y + r24.x;
                      r24.x = r24.x / r25.y;
                    }
                  } else {
                    r26.x = -1;
                  }
                  r24.y = (int)r25.x | (int)r26.x;
                  if (r24.y == 0) {
                    r24.x = max(6.10351563e-05, r24.x);
                    r24.y = 0x0000ffff & (int)lightConstantsCB[r23.y].data[1].w;
                    if (r11.w != 0) {
                      r25.z = (uint)r24.y;
                      r26.xy = float2(0,0);
                      while (true) {
                        r26.z = cmp((int)r26.y >= 8);
                        if (r26.z != 0) break;
                        r42.x = dot(icb[r26.y+0].xy, r28.xy);
                        r42.y = dot(icb[r26.y+0].yx, r28.xz);
                        r25.xy = r42.xy * lightConstantsCB[r23.y].data[3].yy + r40.xy;
                        r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r24.x).x;
                        r26.x = r25.x * 0.125 + r26.x;
                        r26.y = (int)r26.y + 1;
                      }
                    } else {
                      r40.z = (uint)r24.y;
                      r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r24.x).x;
                    }
                    r23.y = r26.x * r26.x;
                    r23.y = r23.y * r26.x;
                  } else {
                    r23.y = 1;
                  }
                  r17.w = r23.y * r17.w;
                }
              }
              r23.y = -r21.w * r2.x + 1;
              r23.y = r23.y * r23.y;
              r23.y = -r23.y * 0.620000005 + 0.620000005;
              r23.y = r23.y + -r21.w;
              r21.w = r2.z * r23.y + r21.w;
              r21.w = r21.w * r17.w;
              r21.y = cmp(0 < r21.y);
              r25.xyz = r21.www * r41.xyz + r35.xyz;
              r39.xyz = r39.xyz * r19.yyy + r12.xyz;
              r19.y = dot(r39.xyz, r39.xyz);
              r19.y = rsqrt(r19.y);
              r39.xyz = r39.xyz * r19.yyy;
              r19.y = dot(r39.xyz, r12.xyz);
              r23.y = dot(r11.xyz, r39.xyz);
              r24.x = abs(r23.y) * r1.w + -abs(r23.y);
              r23.y = abs(r23.y) * r24.x + 1;
              r24.x = r21.z * r2.y + r7.w;
              r23.y = r23.y * r23.y;
              r23.y = r23.y * r24.x;
              r23.y = rcp(r23.y);
              r21.z = r21.z * r23.w;
              r21.z = r23.y * r21.z;
              r21.z = r21.z * r17.w;
              r39.xyz = r21.zzz * r41.xyz + r38.xyz;
              r19.y = saturate(1 + -r19.y);
              r23.y = r19.y * r19.y;
              r23.y = r23.y * r23.y;
              r19.y = r23.y * r19.y;
              r19.y = r21.z * r19.y;
              r40.xyz = r19.yyy * r41.xyz + r37.xyz;
              r41.xyz = r21.www * r41.xyz + r36.xyz;
              r41.xyz = r0.www ? r41.xyz : r36.xyz;
              r35.xyz = r21.yyy ? r25.xyz : r35.xyz;
              r36.xyz = r21.yyy ? r36.xyz : r41.xyz;
              r37.xyz = r21.yyy ? r40.xyz : r37.xyz;
              r38.xyz = r21.yyy ? r39.xyz : r38.xyz;
              r19.y = (int)r23.x & 255;
              r21.y = (int)r19.y + -1;
              r21.y = cmp((uint)r21.y < 32);
              r21.y = r21.y ? r2.w : 0;
              if (r21.y != 0) {
                r21.yz = mad((int2)r19.yy, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.y, cb2[52].x, r21.y, u2.xxxx
              r19.y = samp0[]..swiz;
                r19.y = (int)r19.y | 8;
                GBufferDiffuseColor[viewID].r21.y = u2.x;
                GBufferDiffuseColor[viewID].r21.z = u2.x;
              }
              r12.w = (int)r12.w + 0x00010101;
            } else {
              r12.w = r23.x;
            }
          } else {
            r12.w = r18.w;
          }
        } else {
          r12.w = r18.w;
        }
      } else {
        r16.w = cmp((int)r16.w == 4);
        if (r16.w != 0) {
          if (3 == 0) r16.w = 0; else if (3+27 < 32) {           r16.w = (uint)lightConstantsCB[r15.w].data[1].w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);          } else r16.w = (uint)lightConstantsCB[r15.w].data[1].w >> 27;
          r17.w = (int)r12.w & 255;
          r18.w = cmp((uint)r17.w < 32);
          r18.w = r18.w ? r2.w : 0;
          if (r18.w != 0) {
            r17.w = mad((int)r17.w, 24, 112);
            r22.yzw = lightConstantsCB[r15.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r17.w = u2.xyzw;
          }
          r17.w = (int)r12.w + 1;
          r18.w = lightConstantsCB[r15.w].data[1].z * r1.w;
          r18.w = 0.25 * r18.w;
          r19.y = cmp(0 < lightConstantsCB[r15.w].data[6].y);
          r25.xy = lightConstantsCB[r15.w].data[5].zw;
          r25.z = lightConstantsCB[r15.w].data[6].x;
          r21.yzw = -r25.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r15.w].data[0].xyz;
          r22.yzw = r21.yzw + -r10.xyz;
          r23.x = dot(r25.xyz, r15.xyz);
          r23.y = dot(r25.xyz, r22.yzw);
          r22.y = dot(r15.xyz, r22.yzw);
          r22.z = -r23.x * r23.x + lightConstantsCB[r15.w].data[6].y;
          r22.y = r23.x * r22.y + -r23.y;
          r22.w = saturate(-r23.y / lightConstantsCB[r15.w].data[6].y);
          r22.y = saturate(r22.y / r22.z);
          r22.z = r22.z / lightConstantsCB[r15.w].data[6].y;
          r22.z = 10 * r22.z;
          r22.z = min(1, r22.z);
          r22.y = r22.y + -r22.w;
          r22.y = r22.z * r22.y + r22.w;
          r23.xyw = r22.yyy * r25.xyz + r21.yzw;
          r21.yzw = r22.www * r25.xyz + r21.yzw;
          r21.yzw = r19.yyy ? r21.yzw : lightConstantsCB[r15.w].data[0].xyz;
          r22.yzw = r19.yyy ? r23.xyw : lightConstantsCB[r15.w].data[0].xyz;
          r22.yzw = r22.yzw + -r10.xyz;
          r21.yzw = r21.yzw + -r10.xyz;
          r19.y = dot(r22.yzw, r22.yzw);
          r19.y = rsqrt(r19.y);
          r23.xyw = r22.yzw * r19.yyy;
          r24.x = dot(r21.yzw, r21.yzw);
          r24.y = rsqrt(r24.x);
          r21.yzw = r24.yyy * r21.yzw;
          r21.y = dot(r11.xyz, r21.yzw);
          r21.z = saturate(r21.y);
          r21.z = r0.w ? abs(r21.y) : r21.z;
          r21.w = cmp(0 < r21.z);
          if (r21.w != 0) {
            r21.w = sqrt(r24.x);
            r24.y = lightConstantsCB[r15.w].data[3].x * lightConstantsCB[r15.w].data[3].x;
            r24.x = r24.y / r24.x;
            r24.x = min(1, r24.x);
            r25.xy = saturate(r21.ww * lightConstantsCB[r15.w].data[2].xz + lightConstantsCB[r15.w].data[2].yw);
            r26.yz = r25.xy * r25.xy;
            r25.xy = r25.xy * float2(-2,-2) + float2(3,3);
            r25.xy = r26.yz * r25.xy;
            r21.w = r25.x * r24.x;
            r21.w = r21.w * r25.y;
            r24.x = cmp(0 < r21.w);
            if (r24.x != 0) {
              r24.x = (int)r17.w & 255;
              r24.y = (int)r24.x + -1;
              r24.y = cmp((uint)r24.y < 32);
              r24.y = r24.y ? r2.w : 0;
              if (r24.y != 0) {
                r24.xy = mad((int2)r24.xx, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r25.x, cb2[52].x, r24.x, u2.xxxx
              r25.x = samp0[]..swiz;
                r25.x = (int)r25.x | 4;
                GBufferDiffuseColor[viewID].r24.x = u2.x;
                GBufferDiffuseColor[viewID].r24.y = u2.x;
              }
              r24.x = (int)r12.w + 257;
              r16.w = cmp((int)r16.w != 1);
              if (r16.w != 0) {
                r16.w = abs(r21.y) * -0.200000003 + 0.400000006;
                r24.y = cmp(r21.y < 0);
                r24.y = r0.w ? r24.y : 0;
                r16.w = r24.y ? -r16.w : r16.w;
                r25.xyz = r11.xyz * r16.www + r10.xyz;
                r25.xyz = -lightConstantsCB[r15.w].data[4].yzw + r25.xyz;
                r16.w = max(abs(r25.y), abs(r25.z));
                r16.w = max(abs(r25.x), r16.w);
                r16.w = lightConstantsCB[r15.w].data[5].x / r16.w;
                r16.w = lightConstantsCB[r15.w].data[5].y + r16.w;
                r24.y = dot(r25.xyz, r25.xyz);
                r24.y = rsqrt(r24.y);
                r16.w = max(6.10351563e-05, r16.w);
                r26.y = 0x0000ffff & (int)lightConstantsCB[r15.w].data[1].w;
                r39.w = (uint)r26.y;
                r26.yz = float2(0,0);
                while (true) {
                  r30.w = cmp((int)r26.z >= 8);
                  if (r30.w != 0) break;
                  r40.y = dot(icb[r26.z+0].xy, r13.xy);
                  r40.z = dot(icb[r26.z+0].yx, r13.xz);
                  r40.yz = lightConstantsCB[r15.w].data[3].yy * r40.yz;
                  r40.x = r40.y * r14.x;
                  r40.w = r40.y * r5.x;
                  r39.xyz = r25.xyz * r24.yyy + r40.xzw;
                  r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyzw, r16.w).x;
                  r26.y = r30.w * 0.125 + r26.y;
                  r26.z = (int)r26.z + 1;
                }
              } else {
                r26.y = 1;
              }
              r16.w = r26.y * r21.w;
              r21.w = cmp(0 < r16.w);
              if (r21.w != 0) {
                if (4 == 0) r21.w = 0; else if (4+16 < 32) {                 r21.w = (uint)lightConstantsCB[r15.w].data[1].w << (32-(4 + 16)); r21.w = (uint)r21.w >> (32-4);                } else r21.w = (uint)lightConstantsCB[r15.w].data[1].w >> 16;
                r24.y = cmp(0 < (uint)r21.w);
                r24.y = r24.y ? r1.z : 0;
                if (r24.y != 0) {
                  r21.w = (int)r21.w + numLights;
                  r21.w = mad((int)r21.w, 15, -15);
                  r24.y = abs(r21.y) * -0.200000003 + 0.400000006;
                  r25.x = cmp(r21.y < 0);
                  r25.x = r0.w ? r25.x : 0;
                  r24.y = r25.x ? -r24.y : r24.y;
                  r27.xyz = r11.xyz * r24.yyy + r10.xyz;
                  r39.xyz = lightConstantsCB[r21.w].data[6].yzw;
                  r39.w = lightConstantsCB[r21.w].data[7].x;
                  r24.y = dot(r39.xyzw, r27.xyzw);
                  r39.xyz = lightConstantsCB[r21.w].data[7].yzw;
                  r39.w = lightConstantsCB[r21.w].data[8].x;
                  r25.x = dot(r39.xyzw, r27.xyzw);
                  r25.y = cmp(r25.x < r24.y);
                  if (r25.y == 0) {
                    r39.xyz = lightConstantsCB[r21.w].data[4].yzw;
                    r39.w = lightConstantsCB[r21.w].data[5].x;
                    r39.x = dot(r39.xyzw, r27.xyzw);
                    r40.xyz = lightConstantsCB[r21.w].data[5].yzw;
                    r40.w = lightConstantsCB[r21.w].data[6].x;
                    r39.y = dot(r40.xyzw, r27.xyzw);
                    r27.xy = r39.xy / r25.xx;
                    r27.xy = r27.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r39.x = lightConstantsCB[r21.w].data[9].w + r27.x;
                    r39.y = lightConstantsCB[r21.w].data[10].x + r27.y;
                    r27.xy = lightConstantsCB[r21.w].data[9].yz * r39.xy;
                    r39.xy = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                    r39.zw = float2(1,1) + -r39.xy;
                    r39.zw = cmp(r27.xy >= r39.zw);
                    r39.xy = cmp(r39.xy >= r27.xy);
                    r39.xy = (int2)r39.xy | (int2)r39.zw;
                    r25.z = (int)r39.y | (int)r39.x;
                    if (r25.z == 0) {
                      r27.xy = saturate(r27.xy);
                      r39.x = r27.x * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                      r39.y = r27.y * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                      r26.z = lightConstantsCB[r21.w].data[10].z * r25.x;
                      r24.y = lightConstantsCB[r21.w].data[10].y * r25.x + r24.y;
                      r24.y = r24.y / r26.z;
                    }
                  } else {
                    r25.z = -1;
                  }
                  r25.x = (int)r25.y | (int)r25.z;
                  if (r25.x == 0) {
                    r24.y = max(6.10351563e-05, r24.y);
                    r25.x = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                    if (r11.w != 0) {
                      r27.z = (uint)r25.x;
                      r25.yz = float2(0,0);
                      while (true) {
                        r26.z = cmp((int)r25.z >= 8);
                        if (r26.z != 0) break;
                        r40.x = dot(icb[r25.z+0].xy, r30.xy);
                        r40.y = dot(icb[r25.z+0].yx, r30.xz);
                        r27.xy = r40.xy * lightConstantsCB[r21.w].data[3].yy + r39.xy;
                        r26.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r24.y).x;
                        r25.y = r26.z * 0.125 + r25.y;
                        r25.z = (int)r25.z + 1;
                      }
                    } else {
                      r39.z = (uint)r25.x;
                      r25.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r24.y).x;
                    }
                    r21.w = r25.y * r25.y;
                    r21.w = r21.w * r25.y;
                  } else {
                    r21.w = 1;
                  }
                  r16.w = r21.w * r16.w;
                } else {
                  if (4 == 0) r21.w = 0; else if (4+20 < 32) {                   r21.w = (uint)lightConstantsCB[r15.w].data[1].w << (32-(4 + 20)); r21.w = (uint)r21.w >> (32-4);                  } else r21.w = (uint)lightConstantsCB[r15.w].data[1].w >> 20;
                  r24.y = cmp(0 < (uint)r21.w);
                  r24.y = r4.z ? r24.y : 0;
                  if (r24.y != 0) {
                    r21.w = (int)r21.w + numLights;
                    r21.w = mad((int)r21.w, 15, -15);
                    r24.y = abs(r21.y) * -0.200000003 + 0.400000006;
                    r25.x = cmp(r21.y < 0);
                    r25.x = r0.w ? r25.x : 0;
                    r24.y = r25.x ? -r24.y : r24.y;
                    r29.xyz = r11.xyz * r24.yyy + r10.xyz;
                    r39.xyz = lightConstantsCB[r21.w].data[6].yzw;
                    r39.w = lightConstantsCB[r21.w].data[7].x;
                    r24.y = dot(r39.xyzw, r29.xyzw);
                    r39.xyz = lightConstantsCB[r21.w].data[7].yzw;
                    r39.w = lightConstantsCB[r21.w].data[8].x;
                    r25.x = dot(r39.xyzw, r29.xyzw);
                    r25.z = cmp(r25.x < r24.y);
                    if (r25.z == 0) {
                      r39.xyz = lightConstantsCB[r21.w].data[4].yzw;
                      r39.w = lightConstantsCB[r21.w].data[5].x;
                      r27.x = dot(r39.xyzw, r29.xyzw);
                      r39.xyz = lightConstantsCB[r21.w].data[5].yzw;
                      r39.w = lightConstantsCB[r21.w].data[6].x;
                      r27.y = dot(r39.xyzw, r29.xyzw);
                      r27.xy = r27.xy / r25.xx;
                      r27.xy = r27.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r29.x = lightConstantsCB[r21.w].data[9].w + r27.x;
                      r29.y = lightConstantsCB[r21.w].data[10].x + r27.y;
                      r27.xy = lightConstantsCB[r21.w].data[9].yz * r29.xy;
                      r29.xy = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                      r39.xy = float2(1,1) + -r29.xy;
                      r39.xy = cmp(r27.xy >= r39.xy);
                      r29.xy = cmp(r29.xy >= r27.xy);
                      r29.xy = (int2)r29.xy | (int2)r39.xy;
                      r26.z = (int)r29.y | (int)r29.x;
                      if (r26.z == 0) {
                        r27.xy = saturate(r27.xy);
                        r29.x = r27.x * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                        r29.y = r27.y * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                        r27.x = lightConstantsCB[r21.w].data[10].z * r25.x;
                        r24.y = lightConstantsCB[r21.w].data[10].y * r25.x + r24.y;
                        r24.y = r24.y / r27.x;
                      }
                    } else {
                      r26.z = -1;
                    }
                    r25.x = (int)r25.z | (int)r26.z;
                    if (r25.x == 0) {
                      r24.y = max(6.10351563e-05, r24.y);
                      r25.x = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                      if (r11.w != 0) {
                        r27.z = (uint)r25.x;
                        r25.z = 0;
                        r26.z = 0;
                        while (true) {
                          r30.w = cmp((int)r26.z >= 8);
                          if (r30.w != 0) break;
                          r39.x = dot(icb[r26.z+0].xy, r31.xy);
                          r39.y = dot(icb[r26.z+0].yx, r31.xz);
                          r27.xy = r39.xy * lightConstantsCB[r21.w].data[3].yy + r29.xy;
                          r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r24.y).x;
                          r25.z = r27.x * 0.125 + r25.z;
                          r26.z = (int)r26.z + 1;
                        }
                      } else {
                        r29.z = (uint)r25.x;
                        r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r24.y).x;
                      }
                      r21.w = r25.z * r25.z;
                      r21.w = r21.w * r25.z;
                    } else {
                      r21.w = 1;
                    }
                    r16.w = r21.w * r16.w;
                  }
                }
                r21.w = -r21.z * r2.x + 1;
                r21.w = r21.w * r21.w;
                r21.w = -r21.w * 0.620000005 + 0.620000005;
                r21.w = r21.w + -r21.z;
                r21.z = r2.z * r21.w + r21.z;
                r21.z = r21.z * r16.w;
                r27.x = lightConstantsCB[r15.w].data[0].w;
                r27.yz = lightConstantsCB[r15.w].data[1].xy;
                r15.w = cmp(0 < r21.y);
                r29.xyz = r21.zzz * r27.xyz + r35.xyz;
                r21.y = saturate(dot(r11.xyz, r23.xyw));
                r22.yzw = r22.yzw * r19.yyy + r12.xyz;
                r19.y = dot(r22.yzw, r22.yzw);
                r19.y = rsqrt(r19.y);
                r22.yzw = r22.yzw * r19.yyy;
                r19.y = dot(r22.yzw, r12.xyz);
                r21.w = dot(r11.xyz, r22.yzw);
                r22.y = abs(r21.w) * r1.w + -abs(r21.w);
                r21.w = abs(r21.w) * r22.y + 1;
                r22.y = r21.y * r2.y + r7.w;
                r21.w = r21.w * r21.w;
                r21.w = r21.w * r22.y;
                r21.w = rcp(r21.w);
                r18.w = r21.y * r18.w;
                r18.w = r21.w * r18.w;
                r18.w = r18.w * r16.w;
                r22.yzw = r18.www * r27.xyz + r38.xyz;
                r19.y = saturate(1 + -r19.y);
                r21.y = r19.y * r19.y;
                r21.y = r21.y * r21.y;
                r19.y = r21.y * r19.y;
                r18.w = r19.y * r18.w;
                r23.xyw = r18.www * r27.xyz + r37.xyz;
                r21.yzw = r21.zzz * r27.xyz + r36.xyz;
                r21.yzw = r0.www ? r21.yzw : r36.xyz;
                r35.xyz = r15.www ? r29.xyz : r35.xyz;
                r36.xyz = r15.www ? r36.xyz : r21.yzw;
                r37.xyz = r15.www ? r23.xyw : r37.xyz;
                r38.xyz = r15.www ? r22.yzw : r38.xyz;
                r15.w = (int)r24.x & 255;
                r18.w = (int)r15.w + -1;
                r18.w = cmp((uint)r18.w < 32);
                r18.w = r18.w ? r2.w : 0;
                if (r18.w != 0) {
                  r21.yz = mad((int2)r15.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r15.w, cb2[52].x, r21.y, u2.xxxx
                r15.w = samp0[]..swiz;
                  r15.w = (int)r15.w | 8;
                  GBufferDiffuseColor[viewID].r21.y = u2.x;
                  GBufferDiffuseColor[viewID].r21.z = u2.x;
                }
                r12.w = (int)r12.w + 0x00010101;
              } else {
                r12.w = r24.x;
              }
            } else {
              r12.w = r17.w;
            }
          } else {
            r12.w = r17.w;
          }
        }
      }
    }
    r14.yzw = r35.xyz;
    r32.xyz = r36.xyz;
    r33.xyz = r37.xyz;
    r34.xyz = r38.xyz;
    r6.w = r12.w;
    r8.w = (int)r8.w + 32;
  }
  r3.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r3.y;
  r2.xyz = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.z == (int)r1.z);
  r1.zw = r1.zz ? r2.yz : float2(-1,0);
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.z == (int)r2.x);
  r2.xy = r2.xx ? r2.yz : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r4.x;
  r2.z = cmp((int)r0.z == (int)r2.z);
  r4.xy = r2.zz ? r4.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r6.x;
  r0.z = cmp((int)r0.z == (int)r2.z);
  r4.zw = r0.zz ? r6.yz : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.zw = r4.xz;
  r7.xyzw = r7.xyzw + -r3.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r7.x + r7.y;
  r0.z = r0.z + r7.z;
  r0.z = r0.z + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r4.y + r1.z;
  r1.z = r7.w * r4.w + r1.z;
  r3.w = r1.z / r0.z;
  r0.z = cmp(0 >= r0.z);
  r3.yz = r0.zz ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.z = cmp((int)r1.w == (int)r1.z);
  r2.xyz = r0.zzz ? r3.xyz : r3.xzy;
  r0.z = -r2.z * 0.5 + r2.x;
  r3.y = r2.z + r0.z;
  r3.z = -r2.y * 0.5 + r0.z;
  r3.x = r3.z + r2.y;
  r2.xyz = r14.yzw * r5.yzw;
  r2.xyz = r32.xyz * r3.xyz + r2.xyz;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r33.xyz;
  r4.xyz = r34.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r4.xyz = r33.xyz * r4.xyz;
  r3.xyz = r34.xyz * r3.xyz + r4.xyz;
  r3.xyz = r14.yzw * r5.yzw + r3.xyz;
  r2.xyz = r0.www ? r2.xyz : r3.xyz;
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
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xyz;
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
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r5.xyz);
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
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
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
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyz = r0.zzz * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
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
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.zzz ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.z = (int)r6.w & 255;
        break;
        case 2 :        if (8 == 0) r0.z = 0; else if (8+8 < 32) {         r0.z = (uint)r6.w << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r6.w >> 8;
        break;
        case 3 :        if (8 == 0) r0.z = 0; else if (8+16 < 32) {         r0.z = (uint)r6.w << (32-(8 + 16)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r6.w >> 16;
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
      r3.xyz = r0.zzz * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyz + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r2.w != 0) {
    r1.xyz = eyeOffset.xyz + r10.xyz;
    r1.w = (int)r6.w & 255;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.z = (int)r6.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.z
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.x = 0; else if (8+8 < 32) {     r1.x = (uint)r6.w << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);    } else r1.x = (uint)r6.w >> 8;
    if (8 == 0) r1.y = 0; else if (8+16 < 32) {     r1.y = (uint)r6.w << (32-(8 + 16)); r1.y = (uint)r1.y >> (32-8);    } else r1.y = (uint)r6.w >> 16;
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