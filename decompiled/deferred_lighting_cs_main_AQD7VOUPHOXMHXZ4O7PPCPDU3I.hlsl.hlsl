// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:09 2021

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
Texture2D<float> gSSAODepthTexture : register(t28);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42;
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
  r0.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r4.x, r13.x);
  r1.zw = (uint2)r1.yx;
  r0.w = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r14.x, r15.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r0.w = dot(-r12.xyz, r11.xyz);
  r0.w = r0.w + r0.w;
  r16.xyz = r11.xyz * -r0.www + -r12.xyz;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.z = sqrt(r0.w);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r1.w = r2.w ? r2.z : 0;
  r2.z = 1 + -r2.y;
  r2.z = 5 * r2.z;
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
  r2.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r16.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r2.z).xyz;
  r2.z = sunConstants.globalProbeExposure + -r2.w;
  r2.z = r2.y * r2.z + r2.w;
  r15.yzw = r15.yzw * r2.zzz;
  r2.z = r2.x + r5.x;
  r2.z = log2(abs(r2.z));
  r2.z = r2.z * r1.z;
  r2.z = exp2(r2.z);
  r2.z = r2.z + r5.x;
  r2.z = saturate(-1 + r2.z);
  r14.yzw = r14.yzw * r5.xxx;
  r17.xyz = r3.zzz ? r14.yzw : 0;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r15.yzw = r15.yzw * r2.zzz;
  r18.xyz = r15.yzw * r2.yyy;
  r2.yzw = r15.yzw * r2.www;
  r4.z = sqrt(r1.z);
  r4.z = r4.z * 0.5 + 0.5;
  r4.z = r4.z * r4.z;
  r4.w = 0.5 * r4.z;
  r4.z = -r4.z * 0.5 + 1;
  r5.x = r2.x * r4.z + r4.w;
  r4.zw = r5.xx * r4.zw;
  r5.x = (uint)renderTargetSize.x;
  r5.x = (int)r5.x + 7;
  r5.x = (uint)r5.x >> 3;
  r5.x = mad((int)r0.y, (int)r5.x, (int)r0.x);
  r5.x = (uint)r5.x << 5;
  r6.w = ~(int)r0.z;
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
  r15.yzw = r14.yzw;
  r31.xyz = r17.xyz;
  r32.xyz = r18.xyz;
  r33.xyz = r2.yzw;
  r7.w = enableDitheredShadow;
  r8.w = 0;
  r9.w = 0;
  while (true) {
    r11.w = cmp((uint)r9.w >= numLights);
    if (r11.w != 0) break;
    r11.w = (uint)r9.w >> 5;
    r11.w = (int)r5.x + (int)r11.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t26.xxxx
  r11.w = samplerLinear[]..swiz;
    r34.xyz = r15.yzw;
    r35.xyz = r31.xyz;
    r36.xyz = r32.xyz;
    r37.xyz = r33.xyz;
    r12.w = r7.w;
    r13.w = r8.w;
    r16.w = r11.w;
    while (true) {
      if (r16.w == 0) break;
      r17.w = firstbitlow((uint)r16.w);
      r18.w = 1 << (int)r17.w;
      r18.w = ~(int)r18.w;
      r16.w = (int)r16.w & (int)r18.w;
      r17.w = (int)r9.w + (int)r17.w;
      r17.w = (int)r17.w * 15;
      if (3 == 0) r18.w = 0; else if (3+24 < 32) {       r18.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(3 + 24)); r18.w = (uint)r18.w >> (32-3);      } else r18.w = (uint)lightConstantsCB[r17.w].data[1].w >> 24;
      r22.w = cmp((int)r18.w == 2);
      if (r22.w != 0) {
        if (3 == 0) r22.w = 0; else if (3+27 < 32) {         r22.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(3 + 27)); r22.w = (uint)r22.w >> (32-3);        } else r22.w = (uint)lightConstantsCB[r17.w].data[1].w >> 27;
        r27.w = (int)r13.w & 255;
        r29.w = cmp((uint)r27.w < 32);
        r29.w = r29.w ? r1.w : 0;
        if (r29.w != 0) {
          r27.w = mad((int)r27.w, 24, 112);
          r20.yzw = lightConstantsCB[r17.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r27.w = u2.xyzw;
        }
        r20.y = (int)r13.w + 1;
        r38.xy = lightConstantsCB[r17.w].data[3].zw + -r10.xy;
        r38.z = lightConstantsCB[r17.w].data[4].x + -r10.z;
        r20.z = dot(r38.xyz, r38.xyz);
        r20.z = rsqrt(r20.z);
        r39.xyz = r38.xyz * r20.zzz;
        r20.w = lightConstantsCB[r17.w].data[1].z * r0.w;
        r20.w = 0.25 * r20.w;
        r27.w = dot(r11.xyz, r39.xyz);
        r29.w = saturate(r27.w);
        r30.w = r3.z ? abs(r27.w) : r29.w;
        r31.w = cmp(0 < r30.w);
        if (r31.w != 0) {
          r39.xyz = lightConstantsCB[r17.w].data[7].yzw;
          r39.w = lightConstantsCB[r17.w].data[8].x;
          r31.w = dot(r39.xyzw, r10.xyzw);
          r32.w = cmp(r31.w < 1);
          if (r32.w != 0) {
            r40.xyz = float3(1,1,1);
            r32.w = 0;
          } else {
            r41.xyz = lightConstantsCB[r17.w].data[0].xyz + -r10.xyz;
            r33.w = lightConstantsCB[r17.w].data[3].x * lightConstantsCB[r17.w].data[3].x;
            r34.w = dot(r41.xyz, r41.xyz);
            r33.w = r33.w / r34.w;
            r33.w = min(1, r33.w);
            r41.xy = saturate(r31.ww * lightConstantsCB[r17.w].data[2].xz + lightConstantsCB[r17.w].data[2].yw);
            r41.zw = r41.xy * r41.xy;
            r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
            r41.xy = r41.zw * r41.xy;
            r33.w = r41.x * r33.w;
            r33.w = r33.w * r41.y;
            r41.xyz = lightConstantsCB[r17.w].data[4].yzw;
            r41.w = lightConstantsCB[r17.w].data[5].x;
            r41.x = dot(r41.xyzw, r10.xyzw);
            r42.xyz = lightConstantsCB[r17.w].data[5].yzw;
            r42.w = lightConstantsCB[r17.w].data[6].x;
            r41.y = dot(r42.xyzw, r10.xyzw);
            r22.xy = r41.xy / r31.ww;
            r31.w = cmp(lightConstantsCB[r17.w].data[10].w < 0.00048828125);
            if (r31.w != 0) {
              r41.xy = saturate(abs(r22.xy) * lightConstantsCB[r17.w].data[12].xy + lightConstantsCB[r17.w].data[12].zw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r31.w = r41.x * r41.y;
            } else {
              r41.xyzw = saturate(lightConstantsCB[r17.w].data[11].xyzw * abs(r22.yyxx));
              r41.xyzw = log2(r41.xyzw);
              r41.xyzw = lightConstantsCB[r17.w].data[12].zzzz * r41.xyzw;
              r41.xyzw = exp2(r41.xyzw);
              r41.xy = r41.xy + r41.zw;
              r41.xy = log2(r41.xy);
              r41.xy = lightConstantsCB[r17.w].data[12].ww * r41.xy;
              r41.xy = exp2(r41.xy);
              r34.w = lightConstantsCB[r17.w].data[12].x * r41.x;
              r35.w = lightConstantsCB[r17.w].data[12].y * r41.y + -1;
              r34.w = lightConstantsCB[r17.w].data[12].y * r41.y + -r34.w;
              r34.w = saturate(r35.w / r34.w);
              r35.w = r34.w * r34.w;
              r34.w = r34.w * -2 + 3;
              r31.w = r35.w * r34.w;
            }
            r32.w = r33.w * r31.w;
            r31.w = 255 & (int)lightConstantsCB[r17.w].data[14].w;
            if (r31.w != 0) {
              r33.w = dot(lightConstantsCB[r17.w].data[13].xyz, r22.xyz);
              r41.x = lightConstantsCB[r17.w].data[13].w;
              r41.yz = lightConstantsCB[r17.w].data[14].xy;
              r22.x = dot(r41.xyz, r22.xyz);
              r41.x = frac(r33.w);
              r41.y = frac(r22.x);
              r22.x = (int)r31.w + -1;
              r41.z = (uint)r22.x;
              r40.xyz = gCookieArray.SampleLevel(samplerLinear_s, r41.xyz, 0).xyz;
            } else {
              r40.xyz = float3(1,1,1);
            }
          }
          r41.x = lightConstantsCB[r17.w].data[0].w;
          r41.yz = lightConstantsCB[r17.w].data[1].xy;
          r40.xyz = r41.xyz * r40.xyz;
          r22.x = cmp(0 < r32.w);
          if (r22.x != 0) {
            r22.x = (int)r20.y & 255;
            r22.y = (int)r22.x + -1;
            r22.y = cmp((uint)r22.y < 32);
            r22.y = r22.y ? r1.w : 0;
            if (r22.y != 0) {
              r22.xy = mad((int2)r22.xx, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r31.w, cb2[52].x, r22.x, u2.xxxx
            r31.w = samplerLinear[]..swiz;
              r31.w = (int)r31.w | 4;
              GBufferDiffuseColor[viewID].r22.x = u2.x;
              GBufferDiffuseColor[viewID].r22.y = u2.x;
            }
            r22.x = (int)r13.w + 257;
            r22.y = cmp((int)r22.w != 1);
            if (r22.y != 0) {
              r22.y = abs(r27.w) * -0.200000003 + 0.400000006;
              r22.w = cmp(r27.w < 0);
              r22.w = r3.z ? r22.w : 0;
              r22.y = r22.w ? -r22.y : r22.y;
              r23.xyz = r11.xyz * r22.yyy + r10.xyz;
              r41.xyz = lightConstantsCB[r17.w].data[6].yzw;
              r41.w = lightConstantsCB[r17.w].data[7].x;
              r22.y = dot(r41.xyzw, r23.xyzw);
              r22.w = dot(r39.xyzw, r23.xyzw);
              r31.w = cmp(r22.w >= r22.y);
              if (r31.w != 0) {
                r39.xyz = lightConstantsCB[r17.w].data[4].yzw;
                r39.w = lightConstantsCB[r17.w].data[5].x;
                r39.x = dot(r39.xyzw, r23.xyzw);
                r41.xyz = lightConstantsCB[r17.w].data[5].yzw;
                r41.w = lightConstantsCB[r17.w].data[6].x;
                r39.y = dot(r41.xyzw, r23.xyzw);
                r23.xy = r39.xy / r22.ww;
                r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r39.x = r23.x * lightConstantsCB[r17.w].data[8].y + lightConstantsCB[r17.w].data[8].z;
                r39.y = r23.y * lightConstantsCB[r17.w].data[8].w + lightConstantsCB[r17.w].data[9].x;
                r22.y = r22.y / r22.w;
                r22.y = max(6.10351563e-05, r22.y);
                r22.w = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                if (r12.w != 0) {
                  r23.z = (uint)r22.w;
                  r31.w = 0;
                  r33.w = 0;
                  while (true) {
                    r34.w = cmp((int)r33.w >= 8);
                    if (r34.w != 0) break;
                    r41.x = dot(icb[r33.w+0].yx, r19.xy);
                    r41.y = dot(icb[r33.w+0].yx, r19.yz);
                    r23.xy = r41.xy * lightConstantsCB[r17.w].data[3].yy + r39.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r22.y).x;
                    r31.w = r23.x * 0.125 + r31.w;
                    r33.w = (int)r33.w + 1;
                  }
                } else {
                  r39.z = (uint)r22.w;
                  r31.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r22.y).x;
                }
                r22.y = r31.w * r31.w;
                r22.y = r22.y * r31.w;
              } else {
                r22.y = 1;
              }
            } else {
              r22.y = 1;
            }
            r22.y = r32.w * r22.y;
            r22.w = cmp(0 < r22.y);
            if (r22.w != 0) {
              if (4 == 0) r22.w = 0; else if (4+16 < 32) {               r22.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(4 + 16)); r22.w = (uint)r22.w >> (32-4);              } else r22.w = (uint)lightConstantsCB[r17.w].data[1].w >> 16;
              r23.x = cmp(0 < (uint)r22.w);
              r23.x = r0.z ? r23.x : 0;
              if (r23.x != 0) {
                r22.w = (int)r22.w + numLights;
                r22.w = mad((int)r22.w, 15, -15);
                r23.x = abs(r27.w) * -0.200000003 + 0.400000006;
                r23.y = cmp(r27.w < 0);
                r23.y = r3.z ? r23.y : 0;
                r23.x = r23.y ? -r23.x : r23.x;
                r24.xyz = r11.xyz * r23.xxx + r10.xyz;
                r39.xyz = lightConstantsCB[r22.w].data[6].yzw;
                r39.w = lightConstantsCB[r22.w].data[7].x;
                r23.x = dot(r39.xyzw, r24.xyzw);
                r39.xyz = lightConstantsCB[r22.w].data[7].yzw;
                r39.w = lightConstantsCB[r22.w].data[8].x;
                r23.y = dot(r39.xyzw, r24.xyzw);
                r23.z = cmp(r23.y < r23.x);
                if (r23.z == 0) {
                  r39.xyz = lightConstantsCB[r22.w].data[4].yzw;
                  r39.w = lightConstantsCB[r22.w].data[5].x;
                  r39.x = dot(r39.xyzw, r24.xyzw);
                  r41.xyz = lightConstantsCB[r22.w].data[5].yzw;
                  r41.w = lightConstantsCB[r22.w].data[6].x;
                  r39.y = dot(r41.xyzw, r24.xyzw);
                  r24.xy = r39.xy / r23.yy;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r39.x = lightConstantsCB[r22.w].data[9].w + r24.x;
                  r39.y = lightConstantsCB[r22.w].data[10].x + r24.y;
                  r24.xy = lightConstantsCB[r22.w].data[9].yz * r39.xy;
                  r39.xy = lightConstantsCB[r22.w].data[3].yy / lightConstantsCB[r22.w].data[8].yw;
                  r39.zw = float2(1,1) + -r39.xy;
                  r39.zw = cmp(r24.xy >= r39.zw);
                  r39.xy = cmp(r39.xy >= r24.xy);
                  r39.xy = (int2)r39.xy | (int2)r39.zw;
                  r24.z = (int)r39.y | (int)r39.x;
                  if (r24.z == 0) {
                    r24.xy = saturate(r24.xy);
                    r39.x = r24.x * lightConstantsCB[r22.w].data[8].y + lightConstantsCB[r22.w].data[8].z;
                    r39.y = r24.y * lightConstantsCB[r22.w].data[8].w + lightConstantsCB[r22.w].data[9].x;
                    r24.x = lightConstantsCB[r22.w].data[10].z * r23.y;
                    r23.x = lightConstantsCB[r22.w].data[10].y * r23.y + r23.x;
                    r23.x = r23.x / r24.x;
                  }
                } else {
                  r24.z = -1;
                }
                r23.y = (int)r23.z | (int)r24.z;
                if (r23.y == 0) {
                  r23.x = max(6.10351563e-05, r23.x);
                  r23.y = 0x0000ffff & (int)lightConstantsCB[r22.w].data[1].w;
                  if (r12.w != 0) {
                    r24.z = (uint)r23.y;
                    r23.z = 0;
                    r32.w = 0;
                    while (true) {
                      r33.w = cmp((int)r32.w >= 8);
                      if (r33.w != 0) break;
                      r41.x = dot(icb[r32.w+0].yx, r19.xw);
                      r41.y = dot(icb[r32.w+0].xy, r4.xy);
                      r24.xy = r41.xy * lightConstantsCB[r22.w].data[3].yy + r39.xy;
                      r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r23.x).x;
                      r23.z = r24.x * 0.125 + r23.z;
                      r32.w = (int)r32.w + 1;
                    }
                  } else {
                    r39.z = (uint)r23.y;
                    r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r23.x).x;
                  }
                  r22.w = r23.z * r23.z;
                  r22.w = r22.w * r23.z;
                } else {
                  r22.w = 1;
                }
                r22.y = r22.y * r22.w;
              } else {
                if (4 == 0) r22.w = 0; else if (4+20 < 32) {                 r22.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(4 + 20)); r22.w = (uint)r22.w >> (32-4);                } else r22.w = (uint)lightConstantsCB[r17.w].data[1].w >> 20;
                r23.x = cmp(0 < (uint)r22.w);
                r23.x = r23.x ? r6.w : 0;
                if (r23.x != 0) {
                  r22.w = (int)r22.w + numLights;
                  r22.w = mad((int)r22.w, 15, -15);
                  r23.x = abs(r27.w) * -0.200000003 + 0.400000006;
                  r23.y = cmp(r27.w < 0);
                  r23.y = r3.z ? r23.y : 0;
                  r23.x = r23.y ? -r23.x : r23.x;
                  r25.xyz = r11.xyz * r23.xxx + r10.xyz;
                  r39.xyz = lightConstantsCB[r22.w].data[6].yzw;
                  r39.w = lightConstantsCB[r22.w].data[7].x;
                  r23.x = dot(r39.xyzw, r25.xyzw);
                  r39.xyz = lightConstantsCB[r22.w].data[7].yzw;
                  r39.w = lightConstantsCB[r22.w].data[8].x;
                  r23.y = dot(r39.xyzw, r25.xyzw);
                  r24.x = cmp(r23.y < r23.x);
                  if (r24.x == 0) {
                    r39.xyz = lightConstantsCB[r22.w].data[4].yzw;
                    r39.w = lightConstantsCB[r22.w].data[5].x;
                    r39.x = dot(r39.xyzw, r25.xyzw);
                    r41.xyz = lightConstantsCB[r22.w].data[5].yzw;
                    r41.w = lightConstantsCB[r22.w].data[6].x;
                    r39.y = dot(r41.xyzw, r25.xyzw);
                    r24.yz = r39.xy / r23.yy;
                    r24.yz = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r25.x = lightConstantsCB[r22.w].data[9].w + r24.y;
                    r25.y = lightConstantsCB[r22.w].data[10].x + r24.z;
                    r24.yz = lightConstantsCB[r22.w].data[9].yz * r25.xy;
                    r25.xy = lightConstantsCB[r22.w].data[3].yy / lightConstantsCB[r22.w].data[8].yw;
                    r39.xy = float2(1,1) + -r25.xy;
                    r39.xy = cmp(r24.yz >= r39.xy);
                    r25.xy = cmp(r25.xy >= r24.yz);
                    r25.xy = (int2)r25.xy | (int2)r39.xy;
                    r25.x = (int)r25.y | (int)r25.x;
                    if (r25.x == 0) {
                      r24.yz = saturate(r24.yz);
                      r39.x = r24.y * lightConstantsCB[r22.w].data[8].y + lightConstantsCB[r22.w].data[8].z;
                      r39.y = r24.z * lightConstantsCB[r22.w].data[8].w + lightConstantsCB[r22.w].data[9].x;
                      r24.y = lightConstantsCB[r22.w].data[10].z * r23.y;
                      r23.x = lightConstantsCB[r22.w].data[10].y * r23.y + r23.x;
                      r23.x = r23.x / r24.y;
                    }
                  } else {
                    r25.x = -1;
                  }
                  r23.y = (int)r24.x | (int)r25.x;
                  if (r23.y == 0) {
                    r23.x = max(6.10351563e-05, r23.x);
                    r23.y = 0x0000ffff & (int)lightConstantsCB[r22.w].data[1].w;
                    if (r12.w != 0) {
                      r24.z = (uint)r23.y;
                      r25.xy = float2(0,0);
                      while (true) {
                        r25.z = cmp((int)r25.y >= 8);
                        if (r25.z != 0) break;
                        r41.x = dot(icb[r25.y+0].xy, r27.xy);
                        r41.y = dot(icb[r25.y+0].yx, r27.xz);
                        r24.xy = r41.xy * lightConstantsCB[r22.w].data[3].yy + r39.xy;
                        r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r23.x).x;
                        r25.x = r24.x * 0.125 + r25.x;
                        r25.y = (int)r25.y + 1;
                      }
                    } else {
                      r39.z = (uint)r23.y;
                      r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r23.x).x;
                    }
                    r22.w = r25.x * r25.x;
                    r22.w = r22.w * r25.x;
                  } else {
                    r22.w = 1;
                  }
                  r22.y = r22.y * r22.w;
                }
              }
              r22.w = -r30.w * r2.x + 1;
              r22.w = r22.w * r22.w;
              r22.w = -r22.w * 0.620000005 + 0.620000005;
              r22.w = r22.w + -r30.w;
              r22.w = r1.z * r22.w + r30.w;
              r22.w = r22.w * r22.y;
              r23.x = cmp(0 < r27.w);
              r24.xyz = r22.www * r40.xyz + r34.xyz;
              r38.xyz = r38.xyz * r20.zzz + r12.xyz;
              r20.z = dot(r38.xyz, r38.xyz);
              r20.z = rsqrt(r20.z);
              r38.xyz = r38.xyz * r20.zzz;
              r20.z = dot(r38.xyz, r12.xyz);
              r23.y = dot(r11.xyz, r38.xyz);
              r25.y = abs(r23.y) * r0.w + -abs(r23.y);
              r23.y = abs(r23.y) * r25.y + 1;
              r25.y = r29.w * r4.z + r4.w;
              r23.y = r23.y * r23.y;
              r23.y = r23.y * r25.y;
              r23.y = rcp(r23.y);
              r20.w = r29.w * r20.w;
              r20.w = r23.y * r20.w;
              r20.w = r20.w * r22.y;
              r38.xyz = r20.www * r40.xyz + r37.xyz;
              r20.z = saturate(1 + -r20.z);
              r23.y = r20.z * r20.z;
              r23.y = r23.y * r23.y;
              r20.z = r23.y * r20.z;
              r20.z = r20.w * r20.z;
              r39.xyz = r20.zzz * r40.xyz + r36.xyz;
              r40.xyz = r22.www * r40.xyz + r35.xyz;
              r40.xyz = r3.zzz ? r40.xyz : r35.xyz;
              r34.xyz = r23.xxx ? r24.xyz : r34.xyz;
              r35.xyz = r23.xxx ? r35.xyz : r40.xyz;
              r36.xyz = r23.xxx ? r39.xyz : r36.xyz;
              r37.xyz = r23.xxx ? r38.xyz : r37.xyz;
              r20.z = (int)r22.x & 255;
              r20.w = (int)r20.z + -1;
              r20.w = cmp((uint)r20.w < 32);
              r20.w = r20.w ? r1.w : 0;
              if (r20.w != 0) {
                r20.zw = mad((int2)r20.zz, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r22.w, cb2[52].x, r20.z, u2.xxxx
              r22.w = samplerLinear[]..swiz;
                r22.w = (int)r22.w | 8;
                GBufferDiffuseColor[viewID].r20.z = u2.x;
                GBufferDiffuseColor[viewID].r20.w = u2.x;
              }
              r13.w = (int)r13.w + 0x00010101;
            } else {
              r13.w = r22.x;
            }
          } else {
            r13.w = r20.y;
          }
        } else {
          r13.w = r20.y;
        }
      } else {
        r18.w = cmp((int)r18.w == 4);
        if (r18.w != 0) {
          if (3 == 0) r18.w = 0; else if (3+27 < 32) {           r18.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(3 + 27)); r18.w = (uint)r18.w >> (32-3);          } else r18.w = (uint)lightConstantsCB[r17.w].data[1].w >> 27;
          r20.y = (int)r13.w & 255;
          r20.z = cmp((uint)r20.y < 32);
          r20.z = r20.z ? r1.w : 0;
          if (r20.z != 0) {
            r20.y = mad((int)r20.y, 24, 112);
            r21.yzw = lightConstantsCB[r17.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r20.y = u2.xyzw;
          }
          r20.y = (int)r13.w + 1;
          r20.z = lightConstantsCB[r17.w].data[1].z * r0.w;
          r20.z = 0.25 * r20.z;
          r20.w = cmp(0 < lightConstantsCB[r17.w].data[6].y);
          r24.xy = lightConstantsCB[r17.w].data[5].zw;
          r24.z = lightConstantsCB[r17.w].data[6].x;
          r21.yzw = -r24.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r17.w].data[0].xyz;
          r22.xyw = r21.yzw + -r10.xyz;
          r23.x = dot(r24.xyz, r16.xyz);
          r23.y = dot(r24.xyz, r22.xyw);
          r22.x = dot(r16.xyz, r22.xyw);
          r22.y = -r23.x * r23.x + lightConstantsCB[r17.w].data[6].y;
          r22.x = r23.x * r22.x + -r23.y;
          r22.w = saturate(-r23.y / lightConstantsCB[r17.w].data[6].y);
          r22.x = saturate(r22.x / r22.y);
          r22.y = r22.y / lightConstantsCB[r17.w].data[6].y;
          r22.y = 10 * r22.y;
          r22.y = min(1, r22.y);
          r22.x = r22.x + -r22.w;
          r22.x = r22.y * r22.x + r22.w;
          r38.xyz = r22.xxx * r24.xyz + r21.yzw;
          r21.yzw = r22.www * r24.xyz + r21.yzw;
          r21.yzw = r20.www ? r21.yzw : lightConstantsCB[r17.w].data[0].xyz;
          r22.xyw = r20.www ? r38.xyz : lightConstantsCB[r17.w].data[0].xyz;
          r22.xyw = r22.xyw + -r10.xyz;
          r21.yzw = r21.yzw + -r10.xyz;
          r20.w = dot(r22.xyw, r22.xyw);
          r20.w = rsqrt(r20.w);
          r24.xyz = r22.xyw * r20.www;
          r23.x = dot(r21.yzw, r21.yzw);
          r23.y = rsqrt(r23.x);
          r21.yzw = r23.yyy * r21.yzw;
          r21.y = dot(r11.xyz, r21.yzw);
          r21.z = saturate(r21.y);
          r21.z = r3.z ? abs(r21.y) : r21.z;
          r21.w = cmp(0 < r21.z);
          if (r21.w != 0) {
            r21.w = sqrt(r23.x);
            r23.y = lightConstantsCB[r17.w].data[3].x * lightConstantsCB[r17.w].data[3].x;
            r23.x = r23.y / r23.x;
            r23.x = min(1, r23.x);
            r25.yz = saturate(r21.ww * lightConstantsCB[r17.w].data[2].xz + lightConstantsCB[r17.w].data[2].yw);
            r38.xy = r25.yz * r25.yz;
            r25.yz = r25.yz * float2(-2,-2) + float2(3,3);
            r25.yz = r38.xy * r25.yz;
            r21.w = r25.y * r23.x;
            r21.w = r21.w * r25.z;
            r23.x = cmp(0 < r21.w);
            if (r23.x != 0) {
              r23.x = (int)r20.y & 255;
              r23.y = (int)r23.x + -1;
              r23.y = cmp((uint)r23.y < 32);
              r23.y = r23.y ? r1.w : 0;
              if (r23.y != 0) {
                r23.xy = mad((int2)r23.xx, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r25.y, cb2[52].x, r23.x, u2.xxxx
              r25.y = samplerLinear[]..swiz;
                r25.y = (int)r25.y | 4;
                GBufferDiffuseColor[viewID].r23.x = u2.x;
                GBufferDiffuseColor[viewID].r23.y = u2.x;
              }
              r23.x = (int)r13.w + 257;
              r18.w = cmp((int)r18.w != 1);
              if (r18.w != 0) {
                r18.w = abs(r21.y) * -0.200000003 + 0.400000006;
                r23.y = cmp(r21.y < 0);
                r23.y = r3.z ? r23.y : 0;
                r18.w = r23.y ? -r18.w : r18.w;
                r38.xyz = r11.xyz * r18.www + r10.xyz;
                r38.xyz = -lightConstantsCB[r17.w].data[4].yzw + r38.xyz;
                r18.w = max(abs(r38.y), abs(r38.z));
                r18.w = max(abs(r38.x), r18.w);
                r18.w = lightConstantsCB[r17.w].data[5].x / r18.w;
                r18.w = lightConstantsCB[r17.w].data[5].y + r18.w;
                r23.y = dot(r38.xyz, r38.xyz);
                r23.y = rsqrt(r23.y);
                r18.w = max(6.10351563e-05, r18.w);
                r25.y = 0x0000ffff & (int)lightConstantsCB[r17.w].data[1].w;
                r39.w = (uint)r25.y;
                r25.yz = float2(0,0);
                while (true) {
                  r27.w = cmp((int)r25.z >= 8);
                  if (r27.w != 0) break;
                  r40.y = dot(icb[r25.z+0].xy, r13.xy);
                  r40.z = dot(icb[r25.z+0].yx, r13.xz);
                  r40.yz = lightConstantsCB[r17.w].data[3].yy * r40.yz;
                  r40.x = r40.y * r15.x;
                  r40.w = r40.y * r14.x;
                  r39.xyz = r38.xyz * r23.yyy + r40.xzw;
                  r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyzw, r18.w).x;
                  r25.y = r27.w * 0.125 + r25.y;
                  r25.z = (int)r25.z + 1;
                }
              } else {
                r25.y = 1;
              }
              r18.w = r25.y * r21.w;
              r21.w = cmp(0 < r18.w);
              if (r21.w != 0) {
                if (4 == 0) r21.w = 0; else if (4+16 < 32) {                 r21.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(4 + 16)); r21.w = (uint)r21.w >> (32-4);                } else r21.w = (uint)lightConstantsCB[r17.w].data[1].w >> 16;
                r23.y = cmp(0 < (uint)r21.w);
                r23.y = r0.z ? r23.y : 0;
                if (r23.y != 0) {
                  r21.w = (int)r21.w + numLights;
                  r21.w = mad((int)r21.w, 15, -15);
                  r23.y = abs(r21.y) * -0.200000003 + 0.400000006;
                  r25.z = cmp(r21.y < 0);
                  r25.z = r3.z ? r25.z : 0;
                  r23.y = r25.z ? -r23.y : r23.y;
                  r26.xyz = r11.xyz * r23.yyy + r10.xyz;
                  r38.xyz = lightConstantsCB[r21.w].data[6].yzw;
                  r38.w = lightConstantsCB[r21.w].data[7].x;
                  r23.y = dot(r38.xyzw, r26.xyzw);
                  r38.xyz = lightConstantsCB[r21.w].data[7].yzw;
                  r38.w = lightConstantsCB[r21.w].data[8].x;
                  r25.z = dot(r38.xyzw, r26.xyzw);
                  r27.w = cmp(r25.z < r23.y);
                  if (r27.w == 0) {
                    r38.xyz = lightConstantsCB[r21.w].data[4].yzw;
                    r38.w = lightConstantsCB[r21.w].data[5].x;
                    r38.x = dot(r38.xyzw, r26.xyzw);
                    r39.xyz = lightConstantsCB[r21.w].data[5].yzw;
                    r39.w = lightConstantsCB[r21.w].data[6].x;
                    r38.y = dot(r39.xyzw, r26.xyzw);
                    r26.xy = r38.xy / r25.zz;
                    r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r38.x = lightConstantsCB[r21.w].data[9].w + r26.x;
                    r38.y = lightConstantsCB[r21.w].data[10].x + r26.y;
                    r26.xy = lightConstantsCB[r21.w].data[9].yz * r38.xy;
                    r38.xy = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                    r38.zw = float2(1,1) + -r38.xy;
                    r38.zw = cmp(r26.xy >= r38.zw);
                    r38.xy = cmp(r38.xy >= r26.xy);
                    r38.xy = (int2)r38.xy | (int2)r38.zw;
                    r26.z = (int)r38.y | (int)r38.x;
                    if (r26.z == 0) {
                      r26.xy = saturate(r26.xy);
                      r38.x = r26.x * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                      r38.y = r26.y * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                      r26.x = lightConstantsCB[r21.w].data[10].z * r25.z;
                      r23.y = lightConstantsCB[r21.w].data[10].y * r25.z + r23.y;
                      r23.y = r23.y / r26.x;
                    }
                  } else {
                    r26.z = -1;
                  }
                  r25.z = (int)r27.w | (int)r26.z;
                  if (r25.z == 0) {
                    r23.y = max(6.10351563e-05, r23.y);
                    r25.z = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                    if (r12.w != 0) {
                      r26.z = (uint)r25.z;
                      r27.w = 0;
                      r29.w = 0;
                      while (true) {
                        r30.w = cmp((int)r29.w >= 8);
                        if (r30.w != 0) break;
                        r39.x = dot(icb[r29.w+0].xy, r29.xy);
                        r39.y = dot(icb[r29.w+0].yx, r29.xz);
                        r26.xy = r39.xy * lightConstantsCB[r21.w].data[3].yy + r38.xy;
                        r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r23.y).x;
                        r27.w = r26.x * 0.125 + r27.w;
                        r29.w = (int)r29.w + 1;
                      }
                    } else {
                      r38.z = (uint)r25.z;
                      r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r23.y).x;
                    }
                    r21.w = r27.w * r27.w;
                    r21.w = r21.w * r27.w;
                  } else {
                    r21.w = 1;
                  }
                  r18.w = r21.w * r18.w;
                } else {
                  if (4 == 0) r21.w = 0; else if (4+20 < 32) {                   r21.w = (uint)lightConstantsCB[r17.w].data[1].w << (32-(4 + 20)); r21.w = (uint)r21.w >> (32-4);                  } else r21.w = (uint)lightConstantsCB[r17.w].data[1].w >> 20;
                  r23.y = cmp(0 < (uint)r21.w);
                  r23.y = r23.y ? r6.w : 0;
                  if (r23.y != 0) {
                    r21.w = (int)r21.w + numLights;
                    r21.w = mad((int)r21.w, 15, -15);
                    r23.y = abs(r21.y) * -0.200000003 + 0.400000006;
                    r25.z = cmp(r21.y < 0);
                    r25.z = r3.z ? r25.z : 0;
                    r23.y = r25.z ? -r23.y : r23.y;
                    r28.xyz = r11.xyz * r23.yyy + r10.xyz;
                    r38.xyz = lightConstantsCB[r21.w].data[6].yzw;
                    r38.w = lightConstantsCB[r21.w].data[7].x;
                    r23.y = dot(r38.xyzw, r28.xyzw);
                    r38.xyz = lightConstantsCB[r21.w].data[7].yzw;
                    r38.w = lightConstantsCB[r21.w].data[8].x;
                    r25.z = dot(r38.xyzw, r28.xyzw);
                    r26.x = cmp(r25.z < r23.y);
                    if (r26.x == 0) {
                      r38.xyz = lightConstantsCB[r21.w].data[4].yzw;
                      r38.w = lightConstantsCB[r21.w].data[5].x;
                      r38.x = dot(r38.xyzw, r28.xyzw);
                      r39.xyz = lightConstantsCB[r21.w].data[5].yzw;
                      r39.w = lightConstantsCB[r21.w].data[6].x;
                      r38.y = dot(r39.xyzw, r28.xyzw);
                      r26.yz = r38.xy / r25.zz;
                      r26.yz = r26.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                      r28.x = lightConstantsCB[r21.w].data[9].w + r26.y;
                      r28.y = lightConstantsCB[r21.w].data[10].x + r26.z;
                      r26.yz = lightConstantsCB[r21.w].data[9].yz * r28.xy;
                      r28.xy = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                      r38.xy = float2(1,1) + -r28.xy;
                      r38.xy = cmp(r26.yz >= r38.xy);
                      r28.xy = cmp(r28.xy >= r26.yz);
                      r28.xy = (int2)r28.xy | (int2)r38.xy;
                      r28.x = (int)r28.y | (int)r28.x;
                      if (r28.x == 0) {
                        r26.yz = saturate(r26.yz);
                        r38.x = r26.y * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                        r38.y = r26.z * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                        r26.y = lightConstantsCB[r21.w].data[10].z * r25.z;
                        r23.y = lightConstantsCB[r21.w].data[10].y * r25.z + r23.y;
                        r23.y = r23.y / r26.y;
                      }
                    } else {
                      r28.x = -1;
                    }
                    r25.z = (int)r26.x | (int)r28.x;
                    if (r25.z == 0) {
                      r23.y = max(6.10351563e-05, r23.y);
                      r25.z = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                      if (r12.w != 0) {
                        r26.z = (uint)r25.z;
                        r28.xy = float2(0,0);
                        while (true) {
                          r28.z = cmp((int)r28.y >= 8);
                          if (r28.z != 0) break;
                          r39.x = dot(icb[r28.y+0].xy, r30.xy);
                          r39.y = dot(icb[r28.y+0].yx, r30.xz);
                          r26.xy = r39.xy * lightConstantsCB[r21.w].data[3].yy + r38.xy;
                          r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r23.y).x;
                          r28.x = r26.x * 0.125 + r28.x;
                          r28.y = (int)r28.y + 1;
                        }
                      } else {
                        r38.z = (uint)r25.z;
                        r28.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r23.y).x;
                      }
                      r21.w = r28.x * r28.x;
                      r21.w = r21.w * r28.x;
                    } else {
                      r21.w = 1;
                    }
                    r18.w = r21.w * r18.w;
                  }
                }
                r21.w = -r21.z * r2.x + 1;
                r21.w = r21.w * r21.w;
                r21.w = -r21.w * 0.620000005 + 0.620000005;
                r21.w = r21.w + -r21.z;
                r21.z = r1.z * r21.w + r21.z;
                r21.z = r21.z * r18.w;
                r26.x = lightConstantsCB[r17.w].data[0].w;
                r26.yz = lightConstantsCB[r17.w].data[1].xy;
                r17.w = cmp(0 < r21.y);
                r38.xyz = r21.zzz * r26.xyz + r34.xyz;
                r21.y = saturate(dot(r11.xyz, r24.xyz));
                r22.xyw = r22.xyw * r20.www + r12.xyz;
                r20.w = dot(r22.xyw, r22.xyw);
                r20.w = rsqrt(r20.w);
                r22.xyw = r22.xyw * r20.www;
                r20.w = dot(r22.xyw, r12.xyz);
                r21.w = dot(r11.xyz, r22.xyw);
                r22.x = abs(r21.w) * r0.w + -abs(r21.w);
                r21.w = abs(r21.w) * r22.x + 1;
                r22.x = r21.y * r4.z + r4.w;
                r21.w = r21.w * r21.w;
                r21.w = r21.w * r22.x;
                r21.w = rcp(r21.w);
                r20.z = r21.y * r20.z;
                r20.z = r21.w * r20.z;
                r20.z = r20.z * r18.w;
                r22.xyw = r20.zzz * r26.xyz + r37.xyz;
                r20.w = saturate(1 + -r20.w);
                r21.y = r20.w * r20.w;
                r21.y = r21.y * r21.y;
                r20.w = r21.y * r20.w;
                r20.z = r20.z * r20.w;
                r24.xyz = r20.zzz * r26.xyz + r36.xyz;
                r21.yzw = r21.zzz * r26.xyz + r35.xyz;
                r21.yzw = r3.zzz ? r21.yzw : r35.xyz;
                r34.xyz = r17.www ? r38.xyz : r34.xyz;
                r35.xyz = r17.www ? r35.xyz : r21.yzw;
                r36.xyz = r17.www ? r24.xyz : r36.xyz;
                r37.xyz = r17.www ? r22.xyw : r37.xyz;
                r17.w = (int)r23.x & 255;
                r20.z = (int)r17.w + -1;
                r20.z = cmp((uint)r20.z < 32);
                r20.z = r20.z ? r1.w : 0;
                if (r20.z != 0) {
                  r20.zw = mad((int2)r17.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r17.w, cb2[52].x, r20.z, u2.xxxx
                r17.w = samplerLinear[]..swiz;
                  r17.w = (int)r17.w | 8;
                  GBufferDiffuseColor[viewID].r20.z = u2.x;
                  GBufferDiffuseColor[viewID].r20.w = u2.x;
                }
                r13.w = (int)r13.w + 0x00010101;
              } else {
                r13.w = r23.x;
              }
            } else {
              r13.w = r20.y;
            }
          } else {
            r13.w = r20.y;
          }
        }
      }
    }
    r15.yzw = r34.xyz;
    r31.xyz = r35.xyz;
    r32.xyz = r36.xyz;
    r33.xyz = r37.xyz;
    r8.w = r13.w;
    r9.w = (int)r9.w + 32;
  }
  r2.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.z = (uint)r2.y;
  r3.xyw = r6.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r3.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r3.xy = r0.ww ? r3.yw : float2(-1,0);
  r4.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r4.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r4.xy = r0.ww ? r4.yz : float2(-1,0);
  r6.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.w = cmp((int)r0.z == (int)r0.w);
  r4.zw = r0.ww ? r6.yz : float2(-1,0);
  r6.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r0.w = (uint)r6.x;
  r0.z = cmp((int)r0.z == (int)r0.w);
  r0.zw = r0.zz ? r6.yz : float2(-1,0);
  r6.x = r3.x;
  r6.yz = r4.xz;
  r6.w = r0.z;
  r6.xyzw = r6.xyzw + -r2.xxxx;
  r6.xyzw = cmp(abs(r6.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r6.xyzw = r6.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.z = r6.x + r6.y;
  r0.z = r0.z + r6.z;
  r0.z = r0.z + r6.w;
  r1.z = r6.y * r4.y;
  r1.z = r6.x * r3.y + r1.z;
  r1.z = r6.z * r4.w + r1.z;
  r0.w = r6.w * r0.w + r1.z;
  r2.w = r0.w / r0.z;
  r0.z = cmp(0 >= r0.z);
  r2.yz = r0.zz ? float2(0,0) : r2.zw;
  r0.zw = (int2)r1.xy & int2(1,1);
  r0.z = cmp((int)r0.w == (int)r0.z);
  r2.xyz = r0.zzz ? r2.xyz : r2.xzy;
  r0.z = -r2.z * 0.5 + r2.x;
  r4.y = r2.z + r0.z;
  r4.z = -r2.y * 0.5 + r0.z;
  r4.x = r4.z + r2.y;
  r2.xyz = r15.yzw * r5.yzw;
  r2.xyz = r31.xyz * r4.xyz + r2.xyz;
  r3.xyw = float3(0.959999979,0.959999979,0.959999979) * r32.xyz;
  r3.xyw = r33.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r3.xyw;
  r2.xyz = r3.xyw + r2.xyz;
  r3.xyw = float3(1,1,1) + -r4.xyz;
  r3.xyw = r32.xyz * r3.xyw;
  r3.xyw = r33.xyz * r4.xyz + r3.xyw;
  r3.xyw = r15.yzw * r5.yzw + r3.xyw;
  r2.xyz = r3.zzz ? r2.xyz : r3.xyw;
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = dot(r10.xyz, r10.xyz);
    r0.w = rsqrt(r0.z);
    r3.xyz = r10.xyz * r0.www;
    r0.z = sqrt(r0.z);
    r0.w = cmp(0 < fogConstants.blendAmount);
    if (r0.w != 0) {
      r4.xy = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r0.w = cmp(0.00999999978 < abs(r10.z));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * r10.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.zw = r5.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r0.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xzw;
    } else {
      r0.w = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.w = fogConstants.atmospherefogdensityatcamera.x * r0.w;
      r1.z = cmp(0.00999999978 < abs(r10.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * r10.z;
      r3.w = -1.44269502 * r2.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r2.w = r3.w / r2.w;
      r2.w = r2.w * r0.w;
      r0.w = r1.z ? r2.w : r0.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r0.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.w = fogConstants.atmosphereMieSchlickK * -r0.w + 1;
    r2.w = r2.w * r2.w;
    r2.w = 12.566371 * r2.w;
    r1.z = r1.z / r2.w;
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
    r2.w = min(64, r0.w);
    r2.w = 1.44269502 * r2.w;
    r2.w = exp2(r2.w);
    r3.w = saturate(fogConstants.K0b);
    r4.x = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.x ? r2.w : r0.w;
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
  r3.xz = cmp((int2)r3.xz != int2(0,0));
  r3.yw = cmp((int2)r3.yw == int2(0,4));
  r3.xy = r3.yw ? r3.xz : 0;
  r3.xy = r3.xy ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 16);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.zzz ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.z = (int)r8.w & 255;
        break;
        case 2 :        if (8 == 0) r0.z = 0; else if (8+8 < 32) {         r0.z = (uint)r8.w << (32-(8 + 8)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r8.w >> 8;
        break;
        case 3 :        if (8 == 0) r0.z = 0; else if (8+16 < 32) {         r0.z = (uint)r8.w << (32-(8 + 16)); r0.z = (uint)r0.z >> (32-8);        } else r0.z = (uint)r8.w >> 16;
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
  if (r1.w != 0) {
    r1.xyz = eyeOffset.xyz + r10.xyz;
    r1.w = (int)r8.w & 255;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.z = (int)r8.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.z
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.x = 0; else if (8+8 < 32) {     r1.x = (uint)r8.w << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);    } else r1.x = (uint)r8.w >> 8;
    if (8 == 0) r1.y = 0; else if (8+16 < 32) {     r1.y = (uint)r8.w << (32-(8 + 16)); r1.y = (uint)r1.y >> (32-8);    } else r1.y = (uint)r8.w >> 16;
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