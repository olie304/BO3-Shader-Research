// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:17 2021

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
  float2 rotateUVs : packoffset(c11.z);
  float2 scrollUVs : packoffset(c12);
  float2 scaleUVs : packoffset(c12.z);
  float2 offsetUVs : packoffset(c13);
  float2 zoomUVs : packoffset(c13.z);
  float zoomRate : packoffset(c14);
  float layerDepth : packoffset(c14.y);
  bool clampU : packoffset(c14.z);
  bool clampV : packoffset(c14.w);
  float2 flickerSeed : packoffset(c15);
  float flickerSpeed : packoffset(c15.z);
  float2 flickerRange : packoffset(c16);
  float flickerPower : packoffset(c16.z);
  bool useAsCamo : packoffset(c16.w);
  bool relativeHDR : packoffset(c17);
  bool invertFalloff : packoffset(c17.y);
  float3 emissiveTint1 : packoffset(c18);
  float hdrScale : packoffset(c18.w);
  float emissiveFalloffPower : packoffset(c19);
  float alphaCooling : packoffset(c19.y);
  float coolingFactor : packoffset(c19.z);
  float2 distortionRotateUVs : packoffset(c20);
  float2 distortionScrollUVs : packoffset(c20.z);
  float2 distortionScaleUVs : packoffset(c21);
  float2 distortionOffsetUVs : packoffset(c21.z);
  float2 distortionZoomUVs : packoffset(c22);
  float distortionZoomRate : packoffset(c22.z);
  float distortionAmount : packoffset(c22.w);
  float2 maskRotateUVs : packoffset(c23);
  float2 maskScrollUVs : packoffset(c23.z);
  float2 maskScaleUVs : packoffset(c24);
  float2 maskOffsetUVs : packoffset(c24.z);
  float2 maskZoomUVs : packoffset(c25);
  float maskZoomRate : packoffset(c25.z);
  float2 maskFalloff : packoffset(c26);
  float2 specularScroll : packoffset(c26.z);
  float2 specularScale : packoffset(c27);
  bool noReceiveShadow : packoffset(c27.z);
  float scriptReplacement : packoffset(c27.w);
  float alphaRevealSoftEdge : packoffset(c28);
  float alphaRevealRamp : packoffset(c28.y);
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
SamplerState revealSampler_s : register(s6);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
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
Texture2D<float4> camoMaskMap : register(t26);
Texture2D<float4> emissiveMap : register(t29);
Texture2D<float4> alphaMask : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2D<float4> distortionMap : register(t37);
Texture2D<float4> revealMap : register(t38);
Texture2D<float4> edgeFadeMap : register(t46);
Texture2D<float4> specularMask : register(t47);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation float3 v2 : UVOFFSETS0,
  nointerpolation uint w2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  uint v7 : SV_IsFrontFace0,
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
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
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

  if (useAsCamo != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.w, l(4), t4.xxxx
  r0.x = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(208), t0.xxyz
  r0.y = samp0[]..swiz;
  r0.z = samp0[]..swiz;
  r0.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyz, r0.x, l(224), t0.xyzx
  r1.x = samp0[]..swiz;
  r1.y = samp0[]..swiz;
  r1.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyz, r0.x, l(240), t0.xyzx
  r2.x = samp0[]..swiz;
  r2.y = samp0[]..swiz;
  r2.z = samp0[]..swiz;
    r3.xyz = camoMaskMap.Sample(colorSampler_s, w1.xy).xyz;
    r0.x = saturate(dot(r3.xyz, r0.yzw));
    r3.xy = w1.xy;
    r3.z = 1;
    r1.x = dot(r1.xyz, r3.xyz);
    r1.y = dot(r2.xyz, r3.xyz);
  } else {
    r1.xy = w1.xy;
    r0.x = 1;
  }
  r0.y = dot(-v6.xyz, -v6.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = -v6.xyz * r0.yyy;
  r3.x = dot(r2.xyz, v4.xyz);
  r3.y = dot(r2.xyz, v5.xyz);
  r0.z = dot(r2.xyz, v3.xyz);
  r0.w = cmp(0 < r0.z);
  r1.zw = -r3.xy / r0.zz;
  r1.zw = r0.ww ? r1.zw : 0;
  r3.xy = float2(-0.5,-0.5) + r1.xy;
  r3.zw = float2(9.99999975e-06,9.99999975e-06) * r1.zw;
  r4.xy = distortionScaleUVs.xy * r3.zw;
  r4.xy = r3.xy * distortionScaleUVs.xy + r4.xy;
  r4.xy = distortionOffsetUVs.xy * distortionScaleUVs.xy + r4.xy;
  r4.zw = gameTime.ww * distortionScrollUVs.xy;
  r0.w = distortionRotateUVs.y * gameTime.w + 1;
  r0.w = distortionRotateUVs.x * r0.w;
  r0.w = 0.0174532924 * r0.w;
  sincos(r0.w, r5.x, r6.x);
  r6.y = r6.x;
  r6.z = r5.x;
  r7.x = dot(r6.yz, r4.xy);
  r6.x = -r5.x;
  r7.y = dot(r6.xy, r4.xy);
  r4.xy = r4.zw * distortionScaleUVs.xy + r7.xy;
  r0.w = gameTime.w * distortionZoomRate;
  r0.w = cos(r0.w);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = 1 + -r0.w;
  r2.w = distortionZoomUVs.y + -distortionZoomUVs.x;
  r0.w = r0.w * r2.w + distortionZoomUVs.x;
  r4.xy = r4.xy / r0.ww;
  r4.xy = float2(0.5,0.5) + r4.xy;
  r4.xy = distortionMap.Sample(normalSampler_s, r4.xy).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r4.zw = renderTargetSize.zw * distortionAmount;
  r5.xy = float2(-0.5,-0.5) + w1.xy;
  r5.zw = scaleUVs.xy * r3.zw;
  r5.xy = r5.xy * scaleUVs.xy + r5.zw;
  r5.xy = offsetUVs.xy * scaleUVs.xy + r5.xy;
  r0.w = rotateUVs.y * gameTime.w + 1;
  r0.w = rotateUVs.x * r0.w;
  r0.w = 0.0174532924 * r0.w;
  sincos(r0.w, r6.x, r7.x);
  r7.y = r7.x;
  r7.z = r6.x;
  r8.x = dot(r7.yz, r5.xy);
  r7.x = -r6.x;
  r8.y = dot(r7.xy, r5.xy);
  r5.xy = gameTime.ww * scrollUVs.xy;
  r5.xy = r5.xy * scaleUVs.xy + r8.xy;
  r0.w = gameTime.w * zoomRate;
  r0.w = cos(r0.w);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = 1 + -r0.w;
  r2.w = zoomUVs.y + -zoomUVs.x;
  r0.w = r0.w * r2.w + zoomUVs.x;
  r5.xy = r5.xy / r0.ww;
  r5.xy = float2(0.5,0.5) + r5.xy;
  r5.zw = saturate(r5.xy);
  r5.xy = clampU ? r5.zw : r5.xy;
  r5.xy = r4.xy * r4.zw + r5.xy;
  r6.xyzw = colorMap.Sample(colorSampler_s, r5.xy).xyzw;
  r0.w = tintMask.Sample(colorSampler_s, r5.xy).x;
  r7.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r7.xyz = r0.www * r7.xyz + float3(1,1,1);
  r6.xyz = r7.xyz * r6.xyz;
  r0.w = v1.x * r6.w;
  r2.w = glossRange.y + -glossRange.x;
  r5.z = saturate(0.0588235296 * glossRange.y);
  r7.xyz = normalMap.Sample(normalSampler_s, r5.xy).xyz;
  r7.xyz = float3(-0.5,-0.5,-0) + r7.xyz;
  r7.xyz = baseNormalHeight * r7.xyz + float3(0.5,0.5,0);
  r7.xy = r7.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r5.w = dot(r7.xy, r7.xy);
  r5.w = 1 + -r5.w;
  r5.w = max(0, r5.w);
  r5.w = sqrt(r5.w);
  r7.z = r7.z * r7.z;
  r7.z = 0.333333343 * r7.z;
  r7.z = min(1, r7.z);
  r7.w = v7.x ? 1 : -1;
  r8.x = dot(v3.xyz, v3.xyz);
  r8.x = rsqrt(r8.x);
  r8.xyz = v3.xyz * r8.xxx;
  r8.xyz = r8.xyz * r7.www;
  r8.w = dot(v4.xyz, v4.xyz);
  r8.w = rsqrt(r8.w);
  r9.xyz = v4.xyz * r8.www;
  r9.xyz = r9.xyz * r7.www;
  r8.w = dot(v5.xyz, v5.xyz);
  r8.w = rsqrt(r8.w);
  r10.xyz = v5.xyz * r8.www;
  r10.xyz = r10.xyz * r7.www;
  r5.z = -17 * r5.z;
  r5.z = exp2(r5.z);
  r5.z = r7.z + r5.z;
  r5.z = log2(r5.z);
  r5.z = -0.0588235296 * r5.z;
  r5.z = max(0, r5.z);
  r10.xyz = r10.xyz * r7.yyy;
  r7.xyw = r9.xyz * r7.xxx + r10.xyz;
  r7.xyw = r8.xyz * r5.www + r7.xyw;
  r5.w = dot(r7.xyw, r7.xyw);
  r5.w = rsqrt(r5.w);
  r7.xyw = r7.xyw * r5.www;
  r2.w = debugGlossOverride.x * r2.w + glossRange.x;
  r2.w = saturate(0.0588235296 * r2.w);
  r2.w = -17 * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r7.z + r2.w;
  r2.w = log2(r2.w);
  r2.w = -0.0588235296 * r2.w;
  r2.w = max(0, r2.w);
  r5.w = cmp(0 < debugStreamerControl.w);
  if (r5.w != 0) {
    r5.w = (int)debugStreamerControl.w;
    r7.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, r5.xy);
    r8.x = colorMap.CalculateLevelOfDetail(colorSampler_s, r5.xy);
    r7.z = cmp(r7.z < r8.x);
    r8.x = cmp(0 < r8.x);
    r8.yzw = (int3)r5.www & int3(1,2,4);
    r9.xyz = r8.yyy ? float3(1,0,1) : r6.xyz;
    r10.xyz = r8.zzz ? float3(0,1,1) : r6.xyz;
    r8.xyz = r8.xxx ? r9.xyz : r10.xyz;
    r9.xyz = r8.www ? float3(0,1,0) : r6.xyz;
    r6.xyz = r7.zzz ? r8.xyz : r9.xyz;
  }
  r8.xyz = debugColorOverride.xyz + -r6.xyz;
  r6.xyz = debugColorOverride.www * r8.xyz + r6.xyz;
  r5.w = -r6.w * v1.x + debugAlphaOverride.x;
  r0.w = debugAlphaOverride.w * r5.w + r0.w;
  r8.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r8.xyz = debugSpecularOverride.www * r8.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r2.w = r2.w + -r5.z;
  r9.y = debugGlossOverride.w * r2.w + r5.z;
  r2.w = -1 + debugOcclusionOverride.x;
  r2.w = debugOcclusionOverride.w * r2.w + 1;
  r10.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r5.z = dot(r10.xyz, r10.xyz);
  r5.z = rsqrt(r5.z);
  r10.xyz = r10.xyz * r5.zzz + -r7.xyw;
  r7.xyz = debugNormalOverride.www * r10.xyz + r7.xyw;
  r5.zw = gameTime.ww * specularScroll.xy;
  r5.zw = r1.xy * specularScale.xy + r5.zw;
  r5.z = specularMask.Sample(revealSampler_s, r5.zw).x;
  r5.w = 9.99999975e-06 + layerDepth;
  r1.zw = r1.zw * r5.ww + r3.xy;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r9.zw = saturate(r1.zw);
  r1.zw = clampU ? r9.zw : r1.zw;
  r1.zw = r4.xy * r4.zw + r1.zw;
  r10.xyzw = emissiveMap.Sample(colorSampler_s, r1.zw).xyzw;
  r10.xyzw = emissiveTint1.xyzw * r10.xyzw;
  r11.xyz = saturate(r10.xyz);
  r11.xyz = log2(r11.xyz);
  r11.xyz = alphaCooling * r11.xyz;
  r11.xyz = exp2(r11.xyz);
  r0.z = saturate(r0.z);
  r1.z = log2(r0.z);
  r1.w = emissiveFalloffPower * r1.z;
  r1.w = exp2(r1.w);
  r0.z = 1 + -r0.z;
  r0.z = log2(r0.z);
  r0.z = emissiveFalloffPower * r0.z;
  r0.z = exp2(r0.z);
  r0.z = relativeHDR ? r0.z : r1.w;
  r1.w = cmp(emissiveFalloffPower == 0.000000);
  r0.z = r1.w ? 1 : r0.z;
  r0.z = r10.w * r0.z;
  r10.xyz = r10.xyz * r0.zzz;
  r11.xyz = r11.xyz * r0.zzz;
  r0.z = v2.x + v2.y;
  r0.z = v2.z + r0.z;
  r0.z = flickerSeed.y + r0.z;
  r0.z = frac(r0.z);
  r12.y = gameTime.w * flickerSpeed + r0.z;
  r12.x = flickerSeed.x;
  r0.z = flickerLookupMap.SampleLevel(lookupSampler_s, r12.xy, 0).x;
  r0.z = log2(abs(r0.z));
  r0.z = flickerPower * r0.z;
  r0.z = exp2(r0.z);
  r1.w = flickerRange.y + -flickerRange.x;
  r0.z = r0.z * r1.w + flickerRange.x;
  r12.xyz = r10.xyz * r0.zzz;
  r12.xyz = r12.xyz / hdrScale;
  r1.w = saturate(dot(r12.xyz, float3(0.298999995,0.587000012,0.114)));
  r0.w = r1.w + r0.w;
  r3.zw = maskScaleUVs.xy * r3.zw;
  r3.xy = r3.xy * maskScaleUVs.xy + r3.zw;
  r3.xy = maskOffsetUVs.xy * maskScaleUVs.xy + r3.xy;
  r3.zw = gameTime.ww * maskScrollUVs.xy;
  r1.w = maskRotateUVs.y * gameTime.w + 1;
  r1.w = maskRotateUVs.x * r1.w;
  r1.w = 0.0174532924 * r1.w;
  sincos(r1.w, r12.x, r13.x);
  r13.y = r13.x;
  r13.z = r12.x;
  r14.x = dot(r13.yz, r3.xy);
  r13.x = -r12.x;
  r14.y = dot(r13.xy, r3.xy);
  r3.xy = r3.zw * maskScaleUVs.xy + r14.xy;
  r1.w = gameTime.w * maskZoomRate;
  r1.w = cos(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = 1 + -r1.w;
  r3.z = maskZoomUVs.y + -maskZoomUVs.x;
  r1.w = r1.w * r3.z + maskZoomUVs.x;
  r3.xy = r3.xy / r1.ww;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r3.zw = saturate(r3.xy);
  r3.xy = clampU ? r3.zw : r3.xy;
  r3.xy = r4.xy * r4.zw + r3.xy;
  r1.w = alphaMask.Sample(colorSampler_s, r3.xy).x;
  r1.z = maskFalloff.x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = saturate(maskFalloff.y * r1.z);
  r1.x = edgeFadeMap.Sample(colorSampler_s, r1.xy).x;
  r1.y = r1.z + r1.w;
  r1.x = r1.y + -r1.x;
  r1.x = saturate(1 + r1.x);
  r0.w = r1.x * r0.w;
  r1.x = revealMap.Sample(revealSampler_s, r5.xy).x;
  r1.y = saturate(v1.x * 0.998000026 + 0.00100000005);
  r1.z = 1 + -r1.y;
  r1.w = saturate(alphaRevealRamp);
  r1.y = log2(r1.y);
  r1.y = r1.w * r1.y;
  r1.y = exp2(r1.y);
  r3.x = -r1.y;
  r1.y = log2(r1.z);
  r1.y = r1.w * r1.y;
  r3.y = exp2(r1.y);
  r1.yz = saturate(alphaRevealSoftEdge * r3.xy + r1.zz);
  r1.x = r1.x + -r1.y;
  r1.y = r1.z + -r1.y;
  r1.x = saturate(r1.x / r1.y);
  r0.w = r1.x * r0.w;
  r1.xy = (uint2)v0.xy;
  r1.z = cmp(v0.z >= 0.984375);
  r1.w = 1.01587307 * v0.z;
  r3.x = v0.z * 64 + -63;
  r1.z = r1.z ? r3.x : r1.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.z = rcp(r1.z);
  r1.w = cmp(isDepthHack != 0);
  r3.xy = (uint2)r1.yx;
  r3.z = dot(r3.yx, float2(0.0671105608,0.00583714992));
  r3.z = frac(r3.z);
  r3.z = 52.9829178 * r3.z;
  r3.z = frac(r3.z);
  r3.z = r3.z * 6.28318548 + gameTick.w;
  sincos(r3.z, r4.x, r12.x);
  r3.x = dot(r3.xy, float2(0.0671105608,0.00583714992));
  r3.x = frac(r3.x);
  r3.x = 52.9829178 * r3.x;
  r3.x = frac(r3.x);
  r3.x = r3.x * 6.28318548 + gameTick.w;
  sincos(r3.x, r3.x, r5.x);
  r9.x = saturate(dot(r7.xyz, r2.xyz));
  r3.y = dot(-r2.xyz, r7.xyz);
  r3.y = r3.y + r3.y;
  r13.xyz = r7.xyz * -r3.yyy + -r2.xyz;
  r3.y = 17 * r9.y;
  r3.y = exp2(r3.y);
  r3.y = 2 + r3.y;
  r3.y = 2 / r3.y;
  r3.z = sqrt(r3.y);
  r3.w = 1 + -r9.y;
  r4.z = 5 * r3.w;
  r4.w = r3.w * 5 + -2.5;
  r4.w = saturate(0.400000006 * r4.w);
  r4.w = 100 * r4.w;
  r5.yw = -r3.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r5.y = exp2(r5.y);
  r5.y = r9.x * r5.y;
  r6.w = r4.z * r3.w;
  r5.w = -r6.w * 2.0159049 + r5.w;
  r5.w = exp2(r5.w);
  r5.w = r9.x * r5.w;
  r5.yw = float2(9.1368103,9.70808983) * r5.yw;
  r5.y = max(r5.y, r5.w);
  r5.y = max(1.26815999, r5.y);
  r1.z = 0.0078125 * r1.z;
  r1.z = min(15, r1.z);
  r1.z = (uint)r1.z;
  r14.xy = (uint2)r1.xy >> int2(6,6);
  r14.z = (uint)r1.z << 4;
  r1.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.x = 1;
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r5.w = 0;
  r6.w = 0;
  while (true) {
    r8.w = cmp((uint)r6.w >= numRefProbes);
    if (r8.w != 0) break;
    r1.z = (uint)r6.w >> 5;
    r15.xyz = (int3)r1.xyz + (int3)r14.xyz;
    r1.z = visibleProbes.Load(r15.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r6.w, l(0), t15.wxyz
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r6.w, l(16), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r6.w, l(32), t15.yxwz
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r6.w, l(48), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r6.w, l(64), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r6.w, l(80), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.zw, r6.w, l(96), t15.xxxy
  r9.z = samp0[]..swiz;
  r9.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r6.w, l(116), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r6.w, l(132), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r6.w, l(148), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r6.w, l(164), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r6.w, l(180), t15.zwxy
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r6.w, l(196), t15.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xy, r6.w, l(212), t15.xyxx
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
    r15.xyz = v6.xyz + -r23.yzw;
    r8.w = dot(r15.xyz, r15.xyz);
    r8.w = sqrt(r8.w);
    r8.w = cmp(probeDebugRadius >= r8.w);
    r10.w = (int)r29.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(0), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(16), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(32), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(48), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(64), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(80), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
    r11.w = dot(r36.xyz, r15.xyz);
    r11.w = saturate(r11.w + r36.w);
    r12.w = dot(r37.xyz, r15.xyz);
    r12.w = saturate(r12.w + r37.w);
    r11.w = r12.w * r11.w;
    r12.w = dot(r38.xyz, r15.xyz);
    r12.w = saturate(r12.w + r38.w);
    r11.w = r12.w * r11.w;
    r12.w = dot(r39.xyz, r15.xyz);
    r12.w = saturate(r12.w + r39.w);
    r11.w = r12.w * r11.w;
    r12.w = dot(r40.xyz, r15.xyz);
    r12.w = saturate(r12.w + r40.w);
    r11.w = r12.w * r11.w;
    r12.w = dot(r41.xyz, r15.xyz);
    r12.w = saturate(r12.w + r41.w);
    r16.x = r12.w * r11.w;
    r11.w = (int)r9.z & 1;
    r16.xw = r11.ww ? r16.xy : r16.zx;
    r36.xy = r29.zw;
    r36.z = r30.z;
    r11.w = dot(r13.xyz, r36.xyz);
    r12.w = dot(r15.xyz, r36.xyz);
    r12.w = r12.w + -r30.w;
    r14.w = cmp(r12.w >= 0);
    r12.w = max(abs(r12.w), r4.w);
    r12.w = r14.w ? r12.w : -r12.w;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r12.w / r11.w;
    r11.w = min(131072, abs(r11.w));
    r30.z = r31.z;
    r12.w = dot(r13.xyz, r30.xyz);
    r14.w = dot(r15.xyz, r30.xyz);
    r14.w = r14.w + -r31.w;
    r17.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r17.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r31.z = r32.z;
    r12.w = dot(r13.xyz, r31.xyz);
    r14.w = dot(r15.xyz, r31.xyz);
    r14.w = r14.w + -r32.w;
    r17.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r17.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r32.z = r33.z;
    r12.w = dot(r13.xyz, r32.xyz);
    r14.w = dot(r15.xyz, r32.xyz);
    r14.w = r14.w + -r33.w;
    r17.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r17.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r33.z = r34.x;
    r12.w = dot(r13.xyz, r33.xyz);
    r14.w = dot(r15.xyz, r33.xyz);
    r14.w = r14.w + -r34.y;
    r17.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r17.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r35.zw = r34.zw;
    r12.w = dot(r13.zxy, r35.xzw);
    r14.w = dot(r15.zxy, r35.xzw);
    r14.w = r14.w + -r35.y;
    r17.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r17.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r30.x = r26.w;
    r30.yz = r27.zw;
    r30.xyz = r30.xyz + r15.xyz;
    r30.xyz = r13.xyz * r11.www + r30.xyz;
    r12.w = dot(r30.xyz, r30.xyz);
    r12.w = sqrt(r12.w);
    r11.w = r11.w / r12.w;
    r11.w = r11.w + r11.w;
    r11.w = sqrt(r11.w);
    r11.w = r3.w * 5 + r11.w;
    r11.w = -0.844799995 + r11.w;
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
    r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r11.w).xyz;
    r29.yzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
    r29.yzw = cmp((int3)r29.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r29.z | (int)r29.y;
    r11.w = (int)r29.w | (int)r11.w;
    r24.xyz = r11.www ? float3(1,1,0) : r24.xyz;
    r30.x = dot(r15.xyz, r23.xyz);
    r30.y = dot(r15.xyz, r32.xyz);
    r30.z = dot(r15.xyz, r25.xyz);
    r26.xyz = saturate(r30.xyz * r26.xyz + float3(0.5,0.5,0.5));
    r27.z = r28.x;
    r26.xyz = r26.xyz * r27.xyz + r28.yzw;
    r31.x = dot(r7.xyz, r23.xyz);
    r31.y = dot(r7.xyz, r32.xyz);
    r31.z = dot(r7.xyz, r25.xyz);
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
    r11.w = (int)r29.z | (int)r29.y;
    r11.w = (int)r29.w | (int)r11.w;
    r28.xyz = r11.www ? float3(1,1,0) : r28.xyz;
    r30.xyzw = r21.xyzw;
    r29.yzw = r22.yzw;
    r11.w = r5.w;
    r12.w = r1.z;
    while (true) {
      if (r12.w == 0) break;
      r14.w = firstbitlow((uint)r12.w);
      r14.w = 1 << (int)r14.w;
      r17.z = (int)r12.w & (int)r14.w;
      if (r17.z != 0) {
        r14.w = ~(int)r14.w;
        r12.w = (int)r12.w & (int)r14.w;
        if (r8.w != 0) {
          r14.w = r9.z;
          r31.xy = r16.xw;
          r17.z = 1;
          while (true) {
            r17.w = cmp((int)r17.z >= (int)r20.z);
            if (r17.w != 0) break;
            r17.w = (int)r10.w + (int)r17.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(0), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(16), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(32), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(48), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(64), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(80), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
            r17.w = dot(r32.xyz, r15.xyz);
            r17.w = saturate(r17.w + r32.w);
            r17.w = r31.x * r17.w;
            r18.z = dot(r33.xyz, r15.xyz);
            r18.z = saturate(r18.z + r33.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r34.xyz, r15.xyz);
            r18.z = saturate(r18.z + r34.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r35.xyz, r15.xyz);
            r18.z = saturate(r18.z + r35.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r36.xyz, r15.xyz);
            r18.z = saturate(r18.z + r36.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r37.xyz, r15.xyz);
            r18.z = saturate(r18.z + r37.w);
            r31.x = r18.z * r17.w;
            r18.w = (uint)r14.w >> 2;
            if (1 == 0) r19.z = 0; else if (1+2 < 32) {             r19.z = (uint)r14.w << (32-(1 + 2)); r19.z = (uint)r19.z >> (32-1);            } else r19.z = (uint)r14.w >> 2;
            r19.w = (int)r18.w & 2;
            r20.w = max(r31.y, r31.x);
            r17.w = -r17.w * r18.z + 1;
            r17.w = r31.y * r17.w;
            r20.y = r19.w ? r17.w : r20.w;
            r31.xy = r19.zz ? r31.xy : r20.xy;
            r17.z = (int)r17.z + 1;
            r14.w = r18.w;
          }
          r31.y = saturate(r31.y);
          r14.w = r31.y * r9.w;
          r17.z = cmp(0 < r14.w);
          if (r17.z != 0) {
            r32.z = r31.y * r9.w + r29.w;
            r14.w = r14.w * r29.x;
            r31.xzw = r27.xyz * r14.www;
            r33.xyz = r31.zzz * r23.xyw;
            r33.xyz = r25.xyz * r31.xxx + r33.xyz;
            r31.xzw = r26.xyz * r31.www + r33.xyz;
            r33.xyz = r31.xzw * r28.xyz;
            r17.z = dot(r33.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r33.xyz = r31.xzw * r28.xyz + r30.xyz;
            r17.w = r17.z * r5.y;
            r31.xzw = r24.xyz * r14.www;
            r14.w = dot(r31.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r14.w = r5.y * r17.z + r14.w;
            r14.w = r17.w / r14.w;
            r34.x = r30.w;
            r34.yz = r29.yz;
            r32.xyw = r31.zwx * r14.www + r34.yzx;
            r33.w = r32.w;
          } else {
            r33.xyzw = r30.xyzw;
            r32.xyz = r29.yzw;
          }
          r11.w = -1;
          r30.xyzw = r33.xyzw;
          r29.yzw = r32.xyz;
          break;
        }
      }
    }
    if (r11.w != 0) {
      r21.xyzw = r30.xyzw;
      r22.yzw = r29.yzw;
      r5.w = -1;
      break;
    }
    r6.w = (int)r6.w + 32;
    r21.xyzw = r30.xyzw;
    r22.yzw = r29.yzw;
    r5.w = r11.w;
  }
  if (r5.w == 0) {
    r1.x = numRefProbes + -numOverrideProbes;
    r1.y = (int)r1.x & -32;
    r1.z = (int)-r1.y + (int)r1.x;
    r5.w = numRefProbes & -32;
    r6.w = (int)-r5.w + numRefProbes;
    r15.xy = float2(0,0);
    r16.w = 0;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.x = 1;
    r20.xy = float2(0,0);
    r23.xy = float2(0,0);
    r24.xyzw = r21.xyzw;
    r25.yzw = r22.yzw;
    r8.w = r1.y;
    while (true) {
      r9.z = cmp((uint)r8.w >= numRefProbes);
      if (r9.z != 0) break;
      r15.z = (uint)r8.w >> 5;
      r16.xyz = (int3)r14.xyz + (int3)r15.xyz;
      r9.z = visibleProbes.Load(r16.xyzw).x;
      r9.w = cmp((int)r1.y == (int)r8.w);
      bitmask.w = ((~(-1 << r1.z)) << 0) & 0xffffffff;  r10.w = (((uint)0 << 0) & bitmask.w) | ((uint)r9.z & ~bitmask.w);
      r9.z = r9.w ? r10.w : r9.z;
      r9.w = cmp((int)r5.w == (int)r8.w);
      if (r6.w == 0) r10.w = 0; else if (r6.w+0 < 32) {       r10.w = (uint)r9.z << (32-(r6.w + 0)); r10.w = (uint)r10.w >> (32-r6.w);      } else r10.w = (uint)r9.z >> 0;
      r9.z = r9.w ? r10.w : r9.z;
      r9.w = (int)r8.w + numLights;
      r26.xyzw = r24.xyzw;
      r27.xyz = r25.yzw;
      r10.w = r9.z;
      while (true) {
        if (r10.w == 0) break;
        r11.w = firstbitlow((uint)r10.w);
        r12.w = 1 << (int)r11.w;
        r14.w = (int)r10.w & (int)r12.w;
        if (r14.w != 0) {
          r10.w = (int)r10.w ^ (int)r12.w;
          r12.w = (int)r9.w + (int)r11.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(0), t11.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xy, r12.w, l(16), t11.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r28.xyz = -v6.xyz + r28.xyz;
          r16.z = r28.w;
          r16.xyz = cmp(abs(r28.xyz) < r16.zxy);
          r12.w = r16.y ? r16.x : 0;
          r12.w = r16.z ? r12.w : 0;
          if (r12.w != 0) {
            r11.w = (int)r8.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r11.w, l(0), t15.wxyz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r11.w, l(96), t15.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(116), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
            r16.xyz = v6.xyz + -r28.yzw;
            r12.w = (int)r29.w & 0x0000ffff;
            if (6 == 0) r14.w = 0; else if (6+25 < 32) {             r14.w = (uint)r29.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);            } else r14.w = (uint)r29.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(0), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r17.w = dot(r30.xyz, r16.xyz);
            r17.w = saturate(r17.w + r30.w);
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
            r17.w = r18.w * r17.w;
            r18.w = dot(r35.xyz, r16.xyz);
            r18.w = saturate(r18.w + r35.w);
            r17.x = r18.w * r17.w;
            r17.w = (int)r15.z & 1;
            r17.xw = r17.ww ? r17.xy : r17.zx;
            r18.w = r15.z;
            r30.xy = r17.xw;
            r19.z = 1;
            while (true) {
              r19.w = cmp((int)r19.z >= (int)r14.w);
              if (r19.w != 0) break;
              r19.w = (int)r12.w + (int)r19.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r19.w = dot(r31.xyz, r16.xyz);
              r19.w = saturate(r19.w + r31.w);
              r19.w = r30.x * r19.w;
              r20.w = dot(r32.xyz, r16.xyz);
              r20.w = saturate(r20.w + r32.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r33.xyz, r16.xyz);
              r20.w = saturate(r20.w + r33.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r34.xyz, r16.xyz);
              r20.w = saturate(r20.w + r34.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r35.xyz, r16.xyz);
              r20.w = saturate(r20.w + r35.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r36.xyz, r16.xyz);
              r20.w = saturate(r20.w + r36.w);
              r30.x = r20.w * r19.w;
              r23.w = (uint)r18.w >> 2;
              if (1 == 0) r28.w = 0; else if (1+2 < 32) {               r28.w = (uint)r18.w << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);              } else r28.w = (uint)r18.w >> 2;
              r30.z = (int)r23.w & 2;
              r30.w = max(r30.y, r30.x);
              r19.w = -r19.w * r20.w + 1;
              r19.w = r30.y * r19.w;
              r19.y = r30.z ? r19.w : r30.w;
              r30.xy = r28.ww ? r30.xy : r19.xy;
              r19.z = (int)r19.z + 1;
              r18.w = r23.w;
            }
            r30.y = saturate(r30.y);
            r12.w = r30.y * r15.w;
            r14.w = cmp(0 < r12.w);
            if (r14.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(16), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(32), t15.yxwz
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(48), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(64), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(80), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(132), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(148), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(164), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(180), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(196), t15.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r11.w, l(212), t15.xyxx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
              r27.z = r30.y * r15.w + r27.z;
              r11.w = r12.w * r29.z;
              r29.z = r36.z;
              r12.w = dot(r13.xyz, r29.xyz);
              r14.w = dot(r16.xyz, r29.xyz);
              r14.w = r14.w + -r36.w;
              r15.z = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r4.w);
              r14.w = r15.z ? r14.w : -r14.w;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r14.w / r12.w;
              r12.w = min(131072, abs(r12.w));
              r36.z = r37.z;
              r14.w = dot(r13.xyz, r36.xyz);
              r15.z = dot(r16.xyz, r36.xyz);
              r15.z = r15.z + -r37.w;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r4.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.z / r14.w;
              r12.w = min(abs(r14.w), r12.w);
              r37.z = r38.z;
              r14.w = dot(r13.xyz, r37.xyz);
              r15.z = dot(r16.xyz, r37.xyz);
              r15.z = r15.z + -r38.w;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r4.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.z / r14.w;
              r12.w = min(abs(r14.w), r12.w);
              r38.z = r39.z;
              r14.w = dot(r13.xyz, r38.xyz);
              r15.z = dot(r16.xyz, r38.xyz);
              r15.z = r15.z + -r39.w;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r4.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.z / r14.w;
              r12.w = min(abs(r14.w), r12.w);
              r39.z = r40.x;
              r14.w = dot(r13.xyz, r39.xyz);
              r15.z = dot(r16.xyz, r39.xyz);
              r15.z = r15.z + -r40.y;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r4.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.z / r14.w;
              r12.w = min(abs(r14.w), r12.w);
              r41.zw = r40.zw;
              r14.w = dot(r13.zxy, r41.xzw);
              r15.z = dot(r16.zxy, r41.xzw);
              r15.z = r15.z + -r41.y;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r4.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.z / r14.w;
              r12.w = min(abs(r14.w), r12.w);
              r29.x = r33.w;
              r29.yz = r34.zw;
              r19.yzw = r29.xyz + r16.xyz;
              r19.yzw = r13.xyz * r12.www + r19.yzw;
              r14.w = dot(r19.yzw, r19.yzw);
              r14.w = sqrt(r14.w);
              r12.w = r12.w / r14.w;
              r12.w = r12.w + r12.w;
              r12.w = sqrt(r12.w);
              r12.w = r3.w * 5 + r12.w;
              r12.w = -0.844799995 + r12.w;
              r28.y = r31.z;
              r28.z = r32.x;
              r36.x = dot(r19.yzw, r28.xyz);
              r29.xy = r31.xw;
              r29.z = r32.w;
              r36.y = dot(r19.yzw, r29.xyz);
              r32.x = r31.y;
              r36.z = dot(r19.yzw, r32.xyz);
              if (9 == 0) r14.w = 0; else if (9+16 < 32) {               r14.w = (uint)r29.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);              } else r14.w = (uint)r29.w >> 16;
              r36.w = (uint)r14.w;
              r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r12.w).xyz;
              r30.xzw = (int3)r19.yzw & int3(-2147483648,-2147483648,-2147483648);
              r30.xzw = cmp((int3)r30.xzw == int3(2139095040,2139095040,2139095040));
              r12.w = (int)r30.z | (int)r30.x;
              r12.w = (int)r30.w | (int)r12.w;
              r19.yzw = r12.www ? float3(1,1,0) : r19.yzw;
              r31.x = dot(r16.xyz, r28.xyz);
              r31.y = dot(r16.xyz, r29.xyz);
              r31.z = dot(r16.xyz, r32.xyz);
              r16.xyz = saturate(r31.xyz * r33.xyz + float3(0.5,0.5,0.5));
              r34.z = r35.x;
              r16.xyz = r16.xyz * r34.xyz + r35.yzw;
              r36.x = dot(r7.xyz, r28.xyz);
              r36.y = dot(r7.xyz, r29.xyz);
              r36.z = dot(r7.xyz, r32.xyz);
              r28.xyz = cmp(float3(0,0,0) < r36.xyz);
              r18.z = r28.x ? 0 : 0.5;
              r29.xyz = r18.xyz + r16.xyz;
              r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
              r30.xzw = r36.xyz * r36.xyz;
              r30.xzw = r30.xzw * r11.www;
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
              r12.w = (int)r29.y | (int)r29.x;
              r12.w = (int)r29.z | (int)r12.w;
              r28.xyz = r12.www ? float3(1,1,0) : r28.xyz;
              r29.xyz = r28.xyz * r16.xyz;
              r12.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r26.xyz = r16.xyz * r28.xyz + r26.xyz;
              r14.w = r12.w * r5.y;
              r16.xyz = r19.yzw * r11.www;
              r11.w = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r11.w = r5.y * r12.w + r11.w;
              r11.w = r14.w / r11.w;
              r28.x = r26.w;
              r28.yz = r27.xy;
              r27.xyw = r16.yzx * r11.www + r28.yzx;
              r26.w = r27.w;
            }
          }
        }
      }
      r24.xyzw = r26.xyzw;
      r25.yzw = r27.xyz;
      r8.w = (int)r8.w + 32;
    }
    r5.w = cmp(r25.w < 1);
    if (r5.w != 0) {
      r15.xy = float2(0,0);
      r16.w = 0;
      r17.yz = float2(0,1);
      r18.xy = float2(0,0);
      r19.x = 1;
      r20.xy = float2(0,0);
      r23.xy = float2(0,0);
      r26.x = r24.w;
      r26.yzw = r25.yzw;
      r27.xyz = r24.xyz;
      r5.w = r25.w;
      r6.w = 0;
      while (true) {
        r8.w = cmp((uint)r6.w >= (uint)r1.x);
        if (r8.w != 0) break;
        r15.z = (uint)r6.w >> 5;
        r16.xyz = (int3)r14.xyz + (int3)r15.xyz;
        r8.w = visibleProbes.Load(r16.xyzw).x;
        r9.z = cmp((int)r1.y == (int)r6.w);
        if (r1.z == 0) r9.w = 0; else if (r1.z+0 < 32) {         r9.w = (uint)r8.w << (32-(r1.z + 0)); r9.w = (uint)r9.w >> (32-r1.z);        } else r9.w = (uint)r8.w >> 0;
        r8.w = r9.z ? r9.w : r8.w;
        r9.z = (int)r6.w + numLights;
        r28.xyzw = r26.xyzw;
        r16.xyz = r27.xyz;
        r9.w = r5.w;
        r10.w = r8.w;
        while (true) {
          if (r10.w == 0) break;
          r11.w = firstbitlow((uint)r10.w);
          r12.w = 1 << (int)r11.w;
          r14.w = (int)r10.w & (int)r12.w;
          if (r14.w != 0) {
            r10.w = (int)r10.w ^ (int)r12.w;
            r12.w = (int)r9.z + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(0), t11.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r30.xy, r12.w, l(16), t11.xyxx
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
            r29.xyz = -v6.xyz + r29.xyz;
            r30.z = r29.w;
            r29.xyz = cmp(abs(r29.xyz) < r30.zxy);
            r12.w = r29.y ? r29.x : 0;
            r12.w = r29.z ? r12.w : 0;
            if (r12.w != 0) {
              r11.w = (int)r6.w + (int)r11.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(0), t15.wxyz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r11.w, l(96), t15.xxxy
            r15.z = samp0[]..swiz;
            r15.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r11.w, l(116), t15.zwxy
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
              r31.xyz = v6.xyz + -r29.yzw;
              r12.w = (int)r30.w & 0x0000ffff;
              if (6 == 0) r14.w = 0; else if (6+25 < 32) {               r14.w = (uint)r30.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);              } else r14.w = (uint)r30.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(0), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(16), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(32), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(48), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(64), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(80), t16.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
              r17.w = dot(r32.xyz, r31.xyz);
              r17.w = saturate(r17.w + r32.w);
              r18.w = dot(r33.xyz, r31.xyz);
              r18.w = saturate(r18.w + r33.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r34.xyz, r31.xyz);
              r18.w = saturate(r18.w + r34.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r35.xyz, r31.xyz);
              r18.w = saturate(r18.w + r35.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r36.xyz, r31.xyz);
              r18.w = saturate(r18.w + r36.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r37.xyz, r31.xyz);
              r18.w = saturate(r18.w + r37.w);
              r17.x = r18.w * r17.w;
              r17.w = (int)r15.z & 1;
              r17.xw = r17.ww ? r17.xy : r17.zx;
              r18.w = r15.z;
              r32.xy = r17.xw;
              r19.z = 1;
              while (true) {
                r19.w = cmp((int)r19.z >= (int)r14.w);
                if (r19.w != 0) break;
                r19.w = (int)r12.w + (int)r19.z;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(0), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(16), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(32), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(48), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r19.w, l(64), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r19.w, l(80), t16.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
                r19.w = dot(r33.xyz, r31.xyz);
                r19.w = saturate(r19.w + r33.w);
                r19.w = r32.x * r19.w;
                r20.w = dot(r34.xyz, r31.xyz);
                r20.w = saturate(r20.w + r34.w);
                r19.w = r20.w * r19.w;
                r20.w = dot(r35.xyz, r31.xyz);
                r20.w = saturate(r20.w + r35.w);
                r19.w = r20.w * r19.w;
                r20.w = dot(r36.xyz, r31.xyz);
                r20.w = saturate(r20.w + r36.w);
                r19.w = r20.w * r19.w;
                r20.w = dot(r37.xyz, r31.xyz);
                r20.w = saturate(r20.w + r37.w);
                r19.w = r20.w * r19.w;
                r20.w = dot(r38.xyz, r31.xyz);
                r20.w = saturate(r20.w + r38.w);
                r32.x = r20.w * r19.w;
                r22.w = (uint)r18.w >> 2;
                if (1 == 0) r23.w = 0; else if (1+2 < 32) {                 r23.w = (uint)r18.w << (32-(1 + 2)); r23.w = (uint)r23.w >> (32-1);                } else r23.w = (uint)r18.w >> 2;
                r27.w = (int)r22.w & 2;
                r29.w = max(r32.y, r32.x);
                r19.w = -r19.w * r20.w + 1;
                r19.w = r32.y * r19.w;
                r19.y = r27.w ? r19.w : r29.w;
                r32.xy = r23.ww ? r32.xy : r19.xy;
                r19.z = (int)r19.z + 1;
                r18.w = r22.w;
              }
              r12.w = saturate(r32.y + -r9.w);
              r14.w = r12.w * r15.w;
              r15.z = cmp(0 < r14.w);
              if (r15.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(16), t15.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(32), t15.yxwz
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(48), t15.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(64), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(80), t15.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(132), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(148), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(164), t15.zwxy
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(180), t15.zwxy
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(196), t15.xyzw
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r43.xy, r11.w, l(212), t15.xyxx
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
                r28.w = r12.w * r15.w + r28.w;
                r11.w = r14.w * r30.z;
                r30.z = r38.z;
                r12.w = dot(r13.xyz, r30.xyz);
                r14.w = dot(r31.xyz, r30.xyz);
                r14.w = r14.w + -r38.w;
                r15.z = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r4.w);
                r14.w = r15.z ? r14.w : -r14.w;
                r12.w = max(1.00000001e-07, -r12.w);
                r12.w = r14.w / r12.w;
                r12.w = min(131072, abs(r12.w));
                r38.z = r39.z;
                r14.w = dot(r13.xyz, r38.xyz);
                r15.z = dot(r31.xyz, r38.xyz);
                r15.z = r15.z + -r39.w;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r4.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.z / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r39.z = r40.z;
                r14.w = dot(r13.xyz, r39.xyz);
                r15.z = dot(r31.xyz, r39.xyz);
                r15.z = r15.z + -r40.w;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r4.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.z / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r40.z = r41.z;
                r14.w = dot(r13.xyz, r40.xyz);
                r15.z = dot(r31.xyz, r40.xyz);
                r15.z = r15.z + -r41.w;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r4.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.z / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r41.z = r42.x;
                r14.w = dot(r13.xyz, r41.xyz);
                r15.z = dot(r31.xyz, r41.xyz);
                r15.z = r15.z + -r42.y;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r4.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.z / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r43.zw = r42.zw;
                r14.w = dot(r13.zxy, r43.xzw);
                r15.z = dot(r31.zxy, r43.xzw);
                r15.z = r15.z + -r43.y;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r4.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.z / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r30.x = r35.w;
                r30.yz = r36.zw;
                r19.yzw = r30.xyz + r31.xyz;
                r19.yzw = r13.xyz * r12.www + r19.yzw;
                r14.w = dot(r19.yzw, r19.yzw);
                r14.w = sqrt(r14.w);
                r12.w = r12.w / r14.w;
                r12.w = r12.w + r12.w;
                r12.w = sqrt(r12.w);
                r12.w = r3.w * 5 + r12.w;
                r12.w = -0.844799995 + r12.w;
                r29.y = r33.z;
                r29.z = r34.x;
                r38.x = dot(r19.yzw, r29.xyz);
                r30.xy = r33.xw;
                r30.z = r34.w;
                r38.y = dot(r19.yzw, r30.xyz);
                r34.x = r33.y;
                r38.z = dot(r19.yzw, r34.xyz);
                if (9 == 0) r14.w = 0; else if (9+16 < 32) {                 r14.w = (uint)r30.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);                } else r14.w = (uint)r30.w >> 16;
                r38.w = (uint)r14.w;
                r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r38.xyzw, r12.w).xyz;
                r32.xzw = (int3)r19.yzw & int3(-2147483648,-2147483648,-2147483648);
                r32.xzw = cmp((int3)r32.xzw == int3(2139095040,2139095040,2139095040));
                r12.w = (int)r32.z | (int)r32.x;
                r12.w = (int)r32.w | (int)r12.w;
                r19.yzw = r12.www ? float3(1,1,0) : r19.yzw;
                r33.x = dot(r31.xyz, r29.xyz);
                r33.y = dot(r31.xyz, r30.xyz);
                r33.z = dot(r31.xyz, r34.xyz);
                r31.xyz = saturate(r33.xyz * r35.xyz + float3(0.5,0.5,0.5));
                r36.z = r37.x;
                r31.xyz = r31.xyz * r36.xyz + r37.yzw;
                r38.x = dot(r7.xyz, r29.xyz);
                r38.y = dot(r7.xyz, r30.xyz);
                r38.z = dot(r7.xyz, r34.xyz);
                r29.xyz = cmp(float3(0,0,0) < r38.xyz);
                r18.z = r29.x ? 0 : 0.5;
                r30.xyz = r31.xyz + r18.xyz;
                r30.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
                r32.xzw = r38.xyz * r38.xyz;
                r32.xzw = r32.xzw * r11.www;
                r20.z = r29.y ? 0 : 0.5;
                r29.xyw = r31.xyz + r20.xyz;
                r29.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyw, 0).xyz;
                r29.xyw = r29.xyw * r32.zzz;
                r29.xyw = r30.xyz * r32.xxx + r29.xyw;
                r23.z = r29.z ? 0 : 0.5;
                r30.xyz = r31.xyz + r23.xyz;
                r30.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
                r29.xyz = r30.xyz * r32.www + r29.xyw;
                r30.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r38.xyzw, 6).xyz;
                r31.xyz = (int3)r30.xyz & int3(-2147483648,-2147483648,-2147483648);
                r31.xyz = cmp((int3)r31.xyz == int3(2139095040,2139095040,2139095040));
                r12.w = (int)r31.y | (int)r31.x;
                r12.w = (int)r31.z | (int)r12.w;
                r30.xyz = r12.www ? float3(1,1,0) : r30.xyz;
                r31.xyz = r30.xyz * r29.xyz;
                r12.w = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r16.xyz = r29.xyz * r30.xyz + r16.xyz;
                r14.w = r12.w * r5.y;
                r19.yzw = r19.yzw * r11.www;
                r11.w = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r11.w = r5.y * r12.w + r11.w;
                r11.w = r14.w / r11.w;
                r28.xyz = r19.yzw * r11.www + r28.xyz;
              }
            }
          }
        }
        r26.xyzw = r28.xyzw;
        r27.xyz = r16.xyz;
        r6.w = (int)r6.w + 32;
      }
      r25.xyzw = r26.zxyw;
      r24.xyz = r27.xyz;
      r25.xyzw = r25.yzxw;
    } else {
      r25.x = r24.w;
    }
    r1.x = max(1, r25.w);
    r1.x = rcp(r1.x);
    r25.w = saturate(r25.w);
    r21.xyz = r24.xyz * r1.xxx;
    r22.xyz = r25.xyz * r1.xxx;
    r1.y = cmp(r25.w < 0.99000001);
    if (r1.y != 0) {
      r1.y = 1 + -r25.w;
      r1.z = sunConstants.globalProbeExposure * r1.y;
      r15.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r16.x = globalProbeConstants.data[0].w * r15.x;
      r16.yz = globalProbeConstants.data[1].xy * r15.yz;
      r15.xyz = saturate(float3(0.5,0.5,0.5) + r16.xyz);
      r16.xy = globalProbeConstants.data[1].zw * r15.xy;
      r16.z = globalProbeConstants.data[2].x * r15.z;
      r15.xyz = globalProbeConstants.data[2].yzw + r16.xyz;
      r16.xyz = cmp(float3(0,0,0) < r7.xyz);
      r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r16.w = 0;
      r17.xyz = r16.wwx + r15.xyz;
      r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r18.xyz = r7.xyz * r7.xyz;
      r18.xyz = r18.xyz * r1.zzz;
      r19.xyz = r16.wwy + r15.xyz;
      r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r19.xyz = r19.xyz * r18.yyy;
      r17.xyz = r17.xyz * r18.xxx + r19.xyz;
      r15.xyz = r16.wwz + r15.xyz;
      r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r15.xyz = r15.xyz * r18.zzz + r17.xyz;
      r7.w = 0;
      r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r7.xyzw, 6).xyz;
      r15.xyz = r16.xyz * r15.xyz;
      r1.z = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r21.xyz = r24.xyz * r1.xxx + r15.xyz;
      r13.w = 0;
      r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r4.z).xyz;
      r1.x = sunConstants.globalProbeExposure * r1.y + -r1.z;
      r1.x = r9.y * r1.x + r1.z;
      r22.xyz = r15.xyz * r1.xxx + r22.xyz;
    }
  } else {
    r22.x = r21.w;
  }
  r1.x = r9.x + r2.w;
  r1.x = log2(abs(r1.x));
  r1.x = r3.z * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.x + r2.w;
  r1.x = saturate(-1 + r1.x);
  r15.xyz = r21.xyz * r2.www;
  r1.yz = r9.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.yz, 0).xy;
  r9.yzw = r22.xyz * r1.xxx;
  r16.xyz = r9.zwy * r1.yyy;
  r1.xyz = r9.yzw * r1.zzz;
  r2.w = sqrt(r3.z);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r2.w;
  r3.w = 0.5 * r2.w;
  r2.w = -r2.w * 0.5 + 1;
  r4.z = r9.x * r2.w + r3.w;
  r2.w = r4.z * r2.w;
  r3.w = r4.z * r3.w;
  if (noReceiveShadow == 0) {
    r4.z = dot(r7.xyz, sunConstants.wldDir.xyz);
    r4.z = cmp(0 >= abs(r4.z));
    if (r4.z != 0) {
      r4.w = 0;
    }
    if (r4.z == 0) {
      r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
      r9.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
      r9.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
      r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
      r4.z = -sunConstants.splitDepthOffset + r9.w;
      r4.z = -r4.z * 6.10351563e-05 + 1;
      r5.y = saturate(r4.z);
      r5.y = cmp(r4.z == r5.y);
      if (r5.y != 0) {
        r5.yw = float2(0,0);
        while (true) {
          r6.w = cmp(r5.y >= 3);
          if (r6.w != 0) break;
          r6.w = (uint)r5.y;
          r17.xy = -sunConstants.splitPinTransform[r6.w].xy + r9.yz;
          r7.w = max(abs(r17.x), abs(r17.y));
          r5.w = sunConstants.splitPinTransform[r6.w].z * r7.w;
          r6.w = cmp(r5.w < 1);
          if (r6.w != 0) {
            break;
          }
          r5.y = 1 + r5.y;
          r5.w = 0;
        }
      } else {
        r5.yw = float2(3,0);
      }
      r6.w = cmp(r5.y >= 3);
      if (r6.w != 0) {
        r17.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
        r18.xz = rcp(r17.xx);
        r18.y = -r18.z;
        r17.xyz = r9.yzy * r18.xyz + r17.yzy;
        r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
        r17.xyz = max(float3(0,0,0), r17.xyz);
        r17.xyz = min(r17.xyz, r18.xyz);
        r18.xy = sunConstants.sstLightingConstants.coordScale * r17.zy;
        r18.xy = floor(r18.xy);
        r7.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r18.y;
        r7.w = r7.w * sunConstants.sstLightingConstants.coordScale + r18.x;
        r7.w = (uint)r7.w;
        r7.w = (int)r7.w + (int10)sunConstants.sstLightingConstants.rootOffset;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(0), t23.xxxx
      r8.w = samp0[]..swiz;
        r10.w = (int)r8.w & 0x40000000;
        r11.w = (uint)r8.w << 2;
        if (r10.w == 0) {
          r10.w = (int)r8.w & 0x01ffffff;
          r18.x = (int)r7.w + (int)r10.w;
          r7.w = (uint)r8.w >> 25;
          r7.w = (uint)r7.w;
          r17.xyz = r17.xyz * r7.www;
          r17.xyz = frac(r17.xyz);
          r17.xyz = float3(128,128,128) * r17.xyz;
          r17.xyz = (uint3)r17.xyz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r19.xy = (uint2)r17.zy >> int2(6,6);
          r7.w = (int)r18.z & 0xc0000000;
          r8.w = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(0), t23.xxxx
        r8.w = samp0[]..swiz;
          r8.w = r19.y ? r18.z : r8.w;
          r10.w = (uint)r8.w >> 13;
          r8.w = r19.x ? r10.w : r8.w;
          r8.w = (int)r8.w & 8191;
          r19.x = (int)r8.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r18.y = 0;
          r19.y = 1;
          r19.xyz = r7.www ? r18.xyz : r19.xyz;
          r20.yz = r7.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
          r21.xy = (uint2)r17.zy >> (uint2)r20.yy;
          r21.xy = (int2)r21.xy & int2(1,1);
          r8.w = (int)r19.z & 0xc0000000;
          r10.w = (int)r19.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
        r10.w = samp0[]..swiz;
          r10.w = r21.y ? r19.z : r10.w;
          r12.w = (uint)r10.w >> 13;
          r10.w = r21.x ? r12.w : r10.w;
          r10.w = (int)r10.w & 8191;
          r20.x = (int)r10.w + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
        r20.w = samp0[]..swiz;
          r19.xyz = r8.www ? r19.xyz : r20.xzw;
          r18.xyz = r7.www ? r18.xyz : r19.xyz;
          r7.w = (int)r18.z & 0xc0000000;
          if (r7.w == 0) {
            r7.w = (int)-r18.y + 6;
            r19.xy = (uint2)r17.zy >> (uint2)r7.ww;
            r7.w = (int)r18.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r19.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.w = (((uint)r19.x << 0) & bitmask.w) | ((uint)r8.w & ~bitmask.w);
            r8.w = (int)r8.w * 10;
            r7.w = (uint)r7.w >> (uint)r8.w;
            r7.w = (int)r7.w & 1023;
            r19.x = (int)r7.w + (int)r18.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
          r19.w = samp0[]..swiz;
            r19.yz = (int2)r18.yy + int2(1,2);
            r7.w = (int)-r19.y + 6;
            r18.yw = (uint2)r17.zy >> (uint2)r7.ww;
            r7.w = (int)r19.w & 0xc0000000;
            r8.w = (int)r19.w | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r18.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r18.y << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
            r10.w = (int)r10.w * 10;
            r8.w = (uint)r8.w >> (uint)r10.w;
            r8.w = (int)r8.w & 1023;
            r20.x = (int)r8.w + (int)r19.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
          r20.z = samp0[]..swiz;
            r20.y = r19.z;
            r20.xyz = r7.www ? r19.xyw : r20.xyz;
            r8.w = (int)-r20.y + 6;
            r18.yw = (uint2)r17.zy >> (uint2)r8.ww;
            r8.w = (int)r20.z & 0xc0000000;
            r10.w = (int)r20.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r18.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r18.y << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
            r12.w = (int)r12.w * 10;
            r10.w = (uint)r10.w >> (uint)r12.w;
            r10.w = (int)r10.w & 1023;
            r21.x = (int)r10.w + (int)r20.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
          r21.y = samp0[]..swiz;
            r18.yw = r8.ww ? r20.xz : r21.xy;
            r18.xz = r7.ww ? r19.xw : r18.yw;
          }
          r7.w = (int)r18.z & 0xc0000000;
          if (r7.w == 0) {
            if (14 == 0) r8.w = 0; else if (14+15 < 32) {             r8.w = (uint)r18.z << (32-(14 + 15)); r8.w = (uint)r8.w >> (32-14);            } else r8.w = (uint)r18.z >> 15;
            r8.w = (uint)r8.w;
            r8.w = sunConstants.sstLightingConstants.constants.spanInInches * r8.w;
            r8.w = 6.10388815e-05 * r8.w;
            r18.yw = (int2)r18.zz & int2(32767,536870912);
            r10.w = (uint)r18.y;
            r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
            r10.w = 3.05185094e-05 * r10.w;
            r12.w = (int)r17.y & 3;
            r12.w = (int)r12.w + (int)r18.x;
            r12.w = (int)r12.w + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
          r12.w = samp0[]..swiz;
            bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r17.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
            bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.w = (((uint)r17.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
            r12.w = (uint)r12.w >> (uint)r17.x;
            r12.w = (int)r12.w & 255;
            r12.w = (uint)r12.w;
            r12.w = r12.w * r10.w;
            r12.w = r12.w * 0.00392156886 + r8.w;
            r13.w = (int)r17.y + 1;
            if (1 == 0) r14.w = 0; else if (1+1 < 32) {             r14.w = (uint)r17.z << (32-(1 + 1)); r14.w = (uint)r14.w >> (32-1);            } else r14.w = (uint)r17.z >> 1;
            r13.w = (int)r13.w + (int)r14.w;
            r13.w = (int)r13.w + (int)r18.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
          r13.w = samp0[]..swiz;
            r13.w = (uint)r13.w >> (uint)r17.w;
            r13.w = (int)r13.w & 0x0000ffff;
            r13.w = (uint)r13.w;
            r10.w = r13.w * r10.w;
            r8.w = r10.w * 1.52590219e-05 + r8.w;
            r11.w = r18.w ? r12.w : r8.w;
          } else {
            r8.w = (int)r18.z & 0x80000000;
            r10.w = (int)r18.x + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
          r10.w = samp0[]..swiz;
            r8.w = r8.w ? r10.w : 0;
            r10.w = (uint)r18.z << 2;
            r12.w = (uint)r8.w >> 16;
            r12.w = f16tof32(r12.w);
            r8.w = (int)r8.w & 0x0000ffff;
            r8.w = f16tof32(r8.w);
            r10.w = r9.y * r12.w + r10.w;
            r8.w = r9.z * r8.w + r10.w;
            r11.w = r7.w ? r8.w : r11.w;
          }
        }
        r7.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
        r7.w = cmp(r11.w < r7.w);
        r4.w = r7.w ? 0 : 1;
      }
      if (r6.w == 0) {
        if (enableDitheredShadow == 0) {
          r6.w = (uint)r5.y;
          r17.xy = -sunConstants.splitPinTransform[r6.w].xy + r9.yz;
          r17.xy = sunConstants.splitPinTransform[r6.w].zz * r17.xy;
          r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r6.w = (int16)sunConstants.splitArrayOffset;
          r17.z = r6.w + r5.y;
          r6.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.z).x;
          r7.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r6.w = r7.w + r6.w;
          r6.w = saturate(-1 + r6.w);
          r7.w = r6.w * r6.w;
          r4.w = r7.w * r6.w;
        }
        if (enableDitheredShadow != 0) {
          r17.x = -r4.x;
          r6.w = (uint)r5.y;
          r5.y = 1 + r5.y;
          r5.y = min(2, r5.y);
          r5.w = 1 + -r5.w;
          r5.w = 28 * r5.w;
          r5.yw = (uint2)r5.yw;
          r18.xy = -sunConstants.splitPinTransform[r6.w].xy + r9.yz;
          r18.xy = sunConstants.splitPinTransform[r6.w].zz * r18.xy;
          r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r9.yz = -sunConstants.splitPinTransform[r5.y].xy + r9.yz;
          r9.yz = sunConstants.splitPinTransform[r5.y].zz * r9.yz;
          r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r17.y = r12.x;
          r17.z = r4.x;
          r7.w = 0;
          r8.w = 0;
          while (true) {
            r9.w = cmp((uint)r8.w >= 8);
            if (r9.w != 0) break;
            r9.w = cmp((uint)r5.w < (uint)r8.w);
            r18.zw = r9.ww ? r9.yz : r18.xy;
            r10.w = r9.w ? sunConstants.splitPinTransform[r5.y].w : sunConstants.splitPinTransform[r6.w].w;
            r9.w = r9.w ? r5.y : r6.w;
            r19.x = dot(icb[r8.w+0].yx, r17.xy);
            r19.y = dot(icb[r8.w+0].yx, r17.yz);
            r19.xy = r19.xy * r10.ww + r18.zw;
            r9.w = (int)r9.w + (int16)sunConstants.splitArrayOffset;
            r19.z = (uint)r9.w;
            r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r4.z).x;
            r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
            r9.w = r10.w + r9.w;
            r9.w = saturate(-1 + r9.w);
            r7.w = r9.w * 0.125 + r7.w;
            r8.w = (int)r8.w + 1;
          }
          r4.z = r7.w * r7.w;
          r4.w = r4.z * r7.w;
        }
      }
    }
  } else {
    r4.w = 1;
  }
  r4.z = dot(r7.xyz, sunConstants.wldDir.xyz);
  r5.y = cmp(0 < abs(r4.z));
  if (r5.y != 0) {
    r5.y = cmp(0 < r4.w);
    if (r5.y != 0) {
      r5.y = sunConstants.specScale * r3.y;
      r5.y = 0.25 * r5.y;
      if (sunConstants.sunCookieIndex != 0) {
        r17.xyz = eyeOffset.xyz + v6.xyz;
        r17.w = 1;
        r5.w = dot(sunConstants.sunCookieTransform[0].xyzw, r17.xyzw);
        r6.w = dot(sunConstants.sunCookieTransform[1].xyzw, r17.xyzw);
        r17.x = frac(r5.w);
        r17.y = frac(r6.w);
        r5.w = -1 + (int14)sunConstants.sunCookieIndex;
        r17.z = (uint)r5.w;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r17.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      if (noReceiveShadow == 0) {
        r5.w = viewmodelSunShadowRaw >> 16;
        r6.w = cmp(0 < (uint)r5.w);
        r6.w = r1.w ? r6.w : 0;
        if (r6.w != 0) {
          r5.w = (int)r5.w + numLights;
          r5.w = (int)r5.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.w, r5.w, l(52), t12.xxxx
        r6.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(68), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(84), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r5.w, l(132), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r5.w, l(148), t12.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
          r7.w = abs(r4.z) * -0.200000003 + 0.400000006;
          r8.w = cmp(r4.z < 0);
          r7.w = r8.w ? -r7.w : r7.w;
          r21.xyz = r7.xyz * r7.www + v6.xyz;
          r21.w = 1;
          r17.x = dot(r17.xyzw, r21.xyzw);
          r17.y = dot(r18.xyzw, r21.xyzw);
          r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r17.xy = r17.xy + r20.zw;
          r17.xy = r17.xy * r20.xy;
          r17.zw = r6.ww / r19.xz;
          r18.xy = float2(1,1) + -r17.zw;
          r18.xy = cmp(r17.xy >= r18.xy);
          r17.zw = cmp(r17.zw >= r17.xy);
          r17.zw = (int2)r17.zw | (int2)r18.xy;
          r7.w = (int)r17.w | (int)r17.z;
          if (r7.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r5.w, l(28), t12.xxxx
          r7.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(100), t12.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.zw, r5.w, l(164), t12.xxxy
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
            r5.w = dot(r18.xyzw, r21.xyzw);
            r17.xy = saturate(r17.xy);
            r18.xy = r17.xy * r19.xz + r19.yw;
            r5.w = r5.w + r17.z;
            r5.w = r5.w / r17.w;
            r5.w = max(6.10351563e-05, r5.w);
            r7.w = (int)r7.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r17.x = -r4.x;
              r19.z = (uint)r7.w;
              r17.y = r12.x;
              r17.z = r4.x;
              r8.w = 0;
              r10.w = 0;
              while (true) {
                r11.w = cmp((int)r10.w >= 8);
                if (r11.w != 0) break;
                r20.x = dot(icb[r10.w+0].yx, r17.xy);
                r20.y = dot(icb[r10.w+0].yx, r17.yz);
                r19.xy = r20.xy * r6.ww + r18.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.w).x;
                r8.w = r11.w * 0.125 + r8.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r18.z = (uint)r7.w;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
            }
            r5.w = r8.w * r8.w;
            r5.w = r5.w * r8.w;
          } else {
            r5.w = 1;
          }
          r4.w = r5.w * r4.w;
        } else {
          r5.w = viewmodelSunShadowRaw & 0x0000ffff;
          r6.w = cmp(0 < (uint)r5.w);
          r7.w = ~(int)r1.w;
          r6.w = r6.w ? r7.w : 0;
          if (r6.w != 0) {
            r5.w = (int)r5.w + numLights;
            r5.w = (int)r5.w + -1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.w, r5.w, l(52), t12.xxxx
          r6.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(68), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(84), t12.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r5.w, l(132), t12.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r5.w, l(148), t12.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
            r7.w = abs(r4.z) * -0.200000003 + 0.400000006;
            r8.w = cmp(r4.z < 0);
            r7.w = r8.w ? -r7.w : r7.w;
            r21.xyz = r7.xyz * r7.www + v6.xyz;
            r21.w = 1;
            r17.x = dot(r17.xyzw, r21.xyzw);
            r17.y = dot(r18.xyzw, r21.xyzw);
            r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
            r17.xy = r17.xy + r20.zw;
            r17.xy = r17.xy * r20.xy;
            r17.zw = r6.ww / r19.xz;
            r18.xy = float2(1,1) + -r17.zw;
            r18.xy = cmp(r17.xy >= r18.xy);
            r17.zw = cmp(r17.zw >= r17.xy);
            r17.zw = (int2)r17.zw | (int2)r18.xy;
            r7.w = (int)r17.w | (int)r17.z;
            if (r7.w == 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r5.w, l(28), t12.xxxx
            r7.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(100), t12.xyzw
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.zw, r5.w, l(164), t12.xxxy
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
              r5.w = dot(r18.xyzw, r21.xyzw);
              r17.xy = saturate(r17.xy);
              r18.xy = r17.xy * r19.xz + r19.yw;
              r5.w = r5.w + r17.z;
              r5.w = r5.w / r17.w;
              r5.w = max(6.10351563e-05, r5.w);
              r7.w = (int)r7.w & 0x0000ffff;
              if (enableDitheredShadow != 0) {
                r17.x = -r4.x;
                r19.z = (uint)r7.w;
                r17.y = r12.x;
                r17.z = r4.x;
                r8.w = 0;
                r10.w = 0;
                while (true) {
                  r11.w = cmp((int)r10.w >= 8);
                  if (r11.w != 0) break;
                  r20.x = dot(icb[r10.w+0].yx, r17.xy);
                  r20.y = dot(icb[r10.w+0].yx, r17.yz);
                  r19.xy = r20.xy * r6.ww + r18.xy;
                  r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r5.w).x;
                  r8.w = r11.w * 0.125 + r8.w;
                  r10.w = (int)r10.w + 1;
                }
              } else {
                r18.z = (uint)r7.w;
                r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
              }
              r5.w = r8.w * r8.w;
              r5.w = r5.w * r8.w;
            } else {
              r5.w = 1;
            }
            r4.w = r5.w * r4.w;
          }
        }
      }
      r5.w = -r9.x * 0.5 + 1;
      r5.w = -abs(r4.z) * r5.w + 1;
      r5.w = r5.w * r5.w;
      r5.w = -r5.w * 0.620000005 + 0.620000005;
      r5.w = r5.w + -abs(r4.z);
      r5.w = r3.z * r5.w + abs(r4.z);
      r5.w = r5.w * r4.w;
      r6.w = cmp(0 < r4.z);
      r17.xyz = r5.www * r9.yzw + r15.xyz;
      r4.z = saturate(r4.z);
      r18.xyz = -v6.xyz * r0.yyy + sunConstants.wldDir.xyz;
      r0.y = dot(r18.xyz, r18.xyz);
      r0.y = rsqrt(r0.y);
      r18.xyz = r18.xyz * r0.yyy;
      r0.y = dot(r18.xyz, r2.xyz);
      r5.w = dot(r7.xyz, r18.xyz);
      r7.w = abs(r5.w) * r3.y + -abs(r5.w);
      r5.w = abs(r5.w) * r7.w + 1;
      r7.w = r4.z * r2.w + r3.w;
      r5.w = r5.w * r5.w;
      r5.w = r5.w * r7.w;
      r5.w = rcp(r5.w);
      r4.z = r4.z * r5.y;
      r4.z = r5.w * r4.z;
      r4.z = r4.z * r4.w;
      r18.xyz = r4.zzz * r9.yzw + r1.xyz;
      r0.y = saturate(1 + -r0.y);
      r4.w = r0.y * r0.y;
      r4.w = r4.w * r4.w;
      r0.y = r4.w * r0.y;
      r0.y = r4.z * r0.y;
      r19.xyz = r0.yyy * r9.zwy + r16.xyz;
      r17.w = r19.z;
      r15.w = r16.z;
      r15.xyzw = r6.wwww ? r17.xyzw : r15.xyzw;
      r19.zw = r18.xy;
      r16.zw = r1.xy;
      r17.xyzw = r6.wwww ? r19.xyzw : r16.xyzw;
      r1.z = r6.w ? r18.z : r1.z;
      r16.z = r15.w;
      r16.xy = r17.xy;
      r1.xy = r17.zw;
    }
  }
  r17.x = -r4.x;
  r0.y = ~(int)r1.w;
  r4.z = -r9.x * 0.5 + 1;
  r9.xy = float2(0,0);
  r18.w = 0;
  r19.xyz = v6.xyz;
  r19.w = 1;
  r20.w = 1;
  r17.z = r4.x;
  r21.w = 1;
  r22.z = 1;
  r23.w = 1;
  r17.yw = r12.xx;
  r4.y = r17.w;
  r24.w = 1;
  r12.y = r17.x;
  r12.z = r4.x;
  r25.w = 1;
  r26.x = r12.x;
  r26.y = r17.x;
  r26.z = r4.x;
  r27.x = r12.x;
  r27.y = r17.x;
  r27.z = r4.x;
  r28.x = r12.x;
  r28.y = r17.x;
  r28.z = r4.x;
  r29.xyz = r15.xyz;
  r30.xyz = r16.zxy;
  r31.xyz = r1.xyz;
  r4.w = enableDitheredShadow;
  r5.y = 0;
  while (true) {
    r5.w = cmp((uint)r5.y >= numLights);
    if (r5.w != 0) break;
    r9.z = (uint)r5.y >> 5;
    r18.xyz = (int3)r9.xyz + (int3)r14.xyz;
    r5.w = visibleLights.Load(r18.xyzw).x;
    r18.xyz = r29.xyz;
    r32.xyz = r30.xyz;
    r33.xyz = r31.xyz;
    r6.w = r4.w;
    r7.w = r5.w;
    while (true) {
      if (r7.w == 0) break;
      r8.w = firstbitlow((uint)r7.w);
      r9.z = 1 << (int)r8.w;
      r9.w = (int)r7.w & (int)r9.z;
      if (r9.w != 0) {
        r7.w = (int)r7.w ^ (int)r9.z;
        r8.w = (int)r5.y + (int)r8.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(0), t11.xyzw
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
      r34.z = samp0[]..swiz;
      r34.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r35.xy, r8.w, l(16), t11.xyxx
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
        r34.xyz = -v6.xyz + r34.xyz;
        r35.z = r34.w;
        r34.xyz = cmp(abs(r34.xyz) < r35.zxy);
        r9.z = r34.y ? r34.x : 0;
        r9.z = r34.z ? r9.z : 0;
        if (r9.z != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(0), t12.wxyz
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(16), t12.zxyw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(32), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r8.w, l(48), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r8.w, l(64), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r8.w, l(80), t12.xyzw
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r8.w, l(96), t12.yzwx
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
          if (3 == 0) r9.z = 0; else if (3+24 < 32) {           r9.z = (uint)r35.w << (32-(3 + 24)); r9.z = (uint)r9.z >> (32-3);          } else r9.z = (uint)r35.w >> 24;
          switch (r9.z) {
            case 4 :            r9.z = cmp(0 < r40.x);
            r41.xy = r39.zw;
            r41.z = r40.w;
            r42.xyz = -r41.xyz * float3(0.5,0.5,0.5) + r34.yzw;
            r43.xyz = -v6.xyz + r42.xyz;
            r9.w = dot(r41.xyz, r43.xyz);
            r10.w = saturate(-r9.w / r40.x);
            r44.xyz = r10.www * r41.xyz + r42.xyz;
            r44.xyz = r9.zzz ? r44.xyz : r34.yzw;
            r44.xyz = -v6.xyz + r44.xyz;
            r11.w = dot(r44.xyz, r44.xyz);
            r12.w = rsqrt(r11.w);
            r44.xyz = r44.xyz * r12.www;
            r12.w = dot(r7.xyz, r44.xyz);
            r13.w = cmp(0 < abs(r12.w));
            if (r13.w != 0) {
              r13.w = sqrt(r11.w);
              r14.w = r37.x * r37.x;
              r11.w = r14.w / r11.w;
              r11.w = min(1, r11.w);
              r44.xy = saturate(r13.ww * r36.xz + r36.yw);
              r44.zw = r44.xy * r44.xy;
              r44.xy = r44.xy * float2(-2,-2) + float2(3,3);
              r44.xy = r44.zw * r44.xy;
              r11.w = r44.x * r11.w;
              r11.w = r11.w * r44.y;
              r13.w = cmp(0 < r11.w);
              if (r13.w != 0) {
                if (3 == 0) r13.w = 0; else if (3+27 < 32) {                 r13.w = (uint)r35.w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);                } else r13.w = (uint)r35.w >> 27;
                r13.w = cmp((int)r13.w != 1);
                if (r13.w != 0) {
                  r13.w = abs(r12.w) * -0.200000003 + 0.400000006;
                  r14.w = cmp(r12.w < 0);
                  r13.w = r14.w ? -r13.w : r13.w;
                  r44.xyz = r7.xyz * r13.www + v6.xyz;
                  r44.xyz = r44.xyz + -r38.xyz;
                  r13.w = max(abs(r44.y), abs(r44.z));
                  r13.w = max(abs(r44.x), r13.w);
                  r13.w = r39.x / r13.w;
                  r13.w = r13.w + r39.y;
                  r14.w = dot(r44.xyz, r44.xyz);
                  r14.w = rsqrt(r14.w);
                  r13.w = max(6.10351563e-05, r13.w);
                  r15.w = (int)r35.w & 0x0000ffff;
                  r45.w = (uint)r15.w;
                  r15.w = 0;
                  r16.w = 0;
                  while (true) {
                    r22.w = cmp((int)r16.w >= 8);
                    if (r22.w != 0) break;
                    r46.y = dot(icb[r16.w+0].yx, r17.xy);
                    r46.z = dot(icb[r16.w+0].yx, r17.yz);
                    r46.yz = r46.yz * r37.yy;
                    r46.x = r46.y * r5.x;
                    r46.w = r46.y * r3.x;
                    r45.xyz = r44.xyz * r14.www + r46.xzw;
                    r22.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r45.xyzw, r13.w).x;
                    r15.w = r22.w * 0.125 + r15.w;
                    r16.w = (int)r16.w + 1;
                  }
                } else {
                  r15.w = 1;
                }
                r11.w = r15.w * r11.w;
                r13.w = cmp(0 < r11.w);
                if (r13.w != 0) {
                  r13.w = r35.x * r3.y;
                  r13.w = 0.25 * r13.w;
                  r14.w = dot(r41.xyz, r13.xyz);
                  r16.w = dot(r13.xyz, r43.xyz);
                  r22.w = -r14.w * r14.w + r40.x;
                  r9.w = r14.w * r16.w + -r9.w;
                  r9.w = saturate(r9.w / r22.w);
                  r14.w = r22.w / r40.x;
                  r14.w = 10 * r14.w;
                  r14.w = min(1, r14.w);
                  r9.w = r9.w + -r10.w;
                  r9.w = r14.w * r9.w + r10.w;
                  r41.xyz = r9.www * r41.xyz + r42.xyz;
                  r41.xyz = r9.zzz ? r41.xyz : r34.yzw;
                  r41.xyz = -v6.xyz + r41.xyz;
                  r9.z = dot(r41.xyz, r41.xyz);
                  r9.z = rsqrt(r9.z);
                  r42.xyz = r41.xyz * r9.zzz;
                  if (4 == 0) r9.w = 0; else if (4+16 < 32) {                   r9.w = (uint)r35.w << (32-(4 + 16)); r9.w = (uint)r9.w >> (32-4);                  } else r9.w = (uint)r35.w >> 16;
                  r10.w = cmp(0 < (uint)r9.w);
                  r10.w = r1.w ? r10.w : 0;
                  if (r10.w != 0) {
                    r9.w = (int)r9.w + numLights;
                    r9.w = (int)r9.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(52), t12.xxxx
                  r10.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(100), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(116), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                    r14.w = abs(r12.w) * -0.200000003 + 0.400000006;
                    r16.w = cmp(r12.w < 0);
                    r14.w = r16.w ? -r14.w : r14.w;
                    r20.xyz = r7.xyz * r14.www + v6.xyz;
                    r14.w = dot(r43.xyzw, r20.xyzw);
                    r16.w = dot(r44.xyzw, r20.xyzw);
                    r22.w = cmp(r16.w < r14.w);
                    if (r22.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(68), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(84), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r9.w, l(132), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r9.w, l(148), t12.xyzw
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                    r46.z = samp0[]..swiz;
                    r46.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r9.w, l(164), t12.xyxx
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                      r43.x = dot(r43.xyzw, r20.xyzw);
                      r43.y = dot(r44.xyzw, r20.xyzw);
                      r20.xy = r43.xy / r16.ww;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r46.zw;
                      r20.xy = r20.xy * r46.xy;
                      r43.xy = r10.ww / r45.xz;
                      r43.zw = float2(1,1) + -r43.xy;
                      r43.zw = cmp(r20.xy >= r43.zw);
                      r43.xy = cmp(r43.xy >= r20.xy);
                      r43.xy = (int2)r43.xy | (int2)r43.zw;
                      r20.z = (int)r43.y | (int)r43.x;
                      r20.xy = saturate(r20.xy);
                      r43.xy = r20.xy * r45.xz + r45.yw;
                      r20.x = r47.y * r16.w;
                      r14.w = r47.x * r16.w + r14.w;
                      r14.w = r14.w / r20.x;
                    } else {
                      r20.z = -1;
                    }
                    r16.w = (int)r22.w | (int)r20.z;
                    if (r16.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(28), t12.xxxx
                    r9.w = samp0[]..swiz;
                      r14.w = max(6.10351563e-05, r14.w);
                      r9.w = (int)r9.w & 0x0000ffff;
                      if (r6.w != 0) {
                        r20.z = (uint)r9.w;
                        r16.w = 0;
                        r22.w = 0;
                        while (true) {
                          r26.w = cmp((int)r22.w >= 8);
                          if (r26.w != 0) break;
                          r44.x = dot(icb[r22.w+0].yx, r17.xw);
                          r44.y = dot(icb[r22.w+0].xy, r4.xy);
                          r20.xy = r44.xy * r10.ww + r43.xy;
                          r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r14.w).x;
                          r16.w = r20.x * 0.125 + r16.w;
                          r22.w = (int)r22.w + 1;
                        }
                      } else {
                        r43.z = (uint)r9.w;
                        r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r14.w).x;
                      }
                      r9.w = r16.w * r16.w;
                      r9.w = r9.w * r16.w;
                    } else {
                      r9.w = 1;
                    }
                    r11.w = r11.w * r9.w;
                  } else {
                    if (4 == 0) r9.w = 0; else if (4+20 < 32) {                     r9.w = (uint)r35.w << (32-(4 + 20)); r9.w = (uint)r9.w >> (32-4);                    } else r9.w = (uint)r35.w >> 20;
                    r10.w = cmp(0 < (uint)r9.w);
                    r10.w = r10.w ? r0.y : 0;
                    if (r10.w != 0) {
                      r9.w = (int)r9.w + numLights;
                      r9.w = (int)r9.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(52), t12.xxxx
                    r10.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(100), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(116), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                      r14.w = abs(r12.w) * -0.200000003 + 0.400000006;
                      r20.x = cmp(r12.w < 0);
                      r14.w = r20.x ? -r14.w : r14.w;
                      r21.xyz = r7.xyz * r14.www + v6.xyz;
                      r14.w = dot(r43.xyzw, r21.xyzw);
                      r20.x = dot(r44.xyzw, r21.xyzw);
                      r20.y = cmp(r20.x < r14.w);
                      if (r20.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(68), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(84), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r9.w, l(132), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r9.w, l(148), t12.xyzw
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                      r46.z = samp0[]..swiz;
                      r46.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r9.w, l(164), t12.xyxx
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                        r43.x = dot(r43.xyzw, r21.xyzw);
                        r43.y = dot(r44.xyzw, r21.xyzw);
                        r21.xy = r43.xy / r20.xx;
                        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r21.xy = r21.xy + r46.zw;
                        r21.xy = r21.xy * r46.xy;
                        r43.xy = r10.ww / r45.xz;
                        r43.zw = float2(1,1) + -r43.xy;
                        r43.zw = cmp(r21.xy >= r43.zw);
                        r43.xy = cmp(r43.xy >= r21.xy);
                        r43.xy = (int2)r43.xy | (int2)r43.zw;
                        r20.z = (int)r43.y | (int)r43.x;
                        r21.xy = saturate(r21.xy);
                        r21.xy = r21.xy * r45.xz + r45.yw;
                        r22.w = r47.y * r20.x;
                        r14.w = r47.x * r20.x + r14.w;
                        r14.w = r14.w / r22.w;
                      } else {
                        r20.z = -1;
                      }
                      r20.x = (int)r20.y | (int)r20.z;
                      if (r20.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(28), t12.xxxx
                      r9.w = samp0[]..swiz;
                        r14.w = max(6.10351563e-05, r14.w);
                        r9.w = (int)r9.w & 0x0000ffff;
                        if (r6.w != 0) {
                          r20.z = (uint)r9.w;
                          r22.w = 0;
                          r26.w = 0;
                          while (true) {
                            r27.w = cmp((int)r26.w >= 8);
                            if (r27.w != 0) break;
                            r43.x = dot(icb[r26.w+0].xy, r12.xy);
                            r43.y = dot(icb[r26.w+0].yx, r12.xz);
                            r20.xy = r43.xy * r10.ww + r21.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r14.w).x;
                            r22.w = r20.x * 0.125 + r22.w;
                            r26.w = (int)r26.w + 1;
                          }
                        } else {
                          r21.z = (uint)r9.w;
                          r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r14.w).x;
                        }
                        r9.w = r22.w * r22.w;
                        r9.w = r9.w * r22.w;
                      } else {
                        r9.w = 1;
                      }
                      r11.w = r11.w * r9.w;
                    }
                  }
                  r9.w = -abs(r12.w) * r4.z + 1;
                  r9.w = r9.w * r9.w;
                  r9.w = -r9.w * 0.620000005 + 0.620000005;
                  r9.w = r9.w + -abs(r12.w);
                  r9.w = r3.z * r9.w + abs(r12.w);
                  r9.w = r9.w * r11.w;
                  r35.x = r34.x;
                  r10.w = cmp(0 < r12.w);
                  r20.xyz = r9.www * r35.xyz + r18.xyz;
                  r9.w = saturate(dot(r7.xyz, r42.xyz));
                  r21.xyz = r41.xyz * r9.zzz + r2.xyz;
                  r9.z = dot(r21.xyz, r21.xyz);
                  r9.z = rsqrt(r9.z);
                  r21.xyz = r21.xyz * r9.zzz;
                  r9.z = dot(r21.xyz, r2.xyz);
                  r12.w = dot(r7.xyz, r21.xyz);
                  r14.w = abs(r12.w) * r3.y + -abs(r12.w);
                  r12.w = abs(r12.w) * r14.w + 1;
                  r14.w = r9.w * r2.w + r3.w;
                  r12.w = r12.w * r12.w;
                  r12.w = r12.w * r14.w;
                  r12.w = rcp(r12.w);
                  r9.w = r9.w * r13.w;
                  r9.w = r12.w * r9.w;
                  r9.w = r9.w * r11.w;
                  r21.xyz = r9.www * r35.xyz + r33.xyz;
                  r9.z = saturate(1 + -r9.z);
                  r11.w = r9.z * r9.z;
                  r11.w = r11.w * r11.w;
                  r9.z = r11.w * r9.z;
                  r9.z = r9.w * r9.z;
                  r41.xyz = r9.zzz * r35.xyz + r32.xyz;
                  r18.xyz = r10.www ? r20.xyz : r18.xyz;
                  r32.xyz = r10.www ? r41.xyz : r32.xyz;
                  r33.xyz = r10.www ? r21.xyz : r33.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r37.zw;
            r20.z = r38.w;
            r20.xyz = -v6.xyz + r20.xyz;
            r9.z = dot(r20.xyz, r20.xyz);
            r9.z = rsqrt(r9.z);
            r21.xyz = r20.xyz * r9.zzz;
            r9.w = dot(r7.xyz, r21.xyz);
            r10.w = cmp(0 < abs(r9.w));
            if (r10.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r8.w, l(112), t12.yzwx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r8.w, l(128), t12.zxyw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
              r43.xyz = r41.xyz;
              r43.w = r42.y;
              r10.w = dot(r43.xyzw, r19.xyzw);
              r11.w = cmp(r10.w < 1);
              if (r11.w != 0) {
                r21.xyz = float3(1,1,1);
                r11.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(172), t12.yzwx
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r8.w, l(188), t12.wxyz
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r8.w, l(204), t12.xyzw
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r8.w, l(236), t12.xxxx
              r12.w = samp0[]..swiz;
                r47.xyz = -v6.xyz + r34.yzw;
                r13.w = r37.x * r37.x;
                r14.w = dot(r47.xyz, r47.xyz);
                r13.w = r13.w / r14.w;
                r13.w = min(1, r13.w);
                r36.xy = saturate(r10.ww * r36.xz + r36.yw);
                r36.zw = r36.xy * r36.xy;
                r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                r36.xy = r36.zw * r36.xy;
                r13.w = r36.x * r13.w;
                r13.w = r13.w * r36.y;
                r38.w = r39.x;
                r36.x = dot(r38.xyzw, r19.xyzw);
                r47.xyz = r39.yzw;
                r47.w = r40.w;
                r36.y = dot(r47.xyzw, r19.xyzw);
                r22.xy = r36.xy / r10.ww;
                r10.w = cmp(r44.w < 0.00048828125);
                if (r10.w != 0) {
                  r45.y = r46.x;
                  r36.xy = saturate(abs(r22.xy) * r45.zw + r45.xy);
                  r36.zw = r36.xy * r36.xy;
                  r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                  r36.xy = r36.zw * r36.xy;
                  r10.w = r36.x * r36.y;
                } else {
                  r44.w = r45.y;
                  r36.xyzw = saturate(r44.xyzw * abs(r22.yyxx));
                  r36.xyzw = log2(r36.xyzw);
                  r36.xyzw = r45.xxxx * r36.xyzw;
                  r36.xyzw = exp2(r36.xyzw);
                  r36.xy = r36.xy + r36.zw;
                  r36.xy = log2(r36.xy);
                  r36.xy = r46.xx * r36.xy;
                  r36.xy = exp2(r36.xy);
                  r14.w = r45.z * r36.x;
                  r26.w = r45.w * r36.y + -1;
                  r14.w = r45.w * r36.y + -r14.w;
                  r14.w = saturate(r26.w / r14.w);
                  r26.w = r14.w * r14.w;
                  r14.w = r14.w * -2 + 3;
                  r10.w = r26.w * r14.w;
                }
                r11.w = r13.w * r10.w;
                r10.w = (int)r12.w & 255;
                if (r10.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyz, r8.w, l(220), t12.xyzx
                r36.x = samp0[]..swiz;
                r36.y = samp0[]..swiz;
                r36.z = samp0[]..swiz;
                  r12.w = dot(r46.yzw, r22.xyz);
                  r13.w = dot(r36.xyz, r22.xyz);
                  r36.x = frac(r12.w);
                  r36.y = frac(r13.w);
                  r10.w = (int)r10.w + -1;
                  r36.z = (uint)r10.w;
                  r21.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
                } else {
                  r21.xyz = float3(1,1,1);
                }
              }
              r34.yz = r35.yz;
              r21.xyz = r34.xyz * r21.xyz;
              r10.w = cmp(0 < r11.w);
              if (r10.w != 0) {
                if (3 == 0) r10.w = 0; else if (3+27 < 32) {                 r10.w = (uint)r35.w << (32-(3 + 27)); r10.w = (uint)r10.w >> (32-3);                } else r10.w = (uint)r35.w >> 27;
                r10.w = cmp((int)r10.w != 1);
                if (r10.w != 0) {
                  r10.w = abs(r9.w) * -0.200000003 + 0.400000006;
                  r12.w = cmp(r9.w < 0);
                  r10.w = r12.w ? -r10.w : r10.w;
                  r23.xyz = r7.xyz * r10.www + v6.xyz;
                  r41.xyz = r40.xyz;
                  r10.w = dot(r41.xyzw, r23.xyzw);
                  r12.w = dot(r43.xyzw, r23.xyzw);
                  r13.w = cmp(r12.w >= r10.w);
                  if (r13.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.y, r8.w, l(144), t12.xxxx
                  r42.y = samp0[]..swiz;
                    r38.w = r39.x;
                    r22.x = dot(r38.xyzw, r23.xyzw);
                    r40.xyz = r39.yzw;
                    r22.y = dot(r40.xyzw, r23.xyzw);
                    r22.xy = r22.xy / r12.ww;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r23.xy = r22.xy * r42.zw + r42.xy;
                    r8.w = r10.w / r12.w;
                    r8.w = max(6.10351563e-05, r8.w);
                    r10.w = (int)r35.w & 0x0000ffff;
                    if (r6.w != 0) {
                      r34.z = (uint)r10.w;
                      r12.w = 0;
                      r13.w = 0;
                      while (true) {
                        r14.w = cmp((int)r13.w >= 8);
                        if (r14.w != 0) break;
                        r22.x = dot(icb[r13.w+0].xy, r26.xy);
                        r22.y = dot(icb[r13.w+0].yx, r26.xz);
                        r34.xy = r22.xy * r37.yy + r23.xy;
                        r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r8.w).x;
                        r12.w = r14.w * 0.125 + r12.w;
                        r13.w = (int)r13.w + 1;
                      }
                    } else {
                      r23.z = (uint)r10.w;
                      r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r8.w).x;
                    }
                    r8.w = r12.w * r12.w;
                    r8.w = r8.w * r12.w;
                  } else {
                    r8.w = 1;
                  }
                } else {
                  r8.w = 1;
                }
                r8.w = r11.w * r8.w;
                r10.w = cmp(0 < r8.w);
                if (r10.w != 0) {
                  r10.w = r35.x * r3.y;
                  r10.w = 0.25 * r10.w;
                  if (4 == 0) r11.w = 0; else if (4+16 < 32) {                   r11.w = (uint)r35.w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r35.w >> 16;
                  r13.w = cmp(0 < (uint)r11.w);
                  r13.w = r1.w ? r13.w : 0;
                  if (r13.w != 0) {
                    r11.w = (int)r11.w + numLights;
                    r11.w = (int)r11.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r11.w, l(52), t12.xxxx
                  r13.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(68), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(84), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(100), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(116), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(132), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(148), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                    r14.w = abs(r9.w) * -0.200000003 + 0.400000006;
                    r22.x = cmp(r9.w < 0);
                    r14.w = r22.x ? -r14.w : r14.w;
                    r24.xyz = r7.xyz * r14.www + v6.xyz;
                    r22.x = dot(r34.xyzw, r24.xyzw);
                    r22.y = dot(r36.xyzw, r24.xyzw);
                    r14.w = dot(r37.xyzw, r24.xyzw);
                    r23.x = dot(r38.xyzw, r24.xyzw);
                    r23.y = cmp(r23.x < r14.w);
                    r22.xy = r22.xy / r23.xx;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.xy = r22.xy + r40.zw;
                    r22.xy = r22.xy * r40.xy;
                    r24.xy = r13.ww / r39.xz;
                    r34.xy = float2(1,1) + -r24.xy;
                    r34.xy = cmp(r22.xy >= r34.xy);
                    r24.xy = cmp(r24.xy >= r22.xy);
                    r24.xy = (int2)r24.xy | (int2)r34.xy;
                    r23.z = (int)r24.y | (int)r24.x;
                    r23.y = (int)r23.y | (int)r23.z;
                    if (r23.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r11.w, l(28), t12.xxxx
                    r23.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xy, r11.w, l(164), t12.xyxx
                    r24.x = samp0[]..swiz;
                    r24.y = samp0[]..swiz;
                      r22.xy = saturate(r22.xy);
                      r34.xy = r22.xy * r39.xz + r39.yw;
                      r11.w = r24.y * r23.x;
                      r14.w = r24.x * r23.x + r14.w;
                      r11.w = r14.w / r11.w;
                      r11.w = max(6.10351563e-05, r11.w);
                      r14.w = r23.y ? 0.000000 : 0;
                      if (r6.w != 0) {
                        r23.z = (uint)r14.w;
                        r22.xy = float2(0,0);
                        while (true) {
                          r24.x = cmp((int)r22.y >= 8);
                          if (r24.x != 0) break;
                          r24.x = dot(icb[r22.y+0].xy, r27.xy);
                          r24.y = dot(icb[r22.y+0].yx, r27.xz);
                          r23.xy = r24.xy * r13.ww + r34.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
                          r22.x = r23.x * 0.125 + r22.x;
                          r22.y = (int)r22.y + 1;
                        }
                      } else {
                        r34.z = (uint)r14.w;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r11.w).x;
                      }
                      r11.w = r22.x * r22.x;
                      r11.w = r11.w * r22.x;
                    } else {
                      r11.w = 1;
                    }
                    r8.w = r11.w * r8.w;
                  } else {
                    if (4 == 0) r11.w = 0; else if (4+20 < 32) {                     r11.w = (uint)r35.w << (32-(4 + 20)); r11.w = (uint)r11.w >> (32-4);                    } else r11.w = (uint)r35.w >> 20;
                    r13.w = cmp(0 < (uint)r11.w);
                    r13.w = r13.w ? r0.y : 0;
                    if (r13.w != 0) {
                      r11.w = (int)r11.w + numLights;
                      r11.w = (int)r11.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r11.w, l(52), t12.xxxx
                    r13.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(68), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(84), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(100), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(116), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(132), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(148), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                      r14.w = abs(r9.w) * -0.200000003 + 0.400000006;
                      r22.y = cmp(r9.w < 0);
                      r14.w = r22.y ? -r14.w : r14.w;
                      r25.xyz = r7.xyz * r14.www + v6.xyz;
                      r23.x = dot(r34.xyzw, r25.xyzw);
                      r23.y = dot(r35.xyzw, r25.xyzw);
                      r14.w = dot(r36.xyzw, r25.xyzw);
                      r22.y = dot(r37.xyzw, r25.xyzw);
                      r23.z = cmp(r22.y < r14.w);
                      r23.xy = r23.xy / r22.yy;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r39.zw;
                      r23.xy = r23.xy * r39.xy;
                      r24.xy = r13.ww / r38.xz;
                      r25.xy = float2(1,1) + -r24.xy;
                      r25.xy = cmp(r23.xy >= r25.xy);
                      r24.xy = cmp(r24.xy >= r23.xy);
                      r24.xy = (int2)r24.xy | (int2)r25.xy;
                      r24.x = (int)r24.y | (int)r24.x;
                      r23.z = (int)r23.z | (int)r24.x;
                      if (r23.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.z, r11.w, l(28), t12.xxxx
                      r23.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xy, r11.w, l(164), t12.xyxx
                      r24.x = samp0[]..swiz;
                      r24.y = samp0[]..swiz;
                        r23.xy = saturate(r23.xy);
                        r25.xy = r23.xy * r38.xz + r38.yw;
                        r11.w = r24.y * r22.y;
                        r14.w = r24.x * r22.y + r14.w;
                        r11.w = r14.w / r11.w;
                        r11.w = max(6.10351563e-05, r11.w);
                        r14.w = r23.z ? 0.000000 : 0;
                        if (r6.w != 0) {
                          r23.z = (uint)r14.w;
                          r22.y = 0;
                          r24.x = 0;
                          while (true) {
                            r24.y = cmp((int)r24.x >= 8);
                            if (r24.y != 0) break;
                            r34.x = dot(icb[r24.x+0].xy, r28.xy);
                            r34.y = dot(icb[r24.x+0].yx, r28.xz);
                            r23.xy = r34.xy * r13.ww + r25.xy;
                            r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r11.w).x;
                            r22.y = r23.x * 0.125 + r22.y;
                            r24.x = (int)r24.x + 1;
                          }
                        } else {
                          r25.z = (uint)r14.w;
                          r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r11.w).x;
                        }
                        r11.w = r22.y * r22.y;
                        r11.w = r11.w * r22.y;
                      } else {
                        r11.w = 1;
                      }
                      r8.w = r11.w * r8.w;
                    }
                  }
                  r11.w = -abs(r9.w) * r4.z + 1;
                  r11.w = r11.w * r11.w;
                  r11.w = -r11.w * 0.620000005 + 0.620000005;
                  r11.w = r11.w + -abs(r9.w);
                  r11.w = r3.z * r11.w + abs(r9.w);
                  r11.w = r11.w * r8.w;
                  r13.w = cmp(0 < r9.w);
                  r23.xyz = r11.www * r21.xyz + r18.xyz;
                  r9.w = saturate(r9.w);
                  r20.xyz = r20.xyz * r9.zzz + r2.xyz;
                  r9.z = dot(r20.xyz, r20.xyz);
                  r9.z = rsqrt(r9.z);
                  r20.xyz = r20.xyz * r9.zzz;
                  r9.z = dot(r20.xyz, r2.xyz);
                  r11.w = dot(r7.xyz, r20.xyz);
                  r14.w = abs(r11.w) * r3.y + -abs(r11.w);
                  r11.w = abs(r11.w) * r14.w + 1;
                  r14.w = r9.w * r2.w + r3.w;
                  r11.w = r11.w * r11.w;
                  r11.w = r11.w * r14.w;
                  r11.w = rcp(r11.w);
                  r9.w = r9.w * r10.w;
                  r9.w = r11.w * r9.w;
                  r8.w = r9.w * r8.w;
                  r20.xyz = r8.www * r21.xyz + r33.xyz;
                  r9.z = saturate(1 + -r9.z);
                  r9.w = r9.z * r9.z;
                  r9.w = r9.w * r9.w;
                  r9.z = r9.z * r9.w;
                  r8.w = r9.z * r8.w;
                  r21.xyz = r8.www * r21.xyz + r32.xyz;
                  r18.xyz = r13.www ? r23.xyz : r18.xyz;
                  r32.xyz = r13.www ? r21.xyz : r32.xyz;
                  r33.xyz = r13.www ? r20.xyz : r33.xyz;
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
    r29.xyz = r18.xyz;
    r30.xyz = r32.xyz;
    r31.xyz = r33.xyz;
    r5.y = (int)r5.y + 32;
  }
  r1.xyz = r31.xyz * r5.zzz;
  r2.xyz = r30.xyz * r5.zzz;
  r3.xyz = float3(1,1,1) + -r8.xyz;
  r2.xyz = r3.xyz * r2.xyz;
  r1.xyz = r1.xyz * r8.xyz + r2.xyz;
  r1.xyz = r29.xyz * r6.xyz + r1.xyz;
  r0.y = 1 + -coolingFactor;
  r0.y = r0.w * r0.y;
  r2.xyz = r10.xyz * r0.zzz + -r11.xyz;
  r2.xyz = r0.yyy * r2.xyz + r11.xyz;
  r0.y = v1.x * r0.w;
  r0.w = r0.y * r0.x;
  r1.w = dot(r1.xyz, float3(0.298999995,0.587000012,0.114));
  r1.w = max(9.99999975e-05, r1.w);
  r1.w = max(relHDRExposure.x, r1.w);
  r3.xyz = r2.xyz * r1.www;
  r2.xyz = relativeHDR ? r3.xyz : r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.w != 0) {
    r1.w = dot(v6.xyz, v6.xyz);
    r2.x = rsqrt(r1.w);
    r2.xyz = v6.xyz * r2.xxx;
    r1.w = sqrt(r1.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r1.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r4.xy = float2(-1.44269502,-1.44269502) * r3.zw;
      r4.xy = exp2(r4.xy);
      r4.xy = float2(1,1) + -r4.xy;
      r3.zw = r4.xy / r3.zw;
      r3.zw = r3.xy * r3.zw;
      r3.xy = r2.ww ? r3.zw : r3.xy;
      r3.xzw = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
      r3.xzw = exp2(r3.xzw);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r3.xzw;
      r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xzw;
    } else {
      r2.w = r1.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.w = cmp(0.00999999978 < abs(v6.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r4.y = -1.44269502 * r4.x;
      r4.y = exp2(r4.y);
      r4.y = 1 + -r4.y;
      r4.x = r4.y / r4.x;
      r4.x = r4.x * r2.w;
      r2.w = r3.w ? r4.x : r2.w;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
      r3.xyz = exp2(r4.xyz);
    }
    r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
    r2.x = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
    r2.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.z = fogConstants.atmosphereMieSchlickK * -r2.x + 1;
    r2.z = r2.z * r2.z;
    r2.z = 12.566371 * r2.z;
    r2.y = r2.y / r2.z;
    r1.w = -fogConstants.atmospherehazebasedist + r1.w;
    r1.w = saturate(fogConstants.atmospherehazefadedist * r1.w);
    r1.w = r2.y * r1.w;
    r2.x = saturate(r2.x);
    r2.x = r2.x * r2.x + 1;
    r2.x = r2.x * 0.0596831031 + -1;
    r2.x = fogConstants.atmospheresunstrength * r2.x + 1;
    r2.yzw = fogConstants.atmosphereMieDensity.xyz * r1.www;
    r2.xyz = r2.xxx * fogConstants.atmosphereRayleighDensity.xyz + r2.yzw;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r1.xyz * r3.xyz + r2.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v6.z;
    r2.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r3.x = cmp(abs(r1.w) < 9.99999975e-05);
    r3.y = min(64, r2.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r3.w ? r3.y : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r1.w = r3.x ? 1 : r1.w;
    r1.w = r2.w / r1.w;
    r1.w = r3.x ? r3.z : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r2.w = dot(v6.xyz, v6.xyz);
    r3.x = sqrt(r2.w);
    r1.w = r1.w * r3.x + fogConstants.expAdd;
    r1.w = exp2(r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v6.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r1.w = r3.w * r1.w;
    r3.xyz = r3.xyz + -r1.xyz;
    r2.xyz = r1.www * r3.xyz + r1.xyz;
  }
  r1.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r2.xyz ? r1.xyz : 0;
  r1.xyz = min(float3(65024,65024,64512), r1.xyz);
  r2.xyz = max(float3(0,0,0), r1.xyz);
  r0.xyz = r2.xyz * r0.www;
  r1.w = (int)r0.w & 0x7f800000;
  r1.w = cmp((int)r1.w == 0x7f800000);
  r3.xyzw = cmp(r0.xyzw == float4(0,0,0,0));
  r3.xy = r3.zw ? r3.xy : 0;
  r2.w = r3.y ? r3.x : 0;
  r1.w = (int)r1.w | (int)r2.w;
  if (r1.w == 0) {
    r3.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r3.z, u6, r3.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r1.w = cmp((uint)r3.z < oitMaxEntries);
    if (r1.w != 0) {
      r1.w = max(r0.y, r0.z);
      r1.w = max(r1.w, r0.x);
      r1.w = abs(r1.w);
      r1.w = (int)r1.w & 0x7f800000;
      r1.w = (int)r1.w + 0x00800000;
      r2.xyz = r2.xyz * r0.www + r1.www;
      if (8 == 0) r2.x = 0; else if (8+15 < 32) {       r2.x = (uint)r2.x << (32-(8 + 15)); r2.x = (uint)r2.x >> (32-8);      } else r2.x = (uint)r2.x >> 15;
      r2.yz = (uint2)r2.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r2.y = (((uint)r2.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r2.z = (((uint)r2.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r2.x = (int)r2.y + (int)r2.x;
      r2.x = (int)r2.z + (int)r2.x;
      r1.w = (uint)r1.w << 1;
      r2.xzw = (int3)r1.www + (int3)r2.xxx;
      r1.w = saturate(r0.w);
      r1.w = 2046 * r1.w;
      r1.w = (uint)r1.w;
      r3.w = (uint)v0.z << 2;
      r1.w = (int)r1.w & 2046;
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.y = (((uint)r1.w << 0) & bitmask.y) | ((uint)r3.w & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r3.xyzz, r2.xyzw
      r1.w = -1;
    } else {
      r1.w = 0;
    }
  } else {
    r1.w = -1;
  }
  r0.xyz = r1.xyz * r0.www;
  o0.xyzw = r1.wwww ? float4(0,0,0,0) : r0.xyzw;
  return;
}