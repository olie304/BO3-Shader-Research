// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:24 2021

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
  float3 colorTint : packoffset(c10);
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float2 rotateUVs : packoffset(c12.z);
  float2 scrollUVs : packoffset(c13);
  float2 scaleUVs : packoffset(c13.z);
  float2 offsetUVs : packoffset(c14);
  float2 zoomUVs : packoffset(c14.z);
  float zoomRate : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  bool clampU : packoffset(c15.z);
  bool clampV : packoffset(c15.w);
  float2 flickerSeed : packoffset(c16);
  float flickerSpeed : packoffset(c16.z);
  float2 flickerRange : packoffset(c17);
  float flickerPower : packoffset(c17.z);
  uint zFeatherComputeSprites : packoffset(c17.w);
  float hdrScale : packoffset(c18);
  float emissiveFalloffPower : packoffset(c18.y);
  float outlineHDR : packoffset(c18.z);
  float3 emissiveTint1 : packoffset(c19);
  float3 aberrationFactors : packoffset(c20);
  bool invertFalloff : packoffset(c20.w);
  float2 colorScroll : packoffset(c21);
  float2 colorScale : packoffset(c21.z);
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
SamplerState specColorSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState normalSampler_s : register(s5);
SamplerState aoSampler_s : register(s6);
SamplerState lookupSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
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
Texture2D<float4> tintMask : register(t21);
Texture2D<float4> specColorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> flickerLookupMap : register(t29);
Texture2D<float4> emissiveMap1 : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2D<float4> outlineMap : register(t37);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  uint v8 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = gameTime.ww * colorScroll.xy;
  r0.xy = v2.xy * colorScale.xy + r0.xy;
  r1.xyz = colorMap.Sample(colorSampler_s, r0.xy).xyz;
  r0.x = tintMask.Sample(colorSampler_s, r0.xy).x;
  r0.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r0.xyz = r0.xxx * r0.yzw + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  r0.w = specColorMap.Sample(specColorSampler_s, v2.xy).x;
  r1.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = saturate(1 + -r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = aoMap.Sample(aoSampler_s, v2.xy).x;
  r1.w = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r2.x = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.x + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.x = v8.x ? 1 : -1;
  r3.y = dot(v4.xyz, v4.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v4.xyz * r3.yyy;
  r4.xyz = r3.yzw * r3.xxx;
  r4.w = dot(v5.xyz, v5.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v5.xyz * r4.www;
  r5.xyz = r5.xyz * r3.xxx;
  r4.w = dot(v6.xyz, v6.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = v6.xyz * r4.www;
  r6.xyz = r6.xyz * r3.xxx;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r7.y = max(0, r1.w);
  r6.xyz = r6.xyz * r2.yyy;
  r2.xyz = r5.xyz * r2.xxx + r6.xyz;
  r2.xyz = r4.xyz * r2.www + r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = dot(-v7.xyz, -v7.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = -v7.xyz * r1.www;
  r5.x = dot(r4.xyz, v5.xyz);
  r5.y = dot(r4.xyz, v6.xyz);
  r3.x = dot(r4.xyz, v4.xyz);
  r4.w = cmp(0 < r3.x);
  r5.xy = -r5.xy / r3.xx;
  r5.xy = r4.ww ? r5.xy : 0;
  r5.zw = float2(-0.5,-0.5) + v2.xy;
  r3.x = 9.99999975e-06 + layerDepth;
  r5.xy = r5.xy * r3.xx;
  r5.xy = scaleUVs.xy * r5.xy;
  r5.xy = r5.zw * scaleUVs.xy + r5.xy;
  r5.xy = offsetUVs.xy * scaleUVs.xy + r5.xy;
  r3.x = rotateUVs.y * gameTime.w + 1;
  r3.x = rotateUVs.x * r3.x;
  r3.x = 0.0174532924 * r3.x;
  sincos(r3.x, r3.x, r6.x);
  r6.y = r6.x;
  r6.z = r3.x;
  r8.x = dot(r6.yz, r5.xy);
  r6.x = -r3.x;
  r8.y = dot(r6.xy, r5.xy);
  r5.xy = gameTime.ww * scrollUVs.xy;
  r5.xy = r5.xy * scaleUVs.xy + r8.xy;
  r3.x = gameTime.w * zoomRate;
  r3.x = cos(r3.x);
  r3.x = r3.x * 0.5 + 0.5;
  r3.x = 1 + -r3.x;
  r4.w = zoomUVs.y + -zoomUVs.x;
  r3.x = r3.x * r4.w + zoomUVs.x;
  r5.xy = r5.xy / r3.xx;
  r5.xy = float2(0.5,0.5) + r5.xy;
  r5.zw = saturate(r5.xy);
  r5.xy = clampU ? r5.zw : r5.xy;
  r3.x = saturate(dot(r4.xyz, r3.yzw));
  r3.y = emissiveMap1.Sample(colorSampler_s, r5.xy).w;
  r6.x = 0;
  r6.yz = gameTime.ww * aberrationFactors.xy;
  r8.xyzw = -r6.xyzz + r5.xyxy;
  r9.x = emissiveMap1.Sample(colorSampler_s, r8.xy).x;
  r9.y = emissiveMap1.Sample(colorSampler_s, r8.zw).y;
  r8.xz = float2(0,1);
  r8.y = gameTime.w * aberrationFactors.z;
  r3.zw = -r8.xy + r5.xy;
  r9.z = emissiveMap1.Sample(colorSampler_s, r3.zw).z;
  r3.z = log2(r3.x);
  r3.yz = hdrScale * r3.yz;
  r3.z = exp2(r3.z);
  r3.x = 1 + -r3.x;
  r3.x = log2(r3.x);
  r3.x = emissiveFalloffPower * r3.x;
  r3.x = exp2(r3.x);
  r3.x = invertFalloff ? r3.x : r3.z;
  r3.z = cmp(emissiveFalloffPower == 0.000000);
  r3.x = r3.z ? 1 : r3.x;
  r3.x = r3.y * r3.x;
  r3.xyz = r9.xyz * r3.xxx;
  r3.w = v3.x + v3.y;
  r3.w = v3.z + r3.w;
  r3.w = flickerSeed.y + r3.w;
  r3.w = frac(r3.w);
  r5.y = gameTime.w * flickerSpeed + r3.w;
  r5.x = flickerSeed.x;
  r3.w = flickerLookupMap.SampleLevel(lookupSampler_s, r5.xy, 0).x;
  r3.w = log2(abs(r3.w));
  r3.w = flickerPower * r3.w;
  r3.w = exp2(r3.w);
  r4.w = flickerRange.y + -flickerRange.x;
  r3.w = r3.w * r4.w + flickerRange.x;
  r4.w = outlineMap.Sample(colorSampler_s, v2.xy).w;
  r5.xyzw = v2.xyxy + r6.xyzz;
  r6.x = outlineMap.Sample(colorSampler_s, r5.xy).x;
  r6.y = outlineMap.Sample(colorSampler_s, r5.zw).y;
  r5.xy = v2.xy + r8.xy;
  r6.z = outlineMap.Sample(colorSampler_s, r5.xy).z;
  r5.xyz = emissiveTint1.xyz * r6.xyz;
  r4.w = outlineHDR * r4.w;
  r5.xyz = r5.xyz * r4.www;
  r6.xy = (uint2)v0.xy;
  r4.w = cmp(v0.z >= 0.984375);
  r5.w = 1.01587307 * v0.z;
  r6.z = v0.z * 64 + -63;
  r4.w = r4.w ? r6.z : r5.w;
  r4.w = max(9.99999994e-09, r4.w);
  r4.w = rcp(r4.w);
  r5.w = cmp(isDepthHack != 0);
  r6.zw = (uint2)r6.yx;
  r7.z = dot(r6.wz, float2(0.0671105608,0.00583714992));
  r7.z = frac(r7.z);
  r7.z = 52.9829178 * r7.z;
  r7.z = frac(r7.z);
  r7.z = r7.z * 6.28318548 + gameTick.w;
  sincos(r7.z, r8.x, r9.x);
  r6.z = dot(r6.zw, float2(0.0671105608,0.00583714992));
  r6.z = frac(r6.z);
  r6.z = 52.9829178 * r6.z;
  r6.z = frac(r6.z);
  r6.z = r6.z * 6.28318548 + gameTick.w;
  sincos(r6.z, r10.x, r11.x);
  r7.x = saturate(dot(r2.xyz, r4.xyz));
  r6.z = dot(-r4.xyz, r2.xyz);
  r6.z = r6.z + r6.z;
  r12.xyz = r2.xyz * -r6.zzz + -r4.xyz;
  r6.z = 17 * r7.y;
  r6.z = exp2(r6.z);
  r6.z = 2 + r6.z;
  r6.z = 2 / r6.z;
  r6.w = sqrt(r6.z);
  r7.z = 1 + -r7.y;
  r7.w = 5 * r7.z;
  r9.w = r7.z * 5 + -2.5;
  r9.w = 0.400000006 * r9.w;
  r9.w = max(0, r9.w);
  r9.w = 100 * r9.w;
  r10.yz = -r7.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r10.y = exp2(r10.y);
  r10.y = r10.y * r7.x;
  r10.w = r7.w * r7.z;
  r10.z = -r10.w * 2.0159049 + r10.z;
  r10.z = exp2(r10.z);
  r10.z = r10.z * r7.x;
  r10.yz = float2(9.1368103,9.70808983) * r10.yz;
  r10.y = max(r10.y, r10.z);
  r10.y = max(1.26815999, r10.y);
  r10.z = numRefProbes + -numOverrideProbes;
  r4.w = 0.0078125 * r4.w;
  r4.w = min(15, r4.w);
  r4.w = (uint)r4.w;
  r13.xy = (uint2)r6.xy >> int2(6,6);
  r13.z = (uint)r4.w << 4;
  r4.w = (int)r10.z & -32;
  r6.x = (int)-r4.w + (int)r10.z;
  r6.y = numRefProbes & -32;
  r10.w = (int)-r6.y + numRefProbes;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r11.y = r4.w;
  while (true) {
    r11.z = cmp((uint)r11.y >= numRefProbes);
    if (r11.z != 0) break;
    r14.z = (uint)r11.y >> 5;
    r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
    r11.z = visibleProbes.Load(r15.xyzw).x;
    r11.w = cmp((int)r4.w == (int)r11.y);
    bitmask.w = ((~(-1 << r6.x)) << 0) & 0xffffffff;  r13.w = (((uint)0 << 0) & bitmask.w) | ((uint)r11.z & ~bitmask.w);
    r11.z = r11.w ? r13.w : r11.z;
    r11.w = cmp((int)r6.y == (int)r11.y);
    if (r10.w == 0) r13.w = 0; else if (r10.w+0 < 32) {     r13.w = (uint)r11.z << (32-(r10.w + 0)); r13.w = (uint)r13.w >> (32-r10.w);    } else r13.w = (uint)r11.z >> 0;
    r11.z = r11.w ? r13.w : r11.z;
    r11.w = (int)r11.y + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r13.w = r11.z;
    while (true) {
      if (r13.w == 0) break;
      r14.z = firstbitlow((uint)r13.w);
      r14.w = 1 << (int)r14.z;
      r15.x = (int)r13.w & (int)r14.w;
      if (r15.x != 0) {
        r13.w = (int)r13.w ^ (int)r14.w;
        r14.w = (int)r11.w + (int)r14.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r14.w, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r14.w, l(16), t11.xyxx
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
        r24.xyz = -v7.xyz + r24.xyz;
        r15.z = r24.w;
        r15.xyz = cmp(abs(r24.xyz) < r15.zxy);
        r14.w = r15.y ? r15.x : 0;
        r14.w = r15.z ? r14.w : 0;
        if (r14.w != 0) {
          r14.z = (int)r11.y + (int)r14.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r14.z, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xy, r14.z, l(96), t15.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r14.z, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r26.xyz = v7.xyz + -r24.yzw;
          r14.w = (int)r25.w & 0x0000ffff;
          if (6 == 0) r15.z = 0; else if (6+25 < 32) {           r15.z = (uint)r25.w << (32-(6 + 25)); r15.z = (uint)r15.z >> (32-6);          } else r15.z = (uint)r25.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(0), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(16), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(32), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(48), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(64), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(80), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
          r16.w = dot(r27.xyz, r26.xyz);
          r16.w = saturate(r16.w + r27.w);
          r17.w = dot(r28.xyz, r26.xyz);
          r17.w = saturate(r17.w + r28.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r29.xyz, r26.xyz);
          r17.w = saturate(r17.w + r29.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r30.xyz, r26.xyz);
          r17.w = saturate(r17.w + r30.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r31.xyz, r26.xyz);
          r17.w = saturate(r17.w + r31.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r32.xyz, r26.xyz);
          r17.w = saturate(r17.w + r32.w);
          r16.x = r17.w * r16.w;
          r16.w = r15.x ? 0.000000 : 0;
          r16.xw = r16.ww ? r16.xy : r16.zx;
          r17.w = r15.x;
          r27.xy = r16.xw;
          r18.w = 1;
          while (true) {
            r19.w = cmp((int)r18.w >= (int)r15.z);
            if (r19.w != 0) break;
            r19.w = (int)r14.w + (int)r18.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r19.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r19.w = dot(r28.xyz, r26.xyz);
            r19.w = saturate(r19.w + r28.w);
            r19.w = r27.x * r19.w;
            r24.w = dot(r29.xyz, r26.xyz);
            r24.w = saturate(r24.w + r29.w);
            r19.w = r24.w * r19.w;
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
            r27.x = r24.w * r19.w;
            r26.w = (uint)r17.w >> 2;
            if (1 == 0) r27.z = 0; else if (1+2 < 32) {             r27.z = (uint)r17.w << (32-(1 + 2)); r27.z = (uint)r27.z >> (32-1);            } else r27.z = (uint)r17.w >> 2;
            r27.w = (int)r26.w & 2;
            r28.x = max(r27.y, r27.x);
            r19.w = -r19.w * r24.w + 1;
            r19.w = r27.y * r19.w;
            r8.w = r27.w ? r19.w : r28.x;
            r27.xy = r27.zz ? r27.xy : r8.zw;
            r18.w = (int)r18.w + 1;
            r17.w = r26.w;
          }
          r27.y = saturate(r27.y);
          r8.w = r27.y * r15.y;
          r14.w = cmp(0 < r8.w);
          if (r14.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.z, l(16), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.z, l(32), t15.yxwz
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.z, l(48), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.z, l(64), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.z, l(80), t15.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.z, l(132), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.z, l(148), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.z, l(164), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.z, l(180), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.z, l(196), t15.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r14.z, l(212), t15.xyxx
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
            r23.z = r27.y * r15.y + r23.z;
            r8.w = r8.w * r25.z;
            r25.z = r33.z;
            r14.z = dot(r12.xyz, r25.xyz);
            r14.w = dot(r26.xyz, r25.xyz);
            r14.w = r14.w + -r33.w;
            r15.x = cmp(r14.w >= 0);
            r14.w = max(abs(r14.w), r9.w);
            r14.w = r15.x ? r14.w : -r14.w;
            r14.z = max(1.00000001e-07, -r14.z);
            r14.z = r14.w / r14.z;
            r14.z = min(131072, abs(r14.z));
            r33.z = r34.z;
            r14.w = dot(r12.xyz, r33.xyz);
            r15.x = dot(r26.xyz, r33.xyz);
            r15.x = r15.x + -r34.w;
            r15.y = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r9.w);
            r15.x = r15.y ? r15.x : -r15.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r34.z = r35.z;
            r14.w = dot(r12.xyz, r34.xyz);
            r15.x = dot(r26.xyz, r34.xyz);
            r15.x = r15.x + -r35.w;
            r15.y = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r9.w);
            r15.x = r15.y ? r15.x : -r15.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r35.z = r36.z;
            r14.w = dot(r12.xyz, r35.xyz);
            r15.x = dot(r26.xyz, r35.xyz);
            r15.x = r15.x + -r36.w;
            r15.y = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r9.w);
            r15.x = r15.y ? r15.x : -r15.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r36.z = r37.x;
            r14.w = dot(r12.xyz, r36.xyz);
            r15.x = dot(r26.xyz, r36.xyz);
            r15.x = r15.x + -r37.y;
            r15.y = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r9.w);
            r15.x = r15.y ? r15.x : -r15.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r38.zw = r37.zw;
            r14.w = dot(r12.zxy, r38.xzw);
            r15.x = dot(r26.zxy, r38.xzw);
            r15.x = r15.x + -r38.y;
            r15.y = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r9.w);
            r15.x = r15.y ? r15.x : -r15.x;
            r14.w = max(1.00000001e-07, -r14.w);
            r14.w = r15.x / r14.w;
            r14.z = min(r14.z, abs(r14.w));
            r15.x = r30.w;
            r15.yz = r31.zw;
            r15.xyz = r15.xyz + r26.xyz;
            r15.xyz = r12.xyz * r14.zzz + r15.xyz;
            r14.w = dot(r15.xyz, r15.xyz);
            r14.w = sqrt(r14.w);
            r14.z = r14.z / r14.w;
            r14.z = r14.z + r14.z;
            r14.z = sqrt(r14.z);
            r14.z = r7.z * 5 + r14.z;
            r14.z = -0.844799995 + r14.z;
            r24.y = r28.z;
            r24.z = r29.x;
            r33.x = dot(r15.xyz, r24.xyz);
            r25.xy = r28.xw;
            r25.z = r29.w;
            r33.y = dot(r15.xyz, r25.xyz);
            r29.x = r28.y;
            r33.z = dot(r15.xyz, r29.xyz);
            if (9 == 0) r14.w = 0; else if (9+16 < 32) {             r14.w = (uint)r25.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);            } else r14.w = (uint)r25.w >> 16;
            r33.w = (uint)r14.w;
            r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r14.z).xyz;
            r28.x = dot(r26.xyz, r24.xyz);
            r28.y = dot(r26.xyz, r25.xyz);
            r28.z = dot(r26.xyz, r29.xyz);
            r26.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
            r31.z = r32.x;
            r26.xyz = r26.xyz * r31.xyz + r32.yzw;
            r33.x = dot(r2.xyz, r24.xyz);
            r33.y = dot(r2.xyz, r25.xyz);
            r33.z = dot(r2.xyz, r29.xyz);
            r24.xyz = cmp(float3(0,0,0) < r33.xyz);
            r17.z = r24.x ? 0 : 0.5;
            r25.xyz = r26.xyz + r17.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r27.xzw = r33.xyz * r33.xyz;
            r27.xzw = r27.xzw * r8.www;
            r18.z = r24.y ? 0 : 0.5;
            r24.xyw = r26.xyz + r18.xyz;
            r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
            r24.xyw = r24.xyw * r27.zzz;
            r24.xyw = r25.xyz * r27.xxx + r24.xyw;
            r19.z = r24.z ? 0 : 0.5;
            r25.xyz = r26.xyz + r19.xyz;
            r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r24.xyz = r25.xyz * r27.www + r24.xyw;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
            r26.xyz = r25.xyz * r24.xyz;
            r14.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r24.xyz * r25.xyz + r22.xyz;
            r14.w = r14.z * r10.y;
            r15.xyz = r15.xyz * r8.www;
            r8.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r8.w = r10.y * r14.z + r8.w;
            r8.w = r14.w / r8.w;
            r24.x = r22.w;
            r24.yz = r23.xy;
            r23.xyw = r15.yzx * r8.www + r24.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r11.y = (int)r11.y + 32;
  }
  r6.y = cmp(r21.w < 1);
  if (r6.y != 0) {
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r22.xy = float2(0,0);
    r23.x = r20.w;
    r23.yzw = r21.yzw;
    r11.yzw = r20.xyz;
    r6.y = r21.w;
    r8.z = 0;
    while (true) {
      r8.w = cmp((uint)r8.z >= (uint)r10.z);
      if (r8.w != 0) break;
      r14.z = (uint)r8.z >> 5;
      r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
      r8.w = visibleProbes.Load(r15.xyzw).x;
      r10.w = cmp((int)r4.w == (int)r8.z);
      if (r6.x == 0) r13.w = 0; else if (r6.x+0 < 32) {       r13.w = (uint)r8.w << (32-(r6.x + 0)); r13.w = (uint)r13.w >> (32-r6.x);      } else r13.w = (uint)r8.w >> 0;
      r8.w = r10.w ? r13.w : r8.w;
      r10.w = (int)r8.z + numLights;
      r24.xyzw = r23.xyzw;
      r15.xyz = r11.yzw;
      r13.w = r6.y;
      r14.z = r8.w;
      while (true) {
        if (r14.z == 0) break;
        r14.w = firstbitlow((uint)r14.z);
        r16.w = 1 << (int)r14.w;
        r17.w = (int)r14.z & (int)r16.w;
        if (r17.w != 0) {
          r14.z = (int)r14.z ^ (int)r16.w;
          r16.w = (int)r10.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r16.w, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v7.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r16.w = r25.y ? r25.x : 0;
          r16.w = r25.z ? r16.w : 0;
          if (r16.w != 0) {
            r14.w = (int)r8.z + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r14.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.zw, r14.w, l(96), t15.xxxy
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v7.xyz + -r25.yzw;
            r16.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r17.w = 0; else if (6+25 < 32) {             r17.w = (uint)r26.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);            } else r17.w = (uint)r26.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r19.w = dot(r28.xyz, r27.xyz);
            r19.w = saturate(r19.w + r28.w);
            r22.w = dot(r29.xyz, r27.xyz);
            r22.w = saturate(r22.w + r29.w);
            r19.w = r22.w * r19.w;
            r22.w = dot(r30.xyz, r27.xyz);
            r22.w = saturate(r22.w + r30.w);
            r19.w = r22.w * r19.w;
            r22.w = dot(r31.xyz, r27.xyz);
            r22.w = saturate(r22.w + r31.w);
            r19.w = r22.w * r19.w;
            r22.w = dot(r32.xyz, r27.xyz);
            r22.w = saturate(r22.w + r32.w);
            r19.w = r22.w * r19.w;
            r22.w = dot(r33.xyz, r27.xyz);
            r22.w = saturate(r22.w + r33.w);
            r16.x = r22.w * r19.w;
            r19.w = (int)r18.z & 1;
            r28.xy = r19.ww ? r16.xy : r16.zx;
            r16.x = r18.z;
            r29.xy = r28.xy;
            r19.w = 1;
            while (true) {
              r22.w = cmp((int)r19.w >= (int)r17.w);
              if (r22.w != 0) break;
              r22.w = (int)r16.w + (int)r19.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r22.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r22.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r22.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r22.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r22.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r22.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r22.w = dot(r30.xyz, r27.xyz);
              r22.w = saturate(r22.w + r30.w);
              r22.w = r29.x * r22.w;
              r25.w = dot(r31.xyz, r27.xyz);
              r25.w = saturate(r25.w + r31.w);
              r22.w = r25.w * r22.w;
              r25.w = dot(r32.xyz, r27.xyz);
              r25.w = saturate(r25.w + r32.w);
              r22.w = r25.w * r22.w;
              r25.w = dot(r33.xyz, r27.xyz);
              r25.w = saturate(r25.w + r33.w);
              r22.w = r25.w * r22.w;
              r25.w = dot(r34.xyz, r27.xyz);
              r25.w = saturate(r25.w + r34.w);
              r22.w = r25.w * r22.w;
              r25.w = dot(r35.xyz, r27.xyz);
              r25.w = saturate(r25.w + r35.w);
              r29.x = r25.w * r22.w;
              r27.w = (uint)r16.x >> 2;
              if (1 == 0) r28.z = 0; else if (1+2 < 32) {               r28.z = (uint)r16.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);              } else r28.z = (uint)r16.x >> 2;
              r28.w = (int)r27.w & 2;
              r29.z = max(r29.y, r29.x);
              r22.w = -r22.w * r25.w + 1;
              r22.w = r29.y * r22.w;
              r18.y = r28.w ? r22.w : r29.z;
              r29.xy = r28.zz ? r29.xy : r18.xy;
              r19.w = (int)r19.w + 1;
              r16.x = r27.w;
            }
            r16.x = saturate(r29.y + -r13.w);
            r16.w = r16.x * r18.w;
            r17.w = cmp(0 < r16.w);
            if (r17.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r14.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r24.w = r16.x * r18.w + r24.w;
              r14.w = r16.w * r26.z;
              r26.z = r34.z;
              r16.x = dot(r12.xyz, r26.xyz);
              r16.w = dot(r27.xyz, r26.xyz);
              r16.w = r16.w + -r34.w;
              r17.w = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r9.w);
              r16.w = r17.w ? r16.w : -r16.w;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.w / r16.x;
              r16.x = min(131072, abs(r16.x));
              r34.z = r35.z;
              r16.w = dot(r12.xyz, r34.xyz);
              r17.w = dot(r27.xyz, r34.xyz);
              r17.w = r17.w + -r35.w;
              r18.y = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r9.w);
              r17.w = r18.y ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r16.x = min(r16.x, abs(r16.w));
              r35.z = r36.z;
              r16.w = dot(r12.xyz, r35.xyz);
              r17.w = dot(r27.xyz, r35.xyz);
              r17.w = r17.w + -r36.w;
              r18.y = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r9.w);
              r17.w = r18.y ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r16.x = min(r16.x, abs(r16.w));
              r36.z = r37.z;
              r16.w = dot(r12.xyz, r36.xyz);
              r17.w = dot(r27.xyz, r36.xyz);
              r17.w = r17.w + -r37.w;
              r18.y = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r9.w);
              r17.w = r18.y ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r16.x = min(r16.x, abs(r16.w));
              r37.z = r38.x;
              r16.w = dot(r12.xyz, r37.xyz);
              r17.w = dot(r27.xyz, r37.xyz);
              r17.w = r17.w + -r38.y;
              r18.y = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r9.w);
              r17.w = r18.y ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r16.x = min(r16.x, abs(r16.w));
              r39.zw = r38.zw;
              r16.w = dot(r12.zxy, r39.xzw);
              r17.w = dot(r27.zxy, r39.xzw);
              r17.w = r17.w + -r39.y;
              r18.y = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r9.w);
              r17.w = r18.y ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r16.x = min(r16.x, abs(r16.w));
              r26.x = r31.w;
              r26.yz = r32.zw;
              r18.yzw = r26.xyz + r27.xyz;
              r18.yzw = r12.xyz * r16.xxx + r18.yzw;
              r16.w = dot(r18.yzw, r18.yzw);
              r16.w = sqrt(r16.w);
              r16.x = r16.x / r16.w;
              r16.x = r16.x + r16.x;
              r16.x = sqrt(r16.x);
              r16.x = r7.z * 5 + r16.x;
              r16.x = -0.844799995 + r16.x;
              r25.y = r28.z;
              r25.z = r30.x;
              r34.x = dot(r18.yzw, r25.xyz);
              r26.xy = r28.xw;
              r26.z = r30.w;
              r34.y = dot(r18.yzw, r26.xyz);
              r30.x = r28.y;
              r34.z = dot(r18.yzw, r30.xyz);
              if (9 == 0) r16.w = 0; else if (9+16 < 32) {               r16.w = (uint)r26.w << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);              } else r16.w = (uint)r26.w >> 16;
              r34.w = (uint)r16.w;
              r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r16.x).xyz;
              r28.x = dot(r27.xyz, r25.xyz);
              r28.y = dot(r27.xyz, r26.xyz);
              r28.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r2.xyz, r25.xyz);
              r34.y = dot(r2.xyz, r26.xyz);
              r34.z = dot(r2.xyz, r30.xyz);
              r25.xyz = cmp(float3(0,0,0) < r34.xyz);
              r17.z = r25.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r17.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xyz = r34.xyz * r34.xyz;
              r28.xyz = r28.xyz * r14.www;
              r19.z = r25.y ? 0 : 0.5;
              r25.xyw = r27.xyz + r19.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r28.yyy;
              r25.xyw = r26.xyz * r28.xxx + r25.xyw;
              r22.z = r25.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r22.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r25.xyz = r26.xyz * r28.zzz + r25.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r25.xyz;
              r16.x = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r15.xyz = r25.xyz * r26.xyz + r15.xyz;
              r16.w = r16.x * r10.y;
              r18.yzw = r18.yzw * r14.www;
              r14.w = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r14.w = r10.y * r16.x + r14.w;
              r14.w = r16.w / r14.w;
              r24.xyz = r18.yzw * r14.www + r24.xyz;
            }
          }
        }
      }
      r23.xyzw = r24.xyzw;
      r11.yzw = r15.xyz;
      r8.z = (int)r8.z + 32;
    }
    r21.xyzw = r23.zxyw;
    r20.xyz = r11.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r4.w = max(1, r21.w);
  r4.w = rcp(r4.w);
  r21.w = saturate(r21.w);
  r10.yzw = r20.xyz * r4.www;
  r11.yzw = r21.xyz * r4.www;
  r6.x = cmp(r21.w < 0.99000001);
  if (r6.x != 0) {
    r6.x = 1 + -r21.w;
    r6.y = sunConstants.globalProbeExposure * r6.x;
    r14.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r15.x = globalProbeConstants.data[0].w * r14.x;
    r15.yz = globalProbeConstants.data[1].xy * r14.yz;
    r14.xyz = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r14.xy;
    r15.z = globalProbeConstants.data[2].x * r14.z;
    r14.xyz = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r2.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r16.xyz = r15.wwx + r14.xyz;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r17.xyz = r2.xyz * r2.xyz;
    r17.xyz = r17.xyz * r6.yyy;
    r18.xyz = r15.wwy + r14.xyz;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r17.yyy;
    r16.xyz = r16.xyz * r17.xxx + r18.xyz;
    r14.xyz = r15.wwz + r14.xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r17.zzz + r16.xyz;
    r2.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
    r14.xyz = r15.xyz * r14.xyz;
    r2.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r10.yzw = r20.xyz * r4.www + r14.xyz;
    r12.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r7.w).xyz;
    r4.w = sunConstants.globalProbeExposure * r6.x + -r2.w;
    r2.w = r7.y * r4.w + r2.w;
    r11.yzw = r14.xyz * r2.www + r11.yzw;
  }
  r2.w = r7.x + r0.w;
  r2.w = log2(abs(r2.w));
  r2.w = r6.w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r0.w;
  r2.w = saturate(-1 + r2.w);
  r14.xyz = r10.yzw * r0.www;
  r6.xy = r7.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r6.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r6.xy, 0).xy;
  r7.yzw = r11.yzw * r2.www;
  r15.xyz = r7.zwy * r6.xxx;
  r7.yzw = r7.yzw * r6.yyy;
  r0.w = sqrt(r6.w);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r2.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r4.w = r7.x * r0.w + r2.w;
  r0.w = r4.w * r0.w;
  r2.w = r4.w * r2.w;
  r4.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r6.x = saturate(r4.w);
  r6.y = cmp(0 >= r6.x);
  if (r6.y != 0) {
    r8.z = 0;
  }
  if (r6.y == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r10.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r6.y = -sunConstants.splitDepthOffset + r10.w;
    r6.y = -r6.y * 6.10351563e-05 + 1;
    r8.w = saturate(r6.y);
    r8.w = cmp(r6.y == r8.w);
    if (r8.w != 0) {
      r8.w = 0;
      r9.w = 0;
      while (true) {
        r11.y = cmp(r8.w >= 3);
        if (r11.y != 0) break;
        r11.y = (uint)r8.w;
        r11.zw = -sunConstants.splitPinTransform[r11.y].xy + r10.yz;
        r11.z = max(abs(r11.z), abs(r11.w));
        r9.w = sunConstants.splitPinTransform[r11.y].z * r11.z;
        r11.y = cmp(r9.w < 1);
        if (r11.y != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r9.w = 0;
      }
    } else {
      r8.w = 3;
      r9.w = 0;
    }
    r11.y = cmp(r8.w >= 3);
    if (r11.y != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r10.yzy * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r11.zw = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r11.zw = floor(r11.zw);
      r11.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r11.w;
      r11.z = r11.w * sunConstants.sstLightingConstants.coordScale + r11.z;
      r11.z = (uint)r11.z;
      r11.z = (int)r11.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.z, l(0), t23.xxxx
    r11.w = samp0[]..swiz;
      r12.w = (int)r11.w & 0x40000000;
      r13.w = (uint)r11.w << 2;
      if (r12.w == 0) {
        r12.w = (int)r11.w & 0x01ffffff;
        r17.x = (int)r11.z + (int)r12.w;
        r11.z = (uint)r11.w >> 25;
        r11.z = (uint)r11.z;
        r16.xyz = r16.xyz * r11.zzz;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r11.zw = (uint2)r16.zy >> int2(6,6);
        r12.w = (int)r17.z & 0xc0000000;
        r16.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r11.w = r11.w ? r17.z : r16.w;
        r16.w = (uint)r11.w >> 13;
        r11.z = r11.z ? r16.w : r11.w;
        r11.z = (int)r11.z & 8191;
        r18.x = (int)r11.z + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r18.xyz = r12.www ? r17.xyz : r18.xyz;
        r19.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r11.zw = (uint2)r16.zy >> (uint2)r19.yy;
        r11.zw = (int2)r11.zw & int2(1,1);
        r16.w = (int)r18.z & 0xc0000000;
        r17.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r11.w = r11.w ? r18.z : r17.w;
        r17.w = (uint)r11.w >> 13;
        r11.z = r11.z ? r17.w : r11.w;
        r11.z = (int)r11.z & 8191;
        r19.x = (int)r11.z + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r18.xyz = r16.www ? r18.xyz : r19.xzw;
        r17.xyz = r12.www ? r17.xyz : r18.xyz;
        r11.z = (int)r17.z & 0xc0000000;
        if (r11.z == 0) {
          r11.z = (int)-r17.y + 6;
          r11.zw = (uint2)r16.zy >> (uint2)r11.zz;
          r12.w = (int)r17.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r11.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.z = (((uint)r11.z << 0) & bitmask.z) | ((uint)r11.w & ~bitmask.z);
          r11.z = (int)r11.z * 10;
          r11.z = (uint)r12.w >> (uint)r11.z;
          r11.z = (int)r11.z & 1023;
          r18.x = (int)r11.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.yy + int2(1,2);
          r11.z = (int)-r18.y + 6;
          r11.zw = (uint2)r16.zy >> (uint2)r11.zz;
          r12.w = (int)r18.w & 0xc0000000;
          r16.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r11.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.z = (((uint)r11.z << 0) & bitmask.z) | ((uint)r11.w & ~bitmask.z);
          r11.z = (int)r11.z * 10;
          r11.z = (uint)r16.w >> (uint)r11.z;
          r11.z = (int)r11.z & 1023;
          r19.x = (int)r11.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r12.www ? r18.xyw : r19.xyz;
          r11.z = (int)-r19.y + 6;
          r11.zw = (uint2)r16.zy >> (uint2)r11.zz;
          r16.w = (int)r19.z & 0xc0000000;
          r17.y = (int)r19.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r11.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.z = (((uint)r11.z << 0) & bitmask.z) | ((uint)r11.w & ~bitmask.z);
          r11.z = (int)r11.z * 10;
          r11.z = (uint)r17.y >> (uint)r11.z;
          r11.z = (int)r11.z & 1023;
          r20.x = (int)r11.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r11.zw = r16.ww ? r19.xz : r20.xy;
          r17.xz = r12.ww ? r18.xw : r11.zw;
        }
        r11.z = (int)r17.z & 0xc0000000;
        if (r11.z == 0) {
          if (14 == 0) r11.w = 0; else if (14+15 < 32) {           r11.w = (uint)r17.z << (32-(14 + 15)); r11.w = (uint)r11.w >> (32-14);          } else r11.w = (uint)r17.z >> 15;
          r11.w = (uint)r11.w;
          r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
          r11.w = 6.10388815e-05 * r11.w;
          r17.yw = (int2)r17.zz & int2(32767,536870912);
          r12.w = (uint)r17.y;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 3.05185094e-05 * r12.w;
          r16.w = (int)r16.y & 3;
          r16.w = (int)r16.w + (int)r17.x;
          r16.w = (int)r16.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r16.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r16.x = (uint)r16.w >> (uint)r18.x;
          r16.x = (int)r16.x & 255;
          r16.x = (uint)r16.x;
          r16.x = r16.x * r12.w;
          r16.x = r16.x * 0.00392156886 + r11.w;
          r16.y = (int)r18.y + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.z >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r18.z;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r12.w = r16.y * r12.w;
          r11.w = r12.w * 1.52590219e-05 + r11.w;
          r13.w = r17.w ? r16.x : r11.w;
        } else {
          r11.w = (int)r17.z & 0x80000000;
          r12.w = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
        r12.w = samp0[]..swiz;
          r11.w = r11.w ? r12.w : 0;
          r12.w = (uint)r17.z << 2;
          r16.x = (uint)r11.w >> 16;
          r16.x = f16tof32(r16.x);
          r11.w = (int)r11.w & 0x0000ffff;
          r11.w = f16tof32(r11.w);
          r12.w = r10.y * r16.x + r12.w;
          r11.w = r10.z * r11.w + r12.w;
          r13.w = r11.z ? r11.w : r13.w;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r13.w < r10.w);
      r8.z = r10.w ? 0 : 1;
    }
    if (r11.y == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r8.w;
        r11.yz = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r11.yz = sunConstants.splitPinTransform[r10.w].zz * r11.yz;
        r16.xy = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r10.w + r8.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r6.y).x;
        r11.y = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r10.w = r11.y + r10.w;
        r10.w = saturate(-1 + r10.w);
        r11.y = r10.w * r10.w;
        r8.z = r11.y * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r8.x;
        r10.w = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r11.yz = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r11.yz = sunConstants.splitPinTransform[r10.w].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r8.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r8.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r9.x;
        r16.z = r8.x;
        r11.w = 0;
        r12.w = 0;
        while (true) {
          r13.w = cmp((uint)r12.w >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r9.w < (uint)r12.w);
          r17.xy = r13.ww ? r10.yz : r11.yz;
          r16.w = r13.w ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r10.w].w;
          r13.w = r13.w ? r8.w : r10.w;
          r18.x = dot(icb[r12.w+0].yx, r16.xy);
          r18.y = dot(icb[r12.w+0].yx, r16.yz);
          r17.xy = r18.xy * r16.ww + r17.xy;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.y).x;
          r16.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r13.w = r16.w + r13.w;
          r13.w = saturate(-1 + r13.w);
          r11.w = r13.w * 0.125 + r11.w;
          r12.w = (int)r12.w + 1;
        }
        r6.y = r11.w * r11.w;
        r8.z = r6.y * r11.w;
      }
    }
  }
  r6.y = cmp(0 < r6.x);
  if (r6.y != 0) {
    r6.y = cmp(0 < r8.z);
    if (r6.y != 0) {
      r6.y = sunConstants.specScale * r6.z;
      r6.y = r6.y * r6.x;
      if (sunConstants.sunCookieIndex != 0) {
        r16.xyz = eyeOffset.xyz + v7.xyz;
        r16.w = 1;
        r8.w = dot(sunConstants.sunCookieTransform[0].xyzw, r16.xyzw);
        r9.w = dot(sunConstants.sunCookieTransform[1].xyzw, r16.xyzw);
        r16.x = frac(r8.w);
        r16.y = frac(r9.w);
        r8.w = -1 + (int14)sunConstants.sunCookieIndex;
        r16.z = (uint)r8.w;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r8.w = viewmodelSunShadowRaw >> 16;
      r9.w = cmp(0 < (uint)r8.w);
      r9.w = r5.w ? r9.w : 0;
      if (r9.w != 0) {
        r8.w = (int)r8.w + numLights;
        r8.w = (int)r8.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r8.w, l(52), t12.xxxx
      r9.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(68), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(84), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(132), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r8.w, l(148), t12.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
        r11.y = abs(r4.w) * -0.200000003 + 0.400000006;
        r20.xyz = r2.xyz * r11.yyy + v7.xyz;
        r20.w = 1;
        r16.x = dot(r16.xyzw, r20.xyzw);
        r16.y = dot(r17.xyzw, r20.xyzw);
        r11.yz = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = r11.yz + r19.zw;
        r11.yz = r11.yz * r19.xy;
        r16.xy = r9.ww / r18.xz;
        r16.zw = float2(1,1) + -r16.xy;
        r16.zw = cmp(r11.yz >= r16.zw);
        r16.xy = cmp(r16.xy >= r11.yz);
        r16.xy = (int2)r16.xy | (int2)r16.zw;
        r11.w = (int)r16.y | (int)r16.x;
        if (r11.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(28), t12.xxxx
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r8.w, l(164), t12.xyxx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
          r8.w = dot(r16.xyzw, r20.xyzw);
          r11.yz = saturate(r11.yz);
          r16.xy = r11.yz * r18.xz + r18.yw;
          r8.w = r8.w + r17.x;
          r8.w = r8.w / r17.y;
          r8.w = max(6.10351563e-05, r8.w);
          r11.y = (int)r11.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r17.x = -r8.x;
            r18.z = (uint)r11.y;
            r17.y = r9.x;
            r17.z = r8.x;
            r11.zw = float2(0,0);
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r19.x = dot(icb[r11.w+0].yx, r17.xy);
              r19.y = dot(icb[r11.w+0].yx, r17.yz);
              r18.xy = r19.xy * r9.ww + r16.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
              r11.z = r12.w * 0.125 + r11.z;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r16.z = (uint)r11.y;
            r11.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.w).x;
          }
          r8.w = r11.z * r11.z;
          r8.w = r8.w * r11.z;
        } else {
          r8.w = 1;
        }
        r8.z = r8.z * r8.w;
      } else {
        r8.w = viewmodelSunShadowRaw & 0x0000ffff;
        r9.w = cmp(0 < (uint)r8.w);
        r11.y = ~(int)r5.w;
        r9.w = r9.w ? r11.y : 0;
        if (r9.w != 0) {
          r8.w = (int)r8.w + numLights;
          r8.w = (int)r8.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r8.w, l(52), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(68), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(84), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(132), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r8.w, l(148), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
          r11.y = abs(r4.w) * -0.200000003 + 0.400000006;
          r20.xyz = r2.xyz * r11.yyy + v7.xyz;
          r20.w = 1;
          r16.x = dot(r16.xyzw, r20.xyzw);
          r16.y = dot(r17.xyzw, r20.xyzw);
          r11.yz = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r11.yz = r11.yz + r19.zw;
          r11.yz = r11.yz * r19.xy;
          r16.xy = r9.ww / r18.xz;
          r16.zw = float2(1,1) + -r16.xy;
          r16.zw = cmp(r11.yz >= r16.zw);
          r16.xy = cmp(r16.xy >= r11.yz);
          r16.xy = (int2)r16.xy | (int2)r16.zw;
          r11.w = (int)r16.y | (int)r16.x;
          if (r11.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(28), t12.xxxx
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r8.w, l(164), t12.xyxx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
            r8.w = dot(r16.xyzw, r20.xyzw);
            r11.yz = saturate(r11.yz);
            r16.xy = r11.yz * r18.xz + r18.yw;
            r8.w = r8.w + r17.x;
            r8.w = r8.w / r17.y;
            r8.w = max(6.10351563e-05, r8.w);
            r11.y = (int)r11.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r17.x = -r8.x;
              r18.z = (uint)r11.y;
              r17.y = r9.x;
              r17.z = r8.x;
              r11.zw = float2(0,0);
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r19.x = dot(icb[r11.w+0].yx, r17.xy);
                r19.y = dot(icb[r11.w+0].yx, r17.yz);
                r18.xy = r19.xy * r9.ww + r16.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
                r11.z = r12.w * 0.125 + r11.z;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r16.z = (uint)r11.y;
              r11.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.w).x;
            }
            r8.w = r11.z * r11.z;
            r8.w = r8.w * r11.z;
          } else {
            r8.w = 1;
          }
          r8.z = r8.z * r8.w;
        }
      }
      r8.w = -r7.x * 0.5 + 1;
      r8.w = -r6.x * r8.w + 1;
      r8.w = r8.w * r8.w;
      r8.w = -r8.w * 0.620000005 + 0.620000005;
      r8.w = r8.w + -r6.x;
      r8.w = r6.w * r8.w + r6.x;
      r8.w = r8.w * r8.z;
      r4.w = cmp(0 < r4.w);
      r16.xyz = r8.www * r10.yzw + r14.xyz;
      r11.yzw = -v7.xyz * r1.www + sunConstants.wldDir.xyz;
      r1.w = dot(r11.yzw, r11.yzw);
      r1.w = rsqrt(r1.w);
      r11.yzw = r11.yzw * r1.www;
      r1.w = dot(r11.yzw, r4.xyz);
      r8.w = dot(r2.xyz, r11.yzw);
      r9.w = abs(r8.w) * r6.z + -abs(r8.w);
      r8.w = abs(r8.w) * r9.w + 1;
      r6.x = r6.x * r0.w + r2.w;
      r8.w = r8.w * r8.w;
      r6.x = r8.w * r6.x;
      r6.x = rcp(r6.x);
      r6.x = r6.x * r6.y;
      r6.x = r8.z * r6.x;
      r6.x = 0.25 * r6.x;
      r11.yzw = r6.xxx * r10.yzw + r7.yzw;
      r1.w = saturate(1 + -r1.w);
      r6.y = r1.w * r1.w;
      r6.y = r6.y * r6.y;
      r1.w = r6.y * r1.w;
      r1.w = r6.x * r1.w;
      r17.xyz = r1.www * r10.zwy + r15.xyz;
      r16.w = r17.z;
      r14.w = r15.z;
      r14.xyzw = r4.wwww ? r16.xyzw : r14.xyzw;
      r17.zw = r11.yz;
      r15.zw = r7.yz;
      r16.xyzw = r4.wwww ? r17.xyzw : r15.xyzw;
      r7.w = r4.w ? r11.w : r7.w;
      r15.z = r14.w;
      r15.xy = r16.xy;
      r7.yz = r16.zw;
    }
  }
  r16.x = -r8.x;
  r1.w = ~(int)r5.w;
  r4.w = -r7.x * 0.5 + 1;
  r17.xy = float2(0,0);
  r18.w = 0;
  r19.xyz = v7.xyz;
  r19.w = 1;
  r20.w = 1;
  r16.z = r8.x;
  r21.w = 1;
  r22.z = 1;
  r23.w = 1;
  r16.yw = r9.xx;
  r8.y = r16.w;
  r24.w = 1;
  r9.y = r16.x;
  r9.z = r8.x;
  r25.w = 1;
  r26.x = r9.x;
  r26.y = r16.x;
  r26.z = r8.x;
  r27.x = r9.x;
  r27.y = r16.x;
  r27.z = r8.x;
  r28.x = r9.x;
  r28.y = r16.x;
  r28.z = r8.x;
  r10.yzw = r14.xyz;
  r29.xyz = r15.zxy;
  r30.xyz = r7.yzw;
  r6.x = enableDitheredShadow;
  r6.y = 0;
  while (true) {
    r7.x = cmp((uint)r6.y >= numLights);
    if (r7.x != 0) break;
    r17.z = (uint)r6.y >> 5;
    r18.xyz = (int3)r13.xyz + (int3)r17.xyz;
    r7.x = visibleLights.Load(r18.xyzw).x;
    r11.yzw = r10.yzw;
    r18.xyz = r29.xyz;
    r31.xyz = r30.xyz;
    r8.z = r6.x;
    r8.w = r7.x;
    while (true) {
      if (r8.w == 0) break;
      r9.w = firstbitlow((uint)r8.w);
      r12.w = 1 << (int)r9.w;
      r13.w = (int)r8.w & (int)r12.w;
      if (r13.w != 0) {
        r8.w = (int)r8.w ^ (int)r12.w;
        r9.w = (int)r6.y + (int)r9.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(0), t11.xyzw
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r33.xy, r9.w, l(16), t11.xyxx
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
        r32.xyz = -v7.xyz + r32.xyz;
        r33.z = r32.w;
        r32.xyz = cmp(abs(r32.xyz) < r33.zxy);
        r12.w = r32.y ? r32.x : 0;
        r12.w = r32.z ? r12.w : 0;
        if (r12.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(0), t12.wxyz
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(16), t12.zxyw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(32), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(48), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(64), t12.yzwx
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(80), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(96), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
          if (3 == 0) r12.w = 0; else if (3+24 < 32) {           r12.w = (uint)r33.w << (32-(3 + 24)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)r33.w >> 24;
          switch (r12.w) {
            case 4 :            r12.w = cmp(0 < r38.x);
            r39.xy = r37.zw;
            r39.z = r38.w;
            r40.xyz = -r39.xyz * float3(0.5,0.5,0.5) + r32.yzw;
            r41.xyz = -v7.xyz + r40.xyz;
            r13.w = dot(r39.xyz, r41.xyz);
            r14.w = saturate(-r13.w / r38.x);
            r42.xyz = r14.www * r39.xyz + r40.xyz;
            r42.xyz = r12.www ? r42.xyz : r32.yzw;
            r42.xyz = -v7.xyz + r42.xyz;
            r15.w = dot(r42.xyz, r42.xyz);
            r17.z = rsqrt(r15.w);
            r42.xyz = r42.xyz * r17.zzz;
            r17.z = dot(r2.xyz, r42.xyz);
            r17.w = saturate(r17.z);
            r22.w = cmp(0 < r17.w);
            if (r22.w != 0) {
              r22.w = sqrt(r15.w);
              r26.w = r35.x * r35.x;
              r15.w = r26.w / r15.w;
              r15.w = min(1, r15.w);
              r42.xy = saturate(r22.ww * r34.xz + r34.yw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r15.w = r42.x * r15.w;
              r15.w = r15.w * r42.y;
              r22.w = cmp(0 < r15.w);
              if (r22.w != 0) {
                if (3 == 0) r22.w = 0; else if (3+27 < 32) {                 r22.w = (uint)r33.w << (32-(3 + 27)); r22.w = (uint)r22.w >> (32-3);                } else r22.w = (uint)r33.w >> 27;
                r22.w = cmp((int)r22.w != 1);
                if (r22.w != 0) {
                  r22.w = abs(r17.z) * -0.200000003 + 0.400000006;
                  r42.xyz = r2.xyz * r22.www + v7.xyz;
                  r42.xyz = r42.xyz + -r36.xyz;
                  r22.w = max(abs(r42.y), abs(r42.z));
                  r22.w = max(abs(r42.x), r22.w);
                  r22.w = r37.x / r22.w;
                  r22.w = r22.w + r37.y;
                  r26.w = dot(r42.xyz, r42.xyz);
                  r26.w = rsqrt(r26.w);
                  r22.w = max(6.10351563e-05, r22.w);
                  r27.w = (int)r33.w & 0x0000ffff;
                  r43.w = (uint)r27.w;
                  r27.w = 0;
                  r28.w = 0;
                  while (true) {
                    r29.w = cmp((int)r28.w >= 8);
                    if (r29.w != 0) break;
                    r44.y = dot(icb[r28.w+0].yx, r16.xy);
                    r44.z = dot(icb[r28.w+0].yx, r16.yz);
                    r44.yz = r44.yz * r35.yy;
                    r44.x = r44.y * r11.x;
                    r44.w = r44.y * r10.x;
                    r43.xyz = r42.xyz * r26.www + r44.xzw;
                    r29.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyzw, r22.w).x;
                    r27.w = r29.w * 0.125 + r27.w;
                    r28.w = (int)r28.w + 1;
                  }
                } else {
                  r27.w = 1;
                }
                r15.w = r27.w * r15.w;
                r22.w = cmp(0 < r15.w);
                if (r22.w != 0) {
                  r22.w = r33.x * r6.z;
                  r22.w = 0.25 * r22.w;
                  r26.w = dot(r39.xyz, r12.xyz);
                  r28.w = dot(r12.xyz, r41.xyz);
                  r29.w = -r26.w * r26.w + r38.x;
                  r13.w = r26.w * r28.w + -r13.w;
                  r13.w = saturate(r13.w / r29.w);
                  r26.w = r29.w / r38.x;
                  r26.w = 10 * r26.w;
                  r26.w = min(1, r26.w);
                  r13.w = r13.w + -r14.w;
                  r13.w = r26.w * r13.w + r14.w;
                  r39.xyz = r13.www * r39.xyz + r40.xyz;
                  r39.xyz = r12.www ? r39.xyz : r32.yzw;
                  r39.xyz = -v7.xyz + r39.xyz;
                  r12.w = dot(r39.xyz, r39.xyz);
                  r12.w = rsqrt(r12.w);
                  r40.xyz = r39.xyz * r12.www;
                  if (4 == 0) r13.w = 0; else if (4+16 < 32) {                   r13.w = (uint)r33.w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r33.w >> 16;
                  r14.w = cmp(0 < (uint)r13.w);
                  r14.w = r5.w ? r14.w : 0;
                  if (r14.w != 0) {
                    r13.w = (int)r13.w + numLights;
                    r13.w = (int)r13.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(52), t12.xxxx
                  r14.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(100), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(116), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                    r26.w = abs(r17.z) * -0.200000003 + 0.400000006;
                    r20.xyz = r2.xyz * r26.www + v7.xyz;
                    r26.w = dot(r41.xyzw, r20.xyzw);
                    r28.w = dot(r42.xyzw, r20.xyzw);
                    r29.w = cmp(r28.w < r26.w);
                    if (r29.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(68), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(84), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(132), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(148), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r13.w, l(164), t12.xyxx
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                      r41.x = dot(r41.xyzw, r20.xyzw);
                      r41.y = dot(r42.xyzw, r20.xyzw);
                      r20.xy = r41.xy / r28.ww;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r44.zw;
                      r20.xy = r20.xy * r44.xy;
                      r41.xy = r14.ww / r43.xz;
                      r41.zw = float2(1,1) + -r41.xy;
                      r41.zw = cmp(r20.xy >= r41.zw);
                      r41.xy = cmp(r41.xy >= r20.xy);
                      r41.xy = (int2)r41.xy | (int2)r41.zw;
                      r20.z = (int)r41.y | (int)r41.x;
                      r20.xy = saturate(r20.xy);
                      r41.xy = r20.xy * r43.xz + r43.yw;
                      r20.x = r45.y * r28.w;
                      r20.y = r45.x * r28.w + r26.w;
                      r20.x = r20.y / r20.x;
                    } else {
                      r20.z = -1;
                    }
                    r20.y = (int)r29.w | (int)r20.z;
                    if (r20.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                    r13.w = samp0[]..swiz;
                      r20.x = max(6.10351563e-05, r20.x);
                      r13.w = (int)r13.w & 0x0000ffff;
                      if (r8.z != 0) {
                        r42.z = (uint)r13.w;
                        r20.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r20.z >= 8);
                          if (r26.w != 0) break;
                          r43.x = dot(icb[r20.z+0].yx, r16.xw);
                          r43.y = dot(icb[r20.z+0].xy, r8.xy);
                          r42.xy = r43.xy * r14.ww + r41.xy;
                          r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r20.x).x;
                          r20.y = r26.w * 0.125 + r20.y;
                          r20.z = (int)r20.z + 1;
                        }
                      } else {
                        r41.z = (uint)r13.w;
                        r20.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r20.x).x;
                      }
                      r13.w = r20.y * r20.y;
                      r13.w = r13.w * r20.y;
                    } else {
                      r13.w = 1;
                    }
                    r15.w = r15.w * r13.w;
                  } else {
                    if (4 == 0) r13.w = 0; else if (4+20 < 32) {                     r13.w = (uint)r33.w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                    } else r13.w = (uint)r33.w >> 20;
                    r14.w = cmp(0 < (uint)r13.w);
                    r14.w = r14.w ? r1.w : 0;
                    if (r14.w != 0) {
                      r13.w = (int)r13.w + numLights;
                      r13.w = (int)r13.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(52), t12.xxxx
                    r14.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(100), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(116), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                      r20.x = abs(r17.z) * -0.200000003 + 0.400000006;
                      r21.xyz = r2.xyz * r20.xxx + v7.xyz;
                      r20.x = dot(r41.xyzw, r21.xyzw);
                      r20.z = dot(r42.xyzw, r21.xyzw);
                      r26.w = cmp(r20.z < r20.x);
                      if (r26.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(68), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(84), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(132), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(148), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r13.w, l(164), t12.xyxx
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                        r41.x = dot(r41.xyzw, r21.xyzw);
                        r41.y = dot(r42.xyzw, r21.xyzw);
                        r21.xy = r41.xy / r20.zz;
                        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r21.xy = r21.xy + r44.zw;
                        r21.xy = r21.xy * r44.xy;
                        r41.xy = r14.ww / r43.xz;
                        r41.zw = float2(1,1) + -r41.xy;
                        r41.zw = cmp(r21.xy >= r41.zw);
                        r41.xy = cmp(r41.xy >= r21.xy);
                        r41.xy = (int2)r41.xy | (int2)r41.zw;
                        r21.z = (int)r41.y | (int)r41.x;
                        r21.xy = saturate(r21.xy);
                        r41.xy = r21.xy * r43.xz + r43.yw;
                        r21.x = r45.y * r20.z;
                        r20.x = r45.x * r20.z + r20.x;
                        r20.x = r20.x / r21.x;
                      } else {
                        r21.z = -1;
                      }
                      r20.z = (int)r26.w | (int)r21.z;
                      if (r20.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                      r13.w = samp0[]..swiz;
                        r20.x = max(6.10351563e-05, r20.x);
                        r13.w = (int)r13.w & 0x0000ffff;
                        if (r8.z != 0) {
                          r21.z = (uint)r13.w;
                          r20.z = 0;
                          r26.w = 0;
                          while (true) {
                            r28.w = cmp((int)r26.w >= 8);
                            if (r28.w != 0) break;
                            r42.x = dot(icb[r26.w+0].xy, r9.xy);
                            r42.y = dot(icb[r26.w+0].yx, r9.xz);
                            r21.xy = r42.xy * r14.ww + r41.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r20.x).x;
                            r20.z = r21.x * 0.125 + r20.z;
                            r26.w = (int)r26.w + 1;
                          }
                        } else {
                          r41.z = (uint)r13.w;
                          r20.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r20.x).x;
                        }
                        r13.w = r20.z * r20.z;
                        r13.w = r13.w * r20.z;
                      } else {
                        r13.w = 1;
                      }
                      r15.w = r15.w * r13.w;
                    }
                  }
                  r13.w = -r17.w * r4.w + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -r17.w;
                  r13.w = r6.w * r13.w + r17.w;
                  r13.w = r13.w * r15.w;
                  r33.x = r32.x;
                  r14.w = cmp(0 < r17.z);
                  r21.xyz = r13.www * r33.xyz + r11.yzw;
                  r13.w = saturate(dot(r2.xyz, r40.xyz));
                  r39.xyz = r39.xyz * r12.www + r4.xyz;
                  r12.w = dot(r39.xyz, r39.xyz);
                  r12.w = rsqrt(r12.w);
                  r39.xyz = r39.xyz * r12.www;
                  r12.w = dot(r39.xyz, r4.xyz);
                  r17.z = dot(r2.xyz, r39.xyz);
                  r17.w = abs(r17.z) * r6.z + -abs(r17.z);
                  r17.z = abs(r17.z) * r17.w + 1;
                  r17.w = r13.w * r0.w + r2.w;
                  r17.z = r17.z * r17.z;
                  r17.z = r17.z * r17.w;
                  r17.z = rcp(r17.z);
                  r13.w = r13.w * r22.w;
                  r13.w = r17.z * r13.w;
                  r13.w = r13.w * r15.w;
                  r39.xyz = r13.www * r33.xyz + r31.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r15.w = r12.w * r12.w;
                  r15.w = r15.w * r15.w;
                  r12.w = r15.w * r12.w;
                  r12.w = r13.w * r12.w;
                  r40.xyz = r12.www * r33.xyz + r18.xyz;
                  r11.yzw = r14.www ? r21.xyz : r11.yzw;
                  r18.xyz = r14.www ? r40.xyz : r18.xyz;
                  r31.xyz = r14.www ? r39.xyz : r31.xyz;
                }
              }
            }
            break;
            case 2 :            r21.xy = r35.zw;
            r21.z = r36.w;
            r21.xyz = -v7.xyz + r21.xyz;
            r12.w = dot(r21.xyz, r21.xyz);
            r12.w = rsqrt(r12.w);
            r39.xyz = r21.xyz * r12.www;
            r13.w = dot(r2.xyz, r39.xyz);
            r14.w = saturate(r13.w);
            r15.w = cmp(0 < r14.w);
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(112), t12.yzwx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r9.w, l(128), t12.zxyw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
              r41.xyz = r39.xyz;
              r41.w = r40.y;
              r15.w = dot(r41.xyzw, r19.xyzw);
              r17.z = cmp(r15.w < 1);
              if (r17.z != 0) {
                r42.xyz = float3(1,1,1);
                r17.z = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(172), t12.yzwx
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(188), t12.wxyz
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r9.w, l(204), t12.xyzw
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.w, r9.w, l(236), t12.xxxx
              r17.w = samp0[]..swiz;
                r46.xyz = -v7.xyz + r32.yzw;
                r20.x = r35.x * r35.x;
                r22.w = dot(r46.xyz, r46.xyz);
                r20.x = r20.x / r22.w;
                r20.x = min(1, r20.x);
                r34.xy = saturate(r15.ww * r34.xz + r34.yw);
                r34.zw = r34.xy * r34.xy;
                r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                r34.xy = r34.zw * r34.xy;
                r20.x = r34.x * r20.x;
                r20.x = r20.x * r34.y;
                r36.w = r37.x;
                r34.x = dot(r36.xyzw, r19.xyzw);
                r46.xyz = r37.yzw;
                r46.w = r38.w;
                r34.y = dot(r46.xyzw, r19.xyzw);
                r22.xy = r34.xy / r15.ww;
                r15.w = cmp(r43.w < 0.00048828125);
                if (r15.w != 0) {
                  r44.y = r45.x;
                  r34.xy = saturate(abs(r22.xy) * r44.zw + r44.xy);
                  r34.zw = r34.xy * r34.xy;
                  r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                  r34.xy = r34.zw * r34.xy;
                  r15.w = r34.x * r34.y;
                } else {
                  r43.w = r44.y;
                  r34.xyzw = saturate(r43.xyzw * abs(r22.yyxx));
                  r34.xyzw = log2(r34.xyzw);
                  r34.xyzw = r44.xxxx * r34.xyzw;
                  r34.xyzw = exp2(r34.xyzw);
                  r34.xy = r34.xy + r34.zw;
                  r34.xy = log2(r34.xy);
                  r34.xy = r45.xx * r34.xy;
                  r34.xy = exp2(r34.xy);
                  r22.w = r44.z * r34.x;
                  r26.w = r44.w * r34.y + -1;
                  r22.w = r44.w * r34.y + -r22.w;
                  r22.w = saturate(r26.w / r22.w);
                  r26.w = r22.w * r22.w;
                  r22.w = r22.w * -2 + 3;
                  r15.w = r26.w * r22.w;
                }
                r17.z = r20.x * r15.w;
                r15.w = (int)r17.w & 255;
                if (r15.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyz, r9.w, l(220), t12.xyzx
                r34.x = samp0[]..swiz;
                r34.y = samp0[]..swiz;
                r34.z = samp0[]..swiz;
                  r17.w = dot(r45.yzw, r22.xyz);
                  r20.x = dot(r34.xyz, r22.xyz);
                  r34.x = frac(r17.w);
                  r34.y = frac(r20.x);
                  r15.w = (int)r15.w + -1;
                  r34.z = (uint)r15.w;
                  r42.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
                } else {
                  r42.xyz = float3(1,1,1);
                }
              }
              r32.yz = r33.yz;
              r22.xyw = r32.xyz * r42.xyz;
              r15.w = cmp(0 < r17.z);
              if (r15.w != 0) {
                if (3 == 0) r15.w = 0; else if (3+27 < 32) {                 r15.w = (uint)r33.w << (32-(3 + 27)); r15.w = (uint)r15.w >> (32-3);                } else r15.w = (uint)r33.w >> 27;
                r15.w = cmp((int)r15.w != 1);
                if (r15.w != 0) {
                  r15.w = abs(r13.w) * -0.200000003 + 0.400000006;
                  r23.xyz = r2.xyz * r15.www + v7.xyz;
                  r39.xyz = r38.xyz;
                  r15.w = dot(r39.xyzw, r23.xyzw);
                  r17.w = dot(r41.xyzw, r23.xyzw);
                  r20.x = cmp(r17.w >= r15.w);
                  if (r20.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.y, r9.w, l(144), t12.xxxx
                  r40.y = samp0[]..swiz;
                    r36.w = r37.x;
                    r32.x = dot(r36.xyzw, r23.xyzw);
                    r38.xyz = r37.yzw;
                    r32.y = dot(r38.xyzw, r23.xyzw);
                    r23.xy = r32.xy / r17.ww;
                    r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r23.xy = r23.xy * r40.zw + r40.xy;
                    r9.w = r15.w / r17.w;
                    r9.w = max(6.10351563e-05, r9.w);
                    r15.w = (int)r33.w & 0x0000ffff;
                    if (r8.z != 0) {
                      r32.z = (uint)r15.w;
                      r17.w = 0;
                      r20.x = 0;
                      while (true) {
                        r26.w = cmp((int)r20.x >= 8);
                        if (r26.w != 0) break;
                        r34.x = dot(icb[r20.x+0].xy, r26.xy);
                        r34.y = dot(icb[r20.x+0].yx, r26.xz);
                        r32.xy = r34.xy * r35.yy + r23.xy;
                        r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r9.w).x;
                        r17.w = r26.w * 0.125 + r17.w;
                        r20.x = (int)r20.x + 1;
                      }
                    } else {
                      r23.z = (uint)r15.w;
                      r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r9.w).x;
                    }
                    r9.w = r17.w * r17.w;
                    r9.w = r9.w * r17.w;
                  } else {
                    r9.w = 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = r17.z * r9.w;
                r15.w = cmp(0 < r9.w);
                if (r15.w != 0) {
                  r15.w = r33.x * r6.z;
                  r15.w = r15.w * r14.w;
                  if (4 == 0) r17.z = 0; else if (4+16 < 32) {                   r17.z = (uint)r33.w << (32-(4 + 16)); r17.z = (uint)r17.z >> (32-4);                  } else r17.z = (uint)r33.w >> 16;
                  r20.x = cmp(0 < (uint)r17.z);
                  r20.x = r5.w ? r20.x : 0;
                  if (r20.x != 0) {
                    r17.z = (int)r17.z + numLights;
                    r17.z = (int)r17.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r17.z, l(52), t12.xxxx
                  r20.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(68), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r17.z, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r17.z, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r17.z, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r23.x = abs(r13.w) * -0.200000003 + 0.400000006;
                    r24.xyz = r2.xyz * r23.xxx + v7.xyz;
                    r23.x = dot(r32.xyzw, r24.xyzw);
                    r23.y = dot(r34.xyzw, r24.xyzw);
                    r23.z = dot(r35.xyzw, r24.xyzw);
                    r24.x = dot(r36.xyzw, r24.xyzw);
                    r24.y = cmp(r24.x < r23.z);
                    r23.xy = r23.xy / r24.xx;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.xy = r23.xy + r38.zw;
                    r23.xy = r23.xy * r38.xy;
                    r32.xy = r20.xx / r37.xz;
                    r32.zw = float2(1,1) + -r32.xy;
                    r32.zw = cmp(r23.xy >= r32.zw);
                    r32.xy = cmp(r32.xy >= r23.xy);
                    r32.xy = (int2)r32.xy | (int2)r32.zw;
                    r24.z = (int)r32.y | (int)r32.x;
                    r24.y = (int)r24.y | (int)r24.z;
                    if (r24.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r17.z, l(28), t12.xxxx
                    r24.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r17.z, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r23.xy = saturate(r23.xy);
                      r33.xy = r23.xy * r37.xz + r37.yw;
                      r17.z = r32.y * r24.x;
                      r23.x = r32.x * r24.x + r23.z;
                      r17.z = r23.x / r17.z;
                      r17.z = max(6.10351563e-05, r17.z);
                      r23.x = r24.y ? 0.000000 : 0;
                      if (r8.z != 0) {
                        r24.z = (uint)r23.x;
                        r23.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r23.z >= 8);
                          if (r26.w != 0) break;
                          r32.x = dot(icb[r23.z+0].xy, r27.xy);
                          r32.y = dot(icb[r23.z+0].yx, r27.xz);
                          r24.xy = r32.xy * r20.xx + r33.xy;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r17.z).x;
                          r23.y = r24.x * 0.125 + r23.y;
                          r23.z = (int)r23.z + 1;
                        }
                      } else {
                        r33.z = (uint)r23.x;
                        r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r17.z).x;
                      }
                      r17.z = r23.y * r23.y;
                      r17.z = r17.z * r23.y;
                    } else {
                      r17.z = 1;
                    }
                    r9.w = r17.z * r9.w;
                  } else {
                    if (4 == 0) r17.z = 0; else if (4+20 < 32) {                     r17.z = (uint)r33.w << (32-(4 + 20)); r17.z = (uint)r17.z >> (32-4);                    } else r17.z = (uint)r33.w >> 20;
                    r20.x = cmp(0 < (uint)r17.z);
                    r20.x = r20.x ? r1.w : 0;
                    if (r20.x != 0) {
                      r17.z = (int)r17.z + numLights;
                      r17.z = (int)r17.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r17.z, l(52), t12.xxxx
                    r20.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r17.z, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r17.z, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r23.x = abs(r13.w) * -0.200000003 + 0.400000006;
                      r25.xyz = r2.xyz * r23.xxx + v7.xyz;
                      r24.x = dot(r32.xyzw, r25.xyzw);
                      r24.y = dot(r33.xyzw, r25.xyzw);
                      r23.x = dot(r34.xyzw, r25.xyzw);
                      r23.z = dot(r35.xyzw, r25.xyzw);
                      r24.z = cmp(r23.z < r23.x);
                      r24.xy = r24.xy / r23.zz;
                      r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r24.xy = r24.xy + r37.zw;
                      r24.xy = r24.xy * r37.xy;
                      r25.xy = r20.xx / r36.xz;
                      r32.xy = float2(1,1) + -r25.xy;
                      r32.xy = cmp(r24.xy >= r32.xy);
                      r25.xy = cmp(r25.xy >= r24.xy);
                      r25.xy = (int2)r25.xy | (int2)r32.xy;
                      r25.x = (int)r25.y | (int)r25.x;
                      r24.z = (int)r24.z | (int)r25.x;
                      if (r24.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.z, r17.z, l(28), t12.xxxx
                      r24.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xy, r17.z, l(164), t12.xyxx
                      r25.x = samp0[]..swiz;
                      r25.y = samp0[]..swiz;
                        r24.xy = saturate(r24.xy);
                        r32.xy = r24.xy * r36.xz + r36.yw;
                        r17.z = r25.y * r23.z;
                        r23.x = r25.x * r23.z + r23.x;
                        r17.z = r23.x / r17.z;
                        r17.z = max(6.10351563e-05, r17.z);
                        r23.x = r24.z ? 0.000000 : 0;
                        if (r8.z != 0) {
                          r24.z = (uint)r23.x;
                          r23.z = 0;
                          r25.x = 0;
                          while (true) {
                            r25.y = cmp((int)r25.x >= 8);
                            if (r25.y != 0) break;
                            r33.x = dot(icb[r25.x+0].xy, r28.xy);
                            r33.y = dot(icb[r25.x+0].yx, r28.xz);
                            r24.xy = r33.xy * r20.xx + r32.xy;
                            r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r17.z).x;
                            r23.z = r24.x * 0.125 + r23.z;
                            r25.x = (int)r25.x + 1;
                          }
                        } else {
                          r32.z = (uint)r23.x;
                          r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r17.z).x;
                        }
                        r17.z = r23.z * r23.z;
                        r17.z = r17.z * r23.z;
                      } else {
                        r17.z = 1;
                      }
                      r9.w = r17.z * r9.w;
                    }
                  }
                  r17.z = -r14.w * r4.w + 1;
                  r17.z = r17.z * r17.z;
                  r17.z = -r17.z * 0.620000005 + 0.620000005;
                  r17.z = r17.z + -r14.w;
                  r17.z = r6.w * r17.z + r14.w;
                  r17.z = r17.z * r9.w;
                  r13.w = cmp(0 < r13.w);
                  r24.xyz = r17.zzz * r22.xyw + r11.yzw;
                  r21.xyz = r21.xyz * r12.www + r4.xyz;
                  r12.w = dot(r21.xyz, r21.xyz);
                  r12.w = rsqrt(r12.w);
                  r21.xyz = r21.xyz * r12.www;
                  r12.w = dot(r21.xyz, r4.xyz);
                  r17.z = dot(r2.xyz, r21.xyz);
                  r20.x = abs(r17.z) * r6.z + -abs(r17.z);
                  r17.z = abs(r17.z) * r20.x + 1;
                  r14.w = r14.w * r0.w + r2.w;
                  r17.z = r17.z * r17.z;
                  r14.w = r17.z * r14.w;
                  r14.w = rcp(r14.w);
                  r14.w = r14.w * r15.w;
                  r9.w = r14.w * r9.w;
                  r9.w = 0.25 * r9.w;
                  r21.xyz = r9.www * r22.xyw + r31.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r14.w = r12.w * r12.w;
                  r14.w = r14.w * r14.w;
                  r12.w = r14.w * r12.w;
                  r9.w = r12.w * r9.w;
                  r22.xyw = r9.www * r22.xyw + r18.xyz;
                  r11.yzw = r13.www ? r24.xyz : r11.yzw;
                  r18.xyz = r13.www ? r22.xyw : r18.xyz;
                  r31.xyz = r13.www ? r21.xyz : r31.xyz;
                }
              }
            }
            break;
            default :
            break;
          }
        }
      }
    }
    r10.yzw = r11.yzw;
    r29.xyz = r18.xyz;
    r30.xyz = r31.xyz;
    r6.y = (int)r6.y + 32;
  }
  r2.xyz = float3(1,1,1) + -r1.xyz;
  r2.xyz = r29.xyz * r2.xyz;
  r1.xyz = r30.xyz * r1.xyz + r2.xyz;
  r0.xyz = r10.yzw * r0.xyz + r1.xyz;
  r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = max(9.99999975e-05, r0.w);
  r0.w = max(relHDRExposure.x, r0.w);
  r1.xyz = r5.xyz * r0.www;
  r1.xyz = r3.xyz * r3.www + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v7.xyz, v7.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v7.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r1.w = cmp(0.00999999978 < abs(v7.z));
      r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r3.xy = float2(-1.44269502,-1.44269502) * r2.zw;
      r3.xy = exp2(r3.xy);
      r3.xy = float2(1,1) + -r3.xy;
      r2.zw = r3.xy / r2.zw;
      r2.zw = r2.xy * r2.zw;
      r2.xy = r1.ww ? r2.zw : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r3.xyz + r2.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r3.y = -1.44269502 * r3.x;
      r3.y = exp2(r3.y);
      r3.y = 1 + -r3.y;
      r3.x = r3.y / r3.x;
      r3.x = r3.x * r1.w;
      r1.w = r2.w ? r3.x : r1.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r2.xyz = exp2(r3.xyz);
    }
    r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r1.x = dot(fogConstants.wldSunFogDir.xyz, -r1.xyz);
    r1.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.z = fogConstants.atmosphereMieSchlickK * -r1.x + 1;
    r1.z = r1.z * r1.z;
    r1.z = 12.566371 * r1.z;
    r1.y = r1.y / r1.z;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r1.y * r0.w;
    r1.x = saturate(r1.x);
    r1.x = r1.x * r1.x + 1;
    r1.x = r1.x * 0.0596831031 + -1;
    r1.x = fogConstants.atmospheresunstrength * r1.x + 1;
    r1.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r1.xyz = r1.xxx * fogConstants.atmosphereRayleighDensity.xyz + r1.yzw;
    r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyz = r3.xyz * r1.xyz;
    r1.xyz = r0.xyz * r2.xyz + r1.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r1.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r2.x = cmp(abs(r0.w) < 9.99999975e-05);
    r2.y = min(64, r1.w);
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r2.z = saturate(fogConstants.K0b);
    r2.w = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r2.w ? r2.y : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r2.x ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.x ? r2.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(v7.xyz, v7.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v7.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
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