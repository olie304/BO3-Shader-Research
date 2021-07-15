// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:42 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + w1.xy;
  r0.zw = distortionOffsetUVs.xy * distortionScaleUVs.xy;
  r0.zw = r0.xy * distortionScaleUVs.xy + r0.zw;
  r1.x = distortionRotateUVs.y * gameTime.w + 1;
  r1.x = distortionRotateUVs.x * r1.x;
  r1.x = 0.0174532924 * r1.x;
  sincos(r1.x, r1.x, r2.x);
  r2.y = r2.x;
  r2.z = r1.x;
  r3.x = dot(r2.yz, r0.zw);
  r2.x = -r1.x;
  r3.y = dot(r2.xy, r0.zw);
  r0.zw = gameTime.ww * distortionScrollUVs.xy;
  r0.zw = r0.zw * distortionScaleUVs.xy + r3.xy;
  r1.x = gameTime.w * distortionZoomRate;
  r1.x = cos(r1.x);
  r1.x = r1.x * 0.5 + 0.5;
  r1.x = 1 + -r1.x;
  r1.y = distortionZoomUVs.y + -distortionZoomUVs.x;
  r1.x = r1.x * r1.y + distortionZoomUVs.x;
  r0.zw = r0.zw / r1.xx;
  r0.zw = float2(0.5,0.5) + r0.zw;
  r0.zw = distortionMap.Sample(normalSampler_s, r0.zw).xy;
  r0.zw = r0.zw * float2(2,2) + float2(-1,-1);
  r1.x = cmp(0.5 < uvMotionToggle1);
  if (r1.x != 0) {
    r1.y = rowCount * columnCount;
    r1.z = imageTime * r1.y;
    r1.w = gameTime.w * r1.z;
    r1.w = cmp(r1.w >= -r1.w);
    r1.w = r1.w ? r1.z : -r1.z;
    r2.x = 1 / r1.w;
    r2.x = gameTime.w * r2.x;
    r2.x = frac(r2.x);
    r1.w = r2.x * r1.w;
    r1.z = r1.w / r1.z;
    r1.y = r1.z * r1.y;
    r1.y = round(r1.y);
    r1.z = r1.y / columnCount;
    r1.w = columnCount * r1.y;
    r1.w = cmp(r1.w >= -r1.w);
    r1.w = r1.w ? columnCount : -columnCount;
    r2.x = 1 / r1.w;
    r1.y = r2.x * r1.y;
    r1.y = frac(r1.y);
    r1.y = r1.w * r1.y;
    r1.y = trunc(r1.y);
    r1.y = w1.x + r1.y;
    r2.x = r1.y / columnCount;
    r1.y = trunc(r1.z);
    r1.y = w1.y + r1.y;
    r2.y = r1.y / rowCount;
  } else {
    r1.y = dot(-v6.xyz, -v6.xyz);
    r1.y = rsqrt(r1.y);
    r1.yzw = -v6.xyz * r1.yyy;
    r3.x = dot(r1.yzw, v4.xyz);
    r3.y = dot(r1.yzw, v5.xyz);
    r1.y = dot(r1.yzw, v3.xyz);
    r1.z = cmp(0 < r1.y);
    r1.yw = -r3.xy / r1.yy;
    r1.yz = r1.zz ? r1.yw : 0;
    r1.yz = scaleUVs.xy * r1.yz;
    r1.yz = float2(9.99999975e-06,9.99999975e-06) * r1.yz;
    r1.yz = r0.xy * scaleUVs.xy + r1.yz;
    r1.yz = offsetUVs.xy * scaleUVs.xy + r1.yz;
    r1.w = rotateUVs.y * gameTime.w + 1;
    r1.w = rotateUVs.x * r1.w;
    r1.w = 0.0174532924 * r1.w;
    sincos(r1.w, r3.x, r4.x);
    r4.y = r4.x;
    r4.z = r3.x;
    r5.x = dot(r4.yz, r1.yz);
    r4.x = -r3.x;
    r5.y = dot(r4.xy, r1.yz);
    r1.yz = gameTime.ww * scrollUVs.xy;
    r1.yz = r1.yz * scaleUVs.xy + r5.xy;
    r1.w = gameTime.w * zoomRate;
    r1.w = cos(r1.w);
    r1.w = r1.w * 0.5 + 0.5;
    r1.w = 1 + -r1.w;
    r2.z = zoomUVs.y + -zoomUVs.x;
    r1.w = r1.w * r2.z + zoomUVs.x;
    r1.yz = r1.yz / r1.ww;
    r1.yz = float2(0.5,0.5) + r1.yz;
    r2.zw = saturate(r1.yz);
    r2.xy = clampU ? r2.zw : r1.yz;
  }
  r1.yz = r0.zw * distortionAmount + r2.xy;
  r2.xyzw = colorMap.Sample(colorSampler_s, r1.yz).xyzw;
  r1.w = tintMask.Sample(colorSampler_s, r1.yz).x;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r1.www * r3.xyz + float3(1,1,1);
  r2.xyz = r3.xyz * r2.xyz;
  r1.w = saturate(0.0588235296 * glossRange.y);
  r3.xyz = normalMap.Sample(normalSampler_s, r1.yz).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r1.yz = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.x = dot(r1.yz, r1.yz);
  r3.x = 1 + -r3.x;
  r3.x = max(0, r3.x);
  r3.x = sqrt(r3.x);
  r3.y = r3.z * r3.z;
  r3.y = 0.333333343 * r3.y;
  r3.y = min(1, r3.y);
  r3.z = v8.x ? 1 : -1;
  r3.w = dot(v3.xyz, v3.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = v3.xyz * r3.www;
  r4.xyz = r4.xyz * r3.zzz;
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = v4.xyz * r3.www;
  r5.xyz = r5.xyz * r3.zzz;
  r3.w = dot(v5.xyz, v5.xyz);
  r3.w = rsqrt(r3.w);
  r6.xyz = v5.xyz * r3.www;
  r6.xyz = r6.xyz * r3.zzz;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r3.y + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r7.y = max(0, r1.w);
  r3.yzw = r6.xyz * r1.zzz;
  r1.yzw = r5.xyz * r1.yyy + r3.yzw;
  r1.yzw = r4.xyz * r3.xxx + r1.yzw;
  r3.x = dot(r1.yzw, r1.yzw);
  r3.x = rsqrt(r3.x);
  r3.xyz = r3.xxx * r1.yzw;
  r1.y = dot(-v6.xyz, -v6.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = -v6.xyz * r1.yyy;
  r1.z = dot(r4.xyz, v3.xyz);
  if (r1.x != 0) {
    r1.x = rowCount * columnCount;
    r1.w = imageTime * r1.x;
    r4.w = gameTime.w * r1.w;
    r4.w = cmp(r4.w >= -r4.w);
    r4.w = r4.w ? r1.w : -r1.w;
    r5.x = 1 / r4.w;
    r5.x = gameTime.w * r5.x;
    r5.x = frac(r5.x);
    r4.w = r5.x * r4.w;
    r1.w = r4.w / r1.w;
    r1.x = r1.w * r1.x;
    r1.x = round(r1.x);
    r1.w = r1.x / columnCount;
    r4.w = columnCount * r1.x;
    r4.w = cmp(r4.w >= -r4.w);
    r4.w = r4.w ? columnCount : -columnCount;
    r5.x = 1 / r4.w;
    r1.x = r5.x * r1.x;
    r1.x = frac(r1.x);
    r1.x = r4.w * r1.x;
    r1.x = trunc(r1.x);
    r1.x = w1.x + r1.x;
    r5.x = r1.x / columnCount;
    r1.x = trunc(r1.w);
    r1.x = w1.y + r1.x;
    r5.y = r1.x / rowCount;
  } else {
    r1.xw = offsetUVs.xy * scaleUVs.xy;
    r1.xw = r0.xy * scaleUVs.xy + r1.xw;
    r4.w = rotateUVs.y * gameTime.w + 1;
    r4.w = rotateUVs.x * r4.w;
    r4.w = 0.0174532924 * r4.w;
    sincos(r4.w, r6.x, r8.x);
    r8.y = r8.x;
    r8.z = r6.x;
    r9.x = dot(r8.yz, r1.xw);
    r8.x = -r6.x;
    r9.y = dot(r8.xy, r1.xw);
    r1.xw = gameTime.ww * scrollUVs.xy;
    r1.xw = r1.xw * scaleUVs.xy + r9.xy;
    r4.w = gameTime.w * zoomRate;
    r4.w = cos(r4.w);
    r4.w = r4.w * 0.5 + 0.5;
    r4.w = 1 + -r4.w;
    r5.z = zoomUVs.y + -zoomUVs.x;
    r4.w = r4.w * r5.z + zoomUVs.x;
    r1.xw = r1.xw / r4.ww;
    r1.xw = float2(0.5,0.5) + r1.xw;
    r5.zw = saturate(r1.xw);
    r5.xy = clampU ? r5.zw : r1.xw;
  }
  r1.xw = r0.zw * distortionAmount + r5.xy;
  r5.xyzw = emissiveMap.Sample(colorSampler_s, r1.xw).xyzw;
  r5.xyz = colorTint.xyz * r5.xyz;
  r6.xyz = saturate(r5.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = alphaCooling * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r1.x = saturate(r1.z);
  r1.w = log2(r1.x);
  r1.w = invertFalloff * r1.w;
  r1.w = exp2(r1.w);
  r1.x = 1 + -r1.x;
  r1.x = log2(r1.x);
  r1.x = invertFalloff * r1.x;
  r1.x = exp2(r1.x);
  r1.x = invertFalloff ? r1.x : r1.w;
  r7.zw = cmp(invertFalloff == float2(0,0));
  r1.x = r7.z ? 1 : r1.x;
  r1.w = invertFalloff * r5.w;
  r1.x = r1.w * r1.x;
  r5.xyz = r5.xyz * r1.xxx;
  r6.xyz = r6.xyz * r1.xxx;
  r1.x = v2.x + v2.y;
  r1.x = v2.z + r1.x;
  r1.x = flickerSeed.y + r1.x;
  r1.x = frac(r1.x);
  r8.y = gameTime.w * flickerSpeed + r1.x;
  r8.x = flickerSeed.x;
  r1.x = flickerLookupMap.SampleLevel(lookupSampler_s, r8.xy, 0).x;
  r1.x = log2(abs(r1.x));
  r1.x = flickerPower * r1.x;
  r1.x = exp2(r1.x);
  r1.w = flickerRange.y + -flickerRange.x;
  r1.x = r1.x * r1.w + flickerRange.x;
  r8.xyz = r5.xyz * r1.xxx;
  r8.xyz = r8.xyz / invertFalloff;
  r1.w = saturate(dot(r8.xyz, float3(0.298999995,0.587000012,0.114)));
  r1.w = r2.w * v1.x + r1.w;
  r8.xy = maskOffsetUVs.xy * maskScaleUVs.xy;
  r0.xy = r0.xy * maskScaleUVs.xy + r8.xy;
  r2.w = gameTime.w * maskRotateUVs.y + 1;
  r2.w = maskRotateUVs.x * r2.w;
  r2.w = 0.0174532924 * r2.w;
  sincos(r2.w, r8.x, r9.x);
  r9.y = r9.x;
  r9.z = r8.x;
  r10.x = dot(r9.yz, r0.xy);
  r9.x = -r8.x;
  r10.y = dot(r9.xy, r0.xy);
  r0.xy = gameTime.ww * maskScrollUVs.xy;
  r0.xy = r0.xy * maskScaleUVs.xy + r10.xy;
  r2.w = gameTime.w * maskZoomRate;
  r2.w = cos(r2.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = 1 + -r2.w;
  r4.w = maskZoomUVs.y + -maskZoomUVs.x;
  r2.w = r2.w * r4.w + maskZoomUVs.x;
  r0.xy = r0.xy / r2.ww;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r8.xy = saturate(r0.xy);
  r0.xy = clampU ? r8.xy : r0.xy;
  r0.xy = r0.zw * distortionAmount + r0.xy;
  r0.x = alphaMask.Sample(colorSampler_s, r0.xy).x;
  r0.x = r1.w * r0.x;
  r0.y = r1.z * r1.z;
  r0.y = saturate(r0.y * v7.x + v7.y);
  r0.x = r0.x * r0.y;
  r8.xy = (int2)v0.xy;
  r8.zw = float2(0,0);
  r0.y = floatZSampler.Load(r8.xyz).x;
  r0.z = cmp(r0.y >= 0.984375);
  r0.w = 1.01587307 * r0.y;
  r0.y = r0.y * 64 + -63;
  r0.y = r0.z ? r0.y : r0.w;
  r0.y = max(9.99999994e-09, r0.y);
  r0.z = cmp(v0.z >= 0.984375);
  r0.w = 1.01587307 * v0.z;
  r1.z = v0.z * 64 + -63;
  r0.z = r0.z ? r1.z : r0.w;
  r0.z = max(9.99999994e-09, r0.z);
  r0.yz = rcp(r0.yz);
  r0.w = 1 / invertFalloff;
  r0.w = r7.w ? 60000 : r0.w;
  r0.y = r0.y + -r0.z;
  r0.y = saturate(r0.y * r0.w);
  r8.w = r0.x * r0.y;
  r0.xy = (uint2)v0.xy;
  r0.w = cmp(isDepthHack != 0);
  r1.zw = (uint2)r0.yx;
  r2.w = dot(r1.wz, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r9.x, r10.x);
  r1.z = dot(r1.zw, float2(0.0671105608,0.00583714992));
  r1.z = frac(r1.z);
  r1.z = 52.9829178 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * 6.28318548 + gameTick.w;
  sincos(r1.z, r11.x, r12.x);
  r7.x = saturate(dot(r3.xyz, r4.xyz));
  r1.z = dot(-r4.xyz, r3.xyz);
  r1.z = r1.z + r1.z;
  r13.xyz = r3.xyz * -r1.zzz + -r4.xyz;
  r1.z = 17 * r7.y;
  r1.z = exp2(r1.z);
  r1.z = 2 + r1.z;
  r1.z = 2 / r1.z;
  r1.w = sqrt(r1.z);
  r2.w = 1 + -r7.y;
  r4.w = 5 * r2.w;
  r5.w = r2.w * 5 + -2.5;
  r5.w = 0.400000006 * r5.w;
  r5.w = max(0, r5.w);
  r5.w = 100 * r5.w;
  r7.zw = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r7.z);
  r6.w = r7.x * r6.w;
  r6.w = 9.1368103 * r6.w;
  r7.z = r4.w * r2.w;
  r7.z = -r7.z * 2.0159049 + r7.w;
  r7.z = exp2(r7.z);
  r7.z = r7.x * r7.z;
  r7.z = 9.70808983 * r7.z;
  r6.w = max(r7.z, r6.w);
  r6.w = max(1.26815999, r6.w);
  r7.z = numRefProbes + -numOverrideProbes;
  r0.z = 0.0078125 * r0.z;
  r0.z = min(15, r0.z);
  r0.z = (uint)r0.z;
  r14.xy = (uint2)r0.xy >> int2(6,6);
  r14.z = (uint)r0.z << 4;
  r0.x = (int)r7.z & -32;
  r0.y = (int)-r0.x + (int)r7.z;
  r0.z = numRefProbes & -32;
  r7.w = (int)-r0.z + numRefProbes;
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r22.xyzw = float4(0,0,0,0);
  r23.yzw = float3(0,0,0);
  r9.z = r0.x;
  while (true) {
    r9.w = cmp((uint)r9.z >= numRefProbes);
    if (r9.w != 0) break;
    r15.z = (uint)r9.z >> 5;
    r16.xyz = (int3)r14.xyz + (int3)r15.xyz;
    r9.w = visibleProbes.Load(r16.xyzw).x;
    r10.w = cmp((int)r0.x == (int)r9.z);
    bitmask.y = ((~(-1 << r0.y)) << 0) & 0xffffffff;  r11.y = (((uint)0 << 0) & bitmask.y) | ((uint)r9.w & ~bitmask.y);
    r9.w = r10.w ? r11.y : r9.w;
    r10.w = cmp((int)r0.z == (int)r9.z);
    if (r7.w == 0) r11.y = 0; else if (r7.w+0 < 32) {     r11.y = (uint)r9.w << (32-(r7.w + 0)); r11.y = (uint)r11.y >> (32-r7.w);    } else r11.y = (uint)r9.w >> 0;
    r9.w = r10.w ? r11.y : r9.w;
    r10.w = (int)r9.z + numLights;
    r24.xyzw = r22.xyzw;
    r25.xyz = r23.yzw;
    r11.y = r9.w;
    while (true) {
      if (r11.y == 0) break;
      r11.z = firstbitlow((uint)r11.y);
      r11.w = 1 << (int)r11.z;
      r12.y = (int)r11.w & (int)r11.y;
      if (r12.y != 0) {
        r11.y = (int)r11.w ^ (int)r11.y;
        r11.w = (int)r10.w + (int)r11.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r11.w, l(0), t11.xyzw
      r26.x = samp0[]..swiz;
      r26.y = samp0[]..swiz;
      r26.z = samp0[]..swiz;
      r26.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xy, r11.w, l(16), t11.xyxx
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
        r12.yzw = -v6.xyz + r26.xyz;
        r16.z = r26.w;
        r12.yzw = cmp(abs(r12.yzw) < r16.zxy);
        r11.w = r12.z ? r12.y : 0;
        r11.w = r12.w ? r11.w : 0;
        if (r11.w != 0) {
          r11.z = (int)r9.z + (int)r11.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r11.z, l(0), t15.wxyz
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.yz, r11.z, l(96), t15.xxyx
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r11.z, l(116), t15.zwxy
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
          r16.xyz = v6.xyz + -r26.yzw;
          r11.w = (int)r27.w & 0x0000ffff;
          if (6 == 0) r12.w = 0; else if (6+25 < 32) {           r12.w = (uint)r27.w << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);          } else r12.w = (uint)r27.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r11.w, l(0), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(16), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r11.w, l(32), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(48), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(64), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(80), t16.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
          r14.w = dot(r28.xyz, r16.xyz);
          r14.w = saturate(r14.w + r28.w);
          r15.z = dot(r29.xyz, r16.xyz);
          r15.z = saturate(r15.z + r29.w);
          r14.w = r15.z * r14.w;
          r15.z = dot(r30.xyz, r16.xyz);
          r15.z = saturate(r15.z + r30.w);
          r14.w = r15.z * r14.w;
          r15.z = dot(r31.xyz, r16.xyz);
          r15.z = saturate(r15.z + r31.w);
          r14.w = r15.z * r14.w;
          r15.z = dot(r32.xyz, r16.xyz);
          r15.z = saturate(r15.z + r32.w);
          r14.w = r15.z * r14.w;
          r15.z = dot(r33.xyz, r16.xyz);
          r15.z = saturate(r15.z + r33.w);
          r17.x = r15.z * r14.w;
          r14.w = r12.y ? 0.000000 : 0;
          r15.zw = r14.ww ? r17.xy : r17.zx;
          r14.w = r12.y;
          r28.xy = r15.zw;
          r17.x = 1;
          while (true) {
            r17.w = cmp((int)r17.x >= (int)r12.w);
            if (r17.w != 0) break;
            r17.w = (int)r11.w + (int)r17.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r17.w = dot(r29.xyz, r16.xyz);
            r17.w = saturate(r17.w + r29.w);
            r17.w = r28.x * r17.w;
            r18.w = dot(r30.xyz, r16.xyz);
            r18.w = saturate(r18.w + r30.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r31.xyz, r16.xyz);
            r18.w = saturate(r18.w + r31.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r32.xyz, r16.xyz);
            r18.w = saturate(r18.w + r32.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r33.xyz, r16.xyz);
            r18.w = saturate(r18.w + r33.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r34.xyz, r16.xyz);
            r18.w = saturate(r18.w + r34.w);
            r28.x = r18.w * r17.w;
            r19.z = (uint)r14.w >> 2;
            if (1 == 0) r19.w = 0; else if (1+2 < 32) {             r19.w = (uint)r14.w << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);            } else r19.w = (uint)r14.w >> 2;
            r20.w = (int)r19.z & 2;
            r21.w = max(r28.y, r28.x);
            r17.w = -r17.w * r18.w + 1;
            r17.w = r28.y * r17.w;
            r19.y = r20.w ? r17.w : r21.w;
            r28.xy = r19.ww ? r28.xy : r19.xy;
            r17.x = (int)r17.x + 1;
            r14.w = r19.z;
          }
          r28.y = saturate(r28.y);
          r11.w = r28.y * r12.z;
          r12.y = cmp(0 < r11.w);
          if (r12.y != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.z, l(16), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r11.z, l(32), t15.yxwz
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.z, l(48), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.z, l(64), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.z, l(80), t15.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.z, l(132), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.z, l(148), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r11.z, l(164), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r11.z, l(180), t15.zwxy
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r11.z, l(196), t15.xyzw
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r11.z, l(212), t15.xyxx
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
            r25.z = r28.y * r12.z + r25.z;
            r11.z = r11.w * r27.z;
            r27.z = r34.z;
            r11.w = dot(r13.xyz, r27.xyz);
            r12.y = dot(r16.xyz, r27.xyz);
            r12.y = r12.y + -r34.w;
            r12.z = cmp(r12.y >= 0);
            r12.y = max(abs(r12.y), r5.w);
            r12.y = r12.z ? r12.y : -r12.y;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r12.y / r11.w;
            r11.w = min(131072, abs(r11.w));
            r34.z = r35.z;
            r12.y = dot(r13.xyz, r34.xyz);
            r12.z = dot(r16.xyz, r34.xyz);
            r12.z = r12.z + -r35.w;
            r12.w = cmp(r12.z >= 0);
            r12.z = max(abs(r12.z), r5.w);
            r12.z = r12.w ? r12.z : -r12.z;
            r12.y = max(1.00000001e-07, -r12.y);
            r12.y = r12.z / r12.y;
            r11.w = min(abs(r12.y), r11.w);
            r35.z = r36.z;
            r12.y = dot(r13.xyz, r35.xyz);
            r12.z = dot(r16.xyz, r35.xyz);
            r12.z = r12.z + -r36.w;
            r12.w = cmp(r12.z >= 0);
            r12.z = max(abs(r12.z), r5.w);
            r12.z = r12.w ? r12.z : -r12.z;
            r12.y = max(1.00000001e-07, -r12.y);
            r12.y = r12.z / r12.y;
            r11.w = min(abs(r12.y), r11.w);
            r36.z = r37.z;
            r12.y = dot(r13.xyz, r36.xyz);
            r12.z = dot(r16.xyz, r36.xyz);
            r12.z = r12.z + -r37.w;
            r12.w = cmp(r12.z >= 0);
            r12.z = max(abs(r12.z), r5.w);
            r12.z = r12.w ? r12.z : -r12.z;
            r12.y = max(1.00000001e-07, -r12.y);
            r12.y = r12.z / r12.y;
            r11.w = min(abs(r12.y), r11.w);
            r37.z = r38.x;
            r12.y = dot(r13.xyz, r37.xyz);
            r12.z = dot(r16.xyz, r37.xyz);
            r12.z = r12.z + -r38.y;
            r12.w = cmp(r12.z >= 0);
            r12.z = max(abs(r12.z), r5.w);
            r12.z = r12.w ? r12.z : -r12.z;
            r12.y = max(1.00000001e-07, -r12.y);
            r12.y = r12.z / r12.y;
            r11.w = min(abs(r12.y), r11.w);
            r39.zw = r38.zw;
            r12.y = dot(r13.zxy, r39.xzw);
            r12.z = dot(r16.zxy, r39.xzw);
            r12.z = r12.z + -r39.y;
            r12.w = cmp(r12.z >= 0);
            r12.z = max(abs(r12.z), r5.w);
            r12.z = r12.w ? r12.z : -r12.z;
            r12.y = max(1.00000001e-07, -r12.y);
            r12.y = r12.z / r12.y;
            r11.w = min(abs(r12.y), r11.w);
            r27.x = r31.w;
            r27.yz = r32.zw;
            r12.yzw = r27.xyz + r16.xyz;
            r12.yzw = r13.xyz * r11.www + r12.yzw;
            r14.w = dot(r12.yzw, r12.yzw);
            r14.w = sqrt(r14.w);
            r11.w = r11.w / r14.w;
            r11.w = r11.w + r11.w;
            r11.w = sqrt(r11.w);
            r11.w = r2.w * 5 + r11.w;
            r11.w = -0.844799995 + r11.w;
            r26.y = r29.z;
            r26.z = r30.x;
            r34.x = dot(r12.yzw, r26.xyz);
            r27.xy = r29.xw;
            r27.z = r30.w;
            r34.y = dot(r12.yzw, r27.xyz);
            r30.x = r29.y;
            r34.z = dot(r12.yzw, r30.xyz);
            if (9 == 0) r12.y = 0; else if (9+16 < 32) {             r12.y = (uint)r27.w << (32-(9 + 16)); r12.y = (uint)r12.y >> (32-9);            } else r12.y = (uint)r27.w >> 16;
            r34.w = (uint)r12.y;
            r12.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r11.w).xyz;
            r29.x = dot(r16.xyz, r26.xyz);
            r29.y = dot(r16.xyz, r27.xyz);
            r29.z = dot(r16.xyz, r30.xyz);
            r16.xyz = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
            r32.z = r33.x;
            r16.xyz = r16.xyz * r32.xyz + r33.yzw;
            r34.x = dot(r3.xyz, r26.xyz);
            r34.y = dot(r3.xyz, r27.xyz);
            r34.z = dot(r3.xyz, r30.xyz);
            r19.yzw = cmp(float3(0,0,0) < r34.xyz);
            r18.z = r19.y ? 0 : 0.5;
            r26.xyz = r18.xyz + r16.xyz;
            r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
            r27.xyz = r34.xyz * r34.xyz;
            r27.xyz = r27.xyz * r11.zzz;
            r20.z = r19.z ? 0 : 0.5;
            r28.xzw = r20.xyz + r16.xyz;
            r28.xzw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xzw, 0).xyz;
            r28.xzw = r28.xzw * r27.yyy;
            r26.xyz = r26.xyz * r27.xxx + r28.xzw;
            r21.z = r19.w ? 0 : 0.5;
            r16.xyz = r21.xyz + r16.xyz;
            r16.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
            r16.xyz = r16.xyz * r27.zzz + r26.xyz;
            r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
            r26.xyz = r19.yzw * r16.xyz;
            r11.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r24.xyz = r16.xyz * r19.yzw + r24.xyz;
            r14.w = r11.w * r6.w;
            r12.yzw = r12.yzw * r11.zzz;
            r11.z = dot(r12.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r11.z = r6.w * r11.w + r11.z;
            r11.z = r14.w / r11.z;
            r16.x = r24.w;
            r16.yz = r25.xy;
            r25.xyw = r12.zwy * r11.zzz + r16.yzx;
            r24.w = r25.w;
          }
        }
      }
    }
    r22.xyzw = r24.xyzw;
    r23.yzw = r25.xyz;
    r9.z = (int)r9.z + 32;
  }
  r0.z = cmp(r23.w < 1);
  if (r0.z != 0) {
    r15.xy = float2(0,0);
    r16.w = 0;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.x = 1;
    r20.xy = float2(0,0);
    r21.xy = float2(0,0);
    r24.x = r22.w;
    r24.yzw = r23.yzw;
    r11.yzw = r22.xyz;
    r0.z = r23.w;
    r7.w = 0;
    while (true) {
      r9.z = cmp((uint)r7.w >= (uint)r7.z);
      if (r9.z != 0) break;
      r15.z = (uint)r7.w >> 5;
      r16.xyz = (int3)r14.xyz + (int3)r15.xyz;
      r9.z = visibleProbes.Load(r16.xyzw).x;
      r9.w = cmp((int)r0.x == (int)r7.w);
      if (r0.y == 0) r10.w = 0; else if (r0.y+0 < 32) {       r10.w = (uint)r9.z << (32-(r0.y + 0)); r10.w = (uint)r10.w >> (32-r0.y);      } else r10.w = (uint)r9.z >> 0;
      r9.z = r9.w ? r10.w : r9.z;
      r9.w = (int)r7.w + numLights;
      r25.xyzw = r24.xyzw;
      r12.yzw = r11.yzw;
      r10.w = r0.z;
      r14.w = r9.z;
      while (true) {
        if (r14.w == 0) break;
        r15.z = firstbitlow((uint)r14.w);
        r15.w = 1 << (int)r15.z;
        r16.x = (int)r14.w & (int)r15.w;
        if (r16.x != 0) {
          r14.w = (int)r14.w ^ (int)r15.w;
          r15.w = (int)r9.w + (int)r15.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r15.w, l(0), t11.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xy, r15.w, l(16), t11.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r26.xyz = -v6.xyz + r26.xyz;
          r16.z = r26.w;
          r16.xyz = cmp(abs(r26.xyz) < r16.zxy);
          r15.w = r16.y ? r16.x : 0;
          r15.w = r16.z ? r15.w : 0;
          if (r15.w != 0) {
            r15.z = (int)r7.w + (int)r15.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r15.z, l(0), t15.wxyz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.xy, r15.z, l(96), t15.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r15.z, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r28.xyz = v6.xyz + -r26.yzw;
            r15.w = (int)r27.w & 0x0000ffff;
            if (6 == 0) r16.z = 0; else if (6+25 < 32) {             r16.z = (uint)r27.w << (32-(6 + 25)); r16.z = (uint)r16.z >> (32-6);            } else r16.z = (uint)r27.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r17.w = dot(r29.xyz, r28.xyz);
            r17.w = saturate(r17.w + r29.w);
            r18.w = dot(r30.xyz, r28.xyz);
            r18.w = saturate(r18.w + r30.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r31.xyz, r28.xyz);
            r18.w = saturate(r18.w + r31.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r32.xyz, r28.xyz);
            r18.w = saturate(r18.w + r32.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r33.xyz, r28.xyz);
            r18.w = saturate(r18.w + r33.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r34.xyz, r28.xyz);
            r18.w = saturate(r18.w + r34.w);
            r17.x = r18.w * r17.w;
            r17.w = r16.x ? 0.000000 : 0;
            r17.xw = r17.ww ? r17.xy : r17.zx;
            r18.w = r16.x;
            r29.xy = r17.xw;
            r19.z = 1;
            while (true) {
              r19.w = cmp((int)r19.z >= (int)r16.z);
              if (r19.w != 0) break;
              r19.w = (int)r15.w + (int)r19.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r19.w = dot(r30.xyz, r28.xyz);
              r19.w = saturate(r19.w + r30.w);
              r19.w = r29.x * r19.w;
              r20.w = dot(r31.xyz, r28.xyz);
              r20.w = saturate(r20.w + r31.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r32.xyz, r28.xyz);
              r20.w = saturate(r20.w + r32.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r33.xyz, r28.xyz);
              r20.w = saturate(r20.w + r33.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r34.xyz, r28.xyz);
              r20.w = saturate(r20.w + r34.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r35.xyz, r28.xyz);
              r20.w = saturate(r20.w + r35.w);
              r29.x = r20.w * r19.w;
              r21.w = (uint)r18.w >> 2;
              if (1 == 0) r26.w = 0; else if (1+2 < 32) {               r26.w = (uint)r18.w << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);              } else r26.w = (uint)r18.w >> 2;
              r28.w = (int)r21.w & 2;
              r29.z = max(r29.y, r29.x);
              r19.w = -r19.w * r20.w + 1;
              r19.w = r29.y * r19.w;
              r19.y = r28.w ? r19.w : r29.z;
              r29.xy = r26.ww ? r29.xy : r19.xy;
              r19.z = (int)r19.z + 1;
              r18.w = r21.w;
            }
            r15.w = saturate(r29.y + -r10.w);
            r16.x = r15.w * r16.y;
            r16.z = cmp(0 < r16.x);
            if (r16.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r15.z, l(16), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r15.z, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r15.z, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.z, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.z, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.z, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.z, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.z, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r15.z, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r15.z, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r15.z, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r25.w = r15.w * r16.y + r25.w;
              r15.z = r16.x * r27.z;
              r27.z = r35.z;
              r15.w = dot(r13.xyz, r27.xyz);
              r16.x = dot(r28.xyz, r27.xyz);
              r16.x = r16.x + -r35.w;
              r16.y = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r5.w);
              r16.x = r16.y ? r16.x : -r16.x;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.x / r15.w;
              r15.w = min(131072, abs(r15.w));
              r35.z = r36.z;
              r16.x = dot(r13.xyz, r35.xyz);
              r16.y = dot(r28.xyz, r35.xyz);
              r16.y = r16.y + -r36.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r5.w);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r36.z = r37.z;
              r16.x = dot(r13.xyz, r36.xyz);
              r16.y = dot(r28.xyz, r36.xyz);
              r16.y = r16.y + -r37.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r5.w);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r37.z = r38.z;
              r16.x = dot(r13.xyz, r37.xyz);
              r16.y = dot(r28.xyz, r37.xyz);
              r16.y = r16.y + -r38.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r5.w);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r38.z = r39.x;
              r16.x = dot(r13.xyz, r38.xyz);
              r16.y = dot(r28.xyz, r38.xyz);
              r16.y = r16.y + -r39.y;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r5.w);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r40.zw = r39.zw;
              r16.x = dot(r13.zxy, r40.xzw);
              r16.y = dot(r28.zxy, r40.xzw);
              r16.y = r16.y + -r40.y;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r5.w);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r16.x = r32.w;
              r16.yz = r33.zw;
              r16.xyz = r16.xyz + r28.xyz;
              r16.xyz = r13.xyz * r15.www + r16.xyz;
              r17.x = dot(r16.xyz, r16.xyz);
              r17.x = sqrt(r17.x);
              r15.w = r15.w / r17.x;
              r15.w = r15.w + r15.w;
              r15.w = sqrt(r15.w);
              r15.w = r2.w * 5 + r15.w;
              r15.w = -0.844799995 + r15.w;
              r26.y = r30.z;
              r26.z = r31.x;
              r35.x = dot(r16.xyz, r26.xyz);
              r27.xy = r30.xw;
              r27.z = r31.w;
              r35.y = dot(r16.xyz, r27.xyz);
              r31.x = r30.y;
              r35.z = dot(r16.xyz, r31.xyz);
              if (9 == 0) r16.x = 0; else if (9+16 < 32) {               r16.x = (uint)r27.w << (32-(9 + 16)); r16.x = (uint)r16.x >> (32-9);              } else r16.x = (uint)r27.w >> 16;
              r35.w = (uint)r16.x;
              r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r15.w).xyz;
              r30.x = dot(r28.xyz, r26.xyz);
              r30.y = dot(r28.xyz, r27.xyz);
              r30.z = dot(r28.xyz, r31.xyz);
              r19.yzw = saturate(r30.xyz * r32.xyz + float3(0.5,0.5,0.5));
              r33.z = r34.x;
              r19.yzw = r19.yzw * r33.xyz + r34.yzw;
              r35.x = dot(r3.xyz, r26.xyz);
              r35.y = dot(r3.xyz, r27.xyz);
              r35.z = dot(r3.xyz, r31.xyz);
              r26.xyz = cmp(float3(0,0,0) < r35.xyz);
              r18.z = r26.x ? 0 : 0.5;
              r27.xyz = r19.yzw + r18.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r28.xyz = r35.xyz * r35.xyz;
              r28.xyz = r28.xyz * r15.zzz;
              r20.z = r26.y ? 0 : 0.5;
              r26.xyw = r20.xyz + r19.yzw;
              r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
              r26.xyw = r26.xyw * r28.yyy;
              r26.xyw = r27.xyz * r28.xxx + r26.xyw;
              r21.z = r26.z ? 0 : 0.5;
              r19.yzw = r21.xyz + r19.yzw;
              r19.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.yzw, 0).xyz;
              r19.yzw = r19.yzw * r28.zzz + r26.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r19.yzw;
              r15.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r12.yzw = r19.yzw * r26.xyz + r12.yzw;
              r17.x = r15.w * r6.w;
              r16.xyz = r16.xyz * r15.zzz;
              r15.z = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r15.z = r6.w * r15.w + r15.z;
              r15.z = r17.x / r15.z;
              r25.xyz = r16.xyz * r15.zzz + r25.xyz;
            }
          }
        }
      }
      r24.xyzw = r25.xyzw;
      r11.yzw = r12.yzw;
      r7.w = (int)r7.w + 32;
    }
    r23.xyzw = r24.zxyw;
    r22.xyz = r11.yzw;
    r23.xyzw = r23.yzxw;
  } else {
    r23.x = r22.w;
  }
  r0.x = max(1, r23.w);
  r0.x = rcp(r0.x);
  r23.w = saturate(r23.w);
  r15.xyz = r22.xyz * r0.xxx;
  r11.yzw = r23.xyz * r0.xxx;
  r0.y = cmp(r23.w < 0.99000001);
  if (r0.y != 0) {
    r0.y = 1 + -r23.w;
    r0.z = sunConstants.globalProbeExposure * r0.y;
    r12.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
    r16.x = globalProbeConstants.data[0].w * r12.y;
    r16.yz = globalProbeConstants.data[1].xy * r12.zw;
    r12.yzw = saturate(float3(0.5,0.5,0.5) + r16.xyz);
    r16.xy = globalProbeConstants.data[1].zw * r12.yz;
    r16.z = globalProbeConstants.data[2].x * r12.w;
    r12.yzw = globalProbeConstants.data[2].yzw + r16.xyz;
    r16.xyz = cmp(float3(0,0,0) < r3.xyz);
    r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r16.w = 0;
    r17.xyz = r16.wwx + r12.yzw;
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r18.xyz = r3.xyz * r3.xyz;
    r18.xyz = r18.xyz * r0.zzz;
    r19.xyz = r16.wwy + r12.yzw;
    r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r18.yyy;
    r17.xyz = r17.xyz * r18.xxx + r19.xyz;
    r12.yzw = r16.wwz + r12.yzw;
    r12.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.yzw, 0).xyz;
    r12.yzw = r12.yzw * r18.zzz + r17.xyz;
    r3.w = 0;
    r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
    r12.yzw = r16.xyz * r12.yzw;
    r0.z = dot(r12.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r15.xyz = r22.xyz * r0.xxx + r12.yzw;
    r13.w = 0;
    r12.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r4.w).xyz;
    r0.x = sunConstants.globalProbeExposure * r0.y + -r0.z;
    r0.x = r7.y * r0.x + r0.z;
    r11.yzw = r12.yzw * r0.xxx + r11.yzw;
  }
  r0.xy = r7.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r0.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r0.xy, 0).xy;
  r16.xyz = r11.zwy * r0.xxx;
  r0.xyz = r11.yzw * r0.yyy;
  r2.w = sqrt(r1.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r2.w;
  r3.w = 0.5 * r2.w;
  r2.w = -r2.w * 0.5 + 1;
  r4.w = r7.x * r2.w + r3.w;
  r2.w = r4.w * r2.w;
  r3.w = r4.w * r3.w;
  if (noReceiveShadow == 0) {
    r4.w = dot(r3.xyz, sunConstants.wldDir.xyz);
    r4.w = cmp(0 >= abs(r4.w));
    if (r4.w != 0) {
      r5.w = 0;
    }
    if (r4.w == 0) {
      r7.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
      r7.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r7.yzw;
      r7.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r7.yzw;
      r7.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r7.yzw;
      r4.w = -sunConstants.splitDepthOffset + r7.w;
      r4.w = -r4.w * 6.10351563e-05 + 1;
      r6.w = saturate(r4.w);
      r6.w = cmp(r4.w == r6.w);
      if (r6.w != 0) {
        r6.w = 0;
        r9.z = 0;
        while (true) {
          r9.w = cmp(r6.w >= 3);
          if (r9.w != 0) break;
          r9.w = (uint)r6.w;
          r11.yz = -sunConstants.splitPinTransform[r9.w].xy + r7.yz;
          r10.w = max(abs(r11.y), abs(r11.z));
          r9.z = sunConstants.splitPinTransform[r9.w].z * r10.w;
          r9.w = cmp(r9.z < 1);
          if (r9.w != 0) {
            break;
          }
          r6.w = 1 + r6.w;
          r9.z = 0;
        }
      } else {
        r6.w = 3;
        r9.z = 0;
      }
      r9.w = cmp(r6.w >= 3);
      if (r9.w != 0) {
        r11.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
        r17.xz = rcp(r11.yy);
        r17.y = -r17.z;
        r11.yzw = r7.yzy * r17.xyz + r11.zwz;
        r12.yzw = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
        r11.yzw = max(float3(0,0,0), r11.yzw);
        r11.yzw = min(r11.yzw, r12.yzw);
        r12.yz = sunConstants.sstLightingConstants.coordScale * r11.wz;
        r12.yz = floor(r12.yz);
        r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r12.z;
        r10.w = r10.w * sunConstants.sstLightingConstants.coordScale + r12.y;
        r10.w = (uint)r10.w;
        r10.w = (int)r10.w + (int10)sunConstants.sstLightingConstants.rootOffset;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.y, r10.w, l(0), t23.xxxx
      r12.y = samp0[]..swiz;
        r12.z = (int)r12.y & 0x40000000;
        r12.w = (uint)r12.y << 2;
        if (r12.z == 0) {
          r12.z = (int)r12.y & 0x01ffffff;
          r17.x = (int)r10.w + (int)r12.z;
          r10.w = (uint)r12.y >> 25;
          r10.w = (uint)r10.w;
          r11.yzw = r11.yzw * r10.www;
          r11.yzw = frac(r11.yzw);
          r11.yzw = float3(128,128,128) * r11.yzw;
          r11.yzw = (uint3)r11.yzw;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r12.yz = (uint2)r11.wz >> int2(6,6);
          r10.w = (int)r17.z & 0xc0000000;
          r13.w = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          r12.z = r12.z ? r17.z : r13.w;
          r13.w = (uint)r12.z >> 13;
          r12.y = r12.y ? r13.w : r12.z;
          r12.y = (int)r12.y & 8191;
          r18.x = (int)r12.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r17.y = 0;
          r18.y = 1;
          r18.xyz = r10.www ? r17.xyz : r18.xyz;
          r19.yz = r10.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
          r12.yz = (uint2)r11.wz >> (uint2)r19.yy;
          r12.yz = (int2)r12.yz & int2(1,1);
          r13.w = (int)r18.z & 0xc0000000;
          r14.w = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r12.z = r12.z ? r18.z : r14.w;
          r14.w = (uint)r12.z >> 13;
          r12.y = r12.y ? r14.w : r12.z;
          r12.y = (int)r12.y & 8191;
          r19.x = (int)r12.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r18.xyz = r13.www ? r18.xyz : r19.xzw;
          r17.xyz = r10.www ? r17.xyz : r18.xyz;
          r10.w = (int)r17.z & 0xc0000000;
          if (r10.w == 0) {
            r10.w = (int)-r17.y + 6;
            r12.yz = (uint2)r11.wz >> (uint2)r10.ww;
            r10.w = (int)r17.z | 0x40000000;
            bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.z = (((uint)r12.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.y = (((uint)r12.y << 0) & bitmask.y) | ((uint)r12.z & ~bitmask.y);
            r12.y = (int)r12.y * 10;
            r10.w = (uint)r10.w >> (uint)r12.y;
            r10.w = (int)r10.w & 1023;
            r18.x = (int)r10.w + (int)r17.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
          r18.w = samp0[]..swiz;
            r18.yz = (int2)r17.yy + int2(1,2);
            r10.w = (int)-r18.y + 6;
            r12.yz = (uint2)r11.wz >> (uint2)r10.ww;
            r10.w = (int)r18.w & 0xc0000000;
            r13.w = (int)r18.w | 0x40000000;
            bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.z = (((uint)r12.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.y = (((uint)r12.y << 0) & bitmask.y) | ((uint)r12.z & ~bitmask.y);
            r12.y = (int)r12.y * 10;
            r12.y = (uint)r13.w >> (uint)r12.y;
            r12.y = (int)r12.y & 1023;
            r19.x = (int)r12.y + (int)r18.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
          r19.z = samp0[]..swiz;
            r19.y = r18.z;
            r19.xyz = r10.www ? r18.xyw : r19.xyz;
            r12.y = (int)-r19.y + 6;
            r12.yz = (uint2)r11.wz >> (uint2)r12.yy;
            r13.w = (int)r19.z & 0xc0000000;
            r14.w = (int)r19.z | 0x40000000;
            bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.z = (((uint)r12.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
            bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.y = (((uint)r12.y << 0) & bitmask.y) | ((uint)r12.z & ~bitmask.y);
            r12.y = (int)r12.y * 10;
            r12.y = (uint)r14.w >> (uint)r12.y;
            r12.y = (int)r12.y & 1023;
            r20.x = (int)r12.y + (int)r19.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
          r20.y = samp0[]..swiz;
            r12.yz = r13.ww ? r19.xz : r20.xy;
            r17.xz = r10.ww ? r18.xw : r12.yz;
          }
          r10.w = (int)r17.z & 0xc0000000;
          if (r10.w == 0) {
            if (14 == 0) r12.y = 0; else if (14+15 < 32) {             r12.y = (uint)r17.z << (32-(14 + 15)); r12.y = (uint)r12.y >> (32-14);            } else r12.y = (uint)r17.z >> 15;
            r12.y = (uint)r12.y;
            r12.y = sunConstants.sstLightingConstants.constants.spanInInches * r12.y;
            r17.yw = (int2)r17.zz & int2(32767,536870912);
            r12.z = (uint)r17.y;
            r12.z = sunConstants.sstLightingConstants.constants.spanInInches * r12.z;
            r12.yz = float2(6.10388815e-05,3.05185094e-05) * r12.yz;
            r13.w = (int)r11.z & 3;
            r13.w = (int)r13.w + (int)r17.x;
            r13.w = (int)r13.w + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
          r13.w = samp0[]..swiz;
            bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r11.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
            bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r11.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r11.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
            r11.y = (uint)r13.w >> (uint)r18.x;
            r11.y = (int)r11.y & 255;
            r11.y = (uint)r11.y;
            r11.y = r11.y * r12.z;
            r11.y = r11.y * 0.00392156886 + r12.y;
            r11.z = (int)r18.y + 1;
            if (1 == 0) r11.w = 0; else if (1+1 < 32) {             r11.w = (uint)r11.w << (32-(1 + 1)); r11.w = (uint)r11.w >> (32-1);            } else r11.w = (uint)r11.w >> 1;
            r11.z = (int)r11.w + (int)r11.z;
            r11.z = (int)r11.z + (int)r17.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.z, l(0), t23.xxxx
          r11.z = samp0[]..swiz;
            r11.z = (uint)r11.z >> (uint)r18.z;
            r11.z = (int)r11.z & 0x0000ffff;
            r11.z = (uint)r11.z;
            r11.z = r11.z * r12.z;
            r11.z = r11.z * 1.52590219e-05 + r12.y;
            r12.w = r17.w ? r11.y : r11.z;
          } else {
            r11.y = (int)r17.z & 0x80000000;
            r11.z = (int)r17.x + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.z, l(0), t23.xxxx
          r11.z = samp0[]..swiz;
            r11.y = r11.y ? r11.z : 0;
            r11.z = (uint)r17.z << 2;
            r11.w = (uint)r11.y >> 16;
            r11.y = (int)r11.y & 0x0000ffff;
            r11.yw = f16tof32(r11.yw);
            r11.z = r7.y * r11.w + r11.z;
            r11.y = r7.z * r11.y + r11.z;
            r12.w = r10.w ? r11.y : r12.w;
          }
        }
        r7.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r7.w;
        r7.w = cmp(r12.w < r7.w);
        r5.w = r7.w ? 0 : 1;
      }
      if (r9.w == 0) {
        if (enableDitheredShadow == 0) {
          r7.w = (uint)r6.w;
          r11.yz = -sunConstants.splitPinTransform[r7.w].xy + r7.yz;
          r11.yz = sunConstants.splitPinTransform[r7.w].zz * r11.yz;
          r17.xy = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r7.w = (int16)sunConstants.splitArrayOffset;
          r17.z = r7.w + r6.w;
          r7.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.w).x;
          r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r7.w = r9.w + r7.w;
          r7.w = saturate(-1 + r7.w);
          r9.w = r7.w * r7.w;
          r5.w = r9.w * r7.w;
        }
        if (enableDitheredShadow != 0) {
          r17.x = -r9.x;
          r7.w = (uint)r6.w;
          r6.w = 1 + r6.w;
          r6.w = min(2, r6.w);
          r6.w = (uint)r6.w;
          r9.z = 1 + -r9.z;
          r9.z = 28 * r9.z;
          r9.z = (uint)r9.z;
          r11.yz = -sunConstants.splitPinTransform[r7.w].xy + r7.yz;
          r11.yz = sunConstants.splitPinTransform[r7.w].zz * r11.yz;
          r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r7.yz = -sunConstants.splitPinTransform[r6.w].xy + r7.yz;
          r7.yz = sunConstants.splitPinTransform[r6.w].zz * r7.yz;
          r7.yz = r7.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r17.y = r10.x;
          r17.z = r9.x;
          r9.w = 0;
          r10.w = 0;
          while (true) {
            r11.w = cmp((uint)r10.w >= 8);
            if (r11.w != 0) break;
            r11.w = cmp((uint)r9.z < (uint)r10.w);
            r12.yz = r11.ww ? r7.yz : r11.yz;
            r12.w = r11.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r7.w].w;
            r11.w = r11.w ? r6.w : r7.w;
            r18.x = dot(icb[r10.w+0].yx, r17.xy);
            r18.y = dot(icb[r10.w+0].yx, r17.yz);
            r18.xy = r18.xy * r12.ww + r12.yz;
            r11.w = (int)r11.w + (int16)sunConstants.splitArrayOffset;
            r18.z = (uint)r11.w;
            r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r4.w).x;
            r12.y = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
            r11.w = r12.y + r11.w;
            r11.w = saturate(-1 + r11.w);
            r9.w = r11.w * 0.125 + r9.w;
            r10.w = (int)r10.w + 1;
          }
          r4.w = r9.w * r9.w;
          r5.w = r4.w * r9.w;
        }
      }
    }
  } else {
    r5.w = 1;
  }
  r4.w = dot(r3.xyz, sunConstants.wldDir.xyz);
  r6.w = cmp(0 < abs(r4.w));
  if (r6.w != 0) {
    r6.w = cmp(0 < r5.w);
    if (r6.w != 0) {
      r6.w = sunConstants.specScale * r1.z;
      r6.w = 0.25 * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r17.xyz = eyeOffset.xyz + v6.xyz;
        r17.w = 1;
        r7.y = dot(sunConstants.sunCookieTransform[0].xyzw, r17.xyzw);
        r7.z = dot(sunConstants.sunCookieTransform[1].xyzw, r17.xyzw);
        r17.xy = frac(r7.yz);
        r7.y = -1 + (int14)sunConstants.sunCookieIndex;
        r17.z = (uint)r7.y;
        r7.yzw = gCookieArray.SampleLevel(samplerLinear_s, r17.xyz, 0).xyz;
        r7.yzw = float3(-1,-1,-1) + r7.yzw;
        r7.yzw = sunConstants.sunCookieIntensity * r7.yzw + float3(1,1,1);
        r7.yzw = sunConstants.color.xyz * r7.yzw;
      } else {
        r7.yzw = sunConstants.color.xyz;
      }
      if (noReceiveShadow == 0) {
        r9.z = viewmodelSunShadowRaw >> 16;
        r9.w = cmp(0 < (uint)r9.z);
        r9.w = r0.w ? r9.w : 0;
        if (r9.w != 0) {
          r9.z = (int)r9.z + numLights;
          r9.z = (int)r9.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.z, l(52), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r9.z, l(68), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r9.z, l(84), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r9.z, l(132), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r9.z, l(148), t12.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
          r10.w = abs(r4.w) * -0.200000003 + 0.400000006;
          r11.y = cmp(r4.w < 0);
          r10.w = r11.y ? -r10.w : r10.w;
          r21.xyz = r3.xyz * r10.www + v6.xyz;
          r21.w = 1;
          r17.x = dot(r17.xyzw, r21.xyzw);
          r17.y = dot(r18.xyzw, r21.xyzw);
          r11.yz = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r11.yz = r11.yz + r20.zw;
          r11.yz = r11.yz * r20.xy;
          r12.yz = r9.ww / r19.xz;
          r17.xy = float2(1,1) + -r12.yz;
          r17.xy = cmp(r11.yz >= r17.xy);
          r12.yz = cmp(r12.yz >= r11.yz);
          r12.yz = (int2)r12.yz | (int2)r17.xy;
          r10.w = (int)r12.z | (int)r12.y;
          if (r10.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r9.z, l(28), t12.xxxx
          r10.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r9.z, l(100), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.yz, r9.z, l(164), t12.xxyx
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
            r9.z = dot(r17.xyzw, r21.xyzw);
            r11.yz = saturate(r11.yz);
            r17.xy = r11.yz * r19.xz + r19.yw;
            r9.z = r9.z + r12.y;
            r9.z = r9.z / r12.z;
            r9.z = max(6.10351563e-05, r9.z);
            r10.w = (int)r10.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r18.x = -r9.x;
              r19.z = (uint)r10.w;
              r18.y = r10.x;
              r18.z = r9.x;
              r11.yz = float2(0,0);
              while (true) {
                r11.w = cmp((int)r11.z >= 8);
                if (r11.w != 0) break;
                r20.x = dot(icb[r11.z+0].yx, r18.xy);
                r20.y = dot(icb[r11.z+0].yx, r18.yz);
                r19.xy = r20.xy * r9.ww + r17.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r9.z).x;
                r11.y = r11.w * 0.125 + r11.y;
                r11.z = (int)r11.z + 1;
              }
            } else {
              r17.z = (uint)r10.w;
              r11.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r9.z).x;
            }
            r9.z = r11.y * r11.y;
            r9.z = r9.z * r11.y;
          } else {
            r9.z = 1;
          }
          r5.w = r9.z * r5.w;
        } else {
          r9.z = viewmodelSunShadowRaw & 0x0000ffff;
          r9.w = cmp(0 < (uint)r9.z);
          r10.w = ~(int)r0.w;
          r9.w = r9.w ? r10.w : 0;
          if (r9.w != 0) {
            r9.z = (int)r9.z + numLights;
            r9.z = (int)r9.z + -1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.z, l(52), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r9.z, l(68), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r9.z, l(84), t12.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r9.z, l(132), t12.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r9.z, l(148), t12.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
            r10.w = abs(r4.w) * -0.200000003 + 0.400000006;
            r11.y = cmp(r4.w < 0);
            r10.w = r11.y ? -r10.w : r10.w;
            r21.xyz = r3.xyz * r10.www + v6.xyz;
            r21.w = 1;
            r17.x = dot(r17.xyzw, r21.xyzw);
            r17.y = dot(r18.xyzw, r21.xyzw);
            r11.yz = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
            r11.yz = r11.yz + r20.zw;
            r11.yz = r11.yz * r20.xy;
            r12.yz = r9.ww / r19.xz;
            r17.xy = float2(1,1) + -r12.yz;
            r17.xy = cmp(r11.yz >= r17.xy);
            r12.yz = cmp(r12.yz >= r11.yz);
            r12.yz = (int2)r12.yz | (int2)r17.xy;
            r10.w = (int)r12.z | (int)r12.y;
            if (r10.w == 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r9.z, l(28), t12.xxxx
            r10.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r9.z, l(100), t12.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.yz, r9.z, l(164), t12.xxyx
            r12.y = samp0[]..swiz;
            r12.z = samp0[]..swiz;
              r9.z = dot(r17.xyzw, r21.xyzw);
              r11.yz = saturate(r11.yz);
              r17.xy = r11.yz * r19.xz + r19.yw;
              r9.z = r9.z + r12.y;
              r9.z = r9.z / r12.z;
              r9.z = max(6.10351563e-05, r9.z);
              r10.w = (int)r10.w & 0x0000ffff;
              if (enableDitheredShadow != 0) {
                r18.x = -r9.x;
                r19.z = (uint)r10.w;
                r18.y = r10.x;
                r18.z = r9.x;
                r11.yz = float2(0,0);
                while (true) {
                  r11.w = cmp((int)r11.z >= 8);
                  if (r11.w != 0) break;
                  r20.x = dot(icb[r11.z+0].yx, r18.xy);
                  r20.y = dot(icb[r11.z+0].yx, r18.yz);
                  r19.xy = r20.xy * r9.ww + r17.xy;
                  r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r9.z).x;
                  r11.y = r11.w * 0.125 + r11.y;
                  r11.z = (int)r11.z + 1;
                }
              } else {
                r17.z = (uint)r10.w;
                r11.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r9.z).x;
              }
              r9.z = r11.y * r11.y;
              r9.z = r9.z * r11.y;
            } else {
              r9.z = 1;
            }
            r5.w = r9.z * r5.w;
          }
        }
      }
      r9.z = -r7.x * 0.5 + 1;
      r9.z = -abs(r4.w) * r9.z + 1;
      r9.z = r9.z * r9.z;
      r9.z = -r9.z * 0.620000005 + 0.620000005;
      r9.z = r9.z + -abs(r4.w);
      r9.z = r1.w * r9.z + abs(r4.w);
      r9.z = r9.z * r5.w;
      r9.w = cmp(0 < r4.w);
      r17.xyz = r9.zzz * r7.yzw + r15.xyz;
      r4.w = saturate(r4.w);
      r11.yzw = -v6.xyz * r1.yyy + sunConstants.wldDir.xyz;
      r1.y = dot(r11.yzw, r11.yzw);
      r1.y = rsqrt(r1.y);
      r11.yzw = r11.yzw * r1.yyy;
      r1.y = dot(r11.yzw, r4.xyz);
      r9.z = dot(r3.xyz, r11.yzw);
      r10.w = abs(r9.z) * r1.z + -abs(r9.z);
      r9.z = abs(r9.z) * r10.w + 1;
      r10.w = r4.w * r2.w + r3.w;
      r9.z = r9.z * r9.z;
      r9.z = r9.z * r10.w;
      r9.z = rcp(r9.z);
      r4.w = r4.w * r6.w;
      r4.w = r9.z * r4.w;
      r4.w = r4.w * r5.w;
      r11.yzw = r4.www * r7.yzw + r0.xyz;
      r1.y = saturate(1 + -r1.y);
      r5.w = r1.y * r1.y;
      r5.w = r5.w * r5.w;
      r1.y = r5.w * r1.y;
      r1.y = r4.w * r1.y;
      r18.xyz = r1.yyy * r7.zwy + r16.xyz;
      r17.w = r18.z;
      r15.w = r16.z;
      r15.xyzw = r9.wwww ? r17.xyzw : r15.xyzw;
      r18.zw = r11.yz;
      r16.zw = r0.xy;
      r17.xyzw = r9.wwww ? r18.xyzw : r16.xyzw;
      r0.z = r9.w ? r11.w : r0.z;
      r16.z = r15.w;
      r16.xy = r17.xy;
      r0.xy = r17.zw;
    }
  }
  r17.x = -r9.x;
  r1.y = ~(int)r0.w;
  r4.w = -r7.x * 0.5 + 1;
  r7.xy = float2(0,0);
  r18.w = 0;
  r19.xyz = v6.xyz;
  r19.w = 1;
  r20.w = 1;
  r17.z = r9.x;
  r21.w = 1;
  r22.z = 1;
  r23.w = 1;
  r17.yw = r10.xx;
  r9.y = r17.w;
  r24.w = 1;
  r10.y = r17.x;
  r10.z = r9.x;
  r25.w = 1;
  r26.x = r10.x;
  r26.y = r17.x;
  r26.z = r9.x;
  r27.x = r10.x;
  r27.y = r17.x;
  r27.z = r9.x;
  r28.x = r10.x;
  r28.y = r17.x;
  r28.z = r9.x;
  r11.yzw = r15.xyz;
  r29.xyz = r16.zxy;
  r30.xyz = r0.xyz;
  r5.w = enableDitheredShadow;
  r6.w = 0;
  while (true) {
    r7.w = cmp((uint)r6.w >= numLights);
    if (r7.w != 0) break;
    r7.z = (uint)r6.w >> 5;
    r18.xyz = (int3)r7.xyz + (int3)r14.xyz;
    r7.z = visibleLights.Load(r18.xyzw).x;
    r12.yzw = r11.yzw;
    r18.xyz = r29.xyz;
    r31.xyz = r30.xyz;
    r7.w = r5.w;
    r9.z = r7.z;
    while (true) {
      if (r9.z == 0) break;
      r9.w = firstbitlow((uint)r9.z);
      r10.w = 1 << (int)r9.w;
      r13.w = (int)r9.z & (int)r10.w;
      if (r13.w != 0) {
        r9.z = (int)r9.z ^ (int)r10.w;
        r9.w = (int)r6.w + (int)r9.w;
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
        r32.xyz = -v6.xyz + r32.xyz;
        r33.z = r32.w;
        r32.xyz = cmp(abs(r32.xyz) < r33.zxy);
        r10.w = r32.y ? r32.x : 0;
        r10.w = r32.z ? r10.w : 0;
        if (r10.w != 0) {
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
          if (3 == 0) r10.w = 0; else if (3+24 < 32) {           r10.w = (uint)r33.w << (32-(3 + 24)); r10.w = (uint)r10.w >> (32-3);          } else r10.w = (uint)r33.w >> 24;
          switch (r10.w) {
            case 4 :            r10.w = cmp(0 < r38.x);
            r39.xy = r37.zw;
            r39.z = r38.w;
            r40.xyz = -r39.xyz * float3(0.5,0.5,0.5) + r32.yzw;
            r41.xyz = -v6.xyz + r40.xyz;
            r13.w = dot(r39.xyz, r41.xyz);
            r14.w = saturate(-r13.w / r38.x);
            r42.xyz = r14.www * r39.xyz + r40.xyz;
            r42.xyz = r10.www ? r42.xyz : r32.yzw;
            r42.xyz = -v6.xyz + r42.xyz;
            r15.w = dot(r42.xyz, r42.xyz);
            r16.w = rsqrt(r15.w);
            r42.xyz = r42.xyz * r16.www;
            r16.w = dot(r3.xyz, r42.xyz);
            r22.w = cmp(0 < abs(r16.w));
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
                  r22.w = abs(r16.w) * -0.200000003 + 0.400000006;
                  r26.w = cmp(r16.w < 0);
                  r22.w = r26.w ? -r22.w : r22.w;
                  r42.xyz = r3.xyz * r22.www + v6.xyz;
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
                    r44.y = dot(icb[r28.w+0].yx, r17.xy);
                    r44.z = dot(icb[r28.w+0].yx, r17.yz);
                    r44.yz = r44.yz * r35.yy;
                    r44.x = r44.y * r12.x;
                    r44.w = r44.y * r11.x;
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
                  r22.w = r33.x * r1.z;
                  r22.w = 0.25 * r22.w;
                  r26.w = dot(r39.xyz, r13.xyz);
                  r28.w = dot(r13.xyz, r41.xyz);
                  r29.w = -r26.w * r26.w + r38.x;
                  r13.w = r26.w * r28.w + -r13.w;
                  r13.w = saturate(r13.w / r29.w);
                  r26.w = r29.w / r38.x;
                  r26.w = 10 * r26.w;
                  r26.w = min(1, r26.w);
                  r13.w = r13.w + -r14.w;
                  r13.w = r26.w * r13.w + r14.w;
                  r39.xyz = r13.www * r39.xyz + r40.xyz;
                  r39.xyz = r10.www ? r39.xyz : r32.yzw;
                  r39.xyz = -v6.xyz + r39.xyz;
                  r10.w = dot(r39.xyz, r39.xyz);
                  r10.w = rsqrt(r10.w);
                  r40.xyz = r39.xyz * r10.www;
                  if (4 == 0) r13.w = 0; else if (4+16 < 32) {                   r13.w = (uint)r33.w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r33.w >> 16;
                  r14.w = cmp(0 < (uint)r13.w);
                  r14.w = r0.w ? r14.w : 0;
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
                    r26.w = abs(r16.w) * -0.200000003 + 0.400000006;
                    r28.w = cmp(r16.w < 0);
                    r26.w = r28.w ? -r26.w : r26.w;
                    r20.xyz = r3.xyz * r26.www + v6.xyz;
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
                      if (r7.w != 0) {
                        r42.z = (uint)r13.w;
                        r20.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r20.z >= 8);
                          if (r26.w != 0) break;
                          r43.x = dot(icb[r20.z+0].yx, r17.xw);
                          r43.y = dot(icb[r20.z+0].xy, r9.xy);
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
                    r14.w = r14.w ? r1.y : 0;
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
                      r20.x = abs(r16.w) * -0.200000003 + 0.400000006;
                      r20.z = cmp(r16.w < 0);
                      r20.x = r20.z ? -r20.x : r20.x;
                      r21.xyz = r3.xyz * r20.xxx + v6.xyz;
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
                        if (r7.w != 0) {
                          r21.z = (uint)r13.w;
                          r20.z = 0;
                          r26.w = 0;
                          while (true) {
                            r28.w = cmp((int)r26.w >= 8);
                            if (r28.w != 0) break;
                            r42.x = dot(icb[r26.w+0].xy, r10.xy);
                            r42.y = dot(icb[r26.w+0].yx, r10.xz);
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
                  r13.w = -abs(r16.w) * r4.w + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -abs(r16.w);
                  r13.w = r1.w * r13.w + abs(r16.w);
                  r13.w = r13.w * r15.w;
                  r33.x = r32.x;
                  r14.w = cmp(0 < r16.w);
                  r21.xyz = r13.www * r33.xyz + r12.yzw;
                  r13.w = saturate(dot(r3.xyz, r40.xyz));
                  r39.xyz = r39.xyz * r10.www + r4.xyz;
                  r10.w = dot(r39.xyz, r39.xyz);
                  r10.w = rsqrt(r10.w);
                  r39.xyz = r39.xyz * r10.www;
                  r10.w = dot(r39.xyz, r4.xyz);
                  r16.w = dot(r3.xyz, r39.xyz);
                  r20.x = abs(r16.w) * r1.z + -abs(r16.w);
                  r16.w = abs(r16.w) * r20.x + 1;
                  r20.x = r13.w * r2.w + r3.w;
                  r16.w = r16.w * r16.w;
                  r16.w = r16.w * r20.x;
                  r16.w = rcp(r16.w);
                  r13.w = r13.w * r22.w;
                  r13.w = r16.w * r13.w;
                  r13.w = r13.w * r15.w;
                  r39.xyz = r13.www * r33.xyz + r31.xyz;
                  r10.w = saturate(1 + -r10.w);
                  r15.w = r10.w * r10.w;
                  r15.w = r15.w * r15.w;
                  r10.w = r15.w * r10.w;
                  r10.w = r13.w * r10.w;
                  r40.xyz = r10.www * r33.xyz + r18.xyz;
                  r12.yzw = r14.www ? r21.xyz : r12.yzw;
                  r18.xyz = r14.www ? r40.xyz : r18.xyz;
                  r31.xyz = r14.www ? r39.xyz : r31.xyz;
                }
              }
            }
            break;
            case 2 :            r21.xy = r35.zw;
            r21.z = r36.w;
            r21.xyz = -v6.xyz + r21.xyz;
            r10.w = dot(r21.xyz, r21.xyz);
            r10.w = rsqrt(r10.w);
            r39.xyz = r21.xyz * r10.www;
            r13.w = dot(r3.xyz, r39.xyz);
            r14.w = cmp(0 < abs(r13.w));
            if (r14.w != 0) {
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
              r14.w = dot(r41.xyzw, r19.xyzw);
              r15.w = cmp(r14.w < 1);
              if (r15.w != 0) {
                r42.xyz = float3(1,1,1);
                r15.w = 0;
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
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r9.w, l(236), t12.xxxx
              r16.w = samp0[]..swiz;
                r46.xyz = -v6.xyz + r32.yzw;
                r20.x = r35.x * r35.x;
                r22.w = dot(r46.xyz, r46.xyz);
                r20.x = r20.x / r22.w;
                r20.x = min(1, r20.x);
                r34.xy = saturate(r14.ww * r34.xz + r34.yw);
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
                r22.xy = r34.xy / r14.ww;
                r14.w = cmp(r43.w < 0.00048828125);
                if (r14.w != 0) {
                  r44.y = r45.x;
                  r34.xy = saturate(abs(r22.xy) * r44.zw + r44.xy);
                  r34.zw = r34.xy * r34.xy;
                  r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                  r34.xy = r34.zw * r34.xy;
                  r14.w = r34.x * r34.y;
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
                  r14.w = r26.w * r22.w;
                }
                r15.w = r20.x * r14.w;
                r14.w = (int)r16.w & 255;
                if (r14.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyz, r9.w, l(220), t12.xyzx
                r34.x = samp0[]..swiz;
                r34.y = samp0[]..swiz;
                r34.z = samp0[]..swiz;
                  r16.w = dot(r45.yzw, r22.xyz);
                  r20.x = dot(r34.xyz, r22.xyz);
                  r34.x = frac(r16.w);
                  r34.y = frac(r20.x);
                  r14.w = (int)r14.w + -1;
                  r34.z = (uint)r14.w;
                  r42.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
                } else {
                  r42.xyz = float3(1,1,1);
                }
              }
              r32.yz = r33.yz;
              r22.xyw = r32.xyz * r42.xyz;
              r14.w = cmp(0 < r15.w);
              if (r14.w != 0) {
                if (3 == 0) r14.w = 0; else if (3+27 < 32) {                 r14.w = (uint)r33.w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);                } else r14.w = (uint)r33.w >> 27;
                r14.w = cmp((int)r14.w != 1);
                if (r14.w != 0) {
                  r14.w = abs(r13.w) * -0.200000003 + 0.400000006;
                  r16.w = cmp(r13.w < 0);
                  r14.w = r16.w ? -r14.w : r14.w;
                  r23.xyz = r3.xyz * r14.www + v6.xyz;
                  r39.xyz = r38.xyz;
                  r14.w = dot(r39.xyzw, r23.xyzw);
                  r16.w = dot(r41.xyzw, r23.xyzw);
                  r20.x = cmp(r16.w >= r14.w);
                  if (r20.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.y, r9.w, l(144), t12.xxxx
                  r40.y = samp0[]..swiz;
                    r36.w = r37.x;
                    r32.x = dot(r36.xyzw, r23.xyzw);
                    r38.xyz = r37.yzw;
                    r32.y = dot(r38.xyzw, r23.xyzw);
                    r23.xy = r32.xy / r16.ww;
                    r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r23.xy = r23.xy * r40.zw + r40.xy;
                    r9.w = r14.w / r16.w;
                    r9.w = max(6.10351563e-05, r9.w);
                    r14.w = (int)r33.w & 0x0000ffff;
                    if (r7.w != 0) {
                      r32.z = (uint)r14.w;
                      r16.w = 0;
                      r20.x = 0;
                      while (true) {
                        r26.w = cmp((int)r20.x >= 8);
                        if (r26.w != 0) break;
                        r34.x = dot(icb[r20.x+0].xy, r26.xy);
                        r34.y = dot(icb[r20.x+0].yx, r26.xz);
                        r32.xy = r34.xy * r35.yy + r23.xy;
                        r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r9.w).x;
                        r16.w = r26.w * 0.125 + r16.w;
                        r20.x = (int)r20.x + 1;
                      }
                    } else {
                      r23.z = (uint)r14.w;
                      r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r9.w).x;
                    }
                    r9.w = r16.w * r16.w;
                    r9.w = r9.w * r16.w;
                  } else {
                    r9.w = 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = r15.w * r9.w;
                r14.w = cmp(0 < r9.w);
                if (r14.w != 0) {
                  r14.w = r33.x * r1.z;
                  r14.w = 0.25 * r14.w;
                  if (4 == 0) r15.w = 0; else if (4+16 < 32) {                   r15.w = (uint)r33.w << (32-(4 + 16)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r33.w >> 16;
                  r20.x = cmp(0 < (uint)r15.w);
                  r20.x = r0.w ? r20.x : 0;
                  if (r20.x != 0) {
                    r15.w = (int)r15.w + numLights;
                    r15.w = (int)r15.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r15.w, l(52), t12.xxxx
                  r20.x = samp0[]..swiz;
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
                    r23.x = abs(r13.w) * -0.200000003 + 0.400000006;
                    r23.y = cmp(r13.w < 0);
                    r23.x = r23.y ? -r23.x : r23.x;
                    r24.xyz = r3.xyz * r23.xxx + v6.xyz;
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
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r15.w, l(28), t12.xxxx
                    r24.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r15.w, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r23.xy = saturate(r23.xy);
                      r33.xy = r23.xy * r37.xz + r37.yw;
                      r15.w = r32.y * r24.x;
                      r23.x = r32.x * r24.x + r23.z;
                      r15.w = r23.x / r15.w;
                      r15.w = max(6.10351563e-05, r15.w);
                      r23.x = r24.y ? 0.000000 : 0;
                      if (r7.w != 0) {
                        r24.z = (uint)r23.x;
                        r23.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r23.z >= 8);
                          if (r26.w != 0) break;
                          r32.x = dot(icb[r23.z+0].xy, r27.xy);
                          r32.y = dot(icb[r23.z+0].yx, r27.xz);
                          r24.xy = r32.xy * r20.xx + r33.xy;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r15.w).x;
                          r23.y = r24.x * 0.125 + r23.y;
                          r23.z = (int)r23.z + 1;
                        }
                      } else {
                        r33.z = (uint)r23.x;
                        r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r15.w).x;
                      }
                      r15.w = r23.y * r23.y;
                      r15.w = r15.w * r23.y;
                    } else {
                      r15.w = 1;
                    }
                    r9.w = r15.w * r9.w;
                  } else {
                    if (4 == 0) r15.w = 0; else if (4+20 < 32) {                     r15.w = (uint)r33.w << (32-(4 + 20)); r15.w = (uint)r15.w >> (32-4);                    } else r15.w = (uint)r33.w >> 20;
                    r20.x = cmp(0 < (uint)r15.w);
                    r20.x = r20.x ? r1.y : 0;
                    if (r20.x != 0) {
                      r15.w = (int)r15.w + numLights;
                      r15.w = (int)r15.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r15.w, l(52), t12.xxxx
                    r20.x = samp0[]..swiz;
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
                      r23.x = abs(r13.w) * -0.200000003 + 0.400000006;
                      r23.z = cmp(r13.w < 0);
                      r23.x = r23.z ? -r23.x : r23.x;
                      r25.xyz = r3.xyz * r23.xxx + v6.xyz;
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
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.z, r15.w, l(28), t12.xxxx
                      r24.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xy, r15.w, l(164), t12.xyxx
                      r25.x = samp0[]..swiz;
                      r25.y = samp0[]..swiz;
                        r24.xy = saturate(r24.xy);
                        r32.xy = r24.xy * r36.xz + r36.yw;
                        r15.w = r25.y * r23.z;
                        r23.x = r25.x * r23.z + r23.x;
                        r15.w = r23.x / r15.w;
                        r15.w = max(6.10351563e-05, r15.w);
                        r23.x = r24.z ? 0.000000 : 0;
                        if (r7.w != 0) {
                          r24.z = (uint)r23.x;
                          r23.z = 0;
                          r25.x = 0;
                          while (true) {
                            r25.y = cmp((int)r25.x >= 8);
                            if (r25.y != 0) break;
                            r33.x = dot(icb[r25.x+0].xy, r28.xy);
                            r33.y = dot(icb[r25.x+0].yx, r28.xz);
                            r24.xy = r33.xy * r20.xx + r32.xy;
                            r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r15.w).x;
                            r23.z = r24.x * 0.125 + r23.z;
                            r25.x = (int)r25.x + 1;
                          }
                        } else {
                          r32.z = (uint)r23.x;
                          r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r15.w).x;
                        }
                        r15.w = r23.z * r23.z;
                        r15.w = r15.w * r23.z;
                      } else {
                        r15.w = 1;
                      }
                      r9.w = r15.w * r9.w;
                    }
                  }
                  r15.w = -abs(r13.w) * r4.w + 1;
                  r15.w = r15.w * r15.w;
                  r15.w = -r15.w * 0.620000005 + 0.620000005;
                  r15.w = r15.w + -abs(r13.w);
                  r15.w = r1.w * r15.w + abs(r13.w);
                  r15.w = r15.w * r9.w;
                  r20.x = cmp(0 < r13.w);
                  r24.xyz = r15.www * r22.xyw + r12.yzw;
                  r13.w = saturate(r13.w);
                  r21.xyz = r21.xyz * r10.www + r4.xyz;
                  r10.w = dot(r21.xyz, r21.xyz);
                  r10.w = rsqrt(r10.w);
                  r21.xyz = r21.xyz * r10.www;
                  r10.w = dot(r21.xyz, r4.xyz);
                  r15.w = dot(r3.xyz, r21.xyz);
                  r21.x = abs(r15.w) * r1.z + -abs(r15.w);
                  r15.w = abs(r15.w) * r21.x + 1;
                  r21.x = r13.w * r2.w + r3.w;
                  r15.w = r15.w * r15.w;
                  r15.w = r15.w * r21.x;
                  r15.w = rcp(r15.w);
                  r13.w = r13.w * r14.w;
                  r13.w = r15.w * r13.w;
                  r9.w = r13.w * r9.w;
                  r21.xyz = r9.www * r22.xyw + r31.xyz;
                  r10.w = saturate(1 + -r10.w);
                  r13.w = r10.w * r10.w;
                  r13.w = r13.w * r13.w;
                  r10.w = r13.w * r10.w;
                  r9.w = r10.w * r9.w;
                  r22.xyw = r9.www * r22.xyw + r18.xyz;
                  r12.yzw = r20.xxx ? r24.xyz : r12.yzw;
                  r18.xyz = r20.xxx ? r22.xyw : r18.xyz;
                  r31.xyz = r20.xxx ? r21.xyz : r31.xyz;
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
    r11.yzw = r12.yzw;
    r29.xyz = r18.xyz;
    r30.xyz = r31.xyz;
    r6.w = (int)r6.w + 32;
  }
  r0.xyz = float3(0.959999979,0.959999979,0.959999979) * r29.xyz;
  r0.xyz = r30.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r0.xyz;
  r0.xyz = r11.yzw * r2.xyz + r0.xyz;
  r0.w = 1 + -coolingFactor;
  r0.w = r8.w * r0.w;
  r1.xyz = r5.xyz * r1.xxx + -r6.xyz;
  r1.xyz = r0.www * r1.xyz + r6.xyz;
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
  r8.xyz = r1.xyz * r8.www;
  r0.w = (int)r8.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r2.xyzw = cmp(r8.xyzw == float4(0,0,0,0));
  r2.xy = r2.zw ? r2.xy : 0;
  r1.w = r2.y ? r2.x : 0;
  r0.w = (int)r0.w | (int)r1.w;
  if (r0.w == 0) {
    r2.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r3.x, u6, r2.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r2.zw = (int2)r3.xx & int2(65535,65535);
    r0.w = cmp((uint)r2.w < oitMaxEntries);
    if (r0.w != 0) {
      r0.w = max(r8.y, r8.z);
      r0.w = max(r8.x, r0.w);
      r0.w = abs(r0.w);
      r0.w = (int)r0.w & 0x7f800000;
      r0.w = (int)r0.w + 0x00800000;
      r1.xyz = r1.xyz * r8.www + r0.www;
      if (8 == 0) r1.x = 0; else if (8+15 < 32) {       r1.x = (uint)r1.x << (32-(8 + 15)); r1.x = (uint)r1.x >> (32-8);      } else r1.x = (uint)r1.x >> 15;
      r1.yz = (uint2)r1.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r1.y = (((uint)r1.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r1.z = (((uint)r1.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r1.x = (int)r1.y + (int)r1.x;
      r1.x = (int)r1.z + (int)r1.x;
      r0.w = (uint)r0.w << 1;
      r1.xzw = (int3)r0.www + (int3)r1.xxx;
      r0.w = saturate(r8.w);
      r0.w = 2046 * r0.w;
      r0.w = (uint)r0.w;
      r3.x = (uint)v0.z << 2;
      r0.w = (int)r0.w & 2046;
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r1.y = (((uint)r0.w << 0) & bitmask.y) | ((uint)r3.x & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r2.xyzw, r1.xyzw
      r0.w = -1;
    } else {
      r0.w = 0;
    }
  } else {
    r0.w = -1;
  }
  r8.xyz = r0.xyz * r8.www;
  o0.xyzw = r0.wwww ? float4(0,0,0,0) : r8.xyzw;
  return;
}