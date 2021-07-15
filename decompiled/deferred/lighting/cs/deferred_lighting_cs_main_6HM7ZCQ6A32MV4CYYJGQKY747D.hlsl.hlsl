// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:23:04 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
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
  r0.x = mad(permuteStride, 58, (int)vThreadGroupID.x);
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
  r3.w = r3.y * 5 + -2.5;
  r3.zw = float2(5,0.400000006) * r3.yw;
  r3.w = max(0, r3.w);
  r3.w = 100 * r3.w;
  r13.yz = -r3.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r13.y);
  r6.w = r6.w * r2.x;
  r6.w = 9.1368103 * r6.w;
  r7.w = r3.z * r3.y;
  r7.w = -r7.w * 2.0159049 + r13.z;
  r7.w = exp2(r7.w);
  r7.w = r7.w * r2.x;
  r7.w = 9.70808983 * r7.w;
  r6.w = max(r7.w, r6.w);
  r6.w = max(1.26815999, r6.w);
  r7.w = numRefProbes + -numOverrideProbes;
  r0.xy = (uint2)r0.yx >> int2(24,24);
  r8.w = cmp((uint)r0.x >= (uint)r7.w);
  r9.w = cmp((uint)r0.x < numRefProbes);
  r8.w = r8.w ? r9.w : 0;
  if (r8.w != 0) {
    r8.w = (int)r0.x * 14;
    if (r2.w != 0) {
      r15.yzw = refProbeConstantsCB[r8.w].data[0].xyz + eyeOffset.xyz;
      r15.x = 16;
      GBufferDiffuseColor[viewID].880 = u2.xyzw;
    }
    r13.yzw = -refProbeConstantsCB[r8.w].data[0].xyz + r5.xyz;
    r9.w = 0x0000ffff & (int)refProbeConstantsCB[r8.w].data[7].z;
    if (6 == 0) r10.w = 0; else if (6+25 < 32) {     r10.w = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);    } else r10.w = (uint)refProbeConstantsCB[r8.w].data[7].z >> 25;
    r12.w = (int)r9.w * 6;
    r15.x = dot(refProbeAttenuationConstantsCB[r12.w].data[0].xyz, r13.yzw);
    r15.x = saturate(refProbeAttenuationConstantsCB[r12.w].data[0].w + r15.x);
    r15.y = dot(refProbeAttenuationConstantsCB[r12.w].data[1].xyz, r13.yzw);
    r15.y = saturate(refProbeAttenuationConstantsCB[r12.w].data[1].w + r15.y);
    r15.x = r15.x * r15.y;
    r15.y = dot(refProbeAttenuationConstantsCB[r12.w].data[2].xyz, r13.yzw);
    r15.y = saturate(refProbeAttenuationConstantsCB[r12.w].data[2].w + r15.y);
    r15.x = r15.x * r15.y;
    r15.y = dot(refProbeAttenuationConstantsCB[r12.w].data[3].xyz, r13.yzw);
    r15.y = saturate(refProbeAttenuationConstantsCB[r12.w].data[3].w + r15.y);
    r15.x = r15.x * r15.y;
    r15.y = dot(refProbeAttenuationConstantsCB[r12.w].data[4].xyz, r13.yzw);
    r15.y = saturate(refProbeAttenuationConstantsCB[r12.w].data[4].w + r15.y);
    r15.x = r15.x * r15.y;
    r15.y = dot(refProbeAttenuationConstantsCB[r12.w].data[5].xyz, r13.yzw);
    r12.w = saturate(refProbeAttenuationConstantsCB[r12.w].data[5].w + r15.y);
    r15.x = r15.x * r12.w;
    r12.w = 1 & (int)refProbeConstantsCB[r8.w].data[6].x;
    r15.yz = float2(0,1);
    r15.xy = r12.ww ? r15.xy : r15.zx;
    r16.x = 1;
    r12.w = refProbeConstantsCB[r8.w].data[6].x;
    r17.xy = r15.xy;
    r15.z = 1;
    while (true) {
      r15.w = cmp((int)r15.z >= (int)r10.w);
      if (r15.w != 0) break;
      r15.w = (int)r9.w + (int)r15.z;
      r15.w = (int)r15.w * 6;
      r16.z = dot(refProbeAttenuationConstantsCB[r15.w].data[0].xyz, r13.yzw);
      r16.z = saturate(refProbeAttenuationConstantsCB[r15.w].data[0].w + r16.z);
      r16.z = r17.x * r16.z;
      r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[1].xyz, r13.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[1].w + r16.w);
      r16.z = r16.z * r16.w;
      r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[2].xyz, r13.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[2].w + r16.w);
      r16.z = r16.z * r16.w;
      r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[3].xyz, r13.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[3].w + r16.w);
      r16.z = r16.z * r16.w;
      r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[4].xyz, r13.yzw);
      r16.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[4].w + r16.w);
      r16.z = r16.z * r16.w;
      r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[5].xyz, r13.yzw);
      r15.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[5].w + r16.w);
      r17.x = r16.z * r15.w;
      r16.w = (uint)r12.w >> 2;
      if (1 == 0) r17.z = 0; else if (1+2 < 32) {       r17.z = (uint)r12.w << (32-(1 + 2)); r17.z = (uint)r17.z >> (32-1);      } else r17.z = (uint)r12.w >> 2;
      r17.w = (int)r16.w & 2;
      r18.x = max(r17.y, r17.x);
      r15.w = -r16.z * r15.w + 1;
      r15.w = r17.y * r15.w;
      r16.y = r17.w ? r15.w : r18.x;
      r17.xy = r17.zz ? r17.xy : r16.xy;
      r15.z = (int)r15.z + 1;
      r12.w = r16.w;
    }
    r17.y = saturate(r17.y);
    r9.w = refProbeConstantsCB[r8.w].data[6].y * r17.y;
    r10.w = cmp(0 < r9.w);
    if (r10.w != 0) {
      if (r2.w != 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r10.w, cb2[52].x, l(880), u2.xxxx
      r10.w = samplerLinear[]..swiz;
        r10.w = (int)r10.w | 32;
        GBufferDiffuseColor[viewID].880 = u2.x;
        GBufferDiffuseColor[viewID].896 = u2.x;
      }
      r10.w = refProbeConstantsCB[r8.w].data[7].y * r9.w;
      r15.x = refProbeConstantsCB[r8.w].data[7].w;
      r15.yz = refProbeConstantsCB[r8.w].data[8].xy;
      r12.w = dot(r14.xyz, r15.xyz);
      r15.x = dot(r13.yzw, r15.xyz);
      r15.x = -refProbeConstantsCB[r8.w].data[8].z + r15.x;
      r15.y = cmp(r15.x >= 0);
      r15.x = max(abs(r15.x), r3.w);
      r15.x = r15.y ? r15.x : -r15.x;
      r12.w = max(1.00000001e-07, -r12.w);
      r12.w = r15.x / r12.w;
      r12.w = min(131072, abs(r12.w));
      r15.x = refProbeConstantsCB[r8.w].data[8].w;
      r15.yz = refProbeConstantsCB[r8.w].data[9].xy;
      r15.w = dot(r14.xyz, r15.xyz);
      r15.x = dot(r13.yzw, r15.xyz);
      r15.x = -refProbeConstantsCB[r8.w].data[9].z + r15.x;
      r15.y = cmp(r15.x >= 0);
      r15.x = max(abs(r15.x), r3.w);
      r15.x = r15.y ? r15.x : -r15.x;
      r15.y = max(1.00000001e-07, -r15.w);
      r15.x = r15.x / r15.y;
      r12.w = min(abs(r15.x), r12.w);
      r15.x = refProbeConstantsCB[r8.w].data[9].w;
      r15.yz = refProbeConstantsCB[r8.w].data[10].xy;
      r15.w = dot(r14.xyz, r15.xyz);
      r15.x = dot(r13.yzw, r15.xyz);
      r15.x = -refProbeConstantsCB[r8.w].data[10].z + r15.x;
      r15.y = cmp(r15.x >= 0);
      r15.x = max(abs(r15.x), r3.w);
      r15.x = r15.y ? r15.x : -r15.x;
      r15.y = max(1.00000001e-07, -r15.w);
      r15.x = r15.x / r15.y;
      r12.w = min(abs(r15.x), r12.w);
      r15.x = refProbeConstantsCB[r8.w].data[10].w;
      r15.yz = refProbeConstantsCB[r8.w].data[11].xy;
      r15.w = dot(r14.xyz, r15.xyz);
      r15.x = dot(r13.yzw, r15.xyz);
      r15.x = -refProbeConstantsCB[r8.w].data[11].z + r15.x;
      r15.y = cmp(r15.x >= 0);
      r15.x = max(abs(r15.x), r3.w);
      r15.x = r15.y ? r15.x : -r15.x;
      r15.y = max(1.00000001e-07, -r15.w);
      r15.x = r15.x / r15.y;
      r12.w = min(abs(r15.x), r12.w);
      r15.x = refProbeConstantsCB[r8.w].data[11].w;
      r15.yz = refProbeConstantsCB[r8.w].data[12].xy;
      r15.w = dot(r14.xyz, r15.xyz);
      r15.x = dot(r13.yzw, r15.xyz);
      r15.x = -refProbeConstantsCB[r8.w].data[12].z + r15.x;
      r15.y = cmp(r15.x >= 0);
      r15.x = max(abs(r15.x), r3.w);
      r15.x = r15.y ? r15.x : -r15.x;
      r15.y = max(1.00000001e-07, -r15.w);
      r15.x = r15.x / r15.y;
      r12.w = min(abs(r15.x), r12.w);
      r15.x = refProbeConstantsCB[r8.w].data[12].w;
      r15.yz = refProbeConstantsCB[r8.w].data[13].xy;
      r15.w = dot(r14.xyz, r15.xyz);
      r15.x = dot(r13.yzw, r15.xyz);
      r15.x = -refProbeConstantsCB[r8.w].data[13].z + r15.x;
      r15.y = cmp(r15.x >= 0);
      r15.x = max(abs(r15.x), r3.w);
      r15.x = r15.y ? r15.x : -r15.x;
      r15.y = max(1.00000001e-07, -r15.w);
      r15.x = r15.x / r15.y;
      r12.w = min(abs(r15.x), r12.w);
      r15.x = refProbeConstantsCB[r8.w].data[3].w + r13.y;
      r15.yz = refProbeConstantsCB[r8.w].data[4].xy + r13.zw;
      r15.xyz = r14.xyz * r12.www + r15.xyz;
      r15.w = dot(r15.xyz, r15.xyz);
      r15.w = sqrt(r15.w);
      r12.w = r12.w / r15.w;
      r12.w = r12.w + r12.w;
      r12.w = sqrt(r12.w);
      r12.w = r3.y * 5 + r12.w;
      r12.w = -0.844799995 + r12.w;
      r16.x = refProbeConstantsCB[r8.w].data[0].w;
      r16.y = refProbeConstantsCB[r8.w].data[1].z;
      r16.z = refProbeConstantsCB[r8.w].data[2].y;
      r17.x = dot(r15.xyz, r16.xyz);
      r18.xy = refProbeConstantsCB[r8.w].data[1].xw;
      r18.z = refProbeConstantsCB[r8.w].data[2].z;
      r17.y = dot(r15.xyz, r18.xyz);
      r19.x = refProbeConstantsCB[r8.w].data[1].y;
      r19.yz = refProbeConstantsCB[r8.w].data[2].xw;
      r17.z = dot(r15.xyz, r19.xyz);
      if (9 == 0) r15.x = 0; else if (9+16 < 32) {       r15.x = (uint)refProbeConstantsCB[r8.w].data[7].z << (32-(9 + 16)); r15.x = (uint)r15.x >> (32-9);      } else r15.x = (uint)refProbeConstantsCB[r8.w].data[7].z >> 16;
      r17.w = (uint)r15.x;
      r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, r12.w).xyz;
      r20.xyz = (int3)r15.xyz & int3(-2147483648,-2147483648,-2147483648);
      r20.xyz = cmp((int3)r20.xyz == int3(2139095040,2139095040,2139095040));
      r12.w = (int)r20.y | (int)r20.x;
      r12.w = (int)r20.z | (int)r12.w;
      r15.xyz = r12.www ? float3(1,1,0) : r15.xyz;
      r20.x = dot(r13.yzw, r16.xyz);
      r20.y = dot(r13.yzw, r18.xyz);
      r20.z = dot(r13.yzw, r19.xyz);
      r13.yzw = saturate(r20.xyz * refProbeConstantsCB[r8.w].data[3].xyz + float3(0.5,0.5,0.5));
      r20.xy = refProbeConstantsCB[r8.w].data[4].zw * r13.yz;
      r20.z = refProbeConstantsCB[r8.w].data[5].x * r13.w;
      r13.yzw = refProbeConstantsCB[r8.w].data[5].yzw + r20.xyz;
      r17.x = dot(r11.xyz, r16.xyz);
      r17.y = dot(r11.xyz, r18.xyz);
      r17.z = dot(r11.xyz, r19.xyz);
      r16.xyz = cmp(float3(0,0,0) < r17.xyz);
      r18.z = r16.x ? 0 : 0.5;
      r18.xy = float2(0,0);
      r18.xyz = r18.xyz + r13.yzw;
      r18.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r19.xyz = r17.xyz * r17.xyz;
      r19.xyz = r19.xyz * r10.www;
      r20.z = r16.y ? 0 : 0.5;
      r20.xy = float2(0,0);
      r16.xyw = r20.xyz + r13.yzw;
      r16.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyw, 0).xyz;
      r16.xyw = r16.xyw * r19.yyy;
      r16.xyw = r18.xyz * r19.xxx + r16.xyw;
      r18.z = r16.z ? 0 : 0.5;
      r18.xy = float2(0,0);
      r13.yzw = r18.xyz + r13.yzw;
      r13.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
      r13.yzw = r13.yzw * r19.zzz + r16.xyw;
      r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r17.xyzw, 6).xyz;
      r17.xyz = (int3)r16.xyz & int3(-2147483648,-2147483648,-2147483648);
      r17.xyz = cmp((int3)r17.xyz == int3(2139095040,2139095040,2139095040));
      r8.w = (int)r17.y | (int)r17.x;
      r8.w = (int)r17.z | (int)r8.w;
      r16.xyz = r8.www ? float3(1,1,0) : r16.xyz;
      r13.yzw = r16.xyz * r13.yzw;
      r8.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r12.w = r8.w * r6.w;
      r15.xyz = r15.xyz * r10.www;
      r10.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r8.w = r6.w * r8.w + r10.w;
      r8.w = r12.w / r8.w;
      r15.xyz = r15.xyz * r8.www;
      r8.w = 257;
    } else {
      r13.yzw = float3(0,0,0);
      r15.xyz = float3(0,0,0);
      r9.w = 0;
      r8.w = 1;
    }
  } else {
    r13.yzw = float3(0,0,0);
    r15.xyz = float3(0,0,0);
    r9.w = 0;
    r8.w = 0;
  }
  r7.w = cmp((uint)r0.x < (uint)r7.w);
  if (r7.w != 0) {
    r0.x = (int)r0.x * 14;
    if (r2.w != 0) {
      r7.w = (int)r8.w & 1;
      r7.w = mad((int)r7.w, 20, 880);
      r16.yzw = refProbeConstantsCB[r0.x].data[0].xyz + eyeOffset.xyz;
      r16.x = 16;
      GBufferDiffuseColor[viewID].r7.w = u2.xyzw;
    }
    r7.w = (int)r8.w + 1;
    r16.xyz = -refProbeConstantsCB[r0.x].data[0].xyz + r5.xyz;
    r10.w = 0x0000ffff & (int)refProbeConstantsCB[r0.x].data[7].z;
    if (6 == 0) r12.w = 0; else if (6+25 < 32) {     r12.w = (uint)refProbeConstantsCB[r0.x].data[7].z << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);    } else r12.w = (uint)refProbeConstantsCB[r0.x].data[7].z >> 25;
    r15.w = (int)r10.w * 6;
    r16.w = dot(refProbeAttenuationConstantsCB[r15.w].data[0].xyz, r16.xyz);
    r16.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[0].w + r16.w);
    r17.x = dot(refProbeAttenuationConstantsCB[r15.w].data[1].xyz, r16.xyz);
    r17.x = saturate(refProbeAttenuationConstantsCB[r15.w].data[1].w + r17.x);
    r16.w = r17.x * r16.w;
    r17.x = dot(refProbeAttenuationConstantsCB[r15.w].data[2].xyz, r16.xyz);
    r17.x = saturate(refProbeAttenuationConstantsCB[r15.w].data[2].w + r17.x);
    r16.w = r17.x * r16.w;
    r17.x = dot(refProbeAttenuationConstantsCB[r15.w].data[3].xyz, r16.xyz);
    r17.x = saturate(refProbeAttenuationConstantsCB[r15.w].data[3].w + r17.x);
    r16.w = r17.x * r16.w;
    r17.x = dot(refProbeAttenuationConstantsCB[r15.w].data[4].xyz, r16.xyz);
    r17.x = saturate(refProbeAttenuationConstantsCB[r15.w].data[4].w + r17.x);
    r16.w = r17.x * r16.w;
    r17.x = dot(refProbeAttenuationConstantsCB[r15.w].data[5].xyz, r16.xyz);
    r15.w = saturate(refProbeAttenuationConstantsCB[r15.w].data[5].w + r17.x);
    r17.x = r16.w * r15.w;
    r15.w = 1 & (int)refProbeConstantsCB[r0.x].data[6].x;
    r17.yz = float2(0,1);
    r17.xy = r15.ww ? r17.xy : r17.zx;
    r18.x = 1;
    r15.w = refProbeConstantsCB[r0.x].data[6].x;
    r19.xy = r17.xy;
    r16.w = 1;
    while (true) {
      r17.z = cmp((int)r16.w >= (int)r12.w);
      if (r17.z != 0) break;
      r17.z = (int)r10.w + (int)r16.w;
      r17.z = (int)r17.z * 6;
      r17.w = dot(refProbeAttenuationConstantsCB[r17.z].data[0].xyz, r16.xyz);
      r17.w = saturate(refProbeAttenuationConstantsCB[r17.z].data[0].w + r17.w);
      r17.w = r19.x * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[1].xyz, r16.xyz);
      r18.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[1].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[2].xyz, r16.xyz);
      r18.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[2].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[3].xyz, r16.xyz);
      r18.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[3].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[4].xyz, r16.xyz);
      r18.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[4].w + r18.z);
      r17.w = r18.z * r17.w;
      r18.z = dot(refProbeAttenuationConstantsCB[r17.z].data[5].xyz, r16.xyz);
      r17.z = saturate(refProbeAttenuationConstantsCB[r17.z].data[5].w + r18.z);
      r19.x = r17.w * r17.z;
      r18.z = (uint)r15.w >> 2;
      if (1 == 0) r18.w = 0; else if (1+2 < 32) {       r18.w = (uint)r15.w << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);      } else r18.w = (uint)r15.w >> 2;
      r19.z = (int)r18.z & 2;
      r19.w = max(r19.y, r19.x);
      r17.z = -r17.w * r17.z + 1;
      r17.z = r19.y * r17.z;
      r18.y = r19.z ? r17.z : r19.w;
      r19.xy = r18.ww ? r19.xy : r18.xy;
      r16.w = (int)r16.w + 1;
      r15.w = r18.z;
    }
    r10.w = saturate(r19.y + -r9.w);
    r12.w = refProbeConstantsCB[r0.x].data[6].y * r10.w;
    r15.w = cmp(0 < r12.w);
    if (r15.w != 0) {
      r15.w = (int)r7.w & 3;
      r16.w = (int)r15.w + -1;
      r16.w = cmp((uint)r16.w < 32);
      r16.w = r16.w ? r2.w : 0;
      if (r16.w != 0) {
        r17.xy = mad((int2)r15.ww, int2(20,20), int2(860,876));
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r15.w, cb2[52].x, r17.x, u2.xxxx
      r15.w = samplerLinear[]..swiz;
        r15.w = (int)r15.w | 32;
        GBufferDiffuseColor[viewID].r17.x = u2.x;
        GBufferDiffuseColor[viewID].r17.y = u2.x;
      }
      r7.w = (int)r8.w + 257;
      r10.w = r10.w * refProbeConstantsCB[r0.x].data[6].y + r9.w;
      r12.w = refProbeConstantsCB[r0.x].data[7].y * r12.w;
      r17.x = refProbeConstantsCB[r0.x].data[7].w;
      r17.yz = refProbeConstantsCB[r0.x].data[8].xy;
      r15.w = dot(r14.xyz, r17.xyz);
      r16.w = dot(r16.xyz, r17.xyz);
      r16.w = -refProbeConstantsCB[r0.x].data[8].z + r16.w;
      r17.x = cmp(r16.w >= 0);
      r16.w = max(abs(r16.w), r3.w);
      r16.w = r17.x ? r16.w : -r16.w;
      r15.w = max(1.00000001e-07, -r15.w);
      r15.w = r16.w / r15.w;
      r15.w = min(131072, abs(r15.w));
      r17.x = refProbeConstantsCB[r0.x].data[8].w;
      r17.yz = refProbeConstantsCB[r0.x].data[9].xy;
      r16.w = dot(r14.xyz, r17.xyz);
      r17.x = dot(r16.xyz, r17.xyz);
      r17.x = -refProbeConstantsCB[r0.x].data[9].z + r17.x;
      r17.y = cmp(r17.x >= 0);
      r17.x = max(abs(r17.x), r3.w);
      r17.x = r17.y ? r17.x : -r17.x;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r17.x / r16.w;
      r15.w = min(abs(r16.w), r15.w);
      r17.x = refProbeConstantsCB[r0.x].data[9].w;
      r17.yz = refProbeConstantsCB[r0.x].data[10].xy;
      r16.w = dot(r14.xyz, r17.xyz);
      r17.x = dot(r16.xyz, r17.xyz);
      r17.x = -refProbeConstantsCB[r0.x].data[10].z + r17.x;
      r17.y = cmp(r17.x >= 0);
      r17.x = max(abs(r17.x), r3.w);
      r17.x = r17.y ? r17.x : -r17.x;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r17.x / r16.w;
      r15.w = min(abs(r16.w), r15.w);
      r17.x = refProbeConstantsCB[r0.x].data[10].w;
      r17.yz = refProbeConstantsCB[r0.x].data[11].xy;
      r16.w = dot(r14.xyz, r17.xyz);
      r17.x = dot(r16.xyz, r17.xyz);
      r17.x = -refProbeConstantsCB[r0.x].data[11].z + r17.x;
      r17.y = cmp(r17.x >= 0);
      r17.x = max(abs(r17.x), r3.w);
      r17.x = r17.y ? r17.x : -r17.x;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r17.x / r16.w;
      r15.w = min(abs(r16.w), r15.w);
      r17.x = refProbeConstantsCB[r0.x].data[11].w;
      r17.yz = refProbeConstantsCB[r0.x].data[12].xy;
      r16.w = dot(r14.xyz, r17.xyz);
      r17.x = dot(r16.xyz, r17.xyz);
      r17.x = -refProbeConstantsCB[r0.x].data[12].z + r17.x;
      r17.y = cmp(r17.x >= 0);
      r17.x = max(abs(r17.x), r3.w);
      r17.x = r17.y ? r17.x : -r17.x;
      r16.w = max(1.00000001e-07, -r16.w);
      r16.w = r17.x / r16.w;
      r15.w = min(abs(r16.w), r15.w);
      r17.x = refProbeConstantsCB[r0.x].data[12].w;
      r17.yz = refProbeConstantsCB[r0.x].data[13].xy;
      r16.w = dot(r14.xyz, r17.xyz);
      r17.x = dot(r16.xyz, r17.xyz);
      r17.x = -refProbeConstantsCB[r0.x].data[13].z + r17.x;
      r17.y = cmp(r17.x >= 0);
      r3.w = max(abs(r17.x), r3.w);
      r3.w = r17.y ? r3.w : -r3.w;
      r16.w = max(1.00000001e-07, -r16.w);
      r3.w = r3.w / r16.w;
      r3.w = min(r15.w, abs(r3.w));
      r17.x = refProbeConstantsCB[r0.x].data[3].w + r16.x;
      r17.yz = refProbeConstantsCB[r0.x].data[4].xy + r16.yz;
      r17.xyz = r14.xyz * r3.www + r17.xyz;
      r15.w = dot(r17.xyz, r17.xyz);
      r15.w = sqrt(r15.w);
      r3.w = r3.w / r15.w;
      r3.w = r3.w + r3.w;
      r3.w = sqrt(r3.w);
      r3.y = r3.y * 5 + r3.w;
      r3.y = -0.844799995 + r3.y;
      r18.x = refProbeConstantsCB[r0.x].data[0].w;
      r18.y = refProbeConstantsCB[r0.x].data[1].z;
      r18.z = refProbeConstantsCB[r0.x].data[2].y;
      r19.x = dot(r17.xyz, r18.xyz);
      r20.xy = refProbeConstantsCB[r0.x].data[1].xw;
      r20.z = refProbeConstantsCB[r0.x].data[2].z;
      r19.y = dot(r17.xyz, r20.xyz);
      r21.x = refProbeConstantsCB[r0.x].data[1].y;
      r21.yz = refProbeConstantsCB[r0.x].data[2].xw;
      r19.z = dot(r17.xyz, r21.xyz);
      if (9 == 0) r3.w = 0; else if (9+16 < 32) {       r3.w = (uint)refProbeConstantsCB[r0.x].data[7].z << (32-(9 + 16)); r3.w = (uint)r3.w >> (32-9);      } else r3.w = (uint)refProbeConstantsCB[r0.x].data[7].z >> 16;
      r19.w = (uint)r3.w;
      r17.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, r3.y).xyz;
      r22.xyz = (int3)r17.xyz & int3(-2147483648,-2147483648,-2147483648);
      r22.xyz = cmp((int3)r22.xyz == int3(2139095040,2139095040,2139095040));
      r3.y = (int)r22.y | (int)r22.x;
      r3.y = (int)r22.z | (int)r3.y;
      r17.xyz = r3.yyy ? float3(1,1,0) : r17.xyz;
      r22.x = dot(r16.xyz, r18.xyz);
      r22.y = dot(r16.xyz, r20.xyz);
      r22.z = dot(r16.xyz, r21.xyz);
      r16.xyz = saturate(r22.xyz * refProbeConstantsCB[r0.x].data[3].xyz + float3(0.5,0.5,0.5));
      r22.xy = refProbeConstantsCB[r0.x].data[4].zw * r16.xy;
      r22.z = refProbeConstantsCB[r0.x].data[5].x * r16.z;
      r16.xyz = refProbeConstantsCB[r0.x].data[5].yzw + r22.xyz;
      r19.x = dot(r11.xyz, r18.xyz);
      r19.y = dot(r11.xyz, r20.xyz);
      r19.z = dot(r11.xyz, r21.xyz);
      r18.xyz = cmp(float3(0,0,0) < r19.xyz);
      r20.z = r18.x ? 0 : 0.5;
      r20.xy = float2(0,0);
      r20.xyz = r20.xyz + r16.xyz;
      r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
      r21.xyz = r19.xyz * r19.xyz;
      r21.xyz = r21.xyz * r12.www;
      r22.z = r18.y ? 0 : 0.5;
      r22.xy = float2(0,0);
      r18.xyw = r22.xyz + r16.xyz;
      r18.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyw, 0).xyz;
      r18.xyw = r18.xyw * r21.yyy;
      r18.xyw = r20.xyz * r21.xxx + r18.xyw;
      r20.z = r18.z ? 0 : 0.5;
      r20.xy = float2(0,0);
      r16.xyz = r20.xyz + r16.xyz;
      r16.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r16.xyz = r16.xyz * r21.zzz + r18.xyw;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r19.xyzw, 6).xyz;
      r19.xyz = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
      r19.xyz = cmp((int3)r19.xyz == int3(2139095040,2139095040,2139095040));
      r0.x = (int)r19.y | (int)r19.x;
      r0.x = (int)r19.z | (int)r0.x;
      r18.xyz = r0.xxx ? float3(1,1,0) : r18.xyz;
      r19.xyz = r18.xyz * r16.xyz;
      r0.x = dot(r19.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r13.yzw = r16.xyz * r18.xyz + r13.yzw;
      r3.y = r6.w * r0.x;
      r16.xyz = r17.xyz * r12.www;
      r3.w = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.x = r6.w * r0.x + r3.w;
      r0.x = r3.y / r0.x;
      r15.xyz = r16.xyz * r0.xxx + r15.xyz;
    } else {
      r10.w = r9.w;
    }
  } else {
    r10.w = r9.w;
    r7.w = r8.w;
  }
  r0.x = cmp(r9.w >= 1);
  bitmask.y = ((~(-1 << 8)) << 0) & 0xffffffff;  r3.y = (((uint)r7.w << 0) & bitmask.y) | ((uint)r8.w & ~bitmask.y);
  r0.x = r0.x ? r3.y : r7.w;
  r3.y = max(1, r10.w);
  r3.y = rcp(r3.y);
  r10.w = saturate(r10.w);
  r16.xyz = r13.yzw * r3.yyy;
  r15.xyz = r15.xyz * r3.yyy;
  r3.w = cmp(r10.w < 0.99000001);
  if (r3.w != 0) {
    r0.x = (int)r0.x + 256;
    r3.w = 1 + -r10.w;
    r6.w = sunConstants.globalProbeExposure * r3.w;
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
    r16.xyz = r13.yzw * r3.yyy + r17.xyz;
    r14.w = 0;
    r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r3.z).xyz;
    r3.y = sunConstants.globalProbeExposure * r3.w + -r6.w;
    r3.y = r2.y * r3.y + r6.w;
    r15.xyz = r13.yzw * r3.yyy + r15.xyz;
  }
  r3.y = r2.x + r4.z;
  r3.y = log2(abs(r3.y));
  r3.y = r3.y * r2.z;
  r3.y = exp2(r3.y);
  r3.y = r3.y + r4.z;
  r3.y = saturate(-1 + r3.y);
  r13.yzw = r16.xyz * r4.zzz;
  r3.zw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r3.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r3.zw, 0).xy;
  r15.xyz = r15.xyz * r3.yyy;
  r16.xyz = r15.xyz * r3.zzz;
  r3.yzw = r15.xyz * r3.www;
  r2.y = sqrt(r2.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r4.z = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r6.w = r2.x * r2.y + r4.z;
  r2.y = r6.w * r2.y;
  r4.z = r6.w * r4.z;
  r0.y = (int)r0.y * 15;
  if (3 == 0) r6.w = 0; else if (3+24 < 32) {   r6.w = (uint)lightConstantsCB[r0.y].data[1].w << (32-(3 + 24)); r6.w = (uint)r6.w >> (32-3);  } else r6.w = (uint)lightConstantsCB[r0.y].data[1].w >> 24;
  switch (r6.w) {
    case 4 :    if (r2.w != 0) {
      r15.yzw = lightConstantsCB[r0.y].data[0].xyz + eyeOffset.xyz;
      r15.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r7.w = cmp(0 < lightConstantsCB[r0.y].data[6].y);
    r15.xy = lightConstantsCB[r0.y].data[5].zw;
    r15.z = lightConstantsCB[r0.y].data[6].x;
    r17.xyz = -r15.xyz * float3(0.5,0.5,0.5) + lightConstantsCB[r0.y].data[0].xyz;
    r18.xyz = r17.xyz + -r5.xyz;
    r8.w = dot(r15.xyz, r18.xyz);
    r9.w = saturate(-r8.w / lightConstantsCB[r0.y].data[6].y);
    r19.xyz = r9.www * r15.xyz + r17.xyz;
    r19.xyz = r7.www ? r19.xyz : lightConstantsCB[r0.y].data[0].xyz;
    r19.xyz = r19.xyz + -r5.xyz;
    r10.w = dot(r19.xyz, r19.xyz);
    r11.w = rsqrt(r10.w);
    r19.xyz = r19.xyz * r11.www;
    r11.w = dot(r11.xyz, r19.xyz);
    r12.w = saturate(r11.w);
    r14.w = cmp(0 < r12.w);
    if (r14.w != 0) {
      r14.w = sqrt(r10.w);
      r15.w = lightConstantsCB[r0.y].data[3].x * lightConstantsCB[r0.y].data[3].x;
      r10.w = r15.w / r10.w;
      r10.w = min(1, r10.w);
      r19.xy = saturate(r14.ww * lightConstantsCB[r0.y].data[2].xz + lightConstantsCB[r0.y].data[2].yw);
      r19.zw = r19.xy * r19.xy;
      r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
      r19.xy = r19.zw * r19.xy;
      r10.w = r19.x * r10.w;
      r10.w = r10.w * r19.y;
      r14.w = cmp(0 < r10.w);
      if (r14.w != 0) {
        if (3 == 0) r14.w = 0; else if (3+27 < 32) {         r14.w = (uint)lightConstantsCB[r0.y].data[1].w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);        } else r14.w = (uint)lightConstantsCB[r0.y].data[1].w >> 27;
        if (r2.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r15.w, cb2[52].x, l(112), u2.xxxx
        r15.w = samplerLinear[]..swiz;
          r15.w = (int)r15.w | 4;
          GBufferDiffuseColor[viewID].112 = u2.x;
          GBufferDiffuseColor[viewID].128 = u2.x;
        }
        r14.w = cmp((int)r14.w != 1);
        if (r14.w != 0) {
          r19.xy = (uint2)r1.yx;
          r14.w = dot(r19.xy, float2(0.0671105608,0.00583714992));
          r14.w = frac(r14.w);
          r14.w = 52.9829178 * r14.w;
          r14.w = frac(r14.w);
          r14.w = r14.w * 6.28318548 + gameTick.w;
          sincos(r14.w, r19.x, r20.x);
          r14.w = abs(r11.w) * -0.200000003 + 0.400000006;
          r19.yzw = r11.xyz * r14.www + r5.xyz;
          r19.yzw = -lightConstantsCB[r0.y].data[4].yzw + r19.yzw;
          r14.w = max(abs(r19.z), abs(r19.w));
          r14.w = max(abs(r19.y), r14.w);
          r14.w = lightConstantsCB[r0.y].data[5].x / r14.w;
          r14.w = lightConstantsCB[r0.y].data[5].y + r14.w;
          r15.w = dot(r19.yzw, r19.yzw);
          r15.w = rsqrt(r15.w);
          r14.w = max(6.10351563e-05, r14.w);
          r16.w = 0x0000ffff & (int)lightConstantsCB[r0.y].data[1].w;
          r21.x = -r3.x;
          r22.w = (uint)r16.w;
          r21.y = r13.x;
          r21.z = r3.x;
          r16.w = 0;
          r17.w = 0;
          while (true) {
            r18.w = cmp((int)r17.w >= 8);
            if (r18.w != 0) break;
            r20.y = dot(icb[r17.w+0].yx, r21.xy);
            r20.z = dot(icb[r17.w+0].yx, r21.yz);
            r23.yz = lightConstantsCB[r0.y].data[3].yy * r20.yz;
            r23.x = r23.y * r20.x;
            r23.w = r23.y * r19.x;
            r22.xyz = r19.yzw * r15.www + r23.xzw;
            r18.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyzw, r14.w).x;
            r16.w = r18.w * 0.125 + r16.w;
            r17.w = (int)r17.w + 1;
          }
        } else {
          r16.w = 1;
        }
        r10.w = r16.w * r10.w;
        r14.w = cmp(0 < r10.w);
        if (r14.w != 0) {
          r14.w = lightConstantsCB[r0.y].data[1].z * r1.w;
          r15.w = dot(r15.xyz, r14.xyz);
          r14.x = dot(r14.xyz, r18.xyz);
          r14.y = -r15.w * r15.w + lightConstantsCB[r0.y].data[6].y;
          r8.w = r15.w * r14.x + -r8.w;
          r8.w = saturate(r8.w / r14.y);
          r14.x = r14.y / lightConstantsCB[r0.y].data[6].y;
          r14.xw = float2(10,0.25) * r14.xw;
          r14.x = min(1, r14.x);
          r8.w = r8.w + -r9.w;
          r8.w = r14.x * r8.w + r9.w;
          r14.xyz = r8.www * r15.xyz + r17.xyz;
          r14.xyz = r7.www ? r14.xyz : lightConstantsCB[r0.y].data[0].xyz;
          r14.xyz = r14.xyz + -r5.xyz;
          r7.w = dot(r14.xyz, r14.xyz);
          r7.w = rsqrt(r7.w);
          r15.xyz = r14.xyz * r7.www;
          if (4 == 0) r8.w = 0; else if (4+16 < 32) {           r8.w = (uint)lightConstantsCB[r0.y].data[1].w << (32-(4 + 16)); r8.w = (uint)r8.w >> (32-4);          } else r8.w = (uint)lightConstantsCB[r0.y].data[1].w >> 16;
          r9.w = cmp(0 < (uint)r8.w);
          r9.w = r9.w ? r1.z : 0;
          if (r9.w != 0) {
            r8.w = (int)r8.w + numLights;
            r8.w = mad((int)r8.w, 15, -15);
            r9.w = abs(r11.w) * -0.200000003 + 0.400000006;
            r17.xyz = r11.xyz * r9.www + r5.xyz;
            r18.xyz = lightConstantsCB[r8.w].data[6].yzw;
            r18.w = lightConstantsCB[r8.w].data[7].x;
            r17.w = 1;
            r9.w = dot(r18.xyzw, r17.xyzw);
            r18.xyz = lightConstantsCB[r8.w].data[7].yzw;
            r18.w = lightConstantsCB[r8.w].data[8].x;
            r15.w = dot(r18.xyzw, r17.xyzw);
            r16.w = cmp(r15.w < r9.w);
            if (r16.w == 0) {
              r18.xyz = lightConstantsCB[r8.w].data[4].yzw;
              r18.w = lightConstantsCB[r8.w].data[5].x;
              r18.x = dot(r18.xyzw, r17.xyzw);
              r19.xyz = lightConstantsCB[r8.w].data[5].yzw;
              r19.w = lightConstantsCB[r8.w].data[6].x;
              r18.y = dot(r19.xyzw, r17.xyzw);
              r17.xy = r18.xy / r15.ww;
              r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r18.x = lightConstantsCB[r8.w].data[9].w + r17.x;
              r18.y = lightConstantsCB[r8.w].data[10].x + r17.y;
              r17.xy = lightConstantsCB[r8.w].data[9].yz * r18.xy;
              r17.zw = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
              r18.xy = float2(1,1) + -r17.zw;
              r18.xy = cmp(r17.xy >= r18.xy);
              r17.zw = cmp(r17.zw >= r17.xy);
              r17.zw = (int2)r17.zw | (int2)r18.xy;
              r17.z = (int)r17.w | (int)r17.z;
              if (r17.z == 0) {
                r17.xy = saturate(r17.xy);
                r18.x = r17.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                r18.y = r17.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                r17.x = lightConstantsCB[r8.w].data[10].z * r15.w;
                r9.w = lightConstantsCB[r8.w].data[10].y * r15.w + r9.w;
                r9.w = r9.w / r17.x;
              }
            } else {
              r17.z = -1;
            }
            r15.w = (int)r16.w | (int)r17.z;
            if (r15.w == 0) {
              r9.w = max(6.10351563e-05, r9.w);
              r15.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r17.x = -r3.x;
                r19.z = (uint)r15.w;
                r17.y = r13.x;
                r17.z = r3.x;
                r16.w = 0;
                r17.w = 0;
                while (true) {
                  r18.w = cmp((int)r17.w >= 8);
                  if (r18.w != 0) break;
                  r20.x = dot(icb[r17.w+0].yx, r17.xy);
                  r20.y = dot(icb[r17.w+0].yx, r17.yz);
                  r19.xy = r20.xy * lightConstantsCB[r8.w].data[3].yy + r18.xy;
                  r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r9.w).x;
                  r16.w = r18.w * 0.125 + r16.w;
                  r17.w = (int)r17.w + 1;
                }
              } else {
                r18.z = (uint)r15.w;
                r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r9.w).x;
              }
              r8.w = r16.w * r16.w;
              r8.w = r8.w * r16.w;
            } else {
              r8.w = 1;
            }
            r10.w = r10.w * r8.w;
          } else {
            if (4 == 0) r8.w = 0; else if (4+20 < 32) {             r8.w = (uint)lightConstantsCB[r0.y].data[1].w << (32-(4 + 20)); r8.w = (uint)r8.w >> (32-4);            } else r8.w = (uint)lightConstantsCB[r0.y].data[1].w >> 20;
            r9.w = cmp(0 < (uint)r8.w);
            r15.w = ~(int)r1.z;
            r9.w = r9.w ? r15.w : 0;
            if (r9.w != 0) {
              r8.w = (int)r8.w + numLights;
              r8.w = mad((int)r8.w, 15, -15);
              r9.w = abs(r11.w) * -0.200000003 + 0.400000006;
              r17.xyz = r11.xyz * r9.www + r5.xyz;
              r18.xyz = lightConstantsCB[r8.w].data[6].yzw;
              r18.w = lightConstantsCB[r8.w].data[7].x;
              r17.w = 1;
              r9.w = dot(r18.xyzw, r17.xyzw);
              r18.xyz = lightConstantsCB[r8.w].data[7].yzw;
              r18.w = lightConstantsCB[r8.w].data[8].x;
              r15.w = dot(r18.xyzw, r17.xyzw);
              r16.w = cmp(r15.w < r9.w);
              if (r16.w == 0) {
                r18.xyz = lightConstantsCB[r8.w].data[4].yzw;
                r18.w = lightConstantsCB[r8.w].data[5].x;
                r18.x = dot(r18.xyzw, r17.xyzw);
                r19.xyz = lightConstantsCB[r8.w].data[5].yzw;
                r19.w = lightConstantsCB[r8.w].data[6].x;
                r18.y = dot(r19.xyzw, r17.xyzw);
                r17.xy = r18.xy / r15.ww;
                r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r18.x = lightConstantsCB[r8.w].data[9].w + r17.x;
                r18.y = lightConstantsCB[r8.w].data[10].x + r17.y;
                r17.xy = lightConstantsCB[r8.w].data[9].yz * r18.xy;
                r17.zw = lightConstantsCB[r8.w].data[3].yy / lightConstantsCB[r8.w].data[8].yw;
                r18.xy = float2(1,1) + -r17.zw;
                r18.xy = cmp(r17.xy >= r18.xy);
                r17.zw = cmp(r17.zw >= r17.xy);
                r17.zw = (int2)r17.zw | (int2)r18.xy;
                r17.z = (int)r17.w | (int)r17.z;
                if (r17.z == 0) {
                  r17.xy = saturate(r17.xy);
                  r18.x = r17.x * lightConstantsCB[r8.w].data[8].y + lightConstantsCB[r8.w].data[8].z;
                  r18.y = r17.y * lightConstantsCB[r8.w].data[8].w + lightConstantsCB[r8.w].data[9].x;
                  r17.x = lightConstantsCB[r8.w].data[10].z * r15.w;
                  r9.w = lightConstantsCB[r8.w].data[10].y * r15.w + r9.w;
                  r9.w = r9.w / r17.x;
                }
              } else {
                r17.z = -1;
              }
              r15.w = (int)r16.w | (int)r17.z;
              if (r15.w == 0) {
                r9.w = max(6.10351563e-05, r9.w);
                r15.w = 0x0000ffff & (int)lightConstantsCB[r8.w].data[1].w;
                if (enableDitheredShadow != 0) {
                  r17.x = -r3.x;
                  r19.z = (uint)r15.w;
                  r17.y = r13.x;
                  r17.z = r3.x;
                  r16.w = 0;
                  r17.w = 0;
                  while (true) {
                    r18.w = cmp((int)r17.w >= 8);
                    if (r18.w != 0) break;
                    r20.x = dot(icb[r17.w+0].yx, r17.xy);
                    r20.y = dot(icb[r17.w+0].yx, r17.yz);
                    r19.xy = r20.xy * lightConstantsCB[r8.w].data[3].yy + r18.xy;
                    r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r9.w).x;
                    r16.w = r18.w * 0.125 + r16.w;
                    r17.w = (int)r17.w + 1;
                  }
                } else {
                  r18.z = (uint)r15.w;
                  r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r9.w).x;
                }
                r8.w = r16.w * r16.w;
                r8.w = r8.w * r16.w;
              } else {
                r8.w = 1;
              }
              r10.w = r10.w * r8.w;
            }
          }
          r8.w = -r2.x * 0.5 + 1;
          r8.w = -r12.w * r8.w + 1;
          r8.w = r8.w * r8.w;
          r8.w = -r8.w * 0.620000005 + 0.620000005;
          r8.w = r8.w + -r12.w;
          r8.w = r2.z * r8.w + r12.w;
          r8.w = r8.w * r10.w;
          r17.x = lightConstantsCB[r0.y].data[0].w;
          r17.yz = lightConstantsCB[r0.y].data[1].xy;
          r9.w = cmp(0 < r11.w);
          r18.xyz = r8.www * r17.xyz + r13.yzw;
          r8.w = saturate(dot(r11.xyz, r15.xyz));
          r14.xyz = r14.xyz * r7.www + r12.xyz;
          r7.w = dot(r14.xyz, r14.xyz);
          r7.w = rsqrt(r7.w);
          r14.xyz = r14.xyz * r7.www;
          r7.w = dot(r14.xyz, r12.xyz);
          r11.w = dot(r11.xyz, r14.xyz);
          r12.w = abs(r11.w) * r1.w + -abs(r11.w);
          r11.w = abs(r11.w) * r12.w + 1;
          r12.w = r8.w * r2.y + r4.z;
          r11.w = r11.w * r11.w;
          r11.w = r11.w * r12.w;
          r11.w = rcp(r11.w);
          r8.w = r8.w * r14.w;
          r8.w = r11.w * r8.w;
          r8.w = r8.w * r10.w;
          r14.xyz = r8.www * r17.xyz + r3.yzw;
          r7.w = saturate(1 + -r7.w);
          r11.w = r7.w * r7.w;
          r11.w = r11.w * r11.w;
          r7.w = r11.w * r7.w;
          r7.w = r8.w * r7.w;
          r15.xyz = r7.www * r17.xyz + r16.xyz;
          r13.yzw = r9.www ? r18.xyz : r13.yzw;
          r16.xyz = r9.www ? r15.xyz : r16.xyz;
          r3.yzw = r9.www ? r14.xyz : r3.yzw;
          if (r2.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r7.w, cb2[52].x, l(112), u2.xxxx
          r7.w = samplerLinear[]..swiz;
            r7.w = (int)r7.w | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r6.w = 0x00010101;
        } else {
          r6.w = 257;
        }
      } else {
        r6.w = 1;
      }
    } else {
      r6.w = 1;
    }
    break;
    case 2 :    if (r2.w != 0) {
      r14.yzw = lightConstantsCB[r0.y].data[0].xyz + eyeOffset.xyz;
      r14.x = 2;
      GBufferDiffuseColor[viewID].112 = u2.xyzw;
    }
    r14.xy = lightConstantsCB[r0.y].data[3].zw + -r5.xy;
    r14.z = lightConstantsCB[r0.y].data[4].x + -r5.z;
    r7.w = dot(r14.xyz, r14.xyz);
    r7.w = rsqrt(r7.w);
    r15.xyz = r14.xyz * r7.www;
    r8.w = dot(r11.xyz, r15.xyz);
    r9.w = saturate(r8.w);
    r10.w = cmp(0 < r9.w);
    if (r10.w != 0) {
      r15.xyz = lightConstantsCB[r0.y].data[7].yzw;
      r15.w = lightConstantsCB[r0.y].data[8].x;
      r5.w = 1;
      r10.w = dot(r15.xyzw, r5.xyzw);
      r11.w = cmp(r10.w < 1);
      if (r11.w != 0) {
        r17.xyz = float3(1,1,1);
        r11.w = 0;
      } else {
        r18.xyz = lightConstantsCB[r0.y].data[0].xyz + -r5.xyz;
        r12.w = lightConstantsCB[r0.y].data[3].x * lightConstantsCB[r0.y].data[3].x;
        r14.w = dot(r18.xyz, r18.xyz);
        r12.w = r12.w / r14.w;
        r12.w = min(1, r12.w);
        r18.xy = saturate(r10.ww * lightConstantsCB[r0.y].data[2].xz + lightConstantsCB[r0.y].data[2].yw);
        r18.zw = r18.xy * r18.xy;
        r18.xy = r18.xy * float2(-2,-2) + float2(3,3);
        r18.xy = r18.zw * r18.xy;
        r12.w = r18.x * r12.w;
        r12.w = r12.w * r18.y;
        r18.xyz = lightConstantsCB[r0.y].data[4].yzw;
        r18.w = lightConstantsCB[r0.y].data[5].x;
        r18.x = dot(r18.xyzw, r5.xyzw);
        r19.xyz = lightConstantsCB[r0.y].data[5].yzw;
        r19.w = lightConstantsCB[r0.y].data[6].x;
        r18.y = dot(r19.xyzw, r5.xyzw);
        r18.xy = r18.xy / r10.ww;
        r5.w = cmp(lightConstantsCB[r0.y].data[10].w < 0.00048828125);
        if (r5.w != 0) {
          r19.xy = saturate(abs(r18.xy) * lightConstantsCB[r0.y].data[12].xy + lightConstantsCB[r0.y].data[12].zw);
          r19.zw = r19.xy * r19.xy;
          r19.xy = r19.xy * float2(-2,-2) + float2(3,3);
          r19.xy = r19.zw * r19.xy;
          r5.w = r19.x * r19.y;
        } else {
          r19.xyzw = saturate(lightConstantsCB[r0.y].data[11].xyzw * abs(r18.yyxx));
          r19.xyzw = log2(r19.xyzw);
          r19.xyzw = lightConstantsCB[r0.y].data[12].zzzz * r19.xyzw;
          r19.xyzw = exp2(r19.xyzw);
          r19.xy = r19.xy + r19.zw;
          r19.xy = log2(r19.xy);
          r19.xy = lightConstantsCB[r0.y].data[12].ww * r19.xy;
          r19.xy = exp2(r19.xy);
          r10.w = lightConstantsCB[r0.y].data[12].x * r19.x;
          r14.w = lightConstantsCB[r0.y].data[12].y * r19.y + -1;
          r10.w = lightConstantsCB[r0.y].data[12].y * r19.y + -r10.w;
          r10.w = saturate(r14.w / r10.w);
          r14.w = r10.w * r10.w;
          r10.w = r10.w * -2 + 3;
          r5.w = r14.w * r10.w;
        }
        r11.w = r12.w * r5.w;
        r5.w = 255 & (int)lightConstantsCB[r0.y].data[14].w;
        if (r5.w != 0) {
          r18.z = 1;
          r10.w = dot(lightConstantsCB[r0.y].data[13].xyz, r18.xyz);
          r19.x = lightConstantsCB[r0.y].data[13].w;
          r19.yz = lightConstantsCB[r0.y].data[14].xy;
          r12.w = dot(r19.xyz, r18.xyz);
          r18.x = frac(r10.w);
          r18.y = frac(r12.w);
          r5.w = (int)r5.w + -1;
          r18.z = (uint)r5.w;
          r17.xyz = gCookieArray.SampleLevel(samplerLinear_s, r18.xyz, 0).xyz;
        } else {
          r17.xyz = float3(1,1,1);
        }
      }
      r18.x = lightConstantsCB[r0.y].data[0].w;
      r18.yz = lightConstantsCB[r0.y].data[1].xy;
      r17.xyz = r18.xyz * r17.xyz;
      r5.w = cmp(0 < r11.w);
      if (r5.w != 0) {
        if (3 == 0) r5.w = 0; else if (3+27 < 32) {         r5.w = (uint)lightConstantsCB[r0.y].data[1].w << (32-(3 + 27)); r5.w = (uint)r5.w >> (32-3);        } else r5.w = (uint)lightConstantsCB[r0.y].data[1].w >> 27;
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
          r5.w = abs(r8.w) * -0.200000003 + 0.400000006;
          r18.xyz = r11.xyz * r5.www + r5.xyz;
          r19.xyz = lightConstantsCB[r0.y].data[6].yzw;
          r19.w = lightConstantsCB[r0.y].data[7].x;
          r18.w = 1;
          r5.w = dot(r19.xyzw, r18.xyzw);
          r10.w = dot(r15.xyzw, r18.xyzw);
          r12.w = cmp(r10.w >= r5.w);
          if (r12.w != 0) {
            r15.xyz = lightConstantsCB[r0.y].data[4].yzw;
            r15.w = lightConstantsCB[r0.y].data[5].x;
            r15.x = dot(r15.xyzw, r18.xyzw);
            r19.xyz = lightConstantsCB[r0.y].data[5].yzw;
            r19.w = lightConstantsCB[r0.y].data[6].x;
            r15.y = dot(r19.xyzw, r18.xyzw);
            r15.xy = r15.xy / r10.ww;
            r15.xy = saturate(r15.xy * float2(0.5,-0.5) + float2(0.5,0.5));
            r18.x = r15.x * lightConstantsCB[r0.y].data[8].y + lightConstantsCB[r0.y].data[8].z;
            r18.y = r15.y * lightConstantsCB[r0.y].data[8].w + lightConstantsCB[r0.y].data[9].x;
            r5.w = r5.w / r10.w;
            r5.w = max(6.10351563e-05, r5.w);
            r10.w = 0x0000ffff & (int)lightConstantsCB[r0.y].data[1].w;
            if (enableDitheredShadow != 0) {
              r15.x = -r3.x;
              r19.z = (uint)r10.w;
              r15.y = r13.x;
              r15.z = r3.x;
              r12.w = 0;
              r14.w = 0;
              while (true) {
                r15.w = cmp((int)r14.w >= 8);
                if (r15.w != 0) break;
                r20.x = dot(icb[r14.w+0].yx, r15.xy);
                r20.y = dot(icb[r14.w+0].yx, r15.yz);
                r19.xy = r20.xy * lightConstantsCB[r0.y].data[3].yy + r18.xy;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.w).x;
                r12.w = r15.w * 0.125 + r12.w;
                r14.w = (int)r14.w + 1;
              }
            } else {
              r18.z = (uint)r10.w;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
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
          r10.w = lightConstantsCB[r0.y].data[1].z * r1.w;
          r10.w = r10.w * r9.w;
          if (4 == 0) r11.w = 0; else if (4+16 < 32) {           r11.w = (uint)lightConstantsCB[r0.y].data[1].w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);          } else r11.w = (uint)lightConstantsCB[r0.y].data[1].w >> 16;
          r12.w = cmp(0 < (uint)r11.w);
          r12.w = r12.w ? r1.z : 0;
          if (r12.w != 0) {
            r11.w = (int)r11.w + numLights;
            r11.w = mad((int)r11.w, 15, -15);
            r12.w = abs(r8.w) * -0.200000003 + 0.400000006;
            r15.xyz = r11.xyz * r12.www + r5.xyz;
            r18.xyz = lightConstantsCB[r11.w].data[6].yzw;
            r18.w = lightConstantsCB[r11.w].data[7].x;
            r15.w = 1;
            r12.w = dot(r18.xyzw, r15.xyzw);
            r18.xyz = lightConstantsCB[r11.w].data[7].yzw;
            r18.w = lightConstantsCB[r11.w].data[8].x;
            r14.w = dot(r18.xyzw, r15.xyzw);
            r16.w = cmp(r14.w < r12.w);
            if (r16.w == 0) {
              r18.xyz = lightConstantsCB[r11.w].data[4].yzw;
              r18.w = lightConstantsCB[r11.w].data[5].x;
              r18.x = dot(r18.xyzw, r15.xyzw);
              r19.xyz = lightConstantsCB[r11.w].data[5].yzw;
              r19.w = lightConstantsCB[r11.w].data[6].x;
              r18.y = dot(r19.xyzw, r15.xyzw);
              r15.xy = r18.xy / r14.ww;
              r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r18.x = lightConstantsCB[r11.w].data[9].w + r15.x;
              r18.y = lightConstantsCB[r11.w].data[10].x + r15.y;
              r15.xy = lightConstantsCB[r11.w].data[9].yz * r18.xy;
              r15.zw = lightConstantsCB[r11.w].data[3].yy / lightConstantsCB[r11.w].data[8].yw;
              r18.xy = float2(1,1) + -r15.zw;
              r18.xy = cmp(r15.xy >= r18.xy);
              r15.zw = cmp(r15.zw >= r15.xy);
              r15.zw = (int2)r15.zw | (int2)r18.xy;
              r15.z = (int)r15.w | (int)r15.z;
              if (r15.z == 0) {
                r15.xy = saturate(r15.xy);
                r18.x = r15.x * lightConstantsCB[r11.w].data[8].y + lightConstantsCB[r11.w].data[8].z;
                r18.y = r15.y * lightConstantsCB[r11.w].data[8].w + lightConstantsCB[r11.w].data[9].x;
                r15.x = lightConstantsCB[r11.w].data[10].z * r14.w;
                r12.w = lightConstantsCB[r11.w].data[10].y * r14.w + r12.w;
                r12.w = r12.w / r15.x;
              }
            } else {
              r15.z = -1;
            }
            r14.w = (int)r16.w | (int)r15.z;
            if (r14.w == 0) {
              r12.w = max(6.10351563e-05, r12.w);
              r14.w = 0x0000ffff & (int)lightConstantsCB[r11.w].data[1].w;
              if (enableDitheredShadow != 0) {
                r15.x = -r3.x;
                r19.z = (uint)r14.w;
                r15.y = r13.x;
                r15.z = r3.x;
                r15.w = 0;
                r16.w = 0;
                while (true) {
                  r17.w = cmp((int)r16.w >= 8);
                  if (r17.w != 0) break;
                  r20.x = dot(icb[r16.w+0].yx, r15.xy);
                  r20.y = dot(icb[r16.w+0].yx, r15.yz);
                  r19.xy = r20.xy * lightConstantsCB[r11.w].data[3].yy + r18.xy;
                  r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r12.w).x;
                  r15.w = r17.w * 0.125 + r15.w;
                  r16.w = (int)r16.w + 1;
                }
              } else {
                r18.z = (uint)r14.w;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r12.w).x;
              }
              r11.w = r15.w * r15.w;
              r11.w = r11.w * r15.w;
            } else {
              r11.w = 1;
            }
            r5.w = r11.w * r5.w;
          } else {
            if (4 == 0) r0.y = 0; else if (4+20 < 32) {             r0.y = (uint)lightConstantsCB[r0.y].data[1].w << (32-(4 + 20)); r0.y = (uint)r0.y >> (32-4);            } else r0.y = (uint)lightConstantsCB[r0.y].data[1].w >> 20;
            r11.w = cmp(0 < (uint)r0.y);
            r1.z = ~(int)r1.z;
            r1.z = r11.w ? r1.z : 0;
            if (r1.z != 0) {
              r0.y = (int)r0.y + numLights;
              r0.y = mad((int)r0.y, 15, -15);
              r1.z = abs(r8.w) * -0.200000003 + 0.400000006;
              r15.xyz = r11.xyz * r1.zzz + r5.xyz;
              r18.xyz = lightConstantsCB[r0.y].data[6].yzw;
              r18.w = lightConstantsCB[r0.y].data[7].x;
              r15.w = 1;
              r1.z = dot(r18.xyzw, r15.xyzw);
              r18.xyz = lightConstantsCB[r0.y].data[7].yzw;
              r18.w = lightConstantsCB[r0.y].data[8].x;
              r11.w = dot(r18.xyzw, r15.xyzw);
              r12.w = cmp(r11.w < r1.z);
              if (r12.w == 0) {
                r18.xyz = lightConstantsCB[r0.y].data[4].yzw;
                r18.w = lightConstantsCB[r0.y].data[5].x;
                r18.x = dot(r18.xyzw, r15.xyzw);
                r19.xyz = lightConstantsCB[r0.y].data[5].yzw;
                r19.w = lightConstantsCB[r0.y].data[6].x;
                r18.y = dot(r19.xyzw, r15.xyzw);
                r15.xy = r18.xy / r11.ww;
                r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r18.x = lightConstantsCB[r0.y].data[9].w + r15.x;
                r18.y = lightConstantsCB[r0.y].data[10].x + r15.y;
                r15.xy = lightConstantsCB[r0.y].data[9].yz * r18.xy;
                r15.zw = lightConstantsCB[r0.y].data[3].yy / lightConstantsCB[r0.y].data[8].yw;
                r18.xy = float2(1,1) + -r15.zw;
                r18.xy = cmp(r15.xy >= r18.xy);
                r15.zw = cmp(r15.zw >= r15.xy);
                r15.zw = (int2)r15.zw | (int2)r18.xy;
                r14.w = (int)r15.w | (int)r15.z;
                if (r14.w == 0) {
                  r15.xy = saturate(r15.xy);
                  r18.x = r15.x * lightConstantsCB[r0.y].data[8].y + lightConstantsCB[r0.y].data[8].z;
                  r18.y = r15.y * lightConstantsCB[r0.y].data[8].w + lightConstantsCB[r0.y].data[9].x;
                  r15.x = lightConstantsCB[r0.y].data[10].z * r11.w;
                  r1.z = lightConstantsCB[r0.y].data[10].y * r11.w + r1.z;
                  r1.z = r1.z / r15.x;
                }
              } else {
                r14.w = -1;
              }
              r11.w = (int)r12.w | (int)r14.w;
              if (r11.w == 0) {
                r1.z = max(6.10351563e-05, r1.z);
                r11.w = 0x0000ffff & (int)lightConstantsCB[r0.y].data[1].w;
                if (enableDitheredShadow != 0) {
                  r15.x = -r3.x;
                  r19.z = (uint)r11.w;
                  r15.y = r13.x;
                  r15.z = r3.x;
                  r3.x = 0;
                  r12.w = 0;
                  while (true) {
                    r13.x = cmp((int)r12.w >= 8);
                    if (r13.x != 0) break;
                    r20.x = dot(icb[r12.w+0].yx, r15.xy);
                    r20.y = dot(icb[r12.w+0].yx, r15.yz);
                    r19.xy = r20.xy * lightConstantsCB[r0.y].data[3].yy + r18.xy;
                    r13.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r1.z).x;
                    r3.x = r13.x * 0.125 + r3.x;
                    r12.w = (int)r12.w + 1;
                  }
                } else {
                  r18.z = (uint)r11.w;
                  r3.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r1.z).x;
                }
                r0.y = r3.x * r3.x;
                r0.y = r0.y * r3.x;
              } else {
                r0.y = 1;
              }
              r5.w = r5.w * r0.y;
            }
          }
          r0.y = -r2.x * 0.5 + 1;
          r0.y = -r9.w * r0.y + 1;
          r0.y = r0.y * r0.y;
          r0.y = -r0.y * 0.620000005 + 0.620000005;
          r0.y = r0.y + -r9.w;
          r0.y = r2.z * r0.y + r9.w;
          r0.y = r0.y * r5.w;
          r1.z = cmp(0 < r8.w);
          r15.xyz = r0.yyy * r17.xyz + r13.yzw;
          r14.xyz = r14.xyz * r7.www + r12.xyz;
          r0.y = dot(r14.xyz, r14.xyz);
          r0.y = rsqrt(r0.y);
          r14.xyz = r14.xyz * r0.yyy;
          r0.y = dot(r14.xyz, r12.xyz);
          r2.x = dot(r11.xyz, r14.xyz);
          r1.w = abs(r2.x) * r1.w + -abs(r2.x);
          r1.w = abs(r2.x) * r1.w + 1;
          r2.x = r9.w * r2.y + r4.z;
          r1.w = r1.w * r1.w;
          r1.w = r1.w * r2.x;
          r1.w = rcp(r1.w);
          r1.w = r1.w * r10.w;
          r1.w = r5.w * r1.w;
          r1.w = 0.25 * r1.w;
          r2.xyz = r1.www * r17.xyz + r3.yzw;
          r0.y = saturate(1 + -r0.y);
          r3.x = r0.y * r0.y;
          r3.x = r3.x * r3.x;
          r0.y = r3.x * r0.y;
          r0.y = r1.w * r0.y;
          r11.xyz = r0.yyy * r17.xyz + r16.xyz;
          r13.yzw = r1.zzz ? r15.xyz : r13.yzw;
          r16.xyz = r1.zzz ? r11.xyz : r16.xyz;
          r3.yzw = r1.zzz ? r2.xyz : r3.yzw;
          if (r2.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=1792)(mixed,mixed,mixed,mixed) r0.y, cb2[52].x, l(112), u2.xxxx
          r0.y = samplerLinear[]..swiz;
            r0.y = (int)r0.y | 8;
            GBufferDiffuseColor[viewID].112 = u2.x;
            GBufferDiffuseColor[viewID].132 = u2.x;
          }
          r6.w = 0x00010101;
        } else {
          r6.w = 257;
        }
      } else {
        r6.w = 1;
      }
    } else {
      r6.w = 1;
    }
    break;
    default :
    r6.w = 0;
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
  r7.xy = r2.zz ? r7.yz : float2(-1,0);
  r8.xyz = r10.zxy * float3(3,1,2) + float3(0.5,0,-1);
  r2.z = (uint)r8.x;
  r0.y = cmp((int)r0.y == (int)r2.z);
  r7.zw = r0.yy ? r8.yz : float2(-1,0);
  r8.x = r1.z;
  r8.y = r2.x;
  r8.zw = r7.xz;
  r8.xyzw = r8.xyzw + -r4.xxxx;
  r8.xyzw = cmp(abs(r8.xyzw) >= float4(0.00902149174,0.00902149174,0.00902149174,0.00902149174));
  r8.xyzw = r8.xyzw ? float4(0,0,0,0) : float4(1,1,1,1);
  r0.y = r8.x + r8.y;
  r0.y = r0.y + r8.z;
  r0.y = r0.y + r8.w;
  r1.z = r8.y * r2.y;
  r1.z = r8.x * r1.w + r1.z;
  r1.z = r8.z * r7.y + r1.z;
  r1.z = r8.w * r7.w + r1.z;
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
  r2.xyz = float3(1,1,1) + -r4.xyz;
  r2.xyz = r16.xyz * r2.xyz;
  r2.xyz = r3.yzw * r4.xyz + r2.xyz;
  r2.xyz = r13.yzw * r6.xyz + r2.xyz;
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
      r1.z = r0.y * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r6.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
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
    r4.xyz = r5.xyz * r1.zzz;
    r1.z = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.z = saturate(fogConstants.sunFogAngles.y * r1.z + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.zzzz * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.y = r4.w * r0.y;
    r4.xyz = r4.xyz + -r2.xyz;
    r3.xyz = r0.yyy * r4.xyz + r2.xyz;
  }
  r2.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r2.xyz = r3.xyz ? r2.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r2.xyz);
  r0.y = cmp(0 < permuteHighlight);
  r3.xyzw = permuteHighlight & int4(32,3,64,12);
  r1.zw = cmp((int2)r3.xz != int2(0,0));
  r3.xy = cmp((int2)r3.yw == int2(2,8));
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
        case 1 :        r0.y = (int)r6.w & 1;
        break;
        case 2 :        if (1 == 0) r0.y = 0; else if (1+8 < 32) {         r0.y = (uint)r6.w << (32-(1 + 8)); r0.y = (uint)r0.y >> (32-1);        } else r0.y = (uint)r6.w >> 8;
        break;
        case 3 :        r0.y = (uint)r6.w >> 16;
        break;
        case 4 :        r0.y = (int)r0.x & 3;
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
    r1.w = (int)r6.w & 1;
    GBufferDiffuseColor[viewID].92 = u2.xyzw;
    r0.y = (int)r0.x & 3;
    GBufferDiffuseColor[viewID].108 = u2.x;
  }
  if (enableCountDebug != 0) {
    r0.y = (int)r6.w & 1;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(0), r0.y
    InterlockedAdd(dest, value, orig_value);
    if (1 == 0) r1.x = 0; else if (1+8 < 32) {     r1.x = (uint)r6.w << (32-(1 + 8)); r1.x = (uint)r1.x >> (32-1);    } else r1.x = (uint)r6.w >> 8;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(4), r1.x
    InterlockedAdd(dest, value, orig_value);
    r1.y = (uint)r6.w >> 16;
    // Needs manual fix for instruction:
    atomic_iadd g1, l(8), r1.y
    InterlockedAdd(dest, value, orig_value);
    r1.z = (int)r0.x & 3;
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