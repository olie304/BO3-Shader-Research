// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:50 2021

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
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float detailScaleHeight : packoffset(c12.z);
  float detailScaleHeight1 : packoffset(c12.w);
  float detailScaleHeight2 : packoffset(c13);
  float detailScaleHeight3 : packoffset(c13.y);
  float metalFlakeNormalScale : packoffset(c13.z);
  float metalFlakeMaskScale : packoffset(c13.w);
  float flakeScaleHeight : packoffset(c14);
  float metalFlakeGloss : packoffset(c14.y);
  float4 metalFlakeSpec : packoffset(c15);
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
SamplerState detailMaskSampler_s : register(s7);
SamplerState metalFlakeSampler_s : register(s8);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> metalFlakeNormalMap : register(t0);
Texture2D<float4> metalFlakeMaskMap : register(t1);
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
Texture2D<float4> specColorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> detailNormal1 : register(t29);
Texture2D<float4> detailNormal2 : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2D<float4> detailNormal3 : register(t37);
Texture2D<float4> detailNormal4 : register(t38);
Texture2D<float4> detailNormalMask : register(t46);


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
  uint v6 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = v1.x * r0.w;
  r1.yzw = specColorMap.Sample(specColorSampler_s, w1.xy).xyz;
  r2.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r2.y = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.z = glossRange.y + -glossRange.x;
  r2.y = r2.y * r2.z + glossRange.x;
  r2.y = saturate(0.0588235296 * r2.y);
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r2.w = r3.z * r3.z;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r5.xyzw = detailNormalMask.Sample(detailMaskSampler_s, w1.xy).xyzw;
  r3.z = cmp(0 < r5.x);
  r6.xy = detailScale3.xy * w1.xy;
  r6.xyz = detailNormal1.Sample(normalSampler_s, r6.xy).xyz;
  r7.xy = detailScale2.xy * w1.xy;
  r7.xyz = detailNormal2.Sample(normalSampler_s, r7.xy).xyz;
  r8.xy = detailScale1.xy * w1.xy;
  r8.xyz = detailNormal3.Sample(normalSampler_s, r8.xy).xyz;
  r9.xy = detailScale.xy * w1.xy;
  r9.xyz = detailNormal4.Sample(normalSampler_s, r9.xy).xyz;
  if (r3.z != 0) {
    r3.z = detailScaleHeight3 * r5.x;
    r9.xyz = r6.xyz;
  } else {
    r3.w = cmp(0 < r5.y);
    if (r3.w != 0) {
      r3.z = detailScaleHeight2 * r5.y;
      r9.xyz = r7.xyz;
    } else {
      r3.w = cmp(0 < r5.z);
      if (r3.w != 0) {
        r3.z = detailScaleHeight1 * r5.z;
        r9.xyz = r8.xyz;
      } else {
        r3.w = cmp(0 < r5.w);
        if (r3.w != 0) {
          r3.z = detailScaleHeight * r5.w;
        } else {
          r9.xyz = float3(0,0,0);
          r3.z = 0;
        }
      }
    }
  }
  r5.xy = r9.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = r9.z * r9.z;
  r3.w = 0.333333343 * r3.w;
  r3.w = min(1, r3.w);
  r4.xy = r5.xy * r3.zz + r3.xy;
  r3.x = dot(r4.xyz, r4.xyz);
  r3.x = rsqrt(r3.x);
  r4.xyz = r4.xyz * r3.xxx;
  r2.w = r3.w * r3.z + r2.w;
  r3.x = v6.x ? 1 : -1;
  r3.y = dot(v2.xyz, v2.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v2.xyz * r3.yyy;
  r3.yzw = r3.yzw * r3.xxx;
  r4.w = dot(v3.xyz, v3.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v3.xyz * r4.www;
  r5.xyz = r5.xyz * r3.xxx;
  r4.w = dot(v4.xyz, v4.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = v4.xyz * r4.www;
  r6.xyz = r6.xyz * r3.xxx;
  r2.y = -17 * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.w + r2.y;
  r2.y = log2(r2.y);
  r7.xyz = r6.xyz * r4.yyy;
  r7.xyz = r5.xyz * r4.xxx + r7.xyz;
  r7.xyz = r3.yzw * r4.zzz + r7.xyz;
  r3.x = dot(r7.xyz, r7.xyz);
  r3.x = rsqrt(r3.x);
  r7.xyz = r7.xyz * r3.xxx;
  r2.z = debugGlossOverride.x * r2.z + glossRange.x;
  r2.yz = saturate(float2(-0.0588235296,0.0588235296) * r2.yz);
  r2.z = -17 * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r2.w + r2.z;
  r2.z = log2(r2.z);
  r2.z = saturate(-0.0588235296 * r2.z);
  r3.x = cmp(0 < debugStreamerControl.w);
  if (r3.x != 0) {
    r3.x = (int)debugStreamerControl.w;
    r4.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r5.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r4.w = cmp(r4.w < r5.w);
    r5.w = cmp(0 < r5.w);
    r8.xyz = (int3)r3.xxx & int3(1,2,4);
    r9.xyz = r8.xxx ? float3(1,0,1) : r0.xyz;
    r8.xyw = r8.yyy ? float3(0,1,1) : r0.xyz;
    r8.xyw = r5.www ? r9.xyz : r8.xyw;
    r9.xyz = r8.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r4.www ? r8.xyw : r9.xyz;
  }
  r8.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r8.xyz + r0.xyz;
  r0.w = -r0.w * v1.x + debugAlphaOverride.x;
  r0.w = debugAlphaOverride.w * r0.w + r1.x;
  r8.xyz = debugSpecularOverride.xyz + -r1.yzw;
  r1.xyz = debugSpecularOverride.www * r8.xyz + r1.yzw;
  r1.w = r2.z + -r2.y;
  r8.y = debugGlossOverride.w * r1.w + r2.y;
  r1.w = debugOcclusionOverride.x + -r2.x;
  r1.w = debugOcclusionOverride.w * r1.w + r2.x;
  r2.xyz = v6.xxx ? v2.xyz : -v2.xyz;
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = rsqrt(r3.x);
  r2.xyz = r2.xyz * r3.xxx + -r7.xyz;
  r7.xyz = debugNormalOverride.www * r2.xyz + r7.xyz;
  r2.xy = (uint2)v0.xy;
  r2.z = cmp(v0.z >= 0.984375);
  r3.x = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r2.z = r2.z ? r4.w : r3.x;
  r2.z = max(9.99999994e-09, r2.z);
  r2.z = rcp(r2.z);
  r3.x = dot(-v5.xyz, -v5.xyz);
  r3.x = rsqrt(r3.x);
  r9.xyz = -v5.xyz * r3.xxx;
  r4.w = cmp(isDepthHack != 0);
  r8.zw = (uint2)r2.yx;
  r5.w = dot(r8.wz, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r10.x, r11.x);
  r5.w = dot(r8.zw, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r12.x, r13.x);
  r8.x = saturate(dot(r7.xyz, r9.xyz));
  r5.w = dot(-r9.xyz, r7.xyz);
  r5.w = r5.w + r5.w;
  r14.xyz = r7.xyz * -r5.www + -r9.xyz;
  r5.w = 17 * r8.y;
  r5.w = exp2(r5.w);
  r5.w = 2 + r5.w;
  r5.w = 2 / r5.w;
  r5.w = sqrt(r5.w);
  r6.w = dot(r7.xyz, sunConstants.wldDir.xyz);
  r8.z = saturate(r6.w);
  r8.w = cmp(0 >= r8.z);
  if (r8.w != 0) {
    r9.w = 0;
  }
  if (r8.w == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r10.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r8.w = -sunConstants.splitDepthOffset + r10.w;
    r8.w = -r8.w * 6.10351563e-05 + 1;
    r11.w = saturate(r8.w);
    r11.w = cmp(r8.w == r11.w);
    if (r11.w != 0) {
      r11.w = 0;
      r12.y = 0;
      while (true) {
        r12.z = cmp(r11.w >= 3);
        if (r12.z != 0) break;
        r12.z = (uint)r11.w;
        r13.yz = -sunConstants.splitPinTransform[r12.z].xy + r10.yz;
        r12.w = max(abs(r13.y), abs(r13.z));
        r12.y = sunConstants.splitPinTransform[r12.z].z * r12.w;
        r12.z = cmp(r12.y < 1);
        if (r12.z != 0) {
          break;
        }
        r11.w = 1 + r11.w;
        r12.y = 0;
      }
    } else {
      r11.w = 3;
      r12.y = 0;
    }
    r12.z = cmp(r11.w >= 3);
    if (r12.z != 0) {
      r13.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r13.yy);
      r15.y = -r15.z;
      r13.yzw = r10.yzy * r15.xyz + r13.zwz;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.yzw = max(float3(0,0,0), r13.yzw);
      r13.yzw = min(r13.yzw, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r13.wz;
      r15.xy = floor(r15.xy);
      r12.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r12.w = r12.w * sunConstants.sstLightingConstants.coordScale + r15.x;
      r12.w = (uint)r12.w;
      r12.w = (int)r12.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.x, r12.w, l(0), t23.xxxx
    r15.x = samp0[]..swiz;
      r15.y = (int)r15.x & 0x40000000;
      r15.z = (uint)r15.x << 2;
      if (r15.y == 0) {
        r15.y = (int)r15.x & 0x01ffffff;
        r16.x = (int)r12.w + (int)r15.y;
        r12.w = (uint)r15.x >> 25;
        r12.w = (uint)r12.w;
        r13.yzw = r13.yzw * r12.www;
        r13.yzw = frac(r13.yzw);
        r13.yzw = float3(128,128,128) * r13.yzw;
        r13.yzw = (uint3)r13.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.xy = (uint2)r13.wz >> int2(6,6);
        r12.w = (int)r16.z & 0xc0000000;
        r15.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.y = r15.y ? r16.z : r15.w;
        r15.w = (uint)r15.y >> 13;
        r15.x = r15.x ? r15.w : r15.y;
        r15.x = (int)r15.x & 8191;
        r17.x = (int)r15.x + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r15.xyw = r12.www ? r16.xyz : r17.xyz;
        r17.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r18.xy = (uint2)r13.wz >> (uint2)r17.yy;
        r18.xy = (int2)r18.xy & int2(1,1);
        r16.w = (int)r15.w & 0xc0000000;
        r17.y = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
      r17.y = samp0[]..swiz;
        r17.y = r18.y ? r15.w : r17.y;
        r18.y = (uint)r17.y >> 13;
        r17.y = r18.x ? r18.y : r17.y;
        r17.y = (int)r17.y & 8191;
        r17.x = (int)r15.x + (int)r17.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r15.xyw = r16.www ? r15.xyw : r17.xzw;
        r15.xyw = r12.www ? r16.xyz : r15.xyw;
        r12.w = (int)r15.w & 0xc0000000;
        if (r12.w == 0) {
          r12.w = (int)-r15.y + 6;
          r16.xy = (uint2)r13.wz >> (uint2)r12.ww;
          r12.w = (int)r15.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.x = (((uint)r16.x << 0) & bitmask.x) | ((uint)r16.y & ~bitmask.x);
          r16.x = (int)r16.x * 10;
          r12.w = (uint)r12.w >> (uint)r16.x;
          r12.w = (int)r12.w & 1023;
          r16.x = (int)r12.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.yy + int2(1,2);
          r12.w = (int)-r16.y + 6;
          r17.xy = (uint2)r13.wz >> (uint2)r12.ww;
          r12.w = (int)r16.w & 0xc0000000;
          r15.y = (int)r16.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.x = (((uint)r17.x << 0) & bitmask.x) | ((uint)r17.y & ~bitmask.x);
          r17.x = (int)r17.x * 10;
          r15.y = (uint)r15.y >> (uint)r17.x;
          r15.y = (int)r15.y & 1023;
          r17.x = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r12.www ? r16.xyw : r17.xyz;
          r15.y = (int)-r17.y + 6;
          r16.yz = (uint2)r13.wz >> (uint2)r15.yy;
          r15.y = (int)r17.z & 0xc0000000;
          r17.y = (int)r17.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.z & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r16.y = (uint)r17.y >> (uint)r16.y;
          r16.y = (int)r16.y & 1023;
          r18.x = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r16.yz = r15.yy ? r17.xz : r18.xy;
          r15.xw = r12.ww ? r16.xw : r16.yz;
        }
        r12.w = (int)r15.w & 0xc0000000;
        if (r12.w == 0) {
          if (14 == 0) r15.y = 0; else if (14+15 < 32) {           r15.y = (uint)r15.w << (32-(14 + 15)); r15.y = (uint)r15.y >> (32-14);          } else r15.y = (uint)r15.w >> 15;
          r15.y = (uint)r15.y;
          r15.y = sunConstants.sstLightingConstants.constants.spanInInches * r15.y;
          r15.y = 6.10388815e-05 * r15.y;
          r16.xy = (int2)r15.ww & int2(32767,536870912);
          r16.x = (uint)r16.x;
          r16.x = sunConstants.sstLightingConstants.constants.spanInInches * r16.x;
          r16.x = 3.05185094e-05 * r16.x;
          r16.z = (int)r13.z & 3;
          r16.z = (int)r15.x + (int)r16.z;
          r16.z = (int)r16.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r13.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r13.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r13.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r13.y = (uint)r16.z >> (uint)r17.x;
          r13.y = (int)r13.y & 255;
          r13.y = (uint)r13.y;
          r13.y = r13.y * r16.x;
          r13.y = r13.y * 0.00392156886 + r15.y;
          r13.z = (int)r17.y + 1;
          if (1 == 0) r13.w = 0; else if (1+1 < 32) {           r13.w = (uint)r13.w << (32-(1 + 1)); r13.w = (uint)r13.w >> (32-1);          } else r13.w = (uint)r13.w >> 1;
          r13.z = (int)r13.w + (int)r13.z;
          r13.z = (int)r13.z + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.z = (uint)r13.z >> (uint)r17.z;
          r13.z = (int)r13.z & 0x0000ffff;
          r13.z = (uint)r13.z;
          r13.z = r13.z * r16.x;
          r13.z = r13.z * 1.52590219e-05 + r15.y;
          r15.z = r16.y ? r13.y : r13.z;
        } else {
          r13.y = (int)r15.w & 0x80000000;
          r13.z = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.y = r13.y ? r13.z : 0;
          r13.z = (uint)r15.w << 2;
          r13.w = (uint)r13.y >> 16;
          r13.y = (int)r13.y & 0x0000ffff;
          r13.yw = f16tof32(r13.yw);
          r13.z = r10.y * r13.w + r13.z;
          r13.y = r10.z * r13.y + r13.z;
          r15.z = r12.w ? r13.y : r15.z;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r15.z < r10.w);
      r9.w = r10.w ? 0 : 1;
    }
    if (r12.z == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r11.w;
        r12.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r12.zw = sunConstants.splitPinTransform[r10.w].zz * r12.zw;
        r15.xy = r12.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r11.w + r10.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
        r12.z = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r10.w = r12.z + r10.w;
        r10.w = saturate(-1 + r10.w);
        r12.z = r10.w * r10.w;
        r9.w = r12.z * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r10.x;
        r10.w = (uint)r11.w;
        r11.w = 1 + r11.w;
        r11.w = min(2, r11.w);
        r11.w = (uint)r11.w;
        r12.y = 1 + -r12.y;
        r12.y = 28 * r12.y;
        r12.y = (uint)r12.y;
        r12.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r12.zw = sunConstants.splitPinTransform[r10.w].zz * r12.zw;
        r12.zw = r12.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r11.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r11.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r11.x;
        r15.z = r10.x;
        r13.yz = float2(0,0);
        while (true) {
          r13.w = cmp((uint)r13.z >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r12.y < (uint)r13.z);
          r16.xy = r13.ww ? r10.yz : r12.zw;
          r15.w = r13.w ? sunConstants.splitPinTransform[r11.w].w : sunConstants.splitPinTransform[r10.w].w;
          r13.w = r13.w ? r11.w : r10.w;
          r17.x = dot(icb[r13.z+0].yx, r15.xy);
          r17.y = dot(icb[r13.z+0].yx, r15.yz);
          r16.xy = r17.xy * r15.ww + r16.xy;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.w).x;
          r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r13.w = r15.w + r13.w;
          r13.w = saturate(-1 + r13.w);
          r13.y = r13.w * 0.125 + r13.y;
          r13.z = (int)r13.z + 1;
        }
        r8.w = r13.y * r13.y;
        r9.w = r8.w * r13.y;
      }
    }
  }
  r8.w = cmp(0 < r8.z);
  if (r8.w != 0) {
    r8.w = cmp(0 < r9.w);
    if (r8.w != 0) {
      if (sunConstants.sunCookieIndex != 0) {
        r15.xyz = eyeOffset.xyz + v5.xyz;
        r15.w = 1;
        r8.w = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r10.y = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r15.x = frac(r8.w);
        r15.y = frac(r10.y);
        r8.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r8.w;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r8.w = viewmodelSunShadowRaw >> 16;
      r11.w = cmp(0 < (uint)r8.w);
      r11.w = r4.w ? r11.w : 0;
      if (r11.w != 0) {
        r8.w = (int)r8.w + numLights;
        r8.w = (int)r8.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(52), t12.xxxx
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r12.y = abs(r6.w) * -0.200000003 + 0.400000006;
        r19.xyz = r7.xyz * r12.yyy + v5.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r12.yz = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.yz = r12.yz + r18.zw;
        r12.yz = r12.yz * r18.xy;
        r13.yz = r11.ww / r17.xz;
        r15.xy = float2(1,1) + -r13.yz;
        r15.xy = cmp(r12.yz >= r15.xy);
        r13.yz = cmp(r13.yz >= r12.yz);
        r13.yz = (int2)r13.yz | (int2)r15.xy;
        r12.w = (int)r13.z | (int)r13.y;
        if (r12.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r8.w, l(28), t12.xxxx
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.yz, r8.w, l(164), t12.xxyx
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
          r8.w = dot(r15.xyzw, r19.xyzw);
          r12.yz = saturate(r12.yz);
          r15.xy = r12.yz * r17.xz + r17.yw;
          r8.w = r8.w + r13.y;
          r8.w = r8.w / r13.z;
          r8.w = max(6.10351563e-05, r8.w);
          r12.y = (int)r12.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r10.x;
            r17.z = (uint)r12.y;
            r16.y = r11.x;
            r16.z = r10.x;
            r12.zw = float2(0,0);
            while (true) {
              r13.y = cmp((int)r12.w >= 8);
              if (r13.y != 0) break;
              r18.x = dot(icb[r12.w+0].yx, r16.xy);
              r18.y = dot(icb[r12.w+0].yx, r16.yz);
              r17.xy = r18.xy * r11.ww + r15.xy;
              r13.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.w).x;
              r12.z = r13.y * 0.125 + r12.z;
              r12.w = (int)r12.w + 1;
            }
          } else {
            r15.z = (uint)r12.y;
            r12.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
          }
          r8.w = r12.z * r12.z;
          r8.w = r8.w * r12.z;
        } else {
          r8.w = 1;
        }
        r9.w = r9.w * r8.w;
      } else {
        r8.w = viewmodelSunShadowRaw & 0x0000ffff;
        r11.w = cmp(0 < (uint)r8.w);
        r12.y = ~(int)r4.w;
        r11.w = r11.w ? r12.y : 0;
        if (r11.w != 0) {
          r8.w = (int)r8.w + numLights;
          r8.w = (int)r8.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(52), t12.xxxx
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r12.y = abs(r6.w) * -0.200000003 + 0.400000006;
          r19.xyz = r7.xyz * r12.yyy + v5.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r12.yz = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r12.yz = r12.yz + r18.zw;
          r12.yz = r12.yz * r18.xy;
          r13.yz = r11.ww / r17.xz;
          r15.xy = float2(1,1) + -r13.yz;
          r15.xy = cmp(r12.yz >= r15.xy);
          r13.yz = cmp(r13.yz >= r12.yz);
          r13.yz = (int2)r13.yz | (int2)r15.xy;
          r12.w = (int)r13.z | (int)r13.y;
          if (r12.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r8.w, l(28), t12.xxxx
          r12.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.yz, r8.w, l(164), t12.xxyx
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
            r8.w = dot(r15.xyzw, r19.xyzw);
            r12.yz = saturate(r12.yz);
            r15.xy = r12.yz * r17.xz + r17.yw;
            r8.w = r8.w + r13.y;
            r8.w = r8.w / r13.z;
            r8.w = max(6.10351563e-05, r8.w);
            r12.y = (int)r12.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r10.x;
              r17.z = (uint)r12.y;
              r16.y = r11.x;
              r16.z = r10.x;
              r12.zw = float2(0,0);
              while (true) {
                r13.y = cmp((int)r12.w >= 8);
                if (r13.y != 0) break;
                r18.x = dot(icb[r12.w+0].yx, r16.xy);
                r18.y = dot(icb[r12.w+0].yx, r16.yz);
                r17.xy = r18.xy * r11.ww + r15.xy;
                r13.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.w).x;
                r12.z = r13.y * 0.125 + r12.z;
                r12.w = (int)r12.w + 1;
              }
            } else {
              r15.z = (uint)r12.y;
              r12.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
            }
            r8.w = r12.z * r12.z;
            r8.w = r8.w * r12.z;
          } else {
            r8.w = 1;
          }
          r9.w = r9.w * r8.w;
        }
      }
      r8.w = -r8.x * 0.5 + 1;
      r8.w = -r8.z * r8.w + 1;
      r8.w = r8.w * r8.w;
      r8.w = -r8.w * 0.620000005 + 0.620000005;
      r8.w = r8.w + -r8.z;
      r8.z = r5.w * r8.w + r8.z;
      r8.z = r8.z * r9.w;
      r10.yzw = r8.zzz * r10.yzw;
      r6.w = cmp(0 < r6.w);
      r10.yzw = r6.www ? r10.yzw : 0;
    } else {
      r10.yzw = float3(0,0,0);
    }
  } else {
    r10.yzw = float3(0,0,0);
  }
  r2.z = 0.0078125 * r2.z;
  r2.z = min(15, r2.z);
  r2.z = (uint)r2.z;
  r15.xy = (uint2)r2.xy >> int2(6,6);
  r15.z = (uint)r2.z << 4;
  r16.y = -r10.x;
  r2.x = ~(int)r4.w;
  r2.y = -r8.x * 0.5 + 1;
  r17.xy = float2(0,0);
  r18.w = 0;
  r19.xyz = v5.xyz;
  r19.w = 1;
  r20.w = 1;
  r16.z = r10.x;
  r21.w = 1;
  r22.z = 1;
  r23.w = 1;
  r16.xw = r11.xx;
  r24.z = r10.x;
  r24.x = r16.w;
  r25.w = 1;
  r11.y = r16.y;
  r11.z = r24.z;
  r26.w = 1;
  r27.x = r11.x;
  r27.y = r16.y;
  r27.z = r24.z;
  r28.x = r11.x;
  r28.y = r16.y;
  r28.z = r24.z;
  r29.x = r11.x;
  r29.y = r16.y;
  r29.z = r24.z;
  r12.yzw = r10.yzw;
  r2.z = enableDitheredShadow;
  r6.w = 0;
  while (true) {
    r8.z = cmp((uint)r6.w >= numLights);
    if (r8.z != 0) break;
    r17.z = (uint)r6.w >> 5;
    r18.xyz = (int3)r15.xyz + (int3)r17.xyz;
    r8.z = visibleLights.Load(r18.xyzw).x;
    r13.yzw = r12.yzw;
    r8.w = r2.z;
    r9.w = r8.z;
    while (true) {
      if (r9.w == 0) break;
      r10.x = firstbitlow((uint)r9.w);
      r11.w = 1 << (int)r10.x;
      r15.w = (int)r9.w & (int)r11.w;
      if (r15.w != 0) {
        r9.w = (int)r9.w ^ (int)r11.w;
        r10.x = (int)r6.w + (int)r10.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r30.xyzw, r10.x, l(0), t11.xyzw
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
      r30.z = samp0[]..swiz;
      r30.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r18.xy, r10.x, l(16), t11.xyxx
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
        r30.xyz = -v5.xyz + r30.xyz;
        r18.z = r30.w;
        r18.xyz = cmp(abs(r30.xyz) < r18.zxy);
        r11.w = r18.y ? r18.x : 0;
        r11.w = r18.z ? r11.w : 0;
        if (r11.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r10.x, l(0), t12.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xy, r10.x, l(16), t12.xyxx
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r10.x, l(28), t12.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r10.x, l(44), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r10.x, l(60), t12.zwxy
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r10.x, l(76), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r10.x, l(92), t12.zwxy
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
          if (3 == 0) r11.w = 0; else if (3+24 < 32) {           r11.w = (uint)r32.x << (32-(3 + 24)); r11.w = (uint)r11.w >> (32-3);          } else r11.w = (uint)r32.x >> 24;
          switch (r11.w) {
            case 4 :            r11.w = cmp(0 < r36.x);
            r18.x = r35.w;
            r18.yz = r36.zw;
            r37.xyz = -r18.xyz * float3(0.5,0.5,0.5) + r30.xyz;
            r38.xyz = -v5.xyz + r37.xyz;
            r15.w = dot(r18.xyz, r38.xyz);
            r15.w = saturate(-r15.w / r36.x);
            r18.xyz = r15.www * r18.xyz + r37.xyz;
            r18.xyz = r11.www ? r18.xyz : r30.xyz;
            r18.xyz = -v5.xyz + r18.xyz;
            r11.w = dot(r18.xyz, r18.xyz);
            r15.w = rsqrt(r11.w);
            r18.xyz = r18.xyz * r15.www;
            r15.w = dot(r7.xyz, r18.xyz);
            r17.z = saturate(r15.w);
            r17.w = cmp(0 < r17.z);
            if (r17.w != 0) {
              r17.w = sqrt(r11.w);
              r18.x = r33.y * r33.y;
              r11.w = r18.x / r11.w;
              r11.w = min(1, r11.w);
              r18.x = saturate(r17.w * r32.y + r32.z);
              r17.w = saturate(r17.w * r32.w + r33.x);
              r18.y = r18.x * r18.x;
              r18.x = r18.x * -2 + 3;
              r18.x = r18.y * r18.x;
              r11.w = r18.x * r11.w;
              r18.x = r17.w * r17.w;
              r17.w = r17.w * -2 + 3;
              r17.w = r18.x * r17.w;
              r11.w = r17.w * r11.w;
              r17.w = cmp(0 < r11.w);
              if (r17.w != 0) {
                if (3 == 0) r17.w = 0; else if (3+27 < 32) {                 r17.w = (uint)r32.x << (32-(3 + 27)); r17.w = (uint)r17.w >> (32-3);                } else r17.w = (uint)r32.x >> 27;
                r17.w = cmp((int)r17.w != 1);
                if (r17.w != 0) {
                  r17.w = abs(r15.w) * -0.200000003 + 0.400000006;
                  r18.xyz = r7.xyz * r17.www + v5.xyz;
                  r34.z = r35.x;
                  r18.xyz = -r34.xyz + r18.xyz;
                  r17.w = max(abs(r18.y), abs(r18.z));
                  r17.w = max(abs(r18.x), r17.w);
                  r17.w = r35.y / r17.w;
                  r17.w = r17.w + r35.z;
                  r22.w = dot(r18.xyz, r18.xyz);
                  r22.w = rsqrt(r22.w);
                  r17.w = max(6.10351563e-05, r17.w);
                  r24.w = (int)r32.x & 0x0000ffff;
                  r37.w = (uint)r24.w;
                  r24.w = 0;
                  r27.w = 0;
                  while (true) {
                    r28.w = cmp((int)r27.w >= 8);
                    if (r28.w != 0) break;
                    r38.y = dot(icb[r27.w+0].xy, r16.xy);
                    r38.z = dot(icb[r27.w+0].yx, r16.xz);
                    r38.yz = r38.yz * r33.zz;
                    r38.x = r38.y * r13.x;
                    r38.w = r38.y * r12.x;
                    r37.xyz = r18.xyz * r22.www + r38.xzw;
                    r28.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyzw, r17.w).x;
                    r24.w = r28.w * 0.125 + r24.w;
                    r27.w = (int)r27.w + 1;
                  }
                } else {
                  r24.w = 1;
                }
                r11.w = r24.w * r11.w;
                r17.w = cmp(0 < r11.w);
                if (r17.w != 0) {
                  if (4 == 0) r17.w = 0; else if (4+16 < 32) {                   r17.w = (uint)r32.x << (32-(4 + 16)); r17.w = (uint)r17.w >> (32-4);                  } else r17.w = (uint)r32.x >> 16;
                  r18.x = cmp(0 < (uint)r17.w);
                  r18.x = r4.w ? r18.x : 0;
                  if (r18.x != 0) {
                    r17.w = (int)r17.w + numLights;
                    r17.w = (int)r17.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.x, r17.w, l(52), t12.xxxx
                  r18.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(100), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(116), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r18.y = abs(r15.w) * -0.200000003 + 0.400000006;
                    r20.xyz = r7.xyz * r18.yyy + v5.xyz;
                    r18.y = dot(r37.xyzw, r20.xyzw);
                    r18.z = dot(r38.xyzw, r20.xyzw);
                    r22.w = cmp(r18.z < r18.y);
                    if (r22.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(68), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(84), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r17.w, l(132), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r17.w, l(148), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xy, r17.w, l(164), t12.xyxx
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                      r37.x = dot(r37.xyzw, r20.xyzw);
                      r37.y = dot(r38.xyzw, r20.xyzw);
                      r20.xy = r37.xy / r18.zz;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r40.zw;
                      r20.xy = r20.xy * r40.xy;
                      r37.xy = r18.xx / r39.xz;
                      r37.zw = float2(1,1) + -r37.xy;
                      r37.zw = cmp(r20.xy >= r37.zw);
                      r37.xy = cmp(r37.xy >= r20.xy);
                      r37.xy = (int2)r37.xy | (int2)r37.zw;
                      r20.z = (int)r37.y | (int)r37.x;
                      r20.xy = saturate(r20.xy);
                      r37.xy = r20.xy * r39.xz + r39.yw;
                      r20.x = r41.y * r18.z;
                      r18.y = r41.x * r18.z + r18.y;
                      r18.y = r18.y / r20.x;
                    } else {
                      r20.z = -1;
                    }
                    r18.z = (int)r22.w | (int)r20.z;
                    if (r18.z == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(28), t12.xxxx
                    r17.w = samp0[]..swiz;
                      r18.y = max(6.10351563e-05, r18.y);
                      r17.w = (int)r17.w & 0x0000ffff;
                      if (r8.w != 0) {
                        r20.z = (uint)r17.w;
                        r18.z = 0;
                        r22.w = 0;
                        while (true) {
                          r27.w = cmp((int)r22.w >= 8);
                          if (r27.w != 0) break;
                          r38.x = dot(icb[r22.w+0].yx, r16.yw);
                          r38.y = dot(icb[r22.w+0].yx, r24.xz);
                          r20.xy = r38.xy * r18.xx + r37.xy;
                          r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r18.y).x;
                          r18.z = r20.x * 0.125 + r18.z;
                          r22.w = (int)r22.w + 1;
                        }
                      } else {
                        r37.z = (uint)r17.w;
                        r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r18.y).x;
                      }
                      r17.w = r18.z * r18.z;
                      r17.w = r17.w * r18.z;
                    } else {
                      r17.w = 1;
                    }
                    r11.w = r17.w * r11.w;
                  } else {
                    if (4 == 0) r17.w = 0; else if (4+20 < 32) {                     r17.w = (uint)r32.x << (32-(4 + 20)); r17.w = (uint)r17.w >> (32-4);                    } else r17.w = (uint)r32.x >> 20;
                    r18.x = cmp(0 < (uint)r17.w);
                    r18.x = r18.x ? r2.x : 0;
                    if (r18.x != 0) {
                      r17.w = (int)r17.w + numLights;
                      r17.w = (int)r17.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.x, r17.w, l(52), t12.xxxx
                    r18.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(100), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(116), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                      r18.y = abs(r15.w) * -0.200000003 + 0.400000006;
                      r21.xyz = r7.xyz * r18.yyy + v5.xyz;
                      r18.y = dot(r37.xyzw, r21.xyzw);
                      r20.x = dot(r38.xyzw, r21.xyzw);
                      r20.y = cmp(r20.x < r18.y);
                      if (r20.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(68), t12.xyzw
                      r37.x = samp0[]..swiz;
                      r37.y = samp0[]..swiz;
                      r37.z = samp0[]..swiz;
                      r37.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(84), t12.xyzw
                      r38.x = samp0[]..swiz;
                      r38.y = samp0[]..swiz;
                      r38.z = samp0[]..swiz;
                      r38.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r17.w, l(132), t12.xyzw
                      r39.x = samp0[]..swiz;
                      r39.y = samp0[]..swiz;
                      r39.z = samp0[]..swiz;
                      r39.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r17.w, l(148), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xy, r17.w, l(164), t12.xyxx
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                        r37.x = dot(r37.xyzw, r21.xyzw);
                        r37.y = dot(r38.xyzw, r21.xyzw);
                        r21.xy = r37.xy / r20.xx;
                        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r21.xy = r21.xy + r40.zw;
                        r21.xy = r21.xy * r40.xy;
                        r37.xy = r18.xx / r39.xz;
                        r37.zw = float2(1,1) + -r37.xy;
                        r37.zw = cmp(r21.xy >= r37.zw);
                        r37.xy = cmp(r37.xy >= r21.xy);
                        r37.xy = (int2)r37.xy | (int2)r37.zw;
                        r20.z = (int)r37.y | (int)r37.x;
                        r21.xy = saturate(r21.xy);
                        r21.xy = r21.xy * r39.xz + r39.yw;
                        r22.w = r41.y * r20.x;
                        r18.y = r41.x * r20.x + r18.y;
                        r18.y = r18.y / r22.w;
                      } else {
                        r20.z = -1;
                      }
                      r20.x = (int)r20.y | (int)r20.z;
                      if (r20.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(28), t12.xxxx
                      r17.w = samp0[]..swiz;
                        r18.y = max(6.10351563e-05, r18.y);
                        r17.w = (int)r17.w & 0x0000ffff;
                        if (r8.w != 0) {
                          r20.z = (uint)r17.w;
                          r22.w = 0;
                          r27.w = 0;
                          while (true) {
                            r28.w = cmp((int)r27.w >= 8);
                            if (r28.w != 0) break;
                            r37.x = dot(icb[r27.w+0].xy, r11.xy);
                            r37.y = dot(icb[r27.w+0].yx, r11.xz);
                            r20.xy = r37.xy * r18.xx + r21.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r18.y).x;
                            r22.w = r20.x * 0.125 + r22.w;
                            r27.w = (int)r27.w + 1;
                          }
                        } else {
                          r21.z = (uint)r17.w;
                          r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r18.y).x;
                        }
                        r17.w = r22.w * r22.w;
                        r17.w = r17.w * r22.w;
                      } else {
                        r17.w = 1;
                      }
                      r11.w = r17.w * r11.w;
                    }
                  }
                  r17.w = -r17.z * r2.y + 1;
                  r17.w = r17.w * r17.w;
                  r17.w = -r17.w * 0.620000005 + 0.620000005;
                  r17.w = r17.w + -r17.z;
                  r17.z = r5.w * r17.w + r17.z;
                  r11.w = r17.z * r11.w;
                  r31.z = r30.w;
                  r15.w = cmp(0 < r15.w);
                  r20.xyz = r11.www * r31.zxy + r13.yzw;
                  r13.yzw = r15.www ? r20.xyz : r13.yzw;
                }
              }
            }
            break;
            case 2 :            r20.x = r33.w;
            r20.yz = r34.zw;
            r20.xyz = -v5.xyz + r20.xyz;
            r11.w = dot(r20.xyz, r20.xyz);
            r11.w = rsqrt(r11.w);
            r20.xyz = r20.xyz * r11.www;
            r11.w = dot(r7.xyz, r20.xyz);
            r15.w = saturate(r11.w);
            r17.z = cmp(0 < r15.w);
            if (r17.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r10.x, l(108), t12.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r10.x, l(124), t12.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
              r39.xy = r37.xy;
              r39.zw = r38.xy;
              r17.z = dot(r39.xyzw, r19.xyzw);
              r17.w = cmp(r17.z < 1);
              if (r17.w != 0) {
                r20.xyz = float3(1,1,1);
                r17.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r10.x, l(172), t12.yzwx
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r10.x, l(188), t12.wxyz
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r10.x, l(204), t12.xyzw
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.x, r10.x, l(236), t12.xxxx
              r18.x = samp0[]..swiz;
                r21.xyz = -v5.xyz + r30.xyz;
                r18.y = r33.y * r33.y;
                r21.x = dot(r21.xyz, r21.xyz);
                r18.y = r18.y / r21.x;
                r18.y = min(1, r18.y);
                r21.x = saturate(r17.z * r32.y + r32.z);
                r21.y = saturate(r17.z * r32.w + r33.x);
                r21.z = r21.x * r21.x;
                r21.x = r21.x * -2 + 3;
                r21.x = r21.z * r21.x;
                r18.y = r21.x * r18.y;
                r21.x = r21.y * r21.y;
                r21.y = r21.y * -2 + 3;
                r21.x = r21.x * r21.y;
                r18.y = r21.x * r18.y;
                r34.zw = r35.xy;
                r21.x = dot(r34.xyzw, r19.xyzw);
                r43.xy = r35.zw;
                r43.zw = r36.zw;
                r21.y = dot(r43.xyzw, r19.xyzw);
                r22.xy = r21.xy / r17.zz;
                r17.z = cmp(r40.w < 0.00048828125);
                if (r17.z != 0) {
                  r41.y = r42.x;
                  r21.xy = saturate(abs(r22.xy) * r41.zw + r41.xy);
                  r30.xy = r21.xy * r21.xy;
                  r21.xy = r21.xy * float2(-2,-2) + float2(3,3);
                  r21.xy = r30.xy * r21.xy;
                  r17.z = r21.x * r21.y;
                } else {
                  r40.w = r41.y;
                  r40.xyzw = saturate(r40.xyzw * abs(r22.yyxx));
                  r40.xyzw = log2(r40.xyzw);
                  r40.xyzw = r41.xxxx * r40.xyzw;
                  r40.xyzw = exp2(r40.xyzw);
                  r21.xy = r40.xy + r40.zw;
                  r21.xy = log2(r21.xy);
                  r21.xy = r42.xx * r21.xy;
                  r21.xy = exp2(r21.xy);
                  r21.x = r41.z * r21.x;
                  r21.z = r41.w * r21.y + -1;
                  r21.x = r41.w * r21.y + -r21.x;
                  r21.x = saturate(r21.z / r21.x);
                  r21.y = r21.x * r21.x;
                  r21.x = r21.x * -2 + 3;
                  r17.z = r21.y * r21.x;
                }
                r17.w = r18.y * r17.z;
                r17.z = r18.x ? 0.000000 : 0;
                if (r17.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xyz, r10.x, l(220), t12.xyzx
                r21.x = samp0[]..swiz;
                r21.y = samp0[]..swiz;
                r21.z = samp0[]..swiz;
                  r18.x = dot(r42.yzw, r22.xyz);
                  r18.y = dot(r21.xyz, r22.xyz);
                  r21.xy = frac(r18.xy);
                  r17.z = (int)r17.z + -1;
                  r21.z = (uint)r17.z;
                  r20.xyz = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
                } else {
                  r20.xyz = float3(1,1,1);
                }
              }
              r31.w = r30.w;
              r20.xyz = r31.wxy * r20.xyz;
              r17.z = cmp(0 < r17.w);
              if (r17.z != 0) {
                if (3 == 0) r17.z = 0; else if (3+27 < 32) {                 r17.z = (uint)r32.x << (32-(3 + 27)); r17.z = (uint)r17.z >> (32-3);                } else r17.z = (uint)r32.x >> 27;
                r17.z = cmp((int)r17.z != 1);
                if (r17.z != 0) {
                  r17.z = abs(r11.w) * -0.200000003 + 0.400000006;
                  r23.xyz = r7.xyz * r17.zzz + v5.xyz;
                  r37.xy = r36.xy;
                  r17.z = dot(r37.xyzw, r23.xyzw);
                  r18.x = dot(r39.xyzw, r23.xyzw);
                  r18.y = cmp(r18.x >= r17.z);
                  if (r18.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xy, r10.x, l(140), t12.xyxx
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                    r34.zw = r35.xy;
                    r21.x = dot(r34.xyzw, r23.xyzw);
                    r36.xy = r35.zw;
                    r21.y = dot(r36.xyzw, r23.xyzw);
                    r21.xy = r21.xy / r18.xx;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r21.xy * r38.zx + r38.wy;
                    r10.x = r17.z / r18.x;
                    r10.x = max(6.10351563e-05, r10.x);
                    r17.z = (int)r32.x & 0x0000ffff;
                    if (r8.w != 0) {
                      r23.z = (uint)r17.z;
                      r18.xy = float2(0,0);
                      while (true) {
                        r22.x = cmp((int)r18.y >= 8);
                        if (r22.x != 0) break;
                        r22.x = dot(icb[r18.y+0].xy, r27.xy);
                        r22.y = dot(icb[r18.y+0].yx, r27.xz);
                        r23.xy = r22.xy * r33.zz + r21.xy;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r10.x).x;
                        r18.x = r22.x * 0.125 + r18.x;
                        r18.y = (int)r18.y + 1;
                      }
                    } else {
                      r21.z = (uint)r17.z;
                      r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r10.x).x;
                    }
                    r10.x = r18.x * r18.x;
                    r10.x = r10.x * r18.x;
                  } else {
                    r10.x = 1;
                  }
                } else {
                  r10.x = 1;
                }
                r10.x = r17.w * r10.x;
                r17.z = cmp(0 < r10.x);
                if (r17.z != 0) {
                  if (4 == 0) r17.z = 0; else if (4+16 < 32) {                   r17.z = (uint)r32.x << (32-(4 + 16)); r17.z = (uint)r17.z >> (32-4);                  } else r17.z = (uint)r32.x >> 16;
                  r17.w = cmp(0 < (uint)r17.z);
                  r17.w = r4.w ? r17.w : 0;
                  if (r17.w != 0) {
                    r17.z = (int)r17.z + numLights;
                    r17.z = (int)r17.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.w, r17.z, l(52), t12.xxxx
                  r17.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r17.z, l(68), t12.xyzw
                  r30.x = samp0[]..swiz;
                  r30.y = samp0[]..swiz;
                  r30.z = samp0[]..swiz;
                  r30.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r17.z, l(84), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(100), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(116), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(132), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r17.z, l(148), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                    r18.y = abs(r11.w) * -0.200000003 + 0.400000006;
                    r25.xyz = r7.xyz * r18.yyy + v5.xyz;
                    r21.x = dot(r30.xyzw, r25.xyzw);
                    r21.y = dot(r31.xyzw, r25.xyzw);
                    r18.y = dot(r33.xyzw, r25.xyzw);
                    r21.z = dot(r34.xyzw, r25.xyzw);
                    r22.x = cmp(r21.z < r18.y);
                    r21.xy = r21.xy / r21.zz;
                    r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.xy = r21.xy + r36.zw;
                    r21.xy = r21.xy * r36.xy;
                    r23.xy = r17.ww / r35.xz;
                    r25.xy = float2(1,1) + -r23.xy;
                    r25.xy = cmp(r21.xy >= r25.xy);
                    r23.xy = cmp(r23.xy >= r21.xy);
                    r23.xy = (int2)r23.xy | (int2)r25.xy;
                    r22.y = (int)r23.y | (int)r23.x;
                    r22.x = (int)r22.x | (int)r22.y;
                    if (r22.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r17.z, l(28), t12.xxxx
                    r22.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r17.z, l(164), t12.xyxx
                    r23.x = samp0[]..swiz;
                    r23.y = samp0[]..swiz;
                      r21.xy = saturate(r21.xy);
                      r25.xy = r21.xy * r35.xz + r35.yw;
                      r17.z = r23.y * r21.z;
                      r18.y = r23.x * r21.z + r18.y;
                      r17.z = r18.y / r17.z;
                      r17.z = max(6.10351563e-05, r17.z);
                      r18.y = r22.x ? 0.000000 : 0;
                      if (r8.w != 0) {
                        r21.z = (uint)r18.y;
                        r22.xy = float2(0,0);
                        while (true) {
                          r23.x = cmp((int)r22.y >= 8);
                          if (r23.x != 0) break;
                          r23.x = dot(icb[r22.y+0].xy, r28.xy);
                          r23.y = dot(icb[r22.y+0].yx, r28.xz);
                          r21.xy = r23.xy * r17.ww + r25.xy;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r17.z).x;
                          r22.x = r21.x * 0.125 + r22.x;
                          r22.y = (int)r22.y + 1;
                        }
                      } else {
                        r25.z = (uint)r18.y;
                        r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r17.z).x;
                      }
                      r17.z = r22.x * r22.x;
                      r17.z = r17.z * r22.x;
                    } else {
                      r17.z = 1;
                    }
                    r10.x = r17.z * r10.x;
                  } else {
                    if (4 == 0) r17.z = 0; else if (4+20 < 32) {                     r17.z = (uint)r32.x << (32-(4 + 20)); r17.z = (uint)r17.z >> (32-4);                    } else r17.z = (uint)r32.x >> 20;
                    r17.w = cmp(0 < (uint)r17.z);
                    r17.w = r17.w ? r2.x : 0;
                    if (r17.w != 0) {
                      r17.z = (int)r17.z + numLights;
                      r17.z = (int)r17.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.w, r17.z, l(52), t12.xxxx
                    r17.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r17.z, l(68), t12.xyzw
                    r30.x = samp0[]..swiz;
                    r30.y = samp0[]..swiz;
                    r30.z = samp0[]..swiz;
                    r30.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r17.z, l(84), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(100), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(116), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(132), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(148), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                      r18.y = abs(r11.w) * -0.200000003 + 0.400000006;
                      r26.xyz = r7.xyz * r18.yyy + v5.xyz;
                      r21.x = dot(r30.xyzw, r26.xyzw);
                      r21.y = dot(r31.xyzw, r26.xyzw);
                      r18.y = dot(r32.xyzw, r26.xyzw);
                      r21.z = dot(r33.xyzw, r26.xyzw);
                      r22.y = cmp(r21.z < r18.y);
                      r21.xy = r21.xy / r21.zz;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r35.zw;
                      r21.xy = r21.xy * r35.xy;
                      r23.xy = r17.ww / r34.xz;
                      r25.xy = float2(1,1) + -r23.xy;
                      r25.xy = cmp(r21.xy >= r25.xy);
                      r23.xy = cmp(r23.xy >= r21.xy);
                      r23.xy = (int2)r23.xy | (int2)r25.xy;
                      r23.x = (int)r23.y | (int)r23.x;
                      r22.y = (int)r22.y | (int)r23.x;
                      if (r22.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r17.z, l(28), t12.xxxx
                      r22.y = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r17.z, l(164), t12.xyxx
                      r23.x = samp0[]..swiz;
                      r23.y = samp0[]..swiz;
                        r21.xy = saturate(r21.xy);
                        r25.xy = r21.xy * r34.xz + r34.yw;
                        r17.z = r23.y * r21.z;
                        r18.y = r23.x * r21.z + r18.y;
                        r17.z = r18.y / r17.z;
                        r17.z = max(6.10351563e-05, r17.z);
                        r18.y = r22.y ? 0.000000 : 0;
                        if (r8.w != 0) {
                          r21.z = (uint)r18.y;
                          r22.y = 0;
                          r23.x = 0;
                          while (true) {
                            r23.y = cmp((int)r23.x >= 8);
                            if (r23.y != 0) break;
                            r26.x = dot(icb[r23.x+0].xy, r29.xy);
                            r26.y = dot(icb[r23.x+0].yx, r29.xz);
                            r21.xy = r26.xy * r17.ww + r25.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r17.z).x;
                            r22.y = r21.x * 0.125 + r22.y;
                            r23.x = (int)r23.x + 1;
                          }
                        } else {
                          r25.z = (uint)r18.y;
                          r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r17.z).x;
                        }
                        r17.z = r22.y * r22.y;
                        r17.z = r17.z * r22.y;
                      } else {
                        r17.z = 1;
                      }
                      r10.x = r17.z * r10.x;
                    }
                  }
                  r17.z = -r15.w * r2.y + 1;
                  r17.z = r17.z * r17.z;
                  r17.z = -r17.z * 0.620000005 + 0.620000005;
                  r17.z = r17.z + -r15.w;
                  r15.w = r5.w * r17.z + r15.w;
                  r10.x = r15.w * r10.x;
                  r11.w = cmp(0 < r11.w);
                  r20.xyz = r10.xxx * r20.xyz + r13.yzw;
                  r13.yzw = r11.www ? r20.xyz : r13.yzw;
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
    r12.yzw = r13.yzw;
    r6.w = (int)r6.w + 32;
  }
  r10.xyzw = metalFlakeMaskScale * w1.xyyz;
  r10.xyzw = float4(4,4,4,4) * r10.xyzw;
  r2.y = metalFlakeMaskMap.Sample(metalFlakeSampler_s, r10.xy).x;
  r17.xyzw = float4(0.5,0.5,0.5,0.5) + w1.xyyz;
  r17.xyzw = metalFlakeMaskScale * r17.xyzw;
  r17.xyzw = float4(4,4,4,4) * r17.xyzw;
  r2.z = metalFlakeMaskMap.Sample(metalFlakeSampler_s, r17.xy).x;
  r10.xyz = metalFlakeNormalMap.Sample(metalFlakeSampler_s, r10.zw).xyz;
  r8.zw = r10.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r5.w = r10.z * r10.z;
  r5.w = 0.333333343 * r5.w;
  r5.w = min(1, r5.w);
  r10.xyz = metalFlakeNormalMap.Sample(metalFlakeSampler_s, r17.zw).xyz;
  r10.xy = r10.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r6.w = r10.z * r10.z;
  r6.w = 0.333333343 * r6.w;
  r6.w = min(1, r6.w);
  r4.xy = r8.zw * r2.yy + r4.xy;
  r8.z = dot(r4.xyz, r4.xyz);
  r8.z = rsqrt(r8.z);
  r4.xyz = r8.zzz * r4.xyz;
  r2.w = r5.w * r2.y + r2.w;
  r4.xy = r10.xy * r2.zz + r4.xy;
  r5.w = dot(r4.xyz, r4.xyz);
  r5.w = rsqrt(r5.w);
  r4.xyz = r5.www * r4.xyz;
  r2.w = r6.w * r2.z + r2.w;
  r5.w = -17 * metalFlakeGloss;
  r5.w = exp2(r5.w);
  r2.w = r5.w + r2.w;
  r2.w = log2(r2.w);
  r2.w = saturate(-0.0588235296 * r2.w);
  r6.xyz = r6.xyz * r4.yyy;
  r5.xyz = r5.xyz * r4.xxx + r6.xyz;
  r3.yzw = r3.yzw * r4.zzz + r5.xyz;
  r4.x = dot(r3.yzw, r3.yzw);
  r4.x = rsqrt(r4.x);
  r2.y = r2.y * r0.w;
  r5.xyz = metalFlakeSpec.xyz + -r1.xyz;
  r1.xyz = r2.yyy * r5.xyz + r1.xyz;
  r2.y = r2.z * r0.w;
  r5.xyz = metalFlakeSpec.xyz + -r1.xyz;
  r1.xyz = r2.yyy * r5.xyz + r1.xyz;
  r3.yzw = r3.yzw * r4.xxx + -r7.xyz;
  r3.yzw = r0.www * r3.yzw + r7.xyz;
  r2.y = dot(r3.yzw, r3.yzw);
  r2.y = rsqrt(r2.y);
  r3.yzw = r3.yzw * r2.yyy;
  r2.y = r2.w * r8.y + -r8.y;
  r2.y = r0.w * r2.y + r8.y;
  r2.z = saturate(dot(r3.yzw, r9.xyz));
  r2.w = dot(-r9.xyz, r3.yzw);
  r2.w = r2.w + r2.w;
  r4.xyz = r3.yzw * -r2.www + -r9.xyz;
  r2.y = 17 * r2.y;
  r2.y = exp2(r2.y);
  r2.y = 2 + r2.y;
  r2.y = 2 / r2.y;
  r2.w = sqrt(r2.y);
  r2.w = sqrt(r2.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r2.w;
  r5.x = 0.5 * r2.w;
  r2.w = -r2.w * 0.5 + 1;
  r2.z = r2.z * r2.w + r5.x;
  r2.w = r2.w * r2.z;
  r2.z = r5.x * r2.z;
  r5.x = dot(r3.yzw, sunConstants.wldDir.xyz);
  r5.y = saturate(r5.x);
  r5.z = cmp(0 >= r5.y);
  if (r5.z != 0) {
    r5.w = 0;
  }
  if (r5.z == 0) {
    r6.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r6.xyz = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r6.xyz;
    r6.xyz = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r6.xyz;
    r6.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r6.xyz;
    r5.z = -sunConstants.splitDepthOffset + r6.z;
    r5.z = -r5.z * 6.10351563e-05 + 1;
    r6.w = saturate(r5.z);
    r6.w = cmp(r5.z == r6.w);
    if (r6.w != 0) {
      r6.w = 0;
      r8.z = 0;
      while (true) {
        r8.w = cmp(r6.w >= 3);
        if (r8.w != 0) break;
        r8.w = (uint)r6.w;
        r10.xy = -sunConstants.splitPinTransform[r8.w].xy + r6.xy;
        r9.w = max(abs(r10.x), abs(r10.y));
        r8.z = sunConstants.splitPinTransform[r8.w].z * r9.w;
        r8.w = cmp(r8.z < 1);
        if (r8.w != 0) {
          break;
        }
        r6.w = 1 + r6.w;
        r8.z = 0;
      }
    } else {
      r6.w = 3;
      r8.z = 0;
    }
    r8.w = cmp(r6.w >= 3);
    if (r8.w != 0) {
      r10.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r10.xx);
      r17.y = -r17.z;
      r10.xyz = r6.xyx * r17.xyz + r10.yzy;
      r13.yzw = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r10.xyz = max(float3(0,0,0), r10.xyz);
      r10.xyz = min(r10.xyz, r13.yzw);
      r13.yz = sunConstants.sstLightingConstants.coordScale * r10.zy;
      r13.yz = floor(r13.yz);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.z;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r13.y;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(0), t23.xxxx
    r10.w = samp0[]..swiz;
      r11.w = (int)r10.w & 0x40000000;
      r13.y = (uint)r10.w << 2;
      if (r11.w == 0) {
        r11.w = (int)r10.w & 0x01ffffff;
        r17.x = (int)r9.w + (int)r11.w;
        r9.w = (uint)r10.w >> 25;
        r9.w = (uint)r9.w;
        r10.xyz = r10.xyz * r9.www;
        r10.xyz = frac(r10.xyz);
        r10.xyz = float3(128,128,128) * r10.xyz;
        r10.xyz = (uint3)r10.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r13.zw = (uint2)r10.zy >> int2(6,6);
        r9.w = (int)r17.z & 0xc0000000;
        r10.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r13.w ? r17.z : r10.w;
        r11.w = (uint)r10.w >> 13;
        r10.w = r13.z ? r11.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r18.x = (int)r10.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r18.xyz = r9.www ? r17.xyz : r18.xyz;
        r19.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r10.zy >> (uint2)r19.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r10.w = (int)r18.z & 0xc0000000;
        r11.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r11.w = r13.w ? r18.z : r11.w;
        r13.w = (uint)r11.w >> 13;
        r11.w = r13.z ? r13.w : r11.w;
        r11.w = (int)r11.w & 8191;
        r19.x = (int)r11.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r18.xyz = r10.www ? r18.xyz : r19.xzw;
        r17.xyz = r9.www ? r17.xyz : r18.xyz;
        r9.w = (int)r17.z & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r17.y + 6;
          r13.zw = (uint2)r10.zy >> (uint2)r9.ww;
          r9.w = (int)r17.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r13.z << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r9.w = (uint)r9.w >> (uint)r10.w;
          r9.w = (int)r9.w & 1023;
          r18.x = (int)r9.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.yy + int2(1,2);
          r9.w = (int)-r18.y + 6;
          r13.zw = (uint2)r10.zy >> (uint2)r9.ww;
          r9.w = (int)r18.w & 0xc0000000;
          r10.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.w = (((uint)r13.z << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r11.w = (int)r11.w * 10;
          r10.w = (uint)r10.w >> (uint)r11.w;
          r10.w = (int)r10.w & 1023;
          r19.x = (int)r10.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r9.www ? r18.xyw : r19.xyz;
          r10.w = (int)-r19.y + 6;
          r13.zw = (uint2)r10.zy >> (uint2)r10.ww;
          r10.w = (int)r19.z & 0xc0000000;
          r11.w = (int)r19.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r11.w = (uint)r11.w >> (uint)r13.z;
          r11.w = (int)r11.w & 1023;
          r20.x = (int)r11.w + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r13.zw = r10.ww ? r19.xz : r20.xy;
          r17.xz = r9.ww ? r18.xw : r13.zw;
        }
        r9.w = (int)r17.z & 0xc0000000;
        if (r9.w == 0) {
          if (14 == 0) r10.w = 0; else if (14+15 < 32) {           r10.w = (uint)r17.z << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);          } else r10.w = (uint)r17.z >> 15;
          r10.w = (uint)r10.w;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 6.10388815e-05 * r10.w;
          r13.zw = (int2)r17.zz & int2(32767,536870912);
          r11.w = (uint)r13.z;
          r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
          r11.w = 3.05185094e-05 * r11.w;
          r13.z = (int)r10.y & 3;
          r13.z = (int)r13.z + (int)r17.x;
          r13.z = (int)r13.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r10.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r10.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r10.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r10.x = (uint)r13.z >> (uint)r18.x;
          r10.x = (int)r10.x & 255;
          r10.x = (uint)r10.x;
          r10.x = r10.x * r11.w;
          r10.x = r10.x * 0.00392156886 + r10.w;
          r10.y = (int)r18.y + 1;
          if (1 == 0) r10.z = 0; else if (1+1 < 32) {           r10.z = (uint)r10.z << (32-(1 + 1)); r10.z = (uint)r10.z >> (32-1);          } else r10.z = (uint)r10.z >> 1;
          r10.y = (int)r10.z + (int)r10.y;
          r10.y = (int)r10.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.y, r10.y, l(0), t23.xxxx
        r10.y = samp0[]..swiz;
          r10.y = (uint)r10.y >> (uint)r18.z;
          r10.y = (int)r10.y & 0x0000ffff;
          r10.y = (uint)r10.y;
          r10.y = r10.y * r11.w;
          r10.y = r10.y * 1.52590219e-05 + r10.w;
          r13.y = r13.w ? r10.x : r10.y;
        } else {
          r10.x = (int)r17.z & 0x80000000;
          r10.y = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.y, r10.y, l(0), t23.xxxx
        r10.y = samp0[]..swiz;
          r10.x = r10.x ? r10.y : 0;
          r10.y = (uint)r17.z << 2;
          r10.z = (uint)r10.x >> 16;
          r10.x = (int)r10.x & 0x0000ffff;
          r10.xz = f16tof32(r10.xz);
          r10.y = r6.x * r10.z + r10.y;
          r10.x = r6.y * r10.x + r10.y;
          r13.y = r9.w ? r10.x : r13.y;
        }
      }
      r6.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r6.z;
      r6.z = cmp(r13.y < r6.z);
      r5.w = r6.z ? 0 : 1;
    }
    if (r8.w == 0) {
      if (enableDitheredShadow == 0) {
        r6.z = (uint)r6.w;
        r10.xy = -sunConstants.splitPinTransform[r6.z].xy + r6.xy;
        r10.xy = sunConstants.splitPinTransform[r6.z].zz * r10.xy;
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.z = (int16)sunConstants.splitArrayOffset;
        r10.z = r6.w + r6.z;
        r6.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r10.xyz, r5.z).x;
        r8.w = gTransShadowmapArray.SampleLevel(samp0_s, r10.xyz, 0).x;
        r6.z = r8.w + r6.z;
        r6.z = saturate(-1 + r6.z);
        r8.w = r6.z * r6.z;
        r5.w = r8.w * r6.z;
      }
      if (enableDitheredShadow != 0) {
        r6.z = (uint)r6.w;
        r6.w = 1 + r6.w;
        r6.w = min(2, r6.w);
        r6.w = (uint)r6.w;
        r8.z = 1 + -r8.z;
        r8.z = 28 * r8.z;
        r8.z = (uint)r8.z;
        r10.xy = -sunConstants.splitPinTransform[r6.z].xy + r6.xy;
        r10.xy = sunConstants.splitPinTransform[r6.z].zz * r10.xy;
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.xy = -sunConstants.splitPinTransform[r6.w].xy + r6.xy;
        r6.xy = sunConstants.splitPinTransform[r6.w].zz * r6.xy;
        r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r24.x = r11.x;
        r24.y = r16.y;
        r8.w = 0;
        r9.w = 0;
        while (true) {
          r10.z = cmp((uint)r9.w >= 8);
          if (r10.z != 0) break;
          r10.z = cmp((uint)r8.z < (uint)r9.w);
          r13.yz = r10.zz ? r6.xy : r10.xy;
          r10.w = r10.z ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r6.z].w;
          r10.z = r10.z ? r6.w : r6.z;
          r17.x = dot(icb[r9.w+0].xy, r24.xy);
          r17.y = dot(icb[r9.w+0].yx, r24.xz);
          r17.xy = r17.xy * r10.ww + r13.yz;
          r10.z = (int)r10.z + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r10.z;
          r10.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r5.z).x;
          r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r10.z = r10.z + r10.w;
          r10.z = saturate(-1 + r10.z);
          r8.w = r10.z * 0.125 + r8.w;
          r9.w = (int)r9.w + 1;
        }
        r5.z = r8.w * r8.w;
        r5.w = r5.z * r8.w;
      }
    }
  }
  r5.z = cmp(0 < r5.y);
  if (r5.z != 0) {
    r5.z = cmp(0 < r5.w);
    if (r5.z != 0) {
      r5.z = sunConstants.specScale * r2.y;
      r5.z = r5.z * r5.y;
      if (sunConstants.sunCookieIndex != 0) {
        r6.xyz = eyeOffset.xyz + v5.xyz;
        r6.w = 1;
        r8.z = dot(sunConstants.sunCookieTransform[0].xyzw, r6.xyzw);
        r6.x = dot(sunConstants.sunCookieTransform[1].xyzw, r6.xyzw);
        r10.x = frac(r8.z);
        r10.y = frac(r6.x);
        r6.x = -1 + (int14)sunConstants.sunCookieIndex;
        r10.z = (uint)r6.x;
        r6.xyz = gCookieArray.SampleLevel(samplerLinear_s, r10.xyz, 0).xyz;
        r6.xyz = float3(-1,-1,-1) + r6.xyz;
        r6.xyz = sunConstants.sunCookieIntensity * r6.xyz + float3(1,1,1);
        r6.xyz = sunConstants.color.xyz * r6.xyz;
      } else {
        r6.xyz = sunConstants.color.xyz;
      }
      r6.w = viewmodelSunShadowRaw >> 16;
      r8.z = cmp(0 < (uint)r6.w);
      r8.z = r4.w ? r8.z : 0;
      if (r8.z != 0) {
        r6.w = (int)r6.w + numLights;
        r6.w = (int)r6.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r6.w, l(52), t12.xxxx
      r8.z = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r6.w, l(68), t12.xyzw
      r10.x = samp0[]..swiz;
      r10.y = samp0[]..swiz;
      r10.z = samp0[]..swiz;
      r10.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r6.w, l(84), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r6.w, l(132), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r6.w, l(148), t12.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
        r8.w = abs(r5.x) * -0.200000003 + 0.400000006;
        r20.xyz = r3.yzw * r8.www + v5.xyz;
        r20.w = 1;
        r10.x = dot(r10.xyzw, r20.xyzw);
        r10.y = dot(r17.xyzw, r20.xyzw);
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.xy = r10.xy + r19.zw;
        r10.xy = r10.xy * r19.xy;
        r10.zw = r8.zz / r18.xz;
        r13.yz = float2(1,1) + -r10.zw;
        r13.yz = cmp(r10.xy >= r13.yz);
        r10.zw = cmp(r10.zw >= r10.xy);
        r10.zw = (int2)r10.zw | (int2)r13.yz;
        r8.w = (int)r10.w | (int)r10.z;
        if (r8.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r6.w, l(28), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r6.w, l(100), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.zw, r6.w, l(164), t12.xxxy
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
          r6.w = dot(r17.xyzw, r20.xyzw);
          r10.xy = saturate(r10.xy);
          r17.xy = r10.xy * r18.xz + r18.yw;
          r6.w = r6.w + r10.z;
          r6.w = r6.w / r10.w;
          r6.w = max(6.10351563e-05, r6.w);
          r8.w = (int)r8.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r10.z = (uint)r8.w;
            r24.x = r11.x;
            r24.y = r16.y;
            r9.w = 0;
            r10.w = 0;
            while (true) {
              r11.w = cmp((int)r10.w >= 8);
              if (r11.w != 0) break;
              r18.x = dot(icb[r10.w+0].xy, r24.xy);
              r18.y = dot(icb[r10.w+0].yx, r24.xz);
              r10.xy = r18.xy * r8.zz + r17.xy;
              r10.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r10.xyz, r6.w).x;
              r9.w = r10.x * 0.125 + r9.w;
              r10.w = (int)r10.w + 1;
            }
          } else {
            r17.z = (uint)r8.w;
            r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
          }
          r6.w = r9.w * r9.w;
          r6.w = r6.w * r9.w;
        } else {
          r6.w = 1;
        }
        r5.w = r6.w * r5.w;
      } else {
        r6.w = viewmodelSunShadowRaw & 0x0000ffff;
        r8.z = cmp(0 < (uint)r6.w);
        r8.z = r8.z ? r2.x : 0;
        if (r8.z != 0) {
          r6.w = (int)r6.w + numLights;
          r6.w = (int)r6.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r6.w, l(52), t12.xxxx
        r8.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r6.w, l(68), t12.xyzw
        r10.x = samp0[]..swiz;
        r10.y = samp0[]..swiz;
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r6.w, l(84), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r6.w, l(132), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r6.w, l(148), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
          r8.w = abs(r5.x) * -0.200000003 + 0.400000006;
          r20.xyz = r3.yzw * r8.www + v5.xyz;
          r20.w = 1;
          r10.x = dot(r10.xyzw, r20.xyzw);
          r10.y = dot(r17.xyzw, r20.xyzw);
          r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.xy = r10.xy + r19.zw;
          r10.xy = r10.xy * r19.xy;
          r10.zw = r8.zz / r18.xz;
          r13.yz = float2(1,1) + -r10.zw;
          r13.yz = cmp(r10.xy >= r13.yz);
          r10.zw = cmp(r10.zw >= r10.xy);
          r10.zw = (int2)r10.zw | (int2)r13.yz;
          r8.w = (int)r10.w | (int)r10.z;
          if (r8.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r6.w, l(28), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r6.w, l(100), t12.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.zw, r6.w, l(164), t12.xxxy
          r10.z = samp0[]..swiz;
          r10.w = samp0[]..swiz;
            r6.w = dot(r17.xyzw, r20.xyzw);
            r10.xy = saturate(r10.xy);
            r17.xy = r10.xy * r18.xz + r18.yw;
            r6.w = r6.w + r10.z;
            r6.w = r6.w / r10.w;
            r6.w = max(6.10351563e-05, r6.w);
            r8.w = (int)r8.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r10.z = (uint)r8.w;
              r24.x = r11.x;
              r24.y = r16.y;
              r9.w = 0;
              r10.w = 0;
              while (true) {
                r11.w = cmp((int)r10.w >= 8);
                if (r11.w != 0) break;
                r18.x = dot(icb[r10.w+0].xy, r24.xy);
                r18.y = dot(icb[r10.w+0].yx, r24.xz);
                r10.xy = r18.xy * r8.zz + r17.xy;
                r10.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r10.xyz, r6.w).x;
                r9.w = r10.x * 0.125 + r9.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r17.z = (uint)r8.w;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r6.w).x;
            }
            r6.w = r9.w * r9.w;
            r6.w = r6.w * r9.w;
          } else {
            r6.w = 1;
          }
          r5.w = r6.w * r5.w;
        }
      }
      r5.x = cmp(0 < r5.x);
      r10.xyz = -v5.xyz * r3.xxx + sunConstants.wldDir.xyz;
      r3.x = dot(r10.xyz, r10.xyz);
      r3.x = rsqrt(r3.x);
      r10.xyz = r10.xyz * r3.xxx;
      r3.x = dot(r10.xyz, r9.xyz);
      r6.w = dot(r3.yzw, r10.xyz);
      r8.z = abs(r6.w) * r2.y + -abs(r6.w);
      r6.w = abs(r6.w) * r8.z + 1;
      r5.y = r5.y * r2.w + r2.z;
      r6.w = r6.w * r6.w;
      r5.y = r6.w * r5.y;
      r5.y = rcp(r5.y);
      r5.y = r5.y * r5.z;
      r5.y = r5.w * r5.y;
      r5.y = 0.25 * r5.y;
      r10.xyz = r5.yyy * r6.xyz;
      r3.x = saturate(1 + -r3.x);
      r5.z = r3.x * r3.x;
      r5.z = r5.z * r5.z;
      r3.x = r5.z * r3.x;
      r3.x = r5.y * r3.x;
      r6.xyz = r3.xxx * r6.xyz;
      r6.w = r10.x;
      r6.xyzw = r5.xxxx ? r6.xyzw : 0;
      r5.xy = r5.xx ? r10.yz : 0;
    } else {
      r6.xyzw = float4(0,0,0,0);
      r5.xy = float2(0,0);
    }
  } else {
    r6.xyzw = float4(0,0,0,0);
    r5.xy = float2(0,0);
  }
  r10.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v5.xyz;
  r18.w = 1;
  r19.w = 1;
  r20.x = r11.x;
  r20.y = r16.y;
  r20.z = r24.z;
  r21.w = 1;
  r22.z = 1;
  r23.w = 1;
  r25.x = r11.x;
  r25.y = r16.y;
  r25.z = r24.z;
  r26.w = 1;
  r27.x = r11.x;
  r27.y = r16.y;
  r27.z = r24.z;
  r28.w = 1;
  r11.y = r16.y;
  r11.z = r24.z;
  r16.x = r11.x;
  r16.z = r24.z;
  r24.x = r11.x;
  r24.y = r16.y;
  r13.yzw = r6.xyz;
  r29.x = r6.w;
  r29.yz = r5.xy;
  r3.x = enableDitheredShadow;
  r5.z = 0;
  while (true) {
    r5.w = cmp((uint)r5.z >= numLights);
    if (r5.w != 0) break;
    r10.z = (uint)r5.z >> 5;
    r17.xyz = (int3)r10.xyz + (int3)r15.xyz;
    r5.w = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r13.yzw;
    r30.xyz = r29.xyz;
    r8.z = r3.x;
    r8.w = r5.w;
    while (true) {
      if (r8.w == 0) break;
      r9.w = firstbitlow((uint)r8.w);
      r10.z = 1 << (int)r9.w;
      r10.w = (int)r8.w & (int)r10.z;
      if (r10.w != 0) {
        r8.w = (int)r8.w ^ (int)r10.z;
        r9.w = (int)r5.z + (int)r9.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r9.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v5.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r10.z = r31.y ? r31.x : 0;
        r10.z = r31.z ? r10.z : 0;
        if (r10.z != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r10.z = 0; else if (3+24 < 32) {           r10.z = (uint)r32.w << (32-(3 + 24)); r10.z = (uint)r10.z >> (32-3);          } else r10.z = (uint)r32.w >> 24;
          switch (r10.z) {
            case 4 :            r10.z = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v5.xyz + r39.xyz;
            r10.w = dot(r38.xyz, r40.xyz);
            r11.w = saturate(-r10.w / r37.x);
            r41.xyz = r11.www * r38.xyz + r39.xyz;
            r41.xyz = r10.zzz ? r41.xyz : r31.yzw;
            r41.xyz = -v5.xyz + r41.xyz;
            r15.w = dot(r41.xyz, r41.xyz);
            r16.w = rsqrt(r15.w);
            r41.xyz = r41.xyz * r16.www;
            r16.w = dot(r3.yzw, r41.xyz);
            r20.w = saturate(r16.w);
            r20.w = cmp(0 < r20.w);
            if (r20.w != 0) {
              r20.w = sqrt(r15.w);
              r22.w = r34.x * r34.x;
              r15.w = r22.w / r15.w;
              r15.w = min(1, r15.w);
              r41.xy = saturate(r20.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r15.w = r41.x * r15.w;
              r15.w = r15.w * r41.y;
              r20.w = cmp(0 < r15.w);
              if (r20.w != 0) {
                if (3 == 0) r20.w = 0; else if (3+27 < 32) {                 r20.w = (uint)r32.w << (32-(3 + 27)); r20.w = (uint)r20.w >> (32-3);                } else r20.w = (uint)r32.w >> 27;
                r20.w = cmp((int)r20.w != 1);
                if (r20.w != 0) {
                  r20.w = abs(r16.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r3.yzw * r20.www + v5.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r20.w = max(abs(r41.y), abs(r41.z));
                  r20.w = max(abs(r41.x), r20.w);
                  r20.w = r36.x / r20.w;
                  r20.w = r20.w + r36.y;
                  r22.w = dot(r41.xyz, r41.xyz);
                  r22.w = rsqrt(r22.w);
                  r20.w = max(6.10351563e-05, r20.w);
                  r24.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r24.w;
                  r24.w = 0;
                  r25.w = 0;
                  while (true) {
                    r27.w = cmp((int)r25.w >= 8);
                    if (r27.w != 0) break;
                    r43.y = dot(icb[r25.w+0].xy, r20.xy);
                    r43.z = dot(icb[r25.w+0].yx, r20.xz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r13.x;
                    r43.w = r43.y * r12.x;
                    r42.xyz = r41.xyz * r22.www + r43.xzw;
                    r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r20.w).x;
                    r24.w = r27.w * 0.125 + r24.w;
                    r25.w = (int)r25.w + 1;
                  }
                } else {
                  r24.w = 1;
                }
                r15.w = r24.w * r15.w;
                r20.w = cmp(0 < r15.w);
                if (r20.w != 0) {
                  r20.w = r32.x * r2.y;
                  r20.w = 0.25 * r20.w;
                  r22.w = dot(r38.xyz, r4.xyz);
                  r25.w = dot(r4.xyz, r40.xyz);
                  r27.w = -r22.w * r22.w + r37.x;
                  r10.w = r22.w * r25.w + -r10.w;
                  r10.w = saturate(r10.w / r27.w);
                  r22.w = r27.w / r37.x;
                  r22.w = 10 * r22.w;
                  r22.w = min(1, r22.w);
                  r10.w = r10.w + -r11.w;
                  r10.w = r22.w * r10.w + r11.w;
                  r38.xyz = r10.www * r38.xyz + r39.xyz;
                  r38.xyz = r10.zzz ? r38.xyz : r31.yzw;
                  r38.xyz = -v5.xyz + r38.xyz;
                  r10.z = dot(r38.xyz, r38.xyz);
                  r10.z = rsqrt(r10.z);
                  r39.xyz = r38.xyz * r10.zzz;
                  if (4 == 0) r10.w = 0; else if (4+16 < 32) {                   r10.w = (uint)r32.w << (32-(4 + 16)); r10.w = (uint)r10.w >> (32-4);                  } else r10.w = (uint)r32.w >> 16;
                  r11.w = cmp(0 < (uint)r10.w);
                  r11.w = r4.w ? r11.w : 0;
                  if (r11.w != 0) {
                    r10.w = (int)r10.w + numLights;
                    r10.w = (int)r10.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r10.w, l(52), t12.xxxx
                  r11.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r22.w = abs(r16.w) * -0.200000003 + 0.400000006;
                    r19.xyz = r3.yzw * r22.www + v5.xyz;
                    r22.w = dot(r40.xyzw, r19.xyzw);
                    r25.w = dot(r41.xyzw, r19.xyzw);
                    r27.w = cmp(r25.w < r22.w);
                    if (r27.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r10.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r10.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r10.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r19.xyzw);
                      r40.y = dot(r41.xyzw, r19.xyzw);
                      r19.xy = r40.xy / r25.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r43.zw;
                      r19.xy = r19.xy * r43.xy;
                      r40.xy = r11.ww / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r19.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r19.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r19.z = (int)r40.y | (int)r40.x;
                      r19.xy = saturate(r19.xy);
                      r40.xy = r19.xy * r42.xz + r42.yw;
                      r19.x = r44.y * r25.w;
                      r19.y = r44.x * r25.w + r22.w;
                      r19.x = r19.y / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.y = (int)r27.w | (int)r19.z;
                    if (r19.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(28), t12.xxxx
                    r10.w = samp0[]..swiz;
                      r19.x = max(6.10351563e-05, r19.x);
                      r10.w = (int)r10.w & 0x0000ffff;
                      if (r8.z != 0) {
                        r41.z = (uint)r10.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r22.w = cmp((int)r19.z >= 8);
                          if (r22.w != 0) break;
                          r42.x = dot(icb[r19.z+0].xy, r25.xy);
                          r42.y = dot(icb[r19.z+0].yx, r25.xz);
                          r41.xy = r42.xy * r11.ww + r40.xy;
                          r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                          r19.y = r22.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r40.z = (uint)r10.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                      }
                      r10.w = r19.y * r19.y;
                      r10.w = r10.w * r19.y;
                    } else {
                      r10.w = 1;
                    }
                    r15.w = r15.w * r10.w;
                  } else {
                    if (4 == 0) r10.w = 0; else if (4+20 < 32) {                     r10.w = (uint)r32.w << (32-(4 + 20)); r10.w = (uint)r10.w >> (32-4);                    } else r10.w = (uint)r32.w >> 20;
                    r11.w = cmp(0 < (uint)r10.w);
                    r11.w = r11.w ? r2.x : 0;
                    if (r11.w != 0) {
                      r10.w = (int)r10.w + numLights;
                      r10.w = (int)r10.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r10.w, l(52), t12.xxxx
                    r11.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r19.x = abs(r16.w) * -0.200000003 + 0.400000006;
                      r21.xyz = r3.yzw * r19.xxx + v5.xyz;
                      r19.x = dot(r40.xyzw, r21.xyzw);
                      r19.z = dot(r41.xyzw, r21.xyzw);
                      r22.w = cmp(r19.z < r19.x);
                      if (r22.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r10.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r10.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r10.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r21.xyzw);
                        r40.y = dot(r41.xyzw, r21.xyzw);
                        r21.xy = r40.xy / r19.zz;
                        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r21.xy = r21.xy + r43.zw;
                        r21.xy = r21.xy * r43.xy;
                        r40.xy = r11.ww / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r21.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r21.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r21.z = (int)r40.y | (int)r40.x;
                        r21.xy = saturate(r21.xy);
                        r40.xy = r21.xy * r42.xz + r42.yw;
                        r21.x = r44.y * r19.z;
                        r19.x = r44.x * r19.z + r19.x;
                        r19.x = r19.x / r21.x;
                      } else {
                        r21.z = -1;
                      }
                      r19.z = (int)r22.w | (int)r21.z;
                      if (r19.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(28), t12.xxxx
                      r10.w = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r10.w = (int)r10.w & 0x0000ffff;
                        if (r8.z != 0) {
                          r21.z = (uint)r10.w;
                          r19.z = 0;
                          r22.w = 0;
                          while (true) {
                            r25.w = cmp((int)r22.w >= 8);
                            if (r25.w != 0) break;
                            r41.x = dot(icb[r22.w+0].xy, r27.xy);
                            r41.y = dot(icb[r22.w+0].yx, r27.xz);
                            r21.xy = r41.xy * r11.ww + r40.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r19.x).x;
                            r19.z = r21.x * 0.125 + r19.z;
                            r22.w = (int)r22.w + 1;
                          }
                        } else {
                          r40.z = (uint)r10.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r19.x).x;
                        }
                        r10.w = r19.z * r19.z;
                        r10.w = r10.w * r19.z;
                      } else {
                        r10.w = 1;
                      }
                      r15.w = r15.w * r10.w;
                    }
                  }
                  r10.w = cmp(0 < r16.w);
                  r11.w = saturate(dot(r3.yzw, r39.xyz));
                  r21.xyz = r38.xyz * r10.zzz + r9.xyz;
                  r10.z = dot(r21.xyz, r21.xyz);
                  r10.z = rsqrt(r10.z);
                  r21.xyz = r21.xyz * r10.zzz;
                  r10.z = dot(r21.xyz, r9.xyz);
                  r16.w = dot(r3.yzw, r21.xyz);
                  r19.x = abs(r16.w) * r2.y + -abs(r16.w);
                  r16.w = abs(r16.w) * r19.x + 1;
                  r19.x = r11.w * r2.w + r2.z;
                  r16.w = r16.w * r16.w;
                  r16.w = r16.w * r19.x;
                  r16.w = rcp(r16.w);
                  r11.w = r11.w * r20.w;
                  r11.w = r16.w * r11.w;
                  r11.w = r11.w * r15.w;
                  r32.x = r31.x;
                  r21.xyz = r11.www * r32.xyz + r30.xyz;
                  r10.z = saturate(1 + -r10.z);
                  r15.w = r10.z * r10.z;
                  r15.w = r15.w * r15.w;
                  r10.z = r15.w * r10.z;
                  r10.z = r11.w * r10.z;
                  r38.xyz = r10.zzz * r32.xyz + r17.xyz;
                  r17.xyz = r10.www ? r38.xyz : r17.xyz;
                  r30.xyz = r10.www ? r21.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r21.xy = r34.zw;
            r21.z = r35.w;
            r21.xyz = -v5.xyz + r21.xyz;
            r10.z = dot(r21.xyz, r21.xyz);
            r10.z = rsqrt(r10.z);
            r38.xyz = r21.xyz * r10.zzz;
            r10.w = dot(r3.yzw, r38.xyz);
            r11.w = saturate(r10.w);
            r15.w = cmp(0 < r11.w);
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r15.w = dot(r40.xyzw, r18.xyzw);
              r16.w = cmp(r15.w < 1);
              if (r16.w != 0) {
                r41.xyz = float3(1,1,1);
                r16.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r9.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r9.w, l(236), t12.xxxx
              r19.x = samp0[]..swiz;
                r45.xyz = -v5.xyz + r31.yzw;
                r20.w = r34.x * r34.x;
                r22.w = dot(r45.xyz, r45.xyz);
                r20.w = r20.w / r22.w;
                r20.w = min(1, r20.w);
                r33.xy = saturate(r15.ww * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r20.w = r33.x * r20.w;
                r20.w = r20.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r18.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r18.xyzw);
                r22.xy = r33.xy / r15.ww;
                r15.w = cmp(r42.w < 0.00048828125);
                if (r15.w != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r22.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r15.w = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r22.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r43.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r44.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r22.w = r43.z * r33.x;
                  r25.w = r43.w * r33.y + -1;
                  r22.w = r43.w * r33.y + -r22.w;
                  r22.w = saturate(r25.w / r22.w);
                  r25.w = r22.w * r22.w;
                  r22.w = r22.w * -2 + 3;
                  r15.w = r25.w * r22.w;
                }
                r16.w = r20.w * r15.w;
                r15.w = (int)r19.x & 255;
                if (r15.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r9.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r19.x = dot(r44.yzw, r22.xyz);
                  r20.w = dot(r33.xyz, r22.xyz);
                  r33.x = frac(r19.x);
                  r33.y = frac(r20.w);
                  r15.w = (int)r15.w + -1;
                  r33.z = (uint)r15.w;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r22.xyw = r31.xyz * r41.xyz;
              r15.w = cmp(0 < r16.w);
              if (r15.w != 0) {
                if (3 == 0) r15.w = 0; else if (3+27 < 32) {                 r15.w = (uint)r32.w << (32-(3 + 27)); r15.w = (uint)r15.w >> (32-3);                } else r15.w = (uint)r32.w >> 27;
                r15.w = cmp((int)r15.w != 1);
                if (r15.w != 0) {
                  r15.w = abs(r10.w) * -0.200000003 + 0.400000006;
                  r23.xyz = r3.yzw * r15.www + v5.xyz;
                  r38.xyz = r37.xyz;
                  r15.w = dot(r38.xyzw, r23.xyzw);
                  r19.x = dot(r40.xyzw, r23.xyzw);
                  r20.w = cmp(r19.x >= r15.w);
                  if (r20.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r9.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r31.x = dot(r35.xyzw, r23.xyzw);
                    r37.xyz = r36.yzw;
                    r31.y = dot(r37.xyzw, r23.xyzw);
                    r23.xy = r31.xy / r19.xx;
                    r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r23.xy = r23.xy * r39.zw + r39.xy;
                    r9.w = r15.w / r19.x;
                    r9.w = max(6.10351563e-05, r9.w);
                    r15.w = (int)r32.w & 0x0000ffff;
                    if (r8.z != 0) {
                      r31.z = (uint)r15.w;
                      r19.x = 0;
                      r20.w = 0;
                      while (true) {
                        r25.w = cmp((int)r20.w >= 8);
                        if (r25.w != 0) break;
                        r33.x = dot(icb[r20.w+0].xy, r11.xy);
                        r33.y = dot(icb[r20.w+0].yx, r11.xz);
                        r31.xy = r33.xy * r34.yy + r23.xy;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r9.w).x;
                        r19.x = r25.w * 0.125 + r19.x;
                        r20.w = (int)r20.w + 1;
                      }
                    } else {
                      r23.z = (uint)r15.w;
                      r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r9.w).x;
                    }
                    r9.w = r19.x * r19.x;
                    r9.w = r9.w * r19.x;
                  } else {
                    r9.w = 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = r16.w * r9.w;
                r15.w = cmp(0 < r9.w);
                if (r15.w != 0) {
                  r15.w = r32.x * r2.y;
                  r15.w = r15.w * r11.w;
                  if (4 == 0) r16.w = 0; else if (4+16 < 32) {                   r16.w = (uint)r32.w << (32-(4 + 16)); r16.w = (uint)r16.w >> (32-4);                  } else r16.w = (uint)r32.w >> 16;
                  r20.w = cmp(0 < (uint)r16.w);
                  r20.w = r4.w ? r20.w : 0;
                  if (r20.w != 0) {
                    r16.w = (int)r16.w + numLights;
                    r16.w = (int)r16.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r16.w, l(52), t12.xxxx
                  r20.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(68), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(84), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(100), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(116), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(132), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r16.w, l(148), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                    r23.x = abs(r10.w) * -0.200000003 + 0.400000006;
                    r26.xyz = r3.yzw * r23.xxx + v5.xyz;
                    r23.x = dot(r31.xyzw, r26.xyzw);
                    r23.y = dot(r33.xyzw, r26.xyzw);
                    r23.z = dot(r34.xyzw, r26.xyzw);
                    r25.w = dot(r35.xyzw, r26.xyzw);
                    r26.x = cmp(r25.w < r23.z);
                    r23.xy = r23.xy / r25.ww;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.xy = r23.xy + r37.zw;
                    r23.xy = r23.xy * r37.xy;
                    r26.yz = r20.ww / r36.xz;
                    r31.xy = float2(1,1) + -r26.yz;
                    r31.xy = cmp(r23.xy >= r31.xy);
                    r26.yz = cmp(r26.yz >= r23.xy);
                    r26.yz = (int2)r26.yz | (int2)r31.xy;
                    r26.y = (int)r26.z | (int)r26.y;
                    r26.x = (int)r26.x | (int)r26.y;
                    if (r26.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.x, r16.w, l(28), t12.xxxx
                    r26.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.yz, r16.w, l(164), t12.xxyx
                    r26.y = samp0[]..swiz;
                    r26.z = samp0[]..swiz;
                      r23.xy = saturate(r23.xy);
                      r31.xy = r23.xy * r36.xz + r36.yw;
                      r16.w = r26.z * r25.w;
                      r23.x = r26.y * r25.w + r23.z;
                      r16.w = r23.x / r16.w;
                      r16.w = max(6.10351563e-05, r16.w);
                      r23.x = r26.x ? 0.000000 : 0;
                      if (r8.z != 0) {
                        r26.z = (uint)r23.x;
                        r23.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r23.z >= 8);
                          if (r25.w != 0) break;
                          r32.x = dot(icb[r23.z+0].xy, r16.xy);
                          r32.y = dot(icb[r23.z+0].yx, r16.xz);
                          r26.xy = r32.xy * r20.ww + r31.xy;
                          r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r16.w).x;
                          r23.y = r25.w * 0.125 + r23.y;
                          r23.z = (int)r23.z + 1;
                        }
                      } else {
                        r31.z = (uint)r23.x;
                        r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r16.w).x;
                      }
                      r16.w = r23.y * r23.y;
                      r16.w = r16.w * r23.y;
                    } else {
                      r16.w = 1;
                    }
                    r9.w = r16.w * r9.w;
                  } else {
                    if (4 == 0) r16.w = 0; else if (4+20 < 32) {                     r16.w = (uint)r32.w << (32-(4 + 20)); r16.w = (uint)r16.w >> (32-4);                    } else r16.w = (uint)r32.w >> 20;
                    r20.w = cmp(0 < (uint)r16.w);
                    r20.w = r20.w ? r2.x : 0;
                    if (r20.w != 0) {
                      r16.w = (int)r16.w + numLights;
                      r16.w = (int)r16.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r16.w, l(52), t12.xxxx
                    r20.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(68), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(84), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(100), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(116), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(132), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(148), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                      r23.x = abs(r10.w) * -0.200000003 + 0.400000006;
                      r28.xyz = r3.yzw * r23.xxx + v5.xyz;
                      r26.x = dot(r31.xyzw, r28.xyzw);
                      r26.y = dot(r32.xyzw, r28.xyzw);
                      r23.x = dot(r33.xyzw, r28.xyzw);
                      r23.z = dot(r34.xyzw, r28.xyzw);
                      r25.w = cmp(r23.z < r23.x);
                      r26.xy = r26.xy / r23.zz;
                      r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r26.xy = r26.xy + r36.zw;
                      r26.xy = r26.xy * r36.xy;
                      r28.xy = r20.ww / r35.xz;
                      r31.xy = float2(1,1) + -r28.xy;
                      r31.xy = cmp(r26.xy >= r31.xy);
                      r28.xy = cmp(r28.xy >= r26.xy);
                      r28.xy = (int2)r28.xy | (int2)r31.xy;
                      r26.z = (int)r28.y | (int)r28.x;
                      r25.w = (int)r25.w | (int)r26.z;
                      if (r25.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.w, r16.w, l(28), t12.xxxx
                      r25.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xy, r16.w, l(164), t12.xyxx
                      r28.x = samp0[]..swiz;
                      r28.y = samp0[]..swiz;
                        r26.xy = saturate(r26.xy);
                        r26.xy = r26.xy * r35.xz + r35.yw;
                        r16.w = r28.y * r23.z;
                        r23.x = r28.x * r23.z + r23.x;
                        r16.w = r23.x / r16.w;
                        r16.w = max(6.10351563e-05, r16.w);
                        r23.x = r25.w ? 0.000000 : 0;
                        if (r8.z != 0) {
                          r28.z = (uint)r23.x;
                          r23.z = 0;
                          r25.w = 0;
                          while (true) {
                            r27.w = cmp((int)r25.w >= 8);
                            if (r27.w != 0) break;
                            r31.x = dot(icb[r25.w+0].xy, r24.xy);
                            r31.y = dot(icb[r25.w+0].yx, r24.xz);
                            r28.xy = r31.xy * r20.ww + r26.xy;
                            r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r16.w).x;
                            r23.z = r27.w * 0.125 + r23.z;
                            r25.w = (int)r25.w + 1;
                          }
                        } else {
                          r26.z = (uint)r23.x;
                          r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r16.w).x;
                        }
                        r16.w = r23.z * r23.z;
                        r16.w = r16.w * r23.z;
                      } else {
                        r16.w = 1;
                      }
                      r9.w = r16.w * r9.w;
                    }
                  }
                  r10.w = cmp(0 < r10.w);
                  r21.xyz = r21.xyz * r10.zzz + r9.xyz;
                  r10.z = dot(r21.xyz, r21.xyz);
                  r10.z = rsqrt(r10.z);
                  r21.xyz = r21.xyz * r10.zzz;
                  r10.z = dot(r21.xyz, r9.xyz);
                  r16.w = dot(r3.yzw, r21.xyz);
                  r20.w = abs(r16.w) * r2.y + -abs(r16.w);
                  r16.w = abs(r16.w) * r20.w + 1;
                  r11.w = r11.w * r2.w + r2.z;
                  r16.w = r16.w * r16.w;
                  r11.w = r16.w * r11.w;
                  r11.w = rcp(r11.w);
                  r11.w = r11.w * r15.w;
                  r9.w = r11.w * r9.w;
                  r9.w = 0.25 * r9.w;
                  r21.xyz = r9.www * r22.xyw + r30.xyz;
                  r10.z = saturate(1 + -r10.z);
                  r11.w = r10.z * r10.z;
                  r11.w = r11.w * r11.w;
                  r10.z = r11.w * r10.z;
                  r9.w = r10.z * r9.w;
                  r22.xyw = r9.www * r22.xyw + r17.xyz;
                  r17.xyz = r10.www ? r22.xyw : r17.xyz;
                  r30.xyz = r10.www ? r21.xyz : r30.xyz;
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
    r13.yzw = r17.xyz;
    r29.xyz = r30.xyz;
    r5.z = (int)r5.z + 32;
  }
  r2.x = 1 + -r8.y;
  r2.z = r2.x * 5 + -2.5;
  r2.z = saturate(0.400000006 * r2.z);
  r2.z = 100 * r2.z;
  r3.xy = -r2.xx * float2(10,5) + float2(6.85740995,7.08500004);
  r2.w = exp2(r3.x);
  r2.w = r8.x * r2.w;
  r2.yw = float2(5,9.1368103) * r2.xw;
  r3.x = r2.y * r2.x;
  r3.x = -r3.x * 2.0159049 + r3.y;
  r3.x = exp2(r3.x);
  r3.x = r8.x * r3.x;
  r3.x = 9.70808983 * r3.x;
  r2.w = max(r3.x, r2.w);
  r2.w = max(1.26815999, r2.w);
  r3.xy = float2(0,0);
  r4.w = 0;
  r5.yz = float2(0,1);
  r6.xy = float2(0,0);
  r9.xy = float2(0,0);
  r10.xy = float2(0,0);
  r11.x = 1;
  r16.xyzw = float4(0,0,0,0);
  r17.yzw = float3(0,0,0);
  r3.w = 0;
  r5.w = 0;
  while (true) {
    r6.w = cmp((uint)r5.w >= numRefProbes);
    if (r6.w != 0) break;
    r3.z = (uint)r5.w >> 5;
    r4.xyz = (int3)r3.xyz + (int3)r15.xyz;
    r3.z = visibleProbes.Load(r4.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(0), t15.wxyz
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r5.w, l(16), t15.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r5.w, l(32), t15.yxwz
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r5.w, l(48), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r5.w, l(64), t15.zwxy
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r5.w, l(80), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r4.xy, r5.w, l(96), t15.xyxx
  r4.x = samp0[]..swiz;
  r4.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r5.w, l(116), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r5.w, l(132), t15.zwxy
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r5.w, l(148), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r5.w, l(164), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r5.w, l(180), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r5.w, l(196), t15.xyzw
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xy, r5.w, l(212), t15.xyxx
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
    r32.xyz = v5.xyz + -r18.yzw;
    r4.z = dot(r32.xyz, r32.xyz);
    r4.z = sqrt(r4.z);
    r4.z = cmp(probeDebugRadius >= r4.z);
    r6.w = (int)r24.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r6.w, l(0), t16.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r6.w, l(16), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r6.w, l(32), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r6.w, l(48), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r6.w, l(64), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r6.w, l(80), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
    r8.z = dot(r33.xyz, r32.xyz);
    r8.z = saturate(r8.z + r33.w);
    r8.w = dot(r34.xyz, r32.xyz);
    r8.w = saturate(r8.w + r34.w);
    r8.z = r8.z * r8.w;
    r8.w = dot(r35.xyz, r32.xyz);
    r8.w = saturate(r8.w + r35.w);
    r8.z = r8.z * r8.w;
    r8.w = dot(r36.xyz, r32.xyz);
    r8.w = saturate(r8.w + r36.w);
    r8.z = r8.z * r8.w;
    r8.w = dot(r37.xyz, r32.xyz);
    r8.w = saturate(r8.w + r37.w);
    r8.z = r8.z * r8.w;
    r8.w = dot(r38.xyz, r32.xyz);
    r8.w = saturate(r8.w + r38.w);
    r5.x = r8.z * r8.w;
    r8.z = (int)r4.x & 1;
    r8.zw = r8.zz ? r5.xy : r5.zx;
    r33.xy = r24.zw;
    r33.z = r25.z;
    r5.x = dot(r14.xyz, r33.xyz);
    r9.w = dot(r32.xyz, r33.xyz);
    r9.w = r9.w + -r25.w;
    r10.w = cmp(r9.w >= 0);
    r9.w = max(abs(r9.w), r2.z);
    r9.w = r10.w ? r9.w : -r9.w;
    r5.x = max(1.00000001e-07, -r5.x);
    r5.x = r9.w / r5.x;
    r5.x = min(131072, abs(r5.x));
    r25.z = r26.z;
    r9.w = dot(r14.xyz, r25.xyz);
    r10.w = dot(r32.xyz, r25.xyz);
    r10.w = r10.w + -r26.w;
    r11.z = cmp(r10.w >= 0);
    r10.w = max(abs(r10.w), r2.z);
    r10.w = r11.z ? r10.w : -r10.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r10.w / r9.w;
    r5.x = min(abs(r9.w), r5.x);
    r26.z = r27.z;
    r9.w = dot(r14.xyz, r26.xyz);
    r10.w = dot(r32.xyz, r26.xyz);
    r10.w = r10.w + -r27.w;
    r11.z = cmp(r10.w >= 0);
    r10.w = max(abs(r10.w), r2.z);
    r10.w = r11.z ? r10.w : -r10.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r10.w / r9.w;
    r5.x = min(abs(r9.w), r5.x);
    r27.z = r28.z;
    r9.w = dot(r14.xyz, r27.xyz);
    r10.w = dot(r32.xyz, r27.xyz);
    r10.w = r10.w + -r28.w;
    r11.z = cmp(r10.w >= 0);
    r10.w = max(abs(r10.w), r2.z);
    r10.w = r11.z ? r10.w : -r10.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r10.w / r9.w;
    r5.x = min(abs(r9.w), r5.x);
    r28.z = r30.x;
    r9.w = dot(r14.xyz, r28.xyz);
    r10.w = dot(r32.xyz, r28.xyz);
    r10.w = r10.w + -r30.y;
    r11.z = cmp(r10.w >= 0);
    r10.w = max(abs(r10.w), r2.z);
    r10.w = r11.z ? r10.w : -r10.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r10.w / r9.w;
    r5.x = min(abs(r9.w), r5.x);
    r31.zw = r30.zw;
    r9.w = dot(r14.zxy, r31.xzw);
    r10.w = dot(r32.zxy, r31.xzw);
    r10.w = r10.w + -r31.y;
    r11.z = cmp(r10.w >= 0);
    r10.w = max(abs(r10.w), r2.z);
    r10.w = r11.z ? r10.w : -r10.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r10.w / r9.w;
    r5.x = min(abs(r9.w), r5.x);
    r25.x = r21.w;
    r25.yz = r22.zw;
    r25.xyz = r25.xyz + r32.xyz;
    r25.xyz = r14.xyz * r5.xxx + r25.xyz;
    r9.w = dot(r25.xyz, r25.xyz);
    r9.w = sqrt(r9.w);
    r5.x = r5.x / r9.w;
    r5.x = r5.x + r5.x;
    r5.x = sqrt(r5.x);
    r5.x = r2.x * 5 + r5.x;
    r5.x = -0.844799995 + r5.x;
    r18.y = r19.z;
    r18.z = r20.x;
    r26.x = dot(r25.xyz, r18.xyz);
    r27.xy = r19.xw;
    r27.z = r20.w;
    r26.y = dot(r25.xyz, r27.xyz);
    r20.x = r19.y;
    r26.z = dot(r25.xyz, r20.xyz);
    if (6 == 0) r11.z = 0; else if (6+25 < 32) {     r11.z = (uint)r24.y << (32-(6 + 25)); r11.z = (uint)r11.z >> (32-6);    } else r11.z = (uint)r24.y >> 25;
    if (9 == 0) r11.w = 0; else if (9+16 < 32) {     r11.w = (uint)r24.y << (32-(9 + 16)); r11.w = (uint)r11.w >> (32-9);    } else r11.w = (uint)r24.y >> 16;
    r26.w = (uint)r11.w;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, r5.x).xyz;
    r24.yzw = (int3)r19.xyz & int3(-2147483648,-2147483648,-2147483648);
    r24.yzw = cmp((int3)r24.yzw == int3(2139095040,2139095040,2139095040));
    r5.x = (int)r24.z | (int)r24.y;
    r5.x = (int)r24.w | (int)r5.x;
    r19.xyz = r5.xxx ? float3(1,1,0) : r19.xyz;
    r25.x = dot(r32.xyz, r18.xyz);
    r25.y = dot(r32.xyz, r27.xyz);
    r25.z = dot(r32.xyz, r20.xyz);
    r21.xyz = saturate(r25.xyz * r21.xyz + float3(0.5,0.5,0.5));
    r22.z = r23.x;
    r21.xyz = r21.xyz * r22.xyz + r23.yzw;
    r26.x = dot(r7.xyz, r18.xyz);
    r26.y = dot(r7.xyz, r27.xyz);
    r26.z = dot(r7.xyz, r20.xyz);
    r18.xyz = cmp(float3(0,0,0) < r26.xyz);
    r6.z = r18.x ? 0 : 0.5;
    r20.xyz = r21.xyz + r6.xyz;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r9.z = r18.y ? 0 : 0.5;
    r18.xyw = r21.xyz + r9.xyz;
    r18.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyw, 0).xyz;
    r10.z = r18.z ? 0 : 0.5;
    r21.xyz = r21.xyz + r10.xyz;
    r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r22.xyz = r26.xyz * r26.xyz;
    r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, 6).xyz;
    r24.yzw = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
    r24.yzw = cmp((int3)r24.yzw == int3(2139095040,2139095040,2139095040));
    r5.x = (int)r24.z | (int)r24.y;
    r5.x = (int)r24.w | (int)r5.x;
    r23.xyz = r5.xxx ? float3(1,1,0) : r23.xyz;
    r25.xyzw = r16.xyzw;
    r24.yzw = r17.yzw;
    r5.x = r3.w;
    r6.z = r3.z;
    while (true) {
      if (r6.z == 0) break;
      r9.z = firstbitlow((uint)r6.z);
      r9.z = 1 << (int)r9.z;
      r9.w = (int)r6.z & (int)r9.z;
      if (r9.w != 0) {
        r9.z = ~(int)r9.z;
        r6.z = (int)r6.z & (int)r9.z;
        if (r4.z != 0) {
          r9.z = r4.x;
          r26.xy = r8.zw;
          r9.w = 1;
          while (true) {
            r10.z = cmp((int)r9.w >= (int)r11.z);
            if (r10.z != 0) break;
            r10.z = (int)r6.w + (int)r9.w;
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
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r10.z, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r10.z, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r10.z, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r10.z, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r10.z = dot(r27.xyz, r32.xyz);
            r10.z = saturate(r10.z + r27.w);
            r10.z = r26.x * r10.z;
            r10.w = dot(r28.xyz, r32.xyz);
            r10.w = saturate(r10.w + r28.w);
            r10.z = r10.z * r10.w;
            r10.w = dot(r30.xyz, r32.xyz);
            r10.w = saturate(r10.w + r30.w);
            r10.z = r10.z * r10.w;
            r10.w = dot(r31.xyz, r32.xyz);
            r10.w = saturate(r10.w + r31.w);
            r10.z = r10.z * r10.w;
            r10.w = dot(r33.xyz, r32.xyz);
            r10.w = saturate(r10.w + r33.w);
            r10.z = r10.z * r10.w;
            r10.w = dot(r34.xyz, r32.xyz);
            r10.w = saturate(r10.w + r34.w);
            r26.x = r10.z * r10.w;
            r11.w = (uint)r9.z >> 2;
            if (1 == 0) r12.x = 0; else if (1+2 < 32) {             r12.x = (uint)r9.z << (32-(1 + 2)); r12.x = (uint)r12.x >> (32-1);            } else r12.x = (uint)r9.z >> 2;
            r13.x = (int)r11.w & 2;
            r15.w = max(r26.y, r26.x);
            r10.z = -r10.z * r10.w + 1;
            r10.z = r26.y * r10.z;
            r11.y = r13.x ? r10.z : r15.w;
            r26.xy = r12.xx ? r26.xy : r11.xy;
            r9.w = (int)r9.w + 1;
            r9.z = r11.w;
          }
          r26.y = saturate(r26.y);
          r9.z = r26.y * r4.y;
          r9.w = cmp(0 < r9.z);
          if (r9.w != 0) {
            r27.z = r26.y * r4.y + r24.w;
            r9.z = r9.z * r24.x;
            r26.xzw = r22.xyz * r9.zzz;
            r28.xyz = r26.zzz * r18.xyw;
            r28.xyz = r20.xyz * r26.xxx + r28.xyz;
            r26.xzw = r21.xyz * r26.www + r28.xyz;
            r28.xyz = r26.xzw * r23.xyz;
            r9.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r28.xyz = r26.xzw * r23.xyz + r25.xyz;
            r10.z = r9.w * r2.w;
            r26.xzw = r19.xyz * r9.zzz;
            r9.z = dot(r26.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r9.z = r2.w * r9.w + r9.z;
            r9.z = r10.z / r9.z;
            r30.x = r25.w;
            r30.yz = r24.yz;
            r27.xyw = r26.zwx * r9.zzz + r30.yzx;
            r28.w = r27.w;
          } else {
            r28.xyzw = r25.xyzw;
            r27.xyz = r24.yzw;
          }
          r5.x = -1;
          r25.xyzw = r28.xyzw;
          r24.yzw = r27.xyz;
          break;
        }
      }
    }
    if (r5.x != 0) {
      r16.xyzw = r25.xyzw;
      r17.yzw = r24.yzw;
      r3.w = -1;
      break;
    }
    r5.w = (int)r5.w + 32;
    r16.xyzw = r25.xyzw;
    r17.yzw = r24.yzw;
    r3.w = r5.x;
  }
  if (r3.w == 0) {
    r3.x = numRefProbes + -numOverrideProbes;
    r3.y = (int)r3.x & -32;
    r3.z = (int)-r3.y + (int)r3.x;
    r3.w = numRefProbes & -32;
    r4.x = (int)-r3.w + numRefProbes;
    r5.xy = float2(0,0);
    r6.w = 0;
    r9.yz = float2(0,1);
    r10.xy = float2(0,0);
    r11.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r20.xyzw = r16.xyzw;
    r21.yzw = r17.yzw;
    r4.y = r3.y;
    while (true) {
      r4.z = cmp((uint)r4.y >= numRefProbes);
      if (r4.z != 0) break;
      r5.z = (uint)r4.y >> 5;
      r6.xyz = (int3)r5.xyz + (int3)r15.xyz;
      r4.z = visibleProbes.Load(r6.xyzw).x;
      r4.w = cmp((int)r3.y == (int)r4.y);
      bitmask.z = ((~(-1 << r3.z)) << 0) & 0xffffffff;  r5.z = (((uint)0 << 0) & bitmask.z) | ((uint)r4.z & ~bitmask.z);
      r4.z = r4.w ? r5.z : r4.z;
      r4.w = cmp((int)r3.w == (int)r4.y);
      if (r4.x == 0) r5.z = 0; else if (r4.x+0 < 32) {       r5.z = (uint)r4.z << (32-(r4.x + 0)); r5.z = (uint)r5.z >> (32-r4.x);      } else r5.z = (uint)r4.z >> 0;
      r4.z = r4.w ? r5.z : r4.z;
      r4.w = (int)r4.y + numLights;
      r22.xyzw = r20.xyzw;
      r23.xyz = r21.yzw;
      r5.z = r4.z;
      while (true) {
        if (r5.z == 0) break;
        r5.w = firstbitlow((uint)r5.z);
        r6.x = 1 << (int)r5.w;
        r6.y = (int)r5.z & (int)r6.x;
        if (r6.y != 0) {
          r5.z = (int)r5.z ^ (int)r6.x;
          r6.x = (int)r4.w + (int)r5.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r6.x, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r6.xy, r6.x, l(16), t11.xyxx
        r6.x = samp0[]..swiz;
        r6.y = samp0[]..swiz;
          r24.xyz = -v5.xyz + r24.xyz;
          r6.z = r24.w;
          r6.xyz = cmp(abs(r24.xyz) < r6.zxy);
          r6.x = r6.y ? r6.x : 0;
          r6.x = r6.z ? r6.x : 0;
          if (r6.x != 0) {
            r5.w = (int)r4.y + (int)r5.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r5.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r6.xy, r5.w, l(96), t15.xyxx
          r6.x = samp0[]..swiz;
          r6.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r5.w, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v5.xyz + -r24.yzw;
            r6.z = (int)r25.w & 0x0000ffff;
            if (6 == 0) r8.z = 0; else if (6+25 < 32) {             r8.z = (uint)r25.w << (32-(6 + 25)); r8.z = (uint)r8.z >> (32-6);            } else r8.z = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r6.z, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r6.z, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r6.z, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r6.z, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r6.z, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r6.z, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r8.w = dot(r27.xyz, r26.xyz);
            r8.w = saturate(r8.w + r27.w);
            r9.w = dot(r28.xyz, r26.xyz);
            r9.w = saturate(r9.w + r28.w);
            r8.w = r9.w * r8.w;
            r9.w = dot(r30.xyz, r26.xyz);
            r9.w = saturate(r9.w + r30.w);
            r8.w = r9.w * r8.w;
            r9.w = dot(r31.xyz, r26.xyz);
            r9.w = saturate(r9.w + r31.w);
            r8.w = r9.w * r8.w;
            r9.w = dot(r32.xyz, r26.xyz);
            r9.w = saturate(r9.w + r32.w);
            r8.w = r9.w * r8.w;
            r9.w = dot(r33.xyz, r26.xyz);
            r9.w = saturate(r9.w + r33.w);
            r9.x = r9.w * r8.w;
            r8.w = r6.x ? 0.000000 : 0;
            r9.xw = r8.ww ? r9.xy : r9.zx;
            r8.w = r6.x;
            r27.xy = r9.xw;
            r10.w = 1;
            while (true) {
              r11.z = cmp((int)r10.w >= (int)r8.z);
              if (r11.z != 0) break;
              r11.z = (int)r6.z + (int)r10.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r11.z, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r11.z, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r11.z, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r11.z, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r11.z, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r11.z, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r11.z = dot(r28.xyz, r26.xyz);
              r11.z = saturate(r11.z + r28.w);
              r11.z = r27.x * r11.z;
              r11.w = dot(r30.xyz, r26.xyz);
              r11.w = saturate(r11.w + r30.w);
              r11.z = r11.z * r11.w;
              r11.w = dot(r31.xyz, r26.xyz);
              r11.w = saturate(r11.w + r31.w);
              r11.z = r11.z * r11.w;
              r11.w = dot(r32.xyz, r26.xyz);
              r11.w = saturate(r11.w + r32.w);
              r11.z = r11.z * r11.w;
              r11.w = dot(r33.xyz, r26.xyz);
              r11.w = saturate(r11.w + r33.w);
              r11.z = r11.z * r11.w;
              r11.w = dot(r34.xyz, r26.xyz);
              r11.w = saturate(r11.w + r34.w);
              r27.x = r11.z * r11.w;
              r12.x = (uint)r8.w >> 2;
              if (1 == 0) r13.x = 0; else if (1+2 < 32) {               r13.x = (uint)r8.w << (32-(1 + 2)); r13.x = (uint)r13.x >> (32-1);              } else r13.x = (uint)r8.w >> 2;
              r15.w = (int)r12.x & 2;
              r18.w = max(r27.y, r27.x);
              r11.z = -r11.z * r11.w + 1;
              r11.z = r27.y * r11.z;
              r11.y = r15.w ? r11.z : r18.w;
              r27.xy = r13.xx ? r27.xy : r11.xy;
              r10.w = (int)r10.w + 1;
              r8.w = r12.x;
            }
            r27.y = saturate(r27.y);
            r6.x = r27.y * r6.y;
            r6.z = cmp(0 < r6.x);
            if (r6.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r5.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r5.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r5.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r5.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r5.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r5.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r5.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r5.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r5.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r5.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r5.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r23.z = r27.y * r6.y + r23.z;
              r5.w = r6.x * r25.z;
              r25.z = r34.z;
              r6.x = dot(r14.xyz, r25.xyz);
              r6.y = dot(r26.xyz, r25.xyz);
              r6.y = r6.y + -r34.w;
              r6.z = cmp(r6.y >= 0);
              r6.y = max(abs(r6.y), r2.z);
              r6.y = r6.z ? r6.y : -r6.y;
              r6.x = max(1.00000001e-07, -r6.x);
              r6.x = r6.y / r6.x;
              r6.x = min(131072, abs(r6.x));
              r34.z = r35.z;
              r6.y = dot(r14.xyz, r34.xyz);
              r6.z = dot(r26.xyz, r34.xyz);
              r6.z = r6.z + -r35.w;
              r8.z = cmp(r6.z >= 0);
              r6.z = max(abs(r6.z), r2.z);
              r6.z = r8.z ? r6.z : -r6.z;
              r6.y = max(1.00000001e-07, -r6.y);
              r6.y = r6.z / r6.y;
              r6.x = min(r6.x, abs(r6.y));
              r35.z = r36.z;
              r6.y = dot(r14.xyz, r35.xyz);
              r6.z = dot(r26.xyz, r35.xyz);
              r6.z = r6.z + -r36.w;
              r8.z = cmp(r6.z >= 0);
              r6.z = max(abs(r6.z), r2.z);
              r6.z = r8.z ? r6.z : -r6.z;
              r6.y = max(1.00000001e-07, -r6.y);
              r6.y = r6.z / r6.y;
              r6.x = min(r6.x, abs(r6.y));
              r36.z = r37.z;
              r6.y = dot(r14.xyz, r36.xyz);
              r6.z = dot(r26.xyz, r36.xyz);
              r6.z = r6.z + -r37.w;
              r8.z = cmp(r6.z >= 0);
              r6.z = max(abs(r6.z), r2.z);
              r6.z = r8.z ? r6.z : -r6.z;
              r6.y = max(1.00000001e-07, -r6.y);
              r6.y = r6.z / r6.y;
              r6.x = min(r6.x, abs(r6.y));
              r37.z = r38.x;
              r6.y = dot(r14.xyz, r37.xyz);
              r6.z = dot(r26.xyz, r37.xyz);
              r6.z = r6.z + -r38.y;
              r8.z = cmp(r6.z >= 0);
              r6.z = max(abs(r6.z), r2.z);
              r6.z = r8.z ? r6.z : -r6.z;
              r6.y = max(1.00000001e-07, -r6.y);
              r6.y = r6.z / r6.y;
              r6.x = min(r6.x, abs(r6.y));
              r39.zw = r38.zw;
              r6.y = dot(r14.zxy, r39.xzw);
              r6.z = dot(r26.zxy, r39.xzw);
              r6.z = r6.z + -r39.y;
              r8.z = cmp(r6.z >= 0);
              r6.z = max(abs(r6.z), r2.z);
              r6.z = r8.z ? r6.z : -r6.z;
              r6.y = max(1.00000001e-07, -r6.y);
              r6.y = r6.z / r6.y;
              r6.x = min(r6.x, abs(r6.y));
              r25.x = r31.w;
              r25.yz = r32.zw;
              r11.yzw = r25.xyz + r26.xyz;
              r11.yzw = r14.xyz * r6.xxx + r11.yzw;
              r6.y = dot(r11.yzw, r11.yzw);
              r6.y = sqrt(r6.y);
              r6.x = r6.x / r6.y;
              r6.x = r6.x + r6.x;
              r6.x = sqrt(r6.x);
              r6.x = r2.x * 5 + r6.x;
              r6.x = -0.844799995 + r6.x;
              r24.y = r28.z;
              r24.z = r30.x;
              r34.x = dot(r11.yzw, r24.xyz);
              r25.xy = r28.xw;
              r25.z = r30.w;
              r34.y = dot(r11.yzw, r25.xyz);
              r30.x = r28.y;
              r34.z = dot(r11.yzw, r30.xyz);
              if (9 == 0) r6.y = 0; else if (9+16 < 32) {               r6.y = (uint)r25.w << (32-(9 + 16)); r6.y = (uint)r6.y >> (32-9);              } else r6.y = (uint)r25.w >> 16;
              r34.w = (uint)r6.y;
              r6.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r6.x).xyz;
              r11.yzw = (int3)r6.xyz & int3(-2147483648,-2147483648,-2147483648);
              r11.yzw = cmp((int3)r11.yzw == int3(2139095040,2139095040,2139095040));
              r8.z = (int)r11.z | (int)r11.y;
              r8.z = (int)r11.w | (int)r8.z;
              r6.xyz = r8.zzz ? float3(1,1,0) : r6.xyz;
              r28.x = dot(r26.xyz, r24.xyz);
              r28.y = dot(r26.xyz, r25.xyz);
              r28.z = dot(r26.xyz, r30.xyz);
              r11.yzw = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r11.yzw = r11.yzw * r32.xyz + r33.yzw;
              r34.x = dot(r7.xyz, r24.xyz);
              r34.y = dot(r7.xyz, r25.xyz);
              r34.z = dot(r7.xyz, r30.xyz);
              r24.xyz = cmp(float3(0,0,0) < r34.xyz);
              r10.z = r24.x ? 0 : 0.5;
              r25.xyz = r11.yzw + r10.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r26.xyz = r34.xyz * r34.xyz;
              r26.xyz = r26.xyz * r5.www;
              r18.z = r24.y ? 0 : 0.5;
              r24.xyw = r18.xyz + r11.yzw;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r26.yyy;
              r24.xyw = r25.xyz * r26.xxx + r24.xyw;
              r19.z = r24.z ? 0 : 0.5;
              r11.yzw = r19.xyz + r11.yzw;
              r11.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.yzw, 0).xyz;
              r11.yzw = r11.yzw * r26.zzz + r24.xyw;
              r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r25.xyz = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
              r25.xyz = cmp((int3)r25.xyz == int3(2139095040,2139095040,2139095040));
              r8.z = (int)r25.y | (int)r25.x;
              r8.z = (int)r25.z | (int)r8.z;
              r24.xyz = r8.zzz ? float3(1,1,0) : r24.xyz;
              r25.xyz = r24.xyz * r11.yzw;
              r8.z = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r22.xyz = r11.yzw * r24.xyz + r22.xyz;
              r8.w = r8.z * r2.w;
              r6.xyz = r6.xyz * r5.www;
              r5.w = dot(r6.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r5.w = r2.w * r8.z + r5.w;
              r5.w = r8.w / r5.w;
              r24.x = r22.w;
              r24.yz = r23.xy;
              r23.xyw = r6.yzx * r5.www + r24.yzx;
              r22.w = r23.w;
            }
          }
        }
      }
      r20.xyzw = r22.xyzw;
      r21.yzw = r23.xyz;
      r4.y = (int)r4.y + 32;
    }
    r3.w = cmp(r21.w < 1);
    if (r3.w != 0) {
      r4.xy = float2(0,0);
      r5.w = 0;
      r6.yz = float2(0,1);
      r9.xy = float2(0,0);
      r10.x = 1;
      r11.xy = float2(0,0);
      r18.xy = float2(0,0);
      r19.x = r20.w;
      r19.yzw = r21.yzw;
      r22.xyz = r20.xyz;
      r3.w = r21.w;
      r4.w = 0;
      while (true) {
        r6.w = cmp((uint)r4.w >= (uint)r3.x);
        if (r6.w != 0) break;
        r4.z = (uint)r4.w >> 5;
        r5.xyz = (int3)r4.xyz + (int3)r15.xyz;
        r4.z = visibleProbes.Load(r5.xyzw).x;
        r5.x = cmp((int)r3.y == (int)r4.w);
        if (r3.z == 0) r5.y = 0; else if (r3.z+0 < 32) {         r5.y = (uint)r4.z << (32-(r3.z + 0)); r5.y = (uint)r5.y >> (32-r3.z);        } else r5.y = (uint)r4.z >> 0;
        r4.z = r5.x ? r5.y : r4.z;
        r5.x = (int)r4.w + numLights;
        r23.xyzw = r19.xyzw;
        r24.xyz = r22.xyz;
        r5.y = r3.w;
        r5.z = r4.z;
        while (true) {
          if (r5.z == 0) break;
          r6.w = firstbitlow((uint)r5.z);
          r8.z = 1 << (int)r6.w;
          r8.w = (int)r5.z & (int)r8.z;
          if (r8.w != 0) {
            r5.z = (int)r5.z ^ (int)r8.z;
            r8.z = (int)r5.x + (int)r6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r8.z, l(0), t11.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r8.z, l(16), t11.xyxx
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
            r25.xyz = -v5.xyz + r25.xyz;
            r26.z = r25.w;
            r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
            r8.z = r25.y ? r25.x : 0;
            r8.z = r25.z ? r8.z : 0;
            if (r8.z != 0) {
              r6.w = (int)r4.w + (int)r6.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r6.w, l(0), t15.wxyz
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.zw, r6.w, l(96), t15.xxxy
            r8.z = samp0[]..swiz;
            r8.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r6.w, l(116), t15.zwxy
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
              r27.xyz = v5.xyz + -r25.yzw;
              r9.w = (int)r26.w & 0x0000ffff;
              if (6 == 0) r10.z = 0; else if (6+25 < 32) {               r10.z = (uint)r26.w << (32-(6 + 25)); r10.z = (uint)r10.z >> (32-6);              } else r10.z = (uint)r26.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r10.w = dot(r28.xyz, r27.xyz);
              r10.w = saturate(r10.w + r28.w);
              r11.w = dot(r30.xyz, r27.xyz);
              r11.w = saturate(r11.w + r30.w);
              r10.w = r11.w * r10.w;
              r11.w = dot(r31.xyz, r27.xyz);
              r11.w = saturate(r11.w + r31.w);
              r10.w = r11.w * r10.w;
              r11.w = dot(r32.xyz, r27.xyz);
              r11.w = saturate(r11.w + r32.w);
              r10.w = r11.w * r10.w;
              r11.w = dot(r33.xyz, r27.xyz);
              r11.w = saturate(r11.w + r33.w);
              r10.w = r11.w * r10.w;
              r11.w = dot(r34.xyz, r27.xyz);
              r11.w = saturate(r11.w + r34.w);
              r6.x = r11.w * r10.w;
              r10.w = (int)r8.z & 1;
              r28.xy = r10.ww ? r6.xy : r6.zx;
              r6.x = r8.z;
              r30.xy = r28.xy;
              r10.w = 1;
              while (true) {
                r11.w = cmp((int)r10.w >= (int)r10.z);
                if (r11.w != 0) break;
                r11.w = (int)r9.w + (int)r10.w;
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
                r11.w = dot(r31.xyz, r27.xyz);
                r11.w = saturate(r11.w + r31.w);
                r11.w = r30.x * r11.w;
                r12.x = dot(r32.xyz, r27.xyz);
                r12.x = saturate(r12.x + r32.w);
                r11.w = r12.x * r11.w;
                r12.x = dot(r33.xyz, r27.xyz);
                r12.x = saturate(r12.x + r33.w);
                r11.w = r12.x * r11.w;
                r12.x = dot(r34.xyz, r27.xyz);
                r12.x = saturate(r12.x + r34.w);
                r11.w = r12.x * r11.w;
                r12.x = dot(r35.xyz, r27.xyz);
                r12.x = saturate(r12.x + r35.w);
                r11.w = r12.x * r11.w;
                r12.x = dot(r36.xyz, r27.xyz);
                r12.x = saturate(r12.x + r36.w);
                r30.x = r12.x * r11.w;
                r13.x = (uint)r6.x >> 2;
                if (1 == 0) r15.w = 0; else if (1+2 < 32) {                 r15.w = (uint)r6.x << (32-(1 + 2)); r15.w = (uint)r15.w >> (32-1);                } else r15.w = (uint)r6.x >> 2;
                r17.w = (int)r13.x & 2;
                r18.w = max(r30.y, r30.x);
                r11.w = -r11.w * r12.x + 1;
                r11.w = r30.y * r11.w;
                r10.y = r17.w ? r11.w : r18.w;
                r30.xy = r15.ww ? r30.xy : r10.xy;
                r10.w = (int)r10.w + 1;
                r6.x = r13.x;
              }
              r6.x = saturate(r30.y + -r5.y);
              r8.z = r6.x * r8.w;
              r9.w = cmp(0 < r8.z);
              if (r9.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r6.w, l(16), t15.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r6.w, l(32), t15.yxwz
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r6.w, l(48), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r6.w, l(64), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r6.w, l(80), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r6.w, l(132), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r6.w, l(148), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r6.w, l(164), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r6.w, l(180), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r6.w, l(196), t15.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r6.w, l(212), t15.xyxx
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
                r23.w = r6.x * r8.w + r23.w;
                r6.x = r8.z * r26.z;
                r26.z = r35.z;
                r6.w = dot(r14.xyz, r26.xyz);
                r8.z = dot(r27.xyz, r26.xyz);
                r8.z = r8.z + -r35.w;
                r8.w = cmp(r8.z >= 0);
                r8.z = max(abs(r8.z), r2.z);
                r8.z = r8.w ? r8.z : -r8.z;
                r6.w = max(1.00000001e-07, -r6.w);
                r6.w = r8.z / r6.w;
                r6.w = min(131072, abs(r6.w));
                r35.z = r36.z;
                r8.z = dot(r14.xyz, r35.xyz);
                r8.w = dot(r27.xyz, r35.xyz);
                r8.w = r8.w + -r36.w;
                r9.w = cmp(r8.w >= 0);
                r8.w = max(abs(r8.w), r2.z);
                r8.w = r9.w ? r8.w : -r8.w;
                r8.z = max(1.00000001e-07, -r8.z);
                r8.z = r8.w / r8.z;
                r6.w = min(abs(r8.z), r6.w);
                r36.z = r37.z;
                r8.z = dot(r14.xyz, r36.xyz);
                r8.w = dot(r27.xyz, r36.xyz);
                r8.w = r8.w + -r37.w;
                r9.w = cmp(r8.w >= 0);
                r8.w = max(abs(r8.w), r2.z);
                r8.w = r9.w ? r8.w : -r8.w;
                r8.z = max(1.00000001e-07, -r8.z);
                r8.z = r8.w / r8.z;
                r6.w = min(abs(r8.z), r6.w);
                r37.z = r38.z;
                r8.z = dot(r14.xyz, r37.xyz);
                r8.w = dot(r27.xyz, r37.xyz);
                r8.w = r8.w + -r38.w;
                r9.w = cmp(r8.w >= 0);
                r8.w = max(abs(r8.w), r2.z);
                r8.w = r9.w ? r8.w : -r8.w;
                r8.z = max(1.00000001e-07, -r8.z);
                r8.z = r8.w / r8.z;
                r6.w = min(abs(r8.z), r6.w);
                r38.z = r39.x;
                r8.z = dot(r14.xyz, r38.xyz);
                r8.w = dot(r27.xyz, r38.xyz);
                r8.w = r8.w + -r39.y;
                r9.w = cmp(r8.w >= 0);
                r8.w = max(abs(r8.w), r2.z);
                r8.w = r9.w ? r8.w : -r8.w;
                r8.z = max(1.00000001e-07, -r8.z);
                r8.z = r8.w / r8.z;
                r6.w = min(abs(r8.z), r6.w);
                r40.zw = r39.zw;
                r8.z = dot(r14.zxy, r40.xzw);
                r8.w = dot(r27.zxy, r40.xzw);
                r8.w = r8.w + -r40.y;
                r9.w = cmp(r8.w >= 0);
                r8.w = max(abs(r8.w), r2.z);
                r8.w = r9.w ? r8.w : -r8.w;
                r8.z = max(1.00000001e-07, -r8.z);
                r8.z = r8.w / r8.z;
                r6.w = min(abs(r8.z), r6.w);
                r26.x = r32.w;
                r26.yz = r33.zw;
                r10.yzw = r26.xyz + r27.xyz;
                r10.yzw = r14.xyz * r6.www + r10.yzw;
                r8.z = dot(r10.yzw, r10.yzw);
                r8.z = sqrt(r8.z);
                r6.w = r6.w / r8.z;
                r6.w = r6.w + r6.w;
                r6.w = sqrt(r6.w);
                r6.w = r2.x * 5 + r6.w;
                r6.w = -0.844799995 + r6.w;
                r25.y = r28.z;
                r25.z = r31.x;
                r35.x = dot(r10.yzw, r25.xyz);
                r26.xy = r28.xw;
                r26.z = r31.w;
                r35.y = dot(r10.yzw, r26.xyz);
                r31.x = r28.y;
                r35.z = dot(r10.yzw, r31.xyz);
                if (9 == 0) r8.z = 0; else if (9+16 < 32) {                 r8.z = (uint)r26.w << (32-(9 + 16)); r8.z = (uint)r8.z >> (32-9);                } else r8.z = (uint)r26.w >> 16;
                r35.w = (uint)r8.z;
                r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r6.w).xyz;
                r28.xyz = (int3)r10.yzw & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r6.w = (int)r28.y | (int)r28.x;
                r6.w = (int)r28.z | (int)r6.w;
                r10.yzw = r6.www ? float3(1,1,0) : r10.yzw;
                r28.x = dot(r27.xyz, r25.xyz);
                r28.y = dot(r27.xyz, r26.xyz);
                r28.z = dot(r27.xyz, r31.xyz);
                r27.xyz = saturate(r28.xyz * r32.xyz + float3(0.5,0.5,0.5));
                r33.z = r34.x;
                r27.xyz = r27.xyz * r33.xyz + r34.yzw;
                r35.x = dot(r7.xyz, r25.xyz);
                r35.y = dot(r7.xyz, r26.xyz);
                r35.z = dot(r7.xyz, r31.xyz);
                r25.xyz = cmp(float3(0,0,0) < r35.xyz);
                r9.z = r25.x ? 0 : 0.5;
                r26.xyz = r27.xyz + r9.xyz;
                r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r28.xyz = r35.xyz * r35.xyz;
                r28.xyz = r28.xyz * r6.xxx;
                r11.z = r25.y ? 0 : 0.5;
                r25.xyw = r27.xyz + r11.xyz;
                r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
                r25.xyw = r25.xyw * r28.yyy;
                r25.xyw = r26.xyz * r28.xxx + r25.xyw;
                r18.z = r25.z ? 0 : 0.5;
                r26.xyz = r27.xyz + r18.xyz;
                r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r25.xyz = r26.xyz * r28.zzz + r25.xyw;
                r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
                r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
                r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
                r6.w = (int)r27.y | (int)r27.x;
                r6.w = (int)r27.z | (int)r6.w;
                r26.xyz = r6.www ? float3(1,1,0) : r26.xyz;
                r27.xyz = r26.xyz * r25.xyz;
                r6.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r24.xyz = r25.xyz * r26.xyz + r24.xyz;
                r8.z = r6.w * r2.w;
                r10.yzw = r10.yzw * r6.xxx;
                r6.x = dot(r10.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r6.x = r2.w * r6.w + r6.x;
                r6.x = r8.z / r6.x;
                r23.xyz = r10.yzw * r6.xxx + r23.xyz;
              }
            }
          }
        }
        r19.xyzw = r23.xyzw;
        r22.xyz = r24.xyz;
        r4.w = (int)r4.w + 32;
      }
      r21.xyzw = r19.zxyw;
      r20.xyz = r22.xyz;
      r21.xyzw = r21.yzxw;
    } else {
      r21.x = r20.w;
    }
    r2.x = max(1, r21.w);
    r2.x = rcp(r2.x);
    r21.w = saturate(r21.w);
    r16.xyz = r20.xyz * r2.xxx;
    r17.xyz = r21.xyz * r2.xxx;
    r2.z = cmp(r21.w < 0.99000001);
    if (r2.z != 0) {
      r2.z = 1 + -r21.w;
      r2.w = sunConstants.globalProbeExposure * r2.z;
      r3.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
      r4.x = globalProbeConstants.data[0].w * r3.x;
      r4.yz = globalProbeConstants.data[1].xy * r3.yz;
      r3.xyz = saturate(float3(0.5,0.5,0.5) + r4.xyz);
      r4.xy = globalProbeConstants.data[1].zw * r3.xy;
      r4.z = globalProbeConstants.data[2].x * r3.z;
      r3.xyz = globalProbeConstants.data[2].yzw + r4.xyz;
      r4.xyz = cmp(float3(0,0,0) < r7.xyz);
      r4.xyz = r4.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r4.w = 0;
      r5.xyz = r4.wwx + r3.xyz;
      r5.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r5.xyz, 0).xyz;
      r6.xyz = r7.xyz * r7.xyz;
      r6.xyz = r6.xyz * r2.www;
      r9.xyz = r4.wwy + r3.xyz;
      r9.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
      r9.xyz = r9.xyz * r6.yyy;
      r5.xyz = r5.xyz * r6.xxx + r9.xyz;
      r3.xyz = r4.wwz + r3.xyz;
      r3.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r3.xyz, 0).xyz;
      r3.xyz = r3.xyz * r6.zzz + r5.xyz;
      r7.w = 0;
      r4.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r7.xyzw, 6).xyz;
      r3.xyz = r4.xyz * r3.xyz;
      r2.w = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r16.xyz = r20.xyz * r2.xxx + r3.xyz;
      r14.w = 0;
      r3.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r2.y).xyz;
      r2.x = sunConstants.globalProbeExposure * r2.z + -r2.w;
      r2.x = r8.y * r2.x + r2.w;
      r17.xyz = r3.xyz * r2.xxx + r17.xyz;
    }
  } else {
    r17.x = r16.w;
  }
  r2.xyz = r16.xyz * r1.www + r12.yzw;
  r3.xyz = float3(1,1,1) + -r1.xyz;
  r3.xyz = r13.yzw * r3.xyz;
  r1.xyz = r29.xyz * r1.xyz + r3.xyz;
  r0.xyz = r2.xyz * r0.xyz + r1.xyz;
  r1.xy = r8.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.xy, 0).xy;
  r2.xyz = r17.xyz * r1.www;
  r1.yzw = r2.xyz * r1.yyy;
  r2.xyz = r2.xyz * r1.xxx;
  r2.xyz = float3(0.959999979,0.959999979,0.959999979) * r2.xyz;
  r1.xyz = r1.yzw * float3(0.0399999991,0.0399999991,0.0399999991) + r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.x != 0) {
    r1.x = dot(v5.xyz, v5.xyz);
    r1.y = rsqrt(r1.x);
    r1.yzw = v5.xyz * r1.yyy;
    r1.x = sqrt(r1.x);
    r2.x = cmp(0 < fogConstants.blendAmount);
    if (r2.x != 0) {
      r2.xy = r1.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r2.z = cmp(0.00999999978 < abs(v5.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v5.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r2.xy;
      r2.xy = r2.zz ? r3.xy : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r3.xyz + r2.xzw;
    } else {
      r2.w = r1.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.x = cmp(0.00999999978 < abs(v5.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v5.z;
      r3.z = -1.44269502 * r3.y;
      r3.z = exp2(r3.z);
      r3.z = 1 + -r3.z;
      r3.y = r3.z / r3.y;
      r3.y = r3.y * r2.w;
      r2.w = r3.x ? r3.y : r2.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
      r2.xyz = exp2(r3.xyz);
    }
    r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r1.y = dot(fogConstants.wldSunFogDir.xyz, -r1.yzw);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.w = fogConstants.atmosphereMieSchlickK * -r1.y + 1;
    r1.w = r1.w * r1.w;
    r1.w = 12.566371 * r1.w;
    r1.z = r1.z / r1.w;
    r1.x = -fogConstants.atmospherehazebasedist + r1.x;
    r1.x = saturate(fogConstants.atmospherehazefadedist * r1.x);
    r1.x = r1.z * r1.x;
    r1.y = saturate(r1.y);
    r1.y = r1.y * r1.y + 1;
    r1.y = r1.y * 0.0596831031 + -1;
    r1.y = fogConstants.atmospheresunstrength * r1.y + 1;
    r1.xzw = fogConstants.atmosphereMieDensity.xyz * r1.xxx;
    r1.xyz = r1.yyy * fogConstants.atmosphereRayleighDensity.xyz + r1.xzw;
    r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyz = r3.xyz * r1.xyz;
    r1.xyz = r0.xyz * r2.xyz + r1.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v5.z;
    r2.x = fogConstants.heightFalloff * v5.z + fogConstants.K0;
    r2.y = cmp(abs(r1.w) < 9.99999975e-05);
    r2.z = min(64, r2.x);
    r2.z = 1.44269502 * r2.z;
    r2.z = exp2(r2.z);
    r2.w = saturate(fogConstants.K0b);
    r3.x = cmp(r2.x < 0);
    r2.x = 1 + r2.x;
    r2.x = r3.x ? r2.z : r2.x;
    r2.x = -fogConstants.K0b + r2.x;
    r1.w = r2.y ? 1 : r1.w;
    r1.w = r2.x / r1.w;
    r1.w = r2.y ? r2.w : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r2.x = dot(v5.xyz, v5.xyz);
    r2.y = sqrt(r2.x);
    r1.w = r1.w * r2.y + fogConstants.expAdd;
    r1.w = exp2(r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r2.x = rsqrt(r2.x);
    r2.xyz = v5.xyz * r2.xxx;
    r2.x = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
    r2.x = saturate(fogConstants.sunFogAngles.y * r2.x + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r2.xxxx * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r1.w = r2.w * r1.w;
    r2.xyz = r2.xyz + -r0.xyz;
    r1.xyz = r1.www * r2.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r1.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = r0.w;
  return;
}