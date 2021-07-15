// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:56 2021

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
  r0.x = mad(permuteStride, 56, (int)vThreadGroupID.x);
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
  r3.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r4.xy = (uint2)r1.xy;
  r4.zw = float2(0.5,0.5) + r4.xy;
  r5.xy = renderTargetSize.zw * r4.zw;
  r5.x = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r5.xy, 0).x;
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
  r5.y = GBufferDepth.Load(r1.xyw).x;
  r6.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r10.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r11.x = cmp(r5.y >= 0.984375);
  r1.z = 1.01587307 * r5.y;
  r1.w = r5.y * 64 + -63;
  r1.z = r11.x ? r1.w : r1.z;
  r1.z = max(9.99999994e-09, r1.z);
  r11.y = rcp(r1.z);
  r1.zw = r11.xy ? r0.ww : 0;
  r4.zw = -subpixelOffset.xy + r4.zw;
  r4.zw = renderTargetSize.zw * r4.zw;
  r4.zw = r4.zw * float2(2,-2) + float2(-1,1);
  r11.x = inverseProjectionMatrix._m00 * r4.z;
  r11.y = inverseProjectionMatrix._m11 * r4.w;
  r11.zw = float2(1,1);
  r5.yzw = r11.xyz * r1.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r5.zzz;
  r11.xyz = r5.yyy * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r11.xyz = r5.www * inverseViewMatrix._m20_m21_m22 + r11.xyz;
  r0.w = r2.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r1.w = dot(r2.xy, r2.xy);
  r12.zw = float2(2,1) + -r1.ww;
  r1.w = sqrt(r12.z);
  r12.xy = r2.xy * r1.ww;
  r13.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r13.xyzw = r13.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r0.w = (int)r13.w ^ (int)r13.z;
  r13.z = r0.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r13.xyz;
  r5.yzw = float3(1,-2,1) * r13.xyz;
  r12.xyz = float3(0.408248305,0.707106769,0.577350259) * r12.xyw;
  r2.xyw = r12.yyy * r2.xyw;
  r2.xyw = r5.yzw * r12.xxx + r2.xyw;
  r12.xyz = r13.xyz * r12.zzz + r2.xyw;
  r0.w = r3.z ? -0.5 : -0.00146627566;
  r0.w = r2.z + r0.w;
  r2.y = saturate(2.00982332 * r0.w);
  r0.w = dot(-r11.xyz, -r11.xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = -r11.xyz * r0.www;
  r0.w = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r4.x, r13.x);
  r2.zw = (uint2)r1.yx;
  r0.w = dot(r2.zw, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r14.x, r15.x);
  r2.x = saturate(dot(r12.xyz, r5.yzw));
  r0.w = dot(-r5.yzw, r12.xyz);
  r0.w = r0.w + r0.w;
  r16.xyz = r12.xyz * -r0.www + -r5.yzw;
  r0.w = 17 * r2.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.w = sqrt(r0.w);
  r2.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r2.zw = (uint2)r2.zw;
  r2.zw = cmp((int2)r1.xy == (int2)r2.zw);
  r2.z = r2.w ? r2.z : 0;
  r2.w = 1 + -r2.y;
  r3.z = 5 * r2.w;
  r4.z = r2.w * 5 + -2.5;
  r4.z = 0.400000006 * r4.z;
  r4.z = max(0, r4.z);
  r14.yz = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r4.w = exp2(r14.y);
  r4.w = r4.w * r2.x;
  r4.zw = float2(100,9.1368103) * r4.zw;
  r6.w = r3.z * r2.w;
  r6.w = -r6.w * 2.0159049 + r14.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r2.x;
  r6.w = 9.70808983 * r6.w;
  r4.w = max(r6.w, r4.w);
  r4.w = max(1.26815999, r4.w);
  r6.w = numRefProbes + -numOverrideProbes;
  r0.y = (uint)r0.y >> 24;
  r7.w = cmp((uint)r0.y >= (uint)r6.w);
  r8.w = cmp((uint)r0.y < numRefProbes);
  r7.w = r7.w ? r8.w : 0;
  if (r7.w != 0) {
    r7.w = (int)r0.y * 14;
    if (r2.z != 0) {
      r17.yzw = refProbeConstantsCB[r7.w].data[0].xyz + eyeOffset.xyz;
      r17.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r14.yzw = -refProbeConstantsCB[r7.w].data[0].xyz + r11.xyz;
    r8.w = 0x0000ffff & (int)refProbeConstantsCB[r7.w].data[7].z;
    if (6 == 0) r9.w = 0; else if (6+25 < 32) {     r9.w = (uint)refProbeConstantsCB[r7.w].data[7].z << (32-(6 + 25)); r9.w = (uint)r9.w >> (32-6);    } else r9.w = (uint)refProbeConstantsCB[r7.w].data[7].z >> 25;
    r10.w = (int)r8.w * 6;
    r13.w = dot(refProbeAttenuationConstantsCB[r10.w].data[0].xyz, r14.yzw);
    r13.w = saturate(refProbeAttenuationConstantsCB[r10.w].data[0].w + r13.w);
    r15.y = dot(refProbeAttenuationConstantsCB[r10.w].data[1].xyz, r14.yzw);
    r15.y = saturate(refProbeAttenuationConstantsCB[r10.w].data[1].w + r15.y);
    r13.w = r15.y * r13.w;
    r15.y = dot(refProbeAttenuationConstantsCB[r10.w].data[2].xyz, r14.yzw);
    r15.y = saturate(refProbeAttenuationConstantsCB[r10.w].data[2].w + r15.y);
    r13.w = r15.y * r13.w;
    r15.y = dot(refProbeAttenuationConstantsCB[r10.w].data[3].xyz, r14.yzw);
    r15.y = saturate(refProbeAttenuationConstantsCB[r10.w].data[3].w + r15.y);
    r13.w = r15.y * r13.w;
    r15.y = dot(refProbeAttenuationConstantsCB[r10.w].data[4].xyz, r14.yzw);
    r15.y = saturate(refProbeAttenuationConstantsCB[r10.w].data[4].w + r15.y);
    r13.w = r15.y * r13.w;
    r15.y = dot(refProbeAttenuationConstantsCB[r10.w].data[5].xyz, r14.yzw);
    r10.w = saturate(refProbeAttenuationConstantsCB[r10.w].data[5].w + r15.y);
    r17.x = r13.w * r10.w;
    r10.w = 1 & (int)refProbeConstantsCB[r7.w].data[6].x;
    r17.yz = float2(0,1);
    r15.yz = r10.ww ? r17.xy : r17.zx;
    r17.x = 1;
    r10.w = refProbeConstantsCB[r7.w].data[6].x;
    r18.xy = r15.yz;
    r13.w = 1;
    while (true) {
      r15.w = cmp((int)r13.w >= (int)r9.w);
      if (r15.w != 0) break;
      r15.w = (int)r8.w + (int)r13.w;
      r15.w = (int)r15.w * 6;
      r17.z = dot(refProbeAttenuationConstantsCB[r15.w].data[0].xyz, r14.yzw);
      r17.z = saturate(refProbeAttenuationConstantsCB[r15.w].data[0].w + r17.z);
      r17.z = r18.x * r17.z;
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[1].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[1].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[2].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[2].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[3].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[3].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[4].xyz, r14.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[4].w + r17.w);
      r17.z = r17.z * r17.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r15.w].data[5].xyz, r14.yzw);
      r15.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[5].w + r17.w);
      r18.x = r17.z * r15.w;
      r17.w = (uint)r10.w >> 2;
      if (1 == 0) r18.z = 0; else if (1+2 < 32) {       r18.z = (uint)r10.w << (32-(1 + 2)); r18.z = (uint)r18.z >> (32-1);      } else r18.z = (uint)r10.w >> 2;
      r18.w = (int)r17.w & 2;
      r19.x = max(r18.y, r18.x);
      r15.w = -r17.z * r15.w + 1;
      r15.w = r18.y * r15.w;
      r17.y = r18.w ? r15.w : r19.x;
      r18.xy = r18.zz ? r18.xy : r17.xy;
      r13.w = (int)r13.w + 1;
      r10.w = r17.w;
    }
    r18.y = saturate(r18.y);
    r8.w = refProbeConstantsCB[r7.w].data[6].y * r18.y;
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
      r17.x = refProbeConstantsCB[r7.w].data[7].w;
      r17.yz = refProbeConstantsCB[r7.w].data[8].xy;
      r10.w = dot(r16.xyz, r17.xyz);
      r13.w = dot(r14.yzw, r17.xyz);
      r13.w = -refProbeConstantsCB[r7.w].data[8].z + r13.w;
      r15.y = cmp(r13.w >= 0);
      r13.w = max(abs(r13.w), r4.z);
      r13.w = r15.y ? r13.w : -r13.w;
      r10.w = max(1.00000001e-07, -r10.w);
      r10.w = r13.w / r10.w;
      r10.w = min(131072, abs(r10.w));
      r17.x = refProbeConstantsCB[r7.w].data[8].w;
      r17.yz = refProbeConstantsCB[r7.w].data[9].xy;
      r13.w = dot(r16.xyz, r17.xyz);
      r15.y = dot(r14.yzw, r17.xyz);
      r15.y = -refProbeConstantsCB[r7.w].data[9].z + r15.y;
      r15.z = cmp(r15.y >= 0);
      r15.y = max(abs(r15.y), r4.z);
      r15.y = r15.z ? r15.y : -r15.y;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r15.y / r13.w;
      r10.w = min(abs(r13.w), r10.w);
      r17.x = refProbeConstantsCB[r7.w].data[9].w;
      r17.yz = refProbeConstantsCB[r7.w].data[10].xy;
      r13.w = dot(r16.xyz, r17.xyz);
      r15.y = dot(r14.yzw, r17.xyz);
      r15.y = -refProbeConstantsCB[r7.w].data[10].z + r15.y;
      r15.z = cmp(r15.y >= 0);
      r15.y = max(abs(r15.y), r4.z);
      r15.y = r15.z ? r15.y : -r15.y;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r15.y / r13.w;
      r10.w = min(abs(r13.w), r10.w);
      r17.x = refProbeConstantsCB[r7.w].data[10].w;
      r17.yz = refProbeConstantsCB[r7.w].data[11].xy;
      r13.w = dot(r16.xyz, r17.xyz);
      r15.y = dot(r14.yzw, r17.xyz);
      r15.y = -refProbeConstantsCB[r7.w].data[11].z + r15.y;
      r15.z = cmp(r15.y >= 0);
      r15.y = max(abs(r15.y), r4.z);
      r15.y = r15.z ? r15.y : -r15.y;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r15.y / r13.w;
      r10.w = min(abs(r13.w), r10.w);
      r17.x = refProbeConstantsCB[r7.w].data[11].w;
      r17.yz = refProbeConstantsCB[r7.w].data[12].xy;
      r13.w = dot(r16.xyz, r17.xyz);
      r15.y = dot(r14.yzw, r17.xyz);
      r15.y = -refProbeConstantsCB[r7.w].data[12].z + r15.y;
      r15.z = cmp(r15.y >= 0);
      r15.y = max(abs(r15.y), r4.z);
      r15.y = r15.z ? r15.y : -r15.y;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r15.y / r13.w;
      r10.w = min(abs(r13.w), r10.w);
      r17.x = refProbeConstantsCB[r7.w].data[12].w;
      r17.yz = refProbeConstantsCB[r7.w].data[13].xy;
      r13.w = dot(r16.xyz, r17.xyz);
      r15.y = dot(r14.yzw, r17.xyz);
      r15.y = -refProbeConstantsCB[r7.w].data[13].z + r15.y;
      r15.z = cmp(r15.y >= 0);
      r15.y = max(abs(r15.y), r4.z);
      r15.y = r15.z ? r15.y : -r15.y;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r15.y / r13.w;
      r10.w = min(abs(r13.w), r10.w);
      r17.x = refProbeConstantsCB[r7.w].data[3].w + r14.y;
      r17.yz = refProbeConstantsCB[r7.w].data[4].xy + r14.zw;
      r15.yzw = r16.xyz * r10.www + r17.xyz;
      r13.w = dot(r15.yzw, r15.yzw);
      r13.w = sqrt(r13.w);
      r10.w = r10.w / r13.w;
      r10.w = r10.w + r10.w;
      r10.w = sqrt(r10.w);
      r10.w = r2.w * 5 + r10.w;
      r10.w = -0.844799995 + r10.w;
      r17.x = refProbeConstantsCB[r7.w].data[0].w;
      r17.y = refProbeConstantsCB[r7.w].data[1].z;
      r17.z = refProbeConstantsCB[r7.w].data[2].y;
      r18.x = dot(r15.yzw, r17.xyz);
      r19.xy = refProbeConstantsCB[r7.w].data[1].xw;
      r19.z = refProbeConstantsCB[r7.w].data[2].z;
      r18.y = dot(r15.yzw, r19.xyz);
      r20.x = refProbeConstantsCB[r7.w].data[1].y;
      r20.yz = refProbeConstantsCB[r7.w].data[2].xw;
      r18.z = dot(r15.yzw, r20.xyz);
      if (9 == 0) r13.w = 0; else if (9+16 < 32) {       r13.w = (uint)refProbeConstantsCB[r7.w].data[7].z << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);      } else r13.w = (uint)refProbeConstantsCB[r7.w].data[7].z >> 16;
      r18.w = (uint)r13.w;
      r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r18.xyzw, r10.w).xyz;
      r21.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
      r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
      r10.w = (int)r21.y | (int)r21.x;
      r10.w = (int)r21.z | (int)r10.w;
      r15.yzw = r10.www ? float3(1,1,0) : r15.yzw;
      r21.x = dot(r14.yzw, r17.xyz);
      r21.y = dot(r14.yzw, r19.xyz);
      r21.z = dot(r14.yzw, r20.xyz);
      r14.yzw = saturate(r21.xyz * refProbeConstantsCB[r7.w].data[3].xyz + float3(0.5,0.5,0.5));
      r21.xy = refProbeConstantsCB[r7.w].data[4].zw * r14.yz;
      r21.z = refProbeConstantsCB[r7.w].data[5].x * r14.w;
      r14.yzw = refProbeConstantsCB[r7.w].data[5].yzw + r21.xyz;
      r18.x = dot(r12.xyz, r17.xyz);
      r18.y = dot(r12.xyz, r19.xyz);
      r18.z = dot(r12.xyz, r20.xyz);
      r17.xyz = cmp(float3(0,0,0) < r18.xyz);
      r19.z = r17.x ? 0 : 0.5;
      r19.xy = float2(0,0);
      r19.xyz = r19.xyz + r14.yzw;
      r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r20.xyz = r18.xyz * r18.xyz;
      r20.xyz = r20.xyz * r9.www;
      r21.z = r17.y ? 0 : 0.5;
      r21.xy = float2(0,0);
      r17.xyw = r21.xyz + r14.yzw;
      r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
      r17.xyw = r17.xyw * r20.yyy;
      r17.xyw = r19.xyz * r20.xxx + r17.xyw;
      r19.z = r17.z ? 0 : 0.5;
      r19.xy = float2(0,0);
      r14.yzw = r19.xyz + r14.yzw;
      r14.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.yzw, 0).xyz;
      r14.yzw = r14.yzw * r20.zzz + r17.xyw;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r18.xyzw, 6).xyz;
      r18.xyz = (int3)r17.xyz & int3(-2147483648,-2147483648,-2147483648);
      r18.xyz = cmp((int3)r18.xyz == int3(2139095040,2139095040,2139095040));
      r7.w = (int)r18.y | (int)r18.x;
      r7.w = (int)r18.z | (int)r7.w;
      r17.xyz = r7.www ? float3(1,1,0) : r17.xyz;
      r14.yzw = r17.xyz * r14.yzw;
      r7.w = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r10.w = r7.w * r4.w;
      r15.yzw = r15.yzw * r9.www;
      r9.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r7.w = r4.w * r7.w + r9.w;
      r7.w = r10.w / r7.w;
      r15.yzw = r15.yzw * r7.www;
      r7.w = 257;
    } else {
      r14.yzw = float3(0,0,0);
      r15.yzw = float3(0,0,0);
      r8.w = 0;
      r7.w = 1;
    }
  } else {
    r14.yzw = float3(0,0,0);
    r15.yzw = float3(0,0,0);
    r8.w = 0;
    r7.w = 0;
  }
  r6.w = cmp((uint)r0.y < (uint)r6.w);
  if (r6.w != 0) {
    r0.y = (int)r0.y * 14;
    if (r2.z != 0) {
      r6.w = (int)r7.w & 1;
      r6.w = mad((int)r6.w, 20, 880);
      r17.yzw = refProbeConstantsCB[r0.y].data[0].xyz + eyeOffset.xyz;
      r17.x = 16;
      GBufferDiffuseColor[viewID].r6.w = u2.xyzw;
    }
    r6.w = (int)r7.w + 1;
    r17.xyz = -refProbeConstantsCB[r0.y].data[0].xyz + r11.xyz;
    r9.w = 0x0000ffff & (int)refProbeConstantsCB[r0.y].data[7].z;
    if (6 == 0) r10.w = 0; else if (6+25 < 32) {     r10.w = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);    } else r10.w = (uint)refProbeConstantsCB[r0.y].data[7].z >> 25;
    r13.w = (int)r9.w * 6;
    r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[0].xyz, r17.xyz);
    r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[0].w + r17.w);
    r18.x = dot(refProbeAttenuationConstantsCB[r13.w].data[1].xyz, r17.xyz);
    r18.x = saturate(refProbeAttenuationConstantsCB[r13.w].data[1].w + r18.x);
    r17.w = r18.x * r17.w;
    r18.x = dot(refProbeAttenuationConstantsCB[r13.w].data[2].xyz, r17.xyz);
    r18.x = saturate(refProbeAttenuationConstantsCB[r13.w].data[2].w + r18.x);
    r17.w = r18.x * r17.w;
    r18.x = dot(refProbeAttenuationConstantsCB[r13.w].data[3].xyz, r17.xyz);
    r18.x = saturate(refProbeAttenuationConstantsCB[r13.w].data[3].w + r18.x);
    r17.w = r18.x * r17.w;
    r18.x = dot(refProbeAttenuationConstantsCB[r13.w].data[4].xyz, r17.xyz);
    r18.x = saturate(refProbeAttenuationConstantsCB[r13.w].data[4].w + r18.x);
    r17.w = r18.x * r17.w;
    r18.x = dot(refProbeAttenuationConstantsCB[r13.w].data[5].xyz, r17.xyz);
    r13.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[5].w + r18.x);
    r18.x = r17.w * r13.w;
    r13.w = 1 & (int)refProbeConstantsCB[r0.y].data[6].x;
    r18.yz = float2(0,1);
    r18.xy = r13.ww ? r18.xy : r18.zx;
    r19.x = 1;
    r13.w = refProbeConstantsCB[r0.y].data[6].x;
    r20.xy = r18.xy;
    r17.w = 1;
    while (true) {
      r18.z = cmp((int)r17.w >= (int)r10.w);
      if (r18.z != 0) break;
      r18.z = (int)r9.w + (int)r17.w;
      r18.z = (int)r18.z * 6;
      r18.w = dot(refProbeAttenuationConstantsCB[r18.z].data[0].xyz, r17.xyz);
      r18.w = saturate(refProbeAttenuationConstantsCB[r18.z].data[0].w + r18.w);
      r18.w = r20.x * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[1].xyz, r17.xyz);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[1].w + r19.z);
      r18.w = r19.z * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[2].xyz, r17.xyz);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[2].w + r19.z);
      r18.w = r19.z * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[3].xyz, r17.xyz);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[3].w + r19.z);
      r18.w = r19.z * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[4].xyz, r17.xyz);
      r19.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[4].w + r19.z);
      r18.w = r19.z * r18.w;
      r19.z = dot(refProbeAttenuationConstantsCB[r18.z].data[5].xyz, r17.xyz);
      r18.z = saturate(refProbeAttenuationConstantsCB[r18.z].data[5].w + r19.z);
      r20.x = r18.w * r18.z;
      r19.z = (uint)r13.w >> 2;
      if (1 == 0) r19.w = 0; else if (1+2 < 32) {       r19.w = (uint)r13.w << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);      } else r19.w = (uint)r13.w >> 2;
      r20.z = (int)r19.z & 2;
      r20.w = max(r20.y, r20.x);
      r18.z = -r18.w * r18.z + 1;
      r18.z = r20.y * r18.z;
      r19.y = r20.z ? r18.z : r20.w;
      r20.xy = r19.ww ? r20.xy : r19.xy;
      r17.w = (int)r17.w + 1;
      r13.w = r19.z;
    }
    r9.w = saturate(r20.y + -r8.w);
    r10.w = refProbeConstantsCB[r0.y].data[6].y * r9.w;
    r13.w = cmp(0 < r10.w);
    if (r13.w != 0) {
      r13.w = (int)r6.w & 3;
      r17.w = (int)r13.w + -1;
      r17.w = cmp((uint)r17.w < 32);
      r17.w = r2.z ? r17.w : 0;
      if (r17.w != 0) {
        r18.xy = mad((int2)r13.ww, int2(20,20), int2(860,876));
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.w, cb2[52].x, r18.x, u2.xxxx
      r13.w = samplerLinear[]..swiz;
        r13.w = (int)r13.w | 32;
        GBufferDiffuseColor[viewID].r18.x = u2.x;
        GBufferDiffuseColor[viewID].r18.y = u2.x;
      }
      r6.w = (int)r7.w + 257;
      r9.w = r9.w * refProbeConstantsCB[r0.y].data[6].y + r8.w;
      r10.w = refProbeConstantsCB[r0.y].data[7].y * r10.w;
      r18.x = refProbeConstantsCB[r0.y].data[7].w;
      r18.yz = refProbeConstantsCB[r0.y].data[8].xy;
      r13.w = dot(r16.xyz, r18.xyz);
      r17.w = dot(r17.xyz, r18.xyz);
      r17.w = -refProbeConstantsCB[r0.y].data[8].z + r17.w;
      r18.x = cmp(r17.w >= 0);
      r17.w = max(abs(r17.w), r4.z);
      r17.w = r18.x ? r17.w : -r17.w;
      r13.w = max(1.00000001e-07, -r13.w);
      r13.w = r17.w / r13.w;
      r13.w = min(131072, abs(r13.w));
      r18.x = refProbeConstantsCB[r0.y].data[8].w;
      r18.yz = refProbeConstantsCB[r0.y].data[9].xy;
      r17.w = dot(r16.xyz, r18.xyz);
      r18.x = dot(r17.xyz, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[9].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r4.z);
      r18.x = r18.y ? r18.x : -r18.x;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.x / r17.w;
      r13.w = min(abs(r17.w), r13.w);
      r18.x = refProbeConstantsCB[r0.y].data[9].w;
      r18.yz = refProbeConstantsCB[r0.y].data[10].xy;
      r17.w = dot(r16.xyz, r18.xyz);
      r18.x = dot(r17.xyz, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[10].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r4.z);
      r18.x = r18.y ? r18.x : -r18.x;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.x / r17.w;
      r13.w = min(abs(r17.w), r13.w);
      r18.x = refProbeConstantsCB[r0.y].data[10].w;
      r18.yz = refProbeConstantsCB[r0.y].data[11].xy;
      r17.w = dot(r16.xyz, r18.xyz);
      r18.x = dot(r17.xyz, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[11].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r4.z);
      r18.x = r18.y ? r18.x : -r18.x;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.x / r17.w;
      r13.w = min(abs(r17.w), r13.w);
      r18.x = refProbeConstantsCB[r0.y].data[11].w;
      r18.yz = refProbeConstantsCB[r0.y].data[12].xy;
      r17.w = dot(r16.xyz, r18.xyz);
      r18.x = dot(r17.xyz, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[12].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r18.x = max(abs(r18.x), r4.z);
      r18.x = r18.y ? r18.x : -r18.x;
      r17.w = max(1.00000001e-07, -r17.w);
      r17.w = r18.x / r17.w;
      r13.w = min(abs(r17.w), r13.w);
      r18.x = refProbeConstantsCB[r0.y].data[12].w;
      r18.yz = refProbeConstantsCB[r0.y].data[13].xy;
      r17.w = dot(r16.xyz, r18.xyz);
      r18.x = dot(r17.xyz, r18.xyz);
      r18.x = -refProbeConstantsCB[r0.y].data[13].z + r18.x;
      r18.y = cmp(r18.x >= 0);
      r4.z = max(abs(r18.x), r4.z);
      r4.z = r18.y ? r4.z : -r4.z;
      r17.w = max(1.00000001e-07, -r17.w);
      r4.z = r4.z / r17.w;
      r4.z = min(r13.w, abs(r4.z));
      r18.x = refProbeConstantsCB[r0.y].data[3].w + r17.x;
      r18.yz = refProbeConstantsCB[r0.y].data[4].xy + r17.yz;
      r18.xyz = r16.xyz * r4.zzz + r18.xyz;
      r13.w = dot(r18.xyz, r18.xyz);
      r13.w = sqrt(r13.w);
      r4.z = r4.z / r13.w;
      r4.z = r4.z + r4.z;
      r4.z = sqrt(r4.z);
      r2.w = r2.w * 5 + r4.z;
      r2.w = -0.844799995 + r2.w;
      r19.x = refProbeConstantsCB[r0.y].data[0].w;
      r19.y = refProbeConstantsCB[r0.y].data[1].z;
      r19.z = refProbeConstantsCB[r0.y].data[2].y;
      r20.x = dot(r18.xyz, r19.xyz);
      r21.xy = refProbeConstantsCB[r0.y].data[1].xw;
      r21.z = refProbeConstantsCB[r0.y].data[2].z;
      r20.y = dot(r18.xyz, r21.xyz);
      r22.x = refProbeConstantsCB[r0.y].data[1].y;
      r22.yz = refProbeConstantsCB[r0.y].data[2].xw;
      r20.z = dot(r18.xyz, r22.xyz);
      if (9 == 0) r4.z = 0; else if (9+16 < 32) {       r4.z = (uint)refProbeConstantsCB[r0.y].data[7].z << (32-(9 + 16)); r4.z = (uint)r4.z >> (32-9);      } else r4.z = (uint)refProbeConstantsCB[r0.y].data[7].z >> 16;
      r20.w = (uint)r4.z;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, r2.w).xyz;
      r23.xyz = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
      r23.xyz = cmp((int3)r23.xyz == int3(2139095040,2139095040,2139095040));
      r2.w = (int)r23.y | (int)r23.x;
      r2.w = (int)r23.z | (int)r2.w;
      r18.xyz = r2.www ? float3(1,1,0) : r18.xyz;
      r23.x = dot(r17.xyz, r19.xyz);
      r23.y = dot(r17.xyz, r21.xyz);
      r23.z = dot(r17.xyz, r22.xyz);
      r17.xyz = saturate(r23.xyz * refProbeConstantsCB[r0.y].data[3].xyz + float3(0.5,0.5,0.5));
      r23.xy = refProbeConstantsCB[r0.y].data[4].zw * r17.xy;
      r23.z = refProbeConstantsCB[r0.y].data[5].x * r17.z;
      r17.xyz = refProbeConstantsCB[r0.y].data[5].yzw + r23.xyz;
      r20.x = dot(r12.xyz, r19.xyz);
      r20.y = dot(r12.xyz, r21.xyz);
      r20.z = dot(r12.xyz, r22.xyz);
      r19.xyz = cmp(float3(0,0,0) < r20.xyz);
      r21.z = r19.x ? 0 : 0.5;
      r21.xy = float2(0,0);
      r21.xyz = r21.xyz + r17.xyz;
      r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
      r22.xyz = r20.xyz * r20.xyz;
      r22.xyz = r22.xyz * r10.www;
      r23.z = r19.y ? 0 : 0.5;
      r23.xy = float2(0,0);
      r19.xyw = r23.xyz + r17.xyz;
      r19.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyw, 0).xyz;
      r19.xyw = r19.xyw * r22.yyy;
      r19.xyw = r21.xyz * r22.xxx + r19.xyw;
      r21.z = r19.z ? 0 : 0.5;
      r21.xy = float2(0,0);
      r17.xyz = r21.xyz + r17.xyz;
      r17.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r17.xyz = r17.xyz * r22.zzz + r19.xyw;
      r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r20.xyzw, 6).xyz;
      r20.xyz = (int3)r19.xyz & int3(-2147483648,-2147483648,-2147483648);
      r20.xyz = cmp((int3)r20.xyz == int3(2139095040,2139095040,2139095040));
      r0.y = (int)r20.y | (int)r20.x;
      r0.y = (int)r20.z | (int)r0.y;
      r19.xyz = r0.yyy ? float3(1,1,0) : r19.xyz;
      r20.xyz = r19.xyz * r17.xyz;
      r0.y = dot(r20.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r14.yzw = r17.xyz * r19.xyz + r14.yzw;
      r2.w = r4.w * r0.y;
      r17.xyz = r18.xyz * r10.www;
      r4.z = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.y = r4.w * r0.y + r4.z;
      r0.y = r2.w / r0.y;
      r15.yzw = r17.xyz * r0.yyy + r15.yzw;
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
  r17.xyz = r14.yzw * r2.www;
  r15.yzw = r15.yzw * r2.www;
  r4.z = cmp(r9.w < 0.99000001);
  if (r4.z != 0) {
    r0.y = (int)r0.y + 256;
    r4.z = 1 + -r9.w;
    r4.w = sunConstants.globalProbeExposure * r4.z;
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
    r21.xyz = r21.xyz * r4.www;
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
    r4.w = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r17.xyz = r14.yzw * r2.www + r18.xyz;
    r16.w = 0;
    r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r3.z).xyz;
    r2.w = sunConstants.globalProbeExposure * r4.z + -r4.w;
    r2.w = r2.y * r2.w + r4.w;
    r15.yzw = r14.yzw * r2.www + r15.yzw;
  }
  r2.w = r2.x + r5.x;
  r2.w = log2(abs(r2.w));
  r2.w = r2.w * r1.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r5.x;
  r2.w = saturate(-1 + r2.w);
  r14.yzw = r17.xyz * r5.xxx;
  r4.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r4.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.zw, 0).xy;
  r15.yzw = r15.yzw * r2.www;
  r17.xyz = r15.yzw * r4.zzz;
  r15.yzw = r15.yzw * r4.www;
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
  r3.z = mad((int)r0.z, (int)r3.z, (int)r0.x);
  r3.z = (uint)r3.z << 5;
  r4.z = ~(int)r1.z;
  r18.x = -r4.x;
  r2.x = -r2.x * 0.5 + 1;
  r19.x = 2;
  r20.x = 2;
  r21.z = 1;
  r22.w = 1;
  r23.w = 1;
  r24.w = 1;
  r18.z = r4.x;
  r25.w = 1;
  r18.yw = r13.xx;
  r4.y = r18.w;
  r13.y = r18.x;
  r26.x = r13.x;
  r26.y = r18.x;
  r26.z = r4.x;
  r13.z = r4.x;
  r27.w = 1;
  r28.x = r13.x;
  r28.y = r18.x;
  r28.z = r4.x;
  r29.x = r13.x;
  r29.y = r18.x;
  r29.z = r4.x;
  r30.xyz = r14.yzw;
  r31.xyz = r17.xyz;
  r32.xyz = r15.yzw;
  r4.w = enableDitheredShadow;
  r5.x = 0;
  r6.w = 0;
  while (true) {
    r7.w = cmp((uint)r6.w >= numLights);
    if (r7.w != 0) break;
    r7.w = (uint)r6.w >> 5;
    r7.w = (int)r3.z + (int)r7.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(0), t26.xxxx
  r7.w = samplerLinear[]..swiz;
    r33.xyz = r30.xyz;
    r34.xyz = r31.xyz;
    r35.xyz = r32.xyz;
    r8.w = r4.w;
    r9.w = r5.x;
    r10.w = r7.w;
    while (true) {
      if (r10.w == 0) break;
      r12.w = firstbitlow((uint)r10.w);
      r13.w = 1 << (int)r12.w;
      r13.w = ~(int)r13.w;
      r10.w = (int)r10.w & (int)r13.w;
      r12.w = (int)r6.w + (int)r12.w;
      r12.w = (int)r12.w * 15;
      if (3 == 0) r13.w = 0; else if (3+24 < 32) {       r13.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(3 + 24)); r13.w = (uint)r13.w >> (32-3);      } else r13.w = (uint)lightConstantsCB[r12.w].data[1].w >> 24;
      r16.w = cmp((int)r13.w == 2);
      if (r16.w != 0) {
        if (3 == 0) r16.w = 0; else if (3+27 < 32) {         r16.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);        } else r16.w = (uint)lightConstantsCB[r12.w].data[1].w >> 27;
        r17.w = (int)r9.w & 255;
        r21.w = cmp((uint)r17.w < 32);
        r21.w = r2.z ? r21.w : 0;
        if (r21.w != 0) {
          r17.w = mad((int)r17.w, 24, 112);
          r19.yzw = lightConstantsCB[r12.w].data[0].xyz + eyeOffset.xyz;
          GBufferDiffuseColor[viewID].r17.w = u2.xyzw;
        }
        r17.w = (int)r9.w + 1;
        r36.xy = lightConstantsCB[r12.w].data[3].zw + -r11.xy;
        r36.z = lightConstantsCB[r12.w].data[4].x + -r11.z;
        r19.y = dot(r36.xyz, r36.xyz);
        r19.y = rsqrt(r19.y);
        r37.xyz = r36.xyz * r19.yyy;
        r19.z = lightConstantsCB[r12.w].data[1].z * r0.w;
        r19.z = 0.25 * r19.z;
        r19.w = dot(r12.xyz, r37.xyz);
        r21.w = saturate(r19.w);
        r26.w = cmp(0 < r21.w);
        if (r26.w != 0) {
          r37.xyz = lightConstantsCB[r12.w].data[7].yzw;
          r37.w = lightConstantsCB[r12.w].data[8].x;
          r26.w = dot(r37.xyzw, r11.xyzw);
          r28.w = cmp(r26.w < 1);
          if (r28.w != 0) {
            r38.xyz = float3(1,1,1);
            r28.w = 0;
          } else {
            r39.xyz = lightConstantsCB[r12.w].data[0].xyz + -r11.xyz;
            r29.w = lightConstantsCB[r12.w].data[3].x * lightConstantsCB[r12.w].data[3].x;
            r30.w = dot(r39.xyz, r39.xyz);
            r29.w = r29.w / r30.w;
            r29.w = min(1, r29.w);
            r39.xy = saturate(r26.ww * lightConstantsCB[r12.w].data[2].xz + lightConstantsCB[r12.w].data[2].yw);
            r39.zw = r39.xy * r39.xy;
            r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
            r39.xy = r39.zw * r39.xy;
            r29.w = r39.x * r29.w;
            r29.w = r29.w * r39.y;
            r39.xyz = lightConstantsCB[r12.w].data[4].yzw;
            r39.w = lightConstantsCB[r12.w].data[5].x;
            r39.x = dot(r39.xyzw, r11.xyzw);
            r40.xyz = lightConstantsCB[r12.w].data[5].yzw;
            r40.w = lightConstantsCB[r12.w].data[6].x;
            r39.y = dot(r40.xyzw, r11.xyzw);
            r21.xy = r39.xy / r26.ww;
            r26.w = cmp(lightConstantsCB[r12.w].data[10].w < 0.00048828125);
            if (r26.w != 0) {
              r39.xy = saturate(abs(r21.xy) * lightConstantsCB[r12.w].data[12].xy + lightConstantsCB[r12.w].data[12].zw);
              r39.zw = r39.xy * r39.xy;
              r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
              r39.xy = r39.zw * r39.xy;
              r26.w = r39.x * r39.y;
            } else {
              r39.xyzw = saturate(lightConstantsCB[r12.w].data[11].xyzw * abs(r21.yyxx));
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
              r26.w = r31.w * r30.w;
            }
            r28.w = r29.w * r26.w;
            r26.w = 255 & (int)lightConstantsCB[r12.w].data[14].w;
            if (r26.w != 0) {
              r29.w = dot(lightConstantsCB[r12.w].data[13].xyz, r21.xyz);
              r39.x = lightConstantsCB[r12.w].data[13].w;
              r39.yz = lightConstantsCB[r12.w].data[14].xy;
              r21.x = dot(r39.xyz, r21.xyz);
              r39.x = frac(r29.w);
              r39.y = frac(r21.x);
              r21.x = (int)r26.w + -1;
              r39.z = (uint)r21.x;
              r38.xyz = gCookieArray.SampleLevel(samplerLinear_s, r39.xyz, 0).xyz;
            } else {
              r38.xyz = float3(1,1,1);
            }
          }
          r39.x = lightConstantsCB[r12.w].data[0].w;
          r39.yz = lightConstantsCB[r12.w].data[1].xy;
          r38.xyz = r39.xyz * r38.xyz;
          r21.x = cmp(0 < r28.w);
          if (r21.x != 0) {
            r21.x = (int)r17.w & 255;
            r21.y = (int)r21.x + -1;
            r21.y = cmp((uint)r21.y < 32);
            r21.y = r2.z ? r21.y : 0;
            if (r21.y != 0) {
              r21.xy = mad((int2)r21.xx, int2(24,24), int2(88,104));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r26.w, cb2[52].x, r21.x, u2.xxxx
            r26.w = samplerLinear[]..swiz;
              r26.w = (int)r26.w | 4;
              GBufferDiffuseColor[viewID].r21.x = u2.x;
              GBufferDiffuseColor[viewID].r21.y = u2.x;
            }
            r21.x = (int)r9.w + 257;
            r16.w = cmp((int)r16.w != 1);
            if (r16.w != 0) {
              r16.w = abs(r19.w) * -0.200000003 + 0.400000006;
              r22.xyz = r12.xyz * r16.www + r11.xyz;
              r39.xyz = lightConstantsCB[r12.w].data[6].yzw;
              r39.w = lightConstantsCB[r12.w].data[7].x;
              r16.w = dot(r39.xyzw, r22.xyzw);
              r21.y = dot(r37.xyzw, r22.xyzw);
              r26.w = cmp(r21.y >= r16.w);
              if (r26.w != 0) {
                r37.xyz = lightConstantsCB[r12.w].data[4].yzw;
                r37.w = lightConstantsCB[r12.w].data[5].x;
                r37.x = dot(r37.xyzw, r22.xyzw);
                r39.xyz = lightConstantsCB[r12.w].data[5].yzw;
                r39.w = lightConstantsCB[r12.w].data[6].x;
                r37.y = dot(r39.xyzw, r22.xyzw);
                r22.xy = r37.xy / r21.yy;
                r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r37.x = r22.x * lightConstantsCB[r12.w].data[8].y + lightConstantsCB[r12.w].data[8].z;
                r37.y = r22.y * lightConstantsCB[r12.w].data[8].w + lightConstantsCB[r12.w].data[9].x;
                r16.w = r16.w / r21.y;
                r16.w = max(6.10351563e-05, r16.w);
                r21.y = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                if (r8.w != 0) {
                  r22.z = (uint)r21.y;
                  r26.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r39.x = dot(icb[r29.w+0].yx, r18.xy);
                    r39.y = dot(icb[r29.w+0].yx, r18.yz);
                    r22.xy = r39.xy * lightConstantsCB[r12.w].data[3].yy + r37.xy;
                    r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r16.w).x;
                    r26.w = r22.x * 0.125 + r26.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r37.z = (uint)r21.y;
                  r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r16.w).x;
                }
                r16.w = r26.w * r26.w;
                r16.w = r16.w * r26.w;
              } else {
                r16.w = 1;
              }
            } else {
              r16.w = 1;
            }
            r16.w = r28.w * r16.w;
            r21.y = cmp(0 < r16.w);
            if (r21.y != 0) {
              if (4 == 0) r21.y = 0; else if (4+16 < 32) {               r21.y = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 16)); r21.y = (uint)r21.y >> (32-4);              } else r21.y = (uint)lightConstantsCB[r12.w].data[1].w >> 16;
              r22.x = cmp(0 < (uint)r21.y);
              r22.x = r22.x ? r1.z : 0;
              if (r22.x != 0) {
                r21.y = (int)r21.y + numLights;
                r21.y = mad((int)r21.y, 15, -15);
                r22.x = abs(r19.w) * -0.200000003 + 0.400000006;
                r23.xyz = r12.xyz * r22.xxx + r11.xyz;
                r37.xyz = lightConstantsCB[r21.y].data[6].yzw;
                r37.w = lightConstantsCB[r21.y].data[7].x;
                r22.x = dot(r37.xyzw, r23.xyzw);
                r37.xyz = lightConstantsCB[r21.y].data[7].yzw;
                r37.w = lightConstantsCB[r21.y].data[8].x;
                r22.y = dot(r37.xyzw, r23.xyzw);
                r22.z = cmp(r22.y < r22.x);
                if (r22.z == 0) {
                  r37.xyz = lightConstantsCB[r21.y].data[4].yzw;
                  r37.w = lightConstantsCB[r21.y].data[5].x;
                  r37.x = dot(r37.xyzw, r23.xyzw);
                  r39.xyz = lightConstantsCB[r21.y].data[5].yzw;
                  r39.w = lightConstantsCB[r21.y].data[6].x;
                  r37.y = dot(r39.xyzw, r23.xyzw);
                  r23.xy = r37.xy / r22.yy;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r37.x = lightConstantsCB[r21.y].data[9].w + r23.x;
                  r37.y = lightConstantsCB[r21.y].data[10].x + r23.y;
                  r23.xy = lightConstantsCB[r21.y].data[9].yz * r37.xy;
                  r37.xy = lightConstantsCB[r21.y].data[3].yy / lightConstantsCB[r21.y].data[8].yw;
                  r37.zw = float2(1,1) + -r37.xy;
                  r37.zw = cmp(r23.xy >= r37.zw);
                  r37.xy = cmp(r37.xy >= r23.xy);
                  r37.xy = (int2)r37.xy | (int2)r37.zw;
                  r23.z = (int)r37.y | (int)r37.x;
                  if (r23.z == 0) {
                    r23.xy = saturate(r23.xy);
                    r37.x = r23.x * lightConstantsCB[r21.y].data[8].y + lightConstantsCB[r21.y].data[8].z;
                    r37.y = r23.y * lightConstantsCB[r21.y].data[8].w + lightConstantsCB[r21.y].data[9].x;
                    r23.x = lightConstantsCB[r21.y].data[10].z * r22.y;
                    r22.x = lightConstantsCB[r21.y].data[10].y * r22.y + r22.x;
                    r22.x = r22.x / r23.x;
                  }
                } else {
                  r23.z = -1;
                }
                r22.y = (int)r22.z | (int)r23.z;
                if (r22.y == 0) {
                  r22.x = max(6.10351563e-05, r22.x);
                  r22.y = 0x0000ffff & (int)lightConstantsCB[r21.y].data[1].w;
                  if (r8.w != 0) {
                    r23.z = (uint)r22.y;
                    r22.z = 0;
                    r28.w = 0;
                    while (true) {
                      r29.w = cmp((int)r28.w >= 8);
                      if (r29.w != 0) break;
                      r39.x = dot(icb[r28.w+0].yx, r18.xw);
                      r39.y = dot(icb[r28.w+0].xy, r4.xy);
                      r23.xy = r39.xy * lightConstantsCB[r21.y].data[3].yy + r37.xy;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r22.x).x;
                      r22.z = r23.x * 0.125 + r22.z;
                      r28.w = (int)r28.w + 1;
                    }
                  } else {
                    r37.z = (uint)r22.y;
                    r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r22.x).x;
                  }
                  r21.y = r22.z * r22.z;
                  r21.y = r21.y * r22.z;
                } else {
                  r21.y = 1;
                }
                r16.w = r21.y * r16.w;
              } else {
                if (4 == 0) r21.y = 0; else if (4+20 < 32) {                 r21.y = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 20)); r21.y = (uint)r21.y >> (32-4);                } else r21.y = (uint)lightConstantsCB[r12.w].data[1].w >> 20;
                r22.x = cmp(0 < (uint)r21.y);
                r22.x = r22.x ? r4.z : 0;
                if (r22.x != 0) {
                  r21.y = (int)r21.y + numLights;
                  r21.y = mad((int)r21.y, 15, -15);
                  r22.x = abs(r19.w) * -0.200000003 + 0.400000006;
                  r24.xyz = r12.xyz * r22.xxx + r11.xyz;
                  r37.xyz = lightConstantsCB[r21.y].data[6].yzw;
                  r37.w = lightConstantsCB[r21.y].data[7].x;
                  r22.x = dot(r37.xyzw, r24.xyzw);
                  r37.xyz = lightConstantsCB[r21.y].data[7].yzw;
                  r37.w = lightConstantsCB[r21.y].data[8].x;
                  r22.y = dot(r37.xyzw, r24.xyzw);
                  r23.x = cmp(r22.y < r22.x);
                  if (r23.x == 0) {
                    r37.xyz = lightConstantsCB[r21.y].data[4].yzw;
                    r37.w = lightConstantsCB[r21.y].data[5].x;
                    r37.x = dot(r37.xyzw, r24.xyzw);
                    r39.xyz = lightConstantsCB[r21.y].data[5].yzw;
                    r39.w = lightConstantsCB[r21.y].data[6].x;
                    r37.y = dot(r39.xyzw, r24.xyzw);
                    r23.yz = r37.xy / r22.yy;
                    r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r24.x = lightConstantsCB[r21.y].data[9].w + r23.y;
                    r24.y = lightConstantsCB[r21.y].data[10].x + r23.z;
                    r23.yz = lightConstantsCB[r21.y].data[9].yz * r24.xy;
                    r24.xy = lightConstantsCB[r21.y].data[3].yy / lightConstantsCB[r21.y].data[8].yw;
                    r37.xy = float2(1,1) + -r24.xy;
                    r37.xy = cmp(r23.yz >= r37.xy);
                    r24.xy = cmp(r24.xy >= r23.yz);
                    r24.xy = (int2)r24.xy | (int2)r37.xy;
                    r24.x = (int)r24.y | (int)r24.x;
                    if (r24.x == 0) {
                      r23.yz = saturate(r23.yz);
                      r37.x = r23.y * lightConstantsCB[r21.y].data[8].y + lightConstantsCB[r21.y].data[8].z;
                      r37.y = r23.z * lightConstantsCB[r21.y].data[8].w + lightConstantsCB[r21.y].data[9].x;
                      r23.y = lightConstantsCB[r21.y].data[10].z * r22.y;
                      r22.x = lightConstantsCB[r21.y].data[10].y * r22.y + r22.x;
                      r22.x = r22.x / r23.y;
                    }
                  } else {
                    r24.x = -1;
                  }
                  r22.y = (int)r23.x | (int)r24.x;
                  if (r22.y == 0) {
                    r22.x = max(6.10351563e-05, r22.x);
                    r22.y = 0x0000ffff & (int)lightConstantsCB[r21.y].data[1].w;
                    if (r8.w != 0) {
                      r23.z = (uint)r22.y;
                      r24.xy = float2(0,0);
                      while (true) {
                        r24.z = cmp((int)r24.y >= 8);
                        if (r24.z != 0) break;
                        r39.x = dot(icb[r24.y+0].xy, r26.xy);
                        r39.y = dot(icb[r24.y+0].yx, r26.xz);
                        r23.xy = r39.xy * lightConstantsCB[r21.y].data[3].yy + r37.xy;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r22.x).x;
                        r24.x = r23.x * 0.125 + r24.x;
                        r24.y = (int)r24.y + 1;
                      }
                    } else {
                      r37.z = (uint)r22.y;
                      r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r22.x).x;
                    }
                    r21.y = r24.x * r24.x;
                    r21.y = r21.y * r24.x;
                  } else {
                    r21.y = 1;
                  }
                  r16.w = r21.y * r16.w;
                }
              }
              r21.y = -r21.w * r2.x + 1;
              r21.y = r21.y * r21.y;
              r21.y = -r21.y * 0.620000005 + 0.620000005;
              r21.y = r21.y + -r21.w;
              r21.y = r1.w * r21.y + r21.w;
              r21.y = r21.y * r16.w;
              r19.w = cmp(0 < r19.w);
              r23.xyz = r21.yyy * r38.xyz + r33.xyz;
              r36.xyz = r36.xyz * r19.yyy + r5.yzw;
              r19.y = dot(r36.xyz, r36.xyz);
              r19.y = rsqrt(r19.y);
              r36.xyz = r36.xyz * r19.yyy;
              r19.y = dot(r36.xyz, r5.yzw);
              r21.y = dot(r12.xyz, r36.xyz);
              r22.x = abs(r21.y) * r0.w + -abs(r21.y);
              r21.y = abs(r21.y) * r22.x + 1;
              r22.x = r21.w * r2.y + r2.w;
              r21.y = r21.y * r21.y;
              r21.y = r21.y * r22.x;
              r21.y = rcp(r21.y);
              r19.z = r21.w * r19.z;
              r19.z = r21.y * r19.z;
              r19.z = r19.z * r16.w;
              r36.xyz = r19.zzz * r38.xyz + r35.xyz;
              r19.y = saturate(1 + -r19.y);
              r21.y = r19.y * r19.y;
              r21.y = r21.y * r21.y;
              r19.y = r21.y * r19.y;
              r19.y = r19.z * r19.y;
              r37.xyz = r19.yyy * r38.xyz + r34.xyz;
              r33.xyz = r19.www ? r23.xyz : r33.xyz;
              r34.xyz = r19.www ? r37.xyz : r34.xyz;
              r35.xyz = r19.www ? r36.xyz : r35.xyz;
              r19.y = (int)r21.x & 255;
              r19.z = (int)r19.y + -1;
              r19.z = cmp((uint)r19.z < 32);
              r19.z = r2.z ? r19.z : 0;
              if (r19.z != 0) {
                r19.yz = mad((int2)r19.yy, int2(24,24), int2(88,108));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r19.w, cb2[52].x, r19.y, u2.xxxx
              r19.w = samplerLinear[]..swiz;
                r19.w = (int)r19.w | 8;
                GBufferDiffuseColor[viewID].r19.y = u2.x;
                GBufferDiffuseColor[viewID].r19.z = u2.x;
              }
              r9.w = (int)r9.w + 0x00010101;
            } else {
              r9.w = r21.x;
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
            r20.yzw = lightConstantsCB[r12.w].data[0].xyz + eyeOffset.xyz;
            GBufferDiffuseColor[viewID].r16.w = u2.xyzw;
          }
          r16.w = (int)r9.w + 1;
          r17.w = lightConstantsCB[r12.w].data[1].z * r0.w;
          r17.w = 0.25 * r17.w;
          r19.y = cmp(0 < lightConstantsCB[r12.w].data[6].y);
          r23.xy = lightConstantsCB[r12.w].data[5].zw;
          r23.z = lightConstantsCB[r12.w].data[6].x;
          r20.yzw = -r23.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r12.w].data[0].xyz;
          r21.xyw = r20.yzw + -r11.xyz;
          r19.z = dot(r23.xyz, r16.xyz);
          r19.w = dot(r23.xyz, r21.xyw);
          r21.x = dot(r16.xyz, r21.xyw);
          r21.y = -r19.z * r19.z + lightConstantsCB[r12.w].data[6].y;
          r19.z = r19.z * r21.x + -r19.w;
          r19.w = saturate(-r19.w / lightConstantsCB[r12.w].data[6].y);
          r19.z = saturate(r19.z / r21.y);
          r21.x = r21.y / lightConstantsCB[r12.w].data[6].y;
          r21.x = 10 * r21.x;
          r21.x = min(1, r21.x);
          r19.z = r19.z + -r19.w;
          r19.z = r21.x * r19.z + r19.w;
          r21.xyw = r19.zzz * r23.xyz + r20.yzw;
          r20.yzw = r19.www * r23.xyz + r20.yzw;
          r20.yzw = r19.yyy ? r20.yzw : lightConstantsCB[r12.w].data[0].xyz;
          r19.yzw = r19.yyy ? r21.xyw : lightConstantsCB[r12.w].data[0].xyz;
          r19.yzw = r19.yzw + -r11.xyz;
          r20.yzw = r20.yzw + -r11.xyz;
          r21.x = dot(r19.yzw, r19.yzw);
          r21.x = rsqrt(r21.x);
          r23.xyz = r21.xxx * r19.yzw;
          r21.y = dot(r20.yzw, r20.yzw);
          r21.w = rsqrt(r21.y);
          r20.yzw = r21.www * r20.yzw;
          r20.y = dot(r12.xyz, r20.yzw);
          r20.z = saturate(r20.y);
          r20.w = cmp(0 < r20.z);
          if (r20.w != 0) {
            r20.w = sqrt(r21.y);
            r21.w = lightConstantsCB[r12.w].data[3].x * lightConstantsCB[r12.w].data[3].x;
            r21.y = r21.w / r21.y;
            r21.y = min(1, r21.y);
            r22.xy = saturate(r20.ww * lightConstantsCB[r12.w].data[2].xz + lightConstantsCB[r12.w].data[2].yw);
            r24.yz = r22.xy * r22.xy;
            r22.xy = r22.xy * float2(-2,-2) + float2(3,3);
            r22.xy = r24.yz * r22.xy;
            r20.w = r22.x * r21.y;
            r20.w = r20.w * r22.y;
            r21.y = cmp(0 < r20.w);
            if (r21.y != 0) {
              r21.y = (int)r16.w & 255;
              r21.w = (int)r21.y + -1;
              r21.w = cmp((uint)r21.w < 32);
              r21.w = r2.z ? r21.w : 0;
              if (r21.w != 0) {
                r21.yw = mad((int2)r21.yy, int2(24,24), int2(88,104));
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r22.x, cb2[52].x, r21.y, u2.xxxx
              r22.x = samplerLinear[]..swiz;
                r22.x = (int)r22.x | 4;
                GBufferDiffuseColor[viewID].r21.y = u2.x;
                GBufferDiffuseColor[viewID].r21.w = u2.x;
              }
              r21.y = (int)r9.w + 257;
              r13.w = cmp((int)r13.w != 1);
              if (r13.w != 0) {
                r13.w = abs(r20.y) * -0.200000003 + 0.400000006;
                r36.xyz = r12.xyz * r13.www + r11.xyz;
                r36.xyz = -lightConstantsCB[r12.w].data[4].yzw + r36.xyz;
                r13.w = max(abs(r36.y), abs(r36.z));
                r13.w = max(abs(r36.x), r13.w);
                r13.w = lightConstantsCB[r12.w].data[5].x / r13.w;
                r13.w = lightConstantsCB[r12.w].data[5].y + r13.w;
                r21.w = dot(r36.xyz, r36.xyz);
                r21.w = rsqrt(r21.w);
                r13.w = max(6.10351563e-05, r13.w);
                r22.x = 0x0000ffff & (int)lightConstantsCB[r12.w].data[1].w;
                r37.w = (uint)r22.x;
                r22.xy = float2(0,0);
                while (true) {
                  r24.y = cmp((int)r22.y >= 8);
                  if (r24.y != 0) break;
                  r24.y = dot(icb[r22.y+0].xy, r13.xy);
                  r24.z = dot(icb[r22.y+0].yx, r13.xz);
                  r38.yz = lightConstantsCB[r12.w].data[3].yy * r24.yz;
                  r38.x = r38.y * r15.x;
                  r38.w = r38.y * r14.x;
                  r37.xyz = r36.xyz * r21.www + r38.xzw;
                  r24.y = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r13.w).x;
                  r22.x = r24.y * 0.125 + r22.x;
                  r22.y = (int)r22.y + 1;
                }
              } else {
                r22.x = 1;
              }
              r13.w = r22.x * r20.w;
              r20.w = cmp(0 < r13.w);
              if (r20.w != 0) {
                if (4 == 0) r20.w = 0; else if (4+16 < 32) {                 r20.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 16)); r20.w = (uint)r20.w >> (32-4);                } else r20.w = (uint)lightConstantsCB[r12.w].data[1].w >> 16;
                r21.w = cmp(0 < (uint)r20.w);
                r21.w = r21.w ? r1.z : 0;
                if (r21.w != 0) {
                  r20.w = (int)r20.w + numLights;
                  r20.w = mad((int)r20.w, 15, -15);
                  r21.w = abs(r20.y) * -0.200000003 + 0.400000006;
                  r25.xyz = r12.xyz * r21.www + r11.xyz;
                  r36.xyz = lightConstantsCB[r20.w].data[6].yzw;
                  r36.w = lightConstantsCB[r20.w].data[7].x;
                  r21.w = dot(r36.xyzw, r25.xyzw);
                  r36.xyz = lightConstantsCB[r20.w].data[7].yzw;
                  r36.w = lightConstantsCB[r20.w].data[8].x;
                  r22.y = dot(r36.xyzw, r25.xyzw);
                  r24.y = cmp(r22.y < r21.w);
                  if (r24.y == 0) {
                    r36.xyz = lightConstantsCB[r20.w].data[4].yzw;
                    r36.w = lightConstantsCB[r20.w].data[5].x;
                    r36.x = dot(r36.xyzw, r25.xyzw);
                    r37.xyz = lightConstantsCB[r20.w].data[5].yzw;
                    r37.w = lightConstantsCB[r20.w].data[6].x;
                    r36.y = dot(r37.xyzw, r25.xyzw);
                    r25.xy = r36.xy / r22.yy;
                    r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r36.x = lightConstantsCB[r20.w].data[9].w + r25.x;
                    r36.y = lightConstantsCB[r20.w].data[10].x + r25.y;
                    r25.xy = lightConstantsCB[r20.w].data[9].yz * r36.xy;
                    r36.xy = lightConstantsCB[r20.w].data[3].yy / lightConstantsCB[r20.w].data[8].yw;
                    r36.zw = float2(1,1) + -r36.xy;
                    r36.zw = cmp(r25.xy >= r36.zw);
                    r36.xy = cmp(r36.xy >= r25.xy);
                    r36.xy = (int2)r36.xy | (int2)r36.zw;
                    r24.z = (int)r36.y | (int)r36.x;
                    if (r24.z == 0) {
                      r25.xy = saturate(r25.xy);
                      r36.x = r25.x * lightConstantsCB[r20.w].data[8].y + lightConstantsCB[r20.w].data[8].z;
                      r36.y = r25.y * lightConstantsCB[r20.w].data[8].w + lightConstantsCB[r20.w].data[9].x;
                      r25.x = lightConstantsCB[r20.w].data[10].z * r22.y;
                      r21.w = lightConstantsCB[r20.w].data[10].y * r22.y + r21.w;
                      r21.w = r21.w / r25.x;
                    }
                  } else {
                    r24.z = -1;
                  }
                  r22.y = (int)r24.y | (int)r24.z;
                  if (r22.y == 0) {
                    r21.w = max(6.10351563e-05, r21.w);
                    r22.y = 0x0000ffff & (int)lightConstantsCB[r20.w].data[1].w;
                    if (r8.w != 0) {
                      r25.z = (uint)r22.y;
                      r24.yz = float2(0,0);
                      while (true) {
                        r28.w = cmp((int)r24.z >= 8);
                        if (r28.w != 0) break;
                        r37.x = dot(icb[r24.z+0].xy, r28.xy);
                        r37.y = dot(icb[r24.z+0].yx, r28.xz);
                        r25.xy = r37.xy * lightConstantsCB[r20.w].data[3].yy + r36.xy;
                        r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.w).x;
                        r24.y = r25.x * 0.125 + r24.y;
                        r24.z = (int)r24.z + 1;
                      }
                    } else {
                      r36.z = (uint)r22.y;
                      r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r21.w).x;
                    }
                    r20.w = r24.y * r24.y;
                    r20.w = r20.w * r24.y;
                  } else {
                    r20.w = 1;
                  }
                  r13.w = r20.w * r13.w;
                } else {
                  if (4 == 0) r20.w = 0; else if (4+20 < 32) {                   r20.w = (uint)lightConstantsCB[r12.w].data[1].w << (32-(4 + 20)); r20.w = (uint)r20.w >> (32-4);                  } else r20.w = (uint)lightConstantsCB[r12.w].data[1].w >> 20;
                  r21.w = cmp(0 < (uint)r20.w);
                  r21.w = r21.w ? r4.z : 0;
                  if (r21.w != 0) {
                    r20.w = (int)r20.w + numLights;
                    r20.w = mad((int)r20.w, 15, -15);
                    r21.w = abs(r20.y) * -0.200000003 + 0.400000006;
                    r27.xyz = r12.xyz * r21.www + r11.xyz;
                    r36.xyz = lightConstantsCB[r20.w].data[6].yzw;
                    r36.w = lightConstantsCB[r20.w].data[7].x;
                    r21.w = dot(r36.xyzw, r27.xyzw);
                    r36.xyz = lightConstantsCB[r20.w].data[7].yzw;
                    r36.w = lightConstantsCB[r20.w].data[8].x;
                    r22.y = dot(r36.xyzw, r27.xyzw);
                    r24.z = cmp(r22.y < r21.w);
                    if (r24.z == 0) {
                      r36.xyz = lightConstantsCB[r20.w].data[4].yzw;
                      r36.w = lightConstantsCB[r20.w].data[5].x;
                      r25.x = dot(r36.xyzw, r27.xyzw);
                      r36.xyz = lightConstantsCB[r20.w].data[5].yzw;
                      r36.w = lightConstantsCB[r20.w].data[6].x;
                      r25.y = dot(r36.xyzw, r27.xyzw);
                      r25.xy = r25.xy / r22.yy;
                      r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r27.x = lightConstantsCB[r20.w].data[9].w + r25.x;
                      r27.y = lightConstantsCB[r20.w].data[10].x + r25.y;
                      r25.xy = lightConstantsCB[r20.w].data[9].yz * r27.xy;
                      r27.xy = lightConstantsCB[r20.w].data[3].yy / lightConstantsCB[r20.w].data[8].yw;
                      r36.xy = float2(1,1) + -r27.xy;
                      r36.xy = cmp(r25.xy >= r36.xy);
                      r27.xy = cmp(r27.xy >= r25.xy);
                      r27.xy = (int2)r27.xy | (int2)r36.xy;
                      r25.z = (int)r27.y | (int)r27.x;
                      if (r25.z == 0) {
                        r25.xy = saturate(r25.xy);
                        r27.x = r25.x * lightConstantsCB[r20.w].data[8].y + lightConstantsCB[r20.w].data[8].z;
                        r27.y = r25.y * lightConstantsCB[r20.w].data[8].w + lightConstantsCB[r20.w].data[9].x;
                        r25.x = lightConstantsCB[r20.w].data[10].z * r22.y;
                        r21.w = lightConstantsCB[r20.w].data[10].y * r22.y + r21.w;
                        r21.w = r21.w / r25.x;
                      }
                    } else {
                      r25.z = -1;
                    }
                    r22.y = (int)r24.z | (int)r25.z;
                    if (r22.y == 0) {
                      r21.w = max(6.10351563e-05, r21.w);
                      r22.y = 0x0000ffff & (int)lightConstantsCB[r20.w].data[1].w;
                      if (r8.w != 0) {
                        r25.z = (uint)r22.y;
                        r24.z = 0;
                        r28.w = 0;
                        while (true) {
                          r29.w = cmp((int)r28.w >= 8);
                          if (r29.w != 0) break;
                          r36.x = dot(icb[r28.w+0].xy, r29.xy);
                          r36.y = dot(icb[r28.w+0].yx, r29.xz);
                          r25.xy = r36.xy * lightConstantsCB[r20.w].data[3].yy + r27.xy;
                          r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r21.w).x;
                          r24.z = r25.x * 0.125 + r24.z;
                          r28.w = (int)r28.w + 1;
                        }
                      } else {
                        r27.z = (uint)r22.y;
                        r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r21.w).x;
                      }
                      r20.w = r24.z * r24.z;
                      r20.w = r20.w * r24.z;
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
                r25.x = lightConstantsCB[r12.w].data[0].w;
                r25.yz = lightConstantsCB[r12.w].data[1].xy;
                r12.w = cmp(0 < r20.y);
                r20.yzw = r20.zzz * r25.xyz + r33.xyz;
                r21.w = saturate(dot(r12.xyz, r23.xyz));
                r19.yzw = r19.yzw * r21.xxx + r5.yzw;
                r21.x = dot(r19.yzw, r19.yzw);
                r21.x = rsqrt(r21.x);
                r19.yzw = r21.xxx * r19.yzw;
                r21.x = dot(r19.yzw, r5.yzw);
                r19.y = dot(r12.xyz, r19.yzw);
                r19.z = abs(r19.y) * r0.w + -abs(r19.y);
                r19.y = abs(r19.y) * r19.z + 1;
                r19.z = r21.w * r2.y + r2.w;
                r19.y = r19.y * r19.y;
                r19.y = r19.y * r19.z;
                r19.y = rcp(r19.y);
                r17.w = r21.w * r17.w;
                r17.w = r19.y * r17.w;
                r17.w = r17.w * r13.w;
                r19.yzw = r17.www * r25.xyz + r35.xyz;
                r21.x = saturate(1 + -r21.x);
                r21.w = r21.x * r21.x;
                r21.w = r21.w * r21.w;
                r21.x = r21.x * r21.w;
                r17.w = r21.x * r17.w;
                r23.xyz = r17.www * r25.xyz + r34.xyz;
                r33.xyz = r12.www ? r20.yzw : r33.xyz;
                r34.xyz = r12.www ? r23.xyz : r34.xyz;
                r35.xyz = r12.www ? r19.yzw : r35.xyz;
                r12.w = (int)r21.y & 255;
                r17.w = (int)r12.w + -1;
                r17.w = cmp((uint)r17.w < 32);
                r17.w = r2.z ? r17.w : 0;
                if (r17.w != 0) {
                  r19.yz = mad((int2)r12.ww, int2(24,24), int2(88,108));
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r12.w, cb2[52].x, r19.y, u2.xxxx
                r12.w = samplerLinear[]..swiz;
                  r12.w = (int)r12.w | 8;
                  GBufferDiffuseColor[viewID].r19.y = u2.x;
                  GBufferDiffuseColor[viewID].r19.z = u2.x;
                }
                r9.w = (int)r9.w + 0x00010101;
              } else {
                r9.w = r21.y;
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
    r30.xyz = r33.xyz;
    r31.xyz = r34.xyz;
    r32.xyz = r35.xyz;
    r5.x = r9.w;
    r6.w = (int)r6.w + 32;
  }
  r3.xyz = r3.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.w = (uint)r3.y;
  r2.xyw = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.w == (int)r1.z);
  r1.zw = r1.zz ? r2.yw : float2(-1,0);
  r2.xyw = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.w == (int)r2.x);
  r2.xy = r2.xx ? r2.yw : float2(-1,0);
  r4.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r4.x;
  r2.w = cmp((int)r0.w == (int)r2.w);
  r4.xy = r2.ww ? r4.yz : float2(-1,0);
  r5.yzw = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.w = (uint)r5.y;
  r0.w = cmp((int)r0.w == (int)r2.w);
  r4.zw = r0.ww ? r5.zw : float2(-1,0);
  r7.x = r1.z;
  r7.y = r2.x;
  r7.zw = r4.xz;
  r7.xyzw = r7.xyzw + -r3.xxxx;
  r7.xyzw = cmp(abs(r7.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r7.xyzw = r7.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.w = r7.x + r7.y;
  r0.w = r0.w + r7.z;
  r0.w = r0.w + r7.w;
  r1.z = r7.y * r2.y;
  r1.z = r7.x * r1.w + r1.z;
  r1.z = r7.z * r4.y + r1.z;
  r1.z = r7.w * r4.w + r1.z;
  r3.w = r1.z / r0.w;
  r0.w = cmp(0 >= r0.w);
  r3.yz = r0.ww ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.w = cmp((int)r1.w == (int)r1.z);
  r2.xyw = r0.www ? r3.xyz : r3.xzy;
  r0.w = -r2.w * 0.5 + r2.x;
  r3.y = r2.w + r0.w;
  r3.z = -r2.y * 0.5 + r0.w;
  r3.x = r3.z + r2.y;
  r2.xyw = float3(1,1,1) + -r3.xyz;
  r2.xyw = r31.xyz * r2.xyw;
  r2.xyw = r32.xyz * r3.xyz + r2.xyw;
  r2.xyw = r30.xyz * r6.xyz + r2.xyw;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r11.xyz, r11.xyz);
    r1.z = rsqrt(r0.w);
    r3.xyz = r11.xyz * r1.zzz;
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r5.yzw = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r5.yzw = exp2(r5.yzw);
      r5.yzw = r5.yzw + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.yzw + r4.xyz;
    } else {
      r1.z = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r11.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r11.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.z;
      r1.z = r1.w ? r3.w : r1.z;
      r5.yzw = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r5.yzw);
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
    r5.yzw = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.yzw * r3.xyz;
    r3.xyz = r2.xyw * r4.xyz + r3.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * r11.z;
    r1.z = fogConstants.heightFalloff * r11.z + fogConstants.K0;
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
    r1.z = dot(r11.xyz, r11.xyz);
    r1.w = sqrt(r1.z);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.z = rsqrt(r1.z);
    r4.xyz = r11.xyz * r1.zzz;
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
        case 1 :        r0.w = (int)r5.x & 255;
        break;
        case 2 :        if (8 == 0) r0.w = 0; else if (8+8 < 32) {         r0.w = (uint)r5.x << (32-(8 + 8)); r0.w = (uint)r0.w >> (32-8);        } else r0.w = (uint)r5.x >> 8;
        break;
        case 3 :        if (8 == 0) r0.w = 0; else if (8+16 < 32) {         r0.w = (uint)r5.x << (32-(8 + 16)); r0.w = (uint)r0.w >> (32-8);        } else r0.w = (uint)r5.x >> 16;
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
    r1.xyz = eyeOffset.xyz + r11.xyz;
    r1.w = (int)r5.x & 255;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.w = (int)r0.y & 3;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.w = (int)r5.x & 255;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.w
    InterlockedAdd(dest, value, orig_value);
    if (8 == 0) r1.x = 0; else if (8+8 < 32) {     r1.x = (uint)r5.x << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);    } else r1.x = (uint)r5.x >> 8;
    if (8 == 0) r1.y = 0; else if (8+16 < 32) {     r1.y = (uint)r5.x << (32-(8 + 16)); r1.y = (uint)r1.y >> (32-8);    } else r1.y = (uint)r5.x >> 16;
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