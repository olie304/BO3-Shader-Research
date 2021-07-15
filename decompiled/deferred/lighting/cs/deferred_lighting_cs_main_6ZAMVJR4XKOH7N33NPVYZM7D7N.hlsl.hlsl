// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:05 2021

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
  r0.x = mad(permuteStride, 24, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
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
  r3.y = 5 * r2.w;
  r3.z = r2.w * 5 + -2.5;
  r3.z = 0.400000006 * r3.z;
  r3.z = max(0, r3.z);
  r13.zw = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r3.w = exp2(r13.z);
  r3.w = r3.w * r2.x;
  r3.zw = float2(100,9.1368103) * r3.zw;
  r6.w = r3.y * r2.w;
  r6.w = -r6.w * 2.0159049 + r13.w;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r2.x;
  r6.w = 9.70808983 * r6.w;
  r3.w = max(r6.w, r3.w);
  r3.w = max(1.26815999, r3.w);
  r6.w = numRefProbes + -numOverrideProbes;
  r0.y = (uint)r0.y >> 24;
  r7.w = cmp((uint)r0.y >= (uint)r6.w);
  r8.w = cmp((uint)r0.y < numRefProbes);
  r7.w = r7.w ? r8.w : 0;
  if (r7.w != 0) {
    r7.w = (int)r0.y * 14;
    if (r2.z != 0) {
      r18.yzw = refProbeConstantsCB[r7.w].data[0].xyz + eyeOffset.xyz;
      r18.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r15.yzw = -refProbeConstantsCB[r7.w].data[0].xyz + r5.xyz;
    r8.w = 0x0000ffff & (int)refProbeConstantsCB[r7.w].data[7].z;
    if (6 == 0) r9.w = 0; else if (6+25 < 32) {     r9.w = (uint)refProbeConstantsCB[r7.w].data[7].z << (32-(6 + 25)); r9.w = (uint)r9.w >> (32-6);    } else r9.w = (uint)refProbeConstantsCB[r7.w].data[7].z >> 25;
    r10.w = (int)r8.w * 6;
    r12.w = dot(refProbeAttenuationConstantsCB[r10.w].data[0].xyz, r15.yzw);
    r12.w = saturate(refProbeAttenuationConstantsCB[r10.w].data[0].w + r12.w);
    r13.z = dot(refProbeAttenuationConstantsCB[r10.w].data[1].xyz, r15.yzw);
    r13.z = saturate(refProbeAttenuationConstantsCB[r10.w].data[1].w + r13.z);
    r12.w = r13.z * r12.w;
    r13.z = dot(refProbeAttenuationConstantsCB[r10.w].data[2].xyz, r15.yzw);
    r13.z = saturate(refProbeAttenuationConstantsCB[r10.w].data[2].w + r13.z);
    r12.w = r13.z * r12.w;
    r13.z = dot(refProbeAttenuationConstantsCB[r10.w].data[3].xyz, r15.yzw);
    r13.z = saturate(refProbeAttenuationConstantsCB[r10.w].data[3].w + r13.z);
    r12.w = r13.z * r12.w;
    r13.z = dot(refProbeAttenuationConstantsCB[r10.w].data[4].xyz, r15.yzw);
    r13.z = saturate(refProbeAttenuationConstantsCB[r10.w].data[4].w + r13.z);
    r12.w = r13.z * r12.w;
    r13.z = dot(refProbeAttenuationConstantsCB[r10.w].data[5].xyz, r15.yzw);
    r10.w = saturate(refProbeAttenuationConstantsCB[r10.w].data[5].w + r13.z);
    r18.x = r12.w * r10.w;
    r10.w = 1 & (int)refProbeConstantsCB[r7.w].data[6].x;
    r18.yz = float2(0,1);
    r13.zw = r10.ww ? r18.xy : r18.zx;
    r18.x = 1;
    r10.w = refProbeConstantsCB[r7.w].data[6].x;
    r19.xy = r13.zw;
    r12.w = 1;
    while (true) {
      r14.w = cmp((int)r12.w >= (int)r9.w);
      if (r14.w != 0) break;
      r14.w = (int)r8.w + (int)r12.w;
      r14.w = (int)r14.w * 6;
      r16.y = dot(refProbeAttenuationConstantsCB[r14.w].data[0].xyz, r15.yzw);
      r16.y = saturate(refProbeAttenuationConstantsCB[r14.w].data[0].w + r16.y);
      r16.y = r19.x * r16.y;
      r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[1].xyz, r15.yzw);
      r16.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[1].w + r16.z);
      r16.y = r16.y * r16.z;
      r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[2].xyz, r15.yzw);
      r16.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[2].w + r16.z);
      r16.y = r16.y * r16.z;
      r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[3].xyz, r15.yzw);
      r16.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[3].w + r16.z);
      r16.y = r16.y * r16.z;
      r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[4].xyz, r15.yzw);
      r16.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[4].w + r16.z);
      r16.y = r16.y * r16.z;
      r16.z = dot(refProbeAttenuationConstantsCB[r14.w].data[5].xyz, r15.yzw);
      r14.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[5].w + r16.z);
      r19.x = r16.y * r14.w;
      r16.z = (uint)r10.w >> 2;
      if (1 == 0) r16.w = 0; else if (1+2 < 32) {       r16.w = (uint)r10.w << (32-(1 + 2)); r16.w = (uint)r16.w >> (32-1);      } else r16.w = (uint)r10.w >> 2;
      r18.z = (int)r16.z & 2;
      r18.w = max(r19.y, r19.x);
      r14.w = -r16.y * r14.w + 1;
      r14.w = r19.y * r14.w;
      r18.y = r18.z ? r14.w : r18.w;
      r19.xy = r16.ww ? r19.xy : r18.xy;
      r12.w = (int)r12.w + 1;
      r10.w = r16.z;
    }
    r19.y = saturate(r19.y);
    r8.w = refProbeConstantsCB[r7.w].data[6].y * r19.y;
    r9.w = cmp(0 < r8.w);
    if (r9.w != 0) {
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, l(880), u2.xxxx
      r9.w = samplerLinear[]..swiz;
        r9.w = (int)r9.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r9.w = refProbeConstantsCB[r7.w].data[7].y * r8.w;
      r18.x = refProbeConstantsCB[r7.w].data[7].w;
      r18.yz = refProbeConstantsCB[r7.w].data[8].xy;
      r10.w = dot(r17.xyz, r18.xyz);
      r12.w = dot(r15.yzw, r18.xyz);
      r12.w = -refProbeConstantsCB[r7.w].data[8].z + r12.w;
      r13.z = cmp(r12.w >= 0);
      r12.w = max(abs(r12.w), r3.z);
      r12.w = r13.z ? r12.w : -r12.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r12.w / r10.w;
      r10.w = min(131072, abs(r10.w));
      r18.x = refProbeConstantsCB[r7.w].data[8].w;
      r18.yz = refProbeConstantsCB[r7.w].data[9].xy;
      r12.w = dot(r17.xyz, r18.xyz);
      r13.z = dot(r15.yzw, r18.xyz);
      r13.z = -refProbeConstantsCB[r7.w].data[9].z + r13.z;
      r13.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r3.z);
      r13.z = r13.w ? r13.z : -r13.z;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.z / r12.w;
      r10.w = min(abs(r12.w), r10.w);
      r18.x = refProbeConstantsCB[r7.w].data[9].w;
      r18.yz = refProbeConstantsCB[r7.w].data[10].xy;
      r12.w = dot(r17.xyz, r18.xyz);
      r13.z = dot(r15.yzw, r18.xyz);
      r13.z = -refProbeConstantsCB[r7.w].data[10].z + r13.z;
      r13.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r3.z);
      r13.z = r13.w ? r13.z : -r13.z;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.z / r12.w;
      r10.w = min(abs(r12.w), r10.w);
      r18.x = refProbeConstantsCB[r7.w].data[10].w;
      r18.yz = refProbeConstantsCB[r7.w].data[11].xy;
      r12.w = dot(r17.xyz, r18.xyz);
      r13.z = dot(r15.yzw, r18.xyz);
      r13.z = -refProbeConstantsCB[r7.w].data[11].z + r13.z;
      r13.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r3.z);
      r13.z = r13.w ? r13.z : -r13.z;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.z / r12.w;
      r10.w = min(abs(r12.w), r10.w);
      r18.x = refProbeConstantsCB[r7.w].data[11].w;
      r18.yz = refProbeConstantsCB[r7.w].data[12].xy;
      r12.w = dot(r17.xyz, r18.xyz);
      r13.z = dot(r15.yzw, r18.xyz);
      r13.z = -refProbeConstantsCB[r7.w].data[12].z + r13.z;
      r13.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r3.z);
      r13.z = r13.w ? r13.z : -r13.z;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.z / r12.w;
      r10.w = min(abs(r12.w), r10.w);
      r18.x = refProbeConstantsCB[r7.w].data[12].w;
      r18.yz = refProbeConstantsCB[r7.w].data[13].xy;
      r12.w = dot(r17.xyz, r18.xyz);
      r13.z = dot(r15.yzw, r18.xyz);
      r13.z = -refProbeConstantsCB[r7.w].data[13].z + r13.z;
      r13.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r3.z);
      r13.z = r13.w ? r13.z : -r13.z;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.z / r12.w;
      r10.w = min(abs(r12.w), r10.w);
      r18.x = refProbeConstantsCB[r7.w].data[3].w + r15.y;
      r18.yz = refProbeConstantsCB[r7.w].data[4].xy + r15.zw;
      r16.yzw = r17.xyz * r10.www + r18.xyz;
      r12.w = dot(r16.yzw, r16.yzw);
      r12.w = sqrt(r12.w);
      r10.w = r10.w / r12.w;
      r10.w = r10.w + r10.w;
      r10.w = sqrt(r10.w);
      r10.w = r2.w * 5 + r10.w;
      r10.w = -0.844799995 + r10.w;
      r18.x = refProbeConstantsCB[r7.w].data[0].w;
      r18.y = refProbeConstantsCB[r7.w].data[1].z;
      r18.z = refProbeConstantsCB[r7.w].data[2].y;
      r19.x = dot(r16.yzw, r18.xyz);
      r20.xy = refProbeConstantsCB[r7.w].data[1].xw;
      r20.z = refProbeConstantsCB[r7.w].data[2].z;
      r19.y = dot(r16.yzw, r20.xyz);
      r21.x = refProbeConstantsCB[r7.w].data[1].y;
      r21.yz = refProbeConstantsCB[r7.w].data[2].xw;
      r19.z = dot(r16.yzw, r21.xyz);
      if (9 == 0) r12.w = 0; else if (9+16 < 32) {       r12.w = (uint)refProbeConstantsCB[r7.w].data[7].z << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);      } else r12.w = (uint)refProbeConstantsCB[r7.w].data[7].z >> 16;
      r19.w = (uint)r12.w;
      r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r10.w).xyz;
      r22.xyz = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
      r22.xyz = cmp((int3)r22.xyz == int3(2139095040,2139095040,2139095040));
      r10.w = (int)r22.y | (int)r22.x;
      r10.w = (int)r22.z | (int)r10.w;
      r16.yzw = r10.www ? float3(1,1,0) : r16.yzw;
      r22.x = dot(r15.yzw, r18.xyz);
      r22.y = dot(r15.yzw, r20.xyz);
      r22.z = dot(r15.yzw, r21.xyz);
      r15.yzw = saturate(r22.xyz * refProbeConstantsCB[r7.w].data[3].xyz + float3(0.5,0.5,0.5));
      r22.xy = refProbeConstantsCB[r7.w].data[4].zw * r15.yz;
      r22.z = refProbeConstantsCB[r7.w].data[5].x * r15.w;
      r15.yzw = refProbeConstantsCB[r7.w].data[5].yzw + r22.xyz;
      r19.x = dot(r11.xyz, r18.xyz);
      r19.y = dot(r11.xyz, r20.xyz);
      r19.z = dot(r11.xyz, r21.xyz);
      r18.xyz = cmp(float3(0,0,0) < r19.xyz);
      r20.z = r18.x ? 0 : 0.5;
      r20.xy = float2(0,0);
      r20.xyz = r20.xyz + r15.yzw;
      r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r21.xyz = r19.xyz * r19.xyz;
      r21.xyz = r21.xyz * r9.www;
      r22.z = r18.y ? 0 : 0.5;
      r22.xy = float2(0,0);
      r18.xyw = r22.xyz + r15.yzw;
      r18.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyw, 0).xyz;
      r18.xyw = r18.xyw * r21.yyy;
      r18.xyw = r20.xyz * r21.xxx + r18.xyw;
      r20.z = r18.z ? 0 : 0.5;
      r20.xy = float2(0,0);
      r15.yzw = r20.xyz + r15.yzw;
      r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
      r15.yzw = r15.yzw * r21.zzz + r18.xyw;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, 6).xyz;
      r19.xyz = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
      r19.xyz = cmp((int3)r19.xyz == int3(2139095040,2139095040,2139095040));
      r7.w = (int)r19.y | (int)r19.x;
      r7.w = (int)r19.z | (int)r7.w;
      r18.xyz = r7.www ? float3(1,1,0) : r18.xyz;
      r15.yzw = r18.xyz * r15.yzw;
      r7.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r10.w = r7.w * r3.w;
      r16.yzw = r16.yzw * r9.www;
      r9.w = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r7.w = r3.w * r7.w + r9.w;
      r7.w = r10.w / r7.w;
      r16.yzw = r16.yzw * r7.www;
      r7.w = 257;
    } else {
      r15.yzw = float3(0,0,0);
      r16.yzw = float3(0,0,0);
      r8.w = 0;
      r7.w = 1;
    }
  } else {
    r15.yzw = float3(0,0,0);
    r16.yzw = float3(0,0,0);
    r8.w = 0;
    r7.w = 0;
  }
  r6.w = cmp((uint)r0.y < (uint)r6.w);
  if (r6.w != 0) {
    r0.y = (int)r0.y * 14;
    if (r2.z != 0) {
      r6.w = (int)r7.w & 1;
      r6.w = mad((int)r6.w, 20, 880);
      r18.yzw = refProbeConstantsCB[r0.y].data[0].xyz + eyeOffset.xyz;
      r18.x = 16;
      GBufferDiffuseColor[viewID].r6.w = u2.xyzw;
    }
    r6.w = (int)r7.w + 1;
    r18.xyz = -refProbeConstantsCB[r0.y].data[0].xyz + r5.xyz;
    r9.w = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
    if (6 == 0) r10.w = 0; else if (6+25 < 32) {     r10.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);    } else r10.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
    r12.w = (int)r9.w * 6;
    r13.z = dot(refProbeAttenuationConstantsCB[r12.w].data[0].xyz, r18.xyz);
    r13.z = saturate(refProbeAttenuationConstantsCB[r12.w].data[0].w + r13.z);
    r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[1].xyz, r18.xyz);
    r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[1].w + r13.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[2].xyz, r18.xyz);
    r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[2].w + r13.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[3].xyz, r18.xyz);
    r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[3].w + r13.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[4].xyz, r18.xyz);
    r13.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[4].w + r13.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(refProbeAttenuationConstantsCB[r12.w].data[5].xyz, r18.xyz);
    r12.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[5].w + r13.w);
    r19.x = r13.z * r12.w;
    r12.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
    r19.yz = float2(0,1);
    r13.zw = r12.ww ? r19.xy : r19.zx;
    r19.x = 1;
    r12.w = refProbeConstantsCB[r0.y].data[6].x;
    r20.xy = r13.zw;
    r14.w = 1;
    while (true) {
      r18.w = cmp((int)r14.w >= (int)r10.w);
      if (r18.w != 0) break;
      r18.w = (int)r9.w + (int)r14.w;
      r18.w = (int)r18.w * 6;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r18.xyz);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.z);
      r19.z = r20.x * r19.z;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[1].xyz, r18.xyz);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[1].w + r19.w);
      r19.z = r19.z * r19.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[2].xyz, r18.xyz);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[2].w + r19.w);
      r19.z = r19.z * r19.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[3].xyz, r18.xyz);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[3].w + r19.w);
      r19.z = r19.z * r19.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[4].xyz, r18.xyz);
      r19.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[4].w + r19.w);
      r19.z = r19.z * r19.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r18.w].data[5].xyz, r18.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r18.w].data[5].w + r19.w);
      r20.x = r19.z * r18.w;
      r19.w = (uint)r12.w >> 2;
      if (1 == 0) r20.z = 0; else if (1+2 < 32) {       r20.z = (uint)r12.w << (32-(1 + 2)); r20.z = (uint)r20.z >> (32-1);      } else r20.z = (uint)r12.w >> 2;
      r20.w = (int)r19.w & 2;
      r21.x = max(r20.y, r20.x);
      r18.w = -r19.z * r18.w + 1;
      r18.w = r20.y * r18.w;
      r19.y = r20.w ? r18.w : r21.x;
      r20.xy = r20.zz ? r20.xy : r19.xy;
      r14.w = (int)r14.w + 1;
      r12.w = r19.w;
    }
    r9.w = saturate(r20.y + -r8.w);
    r10.w = refProbeConstantsCB[r0.y].data[6].y * r9.w;
    r12.w = cmp(0 < r10.w);
    if (r12.w != 0) {
      r12.w = (int)r6.w & 3;
      r13.z = (int)r12.w + -1;
      r13.z = cmp((uint)r13.z < 32);
      r13.z = r2.z ? r13.z : 0;
      if (r13.z != 0) {
        r13.zw = mad((int2)r12.ww, int2(20,20), int2(860,876));
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r12.w, cb2[52].x, r13.z, u2.xxxx
      r12.w = samplerLinear[]..swiz;
        r12.w = (int)r12.w | 32;
        GBufferDiffuseColor[viewID].r13.z = u2.x;
        GBufferDiffuseColor[viewID].r13.w = u2.x;
      }
      r6.w = (int)r7.w + 257;
      r9.w = r9.w * refProbeConstantsCB[r0.y].data[6].y + r8.w;
      r10.w = refProbeConstantsCB[r0.y].data[7].y * r10.w;
      r19.x = refProbeConstantsCB[r0.y].data[7].w;
      r19.yz = refProbeConstantsCB[r0.y].data[8].xy;
      r12.w = dot(r17.xyz, r19.xyz);
      r13.z = dot(r18.xyz, r19.xyz);
      r13.z = -refProbeConstantsCB[r0.y].data[8].z + r13.z;
      r13.w = cmp(r13.z >= 0);
      r13.z = max(abs(r13.z), r3.z);
      r13.z = r13.w ? r13.z : -r13.z;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r13.z / r12.w;
      r12.w = min(131072, abs(r12.w));
      r19.x = refProbeConstantsCB[r0.y].data[8].w;
      r19.yz = refProbeConstantsCB[r0.y].data[9].xy;
      r13.z = dot(r17.xyz, r19.xyz);
      r13.w = dot(r18.xyz, r19.xyz);
      r13.w = -refProbeConstantsCB[r0.y].data[9].z + r13.w;
      r14.w = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r3.z);
      r13.w = r14.w ? r13.w : -r13.w;
      r13.z = max(1.00000001e-07, -r13.z);
      r13.z = r13.w / r13.z;
      r12.w = min(abs(r13.z), r12.w);
      r19.x = refProbeConstantsCB[r0.y].data[9].w;
      r19.yz = refProbeConstantsCB[r0.y].data[10].xy;
      r13.z = dot(r17.xyz, r19.xyz);
      r13.w = dot(r18.xyz, r19.xyz);
      r13.w = -refProbeConstantsCB[r0.y].data[10].z + r13.w;
      r14.w = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r3.z);
      r13.w = r14.w ? r13.w : -r13.w;
      r13.z = max(1.00000001e-07, -r13.z);
      r13.z = r13.w / r13.z;
      r12.w = min(abs(r13.z), r12.w);
      r19.x = refProbeConstantsCB[r0.y].data[10].w;
      r19.yz = refProbeConstantsCB[r0.y].data[11].xy;
      r13.z = dot(r17.xyz, r19.xyz);
      r13.w = dot(r18.xyz, r19.xyz);
      r13.w = -refProbeConstantsCB[r0.y].data[11].z + r13.w;
      r14.w = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r3.z);
      r13.w = r14.w ? r13.w : -r13.w;
      r13.z = max(1.00000001e-07, -r13.z);
      r13.z = r13.w / r13.z;
      r12.w = min(abs(r13.z), r12.w);
      r19.x = refProbeConstantsCB[r0.y].data[11].w;
      r19.yz = refProbeConstantsCB[r0.y].data[12].xy;
      r13.z = dot(r17.xyz, r19.xyz);
      r13.w = dot(r18.xyz, r19.xyz);
      r13.w = -refProbeConstantsCB[r0.y].data[12].z + r13.w;
      r14.w = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r3.z);
      r13.w = r14.w ? r13.w : -r13.w;
      r13.z = max(1.00000001e-07, -r13.z);
      r13.z = r13.w / r13.z;
      r12.w = min(abs(r13.z), r12.w);
      r19.x = refProbeConstantsCB[r0.y].data[12].w;
      r19.yz = refProbeConstantsCB[r0.y].data[13].xy;
      r13.z = dot(r17.xyz, r19.xyz);
      r13.w = dot(r18.xyz, r19.xyz);
      r13.w = -refProbeConstantsCB[r0.y].data[13].z + r13.w;
      r14.w = cmp(r13.w >= 0);
      r3.z = max(abs(r13.w), r3.z);
      r3.z = r14.w ? r3.z : -r3.z;
      r13.z = max(1.00000001e-07, -r13.z);
      r3.z = r3.z / r13.z;
      r3.z = min(r12.w, abs(r3.z));
      r19.x = refProbeConstantsCB[r0.y].data[3].w + r18.x;
      r19.yz = refProbeConstantsCB[r0.y].data[4].xy + r18.yz;
      r19.xyz = r17.xyz * r3.zzz + r19.xyz;
      r12.w = dot(r19.xyz, r19.xyz);
      r12.w = sqrt(r12.w);
      r3.z = r3.z / r12.w;
      r3.z = r3.z + r3.z;
      r3.z = sqrt(r3.z);
      r2.w = r2.w * 5 + r3.z;
      r2.w = -0.844799995 + r2.w;
      r20.x = refProbeConstantsCB[r0.y].data[0].w;
      r20.y = refProbeConstantsCB[r0.y].data[1].z;
      r20.z = refProbeConstantsCB[r0.y].data[2].y;
      r21.x = dot(r19.xyz, r20.xyz);
      r22.xy = refProbeConstantsCB[r0.y].data[1].xw;
      r22.z = refProbeConstantsCB[r0.y].data[2].z;
      r21.y = dot(r19.xyz, r22.xyz);
      r23.x = refProbeConstantsCB[r0.y].data[1].y;
      r23.yz = refProbeConstantsCB[r0.y].data[2].xw;
      r21.z = dot(r19.xyz, r23.xyz);
      if (9 == 0) r3.z = 0; else if (9+16 < 32) {       r3.z = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r3.z = (uint)r3.z >> (32-9);      } else r3.z = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
      r21.w = (uint)r3.z;
      r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, r2.w).xyz;
      r24.xyz = (int3)r19.xyz & int3(-2147483648,-2147483648,-2147483648);
      r24.xyz = cmp((int3)r24.xyz == int3(2139095040,2139095040,2139095040));
      r2.w = (int)r24.y | (int)r24.x;
      r2.w = (int)r24.z | (int)r2.w;
      r19.xyz = r2.www ? float3(1,1,0) : r19.xyz;
      r24.x = dot(r18.xyz, r20.xyz);
      r24.y = dot(r18.xyz, r22.xyz);
      r24.z = dot(r18.xyz, r23.xyz);
      r18.xyz = saturate(r24.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
      r24.xy = refProbeConstantsCB[r0.y].data[4].zw * r18.xy;
      r24.z = refProbeConstantsCB[r0.y].data[5].x * r18.z;
      r18.xyz = refProbeConstantsCB[r0.y].data[5].yzw + r24.xyz;
      r21.x = dot(r11.xyz, r20.xyz);
      r21.y = dot(r11.xyz, r22.xyz);
      r21.z = dot(r11.xyz, r23.xyz);
      r20.xyz = cmp(float3(0,0,0) < r21.xyz);
      r22.z = r20.x ? 0 : 0.5;
      r22.xy = float2(0,0);
      r22.xyz = r22.xyz + r18.xyz;
      r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
      r23.xyz = r21.xyz * r21.xyz;
      r23.xyz = r23.xyz * r10.www;
      r24.z = r20.y ? 0 : 0.5;
      r24.xy = float2(0,0);
      r20.xyw = r24.xyz + r18.xyz;
      r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
      r20.xyw = r20.xyw * r23.yyy;
      r20.xyw = r22.xyz * r23.xxx + r20.xyw;
      r22.z = r20.z ? 0 : 0.5;
      r22.xy = float2(0,0);
      r18.xyz = r22.xyz + r18.xyz;
      r18.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r18.xyz = r18.xyz * r23.zzz + r20.xyw;
      r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r21.xyzw, 6).xyz;
      r21.xyz = (int3)r20.xyz & int3(-2147483648,-2147483648,-2147483648);
      r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
      r0.y = (int)r21.y | (int)r21.x;
      r0.y = (int)r21.z | (int)r0.y;
      r20.xyz = r0.yyy ? float3(1,1,0) : r20.xyz;
      r21.xyz = r20.xyz * r18.xyz;
      r0.y = dot(r21.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.yzw = r18.xyz * r20.xyz + r15.yzw;
      r2.w = r3.w * r0.y;
      r18.xyz = r19.xyz * r10.www;
      r3.z = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.y = r3.w * r0.y + r3.z;
      r0.y = r2.w / r0.y;
      r16.yzw = r18.xyz * r0.yyy + r16.yzw;
    } else {
      r9.w = r8.w;
    }
  } else {
    r9.w = r8.w;
    r6.w = r7.w;
  }
  r0.y = cmp(r8.w >= 1);
  bitmask.w = ((~(-1 << 8)) << 0) & 0xffffffff;  r2.w = (((uint)r6.w << 0) & bitmask.w) | ((uint)r7.w & ~bitmask.w);
  r0.y = r0.y ? r2.w : r6.w;
  r2.w = max(1, r9.w);
  r2.w = rcp(r2.w);
  r9.w = saturate(r9.w);
  r18.xyz = r15.yzw * r2.www;
  r16.yzw = r16.yzw * r2.www;
  r3.z = cmp(r9.w < 0.99000001);
  if (r3.z != 0) {
    r0.y = (int)r0.y + 256;
    r3.z = 1 + -r9.w;
    r3.w = sunConstants.globalProbeExposure * r3.z;
    r19.xyz = -globalProbeConstants.data[0].xyz + r5.xyz;
    r20.x = globalProbeConstants.data[0].w * r19.x;
    r20.yz = globalProbeConstants.data[1].xy * r19.yz;
    r19.xyz = saturate(float3(0.5,0.5,0.5) + r20.xyz);
    r20.xy = globalProbeConstants.data[1].zw * r19.xy;
    r20.z = globalProbeConstants.data[2].x * r19.z;
    r19.xyz = globalProbeConstants.data[2].yzw + r20.xyz;
    r20.xyz = cmp(float3(0,0,0) < r11.xyz);
    r20.xyz = r20.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r20.w = 0;
    r21.xyz = r20.wwx + r19.xyz;
    r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r22.xyz = r11.xyz * r11.xyz;
    r22.xyz = r22.xyz * r3.www;
    r23.xyz = r20.wwy + r19.xyz;
    r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r23.xyz = r23.xyz * r22.yyy;
    r21.xyz = r21.xyz * r22.xxx + r23.xyz;
    r19.xyz = r20.wwz + r19.xyz;
    r19.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r22.zzz + r21.xyz;
    r11.w = 0;
    r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r19.xyz = r20.xyz * r19.xyz;
    r3.w = dot(r19.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r18.xyz = r15.yzw * r2.www + r19.xyz;
    r17.w = 0;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r3.y).xyz;
    r2.w = sunConstants.globalProbeExposure * r3.z + -r3.w;
    r2.w = r2.y * r2.w + r3.w;
    r16.yzw = r15.yzw * r2.www + r16.yzw;
  }
  r2.w = r2.x + r4.z;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r4.z;
  r2.w = saturate(-1 + r2.w);
  r3.yzw = r18.xyz * r4.zzz;
  r15.yzw = r0.www ? r3.yzw : 0;
  r13.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r13.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r13.zw, 0).xy;
  r16.yzw = r16.yzw * r2.www;
  r18.xyz = r16.yzw * r13.zzz;
  r16.yzw = r16.yzw * r13.www;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r4.z = r2.x * r2.y + r2.w;
  r2.yw = r4.zz * r2.yw;
  r4.z = (uint)renderTargetSize.x;
  r4.z = (int)r4.z + 7;
  r4.z = (uint)r4.z >> 3;
  r4.z = mad((int)r0.z, (int)r4.z, (int)r0.x);
  r4.z = (uint)r4.z << 5;
  r6.w = ~(int)r3.x;
  r19.x = -r13.x;
  r2.x = -r2.x * 0.5 + 1;
  r20.x = 2;
  r5.w = 1;
  r21.x = 2;
  r22.z = 1;
  r23.w = 1;
  r24.w = 1;
  r25.w = 1;
  r19.z = r13.x;
  r26.w = 1;
  r19.yw = r14.xx;
  r13.y = r19.w;
  r14.y = r19.x;
  r27.x = r14.x;
  r27.y = r19.x;
  r27.z = r13.x;
  r14.z = r13.x;
  r28.w = 1;
  r29.x = r14.x;
  r29.y = r19.x;
  r29.z = r13.x;
  r30.x = r14.x;
  r30.y = r19.x;
  r30.z = r13.x;
  r31.xyz = r3.yzw;
  r32.xyz = r15.yzw;
  r33.xyz = r18.xyz;
  r34.xyz = r16.yzw;
  r7.w = enableDitheredShadow;
  r8.w = 0;
  r9.w = 0;
  while (true) {
    r10.w = cmp((uint)r9.w >= numLights);
    if (r10.w != 0) break;
    r10.w = (uint)r9.w >> 5;
    r10.w = (int)r4.z + (int)r10.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t26.xxxx
  r10.w = samplerLinear[]..swiz;
    r35.xyz = r31.xyz;
    r36.xyz = r32.xyz;
    r37.xyz = r33.xyz;
    r38.xyz = r34.xyz;
    r11.w = r7.w;
    r12.w = r8.w;
    r13.z = r10.w;
    while (true) {
      if (r13.z == 0) break;
      r13.w = firstbitlow((uint)r13.z);
      r14.w = 1 << (int)r13.w;
      r14.w = ~(int)r14.w;
      r13.z = (int)r13.z & (int)r14.w;
      r13.w = (int)r9.w + (int)r13.w;
      r13.w = (int)r13.w * 15;
      if (3 == 0) r14.w = 0; else if (3+24 < 32) {       r14.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(3 + 24)); r14.w = (uint)r14.w >> (32-3);      } else r14.w = (uint)lightConstantsCB[r13.w].data[1].w >> 24;
      r17.w = cmp((int)r14.w == 2);
      if (r17.w != 0) {
        if (3 == 0) r17.w = 0; else if (3+27 < 32) {         r17.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(3 + 27)); r17.w = (uint)r17.w >> (32-3);        } else r17.w = (uint)lightConstantsCB[r13.w].data[1].w >> 27;
        r18.w = (int)r12.w & 255;
        r22.w = cmp((uint)r18.w < 32);
        r22.w = r2.z ? r22.w : 0;
        if (r22.w != 0) {
          r18.w = mad((int)r18.w, 24, 112);
          r20.yzw = lightConstantsCB[r13.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r18.w = u2.xyzw;
        }
        r18.w = (int)r12.w + 1;
        r39.xy = lightConstantsCB[r13.w].data[3].zw + -r5.xy;
        r39.z = lightConstantsCB[r13.w].data[4].x + -r5.z;
        r20.y = dot(r39.xyz, r39.xyz);
        r20.y = rsqrt(r20.y);
        r40.xyz = r39.xyz * r20.yyy;
        r20.z = lightConstantsCB[r13.w].data[1].z * r1.z;
        r20.z = 0.25 * r20.z;
        r20.w = dot(r11.xyz, r40.xyz);
        r22.w = saturate(r20.w);
        r27.w = r0.w ? abs(r20.w) : r22.w;
        r29.w = cmp(0 < r27.w);
        if (r29.w != 0) {
          r40.xyz = lightConstantsCB[r13.w].data[7].yzw;
          r40.w = lightConstantsCB[r13.w].data[8].x;
          r29.w = dot(r40.xyzw, r5.xyzw);
          r30.w = cmp(r29.w < 1);
          if (r30.w != 0) {
            r41.xyz = float3(1,1,1);
            r30.w = 0;
          } else {
            r42.xyz = lightConstantsCB[r13.w].data[0].xyz + -r5.xyz;
            r31.w = lightConstantsCB[r13.w].data[3].x * lightConstantsCB[r13.w].data[3].x;
            r32.w = dot(r42.xyz, r42.xyz);
            r31.w = r31.w / r32.w;
            r31.w = min(1, r31.w);
            r42.xy = saturate(r29.ww * lightConstantsCB[r13.w].data[2].xz + lightConstantsCB[r13.w].data[2].yw);
            r42.zw = r42.xy * r42.xy;
            r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
            r42.xy = r42.zw * r42.xy;
            r31.w = r42.x * r31.w;
            r31.w = r31.w * r42.y;
            r42.xyz = lightConstantsCB[r13.w].data[4].yzw;
            r42.w = lightConstantsCB[r13.w].data[5].x;
            r42.x = dot(r42.xyzw, r5.xyzw);
            r43.xyz = lightConstantsCB[r13.w].data[5].yzw;
            r43.w = lightConstantsCB[r13.w].data[6].x;
            r42.y = dot(r43.xyzw, r5.xyzw);
            r22.xy = r42.xy / r29.ww;
            r29.w = cmp(lightConstantsCB[r13.w].data[10].w < 0.00048828125);
            if (r29.w != 0) {
              r42.xy = saturate(abs(r22.xy) * lightConstantsCB[r13.w].data[12].xy + lightConstantsCB[r13.w].data[12].zw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r29.w = r42.x * r42.y;
            } else {
              r42.xyzw = saturate(lightConstantsCB[r13.w].data[11].xyzw * abs(r22.yyxx));
              r42.xyzw = log2(r42.xyzw);
              r42.xyzw = lightConstantsCB[r13.w].data[12].zzzz * r42.xyzw;
              r42.xyzw = exp2(r42.xyzw);
              r42.xy = r42.xy + r42.zw;
              r42.xy = log2(r42.xy);
              r42.xy = lightConstantsCB[r13.w].data[12].ww * r42.xy;
              r42.xy = exp2(r42.xy);
              r32.w = lightConstantsCB[r13.w].data[12].x * r42.x;
              r33.w = lightConstantsCB[r13.w].data[12].y * r42.y + -1;
              r32.w = lightConstantsCB[r13.w].data[12].y * r42.y + -r32.w;
              r32.w = saturate(r33.w / r32.w);
              r33.w = r32.w * r32.w;
              r32.w = r32.w * -2 + 3;
              r29.w = r33.w * r32.w;
            }
            r30.w = r31.w * r29.w;
            r29.w = 255 & (int)lightConstantsCB[r13.w].data[14].w;
            if (r29.w != 0) {
              r31.w = dot(lightConstantsCB[r13.w].data[13].xyz, r22.xyz);
              r42.x = lightConstantsCB[r13.w].data[13].w;
              r42.yz = lightConstantsCB[r13.w].data[14].xy;
              r22.x = dot(r42.xyz, r22.xyz);
              r42.x = frac(r31.w);
              r42.y = frac(r22.x);
              r22.x = (int)r29.w + -1;
              r42.z = (uint)r22.x;
              r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r42.xyz, 0).xyz;
            } else {
              r41.xyz = float3(1,1,1);
            }
          }
          r42.x = lightConstantsCB[r13.w].data[0].w;
          r42.yz = lightConstantsCB[r13.w].data[1].xy;
          r41.xyz = r42.xyz * r41.xyz;
          r22.x = cmp(0 < r30.w);
          if (r22.x != 0) {
            r22.x = (int)r18.w & 255;
            r22.y = (int)r22.x + -1;
            r22.y = cmp((uint)r22.y < 32);
            r22.y = r2.z ? r22.y : 0;
            if (r22.y != 0) {
              r22.xy = mad((int2)r22.xx, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r29.w, cb2[52].x, r22.x, u2.xxxx
            r29.w = samplerLinear[]..swiz;
              r29.w = (int)r29.w | 4;
              GBufferDiffuseColor[viewID].r22.x = u2.x;
              GBufferDiffuseColor[viewID].r22.y = u2.x;
            }
            r22.x = (int)r12.w + 257;
            r17.w = cmp((int)r17.w != 1);
            if (r17.w != 0) {
              r17.w = abs(r20.w) * -0.200000003 + 0.400000006;
              r22.y = cmp(r20.w < 0);
              r22.y = r0.w ? r22.y : 0;
              r17.w = r22.y ? -r17.w : r17.w;
              r23.xyz = r11.xyz * r17.www + r5.xyz;
              r42.xyz = lightConstantsCB[r13.w].data[6].yzw;
              r42.w = lightConstantsCB[r13.w].data[7].x;
              r17.w = dot(r42.xyzw, r23.xyzw);
              r22.y = dot(r40.xyzw, r23.xyzw);
              r29.w = cmp(r22.y >= r17.w);
              if (r29.w != 0) {
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
                r17.w = r17.w / r22.y;
                r17.w = max(6.10351563e-05, r17.w);
                r22.y = 0x0000ffff & (int)lightConstantsCB[r13.w].data[1].w;
                if (r11.w != 0) {
                  r23.z = (uint)r22.y;
                  r29.w = 0;
                  r31.w = 0;
                  while (true) {
                    r32.w = cmp((int)r31.w >= 8);
                    if (r32.w != 0) break;
                    r42.x = dot(icb[r31.w+0].yx, r19.xy);
                    r42.y = dot(icb[r31.w+0].yx, r19.yz);
                    r23.xy = r42.xy * lightConstantsCB[r13.w].data[3].yy + r40.xy;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r17.w).x;
                    r29.w = r23.x * 0.125 + r29.w;
                    r31.w = (int)r31.w + 1;
                  }
                } else {
                  r40.z = (uint)r22.y;
                  r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r17.w).x;
                }
                r17.w = r29.w * r29.w;
                r17.w = r17.w * r29.w;
              } else {
                r17.w = 1;
              }
            } else {
              r17.w = 1;
            }
            r17.w = r30.w * r17.w;
            r22.y = cmp(0 < r17.w);
            if (r22.y != 0) {
              if (4 == 0) r22.y = 0; else if (4+16 < 32) {               r22.y = (uint)lightConstantsCB[r13.w].data[1].w << (32-(4 + 16)); r22.y = (uint)r22.y >> (32-4);              } else r22.y = (uint)lightConstantsCB[r13.w].data[1].w >> 16;
              r23.x = cmp(0 < (uint)r22.y);
              r23.x = r23.x ? r3.x : 0;
              if (r23.x != 0) {
                r22.y = (int)r22.y + numLights;
                r22.y = mad((int)r22.y, 15, -15);
                r23.x = abs(r20.w) * -0.200000003 + 0.400000006;
                r23.y = cmp(r20.w < 0);
                r23.y = r0.w ? r23.y : 0;
                r23.x = r23.y ? -r23.x : r23.x;
                r24.xyz = r11.xyz * r23.xxx + r5.xyz;
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
                  if (r11.w != 0) {
                    r24.z = (uint)r23.y;
                    r23.z = 0;
                    r30.w = 0;
                    while (true) {
                      r31.w = cmp((int)r30.w >= 8);
                      if (r31.w != 0) break;
                      r42.x = dot(icb[r30.w+0].yx, r19.xw);
                      r42.y = dot(icb[r30.w+0].xy, r13.xy);
                      r24.xy = r42.xy * lightConstantsCB[r22.y].data[3].yy + r40.xy;
                      r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r23.x).x;
                      r23.z = r24.x * 0.125 + r23.z;
                      r30.w = (int)r30.w + 1;
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
                r17.w = r22.y * r17.w;
              } else {
                if (4 == 0) r22.y = 0; else if (4+20 < 32) {                 r22.y = (uint)lightConstantsCB[r13.w].data[1].w << (32-(4 + 20)); r22.y = (uint)r22.y >> (32-4);                } else r22.y = (uint)lightConstantsCB[r13.w].data[1].w >> 20;
                r23.x = cmp(0 < (uint)r22.y);
                r23.x = r23.x ? r6.w : 0;
                if (r23.x != 0) {
                  r22.y = (int)r22.y + numLights;
                  r22.y = mad((int)r22.y, 15, -15);
                  r23.x = abs(r20.w) * -0.200000003 + 0.400000006;
                  r23.y = cmp(r20.w < 0);
                  r23.y = r0.w ? r23.y : 0;
                  r23.x = r23.y ? -r23.x : r23.x;
                  r25.xyz = r11.xyz * r23.xxx + r5.xyz;
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
                    if (r11.w != 0) {
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
                  r17.w = r22.y * r17.w;
                }
              }
              r22.y = -r27.w * r2.x + 1;
              r22.y = r22.y * r22.y;
              r22.y = -r22.y * 0.620000005 + 0.620000005;
              r22.y = r22.y + -r27.w;
              r22.y = r1.w * r22.y + r27.w;
              r22.y = r22.y * r17.w;
              r20.w = cmp(0 < r20.w);
              r24.xyz = r22.yyy * r41.xyz + r35.xyz;
              r39.xyz = r39.xyz * r20.yyy + r12.xyz;
              r20.y = dot(r39.xyz, r39.xyz);
              r20.y = rsqrt(r20.y);
              r39.xyz = r39.xyz * r20.yyy;
              r20.y = dot(r39.xyz, r12.xyz);
              r23.x = dot(r11.xyz, r39.xyz);
              r23.y = abs(r23.x) * r1.z + -abs(r23.x);
              r23.x = abs(r23.x) * r23.y + 1;
              r23.y = r22.w * r2.y + r2.w;
              r23.x = r23.x * r23.x;
              r23.x = r23.x * r23.y;
              r23.x = rcp(r23.x);
              r20.z = r22.w * r20.z;
              r20.z = r23.x * r20.z;
              r20.z = r20.z * r17.w;
              r39.xyz = r20.zzz * r41.xyz + r38.xyz;
              r20.y = saturate(1 + -r20.y);
              r22.w = r20.y * r20.y;
              r22.w = r22.w * r22.w;
              r20.y = r22.w * r20.y;
              r20.y = r20.z * r20.y;
              r40.xyz = r20.yyy * r41.xyz + r37.xyz;
              r41.xyz = r22.yyy * r41.xyz + r36.xyz;
              r41.xyz = r0.www ? r41.xyz : r36.xyz;
              r35.xyz = r20.www ? r24.xyz : r35.xyz;
              r36.xyz = r20.www ? r36.xyz : r41.xyz;
              r37.xyz = r20.www ? r40.xyz : r37.xyz;
              r38.xyz = r20.www ? r39.xyz : r38.xyz;
              r20.y = (int)r22.x & 255;
              r20.z = (int)r20.y + -1;
              r20.z = cmp((uint)r20.z < 32);
              r20.z = r2.z ? r20.z : 0;
              if (r20.z != 0) {
                r20.yz = mad((int2)r20.yy, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r20.w, cb2[52].x, r20.y, u2.xxxx
              r20.w = samplerLinear[]..swiz;
                r20.w = (int)r20.w | 8;
                GBufferDiffuseColor[viewID].r20.y = u2.x;
                GBufferDiffuseColor[viewID].r20.z = u2.x;
              }
              r12.w = (int)r12.w + 0x00010101;
            } else {
              r12.w = r22.x;
            }
          } else {
            r12.w = r18.w;
          }
        } else {
          r12.w = r18.w;
        }
      } else {
        r14.w = cmp((int)r14.w == 4);
        if (r14.w != 0) {
          if (3 == 0) r14.w = 0; else if (3+27 < 32) {           r14.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)lightConstantsCB[r13.w].data[1].w >> 27;
          r17.w = (int)r12.w & 255;
          r18.w = cmp((uint)r17.w < 32);
          r18.w = r2.z ? r18.w : 0;
          if (r18.w != 0) {
            r17.w = mad((int)r17.w, 24, 112);
            r21.yzw = lightConstantsCB[r13.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r17.w = u2.xyzw;
          }
          r17.w = (int)r12.w + 1;
          r18.w = lightConstantsCB[r13.w].data[1].z * r1.z;
          r18.w = 0.25 * r18.w;
          r20.y = cmp(0 < lightConstantsCB[r13.w].data[6].y);
          r24.xy = lightConstantsCB[r13.w].data[5].zw;
          r24.z = lightConstantsCB[r13.w].data[6].x;
          r21.yzw = -r24.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r13.w].data[0].xyz;
          r22.xyw = r21.yzw + -r5.xyz;
          r20.z = dot(r24.xyz, r17.xyz);
          r20.w = dot(r24.xyz, r22.xyw);
          r22.x = dot(r17.xyz, r22.xyw);
          r22.y = -r20.z * r20.z + lightConstantsCB[r13.w].data[6].y;
          r20.z = r20.z * r22.x + -r20.w;
          r20.w = saturate(-r20.w / lightConstantsCB[r13.w].data[6].y);
          r20.z = saturate(r20.z / r22.y);
          r22.x = r22.y / lightConstantsCB[r13.w].data[6].y;
          r22.x = 10 * r22.x;
          r22.x = min(1, r22.x);
          r20.z = r20.z + -r20.w;
          r20.z = r22.x * r20.z + r20.w;
          r22.xyw = r20.zzz * r24.xyz + r21.yzw;
          r21.yzw = r20.www * r24.xyz + r21.yzw;
          r21.yzw = r20.yyy ? r21.yzw : lightConstantsCB[r13.w].data[0].xyz;
          r20.yzw = r20.yyy ? r22.xyw : lightConstantsCB[r13.w].data[0].xyz;
          r20.yzw = r20.yzw + -r5.xyz;
          r21.yzw = r21.yzw + -r5.xyz;
          r22.x = dot(r20.yzw, r20.yzw);
          r22.x = rsqrt(r22.x);
          r24.xyz = r22.xxx * r20.yzw;
          r22.y = dot(r21.yzw, r21.yzw);
          r22.w = rsqrt(r22.y);
          r21.yzw = r22.www * r21.yzw;
          r21.y = dot(r11.xyz, r21.yzw);
          r21.z = saturate(r21.y);
          r21.z = r0.w ? abs(r21.y) : r21.z;
          r21.w = cmp(0 < r21.z);
          if (r21.w != 0) {
            r21.w = sqrt(r22.y);
            r22.w = lightConstantsCB[r13.w].data[3].x * lightConstantsCB[r13.w].data[3].x;
            r22.y = r22.w / r22.y;
            r22.y = min(1, r22.y);
            r23.xy = saturate(r21.ww * lightConstantsCB[r13.w].data[2].xz + lightConstantsCB[r13.w].data[2].yw);
            r25.yz = r23.xy * r23.xy;
            r23.xy = r23.xy * float2(-2,-2) + float2(3,3);
            r23.xy = r25.yz * r23.xy;
            r21.w = r23.x * r22.y;
            r21.w = r21.w * r23.y;
            r22.y = cmp(0 < r21.w);
            if (r22.y != 0) {
              r22.y = (int)r17.w & 255;
              r22.w = (int)r22.y + -1;
              r22.w = cmp((uint)r22.w < 32);
              r22.w = r2.z ? r22.w : 0;
              if (r22.w != 0) {
                r22.yw = mad((int2)r22.yy, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r23.x, cb2[52].x, r22.y, u2.xxxx
              r23.x = samplerLinear[]..swiz;
                r23.x = (int)r23.x | 4;
                GBufferDiffuseColor[viewID].r22.y = u2.x;
                GBufferDiffuseColor[viewID].r22.w = u2.x;
              }
              r22.y = (int)r12.w + 257;
              r14.w = cmp((int)r14.w != 1);
              if (r14.w != 0) {
                r14.w = abs(r21.y) * -0.200000003 + 0.400000006;
                r22.w = cmp(r21.y < 0);
                r22.w = r0.w ? r22.w : 0;
                r14.w = r22.w ? -r14.w : r14.w;
                r39.xyz = r11.xyz * r14.www + r5.xyz;
                r39.xyz = -lightConstantsCB[r13.w].data[4].yzw + r39.xyz;
                r14.w = max(abs(r39.y), abs(r39.z));
                r14.w = max(abs(r39.x), r14.w);
                r14.w = lightConstantsCB[r13.w].data[5].x / r14.w;
                r14.w = lightConstantsCB[r13.w].data[5].y + r14.w;
                r22.w = dot(r39.xyz, r39.xyz);
                r22.w = rsqrt(r22.w);
                r14.w = max(6.10351563e-05, r14.w);
                r23.x = 0x0000ffff & (int)lightConstantsCB[r13.w].data[1].w;
                r40.w = (uint)r23.x;
                r23.xy = float2(0,0);
                while (true) {
                  r25.y = cmp((int)r23.y >= 8);
                  if (r25.y != 0) break;
                  r25.y = dot(icb[r23.y+0].xy, r14.xy);
                  r25.z = dot(icb[r23.y+0].yx, r14.xz);
                  r41.yz = lightConstantsCB[r13.w].data[3].yy * r25.yz;
                  r41.x = r41.y * r16.x;
                  r41.w = r41.y * r15.x;
                  r40.xyz = r39.xyz * r22.www + r41.xzw;
                  r25.y = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyzw, r14.w).x;
                  r23.x = r25.y * 0.125 + r23.x;
                  r23.y = (int)r23.y + 1;
                }
              } else {
                r23.x = 1;
              }
              r14.w = r23.x * r21.w;
              r21.w = cmp(0 < r14.w);
              if (r21.w != 0) {
                if (4 == 0) r21.w = 0; else if (4+16 < 32) {                 r21.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(4 + 16)); r21.w = (uint)r21.w >> (32-4);                } else r21.w = (uint)lightConstantsCB[r13.w].data[1].w >> 16;
                r22.w = cmp(0 < (uint)r21.w);
                r22.w = r22.w ? r3.x : 0;
                if (r22.w != 0) {
                  r21.w = (int)r21.w + numLights;
                  r21.w = mad((int)r21.w, 15, -15);
                  r22.w = abs(r21.y) * -0.200000003 + 0.400000006;
                  r23.y = cmp(r21.y < 0);
                  r23.y = r0.w ? r23.y : 0;
                  r22.w = r23.y ? -r22.w : r22.w;
                  r26.xyz = r11.xyz * r22.www + r5.xyz;
                  r39.xyz = lightConstantsCB[r21.w].data[6].yzw;
                  r39.w = lightConstantsCB[r21.w].data[7].x;
                  r22.w = dot(r39.xyzw, r26.xyzw);
                  r39.xyz = lightConstantsCB[r21.w].data[7].yzw;
                  r39.w = lightConstantsCB[r21.w].data[8].x;
                  r23.y = dot(r39.xyzw, r26.xyzw);
                  r25.y = cmp(r23.y < r22.w);
                  if (r25.y == 0) {
                    r39.xyz = lightConstantsCB[r21.w].data[4].yzw;
                    r39.w = lightConstantsCB[r21.w].data[5].x;
                    r39.x = dot(r39.xyzw, r26.xyzw);
                    r40.xyz = lightConstantsCB[r21.w].data[5].yzw;
                    r40.w = lightConstantsCB[r21.w].data[6].x;
                    r39.y = dot(r40.xyzw, r26.xyzw);
                    r26.xy = r39.xy / r23.yy;
                    r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r39.x = lightConstantsCB[r21.w].data[9].w + r26.x;
                    r39.y = lightConstantsCB[r21.w].data[10].x + r26.y;
                    r26.xy = lightConstantsCB[r21.w].data[9].yz * r39.xy;
                    r39.xy = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                    r39.zw = float2(1,1) + -r39.xy;
                    r39.zw = cmp(r26.xy >= r39.zw);
                    r39.xy = cmp(r39.xy >= r26.xy);
                    r39.xy = (int2)r39.xy | (int2)r39.zw;
                    r25.z = (int)r39.y | (int)r39.x;
                    if (r25.z == 0) {
                      r26.xy = saturate(r26.xy);
                      r39.x = r26.x * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                      r39.y = r26.y * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                      r26.x = lightConstantsCB[r21.w].data[10].z * r23.y;
                      r22.w = lightConstantsCB[r21.w].data[10].y * r23.y + r22.w;
                      r22.w = r22.w / r26.x;
                    }
                  } else {
                    r25.z = -1;
                  }
                  r23.y = (int)r25.y | (int)r25.z;
                  if (r23.y == 0) {
                    r22.w = max(6.10351563e-05, r22.w);
                    r23.y = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                    if (r11.w != 0) {
                      r26.z = (uint)r23.y;
                      r25.yz = float2(0,0);
                      while (true) {
                        r27.w = cmp((int)r25.z >= 8);
                        if (r27.w != 0) break;
                        r40.x = dot(icb[r25.z+0].xy, r29.xy);
                        r40.y = dot(icb[r25.z+0].yx, r29.xz);
                        r26.xy = r40.xy * lightConstantsCB[r21.w].data[3].yy + r39.xy;
                        r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r22.w).x;
                        r25.y = r26.x * 0.125 + r25.y;
                        r25.z = (int)r25.z + 1;
                      }
                    } else {
                      r39.z = (uint)r23.y;
                      r25.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r22.w).x;
                    }
                    r21.w = r25.y * r25.y;
                    r21.w = r21.w * r25.y;
                  } else {
                    r21.w = 1;
                  }
                  r14.w = r21.w * r14.w;
                } else {
                  if (4 == 0) r21.w = 0; else if (4+20 < 32) {                   r21.w = (uint)lightConstantsCB[r13.w].data[1].w << (32-(4 + 20)); r21.w = (uint)r21.w >> (32-4);                  } else r21.w = (uint)lightConstantsCB[r13.w].data[1].w >> 20;
                  r22.w = cmp(0 < (uint)r21.w);
                  r22.w = r22.w ? r6.w : 0;
                  if (r22.w != 0) {
                    r21.w = (int)r21.w + numLights;
                    r21.w = mad((int)r21.w, 15, -15);
                    r22.w = abs(r21.y) * -0.200000003 + 0.400000006;
                    r23.y = cmp(r21.y < 0);
                    r23.y = r0.w ? r23.y : 0;
                    r22.w = r23.y ? -r22.w : r22.w;
                    r28.xyz = r11.xyz * r22.www + r5.xyz;
                    r39.xyz = lightConstantsCB[r21.w].data[6].yzw;
                    r39.w = lightConstantsCB[r21.w].data[7].x;
                    r22.w = dot(r39.xyzw, r28.xyzw);
                    r39.xyz = lightConstantsCB[r21.w].data[7].yzw;
                    r39.w = lightConstantsCB[r21.w].data[8].x;
                    r23.y = dot(r39.xyzw, r28.xyzw);
                    r25.z = cmp(r23.y < r22.w);
                    if (r25.z == 0) {
                      r39.xyz = lightConstantsCB[r21.w].data[4].yzw;
                      r39.w = lightConstantsCB[r21.w].data[5].x;
                      r26.x = dot(r39.xyzw, r28.xyzw);
                      r39.xyz = lightConstantsCB[r21.w].data[5].yzw;
                      r39.w = lightConstantsCB[r21.w].data[6].x;
                      r26.y = dot(r39.xyzw, r28.xyzw);
                      r26.xy = r26.xy / r23.yy;
                      r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r28.x = lightConstantsCB[r21.w].data[9].w + r26.x;
                      r28.y = lightConstantsCB[r21.w].data[10].x + r26.y;
                      r26.xy = lightConstantsCB[r21.w].data[9].yz * r28.xy;
                      r28.xy = lightConstantsCB[r21.w].data[3].yy / lightConstantsCB[r21.w].data[8].yw;
                      r39.xy = float2(1,1) + -r28.xy;
                      r39.xy = cmp(r26.xy >= r39.xy);
                      r28.xy = cmp(r28.xy >= r26.xy);
                      r28.xy = (int2)r28.xy | (int2)r39.xy;
                      r26.z = (int)r28.y | (int)r28.x;
                      if (r26.z == 0) {
                        r26.xy = saturate(r26.xy);
                        r28.x = r26.x * lightConstantsCB[r21.w].data[8].y + lightConstantsCB[r21.w].data[8].z;
                        r28.y = r26.y * lightConstantsCB[r21.w].data[8].w + lightConstantsCB[r21.w].data[9].x;
                        r26.x = lightConstantsCB[r21.w].data[10].z * r23.y;
                        r22.w = lightConstantsCB[r21.w].data[10].y * r23.y + r22.w;
                        r22.w = r22.w / r26.x;
                      }
                    } else {
                      r26.z = -1;
                    }
                    r23.y = (int)r25.z | (int)r26.z;
                    if (r23.y == 0) {
                      r22.w = max(6.10351563e-05, r22.w);
                      r23.y = 0x0000ffff & (int)lightConstantsCB[r21.w].data[1].w;
                      if (r11.w != 0) {
                        r26.z = (uint)r23.y;
                        r25.z = 0;
                        r27.w = 0;
                        while (true) {
                          r30.w = cmp((int)r27.w >= 8);
                          if (r30.w != 0) break;
                          r39.x = dot(icb[r27.w+0].xy, r30.xy);
                          r39.y = dot(icb[r27.w+0].yx, r30.xz);
                          r26.xy = r39.xy * lightConstantsCB[r21.w].data[3].yy + r28.xy;
                          r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r22.w).x;
                          r25.z = r26.x * 0.125 + r25.z;
                          r27.w = (int)r27.w + 1;
                        }
                      } else {
                        r28.z = (uint)r23.y;
                        r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r22.w).x;
                      }
                      r21.w = r25.z * r25.z;
                      r21.w = r21.w * r25.z;
                    } else {
                      r21.w = 1;
                    }
                    r14.w = r21.w * r14.w;
                  }
                }
                r21.w = -r21.z * r2.x + 1;
                r21.w = r21.w * r21.w;
                r21.w = -r21.w * 0.620000005 + 0.620000005;
                r21.w = r21.w + -r21.z;
                r21.z = r1.w * r21.w + r21.z;
                r21.z = r21.z * r14.w;
                r26.x = lightConstantsCB[r13.w].data[0].w;
                r26.yz = lightConstantsCB[r13.w].data[1].xy;
                r13.w = cmp(0 < r21.y);
                r28.xyz = r21.zzz * r26.xyz + r35.xyz;
                r21.y = saturate(dot(r11.xyz, r24.xyz));
                r20.yzw = r20.yzw * r22.xxx + r12.xyz;
                r21.w = dot(r20.yzw, r20.yzw);
                r21.w = rsqrt(r21.w);
                r20.yzw = r21.www * r20.yzw;
                r21.w = dot(r20.yzw, r12.xyz);
                r20.y = dot(r11.xyz, r20.yzw);
                r20.z = abs(r20.y) * r1.z + -abs(r20.y);
                r20.y = abs(r20.y) * r20.z + 1;
                r20.z = r21.y * r2.y + r2.w;
                r20.y = r20.y * r20.y;
                r20.y = r20.y * r20.z;
                r20.y = rcp(r20.y);
                r18.w = r21.y * r18.w;
                r18.w = r20.y * r18.w;
                r18.w = r18.w * r14.w;
                r20.yzw = r18.www * r26.xyz + r38.xyz;
                r21.y = saturate(1 + -r21.w);
                r21.w = r21.y * r21.y;
                r21.w = r21.w * r21.w;
                r21.y = r21.y * r21.w;
                r18.w = r21.y * r18.w;
                r24.xyz = r18.www * r26.xyz + r37.xyz;
                r21.yzw = r21.zzz * r26.xyz + r36.xyz;
                r21.yzw = r0.www ? r21.yzw : r36.xyz;
                r35.xyz = r13.www ? r28.xyz : r35.xyz;
                r36.xyz = r13.www ? r36.xyz : r21.yzw;
                r37.xyz = r13.www ? r24.xyz : r37.xyz;
                r38.xyz = r13.www ? r20.yzw : r38.xyz;
                r13.w = (int)r22.y & 255;
                r18.w = (int)r13.w + -1;
                r18.w = cmp((uint)r18.w < 32);
                r18.w = r2.z ? r18.w : 0;
                if (r18.w != 0) {
                  r20.yz = mad((int2)r13.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.w, cb2[52].x, r20.y, u2.xxxx
                r13.w = samplerLinear[]..swiz;
                  r13.w = (int)r13.w | 8;
                  GBufferDiffuseColor[viewID].r20.y = u2.x;
                  GBufferDiffuseColor[viewID].r20.z = u2.x;
                }
                r12.w = (int)r12.w + 0x00010101;
              } else {
                r12.w = r22.y;
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
    r31.xyz = r35.xyz;
    r32.xyz = r36.xyz;
    r33.xyz = r37.xyz;
    r34.xyz = r38.xyz;
    r8.w = r12.w;
    r9.w = (int)r9.w + 32;
  }
  r3.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r1.z = (uint)r3.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r2.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r2.xy = r1.ww ? r2.yw : float2(-1,0);
  r4.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r4.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r4.xy = r1.ww ? r4.yz : float2(-1,0);
  r7.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r7.x;
  r1.w = cmp((int)r1.z == (int)r1.w);
  r4.zw = r1.ww ? r7.yz : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.w = (uint)r7.x;
  r1.z = cmp((int)r1.z == (int)r1.w);
  r1.zw = r1.zz ? r7.yz : float2(-1,0);
  r7.x = r2.x;
  r7.yz = r4.xz;
  r7.w = r1.z;
  r7.xyzw = r7.xyzw + -r3.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r1.z = r7.x + r7.y;
  r1.z = r1.z + r7.z;
  r1.z = r1.z + r7.w;
  r2.x = r7.y * r4.y;
  r2.x = r7.x * r2.y + r2.x;
  r2.x = r7.z * r4.w + r2.x;
  r1.w = r7.w * r1.w + r2.x;
  r3.w = r1.w / r1.z;
  r1.z = cmp(0 >= r1.z);
  r3.yz = r1.zz ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r1.z = cmp((int)r1.w == (int)r1.z);
  r2.xyw = r1.zzz ? r3.xyz : r3.xzy;
  r1.z = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r1.z;
  r3.z = -r2.y * 0.5 + r1.z;
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
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r5.xyz, r5.xyz);
    r1.z = rsqrt(r0.w);
    r3.xyz = r5.xyz * r1.zzz;
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r3.w = cmp(0.00999999978 < abs(r5.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r3.ww ? r4.xy : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r6.xyz + r4.xyz;
    } else {
      r1.z = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r5.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.z;
      r1.z = r1.w ? r3.w : r1.z;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r6.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.x = fogConstants.atmosphereMieSchlickK * -r1.z + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r1.w = r1.w / r3.x;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r1.w * r0.w;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r3.xyz = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r6.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyw * r4.xyz + r3.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * r5.z;
    r1.z = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r1.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.w = min(64, r1.z);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.y ? r3.w : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.w = r1.w ? 1 : r0.w;
    r0.w = r1.z / r0.w;
    r0.w = r1.w ? r4.x : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.z = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r1.z);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.z = rsqrt(r1.z);
    r4.xyz = r5.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r4.w * r0.w;
    r4.xyz = r4.xyz + -r2.xyw;
    r3.xyz = r0.www * r4.xyz + r2.xyw;
  }
  r2.xyw = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyw = r3.xyz ? r2.xyw : 0;
  r2.xyw = min(float3(65024,65024,64512), r2.xyw);
  r0.w = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(0,8));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 16);
  r1.z = r1.z ? r1.w : 0;
  r3.z = r1.z ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.www ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.w = (int)r8.w & 255;
        break;
        case 2 :        if (8 == 0) r0.w = 0; else if (8+8 < 32) {         r0.w = (uint)r8.w << (32-(8 + 8)); r0.w = (uint)r0.w >> (32-8);        } else r0.w = (uint)r8.w >> 8;
        break;
        case 3 :        if (8 == 0) r0.w = 0; else if (8+16 < 32) {         r0.w = (uint)r8.w << (32-(8 + 16)); r0.w = (uint)r0.w >> (32-8);        } else r0.w = (uint)r8.w >> 16;
        break;
        case 4 :        r0.w = (int)r0.y & 3;
        break;
        case 5 :        r0.w = (uint)r0.y >> 8;
        break;
        default :
        r0.w = 0;
        break;
      }
      r0.w = (uint)r0.w;
      r0.w = drawNumLighstScale * r0.w;
      r3.xyz = r0.www * float3(0.5,0.5,0.5) + -r2.xyw;
      r2.xyw = drawNumLightsAlpha * r3.xyz + r2.xyw;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xywx
  if (r2.z != 0) {
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r8.w & 255;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.w = (int)r0.y & 3;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.w = (int)r8.w & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.w
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.x = 0; else if (8+8 < 32) {     r1.x = (uint)r8.w << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);    } else r1.x = (uint)r8.w >> 8;
    if (8 == 0) r1.y = 0; else if (8+16 < 32) {     r1.y = (uint)r8.w << (32-(8 + 16)); r1.y = (uint)r1.y >> (32-8);    } else r1.y = (uint)r8.w >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.y
    InterlockedAdd(dest, value, orig_value);
    r1.z = (int)r0.y & 3;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(12), r1.z
    InterlockedAdd(dest, value, orig_value);
    r0.y = (uint)r0.y >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(16), r0.y
    InterlockedAdd(dest, value, orig_value);
    // Needs manual fix for instruction:
    atomic_umax g2, l(0), r0.w
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