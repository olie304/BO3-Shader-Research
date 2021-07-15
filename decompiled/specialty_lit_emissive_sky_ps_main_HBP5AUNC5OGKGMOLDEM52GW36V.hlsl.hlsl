// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:09 2021

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
SamplerState lookupSampler_s : register(s5);
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
Texture2D<float4> flickerLookupMap : register(t25);
Texture2D<float4> emissiveMap : register(t26);
Texture2D<float4> alphaMask : register(t29);
Texture2D<float4> distortionMap : register(t30);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
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
  r5.x = saturate(0.0588235296 * glossRange.y);
  r5.yzw = normalMap.Sample(normalSampler_s, r3.zw).xyz;
  r5.yzw = float3(-0.5,-0.5,-0) + r5.yzw;
  r5.yzw = baseNormalHeight * r5.yzw + float3(0.5,0.5,0);
  r5.yz = r5.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r6.x = dot(r5.yz, r5.yz);
  r6.x = 1 + -r6.x;
  r6.x = max(0, r6.x);
  r6.x = sqrt(r6.x);
  r5.w = r5.w * r5.w;
  r5.w = 0.333333343 * r5.w;
  r5.w = min(1, r5.w);
  r6.y = v8.x ? 1 : -1;
  r6.z = dot(v4.xyz, v4.xyz);
  r6.z = rsqrt(r6.z);
  r7.xyz = v4.xyz * r6.zzz;
  r7.xyz = r7.xyz * r6.yyy;
  r6.z = dot(v5.xyz, v5.xyz);
  r6.z = rsqrt(r6.z);
  r8.xyz = v5.xyz * r6.zzz;
  r8.xyz = r8.xyz * r6.yyy;
  r6.z = dot(v6.xyz, v6.xyz);
  r6.z = rsqrt(r6.z);
  r9.xyz = v6.xyz * r6.zzz;
  r6.yzw = r9.xyz * r6.yyy;
  r5.x = -17 * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r5.w + r5.x;
  r5.x = log2(r5.x);
  r5.x = -0.0588235296 * r5.x;
  r9.y = max(0, r5.x);
  r5.xzw = r6.yzw * r5.zzz;
  r5.xyz = r8.xyz * r5.yyy + r5.xzw;
  r5.xyz = r7.xyz * r6.xxx + r5.xyz;
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = rsqrt(r5.w);
  r5.xyz = r5.xyz * r5.www;
  if (r1.w != 0) {
    r1.w = rowCount * columnCount;
    r6.x = imageTime * r1.w;
    r6.y = gameTime.w * r6.x;
    r6.y = cmp(r6.y >= -r6.y);
    r6.y = r6.y ? r6.x : -r6.x;
    r6.z = 1 / r6.y;
    r6.z = gameTime.w * r6.z;
    r6.z = frac(r6.z);
    r6.y = r6.y * r6.z;
    r6.x = r6.y / r6.x;
    r1.w = r6.x * r1.w;
    r1.w = round(r1.w);
    r6.x = r1.w / columnCount;
    r6.y = columnCount * r1.w;
    r6.y = cmp(r6.y >= -r6.y);
    r6.y = r6.y ? columnCount : -columnCount;
    r6.z = 1 / r6.y;
    r1.w = r6.z * r1.w;
    r1.w = frac(r1.w);
    r1.w = r6.y * r1.w;
    r1.w = trunc(r1.w);
    r1.w = r3.z + r1.w;
    r7.x = r1.w / columnCount;
    r1.w = trunc(r6.x);
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
    sincos(r1.w, r6.x, r8.x);
    r8.y = r8.x;
    r8.z = r6.x;
    r10.x = dot(r8.yz, r1.xy);
    r8.x = -r6.x;
    r10.y = dot(r8.xy, r1.xy);
    r1.xy = gameTime.ww * scrollUVs.xy;
    r1.xy = r1.xy * scaleUVs.xy + r10.xy;
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
  r6.xyzw = emissiveMap.Sample(colorSampler_s, r1.xy).xyzw;
  r1.xyw = colorTint.xyz * r6.xyz;
  r6.xyz = saturate(r1.xyw);
  r6.xyz = log2(r6.xyz);
  r6.xyz = alphaCooling * r6.xyz;
  r6.xyz = exp2(r6.xyz);
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
  r3.w = invertFalloff * r6.w;
  r3.z = r3.w * r3.z;
  r1.xyw = r3.zzz * r1.xyw;
  r6.xyz = r6.xyz * r3.zzz;
  r3.z = v3.x + v3.y;
  r3.z = v3.z + r3.z;
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
  r3.w = r4.w * w1.x + r3.w;
  r2.zw = maskScaleUVs.xy * r2.zw;
  r2.xy = r2.xy * maskScaleUVs.xy + r2.zw;
  r2.xy = maskOffsetUVs.xy * maskScaleUVs.xy + r2.xy;
  r2.z = gameTime.w * maskRotateUVs.y + 1;
  r2.z = maskRotateUVs.x * r2.z;
  r2.z = 0.0174532924 * r2.z;
  sincos(r2.z, r7.x, r8.x);
  r8.y = r8.x;
  r8.z = r7.x;
  r10.x = dot(r8.yz, r2.xy);
  r8.x = -r7.x;
  r10.y = dot(r8.xy, r2.xy);
  r2.xy = gameTime.ww * maskScrollUVs.xy;
  r2.xy = r2.xy * maskScaleUVs.xy + r10.xy;
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
  r2.y = r3.w * r2.x;
  r1.z = r1.z * r1.z;
  r1.z = saturate(r1.z * w2.x + w2.y);
  r1.z = r2.y * r1.z;
  r8.xy = (int2)v0.xy;
  r8.zw = float2(0,0);
  r2.y = floatZSampler.Load(r8.xyz).x;
  r2.z = cmp(r2.y >= 0.984375);
  r2.w = 1.01587307 * r2.y;
  r2.y = r2.y * 64 + -63;
  r2.y = r2.z ? r2.y : r2.w;
  r2.y = max(9.99999994e-09, r2.y);
  r2.z = cmp(v0.z >= 0.984375);
  r2.w = 1.01587307 * v0.z;
  r3.x = v0.z * 64 + -63;
  r2.z = r2.z ? r3.x : r2.w;
  r2.z = max(9.99999994e-09, r2.z);
  r2.yz = rcp(r2.yz);
  r2.w = 1 / invertFalloff;
  r2.w = r7.y ? 60000 : r2.w;
  r2.y = r2.y + -r2.z;
  r2.y = saturate(r2.y * r2.w);
  r1.z = r2.y * r1.z;
  r2.yw = (uint2)v0.xy;
  r3.x = cmp(isDepthHack != 0);
  r3.yw = (uint2)r2.wy;
  r4.w = dot(r3.wy, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r7.x, r8.x);
  r3.y = dot(r3.yw, float2(0.0671105608,0.00583714992));
  r3.y = frac(r3.y);
  r3.y = 52.9829178 * r3.y;
  r3.y = frac(r3.y);
  r3.y = r3.y * 6.28318548 + gameTick.w;
  sincos(r3.y, r10.x, r11.x);
  r9.x = saturate(dot(r5.xyz, r0.yzw));
  r3.y = dot(-r0.yzw, r5.xyz);
  r3.y = r3.y + r3.y;
  r12.xyz = r5.xyz * -r3.yyy + -r0.yzw;
  r3.y = 17 * r9.y;
  r3.y = exp2(r3.y);
  r3.y = 2 + r3.y;
  r3.y = 2 / r3.y;
  r3.w = sqrt(r3.y);
  r4.w = 1 + -r9.y;
  r6.w = 5 * r4.w;
  r7.z = r4.w * 5 + -2.5;
  r7.z = 0.400000006 * r7.z;
  r7.z = max(0, r7.z);
  r9.zw = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r9.z);
  r7.w = r9.x * r7.w;
  r7.zw = float2(100,9.1368103) * r7.zw;
  r8.w = r6.w * r4.w;
  r8.w = -r8.w * 2.0159049 + r9.w;
  r8.w = exp2(r8.w);
  r8.w = r9.x * r8.w;
  r8.w = 9.70808983 * r8.w;
  r7.w = max(r8.w, r7.w);
  r7.w = max(1.26815999, r7.w);
  r8.w = numRefProbes + -numOverrideProbes;
  r2.z = 0.0078125 * r2.z;
  r2.z = min(15, r2.z);
  r2.z = (uint)r2.z;
  r13.xy = (uint2)r2.yw >> int2(6,6);
  r13.z = (uint)r2.z << 4;
  r2.y = (int)r8.w & -32;
  r2.z = (int)-r2.y + (int)r8.w;
  r2.w = numRefProbes & -32;
  r9.z = (int)-r2.w + numRefProbes;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.x = 1;
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r9.w = r2.y;
  while (true) {
    r10.y = cmp((uint)r9.w >= numRefProbes);
    if (r10.y != 0) break;
    r14.z = (uint)r9.w >> 5;
    r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
    r10.y = visibleProbes.Load(r15.xyzw).x;
    r10.z = cmp((int)r2.y == (int)r9.w);
    bitmask.w = ((~(-1 << r2.z)) << 0) & 0xffffffff;  r10.w = (((uint)0 << 0) & bitmask.w) | ((uint)r10.y & ~bitmask.w);
    r10.y = r10.z ? r10.w : r10.y;
    r10.z = cmp((int)r2.w == (int)r9.w);
    if (r9.z == 0) r10.w = 0; else if (r9.z+0 < 32) {     r10.w = (uint)r10.y << (32-(r9.z + 0)); r10.w = (uint)r10.w >> (32-r9.z);    } else r10.w = (uint)r10.y >> 0;
    r10.y = r10.z ? r10.w : r10.y;
    r10.z = (int)r9.w + numLights;
    r23.xyzw = r21.xyzw;
    r24.xyz = r22.yzw;
    r10.w = r10.y;
    while (true) {
      if (r10.w == 0) break;
      r11.y = firstbitlow((uint)r10.w);
      r11.z = 1 << (int)r11.y;
      r11.w = (int)r10.w & (int)r11.z;
      if (r11.w != 0) {
        r10.w = (int)r10.w ^ (int)r11.z;
        r11.z = (int)r10.z + (int)r11.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r11.z, l(0), t11.xyzw
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
      r25.z = samp0[]..swiz;
      r25.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r11.z, l(16), t11.xyxx
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
        r25.xyz = -v7.xyz + r25.xyz;
        r15.z = r25.w;
        r15.xyz = cmp(abs(r25.xyz) < r15.zxy);
        r11.z = r15.y ? r15.x : 0;
        r11.z = r15.z ? r11.z : 0;
        if (r11.z != 0) {
          r11.y = (int)r9.w + (int)r11.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r11.y, l(0), t15.wxyz
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.zw, r11.y, l(96), t15.xxxy
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r11.y, l(116), t15.zwxy
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
          r15.xyz = v7.xyz + -r25.yzw;
          r13.w = (int)r26.w & 0x0000ffff;
          if (6 == 0) r14.z = 0; else if (6+25 < 32) {           r14.z = (uint)r26.w << (32-(6 + 25)); r14.z = (uint)r14.z >> (32-6);          } else r14.z = (uint)r26.w >> 25;
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
          r14.w = dot(r27.xyz, r15.xyz);
          r14.w = saturate(r14.w + r27.w);
          r16.w = dot(r28.xyz, r15.xyz);
          r16.w = saturate(r16.w + r28.w);
          r14.w = r16.w * r14.w;
          r16.w = dot(r29.xyz, r15.xyz);
          r16.w = saturate(r16.w + r29.w);
          r14.w = r16.w * r14.w;
          r16.w = dot(r30.xyz, r15.xyz);
          r16.w = saturate(r16.w + r30.w);
          r14.w = r16.w * r14.w;
          r16.w = dot(r31.xyz, r15.xyz);
          r16.w = saturate(r16.w + r31.w);
          r14.w = r16.w * r14.w;
          r16.w = dot(r32.xyz, r15.xyz);
          r16.w = saturate(r16.w + r32.w);
          r16.x = r16.w * r14.w;
          r14.w = (int)r11.z & 1;
          r16.xw = r14.ww ? r16.xy : r16.zx;
          r14.w = r11.z;
          r27.xy = r16.xw;
          r17.w = 1;
          while (true) {
            r18.z = cmp((int)r17.w >= (int)r14.z);
            if (r18.z != 0) break;
            r18.z = (int)r13.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r18.z, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r18.z, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.z, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.z, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.z, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.z, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r18.z = dot(r28.xyz, r15.xyz);
            r18.z = saturate(r18.z + r28.w);
            r18.z = r27.x * r18.z;
            r18.w = dot(r29.xyz, r15.xyz);
            r18.w = saturate(r18.w + r29.w);
            r18.z = r18.z * r18.w;
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
            r27.x = r18.z * r18.w;
            r19.w = (uint)r14.w >> 2;
            if (1 == 0) r20.w = 0; else if (1+2 < 32) {             r20.w = (uint)r14.w << (32-(1 + 2)); r20.w = (uint)r20.w >> (32-1);            } else r20.w = (uint)r14.w >> 2;
            r25.w = (int)r19.w & 2;
            r27.z = max(r27.y, r27.x);
            r18.z = -r18.z * r18.w + 1;
            r18.z = r27.y * r18.z;
            r18.y = r25.w ? r18.z : r27.z;
            r27.xy = r20.ww ? r27.xy : r18.xy;
            r17.w = (int)r17.w + 1;
            r14.w = r19.w;
          }
          r27.y = saturate(r27.y);
          r11.z = r27.y * r11.w;
          r13.w = cmp(0 < r11.z);
          if (r13.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r11.y, l(16), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.y, l(32), t15.yxwz
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r11.y, l(48), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.y, l(64), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.y, l(80), t15.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.y, l(132), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.y, l(148), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.y, l(164), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r11.y, l(180), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r11.y, l(196), t15.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r11.y, l(212), t15.xyxx
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
            r24.z = r27.y * r11.w + r24.z;
            r11.y = r11.z * r26.z;
            r26.z = r33.z;
            r11.z = dot(r12.xyz, r26.xyz);
            r11.w = dot(r15.xyz, r26.xyz);
            r11.w = r11.w + -r33.w;
            r13.w = cmp(r11.w >= 0);
            r11.w = max(abs(r11.w), r7.z);
            r11.w = r13.w ? r11.w : -r11.w;
            r11.z = max(1.00000001e-07, -r11.z);
            r11.z = r11.w / r11.z;
            r11.z = min(131072, abs(r11.z));
            r33.z = r34.z;
            r11.w = dot(r12.xyz, r33.xyz);
            r13.w = dot(r15.xyz, r33.xyz);
            r13.w = r13.w + -r34.w;
            r14.z = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r14.z ? r13.w : -r13.w;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.w / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r34.z = r35.z;
            r11.w = dot(r12.xyz, r34.xyz);
            r13.w = dot(r15.xyz, r34.xyz);
            r13.w = r13.w + -r35.w;
            r14.z = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r14.z ? r13.w : -r13.w;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.w / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r35.z = r36.z;
            r11.w = dot(r12.xyz, r35.xyz);
            r13.w = dot(r15.xyz, r35.xyz);
            r13.w = r13.w + -r36.w;
            r14.z = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r14.z ? r13.w : -r13.w;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.w / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r36.z = r37.x;
            r11.w = dot(r12.xyz, r36.xyz);
            r13.w = dot(r15.xyz, r36.xyz);
            r13.w = r13.w + -r37.y;
            r14.z = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r14.z ? r13.w : -r13.w;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.w / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r38.zw = r37.zw;
            r11.w = dot(r12.zxy, r38.xzw);
            r13.w = dot(r15.zxy, r38.xzw);
            r13.w = r13.w + -r38.y;
            r14.z = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r7.z);
            r13.w = r14.z ? r13.w : -r13.w;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r13.w / r11.w;
            r11.z = min(r11.z, abs(r11.w));
            r26.x = r30.w;
            r26.yz = r31.zw;
            r18.yzw = r26.xyz + r15.xyz;
            r18.yzw = r12.xyz * r11.zzz + r18.yzw;
            r11.w = dot(r18.yzw, r18.yzw);
            r11.w = sqrt(r11.w);
            r11.z = r11.z / r11.w;
            r11.z = r11.z + r11.z;
            r11.z = sqrt(r11.z);
            r11.z = r4.w * 5 + r11.z;
            r11.z = -0.844799995 + r11.z;
            r25.y = r28.z;
            r25.z = r29.x;
            r33.x = dot(r18.yzw, r25.xyz);
            r26.xy = r28.xw;
            r26.z = r29.w;
            r33.y = dot(r18.yzw, r26.xyz);
            r29.x = r28.y;
            r33.z = dot(r18.yzw, r29.xyz);
            if (9 == 0) r11.w = 0; else if (9+16 < 32) {             r11.w = (uint)r26.w << (32-(9 + 16)); r11.w = (uint)r11.w >> (32-9);            } else r11.w = (uint)r26.w >> 16;
            r33.w = (uint)r11.w;
            r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r11.z).xyz;
            r28.x = dot(r15.xyz, r25.xyz);
            r28.y = dot(r15.xyz, r26.xyz);
            r28.z = dot(r15.xyz, r29.xyz);
            r15.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
            r31.z = r32.x;
            r15.xyz = r15.xyz * r31.xyz + r32.yzw;
            r33.x = dot(r5.xyz, r25.xyz);
            r33.y = dot(r5.xyz, r26.xyz);
            r33.z = dot(r5.xyz, r29.xyz);
            r25.xyz = cmp(float3(0,0,0) < r33.xyz);
            r17.z = r25.x ? 0 : 0.5;
            r26.xyz = r17.xyz + r15.xyz;
            r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
            r27.xzw = r33.xyz * r33.xyz;
            r27.xzw = r27.xzw * r11.yyy;
            r19.z = r25.y ? 0 : 0.5;
            r25.xyw = r19.xyz + r15.xyz;
            r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
            r25.xyw = r25.xyw * r27.zzz;
            r25.xyw = r26.xyz * r27.xxx + r25.xyw;
            r20.z = r25.z ? 0 : 0.5;
            r15.xyz = r20.xyz + r15.xyz;
            r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
            r15.xyz = r15.xyz * r27.www + r25.xyw;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
            r26.xyz = r25.xyz * r15.xyz;
            r11.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r23.xyz = r15.xyz * r25.xyz + r23.xyz;
            r11.w = r11.z * r7.w;
            r15.xyz = r18.yzw * r11.yyy;
            r11.y = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r11.y = r7.w * r11.z + r11.y;
            r11.y = r11.w / r11.y;
            r25.x = r23.w;
            r25.yz = r24.xy;
            r24.xyw = r15.yzx * r11.yyy + r25.yzx;
            r23.w = r24.w;
          }
        }
      }
    }
    r21.xyzw = r23.xyzw;
    r22.yzw = r24.xyz;
    r9.w = (int)r9.w + 32;
  }
  r2.w = cmp(r22.w < 1);
  if (r2.w != 0) {
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r20.xy = float2(0,0);
    r23.x = r21.w;
    r23.yzw = r22.yzw;
    r10.yzw = r21.xyz;
    r2.w = r22.w;
    r9.z = 0;
    while (true) {
      r9.w = cmp((uint)r9.z >= (uint)r8.w);
      if (r9.w != 0) break;
      r14.z = (uint)r9.z >> 5;
      r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
      r9.w = visibleProbes.Load(r15.xyzw).x;
      r11.y = cmp((int)r2.y == (int)r9.z);
      if (r2.z == 0) r11.z = 0; else if (r2.z+0 < 32) {       r11.z = (uint)r9.w << (32-(r2.z + 0)); r11.z = (uint)r11.z >> (32-r2.z);      } else r11.z = (uint)r9.w >> 0;
      r9.w = r11.y ? r11.z : r9.w;
      r11.y = (int)r9.z + numLights;
      r24.xyzw = r23.xyzw;
      r15.xyz = r10.yzw;
      r11.z = r2.w;
      r11.w = r9.w;
      while (true) {
        if (r11.w == 0) break;
        r13.w = firstbitlow((uint)r11.w);
        r14.z = 1 << (int)r13.w;
        r14.w = (int)r11.w & (int)r14.z;
        if (r14.w != 0) {
          r11.w = (int)r11.w ^ (int)r14.z;
          r14.z = (int)r11.y + (int)r13.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r14.z, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r14.z, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v7.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r14.z = r25.y ? r25.x : 0;
          r14.z = r25.z ? r14.z : 0;
          if (r14.z != 0) {
            r13.w = (int)r9.z + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r13.w, l(96), t15.xxxy
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(116), t15.zwxy
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
            r18.z = dot(r28.xyz, r27.xyz);
            r18.z = saturate(r18.z + r28.w);
            r18.w = dot(r29.xyz, r27.xyz);
            r18.w = saturate(r18.w + r29.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r30.xyz, r27.xyz);
            r18.w = saturate(r18.w + r30.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r31.xyz, r27.xyz);
            r18.w = saturate(r18.w + r31.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r32.xyz, r27.xyz);
            r18.w = saturate(r18.w + r32.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r33.xyz, r27.xyz);
            r18.w = saturate(r18.w + r33.w);
            r16.x = r18.z * r18.w;
            r18.z = (int)r14.z & 1;
            r18.zw = r18.zz ? r16.xy : r16.zx;
            r16.x = r14.z;
            r28.xy = r18.zw;
            r19.w = 1;
            while (true) {
              r20.w = cmp((int)r19.w >= (int)r17.w);
              if (r20.w != 0) break;
              r20.w = (int)r16.w + (int)r19.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r20.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r20.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r20.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r20.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r20.w = dot(r29.xyz, r27.xyz);
              r20.w = saturate(r20.w + r29.w);
              r20.w = r28.x * r20.w;
              r25.w = dot(r30.xyz, r27.xyz);
              r25.w = saturate(r25.w + r30.w);
              r20.w = r25.w * r20.w;
              r25.w = dot(r31.xyz, r27.xyz);
              r25.w = saturate(r25.w + r31.w);
              r20.w = r25.w * r20.w;
              r25.w = dot(r32.xyz, r27.xyz);
              r25.w = saturate(r25.w + r32.w);
              r20.w = r25.w * r20.w;
              r25.w = dot(r33.xyz, r27.xyz);
              r25.w = saturate(r25.w + r33.w);
              r20.w = r25.w * r20.w;
              r25.w = dot(r34.xyz, r27.xyz);
              r25.w = saturate(r25.w + r34.w);
              r28.x = r25.w * r20.w;
              r27.w = (uint)r16.x >> 2;
              if (1 == 0) r28.z = 0; else if (1+2 < 32) {               r28.z = (uint)r16.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);              } else r28.z = (uint)r16.x >> 2;
              r28.w = (int)r27.w & 2;
              r29.x = max(r28.y, r28.x);
              r20.w = -r20.w * r25.w + 1;
              r20.w = r28.y * r20.w;
              r18.y = r28.w ? r20.w : r29.x;
              r28.xy = r28.zz ? r28.xy : r18.xy;
              r19.w = (int)r19.w + 1;
              r16.x = r27.w;
            }
            r14.z = saturate(r28.y + -r11.z);
            r16.x = r14.z * r14.w;
            r16.w = cmp(0 < r16.x);
            if (r16.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(16), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r13.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r24.w = r14.z * r14.w + r24.w;
              r13.w = r16.x * r26.z;
              r26.z = r34.z;
              r14.z = dot(r12.xyz, r26.xyz);
              r14.w = dot(r27.xyz, r26.xyz);
              r14.w = r14.w + -r34.w;
              r16.x = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r7.z);
              r14.w = r16.x ? r14.w : -r14.w;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r14.w / r14.z;
              r14.z = min(131072, abs(r14.z));
              r34.z = r35.z;
              r14.w = dot(r12.xyz, r34.xyz);
              r16.x = dot(r27.xyz, r34.xyz);
              r16.x = r16.x + -r35.w;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r7.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r35.z = r36.z;
              r14.w = dot(r12.xyz, r35.xyz);
              r16.x = dot(r27.xyz, r35.xyz);
              r16.x = r16.x + -r36.w;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r7.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r36.z = r37.z;
              r14.w = dot(r12.xyz, r36.xyz);
              r16.x = dot(r27.xyz, r36.xyz);
              r16.x = r16.x + -r37.w;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r7.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r37.z = r38.x;
              r14.w = dot(r12.xyz, r37.xyz);
              r16.x = dot(r27.xyz, r37.xyz);
              r16.x = r16.x + -r38.y;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r7.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r39.zw = r38.zw;
              r14.w = dot(r12.zxy, r39.xzw);
              r16.x = dot(r27.zxy, r39.xzw);
              r16.x = r16.x + -r39.y;
              r16.w = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r7.z);
              r16.x = r16.w ? r16.x : -r16.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r16.x / r14.w;
              r14.z = min(r14.z, abs(r14.w));
              r26.x = r31.w;
              r26.yz = r32.zw;
              r18.yzw = r26.xyz + r27.xyz;
              r18.yzw = r12.xyz * r14.zzz + r18.yzw;
              r14.w = dot(r18.yzw, r18.yzw);
              r14.w = sqrt(r14.w);
              r14.z = r14.z / r14.w;
              r14.z = r14.z + r14.z;
              r14.z = sqrt(r14.z);
              r14.z = r4.w * 5 + r14.z;
              r14.z = -0.844799995 + r14.z;
              r25.y = r29.z;
              r25.z = r30.x;
              r34.x = dot(r18.yzw, r25.xyz);
              r26.xy = r29.xw;
              r26.z = r30.w;
              r34.y = dot(r18.yzw, r26.xyz);
              r30.x = r29.y;
              r34.z = dot(r18.yzw, r30.xyz);
              if (9 == 0) r14.w = 0; else if (9+16 < 32) {               r14.w = (uint)r26.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);              } else r14.w = (uint)r26.w >> 16;
              r34.w = (uint)r14.w;
              r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r14.z).xyz;
              r29.x = dot(r27.xyz, r25.xyz);
              r29.y = dot(r27.xyz, r26.xyz);
              r29.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r5.xyz, r25.xyz);
              r34.y = dot(r5.xyz, r26.xyz);
              r34.z = dot(r5.xyz, r30.xyz);
              r25.xyz = cmp(float3(0,0,0) < r34.xyz);
              r17.z = r25.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r17.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xzw = r34.xyz * r34.xyz;
              r28.xzw = r28.xzw * r13.www;
              r19.z = r25.y ? 0 : 0.5;
              r25.xyw = r27.xyz + r19.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r28.zzz;
              r25.xyw = r26.xyz * r28.xxx + r25.xyw;
              r20.z = r25.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r20.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r25.xyz = r26.xyz * r28.www + r25.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r25.xyz;
              r14.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r15.xyz = r25.xyz * r26.xyz + r15.xyz;
              r14.w = r14.z * r7.w;
              r18.yzw = r18.yzw * r13.www;
              r13.w = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r13.w = r7.w * r14.z + r13.w;
              r13.w = r14.w / r13.w;
              r24.xyz = r18.yzw * r13.www + r24.xyz;
            }
          }
        }
      }
      r23.xyzw = r24.xyzw;
      r10.yzw = r15.xyz;
      r9.z = (int)r9.z + 32;
    }
    r22.xyzw = r23.zxyw;
    r21.xyz = r10.yzw;
    r22.xyzw = r22.yzxw;
  } else {
    r22.x = r21.w;
  }
  r2.y = max(1, r22.w);
  r2.y = rcp(r2.y);
  r22.w = saturate(r22.w);
  r14.xyz = r21.xyz * r2.yyy;
  r10.yzw = r22.xyz * r2.yyy;
  r2.z = cmp(r22.w < 0.99000001);
  if (r2.z != 0) {
    r2.z = 1 + -r22.w;
    r2.w = sunConstants.globalProbeExposure * r2.z;
    r11.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
    r15.x = globalProbeConstants.data[0].w * r11.y;
    r15.yz = globalProbeConstants.data[1].xy * r11.zw;
    r11.yzw = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r11.yz;
    r15.z = globalProbeConstants.data[2].x * r11.w;
    r11.yzw = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r5.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r16.xyz = r15.wwx + r11.yzw;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r17.xyz = r5.xyz * r5.xyz;
    r17.xyz = r17.xyz * r2.www;
    r18.xyz = r15.wwy + r11.yzw;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r17.yyy;
    r16.xyz = r16.xyz * r17.xxx + r18.xyz;
    r11.yzw = r15.wwz + r11.yzw;
    r11.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.yzw, 0).xyz;
    r11.yzw = r11.yzw * r17.zzz + r16.xyz;
    r5.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r5.xyzw, 6).xyz;
    r11.yzw = r15.xyz * r11.yzw;
    r2.w = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r14.xyz = r21.xyz * r2.yyy + r11.yzw;
    r12.w = 0;
    r11.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r6.w).xyz;
    r2.y = sunConstants.globalProbeExposure * r2.z + -r2.w;
    r2.y = r9.y * r2.y + r2.w;
    r10.yzw = r11.yzw * r2.yyy + r10.yzw;
  }
  r2.yz = r9.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r15.xyz = r10.zwy * r2.yyy;
  r2.yzw = r10.yzw * r2.zzz;
  r4.w = sqrt(r3.w);
  r4.w = r4.w * 0.5 + 0.5;
  r4.w = r4.w * r4.w;
  r5.w = 0.5 * r4.w;
  r4.w = -r4.w * 0.5 + 1;
  r6.w = r9.x * r4.w + r5.w;
  r4.w = r6.w * r4.w;
  r5.w = r6.w * r5.w;
  if (noReceiveShadow == 0) {
    r6.w = dot(r5.xyz, sunConstants.wldDir.xyz);
    r6.w = cmp(0 >= abs(r6.w));
    if (r6.w != 0) {
      r7.z = 0;
    }
    if (r6.w == 0) {
      r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
      r9.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
      r9.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
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
        r11.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
        r16.xz = rcp(r11.yy);
        r16.y = -r16.z;
        r11.yzw = r9.yzy * r16.xyz + r11.zwz;
        r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
        r11.yzw = max(float3(0,0,0), r11.yzw);
        r11.yzw = min(r11.yzw, r16.xyz);
        r10.zw = sunConstants.sstLightingConstants.coordScale * r11.wz;
        r10.zw = floor(r10.zw);
        r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r10.w;
        r10.z = r10.w * sunConstants.sstLightingConstants.coordScale + r10.z;
        r10.z = (uint)r10.z;
        r10.z = (int)r10.z + (int10)sunConstants.sstLightingConstants.rootOffset;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.z, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r12.w = (int)r10.w & 0x40000000;
        r13.w = (uint)r10.w << 2;
        if (r12.w == 0) {
          r12.w = (int)r10.w & 0x01ffffff;
          r16.x = (int)r10.z + (int)r12.w;
          r10.z = (uint)r10.w >> 25;
          r10.z = (uint)r10.z;
          r11.yzw = r11.yzw * r10.zzz;
          r11.yzw = frac(r11.yzw);
          r11.yzw = float3(128,128,128) * r11.yzw;
          r11.yzw = (uint3)r11.yzw;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r10.zw = (uint2)r11.wz >> int2(6,6);
          r12.w = (int)r16.z & 0xc0000000;
          r16.w = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r10.w = r10.w ? r16.z : r16.w;
          r16.w = (uint)r10.w >> 13;
          r10.z = r10.z ? r16.w : r10.w;
          r10.z = (int)r10.z & 8191;
          r17.x = (int)r10.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r16.y = 0;
          r17.y = 1;
          r17.xyz = r12.www ? r16.xyz : r17.xyz;
          r18.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
          r10.zw = (uint2)r11.wz >> (uint2)r18.yy;
          r10.zw = (int2)r10.zw & int2(1,1);
          r16.w = (int)r17.z & 0xc0000000;
          r17.w = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r10.w = r10.w ? r17.z : r17.w;
          r17.w = (uint)r10.w >> 13;
          r10.z = r10.z ? r17.w : r10.w;
          r10.z = (int)r10.z & 8191;
          r18.x = (int)r10.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r17.xyz = r16.www ? r17.xyz : r18.xzw;
          r16.xyz = r12.www ? r16.xyz : r17.xyz;
          r10.z = (int)r16.z & 0xc0000000;
          if (r10.z == 0) {
            r10.z = (int)-r16.y + 6;
            r10.zw = (uint2)r11.wz >> (uint2)r10.zz;
            r12.w = (int)r16.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r10.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
            r10.z = (int)r10.z * 10;
            r10.z = (uint)r12.w >> (uint)r10.z;
            r10.z = (int)r10.z & 1023;
            r17.x = (int)r10.z + (int)r16.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
          r17.w = samp0[]..swiz;
            r17.yz = (int2)r16.yy + int2(1,2);
            r10.z = (int)-r17.y + 6;
            r10.zw = (uint2)r11.wz >> (uint2)r10.zz;
            r12.w = (int)r17.w & 0xc0000000;
            r16.y = (int)r17.w | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r10.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
            r10.z = (int)r10.z * 10;
            r10.z = (uint)r16.y >> (uint)r10.z;
            r10.z = (int)r10.z & 1023;
            r18.x = (int)r10.z + (int)r17.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
          r18.z = samp0[]..swiz;
            r18.y = r17.z;
            r18.xyz = r12.www ? r17.xyw : r18.xyz;
            r10.z = (int)-r18.y + 6;
            r10.zw = (uint2)r11.wz >> (uint2)r10.zz;
            r16.y = (int)r18.z & 0xc0000000;
            r16.w = (int)r18.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r10.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
            r10.z = (int)r10.z * 10;
            r10.z = (uint)r16.w >> (uint)r10.z;
            r10.z = (int)r10.z & 1023;
            r19.x = (int)r10.z + (int)r18.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
          r19.y = samp0[]..swiz;
            r10.zw = r16.yy ? r18.xz : r19.xy;
            r16.xz = r12.ww ? r17.xw : r10.zw;
          }
          r10.z = (int)r16.z & 0xc0000000;
          if (r10.z == 0) {
            if (14 == 0) r10.w = 0; else if (14+15 < 32) {             r10.w = (uint)r16.z << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);            } else r10.w = (uint)r16.z >> 15;
            r10.w = (uint)r10.w;
            r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
            r10.w = 6.10388815e-05 * r10.w;
            r16.yw = (int2)r16.zz & int2(32767,536870912);
            r12.w = (uint)r16.y;
            r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
            r12.w = 3.05185094e-05 * r12.w;
            r16.y = (int)r11.z & 3;
            r16.y = (int)r16.y + (int)r16.x;
            r16.y = (int)r16.y + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
          r16.y = samp0[]..swiz;
            bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r11.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
            bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r11.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r11.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
            r11.y = (uint)r16.y >> (uint)r17.x;
            r11.y = (int)r11.y & 255;
            r11.y = (uint)r11.y;
            r11.y = r11.y * r12.w;
            r11.y = r11.y * 0.00392156886 + r10.w;
            r11.z = (int)r17.y + 1;
            if (1 == 0) r11.w = 0; else if (1+1 < 32) {             r11.w = (uint)r11.w << (32-(1 + 1)); r11.w = (uint)r11.w >> (32-1);            } else r11.w = (uint)r11.w >> 1;
            r11.z = (int)r11.w + (int)r11.z;
            r11.z = (int)r11.z + (int)r16.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.z, l(0), t23.xxxx
          r11.z = samp0[]..swiz;
            r11.z = (uint)r11.z >> (uint)r17.z;
            r11.z = (int)r11.z & 0x0000ffff;
            r11.z = (uint)r11.z;
            r11.z = r11.z * r12.w;
            r10.w = r11.z * 1.52590219e-05 + r10.w;
            r13.w = r16.w ? r11.y : r10.w;
          } else {
            r10.w = (int)r16.z & 0x80000000;
            r11.y = (int)r16.x + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.y, r11.y, l(0), t23.xxxx
          r11.y = samp0[]..swiz;
            r10.w = r10.w ? r11.y : 0;
            r11.y = (uint)r16.z << 2;
            r11.z = (uint)r10.w >> 16;
            r11.z = f16tof32(r11.z);
            r10.w = (int)r10.w & 0x0000ffff;
            r10.w = f16tof32(r10.w);
            r11.y = r9.y * r11.z + r11.y;
            r10.w = r9.z * r10.w + r11.y;
            r13.w = r10.z ? r10.w : r13.w;
          }
        }
        r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
        r9.w = cmp(r13.w < r9.w);
        r7.z = r9.w ? 0 : 1;
      }
      if (r10.y == 0) {
        if (enableDitheredShadow == 0) {
          r9.w = (uint)r7.w;
          r10.yz = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
          r10.yz = sunConstants.splitPinTransform[r9.w].zz * r10.yz;
          r16.xy = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r9.w = (int16)sunConstants.splitArrayOffset;
          r16.z = r9.w + r7.w;
          r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r6.w).x;
          r10.y = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r9.w = r10.y + r9.w;
          r9.w = saturate(-1 + r9.w);
          r10.y = r9.w * r9.w;
          r7.z = r10.y * r9.w;
        }
        if (enableDitheredShadow != 0) {
          r16.x = -r7.x;
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
          r16.y = r8.x;
          r16.z = r7.x;
          r10.w = 0;
          r11.y = 0;
          while (true) {
            r11.z = cmp((uint)r11.y >= 8);
            if (r11.z != 0) break;
            r11.z = cmp((uint)r8.w < (uint)r11.y);
            r17.xy = r11.zz ? r9.yz : r10.yz;
            r11.w = r11.z ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r9.w].w;
            r11.z = r11.z ? r7.w : r9.w;
            r18.x = dot(icb[r11.y+0].yx, r16.xy);
            r18.y = dot(icb[r11.y+0].yx, r16.yz);
            r17.xy = r18.xy * r11.ww + r17.xy;
            r11.z = (int)r11.z + (int16)sunConstants.splitArrayOffset;
            r17.z = (uint)r11.z;
            r11.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
            r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
            r11.z = r11.z + r11.w;
            r11.z = saturate(-1 + r11.z);
            r10.w = r11.z * 0.125 + r10.w;
            r11.y = (int)r11.y + 1;
          }
          r6.w = r10.w * r10.w;
          r7.z = r6.w * r10.w;
        }
      }
    }
  } else {
    r7.z = 1;
  }
  r6.w = dot(r5.xyz, sunConstants.wldDir.xyz);
  r7.w = cmp(0 < abs(r6.w));
  if (r7.w != 0) {
    r7.w = cmp(0 < r7.z);
    if (r7.w != 0) {
      r7.w = sunConstants.specScale * r3.y;
      r7.w = 0.25 * r7.w;
      if (sunConstants.sunCookieIndex != 0) {
        r16.xyz = eyeOffset.xyz + v7.xyz;
        r16.w = 1;
        r8.w = dot(sunConstants.sunCookieTransform[0].xyzw, r16.xyzw);
        r9.y = dot(sunConstants.sunCookieTransform[1].xyzw, r16.xyzw);
        r16.x = frac(r8.w);
        r16.y = frac(r9.y);
        r8.w = -1 + (int14)sunConstants.sunCookieIndex;
        r16.z = (uint)r8.w;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      if (noReceiveShadow == 0) {
        r8.w = viewmodelSunShadowRaw >> 16;
        r10.y = cmp(0 < (uint)r8.w);
        r10.y = r3.x ? r10.y : 0;
        if (r10.y != 0) {
          r8.w = (int)r8.w + numLights;
          r8.w = (int)r8.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.y, r8.w, l(52), t12.xxxx
        r10.y = samp0[]..swiz;
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
          r10.z = abs(r6.w) * -0.200000003 + 0.400000006;
          r10.w = cmp(r6.w < 0);
          r10.z = r10.w ? -r10.z : r10.z;
          r20.xyz = r5.xyz * r10.zzz + v7.xyz;
          r20.w = 1;
          r16.x = dot(r16.xyzw, r20.xyzw);
          r16.y = dot(r17.xyzw, r20.xyzw);
          r10.zw = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.zw = r10.zw + r19.zw;
          r10.zw = r10.zw * r19.xy;
          r11.yz = r10.yy / r18.xz;
          r16.xy = float2(1,1) + -r11.yz;
          r16.xy = cmp(r10.zw >= r16.xy);
          r11.yz = cmp(r11.yz >= r10.zw);
          r11.yz = (int2)r11.yz | (int2)r16.xy;
          r11.y = (int)r11.z | (int)r11.y;
          if (r11.y == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.y, r8.w, l(28), t12.xxxx
          r11.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.zw, r8.w, l(164), t12.xxxy
          r11.z = samp0[]..swiz;
          r11.w = samp0[]..swiz;
            r8.w = dot(r16.xyzw, r20.xyzw);
            r10.zw = saturate(r10.zw);
            r16.xy = r10.zw * r18.xz + r18.yw;
            r8.w = r8.w + r11.z;
            r8.w = r8.w / r11.w;
            r8.w = max(6.10351563e-05, r8.w);
            r10.z = r11.y ? 0.000000 : 0;
            if (enableDitheredShadow != 0) {
              r17.x = -r7.x;
              r18.z = (uint)r10.z;
              r17.y = r8.x;
              r17.z = r7.x;
              r10.w = 0;
              r11.y = 0;
              while (true) {
                r11.z = cmp((int)r11.y >= 8);
                if (r11.z != 0) break;
                r19.x = dot(icb[r11.y+0].yx, r17.xy);
                r19.y = dot(icb[r11.y+0].yx, r17.yz);
                r18.xy = r19.xy * r10.yy + r16.xy;
                r11.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
                r10.w = r11.z * 0.125 + r10.w;
                r11.y = (int)r11.y + 1;
              }
            } else {
              r16.z = (uint)r10.z;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.w).x;
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
          r10.z = ~(int)r3.x;
          r10.y = r10.y ? r10.z : 0;
          if (r10.y != 0) {
            r8.w = (int)r8.w + numLights;
            r8.w = (int)r8.w + -1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.y, r8.w, l(52), t12.xxxx
          r10.y = samp0[]..swiz;
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
            r10.z = abs(r6.w) * -0.200000003 + 0.400000006;
            r10.w = cmp(r6.w < 0);
            r10.z = r10.w ? -r10.z : r10.z;
            r20.xyz = r5.xyz * r10.zzz + v7.xyz;
            r20.w = 1;
            r16.x = dot(r16.xyzw, r20.xyzw);
            r16.y = dot(r17.xyzw, r20.xyzw);
            r10.zw = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
            r10.zw = r10.zw + r19.zw;
            r10.zw = r10.zw * r19.xy;
            r11.yz = r10.yy / r18.xz;
            r16.xy = float2(1,1) + -r11.yz;
            r16.xy = cmp(r10.zw >= r16.xy);
            r11.yz = cmp(r11.yz >= r10.zw);
            r11.yz = (int2)r11.yz | (int2)r16.xy;
            r11.y = (int)r11.z | (int)r11.y;
            if (r11.y == 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.y, r8.w, l(28), t12.xxxx
            r11.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(100), t12.xyzw
            r16.x = samp0[]..swiz;
            r16.y = samp0[]..swiz;
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.zw, r8.w, l(164), t12.xxxy
            r11.z = samp0[]..swiz;
            r11.w = samp0[]..swiz;
              r8.w = dot(r16.xyzw, r20.xyzw);
              r10.zw = saturate(r10.zw);
              r16.xy = r10.zw * r18.xz + r18.yw;
              r8.w = r8.w + r11.z;
              r8.w = r8.w / r11.w;
              r8.w = max(6.10351563e-05, r8.w);
              r10.z = r11.y ? 0.000000 : 0;
              if (enableDitheredShadow != 0) {
                r17.x = -r7.x;
                r18.z = (uint)r10.z;
                r17.y = r8.x;
                r17.z = r7.x;
                r10.w = 0;
                r11.y = 0;
                while (true) {
                  r11.z = cmp((int)r11.y >= 8);
                  if (r11.z != 0) break;
                  r19.x = dot(icb[r11.y+0].yx, r17.xy);
                  r19.y = dot(icb[r11.y+0].yx, r17.yz);
                  r18.xy = r19.xy * r10.yy + r16.xy;
                  r11.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.w).x;
                  r10.w = r11.z * 0.125 + r10.w;
                  r11.y = (int)r11.y + 1;
                }
              } else {
                r16.z = (uint)r10.z;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.w).x;
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
      r8.w = -r9.x * 0.5 + 1;
      r8.w = -abs(r6.w) * r8.w + 1;
      r8.w = r8.w * r8.w;
      r8.w = -r8.w * 0.620000005 + 0.620000005;
      r8.w = r8.w + -abs(r6.w);
      r8.w = r3.w * r8.w + abs(r6.w);
      r8.w = r8.w * r7.z;
      r10.y = cmp(0 < r6.w);
      r16.xyz = r8.www * r9.yzw + r14.xyz;
      r6.w = saturate(r6.w);
      r11.yzw = -v7.xyz * r0.xxx + sunConstants.wldDir.xyz;
      r0.x = dot(r11.yzw, r11.yzw);
      r0.x = rsqrt(r0.x);
      r11.yzw = r11.yzw * r0.xxx;
      r0.x = dot(r11.yzw, r0.yzw);
      r8.w = dot(r5.xyz, r11.yzw);
      r10.z = abs(r8.w) * r3.y + -abs(r8.w);
      r8.w = abs(r8.w) * r10.z + 1;
      r10.z = r6.w * r4.w + r5.w;
      r8.w = r8.w * r8.w;
      r8.w = r8.w * r10.z;
      r8.w = rcp(r8.w);
      r6.w = r6.w * r7.w;
      r6.w = r8.w * r6.w;
      r6.w = r6.w * r7.z;
      r11.yzw = r6.www * r9.yzw + r2.yzw;
      r0.x = saturate(1 + -r0.x);
      r7.z = r0.x * r0.x;
      r7.z = r7.z * r7.z;
      r0.x = r7.z * r0.x;
      r0.x = r6.w * r0.x;
      r17.xyz = r0.xxx * r9.zwy + r15.xyz;
      r16.w = r17.z;
      r14.w = r15.z;
      r14.xyzw = r10.yyyy ? r16.xyzw : r14.xyzw;
      r17.zw = r11.yz;
      r15.zw = r2.yz;
      r16.xyzw = r10.yyyy ? r17.xyzw : r15.xyzw;
      r2.w = r10.y ? r11.w : r2.w;
      r15.z = r14.w;
      r15.xy = r16.xy;
      r2.yz = r16.zw;
    }
  }
  r16.x = -r7.x;
  r0.x = ~(int)r3.x;
  r6.w = -r9.x * 0.5 + 1;
  r9.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v7.xyz;
  r18.w = 1;
  r19.w = 1;
  r16.z = r7.x;
  r20.w = 1;
  r21.z = 1;
  r22.w = 1;
  r16.yw = r8.xx;
  r7.y = r16.w;
  r23.w = 1;
  r8.y = r16.x;
  r8.z = r7.x;
  r24.w = 1;
  r25.x = r8.x;
  r25.y = r16.x;
  r25.z = r7.x;
  r26.x = r8.x;
  r26.y = r16.x;
  r26.z = r7.x;
  r27.x = r8.x;
  r27.y = r16.x;
  r27.z = r7.x;
  r10.yzw = r14.xyz;
  r28.xyz = r15.zxy;
  r29.xyz = r2.yzw;
  r7.z = enableDitheredShadow;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= numLights);
    if (r8.w != 0) break;
    r9.z = (uint)r7.w >> 5;
    r17.xyz = (int3)r9.xyz + (int3)r13.xyz;
    r8.w = visibleLights.Load(r17.xyzw).x;
    r11.yzw = r10.yzw;
    r17.xyz = r28.xyz;
    r30.xyz = r29.xyz;
    r9.z = r7.z;
    r9.w = r8.w;
    while (true) {
      if (r9.w == 0) break;
      r12.w = firstbitlow((uint)r9.w);
      r13.w = 1 << (int)r12.w;
      r14.w = (int)r9.w & (int)r13.w;
      if (r14.w != 0) {
        r9.w = (int)r9.w ^ (int)r13.w;
        r12.w = (int)r7.w + (int)r12.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r12.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v7.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r13.w = r31.y ? r31.x : 0;
        r13.w = r31.z ? r13.w : 0;
        if (r13.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r13.w = 0; else if (3+24 < 32) {           r13.w = (uint)r32.w << (32-(3 + 24)); r13.w = (uint)r13.w >> (32-3);          } else r13.w = (uint)r32.w >> 24;
          switch (r13.w) {
            case 4 :            r13.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v7.xyz + r39.xyz;
            r14.w = dot(r38.xyz, r40.xyz);
            r15.w = saturate(-r14.w / r37.x);
            r41.xyz = r15.www * r38.xyz + r39.xyz;
            r41.xyz = r13.www ? r41.xyz : r31.yzw;
            r41.xyz = -v7.xyz + r41.xyz;
            r21.w = dot(r41.xyz, r41.xyz);
            r25.w = rsqrt(r21.w);
            r41.xyz = r41.xyz * r25.www;
            r25.w = dot(r5.xyz, r41.xyz);
            r26.w = cmp(0 < abs(r25.w));
            if (r26.w != 0) {
              r26.w = sqrt(r21.w);
              r27.w = r34.x * r34.x;
              r21.w = r27.w / r21.w;
              r21.w = min(1, r21.w);
              r41.xy = saturate(r26.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r21.w = r41.x * r21.w;
              r21.w = r21.w * r41.y;
              r26.w = cmp(0 < r21.w);
              if (r26.w != 0) {
                if (3 == 0) r26.w = 0; else if (3+27 < 32) {                 r26.w = (uint)r32.w << (32-(3 + 27)); r26.w = (uint)r26.w >> (32-3);                } else r26.w = (uint)r32.w >> 27;
                r26.w = cmp((int)r26.w != 1);
                if (r26.w != 0) {
                  r26.w = abs(r25.w) * -0.200000003 + 0.400000006;
                  r27.w = cmp(r25.w < 0);
                  r26.w = r27.w ? -r26.w : r26.w;
                  r41.xyz = r5.xyz * r26.www + v7.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r26.w = max(abs(r41.y), abs(r41.z));
                  r26.w = max(abs(r41.x), r26.w);
                  r26.w = r36.x / r26.w;
                  r26.w = r26.w + r36.y;
                  r27.w = dot(r41.xyz, r41.xyz);
                  r27.w = rsqrt(r27.w);
                  r26.w = max(6.10351563e-05, r26.w);
                  r28.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r28.w;
                  r28.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r43.y = dot(icb[r29.w+0].yx, r16.xy);
                    r43.z = dot(icb[r29.w+0].yx, r16.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r11.x;
                    r43.w = r43.y * r10.x;
                    r42.xyz = r41.xyz * r27.www + r43.xzw;
                    r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r26.w).x;
                    r28.w = r30.w * 0.125 + r28.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r28.w = 1;
                }
                r21.w = r28.w * r21.w;
                r26.w = cmp(0 < r21.w);
                if (r26.w != 0) {
                  r26.w = r32.x * r3.y;
                  r26.w = 0.25 * r26.w;
                  r27.w = dot(r38.xyz, r12.xyz);
                  r29.w = dot(r12.xyz, r40.xyz);
                  r30.w = -r27.w * r27.w + r37.x;
                  r14.w = r27.w * r29.w + -r14.w;
                  r14.w = saturate(r14.w / r30.w);
                  r27.w = r30.w / r37.x;
                  r27.w = 10 * r27.w;
                  r27.w = min(1, r27.w);
                  r14.w = r14.w + -r15.w;
                  r14.w = r27.w * r14.w + r15.w;
                  r38.xyz = r14.www * r38.xyz + r39.xyz;
                  r38.xyz = r13.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v7.xyz + r38.xyz;
                  r13.w = dot(r38.xyz, r38.xyz);
                  r13.w = rsqrt(r13.w);
                  r39.xyz = r38.xyz * r13.www;
                  if (4 == 0) r14.w = 0; else if (4+16 < 32) {                   r14.w = (uint)r32.w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r32.w >> 16;
                  r15.w = cmp(0 < (uint)r14.w);
                  r15.w = r3.x ? r15.w : 0;
                  if (r15.w != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = (int)r14.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r14.w, l(52), t12.xxxx
                  r15.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r27.w = abs(r25.w) * -0.200000003 + 0.400000006;
                    r29.w = cmp(r25.w < 0);
                    r27.w = r29.w ? -r27.w : r27.w;
                    r19.xyz = r5.xyz * r27.www + v7.xyz;
                    r27.w = dot(r40.xyzw, r19.xyzw);
                    r29.w = dot(r41.xyzw, r19.xyzw);
                    r30.w = cmp(r29.w < r27.w);
                    if (r30.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r14.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r14.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r14.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r19.xyzw);
                      r40.y = dot(r41.xyzw, r19.xyzw);
                      r19.xy = r40.xy / r29.ww;
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
                      r19.x = r44.y * r29.w;
                      r19.y = r44.x * r29.w + r27.w;
                      r19.x = r19.y / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.y = (int)r30.w | (int)r19.z;
                    if (r19.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(28), t12.xxxx
                    r14.w = samp0[]..swiz;
                      r19.x = max(6.10351563e-05, r19.x);
                      r14.w = (int)r14.w & 0x0000ffff;
                      if (r9.z != 0) {
                        r41.z = (uint)r14.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r27.w = cmp((int)r19.z >= 8);
                          if (r27.w != 0) break;
                          r42.x = dot(icb[r19.z+0].yx, r16.xw);
                          r42.y = dot(icb[r19.z+0].xy, r7.xy);
                          r41.xy = r42.xy * r15.ww + r40.xy;
                          r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                          r19.y = r27.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r40.z = (uint)r14.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                      }
                      r14.w = r19.y * r19.y;
                      r14.w = r14.w * r19.y;
                    } else {
                      r14.w = 1;
                    }
                    r21.w = r21.w * r14.w;
                  } else {
                    if (4 == 0) r14.w = 0; else if (4+20 < 32) {                     r14.w = (uint)r32.w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                    } else r14.w = (uint)r32.w >> 20;
                    r15.w = cmp(0 < (uint)r14.w);
                    r15.w = r15.w ? r0.x : 0;
                    if (r15.w != 0) {
                      r14.w = (int)r14.w + numLights;
                      r14.w = (int)r14.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r14.w, l(52), t12.xxxx
                    r15.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r19.x = abs(r25.w) * -0.200000003 + 0.400000006;
                      r19.z = cmp(r25.w < 0);
                      r19.x = r19.z ? -r19.x : r19.x;
                      r20.xyz = r5.xyz * r19.xxx + v7.xyz;
                      r19.x = dot(r40.xyzw, r20.xyzw);
                      r19.z = dot(r41.xyzw, r20.xyzw);
                      r27.w = cmp(r19.z < r19.x);
                      if (r27.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r14.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r14.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r14.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r20.xyzw);
                        r40.y = dot(r41.xyzw, r20.xyzw);
                        r20.xy = r40.xy / r19.zz;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r43.zw;
                        r20.xy = r20.xy * r43.xy;
                        r40.xy = r15.ww / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r20.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r20.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r20.z = (int)r40.y | (int)r40.x;
                        r20.xy = saturate(r20.xy);
                        r40.xy = r20.xy * r42.xz + r42.yw;
                        r20.x = r44.y * r19.z;
                        r19.x = r44.x * r19.z + r19.x;
                        r19.x = r19.x / r20.x;
                      } else {
                        r20.z = -1;
                      }
                      r19.z = (int)r27.w | (int)r20.z;
                      if (r19.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(28), t12.xxxx
                      r14.w = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r14.w = (int)r14.w & 0x0000ffff;
                        if (r9.z != 0) {
                          r20.z = (uint)r14.w;
                          r19.z = 0;
                          r27.w = 0;
                          while (true) {
                            r29.w = cmp((int)r27.w >= 8);
                            if (r29.w != 0) break;
                            r41.x = dot(icb[r27.w+0].xy, r8.xy);
                            r41.y = dot(icb[r27.w+0].yx, r8.xz);
                            r20.xy = r41.xy * r15.ww + r40.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                            r19.z = r20.x * 0.125 + r19.z;
                            r27.w = (int)r27.w + 1;
                          }
                        } else {
                          r40.z = (uint)r14.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                        }
                        r14.w = r19.z * r19.z;
                        r14.w = r14.w * r19.z;
                      } else {
                        r14.w = 1;
                      }
                      r21.w = r21.w * r14.w;
                    }
                  }
                  r14.w = -abs(r25.w) * r6.w + 1;
                  r14.w = r14.w * r14.w;
                  r14.w = -r14.w * 0.620000005 + 0.620000005;
                  r14.w = r14.w + -abs(r25.w);
                  r14.w = r3.w * r14.w + abs(r25.w);
                  r14.w = r14.w * r21.w;
                  r32.x = r31.x;
                  r15.w = cmp(0 < r25.w);
                  r20.xyz = r14.www * r32.xyz + r11.yzw;
                  r14.w = saturate(dot(r5.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r13.www + r0.yzw;
                  r13.w = dot(r38.xyz, r38.xyz);
                  r13.w = rsqrt(r13.w);
                  r38.xyz = r38.xyz * r13.www;
                  r13.w = dot(r38.xyz, r0.yzw);
                  r19.x = dot(r5.xyz, r38.xyz);
                  r25.w = abs(r19.x) * r3.y + -abs(r19.x);
                  r19.x = abs(r19.x) * r25.w + 1;
                  r25.w = r14.w * r4.w + r5.w;
                  r19.x = r19.x * r19.x;
                  r19.x = r19.x * r25.w;
                  r19.x = rcp(r19.x);
                  r14.w = r14.w * r26.w;
                  r14.w = r19.x * r14.w;
                  r14.w = r14.w * r21.w;
                  r38.xyz = r14.www * r32.xyz + r30.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r19.x = r13.w * r13.w;
                  r19.x = r19.x * r19.x;
                  r13.w = r19.x * r13.w;
                  r13.w = r14.w * r13.w;
                  r39.xyz = r13.www * r32.xyz + r17.xyz;
                  r11.yzw = r15.www ? r20.xyz : r11.yzw;
                  r17.xyz = r15.www ? r39.xyz : r17.xyz;
                  r30.xyz = r15.www ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r34.zw;
            r20.z = r35.w;
            r20.xyz = -v7.xyz + r20.xyz;
            r13.w = dot(r20.xyz, r20.xyz);
            r13.w = rsqrt(r13.w);
            r38.xyz = r20.xyz * r13.www;
            r14.w = dot(r5.xyz, r38.xyz);
            r15.w = cmp(0 < abs(r14.w));
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r15.w = dot(r40.xyzw, r18.xyzw);
              r19.x = cmp(r15.w < 1);
              if (r19.x != 0) {
                r41.xyz = float3(1,1,1);
                r19.x = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.w, r12.w, l(236), t12.xxxx
              r21.w = samp0[]..swiz;
                r45.xyz = -v7.xyz + r31.yzw;
                r25.w = r34.x * r34.x;
                r26.w = dot(r45.xyz, r45.xyz);
                r25.w = r25.w / r26.w;
                r25.w = min(1, r25.w);
                r33.xy = saturate(r15.ww * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r25.w = r33.x * r25.w;
                r25.w = r25.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r18.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r18.xyzw);
                r21.xy = r33.xy / r15.ww;
                r15.w = cmp(r42.w < 0.00048828125);
                if (r15.w != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r21.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r15.w = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r21.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r43.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r44.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r26.w = r43.z * r33.x;
                  r27.w = r43.w * r33.y + -1;
                  r26.w = r43.w * r33.y + -r26.w;
                  r26.w = saturate(r27.w / r26.w);
                  r27.w = r26.w * r26.w;
                  r26.w = r26.w * -2 + 3;
                  r15.w = r27.w * r26.w;
                }
                r19.x = r25.w * r15.w;
                r15.w = (int)r21.w & 255;
                if (r15.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r12.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r21.w = dot(r44.yzw, r21.xyz);
                  r21.x = dot(r33.xyz, r21.xyz);
                  r33.xy = frac(r21.wx);
                  r15.w = (int)r15.w + -1;
                  r33.z = (uint)r15.w;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r21.xyw = r31.xyz * r41.xyz;
              r15.w = cmp(0 < r19.x);
              if (r15.w != 0) {
                if (3 == 0) r15.w = 0; else if (3+27 < 32) {                 r15.w = (uint)r32.w << (32-(3 + 27)); r15.w = (uint)r15.w >> (32-3);                } else r15.w = (uint)r32.w >> 27;
                r15.w = cmp((int)r15.w != 1);
                if (r15.w != 0) {
                  r15.w = abs(r14.w) * -0.200000003 + 0.400000006;
                  r25.w = cmp(r14.w < 0);
                  r15.w = r25.w ? -r15.w : r15.w;
                  r22.xyz = r5.xyz * r15.www + v7.xyz;
                  r38.xyz = r37.xyz;
                  r15.w = dot(r38.xyzw, r22.xyzw);
                  r25.w = dot(r40.xyzw, r22.xyzw);
                  r26.w = cmp(r25.w >= r15.w);
                  if (r26.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r12.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r31.x = dot(r35.xyzw, r22.xyzw);
                    r37.xyz = r36.yzw;
                    r31.y = dot(r37.xyzw, r22.xyzw);
                    r22.xy = r31.xy / r25.ww;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r39.zw + r39.xy;
                    r12.w = r15.w / r25.w;
                    r12.w = max(6.10351563e-05, r12.w);
                    r15.w = (int)r32.w & 0x0000ffff;
                    if (r9.z != 0) {
                      r31.z = (uint)r15.w;
                      r25.w = 0;
                      r26.w = 0;
                      while (true) {
                        r27.w = cmp((int)r26.w >= 8);
                        if (r27.w != 0) break;
                        r33.x = dot(icb[r26.w+0].xy, r25.xy);
                        r33.y = dot(icb[r26.w+0].yx, r25.xz);
                        r31.xy = r33.xy * r34.yy + r22.xy;
                        r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r12.w).x;
                        r25.w = r27.w * 0.125 + r25.w;
                        r26.w = (int)r26.w + 1;
                      }
                    } else {
                      r22.z = (uint)r15.w;
                      r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r12.w).x;
                    }
                    r12.w = r25.w * r25.w;
                    r12.w = r12.w * r25.w;
                  } else {
                    r12.w = 1;
                  }
                } else {
                  r12.w = 1;
                }
                r12.w = r19.x * r12.w;
                r15.w = cmp(0 < r12.w);
                if (r15.w != 0) {
                  r15.w = r32.x * r3.y;
                  r15.w = 0.25 * r15.w;
                  if (4 == 0) r19.x = 0; else if (4+16 < 32) {                   r19.x = (uint)r32.w << (32-(4 + 16)); r19.x = (uint)r19.x >> (32-4);                  } else r19.x = (uint)r32.w >> 16;
                  r22.x = cmp(0 < (uint)r19.x);
                  r22.x = r3.x ? r22.x : 0;
                  if (r22.x != 0) {
                    r19.x = (int)r19.x + numLights;
                    r19.x = (int)r19.x + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r19.x, l(52), t12.xxxx
                  r22.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r19.x, l(68), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r19.x, l(84), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r19.x, l(100), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r19.x, l(116), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r19.x, l(132), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r19.x, l(148), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                    r22.y = abs(r14.w) * -0.200000003 + 0.400000006;
                    r22.z = cmp(r14.w < 0);
                    r22.y = r22.z ? -r22.y : r22.y;
                    r23.xyz = r5.xyz * r22.yyy + v7.xyz;
                    r31.x = dot(r31.xyzw, r23.xyzw);
                    r31.y = dot(r33.xyzw, r23.xyzw);
                    r22.y = dot(r34.xyzw, r23.xyzw);
                    r22.z = dot(r35.xyzw, r23.xyzw);
                    r23.x = cmp(r22.z < r22.y);
                    r23.yz = r31.xy / r22.zz;
                    r23.yz = r23.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.yz = r23.yz + r37.zw;
                    r23.yz = r23.yz * r37.xy;
                    r31.xy = r22.xx / r36.xz;
                    r31.zw = float2(1,1) + -r31.xy;
                    r31.zw = cmp(r23.yz >= r31.zw);
                    r31.xy = cmp(r31.xy >= r23.yz);
                    r31.xy = (int2)r31.xy | (int2)r31.zw;
                    r26.w = (int)r31.y | (int)r31.x;
                    r23.x = (int)r23.x | (int)r26.w;
                    if (r23.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r19.x, l(28), t12.xxxx
                    r23.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xy, r19.x, l(164), t12.xyxx
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                      r23.yz = saturate(r23.yz);
                      r32.xy = r23.yz * r36.xz + r36.yw;
                      r19.x = r31.y * r22.z;
                      r22.y = r31.x * r22.z + r22.y;
                      r19.x = r22.y / r19.x;
                      r19.x = max(6.10351563e-05, r19.x);
                      r22.y = r23.x ? 0.000000 : 0;
                      if (r9.z != 0) {
                        r23.z = (uint)r22.y;
                        r22.z = 0;
                        r26.w = 0;
                        while (true) {
                          r27.w = cmp((int)r26.w >= 8);
                          if (r27.w != 0) break;
                          r31.x = dot(icb[r26.w+0].xy, r26.xy);
                          r31.y = dot(icb[r26.w+0].yx, r26.xz);
                          r23.xy = r31.xy * r22.xx + r32.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r19.x).x;
                          r22.z = r23.x * 0.125 + r22.z;
                          r26.w = (int)r26.w + 1;
                        }
                      } else {
                        r32.z = (uint)r22.y;
                        r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r19.x).x;
                      }
                      r19.x = r22.z * r22.z;
                      r19.x = r19.x * r22.z;
                    } else {
                      r19.x = 1;
                    }
                    r12.w = r19.x * r12.w;
                  } else {
                    if (4 == 0) r19.x = 0; else if (4+20 < 32) {                     r19.x = (uint)r32.w << (32-(4 + 20)); r19.x = (uint)r19.x >> (32-4);                    } else r19.x = (uint)r32.w >> 20;
                    r22.x = cmp(0 < (uint)r19.x);
                    r22.x = r22.x ? r0.x : 0;
                    if (r22.x != 0) {
                      r19.x = (int)r19.x + numLights;
                      r19.x = (int)r19.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r19.x, l(52), t12.xxxx
                    r22.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r19.x, l(68), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r19.x, l(84), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r19.x, l(100), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r19.x, l(116), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r19.x, l(132), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r19.x, l(148), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                      r22.y = abs(r14.w) * -0.200000003 + 0.400000006;
                      r23.x = cmp(r14.w < 0);
                      r22.y = r23.x ? -r22.y : r22.y;
                      r24.xyz = r5.xyz * r22.yyy + v7.xyz;
                      r23.x = dot(r31.xyzw, r24.xyzw);
                      r23.y = dot(r32.xyzw, r24.xyzw);
                      r22.y = dot(r33.xyzw, r24.xyzw);
                      r23.z = dot(r34.xyzw, r24.xyzw);
                      r24.x = cmp(r23.z < r22.y);
                      r23.xy = r23.xy / r23.zz;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r36.zw;
                      r23.xy = r23.xy * r36.xy;
                      r24.yz = r22.xx / r35.xz;
                      r31.xy = float2(1,1) + -r24.yz;
                      r31.xy = cmp(r23.xy >= r31.xy);
                      r24.yz = cmp(r24.yz >= r23.xy);
                      r24.yz = (int2)r24.yz | (int2)r31.xy;
                      r24.y = (int)r24.z | (int)r24.y;
                      r24.x = (int)r24.x | (int)r24.y;
                      if (r24.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r19.x, l(28), t12.xxxx
                      r24.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.yz, r19.x, l(164), t12.xxyx
                      r24.y = samp0[]..swiz;
                      r24.z = samp0[]..swiz;
                        r23.xy = saturate(r23.xy);
                        r31.xy = r23.xy * r35.xz + r35.yw;
                        r19.x = r24.z * r23.z;
                        r22.y = r24.y * r23.z + r22.y;
                        r19.x = r22.y / r19.x;
                        r19.x = max(6.10351563e-05, r19.x);
                        r22.y = r24.x ? 0.000000 : 0;
                        if (r9.z != 0) {
                          r23.z = (uint)r22.y;
                          r24.xy = float2(0,0);
                          while (true) {
                            r24.z = cmp((int)r24.y >= 8);
                            if (r24.z != 0) break;
                            r32.x = dot(icb[r24.y+0].xy, r27.xy);
                            r32.y = dot(icb[r24.y+0].yx, r27.xz);
                            r23.xy = r32.xy * r22.xx + r31.xy;
                            r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r19.x).x;
                            r24.x = r23.x * 0.125 + r24.x;
                            r24.y = (int)r24.y + 1;
                          }
                        } else {
                          r31.z = (uint)r22.y;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r19.x).x;
                        }
                        r19.x = r24.x * r24.x;
                        r19.x = r19.x * r24.x;
                      } else {
                        r19.x = 1;
                      }
                      r12.w = r19.x * r12.w;
                    }
                  }
                  r19.x = -abs(r14.w) * r6.w + 1;
                  r19.x = r19.x * r19.x;
                  r19.x = -r19.x * 0.620000005 + 0.620000005;
                  r19.x = r19.x + -abs(r14.w);
                  r19.x = r3.w * r19.x + abs(r14.w);
                  r19.x = r19.x * r12.w;
                  r22.x = cmp(0 < r14.w);
                  r23.xyz = r19.xxx * r21.xyw + r11.yzw;
                  r14.w = saturate(r14.w);
                  r20.xyz = r20.xyz * r13.www + r0.yzw;
                  r13.w = dot(r20.xyz, r20.xyz);
                  r13.w = rsqrt(r13.w);
                  r20.xyz = r20.xyz * r13.www;
                  r13.w = dot(r20.xyz, r0.yzw);
                  r19.x = dot(r5.xyz, r20.xyz);
                  r20.x = abs(r19.x) * r3.y + -abs(r19.x);
                  r19.x = abs(r19.x) * r20.x + 1;
                  r20.x = r14.w * r4.w + r5.w;
                  r19.x = r19.x * r19.x;
                  r19.x = r19.x * r20.x;
                  r19.x = rcp(r19.x);
                  r14.w = r14.w * r15.w;
                  r14.w = r19.x * r14.w;
                  r12.w = r14.w * r12.w;
                  r20.xyz = r12.www * r21.xyw + r30.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r14.w = r13.w * r13.w;
                  r14.w = r14.w * r14.w;
                  r13.w = r14.w * r13.w;
                  r12.w = r13.w * r12.w;
                  r21.xyw = r12.www * r21.xyw + r17.xyz;
                  r11.yzw = r22.xxx ? r23.xyz : r11.yzw;
                  r17.xyz = r22.xxx ? r21.xyw : r17.xyz;
                  r30.xyz = r22.xxx ? r20.xyz : r30.xyz;
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
    r28.xyz = r17.xyz;
    r29.xyz = r30.xyz;
    r7.w = (int)r7.w + 32;
  }
  r0.xyz = float3(0.959999979,0.959999979,0.959999979) * r28.xyz;
  r0.xyz = r29.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r0.xyz;
  r0.xyz = r10.yzw * r4.xyz + r0.xyz;
  r0.w = 1 + -coolingFactor;
  r0.w = r1.z * r0.w;
  r1.xyw = r1.xyw * r3.zzz + -r6.xyz;
  r1.xyw = r0.www * r1.xyw + r6.xyz;
  r1.xyw = r1.xyw * r2.xxx;
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