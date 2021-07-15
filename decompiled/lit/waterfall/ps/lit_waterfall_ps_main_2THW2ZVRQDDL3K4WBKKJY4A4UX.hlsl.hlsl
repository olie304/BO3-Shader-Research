// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:25 2021

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
  float2 wind1Parms : packoffset(c15);
  float2 wind2Parms : packoffset(c15.z);
  float2 wind3Parms : packoffset(c16);
  float3 backlightScatterColor : packoffset(c17);
  bool useAlphaControls : packoffset(c17.w);
  float zFeatherDistance : packoffset(c18);
  float falloffBegin : packoffset(c18.y);
  float falloffEnd : packoffset(c18.z);
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
Texture2D<float4> thicknessMap : register(t25);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.x = tintMask.Sample(colorSampler_s, v2.xy).x;
  r1.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r1.xxx * r1.yzw + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = cmp(0 < debugStreamerControl.w);
  if (r1.x != 0) {
    r1.x = (int)debugStreamerControl.w;
    r1.y = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r1.z = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r1.y = cmp(r1.y < r1.z);
    r1.z = cmp(0 < r1.z);
    r2.xyz = (int3)r1.xxx & int3(1,2,4);
    r3.xyz = r2.xxx ? float3(1,0,1) : r0.xyz;
    r2.xyw = r2.yyy ? float3(0,1,1) : r0.xyz;
    r1.xzw = r1.zzz ? r3.xyz : r2.xyw;
    r2.xyz = r2.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r1.yyy ? r1.xzw : r2.xyz;
  }
  r1.x = debugAlphaOverride.x + -r0.w;
  r0.w = debugAlphaOverride.w * r1.x + r0.w;
  r1.w = w1.x * r0.w;
  r0.w = cmp(r1.w == 0.000000);
  if (r0.w != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r0.w = glossRange.y + -glossRange.x;
  r2.w = saturate(0.0588235296 * glossRange.y);
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.x = dot(r2.xy, r2.xy);
  r3.x = 1 + -r3.x;
  r3.x = max(0, r3.x);
  r3.x = sqrt(r3.x);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.y = v7.x ? 1 : -1;
  r3.z = dot(v3.xyz, v3.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = v3.xyz * r3.zzz;
  r4.xyz = r4.xyz * r3.yyy;
  r3.z = dot(v4.xyz, v4.xyz);
  r3.z = rsqrt(r3.z);
  r5.xyz = v4.xyz * r3.zzz;
  r5.xyz = r5.xyz * r3.yyy;
  r3.z = dot(v5.xyz, v5.xyz);
  r3.z = rsqrt(r3.z);
  r6.xyz = v5.xyz * r3.zzz;
  r3.yzw = r6.xyz * r3.yyy;
  r2.w = -17 * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r2.z + r2.w;
  r2.w = log2(r2.w);
  r2.w = -0.0588235296 * r2.w;
  r2.w = max(0, r2.w);
  r3.yzw = r3.yzw * r2.yyy;
  r3.yzw = r5.xyz * r2.xxx + r3.yzw;
  r3.xyz = r4.xyz * r3.xxx + r3.yzw;
  r2.x = dot(r3.xyz, r3.xyz);
  r2.x = rsqrt(r2.x);
  r3.xyz = r3.xyz * r2.xxx;
  r0.w = debugGlossOverride.x * r0.w + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.z + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.w = max(0, r0.w);
  r2.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r2.xyz + r0.xyz;
  r0.w = r0.w + -r2.w;
  r2.y = debugGlossOverride.w * r0.w + r2.w;
  r0.w = -1 + debugOcclusionOverride.x;
  r0.w = debugOcclusionOverride.w * r0.w + 1;
  r4.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r2.z = dot(r4.xyz, r4.xyz);
  r2.z = rsqrt(r2.z);
  r4.xyz = r4.xyz * r2.zzz + -r3.xyz;
  r3.xyz = debugNormalOverride.www * r4.xyz + r3.xyz;
  r2.z = thicknessMap.Sample(colorSampler_s, v2.xy).x;
  r4.xyz = backlightScatterColor.xyz * r0.xyz;
  r2.z = 1 + -r2.z;
  r4.xyz = r4.xyz * r2.zzz;
  r4.xyz = r4.xyz * r0.xyz;
  if (useAlphaControls != 0) {
    r2.z = dot(-v6.xyz, -v6.xyz);
    r2.z = rsqrt(r2.z);
    r5.xyz = -v6.xyz * r2.zzz;
    r2.z = dot(r5.xyz, v3.xyz);
    r2.z = r2.z * r2.z;
    r2.z = saturate(r2.z * w2.x + w2.y);
    r2.z = r2.z * r1.w;
    r5.xy = (int2)v0.xy;
    r5.zw = float2(0,0);
    r2.w = floatZSampler.Load(r5.xyz).x;
    r4.w = cmp(r2.w >= 0.984375);
    r5.x = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r4.w ? r2.w : r5.x;
    r2.w = max(9.99999994e-09, r2.w);
    r2.w = rcp(r2.w);
    r4.w = cmp(v0.z >= 0.984375);
    r5.x = 1.01587307 * v0.z;
    r5.y = v0.z * 64 + -63;
    r4.w = r4.w ? r5.y : r5.x;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.x = cmp(zFeatherDistance == 0.000000);
    r5.y = 1 / zFeatherDistance;
    r5.x = r5.x ? 60000 : r5.y;
    r2.w = -r4.w + r2.w;
    r2.w = saturate(r2.w * r5.x);
    r1.w = r2.z * r2.w;
  }
  r2.zw = (uint2)v0.xy;
  r4.w = cmp(v0.z >= 0.984375);
  r5.x = 1.01587307 * v0.z;
  r5.y = v0.z * 64 + -63;
  r4.w = r4.w ? r5.y : r5.x;
  r4.w = max(9.99999994e-09, r4.w);
  r4.w = rcp(r4.w);
  r5.x = dot(-v6.xyz, -v6.xyz);
  r5.x = rsqrt(r5.x);
  r5.yzw = -v6.xyz * r5.xxx;
  r6.x = cmp(isDepthHack != 0);
  r6.yz = (uint2)r2.wz;
  r6.w = dot(r6.zy, float2(0.0671105608,0.00583714992));
  r6.w = frac(r6.w);
  r6.w = 52.9829178 * r6.w;
  r6.w = frac(r6.w);
  r6.w = r6.w * 6.28318548 + gameTick.w;
  sincos(r6.w, r7.x, r8.x);
  r6.y = dot(r6.yz, float2(0.0671105608,0.00583714992));
  r6.y = frac(r6.y);
  r6.y = 52.9829178 * r6.y;
  r6.y = frac(r6.y);
  r6.y = r6.y * 6.28318548 + gameTick.w;
  sincos(r6.y, r9.x, r10.x);
  r2.x = saturate(dot(r3.xyz, r5.yzw));
  r6.y = dot(-r5.yzw, r3.xyz);
  r6.y = r6.y + r6.y;
  r11.xyz = r3.xyz * -r6.yyy + -r5.yzw;
  r6.y = 17 * r2.y;
  r6.y = exp2(r6.y);
  r6.y = 2 + r6.y;
  r6.y = 2 / r6.y;
  r6.z = sqrt(r6.y);
  r6.w = 1 + -r2.y;
  r7.z = 5 * r6.w;
  r7.w = r6.w * 5 + -2.5;
  r7.w = saturate(0.400000006 * r7.w);
  r7.w = 100 * r7.w;
  r9.yz = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r8.w = exp2(r9.y);
  r8.w = r8.w * r2.x;
  r8.w = 9.1368103 * r8.w;
  r9.y = r7.z * r6.w;
  r9.y = -r9.y * 2.0159049 + r9.z;
  r9.y = exp2(r9.y);
  r9.y = r9.y * r2.x;
  r9.y = 9.70808983 * r9.y;
  r8.w = max(r9.y, r8.w);
  r8.w = max(1.26815999, r8.w);
  r4.w = 0.0078125 * r4.w;
  r4.w = min(15, r4.w);
  r4.w = (uint)r4.w;
  r12.xy = (uint2)r2.zw >> int2(6,6);
  r12.z = (uint)r4.w << 4;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r2.zw = float2(0,0);
  while (true) {
    r4.w = cmp((uint)r2.w >= numRefProbes);
    if (r4.w != 0) break;
    r13.z = (uint)r2.w >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r4.w = visibleProbes.Load(r14.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r2.w, l(0), t15.wxyz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r2.w, l(16), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r2.w, l(32), t15.yxwz
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r2.w, l(48), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r2.w, l(64), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r2.w, l(80), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.yz, r2.w, l(96), t15.xxyx
  r9.y = samp0[]..swiz;
  r9.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r2.w, l(116), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r2.w, l(132), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r2.w, l(148), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r2.w, l(164), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r2.w, l(180), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r2.w, l(196), t15.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r2.w, l(212), t15.xyxx
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
    r10.yzw = v6.xyz + -r22.yzw;
    r9.w = dot(r10.yzw, r10.yzw);
    r9.w = sqrt(r9.w);
    r9.w = cmp(probeDebugRadius >= r9.w);
    r12.w = (int)r28.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(0), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(16), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(32), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(48), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(64), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(80), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
    r13.z = dot(r35.xyz, r10.yzw);
    r13.z = saturate(r13.z + r35.w);
    r13.w = dot(r36.xyz, r10.yzw);
    r13.w = saturate(r13.w + r36.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r37.xyz, r10.yzw);
    r13.w = saturate(r13.w + r37.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r38.xyz, r10.yzw);
    r13.w = saturate(r13.w + r38.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r39.xyz, r10.yzw);
    r13.w = saturate(r13.w + r39.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r40.xyz, r10.yzw);
    r13.w = saturate(r13.w + r40.w);
    r15.x = r13.z * r13.w;
    r13.z = (int)r9.y & 1;
    r13.zw = r13.zz ? r15.xy : r15.zx;
    r14.xy = r28.zw;
    r14.z = r29.z;
    r15.x = dot(r11.xyz, r14.xyz);
    r14.x = dot(r10.yzw, r14.xyz);
    r14.x = r14.x + -r29.w;
    r14.y = cmp(r14.x >= 0);
    r14.x = max(abs(r14.x), r7.w);
    r14.x = r14.y ? r14.x : -r14.x;
    r14.y = max(1.00000001e-07, -r15.x);
    r14.x = r14.x / r14.y;
    r14.x = min(131072, abs(r14.x));
    r29.z = r30.z;
    r14.y = dot(r11.xyz, r29.xyz);
    r14.z = dot(r10.yzw, r29.xyz);
    r14.z = r14.z + -r30.w;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r7.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r30.z = r31.z;
    r14.y = dot(r11.xyz, r30.xyz);
    r14.z = dot(r10.yzw, r30.xyz);
    r14.z = r14.z + -r31.w;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r7.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r31.z = r32.z;
    r14.y = dot(r11.xyz, r31.xyz);
    r14.z = dot(r10.yzw, r31.xyz);
    r14.z = r14.z + -r32.w;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r7.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r32.z = r33.x;
    r14.y = dot(r11.xyz, r32.xyz);
    r14.z = dot(r10.yzw, r32.xyz);
    r14.z = r14.z + -r33.y;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r7.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r34.zw = r33.zw;
    r14.y = dot(r11.zxy, r34.xzw);
    r14.z = dot(r10.wyz, r34.xzw);
    r14.z = r14.z + -r34.y;
    r15.x = cmp(r14.z >= 0);
    r14.z = max(abs(r14.z), r7.w);
    r14.z = r15.x ? r14.z : -r14.z;
    r14.y = max(1.00000001e-07, -r14.y);
    r14.y = r14.z / r14.y;
    r14.x = min(r14.x, abs(r14.y));
    r29.x = r25.w;
    r29.yz = r26.zw;
    r29.xyz = r29.xyz + r10.yzw;
    r29.xyz = r11.xyz * r14.xxx + r29.xyz;
    r14.y = dot(r29.xyz, r29.xyz);
    r14.y = sqrt(r14.y);
    r14.x = r14.x / r14.y;
    r14.x = r14.x + r14.x;
    r14.x = sqrt(r14.x);
    r14.x = r6.w * 5 + r14.x;
    r14.x = -0.844799995 + r14.x;
    r22.y = r23.z;
    r22.z = r24.x;
    r30.x = dot(r29.xyz, r22.xyz);
    r31.xy = r23.xw;
    r31.z = r24.w;
    r30.y = dot(r29.xyz, r31.xyz);
    r24.x = r23.y;
    r30.z = dot(r29.xyz, r24.xyz);
    if (6 == 0) r14.y = 0; else if (6+25 < 32) {     r14.y = (uint)r28.y << (32-(6 + 25)); r14.y = (uint)r14.y >> (32-6);    } else r14.y = (uint)r28.y >> 25;
    if (9 == 0) r14.z = 0; else if (9+16 < 32) {     r14.z = (uint)r28.y << (32-(9 + 16)); r14.z = (uint)r14.z >> (32-9);    } else r14.z = (uint)r28.y >> 16;
    r30.w = (uint)r14.z;
    r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r14.x).xyz;
    r28.yzw = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r14.x = (int)r28.z | (int)r28.y;
    r14.x = (int)r28.w | (int)r14.x;
    r23.xyz = r14.xxx ? float3(1,1,0) : r23.xyz;
    r29.x = dot(r10.yzw, r22.xyz);
    r29.y = dot(r10.yzw, r31.xyz);
    r29.z = dot(r10.yzw, r24.xyz);
    r25.xyz = saturate(r29.xyz * r25.xyz + float3(0.5,0.5,0.5));
    r26.z = r27.x;
    r25.xyz = r25.xyz * r26.xyz + r27.yzw;
    r30.x = dot(r3.xyz, r22.xyz);
    r30.y = dot(r3.xyz, r31.xyz);
    r30.z = dot(r3.xyz, r24.xyz);
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
    r14.x = (int)r28.z | (int)r28.y;
    r14.x = (int)r28.w | (int)r14.x;
    r27.xyz = r14.xxx ? float3(1,1,0) : r27.xyz;
    r29.xyzw = r20.xyzw;
    r28.yzw = r21.yzw;
    r14.x = r2.z;
    r14.z = r4.w;
    while (true) {
      if (r14.z == 0) break;
      r15.x = firstbitlow((uint)r14.z);
      r15.x = 1 << (int)r15.x;
      r15.w = (int)r14.z & (int)r15.x;
      if (r15.w != 0) {
        r15.x = ~(int)r15.x;
        r14.z = (int)r14.z & (int)r15.x;
        if (r9.w != 0) {
          r15.x = r9.y;
          r30.xy = r13.zw;
          r15.w = 1;
          while (true) {
            r16.z = cmp((int)r15.w >= (int)r14.y);
            if (r16.z != 0) break;
            r16.z = (int)r12.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.z, l(0), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(16), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(32), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(48), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(64), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r16.z, l(80), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
            r16.z = dot(r31.xyz, r10.yzw);
            r16.z = saturate(r16.z + r31.w);
            r16.z = r30.x * r16.z;
            r16.w = dot(r32.xyz, r10.yzw);
            r16.w = saturate(r16.w + r32.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r33.xyz, r10.yzw);
            r16.w = saturate(r16.w + r33.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r34.xyz, r10.yzw);
            r16.w = saturate(r16.w + r34.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r35.xyz, r10.yzw);
            r16.w = saturate(r16.w + r35.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r36.xyz, r10.yzw);
            r16.w = saturate(r16.w + r36.w);
            r30.x = r16.z * r16.w;
            r17.z = (uint)r15.x >> 2;
            if (1 == 0) r17.w = 0; else if (1+2 < 32) {             r17.w = (uint)r15.x << (32-(1 + 2)); r17.w = (uint)r17.w >> (32-1);            } else r17.w = (uint)r15.x >> 2;
            r18.z = (int)r17.z & 2;
            r18.w = max(r30.y, r30.x);
            r16.z = -r16.z * r16.w + 1;
            r16.z = r30.y * r16.z;
            r19.y = r18.z ? r16.z : r18.w;
            r30.xy = r17.ww ? r30.xy : r19.xy;
            r15.w = (int)r15.w + 1;
            r15.x = r17.z;
          }
          r30.y = saturate(r30.y);
          r15.x = r30.y * r9.z;
          r15.w = cmp(0 < r15.x);
          if (r15.w != 0) {
            r31.z = r30.y * r9.z + r28.w;
            r15.x = r15.x * r28.x;
            r19.yzw = r26.xyz * r15.xxx;
            r30.xzw = r22.xyw * r19.zzz;
            r30.xzw = r24.xyz * r19.yyy + r30.xzw;
            r19.yzw = r25.xyz * r19.www + r30.xzw;
            r30.xzw = r19.yzw * r27.xyz;
            r15.w = dot(r30.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r32.xyz = r19.yzw * r27.xyz + r29.xyz;
            r16.z = r15.w * r8.w;
            r19.yzw = r23.xyz * r15.xxx;
            r15.x = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r15.x = r8.w * r15.w + r15.x;
            r15.x = r16.z / r15.x;
            r33.x = r29.w;
            r33.yz = r28.yz;
            r31.xyw = r19.zwy * r15.xxx + r33.yzx;
            r32.w = r31.w;
          } else {
            r32.xyzw = r29.xyzw;
            r31.xyz = r28.yzw;
          }
          r14.x = -1;
          r29.xyzw = r32.xyzw;
          r28.yzw = r31.xyz;
          break;
        }
      }
    }
    if (r14.x != 0) {
      r20.xyzw = r29.xyzw;
      r21.yzw = r28.yzw;
      r2.z = -1;
      break;
    }
    r2.w = (int)r2.w + 32;
    r20.xyzw = r29.xyzw;
    r21.yzw = r28.yzw;
    r2.z = r14.x;
  }
  if (r2.z == 0) {
    r2.z = numRefProbes + -numOverrideProbes;
    r2.w = (int)r2.z & -32;
    r4.w = (int)-r2.w + (int)r2.z;
    r9.y = numRefProbes & -32;
    r9.z = (int)-r9.y + numRefProbes;
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.xyzw = r20.xyzw;
    r23.yzw = r21.yzw;
    r9.w = r2.w;
    while (true) {
      r10.y = cmp((uint)r9.w >= numRefProbes);
      if (r10.y != 0) break;
      r13.z = (uint)r9.w >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r10.y = visibleProbes.Load(r14.xyzw).x;
      r10.z = cmp((int)r2.w == (int)r9.w);
      bitmask.w = ((~(-1 << r4.w)) << 0) & 0xffffffff;  r10.w = (((uint)0 << 0) & bitmask.w) | ((uint)r10.y & ~bitmask.w);
      r10.y = r10.z ? r10.w : r10.y;
      r10.z = cmp((int)r9.y == (int)r9.w);
      if (r9.z == 0) r10.w = 0; else if (r9.z+0 < 32) {       r10.w = (uint)r10.y << (32-(r9.z + 0)); r10.w = (uint)r10.w >> (32-r9.z);      } else r10.w = (uint)r10.y >> 0;
      r10.y = r10.z ? r10.w : r10.y;
      r10.z = (int)r9.w + numLights;
      r24.xyzw = r22.xyzw;
      r25.xyz = r23.yzw;
      r10.w = r10.y;
      while (true) {
        if (r10.w == 0) break;
        r12.w = firstbitlow((uint)r10.w);
        r13.z = 1 << (int)r12.w;
        r13.w = (int)r10.w & (int)r13.z;
        if (r13.w != 0) {
          r10.w = (int)r10.w ^ (int)r13.z;
          r13.z = (int)r10.z + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r13.z, l(0), t11.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r13.z, l(16), t11.xyxx
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
          r26.xyz = -v6.xyz + r26.xyz;
          r14.z = r26.w;
          r14.xyz = cmp(abs(r26.xyz) < r14.zxy);
          r13.z = r14.y ? r14.x : 0;
          r13.z = r14.z ? r13.z : 0;
          if (r13.z != 0) {
            r12.w = (int)r9.w + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(0), t15.wxyz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r12.w, l(96), t15.xxxy
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r14.xyz = v6.xyz + -r26.yzw;
            r15.w = (int)r27.w & 0x0000ffff;
            if (6 == 0) r16.w = 0; else if (6+25 < 32) {             r16.w = (uint)r27.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);            } else r16.w = (uint)r27.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r17.z = dot(r28.xyz, r14.xyz);
            r17.z = saturate(r17.z + r28.w);
            r17.w = dot(r29.xyz, r14.xyz);
            r17.w = saturate(r17.w + r29.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r30.xyz, r14.xyz);
            r17.w = saturate(r17.w + r30.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r31.xyz, r14.xyz);
            r17.w = saturate(r17.w + r31.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r32.xyz, r14.xyz);
            r17.w = saturate(r17.w + r32.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r33.xyz, r14.xyz);
            r17.w = saturate(r17.w + r33.w);
            r15.x = r17.z * r17.w;
            r17.z = (int)r13.z & 1;
            r17.zw = r17.zz ? r15.xy : r15.zx;
            r15.x = r13.z;
            r28.xy = r17.zw;
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
              r19.w = dot(r29.xyz, r14.xyz);
              r19.w = saturate(r19.w + r29.w);
              r19.w = r28.x * r19.w;
              r26.w = dot(r30.xyz, r14.xyz);
              r26.w = saturate(r26.w + r30.w);
              r19.w = r26.w * r19.w;
              r26.w = dot(r31.xyz, r14.xyz);
              r26.w = saturate(r26.w + r31.w);
              r19.w = r26.w * r19.w;
              r26.w = dot(r32.xyz, r14.xyz);
              r26.w = saturate(r26.w + r32.w);
              r19.w = r26.w * r19.w;
              r26.w = dot(r33.xyz, r14.xyz);
              r26.w = saturate(r26.w + r33.w);
              r19.w = r26.w * r19.w;
              r26.w = dot(r34.xyz, r14.xyz);
              r26.w = saturate(r26.w + r34.w);
              r28.x = r26.w * r19.w;
              r28.z = (uint)r15.x >> 2;
              if (1 == 0) r28.w = 0; else if (1+2 < 32) {               r28.w = (uint)r15.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);              } else r28.w = (uint)r15.x >> 2;
              r29.x = (int)r28.z & 2;
              r29.y = max(r28.y, r28.x);
              r19.w = -r19.w * r26.w + 1;
              r19.w = r28.y * r19.w;
              r17.y = r29.x ? r19.w : r29.y;
              r28.xy = r28.ww ? r28.xy : r17.xy;
              r18.w = (int)r18.w + 1;
              r15.x = r28.z;
            }
            r28.y = saturate(r28.y);
            r13.z = r28.y * r13.w;
            r15.x = cmp(0 < r13.z);
            if (r15.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(16), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r12.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r25.z = r28.y * r13.w + r25.z;
              r12.w = r13.z * r27.z;
              r27.z = r34.z;
              r13.z = dot(r11.xyz, r27.xyz);
              r13.w = dot(r14.xyz, r27.xyz);
              r13.w = r13.w + -r34.w;
              r15.x = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r7.w);
              r13.w = r15.x ? r13.w : -r13.w;
              r13.z = max(1.00000001e-07, -r13.z);
              r13.z = r13.w / r13.z;
              r13.z = min(131072, abs(r13.z));
              r34.z = r35.z;
              r13.w = dot(r11.xyz, r34.xyz);
              r15.x = dot(r14.xyz, r34.xyz);
              r15.x = r15.x + -r35.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r7.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r35.z = r36.z;
              r13.w = dot(r11.xyz, r35.xyz);
              r15.x = dot(r14.xyz, r35.xyz);
              r15.x = r15.x + -r36.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r7.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r36.z = r37.z;
              r13.w = dot(r11.xyz, r36.xyz);
              r15.x = dot(r14.xyz, r36.xyz);
              r15.x = r15.x + -r37.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r7.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r37.z = r38.x;
              r13.w = dot(r11.xyz, r37.xyz);
              r15.x = dot(r14.xyz, r37.xyz);
              r15.x = r15.x + -r38.y;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r7.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r39.zw = r38.zw;
              r13.w = dot(r11.zxy, r39.xzw);
              r15.x = dot(r14.zxy, r39.xzw);
              r15.x = r15.x + -r39.y;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r7.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r15.x / r13.w;
              r13.z = min(r13.z, abs(r13.w));
              r27.x = r31.w;
              r27.yz = r32.zw;
              r17.yzw = r27.xyz + r14.xyz;
              r17.yzw = r11.xyz * r13.zzz + r17.yzw;
              r13.w = dot(r17.yzw, r17.yzw);
              r13.w = sqrt(r13.w);
              r13.z = r13.z / r13.w;
              r13.z = r13.z + r13.z;
              r13.z = sqrt(r13.z);
              r13.z = r6.w * 5 + r13.z;
              r13.z = -0.844799995 + r13.z;
              r26.y = r29.z;
              r26.z = r30.x;
              r34.x = dot(r17.yzw, r26.xyz);
              r27.xy = r29.xw;
              r27.z = r30.w;
              r34.y = dot(r17.yzw, r27.xyz);
              r30.x = r29.y;
              r34.z = dot(r17.yzw, r30.xyz);
              if (9 == 0) r13.w = 0; else if (9+16 < 32) {               r13.w = (uint)r27.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);              } else r13.w = (uint)r27.w >> 16;
              r34.w = (uint)r13.w;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r13.z).xyz;
              r28.xzw = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
              r28.xzw = cmp((int3)r28.xzw == int3(2139095040,2139095040,2139095040));
              r13.z = (int)r28.z | (int)r28.x;
              r13.z = (int)r28.w | (int)r13.z;
              r17.yzw = r13.zzz ? float3(1,1,0) : r17.yzw;
              r29.x = dot(r14.xyz, r26.xyz);
              r29.y = dot(r14.xyz, r27.xyz);
              r29.z = dot(r14.xyz, r30.xyz);
              r14.xyz = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r14.xyz = r14.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r3.xyz, r26.xyz);
              r34.y = dot(r3.xyz, r27.xyz);
              r34.z = dot(r3.xyz, r30.xyz);
              r26.xyz = cmp(float3(0,0,0) < r34.xyz);
              r16.z = r26.x ? 0 : 0.5;
              r27.xyz = r16.xyz + r14.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r28.xzw = r34.xyz * r34.xyz;
              r28.xzw = r28.xzw * r12.www;
              r18.z = r26.y ? 0 : 0.5;
              r26.xyw = r18.xyz + r14.xyz;
              r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
              r26.xyw = r26.xyw * r28.zzz;
              r26.xyw = r27.xyz * r28.xxx + r26.xyw;
              r19.z = r26.z ? 0 : 0.5;
              r14.xyz = r19.xyz + r14.xyz;
              r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
              r14.xyz = r14.xyz * r28.www + r26.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
              r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
              r13.z = (int)r27.y | (int)r27.x;
              r13.z = (int)r27.z | (int)r13.z;
              r26.xyz = r13.zzz ? float3(1,1,0) : r26.xyz;
              r27.xyz = r26.xyz * r14.xyz;
              r13.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.xyz = r14.xyz * r26.xyz + r24.xyz;
              r13.w = r13.z * r8.w;
              r14.xyz = r17.yzw * r12.www;
              r12.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r12.w = r8.w * r13.z + r12.w;
              r12.w = r13.w / r12.w;
              r26.x = r24.w;
              r26.yz = r25.xy;
              r25.xyw = r14.yzx * r12.www + r26.yzx;
              r24.w = r25.w;
            }
          }
        }
      }
      r22.xyzw = r24.xyzw;
      r23.yzw = r25.xyz;
      r9.w = (int)r9.w + 32;
    }
    r9.y = cmp(r23.w < 1);
    if (r9.y != 0) {
      r13.xy = float2(0,0);
      r14.w = 0;
      r15.yz = float2(0,1);
      r16.xy = float2(0,0);
      r17.x = 1;
      r18.xy = float2(0,0);
      r19.xy = float2(0,0);
      r24.x = r22.w;
      r24.yzw = r23.yzw;
      r9.yzw = r22.xyz;
      r10.y = r23.w;
      r10.z = 0;
      while (true) {
        r10.w = cmp((uint)r10.z >= (uint)r2.z);
        if (r10.w != 0) break;
        r13.z = (uint)r10.z >> 5;
        r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
        r10.w = visibleProbes.Load(r14.xyzw).x;
        r12.w = cmp((int)r2.w == (int)r10.z);
        if (r4.w == 0) r13.z = 0; else if (r4.w+0 < 32) {         r13.z = (uint)r10.w << (32-(r4.w + 0)); r13.z = (uint)r13.z >> (32-r4.w);        } else r13.z = (uint)r10.w >> 0;
        r10.w = r12.w ? r13.z : r10.w;
        r12.w = (int)r10.z + numLights;
        r25.xyzw = r24.xyzw;
        r14.xyz = r9.yzw;
        r13.z = r10.y;
        r13.w = r10.w;
        while (true) {
          if (r13.w == 0) break;
          r15.w = firstbitlow((uint)r13.w);
          r16.w = 1 << (int)r15.w;
          r17.z = (int)r13.w & (int)r16.w;
          if (r17.z != 0) {
            r13.w = (int)r13.w ^ (int)r16.w;
            r16.w = (int)r12.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(0), t11.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xy, r16.w, l(16), t11.xyxx
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
            r26.xyz = -v6.xyz + r26.xyz;
            r27.z = r26.w;
            r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
            r16.w = r26.y ? r26.x : 0;
            r16.w = r26.z ? r16.w : 0;
            if (r16.w != 0) {
              r15.w = (int)r10.z + (int)r15.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r15.w, l(0), t15.wxyz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r15.w, l(96), t15.xxxy
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(116), t15.zwxy
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r28.xyz = v6.xyz + -r26.yzw;
              r16.w = (int)r27.w & 0x0000ffff;
              if (6 == 0) r18.w = 0; else if (6+25 < 32) {               r18.w = (uint)r27.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);              } else r18.w = (uint)r27.w >> 25;
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
              r19.w = dot(r29.xyz, r28.xyz);
              r19.w = saturate(r19.w + r29.w);
              r21.w = dot(r30.xyz, r28.xyz);
              r21.w = saturate(r21.w + r30.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r31.xyz, r28.xyz);
              r21.w = saturate(r21.w + r31.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r32.xyz, r28.xyz);
              r21.w = saturate(r21.w + r32.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r33.xyz, r28.xyz);
              r21.w = saturate(r21.w + r33.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r34.xyz, r28.xyz);
              r21.w = saturate(r21.w + r34.w);
              r15.x = r21.w * r19.w;
              r19.w = (int)r17.z & 1;
              r29.xy = r19.ww ? r15.xy : r15.zx;
              r15.x = r17.z;
              r30.xy = r29.xy;
              r19.w = 1;
              while (true) {
                r21.w = cmp((int)r19.w >= (int)r18.w);
                if (r21.w != 0) break;
                r21.w = (int)r16.w + (int)r19.w;
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
                r21.w = dot(r31.xyz, r28.xyz);
                r21.w = saturate(r21.w + r31.w);
                r21.w = r30.x * r21.w;
                r26.w = dot(r32.xyz, r28.xyz);
                r26.w = saturate(r26.w + r32.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r33.xyz, r28.xyz);
                r26.w = saturate(r26.w + r33.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r34.xyz, r28.xyz);
                r26.w = saturate(r26.w + r34.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r35.xyz, r28.xyz);
                r26.w = saturate(r26.w + r35.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r36.xyz, r28.xyz);
                r26.w = saturate(r26.w + r36.w);
                r30.x = r26.w * r21.w;
                r28.w = (uint)r15.x >> 2;
                if (1 == 0) r29.z = 0; else if (1+2 < 32) {                 r29.z = (uint)r15.x << (32-(1 + 2)); r29.z = (uint)r29.z >> (32-1);                } else r29.z = (uint)r15.x >> 2;
                r29.w = (int)r28.w & 2;
                r30.z = max(r30.y, r30.x);
                r21.w = -r21.w * r26.w + 1;
                r21.w = r30.y * r21.w;
                r17.y = r29.w ? r21.w : r30.z;
                r30.xy = r29.zz ? r30.xy : r17.xy;
                r19.w = (int)r19.w + 1;
                r15.x = r28.w;
              }
              r15.x = saturate(r30.y + -r13.z);
              r16.w = r15.x * r17.w;
              r17.y = cmp(0 < r16.w);
              if (r17.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(16), t15.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(32), t15.yxwz
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(48), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(64), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(80), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(132), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(148), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(164), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r15.w, l(180), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r15.w, l(196), t15.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r15.w, l(212), t15.xyxx
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
                r25.w = r15.x * r17.w + r25.w;
                r15.x = r16.w * r27.z;
                r27.z = r35.z;
                r15.w = dot(r11.xyz, r27.xyz);
                r16.w = dot(r28.xyz, r27.xyz);
                r16.w = r16.w + -r35.w;
                r17.y = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r7.w);
                r16.w = r17.y ? r16.w : -r16.w;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.w / r15.w;
                r15.w = min(131072, abs(r15.w));
                r35.z = r36.z;
                r16.w = dot(r11.xyz, r35.xyz);
                r17.y = dot(r28.xyz, r35.xyz);
                r17.y = r17.y + -r36.w;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r7.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r36.z = r37.z;
                r16.w = dot(r11.xyz, r36.xyz);
                r17.y = dot(r28.xyz, r36.xyz);
                r17.y = r17.y + -r37.w;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r7.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r37.z = r38.z;
                r16.w = dot(r11.xyz, r37.xyz);
                r17.y = dot(r28.xyz, r37.xyz);
                r17.y = r17.y + -r38.w;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r7.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r38.z = r39.x;
                r16.w = dot(r11.xyz, r38.xyz);
                r17.y = dot(r28.xyz, r38.xyz);
                r17.y = r17.y + -r39.y;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r7.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r40.zw = r39.zw;
                r16.w = dot(r11.zxy, r40.xzw);
                r17.y = dot(r28.zxy, r40.xzw);
                r17.y = r17.y + -r40.y;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r7.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r27.x = r32.w;
                r27.yz = r33.zw;
                r17.yzw = r27.xyz + r28.xyz;
                r17.yzw = r11.xyz * r15.www + r17.yzw;
                r16.w = dot(r17.yzw, r17.yzw);
                r16.w = sqrt(r16.w);
                r15.w = r15.w / r16.w;
                r15.w = r15.w + r15.w;
                r15.w = sqrt(r15.w);
                r15.w = r6.w * 5 + r15.w;
                r15.w = -0.844799995 + r15.w;
                r26.y = r29.z;
                r26.z = r31.x;
                r35.x = dot(r17.yzw, r26.xyz);
                r27.xy = r29.xw;
                r27.z = r31.w;
                r35.y = dot(r17.yzw, r27.xyz);
                r31.x = r29.y;
                r35.z = dot(r17.yzw, r31.xyz);
                if (9 == 0) r16.w = 0; else if (9+16 < 32) {                 r16.w = (uint)r27.w << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);                } else r16.w = (uint)r27.w >> 16;
                r35.w = (uint)r16.w;
                r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r15.w).xyz;
                r29.xyz = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r15.w = (int)r29.y | (int)r29.x;
                r15.w = (int)r29.z | (int)r15.w;
                r17.yzw = r15.www ? float3(1,1,0) : r17.yzw;
                r29.x = dot(r28.xyz, r26.xyz);
                r29.y = dot(r28.xyz, r27.xyz);
                r29.z = dot(r28.xyz, r31.xyz);
                r28.xyz = saturate(r29.xyz * r32.xyz + float3(0.5,0.5,0.5));
                r33.z = r34.x;
                r28.xyz = r28.xyz * r33.xyz + r34.yzw;
                r35.x = dot(r3.xyz, r26.xyz);
                r35.y = dot(r3.xyz, r27.xyz);
                r35.z = dot(r3.xyz, r31.xyz);
                r26.xyz = cmp(float3(0,0,0) < r35.xyz);
                r16.z = r26.x ? 0 : 0.5;
                r27.xyz = r28.xyz + r16.xyz;
                r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r29.xyz = r35.xyz * r35.xyz;
                r29.xyz = r29.xyz * r15.xxx;
                r18.z = r26.y ? 0 : 0.5;
                r26.xyw = r28.xyz + r18.xyz;
                r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
                r26.xyw = r26.xyw * r29.yyy;
                r26.xyw = r27.xyz * r29.xxx + r26.xyw;
                r19.z = r26.z ? 0 : 0.5;
                r27.xyz = r28.xyz + r19.xyz;
                r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r26.xyz = r27.xyz * r29.zzz + r26.xyw;
                r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
                r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r15.w = (int)r28.y | (int)r28.x;
                r15.w = (int)r28.z | (int)r15.w;
                r27.xyz = r15.www ? float3(1,1,0) : r27.xyz;
                r28.xyz = r27.xyz * r26.xyz;
                r15.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r14.xyz = r26.xyz * r27.xyz + r14.xyz;
                r16.z = r15.w * r8.w;
                r17.yzw = r17.yzw * r15.xxx;
                r15.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r15.x = r8.w * r15.w + r15.x;
                r15.x = r16.z / r15.x;
                r25.xyz = r17.yzw * r15.xxx + r25.xyz;
              }
            }
          }
        }
        r24.xyzw = r25.xyzw;
        r9.yzw = r14.xyz;
        r10.z = (int)r10.z + 32;
      }
      r23.xyzw = r24.zxyw;
      r22.xyz = r9.yzw;
      r23.xyzw = r23.yzxw;
    } else {
      r23.x = r22.w;
    }
    r2.z = max(1, r23.w);
    r2.z = rcp(r2.z);
    r23.w = saturate(r23.w);
    r20.xyz = r22.xyz * r2.zzz;
    r21.xyz = r23.xyz * r2.zzz;
    r2.w = cmp(r23.w < 0.99000001);
    if (r2.w != 0) {
      r2.w = 1 + -r23.w;
      r4.w = sunConstants.globalProbeExposure * r2.w;
      r9.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
      r13.x = globalProbeConstants.data[0].w * r9.y;
      r13.yz = globalProbeConstants.data[1].xy * r9.zw;
      r9.yzw = saturate(float3(0.5,0.5,0.5) + r13.xyz);
      r13.xy = globalProbeConstants.data[1].zw * r9.yz;
      r13.z = globalProbeConstants.data[2].x * r9.w;
      r9.yzw = globalProbeConstants.data[2].yzw + r13.xyz;
      r10.yzw = cmp(float3(0,0,0) < r3.xyz);
      r13.xyz = r10.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r13.w = 0;
      r10.yzw = r13.wwx + r9.yzw;
      r10.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
      r14.xyz = r3.xyz * r3.xyz;
      r14.xyz = r14.xyz * r4.www;
      r15.xyz = r13.wwy + r9.yzw;
      r15.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r15.xyz = r15.xyz * r14.yyy;
      r10.yzw = r10.yzw * r14.xxx + r15.xyz;
      r9.yzw = r13.wwz + r9.yzw;
      r9.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
      r9.yzw = r9.yzw * r14.zzz + r10.yzw;
      r3.w = 0;
      r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
      r9.yzw = r10.yzw * r9.yzw;
      r3.w = dot(r9.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r20.xyz = r22.xyz * r2.zzz + r9.yzw;
      r11.w = 0;
      r9.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r7.z).xyz;
      r2.z = sunConstants.globalProbeExposure * r2.w + -r3.w;
      r2.z = r2.y * r2.z + r3.w;
      r21.xyz = r9.yzw * r2.zzz + r21.xyz;
    }
  } else {
    r21.x = r20.w;
  }
  r2.z = r2.x + r0.w;
  r2.z = log2(abs(r2.z));
  r2.z = r6.z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r2.z + r0.w;
  r2.z = saturate(-1 + r2.z);
  r13.xyz = r20.yzx * r0.www;
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r9.yzw = r21.xyz * r2.zzz;
  r10.yzw = r9.yzw * r2.yyy;
  r14.xyz = r9.yzw * r2.www;
  r0.w = sqrt(r6.z);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r2.y = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r2.z = r2.x * r0.w + r2.y;
  r0.w = r2.z * r0.w;
  r2.y = r2.y * r2.z;
  r2.z = dot(r3.xyz, sunConstants.wldDir.xyz);
  r2.w = cmp(0 >= abs(r2.z));
  if (r2.w != 0) {
    r3.w = 0;
  }
  if (r2.w == 0) {
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r9.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
    r9.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
    r2.w = -sunConstants.splitDepthOffset + r9.w;
    r2.w = -r2.w * 6.10351563e-05 + 1;
    r4.w = saturate(r2.w);
    r4.w = cmp(r2.w == r4.w);
    if (r4.w != 0) {
      r4.w = 0;
      r6.w = 0;
      while (true) {
        r7.z = cmp(r4.w >= 3);
        if (r7.z != 0) break;
        r7.z = (uint)r4.w;
        r15.xy = -sunConstants.splitPinTransform[r7.z].xy + r9.yz;
        r7.w = max(abs(r15.x), abs(r15.y));
        r6.w = sunConstants.splitPinTransform[r7.z].z * r7.w;
        r7.z = cmp(r6.w < 1);
        if (r7.z != 0) {
          break;
        }
        r4.w = 1 + r4.w;
        r6.w = 0;
      }
    } else {
      r4.w = 3;
      r6.w = 0;
    }
    r7.z = cmp(r4.w >= 3);
    if (r7.z != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r9.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r16.xy = floor(r16.xy);
      r7.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r7.w = r7.w * sunConstants.sstLightingConstants.coordScale + r16.x;
      r7.w = (uint)r7.w;
      r7.w = (int)r7.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(0), t23.xxxx
    r8.w = samp0[]..swiz;
      r11.w = (int)r8.w & 0x40000000;
      r12.w = (uint)r8.w << 2;
      if (r11.w == 0) {
        r11.w = (int)r8.w & 0x01ffffff;
        r16.x = (int)r7.w + (int)r11.w;
        r7.w = (uint)r8.w >> 25;
        r7.w = (uint)r7.w;
        r15.xyz = r15.xyz * r7.www;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r17.xy = (uint2)r15.zy >> int2(6,6);
        r7.w = (int)r16.z & 0xc0000000;
        r8.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(0), t23.xxxx
      r8.w = samp0[]..swiz;
        r8.w = r17.y ? r16.z : r8.w;
        r11.w = (uint)r8.w >> 13;
        r8.w = r17.x ? r11.w : r8.w;
        r8.w = (int)r8.w & 8191;
        r17.x = (int)r8.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r17.xyz = r7.www ? r16.xyz : r17.xyz;
        r18.yz = r7.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r15.zy >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r8.w = (int)r17.z & 0xc0000000;
        r11.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r11.w = r19.y ? r17.z : r11.w;
        r15.w = (uint)r11.w >> 13;
        r11.w = r19.x ? r15.w : r11.w;
        r11.w = (int)r11.w & 8191;
        r18.x = (int)r11.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r17.xyz = r8.www ? r17.xyz : r18.xzw;
        r16.xyz = r7.www ? r16.xyz : r17.xyz;
        r7.w = (int)r16.z & 0xc0000000;
        if (r7.w == 0) {
          r7.w = (int)-r16.y + 6;
          r17.xy = (uint2)r15.zy >> (uint2)r7.ww;
          r7.w = (int)r16.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r8.w & ~bitmask.w);
          r8.w = (int)r8.w * 10;
          r7.w = (uint)r7.w >> (uint)r8.w;
          r7.w = (int)r7.w & 1023;
          r17.x = (int)r7.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r7.w = (int)-r17.y + 6;
          r16.yw = (uint2)r15.zy >> (uint2)r7.ww;
          r7.w = (int)r17.w & 0xc0000000;
          r8.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r16.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.w = (((uint)r16.y << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r11.w = (int)r11.w * 10;
          r8.w = (uint)r8.w >> (uint)r11.w;
          r8.w = (int)r8.w & 1023;
          r18.x = (int)r8.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r7.www ? r17.xyw : r18.xyz;
          r8.w = (int)-r18.y + 6;
          r16.yw = (uint2)r15.zy >> (uint2)r8.ww;
          r8.w = (int)r18.z & 0xc0000000;
          r11.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r16.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r16.y << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r11.w = (uint)r11.w >> (uint)r15.w;
          r11.w = (int)r11.w & 1023;
          r19.x = (int)r11.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r16.yw = r8.ww ? r18.xz : r19.xy;
          r16.xz = r7.ww ? r17.xw : r16.yw;
        }
        r7.w = (int)r16.z & 0xc0000000;
        if (r7.w == 0) {
          if (14 == 0) r8.w = 0; else if (14+15 < 32) {           r8.w = (uint)r16.z << (32-(14 + 15)); r8.w = (uint)r8.w >> (32-14);          } else r8.w = (uint)r16.z >> 15;
          r8.w = (uint)r8.w;
          r8.w = sunConstants.sstLightingConstants.constants.spanInInches * r8.w;
          r8.w = 6.10388815e-05 * r8.w;
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
          r15.x = r15.x * 0.00392156886 + r8.w;
          r15.y = (int)r17.y + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r17.z;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r11.w = r15.y * r11.w;
          r8.w = r11.w * 1.52590219e-05 + r8.w;
          r12.w = r16.w ? r15.x : r8.w;
        } else {
          r8.w = (int)r16.z & 0x80000000;
          r11.w = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          r8.w = r8.w ? r11.w : 0;
          r11.w = (uint)r16.z << 2;
          r15.x = (uint)r8.w >> 16;
          r15.x = f16tof32(r15.x);
          r8.w = (int)r8.w & 0x0000ffff;
          r8.w = f16tof32(r8.w);
          r11.w = r9.y * r15.x + r11.w;
          r8.w = r9.z * r8.w + r11.w;
          r12.w = r7.w ? r8.w : r12.w;
        }
      }
      r7.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r7.w = cmp(r12.w < r7.w);
      r3.w = r7.w ? 0 : 1;
    }
    if (r7.z == 0) {
      if (enableDitheredShadow == 0) {
        r7.z = (uint)r4.w;
        r15.xy = -sunConstants.splitPinTransform[r7.z].xy + r9.yz;
        r7.zw = sunConstants.splitPinTransform[r7.z].zz * r15.xy;
        r15.xy = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.z = (int16)sunConstants.splitArrayOffset;
        r15.z = r7.z + r4.w;
        r7.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r2.w).x;
        r7.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r7.z = r7.z + r7.w;
        r7.z = saturate(-1 + r7.z);
        r7.w = r7.z * r7.z;
        r3.w = r7.w * r7.z;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r7.x;
        r7.z = (uint)r4.w;
        r4.w = 1 + r4.w;
        r4.w = min(2, r4.w);
        r4.w = (uint)r4.w;
        r6.w = 1 + -r6.w;
        r6.w = 28 * r6.w;
        r6.w = (uint)r6.w;
        r16.xy = -sunConstants.splitPinTransform[r7.z].xy + r9.yz;
        r16.xy = sunConstants.splitPinTransform[r7.z].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.yz = -sunConstants.splitPinTransform[r4.w].xy + r9.yz;
        r9.yz = sunConstants.splitPinTransform[r4.w].zz * r9.yz;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r8.x;
        r15.z = r7.x;
        r7.w = 0;
        r8.w = 0;
        while (true) {
          r9.w = cmp((uint)r8.w >= 8);
          if (r9.w != 0) break;
          r9.w = cmp((uint)r6.w < (uint)r8.w);
          r16.zw = r9.ww ? r9.yz : r16.xy;
          r11.w = r9.w ? sunConstants.splitPinTransform[r4.w].w : sunConstants.splitPinTransform[r7.z].w;
          r9.w = r9.w ? r4.w : r7.z;
          r17.x = dot(icb[r8.w+0].yx, r15.xy);
          r17.y = dot(icb[r8.w+0].yx, r15.yz);
          r17.xy = r17.xy * r11.ww + r16.zw;
          r9.w = (int)r9.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r9.w;
          r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r2.w).x;
          r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r9.w = r11.w + r9.w;
          r9.w = saturate(-1 + r9.w);
          r7.w = r9.w * 0.125 + r7.w;
          r8.w = (int)r8.w + 1;
        }
        r2.w = r7.w * r7.w;
        r3.w = r2.w * r7.w;
      }
    }
  }
  r2.w = cmp(0 < abs(r2.z));
  if (r2.w != 0) {
    r2.w = cmp(0 < r3.w);
    if (r2.w != 0) {
      r2.w = sunConstants.specScale * r6.y;
      r2.w = 0.25 * r2.w;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v6.xyz;
        r15.w = 1;
        r4.w = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r6.w = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.x = frac(r4.w);
        r15.y = frac(r6.w);
        r4.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r4.w;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      r4.w = viewmodelSunShadowRaw >> 16;
      r6.w = cmp(0 < (uint)r4.w);
      r6.w = r6.x ? r6.w : 0;
      if (r6.w != 0) {
        r4.w = (int)r4.w + numLights;
        r4.w = (int)r4.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.w, r4.w, l(52), t12.xxxx
      r6.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.w, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.w, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r4.w, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r4.w, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r7.z = abs(r2.z) * -0.200000003 + 0.400000006;
        r7.w = cmp(r2.z < 0);
        r7.z = r7.w ? -r7.z : r7.z;
        r19.xyz = r3.xyz * r7.zzz + v6.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r7.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.zw = r7.zw + r18.zw;
        r7.zw = r7.zw * r18.xy;
        r15.xy = r6.ww / r17.xz;
        r15.zw = float2(1,1) + -r15.xy;
        r15.zw = cmp(r7.zw >= r15.zw);
        r15.xy = cmp(r15.xy >= r7.zw);
        r15.xy = (int2)r15.xy | (int2)r15.zw;
        r8.w = (int)r15.y | (int)r15.x;
        if (r8.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r4.w, l(28), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.w, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r4.w, l(164), t12.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r4.w = dot(r15.xyzw, r19.xyzw);
          r7.zw = saturate(r7.zw);
          r15.xy = r7.zw * r17.xz + r17.yw;
          r4.w = r4.w + r16.x;
          r4.w = r4.w / r16.y;
          r4.w = max(6.10351563e-05, r4.w);
          r7.z = (int)r8.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r7.x;
            r17.z = (uint)r7.z;
            r16.y = r8.x;
            r16.z = r7.x;
            r7.w = 0;
            r8.w = 0;
            while (true) {
              r11.w = cmp((int)r8.w >= 8);
              if (r11.w != 0) break;
              r18.x = dot(icb[r8.w+0].yx, r16.xy);
              r18.y = dot(icb[r8.w+0].yx, r16.yz);
              r17.xy = r18.xy * r6.ww + r15.xy;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.w).x;
              r7.w = r11.w * 0.125 + r7.w;
              r8.w = (int)r8.w + 1;
            }
          } else {
            r15.z = (uint)r7.z;
            r7.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.w).x;
          }
          r4.w = r7.w * r7.w;
          r4.w = r4.w * r7.w;
        } else {
          r4.w = 1;
        }
        r3.w = r4.w * r3.w;
      } else {
        r4.w = viewmodelSunShadowRaw & 0x0000ffff;
        r6.w = cmp(0 < (uint)r4.w);
        r7.z = ~(int)r6.x;
        r6.w = r6.w ? r7.z : 0;
        if (r6.w != 0) {
          r4.w = (int)r4.w + numLights;
          r4.w = (int)r4.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.w, r4.w, l(52), t12.xxxx
        r6.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.w, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.w, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r4.w, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r4.w, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r7.z = abs(r2.z) * -0.200000003 + 0.400000006;
          r7.w = cmp(r2.z < 0);
          r7.z = r7.w ? -r7.z : r7.z;
          r19.xyz = r3.xyz * r7.zzz + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r7.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r7.zw = r7.zw + r18.zw;
          r7.zw = r7.zw * r18.xy;
          r15.xy = r6.ww / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r7.zw >= r15.zw);
          r15.xy = cmp(r15.xy >= r7.zw);
          r15.xy = (int2)r15.xy | (int2)r15.zw;
          r8.w = (int)r15.y | (int)r15.x;
          if (r8.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r4.w, l(28), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.w, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r4.w, l(164), t12.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
            r4.w = dot(r15.xyzw, r19.xyzw);
            r7.zw = saturate(r7.zw);
            r15.xy = r7.zw * r17.xz + r17.yw;
            r4.w = r4.w + r16.x;
            r4.w = r4.w / r16.y;
            r4.w = max(6.10351563e-05, r4.w);
            r7.z = (int)r8.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r7.x;
              r17.z = (uint)r7.z;
              r16.y = r8.x;
              r16.z = r7.x;
              r7.w = 0;
              r8.w = 0;
              while (true) {
                r11.w = cmp((int)r8.w >= 8);
                if (r11.w != 0) break;
                r18.x = dot(icb[r8.w+0].yx, r16.xy);
                r18.y = dot(icb[r8.w+0].yx, r16.yz);
                r17.xy = r18.xy * r6.ww + r15.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r4.w).x;
                r7.w = r11.w * 0.125 + r7.w;
                r8.w = (int)r8.w + 1;
              }
            } else {
              r15.z = (uint)r7.z;
              r7.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.w).x;
            }
            r4.w = r7.w * r7.w;
            r4.w = r4.w * r7.w;
          } else {
            r4.w = 1;
          }
          r3.w = r4.w * r3.w;
        }
      }
      r4.w = -r2.x * 0.5 + 1;
      r4.w = -abs(r2.z) * r4.w + 1;
      r4.w = r4.w * r4.w;
      r4.w = -r4.w * 0.620000005 + 0.620000005;
      r4.w = r4.w + -abs(r2.z);
      r4.w = r6.z * r4.w + abs(r2.z);
      r4.w = r4.w * r3.w;
      r6.w = cmp(0 < r2.z);
      r15.xyz = r4.www * r9.zwy + r13.xyz;
      r2.z = saturate(r2.z);
      r16.xyz = -v6.xyz * r5.xxx + sunConstants.wldDir.xyz;
      r4.w = dot(r16.xyz, r16.xyz);
      r4.w = rsqrt(r4.w);
      r16.xyz = r16.xyz * r4.www;
      r4.w = dot(r16.xyz, r5.yzw);
      r5.x = dot(r3.xyz, r16.xyz);
      r7.z = abs(r5.x) * r6.y + -abs(r5.x);
      r5.x = abs(r5.x) * r7.z + 1;
      r7.z = r2.z * r0.w + r2.y;
      r5.x = r5.x * r5.x;
      r5.x = r5.x * r7.z;
      r5.x = rcp(r5.x);
      r2.z = r2.z * r2.w;
      r2.z = r5.x * r2.z;
      r2.z = r2.z * r3.w;
      r16.yzw = r2.zzz * r9.yzw + r14.xyz;
      r2.w = saturate(1 + -r4.w);
      r3.w = r2.w * r2.w;
      r3.w = r3.w * r3.w;
      r2.w = r3.w * r2.w;
      r2.z = r2.z * r2.w;
      r9.yzw = r2.zzz * r9.yzw + r10.yzw;
      r15.w = r13.z;
      r13.w = r15.z;
      r17.xyzw = r6.wwww ? r15.zxyw : r13.zxyw;
      r13.zw = r9.yz;
      r15.zw = r10.yz;
      r15.xyzw = r6.wwww ? r13.xyzw : r15.xyzw;
      r16.x = r9.w;
      r14.w = r10.w;
      r14.xyzw = r6.wwww ? r16.yzwx : r14.xyzw;
      r13.z = r17.w;
      r13.xy = r15.xy;
      r10.yz = r15.zw;
      r10.w = r14.w;
    } else {
      r17.xyz = r13.zxy;
    }
  } else {
    r17.xyz = r13.zxy;
  }
  r15.x = -r7.x;
  r2.z = ~(int)r6.x;
  r2.x = -r2.x * 0.5 + 1;
  r16.xy = float2(0,0);
  r18.w = 0;
  r19.xyz = v6.xyz;
  r19.w = 1;
  r20.w = 1;
  r15.z = r7.x;
  r21.w = 1;
  r22.z = 1;
  r23.w = 1;
  r15.yw = r8.xx;
  r7.y = r15.w;
  r24.w = 1;
  r8.y = r15.x;
  r8.z = r7.x;
  r25.w = 1;
  r26.x = r8.x;
  r26.y = r15.x;
  r26.z = r7.x;
  r27.x = r8.x;
  r27.y = r15.x;
  r27.z = r7.x;
  r28.x = r8.x;
  r28.y = r15.x;
  r28.z = r7.x;
  r9.yzw = r17.xyz;
  r29.xyz = r13.zxy;
  r30.xyz = r10.yzw;
  r31.xyz = r14.xyz;
  r2.w = enableDitheredShadow;
  r3.w = 0;
  while (true) {
    r4.w = cmp((uint)r3.w >= numLights);
    if (r4.w != 0) break;
    r16.z = (uint)r3.w >> 5;
    r18.xyz = (int3)r12.xyz + (int3)r16.xyz;
    r4.w = visibleLights.Load(r18.xyzw).x;
    r18.xyz = r9.yzw;
    r32.xyz = r29.xyz;
    r33.xyz = r30.xyz;
    r34.xyz = r31.xyz;
    r5.x = r2.w;
    r6.w = r4.w;
    while (true) {
      if (r6.w == 0) break;
      r7.z = firstbitlow((uint)r6.w);
      r7.w = 1 << (int)r7.z;
      r8.w = (int)r6.w & (int)r7.w;
      if (r8.w != 0) {
        r6.w = (int)r6.w ^ (int)r7.w;
        r7.z = (int)r3.w + (int)r7.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r35.xyzw, r7.z, l(0), t11.xyzw
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
      r35.z = samp0[]..swiz;
      r35.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r36.xy, r7.z, l(16), t11.xyxx
      r36.x = samp0[]..swiz;
      r36.y = samp0[]..swiz;
        r35.xyz = -v6.xyz + r35.xyz;
        r36.z = r35.w;
        r35.xyz = cmp(abs(r35.xyz) < r36.zxy);
        r7.w = r35.y ? r35.x : 0;
        r7.w = r35.z ? r7.w : 0;
        if (r7.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r7.z, l(0), t12.wxyz
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r7.z, l(16), t12.zxyw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r7.z, l(32), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r7.z, l(48), t12.xyzw
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r7.z, l(64), t12.yzwx
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r7.z, l(80), t12.xyzw
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r7.z, l(96), t12.yzwx
        r41.x = samp0[]..swiz;
        r41.y = samp0[]..swiz;
        r41.z = samp0[]..swiz;
        r41.w = samp0[]..swiz;
          if (3 == 0) r7.w = 0; else if (3+24 < 32) {           r7.w = (uint)r36.w << (32-(3 + 24)); r7.w = (uint)r7.w >> (32-3);          } else r7.w = (uint)r36.w >> 24;
          switch (r7.w) {
            case 4 :            r7.w = cmp(0 < r41.x);
            r42.xy = r40.zw;
            r42.z = r41.w;
            r43.xyz = -r42.xyz * float3(0.5,0.5,0.5) + r35.yzw;
            r44.xyz = -v6.xyz + r43.xyz;
            r8.w = dot(r42.xyz, r44.xyz);
            r11.w = saturate(-r8.w / r41.x);
            r45.xyz = r11.www * r42.xyz + r43.xyz;
            r45.xyz = r7.www ? r45.xyz : r35.yzw;
            r45.xyz = -v6.xyz + r45.xyz;
            r12.w = dot(r45.xyz, r45.xyz);
            r13.w = rsqrt(r12.w);
            r45.xyz = r45.xyz * r13.www;
            r13.w = dot(r3.xyz, r45.xyz);
            r14.w = cmp(0 < abs(r13.w));
            if (r14.w != 0) {
              r14.w = sqrt(r12.w);
              r16.z = r38.x * r38.x;
              r12.w = r16.z / r12.w;
              r12.w = min(1, r12.w);
              r16.zw = saturate(r14.ww * r37.xz + r37.yw);
              r45.xy = r16.zw * r16.zw;
              r16.zw = r16.zw * float2(-2,-2) + float2(3,3);
              r16.zw = r45.xy * r16.zw;
              r12.w = r16.z * r12.w;
              r12.w = r12.w * r16.w;
              r14.w = cmp(0 < r12.w);
              if (r14.w != 0) {
                if (3 == 0) r14.w = 0; else if (3+27 < 32) {                 r14.w = (uint)r36.w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);                } else r14.w = (uint)r36.w >> 27;
                r14.w = cmp((int)r14.w != 1);
                if (r14.w != 0) {
                  r14.w = abs(r13.w) * -0.200000003 + 0.400000006;
                  r16.z = cmp(r13.w < 0);
                  r14.w = r16.z ? -r14.w : r14.w;
                  r45.xyz = r3.xyz * r14.www + v6.xyz;
                  r45.xyz = r45.xyz + -r39.xyz;
                  r14.w = max(abs(r45.y), abs(r45.z));
                  r14.w = max(abs(r45.x), r14.w);
                  r14.w = r40.x / r14.w;
                  r14.w = r14.w + r40.y;
                  r16.z = dot(r45.xyz, r45.xyz);
                  r16.z = rsqrt(r16.z);
                  r14.w = max(6.10351563e-05, r14.w);
                  r16.w = (int)r36.w & 0x0000ffff;
                  r46.w = (uint)r16.w;
                  r16.w = 0;
                  r17.w = 0;
                  while (true) {
                    r22.w = cmp((int)r17.w >= 8);
                    if (r22.w != 0) break;
                    r47.y = dot(icb[r17.w+0].yx, r15.xy);
                    r47.z = dot(icb[r17.w+0].yx, r15.yz);
                    r47.yz = r47.yz * r38.yy;
                    r47.x = r47.y * r10.x;
                    r47.w = r47.y * r9.x;
                    r46.xyz = r45.xyz * r16.zzz + r47.xzw;
                    r22.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r46.xyzw, r14.w).x;
                    r16.w = r22.w * 0.125 + r16.w;
                    r17.w = (int)r17.w + 1;
                  }
                } else {
                  r16.w = 1;
                }
                r12.w = r16.w * r12.w;
                r14.w = cmp(0 < r12.w);
                if (r14.w != 0) {
                  r14.w = r36.x * r6.y;
                  r14.w = 0.25 * r14.w;
                  r16.z = dot(r42.xyz, r11.xyz);
                  r17.w = dot(r11.xyz, r44.xyz);
                  r22.w = -r16.z * r16.z + r41.x;
                  r8.w = r16.z * r17.w + -r8.w;
                  r8.w = saturate(r8.w / r22.w);
                  r16.z = r22.w / r41.x;
                  r16.z = 10 * r16.z;
                  r16.z = min(1, r16.z);
                  r8.w = r8.w + -r11.w;
                  r8.w = r16.z * r8.w + r11.w;
                  r42.xyz = r8.www * r42.xyz + r43.xyz;
                  r42.xyz = r7.www ? r42.xyz : r35.yzw;
                  r42.xyz = -v6.xyz + r42.xyz;
                  r7.w = dot(r42.xyz, r42.xyz);
                  r7.w = rsqrt(r7.w);
                  r43.xyz = r42.xyz * r7.www;
                  if (4 == 0) r8.w = 0; else if (4+16 < 32) {                   r8.w = (uint)r36.w << (32-(4 + 16)); r8.w = (uint)r8.w >> (32-4);                  } else r8.w = (uint)r36.w >> 16;
                  r11.w = cmp(0 < (uint)r8.w);
                  r11.w = r6.x ? r11.w : 0;
                  if (r11.w != 0) {
                    r8.w = (int)r8.w + numLights;
                    r8.w = (int)r8.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(52), t12.xxxx
                  r11.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(100), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r8.w, l(116), t12.xyzw
                  r45.x = samp0[]..swiz;
                  r45.y = samp0[]..swiz;
                  r45.z = samp0[]..swiz;
                  r45.w = samp0[]..swiz;
                    r16.z = abs(r13.w) * -0.200000003 + 0.400000006;
                    r17.w = cmp(r13.w < 0);
                    r16.z = r17.w ? -r16.z : r16.z;
                    r20.xyz = r3.xyz * r16.zzz + v6.xyz;
                    r16.z = dot(r44.xyzw, r20.xyzw);
                    r17.w = dot(r45.xyzw, r20.xyzw);
                    r22.w = cmp(r17.w < r16.z);
                    if (r22.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(68), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r8.w, l(84), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r8.w, l(132), t12.xyzw
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                    r46.z = samp0[]..swiz;
                    r46.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r8.w, l(148), t12.xyzw
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                    r47.z = samp0[]..swiz;
                    r47.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xy, r8.w, l(164), t12.xyxx
                    r48.x = samp0[]..swiz;
                    r48.y = samp0[]..swiz;
                      r44.x = dot(r44.xyzw, r20.xyzw);
                      r44.y = dot(r45.xyzw, r20.xyzw);
                      r20.xy = r44.xy / r17.ww;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r47.zw;
                      r20.xy = r20.xy * r47.xy;
                      r44.xy = r11.ww / r46.xz;
                      r44.zw = float2(1,1) + -r44.xy;
                      r44.zw = cmp(r20.xy >= r44.zw);
                      r44.xy = cmp(r44.xy >= r20.xy);
                      r44.xy = (int2)r44.xy | (int2)r44.zw;
                      r20.z = (int)r44.y | (int)r44.x;
                      r20.xy = saturate(r20.xy);
                      r44.xy = r20.xy * r46.xz + r46.yw;
                      r20.x = r48.y * r17.w;
                      r16.z = r48.x * r17.w + r16.z;
                      r16.z = r16.z / r20.x;
                    } else {
                      r20.z = -1;
                    }
                    r17.w = (int)r22.w | (int)r20.z;
                    if (r17.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(28), t12.xxxx
                    r8.w = samp0[]..swiz;
                      r16.z = max(6.10351563e-05, r16.z);
                      r8.w = (int)r8.w & 0x0000ffff;
                      if (r5.x != 0) {
                        r20.z = (uint)r8.w;
                        r17.w = 0;
                        r22.w = 0;
                        while (true) {
                          r26.w = cmp((int)r22.w >= 8);
                          if (r26.w != 0) break;
                          r45.x = dot(icb[r22.w+0].yx, r15.xw);
                          r45.y = dot(icb[r22.w+0].xy, r7.xy);
                          r20.xy = r45.xy * r11.ww + r44.xy;
                          r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r16.z).x;
                          r17.w = r20.x * 0.125 + r17.w;
                          r22.w = (int)r22.w + 1;
                        }
                      } else {
                        r44.z = (uint)r8.w;
                        r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r44.xyz, r16.z).x;
                      }
                      r8.w = r17.w * r17.w;
                      r8.w = r8.w * r17.w;
                    } else {
                      r8.w = 1;
                    }
                    r12.w = r12.w * r8.w;
                  } else {
                    if (4 == 0) r8.w = 0; else if (4+20 < 32) {                     r8.w = (uint)r36.w << (32-(4 + 20)); r8.w = (uint)r8.w >> (32-4);                    } else r8.w = (uint)r36.w >> 20;
                    r11.w = cmp(0 < (uint)r8.w);
                    r11.w = r11.w ? r2.z : 0;
                    if (r11.w != 0) {
                      r8.w = (int)r8.w + numLights;
                      r8.w = (int)r8.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(52), t12.xxxx
                    r11.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(100), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r8.w, l(116), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                      r16.z = abs(r13.w) * -0.200000003 + 0.400000006;
                      r20.x = cmp(r13.w < 0);
                      r16.z = r20.x ? -r16.z : r16.z;
                      r21.xyz = r3.xyz * r16.zzz + v6.xyz;
                      r16.z = dot(r44.xyzw, r21.xyzw);
                      r20.x = dot(r45.xyzw, r21.xyzw);
                      r20.y = cmp(r20.x < r16.z);
                      if (r20.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(68), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r8.w, l(84), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r8.w, l(132), t12.xyzw
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                      r46.z = samp0[]..swiz;
                      r46.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r8.w, l(148), t12.xyzw
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                      r47.z = samp0[]..swiz;
                      r47.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xy, r8.w, l(164), t12.xyxx
                      r48.x = samp0[]..swiz;
                      r48.y = samp0[]..swiz;
                        r44.x = dot(r44.xyzw, r21.xyzw);
                        r44.y = dot(r45.xyzw, r21.xyzw);
                        r21.xy = r44.xy / r20.xx;
                        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r21.xy = r21.xy + r47.zw;
                        r21.xy = r21.xy * r47.xy;
                        r44.xy = r11.ww / r46.xz;
                        r44.zw = float2(1,1) + -r44.xy;
                        r44.zw = cmp(r21.xy >= r44.zw);
                        r44.xy = cmp(r44.xy >= r21.xy);
                        r44.xy = (int2)r44.xy | (int2)r44.zw;
                        r20.z = (int)r44.y | (int)r44.x;
                        r21.xy = saturate(r21.xy);
                        r21.xy = r21.xy * r46.xz + r46.yw;
                        r22.w = r48.y * r20.x;
                        r16.z = r48.x * r20.x + r16.z;
                        r16.z = r16.z / r22.w;
                      } else {
                        r20.z = -1;
                      }
                      r20.x = (int)r20.y | (int)r20.z;
                      if (r20.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(28), t12.xxxx
                      r8.w = samp0[]..swiz;
                        r16.z = max(6.10351563e-05, r16.z);
                        r8.w = (int)r8.w & 0x0000ffff;
                        if (r5.x != 0) {
                          r20.z = (uint)r8.w;
                          r22.w = 0;
                          r26.w = 0;
                          while (true) {
                            r27.w = cmp((int)r26.w >= 8);
                            if (r27.w != 0) break;
                            r44.x = dot(icb[r26.w+0].xy, r8.xy);
                            r44.y = dot(icb[r26.w+0].yx, r8.xz);
                            r20.xy = r44.xy * r11.ww + r21.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r16.z).x;
                            r22.w = r20.x * 0.125 + r22.w;
                            r26.w = (int)r26.w + 1;
                          }
                        } else {
                          r21.z = (uint)r8.w;
                          r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r16.z).x;
                        }
                        r8.w = r22.w * r22.w;
                        r8.w = r8.w * r22.w;
                      } else {
                        r8.w = 1;
                      }
                      r12.w = r12.w * r8.w;
                    }
                  }
                  r8.w = -abs(r13.w) * r2.x + 1;
                  r8.w = r8.w * r8.w;
                  r8.w = -r8.w * 0.620000005 + 0.620000005;
                  r8.w = r8.w + -abs(r13.w);
                  r8.w = r6.z * r8.w + abs(r13.w);
                  r8.w = r8.w * r12.w;
                  r36.x = r35.x;
                  r11.w = cmp(0 < r13.w);
                  r20.xyz = r8.www * r36.xyz + r18.xyz;
                  r13.w = saturate(dot(r3.xyz, r43.xyz));
                  r21.xyz = r42.xyz * r7.www + r5.yzw;
                  r7.w = dot(r21.xyz, r21.xyz);
                  r7.w = rsqrt(r7.w);
                  r21.xyz = r21.xyz * r7.www;
                  r7.w = dot(r21.xyz, r5.yzw);
                  r16.z = dot(r3.xyz, r21.xyz);
                  r21.x = abs(r16.z) * r6.y + -abs(r16.z);
                  r16.z = abs(r16.z) * r21.x + 1;
                  r21.x = r13.w * r0.w + r2.y;
                  r16.z = r16.z * r16.z;
                  r16.z = r16.z * r21.x;
                  r16.z = rcp(r16.z);
                  r13.w = r13.w * r14.w;
                  r13.w = r16.z * r13.w;
                  r12.w = r13.w * r12.w;
                  r21.xyz = r12.www * r36.xyz + r34.xyz;
                  r7.w = saturate(1 + -r7.w);
                  r13.w = r7.w * r7.w;
                  r13.w = r13.w * r13.w;
                  r7.w = r13.w * r7.w;
                  r7.w = r12.w * r7.w;
                  r42.xyz = r7.www * r36.xyz + r33.xyz;
                  r43.xyz = r8.www * r36.xyz + r32.xyz;
                  r18.xyz = r11.www ? r20.xyz : r18.xyz;
                  r32.xyz = r11.www ? r32.xyz : r43.xyz;
                  r33.xyz = r11.www ? r42.xyz : r33.xyz;
                  r34.xyz = r11.www ? r21.xyz : r34.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r38.zw;
            r20.z = r39.w;
            r20.xyz = -v6.xyz + r20.xyz;
            r7.w = dot(r20.xyz, r20.xyz);
            r7.w = rsqrt(r7.w);
            r21.xyz = r20.xyz * r7.www;
            r8.w = dot(r3.xyz, r21.xyz);
            r11.w = cmp(0 < abs(r8.w));
            if (r11.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r7.z, l(112), t12.yzwx
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r7.z, l(128), t12.zxyw
            r43.x = samp0[]..swiz;
            r43.y = samp0[]..swiz;
            r43.z = samp0[]..swiz;
            r43.w = samp0[]..swiz;
              r44.xyz = r42.xyz;
              r44.w = r43.y;
              r11.w = dot(r44.xyzw, r19.xyzw);
              r12.w = cmp(r11.w < 1);
              if (r12.w != 0) {
                r21.xyz = float3(1,1,1);
                r12.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r7.z, l(172), t12.yzwx
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r7.z, l(188), t12.wxyz
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r7.z, l(204), t12.xyzw
              r47.x = samp0[]..swiz;
              r47.y = samp0[]..swiz;
              r47.z = samp0[]..swiz;
              r47.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r7.z, l(236), t12.xxxx
              r13.w = samp0[]..swiz;
                r48.xyz = -v6.xyz + r35.yzw;
                r14.w = r38.x * r38.x;
                r16.z = dot(r48.xyz, r48.xyz);
                r14.w = r14.w / r16.z;
                r14.w = min(1, r14.w);
                r37.xy = saturate(r11.ww * r37.xz + r37.yw);
                r37.zw = r37.xy * r37.xy;
                r37.xy = r37.xy * float2(-2,-2) + float2(3,3);
                r37.xy = r37.zw * r37.xy;
                r14.w = r37.x * r14.w;
                r14.w = r14.w * r37.y;
                r39.w = r40.x;
                r37.x = dot(r39.xyzw, r19.xyzw);
                r48.xyz = r40.yzw;
                r48.w = r41.w;
                r37.y = dot(r48.xyzw, r19.xyzw);
                r22.xy = r37.xy / r11.ww;
                r11.w = cmp(r45.w < 0.00048828125);
                if (r11.w != 0) {
                  r46.y = r47.x;
                  r37.xy = saturate(abs(r22.xy) * r46.zw + r46.xy);
                  r37.zw = r37.xy * r37.xy;
                  r37.xy = r37.xy * float2(-2,-2) + float2(3,3);
                  r37.xy = r37.zw * r37.xy;
                  r11.w = r37.x * r37.y;
                } else {
                  r45.w = r46.y;
                  r37.xyzw = saturate(r45.xyzw * abs(r22.yyxx));
                  r37.xyzw = log2(r37.xyzw);
                  r37.xyzw = r46.xxxx * r37.xyzw;
                  r37.xyzw = exp2(r37.xyzw);
                  r37.xy = r37.xy + r37.zw;
                  r37.xy = log2(r37.xy);
                  r37.xy = r47.xx * r37.xy;
                  r37.xy = exp2(r37.xy);
                  r16.z = r46.z * r37.x;
                  r26.w = r46.w * r37.y + -1;
                  r16.z = r46.w * r37.y + -r16.z;
                  r16.z = saturate(r26.w / r16.z);
                  r26.w = r16.z * r16.z;
                  r16.z = r16.z * -2 + 3;
                  r11.w = r26.w * r16.z;
                }
                r12.w = r14.w * r11.w;
                r11.w = (int)r13.w & 255;
                if (r11.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyz, r7.z, l(220), t12.xyzx
                r37.x = samp0[]..swiz;
                r37.y = samp0[]..swiz;
                r37.z = samp0[]..swiz;
                  r13.w = dot(r47.yzw, r22.xyz);
                  r14.w = dot(r37.xyz, r22.xyz);
                  r37.x = frac(r13.w);
                  r37.y = frac(r14.w);
                  r11.w = (int)r11.w + -1;
                  r37.z = (uint)r11.w;
                  r21.xyz = gCookieArray.SampleLevel(samplerLinear_s, r37.xyz, 0).xyz;
                } else {
                  r21.xyz = float3(1,1,1);
                }
              }
              r35.yz = r36.yz;
              r21.xyz = r35.xyz * r21.xyz;
              r11.w = cmp(0 < r12.w);
              if (r11.w != 0) {
                if (3 == 0) r11.w = 0; else if (3+27 < 32) {                 r11.w = (uint)r36.w << (32-(3 + 27)); r11.w = (uint)r11.w >> (32-3);                } else r11.w = (uint)r36.w >> 27;
                r11.w = cmp((int)r11.w != 1);
                if (r11.w != 0) {
                  r11.w = abs(r8.w) * -0.200000003 + 0.400000006;
                  r13.w = cmp(r8.w < 0);
                  r11.w = r13.w ? -r11.w : r11.w;
                  r23.xyz = r3.xyz * r11.www + v6.xyz;
                  r42.xyz = r41.xyz;
                  r11.w = dot(r42.xyzw, r23.xyzw);
                  r13.w = dot(r44.xyzw, r23.xyzw);
                  r14.w = cmp(r13.w >= r11.w);
                  if (r14.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.y, r7.z, l(144), t12.xxxx
                  r43.y = samp0[]..swiz;
                    r39.w = r40.x;
                    r22.x = dot(r39.xyzw, r23.xyzw);
                    r41.xyz = r40.yzw;
                    r22.y = dot(r41.xyzw, r23.xyzw);
                    r22.xy = r22.xy / r13.ww;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r23.xy = r22.xy * r43.zw + r43.xy;
                    r7.z = r11.w / r13.w;
                    r7.z = max(6.10351563e-05, r7.z);
                    r11.w = (int)r36.w & 0x0000ffff;
                    if (r5.x != 0) {
                      r35.z = (uint)r11.w;
                      r13.w = 0;
                      r14.w = 0;
                      while (true) {
                        r16.z = cmp((int)r14.w >= 8);
                        if (r16.z != 0) break;
                        r22.x = dot(icb[r14.w+0].xy, r26.xy);
                        r22.y = dot(icb[r14.w+0].yx, r26.xz);
                        r35.xy = r22.xy * r38.yy + r23.xy;
                        r16.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r7.z).x;
                        r13.w = r16.z * 0.125 + r13.w;
                        r14.w = (int)r14.w + 1;
                      }
                    } else {
                      r23.z = (uint)r11.w;
                      r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r7.z).x;
                    }
                    r7.z = r13.w * r13.w;
                    r7.z = r7.z * r13.w;
                  } else {
                    r7.z = 1;
                  }
                } else {
                  r7.z = 1;
                }
                r7.z = r12.w * r7.z;
                r11.w = cmp(0 < r7.z);
                if (r11.w != 0) {
                  r11.w = r36.x * r6.y;
                  r11.w = 0.25 * r11.w;
                  if (4 == 0) r12.w = 0; else if (4+16 < 32) {                   r12.w = (uint)r36.w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r36.w >> 16;
                  r14.w = cmp(0 < (uint)r12.w);
                  r14.w = r6.x ? r14.w : 0;
                  if (r14.w != 0) {
                    r12.w = (int)r12.w + numLights;
                    r12.w = (int)r12.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r12.w, l(52), t12.xxxx
                  r14.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(68), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(84), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(100), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(116), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(132), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(148), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r16.z = abs(r8.w) * -0.200000003 + 0.400000006;
                    r22.x = cmp(r8.w < 0);
                    r16.z = r22.x ? -r16.z : r16.z;
                    r24.xyz = r3.xyz * r16.zzz + v6.xyz;
                    r22.x = dot(r35.xyzw, r24.xyzw);
                    r22.y = dot(r37.xyzw, r24.xyzw);
                    r16.z = dot(r38.xyzw, r24.xyzw);
                    r23.x = dot(r39.xyzw, r24.xyzw);
                    r23.y = cmp(r23.x < r16.z);
                    r22.xy = r22.xy / r23.xx;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.xy = r22.xy + r41.zw;
                    r22.xy = r22.xy * r41.xy;
                    r24.xy = r14.ww / r40.xz;
                    r35.xy = float2(1,1) + -r24.xy;
                    r35.xy = cmp(r22.xy >= r35.xy);
                    r24.xy = cmp(r24.xy >= r22.xy);
                    r24.xy = (int2)r24.xy | (int2)r35.xy;
                    r23.z = (int)r24.y | (int)r24.x;
                    r23.y = (int)r23.y | (int)r23.z;
                    if (r23.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r12.w, l(28), t12.xxxx
                    r23.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xy, r12.w, l(164), t12.xyxx
                    r24.x = samp0[]..swiz;
                    r24.y = samp0[]..swiz;
                      r22.xy = saturate(r22.xy);
                      r35.xy = r22.xy * r40.xz + r40.yw;
                      r12.w = r24.y * r23.x;
                      r16.z = r24.x * r23.x + r16.z;
                      r12.w = r16.z / r12.w;
                      r12.w = max(6.10351563e-05, r12.w);
                      r16.z = r23.y ? 0.000000 : 0;
                      if (r5.x != 0) {
                        r23.z = (uint)r16.z;
                        r22.xy = float2(0,0);
                        while (true) {
                          r24.x = cmp((int)r22.y >= 8);
                          if (r24.x != 0) break;
                          r24.x = dot(icb[r22.y+0].xy, r27.xy);
                          r24.y = dot(icb[r22.y+0].yx, r27.xz);
                          r23.xy = r24.xy * r14.ww + r35.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r12.w).x;
                          r22.x = r23.x * 0.125 + r22.x;
                          r22.y = (int)r22.y + 1;
                        }
                      } else {
                        r35.z = (uint)r16.z;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r12.w).x;
                      }
                      r12.w = r22.x * r22.x;
                      r12.w = r12.w * r22.x;
                    } else {
                      r12.w = 1;
                    }
                    r7.z = r12.w * r7.z;
                  } else {
                    if (4 == 0) r12.w = 0; else if (4+20 < 32) {                     r12.w = (uint)r36.w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);                    } else r12.w = (uint)r36.w >> 20;
                    r14.w = cmp(0 < (uint)r12.w);
                    r14.w = r14.w ? r2.z : 0;
                    if (r14.w != 0) {
                      r12.w = (int)r12.w + numLights;
                      r12.w = (int)r12.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r12.w, l(52), t12.xxxx
                    r14.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(68), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(84), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(100), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(116), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(132), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(148), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                      r16.z = abs(r8.w) * -0.200000003 + 0.400000006;
                      r22.y = cmp(r8.w < 0);
                      r16.z = r22.y ? -r16.z : r16.z;
                      r25.xyz = r3.xyz * r16.zzz + v6.xyz;
                      r23.x = dot(r35.xyzw, r25.xyzw);
                      r23.y = dot(r36.xyzw, r25.xyzw);
                      r16.z = dot(r37.xyzw, r25.xyzw);
                      r22.y = dot(r38.xyzw, r25.xyzw);
                      r23.z = cmp(r22.y < r16.z);
                      r23.xy = r23.xy / r22.yy;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r40.zw;
                      r23.xy = r23.xy * r40.xy;
                      r24.xy = r14.ww / r39.xz;
                      r25.xy = float2(1,1) + -r24.xy;
                      r25.xy = cmp(r23.xy >= r25.xy);
                      r24.xy = cmp(r24.xy >= r23.xy);
                      r24.xy = (int2)r24.xy | (int2)r25.xy;
                      r24.x = (int)r24.y | (int)r24.x;
                      r23.z = (int)r23.z | (int)r24.x;
                      if (r23.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.z, r12.w, l(28), t12.xxxx
                      r23.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xy, r12.w, l(164), t12.xyxx
                      r24.x = samp0[]..swiz;
                      r24.y = samp0[]..swiz;
                        r23.xy = saturate(r23.xy);
                        r25.xy = r23.xy * r39.xz + r39.yw;
                        r12.w = r24.y * r22.y;
                        r16.z = r24.x * r22.y + r16.z;
                        r12.w = r16.z / r12.w;
                        r12.w = max(6.10351563e-05, r12.w);
                        r16.z = r23.z ? 0.000000 : 0;
                        if (r5.x != 0) {
                          r23.z = (uint)r16.z;
                          r22.y = 0;
                          r24.x = 0;
                          while (true) {
                            r24.y = cmp((int)r24.x >= 8);
                            if (r24.y != 0) break;
                            r35.x = dot(icb[r24.x+0].xy, r28.xy);
                            r35.y = dot(icb[r24.x+0].yx, r28.xz);
                            r23.xy = r35.xy * r14.ww + r25.xy;
                            r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r12.w).x;
                            r22.y = r23.x * 0.125 + r22.y;
                            r24.x = (int)r24.x + 1;
                          }
                        } else {
                          r25.z = (uint)r16.z;
                          r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r12.w).x;
                        }
                        r12.w = r22.y * r22.y;
                        r12.w = r12.w * r22.y;
                      } else {
                        r12.w = 1;
                      }
                      r7.z = r12.w * r7.z;
                    }
                  }
                  r12.w = -abs(r8.w) * r2.x + 1;
                  r12.w = r12.w * r12.w;
                  r12.w = -r12.w * 0.620000005 + 0.620000005;
                  r12.w = r12.w + -abs(r8.w);
                  r12.w = r6.z * r12.w + abs(r8.w);
                  r12.w = r12.w * r7.z;
                  r14.w = cmp(0 < r8.w);
                  r23.xyz = r12.www * r21.xyz + r18.xyz;
                  r8.w = saturate(r8.w);
                  r20.xyz = r20.xyz * r7.www + r5.yzw;
                  r7.w = dot(r20.xyz, r20.xyz);
                  r7.w = rsqrt(r7.w);
                  r20.xyz = r20.xyz * r7.www;
                  r7.w = dot(r20.xyz, r5.yzw);
                  r16.z = dot(r3.xyz, r20.xyz);
                  r20.x = abs(r16.z) * r6.y + -abs(r16.z);
                  r16.z = abs(r16.z) * r20.x + 1;
                  r20.x = r8.w * r0.w + r2.y;
                  r16.z = r16.z * r16.z;
                  r16.z = r16.z * r20.x;
                  r16.z = rcp(r16.z);
                  r8.w = r8.w * r11.w;
                  r8.w = r16.z * r8.w;
                  r7.z = r8.w * r7.z;
                  r20.xyz = r7.zzz * r21.xyz + r34.xyz;
                  r7.w = saturate(1 + -r7.w);
                  r8.w = r7.w * r7.w;
                  r8.w = r8.w * r8.w;
                  r7.w = r8.w * r7.w;
                  r7.z = r7.z * r7.w;
                  r24.xyz = r7.zzz * r21.xyz + r33.xyz;
                  r21.xyz = r12.www * r21.xyz + r32.xyz;
                  r18.xyz = r14.www ? r23.xyz : r18.xyz;
                  r32.xyz = r14.www ? r32.xyz : r21.xyz;
                  r33.xyz = r14.www ? r24.xyz : r33.xyz;
                  r34.xyz = r14.www ? r20.xyz : r34.xyz;
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
    r9.yzw = r18.xyz;
    r29.xyz = r32.xyz;
    r30.xyz = r33.xyz;
    r31.xyz = r34.xyz;
    r3.w = (int)r3.w + 32;
  }
  r2.xyz = r29.xyz * r4.xyz;
  r0.xyz = r9.yzw * r0.xyz + r2.xyz;
  r2.xyz = float3(0.959999979,0.959999979,0.959999979) * r30.xyz;
  r2.xyz = r31.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r2.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v6.xyz, v6.xyz);
    r2.x = rsqrt(r0.w);
    r2.xyz = v6.xyz * r2.xxx;
    r0.w = sqrt(r0.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r2.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.y * r0.w;
    r2.x = saturate(r2.x);
    r2.x = r2.x * r2.x + 1;
    r2.x = r2.x * 0.0596831031 + -1;
    r2.x = fogConstants.atmospheresunstrength * r2.x + 1;
    r2.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r2.xyz = r2.xxx * fogConstants.atmosphereRayleighDensity.xyz + r2.yzw;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r0.xyz * r3.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v6.z;
    r2.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r3.x = cmp(abs(r0.w) < 9.99999975e-05);
    r3.y = min(64, r2.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r3.w ? r3.y : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r0.w = r3.x ? 1 : r0.w;
    r0.w = r2.w / r0.w;
    r0.w = r3.x ? r3.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r2.w = dot(v6.xyz, v6.xyz);
    r3.x = sqrt(r2.w);
    r0.w = r0.w * r3.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v6.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r3.w * r0.w;
    r3.xyz = r3.xyz + -r0.xyz;
    r2.xyz = r0.www * r3.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r2.xyz ? r0.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  r2.xyz = max(float3(0,0,0), r0.xyz);
  r1.xyz = r2.xyz * r1.www;
  r0.w = (int)r1.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r3.xyzw = cmp(r1.xyzw == float4(0,0,0,0));
  r3.xy = r3.zw ? r3.xy : 0;
  r2.w = r3.y ? r3.x : 0;
  r0.w = (int)r0.w | (int)r2.w;
  if (r0.w == 0) {
    r3.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r3.z, u6, r3.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.w = cmp((uint)r3.z < oitMaxEntries);
    if (r0.w != 0) {
      r0.w = max(r1.y, r1.z);
      r0.w = max(r1.x, r0.w);
      r0.w = abs(r0.w);
      r0.w = (int)r0.w & 0x7f800000;
      r0.w = (int)r0.w + 0x00800000;
      r2.xyz = r2.xyz * r1.www + r0.www;
      if (8 == 0) r2.x = 0; else if (8+15 < 32) {       r2.x = (uint)r2.x << (32-(8 + 15)); r2.x = (uint)r2.x >> (32-8);      } else r2.x = (uint)r2.x >> 15;
      r2.yz = (uint2)r2.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r2.y = (((uint)r2.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r2.z = (((uint)r2.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r2.x = (int)r2.y + (int)r2.x;
      r2.x = (int)r2.z + (int)r2.x;
      r0.w = (uint)r0.w << 1;
      r2.xzw = (int3)r0.www + (int3)r2.xxx;
      r0.w = saturate(r1.w);
      r0.w = 2046 * r0.w;
      r0.w = (uint)r0.w;
      r3.w = (uint)v0.z << 2;
      r0.w = (int)r0.w & 2046;
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.y = (((uint)r0.w << 0) & bitmask.y) | ((uint)r3.w & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r3.xyzz, r2.xyzw
      r0.w = -1;
    } else {
      r0.w = 0;
    }
  } else {
    r0.w = -1;
  }
  r1.xyz = r0.xyz * r1.www;
  o0.xyzw = r0.wwww ? float4(0,0,0,0) : r1.xyzw;
  return;
}