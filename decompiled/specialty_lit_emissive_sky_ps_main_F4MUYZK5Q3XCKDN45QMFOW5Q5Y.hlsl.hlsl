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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47;
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
  r5.y = glossRange.y + -glossRange.x;
  r5.z = saturate(0.0588235296 * glossRange.y);
  r6.xyz = normalMap.Sample(normalSampler_s, r3.zw).xyz;
  r6.xyz = float3(-0.5,-0.5,-0) + r6.xyz;
  r6.xyz = baseNormalHeight * r6.xyz + float3(0.5,0.5,0);
  r6.xy = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r5.w = dot(r6.xy, r6.xy);
  r5.w = 1 + -r5.w;
  r5.w = max(0, r5.w);
  r5.w = sqrt(r5.w);
  r6.z = r6.z * r6.z;
  r6.z = 0.333333343 * r6.z;
  r6.z = min(1, r6.z);
  r6.w = v8.x ? 1 : -1;
  r7.x = dot(v4.xyz, v4.xyz);
  r7.x = rsqrt(r7.x);
  r7.xyz = v4.xyz * r7.xxx;
  r7.xyz = r7.xyz * r6.www;
  r7.w = dot(v5.xyz, v5.xyz);
  r7.w = rsqrt(r7.w);
  r8.xyz = v5.xyz * r7.www;
  r8.xyz = r8.xyz * r6.www;
  r7.w = dot(v6.xyz, v6.xyz);
  r7.w = rsqrt(r7.w);
  r9.xyz = v6.xyz * r7.www;
  r9.xyz = r9.xyz * r6.www;
  r5.z = -17 * r5.z;
  r5.z = exp2(r5.z);
  r5.z = r6.z + r5.z;
  r5.z = log2(r5.z);
  r5.z = -0.0588235296 * r5.z;
  r9.xyz = r9.xyz * r6.yyy;
  r6.xyw = r8.xyz * r6.xxx + r9.xyz;
  r6.xyw = r7.xyz * r5.www + r6.xyw;
  r5.w = dot(r6.xyw, r6.xyw);
  r5.w = rsqrt(r5.w);
  r6.xyw = r6.xyw * r5.www;
  r5.y = debugGlossOverride.x * r5.y + glossRange.x;
  r5.y = saturate(0.0588235296 * r5.y);
  r5.y = -17 * r5.y;
  r5.y = exp2(r5.y);
  r5.y = r6.z + r5.y;
  r5.y = log2(r5.y);
  r5.y = -0.0588235296 * r5.y;
  r5.yz = max(float2(0,0), r5.yz);
  r5.w = cmp(0 < debugStreamerControl.w);
  if (r5.w != 0) {
    r5.w = (int)debugStreamerControl.w;
    r6.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r3.zw);
    r7.x = colorMap.CalculateLevelOfDetail(colorSampler_s, r3.zw);
    r6.z = cmp(r6.z < r7.x);
    r7.x = cmp(0 < r7.x);
    r7.yzw = (int3)r5.www & int3(1,2,4);
    r8.xyz = r7.yyy ? float3(1,0,1) : r4.xyz;
    r9.xyz = r7.zzz ? float3(0,1,1) : r4.xyz;
    r7.xyz = r7.xxx ? r8.xyz : r9.xyz;
    r8.xyz = r7.www ? float3(0,1,0) : r4.xyz;
    r4.xyz = r6.zzz ? r7.xyz : r8.xyz;
  }
  r7.xyz = debugColorOverride.xyz + -r4.xyz;
  r4.xyz = debugColorOverride.www * r7.xyz + r4.xyz;
  r4.w = -r4.w * w1.x + debugAlphaOverride.x;
  r4.w = debugAlphaOverride.w * r4.w + r5.x;
  r7.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r7.xyz = debugSpecularOverride.www * r7.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.x = r5.y + -r5.z;
  r5.y = debugGlossOverride.w * r5.x + r5.z;
  r5.z = -1 + debugOcclusionOverride.x;
  r5.z = debugOcclusionOverride.w * r5.z + 1;
  r8.xyz = v8.xxx ? v4.xyz : -v4.xyz;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = rsqrt(r5.w);
  r8.xyz = r8.xyz * r5.www + -r6.xyw;
  r6.xyz = debugNormalOverride.www * r8.xyz + r6.xyw;
  if (r1.w != 0) {
    r1.w = rowCount * columnCount;
    r5.w = imageTime * r1.w;
    r7.w = gameTime.w * r5.w;
    r7.w = cmp(r7.w >= -r7.w);
    r7.w = r7.w ? r5.w : -r5.w;
    r8.x = 1 / r7.w;
    r8.x = gameTime.w * r8.x;
    r8.x = frac(r8.x);
    r7.w = r8.x * r7.w;
    r5.w = r7.w / r5.w;
    r1.w = r5.w * r1.w;
    r1.w = round(r1.w);
    r5.w = r1.w / columnCount;
    r7.w = columnCount * r1.w;
    r7.w = cmp(r7.w >= -r7.w);
    r7.w = r7.w ? columnCount : -columnCount;
    r8.x = 1 / r7.w;
    r1.w = r8.x * r1.w;
    r1.w = frac(r1.w);
    r1.w = r7.w * r1.w;
    r1.w = trunc(r1.w);
    r1.w = r3.z + r1.w;
    r8.x = r1.w / columnCount;
    r1.w = trunc(r5.w);
    r1.w = r3.w + r1.w;
    r8.y = r1.w / rowCount;
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
    sincos(r1.w, r9.x, r10.x);
    r10.y = r10.x;
    r10.z = r9.x;
    r11.x = dot(r10.yz, r1.xy);
    r10.x = -r9.x;
    r11.y = dot(r10.xy, r1.xy);
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
    r8.xy = clampU ? r3.zw : r1.xy;
  }
  r1.xy = r3.xy * distortionAmount + r8.xy;
  r8.xyzw = emissiveMap.Sample(colorSampler_s, r1.xy).xyzw;
  r1.xyw = colorTint.xyz * r8.xyz;
  r8.xyz = saturate(r1.xyw);
  r8.xyz = log2(r8.xyz);
  r8.xyz = alphaCooling * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r3.z = saturate(r1.z);
  r3.w = log2(r3.z);
  r3.w = invertFalloff * r3.w;
  r3.w = exp2(r3.w);
  r3.z = 1 + -r3.z;
  r3.z = log2(r3.z);
  r3.z = invertFalloff * r3.z;
  r3.z = exp2(r3.z);
  r3.z = invertFalloff ? r3.z : r3.w;
  r9.xy = cmp(invertFalloff == float2(0,0));
  r3.z = r9.x ? 1 : r3.z;
  r3.w = invertFalloff * r8.w;
  r3.z = r3.w * r3.z;
  r1.xyw = r3.zzz * r1.xyw;
  r8.xyz = r8.xyz * r3.zzz;
  r3.z = v3.x + v3.y;
  r3.z = v3.z + r3.z;
  r3.z = flickerSeed.y + r3.z;
  r3.z = frac(r3.z);
  r10.y = gameTime.w * flickerSpeed + r3.z;
  r10.x = flickerSeed.x;
  r3.z = flickerLookupMap.SampleLevel(lookupSampler_s, r10.xy, 0).x;
  r3.z = log2(abs(r3.z));
  r3.z = flickerPower * r3.z;
  r3.z = exp2(r3.z);
  r3.w = flickerRange.y + -flickerRange.x;
  r3.z = r3.z * r3.w + flickerRange.x;
  r9.xzw = r3.zzz * r1.xyw;
  r9.xzw = r9.xzw / invertFalloff;
  r3.w = saturate(dot(r9.xzw, float3(0.298999995,0.587000012,0.114)));
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
  r2.y = r3.w * r2.x;
  r1.z = r1.z * r1.z;
  r1.z = saturate(r1.z * w2.x + w2.y);
  r1.z = r2.y * r1.z;
  r10.xy = (int2)v0.xy;
  r10.zw = float2(0,0);
  r2.y = floatZSampler.Load(r10.xyz).x;
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
  r2.w = r9.y ? 60000 : r2.w;
  r2.y = r2.y + -r2.z;
  r2.y = saturate(r2.y * r2.w);
  r9.w = r2.y * r1.z;
  r2.yw = (uint2)v0.xy;
  r1.z = cmp(isDepthHack != 0);
  r3.xy = (uint2)r2.wy;
  r3.w = dot(r3.yx, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r10.x, r11.x);
  r3.x = dot(r3.xy, float2(0.0671105608,0.00583714992));
  r3.x = frac(r3.x);
  r3.x = 52.9829178 * r3.x;
  r3.x = frac(r3.x);
  r3.x = r3.x * 6.28318548 + gameTick.w;
  sincos(r3.x, r3.x, r12.x);
  r5.x = saturate(dot(r6.xyz, r0.yzw));
  r3.y = dot(-r0.yzw, r6.xyz);
  r3.y = r3.y + r3.y;
  r13.xyz = r6.xyz * -r3.yyy + -r0.yzw;
  r3.y = 17 * r5.y;
  r3.y = exp2(r3.y);
  r3.y = 2 + r3.y;
  r3.y = 2 / r3.y;
  r3.w = sqrt(r3.y);
  r4.w = 1 + -r5.y;
  r5.w = 5 * r4.w;
  r7.w = r4.w * 5 + -2.5;
  r7.w = saturate(0.400000006 * r7.w);
  r7.w = 100 * r7.w;
  r10.zw = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r8.w = exp2(r10.z);
  r8.w = r8.w * r5.x;
  r8.w = 9.1368103 * r8.w;
  r10.z = r5.w * r4.w;
  r10.z = -r10.z * 2.0159049 + r10.w;
  r10.z = exp2(r10.z);
  r10.z = r10.z * r5.x;
  r10.z = 9.70808983 * r10.z;
  r8.w = max(r10.z, r8.w);
  r8.w = max(1.26815999, r8.w);
  r2.z = 0.0078125 * r2.z;
  r2.z = min(15, r2.z);
  r2.z = (uint)r2.z;
  r14.xy = (uint2)r2.yw >> int2(6,6);
  r14.z = (uint)r2.z << 4;
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.x = 1;
  r22.xyzw = float4(0,0,0,0);
  r23.yzw = float3(0,0,0);
  r2.yz = float2(0,0);
  while (true) {
    r2.w = cmp((uint)r2.z >= numRefProbes);
    if (r2.w != 0) break;
    r15.z = (uint)r2.z >> 5;
    r16.xyz = (int3)r14.xyz + (int3)r15.xyz;
    r2.w = visibleProbes.Load(r16.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r2.z, l(0), t15.wxyz
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r2.z, l(16), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r2.z, l(32), t15.yxwz
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r2.z, l(48), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r2.z, l(64), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r2.z, l(80), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.zw, r2.z, l(96), t15.xxxy
  r10.z = samp0[]..swiz;
  r10.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r2.z, l(116), t15.xyzw
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r2.z, l(132), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r2.z, l(148), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r2.z, l(164), t15.zwxy
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r2.z, l(180), t15.zwxy
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r2.z, l(196), t15.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r2.z, l(212), t15.xyxx
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
    r12.yzw = v7.xyz + -r24.yzw;
    r11.w = dot(r12.yzw, r12.yzw);
    r11.w = sqrt(r11.w);
    r11.w = cmp(probeDebugRadius >= r11.w);
    r14.w = (int)r30.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(0), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(16), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(32), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(48), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(64), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r42.xyzw, r14.w, l(80), t16.xyzw
  r42.x = samp0[]..swiz;
  r42.y = samp0[]..swiz;
  r42.z = samp0[]..swiz;
  r42.w = samp0[]..swiz;
    r15.z = dot(r37.xyz, r12.yzw);
    r15.z = saturate(r15.z + r37.w);
    r15.w = dot(r38.xyz, r12.yzw);
    r15.w = saturate(r15.w + r38.w);
    r15.z = r15.z * r15.w;
    r15.w = dot(r39.xyz, r12.yzw);
    r15.w = saturate(r15.w + r39.w);
    r15.z = r15.z * r15.w;
    r15.w = dot(r40.xyz, r12.yzw);
    r15.w = saturate(r15.w + r40.w);
    r15.z = r15.z * r15.w;
    r15.w = dot(r41.xyz, r12.yzw);
    r15.w = saturate(r15.w + r41.w);
    r15.z = r15.z * r15.w;
    r15.w = dot(r42.xyz, r12.yzw);
    r15.w = saturate(r15.w + r42.w);
    r17.x = r15.z * r15.w;
    r15.z = (int)r10.z & 1;
    r15.zw = r15.zz ? r17.xy : r17.zx;
    r16.xy = r30.zw;
    r16.z = r31.z;
    r17.x = dot(r13.xyz, r16.xyz);
    r16.x = dot(r12.yzw, r16.xyz);
    r16.x = r16.x + -r31.w;
    r16.y = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r7.w);
    r16.x = r16.y ? r16.x : -r16.x;
    r16.y = max(1.00000001e-07, -r17.x);
    r16.x = r16.x / r16.y;
    r16.x = min(131072, abs(r16.x));
    r31.z = r32.z;
    r16.y = dot(r13.xyz, r31.xyz);
    r16.z = dot(r12.yzw, r31.xyz);
    r16.z = r16.z + -r32.w;
    r17.x = cmp(r16.z >= 0);
    r16.z = max(abs(r16.z), r7.w);
    r16.z = r17.x ? r16.z : -r16.z;
    r16.y = max(1.00000001e-07, -r16.y);
    r16.y = r16.z / r16.y;
    r16.x = min(r16.x, abs(r16.y));
    r32.z = r33.z;
    r16.y = dot(r13.xyz, r32.xyz);
    r16.z = dot(r12.yzw, r32.xyz);
    r16.z = r16.z + -r33.w;
    r17.x = cmp(r16.z >= 0);
    r16.z = max(abs(r16.z), r7.w);
    r16.z = r17.x ? r16.z : -r16.z;
    r16.y = max(1.00000001e-07, -r16.y);
    r16.y = r16.z / r16.y;
    r16.x = min(r16.x, abs(r16.y));
    r33.z = r34.z;
    r16.y = dot(r13.xyz, r33.xyz);
    r16.z = dot(r12.yzw, r33.xyz);
    r16.z = r16.z + -r34.w;
    r17.x = cmp(r16.z >= 0);
    r16.z = max(abs(r16.z), r7.w);
    r16.z = r17.x ? r16.z : -r16.z;
    r16.y = max(1.00000001e-07, -r16.y);
    r16.y = r16.z / r16.y;
    r16.x = min(r16.x, abs(r16.y));
    r34.z = r35.x;
    r16.y = dot(r13.xyz, r34.xyz);
    r16.z = dot(r12.yzw, r34.xyz);
    r16.z = r16.z + -r35.y;
    r17.x = cmp(r16.z >= 0);
    r16.z = max(abs(r16.z), r7.w);
    r16.z = r17.x ? r16.z : -r16.z;
    r16.y = max(1.00000001e-07, -r16.y);
    r16.y = r16.z / r16.y;
    r16.x = min(r16.x, abs(r16.y));
    r36.zw = r35.zw;
    r16.y = dot(r13.zxy, r36.xzw);
    r16.z = dot(r12.wyz, r36.xzw);
    r16.z = r16.z + -r36.y;
    r17.x = cmp(r16.z >= 0);
    r16.z = max(abs(r16.z), r7.w);
    r16.z = r17.x ? r16.z : -r16.z;
    r16.y = max(1.00000001e-07, -r16.y);
    r16.y = r16.z / r16.y;
    r16.x = min(r16.x, abs(r16.y));
    r31.x = r27.w;
    r31.yz = r28.zw;
    r31.xyz = r31.xyz + r12.yzw;
    r31.xyz = r13.xyz * r16.xxx + r31.xyz;
    r16.y = dot(r31.xyz, r31.xyz);
    r16.y = sqrt(r16.y);
    r16.x = r16.x / r16.y;
    r16.x = r16.x + r16.x;
    r16.x = sqrt(r16.x);
    r16.x = r4.w * 5 + r16.x;
    r16.x = -0.844799995 + r16.x;
    r24.y = r25.z;
    r24.z = r26.x;
    r32.x = dot(r31.xyz, r24.xyz);
    r33.xy = r25.xw;
    r33.z = r26.w;
    r32.y = dot(r31.xyz, r33.xyz);
    r26.x = r25.y;
    r32.z = dot(r31.xyz, r26.xyz);
    if (6 == 0) r16.y = 0; else if (6+25 < 32) {     r16.y = (uint)r30.y << (32-(6 + 25)); r16.y = (uint)r16.y >> (32-6);    } else r16.y = (uint)r30.y >> 25;
    if (9 == 0) r16.z = 0; else if (9+16 < 32) {     r16.z = (uint)r30.y << (32-(9 + 16)); r16.z = (uint)r16.z >> (32-9);    } else r16.z = (uint)r30.y >> 16;
    r32.w = (uint)r16.z;
    r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r16.x).xyz;
    r30.yzw = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
    r30.yzw = cmp((int3)r30.yzw == int3(2139095040,2139095040,2139095040));
    r16.x = (int)r30.z | (int)r30.y;
    r16.x = (int)r30.w | (int)r16.x;
    r25.xyz = r16.xxx ? float3(1,1,0) : r25.xyz;
    r31.x = dot(r12.yzw, r24.xyz);
    r31.y = dot(r12.yzw, r33.xyz);
    r31.z = dot(r12.yzw, r26.xyz);
    r27.xyz = saturate(r31.xyz * r27.xyz + float3(0.5,0.5,0.5));
    r28.z = r29.x;
    r27.xyz = r27.xyz * r28.xyz + r29.yzw;
    r32.x = dot(r6.xyz, r24.xyz);
    r32.y = dot(r6.xyz, r33.xyz);
    r32.z = dot(r6.xyz, r26.xyz);
    r24.xyz = cmp(float3(0,0,0) < r32.xyz);
    r18.z = r24.x ? 0 : 0.5;
    r26.xyz = r27.xyz + r18.xyz;
    r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
    r19.z = r24.y ? 0 : 0.5;
    r24.xyw = r27.xyz + r19.xyz;
    r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
    r20.z = r24.z ? 0 : 0.5;
    r27.xyz = r27.xyz + r20.xyz;
    r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
    r28.xyz = r32.xyz * r32.xyz;
    r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
    r30.yzw = (int3)r29.xyz & int3(-2147483648,-2147483648,-2147483648);
    r30.yzw = cmp((int3)r30.yzw == int3(2139095040,2139095040,2139095040));
    r16.x = (int)r30.z | (int)r30.y;
    r16.x = (int)r30.w | (int)r16.x;
    r29.xyz = r16.xxx ? float3(1,1,0) : r29.xyz;
    r31.xyzw = r22.xyzw;
    r30.yzw = r23.yzw;
    r16.x = r2.y;
    r16.z = r2.w;
    while (true) {
      if (r16.z == 0) break;
      r17.x = firstbitlow((uint)r16.z);
      r17.x = 1 << (int)r17.x;
      r17.w = (int)r16.z & (int)r17.x;
      if (r17.w != 0) {
        r17.x = ~(int)r17.x;
        r16.z = (int)r16.z & (int)r17.x;
        if (r11.w != 0) {
          r17.x = r10.z;
          r32.xy = r15.zw;
          r17.w = 1;
          while (true) {
            r18.z = cmp((int)r17.w >= (int)r16.y);
            if (r18.z != 0) break;
            r18.z = (int)r14.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.z, l(0), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.z, l(16), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.z, l(32), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r18.z, l(48), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r18.z, l(64), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r18.z, l(80), t16.xyzw
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
            r18.z = dot(r33.xyz, r12.yzw);
            r18.z = saturate(r18.z + r33.w);
            r18.z = r32.x * r18.z;
            r18.w = dot(r34.xyz, r12.yzw);
            r18.w = saturate(r18.w + r34.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r35.xyz, r12.yzw);
            r18.w = saturate(r18.w + r35.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r36.xyz, r12.yzw);
            r18.w = saturate(r18.w + r36.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r37.xyz, r12.yzw);
            r18.w = saturate(r18.w + r37.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r38.xyz, r12.yzw);
            r18.w = saturate(r18.w + r38.w);
            r32.x = r18.z * r18.w;
            r19.z = (uint)r17.x >> 2;
            if (1 == 0) r19.w = 0; else if (1+2 < 32) {             r19.w = (uint)r17.x << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);            } else r19.w = (uint)r17.x >> 2;
            r20.z = (int)r19.z & 2;
            r20.w = max(r32.y, r32.x);
            r18.z = -r18.z * r18.w + 1;
            r18.z = r32.y * r18.z;
            r21.y = r20.z ? r18.z : r20.w;
            r32.xy = r19.ww ? r32.xy : r21.xy;
            r17.w = (int)r17.w + 1;
            r17.x = r19.z;
          }
          r32.y = saturate(r32.y);
          r17.x = r32.y * r10.w;
          r17.w = cmp(0 < r17.x);
          if (r17.w != 0) {
            r33.z = r32.y * r10.w + r30.w;
            r17.x = r17.x * r30.x;
            r21.yzw = r28.xyz * r17.xxx;
            r32.xzw = r24.xyw * r21.zzz;
            r32.xzw = r26.xyz * r21.yyy + r32.xzw;
            r21.yzw = r27.xyz * r21.www + r32.xzw;
            r32.xzw = r21.yzw * r29.xyz;
            r17.w = dot(r32.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r34.xyz = r21.yzw * r29.xyz + r31.xyz;
            r18.z = r17.w * r8.w;
            r21.yzw = r25.xyz * r17.xxx;
            r17.x = dot(r21.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r17.x = r8.w * r17.w + r17.x;
            r17.x = r18.z / r17.x;
            r35.x = r31.w;
            r35.yz = r30.yz;
            r33.xyw = r21.zwy * r17.xxx + r35.yzx;
            r34.w = r33.w;
          } else {
            r34.xyzw = r31.xyzw;
            r33.xyz = r30.yzw;
          }
          r16.x = -1;
          r31.xyzw = r34.xyzw;
          r30.yzw = r33.xyz;
          break;
        }
      }
    }
    if (r16.x != 0) {
      r22.xyzw = r31.xyzw;
      r23.yzw = r30.yzw;
      r2.y = -1;
      break;
    }
    r2.z = (int)r2.z + 32;
    r22.xyzw = r31.xyzw;
    r23.yzw = r30.yzw;
    r2.y = r16.x;
  }
  if (r2.y == 0) {
    r2.y = numRefProbes + -numOverrideProbes;
    r2.z = (int)r2.y & -32;
    r2.w = (int)-r2.z + (int)r2.y;
    r10.z = numRefProbes & -32;
    r10.w = (int)-r10.z + numRefProbes;
    r15.xy = float2(0,0);
    r16.w = 0;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.x = 1;
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r24.xyzw = r22.xyzw;
    r25.yzw = r23.yzw;
    r11.w = r2.z;
    while (true) {
      r12.y = cmp((uint)r11.w >= numRefProbes);
      if (r12.y != 0) break;
      r15.z = (uint)r11.w >> 5;
      r16.xyz = (int3)r14.xyz + (int3)r15.xyz;
      r12.y = visibleProbes.Load(r16.xyzw).x;
      r12.z = cmp((int)r2.z == (int)r11.w);
      bitmask.w = ((~(-1 << r2.w)) << 0) & 0xffffffff;  r12.w = (((uint)0 << 0) & bitmask.w) | ((uint)r12.y & ~bitmask.w);
      r12.y = r12.z ? r12.w : r12.y;
      r12.z = cmp((int)r10.z == (int)r11.w);
      if (r10.w == 0) r12.w = 0; else if (r10.w+0 < 32) {       r12.w = (uint)r12.y << (32-(r10.w + 0)); r12.w = (uint)r12.w >> (32-r10.w);      } else r12.w = (uint)r12.y >> 0;
      r12.y = r12.z ? r12.w : r12.y;
      r12.z = (int)r11.w + numLights;
      r26.xyzw = r24.xyzw;
      r27.xyz = r25.yzw;
      r12.w = r12.y;
      while (true) {
        if (r12.w == 0) break;
        r14.w = firstbitlow((uint)r12.w);
        r15.z = 1 << (int)r14.w;
        r15.w = (int)r12.w & (int)r15.z;
        if (r15.w != 0) {
          r12.w = (int)r12.w ^ (int)r15.z;
          r15.z = (int)r12.z + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xyzw, r15.z, l(0), t11.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xy, r15.z, l(16), t11.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r28.xyz = -v7.xyz + r28.xyz;
          r16.z = r28.w;
          r16.xyz = cmp(abs(r28.xyz) < r16.zxy);
          r15.z = r16.y ? r16.x : 0;
          r15.z = r16.z ? r15.z : 0;
          if (r15.z != 0) {
            r14.w = (int)r11.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(0), t15.wxyz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r14.w, l(96), t15.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(116), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
            r16.xyz = v7.xyz + -r28.yzw;
            r17.w = (int)r29.w & 0x0000ffff;
            if (6 == 0) r18.w = 0; else if (6+25 < 32) {             r18.w = (uint)r29.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);            } else r18.w = (uint)r29.w >> 25;
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
            r19.z = dot(r30.xyz, r16.xyz);
            r19.z = saturate(r19.z + r30.w);
            r19.w = dot(r31.xyz, r16.xyz);
            r19.w = saturate(r19.w + r31.w);
            r19.z = r19.z * r19.w;
            r19.w = dot(r32.xyz, r16.xyz);
            r19.w = saturate(r19.w + r32.w);
            r19.z = r19.z * r19.w;
            r19.w = dot(r33.xyz, r16.xyz);
            r19.w = saturate(r19.w + r33.w);
            r19.z = r19.z * r19.w;
            r19.w = dot(r34.xyz, r16.xyz);
            r19.w = saturate(r19.w + r34.w);
            r19.z = r19.z * r19.w;
            r19.w = dot(r35.xyz, r16.xyz);
            r19.w = saturate(r19.w + r35.w);
            r17.x = r19.z * r19.w;
            r19.z = (int)r15.z & 1;
            r19.zw = r19.zz ? r17.xy : r17.zx;
            r17.x = r15.z;
            r30.xy = r19.zw;
            r20.w = 1;
            while (true) {
              r21.w = cmp((int)r20.w >= (int)r18.w);
              if (r21.w != 0) break;
              r21.w = (int)r17.w + (int)r20.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r21.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r21.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r21.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r21.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r21.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r21.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r21.w = dot(r31.xyz, r16.xyz);
              r21.w = saturate(r21.w + r31.w);
              r21.w = r30.x * r21.w;
              r28.w = dot(r32.xyz, r16.xyz);
              r28.w = saturate(r28.w + r32.w);
              r21.w = r28.w * r21.w;
              r28.w = dot(r33.xyz, r16.xyz);
              r28.w = saturate(r28.w + r33.w);
              r21.w = r28.w * r21.w;
              r28.w = dot(r34.xyz, r16.xyz);
              r28.w = saturate(r28.w + r34.w);
              r21.w = r28.w * r21.w;
              r28.w = dot(r35.xyz, r16.xyz);
              r28.w = saturate(r28.w + r35.w);
              r21.w = r28.w * r21.w;
              r28.w = dot(r36.xyz, r16.xyz);
              r28.w = saturate(r28.w + r36.w);
              r30.x = r28.w * r21.w;
              r30.z = (uint)r17.x >> 2;
              if (1 == 0) r30.w = 0; else if (1+2 < 32) {               r30.w = (uint)r17.x << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);              } else r30.w = (uint)r17.x >> 2;
              r31.x = (int)r30.z & 2;
              r31.y = max(r30.y, r30.x);
              r21.w = -r21.w * r28.w + 1;
              r21.w = r30.y * r21.w;
              r19.y = r31.x ? r21.w : r31.y;
              r30.xy = r30.ww ? r30.xy : r19.xy;
              r20.w = (int)r20.w + 1;
              r17.x = r30.z;
            }
            r30.y = saturate(r30.y);
            r15.z = r30.y * r15.w;
            r17.x = cmp(0 < r15.z);
            if (r17.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(16), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(32), t15.yxwz
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(48), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(64), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(80), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(132), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(148), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(164), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(180), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(196), t15.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r14.w, l(212), t15.xyxx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
              r27.z = r30.y * r15.w + r27.z;
              r14.w = r15.z * r29.z;
              r29.z = r36.z;
              r15.z = dot(r13.xyz, r29.xyz);
              r15.w = dot(r16.xyz, r29.xyz);
              r15.w = r15.w + -r36.w;
              r17.x = cmp(r15.w >= 0);
              r15.w = max(abs(r15.w), r7.w);
              r15.w = r17.x ? r15.w : -r15.w;
              r15.z = max(1.00000001e-07, -r15.z);
              r15.z = r15.w / r15.z;
              r15.z = min(131072, abs(r15.z));
              r36.z = r37.z;
              r15.w = dot(r13.xyz, r36.xyz);
              r17.x = dot(r16.xyz, r36.xyz);
              r17.x = r17.x + -r37.w;
              r17.w = cmp(r17.x >= 0);
              r17.x = max(abs(r17.x), r7.w);
              r17.x = r17.w ? r17.x : -r17.x;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r17.x / r15.w;
              r15.z = min(r15.z, abs(r15.w));
              r37.z = r38.z;
              r15.w = dot(r13.xyz, r37.xyz);
              r17.x = dot(r16.xyz, r37.xyz);
              r17.x = r17.x + -r38.w;
              r17.w = cmp(r17.x >= 0);
              r17.x = max(abs(r17.x), r7.w);
              r17.x = r17.w ? r17.x : -r17.x;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r17.x / r15.w;
              r15.z = min(r15.z, abs(r15.w));
              r38.z = r39.z;
              r15.w = dot(r13.xyz, r38.xyz);
              r17.x = dot(r16.xyz, r38.xyz);
              r17.x = r17.x + -r39.w;
              r17.w = cmp(r17.x >= 0);
              r17.x = max(abs(r17.x), r7.w);
              r17.x = r17.w ? r17.x : -r17.x;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r17.x / r15.w;
              r15.z = min(r15.z, abs(r15.w));
              r39.z = r40.x;
              r15.w = dot(r13.xyz, r39.xyz);
              r17.x = dot(r16.xyz, r39.xyz);
              r17.x = r17.x + -r40.y;
              r17.w = cmp(r17.x >= 0);
              r17.x = max(abs(r17.x), r7.w);
              r17.x = r17.w ? r17.x : -r17.x;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r17.x / r15.w;
              r15.z = min(r15.z, abs(r15.w));
              r41.zw = r40.zw;
              r15.w = dot(r13.zxy, r41.xzw);
              r17.x = dot(r16.zxy, r41.xzw);
              r17.x = r17.x + -r41.y;
              r17.w = cmp(r17.x >= 0);
              r17.x = max(abs(r17.x), r7.w);
              r17.x = r17.w ? r17.x : -r17.x;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r17.x / r15.w;
              r15.z = min(r15.z, abs(r15.w));
              r29.x = r33.w;
              r29.yz = r34.zw;
              r19.yzw = r29.xyz + r16.xyz;
              r19.yzw = r13.xyz * r15.zzz + r19.yzw;
              r15.w = dot(r19.yzw, r19.yzw);
              r15.w = sqrt(r15.w);
              r15.z = r15.z / r15.w;
              r15.z = r15.z + r15.z;
              r15.z = sqrt(r15.z);
              r15.z = r4.w * 5 + r15.z;
              r15.z = -0.844799995 + r15.z;
              r28.y = r31.z;
              r28.z = r32.x;
              r36.x = dot(r19.yzw, r28.xyz);
              r29.xy = r31.xw;
              r29.z = r32.w;
              r36.y = dot(r19.yzw, r29.xyz);
              r32.x = r31.y;
              r36.z = dot(r19.yzw, r32.xyz);
              if (9 == 0) r15.w = 0; else if (9+16 < 32) {               r15.w = (uint)r29.w << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);              } else r15.w = (uint)r29.w >> 16;
              r36.w = (uint)r15.w;
              r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r15.z).xyz;
              r30.xzw = (int3)r19.yzw & int3(-2147483648,-2147483648,-2147483648);
              r30.xzw = cmp((int3)r30.xzw == int3(2139095040,2139095040,2139095040));
              r15.z = (int)r30.z | (int)r30.x;
              r15.z = (int)r30.w | (int)r15.z;
              r19.yzw = r15.zzz ? float3(1,1,0) : r19.yzw;
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
              r30.xzw = r30.xzw * r14.www;
              r20.z = r28.y ? 0 : 0.5;
              r28.xyw = r20.xyz + r16.xyz;
              r28.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xyw, 0).xyz;
              r28.xyw = r28.xyw * r30.zzz;
              r28.xyw = r29.xyz * r30.xxx + r28.xyw;
              r21.z = r28.z ? 0 : 0.5;
              r16.xyz = r21.xyz + r16.xyz;
              r16.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
              r16.xyz = r16.xyz * r30.www + r28.xyw;
              r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
              r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
              r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
              r15.z = (int)r29.y | (int)r29.x;
              r15.z = (int)r29.z | (int)r15.z;
              r28.xyz = r15.zzz ? float3(1,1,0) : r28.xyz;
              r29.xyz = r28.xyz * r16.xyz;
              r15.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r26.xyz = r16.xyz * r28.xyz + r26.xyz;
              r15.w = r15.z * r8.w;
              r16.xyz = r19.yzw * r14.www;
              r14.w = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.w = r8.w * r15.z + r14.w;
              r14.w = r15.w / r14.w;
              r28.x = r26.w;
              r28.yz = r27.xy;
              r27.xyw = r16.yzx * r14.www + r28.yzx;
              r26.w = r27.w;
            }
          }
        }
      }
      r24.xyzw = r26.xyzw;
      r25.yzw = r27.xyz;
      r11.w = (int)r11.w + 32;
    }
    r10.z = cmp(r25.w < 1);
    if (r10.z != 0) {
      r15.xy = float2(0,0);
      r16.w = 0;
      r17.yz = float2(0,1);
      r18.xy = float2(0,0);
      r19.x = 1;
      r20.xy = float2(0,0);
      r21.xy = float2(0,0);
      r26.x = r24.w;
      r26.yzw = r25.yzw;
      r12.yzw = r24.xyz;
      r10.z = r25.w;
      r10.w = 0;
      while (true) {
        r11.w = cmp((uint)r10.w >= (uint)r2.y);
        if (r11.w != 0) break;
        r15.z = (uint)r10.w >> 5;
        r16.xyz = (int3)r14.xyz + (int3)r15.xyz;
        r11.w = visibleProbes.Load(r16.xyzw).x;
        r14.w = cmp((int)r2.z == (int)r10.w);
        if (r2.w == 0) r15.z = 0; else if (r2.w+0 < 32) {         r15.z = (uint)r11.w << (32-(r2.w + 0)); r15.z = (uint)r15.z >> (32-r2.w);        } else r15.z = (uint)r11.w >> 0;
        r11.w = r14.w ? r15.z : r11.w;
        r14.w = (int)r10.w + numLights;
        r27.xyzw = r26.xyzw;
        r16.xyz = r12.yzw;
        r15.z = r10.z;
        r15.w = r11.w;
        while (true) {
          if (r15.w == 0) break;
          r17.w = firstbitlow((uint)r15.w);
          r18.w = 1 << (int)r17.w;
          r19.z = (int)r15.w & (int)r18.w;
          if (r19.z != 0) {
            r15.w = (int)r15.w ^ (int)r18.w;
            r18.w = (int)r14.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xyzw, r18.w, l(0), t11.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xy, r18.w, l(16), t11.xyxx
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
            r28.xyz = -v7.xyz + r28.xyz;
            r29.z = r28.w;
            r28.xyz = cmp(abs(r28.xyz) < r29.zxy);
            r18.w = r28.y ? r28.x : 0;
            r18.w = r28.z ? r18.w : 0;
            if (r18.w != 0) {
              r17.w = (int)r10.w + (int)r17.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(0), t15.wxyz
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.zw, r17.w, l(96), t15.xxxy
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(116), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
              r30.xyz = v7.xyz + -r28.yzw;
              r18.w = (int)r29.w & 0x0000ffff;
              if (6 == 0) r20.w = 0; else if (6+25 < 32) {               r20.w = (uint)r29.w << (32-(6 + 25)); r20.w = (uint)r20.w >> (32-6);              } else r20.w = (uint)r29.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r18.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r21.w = dot(r31.xyz, r30.xyz);
              r21.w = saturate(r21.w + r31.w);
              r23.w = dot(r32.xyz, r30.xyz);
              r23.w = saturate(r23.w + r32.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r33.xyz, r30.xyz);
              r23.w = saturate(r23.w + r33.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r34.xyz, r30.xyz);
              r23.w = saturate(r23.w + r34.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r35.xyz, r30.xyz);
              r23.w = saturate(r23.w + r35.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r36.xyz, r30.xyz);
              r23.w = saturate(r23.w + r36.w);
              r17.x = r23.w * r21.w;
              r21.w = (int)r19.z & 1;
              r31.xy = r21.ww ? r17.xy : r17.zx;
              r17.x = r19.z;
              r32.xy = r31.xy;
              r21.w = 1;
              while (true) {
                r23.w = cmp((int)r21.w >= (int)r20.w);
                if (r23.w != 0) break;
                r23.w = (int)r18.w + (int)r21.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r23.w, l(0), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r23.w, l(16), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r23.w, l(32), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r23.w, l(48), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r23.w, l(64), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r23.w, l(80), t16.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
                r23.w = dot(r33.xyz, r30.xyz);
                r23.w = saturate(r23.w + r33.w);
                r23.w = r32.x * r23.w;
                r28.w = dot(r34.xyz, r30.xyz);
                r28.w = saturate(r28.w + r34.w);
                r23.w = r28.w * r23.w;
                r28.w = dot(r35.xyz, r30.xyz);
                r28.w = saturate(r28.w + r35.w);
                r23.w = r28.w * r23.w;
                r28.w = dot(r36.xyz, r30.xyz);
                r28.w = saturate(r28.w + r36.w);
                r23.w = r28.w * r23.w;
                r28.w = dot(r37.xyz, r30.xyz);
                r28.w = saturate(r28.w + r37.w);
                r23.w = r28.w * r23.w;
                r28.w = dot(r38.xyz, r30.xyz);
                r28.w = saturate(r28.w + r38.w);
                r32.x = r28.w * r23.w;
                r30.w = (uint)r17.x >> 2;
                if (1 == 0) r31.z = 0; else if (1+2 < 32) {                 r31.z = (uint)r17.x << (32-(1 + 2)); r31.z = (uint)r31.z >> (32-1);                } else r31.z = (uint)r17.x >> 2;
                r31.w = (int)r30.w & 2;
                r32.z = max(r32.y, r32.x);
                r23.w = -r23.w * r28.w + 1;
                r23.w = r32.y * r23.w;
                r19.y = r31.w ? r23.w : r32.z;
                r32.xy = r31.zz ? r32.xy : r19.xy;
                r21.w = (int)r21.w + 1;
                r17.x = r30.w;
              }
              r17.x = saturate(r32.y + -r15.z);
              r18.w = r17.x * r19.w;
              r19.y = cmp(0 < r18.w);
              if (r19.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(16), t15.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(32), t15.yxwz
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(48), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(64), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(80), t15.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(132), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(148), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r17.w, l(164), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r17.w, l(180), t15.zwxy
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r17.w, l(196), t15.xyzw
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xy, r17.w, l(212), t15.xyxx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
                r27.w = r17.x * r19.w + r27.w;
                r17.x = r18.w * r29.z;
                r29.z = r37.z;
                r17.w = dot(r13.xyz, r29.xyz);
                r18.w = dot(r30.xyz, r29.xyz);
                r18.w = r18.w + -r37.w;
                r19.y = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r7.w);
                r18.w = r19.y ? r18.w : -r18.w;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.w / r17.w;
                r17.w = min(131072, abs(r17.w));
                r37.z = r38.z;
                r18.w = dot(r13.xyz, r37.xyz);
                r19.y = dot(r30.xyz, r37.xyz);
                r19.y = r19.y + -r38.w;
                r19.z = cmp(r19.y >= 0);
                r19.y = max(abs(r19.y), r7.w);
                r19.y = r19.z ? r19.y : -r19.y;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r19.y / r18.w;
                r17.w = min(abs(r18.w), r17.w);
                r38.z = r39.z;
                r18.w = dot(r13.xyz, r38.xyz);
                r19.y = dot(r30.xyz, r38.xyz);
                r19.y = r19.y + -r39.w;
                r19.z = cmp(r19.y >= 0);
                r19.y = max(abs(r19.y), r7.w);
                r19.y = r19.z ? r19.y : -r19.y;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r19.y / r18.w;
                r17.w = min(abs(r18.w), r17.w);
                r39.z = r40.z;
                r18.w = dot(r13.xyz, r39.xyz);
                r19.y = dot(r30.xyz, r39.xyz);
                r19.y = r19.y + -r40.w;
                r19.z = cmp(r19.y >= 0);
                r19.y = max(abs(r19.y), r7.w);
                r19.y = r19.z ? r19.y : -r19.y;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r19.y / r18.w;
                r17.w = min(abs(r18.w), r17.w);
                r40.z = r41.x;
                r18.w = dot(r13.xyz, r40.xyz);
                r19.y = dot(r30.xyz, r40.xyz);
                r19.y = r19.y + -r41.y;
                r19.z = cmp(r19.y >= 0);
                r19.y = max(abs(r19.y), r7.w);
                r19.y = r19.z ? r19.y : -r19.y;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r19.y / r18.w;
                r17.w = min(abs(r18.w), r17.w);
                r42.zw = r41.zw;
                r18.w = dot(r13.zxy, r42.xzw);
                r19.y = dot(r30.zxy, r42.xzw);
                r19.y = r19.y + -r42.y;
                r19.z = cmp(r19.y >= 0);
                r19.y = max(abs(r19.y), r7.w);
                r19.y = r19.z ? r19.y : -r19.y;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r19.y / r18.w;
                r17.w = min(abs(r18.w), r17.w);
                r29.x = r34.w;
                r29.yz = r35.zw;
                r19.yzw = r29.xyz + r30.xyz;
                r19.yzw = r13.xyz * r17.www + r19.yzw;
                r18.w = dot(r19.yzw, r19.yzw);
                r18.w = sqrt(r18.w);
                r17.w = r17.w / r18.w;
                r17.w = r17.w + r17.w;
                r17.w = sqrt(r17.w);
                r17.w = r4.w * 5 + r17.w;
                r17.w = -0.844799995 + r17.w;
                r28.y = r31.z;
                r28.z = r33.x;
                r37.x = dot(r19.yzw, r28.xyz);
                r29.xy = r31.xw;
                r29.z = r33.w;
                r37.y = dot(r19.yzw, r29.xyz);
                r33.x = r31.y;
                r37.z = dot(r19.yzw, r33.xyz);
                if (9 == 0) r18.w = 0; else if (9+16 < 32) {                 r18.w = (uint)r29.w << (32-(9 + 16)); r18.w = (uint)r18.w >> (32-9);                } else r18.w = (uint)r29.w >> 16;
                r37.w = (uint)r18.w;
                r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, r17.w).xyz;
                r31.xyz = (int3)r19.yzw & int3(-2147483648,-2147483648,-2147483648);
                r31.xyz = cmp((int3)r31.xyz == int3(2139095040,2139095040,2139095040));
                r17.w = (int)r31.y | (int)r31.x;
                r17.w = (int)r31.z | (int)r17.w;
                r19.yzw = r17.www ? float3(1,1,0) : r19.yzw;
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
                r31.xyz = r31.xyz * r17.xxx;
                r20.z = r28.y ? 0 : 0.5;
                r28.xyw = r30.xyz + r20.xyz;
                r28.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xyw, 0).xyz;
                r28.xyw = r28.xyw * r31.yyy;
                r28.xyw = r29.xyz * r31.xxx + r28.xyw;
                r21.z = r28.z ? 0 : 0.5;
                r29.xyz = r30.xyz + r21.xyz;
                r29.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
                r28.xyz = r29.xyz * r31.zzz + r28.xyw;
                r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, 6).xyz;
                r30.xyz = (int3)r29.xyz & int3(-2147483648,-2147483648,-2147483648);
                r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
                r17.w = (int)r30.y | (int)r30.x;
                r17.w = (int)r30.z | (int)r17.w;
                r29.xyz = r17.www ? float3(1,1,0) : r29.xyz;
                r30.xyz = r29.xyz * r28.xyz;
                r17.w = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r16.xyz = r28.xyz * r29.xyz + r16.xyz;
                r18.z = r17.w * r8.w;
                r19.yzw = r19.yzw * r17.xxx;
                r17.x = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r17.x = r8.w * r17.w + r17.x;
                r17.x = r18.z / r17.x;
                r27.xyz = r19.yzw * r17.xxx + r27.xyz;
              }
            }
          }
        }
        r26.xyzw = r27.xyzw;
        r12.yzw = r16.xyz;
        r10.w = (int)r10.w + 32;
      }
      r25.xyzw = r26.zxyw;
      r24.xyz = r12.yzw;
      r25.xyzw = r25.yzxw;
    } else {
      r25.x = r24.w;
    }
    r2.y = max(1, r25.w);
    r2.y = rcp(r2.y);
    r25.w = saturate(r25.w);
    r22.xyz = r24.xyz * r2.yyy;
    r23.xyz = r25.xyz * r2.yyy;
    r2.z = cmp(r25.w < 0.99000001);
    if (r2.z != 0) {
      r2.z = 1 + -r25.w;
      r2.w = sunConstants.globalProbeExposure * r2.z;
      r12.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
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
      r17.xyz = r17.xyz * r2.www;
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
      r2.w = dot(r12.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r22.xyz = r24.xyz * r2.yyy + r12.yzw;
      r13.w = 0;
      r12.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r5.w).xyz;
      r2.y = sunConstants.globalProbeExposure * r2.z + -r2.w;
      r2.y = r5.y * r2.y + r2.w;
      r23.xyz = r12.yzw * r2.yyy + r23.xyz;
    }
  } else {
    r23.x = r22.w;
  }
  r2.y = r5.x + r5.z;
  r2.y = log2(abs(r2.y));
  r2.y = r3.w * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.y + r5.z;
  r2.y = saturate(-1 + r2.y);
  r15.xyz = r22.xyz * r5.zzz;
  r2.zw = r5.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.zw, 0).xy;
  r5.yzw = r23.xyz * r2.yyy;
  r16.xyz = r5.zwy * r2.zzz;
  r2.yzw = r5.yzw * r2.www;
  r4.w = sqrt(r3.w);
  r4.w = r4.w * 0.5 + 0.5;
  r4.w = r4.w * r4.w;
  r5.y = 0.5 * r4.w;
  r4.w = -r4.w * 0.5 + 1;
  r5.z = r5.x * r4.w + r5.y;
  r4.w = r5.z * r4.w;
  r5.y = r5.y * r5.z;
  if (noReceiveShadow == 0) {
    r5.z = dot(r6.xyz, sunConstants.wldDir.xyz);
    r5.z = cmp(0 >= abs(r5.z));
    if (r5.z != 0) {
      r5.w = 0;
    }
    if (r5.z == 0) {
      r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
      r12.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r12.yzw;
      r12.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r12.yzw;
      r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r12.yzw;
      r5.z = -sunConstants.splitDepthOffset + r12.w;
      r5.z = -r5.z * 6.10351563e-05 + 1;
      r6.w = saturate(r5.z);
      r6.w = cmp(r5.z == r6.w);
      if (r6.w != 0) {
        r6.w = 0;
        r7.w = 0;
        while (true) {
          r8.w = cmp(r6.w >= 3);
          if (r8.w != 0) break;
          r8.w = (uint)r6.w;
          r10.zw = -sunConstants.splitPinTransform[r8.w].xy + r12.yz;
          r10.z = max(abs(r10.z), abs(r10.w));
          r7.w = sunConstants.splitPinTransform[r8.w].z * r10.z;
          r8.w = cmp(r7.w < 1);
          if (r8.w != 0) {
            break;
          }
          r6.w = 1 + r6.w;
          r7.w = 0;
        }
      } else {
        r6.w = 3;
        r7.w = 0;
      }
      r8.w = cmp(r6.w >= 3);
      if (r8.w != 0) {
        r17.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
        r18.xz = rcp(r17.xx);
        r18.y = -r18.z;
        r17.xyz = r12.yzy * r18.xyz + r17.yzy;
        r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
        r17.xyz = max(float3(0,0,0), r17.xyz);
        r17.xyz = min(r17.xyz, r18.xyz);
        r10.zw = sunConstants.sstLightingConstants.coordScale * r17.zy;
        r10.zw = floor(r10.zw);
        r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r10.w;
        r10.z = r10.w * sunConstants.sstLightingConstants.coordScale + r10.z;
        r10.z = (uint)r10.z;
        r10.z = (int)r10.z + (int10)sunConstants.sstLightingConstants.rootOffset;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.z, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r11.w = (int)r10.w & 0x40000000;
        r13.w = (uint)r10.w << 2;
        if (r11.w == 0) {
          r11.w = (int)r10.w & 0x01ffffff;
          r18.x = (int)r10.z + (int)r11.w;
          r10.z = (uint)r10.w >> 25;
          r10.z = (uint)r10.z;
          r17.xyz = r17.xyz * r10.zzz;
          r17.xyz = frac(r17.xyz);
          r17.xyz = float3(128,128,128) * r17.xyz;
          r17.xyz = (uint3)r17.xyz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r10.zw = (uint2)r17.zy >> int2(6,6);
          r11.w = (int)r18.z & 0xc0000000;
          r14.w = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r10.w = r10.w ? r18.z : r14.w;
          r14.w = (uint)r10.w >> 13;
          r10.z = r10.z ? r14.w : r10.w;
          r10.z = (int)r10.z & 8191;
          r19.x = (int)r10.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r18.y = 0;
          r19.y = 1;
          r19.xyz = r11.www ? r18.xyz : r19.xyz;
          r20.yz = r11.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
          r10.zw = (uint2)r17.zy >> (uint2)r20.yy;
          r10.zw = (int2)r10.zw & int2(1,1);
          r14.w = (int)r19.z & 0xc0000000;
          r17.w = (int)r19.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r10.w = r10.w ? r19.z : r17.w;
          r17.w = (uint)r10.w >> 13;
          r10.z = r10.z ? r17.w : r10.w;
          r10.z = (int)r10.z & 8191;
          r20.x = (int)r10.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
        r20.w = samp0[]..swiz;
          r19.xyz = r14.www ? r19.xyz : r20.xzw;
          r18.xyz = r11.www ? r18.xyz : r19.xyz;
          r10.z = (int)r18.z & 0xc0000000;
          if (r10.z == 0) {
            r10.z = (int)-r18.y + 6;
            r10.zw = (uint2)r17.zy >> (uint2)r10.zz;
            r11.w = (int)r18.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r10.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
            r10.z = (int)r10.z * 10;
            r10.z = (uint)r11.w >> (uint)r10.z;
            r10.z = (int)r10.z & 1023;
            r19.x = (int)r10.z + (int)r18.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
          r19.w = samp0[]..swiz;
            r19.yz = (int2)r18.yy + int2(1,2);
            r10.z = (int)-r19.y + 6;
            r10.zw = (uint2)r17.zy >> (uint2)r10.zz;
            r11.w = (int)r19.w & 0xc0000000;
            r14.w = (int)r19.w | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r10.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
            r10.z = (int)r10.z * 10;
            r10.z = (uint)r14.w >> (uint)r10.z;
            r10.z = (int)r10.z & 1023;
            r20.x = (int)r10.z + (int)r19.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
          r20.z = samp0[]..swiz;
            r20.y = r19.z;
            r20.xyz = r11.www ? r19.xyw : r20.xyz;
            r10.z = (int)-r20.y + 6;
            r10.zw = (uint2)r17.zy >> (uint2)r10.zz;
            r14.w = (int)r20.z & 0xc0000000;
            r17.w = (int)r20.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r10.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.z = (((uint)r10.z << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
            r10.z = (int)r10.z * 10;
            r10.z = (uint)r17.w >> (uint)r10.z;
            r10.z = (int)r10.z & 1023;
            r21.x = (int)r10.z + (int)r20.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
          r21.y = samp0[]..swiz;
            r10.zw = r14.ww ? r20.xz : r21.xy;
            r18.xz = r11.ww ? r19.xw : r10.zw;
          }
          r10.z = (int)r18.z & 0xc0000000;
          if (r10.z == 0) {
            if (14 == 0) r10.w = 0; else if (14+15 < 32) {             r10.w = (uint)r18.z << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);            } else r10.w = (uint)r18.z >> 15;
            r10.w = (uint)r10.w;
            r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
            r10.w = 6.10388815e-05 * r10.w;
            r18.yw = (int2)r18.zz & int2(32767,536870912);
            r11.w = (uint)r18.y;
            r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
            r11.w = 3.05185094e-05 * r11.w;
            r14.w = (int)r17.y & 3;
            r14.w = (int)r14.w + (int)r18.x;
            r14.w = (int)r14.w + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
          r14.w = samp0[]..swiz;
            bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r17.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
            bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.w = (((uint)r17.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
            r14.w = (uint)r14.w >> (uint)r17.x;
            r14.w = (int)r14.w & 255;
            r14.w = (uint)r14.w;
            r14.w = r14.w * r11.w;
            r14.w = r14.w * 0.00392156886 + r10.w;
            r17.x = (int)r17.y + 1;
            if (1 == 0) r17.y = 0; else if (1+1 < 32) {             r17.y = (uint)r17.z << (32-(1 + 1)); r17.y = (uint)r17.y >> (32-1);            } else r17.y = (uint)r17.z >> 1;
            r17.x = (int)r17.y + (int)r17.x;
            r17.x = (int)r17.x + (int)r18.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r17.x, l(0), t23.xxxx
          r17.x = samp0[]..swiz;
            r17.x = (uint)r17.x >> (uint)r17.w;
            r17.x = (int)r17.x & 0x0000ffff;
            r17.x = (uint)r17.x;
            r11.w = r17.x * r11.w;
            r10.w = r11.w * 1.52590219e-05 + r10.w;
            r13.w = r18.w ? r14.w : r10.w;
          } else {
            r10.w = (int)r18.z & 0x80000000;
            r11.w = (int)r18.x + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
          r11.w = samp0[]..swiz;
            r10.w = r10.w ? r11.w : 0;
            r11.w = (uint)r18.z << 2;
            r14.w = (uint)r10.w >> 16;
            r14.w = f16tof32(r14.w);
            r10.w = (int)r10.w & 0x0000ffff;
            r10.w = f16tof32(r10.w);
            r11.w = r12.y * r14.w + r11.w;
            r10.w = r12.z * r10.w + r11.w;
            r13.w = r10.z ? r10.w : r13.w;
          }
        }
        r10.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r12.w;
        r10.z = cmp(r13.w < r10.z);
        r5.w = r10.z ? 0 : 1;
      }
      if (r8.w == 0) {
        if (enableDitheredShadow == 0) {
          r8.w = (uint)r6.w;
          r10.zw = -sunConstants.splitPinTransform[r8.w].xy + r12.yz;
          r10.zw = sunConstants.splitPinTransform[r8.w].zz * r10.zw;
          r17.xy = r10.zw * float2(0.5,-0.5) + float2(0.5,0.5);
          r8.w = (int16)sunConstants.splitArrayOffset;
          r17.z = r8.w + r6.w;
          r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r5.z).x;
          r10.z = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r8.w = r10.z + r8.w;
          r8.w = saturate(-1 + r8.w);
          r10.z = r8.w * r8.w;
          r5.w = r10.z * r8.w;
        }
        if (enableDitheredShadow != 0) {
          r17.x = -r10.x;
          r8.w = (uint)r6.w;
          r6.w = 1 + r6.w;
          r6.w = min(2, r6.w);
          r6.w = (uint)r6.w;
          r7.w = 1 + -r7.w;
          r7.w = 28 * r7.w;
          r7.w = (uint)r7.w;
          r10.zw = -sunConstants.splitPinTransform[r8.w].xy + r12.yz;
          r10.zw = sunConstants.splitPinTransform[r8.w].zz * r10.zw;
          r10.zw = r10.zw * float2(0.5,-0.5) + float2(0.5,0.5);
          r12.yz = -sunConstants.splitPinTransform[r6.w].xy + r12.yz;
          r12.yz = sunConstants.splitPinTransform[r6.w].zz * r12.yz;
          r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r17.y = r11.x;
          r17.z = r10.x;
          r11.w = 0;
          r12.w = 0;
          while (true) {
            r13.w = cmp((uint)r12.w >= 8);
            if (r13.w != 0) break;
            r13.w = cmp((uint)r7.w < (uint)r12.w);
            r18.xy = r13.ww ? r12.yz : r10.zw;
            r14.w = r13.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
            r13.w = r13.w ? r6.w : r8.w;
            r19.x = dot(icb[r12.w+0].yx, r17.xy);
            r19.y = dot(icb[r12.w+0].yx, r17.yz);
            r18.xy = r19.xy * r14.ww + r18.xy;
            r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
            r18.z = (uint)r13.w;
            r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.z).x;
            r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
            r13.w = r14.w + r13.w;
            r13.w = saturate(-1 + r13.w);
            r11.w = r13.w * 0.125 + r11.w;
            r12.w = (int)r12.w + 1;
          }
          r5.z = r11.w * r11.w;
          r5.w = r5.z * r11.w;
        }
      }
    }
  } else {
    r5.w = 1;
  }
  r5.z = dot(r6.xyz, sunConstants.wldDir.xyz);
  r6.w = cmp(0 < abs(r5.z));
  if (r6.w != 0) {
    r6.w = cmp(0 < r5.w);
    if (r6.w != 0) {
      r6.w = sunConstants.specScale * r3.y;
      r6.w = 0.25 * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r17.xyz = eyeOffset.xyz + v7.xyz;
        r17.w = 1;
        r7.w = dot(sunConstants.sunCookieTransform[0].xyzw, r17.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r17.xyzw);
        r17.x = frac(r7.w);
        r17.y = frac(r8.w);
        r7.w = -1 + (int14)sunConstants.sunCookieIndex;
        r17.z = (uint)r7.w;
        r12.yzw = gCookieArray.SampleLevel(samplerLinear_s, r17.xyz, 0).xyz;
        r12.yzw = float3(-1,-1,-1) + r12.yzw;
        r12.yzw = sunConstants.sunCookieIntensity * r12.yzw + float3(1,1,1);
        r12.yzw = sunConstants.color.xyz * r12.yzw;
      } else {
        r12.yzw = sunConstants.color.xyz;
      }
      if (noReceiveShadow == 0) {
        r7.w = viewmodelSunShadowRaw >> 16;
        r8.w = cmp(0 < (uint)r7.w);
        r8.w = r1.z ? r8.w : 0;
        if (r8.w != 0) {
          r7.w = (int)r7.w + numLights;
          r7.w = (int)r7.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(68), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(84), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r7.w, l(132), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r7.w, l(148), t12.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
          r10.z = abs(r5.z) * -0.200000003 + 0.400000006;
          r10.w = cmp(r5.z < 0);
          r10.z = r10.w ? -r10.z : r10.z;
          r21.xyz = r6.xyz * r10.zzz + v7.xyz;
          r21.w = 1;
          r17.x = dot(r17.xyzw, r21.xyzw);
          r17.y = dot(r18.xyzw, r21.xyzw);
          r10.zw = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.zw = r10.zw + r20.zw;
          r10.zw = r10.zw * r20.xy;
          r17.xy = r8.ww / r19.xz;
          r17.zw = float2(1,1) + -r17.xy;
          r17.zw = cmp(r10.zw >= r17.zw);
          r17.xy = cmp(r17.xy >= r10.zw);
          r17.xy = (int2)r17.xy | (int2)r17.zw;
          r11.w = (int)r17.y | (int)r17.x;
          if (r11.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r7.w, l(28), t12.xxxx
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(100), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r7.w, l(164), t12.xyxx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
            r7.w = dot(r17.xyzw, r21.xyzw);
            r10.zw = saturate(r10.zw);
            r17.xy = r10.zw * r19.xz + r19.yw;
            r7.w = r7.w + r18.x;
            r7.w = r7.w / r18.y;
            r7.w = max(6.10351563e-05, r7.w);
            r10.z = (int)r11.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r18.x = -r10.x;
              r19.z = (uint)r10.z;
              r18.y = r11.x;
              r18.z = r10.x;
              r10.w = 0;
              r11.w = 0;
              while (true) {
                r13.w = cmp((int)r11.w >= 8);
                if (r13.w != 0) break;
                r20.x = dot(icb[r11.w+0].yx, r18.xy);
                r20.y = dot(icb[r11.w+0].yx, r18.yz);
                r19.xy = r20.xy * r8.ww + r17.xy;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r7.w).x;
                r10.w = r13.w * 0.125 + r10.w;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r17.z = (uint)r10.z;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
            }
            r7.w = r10.w * r10.w;
            r7.w = r7.w * r10.w;
          } else {
            r7.w = 1;
          }
          r5.w = r7.w * r5.w;
        } else {
          r7.w = viewmodelSunShadowRaw & 0x0000ffff;
          r8.w = cmp(0 < (uint)r7.w);
          r10.z = ~(int)r1.z;
          r8.w = r8.w ? r10.z : 0;
          if (r8.w != 0) {
            r7.w = (int)r7.w + numLights;
            r7.w = (int)r7.w + -1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(52), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(68), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(84), t12.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r7.w, l(132), t12.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r7.w, l(148), t12.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
            r10.z = abs(r5.z) * -0.200000003 + 0.400000006;
            r10.w = cmp(r5.z < 0);
            r10.z = r10.w ? -r10.z : r10.z;
            r21.xyz = r6.xyz * r10.zzz + v7.xyz;
            r21.w = 1;
            r17.x = dot(r17.xyzw, r21.xyzw);
            r17.y = dot(r18.xyzw, r21.xyzw);
            r10.zw = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
            r10.zw = r10.zw + r20.zw;
            r10.zw = r10.zw * r20.xy;
            r17.xy = r8.ww / r19.xz;
            r17.zw = float2(1,1) + -r17.xy;
            r17.zw = cmp(r10.zw >= r17.zw);
            r17.xy = cmp(r17.xy >= r10.zw);
            r17.xy = (int2)r17.xy | (int2)r17.zw;
            r11.w = (int)r17.y | (int)r17.x;
            if (r11.w == 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r7.w, l(28), t12.xxxx
            r11.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(100), t12.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r7.w, l(164), t12.xyxx
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
              r7.w = dot(r17.xyzw, r21.xyzw);
              r10.zw = saturate(r10.zw);
              r17.xy = r10.zw * r19.xz + r19.yw;
              r7.w = r7.w + r18.x;
              r7.w = r7.w / r18.y;
              r7.w = max(6.10351563e-05, r7.w);
              r10.z = (int)r11.w & 0x0000ffff;
              if (enableDitheredShadow != 0) {
                r18.x = -r10.x;
                r19.z = (uint)r10.z;
                r18.y = r11.x;
                r18.z = r10.x;
                r10.w = 0;
                r11.w = 0;
                while (true) {
                  r13.w = cmp((int)r11.w >= 8);
                  if (r13.w != 0) break;
                  r20.x = dot(icb[r11.w+0].yx, r18.xy);
                  r20.y = dot(icb[r11.w+0].yx, r18.yz);
                  r19.xy = r20.xy * r8.ww + r17.xy;
                  r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r7.w).x;
                  r10.w = r13.w * 0.125 + r10.w;
                  r11.w = (int)r11.w + 1;
                }
              } else {
                r17.z = (uint)r10.z;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
              }
              r7.w = r10.w * r10.w;
              r7.w = r7.w * r10.w;
            } else {
              r7.w = 1;
            }
            r5.w = r7.w * r5.w;
          }
        }
      }
      r7.w = -r5.x * 0.5 + 1;
      r7.w = -abs(r5.z) * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -abs(r5.z);
      r7.w = r3.w * r7.w + abs(r5.z);
      r7.w = r7.w * r5.w;
      r8.w = cmp(0 < r5.z);
      r17.xyz = r7.www * r12.yzw + r15.xyz;
      r5.z = saturate(r5.z);
      r18.xyz = -v7.xyz * r0.xxx + sunConstants.wldDir.xyz;
      r0.x = dot(r18.xyz, r18.xyz);
      r0.x = rsqrt(r0.x);
      r18.xyz = r18.xyz * r0.xxx;
      r0.x = dot(r18.xyz, r0.yzw);
      r7.w = dot(r6.xyz, r18.xyz);
      r10.z = abs(r7.w) * r3.y + -abs(r7.w);
      r7.w = abs(r7.w) * r10.z + 1;
      r10.z = r5.z * r4.w + r5.y;
      r7.w = r7.w * r7.w;
      r7.w = r7.w * r10.z;
      r7.w = rcp(r7.w);
      r5.z = r5.z * r6.w;
      r5.z = r7.w * r5.z;
      r5.z = r5.z * r5.w;
      r18.xyz = r5.zzz * r12.yzw + r2.yzw;
      r0.x = saturate(1 + -r0.x);
      r5.w = r0.x * r0.x;
      r5.w = r5.w * r5.w;
      r0.x = r5.w * r0.x;
      r0.x = r5.z * r0.x;
      r19.xyz = r0.xxx * r12.zwy + r16.xyz;
      r17.w = r19.z;
      r15.w = r16.z;
      r15.xyzw = r8.wwww ? r17.xyzw : r15.xyzw;
      r19.zw = r18.xy;
      r16.zw = r2.yz;
      r17.xyzw = r8.wwww ? r19.xyzw : r16.xyzw;
      r2.w = r8.w ? r18.z : r2.w;
      r16.z = r15.w;
      r16.xy = r17.xy;
      r2.yz = r17.zw;
    }
  }
  r0.x = ~(int)r1.z;
  r17.x = -r10.x;
  r5.x = -r5.x * 0.5 + 1;
  r18.xy = float2(0,0);
  r19.w = 0;
  r20.xyz = v7.xyz;
  r20.w = 1;
  r21.w = 1;
  r17.z = r10.x;
  r22.w = 1;
  r23.z = 1;
  r24.w = 1;
  r17.yw = r11.xx;
  r10.y = r17.w;
  r25.w = 1;
  r11.y = r17.x;
  r11.z = r10.x;
  r26.w = 1;
  r27.x = r11.x;
  r27.y = r17.x;
  r27.z = r10.x;
  r28.x = r11.x;
  r28.y = r17.x;
  r28.z = r10.x;
  r29.x = r11.x;
  r29.y = r17.x;
  r29.z = r10.x;
  r12.yzw = r15.xyz;
  r30.xyz = r16.zxy;
  r31.xyz = r2.yzw;
  r5.z = enableDitheredShadow;
  r5.w = 0;
  while (true) {
    r6.w = cmp((uint)r5.w >= numLights);
    if (r6.w != 0) break;
    r18.z = (uint)r5.w >> 5;
    r19.xyz = (int3)r14.xyz + (int3)r18.xyz;
    r6.w = visibleLights.Load(r19.xyzw).x;
    r19.xyz = r12.yzw;
    r32.xyz = r30.xyz;
    r33.xyz = r31.xyz;
    r7.w = r5.z;
    r8.w = r6.w;
    while (true) {
      if (r8.w == 0) break;
      r10.z = firstbitlow((uint)r8.w);
      r10.w = 1 << (int)r10.z;
      r11.w = (int)r8.w & (int)r10.w;
      if (r11.w != 0) {
        r8.w = (int)r8.w ^ (int)r10.w;
        r10.z = (int)r5.w + (int)r10.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r34.xyzw, r10.z, l(0), t11.xyzw
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
      r34.z = samp0[]..swiz;
      r34.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r35.xy, r10.z, l(16), t11.xyxx
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
        r34.xyz = -v7.xyz + r34.xyz;
        r35.z = r34.w;
        r34.xyz = cmp(abs(r34.xyz) < r35.zxy);
        r10.w = r34.y ? r34.x : 0;
        r10.w = r34.z ? r10.w : 0;
        if (r10.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r10.z, l(0), t12.wxyz
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r10.z, l(16), t12.zxyw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r10.z, l(32), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r10.z, l(48), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r10.z, l(64), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r10.z, l(80), t12.xyzw
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r10.z, l(96), t12.yzwx
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
          if (3 == 0) r10.w = 0; else if (3+24 < 32) {           r10.w = (uint)r35.w << (32-(3 + 24)); r10.w = (uint)r10.w >> (32-3);          } else r10.w = (uint)r35.w >> 24;
          switch (r10.w) {
            case 4 :            r10.w = cmp(0 < r40.x);
            r41.xy = r39.zw;
            r41.z = r40.w;
            r42.xyz = -r41.xyz * float3(0.5,0.5,0.5) + r34.yzw;
            r43.xyz = -v7.xyz + r42.xyz;
            r11.w = dot(r41.xyz, r43.xyz);
            r13.w = saturate(-r11.w / r40.x);
            r44.xyz = r13.www * r41.xyz + r42.xyz;
            r44.xyz = r10.www ? r44.xyz : r34.yzw;
            r44.xyz = -v7.xyz + r44.xyz;
            r14.w = dot(r44.xyz, r44.xyz);
            r15.w = rsqrt(r14.w);
            r44.xyz = r44.xyz * r15.www;
            r15.w = dot(r6.xyz, r44.xyz);
            r16.w = cmp(0 < abs(r15.w));
            if (r16.w != 0) {
              r16.w = sqrt(r14.w);
              r18.z = r37.x * r37.x;
              r14.w = r18.z / r14.w;
              r14.w = min(1, r14.w);
              r18.zw = saturate(r16.ww * r36.xz + r36.yw);
              r44.xy = r18.zw * r18.zw;
              r18.zw = r18.zw * float2(-2,-2) + float2(3,3);
              r18.zw = r44.xy * r18.zw;
              r14.w = r18.z * r14.w;
              r14.w = r14.w * r18.w;
              r16.w = cmp(0 < r14.w);
              if (r16.w != 0) {
                if (3 == 0) r16.w = 0; else if (3+27 < 32) {                 r16.w = (uint)r35.w << (32-(3 + 27)); r16.w = (uint)r16.w >> (32-3);                } else r16.w = (uint)r35.w >> 27;
                r16.w = cmp((int)r16.w != 1);
                if (r16.w != 0) {
                  r16.w = abs(r15.w) * -0.200000003 + 0.400000006;
                  r18.z = cmp(r15.w < 0);
                  r16.w = r18.z ? -r16.w : r16.w;
                  r44.xyz = r6.xyz * r16.www + v7.xyz;
                  r44.xyz = r44.xyz + -r38.xyz;
                  r16.w = max(abs(r44.y), abs(r44.z));
                  r16.w = max(abs(r44.x), r16.w);
                  r16.w = r39.x / r16.w;
                  r16.w = r16.w + r39.y;
                  r18.z = dot(r44.xyz, r44.xyz);
                  r18.z = rsqrt(r18.z);
                  r16.w = max(6.10351563e-05, r16.w);
                  r18.w = (int)r35.w & 0x0000ffff;
                  r45.w = (uint)r18.w;
                  r18.w = 0;
                  r23.w = 0;
                  while (true) {
                    r27.w = cmp((int)r23.w >= 8);
                    if (r27.w != 0) break;
                    r46.y = dot(icb[r23.w+0].yx, r17.xy);
                    r46.z = dot(icb[r23.w+0].yx, r17.yz);
                    r46.yz = r46.yz * r37.yy;
                    r46.x = r46.y * r12.x;
                    r46.w = r46.y * r3.x;
                    r45.xyz = r44.xyz * r18.zzz + r46.xzw;
                    r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r45.xyzw, r16.w).x;
                    r18.w = r27.w * 0.125 + r18.w;
                    r23.w = (int)r23.w + 1;
                  }
                } else {
                  r18.w = 1;
                }
                r14.w = r18.w * r14.w;
                r16.w = cmp(0 < r14.w);
                if (r16.w != 0) {
                  r16.w = r35.x * r3.y;
                  r16.w = 0.25 * r16.w;
                  r18.z = dot(r41.xyz, r13.xyz);
                  r23.w = dot(r13.xyz, r43.xyz);
                  r27.w = -r18.z * r18.z + r40.x;
                  r11.w = r18.z * r23.w + -r11.w;
                  r11.w = saturate(r11.w / r27.w);
                  r18.z = r27.w / r40.x;
                  r18.z = 10 * r18.z;
                  r18.z = min(1, r18.z);
                  r11.w = r11.w + -r13.w;
                  r11.w = r18.z * r11.w + r13.w;
                  r41.xyz = r11.www * r41.xyz + r42.xyz;
                  r41.xyz = r10.www ? r41.xyz : r34.yzw;
                  r41.xyz = -v7.xyz + r41.xyz;
                  r10.w = dot(r41.xyz, r41.xyz);
                  r10.w = rsqrt(r10.w);
                  r42.xyz = r41.xyz * r10.www;
                  if (4 == 0) r11.w = 0; else if (4+16 < 32) {                   r11.w = (uint)r35.w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r35.w >> 16;
                  r13.w = cmp(0 < (uint)r11.w);
                  r13.w = r1.z ? r13.w : 0;
                  if (r13.w != 0) {
                    r11.w = (int)r11.w + numLights;
                    r11.w = (int)r11.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r11.w, l(52), t12.xxxx
                  r13.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(100), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(116), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                    r18.z = abs(r15.w) * -0.200000003 + 0.400000006;
                    r23.w = cmp(r15.w < 0);
                    r18.z = r23.w ? -r18.z : r18.z;
                    r21.xyz = r6.xyz * r18.zzz + v7.xyz;
                    r18.z = dot(r43.xyzw, r21.xyzw);
                    r23.w = dot(r44.xyzw, r21.xyzw);
                    r27.w = cmp(r23.w < r18.z);
                    if (r27.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(68), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(84), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r11.w, l(132), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r11.w, l(148), t12.xyzw
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                    r46.z = samp0[]..swiz;
                    r46.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r11.w, l(164), t12.xyxx
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                      r43.x = dot(r43.xyzw, r21.xyzw);
                      r43.y = dot(r44.xyzw, r21.xyzw);
                      r21.xy = r43.xy / r23.ww;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r46.zw;
                      r21.xy = r21.xy * r46.xy;
                      r43.xy = r13.ww / r45.xz;
                      r43.zw = float2(1,1) + -r43.xy;
                      r43.zw = cmp(r21.xy >= r43.zw);
                      r43.xy = cmp(r43.xy >= r21.xy);
                      r43.xy = (int2)r43.xy | (int2)r43.zw;
                      r21.z = (int)r43.y | (int)r43.x;
                      r21.xy = saturate(r21.xy);
                      r43.xy = r21.xy * r45.xz + r45.yw;
                      r21.x = r47.y * r23.w;
                      r18.z = r47.x * r23.w + r18.z;
                      r18.z = r18.z / r21.x;
                    } else {
                      r21.z = -1;
                    }
                    r21.x = (int)r27.w | (int)r21.z;
                    if (r21.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(28), t12.xxxx
                    r11.w = samp0[]..swiz;
                      r18.z = max(6.10351563e-05, r18.z);
                      r11.w = (int)r11.w & 0x0000ffff;
                      if (r7.w != 0) {
                        r21.z = (uint)r11.w;
                        r23.w = 0;
                        r27.w = 0;
                        while (true) {
                          r28.w = cmp((int)r27.w >= 8);
                          if (r28.w != 0) break;
                          r44.x = dot(icb[r27.w+0].yx, r17.xw);
                          r44.y = dot(icb[r27.w+0].xy, r10.xy);
                          r21.xy = r44.xy * r13.ww + r43.xy;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r18.z).x;
                          r23.w = r21.x * 0.125 + r23.w;
                          r27.w = (int)r27.w + 1;
                        }
                      } else {
                        r43.z = (uint)r11.w;
                        r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r18.z).x;
                      }
                      r11.w = r23.w * r23.w;
                      r11.w = r11.w * r23.w;
                    } else {
                      r11.w = 1;
                    }
                    r14.w = r14.w * r11.w;
                  } else {
                    if (4 == 0) r11.w = 0; else if (4+20 < 32) {                     r11.w = (uint)r35.w << (32-(4 + 20)); r11.w = (uint)r11.w >> (32-4);                    } else r11.w = (uint)r35.w >> 20;
                    r13.w = cmp(0 < (uint)r11.w);
                    r13.w = r13.w ? r0.x : 0;
                    if (r13.w != 0) {
                      r11.w = (int)r11.w + numLights;
                      r11.w = (int)r11.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r11.w, l(52), t12.xxxx
                    r13.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(100), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(116), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                      r18.z = abs(r15.w) * -0.200000003 + 0.400000006;
                      r21.x = cmp(r15.w < 0);
                      r18.z = r21.x ? -r18.z : r18.z;
                      r22.xyz = r6.xyz * r18.zzz + v7.xyz;
                      r18.z = dot(r43.xyzw, r22.xyzw);
                      r21.x = dot(r44.xyzw, r22.xyzw);
                      r21.y = cmp(r21.x < r18.z);
                      if (r21.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r11.w, l(68), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r11.w, l(84), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r11.w, l(132), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r11.w, l(148), t12.xyzw
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                      r46.z = samp0[]..swiz;
                      r46.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r11.w, l(164), t12.xyxx
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                        r43.x = dot(r43.xyzw, r22.xyzw);
                        r43.y = dot(r44.xyzw, r22.xyzw);
                        r22.xy = r43.xy / r21.xx;
                        r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r22.xy = r22.xy + r46.zw;
                        r22.xy = r22.xy * r46.xy;
                        r43.xy = r13.ww / r45.xz;
                        r43.zw = float2(1,1) + -r43.xy;
                        r43.zw = cmp(r22.xy >= r43.zw);
                        r43.xy = cmp(r43.xy >= r22.xy);
                        r43.xy = (int2)r43.xy | (int2)r43.zw;
                        r21.z = (int)r43.y | (int)r43.x;
                        r22.xy = saturate(r22.xy);
                        r22.xy = r22.xy * r45.xz + r45.yw;
                        r27.w = r47.y * r21.x;
                        r18.z = r47.x * r21.x + r18.z;
                        r18.z = r18.z / r27.w;
                      } else {
                        r21.z = -1;
                      }
                      r21.x = (int)r21.y | (int)r21.z;
                      if (r21.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(28), t12.xxxx
                      r11.w = samp0[]..swiz;
                        r18.z = max(6.10351563e-05, r18.z);
                        r11.w = (int)r11.w & 0x0000ffff;
                        if (r7.w != 0) {
                          r21.z = (uint)r11.w;
                          r27.w = 0;
                          r28.w = 0;
                          while (true) {
                            r29.w = cmp((int)r28.w >= 8);
                            if (r29.w != 0) break;
                            r43.x = dot(icb[r28.w+0].xy, r11.xy);
                            r43.y = dot(icb[r28.w+0].yx, r11.xz);
                            r21.xy = r43.xy * r13.ww + r22.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r18.z).x;
                            r27.w = r21.x * 0.125 + r27.w;
                            r28.w = (int)r28.w + 1;
                          }
                        } else {
                          r22.z = (uint)r11.w;
                          r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r18.z).x;
                        }
                        r11.w = r27.w * r27.w;
                        r11.w = r11.w * r27.w;
                      } else {
                        r11.w = 1;
                      }
                      r14.w = r14.w * r11.w;
                    }
                  }
                  r11.w = -abs(r15.w) * r5.x + 1;
                  r11.w = r11.w * r11.w;
                  r11.w = -r11.w * 0.620000005 + 0.620000005;
                  r11.w = r11.w + -abs(r15.w);
                  r11.w = r3.w * r11.w + abs(r15.w);
                  r11.w = r11.w * r14.w;
                  r35.x = r34.x;
                  r13.w = cmp(0 < r15.w);
                  r21.xyz = r11.www * r35.xyz + r19.xyz;
                  r11.w = saturate(dot(r6.xyz, r42.xyz));
                  r22.xyz = r41.xyz * r10.www + r0.yzw;
                  r10.w = dot(r22.xyz, r22.xyz);
                  r10.w = rsqrt(r10.w);
                  r22.xyz = r22.xyz * r10.www;
                  r10.w = dot(r22.xyz, r0.yzw);
                  r15.w = dot(r6.xyz, r22.xyz);
                  r18.z = abs(r15.w) * r3.y + -abs(r15.w);
                  r15.w = abs(r15.w) * r18.z + 1;
                  r18.z = r11.w * r4.w + r5.y;
                  r15.w = r15.w * r15.w;
                  r15.w = r15.w * r18.z;
                  r15.w = rcp(r15.w);
                  r11.w = r11.w * r16.w;
                  r11.w = r15.w * r11.w;
                  r11.w = r11.w * r14.w;
                  r22.xyz = r11.www * r35.xyz + r33.xyz;
                  r10.w = saturate(1 + -r10.w);
                  r14.w = r10.w * r10.w;
                  r14.w = r14.w * r14.w;
                  r10.w = r14.w * r10.w;
                  r10.w = r11.w * r10.w;
                  r41.xyz = r10.www * r35.xyz + r32.xyz;
                  r19.xyz = r13.www ? r21.xyz : r19.xyz;
                  r32.xyz = r13.www ? r41.xyz : r32.xyz;
                  r33.xyz = r13.www ? r22.xyz : r33.xyz;
                }
              }
            }
            break;
            case 2 :            r21.xy = r37.zw;
            r21.z = r38.w;
            r21.xyz = -v7.xyz + r21.xyz;
            r10.w = dot(r21.xyz, r21.xyz);
            r10.w = rsqrt(r10.w);
            r22.xyz = r21.xyz * r10.www;
            r11.w = dot(r6.xyz, r22.xyz);
            r13.w = cmp(0 < abs(r11.w));
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r10.z, l(112), t12.yzwx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r10.z, l(128), t12.zxyw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
              r43.xyz = r41.xyz;
              r43.w = r42.y;
              r13.w = dot(r43.xyzw, r20.xyzw);
              r14.w = cmp(r13.w < 1);
              if (r14.w != 0) {
                r22.xyz = float3(1,1,1);
                r14.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r10.z, l(172), t12.yzwx
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r10.z, l(188), t12.wxyz
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r10.z, l(204), t12.xyzw
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r10.z, l(236), t12.xxxx
              r15.w = samp0[]..swiz;
                r47.xyz = -v7.xyz + r34.yzw;
                r16.w = r37.x * r37.x;
                r18.z = dot(r47.xyz, r47.xyz);
                r16.w = r16.w / r18.z;
                r16.w = min(1, r16.w);
                r36.xy = saturate(r13.ww * r36.xz + r36.yw);
                r36.zw = r36.xy * r36.xy;
                r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                r36.xy = r36.zw * r36.xy;
                r16.w = r36.x * r16.w;
                r16.w = r16.w * r36.y;
                r38.w = r39.x;
                r36.x = dot(r38.xyzw, r20.xyzw);
                r47.xyz = r39.yzw;
                r47.w = r40.w;
                r36.y = dot(r47.xyzw, r20.xyzw);
                r23.xy = r36.xy / r13.ww;
                r13.w = cmp(r44.w < 0.00048828125);
                if (r13.w != 0) {
                  r45.y = r46.x;
                  r36.xy = saturate(abs(r23.xy) * r45.zw + r45.xy);
                  r36.zw = r36.xy * r36.xy;
                  r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                  r36.xy = r36.zw * r36.xy;
                  r13.w = r36.x * r36.y;
                } else {
                  r44.w = r45.y;
                  r36.xyzw = saturate(r44.xyzw * abs(r23.yyxx));
                  r36.xyzw = log2(r36.xyzw);
                  r36.xyzw = r45.xxxx * r36.xyzw;
                  r36.xyzw = exp2(r36.xyzw);
                  r36.xy = r36.xy + r36.zw;
                  r36.xy = log2(r36.xy);
                  r36.xy = r46.xx * r36.xy;
                  r36.xy = exp2(r36.xy);
                  r18.z = r45.z * r36.x;
                  r28.w = r45.w * r36.y + -1;
                  r18.z = r45.w * r36.y + -r18.z;
                  r18.z = saturate(r28.w / r18.z);
                  r28.w = r18.z * r18.z;
                  r18.z = r18.z * -2 + 3;
                  r13.w = r28.w * r18.z;
                }
                r14.w = r16.w * r13.w;
                r13.w = (int)r15.w & 255;
                if (r13.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyz, r10.z, l(220), t12.xyzx
                r36.x = samp0[]..swiz;
                r36.y = samp0[]..swiz;
                r36.z = samp0[]..swiz;
                  r15.w = dot(r46.yzw, r23.xyz);
                  r16.w = dot(r36.xyz, r23.xyz);
                  r36.x = frac(r15.w);
                  r36.y = frac(r16.w);
                  r13.w = (int)r13.w + -1;
                  r36.z = (uint)r13.w;
                  r22.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
                } else {
                  r22.xyz = float3(1,1,1);
                }
              }
              r34.yz = r35.yz;
              r22.xyz = r34.xyz * r22.xyz;
              r13.w = cmp(0 < r14.w);
              if (r13.w != 0) {
                if (3 == 0) r13.w = 0; else if (3+27 < 32) {                 r13.w = (uint)r35.w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);                } else r13.w = (uint)r35.w >> 27;
                r13.w = cmp((int)r13.w != 1);
                if (r13.w != 0) {
                  r13.w = abs(r11.w) * -0.200000003 + 0.400000006;
                  r15.w = cmp(r11.w < 0);
                  r13.w = r15.w ? -r13.w : r13.w;
                  r24.xyz = r6.xyz * r13.www + v7.xyz;
                  r41.xyz = r40.xyz;
                  r13.w = dot(r41.xyzw, r24.xyzw);
                  r15.w = dot(r43.xyzw, r24.xyzw);
                  r16.w = cmp(r15.w >= r13.w);
                  if (r16.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.y, r10.z, l(144), t12.xxxx
                  r42.y = samp0[]..swiz;
                    r38.w = r39.x;
                    r23.x = dot(r38.xyzw, r24.xyzw);
                    r40.xyz = r39.yzw;
                    r23.y = dot(r40.xyzw, r24.xyzw);
                    r23.xy = r23.xy / r15.ww;
                    r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r24.xy = r23.xy * r42.zw + r42.xy;
                    r10.z = r13.w / r15.w;
                    r10.z = max(6.10351563e-05, r10.z);
                    r13.w = (int)r35.w & 0x0000ffff;
                    if (r7.w != 0) {
                      r34.z = (uint)r13.w;
                      r15.w = 0;
                      r16.w = 0;
                      while (true) {
                        r18.z = cmp((int)r16.w >= 8);
                        if (r18.z != 0) break;
                        r23.x = dot(icb[r16.w+0].xy, r27.xy);
                        r23.y = dot(icb[r16.w+0].yx, r27.xz);
                        r34.xy = r23.xy * r37.yy + r24.xy;
                        r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r10.z).x;
                        r15.w = r18.z * 0.125 + r15.w;
                        r16.w = (int)r16.w + 1;
                      }
                    } else {
                      r24.z = (uint)r13.w;
                      r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r10.z).x;
                    }
                    r10.z = r15.w * r15.w;
                    r10.z = r10.z * r15.w;
                  } else {
                    r10.z = 1;
                  }
                } else {
                  r10.z = 1;
                }
                r10.z = r14.w * r10.z;
                r13.w = cmp(0 < r10.z);
                if (r13.w != 0) {
                  r13.w = r35.x * r3.y;
                  r13.w = 0.25 * r13.w;
                  if (4 == 0) r14.w = 0; else if (4+16 < 32) {                   r14.w = (uint)r35.w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r35.w >> 16;
                  r16.w = cmp(0 < (uint)r14.w);
                  r16.w = r1.z ? r16.w : 0;
                  if (r16.w != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = (int)r14.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r14.w, l(52), t12.xxxx
                  r16.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(68), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(84), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(100), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(116), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(132), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(148), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                    r18.z = abs(r11.w) * -0.200000003 + 0.400000006;
                    r23.x = cmp(r11.w < 0);
                    r18.z = r23.x ? -r18.z : r18.z;
                    r25.xyz = r6.xyz * r18.zzz + v7.xyz;
                    r23.x = dot(r34.xyzw, r25.xyzw);
                    r23.y = dot(r36.xyzw, r25.xyzw);
                    r18.z = dot(r37.xyzw, r25.xyzw);
                    r24.x = dot(r38.xyzw, r25.xyzw);
                    r24.y = cmp(r24.x < r18.z);
                    r23.xy = r23.xy / r24.xx;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.xy = r23.xy + r40.zw;
                    r23.xy = r23.xy * r40.xy;
                    r25.xy = r16.ww / r39.xz;
                    r34.xy = float2(1,1) + -r25.xy;
                    r34.xy = cmp(r23.xy >= r34.xy);
                    r25.xy = cmp(r25.xy >= r23.xy);
                    r25.xy = (int2)r25.xy | (int2)r34.xy;
                    r24.z = (int)r25.y | (int)r25.x;
                    r24.y = (int)r24.y | (int)r24.z;
                    if (r24.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r14.w, l(28), t12.xxxx
                    r24.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xy, r14.w, l(164), t12.xyxx
                    r25.x = samp0[]..swiz;
                    r25.y = samp0[]..swiz;
                      r23.xy = saturate(r23.xy);
                      r34.xy = r23.xy * r39.xz + r39.yw;
                      r14.w = r25.y * r24.x;
                      r18.z = r25.x * r24.x + r18.z;
                      r14.w = r18.z / r14.w;
                      r14.w = max(6.10351563e-05, r14.w);
                      r18.z = r24.y ? 0.000000 : 0;
                      if (r7.w != 0) {
                        r24.z = (uint)r18.z;
                        r23.xy = float2(0,0);
                        while (true) {
                          r25.x = cmp((int)r23.y >= 8);
                          if (r25.x != 0) break;
                          r25.x = dot(icb[r23.y+0].xy, r28.xy);
                          r25.y = dot(icb[r23.y+0].yx, r28.xz);
                          r24.xy = r25.xy * r16.ww + r34.xy;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r14.w).x;
                          r23.x = r24.x * 0.125 + r23.x;
                          r23.y = (int)r23.y + 1;
                        }
                      } else {
                        r34.z = (uint)r18.z;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r14.w).x;
                      }
                      r14.w = r23.x * r23.x;
                      r14.w = r14.w * r23.x;
                    } else {
                      r14.w = 1;
                    }
                    r10.z = r14.w * r10.z;
                  } else {
                    if (4 == 0) r14.w = 0; else if (4+20 < 32) {                     r14.w = (uint)r35.w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                    } else r14.w = (uint)r35.w >> 20;
                    r16.w = cmp(0 < (uint)r14.w);
                    r16.w = r16.w ? r0.x : 0;
                    if (r16.w != 0) {
                      r14.w = (int)r14.w + numLights;
                      r14.w = (int)r14.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r14.w, l(52), t12.xxxx
                    r16.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(68), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(84), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(100), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(116), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(132), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(148), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                      r18.z = abs(r11.w) * -0.200000003 + 0.400000006;
                      r23.y = cmp(r11.w < 0);
                      r18.z = r23.y ? -r18.z : r18.z;
                      r26.xyz = r6.xyz * r18.zzz + v7.xyz;
                      r24.x = dot(r34.xyzw, r26.xyzw);
                      r24.y = dot(r35.xyzw, r26.xyzw);
                      r18.z = dot(r36.xyzw, r26.xyzw);
                      r23.y = dot(r37.xyzw, r26.xyzw);
                      r24.z = cmp(r23.y < r18.z);
                      r24.xy = r24.xy / r23.yy;
                      r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r24.xy = r24.xy + r39.zw;
                      r24.xy = r24.xy * r39.xy;
                      r25.xy = r16.ww / r38.xz;
                      r26.xy = float2(1,1) + -r25.xy;
                      r26.xy = cmp(r24.xy >= r26.xy);
                      r25.xy = cmp(r25.xy >= r24.xy);
                      r25.xy = (int2)r25.xy | (int2)r26.xy;
                      r25.x = (int)r25.y | (int)r25.x;
                      r24.z = (int)r24.z | (int)r25.x;
                      if (r24.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.z, r14.w, l(28), t12.xxxx
                      r24.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xy, r14.w, l(164), t12.xyxx
                      r25.x = samp0[]..swiz;
                      r25.y = samp0[]..swiz;
                        r24.xy = saturate(r24.xy);
                        r26.xy = r24.xy * r38.xz + r38.yw;
                        r14.w = r25.y * r23.y;
                        r18.z = r25.x * r23.y + r18.z;
                        r14.w = r18.z / r14.w;
                        r14.w = max(6.10351563e-05, r14.w);
                        r18.z = r24.z ? 0.000000 : 0;
                        if (r7.w != 0) {
                          r24.z = (uint)r18.z;
                          r23.y = 0;
                          r25.x = 0;
                          while (true) {
                            r25.y = cmp((int)r25.x >= 8);
                            if (r25.y != 0) break;
                            r34.x = dot(icb[r25.x+0].xy, r29.xy);
                            r34.y = dot(icb[r25.x+0].yx, r29.xz);
                            r24.xy = r34.xy * r16.ww + r26.xy;
                            r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r14.w).x;
                            r23.y = r24.x * 0.125 + r23.y;
                            r25.x = (int)r25.x + 1;
                          }
                        } else {
                          r26.z = (uint)r18.z;
                          r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r14.w).x;
                        }
                        r14.w = r23.y * r23.y;
                        r14.w = r14.w * r23.y;
                      } else {
                        r14.w = 1;
                      }
                      r10.z = r14.w * r10.z;
                    }
                  }
                  r14.w = -abs(r11.w) * r5.x + 1;
                  r14.w = r14.w * r14.w;
                  r14.w = -r14.w * 0.620000005 + 0.620000005;
                  r14.w = r14.w + -abs(r11.w);
                  r14.w = r3.w * r14.w + abs(r11.w);
                  r14.w = r14.w * r10.z;
                  r16.w = cmp(0 < r11.w);
                  r24.xyz = r14.www * r22.xyz + r19.xyz;
                  r11.w = saturate(r11.w);
                  r21.xyz = r21.xyz * r10.www + r0.yzw;
                  r10.w = dot(r21.xyz, r21.xyz);
                  r10.w = rsqrt(r10.w);
                  r21.xyz = r21.xyz * r10.www;
                  r10.w = dot(r21.xyz, r0.yzw);
                  r14.w = dot(r6.xyz, r21.xyz);
                  r18.z = abs(r14.w) * r3.y + -abs(r14.w);
                  r14.w = abs(r14.w) * r18.z + 1;
                  r18.z = r11.w * r4.w + r5.y;
                  r14.w = r14.w * r14.w;
                  r14.w = r14.w * r18.z;
                  r14.w = rcp(r14.w);
                  r11.w = r11.w * r13.w;
                  r11.w = r14.w * r11.w;
                  r10.z = r11.w * r10.z;
                  r21.xyz = r10.zzz * r22.xyz + r33.xyz;
                  r10.w = saturate(1 + -r10.w);
                  r11.w = r10.w * r10.w;
                  r11.w = r11.w * r11.w;
                  r10.w = r11.w * r10.w;
                  r10.z = r10.z * r10.w;
                  r22.xyz = r10.zzz * r22.xyz + r32.xyz;
                  r19.xyz = r16.www ? r24.xyz : r19.xyz;
                  r32.xyz = r16.www ? r22.xyz : r32.xyz;
                  r33.xyz = r16.www ? r21.xyz : r33.xyz;
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
    r12.yzw = r19.xyz;
    r30.xyz = r32.xyz;
    r31.xyz = r33.xyz;
    r5.w = (int)r5.w + 32;
  }
  r0.xyz = float3(1,1,1) + -r7.xyz;
  r0.xyz = r30.xyz * r0.xyz;
  r0.xyz = r31.xyz * r7.xyz + r0.xyz;
  r0.xyz = r12.yzw * r4.xyz + r0.xyz;
  r0.w = 1 + -coolingFactor;
  r0.w = r9.w * r0.w;
  r1.xyz = r1.xyw * r3.zzz + -r8.xyz;
  r1.xyz = r0.www * r1.xyz + r8.xyz;
  r1.xyz = r1.xyz * r2.xxx;
  r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = max(9.99999975e-05, r0.w);
  r0.w = max(relHDRExposure.x, r0.w);
  r2.xyz = r1.xyz * r0.www;
  r1.xyz = relativeHDR ? r2.xyz : r1.xyz;
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