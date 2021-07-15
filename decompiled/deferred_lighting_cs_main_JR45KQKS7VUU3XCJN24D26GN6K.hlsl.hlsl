// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:34 2021

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
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_structured u2, 1792
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39;
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
  r0.x = mad(permuteStride, 23, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
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
  r1.z = dot(r3.yz, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r13.x, r14.x);
  r1.zw = (uint2)r1.yx;
  r1.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r15.x, r16.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.z = dot(-r12.xyz, r11.xyz);
  r1.z = r1.z + r1.z;
  r17.xyz = r11.xyz * -r1.zzz + -r12.xyz;
  r1.z = 17 * r2.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r2.z = r2.w ? r2.z : 0;
  r2.w = 1 + -r2.y;
  r2.w = 5 * r2.w;
  r3.yzw = -globalProbeConstants.data[0].xyz + r5.xyz;
  r18.x = globalProbeConstants.data[0].w * r3.y;
  r18.yz = globalProbeConstants.data[1].xy * r3.zw;
  r3.yzw = saturate(float3(0.5,0.5,0.5) + r18.xyz);
  r18.xy = globalProbeConstants.data[1].zw * r3.yz;
  r18.z = globalProbeConstants.data[2].x * r3.w;
  r3.yzw = globalProbeConstants.data[2].yzw + r18.xyz;
  r15.yzw = cmp(float3(0,0,0) < r11.xyz);
  r18.xyz = r15.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r18.w = 0;
  r15.yzw = r18.wwx + r3.yzw;
  r15.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
  r16.yzw = r11.xyz * r11.xyz;
  r16.yzw = sunConstants.globalProbeExposure * r16.yzw;
  r19.xyz = r18.wwy + r3.yzw;
  r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
  r19.xyz = r19.xyz * r16.zzz;
  r15.yzw = r15.yzw * r16.yyy + r19.xyz;
  r3.yzw = r18.wwz + r3.yzw;
  r3.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r3.yzw, 0).xyz;
  r3.yzw = r3.yzw * r16.www + r15.yzw;
  r11.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
  r3.yzw = r15.yzw * r3.yzw;
  r6.w = dot(r3.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r17.w = 0;
  r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r2.w).xyz;
  r2.w = sunConstants.globalProbeExposure + -r6.w;
  r2.w = r2.y * r2.w + r6.w;
  r15.yzw = r15.yzw * r2.www;
  r2.w = r2.x + r4.z;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r4.z;
  r2.w = saturate(-1 + r2.w);
  r3.yzw = r3.yzw * r4.zzz;
  r16.yzw = r0.www ? r3.yzw : 0;
  r13.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.zw, 0).xy;
  r15.yzw = r15.yzw * r2.www;
  r18.xyz = r15.yzw * r13.zzz;
  r15.yzw = r15.yzw * r13.www;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r4.z = r2.x * r2.y + r2.w;
  r2.yw = r4.zz * r2.yw;
  r4.z = (uint)r0.x >> 24;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r19.x = -r13.x;
  r6.w = ~(int)r3.x;
  r2.x = -r2.x * 0.5 + 1;
  r20.x = 2;
  r21.x = 2;
  r5.w = 1;
  r22.w = 1;
  r19.z = r13.x;
  r23.w = 1;
  r24.z = 1;
  r25.w = 1;
  r19.yw = r14.xx;
  r13.y = r19.w;
  r26.w = 1;
  r14.y = r19.x;
  r14.z = r13.x;
  r27.w = 1;
  r28.x = r14.x;
  r28.y = r19.x;
  r28.z = r13.x;
  r29.x = r14.x;
  r29.y = r19.x;
  r29.z = r13.x;
  r30.x = r14.x;
  r30.y = r19.x;
  r30.z = r13.x;
  r31.xyz = r3.yzw;
  r32.xyz = r16.yzw;
  r33.xyz = r18.xyz;
  r34.xyz = r15.yzw;
  r7.w = 0;
  r8.w = 0;
  while (true) {
    r9.w = cmp((int)r8.w == 2);
    if (r9.w != 0) break;
    r9.w = r8.w ? r0.x : r4.z;
    r9.w = (int)r9.w * 15;
    if (3 == 0) r10.w = 0; else if (3+24 < 32) {     r10.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(3 + 24)); r10.w = (uint)r10.w >> (32-3);    } else r10.w = (uint)lightConstantsCB[r9.w].data[1].w >> 24;
    switch (r10.w) {
      case 4 :      if (r2.z != 0) {
        r10.w = (int)r7.w & 3;
        r10.w = mad((int)r10.w, 24, 112);
        r20.yzw = lightConstantsCB[r9.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r10.w = u2.xyzw;
      }
      r10.w = (int)r7.w + 1;
      r11.w = cmp(0 < lightConstantsCB[r9.w].data[6].y);
      r35.xy = lightConstantsCB[r9.w].data[5].zw;
      r35.z = lightConstantsCB[r9.w].data[6].x;
      r20.yzw = -r35.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r9.w].data[0].xyz;
      r36.xyz = r20.yzw + -r5.xyz;
      r12.w = dot(r35.xyz, r36.xyz);
      r13.z = saturate(-r12.w / lightConstantsCB[r9.w].data[6].y);
      r37.xyz = r13.zzz * r35.xyz + r20.yzw;
      r37.xyz = r11.www ? r37.xyz : lightConstantsCB[r9.w].data[0].xyz;
      r37.xyz = r37.xyz + -r5.xyz;
      r13.w = dot(r37.xyz, r37.xyz);
      r14.w = rsqrt(r13.w);
      r37.xyz = r37.xyz * r14.www;
      r14.w = dot(r11.xyz, r37.xyz);
      r17.w = saturate(r14.w);
      r17.w = r0.w ? abs(r14.w) : r17.w;
      r18.w = cmp(0 < r17.w);
      if (r18.w != 0) {
        r18.w = sqrt(r13.w);
        r24.w = lightConstantsCB[r9.w].data[3].x * lightConstantsCB[r9.w].data[3].x;
        r13.w = r24.w / r13.w;
        r13.w = min(1, r13.w);
        r37.xy = saturate(r18.ww * lightConstantsCB[r9.w].data[2].xz + lightConstantsCB[r9.w].data[2].yw);
        r37.zw = r37.xy * r37.xy;
        r37.xy = r37.xy * float2(-2,-2) + float2(3,3);
        r37.xy = r37.zw * r37.xy;
        r13.w = r37.x * r13.w;
        r13.w = r13.w * r37.y;
        r18.w = cmp(0 < r13.w);
        if (r18.w != 0) {
          if (3 == 0) r18.w = 0; else if (3+27 < 32) {           r18.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(3 + 27)); r18.w = (uint)r18.w >> (32-3);          } else r18.w = (uint)lightConstantsCB[r9.w].data[1].w >> 27;
          r24.w = (int)r10.w & 7;
          r28.w = (int)r24.w + -1;
          r28.w = cmp((uint)r28.w < 32);
          r28.w = r2.z ? r28.w : 0;
          if (r28.w != 0) {
            r37.xy = mad((int2)r24.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r24.w, cb2[52].x, r37.x, u2.xxxx
          r24.w = samplerLinear[]..swiz;
            r24.w = (int)r24.w | 4;
            GBufferDiffuseColor[viewID].r37.x = u2.x;
            GBufferDiffuseColor[viewID].r37.y = u2.x;
          }
          r24.w = (int)r7.w + 257;
          r18.w = cmp((int)r18.w != 1);
          if (r18.w != 0) {
            r18.w = abs(r14.w) * -0.200000003 + 0.400000006;
            r28.w = cmp(r14.w < 0);
            r28.w = r0.w ? r28.w : 0;
            r18.w = r28.w ? -r18.w : r18.w;
            r37.xyz = r11.xyz * r18.www + r5.xyz;
            r37.xyz = -lightConstantsCB[r9.w].data[4].yzw + r37.xyz;
            r18.w = max(abs(r37.y), abs(r37.z));
            r18.w = max(abs(r37.x), r18.w);
            r18.w = lightConstantsCB[r9.w].data[5].x / r18.w;
            r18.w = lightConstantsCB[r9.w].data[5].y + r18.w;
            r28.w = dot(r37.xyz, r37.xyz);
            r28.w = rsqrt(r28.w);
            r18.w = max(6.10351563e-05, r18.w);
            r29.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
            r38.w = (uint)r29.w;
            r29.w = 0;
            r30.w = 0;
            while (true) {
              r31.w = cmp((int)r30.w >= 8);
              if (r31.w != 0) break;
              r39.y = dot(icb[r30.w+0].yx, r19.xy);
              r39.z = dot(icb[r30.w+0].yx, r19.yz);
              r39.yz = lightConstantsCB[r9.w].data[3].yy * r39.yz;
              r39.x = r39.y * r16.x;
              r39.w = r39.y * r15.x;
              r38.xyz = r37.xyz * r28.www + r39.xzw;
              r31.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyzw, r18.w).x;
              r29.w = r31.w * 0.125 + r29.w;
              r30.w = (int)r30.w + 1;
            }
          } else {
            r29.w = 1;
          }
          r13.w = r29.w * r13.w;
          r18.w = cmp(0 < r13.w);
          if (r18.w != 0) {
            r18.w = lightConstantsCB[r9.w].data[1].z * r1.z;
            r18.w = 0.25 * r18.w;
            r28.w = dot(r35.xyz, r17.xyz);
            r30.w = dot(r17.xyz, r36.xyz);
            r31.w = -r28.w * r28.w + lightConstantsCB[r9.w].data[6].y;
            r12.w = r28.w * r30.w + -r12.w;
            r12.w = saturate(r12.w / r31.w);
            r28.w = r31.w / lightConstantsCB[r9.w].data[6].y;
            r28.w = 10 * r28.w;
            r28.w = min(1, r28.w);
            r12.w = r12.w + -r13.z;
            r12.w = r28.w * r12.w + r13.z;
            r20.yzw = r12.www * r35.xyz + r20.yzw;
            r20.yzw = r11.www ? r20.yzw : lightConstantsCB[r9.w].data[0].xyz;
            r20.yzw = r20.yzw + -r5.xyz;
            r11.w = dot(r20.yzw, r20.yzw);
            r11.w = rsqrt(r11.w);
            r35.xyz = r20.yzw * r11.www;
            if (4 == 0) r12.w = 0; else if (4+16 < 32) {             r12.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);            } else r12.w = (uint)lightConstantsCB[r9.w].data[1].w >> 16;
            r13.z = cmp(0 < (uint)r12.w);
            r13.z = r13.z ? r3.x : 0;
            if (r13.z != 0) {
              r12.w = (int)r12.w + numLights;
              r12.w = mad((int)r12.w, 15, -15);
              r13.z = abs(r14.w) * -0.200000003 + 0.400000006;
              r28.w = cmp(r14.w < 0);
              r28.w = r0.w ? r28.w : 0;
              r13.z = r28.w ? -r13.z : r13.z;
              r22.xyz = r11.xyz * r13.zzz + r5.xyz;
              r36.xyz = lightConstantsCB[r12.w].data[6].yzw;
              r36.w = lightConstantsCB[r12.w].data[7].x;
              r13.z = dot(r36.xyzw, r22.xyzw);
              r36.xyz = lightConstantsCB[r12.w].data[7].yzw;
              r36.w = lightConstantsCB[r12.w].data[8].x;
              r28.w = dot(r36.xyzw, r22.xyzw);
              r30.w = cmp(r28.w < r13.z);
              if (r30.w == 0) {
                r36.xyz = lightConstantsCB[r12.w].data[4].yzw;
                r36.w = lightConstantsCB[r12.w].data[5].x;
                r36.x = dot(r36.xyzw, r22.xyzw);
                r37.xyz = lightConstantsCB[r12.w].data[5].yzw;
                r37.w = lightConstantsCB[r12.w].data[6].x;
                r36.y = dot(r37.xyzw, r22.xyzw);
                r22.xy = r36.xy / r28.ww;
                r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r36.x = lightConstantsCB[r12.w].data[9].w + r22.x;
                r36.y = lightConstantsCB[r12.w].data[10].x + r22.y;
                r22.xy = lightConstantsCB[r12.w].data[9].yz * r36.xy;
                r36.xy = lightConstantsCB[r12.w].data[3].yy / lightConstantsCB[r12.w].data[8].yw;
                r36.zw = float2(1,1) + -r36.xy;
                r36.zw = cmp(r22.xy >= r36.zw);
                r36.xy = cmp(r36.xy >= r22.xy);
                r36.xy = (int2)r36.xy | (int2)r36.zw;
                r22.z = (int)r36.y | (int)r36.x;
                if (r22.z == 0) {
                  r22.xy = saturate(r22.xy);
                  r36.x = r22.x * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                  r36.y = r22.y * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                  r22.x = lightConstantsCB[r12.w].data[10].z * r28.w;
                  r13.z = lightConstantsCB[r12.w].data[10].y * r28.w + r13.z;
                  r13.z = r13.z / r22.x;
                }
              } else {
                r22.z = -1;
              }
              r22.x = (int)r30.w | (int)r22.z;
              if (r22.x == 0) {
                r13.z = max(6.10351563e-05, r13.z);
                r22.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r37.z = (uint)r22.x;
                  r22.yz = float2(0,0);
                  while (true) {
                    r28.w = cmp((int)r22.z >= 8);
                    if (r28.w != 0) break;
                    r38.x = dot(icb[r22.z+0].yx, r19.xw);
                    r38.y = dot(icb[r22.z+0].xy, r13.xy);
                    r37.xy = r38.xy * lightConstantsCB[r12.w].data[3].yy + r36.xy;
                    r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r13.z).x;
                    r22.y = r28.w * 0.125 + r22.y;
                    r22.z = (int)r22.z + 1;
                  }
                } else {
                  r36.z = (uint)r22.x;
                  r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r13.z).x;
                }
                r12.w = r22.y * r22.y;
                r12.w = r12.w * r22.y;
              } else {
                r12.w = 1;
              }
              r13.w = r13.w * r12.w;
            } else {
              if (4 == 0) r12.w = 0; else if (4+20 < 32) {               r12.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);              } else r12.w = (uint)lightConstantsCB[r9.w].data[1].w >> 20;
              r13.z = cmp(0 < (uint)r12.w);
              r13.z = r13.z ? r6.w : 0;
              if (r13.z != 0) {
                r12.w = (int)r12.w + numLights;
                r12.w = mad((int)r12.w, 15, -15);
                r13.z = abs(r14.w) * -0.200000003 + 0.400000006;
                r22.x = cmp(r14.w < 0);
                r22.x = r0.w ? r22.x : 0;
                r13.z = r22.x ? -r13.z : r13.z;
                r23.xyz = r11.xyz * r13.zzz + r5.xyz;
                r36.xyz = lightConstantsCB[r12.w].data[6].yzw;
                r36.w = lightConstantsCB[r12.w].data[7].x;
                r13.z = dot(r36.xyzw, r23.xyzw);
                r36.xyz = lightConstantsCB[r12.w].data[7].yzw;
                r36.w = lightConstantsCB[r12.w].data[8].x;
                r22.x = dot(r36.xyzw, r23.xyzw);
                r22.z = cmp(r22.x < r13.z);
                if (r22.z == 0) {
                  r36.xyz = lightConstantsCB[r12.w].data[4].yzw;
                  r36.w = lightConstantsCB[r12.w].data[5].x;
                  r36.x = dot(r36.xyzw, r23.xyzw);
                  r37.xyz = lightConstantsCB[r12.w].data[5].yzw;
                  r37.w = lightConstantsCB[r12.w].data[6].x;
                  r36.y = dot(r37.xyzw, r23.xyzw);
                  r23.xy = r36.xy / r22.xx;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r36.x = lightConstantsCB[r12.w].data[9].w + r23.x;
                  r36.y = lightConstantsCB[r12.w].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r12.w].data[9].yz * r36.xy;
                  r36.xy = lightConstantsCB[r12.w].data[3].yy / lightConstantsCB[r12.w].data[8].yw;
                  r36.zw = float2(1,1) + -r36.xy;
                  r36.zw = cmp(r23.xy >= r36.zw);
                  r36.xy = cmp(r36.xy >= r23.xy);
                  r36.xy = (int2)r36.xy | (int2)r36.zw;
                  r23.z = (int)r36.y | (int)r36.x;
                  if (r23.z == 0) {
                    r23.xy = saturate(r23.xy);
                    r36.x = r23.x * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                    r36.y = r23.y * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                    r23.x = lightConstantsCB[r12.w].data[10].z * r22.x;
                    r13.z = lightConstantsCB[r12.w].data[10].y * r22.x + r13.z;
                    r13.z = r13.z / r23.x;
                  }
                } else {
                  r23.z = -1;
                }
                r22.x = (int)r22.z | (int)r23.z;
                if (r22.x == 0) {
                  r13.z = max(6.10351563e-05, r13.z);
                  r22.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r23.z = (uint)r22.x;
                    r22.z = 0;
                    r28.w = 0;
                    while (true) {
                      r30.w = cmp((int)r28.w >= 8);
                      if (r30.w != 0) break;
                      r37.x = dot(icb[r28.w+0].xy, r14.xy);
                      r37.y = dot(icb[r28.w+0].yx, r14.xz);
                      r23.xy = r37.xy * lightConstantsCB[r12.w].data[3].yy + r36.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r13.z).x;
                      r22.z = r23.x * 0.125 + r22.z;
                      r28.w = (int)r28.w + 1;
                    }
                  } else {
                    r36.z = (uint)r22.x;
                    r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r13.z).x;
                  }
                  r12.w = r22.z * r22.z;
                  r12.w = r12.w * r22.z;
                } else {
                  r12.w = 1;
                }
                r13.w = r13.w * r12.w;
              }
            }
            r12.w = -r17.w * r2.x + 1;
            r12.w = r12.w * r12.w;
            r12.w = -r12.w * 0.620000005 + 0.620000005;
            r12.w = r12.w + -r17.w;
            r12.w = r1.w * r12.w + r17.w;
            r12.w = r12.w * r13.w;
            r23.x = lightConstantsCB[r9.w].data[0].w;
            r23.yz = lightConstantsCB[r9.w].data[1].xy;
            r13.z = cmp(0 < r14.w);
            r36.xyz = r12.www * r23.xyz + r31.xyz;
            r14.w = saturate(dot(r11.xyz, r35.xyz));
            r20.yzw = r20.yzw * r11.www + r12.xyz;
            r11.w = dot(r20.yzw, r20.yzw);
            r11.w = rsqrt(r11.w);
            r20.yzw = r20.yzw * r11.www;
            r11.w = dot(r20.yzw, r12.xyz);
            r17.w = dot(r11.xyz, r20.yzw);
            r20.y = abs(r17.w) * r1.z + -abs(r17.w);
            r17.w = abs(r17.w) * r20.y + 1;
            r20.y = r14.w * r2.y + r2.w;
            r17.w = r17.w * r17.w;
            r17.w = r17.w * r20.y;
            r17.w = rcp(r17.w);
            r14.w = r14.w * r18.w;
            r14.w = r17.w * r14.w;
            r14.w = r14.w * r13.w;
            r20.yzw = r14.www * r23.xyz + r34.xyz;
            r11.w = saturate(1 + -r11.w);
            r17.w = r11.w * r11.w;
            r17.w = r17.w * r17.w;
            r11.w = r17.w * r11.w;
            r11.w = r14.w * r11.w;
            r35.xyz = r11.www * r23.xyz + r33.xyz;
            r23.xyz = r12.www * r23.xyz + r32.xyz;
            r23.xyz = r0.www ? r23.xyz : r32.xyz;
            r31.xyz = r13.zzz ? r36.xyz : r31.xyz;
            r32.xyz = r13.zzz ? r32.xyz : r23.xyz;
            r33.xyz = r13.zzz ? r35.xyz : r33.xyz;
            r34.xyz = r13.zzz ? r20.yzw : r34.xyz;
            r11.w = (int)r24.w & 7;
            r12.w = (int)r11.w + -1;
            r12.w = cmp((uint)r12.w < 32);
            r12.w = r2.z ? r12.w : 0;
            if (r12.w != 0) {
              r20.yz = mad((int2)r11.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r11.w, cb2[52].x, r20.y, u2.xxxx
            r11.w = samplerLinear[]..swiz;
              r11.w = (int)r11.w | 8;
              GBufferDiffuseColor[viewID].r20.y = u2.x;
              GBufferDiffuseColor[viewID].r20.z = u2.x;
            }
            r7.w = (int)r7.w + 0x00010101;
          } else {
            r7.w = r24.w;
          }
        } else {
          r7.w = r10.w;
        }
      } else {
        r7.w = r10.w;
      }
      break;
      case 2 :      if (r2.z != 0) {
        r10.w = (int)r7.w & 3;
        r10.w = mad((int)r10.w, 24, 112);
        r21.yzw = lightConstantsCB[r9.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r10.w = u2.xyzw;
      }
      r10.w = (int)r7.w + 1;
      r23.xy = lightConstantsCB[r9.w].data[3].zw + -r5.xy;
      r23.z = lightConstantsCB[r9.w].data[4].x + -r5.z;
      r11.w = dot(r23.xyz, r23.xyz);
      r11.w = rsqrt(r11.w);
      r20.yzw = r23.xyz * r11.www;
      r12.w = dot(r11.xyz, r20.yzw);
      r13.z = saturate(r12.w);
      r13.w = r0.w ? abs(r12.w) : r13.z;
      r14.w = cmp(0 < r13.w);
      if (r14.w != 0) {
        r35.xyz = lightConstantsCB[r9.w].data[7].yzw;
        r35.w = lightConstantsCB[r9.w].data[8].x;
        r14.w = dot(r35.xyzw, r5.xyzw);
        r17.w = cmp(r14.w < 1);
        if (r17.w != 0) {
          r20.yzw = float3(1,1,1);
          r17.w = 0;
        } else {
          r21.yzw = lightConstantsCB[r9.w].data[0].xyz + -r5.xyz;
          r18.w = lightConstantsCB[r9.w].data[3].x * lightConstantsCB[r9.w].data[3].x;
          r21.y = dot(r21.yzw, r21.yzw);
          r18.w = r18.w / r21.y;
          r18.w = min(1, r18.w);
          r21.yz = saturate(r14.ww * lightConstantsCB[r9.w].data[2].xz + lightConstantsCB[r9.w].data[2].yw);
          r36.xy = r21.yz * r21.yz;
          r21.yz = r21.yz * float2(-2,-2) + float2(3,3);
          r21.yz = r36.xy * r21.yz;
          r18.w = r21.y * r18.w;
          r18.w = r18.w * r21.z;
          r36.xyz = lightConstantsCB[r9.w].data[4].yzw;
          r36.w = lightConstantsCB[r9.w].data[5].x;
          r36.x = dot(r36.xyzw, r5.xyzw);
          r37.xyz = lightConstantsCB[r9.w].data[5].yzw;
          r37.w = lightConstantsCB[r9.w].data[6].x;
          r36.y = dot(r37.xyzw, r5.xyzw);
          r24.xy = r36.xy / r14.ww;
          r14.w = cmp(lightConstantsCB[r9.w].data[10].w < 0.00048828125);
          if (r14.w != 0) {
            r21.yz = saturate(abs(r24.xy) * lightConstantsCB[r9.w].data[12].xy + lightConstantsCB[r9.w].data[12].zw);
            r36.xy = r21.yz * r21.yz;
            r21.yz = r21.yz * float2(-2,-2) + float2(3,3);
            r21.yz = r36.xy * r21.yz;
            r14.w = r21.y * r21.z;
          } else {
            r36.xyzw = saturate(lightConstantsCB[r9.w].data[11].xyzw * abs(r24.yyxx));
            r36.xyzw = log2(r36.xyzw);
            r36.xyzw = lightConstantsCB[r9.w].data[12].zzzz * r36.xyzw;
            r36.xyzw = exp2(r36.xyzw);
            r21.yz = r36.xy + r36.zw;
            r21.yz = log2(r21.yz);
            r21.yz = lightConstantsCB[r9.w].data[12].ww * r21.yz;
            r21.yz = exp2(r21.yz);
            r21.y = lightConstantsCB[r9.w].data[12].x * r21.y;
            r21.w = lightConstantsCB[r9.w].data[12].y * r21.z + -1;
            r21.y = lightConstantsCB[r9.w].data[12].y * r21.z + -r21.y;
            r21.y = saturate(r21.w / r21.y);
            r21.z = r21.y * r21.y;
            r21.y = r21.y * -2 + 3;
            r14.w = r21.z * r21.y;
          }
          r17.w = r18.w * r14.w;
          r14.w = 255 & (int)lightConstantsCB[r9.w].data[14].w;
          if (r14.w != 0) {
            r18.w = dot(lightConstantsCB[r9.w].data[13].xyz, r24.xyz);
            r36.x = lightConstantsCB[r9.w].data[13].w;
            r36.yz = lightConstantsCB[r9.w].data[14].xy;
            r21.y = dot(r36.xyz, r24.xyz);
            r36.x = frac(r18.w);
            r36.y = frac(r21.y);
            r14.w = (int)r14.w + -1;
            r36.z = (uint)r14.w;
            r20.yzw = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
          } else {
            r20.yzw = float3(1,1,1);
          }
        }
        r36.x = lightConstantsCB[r9.w].data[0].w;
        r36.yz = lightConstantsCB[r9.w].data[1].xy;
        r20.yzw = r36.xyz * r20.yzw;
        r14.w = cmp(0 < r17.w);
        if (r14.w != 0) {
          if (3 == 0) r14.w = 0; else if (3+27 < 32) {           r14.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)lightConstantsCB[r9.w].data[1].w >> 27;
          r18.w = (int)r10.w & 7;
          r21.y = (int)r18.w + -1;
          r21.y = cmp((uint)r21.y < 32);
          r21.y = r2.z ? r21.y : 0;
          if (r21.y != 0) {
            r21.yz = mad((int2)r18.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r18.w, cb2[52].x, r21.y, u2.xxxx
          r18.w = samplerLinear[]..swiz;
            r18.w = (int)r18.w | 4;
            GBufferDiffuseColor[viewID].r21.y = u2.x;
            GBufferDiffuseColor[viewID].r21.z = u2.x;
          }
          r18.w = (int)r7.w + 257;
          r14.w = cmp((int)r14.w != 1);
          if (r14.w != 0) {
            r14.w = abs(r12.w) * -0.200000003 + 0.400000006;
            r21.y = cmp(r12.w < 0);
            r21.y = r0.w ? r21.y : 0;
            r14.w = r21.y ? -r14.w : r14.w;
            r25.xyz = r11.xyz * r14.www + r5.xyz;
            r36.xyz = lightConstantsCB[r9.w].data[6].yzw;
            r36.w = lightConstantsCB[r9.w].data[7].x;
            r14.w = dot(r36.xyzw, r25.xyzw);
            r21.y = dot(r35.xyzw, r25.xyzw);
            r21.z = cmp(r21.y >= r14.w);
            if (r21.z != 0) {
              r35.xyz = lightConstantsCB[r9.w].data[4].yzw;
              r35.w = lightConstantsCB[r9.w].data[5].x;
              r24.x = dot(r35.xyzw, r25.xyzw);
              r35.xyz = lightConstantsCB[r9.w].data[5].yzw;
              r35.w = lightConstantsCB[r9.w].data[6].x;
              r24.y = dot(r35.xyzw, r25.xyzw);
              r21.zw = r24.xy / r21.yy;
              r21.zw = saturate(r21.zw * float2(0.5,-0.5) + float2(0.5,0.5));
              r25.x = r21.z * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
              r25.y = r21.w * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
              r14.w = r14.w / r21.y;
              r14.w = max(6.10351563e-05, r14.w);
              r21.y = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r35.z = (uint)r21.y;
                r21.zw = float2(0,0);
                while (true) {
                  r22.x = cmp((int)r21.w >= 8);
                  if (r22.x != 0) break;
                  r24.x = dot(icb[r21.w+0].xy, r28.xy);
                  r24.y = dot(icb[r21.w+0].yx, r28.xz);
                  r35.xy = r24.xy * lightConstantsCB[r9.w].data[3].yy + r25.xy;
                  r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r14.w).x;
                  r21.z = r22.x * 0.125 + r21.z;
                  r21.w = (int)r21.w + 1;
                }
              } else {
                r25.z = (uint)r21.y;
                r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r14.w).x;
              }
              r14.w = r21.z * r21.z;
              r14.w = r14.w * r21.z;
            } else {
              r14.w = 1;
            }
          } else {
            r14.w = 1;
          }
          r14.w = r17.w * r14.w;
          r17.w = cmp(0 < r14.w);
          if (r17.w != 0) {
            r17.w = lightConstantsCB[r9.w].data[1].z * r1.z;
            r17.w = r17.w * r13.z;
            if (4 == 0) r21.y = 0; else if (4+16 < 32) {             r21.y = (uint)lightConstantsCB[r9.w].data[1].w << (32-(4 + 16)); r21.y = (uint)r21.y >> (32-4);            } else r21.y = (uint)lightConstantsCB[r9.w].data[1].w >> 16;
            r21.w = cmp(0 < (uint)r21.y);
            r21.w = r21.w ? r3.x : 0;
            if (r21.w != 0) {
              r21.y = (int)r21.y + numLights;
              r21.y = mad((int)r21.y, 15, -15);
              r21.w = abs(r12.w) * -0.200000003 + 0.400000006;
              r22.x = cmp(r12.w < 0);
              r22.x = r0.w ? r22.x : 0;
              r21.w = r22.x ? -r21.w : r21.w;
              r26.xyz = r11.xyz * r21.www + r5.xyz;
              r35.xyz = lightConstantsCB[r21.y].data[6].yzw;
              r35.w = lightConstantsCB[r21.y].data[7].x;
              r21.w = dot(r35.xyzw, r26.xyzw);
              r35.xyz = lightConstantsCB[r21.y].data[7].yzw;
              r35.w = lightConstantsCB[r21.y].data[8].x;
              r22.x = dot(r35.xyzw, r26.xyzw);
              r24.x = cmp(r22.x < r21.w);
              if (r24.x == 0) {
                r35.xyz = lightConstantsCB[r21.y].data[4].yzw;
                r35.w = lightConstantsCB[r21.y].data[5].x;
                r25.x = dot(r35.xyzw, r26.xyzw);
                r35.xyz = lightConstantsCB[r21.y].data[5].yzw;
                r35.w = lightConstantsCB[r21.y].data[6].x;
                r25.y = dot(r35.xyzw, r26.xyzw);
                r24.yw = r25.xy / r22.xx;
                r24.yw = r24.yw * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.x = lightConstantsCB[r21.y].data[9].w + r24.y;
                r25.y = lightConstantsCB[r21.y].data[10].x + r24.w;
                r24.yw = lightConstantsCB[r21.y].data[9].yz * r25.xy;
                r25.xy = lightConstantsCB[r21.y].data[3].yy / lightConstantsCB[r21.y].data[8].yw;
                r26.xy = float2(1,1) + -r25.xy;
                r26.xy = cmp(r24.yw >= r26.xy);
                r25.xy = cmp(r25.xy >= r24.yw);
                r25.xy = (int2)r25.xy | (int2)r26.xy;
                r25.x = (int)r25.y | (int)r25.x;
                if (r25.x == 0) {
                  r24.yw = saturate(r24.yw);
                  r26.x = r24.y * lightConstantsCB[r21.y].data[8].y + lightConstantsCB[r21.y].data[8].z;
                  r26.y = r24.w * lightConstantsCB[r21.y].data[8].w + lightConstantsCB[r21.y].data[9].x;
                  r24.y = lightConstantsCB[r21.y].data[10].z * r22.x;
                  r21.w = lightConstantsCB[r21.y].data[10].y * r22.x + r21.w;
                  r21.w = r21.w / r24.y;
                }
              } else {
                r25.x = -1;
              }
              r22.x = (int)r24.x | (int)r25.x;
              if (r22.x == 0) {
                r21.w = max(6.10351563e-05, r21.w);
                r22.x = 0x0000ffff & (int)lightConstantsCB[r21.y].data[1].w;
                if (enableDitheredShadow != 0) {
                  r25.z = (uint)r22.x;
                  r24.xy = float2(0,0);
                  while (true) {
                    r24.w = cmp((int)r24.y >= 8);
                    if (r24.w != 0) break;
                    r35.x = dot(icb[r24.y+0].xy, r29.xy);
                    r35.y = dot(icb[r24.y+0].yx, r29.xz);
                    r25.xy = r35.xy * lightConstantsCB[r21.y].data[3].yy + r26.xy;
                    r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.w).x;
                    r24.x = r24.w * 0.125 + r24.x;
                    r24.y = (int)r24.y + 1;
                  }
                } else {
                  r26.z = (uint)r22.x;
                  r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r21.w).x;
                }
                r21.y = r24.x * r24.x;
                r21.y = r21.y * r24.x;
              } else {
                r21.y = 1;
              }
              r14.w = r21.y * r14.w;
            } else {
              if (4 == 0) r9.w = 0; else if (4+20 < 32) {               r9.w = (uint)lightConstantsCB[r9.w].data[1].w << (32-(4 + 20)); r9.w = (uint)r9.w >> (32-4);              } else r9.w = (uint)lightConstantsCB[r9.w].data[1].w >> 20;
              r21.y = cmp(0 < (uint)r9.w);
              r21.y = r21.y ? r6.w : 0;
              if (r21.y != 0) {
                r9.w = (int)r9.w + numLights;
                r9.w = mad((int)r9.w, 15, -15);
                r21.y = abs(r12.w) * -0.200000003 + 0.400000006;
                r21.w = cmp(r12.w < 0);
                r21.w = r0.w ? r21.w : 0;
                r21.y = r21.w ? -r21.y : r21.y;
                r27.xyz = r11.xyz * r21.yyy + r5.xyz;
                r35.xyz = lightConstantsCB[r9.w].data[6].yzw;
                r35.w = lightConstantsCB[r9.w].data[7].x;
                r21.y = dot(r35.xyzw, r27.xyzw);
                r35.xyz = lightConstantsCB[r9.w].data[7].yzw;
                r35.w = lightConstantsCB[r9.w].data[8].x;
                r21.w = dot(r35.xyzw, r27.xyzw);
                r22.x = cmp(r21.w < r21.y);
                if (r22.x == 0) {
                  r35.xyz = lightConstantsCB[r9.w].data[4].yzw;
                  r35.w = lightConstantsCB[r9.w].data[5].x;
                  r25.x = dot(r35.xyzw, r27.xyzw);
                  r35.xyz = lightConstantsCB[r9.w].data[5].yzw;
                  r35.w = lightConstantsCB[r9.w].data[6].x;
                  r25.y = dot(r35.xyzw, r27.xyzw);
                  r24.yw = r25.xy / r21.ww;
                  r24.yw = r24.yw * float2(0.5,-0.5) + float2(0.5,0.5);
                  r25.x = lightConstantsCB[r9.w].data[9].w + r24.y;
                  r25.y = lightConstantsCB[r9.w].data[10].x + r24.w;
                  r24.yw = lightConstantsCB[r9.w].data[9].yz * r25.xy;
                  r25.xy = lightConstantsCB[r9.w].data[3].yy / lightConstantsCB[r9.w].data[8].yw;
                  r26.xy = float2(1,1) + -r25.xy;
                  r26.xy = cmp(r24.yw >= r26.xy);
                  r25.xy = cmp(r25.xy >= r24.yw);
                  r25.xy = (int2)r25.xy | (int2)r26.xy;
                  r25.x = (int)r25.y | (int)r25.x;
                  if (r25.x == 0) {
                    r24.yw = saturate(r24.yw);
                    r26.x = r24.y * lightConstantsCB[r9.w].data[8].y + lightConstantsCB[r9.w].data[8].z;
                    r26.y = r24.w * lightConstantsCB[r9.w].data[8].w + lightConstantsCB[r9.w].data[9].x;
                    r24.y = lightConstantsCB[r9.w].data[10].z * r21.w;
                    r21.y = lightConstantsCB[r9.w].data[10].y * r21.w + r21.y;
                    r21.y = r21.y / r24.y;
                  }
                } else {
                  r25.x = -1;
                }
                r21.w = (int)r22.x | (int)r25.x;
                if (r21.w == 0) {
                  r21.y = max(6.10351563e-05, r21.y);
                  r21.w = 0x0000ffff & (int)lightConstantsCB[r9.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r25.z = (uint)r21.w;
                    r22.x = 0;
                    r24.y = 0;
                    while (true) {
                      r24.w = cmp((int)r24.y >= 8);
                      if (r24.w != 0) break;
                      r27.x = dot(icb[r24.y+0].xy, r30.xy);
                      r27.y = dot(icb[r24.y+0].yx, r30.xz);
                      r25.xy = r27.xy * lightConstantsCB[r9.w].data[3].yy + r26.xy;
                      r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.y).x;
                      r22.x = r24.w * 0.125 + r22.x;
                      r24.y = (int)r24.y + 1;
                    }
                  } else {
                    r26.z = (uint)r21.w;
                    r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r21.y).x;
                  }
                  r9.w = r22.x * r22.x;
                  r9.w = r9.w * r22.x;
                } else {
                  r9.w = 1;
                }
                r14.w = r14.w * r9.w;
              }
            }
            r9.w = -r13.w * r2.x + 1;
            r9.w = r9.w * r9.w;
            r9.w = -r9.w * 0.620000005 + 0.620000005;
            r9.w = r9.w + -r13.w;
            r9.w = r1.w * r9.w + r13.w;
            r9.w = r9.w * r14.w;
            r12.w = cmp(0 < r12.w);
            r25.xyz = r9.www * r20.yzw + r31.xyz;
            r23.xyz = r23.xyz * r11.www + r12.xyz;
            r11.w = dot(r23.xyz, r23.xyz);
            r11.w = rsqrt(r11.w);
            r23.xyz = r23.xyz * r11.www;
            r11.w = dot(r23.xyz, r12.xyz);
            r13.w = dot(r11.xyz, r23.xyz);
            r21.y = abs(r13.w) * r1.z + -abs(r13.w);
            r13.w = abs(r13.w) * r21.y + 1;
            r13.z = r13.z * r2.y + r2.w;
            r13.w = r13.w * r13.w;
            r13.z = r13.w * r13.z;
            r13.z = rcp(r13.z);
            r13.z = r13.z * r17.w;
            r13.z = r14.w * r13.z;
            r13.z = 0.25 * r13.z;
            r23.xyz = r13.zzz * r20.yzw + r34.xyz;
            r11.w = saturate(1 + -r11.w);
            r13.w = r11.w * r11.w;
            r13.w = r13.w * r13.w;
            r11.w = r13.w * r11.w;
            r11.w = r13.z * r11.w;
            r26.xyz = r11.www * r20.yzw + r33.xyz;
            r20.yzw = r9.www * r20.yzw + r32.xyz;
            r20.yzw = r0.www ? r20.yzw : r32.xyz;
            r31.xyz = r12.www ? r25.xyz : r31.xyz;
            r32.xyz = r12.www ? r32.xyz : r20.yzw;
            r33.xyz = r12.www ? r26.xyz : r33.xyz;
            r34.xyz = r12.www ? r23.xyz : r34.xyz;
            r9.w = (int)r18.w & 7;
            r11.w = (int)r9.w + -1;
            r11.w = cmp((uint)r11.w < 32);
            r11.w = r2.z ? r11.w : 0;
            if (r11.w != 0) {
              r13.zw = mad((int2)r9.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, r13.z, u2.xxxx
            r9.w = samplerLinear[]..swiz;
              r9.w = (int)r9.w | 8;
              GBufferDiffuseColor[viewID].r13.z = u2.x;
              GBufferDiffuseColor[viewID].r13.w = u2.x;
            }
            r7.w = (int)r7.w + 0x00010101;
          } else {
            r7.w = r18.w;
          }
        } else {
          r7.w = r10.w;
        }
      } else {
        r7.w = r10.w;
      }
      break;
      default :
      break;
    }
    r8.w = (int)r8.w + 1;
  }
  r3.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.x = (uint)r3.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.x == (int)r1.z);
  r1.zw = r1.zz ? r2.yw : float2(-1,0);
  r2.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.x == (int)r2.x);
  r2.xy = r2.xx ? r2.yw : float2(-1,0);
  r4.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r4.x;
  r2.w = cmp((int)r0.x == (int)r2.w);
  r4.xy = r2.ww ? r4.yz : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r7.x;
  r0.x = cmp((int)r0.x == (int)r2.w);
  r4.zw = r0.xx ? r7.yz : float2(-1,0);
  r8.x = r1.z;
  r8.y = r2.x;
  r8.zw = r4.xz;
  r8.xyzw = r8.xyzw + -r3.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r8.x + r8.y;
  r0.x = r0.x + r8.z;
  r0.x = r0.x + r8.w;
  r1.z = r8.y * r2.y;
  r1.z = r8.x * r1.w + r1.z;
  r1.z = r8.z * r4.y + r1.z;
  r1.z = r8.w * r4.w + r1.z;
  r3.w = r1.z / r0.x;
  r0.x = cmp(0 >= r0.x);
  r3.yz = r0.xx ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.x = cmp((int)r1.w == (int)r1.z);
  r2.xyw = r0.xxx ? r3.xyz : r3.xzy;
  r0.x = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r0.x;
  r3.z = -r2.y * 0.5 + r0.x;
  r3.x = r3.z + r2.y;
  r2.xyw = r31.xyz * r6.xyz;
  r2.xyw = r32.xyz * r3.xyz + r2.xyw;
  r4.xyz = float3(0.959999979,0.959999979,0.959999979) * r33.xyz;
  r4.xyz = r34.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyz;
  r2.xyw = r4.xyz + r2.xyw;
  r4.xyz = float3(1,1,1) + -r3.xyz;
  r4.xyz = r33.xyz * r4.xyz;
  r3.xyz = r34.xyz * r3.xyz + r4.xyz;
  r3.xyz = r31.xyz * r6.xyz + r3.xyz;
  r2.xyw = r0.www ? r2.xyw : r3.xyz;
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
      r3.w = -1.44269502 * r1.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r1.w = r3.w / r1.w;
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
    r3.xyz = r2.xyw * r4.xyz + r3.xyz;
  } else {
    r0.x = fogConstants.heightFalloff * r5.z;
    r0.w = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r1.z = cmp(abs(r0.x) < 9.99999975e-05);
    r1.w = min(64, r0.w);
    r1.w = 1.44269502 * r1.w;
    r1.w = exp2(r1.w);
    r3.w = saturate(fogConstants.K0b);
    r4.x = cmp(r0.w < 0);
    r0.w = 1 + r0.w;
    r0.w = r4.x ? r1.w : r0.w;
    r0.w = -fogConstants.K0b + r0.w;
    r0.x = r1.z ? 1 : r0.x;
    r0.x = r0.w / r0.x;
    r0.x = r1.z ? r3.w : r0.x;
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
    r4.xyz = r4.xyz + -r2.xyw;
    r3.xyz = r0.xxx * r4.xyz + r2.xyw;
  }
  r2.xyw = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyw = r3.xyz ? r2.xyw : 0;
  r2.xyw = min(float3(65024,65024,64512), r2.xyw);
  r0.x = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(3,4));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r0.w = permuteHighlight & 16;
  r1.z = cmp((int)r0.w != 0);
  r0.w = cmp((int)r0.w == 16);
  r0.w = r0.w ? r1.z : 0;
  r3.z = r0.w ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.xxx ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r7.w & 3;
        break;
        case 2 :        if (2 == 0) r0.x = 0; else if (2+8 < 32) {         r0.x = (uint)r7.w << (32-(2 + 8)); r0.x = (uint)r0.x >> (32-2);        } else r0.x = (uint)r7.w >> 8;
        break;
        case 3 :        r0.x = (uint)r7.w >> 16;
        break;
        case 4 :        r0.x = 0;
        break;
        case 5 :        r0.x = 1;
        break;
        default :
        r0.x = 0;
        break;
      }
      r0.x = (uint)r0.x;
      r0.x = drawNumLighstScale * r0.x;
      r3.xyz = r0.xxx * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyz + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r7.w & 3;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r7.w & 3;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (2 == 0) r0.w = 0; else if (2+8 < 32) {     r0.w = (uint)r7.w << (32-(2 + 8)); r0.w = (uint)r0.w >> (32-2);    } else r0.w = (uint)r7.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r0.w
    InterlockedAdd(dest, value, orig_value);
    r1.x = (uint)r7.w >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), l(0)
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), l(1)
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
    atomic_umax g2, l(12), l(0)
    InterlockedMax(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(16), l(1)
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