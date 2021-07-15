// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:50 2021

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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47;
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
  r5.x = v1.x * r4.w;
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
  r7.y = dot(v3.xyz, v3.xyz);
  r7.y = rsqrt(r7.y);
  r7.yzw = v3.xyz * r7.yyy;
  r7.yzw = r7.yzw * r7.xxx;
  r8.x = dot(v4.xyz, v4.xyz);
  r8.x = rsqrt(r8.x);
  r8.xyz = v4.xyz * r8.xxx;
  r8.xyz = r8.xyz * r7.xxx;
  r8.w = dot(v5.xyz, v5.xyz);
  r8.w = rsqrt(r8.w);
  r9.xyz = v5.xyz * r8.www;
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
  r4.w = -r4.w * v1.x + debugAlphaOverride.x;
  r4.w = debugAlphaOverride.w * r4.w + r5.x;
  r7.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r7.xyz = debugSpecularOverride.www * r7.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.x = r5.w + -r5.z;
  r8.y = debugGlossOverride.w * r5.x + r5.z;
  r5.x = debugOcclusionOverride.x + -r5.y;
  r5.x = debugOcclusionOverride.w * r5.x + r5.y;
  r5.yzw = v8.xxx ? v3.xyz : -v3.xyz;
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
  r3.z = v2.x + v2.y;
  r3.z = v2.z + r3.z;
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
  r2.z = r8.w ? 60000 : r2.z;
  r2.x = r2.x + -r2.y;
  r2.x = saturate(r2.x * r2.z);
  r9.w = r2.x * r1.z;
  r2.xz = (uint2)v0.xy;
  r1.z = cmp(isDepthHack != 0);
  r3.xy = (uint2)r2.zx;
  r2.w = dot(r3.yx, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.yw = float2(0.0078125,52.9829178) * r2.yw;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r10.x, r11.x);
  r2.w = dot(r3.xy, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r3.x, r12.x);
  r8.x = saturate(dot(r6.xyz, r0.yzw));
  r2.w = dot(-r0.yzw, r6.xyz);
  r2.w = r2.w + r2.w;
  r13.xyz = r6.xyz * -r2.www + -r0.yzw;
  r2.w = 17 * r8.y;
  r2.w = exp2(r2.w);
  r2.w = 2 + r2.w;
  r2.w = 2 / r2.w;
  r3.y = sqrt(r2.w);
  r3.w = 1 + -r8.y;
  r4.w = 5 * r3.w;
  r7.w = r3.w * 5 + -2.5;
  r7.w = saturate(0.400000006 * r7.w);
  r7.w = 100 * r7.w;
  r8.zw = -r3.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r8.z = exp2(r8.z);
  r10.z = r4.w * r3.w;
  r8.w = -r10.z * 2.0159049 + r8.w;
  r8.w = exp2(r8.w);
  r8.zw = r8.xx * r8.zw;
  r8.zw = float2(9.1368103,9.70808983) * r8.zw;
  r8.z = max(r8.z, r8.w);
  r8.z = max(1.26815999, r8.z);
  r2.y = min(15, r2.y);
  r2.y = (uint)r2.y;
  r14.xy = (uint2)r2.xz >> int2(6,6);
  r14.z = (uint)r2.y << 4;
  r2.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.x = 1;
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r8.w = 0;
  r10.z = 0;
  while (true) {
    r10.w = cmp((uint)r10.z >= numRefProbes);
    if (r10.w != 0) break;
    r2.z = (uint)r10.z >> 5;
    r15.xyz = (int3)r2.xyz + (int3)r14.xyz;
    r2.z = visibleProbes.Load(r15.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r10.z, l(0), t15.wxyz
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.z, l(16), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.z, l(32), t15.yxwz
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.z, l(48), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.z, l(64), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.z, l(80), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.yz, r10.z, l(96), t15.xxyx
  r12.y = samp0[]..swiz;
  r12.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.z, l(116), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.z, l(132), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.z, l(148), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.z, l(164), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.z, l(180), t15.zwxy
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.z, l(196), t15.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xy, r10.z, l(212), t15.xyxx
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
    r15.xyz = v6.xyz + -r23.yzw;
    r10.w = dot(r15.xyz, r15.xyz);
    r10.w = sqrt(r10.w);
    r10.w = cmp(probeDebugRadius >= r10.w);
    r11.w = (int)r29.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(0), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(16), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(32), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(48), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(64), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(80), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
    r12.w = dot(r36.xyz, r15.xyz);
    r12.w = saturate(r12.w + r36.w);
    r14.w = dot(r37.xyz, r15.xyz);
    r14.w = saturate(r14.w + r37.w);
    r12.w = r14.w * r12.w;
    r14.w = dot(r38.xyz, r15.xyz);
    r14.w = saturate(r14.w + r38.w);
    r12.w = r14.w * r12.w;
    r14.w = dot(r39.xyz, r15.xyz);
    r14.w = saturate(r14.w + r39.w);
    r12.w = r14.w * r12.w;
    r14.w = dot(r40.xyz, r15.xyz);
    r14.w = saturate(r14.w + r40.w);
    r12.w = r14.w * r12.w;
    r14.w = dot(r41.xyz, r15.xyz);
    r14.w = saturate(r14.w + r41.w);
    r16.x = r14.w * r12.w;
    r12.w = (int)r12.y & 1;
    r16.xw = r12.ww ? r16.xy : r16.zx;
    r36.xy = r29.zw;
    r36.z = r30.z;
    r12.w = dot(r13.xyz, r36.xyz);
    r14.w = dot(r15.xyz, r36.xyz);
    r14.w = r14.w + -r30.w;
    r17.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.w);
    r14.w = r17.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r12.w = min(131072, abs(r12.w));
    r30.z = r31.z;
    r14.w = dot(r13.xyz, r30.xyz);
    r17.w = dot(r15.xyz, r30.xyz);
    r17.w = r17.w + -r31.w;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r7.w);
    r17.w = r18.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r12.w = min(abs(r14.w), r12.w);
    r31.z = r32.z;
    r14.w = dot(r13.xyz, r31.xyz);
    r17.w = dot(r15.xyz, r31.xyz);
    r17.w = r17.w + -r32.w;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r7.w);
    r17.w = r18.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r12.w = min(abs(r14.w), r12.w);
    r32.z = r33.z;
    r14.w = dot(r13.xyz, r32.xyz);
    r17.w = dot(r15.xyz, r32.xyz);
    r17.w = r17.w + -r33.w;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r7.w);
    r17.w = r18.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r12.w = min(abs(r14.w), r12.w);
    r33.z = r34.x;
    r14.w = dot(r13.xyz, r33.xyz);
    r17.w = dot(r15.xyz, r33.xyz);
    r17.w = r17.w + -r34.y;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r7.w);
    r17.w = r18.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r12.w = min(abs(r14.w), r12.w);
    r35.zw = r34.zw;
    r14.w = dot(r13.zxy, r35.xzw);
    r17.w = dot(r15.zxy, r35.xzw);
    r17.w = r17.w + -r35.y;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r7.w);
    r17.w = r18.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r12.w = min(abs(r14.w), r12.w);
    r30.x = r26.w;
    r30.yz = r27.zw;
    r30.xyz = r30.xyz + r15.xyz;
    r30.xyz = r13.xyz * r12.www + r30.xyz;
    r14.w = dot(r30.xyz, r30.xyz);
    r14.w = sqrt(r14.w);
    r12.w = r12.w / r14.w;
    r12.w = r12.w + r12.w;
    r12.w = sqrt(r12.w);
    r12.w = r3.w * 5 + r12.w;
    r12.w = -0.844799995 + r12.w;
    r23.y = r24.z;
    r23.z = r25.x;
    r31.x = dot(r30.xyz, r23.xyz);
    r32.xy = r24.xw;
    r32.z = r25.w;
    r31.y = dot(r30.xyz, r32.xyz);
    r25.x = r24.y;
    r31.z = dot(r30.xyz, r25.xyz);
    if (6 == 0) r20.z = 0; else if (6+25 < 32) {     r20.z = (uint)r29.y << (32-(6 + 25)); r20.z = (uint)r20.z >> (32-6);    } else r20.z = (uint)r29.y >> 25;
    if (9 == 0) r20.w = 0; else if (9+16 < 32) {     r20.w = (uint)r29.y << (32-(9 + 16)); r20.w = (uint)r20.w >> (32-9);    } else r20.w = (uint)r29.y >> 16;
    r31.w = (uint)r20.w;
    r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r12.w).xyz;
    r29.yzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
    r29.yzw = cmp((int3)r29.yzw == int3(2139095040,2139095040,2139095040));
    r12.w = (int)r29.z | (int)r29.y;
    r12.w = (int)r29.w | (int)r12.w;
    r24.xyz = r12.www ? float3(1,1,0) : r24.xyz;
    r30.x = dot(r15.xyz, r23.xyz);
    r30.y = dot(r15.xyz, r32.xyz);
    r30.z = dot(r15.xyz, r25.xyz);
    r26.xyz = saturate(r30.xyz * r26.xyz + float3(0.5,0.5,0.5));
    r27.z = r28.x;
    r26.xyz = r26.xyz * r27.xyz + r28.yzw;
    r31.x = dot(r6.xyz, r23.xyz);
    r31.y = dot(r6.xyz, r32.xyz);
    r31.z = dot(r6.xyz, r25.xyz);
    r23.xyz = cmp(float3(0,0,0) < r31.xyz);
    r17.z = r23.x ? 0 : 0.5;
    r25.xyz = r26.xyz + r17.xyz;
    r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r18.z = r23.y ? 0 : 0.5;
    r23.xyw = r26.xyz + r18.xyz;
    r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
    r19.z = r23.z ? 0 : 0.5;
    r26.xyz = r26.xyz + r19.xyz;
    r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
    r27.xyz = r31.xyz * r31.xyz;
    r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
    r29.yzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
    r29.yzw = cmp((int3)r29.yzw == int3(2139095040,2139095040,2139095040));
    r12.w = (int)r29.z | (int)r29.y;
    r12.w = (int)r29.w | (int)r12.w;
    r28.xyz = r12.www ? float3(1,1,0) : r28.xyz;
    r30.xyzw = r21.xyzw;
    r29.yzw = r22.yzw;
    r12.w = r8.w;
    r14.w = r2.z;
    while (true) {
      if (r14.w == 0) break;
      r17.z = firstbitlow((uint)r14.w);
      r17.z = 1 << (int)r17.z;
      r17.w = (int)r14.w & (int)r17.z;
      if (r17.w != 0) {
        r17.z = ~(int)r17.z;
        r14.w = (int)r14.w & (int)r17.z;
        if (r10.w != 0) {
          r17.z = r12.y;
          r31.xy = r16.xw;
          r17.w = 1;
          while (true) {
            r18.z = cmp((int)r17.w >= (int)r20.z);
            if (r18.z != 0) break;
            r18.z = (int)r11.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.z, l(0), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.z, l(16), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.z, l(32), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.z, l(48), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r18.z, l(64), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r18.z, l(80), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
            r18.z = dot(r32.xyz, r15.xyz);
            r18.z = saturate(r18.z + r32.w);
            r18.z = r31.x * r18.z;
            r18.w = dot(r33.xyz, r15.xyz);
            r18.w = saturate(r18.w + r33.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r34.xyz, r15.xyz);
            r18.w = saturate(r18.w + r34.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r35.xyz, r15.xyz);
            r18.w = saturate(r18.w + r35.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r36.xyz, r15.xyz);
            r18.w = saturate(r18.w + r36.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r37.xyz, r15.xyz);
            r18.w = saturate(r18.w + r37.w);
            r31.x = r18.z * r18.w;
            r19.z = (uint)r17.z >> 2;
            if (1 == 0) r19.w = 0; else if (1+2 < 32) {             r19.w = (uint)r17.z << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);            } else r19.w = (uint)r17.z >> 2;
            r20.w = (int)r19.z & 2;
            r23.z = max(r31.y, r31.x);
            r18.z = -r18.z * r18.w + 1;
            r18.z = r31.y * r18.z;
            r20.y = r20.w ? r18.z : r23.z;
            r31.xy = r19.ww ? r31.xy : r20.xy;
            r17.w = (int)r17.w + 1;
            r17.z = r19.z;
          }
          r31.y = saturate(r31.y);
          r17.z = r31.y * r12.z;
          r17.w = cmp(0 < r17.z);
          if (r17.w != 0) {
            r32.z = r31.y * r12.z + r29.w;
            r17.z = r17.z * r29.x;
            r31.xzw = r27.xyz * r17.zzz;
            r33.xyz = r31.zzz * r23.xyw;
            r33.xyz = r25.xyz * r31.xxx + r33.xyz;
            r31.xzw = r26.xyz * r31.www + r33.xyz;
            r33.xyz = r31.xzw * r28.xyz;
            r17.w = dot(r33.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r33.xyz = r31.xzw * r28.xyz + r30.xyz;
            r18.z = r17.w * r8.z;
            r31.xzw = r24.xyz * r17.zzz;
            r17.z = dot(r31.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r17.z = r8.z * r17.w + r17.z;
            r17.z = r18.z / r17.z;
            r34.x = r30.w;
            r34.yz = r29.yz;
            r32.xyw = r31.zwx * r17.zzz + r34.yzx;
            r33.w = r32.w;
          } else {
            r33.xyzw = r30.xyzw;
            r32.xyz = r29.yzw;
          }
          r12.w = -1;
          r30.xyzw = r33.xyzw;
          r29.yzw = r32.xyz;
          break;
        }
      }
    }
    if (r12.w != 0) {
      r21.xyzw = r30.xyzw;
      r22.yzw = r29.yzw;
      r8.w = -1;
      break;
    }
    r10.z = (int)r10.z + 32;
    r21.xyzw = r30.xyzw;
    r22.yzw = r29.yzw;
    r8.w = r12.w;
  }
  if (r8.w == 0) {
    r2.x = numRefProbes + -numOverrideProbes;
    r2.y = (int)r2.x & -32;
    r2.z = (int)-r2.y + (int)r2.x;
    r8.w = numRefProbes & -32;
    r10.z = (int)-r8.w + numRefProbes;
    r15.xy = float2(0,0);
    r16.w = 0;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.x = 1;
    r20.xy = float2(0,0);
    r23.xy = float2(0,0);
    r24.xyzw = r21.xyzw;
    r25.yzw = r22.yzw;
    r10.w = r2.y;
    while (true) {
      r11.w = cmp((uint)r10.w >= numRefProbes);
      if (r11.w != 0) break;
      r15.z = (uint)r10.w >> 5;
      r16.xyz = (int3)r14.xyz + (int3)r15.xyz;
      r11.w = visibleProbes.Load(r16.xyzw).x;
      r12.y = cmp((int)r2.y == (int)r10.w);
      bitmask.z = ((~(-1 << r2.z)) << 0) & 0xffffffff;  r12.z = (((uint)0 << 0) & bitmask.z) | ((uint)r11.w & ~bitmask.z);
      r11.w = r12.y ? r12.z : r11.w;
      r12.y = cmp((int)r8.w == (int)r10.w);
      if (r10.z == 0) r12.z = 0; else if (r10.z+0 < 32) {       r12.z = (uint)r11.w << (32-(r10.z + 0)); r12.z = (uint)r12.z >> (32-r10.z);      } else r12.z = (uint)r11.w >> 0;
      r11.w = r12.y ? r12.z : r11.w;
      r12.y = (int)r10.w + numLights;
      r26.xyzw = r24.xyzw;
      r27.xyz = r25.yzw;
      r12.z = r11.w;
      while (true) {
        if (r12.z == 0) break;
        r12.w = firstbitlow((uint)r12.z);
        r14.w = 1 << (int)r12.w;
        r15.z = (int)r12.z & (int)r14.w;
        if (r15.z != 0) {
          r12.z = (int)r12.z ^ (int)r14.w;
          r14.w = (int)r12.w + (int)r12.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(0), t11.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xy, r14.w, l(16), t11.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r28.xyz = -v6.xyz + r28.xyz;
          r16.z = r28.w;
          r16.xyz = cmp(abs(r28.xyz) < r16.zxy);
          r14.w = r16.y ? r16.x : 0;
          r14.w = r16.z ? r14.w : 0;
          if (r14.w != 0) {
            r12.w = (int)r10.w + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(0), t15.wxyz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r12.w, l(96), t15.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(116), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
            r16.xyz = v6.xyz + -r28.yzw;
            r14.w = (int)r29.w & 0x0000ffff;
            if (6 == 0) r17.w = 0; else if (6+25 < 32) {             r17.w = (uint)r29.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);            } else r17.w = (uint)r29.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(0), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r18.w = dot(r30.xyz, r16.xyz);
            r18.w = saturate(r18.w + r30.w);
            r19.z = dot(r31.xyz, r16.xyz);
            r19.z = saturate(r19.z + r31.w);
            r18.w = r19.z * r18.w;
            r19.z = dot(r32.xyz, r16.xyz);
            r19.z = saturate(r19.z + r32.w);
            r18.w = r19.z * r18.w;
            r19.z = dot(r33.xyz, r16.xyz);
            r19.z = saturate(r19.z + r33.w);
            r18.w = r19.z * r18.w;
            r19.z = dot(r34.xyz, r16.xyz);
            r19.z = saturate(r19.z + r34.w);
            r18.w = r19.z * r18.w;
            r19.z = dot(r35.xyz, r16.xyz);
            r19.z = saturate(r19.z + r35.w);
            r17.x = r19.z * r18.w;
            r18.w = (int)r15.z & 1;
            r19.zw = r18.ww ? r17.xy : r17.zx;
            r17.x = r15.z;
            r30.xy = r19.zw;
            r18.w = 1;
            while (true) {
              r20.w = cmp((int)r18.w >= (int)r17.w);
              if (r20.w != 0) break;
              r20.w = (int)r14.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r20.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r20.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r20.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r20.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r20.w = dot(r31.xyz, r16.xyz);
              r20.w = saturate(r20.w + r31.w);
              r20.w = r30.x * r20.w;
              r23.w = dot(r32.xyz, r16.xyz);
              r23.w = saturate(r23.w + r32.w);
              r20.w = r23.w * r20.w;
              r23.w = dot(r33.xyz, r16.xyz);
              r23.w = saturate(r23.w + r33.w);
              r20.w = r23.w * r20.w;
              r23.w = dot(r34.xyz, r16.xyz);
              r23.w = saturate(r23.w + r34.w);
              r20.w = r23.w * r20.w;
              r23.w = dot(r35.xyz, r16.xyz);
              r23.w = saturate(r23.w + r35.w);
              r20.w = r23.w * r20.w;
              r23.w = dot(r36.xyz, r16.xyz);
              r23.w = saturate(r23.w + r36.w);
              r30.x = r23.w * r20.w;
              r28.w = (uint)r17.x >> 2;
              if (1 == 0) r30.z = 0; else if (1+2 < 32) {               r30.z = (uint)r17.x << (32-(1 + 2)); r30.z = (uint)r30.z >> (32-1);              } else r30.z = (uint)r17.x >> 2;
              r30.w = (int)r28.w & 2;
              r31.x = max(r30.y, r30.x);
              r20.w = -r20.w * r23.w + 1;
              r20.w = r30.y * r20.w;
              r19.y = r30.w ? r20.w : r31.x;
              r30.xy = r30.zz ? r30.xy : r19.xy;
              r18.w = (int)r18.w + 1;
              r17.x = r28.w;
            }
            r30.y = saturate(r30.y);
            r14.w = r30.y * r15.w;
            r15.z = cmp(0 < r14.w);
            if (r15.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(16), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(32), t15.yxwz
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(48), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(64), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(80), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(132), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(148), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(164), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(180), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(196), t15.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r12.w, l(212), t15.xyxx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
              r27.z = r30.y * r15.w + r27.z;
              r12.w = r14.w * r29.z;
              r29.z = r36.z;
              r14.w = dot(r13.xyz, r29.xyz);
              r15.z = dot(r16.xyz, r29.xyz);
              r15.z = r15.z + -r36.w;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r7.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.z / r14.w;
              r14.w = min(131072, abs(r14.w));
              r36.z = r37.z;
              r15.z = dot(r13.xyz, r36.xyz);
              r15.w = dot(r16.xyz, r36.xyz);
              r15.w = r15.w + -r37.w;
              r17.x = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r17.x ? r15.w : -r15.w;
              r15.z = max(1.00000001e-07, -r15.z);
              r15.z = r15.w / r15.z;
              r14.w = min(abs(r15.z), r14.w);
              r37.z = r38.z;
              r15.z = dot(r13.xyz, r37.xyz);
              r15.w = dot(r16.xyz, r37.xyz);
              r15.w = r15.w + -r38.w;
              r17.x = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r17.x ? r15.w : -r15.w;
              r15.z = max(1.00000001e-07, -r15.z);
              r15.z = r15.w / r15.z;
              r14.w = min(abs(r15.z), r14.w);
              r38.z = r39.z;
              r15.z = dot(r13.xyz, r38.xyz);
              r15.w = dot(r16.xyz, r38.xyz);
              r15.w = r15.w + -r39.w;
              r17.x = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r17.x ? r15.w : -r15.w;
              r15.z = max(1.00000001e-07, -r15.z);
              r15.z = r15.w / r15.z;
              r14.w = min(abs(r15.z), r14.w);
              r39.z = r40.x;
              r15.z = dot(r13.xyz, r39.xyz);
              r15.w = dot(r16.xyz, r39.xyz);
              r15.w = r15.w + -r40.y;
              r17.x = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r17.x ? r15.w : -r15.w;
              r15.z = max(1.00000001e-07, -r15.z);
              r15.z = r15.w / r15.z;
              r14.w = min(abs(r15.z), r14.w);
              r41.zw = r40.zw;
              r15.z = dot(r13.zxy, r41.xzw);
              r15.w = dot(r16.zxy, r41.xzw);
              r15.w = r15.w + -r41.y;
              r17.x = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r17.x ? r15.w : -r15.w;
              r15.z = max(1.00000001e-07, -r15.z);
              r15.z = r15.w / r15.z;
              r14.w = min(abs(r15.z), r14.w);
              r29.x = r33.w;
              r29.yz = r34.zw;
              r19.yzw = r29.xyz + r16.xyz;
              r19.yzw = r13.xyz * r14.www + r19.yzw;
              r15.z = dot(r19.yzw, r19.yzw);
              r15.z = sqrt(r15.z);
              r14.w = r14.w / r15.z;
              r14.w = r14.w + r14.w;
              r14.w = sqrt(r14.w);
              r14.w = r3.w * 5 + r14.w;
              r14.w = -0.844799995 + r14.w;
              r28.y = r31.z;
              r28.z = r32.x;
              r36.x = dot(r19.yzw, r28.xyz);
              r29.xy = r31.xw;
              r29.z = r32.w;
              r36.y = dot(r19.yzw, r29.xyz);
              r32.x = r31.y;
              r36.z = dot(r19.yzw, r32.xyz);
              if (9 == 0) r15.z = 0; else if (9+16 < 32) {               r15.z = (uint)r29.w << (32-(9 + 16)); r15.z = (uint)r15.z >> (32-9);              } else r15.z = (uint)r29.w >> 16;
              r36.w = (uint)r15.z;
              r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r14.w).xyz;
              r30.xzw = (int3)r19.yzw & int3(-2147483648,-2147483648,-2147483648);
              r30.xzw = cmp((int3)r30.xzw == int3(2139095040,2139095040,2139095040));
              r14.w = (int)r30.z | (int)r30.x;
              r14.w = (int)r30.w | (int)r14.w;
              r19.yzw = r14.www ? float3(1,1,0) : r19.yzw;
              r31.x = dot(r16.xyz, r28.xyz);
              r31.y = dot(r16.xyz, r29.xyz);
              r31.z = dot(r16.xyz, r32.xyz);
              r16.xyz = saturate(r31.xyz * r33.xyz + float3(0.5,0.5,0.5));
              r34.z = r35.x;
              r16.xyz = r16.xyz * r34.xyz + r35.yzw;
              r36.x = dot(r6.xyz, r28.xyz);
              r36.y = dot(r6.xyz, r29.xyz);
              r36.z = dot(r6.xyz, r32.xyz);
              r28.xyz = cmp(float3(0,0,0) < r36.xyz);
              r18.z = r28.x ? 0 : 0.5;
              r29.xyz = r18.xyz + r16.xyz;
              r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
              r30.xzw = r36.xyz * r36.xyz;
              r30.xzw = r30.xzw * r12.www;
              r20.z = r28.y ? 0 : 0.5;
              r28.xyw = r20.xyz + r16.xyz;
              r28.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xyw, 0).xyz;
              r28.xyw = r28.xyw * r30.zzz;
              r28.xyw = r29.xyz * r30.xxx + r28.xyw;
              r23.z = r28.z ? 0 : 0.5;
              r16.xyz = r23.xyz + r16.xyz;
              r16.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
              r16.xyz = r16.xyz * r30.www + r28.xyw;
              r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
              r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
              r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
              r14.w = (int)r29.y | (int)r29.x;
              r14.w = (int)r29.z | (int)r14.w;
              r28.xyz = r14.www ? float3(1,1,0) : r28.xyz;
              r29.xyz = r28.xyz * r16.xyz;
              r14.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r26.xyz = r16.xyz * r28.xyz + r26.xyz;
              r15.z = r14.w * r8.z;
              r16.xyz = r19.yzw * r12.www;
              r12.w = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r12.w = r8.z * r14.w + r12.w;
              r12.w = r15.z / r12.w;
              r28.x = r26.w;
              r28.yz = r27.xy;
              r27.xyw = r16.yzx * r12.www + r28.yzx;
              r26.w = r27.w;
            }
          }
        }
      }
      r24.xyzw = r26.xyzw;
      r25.yzw = r27.xyz;
      r10.w = (int)r10.w + 32;
    }
    r8.w = cmp(r25.w < 1);
    if (r8.w != 0) {
      r15.xy = float2(0,0);
      r16.w = 0;
      r17.yz = float2(0,1);
      r18.xy = float2(0,0);
      r19.x = 1;
      r20.xy = float2(0,0);
      r23.xy = float2(0,0);
      r26.x = r24.w;
      r26.yzw = r25.yzw;
      r12.yzw = r24.xyz;
      r8.w = r25.w;
      r10.z = 0;
      while (true) {
        r10.w = cmp((uint)r10.z >= (uint)r2.x);
        if (r10.w != 0) break;
        r15.z = (uint)r10.z >> 5;
        r16.xyz = (int3)r14.xyz + (int3)r15.xyz;
        r10.w = visibleProbes.Load(r16.xyzw).x;
        r11.w = cmp((int)r2.y == (int)r10.z);
        if (r2.z == 0) r14.w = 0; else if (r2.z+0 < 32) {         r14.w = (uint)r10.w << (32-(r2.z + 0)); r14.w = (uint)r14.w >> (32-r2.z);        } else r14.w = (uint)r10.w >> 0;
        r10.w = r11.w ? r14.w : r10.w;
        r11.w = (int)r10.z + numLights;
        r27.xyzw = r26.xyzw;
        r16.xyz = r12.yzw;
        r14.w = r8.w;
        r15.z = r10.w;
        while (true) {
          if (r15.z == 0) break;
          r15.w = firstbitlow((uint)r15.z);
          r17.w = 1 << (int)r15.w;
          r18.w = (int)r15.z & (int)r17.w;
          if (r18.w != 0) {
            r15.z = (int)r15.z ^ (int)r17.w;
            r17.w = (int)r11.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(0), t11.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xy, r17.w, l(16), t11.xyxx
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
            r28.xyz = -v6.xyz + r28.xyz;
            r29.z = r28.w;
            r28.xyz = cmp(abs(r28.xyz) < r29.zxy);
            r17.w = r28.y ? r28.x : 0;
            r17.w = r28.z ? r17.w : 0;
            if (r17.w != 0) {
              r15.w = (int)r10.z + (int)r15.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(0), t15.wxyz
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.zw, r15.w, l(96), t15.xxxy
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(116), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
              r30.xyz = v6.xyz + -r28.yzw;
              r17.w = (int)r29.w & 0x0000ffff;
              if (6 == 0) r18.w = 0; else if (6+25 < 32) {               r18.w = (uint)r29.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);              } else r18.w = (uint)r29.w >> 25;
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
              r20.w = dot(r31.xyz, r30.xyz);
              r20.w = saturate(r20.w + r31.w);
              r22.w = dot(r32.xyz, r30.xyz);
              r22.w = saturate(r22.w + r32.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r33.xyz, r30.xyz);
              r22.w = saturate(r22.w + r33.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r34.xyz, r30.xyz);
              r22.w = saturate(r22.w + r34.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r35.xyz, r30.xyz);
              r22.w = saturate(r22.w + r35.w);
              r20.w = r22.w * r20.w;
              r22.w = dot(r36.xyz, r30.xyz);
              r22.w = saturate(r22.w + r36.w);
              r17.x = r22.w * r20.w;
              r20.w = (int)r19.z & 1;
              r31.xy = r20.ww ? r17.xy : r17.zx;
              r17.x = r19.z;
              r32.xy = r31.xy;
              r20.w = 1;
              while (true) {
                r22.w = cmp((int)r20.w >= (int)r18.w);
                if (r22.w != 0) break;
                r22.w = (int)r17.w + (int)r20.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r22.w, l(0), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r22.w, l(16), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r22.w, l(32), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r22.w, l(48), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r22.w, l(64), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r22.w, l(80), t16.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
                r22.w = dot(r33.xyz, r30.xyz);
                r22.w = saturate(r22.w + r33.w);
                r22.w = r32.x * r22.w;
                r23.w = dot(r34.xyz, r30.xyz);
                r23.w = saturate(r23.w + r34.w);
                r22.w = r23.w * r22.w;
                r23.w = dot(r35.xyz, r30.xyz);
                r23.w = saturate(r23.w + r35.w);
                r22.w = r23.w * r22.w;
                r23.w = dot(r36.xyz, r30.xyz);
                r23.w = saturate(r23.w + r36.w);
                r22.w = r23.w * r22.w;
                r23.w = dot(r37.xyz, r30.xyz);
                r23.w = saturate(r23.w + r37.w);
                r22.w = r23.w * r22.w;
                r23.w = dot(r38.xyz, r30.xyz);
                r23.w = saturate(r23.w + r38.w);
                r32.x = r23.w * r22.w;
                r28.w = (uint)r17.x >> 2;
                if (1 == 0) r30.w = 0; else if (1+2 < 32) {                 r30.w = (uint)r17.x << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);                } else r30.w = (uint)r17.x >> 2;
                r31.z = (int)r28.w & 2;
                r31.w = max(r32.y, r32.x);
                r22.w = -r22.w * r23.w + 1;
                r22.w = r32.y * r22.w;
                r19.y = r31.z ? r22.w : r31.w;
                r32.xy = r30.ww ? r32.xy : r19.xy;
                r20.w = (int)r20.w + 1;
                r17.x = r28.w;
              }
              r17.x = saturate(r32.y + -r14.w);
              r17.w = r17.x * r19.w;
              r18.w = cmp(0 < r17.w);
              if (r18.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(16), t15.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(32), t15.yxwz
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(48), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(64), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(80), t15.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(132), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r15.w, l(148), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r15.w, l(164), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(180), t15.zwxy
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r15.w, l(196), t15.xyzw
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xy, r15.w, l(212), t15.xyxx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
                r27.w = r17.x * r19.w + r27.w;
                r15.w = r17.w * r29.z;
                r29.z = r37.z;
                r17.x = dot(r13.xyz, r29.xyz);
                r17.w = dot(r30.xyz, r29.xyz);
                r17.w = r17.w + -r37.w;
                r18.w = cmp(r17.w >= 0);
                r17.w = max(abs(r17.w), r7.w);
                r17.w = r18.w ? r17.w : -r17.w;
                r17.x = max(1.00000001e-07, -r17.x);
                r17.x = r17.w / r17.x;
                r17.x = min(131072, abs(r17.x));
                r37.z = r38.z;
                r17.w = dot(r13.xyz, r37.xyz);
                r18.w = dot(r30.xyz, r37.xyz);
                r18.w = r18.w + -r38.w;
                r19.y = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r7.w);
                r18.w = r19.y ? r18.w : -r18.w;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.w / r17.w;
                r17.x = min(r17.x, abs(r17.w));
                r38.z = r39.z;
                r17.w = dot(r13.xyz, r38.xyz);
                r18.w = dot(r30.xyz, r38.xyz);
                r18.w = r18.w + -r39.w;
                r19.y = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r7.w);
                r18.w = r19.y ? r18.w : -r18.w;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.w / r17.w;
                r17.x = min(r17.x, abs(r17.w));
                r39.z = r40.z;
                r17.w = dot(r13.xyz, r39.xyz);
                r18.w = dot(r30.xyz, r39.xyz);
                r18.w = r18.w + -r40.w;
                r19.y = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r7.w);
                r18.w = r19.y ? r18.w : -r18.w;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.w / r17.w;
                r17.x = min(r17.x, abs(r17.w));
                r40.z = r41.x;
                r17.w = dot(r13.xyz, r40.xyz);
                r18.w = dot(r30.xyz, r40.xyz);
                r18.w = r18.w + -r41.y;
                r19.y = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r7.w);
                r18.w = r19.y ? r18.w : -r18.w;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.w / r17.w;
                r17.x = min(r17.x, abs(r17.w));
                r42.zw = r41.zw;
                r17.w = dot(r13.zxy, r42.xzw);
                r18.w = dot(r30.zxy, r42.xzw);
                r18.w = r18.w + -r42.y;
                r19.y = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r7.w);
                r18.w = r19.y ? r18.w : -r18.w;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.w / r17.w;
                r17.x = min(r17.x, abs(r17.w));
                r29.x = r34.w;
                r29.yz = r35.zw;
                r19.yzw = r29.xyz + r30.xyz;
                r19.yzw = r13.xyz * r17.xxx + r19.yzw;
                r17.w = dot(r19.yzw, r19.yzw);
                r17.w = sqrt(r17.w);
                r17.x = r17.x / r17.w;
                r17.x = r17.x + r17.x;
                r17.x = sqrt(r17.x);
                r17.x = r3.w * 5 + r17.x;
                r17.x = -0.844799995 + r17.x;
                r28.y = r31.z;
                r28.z = r33.x;
                r37.x = dot(r19.yzw, r28.xyz);
                r29.xy = r31.xw;
                r29.z = r33.w;
                r37.y = dot(r19.yzw, r29.xyz);
                r33.x = r31.y;
                r37.z = dot(r19.yzw, r33.xyz);
                if (9 == 0) r17.w = 0; else if (9+16 < 32) {                 r17.w = (uint)r29.w << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);                } else r17.w = (uint)r29.w >> 16;
                r37.w = (uint)r17.w;
                r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, r17.x).xyz;
                r31.xyz = (int3)r19.yzw & int3(-2147483648,-2147483648,-2147483648);
                r31.xyz = cmp((int3)r31.xyz == int3(2139095040,2139095040,2139095040));
                r17.x = (int)r31.y | (int)r31.x;
                r17.x = (int)r31.z | (int)r17.x;
                r19.yzw = r17.xxx ? float3(1,1,0) : r19.yzw;
                r31.x = dot(r30.xyz, r28.xyz);
                r31.y = dot(r30.xyz, r29.xyz);
                r31.z = dot(r30.xyz, r33.xyz);
                r30.xyz = saturate(r31.xyz * r34.xyz + float3(0.5,0.5,0.5));
                r35.z = r36.x;
                r30.xyz = r30.xyz * r35.xyz + r36.yzw;
                r37.x = dot(r6.xyz, r28.xyz);
                r37.y = dot(r6.xyz, r29.xyz);
                r37.z = dot(r6.xyz, r33.xyz);
                r28.xyz = cmp(float3(0,0,0) < r37.xyz);
                r18.z = r28.x ? 0 : 0.5;
                r29.xyz = r30.xyz + r18.xyz;
                r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
                r31.xyz = r37.xyz * r37.xyz;
                r31.xyz = r31.xyz * r15.www;
                r20.z = r28.y ? 0 : 0.5;
                r28.xyw = r30.xyz + r20.xyz;
                r28.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xyw, 0).xyz;
                r28.xyw = r28.xyw * r31.yyy;
                r28.xyw = r29.xyz * r31.xxx + r28.xyw;
                r23.z = r28.z ? 0 : 0.5;
                r29.xyz = r30.xyz + r23.xyz;
                r29.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
                r28.xyz = r29.xyz * r31.zzz + r28.xyw;
                r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, 6).xyz;
                r30.xyz = (int3)r29.xyz & int3(-2147483648,-2147483648,-2147483648);
                r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
                r17.x = (int)r30.y | (int)r30.x;
                r17.x = (int)r30.z | (int)r17.x;
                r29.xyz = r17.xxx ? float3(1,1,0) : r29.xyz;
                r30.xyz = r29.xyz * r28.xyz;
                r17.x = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r16.xyz = r28.xyz * r29.xyz + r16.xyz;
                r17.w = r17.x * r8.z;
                r19.yzw = r19.yzw * r15.www;
                r15.w = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r15.w = r8.z * r17.x + r15.w;
                r15.w = r17.w / r15.w;
                r27.xyz = r19.yzw * r15.www + r27.xyz;
              }
            }
          }
        }
        r26.xyzw = r27.xyzw;
        r12.yzw = r16.xyz;
        r10.z = (int)r10.z + 32;
      }
      r25.xyzw = r26.zxyw;
      r24.xyz = r12.yzw;
      r25.xyzw = r25.yzxw;
    } else {
      r25.x = r24.w;
    }
    r2.x = max(1, r25.w);
    r2.x = rcp(r2.x);
    r25.w = saturate(r25.w);
    r21.xyz = r24.xyz * r2.xxx;
    r22.xyz = r25.xyz * r2.xxx;
    r2.y = cmp(r25.w < 0.99000001);
    if (r2.y != 0) {
      r2.y = 1 + -r25.w;
      r2.z = sunConstants.globalProbeExposure * r2.y;
      r12.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
      r15.x = globalProbeConstants.data[0].w * r12.y;
      r15.yz = globalProbeConstants.data[1].xy * r12.zw;
      r12.yzw = saturate(float3(0.5,0.5,0.5) + r15.xyz);
      r15.xy = globalProbeConstants.data[1].zw * r12.yz;
      r15.z = globalProbeConstants.data[2].x * r12.w;
      r12.yzw = globalProbeConstants.data[2].yzw + r15.xyz;
      r15.xyz = cmp(float3(0,0,0) < r6.xyz);
      r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r15.w = 0;
      r16.xyz = r15.wwx + r12.yzw;
      r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r17.xyz = r6.xyz * r6.xyz;
      r17.xyz = r17.xyz * r2.zzz;
      r18.xyz = r15.wwy + r12.yzw;
      r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r18.xyz = r18.xyz * r17.yyy;
      r16.xyz = r16.xyz * r17.xxx + r18.xyz;
      r12.yzw = r15.wwz + r12.yzw;
      r12.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.yzw, 0).xyz;
      r12.yzw = r12.yzw * r17.zzz + r16.xyz;
      r6.w = 0;
      r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r6.xyzw, 6).xyz;
      r12.yzw = r15.xyz * r12.yzw;
      r2.z = dot(r12.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r21.xyz = r24.xyz * r2.xxx + r12.yzw;
      r13.w = 0;
      r12.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r4.w).xyz;
      r2.x = sunConstants.globalProbeExposure * r2.y + -r2.z;
      r2.x = r8.y * r2.x + r2.z;
      r22.xyz = r12.yzw * r2.xxx + r22.xyz;
    }
  } else {
    r22.x = r21.w;
  }
  r2.x = r8.x + r5.x;
  r2.x = log2(abs(r2.x));
  r2.x = r3.y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x + r5.x;
  r2.x = saturate(-1 + r2.x);
  r15.xyz = r21.xyz * r5.xxx;
  r2.yz = r8.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r8.yzw = r22.xyz * r2.xxx;
  r16.xyz = r8.zwy * r2.yyy;
  r2.xyz = r8.yzw * r2.zzz;
  r3.w = sqrt(r3.y);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * r3.w;
  r4.w = 0.5 * r3.w;
  r3.w = -r3.w * 0.5 + 1;
  r5.x = r8.x * r3.w + r4.w;
  r3.w = r5.x * r3.w;
  r4.w = r5.x * r4.w;
  if (noReceiveShadow == 0) {
    r5.x = dot(r6.xyz, sunConstants.wldDir.xyz);
    r5.x = cmp(0 >= abs(r5.x));
    if (r5.x != 0) {
      r6.w = 0;
    }
    if (r5.x == 0) {
      r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
      r8.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r8.yzw;
      r8.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r8.yzw;
      r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r8.yzw;
      r5.x = -sunConstants.splitDepthOffset + r8.w;
      r5.x = -r5.x * 6.10351563e-05 + 1;
      r7.w = saturate(r5.x);
      r7.w = cmp(r5.x == r7.w);
      if (r7.w != 0) {
        r7.w = 0;
        r10.z = 0;
        while (true) {
          r10.w = cmp(r7.w >= 3);
          if (r10.w != 0) break;
          r10.w = (uint)r7.w;
          r12.yz = -sunConstants.splitPinTransform[r10.w].xy + r8.yz;
          r11.w = max(abs(r12.y), abs(r12.z));
          r10.z = sunConstants.splitPinTransform[r10.w].z * r11.w;
          r10.w = cmp(r10.z < 1);
          if (r10.w != 0) {
            break;
          }
          r7.w = 1 + r7.w;
          r10.z = 0;
        }
      } else {
        r7.w = 3;
        r10.z = 0;
      }
      r10.w = cmp(r7.w >= 3);
      if (r10.w != 0) {
        r12.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
        r17.xz = rcp(r12.yy);
        r17.y = -r17.z;
        r12.yzw = r8.yzy * r17.xyz + r12.zwz;
        r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
        r12.yzw = max(float3(0,0,0), r12.yzw);
        r12.yzw = min(r12.yzw, r17.xyz);
        r17.xy = sunConstants.sstLightingConstants.coordScale * r12.wz;
        r17.xy = floor(r17.xy);
        r11.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
        r11.w = r11.w * sunConstants.sstLightingConstants.coordScale + r17.x;
        r11.w = (uint)r11.w;
        r11.w = (int)r11.w + (int10)sunConstants.sstLightingConstants.rootOffset;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r11.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r14.w = (int)r13.w & 0x40000000;
        r17.x = (uint)r13.w << 2;
        if (r14.w == 0) {
          r14.w = (int)r13.w & 0x01ffffff;
          r18.x = (int)r11.w + (int)r14.w;
          r11.w = (uint)r13.w >> 25;
          r11.w = (uint)r11.w;
          r12.yzw = r12.yzw * r11.www;
          r12.yzw = frac(r12.yzw);
          r12.yzw = float3(128,128,128) * r12.yzw;
          r12.yzw = (uint3)r12.yzw;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r17.yz = (uint2)r12.wz >> int2(6,6);
          r11.w = (int)r18.z & 0xc0000000;
          r13.w = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          r13.w = r17.z ? r18.z : r13.w;
          r14.w = (uint)r13.w >> 13;
          r13.w = r17.y ? r14.w : r13.w;
          r13.w = (int)r13.w & 8191;
          r19.x = (int)r13.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r18.y = 0;
          r19.y = 1;
          r17.yzw = r11.www ? r18.xyz : r19.xyz;
          r19.yz = r11.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
          r20.xy = (uint2)r12.wz >> (uint2)r19.yy;
          r20.xy = (int2)r20.xy & int2(1,1);
          r13.w = (int)r17.w & 0xc0000000;
          r14.w = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r14.w = r20.y ? r17.w : r14.w;
          r18.w = (uint)r14.w >> 13;
          r14.w = r20.x ? r18.w : r14.w;
          r14.w = (int)r14.w & 8191;
          r19.x = (int)r14.w + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r17.yzw = r13.www ? r17.yzw : r19.xzw;
          r17.yzw = r11.www ? r18.xyz : r17.yzw;
          r11.w = (int)r17.w & 0xc0000000;
          if (r11.w == 0) {
            r11.w = (int)-r17.z + 6;
            r18.xy = (uint2)r12.wz >> (uint2)r11.ww;
            r11.w = (int)r17.w | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
            r13.w = (int)r13.w * 10;
            r11.w = (uint)r11.w >> (uint)r13.w;
            r11.w = (int)r11.w & 1023;
            r18.x = (int)r11.w + (int)r17.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
          r18.w = samp0[]..swiz;
            r18.yz = (int2)r17.zz + int2(1,2);
            r11.w = (int)-r18.y + 6;
            r19.xy = (uint2)r12.wz >> (uint2)r11.ww;
            r11.w = (int)r18.w & 0xc0000000;
            r13.w = (int)r18.w | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r19.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.w = (((uint)r19.x << 0) & bitmask.w) | ((uint)r14.w & ~bitmask.w);
            r14.w = (int)r14.w * 10;
            r13.w = (uint)r13.w >> (uint)r14.w;
            r13.w = (int)r13.w & 1023;
            r19.x = (int)r13.w + (int)r18.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
          r19.z = samp0[]..swiz;
            r19.y = r18.z;
            r19.xyz = r11.www ? r18.xyw : r19.xyz;
            r13.w = (int)-r19.y + 6;
            r18.yz = (uint2)r12.wz >> (uint2)r13.ww;
            r13.w = (int)r19.z & 0xc0000000;
            r14.w = (int)r19.z | 0x40000000;
            bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r18.y << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
            r17.z = (int)r17.z * 10;
            r14.w = (uint)r14.w >> (uint)r17.z;
            r14.w = (int)r14.w & 1023;
            r20.x = (int)r14.w + (int)r19.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
          r20.y = samp0[]..swiz;
            r18.yz = r13.ww ? r19.xz : r20.xy;
            r17.yw = r11.ww ? r18.xw : r18.yz;
          }
          r11.w = (int)r17.w & 0xc0000000;
          if (r11.w == 0) {
            if (14 == 0) r13.w = 0; else if (14+15 < 32) {             r13.w = (uint)r17.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);            } else r13.w = (uint)r17.w >> 15;
            r13.w = (uint)r13.w;
            r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
            r13.w = 6.10388815e-05 * r13.w;
            r18.xy = (int2)r17.ww & int2(32767,536870912);
            r14.w = (uint)r18.x;
            r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
            r14.w = 3.05185094e-05 * r14.w;
            r17.z = (int)r12.z & 3;
            r17.z = (int)r17.z + (int)r17.y;
            r17.z = (int)r17.z + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
          r17.z = samp0[]..swiz;
            bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r12.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
            bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.z = (((uint)r12.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.w = (((uint)r12.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
            r12.y = (uint)r17.z >> (uint)r18.x;
            r12.y = (int)r12.y & 255;
            r12.y = (uint)r12.y;
            r12.y = r12.y * r14.w;
            r12.y = r12.y * 0.00392156886 + r13.w;
            r12.z = (int)r18.z + 1;
            if (1 == 0) r12.w = 0; else if (1+1 < 32) {             r12.w = (uint)r12.w << (32-(1 + 1)); r12.w = (uint)r12.w >> (32-1);            } else r12.w = (uint)r12.w >> 1;
            r12.z = (int)r12.w + (int)r12.z;
            r12.z = (int)r12.z + (int)r17.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(0), t23.xxxx
          r12.z = samp0[]..swiz;
            r12.z = (uint)r12.z >> (uint)r18.w;
            r12.z = (int)r12.z & 0x0000ffff;
            r12.z = (uint)r12.z;
            r12.z = r12.z * r14.w;
            r12.z = r12.z * 1.52590219e-05 + r13.w;
            r17.x = r18.y ? r12.y : r12.z;
          } else {
            r12.y = (int)r17.w & 0x80000000;
            r12.z = (int)r17.y + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(0), t23.xxxx
          r12.z = samp0[]..swiz;
            r12.y = r12.y ? r12.z : 0;
            r12.z = (uint)r17.w << 2;
            r12.w = (uint)r12.y >> 16;
            r12.y = (int)r12.y & 0x0000ffff;
            r12.yw = f16tof32(r12.yw);
            r12.z = r8.y * r12.w + r12.z;
            r12.y = r8.z * r12.y + r12.z;
            r17.x = r11.w ? r12.y : r17.x;
          }
        }
        r8.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r8.w;
        r8.w = cmp(r17.x < r8.w);
        r6.w = r8.w ? 0 : 1;
      }
      if (r10.w == 0) {
        if (enableDitheredShadow == 0) {
          r8.w = (uint)r7.w;
          r12.yz = -sunConstants.splitPinTransform[r8.w].xy + r8.yz;
          r12.yz = sunConstants.splitPinTransform[r8.w].zz * r12.yz;
          r17.xy = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r8.w = (int16)sunConstants.splitArrayOffset;
          r17.z = r8.w + r7.w;
          r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r5.x).x;
          r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r8.w = r10.w + r8.w;
          r8.w = saturate(-1 + r8.w);
          r10.w = r8.w * r8.w;
          r6.w = r10.w * r8.w;
        }
        if (enableDitheredShadow != 0) {
          r17.x = -r10.x;
          r8.w = (uint)r7.w;
          r7.w = 1 + r7.w;
          r7.w = min(2, r7.w);
          r7.w = (uint)r7.w;
          r10.z = 1 + -r10.z;
          r10.z = 28 * r10.z;
          r10.z = (uint)r10.z;
          r12.yz = -sunConstants.splitPinTransform[r8.w].xy + r8.yz;
          r12.yz = sunConstants.splitPinTransform[r8.w].zz * r12.yz;
          r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r8.yz = -sunConstants.splitPinTransform[r7.w].xy + r8.yz;
          r8.yz = sunConstants.splitPinTransform[r7.w].zz * r8.yz;
          r8.yz = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r17.y = r11.x;
          r17.z = r10.x;
          r10.w = 0;
          r11.w = 0;
          while (true) {
            r12.w = cmp((uint)r11.w >= 8);
            if (r12.w != 0) break;
            r12.w = cmp((uint)r10.z < (uint)r11.w);
            r18.xy = r12.ww ? r8.yz : r12.yz;
            r13.w = r12.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r8.w].w;
            r12.w = r12.w ? r7.w : r8.w;
            r19.x = dot(icb[r11.w+0].yx, r17.xy);
            r19.y = dot(icb[r11.w+0].yx, r17.yz);
            r18.xy = r19.xy * r13.ww + r18.xy;
            r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
            r18.z = (uint)r12.w;
            r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.x).x;
            r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
            r12.w = r13.w + r12.w;
            r12.w = saturate(-1 + r12.w);
            r10.w = r12.w * 0.125 + r10.w;
            r11.w = (int)r11.w + 1;
          }
          r5.x = r10.w * r10.w;
          r6.w = r5.x * r10.w;
        }
      }
    }
  } else {
    r6.w = 1;
  }
  r5.x = dot(r6.xyz, sunConstants.wldDir.xyz);
  r7.w = cmp(0 < abs(r5.x));
  if (r7.w != 0) {
    r7.w = cmp(0 < r6.w);
    if (r7.w != 0) {
      r7.w = sunConstants.specScale * r2.w;
      r7.w = 0.25 * r7.w;
      if (sunConstants.sunCookieIndex != 0) {
        r17.xyz = eyeOffset.xyz + v6.xyz;
        r17.w = 1;
        r8.y = dot(sunConstants.sunCookieTransform[0].xyzw, r17.xyzw);
        r8.z = dot(sunConstants.sunCookieTransform[1].xyzw, r17.xyzw);
        r17.xy = frac(r8.yz);
        r8.y = -1 + (int14)sunConstants.sunCookieIndex;
        r17.z = (uint)r8.y;
        r8.yzw = gCookieArray.SampleLevel(samplerLinear_s, r17.xyz, 0).xyz;
        r8.yzw = float3(-1,-1,-1) + r8.yzw;
        r8.yzw = sunConstants.sunCookieIntensity * r8.yzw + float3(1,1,1);
        r8.yzw = sunConstants.color.xyz * r8.yzw;
      } else {
        r8.yzw = sunConstants.color.xyz;
      }
      if (noReceiveShadow == 0) {
        r10.z = viewmodelSunShadowRaw >> 16;
        r10.w = cmp(0 < (uint)r10.z);
        r10.w = r1.z ? r10.w : 0;
        if (r10.w != 0) {
          r10.z = (int)r10.z + numLights;
          r10.z = (int)r10.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r10.z, l(52), t12.xxxx
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.z, l(68), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r10.z, l(84), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.z, l(132), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r10.z, l(148), t12.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
          r11.w = abs(r5.x) * -0.200000003 + 0.400000006;
          r12.y = cmp(r5.x < 0);
          r11.w = r12.y ? -r11.w : r11.w;
          r21.xyz = r6.xyz * r11.www + v6.xyz;
          r21.w = 1;
          r17.x = dot(r17.xyzw, r21.xyzw);
          r17.y = dot(r18.xyzw, r21.xyzw);
          r12.yz = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r12.yz = r12.yz + r20.zw;
          r12.yz = r12.yz * r20.xy;
          r17.xy = r10.ww / r19.xz;
          r17.zw = float2(1,1) + -r17.xy;
          r17.zw = cmp(r12.yz >= r17.zw);
          r17.xy = cmp(r17.xy >= r12.yz);
          r17.xy = (int2)r17.xy | (int2)r17.zw;
          r11.w = (int)r17.y | (int)r17.x;
          if (r11.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r10.z, l(28), t12.xxxx
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.z, l(100), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r10.z, l(164), t12.xyxx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
            r10.z = dot(r17.xyzw, r21.xyzw);
            r12.yz = saturate(r12.yz);
            r17.xy = r12.yz * r19.xz + r19.yw;
            r10.z = r10.z + r18.x;
            r10.z = r10.z / r18.y;
            r10.z = max(6.10351563e-05, r10.z);
            r11.w = (int)r11.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r18.x = -r10.x;
              r19.z = (uint)r11.w;
              r18.y = r11.x;
              r18.z = r10.x;
              r12.yz = float2(0,0);
              while (true) {
                r12.w = cmp((int)r12.z >= 8);
                if (r12.w != 0) break;
                r20.x = dot(icb[r12.z+0].yx, r18.xy);
                r20.y = dot(icb[r12.z+0].yx, r18.yz);
                r19.xy = r20.xy * r10.ww + r17.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.z).x;
                r12.y = r12.w * 0.125 + r12.y;
                r12.z = (int)r12.z + 1;
              }
            } else {
              r17.z = (uint)r11.w;
              r12.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.z).x;
            }
            r10.z = r12.y * r12.y;
            r10.z = r10.z * r12.y;
          } else {
            r10.z = 1;
          }
          r6.w = r10.z * r6.w;
        } else {
          r10.z = viewmodelSunShadowRaw & 0x0000ffff;
          r10.w = cmp(0 < (uint)r10.z);
          r11.w = ~(int)r1.z;
          r10.w = r10.w ? r11.w : 0;
          if (r10.w != 0) {
            r10.z = (int)r10.z + numLights;
            r10.z = (int)r10.z + -1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r10.z, l(52), t12.xxxx
          r10.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.z, l(68), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r10.z, l(84), t12.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.z, l(132), t12.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r10.z, l(148), t12.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
            r11.w = abs(r5.x) * -0.200000003 + 0.400000006;
            r12.y = cmp(r5.x < 0);
            r11.w = r12.y ? -r11.w : r11.w;
            r21.xyz = r6.xyz * r11.www + v6.xyz;
            r21.w = 1;
            r17.x = dot(r17.xyzw, r21.xyzw);
            r17.y = dot(r18.xyzw, r21.xyzw);
            r12.yz = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
            r12.yz = r12.yz + r20.zw;
            r12.yz = r12.yz * r20.xy;
            r17.xy = r10.ww / r19.xz;
            r17.zw = float2(1,1) + -r17.xy;
            r17.zw = cmp(r12.yz >= r17.zw);
            r17.xy = cmp(r17.xy >= r12.yz);
            r17.xy = (int2)r17.xy | (int2)r17.zw;
            r11.w = (int)r17.y | (int)r17.x;
            if (r11.w == 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r10.z, l(28), t12.xxxx
            r11.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.z, l(100), t12.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r10.z, l(164), t12.xyxx
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
              r10.z = dot(r17.xyzw, r21.xyzw);
              r12.yz = saturate(r12.yz);
              r17.xy = r12.yz * r19.xz + r19.yw;
              r10.z = r10.z + r18.x;
              r10.z = r10.z / r18.y;
              r10.z = max(6.10351563e-05, r10.z);
              r11.w = (int)r11.w & 0x0000ffff;
              if (enableDitheredShadow != 0) {
                r18.x = -r10.x;
                r19.z = (uint)r11.w;
                r18.y = r11.x;
                r18.z = r10.x;
                r12.yz = float2(0,0);
                while (true) {
                  r12.w = cmp((int)r12.z >= 8);
                  if (r12.w != 0) break;
                  r20.x = dot(icb[r12.z+0].yx, r18.xy);
                  r20.y = dot(icb[r12.z+0].yx, r18.yz);
                  r19.xy = r20.xy * r10.ww + r17.xy;
                  r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.z).x;
                  r12.y = r12.w * 0.125 + r12.y;
                  r12.z = (int)r12.z + 1;
                }
              } else {
                r17.z = (uint)r11.w;
                r12.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.z).x;
              }
              r10.z = r12.y * r12.y;
              r10.z = r10.z * r12.y;
            } else {
              r10.z = 1;
            }
            r6.w = r10.z * r6.w;
          }
        }
      }
      r10.z = -r8.x * 0.5 + 1;
      r10.z = -abs(r5.x) * r10.z + 1;
      r10.z = r10.z * r10.z;
      r10.z = -r10.z * 0.620000005 + 0.620000005;
      r10.z = r10.z + -abs(r5.x);
      r10.z = r3.y * r10.z + abs(r5.x);
      r10.z = r10.z * r6.w;
      r10.w = cmp(0 < r5.x);
      r17.xyz = r10.zzz * r8.yzw + r15.xyz;
      r5.x = saturate(r5.x);
      r12.yzw = -v6.xyz * r0.xxx + sunConstants.wldDir.xyz;
      r0.x = dot(r12.yzw, r12.yzw);
      r0.x = rsqrt(r0.x);
      r12.yzw = r12.yzw * r0.xxx;
      r0.x = dot(r12.yzw, r0.yzw);
      r10.z = dot(r6.xyz, r12.yzw);
      r11.w = abs(r10.z) * r2.w + -abs(r10.z);
      r10.z = abs(r10.z) * r11.w + 1;
      r11.w = r5.x * r3.w + r4.w;
      r10.z = r10.z * r10.z;
      r10.z = r10.z * r11.w;
      r10.z = rcp(r10.z);
      r5.x = r5.x * r7.w;
      r5.x = r10.z * r5.x;
      r5.x = r5.x * r6.w;
      r12.yzw = r5.xxx * r8.yzw + r2.xyz;
      r0.x = saturate(1 + -r0.x);
      r6.w = r0.x * r0.x;
      r6.w = r6.w * r6.w;
      r0.x = r6.w * r0.x;
      r0.x = r5.x * r0.x;
      r18.xyz = r0.xxx * r8.zwy + r16.xyz;
      r17.w = r18.z;
      r15.w = r16.z;
      r15.xyzw = r10.wwww ? r17.xyzw : r15.xyzw;
      r18.zw = r12.yz;
      r16.zw = r2.xy;
      r17.xyzw = r10.wwww ? r18.xyzw : r16.xyzw;
      r2.z = r10.w ? r12.w : r2.z;
      r16.z = r15.w;
      r16.xy = r17.xy;
      r2.xy = r17.zw;
    }
  }
  r0.x = ~(int)r1.z;
  r17.x = -r10.x;
  r5.x = -r8.x * 0.5 + 1;
  r8.xy = float2(0,0);
  r18.w = 0;
  r19.xyz = v6.xyz;
  r19.w = 1;
  r20.w = 1;
  r17.z = r10.x;
  r21.w = 1;
  r22.z = 1;
  r23.w = 1;
  r17.yw = r11.xx;
  r10.y = r17.w;
  r24.w = 1;
  r11.y = r17.x;
  r11.z = r10.x;
  r25.w = 1;
  r26.x = r11.x;
  r26.y = r17.x;
  r26.z = r10.x;
  r27.x = r11.x;
  r27.y = r17.x;
  r27.z = r10.x;
  r28.x = r11.x;
  r28.y = r17.x;
  r28.z = r10.x;
  r12.yzw = r15.xyz;
  r29.xyz = r16.zxy;
  r30.xyz = r2.xyz;
  r6.w = enableDitheredShadow;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= numLights);
    if (r8.w != 0) break;
    r8.z = (uint)r7.w >> 5;
    r18.xyz = (int3)r8.xyz + (int3)r14.xyz;
    r8.z = visibleLights.Load(r18.xyzw).x;
    r18.xyz = r12.yzw;
    r31.xyz = r29.xyz;
    r32.xyz = r30.xyz;
    r8.w = r6.w;
    r10.z = r8.z;
    while (true) {
      if (r10.z == 0) break;
      r10.w = firstbitlow((uint)r10.z);
      r11.w = 1 << (int)r10.w;
      r13.w = (int)r10.z & (int)r11.w;
      if (r13.w != 0) {
        r10.z = (int)r10.z ^ (int)r11.w;
        r10.w = (int)r7.w + (int)r10.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(0), t11.xyzw
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
      r33.z = samp0[]..swiz;
      r33.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r34.xy, r10.w, l(16), t11.xyxx
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
        r33.xyz = -v6.xyz + r33.xyz;
        r34.z = r33.w;
        r33.xyz = cmp(abs(r33.xyz) < r34.zxy);
        r11.w = r33.y ? r33.x : 0;
        r11.w = r33.z ? r11.w : 0;
        if (r11.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(0), t12.wxyz
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(16), t12.zxyw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(32), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(48), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(64), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(80), t12.xyzw
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(96), t12.yzwx
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
          if (3 == 0) r11.w = 0; else if (3+24 < 32) {           r11.w = (uint)r34.w << (32-(3 + 24)); r11.w = (uint)r11.w >> (32-3);          } else r11.w = (uint)r34.w >> 24;
          switch (r11.w) {
            case 4 :            r11.w = cmp(0 < r39.x);
            r40.xy = r38.zw;
            r40.z = r39.w;
            r41.xyz = -r40.xyz * float3(0.5,0.5,0.5) + r33.yzw;
            r42.xyz = -v6.xyz + r41.xyz;
            r13.w = dot(r40.xyz, r42.xyz);
            r14.w = saturate(-r13.w / r39.x);
            r43.xyz = r14.www * r40.xyz + r41.xyz;
            r43.xyz = r11.www ? r43.xyz : r33.yzw;
            r43.xyz = -v6.xyz + r43.xyz;
            r15.w = dot(r43.xyz, r43.xyz);
            r16.w = rsqrt(r15.w);
            r43.xyz = r43.xyz * r16.www;
            r16.w = dot(r6.xyz, r43.xyz);
            r22.w = cmp(0 < abs(r16.w));
            if (r22.w != 0) {
              r22.w = sqrt(r15.w);
              r26.w = r36.x * r36.x;
              r15.w = r26.w / r15.w;
              r15.w = min(1, r15.w);
              r43.xy = saturate(r22.ww * r35.xz + r35.yw);
              r43.zw = r43.xy * r43.xy;
              r43.xy = r43.xy * float2(-2,-2) + float2(3,3);
              r43.xy = r43.zw * r43.xy;
              r15.w = r43.x * r15.w;
              r15.w = r15.w * r43.y;
              r22.w = cmp(0 < r15.w);
              if (r22.w != 0) {
                if (3 == 0) r22.w = 0; else if (3+27 < 32) {                 r22.w = (uint)r34.w << (32-(3 + 27)); r22.w = (uint)r22.w >> (32-3);                } else r22.w = (uint)r34.w >> 27;
                r22.w = cmp((int)r22.w != 1);
                if (r22.w != 0) {
                  r22.w = abs(r16.w) * -0.200000003 + 0.400000006;
                  r26.w = cmp(r16.w < 0);
                  r22.w = r26.w ? -r22.w : r22.w;
                  r43.xyz = r6.xyz * r22.www + v6.xyz;
                  r43.xyz = r43.xyz + -r37.xyz;
                  r22.w = max(abs(r43.y), abs(r43.z));
                  r22.w = max(abs(r43.x), r22.w);
                  r22.w = r38.x / r22.w;
                  r22.w = r22.w + r38.y;
                  r26.w = dot(r43.xyz, r43.xyz);
                  r26.w = rsqrt(r26.w);
                  r22.w = max(6.10351563e-05, r22.w);
                  r27.w = (int)r34.w & 0x0000ffff;
                  r44.w = (uint)r27.w;
                  r27.w = 0;
                  r28.w = 0;
                  while (true) {
                    r29.w = cmp((int)r28.w >= 8);
                    if (r29.w != 0) break;
                    r45.y = dot(icb[r28.w+0].yx, r17.xy);
                    r45.z = dot(icb[r28.w+0].yx, r17.yz);
                    r45.yz = r45.yz * r36.yy;
                    r45.x = r45.y * r12.x;
                    r45.w = r45.y * r3.x;
                    r44.xyz = r43.xyz * r26.www + r45.xzw;
                    r29.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r44.xyzw, r22.w).x;
                    r27.w = r29.w * 0.125 + r27.w;
                    r28.w = (int)r28.w + 1;
                  }
                } else {
                  r27.w = 1;
                }
                r15.w = r27.w * r15.w;
                r22.w = cmp(0 < r15.w);
                if (r22.w != 0) {
                  r22.w = r34.x * r2.w;
                  r22.w = 0.25 * r22.w;
                  r26.w = dot(r40.xyz, r13.xyz);
                  r28.w = dot(r13.xyz, r42.xyz);
                  r29.w = -r26.w * r26.w + r39.x;
                  r13.w = r26.w * r28.w + -r13.w;
                  r13.w = saturate(r13.w / r29.w);
                  r26.w = r29.w / r39.x;
                  r26.w = 10 * r26.w;
                  r26.w = min(1, r26.w);
                  r13.w = r13.w + -r14.w;
                  r13.w = r26.w * r13.w + r14.w;
                  r40.xyz = r13.www * r40.xyz + r41.xyz;
                  r40.xyz = r11.www ? r40.xyz : r33.yzw;
                  r40.xyz = -v6.xyz + r40.xyz;
                  r11.w = dot(r40.xyz, r40.xyz);
                  r11.w = rsqrt(r11.w);
                  r41.xyz = r40.xyz * r11.www;
                  if (4 == 0) r13.w = 0; else if (4+16 < 32) {                   r13.w = (uint)r34.w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r34.w >> 16;
                  r14.w = cmp(0 < (uint)r13.w);
                  r14.w = r1.z ? r14.w : 0;
                  if (r14.w != 0) {
                    r13.w = (int)r13.w + numLights;
                    r13.w = (int)r13.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(52), t12.xxxx
                  r14.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(100), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(116), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                    r26.w = abs(r16.w) * -0.200000003 + 0.400000006;
                    r28.w = cmp(r16.w < 0);
                    r26.w = r28.w ? -r26.w : r26.w;
                    r20.xyz = r6.xyz * r26.www + v6.xyz;
                    r26.w = dot(r42.xyzw, r20.xyzw);
                    r28.w = dot(r43.xyzw, r20.xyzw);
                    r29.w = cmp(r28.w < r26.w);
                    if (r29.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(68), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(84), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(132), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r13.w, l(148), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xy, r13.w, l(164), t12.xyxx
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                      r42.x = dot(r42.xyzw, r20.xyzw);
                      r42.y = dot(r43.xyzw, r20.xyzw);
                      r20.xy = r42.xy / r28.ww;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r45.zw;
                      r20.xy = r20.xy * r45.xy;
                      r42.xy = r14.ww / r44.xz;
                      r42.zw = float2(1,1) + -r42.xy;
                      r42.zw = cmp(r20.xy >= r42.zw);
                      r42.xy = cmp(r42.xy >= r20.xy);
                      r42.xy = (int2)r42.xy | (int2)r42.zw;
                      r20.z = (int)r42.y | (int)r42.x;
                      r20.xy = saturate(r20.xy);
                      r42.xy = r20.xy * r44.xz + r44.yw;
                      r20.x = r46.y * r28.w;
                      r20.y = r46.x * r28.w + r26.w;
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
                      if (r8.w != 0) {
                        r43.z = (uint)r13.w;
                        r20.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r20.z >= 8);
                          if (r26.w != 0) break;
                          r44.x = dot(icb[r20.z+0].yx, r17.xw);
                          r44.y = dot(icb[r20.z+0].xy, r10.xy);
                          r43.xy = r44.xy * r14.ww + r42.xy;
                          r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r20.x).x;
                          r20.y = r26.w * 0.125 + r20.y;
                          r20.z = (int)r20.z + 1;
                        }
                      } else {
                        r42.z = (uint)r13.w;
                        r20.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r20.x).x;
                      }
                      r13.w = r20.y * r20.y;
                      r13.w = r13.w * r20.y;
                    } else {
                      r13.w = 1;
                    }
                    r15.w = r15.w * r13.w;
                  } else {
                    if (4 == 0) r13.w = 0; else if (4+20 < 32) {                     r13.w = (uint)r34.w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                    } else r13.w = (uint)r34.w >> 20;
                    r14.w = cmp(0 < (uint)r13.w);
                    r14.w = r14.w ? r0.x : 0;
                    if (r14.w != 0) {
                      r13.w = (int)r13.w + numLights;
                      r13.w = (int)r13.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(52), t12.xxxx
                    r14.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(100), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(116), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                      r20.x = abs(r16.w) * -0.200000003 + 0.400000006;
                      r20.z = cmp(r16.w < 0);
                      r20.x = r20.z ? -r20.x : r20.x;
                      r21.xyz = r6.xyz * r20.xxx + v6.xyz;
                      r20.x = dot(r42.xyzw, r21.xyzw);
                      r20.z = dot(r43.xyzw, r21.xyzw);
                      r26.w = cmp(r20.z < r20.x);
                      if (r26.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(68), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(84), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(132), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r13.w, l(148), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xy, r13.w, l(164), t12.xyxx
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                        r42.x = dot(r42.xyzw, r21.xyzw);
                        r42.y = dot(r43.xyzw, r21.xyzw);
                        r21.xy = r42.xy / r20.zz;
                        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r21.xy = r21.xy + r45.zw;
                        r21.xy = r21.xy * r45.xy;
                        r42.xy = r14.ww / r44.xz;
                        r42.zw = float2(1,1) + -r42.xy;
                        r42.zw = cmp(r21.xy >= r42.zw);
                        r42.xy = cmp(r42.xy >= r21.xy);
                        r42.xy = (int2)r42.xy | (int2)r42.zw;
                        r21.z = (int)r42.y | (int)r42.x;
                        r21.xy = saturate(r21.xy);
                        r42.xy = r21.xy * r44.xz + r44.yw;
                        r21.x = r46.y * r20.z;
                        r20.x = r46.x * r20.z + r20.x;
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
                        if (r8.w != 0) {
                          r21.z = (uint)r13.w;
                          r20.z = 0;
                          r26.w = 0;
                          while (true) {
                            r28.w = cmp((int)r26.w >= 8);
                            if (r28.w != 0) break;
                            r43.x = dot(icb[r26.w+0].xy, r11.xy);
                            r43.y = dot(icb[r26.w+0].yx, r11.xz);
                            r21.xy = r43.xy * r14.ww + r42.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r20.x).x;
                            r20.z = r21.x * 0.125 + r20.z;
                            r26.w = (int)r26.w + 1;
                          }
                        } else {
                          r42.z = (uint)r13.w;
                          r20.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r20.x).x;
                        }
                        r13.w = r20.z * r20.z;
                        r13.w = r13.w * r20.z;
                      } else {
                        r13.w = 1;
                      }
                      r15.w = r15.w * r13.w;
                    }
                  }
                  r13.w = -abs(r16.w) * r5.x + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -abs(r16.w);
                  r13.w = r3.y * r13.w + abs(r16.w);
                  r13.w = r13.w * r15.w;
                  r34.x = r33.x;
                  r14.w = cmp(0 < r16.w);
                  r21.xyz = r13.www * r34.xyz + r18.xyz;
                  r13.w = saturate(dot(r6.xyz, r41.xyz));
                  r40.xyz = r40.xyz * r11.www + r0.yzw;
                  r11.w = dot(r40.xyz, r40.xyz);
                  r11.w = rsqrt(r11.w);
                  r40.xyz = r40.xyz * r11.www;
                  r11.w = dot(r40.xyz, r0.yzw);
                  r16.w = dot(r6.xyz, r40.xyz);
                  r20.x = abs(r16.w) * r2.w + -abs(r16.w);
                  r16.w = abs(r16.w) * r20.x + 1;
                  r20.x = r13.w * r3.w + r4.w;
                  r16.w = r16.w * r16.w;
                  r16.w = r16.w * r20.x;
                  r16.w = rcp(r16.w);
                  r13.w = r13.w * r22.w;
                  r13.w = r16.w * r13.w;
                  r13.w = r13.w * r15.w;
                  r40.xyz = r13.www * r34.xyz + r32.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r15.w = r11.w * r11.w;
                  r15.w = r15.w * r15.w;
                  r11.w = r15.w * r11.w;
                  r11.w = r13.w * r11.w;
                  r41.xyz = r11.www * r34.xyz + r31.xyz;
                  r18.xyz = r14.www ? r21.xyz : r18.xyz;
                  r31.xyz = r14.www ? r41.xyz : r31.xyz;
                  r32.xyz = r14.www ? r40.xyz : r32.xyz;
                }
              }
            }
            break;
            case 2 :            r21.xy = r36.zw;
            r21.z = r37.w;
            r21.xyz = -v6.xyz + r21.xyz;
            r11.w = dot(r21.xyz, r21.xyz);
            r11.w = rsqrt(r11.w);
            r40.xyz = r21.xyz * r11.www;
            r13.w = dot(r6.xyz, r40.xyz);
            r14.w = cmp(0 < abs(r13.w));
            if (r14.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(112), t12.yzwx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(128), t12.zxyw
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
              r42.xyz = r40.xyz;
              r42.w = r41.y;
              r14.w = dot(r42.xyzw, r19.xyzw);
              r15.w = cmp(r14.w < 1);
              if (r15.w != 0) {
                r43.xyz = float3(1,1,1);
                r15.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r10.w, l(172), t12.yzwx
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r10.w, l(188), t12.wxyz
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r10.w, l(204), t12.xyzw
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r10.w, l(236), t12.xxxx
              r16.w = samp0[]..swiz;
                r47.xyz = -v6.xyz + r33.yzw;
                r20.x = r36.x * r36.x;
                r22.w = dot(r47.xyz, r47.xyz);
                r20.x = r20.x / r22.w;
                r20.x = min(1, r20.x);
                r35.xy = saturate(r14.ww * r35.xz + r35.yw);
                r35.zw = r35.xy * r35.xy;
                r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
                r35.xy = r35.zw * r35.xy;
                r20.x = r35.x * r20.x;
                r20.x = r20.x * r35.y;
                r37.w = r38.x;
                r35.x = dot(r37.xyzw, r19.xyzw);
                r47.xyz = r38.yzw;
                r47.w = r39.w;
                r35.y = dot(r47.xyzw, r19.xyzw);
                r22.xy = r35.xy / r14.ww;
                r14.w = cmp(r44.w < 0.00048828125);
                if (r14.w != 0) {
                  r45.y = r46.x;
                  r35.xy = saturate(abs(r22.xy) * r45.zw + r45.xy);
                  r35.zw = r35.xy * r35.xy;
                  r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
                  r35.xy = r35.zw * r35.xy;
                  r14.w = r35.x * r35.y;
                } else {
                  r44.w = r45.y;
                  r35.xyzw = saturate(r44.xyzw * abs(r22.yyxx));
                  r35.xyzw = log2(r35.xyzw);
                  r35.xyzw = r45.xxxx * r35.xyzw;
                  r35.xyzw = exp2(r35.xyzw);
                  r35.xy = r35.xy + r35.zw;
                  r35.xy = log2(r35.xy);
                  r35.xy = r46.xx * r35.xy;
                  r35.xy = exp2(r35.xy);
                  r22.w = r45.z * r35.x;
                  r26.w = r45.w * r35.y + -1;
                  r22.w = r45.w * r35.y + -r22.w;
                  r22.w = saturate(r26.w / r22.w);
                  r26.w = r22.w * r22.w;
                  r22.w = r22.w * -2 + 3;
                  r14.w = r26.w * r22.w;
                }
                r15.w = r20.x * r14.w;
                r14.w = (int)r16.w & 255;
                if (r14.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyz, r10.w, l(220), t12.xyzx
                r35.x = samp0[]..swiz;
                r35.y = samp0[]..swiz;
                r35.z = samp0[]..swiz;
                  r16.w = dot(r46.yzw, r22.xyz);
                  r20.x = dot(r35.xyz, r22.xyz);
                  r35.x = frac(r16.w);
                  r35.y = frac(r20.x);
                  r14.w = (int)r14.w + -1;
                  r35.z = (uint)r14.w;
                  r43.xyz = gCookieArray.SampleLevel(samplerLinear_s, r35.xyz, 0).xyz;
                } else {
                  r43.xyz = float3(1,1,1);
                }
              }
              r33.yz = r34.yz;
              r22.xyw = r33.xyz * r43.xyz;
              r14.w = cmp(0 < r15.w);
              if (r14.w != 0) {
                if (3 == 0) r14.w = 0; else if (3+27 < 32) {                 r14.w = (uint)r34.w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);                } else r14.w = (uint)r34.w >> 27;
                r14.w = cmp((int)r14.w != 1);
                if (r14.w != 0) {
                  r14.w = abs(r13.w) * -0.200000003 + 0.400000006;
                  r16.w = cmp(r13.w < 0);
                  r14.w = r16.w ? -r14.w : r14.w;
                  r23.xyz = r6.xyz * r14.www + v6.xyz;
                  r40.xyz = r39.xyz;
                  r14.w = dot(r40.xyzw, r23.xyzw);
                  r16.w = dot(r42.xyzw, r23.xyzw);
                  r20.x = cmp(r16.w >= r14.w);
                  if (r20.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.y, r10.w, l(144), t12.xxxx
                  r41.y = samp0[]..swiz;
                    r37.w = r38.x;
                    r33.x = dot(r37.xyzw, r23.xyzw);
                    r39.xyz = r38.yzw;
                    r33.y = dot(r39.xyzw, r23.xyzw);
                    r23.xy = r33.xy / r16.ww;
                    r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r23.xy = r23.xy * r41.zw + r41.xy;
                    r10.w = r14.w / r16.w;
                    r10.w = max(6.10351563e-05, r10.w);
                    r14.w = (int)r34.w & 0x0000ffff;
                    if (r8.w != 0) {
                      r33.z = (uint)r14.w;
                      r16.w = 0;
                      r20.x = 0;
                      while (true) {
                        r26.w = cmp((int)r20.x >= 8);
                        if (r26.w != 0) break;
                        r35.x = dot(icb[r20.x+0].xy, r26.xy);
                        r35.y = dot(icb[r20.x+0].yx, r26.xz);
                        r33.xy = r35.xy * r36.yy + r23.xy;
                        r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r10.w).x;
                        r16.w = r26.w * 0.125 + r16.w;
                        r20.x = (int)r20.x + 1;
                      }
                    } else {
                      r23.z = (uint)r14.w;
                      r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r10.w).x;
                    }
                    r10.w = r16.w * r16.w;
                    r10.w = r10.w * r16.w;
                  } else {
                    r10.w = 1;
                  }
                } else {
                  r10.w = 1;
                }
                r10.w = r15.w * r10.w;
                r14.w = cmp(0 < r10.w);
                if (r14.w != 0) {
                  r14.w = r34.x * r2.w;
                  r14.w = 0.25 * r14.w;
                  if (4 == 0) r15.w = 0; else if (4+16 < 32) {                   r15.w = (uint)r34.w << (32-(4 + 16)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r34.w >> 16;
                  r20.x = cmp(0 < (uint)r15.w);
                  r20.x = r1.z ? r20.x : 0;
                  if (r20.x != 0) {
                    r15.w = (int)r15.w + numLights;
                    r15.w = (int)r15.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r15.w, l(52), t12.xxxx
                  r20.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(68), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(84), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(100), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(116), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r15.w, l(132), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r15.w, l(148), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                    r23.x = abs(r13.w) * -0.200000003 + 0.400000006;
                    r23.y = cmp(r13.w < 0);
                    r23.x = r23.y ? -r23.x : r23.x;
                    r24.xyz = r6.xyz * r23.xxx + v6.xyz;
                    r23.x = dot(r33.xyzw, r24.xyzw);
                    r23.y = dot(r35.xyzw, r24.xyzw);
                    r23.z = dot(r36.xyzw, r24.xyzw);
                    r24.x = dot(r37.xyzw, r24.xyzw);
                    r24.y = cmp(r24.x < r23.z);
                    r23.xy = r23.xy / r24.xx;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.xy = r23.xy + r39.zw;
                    r23.xy = r23.xy * r39.xy;
                    r33.xy = r20.xx / r38.xz;
                    r33.zw = float2(1,1) + -r33.xy;
                    r33.zw = cmp(r23.xy >= r33.zw);
                    r33.xy = cmp(r33.xy >= r23.xy);
                    r33.xy = (int2)r33.xy | (int2)r33.zw;
                    r24.z = (int)r33.y | (int)r33.x;
                    r24.y = (int)r24.y | (int)r24.z;
                    if (r24.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r15.w, l(28), t12.xxxx
                    r24.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xy, r15.w, l(164), t12.xyxx
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                      r23.xy = saturate(r23.xy);
                      r34.xy = r23.xy * r38.xz + r38.yw;
                      r15.w = r33.y * r24.x;
                      r23.x = r33.x * r24.x + r23.z;
                      r15.w = r23.x / r15.w;
                      r15.w = max(6.10351563e-05, r15.w);
                      r23.x = r24.y ? 0.000000 : 0;
                      if (r8.w != 0) {
                        r24.z = (uint)r23.x;
                        r23.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r23.z >= 8);
                          if (r26.w != 0) break;
                          r33.x = dot(icb[r23.z+0].xy, r27.xy);
                          r33.y = dot(icb[r23.z+0].yx, r27.xz);
                          r24.xy = r33.xy * r20.xx + r34.xy;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r15.w).x;
                          r23.y = r24.x * 0.125 + r23.y;
                          r23.z = (int)r23.z + 1;
                        }
                      } else {
                        r34.z = (uint)r23.x;
                        r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r15.w).x;
                      }
                      r15.w = r23.y * r23.y;
                      r15.w = r15.w * r23.y;
                    } else {
                      r15.w = 1;
                    }
                    r10.w = r15.w * r10.w;
                  } else {
                    if (4 == 0) r15.w = 0; else if (4+20 < 32) {                     r15.w = (uint)r34.w << (32-(4 + 20)); r15.w = (uint)r15.w >> (32-4);                    } else r15.w = (uint)r34.w >> 20;
                    r20.x = cmp(0 < (uint)r15.w);
                    r20.x = r20.x ? r0.x : 0;
                    if (r20.x != 0) {
                      r15.w = (int)r15.w + numLights;
                      r15.w = (int)r15.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r15.w, l(52), t12.xxxx
                    r20.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(68), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
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
                      r23.x = abs(r13.w) * -0.200000003 + 0.400000006;
                      r23.z = cmp(r13.w < 0);
                      r23.x = r23.z ? -r23.x : r23.x;
                      r25.xyz = r6.xyz * r23.xxx + v6.xyz;
                      r24.x = dot(r33.xyzw, r25.xyzw);
                      r24.y = dot(r34.xyzw, r25.xyzw);
                      r23.x = dot(r35.xyzw, r25.xyzw);
                      r23.z = dot(r36.xyzw, r25.xyzw);
                      r24.z = cmp(r23.z < r23.x);
                      r24.xy = r24.xy / r23.zz;
                      r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r24.xy = r24.xy + r38.zw;
                      r24.xy = r24.xy * r38.xy;
                      r25.xy = r20.xx / r37.xz;
                      r33.xy = float2(1,1) + -r25.xy;
                      r33.xy = cmp(r24.xy >= r33.xy);
                      r25.xy = cmp(r25.xy >= r24.xy);
                      r25.xy = (int2)r25.xy | (int2)r33.xy;
                      r25.x = (int)r25.y | (int)r25.x;
                      r24.z = (int)r24.z | (int)r25.x;
                      if (r24.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.z, r15.w, l(28), t12.xxxx
                      r24.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xy, r15.w, l(164), t12.xyxx
                      r25.x = samp0[]..swiz;
                      r25.y = samp0[]..swiz;
                        r24.xy = saturate(r24.xy);
                        r33.xy = r24.xy * r37.xz + r37.yw;
                        r15.w = r25.y * r23.z;
                        r23.x = r25.x * r23.z + r23.x;
                        r15.w = r23.x / r15.w;
                        r15.w = max(6.10351563e-05, r15.w);
                        r23.x = r24.z ? 0.000000 : 0;
                        if (r8.w != 0) {
                          r24.z = (uint)r23.x;
                          r23.z = 0;
                          r25.x = 0;
                          while (true) {
                            r25.y = cmp((int)r25.x >= 8);
                            if (r25.y != 0) break;
                            r34.x = dot(icb[r25.x+0].xy, r28.xy);
                            r34.y = dot(icb[r25.x+0].yx, r28.xz);
                            r24.xy = r34.xy * r20.xx + r33.xy;
                            r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r15.w).x;
                            r23.z = r24.x * 0.125 + r23.z;
                            r25.x = (int)r25.x + 1;
                          }
                        } else {
                          r33.z = (uint)r23.x;
                          r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r15.w).x;
                        }
                        r15.w = r23.z * r23.z;
                        r15.w = r15.w * r23.z;
                      } else {
                        r15.w = 1;
                      }
                      r10.w = r15.w * r10.w;
                    }
                  }
                  r15.w = -abs(r13.w) * r5.x + 1;
                  r15.w = r15.w * r15.w;
                  r15.w = -r15.w * 0.620000005 + 0.620000005;
                  r15.w = r15.w + -abs(r13.w);
                  r15.w = r3.y * r15.w + abs(r13.w);
                  r15.w = r15.w * r10.w;
                  r20.x = cmp(0 < r13.w);
                  r24.xyz = r15.www * r22.xyw + r18.xyz;
                  r13.w = saturate(r13.w);
                  r21.xyz = r21.xyz * r11.www + r0.yzw;
                  r11.w = dot(r21.xyz, r21.xyz);
                  r11.w = rsqrt(r11.w);
                  r21.xyz = r21.xyz * r11.www;
                  r11.w = dot(r21.xyz, r0.yzw);
                  r15.w = dot(r6.xyz, r21.xyz);
                  r21.x = abs(r15.w) * r2.w + -abs(r15.w);
                  r15.w = abs(r15.w) * r21.x + 1;
                  r21.x = r13.w * r3.w + r4.w;
                  r15.w = r15.w * r15.w;
                  r15.w = r15.w * r21.x;
                  r15.w = rcp(r15.w);
                  r13.w = r13.w * r14.w;
                  r13.w = r15.w * r13.w;
                  r10.w = r13.w * r10.w;
                  r21.xyz = r10.www * r22.xyw + r32.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r13.w = r11.w * r11.w;
                  r13.w = r13.w * r13.w;
                  r11.w = r13.w * r11.w;
                  r10.w = r11.w * r10.w;
                  r22.xyw = r10.www * r22.xyw + r31.xyz;
                  r18.xyz = r20.xxx ? r24.xyz : r18.xyz;
                  r31.xyz = r20.xxx ? r22.xyw : r31.xyz;
                  r32.xyz = r20.xxx ? r21.xyz : r32.xyz;
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
    r12.yzw = r18.xyz;
    r29.xyz = r31.xyz;
    r30.xyz = r32.xyz;
    r7.w = (int)r7.w + 32;
  }
  r0.xyz = float3(1,1,1) + -r7.xyz;
  r0.xyz = r29.xyz * r0.xyz;
  r0.xyz = r30.xyz * r7.xyz + r0.xyz;
  r0.xyz = r12.yzw * r4.xyz + r0.xyz;
  r0.w = 1 + -coolingFactor;
  r0.w = r9.w * r0.w;
  r1.xyz = r1.xyw * r3.zzz + -r5.yzw;
  r1.xyz = r0.www * r1.xyz + r5.yzw;
  r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = max(9.99999975e-05, r0.w);
  r0.w = max(relHDRExposure.x, r0.w);
  r2.xyz = r1.xyz * r0.www;
  r1.xyz = relativeHDR ? r2.xyz : r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v6.xyz, v6.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v6.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r1.w = cmp(0.00999999978 < abs(v6.z));
      r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
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
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v6.z;
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
    r0.w = fogConstants.heightFalloff * v6.z;
    r1.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
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
    r1.w = dot(v6.xyz, v6.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v6.xyz * r1.www;
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
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  r1.xyz = max(float3(0,0,0), r0.xyz);
  r9.xyz = r1.xyz * r9.www;
  r0.w = (int)r9.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r2.xyzw = cmp(r9.xyzw == float4(0,0,0,0));
  r2.xy = r2.zw ? r2.xy : 0;
  r1.w = r2.y ? r2.x : 0;
  r0.w = (int)r0.w | (int)r1.w;
  if (r0.w == 0) {
    r2.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r2.z, u6, r2.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.w = cmp((uint)r2.z < oitMaxEntries);
    if (r0.w != 0) {
      r0.w = max(r9.y, r9.z);
      r0.w = max(r9.x, r0.w);
      r0.w = abs(r0.w);
      r0.w = (int)r0.w & 0x7f800000;
      r0.w = (int)r0.w + 0x00800000;
      r1.xyz = r1.xyz * r9.www + r0.www;
      if (8 == 0) r1.x = 0; else if (8+15 < 32) {       r1.x = (uint)r1.x << (32-(8 + 15)); r1.x = (uint)r1.x >> (32-8);      } else r1.x = (uint)r1.x >> 15;
      r1.yz = (uint2)r1.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r1.y = (((uint)r1.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r1.z = (((uint)r1.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r1.x = (int)r1.y + (int)r1.x;
      r1.x = (int)r1.z + (int)r1.x;
      r0.w = (uint)r0.w << 1;
      r1.xzw = (int3)r0.www + (int3)r1.xxx;
      r0.w = saturate(r9.w);
      r0.w = 2046 * r0.w;
      r0.w = (uint)r0.w;
      r2.w = (uint)v0.z << 2;
      r0.w = (int)r0.w & 2046;
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r1.y = (((uint)r0.w << 0) & bitmask.y) | ((uint)r2.w & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r2.xyzz, r1.xyzw
      r0.w = -1;
    } else {
      r0.w = 0;
    }
  } else {
    r0.w = -1;
  }
  r9.xyz = r0.xyz * r9.www;
  o0.xyzw = r0.wwww ? float4(0,0,0,0) : r9.xyzw;
  return;
}