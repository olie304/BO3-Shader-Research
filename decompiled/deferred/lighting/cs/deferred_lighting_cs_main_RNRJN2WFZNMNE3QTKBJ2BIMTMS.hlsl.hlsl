// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:54 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38;
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
  r0.x = mad(permuteStride, 63, (int)vThreadGroupID.x);
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
  r4.xyzw = GBufferSpecularColorAndOcclusion.Load(r1.xyw).xyzw;
  r3.yz = (uint2)r1.xy;
  r5.xy = float2(0.5,0.5) + r3.yz;
  r5.zw = renderTargetSize.zw * r5.xy;
  r3.w = gSSAOTexture.SampleLevel(samplerLinearClamp_s, r5.zw, 0).x;
  r3.w = r4.z * r3.w;
  if (showAO != 0) {
    r4.z = 0.75 * r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyyy, r4.zzzz
    return;
  } else {
    r4.z = enableAO ? r3.w : 1;
  }
  r3.w = cmp(r2.z >= 0.5);
  r5.z = GBufferDepth.Load(r1.xyw).x;
  r6.xyz = GBufferDiffuseColor.Load(r1.xyw).xyz;
  r7.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r8.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r9.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyw, int3(0, 0, 0)).xyw;
  r10.xyz = GBufferSpecularColorAndOcclusion.Load(r1.xyz, int3(0, 0, 0)).xyw;
  r11.x = cmp(r5.z >= 0.984375);
  r1.z = 1.01587307 * r5.z;
  r1.w = r5.z * 64 + -63;
  r1.z = r11.x ? r1.w : r1.z;
  r1.z = max(9.99999994e-09, r1.z);
  r11.y = rcp(r1.z);
  r1.zw = r3.xx ? r11.xy : 0;
  r5.xy = -subpixelOffset.xy + r5.xy;
  r5.xy = renderTargetSize.zw * r5.xy;
  r5.xy = r5.xy * float2(2,-2) + float2(-1,1);
  r11.x = inverseProjectionMatrix._m00 * r5.x;
  r11.y = inverseProjectionMatrix._m11 * r5.y;
  r11.z = 1;
  r5.xyz = r11.xyz * r1.www;
  r11.xyz = inverseViewMatrix._m10_m11_m12 * r5.yyy;
  r5.xyw = r5.xxx * inverseViewMatrix._m00_m01_m02 + r11.xyz;
  r5.xyz = r5.zzz * inverseViewMatrix._m20_m21_m22 + r5.xyw;
  r1.w = r2.w * 3 + 0.5;
  r1.w = (uint)r1.w;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.850000024,0.850000024) * r2.xy;
  r2.w = dot(r2.xy, r2.xy);
  r11.zw = float2(2,1) + -r2.ww;
  r2.w = sqrt(r11.z);
  r11.xy = r2.xy * r2.ww;
  r12.xyzw = (int4)r1.wwww & int4(2,1,2,1);
  r12.xyzw = r12.zwxy ? float4(-1,-1,1.40129846e-45,1.40129846e-45) : float4(1,1,0,0);
  r1.w = (int)r12.w ^ (int)r12.z;
  r12.z = r1.w ? -1 : 1;
  r2.xyw = float3(-1,0,1) * r12.xyz;
  r13.xyz = float3(1,-2,1) * r12.xyz;
  r11.xyz = float3(0.408248305,0.707106769,0.577350259) * r11.xyw;
  r2.xyw = r11.yyy * r2.xyw;
  r2.xyw = r13.xyz * r11.xxx + r2.xyw;
  r11.xyz = r12.xyz * r11.zzz + r2.xyw;
  r1.w = r3.w ? -0.5 : -0.00146627566;
  r1.w = r2.z + r1.w;
  r2.y = saturate(2.00982332 * r1.w);
  r1.w = dot(-r5.xyz, -r5.xyz);
  r1.w = rsqrt(r1.w);
  r12.xyz = -r5.xyz * r1.www;
  r1.w = dot(r3.yz, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r3.x, r13.x);
  r2.zw = (uint2)r1.yx;
  r1.w = dot(r2.zw, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * 6.28318548 + gameTick.w;
  sincos(r1.w, r14.x, r15.x);
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.w = dot(-r12.xyz, r11.xyz);
  r1.w = r1.w + r1.w;
  r16.xyz = r11.xyz * -r1.www + -r12.xyz;
  r1.w = 17 * r2.y;
  r1.w = exp2(r1.w);
  r1.w = 2 + r1.w;
  r1.w = 2 / r1.w;
  r2.z = sqrt(r1.w);
  r3.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r3.zw = (uint2)r3.zw;
  r3.zw = cmp((int2)r1.xy == (int2)r3.zw);
  r2.w = r3.w ? r3.z : 0;
  r3.z = 1 + -r2.y;
  r3.w = 5 * r3.z;
  r6.w = r3.z * 5 + -2.5;
  r6.w = 0.400000006 * r6.w;
  r6.w = max(0, r6.w);
  r6.w = 100 * r6.w;
  r14.yz = -r3.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r14.y);
  r7.w = r7.w * r2.x;
  r7.w = 9.1368103 * r7.w;
  r8.w = r3.w * r3.z;
  r8.w = -r8.w * 2.0159049 + r14.z;
  r8.w = exp2(r8.w);
  r8.w = r8.w * r2.x;
  r8.w = 9.70808983 * r8.w;
  r7.w = max(r8.w, r7.w);
  r7.w = max(1.26815999, r7.w);
  r8.w = numRefProbes + -numOverrideProbes;
  r14.yz = (uint2)r0.yx >> int2(24,24);
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.y << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.y >> 12;
  if (10 == 0) r0.y = 0; else if (10+12 < 32) {   r0.y = (uint)r0.x << (32-(10 + 12)); r0.y = (uint)r0.y >> (32-10);  } else r0.y = (uint)r0.x >> 12;
  r17.x = 16;
  r18.yz = float2(0,1);
  r19.xy = float2(0,0);
  r20.xz = float2(1,1);
  r21.xy = float2(0,0);
  r22.xy = float2(0,0);
  r23.xyzw = float4(0,0,0,0);
  r24.xyzw = float4(0,0,0,0);
  r9.w = 0;
  while (true) {
    r10.w = cmp((int)r9.w == 2);
    if (r10.w != 0) break;
    r10.w = r9.w ? r0.x : r14.y;
    r12.w = cmp((uint)r10.w >= (uint)r8.w);
    r13.w = cmp((uint)r10.w < numRefProbes);
    r12.w = r12.w ? r13.w : 0;
    if (r12.w != 0) {
      r10.w = (int)r10.w * 14;
      if (r2.w != 0) {
        r12.w = (int)r24.w & 3;
        r12.w = mad((int)r12.w, 20, 880);
        r17.yzw = refProbeConstantsCB[r10.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r12.w = u2.xyzw;
      }
      r25.w = (int)r24.w + 1;
      r15.yzw = -refProbeConstantsCB[r10.w].data[0].xyz + r5.xyz;
      r12.w = 0x0000ffff & (int)refProbeConstantsCB[r10.w].data[7].z;
      if (6 == 0) r13.w = 0; else if (6+25 < 32) {       r13.w = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);      } else r13.w = (uint)refProbeConstantsCB[r10.w].data[7].z >> 25;
      r14.w = (int)r12.w * 6;
      r17.y = dot(refProbeAttenuationConstantsCB[r14.w].data[0].xyz, r15.yzw);
      r17.y = saturate(refProbeAttenuationConstantsCB[r14.w].data[0].w + r17.y);
      r17.z = dot(refProbeAttenuationConstantsCB[r14.w].data[1].xyz, r15.yzw);
      r17.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[1].w + r17.z);
      r17.y = r17.y * r17.z;
      r17.z = dot(refProbeAttenuationConstantsCB[r14.w].data[2].xyz, r15.yzw);
      r17.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[2].w + r17.z);
      r17.y = r17.y * r17.z;
      r17.z = dot(refProbeAttenuationConstantsCB[r14.w].data[3].xyz, r15.yzw);
      r17.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[3].w + r17.z);
      r17.y = r17.y * r17.z;
      r17.z = dot(refProbeAttenuationConstantsCB[r14.w].data[4].xyz, r15.yzw);
      r17.z = saturate(refProbeAttenuationConstantsCB[r14.w].data[4].w + r17.z);
      r17.y = r17.y * r17.z;
      r17.z = dot(refProbeAttenuationConstantsCB[r14.w].data[5].xyz, r15.yzw);
      r14.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[5].w + r17.z);
      r18.x = r17.y * r14.w;
      r14.w = 1 & (int)refProbeConstantsCB[r10.w].data[6].x;
      r17.yz = r14.ww ? r18.xy : r18.zx;
      r14.w = refProbeConstantsCB[r10.w].data[6].x;
      r26.xy = r17.yz;
      r17.w = 1;
      while (true) {
        r18.x = cmp((int)r17.w >= (int)r13.w);
        if (r18.x != 0) break;
        r18.x = (int)r12.w + (int)r17.w;
        r18.x = (int)r18.x * 6;
        r18.w = dot(refProbeAttenuationConstantsCB[r18.x].data[0].xyz, r15.yzw);
        r18.w = saturate(refProbeAttenuationConstantsCB[r18.x].data[0].w + r18.w);
        r18.w = r26.x * r18.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.x].data[1].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.x].data[1].w + r19.w);
        r18.w = r19.w * r18.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.x].data[2].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.x].data[2].w + r19.w);
        r18.w = r19.w * r18.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.x].data[3].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.x].data[3].w + r19.w);
        r18.w = r19.w * r18.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.x].data[4].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r18.x].data[4].w + r19.w);
        r18.w = r19.w * r18.w;
        r19.w = dot(refProbeAttenuationConstantsCB[r18.x].data[5].xyz, r15.yzw);
        r18.x = saturate(refProbeAttenuationConstantsCB[r18.x].data[5].w + r19.w);
        r26.x = r18.w * r18.x;
        r19.w = (uint)r14.w >> 2;
        if (1 == 0) r21.w = 0; else if (1+2 < 32) {         r21.w = (uint)r14.w << (32-(1 + 2)); r21.w = (uint)r21.w >> (32-1);        } else r21.w = (uint)r14.w >> 2;
        r22.w = (int)r19.w & 2;
        r26.z = max(r26.y, r26.x);
        r18.x = -r18.w * r18.x + 1;
        r18.x = r26.y * r18.x;
        r20.y = r22.w ? r18.x : r26.z;
        r26.xy = r21.ww ? r26.xy : r20.xy;
        r17.w = (int)r17.w + 1;
        r14.w = r19.w;
      }
      r26.y = saturate(r26.y);
      r12.w = refProbeConstantsCB[r10.w].data[6].y * r26.y;
      r13.w = cmp(0 < r12.w);
      if (r13.w != 0) {
        r13.w = (int)r25.w & 7;
        r14.w = (int)r13.w + -1;
        r14.w = cmp((uint)r14.w < 32);
        r14.w = r14.w ? r2.w : 0;
        if (r14.w != 0) {
          r17.yz = mad((int2)r13.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.w, cb2[52].x, r17.y, u2.xxxx
        r13.w = samplerLinear[]..swiz;
          r13.w = (int)r13.w | 32;
          GBufferDiffuseColor[viewID].r17.y = u2.x;
          GBufferDiffuseColor[viewID].r17.z = u2.x;
        }
        r24.w = (int)r24.w + 257;
        r24.z = r26.y * refProbeConstantsCB[r10.w].data[6].y + r24.z;
        r12.w = refProbeConstantsCB[r10.w].data[7].y * r12.w;
        r27.x = refProbeConstantsCB[r10.w].data[7].w;
        r27.yz = refProbeConstantsCB[r10.w].data[8].xy;
        r13.w = dot(r16.xyz, r27.xyz);
        r14.w = dot(r15.yzw, r27.xyz);
        r14.w = -refProbeConstantsCB[r10.w].data[8].z + r14.w;
        r17.y = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r6.w);
        r14.w = r17.y ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r13.w = min(131072, abs(r13.w));
        r27.x = refProbeConstantsCB[r10.w].data[8].w;
        r27.yz = refProbeConstantsCB[r10.w].data[9].xy;
        r14.w = dot(r16.xyz, r27.xyz);
        r17.y = dot(r15.yzw, r27.xyz);
        r17.y = -refProbeConstantsCB[r10.w].data[9].z + r17.y;
        r17.z = cmp(r17.y >= 0);
        r17.y = max(abs(r17.y), r6.w);
        r17.y = r17.z ? r17.y : -r17.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r17.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r27.x = refProbeConstantsCB[r10.w].data[9].w;
        r27.yz = refProbeConstantsCB[r10.w].data[10].xy;
        r14.w = dot(r16.xyz, r27.xyz);
        r17.y = dot(r15.yzw, r27.xyz);
        r17.y = -refProbeConstantsCB[r10.w].data[10].z + r17.y;
        r17.z = cmp(r17.y >= 0);
        r17.y = max(abs(r17.y), r6.w);
        r17.y = r17.z ? r17.y : -r17.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r17.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r27.x = refProbeConstantsCB[r10.w].data[10].w;
        r27.yz = refProbeConstantsCB[r10.w].data[11].xy;
        r14.w = dot(r16.xyz, r27.xyz);
        r17.y = dot(r15.yzw, r27.xyz);
        r17.y = -refProbeConstantsCB[r10.w].data[11].z + r17.y;
        r17.z = cmp(r17.y >= 0);
        r17.y = max(abs(r17.y), r6.w);
        r17.y = r17.z ? r17.y : -r17.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r17.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r27.x = refProbeConstantsCB[r10.w].data[11].w;
        r27.yz = refProbeConstantsCB[r10.w].data[12].xy;
        r14.w = dot(r16.xyz, r27.xyz);
        r17.y = dot(r15.yzw, r27.xyz);
        r17.y = -refProbeConstantsCB[r10.w].data[12].z + r17.y;
        r17.z = cmp(r17.y >= 0);
        r17.y = max(abs(r17.y), r6.w);
        r17.y = r17.z ? r17.y : -r17.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r17.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r27.x = refProbeConstantsCB[r10.w].data[12].w;
        r27.yz = refProbeConstantsCB[r10.w].data[13].xy;
        r14.w = dot(r16.xyz, r27.xyz);
        r17.y = dot(r15.yzw, r27.xyz);
        r17.y = -refProbeConstantsCB[r10.w].data[13].z + r17.y;
        r17.z = cmp(r17.y >= 0);
        r17.y = max(abs(r17.y), r6.w);
        r17.y = r17.z ? r17.y : -r17.y;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r17.y / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r27.x = refProbeConstantsCB[r10.w].data[3].w + r15.y;
        r27.yz = refProbeConstantsCB[r10.w].data[4].xy + r15.zw;
        r17.yzw = r16.xyz * r13.www + r27.xyz;
        r14.w = dot(r17.yzw, r17.yzw);
        r14.w = sqrt(r14.w);
        r13.w = r13.w / r14.w;
        r13.w = r13.w + r13.w;
        r13.w = sqrt(r13.w);
        r13.w = r3.z * 5 + r13.w;
        r13.w = -0.844799995 + r13.w;
        r27.x = refProbeConstantsCB[r10.w].data[0].w;
        r27.y = refProbeConstantsCB[r10.w].data[1].z;
        r27.z = refProbeConstantsCB[r10.w].data[2].y;
        r28.x = dot(r17.yzw, r27.xyz);
        r29.xy = refProbeConstantsCB[r10.w].data[1].xw;
        r29.z = refProbeConstantsCB[r10.w].data[2].z;
        r28.y = dot(r17.yzw, r29.xyz);
        r30.x = refProbeConstantsCB[r10.w].data[1].y;
        r30.yz = refProbeConstantsCB[r10.w].data[2].xw;
        r28.z = dot(r17.yzw, r30.xyz);
        if (9 == 0) r14.w = 0; else if (9+16 < 32) {         r14.w = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);        } else r14.w = (uint)refProbeConstantsCB[r10.w].data[7].z >> 16;
        r28.w = (uint)r14.w;
        r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r13.w).xyz;
        r26.xzw = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
        r26.xzw = cmp((int3)r26.xzw == int3(2139095040,2139095040,2139095040));
        r13.w = (int)r26.z | (int)r26.x;
        r13.w = (int)r26.w | (int)r13.w;
        r17.yzw = r13.www ? float3(1,1,0) : r17.yzw;
        r31.x = dot(r15.yzw, r27.xyz);
        r31.y = dot(r15.yzw, r29.xyz);
        r31.z = dot(r15.yzw, r30.xyz);
        r15.yzw = saturate(r31.xyz * refProbeConstantsCB[r10.w].data[3].xyz + float3(0.5,0.5,0.5));
        r31.xy = refProbeConstantsCB[r10.w].data[4].zw * r15.yz;
        r31.z = refProbeConstantsCB[r10.w].data[5].x * r15.w;
        r15.yzw = refProbeConstantsCB[r10.w].data[5].yzw + r31.xyz;
        r28.x = dot(r11.xyz, r27.xyz);
        r28.y = dot(r11.xyz, r29.xyz);
        r28.z = dot(r11.xyz, r30.xyz);
        r26.xzw = cmp(float3(0,0,0) < r28.xyz);
        r19.z = r26.x ? 0 : 0.5;
        r27.xyz = r19.xyz + r15.yzw;
        r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
        r29.xyz = r28.xyz * r28.xyz;
        r29.xyz = r29.xyz * r12.www;
        r21.z = r26.z ? 0 : 0.5;
        r30.xyz = r21.xyz + r15.yzw;
        r30.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
        r30.xyz = r30.xyz * r29.yyy;
        r27.xyz = r27.xyz * r29.xxx + r30.xyz;
        r22.z = r26.w ? 0 : 0.5;
        r15.yzw = r22.xyz + r15.yzw;
        r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
        r15.yzw = r15.yzw * r29.zzz + r27.xyz;
        r26.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
        r27.xyz = (int3)r26.xzw & int3(-2147483648,-2147483648,-2147483648);
        r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
        r10.w = (int)r27.y | (int)r27.x;
        r10.w = (int)r27.z | (int)r10.w;
        r26.xzw = r10.www ? float3(1,1,0) : r26.xzw;
        r27.xyz = r26.xzw * r15.yzw;
        r10.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r23.xyz = r15.yzw * r26.xzw + r23.xyz;
        r13.w = r10.w * r7.w;
        r15.yzw = r17.yzw * r12.www;
        r12.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r10.w = r7.w * r10.w + r12.w;
        r10.w = r13.w / r10.w;
        r27.x = r23.w;
        r27.yz = r24.xy;
        r15.yzw = r15.yzw * r10.www + r27.xyz;
        r23.w = r15.y;
        r24.xy = r15.zw;
      } else {
        r25.xyz = r24.xyz;
        r24.xyzw = r25.xyzw;
      }
    }
    r9.w = (int)r9.w + 1;
  }
  r17.x = 16;
  r18.yz = float2(0,1);
  r19.xy = float2(0,0);
  r21.xy = float2(0,0);
  r22.xy = float2(0,0);
  r15.yzw = r23.xyz;
  r25.x = r23.w;
  r25.yz = r24.xy;
  r20.xy = r24.zw;
  r9.w = 0;
  while (true) {
    r10.w = cmp((int)r9.w == 2);
    if (r10.w != 0) break;
    r10.w = r9.w ? r0.x : r14.y;
    r12.w = cmp((uint)r10.w < (uint)r8.w);
    if (r12.w != 0) {
      r10.w = (int)r10.w * 14;
      if (r2.w != 0) {
        r12.w = (int)r20.y & 15;
        r12.w = mad((int)r12.w, 20, 880);
        r17.yzw = refProbeConstantsCB[r10.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r12.w = u2.xyzw;
      }
      r26.y = (int)r20.y + 1;
      r17.yzw = -refProbeConstantsCB[r10.w].data[0].xyz + r5.xyz;
      r12.w = 0x0000ffff & (int)refProbeConstantsCB[r10.w].data[7].z;
      if (6 == 0) r13.w = 0; else if (6+25 < 32) {       r13.w = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);      } else r13.w = (uint)refProbeConstantsCB[r10.w].data[7].z >> 25;
      r14.w = (int)r12.w * 6;
      r18.w = dot(refProbeAttenuationConstantsCB[r14.w].data[0].xyz, r17.yzw);
      r18.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[0].w + r18.w);
      r19.w = dot(refProbeAttenuationConstantsCB[r14.w].data[1].xyz, r17.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[1].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r14.w].data[2].xyz, r17.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[2].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r14.w].data[3].xyz, r17.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[3].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r14.w].data[4].xyz, r17.yzw);
      r19.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[4].w + r19.w);
      r18.w = r19.w * r18.w;
      r19.w = dot(refProbeAttenuationConstantsCB[r14.w].data[5].xyz, r17.yzw);
      r14.w = saturate(refProbeAttenuationConstantsCB[r14.w].data[5].w + r19.w);
      r18.x = r18.w * r14.w;
      r14.w = 1 & (int)refProbeConstantsCB[r10.w].data[6].x;
      r18.xw = r14.ww ? r18.xy : r18.zx;
      r14.w = refProbeConstantsCB[r10.w].data[6].x;
      r27.xy = r18.xw;
      r19.w = 1;
      while (true) {
        r21.w = cmp((int)r19.w >= (int)r13.w);
        if (r21.w != 0) break;
        r21.w = (int)r12.w + (int)r19.w;
        r21.w = (int)r21.w * 6;
        r22.w = dot(refProbeAttenuationConstantsCB[r21.w].data[0].xyz, r17.yzw);
        r22.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[0].w + r22.w);
        r22.w = r27.x * r22.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[1].xyz, r17.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[1].w + r25.w);
        r22.w = r25.w * r22.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[2].xyz, r17.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[2].w + r25.w);
        r22.w = r25.w * r22.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[3].xyz, r17.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[3].w + r25.w);
        r22.w = r25.w * r22.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[4].xyz, r17.yzw);
        r25.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[4].w + r25.w);
        r22.w = r25.w * r22.w;
        r25.w = dot(refProbeAttenuationConstantsCB[r21.w].data[5].xyz, r17.yzw);
        r21.w = saturate(refProbeAttenuationConstantsCB[r21.w].data[5].w + r25.w);
        r27.x = r22.w * r21.w;
        r25.w = (uint)r14.w >> 2;
        if (1 == 0) r26.z = 0; else if (1+2 < 32) {         r26.z = (uint)r14.w << (32-(1 + 2)); r26.z = (uint)r26.z >> (32-1);        } else r26.z = (uint)r14.w >> 2;
        r26.w = (int)r25.w & 2;
        r27.z = max(r27.y, r27.x);
        r21.w = -r22.w * r21.w + 1;
        r21.w = r27.y * r21.w;
        r20.w = r26.w ? r21.w : r27.z;
        r27.xy = r26.zz ? r27.xy : r20.zw;
        r19.w = (int)r19.w + 1;
        r14.w = r25.w;
      }
      r12.w = saturate(r27.y + -r24.z);
      r13.w = refProbeConstantsCB[r10.w].data[6].y * r12.w;
      r14.w = cmp(0 < r13.w);
      if (r14.w != 0) {
        r14.w = (int)r26.y & 31;
        r18.x = (int)r14.w + -1;
        r18.x = cmp((uint)r18.x < 32);
        r18.x = r18.x ? r2.w : 0;
        if (r18.x != 0) {
          r18.xw = mad((int2)r14.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.w, cb2[52].x, r18.x, u2.xxxx
        r14.w = samplerLinear[]..swiz;
          r14.w = (int)r14.w | 32;
          GBufferDiffuseColor[viewID].r18.x = u2.x;
          GBufferDiffuseColor[viewID].r18.w = u2.x;
        }
        r20.y = (int)r20.y + 257;
        r20.x = r12.w * refProbeConstantsCB[r10.w].data[6].y + r20.x;
        r12.w = refProbeConstantsCB[r10.w].data[7].y * r13.w;
        r28.x = refProbeConstantsCB[r10.w].data[7].w;
        r28.yz = refProbeConstantsCB[r10.w].data[8].xy;
        r13.w = dot(r16.xyz, r28.xyz);
        r14.w = dot(r17.yzw, r28.xyz);
        r14.w = -refProbeConstantsCB[r10.w].data[8].z + r14.w;
        r18.x = cmp(r14.w >= 0);
        r14.w = max(abs(r14.w), r6.w);
        r14.w = r18.x ? r14.w : -r14.w;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r14.w / r13.w;
        r13.w = min(131072, abs(r13.w));
        r28.x = refProbeConstantsCB[r10.w].data[8].w;
        r28.yz = refProbeConstantsCB[r10.w].data[9].xy;
        r14.w = dot(r16.xyz, r28.xyz);
        r18.x = dot(r17.yzw, r28.xyz);
        r18.x = -refProbeConstantsCB[r10.w].data[9].z + r18.x;
        r18.w = cmp(r18.x >= 0);
        r18.x = max(abs(r18.x), r6.w);
        r18.x = r18.w ? r18.x : -r18.x;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r18.x / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r28.x = refProbeConstantsCB[r10.w].data[9].w;
        r28.yz = refProbeConstantsCB[r10.w].data[10].xy;
        r14.w = dot(r16.xyz, r28.xyz);
        r18.x = dot(r17.yzw, r28.xyz);
        r18.x = -refProbeConstantsCB[r10.w].data[10].z + r18.x;
        r18.w = cmp(r18.x >= 0);
        r18.x = max(abs(r18.x), r6.w);
        r18.x = r18.w ? r18.x : -r18.x;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r18.x / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r28.x = refProbeConstantsCB[r10.w].data[10].w;
        r28.yz = refProbeConstantsCB[r10.w].data[11].xy;
        r14.w = dot(r16.xyz, r28.xyz);
        r18.x = dot(r17.yzw, r28.xyz);
        r18.x = -refProbeConstantsCB[r10.w].data[11].z + r18.x;
        r18.w = cmp(r18.x >= 0);
        r18.x = max(abs(r18.x), r6.w);
        r18.x = r18.w ? r18.x : -r18.x;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r18.x / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r28.x = refProbeConstantsCB[r10.w].data[11].w;
        r28.yz = refProbeConstantsCB[r10.w].data[12].xy;
        r14.w = dot(r16.xyz, r28.xyz);
        r18.x = dot(r17.yzw, r28.xyz);
        r18.x = -refProbeConstantsCB[r10.w].data[12].z + r18.x;
        r18.w = cmp(r18.x >= 0);
        r18.x = max(abs(r18.x), r6.w);
        r18.x = r18.w ? r18.x : -r18.x;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r18.x / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r28.x = refProbeConstantsCB[r10.w].data[12].w;
        r28.yz = refProbeConstantsCB[r10.w].data[13].xy;
        r14.w = dot(r16.xyz, r28.xyz);
        r18.x = dot(r17.yzw, r28.xyz);
        r18.x = -refProbeConstantsCB[r10.w].data[13].z + r18.x;
        r18.w = cmp(r18.x >= 0);
        r18.x = max(abs(r18.x), r6.w);
        r18.x = r18.w ? r18.x : -r18.x;
        r14.w = max(1.00000001e-07, -r14.w);
        r14.w = r18.x / r14.w;
        r13.w = min(abs(r14.w), r13.w);
        r28.x = refProbeConstantsCB[r10.w].data[3].w + r17.y;
        r28.yz = refProbeConstantsCB[r10.w].data[4].xy + r17.zw;
        r27.xzw = r16.xyz * r13.www + r28.xyz;
        r14.w = dot(r27.xzw, r27.xzw);
        r14.w = sqrt(r14.w);
        r13.w = r13.w / r14.w;
        r13.w = r13.w + r13.w;
        r13.w = sqrt(r13.w);
        r13.w = r3.z * 5 + r13.w;
        r13.w = -0.844799995 + r13.w;
        r28.x = refProbeConstantsCB[r10.w].data[0].w;
        r28.y = refProbeConstantsCB[r10.w].data[1].z;
        r28.z = refProbeConstantsCB[r10.w].data[2].y;
        r29.x = dot(r27.xzw, r28.xyz);
        r30.xy = refProbeConstantsCB[r10.w].data[1].xw;
        r30.z = refProbeConstantsCB[r10.w].data[2].z;
        r29.y = dot(r27.xzw, r30.xyz);
        r31.x = refProbeConstantsCB[r10.w].data[1].y;
        r31.yz = refProbeConstantsCB[r10.w].data[2].xw;
        r29.z = dot(r27.xzw, r31.xyz);
        if (9 == 0) r14.w = 0; else if (9+16 < 32) {         r14.w = (uint)refProbeConstantsCB[r10.w].data[7].z << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);        } else r14.w = (uint)refProbeConstantsCB[r10.w].data[7].z >> 16;
        r29.w = (uint)r14.w;
        r27.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r13.w).xyz;
        r32.xyz = (int3)r27.xzw & int3(-2147483648,-2147483648,-2147483648);
        r32.xyz = cmp((int3)r32.xyz == int3(2139095040,2139095040,2139095040));
        r13.w = (int)r32.y | (int)r32.x;
        r13.w = (int)r32.z | (int)r13.w;
        r27.xzw = r13.www ? float3(1,1,0) : r27.xzw;
        r32.x = dot(r17.yzw, r28.xyz);
        r32.y = dot(r17.yzw, r30.xyz);
        r32.z = dot(r17.yzw, r31.xyz);
        r17.yzw = saturate(r32.xyz * refProbeConstantsCB[r10.w].data[3].xyz + float3(0.5,0.5,0.5));
        r32.xy = refProbeConstantsCB[r10.w].data[4].zw * r17.yz;
        r32.z = refProbeConstantsCB[r10.w].data[5].x * r17.w;
        r17.yzw = refProbeConstantsCB[r10.w].data[5].yzw + r32.xyz;
        r29.x = dot(r11.xyz, r28.xyz);
        r29.y = dot(r11.xyz, r30.xyz);
        r29.z = dot(r11.xyz, r31.xyz);
        r28.xyz = cmp(float3(0,0,0) < r29.xyz);
        r19.z = r28.x ? 0 : 0.5;
        r30.xyz = r19.xyz + r17.yzw;
        r30.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
        r31.xyz = r29.xyz * r29.xyz;
        r31.xyz = r31.xyz * r12.www;
        r21.z = r28.y ? 0 : 0.5;
        r28.xyw = r21.xyz + r17.yzw;
        r28.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xyw, 0).xyz;
        r28.xyw = r28.xyw * r31.yyy;
        r28.xyw = r30.xyz * r31.xxx + r28.xyw;
        r22.z = r28.z ? 0 : 0.5;
        r17.yzw = r22.xyz + r17.yzw;
        r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
        r17.yzw = r17.yzw * r31.zzz + r28.xyw;
        r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
        r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
        r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
        r10.w = (int)r29.y | (int)r29.x;
        r10.w = (int)r29.z | (int)r10.w;
        r28.xyz = r10.www ? float3(1,1,0) : r28.xyz;
        r29.xyz = r28.xyz * r17.yzw;
        r10.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r15.yzw = r17.yzw * r28.xyz + r15.yzw;
        r13.w = r10.w * r7.w;
        r17.yzw = r27.xzw * r12.www;
        r12.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r10.w = r7.w * r10.w + r12.w;
        r10.w = r13.w / r10.w;
        r25.xyz = r17.yzw * r10.www + r25.xyz;
      } else {
        r26.x = r20.x;
        r20.xy = r26.xy;
      }
    }
    r9.w = (int)r9.w + 1;
  }
  r0.x = cmp(r24.z >= 1);
  bitmask.z = ((~(-1 << 8)) << 0) & 0xffffffff;  r3.z = (((uint)r20.y << 0) & bitmask.z) | ((uint)r24.w & ~bitmask.z);
  r0.x = r0.x ? r3.z : r20.y;
  r3.z = max(1, r20.x);
  r3.z = rcp(r3.z);
  r20.x = saturate(r20.x);
  r17.xyz = r15.yzw * r3.zzz;
  r18.xyz = r25.xyz * r3.zzz;
  r6.w = cmp(r20.x < 0.99000001);
  if (r6.w != 0) {
    r0.x = (int)r0.x + 256;
    r6.w = 1 + -r20.x;
    r7.w = sunConstants.globalProbeExposure * r6.w;
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
    r22.xyz = r22.xyz * r7.www;
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
    r7.w = dot(r19.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r17.xyz = r15.yzw * r3.zzz + r19.xyz;
    r16.w = 0;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r16.xyzw, r3.w).xyz;
    r3.z = sunConstants.globalProbeExposure * r6.w + -r7.w;
    r3.z = r2.y * r3.z + r7.w;
    r18.xyz = r15.yzw * r3.zzz + r18.xyz;
  }
  r3.z = r2.x + r4.z;
  r3.z = log2(abs(r3.z));
  r3.z = r3.z * r2.z;
  r3.z = exp2(r3.z);
  r3.z = r3.z + r4.z;
  r3.z = saturate(-1 + r3.z);
  r15.yzw = r17.xyz * r4.zzz;
  r14.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r14.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r14.yw, 0).xy;
  r17.xyz = r18.xyz * r3.zzz;
  r18.xyz = r17.xyz * r14.yyy;
  r17.xyz = r17.xyz * r14.www;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r3.z = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r3.w = r2.x * r2.y + r3.z;
  r2.y = r3.w * r2.y;
  r3.z = r3.z * r3.w;
  r19.x = -r3.x;
  r3.w = ~(int)r1.z;
  r2.x = -r2.x * 0.5 + 1;
  r20.x = 2;
  r21.x = 2;
  r5.w = 1;
  r22.w = 1;
  r19.z = r3.x;
  r23.w = 1;
  r24.z = 1;
  r25.w = 1;
  r19.yw = r13.xx;
  r3.y = r19.w;
  r26.w = 1;
  r13.y = r19.x;
  r13.z = r3.x;
  r27.w = 1;
  r28.x = r13.x;
  r28.y = r19.x;
  r28.z = r3.x;
  r29.x = r13.x;
  r29.y = r19.x;
  r29.z = r3.x;
  r30.x = r13.x;
  r30.y = r19.x;
  r30.z = r3.x;
  r31.xyz = r15.yzw;
  r32.xyz = r18.xyz;
  r33.xyz = r17.xyz;
  r4.z = 0;
  r6.w = 0;
  while (true) {
    r7.w = cmp((int)r6.w == 2);
    if (r7.w != 0) break;
    r7.w = r6.w ? r0.y : r14.z;
    r7.w = (int)r7.w * 15;
    if (3 == 0) r8.w = 0; else if (3+24 < 32) {     r8.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 24)); r8.w = (uint)r8.w >> (32-3);    } else r8.w = (uint)lightConstantsCB[r7.w].data[1].w >> 24;
    switch (r8.w) {
      case 4 :      if (r2.w != 0) {
        r8.w = (int)r4.z & 3;
        r8.w = mad((int)r8.w, 24, 112);
        r20.yzw = lightConstantsCB[r7.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r8.w = u2.xyzw;
      }
      r8.w = (int)r4.z + 1;
      r9.w = cmp(0 < lightConstantsCB[r7.w].data[6].y);
      r34.xy = lightConstantsCB[r7.w].data[5].zw;
      r34.z = lightConstantsCB[r7.w].data[6].x;
      r20.yzw = -r34.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r7.w].data[0].xyz;
      r35.xyz = r20.yzw + -r5.xyz;
      r10.w = dot(r34.xyz, r35.xyz);
      r11.w = saturate(-r10.w / lightConstantsCB[r7.w].data[6].y);
      r36.xyz = r11.www * r34.xyz + r20.yzw;
      r36.xyz = r9.www ? r36.xyz : lightConstantsCB[r7.w].data[0].xyz;
      r36.xyz = r36.xyz + -r5.xyz;
      r12.w = dot(r36.xyz, r36.xyz);
      r13.w = rsqrt(r12.w);
      r36.xyz = r36.xyz * r13.www;
      r13.w = dot(r11.xyz, r36.xyz);
      r14.y = saturate(r13.w);
      r14.w = cmp(0 < r14.y);
      if (r14.w != 0) {
        r14.w = sqrt(r12.w);
        r16.w = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
        r12.w = r16.w / r12.w;
        r12.w = min(1, r12.w);
        r36.xy = saturate(r14.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
        r36.zw = r36.xy * r36.xy;
        r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
        r36.xy = r36.zw * r36.xy;
        r12.w = r36.x * r12.w;
        r12.w = r12.w * r36.y;
        r14.w = cmp(0 < r12.w);
        if (r14.w != 0) {
          if (3 == 0) r14.w = 0; else if (3+27 < 32) {           r14.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r16.w = (int)r8.w & 7;
          r17.w = (int)r16.w + -1;
          r17.w = cmp((uint)r17.w < 32);
          r17.w = r17.w ? r2.w : 0;
          if (r17.w != 0) {
            r36.xy = mad((int2)r16.ww, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r16.w, cb2[52].x, r36.x, u2.xxxx
          r16.w = samplerLinear[]..swiz;
            r16.w = (int)r16.w | 4;
            GBufferDiffuseColor[viewID].r36.x = u2.x;
            GBufferDiffuseColor[viewID].r36.y = u2.x;
          }
          r16.w = (int)r4.z + 257;
          r14.w = cmp((int)r14.w != 1);
          if (r14.w != 0) {
            r14.w = abs(r13.w) * -0.200000003 + 0.400000006;
            r36.xyz = r11.xyz * r14.www + r5.xyz;
            r36.xyz = -lightConstantsCB[r7.w].data[4].yzw + r36.xyz;
            r14.w = max(abs(r36.y), abs(r36.z));
            r14.w = max(abs(r36.x), r14.w);
            r14.w = lightConstantsCB[r7.w].data[5].x / r14.w;
            r14.w = lightConstantsCB[r7.w].data[5].y + r14.w;
            r17.w = dot(r36.xyz, r36.xyz);
            r17.w = rsqrt(r17.w);
            r14.w = max(6.10351563e-05, r14.w);
            r18.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
            r37.w = (uint)r18.w;
            r18.w = 0;
            r24.w = 0;
            while (true) {
              r28.w = cmp((int)r24.w >= 8);
              if (r28.w != 0) break;
              r38.y = dot(icb[r24.w+0].yx, r19.xy);
              r38.z = dot(icb[r24.w+0].yx, r19.yz);
              r38.yz = lightConstantsCB[r7.w].data[3].yy * r38.yz;
              r38.x = r38.y * r15.x;
              r38.w = r38.y * r14.x;
              r37.xyz = r36.xyz * r17.www + r38.xzw;
              r28.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r14.w).x;
              r18.w = r28.w * 0.125 + r18.w;
              r24.w = (int)r24.w + 1;
            }
          } else {
            r18.w = 1;
          }
          r12.w = r18.w * r12.w;
          r14.w = cmp(0 < r12.w);
          if (r14.w != 0) {
            r14.w = lightConstantsCB[r7.w].data[1].z * r1.w;
            r14.w = 0.25 * r14.w;
            r17.w = dot(r34.xyz, r16.xyz);
            r24.w = dot(r16.xyz, r35.xyz);
            r28.w = -r17.w * r17.w + lightConstantsCB[r7.w].data[6].y;
            r10.w = r17.w * r24.w + -r10.w;
            r10.w = saturate(r10.w / r28.w);
            r17.w = r28.w / lightConstantsCB[r7.w].data[6].y;
            r17.w = 10 * r17.w;
            r17.w = min(1, r17.w);
            r10.w = r10.w + -r11.w;
            r10.w = r17.w * r10.w + r11.w;
            r20.yzw = r10.www * r34.xyz + r20.yzw;
            r20.yzw = r9.www ? r20.yzw : lightConstantsCB[r7.w].data[0].xyz;
            r20.yzw = r20.yzw + -r5.xyz;
            r9.w = dot(r20.yzw, r20.yzw);
            r9.w = rsqrt(r9.w);
            r34.xyz = r20.yzw * r9.www;
            if (4 == 0) r10.w = 0; else if (4+16 < 32) {             r10.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r10.w = (uint)r10.w >> (32-4);            } else r10.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
            r11.w = cmp(0 < (uint)r10.w);
            r11.w = r11.w ? r1.z : 0;
            if (r11.w != 0) {
              r10.w = (int)r10.w + numLights;
              r10.w = mad((int)r10.w, 15, -15);
              r11.w = abs(r13.w) * -0.200000003 + 0.400000006;
              r22.xyz = r11.xyz * r11.www + r5.xyz;
              r35.xyz = lightConstantsCB[r10.w].data[6].yzw;
              r35.w = lightConstantsCB[r10.w].data[7].x;
              r11.w = dot(r35.xyzw, r22.xyzw);
              r35.xyz = lightConstantsCB[r10.w].data[7].yzw;
              r35.w = lightConstantsCB[r10.w].data[8].x;
              r17.w = dot(r35.xyzw, r22.xyzw);
              r24.w = cmp(r17.w < r11.w);
              if (r24.w == 0) {
                r35.xyz = lightConstantsCB[r10.w].data[4].yzw;
                r35.w = lightConstantsCB[r10.w].data[5].x;
                r35.x = dot(r35.xyzw, r22.xyzw);
                r36.xyz = lightConstantsCB[r10.w].data[5].yzw;
                r36.w = lightConstantsCB[r10.w].data[6].x;
                r35.y = dot(r36.xyzw, r22.xyzw);
                r22.xy = r35.xy / r17.ww;
                r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r35.x = lightConstantsCB[r10.w].data[9].w + r22.x;
                r35.y = lightConstantsCB[r10.w].data[10].x + r22.y;
                r22.xy = lightConstantsCB[r10.w].data[9].yz * r35.xy;
                r35.xy = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
                r35.zw = float2(1,1) + -r35.xy;
                r35.zw = cmp(r22.xy >= r35.zw);
                r35.xy = cmp(r35.xy >= r22.xy);
                r35.xy = (int2)r35.xy | (int2)r35.zw;
                r22.z = (int)r35.y | (int)r35.x;
                if (r22.z == 0) {
                  r22.xy = saturate(r22.xy);
                  r35.x = r22.x * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
                  r35.y = r22.y * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
                  r22.x = lightConstantsCB[r10.w].data[10].z * r17.w;
                  r11.w = lightConstantsCB[r10.w].data[10].y * r17.w + r11.w;
                  r11.w = r11.w / r22.x;
                }
              } else {
                r22.z = -1;
              }
              r17.w = (int)r24.w | (int)r22.z;
              if (r17.w == 0) {
                r11.w = max(6.10351563e-05, r11.w);
                r17.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r22.z = (uint)r17.w;
                  r24.w = 0;
                  r28.w = 0;
                  while (true) {
                    r29.w = cmp((int)r28.w >= 8);
                    if (r29.w != 0) break;
                    r36.x = dot(icb[r28.w+0].yx, r19.xw);
                    r36.y = dot(icb[r28.w+0].xy, r3.xy);
                    r22.xy = r36.xy * lightConstantsCB[r10.w].data[3].yy + r35.xy;
                    r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r11.w).x;
                    r24.w = r22.x * 0.125 + r24.w;
                    r28.w = (int)r28.w + 1;
                  }
                } else {
                  r35.z = (uint)r17.w;
                  r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r11.w).x;
                }
                r10.w = r24.w * r24.w;
                r10.w = r10.w * r24.w;
              } else {
                r10.w = 1;
              }
              r12.w = r12.w * r10.w;
            } else {
              if (4 == 0) r10.w = 0; else if (4+20 < 32) {               r10.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r10.w = (uint)r10.w >> (32-4);              } else r10.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
              r11.w = cmp(0 < (uint)r10.w);
              r11.w = r11.w ? r3.w : 0;
              if (r11.w != 0) {
                r10.w = (int)r10.w + numLights;
                r10.w = mad((int)r10.w, 15, -15);
                r11.w = abs(r13.w) * -0.200000003 + 0.400000006;
                r23.xyz = r11.xyz * r11.www + r5.xyz;
                r35.xyz = lightConstantsCB[r10.w].data[6].yzw;
                r35.w = lightConstantsCB[r10.w].data[7].x;
                r11.w = dot(r35.xyzw, r23.xyzw);
                r35.xyz = lightConstantsCB[r10.w].data[7].yzw;
                r35.w = lightConstantsCB[r10.w].data[8].x;
                r17.w = dot(r35.xyzw, r23.xyzw);
                r22.x = cmp(r17.w < r11.w);
                if (r22.x == 0) {
                  r35.xyz = lightConstantsCB[r10.w].data[4].yzw;
                  r35.w = lightConstantsCB[r10.w].data[5].x;
                  r35.x = dot(r35.xyzw, r23.xyzw);
                  r36.xyz = lightConstantsCB[r10.w].data[5].yzw;
                  r36.w = lightConstantsCB[r10.w].data[6].x;
                  r35.y = dot(r36.xyzw, r23.xyzw);
                  r22.yz = r35.xy / r17.ww;
                  r22.yz = r22.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r23.x = lightConstantsCB[r10.w].data[9].w + r22.y;
                  r23.y = lightConstantsCB[r10.w].data[10].x + r22.z;
                  r22.yz = lightConstantsCB[r10.w].data[9].yz * r23.xy;
                  r23.xy = lightConstantsCB[r10.w].data[3].yy / lightConstantsCB[r10.w].data[8].yw;
                  r35.xy = float2(1,1) + -r23.xy;
                  r35.xy = cmp(r22.yz >= r35.xy);
                  r23.xy = cmp(r23.xy >= r22.yz);
                  r23.xy = (int2)r23.xy | (int2)r35.xy;
                  r23.x = (int)r23.y | (int)r23.x;
                  if (r23.x == 0) {
                    r22.yz = saturate(r22.yz);
                    r35.x = r22.y * lightConstantsCB[r10.w].data[8].y + lightConstantsCB[r10.w].data[8].z;
                    r35.y = r22.z * lightConstantsCB[r10.w].data[8].w + lightConstantsCB[r10.w].data[9].x;
                    r22.y = lightConstantsCB[r10.w].data[10].z * r17.w;
                    r11.w = lightConstantsCB[r10.w].data[10].y * r17.w + r11.w;
                    r11.w = r11.w / r22.y;
                  }
                } else {
                  r23.x = -1;
                }
                r17.w = (int)r22.x | (int)r23.x;
                if (r17.w == 0) {
                  r11.w = max(6.10351563e-05, r11.w);
                  r17.w = 0x0000ffff & (int)lightConstantsCB[r10.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r22.z = (uint)r17.w;
                    r23.xy = float2(0,0);
                    while (true) {
                      r23.z = cmp((int)r23.y >= 8);
                      if (r23.z != 0) break;
                      r36.x = dot(icb[r23.y+0].xy, r13.xy);
                      r36.y = dot(icb[r23.y+0].yx, r13.xz);
                      r22.xy = r36.xy * lightConstantsCB[r10.w].data[3].yy + r35.xy;
                      r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r11.w).x;
                      r23.x = r22.x * 0.125 + r23.x;
                      r23.y = (int)r23.y + 1;
                    }
                  } else {
                    r35.z = (uint)r17.w;
                    r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r11.w).x;
                  }
                  r10.w = r23.x * r23.x;
                  r10.w = r10.w * r23.x;
                } else {
                  r10.w = 1;
                }
                r12.w = r12.w * r10.w;
              }
            }
            r10.w = -r14.y * r2.x + 1;
            r10.w = r10.w * r10.w;
            r10.w = -r10.w * 0.620000005 + 0.620000005;
            r10.w = r10.w + -r14.y;
            r10.w = r2.z * r10.w + r14.y;
            r10.w = r10.w * r12.w;
            r22.x = lightConstantsCB[r7.w].data[0].w;
            r22.yz = lightConstantsCB[r7.w].data[1].xy;
            r11.w = cmp(0 < r13.w);
            r35.xyz = r10.www * r22.xyz + r31.xyz;
            r10.w = saturate(dot(r11.xyz, r34.xyz));
            r20.yzw = r20.yzw * r9.www + r12.xyz;
            r9.w = dot(r20.yzw, r20.yzw);
            r9.w = rsqrt(r9.w);
            r20.yzw = r20.yzw * r9.www;
            r9.w = dot(r20.yzw, r12.xyz);
            r13.w = dot(r11.xyz, r20.yzw);
            r14.y = abs(r13.w) * r1.w + -abs(r13.w);
            r13.w = abs(r13.w) * r14.y + 1;
            r14.y = r10.w * r2.y + r3.z;
            r13.w = r13.w * r13.w;
            r13.w = r13.w * r14.y;
            r13.w = rcp(r13.w);
            r10.w = r10.w * r14.w;
            r10.w = r13.w * r10.w;
            r10.w = r10.w * r12.w;
            r20.yzw = r10.www * r22.xyz + r33.xyz;
            r9.w = saturate(1 + -r9.w);
            r13.w = r9.w * r9.w;
            r13.w = r13.w * r13.w;
            r9.w = r13.w * r9.w;
            r9.w = r10.w * r9.w;
            r22.xyz = r9.www * r22.xyz + r32.xyz;
            r31.xyz = r11.www ? r35.xyz : r31.xyz;
            r32.xyz = r11.www ? r22.xyz : r32.xyz;
            r33.xyz = r11.www ? r20.yzw : r33.xyz;
            r9.w = (int)r16.w & 7;
            r10.w = (int)r9.w + -1;
            r10.w = cmp((uint)r10.w < 32);
            r10.w = r10.w ? r2.w : 0;
            if (r10.w != 0) {
              r14.yw = mad((int2)r9.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r9.w, cb2[52].x, r14.y, u2.xxxx
            r9.w = samplerLinear[]..swiz;
              r9.w = (int)r9.w | 8;
              GBufferDiffuseColor[viewID].r14.y = u2.x;
              GBufferDiffuseColor[viewID].r14.w = u2.x;
            }
            r4.z = (int)r4.z + 0x00010101;
          } else {
            r4.z = r16.w;
          }
        } else {
          r4.z = r8.w;
        }
      } else {
        r4.z = r8.w;
      }
      break;
      case 2 :      if (r2.w != 0) {
        r8.w = (int)r4.z & 3;
        r8.w = mad((int)r8.w, 24, 112);
        r21.yzw = lightConstantsCB[r7.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r8.w = u2.xyzw;
      }
      r8.w = (int)r4.z + 1;
      r22.xy = lightConstantsCB[r7.w].data[3].zw + -r5.xy;
      r22.z = lightConstantsCB[r7.w].data[4].x + -r5.z;
      r9.w = dot(r22.xyz, r22.xyz);
      r9.w = rsqrt(r9.w);
      r20.yzw = r22.xyz * r9.www;
      r10.w = dot(r11.xyz, r20.yzw);
      r11.w = saturate(r10.w);
      r12.w = cmp(0 < r11.w);
      if (r12.w != 0) {
        r34.xyz = lightConstantsCB[r7.w].data[7].yzw;
        r34.w = lightConstantsCB[r7.w].data[8].x;
        r12.w = dot(r34.xyzw, r5.xyzw);
        r13.w = cmp(r12.w < 1);
        if (r13.w != 0) {
          r20.yzw = float3(1,1,1);
          r13.w = 0;
        } else {
          r21.yzw = lightConstantsCB[r7.w].data[0].xyz + -r5.xyz;
          r14.y = lightConstantsCB[r7.w].data[3].x * lightConstantsCB[r7.w].data[3].x;
          r14.w = dot(r21.yzw, r21.yzw);
          r14.y = r14.y / r14.w;
          r14.y = min(1, r14.y);
          r21.yz = saturate(r12.ww * lightConstantsCB[r7.w].data[2].xz + lightConstantsCB[r7.w].data[2].yw);
          r23.yz = r21.yz * r21.yz;
          r21.yz = r21.yz * float2(-2,-2) + float2(3,3);
          r21.yz = r23.yz * r21.yz;
          r14.y = r21.y * r14.y;
          r14.y = r14.y * r21.z;
          r35.xyz = lightConstantsCB[r7.w].data[4].yzw;
          r35.w = lightConstantsCB[r7.w].data[5].x;
          r35.x = dot(r35.xyzw, r5.xyzw);
          r36.xyz = lightConstantsCB[r7.w].data[5].yzw;
          r36.w = lightConstantsCB[r7.w].data[6].x;
          r35.y = dot(r36.xyzw, r5.xyzw);
          r24.xy = r35.xy / r12.ww;
          r12.w = cmp(lightConstantsCB[r7.w].data[10].w < 0.00048828125);
          if (r12.w != 0) {
            r21.yz = saturate(abs(r24.xy) * lightConstantsCB[r7.w].data[12].xy + lightConstantsCB[r7.w].data[12].zw);
            r23.yz = r21.yz * r21.yz;
            r21.yz = r21.yz * float2(-2,-2) + float2(3,3);
            r21.yz = r23.yz * r21.yz;
            r12.w = r21.y * r21.z;
          } else {
            r35.xyzw = saturate(lightConstantsCB[r7.w].data[11].xyzw * abs(r24.yyxx));
            r35.xyzw = log2(r35.xyzw);
            r35.xyzw = lightConstantsCB[r7.w].data[12].zzzz * r35.xyzw;
            r35.xyzw = exp2(r35.xyzw);
            r21.yz = r35.xy + r35.zw;
            r21.yz = log2(r21.yz);
            r21.yz = lightConstantsCB[r7.w].data[12].ww * r21.yz;
            r21.yz = exp2(r21.yz);
            r14.w = lightConstantsCB[r7.w].data[12].x * r21.y;
            r16.w = lightConstantsCB[r7.w].data[12].y * r21.z + -1;
            r14.w = lightConstantsCB[r7.w].data[12].y * r21.z + -r14.w;
            r14.w = saturate(r16.w / r14.w);
            r16.w = r14.w * r14.w;
            r14.w = r14.w * -2 + 3;
            r12.w = r16.w * r14.w;
          }
          r13.w = r14.y * r12.w;
          r12.w = 255 & (int)lightConstantsCB[r7.w].data[14].w;
          if (r12.w != 0) {
            r14.y = dot(lightConstantsCB[r7.w].data[13].xyz, r24.xyz);
            r35.x = lightConstantsCB[r7.w].data[13].w;
            r35.yz = lightConstantsCB[r7.w].data[14].xy;
            r14.w = dot(r35.xyz, r24.xyz);
            r35.xy = frac(r14.yw);
            r12.w = (int)r12.w + -1;
            r35.z = (uint)r12.w;
            r20.yzw = gCookieArray.SampleLevel(samplerLinear_s, r35.xyz, 0).xyz;
          } else {
            r20.yzw = float3(1,1,1);
          }
        }
        r35.x = lightConstantsCB[r7.w].data[0].w;
        r35.yz = lightConstantsCB[r7.w].data[1].xy;
        r20.yzw = r35.xyz * r20.yzw;
        r12.w = cmp(0 < r13.w);
        if (r12.w != 0) {
          if (3 == 0) r12.w = 0; else if (3+27 < 32) {           r12.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)lightConstantsCB[r7.w].data[1].w >> 27;
          r14.y = (int)r8.w & 7;
          r14.w = (int)r14.y + -1;
          r14.w = cmp((uint)r14.w < 32);
          r14.w = r14.w ? r2.w : 0;
          if (r14.w != 0) {
            r14.yw = mad((int2)r14.yy, int2(24,24), int2(88,104));
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r16.w, cb2[52].x, r14.y, u2.xxxx
          r16.w = samplerLinear[]..swiz;
            r16.w = (int)r16.w | 4;
            GBufferDiffuseColor[viewID].r14.y = u2.x;
            GBufferDiffuseColor[viewID].r14.w = u2.x;
          }
          r14.y = (int)r4.z + 257;
          r12.w = cmp((int)r12.w != 1);
          if (r12.w != 0) {
            r12.w = abs(r10.w) * -0.200000003 + 0.400000006;
            r25.xyz = r11.xyz * r12.www + r5.xyz;
            r35.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r35.w = lightConstantsCB[r7.w].data[7].x;
            r12.w = dot(r35.xyzw, r25.xyzw);
            r14.w = dot(r34.xyzw, r25.xyzw);
            r16.w = cmp(r14.w >= r12.w);
            if (r16.w != 0) {
              r34.xyz = lightConstantsCB[r7.w].data[4].yzw;
              r34.w = lightConstantsCB[r7.w].data[5].x;
              r24.x = dot(r34.xyzw, r25.xyzw);
              r34.xyz = lightConstantsCB[r7.w].data[5].yzw;
              r34.w = lightConstantsCB[r7.w].data[6].x;
              r24.y = dot(r34.xyzw, r25.xyzw);
              r21.yz = r24.xy / r14.ww;
              r21.yz = saturate(r21.yz * float2(0.5,-0.5) + float2(0.5,0.5));
              r25.x = r21.y * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
              r25.y = r21.z * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
              r12.w = r12.w / r14.w;
              r12.w = max(6.10351563e-05, r12.w);
              r14.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r34.z = (uint)r14.w;
                r16.w = 0;
                r17.w = 0;
                while (true) {
                  r21.y = cmp((int)r17.w >= 8);
                  if (r21.y != 0) break;
                  r24.x = dot(icb[r17.w+0].xy, r28.xy);
                  r24.y = dot(icb[r17.w+0].yx, r28.xz);
                  r34.xy = r24.xy * lightConstantsCB[r7.w].data[3].yy + r25.xy;
                  r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r12.w).x;
                  r16.w = r21.y * 0.125 + r16.w;
                  r17.w = (int)r17.w + 1;
                }
              } else {
                r25.z = (uint)r14.w;
                r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r12.w).x;
              }
              r12.w = r16.w * r16.w;
              r12.w = r12.w * r16.w;
            } else {
              r12.w = 1;
            }
          } else {
            r12.w = 1;
          }
          r12.w = r13.w * r12.w;
          r13.w = cmp(0 < r12.w);
          if (r13.w != 0) {
            r13.w = lightConstantsCB[r7.w].data[1].z * r1.w;
            r13.w = r13.w * r11.w;
            if (4 == 0) r14.w = 0; else if (4+16 < 32) {             r14.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);            } else r14.w = (uint)lightConstantsCB[r7.w].data[1].w >> 16;
            r17.w = cmp(0 < (uint)r14.w);
            r17.w = r17.w ? r1.z : 0;
            if (r17.w != 0) {
              r14.w = (int)r14.w + numLights;
              r14.w = mad((int)r14.w, 15, -15);
              r17.w = abs(r10.w) * -0.200000003 + 0.400000006;
              r26.xyz = r11.xyz * r17.www + r5.xyz;
              r34.xyz = lightConstantsCB[r14.w].data[6].yzw;
              r34.w = lightConstantsCB[r14.w].data[7].x;
              r17.w = dot(r34.xyzw, r26.xyzw);
              r34.xyz = lightConstantsCB[r14.w].data[7].yzw;
              r34.w = lightConstantsCB[r14.w].data[8].x;
              r21.y = dot(r34.xyzw, r26.xyzw);
              r21.z = cmp(r21.y < r17.w);
              if (r21.z == 0) {
                r34.xyz = lightConstantsCB[r14.w].data[4].yzw;
                r34.w = lightConstantsCB[r14.w].data[5].x;
                r24.x = dot(r34.xyzw, r26.xyzw);
                r34.xyz = lightConstantsCB[r14.w].data[5].yzw;
                r34.w = lightConstantsCB[r14.w].data[6].x;
                r24.y = dot(r34.xyzw, r26.xyzw);
                r23.yz = r24.xy / r21.yy;
                r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r24.x = lightConstantsCB[r14.w].data[9].w + r23.y;
                r24.y = lightConstantsCB[r14.w].data[10].x + r23.z;
                r23.yz = lightConstantsCB[r14.w].data[9].yz * r24.xy;
                r24.xy = lightConstantsCB[r14.w].data[3].yy / lightConstantsCB[r14.w].data[8].yw;
                r25.xy = float2(1,1) + -r24.xy;
                r25.xy = cmp(r23.yz >= r25.xy);
                r24.xy = cmp(r24.xy >= r23.yz);
                r24.xy = (int2)r24.xy | (int2)r25.xy;
                r21.w = (int)r24.y | (int)r24.x;
                if (r21.w == 0) {
                  r23.yz = saturate(r23.yz);
                  r25.x = r23.y * lightConstantsCB[r14.w].data[8].y + lightConstantsCB[r14.w].data[8].z;
                  r25.y = r23.z * lightConstantsCB[r14.w].data[8].w + lightConstantsCB[r14.w].data[9].x;
                  r23.y = lightConstantsCB[r14.w].data[10].z * r21.y;
                  r17.w = lightConstantsCB[r14.w].data[10].y * r21.y + r17.w;
                  r17.w = r17.w / r23.y;
                }
              } else {
                r21.w = -1;
              }
              r21.y = (int)r21.z | (int)r21.w;
              if (r21.y == 0) {
                r17.w = max(6.10351563e-05, r17.w);
                r21.y = 0x0000ffff & (int)lightConstantsCB[r14.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r26.z = (uint)r21.y;
                  r21.zw = float2(0,0);
                  while (true) {
                    r23.y = cmp((int)r21.w >= 8);
                    if (r23.y != 0) break;
                    r24.x = dot(icb[r21.w+0].xy, r29.xy);
                    r24.y = dot(icb[r21.w+0].yx, r29.xz);
                    r26.xy = r24.xy * lightConstantsCB[r14.w].data[3].yy + r25.xy;
                    r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r17.w).x;
                    r21.z = r23.y * 0.125 + r21.z;
                    r21.w = (int)r21.w + 1;
                  }
                } else {
                  r25.z = (uint)r21.y;
                  r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r17.w).x;
                }
                r14.w = r21.z * r21.z;
                r14.w = r14.w * r21.z;
              } else {
                r14.w = 1;
              }
              r12.w = r14.w * r12.w;
            } else {
              if (4 == 0) r7.w = 0; else if (4+20 < 32) {               r7.w = (uint)lightConstantsCB[r7.w].data[1].w << (32-(4 + 20)); r7.w = (uint)r7.w >> (32-4);              } else r7.w = (uint)lightConstantsCB[r7.w].data[1].w >> 20;
              r14.w = cmp(0 < (uint)r7.w);
              r14.w = r14.w ? r3.w : 0;
              if (r14.w != 0) {
                r7.w = (int)r7.w + numLights;
                r7.w = mad((int)r7.w, 15, -15);
                r14.w = abs(r10.w) * -0.200000003 + 0.400000006;
                r27.xyz = r11.xyz * r14.www + r5.xyz;
                r34.xyz = lightConstantsCB[r7.w].data[6].yzw;
                r34.w = lightConstantsCB[r7.w].data[7].x;
                r14.w = dot(r34.xyzw, r27.xyzw);
                r34.xyz = lightConstantsCB[r7.w].data[7].yzw;
                r34.w = lightConstantsCB[r7.w].data[8].x;
                r17.w = dot(r34.xyzw, r27.xyzw);
                r21.y = cmp(r17.w < r14.w);
                if (r21.y == 0) {
                  r34.xyz = lightConstantsCB[r7.w].data[4].yzw;
                  r34.w = lightConstantsCB[r7.w].data[5].x;
                  r24.x = dot(r34.xyzw, r27.xyzw);
                  r34.xyz = lightConstantsCB[r7.w].data[5].yzw;
                  r34.w = lightConstantsCB[r7.w].data[6].x;
                  r24.y = dot(r34.xyzw, r27.xyzw);
                  r23.yz = r24.xy / r17.ww;
                  r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.x = lightConstantsCB[r7.w].data[9].w + r23.y;
                  r24.y = lightConstantsCB[r7.w].data[10].x + r23.z;
                  r23.yz = lightConstantsCB[r7.w].data[9].yz * r24.xy;
                  r24.xy = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                  r25.xy = float2(1,1) + -r24.xy;
                  r25.xy = cmp(r23.yz >= r25.xy);
                  r24.xy = cmp(r24.xy >= r23.yz);
                  r24.xy = (int2)r24.xy | (int2)r25.xy;
                  r21.w = (int)r24.y | (int)r24.x;
                  if (r21.w == 0) {
                    r23.yz = saturate(r23.yz);
                    r25.x = r23.y * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                    r25.y = r23.z * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                    r23.y = lightConstantsCB[r7.w].data[10].z * r17.w;
                    r14.w = lightConstantsCB[r7.w].data[10].y * r17.w + r14.w;
                    r14.w = r14.w / r23.y;
                  }
                } else {
                  r21.w = -1;
                }
                r17.w = (int)r21.y | (int)r21.w;
                if (r17.w == 0) {
                  r14.w = max(6.10351563e-05, r14.w);
                  r17.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                  if (enableDitheredShadow != 0) {
                    r26.z = (uint)r17.w;
                    r21.yw = float2(0,0);
                    while (true) {
                      r23.y = cmp((int)r21.w >= 8);
                      if (r23.y != 0) break;
                      r24.x = dot(icb[r21.w+0].xy, r30.xy);
                      r24.y = dot(icb[r21.w+0].yx, r30.xz);
                      r26.xy = r24.xy * lightConstantsCB[r7.w].data[3].yy + r25.xy;
                      r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r14.w).x;
                      r21.y = r23.y * 0.125 + r21.y;
                      r21.w = (int)r21.w + 1;
                    }
                  } else {
                    r25.z = (uint)r17.w;
                    r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r14.w).x;
                  }
                  r7.w = r21.y * r21.y;
                  r7.w = r7.w * r21.y;
                } else {
                  r7.w = 1;
                }
                r12.w = r12.w * r7.w;
              }
            }
            r7.w = -r11.w * r2.x + 1;
            r7.w = r7.w * r7.w;
            r7.w = -r7.w * 0.620000005 + 0.620000005;
            r7.w = r7.w + -r11.w;
            r7.w = r2.z * r7.w + r11.w;
            r7.w = r7.w * r12.w;
            r10.w = cmp(0 < r10.w);
            r25.xyz = r7.www * r20.yzw + r31.xyz;
            r22.xyz = r22.xyz * r9.www + r12.xyz;
            r7.w = dot(r22.xyz, r22.xyz);
            r7.w = rsqrt(r7.w);
            r22.xyz = r22.xyz * r7.www;
            r7.w = dot(r22.xyz, r12.xyz);
            r9.w = dot(r11.xyz, r22.xyz);
            r14.w = abs(r9.w) * r1.w + -abs(r9.w);
            r9.w = abs(r9.w) * r14.w + 1;
            r11.w = r11.w * r2.y + r3.z;
            r9.w = r9.w * r9.w;
            r9.w = r9.w * r11.w;
            r9.w = rcp(r9.w);
            r9.w = r9.w * r13.w;
            r9.w = r12.w * r9.w;
            r9.w = 0.25 * r9.w;
            r22.xyz = r9.www * r20.yzw + r33.xyz;
            r7.w = saturate(1 + -r7.w);
            r11.w = r7.w * r7.w;
            r11.w = r11.w * r11.w;
            r7.w = r11.w * r7.w;
            r7.w = r9.w * r7.w;
            r20.yzw = r7.www * r20.yzw + r32.xyz;
            r31.xyz = r10.www ? r25.xyz : r31.xyz;
            r32.xyz = r10.www ? r20.yzw : r32.xyz;
            r33.xyz = r10.www ? r22.xyz : r33.xyz;
            r7.w = (int)r14.y & 7;
            r9.w = (int)r7.w + -1;
            r9.w = cmp((uint)r9.w < 32);
            r9.w = r9.w ? r2.w : 0;
            if (r9.w != 0) {
              r20.yz = mad((int2)r7.ww, int2(24,24), int2(88,108));
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r7.w, cb2[52].x, r20.y, u2.xxxx
            r7.w = samplerLinear[]..swiz;
              r7.w = (int)r7.w | 8;
              GBufferDiffuseColor[viewID].r20.y = u2.x;
              GBufferDiffuseColor[viewID].r20.z = u2.x;
            }
            r4.z = (int)r4.z + 0x00010101;
          } else {
            r4.z = r14.y;
          }
        } else {
          r4.z = r8.w;
        }
      } else {
        r4.z = r8.w;
      }
      break;
      default :
      break;
    }
    r6.w = (int)r6.w + 1;
  }
  r3.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.y = (uint)r3.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.y == (int)r1.z);
  r1.zw = r1.zz ? r2.yz : float2(-1,0);
  r2.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.y == (int)r2.x);
  r2.xy = r2.xx ? r2.yz : float2(-1,0);
  r4.xyw = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r4.x;
  r2.z = cmp((int)r0.y == (int)r2.z);
  r4.xy = r2.zz ? r4.yw : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r7.x;
  r0.y = cmp((int)r0.y == (int)r2.z);
  r7.xy = r0.yy ? r7.yz : float2(-1,0);
  r8.x = r1.z;
  r8.y = r2.x;
  r8.z = r4.x;
  r8.w = r7.x;
  r8.xyzw = r8.xyzw + -r3.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.y = r8.x + r8.y;
  r0.y = r0.y + r8.z;
  r0.y = r0.y + r8.w;
  r1.z = r8.y * r2.y;
  r1.z = r8.x * r1.w + r1.z;
  r1.z = r8.z * r4.y + r1.z;
  r1.z = r8.w * r7.y + r1.z;
  r3.w = r1.z / r0.y;
  r0.y = cmp(0 >= r0.y);
  r3.yz = r0.yy ? float2(0,0) : r3.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.y = cmp((int)r1.w == (int)r1.z);
  r2.xyz = r0.yyy ? r3.xyz : r3.xzy;
  r0.y = -r2.z * 0.5 + r2.x;
  r3.y = r2.z + r0.y;
  r3.z = -r2.y * 0.5 + r0.y;
  r3.x = r3.z + r2.y;
  r2.xyz = float3(1,1,1) + -r3.xyz;
  r2.xyz = r32.xyz * r2.xyz;
  r2.xyz = r33.xyz * r3.xyz + r2.xyz;
  r2.xyz = r31.xyz * r6.xyz + r2.xyz;
  r0.y = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.y != 0) {
    r0.y = dot(r5.xyz, r5.xyz);
    r1.z = rsqrt(r0.y);
    r3.xyz = r5.xyz * r1.zzz;
    r0.y = sqrt(r0.y);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.yy * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r3.w = cmp(0.00999999978 < abs(r5.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r6.xy = float2(-1.44269502,-1.44269502) * r4.xy;
      r6.xy = exp2(r6.xy);
      r6.xy = float2(1,1) + -r6.xy;
      r4.xy = r6.xy / r4.xy;
      r4.xy = r4.xy * r1.zw;
      r1.zw = r3.ww ? r4.xy : r1.zw;
      r4.xyw = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyw = exp2(r4.xyw);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r4.xyw;
      r4.xyw = fogConstants.blendAmount * r6.xyz + r4.xyw;
    } else {
      r1.z = r0.y * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r5.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r5.w = -1.44269502 * r3.w;
      r5.w = exp2(r5.w);
      r5.w = 1 + -r5.w;
      r3.w = r5.w / r3.w;
      r3.w = r3.w * r1.z;
      r1.z = r1.w ? r3.w : r1.z;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyw = exp2(r6.xyz);
    }
    r4.xyw = r4.xyw * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyw = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyw);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.x = fogConstants.atmosphereMieSchlickK * -r1.z + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r1.w = r1.w / r3.x;
    r0.y = -fogConstants.atmospherehazebasedist + r0.y;
    r0.y = saturate(fogConstants.atmospherehazefadedist * r0.y);
    r0.y = r1.w * r0.y;
    r1.z = saturate(r1.z);
    r1.z = r1.z * r1.z + 1;
    r1.z = r1.z * 0.0596831031 + -1;
    r1.z = fogConstants.atmospheresunstrength * r1.z + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.yyy;
    r3.xyz = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r6.xyz = float3(1,1,1) + -r4.xyw;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyw + r3.xyz;
  } else {
    r0.y = fogConstants.heightFalloff * r5.z;
    r1.z = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r1.w = cmp(abs(r0.y) < 9.99999975e-05);
    r3.w = min(64, r1.z);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.y ? r3.w : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.y = r1.w ? 1 : r0.y;
    r0.y = r1.z / r0.y;
    r0.y = r1.w ? r4.x : r0.y;
    r0.y = fogConstants.expMul * r0.y;
    r1.z = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r1.z);
    r0.y = r0.y * r1.w + fogConstants.expAdd;
    r0.y = exp2(r0.y);
    r0.y = min(1, r0.y);
    r0.y = 1 + -r0.y;
    r1.z = rsqrt(r1.z);
    r4.xyw = r5.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyw);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r6.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r6.xyzw = r1.zzzz * r6.xyzw + fogConstants.sunFogColor.xyzw;
    r0.y = r6.w * r0.y;
    r4.xyw = r6.xyz + -r2.xyz;
    r3.xyz = r0.yyy * r4.xyw + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.y = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(3,12));
  r1.zw = r1.zw ? r3.xy : 0;
  r3.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 16);
  r1.z = r1.z ? r1.w : 0;
  r3.z = r1.z ? 0.200000 : 0;
  r3.xyz = r3.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.yyy ? r3.xyz : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.y = (int)r4.z & 3;
        break;
        case 2 :        if (2 == 0) r0.y = 0; else if (2+8 < 32) {         r0.y = (uint)r4.z << (32-(2 + 8)); r0.y = (uint)r0.y >> (32-2);        } else r0.y = (uint)r4.z >> 8;
        break;
        case 3 :        r0.y = (uint)r4.z >> 16;
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
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r4.z & 3;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.y = (int)r0.x & 15;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.y = (int)r4.z & 3;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.y
    InterlockedAdd(dest, value, orig_value);
    if (2 == 0) r1.x = 0; else if (2+8 < 32) {     r1.x = (uint)r4.z << (32-(2 + 8)); r1.x = (uint)r1.x >> (32-2);    } else r1.x = (uint)r4.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (uint)r4.z >> 16;
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