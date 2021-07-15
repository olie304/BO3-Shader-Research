// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:39 2021

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
  float detailScaleHeight : packoffset(c12.z);
  float3 transColorTint : packoffset(c13);
  float transNormalHeight : packoffset(c13.w);
  float2 transGlossRange : packoffset(c14);
  float transRevealSoftEdge : packoffset(c14.z);
  float transRevealRamp : packoffset(c14.w);
  float2 transScale : packoffset(c15);
  float scriptReplacement : packoffset(c15.z);
  bool enableGTAO : packoffset(c15.w);
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
SamplerState transitionSampler_s : register(s7);
SamplerState LinearSampler_s : register(s8);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
Texture2D<float4> thicknessMap : register(t3);
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
Texture2D<float4> floatZSampler : register(t21);
Texture2D<float4> colorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float> gSSAOTexture : register(t27);
Texture2D<float4> detailMap : register(t29);
Texture2D<float4> transColorMap : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
Texture2D<float4> transNormalMap : register(t37);
Texture2D<float4> transGlossMap : register(t38);
Texture2DArray<float4> materialTexBC7 : register(t42);
Texture2DArray<float4> materialTexBC3 : register(t43);
Texture2DArray<float4> materialTexBC7linear : register(t44);
Texture2DArray<float4> materialTexMask : register(t45);
Texture2D<float4> transRevealMap : register(t46);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  uint v7 : SV_IsFrontFace0,
  out float3 o0 : SV_TARGET0,
  out float3 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
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
// unknown dcl_: dcl_resource_structured t36, 128
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65,r66,r67,r68;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.xy, v2.x, l(4), t4.xyxx
r0.x = samp0[]..swiz;
r0.y = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t0.xxxx
r0.x = samp0[]..swiz;
  r0.z = transRevealMap.Sample(transitionSampler_s, w1.xy).x;
  r0.x = saturate(r0.x * 0.998000026 + 0.00100000005);
  r0.w = 1 + -r0.x;
  r1.x = saturate(transRevealRamp);
  r0.x = log2(r0.x);
  r0.x = r1.x * r0.x;
  r0.x = exp2(r0.x);
  r2.x = -r0.x;
  r0.x = log2(r0.w);
  r0.x = r1.x * r0.x;
  r2.y = exp2(r0.x);
  r0.xw = saturate(transRevealSoftEdge * r2.xy + r0.ww);
  r0.z = r0.z + -r0.x;
  r0.x = r0.w + -r0.x;
  r0.x = saturate(r0.z / r0.x);
  r0.zw = transScale.xy * w1.xy;
  r1.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r1.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r2.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.y = glossRange.y + -glossRange.x;
  r2.x = r2.x * r2.y + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r2.z = cmp(0 < r0.x);
  r3.xyzw = transColorMap.Sample(transitionSampler_s, r0.zw).xyzw;
  r2.w = transGlossMap.Sample(transitionSampler_s, r0.zw).x;
  if (r2.z != 0) {
    r4.xyz = float3(-1,-1,-1) + transColorTint.xyz;
    r4.xyz = r3.www * r4.xyz + float3(1,1,1);
    r2.z = transGlossRange.y + -transGlossRange.x;
    r2.z = r2.w * r2.z + transGlossRange.x;
    r2.z = saturate(0.0588235296 * r2.z);
    r2.w = r3.w * r0.x;
    r3.xyz = r3.xyz * r4.xyz + -r1.xyz;
    r1.xyz = r2.www * r3.xyz + r1.xyz;
    r2.z = r2.z * 2 + -1;
    r2.z = r2.w * r2.z + 1;
    r2.x = saturate(r2.x * r2.z);
  } else {
    r2.w = 0;
  }
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = dot(r3.xy, r3.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r4.z = sqrt(r2.z);
  r2.z = r3.z * r3.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.zw = detailScale.xy * w1.xy;
  r5.xyz = detailMap.Sample(normalSampler_s, r3.zw).xyz;
  r3.zw = r5.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.w = r5.z * r5.z;
  r4.w = 0.333333343 * r4.w;
  r4.w = min(1, r4.w);
  r4.xy = r3.zw * detailScaleHeight + r3.xy;
  r3.x = dot(r4.xyz, r4.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = r4.xyz * r3.xxx;
  r2.z = r4.w * detailScaleHeight + r2.z;
  r3.w = cmp(0 < r2.w);
  r4.xyz = transNormalMap.Sample(transitionSampler_s, r0.zw).xyz;
  if (r3.w != 0) {
    r4.xyz = float3(-0.5,-0.5,-0) + r4.xyz;
    r4.xyz = transNormalHeight * r4.xyz + float3(0.5,0.5,0);
    r0.zw = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
    r3.w = r4.z * r4.z;
    r3.w = 0.333333343 * r3.w;
    r3.w = min(1, r3.w);
    r3.xy = r0.zw * r2.ww + r3.xy;
    r0.z = dot(r3.xyz, r3.xyz);
    r0.z = rsqrt(r0.z);
    r3.xyz = r3.xyz * r0.zzz;
    r2.z = r3.w * r2.w + r2.z;
  }
  r0.z = v7.x ? 1 : -1;
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = v3.xyz * r0.www;
  r4.xyz = r4.xyz * r0.zzz;
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = v4.xyz * r0.www;
  r5.xyz = r5.xyz * r0.zzz;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = v5.xyz * r0.www;
  r6.xyz = r6.xyz * r0.zzz;
  r0.w = -17 * r2.x;
  r0.w = exp2(r0.w);
  r0.w = r2.z + r0.w;
  r0.w = log2(r0.w);
  r0.w = saturate(-0.0588235296 * r0.w);
  r6.xyz = r6.xyz * r3.yyy;
  r3.xyw = r5.xyz * r3.xxx + r6.xyz;
  r3.xyz = r4.xyz * r3.zzz + r3.xyw;
  r2.x = dot(r3.xyz, r3.xyz);
  r2.x = rsqrt(r2.x);
  r3.xyz = r3.xyz * r2.xxx;
  r2.x = debugGlossOverride.x * r2.y + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r2.x = -17 * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.z + r2.x;
  r2.x = log2(r2.x);
  r2.x = saturate(-0.0588235296 * r2.x);
  r2.y = cmp(0 < debugStreamerControl.w);
  if (r2.y != 0) {
    r2.y = (int)debugStreamerControl.w;
    r2.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r2.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.z = cmp(r2.z < r2.w);
    r2.w = cmp(0 < r2.w);
    r4.xyz = (int3)r2.yyy & int3(1,2,4);
    r5.xyz = r4.xxx ? float3(1,0,1) : r1.xyz;
    r4.xyw = r4.yyy ? float3(0,1,1) : r1.xyz;
    r4.xyw = r2.www ? r5.xyz : r4.xyw;
    r5.xyz = r4.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r2.zzz ? r4.xyw : r5.xyz;
  }
  r2.yzw = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r2.yzw + r1.xyz;
  r2.y = debugAlphaOverride.x + -r1.w;
  r1.w = debugAlphaOverride.w * r2.y + r1.w;
  r2.x = r2.x + -r0.w;
  r0.w = debugGlossOverride.w * r2.x + r0.w;
  r2.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www + -r3.xyz;
  r2.xyz = debugNormalOverride.www * r2.xyz + r3.xyz;
  r2.w = thicknessMap.Sample(colorSampler_s, w1.xy).x;
  r2.w = 1 + -r2.w;
  r3.xyz = float3(1,0.5,0.5) * r2.www;
  r4.xyzw = renderTargetSize.zwzw * v0.xyxy;
  if (enableGTAO != 0) {
    r5.xyz = viewMatrix._m10_m11_m12 * v3.yyy;
    r5.xyz = v3.xxx * viewMatrix._m00_m01_m02 + r5.xyz;
    r5.xyz = v3.zzz * viewMatrix._m20_m21_m22 + r5.xyz;
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = rsqrt(r2.w);
    r5.xyz = r5.xyz * r2.www;
    r2.w = 0.5 * gameTick.w;
    r6.xy = viewSpaceScaleBias.xy * r4.zw + -viewSpaceScaleBias.zw;
    r6.xy = v0.ww * r6.xy;
    r3.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
    r3.w = frac(r3.w);
    r3.w = 52.9829178 * r3.w;
    r3.w = frac(r3.w);
    r2.w = r3.w * 3.14159989 + r2.w;
    sincos(r2.w, r7.x, r8.x);
    r9.xyzw = float4(4.16666698,4.16666698,16.6666679,16.6666679) * renderTargetSize.zwzw;
    r8.y = r7.x;
    r7.xyzw = r9.xyzw * r8.xyxy + r4.zwzw;
    r10.xyzw = renderTargetSize.xyxy * r7.xyzw;
    r11.xy = (int2)r10.xy;
    r11.zw = float2(0,0);
    r2.w = floatZSampler.Load(r11.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r5.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r5.w;
    r2.w = max(9.99999994e-09, r2.w);
    r11.z = rcp(r2.w);
    r7.xyzw = viewSpaceScaleBias.xyxy * r7.xyzw + -viewSpaceScaleBias.zwzw;
    r11.xy = r11.zz * r7.xy;
    r6.z = v0.w;
    r11.xyz = r11.xyz + -r6.xyz;
    r2.w = dot(r11.xyz, r11.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r11.z * r2.w;
    r2.w = max(-1, r2.w);
    r10.xy = (int2)r10.zw;
    r10.zw = float2(0,0);
    r3.w = floatZSampler.Load(r10.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.w = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.w;
    r3.w = max(9.99999994e-09, r3.w);
    r10.z = rcp(r3.w);
    r10.xy = r10.zz * r7.zw;
    r7.xyz = r10.xyz + -r6.xyz;
    r3.w = dot(r7.xyz, r7.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r7.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r7.xyzw = float4(37.5,37.5,66.6666718,66.6666718) * renderTargetSize.zwzw;
    r10.xyzw = r7.xyzw * r8.xyxy + r4.zwzw;
    r11.xyzw = renderTargetSize.xyxy * r10.xyzw;
    r12.xy = (int2)r11.xy;
    r12.zw = float2(0,0);
    r3.w = floatZSampler.Load(r12.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.w = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.w;
    r3.w = max(9.99999994e-09, r3.w);
    r12.z = rcp(r3.w);
    r10.xyzw = viewSpaceScaleBias.xyxy * r10.xyzw + -viewSpaceScaleBias.zwzw;
    r12.xy = r12.zz * r10.xy;
    r12.xyz = r12.xyz + -r6.xyz;
    r3.w = dot(r12.xyz, r12.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r12.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r11.xy = (int2)r11.zw;
    r11.zw = float2(0,0);
    r3.w = floatZSampler.Load(r11.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.w = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.w;
    r3.w = max(9.99999994e-09, r3.w);
    r11.z = rcp(r3.w);
    r11.xy = r11.zz * r10.zw;
    r10.xyz = r11.xyz + -r6.xyz;
    r3.w = dot(r10.xyz, r10.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r10.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r10.xyzw = float4(104.166664,104.166664,150,150) * renderTargetSize.zwzw;
    r11.xyzw = r10.xyzw * r8.xyxy + r4.zwzw;
    r12.xyzw = renderTargetSize.xyxy * r11.xyzw;
    r13.xy = (int2)r12.xy;
    r13.zw = float2(0,0);
    r3.w = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.w = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.w;
    r3.w = max(9.99999994e-09, r3.w);
    r13.z = rcp(r3.w);
    r11.xyzw = viewSpaceScaleBias.xyxy * r11.xyzw + -viewSpaceScaleBias.zwzw;
    r13.xy = r13.zz * r11.xy;
    r13.xyz = r13.xyz + -r6.xyz;
    r3.w = dot(r13.xyz, r13.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r13.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r12.xy = (int2)r12.zw;
    r12.zw = float2(0,0);
    r3.w = floatZSampler.Load(r12.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.w = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.w;
    r3.w = max(9.99999994e-09, r3.w);
    r12.z = rcp(r3.w);
    r12.xy = r12.zz * r11.zw;
    r11.xyz = r12.xyz + -r6.xyz;
    r3.w = dot(r11.xyz, r11.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r11.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r9.xyzw = r9.xyzw * -r8.xyxy + r4.zwzw;
    r11.xyzw = renderTargetSize.xyxy * r9.xyzw;
    r11.xyzw = (int4)r11.zwxy;
    r12.xy = r11.zw;
    r12.zw = float2(0,0);
    r3.w = floatZSampler.Load(r12.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.w = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.w;
    r3.w = max(9.99999994e-09, r3.w);
    r12.z = rcp(r3.w);
    r9.xyzw = viewSpaceScaleBias.xyxy * r9.xyzw + -viewSpaceScaleBias.zwzw;
    r12.xy = r12.zz * r9.xy;
    r12.xyz = r12.xyz + -r6.xyz;
    r3.w = dot(r12.xyz, r12.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r12.z * r3.w;
    r3.w = max(-1, r3.w);
    r11.zw = float2(0,0);
    r5.w = floatZSampler.Load(r11.xyz).x;
    r6.w = cmp(r5.w >= 0.984375);
    r8.z = 1.01587307 * r5.w;
    r5.w = r5.w * 64 + -63;
    r5.w = r6.w ? r5.w : r8.z;
    r5.w = max(9.99999994e-09, r5.w);
    r11.z = rcp(r5.w);
    r11.xy = r11.zz * r9.zw;
    r9.xyz = r11.xyz + -r6.xyz;
    r5.w = dot(r9.xyz, r9.xyz);
    r5.w = rsqrt(r5.w);
    r5.w = -r9.z * r5.w;
    r3.w = max(r5.w, r3.w);
    r7.xyzw = r7.xyzw * -r8.xyxy + r4.zwzw;
    r9.xyzw = renderTargetSize.xyxy * r7.xyzw;
    r9.xyzw = (int4)r9.zwxy;
    r11.xy = r9.zw;
    r11.zw = float2(0,0);
    r5.w = floatZSampler.Load(r11.xyz).x;
    r6.w = cmp(r5.w >= 0.984375);
    r8.z = 1.01587307 * r5.w;
    r5.w = r5.w * 64 + -63;
    r5.w = r6.w ? r5.w : r8.z;
    r5.w = max(9.99999994e-09, r5.w);
    r11.z = rcp(r5.w);
    r7.xyzw = viewSpaceScaleBias.xyxy * r7.xyzw + -viewSpaceScaleBias.zwzw;
    r11.xy = r11.zz * r7.xy;
    r11.xyz = r11.xyz + -r6.xyz;
    r5.w = dot(r11.xyz, r11.xyz);
    r5.w = rsqrt(r5.w);
    r5.w = -r11.z * r5.w;
    r3.w = max(r5.w, r3.w);
    r9.zw = float2(0,0);
    r5.w = floatZSampler.Load(r9.xyz).x;
    r6.w = cmp(r5.w >= 0.984375);
    r7.x = 1.01587307 * r5.w;
    r5.w = r5.w * 64 + -63;
    r5.w = r6.w ? r5.w : r7.x;
    r5.w = max(9.99999994e-09, r5.w);
    r9.z = rcp(r5.w);
    r9.xy = r9.zz * r7.zw;
    r7.xyz = r9.xyz + -r6.xyz;
    r5.w = dot(r7.xyz, r7.xyz);
    r5.w = rsqrt(r5.w);
    r5.w = -r7.z * r5.w;
    r3.w = max(r5.w, r3.w);
    r7.xyzw = r10.xyzw * -r8.xyxy + r4.xyzw;
    r9.xyzw = renderTargetSize.xyxy * r7.xyzw;
    r9.xyzw = (int4)r9.zwxy;
    r10.xy = r9.zw;
    r10.zw = float2(0,0);
    r4.x = floatZSampler.Load(r10.xyz).x;
    r4.y = cmp(r4.x >= 0.984375);
    r5.w = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.y ? r4.x : r5.w;
    r4.x = max(9.99999994e-09, r4.x);
    r10.z = rcp(r4.x);
    r7.xyzw = viewSpaceScaleBias.xyxy * r7.xyzw + -viewSpaceScaleBias.zwzw;
    r10.xy = r10.zz * r7.xy;
    r10.xyz = r10.xyz + -r6.xyz;
    r4.x = dot(r10.xyz, r10.xyz);
    r4.x = rsqrt(r4.x);
    r4.x = -r10.z * r4.x;
    r3.w = max(r4.x, r3.w);
    r9.zw = float2(0,0);
    r4.x = floatZSampler.Load(r9.xyz).x;
    r4.y = cmp(r4.x >= 0.984375);
    r5.w = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.y ? r4.x : r5.w;
    r4.x = max(9.99999994e-09, r4.x);
    r9.z = rcp(r4.x);
    r9.xy = r9.zz * r7.zw;
    r6.xyz = r9.xyz + -r6.xyz;
    r4.x = dot(r6.xyz, r6.xyz);
    r4.x = rsqrt(r4.x);
    r4.x = -r6.z * r4.x;
    r3.w = max(r4.x, r3.w);
    r4.xy = viewSpaceScaleBias.xy * r8.xy;
    r5.w = dot(r4.xy, r4.xy);
    r5.w = rsqrt(r5.w);
    r6.xy = r5.ww * r4.xy;
    r6.zw = -r6.yy;
    r4.x = dot(r5.yx, r6.xz);
    r5.xy = -r6.wx * r4.xx + r5.xy;
    r4.x = dot(r5.xyz, r5.xyz);
    r4.x = rsqrt(r4.x);
    r5.xyz = r5.zxy * r4.xxx;
    r4.x = dot(r6.xy, r5.yz);
    r4.x = cmp(r4.x >= 0);
    r4.x = r4.x ? -1 : 1;
    r5.x = saturate(-r5.x);
    r4.y = 1 + -r5.x;
    r4.y = sqrt(r4.y);
    r5.y = r5.x * -0.0187292993 + 0.0742610022;
    r5.y = r5.y * r5.x + -0.212114394;
    r5.x = r5.y * r5.x + 1.57072878;
    r4.y = r5.x * r4.y;
    r5.x = r4.x * r4.y;
    r5.y = 1 + -abs(r2.w);
    r5.y = sqrt(r5.y);
    r5.z = abs(r2.w) * -0.0187292993 + 0.0742610022;
    r5.z = r5.z * abs(r2.w) + -0.212114394;
    r5.z = r5.z * abs(r2.w) + 1.57072878;
    r5.w = r5.z * r5.y;
    r5.w = r5.w * -2 + 3.14159274;
    r2.w = cmp(r2.w < -r2.w);
    r2.w = r2.w ? r5.w : 0;
    r2.w = r5.z * r5.y + r2.w;
    r5.y = 1 + -abs(r3.w);
    r5.y = sqrt(r5.y);
    r5.z = abs(r3.w) * -0.0187292993 + 0.0742610022;
    r5.z = r5.z * abs(r3.w) + -0.212114394;
    r5.z = r5.z * abs(r3.w) + 1.57072878;
    r5.w = r5.z * r5.y;
    r5.w = r5.w * -2 + 3.14159274;
    r3.w = cmp(r3.w < -r3.w);
    r3.w = r3.w ? r5.w : 0;
    r3.w = r5.z * r5.y + r3.w;
    r2.w = -r4.x * r4.y + -r2.w;
    r2.w = max(-1.57079995, r2.w);
    r2.w = r4.x * r4.y + r2.w;
    r3.w = -r4.x * r4.y + r3.w;
    r3.w = min(1.57079995, r3.w);
    r3.w = r4.x * r4.y + r3.w;
    sincos(r5.x, r6.x, r7.x);
    r2.w = r2.w + r2.w;
    r5.y = r2.w * r6.x + r7.x;
    r2.w = -r4.x * r4.y + r2.w;
    r2.w = cos(r2.w);
    r2.w = r5.y + -r2.w;
    r3.w = r3.w + r3.w;
    r5.y = r3.w * r6.x + r7.x;
    r3.w = -r4.x * r4.y + r3.w;
    r3.w = cos(r3.w);
    r3.w = r5.y + -r3.w;
    r3.w = 0.25 * r3.w;
    r2.w = r2.w * 0.25 + r3.w;
    r3.w = r5.x * r6.x + r7.x;
    r2.w = r2.w / r3.w;
  } else {
    r3.w = aoMap.Sample(aoSampler_s, w1.xy).x;
    r4.x = debugOcclusionOverride.x + -r3.w;
    r3.w = debugOcclusionOverride.w * r4.x + r3.w;
    r4.x = gSSAOTexture.SampleLevel(LinearSampler_s, r4.zw, 0).x;
    r2.w = min(r4.x, r3.w);
  }
  r3.w = cmp(v0.z >= 0.984375);
  r4.x = 1.01587307 * v0.z;
  r4.y = v0.z * 64 + -63;
  r3.w = r3.w ? r4.y : r4.x;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  r4.xy = (uint2)v0.xy;
  r5.xyz = ddx_coarse(v6.xyz);
  r6.xyz = ddy_coarse(v6.xyz);
  r4.z = numRefProbes + numLights;
  r7.xy = (int2)r0.yy & int2(268435456,536870912);
  if (r7.x != 0) {
    r8.xyz = eyeOffset.xyz + v6.xyz;
    r0.y = 0.0078125 * r3.w;
    r0.y = min(15, r0.y);
    r0.y = (uint)r0.y;
    r9.xy = (uint2)r4.xy >> int2(6,6);
    r9.z = (uint)r0.y << 4;
    r0.y = numStaticDecals & -32;
    r4.w = (int)-r0.y + numStaticDecals;
    r10.xy = float2(0,0);
    r11.w = 0;
    r8.w = 1;
    r7.xzw = float3(0,0,0);
    r12.xyz = float3(0,0,0);
    r13.yz = float2(0,0);
    r5.w = 0;
    while (true) {
      r6.w = cmp((uint)r5.w >= numStaticDecals);
      if (r6.w != 0) break;
      r10.z = (uint)r5.w >> 5;
      r11.xyz = (int3)r9.xyz + (int3)r10.xyz;
      r6.w = visibleDecals.Load(r11.xyzw).x;
      r9.w = cmp((int)r0.y == (int)r5.w);
      if (r4.w == 0) r10.z = 0; else if (r4.w+0 < 32) {       r10.z = (uint)r6.w << (32-(r4.w + 0)); r10.z = (uint)r10.z >> (32-r4.w);      } else r10.z = (uint)r6.w >> 0;
      r6.w = r9.w ? r10.z : r6.w;
      r9.w = (int)r4.z + (int)r5.w;
      r11.xyz = r7.xzw;
      r14.xyz = r12.xzy;
      r15.yz = r13.yz;
      r10.z = r6.w;
      while (true) {
        if (r10.z == 0) break;
        r10.w = firstbitlow((uint)r10.z);
        r12.w = 1 << (int)r10.w;
        r13.w = (int)r10.z & (int)r12.w;
        if (r13.w != 0) {
          r10.z = (int)r10.z ^ (int)r12.w;
          r12.w = (int)r9.w + (int)r10.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xyzw, r12.w, l(0), t11.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xy, r12.w, l(16), t11.xyxx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
          r16.xyz = -v6.xyz + r16.xyz;
          r17.z = r16.w;
          r16.xyz = cmp(abs(r16.xyz) < r17.zxy);
          r12.w = r16.y ? r16.x : 0;
          r12.w = r16.z ? r12.w : 0;
          if (r12.w != 0) {
            r10.w = (int)r5.w + (int)r10.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyz, r10.w, l(0), t36.xyzx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyz, r10.w, l(16), t36.xyzx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r10.w, l(32), t36.xyzx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
            r19.x = r16.x;
            r19.y = r17.x;
            r19.z = r18.x;
            r12.w = dot(r19.xyz, r19.xyz);
            r12.w = rsqrt(r12.w);
            r20.xyz = r19.xyz * r12.www;
            r12.w = dot(r20.xyz, v3.xyz);
            r12.w = cmp(r12.w >= 0.5);
            if (r12.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyw, r10.w, l(48), t36.xyxz
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.w = samp0[]..swiz;
              r19.w = r21.x;
              r19.x = dot(r8.xyzw, r19.xyzw);
              r22.x = r16.y;
              r22.y = r17.y;
              r22.z = r18.y;
              r22.w = r21.y;
              r19.y = dot(r8.xyzw, r22.xyzw);
              r21.x = r16.z;
              r21.y = r17.z;
              r21.z = r18.z;
              r19.z = dot(r8.xyzw, r21.xyzw);
              r16.xyz = cmp(abs(r19.xyz) < float3(1,1,1));
              r12.w = r16.y ? r16.x : 0;
              r12.w = r16.z ? r12.w : 0;
              if (r12.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(64), t36.xyzw
              r16.x = samp0[]..swiz;
              r16.y = samp0[]..swiz;
              r16.z = samp0[]..swiz;
              r16.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(80), t36.xyzw
              r17.x = samp0[]..swiz;
              r17.y = samp0[]..swiz;
              r17.z = samp0[]..swiz;
              r17.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(96), t36.xyzw
              r18.x = samp0[]..swiz;
              r18.y = samp0[]..swiz;
              r18.z = samp0[]..swiz;
              r18.w = samp0[]..swiz;
                r23.x = dot(r5.xyz, r22.xyz);
                r23.y = dot(r5.xyz, r21.xyz);
                r24.x = dot(r6.xyz, r22.xyz);
                r24.y = dot(r6.xyz, r21.xyz);
                r19.xy = r19.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r23.xyz = float3(0.5,-0.5,0.5) * r23.xyx;
                r24.xyz = float3(0.5,-0.5,0.5) * r24.xyx;
                r19.zw = (int2)r17.yz & int2(65535,65535);
                if (r19.z != 0) {
                  if (4 == 0) r12.w = 0; else if (4+24 < 32) {                   r12.w = (uint)r17.w << (32-(4 + 24)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r17.w >> 24;
                  r12.w = 1 << (int)r12.w;
                  r13.w = (uint)r17.w >> 28;
                  r13.w = 1 << (int)r13.w;
                  r14.w = cmp((int)r19.z == 4);
                  if (r14.w != 0) {
                    r14.w = (int)r17.w & 4095;
                    if (12 == 0) r15.w = 0; else if (12+12 < 32) {                     r15.w = (uint)r17.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                    } else r15.w = (uint)r17.w >> 12;
                    r20.w = (int)r18.w & 1023;
                    r25.xz = (uint2)r12.ww;
                    r25.y = (uint)r13.w;
                    r26.xy = r19.xy * r25.zy + float2(0.5,0.5);
                    r26.zw = float2(-0.5,-0.5) + r25.zy;
                    r26.xy = min(r26.xy, r26.zw);
                    r27.x = (uint)r14.w;
                    r27.y = (uint)r15.w;
                    r26.xy = r27.xy + r26.xy;
                    r26.xy = invBcTexSizes.xy * r26.xy;
                    r26.z = (uint)r20.w;
                    r27.xyz = invBcTexSizes.xyx * r23.zyz;
                    r27.xyz = r27.xyz * r25.xyz;
                    r28.xyz = invBcTexSizes.xyx * r24.zyz;
                    r25.xyz = r28.xyz * r25.xyz;
                    r25.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.xyzx, r25.xyzx).xyzw;
                  } else {
                    r14.w = cmp((int)r19.z == 1);
                    if (r14.w != 0) {
                      r14.w = (int)r17.w & 4095;
                      if (12 == 0) r15.w = 0; else if (12+12 < 32) {                       r15.w = (uint)r17.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                      } else r15.w = (uint)r17.w >> 12;
                      r17.w = (int)r18.w & 1023;
                      r26.xz = (uint2)r12.ww;
                      r26.y = (uint)r13.w;
                      r27.xy = r19.xy * r26.zy + float2(0.5,0.5);
                      r27.zw = float2(-0.5,-0.5) + r26.zy;
                      r27.xy = min(r27.xy, r27.zw);
                      r28.x = (uint)r14.w;
                      r28.y = (uint)r15.w;
                      r27.xy = r28.xy + r27.xy;
                      r27.xy = invBcTexSizes.zw * r27.xy;
                      r27.z = (uint)r17.w;
                      r28.xyz = invBcTexSizes.zwz * r23.zyz;
                      r28.xyz = r28.xyz * r26.xyz;
                      r29.xyz = invBcTexSizes.zwz * r24.zyz;
                      r26.xyz = r29.xyz * r26.xyz;
                      r25.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.xyzx, r26.xyzx).xyzw;
                    } else {
                      r25.xyzw = float4(1,1,1,1);
                    }
                  }
                  r16.xyz = r25.xyz * r16.xyz;
                  r12.w = r25.w * r16.w;
                } else {
                  r16.xyz = float3(0,0,0);
                  r12.w = 0;
                }
                r13.w = cmp(r17.x != 1.000000);
                r14.w = r12.w + r16.w;
                r14.w = saturate(r14.w * r17.x + -r17.x);
                r12.w = r13.w ? r14.w : r12.w;
                if (r19.w != 0) {
                  if (4 == 0) r13.w = 0; else if (4+24 < 32) {                   r13.w = (uint)r18.y << (32-(4 + 24)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r18.y >> 24;
                  r13.w = 1 << (int)r13.w;
                  r14.w = (uint)r18.y >> 28;
                  r14.w = 1 << (int)r14.w;
                  r15.w = cmp((int)r19.w == 2);
                  if (r15.w != 0) {
                    r15.w = (int)r18.y & 4095;
                    if (12 == 0) r17.x = 0; else if (12+12 < 32) {                     r17.x = (uint)r18.y << (32-(12 + 12)); r17.x = (uint)r17.x >> (32-12);                    } else r17.x = (uint)r18.y >> 12;
                    if (10 == 0) r17.w = 0; else if (10+20 < 32) {                     r17.w = (uint)r18.w << (32-(10 + 20)); r17.w = (uint)r17.w >> (32-10);                    } else r17.w = (uint)r18.w >> 20;
                    r25.xz = (uint2)r13.ww;
                    r25.y = (uint)r14.w;
                    r26.xy = r19.xy * r25.zy + float2(0.5,0.5);
                    r26.zw = float2(-0.5,-0.5) + r25.zy;
                    r26.xy = min(r26.xy, r26.zw);
                    r27.x = (uint)r15.w;
                    r27.y = (uint)r17.x;
                    r26.xy = r27.xy + r26.xy;
                    r26.xy = invMaskTexSizes.xy * r26.xy;
                    r26.z = (uint)r17.w;
                    r27.xyz = invMaskTexSizes.xyx * r23.zyz;
                    r27.xyz = r27.xyz * r25.xyz;
                    r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r25.xyz = r28.xyz * r25.xyz;
                    r15.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                  } else {
                    r16.w = cmp((int)r19.w == 4);
                    if (r16.w != 0) {
                      r16.w = (int)r18.y & 4095;
                      if (12 == 0) r17.x = 0; else if (12+12 < 32) {                       r17.x = (uint)r18.y << (32-(12 + 12)); r17.x = (uint)r17.x >> (32-12);                      } else r17.x = (uint)r18.y >> 12;
                      if (10 == 0) r17.w = 0; else if (10+20 < 32) {                       r17.w = (uint)r18.w << (32-(10 + 20)); r17.w = (uint)r17.w >> (32-10);                      } else r17.w = (uint)r18.w >> 20;
                      r25.xz = (uint2)r13.ww;
                      r25.y = (uint)r14.w;
                      r19.zw = r19.xy * r25.zy + float2(0.5,0.5);
                      r26.xy = float2(-0.5,-0.5) + r25.zy;
                      r19.zw = min(r26.xy, r19.zw);
                      r26.x = (uint)r16.w;
                      r26.yz = (uint2)r17.xw;
                      r19.zw = r26.xy + r19.zw;
                      r26.xy = invBcTexSizes.xy * r19.zw;
                      r27.xyz = invBcTexSizes.xyx * r23.zyz;
                      r27.xyz = r27.xyz * r25.xyz;
                      r28.xyz = invBcTexSizes.xyx * r24.zyz;
                      r25.xyz = r28.xyz * r25.xyz;
                      r15.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                    } else {
                      r16.w = (int)r18.y & 4095;
                      if (12 == 0) r17.x = 0; else if (12+12 < 32) {                       r17.x = (uint)r18.y << (32-(12 + 12)); r17.x = (uint)r17.x >> (32-12);                      } else r17.x = (uint)r18.y >> 12;
                      if (10 == 0) r17.w = 0; else if (10+20 < 32) {                       r17.w = (uint)r18.w << (32-(10 + 20)); r17.w = (uint)r17.w >> (32-10);                      } else r17.w = (uint)r18.w >> 20;
                      r25.xz = (uint2)r13.ww;
                      r25.y = (uint)r14.w;
                      r19.zw = r19.xy * r25.zy + float2(0.5,0.5);
                      r26.xy = float2(-0.5,-0.5) + r25.zy;
                      r19.zw = min(r26.xy, r19.zw);
                      r26.x = (uint)r16.w;
                      r26.yz = (uint2)r17.xw;
                      r19.zw = r26.xy + r19.zw;
                      r26.xy = invBcTexSizes.zw * r19.zw;
                      r27.xyz = invBcTexSizes.zwz * r23.zyz;
                      r27.xyz = r27.xyz * r25.xyz;
                      r28.xyz = invBcTexSizes.zwz * r24.zyz;
                      r25.xyz = r28.xyz * r25.xyz;
                      r15.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                    }
                  }
                  r13.w = saturate(1 + -r15.w);
                  r16.xyz = r16.xyz * r13.www;
                }
                r17.xy = (uint2)r17.zy >> int2(16,16);
                if (r17.x != 0) {
                  r13.w = cmp((int)r17.x == 2);
                  if (r13.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(112), t36.xxxx
                  r10.w = samp0[]..swiz;
                    if (4 == 0) r17.z = 0; else if (4+24 < 32) {                     r17.z = (uint)r18.z << (32-(4 + 24)); r17.z = (uint)r17.z >> (32-4);                    } else r17.z = (uint)r18.z >> 24;
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r18.z << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r18.z >> 12;
                    r13.w = 1 << (int)r17.z;
                    r14.w = (uint)r18.z >> 28;
                    r14.w = 1 << (int)r14.w;
                    r15.w = (int)r18.z & 4095;
                    r10.w = (int)r10.w & 1023;
                    r25.xz = (uint2)r13.ww;
                    r25.y = (uint)r14.w;
                    r18.yz = r19.xy * r25.zy + float2(0.5,0.5);
                    r19.zw = float2(-0.5,-0.5) + r25.zy;
                    r18.yz = min(r19.zw, r18.yz);
                    r26.x = (uint)r15.w;
                    r26.y = (uint)r17.w;
                    r17.zw = r26.xy + r18.yz;
                    r26.xy = invMaskTexSizes.xy * r17.zw;
                    r26.z = (uint)r10.w;
                    r27.xyz = invMaskTexSizes.xyx * r23.zyz;
                    r27.xyz = r27.xyz * r25.xyz;
                    r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r25.xyz = r28.xyz * r25.xyz;
                    r10.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                  } else {
                    r13.w = cmp((int)r17.x == 6);
                    r10.w = r13.w ? 0 : 1;
                  }
                } else {
                  r10.w = 1;
                }
                r10.w = saturate(0.764705896 * r10.w);
                if (r17.y != 0) {
                  r13.w = cmp((int)r17.y == 3);
                  if (r13.w != 0) {
                    if (4 == 0) r17.x = 0; else if (4+24 < 32) {                     r17.x = (uint)r18.x << (32-(4 + 24)); r17.x = (uint)r17.x >> (32-4);                    } else r17.x = (uint)r18.x >> 24;
                    if (12 == 0) r17.y = 0; else if (12+12 < 32) {                     r17.y = (uint)r18.x << (32-(12 + 12)); r17.y = (uint)r17.y >> (32-12);                    } else r17.y = (uint)r18.x >> 12;
                    if (10 == 0) r17.z = 0; else if (10+10 < 32) {                     r17.z = (uint)r18.w << (32-(10 + 10)); r17.z = (uint)r17.z >> (32-10);                    } else r17.z = (uint)r18.w >> 10;
                    r13.w = 1 << (int)r17.x;
                    r14.w = (uint)r18.x >> 28;
                    r14.w = 1 << (int)r14.w;
                    r15.w = (int)r18.x & 4095;
                    r18.xz = (uint2)r13.ww;
                    r18.y = (uint)r14.w;
                    r17.xw = r19.xy * r18.xy + float2(0.5,0.5);
                    r19.xy = float2(-0.5,-0.5) + r18.zy;
                    r17.xw = min(r19.xy, r17.xw);
                    r19.x = (uint)r15.w;
                    r19.yz = (uint2)r17.yz;
                    r17.xy = r19.xy + r17.xw;
                    r19.xy = invMaskTexSizes.zw * r17.xy;
                    r17.xyz = invMaskTexSizes.zwz * r23.xyz;
                    r17.xyz = r17.xyz * r18.xyz;
                    r23.xyz = invMaskTexSizes.zwz * r24.xyz;
                    r18.xyz = r23.xyz * r18.xyz;
                    r17.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r19.xyz, r17.xyz, r18.xyz).xyz;
                  } else {
                    r17.xyz = float3(0.5,0.5,1);
                  }
                  r17.xy = r17.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r13.w = dot(r17.xy, r17.xy);
                  r13.w = 1 + -r13.w;
                  r13.w = max(0, r13.w);
                  r13.w = sqrt(r13.w);
                  r14.w = r17.z * r17.z;
                  r14.w = 0.333333343 * r14.w;
                  r14.w = min(1, r14.w);
                  r15.w = dot(r22.xyz, r22.xyz);
                  r15.w = rsqrt(r15.w);
                  r18.xyz = r22.xyz * r15.www;
                  r15.w = dot(-r21.xyz, -r21.xyz);
                  r15.w = rsqrt(r15.w);
                  r19.xyz = -r21.xyz * r15.www;
                  r20.xyz = r20.xyz * r0.zzz;
                  r18.xyz = r18.xyz * r0.zzz;
                  r19.xyz = r19.xyz * r0.zzz;
                  r15.w = -17 * r10.w;
                  r15.w = exp2(r15.w);
                  r14.w = r15.w + r14.w;
                  r14.w = log2(r14.w);
                  r14.w = -0.0588235296 * r14.w;
                  r10.w = max(0, r14.w);
                  r17.yzw = r19.xyz * r17.yyy;
                  r17.xyz = r18.xyz * r17.xxx + r17.yzw;
                  r17.xyz = r20.xyz * r13.www + r17.xyz;
                  r13.w = dot(r17.xyz, r17.xyz);
                  r13.w = rsqrt(r13.w);
                  r17.xyz = r17.xyz * r13.www;
                  r13.w = 1 + -r12.w;
                  r15.x = r14.x;
                  r18.xyz = r15.xyz * r13.www;
                  r15.xyz = r17.xyz * r12.www + r18.xyz;
                  r14.x = r15.x;
                }
                r13.w = 1 + -r12.w;
                r17.xyz = r13.www * r11.xyz;
                r11.xyz = r16.xyz * r12.www + r17.xyz;
                r14.w = r14.z * r13.w;
                r14.y = r14.y * r13.w + r12.w;
                r14.z = r10.w * r12.w + r14.w;
              }
            }
          }
        }
      }
      r7.xzw = r11.xyz;
      r12.xyz = r14.xzy;
      r13.yz = r15.yz;
      r5.w = (int)r5.w + 32;
    }
    r13.x = r12.x;
    r12.xy = r12.zy;
  } else {
    r7.xzw = float3(0,0,0);
    r13.xyz = float3(0,0,0);
    r12.xy = float2(0,0);
  }
  if (r7.y != 0) {
    r8.xyz = eyeOffset.xyz + v6.xyz;
    r0.y = numDynamicDecals + numStaticDecals;
    r3.w = 0.0078125 * r3.w;
    r3.w = min(15, r3.w);
    r3.w = (uint)r3.w;
    r9.xy = (uint2)r4.xy >> int2(6,6);
    r9.z = (uint)r3.w << 4;
    r3.w = numStaticDecals & -32;
    r4.w = (int)-r3.w + numStaticDecals;
    r5.w = (int)r0.y & -32;
    r6.w = (int)r0.y + (int)-r5.w;
    r10.xy = float2(0,0);
    r11.w = 0;
    r8.w = 1;
    r14.xyz = r7.xzw;
    r15.xyz = r13.xyz;
    r16.xy = r12.xy;
    r7.y = r3.w;
    while (true) {
      r9.w = cmp((uint)r7.y >= (uint)r0.y);
      if (r9.w != 0) break;
      r10.z = (uint)r7.y >> 5;
      r11.xyz = (int3)r9.xyz + (int3)r10.xyz;
      r9.w = visibleDecals.Load(r11.xyzw).x;
      r10.z = cmp((int)r3.w == (int)r7.y);
      bitmask.w = ((~(-1 << r4.w)) << 0) & 0xffffffff;  r10.w = (((uint)0 << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
      r9.w = r10.z ? r10.w : r9.w;
      r10.z = cmp((int)r5.w == (int)r7.y);
      if (r6.w == 0) r10.w = 0; else if (r6.w+0 < 32) {       r10.w = (uint)r9.w << (32-(r6.w + 0)); r10.w = (uint)r10.w >> (32-r6.w);      } else r10.w = (uint)r9.w >> 0;
      r9.w = r10.z ? r10.w : r9.w;
      r10.z = (int)r4.z + (int)r7.y;
      r11.xyz = r14.xyz;
      r17.xyz = r15.xyz;
      r12.zw = r16.xy;
      r10.w = r9.w;
      while (true) {
        if (r10.w == 0) break;
        r13.w = firstbitlow((uint)r10.w);
        r14.w = 1 << (int)r13.w;
        r15.w = (int)r10.w & (int)r14.w;
        if (r15.w != 0) {
          r10.w = (int)r10.w ^ (int)r14.w;
          r14.w = (int)r10.z + (int)r13.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(0), t11.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xy, r14.w, l(16), t11.xyxx
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
          r18.xyz = -v6.xyz + r18.xyz;
          r19.z = r18.w;
          r18.xyz = cmp(abs(r18.xyz) < r19.zxy);
          r14.w = r18.y ? r18.x : 0;
          r14.w = r18.z ? r14.w : 0;
          if (r14.w != 0) {
            r13.w = (int)r7.y + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r13.w, l(0), t36.xyzx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r13.w, l(16), t36.xyzx
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyz, r13.w, l(32), t36.xyzx
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
            r21.x = r18.x;
            r21.y = r19.x;
            r21.z = r20.x;
            r14.w = dot(r21.xyz, r21.xyz);
            r14.w = rsqrt(r14.w);
            r22.xyz = r21.xyz * r14.www;
            r14.w = dot(r22.xyz, v3.xyz);
            r14.w = cmp(r14.w >= 0.5);
            if (r14.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyw, r13.w, l(48), t36.xyxz
            r23.x = samp0[]..swiz;
            r23.y = samp0[]..swiz;
            r23.w = samp0[]..swiz;
              r21.w = r23.x;
              r21.x = dot(r8.xyzw, r21.xyzw);
              r24.x = r18.y;
              r24.y = r19.y;
              r24.z = r20.y;
              r24.w = r23.y;
              r21.y = dot(r8.xyzw, r24.xyzw);
              r23.x = r18.z;
              r23.y = r19.z;
              r23.z = r20.z;
              r21.z = dot(r8.xyzw, r23.xyzw);
              r18.xyz = cmp(abs(r21.xyz) < float3(1,1,1));
              r14.w = r18.y ? r18.x : 0;
              r14.w = r18.z ? r14.w : 0;
              if (r14.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r13.w, l(64), t36.xyzw
              r18.x = samp0[]..swiz;
              r18.y = samp0[]..swiz;
              r18.z = samp0[]..swiz;
              r18.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r13.w, l(80), t36.xyzw
              r19.x = samp0[]..swiz;
              r19.y = samp0[]..swiz;
              r19.z = samp0[]..swiz;
              r19.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyzw, r13.w, l(96), t36.xyzw
              r20.x = samp0[]..swiz;
              r20.y = samp0[]..swiz;
              r20.z = samp0[]..swiz;
              r20.w = samp0[]..swiz;
                r25.x = dot(r5.xyz, r24.xyz);
                r25.y = dot(r5.xyz, r23.xyz);
                r26.x = dot(r6.xyz, r24.xyz);
                r26.y = dot(r6.xyz, r23.xyz);
                r16.zw = r21.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r21.xyz = float3(0.5,-0.5,0.5) * r25.xyx;
                r25.xyz = float3(0.5,-0.5,0.5) * r26.xyx;
                r26.xy = (int2)r19.yz & int2(65535,65535);
                if (r26.x != 0) {
                  if (4 == 0) r14.w = 0; else if (4+24 < 32) {                   r14.w = (uint)r19.w << (32-(4 + 24)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r19.w >> 24;
                  r14.w = 1 << (int)r14.w;
                  r15.w = (uint)r19.w >> 28;
                  r15.w = 1 << (int)r15.w;
                  r17.w = cmp((int)r26.x == 4);
                  if (r17.w != 0) {
                    r17.w = (int)r19.w & 4095;
                    if (12 == 0) r21.w = 0; else if (12+12 < 32) {                     r21.w = (uint)r19.w << (32-(12 + 12)); r21.w = (uint)r21.w >> (32-12);                    } else r21.w = (uint)r19.w >> 12;
                    r22.w = (int)r20.w & 1023;
                    r27.xz = (uint2)r14.ww;
                    r27.y = (uint)r15.w;
                    r26.zw = r16.zw * r27.zy + float2(0.5,0.5);
                    r28.xy = float2(-0.5,-0.5) + r27.zy;
                    r26.zw = min(r28.xy, r26.zw);
                    r28.x = (uint)r17.w;
                    r28.y = (uint)r21.w;
                    r26.zw = r28.xy + r26.zw;
                    r28.xy = invBcTexSizes.xy * r26.zw;
                    r28.z = (uint)r22.w;
                    r29.xyz = invBcTexSizes.xyx * r21.zyz;
                    r29.xyz = r29.xyz * r27.xyz;
                    r30.xyz = invBcTexSizes.xyx * r25.zyz;
                    r27.xyz = r30.xyz * r27.xyz;
                    r27.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.xyzx, r27.xyzx).xyzw;
                  } else {
                    r17.w = cmp((int)r26.x == 1);
                    if (r17.w != 0) {
                      r17.w = (int)r19.w & 4095;
                      if (12 == 0) r19.w = 0; else if (12+12 < 32) {                       r19.w = (uint)r19.w << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                      } else r19.w = (uint)r19.w >> 12;
                      r21.w = (int)r20.w & 1023;
                      r28.xz = (uint2)r14.ww;
                      r28.y = (uint)r15.w;
                      r26.xz = r16.zw * r28.zy + float2(0.5,0.5);
                      r29.xy = float2(-0.5,-0.5) + r28.zy;
                      r26.xz = min(r29.xy, r26.xz);
                      r29.x = (uint)r17.w;
                      r29.y = (uint)r19.w;
                      r26.xz = r29.xy + r26.xz;
                      r29.xy = invBcTexSizes.zw * r26.xz;
                      r29.z = (uint)r21.w;
                      r26.xzw = invBcTexSizes.zwz * r21.zyz;
                      r26.xzw = r26.xzw * r28.xyz;
                      r30.xyz = invBcTexSizes.zwz * r25.zyz;
                      r28.xyz = r30.xyz * r28.xyz;
                      r27.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r29.xyz, r26.xzwx, r28.xyzx).xyzw;
                    } else {
                      r27.xyzw = float4(1,1,1,1);
                    }
                  }
                  r18.xyz = r27.xyz * r18.xyz;
                  r14.w = r27.w * r18.w;
                } else {
                  r18.xyz = float3(0,0,0);
                  r14.w = 0;
                }
                r15.w = cmp(r19.x != 1.000000);
                r17.w = r14.w + r18.w;
                r17.w = saturate(r17.w * r19.x + -r19.x);
                r14.w = r15.w ? r17.w : r14.w;
                if (r26.y != 0) {
                  if (4 == 0) r15.w = 0; else if (4+24 < 32) {                   r15.w = (uint)r20.y << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r20.y >> 24;
                  r15.w = 1 << (int)r15.w;
                  r17.w = (uint)r20.y >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.w = cmp((int)r26.y == 2);
                  if (r18.w != 0) {
                    r18.w = (int)r20.y & 4095;
                    if (12 == 0) r19.x = 0; else if (12+12 < 32) {                     r19.x = (uint)r20.y << (32-(12 + 12)); r19.x = (uint)r19.x >> (32-12);                    } else r19.x = (uint)r20.y >> 12;
                    if (10 == 0) r19.w = 0; else if (10+20 < 32) {                     r19.w = (uint)r20.w << (32-(10 + 20)); r19.w = (uint)r19.w >> (32-10);                    } else r19.w = (uint)r20.w >> 20;
                    r27.xz = (uint2)r15.ww;
                    r27.y = (uint)r17.w;
                    r26.xz = r16.zw * r27.zy + float2(0.5,0.5);
                    r28.xy = float2(-0.5,-0.5) + r27.zy;
                    r26.xz = min(r28.xy, r26.xz);
                    r28.x = (uint)r18.w;
                    r28.yz = (uint2)r19.xw;
                    r26.xz = r28.xy + r26.xz;
                    r28.xy = invMaskTexSizes.xy * r26.xz;
                    r26.xzw = invMaskTexSizes.xyx * r21.zyz;
                    r26.xzw = r26.xzw * r27.xyz;
                    r29.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r27.xyz = r29.xyz * r27.xyz;
                    r18.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r28.xyz, r26.x, r27.x).x;
                  } else {
                    r19.x = cmp((int)r26.y == 4);
                    if (r19.x != 0) {
                      r19.x = (int)r20.y & 4095;
                      if (12 == 0) r26.x = 0; else if (12+12 < 32) {                       r26.x = (uint)r20.y << (32-(12 + 12)); r26.x = (uint)r26.x >> (32-12);                      } else r26.x = (uint)r20.y >> 12;
                      if (10 == 0) r26.y = 0; else if (10+20 < 32) {                       r26.y = (uint)r20.w << (32-(10 + 20)); r26.y = (uint)r26.y >> (32-10);                      } else r26.y = (uint)r20.w >> 20;
                      r27.xz = (uint2)r15.ww;
                      r27.y = (uint)r17.w;
                      r26.zw = r16.zw * r27.zy + float2(0.5,0.5);
                      r28.xy = float2(-0.5,-0.5) + r27.zy;
                      r26.zw = min(r28.xy, r26.zw);
                      r28.x = (uint)r19.x;
                      r28.yz = (uint2)r26.xy;
                      r19.xw = r28.xy + r26.zw;
                      r28.xy = invBcTexSizes.xy * r19.xw;
                      r26.xyz = invBcTexSizes.xyx * r21.zyz;
                      r26.xyz = r26.xyz * r27.xyz;
                      r29.xyz = invBcTexSizes.xyx * r25.zyz;
                      r27.xyz = r29.xyz * r27.xyz;
                      r18.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r28.xyz, r26.x, r27.x).x;
                    } else {
                      r19.x = (int)r20.y & 4095;
                      if (12 == 0) r26.x = 0; else if (12+12 < 32) {                       r26.x = (uint)r20.y << (32-(12 + 12)); r26.x = (uint)r26.x >> (32-12);                      } else r26.x = (uint)r20.y >> 12;
                      if (10 == 0) r26.y = 0; else if (10+20 < 32) {                       r26.y = (uint)r20.w << (32-(10 + 20)); r26.y = (uint)r26.y >> (32-10);                      } else r26.y = (uint)r20.w >> 20;
                      r27.xz = (uint2)r15.ww;
                      r27.y = (uint)r17.w;
                      r26.zw = r16.zw * r27.zy + float2(0.5,0.5);
                      r28.xy = float2(-0.5,-0.5) + r27.zy;
                      r26.zw = min(r28.xy, r26.zw);
                      r28.x = (uint)r19.x;
                      r28.yz = (uint2)r26.xy;
                      r19.xw = r28.xy + r26.zw;
                      r28.xy = invBcTexSizes.zw * r19.xw;
                      r26.xyz = invBcTexSizes.zwz * r21.zyz;
                      r26.xyz = r26.xyz * r27.xyz;
                      r29.xyz = invBcTexSizes.zwz * r25.zyz;
                      r27.xyz = r29.xyz * r27.xyz;
                      r18.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r28.xyz, r26.x, r27.x).x;
                    }
                  }
                  r15.w = saturate(1 + -r18.w);
                  r18.xyz = r18.xyz * r15.www;
                }
                r19.xy = (uint2)r19.zy >> int2(16,16);
                if (r19.x != 0) {
                  r15.w = cmp((int)r19.x == 2);
                  if (r15.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(112), t36.xxxx
                  r13.w = samp0[]..swiz;
                    if (4 == 0) r19.z = 0; else if (4+24 < 32) {                     r19.z = (uint)r20.z << (32-(4 + 24)); r19.z = (uint)r19.z >> (32-4);                    } else r19.z = (uint)r20.z >> 24;
                    if (12 == 0) r19.w = 0; else if (12+12 < 32) {                     r19.w = (uint)r20.z << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                    } else r19.w = (uint)r20.z >> 12;
                    r15.w = 1 << (int)r19.z;
                    r17.w = (uint)r20.z >> 28;
                    r17.w = 1 << (int)r17.w;
                    r18.w = (int)r20.z & 4095;
                    r13.w = (int)r13.w & 1023;
                    r26.xz = (uint2)r15.ww;
                    r26.y = (uint)r17.w;
                    r20.yz = r16.zw * r26.zy + float2(0.5,0.5);
                    r27.xy = float2(-0.5,-0.5) + r26.zy;
                    r20.yz = min(r27.xy, r20.yz);
                    r27.x = (uint)r18.w;
                    r27.y = (uint)r19.w;
                    r19.zw = r27.xy + r20.yz;
                    r27.xy = invMaskTexSizes.xy * r19.zw;
                    r27.z = (uint)r13.w;
                    r28.xyz = invMaskTexSizes.xyx * r21.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r13.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  } else {
                    r15.w = cmp((int)r19.x == 6);
                    r13.w = r15.w ? 0 : 1;
                  }
                } else {
                  r13.w = 1;
                }
                r13.w = saturate(0.764705896 * r13.w);
                if (r19.y != 0) {
                  r15.w = cmp((int)r19.y == 3);
                  if (r15.w != 0) {
                    if (4 == 0) r19.x = 0; else if (4+24 < 32) {                     r19.x = (uint)r20.x << (32-(4 + 24)); r19.x = (uint)r19.x >> (32-4);                    } else r19.x = (uint)r20.x >> 24;
                    if (12 == 0) r19.y = 0; else if (12+12 < 32) {                     r19.y = (uint)r20.x << (32-(12 + 12)); r19.y = (uint)r19.y >> (32-12);                    } else r19.y = (uint)r20.x >> 12;
                    if (10 == 0) r19.z = 0; else if (10+10 < 32) {                     r19.z = (uint)r20.w << (32-(10 + 10)); r19.z = (uint)r19.z >> (32-10);                    } else r19.z = (uint)r20.w >> 10;
                    r15.w = 1 << (int)r19.x;
                    r17.w = (uint)r20.x >> 28;
                    r17.w = 1 << (int)r17.w;
                    r18.w = (int)r20.x & 4095;
                    r20.xz = (uint2)r15.ww;
                    r20.y = (uint)r17.w;
                    r16.zw = r16.zw * r20.xy + float2(0.5,0.5);
                    r19.xw = float2(-0.5,-0.5) + r20.zy;
                    r16.zw = min(r19.xw, r16.zw);
                    r26.x = (uint)r18.w;
                    r26.yz = (uint2)r19.yz;
                    r16.zw = r26.xy + r16.zw;
                    r26.xy = invMaskTexSizes.zw * r16.zw;
                    r19.xyz = invMaskTexSizes.zwz * r21.xyz;
                    r19.xyz = r19.xyz * r20.xyz;
                    r21.xyz = invMaskTexSizes.zwz * r25.xyz;
                    r20.xyz = r21.xyz * r20.xyz;
                    r19.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r26.xyz, r19.xyz, r20.xyz).xyz;
                  } else {
                    r19.xyz = float3(0.5,0.5,1);
                  }
                  r16.zw = r19.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r15.w = dot(r16.zw, r16.zw);
                  r15.w = 1 + -r15.w;
                  r15.w = max(0, r15.w);
                  r15.w = sqrt(r15.w);
                  r17.w = r19.z * r19.z;
                  r17.w = 0.333333343 * r17.w;
                  r17.w = min(1, r17.w);
                  r18.w = dot(r24.xyz, r24.xyz);
                  r18.w = rsqrt(r18.w);
                  r19.xyz = r24.xyz * r18.www;
                  r18.w = dot(-r23.xyz, -r23.xyz);
                  r18.w = rsqrt(r18.w);
                  r20.xyz = -r23.xyz * r18.www;
                  r21.xyz = r22.xyz * r0.zzz;
                  r19.xyz = r19.xyz * r0.zzz;
                  r20.xyz = r20.xyz * r0.zzz;
                  r18.w = -17 * r13.w;
                  r18.w = exp2(r18.w);
                  r17.w = r18.w + r17.w;
                  r17.w = log2(r17.w);
                  r17.w = -0.0588235296 * r17.w;
                  r13.w = max(0, r17.w);
                  r20.xyz = r20.xyz * r16.www;
                  r19.xyz = r19.xyz * r16.zzz + r20.xyz;
                  r19.xyz = r21.xyz * r15.www + r19.xyz;
                  r15.w = dot(r19.xyz, r19.xyz);
                  r15.w = rsqrt(r15.w);
                  r19.xyz = r19.xyz * r15.www;
                  r15.w = 1 + -r14.w;
                  r20.xyz = r17.xyz * r15.www;
                  r17.xyz = r19.xyz * r14.www + r20.xyz;
                }
                r15.w = 1 + -r14.w;
                r19.xyz = r15.www * r11.xyz;
                r11.xyz = r18.xyz * r14.www + r19.xyz;
                r16.z = r15.w * r12.w;
                r12.z = r12.z * r15.w + r14.w;
                r12.w = r13.w * r14.w + r16.z;
              }
            }
          }
        }
      }
      r14.xyz = r11.xyz;
      r15.xyz = r17.xyz;
      r16.xy = r12.zw;
      r7.y = (int)r7.y + 32;
    }
    r7.xzw = r14.xyz;
    r13.xyz = r15.xyz;
    r12.xy = r16.xy;
  }
  r12.x = saturate(r12.x);
  r0.y = 1 + -r12.x;
  o2.xyz = r1.xyz * r0.yyy + r7.xzw;
  r0.z = r1.w * r0.y + r12.x;
  r1.xyz = r2.xyz * r0.yyy + r13.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r2.y = r0.w * r0.y + r12.y;
  r0.y = log2(abs(r2.w));
  r5.xyz = float3(0.600000024,0.850000024,0.870000005) * r0.yyy;
  r5.xyz = exp2(r5.xyz);
  r0.y = viewMatrix._m12 * v6.y;
  r0.y = v6.x * viewMatrix._m02 + r0.y;
  r0.y = v6.z * viewMatrix._m22 + r0.y;
  r0.w = dot(-v6.xyz, -v6.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = -v6.xyz * r0.www;
  r2.z = cmp(isDepthHack != 0);
  r4.zw = (uint2)r4.yx;
  r2.w = dot(r4.wz, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r7.x, r8.x);
  r2.w = dot(r4.zw, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r9.x, r10.x);
  r2.x = saturate(dot(r1.xyz, r6.xyz));
  r2.w = dot(-r6.xyz, r1.xyz);
  r2.w = r2.w + r2.w;
  r11.xyz = r1.xyz * -r2.www + -r6.xyz;
  r2.w = 17 * r2.y;
  r2.w = exp2(r2.w);
  r2.w = 2 + r2.w;
  r2.w = 2 / r2.w;
  r3.w = sqrt(r2.w);
  r9.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r9.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r9.yzw;
  r9.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r9.yzw;
  r9.yzw = viewProjectionMatrix._m30_m31_m33 + r9.yzw;
  r12.xyz = eyeOffset.xyz + v6.xyz;
  r4.z = sqrt(r3.w);
  r4.z = r4.z * 0.5 + 0.5;
  r4.z = r4.z * r4.z;
  r4.w = 0.5 * r4.z;
  r4.z = -r4.z * 0.5 + 1;
  r5.w = r2.x * r4.z + r4.w;
  r4.zw = r5.ww * r4.zw;
  r5.w = dot(r1.xyz, sunConstants.wldDir.xyz);
  r6.w = cmp(0 >= abs(r5.w));
  if (r6.w != 0) {
    r13.y = 0;
  }
  if (r6.w == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r10.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r6.w = -sunConstants.splitDepthOffset + r10.w;
    r6.w = -r6.w * 6.10351563e-05 + 1;
    r7.z = saturate(r6.w);
    r7.z = cmp(r6.w == r7.z);
    if (r7.z != 0) {
      r7.zw = float2(0,0);
      while (true) {
        r8.w = cmp(r7.z >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r7.z;
        r13.zw = -sunConstants.splitPinTransform[r8.w].xy + r10.yz;
        r13.z = max(abs(r13.z), abs(r13.w));
        r7.w = sunConstants.splitPinTransform[r8.w].z * r13.z;
        r8.w = cmp(r7.w < 1);
        if (r8.w != 0) {
          break;
        }
        r7.z = 1 + r7.z;
        r7.w = 0;
      }
    } else {
      r7.zw = float2(3,0);
    }
    r8.w = cmp(r7.z >= 3);
    if (r8.w != 0) {
      r14.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r14.xx);
      r15.y = -r15.z;
      r14.xyz = r10.yzy * r15.xyz + r14.yzy;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.xyz = max(float3(0,0,0), r14.xyz);
      r14.xyz = min(r14.xyz, r15.xyz);
      r13.zw = sunConstants.sstLightingConstants.coordScale * r14.zy;
      r13.zw = floor(r13.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r13.z = r13.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r13.z = (uint)r13.z;
      r13.z = (int)r13.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r14.w = (int)r13.w & 0x40000000;
      r15.x = (uint)r13.w << 2;
      if (r14.w == 0) {
        r14.w = (int)r13.w & 0x01ffffff;
        r16.x = (int)r13.z + (int)r14.w;
        r13.z = (uint)r13.w >> 25;
        r13.z = (uint)r13.z;
        r14.xyz = r14.xyz * r13.zzz;
        r14.xyz = frac(r14.xyz);
        r14.xyz = float3(128,128,128) * r14.xyz;
        r14.xyz = (uint3)r14.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r13.zw = (uint2)r14.zy >> int2(6,6);
        r14.w = (int)r16.z & 0xc0000000;
        r15.y = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
      r15.y = samp0[]..swiz;
        r13.w = r13.w ? r16.z : r15.y;
        r15.y = (uint)r13.w >> 13;
        r13.z = r13.z ? r15.y : r13.w;
        r13.z = (int)r13.z & 8191;
        r17.x = (int)r13.z + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r15.yzw = r14.www ? r16.xyz : r17.xyz;
        r17.yz = r14.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r14.zy >> (uint2)r17.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r16.w = (int)r15.w & 0xc0000000;
        r17.y = (int)r15.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
      r17.y = samp0[]..swiz;
        r13.w = r13.w ? r15.w : r17.y;
        r17.y = (uint)r13.w >> 13;
        r13.z = r13.z ? r17.y : r13.w;
        r13.z = (int)r13.z & 8191;
        r17.x = (int)r13.z + (int)r15.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r15.yzw = r16.www ? r15.yzw : r17.xzw;
        r15.yzw = r14.www ? r16.xyz : r15.yzw;
        r13.z = (int)r15.w & 0xc0000000;
        if (r13.z == 0) {
          r13.z = (int)-r15.z + 6;
          r13.zw = (uint2)r14.zy >> (uint2)r13.zz;
          r14.w = (int)r15.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r14.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r16.x = (int)r13.z + (int)r15.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.zz + int2(1,2);
          r13.z = (int)-r16.y + 6;
          r13.zw = (uint2)r14.zy >> (uint2)r13.zz;
          r14.w = (int)r16.w & 0xc0000000;
          r15.z = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r15.z >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r17.x = (int)r13.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r14.www ? r16.xyw : r17.xyz;
          r13.z = (int)-r17.y + 6;
          r13.zw = (uint2)r14.zy >> (uint2)r13.zz;
          r15.z = (int)r17.z & 0xc0000000;
          r16.y = (int)r17.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r16.y >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r18.x = (int)r13.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r13.zw = r15.zz ? r17.xz : r18.xy;
          r15.yw = r14.ww ? r16.xw : r13.zw;
        }
        r13.z = (int)r15.w & 0xc0000000;
        if (r13.z == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r15.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r15.w >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r16.xy = (int2)r15.ww & int2(32767,536870912);
          r14.w = (uint)r16.x;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 3.05185094e-05 * r14.w;
          r15.z = (int)r14.y & 3;
          r15.z = (int)r15.z + (int)r15.y;
          r15.z = (int)r15.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r14.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.z = (((uint)r14.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.w = (((uint)r14.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r14.x = (uint)r15.z >> (uint)r16.x;
          r14.x = (int)r14.x & 255;
          r14.x = (uint)r14.x;
          r14.x = r14.x * r14.w;
          r14.x = r14.x * 0.00392156886 + r13.w;
          r14.y = (int)r16.z + 1;
          if (1 == 0) r14.z = 0; else if (1+1 < 32) {           r14.z = (uint)r14.z << (32-(1 + 1)); r14.z = (uint)r14.z >> (32-1);          } else r14.z = (uint)r14.z >> 1;
          r14.y = (int)r14.z + (int)r14.y;
          r14.y = (int)r14.y + (int)r15.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r14.y = (uint)r14.y >> (uint)r16.w;
          r14.y = (int)r14.y & 0x0000ffff;
          r14.y = (uint)r14.y;
          r14.y = r14.y * r14.w;
          r13.w = r14.y * 1.52590219e-05 + r13.w;
          r15.x = r16.y ? r14.x : r13.w;
        } else {
          r13.w = (int)r15.w & 0x80000000;
          r14.x = (int)r15.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.x, r14.x, l(0), t23.xxxx
        r14.x = samp0[]..swiz;
          r13.w = r13.w ? r14.x : 0;
          r14.x = (uint)r15.w << 2;
          r14.y = (uint)r13.w >> 16;
          r14.y = f16tof32(r14.y);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r14.x = r10.y * r14.y + r14.x;
          r13.w = r10.z * r13.w + r14.x;
          r15.x = r13.z ? r13.w : r15.x;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r15.x < r10.w);
      r13.y = r10.w ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r7.z;
        r13.zw = -sunConstants.splitPinTransform[r8.w].xy + r10.yz;
        r13.zw = sunConstants.splitPinTransform[r8.w].zz * r13.zw;
        r14.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r14.z = r8.w + r7.z;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r6.w).x;
        r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
        r8.w = r10.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r10.w = r8.w * r8.w;
        r13.y = r10.w * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r14.x = -r7.x;
        r8.w = (uint)r7.z;
        r7.z = 1 + r7.z;
        r7.z = min(2, r7.z);
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.zw = (uint2)r7.zw;
        r13.zw = -sunConstants.splitPinTransform[r8.w].xy + r10.yz;
        r13.zw = sunConstants.splitPinTransform[r8.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r7.z].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r7.z].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.y = r8.x;
        r14.z = r7.x;
        r10.w = 0;
        r14.w = 0;
        while (true) {
          r15.x = cmp((uint)r14.w >= 8);
          if (r15.x != 0) break;
          r15.x = cmp((uint)r7.w < (uint)r14.w);
          r15.yz = r15.xx ? r10.yz : r13.zw;
          r15.w = r15.x ? sunConstants.splitPinTransform[r7.z].w : sunConstants.splitPinTransform[r8.w].w;
          r15.x = r15.x ? r7.z : r8.w;
          r16.x = dot(icb[r14.w+0].yx, r14.xy);
          r16.y = dot(icb[r14.w+0].yx, r14.yz);
          r16.xy = r16.xy * r15.ww + r15.yz;
          r15.x = (int)r15.x + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r15.x;
          r15.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r6.w).x;
          r15.y = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r15.x = r15.x + r15.y;
          r15.x = saturate(-1 + r15.x);
          r10.w = r15.x * 0.125 + r10.w;
          r14.w = (int)r14.w + 1;
        }
        r6.w = r10.w * r10.w;
        r13.y = r6.w * r10.w;
      }
    }
  }
  r6.w = cmp(0 < abs(r5.w));
  if (r6.w != 0) {
    r6.w = cmp(0 < r13.y);
    if (r6.w != 0) {
      r6.w = sunConstants.specScale * r2.w;
      r6.w = 0.25 * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r12.w = 1;
        r7.z = dot(sunConstants.sunCookieTransform[0].xyzw, r12.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r12.xyzw);
        r14.xy = frac(r7.zw);
        r7.z = -1 + (int14)sunConstants.sunCookieIndex;
        r14.z = (uint)r7.z;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r7.z = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r7.z);
      r7.w = r2.z ? r7.w : 0;
      if (r7.w != 0) {
        r7.z = (int)r7.z + numLights;
        r7.z = (int)r7.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
      r7.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.z, l(68), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(84), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.z, l(132), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.z, l(148), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
        r8.w = abs(r5.w) * -0.200000003 + 0.400000006;
        r12.w = cmp(r5.w < 0);
        r8.w = r12.w ? -r8.w : r8.w;
        r18.xyz = r1.xyz * r8.www + v6.xyz;
        r18.w = 1;
        r14.x = dot(r14.xyzw, r18.xyzw);
        r14.y = dot(r15.xyzw, r18.xyzw);
        r13.zw = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.zw = r13.zw + r17.zw;
        r13.zw = r13.zw * r17.xy;
        r14.xy = r7.ww / r16.xz;
        r14.zw = float2(1,1) + -r14.xy;
        r14.zw = cmp(r13.zw >= r14.zw);
        r14.xy = cmp(r14.xy >= r13.zw);
        r14.xy = (int2)r14.xy | (int2)r14.zw;
        r8.w = (int)r14.y | (int)r14.x;
        if (r8.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.z, l(28), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.z, l(100), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xy, r7.z, l(164), t12.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
          r7.z = dot(r14.xyzw, r18.xyzw);
          r13.zw = saturate(r13.zw);
          r14.xy = r13.zw * r16.xz + r16.yw;
          r7.z = r7.z + r15.x;
          r7.z = r7.z / r15.y;
          r7.z = max(6.10351563e-05, r7.z);
          r8.w = (int)r8.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r15.x = -r7.x;
            r16.z = (uint)r8.w;
            r15.y = r8.x;
            r15.z = r7.x;
            r12.w = 0;
            r13.z = 0;
            while (true) {
              r13.w = cmp((int)r13.z >= 8);
              if (r13.w != 0) break;
              r17.x = dot(icb[r13.z+0].yx, r15.xy);
              r17.y = dot(icb[r13.z+0].yx, r15.yz);
              r16.xy = r17.xy * r7.ww + r14.xy;
              r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.z).x;
              r12.w = r13.w * 0.125 + r12.w;
              r13.z = (int)r13.z + 1;
            }
          } else {
            r14.z = (uint)r8.w;
            r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r7.z).x;
          }
          r7.z = r12.w * r12.w;
          r7.z = r7.z * r12.w;
        } else {
          r7.z = 1;
        }
        r13.y = r13.y * r7.z;
      } else {
        r7.z = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r7.z);
        r8.w = ~(int)r2.z;
        r7.w = r7.w ? r8.w : 0;
        if (r7.w != 0) {
          r7.z = (int)r7.z + numLights;
          r7.z = (int)r7.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.z, l(52), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.z, l(68), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.z, l(84), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.z, l(132), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.z, l(148), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
          r8.w = abs(r5.w) * -0.200000003 + 0.400000006;
          r12.w = cmp(r5.w < 0);
          r8.w = r12.w ? -r8.w : r8.w;
          r18.xyz = r1.xyz * r8.www + v6.xyz;
          r18.w = 1;
          r14.x = dot(r14.xyzw, r18.xyzw);
          r14.y = dot(r15.xyzw, r18.xyzw);
          r13.zw = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r13.zw = r13.zw + r17.zw;
          r13.zw = r13.zw * r17.xy;
          r14.xy = r7.ww / r16.xz;
          r14.zw = float2(1,1) + -r14.xy;
          r14.zw = cmp(r13.zw >= r14.zw);
          r14.xy = cmp(r14.xy >= r13.zw);
          r14.xy = (int2)r14.xy | (int2)r14.zw;
          r8.w = (int)r14.y | (int)r14.x;
          if (r8.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.z, l(28), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.z, l(100), t12.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xy, r7.z, l(164), t12.xyxx
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
            r7.z = dot(r14.xyzw, r18.xyzw);
            r13.zw = saturate(r13.zw);
            r14.xy = r13.zw * r16.xz + r16.yw;
            r7.z = r7.z + r15.x;
            r7.z = r7.z / r15.y;
            r7.z = max(6.10351563e-05, r7.z);
            r8.w = (int)r8.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r15.x = -r7.x;
              r16.z = (uint)r8.w;
              r15.y = r8.x;
              r15.z = r7.x;
              r12.w = 0;
              r13.z = 0;
              while (true) {
                r13.w = cmp((int)r13.z >= 8);
                if (r13.w != 0) break;
                r17.x = dot(icb[r13.z+0].yx, r15.xy);
                r17.y = dot(icb[r13.z+0].yx, r15.yz);
                r16.xy = r17.xy * r7.ww + r14.xy;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.z).x;
                r12.w = r13.w * 0.125 + r12.w;
                r13.z = (int)r13.z + 1;
              }
            } else {
              r14.z = (uint)r8.w;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r7.z).x;
            }
            r7.z = r12.w * r12.w;
            r7.z = r7.z * r12.w;
          } else {
            r7.z = 1;
          }
          r13.y = r13.y * r7.z;
        }
      }
      r7.z = -r2.x * 0.5 + 1;
      r7.z = -abs(r5.w) * r7.z + 1;
      r7.z = r7.z * r7.z;
      r7.z = -r7.z * 0.620000005 + 0.620000005;
      r7.z = r7.z + -abs(r5.w);
      r7.z = r3.w * r7.z + abs(r5.w);
      r7.w = cmp(0 < r5.w);
      r5.w = saturate(r5.w);
      r14.xyz = -v6.xyz * r0.www + sunConstants.wldDir.xyz;
      r0.w = dot(r14.xyz, r14.xyz);
      r0.w = rsqrt(r0.w);
      r14.xyz = r14.xyz * r0.www;
      r0.w = dot(r14.xyz, r6.xyz);
      r8.w = dot(r1.xyz, r14.xyz);
      r12.w = abs(r8.w) * r2.w + -abs(r8.w);
      r8.w = abs(r8.w) * r12.w + 1;
      r12.w = r5.w * r4.z + r4.w;
      r8.w = r8.w * r8.w;
      r8.w = r8.w * r12.w;
      r8.w = rcp(r8.w);
      r5.w = r5.w * r6.w;
      r5.w = r8.w * r5.w;
      r0.w = saturate(1 + -r0.w);
      r6.w = r0.w * r0.w;
      r6.w = r6.w * r6.w;
      r0.w = r6.w * r0.w;
      r0.w = r5.w * r0.w;
      r6.w = r7.w ? r7.z : 0;
      r14.xyz = r7.www ? float3(0,0,0) : r7.zzz;
      r13.zw = r7.ww ? r0.ww : 0;
      r15.xyz = r7.www ? r5.www : 0;
      r0.w = dot(r10.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r0.w = r13.y * r0.w;
      r13.x = 1;
      r5.w = sunConstants.wldDir.x;
      r7.zw = sunConstants.wldDir.yz;
      r16.xy = r6.ww;
      r8.w = r13.w;
    } else {
      r0.w = 0;
      r10.yzw = float3(0,0,0);
      r5.w = 0;
      r7.zw = float2(0,0);
      r16.xy = float2(0,0);
      r14.xyz = float3(0,0,0);
      r6.w = 0;
      r15.xyz = float3(0,0,0);
      r8.w = 0;
      r13.xyzw = float4(0,0,0,0);
    }
  } else {
    r0.w = 0;
    r10.yzw = float3(0,0,0);
    r5.w = 0;
    r7.zw = float2(0,0);
    r16.xy = float2(0,0);
    r14.xyz = float3(0,0,0);
    r6.w = 0;
    r15.xyz = float3(0,0,0);
    r8.w = 0;
    r13.xyzw = float4(0,0,0,0);
  }
  r0.y = 0.0078125 * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(15, r0.y);
  r0.y = (uint)r0.y;
  r17.xy = (uint2)r4.xy >> int2(6,6);
  r17.z = (uint)r0.y << 4;
  r0.y = ~(int)r2.z;
  r4.x = -r2.x * 0.5 + 1;
  r18.x = -r7.x;
  r19.xy = float2(0,0);
  r20.w = 0;
  r21.xyz = v6.xyz;
  r21.w = 1;
  r22.w = 1;
  r18.z = r7.x;
  r23.w = 1;
  r24.z = 1;
  r25.w = 1;
  r18.yw = r8.xx;
  r7.y = r18.w;
  r26.w = 1;
  r8.y = r18.x;
  r8.z = r7.x;
  r27.w = 1;
  r28.x = r8.x;
  r28.y = r18.x;
  r28.z = r7.x;
  r29.x = r8.x;
  r29.y = r18.x;
  r29.z = r7.x;
  r30.x = r8.x;
  r30.y = r18.x;
  r30.z = r7.x;
  r31.xyz = float3(0,0,0);
  r32.xyz = float3(0,0,0);
  r33.xyz = float3(0,0,0);
  r34.xyz = float3(0,0,0);
  r35.xyz = r10.yzw;
  r36.x = r5.w;
  r36.yz = r7.zw;
  r37.xy = r16.xy;
  r37.z = r6.w;
  r38.xyz = r14.xyz;
  r39.xyz = r15.xyz;
  r40.x = r8.w;
  r40.yz = r13.zw;
  r41.x = enableDitheredShadow;
  r41.y = r0.w;
  r16.zw = r13.xy;
  r4.y = 0;
  while (true) {
    r12.w = cmp((uint)r4.y >= numLights);
    if (r12.w != 0) break;
    r19.z = (uint)r4.y >> 5;
    r20.xyz = (int3)r17.xyz + (int3)r19.xyz;
    r12.w = visibleLights.Load(r20.xyzw).x;
    r20.xyz = r31.xyz;
    r42.xyz = r32.xyz;
    r43.xyz = r33.xyz;
    r44.xyz = r34.xyz;
    r45.xyz = r35.xyz;
    r46.xyz = r36.xyz;
    r47.xyz = r37.xyz;
    r48.xyz = r39.xyz;
    r49.xyz = r40.xyz;
    r19.zw = r16.zw;
    r14.w = r41.x;
    r15.w = r41.y;
    r50.xyz = r38.xyz;
    r17.w = r12.w;
    while (true) {
      if (r17.w == 0) break;
      r24.w = firstbitlow((uint)r17.w);
      r28.w = 1 << (int)r24.w;
      r29.w = (int)r17.w & (int)r28.w;
      if (r29.w != 0) {
        r17.w = (int)r17.w ^ (int)r28.w;
        r24.w = (int)r4.y + (int)r24.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r51.xyzw, r24.w, l(0), t11.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r52.xy, r24.w, l(16), t11.xyxx
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
        r51.xyz = -v6.xyz + r51.xyz;
        r52.z = r51.w;
        r51.xyz = cmp(abs(r51.xyz) < r52.zxy);
        r28.w = r51.y ? r51.x : 0;
        r28.w = r51.z ? r28.w : 0;
        if (r28.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r24.w, l(0), t12.wxyz
        r51.x = samp0[]..swiz;
        r51.y = samp0[]..swiz;
        r51.z = samp0[]..swiz;
        r51.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r24.w, l(16), t12.zxyw
        r52.x = samp0[]..swiz;
        r52.y = samp0[]..swiz;
        r52.z = samp0[]..swiz;
        r52.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r24.w, l(32), t12.xyzw
        r53.x = samp0[]..swiz;
        r53.y = samp0[]..swiz;
        r53.z = samp0[]..swiz;
        r53.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r24.w, l(48), t12.xyzw
        r54.x = samp0[]..swiz;
        r54.y = samp0[]..swiz;
        r54.z = samp0[]..swiz;
        r54.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r24.w, l(64), t12.yzwx
        r55.x = samp0[]..swiz;
        r55.y = samp0[]..swiz;
        r55.z = samp0[]..swiz;
        r55.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r24.w, l(80), t12.xyzw
        r56.x = samp0[]..swiz;
        r56.y = samp0[]..swiz;
        r56.z = samp0[]..swiz;
        r56.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r24.w, l(96), t12.yzwx
        r57.x = samp0[]..swiz;
        r57.y = samp0[]..swiz;
        r57.z = samp0[]..swiz;
        r57.w = samp0[]..swiz;
          if (3 == 0) r28.w = 0; else if (3+24 < 32) {           r28.w = (uint)r52.w << (32-(3 + 24)); r28.w = (uint)r28.w >> (32-3);          } else r28.w = (uint)r52.w >> 24;
          switch (r28.w) {
            case 4 :            r28.w = cmp(0 < r57.x);
            r58.xy = r56.zw;
            r58.z = r57.w;
            r59.xyz = -r58.xyz * float3(0.5,0.5,0.5) + r51.yzw;
            r60.xyz = -v6.xyz + r59.xyz;
            r29.w = dot(r58.xyz, r60.xyz);
            r30.w = saturate(-r29.w / r57.x);
            r61.xyz = r30.www * r58.xyz + r59.xyz;
            r61.xyz = r28.www ? r61.xyz : r51.yzw;
            r61.xyz = -v6.xyz + r61.xyz;
            r31.w = dot(r61.xyz, r61.xyz);
            r32.w = rsqrt(r31.w);
            r61.xyz = r61.xyz * r32.www;
            r32.w = dot(r1.xyz, r61.xyz);
            r33.w = cmp(0 < abs(r32.w));
            if (r33.w != 0) {
              r33.w = sqrt(r31.w);
              r34.w = r54.x * r54.x;
              r31.w = r34.w / r31.w;
              r31.w = min(1, r31.w);
              r41.zw = saturate(r33.ww * r53.xz + r53.yw);
              r62.xy = r41.zw * r41.zw;
              r41.zw = r41.zw * float2(-2,-2) + float2(3,3);
              r41.zw = r62.xy * r41.zw;
              r31.w = r41.z * r31.w;
              r62.x = r31.w * r41.w;
              r31.w = cmp(0 < r62.x);
              if (r31.w != 0) {
                if (3 == 0) r31.w = 0; else if (3+27 < 32) {                 r31.w = (uint)r52.w << (32-(3 + 27)); r31.w = (uint)r31.w >> (32-3);                } else r31.w = (uint)r52.w >> 27;
                r31.w = cmp((int)r31.w != 1);
                if (r31.w != 0) {
                  r31.w = abs(r32.w) * -0.200000003 + 0.400000006;
                  r33.w = cmp(r32.w < 0);
                  r31.w = r33.w ? -r31.w : r31.w;
                  r63.xyz = r1.xyz * r31.www + v6.xyz;
                  r63.xyz = r63.xyz + -r55.xyz;
                  r31.w = max(abs(r63.y), abs(r63.z));
                  r31.w = max(abs(r63.x), r31.w);
                  r31.w = r56.x / r31.w;
                  r31.w = r31.w + r56.y;
                  r33.w = dot(r63.xyz, r63.xyz);
                  r33.w = rsqrt(r33.w);
                  r31.w = max(6.10351563e-05, r31.w);
                  r34.w = (int)r52.w & 0x0000ffff;
                  r64.w = (uint)r34.w;
                  r62.y = 0;
                  r34.w = 0;
                  while (true) {
                    r35.w = cmp((int)r34.w >= 8);
                    if (r35.w != 0) break;
                    r65.y = dot(icb[r34.w+0].yx, r18.xy);
                    r65.z = dot(icb[r34.w+0].yx, r18.yz);
                    r65.yz = r65.yz * r54.yy;
                    r65.x = r65.y * r10.x;
                    r65.w = r65.y * r9.x;
                    r64.xyz = r63.xyz * r33.www + r65.xzw;
                    r35.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r64.xyzw, r31.w).x;
                    r62.y = r35.w * 0.125 + r62.y;
                    r34.w = (int)r34.w + 1;
                  }
                } else {
                  r62.y = 1;
                }
                r31.w = r62.x * r62.y;
                r31.w = cmp(0 < r31.w);
                if (r31.w != 0) {
                  r31.w = r52.x * r2.w;
                  r31.w = 0.25 * r31.w;
                  r33.w = dot(r58.xyz, r11.xyz);
                  r34.w = dot(r11.xyz, r60.xyz);
                  r35.w = -r33.w * r33.w + r57.x;
                  r29.w = r33.w * r34.w + -r29.w;
                  r29.w = saturate(r29.w / r35.w);
                  r33.w = r35.w / r57.x;
                  r33.w = 10 * r33.w;
                  r33.w = min(1, r33.w);
                  r29.w = r29.w + -r30.w;
                  r29.w = r33.w * r29.w + r30.w;
                  r58.xyz = r29.www * r58.xyz + r59.xyz;
                  r58.xyz = r28.www ? r58.xyz : r51.yzw;
                  r58.xyz = -v6.xyz + r58.xyz;
                  r28.w = dot(r58.xyz, r58.xyz);
                  r28.w = rsqrt(r28.w);
                  r59.xyz = r58.xyz * r28.www;
                  if (4 == 0) r29.w = 0; else if (4+16 < 32) {                   r29.w = (uint)r52.w << (32-(4 + 16)); r29.w = (uint)r29.w >> (32-4);                  } else r29.w = (uint)r52.w >> 16;
                  r30.w = cmp(0 < (uint)r29.w);
                  r30.w = r2.z ? r30.w : 0;
                  if (r30.w != 0) {
                    r29.w = (int)r29.w + numLights;
                    r29.w = (int)r29.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.w, r29.w, l(52), t12.xxxx
                  r30.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r29.w, l(100), t12.xyzw
                  r60.x = samp0[]..swiz;
                  r60.y = samp0[]..swiz;
                  r60.z = samp0[]..swiz;
                  r60.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r29.w, l(116), t12.xyzw
                  r63.x = samp0[]..swiz;
                  r63.y = samp0[]..swiz;
                  r63.z = samp0[]..swiz;
                  r63.w = samp0[]..swiz;
                    r33.w = abs(r32.w) * -0.200000003 + 0.400000006;
                    r34.w = cmp(r32.w < 0);
                    r33.w = r34.w ? -r33.w : r33.w;
                    r22.xyz = r1.xyz * r33.www + v6.xyz;
                    r33.w = dot(r60.xyzw, r22.xyzw);
                    r34.w = dot(r63.xyzw, r22.xyzw);
                    r35.w = cmp(r34.w < r33.w);
                    if (r35.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r29.w, l(68), t12.xyzw
                    r60.x = samp0[]..swiz;
                    r60.y = samp0[]..swiz;
                    r60.z = samp0[]..swiz;
                    r60.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r29.w, l(84), t12.xyzw
                    r63.x = samp0[]..swiz;
                    r63.y = samp0[]..swiz;
                    r63.z = samp0[]..swiz;
                    r63.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r29.w, l(132), t12.xyzw
                    r64.x = samp0[]..swiz;
                    r64.y = samp0[]..swiz;
                    r64.z = samp0[]..swiz;
                    r64.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r29.w, l(148), t12.xyzw
                    r65.x = samp0[]..swiz;
                    r65.y = samp0[]..swiz;
                    r65.z = samp0[]..swiz;
                    r65.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.zw, r29.w, l(164), t12.xxxy
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r60.x = dot(r60.xyzw, r22.xyzw);
                      r60.y = dot(r63.xyzw, r22.xyzw);
                      r22.xy = r60.xy / r34.ww;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r65.zw;
                      r22.xy = r22.xy * r65.xy;
                      r60.xy = r30.ww / r64.xz;
                      r60.zw = float2(1,1) + -r60.xy;
                      r60.zw = cmp(r22.xy >= r60.zw);
                      r60.xy = cmp(r60.xy >= r22.xy);
                      r60.xy = (int2)r60.xy | (int2)r60.zw;
                      r22.z = (int)r60.y | (int)r60.x;
                      r22.xy = saturate(r22.xy);
                      r60.xy = r22.xy * r64.xz + r64.yw;
                      r22.x = r41.w * r34.w;
                      r22.y = r41.z * r34.w + r33.w;
                      r22.x = r22.y / r22.x;
                    } else {
                      r22.z = -1;
                    }
                    r22.y = (int)r35.w | (int)r22.z;
                    if (r22.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r29.w, l(28), t12.xxxx
                    r22.y = samp0[]..swiz;
                      r22.x = max(6.10351563e-05, r22.x);
                      r22.y = (int)r22.y & 0x0000ffff;
                      if (r14.w != 0) {
                        r63.z = (uint)r22.y;
                        r22.z = 0;
                        r29.w = 0;
                        while (true) {
                          r33.w = cmp((int)r29.w >= 8);
                          if (r33.w != 0) break;
                          r64.x = dot(icb[r29.w+0].yx, r18.xw);
                          r64.y = dot(icb[r29.w+0].xy, r7.xy);
                          r63.xy = r64.xy * r30.ww + r60.xy;
                          r33.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r63.xyz, r22.x).x;
                          r22.z = r33.w * 0.125 + r22.z;
                          r29.w = (int)r29.w + 1;
                        }
                      } else {
                        r60.z = (uint)r22.y;
                        r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r60.xyz, r22.x).x;
                      }
                      r22.x = r22.z * r22.z;
                      r22.x = r22.x * r22.z;
                    } else {
                      r22.x = 1;
                    }
                    r62.y = r62.y * r22.x;
                  } else {
                    if (4 == 0) r22.x = 0; else if (4+20 < 32) {                     r22.x = (uint)r52.w << (32-(4 + 20)); r22.x = (uint)r22.x >> (32-4);                    } else r22.x = (uint)r52.w >> 20;
                    r22.y = cmp(0 < (uint)r22.x);
                    r22.y = r22.y ? r0.y : 0;
                    if (r22.y != 0) {
                      r22.x = (int)r22.x + numLights;
                      r22.x = (int)r22.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r22.x, l(52), t12.xxxx
                    r22.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r22.x, l(100), t12.xyzw
                    r60.x = samp0[]..swiz;
                    r60.y = samp0[]..swiz;
                    r60.z = samp0[]..swiz;
                    r60.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r22.x, l(116), t12.xyzw
                    r63.x = samp0[]..swiz;
                    r63.y = samp0[]..swiz;
                    r63.z = samp0[]..swiz;
                    r63.w = samp0[]..swiz;
                      r29.w = abs(r32.w) * -0.200000003 + 0.400000006;
                      r30.w = cmp(r32.w < 0);
                      r29.w = r30.w ? -r29.w : r29.w;
                      r23.xyz = r1.xyz * r29.www + v6.xyz;
                      r29.w = dot(r60.xyzw, r23.xyzw);
                      r30.w = dot(r63.xyzw, r23.xyzw);
                      r33.w = cmp(r30.w < r29.w);
                      if (r33.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r22.x, l(68), t12.xyzw
                      r60.x = samp0[]..swiz;
                      r60.y = samp0[]..swiz;
                      r60.z = samp0[]..swiz;
                      r60.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r22.x, l(84), t12.xyzw
                      r63.x = samp0[]..swiz;
                      r63.y = samp0[]..swiz;
                      r63.z = samp0[]..swiz;
                      r63.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r22.x, l(132), t12.xyzw
                      r64.x = samp0[]..swiz;
                      r64.y = samp0[]..swiz;
                      r64.z = samp0[]..swiz;
                      r64.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r22.x, l(148), t12.xyzw
                      r65.x = samp0[]..swiz;
                      r65.y = samp0[]..swiz;
                      r65.z = samp0[]..swiz;
                      r65.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.zw, r22.x, l(164), t12.xxxy
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                        r60.x = dot(r60.xyzw, r23.xyzw);
                        r60.y = dot(r63.xyzw, r23.xyzw);
                        r23.xy = r60.xy / r30.ww;
                        r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r23.xy = r23.xy + r65.zw;
                        r23.xy = r23.xy * r65.xy;
                        r60.xy = r22.yy / r64.xz;
                        r60.zw = float2(1,1) + -r60.xy;
                        r60.zw = cmp(r23.xy >= r60.zw);
                        r60.xy = cmp(r60.xy >= r23.xy);
                        r60.xy = (int2)r60.xy | (int2)r60.zw;
                        r23.z = (int)r60.y | (int)r60.x;
                        r23.xy = saturate(r23.xy);
                        r60.xy = r23.xy * r64.xz + r64.yw;
                        r23.x = r41.w * r30.w;
                        r23.y = r41.z * r30.w + r29.w;
                        r23.x = r23.y / r23.x;
                      } else {
                        r23.z = -1;
                      }
                      r23.y = (int)r33.w | (int)r23.z;
                      if (r23.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r22.x, l(28), t12.xxxx
                      r22.x = samp0[]..swiz;
                        r23.x = max(6.10351563e-05, r23.x);
                        r22.x = (int)r22.x & 0x0000ffff;
                        if (r14.w != 0) {
                          r63.z = (uint)r22.x;
                          r23.yz = float2(0,0);
                          while (true) {
                            r29.w = cmp((int)r23.z >= 8);
                            if (r29.w != 0) break;
                            r64.x = dot(icb[r23.z+0].xy, r8.xy);
                            r64.y = dot(icb[r23.z+0].yx, r8.xz);
                            r63.xy = r64.xy * r22.yy + r60.xy;
                            r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r63.xyz, r23.x).x;
                            r23.y = r29.w * 0.125 + r23.y;
                            r23.z = (int)r23.z + 1;
                          }
                        } else {
                          r60.z = (uint)r22.x;
                          r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r60.xyz, r23.x).x;
                        }
                        r22.x = r23.y * r23.y;
                        r22.x = r22.x * r23.y;
                      } else {
                        r22.x = 1;
                      }
                      r62.y = r62.y * r22.x;
                    }
                  }
                  r22.x = r62.x * r62.y;
                  r22.y = -abs(r32.w) * r4.x + 1;
                  r22.y = r22.y * r22.y;
                  r22.y = -r22.y * 0.620000005 + 0.620000005;
                  r22.y = r22.y + -abs(r32.w);
                  r22.y = r3.w * r22.y + abs(r32.w);
                  r23.x = cmp(0 < r32.w);
                  r23.z = saturate(dot(r1.xyz, r59.xyz));
                  r58.xyz = r58.xyz * r28.www + r6.xyz;
                  r28.w = dot(r58.xyz, r58.xyz);
                  r28.w = rsqrt(r28.w);
                  r58.xyz = r58.xyz * r28.www;
                  r28.w = dot(r58.xyz, r6.xyz);
                  r29.w = dot(r1.xyz, r58.xyz);
                  r30.w = abs(r29.w) * r2.w + -abs(r29.w);
                  r29.w = abs(r29.w) * r30.w + 1;
                  r30.w = r23.z * r4.z + r4.w;
                  r29.w = r29.w * r29.w;
                  r29.w = r29.w * r30.w;
                  r29.w = rcp(r29.w);
                  r23.z = r23.z * r31.w;
                  r23.z = r29.w * r23.z;
                  r28.w = saturate(1 + -r28.w);
                  r29.w = r28.w * r28.w;
                  r29.w = r29.w * r29.w;
                  r28.w = r29.w * r28.w;
                  r28.w = r28.w * r23.z;
                  r58.xyz = r23.xxx ? r22.yyy : 0;
                  r22.y = r23.x ? 0 : r22.y;
                  r59.xyz = r23.xxx ? r28.www : 0;
                  r23.x = r23.x ? r23.z : 0;
                  r52.x = r51.x;
                  r23.z = dot(r52.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r23.z = r23.z * r22.x;
                  r28.w = cmp(r15.w < r23.z);
                  if (r28.w != 0) {
                    r28.w = r19.z * r19.w;
                    r60.xyz = r28.www * r45.xyz;
                    r20.xyz = r60.xyz * r47.xyz + r20.xyz;
                    r42.xyz = r60.xyz * r50.xyz + r42.xyz;
                    r44.xyz = r60.xyz * r48.xyz + r44.xyz;
                    r43.xyz = r60.xyz * r49.xyz + r43.xyz;
                    r48.xyz = r23.xxx;
                    r15.w = r23.z;
                    r50.xyz = r22.yyy;
                    r45.xyz = r52.xyz;
                    r46.xyz = r61.xyz;
                    r47.xyz = r58.xyz;
                    r49.xyz = r59.xyz;
                    r19.zw = r62.xy;
                  } else {
                    r58.xyw = r52.xyz * r22.xxx;
                    r20.xyz = r58.xyw * r58.zzz + r20.xyz;
                    r42.xyz = r58.xyw * r22.yyy + r42.xyz;
                    r44.xyz = r58.xyw * r23.xxx + r44.xyz;
                    r43.xyz = r58.xyw * r59.xyz + r43.xyz;
                  }
                }
              }
            }
            break;
            case 2 :            r58.xy = r54.zw;
            r58.z = r55.w;
            r58.xyz = -v6.xyz + r58.xyz;
            r22.x = dot(r58.xyz, r58.xyz);
            r22.x = rsqrt(r22.x);
            r59.xyz = r58.xyz * r22.xxx;
            r22.y = dot(r1.xyz, r59.xyz);
            r23.x = cmp(0 < abs(r22.y));
            if (r23.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r24.w, l(112), t12.yzwx
            r60.x = samp0[]..swiz;
            r60.y = samp0[]..swiz;
            r60.z = samp0[]..swiz;
            r60.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r24.w, l(128), t12.zxyw
            r61.x = samp0[]..swiz;
            r61.y = samp0[]..swiz;
            r61.z = samp0[]..swiz;
            r61.w = samp0[]..swiz;
              r63.xyz = r60.xyz;
              r63.w = r61.y;
              r23.x = dot(r63.xyzw, r21.xyzw);
              r23.z = cmp(r23.x < 1);
              if (r23.z != 0) {
                r62.xzw = float3(1,1,1);
                r64.x = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r24.w, l(172), t12.yzwx
              r65.x = samp0[]..swiz;
              r65.y = samp0[]..swiz;
              r65.z = samp0[]..swiz;
              r65.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r66.xyzw, r24.w, l(188), t12.wxyz
              r66.x = samp0[]..swiz;
              r66.y = samp0[]..swiz;
              r66.z = samp0[]..swiz;
              r66.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r67.xyzw, r24.w, l(204), t12.xyzw
              r67.x = samp0[]..swiz;
              r67.y = samp0[]..swiz;
              r67.z = samp0[]..swiz;
              r67.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.z, r24.w, l(236), t12.xxxx
              r23.z = samp0[]..swiz;
                r68.xyz = -v6.xyz + r51.yzw;
                r28.w = r54.x * r54.x;
                r29.w = dot(r68.xyz, r68.xyz);
                r28.w = r28.w / r29.w;
                r28.w = min(1, r28.w);
                r41.zw = saturate(r23.xx * r53.xz + r53.yw);
                r53.xy = r41.zw * r41.zw;
                r41.zw = r41.zw * float2(-2,-2) + float2(3,3);
                r41.zw = r53.xy * r41.zw;
                r28.w = r41.z * r28.w;
                r28.w = r28.w * r41.w;
                r55.w = r56.x;
                r53.x = dot(r55.xyzw, r21.xyzw);
                r68.xyz = r56.yzw;
                r68.w = r57.w;
                r53.y = dot(r68.xyzw, r21.xyzw);
                r24.xy = r53.xy / r23.xx;
                r23.x = cmp(r65.w < 0.00048828125);
                if (r23.x != 0) {
                  r66.y = r67.x;
                  r41.zw = saturate(abs(r24.xy) * r66.zw + r66.xy);
                  r53.xy = r41.zw * r41.zw;
                  r41.zw = r41.zw * float2(-2,-2) + float2(3,3);
                  r41.zw = r53.xy * r41.zw;
                  r23.x = r41.z * r41.w;
                } else {
                  r65.w = r66.y;
                  r53.xyzw = saturate(r65.xyzw * abs(r24.yyxx));
                  r53.xyzw = log2(r53.xyzw);
                  r53.xyzw = r66.xxxx * r53.xyzw;
                  r53.xyzw = exp2(r53.xyzw);
                  r41.zw = r53.xy + r53.zw;
                  r41.zw = log2(r41.zw);
                  r41.zw = r67.xx * r41.zw;
                  r41.zw = exp2(r41.zw);
                  r29.w = r66.z * r41.z;
                  r30.w = r66.w * r41.w + -1;
                  r29.w = r66.w * r41.w + -r29.w;
                  r29.w = saturate(r30.w / r29.w);
                  r30.w = r29.w * r29.w;
                  r29.w = r29.w * -2 + 3;
                  r23.x = r30.w * r29.w;
                }
                r64.x = r28.w * r23.x;
                r23.x = r23.z ? 0.000000 : 0;
                if (r23.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyz, r24.w, l(220), t12.xyzx
                r53.x = samp0[]..swiz;
                r53.y = samp0[]..swiz;
                r53.z = samp0[]..swiz;
                  r23.z = dot(r67.yzw, r24.xyz);
                  r24.x = dot(r53.xyz, r24.xyz);
                  r53.x = frac(r23.z);
                  r53.y = frac(r24.x);
                  r23.x = (int)r23.x + -1;
                  r53.z = (uint)r23.x;
                  r62.xzw = gCookieArray.SampleLevel(samplerLinear_s, r53.xyz, 0).xyz;
                } else {
                  r62.xzw = float3(1,1,1);
                }
              }
              r51.yz = r52.yz;
              r51.xyz = r51.xyz * r62.xzw;
              r23.x = cmp(0 < r64.x);
              if (r23.x != 0) {
                if (3 == 0) r23.x = 0; else if (3+27 < 32) {                 r23.x = (uint)r52.w << (32-(3 + 27)); r23.x = (uint)r23.x >> (32-3);                } else r23.x = (uint)r52.w >> 27;
                r23.x = cmp((int)r23.x != 1);
                if (r23.x != 0) {
                  r23.x = abs(r22.y) * -0.200000003 + 0.400000006;
                  r23.z = cmp(r22.y < 0);
                  r23.x = r23.z ? -r23.x : r23.x;
                  r25.xyz = r1.xyz * r23.xxx + v6.xyz;
                  r60.xyz = r57.xyz;
                  r23.x = dot(r60.xyzw, r25.xyzw);
                  r23.z = dot(r63.xyzw, r25.xyzw);
                  r24.x = cmp(r23.z >= r23.x);
                  if (r24.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.y, r24.w, l(144), t12.xxxx
                  r61.y = samp0[]..swiz;
                    r55.w = r56.x;
                    r24.x = dot(r55.xyzw, r25.xyzw);
                    r57.xyz = r56.yzw;
                    r24.y = dot(r57.xyzw, r25.xyzw);
                    r24.xy = r24.xy / r23.zz;
                    r24.xy = saturate(r24.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r25.xy = r24.xy * r61.zw + r61.xy;
                    r23.x = r23.x / r23.z;
                    r23.x = max(6.10351563e-05, r23.x);
                    r23.z = (int)r52.w & 0x0000ffff;
                    if (r14.w != 0) {
                      r53.z = (uint)r23.z;
                      r24.xy = float2(0,0);
                      while (true) {
                        r24.w = cmp((int)r24.y >= 8);
                        if (r24.w != 0) break;
                        r55.x = dot(icb[r24.y+0].xy, r28.xy);
                        r55.y = dot(icb[r24.y+0].yx, r28.xz);
                        r53.xy = r55.xy * r54.yy + r25.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r53.xyz, r23.x).x;
                        r24.x = r24.w * 0.125 + r24.x;
                        r24.y = (int)r24.y + 1;
                      }
                    } else {
                      r25.z = (uint)r23.z;
                      r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r23.x).x;
                    }
                    r23.x = r24.x * r24.x;
                    r64.y = r23.x * r24.x;
                  } else {
                    r64.y = 1;
                  }
                } else {
                  r64.y = 1;
                }
                r23.x = r64.x * r64.y;
                r23.x = cmp(0 < r23.x);
                if (r23.x != 0) {
                  r23.x = r52.x * r2.w;
                  r23.x = 0.25 * r23.x;
                  if (4 == 0) r23.z = 0; else if (4+16 < 32) {                   r23.z = (uint)r52.w << (32-(4 + 16)); r23.z = (uint)r23.z >> (32-4);                  } else r23.z = (uint)r52.w >> 16;
                  r24.y = cmp(0 < (uint)r23.z);
                  r24.y = r2.z ? r24.y : 0;
                  if (r24.y != 0) {
                    r23.z = (int)r23.z + numLights;
                    r23.z = (int)r23.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r23.z, l(52), t12.xxxx
                  r24.y = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r23.z, l(68), t12.xyzw
                  r53.x = samp0[]..swiz;
                  r53.y = samp0[]..swiz;
                  r53.z = samp0[]..swiz;
                  r53.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r23.z, l(84), t12.xyzw
                  r54.x = samp0[]..swiz;
                  r54.y = samp0[]..swiz;
                  r54.z = samp0[]..swiz;
                  r54.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r23.z, l(100), t12.xyzw
                  r55.x = samp0[]..swiz;
                  r55.y = samp0[]..swiz;
                  r55.z = samp0[]..swiz;
                  r55.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r23.z, l(116), t12.xyzw
                  r56.x = samp0[]..swiz;
                  r56.y = samp0[]..swiz;
                  r56.z = samp0[]..swiz;
                  r56.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r23.z, l(132), t12.xyzw
                  r57.x = samp0[]..swiz;
                  r57.y = samp0[]..swiz;
                  r57.z = samp0[]..swiz;
                  r57.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r23.z, l(148), t12.xyzw
                  r60.x = samp0[]..swiz;
                  r60.y = samp0[]..swiz;
                  r60.z = samp0[]..swiz;
                  r60.w = samp0[]..swiz;
                    r24.w = abs(r22.y) * -0.200000003 + 0.400000006;
                    r25.x = cmp(r22.y < 0);
                    r24.w = r25.x ? -r24.w : r24.w;
                    r26.xyz = r1.xyz * r24.www + v6.xyz;
                    r25.x = dot(r53.xyzw, r26.xyzw);
                    r25.y = dot(r54.xyzw, r26.xyzw);
                    r24.w = dot(r55.xyzw, r26.xyzw);
                    r25.z = dot(r56.xyzw, r26.xyzw);
                    r26.x = cmp(r25.z < r24.w);
                    r25.xy = r25.xy / r25.zz;
                    r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r25.xy = r25.xy + r60.zw;
                    r25.xy = r25.xy * r60.xy;
                    r26.yz = r24.yy / r57.xz;
                    r41.zw = float2(1,1) + -r26.yz;
                    r41.zw = cmp(r25.xy >= r41.zw);
                    r26.yz = cmp(r26.yz >= r25.xy);
                    r26.yz = (int2)r26.yz | (int2)r41.zw;
                    r26.y = (int)r26.z | (int)r26.y;
                    r26.x = (int)r26.x | (int)r26.y;
                    if (r26.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.x, r23.z, l(28), t12.xxxx
                    r26.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.yz, r23.z, l(164), t12.xxyx
                    r26.y = samp0[]..swiz;
                    r26.z = samp0[]..swiz;
                      r25.xy = saturate(r25.xy);
                      r52.xy = r25.xy * r57.xz + r57.yw;
                      r23.z = r26.z * r25.z;
                      r24.w = r26.y * r25.z + r24.w;
                      r23.z = r24.w / r23.z;
                      r23.z = max(6.10351563e-05, r23.z);
                      r24.w = r26.x ? 0.000000 : 0;
                      if (r14.w != 0) {
                        r25.z = (uint)r24.w;
                        r26.xy = float2(0,0);
                        while (true) {
                          r26.z = cmp((int)r26.y >= 8);
                          if (r26.z != 0) break;
                          r53.x = dot(icb[r26.y+0].xy, r29.xy);
                          r53.y = dot(icb[r26.y+0].yx, r29.xz);
                          r25.xy = r53.xy * r24.yy + r52.xy;
                          r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r23.z).x;
                          r26.x = r25.x * 0.125 + r26.x;
                          r26.y = (int)r26.y + 1;
                        }
                      } else {
                        r52.z = (uint)r24.w;
                        r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r52.xyz, r23.z).x;
                      }
                      r23.z = r26.x * r26.x;
                      r23.z = r23.z * r26.x;
                    } else {
                      r23.z = 1;
                    }
                    r64.y = r64.y * r23.z;
                  } else {
                    if (4 == 0) r23.z = 0; else if (4+20 < 32) {                     r23.z = (uint)r52.w << (32-(4 + 20)); r23.z = (uint)r23.z >> (32-4);                    } else r23.z = (uint)r52.w >> 20;
                    r24.y = cmp(0 < (uint)r23.z);
                    r24.y = r24.y ? r0.y : 0;
                    if (r24.y != 0) {
                      r23.z = (int)r23.z + numLights;
                      r23.z = (int)r23.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r23.z, l(52), t12.xxxx
                    r24.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r23.z, l(68), t12.xyzw
                    r52.x = samp0[]..swiz;
                    r52.y = samp0[]..swiz;
                    r52.z = samp0[]..swiz;
                    r52.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r23.z, l(84), t12.xyzw
                    r53.x = samp0[]..swiz;
                    r53.y = samp0[]..swiz;
                    r53.z = samp0[]..swiz;
                    r53.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r23.z, l(100), t12.xyzw
                    r54.x = samp0[]..swiz;
                    r54.y = samp0[]..swiz;
                    r54.z = samp0[]..swiz;
                    r54.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r23.z, l(116), t12.xyzw
                    r55.x = samp0[]..swiz;
                    r55.y = samp0[]..swiz;
                    r55.z = samp0[]..swiz;
                    r55.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r23.z, l(132), t12.xyzw
                    r56.x = samp0[]..swiz;
                    r56.y = samp0[]..swiz;
                    r56.z = samp0[]..swiz;
                    r56.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r23.z, l(148), t12.xyzw
                    r57.x = samp0[]..swiz;
                    r57.y = samp0[]..swiz;
                    r57.z = samp0[]..swiz;
                    r57.w = samp0[]..swiz;
                      r24.w = abs(r22.y) * -0.200000003 + 0.400000006;
                      r25.x = cmp(r22.y < 0);
                      r24.w = r25.x ? -r24.w : r24.w;
                      r27.xyz = r1.xyz * r24.www + v6.xyz;
                      r25.x = dot(r52.xyzw, r27.xyzw);
                      r25.y = dot(r53.xyzw, r27.xyzw);
                      r24.w = dot(r54.xyzw, r27.xyzw);
                      r25.z = dot(r55.xyzw, r27.xyzw);
                      r26.y = cmp(r25.z < r24.w);
                      r25.xy = r25.xy / r25.zz;
                      r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r25.xy = r25.xy + r57.zw;
                      r25.xy = r25.xy * r57.xy;
                      r27.xy = r24.yy / r56.xz;
                      r41.zw = float2(1,1) + -r27.xy;
                      r41.zw = cmp(r25.xy >= r41.zw);
                      r27.xy = cmp(r27.xy >= r25.xy);
                      r27.xy = (int2)r27.xy | (int2)r41.zw;
                      r26.z = (int)r27.y | (int)r27.x;
                      r26.y = (int)r26.y | (int)r26.z;
                      if (r26.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.y, r23.z, l(28), t12.xxxx
                      r26.y = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xy, r23.z, l(164), t12.xyxx
                      r27.x = samp0[]..swiz;
                      r27.y = samp0[]..swiz;
                        r25.xy = saturate(r25.xy);
                        r52.xy = r25.xy * r56.xz + r56.yw;
                        r23.z = r27.y * r25.z;
                        r24.w = r27.x * r25.z + r24.w;
                        r23.z = r24.w / r23.z;
                        r23.z = max(6.10351563e-05, r23.z);
                        r24.w = r26.y ? 0.000000 : 0;
                        if (r14.w != 0) {
                          r25.z = (uint)r24.w;
                          r26.yz = float2(0,0);
                          while (true) {
                            r27.x = cmp((int)r26.z >= 8);
                            if (r27.x != 0) break;
                            r27.x = dot(icb[r26.z+0].xy, r30.xy);
                            r27.y = dot(icb[r26.z+0].yx, r30.xz);
                            r25.xy = r27.xy * r24.yy + r52.xy;
                            r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r23.z).x;
                            r26.y = r25.x * 0.125 + r26.y;
                            r26.z = (int)r26.z + 1;
                          }
                        } else {
                          r52.z = (uint)r24.w;
                          r26.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r52.xyz, r23.z).x;
                        }
                        r23.z = r26.y * r26.y;
                        r23.z = r23.z * r26.y;
                      } else {
                        r23.z = 1;
                      }
                      r64.y = r64.y * r23.z;
                    }
                  }
                  r23.z = r64.x * r64.y;
                  r24.y = -abs(r22.y) * r4.x + 1;
                  r24.y = r24.y * r24.y;
                  r24.y = -r24.y * 0.620000005 + 0.620000005;
                  r24.y = r24.y + -abs(r22.y);
                  r24.y = r3.w * r24.y + abs(r22.y);
                  r24.w = cmp(0 < r22.y);
                  r22.y = saturate(r22.y);
                  r25.xyz = r58.xyz * r22.xxx + r6.xyz;
                  r22.x = dot(r25.xyz, r25.xyz);
                  r22.x = rsqrt(r22.x);
                  r25.xyz = r25.xyz * r22.xxx;
                  r22.x = dot(r25.xyz, r6.xyz);
                  r25.x = dot(r1.xyz, r25.xyz);
                  r25.y = abs(r25.x) * r2.w + -abs(r25.x);
                  r25.x = abs(r25.x) * r25.y + 1;
                  r25.y = r22.y * r4.z + r4.w;
                  r25.x = r25.x * r25.x;
                  r25.x = r25.x * r25.y;
                  r25.x = rcp(r25.x);
                  r22.y = r22.y * r23.x;
                  r22.y = r25.x * r22.y;
                  r22.x = saturate(1 + -r22.x);
                  r23.x = r22.x * r22.x;
                  r23.x = r23.x * r23.x;
                  r22.x = r23.x * r22.x;
                  r22.x = r22.y * r22.x;
                  r25.xyz = r24.www ? r24.yyy : 0;
                  r23.x = r24.w ? 0 : r24.y;
                  r27.xyz = r24.www ? r22.xxx : 0;
                  r22.x = r24.w ? r22.y : 0;
                  r22.y = dot(r51.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r22.y = r23.z * r22.y;
                  r24.y = cmp(r15.w < r22.y);
                  if (r24.y != 0) {
                    r24.y = r19.z * r19.w;
                    r52.xyz = r24.yyy * r45.xyz;
                    r20.xyz = r52.xyz * r47.xyz + r20.xyz;
                    r42.xyz = r52.xyz * r50.xyz + r42.xyz;
                    r44.xyz = r52.xyz * r48.xyz + r44.xyz;
                    r43.xyz = r52.xyz * r49.xyz + r43.xyz;
                    r48.xyz = r22.xxx;
                    r15.w = r22.y;
                    r50.xyz = r23.xxx;
                    r45.xyz = r51.xyz;
                    r46.xyz = r59.xyz;
                    r47.xyz = r25.xyz;
                    r49.xyz = r27.xyz;
                    r19.zw = r64.xy;
                  } else {
                    r51.xyz = r23.zzz * r51.xyz;
                    r20.xyz = r51.xyz * r25.zzz + r20.xyz;
                    r42.xyz = r51.xyz * r23.xxx + r42.xyz;
                    r44.xyz = r51.xyz * r22.xxx + r44.xyz;
                    r43.xyz = r51.xyz * r27.xyz + r43.xyz;
                  }
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
    r31.xyz = r20.xyz;
    r32.xyz = r42.xyz;
    r33.xyz = r43.xyz;
    r34.xyz = r44.xyz;
    r35.xyz = r45.xyz;
    r36.xyz = r46.xyz;
    r37.xyz = r47.xyz;
    r39.xyz = r48.xyz;
    r40.xyz = r49.xyz;
    r16.zw = r19.zw;
    r41.y = r15.w;
    r38.xyz = r50.xyz;
    r4.y = (int)r4.y + 32;
  }
  r4.z = 0;
  r4.xy = float2(1,-1) * r36.yx;
  r6.xyz = r36.zxy * r4.yzx;
  r6.xyz = r36.yzx * r4.zxy + -r6.xyz;
  r7.xyz = viewProjectionMatrix._m10_m11_m13 * r12.yyy;
  r7.xyz = r12.xxx * viewProjectionMatrix._m00_m01_m03 + r7.xyz;
  r7.xyz = r12.zzz * viewProjectionMatrix._m20_m21_m23 + r7.xyz;
  r7.xyz = r7.xyz + r9.yzw;
  r8.z = rcp(r7.z);
  r0.yw = r8.zz * r7.xy;
  r8.xy = r0.yw * float2(0.5,-0.5) + float2(0.5,0.5);
  r7.xyw = r36.xyz * float3(3,3,3) + r12.xyz;
  r0.y = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r0.y = frac(r0.y);
  r0.y = 52.9829178 * r0.y;
  r0.y = frac(r0.y);
  r0.w = 3.14159989 * r0.y;
  r0.w = gameTick.w * 0.5 + r0.w;
  sincos(r0.w, r9.x, r10.x);
  r10.yzw = r9.xxx * r6.xyz;
  r10.xyz = r10.xxx * r4.xyz + r10.yzw;
  r10.xyz = r10.xyz * float3(0.119999997,0.119999997,0.119999997) + r7.xyw;
  r12.xyz = viewProjectionMatrix._m10_m11_m13 * r10.yyy;
  r10.xyw = r10.xxx * viewProjectionMatrix._m00_m01_m03 + r12.xyz;
  r10.xyz = r10.zzz * viewProjectionMatrix._m20_m21_m23 + r10.xyw;
  r10.xyz = r10.xyz + r9.yzw;
  r2.zw = float2(0.5,-0.5) * r10.xy;
  r10.z = rcp(r10.z);
  r10.xy = r2.zw * r10.zz + float2(0.5,0.5);
  r12.xyz = -r8.xyz;
  r10.xyz = r12.xyz + r10.xyz;
  r0.w = 3.14159989 + r0.w;
  sincos(r0.w, r9.x, r13.x);
  r6.xyz = r9.xxx * r6.xyz;
  r4.xyz = r13.xxx * r4.xyz + r6.xyz;
  r4.xyz = r4.xyz * float3(0.119999997,0.119999997,0.119999997) + r7.xyw;
  r6.xyz = viewProjectionMatrix._m10_m11_m13 * r4.yyy;
  r4.xyw = r4.xxx * viewProjectionMatrix._m00_m01_m03 + r6.xyz;
  r4.xyz = r4.zzz * viewProjectionMatrix._m20_m21_m23 + r4.xyw;
  r4.xyz = r4.xyz + r9.yzw;
  r2.zw = float2(0.5,-0.5) * r4.xy;
  r4.z = rcp(r4.z);
  r4.xy = r2.zw * r4.zz + r12.xy;
  r12.w = 0.5;
  r4.xyz = r4.xyz + r12.wwz;
  r0.w = dot(renderTargetSize.zw, renderTargetSize.zw);
  r0.w = sqrt(r0.w);
  r2.z = dot(r10.xy, r10.xy);
  r2.z = sqrt(r2.z);
  r2.z = rcp(r2.z);
  r0.w = r2.z * r0.w;
  r2.zw = r0.yy * float2(0.5,0.5) + float2(0.333333343,1);
  r2.zw = float2(0.117647059,0.117647059) * r2.zw;
  r2.zw = r2.zw * r2.zw;
  x1[0].x = r2.z;
  r6.xyz = r10.xyz * r2.zzz + r8.xyz;
  r7.xy = cmp(r0.ww < r2.zw);
  r6.xy = renderTargetSize.xy * r6.xy;
  r9.xy = (int2)r6.xy;
  r9.zw = float2(0,0);
  r3.w = floatZSampler.Load(r9.xyz).x;
  r4.w = cmp(r3.w >= 0.984375);
  r5.w = 1.01587307 * r3.w;
  r3.w = r3.w * 64 + -63;
  r3.w = r4.w ? r3.w : r5.w;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  x2[0].x = r3.w;
  r4.w = 0.0419999994 + r3.w;
  r4.w = r6.z * r4.w;
  r4.w = cmp(1 < r4.w);
  r4.w = r4.w ? 1.000000 : 0;
  r4.w = r7.x ? r4.w : 1;
  x0[0].x = r4.w;
  x1[1].x = r2.w;
  r6.xyz = r4.xyz * r2.www + r8.xyz;
  r6.xy = renderTargetSize.xy * r6.xy;
  r9.xy = (int2)r6.xy;
  r9.zw = float2(0,0);
  r5.w = floatZSampler.Load(r9.xyz).x;
  r6.x = cmp(r5.w >= 0.984375);
  r6.y = 1.01587307 * r5.w;
  r5.w = r5.w * 64 + -63;
  r5.w = r6.x ? r5.w : r6.y;
  r5.w = max(9.99999994e-09, r5.w);
  r5.w = rcp(r5.w);
  x2[1].x = r5.w;
  r6.x = 0.0419999994 + r5.w;
  r6.x = r6.z * r6.x;
  r6.x = cmp(1 < r6.x);
  r6.x = r6.x ? 1.000000 : 0;
  r6.x = r7.y ? r6.x : 1;
  x0[1].x = r6.x;
  r6.y = r6.x + r4.w;
  r6.y = cmp(r6.y != 0.000000);
  if (r6.y != 0) {
    r6.yz = r0.yy * float2(0.5,0.5) + float2(1.33333337,2);
    r6.yz = float2(0.117647059,0.117647059) * r6.yz;
    r6.yz = r6.yz * r6.yz + -r2.zw;
    r2.z = r4.w * r6.y + r2.z;
    x1[0].x = r2.z;
    r7.xyw = r10.xyz * r2.zzz + r8.xyz;
    r2.z = cmp(r0.w < r2.z);
    r6.yw = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r6.yw;
    r9.zw = float2(0,0);
    r6.y = floatZSampler.Load(r9.xyz).x;
    r6.w = cmp(r6.y >= 0.984375);
    r7.x = 1.01587307 * r6.y;
    r6.y = r6.y * 64 + -63;
    r6.y = r6.w ? r6.y : r7.x;
    r6.y = max(9.99999994e-09, r6.y);
    r6.y = rcp(r6.y);
    r3.w = r2.z ? r6.y : r3.w;
    x2[0].x = r3.w;
    r3.w = 0.0419999994 + r6.y;
    r3.w = r7.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x0[0].x = r2.z;
    r2.w = r6.x * r6.z + r2.w;
    x1[1].x = r2.w;
    r6.yzw = r4.xyz * r2.www + r8.xyz;
    r2.w = cmp(r0.w < r2.w);
    r6.yz = renderTargetSize.xy * r6.yz;
    r9.xy = (int2)r6.yz;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r4.w = cmp(r3.w >= 0.984375);
    r6.y = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.w ? r3.w : r6.y;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.w = r2.w ? r3.w : r5.w;
    x2[1].x = r4.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r6.x * r3.w;
    r2.w = r2.w ? r3.w : r6.x;
    x0[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r0.yy * float2(0.5,0.5) + float2(2.33333325,3);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x1[0].x = r2.z;
    r6.xyz = r10.xyz * r2.zzz + r8.xyz;
    r2.z = cmp(r0.w < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x2[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x0[0].x = r2.z;
    r3.w = x1[1].x;
    r4.w = x0[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x1[1].x = r2.w;
    r6.xyz = r4.xyz * r2.www + r8.xyz;
    r2.w = cmp(r0.w < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x2[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x0[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r0.yy * float2(0.5,0.5) + float2(3.33333325,4);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x1[0].x = r2.z;
    r6.xyz = r10.xyz * r2.zzz + r8.xyz;
    r2.z = cmp(r0.w < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x2[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x0[0].x = r2.z;
    r3.w = x1[1].x;
    r4.w = x0[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x1[1].x = r2.w;
    r6.xyz = r4.xyz * r2.www + r8.xyz;
    r2.w = cmp(r0.w < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x2[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x0[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r0.yy * float2(0.5,0.5) + float2(4.33333349,5);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x1[0].x = r2.z;
    r6.xyz = r10.xyz * r2.zzz + r8.xyz;
    r2.z = cmp(r0.w < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x2[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x0[0].x = r2.z;
    r3.w = x1[1].x;
    r4.w = x0[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x1[1].x = r2.w;
    r6.xyz = r4.xyz * r2.www + r8.xyz;
    r2.w = cmp(r0.w < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x2[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x0[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r0.yy * float2(0.5,0.5) + float2(5.33333349,6);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x1[0].x = r2.z;
    r6.xyz = r10.xyz * r2.zzz + r8.xyz;
    r2.z = cmp(r0.w < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x2[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x0[0].x = r2.z;
    r3.w = x1[1].x;
    r4.w = x0[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x1[1].x = r2.w;
    r6.xyz = r4.xyz * r2.www + r8.xyz;
    r2.w = cmp(r0.w < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x2[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x0[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r0.yy * float2(0.5,0.5) + float2(6.33333349,7);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x1[0].x = r2.z;
    r6.xyz = r10.xyz * r2.zzz + r8.xyz;
    r2.z = cmp(r0.w < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x2[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x0[0].x = r2.z;
    r3.w = x1[1].x;
    r4.w = x0[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x1[1].x = r2.w;
    r6.xyz = r4.xyz * r2.www + r8.xyz;
    r2.w = cmp(r0.w < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r3.w = floatZSampler.Load(r9.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x2[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x2[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x0[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r0.yy * float2(0.5,0.5) + float2(7.33333349,8);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r0.y = x1[0].x;
    r3.w = x0[0].x;
    r2.z = r2.z * r2.z + -r0.y;
    r0.y = r3.w * r2.z + r0.y;
    r6.xyz = r10.xyz * r0.yyy + r8.xyz;
    r0.y = cmp(r0.w < r0.y);
    r6.xy = renderTargetSize.xy * r6.xy;
    r9.xy = (int2)r6.xy;
    r9.zw = float2(0,0);
    r2.z = floatZSampler.Load(r9.xyz).x;
    r4.w = cmp(r2.z >= 0.984375);
    r5.w = 1.01587307 * r2.z;
    r2.z = r2.z * 64 + -63;
    r2.z = r4.w ? r2.z : r5.w;
    r2.z = max(9.99999994e-09, r2.z);
    r2.z = rcp(r2.z);
    r4.w = x2[0].x;
    r4.w = r0.y ? r2.z : r4.w;
    x2[0].x = r4.w;
    r2.z = 0.0419999994 + r2.z;
    r2.z = r6.z * r2.z;
    r2.z = cmp(1 < r2.z);
    r2.z = r2.z ? 1.000000 : 0;
    r2.z = r3.w * r2.z;
    r0.y = r0.y ? r2.z : r3.w;
    x0[0].x = r0.y;
    r0.y = x1[1].x;
    r2.z = x0[1].x;
    r2.w = r2.w * r2.w + -r0.y;
    r0.y = r2.z * r2.w + r0.y;
    r4.xyz = r4.xyz * r0.yyy + r8.xyz;
    r0.y = cmp(r0.w < r0.y);
    r4.xy = renderTargetSize.xy * r4.xy;
    r6.xy = (int2)r4.xy;
    r6.zw = float2(0,0);
    r0.w = floatZSampler.Load(r6.xyz).x;
    r2.w = cmp(r0.w >= 0.984375);
    r3.w = 1.01587307 * r0.w;
    r0.w = r0.w * 64 + -63;
    r0.w = r2.w ? r0.w : r3.w;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r2.w = x2[1].x;
    r2.w = r0.y ? r0.w : r2.w;
    x2[1].x = r2.w;
    r0.w = 0.0419999994 + r0.w;
    r0.w = r4.z * r0.w;
    r0.w = cmp(1 < r0.w);
    r0.w = r0.w ? 1.000000 : 0;
    r0.w = r2.z * r0.w;
    r0.y = r0.y ? r0.w : r2.z;
    x0[1].x = r0.y;
  }
  r0.y = x2[0].x;
  r0.y = r0.y + -r7.z;
  r0.y = cmp(3 < abs(r0.y));
  r0.w = x0[0].x;
  r0.w = -r0.w * 0.5 + 1;
  r0.y = r0.y ? 0.5 : r0.w;
  r0.w = x2[1].x;
  r0.w = r0.w + -r7.z;
  r0.w = cmp(3 < abs(r0.w));
  r2.z = x0[1].x;
  r2.z = 0.5 * r2.z;
  r0.w = r0.w ? -0.5 : -r2.z;
  r0.y = r0.y + r0.w;
  r0.y = saturate(1 + -r0.y);
  r0.w = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = r0.w * r0.y;
  r0.y = min(r16.w, r0.y);
  r0.y = r16.z * r0.y;
  r4.xyz = r0.yyy * r35.xyz;
  r6.xyz = r4.xyz * r37.xyz + r31.xyz;
  r7.xyz = r4.xyz * r38.xyz + r32.xyz;
  r8.xyz = r4.xyz * r39.xyz + r34.xyz;
  r4.xyz = r4.xyz * r40.xyz + r33.xyz;
  r0.y = 1 + -r2.y;
  r0.w = 5 * r0.y;
  r2.z = r0.y * 5 + -2.5;
  r2.z = saturate(0.400000006 * r2.z);
  r2.z = 100 * r2.z;
  r9.xy = -r0.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r2.w = exp2(r9.x);
  r2.w = r2.x * r2.w;
  r2.w = 9.1368103 * r2.w;
  r3.w = r0.w * r0.y;
  r3.w = -r3.w * 2.0159049 + r9.y;
  r3.w = exp2(r3.w);
  r3.w = r3.w * r2.x;
  r3.w = 9.70808983 * r3.w;
  r2.w = max(r3.w, r2.w);
  r2.w = max(1.26815999, r2.w);
  r9.xy = float2(0,0);
  r10.w = 0;
  r12.yz = float2(0,1);
  r13.xy = float2(0,0);
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.x = 1;
  r18.xyzw = float4(0,0,0,0);
  r19.yzw = float3(0,0,0);
  r3.w = 0;
  r4.w = 0;
  while (true) {
    r5.w = cmp((uint)r4.w >= numRefProbes);
    if (r5.w != 0) break;
    r9.z = (uint)r4.w >> 5;
    r10.xyz = (int3)r9.xyz + (int3)r17.xyz;
    r5.w = visibleProbes.Load(r10.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r4.w, l(0), t15.wxyz
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r4.w, l(16), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r4.w, l(32), t15.yxwz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r4.w, l(48), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r4.w, l(64), t15.zwxy
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r4.w, l(80), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.zw, r4.w, l(96), t15.xxxy
  r9.z = samp0[]..swiz;
  r9.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r4.w, l(116), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r4.w, l(132), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r4.w, l(148), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r4.w, l(164), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r4.w, l(180), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r4.w, l(196), t15.xyzw
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xy, r4.w, l(212), t15.xyxx
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
    r10.xyz = v6.xyz + -r20.yzw;
    r6.w = dot(r10.xyz, r10.xyz);
    r6.w = sqrt(r6.w);
    r6.w = cmp(probeDebugRadius >= r6.w);
    r7.w = (int)r26.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r7.w, l(0), t16.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r7.w, l(16), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r7.w, l(32), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r7.w, l(48), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r7.w, l(64), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r7.w, l(80), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
    r8.w = dot(r33.xyz, r10.xyz);
    r8.w = saturate(r8.w + r33.w);
    r12.w = dot(r34.xyz, r10.xyz);
    r12.w = saturate(r12.w + r34.w);
    r8.w = r12.w * r8.w;
    r12.w = dot(r35.xyz, r10.xyz);
    r12.w = saturate(r12.w + r35.w);
    r8.w = r12.w * r8.w;
    r12.w = dot(r36.xyz, r10.xyz);
    r12.w = saturate(r12.w + r36.w);
    r8.w = r12.w * r8.w;
    r12.w = dot(r37.xyz, r10.xyz);
    r12.w = saturate(r12.w + r37.w);
    r8.w = r12.w * r8.w;
    r12.w = dot(r38.xyz, r10.xyz);
    r12.w = saturate(r12.w + r38.w);
    r12.x = r12.w * r8.w;
    r8.w = (int)r9.z & 1;
    r12.xw = r8.ww ? r12.xy : r12.zx;
    r33.xy = r26.zw;
    r33.z = r27.z;
    r8.w = dot(r11.xyz, r33.xyz);
    r13.w = dot(r10.xyz, r33.xyz);
    r13.w = r13.w + -r27.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r2.z);
    r13.w = r14.w ? r13.w : -r13.w;
    r8.w = max(1.00000001e-07, -r8.w);
    r8.w = r13.w / r8.w;
    r8.w = min(131072, abs(r8.w));
    r27.z = r28.z;
    r13.w = dot(r11.xyz, r27.xyz);
    r14.w = dot(r10.xyz, r27.xyz);
    r14.w = r14.w + -r28.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r2.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r8.w = min(abs(r13.w), r8.w);
    r28.z = r29.z;
    r13.w = dot(r11.xyz, r28.xyz);
    r14.w = dot(r10.xyz, r28.xyz);
    r14.w = r14.w + -r29.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r2.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r8.w = min(abs(r13.w), r8.w);
    r29.z = r30.z;
    r13.w = dot(r11.xyz, r29.xyz);
    r14.w = dot(r10.xyz, r29.xyz);
    r14.w = r14.w + -r30.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r2.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r8.w = min(abs(r13.w), r8.w);
    r30.z = r31.x;
    r13.w = dot(r11.xyz, r30.xyz);
    r14.w = dot(r10.xyz, r30.xyz);
    r14.w = r14.w + -r31.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r2.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r8.w = min(abs(r13.w), r8.w);
    r32.zw = r31.zw;
    r13.w = dot(r11.zxy, r32.xzw);
    r14.w = dot(r10.zxy, r32.xzw);
    r14.w = r14.w + -r32.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r2.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r8.w = min(abs(r13.w), r8.w);
    r27.x = r23.w;
    r27.yz = r24.zw;
    r27.xyz = r27.xyz + r10.xyz;
    r27.xyz = r11.xyz * r8.www + r27.xyz;
    r13.w = dot(r27.xyz, r27.xyz);
    r13.w = sqrt(r13.w);
    r8.w = r8.w / r13.w;
    r8.w = r8.w + r8.w;
    r8.w = sqrt(r8.w);
    r8.w = r0.y * 5 + r8.w;
    r8.w = -0.844799995 + r8.w;
    r20.y = r21.z;
    r20.z = r22.x;
    r28.x = dot(r27.xyz, r20.xyz);
    r29.xy = r21.xw;
    r29.z = r22.w;
    r28.y = dot(r27.xyz, r29.xyz);
    r22.x = r21.y;
    r28.z = dot(r27.xyz, r22.xyz);
    if (6 == 0) r16.z = 0; else if (6+25 < 32) {     r16.z = (uint)r26.y << (32-(6 + 25)); r16.z = (uint)r16.z >> (32-6);    } else r16.z = (uint)r26.y >> 25;
    if (9 == 0) r16.w = 0; else if (9+16 < 32) {     r16.w = (uint)r26.y << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);    } else r16.w = (uint)r26.y >> 16;
    r28.w = (uint)r16.w;
    r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r8.w).xyz;
    r26.yzw = (int3)r21.xyz & int3(-2147483648,-2147483648,-2147483648);
    r26.yzw = cmp((int3)r26.yzw == int3(2139095040,2139095040,2139095040));
    r8.w = (int)r26.z | (int)r26.y;
    r8.w = (int)r26.w | (int)r8.w;
    r21.xyz = r8.www ? float3(1,1,0) : r21.xyz;
    r27.x = dot(r10.xyz, r20.xyz);
    r27.y = dot(r10.xyz, r29.xyz);
    r27.z = dot(r10.xyz, r22.xyz);
    r23.xyz = saturate(r27.xyz * r23.xyz + float3(0.5,0.5,0.5));
    r24.z = r25.x;
    r23.xyz = r23.xyz * r24.xyz + r25.yzw;
    r28.x = dot(r1.xyz, r20.xyz);
    r28.y = dot(r1.xyz, r29.xyz);
    r28.z = dot(r1.xyz, r22.xyz);
    r20.xyz = cmp(float3(0,0,0) < r28.xyz);
    r13.z = r20.x ? 0 : 0.5;
    r22.xyz = r23.xyz + r13.xyz;
    r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r14.z = r20.y ? 0 : 0.5;
    r20.xyw = r23.xyz + r14.xyz;
    r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
    r15.z = r20.z ? 0 : 0.5;
    r23.xyz = r23.xyz + r15.xyz;
    r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r24.xyz = r28.xyz * r28.xyz;
    r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
    r26.yzw = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
    r26.yzw = cmp((int3)r26.yzw == int3(2139095040,2139095040,2139095040));
    r8.w = (int)r26.z | (int)r26.y;
    r8.w = (int)r26.w | (int)r8.w;
    r25.xyz = r8.www ? float3(1,1,0) : r25.xyz;
    r27.xyzw = r18.xyzw;
    r26.yzw = r19.yzw;
    r8.w = r3.w;
    r13.z = r5.w;
    while (true) {
      if (r13.z == 0) break;
      r13.w = firstbitlow((uint)r13.z);
      r13.w = 1 << (int)r13.w;
      r14.z = (int)r13.w & (int)r13.z;
      if (r14.z != 0) {
        r13.w = ~(int)r13.w;
        r13.z = (int)r13.w & (int)r13.z;
        if (r6.w != 0) {
          r13.w = r9.z;
          r28.xy = r12.xw;
          r14.z = 1;
          while (true) {
            r14.w = cmp((int)r14.z >= (int)r16.z);
            if (r14.w != 0) break;
            r14.w = (int)r7.w + (int)r14.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r14.w = dot(r29.xyz, r10.xyz);
            r14.w = saturate(r14.w + r29.w);
            r14.w = r28.x * r14.w;
            r15.z = dot(r30.xyz, r10.xyz);
            r15.z = saturate(r15.z + r30.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r31.xyz, r10.xyz);
            r15.z = saturate(r15.z + r31.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r32.xyz, r10.xyz);
            r15.z = saturate(r15.z + r32.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r33.xyz, r10.xyz);
            r15.z = saturate(r15.z + r33.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r34.xyz, r10.xyz);
            r15.z = saturate(r15.z + r34.w);
            r28.x = r15.z * r14.w;
            r15.w = (uint)r13.w >> 2;
            if (1 == 0) r16.w = 0; else if (1+2 < 32) {             r16.w = (uint)r13.w << (32-(1 + 2)); r16.w = (uint)r16.w >> (32-1);            } else r16.w = (uint)r13.w >> 2;
            r17.w = (int)r15.w & 2;
            r20.z = max(r28.y, r28.x);
            r14.w = -r14.w * r15.z + 1;
            r14.w = r28.y * r14.w;
            r16.y = r17.w ? r14.w : r20.z;
            r28.xy = r16.ww ? r28.xy : r16.xy;
            r14.z = (int)r14.z + 1;
            r13.w = r15.w;
          }
          r28.y = saturate(r28.y);
          r13.w = r28.y * r9.w;
          r14.z = cmp(0 < r13.w);
          if (r14.z != 0) {
            r29.z = r28.y * r9.w + r26.w;
            r13.w = r13.w * r26.x;
            r28.xzw = r24.xyz * r13.www;
            r30.xyz = r28.zzz * r20.xyw;
            r30.xyz = r22.xyz * r28.xxx + r30.xyz;
            r28.xzw = r23.xyz * r28.www + r30.xyz;
            r30.xyz = r28.xzw * r25.xyz;
            r14.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r30.xyz = r28.xzw * r25.xyz + r27.xyz;
            r14.w = r14.z * r2.w;
            r28.xzw = r21.xyz * r13.www;
            r13.w = dot(r28.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r13.w = r2.w * r14.z + r13.w;
            r13.w = r14.w / r13.w;
            r31.x = r27.w;
            r31.yz = r26.yz;
            r29.xyw = r28.zwx * r13.www + r31.yzx;
            r30.w = r29.w;
          } else {
            r30.xyzw = r27.xyzw;
            r29.xyz = r26.yzw;
          }
          r8.w = -1;
          r27.xyzw = r30.xyzw;
          r26.yzw = r29.xyz;
          break;
        }
      }
    }
    if (r8.w != 0) {
      r18.xyzw = r27.xyzw;
      r19.yzw = r26.yzw;
      r3.w = -1;
      break;
    }
    r4.w = (int)r4.w + 32;
    r18.xyzw = r27.xyzw;
    r19.yzw = r26.yzw;
    r3.w = r8.w;
  }
  if (r3.w == 0) {
    r3.w = numRefProbes + -numOverrideProbes;
    r4.w = (int)r3.w & -32;
    r5.w = (int)r3.w + (int)-r4.w;
    r6.w = numRefProbes & -32;
    r7.w = (int)-r6.w + numRefProbes;
    r9.xy = float2(0,0);
    r10.w = 0;
    r12.yz = float2(0,1);
    r13.xy = float2(0,0);
    r14.x = 1;
    r15.xy = float2(0,0);
    r16.xy = float2(0,0);
    r20.xyzw = r18.xyzw;
    r21.yzw = r19.yzw;
    r8.w = r4.w;
    while (true) {
      r9.w = cmp((uint)r8.w >= numRefProbes);
      if (r9.w != 0) break;
      r9.z = (uint)r8.w >> 5;
      r10.xyz = (int3)r9.xyz + (int3)r17.xyz;
      r9.z = visibleProbes.Load(r10.xyzw).x;
      r9.w = cmp((int)r4.w == (int)r8.w);
      bitmask.x = ((~(-1 << r5.w)) << 0) & 0xffffffff;  r10.x = (((uint)0 << 0) & bitmask.x) | ((uint)r9.z & ~bitmask.x);
      r9.z = r9.w ? r10.x : r9.z;
      r9.w = cmp((int)r6.w == (int)r8.w);
      if (r7.w == 0) r10.x = 0; else if (r7.w+0 < 32) {       r10.x = (uint)r9.z << (32-(r7.w + 0)); r10.x = (uint)r10.x >> (32-r7.w);      } else r10.x = (uint)r9.z >> 0;
      r9.z = r9.w ? r10.x : r9.z;
      r9.w = (int)r8.w + numLights;
      r22.xyzw = r20.xyzw;
      r23.xyz = r21.yzw;
      r10.x = r9.z;
      while (true) {
        if (r10.x == 0) break;
        r10.y = firstbitlow((uint)r10.x);
        r10.z = 1 << (int)r10.y;
        r12.w = (int)r10.z & (int)r10.x;
        if (r12.w != 0) {
          r10.x = (int)r10.z ^ (int)r10.x;
          r10.z = (int)r9.w + (int)r10.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r10.z, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r10.z, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v6.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r10.z = r24.y ? r24.x : 0;
          r10.z = r24.z ? r10.z : 0;
          if (r10.z != 0) {
            r10.y = (int)r8.w + (int)r10.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.y, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r10.y, l(96), t15.xxxy
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.y, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v6.xyz + -r24.yzw;
            r10.z = (int)r25.w & 0x0000ffff;
            if (6 == 0) r12.w = 0; else if (6+25 < 32) {             r12.w = (uint)r25.w << (32-(6 + 25)); r12.w = (uint)r12.w >> (32-6);            } else r12.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r10.z, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.z, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r10.z, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r10.z, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r10.z, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r10.z, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r13.w = dot(r27.xyz, r26.xyz);
            r13.w = saturate(r13.w + r27.w);
            r15.w = dot(r28.xyz, r26.xyz);
            r15.w = saturate(r15.w + r28.w);
            r13.w = r15.w * r13.w;
            r15.w = dot(r29.xyz, r26.xyz);
            r15.w = saturate(r15.w + r29.w);
            r13.w = r15.w * r13.w;
            r15.w = dot(r30.xyz, r26.xyz);
            r15.w = saturate(r15.w + r30.w);
            r13.w = r15.w * r13.w;
            r15.w = dot(r31.xyz, r26.xyz);
            r15.w = saturate(r15.w + r31.w);
            r13.w = r15.w * r13.w;
            r15.w = dot(r32.xyz, r26.xyz);
            r15.w = saturate(r15.w + r32.w);
            r12.x = r15.w * r13.w;
            r13.w = (int)r14.z & 1;
            r27.xy = r13.ww ? r12.xy : r12.zx;
            r12.x = r14.z;
            r28.xy = r27.xy;
            r13.w = 1;
            while (true) {
              r15.w = cmp((int)r13.w >= (int)r12.w);
              if (r15.w != 0) break;
              r15.w = (int)r10.z + (int)r13.w;
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
              r15.w = dot(r29.xyz, r26.xyz);
              r15.w = saturate(r15.w + r29.w);
              r15.w = r28.x * r15.w;
              r16.w = dot(r30.xyz, r26.xyz);
              r16.w = saturate(r16.w + r30.w);
              r15.w = r16.w * r15.w;
              r16.w = dot(r31.xyz, r26.xyz);
              r16.w = saturate(r16.w + r31.w);
              r15.w = r16.w * r15.w;
              r16.w = dot(r32.xyz, r26.xyz);
              r16.w = saturate(r16.w + r32.w);
              r15.w = r16.w * r15.w;
              r16.w = dot(r33.xyz, r26.xyz);
              r16.w = saturate(r16.w + r33.w);
              r15.w = r16.w * r15.w;
              r16.w = dot(r34.xyz, r26.xyz);
              r16.w = saturate(r16.w + r34.w);
              r28.x = r16.w * r15.w;
              r17.w = (uint)r12.x >> 2;
              if (1 == 0) r24.w = 0; else if (1+2 < 32) {               r24.w = (uint)r12.x << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);              } else r24.w = (uint)r12.x >> 2;
              r26.w = (int)r17.w & 2;
              r27.z = max(r28.y, r28.x);
              r15.w = -r15.w * r16.w + 1;
              r15.w = r28.y * r15.w;
              r14.y = r26.w ? r15.w : r27.z;
              r28.xy = r24.ww ? r28.xy : r14.xy;
              r13.w = (int)r13.w + 1;
              r12.x = r17.w;
            }
            r28.y = saturate(r28.y);
            r10.z = r28.y * r14.w;
            r12.x = cmp(0 < r10.z);
            if (r12.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.y, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.y, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.y, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.y, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.y, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.y, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.y, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.y, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.y, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r10.y, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r10.y, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r23.z = r28.y * r14.w + r23.z;
              r10.y = r10.z * r25.z;
              r25.z = r33.z;
              r10.z = dot(r11.xyz, r25.xyz);
              r12.x = dot(r26.xyz, r25.xyz);
              r12.x = r12.x + -r33.w;
              r12.w = cmp(r12.x >= 0);
              r12.x = max(abs(r12.x), r2.z);
              r12.x = r12.w ? r12.x : -r12.x;
              r10.z = max(1.00000001e-07, -r10.z);
              r10.z = r12.x / r10.z;
              r10.z = min(131072, abs(r10.z));
              r33.z = r34.z;
              r12.x = dot(r11.xyz, r33.xyz);
              r12.w = dot(r26.xyz, r33.xyz);
              r12.w = r12.w + -r34.w;
              r13.w = cmp(r12.w >= 0);
              r12.w = max(abs(r12.w), r2.z);
              r12.w = r13.w ? r12.w : -r12.w;
              r12.x = max(1.00000001e-07, -r12.x);
              r12.x = r12.w / r12.x;
              r10.z = min(abs(r12.x), r10.z);
              r34.z = r35.z;
              r12.x = dot(r11.xyz, r34.xyz);
              r12.w = dot(r26.xyz, r34.xyz);
              r12.w = r12.w + -r35.w;
              r13.w = cmp(r12.w >= 0);
              r12.w = max(abs(r12.w), r2.z);
              r12.w = r13.w ? r12.w : -r12.w;
              r12.x = max(1.00000001e-07, -r12.x);
              r12.x = r12.w / r12.x;
              r10.z = min(abs(r12.x), r10.z);
              r35.z = r36.z;
              r12.x = dot(r11.xyz, r35.xyz);
              r12.w = dot(r26.xyz, r35.xyz);
              r12.w = r12.w + -r36.w;
              r13.w = cmp(r12.w >= 0);
              r12.w = max(abs(r12.w), r2.z);
              r12.w = r13.w ? r12.w : -r12.w;
              r12.x = max(1.00000001e-07, -r12.x);
              r12.x = r12.w / r12.x;
              r10.z = min(abs(r12.x), r10.z);
              r36.z = r37.x;
              r12.x = dot(r11.xyz, r36.xyz);
              r12.w = dot(r26.xyz, r36.xyz);
              r12.w = r12.w + -r37.y;
              r13.w = cmp(r12.w >= 0);
              r12.w = max(abs(r12.w), r2.z);
              r12.w = r13.w ? r12.w : -r12.w;
              r12.x = max(1.00000001e-07, -r12.x);
              r12.x = r12.w / r12.x;
              r10.z = min(abs(r12.x), r10.z);
              r38.zw = r37.zw;
              r12.x = dot(r11.zxy, r38.xzw);
              r12.w = dot(r26.zxy, r38.xzw);
              r12.w = r12.w + -r38.y;
              r13.w = cmp(r12.w >= 0);
              r12.w = max(abs(r12.w), r2.z);
              r12.w = r13.w ? r12.w : -r12.w;
              r12.x = max(1.00000001e-07, -r12.x);
              r12.x = r12.w / r12.x;
              r10.z = min(abs(r12.x), r10.z);
              r25.x = r30.w;
              r25.yz = r31.zw;
              r14.yzw = r25.xyz + r26.xyz;
              r14.yzw = r11.xyz * r10.zzz + r14.yzw;
              r12.x = dot(r14.yzw, r14.yzw);
              r12.x = sqrt(r12.x);
              r10.z = r10.z / r12.x;
              r10.z = r10.z + r10.z;
              r10.z = sqrt(r10.z);
              r10.z = r0.y * 5 + r10.z;
              r10.z = -0.844799995 + r10.z;
              r24.y = r27.z;
              r24.z = r29.x;
              r33.x = dot(r14.yzw, r24.xyz);
              r25.xy = r27.xw;
              r25.z = r29.w;
              r33.y = dot(r14.yzw, r25.xyz);
              r29.x = r27.y;
              r33.z = dot(r14.yzw, r29.xyz);
              if (9 == 0) r12.x = 0; else if (9+16 < 32) {               r12.x = (uint)r25.w << (32-(9 + 16)); r12.x = (uint)r12.x >> (32-9);              } else r12.x = (uint)r25.w >> 16;
              r33.w = (uint)r12.x;
              r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r10.z).xyz;
              r27.xyz = (int3)r14.yzw & int3(-2147483648,-2147483648,-2147483648);
              r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
              r10.z = (int)r27.y | (int)r27.x;
              r10.z = (int)r27.z | (int)r10.z;
              r14.yzw = r10.zzz ? float3(1,1,0) : r14.yzw;
              r27.x = dot(r26.xyz, r24.xyz);
              r27.y = dot(r26.xyz, r25.xyz);
              r27.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r27.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r1.xyz, r24.xyz);
              r33.y = dot(r1.xyz, r25.xyz);
              r33.z = dot(r1.xyz, r29.xyz);
              r24.xyz = cmp(float3(0,0,0) < r33.xyz);
              r13.z = r24.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r13.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xyz = r33.xyz * r33.xyz;
              r27.xyz = r27.xyz * r10.yyy;
              r15.z = r24.y ? 0 : 0.5;
              r24.xyw = r26.xyz + r15.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r27.yyy;
              r24.xyw = r25.xyz * r27.xxx + r24.xyw;
              r16.z = r24.z ? 0 : 0.5;
              r25.xyz = r26.xyz + r16.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = r25.xyz * r27.zzz + r24.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
              r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
              r10.z = (int)r26.y | (int)r26.x;
              r10.z = (int)r26.z | (int)r10.z;
              r25.xyz = r10.zzz ? float3(1,1,0) : r25.xyz;
              r26.xyz = r25.xyz * r24.xyz;
              r10.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r22.xyz = r24.xyz * r25.xyz + r22.xyz;
              r12.x = r10.z * r2.w;
              r14.yzw = r14.yzw * r10.yyy;
              r10.y = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r10.y = r2.w * r10.z + r10.y;
              r10.y = r12.x / r10.y;
              r24.x = r22.w;
              r24.yz = r23.xy;
              r23.xyw = r14.zwy * r10.yyy + r24.yzx;
              r22.w = r23.w;
            }
          }
        }
      }
      r20.xyzw = r22.xyzw;
      r21.yzw = r23.xyz;
      r8.w = (int)r8.w + 32;
    }
    r6.w = cmp(r21.w < 1);
    if (r6.w != 0) {
      r9.xy = float2(0,0);
      r10.w = 0;
      r12.yz = float2(0,1);
      r13.xy = float2(0,0);
      r14.x = 1;
      r15.xy = float2(0,0);
      r16.xy = float2(0,0);
      r22.x = r20.w;
      r22.yzw = r21.yzw;
      r23.xyz = r20.xyz;
      r6.w = r21.w;
      r7.w = 0;
      while (true) {
        r8.w = cmp((uint)r7.w >= (uint)r3.w);
        if (r8.w != 0) break;
        r9.z = (uint)r7.w >> 5;
        r10.xyz = (int3)r9.xyz + (int3)r17.xyz;
        r8.w = visibleProbes.Load(r10.xyzw).x;
        r9.z = cmp((int)r4.w == (int)r7.w);
        if (r5.w == 0) r9.w = 0; else if (r5.w+0 < 32) {         r9.w = (uint)r8.w << (32-(r5.w + 0)); r9.w = (uint)r9.w >> (32-r5.w);        } else r9.w = (uint)r8.w >> 0;
        r8.w = r9.z ? r9.w : r8.w;
        r9.z = (int)r7.w + numLights;
        r24.xyzw = r22.xyzw;
        r10.xyz = r23.xyz;
        r9.w = r6.w;
        r12.w = r8.w;
        while (true) {
          if (r12.w == 0) break;
          r13.w = firstbitlow((uint)r12.w);
          r14.z = 1 << (int)r13.w;
          r14.w = (int)r12.w & (int)r14.z;
          if (r14.w != 0) {
            r12.w = (int)r12.w ^ (int)r14.z;
            r14.z = (int)r9.z + (int)r13.w;
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
            r25.xyz = -v6.xyz + r25.xyz;
            r26.z = r25.w;
            r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
            r14.z = r25.y ? r25.x : 0;
            r14.z = r25.z ? r14.z : 0;
            if (r14.z != 0) {
              r13.w = (int)r7.w + (int)r13.w;
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
              r27.xyz = v6.xyz + -r25.yzw;
              r15.w = (int)r26.w & 0x0000ffff;
              if (6 == 0) r16.w = 0; else if (6+25 < 32) {               r16.w = (uint)r26.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);              } else r16.w = (uint)r26.w >> 25;
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
              r17.w = dot(r28.xyz, r27.xyz);
              r17.w = saturate(r17.w + r28.w);
              r19.w = dot(r29.xyz, r27.xyz);
              r19.w = saturate(r19.w + r29.w);
              r17.w = r19.w * r17.w;
              r19.w = dot(r30.xyz, r27.xyz);
              r19.w = saturate(r19.w + r30.w);
              r17.w = r19.w * r17.w;
              r19.w = dot(r31.xyz, r27.xyz);
              r19.w = saturate(r19.w + r31.w);
              r17.w = r19.w * r17.w;
              r19.w = dot(r32.xyz, r27.xyz);
              r19.w = saturate(r19.w + r32.w);
              r17.w = r19.w * r17.w;
              r19.w = dot(r33.xyz, r27.xyz);
              r19.w = saturate(r19.w + r33.w);
              r12.x = r19.w * r17.w;
              r17.w = (int)r14.z & 1;
              r28.xy = r17.ww ? r12.xy : r12.zx;
              r12.x = r14.z;
              r29.xy = r28.xy;
              r17.w = 1;
              while (true) {
                r19.w = cmp((int)r17.w >= (int)r16.w);
                if (r19.w != 0) break;
                r19.w = (int)r15.w + (int)r17.w;
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
                r19.w = dot(r30.xyz, r27.xyz);
                r19.w = saturate(r19.w + r30.w);
                r19.w = r29.x * r19.w;
                r23.w = dot(r31.xyz, r27.xyz);
                r23.w = saturate(r23.w + r31.w);
                r19.w = r23.w * r19.w;
                r23.w = dot(r32.xyz, r27.xyz);
                r23.w = saturate(r23.w + r32.w);
                r19.w = r23.w * r19.w;
                r23.w = dot(r33.xyz, r27.xyz);
                r23.w = saturate(r23.w + r33.w);
                r19.w = r23.w * r19.w;
                r23.w = dot(r34.xyz, r27.xyz);
                r23.w = saturate(r23.w + r34.w);
                r19.w = r23.w * r19.w;
                r23.w = dot(r35.xyz, r27.xyz);
                r23.w = saturate(r23.w + r35.w);
                r29.x = r23.w * r19.w;
                r25.w = (uint)r12.x >> 2;
                if (1 == 0) r27.w = 0; else if (1+2 < 32) {                 r27.w = (uint)r12.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);                } else r27.w = (uint)r12.x >> 2;
                r28.z = (int)r25.w & 2;
                r28.w = max(r29.y, r29.x);
                r19.w = -r19.w * r23.w + 1;
                r19.w = r29.y * r19.w;
                r14.y = r28.z ? r19.w : r28.w;
                r29.xy = r27.ww ? r29.xy : r14.xy;
                r17.w = (int)r17.w + 1;
                r12.x = r25.w;
              }
              r12.x = saturate(r29.y + -r9.w);
              r14.y = r12.x * r14.w;
              r14.z = cmp(0 < r14.y);
              if (r14.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(16), t15.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
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
                r24.w = r12.x * r14.w + r24.w;
                r12.x = r14.y * r26.z;
                r26.z = r34.z;
                r13.w = dot(r11.xyz, r26.xyz);
                r14.y = dot(r27.xyz, r26.xyz);
                r14.y = r14.y + -r34.w;
                r14.z = cmp(r14.y >= 0);
                r14.y = max(abs(r14.y), r2.z);
                r14.y = r14.z ? r14.y : -r14.y;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.y / r13.w;
                r13.w = min(131072, abs(r13.w));
                r34.z = r35.z;
                r14.y = dot(r11.xyz, r34.xyz);
                r14.z = dot(r27.xyz, r34.xyz);
                r14.z = r14.z + -r35.w;
                r14.w = cmp(r14.z >= 0);
                r14.z = max(abs(r14.z), r2.z);
                r14.z = r14.w ? r14.z : -r14.z;
                r14.y = max(1.00000001e-07, -r14.y);
                r14.y = r14.z / r14.y;
                r13.w = min(abs(r14.y), r13.w);
                r35.z = r36.z;
                r14.y = dot(r11.xyz, r35.xyz);
                r14.z = dot(r27.xyz, r35.xyz);
                r14.z = r14.z + -r36.w;
                r14.w = cmp(r14.z >= 0);
                r14.z = max(abs(r14.z), r2.z);
                r14.z = r14.w ? r14.z : -r14.z;
                r14.y = max(1.00000001e-07, -r14.y);
                r14.y = r14.z / r14.y;
                r13.w = min(abs(r14.y), r13.w);
                r36.z = r37.z;
                r14.y = dot(r11.xyz, r36.xyz);
                r14.z = dot(r27.xyz, r36.xyz);
                r14.z = r14.z + -r37.w;
                r14.w = cmp(r14.z >= 0);
                r14.z = max(abs(r14.z), r2.z);
                r14.z = r14.w ? r14.z : -r14.z;
                r14.y = max(1.00000001e-07, -r14.y);
                r14.y = r14.z / r14.y;
                r13.w = min(abs(r14.y), r13.w);
                r37.z = r38.x;
                r14.y = dot(r11.xyz, r37.xyz);
                r14.z = dot(r27.xyz, r37.xyz);
                r14.z = r14.z + -r38.y;
                r14.w = cmp(r14.z >= 0);
                r14.z = max(abs(r14.z), r2.z);
                r14.z = r14.w ? r14.z : -r14.z;
                r14.y = max(1.00000001e-07, -r14.y);
                r14.y = r14.z / r14.y;
                r13.w = min(abs(r14.y), r13.w);
                r39.zw = r38.zw;
                r14.y = dot(r11.zxy, r39.xzw);
                r14.z = dot(r27.zxy, r39.xzw);
                r14.z = r14.z + -r39.y;
                r14.w = cmp(r14.z >= 0);
                r14.z = max(abs(r14.z), r2.z);
                r14.z = r14.w ? r14.z : -r14.z;
                r14.y = max(1.00000001e-07, -r14.y);
                r14.y = r14.z / r14.y;
                r13.w = min(abs(r14.y), r13.w);
                r26.x = r31.w;
                r26.yz = r32.zw;
                r14.yzw = r26.xyz + r27.xyz;
                r14.yzw = r11.xyz * r13.www + r14.yzw;
                r15.w = dot(r14.yzw, r14.yzw);
                r15.w = sqrt(r15.w);
                r13.w = r13.w / r15.w;
                r13.w = r13.w + r13.w;
                r13.w = sqrt(r13.w);
                r13.w = r0.y * 5 + r13.w;
                r13.w = -0.844799995 + r13.w;
                r25.y = r28.z;
                r25.z = r30.x;
                r34.x = dot(r14.yzw, r25.xyz);
                r26.xy = r28.xw;
                r26.z = r30.w;
                r34.y = dot(r14.yzw, r26.xyz);
                r30.x = r28.y;
                r34.z = dot(r14.yzw, r30.xyz);
                if (9 == 0) r14.y = 0; else if (9+16 < 32) {                 r14.y = (uint)r26.w << (32-(9 + 16)); r14.y = (uint)r14.y >> (32-9);                } else r14.y = (uint)r26.w >> 16;
                r34.w = (uint)r14.y;
                r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r13.w).xyz;
                r28.xyz = (int3)r14.yzw & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r13.w = (int)r28.y | (int)r28.x;
                r13.w = (int)r28.z | (int)r13.w;
                r14.yzw = r13.www ? float3(1,1,0) : r14.yzw;
                r28.x = dot(r27.xyz, r25.xyz);
                r28.y = dot(r27.xyz, r26.xyz);
                r28.z = dot(r27.xyz, r30.xyz);
                r27.xyz = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
                r32.z = r33.x;
                r27.xyz = r27.xyz * r32.xyz + r33.yzw;
                r34.x = dot(r1.xyz, r25.xyz);
                r34.y = dot(r1.xyz, r26.xyz);
                r34.z = dot(r1.xyz, r30.xyz);
                r25.xyz = cmp(float3(0,0,0) < r34.xyz);
                r13.z = r25.x ? 0 : 0.5;
                r26.xyz = r27.xyz + r13.xyz;
                r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r28.xyz = r34.xyz * r34.xyz;
                r28.xyz = r28.xyz * r12.xxx;
                r15.z = r25.y ? 0 : 0.5;
                r25.xyw = r27.xyz + r15.xyz;
                r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
                r25.xyw = r25.xyw * r28.yyy;
                r25.xyw = r26.xyz * r28.xxx + r25.xyw;
                r16.z = r25.z ? 0 : 0.5;
                r26.xyz = r27.xyz + r16.xyz;
                r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r25.xyz = r26.xyz * r28.zzz + r25.xyw;
                r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
                r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
                r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
                r13.z = (int)r27.y | (int)r27.x;
                r13.z = (int)r27.z | (int)r13.z;
                r26.xyz = r13.zzz ? float3(1,1,0) : r26.xyz;
                r27.xyz = r26.xyz * r25.xyz;
                r13.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r10.xyz = r25.xyz * r26.xyz + r10.xyz;
                r13.w = r13.z * r2.w;
                r14.yzw = r14.yzw * r12.xxx;
                r12.x = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r12.x = r2.w * r13.z + r12.x;
                r12.x = r13.w / r12.x;
                r24.xyz = r14.yzw * r12.xxx + r24.xyz;
              }
            }
          }
        }
        r22.xyzw = r24.xyzw;
        r23.xyz = r10.xyz;
        r7.w = (int)r7.w + 32;
      }
      r21.xyzw = r22.zxyw;
      r20.xyz = r23.xyz;
      r21.xyzw = r21.yzxw;
    } else {
      r21.x = r20.w;
    }
    r0.y = max(1, r21.w);
    r0.y = rcp(r0.y);
    r21.w = saturate(r21.w);
    r18.xyz = r20.xyz * r0.yyy;
    r19.xyz = r21.xyz * r0.yyy;
    r2.z = cmp(r21.w < 0.99000001);
    if (r2.z != 0) {
      r2.z = 1 + -r21.w;
      r2.w = sunConstants.globalProbeExposure * r2.z;
      r9.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r10.x = globalProbeConstants.data[0].w * r9.x;
      r10.yz = globalProbeConstants.data[1].xy * r9.yz;
      r9.xyz = saturate(float3(0.5,0.5,0.5) + r10.xyz);
      r10.xy = globalProbeConstants.data[1].zw * r9.xy;
      r10.z = globalProbeConstants.data[2].x * r9.z;
      r9.xyz = globalProbeConstants.data[2].yzw + r10.xyz;
      r10.xyz = cmp(float3(0,0,0) < r1.xyz);
      r10.xyz = r10.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r10.w = 0;
      r12.xyz = r10.wwx + r9.xyz;
      r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
      r13.xyz = r1.xyz * r1.xyz;
      r13.xyz = r13.xyz * r2.www;
      r14.xyz = r10.wwy + r9.xyz;
      r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r14.xyz = r14.xyz * r13.yyy;
      r12.xyz = r12.xyz * r13.xxx + r14.xyz;
      r9.xyz = r10.wwz + r9.xyz;
      r9.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
      r9.xyz = r9.xyz * r13.zzz + r12.xyz;
      r1.w = 0;
      r1.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
      r1.xyz = r9.xyz * r1.xyz;
      r1.w = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r18.xyz = r20.xyz * r0.yyy + r1.xyz;
      r11.w = 0;
      r1.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r0.w).xyz;
      r0.y = sunConstants.globalProbeExposure * r2.z + -r1.w;
      r0.y = r2.y * r0.y + r1.w;
      r19.xyz = r1.xyz * r0.yyy + r19.xyz;
    }
  } else {
    r19.x = r18.w;
  }
  r1.xyz = r18.xyz * r5.xyz + r6.xyz;
  r5.xyz = r18.xyz * r5.xyz + r7.xyz;
  r0.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r0.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r0.yw, 0).xy;
  r2.xyz = r19.xyz * r0.yyy + r4.xyz;
  r4.xyz = r19.xyz * r0.www + r8.xyz;
  r1.xyz = r5.xyz * r3.xyz + r1.xyz;
  r2.xyz = float3(0.972000003,0.972000003,0.972000003) * r2.xyz;
  r2.xyz = r4.xyz * float3(0.0280000009,0.0280000009,0.0280000009) + r2.xyz;
  r0.y = saturate(0.0399999991 + r0.z);
  r3.xyz = r2.xyz * r0.yyy;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r1.w = dot(v6.xyz, v6.xyz);
    r1.w = sqrt(r1.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r4.xy = r1.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.zw = r5.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r2.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xzw;
    } else {
      r1.w = r1.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.w;
      r1.w = r2.w ? r3.w : r1.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r4.xyz = r4.xyz * r1.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v6.z;
    r2.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r3.w = cmp(abs(r1.w) < 9.99999975e-05);
    r4.w = min(64, r2.w);
    r4.w = 1.44269502 * r4.w;
    r4.w = exp2(r4.w);
    r5.x = saturate(fogConstants.K0b);
    r5.y = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r5.y ? r4.w : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r1.w = r3.w ? 1 : r1.w;
    r1.w = r2.w / r1.w;
    r1.w = r3.w ? r5.x : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r2.w = dot(v6.xyz, v6.xyz);
    r3.w = sqrt(r2.w);
    r1.w = r1.w * r3.w + fogConstants.expAdd;
    r1.w = exp2(r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r2.w = rsqrt(r2.w);
    r5.xyz = v6.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r5.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.w = -fogConstants.sunFogColor.w + fogConstants.fogColor.w;
    r2.w = r2.w * r3.w + fogConstants.sunFogColor.w;
    r1.w = r2.w * r1.w;
    r4.xyz = r1.www * -r1.xyz + r1.xyz;
  }
  r1.xyz = relHDRExposure.yyy * r4.xyz;
  r4.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r4.xyz ? r1.xyz : 0;
  o1.xyz = min(float3(65024,65024,64512), r1.xyz);
  if (r0.w != 0) {
    r0.w = dot(v6.xyz, v6.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v6.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r4.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r1.w = cmp(0.00999999978 < abs(v6.z));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.zw = r5.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r1.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.w;
      r1.w = r2.w ? r3.w : r1.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
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
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r1.xyz = r5.xyz * r1.xyz;
    r1.xyz = r3.xyz * r4.xyz + r1.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v6.z;
    r1.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r2.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.w = min(64, r1.w);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.K0b);
    r4.y = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r4.y ? r3.w : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r2.w ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.w ? r4.x : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(v6.xyz, v6.xyz);
    r2.w = sqrt(r1.w);
    r0.w = r0.w * r2.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r4.xyz = v6.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r1.wwww * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r4.w * r0.w;
    r2.xyz = -r2.xyz * r0.yyy + r4.xyz;
    r1.xyz = r0.www * r2.xyz + r3.xyz;
  }
  r1.xyz = relHDRExposure.yyy * r1.xyz;
  r2.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r2.xyz ? r1.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r1.xyz);
  r0.x = 1 + -r0.x;
  o2.w = r0.z * r0.x;
  return;
}