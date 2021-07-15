// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:45 2021

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
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float2 w2 : TEXCOORD9,
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

  r0.x = dot(-v7.xyz, -v7.xyz);
  r0.x = rsqrt(r0.x);
  r0.yzw = -v7.xyz * r0.xxx;
  r1.x = dot(r0.yzw, v5.xyz);
  r1.y = dot(r0.yzw, v6.xyz);
  r1.z = dot(r0.yzw, v4.xyz);
  r1.w = cmp(0 < r1.z);
  r1.xy = -r1.xy / r1.zz;
  r1.xy = r1.ww ? r1.xy : 0;
  r2.xy = float2(-0.5,-0.5) + v2.xy;
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
    r3.z = v2.x + r3.z;
    r4.x = r3.z / columnCount;
    r3.z = trunc(r3.w);
    r3.z = v2.y + r3.z;
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
  r4.xyz = v1.xyz * r4.xyz;
  r5.x = w1.x * r4.w;
  r5.y = aoMap.Sample(aoSampler_s, r3.zw).x;
  r5.z = glossMap.Sample(specColorSampler_s, r3.zw).x;
  r5.w = glossRange.y + -glossRange.x;
  r5.z = r5.z * r5.w + glossRange.x;
  r5.z = saturate(0.0588235296 * r5.z);
  r6.xyz = normalMap.Sample(normalSampler_s, r3.zw).xyz;
  r6.xyz = float3(-0.5,-0.5,-0) + r6.xyz;
  r6.xyz = baseNormalHeight * r6.xyz + float3(0.5,0.5,0);
  r6.xy = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r6.w = dot(r6.xy, r6.xy);
  r6.w = 1 + -r6.w;
  r6.w = max(0, r6.w);
  r6.w = sqrt(r6.w);
  r6.z = r6.z * r6.z;
  r6.z = 0.333333343 * r6.z;
  r6.z = min(1, r6.z);
  r7.x = v8.x ? 1 : -1;
  r7.y = dot(v4.xyz, v4.xyz);
  r7.y = rsqrt(r7.y);
  r7.yzw = v4.xyz * r7.yyy;
  r7.yzw = r7.yzw * r7.xxx;
  r8.x = dot(v5.xyz, v5.xyz);
  r8.x = rsqrt(r8.x);
  r8.xyz = v5.xyz * r8.xxx;
  r8.xyz = r8.xyz * r7.xxx;
  r8.w = dot(v6.xyz, v6.xyz);
  r8.w = rsqrt(r8.w);
  r9.xyz = v6.xyz * r8.www;
  r9.xyz = r9.xyz * r7.xxx;
  r5.z = -17 * r5.z;
  r5.z = exp2(r5.z);
  r5.z = r6.z + r5.z;
  r5.z = log2(r5.z);
  r5.z = -0.0588235296 * r5.z;
  r9.xyz = r9.xyz * r6.yyy;
  r8.xyz = r8.xyz * r6.xxx + r9.xyz;
  r6.xyw = r7.yzw * r6.www + r8.xyz;
  r7.x = dot(r6.xyw, r6.xyw);
  r7.x = rsqrt(r7.x);
  r6.xyw = r7.xxx * r6.xyw;
  r5.w = debugGlossOverride.x * r5.w + glossRange.x;
  r5.w = saturate(0.0588235296 * r5.w);
  r5.w = -17 * r5.w;
  r5.w = exp2(r5.w);
  r5.w = r6.z + r5.w;
  r5.w = log2(r5.w);
  r5.w = -0.0588235296 * r5.w;
  r5.zw = max(float2(0,0), r5.zw);
  r6.z = cmp(0 < debugStreamerControl.w);
  if (r6.z != 0) {
    r6.z = (int)debugStreamerControl.w;
    r7.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r3.zw);
    r7.y = colorMap.CalculateLevelOfDetail(colorSampler_s, r3.zw);
    r7.x = cmp(r7.x < r7.y);
    r7.y = cmp(0 < r7.y);
    r8.xyz = (int3)r6.zzz & int3(1,2,4);
    r9.xyz = r8.xxx ? float3(1,0,1) : r4.xyz;
    r8.xyw = r8.yyy ? float3(0,1,1) : r4.xyz;
    r7.yzw = r7.yyy ? r9.xyz : r8.xyw;
    r8.xyz = r8.zzz ? float3(0,1,0) : r4.xyz;
    r4.xyz = r7.xxx ? r7.yzw : r8.xyz;
  }
  r7.xyz = debugColorOverride.xyz + -r4.xyz;
  r4.xyz = debugColorOverride.www * r7.xyz + r4.xyz;
  r4.w = -r4.w * w1.x + debugAlphaOverride.x;
  r4.w = debugAlphaOverride.w * r4.w + r5.x;
  r7.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r7.xyz = debugSpecularOverride.www * r7.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.x = r5.w + -r5.z;
  r8.y = debugGlossOverride.w * r5.x + r5.z;
  r5.x = debugOcclusionOverride.x + -r5.y;
  r5.x = debugOcclusionOverride.w * r5.x + r5.y;
  r5.yzw = v8.xxx ? v4.xyz : -v4.xyz;
  r6.z = dot(r5.yzw, r5.yzw);
  r6.z = rsqrt(r6.z);
  r5.yzw = r5.yzw * r6.zzz + -r6.xyw;
  r6.xyz = debugNormalOverride.www * r5.yzw + r6.xyw;
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
    r9.x = r1.w / columnCount;
    r1.w = trunc(r5.y);
    r1.w = r3.w + r1.w;
    r9.y = r1.w / rowCount;
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
    sincos(r1.w, r10.x, r11.x);
    r11.y = r11.x;
    r11.z = r10.x;
    r12.x = dot(r11.yz, r1.xy);
    r11.x = -r10.x;
    r12.y = dot(r11.xy, r1.xy);
    r1.xy = gameTime.ww * scrollUVs.xy;
    r1.xy = r1.xy * scaleUVs.xy + r12.xy;
    r1.w = gameTime.w * zoomRate;
    r1.w = cos(r1.w);
    r1.w = r1.w * 0.5 + 0.5;
    r1.w = 1 + -r1.w;
    r3.z = zoomUVs.y + -zoomUVs.x;
    r1.w = r1.w * r3.z + zoomUVs.x;
    r1.xy = r1.xy / r1.ww;
    r1.xy = float2(0.5,0.5) + r1.xy;
    r3.zw = saturate(r1.xy);
    r9.xy = clampU ? r3.zw : r1.xy;
  }
  r1.xy = r3.xy * distortionAmount + r9.xy;
  r9.xyzw = emissiveMap.Sample(colorSampler_s, r1.xy).xyzw;
  r1.xyw = colorTint.xyz * r9.xyz;
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
  r8.zw = cmp(invertFalloff == float2(0,0));
  r3.z = r8.z ? 1 : r3.z;
  r3.w = invertFalloff * r9.w;
  r3.z = r3.w * r3.z;
  r1.xyw = r3.zzz * r1.xyw;
  r5.yzw = r5.yzw * r3.zzz;
  r3.z = v3.x + v3.y;
  r3.z = v3.z + r3.z;
  r3.z = flickerSeed.y + r3.z;
  r3.z = frac(r3.z);
  r9.y = gameTime.w * flickerSpeed + r3.z;
  r9.x = flickerSeed.x;
  r3.z = flickerLookupMap.SampleLevel(lookupSampler_s, r9.xy, 0).x;
  r3.z = log2(abs(r3.z));
  r3.z = flickerPower * r3.z;
  r3.z = exp2(r3.z);
  r3.w = flickerRange.y + -flickerRange.x;
  r3.z = r3.z * r3.w + flickerRange.x;
  r9.xyz = r3.zzz * r1.xyw;
  r9.xyz = r9.xyz / invertFalloff;
  r3.w = saturate(dot(r9.xyz, float3(0.298999995,0.587000012,0.114)));
  r3.w = r4.w + r3.w;
  r2.zw = maskScaleUVs.xy * r2.zw;
  r2.xy = r2.xy * maskScaleUVs.xy + r2.zw;
  r2.xy = maskOffsetUVs.xy * maskScaleUVs.xy + r2.xy;
  r2.z = gameTime.w * maskRotateUVs.y + 1;
  r2.z = maskRotateUVs.x * r2.z;
  r2.z = 0.0174532924 * r2.z;
  sincos(r2.z, r9.x, r10.x);
  r10.y = r10.x;
  r10.z = r9.x;
  r11.x = dot(r10.yz, r2.xy);
  r10.x = -r9.x;
  r11.y = dot(r10.xy, r2.xy);
  r2.xy = gameTime.ww * maskScrollUVs.xy;
  r2.xy = r2.xy * maskScaleUVs.xy + r11.xy;
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
  r1.z = saturate(r1.z * w2.x + w2.y);
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
  r2.z = r8.w ? 60000 : r2.z;
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
  sincos(r3.w, r9.x, r10.x);
  r3.x = dot(r3.xy, float2(0.0671105608,0.00583714992));
  r3.x = frac(r3.x);
  r3.x = 52.9829178 * r3.x;
  r3.x = frac(r3.x);
  r3.x = r3.x * 6.28318548 + gameTick.w;
  sincos(r3.x, r3.x, r11.x);
  r8.x = saturate(dot(r6.xyz, r0.yzw));
  r3.y = dot(-r0.yzw, r6.xyz);
  r3.y = r3.y + r3.y;
  r12.xyz = r6.xyz * -r3.yyy + -r0.yzw;
  r3.y = 17 * r8.y;
  r3.y = exp2(r3.y);
  r3.y = 2 + r3.y;
  r3.y = 2 / r3.y;
  r3.w = sqrt(r3.y);
  r4.w = 1 + -r8.y;
  r7.w = 5 * r4.w;
  r8.z = r4.w * 5 + -2.5;
  r8.z = saturate(0.400000006 * r8.z);
  r8.z = 100 * r8.z;
  r9.zw = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r8.w = exp2(r9.z);
  r8.w = r8.x * r8.w;
  r8.w = 9.1368103 * r8.w;
  r9.z = r7.w * r4.w;
  r9.z = -r9.z * 2.0159049 + r9.w;
  r9.z = exp2(r9.z);
  r9.z = r9.z * r8.x;
  r9.z = 9.70808983 * r9.z;
  r8.w = max(r9.z, r8.w);
  r8.w = max(1.26815999, r8.w);
  r2.y = 0.0078125 * r2.y;
  r2.y = min(15, r2.y);
  r2.y = (uint)r2.y;
  r13.xy = (uint2)r2.xz >> int2(6,6);
  r13.z = (uint)r2.y << 4;
  r2.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r9.zw = float2(0,0);
  while (true) {
    r10.w = cmp((uint)r9.w >= numRefProbes);
    if (r10.w != 0) break;
    r2.z = (uint)r9.w >> 5;
    r14.xyz = (int3)r2.xyz + (int3)r13.xyz;
    r2.z = visibleProbes.Load(r14.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r9.w, l(0), t15.wxyz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r9.w, l(16), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r9.w, l(32), t15.yxwz
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r9.w, l(48), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r9.w, l(64), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r9.w, l(80), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.yz, r9.w, l(96), t15.xxyx
  r11.y = samp0[]..swiz;
  r11.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(116), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(132), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(148), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(164), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(180), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(196), t15.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r9.w, l(212), t15.xyxx
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
    r14.xyz = v7.xyz + -r22.yzw;
    r10.w = dot(r14.xyz, r14.xyz);
    r10.w = sqrt(r10.w);
    r10.w = cmp(probeDebugRadius >= r10.w);
    r11.w = (int)r28.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(0), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(16), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(32), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(48), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(64), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(80), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
    r13.w = dot(r35.xyz, r14.xyz);
    r13.w = saturate(r13.w + r35.w);
    r15.w = dot(r36.xyz, r14.xyz);
    r15.w = saturate(r15.w + r36.w);
    r13.w = r15.w * r13.w;
    r15.w = dot(r37.xyz, r14.xyz);
    r15.w = saturate(r15.w + r37.w);
    r13.w = r15.w * r13.w;
    r15.w = dot(r38.xyz, r14.xyz);
    r15.w = saturate(r15.w + r38.w);
    r13.w = r15.w * r13.w;
    r15.w = dot(r39.xyz, r14.xyz);
    r15.w = saturate(r15.w + r39.w);
    r13.w = r15.w * r13.w;
    r15.w = dot(r40.xyz, r14.xyz);
    r15.w = saturate(r15.w + r40.w);
    r15.x = r15.w * r13.w;
    r13.w = (int)r11.y & 1;
    r15.xw = r13.ww ? r15.xy : r15.zx;
    r35.xy = r28.zw;
    r35.z = r29.z;
    r13.w = dot(r12.xyz, r35.xyz);
    r16.w = dot(r14.xyz, r35.xyz);
    r16.w = r16.w + -r29.w;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r8.z);
    r16.w = r17.w ? r16.w : -r16.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r16.w / r13.w;
    r13.w = min(131072, abs(r13.w));
    r29.z = r30.z;
    r16.w = dot(r12.xyz, r29.xyz);
    r17.w = dot(r14.xyz, r29.xyz);
    r17.w = r17.w + -r30.w;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r8.z);
    r17.w = r18.w ? r17.w : -r17.w;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r17.w / r16.w;
    r13.w = min(abs(r16.w), r13.w);
    r30.z = r31.z;
    r16.w = dot(r12.xyz, r30.xyz);
    r17.w = dot(r14.xyz, r30.xyz);
    r17.w = r17.w + -r31.w;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r8.z);
    r17.w = r18.w ? r17.w : -r17.w;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r17.w / r16.w;
    r13.w = min(abs(r16.w), r13.w);
    r31.z = r32.z;
    r16.w = dot(r12.xyz, r31.xyz);
    r17.w = dot(r14.xyz, r31.xyz);
    r17.w = r17.w + -r32.w;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r8.z);
    r17.w = r18.w ? r17.w : -r17.w;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r17.w / r16.w;
    r13.w = min(abs(r16.w), r13.w);
    r32.z = r33.x;
    r16.w = dot(r12.xyz, r32.xyz);
    r17.w = dot(r14.xyz, r32.xyz);
    r17.w = r17.w + -r33.y;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r8.z);
    r17.w = r18.w ? r17.w : -r17.w;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r17.w / r16.w;
    r13.w = min(abs(r16.w), r13.w);
    r34.zw = r33.zw;
    r16.w = dot(r12.zxy, r34.xzw);
    r17.w = dot(r14.zxy, r34.xzw);
    r17.w = r17.w + -r34.y;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r8.z);
    r17.w = r18.w ? r17.w : -r17.w;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r17.w / r16.w;
    r13.w = min(abs(r16.w), r13.w);
    r29.x = r25.w;
    r29.yz = r26.zw;
    r29.xyz = r29.xyz + r14.xyz;
    r29.xyz = r12.xyz * r13.www + r29.xyz;
    r16.w = dot(r29.xyz, r29.xyz);
    r16.w = sqrt(r16.w);
    r13.w = r13.w / r16.w;
    r13.w = r13.w + r13.w;
    r13.w = sqrt(r13.w);
    r13.w = r4.w * 5 + r13.w;
    r13.w = -0.844799995 + r13.w;
    r22.y = r23.z;
    r22.z = r24.x;
    r30.x = dot(r29.xyz, r22.xyz);
    r31.xy = r23.xw;
    r31.z = r24.w;
    r30.y = dot(r29.xyz, r31.xyz);
    r24.x = r23.y;
    r30.z = dot(r29.xyz, r24.xyz);
    if (6 == 0) r19.z = 0; else if (6+25 < 32) {     r19.z = (uint)r28.y << (32-(6 + 25)); r19.z = (uint)r19.z >> (32-6);    } else r19.z = (uint)r28.y >> 25;
    if (9 == 0) r19.w = 0; else if (9+16 < 32) {     r19.w = (uint)r28.y << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);    } else r19.w = (uint)r28.y >> 16;
    r30.w = (uint)r19.w;
    r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r13.w).xyz;
    r28.yzw = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r13.w = (int)r28.z | (int)r28.y;
    r13.w = (int)r28.w | (int)r13.w;
    r23.xyz = r13.www ? float3(1,1,0) : r23.xyz;
    r29.x = dot(r14.xyz, r22.xyz);
    r29.y = dot(r14.xyz, r31.xyz);
    r29.z = dot(r14.xyz, r24.xyz);
    r25.xyz = saturate(r29.xyz * r25.xyz + float3(0.5,0.5,0.5));
    r26.z = r27.x;
    r25.xyz = r25.xyz * r26.xyz + r27.yzw;
    r30.x = dot(r6.xyz, r22.xyz);
    r30.y = dot(r6.xyz, r31.xyz);
    r30.z = dot(r6.xyz, r24.xyz);
    r22.xyz = cmp(float3(0,0,0) < r30.xyz);
    r16.z = r22.x ? 0 : 0.5;
    r24.xyz = r25.xyz + r16.xyz;
    r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r17.z = r22.y ? 0 : 0.5;
    r22.xyw = r25.xyz + r17.xyz;
    r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
    r18.z = r22.z ? 0 : 0.5;
    r25.xyz = r25.xyz + r18.xyz;
    r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r26.xyz = r30.xyz * r30.xyz;
    r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
    r28.yzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r13.w = (int)r28.z | (int)r28.y;
    r13.w = (int)r28.w | (int)r13.w;
    r27.xyz = r13.www ? float3(1,1,0) : r27.xyz;
    r29.xyzw = r20.xyzw;
    r28.yzw = r21.yzw;
    r13.w = r9.z;
    r16.z = r2.z;
    while (true) {
      if (r16.z == 0) break;
      r16.w = firstbitlow((uint)r16.z);
      r16.w = 1 << (int)r16.w;
      r17.z = (int)r16.w & (int)r16.z;
      if (r17.z != 0) {
        r16.w = ~(int)r16.w;
        r16.z = (int)r16.w & (int)r16.z;
        if (r10.w != 0) {
          r16.w = r11.y;
          r30.xy = r15.xw;
          r17.z = 1;
          while (true) {
            r17.w = cmp((int)r17.z >= (int)r19.z);
            if (r17.w != 0) break;
            r17.w = (int)r11.w + (int)r17.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(0), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(16), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(32), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(48), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(64), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(80), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
            r17.w = dot(r31.xyz, r14.xyz);
            r17.w = saturate(r17.w + r31.w);
            r17.w = r30.x * r17.w;
            r18.z = dot(r32.xyz, r14.xyz);
            r18.z = saturate(r18.z + r32.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r33.xyz, r14.xyz);
            r18.z = saturate(r18.z + r33.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r34.xyz, r14.xyz);
            r18.z = saturate(r18.z + r34.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r35.xyz, r14.xyz);
            r18.z = saturate(r18.z + r35.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r36.xyz, r14.xyz);
            r18.z = saturate(r18.z + r36.w);
            r30.x = r18.z * r17.w;
            r18.w = (uint)r16.w >> 2;
            if (1 == 0) r19.w = 0; else if (1+2 < 32) {             r19.w = (uint)r16.w << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);            } else r19.w = (uint)r16.w >> 2;
            r22.z = (int)r18.w & 2;
            r23.w = max(r30.y, r30.x);
            r17.w = -r17.w * r18.z + 1;
            r17.w = r30.y * r17.w;
            r19.y = r22.z ? r17.w : r23.w;
            r30.xy = r19.ww ? r30.xy : r19.xy;
            r17.z = (int)r17.z + 1;
            r16.w = r18.w;
          }
          r30.y = saturate(r30.y);
          r16.w = r30.y * r11.z;
          r17.z = cmp(0 < r16.w);
          if (r17.z != 0) {
            r31.z = r30.y * r11.z + r28.w;
            r16.w = r16.w * r28.x;
            r30.xzw = r26.xyz * r16.www;
            r32.xyz = r30.zzz * r22.xyw;
            r32.xyz = r24.xyz * r30.xxx + r32.xyz;
            r30.xzw = r25.xyz * r30.www + r32.xyz;
            r32.xyz = r30.xzw * r27.xyz;
            r17.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r32.xyz = r30.xzw * r27.xyz + r29.xyz;
            r17.w = r17.z * r8.w;
            r30.xzw = r23.xyz * r16.www;
            r16.w = dot(r30.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r16.w = r8.w * r17.z + r16.w;
            r16.w = r17.w / r16.w;
            r33.x = r29.w;
            r33.yz = r28.yz;
            r31.xyw = r30.zwx * r16.www + r33.yzx;
            r32.w = r31.w;
          } else {
            r32.xyzw = r29.xyzw;
            r31.xyz = r28.yzw;
          }
          r13.w = -1;
          r29.xyzw = r32.xyzw;
          r28.yzw = r31.xyz;
          break;
        }
      }
    }
    if (r13.w != 0) {
      r20.xyzw = r29.xyzw;
      r21.yzw = r28.yzw;
      r9.z = -1;
      break;
    }
    r9.w = (int)r9.w + 32;
    r20.xyzw = r29.xyzw;
    r21.yzw = r28.yzw;
    r9.z = r13.w;
  }
  if (r9.z == 0) {
    r2.x = numRefProbes + -numOverrideProbes;
    r2.y = (int)r2.x & -32;
    r2.z = (int)-r2.y + (int)r2.x;
    r9.z = numRefProbes & -32;
    r9.w = (int)-r9.z + numRefProbes;
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r22.xy = float2(0,0);
    r23.xyzw = r20.xyzw;
    r24.yzw = r21.yzw;
    r10.w = r2.y;
    while (true) {
      r11.y = cmp((uint)r10.w >= numRefProbes);
      if (r11.y != 0) break;
      r14.z = (uint)r10.w >> 5;
      r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
      r11.y = visibleProbes.Load(r15.xyzw).x;
      r11.z = cmp((int)r2.y == (int)r10.w);
      bitmask.w = ((~(-1 << r2.z)) << 0) & 0xffffffff;  r11.w = (((uint)0 << 0) & bitmask.w) | ((uint)r11.y & ~bitmask.w);
      r11.y = r11.z ? r11.w : r11.y;
      r11.z = cmp((int)r9.z == (int)r10.w);
      if (r9.w == 0) r11.w = 0; else if (r9.w+0 < 32) {       r11.w = (uint)r11.y << (32-(r9.w + 0)); r11.w = (uint)r11.w >> (32-r9.w);      } else r11.w = (uint)r11.y >> 0;
      r11.y = r11.z ? r11.w : r11.y;
      r11.z = (int)r10.w + numLights;
      r25.xyzw = r23.xyzw;
      r26.xyz = r24.yzw;
      r11.w = r11.y;
      while (true) {
        if (r11.w == 0) break;
        r13.w = firstbitlow((uint)r11.w);
        r14.z = 1 << (int)r13.w;
        r14.w = (int)r11.w & (int)r14.z;
        if (r14.w != 0) {
          r11.w = (int)r11.w ^ (int)r14.z;
          r14.z = (int)r11.z + (int)r13.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r14.z, l(0), t11.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r14.z, l(16), t11.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
          r27.xyz = -v7.xyz + r27.xyz;
          r15.z = r27.w;
          r15.xyz = cmp(abs(r27.xyz) < r15.zxy);
          r14.z = r15.y ? r15.x : 0;
          r14.z = r15.z ? r14.z : 0;
          if (r14.z != 0) {
            r13.w = (int)r10.w + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(0), t15.wxyz
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r13.w, l(96), t15.xxxy
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(116), t15.zwxy
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
            r15.xyz = v7.xyz + -r27.yzw;
            r16.w = (int)r28.w & 0x0000ffff;
            if (6 == 0) r17.w = 0; else if (6+25 < 32) {             r17.w = (uint)r28.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);            } else r17.w = (uint)r28.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r18.z = dot(r29.xyz, r15.xyz);
            r18.z = saturate(r18.z + r29.w);
            r18.w = dot(r30.xyz, r15.xyz);
            r18.w = saturate(r18.w + r30.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r31.xyz, r15.xyz);
            r18.w = saturate(r18.w + r31.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r32.xyz, r15.xyz);
            r18.w = saturate(r18.w + r32.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r33.xyz, r15.xyz);
            r18.w = saturate(r18.w + r33.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r34.xyz, r15.xyz);
            r18.w = saturate(r18.w + r34.w);
            r16.x = r18.z * r18.w;
            r18.z = (int)r14.z & 1;
            r18.zw = r18.zz ? r16.xy : r16.zx;
            r16.x = r14.z;
            r29.xy = r18.zw;
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
              r22.w = dot(r30.xyz, r15.xyz);
              r22.w = saturate(r22.w + r30.w);
              r22.w = r29.x * r22.w;
              r27.w = dot(r31.xyz, r15.xyz);
              r27.w = saturate(r27.w + r31.w);
              r22.w = r27.w * r22.w;
              r27.w = dot(r32.xyz, r15.xyz);
              r27.w = saturate(r27.w + r32.w);
              r22.w = r27.w * r22.w;
              r27.w = dot(r33.xyz, r15.xyz);
              r27.w = saturate(r27.w + r33.w);
              r22.w = r27.w * r22.w;
              r27.w = dot(r34.xyz, r15.xyz);
              r27.w = saturate(r27.w + r34.w);
              r22.w = r27.w * r22.w;
              r27.w = dot(r35.xyz, r15.xyz);
              r27.w = saturate(r27.w + r35.w);
              r29.x = r27.w * r22.w;
              r29.z = (uint)r16.x >> 2;
              if (1 == 0) r29.w = 0; else if (1+2 < 32) {               r29.w = (uint)r16.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);              } else r29.w = (uint)r16.x >> 2;
              r30.x = (int)r29.z & 2;
              r30.y = max(r29.y, r29.x);
              r22.w = -r22.w * r27.w + 1;
              r22.w = r29.y * r22.w;
              r18.y = r30.x ? r22.w : r30.y;
              r29.xy = r29.ww ? r29.xy : r18.xy;
              r19.w = (int)r19.w + 1;
              r16.x = r29.z;
            }
            r29.y = saturate(r29.y);
            r14.z = r29.y * r14.w;
            r16.x = cmp(0 < r14.z);
            if (r16.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(16), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r13.w, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r26.z = r29.y * r14.w + r26.z;
              r13.w = r14.z * r28.z;
              r28.z = r35.z;
              r14.z = dot(r12.xyz, r28.xyz);
              r14.w = dot(r15.xyz, r28.xyz);
              r14.w = r14.w + -r35.w;
              r16.x = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r8.z);
              r14.w = r16.x ? r14.w : -r14.w;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r14.w / r14.z;
              r14.z = min(131072, abs(r14.z));
              r35.z = r36.z;
              r14.w = dot(r12.xyz, r35.xyz);
              r16.x = dot(r15.xyz, r35.xyz);
              r16.x = r16.x + -r36.w;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r8.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r36.z = r37.z;
              r14.w = dot(r12.xyz, r36.xyz);
              r16.x = dot(r15.xyz, r36.xyz);
              r16.x = r16.x + -r37.w;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r8.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r37.z = r38.z;
              r14.w = dot(r12.xyz, r37.xyz);
              r16.x = dot(r15.xyz, r37.xyz);
              r16.x = r16.x + -r38.w;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r8.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r38.z = r39.x;
              r14.w = dot(r12.xyz, r38.xyz);
              r16.x = dot(r15.xyz, r38.xyz);
              r16.x = r16.x + -r39.y;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r8.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r40.zw = r39.zw;
              r14.w = dot(r12.zxy, r40.xzw);
              r16.x = dot(r15.zxy, r40.xzw);
              r16.x = r16.x + -r40.y;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r8.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r28.x = r32.w;
              r28.yz = r33.zw;
              r18.yzw = r28.xyz + r15.xyz;
              r18.yzw = r12.xyz * r14.zzz + r18.yzw;
              r14.w = dot(r18.yzw, r18.yzw);
              r14.w = sqrt(r14.w);
              r14.z = r14.z / r14.w;
              r14.z = r14.z + r14.z;
              r14.z = sqrt(r14.z);
              r14.z = r4.w * 5 + r14.z;
              r14.z = -0.844799995 + r14.z;
              r27.y = r30.z;
              r27.z = r31.x;
              r35.x = dot(r18.yzw, r27.xyz);
              r28.xy = r30.xw;
              r28.z = r31.w;
              r35.y = dot(r18.yzw, r28.xyz);
              r31.x = r30.y;
              r35.z = dot(r18.yzw, r31.xyz);
              if (9 == 0) r14.w = 0; else if (9+16 < 32) {               r14.w = (uint)r28.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);              } else r14.w = (uint)r28.w >> 16;
              r35.w = (uint)r14.w;
              r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r14.z).xyz;
              r29.xzw = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
              r29.xzw = cmp((int3)r29.xzw == int3(2139095040,2139095040,2139095040));
              r14.z = (int)r29.z | (int)r29.x;
              r14.z = (int)r29.w | (int)r14.z;
              r18.yzw = r14.zzz ? float3(1,1,0) : r18.yzw;
              r30.x = dot(r15.xyz, r27.xyz);
              r30.y = dot(r15.xyz, r28.xyz);
              r30.z = dot(r15.xyz, r31.xyz);
              r15.xyz = saturate(r30.xyz * r32.xyz + float3(0.5,0.5,0.5));
              r33.z = r34.x;
              r15.xyz = r15.xyz * r33.xyz + r34.yzw;
              r35.x = dot(r6.xyz, r27.xyz);
              r35.y = dot(r6.xyz, r28.xyz);
              r35.z = dot(r6.xyz, r31.xyz);
              r27.xyz = cmp(float3(0,0,0) < r35.xyz);
              r17.z = r27.x ? 0 : 0.5;
              r28.xyz = r17.xyz + r15.xyz;
              r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
              r29.xzw = r35.xyz * r35.xyz;
              r29.xzw = r29.xzw * r13.www;
              r19.z = r27.y ? 0 : 0.5;
              r27.xyw = r19.xyz + r15.xyz;
              r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
              r27.xyw = r27.xyw * r29.zzz;
              r27.xyw = r28.xyz * r29.xxx + r27.xyw;
              r22.z = r27.z ? 0 : 0.5;
              r15.xyz = r22.xyz + r15.xyz;
              r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
              r15.xyz = r15.xyz * r29.www + r27.xyw;
              r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
              r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
              r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
              r14.z = (int)r28.y | (int)r28.x;
              r14.z = (int)r28.z | (int)r14.z;
              r27.xyz = r14.zzz ? float3(1,1,0) : r27.xyz;
              r28.xyz = r27.xyz * r15.xyz;
              r14.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r25.xyz = r15.xyz * r27.xyz + r25.xyz;
              r14.w = r14.z * r8.w;
              r15.xyz = r18.yzw * r13.www;
              r13.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r13.w = r8.w * r14.z + r13.w;
              r13.w = r14.w / r13.w;
              r27.x = r25.w;
              r27.yz = r26.xy;
              r26.xyw = r15.yzx * r13.www + r27.yzx;
              r25.w = r26.w;
            }
          }
        }
      }
      r23.xyzw = r25.xyzw;
      r24.yzw = r26.xyz;
      r10.w = (int)r10.w + 32;
    }
    r9.z = cmp(r24.w < 1);
    if (r9.z != 0) {
      r14.xy = float2(0,0);
      r15.w = 0;
      r16.yz = float2(0,1);
      r17.xy = float2(0,0);
      r18.x = 1;
      r19.xy = float2(0,0);
      r22.xy = float2(0,0);
      r25.x = r23.w;
      r25.yzw = r24.yzw;
      r11.yzw = r23.xyz;
      r9.z = r24.w;
      r9.w = 0;
      while (true) {
        r10.w = cmp((uint)r9.w >= (uint)r2.x);
        if (r10.w != 0) break;
        r14.z = (uint)r9.w >> 5;
        r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
        r10.w = visibleProbes.Load(r15.xyzw).x;
        r13.w = cmp((int)r2.y == (int)r9.w);
        if (r2.z == 0) r14.z = 0; else if (r2.z+0 < 32) {         r14.z = (uint)r10.w << (32-(r2.z + 0)); r14.z = (uint)r14.z >> (32-r2.z);        } else r14.z = (uint)r10.w >> 0;
        r10.w = r13.w ? r14.z : r10.w;
        r13.w = (int)r9.w + numLights;
        r26.xyzw = r25.xyzw;
        r15.xyz = r11.yzw;
        r14.z = r9.z;
        r14.w = r10.w;
        while (true) {
          if (r14.w == 0) break;
          r16.w = firstbitlow((uint)r14.w);
          r17.w = 1 << (int)r16.w;
          r18.z = (int)r14.w & (int)r17.w;
          if (r18.z != 0) {
            r14.w = (int)r14.w ^ (int)r17.w;
            r17.w = (int)r13.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(0), t11.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xy, r17.w, l(16), t11.xyxx
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
            r27.xyz = -v7.xyz + r27.xyz;
            r28.z = r27.w;
            r27.xyz = cmp(abs(r27.xyz) < r28.zxy);
            r17.w = r27.y ? r27.x : 0;
            r17.w = r27.z ? r17.w : 0;
            if (r17.w != 0) {
              r16.w = (int)r9.w + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(0), t15.wxyz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.zw, r16.w, l(96), t15.xxxy
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(116), t15.zwxy
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
              r29.xyz = v7.xyz + -r27.yzw;
              r17.w = (int)r28.w & 0x0000ffff;
              if (6 == 0) r19.w = 0; else if (6+25 < 32) {               r19.w = (uint)r28.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);              } else r19.w = (uint)r28.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r21.w = dot(r30.xyz, r29.xyz);
              r21.w = saturate(r21.w + r30.w);
              r22.w = dot(r31.xyz, r29.xyz);
              r22.w = saturate(r22.w + r31.w);
              r21.w = r22.w * r21.w;
              r22.w = dot(r32.xyz, r29.xyz);
              r22.w = saturate(r22.w + r32.w);
              r21.w = r22.w * r21.w;
              r22.w = dot(r33.xyz, r29.xyz);
              r22.w = saturate(r22.w + r33.w);
              r21.w = r22.w * r21.w;
              r22.w = dot(r34.xyz, r29.xyz);
              r22.w = saturate(r22.w + r34.w);
              r21.w = r22.w * r21.w;
              r22.w = dot(r35.xyz, r29.xyz);
              r22.w = saturate(r22.w + r35.w);
              r16.x = r22.w * r21.w;
              r21.w = (int)r18.z & 1;
              r30.xy = r21.ww ? r16.xy : r16.zx;
              r16.x = r18.z;
              r31.xy = r30.xy;
              r21.w = 1;
              while (true) {
                r22.w = cmp((int)r21.w >= (int)r19.w);
                if (r22.w != 0) break;
                r22.w = (int)r17.w + (int)r21.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r22.w, l(0), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r22.w, l(16), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r22.w, l(32), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r22.w, l(48), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r22.w, l(64), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r22.w, l(80), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r22.w = dot(r32.xyz, r29.xyz);
                r22.w = saturate(r22.w + r32.w);
                r22.w = r31.x * r22.w;
                r27.w = dot(r33.xyz, r29.xyz);
                r27.w = saturate(r27.w + r33.w);
                r22.w = r27.w * r22.w;
                r27.w = dot(r34.xyz, r29.xyz);
                r27.w = saturate(r27.w + r34.w);
                r22.w = r27.w * r22.w;
                r27.w = dot(r35.xyz, r29.xyz);
                r27.w = saturate(r27.w + r35.w);
                r22.w = r27.w * r22.w;
                r27.w = dot(r36.xyz, r29.xyz);
                r27.w = saturate(r27.w + r36.w);
                r22.w = r27.w * r22.w;
                r27.w = dot(r37.xyz, r29.xyz);
                r27.w = saturate(r27.w + r37.w);
                r31.x = r27.w * r22.w;
                r29.w = (uint)r16.x >> 2;
                if (1 == 0) r30.z = 0; else if (1+2 < 32) {                 r30.z = (uint)r16.x << (32-(1 + 2)); r30.z = (uint)r30.z >> (32-1);                } else r30.z = (uint)r16.x >> 2;
                r30.w = (int)r29.w & 2;
                r31.z = max(r31.y, r31.x);
                r22.w = -r22.w * r27.w + 1;
                r22.w = r31.y * r22.w;
                r18.y = r30.w ? r22.w : r31.z;
                r31.xy = r30.zz ? r31.xy : r18.xy;
                r21.w = (int)r21.w + 1;
                r16.x = r29.w;
              }
              r16.x = saturate(r31.y + -r14.z);
              r17.w = r16.x * r18.w;
              r18.y = cmp(0 < r17.w);
              if (r18.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(16), t15.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(32), t15.yxwz
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(48), t15.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(64), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(80), t15.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(132), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r16.w, l(148), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r16.w, l(164), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r16.w, l(180), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r16.w, l(196), t15.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r16.w, l(212), t15.xyxx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
                r26.w = r16.x * r18.w + r26.w;
                r16.x = r17.w * r28.z;
                r28.z = r36.z;
                r16.w = dot(r12.xyz, r28.xyz);
                r17.w = dot(r29.xyz, r28.xyz);
                r17.w = r17.w + -r36.w;
                r18.y = cmp(r17.w >= 0);
                r17.w = max(abs(r17.w), r8.z);
                r17.w = r18.y ? r17.w : -r17.w;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.w / r16.w;
                r16.w = min(131072, abs(r16.w));
                r36.z = r37.z;
                r17.w = dot(r12.xyz, r36.xyz);
                r18.y = dot(r29.xyz, r36.xyz);
                r18.y = r18.y + -r37.w;
                r18.z = cmp(r18.y >= 0);
                r18.y = max(abs(r18.y), r8.z);
                r18.y = r18.z ? r18.y : -r18.y;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.y / r17.w;
                r16.w = min(abs(r17.w), r16.w);
                r37.z = r38.z;
                r17.w = dot(r12.xyz, r37.xyz);
                r18.y = dot(r29.xyz, r37.xyz);
                r18.y = r18.y + -r38.w;
                r18.z = cmp(r18.y >= 0);
                r18.y = max(abs(r18.y), r8.z);
                r18.y = r18.z ? r18.y : -r18.y;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.y / r17.w;
                r16.w = min(abs(r17.w), r16.w);
                r38.z = r39.z;
                r17.w = dot(r12.xyz, r38.xyz);
                r18.y = dot(r29.xyz, r38.xyz);
                r18.y = r18.y + -r39.w;
                r18.z = cmp(r18.y >= 0);
                r18.y = max(abs(r18.y), r8.z);
                r18.y = r18.z ? r18.y : -r18.y;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.y / r17.w;
                r16.w = min(abs(r17.w), r16.w);
                r39.z = r40.x;
                r17.w = dot(r12.xyz, r39.xyz);
                r18.y = dot(r29.xyz, r39.xyz);
                r18.y = r18.y + -r40.y;
                r18.z = cmp(r18.y >= 0);
                r18.y = max(abs(r18.y), r8.z);
                r18.y = r18.z ? r18.y : -r18.y;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.y / r17.w;
                r16.w = min(abs(r17.w), r16.w);
                r41.zw = r40.zw;
                r17.w = dot(r12.zxy, r41.xzw);
                r18.y = dot(r29.zxy, r41.xzw);
                r18.y = r18.y + -r41.y;
                r18.z = cmp(r18.y >= 0);
                r18.y = max(abs(r18.y), r8.z);
                r18.y = r18.z ? r18.y : -r18.y;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.y / r17.w;
                r16.w = min(abs(r17.w), r16.w);
                r28.x = r33.w;
                r28.yz = r34.zw;
                r18.yzw = r28.xyz + r29.xyz;
                r18.yzw = r12.xyz * r16.www + r18.yzw;
                r17.w = dot(r18.yzw, r18.yzw);
                r17.w = sqrt(r17.w);
                r16.w = r16.w / r17.w;
                r16.w = r16.w + r16.w;
                r16.w = sqrt(r16.w);
                r16.w = r4.w * 5 + r16.w;
                r16.w = -0.844799995 + r16.w;
                r27.y = r30.z;
                r27.z = r32.x;
                r36.x = dot(r18.yzw, r27.xyz);
                r28.xy = r30.xw;
                r28.z = r32.w;
                r36.y = dot(r18.yzw, r28.xyz);
                r32.x = r30.y;
                r36.z = dot(r18.yzw, r32.xyz);
                if (9 == 0) r17.w = 0; else if (9+16 < 32) {                 r17.w = (uint)r28.w << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);                } else r17.w = (uint)r28.w >> 16;
                r36.w = (uint)r17.w;
                r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r16.w).xyz;
                r30.xyz = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
                r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
                r16.w = (int)r30.y | (int)r30.x;
                r16.w = (int)r30.z | (int)r16.w;
                r18.yzw = r16.www ? float3(1,1,0) : r18.yzw;
                r30.x = dot(r29.xyz, r27.xyz);
                r30.y = dot(r29.xyz, r28.xyz);
                r30.z = dot(r29.xyz, r32.xyz);
                r29.xyz = saturate(r30.xyz * r33.xyz + float3(0.5,0.5,0.5));
                r34.z = r35.x;
                r29.xyz = r29.xyz * r34.xyz + r35.yzw;
                r36.x = dot(r6.xyz, r27.xyz);
                r36.y = dot(r6.xyz, r28.xyz);
                r36.z = dot(r6.xyz, r32.xyz);
                r27.xyz = cmp(float3(0,0,0) < r36.xyz);
                r17.z = r27.x ? 0 : 0.5;
                r28.xyz = r29.xyz + r17.xyz;
                r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r30.xyz = r36.xyz * r36.xyz;
                r30.xyz = r30.xyz * r16.xxx;
                r19.z = r27.y ? 0 : 0.5;
                r27.xyw = r29.xyz + r19.xyz;
                r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
                r27.xyw = r27.xyw * r30.yyy;
                r27.xyw = r28.xyz * r30.xxx + r27.xyw;
                r22.z = r27.z ? 0 : 0.5;
                r28.xyz = r29.xyz + r22.xyz;
                r28.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r27.xyz = r28.xyz * r30.zzz + r27.xyw;
                r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
                r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r16.w = (int)r29.y | (int)r29.x;
                r16.w = (int)r29.z | (int)r16.w;
                r28.xyz = r16.www ? float3(1,1,0) : r28.xyz;
                r29.xyz = r28.xyz * r27.xyz;
                r16.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r15.xyz = r27.xyz * r28.xyz + r15.xyz;
                r17.z = r16.w * r8.w;
                r18.yzw = r18.yzw * r16.xxx;
                r16.x = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r16.x = r8.w * r16.w + r16.x;
                r16.x = r17.z / r16.x;
                r26.xyz = r18.yzw * r16.xxx + r26.xyz;
              }
            }
          }
        }
        r25.xyzw = r26.xyzw;
        r11.yzw = r15.xyz;
        r9.w = (int)r9.w + 32;
      }
      r24.xyzw = r25.zxyw;
      r23.xyz = r11.yzw;
      r24.xyzw = r24.yzxw;
    } else {
      r24.x = r23.w;
    }
    r2.x = max(1, r24.w);
    r2.x = rcp(r2.x);
    r24.w = saturate(r24.w);
    r20.xyz = r23.xyz * r2.xxx;
    r21.xyz = r24.xyz * r2.xxx;
    r2.y = cmp(r24.w < 0.99000001);
    if (r2.y != 0) {
      r2.y = 1 + -r24.w;
      r2.z = sunConstants.globalProbeExposure * r2.y;
      r11.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
      r14.x = globalProbeConstants.data[0].w * r11.y;
      r14.yz = globalProbeConstants.data[1].xy * r11.zw;
      r11.yzw = saturate(float3(0.5,0.5,0.5) + r14.xyz);
      r14.xy = globalProbeConstants.data[1].zw * r11.yz;
      r14.z = globalProbeConstants.data[2].x * r11.w;
      r11.yzw = globalProbeConstants.data[2].yzw + r14.xyz;
      r14.xyz = cmp(float3(0,0,0) < r6.xyz);
      r14.xyz = r14.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r14.w = 0;
      r15.xyz = r14.wwx + r11.yzw;
      r15.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r16.xyz = r6.xyz * r6.xyz;
      r16.xyz = r16.xyz * r2.zzz;
      r17.xyz = r14.wwy + r11.yzw;
      r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r17.xyz = r17.xyz * r16.yyy;
      r15.xyz = r15.xyz * r16.xxx + r17.xyz;
      r11.yzw = r14.wwz + r11.yzw;
      r11.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.yzw, 0).xyz;
      r11.yzw = r11.yzw * r16.zzz + r15.xyz;
      r6.w = 0;
      r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r6.xyzw, 6).xyz;
      r11.yzw = r14.xyz * r11.yzw;
      r2.z = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r20.xyz = r23.xyz * r2.xxx + r11.yzw;
      r12.w = 0;
      r11.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r7.w).xyz;
      r2.x = sunConstants.globalProbeExposure * r2.y + -r2.z;
      r2.x = r8.y * r2.x + r2.z;
      r21.xyz = r11.yzw * r2.xxx + r21.xyz;
    }
  } else {
    r21.x = r20.w;
  }
  r2.x = r8.x + r5.x;
  r2.x = log2(abs(r2.x));
  r2.x = r3.w * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x + r5.x;
  r2.x = saturate(-1 + r2.x);
  r14.xyz = r20.xyz * r5.xxx;
  r2.yz = r8.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r8.yzw = r21.xyz * r2.xxx;
  r15.xyz = r8.zwy * r2.yyy;
  r2.xyz = r8.yzw * r2.zzz;
  r4.w = sqrt(r3.w);
  r4.w = r4.w * 0.5 + 0.5;
  r4.w = r4.w * r4.w;
  r5.x = 0.5 * r4.w;
  r4.w = -r4.w * 0.5 + 1;
  r6.w = r8.x * r4.w + r5.x;
  r4.w = r6.w * r4.w;
  r5.x = r6.w * r5.x;
  if (noReceiveShadow == 0) {
    r6.w = dot(r6.xyz, sunConstants.wldDir.xyz);
    r6.w = cmp(0 >= abs(r6.w));
    if (r6.w != 0) {
      r7.w = 0;
    }
    if (r6.w == 0) {
      r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
      r8.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r8.yzw;
      r8.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r8.yzw;
      r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r8.yzw;
      r6.w = -sunConstants.splitDepthOffset + r8.w;
      r6.w = -r6.w * 6.10351563e-05 + 1;
      r9.z = saturate(r6.w);
      r9.z = cmp(r6.w == r9.z);
      if (r9.z != 0) {
        r9.zw = float2(0,0);
        while (true) {
          r10.w = cmp(r9.z >= 3);
          if (r10.w != 0) break;
          r10.w = (uint)r9.z;
          r11.yz = -sunConstants.splitPinTransform[r10.w].xy + r8.yz;
          r11.y = max(abs(r11.y), abs(r11.z));
          r9.w = sunConstants.splitPinTransform[r10.w].z * r11.y;
          r10.w = cmp(r9.w < 1);
          if (r10.w != 0) {
            break;
          }
          r9.z = 1 + r9.z;
          r9.w = 0;
        }
      } else {
        r9.zw = float2(3,0);
      }
      r10.w = cmp(r9.z >= 3);
      if (r10.w != 0) {
        r11.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
        r16.xz = rcp(r11.yy);
        r16.y = -r16.z;
        r11.yzw = r8.yzy * r16.xyz + r11.zwz;
        r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
        r11.yzw = max(float3(0,0,0), r11.yzw);
        r11.yzw = min(r11.yzw, r16.xyz);
        r16.xy = sunConstants.sstLightingConstants.coordScale * r11.wz;
        r16.xy = floor(r16.xy);
        r12.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
        r12.w = r12.w * sunConstants.sstLightingConstants.coordScale + r16.x;
        r12.w = (uint)r12.w;
        r12.w = (int)r12.w + (int10)sunConstants.sstLightingConstants.rootOffset;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r16.x = (int)r13.w & 0x40000000;
        r16.y = (uint)r13.w << 2;
        if (r16.x == 0) {
          r16.x = (int)r13.w & 0x01ffffff;
          r17.x = (int)r12.w + (int)r16.x;
          r12.w = (uint)r13.w >> 25;
          r12.w = (uint)r12.w;
          r11.yzw = r12.www * r11.yzw;
          r11.yzw = frac(r11.yzw);
          r11.yzw = float3(128,128,128) * r11.yzw;
          r11.yzw = (uint3)r11.yzw;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r16.xz = (uint2)r11.wz >> int2(6,6);
          r12.w = (int)r17.z & 0xc0000000;
          r13.w = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          r13.w = r16.z ? r17.z : r13.w;
          r16.z = (uint)r13.w >> 13;
          r13.w = r16.x ? r16.z : r13.w;
          r13.w = (int)r13.w & 8191;
          r18.x = (int)r13.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r17.y = 0;
          r18.y = 1;
          r16.xzw = r12.www ? r17.xyz : r18.xyz;
          r18.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
          r19.xy = (uint2)r11.wz >> (uint2)r18.yy;
          r19.xy = (int2)r19.xy & int2(1,1);
          r13.w = (int)r16.w & 0xc0000000;
          r17.w = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.w = r19.y ? r16.w : r17.w;
          r18.y = (uint)r17.w >> 13;
          r17.w = r19.x ? r18.y : r17.w;
          r17.w = (int)r17.w & 8191;
          r18.x = (int)r16.x + (int)r17.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r16.xzw = r13.www ? r16.xzw : r18.xzw;
          r16.xzw = r12.www ? r17.xyz : r16.xzw;
          r12.w = (int)r16.w & 0xc0000000;
          if (r12.w == 0) {
            r12.w = (int)-r16.z + 6;
            r17.xy = (uint2)r11.wz >> (uint2)r12.ww;
            r12.w = (int)r16.w | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
            r13.w = (int)r13.w * 10;
            r12.w = (uint)r12.w >> (uint)r13.w;
            r12.w = (int)r12.w & 1023;
            r17.x = (int)r12.w + (int)r16.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
          r17.w = samp0[]..swiz;
            r17.yz = (int2)r16.zz + int2(1,2);
            r12.w = (int)-r17.y + 6;
            r18.xy = (uint2)r11.wz >> (uint2)r12.ww;
            r12.w = (int)r17.w & 0xc0000000;
            r13.w = (int)r17.w | 0x40000000;
            bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r18.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.z = (((uint)r18.x << 0) & bitmask.z) | ((uint)r16.z & ~bitmask.z);
            r16.z = (int)r16.z * 10;
            r13.w = (uint)r13.w >> (uint)r16.z;
            r13.w = (int)r13.w & 1023;
            r18.x = (int)r13.w + (int)r17.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
          r18.z = samp0[]..swiz;
            r18.y = r17.z;
            r18.xyz = r12.www ? r17.xyw : r18.xyz;
            r13.w = (int)-r18.y + 6;
            r17.yz = (uint2)r11.wz >> (uint2)r13.ww;
            r13.w = (int)r18.z & 0xc0000000;
            r16.z = (int)r18.z | 0x40000000;
            bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
            r17.y = (int)r17.y * 10;
            r16.z = (uint)r16.z >> (uint)r17.y;
            r16.z = (int)r16.z & 1023;
            r19.x = (int)r16.z + (int)r18.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
          r19.y = samp0[]..swiz;
            r17.yz = r13.ww ? r18.xz : r19.xy;
            r16.xw = r12.ww ? r17.xw : r17.yz;
          }
          r12.w = (int)r16.w & 0xc0000000;
          if (r12.w == 0) {
            if (14 == 0) r13.w = 0; else if (14+15 < 32) {             r13.w = (uint)r16.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);            } else r13.w = (uint)r16.w >> 15;
            r13.w = (uint)r13.w;
            r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
            r13.w = 6.10388815e-05 * r13.w;
            r17.xy = (int2)r16.ww & int2(32767,536870912);
            r16.z = (uint)r17.x;
            r16.z = sunConstants.sstLightingConstants.constants.spanInInches * r16.z;
            r16.z = 3.05185094e-05 * r16.z;
            r17.x = (int)r11.z & 3;
            r17.x = (int)r16.x + (int)r17.x;
            r17.x = (int)r17.x + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r17.x, l(0), t23.xxxx
          r17.x = samp0[]..swiz;
            bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r11.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
            bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r11.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r11.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
            r11.y = (uint)r17.x >> (uint)r18.x;
            r11.y = (int)r11.y & 255;
            r11.y = (uint)r11.y;
            r11.y = r11.y * r16.z;
            r11.y = r11.y * 0.00392156886 + r13.w;
            r11.z = (int)r18.y + 1;
            if (1 == 0) r11.w = 0; else if (1+1 < 32) {             r11.w = (uint)r11.w << (32-(1 + 1)); r11.w = (uint)r11.w >> (32-1);            } else r11.w = (uint)r11.w >> 1;
            r11.z = (int)r11.w + (int)r11.z;
            r11.z = (int)r11.z + (int)r16.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.z, l(0), t23.xxxx
          r11.z = samp0[]..swiz;
            r11.z = (uint)r11.z >> (uint)r18.z;
            r11.z = (int)r11.z & 0x0000ffff;
            r11.z = (uint)r11.z;
            r11.z = r11.z * r16.z;
            r11.z = r11.z * 1.52590219e-05 + r13.w;
            r16.y = r17.y ? r11.y : r11.z;
          } else {
            r11.y = (int)r16.w & 0x80000000;
            r11.z = (int)r16.x + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.z, l(0), t23.xxxx
          r11.z = samp0[]..swiz;
            r11.y = r11.y ? r11.z : 0;
            r11.z = (uint)r16.w << 2;
            r11.w = (uint)r11.y >> 16;
            r11.y = (int)r11.y & 0x0000ffff;
            r11.yw = f16tof32(r11.yw);
            r11.z = r8.y * r11.w + r11.z;
            r11.y = r8.z * r11.y + r11.z;
            r16.y = r12.w ? r11.y : r16.y;
          }
        }
        r8.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r8.w;
        r8.w = cmp(r16.y < r8.w);
        r7.w = r8.w ? 0 : 1;
      }
      if (r10.w == 0) {
        if (enableDitheredShadow == 0) {
          r8.w = (uint)r9.z;
          r11.yz = -sunConstants.splitPinTransform[r8.w].xy + r8.yz;
          r11.yz = sunConstants.splitPinTransform[r8.w].zz * r11.yz;
          r16.xy = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r8.w = (int16)sunConstants.splitArrayOffset;
          r16.z = r9.z + r8.w;
          r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r6.w).x;
          r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r8.w = r10.w + r8.w;
          r8.w = saturate(-1 + r8.w);
          r10.w = r8.w * r8.w;
          r7.w = r10.w * r8.w;
        }
        if (enableDitheredShadow != 0) {
          r16.x = -r9.x;
          r8.w = (uint)r9.z;
          r9.z = 1 + r9.z;
          r9.z = min(2, r9.z);
          r9.w = 1 + -r9.w;
          r9.w = 28 * r9.w;
          r9.zw = (uint2)r9.zw;
          r11.yz = -sunConstants.splitPinTransform[r8.w].xy + r8.yz;
          r11.yz = sunConstants.splitPinTransform[r8.w].zz * r11.yz;
          r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r8.yz = -sunConstants.splitPinTransform[r9.z].xy + r8.yz;
          r8.yz = sunConstants.splitPinTransform[r9.z].zz * r8.yz;
          r8.yz = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r16.y = r10.x;
          r16.z = r9.x;
          r10.w = 0;
          r11.w = 0;
          while (true) {
            r12.w = cmp((uint)r11.w >= 8);
            if (r12.w != 0) break;
            r12.w = cmp((uint)r9.w < (uint)r11.w);
            r17.xy = r12.ww ? r8.yz : r11.yz;
            r13.w = r12.w ? sunConstants.splitPinTransform[r9.z].w : sunConstants.splitPinTransform[r8.w].w;
            r12.w = r12.w ? r9.z : r8.w;
            r18.x = dot(icb[r11.w+0].yx, r16.xy);
            r18.y = dot(icb[r11.w+0].yx, r16.yz);
            r17.xy = r18.xy * r13.ww + r17.xy;
            r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
            r17.z = (uint)r12.w;
            r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
            r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
            r12.w = r13.w + r12.w;
            r12.w = saturate(-1 + r12.w);
            r10.w = r12.w * 0.125 + r10.w;
            r11.w = (int)r11.w + 1;
          }
          r6.w = r10.w * r10.w;
          r7.w = r6.w * r10.w;
        }
      }
    }
  } else {
    r7.w = 1;
  }
  r6.w = dot(r6.xyz, sunConstants.wldDir.xyz);
  r8.y = cmp(0 < abs(r6.w));
  if (r8.y != 0) {
    r8.y = cmp(0 < r7.w);
    if (r8.y != 0) {
      r8.y = sunConstants.specScale * r3.y;
      r8.y = 0.25 * r8.y;
      if (sunConstants.sunCookieIndex != 0) {
        r16.xyz = eyeOffset.xyz + v7.xyz;
        r16.w = 1;
        r8.z = dot(sunConstants.sunCookieTransform[0].xyzw, r16.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r16.xyzw);
        r16.xy = frac(r8.zw);
        r8.z = -1 + (int14)sunConstants.sunCookieIndex;
        r16.z = (uint)r8.z;
        r11.yzw = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
        r11.yzw = float3(-1,-1,-1) + r11.yzw;
        r11.yzw = sunConstants.sunCookieIntensity * r11.yzw + float3(1,1,1);
        r11.yzw = sunConstants.color.xyz * r11.yzw;
      } else {
        r11.yzw = sunConstants.color.xyz;
      }
      if (noReceiveShadow == 0) {
        r8.z = viewmodelSunShadowRaw >> 16;
        r8.w = cmp(0 < (uint)r8.z);
        r8.w = r2.w ? r8.w : 0;
        if (r8.w != 0) {
          r8.z = (int)r8.z + numLights;
          r8.z = (int)r8.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(68), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.z, l(84), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.z, l(132), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r8.z, l(148), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
          r9.z = abs(r6.w) * -0.200000003 + 0.400000006;
          r9.w = cmp(r6.w < 0);
          r9.z = r9.w ? -r9.z : r9.z;
          r20.xyz = r6.xyz * r9.zzz + v7.xyz;
          r20.w = 1;
          r16.x = dot(r16.xyzw, r20.xyzw);
          r16.y = dot(r17.xyzw, r20.xyzw);
          r9.zw = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r9.zw = r9.zw + r19.zw;
          r9.zw = r9.zw * r19.xy;
          r16.xy = r8.ww / r18.xz;
          r16.zw = float2(1,1) + -r16.xy;
          r16.zw = cmp(r9.zw >= r16.zw);
          r16.xy = cmp(r16.xy >= r9.zw);
          r16.xy = (int2)r16.xy | (int2)r16.zw;
          r10.w = (int)r16.y | (int)r16.x;
          if (r10.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r8.z, l(28), t12.xxxx
          r10.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r8.z, l(164), t12.xyxx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
            r8.z = dot(r16.xyzw, r20.xyzw);
            r9.zw = saturate(r9.zw);
            r16.xy = r9.zw * r18.xz + r18.yw;
            r8.z = r8.z + r17.x;
            r8.z = r8.z / r17.y;
            r8.z = max(6.10351563e-05, r8.z);
            r9.z = (int)r10.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r17.x = -r9.x;
              r18.z = (uint)r9.z;
              r17.y = r10.x;
              r17.z = r9.x;
              r9.w = 0;
              r10.w = 0;
              while (true) {
                r12.w = cmp((int)r10.w >= 8);
                if (r12.w != 0) break;
                r19.x = dot(icb[r10.w+0].yx, r17.xy);
                r19.y = dot(icb[r10.w+0].yx, r17.yz);
                r18.xy = r19.xy * r8.ww + r16.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.z).x;
                r9.w = r12.w * 0.125 + r9.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r16.z = (uint)r9.z;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.z).x;
            }
            r8.z = r9.w * r9.w;
            r8.z = r8.z * r9.w;
          } else {
            r8.z = 1;
          }
          r7.w = r8.z * r7.w;
        } else {
          r8.z = viewmodelSunShadowRaw & 0x0000ffff;
          r8.w = cmp(0 < (uint)r8.z);
          r9.z = ~(int)r2.w;
          r8.w = r8.w ? r9.z : 0;
          if (r8.w != 0) {
            r8.z = (int)r8.z + numLights;
            r8.z = (int)r8.z + -1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(68), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.z, l(84), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.z, l(132), t12.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r8.z, l(148), t12.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
            r9.z = abs(r6.w) * -0.200000003 + 0.400000006;
            r9.w = cmp(r6.w < 0);
            r9.z = r9.w ? -r9.z : r9.z;
            r20.xyz = r6.xyz * r9.zzz + v7.xyz;
            r20.w = 1;
            r16.x = dot(r16.xyzw, r20.xyzw);
            r16.y = dot(r17.xyzw, r20.xyzw);
            r9.zw = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
            r9.zw = r9.zw + r19.zw;
            r9.zw = r9.zw * r19.xy;
            r16.xy = r8.ww / r18.xz;
            r16.zw = float2(1,1) + -r16.xy;
            r16.zw = cmp(r9.zw >= r16.zw);
            r16.xy = cmp(r16.xy >= r9.zw);
            r16.xy = (int2)r16.xy | (int2)r16.zw;
            r10.w = (int)r16.y | (int)r16.x;
            if (r10.w == 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r8.z, l(28), t12.xxxx
            r10.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(100), t12.xyzw
            r16.x = samp0[]..swiz;
            r16.y = samp0[]..swiz;
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r8.z, l(164), t12.xyxx
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
              r8.z = dot(r16.xyzw, r20.xyzw);
              r9.zw = saturate(r9.zw);
              r16.xy = r9.zw * r18.xz + r18.yw;
              r8.z = r8.z + r17.x;
              r8.z = r8.z / r17.y;
              r8.z = max(6.10351563e-05, r8.z);
              r9.z = (int)r10.w & 0x0000ffff;
              if (enableDitheredShadow != 0) {
                r17.x = -r9.x;
                r18.z = (uint)r9.z;
                r17.y = r10.x;
                r17.z = r9.x;
                r9.w = 0;
                r10.w = 0;
                while (true) {
                  r12.w = cmp((int)r10.w >= 8);
                  if (r12.w != 0) break;
                  r19.x = dot(icb[r10.w+0].yx, r17.xy);
                  r19.y = dot(icb[r10.w+0].yx, r17.yz);
                  r18.xy = r19.xy * r8.ww + r16.xy;
                  r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.z).x;
                  r9.w = r12.w * 0.125 + r9.w;
                  r10.w = (int)r10.w + 1;
                }
              } else {
                r16.z = (uint)r9.z;
                r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.z).x;
              }
              r8.z = r9.w * r9.w;
              r8.z = r8.z * r9.w;
            } else {
              r8.z = 1;
            }
            r7.w = r8.z * r7.w;
          }
        }
      }
      r8.z = -r8.x * 0.5 + 1;
      r8.z = -abs(r6.w) * r8.z + 1;
      r8.z = r8.z * r8.z;
      r8.z = -r8.z * 0.620000005 + 0.620000005;
      r8.z = r8.z + -abs(r6.w);
      r8.z = r3.w * r8.z + abs(r6.w);
      r8.z = r8.z * r7.w;
      r8.w = cmp(0 < r6.w);
      r16.xyz = r8.zzz * r11.yzw + r14.xyz;
      r6.w = saturate(r6.w);
      r17.xyz = -v7.xyz * r0.xxx + sunConstants.wldDir.xyz;
      r0.x = dot(r17.xyz, r17.xyz);
      r0.x = rsqrt(r0.x);
      r17.xyz = r17.xyz * r0.xxx;
      r0.x = dot(r17.xyz, r0.yzw);
      r8.z = dot(r6.xyz, r17.xyz);
      r9.z = abs(r8.z) * r3.y + -abs(r8.z);
      r8.z = abs(r8.z) * r9.z + 1;
      r9.z = r6.w * r4.w + r5.x;
      r8.z = r8.z * r8.z;
      r8.z = r8.z * r9.z;
      r8.z = rcp(r8.z);
      r6.w = r6.w * r8.y;
      r6.w = r8.z * r6.w;
      r6.w = r6.w * r7.w;
      r17.xyz = r6.www * r11.yzw + r2.xyz;
      r0.x = saturate(1 + -r0.x);
      r7.w = r0.x * r0.x;
      r7.w = r7.w * r7.w;
      r0.x = r7.w * r0.x;
      r0.x = r6.w * r0.x;
      r18.xyz = r0.xxx * r11.zwy + r15.xyz;
      r16.w = r18.z;
      r14.w = r15.z;
      r14.xyzw = r8.wwww ? r16.xyzw : r14.xyzw;
      r18.zw = r17.xy;
      r15.zw = r2.xy;
      r16.xyzw = r8.wwww ? r18.xyzw : r15.xyzw;
      r2.z = r8.w ? r17.z : r2.z;
      r15.z = r14.w;
      r15.xy = r16.xy;
      r2.xy = r16.zw;
    }
  }
  r16.x = -r9.x;
  r0.x = ~(int)r2.w;
  r6.w = -r8.x * 0.5 + 1;
  r8.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v7.xyz;
  r18.w = 1;
  r19.w = 1;
  r16.z = r9.x;
  r20.w = 1;
  r21.z = 1;
  r22.w = 1;
  r16.yw = r10.xx;
  r9.y = r16.w;
  r23.w = 1;
  r10.y = r16.x;
  r10.z = r9.x;
  r24.w = 1;
  r25.x = r10.x;
  r25.y = r16.x;
  r25.z = r9.x;
  r26.x = r10.x;
  r26.y = r16.x;
  r26.z = r9.x;
  r27.x = r10.x;
  r27.y = r16.x;
  r27.z = r9.x;
  r11.yzw = r14.xyz;
  r28.xyz = r15.zxy;
  r29.xyz = r2.xyz;
  r7.w = enableDitheredShadow;
  r8.w = 0;
  while (true) {
    r9.z = cmp((uint)r8.w >= numLights);
    if (r9.z != 0) break;
    r8.z = (uint)r8.w >> 5;
    r17.xyz = (int3)r8.xyz + (int3)r13.xyz;
    r8.z = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r11.yzw;
    r30.xyz = r28.xyz;
    r31.xyz = r29.xyz;
    r9.z = r7.w;
    r9.w = r8.z;
    while (true) {
      if (r9.w == 0) break;
      r10.w = firstbitlow((uint)r9.w);
      r12.w = 1 << (int)r10.w;
      r13.w = (int)r9.w & (int)r12.w;
      if (r13.w != 0) {
        r9.w = (int)r9.w ^ (int)r12.w;
        r10.w = (int)r8.w + (int)r10.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(0), t11.xyzw
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r33.xy, r10.w, l(16), t11.xyxx
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
        r32.xyz = -v7.xyz + r32.xyz;
        r33.z = r32.w;
        r32.xyz = cmp(abs(r32.xyz) < r33.zxy);
        r12.w = r32.y ? r32.x : 0;
        r12.w = r32.z ? r12.w : 0;
        if (r12.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(0), t12.wxyz
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(16), t12.zxyw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(32), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(48), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(64), t12.yzwx
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(80), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(96), t12.yzwx
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
            r21.w = rsqrt(r15.w);
            r42.xyz = r42.xyz * r21.www;
            r21.w = dot(r6.xyz, r42.xyz);
            r25.w = cmp(0 < abs(r21.w));
            if (r25.w != 0) {
              r25.w = sqrt(r15.w);
              r26.w = r35.x * r35.x;
              r15.w = r26.w / r15.w;
              r15.w = min(1, r15.w);
              r42.xy = saturate(r25.ww * r34.xz + r34.yw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r15.w = r42.x * r15.w;
              r15.w = r15.w * r42.y;
              r25.w = cmp(0 < r15.w);
              if (r25.w != 0) {
                if (3 == 0) r25.w = 0; else if (3+27 < 32) {                 r25.w = (uint)r33.w << (32-(3 + 27)); r25.w = (uint)r25.w >> (32-3);                } else r25.w = (uint)r33.w >> 27;
                r25.w = cmp((int)r25.w != 1);
                if (r25.w != 0) {
                  r25.w = abs(r21.w) * -0.200000003 + 0.400000006;
                  r26.w = cmp(r21.w < 0);
                  r25.w = r26.w ? -r25.w : r25.w;
                  r42.xyz = r6.xyz * r25.www + v7.xyz;
                  r42.xyz = r42.xyz + -r36.xyz;
                  r25.w = max(abs(r42.y), abs(r42.z));
                  r25.w = max(abs(r42.x), r25.w);
                  r25.w = r37.x / r25.w;
                  r25.w = r25.w + r37.y;
                  r26.w = dot(r42.xyz, r42.xyz);
                  r26.w = rsqrt(r26.w);
                  r25.w = max(6.10351563e-05, r25.w);
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
                    r44.w = r44.y * r3.x;
                    r43.xyz = r42.xyz * r26.www + r44.xzw;
                    r29.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyzw, r25.w).x;
                    r27.w = r29.w * 0.125 + r27.w;
                    r28.w = (int)r28.w + 1;
                  }
                } else {
                  r27.w = 1;
                }
                r15.w = r27.w * r15.w;
                r25.w = cmp(0 < r15.w);
                if (r25.w != 0) {
                  r25.w = r33.x * r3.y;
                  r25.w = 0.25 * r25.w;
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
                  r14.w = r2.w ? r14.w : 0;
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
                    r26.w = abs(r21.w) * -0.200000003 + 0.400000006;
                    r28.w = cmp(r21.w < 0);
                    r26.w = r28.w ? -r26.w : r26.w;
                    r19.xyz = r6.xyz * r26.www + v7.xyz;
                    r26.w = dot(r41.xyzw, r19.xyzw);
                    r28.w = dot(r42.xyzw, r19.xyzw);
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
                      r41.x = dot(r41.xyzw, r19.xyzw);
                      r41.y = dot(r42.xyzw, r19.xyzw);
                      r19.xy = r41.xy / r28.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r44.zw;
                      r19.xy = r19.xy * r44.xy;
                      r41.xy = r14.ww / r43.xz;
                      r41.zw = float2(1,1) + -r41.xy;
                      r41.zw = cmp(r19.xy >= r41.zw);
                      r41.xy = cmp(r41.xy >= r19.xy);
                      r41.xy = (int2)r41.xy | (int2)r41.zw;
                      r19.z = (int)r41.y | (int)r41.x;
                      r19.xy = saturate(r19.xy);
                      r41.xy = r19.xy * r43.xz + r43.yw;
                      r19.x = r45.y * r28.w;
                      r19.y = r45.x * r28.w + r26.w;
                      r19.x = r19.y / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.y = (int)r29.w | (int)r19.z;
                    if (r19.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                    r13.w = samp0[]..swiz;
                      r19.x = max(6.10351563e-05, r19.x);
                      r13.w = (int)r13.w & 0x0000ffff;
                      if (r9.z != 0) {
                        r42.z = (uint)r13.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r19.z >= 8);
                          if (r26.w != 0) break;
                          r43.x = dot(icb[r19.z+0].yx, r16.xw);
                          r43.y = dot(icb[r19.z+0].xy, r9.xy);
                          r42.xy = r43.xy * r14.ww + r41.xy;
                          r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r19.x).x;
                          r19.y = r26.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r41.z = (uint)r13.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                      }
                      r13.w = r19.y * r19.y;
                      r13.w = r13.w * r19.y;
                    } else {
                      r13.w = 1;
                    }
                    r15.w = r15.w * r13.w;
                  } else {
                    if (4 == 0) r13.w = 0; else if (4+20 < 32) {                     r13.w = (uint)r33.w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                    } else r13.w = (uint)r33.w >> 20;
                    r14.w = cmp(0 < (uint)r13.w);
                    r14.w = r14.w ? r0.x : 0;
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
                      r19.x = abs(r21.w) * -0.200000003 + 0.400000006;
                      r19.z = cmp(r21.w < 0);
                      r19.x = r19.z ? -r19.x : r19.x;
                      r20.xyz = r6.xyz * r19.xxx + v7.xyz;
                      r19.x = dot(r41.xyzw, r20.xyzw);
                      r19.z = dot(r42.xyzw, r20.xyzw);
                      r26.w = cmp(r19.z < r19.x);
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
                        r41.x = dot(r41.xyzw, r20.xyzw);
                        r41.y = dot(r42.xyzw, r20.xyzw);
                        r20.xy = r41.xy / r19.zz;
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
                        r20.x = r45.y * r19.z;
                        r19.x = r45.x * r19.z + r19.x;
                        r19.x = r19.x / r20.x;
                      } else {
                        r20.z = -1;
                      }
                      r19.z = (int)r26.w | (int)r20.z;
                      if (r19.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                      r13.w = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r13.w = (int)r13.w & 0x0000ffff;
                        if (r9.z != 0) {
                          r20.z = (uint)r13.w;
                          r19.z = 0;
                          r26.w = 0;
                          while (true) {
                            r28.w = cmp((int)r26.w >= 8);
                            if (r28.w != 0) break;
                            r42.x = dot(icb[r26.w+0].xy, r10.xy);
                            r42.y = dot(icb[r26.w+0].yx, r10.xz);
                            r20.xy = r42.xy * r14.ww + r41.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                            r19.z = r20.x * 0.125 + r19.z;
                            r26.w = (int)r26.w + 1;
                          }
                        } else {
                          r41.z = (uint)r13.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                        }
                        r13.w = r19.z * r19.z;
                        r13.w = r13.w * r19.z;
                      } else {
                        r13.w = 1;
                      }
                      r15.w = r15.w * r13.w;
                    }
                  }
                  r13.w = -abs(r21.w) * r6.w + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -abs(r21.w);
                  r13.w = r3.w * r13.w + abs(r21.w);
                  r13.w = r13.w * r15.w;
                  r33.x = r32.x;
                  r14.w = cmp(0 < r21.w);
                  r20.xyz = r13.www * r33.xyz + r17.xyz;
                  r13.w = saturate(dot(r6.xyz, r40.xyz));
                  r39.xyz = r39.xyz * r12.www + r0.yzw;
                  r12.w = dot(r39.xyz, r39.xyz);
                  r12.w = rsqrt(r12.w);
                  r39.xyz = r39.xyz * r12.www;
                  r12.w = dot(r39.xyz, r0.yzw);
                  r19.x = dot(r6.xyz, r39.xyz);
                  r21.w = abs(r19.x) * r3.y + -abs(r19.x);
                  r19.x = abs(r19.x) * r21.w + 1;
                  r21.w = r13.w * r4.w + r5.x;
                  r19.x = r19.x * r19.x;
                  r19.x = r19.x * r21.w;
                  r19.x = rcp(r19.x);
                  r13.w = r13.w * r25.w;
                  r13.w = r19.x * r13.w;
                  r13.w = r13.w * r15.w;
                  r39.xyz = r13.www * r33.xyz + r31.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r15.w = r12.w * r12.w;
                  r15.w = r15.w * r15.w;
                  r12.w = r15.w * r12.w;
                  r12.w = r13.w * r12.w;
                  r40.xyz = r12.www * r33.xyz + r30.xyz;
                  r17.xyz = r14.www ? r20.xyz : r17.xyz;
                  r30.xyz = r14.www ? r40.xyz : r30.xyz;
                  r31.xyz = r14.www ? r39.xyz : r31.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r35.zw;
            r20.z = r36.w;
            r20.xyz = -v7.xyz + r20.xyz;
            r12.w = dot(r20.xyz, r20.xyz);
            r12.w = rsqrt(r12.w);
            r39.xyz = r20.xyz * r12.www;
            r13.w = dot(r6.xyz, r39.xyz);
            r14.w = cmp(0 < abs(r13.w));
            if (r14.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(112), t12.yzwx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(128), t12.zxyw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
              r41.xyz = r39.xyz;
              r41.w = r40.y;
              r14.w = dot(r41.xyzw, r18.xyzw);
              r15.w = cmp(r14.w < 1);
              if (r15.w != 0) {
                r42.xyz = float3(1,1,1);
                r15.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r10.w, l(172), t12.yzwx
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r10.w, l(188), t12.wxyz
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r10.w, l(204), t12.xyzw
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r10.w, l(236), t12.xxxx
              r19.x = samp0[]..swiz;
                r46.xyz = -v7.xyz + r32.yzw;
                r21.w = r35.x * r35.x;
                r25.w = dot(r46.xyz, r46.xyz);
                r21.w = r21.w / r25.w;
                r21.w = min(1, r21.w);
                r34.xy = saturate(r14.ww * r34.xz + r34.yw);
                r34.zw = r34.xy * r34.xy;
                r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                r34.xy = r34.zw * r34.xy;
                r21.w = r34.x * r21.w;
                r21.w = r21.w * r34.y;
                r36.w = r37.x;
                r34.x = dot(r36.xyzw, r18.xyzw);
                r46.xyz = r37.yzw;
                r46.w = r38.w;
                r34.y = dot(r46.xyzw, r18.xyzw);
                r21.xy = r34.xy / r14.ww;
                r14.w = cmp(r43.w < 0.00048828125);
                if (r14.w != 0) {
                  r44.y = r45.x;
                  r34.xy = saturate(abs(r21.xy) * r44.zw + r44.xy);
                  r34.zw = r34.xy * r34.xy;
                  r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                  r34.xy = r34.zw * r34.xy;
                  r14.w = r34.x * r34.y;
                } else {
                  r43.w = r44.y;
                  r34.xyzw = saturate(r43.xyzw * abs(r21.yyxx));
                  r34.xyzw = log2(r34.xyzw);
                  r34.xyzw = r44.xxxx * r34.xyzw;
                  r34.xyzw = exp2(r34.xyzw);
                  r34.xy = r34.xy + r34.zw;
                  r34.xy = log2(r34.xy);
                  r34.xy = r45.xx * r34.xy;
                  r34.xy = exp2(r34.xy);
                  r25.w = r44.z * r34.x;
                  r26.w = r44.w * r34.y + -1;
                  r25.w = r44.w * r34.y + -r25.w;
                  r25.w = saturate(r26.w / r25.w);
                  r26.w = r25.w * r25.w;
                  r25.w = r25.w * -2 + 3;
                  r14.w = r26.w * r25.w;
                }
                r15.w = r21.w * r14.w;
                r14.w = (int)r19.x & 255;
                if (r14.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyz, r10.w, l(220), t12.xyzx
                r34.x = samp0[]..swiz;
                r34.y = samp0[]..swiz;
                r34.z = samp0[]..swiz;
                  r19.x = dot(r45.yzw, r21.xyz);
                  r21.x = dot(r34.xyz, r21.xyz);
                  r34.x = frac(r19.x);
                  r34.y = frac(r21.x);
                  r14.w = (int)r14.w + -1;
                  r34.z = (uint)r14.w;
                  r42.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
                } else {
                  r42.xyz = float3(1,1,1);
                }
              }
              r32.yz = r33.yz;
              r21.xyw = r32.xyz * r42.xyz;
              r14.w = cmp(0 < r15.w);
              if (r14.w != 0) {
                if (3 == 0) r14.w = 0; else if (3+27 < 32) {                 r14.w = (uint)r33.w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);                } else r14.w = (uint)r33.w >> 27;
                r14.w = cmp((int)r14.w != 1);
                if (r14.w != 0) {
                  r14.w = abs(r13.w) * -0.200000003 + 0.400000006;
                  r19.x = cmp(r13.w < 0);
                  r14.w = r19.x ? -r14.w : r14.w;
                  r22.xyz = r6.xyz * r14.www + v7.xyz;
                  r39.xyz = r38.xyz;
                  r14.w = dot(r39.xyzw, r22.xyzw);
                  r19.x = dot(r41.xyzw, r22.xyzw);
                  r25.w = cmp(r19.x >= r14.w);
                  if (r25.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.y, r10.w, l(144), t12.xxxx
                  r40.y = samp0[]..swiz;
                    r36.w = r37.x;
                    r32.x = dot(r36.xyzw, r22.xyzw);
                    r38.xyz = r37.yzw;
                    r32.y = dot(r38.xyzw, r22.xyzw);
                    r22.xy = r32.xy / r19.xx;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r40.zw + r40.xy;
                    r10.w = r14.w / r19.x;
                    r10.w = max(6.10351563e-05, r10.w);
                    r14.w = (int)r33.w & 0x0000ffff;
                    if (r9.z != 0) {
                      r32.z = (uint)r14.w;
                      r19.x = 0;
                      r25.w = 0;
                      while (true) {
                        r26.w = cmp((int)r25.w >= 8);
                        if (r26.w != 0) break;
                        r34.x = dot(icb[r25.w+0].xy, r25.xy);
                        r34.y = dot(icb[r25.w+0].yx, r25.xz);
                        r32.xy = r34.xy * r35.yy + r22.xy;
                        r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r10.w).x;
                        r19.x = r26.w * 0.125 + r19.x;
                        r25.w = (int)r25.w + 1;
                      }
                    } else {
                      r22.z = (uint)r14.w;
                      r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r10.w).x;
                    }
                    r10.w = r19.x * r19.x;
                    r10.w = r10.w * r19.x;
                  } else {
                    r10.w = 1;
                  }
                } else {
                  r10.w = 1;
                }
                r10.w = r15.w * r10.w;
                r14.w = cmp(0 < r10.w);
                if (r14.w != 0) {
                  r14.w = r33.x * r3.y;
                  r14.w = 0.25 * r14.w;
                  if (4 == 0) r15.w = 0; else if (4+16 < 32) {                   r15.w = (uint)r33.w << (32-(4 + 16)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r33.w >> 16;
                  r22.x = cmp(0 < (uint)r15.w);
                  r22.x = r2.w ? r22.x : 0;
                  if (r22.x != 0) {
                    r15.w = (int)r15.w + numLights;
                    r15.w = (int)r15.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r15.w, l(52), t12.xxxx
                  r22.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(68), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r15.w, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r22.y = abs(r13.w) * -0.200000003 + 0.400000006;
                    r22.z = cmp(r13.w < 0);
                    r22.y = r22.z ? -r22.y : r22.y;
                    r23.xyz = r6.xyz * r22.yyy + v7.xyz;
                    r32.x = dot(r32.xyzw, r23.xyzw);
                    r32.y = dot(r34.xyzw, r23.xyzw);
                    r22.y = dot(r35.xyzw, r23.xyzw);
                    r22.z = dot(r36.xyzw, r23.xyzw);
                    r23.x = cmp(r22.z < r22.y);
                    r23.yz = r32.xy / r22.zz;
                    r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.yz = r23.yz + r38.zw;
                    r23.yz = r23.yz * r38.xy;
                    r32.xy = r22.xx / r37.xz;
                    r32.zw = float2(1,1) + -r32.xy;
                    r32.zw = cmp(r23.yz >= r32.zw);
                    r32.xy = cmp(r32.xy >= r23.yz);
                    r32.xy = (int2)r32.xy | (int2)r32.zw;
                    r25.w = (int)r32.y | (int)r32.x;
                    r23.x = (int)r23.x | (int)r25.w;
                    if (r23.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r15.w, l(28), t12.xxxx
                    r23.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r15.w, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r23.yz = saturate(r23.yz);
                      r33.xy = r23.yz * r37.xz + r37.yw;
                      r15.w = r32.y * r22.z;
                      r22.y = r32.x * r22.z + r22.y;
                      r15.w = r22.y / r15.w;
                      r15.w = max(6.10351563e-05, r15.w);
                      r22.y = r23.x ? 0.000000 : 0;
                      if (r9.z != 0) {
                        r23.z = (uint)r22.y;
                        r22.z = 0;
                        r25.w = 0;
                        while (true) {
                          r26.w = cmp((int)r25.w >= 8);
                          if (r26.w != 0) break;
                          r32.x = dot(icb[r25.w+0].xy, r26.xy);
                          r32.y = dot(icb[r25.w+0].yx, r26.xz);
                          r23.xy = r32.xy * r22.xx + r33.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r15.w).x;
                          r22.z = r23.x * 0.125 + r22.z;
                          r25.w = (int)r25.w + 1;
                        }
                      } else {
                        r33.z = (uint)r22.y;
                        r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r15.w).x;
                      }
                      r15.w = r22.z * r22.z;
                      r15.w = r15.w * r22.z;
                    } else {
                      r15.w = 1;
                    }
                    r10.w = r15.w * r10.w;
                  } else {
                    if (4 == 0) r15.w = 0; else if (4+20 < 32) {                     r15.w = (uint)r33.w << (32-(4 + 20)); r15.w = (uint)r15.w >> (32-4);                    } else r15.w = (uint)r33.w >> 20;
                    r22.x = cmp(0 < (uint)r15.w);
                    r22.x = r22.x ? r0.x : 0;
                    if (r22.x != 0) {
                      r15.w = (int)r15.w + numLights;
                      r15.w = (int)r15.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r15.w, l(52), t12.xxxx
                    r22.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r22.y = abs(r13.w) * -0.200000003 + 0.400000006;
                      r23.x = cmp(r13.w < 0);
                      r22.y = r23.x ? -r22.y : r22.y;
                      r24.xyz = r6.xyz * r22.yyy + v7.xyz;
                      r23.x = dot(r32.xyzw, r24.xyzw);
                      r23.y = dot(r33.xyzw, r24.xyzw);
                      r22.y = dot(r34.xyzw, r24.xyzw);
                      r23.z = dot(r35.xyzw, r24.xyzw);
                      r24.x = cmp(r23.z < r22.y);
                      r23.xy = r23.xy / r23.zz;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r37.zw;
                      r23.xy = r23.xy * r37.xy;
                      r24.yz = r22.xx / r36.xz;
                      r32.xy = float2(1,1) + -r24.yz;
                      r32.xy = cmp(r23.xy >= r32.xy);
                      r24.yz = cmp(r24.yz >= r23.xy);
                      r24.yz = (int2)r24.yz | (int2)r32.xy;
                      r24.y = (int)r24.z | (int)r24.y;
                      r24.x = (int)r24.x | (int)r24.y;
                      if (r24.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r15.w, l(28), t12.xxxx
                      r24.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.yz, r15.w, l(164), t12.xxyx
                      r24.y = samp0[]..swiz;
                      r24.z = samp0[]..swiz;
                        r23.xy = saturate(r23.xy);
                        r32.xy = r23.xy * r36.xz + r36.yw;
                        r15.w = r24.z * r23.z;
                        r22.y = r24.y * r23.z + r22.y;
                        r15.w = r22.y / r15.w;
                        r15.w = max(6.10351563e-05, r15.w);
                        r22.y = r24.x ? 0.000000 : 0;
                        if (r9.z != 0) {
                          r23.z = (uint)r22.y;
                          r24.xy = float2(0,0);
                          while (true) {
                            r24.z = cmp((int)r24.y >= 8);
                            if (r24.z != 0) break;
                            r33.x = dot(icb[r24.y+0].xy, r27.xy);
                            r33.y = dot(icb[r24.y+0].yx, r27.xz);
                            r23.xy = r33.xy * r22.xx + r32.xy;
                            r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r15.w).x;
                            r24.x = r23.x * 0.125 + r24.x;
                            r24.y = (int)r24.y + 1;
                          }
                        } else {
                          r32.z = (uint)r22.y;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r15.w).x;
                        }
                        r15.w = r24.x * r24.x;
                        r15.w = r15.w * r24.x;
                      } else {
                        r15.w = 1;
                      }
                      r10.w = r15.w * r10.w;
                    }
                  }
                  r15.w = -abs(r13.w) * r6.w + 1;
                  r15.w = r15.w * r15.w;
                  r15.w = -r15.w * 0.620000005 + 0.620000005;
                  r15.w = r15.w + -abs(r13.w);
                  r15.w = r3.w * r15.w + abs(r13.w);
                  r15.w = r15.w * r10.w;
                  r22.x = cmp(0 < r13.w);
                  r23.xyz = r15.www * r21.xyw + r17.xyz;
                  r13.w = saturate(r13.w);
                  r20.xyz = r20.xyz * r12.www + r0.yzw;
                  r12.w = dot(r20.xyz, r20.xyz);
                  r12.w = rsqrt(r12.w);
                  r20.xyz = r20.xyz * r12.www;
                  r12.w = dot(r20.xyz, r0.yzw);
                  r15.w = dot(r6.xyz, r20.xyz);
                  r20.x = abs(r15.w) * r3.y + -abs(r15.w);
                  r15.w = abs(r15.w) * r20.x + 1;
                  r20.x = r13.w * r4.w + r5.x;
                  r15.w = r15.w * r15.w;
                  r15.w = r15.w * r20.x;
                  r15.w = rcp(r15.w);
                  r13.w = r13.w * r14.w;
                  r13.w = r15.w * r13.w;
                  r10.w = r13.w * r10.w;
                  r20.xyz = r10.www * r21.xyw + r31.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r13.w = r12.w * r12.w;
                  r13.w = r13.w * r13.w;
                  r12.w = r13.w * r12.w;
                  r10.w = r12.w * r10.w;
                  r21.xyw = r10.www * r21.xyw + r30.xyz;
                  r17.xyz = r22.xxx ? r23.xyz : r17.xyz;
                  r30.xyz = r22.xxx ? r21.xyw : r30.xyz;
                  r31.xyz = r22.xxx ? r20.xyz : r31.xyz;
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
    r11.yzw = r17.xyz;
    r28.xyz = r30.xyz;
    r29.xyz = r31.xyz;
    r8.w = (int)r8.w + 32;
  }
  r0.xyz = float3(1,1,1) + -r7.xyz;
  r0.xyz = r28.xyz * r0.xyz;
  r0.xyz = r29.xyz * r7.xyz + r0.xyz;
  r0.xyz = r11.yzw * r4.xyz + r0.xyz;
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
    r0.w = dot(v7.xyz, v7.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyw = v7.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r2.x = cmp(0 < fogConstants.blendAmount);
    if (r2.x != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r2.z = cmp(0.00999999978 < abs(v7.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
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
      r3.x = cmp(0.00999999978 < abs(v7.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v7.z;
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
    r0.w = fogConstants.heightFalloff * v7.z;
    r2.x = fogConstants.heightFalloff * v7.z + fogConstants.K0;
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
    r2.x = dot(v7.xyz, v7.xyz);
    r2.y = sqrt(r2.x);
    r0.w = r0.w * r2.y + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.x = rsqrt(r2.x);
    r2.xyz = v7.xyz * r2.xxx;
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