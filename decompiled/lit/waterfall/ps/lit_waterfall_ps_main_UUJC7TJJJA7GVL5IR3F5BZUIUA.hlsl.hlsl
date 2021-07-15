// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:32 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
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
  float2 wind1Parms : packoffset(c16);
  float2 wind2Parms : packoffset(c16.z);
  float2 wind3Parms : packoffset(c17);
  float3 backlightScatterColor : packoffset(c18);
  bool useAlphaControls : packoffset(c18.w);
  float zFeatherDistance : packoffset(c19);
  float falloffBegin : packoffset(c19.y);
  float falloffEnd : packoffset(c19.z);
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
SamplerState revealSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState colorSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState normalSampler_s : register(s5);
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
Texture2D<float4> revealMap : register(t21);
Texture2D<float4> colorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> tintMask : register(t24);
Texture2D<float4> normalMap : register(t25);
Texture2D<float4> thicknessMap : register(t26);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  float3 v5 : OFFPOSITION0,
  float2 v6 : TEXCOORD9,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = colorMap.Sample(colorSampler_s, w1.xy).xyz;
  r0.w = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.xy = revealScale.xy * w1.xy;
  r0.w = revealMap.Sample(revealSampler_s, r1.xy).x;
  r1.x = saturate(v1.x * 0.998000026 + 0.00100000005);
  r1.y = 1 + -r1.x;
  r1.z = saturate(alphaRevealRamp);
  r1.x = log2(r1.x);
  r1.x = r1.z * r1.x;
  r1.x = exp2(r1.x);
  r2.x = -r1.x;
  r1.x = log2(r1.y);
  r1.x = r1.z * r1.x;
  r2.y = exp2(r1.x);
  r1.xy = saturate(alphaRevealSoftEdge * r2.xy + r1.yy);
  r0.w = -r1.x + r0.w;
  r1.x = r1.y + -r1.x;
  r0.w = saturate(r0.w / r1.x);
  r1.x = glossRange.y + -glossRange.x;
  r1.y = saturate(0.0588235296 * glossRange.y);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r1.zw = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r2.y = r2.z * r2.z;
  r2.y = 0.333333343 * r2.y;
  r2.y = min(1, r2.y);
  r2.z = v7.x ? 1 : -1;
  r2.w = dot(v2.xyz, v2.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v2.xyz * r2.www;
  r3.xyz = r3.xyz * r2.zzz;
  r2.w = dot(v3.xyz, v3.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = v3.xyz * r2.www;
  r4.xyz = r4.xyz * r2.zzz;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = v4.xyz * r2.www;
  r5.xyz = r5.xyz * r2.zzz;
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r2.y + r1.y;
  r1.y = log2(r1.y);
  r1.y = -0.0588235296 * r1.y;
  r5.xyz = r5.xyz * r1.www;
  r4.xyz = r4.xyz * r1.zzz + r5.xyz;
  r2.xzw = r3.xyz * r2.xxx + r4.xyz;
  r1.z = dot(r2.xzw, r2.xzw);
  r1.z = rsqrt(r1.z);
  r2.xzw = r2.xzw * r1.zzz;
  r1.x = debugGlossOverride.x * r1.x + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r2.y + r1.x;
  r1.x = log2(r1.x);
  r1.x = -0.0588235296 * r1.x;
  r1.xy = max(float2(0,0), r1.xy);
  r1.z = cmp(0 < debugStreamerControl.w);
  if (r1.z != 0) {
    r1.z = (int)debugStreamerControl.w;
    r1.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r2.y = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r1.w = cmp(r1.w < r2.y);
    r2.y = cmp(0 < r2.y);
    r3.xyz = (int3)r1.zzz & int3(1,2,4);
    r4.xyz = r3.xxx ? float3(1,0,1) : r0.xyz;
    r3.xyw = r3.yyy ? float3(0,1,1) : r0.xyz;
    r3.xyw = r2.yyy ? r4.xyz : r3.xyw;
    r4.xyz = r3.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r1.www ? r3.xyw : r4.xyz;
  }
  r3.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r3.xyz + r0.xyz;
  r1.z = debugAlphaOverride.x + -r0.w;
  r0.w = debugAlphaOverride.w * r1.z + r0.w;
  r1.x = r1.x + -r1.y;
  r1.y = debugGlossOverride.w * r1.x + r1.y;
  r1.z = -1 + debugOcclusionOverride.x;
  r1.z = debugOcclusionOverride.w * r1.z + 1;
  r3.xyz = v7.xxx ? v2.xyz : -v2.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www + -r2.xzw;
  r2.xyz = debugNormalOverride.www * r3.xyz + r2.xzw;
  r0.w = v1.x * r0.w;
  r1.w = thicknessMap.Sample(colorSampler_s, w1.xy).x;
  r3.xyz = backlightScatterColor.xyz * r0.xyz;
  r1.w = 1 + -r1.w;
  r3.xyz = r3.xyz * r1.www;
  r3.xyz = r3.xyz * r0.xyz;
  if (useAlphaControls != 0) {
    r1.w = dot(-v5.xyz, -v5.xyz);
    r1.w = rsqrt(r1.w);
    r4.xyz = -v5.xyz * r1.www;
    r1.w = dot(r4.xyz, v2.xyz);
    r1.w = r1.w * r1.w;
    r1.w = saturate(r1.w * v6.x + v6.y);
    r1.w = r1.w * r0.w;
    r4.xy = (int2)v0.xy;
    r4.zw = float2(0,0);
    r3.w = floatZSampler.Load(r4.xyz).x;
    r4.x = cmp(r3.w >= 0.984375);
    r4.y = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.x ? r3.w : r4.y;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.x = cmp(v0.z >= 0.984375);
    r4.y = 1.01587307 * v0.z;
    r4.z = v0.z * 64 + -63;
    r4.x = r4.x ? r4.z : r4.y;
    r4.x = max(9.99999994e-09, r4.x);
    r4.x = rcp(r4.x);
    r4.y = cmp(zFeatherDistance == 0.000000);
    r4.z = 1 / zFeatherDistance;
    r4.y = r4.y ? 60000 : r4.z;
    r3.w = -r4.x + r3.w;
    r3.w = saturate(r3.w * r4.y);
    o0.w = r3.w * r1.w;
  } else {
    o0.w = r0.w;
  }
  r4.xy = (uint2)v0.xy;
  r0.w = cmp(v0.z >= 0.984375);
  r1.w = 1.01587307 * v0.z;
  r3.w = v0.z * 64 + -63;
  r0.w = r0.w ? r3.w : r1.w;
  r0.w = max(9.99999994e-09, r0.w);
  r0.w = rcp(r0.w);
  r1.w = dot(-v5.xyz, -v5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = -v5.xyz * r1.www;
  r3.w = cmp(isDepthHack != 0);
  r4.zw = (uint2)r4.yx;
  r5.w = dot(r4.wz, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r6.x, r7.x);
  r4.z = dot(r4.zw, float2(0.0671105608,0.00583714992));
  r4.z = frac(r4.z);
  r4.z = 52.9829178 * r4.z;
  r4.z = frac(r4.z);
  r4.z = r4.z * 6.28318548 + gameTick.w;
  sincos(r4.z, r8.x, r9.x);
  r1.x = saturate(dot(r2.xyz, r5.xyz));
  r4.z = dot(-r5.xyz, r2.xyz);
  r4.z = r4.z + r4.z;
  r10.xyz = r2.xyz * -r4.zzz + -r5.xyz;
  r4.z = 17 * r1.y;
  r4.z = exp2(r4.z);
  r4.z = 2 + r4.z;
  r4.z = 2 / r4.z;
  r4.w = sqrt(r4.z);
  r5.w = 1 + -r1.y;
  r6.z = 5 * r5.w;
  r6.w = r5.w * 5 + -2.5;
  r6.w = saturate(0.400000006 * r6.w);
  r6.w = 100 * r6.w;
  r8.yz = -r5.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r8.y);
  r7.w = r7.w * r1.x;
  r7.w = 9.1368103 * r7.w;
  r8.y = r6.z * r5.w;
  r8.y = -r8.y * 2.0159049 + r8.z;
  r8.y = exp2(r8.y);
  r8.y = r8.y * r1.x;
  r8.y = 9.70808983 * r8.y;
  r7.w = max(r8.y, r7.w);
  r7.w = max(1.26815999, r7.w);
  r0.w = 0.0078125 * r0.w;
  r0.w = min(15, r0.w);
  r0.w = (uint)r0.w;
  r11.xy = (uint2)r4.xy >> int2(6,6);
  r11.z = (uint)r0.w << 4;
  r12.xy = float2(0,0);
  r13.w = 0;
  r14.yz = float2(0,1);
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r4.x = 1;
  r18.xyzw = float4(0,0,0,0);
  r19.yzw = float3(0,0,0);
  r0.w = 0;
  r8.y = 0;
  while (true) {
    r8.z = cmp((uint)r8.y >= numRefProbes);
    if (r8.z != 0) break;
    r12.z = (uint)r8.y >> 5;
    r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
    r8.z = visibleProbes.Load(r13.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r8.y, l(0), t15.wxyz
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r8.y, l(16), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r8.y, l(32), t15.yxwz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r8.y, l(48), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r8.y, l(64), t15.zwxy
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r8.y, l(80), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.yz, r8.y, l(96), t15.xxyx
  r9.y = samp0[]..swiz;
  r9.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r8.y, l(116), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r8.y, l(132), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r8.y, l(148), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r8.y, l(164), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r8.y, l(180), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r8.y, l(196), t15.xyzw
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xy, r8.y, l(212), t15.xyxx
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
    r13.xyz = v5.xyz + -r20.yzw;
    r8.w = dot(r13.xyz, r13.xyz);
    r8.w = sqrt(r8.w);
    r8.w = cmp(probeDebugRadius >= r8.w);
    r9.w = (int)r26.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(0), t16.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(16), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(32), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(48), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(64), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(80), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
    r11.w = dot(r33.xyz, r13.xyz);
    r11.w = saturate(r11.w + r33.w);
    r12.z = dot(r34.xyz, r13.xyz);
    r12.z = saturate(r12.z + r34.w);
    r11.w = r12.z * r11.w;
    r12.z = dot(r35.xyz, r13.xyz);
    r12.z = saturate(r12.z + r35.w);
    r11.w = r12.z * r11.w;
    r12.z = dot(r36.xyz, r13.xyz);
    r12.z = saturate(r12.z + r36.w);
    r11.w = r12.z * r11.w;
    r12.z = dot(r37.xyz, r13.xyz);
    r12.z = saturate(r12.z + r37.w);
    r11.w = r12.z * r11.w;
    r12.z = dot(r38.xyz, r13.xyz);
    r12.z = saturate(r12.z + r38.w);
    r14.x = r12.z * r11.w;
    r11.w = (int)r9.y & 1;
    r12.zw = r11.ww ? r14.xy : r14.zx;
    r33.xy = r26.zw;
    r33.z = r27.z;
    r11.w = dot(r10.xyz, r33.xyz);
    r14.x = dot(r13.xyz, r33.xyz);
    r14.x = r14.x + -r27.w;
    r14.w = cmp(r14.x >= 0);
    r14.x = max(abs(r14.x), r6.w);
    r14.x = r14.w ? r14.x : -r14.x;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r14.x / r11.w;
    r11.w = min(131072, abs(r11.w));
    r27.z = r28.z;
    r14.x = dot(r10.xyz, r27.xyz);
    r14.w = dot(r13.xyz, r27.xyz);
    r14.w = r14.w + -r28.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r6.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r28.z = r29.z;
    r14.x = dot(r10.xyz, r28.xyz);
    r14.w = dot(r13.xyz, r28.xyz);
    r14.w = r14.w + -r29.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r6.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r29.z = r30.z;
    r14.x = dot(r10.xyz, r29.xyz);
    r14.w = dot(r13.xyz, r29.xyz);
    r14.w = r14.w + -r30.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r6.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r30.z = r31.x;
    r14.x = dot(r10.xyz, r30.xyz);
    r14.w = dot(r13.xyz, r30.xyz);
    r14.w = r14.w + -r31.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r6.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r32.zw = r31.zw;
    r14.x = dot(r10.zxy, r32.xzw);
    r14.w = dot(r13.zxy, r32.xzw);
    r14.w = r14.w + -r32.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r6.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r27.x = r23.w;
    r27.yz = r24.zw;
    r27.xyz = r27.xyz + r13.xyz;
    r27.xyz = r10.xyz * r11.www + r27.xyz;
    r14.x = dot(r27.xyz, r27.xyz);
    r14.x = sqrt(r14.x);
    r11.w = r11.w / r14.x;
    r11.w = r11.w + r11.w;
    r11.w = sqrt(r11.w);
    r11.w = r5.w * 5 + r11.w;
    r11.w = -0.844799995 + r11.w;
    r20.y = r21.z;
    r20.z = r22.x;
    r28.x = dot(r27.xyz, r20.xyz);
    r29.xy = r21.xw;
    r29.z = r22.w;
    r28.y = dot(r27.xyz, r29.xyz);
    r22.x = r21.y;
    r28.z = dot(r27.xyz, r22.xyz);
    if (6 == 0) r14.x = 0; else if (6+25 < 32) {     r14.x = (uint)r26.y << (32-(6 + 25)); r14.x = (uint)r14.x >> (32-6);    } else r14.x = (uint)r26.y >> 25;
    if (9 == 0) r14.w = 0; else if (9+16 < 32) {     r14.w = (uint)r26.y << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);    } else r14.w = (uint)r26.y >> 16;
    r28.w = (uint)r14.w;
    r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r11.w).xyz;
    r26.yzw = (int3)r21.xyz & int3(-2147483648,-2147483648,-2147483648);
    r26.yzw = cmp((int3)r26.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r26.z | (int)r26.y;
    r11.w = (int)r26.w | (int)r11.w;
    r21.xyz = r11.www ? float3(1,1,0) : r21.xyz;
    r27.x = dot(r13.xyz, r20.xyz);
    r27.y = dot(r13.xyz, r29.xyz);
    r27.z = dot(r13.xyz, r22.xyz);
    r23.xyz = saturate(r27.xyz * r23.xyz + float3(0.5,0.5,0.5));
    r24.z = r25.x;
    r23.xyz = r23.xyz * r24.xyz + r25.yzw;
    r28.x = dot(r2.xyz, r20.xyz);
    r28.y = dot(r2.xyz, r29.xyz);
    r28.z = dot(r2.xyz, r22.xyz);
    r20.xyz = cmp(float3(0,0,0) < r28.xyz);
    r15.z = r20.x ? 0 : 0.5;
    r22.xyz = r23.xyz + r15.xyz;
    r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r16.z = r20.y ? 0 : 0.5;
    r20.xyw = r23.xyz + r16.xyz;
    r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
    r17.z = r20.z ? 0 : 0.5;
    r23.xyz = r23.xyz + r17.xyz;
    r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r24.xyz = r28.xyz * r28.xyz;
    r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
    r26.yzw = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
    r26.yzw = cmp((int3)r26.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r26.z | (int)r26.y;
    r11.w = (int)r26.w | (int)r11.w;
    r25.xyz = r11.www ? float3(1,1,0) : r25.xyz;
    r27.xyzw = r18.xyzw;
    r26.yzw = r19.yzw;
    r11.w = r0.w;
    r14.w = r8.z;
    while (true) {
      if (r14.w == 0) break;
      r15.z = firstbitlow((uint)r14.w);
      r15.z = 1 << (int)r15.z;
      r15.w = (int)r14.w & (int)r15.z;
      if (r15.w != 0) {
        r15.z = ~(int)r15.z;
        r14.w = (int)r14.w & (int)r15.z;
        if (r8.w != 0) {
          r15.z = r9.y;
          r28.xy = r12.zw;
          r15.w = 1;
          while (true) {
            r16.z = cmp((int)r15.w >= (int)r14.x);
            if (r16.z != 0) break;
            r16.z = (int)r9.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.z, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.z, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.z, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r16.z = dot(r29.xyz, r13.xyz);
            r16.z = saturate(r16.z + r29.w);
            r16.z = r28.x * r16.z;
            r16.w = dot(r30.xyz, r13.xyz);
            r16.w = saturate(r16.w + r30.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r31.xyz, r13.xyz);
            r16.w = saturate(r16.w + r31.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r32.xyz, r13.xyz);
            r16.w = saturate(r16.w + r32.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r33.xyz, r13.xyz);
            r16.w = saturate(r16.w + r33.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r34.xyz, r13.xyz);
            r16.w = saturate(r16.w + r34.w);
            r28.x = r16.z * r16.w;
            r17.z = (uint)r15.z >> 2;
            if (1 == 0) r17.w = 0; else if (1+2 < 32) {             r17.w = (uint)r15.z << (32-(1 + 2)); r17.w = (uint)r17.w >> (32-1);            } else r17.w = (uint)r15.z >> 2;
            r20.z = (int)r17.z & 2;
            r21.w = max(r28.y, r28.x);
            r16.z = -r16.z * r16.w + 1;
            r16.z = r28.y * r16.z;
            r4.y = r20.z ? r16.z : r21.w;
            r28.xy = r17.ww ? r28.xy : r4.xy;
            r15.w = (int)r15.w + 1;
            r15.z = r17.z;
          }
          r28.y = saturate(r28.y);
          r4.y = r28.y * r9.z;
          r15.z = cmp(0 < r4.y);
          if (r15.z != 0) {
            r29.z = r28.y * r9.z + r26.w;
            r4.y = r4.y * r26.x;
            r28.xzw = r24.xyz * r4.yyy;
            r30.xyz = r28.zzz * r20.xyw;
            r30.xyz = r22.xyz * r28.xxx + r30.xyz;
            r28.xzw = r23.xyz * r28.www + r30.xyz;
            r30.xyz = r28.xzw * r25.xyz;
            r15.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r30.xyz = r28.xzw * r25.xyz + r27.xyz;
            r15.w = r15.z * r7.w;
            r28.xzw = r21.xyz * r4.yyy;
            r4.y = dot(r28.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r4.y = r7.w * r15.z + r4.y;
            r4.y = r15.w / r4.y;
            r31.x = r27.w;
            r31.yz = r26.yz;
            r29.xyw = r28.zwx * r4.yyy + r31.yzx;
            r30.w = r29.w;
          } else {
            r30.xyzw = r27.xyzw;
            r29.xyz = r26.yzw;
          }
          r11.w = -1;
          r27.xyzw = r30.xyzw;
          r26.yzw = r29.xyz;
          break;
        }
      }
    }
    if (r11.w != 0) {
      r18.xyzw = r27.xyzw;
      r19.yzw = r26.yzw;
      r0.w = -1;
      break;
    }
    r8.y = (int)r8.y + 32;
    r18.xyzw = r27.xyzw;
    r19.yzw = r26.yzw;
    r0.w = r11.w;
  }
  if (r0.w == 0) {
    r0.w = numRefProbes + -numOverrideProbes;
    r4.x = (int)r0.w & -32;
    r4.y = (int)r0.w + (int)-r4.x;
    r8.y = numRefProbes & -32;
    r8.z = (int)-r8.y + numRefProbes;
    r12.xy = float2(0,0);
    r13.w = 0;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r16.x = 1;
    r17.xy = float2(0,0);
    r20.xy = float2(0,0);
    r21.xyzw = r18.xyzw;
    r22.yzw = r19.yzw;
    r8.w = r4.x;
    while (true) {
      r9.y = cmp((uint)r8.w >= numRefProbes);
      if (r9.y != 0) break;
      r12.z = (uint)r8.w >> 5;
      r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
      r9.y = visibleProbes.Load(r13.xyzw).x;
      r9.z = cmp((int)r4.x == (int)r8.w);
      bitmask.w = ((~(-1 << r4.y)) << 0) & 0xffffffff;  r9.w = (((uint)0 << 0) & bitmask.w) | ((uint)r9.y & ~bitmask.w);
      r9.y = r9.z ? r9.w : r9.y;
      r9.z = cmp((int)r8.y == (int)r8.w);
      if (r8.z == 0) r9.w = 0; else if (r8.z+0 < 32) {       r9.w = (uint)r9.y << (32-(r8.z + 0)); r9.w = (uint)r9.w >> (32-r8.z);      } else r9.w = (uint)r9.y >> 0;
      r9.y = r9.z ? r9.w : r9.y;
      r9.z = (int)r8.w + numLights;
      r23.xyzw = r21.xyzw;
      r24.xyz = r22.yzw;
      r9.w = r9.y;
      while (true) {
        if (r9.w == 0) break;
        r11.w = firstbitlow((uint)r9.w);
        r12.z = 1 << (int)r11.w;
        r12.w = (int)r9.w & (int)r12.z;
        if (r12.w != 0) {
          r9.w = (int)r9.w ^ (int)r12.z;
          r12.z = (int)r9.z + (int)r11.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r12.z, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r12.z, l(16), t11.xyxx
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
          r25.xyz = -v5.xyz + r25.xyz;
          r13.z = r25.w;
          r13.xyz = cmp(abs(r25.xyz) < r13.zxy);
          r12.z = r13.y ? r13.x : 0;
          r12.z = r13.z ? r12.z : 0;
          if (r12.z != 0) {
            r11.w = (int)r8.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r11.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.zw, r11.w, l(96), t15.xxxy
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r11.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r13.xyz = v5.xyz + -r25.yzw;
            r14.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r15.w = 0; else if (6+25 < 32) {             r15.w = (uint)r26.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);            } else r15.w = (uint)r26.w >> 25;
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
            r16.z = dot(r27.xyz, r13.xyz);
            r16.z = saturate(r16.z + r27.w);
            r16.w = dot(r28.xyz, r13.xyz);
            r16.w = saturate(r16.w + r28.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r29.xyz, r13.xyz);
            r16.w = saturate(r16.w + r29.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r30.xyz, r13.xyz);
            r16.w = saturate(r16.w + r30.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r31.xyz, r13.xyz);
            r16.w = saturate(r16.w + r31.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r32.xyz, r13.xyz);
            r16.w = saturate(r16.w + r32.w);
            r14.x = r16.z * r16.w;
            r16.z = (int)r12.z & 1;
            r16.zw = r16.zz ? r14.xy : r14.zx;
            r14.x = r12.z;
            r27.xy = r16.zw;
            r17.w = 1;
            while (true) {
              r20.w = cmp((int)r17.w >= (int)r15.w);
              if (r20.w != 0) break;
              r20.w = (int)r14.w + (int)r17.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r20.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r20.w, l(16), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r20.w, l(32), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(48), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(64), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r20.w, l(80), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r20.w = dot(r28.xyz, r13.xyz);
              r20.w = saturate(r20.w + r28.w);
              r20.w = r27.x * r20.w;
              r25.w = dot(r29.xyz, r13.xyz);
              r25.w = saturate(r25.w + r29.w);
              r20.w = r25.w * r20.w;
              r25.w = dot(r30.xyz, r13.xyz);
              r25.w = saturate(r25.w + r30.w);
              r20.w = r25.w * r20.w;
              r25.w = dot(r31.xyz, r13.xyz);
              r25.w = saturate(r25.w + r31.w);
              r20.w = r25.w * r20.w;
              r25.w = dot(r32.xyz, r13.xyz);
              r25.w = saturate(r25.w + r32.w);
              r20.w = r25.w * r20.w;
              r25.w = dot(r33.xyz, r13.xyz);
              r25.w = saturate(r25.w + r33.w);
              r27.x = r25.w * r20.w;
              r27.z = (uint)r14.x >> 2;
              if (1 == 0) r27.w = 0; else if (1+2 < 32) {               r27.w = (uint)r14.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);              } else r27.w = (uint)r14.x >> 2;
              r28.x = (int)r27.z & 2;
              r28.y = max(r27.y, r27.x);
              r20.w = -r20.w * r25.w + 1;
              r20.w = r27.y * r20.w;
              r16.y = r28.x ? r20.w : r28.y;
              r27.xy = r27.ww ? r27.xy : r16.xy;
              r17.w = (int)r17.w + 1;
              r14.x = r27.z;
            }
            r27.y = saturate(r27.y);
            r12.z = r27.y * r12.w;
            r14.x = cmp(0 < r12.z);
            if (r14.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r11.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r11.w, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r11.w, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r24.z = r27.y * r12.w + r24.z;
              r11.w = r12.z * r26.z;
              r26.z = r33.z;
              r12.z = dot(r10.xyz, r26.xyz);
              r12.w = dot(r13.xyz, r26.xyz);
              r12.w = r12.w + -r33.w;
              r14.x = cmp(r12.w >= 0);
              r12.w = max(abs(r12.w), r6.w);
              r12.w = r14.x ? r12.w : -r12.w;
              r12.z = max(1.00000001e-07, -r12.z);
              r12.z = r12.w / r12.z;
              r12.z = min(131072, abs(r12.z));
              r33.z = r34.z;
              r12.w = dot(r10.xyz, r33.xyz);
              r14.x = dot(r13.xyz, r33.xyz);
              r14.x = r14.x + -r34.w;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r6.w);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r14.x / r12.w;
              r12.z = min(r12.z, abs(r12.w));
              r34.z = r35.z;
              r12.w = dot(r10.xyz, r34.xyz);
              r14.x = dot(r13.xyz, r34.xyz);
              r14.x = r14.x + -r35.w;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r6.w);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r14.x / r12.w;
              r12.z = min(r12.z, abs(r12.w));
              r35.z = r36.z;
              r12.w = dot(r10.xyz, r35.xyz);
              r14.x = dot(r13.xyz, r35.xyz);
              r14.x = r14.x + -r36.w;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r6.w);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r14.x / r12.w;
              r12.z = min(r12.z, abs(r12.w));
              r36.z = r37.x;
              r12.w = dot(r10.xyz, r36.xyz);
              r14.x = dot(r13.xyz, r36.xyz);
              r14.x = r14.x + -r37.y;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r6.w);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r14.x / r12.w;
              r12.z = min(r12.z, abs(r12.w));
              r38.zw = r37.zw;
              r12.w = dot(r10.zxy, r38.xzw);
              r14.x = dot(r13.zxy, r38.xzw);
              r14.x = r14.x + -r38.y;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r6.w);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r14.x / r12.w;
              r12.z = min(r12.z, abs(r12.w));
              r26.x = r30.w;
              r26.yz = r31.zw;
              r16.yzw = r26.xyz + r13.xyz;
              r16.yzw = r10.xyz * r12.zzz + r16.yzw;
              r12.w = dot(r16.yzw, r16.yzw);
              r12.w = sqrt(r12.w);
              r12.z = r12.z / r12.w;
              r12.z = r12.z + r12.z;
              r12.z = sqrt(r12.z);
              r12.z = r5.w * 5 + r12.z;
              r12.z = -0.844799995 + r12.z;
              r25.y = r28.z;
              r25.z = r29.x;
              r33.x = dot(r16.yzw, r25.xyz);
              r26.xy = r28.xw;
              r26.z = r29.w;
              r33.y = dot(r16.yzw, r26.xyz);
              r29.x = r28.y;
              r33.z = dot(r16.yzw, r29.xyz);
              if (9 == 0) r12.w = 0; else if (9+16 < 32) {               r12.w = (uint)r26.w << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);              } else r12.w = (uint)r26.w >> 16;
              r33.w = (uint)r12.w;
              r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r12.z).xyz;
              r27.xzw = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
              r27.xzw = cmp((int3)r27.xzw == int3(2139095040,2139095040,2139095040));
              r12.z = (int)r27.z | (int)r27.x;
              r12.z = (int)r27.w | (int)r12.z;
              r16.yzw = r12.zzz ? float3(1,1,0) : r16.yzw;
              r28.x = dot(r13.xyz, r25.xyz);
              r28.y = dot(r13.xyz, r26.xyz);
              r28.z = dot(r13.xyz, r29.xyz);
              r13.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r13.xyz = r13.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r2.xyz, r25.xyz);
              r33.y = dot(r2.xyz, r26.xyz);
              r33.z = dot(r2.xyz, r29.xyz);
              r25.xyz = cmp(float3(0,0,0) < r33.xyz);
              r15.z = r25.x ? 0 : 0.5;
              r26.xyz = r15.xyz + r13.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r27.xzw = r33.xyz * r33.xyz;
              r27.xzw = r27.xzw * r11.www;
              r17.z = r25.y ? 0 : 0.5;
              r25.xyw = r17.xyz + r13.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r27.zzz;
              r25.xyw = r26.xyz * r27.xxx + r25.xyw;
              r20.z = r25.z ? 0 : 0.5;
              r13.xyz = r20.xyz + r13.xyz;
              r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
              r13.xyz = r13.xyz * r27.www + r25.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
              r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
              r12.z = (int)r26.y | (int)r26.x;
              r12.z = (int)r26.z | (int)r12.z;
              r25.xyz = r12.zzz ? float3(1,1,0) : r25.xyz;
              r26.xyz = r25.xyz * r13.xyz;
              r12.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r23.xyz = r13.xyz * r25.xyz + r23.xyz;
              r12.w = r12.z * r7.w;
              r13.xyz = r16.yzw * r11.www;
              r11.w = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r11.w = r7.w * r12.z + r11.w;
              r11.w = r12.w / r11.w;
              r25.x = r23.w;
              r25.yz = r24.xy;
              r24.xyw = r13.yzx * r11.www + r25.yzx;
              r23.w = r24.w;
            }
          }
        }
      }
      r21.xyzw = r23.xyzw;
      r22.yzw = r24.xyz;
      r8.w = (int)r8.w + 32;
    }
    r8.y = cmp(r22.w < 1);
    if (r8.y != 0) {
      r12.xy = float2(0,0);
      r13.w = 0;
      r14.yz = float2(0,1);
      r15.xy = float2(0,0);
      r16.x = 1;
      r17.xy = float2(0,0);
      r20.xy = float2(0,0);
      r23.x = r21.w;
      r23.yzw = r22.yzw;
      r8.yzw = r21.xyz;
      r9.y = r22.w;
      r9.z = 0;
      while (true) {
        r9.w = cmp((uint)r9.z >= (uint)r0.w);
        if (r9.w != 0) break;
        r12.z = (uint)r9.z >> 5;
        r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
        r9.w = visibleProbes.Load(r13.xyzw).x;
        r11.w = cmp((int)r4.x == (int)r9.z);
        if (r4.y == 0) r12.z = 0; else if (r4.y+0 < 32) {         r12.z = (uint)r9.w << (32-(r4.y + 0)); r12.z = (uint)r12.z >> (32-r4.y);        } else r12.z = (uint)r9.w >> 0;
        r9.w = r11.w ? r12.z : r9.w;
        r11.w = (int)r9.z + numLights;
        r24.xyzw = r23.xyzw;
        r13.xyz = r8.yzw;
        r12.z = r9.y;
        r12.w = r9.w;
        while (true) {
          if (r12.w == 0) break;
          r14.w = firstbitlow((uint)r12.w);
          r15.w = 1 << (int)r14.w;
          r16.z = (int)r12.w & (int)r15.w;
          if (r16.z != 0) {
            r12.w = (int)r12.w ^ (int)r15.w;
            r15.w = (int)r11.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r15.w, l(0), t11.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r15.w, l(16), t11.xyxx
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
            r25.xyz = -v5.xyz + r25.xyz;
            r26.z = r25.w;
            r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
            r15.w = r25.y ? r25.x : 0;
            r15.w = r25.z ? r15.w : 0;
            if (r15.w != 0) {
              r14.w = (int)r9.z + (int)r14.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r14.w, l(0), t15.wxyz
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.zw, r14.w, l(96), t15.xxxy
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(116), t15.zwxy
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
              r27.xyz = v5.xyz + -r25.yzw;
              r15.w = (int)r26.w & 0x0000ffff;
              if (6 == 0) r17.w = 0; else if (6+25 < 32) {               r17.w = (uint)r26.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);              } else r17.w = (uint)r26.w >> 25;
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
              r19.w = dot(r28.xyz, r27.xyz);
              r19.w = saturate(r19.w + r28.w);
              r20.w = dot(r29.xyz, r27.xyz);
              r20.w = saturate(r20.w + r29.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r30.xyz, r27.xyz);
              r20.w = saturate(r20.w + r30.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r31.xyz, r27.xyz);
              r20.w = saturate(r20.w + r31.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r32.xyz, r27.xyz);
              r20.w = saturate(r20.w + r32.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r33.xyz, r27.xyz);
              r20.w = saturate(r20.w + r33.w);
              r14.x = r20.w * r19.w;
              r19.w = (int)r16.z & 1;
              r28.xy = r19.ww ? r14.xy : r14.zx;
              r14.x = r16.z;
              r29.xy = r28.xy;
              r19.w = 1;
              while (true) {
                r20.w = cmp((int)r19.w >= (int)r17.w);
                if (r20.w != 0) break;
                r20.w = (int)r15.w + (int)r19.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r20.w, l(0), t16.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(16), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(32), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r20.w, l(48), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r20.w, l(64), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r20.w, l(80), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
                r20.w = dot(r30.xyz, r27.xyz);
                r20.w = saturate(r20.w + r30.w);
                r20.w = r29.x * r20.w;
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
                r20.w = r25.w * r20.w;
                r25.w = dot(r35.xyz, r27.xyz);
                r25.w = saturate(r25.w + r35.w);
                r29.x = r25.w * r20.w;
                r27.w = (uint)r14.x >> 2;
                if (1 == 0) r28.z = 0; else if (1+2 < 32) {                 r28.z = (uint)r14.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);                } else r28.z = (uint)r14.x >> 2;
                r28.w = (int)r27.w & 2;
                r29.z = max(r29.y, r29.x);
                r20.w = -r20.w * r25.w + 1;
                r20.w = r29.y * r20.w;
                r16.y = r28.w ? r20.w : r29.z;
                r29.xy = r28.zz ? r29.xy : r16.xy;
                r19.w = (int)r19.w + 1;
                r14.x = r27.w;
              }
              r14.x = saturate(r29.y + -r12.z);
              r15.w = r14.x * r16.w;
              r16.y = cmp(0 < r15.w);
              if (r16.y != 0) {
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
                r24.w = r14.x * r16.w + r24.w;
                r14.x = r15.w * r26.z;
                r26.z = r34.z;
                r14.w = dot(r10.xyz, r26.xyz);
                r15.w = dot(r27.xyz, r26.xyz);
                r15.w = r15.w + -r34.w;
                r16.y = cmp(r15.w >= 0);
                r15.w = max(abs(r15.w), r6.w);
                r15.w = r16.y ? r15.w : -r15.w;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.w / r14.w;
                r14.w = min(131072, abs(r14.w));
                r34.z = r35.z;
                r15.w = dot(r10.xyz, r34.xyz);
                r16.y = dot(r27.xyz, r34.xyz);
                r16.y = r16.y + -r35.w;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r6.w);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r35.z = r36.z;
                r15.w = dot(r10.xyz, r35.xyz);
                r16.y = dot(r27.xyz, r35.xyz);
                r16.y = r16.y + -r36.w;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r6.w);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r36.z = r37.z;
                r15.w = dot(r10.xyz, r36.xyz);
                r16.y = dot(r27.xyz, r36.xyz);
                r16.y = r16.y + -r37.w;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r6.w);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r37.z = r38.x;
                r15.w = dot(r10.xyz, r37.xyz);
                r16.y = dot(r27.xyz, r37.xyz);
                r16.y = r16.y + -r38.y;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r6.w);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r39.zw = r38.zw;
                r15.w = dot(r10.zxy, r39.xzw);
                r16.y = dot(r27.zxy, r39.xzw);
                r16.y = r16.y + -r39.y;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r6.w);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r26.x = r31.w;
                r26.yz = r32.zw;
                r16.yzw = r26.xyz + r27.xyz;
                r16.yzw = r10.xyz * r14.www + r16.yzw;
                r15.w = dot(r16.yzw, r16.yzw);
                r15.w = sqrt(r15.w);
                r14.w = r14.w / r15.w;
                r14.w = r14.w + r14.w;
                r14.w = sqrt(r14.w);
                r14.w = r5.w * 5 + r14.w;
                r14.w = -0.844799995 + r14.w;
                r25.y = r28.z;
                r25.z = r30.x;
                r34.x = dot(r16.yzw, r25.xyz);
                r26.xy = r28.xw;
                r26.z = r30.w;
                r34.y = dot(r16.yzw, r26.xyz);
                r30.x = r28.y;
                r34.z = dot(r16.yzw, r30.xyz);
                if (9 == 0) r15.w = 0; else if (9+16 < 32) {                 r15.w = (uint)r26.w << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);                } else r15.w = (uint)r26.w >> 16;
                r34.w = (uint)r15.w;
                r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r14.w).xyz;
                r28.xyz = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r14.w = (int)r28.y | (int)r28.x;
                r14.w = (int)r28.z | (int)r14.w;
                r16.yzw = r14.www ? float3(1,1,0) : r16.yzw;
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
                r15.z = r25.x ? 0 : 0.5;
                r26.xyz = r27.xyz + r15.xyz;
                r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r28.xyz = r34.xyz * r34.xyz;
                r28.xyz = r28.xyz * r14.xxx;
                r17.z = r25.y ? 0 : 0.5;
                r25.xyw = r27.xyz + r17.xyz;
                r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
                r25.xyw = r25.xyw * r28.yyy;
                r25.xyw = r26.xyz * r28.xxx + r25.xyw;
                r20.z = r25.z ? 0 : 0.5;
                r26.xyz = r27.xyz + r20.xyz;
                r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r25.xyz = r26.xyz * r28.zzz + r25.xyw;
                r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
                r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
                r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
                r14.w = (int)r27.y | (int)r27.x;
                r14.w = (int)r27.z | (int)r14.w;
                r26.xyz = r14.www ? float3(1,1,0) : r26.xyz;
                r27.xyz = r26.xyz * r25.xyz;
                r14.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r13.xyz = r25.xyz * r26.xyz + r13.xyz;
                r15.z = r14.w * r7.w;
                r16.yzw = r16.yzw * r14.xxx;
                r14.x = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r14.x = r7.w * r14.w + r14.x;
                r14.x = r15.z / r14.x;
                r24.xyz = r16.yzw * r14.xxx + r24.xyz;
              }
            }
          }
        }
        r23.xyzw = r24.xyzw;
        r8.yzw = r13.xyz;
        r9.z = (int)r9.z + 32;
      }
      r22.xyzw = r23.zxyw;
      r21.xyz = r8.yzw;
      r22.xyzw = r22.yzxw;
    } else {
      r22.x = r21.w;
    }
    r0.w = max(1, r22.w);
    r0.w = rcp(r0.w);
    r22.w = saturate(r22.w);
    r18.xyz = r21.xyz * r0.www;
    r19.xyz = r22.xyz * r0.www;
    r4.x = cmp(r22.w < 0.99000001);
    if (r4.x != 0) {
      r4.x = 1 + -r22.w;
      r4.y = sunConstants.globalProbeExposure * r4.x;
      r8.yzw = -globalProbeConstants.data[0].xyz + v5.xyz;
      r12.x = globalProbeConstants.data[0].w * r8.y;
      r12.yz = globalProbeConstants.data[1].xy * r8.zw;
      r8.yzw = saturate(float3(0.5,0.5,0.5) + r12.xyz);
      r12.xy = globalProbeConstants.data[1].zw * r8.yz;
      r12.z = globalProbeConstants.data[2].x * r8.w;
      r8.yzw = globalProbeConstants.data[2].yzw + r12.xyz;
      r9.yzw = cmp(float3(0,0,0) < r2.xyz);
      r12.xyz = r9.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r12.w = 0;
      r9.yzw = r12.wwx + r8.yzw;
      r9.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
      r13.xyz = r2.xyz * r2.xyz;
      r13.xyz = r13.xyz * r4.yyy;
      r14.xyz = r12.wwy + r8.yzw;
      r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r14.xyz = r14.xyz * r13.yyy;
      r9.yzw = r9.yzw * r13.xxx + r14.xyz;
      r8.yzw = r12.wwz + r8.yzw;
      r8.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r8.yzw, 0).xyz;
      r8.yzw = r8.yzw * r13.zzz + r9.yzw;
      r2.w = 0;
      r9.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
      r8.yzw = r9.yzw * r8.yzw;
      r2.w = dot(r8.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r18.xyz = r21.xyz * r0.www + r8.yzw;
      r10.w = 0;
      r8.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, r6.z).xyz;
      r0.w = sunConstants.globalProbeExposure * r4.x + -r2.w;
      r0.w = r1.y * r0.w + r2.w;
      r19.xyz = r8.yzw * r0.www + r19.xyz;
    }
  } else {
    r19.x = r18.w;
  }
  r0.w = r1.x + r1.z;
  r0.w = log2(abs(r0.w));
  r0.w = r4.w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w + r1.z;
  r0.w = saturate(-1 + r0.w);
  r12.xyz = r18.yzx * r1.zzz;
  r1.yz = r1.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.yz, 0).xy;
  r8.yzw = r19.xyz * r0.www;
  r9.yzw = r8.yzw * r1.yyy;
  r13.xyz = r8.yzw * r1.zzz;
  r0.w = sqrt(r4.w);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r1.y = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r1.z = r1.x * r0.w + r1.y;
  r0.w = r1.z * r0.w;
  r1.y = r1.y * r1.z;
  r1.z = dot(r2.xyz, sunConstants.wldDir.xyz);
  r2.w = cmp(0 >= abs(r1.z));
  if (r2.w != 0) {
    r4.x = 0;
  }
  if (r2.w == 0) {
    r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r8.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r8.yzw;
    r8.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r8.yzw;
    r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r8.yzw;
    r2.w = -sunConstants.splitDepthOffset + r8.w;
    r2.w = -r2.w * 6.10351563e-05 + 1;
    r4.y = saturate(r2.w);
    r4.y = cmp(r2.w == r4.y);
    if (r4.y != 0) {
      r4.y = 0;
      r5.w = 0;
      while (true) {
        r6.z = cmp(r4.y >= 3);
        if (r6.z != 0) break;
        r6.z = (uint)r4.y;
        r14.xy = -sunConstants.splitPinTransform[r6.z].xy + r8.yz;
        r6.w = max(abs(r14.x), abs(r14.y));
        r5.w = sunConstants.splitPinTransform[r6.z].z * r6.w;
        r6.z = cmp(r5.w < 1);
        if (r6.z != 0) {
          break;
        }
        r4.y = 1 + r4.y;
        r5.w = 0;
      }
    } else {
      r4.y = 3;
      r5.w = 0;
    }
    r6.z = cmp(r4.y >= 3);
    if (r6.z != 0) {
      r14.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r14.xx);
      r15.y = -r15.z;
      r14.xyz = r8.yzy * r15.xyz + r14.yzy;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.xyz = max(float3(0,0,0), r14.xyz);
      r14.xyz = min(r14.xyz, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r14.zy;
      r15.xy = floor(r15.xy);
      r6.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r6.w = r6.w * sunConstants.sstLightingConstants.coordScale + r15.x;
      r6.w = (uint)r6.w;
      r6.w = (int)r6.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r6.w, l(0), t23.xxxx
    r7.w = samp0[]..swiz;
      r10.w = (int)r7.w & 0x40000000;
      r11.w = (uint)r7.w << 2;
      if (r10.w == 0) {
        r10.w = (int)r7.w & 0x01ffffff;
        r15.x = (int)r6.w + (int)r10.w;
        r6.w = (uint)r7.w >> 25;
        r6.w = (uint)r6.w;
        r14.xyz = r14.xyz * r6.www;
        r14.xyz = frac(r14.xyz);
        r14.xyz = float3(128,128,128) * r14.xyz;
        r14.xyz = (uint3)r14.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r16.xy = (uint2)r14.zy >> int2(6,6);
        r6.w = (int)r15.z & 0xc0000000;
        r7.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(0), t23.xxxx
      r7.w = samp0[]..swiz;
        r7.w = r16.y ? r15.z : r7.w;
        r10.w = (uint)r7.w >> 13;
        r7.w = r16.x ? r10.w : r7.w;
        r7.w = (int)r7.w & 8191;
        r16.x = (int)r7.w + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r16.xyz = r6.www ? r15.xyz : r16.xyz;
        r17.yz = r6.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r18.xy = (uint2)r14.zy >> (uint2)r17.yy;
        r18.xy = (int2)r18.xy & int2(1,1);
        r7.w = (int)r16.z & 0xc0000000;
        r10.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r18.y ? r16.z : r10.w;
        r14.w = (uint)r10.w >> 13;
        r10.w = r18.x ? r14.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r17.x = (int)r10.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r16.xyz = r7.www ? r16.xyz : r17.xzw;
        r15.xyz = r6.www ? r15.xyz : r16.xyz;
        r6.w = (int)r15.z & 0xc0000000;
        if (r6.w == 0) {
          r6.w = (int)-r15.y + 6;
          r16.xy = (uint2)r14.zy >> (uint2)r6.ww;
          r6.w = (int)r15.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r7.w = (((uint)r16.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r7.w = (((uint)r16.x << 0) & bitmask.w) | ((uint)r7.w & ~bitmask.w);
          r7.w = (int)r7.w * 10;
          r6.w = (uint)r6.w >> (uint)r7.w;
          r6.w = (int)r6.w & 1023;
          r16.x = (int)r6.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.yy + int2(1,2);
          r6.w = (int)-r16.y + 6;
          r15.yw = (uint2)r14.zy >> (uint2)r6.ww;
          r6.w = (int)r16.w & 0xc0000000;
          r7.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r15.y << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r7.w = (uint)r7.w >> (uint)r10.w;
          r7.w = (int)r7.w & 1023;
          r17.x = (int)r7.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r6.www ? r16.xyw : r17.xyz;
          r7.w = (int)-r17.y + 6;
          r15.yw = (uint2)r14.zy >> (uint2)r7.ww;
          r7.w = (int)r17.z & 0xc0000000;
          r10.w = (int)r17.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.w = (((uint)r15.y << 0) & bitmask.w) | ((uint)r14.w & ~bitmask.w);
          r14.w = (int)r14.w * 10;
          r10.w = (uint)r10.w >> (uint)r14.w;
          r10.w = (int)r10.w & 1023;
          r18.x = (int)r10.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r15.yw = r7.ww ? r17.xz : r18.xy;
          r15.xz = r6.ww ? r16.xw : r15.yw;
        }
        r6.w = (int)r15.z & 0xc0000000;
        if (r6.w == 0) {
          if (14 == 0) r7.w = 0; else if (14+15 < 32) {           r7.w = (uint)r15.z << (32-(14 + 15)); r7.w = (uint)r7.w >> (32-14);          } else r7.w = (uint)r15.z >> 15;
          r7.w = (uint)r7.w;
          r7.w = sunConstants.sstLightingConstants.constants.spanInInches * r7.w;
          r7.w = 6.10388815e-05 * r7.w;
          r15.yw = (int2)r15.zz & int2(32767,536870912);
          r10.w = (uint)r15.y;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 3.05185094e-05 * r10.w;
          r14.w = (int)r14.y & 3;
          r14.w = (int)r14.w + (int)r15.x;
          r14.w = (int)r14.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r14.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r14.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r14.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r14.x = (uint)r14.w >> (uint)r16.x;
          r14.x = (int)r14.x & 255;
          r14.x = (uint)r14.x;
          r14.x = r14.x * r10.w;
          r14.x = r14.x * 0.00392156886 + r7.w;
          r14.y = (int)r16.y + 1;
          if (1 == 0) r14.z = 0; else if (1+1 < 32) {           r14.z = (uint)r14.z << (32-(1 + 1)); r14.z = (uint)r14.z >> (32-1);          } else r14.z = (uint)r14.z >> 1;
          r14.y = (int)r14.z + (int)r14.y;
          r14.y = (int)r14.y + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r14.y = (uint)r14.y >> (uint)r16.z;
          r14.y = (int)r14.y & 0x0000ffff;
          r14.y = (uint)r14.y;
          r10.w = r14.y * r10.w;
          r7.w = r10.w * 1.52590219e-05 + r7.w;
          r11.w = r15.w ? r14.x : r7.w;
        } else {
          r7.w = (int)r15.z & 0x80000000;
          r10.w = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
        r10.w = samp0[]..swiz;
          r7.w = r7.w ? r10.w : 0;
          r10.w = (uint)r15.z << 2;
          r14.x = (uint)r7.w >> 16;
          r14.x = f16tof32(r14.x);
          r7.w = (int)r7.w & 0x0000ffff;
          r7.w = f16tof32(r7.w);
          r10.w = r8.y * r14.x + r10.w;
          r7.w = r8.z * r7.w + r10.w;
          r11.w = r6.w ? r7.w : r11.w;
        }
      }
      r6.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r8.w;
      r6.w = cmp(r11.w < r6.w);
      r4.x = r6.w ? 0 : 1;
    }
    if (r6.z == 0) {
      if (enableDitheredShadow == 0) {
        r6.z = (uint)r4.y;
        r14.xy = -sunConstants.splitPinTransform[r6.z].xy + r8.yz;
        r6.zw = sunConstants.splitPinTransform[r6.z].zz * r14.xy;
        r14.xy = r6.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.z = (int16)sunConstants.splitArrayOffset;
        r14.z = r6.z + r4.y;
        r6.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r2.w).x;
        r6.w = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
        r6.z = r6.z + r6.w;
        r6.z = saturate(-1 + r6.z);
        r6.w = r6.z * r6.z;
        r4.x = r6.w * r6.z;
      }
      if (enableDitheredShadow != 0) {
        r14.x = -r6.x;
        r6.z = (uint)r4.y;
        r4.y = 1 + r4.y;
        r4.y = min(2, r4.y);
        r4.y = (uint)r4.y;
        r5.w = 1 + -r5.w;
        r5.w = 28 * r5.w;
        r5.w = (uint)r5.w;
        r15.xy = -sunConstants.splitPinTransform[r6.z].xy + r8.yz;
        r15.xy = sunConstants.splitPinTransform[r6.z].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.yz = -sunConstants.splitPinTransform[r4.y].xy + r8.yz;
        r8.yz = sunConstants.splitPinTransform[r4.y].zz * r8.yz;
        r8.yz = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.y = r7.x;
        r14.z = r6.x;
        r6.w = 0;
        r7.w = 0;
        while (true) {
          r8.w = cmp((uint)r7.w >= 8);
          if (r8.w != 0) break;
          r8.w = cmp((uint)r5.w < (uint)r7.w);
          r15.zw = r8.ww ? r8.yz : r15.xy;
          r10.w = r8.w ? sunConstants.splitPinTransform[r4.y].w : sunConstants.splitPinTransform[r6.z].w;
          r8.w = r8.w ? r4.y : r6.z;
          r16.x = dot(icb[r7.w+0].yx, r14.xy);
          r16.y = dot(icb[r7.w+0].yx, r14.yz);
          r16.xy = r16.xy * r10.ww + r15.zw;
          r8.w = (int)r8.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r8.w;
          r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r2.w).x;
          r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r8.w = r10.w + r8.w;
          r8.w = saturate(-1 + r8.w);
          r6.w = r8.w * 0.125 + r6.w;
          r7.w = (int)r7.w + 1;
        }
        r2.w = r6.w * r6.w;
        r4.x = r2.w * r6.w;
      }
    }
  }
  r2.w = cmp(0 < abs(r1.z));
  if (r2.w != 0) {
    r2.w = cmp(0 < r4.x);
    if (r2.w != 0) {
      r2.w = sunConstants.specScale * r4.z;
      r2.w = 0.25 * r2.w;
      if (sunConstants.sunCookieIndex != 0) {
        r14.xyz = eyeOffset.xyz + v5.xyz;
        r14.w = 1;
        r4.y = dot(sunConstants.sunCookieTransform[0].xyzw, r14.xyzw);
        r5.w = dot(sunConstants.sunCookieTransform[1].xyzw, r14.xyzw);
        r14.x = frac(r4.y);
        r14.y = frac(r5.w);
        r4.y = -1 + (int14)sunConstants.sunCookieIndex;
        r14.z = (uint)r4.y;
        r8.yzw = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
        r8.yzw = float3(-1,-1,-1) + r8.yzw;
        r8.yzw = sunConstants.sunCookieIntensity * r8.yzw + float3(1,1,1);
        r8.yzw = sunConstants.color.xyz * r8.yzw;
      } else {
        r8.yzw = sunConstants.color.xyz;
      }
      r4.y = viewmodelSunShadowRaw >> 16;
      r5.w = cmp(0 < (uint)r4.y);
      r5.w = r3.w ? r5.w : 0;
      if (r5.w != 0) {
        r4.y = (int)r4.y + numLights;
        r4.y = (int)r4.y + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r5.w, r4.y, l(52), t12.xxxx
      r5.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r4.y, l(68), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.y, l(84), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.y, l(132), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r4.y, l(148), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
        r6.z = abs(r1.z) * -0.200000003 + 0.400000006;
        r6.w = cmp(r1.z < 0);
        r6.z = r6.w ? -r6.z : r6.z;
        r18.xyz = r2.xyz * r6.zzz + v5.xyz;
        r18.w = 1;
        r14.x = dot(r14.xyzw, r18.xyzw);
        r14.y = dot(r15.xyzw, r18.xyzw);
        r6.zw = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.zw = r6.zw + r17.zw;
        r6.zw = r6.zw * r17.xy;
        r14.xy = r5.ww / r16.xz;
        r14.zw = float2(1,1) + -r14.xy;
        r14.zw = cmp(r6.zw >= r14.zw);
        r14.xy = cmp(r14.xy >= r6.zw);
        r14.xy = (int2)r14.xy | (int2)r14.zw;
        r7.w = (int)r14.y | (int)r14.x;
        if (r7.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r4.y, l(28), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r4.y, l(100), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xy, r4.y, l(164), t12.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
          r4.y = dot(r14.xyzw, r18.xyzw);
          r6.zw = saturate(r6.zw);
          r14.xy = r6.zw * r16.xz + r16.yw;
          r4.y = r4.y + r15.x;
          r4.y = r4.y / r15.y;
          r4.y = max(6.10351563e-05, r4.y);
          r6.z = (int)r7.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r15.x = -r6.x;
            r16.z = (uint)r6.z;
            r15.y = r7.x;
            r15.z = r6.x;
            r6.w = 0;
            r7.w = 0;
            while (true) {
              r10.w = cmp((int)r7.w >= 8);
              if (r10.w != 0) break;
              r17.x = dot(icb[r7.w+0].yx, r15.xy);
              r17.y = dot(icb[r7.w+0].yx, r15.yz);
              r16.xy = r17.xy * r5.ww + r14.xy;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r4.y).x;
              r6.w = r10.w * 0.125 + r6.w;
              r7.w = (int)r7.w + 1;
            }
          } else {
            r14.z = (uint)r6.z;
            r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r4.y).x;
          }
          r4.y = r6.w * r6.w;
          r4.y = r4.y * r6.w;
        } else {
          r4.y = 1;
        }
        r4.x = r4.x * r4.y;
      } else {
        r4.y = viewmodelSunShadowRaw & 0x0000ffff;
        r5.w = cmp(0 < (uint)r4.y);
        r6.z = ~(int)r3.w;
        r5.w = r5.w ? r6.z : 0;
        if (r5.w != 0) {
          r4.y = (int)r4.y + numLights;
          r4.y = (int)r4.y + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r5.w, r4.y, l(52), t12.xxxx
        r5.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r4.y, l(68), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.y, l(84), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.y, l(132), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r4.y, l(148), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
          r6.z = abs(r1.z) * -0.200000003 + 0.400000006;
          r6.w = cmp(r1.z < 0);
          r6.z = r6.w ? -r6.z : r6.z;
          r18.xyz = r2.xyz * r6.zzz + v5.xyz;
          r18.w = 1;
          r14.x = dot(r14.xyzw, r18.xyzw);
          r14.y = dot(r15.xyzw, r18.xyzw);
          r6.zw = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r6.zw = r6.zw + r17.zw;
          r6.zw = r6.zw * r17.xy;
          r14.xy = r5.ww / r16.xz;
          r14.zw = float2(1,1) + -r14.xy;
          r14.zw = cmp(r6.zw >= r14.zw);
          r14.xy = cmp(r14.xy >= r6.zw);
          r14.xy = (int2)r14.xy | (int2)r14.zw;
          r7.w = (int)r14.y | (int)r14.x;
          if (r7.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r4.y, l(28), t12.xxxx
          r7.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r4.y, l(100), t12.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xy, r4.y, l(164), t12.xyxx
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
            r4.y = dot(r14.xyzw, r18.xyzw);
            r6.zw = saturate(r6.zw);
            r14.xy = r6.zw * r16.xz + r16.yw;
            r4.y = r4.y + r15.x;
            r4.y = r4.y / r15.y;
            r4.y = max(6.10351563e-05, r4.y);
            r6.z = (int)r7.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r15.x = -r6.x;
              r16.z = (uint)r6.z;
              r15.y = r7.x;
              r15.z = r6.x;
              r6.w = 0;
              r7.w = 0;
              while (true) {
                r10.w = cmp((int)r7.w >= 8);
                if (r10.w != 0) break;
                r17.x = dot(icb[r7.w+0].yx, r15.xy);
                r17.y = dot(icb[r7.w+0].yx, r15.yz);
                r16.xy = r17.xy * r5.ww + r14.xy;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r4.y).x;
                r6.w = r10.w * 0.125 + r6.w;
                r7.w = (int)r7.w + 1;
              }
            } else {
              r14.z = (uint)r6.z;
              r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r4.y).x;
            }
            r4.y = r6.w * r6.w;
            r4.y = r4.y * r6.w;
          } else {
            r4.y = 1;
          }
          r4.x = r4.x * r4.y;
        }
      }
      r4.y = -r1.x * 0.5 + 1;
      r4.y = -abs(r1.z) * r4.y + 1;
      r4.y = r4.y * r4.y;
      r4.y = -r4.y * 0.620000005 + 0.620000005;
      r4.y = r4.y + -abs(r1.z);
      r4.y = r4.w * r4.y + abs(r1.z);
      r4.y = r4.y * r4.x;
      r5.w = cmp(0 < r1.z);
      r14.xyz = r4.yyy * r8.zwy + r12.xyz;
      r1.z = saturate(r1.z);
      r15.xyz = -v5.xyz * r1.www + sunConstants.wldDir.xyz;
      r1.w = dot(r15.xyz, r15.xyz);
      r1.w = rsqrt(r1.w);
      r15.xyz = r15.xyz * r1.www;
      r1.w = dot(r15.xyz, r5.xyz);
      r4.y = dot(r2.xyz, r15.xyz);
      r6.z = abs(r4.y) * r4.z + -abs(r4.y);
      r4.y = abs(r4.y) * r6.z + 1;
      r6.z = r1.z * r0.w + r1.y;
      r4.y = r4.y * r4.y;
      r4.y = r4.y * r6.z;
      r4.y = rcp(r4.y);
      r1.z = r1.z * r2.w;
      r1.z = r4.y * r1.z;
      r1.z = r1.z * r4.x;
      r15.yzw = r1.zzz * r8.yzw + r13.xyz;
      r1.w = saturate(1 + -r1.w);
      r2.w = r1.w * r1.w;
      r2.w = r2.w * r2.w;
      r1.w = r2.w * r1.w;
      r1.z = r1.z * r1.w;
      r8.yzw = r1.zzz * r8.yzw + r9.yzw;
      r14.w = r12.z;
      r12.w = r14.z;
      r16.xyzw = r5.wwww ? r14.zxyw : r12.zxyw;
      r12.zw = r8.yz;
      r14.zw = r9.yz;
      r14.xyzw = r5.wwww ? r12.xyzw : r14.xyzw;
      r15.x = r8.w;
      r13.w = r9.w;
      r13.xyzw = r5.wwww ? r15.yzwx : r13.xyzw;
      r12.z = r16.w;
      r12.xy = r14.xy;
      r9.yz = r14.zw;
      r9.w = r13.w;
    } else {
      r16.xyz = r12.zxy;
    }
  } else {
    r16.xyz = r12.zxy;
  }
  r14.x = -r6.x;
  r1.z = ~(int)r3.w;
  r1.x = -r1.x * 0.5 + 1;
  r15.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v5.xyz;
  r18.w = 1;
  r19.w = 1;
  r14.z = r6.x;
  r20.w = 1;
  r21.z = 1;
  r22.w = 1;
  r14.yw = r7.xx;
  r6.y = r14.w;
  r23.w = 1;
  r7.y = r14.x;
  r7.z = r6.x;
  r24.w = 1;
  r25.x = r7.x;
  r25.y = r14.x;
  r25.z = r6.x;
  r26.x = r7.x;
  r26.y = r14.x;
  r26.z = r6.x;
  r27.x = r7.x;
  r27.y = r14.x;
  r27.z = r6.x;
  r8.yzw = r16.xyz;
  r28.xyz = r12.zxy;
  r29.xyz = r9.yzw;
  r30.xyz = r13.xyz;
  r1.w = enableDitheredShadow;
  r2.w = 0;
  while (true) {
    r4.x = cmp((uint)r2.w >= numLights);
    if (r4.x != 0) break;
    r15.z = (uint)r2.w >> 5;
    r17.xyz = (int3)r11.xyz + (int3)r15.xyz;
    r4.x = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r8.yzw;
    r31.xyz = r28.xyz;
    r32.xyz = r29.xyz;
    r33.xyz = r30.xyz;
    r4.y = r1.w;
    r5.w = r4.x;
    while (true) {
      if (r5.w == 0) break;
      r6.z = firstbitlow((uint)r5.w);
      r6.w = 1 << (int)r6.z;
      r7.w = (int)r5.w & (int)r6.w;
      if (r7.w != 0) {
        r5.w = (int)r5.w ^ (int)r6.w;
        r6.z = (int)r2.w + (int)r6.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r34.xyzw, r6.z, l(0), t11.xyzw
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
      r34.z = samp0[]..swiz;
      r34.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r35.xy, r6.z, l(16), t11.xyxx
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
        r34.xyz = -v5.xyz + r34.xyz;
        r35.z = r34.w;
        r34.xyz = cmp(abs(r34.xyz) < r35.zxy);
        r6.w = r34.y ? r34.x : 0;
        r6.w = r34.z ? r6.w : 0;
        if (r6.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r6.z, l(0), t12.wxyz
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r6.z, l(16), t12.zxyw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r6.z, l(32), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r6.z, l(48), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r6.z, l(64), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r6.z, l(80), t12.xyzw
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r6.z, l(96), t12.yzwx
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
          if (3 == 0) r6.w = 0; else if (3+24 < 32) {           r6.w = (uint)r35.w << (32-(3 + 24)); r6.w = (uint)r6.w >> (32-3);          } else r6.w = (uint)r35.w >> 24;
          switch (r6.w) {
            case 4 :            r6.w = cmp(0 < r40.x);
            r41.xy = r39.zw;
            r41.z = r40.w;
            r42.xyz = -r41.xyz * float3(0.5,0.5,0.5) + r34.yzw;
            r43.xyz = -v5.xyz + r42.xyz;
            r7.w = dot(r41.xyz, r43.xyz);
            r10.w = saturate(-r7.w / r40.x);
            r44.xyz = r10.www * r41.xyz + r42.xyz;
            r44.xyz = r6.www ? r44.xyz : r34.yzw;
            r44.xyz = -v5.xyz + r44.xyz;
            r11.w = dot(r44.xyz, r44.xyz);
            r12.w = rsqrt(r11.w);
            r44.xyz = r44.xyz * r12.www;
            r12.w = dot(r2.xyz, r44.xyz);
            r13.w = cmp(0 < abs(r12.w));
            if (r13.w != 0) {
              r13.w = sqrt(r11.w);
              r15.z = r37.x * r37.x;
              r11.w = r15.z / r11.w;
              r11.w = min(1, r11.w);
              r15.zw = saturate(r13.ww * r36.xz + r36.yw);
              r44.xy = r15.zw * r15.zw;
              r15.zw = r15.zw * float2(-2,-2) + float2(3,3);
              r15.zw = r44.xy * r15.zw;
              r11.w = r15.z * r11.w;
              r11.w = r11.w * r15.w;
              r13.w = cmp(0 < r11.w);
              if (r13.w != 0) {
                if (3 == 0) r13.w = 0; else if (3+27 < 32) {                 r13.w = (uint)r35.w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);                } else r13.w = (uint)r35.w >> 27;
                r13.w = cmp((int)r13.w != 1);
                if (r13.w != 0) {
                  r13.w = abs(r12.w) * -0.200000003 + 0.400000006;
                  r15.z = cmp(r12.w < 0);
                  r13.w = r15.z ? -r13.w : r13.w;
                  r44.xyz = r2.xyz * r13.www + v5.xyz;
                  r44.xyz = r44.xyz + -r38.xyz;
                  r13.w = max(abs(r44.y), abs(r44.z));
                  r13.w = max(abs(r44.x), r13.w);
                  r13.w = r39.x / r13.w;
                  r13.w = r13.w + r39.y;
                  r15.z = dot(r44.xyz, r44.xyz);
                  r15.z = rsqrt(r15.z);
                  r13.w = max(6.10351563e-05, r13.w);
                  r15.w = (int)r35.w & 0x0000ffff;
                  r45.w = (uint)r15.w;
                  r15.w = 0;
                  r16.w = 0;
                  while (true) {
                    r21.w = cmp((int)r16.w >= 8);
                    if (r21.w != 0) break;
                    r46.y = dot(icb[r16.w+0].yx, r14.xy);
                    r46.z = dot(icb[r16.w+0].yx, r14.yz);
                    r46.yz = r46.yz * r37.yy;
                    r46.x = r46.y * r9.x;
                    r46.w = r46.y * r8.x;
                    r45.xyz = r44.xyz * r15.zzz + r46.xzw;
                    r21.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r45.xyzw, r13.w).x;
                    r15.w = r21.w * 0.125 + r15.w;
                    r16.w = (int)r16.w + 1;
                  }
                } else {
                  r15.w = 1;
                }
                r11.w = r15.w * r11.w;
                r13.w = cmp(0 < r11.w);
                if (r13.w != 0) {
                  r13.w = r35.x * r4.z;
                  r13.w = 0.25 * r13.w;
                  r15.z = dot(r41.xyz, r10.xyz);
                  r16.w = dot(r10.xyz, r43.xyz);
                  r21.w = -r15.z * r15.z + r40.x;
                  r7.w = r15.z * r16.w + -r7.w;
                  r7.w = saturate(r7.w / r21.w);
                  r15.z = r21.w / r40.x;
                  r15.z = 10 * r15.z;
                  r15.z = min(1, r15.z);
                  r7.w = r7.w + -r10.w;
                  r7.w = r15.z * r7.w + r10.w;
                  r41.xyz = r7.www * r41.xyz + r42.xyz;
                  r41.xyz = r6.www ? r41.xyz : r34.yzw;
                  r41.xyz = -v5.xyz + r41.xyz;
                  r6.w = dot(r41.xyz, r41.xyz);
                  r6.w = rsqrt(r6.w);
                  r42.xyz = r41.xyz * r6.www;
                  if (4 == 0) r7.w = 0; else if (4+16 < 32) {                   r7.w = (uint)r35.w << (32-(4 + 16)); r7.w = (uint)r7.w >> (32-4);                  } else r7.w = (uint)r35.w >> 16;
                  r10.w = cmp(0 < (uint)r7.w);
                  r10.w = r3.w ? r10.w : 0;
                  if (r10.w != 0) {
                    r7.w = (int)r7.w + numLights;
                    r7.w = (int)r7.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r7.w, l(52), t12.xxxx
                  r10.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r7.w, l(100), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r7.w, l(116), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                    r15.z = abs(r12.w) * -0.200000003 + 0.400000006;
                    r16.w = cmp(r12.w < 0);
                    r15.z = r16.w ? -r15.z : r15.z;
                    r19.xyz = r2.xyz * r15.zzz + v5.xyz;
                    r15.z = dot(r43.xyzw, r19.xyzw);
                    r16.w = dot(r44.xyzw, r19.xyzw);
                    r21.w = cmp(r16.w < r15.z);
                    if (r21.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r7.w, l(68), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r7.w, l(84), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r7.w, l(132), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r7.w, l(148), t12.xyzw
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                    r46.z = samp0[]..swiz;
                    r46.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r7.w, l(164), t12.xyxx
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                      r43.x = dot(r43.xyzw, r19.xyzw);
                      r43.y = dot(r44.xyzw, r19.xyzw);
                      r19.xy = r43.xy / r16.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r46.zw;
                      r19.xy = r19.xy * r46.xy;
                      r43.xy = r10.ww / r45.xz;
                      r43.zw = float2(1,1) + -r43.xy;
                      r43.zw = cmp(r19.xy >= r43.zw);
                      r43.xy = cmp(r43.xy >= r19.xy);
                      r43.xy = (int2)r43.xy | (int2)r43.zw;
                      r19.z = (int)r43.y | (int)r43.x;
                      r19.xy = saturate(r19.xy);
                      r43.xy = r19.xy * r45.xz + r45.yw;
                      r19.x = r47.y * r16.w;
                      r15.z = r47.x * r16.w + r15.z;
                      r15.z = r15.z / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r16.w = (int)r21.w | (int)r19.z;
                    if (r16.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(28), t12.xxxx
                    r7.w = samp0[]..swiz;
                      r15.z = max(6.10351563e-05, r15.z);
                      r7.w = (int)r7.w & 0x0000ffff;
                      if (r4.y != 0) {
                        r19.z = (uint)r7.w;
                        r16.w = 0;
                        r21.w = 0;
                        while (true) {
                          r25.w = cmp((int)r21.w >= 8);
                          if (r25.w != 0) break;
                          r44.x = dot(icb[r21.w+0].yx, r14.xw);
                          r44.y = dot(icb[r21.w+0].xy, r6.xy);
                          r19.xy = r44.xy * r10.ww + r43.xy;
                          r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r15.z).x;
                          r16.w = r19.x * 0.125 + r16.w;
                          r21.w = (int)r21.w + 1;
                        }
                      } else {
                        r43.z = (uint)r7.w;
                        r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r15.z).x;
                      }
                      r7.w = r16.w * r16.w;
                      r7.w = r7.w * r16.w;
                    } else {
                      r7.w = 1;
                    }
                    r11.w = r11.w * r7.w;
                  } else {
                    if (4 == 0) r7.w = 0; else if (4+20 < 32) {                     r7.w = (uint)r35.w << (32-(4 + 20)); r7.w = (uint)r7.w >> (32-4);                    } else r7.w = (uint)r35.w >> 20;
                    r10.w = cmp(0 < (uint)r7.w);
                    r10.w = r10.w ? r1.z : 0;
                    if (r10.w != 0) {
                      r7.w = (int)r7.w + numLights;
                      r7.w = (int)r7.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r7.w, l(52), t12.xxxx
                    r10.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r7.w, l(100), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r7.w, l(116), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                      r15.z = abs(r12.w) * -0.200000003 + 0.400000006;
                      r19.x = cmp(r12.w < 0);
                      r15.z = r19.x ? -r15.z : r15.z;
                      r20.xyz = r2.xyz * r15.zzz + v5.xyz;
                      r15.z = dot(r43.xyzw, r20.xyzw);
                      r19.x = dot(r44.xyzw, r20.xyzw);
                      r19.y = cmp(r19.x < r15.z);
                      if (r19.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r7.w, l(68), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r7.w, l(84), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r7.w, l(132), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r7.w, l(148), t12.xyzw
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                      r46.z = samp0[]..swiz;
                      r46.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r7.w, l(164), t12.xyxx
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                        r43.x = dot(r43.xyzw, r20.xyzw);
                        r43.y = dot(r44.xyzw, r20.xyzw);
                        r20.xy = r43.xy / r19.xx;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r46.zw;
                        r20.xy = r20.xy * r46.xy;
                        r43.xy = r10.ww / r45.xz;
                        r43.zw = float2(1,1) + -r43.xy;
                        r43.zw = cmp(r20.xy >= r43.zw);
                        r43.xy = cmp(r43.xy >= r20.xy);
                        r43.xy = (int2)r43.xy | (int2)r43.zw;
                        r19.z = (int)r43.y | (int)r43.x;
                        r20.xy = saturate(r20.xy);
                        r20.xy = r20.xy * r45.xz + r45.yw;
                        r21.w = r47.y * r19.x;
                        r15.z = r47.x * r19.x + r15.z;
                        r15.z = r15.z / r21.w;
                      } else {
                        r19.z = -1;
                      }
                      r19.x = (int)r19.y | (int)r19.z;
                      if (r19.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.w, l(28), t12.xxxx
                      r7.w = samp0[]..swiz;
                        r15.z = max(6.10351563e-05, r15.z);
                        r7.w = (int)r7.w & 0x0000ffff;
                        if (r4.y != 0) {
                          r19.z = (uint)r7.w;
                          r21.w = 0;
                          r25.w = 0;
                          while (true) {
                            r26.w = cmp((int)r25.w >= 8);
                            if (r26.w != 0) break;
                            r43.x = dot(icb[r25.w+0].xy, r7.xy);
                            r43.y = dot(icb[r25.w+0].yx, r7.xz);
                            r19.xy = r43.xy * r10.ww + r20.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r15.z).x;
                            r21.w = r19.x * 0.125 + r21.w;
                            r25.w = (int)r25.w + 1;
                          }
                        } else {
                          r20.z = (uint)r7.w;
                          r21.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r15.z).x;
                        }
                        r7.w = r21.w * r21.w;
                        r7.w = r7.w * r21.w;
                      } else {
                        r7.w = 1;
                      }
                      r11.w = r11.w * r7.w;
                    }
                  }
                  r7.w = -abs(r12.w) * r1.x + 1;
                  r7.w = r7.w * r7.w;
                  r7.w = -r7.w * 0.620000005 + 0.620000005;
                  r7.w = r7.w + -abs(r12.w);
                  r7.w = r4.w * r7.w + abs(r12.w);
                  r7.w = r7.w * r11.w;
                  r35.x = r34.x;
                  r10.w = cmp(0 < r12.w);
                  r19.xyz = r7.www * r35.xyz + r17.xyz;
                  r12.w = saturate(dot(r2.xyz, r42.xyz));
                  r20.xyz = r41.xyz * r6.www + r5.xyz;
                  r6.w = dot(r20.xyz, r20.xyz);
                  r6.w = rsqrt(r6.w);
                  r20.xyz = r20.xyz * r6.www;
                  r6.w = dot(r20.xyz, r5.xyz);
                  r15.z = dot(r2.xyz, r20.xyz);
                  r20.x = abs(r15.z) * r4.z + -abs(r15.z);
                  r15.z = abs(r15.z) * r20.x + 1;
                  r20.x = r12.w * r0.w + r1.y;
                  r15.z = r15.z * r15.z;
                  r15.z = r15.z * r20.x;
                  r15.z = rcp(r15.z);
                  r12.w = r12.w * r13.w;
                  r12.w = r15.z * r12.w;
                  r11.w = r12.w * r11.w;
                  r20.xyz = r11.www * r35.xyz + r33.xyz;
                  r6.w = saturate(1 + -r6.w);
                  r12.w = r6.w * r6.w;
                  r12.w = r12.w * r12.w;
                  r6.w = r12.w * r6.w;
                  r6.w = r11.w * r6.w;
                  r41.xyz = r6.www * r35.xyz + r32.xyz;
                  r42.xyz = r7.www * r35.xyz + r31.xyz;
                  r17.xyz = r10.www ? r19.xyz : r17.xyz;
                  r31.xyz = r10.www ? r31.xyz : r42.xyz;
                  r32.xyz = r10.www ? r41.xyz : r32.xyz;
                  r33.xyz = r10.www ? r20.xyz : r33.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r37.zw;
            r19.z = r38.w;
            r19.xyz = -v5.xyz + r19.xyz;
            r6.w = dot(r19.xyz, r19.xyz);
            r6.w = rsqrt(r6.w);
            r20.xyz = r19.xyz * r6.www;
            r7.w = dot(r2.xyz, r20.xyz);
            r10.w = cmp(0 < abs(r7.w));
            if (r10.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r6.z, l(112), t12.yzwx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r6.z, l(128), t12.zxyw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
              r43.xyz = r41.xyz;
              r43.w = r42.y;
              r10.w = dot(r43.xyzw, r18.xyzw);
              r11.w = cmp(r10.w < 1);
              if (r11.w != 0) {
                r20.xyz = float3(1,1,1);
                r11.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r6.z, l(172), t12.yzwx
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r6.z, l(188), t12.wxyz
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r6.z, l(204), t12.xyzw
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r6.z, l(236), t12.xxxx
              r12.w = samp0[]..swiz;
                r47.xyz = -v5.xyz + r34.yzw;
                r13.w = r37.x * r37.x;
                r15.z = dot(r47.xyz, r47.xyz);
                r13.w = r13.w / r15.z;
                r13.w = min(1, r13.w);
                r36.xy = saturate(r10.ww * r36.xz + r36.yw);
                r36.zw = r36.xy * r36.xy;
                r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                r36.xy = r36.zw * r36.xy;
                r13.w = r36.x * r13.w;
                r13.w = r13.w * r36.y;
                r38.w = r39.x;
                r36.x = dot(r38.xyzw, r18.xyzw);
                r47.xyz = r39.yzw;
                r47.w = r40.w;
                r36.y = dot(r47.xyzw, r18.xyzw);
                r21.xy = r36.xy / r10.ww;
                r10.w = cmp(r44.w < 0.00048828125);
                if (r10.w != 0) {
                  r45.y = r46.x;
                  r36.xy = saturate(abs(r21.xy) * r45.zw + r45.xy);
                  r36.zw = r36.xy * r36.xy;
                  r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                  r36.xy = r36.zw * r36.xy;
                  r10.w = r36.x * r36.y;
                } else {
                  r44.w = r45.y;
                  r36.xyzw = saturate(r44.xyzw * abs(r21.yyxx));
                  r36.xyzw = log2(r36.xyzw);
                  r36.xyzw = r45.xxxx * r36.xyzw;
                  r36.xyzw = exp2(r36.xyzw);
                  r36.xy = r36.xy + r36.zw;
                  r36.xy = log2(r36.xy);
                  r36.xy = r46.xx * r36.xy;
                  r36.xy = exp2(r36.xy);
                  r15.z = r45.z * r36.x;
                  r25.w = r45.w * r36.y + -1;
                  r15.z = r45.w * r36.y + -r15.z;
                  r15.z = saturate(r25.w / r15.z);
                  r25.w = r15.z * r15.z;
                  r15.z = r15.z * -2 + 3;
                  r10.w = r25.w * r15.z;
                }
                r11.w = r13.w * r10.w;
                r10.w = (int)r12.w & 255;
                if (r10.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyz, r6.z, l(220), t12.xyzx
                r36.x = samp0[]..swiz;
                r36.y = samp0[]..swiz;
                r36.z = samp0[]..swiz;
                  r12.w = dot(r46.yzw, r21.xyz);
                  r13.w = dot(r36.xyz, r21.xyz);
                  r36.x = frac(r12.w);
                  r36.y = frac(r13.w);
                  r10.w = (int)r10.w + -1;
                  r36.z = (uint)r10.w;
                  r20.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
                } else {
                  r20.xyz = float3(1,1,1);
                }
              }
              r34.yz = r35.yz;
              r20.xyz = r34.xyz * r20.xyz;
              r10.w = cmp(0 < r11.w);
              if (r10.w != 0) {
                if (3 == 0) r10.w = 0; else if (3+27 < 32) {                 r10.w = (uint)r35.w << (32-(3 + 27)); r10.w = (uint)r10.w >> (32-3);                } else r10.w = (uint)r35.w >> 27;
                r10.w = cmp((int)r10.w != 1);
                if (r10.w != 0) {
                  r10.w = abs(r7.w) * -0.200000003 + 0.400000006;
                  r12.w = cmp(r7.w < 0);
                  r10.w = r12.w ? -r10.w : r10.w;
                  r22.xyz = r2.xyz * r10.www + v5.xyz;
                  r41.xyz = r40.xyz;
                  r10.w = dot(r41.xyzw, r22.xyzw);
                  r12.w = dot(r43.xyzw, r22.xyzw);
                  r13.w = cmp(r12.w >= r10.w);
                  if (r13.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.y, r6.z, l(144), t12.xxxx
                  r42.y = samp0[]..swiz;
                    r38.w = r39.x;
                    r21.x = dot(r38.xyzw, r22.xyzw);
                    r40.xyz = r39.yzw;
                    r21.y = dot(r40.xyzw, r22.xyzw);
                    r21.xy = r21.xy / r12.ww;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r21.xy * r42.zw + r42.xy;
                    r6.z = r10.w / r12.w;
                    r6.z = max(6.10351563e-05, r6.z);
                    r10.w = (int)r35.w & 0x0000ffff;
                    if (r4.y != 0) {
                      r34.z = (uint)r10.w;
                      r12.w = 0;
                      r13.w = 0;
                      while (true) {
                        r15.z = cmp((int)r13.w >= 8);
                        if (r15.z != 0) break;
                        r21.x = dot(icb[r13.w+0].xy, r25.xy);
                        r21.y = dot(icb[r13.w+0].yx, r25.xz);
                        r34.xy = r21.xy * r37.yy + r22.xy;
                        r15.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r6.z).x;
                        r12.w = r15.z * 0.125 + r12.w;
                        r13.w = (int)r13.w + 1;
                      }
                    } else {
                      r22.z = (uint)r10.w;
                      r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r6.z).x;
                    }
                    r6.z = r12.w * r12.w;
                    r6.z = r6.z * r12.w;
                  } else {
                    r6.z = 1;
                  }
                } else {
                  r6.z = 1;
                }
                r6.z = r11.w * r6.z;
                r10.w = cmp(0 < r6.z);
                if (r10.w != 0) {
                  r10.w = r35.x * r4.z;
                  r10.w = 0.25 * r10.w;
                  if (4 == 0) r11.w = 0; else if (4+16 < 32) {                   r11.w = (uint)r35.w << (32-(4 + 16)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r35.w >> 16;
                  r13.w = cmp(0 < (uint)r11.w);
                  r13.w = r3.w ? r13.w : 0;
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
                    r15.z = abs(r7.w) * -0.200000003 + 0.400000006;
                    r21.x = cmp(r7.w < 0);
                    r15.z = r21.x ? -r15.z : r15.z;
                    r23.xyz = r2.xyz * r15.zzz + v5.xyz;
                    r21.x = dot(r34.xyzw, r23.xyzw);
                    r21.y = dot(r36.xyzw, r23.xyzw);
                    r15.z = dot(r37.xyzw, r23.xyzw);
                    r22.x = dot(r38.xyzw, r23.xyzw);
                    r22.y = cmp(r22.x < r15.z);
                    r21.xy = r21.xy / r22.xx;
                    r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.xy = r21.xy + r40.zw;
                    r21.xy = r21.xy * r40.xy;
                    r23.xy = r13.ww / r39.xz;
                    r34.xy = float2(1,1) + -r23.xy;
                    r34.xy = cmp(r21.xy >= r34.xy);
                    r23.xy = cmp(r23.xy >= r21.xy);
                    r23.xy = (int2)r23.xy | (int2)r34.xy;
                    r22.z = (int)r23.y | (int)r23.x;
                    r22.y = (int)r22.y | (int)r22.z;
                    if (r22.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r11.w, l(28), t12.xxxx
                    r22.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r11.w, l(164), t12.xyxx
                    r23.x = samp0[]..swiz;
                    r23.y = samp0[]..swiz;
                      r21.xy = saturate(r21.xy);
                      r34.xy = r21.xy * r39.xz + r39.yw;
                      r11.w = r23.y * r22.x;
                      r15.z = r23.x * r22.x + r15.z;
                      r11.w = r15.z / r11.w;
                      r11.w = max(6.10351563e-05, r11.w);
                      r15.z = r22.y ? 0.000000 : 0;
                      if (r4.y != 0) {
                        r22.z = (uint)r15.z;
                        r21.xy = float2(0,0);
                        while (true) {
                          r23.x = cmp((int)r21.y >= 8);
                          if (r23.x != 0) break;
                          r23.x = dot(icb[r21.y+0].xy, r26.xy);
                          r23.y = dot(icb[r21.y+0].yx, r26.xz);
                          r22.xy = r23.xy * r13.ww + r34.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r11.w).x;
                          r21.x = r22.x * 0.125 + r21.x;
                          r21.y = (int)r21.y + 1;
                        }
                      } else {
                        r34.z = (uint)r15.z;
                        r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r11.w).x;
                      }
                      r11.w = r21.x * r21.x;
                      r11.w = r11.w * r21.x;
                    } else {
                      r11.w = 1;
                    }
                    r6.z = r11.w * r6.z;
                  } else {
                    if (4 == 0) r11.w = 0; else if (4+20 < 32) {                     r11.w = (uint)r35.w << (32-(4 + 20)); r11.w = (uint)r11.w >> (32-4);                    } else r11.w = (uint)r35.w >> 20;
                    r13.w = cmp(0 < (uint)r11.w);
                    r13.w = r13.w ? r1.z : 0;
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
                      r15.z = abs(r7.w) * -0.200000003 + 0.400000006;
                      r21.y = cmp(r7.w < 0);
                      r15.z = r21.y ? -r15.z : r15.z;
                      r24.xyz = r2.xyz * r15.zzz + v5.xyz;
                      r22.x = dot(r34.xyzw, r24.xyzw);
                      r22.y = dot(r35.xyzw, r24.xyzw);
                      r15.z = dot(r36.xyzw, r24.xyzw);
                      r21.y = dot(r37.xyzw, r24.xyzw);
                      r22.z = cmp(r21.y < r15.z);
                      r22.xy = r22.xy / r21.yy;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r39.zw;
                      r22.xy = r22.xy * r39.xy;
                      r23.xy = r13.ww / r38.xz;
                      r24.xy = float2(1,1) + -r23.xy;
                      r24.xy = cmp(r22.xy >= r24.xy);
                      r23.xy = cmp(r23.xy >= r22.xy);
                      r23.xy = (int2)r23.xy | (int2)r24.xy;
                      r23.x = (int)r23.y | (int)r23.x;
                      r22.z = (int)r22.z | (int)r23.x;
                      if (r22.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.z, r11.w, l(28), t12.xxxx
                      r22.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r11.w, l(164), t12.xyxx
                      r23.x = samp0[]..swiz;
                      r23.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r24.xy = r22.xy * r38.xz + r38.yw;
                        r11.w = r23.y * r21.y;
                        r15.z = r23.x * r21.y + r15.z;
                        r11.w = r15.z / r11.w;
                        r11.w = max(6.10351563e-05, r11.w);
                        r15.z = r22.z ? 0.000000 : 0;
                        if (r4.y != 0) {
                          r22.z = (uint)r15.z;
                          r21.y = 0;
                          r23.x = 0;
                          while (true) {
                            r23.y = cmp((int)r23.x >= 8);
                            if (r23.y != 0) break;
                            r34.x = dot(icb[r23.x+0].xy, r27.xy);
                            r34.y = dot(icb[r23.x+0].yx, r27.xz);
                            r22.xy = r34.xy * r13.ww + r24.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r11.w).x;
                            r21.y = r22.x * 0.125 + r21.y;
                            r23.x = (int)r23.x + 1;
                          }
                        } else {
                          r24.z = (uint)r15.z;
                          r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r11.w).x;
                        }
                        r11.w = r21.y * r21.y;
                        r11.w = r11.w * r21.y;
                      } else {
                        r11.w = 1;
                      }
                      r6.z = r11.w * r6.z;
                    }
                  }
                  r11.w = -abs(r7.w) * r1.x + 1;
                  r11.w = r11.w * r11.w;
                  r11.w = -r11.w * 0.620000005 + 0.620000005;
                  r11.w = r11.w + -abs(r7.w);
                  r11.w = r4.w * r11.w + abs(r7.w);
                  r11.w = r11.w * r6.z;
                  r13.w = cmp(0 < r7.w);
                  r22.xyz = r11.www * r20.xyz + r17.xyz;
                  r7.w = saturate(r7.w);
                  r19.xyz = r19.xyz * r6.www + r5.xyz;
                  r6.w = dot(r19.xyz, r19.xyz);
                  r6.w = rsqrt(r6.w);
                  r19.xyz = r19.xyz * r6.www;
                  r6.w = dot(r19.xyz, r5.xyz);
                  r15.z = dot(r2.xyz, r19.xyz);
                  r19.x = abs(r15.z) * r4.z + -abs(r15.z);
                  r15.z = abs(r15.z) * r19.x + 1;
                  r19.x = r7.w * r0.w + r1.y;
                  r15.z = r15.z * r15.z;
                  r15.z = r15.z * r19.x;
                  r15.z = rcp(r15.z);
                  r7.w = r7.w * r10.w;
                  r7.w = r15.z * r7.w;
                  r6.z = r7.w * r6.z;
                  r19.xyz = r6.zzz * r20.xyz + r33.xyz;
                  r6.w = saturate(1 + -r6.w);
                  r7.w = r6.w * r6.w;
                  r7.w = r7.w * r7.w;
                  r6.w = r7.w * r6.w;
                  r6.z = r6.z * r6.w;
                  r23.xyz = r6.zzz * r20.xyz + r32.xyz;
                  r20.xyz = r11.www * r20.xyz + r31.xyz;
                  r17.xyz = r13.www ? r22.xyz : r17.xyz;
                  r31.xyz = r13.www ? r31.xyz : r20.xyz;
                  r32.xyz = r13.www ? r23.xyz : r32.xyz;
                  r33.xyz = r13.www ? r19.xyz : r33.xyz;
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
    r8.yzw = r17.xyz;
    r28.xyz = r31.xyz;
    r29.xyz = r32.xyz;
    r30.xyz = r33.xyz;
    r2.w = (int)r2.w + 32;
  }
  r1.xyz = r28.xyz * r3.xyz;
  r0.xyz = r8.yzw * r0.xyz + r1.xyz;
  r1.xyz = float3(0.959999979,0.959999979,0.959999979) * r29.xyz;
  r1.xyz = r30.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v5.xyz, v5.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v5.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r1.w = cmp(0.00999999978 < abs(v5.z));
      r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v5.zz;
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
      r2.w = cmp(0.00999999978 < abs(v5.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v5.z;
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
    r0.w = fogConstants.heightFalloff * v5.z;
    r1.w = fogConstants.heightFalloff * v5.z + fogConstants.K0;
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
    r1.w = dot(v5.xyz, v5.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v5.xyz * r1.www;
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
  return;
}