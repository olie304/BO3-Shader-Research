// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:07 2021

cbuffer _Globals : register(b0)
{
  float4 flagParams : packoffset(c0);
  float4 colorObjMin : packoffset(c1);
  float4 colorObjMax : packoffset(c2);
  float colorObjMinBaseBlend : packoffset(c3);
  float colorObjMaxBaseBlend : packoffset(c3.y);
  float2 uvScroll : packoffset(c3.z);
  float4 detailScale : packoffset(c4);
  float4 detailScale1 : packoffset(c5);
  float4 detailScale2 : packoffset(c6);
  float4 detailScale3 : packoffset(c7);
  float4 alphaRevealParms : packoffset(c8);
  float4 colorDetailScale : packoffset(c9);
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 normalMapScale : packoffset(c11.z);
  float4 specularLobeRoughnessControl : packoffset(c12);
  float2 lobeWeighting : packoffset(c13);
  float4 controlVar0 : packoffset(c14);
  float4 controlVar1 : packoffset(c15);
  float4 shoreUVControl : packoffset(c16);
  float reflectionGloss : packoffset(c17);
  float probeReflectionLevel : packoffset(c17.y);
  float2 horizonControl : packoffset(c17.z);
  float SSRLevel : packoffset(c18);
  float4 normalScaleLoHi : packoffset(c19);
  float3 normalUVScrollSpeed : packoffset(c20);
  float4 normalUVLo : packoffset(c21);
  float4 normalUVHi0 : packoffset(c22);
  float4 normalUVHi1 : packoffset(c23);
  float3 foamColor : packoffset(c24);
  float3 waterColorShallow : packoffset(c25);
  float3 waterColorDeep : packoffset(c26);
  float3 waterColorShallowScatter : packoffset(c27);
  float3 waterColorDeepScatter : packoffset(c28);
  float3 horizonColor : packoffset(c29);
  float4 foamMaskScroll01 : packoffset(c30);
  float4 foamMaskScroll23 : packoffset(c31);
  float4 foamMaskScale01 : packoffset(c32);
  float4 foamMaskScale23 : packoffset(c33);
  float foamScale : packoffset(c34);
  float3 foamSpacing : packoffset(c34.y);
  float foamColorScale : packoffset(c35);
  float foamWaveIncrease : packoffset(c35.y);
  float4 wave0K : packoffset(c36);
  float4 wave1K : packoffset(c37);
  float4 wave2K : packoffset(c38);
  float4 wave3K : packoffset(c39);
  float4 waveAmplitude : packoffset(c40);
  float4 waveSteepness : packoffset(c41);
  float4 waveFrequency : packoffset(c42);
  bool useFoam : packoffset(c43);
  bool useVertexWaves : packoffset(c43.y);
  bool scaleNormalsWithFlow : packoffset(c43.z);
  bool useSSR : packoffset(c43.w);
  float maxRayDepth : packoffset(c44);
}

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

SamplerState samp0_s : register(s0);
SamplerState colorSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState bilinearClamp_s : register(s5);
SamplerState bilinearTile_s : register(s6);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
Texture2DArray<uint> visibleLights : register(t6);
Texture2DArray<uint> visibleProbes : register(t7);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
TextureCubeArray<float> gOmniShadowmapArray : register(t10);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
StructuredBuffer<refProbeConstants> refProbeConstants : register(t15);
StructuredBuffer<refProbeAttenuationConstants> refProbeAttenuationConstants : register(t16);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
Texture2D<float4> normalMap : register(t21);
Texture2D<float4> controlMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMapHi : register(t24);
Texture2D<float4> maskMap : register(t25);
Texture2D<float4> ifloatZScene : register(t26);
Texture2D<float4> iResolveScene : register(t29);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float2 w2 : TEXCOORD6,
  float3 v3 : TEXCOORD1,
  float w3 : TEXCOORD9,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD10,
  float4 v10 : TEXCOORD11,
  uint v11 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
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
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = normalMap.Sample(normalSampler_s, v9.xy).xy;
  r0.xy = r0.xy * normalScaleLoHi.xx + normalScaleLoHi.yy;
  r1.xy = normalMapHi.Sample(normalSampler_s, v10.xy).xy;
  r1.zw = normalMapHi.Sample(normalSampler_s, v10.zw).xy;
  r1.xyzw = r1.xyzw * normalScaleLoHi.zzzz + normalScaleLoHi.wwww;
  r0.zw = r1.xy + r1.zw;
  r0.xy = r0.xy + r0.zw;
  r0.z = -r0.y;
  r0.w = 1;
  r0.y = dot(r0.xzw, r0.xzw);
  r0.y = rsqrt(r0.y);
  r1.xyz = r0.xzw * r0.yyy;
  r0.xz = controlVar1.ww * r1.xy;
  r2.xy = r1.xy * controlVar1.zz + v2.xy;
  r2.xyz = controlMap.Sample(bilinearTile_s, r2.xy).xyz;
  r3.xyz = waterColorDeep.xyz + -waterColorShallow.xyz;
  r3.xyz = r2.xxx * r3.xyz + waterColorShallow.xyz;
  r4.xyz = waterColorDeepScatter.xyz + -waterColorShallowScatter.xyz;
  r4.xyz = r2.xxx * r4.xyz + waterColorShallowScatter.xyz;
  r0.xz = r0.xz * r2.yy + w2.xy;
  r0.xzw = colorMap.Sample(colorSampler_s, r0.xz).xyz;
  r2.x = dot(v6.xyz, v6.xyz);
  r2.w = rsqrt(r2.x);
  r5.xyz = v6.xyz * r2.www;
  r2.w = saturate(dot(r1.xyz, -r5.xyz));
  r2.w = 1 + -r2.w;
  r3.w = r2.w * r2.w;
  r3.w = r3.w * r3.w;
  r2.w = r3.w * r2.w;
  r2.w = controlVar0.w * r2.w + controlVar0.z;
  r3.xyz = -r4.xyz + r3.xyz;
  r3.xyz = r2.www * r3.xyz + r4.xyz;
  if (useFoam != 0) {
    r2.w = maskMap.Sample(bilinearTile_s, v7.xy).x;
    r3.w = maskMap.Sample(bilinearTile_s, v7.zw).x;
    r4.x = maskMap.Sample(bilinearTile_s, v8.xy).x;
    r4.y = maskMap.Sample(bilinearTile_s, v8.zw).x;
    r2.w = r3.w + r2.w;
    r2.w = r2.w + r4.x;
    r2.w = r2.w + r4.y;
    r2.w = foamColorScale * r2.w;
    r2.z = foamSpacing.y * r2.z + foamSpacing.x;
    r2.z = w3.x + r2.z;
    r2.z = max(foamSpacing.z, r2.z);
    r2.w = max(0, r2.w);
    r2.w = log2(r2.w);
    r2.z = r2.z * r2.w;
    r2.z = exp2(r2.z);
    r4.xyz = foamColor.xyz + -r3.xyz;
    r3.xyz = r2.zzz * r4.xyz + r3.xyz;
    r4.xyz = foamColor.xyz + -r0.xzw;
    r0.xzw = r2.zzz * r4.xyz + r0.xzw;
    r2.w = 1 + -r2.z;
    r2.w = reflectionGloss * r2.w;
  } else {
    r2.w = reflectionGloss;
  }
  r4.xy = (uint2)v0.xy;
  r3.w = cmp(v0.z >= 0.984375);
  r4.z = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r3.w = r3.w ? r4.w : r4.z;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  r4.z = dot(-v6.xyz, -v6.xyz);
  r4.z = rsqrt(r4.z);
  r6.xyz = -v6.xyz * r4.zzz;
  r7.xy = (uint2)r4.yx;
  r4.w = dot(r7.yx, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r8.x, r9.x);
  r4.w = dot(r7.xy, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r7.x, r10.x);
  r4.w = saturate(dot(r1.xyz, r6.xyz));
  r5.w = dot(-r6.xyz, r1.xyz);
  r5.w = r5.w + r5.w;
  r11.xyz = r1.xyz * -r5.www + -r6.xyz;
  r5.w = 1 + -r2.w;
  r6.w = 5 * r5.w;
  r7.y = r5.w * 5 + -2.5;
  r7.y = saturate(0.400000006 * r7.y);
  r7.y = 100 * r7.y;
  r7.zw = -r5.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.z = exp2(r7.z);
  r7.z = r7.z * r4.w;
  r8.z = r6.w * r5.w;
  r7.w = -r8.z * 2.0159049 + r7.w;
  r7.w = exp2(r7.w);
  r7.w = r7.w * r4.w;
  r7.zw = float2(9.1368103,9.70808983) * r7.zw;
  r7.z = max(r7.z, r7.w);
  r7.z = max(1.26815999, r7.z);
  r7.w = numRefProbes + -numOverrideProbes;
  r3.w = 0.0078125 * r3.w;
  r3.w = min(15, r3.w);
  r3.w = (uint)r3.w;
  r12.xy = (uint2)r4.xy >> int2(6,6);
  r12.z = (uint)r3.w << 4;
  r3.w = (int)r7.w & -32;
  r4.x = (int)-r3.w + (int)r7.w;
  r4.y = numRefProbes & -32;
  r8.z = (int)-r4.y + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r8.w = r3.w;
  while (true) {
    r9.w = cmp((uint)r8.w >= numRefProbes);
    if (r9.w != 0) break;
    r13.z = (uint)r8.w >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r9.w = visibleProbes.Load(r14.xyzw).x;
    r10.y = cmp((int)r3.w == (int)r8.w);
    bitmask.z = ((~(-1 << r4.x)) << 0) & 0xffffffff;  r10.z = (((uint)0 << 0) & bitmask.z) | ((uint)r9.w & ~bitmask.z);
    r9.w = r10.y ? r10.z : r9.w;
    r10.y = cmp((int)r4.y == (int)r8.w);
    if (r8.z == 0) r10.z = 0; else if (r8.z+0 < 32) {     r10.z = (uint)r9.w << (32-(r8.z + 0)); r10.z = (uint)r10.z >> (32-r8.z);    } else r10.z = (uint)r9.w >> 0;
    r9.w = r10.y ? r10.z : r9.w;
    r10.y = (int)r8.w + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r10.z = r9.w;
    while (true) {
      if (r10.z == 0) break;
      r10.w = firstbitlow((uint)r10.z);
      r12.w = 1 << (int)r10.w;
      r13.z = (int)r10.z & (int)r12.w;
      if (r13.z != 0) {
        r10.z = (int)r10.z ^ (int)r12.w;
        r12.w = (int)r10.w + (int)r10.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r12.w, l(16), t11.xyxx
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
        r24.xyz = -v6.xyz + r24.xyz;
        r14.z = r24.w;
        r14.xyz = cmp(abs(r24.xyz) < r14.zxy);
        r12.w = r14.y ? r14.x : 0;
        r12.w = r14.z ? r12.w : 0;
        if (r12.w != 0) {
          r10.w = (int)r8.w + (int)r10.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.w, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r10.w, l(96), t15.xxxy
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r14.xyz = v6.xyz + -r24.yzw;
          r12.w = (int)r25.w & 0x0000ffff;
          if (6 == 0) r15.w = 0; else if (6+25 < 32) {           r15.w = (uint)r25.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);          } else r15.w = (uint)r25.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(0), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(16), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(32), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(48), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(64), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(80), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
          r16.w = dot(r26.xyz, r14.xyz);
          r16.w = saturate(r16.w + r26.w);
          r17.z = dot(r27.xyz, r14.xyz);
          r17.z = saturate(r17.z + r27.w);
          r16.w = r17.z * r16.w;
          r17.z = dot(r28.xyz, r14.xyz);
          r17.z = saturate(r17.z + r28.w);
          r16.w = r17.z * r16.w;
          r17.z = dot(r29.xyz, r14.xyz);
          r17.z = saturate(r17.z + r29.w);
          r16.w = r17.z * r16.w;
          r17.z = dot(r30.xyz, r14.xyz);
          r17.z = saturate(r17.z + r30.w);
          r16.w = r17.z * r16.w;
          r17.z = dot(r31.xyz, r14.xyz);
          r17.z = saturate(r17.z + r31.w);
          r15.x = r17.z * r16.w;
          r16.w = (int)r13.z & 1;
          r17.zw = r16.ww ? r15.xy : r15.zx;
          r15.x = r13.z;
          r26.xy = r17.zw;
          r16.w = 1;
          while (true) {
            r18.w = cmp((int)r16.w >= (int)r15.w);
            if (r18.w != 0) break;
            r18.w = (int)r12.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r18.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r18.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r18.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r18.w = dot(r27.xyz, r14.xyz);
            r18.w = saturate(r18.w + r27.w);
            r18.w = r26.x * r18.w;
            r19.w = dot(r28.xyz, r14.xyz);
            r19.w = saturate(r19.w + r28.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r29.xyz, r14.xyz);
            r19.w = saturate(r19.w + r29.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r30.xyz, r14.xyz);
            r19.w = saturate(r19.w + r30.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r31.xyz, r14.xyz);
            r19.w = saturate(r19.w + r31.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r32.xyz, r14.xyz);
            r19.w = saturate(r19.w + r32.w);
            r26.x = r19.w * r18.w;
            r24.w = (uint)r15.x >> 2;
            if (1 == 0) r26.z = 0; else if (1+2 < 32) {             r26.z = (uint)r15.x << (32-(1 + 2)); r26.z = (uint)r26.z >> (32-1);            } else r26.z = (uint)r15.x >> 2;
            r26.w = (int)r24.w & 2;
            r27.x = max(r26.y, r26.x);
            r18.w = -r18.w * r19.w + 1;
            r18.w = r26.y * r18.w;
            r17.y = r26.w ? r18.w : r27.x;
            r26.xy = r26.zz ? r26.xy : r17.xy;
            r16.w = (int)r16.w + 1;
            r15.x = r24.w;
          }
          r26.y = saturate(r26.y);
          r12.w = r26.y * r13.w;
          r13.z = cmp(0 < r12.w);
          if (r13.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(16), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(32), t15.yxwz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(48), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(64), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(80), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(132), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(148), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(164), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(180), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(196), t15.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r10.w, l(212), t15.xyxx
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
            r23.z = r26.y * r13.w + r23.z;
            r10.w = r12.w * r25.z;
            r25.z = r32.z;
            r12.w = dot(r11.xyz, r25.xyz);
            r13.z = dot(r14.xyz, r25.xyz);
            r13.z = r13.z + -r32.w;
            r13.w = cmp(r13.z >= 0);
            r13.z = max(abs(r13.z), r7.y);
            r13.z = r13.w ? r13.z : -r13.z;
            r12.w = max(1.00000001e-07, -r12.w);
            r12.w = r13.z / r12.w;
            r12.w = min(131072, abs(r12.w));
            r32.z = r33.z;
            r13.z = dot(r11.xyz, r32.xyz);
            r13.w = dot(r14.xyz, r32.xyz);
            r13.w = r13.w + -r33.w;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.y);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r33.z = r34.z;
            r13.z = dot(r11.xyz, r33.xyz);
            r13.w = dot(r14.xyz, r33.xyz);
            r13.w = r13.w + -r34.w;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.y);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r34.z = r35.z;
            r13.z = dot(r11.xyz, r34.xyz);
            r13.w = dot(r14.xyz, r34.xyz);
            r13.w = r13.w + -r35.w;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.y);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r35.z = r36.x;
            r13.z = dot(r11.xyz, r35.xyz);
            r13.w = dot(r14.xyz, r35.xyz);
            r13.w = r13.w + -r36.y;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.y);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r37.zw = r36.zw;
            r13.z = dot(r11.zxy, r37.xzw);
            r13.w = dot(r14.zxy, r37.xzw);
            r13.w = r13.w + -r37.y;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.y);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r12.w = min(abs(r13.z), r12.w);
            r25.x = r29.w;
            r25.yz = r30.zw;
            r17.yzw = r25.xyz + r14.xyz;
            r17.yzw = r11.xyz * r12.www + r17.yzw;
            r13.z = dot(r17.yzw, r17.yzw);
            r13.z = sqrt(r13.z);
            r12.w = r12.w / r13.z;
            r12.w = r12.w + r12.w;
            r12.w = sqrt(r12.w);
            r12.w = r5.w * 5 + r12.w;
            r12.w = -0.844799995 + r12.w;
            r24.y = r27.z;
            r24.z = r28.x;
            r32.x = dot(r17.yzw, r24.xyz);
            r25.xy = r27.xw;
            r25.z = r28.w;
            r32.y = dot(r17.yzw, r25.xyz);
            r28.x = r27.y;
            r32.z = dot(r17.yzw, r28.xyz);
            if (9 == 0) r13.z = 0; else if (9+16 < 32) {             r13.z = (uint)r25.w << (32-(9 + 16)); r13.z = (uint)r13.z >> (32-9);            } else r13.z = (uint)r25.w >> 16;
            r32.w = (uint)r13.z;
            r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r12.w).xyz;
            r27.x = dot(r14.xyz, r24.xyz);
            r27.y = dot(r14.xyz, r25.xyz);
            r27.z = dot(r14.xyz, r28.xyz);
            r14.xyz = saturate(r27.xyz * r29.xyz + float3(0.5,0.5,0.5));
            r30.z = r31.x;
            r14.xyz = r14.xyz * r30.xyz + r31.yzw;
            r32.x = dot(r1.xyz, r24.xyz);
            r32.y = dot(r1.xyz, r25.xyz);
            r32.z = dot(r1.xyz, r28.xyz);
            r24.xyz = cmp(float3(0,0,0) < r32.xyz);
            r16.z = r24.x ? 0 : 0.5;
            r25.xyz = r16.xyz + r14.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r26.xzw = r32.xyz * r32.xyz;
            r26.xzw = r26.xzw * r10.www;
            r18.z = r24.y ? 0 : 0.5;
            r24.xyw = r18.xyz + r14.xyz;
            r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
            r24.xyw = r24.xyw * r26.zzz;
            r24.xyw = r25.xyz * r26.xxx + r24.xyw;
            r19.z = r24.z ? 0 : 0.5;
            r14.xyz = r19.xyz + r14.xyz;
            r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
            r14.xyz = r14.xyz * r26.www + r24.xyw;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
            r25.xyz = r24.xyz * r14.xyz;
            r12.w = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r14.xyz * r24.xyz + r22.xyz;
            r13.z = r12.w * r7.z;
            r14.xyz = r17.yzw * r10.www;
            r10.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r10.w = r7.z * r12.w + r10.w;
            r10.w = r13.z / r10.w;
            r24.x = r22.w;
            r24.yz = r23.xy;
            r23.xyw = r14.yzx * r10.www + r24.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r8.w = (int)r8.w + 32;
  }
  r4.y = cmp(r21.w < 1);
  if (r4.y != 0) {
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r10.yzw = r20.xyz;
    r4.y = r21.w;
    r8.z = 0;
    while (true) {
      r8.w = cmp((uint)r8.z >= (uint)r7.w);
      if (r8.w != 0) break;
      r13.z = (uint)r8.z >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r8.w = visibleProbes.Load(r14.xyzw).x;
      r9.w = cmp((int)r3.w == (int)r8.z);
      if (r4.x == 0) r12.w = 0; else if (r4.x+0 < 32) {       r12.w = (uint)r8.w << (32-(r4.x + 0)); r12.w = (uint)r12.w >> (32-r4.x);      } else r12.w = (uint)r8.w >> 0;
      r8.w = r9.w ? r12.w : r8.w;
      r9.w = (int)r8.z + numLights;
      r23.xyzw = r22.xyzw;
      r14.xyz = r10.yzw;
      r12.w = r4.y;
      r13.z = r8.w;
      while (true) {
        if (r13.z == 0) break;
        r13.w = firstbitlow((uint)r13.z);
        r15.w = 1 << (int)r13.w;
        r16.w = (int)r13.z & (int)r15.w;
        if (r16.w != 0) {
          r13.z = (int)r13.z ^ (int)r15.w;
          r15.w = (int)r9.w + (int)r13.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r15.w, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r15.w, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v6.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r15.w = r24.y ? r24.x : 0;
          r15.w = r24.z ? r15.w : 0;
          if (r15.w != 0) {
            r13.w = (int)r8.z + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r13.w, l(96), t15.xxxy
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v6.xyz + -r24.yzw;
            r15.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r16.w = 0; else if (6+25 < 32) {             r16.w = (uint)r25.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);            } else r16.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r18.w = dot(r27.xyz, r26.xyz);
            r18.w = saturate(r18.w + r27.w);
            r19.w = dot(r28.xyz, r26.xyz);
            r19.w = saturate(r19.w + r28.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r29.xyz, r26.xyz);
            r19.w = saturate(r19.w + r29.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r30.xyz, r26.xyz);
            r19.w = saturate(r19.w + r30.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r31.xyz, r26.xyz);
            r19.w = saturate(r19.w + r31.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r32.xyz, r26.xyz);
            r19.w = saturate(r19.w + r32.w);
            r15.x = r19.w * r18.w;
            r18.w = (int)r17.z & 1;
            r27.xy = r18.ww ? r15.xy : r15.zx;
            r15.x = r17.z;
            r28.xy = r27.xy;
            r18.w = 1;
            while (true) {
              r19.w = cmp((int)r18.w >= (int)r16.w);
              if (r19.w != 0) break;
              r19.w = (int)r15.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r19.w = dot(r29.xyz, r26.xyz);
              r19.w = saturate(r19.w + r29.w);
              r19.w = r28.x * r19.w;
              r24.w = dot(r30.xyz, r26.xyz);
              r24.w = saturate(r24.w + r30.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r31.xyz, r26.xyz);
              r24.w = saturate(r24.w + r31.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r32.xyz, r26.xyz);
              r24.w = saturate(r24.w + r32.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r33.xyz, r26.xyz);
              r24.w = saturate(r24.w + r33.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r34.xyz, r26.xyz);
              r24.w = saturate(r24.w + r34.w);
              r28.x = r24.w * r19.w;
              r26.w = (uint)r15.x >> 2;
              if (1 == 0) r27.z = 0; else if (1+2 < 32) {               r27.z = (uint)r15.x << (32-(1 + 2)); r27.z = (uint)r27.z >> (32-1);              } else r27.z = (uint)r15.x >> 2;
              r27.w = (int)r26.w & 2;
              r28.z = max(r28.y, r28.x);
              r19.w = -r19.w * r24.w + 1;
              r19.w = r28.y * r19.w;
              r17.y = r27.w ? r19.w : r28.z;
              r28.xy = r27.zz ? r28.xy : r17.xy;
              r18.w = (int)r18.w + 1;
              r15.x = r26.w;
            }
            r15.x = saturate(r28.y + -r12.w);
            r15.w = r15.x * r17.w;
            r16.w = cmp(0 < r15.w);
            if (r16.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r13.w, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r23.w = r15.x * r17.w + r23.w;
              r13.w = r15.w * r25.z;
              r25.z = r33.z;
              r15.x = dot(r11.xyz, r25.xyz);
              r15.w = dot(r26.xyz, r25.xyz);
              r15.w = r15.w + -r33.w;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.y);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r15.x = min(131072, abs(r15.x));
              r33.z = r34.z;
              r15.w = dot(r11.xyz, r33.xyz);
              r16.w = dot(r26.xyz, r33.xyz);
              r16.w = r16.w + -r34.w;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.y);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r34.z = r35.z;
              r15.w = dot(r11.xyz, r34.xyz);
              r16.w = dot(r26.xyz, r34.xyz);
              r16.w = r16.w + -r35.w;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.y);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r35.z = r36.z;
              r15.w = dot(r11.xyz, r35.xyz);
              r16.w = dot(r26.xyz, r35.xyz);
              r16.w = r16.w + -r36.w;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.y);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r36.z = r37.x;
              r15.w = dot(r11.xyz, r36.xyz);
              r16.w = dot(r26.xyz, r36.xyz);
              r16.w = r16.w + -r37.y;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.y);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r38.zw = r37.zw;
              r15.w = dot(r11.zxy, r38.xzw);
              r16.w = dot(r26.zxy, r38.xzw);
              r16.w = r16.w + -r38.y;
              r17.y = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.y);
              r16.w = r17.y ? r16.w : -r16.w;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.w / r15.w;
              r15.x = min(r15.x, abs(r15.w));
              r25.x = r30.w;
              r25.yz = r31.zw;
              r17.yzw = r25.xyz + r26.xyz;
              r17.yzw = r11.xyz * r15.xxx + r17.yzw;
              r15.w = dot(r17.yzw, r17.yzw);
              r15.w = sqrt(r15.w);
              r15.x = r15.x / r15.w;
              r15.x = r15.x + r15.x;
              r15.x = sqrt(r15.x);
              r15.x = r5.w * 5 + r15.x;
              r15.x = -0.844799995 + r15.x;
              r24.y = r27.z;
              r24.z = r29.x;
              r33.x = dot(r17.yzw, r24.xyz);
              r25.xy = r27.xw;
              r25.z = r29.w;
              r33.y = dot(r17.yzw, r25.xyz);
              r29.x = r27.y;
              r33.z = dot(r17.yzw, r29.xyz);
              if (9 == 0) r15.w = 0; else if (9+16 < 32) {               r15.w = (uint)r25.w << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);              } else r15.w = (uint)r25.w >> 16;
              r33.w = (uint)r15.w;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r15.x).xyz;
              r27.x = dot(r26.xyz, r24.xyz);
              r27.y = dot(r26.xyz, r25.xyz);
              r27.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r27.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r1.xyz, r24.xyz);
              r33.y = dot(r1.xyz, r25.xyz);
              r33.z = dot(r1.xyz, r29.xyz);
              r24.xyz = cmp(float3(0,0,0) < r33.xyz);
              r16.z = r24.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r16.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xyz = r33.xyz * r33.xyz;
              r27.xyz = r27.xyz * r13.www;
              r18.z = r24.y ? 0 : 0.5;
              r24.xyw = r26.xyz + r18.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r27.yyy;
              r24.xyw = r25.xyz * r27.xxx + r24.xyw;
              r19.z = r24.z ? 0 : 0.5;
              r25.xyz = r26.xyz + r19.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = r25.xyz * r27.zzz + r24.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r26.xyz = r25.xyz * r24.xyz;
              r15.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.xyz = r24.xyz * r25.xyz + r14.xyz;
              r15.w = r15.x * r7.z;
              r17.yzw = r17.yzw * r13.www;
              r13.w = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r13.w = r7.z * r15.x + r13.w;
              r13.w = r15.w / r13.w;
              r23.xyz = r17.yzw * r13.www + r23.xyz;
            }
          }
        }
      }
      r22.xyzw = r23.xyzw;
      r10.yzw = r14.xyz;
      r8.z = (int)r8.z + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r10.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r3.w = max(1, r21.w);
  r3.w = rcp(r3.w);
  r21.w = saturate(r21.w);
  r7.yzw = r20.xyz * r3.www;
  r10.yzw = r21.xyz * r3.www;
  r4.x = cmp(r21.w < 0.99000001);
  if (r4.x != 0) {
    r4.x = 1 + -r21.w;
    r4.y = sunConstants.globalProbeExposure * r4.x;
    r13.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
    r14.x = globalProbeConstants.data[0].w * r13.x;
    r14.yz = globalProbeConstants.data[1].xy * r13.yz;
    r13.xyz = saturate(float3(0.5,0.5,0.5) + r14.xyz);
    r14.xy = globalProbeConstants.data[1].zw * r13.xy;
    r14.z = globalProbeConstants.data[2].x * r13.z;
    r13.xyz = globalProbeConstants.data[2].yzw + r14.xyz;
    r8.zw = cmp(float2(0,0) < r1.xy);
    r14.xy = r8.zw ? float2(0,0) : float2(0.5,0.5);
    r14.z = 0;
    r15.xyz = r14.zzx + r13.xyz;
    r15.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r16.xyz = r1.xyz * r1.xyz;
    r16.xyz = r16.xyz * r4.yyy;
    r14.xyz = r14.zzy + r13.xyz;
    r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r16.yyy;
    r14.xyz = r15.xyz * r16.xxx + r14.xyz;
    r0.y = cmp(0 < r0.y);
    r15.z = r0.y ? 0 : 0.5;
    r15.xy = float2(0,0);
    r13.xyz = r15.xyz + r13.xyz;
    r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
    r13.xyz = r13.xyz * r16.zzz + r14.xyz;
    r1.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
    r13.xyz = r14.xyz * r13.xyz;
    r0.y = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r7.yzw = r20.xyz * r3.www + r13.xyz;
    r11.w = 0;
    r11.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r6.w).xyz;
    r1.w = sunConstants.globalProbeExposure * r4.x + -r0.y;
    r0.y = r2.w * r1.w + r0.y;
    r10.yzw = r11.xyz * r0.yyy + r10.yzw;
  }
  r10.yzw = probeReflectionLevel * r10.yzw;
  if (useFoam != 0) {
    r0.y = dot(r5.xyz, r1.xyz);
    r0.y = r0.y + r0.y;
    r11.xyz = r1.xyz * -r0.yyy + r5.xyz;
    r13.xy = (int2)v0.xy;
    r13.zw = float2(0,0);
    r0.y = ifloatZScene.Load(r13.xyz).x;
    r1.w = cmp(r0.y >= 0.984375);
    r2.w = 1.01587307 * r0.y;
    r0.y = r0.y * 64 + -63;
    r0.y = r1.w ? r0.y : r2.w;
    r0.y = max(9.99999994e-09, r0.y);
    r0.y = rcp(r0.y);
    r0.y = -v0.w + r0.y;
    r0.y = max(0, r0.y);
    r0.y = min(maxRayDepth, r0.y);
    r11.w = abs(r11.z);
    r11.xyz = r11.xyw * r0.yyy + v6.xyz;
    r13.xyz = viewProjectionMatrix._m10_m11_m13 * r11.yyy;
    r11.xyw = r11.xxx * viewProjectionMatrix._m00_m01_m03 + r13.xyz;
    r11.xyz = r11.zzz * viewProjectionMatrix._m20_m21_m23 + r11.xyw;
    r11.xyz = viewProjectionMatrix._m30_m31_m33 + r11.xyz;
    r4.xy = r11.xy / r11.zz;
    r0.y = max(abs(r4.x), abs(r4.y));
    r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.zw = renderTargetSize.xy * r4.xy;
    r11.xy = (int2)r8.zw;
    r11.zw = float2(0,0);
    r1.w = ifloatZScene.Load(r11.xyz).x;
    r2.w = cmp(r1.w >= 0.984375);
    r3.w = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r2.w ? r1.w : r3.w;
    r1.w = max(9.99999994e-09, r1.w);
    r1.w = rcp(r1.w);
    r1.w = cmp(r1.w >= v0.w);
    r0.y = cmp(r0.y < 1);
    r0.y = r0.y ? r1.w : 0;
    r11.xyz = iResolveScene.Sample(bilinearClamp_s, r4.xy).xyz;
    if (r0.y != 0) {
      r11.xyz = relHDRExposure.xxx * r11.xyz;
      r11.xyz = SSRLevel * r11.xyz;
      r0.y = -r2.z * 0.5 + 1;
      r10.yzw = r11.xyz * r0.yyy;
    }
  }
  r0.y = dot(r1.xyz, sunConstants.wldDir.xyz);
  r1.w = saturate(r0.y);
  r2.z = cmp(0 >= r1.w);
  if (r2.z != 0) {
    r2.w = 0;
  }
  if (r2.z == 0) {
    r11.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r11.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.xyz;
    r11.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.xyz;
    r11.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.xyz;
    r2.z = -sunConstants.splitDepthOffset + r11.z;
    r2.z = -r2.z * 6.10351563e-05 + 1;
    r3.w = saturate(r2.z);
    r3.w = cmp(r2.z == r3.w);
    if (r3.w != 0) {
      r3.w = 0;
      r4.x = 0;
      while (true) {
        r4.y = cmp(r3.w >= 3);
        if (r4.y != 0) break;
        r4.y = (uint)r3.w;
        r8.zw = -sunConstants.splitPinTransform[r4.y].xy + r11.xy;
        r5.w = max(abs(r8.z), abs(r8.w));
        r4.x = sunConstants.splitPinTransform[r4.y].z * r5.w;
        r4.y = cmp(r4.x < 1);
        if (r4.y != 0) {
          break;
        }
        r3.w = 1 + r3.w;
        r4.x = 0;
      }
    } else {
      r3.w = 3;
      r4.x = 0;
    }
    r4.y = cmp(r3.w >= 3);
    if (r4.y != 0) {
      r13.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r14.xz = rcp(r13.xx);
      r14.y = -r14.z;
      r13.xyz = r11.xyx * r14.xyz + r13.yzy;
      r14.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.xyz = max(float3(0,0,0), r13.xyz);
      r13.xyz = min(r13.xyz, r14.xyz);
      r8.zw = sunConstants.sstLightingConstants.coordScale * r13.zy;
      r8.zw = floor(r8.zw);
      r5.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r8.w;
      r5.w = r5.w * sunConstants.sstLightingConstants.coordScale + r8.z;
      r5.w = (uint)r5.w;
      r5.w = (int)r5.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r5.w, l(0), t23.xxxx
    r6.w = samp0[]..swiz;
      r8.z = (int)r6.w & 0x40000000;
      r8.w = (uint)r6.w << 2;
      if (r8.z == 0) {
        r8.z = (int)r6.w & 0x01ffffff;
        r14.x = (int)r5.w + (int)r8.z;
        r5.w = (uint)r6.w >> 25;
        r5.w = (uint)r5.w;
        r13.xyz = r13.xyz * r5.www;
        r13.xyz = frac(r13.xyz);
        r13.xyz = float3(128,128,128) * r13.xyz;
        r13.xyz = (uint3)r13.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
      r14.z = samp0[]..swiz;
        r15.xy = (uint2)r13.zy >> int2(6,6);
        r5.w = (int)r14.z & 0xc0000000;
        r6.w = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r6.w, l(0), t23.xxxx
      r6.w = samp0[]..swiz;
        r6.w = r15.y ? r14.z : r6.w;
        r8.z = (uint)r6.w >> 13;
        r6.w = r15.x ? r8.z : r6.w;
        r6.w = (int)r6.w & 8191;
        r15.x = (int)r6.w + (int)r14.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.y = 0;
        r15.y = 1;
        r15.xyz = r5.www ? r14.xyz : r15.xyz;
        r16.yz = r5.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r17.xy = (uint2)r13.zy >> (uint2)r16.yy;
        r17.xy = (int2)r17.xy & int2(1,1);
        r6.w = (int)r15.z & 0xc0000000;
        r8.z = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.z, l(0), t23.xxxx
      r8.z = samp0[]..swiz;
        r8.z = r17.y ? r15.z : r8.z;
        r9.w = (uint)r8.z >> 13;
        r8.z = r17.x ? r9.w : r8.z;
        r8.z = (int)r8.z & 8191;
        r16.x = (int)r8.z + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r15.xyz = r6.www ? r15.xyz : r16.xzw;
        r14.xyz = r5.www ? r14.xyz : r15.xyz;
        r5.w = (int)r14.z & 0xc0000000;
        if (r5.w == 0) {
          r5.w = (int)-r14.y + 6;
          r15.xy = (uint2)r13.zy >> (uint2)r5.ww;
          r5.w = (int)r14.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r6.w = (((uint)r15.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r6.w = (((uint)r15.x << 0) & bitmask.w) | ((uint)r6.w & ~bitmask.w);
          r6.w = (int)r6.w * 10;
          r5.w = (uint)r5.w >> (uint)r6.w;
          r5.w = (int)r5.w & 1023;
          r15.x = (int)r5.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r15.yz = (int2)r14.yy + int2(1,2);
          r5.w = (int)-r15.y + 6;
          r14.yw = (uint2)r13.zy >> (uint2)r5.ww;
          r5.w = (int)r15.w & 0xc0000000;
          r6.w = (int)r15.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.z = (((uint)r14.w << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.z = (((uint)r14.y << 0) & bitmask.z) | ((uint)r8.z & ~bitmask.z);
          r8.z = (int)r8.z * 10;
          r6.w = (uint)r6.w >> (uint)r8.z;
          r6.w = (int)r6.w & 1023;
          r16.x = (int)r6.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.y = r15.z;
          r16.xyz = r5.www ? r15.xyw : r16.xyz;
          r6.w = (int)-r16.y + 6;
          r14.yw = (uint2)r13.zy >> (uint2)r6.ww;
          r6.w = (int)r16.z & 0xc0000000;
          r8.z = (int)r16.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.w = (((uint)r14.y << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
          r9.w = (int)r9.w * 10;
          r8.z = (uint)r8.z >> (uint)r9.w;
          r8.z = (int)r8.z & 1023;
          r17.x = (int)r8.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.x, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r14.yw = r6.ww ? r16.xz : r17.xy;
          r14.xz = r5.ww ? r15.xw : r14.yw;
        }
        r5.w = (int)r14.z & 0xc0000000;
        if (r5.w == 0) {
          if (14 == 0) r6.w = 0; else if (14+15 < 32) {           r6.w = (uint)r14.z << (32-(14 + 15)); r6.w = (uint)r6.w >> (32-14);          } else r6.w = (uint)r14.z >> 15;
          r6.w = (uint)r6.w;
          r6.w = sunConstants.sstLightingConstants.constants.spanInInches * r6.w;
          r6.w = 6.10388815e-05 * r6.w;
          r14.yw = (int2)r14.zz & int2(32767,536870912);
          r8.z = (uint)r14.y;
          r8.z = sunConstants.sstLightingConstants.constants.spanInInches * r8.z;
          r8.z = 3.05185094e-05 * r8.z;
          r9.w = (int)r13.y & 3;
          r9.w = (int)r9.w + (int)r14.x;
          r9.w = (int)r9.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
        r9.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r13.x = (((uint)r13.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r13.y = (((uint)r13.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r13.w = (((uint)r13.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r9.w = (uint)r9.w >> (uint)r13.x;
          r9.w = (int)r9.w & 255;
          r9.w = (uint)r9.w;
          r9.w = r9.w * r8.z;
          r9.w = r9.w * 0.00392156886 + r6.w;
          r11.w = (int)r13.y + 1;
          if (1 == 0) r12.w = 0; else if (1+1 < 32) {           r12.w = (uint)r13.z << (32-(1 + 1)); r12.w = (uint)r12.w >> (32-1);          } else r12.w = (uint)r13.z >> 1;
          r11.w = (int)r11.w + (int)r12.w;
          r11.w = (int)r11.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          r11.w = (uint)r11.w >> (uint)r13.w;
          r11.w = (int)r11.w & 0x0000ffff;
          r11.w = (uint)r11.w;
          r8.z = r11.w * r8.z;
          r6.w = r8.z * 1.52590219e-05 + r6.w;
          r8.w = r14.w ? r9.w : r6.w;
        } else {
          r6.w = (int)r14.z & 0x80000000;
          r8.z = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.z, l(0), t23.xxxx
        r8.z = samp0[]..swiz;
          r6.w = r6.w ? r8.z : 0;
          r8.z = (uint)r14.z << 2;
          r9.w = (uint)r6.w >> 16;
          r9.w = f16tof32(r9.w);
          r6.w = (int)r6.w & 0x0000ffff;
          r6.w = f16tof32(r6.w);
          r8.z = r11.x * r9.w + r8.z;
          r6.w = r11.y * r6.w + r8.z;
          r8.w = r5.w ? r6.w : r8.w;
        }
      }
      r5.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.z;
      r5.w = cmp(r8.w < r5.w);
      r2.w = r5.w ? 0 : 1;
    }
    if (r4.y == 0) {
      if (enableDitheredShadow == 0) {
        r4.y = (uint)r3.w;
        r8.zw = -sunConstants.splitPinTransform[r4.y].xy + r11.xy;
        r8.zw = sunConstants.splitPinTransform[r4.y].zz * r8.zw;
        r13.xy = r8.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r4.y = (int16)sunConstants.splitArrayOffset;
        r13.z = r4.y + r3.w;
        r4.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r2.z).x;
        r5.w = gTransShadowmapArray.SampleLevel(samp0_s, r13.xyz, 0).x;
        r4.y = r5.w + r4.y;
        r4.y = saturate(-1 + r4.y);
        r5.w = r4.y * r4.y;
        r2.w = r5.w * r4.y;
      }
      if (enableDitheredShadow != 0) {
        r13.x = -r8.x;
        r4.y = (uint)r3.w;
        r3.w = 1 + r3.w;
        r3.w = min(2, r3.w);
        r3.w = (uint)r3.w;
        r4.x = 1 + -r4.x;
        r4.x = 28 * r4.x;
        r4.x = (uint)r4.x;
        r8.zw = -sunConstants.splitPinTransform[r4.y].xy + r11.xy;
        r8.zw = sunConstants.splitPinTransform[r4.y].zz * r8.zw;
        r8.zw = r8.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.xy = -sunConstants.splitPinTransform[r3.w].xy + r11.xy;
        r11.xy = sunConstants.splitPinTransform[r3.w].zz * r11.xy;
        r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.y = r9.x;
        r13.z = r8.x;
        r5.w = 0;
        r6.w = 0;
        while (true) {
          r9.w = cmp((uint)r6.w >= 8);
          if (r9.w != 0) break;
          r9.w = cmp((uint)r4.x < (uint)r6.w);
          r11.zw = r9.ww ? r11.xy : r8.zw;
          r12.w = r9.w ? sunConstants.splitPinTransform[r3.w].w : sunConstants.splitPinTransform[r4.y].w;
          r9.w = r9.w ? r3.w : r4.y;
          r14.x = dot(icb[r6.w+0].yx, r13.xy);
          r14.y = dot(icb[r6.w+0].yx, r13.yz);
          r14.xy = r14.xy * r12.ww + r11.zw;
          r9.w = (int)r9.w + (int16)sunConstants.splitArrayOffset;
          r14.z = (uint)r9.w;
          r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r2.z).x;
          r11.z = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
          r9.w = r11.z + r9.w;
          r9.w = saturate(-1 + r9.w);
          r5.w = r9.w * 0.125 + r5.w;
          r6.w = (int)r6.w + 1;
        }
        r2.z = r5.w * r5.w;
        r2.w = r2.z * r5.w;
      }
    }
  }
  r2.z = viewmodelSunShadowRaw & 0x0000ffff;
  if (r2.z != 0) {
    r2.z = (int)r2.z + numLights;
    r2.z = (int)r2.z + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r3.w, r2.z, l(52), t12.xxxx
  r3.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r2.z, l(68), t12.xyzw
  r11.x = samp0[]..swiz;
  r11.y = samp0[]..swiz;
  r11.z = samp0[]..swiz;
  r11.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r2.z, l(84), t12.xyzw
  r13.x = samp0[]..swiz;
  r13.y = samp0[]..swiz;
  r13.z = samp0[]..swiz;
  r13.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r2.z, l(132), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r2.z, l(148), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
    r0.y = abs(r0.y) * -0.200000003 + 0.400000006;
    r16.xyz = r1.xyz * r0.yyy + v6.xyz;
    r16.w = 1;
    r4.x = dot(r11.xyzw, r16.xyzw);
    r4.y = dot(r13.xyzw, r16.xyzw);
    r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r4.xy = r4.xy + r15.zw;
    r4.xy = r4.xy * r15.xy;
    r8.zw = r3.ww / r14.xz;
    r11.xy = float2(1,1) + -r8.zw;
    r11.xy = cmp(r4.xy >= r11.xy);
    r8.zw = cmp(r8.zw >= r4.xy);
    r8.zw = (int2)r8.zw | (int2)r11.xy;
    r0.y = (int)r8.w | (int)r8.z;
    if (r0.y == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r0.y, r2.z, l(28), t12.xxxx
    r0.y = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r2.z, l(100), t12.xyzw
    r11.x = samp0[]..swiz;
    r11.y = samp0[]..swiz;
    r11.z = samp0[]..swiz;
    r11.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.zw, r2.z, l(164), t12.xxxy
    r8.z = samp0[]..swiz;
    r8.w = samp0[]..swiz;
      r2.z = dot(r11.xyzw, r16.xyzw);
      r4.xy = saturate(r4.xy);
      r11.xy = r4.xy * r14.xz + r14.yw;
      r2.z = r2.z + r8.z;
      r2.z = r2.z / r8.w;
      r2.z = max(6.10351563e-05, r2.z);
      r0.y = (int)r0.y & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r13.x = -r8.x;
        r14.z = (uint)r0.y;
        r13.y = r9.x;
        r13.z = r8.x;
        r4.xy = float2(0,0);
        while (true) {
          r5.w = cmp((int)r4.y >= 8);
          if (r5.w != 0) break;
          r15.x = dot(icb[r4.y+0].yx, r13.xy);
          r15.y = dot(icb[r4.y+0].yx, r13.yz);
          r14.xy = r15.xy * r3.ww + r11.xy;
          r5.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r2.z).x;
          r4.x = r5.w * 0.125 + r4.x;
          r4.y = (int)r4.y + 1;
        }
      } else {
        r11.z = (uint)r0.y;
        r4.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r2.z).x;
      }
      r0.y = r4.x * r4.x;
      r0.y = r0.y * r4.x;
    } else {
      r0.y = 1;
    }
    r2.w = r2.w * r0.y;
  }
  r11.xyz = sunConstants.color.xyz * r2.www;
  r13.xyz = -v6.xyz * r4.zzz + sunConstants.wldDir.xyz;
  r0.y = dot(r13.xyz, r13.xyz);
  r0.y = rsqrt(r0.y);
  r13.xyz = r13.xyz * r0.yyy;
  r0.y = saturate(dot(r1.xyz, r13.xyz));
  r2.z = saturate(dot(r13.xyz, sunConstants.wldDir.xyz));
  r2.w = saturate(dot(r13.xyz, r6.xyz));
  r2.z = 1 + -r2.z;
  r3.w = r2.z * r2.z;
  r3.w = r3.w * r3.w;
  r2.z = r3.w * r2.z;
  r2.z = controlVar0.w * r2.z + controlVar0.z;
  r0.y = log2(r0.y);
  r4.xy = controlVar0.xy * r0.yy;
  r4.xy = exp2(r4.xy);
  r0.y = dot(r4.xy, controlVar1.xy);
  r2.z = r2.z * r1.w;
  r2.w = 12.566371 * r2.w;
  r2.z = r2.z / r2.w;
  r0.y = r2.z * r0.y;
  r13.xyz = r11.xyz * r0.yyy;
  r0.y = r1.w + r1.w;
  r0.y = r1.w / r0.y;
  r14.xyz = r11.xyz * r0.yyy;
  r11.xyz = r11.xyz * r1.www;
  r15.x = -r8.x;
  r16.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v6.xyz;
  r18.w = 1;
  r19.w = 1;
  r15.z = r8.x;
  r20.z = 1;
  r21.w = 1;
  r15.yw = r9.xx;
  r8.y = r15.w;
  r22.w = 1;
  r9.y = r15.x;
  r9.z = r8.x;
  r23.x = r9.x;
  r23.y = r15.x;
  r23.z = r8.x;
  r24.xyz = r14.xyz;
  r25.xyz = r11.xyz;
  r26.xyz = r13.xyz;
  r0.y = enableDitheredShadow;
  r1.w = 0;
  while (true) {
    r2.z = cmp((uint)r1.w >= numLights);
    if (r2.z != 0) break;
    r16.z = (uint)r1.w >> 5;
    r17.xyz = (int3)r12.xyz + (int3)r16.xyz;
    r2.z = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r24.xyz;
    r27.xyz = r25.xyz;
    r28.xyz = r26.xyz;
    r2.w = r0.y;
    r3.w = r2.z;
    while (true) {
      if (r3.w == 0) break;
      r4.x = firstbitlow((uint)r3.w);
      r4.y = 1 << (int)r4.x;
      r5.w = (int)r3.w & (int)r4.y;
      if (r5.w != 0) {
        r3.w = (int)r3.w ^ (int)r4.y;
        r4.x = (int)r1.w + (int)r4.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r4.x, l(0), t12.xyzw
      r29.x = samp0[]..swiz;
      r29.y = samp0[]..swiz;
      r29.z = samp0[]..swiz;
      r29.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xy, r4.x, l(16), t12.xyxx
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r4.x, l(28), t12.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r4.x, l(44), t12.xyzw
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r4.x, l(60), t12.zwxy
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
      r33.z = samp0[]..swiz;
      r33.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r4.x, l(76), t12.xyzw
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
      r34.z = samp0[]..swiz;
      r34.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r4.x, l(92), t12.zwxy
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
      r35.z = samp0[]..swiz;
      r35.w = samp0[]..swiz;
        if (3 == 0) r4.y = 0; else if (3+24 < 32) {         r4.y = (uint)r31.x << (32-(3 + 24)); r4.y = (uint)r4.y >> (32-3);        } else r4.y = (uint)r31.x >> 24;
        switch (r4.y) {
          case 4 :          r4.y = cmp(0 < r35.x);
          r36.x = r34.w;
          r36.yz = r35.zw;
          r37.xyz = -r36.xyz * float3(0.5,0.5,0.5) + r29.xyz;
          r38.xyz = -v6.xyz + r37.xyz;
          r5.w = dot(r36.xyz, r38.xyz);
          r5.w = saturate(-r5.w / r35.x);
          r36.xyz = r5.www * r36.xyz + r37.xyz;
          r36.xyz = r4.yyy ? r36.xyz : r29.xyz;
          r36.xyz = -v6.xyz + r36.xyz;
          r4.y = dot(r36.xyz, r36.xyz);
          r5.w = rsqrt(r4.y);
          r36.xyz = r36.xyz * r5.www;
          r5.w = dot(r1.xyz, r36.xyz);
          r6.w = saturate(r5.w);
          r8.z = cmp(0 < r6.w);
          if (r8.z != 0) {
            r8.z = sqrt(r4.y);
            r8.w = r32.y * r32.y;
            r4.y = r8.w / r4.y;
            r4.y = min(1, r4.y);
            r8.w = saturate(r8.z * r31.y + r31.z);
            r8.z = saturate(r8.z * r31.w + r32.x);
            r9.w = r8.w * r8.w;
            r8.w = r8.w * -2 + 3;
            r8.w = r9.w * r8.w;
            r4.y = r8.w * r4.y;
            r8.w = r8.z * r8.z;
            r8.z = r8.z * -2 + 3;
            r8.z = r8.w * r8.z;
            r4.y = r8.z * r4.y;
            r8.z = cmp(0 < r4.y);
            if (r8.z != 0) {
              if (3 == 0) r8.z = 0; else if (3+27 < 32) {               r8.z = (uint)r31.x << (32-(3 + 27)); r8.z = (uint)r8.z >> (32-3);              } else r8.z = (uint)r31.x >> 27;
              if (4 == 0) r8.w = 0; else if (4+20 < 32) {               r8.w = (uint)r31.x << (32-(4 + 20)); r8.w = (uint)r8.w >> (32-4);              } else r8.w = (uint)r31.x >> 20;
              r8.z = cmp((int)r8.z != 1);
              if (r8.z != 0) {
                r8.z = abs(r5.w) * -0.200000003 + 0.400000006;
                r37.xyz = r1.xyz * r8.zzz + v6.xyz;
                r33.z = r34.x;
                r37.xyz = r37.xyz + -r33.xyz;
                r8.z = max(abs(r37.y), abs(r37.z));
                r8.z = max(abs(r37.x), r8.z);
                r8.z = r34.y / r8.z;
                r8.z = r8.z + r34.z;
                r9.w = dot(r37.xyz, r37.xyz);
                r9.w = rsqrt(r9.w);
                r8.z = max(6.10351563e-05, r8.z);
                r11.w = (int)r31.x & 0x0000ffff;
                r38.w = (uint)r11.w;
                r11.w = 0;
                r12.w = 0;
                while (true) {
                  r13.w = cmp((int)r12.w >= 8);
                  if (r13.w != 0) break;
                  r39.y = dot(icb[r12.w+0].yx, r15.xy);
                  r39.z = dot(icb[r12.w+0].yx, r15.yz);
                  r39.yz = r39.yz * r32.zz;
                  r39.x = r39.y * r10.x;
                  r39.w = r39.y * r7.x;
                  r38.xyz = r37.xyz * r9.www + r39.xzw;
                  r13.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyzw, r8.z).x;
                  r11.w = r13.w * 0.125 + r11.w;
                  r12.w = (int)r12.w + 1;
                }
              } else {
                r11.w = 1;
              }
              r4.y = r11.w * r4.y;
              if (r8.w != 0) {
                r8.z = (int)r8.w + numLights;
                r8.z = (int)r8.z + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
              r8.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r8.z, l(100), t12.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r8.z, l(116), t12.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
                r5.w = abs(r5.w) * -0.200000003 + 0.400000006;
                r19.xyz = r1.xyz * r5.www + v6.xyz;
                r5.w = dot(r37.xyzw, r19.xyzw);
                r9.w = dot(r38.xyzw, r19.xyzw);
                r12.w = cmp(r9.w < r5.w);
                if (r12.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r8.z, l(68), t12.xyzw
                r37.x = samp0[]..swiz;
                r37.y = samp0[]..swiz;
                r37.z = samp0[]..swiz;
                r37.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r8.z, l(84), t12.xyzw
                r38.x = samp0[]..swiz;
                r38.y = samp0[]..swiz;
                r38.z = samp0[]..swiz;
                r38.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r8.z, l(132), t12.xyzw
                r39.x = samp0[]..swiz;
                r39.y = samp0[]..swiz;
                r39.z = samp0[]..swiz;
                r39.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r8.z, l(148), t12.xyzw
                r40.x = samp0[]..swiz;
                r40.y = samp0[]..swiz;
                r40.z = samp0[]..swiz;
                r40.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.zw, r8.z, l(164), t12.xxxy
                r16.z = samp0[]..swiz;
                r16.w = samp0[]..swiz;
                  r37.x = dot(r37.xyzw, r19.xyzw);
                  r37.y = dot(r38.xyzw, r19.xyzw);
                  r19.xy = r37.xy / r9.ww;
                  r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r19.xy = r19.xy + r40.zw;
                  r19.xy = r19.xy * r40.xy;
                  r37.xy = r8.ww / r39.xz;
                  r37.zw = float2(1,1) + -r37.xy;
                  r37.zw = cmp(r19.xy >= r37.zw);
                  r37.xy = cmp(r37.xy >= r19.xy);
                  r37.xy = (int2)r37.xy | (int2)r37.zw;
                  r13.w = (int)r37.y | (int)r37.x;
                  r19.xy = saturate(r19.xy);
                  r19.xy = r19.xy * r39.xz + r39.yw;
                  r14.w = r16.w * r9.w;
                  r5.w = r16.z * r9.w + r5.w;
                  r5.w = r5.w / r14.w;
                } else {
                  r13.w = -1;
                }
                r9.w = (int)r12.w | (int)r13.w;
                if (r9.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r8.z, l(28), t12.xxxx
                r8.z = samp0[]..swiz;
                  r5.w = max(6.10351563e-05, r5.w);
                  r8.z = (int)r8.z & 0x0000ffff;
                  if (r2.w != 0) {
                    r37.z = (uint)r8.z;
                    r9.w = 0;
                    r12.w = 0;
                    while (true) {
                      r13.w = cmp((int)r12.w >= 8);
                      if (r13.w != 0) break;
                      r38.x = dot(icb[r12.w+0].yx, r15.xw);
                      r38.y = dot(icb[r12.w+0].xy, r8.xy);
                      r37.xy = r38.xy * r8.ww + r19.xy;
                      r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r5.w).x;
                      r9.w = r13.w * 0.125 + r9.w;
                      r12.w = (int)r12.w + 1;
                    }
                  } else {
                    r19.z = (uint)r8.z;
                    r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.w).x;
                  }
                  r5.w = r9.w * r9.w;
                  r5.w = r5.w * r9.w;
                } else {
                  r5.w = 1;
                }
                r4.y = r5.w * r4.y;
              }
              r5.w = cmp(0 < r4.y);
              if (r5.w != 0) {
                r19.xyz = -v6.xyz * r4.zzz + r36.xyz;
                r5.w = dot(r19.xyz, r19.xyz);
                r5.w = rsqrt(r5.w);
                r19.xyz = r19.xyz * r5.www;
                r5.w = saturate(dot(r1.xyz, r19.xyz));
                r8.z = saturate(dot(r19.xyz, r6.xyz));
                r8.w = saturate(dot(r19.xyz, r36.xyz));
                r30.z = r29.w;
                r19.xyz = r4.yyy * r30.zxy;
                r4.y = r6.w + r4.w;
                r4.y = r6.w / r4.y;
                r17.xyz = r19.xyz * r4.yyy + r17.xyz;
                r27.xyz = r19.xyz * r6.www + r27.xyz;
                r4.y = 1 + -r8.w;
                r8.w = r4.y * r4.y;
                r8.w = r8.w * r8.w;
                r4.y = r8.w * r4.y;
                r4.y = controlVar0.w * r4.y + controlVar0.z;
                r5.w = log2(r5.w);
                r16.zw = controlVar0.xy * r5.ww;
                r16.zw = exp2(r16.zw);
                r5.w = dot(r16.zw, controlVar1.xy);
                r4.y = r4.y * r6.w;
                r6.w = 12.566371 * r8.z;
                r4.y = r4.y / r6.w;
                r4.y = r5.w * r4.y;
                r28.xyz = r19.xyz * r4.yyy + r28.xyz;
              }
            }
          }
          break;
          case 2 :          r19.x = r32.w;
          r19.yz = r33.zw;
          r19.xyz = -v6.xyz + r19.xyz;
          r4.y = dot(r19.xyz, r19.xyz);
          r4.y = rsqrt(r4.y);
          r19.xyz = r19.xyz * r4.yyy;
          r4.y = dot(r1.xyz, r19.xyz);
          r5.w = saturate(r4.y);
          r6.w = cmp(0 < r5.w);
          if (r6.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r4.x, l(108), t12.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r4.x, l(124), t12.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
            r38.xy = r36.xy;
            r38.zw = r37.xy;
            r6.w = dot(r38.xyzw, r18.xyzw);
            r8.z = cmp(r6.w < 1);
            if (r8.z != 0) {
              r39.xyz = float3(1,1,1);
              r8.z = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r4.x, l(172), t12.yzwx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r4.x, l(188), t12.wxyz
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r4.x, l(204), t12.xyzw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r4.x, l(236), t12.xxxx
            r8.w = samp0[]..swiz;
              r29.xyz = -v6.xyz + r29.xyz;
              r12.w = r32.y * r32.y;
              r13.w = dot(r29.xyz, r29.xyz);
              r12.w = r12.w / r13.w;
              r12.w = min(1, r12.w);
              r13.w = saturate(r6.w * r31.y + r31.z);
              r14.w = saturate(r6.w * r31.w + r32.x);
              r16.z = r13.w * r13.w;
              r13.w = r13.w * -2 + 3;
              r13.w = r16.z * r13.w;
              r12.w = r13.w * r12.w;
              r13.w = r14.w * r14.w;
              r14.w = r14.w * -2 + 3;
              r13.w = r14.w * r13.w;
              r12.w = r13.w * r12.w;
              r33.zw = r34.xy;
              r29.x = dot(r33.xyzw, r18.xyzw);
              r43.xy = r34.zw;
              r43.zw = r35.zw;
              r29.y = dot(r43.xyzw, r18.xyzw);
              r20.xy = r29.xy / r6.ww;
              r6.w = cmp(r40.w < 0.00048828125);
              if (r6.w != 0) {
                r41.y = r42.x;
                r16.zw = saturate(abs(r20.xy) * r41.zw + r41.xy);
                r29.xy = r16.zw * r16.zw;
                r16.zw = r16.zw * float2(-2,-2) + float2(3,3);
                r16.zw = r29.xy * r16.zw;
                r6.w = r16.z * r16.w;
              } else {
                r40.w = r41.y;
                r40.xyzw = saturate(r40.xyzw * abs(r20.yyxx));
                r40.xyzw = log2(r40.xyzw);
                r40.xyzw = r41.xxxx * r40.xyzw;
                r40.xyzw = exp2(r40.xyzw);
                r16.zw = r40.xy + r40.zw;
                r16.zw = log2(r16.zw);
                r16.zw = r42.xx * r16.zw;
                r16.zw = exp2(r16.zw);
                r13.w = r41.z * r16.z;
                r14.w = r41.w * r16.w + -1;
                r13.w = r41.w * r16.w + -r13.w;
                r13.w = saturate(r14.w / r13.w);
                r14.w = r13.w * r13.w;
                r13.w = r13.w * -2 + 3;
                r6.w = r14.w * r13.w;
              }
              r8.z = r12.w * r6.w;
              r6.w = (int)r8.w & 255;
              if (r6.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyz, r4.x, l(220), t12.xyzx
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
                r8.w = dot(r42.yzw, r20.xyz);
                r12.w = dot(r29.xyz, r20.xyz);
                r29.x = frac(r8.w);
                r29.y = frac(r12.w);
                r6.w = (int)r6.w + -1;
                r29.z = (uint)r6.w;
                r39.xyz = gCookieArray.SampleLevel(samplerLinear_s, r29.xyz, 0).xyz;
              } else {
                r39.xyz = float3(1,1,1);
              }
            }
            r30.w = r29.w;
            r20.xyw = r39.xyz * r30.wxy;
            r6.w = cmp(0 < r8.z);
            if (r6.w != 0) {
              if (3 == 0) r16.z = 0; else if (3+27 < 32) {               r16.z = (uint)r31.x << (32-(3 + 27)); r16.z = (uint)r16.z >> (32-3);              } else r16.z = (uint)r31.x >> 27;
              if (4 == 0) r16.w = 0; else if (4+20 < 32) {               r16.w = (uint)r31.x << (32-(4 + 20)); r16.w = (uint)r16.w >> (32-4);              } else r16.w = (uint)r31.x >> 20;
              r6.w = cmp((int)r16.z != 1);
              if (r6.w != 0) {
                r6.w = abs(r4.y) * -0.200000003 + 0.400000006;
                r21.xyz = r1.xyz * r6.www + v6.xyz;
                r36.xy = r35.xy;
                r6.w = dot(r36.xyzw, r21.xyzw);
                r8.w = dot(r38.xyzw, r21.xyzw);
                r12.w = cmp(r8.w >= r6.w);
                if (r12.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xy, r4.x, l(140), t12.xyxx
                r37.x = samp0[]..swiz;
                r37.y = samp0[]..swiz;
                  r33.zw = r34.xy;
                  r29.x = dot(r33.xyzw, r21.xyzw);
                  r35.xy = r34.zw;
                  r29.y = dot(r35.xyzw, r21.xyzw);
                  r21.xy = r29.xy / r8.ww;
                  r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r21.xy = r21.xy * r37.zx + r37.wy;
                  r4.x = r6.w / r8.w;
                  r4.x = max(6.10351563e-05, r4.x);
                  r6.w = (int)r31.x & 0x0000ffff;
                  if (r2.w != 0) {
                    r29.z = (uint)r6.w;
                    r8.w = 0;
                    r12.w = 0;
                    while (true) {
                      r13.w = cmp((int)r12.w >= 8);
                      if (r13.w != 0) break;
                      r30.x = dot(icb[r12.w+0].xy, r9.xy);
                      r30.y = dot(icb[r12.w+0].yx, r9.xz);
                      r29.xy = r30.xy * r32.zz + r21.xy;
                      r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r4.x).x;
                      r8.w = r13.w * 0.125 + r8.w;
                      r12.w = (int)r12.w + 1;
                    }
                  } else {
                    r21.z = (uint)r6.w;
                    r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r4.x).x;
                  }
                  r4.x = r8.w * r8.w;
                  r4.x = r4.x * r8.w;
                } else {
                  r4.x = 1;
                }
              } else {
                r4.x = 1;
              }
              r4.x = r8.z * r4.x;
              if (r16.w != 0) {
                r6.w = (int)r16.w + numLights;
                r6.w = (int)r6.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r6.w, l(52), t12.xxxx
              r8.z = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r6.w, l(68), t12.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r6.w, l(84), t12.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r6.w, l(100), t12.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r6.w, l(116), t12.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r6.w, l(132), t12.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r6.w, l(148), t12.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
                r4.y = abs(r4.y) * -0.200000003 + 0.400000006;
                r22.xyz = r1.xyz * r4.yyy + v6.xyz;
                r21.x = dot(r29.xyzw, r22.xyzw);
                r21.y = dot(r30.xyzw, r22.xyzw);
                r4.y = dot(r31.xyzw, r22.xyzw);
                r12.w = dot(r32.xyzw, r22.xyzw);
                r13.w = cmp(r12.w < r4.y);
                r16.zw = r21.xy / r12.ww;
                r16.zw = r16.zw * float2(0.5,-0.5) + float2(0.5,0.5);
                r16.zw = r16.zw + r34.zw;
                r16.zw = r16.zw * r34.xy;
                r21.xy = r8.zz / r33.xz;
                r22.xy = float2(1,1) + -r21.xy;
                r22.xy = cmp(r16.zw >= r22.xy);
                r21.xy = cmp(r21.xy >= r16.zw);
                r21.xy = (int2)r21.xy | (int2)r22.xy;
                r14.w = (int)r21.y | (int)r21.x;
                r13.w = (int)r13.w | (int)r14.w;
                if (r13.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r6.w, l(28), t12.xxxx
                r13.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xy, r6.w, l(164), t12.xyxx
                r21.x = samp0[]..swiz;
                r21.y = samp0[]..swiz;
                  r16.zw = saturate(r16.zw);
                  r22.xy = r16.zw * r33.xz + r33.yw;
                  r6.w = r21.y * r12.w;
                  r4.y = r21.x * r12.w + r4.y;
                  r4.y = r4.y / r6.w;
                  r4.y = max(6.10351563e-05, r4.y);
                  r6.w = r13.w ? 0.000000 : 0;
                  if (r2.w != 0) {
                    r21.z = (uint)r6.w;
                    r12.w = 0;
                    r13.w = 0;
                    while (true) {
                      r14.w = cmp((int)r13.w >= 8);
                      if (r14.w != 0) break;
                      r29.x = dot(icb[r13.w+0].xy, r23.xy);
                      r29.y = dot(icb[r13.w+0].yx, r23.xz);
                      r21.xy = r29.xy * r8.zz + r22.xy;
                      r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r4.y).x;
                      r12.w = r14.w * 0.125 + r12.w;
                      r13.w = (int)r13.w + 1;
                    }
                  } else {
                    r22.z = (uint)r6.w;
                    r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r4.y).x;
                  }
                  r4.y = r12.w * r12.w;
                  r4.y = r4.y * r12.w;
                } else {
                  r4.y = 1;
                }
                r4.x = r4.x * r4.y;
              }
              r4.y = cmp(0 < r4.x);
              if (r4.y != 0) {
                r21.xyz = -v6.xyz * r4.zzz + r19.xyz;
                r4.y = dot(r21.xyz, r21.xyz);
                r4.y = rsqrt(r4.y);
                r21.xyz = r21.xyz * r4.yyy;
                r4.y = saturate(dot(r1.xyz, r21.xyz));
                r6.w = saturate(dot(r21.xyz, r6.xyz));
                r8.z = saturate(dot(r21.xyz, r19.xyz));
                r19.xyz = r4.xxx * r20.xyw;
                r4.x = r5.w + r4.w;
                r4.x = r5.w / r4.x;
                r17.xyz = r19.xyz * r4.xxx + r17.xyz;
                r27.xyz = r19.xyz * r5.www + r27.xyz;
                r4.x = 1 + -r8.z;
                r8.z = r4.x * r4.x;
                r8.z = r8.z * r8.z;
                r4.x = r8.z * r4.x;
                r4.x = controlVar0.w * r4.x + controlVar0.z;
                r4.y = log2(r4.y);
                r16.zw = controlVar0.xy * r4.yy;
                r16.zw = exp2(r16.zw);
                r4.y = dot(r16.zw, controlVar1.xy);
                r4.x = r4.x * r5.w;
                r5.w = 12.566371 * r6.w;
                r4.x = r4.x / r5.w;
                r4.x = r4.y * r4.x;
                r28.xyz = r19.xyz * r4.xxx + r28.xyz;
              }
            }
          }
          break;
          default :
          break;
        }
      }
    }
    r24.xyz = r17.xyz;
    r25.xyz = r27.xyz;
    r26.xyz = r28.xyz;
    r1.w = (int)r1.w + 32;
  }
  r1.xyz = r26.xyz + r10.yzw;
  r4.xyz = r24.xyz + r7.yzw;
  r6.xyz = r25.xyz + r7.yzw;
  r3.xyz = r4.xyz * r3.xyz;
  r0.xyz = r6.xyz * r0.xzw + -r3.xyz;
  r0.xyz = r2.yyy * r0.xyz + r3.xyz;
  r0.w = 1 + -r2.y;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.w = sqrt(r2.x);
  r1.x = r0.w * horizonControl.x + horizonControl.y;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.yzw = sunConstants.color.xyz * horizonColor.xyz;
  r0.xyz = -horizonColor.xyz * sunConstants.color.xyz + r0.xyz;
  r0.xyz = r1.xxx * r0.xyz + r1.yzw;
  r1.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.x != 0) {
    r1.x = cmp(0 < fogConstants.blendAmount);
    if (r1.x != 0) {
      r1.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.xy = fogConstants.atmospherefogdensityatcamera.xy * r1.xy;
      r1.z = cmp(0.00999999978 < abs(v6.z));
      r2.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r2.zw = float2(-1.44269502,-1.44269502) * r2.xy;
      r2.zw = exp2(r2.zw);
      r2.zw = float2(1,1) + -r2.zw;
      r2.xy = r2.zw / r2.xy;
      r2.xy = r2.xy * r1.xy;
      r1.xy = r1.zz ? r2.xy : r1.xy;
      r1.xzw = fogConstants.atmosphereTotalDensity.xyz * r1.xxx;
      r1.xzw = exp2(r1.xzw);
      r2.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.yyy;
      r2.xyz = exp2(r2.xyz);
      r2.xyz = r2.xyz + -r1.xzw;
      r1.xyz = fogConstants.blendAmount * r2.xyz + r1.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.x = cmp(0.00999999978 < abs(v6.z));
      r2.y = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r2.z = -1.44269502 * r2.y;
      r2.z = exp2(r2.z);
      r2.z = 1 + -r2.z;
      r2.y = r2.z / r2.y;
      r2.y = r2.y * r1.w;
      r1.w = r2.x ? r2.y : r1.w;
      r2.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r1.xyz = exp2(r2.xyz);
    }
    r1.xyz = r1.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r1.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r1.xyz);
    r1.w = dot(fogConstants.wldSunFogDir.xyz, -r5.xyz);
    r2.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.y = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
    r2.y = r2.y * r2.y;
    r2.y = 12.566371 * r2.y;
    r2.x = r2.x / r2.y;
    r2.y = -fogConstants.atmospherehazebasedist + r0.w;
    r2.y = saturate(fogConstants.atmospherehazefadedist * r2.y);
    r2.x = r2.x * r2.y;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r2.xyz = fogConstants.atmosphereMieDensity.xyz * r2.xxx;
    r2.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r3.xyz = float3(1,1,1) + -r1.xyz;
    r2.xyz = r3.xyz * r2.xyz;
    r1.xyz = r0.xyz * r1.xyz + r2.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v6.z;
    r2.x = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r2.y = cmp(abs(r1.w) < 9.99999975e-05);
    r2.z = min(64, r2.x);
    r2.z = 1.44269502 * r2.z;
    r2.z = exp2(r2.z);
    r2.w = saturate(fogConstants.K0b);
    r3.x = cmp(r2.x < 0);
    r2.x = 1 + r2.x;
    r2.x = r3.x ? r2.z : r2.x;
    r2.x = -fogConstants.K0b + r2.x;
    r1.w = r2.y ? 1 : r1.w;
    r1.w = r2.x / r1.w;
    r1.w = r2.y ? r2.w : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r0.w = r1.w * r0.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r5.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r1.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r2.w * r0.w;
    r2.xyz = r2.xyz + -r0.xyz;
    r1.xyz = r0.www * r2.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r1.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = 1;
  return;
}