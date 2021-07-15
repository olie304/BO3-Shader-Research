// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:49 2021

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
  r0.x = mad(permuteStride, 27, (int)vThreadGroupID.x);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
r0.x = samplerLinear[]..swiz;
r0.y = samplerLinear[]..swiz;
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
  r11.zw = float2(1,1);
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
  r1.z = dot(r3.zw, float2(0.0671105608,0.00583714992));
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
  r2.x = saturate(dot(r12.xyz, r5.xyw));
  r1.z = dot(-r5.xyw, r12.xyz);
  r1.z = r1.z + r1.z;
  r17.xyz = r12.xyz * -r1.zzz + -r5.xyw;
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
  r13.zw = (uint2)r0.yx >> int2(24,24);
  r0.y = cmp((uint)r13.z >= (uint)r6.w);
  r7.w = cmp((uint)r13.z < numRefProbes);
  r0.y = r0.y ? r7.w : 0;
  if (r0.y != 0) {
    r0.y = (int)r13.z * 14;
    if (r2.z != 0) {
      r18.yzw = refProbeConstantsCB[r0.y].data[0].xyz + eyeOffset.xyz;
      r18.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r15.yzw = -refProbeConstantsCB[r0.y].data[0].xyz + r11.xyz;
    r7.w = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
    if (6 == 0) r8.w = 0; else if (6+25 < 32) {     r8.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r8.w = (uint)r8.w >> (32-6);    } else r8.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
    r9.w = (int)r7.w * 6;
    r10.w = dot(refProbeAttenuationConstantsCB[r9.w].data[0].xyz, r15.yzw);
    r10.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[0].w + r10.w);
    r14.w = dot(refProbeAttenuationConstantsCB[r9.w].data[1].xyz, r15.yzw);
    r14.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[1].w + r14.w);
    r10.w = r14.w * r10.w;
    r14.w = dot(refProbeAttenuationConstantsCB[r9.w].data[2].xyz, r15.yzw);
    r14.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[2].w + r14.w);
    r10.w = r14.w * r10.w;
    r14.w = dot(refProbeAttenuationConstantsCB[r9.w].data[3].xyz, r15.yzw);
    r14.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[3].w + r14.w);
    r10.w = r14.w * r10.w;
    r14.w = dot(refProbeAttenuationConstantsCB[r9.w].data[4].xyz, r15.yzw);
    r14.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[4].w + r14.w);
    r10.w = r14.w * r10.w;
    r14.w = dot(refProbeAttenuationConstantsCB[r9.w].data[5].xyz, r15.yzw);
    r9.w = saturate(refProbeAttenuationConstantsCB[r9.w].data[5].w + r14.w);
    r18.x = r10.w * r9.w;
    r9.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
    r18.yz = float2(0,1);
    r16.yz = r9.ww ? r18.xy : r18.zx;
    r18.x = 1;
    r9.w = refProbeConstantsCB[r0.y].data[6].x;
    r19.xy = r16.yz;
    r10.w = 1;
    while (true) {
      r14.w = cmp((int)r10.w >= (int)r8.w);
      if (r14.w != 0) break;
      r14.w = (int)r7.w + (int)r10.w;
      r14.w = (int)r14.w * 6;
      r16.w = dot(refProbeAttenuationConstantsCB[r14.w].data[0].xyz, r15.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[0].w + r16.w);
      r16.w = r19.x * r16.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r14.w].data[1].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[1].w + r18.z);
      r16.w = r18.z * r16.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r14.w].data[2].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[2].w + r18.z);
      r16.w = r18.z * r16.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r14.w].data[3].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[3].w + r18.z);
      r16.w = r18.z * r16.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r14.w].data[4].xyz, r15.yzw);
      r18.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[4].w + r18.z);
      r16.w = r18.z * r16.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r14.w].data[5].xyz, r15.yzw);
      r14.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[5].w + r18.z);
      r19.x = r16.w * r14.w;
      r18.z = (uint)r9.w >> 2;
      if (1 == 0) r18.w = 0; else if (1+2 < 32) {       r18.w = (uint)r9.w << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);      } else r18.w = (uint)r9.w >> 2;
      r19.z = (int)r18.z & 2;
      r19.w = max(r19.y, r19.x);
      r14.w = -r16.w * r14.w + 1;
      r14.w = r19.y * r14.w;
      r18.y = r19.z ? r14.w : r19.w;
      r19.xy = r18.ww ? r19.xy : r18.xy;
      r10.w = (int)r10.w + 1;
      r9.w = r18.z;
    }
    r19.y = saturate(r19.y);
    r7.w = refProbeConstantsCB[r0.y].data[6].y * r19.y;
    r8.w = cmp(0 < r7.w);
    if (r8.w != 0) {
      if (r2.z != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, l(880), u2.xxxx
      r8.w = samplerLinear[]..swiz;
        r8.w = (int)r8.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r8.w = refProbeConstantsCB[r0.y].data[7].y * r7.w;
      r18.x = refProbeConstantsCB[r0.y].data[7].w;
      r18.yz = refProbeConstantsCB[r0.y].data[8].xy;
      r9.w = dot(r17.xyz, r18.xyz);
      r10.w = dot(r15.yzw, r18.xyz);
      r10.w = -refProbeConstantsCB[r0.y].data[8].z + r10.w;
      r14.w = cmp(r10.w >= 0);
      r10.w = max(abs(r10.w), r3.z);
      r10.w = r14.w ? r10.w : -r10.w;
      r9.w = max(1.00000001e-07, -r9.w);
      r9.w = r10.w / r9.w;
      r9.w = min(131072, abs(r9.w));
      r18.x = refProbeConstantsCB[r0.y].data[8].w;
      r18.yz = refProbeConstantsCB[r0.y].data[9].xy;
      r10.w = dot(r17.xyz, r18.xyz);
      r14.w = dot(r15.yzw, r18.xyz);
      r14.w = -refProbeConstantsCB[r0.y].data[9].z + r14.w;
      r16.y = cmp(r14.w >= 0);
      r14.w = max(abs(r14.w), r3.z);
      r14.w = r16.y ? r14.w : -r14.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r14.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r18.x = refProbeConstantsCB[r0.y].data[9].w;
      r18.yz = refProbeConstantsCB[r0.y].data[10].xy;
      r10.w = dot(r17.xyz, r18.xyz);
      r14.w = dot(r15.yzw, r18.xyz);
      r14.w = -refProbeConstantsCB[r0.y].data[10].z + r14.w;
      r16.y = cmp(r14.w >= 0);
      r14.w = max(abs(r14.w), r3.z);
      r14.w = r16.y ? r14.w : -r14.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r14.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r18.x = refProbeConstantsCB[r0.y].data[10].w;
      r18.yz = refProbeConstantsCB[r0.y].data[11].xy;
      r10.w = dot(r17.xyz, r18.xyz);
      r14.w = dot(r15.yzw, r18.xyz);
      r14.w = -refProbeConstantsCB[r0.y].data[11].z + r14.w;
      r16.y = cmp(r14.w >= 0);
      r14.w = max(abs(r14.w), r3.z);
      r14.w = r16.y ? r14.w : -r14.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r14.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r18.x = refProbeConstantsCB[r0.y].data[11].w;
      r18.yz = refProbeConstantsCB[r0.y].data[12].xy;
      r10.w = dot(r17.xyz, r18.xyz);
      r14.w = dot(r15.yzw, r18.xyz);
      r14.w = -refProbeConstantsCB[r0.y].data[12].z + r14.w;
      r16.y = cmp(r14.w >= 0);
      r14.w = max(abs(r14.w), r3.z);
      r14.w = r16.y ? r14.w : -r14.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r14.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r18.x = refProbeConstantsCB[r0.y].data[12].w;
      r18.yz = refProbeConstantsCB[r0.y].data[13].xy;
      r10.w = dot(r17.xyz, r18.xyz);
      r14.w = dot(r15.yzw, r18.xyz);
      r14.w = -refProbeConstantsCB[r0.y].data[13].z + r14.w;
      r16.y = cmp(r14.w >= 0);
      r14.w = max(abs(r14.w), r3.z);
      r14.w = r16.y ? r14.w : -r14.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r14.w / r10.w;
      r9.w = min(abs(r10.w), r9.w);
      r18.x = refProbeConstantsCB[r0.y].data[3].w + r15.y;
      r18.yz = refProbeConstantsCB[r0.y].data[4].xy + r15.zw;
      r16.yzw = r17.xyz * r9.www + r18.xyz;
      r10.w = dot(r16.yzw, r16.yzw);
      r10.w = sqrt(r10.w);
      r9.w = r9.w / r10.w;
      r9.w = r9.w + r9.w;
      r9.w = sqrt(r9.w);
      r9.w = r2.w * 5 + r9.w;
      r9.w = -0.844799995 + r9.w;
      r18.x = refProbeConstantsCB[r0.y].data[0].w;
      r18.y = refProbeConstantsCB[r0.y].data[1].z;
      r18.z = refProbeConstantsCB[r0.y].data[2].y;
      r19.x = dot(r16.yzw, r18.xyz);
      r20.xy = refProbeConstantsCB[r0.y].data[1].xw;
      r20.z = refProbeConstantsCB[r0.y].data[2].z;
      r19.y = dot(r16.yzw, r20.xyz);
      r21.x = refProbeConstantsCB[r0.y].data[1].y;
      r21.yz = refProbeConstantsCB[r0.y].data[2].xw;
      r19.z = dot(r16.yzw, r21.xyz);
      if (9 == 0) r10.w = 0; else if (9+16 < 32) {       r10.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r10.w = (uint)r10.w >> (32-9);      } else r10.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
      r19.w = (uint)r10.w;
      r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r9.w).xyz;
      r22.xyz = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
      r22.xyz = cmp((int3)r22.xyz == int3(2139095040,2139095040,2139095040));
      r9.w = (int)r22.y | (int)r22.x;
      r9.w = (int)r22.z | (int)r9.w;
      r16.yzw = r9.www ? float3(1,1,0) : r16.yzw;
      r22.x = dot(r15.yzw, r18.xyz);
      r22.y = dot(r15.yzw, r20.xyz);
      r22.z = dot(r15.yzw, r21.xyz);
      r15.yzw = saturate(r22.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
      r22.xy = refProbeConstantsCB[r0.y].data[4].zw * r15.yz;
      r22.z = refProbeConstantsCB[r0.y].data[5].x * r15.w;
      r15.yzw = refProbeConstantsCB[r0.y].data[5].yzw + r22.xyz;
      r19.x = dot(r12.xyz, r18.xyz);
      r19.y = dot(r12.xyz, r20.xyz);
      r19.z = dot(r12.xyz, r21.xyz);
      r18.xyz = cmp(float3(0,0,0) < r19.xyz);
      r20.z = r18.x ? 0 : 0.5;
      r20.xy = float2(0,0);
      r20.xyz = r20.xyz + r15.yzw;
      r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r21.xyz = r19.xyz * r19.xyz;
      r21.xyz = r21.xyz * r8.www;
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
      r0.y = (int)r19.y | (int)r19.x;
      r0.y = (int)r19.z | (int)r0.y;
      r18.xyz = r0.yyy ? float3(1,1,0) : r18.xyz;
      r15.yzw = r18.xyz * r15.yzw;
      r0.y = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r9.w = r3.w * r0.y;
      r16.yzw = r16.yzw * r8.www;
      r8.w = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r0.y = r3.w * r0.y + r8.w;
      r0.y = r9.w / r0.y;
      r16.yzw = r16.yzw * r0.yyy;
      r0.y = 257;
    } else {
      r15.yzw = float3(0,0,0);
      r16.yzw = float3(0,0,0);
      r7.w = 0;
      r0.y = 1;
    }
  } else {
    r15.yzw = float3(0,0,0);
    r16.yzw = float3(0,0,0);
    r7.w = 0;
    r0.y = 0;
  }
  r6.w = cmp((uint)r13.z < (uint)r6.w);
  if (r6.w != 0) {
    r6.w = (int)r13.z * 14;
    if (r2.z != 0) {
      r8.w = (int)r0.y & 1;
      r8.w = mad((int)r8.w, 20, 880);
      r18.yzw = refProbeConstantsCB[r6.w].data[0].xyz + eyeOffset.xyz;
      r18.x = 16;
      GBufferDiffuseColor[viewID].r8.w = u2.xyzw;
    }
    r8.w = (int)r0.y + 1;
    r18.xyz = -refProbeConstantsCB[r6.w].data[0].xyz + r11.xyz;
    r9.w = 0x0000ffff & (int)refProbeConstantsCB[r6.w].data[7].z;
    if (6 == 0) r10.w = 0; else if (6+25 < 32) {     r10.w = (uint)refProbeConstantsCB[r6.w].data[7].z << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);    } else r10.w = (uint)refProbeConstantsCB[r6.w].data[7].z >> 25;
    r13.z = (int)r9.w * 6;
    r14.w = dot(refProbeAttenuationConstantsCB[r13.z].data[0].xyz, r18.xyz);
    r14.w = saturate(refProbeAttenuationConstantsCB[r13.z].data[0].w + r14.w);
    r18.w = dot(refProbeAttenuationConstantsCB[r13.z].data[1].xyz, r18.xyz);
    r18.w = saturate(refProbeAttenuationConstantsCB[r13.z].data[1].w + r18.w);
    r14.w = r18.w * r14.w;
    r18.w = dot(refProbeAttenuationConstantsCB[r13.z].data[2].xyz, r18.xyz);
    r18.w = saturate(refProbeAttenuationConstantsCB[r13.z].data[2].w + r18.w);
    r14.w = r18.w * r14.w;
    r18.w = dot(refProbeAttenuationConstantsCB[r13.z].data[3].xyz, r18.xyz);
    r18.w = saturate(refProbeAttenuationConstantsCB[r13.z].data[3].w + r18.w);
    r14.w = r18.w * r14.w;
    r18.w = dot(refProbeAttenuationConstantsCB[r13.z].data[4].xyz, r18.xyz);
    r18.w = saturate(refProbeAttenuationConstantsCB[r13.z].data[4].w + r18.w);
    r14.w = r18.w * r14.w;
    r18.w = dot(refProbeAttenuationConstantsCB[r13.z].data[5].xyz, r18.xyz);
    r13.z = saturate(refProbeAttenuationConstantsCB[r13.z].data[5].w + r18.w);
    r19.x = r14.w * r13.z;
    r13.z = 1 & (int)refProbeConstantsCB[r6.w].data[6].x;
    r19.yz = float2(0,1);
    r19.xy = r13.zz ? r19.xy : r19.zx;
    r20.x = 1;
    r13.z = refProbeConstantsCB[r6.w].data[6].x;
    r21.xy = r19.xy;
    r14.w = 1;
    while (true) {
      r18.w = cmp((int)r14.w >= (int)r10.w);
      if (r18.w != 0) break;
      r18.w = (int)r9.w + (int)r14.w;
      r18.w = (int)r18.w * 6;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.w].data[0].xyz, r18.xyz);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.w].data[0].w + r19.z);
      r19.z = r21.x * r19.z;
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
      r21.x = r19.z * r18.w;
      r19.w = (uint)r13.z >> 2;
      if (1 == 0) r20.z = 0; else if (1+2 < 32) {       r20.z = (uint)r13.z << (32-(1 + 2)); r20.z = (uint)r20.z >> (32-1);      } else r20.z = (uint)r13.z >> 2;
      r20.w = (int)r19.w & 2;
      r21.z = max(r21.y, r21.x);
      r18.w = -r19.z * r18.w + 1;
      r18.w = r21.y * r18.w;
      r20.y = r20.w ? r18.w : r21.z;
      r21.xy = r20.zz ? r21.xy : r20.xy;
      r14.w = (int)r14.w + 1;
      r13.z = r19.w;
    }
    r9.w = saturate(r21.y + -r7.w);
    r10.w = refProbeConstantsCB[r6.w].data[6].y * r9.w;
    r13.z = cmp(0 < r10.w);
    if (r13.z != 0) {
      r13.z = (int)r8.w & 3;
      r14.w = (int)r13.z + -1;
      r14.w = cmp((uint)r14.w < 32);
      r14.w = r2.z ? r14.w : 0;
      if (r14.w != 0) {
        r19.xy = mad((int2)r13.zz, int2(20,20), int2(860,876));
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.z, cb2[52].x, r19.x, u2.xxxx
      r13.z = samplerLinear[]..swiz;
        r13.z = (int)r13.z | 32;
        GBufferDiffuseColor[viewID].r19.x = u2.x;
        GBufferDiffuseColor[viewID].r19.y = u2.x;
      }
      r8.w = (int)r0.y + 257;
      r9.w = r9.w * refProbeConstantsCB[r6.w].data[6].y + r7.w;
      r10.w = refProbeConstantsCB[r6.w].data[7].y * r10.w;
      r19.x = refProbeConstantsCB[r6.w].data[7].w;
      r19.yz = refProbeConstantsCB[r6.w].data[8].xy;
      r13.z = dot(r17.xyz, r19.xyz);
      r14.w = dot(r18.xyz, r19.xyz);
      r14.w = -refProbeConstantsCB[r6.w].data[8].z + r14.w;
      r18.w = cmp(r14.w >= 0);
      r14.w = max(abs(r14.w), r3.z);
      r14.w = r18.w ? r14.w : -r14.w;
      r13.z = max(1.00000001e-07, -r13.z);
      r13.z = r14.w / r13.z;
      r13.z = min(131072, abs(r13.z));
      r19.x = refProbeConstantsCB[r6.w].data[8].w;
      r19.yz = refProbeConstantsCB[r6.w].data[9].xy;
      r14.w = dot(r17.xyz, r19.xyz);
      r18.w = dot(r18.xyz, r19.xyz);
      r18.w = -refProbeConstantsCB[r6.w].data[9].z + r18.w;
      r19.x = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r3.z);
      r18.w = r19.x ? r18.w : -r18.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r18.w / r14.w;
      r13.z = min(abs(r14.w), r13.z);
      r19.x = refProbeConstantsCB[r6.w].data[9].w;
      r19.yz = refProbeConstantsCB[r6.w].data[10].xy;
      r14.w = dot(r17.xyz, r19.xyz);
      r18.w = dot(r18.xyz, r19.xyz);
      r18.w = -refProbeConstantsCB[r6.w].data[10].z + r18.w;
      r19.x = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r3.z);
      r18.w = r19.x ? r18.w : -r18.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r18.w / r14.w;
      r13.z = min(abs(r14.w), r13.z);
      r19.x = refProbeConstantsCB[r6.w].data[10].w;
      r19.yz = refProbeConstantsCB[r6.w].data[11].xy;
      r14.w = dot(r17.xyz, r19.xyz);
      r18.w = dot(r18.xyz, r19.xyz);
      r18.w = -refProbeConstantsCB[r6.w].data[11].z + r18.w;
      r19.x = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r3.z);
      r18.w = r19.x ? r18.w : -r18.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r18.w / r14.w;
      r13.z = min(abs(r14.w), r13.z);
      r19.x = refProbeConstantsCB[r6.w].data[11].w;
      r19.yz = refProbeConstantsCB[r6.w].data[12].xy;
      r14.w = dot(r17.xyz, r19.xyz);
      r18.w = dot(r18.xyz, r19.xyz);
      r18.w = -refProbeConstantsCB[r6.w].data[12].z + r18.w;
      r19.x = cmp(r18.w >= 0);
      r18.w = max(abs(r18.w), r3.z);
      r18.w = r19.x ? r18.w : -r18.w;
      r14.w = max(1.00000001e-07, -r14.w);
      r14.w = r18.w / r14.w;
      r13.z = min(abs(r14.w), r13.z);
      r19.x = refProbeConstantsCB[r6.w].data[12].w;
      r19.yz = refProbeConstantsCB[r6.w].data[13].xy;
      r14.w = dot(r17.xyz, r19.xyz);
      r18.w = dot(r18.xyz, r19.xyz);
      r18.w = -refProbeConstantsCB[r6.w].data[13].z + r18.w;
      r19.x = cmp(r18.w >= 0);
      r3.z = max(abs(r18.w), r3.z);
      r3.z = r19.x ? r3.z : -r3.z;
      r14.w = max(1.00000001e-07, -r14.w);
      r3.z = r3.z / r14.w;
      r3.z = min(r13.z, abs(r3.z));
      r19.x = refProbeConstantsCB[r6.w].data[3].w + r18.x;
      r19.yz = refProbeConstantsCB[r6.w].data[4].xy + r18.yz;
      r19.xyz = r17.xyz * r3.zzz + r19.xyz;
      r13.z = dot(r19.xyz, r19.xyz);
      r13.z = sqrt(r13.z);
      r3.z = r3.z / r13.z;
      r3.z = r3.z + r3.z;
      r3.z = sqrt(r3.z);
      r2.w = r2.w * 5 + r3.z;
      r2.w = -0.844799995 + r2.w;
      r20.x = refProbeConstantsCB[r6.w].data[0].w;
      r20.y = refProbeConstantsCB[r6.w].data[1].z;
      r20.z = refProbeConstantsCB[r6.w].data[2].y;
      r21.x = dot(r19.xyz, r20.xyz);
      r22.xy = refProbeConstantsCB[r6.w].data[1].xw;
      r22.z = refProbeConstantsCB[r6.w].data[2].z;
      r21.y = dot(r19.xyz, r22.xyz);
      r23.x = refProbeConstantsCB[r6.w].data[1].y;
      r23.yz = refProbeConstantsCB[r6.w].data[2].xw;
      r21.z = dot(r19.xyz, r23.xyz);
      if (9 == 0) r3.z = 0; else if (9+16 < 32) {       r3.z = (uint)refProbeConstantsCB[r6.w].data[7].z << (32-(9 + 16)); r3.z = (uint)r3.z >> (32-9);      } else r3.z = (uint)refProbeConstantsCB[r6.w].data[7].z >> 16;
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
      r18.xyz = saturate(r24.xyz * refProbeConstantsCB[r6.w].data[3].xyz + float3(0.5,0.5,0.5));
      r24.xy = refProbeConstantsCB[r6.w].data[4].zw * r18.xy;
      r24.z = refProbeConstantsCB[r6.w].data[5].x * r18.z;
      r18.xyz = refProbeConstantsCB[r6.w].data[5].yzw + r24.xyz;
      r21.x = dot(r12.xyz, r20.xyz);
      r21.y = dot(r12.xyz, r22.xyz);
      r21.z = dot(r12.xyz, r23.xyz);
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
      r2.w = (int)r21.y | (int)r21.x;
      r2.w = (int)r21.z | (int)r2.w;
      r20.xyz = r2.www ? float3(1,1,0) : r20.xyz;
      r21.xyz = r20.xyz * r18.xyz;
      r2.w = dot(r21.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.yzw = r18.xyz * r20.xyz + r15.yzw;
      r3.z = r3.w * r2.w;
      r18.xyz = r19.xyz * r10.www;
      r6.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r2.w = r3.w * r2.w + r6.w;
      r2.w = r3.z / r2.w;
      r16.yzw = r18.xyz * r2.www + r16.yzw;
    } else {
      r9.w = r7.w;
    }
  } else {
    r9.w = r7.w;
    r8.w = r0.y;
  }
  r2.w = cmp(r7.w >= 1);
  bitmask.y = ((~(-1 << 8)) << 0) & 0xffffffff;  r0.y = (((uint)r8.w << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r0.y = r2.w ? r0.y : r8.w;
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
    r19.xyz = -globalProbeConstants.data[0].xyz + r11.xyz;
    r20.x = globalProbeConstants.data[0].w * r19.x;
    r20.yz = globalProbeConstants.data[1].xy * r19.yz;
    r19.xyz = saturate(float3(0.5,0.5,0.5) + r20.xyz);
    r20.xy = globalProbeConstants.data[1].zw * r19.xy;
    r20.z = globalProbeConstants.data[2].x * r19.z;
    r19.xyz = globalProbeConstants.data[2].yzw + r20.xyz;
    r20.xyz = cmp(float3(0,0,0) < r12.xyz);
    r20.xyz = r20.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r20.w = 0;
    r21.xyz = r20.wwx + r19.xyz;
    r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r22.xyz = r12.xyz * r12.xyz;
    r22.xyz = r22.xyz * r3.www;
    r23.xyz = r20.wwy + r19.xyz;
    r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r23.xyz = r23.xyz * r22.yyy;
    r21.xyz = r21.xyz * r22.xxx + r23.xyz;
    r19.xyz = r20.wwz + r19.xyz;
    r19.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r22.zzz + r21.xyz;
    r12.w = 0;
    r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, 6).xyz;
    r19.xyz = r20.xyz * r19.xyz;
    r3.w = dot(r19.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r18.xyz = r15.yzw * r2.www + r19.xyz;
    r17.w = 0;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r3.y).xyz;
    r2.w = sunConstants.globalProbeExposure * r3.z + -r3.w;
    r2.w = r2.y * r2.w + r3.w;
    r16.yzw = r15.yzw * r2.www + r16.yzw;
  }
  r2.w = r2.x + r5.z;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r5.z;
  r2.w = saturate(-1 + r2.w);
  r3.yzw = r18.xyz * r5.zzz;
  r15.yzw = r4.zzz ? r3.yzw : 0;
  r18.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r18.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r18.xy, 0).xy;
  r16.yzw = r16.yzw * r2.www;
  r18.xzw = r16.yzw * r18.xxx;
  r16.yzw = r16.yzw * r18.yyy;
  r2.y = sqrt(r1.w);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r5.z = r2.x * r2.y + r2.w;
  r2.yw = r5.zz * r2.yw;
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.x << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.x >> 12;
  r19.x = -r13.x;
  r5.z = ~(int)r3.x;
  r2.x = -r2.x * 0.5 + 1;
  r20.x = 2;
  r21.x = 2;
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
  r32.xyz = r15.yzw;
  r33.xyz = r18.xzw;
  r34.xyz = r16.yzw;
  r6.w = 0;
  r7.w = 0;
  while (true) {
    r8.w = cmp((int)r7.w == 2);
    if (r8.w != 0) break;
    r8.w = r7.w ? r0.x : r13.w;
    r8.w = (int)r8.w * 15;
    if (3 == 0) r9.w = 0; else if (3+24 < 32) {     r9.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(3 + 24)); r9.w = (uint)r9.w >> (32-3);    } else r9.w = (uint)lightConstantsCB[r8.w].data[1].w >> 24;
    switch (r9.w) {
      case 4 :      if (r2.z != 0) {
        r9.w = (int)r6.w & 3;
        r9.w = mad((int)r9.w, 24, 112);
        r20.yzw = lightConstantsCB[r8.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r9.w = u2.xyzw;
      }
      r9.w = (int)r6.w + 1;
      r10.w = cmp(0 < lightConstantsCB[r8.w].data[6].y);
      r35.xy = lightConstantsCB[r8.w].data[5].zw;
      r35.z = lightConstantsCB[r8.w].data[6].x;
      r20.yzw = -r35.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r8.w].data[0].xyz;
      r36.xyz = r20.yzw + -r11.xyz;
      r12.w = dot(r35.xyz, r36.xyz);
      r13.z = saturate(-r12.w / lightConstantsCB[r8.w].data[6].y);
      r37.xyz = r13.zzz * r35.xyz + r20.yzw;
      r37.xyz = r10.www ? r37.xyz : lightConstantsCB[r8.w].data[0].xyz;
      r37.xyz = r37.xyz + -r11.xyz;
      r14.w = dot(r37.xyz, r37.xyz);
      r17.w = rsqrt(r14.w);
      r37.xyz = r37.xyz * r17.www;
      r17.w = dot(r12.xyz, r37.xyz);
      r18.y = saturate(r17.w);
      r18.y = r4.z ? abs(r17.w) : r18.y;
      r24.w = cmp(0 < r18.y);
      if (r24.w != 0) {
        r24.w = sqrt(r14.w);
        r28.w = lightConstantsCB[r8.w].data[3].x * lightConstantsCB[r8.w].data[3].x;
        r14.w = r28.w / r14.w;
        r14.w = min(1, r14.w);
        r37.xy = saturate(r24.ww * lightConstantsCB[r8.w].data[2].xz + lightConstantsCB[r8.w].data[2].yw);
        r37.zw = r37.xy * r37.xy;
        r37.xy = r37.xy * float2(-2,-2) + float2(3,3);
        r37.xy = r37.zw * r37.xy;
        r14.w = r37.x * r14.w;
        r14.w = r14.w * r37.y;
        r24.w = cmp(0 < r14.w);
        if (r24.w != 0) {
          if (3 == 0) r24.w = 0; else if (3+27 < 32) {           r24.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(3 + 27)); r24.w = (uint)r24.w >> (32-3);          } else r24.w = (uint)lightConstantsCB[r8.w].data[1].w >> 27;
          r28.w = (int)r9.w & 7;
          r29.w = (int)r28.w + -1;
          r29.w = cmp((uint)r29.w < 32);
          r29.w = r2.z ? r29.w : 0;
          if (r29.w != 0) {
            r37.xy = mad((int2)r28.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r28.w, cb2[52].x, r37.x, u2.xxxx
          r28.w = samplerLinear[]..swiz;
            r28.w = (int)r28.w | 4;
            GBufferDiffuseColor[viewID].r37.x = u2.x;
            GBufferDiffuseColor[viewID].r37.y = u2.x;
          }
          r28.w = (int)r6.w + 257;
          r24.w = cmp((int)r24.w != 1);
          if (r24.w != 0) {
            r24.w = abs(r17.w) * -0.200000003 + 0.400000006;
            r29.w = cmp(r17.w < 0);
            r29.w = r4.z ? r29.w : 0;
            r24.w = r29.w ? -r24.w : r24.w;
            r37.xyz = r12.xyz * r24.www + r11.xyz;
            r37.xyz = -lightConstantsCB[r8.w].data[4].yzw + r37.xyz;
            r24.w = max(abs(r37.y), abs(r37.z));
            r24.w = max(abs(r37.x), r24.w);
            r24.w = lightConstantsCB[r8.w].data[5].x / r24.w;
            r24.w = lightConstantsCB[r8.w].data[5].y + r24.w;
            r29.w = dot(r37.xyz, r37.xyz);
            r29.w = rsqrt(r29.w);
            r24.w = max(6.10351563e-05, r24.w);
            r30.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
            r38.w = (uint)r30.w;
            r30.w = 0;
            r31.w = 0;
            while (true) {
              r32.w = cmp((int)r31.w >= 8);
              if (r32.w != 0) break;
              r39.y = dot(icb[r31.w+0].yx, r19.xy);
              r39.z = dot(icb[r31.w+0].yx, r19.yz);
              r39.yz = lightConstantsCB[r8.w].data[3].yy * r39.yz;
              r39.x = r39.y * r16.x;
              r39.w = r39.y * r15.x;
              r38.xyz = r37.xyz * r29.www + r39.xzw;
              r32.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyzw, r24.w).x;
              r30.w = r32.w * 0.125 + r30.w;
              r31.w = (int)r31.w + 1;
            }
          } else {
            r30.w = 1;
          }
          r14.w = r30.w * r14.w;
          r24.w = cmp(0 < r14.w);
          if (r24.w != 0) {
            r24.w = lightConstantsCB[r8.w].data[1].z * r1.z;
            r24.w = 0.25 * r24.w;
            r29.w = dot(r35.xyz, r17.xyz);
            r31.w = dot(r17.xyz, r36.xyz);
            r32.w = -r29.w * r29.w + lightConstantsCB[r8.w].data[6].y;
            r12.w = r29.w * r31.w + -r12.w;
            r12.w = saturate(r12.w / r32.w);
            r29.w = r32.w / lightConstantsCB[r8.w].data[6].y;
            r29.w = 10 * r29.w;
            r29.w = min(1, r29.w);
            r12.w = r12.w + -r13.z;
            r12.w = r29.w * r12.w + r13.z;
            r20.yzw = r12.www * r35.xyz + r20.yzw;
            r20.yzw = r10.www ? r20.yzw : lightConstantsCB[r8.w].data[0].xyz;
            r20.yzw = r20.yzw + -r11.xyz;
            r10.w = dot(r20.yzw, r20.yzw);
            r10.w = rsqrt(r10.w);
            r35.xyz = r20.yzw * r10.www;
            if (4 == 0) r12.w = 0; else if (4+16 < 32) {             r12.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);            } else r12.w = (uint)lightConstantsCB[r8.w].data[1].w >> 16;
            r13.z = cmp(0 < (uint)r12.w);
            r13.z = r3.x ? r13.z : 0;
            if (r13.z != 0) {
              r12.w = (int)r12.w + numLights;
              r12.w = mad((int)r12.w, 15, -15);
              r13.z = abs(r17.w) * -0.200000003 + 0.400000006;
              r29.w = cmp(r17.w < 0);
              r29.w = r4.z ? r29.w : 0;
              r13.z = r29.w ? -r13.z : r13.z;
              r22.xyz = r12.xyz * r13.zzz + r11.xyz;
              r36.xyz = lightConstantsCB[r12.w].data[6].yzw;
              r36.w = lightConstantsCB[r12.w].data[7].x;
              r13.z = dot(r36.xyzw, r22.xyzw);
              r36.xyz = lightConstantsCB[r12.w].data[7].yzw;
              r36.w = lightConstantsCB[r12.w].data[8].x;
              r29.w = dot(r36.xyzw, r22.xyzw);
              r31.w = cmp(r29.w < r13.z);
              if (r31.w == 0) {
                r36.xyz = lightConstantsCB[r12.w].data[4].yzw;
                r36.w = lightConstantsCB[r12.w].data[5].x;
                r36.x = dot(r36.xyzw, r22.xyzw);
                r37.xyz = lightConstantsCB[r12.w].data[5].yzw;
                r37.w = lightConstantsCB[r12.w].data[6].x;
                r36.y = dot(r37.xyzw, r22.xyzw);
                r22.xy = r36.xy / r29.ww;
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
                  r22.x = lightConstantsCB[r12.w].data[10].z * r29.w;
                  r13.z = lightConstantsCB[r12.w].data[10].y * r29.w + r13.z;
                  r13.z = r13.z / r22.x;
                }
              } else {
                r22.z = -1;
              }
              r22.x = (int)r31.w | (int)r22.z;
              if (r22.x == 0) {
                r13.z = max(6.10351563e-05, r13.z);
                r22.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r37.z = (uint)r22.x;
                  r22.yz = float2(0,0);
                  while (true) {
                    r29.w = cmp((int)r22.z >= 8);
                    if (r29.w != 0) break;
                    r38.x = dot(icb[r22.z+0].yx, r19.xw);
                    r38.y = dot(icb[r22.z+0].xy, r13.xy);
                    r37.xy = r38.xy * lightConstantsCB[r12.w].data[3].yy + r36.xy;
                    r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r13.z).x;
                    r22.y = r29.w * 0.125 + r22.y;
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
              r14.w = r14.w * r12.w;
            } else {
              if (4 == 0) r12.w = 0; else if (4+20 < 32) {               r12.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);              } else r12.w = (uint)lightConstantsCB[r8.w].data[1].w >> 20;
              r13.z = cmp(0 < (uint)r12.w);
              r13.z = r13.z ? r5.z : 0;
              if (r13.z != 0) {
                r12.w = (int)r12.w + numLights;
                r12.w = mad((int)r12.w, 15, -15);
                r13.z = abs(r17.w) * -0.200000003 + 0.400000006;
                r22.x = cmp(r17.w < 0);
                r22.x = r4.z ? r22.x : 0;
                r13.z = r22.x ? -r13.z : r13.z;
                r23.xyz = r12.xyz * r13.zzz + r11.xyz;
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
                    r29.w = 0;
                    while (true) {
                      r31.w = cmp((int)r29.w >= 8);
                      if (r31.w != 0) break;
                      r37.x = dot(icb[r29.w+0].xy, r14.xy);
                      r37.y = dot(icb[r29.w+0].yx, r14.xz);
                      r23.xy = r37.xy * lightConstantsCB[r12.w].data[3].yy + r36.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r13.z).x;
                      r22.z = r23.x * 0.125 + r22.z;
                      r29.w = (int)r29.w + 1;
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
                r14.w = r14.w * r12.w;
              }
            }
            r12.w = -r18.y * r2.x + 1;
            r12.w = r12.w * r12.w;
            r12.w = -r12.w * 0.620000005 + 0.620000005;
            r12.w = r12.w + -r18.y;
            r12.w = r1.w * r12.w + r18.y;
            r12.w = r12.w * r14.w;
            r23.x = lightConstantsCB[r8.w].data[0].w;
            r23.yz = lightConstantsCB[r8.w].data[1].xy;
            r13.z = cmp(0 < r17.w);
            r36.xyz = r12.www * r23.xyz + r31.xyz;
            r17.w = saturate(dot(r12.xyz, r35.xyz));
            r20.yzw = r20.yzw * r10.www + r5.xyw;
            r10.w = dot(r20.yzw, r20.yzw);
            r10.w = rsqrt(r10.w);
            r20.yzw = r20.yzw * r10.www;
            r10.w = dot(r20.yzw, r5.xyw);
            r18.y = dot(r12.xyz, r20.yzw);
            r20.y = abs(r18.y) * r1.z + -abs(r18.y);
            r18.y = abs(r18.y) * r20.y + 1;
            r20.y = r17.w * r2.y + r2.w;
            r18.y = r18.y * r18.y;
            r18.y = r18.y * r20.y;
            r18.y = rcp(r18.y);
            r17.w = r17.w * r24.w;
            r17.w = r18.y * r17.w;
            r17.w = r17.w * r14.w;
            r20.yzw = r17.www * r23.xyz + r34.xyz;
            r10.w = saturate(1 + -r10.w);
            r18.y = r10.w * r10.w;
            r18.y = r18.y * r18.y;
            r10.w = r18.y * r10.w;
            r10.w = r17.w * r10.w;
            r35.xyz = r10.www * r23.xyz + r33.xyz;
            r23.xyz = r12.www * r23.xyz + r32.xyz;
            r23.xyz = r4.zzz ? r23.xyz : r32.xyz;
            r31.xyz = r13.zzz ? r36.xyz : r31.xyz;
            r32.xyz = r13.zzz ? r32.xyz : r23.xyz;
            r33.xyz = r13.zzz ? r35.xyz : r33.xyz;
            r34.xyz = r13.zzz ? r20.yzw : r34.xyz;
            r10.w = (int)r28.w & 7;
            r12.w = (int)r10.w + -1;
            r12.w = cmp((uint)r12.w < 32);
            r12.w = r2.z ? r12.w : 0;
            if (r12.w != 0) {
              r20.yz = mad((int2)r10.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, r20.y, u2.xxxx
            r10.w = samplerLinear[]..swiz;
              r10.w = (int)r10.w | 8;
              GBufferDiffuseColor[viewID].r20.y = u2.x;
              GBufferDiffuseColor[viewID].r20.z = u2.x;
            }
            r6.w = (int)r6.w + 0x00010101;
          } else {
            r6.w = r28.w;
          }
        } else {
          r6.w = r9.w;
        }
      } else {
        r6.w = r9.w;
      }
      break;
      case 2 :      if (r2.z != 0) {
        r9.w = (int)r6.w & 3;
        r9.w = mad((int)r9.w, 24, 112);
        r21.yzw = lightConstantsCB[r8.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r9.w = u2.xyzw;
      }
      r9.w = (int)r6.w + 1;
      r23.xy = lightConstantsCB[r8.w].data[3].zw + -r11.xy;
      r23.z = lightConstantsCB[r8.w].data[4].x + -r11.z;
      r10.w = dot(r23.xyz, r23.xyz);
      r10.w = rsqrt(r10.w);
      r20.yzw = r23.xyz * r10.www;
      r12.w = dot(r12.xyz, r20.yzw);
      r13.z = saturate(r12.w);
      r14.w = r4.z ? abs(r12.w) : r13.z;
      r17.w = cmp(0 < r14.w);
      if (r17.w != 0) {
        r35.xyz = lightConstantsCB[r8.w].data[7].yzw;
        r35.w = lightConstantsCB[r8.w].data[8].x;
        r17.w = dot(r35.xyzw, r11.xyzw);
        r18.y = cmp(r17.w < 1);
        if (r18.y != 0) {
          r20.yzw = float3(1,1,1);
          r18.y = 0;
        } else {
          r21.yzw = lightConstantsCB[r8.w].data[0].xyz + -r11.xyz;
          r22.x = lightConstantsCB[r8.w].data[3].x * lightConstantsCB[r8.w].data[3].x;
          r21.y = dot(r21.yzw, r21.yzw);
          r21.y = r22.x / r21.y;
          r21.y = min(1, r21.y);
          r21.zw = saturate(r17.ww * lightConstantsCB[r8.w].data[2].xz + lightConstantsCB[r8.w].data[2].yw);
          r36.xy = r21.zw * r21.zw;
          r21.zw = r21.zw * float2(-2,-2) + float2(3,3);
          r21.zw = r36.xy * r21.zw;
          r21.y = r21.y * r21.z;
          r21.y = r21.y * r21.w;
          r36.xyz = lightConstantsCB[r8.w].data[4].yzw;
          r36.w = lightConstantsCB[r8.w].data[5].x;
          r36.x = dot(r36.xyzw, r11.xyzw);
          r37.xyz = lightConstantsCB[r8.w].data[5].yzw;
          r37.w = lightConstantsCB[r8.w].data[6].x;
          r36.y = dot(r37.xyzw, r11.xyzw);
          r24.xy = r36.xy / r17.ww;
          r17.w = cmp(lightConstantsCB[r8.w].data[10].w < 0.00048828125);
          if (r17.w != 0) {
            r21.zw = saturate(abs(r24.xy) * lightConstantsCB[r8.w].data[12].xy + lightConstantsCB[r8.w].data[12].zw);
            r36.xy = r21.zw * r21.zw;
            r21.zw = r21.zw * float2(-2,-2) + float2(3,3);
            r21.zw = r36.xy * r21.zw;
            r17.w = r21.z * r21.w;
          } else {
            r36.xyzw = saturate(lightConstantsCB[r8.w].data[11].xyzw * abs(r24.yyxx));
            r36.xyzw = log2(r36.xyzw);
            r36.xyzw = lightConstantsCB[r8.w].data[12].zzzz * r36.xyzw;
            r36.xyzw = exp2(r36.xyzw);
            r21.zw = r36.xy + r36.zw;
            r21.zw = log2(r21.zw);
            r21.zw = lightConstantsCB[r8.w].data[12].ww * r21.zw;
            r21.zw = exp2(r21.zw);
            r21.z = lightConstantsCB[r8.w].data[12].x * r21.z;
            r22.x = lightConstantsCB[r8.w].data[12].y * r21.w + -1;
            r21.z = lightConstantsCB[r8.w].data[12].y * r21.w + -r21.z;
            r21.z = saturate(r22.x / r21.z);
            r21.w = r21.z * r21.z;
            r21.z = r21.z * -2 + 3;
            r17.w = r21.w * r21.z;
          }
          r18.y = r21.y * r17.w;
          r17.w = 255 & (int)lightConstantsCB[r8.w].data[14].w;
          if (r17.w != 0) {
            r21.y = dot(lightConstantsCB[r8.w].data[13].xyz, r24.xyz);
            r36.x = lightConstantsCB[r8.w].data[13].w;
            r36.yz = lightConstantsCB[r8.w].data[14].xy;
            r21.z = dot(r36.xyz, r24.xyz);
            r36.xy = frac(r21.yz);
            r17.w = (int)r17.w + -1;
            r36.z = (uint)r17.w;
            r20.yzw = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
          } else {
            r20.yzw = float3(1,1,1);
          }
        }
        r36.x = lightConstantsCB[r8.w].data[0].w;
        r36.yz = lightConstantsCB[r8.w].data[1].xy;
        r20.yzw = r36.xyz * r20.yzw;
        r17.w = cmp(0 < r18.y);
        if (r17.w != 0) {
          if (3 == 0) r17.w = 0; else if (3+27 < 32) {           r17.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(3 + 27)); r17.w = (uint)r17.w >> (32-3);          } else r17.w = (uint)lightConstantsCB[r8.w].data[1].w >> 27;
          r21.y = (int)r9.w & 7;
          r21.z = (int)r21.y + -1;
          r21.z = cmp((uint)r21.z < 32);
          r21.z = r2.z ? r21.z : 0;
          if (r21.z != 0) {
            r21.yz = mad((int2)r21.yy, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r21.w, cb2[52].x, r21.y, u2.xxxx
          r21.w = samplerLinear[]..swiz;
            r21.w = (int)r21.w | 4;
            GBufferDiffuseColor[viewID].r21.y = u2.x;
            GBufferDiffuseColor[viewID].r21.z = u2.x;
          }
          r21.y = (int)r6.w + 257;
          r17.w = cmp((int)r17.w != 1);
          if (r17.w != 0) {
            r17.w = abs(r12.w) * -0.200000003 + 0.400000006;
            r21.z = cmp(r12.w < 0);
            r21.z = r4.z ? r21.z : 0;
            r17.w = r21.z ? -r17.w : r17.w;
            r25.xyz = r12.xyz * r17.www + r11.xyz;
            r36.xyz = lightConstantsCB[r8.w].data[6].yzw;
            r36.w = lightConstantsCB[r8.w].data[7].x;
            r17.w = dot(r36.xyzw, r25.xyzw);
            r21.z = dot(r35.xyzw, r25.xyzw);
            r21.w = cmp(r21.z >= r17.w);
            if (r21.w != 0) {
              r35.xyz = lightConstantsCB[r8.w].data[4].yzw;
              r35.w = lightConstantsCB[r8.w].data[5].x;
              r24.x = dot(r35.xyzw, r25.xyzw);
              r35.xyz = lightConstantsCB[r8.w].data[5].yzw;
              r35.w = lightConstantsCB[r8.w].data[6].x;
              r24.y = dot(r35.xyzw, r25.xyzw);
              r24.xy = r24.xy / r21.zz;
              r24.xy = saturate(r24.xy * float2(0.5,-0.5) + float2(0.5,0.5));
              r25.x = r24.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
              r25.y = r24.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
              r17.w = r17.w / r21.z;
              r17.w = max(6.10351563e-05, r17.w);
              r21.z = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r35.z = (uint)r21.z;
                r21.w = 0;
                r22.x = 0;
                while (true) {
                  r24.x = cmp((int)r22.x >= 8);
                  if (r24.x != 0) break;
                  r24.x = dot(icb[r22.x+0].xy, r28.xy);
                  r24.y = dot(icb[r22.x+0].yx, r28.xz);
                  r35.xy = r24.xy * lightConstantsCB[r8.w].data[3].yy + r25.xy;
                  r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r17.w).x;
                  r21.w = r24.x * 0.125 + r21.w;
                  r22.x = (int)r22.x + 1;
                }
              } else {
                r25.z = (uint)r21.z;
                r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r17.w).x;
              }
              r17.w = r21.w * r21.w;
              r17.w = r17.w * r21.w;
            } else {
              r17.w = 1;
            }
          } else {
            r17.w = 1;
          }
          r17.w = r18.y * r17.w;
          r18.y = cmp(0 < r17.w);
          if (r18.y != 0) {
            r18.y = lightConstantsCB[r8.w].data[1].z * r1.z;
            r18.y = r18.y * r13.z;
            if (4 == 0) r21.z = 0; else if (4+16 < 32) {             r21.z = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 16)); r21.z = (uint)r21.z >> (32-4);            } else r21.z = (uint)lightConstantsCB[r8.w].data[1].w >> 16;
            r22.x = cmp(0 < (uint)r21.z);
            r22.x = r3.x ? r22.x : 0;
            if (r22.x != 0) {
              r21.z = (int)r21.z + numLights;
              r21.z = mad((int)r21.z, 15, -15);
              r22.x = abs(r12.w) * -0.200000003 + 0.400000006;
              r24.x = cmp(r12.w < 0);
              r24.x = r4.z ? r24.x : 0;
              r22.x = r24.x ? -r22.x : r22.x;
              r26.xyz = r12.xyz * r22.xxx + r11.xyz;
              r35.xyz = lightConstantsCB[r21.z].data[6].yzw;
              r35.w = lightConstantsCB[r21.z].data[7].x;
              r22.x = dot(r35.xyzw, r26.xyzw);
              r35.xyz = lightConstantsCB[r21.z].data[7].yzw;
              r35.w = lightConstantsCB[r21.z].data[8].x;
              r24.x = dot(r35.xyzw, r26.xyzw);
              r24.y = cmp(r24.x < r22.x);
              if (r24.y == 0) {
                r35.xyz = lightConstantsCB[r21.z].data[4].yzw;
                r35.w = lightConstantsCB[r21.z].data[5].x;
                r25.x = dot(r35.xyzw, r26.xyzw);
                r35.xyz = lightConstantsCB[r21.z].data[5].yzw;
                r35.w = lightConstantsCB[r21.z].data[6].x;
                r25.y = dot(r35.xyzw, r26.xyzw);
                r25.xy = r25.xy / r24.xx;
                r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r26.x = lightConstantsCB[r21.z].data[9].w + r25.x;
                r26.y = lightConstantsCB[r21.z].data[10].x + r25.y;
                r25.xy = lightConstantsCB[r21.z].data[9].yz * r26.xy;
                r26.xy = lightConstantsCB[r21.z].data[3].yy / lightConstantsCB[r21.z].data[8].yw;
                r35.xy = float2(1,1) + -r26.xy;
                r35.xy = cmp(r25.xy >= r35.xy);
                r26.xy = cmp(r26.xy >= r25.xy);
                r26.xy = (int2)r26.xy | (int2)r35.xy;
                r24.w = (int)r26.y | (int)r26.x;
                if (r24.w == 0) {
                  r25.xy = saturate(r25.xy);
                  r26.x = r25.x * lightConstantsCB[r21.z].data[8].y + lightConstantsCB[r21.z].data[8].z;
                  r26.y = r25.y * lightConstantsCB[r21.z].data[8].w + lightConstantsCB[r21.z].data[9].x;
                  r25.x = lightConstantsCB[r21.z].data[10].z * r24.x;
                  r22.x = lightConstantsCB[r21.z].data[10].y * r24.x + r22.x;
                  r22.x = r22.x / r25.x;
                }
              } else {
                r24.w = -1;
              }
              r24.x = (int)r24.y | (int)r24.w;
              if (r24.x == 0) {
                r22.x = max(6.10351563e-05, r22.x);
                r24.x = 0x0000ffff & (int)lightConstantsCB[r21.z].data[1].w;
                if (enableDitheredShadow != 0) {
                  r25.z = (uint)r24.x;
                  r24.yw = float2(0,0);
                  while (true) {
                    r28.w = cmp((int)r24.w >= 8);
                    if (r28.w != 0) break;
                    r35.x = dot(icb[r24.w+0].xy, r29.xy);
                    r35.y = dot(icb[r24.w+0].yx, r29.xz);
                    r25.xy = r35.xy * lightConstantsCB[r21.z].data[3].yy + r26.xy;
                    r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r22.x).x;
                    r24.y = r25.x * 0.125 + r24.y;
                    r24.w = (int)r24.w + 1;
                  }
                } else {
                  r26.z = (uint)r24.x;
                  r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r22.x).x;
                }
                r21.z = r24.y * r24.y;
                r21.z = r21.z * r24.y;
              } else {
                r21.z = 1;
              }
              r17.w = r21.z * r17.w;
            } else {
              if (4 == 0) r8.w = 0; else if (4+20 < 32) {               r8.w = (uint)lightConstantsCB[r8.w].data[1].w << (32-(4 + 20)); r8.w = (uint)r8.w >> (32-4);              } else r8.w = (uint)lightConstantsCB[r8.w].data[1].w >> 20;
              r21.z = cmp(0 < (uint)r8.w);
              r21.z = r21.z ? r5.z : 0;
              if (r21.z != 0) {
                r8.w = (int)r8.w + numLights;
                r8.w = mad((int)r8.w, 15, -15);
                r21.z = abs(r12.w) * -0.200000003 + 0.400000006;
                r22.x = cmp(r12.w < 0);
                r22.x = r4.z ? r22.x : 0;
                r21.z = r22.x ? -r21.z : r21.z;
                r27.xyz = r12.xyz * r21.zzz + r11.xyz;
                r35.xyz = lightConstantsCB[r8.w].data[6].yzw;
                r35.w = lightConstantsCB[r8.w].data[7].x;
                r21.z = dot(r35.xyzw, r27.xyzw);
                r35.xyz = lightConstantsCB[r8.w].data[7].yzw;
                r35.w = lightConstantsCB[r8.w].data[8].x;
                r22.x = dot(r35.xyzw, r27.xyzw);
                r24.x = cmp(r22.x < r21.z);
                if (r24.x == 0) {
                  r35.xyz = lightConstantsCB[r8.w].data[4].yzw;
                  r35.w = lightConstantsCB[r8.w].data[5].x;
                  r25.x = dot(r35.xyzw, r27.xyzw);
                  r35.xyz = lightConstantsCB[r8.w].data[5].yzw;
                  r35.w = lightConstantsCB[r8.w].data[6].x;
                  r25.y = dot(r35.xyzw, r27.xyzw);
                  r25.xy = r25.xy / r22.xx;
                  r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r26.x = lightConstantsCB[r8.w].data[9].w + r25.x;
                  r26.y = lightConstantsCB[r8.w].data[10].x + r25.y;
                  r25.xy = lightConstantsCB[r8.w].data[9].yz * r26.xy;
                  r26.xy = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
                  r27.xy = float2(1,1) + -r26.xy;
                  r27.xy = cmp(r25.xy >= r27.xy);
                  r26.xy = cmp(r26.xy >= r25.xy);
                  r26.xy = (int2)r26.xy | (int2)r27.xy;
                  r24.w = (int)r26.y | (int)r26.x;
                  if (r24.w == 0) {
                    r25.xy = saturate(r25.xy);
                    r26.x = r25.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                    r26.y = r25.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                    r25.x = lightConstantsCB[r8.w].data[10].z * r22.x;
                    r21.z = lightConstantsCB[r8.w].data[10].y * r22.x + r21.z;
                    r21.z = r21.z / r25.x;
                  }
                } else {
                  r24.w = -1;
                }
                r22.x = (int)r24.x | (int)r24.w;
                if (r22.x == 0) {
                  r21.z = max(6.10351563e-05, r21.z);
                  r22.x = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r25.z = (uint)r22.x;
                    r24.xw = float2(0,0);
                    while (true) {
                      r27.x = cmp((int)r24.w >= 8);
                      if (r27.x != 0) break;
                      r27.x = dot(icb[r24.w+0].xy, r30.xy);
                      r27.y = dot(icb[r24.w+0].yx, r30.xz);
                      r25.xy = r27.xy * lightConstantsCB[r8.w].data[3].yy + r26.xy;
                      r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.z).x;
                      r24.x = r25.x * 0.125 + r24.x;
                      r24.w = (int)r24.w + 1;
                    }
                  } else {
                    r26.z = (uint)r22.x;
                    r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r21.z).x;
                  }
                  r8.w = r24.x * r24.x;
                  r8.w = r8.w * r24.x;
                } else {
                  r8.w = 1;
                }
                r17.w = r17.w * r8.w;
              }
            }
            r8.w = -r14.w * r2.x + 1;
            r8.w = r8.w * r8.w;
            r8.w = -r8.w * 0.620000005 + 0.620000005;
            r8.w = r8.w + -r14.w;
            r8.w = r1.w * r8.w + r14.w;
            r8.w = r8.w * r17.w;
            r12.w = cmp(0 < r12.w);
            r25.xyz = r8.www * r20.yzw + r31.xyz;
            r23.xyz = r23.xyz * r10.www + r5.xyw;
            r10.w = dot(r23.xyz, r23.xyz);
            r10.w = rsqrt(r10.w);
            r23.xyz = r23.xyz * r10.www;
            r10.w = dot(r23.xyz, r5.xyw);
            r14.w = dot(r12.xyz, r23.xyz);
            r21.z = abs(r14.w) * r1.z + -abs(r14.w);
            r14.w = abs(r14.w) * r21.z + 1;
            r13.z = r13.z * r2.y + r2.w;
            r14.w = r14.w * r14.w;
            r13.z = r14.w * r13.z;
            r13.z = rcp(r13.z);
            r13.z = r13.z * r18.y;
            r13.z = r17.w * r13.z;
            r13.z = 0.25 * r13.z;
            r23.xyz = r13.zzz * r20.yzw + r34.xyz;
            r10.w = saturate(1 + -r10.w);
            r14.w = r10.w * r10.w;
            r14.w = r14.w * r14.w;
            r10.w = r14.w * r10.w;
            r10.w = r13.z * r10.w;
            r26.xyz = r10.www * r20.yzw + r33.xyz;
            r20.yzw = r8.www * r20.yzw + r32.xyz;
            r20.yzw = r4.zzz ? r20.yzw : r32.xyz;
            r31.xyz = r12.www ? r25.xyz : r31.xyz;
            r32.xyz = r12.www ? r32.xyz : r20.yzw;
            r33.xyz = r12.www ? r26.xyz : r33.xyz;
            r34.xyz = r12.www ? r23.xyz : r34.xyz;
            r8.w = (int)r21.y & 7;
            r10.w = (int)r8.w + -1;
            r10.w = cmp((uint)r10.w < 32);
            r10.w = r2.z ? r10.w : 0;
            if (r10.w != 0) {
              r20.yz = mad((int2)r8.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r8.w, cb2[52].x, r20.y, u2.xxxx
            r8.w = samplerLinear[]..swiz;
              r8.w = (int)r8.w | 8;
              GBufferDiffuseColor[viewID].r20.y = u2.x;
              GBufferDiffuseColor[viewID].r20.z = u2.x;
            }
            r6.w = (int)r6.w + 0x00010101;
          } else {
            r6.w = r21.y;
          }
        } else {
          r6.w = r9.w;
        }
      } else {
        r6.w = r9.w;
      }
      break;
      default :
      break;
    }
    r7.w = (int)r7.w + 1;
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
  r4.xyw = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r4.x;
  r2.w = cmp((int)r0.x == (int)r2.w);
  r4.xy = r2.ww ? r4.yw : float2(-1,0);
  r5.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r5.x;
  r0.x = cmp((int)r0.x == (int)r2.w);
  r5.xy = r0.xx ? r5.yz : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.z = r4.x;
  r7.w = r5.x;
  r7.xyzw = r7.xyzw + -r3.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.x = r7.x + r7.y;
  r0.x = r0.x + r7.z;
  r0.x = r0.x + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r4.y + r1.z;
  r1.z = r7.w * r5.y + r1.z;
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
  r4.xyw = float3(0.959999979,0.959999979,0.959999979) * r33.xyz;
  r4.xyw = r34.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r4.xyw;
  r2.xyw = r4.xyw + r2.xyw;
  r4.xyw = float3(1,1,1) + -r3.xyz;
  r4.xyw = r33.xyz * r4.xyw;
  r3.xyz = r34.xyz * r3.xyz + r4.xyw;
  r3.xyz = r31.xyz * r6.xyz + r3.xyz;
  r2.xyw = r4.zzz ? r2.xyw : r3.xyz;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(r11.xyz, r11.xyz);
    r1.z = rsqrt(r0.x);
    r3.xyz = r11.xyz * r1.zzz;
    r0.x = sqrt(r0.x);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r3.w = cmp(0.00999999978 < abs(r11.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r11.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r3.ww ? r4.xy : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xyz;
    } else {
      r1.z = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r11.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.z;
      r1.z = r1.w ? r3.w : r1.z;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.x = fogConstants.atmosphereMieSchlickK * -r1.z + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r1.w = r1.w / r3.x;
    r0.x = -fogConstants.atmospherehazebasedist + r0.x;
    r0.x = saturate(fogConstants.atmospherehazefadedist * r0.x);
    r0.x = r1.w * r0.x;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r3.xyz = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r2.xyw * r4.xyz + r3.xyz;
  } else {
    r0.x = fogConstants.heightFalloff * r11.z;
    r1.z = fogConstants.heightFalloff * r11.z + fogConstants.K0;
    r1.w = cmp(abs(r0.x) < 9.99999975e-05);
    r3.w = min(64, r1.z);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.y ? r3.w : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.x = r1.w ? 1 : r0.x;
    r0.x = r1.z / r0.x;
    r0.x = r1.w ? r4.x : r0.x;
    r0.x = fogConstants.expMul * r0.x;
    r1.z = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r1.z);
    r0.x = r0.x * r1.w + fogConstants.expAdd;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r1.z = rsqrt(r1.z);
    r4.xyz = r11.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
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
  r3.xy = cmp((int2)r3.yw == int2(3,8));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 16);
  r1.z = r1.z ? r1.w : 0;
  r3.z = r1.z ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyw;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = r0.xxx ? r3.xyz : r2.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.x = (int)r6.w & 3;
        break;
        case 2 :        if (2 == 0) r0.x = 0; else if (2+8 < 32) {         r0.x = (uint)r6.w << (32-(2 + 8)); r0.x = (uint)r0.x >> (32-2);        } else r0.x = (uint)r6.w >> 8;
        break;
        case 3 :        r0.x = (uint)r6.w >> 16;
        break;
        case 4 :        r0.x = (int)r0.y & 3;
        break;
        case 5 :        r0.x = (uint)r0.y >> 8;
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
    r1.xyz = eyeOffset.xyz + r11.xyz;
    r1.w = (int)r6.w & 3;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.x = (int)r0.y & 3;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.x = (int)r6.w & 3;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.x
    InterlockedAdd(dest, value, orig_value);
    if (2 == 0) r1.x = 0; else if (2+8 < 32) {     r1.x = (uint)r6.w << (32-(2 + 8)); r1.x = (uint)r1.x >> (32-2);    } else r1.x = (uint)r6.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (uint)r6.w >> 16;
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
    atomic_umax g2, l(0), r0.x
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