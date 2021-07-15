// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:24 2021

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
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<gPermutedTilingBuffer> gPermutedTilingBuffer : register(t25);
StructuredBuffer<gDeferredCullBits> gDeferredCullBits : register(t26);
Texture2D<float> gSSAOTexture : register(t27);


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
  r0.x = mad(permuteStride, 20, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
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
  r0.z = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r4.x, r13.x);
  r2.zw = (uint2)r1.yx;
  r0.z = dot(r2.zw, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r0.z = r0.z * 6.28318548 + gameTick.w;
  sincos(r0.z, r5.x, r14.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.z = dot(-r12.xyz, r11.xyz);
  r0.z = r0.z + r0.z;
  r15.xyz = r11.xyz * -r0.zzz + -r12.xyz;
  r0.z = 17 * r2.y;
  r0.z = exp2(r0.z);
  r0.z = 2 + r0.z;
  r0.z = 2 / r0.z;
  r1.w = sqrt(r0.z);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r2.z = r2.w ? r2.z : 0;
  r2.w = 1 + -r2.y;
  r2.w = 5 * r2.w;
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
  r4.z = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r15.w = 0;
  r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r2.w).xyz;
  r2.w = sunConstants.globalProbeExposure + -r4.z;
  r2.w = r2.y * r2.w + r4.z;
  r16.xyz = r16.xyz * r2.www;
  r2.w = r2.x + r3.z;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r3.z;
  r2.w = saturate(-1 + r2.w);
  r14.yzw = r14.yzw * r3.zzz;
  r17.xyz = r0.www ? r14.yzw : 0;
  r4.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r4.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.zw, 0).xy;
  r16.xyz = r16.xyz * r2.www;
  r18.xyz = r16.xyz * r4.zzz;
  r16.xyz = r16.xyz * r4.www;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r3.z = r2.x * r2.y + r2.w;
  r2.yw = r3.zz * r2.yw;
  r3.z = (uint)renderTargetSize.x;
  r3.z = (int)r3.z + 7;
  r3.z = (uint)r3.z >> 3;
  r3.z = mad((int)r0.y, (int)r3.z, (int)r0.x);
  r3.z = (uint)r3.z << 5;
  r4.z = ~(int)r1.z;
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
  r31.xyz = r14.yzw;
  r32.xyz = r17.xyz;
  r33.xyz = r18.xyz;
  r34.xyz = r16.xyz;
  r4.w = enableDitheredShadow;
  r6.w = 0;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= numLights);
    if (r8.w != 0) break;
    r8.w = (uint)r7.w >> 5;
    r8.w = (int)r3.z + (int)r8.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(0), t26.xxxx
  r8.w = samplerLinear[]..swiz;
    r35.xyz = r31.xyz;
    r36.xyz = r32.xyz;
    r37.xyz = r33.xyz;
    r38.xyz = r34.xyz;
    r9.w = r4.w;
    r11.w = r6.w;
    r12.w = r8.w;
    while (true) {
      if (r12.w == 0) break;
      r13.w = firstbitlow((uint)r12.w);
      r15.w = 1 << (int)r13.w;
      r15.w = ~(int)r15.w;
      r12.w = (int)r12.w & (int)r15.w;
      r13.w = (int)r7.w + (int)r13.w;
      r13.w = (int)r13.w * 15;
      if (3 == 0) r15.w = 0; else if (3+24 < 32) {       r15.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(3 + 24)); r15.w = (uint)r15.w >> (32-3);      } else r15.w = (uint)lightConstantsCB[r13.w].data[1].w >> 24;
      r16.w = cmp((int)r15.w == 2);
      if (r16.w != 0) {
        if (3 == 0) r16.w = 0; else if (3+27 < 32) {         r16.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);        } else r16.w = (uint)lightConstantsCB[r13.w].data[1].w >> 27;
        r17.w = (int)r11.w & 255;
        r18.w = cmp((uint)r17.w < 32);
        r18.w = r2.z ? r18.w : 0;
        if (r18.w != 0) {
          r17.w = mad((int)r17.w, 24, 112);
          r20.yzw = lightConstantsCB[r13.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r17.w = u2.xyzw;
        }
        r17.w = (int)r11.w + 1;
        r39.xy = lightConstantsCB[r13.w].data[3].zw + -r10.xy;
        r39.z = lightConstantsCB[r13.w].data[4].x + -r10.z;
        r18.w = dot(r39.xyz, r39.xyz);
        r18.w = rsqrt(r18.w);
        r20.yzw = r39.xyz * r18.www;
        r22.w = lightConstantsCB[r13.w].data[1].z * r0.z;
        r22.w = 0.25 * r22.w;
        r20.y = dot(r11.xyz, r20.yzw);
        r20.z = saturate(r20.y);
        r20.w = r0.w ? abs(r20.y) : r20.z;
        r27.w = cmp(0 < r20.w);
        if (r27.w != 0) {
          r40.xyz = lightConstantsCB[r13.w].data[7].yzw;
          r40.w = lightConstantsCB[r13.w].data[8].x;
          r27.w = dot(r40.xyzw, r10.xyzw);
          r29.w = cmp(r27.w < 1);
          if (r29.w != 0) {
            r41.xyz = float3(1,1,1);
            r29.w = 0;
          } else {
            r42.xyz = lightConstantsCB[r13.w].data[0].xyz + -r10.xyz;
            r30.w = lightConstantsCB[r13.w].data[3].x * lightConstantsCB[r13.w].data[3].x;
            r31.w = dot(r42.xyz, r42.xyz);
            r30.w = r30.w / r31.w;
            r30.w = min(1, r30.w);
            r42.xy = saturate(r27.ww * lightConstantsCB[r13.w].data[2].xz + lightConstantsCB[r13.w].data[2].yw);
            r42.zw = r42.xy * r42.xy;
            r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
            r42.xy = r42.zw * r42.xy;
            r30.w = r42.x * r30.w;
            r30.w = r30.w * r42.y;
            r42.xyz = lightConstantsCB[r13.w].data[4].yzw;
            r42.w = lightConstantsCB[r13.w].data[5].x;
            r42.x = dot(r42.xyzw, r10.xyzw);
            r43.xyz = lightConstantsCB[r13.w].data[5].yzw;
            r43.w = lightConstantsCB[r13.w].data[6].x;
            r42.y = dot(r43.xyzw, r10.xyzw);
            r22.xy = r42.xy / r27.ww;
            r27.w = cmp(lightConstantsCB[r13.w].data[10].w < 0.00048828125);
            if (r27.w != 0) {
              r42.xy = saturate(abs(r22.xy) * lightConstantsCB[r13.w].data[12].xy + lightConstantsCB[r13.w].data[12].zw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r27.w = r42.x * r42.y;
            } else {
              r42.xyzw = saturate(lightConstantsCB[r13.w].data[11].xyzw * abs(r22.yyxx));
              r42.xyzw = log2(r42.xyzw);
              r42.xyzw = lightConstantsCB[r13.w].data[12].zzzz * r42.xyzw;
              r42.xyzw = exp2(r42.xyzw);
              r42.xy = r42.xy + r42.zw;
              r42.xy = log2(r42.xy);
              r42.xy = lightConstantsCB[r13.w].data[12].ww * r42.xy;
              r42.xy = exp2(r42.xy);
              r31.w = lightConstantsCB[r13.w].data[12].x * r42.x;
              r32.w = lightConstantsCB[r13.w].data[12].y * r42.y + -1;
              r31.w = lightConstantsCB[r13.w].data[12].y * r42.y + -r31.w;
              r31.w = saturate(r32.w / r31.w);
              r32.w = r31.w * r31.w;
              r31.w = r31.w * -2 + 3;
              r27.w = r32.w * r31.w;
            }
            r29.w = r30.w * r27.w;
            r27.w = 255 & (int)lightConstantsCB[r13.w].data[14].w;
            if (r27.w != 0) {
              r30.w = dot(lightConstantsCB[r13.w].data[13].xyz, r22.xyz);
              r42.x = lightConstantsCB[r13.w].data[13].w;
              r42.yz = lightConstantsCB[r13.w].data[14].xy;
              r22.x = dot(r42.xyz, r22.xyz);
              r42.x = frac(r30.w);
              r42.y = frac(r22.x);
              r22.x = (int)r27.w + -1;
              r42.z = (uint)r22.x;
              r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r42.xyz, 0).xyz;
            } else {
              r41.xyz = float3(1,1,1);
            }
          }
          r42.x = lightConstantsCB[r13.w].data[0].w;
          r42.yz = lightConstantsCB[r13.w].data[1].xy;
          r41.xyz = r42.xyz * r41.xyz;
          r22.x = cmp(0 < r29.w);
          if (r22.x != 0) {
            r22.x = (int)r17.w & 255;
            r22.y = (int)r22.x + -1;
            r22.y = cmp((uint)r22.y < 32);
            r22.y = r2.z ? r22.y : 0;
            if (r22.y != 0) {
              r22.xy = mad((int2)r22.xx, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r27.w, cb2[52].x, r22.x, u2.xxxx
            r27.w = samplerLinear[]..swiz;
              r27.w = (int)r27.w | 4;
              GBufferDiffuseColor[viewID].r22.x = u2.x;
              GBufferDiffuseColor[viewID].r22.y = u2.x;
            }
            r22.x = (int)r11.w + 257;
            r16.w = cmp((int)r16.w != 1);
            if (r16.w != 0) {
              r16.w = abs(r20.y) * -0.200000003 + 0.400000006;
              r22.y = cmp(r20.y < 0);
              r22.y = r0.w ? r22.y : 0;
              r16.w = r22.y ? -r16.w : r16.w;
              r23.xyz = r11.xyz * r16.www + r10.xyz;
              r42.xyz = lightConstantsCB[r13.w].data[6].yzw;
              r42.w = lightConstantsCB[r13.w].data[7].x;
              r16.w = dot(r42.xyzw, r23.xyzw);
              r22.y = dot(r40.xyzw, r23.xyzw);
              r27.w = cmp(r22.y >= r16.w);
              if (r27.w != 0) {
                r40.xyz = lightConstantsCB[r13.w].data[4].yzw;
                r40.w = lightConstantsCB[r13.w].data[5].x;
                r40.x = dot(r40.xyzw, r23.xyzw);
                r42.xyz = lightConstantsCB[r13.w].data[5].yzw;
                r42.w = lightConstantsCB[r13.w].data[6].x;
                r40.y = dot(r42.xyzw, r23.xyzw);
                r23.xy = r40.xy / r22.yy;
                r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r40.x = r23.x * lightConstantsCB[r13.w].data[8].y + lightConstantsCB[r13.w].data[8].z;
                r40.y = r23.y * lightConstantsCB[r13.w].data[8].w + lightConstantsCB[r13.w].data[9].x;
                r16.w = r16.w / r22.y;
                r16.w = max(6.10351563e-05, r16.w);
                r22.y = 0x0000ffff & (int)lightConstantsCB[r13.w].data[1].w;
                if (r9.w != 0) {
                  r23.z = (uint)r22.y;
                  r27.w = 0;
                  r30.w = 0;
                  while (true) {
                    r31.w = cmp((int)r30.w >= 8);
                    if (r31.w != 0) break;
                    r42.x = dot(icb[r30.w+0].yx, r19.xy);
                    r42.y = dot(icb[r30.w+0].yx, r19.yz);
                    r23.xy = r42.xy * lightConstantsCB[r13.w].data[3].yy + r40.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.w).x;
                    r27.w = r23.x * 0.125 + r27.w;
                    r30.w = (int)r30.w + 1;
                  }
                } else {
                  r40.z = (uint)r22.y;
                  r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r16.w).x;
                }
                r16.w = r27.w * r27.w;
                r16.w = r16.w * r27.w;
              } else {
                r16.w = 1;
              }
            } else {
              r16.w = 1;
            }
            r16.w = r29.w * r16.w;
            r22.y = cmp(0 < r16.w);
            if (r22.y != 0) {
              if (4 == 0) r22.y = 0; else if (4+16 < 32) {               r22.y = (uint)lightConstantsCB[r13.w].data[1].w << (32-(4 + 16)); r22.y = (uint)r22.y >> (32-4);              } else r22.y = (uint)lightConstantsCB[r13.w].data[1].w >> 16;
              r23.x = cmp(0 < (uint)r22.y);
              r23.x = r23.x ? r1.z : 0;
              if (r23.x != 0) {
                r22.y = (int)r22.y + numLights;
                r22.y = mad((int)r22.y, 15, -15);
                r23.x = abs(r20.y) * -0.200000003 + 0.400000006;
                r23.y = cmp(r20.y < 0);
                r23.y = r0.w ? r23.y : 0;
                r23.x = r23.y ? -r23.x : r23.x;
                r24.xyz = r11.xyz * r23.xxx + r10.xyz;
                r40.xyz = lightConstantsCB[r22.y].data[6].yzw;
                r40.w = lightConstantsCB[r22.y].data[7].x;
                r23.x = dot(r40.xyzw, r24.xyzw);
                r40.xyz = lightConstantsCB[r22.y].data[7].yzw;
                r40.w = lightConstantsCB[r22.y].data[8].x;
                r23.y = dot(r40.xyzw, r24.xyzw);
                r23.z = cmp(r23.y < r23.x);
                if (r23.z == 0) {
                  r40.xyz = lightConstantsCB[r22.y].data[4].yzw;
                  r40.w = lightConstantsCB[r22.y].data[5].x;
                  r40.x = dot(r40.xyzw, r24.xyzw);
                  r42.xyz = lightConstantsCB[r22.y].data[5].yzw;
                  r42.w = lightConstantsCB[r22.y].data[6].x;
                  r40.y = dot(r42.xyzw, r24.xyzw);
                  r24.xy = r40.xy / r23.yy;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r40.x = lightConstantsCB[r22.y].data[9].w + r24.x;
                  r40.y = lightConstantsCB[r22.y].data[10].x + r24.y;
                  r24.xy = lightConstantsCB[r22.y].data[9].yz * r40.xy;
                  r40.xy = lightConstantsCB[r22.y].data[3].yy / lightConstantsCB[r22.y].data[8].yw;
                  r40.zw = float2(1,1) + -r40.xy;
                  r40.zw = cmp(r24.xy >= r40.zw);
                  r40.xy = cmp(r40.xy >= r24.xy);
                  r40.xy = (int2)r40.xy | (int2)r40.zw;
                  r24.z = (int)r40.y | (int)r40.x;
                  if (r24.z == 0) {
                    r24.xy = saturate(r24.xy);
                    r40.x = r24.x * lightConstantsCB[r22.y].data[8].y + lightConstantsCB[r22.y].data[8].z;
                    r40.y = r24.y * lightConstantsCB[r22.y].data[8].w + lightConstantsCB[r22.y].data[9].x;
                    r24.x = lightConstantsCB[r22.y].data[10].z * r23.y;
                    r23.x = lightConstantsCB[r22.y].data[10].y * r23.y + r23.x;
                    r23.x = r23.x / r24.x;
                  }
                } else {
                  r24.z = -1;
                }
                r23.y = (int)r23.z | (int)r24.z;
                if (r23.y == 0) {
                  r23.x = max(6.10351563e-05, r23.x);
                  r23.y = 0x0000ffff & (int)lightConstantsCB[r22.y].data[1].w;
                  if (r9.w != 0) {
                    r24.z = (uint)r23.y;
                    r23.z = 0;
                    r29.w = 0;
                    while (true) {
                      r30.w = cmp((int)r29.w >= 8);
                      if (r30.w != 0) break;
                      r42.x = dot(icb[r29.w+0].yx, r19.xw);
                      r42.y = dot(icb[r29.w+0].xy, r4.xy);
                      r24.xy = r42.xy * lightConstantsCB[r22.y].data[3].yy + r40.xy;
                      r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r23.x).x;
                      r23.z = r24.x * 0.125 + r23.z;
                      r29.w = (int)r29.w + 1;
                    }
                  } else {
                    r40.z = (uint)r23.y;
                    r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r23.x).x;
                  }
                  r22.y = r23.z * r23.z;
                  r22.y = r22.y * r23.z;
                } else {
                  r22.y = 1;
                }
                r16.w = r22.y * r16.w;
              } else {
                if (4 == 0) r22.y = 0; else if (4+20 < 32) {                 r22.y = (uint)lightConstantsCB[r13.w].data[1].w << (32-(4 + 20)); r22.y = (uint)r22.y >> (32-4);                } else r22.y = (uint)lightConstantsCB[r13.w].data[1].w >> 20;
                r23.x = cmp(0 < (uint)r22.y);
                r23.x = r23.x ? r4.z : 0;
                if (r23.x != 0) {
                  r22.y = (int)r22.y + numLights;
                  r22.y = mad((int)r22.y, 15, -15);
                  r23.x = abs(r20.y) * -0.200000003 + 0.400000006;
                  r23.y = cmp(r20.y < 0);
                  r23.y = r0.w ? r23.y : 0;
                  r23.x = r23.y ? -r23.x : r23.x;
                  r25.xyz = r11.xyz * r23.xxx + r10.xyz;
                  r40.xyz = lightConstantsCB[r22.y].data[6].yzw;
                  r40.w = lightConstantsCB[r22.y].data[7].x;
                  r23.x = dot(r40.xyzw, r25.xyzw);
                  r40.xyz = lightConstantsCB[r22.y].data[7].yzw;
                  r40.w = lightConstantsCB[r22.y].data[8].x;
                  r23.y = dot(r40.xyzw, r25.xyzw);
                  r24.x = cmp(r23.y < r23.x);
                  if (r24.x == 0) {
                    r40.xyz = lightConstantsCB[r22.y].data[4].yzw;
                    r40.w = lightConstantsCB[r22.y].data[5].x;
                    r40.x = dot(r40.xyzw, r25.xyzw);
                    r42.xyz = lightConstantsCB[r22.y].data[5].yzw;
                    r42.w = lightConstantsCB[r22.y].data[6].x;
                    r40.y = dot(r42.xyzw, r25.xyzw);
                    r24.yz = r40.xy / r23.yy;
                    r24.yz = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r25.x = lightConstantsCB[r22.y].data[9].w + r24.y;
                    r25.y = lightConstantsCB[r22.y].data[10].x + r24.z;
                    r24.yz = lightConstantsCB[r22.y].data[9].yz * r25.xy;
                    r25.xy = lightConstantsCB[r22.y].data[3].yy / lightConstantsCB[r22.y].data[8].yw;
                    r40.xy = float2(1,1) + -r25.xy;
                    r40.xy = cmp(r24.yz >= r40.xy);
                    r25.xy = cmp(r25.xy >= r24.yz);
                    r25.xy = (int2)r25.xy | (int2)r40.xy;
                    r25.x = (int)r25.y | (int)r25.x;
                    if (r25.x == 0) {
                      r24.yz = saturate(r24.yz);
                      r40.x = r24.y * lightConstantsCB[r22.y].data[8].y + lightConstantsCB[r22.y].data[8].z;
                      r40.y = r24.z * lightConstantsCB[r22.y].data[8].w + lightConstantsCB[r22.y].data[9].x;
                      r24.y = lightConstantsCB[r22.y].data[10].z * r23.y;
                      r23.x = lightConstantsCB[r22.y].data[10].y * r23.y + r23.x;
                      r23.x = r23.x / r24.y;
                    }
                  } else {
                    r25.x = -1;
                  }
                  r23.y = (int)r24.x | (int)r25.x;
                  if (r23.y == 0) {
                    r23.x = max(6.10351563e-05, r23.x);
                    r23.y = 0x0000ffff & (int)lightConstantsCB[r22.y].data[1].w;
                    if (r9.w != 0) {
                      r24.z = (uint)r23.y;
                      r25.xy = float2(0,0);
                      while (true) {
                        r25.z = cmp((int)r25.y >= 8);
                        if (r25.z != 0) break;
                        r42.x = dot(icb[r25.y+0].xy, r27.xy);
                        r42.y = dot(icb[r25.y+0].yx, r27.xz);
                        r24.xy = r42.xy * lightConstantsCB[r22.y].data[3].yy + r40.xy;
                        r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r23.x).x;
                        r25.x = r24.x * 0.125 + r25.x;
                        r25.y = (int)r25.y + 1;
                      }
                    } else {
                      r40.z = (uint)r23.y;
                      r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r23.x).x;
                    }
                    r22.y = r25.x * r25.x;
                    r22.y = r22.y * r25.x;
                  } else {
                    r22.y = 1;
                  }
                  r16.w = r22.y * r16.w;
                }
              }
              r22.y = -r20.w * r2.x + 1;
              r22.y = r22.y * r22.y;
              r22.y = -r22.y * 0.620000005 + 0.620000005;
              r22.y = r22.y + -r20.w;
              r20.w = r1.w * r22.y + r20.w;
              r20.w = r20.w * r16.w;
              r20.y = cmp(0 < r20.y);
              r24.xyz = r20.www * r41.xyz + r35.xyz;
              r39.xyz = r39.xyz * r18.www + r12.xyz;
              r18.w = dot(r39.xyz, r39.xyz);
              r18.w = rsqrt(r18.w);
              r39.xyz = r39.xyz * r18.www;
              r18.w = dot(r39.xyz, r12.xyz);
              r22.y = dot(r11.xyz, r39.xyz);
              r23.x = abs(r22.y) * r0.z + -abs(r22.y);
              r22.y = abs(r22.y) * r23.x + 1;
              r23.x = r20.z * r2.y + r2.w;
              r22.y = r22.y * r22.y;
              r22.y = r22.y * r23.x;
              r22.y = rcp(r22.y);
              r20.z = r20.z * r22.w;
              r20.z = r22.y * r20.z;
              r20.z = r20.z * r16.w;
              r39.xyz = r20.zzz * r41.xyz + r38.xyz;
              r18.w = saturate(1 + -r18.w);
              r22.y = r18.w * r18.w;
              r22.y = r22.y * r22.y;
              r18.w = r22.y * r18.w;
              r18.w = r20.z * r18.w;
              r40.xyz = r18.www * r41.xyz + r37.xyz;
              r41.xyz = r20.www * r41.xyz + r36.xyz;
              r41.xyz = r0.www ? r41.xyz : r36.xyz;
              r35.xyz = r20.yyy ? r24.xyz : r35.xyz;
              r36.xyz = r20.yyy ? r36.xyz : r41.xyz;
              r37.xyz = r20.yyy ? r40.xyz : r37.xyz;
              r38.xyz = r20.yyy ? r39.xyz : r38.xyz;
              r18.w = (int)r22.x & 255;
              r20.y = (int)r18.w + -1;
              r20.y = cmp((uint)r20.y < 32);
              r20.y = r2.z ? r20.y : 0;
              if (r20.y != 0) {
                r20.yz = mad((int2)r18.ww, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.w, cb2[52].x, r20.y, u2.xxxx
              r18.w = samplerLinear[]..swiz;
                r18.w = (int)r18.w | 8;
                GBufferDiffuseColor[viewID].r20.y = u2.x;
                GBufferDiffuseColor[viewID].r20.z = u2.x;
              }
              r11.w = (int)r11.w + 0x00010101;
            } else {
              r11.w = r22.x;
            }
          } else {
            r11.w = r17.w;
          }
        } else {
          r11.w = r17.w;
        }
      } else {
        r15.w = cmp((int)r15.w == 4);
        if (r15.w != 0) {
          if (3 == 0) r15.w = 0; else if (3+27 < 32) {           r15.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(3 + 27)); r15.w = (uint)r15.w >> (32-3);          } else r15.w = (uint)lightConstantsCB[r13.w].data[1].w >> 27;
          r16.w = (int)r11.w & 255;
          r17.w = cmp((uint)r16.w < 32);
          r17.w = r2.z ? r17.w : 0;
          if (r17.w != 0) {
            r16.w = mad((int)r16.w, 24, 112);
            r21.yzw = lightConstantsCB[r13.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r16.w = u2.xyzw;
          }
          r16.w = (int)r11.w + 1;
          r17.w = lightConstantsCB[r13.w].data[1].z * r0.z;
          r17.w = 0.25 * r17.w;
          r18.w = cmp(0 < lightConstantsCB[r13.w].data[6].y);
          r24.xy = lightConstantsCB[r13.w].data[5].zw;
          r24.z = lightConstantsCB[r13.w].data[6].x;
          r20.yzw = -r24.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r13.w].data[0].xyz;
          r21.yzw = r20.yzw + -r10.xyz;
          r22.x = dot(r24.xyz, r15.xyz);
          r22.y = dot(r24.xyz, r21.yzw);
          r21.y = dot(r15.xyz, r21.yzw);
          r21.z = -r22.x * r22.x + lightConstantsCB[r13.w].data[6].y;
          r21.y = r22.x * r21.y + -r22.y;
          r21.w = saturate(-r22.y / lightConstantsCB[r13.w].data[6].y);
          r21.y = saturate(r21.y / r21.z);
          r21.z = r21.z / lightConstantsCB[r13.w].data[6].y;
          r21.z = 10 * r21.z;
          r21.z = min(1, r21.z);
          r21.y = r21.y + -r21.w;
          r21.y = r21.z * r21.y + r21.w;
          r22.xyw = r21.yyy * r24.xyz + r20.yzw;
          r20.yzw = r21.www * r24.xyz + r20.yzw;
          r20.yzw = r18.www ? r20.yzw : lightConstantsCB[r13.w].data[0].xyz;
          r21.yzw = r18.www ? r22.xyw : lightConstantsCB[r13.w].data[0].xyz;
          r21.yzw = r21.yzw + -r10.xyz;
          r20.yzw = r20.yzw + -r10.xyz;
          r18.w = dot(r21.yzw, r21.yzw);
          r18.w = rsqrt(r18.w);
          r22.xyw = r21.yzw * r18.www;
          r23.x = dot(r20.yzw, r20.yzw);
          r23.y = rsqrt(r23.x);
          r20.yzw = r23.yyy * r20.yzw;
          r20.y = dot(r11.xyz, r20.yzw);
          r20.z = saturate(r20.y);
          r20.z = r0.w ? abs(r20.y) : r20.z;
          r20.w = cmp(0 < r20.z);
          if (r20.w != 0) {
            r20.w = sqrt(r23.x);
            r23.y = lightConstantsCB[r13.w].data[3].x * lightConstantsCB[r13.w].data[3].x;
            r23.x = r23.y / r23.x;
            r23.x = min(1, r23.x);
            r24.xy = saturate(r20.ww * lightConstantsCB[r13.w].data[2].xz + lightConstantsCB[r13.w].data[2].yw);
            r25.yz = r24.xy * r24.xy;
            r24.xy = r24.xy * float2(-2,-2) + float2(3,3);
            r24.xy = r25.yz * r24.xy;
            r20.w = r24.x * r23.x;
            r20.w = r20.w * r24.y;
            r23.x = cmp(0 < r20.w);
            if (r23.x != 0) {
              r23.x = (int)r16.w & 255;
              r23.y = (int)r23.x + -1;
              r23.y = cmp((uint)r23.y < 32);
              r23.y = r2.z ? r23.y : 0;
              if (r23.y != 0) {
                r23.xy = mad((int2)r23.xx, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r24.x, cb2[52].x, r23.x, u2.xxxx
              r24.x = samplerLinear[]..swiz;
                r24.x = (int)r24.x | 4;
                GBufferDiffuseColor[viewID].r23.x = u2.x;
                GBufferDiffuseColor[viewID].r23.y = u2.x;
              }
              r23.x = (int)r11.w + 257;
              r15.w = cmp((int)r15.w != 1);
              if (r15.w != 0) {
                r15.w = abs(r20.y) * -0.200000003 + 0.400000006;
                r23.y = cmp(r20.y < 0);
                r23.y = r0.w ? r23.y : 0;
                r15.w = r23.y ? -r15.w : r15.w;
                r24.xyz = r11.xyz * r15.www + r10.xyz;
                r24.xyz = -lightConstantsCB[r13.w].data[4].yzw + r24.xyz;
                r15.w = max(abs(r24.y), abs(r24.z));
                r15.w = max(abs(r24.x), r15.w);
                r15.w = lightConstantsCB[r13.w].data[5].x / r15.w;
                r15.w = lightConstantsCB[r13.w].data[5].y + r15.w;
                r23.y = dot(r24.xyz, r24.xyz);
                r23.y = rsqrt(r23.y);
                r15.w = max(6.10351563e-05, r15.w);
                r25.y = 0x0000ffff & (int)lightConstantsCB[r13.w].data[1].w;
                r39.w = (uint)r25.y;
                r25.yz = float2(0,0);
                while (true) {
                  r29.w = cmp((int)r25.z >= 8);
                  if (r29.w != 0) break;
                  r40.y = dot(icb[r25.z+0].xy, r13.xy);
                  r40.z = dot(icb[r25.z+0].yx, r13.xz);
                  r40.yz = lightConstantsCB[r13.w].data[3].yy * r40.yz;
                  r40.x = r40.y * r14.x;
                  r40.w = r40.y * r5.x;
                  r39.xyz = r24.xyz * r23.yyy + r40.xzw;
                  r29.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyzw, r15.w).x;
                  r25.y = r29.w * 0.125 + r25.y;
                  r25.z = (int)r25.z + 1;
                }
              } else {
                r25.y = 1;
              }
              r15.w = r25.y * r20.w;
              r20.w = cmp(0 < r15.w);
              if (r20.w != 0) {
                if (4 == 0) r20.w = 0; else if (4+16 < 32) {                 r20.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(4 + 16)); r20.w = (uint)r20.w >> (32-4);                } else r20.w = (uint)lightConstantsCB[r13.w].data[1].w >> 16;
                r23.y = cmp(0 < (uint)r20.w);
                r23.y = r23.y ? r1.z : 0;
                if (r23.y != 0) {
                  r20.w = (int)r20.w + numLights;
                  r20.w = mad((int)r20.w, 15, -15);
                  r23.y = abs(r20.y) * -0.200000003 + 0.400000006;
                  r24.x = cmp(r20.y < 0);
                  r24.x = r0.w ? r24.x : 0;
                  r23.y = r24.x ? -r23.y : r23.y;
                  r26.xyz = r11.xyz * r23.yyy + r10.xyz;
                  r39.xyz = lightConstantsCB[r20.w].data[6].yzw;
                  r39.w = lightConstantsCB[r20.w].data[7].x;
                  r23.y = dot(r39.xyzw, r26.xyzw);
                  r39.xyz = lightConstantsCB[r20.w].data[7].yzw;
                  r39.w = lightConstantsCB[r20.w].data[8].x;
                  r24.x = dot(r39.xyzw, r26.xyzw);
                  r24.y = cmp(r24.x < r23.y);
                  if (r24.y == 0) {
                    r39.xyz = lightConstantsCB[r20.w].data[4].yzw;
                    r39.w = lightConstantsCB[r20.w].data[5].x;
                    r39.x = dot(r39.xyzw, r26.xyzw);
                    r40.xyz = lightConstantsCB[r20.w].data[5].yzw;
                    r40.w = lightConstantsCB[r20.w].data[6].x;
                    r39.y = dot(r40.xyzw, r26.xyzw);
                    r26.xy = r39.xy / r24.xx;
                    r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r39.x = lightConstantsCB[r20.w].data[9].w + r26.x;
                    r39.y = lightConstantsCB[r20.w].data[10].x + r26.y;
                    r26.xy = lightConstantsCB[r20.w].data[9].yz * r39.xy;
                    r39.xy = lightConstantsCB[r20.w].data[3].yy / lightConstantsCB[r20.w].data[8].yw;
                    r39.zw = float2(1,1) + -r39.xy;
                    r39.zw = cmp(r26.xy >= r39.zw);
                    r39.xy = cmp(r39.xy >= r26.xy);
                    r39.xy = (int2)r39.xy | (int2)r39.zw;
                    r24.z = (int)r39.y | (int)r39.x;
                    if (r24.z == 0) {
                      r26.xy = saturate(r26.xy);
                      r39.x = r26.x * lightConstantsCB[r20.w].data[8].y + lightConstantsCB[r20.w].data[8].z;
                      r39.y = r26.y * lightConstantsCB[r20.w].data[8].w + lightConstantsCB[r20.w].data[9].x;
                      r25.z = lightConstantsCB[r20.w].data[10].z * r24.x;
                      r23.y = lightConstantsCB[r20.w].data[10].y * r24.x + r23.y;
                      r23.y = r23.y / r25.z;
                    }
                  } else {
                    r24.z = -1;
                  }
                  r24.x = (int)r24.y | (int)r24.z;
                  if (r24.x == 0) {
                    r23.y = max(6.10351563e-05, r23.y);
                    r24.x = 0x0000ffff & (int)lightConstantsCB[r20.w].data[1].w;
                    if (r9.w != 0) {
                      r26.z = (uint)r24.x;
                      r24.yz = float2(0,0);
                      while (true) {
                        r25.z = cmp((int)r24.z >= 8);
                        if (r25.z != 0) break;
                        r40.x = dot(icb[r24.z+0].xy, r29.xy);
                        r40.y = dot(icb[r24.z+0].yx, r29.xz);
                        r26.xy = r40.xy * lightConstantsCB[r20.w].data[3].yy + r39.xy;
                        r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r23.y).x;
                        r24.y = r25.z * 0.125 + r24.y;
                        r24.z = (int)r24.z + 1;
                      }
                    } else {
                      r39.z = (uint)r24.x;
                      r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r23.y).x;
                    }
                    r20.w = r24.y * r24.y;
                    r20.w = r20.w * r24.y;
                  } else {
                    r20.w = 1;
                  }
                  r15.w = r20.w * r15.w;
                } else {
                  if (4 == 0) r20.w = 0; else if (4+20 < 32) {                   r20.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(4 + 20)); r20.w = (uint)r20.w >> (32-4);                  } else r20.w = (uint)lightConstantsCB[r13.w].data[1].w >> 20;
                  r23.y = cmp(0 < (uint)r20.w);
                  r23.y = r23.y ? r4.z : 0;
                  if (r23.y != 0) {
                    r20.w = (int)r20.w + numLights;
                    r20.w = mad((int)r20.w, 15, -15);
                    r23.y = abs(r20.y) * -0.200000003 + 0.400000006;
                    r24.x = cmp(r20.y < 0);
                    r24.x = r0.w ? r24.x : 0;
                    r23.y = r24.x ? -r23.y : r23.y;
                    r28.xyz = r11.xyz * r23.yyy + r10.xyz;
                    r39.xyz = lightConstantsCB[r20.w].data[6].yzw;
                    r39.w = lightConstantsCB[r20.w].data[7].x;
                    r23.y = dot(r39.xyzw, r28.xyzw);
                    r39.xyz = lightConstantsCB[r20.w].data[7].yzw;
                    r39.w = lightConstantsCB[r20.w].data[8].x;
                    r24.x = dot(r39.xyzw, r28.xyzw);
                    r24.z = cmp(r24.x < r23.y);
                    if (r24.z == 0) {
                      r39.xyz = lightConstantsCB[r20.w].data[4].yzw;
                      r39.w = lightConstantsCB[r20.w].data[5].x;
                      r26.x = dot(r39.xyzw, r28.xyzw);
                      r39.xyz = lightConstantsCB[r20.w].data[5].yzw;
                      r39.w = lightConstantsCB[r20.w].data[6].x;
                      r26.y = dot(r39.xyzw, r28.xyzw);
                      r26.xy = r26.xy / r24.xx;
                      r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r28.x = lightConstantsCB[r20.w].data[9].w + r26.x;
                      r28.y = lightConstantsCB[r20.w].data[10].x + r26.y;
                      r26.xy = lightConstantsCB[r20.w].data[9].yz * r28.xy;
                      r28.xy = lightConstantsCB[r20.w].data[3].yy / lightConstantsCB[r20.w].data[8].yw;
                      r39.xy = float2(1,1) + -r28.xy;
                      r39.xy = cmp(r26.xy >= r39.xy);
                      r28.xy = cmp(r28.xy >= r26.xy);
                      r28.xy = (int2)r28.xy | (int2)r39.xy;
                      r25.z = (int)r28.y | (int)r28.x;
                      if (r25.z == 0) {
                        r26.xy = saturate(r26.xy);
                        r28.x = r26.x * lightConstantsCB[r20.w].data[8].y + lightConstantsCB[r20.w].data[8].z;
                        r28.y = r26.y * lightConstantsCB[r20.w].data[8].w + lightConstantsCB[r20.w].data[9].x;
                        r26.x = lightConstantsCB[r20.w].data[10].z * r24.x;
                        r23.y = lightConstantsCB[r20.w].data[10].y * r24.x + r23.y;
                        r23.y = r23.y / r26.x;
                      }
                    } else {
                      r25.z = -1;
                    }
                    r24.x = (int)r24.z | (int)r25.z;
                    if (r24.x == 0) {
                      r23.y = max(6.10351563e-05, r23.y);
                      r24.x = 0x0000ffff & (int)lightConstantsCB[r20.w].data[1].w;
                      if (r9.w != 0) {
                        r26.z = (uint)r24.x;
                        r24.z = 0;
                        r25.z = 0;
                        while (true) {
                          r29.w = cmp((int)r25.z >= 8);
                          if (r29.w != 0) break;
                          r39.x = dot(icb[r25.z+0].xy, r30.xy);
                          r39.y = dot(icb[r25.z+0].yx, r30.xz);
                          r26.xy = r39.xy * lightConstantsCB[r20.w].data[3].yy + r28.xy;
                          r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r23.y).x;
                          r24.z = r26.x * 0.125 + r24.z;
                          r25.z = (int)r25.z + 1;
                        }
                      } else {
                        r28.z = (uint)r24.x;
                        r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r23.y).x;
                      }
                      r20.w = r24.z * r24.z;
                      r20.w = r20.w * r24.z;
                    } else {
                      r20.w = 1;
                    }
                    r15.w = r20.w * r15.w;
                  }
                }
                r20.w = -r20.z * r2.x + 1;
                r20.w = r20.w * r20.w;
                r20.w = -r20.w * 0.620000005 + 0.620000005;
                r20.w = r20.w + -r20.z;
                r20.z = r1.w * r20.w + r20.z;
                r20.z = r20.z * r15.w;
                r26.x = lightConstantsCB[r13.w].data[0].w;
                r26.yz = lightConstantsCB[r13.w].data[1].xy;
                r13.w = cmp(0 < r20.y);
                r28.xyz = r20.zzz * r26.xyz + r35.xyz;
                r20.y = saturate(dot(r11.xyz, r22.xyw));
                r21.yzw = r21.yzw * r18.www + r12.xyz;
                r18.w = dot(r21.yzw, r21.yzw);
                r18.w = rsqrt(r18.w);
                r21.yzw = r21.yzw * r18.www;
                r18.w = dot(r21.yzw, r12.xyz);
                r20.w = dot(r11.xyz, r21.yzw);
                r21.y = abs(r20.w) * r0.z + -abs(r20.w);
                r20.w = abs(r20.w) * r21.y + 1;
                r21.y = r20.y * r2.y + r2.w;
                r20.w = r20.w * r20.w;
                r20.w = r20.w * r21.y;
                r20.w = rcp(r20.w);
                r17.w = r20.y * r17.w;
                r17.w = r20.w * r17.w;
                r17.w = r17.w * r15.w;
                r21.yzw = r17.www * r26.xyz + r38.xyz;
                r18.w = saturate(1 + -r18.w);
                r20.y = r18.w * r18.w;
                r20.y = r20.y * r20.y;
                r18.w = r20.y * r18.w;
                r17.w = r18.w * r17.w;
                r22.xyw = r17.www * r26.xyz + r37.xyz;
                r20.yzw = r20.zzz * r26.xyz + r36.xyz;
                r20.yzw = r0.www ? r20.yzw : r36.xyz;
                r35.xyz = r13.www ? r28.xyz : r35.xyz;
                r36.xyz = r13.www ? r36.xyz : r20.yzw;
                r37.xyz = r13.www ? r22.xyw : r37.xyz;
                r38.xyz = r13.www ? r21.yzw : r38.xyz;
                r13.w = (int)r23.x & 255;
                r17.w = (int)r13.w + -1;
                r17.w = cmp((uint)r17.w < 32);
                r17.w = r2.z ? r17.w : 0;
                if (r17.w != 0) {
                  r20.yz = mad((int2)r13.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.w, cb2[52].x, r20.y, u2.xxxx
                r13.w = samplerLinear[]..swiz;
                  r13.w = (int)r13.w | 8;
                  GBufferDiffuseColor[viewID].r20.y = u2.x;
                  GBufferDiffuseColor[viewID].r20.z = u2.x;
                }
                r11.w = (int)r11.w + 0x00010101;
              } else {
                r11.w = r23.x;
              }
            } else {
              r11.w = r16.w;
            }
          } else {
            r11.w = r16.w;
          }
        }
      }
    }
    r31.xyz = r35.xyz;
    r32.xyz = r36.xyz;
    r33.xyz = r37.xyz;
    r34.xyz = r38.xyz;
    r6.w = r11.w;
    r7.w = (int)r7.w + 32;
  }
  r3.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r3.y;
  r2.xyw = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.z == (int)r1.z);
  r1.zw = r1.zz ? r2.yw : float2(-1,0);
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.z == (int)r2.x);
  r2.xy = r2.xx ? r2.yw : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r4.x;
  r2.w = cmp((int)r0.z == (int)r2.w);
  r4.xy = r2.ww ? r4.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r6.x;
  r0.z = cmp((int)r0.z == (int)r2.w);
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
  r2.xyw = r0.zzz ? r3.xyz : r3.xzy;
  r0.z = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r0.z;
  r3.z = -r2.y * 0.5 + r0.z;
  r3.x = r3.z + r2.y;
  r2.xyw = r31.xyz * r5.yzw;
  r2.xyw = r32.xyz * r3.xyz + r2.xyw;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r33.xyz;
  r4.xyz = r34.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r2.xyw = r4.xyz + r2.xyw;
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r4.xyz = r33.xyz * r4.xyz;
  r3.xyz = r34.xyz * r3.xyz + r4.xyz;
  r3.xyz = r31.xyz * r5.yzw + r3.xyz;
  r2.xyw = r0.www ? r2.xyw : r3.xyz;
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
  r0.w = cmp((int)r0.w == 16);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.zzz ? r3.xyz : r2.xyw;
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
      r3.xyz = r0.zzz * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyz + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
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