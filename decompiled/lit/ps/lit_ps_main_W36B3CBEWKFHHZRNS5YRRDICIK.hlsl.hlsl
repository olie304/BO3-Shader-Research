// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:24 2021

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
Texture2D<float4> colorMap : register(t0);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
Texture2DArray<uint> visibleProbes : register(t7);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
StructuredBuffer<refProbeConstants> refProbeConstants : register(t15);
StructuredBuffer<refProbeAttenuationConstants> refProbeAttenuationConstants : register(t16);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
Texture2D<float4> tintMask : register(t21);
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.x = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r1.xxx * r1.yzw + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = v1.x * r0.w;
  r1.y = cmp(0 < debugStreamerControl.w);
  if (r1.y != 0) {
    r1.y = (int)debugStreamerControl.w;
    r1.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r1.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r1.z = cmp(r1.z < r1.w);
    r1.w = cmp(0 < r1.w);
    r2.xyz = (int3)r1.yyy & int3(1,2,4);
    r3.xyz = r2.xxx ? float3(1,0,1) : r0.xyz;
    r2.xyw = r2.yyy ? float3(0,1,1) : r0.xyz;
    r2.xyw = r1.www ? r3.xyz : r2.xyw;
    r3.xyz = r2.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r1.zzz ? r2.xyw : r3.xyz;
  }
  r0.w = -r0.w * v1.x + debugAlphaOverride.x;
  r1.w = debugAlphaOverride.w * r0.w + r1.x;
  r0.w = cmp(r1.w == 0.000000);
  if (r0.w != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
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
  r2.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r2.xyz = debugSpecularOverride.www * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = r0.w + -r2.w;
  r4.y = debugGlossOverride.w * r0.w + r2.w;
  r0.w = -1 + debugOcclusionOverride.x;
  r0.w = debugOcclusionOverride.w * r0.w + 1;
  r5.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www + -r3.xyz;
  r3.xyz = debugNormalOverride.www * r5.xyz + r3.xyz;
  r4.zw = (uint2)v0.xy;
  r2.w = cmp(v0.z >= 0.984375);
  r5.x = 1.01587307 * v0.z;
  r5.y = v0.z * 64 + -63;
  r2.w = r2.w ? r5.y : r5.x;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r5.x = dot(-v6.xyz, -v6.xyz);
  r5.x = rsqrt(r5.x);
  r5.yzw = -v6.xyz * r5.xxx;
  r6.xy = (uint2)r4.zw;
  r6.x = dot(r6.xy, float2(0.0671105608,0.00583714992));
  r6.x = frac(r6.x);
  r6.x = 52.9829178 * r6.x;
  r6.x = frac(r6.x);
  r6.x = r6.x * 6.28318548 + gameTick.w;
  sincos(r6.x, r6.x, r7.x);
  r4.x = saturate(dot(r3.xyz, r5.yzw));
  r6.y = dot(-r5.yzw, r3.xyz);
  r6.y = r6.y + r6.y;
  r8.xyz = r3.xyz * -r6.yyy + -r5.yzw;
  r6.y = 17 * r4.y;
  r6.y = exp2(r6.y);
  r6.y = 2 + r6.y;
  r6.y = 2 / r6.y;
  r6.z = sqrt(r6.y);
  r6.w = 1 + -r4.y;
  r7.y = 5 * r6.w;
  r7.z = r6.w * 5 + -2.5;
  r7.z = saturate(0.400000006 * r7.z);
  r7.z = 100 * r7.z;
  r9.xy = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r9.x);
  r7.w = r7.w * r4.x;
  r7.w = 9.1368103 * r7.w;
  r9.x = r7.y * r6.w;
  r9.x = -r9.x * 2.0159049 + r9.y;
  r9.x = exp2(r9.x);
  r9.x = r9.x * r4.x;
  r9.x = 9.70808983 * r9.x;
  r7.w = max(r9.x, r7.w);
  r7.w = max(1.26815999, r7.w);
  r2.w = 0.0078125 * r2.w;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r9.xy = (uint2)r4.zw >> int2(6,6);
  r9.z = (uint)r2.w << 4;
  r10.xy = float2(0,0);
  r11.w = 0;
  r12.yz = float2(0,1);
  r13.xy = float2(0,0);
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.x = 1;
  r17.xyzw = float4(0,0,0,0);
  r18.xyz = float3(0,0,0);
  r2.w = 0;
  r4.z = 0;
  while (true) {
    r4.w = cmp((uint)r4.z >= numRefProbes);
    if (r4.w != 0) break;
    r10.z = (uint)r4.z >> 5;
    r11.xyz = (int3)r9.xyz + (int3)r10.xyz;
    r4.w = visibleProbes.Load(r11.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r4.z, l(0), t15.wxyz
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r4.z, l(16), t15.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r4.z, l(32), t15.yxwz
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r4.z, l(48), t15.xyzw
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r4.z, l(64), t15.zwxy
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r4.z, l(80), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.zw, r4.z, l(96), t15.xxxy
  r10.z = samp0[]..swiz;
  r10.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r4.z, l(116), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r4.z, l(132), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r4.z, l(148), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r4.z, l(164), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r4.z, l(180), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r4.z, l(196), t15.xyzw
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xy, r4.z, l(212), t15.xyxx
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
    r11.xyz = v6.xyz + -r19.yzw;
    r9.w = dot(r11.xyz, r11.xyz);
    r9.w = sqrt(r9.w);
    r9.w = cmp(probeDebugRadius >= r9.w);
    r12.w = (int)r25.y & 0x0000ffff;
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
    r13.w = dot(r32.xyz, r11.xyz);
    r13.w = saturate(r13.w + r32.w);
    r14.w = dot(r33.xyz, r11.xyz);
    r14.w = saturate(r14.w + r33.w);
    r13.w = r14.w * r13.w;
    r14.w = dot(r34.xyz, r11.xyz);
    r14.w = saturate(r14.w + r34.w);
    r13.w = r14.w * r13.w;
    r14.w = dot(r35.xyz, r11.xyz);
    r14.w = saturate(r14.w + r35.w);
    r13.w = r14.w * r13.w;
    r14.w = dot(r36.xyz, r11.xyz);
    r14.w = saturate(r14.w + r36.w);
    r13.w = r14.w * r13.w;
    r14.w = dot(r37.xyz, r11.xyz);
    r14.w = saturate(r14.w + r37.w);
    r12.x = r14.w * r13.w;
    r13.w = (int)r10.z & 1;
    r16.zw = r13.ww ? r12.xy : r12.zx;
    r32.xy = r25.zw;
    r32.z = r26.z;
    r12.x = dot(r8.xyz, r32.xyz);
    r13.w = dot(r11.xyz, r32.xyz);
    r13.w = r13.w + -r26.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r7.z);
    r13.w = r14.w ? r13.w : -r13.w;
    r12.x = max(1.00000001e-07, -r12.x);
    r12.x = r13.w / r12.x;
    r12.x = min(131072, abs(r12.x));
    r26.z = r27.z;
    r13.w = dot(r8.xyz, r26.xyz);
    r14.w = dot(r11.xyz, r26.xyz);
    r14.w = r14.w + -r27.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r12.x = min(abs(r13.w), r12.x);
    r27.z = r28.z;
    r13.w = dot(r8.xyz, r27.xyz);
    r14.w = dot(r11.xyz, r27.xyz);
    r14.w = r14.w + -r28.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r12.x = min(abs(r13.w), r12.x);
    r28.z = r29.z;
    r13.w = dot(r8.xyz, r28.xyz);
    r14.w = dot(r11.xyz, r28.xyz);
    r14.w = r14.w + -r29.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r12.x = min(abs(r13.w), r12.x);
    r29.z = r30.x;
    r13.w = dot(r8.xyz, r29.xyz);
    r14.w = dot(r11.xyz, r29.xyz);
    r14.w = r14.w + -r30.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r12.x = min(abs(r13.w), r12.x);
    r31.zw = r30.zw;
    r13.w = dot(r8.zxy, r31.xzw);
    r14.w = dot(r11.zxy, r31.xzw);
    r14.w = r14.w + -r31.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r12.x = min(abs(r13.w), r12.x);
    r26.x = r22.w;
    r26.yz = r23.zw;
    r26.xyz = r26.xyz + r11.xyz;
    r26.xyz = r8.xyz * r12.xxx + r26.xyz;
    r13.w = dot(r26.xyz, r26.xyz);
    r13.w = sqrt(r13.w);
    r12.x = r12.x / r13.w;
    r12.x = r12.x + r12.x;
    r12.x = sqrt(r12.x);
    r12.x = r6.w * 5 + r12.x;
    r12.x = -0.844799995 + r12.x;
    r19.y = r20.z;
    r19.z = r21.x;
    r27.x = dot(r26.xyz, r19.xyz);
    r28.xy = r20.xw;
    r28.z = r21.w;
    r27.y = dot(r26.xyz, r28.xyz);
    r21.x = r20.y;
    r27.z = dot(r26.xyz, r21.xyz);
    if (6 == 0) r20.x = 0; else if (6+25 < 32) {     r20.x = (uint)r25.y << (32-(6 + 25)); r20.x = (uint)r20.x >> (32-6);    } else r20.x = (uint)r25.y >> 25;
    if (9 == 0) r20.y = 0; else if (9+16 < 32) {     r20.y = (uint)r25.y << (32-(9 + 16)); r20.y = (uint)r20.y >> (32-9);    } else r20.y = (uint)r25.y >> 16;
    r27.w = (uint)r20.y;
    r20.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r12.x).xyz;
    r25.yzw = (int3)r20.yzw & int3(-2147483648,-2147483648,-2147483648);
    r25.yzw = cmp((int3)r25.yzw == int3(2139095040,2139095040,2139095040));
    r12.x = (int)r25.z | (int)r25.y;
    r12.x = (int)r25.w | (int)r12.x;
    r20.yzw = r12.xxx ? float3(1,1,0) : r20.yzw;
    r26.x = dot(r11.xyz, r19.xyz);
    r26.y = dot(r11.xyz, r28.xyz);
    r26.z = dot(r11.xyz, r21.xyz);
    r22.xyz = saturate(r26.xyz * r22.xyz + float3(0.5,0.5,0.5));
    r23.z = r24.x;
    r22.xyz = r22.xyz * r23.xyz + r24.yzw;
    r27.x = dot(r3.xyz, r19.xyz);
    r27.y = dot(r3.xyz, r28.xyz);
    r27.z = dot(r3.xyz, r21.xyz);
    r19.xyz = cmp(float3(0,0,0) < r27.xyz);
    r13.z = r19.x ? 0 : 0.5;
    r21.xyz = r22.xyz + r13.xyz;
    r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r14.z = r19.y ? 0 : 0.5;
    r19.xyw = r22.xyz + r14.xyz;
    r19.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyw, 0).xyz;
    r15.z = r19.z ? 0 : 0.5;
    r22.xyz = r22.xyz + r15.xyz;
    r22.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r23.xyz = r27.xyz * r27.xyz;
    r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
    r25.yzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
    r25.yzw = cmp((int3)r25.yzw == int3(2139095040,2139095040,2139095040));
    r12.x = (int)r25.z | (int)r25.y;
    r12.x = (int)r25.w | (int)r12.x;
    r24.xyz = r12.xxx ? float3(1,1,0) : r24.xyz;
    r26.xyzw = r17.yzwx;
    r25.yzw = r18.xyz;
    r12.x = r2.w;
    r13.z = r4.w;
    while (true) {
      if (r13.z == 0) break;
      r13.w = firstbitlow((uint)r13.z);
      r13.w = 1 << (int)r13.w;
      r14.z = (int)r13.w & (int)r13.z;
      if (r14.z != 0) {
        r13.w = ~(int)r13.w;
        r13.z = (int)r13.w & (int)r13.z;
        if (r9.w != 0) {
          r13.w = r10.z;
          r27.xy = r16.zw;
          r14.z = 1;
          while (true) {
            r14.w = cmp((int)r14.z >= (int)r20.x);
            if (r14.w != 0) break;
            r14.w = (int)r12.w + (int)r14.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r14.w = dot(r28.xyz, r11.xyz);
            r14.w = saturate(r14.w + r28.w);
            r14.w = r27.x * r14.w;
            r15.z = dot(r29.xyz, r11.xyz);
            r15.z = saturate(r15.z + r29.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r30.xyz, r11.xyz);
            r15.z = saturate(r15.z + r30.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r31.xyz, r11.xyz);
            r15.z = saturate(r15.z + r31.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r32.xyz, r11.xyz);
            r15.z = saturate(r15.z + r32.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r33.xyz, r11.xyz);
            r15.z = saturate(r15.z + r33.w);
            r27.x = r15.z * r14.w;
            r15.w = (uint)r13.w >> 2;
            if (1 == 0) r18.w = 0; else if (1+2 < 32) {             r18.w = (uint)r13.w << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);            } else r18.w = (uint)r13.w >> 2;
            r19.z = (int)r15.w & 2;
            r21.w = max(r27.y, r27.x);
            r14.w = -r14.w * r15.z + 1;
            r14.w = r27.y * r14.w;
            r16.y = r19.z ? r14.w : r21.w;
            r27.xy = r18.ww ? r27.xy : r16.xy;
            r14.z = (int)r14.z + 1;
            r13.w = r15.w;
          }
          r27.y = saturate(r27.y);
          r13.w = r27.y * r10.w;
          r14.z = cmp(0 < r13.w);
          if (r14.z != 0) {
            r28.w = r27.y * r10.w + r26.w;
            r13.w = r13.w * r25.x;
            r27.xzw = r23.xyz * r13.www;
            r29.xyz = r27.zzz * r19.xyw;
            r29.xyz = r21.xyz * r27.xxx + r29.xyz;
            r27.xzw = r22.xyz * r27.www + r29.xyz;
            r29.xyz = r27.xzw * r24.xyz;
            r14.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r27.xzw = r27.xzw * r24.xyz + r25.yzw;
            r14.w = r14.z * r7.w;
            r29.xyz = r20.yzw * r13.www;
            r13.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r13.w = r7.w * r14.z + r13.w;
            r13.w = r14.w / r13.w;
            r28.xyz = r29.xyz * r13.www + r26.xyz;
          } else {
            r28.xyzw = r26.xyzw;
            r27.xzw = r25.yzw;
          }
          r12.x = -1;
          r25.yzw = r27.xzw;
          r26.xyzw = r28.xyzw;
          break;
        }
      }
    }
    if (r12.x != 0) {
      r17.xyzw = r26.wxyz;
      r18.xyz = r25.yzw;
      r2.w = -1;
      break;
    }
    r4.z = (int)r4.z + 32;
    r17.xyzw = r26.wxyz;
    r18.xyz = r25.yzw;
    r2.w = r12.x;
  }
  if (r2.w == 0) {
    r2.w = max(1, r17.x);
    r2.w = rcp(r2.w);
    r17.x = saturate(r17.x);
    r9.xyz = r18.xyz * r2.www;
    r17.yzw = r17.yzw * r2.www;
    r4.z = cmp(r17.x < 0.99000001);
    if (r4.z != 0) {
      r4.z = 1 + -r17.x;
      r4.w = sunConstants.globalProbeExposure * r4.z;
      r10.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r11.x = globalProbeConstants.data[0].w * r10.x;
      r11.yz = globalProbeConstants.data[1].xy * r10.yz;
      r10.xyz = saturate(float3(0.5,0.5,0.5) + r11.xyz);
      r11.xy = globalProbeConstants.data[1].zw * r10.xy;
      r11.z = globalProbeConstants.data[2].x * r10.z;
      r10.xyz = globalProbeConstants.data[2].yzw + r11.xyz;
      r11.xyz = cmp(float3(0,0,0) < r3.xyz);
      r11.xyz = r11.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r11.w = 0;
      r12.xyz = r11.wwx + r10.xyz;
      r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
      r13.xyz = r3.xyz * r3.xyz;
      r13.xyz = r13.xyz * r4.www;
      r14.xyz = r11.wwy + r10.xyz;
      r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r14.xyz = r14.xyz * r13.yyy;
      r12.xyz = r12.xyz * r13.xxx + r14.xyz;
      r10.xyz = r11.wwz + r10.xyz;
      r10.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
      r10.xyz = r10.xyz * r13.zzz + r12.xyz;
      r3.w = 0;
      r11.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
      r10.xyz = r11.xyz * r10.xyz;
      r3.w = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r18.xyz = r18.xyz * r2.www + r10.xyz;
      r8.w = 0;
      r7.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r8.xyzw, r7.y).xyz;
      r2.w = sunConstants.globalProbeExposure * r4.z + -r3.w;
      r2.w = r4.y * r2.w + r3.w;
      r17.yzw = r7.yzw * r2.www + r17.yzw;
    } else {
      r18.xyz = r9.xyz;
    }
  }
  r2.w = r4.x + r0.w;
  r2.w = log2(abs(r2.w));
  r2.w = r6.z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w + r0.w;
  r2.w = saturate(-1 + r2.w);
  r7.yzw = r18.xyz * r0.www;
  r4.yz = r4.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r4.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r4.yz, 0).xy;
  r8.xyz = r17.yzw * r2.www;
  r9.xyz = r8.xyz * r4.yyy;
  r4.yzw = r8.xyz * r4.zzz;
  r0.w = dot(r3.xyz, sunConstants.wldDir.xyz);
  r2.w = saturate(r0.w);
  r3.w = cmp(0 >= r2.w);
  if (r3.w != 0) {
    r6.w = 0;
  }
  if (r3.w == 0) {
    r8.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r8.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r8.xyz;
    r8.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r8.xyz;
    r8.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r8.xyz;
    r3.w = -sunConstants.splitDepthOffset + r8.z;
    r3.w = -r3.w * 6.10351563e-05 + 1;
    r8.w = saturate(r3.w);
    r8.w = cmp(r3.w == r8.w);
    if (r8.w != 0) {
      r8.w = 0;
      r9.w = 0;
      while (true) {
        r10.x = cmp(r8.w >= 3);
        if (r10.x != 0) break;
        r10.x = (uint)r8.w;
        r10.yz = -sunConstants.splitPinTransform[r10.x].xy + r8.xy;
        r10.y = max(abs(r10.y), abs(r10.z));
        r9.w = sunConstants.splitPinTransform[r10.x].z * r10.y;
        r10.x = cmp(r9.w < 1);
        if (r10.x != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r9.w = 0;
      }
    } else {
      r8.w = 3;
      r9.w = 0;
    }
    r10.x = cmp(r8.w >= 3);
    if (r10.x != 0) {
      r10.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r11.xz = rcp(r10.yy);
      r11.y = -r11.z;
      r10.yzw = r8.xyx * r11.xyz + r10.zwz;
      r11.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r10.yzw = max(float3(0,0,0), r10.yzw);
      r10.yzw = min(r10.yzw, r11.xyz);
      r11.xy = sunConstants.sstLightingConstants.coordScale * r10.wz;
      r11.xy = floor(r11.xy);
      r11.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r11.y;
      r11.x = r11.y * sunConstants.sstLightingConstants.coordScale + r11.x;
      r11.x = (uint)r11.x;
      r11.x = (int)r11.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.y, r11.x, l(0), t23.xxxx
    r11.y = samp0[]..swiz;
      r11.z = (int)r11.y & 0x40000000;
      r11.w = (uint)r11.y << 2;
      if (r11.z == 0) {
        r11.z = (int)r11.y & 0x01ffffff;
        r12.x = (int)r11.z + (int)r11.x;
        r11.x = (uint)r11.y >> 25;
        r11.x = (uint)r11.x;
        r10.yzw = r11.xxx * r10.yzw;
        r10.yzw = frac(r10.yzw);
        r10.yzw = float3(128,128,128) * r10.yzw;
        r10.yzw = (uint3)r10.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
      r12.z = samp0[]..swiz;
        r11.xy = (uint2)r10.wz >> int2(6,6);
        r11.z = (int)r12.z & 0xc0000000;
        r12.w = (int)r12.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r11.y = r11.y ? r12.z : r12.w;
        r12.w = (uint)r11.y >> 13;
        r11.x = r11.x ? r12.w : r11.y;
        r11.x = (int)r11.x & 8191;
        r13.x = (int)r11.x + (int)r12.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
      r13.z = samp0[]..swiz;
        r12.y = 0;
        r13.y = 1;
        r13.xyz = r11.zzz ? r12.xyz : r13.xyz;
        r14.yz = r11.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r11.xy = (uint2)r10.wz >> (uint2)r14.yy;
        r11.xy = (int2)r11.xy & int2(1,1);
        r12.w = (int)r13.z & 0xc0000000;
        r13.w = (int)r13.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r11.y = r11.y ? r13.z : r13.w;
        r13.w = (uint)r11.y >> 13;
        r11.x = r11.x ? r13.w : r11.y;
        r11.x = (int)r11.x & 8191;
        r14.x = (int)r11.x + (int)r13.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r13.xyz = r12.www ? r13.xyz : r14.xzw;
        r11.xyz = r11.zzz ? r12.xyz : r13.xyz;
        r12.x = (int)r11.z & 0xc0000000;
        if (r12.x == 0) {
          r12.x = (int)-r11.y + 6;
          r12.xy = (uint2)r10.wz >> (uint2)r12.xx;
          r12.z = (int)r11.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.y = (((uint)r12.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.x = (((uint)r12.x << 0) & bitmask.x) | ((uint)r12.y & ~bitmask.x);
          r12.x = (int)r12.x * 10;
          r12.x = (uint)r12.z >> (uint)r12.x;
          r12.x = (int)r12.x & 1023;
          r12.x = (int)r11.x + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.x, l(0), t23.xxxx
        r12.w = samp0[]..swiz;
          r12.yz = (int2)r11.yy + int2(1,2);
          r11.y = (int)-r12.y + 6;
          r13.xy = (uint2)r10.wz >> (uint2)r11.yy;
          r11.y = (int)r12.w & 0xc0000000;
          r13.z = (int)r12.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.y = (((uint)r13.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.x = (((uint)r13.x << 0) & bitmask.x) | ((uint)r13.y & ~bitmask.x);
          r13.x = (int)r13.x * 10;
          r13.x = (uint)r13.z >> (uint)r13.x;
          r13.x = (int)r13.x & 1023;
          r13.x = (int)r12.x + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.y = r12.z;
          r13.xyz = r11.yyy ? r12.xyw : r13.xyz;
          r12.y = (int)-r13.y + 6;
          r12.yz = (uint2)r10.wz >> (uint2)r12.yy;
          r13.y = (int)r13.z & 0xc0000000;
          r13.w = (int)r13.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.z = (((uint)r12.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.y = (((uint)r12.y << 0) & bitmask.y) | ((uint)r12.z & ~bitmask.y);
          r12.y = (int)r12.y * 10;
          r12.y = (uint)r13.w >> (uint)r12.y;
          r12.y = (int)r12.y & 1023;
          r14.x = (int)r12.y + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.x, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r12.yz = r13.yy ? r13.xz : r14.xy;
          r11.xz = r11.yy ? r12.xw : r12.yz;
        }
        r11.y = (int)r11.z & 0xc0000000;
        if (r11.y == 0) {
          if (14 == 0) r12.x = 0; else if (14+15 < 32) {           r12.x = (uint)r11.z << (32-(14 + 15)); r12.x = (uint)r12.x >> (32-14);          } else r12.x = (uint)r11.z >> 15;
          r12.x = (uint)r12.x;
          r12.x = sunConstants.sstLightingConstants.constants.spanInInches * r12.x;
          r12.yz = (int2)r11.zz & int2(32767,536870912);
          r12.y = (uint)r12.y;
          r12.y = sunConstants.sstLightingConstants.constants.spanInInches * r12.y;
          r12.xy = float2(6.10388815e-05,3.05185094e-05) * r12.xy;
          r12.w = (int)r10.z & 3;
          r12.w = (int)r11.x + (int)r12.w;
          r12.w = (int)r12.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
        r12.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r13.x = (((uint)r10.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r13.y = (((uint)r10.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r13.z = (((uint)r10.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r10.y = (uint)r12.w >> (uint)r13.x;
          r10.y = (int)r10.y & 255;
          r10.y = (uint)r10.y;
          r10.y = r10.y * r12.y;
          r10.y = r10.y * 0.00392156886 + r12.x;
          r10.z = (int)r13.y + 1;
          if (1 == 0) r10.w = 0; else if (1+1 < 32) {           r10.w = (uint)r10.w << (32-(1 + 1)); r10.w = (uint)r10.w >> (32-1);          } else r10.w = (uint)r10.w >> 1;
          r10.z = (int)r10.w + (int)r10.z;
          r10.z = (int)r10.z + (int)r11.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.z, r10.z, l(0), t23.xxxx
        r10.z = samp0[]..swiz;
          r10.z = (uint)r10.z >> (uint)r13.z;
          r10.z = (int)r10.z & 0x0000ffff;
          r10.z = (uint)r10.z;
          r10.z = r10.z * r12.y;
          r10.z = r10.z * 1.52590219e-05 + r12.x;
          r11.w = r12.z ? r10.y : r10.z;
        } else {
          r10.y = (int)r11.z & 0x80000000;
          r10.z = (int)r11.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.z, r10.z, l(0), t23.xxxx
        r10.z = samp0[]..swiz;
          r10.y = r10.y ? r10.z : 0;
          r10.z = (uint)r11.z << 2;
          r10.w = (uint)r10.y >> 16;
          r10.y = (int)r10.y & 0x0000ffff;
          r10.yw = f16tof32(r10.yw);
          r10.z = r8.x * r10.w + r10.z;
          r10.y = r8.y * r10.y + r10.z;
          r11.w = r11.y ? r10.y : r11.w;
        }
      }
      r8.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r8.z;
      r8.z = cmp(r11.w < r8.z);
      r6.w = r8.z ? 0 : 1;
    }
    if (r10.x == 0) {
      if (enableDitheredShadow == 0) {
        r8.z = (uint)r8.w;
        r10.xy = -sunConstants.splitPinTransform[r8.z].xy + r8.xy;
        r10.xy = sunConstants.splitPinTransform[r8.z].zz * r10.xy;
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.z = (int16)sunConstants.splitArrayOffset;
        r10.z = r8.w + r8.z;
        r8.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r10.xyz, r3.w).x;
        r10.x = gTransShadowmapArray.SampleLevel(samp0_s, r10.xyz, 0).x;
        r8.z = r10.x + r8.z;
        r8.z = saturate(-1 + r8.z);
        r10.x = r8.z * r8.z;
        r6.w = r10.x * r8.z;
      }
      if (enableDitheredShadow != 0) {
        r10.x = -r6.x;
        r8.z = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r11.xy = -sunConstants.splitPinTransform[r8.z].xy + r8.xy;
        r11.xy = sunConstants.splitPinTransform[r8.z].zz * r11.xy;
        r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.xy = -sunConstants.splitPinTransform[r8.w].xy + r8.xy;
        r8.xy = sunConstants.splitPinTransform[r8.w].zz * r8.xy;
        r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.y = r7.x;
        r10.z = r6.x;
        r10.w = 0;
        r11.z = 0;
        while (true) {
          r11.w = cmp((uint)r11.z >= 8);
          if (r11.w != 0) break;
          r11.w = cmp((uint)r9.w < (uint)r11.z);
          r12.xy = r11.ww ? r8.xy : r11.xy;
          r12.z = r11.w ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r8.z].w;
          r11.w = r11.w ? r8.w : r8.z;
          r13.x = dot(icb[r11.z+0].yx, r10.xy);
          r13.y = dot(icb[r11.z+0].yx, r10.yz);
          r12.xy = r13.xy * r12.zz + r12.xy;
          r11.w = (int)r11.w + (int16)sunConstants.splitArrayOffset;
          r12.z = (uint)r11.w;
          r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r3.w).x;
          r12.x = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
          r11.w = r12.x + r11.w;
          r11.w = saturate(-1 + r11.w);
          r10.w = r11.w * 0.125 + r10.w;
          r11.z = (int)r11.z + 1;
        }
        r3.w = r10.w * r10.w;
        r6.w = r3.w * r10.w;
      }
    }
  }
  r3.w = cmp(0 < r2.w);
  if (r3.w != 0) {
    r3.w = cmp(0 < r6.w);
    if (r3.w != 0) {
      r3.w = cmp(isDepthHack != 0);
      r8.x = sqrt(r6.z);
      r8.x = r8.x * 0.5 + 0.5;
      r8.x = r8.x * r8.x;
      r8.y = 0.5 * r8.x;
      r8.x = -r8.x * 0.5 + 1;
      r8.z = r4.x * r8.x + r8.y;
      r8.xy = r8.xy * r8.zz;
      r8.z = sunConstants.specScale * r6.y;
      r8.z = r8.z * r2.w;
      if (sunConstants.sunCookieIndex != 0) {
        r10.xyz = eyeOffset.xyz + v6.xyz;
        r10.w = 1;
        r8.w = dot(sunConstants.sunCookieTransform[0].xyzw, r10.xyzw);
        r9.w = dot(sunConstants.sunCookieTransform[1].xyzw, r10.xyzw);
        r10.x = frac(r8.w);
        r10.y = frac(r9.w);
        r8.w = -1 + (int14)sunConstants.sunCookieIndex;
        r10.z = (uint)r8.w;
        r10.xyz = gCookieArray.SampleLevel(samplerLinear_s, r10.xyz, 0).xyz;
        r10.xyz = float3(-1,-1,-1) + r10.xyz;
        r10.xyz = sunConstants.sunCookieIntensity * r10.xyz + float3(1,1,1);
        r10.xyz = sunConstants.color.xyz * r10.xyz;
      } else {
        r10.xyz = sunConstants.color.xyz;
      }
      r8.w = viewmodelSunShadowRaw >> 16;
      r9.w = cmp(0 < (uint)r8.w);
      r9.w = r3.w ? r9.w : 0;
      if (r9.w != 0) {
        r8.w = (int)r8.w + numLights;
        r8.w = (int)r8.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r8.w, l(52), t12.xxxx
      r9.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r8.w, l(68), t12.xyzw
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
      r11.z = samp0[]..swiz;
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r8.w, l(84), t12.xyzw
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
      r12.z = samp0[]..swiz;
      r12.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r8.w, l(132), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r8.w, l(148), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
        r10.w = abs(r0.w) * -0.200000003 + 0.400000006;
        r15.xyz = r3.xyz * r10.www + v6.xyz;
        r15.w = 1;
        r11.x = dot(r11.xyzw, r15.xyzw);
        r11.y = dot(r12.xyzw, r15.xyzw);
        r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.xy = r11.xy + r14.zw;
        r11.xy = r11.xy * r14.xy;
        r11.zw = r9.ww / r13.xz;
        r12.xy = float2(1,1) + -r11.zw;
        r12.xy = cmp(r11.xy >= r12.xy);
        r11.zw = cmp(r11.zw >= r11.xy);
        r11.zw = (int2)r11.zw | (int2)r12.xy;
        r10.w = (int)r11.w | (int)r11.z;
        if (r10.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r8.w, l(28), t12.xxxx
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r8.w, l(100), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.zw, r8.w, l(164), t12.xxxy
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
          r8.w = dot(r12.xyzw, r15.xyzw);
          r11.xy = saturate(r11.xy);
          r12.xy = r11.xy * r13.xz + r13.yw;
          r8.w = r8.w + r11.z;
          r8.w = r8.w / r11.w;
          r8.w = max(6.10351563e-05, r8.w);
          r10.w = (int)r10.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r11.x = -r6.x;
            r13.z = (uint)r10.w;
            r11.y = r7.x;
            r11.z = r6.x;
            r11.w = 0;
            r12.w = 0;
            while (true) {
              r13.w = cmp((int)r12.w >= 8);
              if (r13.w != 0) break;
              r14.x = dot(icb[r12.w+0].yx, r11.xy);
              r14.y = dot(icb[r12.w+0].yx, r11.yz);
              r13.xy = r14.xy * r9.ww + r12.xy;
              r13.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r8.w).x;
              r11.w = r13.x * 0.125 + r11.w;
              r12.w = (int)r12.w + 1;
            }
          } else {
            r12.z = (uint)r10.w;
            r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r8.w).x;
          }
          r8.w = r11.w * r11.w;
          r8.w = r8.w * r11.w;
        } else {
          r8.w = 1;
        }
        r6.w = r8.w * r6.w;
      } else {
        r8.w = viewmodelSunShadowRaw & 0x0000ffff;
        r9.w = cmp(0 < (uint)r8.w);
        r3.w = ~(int)r3.w;
        r3.w = r3.w ? r9.w : 0;
        if (r3.w != 0) {
          r3.w = (int)r8.w + numLights;
          r3.w = (int)r3.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r3.w, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r3.w, l(68), t12.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r3.w, l(84), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r3.w, l(132), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r3.w, l(148), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
          r9.w = abs(r0.w) * -0.200000003 + 0.400000006;
          r15.xyz = r3.xyz * r9.www + v6.xyz;
          r15.w = 1;
          r11.x = dot(r11.xyzw, r15.xyzw);
          r11.y = dot(r12.xyzw, r15.xyzw);
          r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r11.xy = r11.xy + r14.zw;
          r11.xy = r11.xy * r14.xy;
          r11.zw = r8.ww / r13.xz;
          r12.xy = float2(1,1) + -r11.zw;
          r12.xy = cmp(r11.xy >= r12.xy);
          r11.zw = cmp(r11.zw >= r11.xy);
          r11.zw = (int2)r11.zw | (int2)r12.xy;
          r9.w = (int)r11.w | (int)r11.z;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r3.w, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r3.w, l(100), t12.xyzw
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.zw, r3.w, l(164), t12.xxxy
          r11.z = samp0[]..swiz;
          r11.w = samp0[]..swiz;
            r3.w = dot(r12.xyzw, r15.xyzw);
            r11.xy = saturate(r11.xy);
            r12.xy = r11.xy * r13.xz + r13.yw;
            r3.w = r3.w + r11.z;
            r3.w = r3.w / r11.w;
            r3.w = max(6.10351563e-05, r3.w);
            r9.w = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r11.x = -r6.x;
              r13.z = (uint)r9.w;
              r11.y = r7.x;
              r11.z = r6.x;
              r6.x = 0;
              r7.x = 0;
              while (true) {
                r10.w = cmp((int)r7.x >= 8);
                if (r10.w != 0) break;
                r14.x = dot(icb[r7.x+0].yx, r11.xy);
                r14.y = dot(icb[r7.x+0].yx, r11.yz);
                r13.xy = r14.xy * r8.ww + r12.xy;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r3.w).x;
                r6.x = r10.w * 0.125 + r6.x;
                r7.x = (int)r7.x + 1;
              }
            } else {
              r12.z = (uint)r9.w;
              r6.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r3.w).x;
            }
            r3.w = r6.x * r6.x;
            r3.w = r3.w * r6.x;
          } else {
            r3.w = 1;
          }
          r6.w = r6.w * r3.w;
        }
      }
      r3.w = -r4.x * 0.5 + 1;
      r3.w = -r2.w * r3.w + 1;
      r3.w = r3.w * r3.w;
      r3.w = -r3.w * 0.620000005 + 0.620000005;
      r3.w = r3.w + -r2.w;
      r3.w = r6.z * r3.w + r2.w;
      r3.w = r3.w * r6.w;
      r0.w = cmp(0 < r0.w);
      r11.xyz = r3.www * r10.xyz + r7.yzw;
      r12.xyz = -v6.xyz * r5.xxx + sunConstants.wldDir.xyz;
      r3.w = dot(r12.xyz, r12.xyz);
      r3.w = rsqrt(r3.w);
      r12.xyz = r12.xyz * r3.www;
      r3.w = dot(r12.xyz, r5.yzw);
      r3.x = dot(r3.xyz, r12.xyz);
      r3.y = abs(r3.x) * r6.y + -abs(r3.x);
      r3.x = abs(r3.x) * r3.y + 1;
      r2.w = r2.w * r8.x + r8.y;
      r3.x = r3.x * r3.x;
      r2.w = r3.x * r2.w;
      r2.w = rcp(r2.w);
      r2.w = r2.w * r8.z;
      r2.w = r6.w * r2.w;
      r2.w = 0.25 * r2.w;
      r3.xyz = r2.www * r10.xyz + r4.yzw;
      r3.w = saturate(1 + -r3.w);
      r4.x = r3.w * r3.w;
      r4.x = r4.x * r4.x;
      r3.w = r4.x * r3.w;
      r2.w = r3.w * r2.w;
      r5.xyz = r2.www * r10.xyz + r9.xyz;
      r7.yzw = r0.www ? r11.xyz : r7.yzw;
      r9.xyz = r0.www ? r5.xyz : r9.xyz;
      r4.yzw = r0.www ? r3.xyz : r4.yzw;
    }
  }
  r3.xyz = float3(1,1,1) + -r2.xyz;
  r3.xyz = r9.xyz * r3.xyz;
  r2.xyz = r4.yzw * r2.xyz + r3.xyz;
  r0.xyz = r7.yzw * r0.xyz + r2.xyz;
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