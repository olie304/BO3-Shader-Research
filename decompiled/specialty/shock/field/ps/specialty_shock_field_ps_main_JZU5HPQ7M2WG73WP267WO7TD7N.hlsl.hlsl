// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:48 2021

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
  float hdrScale : packoffset(c15);
  float emissiveFalloffScale : packoffset(c15.y);
  float emissiveFalloffPow : packoffset(c15.z);
  float emissiveFalloffDir : packoffset(c15.w);
  float shieldOpacity : packoffset(c16);
  float zFeather : packoffset(c16.y);
  float distortionAmount : packoffset(c16.z);
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
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> resolvedPostSun : register(t29);
Texture2D<float4> emissiveMap : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2D<float4> alphaMask : register(t37);
Texture2D<float4> edgeColorMap : register(t38);
Texture2D<float4> edgeEmissiveMap : register(t46);


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
  uint4 v3 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.x = tintMask.Sample(colorSampler_s, v2.xy).x;
  r1.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r1.xxx * r1.yzw + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  r1.x = w1.x * r0.w;
  r1.y = aoMap.Sample(aoSampler_s, v2.xy).x;
  r1.z = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r1.w = glossRange.y + -glossRange.x;
  r1.z = r1.z * r1.w + glossRange.x;
  r1.z = saturate(0.0588235296 * r1.z);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
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
  r3.x = v8.x ? 1 : -1;
  r3.y = dot(v4.xyz, v4.xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = v4.xyz * r3.yyy;
  r3.yzw = r3.yzw * r3.xxx;
  r4.x = dot(v5.xyz, v5.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v5.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.xxx;
  r4.w = dot(v6.xyz, v6.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v6.xyz * r4.www;
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
    r3.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r3.y = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
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
  r0.w = -r0.w * w1.x + debugAlphaOverride.x;
  r3.w = debugAlphaOverride.w * r0.w + r1.x;
  r4.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r4.xyz = debugSpecularOverride.www * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = r1.w + -r1.z;
  r5.y = debugGlossOverride.w * r0.w + r1.z;
  r0.w = debugOcclusionOverride.x + -r1.y;
  r0.w = debugOcclusionOverride.w * r0.w + r1.y;
  r1.xyz = v8.xxx ? v4.xyz : -v4.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www + -r2.xyw;
  r1.xyz = debugNormalOverride.www * r1.xyz + r2.xyw;
  r2.xyzw = emissiveMap.Sample(colorSampler_s, v2.xy).xyzw;
  r6.xyz = colorTint.xyz * r2.xyz;
  r4.w = dot(-v7.xyz, -v7.xyz);
  r4.w = rsqrt(r4.w);
  r7.xyz = -v7.xyz * r4.www;
  r5.z = saturate(dot(v4.xyz, r7.xyz));
  r5.w = cmp(emissiveFalloffDir < 0.5);
  r6.w = 1 + -r5.z;
  r5.z = r5.w ? r6.w : r5.z;
  r5.z = saturate(emissiveFalloffScale * r5.z);
  r5.z = log2(r5.z);
  r5.z = emissiveFalloffPow * r5.z;
  r5.z = exp2(r5.z);
  r5.w = r5.z * r2.w;
  r2.xyz = r6.xyz * r5.www;
  r5.w = cmp(v0.z >= 0.984375);
  r6.x = 1.01587307 * v0.z;
  r6.y = v0.z * 64 + -63;
  r5.w = r5.w ? r6.y : r6.x;
  r5.w = max(9.99999994e-09, r5.w);
  r5.w = rcp(r5.w);
  r6.xy = (uint2)v0.xy;
  r6.z = cmp(isDepthHack != 0);
  r8.xy = (uint2)r6.yx;
  r6.w = dot(r8.yx, float2(0.0671105608,0.00583714992));
  r6.w = frac(r6.w);
  r6.w = 52.9829178 * r6.w;
  r6.w = frac(r6.w);
  r6.w = r6.w * 6.28318548 + gameTick.w;
  sincos(r6.w, r9.x, r10.x);
  r6.w = dot(r8.xy, float2(0.0671105608,0.00583714992));
  r6.w = frac(r6.w);
  r6.w = 52.9829178 * r6.w;
  r6.w = frac(r6.w);
  r6.w = r6.w * 6.28318548 + gameTick.w;
  sincos(r6.w, r8.x, r11.x);
  r5.x = saturate(dot(r1.xyz, r7.xyz));
  r6.w = dot(-r7.xyz, r1.xyz);
  r6.w = r6.w + r6.w;
  r12.xyz = r1.xyz * -r6.www + -r7.xyz;
  r6.w = 17 * r5.y;
  r6.w = exp2(r6.w);
  r6.w = 2 + r6.w;
  r6.w = 2 / r6.w;
  r7.w = sqrt(r6.w);
  r8.y = sqrt(r7.w);
  r8.y = r8.y * 0.5 + 0.5;
  r8.y = r8.y * r8.y;
  r8.z = 0.5 * r8.y;
  r8.y = -r8.y * 0.5 + 1;
  r8.w = r5.x * r8.y + r8.z;
  r8.yz = r8.yz * r8.ww;
  r8.w = dot(r1.xyz, sunConstants.wldDir.xyz);
  r9.z = saturate(r8.w);
  r9.w = cmp(0 >= r9.z);
  if (r9.w != 0) {
    r10.w = 0;
  }
  if (r9.w == 0) {
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r11.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.yzw;
    r11.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.yzw;
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.yzw;
    r9.w = -sunConstants.splitDepthOffset + r11.w;
    r9.w = -r9.w * 6.10351563e-05 + 1;
    r13.x = saturate(r9.w);
    r13.x = cmp(r9.w == r13.x);
    if (r13.x != 0) {
      r13.xy = float2(0,0);
      while (true) {
        r13.z = cmp(r13.x >= 3);
        if (r13.z != 0) break;
        r13.z = (uint)r13.x;
        r14.xy = -sunConstants.splitPinTransform[r13.z].xy + r11.yz;
        r13.w = max(abs(r14.x), abs(r14.y));
        r13.y = sunConstants.splitPinTransform[r13.z].z * r13.w;
        r13.z = cmp(r13.y < 1);
        if (r13.z != 0) {
          break;
        }
        r13.x = 1 + r13.x;
        r13.y = 0;
      }
    } else {
      r13.xy = float2(3,0);
    }
    r13.z = cmp(r13.x >= 3);
    if (r13.z != 0) {
      r14.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r14.xx);
      r15.y = -r15.z;
      r14.xyz = r11.yzy * r15.xyz + r14.yzy;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.xyz = max(float3(0,0,0), r14.xyz);
      r14.xyz = min(r14.xyz, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r14.zy;
      r15.xy = floor(r15.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r15.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(0), t23.xxxx
    r14.w = samp0[]..swiz;
      r15.x = (int)r14.w & 0x40000000;
      r15.y = (uint)r14.w << 2;
      if (r15.x == 0) {
        r15.x = (int)r14.w & 0x01ffffff;
        r16.x = (int)r13.w + (int)r15.x;
        r13.w = (uint)r14.w >> 25;
        r13.w = (uint)r13.w;
        r14.xyz = r14.xyz * r13.www;
        r14.xyz = frac(r14.xyz);
        r14.xyz = float3(128,128,128) * r14.xyz;
        r14.xyz = (uint3)r14.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.xz = (uint2)r14.zy >> int2(6,6);
        r13.w = (int)r16.z & 0xc0000000;
        r14.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r14.w = r15.z ? r16.z : r14.w;
        r15.z = (uint)r14.w >> 13;
        r14.w = r15.x ? r15.z : r14.w;
        r14.w = (int)r14.w & 8191;
        r17.x = (int)r14.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r15.xzw = r13.www ? r16.xyz : r17.xyz;
        r17.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r18.xy = (uint2)r14.zy >> (uint2)r17.yy;
        r18.xy = (int2)r18.xy & int2(1,1);
        r14.w = (int)r15.w & 0xc0000000;
        r16.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.w = r18.y ? r15.w : r16.w;
        r17.y = (uint)r16.w >> 13;
        r16.w = r18.x ? r17.y : r16.w;
        r16.w = (int)r16.w & 8191;
        r17.x = (int)r15.x + (int)r16.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r15.xzw = r14.www ? r15.xzw : r17.xzw;
        r15.xzw = r13.www ? r16.xyz : r15.xzw;
        r13.w = (int)r15.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r15.z + 6;
          r16.xy = (uint2)r14.zy >> (uint2)r13.ww;
          r13.w = (int)r15.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r16.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.w = (((uint)r16.x << 0) & bitmask.w) | ((uint)r14.w & ~bitmask.w);
          r14.w = (int)r14.w * 10;
          r13.w = (uint)r13.w >> (uint)r14.w;
          r13.w = (int)r13.w & 1023;
          r16.x = (int)r13.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.zz + int2(1,2);
          r13.w = (int)-r16.y + 6;
          r17.xy = (uint2)r14.zy >> (uint2)r13.ww;
          r13.w = (int)r16.w & 0xc0000000;
          r14.w = (int)r16.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.z = (((uint)r17.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.z = (((uint)r17.x << 0) & bitmask.z) | ((uint)r15.z & ~bitmask.z);
          r15.z = (int)r15.z * 10;
          r14.w = (uint)r14.w >> (uint)r15.z;
          r14.w = (int)r14.w & 1023;
          r17.x = (int)r14.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r13.www ? r16.xyw : r17.xyz;
          r14.w = (int)-r17.y + 6;
          r16.yz = (uint2)r14.zy >> (uint2)r14.ww;
          r14.w = (int)r17.z & 0xc0000000;
          r15.z = (int)r17.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.z = (((uint)r16.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.y = (((uint)r16.y << 0) & bitmask.y) | ((uint)r16.z & ~bitmask.y);
          r16.y = (int)r16.y * 10;
          r15.z = (uint)r15.z >> (uint)r16.y;
          r15.z = (int)r15.z & 1023;
          r18.x = (int)r15.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r16.yz = r14.ww ? r17.xz : r18.xy;
          r15.xw = r13.ww ? r16.xw : r16.yz;
        }
        r13.w = (int)r15.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r14.w = 0; else if (14+15 < 32) {           r14.w = (uint)r15.w << (32-(14 + 15)); r14.w = (uint)r14.w >> (32-14);          } else r14.w = (uint)r15.w >> 15;
          r14.w = (uint)r14.w;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 6.10388815e-05 * r14.w;
          r16.xy = (int2)r15.ww & int2(32767,536870912);
          r15.z = (uint)r16.x;
          r15.z = sunConstants.sstLightingConstants.constants.spanInInches * r15.z;
          r15.z = 3.05185094e-05 * r15.z;
          r16.x = (int)r14.y & 3;
          r16.x = (int)r15.x + (int)r16.x;
          r16.x = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r14.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r14.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r14.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r14.x = (uint)r16.x >> (uint)r17.x;
          r14.x = (int)r14.x & 255;
          r14.x = (uint)r14.x;
          r14.x = r14.x * r15.z;
          r14.x = r14.x * 0.00392156886 + r14.w;
          r14.y = (int)r17.y + 1;
          if (1 == 0) r14.z = 0; else if (1+1 < 32) {           r14.z = (uint)r14.z << (32-(1 + 1)); r14.z = (uint)r14.z >> (32-1);          } else r14.z = (uint)r14.z >> 1;
          r14.y = (int)r14.z + (int)r14.y;
          r14.y = (int)r14.y + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r14.y = (uint)r14.y >> (uint)r17.z;
          r14.y = (int)r14.y & 0x0000ffff;
          r14.y = (uint)r14.y;
          r14.y = r14.y * r15.z;
          r14.y = r14.y * 1.52590219e-05 + r14.w;
          r15.y = r16.y ? r14.x : r14.y;
        } else {
          r14.x = (int)r15.w & 0x80000000;
          r14.y = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r14.x = r14.x ? r14.y : 0;
          r14.y = (uint)r15.w << 2;
          r14.z = (uint)r14.x >> 16;
          r14.x = (int)r14.x & 0x0000ffff;
          r14.xz = f16tof32(r14.xz);
          r14.y = r11.y * r14.z + r14.y;
          r14.x = r11.z * r14.x + r14.y;
          r15.y = r13.w ? r14.x : r15.y;
        }
      }
      r11.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.w;
      r11.w = cmp(r15.y < r11.w);
      r10.w = r11.w ? 0 : 1;
    }
    if (r13.z == 0) {
      if (enableDitheredShadow == 0) {
        r11.w = (uint)r13.x;
        r13.zw = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r13.zw = sunConstants.splitPinTransform[r11.w].zz * r13.zw;
        r14.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.w = (int16)sunConstants.splitArrayOffset;
        r14.z = r13.x + r11.w;
        r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r9.w).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
        r11.w = r13.z + r11.w;
        r11.w = saturate(-1 + r11.w);
        r13.z = r11.w * r11.w;
        r10.w = r13.z * r11.w;
      }
      if (enableDitheredShadow != 0) {
        r14.x = -r9.x;
        r11.w = (uint)r13.x;
        r13.x = 1 + r13.x;
        r13.x = min(2, r13.x);
        r13.y = 1 + -r13.y;
        r13.y = 28 * r13.y;
        r13.xy = (uint2)r13.xy;
        r13.zw = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r13.zw = sunConstants.splitPinTransform[r11.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = -sunConstants.splitPinTransform[r13.x].xy + r11.yz;
        r11.yz = sunConstants.splitPinTransform[r13.x].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.y = r10.x;
        r14.z = r9.x;
        r14.w = 0;
        r15.x = 0;
        while (true) {
          r15.y = cmp((uint)r15.x >= 8);
          if (r15.y != 0) break;
          r15.y = cmp((uint)r13.y < (uint)r15.x);
          r15.zw = r15.yy ? r11.yz : r13.zw;
          r16.x = r15.y ? sunConstants.splitPinTransform[r13.x].w : sunConstants.splitPinTransform[r11.w].w;
          r15.y = r15.y ? r13.x : r11.w;
          r17.x = dot(icb[r15.x+0].yx, r14.xy);
          r17.y = dot(icb[r15.x+0].yx, r14.yz);
          r16.xy = r17.xy * r16.xx + r15.zw;
          r15.y = (int)r15.y + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r15.y;
          r15.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r9.w).x;
          r15.z = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r15.y = r15.y + r15.z;
          r15.y = saturate(-1 + r15.y);
          r14.w = r15.y * 0.125 + r14.w;
          r15.x = (int)r15.x + 1;
        }
        r9.w = r14.w * r14.w;
        r10.w = r9.w * r14.w;
      }
    }
  }
  r9.w = cmp(0 < r9.z);
  if (r9.w != 0) {
    r9.w = cmp(0 < r10.w);
    if (r9.w != 0) {
      r9.w = sunConstants.specScale * r6.w;
      r9.w = r9.w * r9.z;
      if (sunConstants.sunCookieIndex != 0) {
        r13.xyz = eyeOffset.xyz + v7.xyz;
        r13.w = 1;
        r11.y = dot(sunConstants.sunCookieTransform[0].xyzw, r13.xyzw);
        r11.z = dot(sunConstants.sunCookieTransform[1].xyzw, r13.xyzw);
        r13.xy = frac(r11.yz);
        r11.y = -1 + (int14)sunConstants.sunCookieIndex;
        r13.z = (uint)r11.y;
        r11.yzw = gCookieArray.SampleLevel(samplerLinear_s, r13.xyz, 0).xyz;
        r11.yzw = float3(-1,-1,-1) + r11.yzw;
        r11.yzw = sunConstants.sunCookieIntensity * r11.yzw + float3(1,1,1);
        r11.yzw = sunConstants.color.xyz * r11.yzw;
      } else {
        r11.yzw = sunConstants.color.xyz;
      }
      r13.x = viewmodelSunShadowRaw >> 16;
      r13.y = cmp(0 < (uint)r13.x);
      r13.y = r6.z ? r13.y : 0;
      if (r13.y != 0) {
        r13.x = (int)r13.x + numLights;
        r13.x = (int)r13.x + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.y, r13.x, l(52), t12.xxxx
      r13.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r13.x, l(68), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r13.x, l(84), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r13.x, l(132), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r13.x, l(148), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
        r13.z = abs(r8.w) * -0.200000003 + 0.400000006;
        r18.xyz = r1.xyz * r13.zzz + v7.xyz;
        r18.w = 1;
        r14.x = dot(r14.xyzw, r18.xyzw);
        r14.y = dot(r15.xyzw, r18.xyzw);
        r13.zw = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.zw = r13.zw + r17.zw;
        r13.zw = r13.zw * r17.xy;
        r14.xy = r13.yy / r16.xz;
        r14.zw = float2(1,1) + -r14.xy;
        r14.zw = cmp(r13.zw >= r14.zw);
        r14.xy = cmp(r14.xy >= r13.zw);
        r14.xy = (int2)r14.xy | (int2)r14.zw;
        r14.x = (int)r14.y | (int)r14.x;
        if (r14.x == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.x, r13.x, l(28), t12.xxxx
        r14.x = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r13.x, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.yz, r13.x, l(164), t12.xxyx
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
          r13.x = dot(r15.xyzw, r18.xyzw);
          r13.zw = saturate(r13.zw);
          r15.xy = r13.zw * r16.xz + r16.yw;
          r13.x = r13.x + r14.y;
          r13.x = r13.x / r14.z;
          r13.x = max(6.10351563e-05, r13.x);
          r13.z = r14.x ? 0.000000 : 0;
          if (enableDitheredShadow != 0) {
            r14.x = -r9.x;
            r16.z = (uint)r13.z;
            r14.y = r10.x;
            r14.z = r9.x;
            r13.w = 0;
            r14.w = 0;
            while (true) {
              r15.w = cmp((int)r14.w >= 8);
              if (r15.w != 0) break;
              r17.x = dot(icb[r14.w+0].yx, r14.xy);
              r17.y = dot(icb[r14.w+0].yx, r14.yz);
              r16.xy = r17.xy * r13.yy + r15.xy;
              r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r13.x).x;
              r13.w = r15.w * 0.125 + r13.w;
              r14.w = (int)r14.w + 1;
            }
          } else {
            r15.z = (uint)r13.z;
            r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r13.x).x;
          }
          r13.x = r13.w * r13.w;
          r13.x = r13.x * r13.w;
        } else {
          r13.x = 1;
        }
        r10.w = r13.x * r10.w;
      } else {
        r13.x = viewmodelSunShadowRaw & 0x0000ffff;
        r13.y = cmp(0 < (uint)r13.x);
        r13.z = ~(int)r6.z;
        r13.y = r13.y ? r13.z : 0;
        if (r13.y != 0) {
          r13.x = (int)r13.x + numLights;
          r13.x = (int)r13.x + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.y, r13.x, l(52), t12.xxxx
        r13.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r13.x, l(68), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r13.x, l(84), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r13.x, l(132), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r13.x, l(148), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
          r13.z = abs(r8.w) * -0.200000003 + 0.400000006;
          r18.xyz = r1.xyz * r13.zzz + v7.xyz;
          r18.w = 1;
          r14.x = dot(r14.xyzw, r18.xyzw);
          r14.y = dot(r15.xyzw, r18.xyzw);
          r13.zw = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r13.zw = r13.zw + r17.zw;
          r13.zw = r13.zw * r17.xy;
          r14.xy = r13.yy / r16.xz;
          r14.zw = float2(1,1) + -r14.xy;
          r14.zw = cmp(r13.zw >= r14.zw);
          r14.xy = cmp(r14.xy >= r13.zw);
          r14.xy = (int2)r14.xy | (int2)r14.zw;
          r14.x = (int)r14.y | (int)r14.x;
          if (r14.x == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.x, r13.x, l(28), t12.xxxx
          r14.x = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r13.x, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.yz, r13.x, l(164), t12.xxyx
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
            r13.x = dot(r15.xyzw, r18.xyzw);
            r13.zw = saturate(r13.zw);
            r15.xy = r13.zw * r16.xz + r16.yw;
            r13.x = r13.x + r14.y;
            r13.x = r13.x / r14.z;
            r13.x = max(6.10351563e-05, r13.x);
            r13.z = r14.x ? 0.000000 : 0;
            if (enableDitheredShadow != 0) {
              r14.x = -r9.x;
              r16.z = (uint)r13.z;
              r14.y = r10.x;
              r14.z = r9.x;
              r13.w = 0;
              r14.w = 0;
              while (true) {
                r15.w = cmp((int)r14.w >= 8);
                if (r15.w != 0) break;
                r17.x = dot(icb[r14.w+0].yx, r14.xy);
                r17.y = dot(icb[r14.w+0].yx, r14.yz);
                r16.xy = r17.xy * r13.yy + r15.xy;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r13.x).x;
                r13.w = r15.w * 0.125 + r13.w;
                r14.w = (int)r14.w + 1;
              }
            } else {
              r15.z = (uint)r13.z;
              r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r13.x).x;
            }
            r13.x = r13.w * r13.w;
            r13.x = r13.x * r13.w;
          } else {
            r13.x = 1;
          }
          r10.w = r13.x * r10.w;
        }
      }
      r13.x = -r5.x * 0.5 + 1;
      r13.x = -r9.z * r13.x + 1;
      r13.x = r13.x * r13.x;
      r13.x = -r13.x * 0.620000005 + 0.620000005;
      r13.x = r13.x + -r9.z;
      r13.x = r7.w * r13.x + r9.z;
      r13.x = r13.x * r10.w;
      r13.xyz = r13.xxx * r11.yzw;
      r8.w = cmp(0 < r8.w);
      r14.xyz = -v7.xyz * r4.www + sunConstants.wldDir.xyz;
      r4.w = dot(r14.xyz, r14.xyz);
      r4.w = rsqrt(r4.w);
      r14.xyz = r14.xyz * r4.www;
      r4.w = dot(r14.xyz, r7.xyz);
      r14.x = dot(r1.xyz, r14.xyz);
      r14.y = abs(r14.x) * r6.w + -abs(r14.x);
      r14.x = abs(r14.x) * r14.y + 1;
      r9.z = r9.z * r8.y + r8.z;
      r14.x = r14.x * r14.x;
      r9.z = r14.x * r9.z;
      r9.z = rcp(r9.z);
      r9.z = r9.z * r9.w;
      r9.z = r10.w * r9.z;
      r9.z = 0.25 * r9.z;
      r14.xyz = r9.zzz * r11.yzw;
      r4.w = saturate(1 + -r4.w);
      r9.w = r4.w * r4.w;
      r9.w = r9.w * r9.w;
      r4.w = r9.w * r4.w;
      r4.w = r9.z * r4.w;
      r15.xyz = r4.www * r11.zwy;
      r13.w = r15.z;
      r13.xyzw = r8.wwww ? r13.xyzw : 0;
      r15.zw = r14.xy;
      r15.xyzw = r8.wwww ? r15.xyzw : 0;
      r4.w = r8.w ? r14.z : 0;
    } else {
      r13.xyzw = float4(0,0,0,0);
      r15.xyzw = float4(0,0,0,0);
      r4.w = 0;
    }
  } else {
    r13.xyzw = float4(0,0,0,0);
    r15.xyzw = float4(0,0,0,0);
    r4.w = 0;
  }
  r8.w = 0.0078125 * r5.w;
  r8.w = min(15, r8.w);
  r8.w = (uint)r8.w;
  r14.xy = (uint2)r6.xy >> int2(6,6);
  r14.z = (uint)r8.w << 4;
  r16.x = -r9.x;
  r6.x = ~(int)r6.z;
  r6.y = -r5.x * 0.5 + 1;
  r17.xy = float2(0,0);
  r18.w = 0;
  r19.xyz = v7.xyz;
  r19.w = 1;
  r20.w = 1;
  r16.z = r9.x;
  r21.w = 1;
  r22.z = 1;
  r23.w = 1;
  r16.yw = r10.xx;
  r9.y = r16.w;
  r24.w = 1;
  r10.y = r16.x;
  r10.z = r9.x;
  r25.w = 1;
  r26.x = r10.x;
  r26.y = r16.x;
  r26.z = r9.x;
  r27.x = r10.x;
  r27.y = r16.x;
  r27.z = r9.x;
  r28.x = r10.x;
  r28.y = r16.x;
  r28.z = r9.x;
  r11.yzw = r13.xyz;
  r29.x = r13.w;
  r29.yz = r15.xy;
  r30.xy = r15.zw;
  r30.z = r4.w;
  r8.w = enableDitheredShadow;
  r9.z = 0;
  while (true) {
    r9.w = cmp((uint)r9.z >= numLights);
    if (r9.w != 0) break;
    r17.z = (uint)r9.z >> 5;
    r18.xyz = (int3)r14.xyz + (int3)r17.xyz;
    r9.w = visibleLights.Load(r18.xyzw).x;
    r18.xyz = r11.yzw;
    r31.xyz = r29.xyz;
    r32.xyz = r30.xyz;
    r10.w = r8.w;
    r14.w = r9.w;
    while (true) {
      if (r14.w == 0) break;
      r17.z = firstbitlow((uint)r14.w);
      r17.w = 1 << (int)r17.z;
      r22.w = (int)r14.w & (int)r17.w;
      if (r22.w != 0) {
        r14.w = (int)r14.w ^ (int)r17.w;
        r17.z = (int)r9.z + (int)r17.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(0), t11.xyzw
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
      r33.z = samp0[]..swiz;
      r33.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r34.xy, r17.z, l(16), t11.xyxx
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
        r33.xyz = -v7.xyz + r33.xyz;
        r34.z = r33.w;
        r33.xyz = cmp(abs(r33.xyz) < r34.zxy);
        r17.w = r33.y ? r33.x : 0;
        r17.w = r33.z ? r17.w : 0;
        if (r17.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(0), t12.wxyz
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(16), t12.zxyw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(32), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r17.z, l(48), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r17.z, l(64), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r17.z, l(80), t12.xyzw
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r17.z, l(96), t12.yzwx
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
          if (3 == 0) r17.w = 0; else if (3+24 < 32) {           r17.w = (uint)r34.w << (32-(3 + 24)); r17.w = (uint)r17.w >> (32-3);          } else r17.w = (uint)r34.w >> 24;
          switch (r17.w) {
            case 4 :            r17.w = cmp(0 < r39.x);
            r40.xy = r38.zw;
            r40.z = r39.w;
            r41.xyz = -r40.xyz * float3(0.5,0.5,0.5) + r33.yzw;
            r42.xyz = -v7.xyz + r41.xyz;
            r22.w = dot(r40.xyz, r42.xyz);
            r26.w = saturate(-r22.w / r39.x);
            r43.xyz = r26.www * r40.xyz + r41.xyz;
            r43.xyz = r17.www ? r43.xyz : r33.yzw;
            r43.xyz = -v7.xyz + r43.xyz;
            r27.w = dot(r43.xyz, r43.xyz);
            r28.w = rsqrt(r27.w);
            r43.xyz = r43.xyz * r28.www;
            r28.w = dot(r1.xyz, r43.xyz);
            r29.w = saturate(r28.w);
            r30.w = cmp(0 < r29.w);
            if (r30.w != 0) {
              r30.w = sqrt(r27.w);
              r31.w = r36.x * r36.x;
              r27.w = r31.w / r27.w;
              r27.w = min(1, r27.w);
              r43.xy = saturate(r30.ww * r35.xz + r35.yw);
              r43.zw = r43.xy * r43.xy;
              r43.xy = r43.xy * float2(-2,-2) + float2(3,3);
              r43.xy = r43.zw * r43.xy;
              r27.w = r43.x * r27.w;
              r27.w = r27.w * r43.y;
              r30.w = cmp(0 < r27.w);
              if (r30.w != 0) {
                if (3 == 0) r30.w = 0; else if (3+27 < 32) {                 r30.w = (uint)r34.w << (32-(3 + 27)); r30.w = (uint)r30.w >> (32-3);                } else r30.w = (uint)r34.w >> 27;
                r30.w = cmp((int)r30.w != 1);
                if (r30.w != 0) {
                  r30.w = abs(r28.w) * -0.200000003 + 0.400000006;
                  r43.xyz = r1.xyz * r30.www + v7.xyz;
                  r43.xyz = r43.xyz + -r37.xyz;
                  r30.w = max(abs(r43.y), abs(r43.z));
                  r30.w = max(abs(r43.x), r30.w);
                  r30.w = r38.x / r30.w;
                  r30.w = r30.w + r38.y;
                  r31.w = dot(r43.xyz, r43.xyz);
                  r31.w = rsqrt(r31.w);
                  r30.w = max(6.10351563e-05, r30.w);
                  r32.w = (int)r34.w & 0x0000ffff;
                  r44.w = (uint)r32.w;
                  r32.w = 0;
                  r40.w = 0;
                  while (true) {
                    r41.w = cmp((int)r40.w >= 8);
                    if (r41.w != 0) break;
                    r45.y = dot(icb[r40.w+0].yx, r16.xy);
                    r45.z = dot(icb[r40.w+0].yx, r16.yz);
                    r45.yz = r45.yz * r36.yy;
                    r45.x = r45.y * r11.x;
                    r45.w = r45.y * r8.x;
                    r44.xyz = r43.xyz * r31.www + r45.xzw;
                    r41.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r44.xyzw, r30.w).x;
                    r32.w = r41.w * 0.125 + r32.w;
                    r40.w = (int)r40.w + 1;
                  }
                } else {
                  r32.w = 1;
                }
                r27.w = r32.w * r27.w;
                r30.w = cmp(0 < r27.w);
                if (r30.w != 0) {
                  r30.w = r34.x * r6.w;
                  r30.w = 0.25 * r30.w;
                  r31.w = dot(r40.xyz, r12.xyz);
                  r40.w = dot(r12.xyz, r42.xyz);
                  r41.w = -r31.w * r31.w + r39.x;
                  r22.w = r31.w * r40.w + -r22.w;
                  r22.w = saturate(r22.w / r41.w);
                  r31.w = r41.w / r39.x;
                  r31.w = 10 * r31.w;
                  r31.w = min(1, r31.w);
                  r22.w = r22.w + -r26.w;
                  r22.w = r31.w * r22.w + r26.w;
                  r40.xyz = r22.www * r40.xyz + r41.xyz;
                  r40.xyz = r17.www ? r40.xyz : r33.yzw;
                  r40.xyz = -v7.xyz + r40.xyz;
                  r17.w = dot(r40.xyz, r40.xyz);
                  r17.w = rsqrt(r17.w);
                  r41.xyz = r40.xyz * r17.www;
                  if (4 == 0) r22.w = 0; else if (4+16 < 32) {                   r22.w = (uint)r34.w << (32-(4 + 16)); r22.w = (uint)r22.w >> (32-4);                  } else r22.w = (uint)r34.w >> 16;
                  r26.w = cmp(0 < (uint)r22.w);
                  r26.w = r6.z ? r26.w : 0;
                  if (r26.w != 0) {
                    r22.w = (int)r22.w + numLights;
                    r22.w = (int)r22.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.w, r22.w, l(52), t12.xxxx
                  r26.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r22.w, l(100), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r22.w, l(116), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                    r31.w = abs(r28.w) * -0.200000003 + 0.400000006;
                    r20.xyz = r1.xyz * r31.www + v7.xyz;
                    r31.w = dot(r42.xyzw, r20.xyzw);
                    r40.w = dot(r43.xyzw, r20.xyzw);
                    r41.w = cmp(r40.w < r31.w);
                    if (r41.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r22.w, l(68), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r22.w, l(84), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r22.w, l(132), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r22.w, l(148), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xy, r22.w, l(164), t12.xyxx
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                      r42.x = dot(r42.xyzw, r20.xyzw);
                      r42.y = dot(r43.xyzw, r20.xyzw);
                      r20.xy = r42.xy / r40.ww;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r45.zw;
                      r20.xy = r20.xy * r45.xy;
                      r42.xy = r26.ww / r44.xz;
                      r42.zw = float2(1,1) + -r42.xy;
                      r42.zw = cmp(r20.xy >= r42.zw);
                      r42.xy = cmp(r42.xy >= r20.xy);
                      r42.xy = (int2)r42.xy | (int2)r42.zw;
                      r20.z = (int)r42.y | (int)r42.x;
                      r20.xy = saturate(r20.xy);
                      r42.xy = r20.xy * r44.xz + r44.yw;
                      r20.x = r46.y * r40.w;
                      r20.y = r46.x * r40.w + r31.w;
                      r20.x = r20.y / r20.x;
                    } else {
                      r20.z = -1;
                    }
                    r20.y = (int)r41.w | (int)r20.z;
                    if (r20.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.y, r22.w, l(28), t12.xxxx
                    r20.y = samp0[]..swiz;
                      r20.x = max(6.10351563e-05, r20.x);
                      r20.y = (int)r20.y & 0x0000ffff;
                      if (r10.w != 0) {
                        r43.z = (uint)r20.y;
                        r20.z = 0;
                        r22.w = 0;
                        while (true) {
                          r31.w = cmp((int)r22.w >= 8);
                          if (r31.w != 0) break;
                          r44.x = dot(icb[r22.w+0].yx, r16.xw);
                          r44.y = dot(icb[r22.w+0].xy, r9.xy);
                          r43.xy = r44.xy * r26.ww + r42.xy;
                          r31.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r20.x).x;
                          r20.z = r31.w * 0.125 + r20.z;
                          r22.w = (int)r22.w + 1;
                        }
                      } else {
                        r42.z = (uint)r20.y;
                        r20.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r20.x).x;
                      }
                      r20.x = r20.z * r20.z;
                      r20.x = r20.x * r20.z;
                    } else {
                      r20.x = 1;
                    }
                    r27.w = r27.w * r20.x;
                  } else {
                    if (4 == 0) r20.x = 0; else if (4+20 < 32) {                     r20.x = (uint)r34.w << (32-(4 + 20)); r20.x = (uint)r20.x >> (32-4);                    } else r20.x = (uint)r34.w >> 20;
                    r20.y = cmp(0 < (uint)r20.x);
                    r20.y = r20.y ? r6.x : 0;
                    if (r20.y != 0) {
                      r20.x = (int)r20.x + numLights;
                      r20.x = (int)r20.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(52), t12.xxxx
                    r20.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r20.x, l(100), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r20.x, l(116), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                      r22.w = abs(r28.w) * -0.200000003 + 0.400000006;
                      r21.xyz = r1.xyz * r22.www + v7.xyz;
                      r22.w = dot(r42.xyzw, r21.xyzw);
                      r26.w = dot(r43.xyzw, r21.xyzw);
                      r31.w = cmp(r26.w < r22.w);
                      if (r31.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r20.x, l(68), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r20.x, l(84), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r20.x, l(132), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r20.x, l(148), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xy, r20.x, l(164), t12.xyxx
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                        r42.x = dot(r42.xyzw, r21.xyzw);
                        r42.y = dot(r43.xyzw, r21.xyzw);
                        r21.xy = r42.xy / r26.ww;
                        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r21.xy = r21.xy + r45.zw;
                        r21.xy = r21.xy * r45.xy;
                        r42.xy = r20.yy / r44.xz;
                        r42.zw = float2(1,1) + -r42.xy;
                        r42.zw = cmp(r21.xy >= r42.zw);
                        r42.xy = cmp(r42.xy >= r21.xy);
                        r42.xy = (int2)r42.xy | (int2)r42.zw;
                        r21.z = (int)r42.y | (int)r42.x;
                        r21.xy = saturate(r21.xy);
                        r42.xy = r21.xy * r44.xz + r44.yw;
                        r21.x = r46.y * r26.w;
                        r21.y = r46.x * r26.w + r22.w;
                        r21.x = r21.y / r21.x;
                      } else {
                        r21.z = -1;
                      }
                      r21.y = (int)r31.w | (int)r21.z;
                      if (r21.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r20.x, l(28), t12.xxxx
                      r20.x = samp0[]..swiz;
                        r21.x = max(6.10351563e-05, r21.x);
                        r20.x = (int)r20.x & 0x0000ffff;
                        if (r10.w != 0) {
                          r43.z = (uint)r20.x;
                          r21.yz = float2(0,0);
                          while (true) {
                            r22.w = cmp((int)r21.z >= 8);
                            if (r22.w != 0) break;
                            r44.x = dot(icb[r21.z+0].xy, r10.xy);
                            r44.y = dot(icb[r21.z+0].yx, r10.xz);
                            r43.xy = r44.xy * r20.yy + r42.xy;
                            r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r21.x).x;
                            r21.y = r22.w * 0.125 + r21.y;
                            r21.z = (int)r21.z + 1;
                          }
                        } else {
                          r42.z = (uint)r20.x;
                          r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r21.x).x;
                        }
                        r20.x = r21.y * r21.y;
                        r20.x = r20.x * r21.y;
                      } else {
                        r20.x = 1;
                      }
                      r27.w = r27.w * r20.x;
                    }
                  }
                  r20.x = -r29.w * r6.y + 1;
                  r20.x = r20.x * r20.x;
                  r20.x = -r20.x * 0.620000005 + 0.620000005;
                  r20.x = r20.x + -r29.w;
                  r20.x = r7.w * r20.x + r29.w;
                  r20.x = r20.x * r27.w;
                  r34.x = r33.x;
                  r20.y = cmp(0 < r28.w);
                  r42.xyz = r20.xxx * r34.xyz + r18.xyz;
                  r20.x = saturate(dot(r1.xyz, r41.xyz));
                  r40.xyz = r40.xyz * r17.www + r7.xyz;
                  r17.w = dot(r40.xyz, r40.xyz);
                  r17.w = rsqrt(r17.w);
                  r40.xyz = r40.xyz * r17.www;
                  r17.w = dot(r40.xyz, r7.xyz);
                  r21.x = dot(r1.xyz, r40.xyz);
                  r21.z = abs(r21.x) * r6.w + -abs(r21.x);
                  r21.x = abs(r21.x) * r21.z + 1;
                  r21.z = r20.x * r8.y + r8.z;
                  r21.x = r21.x * r21.x;
                  r21.x = r21.x * r21.z;
                  r21.x = rcp(r21.x);
                  r20.x = r20.x * r30.w;
                  r20.x = r21.x * r20.x;
                  r20.x = r20.x * r27.w;
                  r40.xyz = r20.xxx * r34.xyz + r32.xyz;
                  r17.w = saturate(1 + -r17.w);
                  r21.x = r17.w * r17.w;
                  r21.x = r21.x * r21.x;
                  r17.w = r21.x * r17.w;
                  r17.w = r20.x * r17.w;
                  r41.xyz = r17.www * r34.xyz + r31.xyz;
                  r18.xyz = r20.yyy ? r42.xyz : r18.xyz;
                  r31.xyz = r20.yyy ? r41.xyz : r31.xyz;
                  r32.xyz = r20.yyy ? r40.xyz : r32.xyz;
                }
              }
            }
            break;
            case 2 :            r40.xy = r36.zw;
            r40.z = r37.w;
            r40.xyz = -v7.xyz + r40.xyz;
            r17.w = dot(r40.xyz, r40.xyz);
            r17.w = rsqrt(r17.w);
            r41.xyz = r40.xyz * r17.www;
            r20.x = dot(r1.xyz, r41.xyz);
            r20.y = saturate(r20.x);
            r21.x = cmp(0 < r20.y);
            if (r21.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r17.z, l(112), t12.yzwx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r17.z, l(128), t12.zxyw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
              r43.xyz = r41.xyz;
              r43.w = r42.y;
              r21.x = dot(r43.xyzw, r19.xyzw);
              r21.z = cmp(r21.x < 1);
              if (r21.z != 0) {
                r44.xyz = float3(1,1,1);
                r21.z = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r17.z, l(172), t12.yzwx
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r17.z, l(188), t12.wxyz
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r17.z, l(204), t12.xyzw
              r47.x = samp0[]..swiz;
              r47.y = samp0[]..swiz;
              r47.z = samp0[]..swiz;
              r47.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.w, r17.z, l(236), t12.xxxx
              r22.w = samp0[]..swiz;
                r48.xyz = -v7.xyz + r33.yzw;
                r26.w = r36.x * r36.x;
                r27.w = dot(r48.xyz, r48.xyz);
                r26.w = r26.w / r27.w;
                r26.w = min(1, r26.w);
                r35.xy = saturate(r21.xx * r35.xz + r35.yw);
                r35.zw = r35.xy * r35.xy;
                r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
                r35.xy = r35.zw * r35.xy;
                r26.w = r35.x * r26.w;
                r26.w = r26.w * r35.y;
                r37.w = r38.x;
                r35.x = dot(r37.xyzw, r19.xyzw);
                r48.xyz = r38.yzw;
                r48.w = r39.w;
                r35.y = dot(r48.xyzw, r19.xyzw);
                r22.xy = r35.xy / r21.xx;
                r21.x = cmp(r45.w < 0.00048828125);
                if (r21.x != 0) {
                  r46.y = r47.x;
                  r35.xy = saturate(abs(r22.xy) * r46.zw + r46.xy);
                  r35.zw = r35.xy * r35.xy;
                  r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
                  r35.xy = r35.zw * r35.xy;
                  r21.x = r35.x * r35.y;
                } else {
                  r45.w = r46.y;
                  r35.xyzw = saturate(r45.xyzw * abs(r22.yyxx));
                  r35.xyzw = log2(r35.xyzw);
                  r35.xyzw = r46.xxxx * r35.xyzw;
                  r35.xyzw = exp2(r35.xyzw);
                  r35.xy = r35.xy + r35.zw;
                  r35.xy = log2(r35.xy);
                  r35.xy = r47.xx * r35.xy;
                  r35.xy = exp2(r35.xy);
                  r27.w = r46.z * r35.x;
                  r28.w = r46.w * r35.y + -1;
                  r27.w = r46.w * r35.y + -r27.w;
                  r27.w = saturate(r28.w / r27.w);
                  r28.w = r27.w * r27.w;
                  r27.w = r27.w * -2 + 3;
                  r21.x = r28.w * r27.w;
                }
                r21.z = r26.w * r21.x;
                r21.x = (int)r22.w & 255;
                if (r21.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyz, r17.z, l(220), t12.xyzx
                r35.x = samp0[]..swiz;
                r35.y = samp0[]..swiz;
                r35.z = samp0[]..swiz;
                  r22.w = dot(r47.yzw, r22.xyz);
                  r22.x = dot(r35.xyz, r22.xyz);
                  r35.xy = frac(r22.wx);
                  r21.x = (int)r21.x + -1;
                  r35.z = (uint)r21.x;
                  r44.xyz = gCookieArray.SampleLevel(samplerLinear_s, r35.xyz, 0).xyz;
                } else {
                  r44.xyz = float3(1,1,1);
                }
              }
              r33.yz = r34.yz;
              r22.xyw = r33.xyz * r44.xyz;
              r21.x = cmp(0 < r21.z);
              if (r21.x != 0) {
                if (3 == 0) r21.x = 0; else if (3+27 < 32) {                 r21.x = (uint)r34.w << (32-(3 + 27)); r21.x = (uint)r21.x >> (32-3);                } else r21.x = (uint)r34.w >> 27;
                r21.x = cmp((int)r21.x != 1);
                if (r21.x != 0) {
                  r21.x = abs(r20.x) * -0.200000003 + 0.400000006;
                  r23.xyz = r1.xyz * r21.xxx + v7.xyz;
                  r41.xyz = r39.xyz;
                  r21.x = dot(r41.xyzw, r23.xyzw);
                  r26.w = dot(r43.xyzw, r23.xyzw);
                  r27.w = cmp(r26.w >= r21.x);
                  if (r27.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.y, r17.z, l(144), t12.xxxx
                  r42.y = samp0[]..swiz;
                    r37.w = r38.x;
                    r33.x = dot(r37.xyzw, r23.xyzw);
                    r39.xyz = r38.yzw;
                    r33.y = dot(r39.xyzw, r23.xyzw);
                    r23.xy = r33.xy / r26.ww;
                    r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r23.xy = r23.xy * r42.zw + r42.xy;
                    r17.z = r21.x / r26.w;
                    r17.z = max(6.10351563e-05, r17.z);
                    r21.x = (int)r34.w & 0x0000ffff;
                    if (r10.w != 0) {
                      r33.z = (uint)r21.x;
                      r26.w = 0;
                      r27.w = 0;
                      while (true) {
                        r28.w = cmp((int)r27.w >= 8);
                        if (r28.w != 0) break;
                        r35.x = dot(icb[r27.w+0].xy, r26.xy);
                        r35.y = dot(icb[r27.w+0].yx, r26.xz);
                        r33.xy = r35.xy * r36.yy + r23.xy;
                        r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r17.z).x;
                        r26.w = r28.w * 0.125 + r26.w;
                        r27.w = (int)r27.w + 1;
                      }
                    } else {
                      r23.z = (uint)r21.x;
                      r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r17.z).x;
                    }
                    r17.z = r26.w * r26.w;
                    r17.z = r17.z * r26.w;
                  } else {
                    r17.z = 1;
                  }
                } else {
                  r17.z = 1;
                }
                r17.z = r21.z * r17.z;
                r21.x = cmp(0 < r17.z);
                if (r21.x != 0) {
                  r21.x = r34.x * r6.w;
                  r21.x = r21.x * r20.y;
                  if (4 == 0) r21.z = 0; else if (4+16 < 32) {                   r21.z = (uint)r34.w << (32-(4 + 16)); r21.z = (uint)r21.z >> (32-4);                  } else r21.z = (uint)r34.w >> 16;
                  r23.x = cmp(0 < (uint)r21.z);
                  r23.x = r6.z ? r23.x : 0;
                  if (r23.x != 0) {
                    r21.z = (int)r21.z + numLights;
                    r21.z = (int)r21.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r21.z, l(52), t12.xxxx
                  r23.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r21.z, l(68), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r21.z, l(84), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r21.z, l(100), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r21.z, l(116), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r21.z, l(132), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r21.z, l(148), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                    r23.y = abs(r20.x) * -0.200000003 + 0.400000006;
                    r24.xyz = r1.xyz * r23.yyy + v7.xyz;
                    r33.x = dot(r33.xyzw, r24.xyzw);
                    r33.y = dot(r35.xyzw, r24.xyzw);
                    r23.y = dot(r36.xyzw, r24.xyzw);
                    r23.z = dot(r37.xyzw, r24.xyzw);
                    r24.x = cmp(r23.z < r23.y);
                    r24.yz = r33.xy / r23.zz;
                    r24.yz = r24.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r24.yz = r24.yz + r39.zw;
                    r24.yz = r24.yz * r39.xy;
                    r33.xy = r23.xx / r38.xz;
                    r33.zw = float2(1,1) + -r33.xy;
                    r33.zw = cmp(r24.yz >= r33.zw);
                    r33.xy = cmp(r33.xy >= r24.yz);
                    r33.xy = (int2)r33.xy | (int2)r33.zw;
                    r27.w = (int)r33.y | (int)r33.x;
                    r24.x = (int)r24.x | (int)r27.w;
                    if (r24.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r21.z, l(28), t12.xxxx
                    r24.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xy, r21.z, l(164), t12.xyxx
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                      r24.yz = saturate(r24.yz);
                      r34.xy = r24.yz * r38.xz + r38.yw;
                      r21.z = r33.y * r23.z;
                      r23.y = r33.x * r23.z + r23.y;
                      r21.z = r23.y / r21.z;
                      r21.z = max(6.10351563e-05, r21.z);
                      r23.y = r24.x ? 0.000000 : 0;
                      if (r10.w != 0) {
                        r24.z = (uint)r23.y;
                        r23.z = 0;
                        r27.w = 0;
                        while (true) {
                          r28.w = cmp((int)r27.w >= 8);
                          if (r28.w != 0) break;
                          r33.x = dot(icb[r27.w+0].xy, r27.xy);
                          r33.y = dot(icb[r27.w+0].yx, r27.xz);
                          r24.xy = r33.xy * r23.xx + r34.xy;
                          r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r21.z).x;
                          r23.z = r24.x * 0.125 + r23.z;
                          r27.w = (int)r27.w + 1;
                        }
                      } else {
                        r34.z = (uint)r23.y;
                        r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r21.z).x;
                      }
                      r21.z = r23.z * r23.z;
                      r21.z = r21.z * r23.z;
                    } else {
                      r21.z = 1;
                    }
                    r17.z = r21.z * r17.z;
                  } else {
                    if (4 == 0) r21.z = 0; else if (4+20 < 32) {                     r21.z = (uint)r34.w << (32-(4 + 20)); r21.z = (uint)r21.z >> (32-4);                    } else r21.z = (uint)r34.w >> 20;
                    r23.x = cmp(0 < (uint)r21.z);
                    r23.x = r23.x ? r6.x : 0;
                    if (r23.x != 0) {
                      r21.z = (int)r21.z + numLights;
                      r21.z = (int)r21.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r21.z, l(52), t12.xxxx
                    r23.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r21.z, l(68), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r21.z, l(84), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r21.z, l(100), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r21.z, l(116), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r21.z, l(132), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r21.z, l(148), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                      r23.y = abs(r20.x) * -0.200000003 + 0.400000006;
                      r25.xyz = r1.xyz * r23.yyy + v7.xyz;
                      r24.x = dot(r33.xyzw, r25.xyzw);
                      r24.y = dot(r34.xyzw, r25.xyzw);
                      r23.y = dot(r35.xyzw, r25.xyzw);
                      r24.z = dot(r36.xyzw, r25.xyzw);
                      r25.x = cmp(r24.z < r23.y);
                      r24.xy = r24.xy / r24.zz;
                      r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r24.xy = r24.xy + r38.zw;
                      r24.xy = r24.xy * r38.xy;
                      r25.yz = r23.xx / r37.xz;
                      r33.xy = float2(1,1) + -r25.yz;
                      r33.xy = cmp(r24.xy >= r33.xy);
                      r25.yz = cmp(r25.yz >= r24.xy);
                      r25.yz = (int2)r25.yz | (int2)r33.xy;
                      r25.y = (int)r25.z | (int)r25.y;
                      r25.x = (int)r25.x | (int)r25.y;
                      if (r25.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.x, r21.z, l(28), t12.xxxx
                      r25.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.yz, r21.z, l(164), t12.xxyx
                      r25.y = samp0[]..swiz;
                      r25.z = samp0[]..swiz;
                        r24.xy = saturate(r24.xy);
                        r33.xy = r24.xy * r37.xz + r37.yw;
                        r21.z = r25.z * r24.z;
                        r23.y = r25.y * r24.z + r23.y;
                        r21.z = r23.y / r21.z;
                        r21.z = max(6.10351563e-05, r21.z);
                        r23.y = r25.x ? 0.000000 : 0;
                        if (r10.w != 0) {
                          r24.z = (uint)r23.y;
                          r25.xy = float2(0,0);
                          while (true) {
                            r25.z = cmp((int)r25.y >= 8);
                            if (r25.z != 0) break;
                            r34.x = dot(icb[r25.y+0].xy, r28.xy);
                            r34.y = dot(icb[r25.y+0].yx, r28.xz);
                            r24.xy = r34.xy * r23.xx + r33.xy;
                            r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r21.z).x;
                            r25.x = r24.x * 0.125 + r25.x;
                            r25.y = (int)r25.y + 1;
                          }
                        } else {
                          r33.z = (uint)r23.y;
                          r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r21.z).x;
                        }
                        r21.z = r25.x * r25.x;
                        r21.z = r21.z * r25.x;
                      } else {
                        r21.z = 1;
                      }
                      r17.z = r21.z * r17.z;
                    }
                  }
                  r21.z = -r20.y * r6.y + 1;
                  r21.z = r21.z * r21.z;
                  r21.z = -r21.z * 0.620000005 + 0.620000005;
                  r21.z = r21.z + -r20.y;
                  r21.z = r7.w * r21.z + r20.y;
                  r21.z = r21.z * r17.z;
                  r20.x = cmp(0 < r20.x);
                  r24.xyz = r21.zzz * r22.xyw + r18.xyz;
                  r33.xyz = r40.xyz * r17.www + r7.xyz;
                  r17.w = dot(r33.xyz, r33.xyz);
                  r17.w = rsqrt(r17.w);
                  r33.xyz = r33.xyz * r17.www;
                  r17.w = dot(r33.xyz, r7.xyz);
                  r21.z = dot(r1.xyz, r33.xyz);
                  r23.x = abs(r21.z) * r6.w + -abs(r21.z);
                  r21.z = abs(r21.z) * r23.x + 1;
                  r20.y = r20.y * r8.y + r8.z;
                  r21.z = r21.z * r21.z;
                  r20.y = r21.z * r20.y;
                  r20.y = rcp(r20.y);
                  r20.y = r20.y * r21.x;
                  r17.z = r20.y * r17.z;
                  r17.z = 0.25 * r17.z;
                  r33.xyz = r17.zzz * r22.xyw + r32.xyz;
                  r17.w = saturate(1 + -r17.w);
                  r20.y = r17.w * r17.w;
                  r20.y = r20.y * r20.y;
                  r17.w = r20.y * r17.w;
                  r17.z = r17.z * r17.w;
                  r22.xyw = r17.zzz * r22.xyw + r31.xyz;
                  r18.xyz = r20.xxx ? r24.xyz : r18.xyz;
                  r31.xyz = r20.xxx ? r22.xyw : r31.xyz;
                  r32.xyz = r20.xxx ? r33.xyz : r32.xyz;
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
    r11.yzw = r18.xyz;
    r29.xyz = r31.xyz;
    r30.xyz = r32.xyz;
    r9.z = (int)r9.z + 32;
  }
  r4.w = 1 + -r5.y;
  r6.x = 5 * r4.w;
  r6.y = r4.w * 5 + -2.5;
  r6.y = saturate(0.400000006 * r6.y);
  r6.y = 100 * r6.y;
  r6.zw = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r6.z = exp2(r6.z);
  r6.z = r6.z * r5.x;
  r7.x = r6.x * r4.w;
  r6.w = -r7.x * 2.0159049 + r6.w;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r5.x;
  r6.zw = float2(9.1368103,9.70808983) * r6.zw;
  r6.z = max(r6.z, r6.w);
  r6.z = max(1.26815999, r6.z);
  r7.xy = float2(0,0);
  r8.w = 0;
  r9.yz = float2(0,1);
  r10.xy = float2(0,0);
  r13.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.x = 1;
  r17.xyzw = float4(0,0,0,0);
  r18.yzw = float3(0,0,0);
  r6.w = 0;
  r7.w = 0;
  while (true) {
    r9.w = cmp((uint)r7.w >= numRefProbes);
    if (r9.w != 0) break;
    r7.z = (uint)r7.w >> 5;
    r8.xyz = (int3)r7.xyz + (int3)r14.xyz;
    r7.z = visibleProbes.Load(r8.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r7.w, l(0), t15.wxyz
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r7.w, l(16), t15.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r7.w, l(32), t15.yxwz
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r7.w, l(48), t15.xyzw
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r7.w, l(64), t15.zwxy
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r7.w, l(80), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.xy, r7.w, l(96), t15.xyxx
  r8.x = samp0[]..swiz;
  r8.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r7.w, l(116), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r7.w, l(132), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r7.w, l(148), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r7.w, l(164), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r7.w, l(180), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r7.w, l(196), t15.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xy, r7.w, l(212), t15.xyxx
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
    r34.xyz = v7.xyz + -r19.yzw;
    r8.z = dot(r34.xyz, r34.xyz);
    r8.z = sqrt(r8.z);
    r8.z = cmp(probeDebugRadius >= r8.z);
    r9.w = (int)r25.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(0), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(16), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(32), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(48), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(64), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r9.w, l(80), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
    r10.w = dot(r35.xyz, r34.xyz);
    r10.w = saturate(r10.w + r35.w);
    r11.x = dot(r36.xyz, r34.xyz);
    r11.x = saturate(r11.x + r36.w);
    r10.w = r11.x * r10.w;
    r11.x = dot(r37.xyz, r34.xyz);
    r11.x = saturate(r11.x + r37.w);
    r10.w = r11.x * r10.w;
    r11.x = dot(r38.xyz, r34.xyz);
    r11.x = saturate(r11.x + r38.w);
    r10.w = r11.x * r10.w;
    r11.x = dot(r39.xyz, r34.xyz);
    r11.x = saturate(r11.x + r39.w);
    r10.w = r11.x * r10.w;
    r11.x = dot(r40.xyz, r34.xyz);
    r11.x = saturate(r11.x + r40.w);
    r9.x = r11.x * r10.w;
    r10.w = (int)r8.x & 1;
    r16.zw = r10.ww ? r9.xy : r9.zx;
    r35.xy = r25.zw;
    r35.z = r26.z;
    r9.x = dot(r12.xyz, r35.xyz);
    r10.w = dot(r34.xyz, r35.xyz);
    r10.w = r10.w + -r26.w;
    r11.x = cmp(r10.w >= 0);
    r10.w = max(abs(r10.w), r6.y);
    r10.w = r11.x ? r10.w : -r10.w;
    r9.x = max(1.00000001e-07, -r9.x);
    r9.x = r10.w / r9.x;
    r9.x = min(131072, abs(r9.x));
    r26.z = r27.z;
    r10.w = dot(r12.xyz, r26.xyz);
    r11.x = dot(r34.xyz, r26.xyz);
    r11.x = r11.x + -r27.w;
    r13.w = cmp(r11.x >= 0);
    r11.x = max(abs(r11.x), r6.y);
    r11.x = r13.w ? r11.x : -r11.x;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r11.x / r10.w;
    r9.x = min(abs(r10.w), r9.x);
    r27.z = r28.z;
    r10.w = dot(r12.xyz, r27.xyz);
    r11.x = dot(r34.xyz, r27.xyz);
    r11.x = r11.x + -r28.w;
    r13.w = cmp(r11.x >= 0);
    r11.x = max(abs(r11.x), r6.y);
    r11.x = r13.w ? r11.x : -r11.x;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r11.x / r10.w;
    r9.x = min(abs(r10.w), r9.x);
    r28.z = r31.z;
    r10.w = dot(r12.xyz, r28.xyz);
    r11.x = dot(r34.xyz, r28.xyz);
    r11.x = r11.x + -r31.w;
    r13.w = cmp(r11.x >= 0);
    r11.x = max(abs(r11.x), r6.y);
    r11.x = r13.w ? r11.x : -r11.x;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r11.x / r10.w;
    r9.x = min(abs(r10.w), r9.x);
    r31.z = r32.x;
    r10.w = dot(r12.xyz, r31.xyz);
    r11.x = dot(r34.xyz, r31.xyz);
    r11.x = r11.x + -r32.y;
    r13.w = cmp(r11.x >= 0);
    r11.x = max(abs(r11.x), r6.y);
    r11.x = r13.w ? r11.x : -r11.x;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r11.x / r10.w;
    r9.x = min(abs(r10.w), r9.x);
    r33.zw = r32.zw;
    r10.w = dot(r12.zxy, r33.xzw);
    r11.x = dot(r34.zxy, r33.xzw);
    r11.x = r11.x + -r33.y;
    r13.w = cmp(r11.x >= 0);
    r11.x = max(abs(r11.x), r6.y);
    r11.x = r13.w ? r11.x : -r11.x;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r11.x / r10.w;
    r9.x = min(abs(r10.w), r9.x);
    r26.x = r22.w;
    r26.yz = r23.zw;
    r26.xyz = r26.xyz + r34.xyz;
    r26.xyz = r12.xyz * r9.xxx + r26.xyz;
    r10.w = dot(r26.xyz, r26.xyz);
    r10.w = sqrt(r10.w);
    r9.x = r9.x / r10.w;
    r9.x = r9.x + r9.x;
    r9.x = sqrt(r9.x);
    r9.x = r4.w * 5 + r9.x;
    r9.x = -0.844799995 + r9.x;
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
    r20.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r9.x).xyz;
    r25.yzw = (int3)r20.yzw & int3(-2147483648,-2147483648,-2147483648);
    r25.yzw = cmp((int3)r25.yzw == int3(2139095040,2139095040,2139095040));
    r9.x = (int)r25.z | (int)r25.y;
    r9.x = (int)r25.w | (int)r9.x;
    r20.yzw = r9.xxx ? float3(1,1,0) : r20.yzw;
    r26.x = dot(r34.xyz, r19.xyz);
    r26.y = dot(r34.xyz, r28.xyz);
    r26.z = dot(r34.xyz, r21.xyz);
    r22.xyz = saturate(r26.xyz * r22.xyz + float3(0.5,0.5,0.5));
    r23.z = r24.x;
    r22.xyz = r22.xyz * r23.xyz + r24.yzw;
    r27.x = dot(r1.xyz, r19.xyz);
    r27.y = dot(r1.xyz, r28.xyz);
    r27.z = dot(r1.xyz, r21.xyz);
    r19.xyz = cmp(float3(0,0,0) < r27.xyz);
    r10.z = r19.x ? 0 : 0.5;
    r21.xyz = r22.xyz + r10.xyz;
    r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r13.z = r19.y ? 0 : 0.5;
    r19.xyw = r22.xyz + r13.xyz;
    r19.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyw, 0).xyz;
    r15.z = r19.z ? 0 : 0.5;
    r22.xyz = r22.xyz + r15.xyz;
    r22.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r23.xyz = r27.xyz * r27.xyz;
    r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
    r25.yzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
    r25.yzw = cmp((int3)r25.yzw == int3(2139095040,2139095040,2139095040));
    r9.x = (int)r25.z | (int)r25.y;
    r9.x = (int)r25.w | (int)r9.x;
    r24.xyz = r9.xxx ? float3(1,1,0) : r24.xyz;
    r26.xyzw = r17.xyzw;
    r25.yzw = r18.yzw;
    r9.x = r6.w;
    r10.z = r7.z;
    while (true) {
      if (r10.z == 0) break;
      r10.w = firstbitlow((uint)r10.z);
      r10.w = 1 << (int)r10.w;
      r11.x = (int)r10.w & (int)r10.z;
      if (r11.x != 0) {
        r10.w = ~(int)r10.w;
        r10.z = (int)r10.w & (int)r10.z;
        if (r8.z != 0) {
          r10.w = r8.x;
          r27.xy = r16.zw;
          r11.x = 1;
          while (true) {
            r13.z = cmp((int)r11.x >= (int)r20.x);
            if (r13.z != 0) break;
            r13.z = (int)r9.w + (int)r11.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.z, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(64), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r13.z, l(80), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
            r13.z = dot(r28.xyz, r34.xyz);
            r13.z = saturate(r13.z + r28.w);
            r13.z = r27.x * r13.z;
            r13.w = dot(r31.xyz, r34.xyz);
            r13.w = saturate(r13.w + r31.w);
            r13.z = r13.z * r13.w;
            r13.w = dot(r32.xyz, r34.xyz);
            r13.w = saturate(r13.w + r32.w);
            r13.z = r13.z * r13.w;
            r13.w = dot(r33.xyz, r34.xyz);
            r13.w = saturate(r13.w + r33.w);
            r13.z = r13.z * r13.w;
            r13.w = dot(r35.xyz, r34.xyz);
            r13.w = saturate(r13.w + r35.w);
            r13.z = r13.z * r13.w;
            r13.w = dot(r36.xyz, r34.xyz);
            r13.w = saturate(r13.w + r36.w);
            r27.x = r13.z * r13.w;
            r14.w = (uint)r10.w >> 2;
            if (1 == 0) r15.z = 0; else if (1+2 < 32) {             r15.z = (uint)r10.w << (32-(1 + 2)); r15.z = (uint)r15.z >> (32-1);            } else r15.z = (uint)r10.w >> 2;
            r15.w = (int)r14.w & 2;
            r19.z = max(r27.y, r27.x);
            r13.z = -r13.z * r13.w + 1;
            r13.z = r27.y * r13.z;
            r16.y = r15.w ? r13.z : r19.z;
            r27.xy = r15.zz ? r27.xy : r16.xy;
            r11.x = (int)r11.x + 1;
            r10.w = r14.w;
          }
          r27.y = saturate(r27.y);
          r10.w = r27.y * r8.y;
          r11.x = cmp(0 < r10.w);
          if (r11.x != 0) {
            r28.z = r27.y * r8.y + r25.w;
            r10.w = r10.w * r25.x;
            r27.xzw = r23.xyz * r10.www;
            r31.xyz = r27.zzz * r19.xyw;
            r31.xyz = r21.xyz * r27.xxx + r31.xyz;
            r27.xzw = r22.xyz * r27.www + r31.xyz;
            r31.xyz = r27.xzw * r24.xyz;
            r11.x = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r31.xyz = r27.xzw * r24.xyz + r26.xyz;
            r13.z = r11.x * r6.z;
            r27.xzw = r20.yzw * r10.www;
            r10.w = dot(r27.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r10.w = r6.z * r11.x + r10.w;
            r10.w = r13.z / r10.w;
            r32.x = r26.w;
            r32.yz = r25.yz;
            r28.xyw = r27.zwx * r10.www + r32.yzx;
            r31.w = r28.w;
          } else {
            r31.xyzw = r26.xyzw;
            r28.xyz = r25.yzw;
          }
          r9.x = -1;
          r26.xyzw = r31.xyzw;
          r25.yzw = r28.xyz;
          break;
        }
      }
    }
    if (r9.x != 0) {
      r17.xyzw = r26.xyzw;
      r18.yzw = r25.yzw;
      r6.w = -1;
      break;
    }
    r7.w = (int)r7.w + 32;
    r17.xyzw = r26.xyzw;
    r18.yzw = r25.yzw;
    r6.w = r9.x;
  }
  if (r6.w == 0) {
    r6.w = numRefProbes + -numOverrideProbes;
    r7.x = (int)r6.w & -32;
    r7.y = (int)r6.w + (int)-r7.x;
    r7.z = numRefProbes & -32;
    r7.w = (int)-r7.z + numRefProbes;
    r8.xy = float2(0,0);
    r9.w = 0;
    r10.yz = float2(0,1);
    r13.xy = float2(0,0);
    r15.x = 1;
    r16.xy = float2(0,0);
    r19.xy = float2(0,0);
    r20.xyzw = r17.xyzw;
    r21.yzw = r18.yzw;
    r8.w = r7.x;
    while (true) {
      r10.w = cmp((uint)r8.w >= numRefProbes);
      if (r10.w != 0) break;
      r8.z = (uint)r8.w >> 5;
      r9.xyz = (int3)r8.xyz + (int3)r14.xyz;
      r8.z = visibleProbes.Load(r9.xyzw).x;
      r9.x = cmp((int)r7.x == (int)r8.w);
      bitmask.y = ((~(-1 << r7.y)) << 0) & 0xffffffff;  r9.y = (((uint)0 << 0) & bitmask.y) | ((uint)r8.z & ~bitmask.y);
      r8.z = r9.x ? r9.y : r8.z;
      r9.x = cmp((int)r7.z == (int)r8.w);
      if (r7.w == 0) r9.y = 0; else if (r7.w+0 < 32) {       r9.y = (uint)r8.z << (32-(r7.w + 0)); r9.y = (uint)r9.y >> (32-r7.w);      } else r9.y = (uint)r8.z >> 0;
      r8.z = r9.x ? r9.y : r8.z;
      r9.x = (int)r8.w + numLights;
      r22.xyzw = r20.xyzw;
      r23.xyz = r21.yzw;
      r9.y = r8.z;
      while (true) {
        if (r9.y == 0) break;
        r9.z = firstbitlow((uint)r9.y);
        r10.w = 1 << (int)r9.z;
        r11.x = (int)r9.y & (int)r10.w;
        if (r11.x != 0) {
          r9.y = (int)r9.y ^ (int)r10.w;
          r10.w = (int)r9.z + (int)r9.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r10.w, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r10.w, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v7.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r10.w = r24.y ? r24.x : 0;
          r10.w = r24.z ? r10.w : 0;
          if (r10.w != 0) {
            r9.z = (int)r8.w + (int)r9.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r9.z, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r9.z, l(96), t15.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r9.z, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v7.xyz + -r24.yzw;
            r10.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r11.x = 0; else if (6+25 < 32) {             r11.x = (uint)r25.w << (32-(6 + 25)); r11.x = (uint)r11.x >> (32-6);            } else r11.x = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r13.w = dot(r27.xyz, r26.xyz);
            r13.w = saturate(r13.w + r27.w);
            r14.w = dot(r28.xyz, r26.xyz);
            r14.w = saturate(r14.w + r28.w);
            r13.w = r14.w * r13.w;
            r14.w = dot(r31.xyz, r26.xyz);
            r14.w = saturate(r14.w + r31.w);
            r13.w = r14.w * r13.w;
            r14.w = dot(r32.xyz, r26.xyz);
            r14.w = saturate(r14.w + r32.w);
            r13.w = r14.w * r13.w;
            r14.w = dot(r33.xyz, r26.xyz);
            r14.w = saturate(r14.w + r33.w);
            r13.w = r14.w * r13.w;
            r14.w = dot(r34.xyz, r26.xyz);
            r14.w = saturate(r14.w + r34.w);
            r10.x = r14.w * r13.w;
            r13.w = (int)r15.z & 1;
            r27.xy = r13.ww ? r10.xy : r10.zx;
            r10.x = r15.z;
            r28.xy = r27.xy;
            r13.w = 1;
            while (true) {
              r14.w = cmp((int)r13.w >= (int)r11.x);
              if (r14.w != 0) break;
              r14.w = (int)r10.w + (int)r13.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r14.w = dot(r31.xyz, r26.xyz);
              r14.w = saturate(r14.w + r31.w);
              r14.w = r28.x * r14.w;
              r16.w = dot(r32.xyz, r26.xyz);
              r16.w = saturate(r16.w + r32.w);
              r14.w = r16.w * r14.w;
              r16.w = dot(r33.xyz, r26.xyz);
              r16.w = saturate(r16.w + r33.w);
              r14.w = r16.w * r14.w;
              r16.w = dot(r34.xyz, r26.xyz);
              r16.w = saturate(r16.w + r34.w);
              r14.w = r16.w * r14.w;
              r16.w = dot(r35.xyz, r26.xyz);
              r16.w = saturate(r16.w + r35.w);
              r14.w = r16.w * r14.w;
              r16.w = dot(r36.xyz, r26.xyz);
              r16.w = saturate(r16.w + r36.w);
              r28.x = r16.w * r14.w;
              r19.w = (uint)r10.x >> 2;
              if (1 == 0) r24.w = 0; else if (1+2 < 32) {               r24.w = (uint)r10.x << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);              } else r24.w = (uint)r10.x >> 2;
              r26.w = (int)r19.w & 2;
              r27.z = max(r28.y, r28.x);
              r14.w = -r14.w * r16.w + 1;
              r14.w = r28.y * r14.w;
              r15.y = r26.w ? r14.w : r27.z;
              r28.xy = r24.ww ? r28.xy : r15.xy;
              r13.w = (int)r13.w + 1;
              r10.x = r19.w;
            }
            r28.y = saturate(r28.y);
            r10.x = r28.y * r15.w;
            r10.w = cmp(0 < r10.x);
            if (r10.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r9.z, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r9.z, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r9.z, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r9.z, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r9.z, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r9.z, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r9.z, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r9.z, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r9.z, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r9.z, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r9.z, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r23.z = r28.y * r15.w + r23.z;
              r9.z = r10.x * r25.z;
              r25.z = r35.z;
              r10.x = dot(r12.xyz, r25.xyz);
              r10.w = dot(r26.xyz, r25.xyz);
              r10.w = r10.w + -r35.w;
              r11.x = cmp(r10.w >= 0);
              r10.w = max(abs(r10.w), r6.y);
              r10.w = r11.x ? r10.w : -r10.w;
              r10.x = max(1.00000001e-07, -r10.x);
              r10.x = r10.w / r10.x;
              r10.x = min(131072, abs(r10.x));
              r35.z = r36.z;
              r10.w = dot(r12.xyz, r35.xyz);
              r11.x = dot(r26.xyz, r35.xyz);
              r11.x = r11.x + -r36.w;
              r13.w = cmp(r11.x >= 0);
              r11.x = max(abs(r11.x), r6.y);
              r11.x = r13.w ? r11.x : -r11.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r11.x / r10.w;
              r10.x = min(r10.x, abs(r10.w));
              r36.z = r37.z;
              r10.w = dot(r12.xyz, r36.xyz);
              r11.x = dot(r26.xyz, r36.xyz);
              r11.x = r11.x + -r37.w;
              r13.w = cmp(r11.x >= 0);
              r11.x = max(abs(r11.x), r6.y);
              r11.x = r13.w ? r11.x : -r11.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r11.x / r10.w;
              r10.x = min(r10.x, abs(r10.w));
              r37.z = r38.z;
              r10.w = dot(r12.xyz, r37.xyz);
              r11.x = dot(r26.xyz, r37.xyz);
              r11.x = r11.x + -r38.w;
              r13.w = cmp(r11.x >= 0);
              r11.x = max(abs(r11.x), r6.y);
              r11.x = r13.w ? r11.x : -r11.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r11.x / r10.w;
              r10.x = min(r10.x, abs(r10.w));
              r38.z = r39.x;
              r10.w = dot(r12.xyz, r38.xyz);
              r11.x = dot(r26.xyz, r38.xyz);
              r11.x = r11.x + -r39.y;
              r13.w = cmp(r11.x >= 0);
              r11.x = max(abs(r11.x), r6.y);
              r11.x = r13.w ? r11.x : -r11.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r11.x / r10.w;
              r10.x = min(r10.x, abs(r10.w));
              r40.zw = r39.zw;
              r10.w = dot(r12.zxy, r40.xzw);
              r11.x = dot(r26.zxy, r40.xzw);
              r11.x = r11.x + -r40.y;
              r13.w = cmp(r11.x >= 0);
              r11.x = max(abs(r11.x), r6.y);
              r11.x = r13.w ? r11.x : -r11.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r11.x / r10.w;
              r10.x = min(r10.x, abs(r10.w));
              r25.x = r32.w;
              r25.yz = r33.zw;
              r15.yzw = r25.xyz + r26.xyz;
              r15.yzw = r12.xyz * r10.xxx + r15.yzw;
              r10.w = dot(r15.yzw, r15.yzw);
              r10.w = sqrt(r10.w);
              r10.x = r10.x / r10.w;
              r10.x = r10.x + r10.x;
              r10.x = sqrt(r10.x);
              r10.x = r4.w * 5 + r10.x;
              r10.x = -0.844799995 + r10.x;
              r24.y = r27.z;
              r24.z = r31.x;
              r35.x = dot(r15.yzw, r24.xyz);
              r25.xy = r27.xw;
              r25.z = r31.w;
              r35.y = dot(r15.yzw, r25.xyz);
              r31.x = r27.y;
              r35.z = dot(r15.yzw, r31.xyz);
              if (9 == 0) r10.w = 0; else if (9+16 < 32) {               r10.w = (uint)r25.w << (32-(9 + 16)); r10.w = (uint)r10.w >> (32-9);              } else r10.w = (uint)r25.w >> 16;
              r35.w = (uint)r10.w;
              r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r10.x).xyz;
              r27.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
              r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
              r10.x = (int)r27.y | (int)r27.x;
              r10.x = (int)r27.z | (int)r10.x;
              r15.yzw = r10.xxx ? float3(1,1,0) : r15.yzw;
              r27.x = dot(r26.xyz, r24.xyz);
              r27.y = dot(r26.xyz, r25.xyz);
              r27.z = dot(r26.xyz, r31.xyz);
              r26.xyz = saturate(r27.xyz * r32.xyz + float3(0.5,0.5,0.5));
              r33.z = r34.x;
              r26.xyz = r26.xyz * r33.xyz + r34.yzw;
              r35.x = dot(r1.xyz, r24.xyz);
              r35.y = dot(r1.xyz, r25.xyz);
              r35.z = dot(r1.xyz, r31.xyz);
              r24.xyz = cmp(float3(0,0,0) < r35.xyz);
              r13.z = r24.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r13.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xyz = r35.xyz * r35.xyz;
              r27.xyz = r27.xyz * r9.zzz;
              r16.z = r24.y ? 0 : 0.5;
              r24.xyw = r26.xyz + r16.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r27.yyy;
              r24.xyw = r25.xyz * r27.xxx + r24.xyw;
              r19.z = r24.z ? 0 : 0.5;
              r25.xyz = r26.xyz + r19.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = r25.xyz * r27.zzz + r24.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
              r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
              r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
              r10.x = (int)r26.y | (int)r26.x;
              r10.x = (int)r26.z | (int)r10.x;
              r25.xyz = r10.xxx ? float3(1,1,0) : r25.xyz;
              r26.xyz = r25.xyz * r24.xyz;
              r10.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r22.xyz = r24.xyz * r25.xyz + r22.xyz;
              r10.w = r10.x * r6.z;
              r15.yzw = r15.yzw * r9.zzz;
              r9.z = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r9.z = r6.z * r10.x + r9.z;
              r9.z = r10.w / r9.z;
              r24.x = r22.w;
              r24.yz = r23.xy;
              r23.xyw = r15.zwy * r9.zzz + r24.yzx;
              r22.w = r23.w;
            }
          }
        }
      }
      r20.xyzw = r22.xyzw;
      r21.yzw = r23.xyz;
      r8.w = (int)r8.w + 32;
    }
    r7.z = cmp(r21.w < 1);
    if (r7.z != 0) {
      r8.xy = float2(0,0);
      r9.w = 0;
      r10.yz = float2(0,1);
      r13.xy = float2(0,0);
      r15.x = 1;
      r16.xy = float2(0,0);
      r19.xy = float2(0,0);
      r22.x = r20.w;
      r22.yzw = r21.yzw;
      r23.xyz = r20.xyz;
      r7.z = r21.w;
      r7.w = 0;
      while (true) {
        r8.w = cmp((uint)r7.w >= (uint)r6.w);
        if (r8.w != 0) break;
        r8.z = (uint)r7.w >> 5;
        r9.xyz = (int3)r8.xyz + (int3)r14.xyz;
        r8.z = visibleProbes.Load(r9.xyzw).x;
        r8.w = cmp((int)r7.x == (int)r7.w);
        if (r7.y == 0) r9.x = 0; else if (r7.y+0 < 32) {         r9.x = (uint)r8.z << (32-(r7.y + 0)); r9.x = (uint)r9.x >> (32-r7.y);        } else r9.x = (uint)r8.z >> 0;
        r8.z = r8.w ? r9.x : r8.z;
        r8.w = (int)r7.w + numLights;
        r24.xyzw = r22.xyzw;
        r9.xyz = r23.xyz;
        r10.w = r7.z;
        r11.x = r8.z;
        while (true) {
          if (r11.x == 0) break;
          r13.w = firstbitlow((uint)r11.x);
          r14.w = 1 << (int)r13.w;
          r15.z = (int)r11.x & (int)r14.w;
          if (r15.z != 0) {
            r11.x = (int)r11.x ^ (int)r14.w;
            r14.w = (int)r8.w + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r14.w, l(0), t11.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r14.w, l(16), t11.xyxx
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
            r25.xyz = -v7.xyz + r25.xyz;
            r26.z = r25.w;
            r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
            r14.w = r25.y ? r25.x : 0;
            r14.w = r25.z ? r14.w : 0;
            if (r14.w != 0) {
              r13.w = (int)r7.w + (int)r13.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(0), t15.wxyz
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r13.w, l(96), t15.xxxy
            r15.z = samp0[]..swiz;
            r15.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(116), t15.zwxy
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
              r27.xyz = v7.xyz + -r25.yzw;
              r14.w = (int)r26.w & 0x0000ffff;
              if (6 == 0) r16.w = 0; else if (6+25 < 32) {               r16.w = (uint)r26.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);              } else r16.w = (uint)r26.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r18.w = dot(r28.xyz, r27.xyz);
              r18.w = saturate(r18.w + r28.w);
              r19.w = dot(r31.xyz, r27.xyz);
              r19.w = saturate(r19.w + r31.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r32.xyz, r27.xyz);
              r19.w = saturate(r19.w + r32.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r33.xyz, r27.xyz);
              r19.w = saturate(r19.w + r33.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r34.xyz, r27.xyz);
              r19.w = saturate(r19.w + r34.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r35.xyz, r27.xyz);
              r19.w = saturate(r19.w + r35.w);
              r10.x = r19.w * r18.w;
              r18.w = (int)r15.z & 1;
              r28.xy = r18.ww ? r10.xy : r10.zx;
              r10.x = r15.z;
              r31.xy = r28.xy;
              r18.w = 1;
              while (true) {
                r19.w = cmp((int)r18.w >= (int)r16.w);
                if (r19.w != 0) break;
                r19.w = (int)r14.w + (int)r18.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(0), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(16), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(32), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(48), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(64), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r19.w, l(80), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r19.w = dot(r32.xyz, r27.xyz);
                r19.w = saturate(r19.w + r32.w);
                r19.w = r31.x * r19.w;
                r23.w = dot(r33.xyz, r27.xyz);
                r23.w = saturate(r23.w + r33.w);
                r19.w = r23.w * r19.w;
                r23.w = dot(r34.xyz, r27.xyz);
                r23.w = saturate(r23.w + r34.w);
                r19.w = r23.w * r19.w;
                r23.w = dot(r35.xyz, r27.xyz);
                r23.w = saturate(r23.w + r35.w);
                r19.w = r23.w * r19.w;
                r23.w = dot(r36.xyz, r27.xyz);
                r23.w = saturate(r23.w + r36.w);
                r19.w = r23.w * r19.w;
                r23.w = dot(r37.xyz, r27.xyz);
                r23.w = saturate(r23.w + r37.w);
                r31.x = r23.w * r19.w;
                r25.w = (uint)r10.x >> 2;
                if (1 == 0) r27.w = 0; else if (1+2 < 32) {                 r27.w = (uint)r10.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);                } else r27.w = (uint)r10.x >> 2;
                r28.z = (int)r25.w & 2;
                r28.w = max(r31.y, r31.x);
                r19.w = -r19.w * r23.w + 1;
                r19.w = r31.y * r19.w;
                r15.y = r28.z ? r19.w : r28.w;
                r31.xy = r27.ww ? r31.xy : r15.xy;
                r18.w = (int)r18.w + 1;
                r10.x = r25.w;
              }
              r10.x = saturate(r31.y + -r10.w);
              r14.w = r10.x * r15.w;
              r15.y = cmp(0 < r14.w);
              if (r15.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(16), t15.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(32), t15.yxwz
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(48), t15.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(64), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(80), t15.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(132), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(148), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(164), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(180), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(196), t15.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r13.w, l(212), t15.xyxx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
                r24.w = r10.x * r15.w + r24.w;
                r10.x = r14.w * r26.z;
                r26.z = r36.z;
                r13.w = dot(r12.xyz, r26.xyz);
                r14.w = dot(r27.xyz, r26.xyz);
                r14.w = r14.w + -r36.w;
                r15.y = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r6.y);
                r14.w = r15.y ? r14.w : -r14.w;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.w / r13.w;
                r13.w = min(131072, abs(r13.w));
                r36.z = r37.z;
                r14.w = dot(r12.xyz, r36.xyz);
                r15.y = dot(r27.xyz, r36.xyz);
                r15.y = r15.y + -r37.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r6.y);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r37.z = r38.z;
                r14.w = dot(r12.xyz, r37.xyz);
                r15.y = dot(r27.xyz, r37.xyz);
                r15.y = r15.y + -r38.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r6.y);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r38.z = r39.z;
                r14.w = dot(r12.xyz, r38.xyz);
                r15.y = dot(r27.xyz, r38.xyz);
                r15.y = r15.y + -r39.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r6.y);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r39.z = r40.x;
                r14.w = dot(r12.xyz, r39.xyz);
                r15.y = dot(r27.xyz, r39.xyz);
                r15.y = r15.y + -r40.y;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r6.y);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r41.zw = r40.zw;
                r14.w = dot(r12.zxy, r41.xzw);
                r15.y = dot(r27.zxy, r41.xzw);
                r15.y = r15.y + -r41.y;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r6.y);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r26.x = r33.w;
                r26.yz = r34.zw;
                r15.yzw = r26.xyz + r27.xyz;
                r15.yzw = r12.xyz * r13.www + r15.yzw;
                r14.w = dot(r15.yzw, r15.yzw);
                r14.w = sqrt(r14.w);
                r13.w = r13.w / r14.w;
                r13.w = r13.w + r13.w;
                r13.w = sqrt(r13.w);
                r13.w = r4.w * 5 + r13.w;
                r13.w = -0.844799995 + r13.w;
                r25.y = r28.z;
                r25.z = r32.x;
                r36.x = dot(r15.yzw, r25.xyz);
                r26.xy = r28.xw;
                r26.z = r32.w;
                r36.y = dot(r15.yzw, r26.xyz);
                r32.x = r28.y;
                r36.z = dot(r15.yzw, r32.xyz);
                if (9 == 0) r14.w = 0; else if (9+16 < 32) {                 r14.w = (uint)r26.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);                } else r14.w = (uint)r26.w >> 16;
                r36.w = (uint)r14.w;
                r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r13.w).xyz;
                r28.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r13.w = (int)r28.y | (int)r28.x;
                r13.w = (int)r28.z | (int)r13.w;
                r15.yzw = r13.www ? float3(1,1,0) : r15.yzw;
                r28.x = dot(r27.xyz, r25.xyz);
                r28.y = dot(r27.xyz, r26.xyz);
                r28.z = dot(r27.xyz, r32.xyz);
                r27.xyz = saturate(r28.xyz * r33.xyz + float3(0.5,0.5,0.5));
                r34.z = r35.x;
                r27.xyz = r27.xyz * r34.xyz + r35.yzw;
                r36.x = dot(r1.xyz, r25.xyz);
                r36.y = dot(r1.xyz, r26.xyz);
                r36.z = dot(r1.xyz, r32.xyz);
                r25.xyz = cmp(float3(0,0,0) < r36.xyz);
                r13.z = r25.x ? 0 : 0.5;
                r26.xyz = r27.xyz + r13.xyz;
                r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r28.xyz = r36.xyz * r36.xyz;
                r28.xyz = r28.xyz * r10.xxx;
                r16.z = r25.y ? 0 : 0.5;
                r25.xyw = r27.xyz + r16.xyz;
                r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
                r25.xyw = r25.xyw * r28.yyy;
                r25.xyw = r26.xyz * r28.xxx + r25.xyw;
                r19.z = r25.z ? 0 : 0.5;
                r26.xyz = r27.xyz + r19.xyz;
                r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r25.xyz = r26.xyz * r28.zzz + r25.xyw;
                r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
                r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
                r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
                r13.z = (int)r27.y | (int)r27.x;
                r13.z = (int)r27.z | (int)r13.z;
                r26.xyz = r13.zzz ? float3(1,1,0) : r26.xyz;
                r27.xyz = r26.xyz * r25.xyz;
                r13.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r9.xyz = r25.xyz * r26.xyz + r9.xyz;
                r13.w = r13.z * r6.z;
                r15.yzw = r15.yzw * r10.xxx;
                r10.x = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r10.x = r6.z * r13.z + r10.x;
                r10.x = r13.w / r10.x;
                r24.xyz = r15.yzw * r10.xxx + r24.xyz;
              }
            }
          }
        }
        r22.xyzw = r24.xyzw;
        r23.xyz = r9.xyz;
        r7.w = (int)r7.w + 32;
      }
      r21.xyzw = r22.zxyw;
      r20.xyz = r23.xyz;
      r21.xyzw = r21.yzxw;
    } else {
      r21.x = r20.w;
    }
    r4.w = max(1, r21.w);
    r4.w = rcp(r4.w);
    r21.w = saturate(r21.w);
    r17.xyz = r20.xyz * r4.www;
    r18.xyz = r21.xyz * r4.www;
    r6.y = cmp(r21.w < 0.99000001);
    if (r6.y != 0) {
      r6.y = 1 + -r21.w;
      r6.z = sunConstants.globalProbeExposure * r6.y;
      r7.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
      r8.x = globalProbeConstants.data[0].w * r7.x;
      r8.yz = globalProbeConstants.data[1].xy * r7.yz;
      r7.xyz = saturate(float3(0.5,0.5,0.5) + r8.xyz);
      r8.xy = globalProbeConstants.data[1].zw * r7.xy;
      r8.z = globalProbeConstants.data[2].x * r7.z;
      r7.xyz = globalProbeConstants.data[2].yzw + r8.xyz;
      r8.xyz = cmp(float3(0,0,0) < r1.xyz);
      r8.xyz = r8.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r8.w = 0;
      r9.xyz = r8.wwx + r7.xyz;
      r9.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
      r10.xyz = r1.xyz * r1.xyz;
      r10.xyz = r10.xyz * r6.zzz;
      r13.xyz = r8.wwy + r7.xyz;
      r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r13.xyz = r13.xyz * r10.yyy;
      r9.xyz = r9.xyz * r10.xxx + r13.xyz;
      r7.xyz = r8.wwz + r7.xyz;
      r7.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r7.xyz, 0).xyz;
      r7.xyz = r7.xyz * r10.zzz + r9.xyz;
      r1.w = 0;
      r8.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
      r7.xyz = r8.xyz * r7.xyz;
      r1.z = dot(r7.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r17.xyz = r20.xyz * r4.www + r7.xyz;
      r12.w = 0;
      r6.xzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r6.x).xyz;
      r1.w = sunConstants.globalProbeExposure * r6.y + -r1.z;
      r1.z = r5.y * r1.w + r1.z;
      r18.xyz = r6.xzw * r1.zzz + r18.xyz;
    }
  } else {
    r18.x = r17.w;
  }
  r6.xyz = r17.xyz * r0.www + r11.yzw;
  r1.zw = r5.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.zw, 0).xy;
  r7.xyz = r18.xyz * r0.www;
  r8.xyz = r7.xyz * r1.zzz + r29.xyz;
  r7.xyz = r7.xyz * r1.www + r30.xyz;
  r9.xyz = float3(1,1,1) + -r4.xyz;
  r8.xyz = r9.xyz * r8.xyz;
  r4.xyz = r7.xyz * r4.xyz + r8.xyz;
  r0.xyz = r6.xyz * r0.xyz + r4.xyz;
  r4.xy = (int2)v0.xy;
  r4.zw = float2(0,0);
  r0.w = floatZSampler.Load(r4.xyz).x;
  r1.z = cmp(r0.w >= 0.984375);
  r1.w = 1.01587307 * r0.w;
  r0.w = r0.w * 64 + -63;
  r0.w = r1.z ? r0.w : r1.w;
  r0.w = max(9.99999994e-09, r0.w);
  r0.w = rcp(r0.w);
  r1.z = cmp(zFeather == 0.000000);
  r1.w = 1 / zFeather;
  r1.z = r1.z ? 60000 : r1.w;
  r0.w = r0.w + -r5.w;
  r0.w = saturate(r0.w * r1.z);
  r1.z = cmp(r0.w < 1);
  if (r1.z != 0) {
    r1.z = edgeColorMap.Sample(colorSampler_s, v2.xy).w;
    r4.xyzw = edgeEmissiveMap.Sample(colorSampler_s, v2.xy).xyzw;
    r4.xyz = r4.xyz * r4.www;
    r1.w = r3.w + -r1.z;
    r1.z = r0.w * r1.w + r1.z;
    r6.xyzw = -r4.xyzw + r2.xyzw;
    r2.xyzw = r0.wwww * r6.xyzw + r4.xyzw;
    r0.w = 0.200000003 + r0.w;
    r0.w = min(1, r0.w);
    r3.w = r1.z * r0.w;
  }
  r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = max(9.99999975e-05, r0.w);
  r0.w = max(relHDRExposure.x, r0.w);
  r0.w = hdrScale * r0.w;
  r0.xyz = r2.xyz * r0.www + r0.xyz;
  r0.w = saturate(r0.w / relHDRExposure.x);
  r0.w = r0.w * r2.w;
  r1.z = alphaMask.Sample(colorSampler_s, w2.xy).x;
  r1.xy = r1.xy * distortionAmount + v0.xy;
  r1.xy = renderTargetSize.zw * r1.xy;
  r1.xyw = resolvedPostSun.Sample(colorSampler_s, r1.xy).xyz;
  r2.xyz = relHDRExposure.xxx * r1.xyw;
  r0.w = saturate(r0.w * r5.z + r3.w);
  r0.w = shieldOpacity * r0.w;
  r0.w = r0.w * r1.z;
  r0.xyz = -r1.xyw * relHDRExposure.xxx + r0.xyz;
  r0.xyz = r0.www * r0.xyz + r2.xyz;
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
      r4.xy = float2(-1.44269502,-1.44269502) * r2.zw;
      r4.xy = exp2(r4.xy);
      r4.xy = float2(1,1) + -r4.xy;
      r2.zw = r4.xy / r2.zw;
      r2.zw = r2.xy * r2.zw;
      r2.xy = r1.ww ? r2.zw : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r4.xyz + r2.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r4.y = -1.44269502 * r4.x;
      r4.y = exp2(r4.y);
      r4.y = 1 + -r4.y;
      r4.x = r4.y / r4.x;
      r4.x = r4.x * r1.w;
      r1.w = r2.w ? r4.x : r1.w;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r2.xyz = exp2(r4.xyz);
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
    r4.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyz = r4.xyz * r1.xyz;
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
  r3.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.xyzw = r3.xyzw;
  return;
}