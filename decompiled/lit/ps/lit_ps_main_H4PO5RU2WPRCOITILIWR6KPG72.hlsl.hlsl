// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:37:55 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.x = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r1.xxx * r1.yzw + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = v1.x * r0.w;
  r1.y = glossRange.y + -glossRange.x;
  r1.z = saturate(0.0588235296 * glossRange.y);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r2.xy, r2.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r2.w = v7.x ? 1 : -1;
  r3.x = dot(v3.xyz, v3.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v3.xyz * r3.xxx;
  r3.xyz = r3.xyz * r2.www;
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = v4.xyz * r3.www;
  r4.xyz = r4.xyz * r2.www;
  r3.w = dot(v5.xyz, v5.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = v5.xyz * r3.www;
  r5.xyz = r5.xyz * r2.www;
  r1.z = -17 * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.z + r1.z;
  r1.z = log2(r1.z);
  r1.z = -0.0588235296 * r1.z;
  r5.xyz = r5.xyz * r2.yyy;
  r2.xyw = r4.xyz * r2.xxx + r5.xyz;
  r2.xyw = r3.xyz * r1.www + r2.xyw;
  r1.w = dot(r2.xyw, r2.xyw);
  r1.w = rsqrt(r1.w);
  r2.xyw = r2.xyw * r1.www;
  r1.y = debugGlossOverride.x * r1.y + glossRange.x;
  r1.y = saturate(0.0588235296 * r1.y);
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r2.z + r1.y;
  r1.y = log2(r1.y);
  r1.y = -0.0588235296 * r1.y;
  r1.yz = max(float2(0,0), r1.yz);
  r1.w = cmp(0 < debugStreamerControl.w);
  if (r1.w != 0) {
    r1.w = (int)debugStreamerControl.w;
    r2.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r3.x = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.z = cmp(r2.z < r3.x);
    r3.x = cmp(0 < r3.x);
    r3.yzw = (int3)r1.www & int3(1,2,4);
    r4.xyz = r3.yyy ? float3(1,0,1) : r0.xyz;
    r5.xyz = r3.zzz ? float3(0,1,1) : r0.xyz;
    r3.xyz = r3.xxx ? r4.xyz : r5.xyz;
    r4.xyz = r3.www ? float3(0,1,0) : r0.xyz;
    r0.xyz = r2.zzz ? r3.xyz : r4.xyz;
  }
  r3.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r3.xyz + r0.xyz;
  r0.w = -r0.w * v1.x + debugAlphaOverride.x;
  o0.w = debugAlphaOverride.w * r0.w + r1.x;
  r3.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r3.xyz = debugSpecularOverride.www * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = r1.y + -r1.z;
  r1.y = debugGlossOverride.w * r0.w + r1.z;
  r0.w = -1 + debugOcclusionOverride.x;
  r0.w = debugOcclusionOverride.w * r0.w + 1;
  r4.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz + -r2.xyw;
  r2.xyz = debugNormalOverride.www * r4.xyz + r2.xyw;
  r1.zw = (uint2)v0.xy;
  r3.w = cmp(v0.z >= 0.984375);
  r4.x = 1.01587307 * v0.z;
  r4.y = v0.z * 64 + -63;
  r3.w = r3.w ? r4.y : r4.x;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  r4.x = dot(-v6.xyz, -v6.xyz);
  r4.x = rsqrt(r4.x);
  r4.yzw = -v6.xyz * r4.xxx;
  r5.xy = (uint2)r1.zw;
  r5.x = dot(r5.xy, float2(0.0671105608,0.00583714992));
  r5.x = frac(r5.x);
  r5.x = 52.9829178 * r5.x;
  r5.x = frac(r5.x);
  r5.x = r5.x * 6.28318548 + gameTick.w;
  sincos(r5.x, r5.x, r6.x);
  r1.x = saturate(dot(r2.xyz, r4.yzw));
  r5.y = dot(-r4.yzw, r2.xyz);
  r5.y = r5.y + r5.y;
  r7.xyz = r2.xyz * -r5.yyy + -r4.yzw;
  r5.y = 17 * r1.y;
  r5.y = exp2(r5.y);
  r5.y = 2 + r5.y;
  r5.y = 2 / r5.y;
  r5.z = sqrt(r5.y);
  r5.w = 1 + -r1.y;
  r6.y = 5 * r5.w;
  r6.z = r5.w * 5 + -2.5;
  r6.z = saturate(0.400000006 * r6.z);
  r6.z = 100 * r6.z;
  r8.xy = -r5.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r8.x);
  r6.w = r6.w * r1.x;
  r6.w = 9.1368103 * r6.w;
  r8.x = r6.y * r5.w;
  r8.x = -r8.x * 2.0159049 + r8.y;
  r8.x = exp2(r8.x);
  r8.x = r8.x * r1.x;
  r8.x = 9.70808983 * r8.x;
  r6.w = max(r8.x, r6.w);
  r6.w = max(1.26815999, r6.w);
  r3.w = 0.0078125 * r3.w;
  r3.w = min(15, r3.w);
  r3.w = (uint)r3.w;
  r8.xy = (uint2)r1.zw >> int2(6,6);
  r8.z = (uint)r3.w << 4;
  r9.xy = float2(0,0);
  r10.w = 0;
  r11.yz = float2(0,1);
  r12.xy = float2(0,0);
  r13.xy = float2(0,0);
  r14.xy = float2(0,0);
  r15.x = 1;
  r16.xyzw = float4(0,0,0,0);
  r17.xyz = float3(0,0,0);
  r1.zw = float2(0,0);
  while (true) {
    r3.w = cmp((uint)r1.w >= numRefProbes);
    if (r3.w != 0) break;
    r9.z = (uint)r1.w >> 5;
    r10.xyz = (int3)r8.xyz + (int3)r9.xyz;
    r3.w = visibleProbes.Load(r10.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r1.w, l(0), t15.wxyz
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r1.w, l(16), t15.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r1.w, l(32), t15.yxwz
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r1.w, l(48), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r1.w, l(64), t15.zwxy
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r1.w, l(80), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.zw, r1.w, l(96), t15.xxxy
  r9.z = samp0[]..swiz;
  r9.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r1.w, l(116), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r1.w, l(132), t15.zwxy
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r1.w, l(148), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r1.w, l(164), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r1.w, l(180), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r1.w, l(196), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xy, r1.w, l(212), t15.xyxx
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
    r10.xyz = v6.xyz + -r18.yzw;
    r8.w = dot(r10.xyz, r10.xyz);
    r8.w = sqrt(r8.w);
    r8.w = cmp(probeDebugRadius >= r8.w);
    r11.w = (int)r24.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(0), t16.xyzw
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(16), t16.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(32), t16.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(48), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(64), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(80), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
    r12.w = dot(r31.xyz, r10.xyz);
    r12.w = saturate(r12.w + r31.w);
    r13.w = dot(r32.xyz, r10.xyz);
    r13.w = saturate(r13.w + r32.w);
    r12.w = r13.w * r12.w;
    r13.w = dot(r33.xyz, r10.xyz);
    r13.w = saturate(r13.w + r33.w);
    r12.w = r13.w * r12.w;
    r13.w = dot(r34.xyz, r10.xyz);
    r13.w = saturate(r13.w + r34.w);
    r12.w = r13.w * r12.w;
    r13.w = dot(r35.xyz, r10.xyz);
    r13.w = saturate(r13.w + r35.w);
    r12.w = r13.w * r12.w;
    r13.w = dot(r36.xyz, r10.xyz);
    r13.w = saturate(r13.w + r36.w);
    r11.x = r13.w * r12.w;
    r12.w = (int)r9.z & 1;
    r15.zw = r12.ww ? r11.xy : r11.zx;
    r31.xy = r24.zw;
    r31.z = r25.z;
    r11.x = dot(r7.xyz, r31.xyz);
    r12.w = dot(r10.xyz, r31.xyz);
    r12.w = r12.w + -r25.w;
    r13.w = cmp(r12.w >= 0);
    r12.w = max(abs(r12.w), r6.z);
    r12.w = r13.w ? r12.w : -r12.w;
    r11.x = max(1.00000001e-07, -r11.x);
    r11.x = r12.w / r11.x;
    r11.x = min(131072, abs(r11.x));
    r25.z = r26.z;
    r12.w = dot(r7.xyz, r25.xyz);
    r13.w = dot(r10.xyz, r25.xyz);
    r13.w = r13.w + -r26.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r6.z);
    r13.w = r14.w ? r13.w : -r13.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r13.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r26.z = r27.z;
    r12.w = dot(r7.xyz, r26.xyz);
    r13.w = dot(r10.xyz, r26.xyz);
    r13.w = r13.w + -r27.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r6.z);
    r13.w = r14.w ? r13.w : -r13.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r13.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r27.z = r28.z;
    r12.w = dot(r7.xyz, r27.xyz);
    r13.w = dot(r10.xyz, r27.xyz);
    r13.w = r13.w + -r28.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r6.z);
    r13.w = r14.w ? r13.w : -r13.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r13.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r28.z = r29.x;
    r12.w = dot(r7.xyz, r28.xyz);
    r13.w = dot(r10.xyz, r28.xyz);
    r13.w = r13.w + -r29.y;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r6.z);
    r13.w = r14.w ? r13.w : -r13.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r13.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r30.zw = r29.zw;
    r12.w = dot(r7.zxy, r30.xzw);
    r13.w = dot(r10.zxy, r30.xzw);
    r13.w = r13.w + -r30.y;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r6.z);
    r13.w = r14.w ? r13.w : -r13.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r13.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r25.x = r21.w;
    r25.yz = r22.zw;
    r25.xyz = r25.xyz + r10.xyz;
    r25.xyz = r7.xyz * r11.xxx + r25.xyz;
    r12.w = dot(r25.xyz, r25.xyz);
    r12.w = sqrt(r12.w);
    r11.x = r11.x / r12.w;
    r11.x = r11.x + r11.x;
    r11.x = sqrt(r11.x);
    r11.x = r5.w * 5 + r11.x;
    r11.x = -0.844799995 + r11.x;
    r18.y = r19.z;
    r18.z = r20.x;
    r26.x = dot(r25.xyz, r18.xyz);
    r27.xy = r19.xw;
    r27.z = r20.w;
    r26.y = dot(r25.xyz, r27.xyz);
    r20.x = r19.y;
    r26.z = dot(r25.xyz, r20.xyz);
    if (6 == 0) r19.x = 0; else if (6+25 < 32) {     r19.x = (uint)r24.y << (32-(6 + 25)); r19.x = (uint)r19.x >> (32-6);    } else r19.x = (uint)r24.y >> 25;
    if (9 == 0) r19.y = 0; else if (9+16 < 32) {     r19.y = (uint)r24.y << (32-(9 + 16)); r19.y = (uint)r19.y >> (32-9);    } else r19.y = (uint)r24.y >> 16;
    r26.w = (uint)r19.y;
    r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, r11.x).xyz;
    r24.yzw = (int3)r19.yzw & int3(-2147483648,-2147483648,-2147483648);
    r24.yzw = cmp((int3)r24.yzw == int3(2139095040,2139095040,2139095040));
    r11.x = (int)r24.z | (int)r24.y;
    r11.x = (int)r24.w | (int)r11.x;
    r19.yzw = r11.xxx ? float3(1,1,0) : r19.yzw;
    r25.x = dot(r10.xyz, r18.xyz);
    r25.y = dot(r10.xyz, r27.xyz);
    r25.z = dot(r10.xyz, r20.xyz);
    r21.xyz = saturate(r25.xyz * r21.xyz + float3(0.5,0.5,0.5));
    r22.z = r23.x;
    r21.xyz = r21.xyz * r22.xyz + r23.yzw;
    r26.x = dot(r2.xyz, r18.xyz);
    r26.y = dot(r2.xyz, r27.xyz);
    r26.z = dot(r2.xyz, r20.xyz);
    r18.xyz = cmp(float3(0,0,0) < r26.xyz);
    r12.z = r18.x ? 0 : 0.5;
    r20.xyz = r21.xyz + r12.xyz;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r13.z = r18.y ? 0 : 0.5;
    r18.xyw = r21.xyz + r13.xyz;
    r18.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyw, 0).xyz;
    r14.z = r18.z ? 0 : 0.5;
    r21.xyz = r21.xyz + r14.xyz;
    r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r22.xyz = r26.xyz * r26.xyz;
    r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, 6).xyz;
    r24.yzw = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
    r24.yzw = cmp((int3)r24.yzw == int3(2139095040,2139095040,2139095040));
    r11.x = (int)r24.z | (int)r24.y;
    r11.x = (int)r24.w | (int)r11.x;
    r23.xyz = r11.xxx ? float3(1,1,0) : r23.xyz;
    r25.xyzw = r16.yzwx;
    r24.yzw = r17.xyz;
    r11.x = r1.z;
    r12.z = r3.w;
    while (true) {
      if (r12.z == 0) break;
      r12.w = firstbitlow((uint)r12.z);
      r12.w = 1 << (int)r12.w;
      r13.z = (int)r12.w & (int)r12.z;
      if (r13.z != 0) {
        r12.w = ~(int)r12.w;
        r12.z = (int)r12.w & (int)r12.z;
        if (r8.w != 0) {
          r12.w = r9.z;
          r26.xy = r15.zw;
          r13.z = 1;
          while (true) {
            r13.w = cmp((int)r13.z >= (int)r19.x);
            if (r13.w != 0) break;
            r13.w = (int)r11.w + (int)r13.z;
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
            r13.w = dot(r27.xyz, r10.xyz);
            r13.w = saturate(r13.w + r27.w);
            r13.w = r26.x * r13.w;
            r14.z = dot(r28.xyz, r10.xyz);
            r14.z = saturate(r14.z + r28.w);
            r13.w = r14.z * r13.w;
            r14.z = dot(r29.xyz, r10.xyz);
            r14.z = saturate(r14.z + r29.w);
            r13.w = r14.z * r13.w;
            r14.z = dot(r30.xyz, r10.xyz);
            r14.z = saturate(r14.z + r30.w);
            r13.w = r14.z * r13.w;
            r14.z = dot(r31.xyz, r10.xyz);
            r14.z = saturate(r14.z + r31.w);
            r13.w = r14.z * r13.w;
            r14.z = dot(r32.xyz, r10.xyz);
            r14.z = saturate(r14.z + r32.w);
            r26.x = r14.z * r13.w;
            r14.w = (uint)r12.w >> 2;
            if (1 == 0) r17.w = 0; else if (1+2 < 32) {             r17.w = (uint)r12.w << (32-(1 + 2)); r17.w = (uint)r17.w >> (32-1);            } else r17.w = (uint)r12.w >> 2;
            r18.z = (int)r14.w & 2;
            r20.w = max(r26.y, r26.x);
            r13.w = -r13.w * r14.z + 1;
            r13.w = r26.y * r13.w;
            r15.y = r18.z ? r13.w : r20.w;
            r26.xy = r17.ww ? r26.xy : r15.xy;
            r13.z = (int)r13.z + 1;
            r12.w = r14.w;
          }
          r26.y = saturate(r26.y);
          r12.w = r26.y * r9.w;
          r13.z = cmp(0 < r12.w);
          if (r13.z != 0) {
            r27.w = r26.y * r9.w + r25.w;
            r12.w = r12.w * r24.x;
            r26.xzw = r22.xyz * r12.www;
            r28.xyz = r26.zzz * r18.xyw;
            r28.xyz = r20.xyz * r26.xxx + r28.xyz;
            r26.xzw = r21.xyz * r26.www + r28.xyz;
            r28.xyz = r26.xzw * r23.xyz;
            r13.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r26.xzw = r26.xzw * r23.xyz + r24.yzw;
            r13.w = r13.z * r6.w;
            r28.xyz = r19.yzw * r12.www;
            r12.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r12.w = r6.w * r13.z + r12.w;
            r12.w = r13.w / r12.w;
            r27.xyz = r28.xyz * r12.www + r25.xyz;
          } else {
            r27.xyzw = r25.xyzw;
            r26.xzw = r24.yzw;
          }
          r11.x = -1;
          r24.yzw = r26.xzw;
          r25.xyzw = r27.xyzw;
          break;
        }
      }
    }
    if (r11.x != 0) {
      r16.xyzw = r25.wxyz;
      r17.xyz = r24.yzw;
      r1.z = -1;
      break;
    }
    r1.w = (int)r1.w + 32;
    r16.xyzw = r25.wxyz;
    r17.xyz = r24.yzw;
    r1.z = r11.x;
  }
  if (r1.z == 0) {
    r1.z = max(1, r16.x);
    r1.z = rcp(r1.z);
    r16.x = saturate(r16.x);
    r8.xyz = r17.xyz * r1.zzz;
    r16.yzw = r16.yzw * r1.zzz;
    r1.w = cmp(r16.x < 0.99000001);
    if (r1.w != 0) {
      r1.w = 1 + -r16.x;
      r3.w = sunConstants.globalProbeExposure * r1.w;
      r9.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r10.x = globalProbeConstants.data[0].w * r9.x;
      r10.yz = globalProbeConstants.data[1].xy * r9.yz;
      r9.xyz = saturate(float3(0.5,0.5,0.5) + r10.xyz);
      r10.xy = globalProbeConstants.data[1].zw * r9.xy;
      r10.z = globalProbeConstants.data[2].x * r9.z;
      r9.xyz = globalProbeConstants.data[2].yzw + r10.xyz;
      r10.xyz = cmp(float3(0,0,0) < r2.xyz);
      r10.xyz = r10.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r10.w = 0;
      r11.xyz = r10.wwx + r9.xyz;
      r11.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r12.xyz = r2.xyz * r2.xyz;
      r12.xyz = r12.xyz * r3.www;
      r13.xyz = r10.wwy + r9.xyz;
      r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r13.xyz = r13.xyz * r12.yyy;
      r11.xyz = r11.xyz * r12.xxx + r13.xyz;
      r9.xyz = r10.wwz + r9.xyz;
      r9.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
      r9.xyz = r9.xyz * r12.zzz + r11.xyz;
      r2.w = 0;
      r10.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
      r9.xyz = r10.xyz * r9.xyz;
      r2.w = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r17.xyz = r17.xyz * r1.zzz + r9.xyz;
      r7.w = 0;
      r6.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r7.xyzw, r6.y).xyz;
      r1.z = sunConstants.globalProbeExposure * r1.w + -r2.w;
      r1.z = r1.y * r1.z + r2.w;
      r16.yzw = r6.yzw * r1.zzz + r16.yzw;
    } else {
      r17.xyz = r8.xyz;
    }
  }
  r1.z = r1.x + r0.w;
  r1.z = log2(abs(r1.z));
  r1.z = r5.z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z + r0.w;
  r1.z = saturate(-1 + r1.z);
  r6.yzw = r17.xyz * r0.www;
  r1.yw = r1.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.yw, 0).xy;
  r7.xyz = r16.yzw * r1.zzz;
  r8.xyz = r7.xyz * r1.yyy;
  r1.yzw = r7.xyz * r1.www;
  r0.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r2.w = saturate(r0.w);
  r3.w = cmp(0 >= r2.w);
  if (r3.w != 0) {
    r5.w = 0;
  }
  if (r3.w == 0) {
    r7.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r7.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r7.xyz;
    r7.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r7.xyz;
    r7.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r7.xyz;
    r3.w = -sunConstants.splitDepthOffset + r7.z;
    r3.w = -r3.w * 6.10351563e-05 + 1;
    r7.w = saturate(r3.w);
    r7.w = cmp(r3.w == r7.w);
    if (r7.w != 0) {
      r7.w = 0;
      r8.w = 0;
      while (true) {
        r9.x = cmp(r7.w >= 3);
        if (r9.x != 0) break;
        r9.x = (uint)r7.w;
        r9.yz = -sunConstants.splitPinTransform[r9.x].xy + r7.xy;
        r9.y = max(abs(r9.y), abs(r9.z));
        r8.w = sunConstants.splitPinTransform[r9.x].z * r9.y;
        r9.x = cmp(r8.w < 1);
        if (r9.x != 0) {
          break;
        }
        r7.w = 1 + r7.w;
        r8.w = 0;
      }
    } else {
      r7.w = 3;
      r8.w = 0;
    }
    r9.x = cmp(r7.w >= 3);
    if (r9.x != 0) {
      r9.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r10.xz = rcp(r9.yy);
      r10.y = -r10.z;
      r9.yzw = r7.xyx * r10.xyz + r9.zwz;
      r10.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r9.yzw = max(float3(0,0,0), r9.yzw);
      r9.yzw = min(r9.yzw, r10.xyz);
      r10.xy = sunConstants.sstLightingConstants.coordScale * r9.wz;
      r10.xy = floor(r10.xy);
      r10.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r10.y;
      r10.x = r10.y * sunConstants.sstLightingConstants.coordScale + r10.x;
      r10.x = (uint)r10.x;
      r10.x = (int)r10.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.y, r10.x, l(0), t23.xxxx
    r10.y = samp0[]..swiz;
      r10.z = (int)r10.y & 0x40000000;
      r10.w = (uint)r10.y << 2;
      if (r10.z == 0) {
        r10.z = (int)r10.y & 0x01ffffff;
        r11.x = (int)r10.z + (int)r10.x;
        r10.x = (uint)r10.y >> 25;
        r10.x = (uint)r10.x;
        r9.yzw = r10.xxx * r9.yzw;
        r9.yzw = frac(r9.yzw);
        r9.yzw = float3(128,128,128) * r9.yzw;
        r9.yzw = (uint3)r9.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.x, l(0), t23.xxxx
      r11.z = samp0[]..swiz;
        r10.xy = (uint2)r9.wz >> int2(6,6);
        r10.z = (int)r11.z & 0xc0000000;
        r11.w = (int)r11.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r10.y = r10.y ? r11.z : r11.w;
        r11.w = (uint)r10.y >> 13;
        r10.x = r10.x ? r11.w : r10.y;
        r10.x = (int)r10.x & 8191;
        r12.x = (int)r10.x + (int)r11.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
      r12.z = samp0[]..swiz;
        r11.y = 0;
        r12.y = 1;
        r12.xyz = r10.zzz ? r11.xyz : r12.xyz;
        r13.yz = r10.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r10.xy = (uint2)r9.wz >> (uint2)r13.yy;
        r10.xy = (int2)r10.xy & int2(1,1);
        r11.w = (int)r12.z & 0xc0000000;
        r12.w = (int)r12.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r10.y = r10.y ? r12.z : r12.w;
        r12.w = (uint)r10.y >> 13;
        r10.x = r10.x ? r12.w : r10.y;
        r10.x = (int)r10.x & 8191;
        r13.x = (int)r10.x + (int)r12.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.x, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r12.xyz = r11.www ? r12.xyz : r13.xzw;
        r10.xyz = r10.zzz ? r11.xyz : r12.xyz;
        r11.x = (int)r10.z & 0xc0000000;
        if (r11.x == 0) {
          r11.x = (int)-r10.y + 6;
          r11.xy = (uint2)r9.wz >> (uint2)r11.xx;
          r11.z = (int)r10.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.y = (((uint)r11.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.x = (((uint)r11.x << 0) & bitmask.x) | ((uint)r11.y & ~bitmask.x);
          r11.x = (int)r11.x * 10;
          r11.x = (uint)r11.z >> (uint)r11.x;
          r11.x = (int)r11.x & 1023;
          r11.x = (int)r10.x + (int)r11.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.x, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          r11.yz = (int2)r10.yy + int2(1,2);
          r10.y = (int)-r11.y + 6;
          r12.xy = (uint2)r9.wz >> (uint2)r10.yy;
          r10.y = (int)r11.w & 0xc0000000;
          r12.z = (int)r11.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.y = (((uint)r12.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.x = (((uint)r12.x << 0) & bitmask.x) | ((uint)r12.y & ~bitmask.x);
          r12.x = (int)r12.x * 10;
          r12.x = (uint)r12.z >> (uint)r12.x;
          r12.x = (int)r12.x & 1023;
          r12.x = (int)r11.x + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          r12.y = r11.z;
          r12.xyz = r10.yyy ? r11.xyw : r12.xyz;
          r11.y = (int)-r12.y + 6;
          r11.yz = (uint2)r9.wz >> (uint2)r11.yy;
          r12.y = (int)r12.z & 0xc0000000;
          r12.w = (int)r12.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.z = (((uint)r11.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.y = (((uint)r11.y << 0) & bitmask.y) | ((uint)r11.z & ~bitmask.y);
          r11.y = (int)r11.y * 10;
          r11.y = (uint)r12.w >> (uint)r11.y;
          r11.y = (int)r11.y & 1023;
          r13.x = (int)r11.y + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.x, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r11.yz = r12.yy ? r12.xz : r13.xy;
          r10.xz = r10.yy ? r11.xw : r11.yz;
        }
        r10.y = (int)r10.z & 0xc0000000;
        if (r10.y == 0) {
          if (14 == 0) r11.x = 0; else if (14+15 < 32) {           r11.x = (uint)r10.z << (32-(14 + 15)); r11.x = (uint)r11.x >> (32-14);          } else r11.x = (uint)r10.z >> 15;
          r11.x = (uint)r11.x;
          r11.x = sunConstants.sstLightingConstants.constants.spanInInches * r11.x;
          r11.yz = (int2)r10.zz & int2(32767,536870912);
          r11.y = (uint)r11.y;
          r11.y = sunConstants.sstLightingConstants.constants.spanInInches * r11.y;
          r11.xy = float2(6.10388815e-05,3.05185094e-05) * r11.xy;
          r11.w = (int)r9.z & 3;
          r11.w = (int)r10.x + (int)r11.w;
          r11.w = (int)r11.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r12.x = (((uint)r9.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r12.y = (((uint)r9.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r12.z = (((uint)r9.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r9.y = (uint)r11.w >> (uint)r12.x;
          r9.y = (int)r9.y & 255;
          r9.y = (uint)r9.y;
          r9.y = r9.y * r11.y;
          r9.y = r9.y * 0.00392156886 + r11.x;
          r9.z = (int)r12.y + 1;
          if (1 == 0) r9.w = 0; else if (1+1 < 32) {           r9.w = (uint)r9.w << (32-(1 + 1)); r9.w = (uint)r9.w >> (32-1);          } else r9.w = (uint)r9.w >> 1;
          r9.z = (int)r9.w + (int)r9.z;
          r9.z = (int)r9.z + (int)r10.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.z, r9.z, l(0), t23.xxxx
        r9.z = samp0[]..swiz;
          r9.z = (uint)r9.z >> (uint)r12.z;
          r9.z = (int)r9.z & 0x0000ffff;
          r9.z = (uint)r9.z;
          r9.z = r9.z * r11.y;
          r9.z = r9.z * 1.52590219e-05 + r11.x;
          r10.w = r11.z ? r9.y : r9.z;
        } else {
          r9.y = (int)r10.z & 0x80000000;
          r9.z = (int)r10.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.z, r9.z, l(0), t23.xxxx
        r9.z = samp0[]..swiz;
          r9.y = r9.y ? r9.z : 0;
          r9.z = (uint)r10.z << 2;
          r9.w = (uint)r9.y >> 16;
          r9.y = (int)r9.y & 0x0000ffff;
          r9.yw = f16tof32(r9.yw);
          r9.z = r7.x * r9.w + r9.z;
          r9.y = r7.y * r9.y + r9.z;
          r10.w = r10.y ? r9.y : r10.w;
        }
      }
      r7.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r7.z;
      r7.z = cmp(r10.w < r7.z);
      r5.w = r7.z ? 0 : 1;
    }
    if (r9.x == 0) {
      if (enableDitheredShadow == 0) {
        r7.z = (uint)r7.w;
        r9.xy = -sunConstants.splitPinTransform[r7.z].xy + r7.xy;
        r9.xy = sunConstants.splitPinTransform[r7.z].zz * r9.xy;
        r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.z = (int16)sunConstants.splitArrayOffset;
        r9.z = r7.w + r7.z;
        r7.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r9.xyz, r3.w).x;
        r9.x = gTransShadowmapArray.SampleLevel(samp0_s, r9.xyz, 0).x;
        r7.z = r9.x + r7.z;
        r7.z = saturate(-1 + r7.z);
        r9.x = r7.z * r7.z;
        r5.w = r9.x * r7.z;
      }
      if (enableDitheredShadow != 0) {
        r9.x = -r5.x;
        r7.z = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.w = (uint)r8.w;
        r10.xy = -sunConstants.splitPinTransform[r7.z].xy + r7.xy;
        r10.xy = sunConstants.splitPinTransform[r7.z].zz * r10.xy;
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.xy = -sunConstants.splitPinTransform[r7.w].xy + r7.xy;
        r7.xy = sunConstants.splitPinTransform[r7.w].zz * r7.xy;
        r7.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.y = r6.x;
        r9.z = r5.x;
        r9.w = 0;
        r10.z = 0;
        while (true) {
          r10.w = cmp((uint)r10.z >= 8);
          if (r10.w != 0) break;
          r10.w = cmp((uint)r8.w < (uint)r10.z);
          r11.xy = r10.ww ? r7.xy : r10.xy;
          r11.z = r10.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r7.z].w;
          r10.w = r10.w ? r7.w : r7.z;
          r12.x = dot(icb[r10.z+0].yx, r9.xy);
          r12.y = dot(icb[r10.z+0].yx, r9.yz);
          r11.xy = r12.xy * r11.zz + r11.xy;
          r10.w = (int)r10.w + (int16)sunConstants.splitArrayOffset;
          r11.z = (uint)r10.w;
          r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r3.w).x;
          r11.x = gTransShadowmapArray.SampleLevel(samp0_s, r11.xyz, 0).x;
          r10.w = r11.x + r10.w;
          r10.w = saturate(-1 + r10.w);
          r9.w = r10.w * 0.125 + r9.w;
          r10.z = (int)r10.z + 1;
        }
        r3.w = r9.w * r9.w;
        r5.w = r3.w * r9.w;
      }
    }
  }
  r3.w = cmp(0 < r2.w);
  if (r3.w != 0) {
    r3.w = cmp(0 < r5.w);
    if (r3.w != 0) {
      r3.w = cmp(isDepthHack != 0);
      r7.x = sqrt(r5.z);
      r7.x = r7.x * 0.5 + 0.5;
      r7.x = r7.x * r7.x;
      r7.y = 0.5 * r7.x;
      r7.x = -r7.x * 0.5 + 1;
      r7.z = r1.x * r7.x + r7.y;
      r7.xy = r7.xy * r7.zz;
      r7.z = sunConstants.specScale * r5.y;
      r7.z = r7.z * r2.w;
      if (sunConstants.sunCookieIndex != 0) {
        r9.xyz = eyeOffset.xyz + v6.xyz;
        r9.w = 1;
        r7.w = dot(sunConstants.sunCookieTransform[0].xyzw, r9.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r9.xyzw);
        r9.x = frac(r7.w);
        r9.y = frac(r8.w);
        r7.w = -1 + (int14)sunConstants.sunCookieIndex;
        r9.z = (uint)r7.w;
        r9.xyz = gCookieArray.SampleLevel(samplerLinear_s, r9.xyz, 0).xyz;
        r9.xyz = float3(-1,-1,-1) + r9.xyz;
        r9.xyz = sunConstants.sunCookieIntensity * r9.xyz + float3(1,1,1);
        r9.xyz = sunConstants.color.xyz * r9.xyz;
      } else {
        r9.xyz = sunConstants.color.xyz;
      }
      r7.w = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r7.w);
      r8.w = r3.w ? r8.w : 0;
      if (r8.w != 0) {
        r7.w = (int)r7.w + numLights;
        r7.w = (int)r7.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(52), t12.xxxx
      r8.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r7.w, l(68), t12.xyzw
      r10.x = samp0[]..swiz;
      r10.y = samp0[]..swiz;
      r10.z = samp0[]..swiz;
      r10.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r7.w, l(84), t12.xyzw
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
      r11.z = samp0[]..swiz;
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r7.w, l(132), t12.xyzw
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
      r12.z = samp0[]..swiz;
      r12.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.w, l(148), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
        r9.w = abs(r0.w) * -0.200000003 + 0.400000006;
        r14.xyz = r2.xyz * r9.www + v6.xyz;
        r14.w = 1;
        r10.x = dot(r10.xyzw, r14.xyzw);
        r10.y = dot(r11.xyzw, r14.xyzw);
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.xy = r10.xy + r13.zw;
        r10.xy = r10.xy * r13.xy;
        r10.zw = r8.ww / r12.xz;
        r11.xy = float2(1,1) + -r10.zw;
        r11.xy = cmp(r10.xy >= r11.xy);
        r10.zw = cmp(r10.zw >= r10.xy);
        r10.zw = (int2)r10.zw | (int2)r11.xy;
        r9.w = (int)r10.w | (int)r10.z;
        if (r9.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.w, l(28), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r7.w, l(100), t12.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.zw, r7.w, l(164), t12.xxxy
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
          r7.w = dot(r11.xyzw, r14.xyzw);
          r10.xy = saturate(r10.xy);
          r11.xy = r10.xy * r12.xz + r12.yw;
          r7.w = r7.w + r10.z;
          r7.w = r7.w / r10.w;
          r7.w = max(6.10351563e-05, r7.w);
          r9.w = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r10.x = -r5.x;
            r12.z = (uint)r9.w;
            r10.y = r6.x;
            r10.z = r5.x;
            r10.w = 0;
            r11.w = 0;
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r13.x = dot(icb[r11.w+0].yx, r10.xy);
              r13.y = dot(icb[r11.w+0].yx, r10.yz);
              r12.xy = r13.xy * r8.ww + r11.xy;
              r12.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r7.w).x;
              r10.w = r12.x * 0.125 + r10.w;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r11.z = (uint)r9.w;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r7.w).x;
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
        r3.w = ~(int)r3.w;
        r3.w = r3.w ? r8.w : 0;
        if (r3.w != 0) {
          r3.w = (int)r7.w + numLights;
          r3.w = (int)r3.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r3.w, l(52), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r3.w, l(68), t12.xyzw
        r10.x = samp0[]..swiz;
        r10.y = samp0[]..swiz;
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r3.w, l(84), t12.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r3.w, l(132), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r3.w, l(148), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
          r8.w = abs(r0.w) * -0.200000003 + 0.400000006;
          r14.xyz = r2.xyz * r8.www + v6.xyz;
          r14.w = 1;
          r10.x = dot(r10.xyzw, r14.xyzw);
          r10.y = dot(r11.xyzw, r14.xyzw);
          r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.xy = r10.xy + r13.zw;
          r10.xy = r10.xy * r13.xy;
          r10.zw = r7.ww / r12.xz;
          r11.xy = float2(1,1) + -r10.zw;
          r11.xy = cmp(r10.xy >= r11.xy);
          r10.zw = cmp(r10.zw >= r10.xy);
          r10.zw = (int2)r10.zw | (int2)r11.xy;
          r8.w = (int)r10.w | (int)r10.z;
          if (r8.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r3.w, l(28), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r3.w, l(100), t12.xyzw
          r11.x = samp0[]..swiz;
          r11.y = samp0[]..swiz;
          r11.z = samp0[]..swiz;
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.zw, r3.w, l(164), t12.xxxy
          r10.z = samp0[]..swiz;
          r10.w = samp0[]..swiz;
            r3.w = dot(r11.xyzw, r14.xyzw);
            r10.xy = saturate(r10.xy);
            r11.xy = r10.xy * r12.xz + r12.yw;
            r3.w = r3.w + r10.z;
            r3.w = r3.w / r10.w;
            r3.w = max(6.10351563e-05, r3.w);
            r8.w = (int)r8.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r10.x = -r5.x;
              r12.z = (uint)r8.w;
              r10.y = r6.x;
              r10.z = r5.x;
              r5.x = 0;
              r6.x = 0;
              while (true) {
                r9.w = cmp((int)r6.x >= 8);
                if (r9.w != 0) break;
                r13.x = dot(icb[r6.x+0].yx, r10.xy);
                r13.y = dot(icb[r6.x+0].yx, r10.yz);
                r12.xy = r13.xy * r7.ww + r11.xy;
                r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r3.w).x;
                r5.x = r9.w * 0.125 + r5.x;
                r6.x = (int)r6.x + 1;
              }
            } else {
              r11.z = (uint)r8.w;
              r5.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r11.xyz, r3.w).x;
            }
            r3.w = r5.x * r5.x;
            r3.w = r3.w * r5.x;
          } else {
            r3.w = 1;
          }
          r5.w = r5.w * r3.w;
        }
      }
      r1.x = -r1.x * 0.5 + 1;
      r1.x = -r2.w * r1.x + 1;
      r1.x = r1.x * r1.x;
      r1.x = -r1.x * 0.620000005 + 0.620000005;
      r1.x = r1.x + -r2.w;
      r1.x = r5.z * r1.x + r2.w;
      r1.x = r1.x * r5.w;
      r0.w = cmp(0 < r0.w);
      r10.xyz = r1.xxx * r9.xyz + r6.yzw;
      r11.xyz = -v6.xyz * r4.xxx + sunConstants.wldDir.xyz;
      r1.x = dot(r11.xyz, r11.xyz);
      r1.x = rsqrt(r1.x);
      r11.xyz = r11.xyz * r1.xxx;
      r1.x = dot(r11.xyz, r4.yzw);
      r2.x = dot(r2.xyz, r11.xyz);
      r2.y = abs(r2.x) * r5.y + -abs(r2.x);
      r2.x = abs(r2.x) * r2.y + 1;
      r2.y = r2.w * r7.x + r7.y;
      r2.x = r2.x * r2.x;
      r2.x = r2.x * r2.y;
      r2.x = rcp(r2.x);
      r2.x = r2.x * r7.z;
      r2.x = r5.w * r2.x;
      r2.x = 0.25 * r2.x;
      r2.yzw = r2.xxx * r9.xyz + r1.yzw;
      r1.x = saturate(1 + -r1.x);
      r3.w = r1.x * r1.x;
      r3.w = r3.w * r3.w;
      r1.x = r3.w * r1.x;
      r1.x = r2.x * r1.x;
      r4.xyz = r1.xxx * r9.xyz + r8.xyz;
      r6.yzw = r0.www ? r10.xyz : r6.yzw;
      r8.xyz = r0.www ? r4.xyz : r8.xyz;
      r1.yzw = r0.www ? r2.yzw : r1.yzw;
    }
  }
  r2.xyz = float3(1,1,1) + -r3.xyz;
  r2.xyz = r8.xyz * r2.xyz;
  r1.xyz = r1.yzw * r3.xyz + r2.xyz;
  r0.xyz = r6.yzw * r0.xyz + r1.xyz;
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