// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:34 2021

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
  bool useUVOffsets : packoffset(c11.z);
  float2 sparkleTile : packoffset(c12);
  float3 backlightScatterColor : packoffset(c13);
  float3 specColorTint : packoffset(c14);
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
SamplerState sparkleDataSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
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
Texture2D<float4> normalMap : register(t21);
Texture2D<float4> glossMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> aoMap : register(t24);
Texture2D<float4> thicknessMap : register(t25);
Texture2D<float4> sparkleDataMap : register(t26);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float3 v2 : UVOFFSETS0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = v1.x * r0.w;
  r1.y = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.z = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.w = glossRange.y + -glossRange.x;
  r1.z = r1.z * r1.w + glossRange.x;
  r1.z = saturate(0.0588235296 * r1.z);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.x = v7.x ? 1 : -1;
  r3.y = dot(v3.xyz, v3.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v3.xyz * r3.yyy;
  r3.yzw = r3.yzw * r3.xxx;
  r4.x = dot(v4.xyz, v4.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v4.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.xxx;
  r4.w = dot(v5.xyz, v5.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v5.xyz * r4.www;
  r5.xyz = r5.xyz * r3.xxx;
  r1.z = -17 * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.z + r1.z;
  r1.z = log2(r1.z);
  r1.z = -0.0588235296 * r1.z;
  r5.xyz = r5.xyz * r2.yyy;
  r4.xyz = r4.xyz * r2.xxx + r5.xyz;
  r2.xyw = r3.yzw * r2.www + r4.xyz;
  r3.x = dot(r2.xyw, r2.xyw);
  r3.x = rsqrt(r3.x);
  r2.xyw = r3.xxx * r2.xyw;
  r1.w = debugGlossOverride.x * r1.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.zw = max(float2(0,0), r1.zw);
  r2.z = cmp(0 < debugStreamerControl.w);
  if (r2.z != 0) {
    r2.z = (int)debugStreamerControl.w;
    r3.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r3.y = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r3.x = cmp(r3.x < r3.y);
    r3.y = cmp(0 < r3.y);
    r4.xyz = (int3)r2.zzz & int3(1,2,4);
    r5.xyz = r4.xxx ? float3(1,0,1) : r0.xyz;
    r4.xyw = r4.yyy ? float3(0,1,1) : r0.xyz;
    r3.yzw = r3.yyy ? r5.xyz : r4.xyw;
    r4.xyz = r4.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r3.xxx ? r3.yzw : r4.xyz;
  }
  r3.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r3.xyz + r0.xyz;
  r0.w = -r0.w * v1.x + debugAlphaOverride.x;
  o0.w = debugAlphaOverride.w * r0.w + r1.x;
  r0.w = r1.w + -r1.z;
  r3.y = debugGlossOverride.w * r0.w + r1.z;
  r0.w = debugOcclusionOverride.x + -r1.y;
  r0.w = debugOcclusionOverride.w * r0.w + r1.y;
  r1.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www + -r2.xyw;
  r1.xyz = debugNormalOverride.www * r1.xyz + r2.xyw;
  r2.x = thicknessMap.Sample(colorSampler_s, w1.xy).x;
  r2.yzw = backlightScatterColor.xyz * r0.xyz;
  r2.x = 1 + -r2.x;
  r2.xyz = r2.yzw * r2.xxx;
  r3.zw = sparkleTile.xy * w1.xy;
  r3.zw = sparkleDataMap.Sample(sparkleDataSampler_s, r3.zw).xy;
  r4.xy = (uint2)v0.xy;
  r2.w = cmp(v0.z >= 0.984375);
  r4.z = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r2.w = r2.w ? r4.w : r4.z;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r4.z = dot(-v6.xyz, -v6.xyz);
  r4.z = rsqrt(r4.z);
  r5.xyz = -v6.xyz * r4.zzz;
  r4.w = cmp(isDepthHack != 0);
  r6.xy = (uint2)r4.yx;
  r5.w = dot(r6.yx, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r7.x, r8.x);
  r5.w = dot(r6.xy, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r6.x, r9.x);
  r5.w = dot(r1.xyz, r5.xyz);
  r3.x = saturate(r5.w);
  r6.y = dot(-r5.xyz, r1.xyz);
  r6.y = r6.y + r6.y;
  r10.xyz = r1.xyz * -r6.yyy + -r5.xyz;
  r6.y = 17 * r3.y;
  r6.y = exp2(r6.y);
  r6.y = 2 + r6.y;
  r6.y = 2 / r6.y;
  r6.z = sqrt(r6.y);
  r6.w = 1 + -r3.y;
  r7.y = 5 * r6.w;
  r7.z = r6.w * 5 + -2.5;
  r7.z = saturate(0.400000006 * r7.z);
  r7.z = 100 * r7.z;
  r9.yz = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r9.y);
  r7.w = r7.w * r3.x;
  r7.w = 9.1368103 * r7.w;
  r8.w = r7.y * r6.w;
  r8.w = -r8.w * 2.0159049 + r9.z;
  r8.w = exp2(r8.w);
  r8.w = r8.w * r3.x;
  r8.w = 9.70808983 * r8.w;
  r7.w = max(r8.w, r7.w);
  r7.w = max(1.26815999, r7.w);
  r2.w = 0.0078125 * r2.w;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r11.xy = (uint2)r4.xy >> int2(6,6);
  r11.z = (uint)r2.w << 4;
  r12.xy = float2(0,0);
  r13.w = 0;
  r14.yz = float2(0,1);
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xz = float2(1,1);
  r19.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r2.w = 0;
  r4.x = 0;
  while (true) {
    r4.y = cmp((uint)r4.x >= numRefProbes);
    if (r4.y != 0) break;
    r12.z = (uint)r4.x >> 5;
    r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
    r4.y = visibleProbes.Load(r13.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r4.x, l(0), t15.wxyz
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r4.x, l(16), t15.xyzw
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r4.x, l(32), t15.yxwz
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r4.x, l(48), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r4.x, l(64), t15.zwxy
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r4.x, l(80), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.yz, r4.x, l(96), t15.xxyx
  r9.y = samp0[]..swiz;
  r9.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r4.x, l(116), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r4.x, l(132), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r4.x, l(148), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r4.x, l(164), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r4.x, l(180), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r4.x, l(196), t15.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xy, r4.x, l(212), t15.xyxx
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
    r13.xyz = v6.xyz + -r21.yzw;
    r8.w = dot(r13.xyz, r13.xyz);
    r8.w = sqrt(r8.w);
    r8.w = cmp(probeDebugRadius >= r8.w);
    r9.w = (int)r27.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(0), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(16), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(32), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(48), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(64), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(80), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
    r11.w = dot(r34.xyz, r13.xyz);
    r11.w = saturate(r11.w + r34.w);
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
    r11.w = r12.z * r11.w;
    r12.z = dot(r39.xyz, r13.xyz);
    r12.z = saturate(r12.z + r39.w);
    r14.x = r12.z * r11.w;
    r11.w = (int)r9.y & 1;
    r12.zw = r11.ww ? r14.xy : r14.zx;
    r34.xy = r27.zw;
    r34.z = r28.z;
    r11.w = dot(r10.xyz, r34.xyz);
    r14.x = dot(r13.xyz, r34.xyz);
    r14.x = r14.x + -r28.w;
    r14.w = cmp(r14.x >= 0);
    r14.x = max(abs(r14.x), r7.z);
    r14.x = r14.w ? r14.x : -r14.x;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r14.x / r11.w;
    r11.w = min(131072, abs(r11.w));
    r28.z = r29.z;
    r14.x = dot(r10.xyz, r28.xyz);
    r14.w = dot(r13.xyz, r28.xyz);
    r14.w = r14.w + -r29.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r29.z = r30.z;
    r14.x = dot(r10.xyz, r29.xyz);
    r14.w = dot(r13.xyz, r29.xyz);
    r14.w = r14.w + -r30.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r30.z = r31.z;
    r14.x = dot(r10.xyz, r30.xyz);
    r14.w = dot(r13.xyz, r30.xyz);
    r14.w = r14.w + -r31.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r31.z = r32.x;
    r14.x = dot(r10.xyz, r31.xyz);
    r14.w = dot(r13.xyz, r31.xyz);
    r14.w = r14.w + -r32.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r33.zw = r32.zw;
    r14.x = dot(r10.zxy, r33.xzw);
    r14.w = dot(r13.zxy, r33.xzw);
    r14.w = r14.w + -r33.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r14.x = max(1.00000001e-07, -r14.x);
    r14.x = r14.w / r14.x;
    r11.w = min(abs(r14.x), r11.w);
    r28.x = r24.w;
    r28.yz = r25.zw;
    r28.xyz = r28.xyz + r13.xyz;
    r28.xyz = r10.xyz * r11.www + r28.xyz;
    r14.x = dot(r28.xyz, r28.xyz);
    r14.x = sqrt(r14.x);
    r11.w = r11.w / r14.x;
    r11.w = r11.w + r11.w;
    r11.w = sqrt(r11.w);
    r11.w = r6.w * 5 + r11.w;
    r11.w = -0.844799995 + r11.w;
    r21.y = r22.z;
    r21.z = r23.x;
    r29.x = dot(r28.xyz, r21.xyz);
    r30.xy = r22.xw;
    r30.z = r23.w;
    r29.y = dot(r28.xyz, r30.xyz);
    r23.x = r22.y;
    r29.z = dot(r28.xyz, r23.xyz);
    if (6 == 0) r14.x = 0; else if (6+25 < 32) {     r14.x = (uint)r27.y << (32-(6 + 25)); r14.x = (uint)r14.x >> (32-6);    } else r14.x = (uint)r27.y >> 25;
    if (9 == 0) r14.w = 0; else if (9+16 < 32) {     r14.w = (uint)r27.y << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);    } else r14.w = (uint)r27.y >> 16;
    r29.w = (uint)r14.w;
    r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r11.w).xyz;
    r27.yzw = (int3)r22.xyz & int3(-2147483648,-2147483648,-2147483648);
    r27.yzw = cmp((int3)r27.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r27.z | (int)r27.y;
    r11.w = (int)r27.w | (int)r11.w;
    r22.xyz = r11.www ? float3(1,1,0) : r22.xyz;
    r28.x = dot(r13.xyz, r21.xyz);
    r28.y = dot(r13.xyz, r30.xyz);
    r28.z = dot(r13.xyz, r23.xyz);
    r24.xyz = saturate(r28.xyz * r24.xyz + float3(0.5,0.5,0.5));
    r25.z = r26.x;
    r24.xyz = r24.xyz * r25.xyz + r26.yzw;
    r29.x = dot(r1.xyz, r21.xyz);
    r29.y = dot(r1.xyz, r30.xyz);
    r29.z = dot(r1.xyz, r23.xyz);
    r21.xyz = cmp(float3(0,0,0) < r29.xyz);
    r15.z = r21.x ? 0 : 0.5;
    r23.xyz = r24.xyz + r15.xyz;
    r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r16.z = r21.y ? 0 : 0.5;
    r21.xyw = r24.xyz + r16.xyz;
    r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
    r17.z = r21.z ? 0 : 0.5;
    r24.xyz = r24.xyz + r17.xyz;
    r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r25.xyz = r29.xyz * r29.xyz;
    r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
    r27.yzw = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
    r27.yzw = cmp((int3)r27.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r27.z | (int)r27.y;
    r11.w = (int)r27.w | (int)r11.w;
    r26.xyz = r11.www ? float3(1,1,0) : r26.xyz;
    r28.xyzw = r19.xyzw;
    r27.yzw = r20.yzw;
    r11.w = r2.w;
    r14.w = r4.y;
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
          r29.xy = r12.zw;
          r15.w = 1;
          while (true) {
            r16.z = cmp((int)r15.w >= (int)r14.x);
            if (r16.z != 0) break;
            r16.z = (int)r9.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.z, l(0), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.z, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r16.z = dot(r30.xyz, r13.xyz);
            r16.z = saturate(r16.z + r30.w);
            r16.z = r29.x * r16.z;
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
            r16.z = r16.z * r16.w;
            r16.w = dot(r35.xyz, r13.xyz);
            r16.w = saturate(r16.w + r35.w);
            r29.x = r16.z * r16.w;
            r17.z = (uint)r15.z >> 2;
            if (1 == 0) r17.w = 0; else if (1+2 < 32) {             r17.w = (uint)r15.z << (32-(1 + 2)); r17.w = (uint)r17.w >> (32-1);            } else r17.w = (uint)r15.z >> 2;
            r21.z = (int)r17.z & 2;
            r22.w = max(r29.y, r29.x);
            r16.z = -r16.z * r16.w + 1;
            r16.z = r29.y * r16.z;
            r18.y = r21.z ? r16.z : r22.w;
            r29.xy = r17.ww ? r29.xy : r18.xy;
            r15.w = (int)r15.w + 1;
            r15.z = r17.z;
          }
          r29.y = saturate(r29.y);
          r15.z = r29.y * r9.z;
          r15.w = cmp(0 < r15.z);
          if (r15.w != 0) {
            r30.z = r29.y * r9.z + r27.w;
            r15.z = r15.z * r27.x;
            r29.xzw = r25.xyz * r15.zzz;
            r31.xyz = r29.zzz * r21.xyw;
            r31.xyz = r23.xyz * r29.xxx + r31.xyz;
            r29.xzw = r24.xyz * r29.www + r31.xyz;
            r31.xyz = r29.xzw * r26.xyz;
            r15.w = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r31.xyz = r29.xzw * r26.xyz + r28.xyz;
            r16.z = r15.w * r7.w;
            r29.xzw = r22.xyz * r15.zzz;
            r15.z = dot(r29.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r15.z = r7.w * r15.w + r15.z;
            r15.z = r16.z / r15.z;
            r32.x = r28.w;
            r32.yz = r27.yz;
            r30.xyw = r29.zwx * r15.zzz + r32.yzx;
            r31.w = r30.w;
          } else {
            r31.xyzw = r28.xyzw;
            r30.xyz = r27.yzw;
          }
          r11.w = -1;
          r28.xyzw = r31.xyzw;
          r27.yzw = r30.xyz;
          break;
        }
      }
    }
    if (r11.w != 0) {
      r19.xyzw = r28.xyzw;
      r20.yzw = r27.yzw;
      r2.w = -1;
      break;
    }
    r4.x = (int)r4.x + 32;
    r19.xyzw = r28.xyzw;
    r20.yzw = r27.yzw;
    r2.w = r11.w;
  }
  if (r2.w == 0) {
    r2.w = numRefProbes + -numOverrideProbes;
    r4.x = (int)r2.w & -32;
    r4.y = (int)r2.w + (int)-r4.x;
    r8.w = numRefProbes & -32;
    r9.y = (int)-r8.w + numRefProbes;
    r12.xy = float2(0,0);
    r13.w = 0;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r16.x = 1;
    r17.xy = float2(0,0);
    r21.xy = float2(0,0);
    r22.xyzw = r19.xyzw;
    r23.yzw = r20.yzw;
    r9.z = r4.x;
    while (true) {
      r9.w = cmp((uint)r9.z >= numRefProbes);
      if (r9.w != 0) break;
      r12.z = (uint)r9.z >> 5;
      r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
      r9.w = visibleProbes.Load(r13.xyzw).x;
      r11.w = cmp((int)r4.x == (int)r9.z);
      bitmask.z = ((~(-1 << r4.y)) << 0) & 0xffffffff;  r12.z = (((uint)0 << 0) & bitmask.z) | ((uint)r9.w & ~bitmask.z);
      r9.w = r11.w ? r12.z : r9.w;
      r11.w = cmp((int)r8.w == (int)r9.z);
      if (r9.y == 0) r12.z = 0; else if (r9.y+0 < 32) {       r12.z = (uint)r9.w << (32-(r9.y + 0)); r12.z = (uint)r12.z >> (32-r9.y);      } else r12.z = (uint)r9.w >> 0;
      r9.w = r11.w ? r12.z : r9.w;
      r11.w = (int)r9.z + numLights;
      r24.xyzw = r22.xyzw;
      r25.xyz = r23.yzw;
      r12.z = r9.w;
      while (true) {
        if (r12.z == 0) break;
        r12.w = firstbitlow((uint)r12.z);
        r13.x = 1 << (int)r12.w;
        r13.y = (int)r12.z & (int)r13.x;
        if (r13.y != 0) {
          r12.z = (int)r12.z ^ (int)r13.x;
          r13.x = (int)r11.w + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r13.x, l(0), t11.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r13.x, l(16), t11.xyxx
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
          r26.xyz = -v6.xyz + r26.xyz;
          r13.z = r26.w;
          r13.xyz = cmp(abs(r26.xyz) < r13.zxy);
          r13.x = r13.y ? r13.x : 0;
          r13.x = r13.z ? r13.x : 0;
          if (r13.x != 0) {
            r12.w = (int)r9.z + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(0), t15.wxyz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.xy, r12.w, l(96), t15.xyxx
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r28.xyz = v6.xyz + -r26.yzw;
            r13.z = (int)r27.w & 0x0000ffff;
            if (6 == 0) r14.w = 0; else if (6+25 < 32) {             r14.w = (uint)r27.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);            } else r14.w = (uint)r27.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r13.z, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r15.w = dot(r29.xyz, r28.xyz);
            r15.w = saturate(r15.w + r29.w);
            r16.z = dot(r30.xyz, r28.xyz);
            r16.z = saturate(r16.z + r30.w);
            r15.w = r16.z * r15.w;
            r16.z = dot(r31.xyz, r28.xyz);
            r16.z = saturate(r16.z + r31.w);
            r15.w = r16.z * r15.w;
            r16.z = dot(r32.xyz, r28.xyz);
            r16.z = saturate(r16.z + r32.w);
            r15.w = r16.z * r15.w;
            r16.z = dot(r33.xyz, r28.xyz);
            r16.z = saturate(r16.z + r33.w);
            r15.w = r16.z * r15.w;
            r16.z = dot(r34.xyz, r28.xyz);
            r16.z = saturate(r16.z + r34.w);
            r14.x = r16.z * r15.w;
            r15.w = r13.x ? 0.000000 : 0;
            r16.zw = r15.ww ? r14.xy : r14.zx;
            r14.x = r13.x;
            r18.xy = r16.zw;
            r15.w = 1;
            while (true) {
              r17.w = cmp((int)r15.w >= (int)r14.w);
              if (r17.w != 0) break;
              r17.w = (int)r13.z + (int)r15.w;
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
              r17.w = dot(r29.xyz, r28.xyz);
              r17.w = saturate(r17.w + r29.w);
              r17.w = r18.x * r17.w;
              r21.w = dot(r30.xyz, r28.xyz);
              r21.w = saturate(r21.w + r30.w);
              r17.w = r21.w * r17.w;
              r21.w = dot(r31.xyz, r28.xyz);
              r21.w = saturate(r21.w + r31.w);
              r17.w = r21.w * r17.w;
              r21.w = dot(r32.xyz, r28.xyz);
              r21.w = saturate(r21.w + r32.w);
              r17.w = r21.w * r17.w;
              r21.w = dot(r33.xyz, r28.xyz);
              r21.w = saturate(r21.w + r33.w);
              r17.w = r21.w * r17.w;
              r21.w = dot(r34.xyz, r28.xyz);
              r21.w = saturate(r21.w + r34.w);
              r18.x = r21.w * r17.w;
              r26.w = (uint)r14.x >> 2;
              if (1 == 0) r28.w = 0; else if (1+2 < 32) {               r28.w = (uint)r14.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);              } else r28.w = (uint)r14.x >> 2;
              r29.x = (int)r26.w & 2;
              r29.y = max(r18.y, r18.x);
              r17.w = -r17.w * r21.w + 1;
              r17.w = r18.y * r17.w;
              r16.y = r29.x ? r17.w : r29.y;
              r18.xy = r28.ww ? r18.xy : r16.xy;
              r15.w = (int)r15.w + 1;
              r14.x = r26.w;
            }
            r18.y = saturate(r18.y);
            r13.x = r18.y * r13.y;
            r13.z = cmp(0 < r13.x);
            if (r13.z != 0) {
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
              r25.z = r18.y * r13.y + r25.z;
              r12.w = r13.x * r27.z;
              r27.z = r34.z;
              r13.x = dot(r10.xyz, r27.xyz);
              r13.y = dot(r28.xyz, r27.xyz);
              r13.y = r13.y + -r34.w;
              r13.z = cmp(r13.y >= 0);
              r13.y = max(abs(r13.y), r7.z);
              r13.y = r13.z ? r13.y : -r13.y;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.y / r13.x;
              r13.x = min(131072, abs(r13.x));
              r34.z = r35.z;
              r13.y = dot(r10.xyz, r34.xyz);
              r13.z = dot(r28.xyz, r34.xyz);
              r13.z = r13.z + -r35.w;
              r14.x = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r7.z);
              r13.z = r14.x ? r13.z : -r13.z;
              r13.y = max(1.00000001e-07, -r13.y);
              r13.y = r13.z / r13.y;
              r13.x = min(r13.x, abs(r13.y));
              r35.z = r36.z;
              r13.y = dot(r10.xyz, r35.xyz);
              r13.z = dot(r28.xyz, r35.xyz);
              r13.z = r13.z + -r36.w;
              r14.x = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r7.z);
              r13.z = r14.x ? r13.z : -r13.z;
              r13.y = max(1.00000001e-07, -r13.y);
              r13.y = r13.z / r13.y;
              r13.x = min(r13.x, abs(r13.y));
              r36.z = r37.z;
              r13.y = dot(r10.xyz, r36.xyz);
              r13.z = dot(r28.xyz, r36.xyz);
              r13.z = r13.z + -r37.w;
              r14.x = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r7.z);
              r13.z = r14.x ? r13.z : -r13.z;
              r13.y = max(1.00000001e-07, -r13.y);
              r13.y = r13.z / r13.y;
              r13.x = min(r13.x, abs(r13.y));
              r37.z = r38.x;
              r13.y = dot(r10.xyz, r37.xyz);
              r13.z = dot(r28.xyz, r37.xyz);
              r13.z = r13.z + -r38.y;
              r14.x = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r7.z);
              r13.z = r14.x ? r13.z : -r13.z;
              r13.y = max(1.00000001e-07, -r13.y);
              r13.y = r13.z / r13.y;
              r13.x = min(r13.x, abs(r13.y));
              r39.zw = r38.zw;
              r13.y = dot(r10.zxy, r39.xzw);
              r13.z = dot(r28.zxy, r39.xzw);
              r13.z = r13.z + -r39.y;
              r14.x = cmp(r13.z >= 0);
              r13.z = max(abs(r13.z), r7.z);
              r13.z = r14.x ? r13.z : -r13.z;
              r13.y = max(1.00000001e-07, -r13.y);
              r13.y = r13.z / r13.y;
              r13.x = min(r13.x, abs(r13.y));
              r27.x = r31.w;
              r27.yz = r32.zw;
              r16.yzw = r27.xyz + r28.xyz;
              r16.yzw = r10.xyz * r13.xxx + r16.yzw;
              r13.y = dot(r16.yzw, r16.yzw);
              r13.y = sqrt(r13.y);
              r13.x = r13.x / r13.y;
              r13.x = r13.x + r13.x;
              r13.x = sqrt(r13.x);
              r13.x = r6.w * 5 + r13.x;
              r13.x = -0.844799995 + r13.x;
              r26.y = r29.z;
              r26.z = r30.x;
              r34.x = dot(r16.yzw, r26.xyz);
              r27.xy = r29.xw;
              r27.z = r30.w;
              r34.y = dot(r16.yzw, r27.xyz);
              r30.x = r29.y;
              r34.z = dot(r16.yzw, r30.xyz);
              if (9 == 0) r13.y = 0; else if (9+16 < 32) {               r13.y = (uint)r27.w << (32-(9 + 16)); r13.y = (uint)r13.y >> (32-9);              } else r13.y = (uint)r27.w >> 16;
              r34.w = (uint)r13.y;
              r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r13.x).xyz;
              r16.yzw = (int3)r13.xyz & int3(-2147483648,-2147483648,-2147483648);
              r16.yzw = cmp((int3)r16.yzw == int3(2139095040,2139095040,2139095040));
              r14.x = (int)r16.z | (int)r16.y;
              r14.x = (int)r16.w | (int)r14.x;
              r13.xyz = r14.xxx ? float3(1,1,0) : r13.xyz;
              r29.x = dot(r28.xyz, r26.xyz);
              r29.y = dot(r28.xyz, r27.xyz);
              r29.z = dot(r28.xyz, r30.xyz);
              r16.yzw = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r16.yzw = r16.yzw * r32.xyz + r33.yzw;
              r34.x = dot(r1.xyz, r26.xyz);
              r34.y = dot(r1.xyz, r27.xyz);
              r34.z = dot(r1.xyz, r30.xyz);
              r26.xyz = cmp(float3(0,0,0) < r34.xyz);
              r15.z = r26.x ? 0 : 0.5;
              r27.xyz = r16.yzw + r15.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r28.xyz = r34.xyz * r34.xyz;
              r28.xyz = r28.xyz * r12.www;
              r17.z = r26.y ? 0 : 0.5;
              r26.xyw = r17.xyz + r16.yzw;
              r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
              r26.xyw = r26.xyw * r28.yyy;
              r26.xyw = r27.xyz * r28.xxx + r26.xyw;
              r21.z = r26.z ? 0 : 0.5;
              r16.yzw = r21.xyz + r16.yzw;
              r16.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r16.yzw, 0).xyz;
              r16.yzw = r16.yzw * r28.zzz + r26.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
              r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
              r14.x = (int)r27.y | (int)r27.x;
              r14.x = (int)r27.z | (int)r14.x;
              r26.xyz = r14.xxx ? float3(1,1,0) : r26.xyz;
              r27.xyz = r26.xyz * r16.yzw;
              r14.x = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.xyz = r16.yzw * r26.xyz + r24.xyz;
              r14.w = r14.x * r7.w;
              r13.xyz = r13.xyz * r12.www;
              r12.w = dot(r13.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r12.w = r7.w * r14.x + r12.w;
              r12.w = r14.w / r12.w;
              r26.x = r24.w;
              r26.yz = r25.xy;
              r25.xyw = r13.yzx * r12.www + r26.yzx;
              r24.w = r25.w;
            }
          }
        }
      }
      r22.xyzw = r24.xyzw;
      r23.yzw = r25.xyz;
      r9.z = (int)r9.z + 32;
    }
    r8.w = cmp(r23.w < 1);
    if (r8.w != 0) {
      r12.xy = float2(0,0);
      r13.w = 0;
      r14.yz = float2(0,1);
      r15.xy = float2(0,0);
      r16.x = 1;
      r17.xy = float2(0,0);
      r21.xy = float2(0,0);
      r24.x = r22.w;
      r24.yzw = r23.yzw;
      r9.yzw = r22.xyz;
      r8.w = r23.w;
      r11.w = 0;
      while (true) {
        r12.w = cmp((uint)r11.w >= (uint)r2.w);
        if (r12.w != 0) break;
        r12.z = (uint)r11.w >> 5;
        r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
        r12.z = visibleProbes.Load(r13.xyzw).x;
        r12.w = cmp((int)r4.x == (int)r11.w);
        if (r4.y == 0) r13.x = 0; else if (r4.y+0 < 32) {         r13.x = (uint)r12.z << (32-(r4.y + 0)); r13.x = (uint)r13.x >> (32-r4.y);        } else r13.x = (uint)r12.z >> 0;
        r12.z = r12.w ? r13.x : r12.z;
        r12.w = (int)r11.w + numLights;
        r25.xyzw = r24.xyzw;
        r13.xyz = r9.yzw;
        r14.w = r8.w;
        r15.w = r12.z;
        while (true) {
          if (r15.w == 0) break;
          r16.z = firstbitlow((uint)r15.w);
          r16.w = 1 << (int)r16.z;
          r17.w = (int)r15.w & (int)r16.w;
          if (r17.w != 0) {
            r15.w = (int)r15.w ^ (int)r16.w;
            r16.w = (int)r12.w + (int)r16.z;
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
              r16.z = (int)r11.w + (int)r16.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r16.z, l(0), t15.wxyz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xy, r16.z, l(96), t15.xyxx
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r16.z, l(116), t15.zwxy
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r28.xyz = v6.xyz + -r26.yzw;
              r16.w = (int)r27.w & 0x0000ffff;
              if (6 == 0) r17.w = 0; else if (6+25 < 32) {               r17.w = (uint)r27.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);              } else r17.w = (uint)r27.w >> 25;
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
              r20.w = dot(r29.xyz, r28.xyz);
              r20.w = saturate(r20.w + r29.w);
              r21.w = dot(r30.xyz, r28.xyz);
              r21.w = saturate(r21.w + r30.w);
              r20.w = r21.w * r20.w;
              r21.w = dot(r31.xyz, r28.xyz);
              r21.w = saturate(r21.w + r31.w);
              r20.w = r21.w * r20.w;
              r21.w = dot(r32.xyz, r28.xyz);
              r21.w = saturate(r21.w + r32.w);
              r20.w = r21.w * r20.w;
              r21.w = dot(r33.xyz, r28.xyz);
              r21.w = saturate(r21.w + r33.w);
              r20.w = r21.w * r20.w;
              r21.w = dot(r34.xyz, r28.xyz);
              r21.w = saturate(r21.w + r34.w);
              r14.x = r21.w * r20.w;
              r20.w = (int)r18.x & 1;
              r29.xy = r20.ww ? r14.xy : r14.zx;
              r14.x = r18.x;
              r30.xy = r29.xy;
              r20.w = 1;
              while (true) {
                r21.w = cmp((int)r20.w >= (int)r17.w);
                if (r21.w != 0) break;
                r21.w = (int)r16.w + (int)r20.w;
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
                r28.w = (uint)r14.x >> 2;
                if (1 == 0) r29.z = 0; else if (1+2 < 32) {                 r29.z = (uint)r14.x << (32-(1 + 2)); r29.z = (uint)r29.z >> (32-1);                } else r29.z = (uint)r14.x >> 2;
                r29.w = (int)r28.w & 2;
                r30.z = max(r30.y, r30.x);
                r21.w = -r21.w * r26.w + 1;
                r21.w = r30.y * r21.w;
                r16.y = r29.w ? r21.w : r30.z;
                r30.xy = r29.zz ? r30.xy : r16.xy;
                r20.w = (int)r20.w + 1;
                r14.x = r28.w;
              }
              r14.x = saturate(r30.y + -r14.w);
              r16.y = r14.x * r18.y;
              r16.w = cmp(0 < r16.y);
              if (r16.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r16.z, l(16), t15.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r16.z, l(32), t15.yxwz
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(48), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(64), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(80), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(132), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r16.z, l(148), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r16.z, l(164), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r16.z, l(180), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r16.z, l(196), t15.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r16.z, l(212), t15.xyxx
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
                r25.w = r14.x * r18.y + r25.w;
                r14.x = r16.y * r27.z;
                r27.z = r35.z;
                r16.y = dot(r10.xyz, r27.xyz);
                r16.z = dot(r28.xyz, r27.xyz);
                r16.z = r16.z + -r35.w;
                r16.w = cmp(r16.z >= 0);
                r16.z = max(abs(r16.z), r7.z);
                r16.z = r16.w ? r16.z : -r16.z;
                r16.y = max(1.00000001e-07, -r16.y);
                r16.y = r16.z / r16.y;
                r16.y = min(131072, abs(r16.y));
                r35.z = r36.z;
                r16.z = dot(r10.xyz, r35.xyz);
                r16.w = dot(r28.xyz, r35.xyz);
                r16.w = r16.w + -r36.w;
                r17.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r7.z);
                r16.w = r17.w ? r16.w : -r16.w;
                r16.z = max(1.00000001e-07, -r16.z);
                r16.z = r16.w / r16.z;
                r16.y = min(r16.y, abs(r16.z));
                r36.z = r37.z;
                r16.z = dot(r10.xyz, r36.xyz);
                r16.w = dot(r28.xyz, r36.xyz);
                r16.w = r16.w + -r37.w;
                r17.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r7.z);
                r16.w = r17.w ? r16.w : -r16.w;
                r16.z = max(1.00000001e-07, -r16.z);
                r16.z = r16.w / r16.z;
                r16.y = min(r16.y, abs(r16.z));
                r37.z = r38.z;
                r16.z = dot(r10.xyz, r37.xyz);
                r16.w = dot(r28.xyz, r37.xyz);
                r16.w = r16.w + -r38.w;
                r17.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r7.z);
                r16.w = r17.w ? r16.w : -r16.w;
                r16.z = max(1.00000001e-07, -r16.z);
                r16.z = r16.w / r16.z;
                r16.y = min(r16.y, abs(r16.z));
                r38.z = r39.x;
                r16.z = dot(r10.xyz, r38.xyz);
                r16.w = dot(r28.xyz, r38.xyz);
                r16.w = r16.w + -r39.y;
                r17.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r7.z);
                r16.w = r17.w ? r16.w : -r16.w;
                r16.z = max(1.00000001e-07, -r16.z);
                r16.z = r16.w / r16.z;
                r16.y = min(r16.y, abs(r16.z));
                r40.zw = r39.zw;
                r16.z = dot(r10.zxy, r40.xzw);
                r16.w = dot(r28.zxy, r40.xzw);
                r16.w = r16.w + -r40.y;
                r17.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r7.z);
                r16.w = r17.w ? r16.w : -r16.w;
                r16.z = max(1.00000001e-07, -r16.z);
                r16.z = r16.w / r16.z;
                r16.y = min(r16.y, abs(r16.z));
                r27.x = r32.w;
                r27.yz = r33.zw;
                r27.xyz = r27.xyz + r28.xyz;
                r27.xyz = r10.xyz * r16.yyy + r27.xyz;
                r16.z = dot(r27.xyz, r27.xyz);
                r16.z = sqrt(r16.z);
                r16.y = r16.y / r16.z;
                r16.y = r16.y + r16.y;
                r16.y = sqrt(r16.y);
                r16.y = r6.w * 5 + r16.y;
                r16.y = -0.844799995 + r16.y;
                r26.y = r29.z;
                r26.z = r31.x;
                r35.x = dot(r27.xyz, r26.xyz);
                r36.xy = r29.xw;
                r36.z = r31.w;
                r35.y = dot(r27.xyz, r36.xyz);
                r31.x = r29.y;
                r35.z = dot(r27.xyz, r31.xyz);
                if (9 == 0) r16.z = 0; else if (9+16 < 32) {                 r16.z = (uint)r27.w << (32-(9 + 16)); r16.z = (uint)r16.z >> (32-9);                } else r16.z = (uint)r27.w >> 16;
                r35.w = (uint)r16.z;
                r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r16.y).xyz;
                r27.xyz = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
                r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
                r17.w = (int)r27.y | (int)r27.x;
                r17.w = (int)r27.z | (int)r17.w;
                r16.yzw = r17.www ? float3(1,1,0) : r16.yzw;
                r27.x = dot(r28.xyz, r26.xyz);
                r27.y = dot(r28.xyz, r36.xyz);
                r27.z = dot(r28.xyz, r31.xyz);
                r27.xyz = saturate(r27.xyz * r32.xyz + float3(0.5,0.5,0.5));
                r33.z = r34.x;
                r27.xyz = r27.xyz * r33.xyz + r34.yzw;
                r35.x = dot(r1.xyz, r26.xyz);
                r35.y = dot(r1.xyz, r36.xyz);
                r35.z = dot(r1.xyz, r31.xyz);
                r26.xyz = cmp(float3(0,0,0) < r35.xyz);
                r15.z = r26.x ? 0 : 0.5;
                r28.xyz = r27.xyz + r15.xyz;
                r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r29.xyz = r35.xyz * r35.xyz;
                r29.xyz = r29.xyz * r14.xxx;
                r17.z = r26.y ? 0 : 0.5;
                r26.xyw = r27.xyz + r17.xyz;
                r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
                r26.xyw = r26.xyw * r29.yyy;
                r26.xyw = r28.xyz * r29.xxx + r26.xyw;
                r21.z = r26.z ? 0 : 0.5;
                r27.xyz = r27.xyz + r21.xyz;
                r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r26.xyz = r27.xyz * r29.zzz + r26.xyw;
                r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
                r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r15.z = (int)r28.y | (int)r28.x;
                r15.z = (int)r28.z | (int)r15.z;
                r27.xyz = r15.zzz ? float3(1,1,0) : r27.xyz;
                r28.xyz = r27.xyz * r26.xyz;
                r15.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r13.xyz = r26.xyz * r27.xyz + r13.xyz;
                r17.z = r15.z * r7.w;
                r16.yzw = r16.yzw * r14.xxx;
                r14.x = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r14.x = r7.w * r15.z + r14.x;
                r14.x = r17.z / r14.x;
                r25.xyz = r16.yzw * r14.xxx + r25.xyz;
              }
            }
          }
        }
        r24.xyzw = r25.xyzw;
        r9.yzw = r13.xyz;
        r11.w = (int)r11.w + 32;
      }
      r23.xyzw = r24.zxyw;
      r22.xyz = r9.yzw;
      r23.xyzw = r23.yzxw;
    } else {
      r23.x = r22.w;
    }
    r2.w = max(1, r23.w);
    r2.w = rcp(r2.w);
    r23.w = saturate(r23.w);
    r19.xyz = r22.xyz * r2.www;
    r20.xyz = r23.xyz * r2.www;
    r4.x = cmp(r23.w < 0.99000001);
    if (r4.x != 0) {
      r4.x = 1 + -r23.w;
      r4.y = sunConstants.globalProbeExposure * r4.x;
      r9.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
      r12.x = globalProbeConstants.data[0].w * r9.y;
      r12.yz = globalProbeConstants.data[1].xy * r9.zw;
      r9.yzw = saturate(float3(0.5,0.5,0.5) + r12.xyz);
      r12.xy = globalProbeConstants.data[1].zw * r9.yz;
      r12.z = globalProbeConstants.data[2].x * r9.w;
      r9.yzw = globalProbeConstants.data[2].yzw + r12.xyz;
      r12.xyz = cmp(float3(0,0,0) < r1.xyz);
      r12.xyz = r12.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r12.w = 0;
      r13.xyz = r12.wwx + r9.yzw;
      r13.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r14.xyz = r1.xyz * r1.xyz;
      r14.xyz = r14.xyz * r4.yyy;
      r15.xyz = r12.wwy + r9.yzw;
      r15.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r15.xyz = r15.xyz * r14.yyy;
      r13.xyz = r13.xyz * r14.xxx + r15.xyz;
      r9.yzw = r12.wwz + r9.yzw;
      r9.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
      r9.yzw = r9.yzw * r14.zzz + r13.xyz;
      r1.w = 0;
      r12.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
      r9.yzw = r12.xyz * r9.yzw;
      r1.w = dot(r9.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r19.xyz = r22.xyz * r2.www + r9.yzw;
      r10.w = 0;
      r9.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, r7.y).xyz;
      r2.w = sunConstants.globalProbeExposure * r4.x + -r1.w;
      r1.w = r3.y * r2.w + r1.w;
      r20.xyz = r9.yzw * r1.www + r20.xyz;
    }
  } else {
    r20.x = r19.w;
  }
  r1.w = r3.x + r0.w;
  r1.w = log2(abs(r1.w));
  r1.w = r6.z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w + r0.w;
  r1.w = saturate(-1 + r1.w);
  r12.xyz = r19.yzx * r0.www;
  r4.xy = r3.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r4.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.xy, 0).xy;
  r9.yzw = r20.xyz * r1.www;
  r13.xyz = r9.yzw * r4.xxx;
  r14.xyz = r9.yzw * r4.yyy;
  r0.w = sqrt(r6.z);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r1.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r2.w = r3.x * r0.w + r1.w;
  r0.w = r2.w * r0.w;
  r1.w = r2.w * r1.w;
  r2.w = dot(r1.xyz, sunConstants.wldDir.xyz);
  r8.w = cmp(0 >= abs(r2.w));
  if (r8.w != 0) {
    r9.y = 0;
  }
  if (r8.w == 0) {
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r15.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.xyz;
    r15.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.xyz;
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.xyz;
    r9.z = -sunConstants.splitDepthOffset + r15.z;
    r9.z = -r9.z * 6.10351563e-05 + 1;
    r9.w = saturate(r9.z);
    r9.w = cmp(r9.z == r9.w);
    if (r9.w != 0) {
      r9.w = 0;
      r10.w = 0;
      while (true) {
        r11.w = cmp(r9.w >= 3);
        if (r11.w != 0) break;
        r11.w = (uint)r9.w;
        r16.xy = -sunConstants.splitPinTransform[r11.w].xy + r15.xy;
        r13.w = max(abs(r16.x), abs(r16.y));
        r10.w = sunConstants.splitPinTransform[r11.w].z * r13.w;
        r11.w = cmp(r10.w < 1);
        if (r11.w != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r10.w = 0;
      }
    } else {
      r9.w = 3;
      r10.w = 0;
    }
    r11.w = cmp(r9.w >= 3);
    if (r11.w != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r15.xyx * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r17.xy = floor(r17.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r13.w, l(0), t23.xxxx
    r15.w = samp0[]..swiz;
      r16.w = (int)r15.w & 0x40000000;
      r17.x = (uint)r15.w << 2;
      if (r16.w == 0) {
        r16.w = (int)r15.w & 0x01ffffff;
        r19.x = (int)r13.w + (int)r16.w;
        r13.w = (uint)r15.w >> 25;
        r13.w = (uint)r13.w;
        r16.xyz = r16.xyz * r13.www;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r17.yz = (uint2)r16.zy >> int2(6,6);
        r13.w = (int)r19.z & 0xc0000000;
        r15.w = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.w = r17.z ? r19.z : r15.w;
        r16.w = (uint)r15.w >> 13;
        r15.w = r17.y ? r16.w : r15.w;
        r15.w = (int)r15.w & 8191;
        r20.x = (int)r15.w + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
      r20.z = samp0[]..swiz;
        r19.y = 0;
        r20.y = 1;
        r17.yzw = r13.www ? r19.xyz : r20.xyz;
        r20.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r18.xy = (uint2)r16.zy >> (uint2)r20.yy;
        r18.xy = (int2)r18.xy & int2(1,1);
        r15.w = (int)r17.w & 0xc0000000;
        r16.w = (int)r17.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.w = r18.y ? r17.w : r16.w;
        r18.y = (uint)r16.w >> 13;
        r16.w = r18.x ? r18.y : r16.w;
        r16.w = (int)r16.w & 8191;
        r20.x = (int)r16.w + (int)r17.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r17.yzw = r15.www ? r17.yzw : r20.xzw;
        r17.yzw = r13.www ? r19.xyz : r17.yzw;
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r17.z + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r13.w = (uint)r13.w >> (uint)r15.w;
          r13.w = (int)r13.w & 1023;
          r19.x = (int)r13.w + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
        r19.w = samp0[]..swiz;
          r19.yz = (int2)r17.zz + int2(1,2);
          r13.w = (int)-r19.y + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r19.w & 0xc0000000;
          r15.w = (int)r19.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
          r16.w = (int)r16.w * 10;
          r15.w = (uint)r15.w >> (uint)r16.w;
          r15.w = (int)r15.w & 1023;
          r20.x = (int)r15.w + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
        r20.z = samp0[]..swiz;
          r20.y = r19.z;
          r20.xyz = r13.www ? r19.xyw : r20.xyz;
          r15.w = (int)-r20.y + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r15.ww;
          r15.w = (int)r20.z & 0xc0000000;
          r16.w = (int)r20.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r18.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r18.x << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
          r17.z = (int)r17.z * 10;
          r16.w = (uint)r16.w >> (uint)r17.z;
          r16.w = (int)r16.w & 1023;
          r18.x = (int)r16.w + (int)r20.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r18.xy = r15.ww ? r20.xz : r18.xy;
          r17.yw = r13.ww ? r19.xw : r18.xy;
        }
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r15.w = 0; else if (14+15 < 32) {           r15.w = (uint)r17.w << (32-(14 + 15)); r15.w = (uint)r15.w >> (32-14);          } else r15.w = (uint)r17.w >> 15;
          r15.w = (uint)r15.w;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 6.10388815e-05 * r15.w;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r16.w = (uint)r18.x;
          r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
          r16.w = 3.05185094e-05 * r16.w;
          r17.z = (int)r16.y & 3;
          r17.z = (int)r17.z + (int)r17.y;
          r17.z = (int)r17.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r16.x = (uint)r17.z >> (uint)r19.x;
          r16.x = (int)r16.x & 255;
          r16.x = (uint)r16.x;
          r16.x = r16.x * r16.w;
          r16.x = r16.x * 0.00392156886 + r15.w;
          r16.y = (int)r19.y + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.z >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r19.z;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r16.w;
          r15.w = r16.y * 1.52590219e-05 + r15.w;
          r17.x = r18.y ? r16.x : r15.w;
        } else {
          r15.w = (int)r17.w & 0x80000000;
          r16.x = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          r15.w = r15.w ? r16.x : 0;
          r16.x = (uint)r17.w << 2;
          r16.y = (uint)r15.w >> 16;
          r16.y = f16tof32(r16.y);
          r15.w = (int)r15.w & 0x0000ffff;
          r15.w = f16tof32(r15.w);
          r16.x = r15.x * r16.y + r16.x;
          r15.w = r15.y * r15.w + r16.x;
          r17.x = r13.w ? r15.w : r17.x;
        }
      }
      r13.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.z;
      r13.w = cmp(r17.x < r13.w);
      r9.y = r13.w ? 0 : 1;
    }
    if (r11.w == 0) {
      if (enableDitheredShadow == 0) {
        r11.w = (uint)r9.w;
        r15.zw = -sunConstants.splitPinTransform[r11.w].xy + r15.xy;
        r15.zw = sunConstants.splitPinTransform[r11.w].zz * r15.zw;
        r16.xy = r15.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r11.w + r9.w;
        r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r9.z).x;
        r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r11.w = r13.w + r11.w;
        r11.w = saturate(-1 + r11.w);
        r13.w = r11.w * r11.w;
        r9.y = r13.w * r11.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r7.x;
        r11.w = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r10.w = 1 + -r10.w;
        r10.w = 28 * r10.w;
        r10.w = (uint)r10.w;
        r15.zw = -sunConstants.splitPinTransform[r11.w].xy + r15.xy;
        r15.zw = sunConstants.splitPinTransform[r11.w].zz * r15.zw;
        r15.zw = r15.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xy = -sunConstants.splitPinTransform[r9.w].xy + r15.xy;
        r15.xy = sunConstants.splitPinTransform[r9.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r8.x;
        r16.z = r7.x;
        r13.w = 0;
        r16.w = 0;
        while (true) {
          r17.x = cmp((uint)r16.w >= 8);
          if (r17.x != 0) break;
          r17.x = cmp((uint)r10.w < (uint)r16.w);
          r17.yz = r17.xx ? r15.xy : r15.zw;
          r17.w = r17.x ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r11.w].w;
          r17.x = r17.x ? r9.w : r11.w;
          r18.x = dot(icb[r16.w+0].yx, r16.xy);
          r18.y = dot(icb[r16.w+0].yx, r16.yz);
          r19.xy = r18.xy * r17.ww + r17.yz;
          r17.x = (int)r17.x + (int16)sunConstants.splitArrayOffset;
          r19.z = (uint)r17.x;
          r17.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r9.z).x;
          r17.y = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
          r17.x = r17.x + r17.y;
          r17.x = saturate(-1 + r17.x);
          r13.w = r17.x * 0.125 + r13.w;
          r16.w = (int)r16.w + 1;
        }
        r9.z = r13.w * r13.w;
        r9.y = r9.z * r13.w;
      }
    }
  }
  r9.z = cmp(0 < abs(r2.w));
  if (r9.z != 0) {
    r9.w = cmp(0 < r9.y);
    if (r9.w != 0) {
      r9.w = sunConstants.specScale * r6.y;
      r9.w = 0.25 * r9.w;
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v6.xyz;
        r15.w = 1;
        r10.w = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r11.w = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.x = frac(r10.w);
        r15.y = frac(r11.w);
        r10.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r10.w;
        r15.xyz = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r15.xyz = float3(-1,-1,-1) + r15.xyz;
        r15.xyz = sunConstants.sunCookieIntensity * r15.xyz + float3(1,1,1);
        r15.xyz = sunConstants.color.xyz * r15.xyz;
      } else {
        r15.xyz = sunConstants.color.xyz;
      }
      r10.w = viewmodelSunShadowRaw >> 16;
      r11.w = cmp(0 < (uint)r10.w);
      r11.w = r4.w ? r11.w : 0;
      if (r11.w != 0) {
        r10.w = (int)r10.w + numLights;
        r10.w = (int)r10.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r10.w, l(52), t12.xxxx
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(68), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(84), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(132), t12.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(148), t12.xyzw
      r20.x = samp0[]..swiz;
      r20.y = samp0[]..swiz;
      r20.z = samp0[]..swiz;
      r20.w = samp0[]..swiz;
        r13.w = abs(r2.w) * -0.200000003 + 0.400000006;
        r15.w = cmp(r2.w < 0);
        r13.w = r15.w ? -r13.w : r13.w;
        r21.xyz = r1.xyz * r13.www + v6.xyz;
        r21.w = 1;
        r16.x = dot(r16.xyzw, r21.xyzw);
        r16.y = dot(r17.xyzw, r21.xyzw);
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.xy = r16.xy + r20.zw;
        r16.xy = r16.xy * r20.xy;
        r16.zw = r11.ww / r19.xz;
        r17.xy = float2(1,1) + -r16.zw;
        r17.xy = cmp(r16.xy >= r17.xy);
        r16.zw = cmp(r16.zw >= r16.xy);
        r16.zw = (int2)r16.zw | (int2)r17.xy;
        r13.w = (int)r16.w | (int)r16.z;
        if (r13.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r10.w, l(28), t12.xxxx
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(100), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.zw, r10.w, l(164), t12.xxxy
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
          r10.w = dot(r17.xyzw, r21.xyzw);
          r16.xy = saturate(r16.xy);
          r17.xy = r16.xy * r19.xz + r19.yw;
          r10.w = r10.w + r16.z;
          r10.w = r10.w / r16.w;
          r10.w = max(6.10351563e-05, r10.w);
          r13.w = (int)r13.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r7.x;
            r19.z = (uint)r13.w;
            r16.y = r8.x;
            r16.z = r7.x;
            r15.w = 0;
            r16.w = 0;
            while (true) {
              r17.w = cmp((int)r16.w >= 8);
              if (r17.w != 0) break;
              r18.x = dot(icb[r16.w+0].yx, r16.xy);
              r18.y = dot(icb[r16.w+0].yx, r16.yz);
              r19.xy = r18.xy * r11.ww + r17.xy;
              r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.w).x;
              r15.w = r17.w * 0.125 + r15.w;
              r16.w = (int)r16.w + 1;
            }
          } else {
            r17.z = (uint)r13.w;
            r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.w).x;
          }
          r10.w = r15.w * r15.w;
          r10.w = r10.w * r15.w;
        } else {
          r10.w = 1;
        }
        r9.y = r10.w * r9.y;
      } else {
        r10.w = viewmodelSunShadowRaw & 0x0000ffff;
        r11.w = cmp(0 < (uint)r10.w);
        r13.w = ~(int)r4.w;
        r11.w = r11.w ? r13.w : 0;
        if (r11.w != 0) {
          r10.w = (int)r10.w + numLights;
          r10.w = (int)r10.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r10.w, l(52), t12.xxxx
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(68), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(84), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(132), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(148), t12.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
          r13.w = abs(r2.w) * -0.200000003 + 0.400000006;
          r15.w = cmp(r2.w < 0);
          r13.w = r15.w ? -r13.w : r13.w;
          r21.xyz = r1.xyz * r13.www + v6.xyz;
          r21.w = 1;
          r16.x = dot(r16.xyzw, r21.xyzw);
          r16.y = dot(r17.xyzw, r21.xyzw);
          r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r16.xy = r16.xy + r20.zw;
          r16.xy = r16.xy * r20.xy;
          r16.zw = r11.ww / r19.xz;
          r17.xy = float2(1,1) + -r16.zw;
          r17.xy = cmp(r16.xy >= r17.xy);
          r16.zw = cmp(r16.zw >= r16.xy);
          r16.zw = (int2)r16.zw | (int2)r17.xy;
          r13.w = (int)r16.w | (int)r16.z;
          if (r13.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r10.w, l(28), t12.xxxx
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(100), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.zw, r10.w, l(164), t12.xxxy
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
            r10.w = dot(r17.xyzw, r21.xyzw);
            r16.xy = saturate(r16.xy);
            r17.xy = r16.xy * r19.xz + r19.yw;
            r10.w = r10.w + r16.z;
            r10.w = r10.w / r16.w;
            r10.w = max(6.10351563e-05, r10.w);
            r13.w = (int)r13.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r7.x;
              r19.z = (uint)r13.w;
              r16.y = r8.x;
              r16.z = r7.x;
              r15.w = 0;
              r16.w = 0;
              while (true) {
                r17.w = cmp((int)r16.w >= 8);
                if (r17.w != 0) break;
                r18.x = dot(icb[r16.w+0].yx, r16.xy);
                r18.y = dot(icb[r16.w+0].yx, r16.yz);
                r19.xy = r18.xy * r11.ww + r17.xy;
                r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.w).x;
                r15.w = r17.w * 0.125 + r15.w;
                r16.w = (int)r16.w + 1;
              }
            } else {
              r17.z = (uint)r13.w;
              r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.w).x;
            }
            r10.w = r15.w * r15.w;
            r10.w = r10.w * r15.w;
          } else {
            r10.w = 1;
          }
          r9.y = r10.w * r9.y;
        }
      }
      r10.w = -r3.x * 0.5 + 1;
      r10.w = -abs(r2.w) * r10.w + 1;
      r10.w = r10.w * r10.w;
      r10.w = -r10.w * 0.620000005 + 0.620000005;
      r10.w = r10.w + -abs(r2.w);
      r10.w = r6.z * r10.w + abs(r2.w);
      r10.w = r10.w * r9.y;
      r11.w = cmp(0 < r2.w);
      r16.xyz = r10.www * r15.yzx + r12.xyz;
      r10.w = saturate(r2.w);
      r17.xyz = -v6.xyz * r4.zzz + sunConstants.wldDir.xyz;
      r4.z = dot(r17.xyz, r17.xyz);
      r4.z = rsqrt(r4.z);
      r17.xyz = r17.xyz * r4.zzz;
      r4.z = dot(r17.xyz, r5.xyz);
      r13.w = dot(r1.xyz, r17.xyz);
      r15.w = abs(r13.w) * r6.y + -abs(r13.w);
      r13.w = abs(r13.w) * r15.w + 1;
      r15.w = r10.w * r0.w + r1.w;
      r13.w = r13.w * r13.w;
      r13.w = r13.w * r15.w;
      r13.w = rcp(r13.w);
      r9.w = r10.w * r9.w;
      r9.w = r13.w * r9.w;
      r9.y = r9.w * r9.y;
      r17.yzw = r9.yyy * r15.xyz + r14.xyz;
      r4.z = saturate(1 + -r4.z);
      r9.w = r4.z * r4.z;
      r9.w = r9.w * r9.w;
      r4.z = r9.w * r4.z;
      r4.z = r9.y * r4.z;
      r15.xyz = r4.zzz * r15.xyz + r13.xyz;
      r16.w = r12.z;
      r12.w = r16.z;
      r19.xyzw = r11.wwww ? r16.zxyw : r12.zxyw;
      r12.zw = r15.xy;
      r16.zw = r13.xy;
      r16.xyzw = r11.wwww ? r12.xyzw : r16.xyzw;
      r17.x = r15.z;
      r14.w = r13.z;
      r14.xyzw = r11.wwww ? r17.yzwx : r14.xyzw;
      r12.z = r19.w;
      r12.xy = r16.xy;
      r13.xy = r16.zw;
      r13.z = r14.w;
    } else {
      r19.xyz = r12.zxy;
    }
  } else {
    r19.xyz = r12.zxy;
  }
  r15.x = -r7.x;
  r4.z = ~(int)r4.w;
  r3.x = -r3.x * 0.5 + 1;
  r16.xy = float2(0,0);
  r17.w = 0;
  r20.xyz = v6.xyz;
  r20.w = 1;
  r21.w = 1;
  r15.z = r7.x;
  r22.w = 1;
  r23.z = 1;
  r24.w = 1;
  r15.yw = r8.xx;
  r25.z = r7.x;
  r25.x = r15.w;
  r26.w = 1;
  r8.y = r15.x;
  r8.z = r25.z;
  r27.w = 1;
  r28.x = r8.x;
  r28.y = r15.x;
  r28.z = r25.z;
  r29.x = r8.x;
  r29.y = r15.x;
  r29.z = r25.z;
  r30.x = r8.x;
  r30.y = r15.x;
  r30.z = r25.z;
  r31.xyz = r19.xyz;
  r32.xyz = r12.zxy;
  r33.xyz = r13.xyz;
  r34.xyz = r14.xyz;
  r7.x = enableDitheredShadow;
  r9.y = 0;
  while (true) {
    r9.w = cmp((uint)r9.y >= numLights);
    if (r9.w != 0) break;
    r16.z = (uint)r9.y >> 5;
    r17.xyz = (int3)r11.xyz + (int3)r16.xyz;
    r9.w = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r31.xyz;
    r35.xyz = r32.xyz;
    r36.xyz = r33.xyz;
    r37.xyz = r34.xyz;
    r10.w = r7.x;
    r11.w = r9.w;
    while (true) {
      if (r11.w == 0) break;
      r12.w = firstbitlow((uint)r11.w);
      r13.w = 1 << (int)r12.w;
      r14.w = (int)r11.w & (int)r13.w;
      if (r14.w != 0) {
        r11.w = (int)r11.w ^ (int)r13.w;
        r12.w = (int)r9.y + (int)r12.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(0), t11.xyzw
      r38.x = samp0[]..swiz;
      r38.y = samp0[]..swiz;
      r38.z = samp0[]..swiz;
      r38.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r39.xy, r12.w, l(16), t11.xyxx
      r39.x = samp0[]..swiz;
      r39.y = samp0[]..swiz;
        r38.xyz = -v6.xyz + r38.xyz;
        r39.z = r38.w;
        r38.xyz = cmp(abs(r38.xyz) < r39.zxy);
        r13.w = r38.y ? r38.x : 0;
        r13.w = r38.z ? r13.w : 0;
        if (r13.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(0), t12.wxyz
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(16), t12.zxyw
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(32), t12.xyzw
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(48), t12.xyzw
        r41.x = samp0[]..swiz;
        r41.y = samp0[]..swiz;
        r41.z = samp0[]..swiz;
        r41.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(64), t12.yzwx
        r42.x = samp0[]..swiz;
        r42.y = samp0[]..swiz;
        r42.z = samp0[]..swiz;
        r42.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(80), t12.xyzw
        r43.x = samp0[]..swiz;
        r43.y = samp0[]..swiz;
        r43.z = samp0[]..swiz;
        r43.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(96), t12.yzwx
        r44.x = samp0[]..swiz;
        r44.y = samp0[]..swiz;
        r44.z = samp0[]..swiz;
        r44.w = samp0[]..swiz;
          if (3 == 0) r13.w = 0; else if (3+24 < 32) {           r13.w = (uint)r39.w << (32-(3 + 24)); r13.w = (uint)r13.w >> (32-3);          } else r13.w = (uint)r39.w >> 24;
          switch (r13.w) {
            case 4 :            r13.w = cmp(0 < r44.x);
            r45.xy = r43.zw;
            r45.z = r44.w;
            r46.xyz = -r45.xyz * float3(0.5,0.5,0.5) + r38.yzw;
            r47.xyz = -v6.xyz + r46.xyz;
            r14.w = dot(r45.xyz, r47.xyz);
            r16.z = saturate(-r14.w / r44.x);
            r48.xyz = r16.zzz * r45.xyz + r46.xyz;
            r48.xyz = r13.www ? r48.xyz : r38.yzw;
            r48.xyz = -v6.xyz + r48.xyz;
            r16.w = dot(r48.xyz, r48.xyz);
            r18.x = rsqrt(r16.w);
            r48.xyz = r48.xyz * r18.xxx;
            r18.x = dot(r1.xyz, r48.xyz);
            r18.y = cmp(0 < abs(r18.x));
            if (r18.y != 0) {
              r18.y = sqrt(r16.w);
              r19.w = r41.x * r41.x;
              r16.w = r19.w / r16.w;
              r16.w = min(1, r16.w);
              r48.xy = saturate(r18.yy * r40.xz + r40.yw);
              r48.zw = r48.xy * r48.xy;
              r48.xy = r48.xy * float2(-2,-2) + float2(3,3);
              r48.xy = r48.zw * r48.xy;
              r16.w = r48.x * r16.w;
              r16.w = r16.w * r48.y;
              r18.y = cmp(0 < r16.w);
              if (r18.y != 0) {
                if (3 == 0) r18.y = 0; else if (3+27 < 32) {                 r18.y = (uint)r39.w << (32-(3 + 27)); r18.y = (uint)r18.y >> (32-3);                } else r18.y = (uint)r39.w >> 27;
                r18.y = cmp((int)r18.y != 1);
                if (r18.y != 0) {
                  r18.y = abs(r18.x) * -0.200000003 + 0.400000006;
                  r19.w = cmp(r18.x < 0);
                  r18.y = r19.w ? -r18.y : r18.y;
                  r48.xyz = r1.xyz * r18.yyy + v6.xyz;
                  r48.xyz = r48.xyz + -r42.xyz;
                  r18.y = max(abs(r48.y), abs(r48.z));
                  r18.y = max(abs(r48.x), r18.y);
                  r18.y = r43.x / r18.y;
                  r18.y = r18.y + r43.y;
                  r19.w = dot(r48.xyz, r48.xyz);
                  r19.w = rsqrt(r19.w);
                  r18.y = max(6.10351563e-05, r18.y);
                  r23.w = (int)r39.w & 0x0000ffff;
                  r49.w = (uint)r23.w;
                  r23.w = 0;
                  r25.w = 0;
                  while (true) {
                    r28.w = cmp((int)r25.w >= 8);
                    if (r28.w != 0) break;
                    r50.y = dot(icb[r25.w+0].yx, r15.xy);
                    r50.z = dot(icb[r25.w+0].yx, r15.yz);
                    r50.yz = r50.yz * r41.yy;
                    r50.x = r50.y * r9.x;
                    r50.w = r50.y * r6.x;
                    r49.xyz = r48.xyz * r19.www + r50.xzw;
                    r28.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r49.xyzw, r18.y).x;
                    r23.w = r28.w * 0.125 + r23.w;
                    r25.w = (int)r25.w + 1;
                  }
                } else {
                  r23.w = 1;
                }
                r16.w = r23.w * r16.w;
                r18.y = cmp(0 < r16.w);
                if (r18.y != 0) {
                  r18.y = r39.x * r6.y;
                  r18.y = 0.25 * r18.y;
                  r19.w = dot(r45.xyz, r10.xyz);
                  r25.w = dot(r10.xyz, r47.xyz);
                  r28.w = -r19.w * r19.w + r44.x;
                  r14.w = r19.w * r25.w + -r14.w;
                  r14.w = saturate(r14.w / r28.w);
                  r19.w = r28.w / r44.x;
                  r19.w = 10 * r19.w;
                  r19.w = min(1, r19.w);
                  r14.w = r14.w + -r16.z;
                  r14.w = r19.w * r14.w + r16.z;
                  r45.xyz = r14.www * r45.xyz + r46.xyz;
                  r45.xyz = r13.www ? r45.xyz : r38.yzw;
                  r45.xyz = -v6.xyz + r45.xyz;
                  r13.w = dot(r45.xyz, r45.xyz);
                  r13.w = rsqrt(r13.w);
                  r46.xyz = r45.xyz * r13.www;
                  if (4 == 0) r14.w = 0; else if (4+16 < 32) {                   r14.w = (uint)r39.w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r39.w >> 16;
                  r16.z = cmp(0 < (uint)r14.w);
                  r16.z = r4.w ? r16.z : 0;
                  if (r16.z != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = (int)r14.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.z, r14.w, l(52), t12.xxxx
                  r16.z = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r14.w, l(100), t12.xyzw
                  r47.x = samp0[]..swiz;
                  r47.y = samp0[]..swiz;
                  r47.z = samp0[]..swiz;
                  r47.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r14.w, l(116), t12.xyzw
                  r48.x = samp0[]..swiz;
                  r48.y = samp0[]..swiz;
                  r48.z = samp0[]..swiz;
                  r48.w = samp0[]..swiz;
                    r19.w = abs(r18.x) * -0.200000003 + 0.400000006;
                    r25.w = cmp(r18.x < 0);
                    r19.w = r25.w ? -r19.w : r19.w;
                    r21.xyz = r1.xyz * r19.www + v6.xyz;
                    r19.w = dot(r47.xyzw, r21.xyzw);
                    r25.w = dot(r48.xyzw, r21.xyzw);
                    r28.w = cmp(r25.w < r19.w);
                    if (r28.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r14.w, l(68), t12.xyzw
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                    r47.z = samp0[]..swiz;
                    r47.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r14.w, l(84), t12.xyzw
                    r48.x = samp0[]..swiz;
                    r48.y = samp0[]..swiz;
                    r48.z = samp0[]..swiz;
                    r48.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r14.w, l(132), t12.xyzw
                    r49.x = samp0[]..swiz;
                    r49.y = samp0[]..swiz;
                    r49.z = samp0[]..swiz;
                    r49.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r14.w, l(148), t12.xyzw
                    r50.x = samp0[]..swiz;
                    r50.y = samp0[]..swiz;
                    r50.z = samp0[]..swiz;
                    r50.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xy, r14.w, l(164), t12.xyxx
                    r51.x = samp0[]..swiz;
                    r51.y = samp0[]..swiz;
                      r47.x = dot(r47.xyzw, r21.xyzw);
                      r47.y = dot(r48.xyzw, r21.xyzw);
                      r21.xy = r47.xy / r25.ww;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r50.zw;
                      r21.xy = r21.xy * r50.xy;
                      r47.xy = r16.zz / r49.xz;
                      r47.zw = float2(1,1) + -r47.xy;
                      r47.zw = cmp(r21.xy >= r47.zw);
                      r47.xy = cmp(r47.xy >= r21.xy);
                      r47.xy = (int2)r47.xy | (int2)r47.zw;
                      r21.z = (int)r47.y | (int)r47.x;
                      r21.xy = saturate(r21.xy);
                      r47.xy = r21.xy * r49.xz + r49.yw;
                      r21.x = r51.y * r25.w;
                      r19.w = r51.x * r25.w + r19.w;
                      r19.w = r19.w / r21.x;
                    } else {
                      r21.z = -1;
                    }
                    r21.x = (int)r28.w | (int)r21.z;
                    if (r21.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(28), t12.xxxx
                    r14.w = samp0[]..swiz;
                      r19.w = max(6.10351563e-05, r19.w);
                      r14.w = (int)r14.w & 0x0000ffff;
                      if (r10.w != 0) {
                        r21.z = (uint)r14.w;
                        r25.w = 0;
                        r28.w = 0;
                        while (true) {
                          r29.w = cmp((int)r28.w >= 8);
                          if (r29.w != 0) break;
                          r48.x = dot(icb[r28.w+0].yx, r15.xw);
                          r48.y = dot(icb[r28.w+0].yx, r25.xz);
                          r21.xy = r48.xy * r16.zz + r47.xy;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r19.w).x;
                          r25.w = r21.x * 0.125 + r25.w;
                          r28.w = (int)r28.w + 1;
                        }
                      } else {
                        r47.z = (uint)r14.w;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r47.xyz, r19.w).x;
                      }
                      r14.w = r25.w * r25.w;
                      r14.w = r14.w * r25.w;
                    } else {
                      r14.w = 1;
                    }
                    r16.w = r16.w * r14.w;
                  } else {
                    if (4 == 0) r14.w = 0; else if (4+20 < 32) {                     r14.w = (uint)r39.w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                    } else r14.w = (uint)r39.w >> 20;
                    r16.z = cmp(0 < (uint)r14.w);
                    r16.z = r16.z ? r4.z : 0;
                    if (r16.z != 0) {
                      r14.w = (int)r14.w + numLights;
                      r14.w = (int)r14.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.z, r14.w, l(52), t12.xxxx
                    r16.z = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r14.w, l(100), t12.xyzw
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                    r47.z = samp0[]..swiz;
                    r47.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r14.w, l(116), t12.xyzw
                    r48.x = samp0[]..swiz;
                    r48.y = samp0[]..swiz;
                    r48.z = samp0[]..swiz;
                    r48.w = samp0[]..swiz;
                      r19.w = abs(r18.x) * -0.200000003 + 0.400000006;
                      r21.x = cmp(r18.x < 0);
                      r19.w = r21.x ? -r19.w : r19.w;
                      r22.xyz = r1.xyz * r19.www + v6.xyz;
                      r19.w = dot(r47.xyzw, r22.xyzw);
                      r21.x = dot(r48.xyzw, r22.xyzw);
                      r21.y = cmp(r21.x < r19.w);
                      if (r21.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r14.w, l(68), t12.xyzw
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                      r47.z = samp0[]..swiz;
                      r47.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r14.w, l(84), t12.xyzw
                      r48.x = samp0[]..swiz;
                      r48.y = samp0[]..swiz;
                      r48.z = samp0[]..swiz;
                      r48.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r14.w, l(132), t12.xyzw
                      r49.x = samp0[]..swiz;
                      r49.y = samp0[]..swiz;
                      r49.z = samp0[]..swiz;
                      r49.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r14.w, l(148), t12.xyzw
                      r50.x = samp0[]..swiz;
                      r50.y = samp0[]..swiz;
                      r50.z = samp0[]..swiz;
                      r50.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xy, r14.w, l(164), t12.xyxx
                      r51.x = samp0[]..swiz;
                      r51.y = samp0[]..swiz;
                        r47.x = dot(r47.xyzw, r22.xyzw);
                        r47.y = dot(r48.xyzw, r22.xyzw);
                        r22.xy = r47.xy / r21.xx;
                        r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r22.xy = r22.xy + r50.zw;
                        r22.xy = r22.xy * r50.xy;
                        r47.xy = r16.zz / r49.xz;
                        r47.zw = float2(1,1) + -r47.xy;
                        r47.zw = cmp(r22.xy >= r47.zw);
                        r47.xy = cmp(r47.xy >= r22.xy);
                        r47.xy = (int2)r47.xy | (int2)r47.zw;
                        r21.z = (int)r47.y | (int)r47.x;
                        r22.xy = saturate(r22.xy);
                        r22.xy = r22.xy * r49.xz + r49.yw;
                        r28.w = r51.y * r21.x;
                        r19.w = r51.x * r21.x + r19.w;
                        r19.w = r19.w / r28.w;
                      } else {
                        r21.z = -1;
                      }
                      r21.x = (int)r21.y | (int)r21.z;
                      if (r21.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(28), t12.xxxx
                      r14.w = samp0[]..swiz;
                        r19.w = max(6.10351563e-05, r19.w);
                        r14.w = (int)r14.w & 0x0000ffff;
                        if (r10.w != 0) {
                          r21.z = (uint)r14.w;
                          r28.w = 0;
                          r29.w = 0;
                          while (true) {
                            r30.w = cmp((int)r29.w >= 8);
                            if (r30.w != 0) break;
                            r47.x = dot(icb[r29.w+0].xy, r8.xy);
                            r47.y = dot(icb[r29.w+0].yx, r8.xz);
                            r21.xy = r47.xy * r16.zz + r22.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r19.w).x;
                            r28.w = r21.x * 0.125 + r28.w;
                            r29.w = (int)r29.w + 1;
                          }
                        } else {
                          r22.z = (uint)r14.w;
                          r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r19.w).x;
                        }
                        r14.w = r28.w * r28.w;
                        r14.w = r14.w * r28.w;
                      } else {
                        r14.w = 1;
                      }
                      r16.w = r16.w * r14.w;
                    }
                  }
                  r14.w = -abs(r18.x) * r3.x + 1;
                  r14.w = r14.w * r14.w;
                  r14.w = -r14.w * 0.620000005 + 0.620000005;
                  r14.w = r14.w + -abs(r18.x);
                  r14.w = r6.z * r14.w + abs(r18.x);
                  r14.w = r14.w * r16.w;
                  r39.x = r38.x;
                  r16.z = cmp(0 < r18.x);
                  r21.xyz = r14.www * r39.xyz + r17.xyz;
                  r18.x = saturate(dot(r1.xyz, r46.xyz));
                  r22.xyz = r45.xyz * r13.www + r5.xyz;
                  r13.w = dot(r22.xyz, r22.xyz);
                  r13.w = rsqrt(r13.w);
                  r22.xyz = r22.xyz * r13.www;
                  r13.w = dot(r22.xyz, r5.xyz);
                  r19.w = dot(r1.xyz, r22.xyz);
                  r22.x = abs(r19.w) * r6.y + -abs(r19.w);
                  r19.w = abs(r19.w) * r22.x + 1;
                  r22.x = r18.x * r0.w + r1.w;
                  r19.w = r19.w * r19.w;
                  r19.w = r19.w * r22.x;
                  r19.w = rcp(r19.w);
                  r18.x = r18.x * r18.y;
                  r18.x = r19.w * r18.x;
                  r16.w = r18.x * r16.w;
                  r22.xyz = r16.www * r39.xyz + r37.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r18.x = r13.w * r13.w;
                  r18.x = r18.x * r18.x;
                  r13.w = r18.x * r13.w;
                  r13.w = r16.w * r13.w;
                  r45.xyz = r13.www * r39.xyz + r36.xyz;
                  r46.xyz = r14.www * r39.xyz + r35.xyz;
                  r17.xyz = r16.zzz ? r21.xyz : r17.xyz;
                  r35.xyz = r16.zzz ? r35.xyz : r46.xyz;
                  r36.xyz = r16.zzz ? r45.xyz : r36.xyz;
                  r37.xyz = r16.zzz ? r22.xyz : r37.xyz;
                }
              }
            }
            break;
            case 2 :            r21.xy = r41.zw;
            r21.z = r42.w;
            r21.xyz = -v6.xyz + r21.xyz;
            r13.w = dot(r21.xyz, r21.xyz);
            r13.w = rsqrt(r13.w);
            r22.xyz = r21.xyz * r13.www;
            r14.w = dot(r1.xyz, r22.xyz);
            r16.z = cmp(0 < abs(r14.w));
            if (r16.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r12.w, l(112), t12.yzwx
            r45.x = samp0[]..swiz;
            r45.y = samp0[]..swiz;
            r45.z = samp0[]..swiz;
            r45.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r12.w, l(128), t12.zxyw
            r46.x = samp0[]..swiz;
            r46.y = samp0[]..swiz;
            r46.z = samp0[]..swiz;
            r46.w = samp0[]..swiz;
              r47.xyz = r45.xyz;
              r47.w = r46.y;
              r16.z = dot(r47.xyzw, r20.xyzw);
              r16.w = cmp(r16.z < 1);
              if (r16.w != 0) {
                r22.xyz = float3(1,1,1);
                r16.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r12.w, l(172), t12.yzwx
              r48.x = samp0[]..swiz;
              r48.y = samp0[]..swiz;
              r48.z = samp0[]..swiz;
              r48.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r12.w, l(188), t12.wxyz
              r49.x = samp0[]..swiz;
              r49.y = samp0[]..swiz;
              r49.z = samp0[]..swiz;
              r49.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r12.w, l(204), t12.xyzw
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
              r50.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.x, r12.w, l(236), t12.xxxx
              r18.x = samp0[]..swiz;
                r51.xyz = -v6.xyz + r38.yzw;
                r18.y = r41.x * r41.x;
                r19.w = dot(r51.xyz, r51.xyz);
                r18.y = r18.y / r19.w;
                r18.y = min(1, r18.y);
                r40.xy = saturate(r16.zz * r40.xz + r40.yw);
                r40.zw = r40.xy * r40.xy;
                r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
                r40.xy = r40.zw * r40.xy;
                r18.y = r40.x * r18.y;
                r18.y = r18.y * r40.y;
                r42.w = r43.x;
                r40.x = dot(r42.xyzw, r20.xyzw);
                r51.xyz = r43.yzw;
                r51.w = r44.w;
                r40.y = dot(r51.xyzw, r20.xyzw);
                r23.xy = r40.xy / r16.zz;
                r16.z = cmp(r48.w < 0.00048828125);
                if (r16.z != 0) {
                  r49.y = r50.x;
                  r40.xy = saturate(abs(r23.xy) * r49.zw + r49.xy);
                  r40.zw = r40.xy * r40.xy;
                  r40.xy = r40.xy * float2(-2,-2) + float2(3,3);
                  r40.xy = r40.zw * r40.xy;
                  r16.z = r40.x * r40.y;
                } else {
                  r48.w = r49.y;
                  r40.xyzw = saturate(r48.xyzw * abs(r23.yyxx));
                  r40.xyzw = log2(r40.xyzw);
                  r40.xyzw = r49.xxxx * r40.xyzw;
                  r40.xyzw = exp2(r40.xyzw);
                  r40.xy = r40.xy + r40.zw;
                  r40.xy = log2(r40.xy);
                  r40.xy = r50.xx * r40.xy;
                  r40.xy = exp2(r40.xy);
                  r19.w = r49.z * r40.x;
                  r29.w = r49.w * r40.y + -1;
                  r19.w = r49.w * r40.y + -r19.w;
                  r19.w = saturate(r29.w / r19.w);
                  r29.w = r19.w * r19.w;
                  r19.w = r19.w * -2 + 3;
                  r16.z = r29.w * r19.w;
                }
                r16.w = r18.y * r16.z;
                r16.z = (int)r18.x & 255;
                if (r16.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyz, r12.w, l(220), t12.xyzx
                r40.x = samp0[]..swiz;
                r40.y = samp0[]..swiz;
                r40.z = samp0[]..swiz;
                  r18.x = dot(r50.yzw, r23.xyz);
                  r18.y = dot(r40.xyz, r23.xyz);
                  r40.xy = frac(r18.xy);
                  r16.z = (int)r16.z + -1;
                  r40.z = (uint)r16.z;
                  r22.xyz = gCookieArray.SampleLevel(samplerLinear_s, r40.xyz, 0).xyz;
                } else {
                  r22.xyz = float3(1,1,1);
                }
              }
              r38.yz = r39.yz;
              r22.xyz = r38.xyz * r22.xyz;
              r16.z = cmp(0 < r16.w);
              if (r16.z != 0) {
                if (3 == 0) r16.z = 0; else if (3+27 < 32) {                 r16.z = (uint)r39.w << (32-(3 + 27)); r16.z = (uint)r16.z >> (32-3);                } else r16.z = (uint)r39.w >> 27;
                r16.z = cmp((int)r16.z != 1);
                if (r16.z != 0) {
                  r16.z = abs(r14.w) * -0.200000003 + 0.400000006;
                  r18.x = cmp(r14.w < 0);
                  r16.z = r18.x ? -r16.z : r16.z;
                  r24.xyz = r1.xyz * r16.zzz + v6.xyz;
                  r45.xyz = r44.xyz;
                  r16.z = dot(r45.xyzw, r24.xyzw);
                  r18.x = dot(r47.xyzw, r24.xyzw);
                  r18.y = cmp(r18.x >= r16.z);
                  if (r18.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.y, r12.w, l(144), t12.xxxx
                  r46.y = samp0[]..swiz;
                    r42.w = r43.x;
                    r23.x = dot(r42.xyzw, r24.xyzw);
                    r44.xyz = r43.yzw;
                    r23.y = dot(r44.xyzw, r24.xyzw);
                    r23.xy = r23.xy / r18.xx;
                    r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r24.xy = r23.xy * r46.zw + r46.xy;
                    r12.w = r16.z / r18.x;
                    r12.w = max(6.10351563e-05, r12.w);
                    r16.z = (int)r39.w & 0x0000ffff;
                    if (r10.w != 0) {
                      r38.z = (uint)r16.z;
                      r18.xy = float2(0,0);
                      while (true) {
                        r19.w = cmp((int)r18.y >= 8);
                        if (r19.w != 0) break;
                        r23.x = dot(icb[r18.y+0].xy, r28.xy);
                        r23.y = dot(icb[r18.y+0].yx, r28.xz);
                        r38.xy = r23.xy * r41.yy + r24.xy;
                        r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r12.w).x;
                        r18.x = r19.w * 0.125 + r18.x;
                        r18.y = (int)r18.y + 1;
                      }
                    } else {
                      r24.z = (uint)r16.z;
                      r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r12.w).x;
                    }
                    r12.w = r18.x * r18.x;
                    r12.w = r12.w * r18.x;
                  } else {
                    r12.w = 1;
                  }
                } else {
                  r12.w = 1;
                }
                r12.w = r16.w * r12.w;
                r16.z = cmp(0 < r12.w);
                if (r16.z != 0) {
                  r16.z = r39.x * r6.y;
                  r16.z = 0.25 * r16.z;
                  if (4 == 0) r16.w = 0; else if (4+16 < 32) {                   r16.w = (uint)r39.w << (32-(4 + 16)); r16.w = (uint)r16.w >> (32-4);                  } else r16.w = (uint)r39.w >> 16;
                  r18.y = cmp(0 < (uint)r16.w);
                  r18.y = r4.w ? r18.y : 0;
                  if (r18.y != 0) {
                    r16.w = (int)r16.w + numLights;
                    r16.w = (int)r16.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.y, r16.w, l(52), t12.xxxx
                  r18.y = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r16.w, l(68), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r16.w, l(84), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r16.w, l(100), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r16.w, l(116), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r16.w, l(132), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r16.w, l(148), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                    r19.w = abs(r14.w) * -0.200000003 + 0.400000006;
                    r23.x = cmp(r14.w < 0);
                    r19.w = r23.x ? -r19.w : r19.w;
                    r26.xyz = r1.xyz * r19.www + v6.xyz;
                    r23.x = dot(r38.xyzw, r26.xyzw);
                    r23.y = dot(r40.xyzw, r26.xyzw);
                    r19.w = dot(r41.xyzw, r26.xyzw);
                    r24.x = dot(r42.xyzw, r26.xyzw);
                    r24.y = cmp(r24.x < r19.w);
                    r23.xy = r23.xy / r24.xx;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.xy = r23.xy + r44.zw;
                    r23.xy = r23.xy * r44.xy;
                    r26.xy = r18.yy / r43.xz;
                    r38.xy = float2(1,1) + -r26.xy;
                    r38.xy = cmp(r23.xy >= r38.xy);
                    r26.xy = cmp(r26.xy >= r23.xy);
                    r26.xy = (int2)r26.xy | (int2)r38.xy;
                    r24.z = (int)r26.y | (int)r26.x;
                    r24.y = (int)r24.y | (int)r24.z;
                    if (r24.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r16.w, l(28), t12.xxxx
                    r24.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xy, r16.w, l(164), t12.xyxx
                    r26.x = samp0[]..swiz;
                    r26.y = samp0[]..swiz;
                      r23.xy = saturate(r23.xy);
                      r38.xy = r23.xy * r43.xz + r43.yw;
                      r16.w = r26.y * r24.x;
                      r19.w = r26.x * r24.x + r19.w;
                      r16.w = r19.w / r16.w;
                      r16.w = max(6.10351563e-05, r16.w);
                      r19.w = r24.y ? 0.000000 : 0;
                      if (r10.w != 0) {
                        r24.z = (uint)r19.w;
                        r23.xy = float2(0,0);
                        while (true) {
                          r26.x = cmp((int)r23.y >= 8);
                          if (r26.x != 0) break;
                          r26.x = dot(icb[r23.y+0].xy, r29.xy);
                          r26.y = dot(icb[r23.y+0].yx, r29.xz);
                          r24.xy = r26.xy * r18.yy + r38.xy;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r16.w).x;
                          r23.x = r24.x * 0.125 + r23.x;
                          r23.y = (int)r23.y + 1;
                        }
                      } else {
                        r38.z = (uint)r19.w;
                        r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r16.w).x;
                      }
                      r16.w = r23.x * r23.x;
                      r16.w = r16.w * r23.x;
                    } else {
                      r16.w = 1;
                    }
                    r12.w = r16.w * r12.w;
                  } else {
                    if (4 == 0) r16.w = 0; else if (4+20 < 32) {                     r16.w = (uint)r39.w << (32-(4 + 20)); r16.w = (uint)r16.w >> (32-4);                    } else r16.w = (uint)r39.w >> 20;
                    r18.y = cmp(0 < (uint)r16.w);
                    r18.y = r18.y ? r4.z : 0;
                    if (r18.y != 0) {
                      r16.w = (int)r16.w + numLights;
                      r16.w = (int)r16.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.y, r16.w, l(52), t12.xxxx
                    r18.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r16.w, l(68), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r16.w, l(84), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r16.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r16.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r16.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r16.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                      r19.w = abs(r14.w) * -0.200000003 + 0.400000006;
                      r23.y = cmp(r14.w < 0);
                      r19.w = r23.y ? -r19.w : r19.w;
                      r27.xyz = r1.xyz * r19.www + v6.xyz;
                      r24.x = dot(r38.xyzw, r27.xyzw);
                      r24.y = dot(r39.xyzw, r27.xyzw);
                      r19.w = dot(r40.xyzw, r27.xyzw);
                      r23.y = dot(r41.xyzw, r27.xyzw);
                      r24.z = cmp(r23.y < r19.w);
                      r24.xy = r24.xy / r23.yy;
                      r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r24.xy = r24.xy + r43.zw;
                      r24.xy = r24.xy * r43.xy;
                      r26.xy = r18.yy / r42.xz;
                      r27.xy = float2(1,1) + -r26.xy;
                      r27.xy = cmp(r24.xy >= r27.xy);
                      r26.xy = cmp(r26.xy >= r24.xy);
                      r26.xy = (int2)r26.xy | (int2)r27.xy;
                      r26.x = (int)r26.y | (int)r26.x;
                      r24.z = (int)r24.z | (int)r26.x;
                      if (r24.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.z, r16.w, l(28), t12.xxxx
                      r24.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xy, r16.w, l(164), t12.xyxx
                      r26.x = samp0[]..swiz;
                      r26.y = samp0[]..swiz;
                        r24.xy = saturate(r24.xy);
                        r27.xy = r24.xy * r42.xz + r42.yw;
                        r16.w = r26.y * r23.y;
                        r19.w = r26.x * r23.y + r19.w;
                        r16.w = r19.w / r16.w;
                        r16.w = max(6.10351563e-05, r16.w);
                        r19.w = r24.z ? 0.000000 : 0;
                        if (r10.w != 0) {
                          r24.z = (uint)r19.w;
                          r23.y = 0;
                          r26.x = 0;
                          while (true) {
                            r26.y = cmp((int)r26.x >= 8);
                            if (r26.y != 0) break;
                            r38.x = dot(icb[r26.x+0].xy, r30.xy);
                            r38.y = dot(icb[r26.x+0].yx, r30.xz);
                            r24.xy = r38.xy * r18.yy + r27.xy;
                            r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r16.w).x;
                            r23.y = r24.x * 0.125 + r23.y;
                            r26.x = (int)r26.x + 1;
                          }
                        } else {
                          r27.z = (uint)r19.w;
                          r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r16.w).x;
                        }
                        r16.w = r23.y * r23.y;
                        r16.w = r16.w * r23.y;
                      } else {
                        r16.w = 1;
                      }
                      r12.w = r16.w * r12.w;
                    }
                  }
                  r16.w = -abs(r14.w) * r3.x + 1;
                  r16.w = r16.w * r16.w;
                  r16.w = -r16.w * 0.620000005 + 0.620000005;
                  r16.w = r16.w + -abs(r14.w);
                  r16.w = r6.z * r16.w + abs(r14.w);
                  r16.w = r16.w * r12.w;
                  r18.y = cmp(0 < r14.w);
                  r24.xyz = r16.www * r22.xyz + r17.xyz;
                  r14.w = saturate(r14.w);
                  r21.xyz = r21.xyz * r13.www + r5.xyz;
                  r13.w = dot(r21.xyz, r21.xyz);
                  r13.w = rsqrt(r13.w);
                  r21.xyz = r21.xyz * r13.www;
                  r13.w = dot(r21.xyz, r5.xyz);
                  r19.w = dot(r1.xyz, r21.xyz);
                  r21.x = abs(r19.w) * r6.y + -abs(r19.w);
                  r19.w = abs(r19.w) * r21.x + 1;
                  r21.x = r14.w * r0.w + r1.w;
                  r19.w = r19.w * r19.w;
                  r19.w = r19.w * r21.x;
                  r19.w = rcp(r19.w);
                  r14.w = r14.w * r16.z;
                  r14.w = r19.w * r14.w;
                  r12.w = r14.w * r12.w;
                  r21.xyz = r12.www * r22.xyz + r37.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r14.w = r13.w * r13.w;
                  r14.w = r14.w * r14.w;
                  r13.w = r14.w * r13.w;
                  r12.w = r13.w * r12.w;
                  r26.xyz = r12.www * r22.xyz + r36.xyz;
                  r22.xyz = r16.www * r22.xyz + r35.xyz;
                  r17.xyz = r18.yyy ? r24.xyz : r17.xyz;
                  r35.xyz = r18.yyy ? r35.xyz : r22.xyz;
                  r36.xyz = r18.yyy ? r26.xyz : r36.xyz;
                  r37.xyz = r18.yyy ? r21.xyz : r37.xyz;
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
    r31.xyz = r17.xyz;
    r32.xyz = r35.xyz;
    r33.xyz = r36.xyz;
    r34.xyz = r37.xyz;
    r9.y = (int)r9.y + 32;
  }
  r6.xy = float2(0,0);
  r12.w = 0;
  r13.yz = float2(0,1);
  r14.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r19.xyzw = float4(0,0,0,0);
  r0.w = 0;
  r1.w = 0;
  while (true) {
    r3.x = cmp((uint)r1.w >= numRefProbes);
    if (r3.x != 0) break;
    r6.z = (uint)r1.w >> 5;
    r12.xyz = (int3)r6.xyz + (int3)r11.xyz;
    r3.x = visibleProbes.Load(r12.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r1.w, l(0), t15.wxyz
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r1.w, l(16), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r1.w, l(32), t15.yxwz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r1.w, l(48), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r1.w, l(64), t15.zwxy
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r1.w, l(80), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r4.zw, r1.w, l(96), t15.xxxy
  r4.z = samp0[]..swiz;
  r4.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r1.w, l(116), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r1.w, l(132), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r1.w, l(148), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r1.w, l(164), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r1.w, l(180), t15.zwxy
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r1.w, l(196), t15.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r1.w, l(212), t15.xyxx
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
    r9.xyw = v6.xyz + -r20.yzw;
    r6.z = dot(r9.xyw, r9.xyw);
    r6.z = sqrt(r6.z);
    r6.z = cmp(probeDebugRadius >= r6.z);
    r7.x = (int)r27.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r7.x, l(0), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r7.x, l(16), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r7.x, l(32), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r7.x, l(48), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r42.xyzw, r7.x, l(64), t16.xyzw
  r42.x = samp0[]..swiz;
  r42.y = samp0[]..swiz;
  r42.z = samp0[]..swiz;
  r42.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r43.xyzw, r7.x, l(80), t16.xyzw
  r43.x = samp0[]..swiz;
  r43.y = samp0[]..swiz;
  r43.z = samp0[]..swiz;
  r43.w = samp0[]..swiz;
    r8.y = dot(r38.xyz, r9.xyw);
    r8.y = saturate(r8.y + r38.w);
    r8.z = dot(r39.xyz, r9.xyw);
    r8.z = saturate(r8.z + r39.w);
    r8.y = r8.y * r8.z;
    r8.z = dot(r40.xyz, r9.xyw);
    r8.z = saturate(r8.z + r40.w);
    r8.y = r8.y * r8.z;
    r8.z = dot(r41.xyz, r9.xyw);
    r8.z = saturate(r8.z + r41.w);
    r8.y = r8.y * r8.z;
    r8.z = dot(r42.xyz, r9.xyw);
    r8.z = saturate(r8.z + r42.w);
    r8.y = r8.y * r8.z;
    r8.z = dot(r43.xyz, r9.xyw);
    r8.z = saturate(r8.z + r43.w);
    r13.x = r8.y * r8.z;
    r8.y = (int)r4.z & 1;
    r8.yz = r8.yy ? r13.xy : r13.zx;
    r12.xy = r27.zw;
    r12.z = r28.z;
    r10.w = dot(r10.xyz, r12.xyz);
    r11.w = dot(r9.xyw, r12.xyz);
    r11.w = r11.w + -r28.w;
    r12.x = cmp(r11.w >= 0);
    r11.w = max(abs(r11.w), r7.z);
    r11.w = r12.x ? r11.w : -r11.w;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r11.w / r10.w;
    r10.w = min(131072, abs(r10.w));
    r28.z = r29.z;
    r11.w = dot(r10.xyz, r28.xyz);
    r12.x = dot(r9.xyw, r28.xyz);
    r12.x = r12.x + -r29.w;
    r12.y = cmp(r12.x >= 0);
    r12.x = max(abs(r12.x), r7.z);
    r12.x = r12.y ? r12.x : -r12.x;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r12.x / r11.w;
    r10.w = min(abs(r11.w), r10.w);
    r29.z = r30.z;
    r11.w = dot(r10.xyz, r29.xyz);
    r12.x = dot(r9.xyw, r29.xyz);
    r12.x = r12.x + -r30.w;
    r12.y = cmp(r12.x >= 0);
    r12.x = max(abs(r12.x), r7.z);
    r12.x = r12.y ? r12.x : -r12.x;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r12.x / r11.w;
    r10.w = min(abs(r11.w), r10.w);
    r30.z = r35.z;
    r11.w = dot(r10.xyz, r30.xyz);
    r12.x = dot(r9.xyw, r30.xyz);
    r12.x = r12.x + -r35.w;
    r12.y = cmp(r12.x >= 0);
    r12.x = max(abs(r12.x), r7.z);
    r12.x = r12.y ? r12.x : -r12.x;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r12.x / r11.w;
    r10.w = min(abs(r11.w), r10.w);
    r35.z = r36.x;
    r11.w = dot(r10.xyz, r35.xyz);
    r12.x = dot(r9.xyw, r35.xyz);
    r12.x = r12.x + -r36.y;
    r12.y = cmp(r12.x >= 0);
    r12.x = max(abs(r12.x), r7.z);
    r12.x = r12.y ? r12.x : -r12.x;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r12.x / r11.w;
    r10.w = min(abs(r11.w), r10.w);
    r37.zw = r36.zw;
    r11.w = dot(r10.zxy, r37.xzw);
    r12.x = dot(r9.wxy, r37.xzw);
    r12.x = r12.x + -r37.y;
    r12.y = cmp(r12.x >= 0);
    r12.x = max(abs(r12.x), r7.z);
    r12.x = r12.y ? r12.x : -r12.x;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r12.x / r11.w;
    r10.w = min(abs(r11.w), r10.w);
    r12.x = r23.w;
    r12.yz = r24.zw;
    r12.xyz = r12.xyz + r9.xyw;
    r12.xyz = r10.xyz * r10.www + r12.xyz;
    r11.w = dot(r12.xyz, r12.xyz);
    r11.w = sqrt(r11.w);
    r10.w = r10.w / r11.w;
    r10.w = r10.w + r10.w;
    r10.w = sqrt(r10.w);
    r10.w = r6.w * 5 + r10.w;
    r10.w = -0.844799995 + r10.w;
    r20.y = r21.z;
    r20.z = r22.x;
    r28.x = dot(r12.xyz, r20.xyz);
    r29.xy = r21.xw;
    r29.z = r22.w;
    r28.y = dot(r12.xyz, r29.xyz);
    r22.x = r21.y;
    r28.z = dot(r12.xyz, r22.xyz);
    if (6 == 0) r12.x = 0; else if (6+25 < 32) {     r12.x = (uint)r27.y << (32-(6 + 25)); r12.x = (uint)r12.x >> (32-6);    } else r12.x = (uint)r27.y >> 25;
    if (9 == 0) r12.y = 0; else if (9+16 < 32) {     r12.y = (uint)r27.y << (32-(9 + 16)); r12.y = (uint)r12.y >> (32-9);    } else r12.y = (uint)r27.y >> 16;
    r28.w = (uint)r12.y;
    r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r10.w).xyz;
    r21.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
    r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
    r10.w = (int)r21.y | (int)r21.x;
    r10.w = (int)r21.z | (int)r10.w;
    r15.yzw = r10.www ? float3(1,1,0) : r15.yzw;
    r21.x = dot(r9.xyw, r20.xyz);
    r21.y = dot(r9.xyw, r29.xyz);
    r21.z = dot(r9.xyw, r22.xyz);
    r21.xyz = saturate(r21.xyz * r23.xyz + float3(0.5,0.5,0.5));
    r24.z = r26.x;
    r21.xyz = r21.xyz * r24.xyz + r26.yzw;
    r28.x = dot(r1.xyz, r20.xyz);
    r28.y = dot(r1.xyz, r29.xyz);
    r28.z = dot(r1.xyz, r22.xyz);
    r20.xyz = cmp(float3(0,0,0) < r28.xyz);
    r14.z = r20.x ? 0 : 0.5;
    r22.xyz = r21.xyz + r14.xyz;
    r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r16.z = r20.y ? 0 : 0.5;
    r20.xyw = r21.xyz + r16.xyz;
    r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
    r17.z = r20.z ? 0 : 0.5;
    r21.xyz = r21.xyz + r17.xyz;
    r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r23.xyz = r28.xyz * r28.xyz;
    r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
    r26.xyz = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
    r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
    r10.w = (int)r26.y | (int)r26.x;
    r10.w = (int)r26.z | (int)r10.w;
    r24.xyz = r10.www ? float3(1,1,0) : r24.xyz;
    r26.xyzw = r19.xyzw;
    r10.w = r0.w;
    r11.w = r3.x;
    while (true) {
      if (r11.w == 0) break;
      r12.y = firstbitlow((uint)r11.w);
      r12.y = 1 << (int)r12.y;
      r12.z = (int)r11.w & (int)r12.y;
      if (r12.z != 0) {
        r12.y = ~(int)r12.y;
        r11.w = (int)r11.w & (int)r12.y;
        if (r6.z != 0) {
          r12.y = r4.z;
          r18.xy = r8.yz;
          r12.z = 1;
          while (true) {
            r13.x = cmp((int)r12.z >= (int)r12.x);
            if (r13.x != 0) break;
            r13.x = (int)r7.x + (int)r12.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.x, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.x, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.x, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r13.x, l(48), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r13.x, l(64), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r13.x, l(80), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
            r13.x = dot(r28.xyz, r9.xyw);
            r13.x = saturate(r13.x + r28.w);
            r13.x = r18.x * r13.x;
            r13.w = dot(r29.xyz, r9.xyw);
            r13.w = saturate(r13.w + r29.w);
            r13.x = r13.x * r13.w;
            r13.w = dot(r30.xyz, r9.xyw);
            r13.w = saturate(r13.w + r30.w);
            r13.x = r13.x * r13.w;
            r13.w = dot(r35.xyz, r9.xyw);
            r13.w = saturate(r13.w + r35.w);
            r13.x = r13.x * r13.w;
            r13.w = dot(r36.xyz, r9.xyw);
            r13.w = saturate(r13.w + r36.w);
            r13.x = r13.x * r13.w;
            r13.w = dot(r37.xyz, r9.xyw);
            r13.w = saturate(r13.w + r37.w);
            r18.x = r13.x * r13.w;
            r14.z = (uint)r12.y >> 2;
            if (1 == 0) r14.w = 0; else if (1+2 < 32) {             r14.w = (uint)r12.y << (32-(1 + 2)); r14.w = (uint)r14.w >> (32-1);            } else r14.w = (uint)r12.y >> 2;
            r16.z = (int)r14.z & 2;
            r16.w = max(r18.y, r18.x);
            r13.x = -r13.x * r13.w + 1;
            r13.x = r18.y * r13.x;
            r18.w = r16.z ? r13.x : r16.w;
            r18.xy = r14.ww ? r18.xy : r18.zw;
            r12.z = (int)r12.z + 1;
            r12.y = r14.z;
          }
          r18.y = saturate(r18.y);
          r12.y = r18.y * r4.w;
          r12.z = cmp(0 < r12.y);
          if (r12.z != 0) {
            r28.w = r18.y * r4.w + r26.w;
            r12.y = r12.y * r27.x;
            r27.yzw = r23.xyz * r12.yyy;
            r29.xyz = r27.zzz * r20.xyw;
            r29.xyz = r22.xyz * r27.yyy + r29.xyz;
            r27.yzw = r21.xyz * r27.www + r29.xyz;
            r27.yzw = r27.yzw * r24.xyz;
            r12.z = dot(r27.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r13.x = r12.z * r7.w;
            r27.yzw = r15.yzw * r12.yyy;
            r12.y = dot(r27.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r12.y = r7.w * r12.z + r12.y;
            r12.y = r13.x / r12.y;
            r28.xyz = r27.yzw * r12.yyy + r26.xyz;
          } else {
            r28.xyzw = r26.xyzw;
          }
          r10.w = -1;
          r26.xyzw = r28.xyzw;
          break;
        }
      }
    }
    if (r10.w != 0) {
      r19.xyzw = r26.xyzw;
      r0.w = -1;
      break;
    }
    r1.w = (int)r1.w + 32;
    r19.xyzw = r26.xyzw;
    r0.w = r10.w;
  }
  if (r0.w == 0) {
    r0.w = numRefProbes + -numOverrideProbes;
    r1.w = (int)r0.w & -32;
    r3.x = (int)r0.w + (int)-r1.w;
    r4.z = numRefProbes & -32;
    r4.w = (int)-r4.z + numRefProbes;
    r6.xy = float2(0,0);
    r12.w = 0;
    r13.yz = float2(0,1);
    r9.x = 1;
    r7.x = r19.w;
    r6.w = r1.w;
    while (true) {
      r7.z = cmp((uint)r6.w >= numRefProbes);
      if (r7.z != 0) break;
      r6.z = (uint)r6.w >> 5;
      r12.xyz = (int3)r6.xyz + (int3)r11.xyz;
      r6.z = visibleProbes.Load(r12.xyzw).x;
      r7.z = cmp((int)r1.w == (int)r6.w);
      bitmask.w = ((~(-1 << r3.x)) << 0) & 0xffffffff;  r7.w = (((uint)0 << 0) & bitmask.w) | ((uint)r6.z & ~bitmask.w);
      r6.z = r7.z ? r7.w : r6.z;
      r7.z = cmp((int)r4.z == (int)r6.w);
      if (r4.w == 0) r7.w = 0; else if (r4.w+0 < 32) {       r7.w = (uint)r6.z << (32-(r4.w + 0)); r7.w = (uint)r7.w >> (32-r4.w);      } else r7.w = (uint)r6.z >> 0;
      r6.z = r7.z ? r7.w : r6.z;
      r7.z = (int)r6.w + numLights;
      r7.w = r7.x;
      r8.y = r6.z;
      while (true) {
        if (r8.y == 0) break;
        r8.z = firstbitlow((uint)r8.y);
        r9.w = 1 << (int)r8.z;
        r10.w = (int)r8.y & (int)r9.w;
        if (r10.w != 0) {
          r8.y = (int)r8.y ^ (int)r9.w;
          r9.w = (int)r7.z + (int)r8.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyzw, r9.w, l(0), t11.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r9.w, l(16), t11.xyxx
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
          r14.xyz = -v6.xyz + r14.xyz;
          r12.z = r14.w;
          r12.xyz = cmp(abs(r14.xyz) < r12.zxy);
          r9.w = r12.y ? r12.x : 0;
          r9.w = r12.z ? r9.w : 0;
          if (r9.w != 0) {
            r8.z = (int)r6.w + (int)r8.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xyz, r8.z, l(0), t15.xyzx
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xy, r8.z, l(96), t15.xyxx
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.z, r8.z, l(120), t15.xxxx
          r8.z = samp0[]..swiz;
            r12.xyz = v6.xyz + -r12.xyz;
            r9.w = (int)r8.z & 0x0000ffff;
            if (6 == 0) r8.z = 0; else if (6+25 < 32) {             r8.z = (uint)r8.z << (32-(6 + 25)); r8.z = (uint)r8.z >> (32-6);            } else r8.z = (uint)r8.z >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r9.w, l(0), t16.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r9.w, l(16), t16.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r9.w, l(32), t16.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r9.w, l(48), t16.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r9.w, l(64), t16.xyzw
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r22.xyzw, r9.w, l(80), t16.xyzw
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
            r10.w = dot(r16.xyz, r12.xyz);
            r10.w = saturate(r10.w + r16.w);
            r11.w = dot(r17.xyz, r12.xyz);
            r11.w = saturate(r11.w + r17.w);
            r10.w = r11.w * r10.w;
            r11.w = dot(r18.xyz, r12.xyz);
            r11.w = saturate(r11.w + r18.w);
            r10.w = r11.w * r10.w;
            r11.w = dot(r20.xyz, r12.xyz);
            r11.w = saturate(r11.w + r20.w);
            r10.w = r11.w * r10.w;
            r11.w = dot(r21.xyz, r12.xyz);
            r11.w = saturate(r11.w + r21.w);
            r10.w = r11.w * r10.w;
            r11.w = dot(r22.xyz, r12.xyz);
            r11.w = saturate(r11.w + r22.w);
            r13.x = r11.w * r10.w;
            r10.w = (int)r14.x & 1;
            r13.xw = r10.ww ? r13.xy : r13.zx;
            r10.w = r14.x;
            r16.xy = r13.xw;
            r11.w = 1;
            while (true) {
              r14.z = cmp((int)r11.w >= (int)r8.z);
              if (r14.z != 0) break;
              r14.z = (int)r9.w + (int)r11.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r14.z, l(0), t16.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r14.z, l(16), t16.xyzw
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r14.z, l(32), t16.xyzw
            r20.x = samp0[]..swiz;
            r20.y = samp0[]..swiz;
            r20.z = samp0[]..swiz;
            r20.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r14.z, l(48), t16.xyzw
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.z = samp0[]..swiz;
            r21.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r22.xyzw, r14.z, l(64), t16.xyzw
            r22.x = samp0[]..swiz;
            r22.y = samp0[]..swiz;
            r22.z = samp0[]..swiz;
            r22.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r14.z, l(80), t16.xyzw
            r23.x = samp0[]..swiz;
            r23.y = samp0[]..swiz;
            r23.z = samp0[]..swiz;
            r23.w = samp0[]..swiz;
              r14.z = dot(r17.xyz, r12.xyz);
              r14.z = saturate(r14.z + r17.w);
              r14.z = r16.x * r14.z;
              r14.w = dot(r18.xyz, r12.xyz);
              r14.w = saturate(r14.w + r18.w);
              r14.z = r14.z * r14.w;
              r14.w = dot(r20.xyz, r12.xyz);
              r14.w = saturate(r14.w + r20.w);
              r14.z = r14.z * r14.w;
              r14.w = dot(r21.xyz, r12.xyz);
              r14.w = saturate(r14.w + r21.w);
              r14.z = r14.z * r14.w;
              r14.w = dot(r22.xyz, r12.xyz);
              r14.w = saturate(r14.w + r22.w);
              r14.z = r14.z * r14.w;
              r14.w = dot(r23.xyz, r12.xyz);
              r14.w = saturate(r14.w + r23.w);
              r16.x = r14.z * r14.w;
              r15.y = (uint)r10.w >> 2;
              if (1 == 0) r15.z = 0; else if (1+2 < 32) {               r15.z = (uint)r10.w << (32-(1 + 2)); r15.z = (uint)r15.z >> (32-1);              } else r15.z = (uint)r10.w >> 2;
              r15.w = (int)r15.y & 2;
              r16.z = max(r16.y, r16.x);
              r14.z = -r14.z * r14.w + 1;
              r14.z = r16.y * r14.z;
              r9.y = r15.w ? r14.z : r16.z;
              r16.xy = r15.zz ? r16.xy : r9.xy;
              r11.w = (int)r11.w + 1;
              r10.w = r15.y;
            }
            r16.y = saturate(r16.y);
            r8.z = r16.y * r14.y;
            r8.z = cmp(0 < r8.z);
            if (r8.z != 0) {
              r7.w = r16.y * r14.y + r7.w;
            }
          }
        }
      }
      r7.x = r7.w;
      r6.w = (int)r6.w + 32;
    }
    r4.z = cmp(r7.x < 1);
    if (r4.z != 0) {
      r6.xy = float2(0,0);
      r12.w = 0;
      r13.yz = float2(0,1);
      r9.x = 1;
      r4.zw = r7.xx;
      r6.w = 0;
      while (true) {
        r7.z = cmp((uint)r6.w >= (uint)r0.w);
        if (r7.z != 0) break;
        r6.z = (uint)r6.w >> 5;
        r12.xyz = (int3)r6.xyz + (int3)r11.xyz;
        r6.z = visibleProbes.Load(r12.xyzw).x;
        r7.z = cmp((int)r1.w == (int)r6.w);
        if (r3.x == 0) r7.w = 0; else if (r3.x+0 < 32) {         r7.w = (uint)r6.z << (32-(r3.x + 0)); r7.w = (uint)r7.w >> (32-r3.x);        } else r7.w = (uint)r6.z >> 0;
        r6.z = r7.z ? r7.w : r6.z;
        r7.z = (int)r6.w + numLights;
        r7.w = r4.z;
        r8.y = r4.w;
        r8.z = r6.z;
        while (true) {
          if (r8.z == 0) break;
          r9.w = firstbitlow((uint)r8.z);
          r10.w = 1 << (int)r9.w;
          r11.w = (int)r8.z & (int)r10.w;
          if (r11.w != 0) {
            r8.z = (int)r8.z ^ (int)r10.w;
            r10.w = (int)r7.z + (int)r9.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyzw, r10.w, l(0), t11.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r10.w, l(16), t11.xyxx
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
            r14.xyz = -v6.xyz + r14.xyz;
            r12.z = r14.w;
            r12.xyz = cmp(abs(r14.xyz) < r12.zxy);
            r10.w = r12.y ? r12.x : 0;
            r10.w = r12.z ? r10.w : 0;
            if (r10.w != 0) {
              r9.w = (int)r6.w + (int)r9.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xyz, r9.w, l(0), t15.xyzx
            r12.x = samp0[]..swiz;
            r12.y = samp0[]..swiz;
            r12.z = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xy, r9.w, l(96), t15.xyxx
            r14.x = samp0[]..swiz;
            r14.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(120), t15.xxxx
            r9.w = samp0[]..swiz;
              r12.xyz = v6.xyz + -r12.xyz;
              r10.w = (int)r9.w & 0x0000ffff;
              if (6 == 0) r9.w = 0; else if (6+25 < 32) {               r9.w = (uint)r9.w << (32-(6 + 25)); r9.w = (uint)r9.w >> (32-6);              } else r9.w = (uint)r9.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(0), t16.xyzw
            r16.x = samp0[]..swiz;
            r16.y = samp0[]..swiz;
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(16), t16.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(32), t16.xyzw
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(48), t16.xyzw
            r20.x = samp0[]..swiz;
            r20.y = samp0[]..swiz;
            r20.z = samp0[]..swiz;
            r20.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r10.w, l(64), t16.xyzw
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.z = samp0[]..swiz;
            r21.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r22.xyzw, r10.w, l(80), t16.xyzw
            r22.x = samp0[]..swiz;
            r22.y = samp0[]..swiz;
            r22.z = samp0[]..swiz;
            r22.w = samp0[]..swiz;
              r11.w = dot(r16.xyz, r12.xyz);
              r11.w = saturate(r11.w + r16.w);
              r13.w = dot(r17.xyz, r12.xyz);
              r13.w = saturate(r13.w + r17.w);
              r11.w = r13.w * r11.w;
              r13.w = dot(r18.xyz, r12.xyz);
              r13.w = saturate(r13.w + r18.w);
              r11.w = r13.w * r11.w;
              r13.w = dot(r20.xyz, r12.xyz);
              r13.w = saturate(r13.w + r20.w);
              r11.w = r13.w * r11.w;
              r13.w = dot(r21.xyz, r12.xyz);
              r13.w = saturate(r13.w + r21.w);
              r11.w = r13.w * r11.w;
              r13.w = dot(r22.xyz, r12.xyz);
              r13.w = saturate(r13.w + r22.w);
              r13.x = r13.w * r11.w;
              r11.w = (int)r14.x & 1;
              r13.xw = r11.ww ? r13.xy : r13.zx;
              r11.w = r14.x;
              r16.xy = r13.xw;
              r14.z = 1;
              while (true) {
                r14.w = cmp((int)r14.z >= (int)r9.w);
                if (r14.w != 0) break;
                r14.w = (int)r10.w + (int)r14.z;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r14.w, l(0), t16.xyzw
              r17.x = samp0[]..swiz;
              r17.y = samp0[]..swiz;
              r17.z = samp0[]..swiz;
              r17.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(16), t16.xyzw
              r18.x = samp0[]..swiz;
              r18.y = samp0[]..swiz;
              r18.z = samp0[]..swiz;
              r18.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r14.w, l(32), t16.xyzw
              r20.x = samp0[]..swiz;
              r20.y = samp0[]..swiz;
              r20.z = samp0[]..swiz;
              r20.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r14.w, l(48), t16.xyzw
              r21.x = samp0[]..swiz;
              r21.y = samp0[]..swiz;
              r21.z = samp0[]..swiz;
              r21.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r22.xyzw, r14.w, l(64), t16.xyzw
              r22.x = samp0[]..swiz;
              r22.y = samp0[]..swiz;
              r22.z = samp0[]..swiz;
              r22.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r14.w, l(80), t16.xyzw
              r23.x = samp0[]..swiz;
              r23.y = samp0[]..swiz;
              r23.z = samp0[]..swiz;
              r23.w = samp0[]..swiz;
                r14.w = dot(r17.xyz, r12.xyz);
                r14.w = saturate(r14.w + r17.w);
                r14.w = r16.x * r14.w;
                r15.y = dot(r18.xyz, r12.xyz);
                r15.y = saturate(r15.y + r18.w);
                r14.w = r15.y * r14.w;
                r15.y = dot(r20.xyz, r12.xyz);
                r15.y = saturate(r15.y + r20.w);
                r14.w = r15.y * r14.w;
                r15.y = dot(r21.xyz, r12.xyz);
                r15.y = saturate(r15.y + r21.w);
                r14.w = r15.y * r14.w;
                r15.y = dot(r22.xyz, r12.xyz);
                r15.y = saturate(r15.y + r22.w);
                r14.w = r15.y * r14.w;
                r15.y = dot(r23.xyz, r12.xyz);
                r15.y = saturate(r15.y + r23.w);
                r16.x = r15.y * r14.w;
                r15.z = (uint)r11.w >> 2;
                if (1 == 0) r15.w = 0; else if (1+2 < 32) {                 r15.w = (uint)r11.w << (32-(1 + 2)); r15.w = (uint)r15.w >> (32-1);                } else r15.w = (uint)r11.w >> 2;
                r16.z = (int)r15.z & 2;
                r16.w = max(r16.y, r16.x);
                r14.w = -r14.w * r15.y + 1;
                r14.w = r16.y * r14.w;
                r9.y = r16.z ? r14.w : r16.w;
                r16.xy = r15.ww ? r16.xy : r9.xy;
                r14.z = (int)r14.z + 1;
                r11.w = r15.z;
              }
              r9.y = saturate(r16.y + -r8.y);
              r9.w = r9.y * r14.y;
              r9.w = cmp(0 < r9.w);
              if (r9.w != 0) {
                r7.w = r9.y * r14.y + r7.w;
              }
            }
          }
        }
        r4.z = r7.w;
        r6.w = (int)r6.w + 32;
      }
      r7.x = r4.z;
    }
    r0.w = max(1, r7.x);
    r0.w = rcp(r0.w);
    r7.x = saturate(r7.x);
    r19.xyz = r19.xyz * r0.www;
    r0.w = cmp(r7.x < 0.99000001);
    if (r0.w != 0) {
      r0.w = 1 + -r7.x;
      r0.w = sunConstants.globalProbeExposure * r0.w;
      r6.xyz = r10.xyz + -r3.www;
      r6.xyz = min(float3(1,1,1), abs(r6.xyz));
      r1.w = dot(v6.xyz, v6.xyz);
      r1.w = rsqrt(r1.w);
      r7.xzw = v6.xyz * r1.www;
      r1.w = dot(r6.xyz, -r7.xzw);
      r3.x = r1.w + -r3.w;
      r3.x = min(1, abs(r3.x));
      r3.x = 10 * r3.x;
      r3.x = min(1, r3.x);
      r4.z = r3.x * -2 + 3;
      r3.x = r3.x * r3.x;
      r3.x = -r4.z * r3.x + 1;
      r4.z = r3.x * r3.x;
      r4.z = r4.z * r4.z;
      r3.x = r4.z * r3.x;
      r3.x = r3.x * r3.z;
      r3.x = sunConstants.globalProbeExposure * r3.x;
      r3.x = 20 * r3.x;
      r1.w = 0.5 + r1.w;
      r1.w = saturate(4 * r1.w);
      r4.z = r1.w * -2 + 3;
      r1.w = r1.w * r1.w;
      r1.w = r4.z * r1.w;
      r1.w = r3.x * r1.w;
      r6.w = 0;
      r6.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r6.xyzw, r7.y).xyz;
      r6.xyz = r6.xyz * r1.www;
      r0.w = r3.y * r0.w;
      r19.xyz = r6.xyz * r0.www + r19.xyz;
    }
  }
  r6.xyz = r19.xyz * r4.xxx;
  r4.xyz = r19.xyz * r4.yyy;
  if (r8.w != 0) {
    r0.w = 0;
  }
  if (r8.w == 0) {
    r7.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r7.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r7.xyz;
    r7.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r7.xyz;
    r7.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r7.xyz;
    r1.w = -sunConstants.splitDepthOffset + r7.z;
    r1.w = -r1.w * 6.10351563e-05 + 1;
    r3.x = saturate(r1.w);
    r3.x = cmp(r1.w == r3.x);
    if (r3.x != 0) {
      r3.xy = float2(0,0);
      while (true) {
        r4.w = cmp(r3.x >= 3);
        if (r4.w != 0) break;
        r4.w = (uint)r3.x;
        r8.yz = -sunConstants.splitPinTransform[r4.w].xy + r7.xy;
        r7.w = max(abs(r8.y), abs(r8.z));
        r3.y = sunConstants.splitPinTransform[r4.w].z * r7.w;
        r4.w = cmp(r3.y < 1);
        if (r4.w != 0) {
          break;
        }
        r3.x = 1 + r3.x;
        r3.y = 0;
      }
    } else {
      r3.xy = float2(3,0);
    }
    r4.w = cmp(r3.x >= 3);
    if (r4.w != 0) {
      r8.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r12.xz = rcp(r8.yy);
      r12.y = -r12.z;
      r8.yzw = r7.xyx * r12.xyz + r8.zwz;
      r9.xyw = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r8.yzw = max(float3(0,0,0), r8.yzw);
      r8.yzw = min(r8.yzw, r9.xyw);
      r9.xy = sunConstants.sstLightingConstants.coordScale * r8.wz;
      r9.xy = floor(r9.xy);
      r7.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r9.y;
      r7.w = r7.w * sunConstants.sstLightingConstants.coordScale + r9.x;
      r7.w = (uint)r7.w;
      r7.w = (int)r7.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.x, r7.w, l(0), t23.xxxx
    r9.x = samp0[]..swiz;
      r9.y = (int)r9.x & 0x40000000;
      r9.w = (uint)r9.x << 2;
      if (r9.y == 0) {
        r9.y = (int)r9.x & 0x01ffffff;
        r12.x = (int)r7.w + (int)r9.y;
        r7.w = (uint)r9.x >> 25;
        r7.w = (uint)r7.w;
        r8.yzw = r8.yzw * r7.www;
        r8.yzw = frac(r8.yzw);
        r8.yzw = float3(128,128,128) * r8.yzw;
        r8.yzw = (uint3)r8.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
      r12.z = samp0[]..swiz;
        r9.xy = (uint2)r8.wz >> int2(6,6);
        r7.w = (int)r12.z & 0xc0000000;
        r10.w = (int)r12.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r9.y = r9.y ? r12.z : r10.w;
        r10.w = (uint)r9.y >> 13;
        r9.x = r9.x ? r10.w : r9.y;
        r9.x = (int)r9.x & 8191;
        r13.x = (int)r9.x + (int)r12.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
      r13.z = samp0[]..swiz;
        r12.y = 0;
        r13.y = 1;
        r13.xyz = r7.www ? r12.xyz : r13.xyz;
        r14.yz = r7.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r9.xy = (uint2)r8.wz >> (uint2)r14.yy;
        r9.xy = (int2)r9.xy & int2(1,1);
        r10.w = (int)r13.z & 0xc0000000;
        r11.w = (int)r13.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r9.y = r9.y ? r13.z : r11.w;
        r11.w = (uint)r9.y >> 13;
        r9.x = r9.x ? r11.w : r9.y;
        r9.x = (int)r9.x & 8191;
        r14.x = (int)r9.x + (int)r13.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r13.xyz = r10.www ? r13.xyz : r14.xzw;
        r12.xyz = r7.www ? r12.xyz : r13.xyz;
        r7.w = (int)r12.z & 0xc0000000;
        if (r7.w == 0) {
          r7.w = (int)-r12.y + 6;
          r9.xy = (uint2)r8.wz >> (uint2)r7.ww;
          r7.w = (int)r12.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.y = (((uint)r9.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.x = (((uint)r9.x << 0) & bitmask.x) | ((uint)r9.y & ~bitmask.x);
          r9.x = (int)r9.x * 10;
          r7.w = (uint)r7.w >> (uint)r9.x;
          r7.w = (int)r7.w & 1023;
          r13.x = (int)r7.w + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.x, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          r13.yz = (int2)r12.yy + int2(1,2);
          r7.w = (int)-r13.y + 6;
          r9.xy = (uint2)r8.wz >> (uint2)r7.ww;
          r7.w = (int)r13.w & 0xc0000000;
          r10.w = (int)r13.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.y = (((uint)r9.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.x = (((uint)r9.x << 0) & bitmask.x) | ((uint)r9.y & ~bitmask.x);
          r9.x = (int)r9.x * 10;
          r9.x = (uint)r10.w >> (uint)r9.x;
          r9.x = (int)r9.x & 1023;
          r14.x = (int)r9.x + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r14.y = r13.z;
          r14.xyz = r7.www ? r13.xyw : r14.xyz;
          r9.x = (int)-r14.y + 6;
          r9.xy = (uint2)r8.wz >> (uint2)r9.xx;
          r10.w = (int)r14.z & 0xc0000000;
          r11.w = (int)r14.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.y = (((uint)r9.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.x = (((uint)r9.x << 0) & bitmask.x) | ((uint)r9.y & ~bitmask.x);
          r9.x = (int)r9.x * 10;
          r9.x = (uint)r11.w >> (uint)r9.x;
          r9.x = (int)r9.x & 1023;
          r9.x = (int)r9.x + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.y, r9.x, l(0), t23.xxxx
        r9.y = samp0[]..swiz;
          r9.xy = r10.ww ? r14.xz : r9.xy;
          r12.xz = r7.ww ? r13.xw : r9.xy;
        }
        r7.w = (int)r12.z & 0xc0000000;
        if (r7.w == 0) {
          if (14 == 0) r9.x = 0; else if (14+15 < 32) {           r9.x = (uint)r12.z << (32-(14 + 15)); r9.x = (uint)r9.x >> (32-14);          } else r9.x = (uint)r12.z >> 15;
          r9.x = (uint)r9.x;
          r9.x = sunConstants.sstLightingConstants.constants.spanInInches * r9.x;
          r12.yw = (int2)r12.zz & int2(32767,536870912);
          r9.y = (uint)r12.y;
          r9.y = sunConstants.sstLightingConstants.constants.spanInInches * r9.y;
          r9.xy = float2(6.10388815e-05,3.05185094e-05) * r9.xy;
          r10.w = (int)r8.z & 3;
          r10.w = (int)r10.w + (int)r12.x;
          r10.w = (int)r10.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
        r10.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r13.x = (((uint)r8.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r13.y = (((uint)r8.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r13.z = (((uint)r8.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r8.y = (uint)r10.w >> (uint)r13.x;
          r8.y = (int)r8.y & 255;
          r8.y = (uint)r8.y;
          r8.y = r8.y * r9.y;
          r8.y = r8.y * 0.00392156886 + r9.x;
          r8.z = (int)r13.y + 1;
          if (1 == 0) r8.w = 0; else if (1+1 < 32) {           r8.w = (uint)r8.w << (32-(1 + 1)); r8.w = (uint)r8.w >> (32-1);          } else r8.w = (uint)r8.w >> 1;
          r8.z = (int)r8.w + (int)r8.z;
          r8.z = (int)r8.z + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.z, l(0), t23.xxxx
        r8.z = samp0[]..swiz;
          r8.z = (uint)r8.z >> (uint)r13.z;
          r8.z = (int)r8.z & 0x0000ffff;
          r8.z = (uint)r8.z;
          r8.z = r8.z * r9.y;
          r8.z = r8.z * 1.52590219e-05 + r9.x;
          r9.w = r12.w ? r8.y : r8.z;
        } else {
          r8.y = (int)r12.z & 0x80000000;
          r8.z = (int)r12.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.z, l(0), t23.xxxx
        r8.z = samp0[]..swiz;
          r8.y = r8.y ? r8.z : 0;
          r8.z = (uint)r12.z << 2;
          r8.w = (uint)r8.y >> 16;
          r8.y = (int)r8.y & 0x0000ffff;
          r8.yw = f16tof32(r8.yw);
          r8.z = r7.x * r8.w + r8.z;
          r8.y = r7.y * r8.y + r8.z;
          r9.w = r7.w ? r8.y : r9.w;
        }
      }
      r7.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r7.z;
      r7.z = cmp(r9.w < r7.z);
      r0.w = r7.z ? 0 : 1;
    }
    if (r4.w == 0) {
      if (enableDitheredShadow == 0) {
        r4.w = (uint)r3.x;
        r7.zw = -sunConstants.splitPinTransform[r4.w].xy + r7.xy;
        r7.zw = sunConstants.splitPinTransform[r4.w].zz * r7.zw;
        r12.xy = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r4.w = (int16)sunConstants.splitArrayOffset;
        r12.z = r4.w + r3.x;
        r4.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r1.w).x;
        r7.z = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
        r4.w = r7.z + r4.w;
        r4.w = saturate(-1 + r4.w);
        r7.z = r4.w * r4.w;
        r0.w = r7.z * r4.w;
      }
      if (enableDitheredShadow != 0) {
        r4.w = (uint)r3.x;
        r3.x = 1 + r3.x;
        r3.x = min(2, r3.x);
        r3.y = 1 + -r3.y;
        r3.y = 28 * r3.y;
        r3.xy = (uint2)r3.xy;
        r7.zw = -sunConstants.splitPinTransform[r4.w].xy + r7.xy;
        r7.zw = sunConstants.splitPinTransform[r4.w].zz * r7.zw;
        r7.zw = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.xy = -sunConstants.splitPinTransform[r3.x].xy + r7.xy;
        r7.xy = sunConstants.splitPinTransform[r3.x].zz * r7.xy;
        r7.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r25.x = r8.x;
        r25.y = r15.x;
        r8.xy = float2(0,0);
        while (true) {
          r8.z = cmp((uint)r8.y >= 8);
          if (r8.z != 0) break;
          r8.z = cmp((uint)r3.y < (uint)r8.y);
          r9.xy = r8.zz ? r7.xy : r7.zw;
          r8.w = r8.z ? sunConstants.splitPinTransform[r3.x].w : sunConstants.splitPinTransform[r4.w].w;
          r8.z = r8.z ? r3.x : r4.w;
          r12.x = dot(icb[r8.y+0].xy, r25.xy);
          r12.y = dot(icb[r8.y+0].yx, r25.xz);
          r12.xy = r12.xy * r8.ww + r9.xy;
          r8.z = (int)r8.z + (int16)sunConstants.splitArrayOffset;
          r12.z = (uint)r8.z;
          r8.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r1.w).x;
          r8.w = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
          r8.z = r8.z + r8.w;
          r8.z = saturate(-1 + r8.z);
          r8.x = r8.z * 0.125 + r8.x;
          r8.y = (int)r8.y + 1;
        }
        r1.w = r8.x * r8.x;
        r0.w = r1.w * r8.x;
      }
    }
  }
  if (r9.z != 0) {
    r0.w = cmp(0 < r0.w);
    if (r0.w != 0) {
      if (sunConstants.sunCookieIndex != 0) {
        r7.xyz = eyeOffset.xyz + v6.xyz;
        r7.w = 1;
        r0.w = dot(sunConstants.sunCookieTransform[0].xyzw, r7.xyzw);
        r1.w = dot(sunConstants.sunCookieTransform[1].xyzw, r7.xyzw);
        r7.x = frac(r0.w);
        r7.y = frac(r1.w);
        r0.w = -1 + (int14)sunConstants.sunCookieIndex;
        r7.z = (uint)r0.w;
        r7.xyz = gCookieArray.SampleLevel(samplerLinear_s, r7.xyz, 0).xyz;
        r7.xyz = float3(-1,-1,-1) + r7.xyz;
        r7.xyz = sunConstants.sunCookieIntensity * r7.xyz + float3(1,1,1);
        r7.xyz = sunConstants.color.xyz * r7.xyz;
      } else {
        r7.xyz = sunConstants.color.xyz;
      }
      r0.w = cmp(0 < r2.w);
      r1.w = r5.w + r5.w;
      r8.xyz = r1.xyz * -r1.www + r5.xyz;
      r1.w = dot(r8.xyz, -sunConstants.wldDir.xyz);
      r2.w = r1.w + -r3.w;
      r2.w = min(1, abs(r2.w));
      r2.w = 10 * r2.w;
      r2.w = min(1, r2.w);
      r3.x = r2.w * -2 + 3;
      r2.w = r2.w * r2.w;
      r2.w = -r3.x * r2.w + 1;
      r3.x = r2.w * r2.w;
      r3.x = r3.x * r3.x;
      r2.w = r3.x * r2.w;
      r2.w = r2.w * r3.z;
      r2.w = 20 * r2.w;
      r1.w = 0.5 + r1.w;
      r1.w = saturate(4 * r1.w);
      r3.x = r1.w * -2 + 3;
      r1.w = r1.w * r1.w;
      r1.w = r3.x * r1.w;
      r3.x = r2.w * r1.w;
      r8.xyz = r3.xxx * r7.xyz + r4.xyz;
      r1.w = saturate(-r2.w * r1.w + 1);
      r2.w = r1.w * r1.w;
      r2.w = r2.w * r2.w;
      r1.w = r2.w * r1.w;
      r1.w = r3.x * r1.w;
      r7.xyz = r1.www * r7.xyz + r6.xyz;
      r7.w = r8.x;
      r6.w = r4.x;
      r6.xyzw = r0.wwww ? r7.xyzw : r6.xyzw;
      r4.yz = r0.ww ? r8.yz : r4.yz;
      r4.x = r6.w;
    }
  }
  r0.w = r5.w + r5.w;
  r5.xyz = r1.xyz * -r0.www + r5.xyz;
  r7.xy = float2(0,0);
  r8.w = 0;
  r9.xyz = v6.xyz;
  r9.w = 1;
  r12.z = 1;
  r13.xyz = r6.xyz;
  r14.xyz = r4.xyz;
  r0.w = 0;
  while (true) {
    r1.w = cmp((uint)r0.w >= numLights);
    if (r1.w != 0) break;
    r7.z = (uint)r0.w >> 5;
    r8.xyz = (int3)r7.xyz + (int3)r11.xyz;
    r1.w = visibleLights.Load(r8.xyzw).x;
    r8.xyz = r13.xyz;
    r15.xyz = r14.xyz;
    r2.w = r1.w;
    while (true) {
      if (r2.w == 0) break;
      r3.x = firstbitlow((uint)r2.w);
      r3.y = 1 << (int)r3.x;
      r4.w = (int)r2.w & (int)r3.y;
      if (r4.w != 0) {
        r2.w = (int)r2.w ^ (int)r3.y;
        r3.x = (int)r0.w + (int)r3.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xyzw, r3.x, l(0), t11.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xy, r3.x, l(16), t11.xyxx
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
        r16.xyz = -v6.xyz + r16.xyz;
        r17.z = r16.w;
        r16.xyz = cmp(abs(r16.xyz) < r17.zxy);
        r3.y = r16.y ? r16.x : 0;
        r3.y = r16.z ? r3.y : 0;
        if (r3.y != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r3.x, l(0), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r3.x, l(16), t12.xyxx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r3.x, l(28), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.zw, r3.x, l(44), t12.xxxy
        r7.z = samp0[]..swiz;
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r3.x, l(88), t12.wxyz
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
          if (3 == 0) r3.y = 0; else if (3+24 < 32) {           r3.y = (uint)r18.x << (32-(3 + 24)); r3.y = (uint)r3.y >> (32-3);          } else r3.y = (uint)r18.x >> 24;
          switch (r3.y) {
            case 4 :            r3.y = cmp(0 < r19.x);
            r20.xyz = -r19.yzw * float3(0.5,0.5,0.5) + r16.xyz;
            r21.xyz = -v6.xyz + r20.xyz;
            r4.w = dot(r19.yzw, r21.xyz);
            r5.w = saturate(-r4.w / r19.x);
            r22.xyz = r5.www * r19.yzw + r20.xyz;
            r22.xyz = r3.yyy ? r22.xyz : r16.xyz;
            r22.xyz = -v6.xyz + r22.xyz;
            r6.w = dot(r22.xyz, r22.xyz);
            r10.w = rsqrt(r6.w);
            r22.xyz = r22.xyz * r10.www;
            r10.w = dot(r1.xyz, r22.xyz);
            r11.w = cmp(0 < abs(r10.w));
            if (r11.w != 0) {
              r11.w = sqrt(r6.w);
              r12.w = r7.w * r7.w;
              r6.w = r12.w / r6.w;
              r6.w = min(1, r6.w);
              r12.w = saturate(r11.w * r18.y + r18.z);
              r11.w = saturate(r11.w * r18.w + r7.z);
              r13.w = r12.w * r12.w;
              r12.w = r12.w * -2 + 3;
              r12.w = r13.w * r12.w;
              r6.w = r12.w * r6.w;
              r12.w = r11.w * r11.w;
              r11.w = r11.w * -2 + 3;
              r11.w = r12.w * r11.w;
              r6.w = r11.w * r6.w;
              r6.w = cmp(0 < r6.w);
              if (r6.w != 0) {
                r6.w = dot(r19.yzw, r10.xyz);
                r11.w = dot(r10.xyz, r21.xyz);
                r12.w = -r6.w * r6.w + r19.x;
                r4.w = r6.w * r11.w + -r4.w;
                r4.w = saturate(r4.w / r12.w);
                r6.w = r12.w / r19.x;
                r6.w = 10 * r6.w;
                r6.w = min(1, r6.w);
                r4.w = r4.w + -r5.w;
                r4.w = r6.w * r4.w + r5.w;
                r20.xyz = r4.www * r19.yzw + r20.xyz;
                r20.xyz = r3.yyy ? r20.xyz : r16.xyz;
                r20.xyz = -v6.xyz + r20.xyz;
                r3.y = dot(r20.xyz, r20.xyz);
                r3.y = rsqrt(r3.y);
                r20.xyz = r20.xyz * r3.yyy;
                r3.y = cmp(0 < r10.w);
                r4.w = dot(r5.xyz, -r20.xyz);
                r5.w = r4.w + -r3.w;
                r5.w = min(1, abs(r5.w));
                r5.w = 10 * r5.w;
                r5.w = min(1, r5.w);
                r6.w = r5.w * -2 + 3;
                r5.w = r5.w * r5.w;
                r5.w = -r6.w * r5.w + 1;
                r6.w = r5.w * r5.w;
                r6.w = r6.w * r6.w;
                r5.w = r6.w * r5.w;
                r5.w = r5.w * r3.z;
                r5.w = 20 * r5.w;
                r4.w = 0.5 + r4.w;
                r4.w = saturate(4 * r4.w);
                r6.w = r4.w * -2 + 3;
                r4.w = r4.w * r4.w;
                r4.w = r6.w * r4.w;
                r6.w = r5.w * r4.w;
                r17.z = r16.w;
                r20.xyz = r6.www * r17.zxy + r15.xyz;
                r4.w = saturate(-r5.w * r4.w + 1);
                r5.w = r4.w * r4.w;
                r5.w = r5.w * r5.w;
                r4.w = r5.w * r4.w;
                r4.w = r6.w * r4.w;
                r21.xyz = r4.www * r17.zxy + r8.xyz;
                r8.xyz = r3.yyy ? r21.xyz : r8.xyz;
                r15.xyz = r3.yyy ? r20.xyz : r15.xyz;
              }
            }
            break;
            case 2 :          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r3.x, l(56), t12.wxyz
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
            r21.xyz = -v6.xyz + r20.yzw;
            r3.y = dot(r21.xyz, r21.xyz);
            r3.y = rsqrt(r3.y);
            r21.xyz = r21.xyz * r3.yyy;
            r3.y = dot(r1.xyz, r21.xyz);
            r4.w = cmp(0 < abs(r3.y));
            if (r4.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xyzw, r3.x, l(116), t12.xyzw
            r22.x = samp0[]..swiz;
            r22.y = samp0[]..swiz;
            r22.z = samp0[]..swiz;
            r22.w = samp0[]..swiz;
              r4.w = dot(r22.xyzw, r9.xyzw);
              r5.w = cmp(r4.w < 1);
              if (r5.w != 0) {
                r22.xyz = float3(1,1,1);
                r5.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xyzw, r3.x, l(72), t12.xyzw
              r23.x = samp0[]..swiz;
              r23.y = samp0[]..swiz;
              r23.z = samp0[]..swiz;
              r23.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xyzw, r3.x, l(172), t12.yzwx
              r24.x = samp0[]..swiz;
              r24.y = samp0[]..swiz;
              r24.z = samp0[]..swiz;
              r24.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xyzw, r3.x, l(188), t12.wxyz
              r25.x = samp0[]..swiz;
              r25.y = samp0[]..swiz;
              r25.z = samp0[]..swiz;
              r25.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xyzw, r3.x, l(204), t12.xyzw
              r26.x = samp0[]..swiz;
              r26.y = samp0[]..swiz;
              r26.z = samp0[]..swiz;
              r26.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.w, r3.x, l(236), t12.xxxx
              r6.w = samp0[]..swiz;
                r16.xyz = -v6.xyz + r16.xyz;
                r7.w = r7.w * r7.w;
                r10.w = dot(r16.xyz, r16.xyz);
                r7.w = r7.w / r10.w;
                r7.w = min(1, r7.w);
                r10.w = saturate(r4.w * r18.y + r18.z);
                r7.z = saturate(r4.w * r18.w + r7.z);
                r11.w = r10.w * r10.w;
                r10.w = r10.w * -2 + 3;
                r10.w = r11.w * r10.w;
                r7.w = r10.w * r7.w;
                r10.w = r7.z * r7.z;
                r7.z = r7.z * -2 + 3;
                r7.z = r10.w * r7.z;
                r7.z = r7.w * r7.z;
                r20.yzw = r23.xyz;
                r16.x = dot(r20.xyzw, r9.xyzw);
                r19.x = r23.w;
                r16.y = dot(r19.xyzw, r9.xyzw);
                r12.xy = r16.xy / r4.ww;
                r4.w = cmp(r24.w < 0.00048828125);
                if (r4.w != 0) {
                  r25.y = r26.x;
                  r16.xy = saturate(abs(r12.xy) * r25.zw + r25.xy);
                  r18.xy = r16.xy * r16.xy;
                  r16.xy = r16.xy * float2(-2,-2) + float2(3,3);
                  r16.xy = r18.xy * r16.xy;
                  r4.w = r16.x * r16.y;
                } else {
                  r24.w = r25.y;
                  r18.xyzw = saturate(r24.xyzw * abs(r12.yyxx));
                  r18.xyzw = log2(r18.xyzw);
                  r18.xyzw = r25.xxxx * r18.xyzw;
                  r18.xyzw = exp2(r18.xyzw);
                  r16.xy = r18.xy + r18.zw;
                  r16.xy = log2(r16.xy);
                  r16.xy = r26.xx * r16.xy;
                  r16.xy = exp2(r16.xy);
                  r7.w = r25.z * r16.x;
                  r10.w = r25.w * r16.y + -1;
                  r7.w = r25.w * r16.y + -r7.w;
                  r7.w = saturate(r10.w / r7.w);
                  r10.w = r7.w * r7.w;
                  r7.w = r7.w * -2 + 3;
                  r4.w = r10.w * r7.w;
                }
                r5.w = r7.z * r4.w;
                r4.w = (int)r6.w & 255;
                if (r4.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyz, r3.x, l(220), t12.xyzx
                r16.x = samp0[]..swiz;
                r16.y = samp0[]..swiz;
                r16.z = samp0[]..swiz;
                  r3.x = dot(r26.yzw, r12.xyz);
                  r6.w = dot(r16.xyz, r12.xyz);
                  r16.x = frac(r3.x);
                  r16.y = frac(r6.w);
                  r3.x = (int)r4.w + -1;
                  r16.z = (uint)r3.x;
                  r22.xyz = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
                } else {
                  r22.xyz = float3(1,1,1);
                }
              }
              r17.w = r16.w;
              r12.xyw = r22.xyz * r17.wxy;
              r3.x = cmp(0 < r5.w);
              if (r3.x != 0) {
                r3.x = cmp(0 < r3.y);
                r3.y = dot(r5.xyz, -r21.xyz);
                r4.w = r3.y + -r3.w;
                r4.w = min(1, abs(r4.w));
                r4.w = 10 * r4.w;
                r4.w = min(1, r4.w);
                r5.w = r4.w * -2 + 3;
                r4.w = r4.w * r4.w;
                r4.w = -r5.w * r4.w + 1;
                r5.w = r4.w * r4.w;
                r5.w = r5.w * r5.w;
                r4.w = r5.w * r4.w;
                r4.w = r4.w * r3.z;
                r4.w = 20 * r4.w;
                r3.y = 0.5 + r3.y;
                r3.y = saturate(4 * r3.y);
                r5.w = r3.y * -2 + 3;
                r3.y = r3.y * r3.y;
                r3.y = r5.w * r3.y;
                r5.w = r4.w * r3.y;
                r16.xyz = r5.www * r12.xyw + r15.xyz;
                r3.y = saturate(-r4.w * r3.y + 1);
                r4.w = r3.y * r3.y;
                r4.w = r4.w * r4.w;
                r3.y = r4.w * r3.y;
                r3.y = r5.w * r3.y;
                r12.xyw = r3.yyy * r12.xyw + r8.xyz;
                r8.xyz = r3.xxx ? r12.xyw : r8.xyz;
                r15.xyz = r3.xxx ? r16.xyz : r15.xyz;
              }
            }
            break;
            default :
            break;
          }
        }
      }
    }
    r13.xyz = r8.xyz;
    r14.xyz = r15.xyz;
    r0.w = (int)r0.w + 32;
  }
  r1.xyz = r32.xyz * r2.xyz;
  r0.xyz = r31.xyz * r0.xyz + r1.xyz;
  r1.xyz = float3(0.959999979,0.959999979,0.959999979) * r33.xyz;
  r1.xyz = r34.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = float3(1,1,1) + -specColorTint.xyz;
  r1.xyz = r13.xyz * r1.xyz;
  r1.xyz = r14.xyz * specColorTint.xyz + r1.xyz;
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
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}