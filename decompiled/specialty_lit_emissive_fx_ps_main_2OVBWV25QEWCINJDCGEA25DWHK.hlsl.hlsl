// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:35 2021

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
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float rowCount : packoffset(c11.z);
  float columnCount : packoffset(c11.w);
  float imageTime : packoffset(c12);
  float2 rotateUVs : packoffset(c12.y);
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
  bool relativeHDR : packoffset(c17.w);
  bool invertFalloff : packoffset(c18);
  float hdrScale : packoffset(c18.y);
  float emissiveFalloffPower : packoffset(c18.z);
  float zFeatherDistance : packoffset(c18.w);
  float falloffBegin : packoffset(c19);
  float falloffEnd : packoffset(c19.y);
  float alphaCooling : packoffset(c19.z);
  float coolingFactor : packoffset(c19.w);
  float uvMotionToggle1 : packoffset(c20);
  float2 distortionRotateUVs : packoffset(c20.y);
  float2 distortionScrollUVs : packoffset(c21);
  float2 distortionScaleUVs : packoffset(c21.z);
  float2 distortionOffsetUVs : packoffset(c22);
  float2 distortionZoomUVs : packoffset(c22.z);
  float distortionZoomRate : packoffset(c23);
  float distortionAmount : packoffset(c23.y);
  float2 maskRotateUVs : packoffset(c23.z);
  float2 maskScrollUVs : packoffset(c24);
  float2 maskScaleUVs : packoffset(c24.z);
  float2 maskOffsetUVs : packoffset(c25);
  float2 maskZoomUVs : packoffset(c25.z);
  float maskZoomRate : packoffset(c26);
  bool noReceiveShadow : packoffset(c26.y);
  uint zFeatherComputeSprites : packoffset(c26.z);
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
Texture2D<float4> floatZSampler : register(t0);
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
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> tintMask : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> flickerLookupMap : register(t29);
Texture2D<float4> emissiveMap : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2D<float4> alphaMask : register(t37);
Texture2D<float4> distortionMap : register(t38);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation float3 v2 : UVOFFSETS0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  float2 v7 : TEXCOORD9,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v6.xyz, -v6.xyz);
  r0.x = rsqrt(r0.x);
  r0.yzw = -v6.xyz * r0.xxx;
  r1.x = dot(r0.yzw, v4.xyz);
  r1.y = dot(r0.yzw, v5.xyz);
  r1.z = dot(r0.yzw, v3.xyz);
  r1.w = cmp(0 < r1.z);
  r1.xy = -r1.xy / r1.zz;
  r1.xy = r1.ww ? r1.xy : 0;
  r2.xy = float2(-0.5,-0.5) + w1.xy;
  r2.zw = float2(9.99999975e-06,9.99999975e-06) * r1.xy;
  r3.xy = distortionScaleUVs.xy * r2.zw;
  r3.xy = r2.xy * distortionScaleUVs.xy + r3.xy;
  r3.xy = distortionOffsetUVs.xy * distortionScaleUVs.xy + r3.xy;
  r1.w = distortionRotateUVs.y * gameTime.w + 1;
  r1.w = distortionRotateUVs.x * r1.w;
  r1.w = 0.0174532924 * r1.w;
  sincos(r1.w, r4.x, r5.x);
  r5.y = r5.x;
  r5.z = r4.x;
  r6.x = dot(r5.yz, r3.xy);
  r5.x = -r4.x;
  r6.y = dot(r5.xy, r3.xy);
  r3.xy = gameTime.ww * distortionScrollUVs.xy;
  r3.xy = r3.xy * distortionScaleUVs.xy + r6.xy;
  r1.w = gameTime.w * distortionZoomRate;
  r1.w = cos(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = 1 + -r1.w;
  r3.z = distortionZoomUVs.y + -distortionZoomUVs.x;
  r1.w = r1.w * r3.z + distortionZoomUVs.x;
  r3.xy = r3.xy / r1.ww;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r3.xy = distortionMap.Sample(normalSampler_s, r3.xy).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r1.w = cmp(0.5 < uvMotionToggle1);
  if (r1.w != 0) {
    r3.z = rowCount * columnCount;
    r3.w = imageTime * r3.z;
    r4.x = gameTime.w * r3.w;
    r4.x = cmp(r4.x >= -r4.x);
    r4.x = r4.x ? r3.w : -r3.w;
    r4.y = 1 / r4.x;
    r4.y = gameTime.w * r4.y;
    r4.y = frac(r4.y);
    r4.x = r4.x * r4.y;
    r3.w = r4.x / r3.w;
    r3.z = r3.w * r3.z;
    r3.z = round(r3.z);
    r3.w = r3.z / columnCount;
    r4.x = columnCount * r3.z;
    r4.x = cmp(r4.x >= -r4.x);
    r4.x = r4.x ? columnCount : -columnCount;
    r4.y = 1 / r4.x;
    r3.z = r4.y * r3.z;
    r3.z = frac(r3.z);
    r3.z = r4.x * r3.z;
    r3.z = trunc(r3.z);
    r3.z = w1.x + r3.z;
    r4.x = r3.z / columnCount;
    r3.z = trunc(r3.w);
    r3.z = w1.y + r3.z;
    r4.y = r3.z / rowCount;
  } else {
    r3.zw = scaleUVs.xy * r2.zw;
    r3.zw = r2.xy * scaleUVs.xy + r3.zw;
    r3.zw = offsetUVs.xy * scaleUVs.xy + r3.zw;
    r4.z = rotateUVs.y * gameTime.w + 1;
    r4.z = rotateUVs.x * r4.z;
    r4.z = 0.0174532924 * r4.z;
    sincos(r4.z, r5.x, r6.x);
    r6.y = r6.x;
    r6.z = r5.x;
    r7.x = dot(r6.yz, r3.zw);
    r6.x = -r5.x;
    r7.y = dot(r6.xy, r3.zw);
    r3.zw = gameTime.ww * scrollUVs.xy;
    r3.zw = r3.zw * scaleUVs.xy + r7.xy;
    r4.z = gameTime.w * zoomRate;
    r4.z = cos(r4.z);
    r4.z = r4.z * 0.5 + 0.5;
    r4.z = 1 + -r4.z;
    r4.w = zoomUVs.y + -zoomUVs.x;
    r4.z = r4.z * r4.w + zoomUVs.x;
    r3.zw = r3.zw / r4.zz;
    r3.zw = float2(0.5,0.5) + r3.zw;
    r4.zw = saturate(r3.zw);
    r4.xy = clampU ? r4.zw : r3.zw;
  }
  r3.zw = r3.xy * distortionAmount + r4.xy;
  r4.xyzw = colorMap.Sample(colorSampler_s, r3.zw).xyzw;
  r5.x = tintMask.Sample(colorSampler_s, r3.zw).x;
  r5.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r5.xyz = r5.xxx * r5.yzw + float3(1,1,1);
  r4.xyz = r5.xyz * r4.xyz;
  r5.x = aoMap.Sample(aoSampler_s, r3.zw).x;
  r5.y = glossMap.Sample(specColorSampler_s, r3.zw).x;
  r5.z = glossRange.y + -glossRange.x;
  r5.y = r5.y * r5.z + glossRange.x;
  r5.y = saturate(0.0588235296 * r5.y);
  r6.xyz = normalMap.Sample(normalSampler_s, r3.zw).xyz;
  r6.xyz = float3(-0.5,-0.5,-0) + r6.xyz;
  r6.xyz = baseNormalHeight * r6.xyz + float3(0.5,0.5,0);
  r5.zw = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r6.x = dot(r5.zw, r5.zw);
  r6.x = 1 + -r6.x;
  r6.x = max(0, r6.x);
  r6.x = sqrt(r6.x);
  r6.y = r6.z * r6.z;
  r6.y = 0.333333343 * r6.y;
  r6.y = min(1, r6.y);
  r6.z = v8.x ? 1 : -1;
  r6.w = dot(v3.xyz, v3.xyz);
  r6.w = rsqrt(r6.w);
  r7.xyz = v3.xyz * r6.www;
  r7.xyz = r7.xyz * r6.zzz;
  r6.w = dot(v4.xyz, v4.xyz);
  r6.w = rsqrt(r6.w);
  r8.xyz = v4.xyz * r6.www;
  r8.xyz = r8.xyz * r6.zzz;
  r6.w = dot(v5.xyz, v5.xyz);
  r6.w = rsqrt(r6.w);
  r9.xyz = v5.xyz * r6.www;
  r9.xyz = r9.xyz * r6.zzz;
  r5.y = -17 * r5.y;
  r5.y = exp2(r5.y);
  r5.y = r6.y + r5.y;
  r5.y = log2(r5.y);
  r5.y = -0.0588235296 * r5.y;
  r10.y = max(0, r5.y);
  r6.yzw = r9.xyz * r5.www;
  r5.yzw = r8.xyz * r5.zzz + r6.yzw;
  r5.yzw = r7.xyz * r6.xxx + r5.yzw;
  r6.x = dot(r5.yzw, r5.yzw);
  r6.x = rsqrt(r6.x);
  r6.xyz = r6.xxx * r5.yzw;
  if (r1.w != 0) {
    r1.w = rowCount * columnCount;
    r5.y = imageTime * r1.w;
    r5.z = gameTime.w * r5.y;
    r5.z = cmp(r5.z >= -r5.z);
    r5.z = r5.z ? r5.y : -r5.y;
    r5.w = 1 / r5.z;
    r5.w = gameTime.w * r5.w;
    r5.w = frac(r5.w);
    r5.z = r5.z * r5.w;
    r5.y = r5.z / r5.y;
    r1.w = r5.y * r1.w;
    r1.w = round(r1.w);
    r5.y = r1.w / columnCount;
    r5.z = columnCount * r1.w;
    r5.z = cmp(r5.z >= -r5.z);
    r5.z = r5.z ? columnCount : -columnCount;
    r5.w = 1 / r5.z;
    r1.w = r5.w * r1.w;
    r1.w = frac(r1.w);
    r1.w = r5.z * r1.w;
    r1.w = trunc(r1.w);
    r1.w = r3.z + r1.w;
    r7.x = r1.w / columnCount;
    r1.w = trunc(r5.y);
    r1.w = r3.w + r1.w;
    r7.y = r1.w / rowCount;
  } else {
    r3.zw = float2(-0.5,-0.5) + r3.zw;
    r1.w = 9.99999975e-06 + layerDepth;
    r1.xy = r1.xy * r1.ww;
    r1.xy = scaleUVs.xy * r1.xy;
    r1.xy = r3.zw * scaleUVs.xy + r1.xy;
    r1.xy = offsetUVs.xy * scaleUVs.xy + r1.xy;
    r1.w = rotateUVs.y * gameTime.w + 1;
    r1.w = rotateUVs.x * r1.w;
    r1.w = 0.0174532924 * r1.w;
    sincos(r1.w, r8.x, r9.x);
    r9.y = r9.x;
    r9.z = r8.x;
    r11.x = dot(r9.yz, r1.xy);
    r9.x = -r8.x;
    r11.y = dot(r9.xy, r1.xy);
    r1.xy = gameTime.ww * scrollUVs.xy;
    r1.xy = r1.xy * scaleUVs.xy + r11.xy;
    r1.w = gameTime.w * zoomRate;
    r1.w = cos(r1.w);
    r1.w = r1.w * 0.5 + 0.5;
    r1.w = 1 + -r1.w;
    r3.z = zoomUVs.y + -zoomUVs.x;
    r1.w = r1.w * r3.z + zoomUVs.x;
    r1.xy = r1.xy / r1.ww;
    r1.xy = float2(0.5,0.5) + r1.xy;
    r3.zw = saturate(r1.xy);
    r7.xy = clampU ? r3.zw : r1.xy;
  }
  r1.xy = r3.xy * distortionAmount + r7.xy;
  r7.xyzw = emissiveMap.Sample(colorSampler_s, r1.xy).xyzw;
  r1.xyw = colorTint.xyz * r7.xyz;
  r5.yzw = saturate(r1.xyw);
  r5.yzw = log2(r5.yzw);
  r5.yzw = alphaCooling * r5.yzw;
  r5.yzw = exp2(r5.yzw);
  r3.z = saturate(r1.z);
  r3.w = log2(r3.z);
  r3.w = invertFalloff * r3.w;
  r3.w = exp2(r3.w);
  r3.z = 1 + -r3.z;
  r3.z = log2(r3.z);
  r3.z = invertFalloff * r3.z;
  r3.z = exp2(r3.z);
  r3.z = invertFalloff ? r3.z : r3.w;
  r7.xy = cmp(invertFalloff == float2(0,0));
  r3.z = r7.x ? 1 : r3.z;
  r3.w = invertFalloff * r7.w;
  r3.z = r3.w * r3.z;
  r1.xyw = r3.zzz * r1.xyw;
  r5.yzw = r5.yzw * r3.zzz;
  r3.z = v2.x + v2.y;
  r3.z = v2.z + r3.z;
  r3.z = flickerSeed.y + r3.z;
  r3.z = frac(r3.z);
  r8.y = gameTime.w * flickerSpeed + r3.z;
  r8.x = flickerSeed.x;
  r3.z = flickerLookupMap.SampleLevel(lookupSampler_s, r8.xy, 0).x;
  r3.z = log2(abs(r3.z));
  r3.z = flickerPower * r3.z;
  r3.z = exp2(r3.z);
  r3.w = flickerRange.y + -flickerRange.x;
  r3.z = r3.z * r3.w + flickerRange.x;
  r7.xzw = r3.zzz * r1.xyw;
  r7.xzw = r7.xzw / invertFalloff;
  r3.w = saturate(dot(r7.xzw, float3(0.298999995,0.587000012,0.114)));
  r3.w = r4.w * v1.x + r3.w;
  r2.zw = maskScaleUVs.xy * r2.zw;
  r2.xy = r2.xy * maskScaleUVs.xy + r2.zw;
  r2.xy = maskOffsetUVs.xy * maskScaleUVs.xy + r2.xy;
  r2.z = gameTime.w * maskRotateUVs.y + 1;
  r2.z = maskRotateUVs.x * r2.z;
  r2.z = 0.0174532924 * r2.z;
  sincos(r2.z, r7.x, r8.x);
  r8.y = r8.x;
  r8.z = r7.x;
  r9.x = dot(r8.yz, r2.xy);
  r8.x = -r7.x;
  r9.y = dot(r8.xy, r2.xy);
  r2.xy = gameTime.ww * maskScrollUVs.xy;
  r2.xy = r2.xy * maskScaleUVs.xy + r9.xy;
  r2.z = gameTime.w * maskZoomRate;
  r2.z = cos(r2.z);
  r2.z = r2.z * 0.5 + 0.5;
  r2.z = 1 + -r2.z;
  r2.w = maskZoomUVs.y + -maskZoomUVs.x;
  r2.z = r2.z * r2.w + maskZoomUVs.x;
  r2.xy = r2.xy / r2.zz;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.zw = saturate(r2.xy);
  r2.xy = clampU ? r2.zw : r2.xy;
  r2.xy = r3.xy * distortionAmount + r2.xy;
  r2.x = alphaMask.Sample(colorSampler_s, r2.xy).x;
  r2.x = r3.w * r2.x;
  r1.z = r1.z * r1.z;
  r1.z = saturate(r1.z * v7.x + v7.y);
  r1.z = r2.x * r1.z;
  r2.xy = (int2)v0.xy;
  r2.zw = float2(0,0);
  r2.x = floatZSampler.Load(r2.xyz).x;
  r2.y = cmp(r2.x >= 0.984375);
  r2.z = 1.01587307 * r2.x;
  r2.x = r2.x * 64 + -63;
  r2.x = r2.y ? r2.x : r2.z;
  r2.x = max(9.99999994e-09, r2.x);
  r2.y = cmp(v0.z >= 0.984375);
  r2.z = 1.01587307 * v0.z;
  r2.w = v0.z * 64 + -63;
  r2.y = r2.y ? r2.w : r2.z;
  r2.y = max(9.99999994e-09, r2.y);
  r2.xy = rcp(r2.xy);
  r2.z = 1 / invertFalloff;
  r2.z = r7.y ? 60000 : r2.z;
  r2.x = r2.x + -r2.y;
  r2.x = saturate(r2.x * r2.z);
  r1.z = r2.x * r1.z;
  r2.xz = (uint2)v0.xy;
  r2.w = cmp(isDepthHack != 0);
  r3.xy = (uint2)r2.zx;
  r3.w = dot(r3.yx, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r7.x, r8.x);
  r3.x = dot(r3.xy, float2(0.0671105608,0.00583714992));
  r3.x = frac(r3.x);
  r3.x = 52.9829178 * r3.x;
  r3.x = frac(r3.x);
  r3.x = r3.x * 6.28318548 + gameTick.w;
  sincos(r3.x, r3.x, r9.x);
  r10.x = saturate(dot(r6.xyz, r0.yzw));
  r3.y = dot(-r0.yzw, r6.xyz);
  r3.y = r3.y + r3.y;
  r11.xyz = r6.xyz * -r3.yyy + -r0.yzw;
  r3.y = 17 * r10.y;
  r3.y = exp2(r3.y);
  r3.y = 2 + r3.y;
  r3.y = 2 / r3.y;
  r3.w = sqrt(r3.y);
  r4.w = 1 + -r10.y;
  r7.z = 5 * r4.w;
  r7.w = r4.w * 5 + -2.5;
  r7.w = 0.400000006 * r7.w;
  r7.w = max(0, r7.w);
  r7.w = 100 * r7.w;
  r9.yz = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r8.w = exp2(r9.y);
  r8.w = r10.x * r8.w;
  r8.w = 9.1368103 * r8.w;
  r9.y = r7.z * r4.w;
  r9.y = -r9.y * 2.0159049 + r9.z;
  r9.y = exp2(r9.y);
  r9.y = r10.x * r9.y;
  r9.y = 9.70808983 * r9.y;
  r8.w = max(r9.y, r8.w);
  r8.w = max(1.26815999, r8.w);
  r9.y = numRefProbes + -numOverrideProbes;
  r2.y = 0.0078125 * r2.y;
  r2.y = min(15, r2.y);
  r2.y = (uint)r2.y;
  r12.xy = (uint2)r2.xz >> int2(6,6);
  r12.z = (uint)r2.y << 4;
  r2.x = (int)r9.y & -32;
  r2.y = (int)-r2.x + (int)r9.y;
  r2.z = numRefProbes & -32;
  r9.z = (int)-r2.z + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r9.w = r2.x;
  while (true) {
    r10.z = cmp((uint)r9.w >= numRefProbes);
    if (r10.z != 0) break;
    r13.z = (uint)r9.w >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r10.z = visibleProbes.Load(r14.xyzw).x;
    r10.w = cmp((int)r2.x == (int)r9.w);
    bitmask.w = ((~(-1 << r2.y)) << 0) & 0xffffffff;  r12.w = (((uint)0 << 0) & bitmask.w) | ((uint)r10.z & ~bitmask.w);
    r10.z = r10.w ? r12.w : r10.z;
    r10.w = cmp((int)r2.z == (int)r9.w);
    if (r9.z == 0) r12.w = 0; else if (r9.z+0 < 32) {     r12.w = (uint)r10.z << (32-(r9.z + 0)); r12.w = (uint)r12.w >> (32-r9.z);    } else r12.w = (uint)r10.z >> 0;
    r10.z = r10.w ? r12.w : r10.z;
    r10.w = (int)r9.w + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r12.w = r10.z;
    while (true) {
      if (r12.w == 0) break;
      r13.z = firstbitlow((uint)r12.w);
      r13.w = 1 << (int)r13.z;
      r14.x = (int)r12.w & (int)r13.w;
      if (r14.x != 0) {
        r12.w = (int)r12.w ^ (int)r13.w;
        r13.w = (int)r10.w + (int)r13.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r13.w, l(16), t11.xyxx
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
        r24.xyz = -v6.xyz + r24.xyz;
        r14.z = r24.w;
        r14.xyz = cmp(abs(r24.xyz) < r14.zxy);
        r13.w = r14.y ? r14.x : 0;
        r13.w = r14.z ? r13.w : 0;
        if (r13.w != 0) {
          r13.z = (int)r9.w + (int)r13.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.z, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xy, r13.z, l(96), t15.xyxx
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.z, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r26.xyz = v6.xyz + -r24.yzw;
          r13.w = (int)r25.w & 0x0000ffff;
          if (6 == 0) r14.z = 0; else if (6+25 < 32) {           r14.z = (uint)r25.w << (32-(6 + 25)); r14.z = (uint)r14.z >> (32-6);          } else r14.z = (uint)r25.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(0), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(16), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(32), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(48), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(64), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(80), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
          r15.w = dot(r27.xyz, r26.xyz);
          r15.w = saturate(r15.w + r27.w);
          r16.w = dot(r28.xyz, r26.xyz);
          r16.w = saturate(r16.w + r28.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r29.xyz, r26.xyz);
          r16.w = saturate(r16.w + r29.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r30.xyz, r26.xyz);
          r16.w = saturate(r16.w + r30.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r31.xyz, r26.xyz);
          r16.w = saturate(r16.w + r31.w);
          r15.w = r16.w * r15.w;
          r16.w = dot(r32.xyz, r26.xyz);
          r16.w = saturate(r16.w + r32.w);
          r15.x = r16.w * r15.w;
          r15.w = r14.x ? 0.000000 : 0;
          r15.xw = r15.ww ? r15.xy : r15.zx;
          r16.w = r14.x;
          r27.xy = r15.xw;
          r17.z = 1;
          while (true) {
            r17.w = cmp((int)r17.z >= (int)r14.z);
            if (r17.w != 0) break;
            r17.w = (int)r13.w + (int)r17.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r17.w = dot(r28.xyz, r26.xyz);
            r17.w = saturate(r17.w + r28.w);
            r17.w = r27.x * r17.w;
            r18.w = dot(r29.xyz, r26.xyz);
            r18.w = saturate(r18.w + r29.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r30.xyz, r26.xyz);
            r18.w = saturate(r18.w + r30.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r31.xyz, r26.xyz);
            r18.w = saturate(r18.w + r31.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r32.xyz, r26.xyz);
            r18.w = saturate(r18.w + r32.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r33.xyz, r26.xyz);
            r18.w = saturate(r18.w + r33.w);
            r27.x = r18.w * r17.w;
            r19.w = (uint)r16.w >> 2;
            if (1 == 0) r24.w = 0; else if (1+2 < 32) {             r24.w = (uint)r16.w << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);            } else r24.w = (uint)r16.w >> 2;
            r26.w = (int)r19.w & 2;
            r27.z = max(r27.y, r27.x);
            r17.w = -r17.w * r18.w + 1;
            r17.w = r27.y * r17.w;
            r17.y = r26.w ? r17.w : r27.z;
            r27.xy = r24.ww ? r27.xy : r17.xy;
            r17.z = (int)r17.z + 1;
            r16.w = r19.w;
          }
          r27.y = saturate(r27.y);
          r13.w = r27.y * r14.y;
          r14.x = cmp(0 < r13.w);
          if (r14.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.z, l(16), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(32), t15.yxwz
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(48), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(64), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(80), t15.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(132), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.z, l(148), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(164), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.z, l(180), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(196), t15.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r13.z, l(212), t15.xyxx
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
            r23.z = r27.y * r14.y + r23.z;
            r13.z = r13.w * r25.z;
            r25.z = r33.z;
            r13.w = dot(r11.xyz, r25.xyz);
            r14.x = dot(r26.xyz, r25.xyz);
            r14.x = r14.x + -r33.w;
            r14.y = cmp(r14.x >= 0);
            r14.x = max(abs(r14.x), r7.w);
            r14.x = r14.y ? r14.x : -r14.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r14.x / r13.w;
            r13.w = min(131072, abs(r13.w));
            r33.z = r34.z;
            r14.x = dot(r11.xyz, r33.xyz);
            r14.y = dot(r26.xyz, r33.xyz);
            r14.y = r14.y + -r34.w;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r34.z = r35.z;
            r14.x = dot(r11.xyz, r34.xyz);
            r14.y = dot(r26.xyz, r34.xyz);
            r14.y = r14.y + -r35.w;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r35.z = r36.z;
            r14.x = dot(r11.xyz, r35.xyz);
            r14.y = dot(r26.xyz, r35.xyz);
            r14.y = r14.y + -r36.w;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r36.z = r37.x;
            r14.x = dot(r11.xyz, r36.xyz);
            r14.y = dot(r26.xyz, r36.xyz);
            r14.y = r14.y + -r37.y;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r38.zw = r37.zw;
            r14.x = dot(r11.zxy, r38.xzw);
            r14.y = dot(r26.zxy, r38.xzw);
            r14.y = r14.y + -r38.y;
            r14.z = cmp(r14.y >= 0);
            r14.y = max(abs(r14.y), r7.w);
            r14.y = r14.z ? r14.y : -r14.y;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.y / r14.x;
            r13.w = min(abs(r14.x), r13.w);
            r14.x = r30.w;
            r14.yz = r31.zw;
            r14.xyz = r14.xyz + r26.xyz;
            r14.xyz = r11.xyz * r13.www + r14.xyz;
            r15.x = dot(r14.xyz, r14.xyz);
            r15.x = sqrt(r15.x);
            r13.w = r13.w / r15.x;
            r13.w = r13.w + r13.w;
            r13.w = sqrt(r13.w);
            r13.w = r4.w * 5 + r13.w;
            r13.w = -0.844799995 + r13.w;
            r24.y = r28.z;
            r24.z = r29.x;
            r33.x = dot(r14.xyz, r24.xyz);
            r25.xy = r28.xw;
            r25.z = r29.w;
            r33.y = dot(r14.xyz, r25.xyz);
            r29.x = r28.y;
            r33.z = dot(r14.xyz, r29.xyz);
            if (9 == 0) r14.x = 0; else if (9+16 < 32) {             r14.x = (uint)r25.w << (32-(9 + 16)); r14.x = (uint)r14.x >> (32-9);            } else r14.x = (uint)r25.w >> 16;
            r33.w = (uint)r14.x;
            r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r13.w).xyz;
            r28.x = dot(r26.xyz, r24.xyz);
            r28.y = dot(r26.xyz, r25.xyz);
            r28.z = dot(r26.xyz, r29.xyz);
            r17.yzw = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
            r31.z = r32.x;
            r17.yzw = r17.yzw * r31.xyz + r32.yzw;
            r33.x = dot(r6.xyz, r24.xyz);
            r33.y = dot(r6.xyz, r25.xyz);
            r33.z = dot(r6.xyz, r29.xyz);
            r24.xyz = cmp(float3(0,0,0) < r33.xyz);
            r16.z = r24.x ? 0 : 0.5;
            r25.xyz = r17.yzw + r16.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r26.xyz = r33.xyz * r33.xyz;
            r26.xyz = r26.xyz * r13.zzz;
            r18.z = r24.y ? 0 : 0.5;
            r24.xyw = r18.xyz + r17.yzw;
            r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
            r24.xyw = r24.xyw * r26.yyy;
            r24.xyw = r25.xyz * r26.xxx + r24.xyw;
            r19.z = r24.z ? 0 : 0.5;
            r17.yzw = r19.xyz + r17.yzw;
            r17.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.yzw, 0).xyz;
            r17.yzw = r17.yzw * r26.zzz + r24.xyw;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
            r25.xyz = r24.xyz * r17.yzw;
            r13.w = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r17.yzw * r24.xyz + r22.xyz;
            r15.x = r13.w * r8.w;
            r14.xyz = r14.xyz * r13.zzz;
            r13.z = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r13.z = r8.w * r13.w + r13.z;
            r13.z = r15.x / r13.z;
            r24.x = r22.w;
            r24.yz = r23.xy;
            r23.xyw = r14.yzx * r13.zzz + r24.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r9.w = (int)r9.w + 32;
  }
  r2.z = cmp(r21.w < 1);
  if (r2.z != 0) {
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r23.xyz = r20.xyz;
    r2.z = r21.w;
    r9.z = 0;
    while (true) {
      r9.w = cmp((uint)r9.z >= (uint)r9.y);
      if (r9.w != 0) break;
      r13.z = (uint)r9.z >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r9.w = visibleProbes.Load(r14.xyzw).x;
      r10.z = cmp((int)r2.x == (int)r9.z);
      if (r2.y == 0) r10.w = 0; else if (r2.y+0 < 32) {       r10.w = (uint)r9.w << (32-(r2.y + 0)); r10.w = (uint)r10.w >> (32-r2.y);      } else r10.w = (uint)r9.w >> 0;
      r9.w = r10.z ? r10.w : r9.w;
      r10.z = (int)r9.z + numLights;
      r24.xyzw = r22.xyzw;
      r14.xyz = r23.xyz;
      r10.w = r2.z;
      r12.w = r9.w;
      while (true) {
        if (r12.w == 0) break;
        r13.z = firstbitlow((uint)r12.w);
        r13.w = 1 << (int)r13.z;
        r15.w = (int)r12.w & (int)r13.w;
        if (r15.w != 0) {
          r12.w = (int)r12.w ^ (int)r13.w;
          r13.w = (int)r10.z + (int)r13.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r13.w, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v6.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r13.w = r25.y ? r25.x : 0;
          r13.w = r25.z ? r13.w : 0;
          if (r13.w != 0) {
            r13.z = (int)r9.z + (int)r13.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.z, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r13.z, l(96), t15.xxxy
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r13.z, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v6.xyz + -r25.yzw;
            r13.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r15.w = 0; else if (6+25 < 32) {             r15.w = (uint)r26.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);            } else r15.w = (uint)r26.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r16.w = dot(r28.xyz, r27.xyz);
            r16.w = saturate(r16.w + r28.w);
            r18.w = dot(r29.xyz, r27.xyz);
            r18.w = saturate(r18.w + r29.w);
            r16.w = r18.w * r16.w;
            r18.w = dot(r30.xyz, r27.xyz);
            r18.w = saturate(r18.w + r30.w);
            r16.w = r18.w * r16.w;
            r18.w = dot(r31.xyz, r27.xyz);
            r18.w = saturate(r18.w + r31.w);
            r16.w = r18.w * r16.w;
            r18.w = dot(r32.xyz, r27.xyz);
            r18.w = saturate(r18.w + r32.w);
            r16.w = r18.w * r16.w;
            r18.w = dot(r33.xyz, r27.xyz);
            r18.w = saturate(r18.w + r33.w);
            r15.x = r18.w * r16.w;
            r16.w = (int)r17.z & 1;
            r28.xy = r16.ww ? r15.xy : r15.zx;
            r15.x = r17.z;
            r29.xy = r28.xy;
            r16.w = 1;
            while (true) {
              r18.w = cmp((int)r16.w >= (int)r15.w);
              if (r18.w != 0) break;
              r18.w = (int)r13.w + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r18.w = dot(r30.xyz, r27.xyz);
              r18.w = saturate(r18.w + r30.w);
              r18.w = r29.x * r18.w;
              r19.w = dot(r31.xyz, r27.xyz);
              r19.w = saturate(r19.w + r31.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r32.xyz, r27.xyz);
              r19.w = saturate(r19.w + r32.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r33.xyz, r27.xyz);
              r19.w = saturate(r19.w + r33.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r34.xyz, r27.xyz);
              r19.w = saturate(r19.w + r34.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r35.xyz, r27.xyz);
              r19.w = saturate(r19.w + r35.w);
              r29.x = r19.w * r18.w;
              r23.w = (uint)r15.x >> 2;
              if (1 == 0) r25.w = 0; else if (1+2 < 32) {               r25.w = (uint)r15.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);              } else r25.w = (uint)r15.x >> 2;
              r27.w = (int)r23.w & 2;
              r28.z = max(r29.y, r29.x);
              r18.w = -r18.w * r19.w + 1;
              r18.w = r29.y * r18.w;
              r17.y = r27.w ? r18.w : r28.z;
              r29.xy = r25.ww ? r29.xy : r17.xy;
              r16.w = (int)r16.w + 1;
              r15.x = r23.w;
            }
            r13.w = saturate(r29.y + -r10.w);
            r15.x = r13.w * r17.w;
            r15.w = cmp(0 < r15.x);
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.z, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.z, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.z, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r13.z, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r13.z, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r24.w = r13.w * r17.w + r24.w;
              r13.z = r15.x * r26.z;
              r26.z = r34.z;
              r13.w = dot(r11.xyz, r26.xyz);
              r15.x = dot(r27.xyz, r26.xyz);
              r15.x = r15.x + -r34.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r7.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.w = min(131072, abs(r13.w));
              r34.z = r35.z;
              r15.x = dot(r11.xyz, r34.xyz);
              r15.w = dot(r27.xyz, r34.xyz);
              r15.w = r15.w + -r35.w;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r35.z = r36.z;
              r15.x = dot(r11.xyz, r35.xyz);
              r15.w = dot(r27.xyz, r35.xyz);
              r15.w = r15.w + -r36.w;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r36.z = r37.z;
              r15.x = dot(r11.xyz, r36.xyz);
              r15.w = dot(r27.xyz, r36.xyz);
              r15.w = r15.w + -r37.w;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r37.z = r38.x;
              r15.x = dot(r11.xyz, r37.xyz);
              r15.w = dot(r27.xyz, r37.xyz);
              r15.w = r15.w + -r38.y;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r39.zw = r38.zw;
              r15.x = dot(r11.zxy, r39.xzw);
              r15.w = dot(r27.zxy, r39.xzw);
              r15.w = r15.w + -r39.y;
              r16.w = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r16.w ? r15.w : -r15.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.w / r15.x;
              r13.w = min(abs(r15.x), r13.w);
              r26.x = r31.w;
              r26.yz = r32.zw;
              r17.yzw = r26.xyz + r27.xyz;
              r17.yzw = r11.xyz * r13.www + r17.yzw;
              r15.x = dot(r17.yzw, r17.yzw);
              r15.x = sqrt(r15.x);
              r13.w = r13.w / r15.x;
              r13.w = r13.w + r13.w;
              r13.w = sqrt(r13.w);
              r13.w = r4.w * 5 + r13.w;
              r13.w = -0.844799995 + r13.w;
              r25.y = r28.z;
              r25.z = r30.x;
              r34.x = dot(r17.yzw, r25.xyz);
              r26.xy = r28.xw;
              r26.z = r30.w;
              r34.y = dot(r17.yzw, r26.xyz);
              r30.x = r28.y;
              r34.z = dot(r17.yzw, r30.xyz);
              if (9 == 0) r15.x = 0; else if (9+16 < 32) {               r15.x = (uint)r26.w << (32-(9 + 16)); r15.x = (uint)r15.x >> (32-9);              } else r15.x = (uint)r26.w >> 16;
              r34.w = (uint)r15.x;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r13.w).xyz;
              r28.x = dot(r27.xyz, r25.xyz);
              r28.y = dot(r27.xyz, r26.xyz);
              r28.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r6.xyz, r25.xyz);
              r34.y = dot(r6.xyz, r26.xyz);
              r34.z = dot(r6.xyz, r30.xyz);
              r25.xyz = cmp(float3(0,0,0) < r34.xyz);
              r16.z = r25.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r16.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xyz = r34.xyz * r34.xyz;
              r28.xyz = r28.xyz * r13.zzz;
              r18.z = r25.y ? 0 : 0.5;
              r25.xyw = r27.xyz + r18.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r28.yyy;
              r25.xyw = r26.xyz * r28.xxx + r25.xyw;
              r19.z = r25.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r19.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r25.xyz = r26.xyz * r28.zzz + r25.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r25.xyz;
              r13.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.xyz = r25.xyz * r26.xyz + r14.xyz;
              r15.x = r13.w * r8.w;
              r17.yzw = r17.yzw * r13.zzz;
              r13.z = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r13.z = r8.w * r13.w + r13.z;
              r13.z = r15.x / r13.z;
              r24.xyz = r17.yzw * r13.zzz + r24.xyz;
            }
          }
        }
      }
      r22.xyzw = r24.xyzw;
      r23.xyz = r14.xyz;
      r9.z = (int)r9.z + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r23.xyz;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r2.x = max(1, r21.w);
  r2.x = rcp(r2.x);
  r21.w = saturate(r21.w);
  r9.yzw = r20.xyz * r2.xxx;
  r13.xyz = r21.xyz * r2.xxx;
  r2.y = cmp(r21.w < 0.99000001);
  if (r2.y != 0) {
    r2.y = 1 + -r21.w;
    r2.z = sunConstants.globalProbeExposure * r2.y;
    r14.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
    r15.x = globalProbeConstants.data[0].w * r14.x;
    r15.yz = globalProbeConstants.data[1].xy * r14.yz;
    r14.xyz = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r14.xy;
    r15.z = globalProbeConstants.data[2].x * r14.z;
    r14.xyz = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r6.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r16.xyz = r15.wwx + r14.xyz;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r17.xyz = r6.xyz * r6.xyz;
    r17.xyz = r17.xyz * r2.zzz;
    r18.xyz = r15.wwy + r14.xyz;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r17.yyy;
    r16.xyz = r16.xyz * r17.xxx + r18.xyz;
    r14.xyz = r15.wwz + r14.xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r17.zzz + r16.xyz;
    r6.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r6.xyzw, 6).xyz;
    r14.xyz = r15.xyz * r14.xyz;
    r2.z = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.yzw = r20.xyz * r2.xxx + r14.xyz;
    r11.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r7.z).xyz;
    r2.x = sunConstants.globalProbeExposure * r2.y + -r2.z;
    r2.x = r10.y * r2.x + r2.z;
    r13.xyz = r14.xyz * r2.xxx + r13.xyz;
  }
  r2.x = r10.x + r5.x;
  r2.x = log2(abs(r2.x));
  r2.x = r3.w * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x + r5.x;
  r2.x = saturate(-1 + r2.x);
  r14.xyz = r9.yzw * r5.xxx;
  r2.yz = r10.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r9.yzw = r13.xyz * r2.xxx;
  r13.xyz = r9.zwy * r2.yyy;
  r2.xyz = r9.yzw * r2.zzz;
  r4.w = sqrt(r3.w);
  r4.w = r4.w * 0.5 + 0.5;
  r4.w = r4.w * r4.w;
  r5.x = 0.5 * r4.w;
  r4.w = -r4.w * 0.5 + 1;
  r6.w = r10.x * r4.w + r5.x;
  r4.w = r6.w * r4.w;
  r5.x = r6.w * r5.x;
  if (noReceiveShadow == 0) {
    r6.w = dot(r6.xyz, sunConstants.wldDir.xyz);
    r6.w = cmp(0 >= abs(r6.w));
    if (r6.w != 0) {
      r7.z = 0;
    }
    if (r6.w == 0) {
      r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
      r9.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
      r9.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
      r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
      r6.w = -sunConstants.splitDepthOffset + r9.w;
      r6.w = -r6.w * 6.10351563e-05 + 1;
      r7.w = saturate(r6.w);
      r7.w = cmp(r6.w == r7.w);
      if (r7.w != 0) {
        r7.w = 0;
        r8.w = 0;
        while (true) {
          r10.y = cmp(r7.w >= 3);
          if (r10.y != 0) break;
          r10.y = (uint)r7.w;
          r10.zw = -sunConstants.splitPinTransform[r10.y].xy + r9.yz;
          r10.z = max(abs(r10.z), abs(r10.w));
          r8.w = sunConstants.splitPinTransform[r10.y].z * r10.z;
          r10.y = cmp(r8.w < 1);
          if (r10.y != 0) {
            break;
          }
          r7.w = 1 + r7.w;
          r8.w = 0;
        }
      } else {
        r7.w = 3;
        r8.w = 0;
      }
      r10.y = cmp(r7.w >= 3);
      if (r10.y != 0) {
        r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
        r16.xz = rcp(r15.xx);
        r16.y = -r16.z;
        r15.xyz = r9.yzy * r16.xyz + r15.yzy;
        r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
        r15.xyz = max(float3(0,0,0), r15.xyz);
        r15.xyz = min(r15.xyz, r16.xyz);
        r10.zw = sunConstants.sstLightingConstants.coordScale * r15.zy;
        r10.zw = floor(r10.zw);
        r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r10.w;
        r10.z = r10.w * sunConstants.sstLightingConstants.coordScale + r10.z;
        r10.z = (uint)r10.z;
        r10.z = (int)r10.z + (int10)sunConstants.sstLightingConstants.rootOffset;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.z, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r11.w = (int)r10.w & 0x40000000;
        r12.w = (uint)r10.w << 2;
        if (r11.w == 0) {
          r11.w = (int)r10.w & 0x01ffffff;
          r16.x = (int)r10.z + (int)r11.w;
          r10.z = (uint)r10.w >> 25;
          r10.z = (uint)r10.z;
          r15.xyz = r15.xyz * r10.zzz;
          r15.xyz = frac(r15.xyz);
          r15.xyz = float3(128,128,128) * r15.xyz;
          r15.xyz = (uint3)r15.xyz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r10.zw = (uint2)r15.zy >> int2(6,6);
          r11.w = (int)r16.z & 0xc0000000;
          r15.w = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r10.w = r10.w ? r16.z : r15.w;
          r15.w = (uint)r10.w >> 13;
          r10.z = r10.z ? r15.w : r10.w;
          r10.z = (int)r10.z & 8191;
          r17.x = (int)r10.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r16.y = 0;
          r17.y = 1;
          r17.xyz = r11.www ? r16.xyz : r17.xyz;
          r18.yz = r11.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
          r10.zw = (uint2)r15.zy >> (uint2)r18.yy;
          r10.zw = (int2)r10.zw & int2(1,1);
          r15.w = (int)r17.z & 0xc0000000;
          r16.w = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r10.w = r10.w ? r17.z : r16.w;
          r16.w = (uint)r10.w >> 13;
          r10.z = r10.z ? r16.w : r10.w;
          r10.z = (int)r10.z & 8191;
          r18.x = (int)r10.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r17.xyz = r15.www ? r17.xyz : r18.xzw;
          r16.xyz = r11.www ? r16.xyz : r17.xyz;
          r10.z = (int)r16.z & 0xc0000000;
          if (r10.z == 0) {
            r10.z = (int)-r16.y + 6;
            r10.zw = (uint2)r15.zy >> (uint2)r10.zz;
            r11.w = (int)r16.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r10.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
            r10.z = (int)r10.z * 10;
            r10.z = (uint)r11.w >> (uint)r10.z;
            r10.z = (int)r10.z & 1023;
            r17.x = (int)r10.z + (int)r16.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
          r17.w = samp0[]..swiz;
            r17.yz = (int2)r16.yy + int2(1,2);
            r10.z = (int)-r17.y + 6;
            r10.zw = (uint2)r15.zy >> (uint2)r10.zz;
            r11.w = (int)r17.w & 0xc0000000;
            r15.w = (int)r17.w | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r10.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
            r10.z = (int)r10.z * 10;
            r10.z = (uint)r15.w >> (uint)r10.z;
            r10.z = (int)r10.z & 1023;
            r18.x = (int)r10.z + (int)r17.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
          r18.z = samp0[]..swiz;
            r18.y = r17.z;
            r18.xyz = r11.www ? r17.xyw : r18.xyz;
            r10.z = (int)-r18.y + 6;
            r10.zw = (uint2)r15.zy >> (uint2)r10.zz;
            r15.w = (int)r18.z & 0xc0000000;
            r16.y = (int)r18.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r10.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
            r10.z = (int)r10.z * 10;
            r10.z = (uint)r16.y >> (uint)r10.z;
            r10.z = (int)r10.z & 1023;
            r19.x = (int)r10.z + (int)r18.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
          r19.y = samp0[]..swiz;
            r10.zw = r15.ww ? r18.xz : r19.xy;
            r16.xz = r11.ww ? r17.xw : r10.zw;
          }
          r10.z = (int)r16.z & 0xc0000000;
          if (r10.z == 0) {
            if (14 == 0) r10.w = 0; else if (14+15 < 32) {             r10.w = (uint)r16.z << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);            } else r10.w = (uint)r16.z >> 15;
            r10.w = (uint)r10.w;
            r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
            r10.w = 6.10388815e-05 * r10.w;
            r16.yw = (int2)r16.zz & int2(32767,536870912);
            r11.w = (uint)r16.y;
            r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
            r11.w = 3.05185094e-05 * r11.w;
            r15.w = (int)r15.y & 3;
            r15.w = (int)r15.w + (int)r16.x;
            r15.w = (int)r15.w + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
          r15.w = samp0[]..swiz;
            bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
            bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r15.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
            r15.x = (uint)r15.w >> (uint)r17.x;
            r15.x = (int)r15.x & 255;
            r15.x = (uint)r15.x;
            r15.x = r15.x * r11.w;
            r15.x = r15.x * 0.00392156886 + r10.w;
            r15.y = (int)r17.y + 1;
            if (1 == 0) r15.z = 0; else if (1+1 < 32) {             r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);            } else r15.z = (uint)r15.z >> 1;
            r15.y = (int)r15.z + (int)r15.y;
            r15.y = (int)r15.y + (int)r16.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
          r15.y = samp0[]..swiz;
            r15.y = (uint)r15.y >> (uint)r17.z;
            r15.y = (int)r15.y & 0x0000ffff;
            r15.y = (uint)r15.y;
            r11.w = r15.y * r11.w;
            r10.w = r11.w * 1.52590219e-05 + r10.w;
            r12.w = r16.w ? r15.x : r10.w;
          } else {
            r10.w = (int)r16.z & 0x80000000;
            r11.w = (int)r16.x + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
          r11.w = samp0[]..swiz;
            r10.w = r10.w ? r11.w : 0;
            r11.w = (uint)r16.z << 2;
            r15.x = (uint)r10.w >> 16;
            r15.x = f16tof32(r15.x);
            r10.w = (int)r10.w & 0x0000ffff;
            r10.w = f16tof32(r10.w);
            r11.w = r9.y * r15.x + r11.w;
            r10.w = r9.z * r10.w + r11.w;
            r12.w = r10.z ? r10.w : r12.w;
          }
        }
        r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
        r9.w = cmp(r12.w < r9.w);
        r7.z = r9.w ? 0 : 1;
      }
      if (r10.y == 0) {
        if (enableDitheredShadow == 0) {
          r9.w = (uint)r7.w;
          r10.yz = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
          r10.yz = sunConstants.splitPinTransform[r9.w].zz * r10.yz;
          r15.xy = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r9.w = (int16)sunConstants.splitArrayOffset;
          r15.z = r9.w + r7.w;
          r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
          r10.y = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
          r9.w = r10.y + r9.w;
          r9.w = saturate(-1 + r9.w);
          r10.y = r9.w * r9.w;
          r7.z = r10.y * r9.w;
        }
        if (enableDitheredShadow != 0) {
          r15.x = -r7.x;
          r9.w = (uint)r7.w;
          r7.w = 1 + r7.w;
          r7.w = min(2, r7.w);
          r7.w = (uint)r7.w;
          r8.w = 1 + -r8.w;
          r8.w = 28 * r8.w;
          r8.w = (uint)r8.w;
          r10.yz = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
          r10.yz = sunConstants.splitPinTransform[r9.w].zz * r10.yz;
          r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r9.yz = -sunConstants.splitPinTransform[r7.w].xy + r9.yz;
          r9.yz = sunConstants.splitPinTransform[r7.w].zz * r9.yz;
          r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r15.y = r8.x;
          r15.z = r7.x;
          r10.w = 0;
          r11.w = 0;
          while (true) {
            r12.w = cmp((uint)r11.w >= 8);
            if (r12.w != 0) break;
            r12.w = cmp((uint)r8.w < (uint)r11.w);
            r16.xy = r12.ww ? r9.yz : r10.yz;
            r15.w = r12.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r9.w].w;
            r12.w = r12.w ? r7.w : r9.w;
            r17.x = dot(icb[r11.w+0].yx, r15.xy);
            r17.y = dot(icb[r11.w+0].yx, r15.yz);
            r16.xy = r17.xy * r15.ww + r16.xy;
            r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
            r16.z = (uint)r12.w;
            r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r6.w).x;
            r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
            r12.w = r15.w + r12.w;
            r12.w = saturate(-1 + r12.w);
            r10.w = r12.w * 0.125 + r10.w;
            r11.w = (int)r11.w + 1;
          }
          r6.w = r10.w * r10.w;
          r7.z = r6.w * r10.w;
        }
      }
    }
  } else {
    r7.z = 1;
  }
  r6.w = dot(r6.xyz, sunConstants.wldDir.xyz);
  r7.w = cmp(0 < abs(r6.w));
  if (r7.w != 0) {
    r7.w = cmp(0 < r7.z);
    if (r7.w != 0) {
      r7.w = sunConstants.specScale * r3.y;
      r7.w = 0.25 * r7.w;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v6.xyz;
        r15.w = 1;
        r8.w = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r9.y = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.x = frac(r8.w);
        r15.y = frac(r9.y);
        r8.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r8.w;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      if (noReceiveShadow == 0) {
        r8.w = viewmodelSunShadowRaw >> 16;
        r10.y = cmp(0 < (uint)r8.w);
        r10.y = r2.w ? r10.y : 0;
        if (r10.y != 0) {
          r8.w = (int)r8.w + numLights;
          r8.w = (int)r8.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.y, r8.w, l(52), t12.xxxx
        r10.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r10.z = abs(r6.w) * -0.200000003 + 0.400000006;
          r10.w = cmp(r6.w < 0);
          r10.z = r10.w ? -r10.z : r10.z;
          r19.xyz = r6.xyz * r10.zzz + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r10.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.zw = r10.zw + r18.zw;
          r10.zw = r10.zw * r18.xy;
          r15.xy = r10.yy / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r10.zw >= r15.zw);
          r15.xy = cmp(r15.xy >= r10.zw);
          r15.xy = (int2)r15.xy | (int2)r15.zw;
          r11.w = (int)r15.y | (int)r15.x;
          if (r11.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(28), t12.xxxx
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r8.w, l(164), t12.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
            r8.w = dot(r15.xyzw, r19.xyzw);
            r10.zw = saturate(r10.zw);
            r15.xy = r10.zw * r17.xz + r17.yw;
            r8.w = r8.w + r16.x;
            r8.w = r8.w / r16.y;
            r8.w = max(6.10351563e-05, r8.w);
            r10.z = (int)r11.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r7.x;
              r17.z = (uint)r10.z;
              r16.y = r8.x;
              r16.z = r7.x;
              r10.w = 0;
              r11.w = 0;
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r18.x = dot(icb[r11.w+0].yx, r16.xy);
                r18.y = dot(icb[r11.w+0].yx, r16.yz);
                r17.xy = r18.xy * r10.yy + r15.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.w).x;
                r10.w = r12.w * 0.125 + r10.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r15.z = (uint)r10.z;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
            }
            r8.w = r10.w * r10.w;
            r8.w = r8.w * r10.w;
          } else {
            r8.w = 1;
          }
          r7.z = r8.w * r7.z;
        } else {
          r8.w = viewmodelSunShadowRaw & 0x0000ffff;
          r10.y = cmp(0 < (uint)r8.w);
          r10.z = ~(int)r2.w;
          r10.y = r10.y ? r10.z : 0;
          if (r10.y != 0) {
            r8.w = (int)r8.w + numLights;
            r8.w = (int)r8.w + -1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.y, r8.w, l(52), t12.xxxx
          r10.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(68), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(84), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(132), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(148), t12.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
            r10.z = abs(r6.w) * -0.200000003 + 0.400000006;
            r10.w = cmp(r6.w < 0);
            r10.z = r10.w ? -r10.z : r10.z;
            r19.xyz = r6.xyz * r10.zzz + v6.xyz;
            r19.w = 1;
            r15.x = dot(r15.xyzw, r19.xyzw);
            r15.y = dot(r16.xyzw, r19.xyzw);
            r10.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
            r10.zw = r10.zw + r18.zw;
            r10.zw = r10.zw * r18.xy;
            r15.xy = r10.yy / r17.xz;
            r15.zw = float2(1,1) + -r15.xy;
            r15.zw = cmp(r10.zw >= r15.zw);
            r15.xy = cmp(r15.xy >= r10.zw);
            r15.xy = (int2)r15.xy | (int2)r15.zw;
            r11.w = (int)r15.y | (int)r15.x;
            if (r11.w == 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(28), t12.xxxx
            r11.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(100), t12.xyzw
            r15.x = samp0[]..swiz;
            r15.y = samp0[]..swiz;
            r15.z = samp0[]..swiz;
            r15.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r8.w, l(164), t12.xyxx
            r16.x = samp0[]..swiz;
            r16.y = samp0[]..swiz;
              r8.w = dot(r15.xyzw, r19.xyzw);
              r10.zw = saturate(r10.zw);
              r15.xy = r10.zw * r17.xz + r17.yw;
              r8.w = r8.w + r16.x;
              r8.w = r8.w / r16.y;
              r8.w = max(6.10351563e-05, r8.w);
              r10.z = (int)r11.w & 0x0000ffff;
              if (enableDitheredShadow != 0) {
                r16.x = -r7.x;
                r17.z = (uint)r10.z;
                r16.y = r8.x;
                r16.z = r7.x;
                r10.w = 0;
                r11.w = 0;
                while (true) {
                  r12.w = cmp((int)r11.w >= 8);
                  if (r12.w != 0) break;
                  r18.x = dot(icb[r11.w+0].yx, r16.xy);
                  r18.y = dot(icb[r11.w+0].yx, r16.yz);
                  r17.xy = r18.xy * r10.yy + r15.xy;
                  r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.w).x;
                  r10.w = r12.w * 0.125 + r10.w;
                  r11.w = (int)r11.w + 1;
                }
              } else {
                r15.z = (uint)r10.z;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
              }
              r8.w = r10.w * r10.w;
              r8.w = r8.w * r10.w;
            } else {
              r8.w = 1;
            }
            r7.z = r8.w * r7.z;
          }
        }
      }
      r8.w = -r10.x * 0.5 + 1;
      r8.w = -abs(r6.w) * r8.w + 1;
      r8.w = r8.w * r8.w;
      r8.w = -r8.w * 0.620000005 + 0.620000005;
      r8.w = r8.w + -abs(r6.w);
      r8.w = r3.w * r8.w + abs(r6.w);
      r8.w = r8.w * r7.z;
      r10.y = cmp(0 < r6.w);
      r15.xyz = r8.www * r9.yzw + r14.xyz;
      r6.w = saturate(r6.w);
      r16.xyz = -v6.xyz * r0.xxx + sunConstants.wldDir.xyz;
      r0.x = dot(r16.xyz, r16.xyz);
      r0.x = rsqrt(r0.x);
      r16.xyz = r16.xyz * r0.xxx;
      r0.x = dot(r16.xyz, r0.yzw);
      r8.w = dot(r6.xyz, r16.xyz);
      r10.z = abs(r8.w) * r3.y + -abs(r8.w);
      r8.w = abs(r8.w) * r10.z + 1;
      r10.z = r6.w * r4.w + r5.x;
      r8.w = r8.w * r8.w;
      r8.w = r8.w * r10.z;
      r8.w = rcp(r8.w);
      r6.w = r6.w * r7.w;
      r6.w = r8.w * r6.w;
      r6.w = r6.w * r7.z;
      r16.xyz = r6.www * r9.yzw + r2.xyz;
      r0.x = saturate(1 + -r0.x);
      r7.z = r0.x * r0.x;
      r7.z = r7.z * r7.z;
      r0.x = r7.z * r0.x;
      r0.x = r6.w * r0.x;
      r17.xyz = r0.xxx * r9.zwy + r13.xyz;
      r15.w = r17.z;
      r14.w = r13.z;
      r14.xyzw = r10.yyyy ? r15.xyzw : r14.xyzw;
      r17.zw = r16.xy;
      r13.zw = r2.xy;
      r15.xyzw = r10.yyyy ? r17.xyzw : r13.xyzw;
      r2.z = r10.y ? r16.z : r2.z;
      r13.z = r14.w;
      r13.xy = r15.xy;
      r2.xy = r15.zw;
    }
  }
  r0.x = ~(int)r2.w;
  r6.w = -r10.x * 0.5 + 1;
  r10.x = -r7.x;
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v6.xyz;
  r17.w = 1;
  r18.w = 1;
  r10.z = r7.x;
  r19.w = 1;
  r20.z = 1;
  r21.w = 1;
  r10.yw = r8.xx;
  r7.y = r10.w;
  r22.w = 1;
  r8.y = r10.x;
  r8.z = r7.x;
  r23.w = 1;
  r24.x = r8.x;
  r24.y = r10.x;
  r24.z = r7.x;
  r25.x = r8.x;
  r25.y = r10.x;
  r25.z = r7.x;
  r26.x = r8.x;
  r26.y = r10.x;
  r26.z = r7.x;
  r9.yzw = r14.xyz;
  r27.xyz = r13.zxy;
  r28.xyz = r2.xyz;
  r7.z = enableDitheredShadow;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= numLights);
    if (r8.w != 0) break;
    r15.z = (uint)r7.w >> 5;
    r16.xyz = (int3)r12.xyz + (int3)r15.xyz;
    r8.w = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r9.yzw;
    r29.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r11.w = r7.z;
    r12.w = r8.w;
    while (true) {
      if (r12.w == 0) break;
      r13.w = firstbitlow((uint)r12.w);
      r14.w = 1 << (int)r13.w;
      r15.z = (int)r12.w & (int)r14.w;
      if (r15.z != 0) {
        r12.w = (int)r12.w ^ (int)r14.w;
        r13.w = (int)r7.w + (int)r13.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r13.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v6.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r14.w = r31.y ? r31.x : 0;
        r14.w = r31.z ? r14.w : 0;
        if (r14.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r14.w = 0; else if (3+24 < 32) {           r14.w = (uint)r32.w << (32-(3 + 24)); r14.w = (uint)r14.w >> (32-3);          } else r14.w = (uint)r32.w >> 24;
          switch (r14.w) {
            case 4 :            r14.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v6.xyz + r39.xyz;
            r15.z = dot(r38.xyz, r40.xyz);
            r15.w = saturate(-r15.z / r37.x);
            r41.xyz = r15.www * r38.xyz + r39.xyz;
            r41.xyz = r14.www ? r41.xyz : r31.yzw;
            r41.xyz = -v6.xyz + r41.xyz;
            r20.w = dot(r41.xyz, r41.xyz);
            r24.w = rsqrt(r20.w);
            r41.xyz = r41.xyz * r24.www;
            r24.w = dot(r6.xyz, r41.xyz);
            r25.w = cmp(0 < abs(r24.w));
            if (r25.w != 0) {
              r25.w = sqrt(r20.w);
              r26.w = r34.x * r34.x;
              r20.w = r26.w / r20.w;
              r20.w = min(1, r20.w);
              r41.xy = saturate(r25.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r20.w = r41.x * r20.w;
              r20.w = r20.w * r41.y;
              r25.w = cmp(0 < r20.w);
              if (r25.w != 0) {
                if (3 == 0) r25.w = 0; else if (3+27 < 32) {                 r25.w = (uint)r32.w << (32-(3 + 27)); r25.w = (uint)r25.w >> (32-3);                } else r25.w = (uint)r32.w >> 27;
                r25.w = cmp((int)r25.w != 1);
                if (r25.w != 0) {
                  r25.w = abs(r24.w) * -0.200000003 + 0.400000006;
                  r26.w = cmp(r24.w < 0);
                  r25.w = r26.w ? -r25.w : r25.w;
                  r41.xyz = r6.xyz * r25.www + v6.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r25.w = max(abs(r41.y), abs(r41.z));
                  r25.w = max(abs(r41.x), r25.w);
                  r25.w = r36.x / r25.w;
                  r25.w = r25.w + r36.y;
                  r26.w = dot(r41.xyz, r41.xyz);
                  r26.w = rsqrt(r26.w);
                  r25.w = max(6.10351563e-05, r25.w);
                  r27.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r27.w;
                  r27.w = 0;
                  r28.w = 0;
                  while (true) {
                    r29.w = cmp((int)r28.w >= 8);
                    if (r29.w != 0) break;
                    r43.y = dot(icb[r28.w+0].yx, r10.xy);
                    r43.z = dot(icb[r28.w+0].yx, r10.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r9.x;
                    r43.w = r43.y * r3.x;
                    r42.xyz = r41.xyz * r26.www + r43.xzw;
                    r29.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r25.w).x;
                    r27.w = r29.w * 0.125 + r27.w;
                    r28.w = (int)r28.w + 1;
                  }
                } else {
                  r27.w = 1;
                }
                r20.w = r27.w * r20.w;
                r25.w = cmp(0 < r20.w);
                if (r25.w != 0) {
                  r25.w = r32.x * r3.y;
                  r25.w = 0.25 * r25.w;
                  r26.w = dot(r38.xyz, r11.xyz);
                  r28.w = dot(r11.xyz, r40.xyz);
                  r29.w = -r26.w * r26.w + r37.x;
                  r15.z = r26.w * r28.w + -r15.z;
                  r15.z = saturate(r15.z / r29.w);
                  r26.w = r29.w / r37.x;
                  r26.w = 10 * r26.w;
                  r26.w = min(1, r26.w);
                  r15.z = r15.z + -r15.w;
                  r15.z = r26.w * r15.z + r15.w;
                  r38.xyz = r15.zzz * r38.xyz + r39.xyz;
                  r38.xyz = r14.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v6.xyz + r38.xyz;
                  r14.w = dot(r38.xyz, r38.xyz);
                  r14.w = rsqrt(r14.w);
                  r39.xyz = r38.xyz * r14.www;
                  if (4 == 0) r15.z = 0; else if (4+16 < 32) {                   r15.z = (uint)r32.w << (32-(4 + 16)); r15.z = (uint)r15.z >> (32-4);                  } else r15.z = (uint)r32.w >> 16;
                  r15.w = cmp(0 < (uint)r15.z);
                  r15.w = r2.w ? r15.w : 0;
                  if (r15.w != 0) {
                    r15.z = (int)r15.z + numLights;
                    r15.z = (int)r15.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r15.z, l(52), t12.xxxx
                  r15.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.z, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.z, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r26.w = abs(r24.w) * -0.200000003 + 0.400000006;
                    r28.w = cmp(r24.w < 0);
                    r26.w = r28.w ? -r26.w : r26.w;
                    r18.xyz = r6.xyz * r26.www + v6.xyz;
                    r26.w = dot(r40.xyzw, r18.xyzw);
                    r28.w = dot(r41.xyzw, r18.xyzw);
                    r29.w = cmp(r28.w < r26.w);
                    if (r29.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.z, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.z, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r15.z, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r15.z, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r15.z, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r18.xyzw);
                      r40.y = dot(r41.xyzw, r18.xyzw);
                      r18.xy = r40.xy / r28.ww;
                      r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r18.xy = r18.xy + r43.zw;
                      r18.xy = r18.xy * r43.xy;
                      r40.xy = r15.ww / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r18.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r18.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r18.z = (int)r40.y | (int)r40.x;
                      r18.xy = saturate(r18.xy);
                      r40.xy = r18.xy * r42.xz + r42.yw;
                      r18.x = r44.y * r28.w;
                      r18.y = r44.x * r28.w + r26.w;
                      r18.x = r18.y / r18.x;
                    } else {
                      r18.z = -1;
                    }
                    r18.y = (int)r29.w | (int)r18.z;
                    if (r18.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(28), t12.xxxx
                    r15.z = samp0[]..swiz;
                      r18.x = max(6.10351563e-05, r18.x);
                      r15.z = (int)r15.z & 0x0000ffff;
                      if (r11.w != 0) {
                        r41.z = (uint)r15.z;
                        r18.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r18.z >= 8);
                          if (r26.w != 0) break;
                          r42.x = dot(icb[r18.z+0].yx, r10.xw);
                          r42.y = dot(icb[r18.z+0].xy, r7.xy);
                          r41.xy = r42.xy * r15.ww + r40.xy;
                          r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r18.x).x;
                          r18.y = r26.w * 0.125 + r18.y;
                          r18.z = (int)r18.z + 1;
                        }
                      } else {
                        r40.z = (uint)r15.z;
                        r18.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                      }
                      r15.z = r18.y * r18.y;
                      r15.z = r15.z * r18.y;
                    } else {
                      r15.z = 1;
                    }
                    r20.w = r20.w * r15.z;
                  } else {
                    if (4 == 0) r15.z = 0; else if (4+20 < 32) {                     r15.z = (uint)r32.w << (32-(4 + 20)); r15.z = (uint)r15.z >> (32-4);                    } else r15.z = (uint)r32.w >> 20;
                    r15.w = cmp(0 < (uint)r15.z);
                    r15.w = r15.w ? r0.x : 0;
                    if (r15.w != 0) {
                      r15.z = (int)r15.z + numLights;
                      r15.z = (int)r15.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r15.z, l(52), t12.xxxx
                    r15.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.z, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.z, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r18.x = abs(r24.w) * -0.200000003 + 0.400000006;
                      r18.z = cmp(r24.w < 0);
                      r18.x = r18.z ? -r18.x : r18.x;
                      r19.xyz = r6.xyz * r18.xxx + v6.xyz;
                      r18.x = dot(r40.xyzw, r19.xyzw);
                      r18.z = dot(r41.xyzw, r19.xyzw);
                      r26.w = cmp(r18.z < r18.x);
                      if (r26.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.z, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.z, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r15.z, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r15.z, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r15.z, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r19.xyzw);
                        r40.y = dot(r41.xyzw, r19.xyzw);
                        r19.xy = r40.xy / r18.zz;
                        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r19.xy = r19.xy + r43.zw;
                        r19.xy = r19.xy * r43.xy;
                        r40.xy = r15.ww / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r19.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r19.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r19.z = (int)r40.y | (int)r40.x;
                        r19.xy = saturate(r19.xy);
                        r40.xy = r19.xy * r42.xz + r42.yw;
                        r19.x = r44.y * r18.z;
                        r18.x = r44.x * r18.z + r18.x;
                        r18.x = r18.x / r19.x;
                      } else {
                        r19.z = -1;
                      }
                      r18.z = (int)r26.w | (int)r19.z;
                      if (r18.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(28), t12.xxxx
                      r15.z = samp0[]..swiz;
                        r18.x = max(6.10351563e-05, r18.x);
                        r15.z = (int)r15.z & 0x0000ffff;
                        if (r11.w != 0) {
                          r19.z = (uint)r15.z;
                          r18.z = 0;
                          r26.w = 0;
                          while (true) {
                            r28.w = cmp((int)r26.w >= 8);
                            if (r28.w != 0) break;
                            r41.x = dot(icb[r26.w+0].xy, r8.xy);
                            r41.y = dot(icb[r26.w+0].yx, r8.xz);
                            r19.xy = r41.xy * r15.ww + r40.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r18.x).x;
                            r18.z = r19.x * 0.125 + r18.z;
                            r26.w = (int)r26.w + 1;
                          }
                        } else {
                          r40.z = (uint)r15.z;
                          r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                        }
                        r15.z = r18.z * r18.z;
                        r15.z = r15.z * r18.z;
                      } else {
                        r15.z = 1;
                      }
                      r20.w = r20.w * r15.z;
                    }
                  }
                  r15.z = -abs(r24.w) * r6.w + 1;
                  r15.z = r15.z * r15.z;
                  r15.z = -r15.z * 0.620000005 + 0.620000005;
                  r15.z = r15.z + -abs(r24.w);
                  r15.z = r3.w * r15.z + abs(r24.w);
                  r15.z = r15.z * r20.w;
                  r32.x = r31.x;
                  r15.w = cmp(0 < r24.w);
                  r19.xyz = r15.zzz * r32.xyz + r16.xyz;
                  r15.z = saturate(dot(r6.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r14.www + r0.yzw;
                  r14.w = dot(r38.xyz, r38.xyz);
                  r14.w = rsqrt(r14.w);
                  r38.xyz = r38.xyz * r14.www;
                  r14.w = dot(r38.xyz, r0.yzw);
                  r18.x = dot(r6.xyz, r38.xyz);
                  r24.w = abs(r18.x) * r3.y + -abs(r18.x);
                  r18.x = abs(r18.x) * r24.w + 1;
                  r24.w = r15.z * r4.w + r5.x;
                  r18.x = r18.x * r18.x;
                  r18.x = r18.x * r24.w;
                  r18.x = rcp(r18.x);
                  r15.z = r15.z * r25.w;
                  r15.z = r18.x * r15.z;
                  r15.z = r15.z * r20.w;
                  r38.xyz = r15.zzz * r32.xyz + r30.xyz;
                  r14.w = saturate(1 + -r14.w);
                  r18.x = r14.w * r14.w;
                  r18.x = r18.x * r18.x;
                  r14.w = r18.x * r14.w;
                  r14.w = r15.z * r14.w;
                  r39.xyz = r14.www * r32.xyz + r29.xyz;
                  r16.xyz = r15.www ? r19.xyz : r16.xyz;
                  r29.xyz = r15.www ? r39.xyz : r29.xyz;
                  r30.xyz = r15.www ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r34.zw;
            r19.z = r35.w;
            r19.xyz = -v6.xyz + r19.xyz;
            r14.w = dot(r19.xyz, r19.xyz);
            r14.w = rsqrt(r14.w);
            r38.xyz = r19.xyz * r14.www;
            r15.z = dot(r6.xyz, r38.xyz);
            r15.w = cmp(0 < abs(r15.z));
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r15.w = dot(r40.xyzw, r17.xyzw);
              r18.x = cmp(r15.w < 1);
              if (r18.x != 0) {
                r41.xyz = float3(1,1,1);
                r18.x = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r13.w, l(236), t12.xxxx
              r20.w = samp0[]..swiz;
                r45.xyz = -v6.xyz + r31.yzw;
                r24.w = r34.x * r34.x;
                r25.w = dot(r45.xyz, r45.xyz);
                r24.w = r24.w / r25.w;
                r24.w = min(1, r24.w);
                r33.xy = saturate(r15.ww * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r24.w = r33.x * r24.w;
                r24.w = r24.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r17.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r17.xyzw);
                r20.xy = r33.xy / r15.ww;
                r15.w = cmp(r42.w < 0.00048828125);
                if (r15.w != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r20.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r15.w = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r20.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r43.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r44.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r25.w = r43.z * r33.x;
                  r26.w = r43.w * r33.y + -1;
                  r25.w = r43.w * r33.y + -r25.w;
                  r25.w = saturate(r26.w / r25.w);
                  r26.w = r25.w * r25.w;
                  r25.w = r25.w * -2 + 3;
                  r15.w = r26.w * r25.w;
                }
                r18.x = r24.w * r15.w;
                r15.w = (int)r20.w & 255;
                if (r15.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r13.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r20.w = dot(r44.yzw, r20.xyz);
                  r20.x = dot(r33.xyz, r20.xyz);
                  r33.xy = frac(r20.wx);
                  r15.w = (int)r15.w + -1;
                  r33.z = (uint)r15.w;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r20.xyw = r31.xyz * r41.xyz;
              r15.w = cmp(0 < r18.x);
              if (r15.w != 0) {
                if (3 == 0) r15.w = 0; else if (3+27 < 32) {                 r15.w = (uint)r32.w << (32-(3 + 27)); r15.w = (uint)r15.w >> (32-3);                } else r15.w = (uint)r32.w >> 27;
                r15.w = cmp((int)r15.w != 1);
                if (r15.w != 0) {
                  r15.w = abs(r15.z) * -0.200000003 + 0.400000006;
                  r24.w = cmp(r15.z < 0);
                  r15.w = r24.w ? -r15.w : r15.w;
                  r21.xyz = r6.xyz * r15.www + v6.xyz;
                  r38.xyz = r37.xyz;
                  r15.w = dot(r38.xyzw, r21.xyzw);
                  r24.w = dot(r40.xyzw, r21.xyzw);
                  r25.w = cmp(r24.w >= r15.w);
                  if (r25.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r13.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r31.x = dot(r35.xyzw, r21.xyzw);
                    r37.xyz = r36.yzw;
                    r31.y = dot(r37.xyzw, r21.xyzw);
                    r21.xy = r31.xy / r24.ww;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r21.xy * r39.zw + r39.xy;
                    r13.w = r15.w / r24.w;
                    r13.w = max(6.10351563e-05, r13.w);
                    r15.w = (int)r32.w & 0x0000ffff;
                    if (r11.w != 0) {
                      r31.z = (uint)r15.w;
                      r24.w = 0;
                      r25.w = 0;
                      while (true) {
                        r26.w = cmp((int)r25.w >= 8);
                        if (r26.w != 0) break;
                        r33.x = dot(icb[r25.w+0].xy, r24.xy);
                        r33.y = dot(icb[r25.w+0].yx, r24.xz);
                        r31.xy = r33.xy * r34.yy + r21.xy;
                        r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r13.w).x;
                        r24.w = r26.w * 0.125 + r24.w;
                        r25.w = (int)r25.w + 1;
                      }
                    } else {
                      r21.z = (uint)r15.w;
                      r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r13.w).x;
                    }
                    r13.w = r24.w * r24.w;
                    r13.w = r13.w * r24.w;
                  } else {
                    r13.w = 1;
                  }
                } else {
                  r13.w = 1;
                }
                r13.w = r18.x * r13.w;
                r15.w = cmp(0 < r13.w);
                if (r15.w != 0) {
                  r15.w = r32.x * r3.y;
                  r15.w = 0.25 * r15.w;
                  if (4 == 0) r18.x = 0; else if (4+16 < 32) {                   r18.x = (uint)r32.w << (32-(4 + 16)); r18.x = (uint)r18.x >> (32-4);                  } else r18.x = (uint)r32.w >> 16;
                  r21.x = cmp(0 < (uint)r18.x);
                  r21.x = r2.w ? r21.x : 0;
                  if (r21.x != 0) {
                    r18.x = (int)r18.x + numLights;
                    r18.x = (int)r18.x + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r18.x, l(52), t12.xxxx
                  r21.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r18.x, l(68), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r18.x, l(84), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r18.x, l(100), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r18.x, l(116), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r18.x, l(132), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r18.x, l(148), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                    r21.y = abs(r15.z) * -0.200000003 + 0.400000006;
                    r21.z = cmp(r15.z < 0);
                    r21.y = r21.z ? -r21.y : r21.y;
                    r22.xyz = r6.xyz * r21.yyy + v6.xyz;
                    r31.x = dot(r31.xyzw, r22.xyzw);
                    r31.y = dot(r33.xyzw, r22.xyzw);
                    r21.y = dot(r34.xyzw, r22.xyzw);
                    r21.z = dot(r35.xyzw, r22.xyzw);
                    r22.x = cmp(r21.z < r21.y);
                    r22.yz = r31.xy / r21.zz;
                    r22.yz = r22.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.yz = r22.yz + r37.zw;
                    r22.yz = r22.yz * r37.xy;
                    r31.xy = r21.xx / r36.xz;
                    r31.zw = float2(1,1) + -r31.xy;
                    r31.zw = cmp(r22.yz >= r31.zw);
                    r31.xy = cmp(r31.xy >= r22.yz);
                    r31.xy = (int2)r31.xy | (int2)r31.zw;
                    r25.w = (int)r31.y | (int)r31.x;
                    r22.x = (int)r22.x | (int)r25.w;
                    if (r22.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r18.x, l(28), t12.xxxx
                    r22.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xy, r18.x, l(164), t12.xyxx
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                      r22.yz = saturate(r22.yz);
                      r32.xy = r22.yz * r36.xz + r36.yw;
                      r18.x = r31.y * r21.z;
                      r21.y = r31.x * r21.z + r21.y;
                      r18.x = r21.y / r18.x;
                      r18.x = max(6.10351563e-05, r18.x);
                      r21.y = r22.x ? 0.000000 : 0;
                      if (r11.w != 0) {
                        r22.z = (uint)r21.y;
                        r21.z = 0;
                        r25.w = 0;
                        while (true) {
                          r26.w = cmp((int)r25.w >= 8);
                          if (r26.w != 0) break;
                          r31.x = dot(icb[r25.w+0].xy, r25.xy);
                          r31.y = dot(icb[r25.w+0].yx, r25.xz);
                          r22.xy = r31.xy * r21.xx + r32.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r18.x).x;
                          r21.z = r22.x * 0.125 + r21.z;
                          r25.w = (int)r25.w + 1;
                        }
                      } else {
                        r32.z = (uint)r21.y;
                        r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r18.x).x;
                      }
                      r18.x = r21.z * r21.z;
                      r18.x = r18.x * r21.z;
                    } else {
                      r18.x = 1;
                    }
                    r13.w = r18.x * r13.w;
                  } else {
                    if (4 == 0) r18.x = 0; else if (4+20 < 32) {                     r18.x = (uint)r32.w << (32-(4 + 20)); r18.x = (uint)r18.x >> (32-4);                    } else r18.x = (uint)r32.w >> 20;
                    r21.x = cmp(0 < (uint)r18.x);
                    r21.x = r21.x ? r0.x : 0;
                    if (r21.x != 0) {
                      r18.x = (int)r18.x + numLights;
                      r18.x = (int)r18.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r18.x, l(52), t12.xxxx
                    r21.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r18.x, l(68), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r18.x, l(84), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r18.x, l(100), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r18.x, l(116), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r18.x, l(132), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r18.x, l(148), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                      r21.y = abs(r15.z) * -0.200000003 + 0.400000006;
                      r22.x = cmp(r15.z < 0);
                      r21.y = r22.x ? -r21.y : r21.y;
                      r23.xyz = r6.xyz * r21.yyy + v6.xyz;
                      r22.x = dot(r31.xyzw, r23.xyzw);
                      r22.y = dot(r32.xyzw, r23.xyzw);
                      r21.y = dot(r33.xyzw, r23.xyzw);
                      r22.z = dot(r34.xyzw, r23.xyzw);
                      r23.x = cmp(r22.z < r21.y);
                      r22.xy = r22.xy / r22.zz;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r36.zw;
                      r22.xy = r22.xy * r36.xy;
                      r23.yz = r21.xx / r35.xz;
                      r31.xy = float2(1,1) + -r23.yz;
                      r31.xy = cmp(r22.xy >= r31.xy);
                      r23.yz = cmp(r23.yz >= r22.xy);
                      r23.yz = (int2)r23.yz | (int2)r31.xy;
                      r23.y = (int)r23.z | (int)r23.y;
                      r23.x = (int)r23.x | (int)r23.y;
                      if (r23.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r18.x, l(28), t12.xxxx
                      r23.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.yz, r18.x, l(164), t12.xxyx
                      r23.y = samp0[]..swiz;
                      r23.z = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r31.xy = r22.xy * r35.xz + r35.yw;
                        r18.x = r23.z * r22.z;
                        r21.y = r23.y * r22.z + r21.y;
                        r18.x = r21.y / r18.x;
                        r18.x = max(6.10351563e-05, r18.x);
                        r21.y = r23.x ? 0.000000 : 0;
                        if (r11.w != 0) {
                          r22.z = (uint)r21.y;
                          r23.xy = float2(0,0);
                          while (true) {
                            r23.z = cmp((int)r23.y >= 8);
                            if (r23.z != 0) break;
                            r32.x = dot(icb[r23.y+0].xy, r26.xy);
                            r32.y = dot(icb[r23.y+0].yx, r26.xz);
                            r22.xy = r32.xy * r21.xx + r31.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r18.x).x;
                            r23.x = r22.x * 0.125 + r23.x;
                            r23.y = (int)r23.y + 1;
                          }
                        } else {
                          r31.z = (uint)r21.y;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r18.x).x;
                        }
                        r18.x = r23.x * r23.x;
                        r18.x = r18.x * r23.x;
                      } else {
                        r18.x = 1;
                      }
                      r13.w = r18.x * r13.w;
                    }
                  }
                  r18.x = -abs(r15.z) * r6.w + 1;
                  r18.x = r18.x * r18.x;
                  r18.x = -r18.x * 0.620000005 + 0.620000005;
                  r18.x = r18.x + -abs(r15.z);
                  r18.x = r3.w * r18.x + abs(r15.z);
                  r18.x = r18.x * r13.w;
                  r21.x = cmp(0 < r15.z);
                  r22.xyz = r18.xxx * r20.xyw + r16.xyz;
                  r15.z = saturate(r15.z);
                  r19.xyz = r19.xyz * r14.www + r0.yzw;
                  r14.w = dot(r19.xyz, r19.xyz);
                  r14.w = rsqrt(r14.w);
                  r19.xyz = r19.xyz * r14.www;
                  r14.w = dot(r19.xyz, r0.yzw);
                  r18.x = dot(r6.xyz, r19.xyz);
                  r19.x = abs(r18.x) * r3.y + -abs(r18.x);
                  r18.x = abs(r18.x) * r19.x + 1;
                  r19.x = r15.z * r4.w + r5.x;
                  r18.x = r18.x * r18.x;
                  r18.x = r18.x * r19.x;
                  r18.x = rcp(r18.x);
                  r15.z = r15.z * r15.w;
                  r15.z = r18.x * r15.z;
                  r13.w = r15.z * r13.w;
                  r19.xyz = r13.www * r20.xyw + r30.xyz;
                  r14.w = saturate(1 + -r14.w);
                  r15.z = r14.w * r14.w;
                  r15.z = r15.z * r15.z;
                  r14.w = r15.z * r14.w;
                  r13.w = r14.w * r13.w;
                  r20.xyw = r13.www * r20.xyw + r29.xyz;
                  r16.xyz = r21.xxx ? r22.xyz : r16.xyz;
                  r29.xyz = r21.xxx ? r20.xyw : r29.xyz;
                  r30.xyz = r21.xxx ? r19.xyz : r30.xyz;
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
    r9.yzw = r16.xyz;
    r27.xyz = r29.xyz;
    r28.xyz = r30.xyz;
    r7.w = (int)r7.w + 32;
  }
  r0.xyz = float3(0.959999979,0.959999979,0.959999979) * r27.xyz;
  r0.xyz = r28.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r0.xyz;
  r0.xyz = r9.yzw * r4.xyz + r0.xyz;
  r0.w = 1 + -coolingFactor;
  r0.w = r1.z * r0.w;
  r1.xyw = r1.xyw * r3.zzz + -r5.yzw;
  r1.xyw = r0.www * r1.xyw + r5.yzw;
  r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = max(9.99999975e-05, r0.w);
  r0.w = max(relHDRExposure.x, r0.w);
  r2.xyz = r1.xyw * r0.www;
  r1.xyw = relativeHDR ? r2.xyz : r1.xyw;
  r0.xyz = r1.xyw + r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v6.xyz, v6.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyw = v6.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r2.x = cmp(0 < fogConstants.blendAmount);
    if (r2.x != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r2.z = cmp(0.00999999978 < abs(v6.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r2.xy;
      r2.xy = r2.zz ? r3.xy : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r3.xyz + r2.xzw;
    } else {
      r2.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.x = cmp(0.00999999978 < abs(v6.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r3.z = -1.44269502 * r3.y;
      r3.z = exp2(r3.z);
      r3.z = 1 + -r3.z;
      r3.y = r3.z / r3.y;
      r3.y = r3.y * r2.w;
      r2.w = r3.x ? r3.y : r2.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
      r2.xyz = exp2(r3.xyz);
    }
    r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r1.x = dot(fogConstants.wldSunFogDir.xyz, -r1.xyw);
    r1.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.w = fogConstants.atmosphereMieSchlickK * -r1.x + 1;
    r1.w = r1.w * r1.w;
    r1.w = 12.566371 * r1.w;
    r1.y = r1.y / r1.w;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r1.y * r0.w;
    r1.x = saturate(r1.x);
    r1.x = r1.x * r1.x + 1;
    r1.x = r1.x * 0.0596831031 + -1;
    r1.x = fogConstants.atmospheresunstrength * r1.x + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r1.xyw = r1.xxx * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r1.xyw = fogConstants.atmosphereInScatterIntensity * r1.xyw;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyw = r3.xyz * r1.xyw;
    r1.xyw = r0.xyz * r2.xyz + r1.xyw;
  } else {
    r0.w = fogConstants.heightFalloff * v6.z;
    r2.x = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r2.y = cmp(abs(r0.w) < 9.99999975e-05);
    r2.z = min(64, r2.x);
    r2.z = 1.44269502 * r2.z;
    r2.z = exp2(r2.z);
    r2.w = saturate(fogConstants.K0b);
    r3.x = cmp(r2.x < 0);
    r2.x = 1 + r2.x;
    r2.x = r3.x ? r2.z : r2.x;
    r2.x = -fogConstants.K0b + r2.x;
    r0.w = r2.y ? 1 : r0.w;
    r0.w = r2.x / r0.w;
    r0.w = r2.y ? r2.w : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r2.x = dot(v6.xyz, v6.xyz);
    r2.y = sqrt(r2.x);
    r0.w = r0.w * r2.y + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.x = rsqrt(r2.x);
    r2.xyz = v6.xyz * r2.xxx;
    r2.x = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
    r2.x = saturate(fogConstants.sunFogAngles.y * r2.x + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r2.xxxx * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r2.w * r0.w;
    r2.xyz = r2.xyz + -r0.xyz;
    r1.xyw = r0.www * r2.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r1.xyw;
  r1.xyw = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyw ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = r1.z;
  return;
}