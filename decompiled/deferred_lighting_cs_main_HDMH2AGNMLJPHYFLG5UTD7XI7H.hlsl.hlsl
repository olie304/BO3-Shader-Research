// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:27 2021

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
  r0.x = mad(permuteStride, 30, (int)vThreadGroupID.x);
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
  r2.x = saturate(dot(r11.xyz, r12.xyz));
  r1.w = dot(-r12.xyz, r11.xyz);
  r1.w = r1.w + r1.w;
  r14.xyz = r11.xyz * -r1.www + -r12.xyz;
  r1.w = 17 * r2.y;
  r1.w = exp2(r1.w);
  r1.w = 2 + r1.w;
  r1.w = 2 / r1.w;
  r2.z = sqrt(r1.w);
  r3.yz = float2(0.5,0.5) * renderTargetSize.xy;
  r3.yz = (uint2)r3.yz;
  r3.yz = cmp((int2)r1.xy == (int2)r3.yz);
  r2.w = r3.z ? r3.y : 0;
  r3.y = 1 + -r2.y;
  r3.z = 5 * r3.y;
  r6.w = r3.y * 5 + -2.5;
  r6.w = 0.400000006 * r6.w;
  r6.w = max(0, r6.w);
  r6.w = 100 * r6.w;
  r13.yz = -r3.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r13.y);
  r7.w = r7.w * r2.x;
  r7.w = 9.1368103 * r7.w;
  r8.w = r3.z * r3.y;
  r8.w = -r8.w * 2.0159049 + r13.z;
  r8.w = exp2(r8.w);
  r8.w = r8.w * r2.x;
  r8.w = 9.70808983 * r8.w;
  r7.w = max(r8.w, r7.w);
  r7.w = max(1.26815999, r7.w);
  r8.w = numRefProbes + -numOverrideProbes;
  r13.yz = (uint2)r0.yx >> int2(24,24);
  if (10 == 0) r0.x = 0; else if (10+12 < 32) {   r0.x = (uint)r0.y << (32-(10 + 12)); r0.x = (uint)r0.x >> (32-10);  } else r0.x = (uint)r0.y >> 12;
  r15.x = 16;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.xz = float2(1,1);
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xyzw = float4(0,0,0,0);
  r22.xyzw = float4(0,0,0,0);
  r0.y = 0;
  while (true) {
    r9.w = cmp((int)r0.y == 2);
    if (r9.w != 0) break;
    r9.w = r0.y ? r0.x : r13.y;
    r10.w = cmp((uint)r9.w >= (uint)r8.w);
    r12.w = cmp((uint)r9.w < numRefProbes);
    r10.w = r10.w ? r12.w : 0;
    if (r10.w != 0) {
      r9.w = (int)r9.w * 14;
      if (r2.w != 0) {
        r10.w = (int)r22.w & 3;
        r10.w = mad((int)r10.w, 20, 880);
        r15.yzw = refProbeConstantsCB[r9.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r10.w = u2.xyzw;
      }
      r23.w = (int)r22.w + 1;
      r15.yzw = -refProbeConstantsCB[r9.w].data[0].xyz + r5.xyz;
      r10.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
      if (6 == 0) r12.w = 0; else if (6+25 < 32) {       r12.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);      } else r12.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
      r13.w = (int)r10.w * 6;
      r16.w = dot(refProbeAttenuationConstantsCB[r13.w].data[0].xyz, r15.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[0].w + r16.w);
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[1].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[1].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[2].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[2].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[3].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[3].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[4].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[4].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[5].xyz, r15.yzw);
      r13.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[5].w + r17.w);
      r16.x = r16.w * r13.w;
      r13.w = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
      r16.xw = r13.ww ? r16.xy : r16.zx;
      r13.w = refProbeConstantsCB[r9.w].data[6].x;
      r24.xy = r16.xw;
      r17.w = 1;
      while (true) {
        r19.w = cmp((int)r17.w >= (int)r12.w);
        if (r19.w != 0) break;
        r19.w = (int)r10.w + (int)r17.w;
        r19.w = (int)r19.w * 6;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.w].data[0].xyz, r15.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[0].w + r20.w);
        r20.w = r24.x * r20.w;
        r24.z = dot(refProbeAttenuationConstantsCB[r19.w].data[1].xyz, r15.yzw);
        r24.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[1].w + r24.z);
        r20.w = r24.z * r20.w;
        r24.z = dot(refProbeAttenuationConstantsCB[r19.w].data[2].xyz, r15.yzw);
        r24.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[2].w + r24.z);
        r20.w = r24.z * r20.w;
        r24.z = dot(refProbeAttenuationConstantsCB[r19.w].data[3].xyz, r15.yzw);
        r24.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[3].w + r24.z);
        r20.w = r24.z * r20.w;
        r24.z = dot(refProbeAttenuationConstantsCB[r19.w].data[4].xyz, r15.yzw);
        r24.z = saturate(refProbeAttenuationConstantsCB[r19.w].data[4].w + r24.z);
        r20.w = r24.z * r20.w;
        r24.z = dot(refProbeAttenuationConstantsCB[r19.w].data[5].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[5].w + r24.z);
        r24.x = r20.w * r19.w;
        r24.z = (uint)r13.w >> 2;
        if (1 == 0) r24.w = 0; else if (1+2 < 32) {         r24.w = (uint)r13.w << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);        } else r24.w = (uint)r13.w >> 2;
        r25.x = (int)r24.z & 2;
        r25.y = max(r24.y, r24.x);
        r19.w = -r20.w * r19.w + 1;
        r19.w = r24.y * r19.w;
        r18.y = r25.x ? r19.w : r25.y;
        r24.xy = r24.ww ? r24.xy : r18.xy;
        r17.w = (int)r17.w + 1;
        r13.w = r24.z;
      }
      r24.y = saturate(r24.y);
      r10.w = refProbeConstantsCB[r9.w].data[6].y * r24.y;
      r12.w = cmp(0 < r10.w);
      if (r12.w != 0) {
        r12.w = (int)r23.w & 7;
        r13.w = (int)r12.w + -1;
        r13.w = cmp((uint)r13.w < 32);
        r13.w = r13.w ? r2.w : 0;
        if (r13.w != 0) {
          r16.xw = mad((int2)r12.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r12.w, cb2[52].x, r16.x, u2.xxxx
        r12.w = samplerLinear[]..swiz;
          r12.w = (int)r12.w | 32;
          GBufferDiffuseColor[viewID].r16.x = u2.x;
          GBufferDiffuseColor[viewID].r16.w = u2.x;
        }
        r22.w = (int)r22.w + 257;
        r22.z = r24.y * refProbeConstantsCB[r9.w].data[6].y + r22.z;
        r10.w = refProbeConstantsCB[r9.w].data[7].y * r10.w;
        r25.x = refProbeConstantsCB[r9.w].data[7].w;
        r25.yz = refProbeConstantsCB[r9.w].data[8].xy;
        r12.w = dot(r14.xyz, r25.xyz);
        r13.w = dot(r15.yzw, r25.xyz);
        r13.w = -refProbeConstantsCB[r9.w].data[8].z + r13.w;
        r16.x = cmp(r13.w >= 0);
        r13.w = max(abs(r13.w), r6.w);
        r13.w = r16.x ? r13.w : -r13.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.w / r12.w;
        r12.w = min(131072, abs(r12.w));
        r25.x = refProbeConstantsCB[r9.w].data[8].w;
        r25.yz = refProbeConstantsCB[r9.w].data[9].xy;
        r13.w = dot(r14.xyz, r25.xyz);
        r16.x = dot(r15.yzw, r25.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[9].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r25.x = refProbeConstantsCB[r9.w].data[9].w;
        r25.yz = refProbeConstantsCB[r9.w].data[10].xy;
        r13.w = dot(r14.xyz, r25.xyz);
        r16.x = dot(r15.yzw, r25.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[10].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r25.x = refProbeConstantsCB[r9.w].data[10].w;
        r25.yz = refProbeConstantsCB[r9.w].data[11].xy;
        r13.w = dot(r14.xyz, r25.xyz);
        r16.x = dot(r15.yzw, r25.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[11].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r25.x = refProbeConstantsCB[r9.w].data[11].w;
        r25.yz = refProbeConstantsCB[r9.w].data[12].xy;
        r13.w = dot(r14.xyz, r25.xyz);
        r16.x = dot(r15.yzw, r25.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[12].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r25.x = refProbeConstantsCB[r9.w].data[12].w;
        r25.yz = refProbeConstantsCB[r9.w].data[13].xy;
        r13.w = dot(r14.xyz, r25.xyz);
        r16.x = dot(r15.yzw, r25.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[13].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r25.x = refProbeConstantsCB[r9.w].data[3].w + r15.y;
        r25.yz = refProbeConstantsCB[r9.w].data[4].xy + r15.zw;
        r24.xzw = r14.xyz * r12.www + r25.xyz;
        r13.w = dot(r24.xzw, r24.xzw);
        r13.w = sqrt(r13.w);
        r12.w = r12.w / r13.w;
        r12.w = r12.w + r12.w;
        r12.w = sqrt(r12.w);
        r12.w = r3.y * 5 + r12.w;
        r12.w = -0.844799995 + r12.w;
        r25.x = refProbeConstantsCB[r9.w].data[0].w;
        r25.y = refProbeConstantsCB[r9.w].data[1].z;
        r25.z = refProbeConstantsCB[r9.w].data[2].y;
        r26.x = dot(r24.xzw, r25.xyz);
        r27.xy = refProbeConstantsCB[r9.w].data[1].xw;
        r27.z = refProbeConstantsCB[r9.w].data[2].z;
        r26.y = dot(r24.xzw, r27.xyz);
        r28.x = refProbeConstantsCB[r9.w].data[1].y;
        r28.yz = refProbeConstantsCB[r9.w].data[2].xw;
        r26.z = dot(r24.xzw, r28.xyz);
        if (9 == 0) r13.w = 0; else if (9+16 < 32) {         r13.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);        } else r13.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
        r26.w = (uint)r13.w;
        r24.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, r12.w).xyz;
        r29.xyz = (int3)r24.xzw & int3(-2147483648,-2147483648,-2147483648);
        r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
        r12.w = (int)r29.y | (int)r29.x;
        r12.w = (int)r29.z | (int)r12.w;
        r24.xzw = r12.www ? float3(1,1,0) : r24.xzw;
        r29.x = dot(r15.yzw, r25.xyz);
        r29.y = dot(r15.yzw, r27.xyz);
        r29.z = dot(r15.yzw, r28.xyz);
        r15.yzw = saturate(r29.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
        r29.xy = refProbeConstantsCB[r9.w].data[4].zw * r15.yz;
        r29.z = refProbeConstantsCB[r9.w].data[5].x * r15.w;
        r15.yzw = refProbeConstantsCB[r9.w].data[5].yzw + r29.xyz;
        r26.x = dot(r11.xyz, r25.xyz);
        r26.y = dot(r11.xyz, r27.xyz);
        r26.z = dot(r11.xyz, r28.xyz);
        r25.xyz = cmp(float3(0,0,0) < r26.xyz);
        r17.z = r25.x ? 0 : 0.5;
        r27.xyz = r17.xyz + r15.yzw;
        r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
        r28.xyz = r26.xyz * r26.xyz;
        r28.xyz = r28.xyz * r10.www;
        r19.z = r25.y ? 0 : 0.5;
        r25.xyw = r19.xyz + r15.yzw;
        r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
        r25.xyw = r25.xyw * r28.yyy;
        r25.xyw = r27.xyz * r28.xxx + r25.xyw;
        r20.z = r25.z ? 0 : 0.5;
        r15.yzw = r20.xyz + r15.yzw;
        r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
        r15.yzw = r15.yzw * r28.zzz + r25.xyw;
        r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, 6).xyz;
        r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
        r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
        r9.w = (int)r26.y | (int)r26.x;
        r9.w = (int)r26.z | (int)r9.w;
        r25.xyz = r9.www ? float3(1,1,0) : r25.xyz;
        r26.xyz = r25.xyz * r15.yzw;
        r9.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r21.xyz = r15.yzw * r25.xyz + r21.xyz;
        r12.w = r9.w * r7.w;
        r15.yzw = r24.xzw * r10.www;
        r10.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r9.w = r7.w * r9.w + r10.w;
        r9.w = r12.w / r9.w;
        r25.x = r21.w;
        r25.yz = r22.xy;
        r15.yzw = r15.yzw * r9.www + r25.xyz;
        r21.w = r15.y;
        r22.xy = r15.zw;
      } else {
        r23.xyz = r22.xyz;
        r22.xyzw = r23.xyzw;
      }
    }
    r0.y = (int)r0.y + 1;
  }
  r15.x = 16;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r23.xyz = r21.xyz;
  r24.x = r21.w;
  r24.yz = r22.xy;
  r18.xy = r22.zw;
  r0.y = 0;
  while (true) {
    r9.w = cmp((int)r0.y == 2);
    if (r9.w != 0) break;
    r9.w = r0.y ? r0.x : r13.y;
    r10.w = cmp((uint)r9.w < (uint)r8.w);
    if (r10.w != 0) {
      r9.w = (int)r9.w * 14;
      if (r2.w != 0) {
        r10.w = (int)r18.y & 15;
        r10.w = mad((int)r10.w, 20, 880);
        r15.yzw = refProbeConstantsCB[r9.w].data[0].xyz + eyeOffset.xyz;
        GBufferDiffuseColor[viewID].r10.w = u2.xyzw;
      }
      r25.y = (int)r18.y + 1;
      r15.yzw = -refProbeConstantsCB[r9.w].data[0].xyz + r5.xyz;
      r10.w = 0x0000ffff & (int)refProbeConstantsCB[r9.w].data[7].z;
      if (6 == 0) r12.w = 0; else if (6+25 < 32) {       r12.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);      } else r12.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 25;
      r13.w = (int)r10.w * 6;
      r16.w = dot(refProbeAttenuationConstantsCB[r13.w].data[0].xyz, r15.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[0].w + r16.w);
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[1].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[1].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[2].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[2].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[3].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[3].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[4].xyz, r15.yzw);
      r17.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[4].w + r17.w);
      r16.w = r17.w * r16.w;
      r17.w = dot(refProbeAttenuationConstantsCB[r13.w].data[5].xyz, r15.yzw);
      r13.w = saturate(refProbeAttenuationConstantsCB[r13.w].data[5].w + r17.w);
      r16.x = r16.w * r13.w;
      r13.w = 1 & (int)refProbeConstantsCB[r9.w].data[6].x;
      r16.xw = r13.ww ? r16.xy : r16.zx;
      r13.w = refProbeConstantsCB[r9.w].data[6].x;
      r26.xy = r16.xw;
      r17.w = 1;
      while (true) {
        r19.w = cmp((int)r17.w >= (int)r12.w);
        if (r19.w != 0) break;
        r19.w = (int)r10.w + (int)r17.w;
        r19.w = (int)r19.w * 6;
        r20.w = dot(refProbeAttenuationConstantsCB[r19.w].data[0].xyz, r15.yzw);
        r20.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[0].w + r20.w);
        r20.w = r26.x * r20.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r19.w].data[1].xyz, r15.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[1].w + r23.w);
        r20.w = r23.w * r20.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r19.w].data[2].xyz, r15.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[2].w + r23.w);
        r20.w = r23.w * r20.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r19.w].data[3].xyz, r15.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[3].w + r23.w);
        r20.w = r23.w * r20.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r19.w].data[4].xyz, r15.yzw);
        r23.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[4].w + r23.w);
        r20.w = r23.w * r20.w;
        r23.w = dot(refProbeAttenuationConstantsCB[r19.w].data[5].xyz, r15.yzw);
        r19.w = saturate(refProbeAttenuationConstantsCB[r19.w].data[5].w + r23.w);
        r26.x = r20.w * r19.w;
        r23.w = (uint)r13.w >> 2;
        if (1 == 0) r24.w = 0; else if (1+2 < 32) {         r24.w = (uint)r13.w << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);        } else r24.w = (uint)r13.w >> 2;
        r25.z = (int)r23.w & 2;
        r25.w = max(r26.y, r26.x);
        r19.w = -r20.w * r19.w + 1;
        r19.w = r26.y * r19.w;
        r18.w = r25.z ? r19.w : r25.w;
        r26.xy = r24.ww ? r26.xy : r18.zw;
        r17.w = (int)r17.w + 1;
        r13.w = r23.w;
      }
      r10.w = saturate(r26.y + -r22.z);
      r12.w = refProbeConstantsCB[r9.w].data[6].y * r10.w;
      r13.w = cmp(0 < r12.w);
      if (r13.w != 0) {
        r13.w = (int)r25.y & 31;
        r16.x = (int)r13.w + -1;
        r16.x = cmp((uint)r16.x < 32);
        r16.x = r16.x ? r2.w : 0;
        if (r16.x != 0) {
          r16.xw = mad((int2)r13.ww, int2(20,20), int2(860,876));
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r13.w, cb2[52].x, r16.x, u2.xxxx
        r13.w = samplerLinear[]..swiz;
          r13.w = (int)r13.w | 32;
          GBufferDiffuseColor[viewID].r16.x = u2.x;
          GBufferDiffuseColor[viewID].r16.w = u2.x;
        }
        r18.y = (int)r18.y + 257;
        r18.x = r10.w * refProbeConstantsCB[r9.w].data[6].y + r18.x;
        r10.w = refProbeConstantsCB[r9.w].data[7].y * r12.w;
        r27.x = refProbeConstantsCB[r9.w].data[7].w;
        r27.yz = refProbeConstantsCB[r9.w].data[8].xy;
        r12.w = dot(r14.xyz, r27.xyz);
        r13.w = dot(r15.yzw, r27.xyz);
        r13.w = -refProbeConstantsCB[r9.w].data[8].z + r13.w;
        r16.x = cmp(r13.w >= 0);
        r13.w = max(abs(r13.w), r6.w);
        r13.w = r16.x ? r13.w : -r13.w;
        r12.w = max(1.00000001e-07, -r12.w);
        r12.w = r13.w / r12.w;
        r12.w = min(131072, abs(r12.w));
        r27.x = refProbeConstantsCB[r9.w].data[8].w;
        r27.yz = refProbeConstantsCB[r9.w].data[9].xy;
        r13.w = dot(r14.xyz, r27.xyz);
        r16.x = dot(r15.yzw, r27.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[9].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r27.x = refProbeConstantsCB[r9.w].data[9].w;
        r27.yz = refProbeConstantsCB[r9.w].data[10].xy;
        r13.w = dot(r14.xyz, r27.xyz);
        r16.x = dot(r15.yzw, r27.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[10].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r27.x = refProbeConstantsCB[r9.w].data[10].w;
        r27.yz = refProbeConstantsCB[r9.w].data[11].xy;
        r13.w = dot(r14.xyz, r27.xyz);
        r16.x = dot(r15.yzw, r27.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[11].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r27.x = refProbeConstantsCB[r9.w].data[11].w;
        r27.yz = refProbeConstantsCB[r9.w].data[12].xy;
        r13.w = dot(r14.xyz, r27.xyz);
        r16.x = dot(r15.yzw, r27.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[12].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r27.x = refProbeConstantsCB[r9.w].data[12].w;
        r27.yz = refProbeConstantsCB[r9.w].data[13].xy;
        r13.w = dot(r14.xyz, r27.xyz);
        r16.x = dot(r15.yzw, r27.xyz);
        r16.x = -refProbeConstantsCB[r9.w].data[13].z + r16.x;
        r16.w = cmp(r16.x >= 0);
        r16.x = max(abs(r16.x), r6.w);
        r16.x = r16.w ? r16.x : -r16.x;
        r13.w = max(1.00000001e-07, -r13.w);
        r13.w = r16.x / r13.w;
        r12.w = min(abs(r13.w), r12.w);
        r27.x = refProbeConstantsCB[r9.w].data[3].w + r15.y;
        r27.yz = refProbeConstantsCB[r9.w].data[4].xy + r15.zw;
        r26.xzw = r14.xyz * r12.www + r27.xyz;
        r13.w = dot(r26.xzw, r26.xzw);
        r13.w = sqrt(r13.w);
        r12.w = r12.w / r13.w;
        r12.w = r12.w + r12.w;
        r12.w = sqrt(r12.w);
        r12.w = r3.y * 5 + r12.w;
        r12.w = -0.844799995 + r12.w;
        r27.x = refProbeConstantsCB[r9.w].data[0].w;
        r27.y = refProbeConstantsCB[r9.w].data[1].z;
        r27.z = refProbeConstantsCB[r9.w].data[2].y;
        r28.x = dot(r26.xzw, r27.xyz);
        r29.xy = refProbeConstantsCB[r9.w].data[1].xw;
        r29.z = refProbeConstantsCB[r9.w].data[2].z;
        r28.y = dot(r26.xzw, r29.xyz);
        r30.x = refProbeConstantsCB[r9.w].data[1].y;
        r30.yz = refProbeConstantsCB[r9.w].data[2].xw;
        r28.z = dot(r26.xzw, r30.xyz);
        if (9 == 0) r13.w = 0; else if (9+16 < 32) {         r13.w = (uint)refProbeConstantsCB[r9.w].data[7].z << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);        } else r13.w = (uint)refProbeConstantsCB[r9.w].data[7].z >> 16;
        r28.w = (uint)r13.w;
        r26.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r12.w).xyz;
        r31.xyz = (int3)r26.xzw & int3(-2147483648,-2147483648,-2147483648);
        r31.xyz = cmp((int3)r31.xyz == int3(2139095040,2139095040,2139095040));
        r12.w = (int)r31.y | (int)r31.x;
        r12.w = (int)r31.z | (int)r12.w;
        r26.xzw = r12.www ? float3(1,1,0) : r26.xzw;
        r31.x = dot(r15.yzw, r27.xyz);
        r31.y = dot(r15.yzw, r29.xyz);
        r31.z = dot(r15.yzw, r30.xyz);
        r15.yzw = saturate(r31.xyz * refProbeConstantsCB[r9.w].data[3].xyz + float3(0.5,0.5,0.5));
        r31.xy = refProbeConstantsCB[r9.w].data[4].zw * r15.yz;
        r31.z = refProbeConstantsCB[r9.w].data[5].x * r15.w;
        r15.yzw = refProbeConstantsCB[r9.w].data[5].yzw + r31.xyz;
        r28.x = dot(r11.xyz, r27.xyz);
        r28.y = dot(r11.xyz, r29.xyz);
        r28.z = dot(r11.xyz, r30.xyz);
        r27.xyz = cmp(float3(0,0,0) < r28.xyz);
        r17.z = r27.x ? 0 : 0.5;
        r29.xyz = r17.xyz + r15.yzw;
        r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
        r30.xyz = r28.xyz * r28.xyz;
        r30.xyz = r30.xyz * r10.www;
        r19.z = r27.y ? 0 : 0.5;
        r27.xyw = r19.xyz + r15.yzw;
        r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
        r27.xyw = r27.xyw * r30.yyy;
        r27.xyw = r29.xyz * r30.xxx + r27.xyw;
        r20.z = r27.z ? 0 : 0.5;
        r15.yzw = r20.xyz + r15.yzw;
        r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
        r15.yzw = r15.yzw * r30.zzz + r27.xyw;
        r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
        r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
        r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
        r9.w = (int)r28.y | (int)r28.x;
        r9.w = (int)r28.z | (int)r9.w;
        r27.xyz = r9.www ? float3(1,1,0) : r27.xyz;
        r28.xyz = r27.xyz * r15.yzw;
        r9.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
        r23.xyz = r15.yzw * r27.xyz + r23.xyz;
        r12.w = r9.w * r7.w;
        r15.yzw = r26.xzw * r10.www;
        r10.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
        r9.w = r7.w * r9.w + r10.w;
        r9.w = r12.w / r9.w;
        r24.xyz = r15.yzw * r9.www + r24.xyz;
      } else {
        r25.x = r18.x;
        r18.xy = r25.xy;
      }
    }
    r0.y = (int)r0.y + 1;
  }
  r0.x = cmp(r22.z >= 1);
  bitmask.y = ((~(-1 << 8)) << 0) & 0xffffffff;  r0.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r22.w & ~bitmask.y);
  r0.x = r0.x ? r0.y : r18.y;
  r0.y = max(1, r18.x);
  r0.y = rcp(r0.y);
  r18.x = saturate(r18.x);
  r15.xyz = r23.xyz * r0.yyy;
  r16.xyz = r24.xyz * r0.yyy;
  r3.y = cmp(r18.x < 0.99000001);
  if (r3.y != 0) {
    r0.x = (int)r0.x + 256;
    r3.y = 1 + -r18.x;
    r6.w = sunConstants.globalProbeExposure * r3.y;
    r17.xyz = -globalProbeConstants.data[0].xyz + r5.xyz;
    r18.x = globalProbeConstants.data[0].w * r17.x;
    r18.yz = globalProbeConstants.data[1].xy * r17.yz;
    r17.xyz = saturate(float3(0.5,0.5,0.5) + r18.xyz);
    r18.xy = globalProbeConstants.data[1].zw * r17.xy;
    r18.z = globalProbeConstants.data[2].x * r17.z;
    r17.xyz = globalProbeConstants.data[2].yzw + r18.xyz;
    r18.xyz = cmp(float3(0,0,0) < r11.xyz);
    r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r18.w = 0;
    r19.xyz = r18.wwx + r17.xyz;
    r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r20.xyz = r11.xyz * r11.xyz;
    r20.xyz = r20.xyz * r6.www;
    r21.xyz = r18.wwy + r17.xyz;
    r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r21.xyz = r21.xyz * r20.yyy;
    r19.xyz = r19.xyz * r20.xxx + r21.xyz;
    r17.xyz = r18.wwz + r17.xyz;
    r17.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r17.xyz = r17.xyz * r20.zzz + r19.xyz;
    r11.w = 0;
    r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r17.xyz = r18.xyz * r17.xyz;
    r6.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r15.xyz = r23.xyz * r0.yyy + r17.xyz;
    r14.w = 0;
    r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r3.z).xyz;
    r0.y = sunConstants.globalProbeExposure * r3.y + -r6.w;
    r0.y = r2.y * r0.y + r6.w;
    r16.xyz = r17.xyz * r0.yyy + r16.xyz;
  }
  r0.y = r2.x + r4.z;
  r0.y = log2(abs(r0.y));
  r0.y = r2.z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y + r4.z;
  r0.y = saturate(-1 + r0.y);
  r17.xyz = r15.xyz * r4.zzz;
  r18.xyz = r3.www ? r17.xyz : 0;
  r3.yz = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r3.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r3.yz, 0).xy;
  r16.xyz = r16.xyz * r0.yyy;
  r19.xyz = r16.xyz * r3.yyy;
  r16.xyz = r16.xyz * r3.zzz;
  r0.y = sqrt(r2.z);
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = r0.y * r0.y;
  r2.y = 0.5 * r0.y;
  r0.y = -r0.y * 0.5 + 1;
  r3.y = r2.x * r0.y + r2.y;
  r0.y = r3.y * r0.y;
  r2.y = r3.y * r2.y;
  r3.y = (int)r13.z * 15;
  if (3 == 0) r3.z = 0; else if (3+24 < 32) {   r3.z = (uint)lightConstantsCB[r3.y].data[1].w << (32-(3 + 24)); r3.z = (uint)r3.z >> (32-3);  } else r3.z = (uint)lightConstantsCB[r3.y].data[1].w >> 24;
  switch (r3.z) {
    case 4 :    if (r2.w != 0) {
      r20.yzw = lightConstantsCB[r3.y].data[0].xyz + eyeOffset.xyz;
      r20.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r6.w = cmp(0 < lightConstantsCB[r3.y].data[6].y);
    r20.xy = lightConstantsCB[r3.y].data[5].zw;
    r20.z = lightConstantsCB[r3.y].data[6].x;
    r13.yzw = -r20.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r3.y].data[0].xyz;
    r21.xyz = r13.yzw + -r5.xyz;
    r7.w = dot(r20.xyz, r21.xyz);
    r8.w = saturate(-r7.w / lightConstantsCB[r3.y].data[6].y);
    r22.xyz = r8.www * r20.xyz + r13.yzw;
    r22.xyz = r6.www ? r22.xyz : lightConstantsCB[r3.y].data[0].xyz;
    r22.xyz = r22.xyz + -r5.xyz;
    r9.w = dot(r22.xyz, r22.xyz);
    r10.w = rsqrt(r9.w);
    r22.xyz = r22.xyz * r10.www;
    r10.w = dot(r11.xyz, r22.xyz);
    r11.w = saturate(r10.w);
    r11.w = r3.w ? abs(r10.w) : r11.w;
    r12.w = cmp(0 < r11.w);
    if (r12.w != 0) {
      r12.w = sqrt(r9.w);
      r14.w = lightConstantsCB[r3.y].data[3].x * lightConstantsCB[r3.y].data[3].x;
      r9.w = r14.w / r9.w;
      r9.w = min(1, r9.w);
      r22.xy = saturate(r12.ww * lightConstantsCB[r3.y].data[2].xz + lightConstantsCB[r3.y].data[2].yw);
      r22.zw = r22.xy * r22.xy;
      r22.xy = r22.xy * float2(-2,-2) + float2(3,3);
      r22.xy = r22.zw * r22.xy;
      r9.w = r22.x * r9.w;
      r9.w = r9.w * r22.y;
      r12.w = cmp(0 < r9.w);
      if (r12.w != 0) {
        if (3 == 0) r12.w = 0; else if (3+27 < 32) {         r12.w = (uint)lightConstantsCB[r3.y].data[1].w << (32-(3 + 27)); r12.w = (uint)r12.w >> (32-3);        } else r12.w = (uint)lightConstantsCB[r3.y].data[1].w >> 27;
        if (r2.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r14.w, cb2[52].x, l(112), u2.xxxx
        r14.w = samplerLinear[]..swiz;
          r14.w = (int)r14.w | 4;
          GBufferDiffuseColor[viewID].112 = u2.x;
          GBufferDiffuseColor[viewID].128 = u2.x;
        }
        r12.w = cmp((int)r12.w != 1);
        if (r12.w != 0) {
          r22.xy = (uint2)r1.yx;
          r12.w = dot(r22.xy, float2(0.0671105608,0.00583714992));
          r12.w = frac(r12.w);
          r12.w = 52.9829178 * r12.w;
          r12.w = frac(r12.w);
          r12.w = r12.w * 6.28318548 + gameTick.w;
          sincos(r12.w, r22.x, r23.x);
          r12.w = abs(r10.w) * -0.200000003 + 0.400000006;
          r14.w = cmp(r10.w < 0);
          r14.w = r3.w ? r14.w : 0;
          r12.w = r14.w ? -r12.w : r12.w;
          r22.yzw = r11.xyz * r12.www + r5.xyz;
          r22.yzw = -lightConstantsCB[r3.y].data[4].yzw + r22.yzw;
          r12.w = max(abs(r22.z), abs(r22.w));
          r12.w = max(abs(r22.y), r12.w);
          r12.w = lightConstantsCB[r3.y].data[5].x / r12.w;
          r12.w = lightConstantsCB[r3.y].data[5].y + r12.w;
          r14.w = dot(r22.yzw, r22.yzw);
          r14.w = rsqrt(r14.w);
          r12.w = max(6.10351563e-05, r12.w);
          r15.w = 0x0000ffff & (int)lightConstantsCB[r3.y].data[1].w;
          r24.x = -r3.x;
          r25.w = (uint)r15.w;
          r24.y = r13.x;
          r24.z = r3.x;
          r15.w = 0;
          r16.w = 0;
          while (true) {
            r17.w = cmp((int)r16.w >= 8);
            if (r17.w != 0) break;
            r23.y = dot(icb[r16.w+0].yx, r24.xy);
            r23.z = dot(icb[r16.w+0].yx, r24.yz);
            r26.yz = lightConstantsCB[r3.y].data[3].yy * r23.yz;
            r26.x = r26.y * r23.x;
            r26.w = r26.y * r22.x;
            r25.xyz = r22.yzw * r14.www + r26.xzw;
            r17.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyzw, r12.w).x;
            r15.w = r17.w * 0.125 + r15.w;
            r16.w = (int)r16.w + 1;
          }
        } else {
          r15.w = 1;
        }
        r9.w = r15.w * r9.w;
        r12.w = cmp(0 < r9.w);
        if (r12.w != 0) {
          r12.w = lightConstantsCB[r3.y].data[1].z * r1.w;
          r12.w = 0.25 * r12.w;
          r14.w = dot(r20.xyz, r14.xyz);
          r14.x = dot(r14.xyz, r21.xyz);
          r14.y = -r14.w * r14.w + lightConstantsCB[r3.y].data[6].y;
          r7.w = r14.w * r14.x + -r7.w;
          r7.w = saturate(r7.w / r14.y);
          r14.x = r14.y / lightConstantsCB[r3.y].data[6].y;
          r14.x = 10 * r14.x;
          r14.x = min(1, r14.x);
          r7.w = r7.w + -r8.w;
          r7.w = r14.x * r7.w + r8.w;
          r13.yzw = r7.www * r20.xyz + r13.yzw;
          r13.yzw = r6.www ? r13.yzw : lightConstantsCB[r3.y].data[0].xyz;
          r13.yzw = r13.yzw + -r5.xyz;
          r6.w = dot(r13.yzw, r13.yzw);
          r6.w = rsqrt(r6.w);
          r14.xyz = r13.yzw * r6.www;
          if (4 == 0) r7.w = 0; else if (4+16 < 32) {           r7.w = (uint)lightConstantsCB[r3.y].data[1].w << (32-(4 + 16)); r7.w = (uint)r7.w >> (32-4);          } else r7.w = (uint)lightConstantsCB[r3.y].data[1].w >> 16;
          r8.w = cmp(0 < (uint)r7.w);
          r8.w = r8.w ? r1.z : 0;
          if (r8.w != 0) {
            r7.w = (int)r7.w + numLights;
            r7.w = mad((int)r7.w, 15, -15);
            r8.w = abs(r10.w) * -0.200000003 + 0.400000006;
            r14.w = cmp(r10.w < 0);
            r14.w = r3.w ? r14.w : 0;
            r8.w = r14.w ? -r8.w : r8.w;
            r20.xyz = r11.xyz * r8.www + r5.xyz;
            r21.xyz = lightConstantsCB[r7.w].data[6].yzw;
            r21.w = lightConstantsCB[r7.w].data[7].x;
            r20.w = 1;
            r8.w = dot(r21.xyzw, r20.xyzw);
            r21.xyz = lightConstantsCB[r7.w].data[7].yzw;
            r21.w = lightConstantsCB[r7.w].data[8].x;
            r14.w = dot(r21.xyzw, r20.xyzw);
            r15.w = cmp(r14.w < r8.w);
            if (r15.w == 0) {
              r21.xyz = lightConstantsCB[r7.w].data[4].yzw;
              r21.w = lightConstantsCB[r7.w].data[5].x;
              r21.x = dot(r21.xyzw, r20.xyzw);
              r22.xyz = lightConstantsCB[r7.w].data[5].yzw;
              r22.w = lightConstantsCB[r7.w].data[6].x;
              r21.y = dot(r22.xyzw, r20.xyzw);
              r20.xy = r21.xy / r14.ww;
              r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r21.x = lightConstantsCB[r7.w].data[9].w + r20.x;
              r21.y = lightConstantsCB[r7.w].data[10].x + r20.y;
              r20.xy = lightConstantsCB[r7.w].data[9].yz * r21.xy;
              r20.zw = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
              r21.xy = float2(1,1) + -r20.zw;
              r21.xy = cmp(r20.xy >= r21.xy);
              r20.zw = cmp(r20.zw >= r20.xy);
              r20.zw = (int2)r20.zw | (int2)r21.xy;
              r16.w = (int)r20.w | (int)r20.z;
              if (r16.w == 0) {
                r20.xy = saturate(r20.xy);
                r21.x = r20.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                r21.y = r20.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                r17.w = lightConstantsCB[r7.w].data[10].z * r14.w;
                r8.w = lightConstantsCB[r7.w].data[10].y * r14.w + r8.w;
                r8.w = r8.w / r17.w;
              }
            } else {
              r16.w = -1;
            }
            r14.w = (int)r15.w | (int)r16.w;
            if (r14.w == 0) {
              r8.w = max(6.10351563e-05, r8.w);
              r14.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r20.x = -r3.x;
                r22.z = (uint)r14.w;
                r20.y = r13.x;
                r20.z = r3.x;
                r15.w = 0;
                r16.w = 0;
                while (true) {
                  r17.w = cmp((int)r16.w >= 8);
                  if (r17.w != 0) break;
                  r23.x = dot(icb[r16.w+0].yx, r20.xy);
                  r23.y = dot(icb[r16.w+0].yx, r20.yz);
                  r22.xy = r23.xy * lightConstantsCB[r7.w].data[3].yy + r21.xy;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
                  r15.w = r17.w * 0.125 + r15.w;
                  r16.w = (int)r16.w + 1;
                }
              } else {
                r21.z = (uint)r14.w;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
              }
              r7.w = r15.w * r15.w;
              r7.w = r7.w * r15.w;
            } else {
              r7.w = 1;
            }
            r9.w = r9.w * r7.w;
          } else {
            if (4 == 0) r7.w = 0; else if (4+20 < 32) {             r7.w = (uint)lightConstantsCB[r3.y].data[1].w << (32-(4 + 20)); r7.w = (uint)r7.w >> (32-4);            } else r7.w = (uint)lightConstantsCB[r3.y].data[1].w >> 20;
            r8.w = cmp(0 < (uint)r7.w);
            r14.w = ~(int)r1.z;
            r8.w = r8.w ? r14.w : 0;
            if (r8.w != 0) {
              r7.w = (int)r7.w + numLights;
              r7.w = mad((int)r7.w, 15, -15);
              r8.w = abs(r10.w) * -0.200000003 + 0.400000006;
              r14.w = cmp(r10.w < 0);
              r14.w = r3.w ? r14.w : 0;
              r8.w = r14.w ? -r8.w : r8.w;
              r20.xyz = r11.xyz * r8.www + r5.xyz;
              r21.xyz = lightConstantsCB[r7.w].data[6].yzw;
              r21.w = lightConstantsCB[r7.w].data[7].x;
              r20.w = 1;
              r8.w = dot(r21.xyzw, r20.xyzw);
              r21.xyz = lightConstantsCB[r7.w].data[7].yzw;
              r21.w = lightConstantsCB[r7.w].data[8].x;
              r14.w = dot(r21.xyzw, r20.xyzw);
              r15.w = cmp(r14.w < r8.w);
              if (r15.w == 0) {
                r21.xyz = lightConstantsCB[r7.w].data[4].yzw;
                r21.w = lightConstantsCB[r7.w].data[5].x;
                r21.x = dot(r21.xyzw, r20.xyzw);
                r22.xyz = lightConstantsCB[r7.w].data[5].yzw;
                r22.w = lightConstantsCB[r7.w].data[6].x;
                r21.y = dot(r22.xyzw, r20.xyzw);
                r20.xy = r21.xy / r14.ww;
                r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r21.x = lightConstantsCB[r7.w].data[9].w + r20.x;
                r21.y = lightConstantsCB[r7.w].data[10].x + r20.y;
                r20.xy = lightConstantsCB[r7.w].data[9].yz * r21.xy;
                r20.zw = lightConstantsCB[r7.w].data[3].yy / lightConstantsCB[r7.w].data[8].yw;
                r21.xy = float2(1,1) + -r20.zw;
                r21.xy = cmp(r20.xy >= r21.xy);
                r20.zw = cmp(r20.zw >= r20.xy);
                r20.zw = (int2)r20.zw | (int2)r21.xy;
                r16.w = (int)r20.w | (int)r20.z;
                if (r16.w == 0) {
                  r20.xy = saturate(r20.xy);
                  r21.x = r20.x * lightConstantsCB[r7.w].data[8].y + lightConstantsCB[r7.w].data[8].z;
                  r21.y = r20.y * lightConstantsCB[r7.w].data[8].w + lightConstantsCB[r7.w].data[9].x;
                  r17.w = lightConstantsCB[r7.w].data[10].z * r14.w;
                  r8.w = lightConstantsCB[r7.w].data[10].y * r14.w + r8.w;
                  r8.w = r8.w / r17.w;
                }
              } else {
                r16.w = -1;
              }
              r14.w = (int)r15.w | (int)r16.w;
              if (r14.w == 0) {
                r8.w = max(6.10351563e-05, r8.w);
                r14.w = 0x0000ffff & (int)lightConstantsCB[r7.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r20.x = -r3.x;
                  r22.z = (uint)r14.w;
                  r20.y = r13.x;
                  r20.z = r3.x;
                  r15.w = 0;
                  r16.w = 0;
                  while (true) {
                    r17.w = cmp((int)r16.w >= 8);
                    if (r17.w != 0) break;
                    r23.x = dot(icb[r16.w+0].yx, r20.xy);
                    r23.y = dot(icb[r16.w+0].yx, r20.yz);
                    r22.xy = r23.xy * lightConstantsCB[r7.w].data[3].yy + r21.xy;
                    r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r8.w).x;
                    r15.w = r17.w * 0.125 + r15.w;
                    r16.w = (int)r16.w + 1;
                  }
                } else {
                  r21.z = (uint)r14.w;
                  r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
                }
                r7.w = r15.w * r15.w;
                r7.w = r7.w * r15.w;
              } else {
                r7.w = 1;
              }
              r9.w = r9.w * r7.w;
            }
          }
          r7.w = -r2.x * 0.5 + 1;
          r7.w = -r11.w * r7.w + 1;
          r7.w = r7.w * r7.w;
          r7.w = -r7.w * 0.620000005 + 0.620000005;
          r7.w = r7.w + -r11.w;
          r7.w = r2.z * r7.w + r11.w;
          r7.w = r7.w * r9.w;
          r20.x = lightConstantsCB[r3.y].data[0].w;
          r20.yz = lightConstantsCB[r3.y].data[1].xy;
          r21.xyz = r20.xyz * r7.www;
          r8.w = cmp(0 < r10.w);
          r21.xyz = r15.xyz * r4.zzz + r21.xyz;
          r10.w = saturate(dot(r11.xyz, r14.xyz));
          r13.yzw = r13.yzw * r6.www + r12.xyz;
          r6.w = dot(r13.yzw, r13.yzw);
          r6.w = rsqrt(r6.w);
          r13.yzw = r13.yzw * r6.www;
          r6.w = dot(r13.yzw, r12.xyz);
          r11.w = dot(r11.xyz, r13.yzw);
          r13.y = abs(r11.w) * r1.w + -abs(r11.w);
          r11.w = abs(r11.w) * r13.y + 1;
          r13.y = r10.w * r0.y + r2.y;
          r11.w = r11.w * r11.w;
          r11.w = r11.w * r13.y;
          r11.w = rcp(r11.w);
          r10.w = r10.w * r12.w;
          r10.w = r11.w * r10.w;
          r10.w = r10.w * r9.w;
          r13.yzw = r10.www * r20.xyz + r16.xyz;
          r6.w = saturate(1 + -r6.w);
          r11.w = r6.w * r6.w;
          r11.w = r11.w * r11.w;
          r6.w = r11.w * r6.w;
          r6.w = r10.w * r6.w;
          r14.xyz = r6.www * r20.xyz + r19.xyz;
          r20.xyz = r7.www * r20.xyz + r18.xyz;
          r20.xyz = r3.www ? r20.xyz : 0;
          r17.xyz = r8.www ? r21.xyz : r17.xyz;
          r18.xyz = r8.www ? r18.xyz : r20.xyz;
          r19.xyz = r8.www ? r14.xyz : r19.xyz;
          r16.xyz = r8.www ? r13.yzw : r16.xyz;
          if (r2.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r6.w, cb2[52].x, l(112), u2.xxxx
          r6.w = samplerLinear[]..swiz;
            r6.w = (int)r6.w | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r3.z = 0x00010101;
        } else {
          r3.z = 257;
        }
      } else {
        r3.z = 1;
      }
    } else {
      r3.z = 1;
    }
    break;
    case 2 :    if (r2.w != 0) {
      r14.yzw = lightConstantsCB[r3.y].data[0].xyz + eyeOffset.xyz;
      r14.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r14.xy = lightConstantsCB[r3.y].data[3].zw + -r5.xy;
    r14.z = lightConstantsCB[r3.y].data[4].x + -r5.z;
    r6.w = dot(r14.xyz, r14.xyz);
    r6.w = rsqrt(r6.w);
    r13.yzw = r14.xyz * r6.www;
    r7.w = dot(r11.xyz, r13.yzw);
    r8.w = saturate(r7.w);
    r9.w = r3.w ? abs(r7.w) : r8.w;
    r10.w = cmp(0 < r9.w);
    if (r10.w != 0) {
      r20.xyz = lightConstantsCB[r3.y].data[7].yzw;
      r20.w = lightConstantsCB[r3.y].data[8].x;
      r5.w = 1;
      r10.w = dot(r20.xyzw, r5.xyzw);
      r11.w = cmp(r10.w < 1);
      if (r11.w != 0) {
        r13.yzw = float3(1,1,1);
        r11.w = 0;
      } else {
        r21.xyz = lightConstantsCB[r3.y].data[0].xyz + -r5.xyz;
        r12.w = lightConstantsCB[r3.y].data[3].x * lightConstantsCB[r3.y].data[3].x;
        r14.w = dot(r21.xyz, r21.xyz);
        r12.w = r12.w / r14.w;
        r12.w = min(1, r12.w);
        r21.xy = saturate(r10.ww * lightConstantsCB[r3.y].data[2].xz + lightConstantsCB[r3.y].data[2].yw);
        r21.zw = r21.xy * r21.xy;
        r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
        r21.xy = r21.zw * r21.xy;
        r12.w = r21.x * r12.w;
        r12.w = r12.w * r21.y;
        r21.xyz = lightConstantsCB[r3.y].data[4].yzw;
        r21.w = lightConstantsCB[r3.y].data[5].x;
        r21.x = dot(r21.xyzw, r5.xyzw);
        r22.xyz = lightConstantsCB[r3.y].data[5].yzw;
        r22.w = lightConstantsCB[r3.y].data[6].x;
        r21.y = dot(r22.xyzw, r5.xyzw);
        r21.xy = r21.xy / r10.ww;
        r5.w = cmp(lightConstantsCB[r3.y].data[10].w < 0.00048828125);
        if (r5.w != 0) {
          r22.xy = saturate(abs(r21.xy) * lightConstantsCB[r3.y].data[12].xy + lightConstantsCB[r3.y].data[12].zw);
          r22.zw = r22.xy * r22.xy;
          r22.xy = r22.xy * float2(-2,-2) + float2(3,3);
          r22.xy = r22.zw * r22.xy;
          r5.w = r22.x * r22.y;
        } else {
          r22.xyzw = saturate(lightConstantsCB[r3.y].data[11].xyzw * abs(r21.yyxx));
          r22.xyzw = log2(r22.xyzw);
          r22.xyzw = lightConstantsCB[r3.y].data[12].zzzz * r22.xyzw;
          r22.xyzw = exp2(r22.xyzw);
          r22.xy = r22.xy + r22.zw;
          r22.xy = log2(r22.xy);
          r22.xy = lightConstantsCB[r3.y].data[12].ww * r22.xy;
          r22.xy = exp2(r22.xy);
          r10.w = lightConstantsCB[r3.y].data[12].x * r22.x;
          r14.w = lightConstantsCB[r3.y].data[12].y * r22.y + -1;
          r10.w = lightConstantsCB[r3.y].data[12].y * r22.y + -r10.w;
          r10.w = saturate(r14.w / r10.w);
          r14.w = r10.w * r10.w;
          r10.w = r10.w * -2 + 3;
          r5.w = r14.w * r10.w;
        }
        r11.w = r12.w * r5.w;
        r5.w = 255 & (int)lightConstantsCB[r3.y].data[14].w;
        if (r5.w != 0) {
          r21.z = 1;
          r10.w = dot(lightConstantsCB[r3.y].data[13].xyz, r21.xyz);
          r22.x = lightConstantsCB[r3.y].data[13].w;
          r22.yz = lightConstantsCB[r3.y].data[14].xy;
          r12.w = dot(r22.xyz, r21.xyz);
          r21.x = frac(r10.w);
          r21.y = frac(r12.w);
          r5.w = (int)r5.w + -1;
          r21.z = (uint)r5.w;
          r13.yzw = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
        } else {
          r13.yzw = float3(1,1,1);
        }
      }
      r21.x = lightConstantsCB[r3.y].data[0].w;
      r21.yz = lightConstantsCB[r3.y].data[1].xy;
      r13.yzw = r21.xyz * r13.yzw;
      r5.w = cmp(0 < r11.w);
      if (r5.w != 0) {
        if (3 == 0) r5.w = 0; else if (3+27 < 32) {         r5.w = (uint)lightConstantsCB[r3.y].data[1].w << (32-(3 + 27)); r5.w = (uint)r5.w >> (32-3);        } else r5.w = (uint)lightConstantsCB[r3.y].data[1].w >> 27;
        if (r2.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, l(112), u2.xxxx
        r10.w = samplerLinear[]..swiz;
          r10.w = (int)r10.w | 4;
          GBufferDiffuseColor[viewID].112 = u2.x;
          GBufferDiffuseColor[viewID].128 = u2.x;
        }
        r5.w = cmp((int)r5.w != 1);
        if (r5.w != 0) {
          r5.w = abs(r7.w) * -0.200000003 + 0.400000006;
          r10.w = cmp(r7.w < 0);
          r10.w = r3.w ? r10.w : 0;
          r5.w = r10.w ? -r5.w : r5.w;
          r21.xyz = r11.xyz * r5.www + r5.xyz;
          r22.xyz = lightConstantsCB[r3.y].data[6].yzw;
          r22.w = lightConstantsCB[r3.y].data[7].x;
          r21.w = 1;
          r5.w = dot(r22.xyzw, r21.xyzw);
          r10.w = dot(r20.xyzw, r21.xyzw);
          r12.w = cmp(r10.w >= r5.w);
          if (r12.w != 0) {
            r20.xyz = lightConstantsCB[r3.y].data[4].yzw;
            r20.w = lightConstantsCB[r3.y].data[5].x;
            r20.x = dot(r20.xyzw, r21.xyzw);
            r22.xyz = lightConstantsCB[r3.y].data[5].yzw;
            r22.w = lightConstantsCB[r3.y].data[6].x;
            r20.y = dot(r22.xyzw, r21.xyzw);
            r20.xy = r20.xy / r10.ww;
            r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r21.x = r20.x * lightConstantsCB[r3.y].data[8].y + lightConstantsCB[r3.y].data[8].z;
            r21.y = r20.y * lightConstantsCB[r3.y].data[8].w + lightConstantsCB[r3.y].data[9].x;
            r5.w = r5.w / r10.w;
            r5.w = max(6.10351563e-05, r5.w);
            r10.w = 0x0000ffff & (int)lightConstantsCB[r3.y].data[1].w;
            if (enableDitheredShadow != 0) {
              r20.x = -r3.x;
              r22.z = (uint)r10.w;
              r20.y = r13.x;
              r20.z = r3.x;
              r12.w = 0;
              r14.w = 0;
              while (true) {
                r15.w = cmp((int)r14.w >= 8);
                if (r15.w != 0) break;
                r23.x = dot(icb[r14.w+0].yx, r20.xy);
                r23.y = dot(icb[r14.w+0].yx, r20.yz);
                r22.xy = r23.xy * lightConstantsCB[r3.y].data[3].yy + r21.xy;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r5.w).x;
                r12.w = r15.w * 0.125 + r12.w;
                r14.w = (int)r14.w + 1;
              }
            } else {
              r21.z = (uint)r10.w;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r5.w).x;
            }
            r5.w = r12.w * r12.w;
            r5.w = r5.w * r12.w;
          } else {
            r5.w = 1;
          }
        } else {
          r5.w = 1;
        }
        r5.w = r11.w * r5.w;
        r10.w = cmp(0 < r5.w);
        if (r10.w != 0) {
          r10.w = lightConstantsCB[r3.y].data[1].z * r1.w;
          r10.w = r10.w * r8.w;
          if (4 == 0) r11.w = 0; else if (4+16 < 32) {           r11.w = (uint)lightConstantsCB[r3.y].data[1].w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);          } else r11.w = (uint)lightConstantsCB[r3.y].data[1].w >> 16;
          r12.w = cmp(0 < (uint)r11.w);
          r12.w = r12.w ? r1.z : 0;
          if (r12.w != 0) {
            r11.w = (int)r11.w + numLights;
            r11.w = mad((int)r11.w, 15, -15);
            r12.w = abs(r7.w) * -0.200000003 + 0.400000006;
            r14.w = cmp(r7.w < 0);
            r14.w = r3.w ? r14.w : 0;
            r12.w = r14.w ? -r12.w : r12.w;
            r20.xyz = r11.xyz * r12.www + r5.xyz;
            r21.xyz = lightConstantsCB[r11.w].data[6].yzw;
            r21.w = lightConstantsCB[r11.w].data[7].x;
            r20.w = 1;
            r12.w = dot(r21.xyzw, r20.xyzw);
            r21.xyz = lightConstantsCB[r11.w].data[7].yzw;
            r21.w = lightConstantsCB[r11.w].data[8].x;
            r14.w = dot(r21.xyzw, r20.xyzw);
            r15.w = cmp(r14.w < r12.w);
            if (r15.w == 0) {
              r21.xyz = lightConstantsCB[r11.w].data[4].yzw;
              r21.w = lightConstantsCB[r11.w].data[5].x;
              r21.x = dot(r21.xyzw, r20.xyzw);
              r22.xyz = lightConstantsCB[r11.w].data[5].yzw;
              r22.w = lightConstantsCB[r11.w].data[6].x;
              r21.y = dot(r22.xyzw, r20.xyzw);
              r20.xy = r21.xy / r14.ww;
              r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r21.x = lightConstantsCB[r11.w].data[9].w + r20.x;
              r21.y = lightConstantsCB[r11.w].data[10].x + r20.y;
              r20.xy = lightConstantsCB[r11.w].data[9].yz * r21.xy;
              r20.zw = lightConstantsCB[r11.w].data[3].yy / lightConstantsCB[r11.w].data[8].yw;
              r21.xy = float2(1,1) + -r20.zw;
              r21.xy = cmp(r20.xy >= r21.xy);
              r20.zw = cmp(r20.zw >= r20.xy);
              r20.zw = (int2)r20.zw | (int2)r21.xy;
              r16.w = (int)r20.w | (int)r20.z;
              if (r16.w == 0) {
                r20.xy = saturate(r20.xy);
                r21.x = r20.x * lightConstantsCB[r11.w].data[8].y + lightConstantsCB[r11.w].data[8].z;
                r21.y = r20.y * lightConstantsCB[r11.w].data[8].w + lightConstantsCB[r11.w].data[9].x;
                r17.w = lightConstantsCB[r11.w].data[10].z * r14.w;
                r12.w = lightConstantsCB[r11.w].data[10].y * r14.w + r12.w;
                r12.w = r12.w / r17.w;
              }
            } else {
              r16.w = -1;
            }
            r14.w = (int)r15.w | (int)r16.w;
            if (r14.w == 0) {
              r12.w = max(6.10351563e-05, r12.w);
              r14.w = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r20.x = -r3.x;
                r22.z = (uint)r14.w;
                r20.y = r13.x;
                r20.z = r3.x;
                r15.w = 0;
                r16.w = 0;
                while (true) {
                  r17.w = cmp((int)r16.w >= 8);
                  if (r17.w != 0) break;
                  r23.x = dot(icb[r16.w+0].yx, r20.xy);
                  r23.y = dot(icb[r16.w+0].yx, r20.yz);
                  r22.xy = r23.xy * lightConstantsCB[r11.w].data[3].yy + r21.xy;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r12.w).x;
                  r15.w = r17.w * 0.125 + r15.w;
                  r16.w = (int)r16.w + 1;
                }
              } else {
                r21.z = (uint)r14.w;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r12.w).x;
              }
              r11.w = r15.w * r15.w;
              r11.w = r11.w * r15.w;
            } else {
              r11.w = 1;
            }
            r5.w = r11.w * r5.w;
          } else {
            if (4 == 0) r3.y = 0; else if (4+20 < 32) {             r3.y = (uint)lightConstantsCB[r3.y].data[1].w << (32-(4 + 20)); r3.y = (uint)r3.y >> (32-4);            } else r3.y = (uint)lightConstantsCB[r3.y].data[1].w >> 20;
            r11.w = cmp(0 < (uint)r3.y);
            r1.z = ~(int)r1.z;
            r1.z = r11.w ? r1.z : 0;
            if (r1.z != 0) {
              r1.z = (int)r3.y + numLights;
              r1.z = mad((int)r1.z, 15, -15);
              r3.y = abs(r7.w) * -0.200000003 + 0.400000006;
              r11.w = cmp(r7.w < 0);
              r11.w = r3.w ? r11.w : 0;
              r3.y = r11.w ? -r3.y : r3.y;
              r20.xyz = r11.xyz * r3.yyy + r5.xyz;
              r21.xyz = lightConstantsCB[r1.z].data[6].yzw;
              r21.w = lightConstantsCB[r1.z].data[7].x;
              r20.w = 1;
              r3.y = dot(r21.xyzw, r20.xyzw);
              r21.xyz = lightConstantsCB[r1.z].data[7].yzw;
              r21.w = lightConstantsCB[r1.z].data[8].x;
              r11.w = dot(r21.xyzw, r20.xyzw);
              r12.w = cmp(r11.w < r3.y);
              if (r12.w == 0) {
                r21.xyz = lightConstantsCB[r1.z].data[4].yzw;
                r21.w = lightConstantsCB[r1.z].data[5].x;
                r21.x = dot(r21.xyzw, r20.xyzw);
                r22.xyz = lightConstantsCB[r1.z].data[5].yzw;
                r22.w = lightConstantsCB[r1.z].data[6].x;
                r21.y = dot(r22.xyzw, r20.xyzw);
                r20.xy = r21.xy / r11.ww;
                r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r21.x = lightConstantsCB[r1.z].data[9].w + r20.x;
                r21.y = lightConstantsCB[r1.z].data[10].x + r20.y;
                r20.xy = lightConstantsCB[r1.z].data[9].yz * r21.xy;
                r20.zw = lightConstantsCB[r1.z].data[3].yy / lightConstantsCB[r1.z].data[8].yw;
                r21.xy = float2(1,1) + -r20.zw;
                r21.xy = cmp(r20.xy >= r21.xy);
                r20.zw = cmp(r20.zw >= r20.xy);
                r20.zw = (int2)r20.zw | (int2)r21.xy;
                r14.w = (int)r20.w | (int)r20.z;
                if (r14.w == 0) {
                  r20.xy = saturate(r20.xy);
                  r21.x = r20.x * lightConstantsCB[r1.z].data[8].y + lightConstantsCB[r1.z].data[8].z;
                  r21.y = r20.y * lightConstantsCB[r1.z].data[8].w + lightConstantsCB[r1.z].data[9].x;
                  r15.w = lightConstantsCB[r1.z].data[10].z * r11.w;
                  r3.y = lightConstantsCB[r1.z].data[10].y * r11.w + r3.y;
                  r3.y = r3.y / r15.w;
                }
              } else {
                r14.w = -1;
              }
              r11.w = (int)r12.w | (int)r14.w;
              if (r11.w == 0) {
                r3.y = max(6.10351563e-05, r3.y);
                r11.w = 0x0000ffff & (int)lightConstantsCB[r1.z].data[1].w;
                if (enableDitheredShadow != 0) {
                  r20.x = -r3.x;
                  r22.z = (uint)r11.w;
                  r20.y = r13.x;
                  r20.z = r3.x;
                  r3.x = 0;
                  r12.w = 0;
                  while (true) {
                    r13.x = cmp((int)r12.w >= 8);
                    if (r13.x != 0) break;
                    r23.x = dot(icb[r12.w+0].yx, r20.xy);
                    r23.y = dot(icb[r12.w+0].yx, r20.yz);
                    r22.xy = r23.xy * lightConstantsCB[r1.z].data[3].yy + r21.xy;
                    r13.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r3.y).x;
                    r3.x = r13.x * 0.125 + r3.x;
                    r12.w = (int)r12.w + 1;
                  }
                } else {
                  r21.z = (uint)r11.w;
                  r3.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r3.y).x;
                }
                r1.z = r3.x * r3.x;
                r1.z = r1.z * r3.x;
              } else {
                r1.z = 1;
              }
              r5.w = r5.w * r1.z;
            }
          }
          r1.z = -r2.x * 0.5 + 1;
          r1.z = -r9.w * r1.z + 1;
          r1.z = r1.z * r1.z;
          r1.z = -r1.z * 0.620000005 + 0.620000005;
          r1.z = r1.z + -r9.w;
          r1.z = r2.z * r1.z + r9.w;
          r1.z = r1.z * r5.w;
          r20.xyz = r1.zzz * r13.yzw;
          r2.x = cmp(0 < r7.w);
          r15.xyz = r15.xyz * r4.zzz + r20.xyz;
          r14.xyz = r14.xyz * r6.www + r12.xyz;
          r2.z = dot(r14.xyz, r14.xyz);
          r2.z = rsqrt(r2.z);
          r14.xyz = r14.xyz * r2.zzz;
          r2.z = dot(r14.xyz, r12.xyz);
          r3.x = dot(r11.xyz, r14.xyz);
          r1.w = abs(r3.x) * r1.w + -abs(r3.x);
          r1.w = abs(r3.x) * r1.w + 1;
          r0.y = r8.w * r0.y + r2.y;
          r1.w = r1.w * r1.w;
          r0.y = r1.w * r0.y;
          r0.y = rcp(r0.y);
          r0.y = r0.y * r10.w;
          r0.y = r5.w * r0.y;
          r0.y = 0.25 * r0.y;
          r11.xyz = r0.yyy * r13.yzw + r16.xyz;
          r1.w = saturate(1 + -r2.z);
          r2.y = r1.w * r1.w;
          r2.y = r2.y * r2.y;
          r1.w = r2.y * r1.w;
          r0.y = r1.w * r0.y;
          r12.xyz = r0.yyy * r13.yzw + r19.xyz;
          r13.xyz = r1.zzz * r13.yzw + r18.xyz;
          r13.xyz = r3.www ? r13.xyz : 0;
          r17.xyz = r2.xxx ? r15.xyz : r17.xyz;
          r18.xyz = r2.xxx ? r18.xyz : r13.xyz;
          r19.xyz = r2.xxx ? r12.xyz : r19.xyz;
          r16.xyz = r2.xxx ? r11.xyz : r16.xyz;
          if (r2.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.y, cb2[52].x, l(112), u2.xxxx
          r0.y = samplerLinear[]..swiz;
            r0.y = (int)r0.y | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r3.z = 0x00010101;
        } else {
          r3.z = 257;
        }
      } else {
        r3.z = 1;
      }
    } else {
      r3.z = 1;
    }
    break;
    default :
    r3.z = 0;
    break;
  }
  r4.xyz = r4.xwy * float3(1,3,2) + float3(0,0.5,-1);
  r0.y = (uint)r4.y;
  r2.xyz = r7.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r1.z = (uint)r2.x;
  r1.z = cmp((int)r0.y == (int)r1.z);
  r1.zw = r1.zz ? r2.yz : float2(-1,0);
  r2.xyz = r8.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.x = (uint)r2.x;
  r2.x = cmp((int)r0.y == (int)r2.x);
  r2.xy = r2.xx ? r2.yz : float2(-1,0);
  r7.xyz = r9.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r7.x;
  r2.z = cmp((int)r0.y == (int)r2.z);
  r3.xy = r2.zz ? r7.yz : float2(-1,0);
  r7.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r7.x;
  r0.y = cmp((int)r0.y == (int)r2.z);
  r7.xy = r0.yy ? r7.yz : float2(-1,0);
  r8.x = r1.z;
  r8.y = r2.x;
  r8.z = r3.x;
  r8.w = r7.x;
  r8.xyzw = r8.xyzw + -r4.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.y = r8.x + r8.y;
  r0.y = r0.y + r8.z;
  r0.y = r0.y + r8.w;
  r1.z = r8.y * r2.y;
  r1.z = r8.x * r1.w + r1.z;
  r1.z = r8.z * r3.y + r1.z;
  r1.z = r8.w * r7.y + r1.z;
  r4.w = r1.z / r0.y;
  r0.y = cmp(0 >= r0.y);
  r4.yz = r0.yy ? float2(0,0) : r4.zw;
  r1.zw = (int2)r1.xy & int2(1,1);
  r0.y = cmp((int)r1.w == (int)r1.z);
  r2.xyz = r0.yyy ? r4.xyz : r4.xzy;
  r0.y = -r2.z * 0.5 + r2.x;
  r4.y = r2.z + r0.y;
  r4.z = -r2.y * 0.5 + r0.y;
  r4.x = r4.z + r2.y;
  r2.xyz = r17.xyz * r6.xyz;
  r2.xyz = r18.xyz * r4.xyz + r2.xyz;
  r7.xyz = float3(0.959999979,0.959999979,0.959999979) * r19.xyz;
  r7.xyz = r16.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r7.xyz;
  r2.xyz = r7.xyz + r2.xyz;
  r7.xyz = float3(1,1,1) + -r4.xyz;
  r7.xyz = r19.xyz * r7.xyz;
  r4.xyz = r16.xyz * r4.xyz + r7.xyz;
  r4.xyz = r17.xyz * r6.xyz + r4.xyz;
  r2.xyz = r3.www ? r2.xyz : r4.xyz;
  r0.y = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.y != 0) {
    r0.y = dot(r5.xyz, r5.xyz);
    r1.z = rsqrt(r0.y);
    r3.xyw = r5.xyz * r1.zzz;
    r0.y = sqrt(r0.y);
    r1.z = cmp(0 < fogConstants.blendAmount);
    if (r1.z != 0) {
      r1.zw = r0.yy * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.zw = fogConstants.atmospherefogdensityatcamera.xy * r1.zw;
      r4.x = cmp(0.00999999978 < abs(r5.z));
      r4.yz = fogConstants.atmospherefogheightdensityscale.xy * r5.zz;
      r6.xy = float2(-1.44269502,-1.44269502) * r4.yz;
      r6.xy = exp2(r6.xy);
      r6.xy = float2(1,1) + -r6.xy;
      r4.yz = r6.xy / r4.yz;
      r4.yz = r4.yz * r1.zw;
      r1.zw = r4.xx ? r4.yz : r1.zw;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r4.xyz);
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r6.xyz + r4.xyz;
    } else {
      r1.z = r0.y * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.z = fogConstants.atmospherefogdensityatcamera.x * r1.z;
      r1.w = cmp(0.00999999978 < abs(r5.z));
      r4.w = fogConstants.atmospherefogheightdensityscale.x * r5.z;
      r5.w = -1.44269502 * r4.w;
      r5.w = exp2(r5.w);
      r5.w = 1 + -r5.w;
      r4.w = r5.w / r4.w;
      r4.w = r4.w * r1.z;
      r1.z = r1.w ? r4.w : r1.z;
      r6.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r4.xyz = exp2(r6.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.z = dot(fogConstants.wldSunFogDir.xyz, -r3.xyw);
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
    r3.xyw = fogConstants.atmosphereMieDensity.xyz * r0.yyy;
    r3.xyw = r1.zzz * fogConstants.atmosphereRayleighDensity.xyz + r3.xyw;
    r3.xyw = fogConstants.atmosphereInScatterIntensity * r3.xyw;
    r6.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyw = r6.xyz * r3.xyw;
    r3.xyw = r2.xyz * r4.xyz + r3.xyw;
  } else {
    r0.y = fogConstants.heightFalloff * r5.z;
    r1.z = fogConstants.heightFalloff * r5.z + fogConstants.K0;
    r1.w = cmp(abs(r0.y) < 9.99999975e-05);
    r4.x = min(64, r1.z);
    r4.x = 1.44269502 * r4.x;
    r4.x = exp2(r4.x);
    r4.y = saturate(fogConstants.K0b);
    r4.z = cmp(r1.z < 0);
    r1.z = 1 + r1.z;
    r1.z = r4.z ? r4.x : r1.z;
    r1.z = -fogConstants.K0b + r1.z;
    r0.y = r1.w ? 1 : r0.y;
    r0.y = r1.z / r0.y;
    r0.y = r1.w ? r4.y : r0.y;
    r0.y = fogConstants.expMul * r0.y;
    r1.z = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r1.z);
    r0.y = r0.y * r1.w + fogConstants.expAdd;
    r0.y = exp2(r0.y);
    r0.y = min(1, r0.y);
    r0.y = 1 + -r0.y;
    r1.z = rsqrt(r1.z);
    r4.xyz = r5.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.y = r4.w * r0.y;
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyw = r0.yyy * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyw;
  r3.xyw = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyw ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.y = cmp(0 < permuteHighlight);
  r4.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r4.xz != int2(0,0));
  r3.xy = cmp((int2)r4.yw == int2(2,12));
  r1.zw = r1.zw ? r3.xy : 0;
  r4.xy = r1.zw ? float2(0.200000003,0.200000003) : 0;
  r1.z = permuteHighlight & 16;
  r1.w = cmp((int)r1.z != 0);
  r1.z = cmp((int)r1.z == 16);
  r1.z = r1.z ? r1.w : 0;
  r4.z = r1.z ? 0.200000 : 0;
  r3.xyw = r4.xyz * relHDRExposure.xxx + -r2.xyz;
  r3.xyw = r3.xyw * float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = r0.yyy ? r3.xyw : r2.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r0.y = (int)r3.z & 1;
        break;
        case 2 :        if (1 == 0) r0.y = 0; else if (1+8 < 32) {         r0.y = (uint)r3.z << (32-(1 + 8)); r0.y = (uint)r0.y >> (32-1);        } else r0.y = (uint)r3.z >> 8;
        break;
        case 3 :        r0.y = (uint)r3.z >> 16;
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
      r3.xyw = r0.yyy * float3(0.5,0.5,0.5) + -r2.xyz;
      r2.xyz = drawNumLightsAlpha * r3.xyw + r2.xyz;
    }
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
  if (r2.w != 0) {
    r1.xyz = eyeOffset.xyz + r5.xyz;
    r1.w = (int)r3.z & 1;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.y = (int)r0.x & 15;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.y = (int)r3.z & 1;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.y
    InterlockedAdd(dest, value, orig_value);
    if (1 == 0) r1.x = 0; else if (1+8 < 32) {     r1.x = (uint)r3.z << (32-(1 + 8)); r1.x = (uint)r1.x >> (32-1);    } else r1.x = (uint)r3.z >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (uint)r3.z >> 16;
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