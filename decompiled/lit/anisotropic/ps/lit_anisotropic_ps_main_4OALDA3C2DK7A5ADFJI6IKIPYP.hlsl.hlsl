// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:01 2021

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
  float anisotropy : packoffset(c12.z);
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
Texture2D<float4> specColorMap : register(t21);
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> glossMap : register(t24);
Texture2D<float4> aoMap : register(t25);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = v1.x * r0.w;
  r1.y = specColorMap.Sample(specColorSampler_s, w1.xy).x;
  r2.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r2.xyz = r1.yyy * r2.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.y = saturate(1 + -r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = aoMap.Sample(aoSampler_s, w1.xy).x;
  r1.z = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.w = glossRange.y + -glossRange.x;
  r2.w = r1.z * r1.w;
  r1.z = r1.z * r1.w + glossRange.x;
  r1.z = saturate(0.0588235296 * r1.z);
  r2.w = r2.w * 0.5 + glossRange.x;
  r2.w = saturate(0.0588235296 * r2.w);
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = dot(r3.xy, r3.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r3.w = sqrt(r3.w);
  r3.z = r3.z * r3.z;
  r3.z = 0.333333343 * r3.z;
  r3.z = min(1, r3.z);
  r4.x = v6.x ? 1 : -1;
  r4.y = dot(v2.xyz, v2.xyz);
  r4.y = rsqrt(r4.y);
  r4.yzw = v2.xyz * r4.yyy;
  r4.yzw = r4.yzw * r4.xxx;
  r5.x = dot(v3.xyz, v3.xyz);
  r5.x = rsqrt(r5.x);
  r5.xyz = v3.xyz * r5.xxx;
  r5.xyz = r5.xyz * r4.xxx;
  r5.w = dot(v4.xyz, v4.xyz);
  r5.w = rsqrt(r5.w);
  r6.xyz = v4.xyz * r5.www;
  r6.xyz = r6.xyz * r4.xxx;
  r1.z = -17 * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r3.z + r1.z;
  r1.z = log2(r1.z);
  r1.z = -0.0588235296 * r1.z;
  r2.w = -17 * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.z + r2.w;
  r2.w = log2(r2.w);
  r2.w = -0.0588235296 * r2.w;
  r2.w = max(0, r2.w);
  r7.xyz = r6.xyz * r3.yyy;
  r7.xyz = r5.xyz * r3.xxx + r7.xyz;
  r3.xyw = r4.yzw * r3.www + r7.xyz;
  r4.x = dot(r3.xyw, r3.xyw);
  r4.x = rsqrt(r4.x);
  r3.xyw = r4.xxx * r3.xyw;
  r1.w = debugGlossOverride.x * r1.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r3.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.zw = max(float2(0,0), r1.zw);
  r3.z = cmp(0 < debugStreamerControl.w);
  if (r3.z != 0) {
    r3.z = (int)debugStreamerControl.w;
    r4.x = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r5.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r4.x = cmp(r4.x < r5.w);
    r5.w = cmp(0 < r5.w);
    r7.xyz = (int3)r3.zzz & int3(1,2,4);
    r8.xyz = r7.xxx ? float3(1,0,1) : r0.xyz;
    r7.xyw = r7.yyy ? float3(0,1,1) : r0.xyz;
    r7.xyw = r5.www ? r8.xyz : r7.xyw;
    r8.xyz = r7.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r4.xxx ? r7.xyw : r8.xyz;
  }
  r7.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r7.xyz + r0.xyz;
  r0.w = -r0.w * v1.x + debugAlphaOverride.x;
  o0.w = debugAlphaOverride.w * r0.w + r1.x;
  r7.xyz = debugSpecularOverride.xyz + -r2.xyz;
  r2.xyz = debugSpecularOverride.www * r7.xyz + r2.xyz;
  r7.y = debugGlossOverride.w * r1.w;
  r0.w = debugOcclusionOverride.x + -r1.y;
  r0.w = debugOcclusionOverride.w * r0.w + r1.y;
  r4.xyz = v6.xxx ? r4.yzw : -r4.yzw;
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = rsqrt(r1.x);
  r4.xyz = r4.xyz * r1.xxx + -r3.xyw;
  r3.xyz = debugNormalOverride.www * r4.xyz + r3.xyw;
  r1.xy = (uint2)v0.xy;
  r4.x = cmp(v0.z >= 0.984375);
  r4.y = 1.01587307 * v0.z;
  r4.z = v0.z * 64 + -63;
  r4.x = r4.x ? r4.z : r4.y;
  r4.x = max(9.99999994e-09, r4.x);
  r4.x = rcp(r4.x);
  r4.y = dot(-v5.xyz, -v5.xyz);
  r4.y = rsqrt(r4.y);
  r8.xyz = -v5.xyz * r4.yyy;
  r4.zw = (uint2)r1.yx;
  r5.w = dot(r4.wz, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r9.x, r10.x);
  r4.z = dot(r4.zw, float2(0.0671105608,0.00583714992));
  r4.z = frac(r4.z);
  r4.z = 52.9829178 * r4.z;
  r4.z = frac(r4.z);
  r4.z = r4.z * 6.28318548 + gameTick.w;
  sincos(r4.z, r11.x, r12.x);
  r7.x = saturate(dot(r3.xyz, r8.xyz));
  r4.z = dot(-r8.xyz, r3.xyz);
  r4.z = r4.z + r4.z;
  r13.xyz = r3.xyz * -r4.zzz + -r8.xyz;
  r4.z = 17 * r7.y;
  r14.x = exp2(r4.z);
  r4.z = 2 + r14.x;
  r4.z = 2 / r4.z;
  r4.w = sqrt(r4.z);
  r5.w = sqrt(r4.w);
  r5.w = r5.w * 0.5 + 0.5;
  r5.w = r5.w * r5.w;
  r6.w = 0.5 * r5.w;
  r5.w = -r5.w * 0.5 + 1;
  r7.z = r7.x * r5.w + r6.w;
  r5.w = r7.z * r5.w;
  r6.w = r7.z * r6.w;
  r7.z = min(1, abs(anisotropy));
  r2.w = r2.w + -r1.z;
  r1.z = r7.z * r2.w + r1.z;
  r2.w = cmp(anisotropy < 0);
  r1.z = 17 * r1.z;
  r14.y = exp2(r1.z);
  r7.zw = r2.ww ? r14.xy : r14.yx;
  r7.zw = float2(2,2) + r7.zw;
  r7.zw = float2(2,2) / r7.zw;
  r1.z = dot(r3.xyz, sunConstants.wldDir.xyz);
  r2.w = saturate(r1.z);
  r8.w = cmp(0 >= r2.w);
  if (r8.w != 0) {
    r9.z = 0;
  }
  if (r8.w == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
    r10.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r8.w = -sunConstants.splitDepthOffset + r10.w;
    r8.w = -r8.w * 6.10351563e-05 + 1;
    r9.w = saturate(r8.w);
    r9.w = cmp(r8.w == r9.w);
    if (r9.w != 0) {
      r9.w = 0;
      r11.y = 0;
      while (true) {
        r11.z = cmp(r9.w >= 3);
        if (r11.z != 0) break;
        r11.z = (uint)r9.w;
        r12.yz = -sunConstants.splitPinTransform[r11.z].xy + r10.yz;
        r11.w = max(abs(r12.y), abs(r12.z));
        r11.y = sunConstants.splitPinTransform[r11.z].z * r11.w;
        r11.z = cmp(r11.y < 1);
        if (r11.z != 0) {
          break;
        }
        r9.w = 1 + r9.w;
        r11.y = 0;
      }
    } else {
      r9.w = 3;
      r11.y = 0;
    }
    r11.z = cmp(r9.w >= 3);
    if (r11.z != 0) {
      r12.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r14.xz = rcp(r12.yy);
      r14.y = -r14.z;
      r12.yzw = r10.yzy * r14.xyz + r12.zwz;
      r14.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r12.yzw = max(float3(0,0,0), r12.yzw);
      r12.yzw = min(r12.yzw, r14.xyz);
      r14.xy = sunConstants.sstLightingConstants.coordScale * r12.wz;
      r14.xy = floor(r14.xy);
      r11.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.y;
      r11.w = r11.w * sunConstants.sstLightingConstants.coordScale + r14.x;
      r11.w = (uint)r11.w;
      r11.w = (int)r11.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.x, r11.w, l(0), t23.xxxx
    r14.x = samp0[]..swiz;
      r14.y = (int)r14.x & 0x40000000;
      r14.z = (uint)r14.x << 2;
      if (r14.y == 0) {
        r14.y = (int)r14.x & 0x01ffffff;
        r15.x = (int)r11.w + (int)r14.y;
        r11.w = (uint)r14.x >> 25;
        r11.w = (uint)r11.w;
        r12.yzw = r12.yzw * r11.www;
        r12.yzw = frac(r12.yzw);
        r12.yzw = float3(128,128,128) * r12.yzw;
        r12.yzw = (uint3)r12.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.xy = (uint2)r12.wz >> int2(6,6);
        r11.w = (int)r15.z & 0xc0000000;
        r14.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r14.y = r14.y ? r15.z : r14.w;
        r14.w = (uint)r14.y >> 13;
        r14.x = r14.x ? r14.w : r14.y;
        r14.x = (int)r14.x & 8191;
        r16.x = (int)r14.x + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r14.xyw = r11.www ? r15.xyz : r16.xyz;
        r16.yz = r11.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r17.xy = (uint2)r12.wz >> (uint2)r16.yy;
        r17.xy = (int2)r17.xy & int2(1,1);
        r15.w = (int)r14.w & 0xc0000000;
        r16.y = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
      r16.y = samp0[]..swiz;
        r16.y = r17.y ? r14.w : r16.y;
        r17.y = (uint)r16.y >> 13;
        r16.y = r17.x ? r17.y : r16.y;
        r16.y = (int)r16.y & 8191;
        r16.x = (int)r14.x + (int)r16.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r14.xyw = r15.www ? r14.xyw : r16.xzw;
        r14.xyw = r11.www ? r15.xyz : r14.xyw;
        r11.w = (int)r14.w & 0xc0000000;
        if (r11.w == 0) {
          r11.w = (int)-r14.y + 6;
          r15.xy = (uint2)r12.wz >> (uint2)r11.ww;
          r11.w = (int)r14.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.x = (((uint)r15.x << 0) & bitmask.x) | ((uint)r15.y & ~bitmask.x);
          r15.x = (int)r15.x * 10;
          r11.w = (uint)r11.w >> (uint)r15.x;
          r11.w = (int)r11.w & 1023;
          r15.x = (int)r11.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r15.yz = (int2)r14.yy + int2(1,2);
          r11.w = (int)-r15.y + 6;
          r16.xy = (uint2)r12.wz >> (uint2)r11.ww;
          r11.w = (int)r15.w & 0xc0000000;
          r14.y = (int)r15.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.x = (((uint)r16.x << 0) & bitmask.x) | ((uint)r16.y & ~bitmask.x);
          r16.x = (int)r16.x * 10;
          r14.y = (uint)r14.y >> (uint)r16.x;
          r14.y = (int)r14.y & 1023;
          r16.x = (int)r14.y + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.y = r15.z;
          r16.xyz = r11.www ? r15.xyw : r16.xyz;
          r14.y = (int)-r16.y + 6;
          r15.yz = (uint2)r12.wz >> (uint2)r14.yy;
          r14.y = (int)r16.z & 0xc0000000;
          r16.y = (int)r16.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.z = (((uint)r15.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.y = (((uint)r15.y << 0) & bitmask.y) | ((uint)r15.z & ~bitmask.y);
          r15.y = (int)r15.y * 10;
          r15.y = (uint)r16.y >> (uint)r15.y;
          r15.y = (int)r15.y & 1023;
          r17.x = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.x, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r15.yz = r14.yy ? r16.xz : r17.xy;
          r14.xw = r11.ww ? r15.xw : r15.yz;
        }
        r11.w = (int)r14.w & 0xc0000000;
        if (r11.w == 0) {
          if (14 == 0) r14.y = 0; else if (14+15 < 32) {           r14.y = (uint)r14.w << (32-(14 + 15)); r14.y = (uint)r14.y >> (32-14);          } else r14.y = (uint)r14.w >> 15;
          r14.y = (uint)r14.y;
          r14.y = sunConstants.sstLightingConstants.constants.spanInInches * r14.y;
          r14.y = 6.10388815e-05 * r14.y;
          r15.xy = (int2)r14.ww & int2(32767,536870912);
          r15.x = (uint)r15.x;
          r15.x = sunConstants.sstLightingConstants.constants.spanInInches * r15.x;
          r15.x = 3.05185094e-05 * r15.x;
          r15.z = (int)r12.z & 3;
          r15.z = (int)r14.x + (int)r15.z;
          r15.z = (int)r15.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r12.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r12.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r12.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r12.y = (uint)r15.z >> (uint)r16.x;
          r12.y = (int)r12.y & 255;
          r12.y = (uint)r12.y;
          r12.y = r12.y * r15.x;
          r12.y = r12.y * 0.00392156886 + r14.y;
          r12.z = (int)r16.y + 1;
          if (1 == 0) r12.w = 0; else if (1+1 < 32) {           r12.w = (uint)r12.w << (32-(1 + 1)); r12.w = (uint)r12.w >> (32-1);          } else r12.w = (uint)r12.w >> 1;
          r12.z = (int)r12.w + (int)r12.z;
          r12.z = (int)r12.z + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          r12.z = (uint)r12.z >> (uint)r16.z;
          r12.z = (int)r12.z & 0x0000ffff;
          r12.z = (uint)r12.z;
          r12.z = r12.z * r15.x;
          r12.z = r12.z * 1.52590219e-05 + r14.y;
          r14.z = r15.y ? r12.y : r12.z;
        } else {
          r12.y = (int)r14.w & 0x80000000;
          r12.z = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          r12.y = r12.y ? r12.z : 0;
          r12.z = (uint)r14.w << 2;
          r12.w = (uint)r12.y >> 16;
          r12.y = (int)r12.y & 0x0000ffff;
          r12.yw = f16tof32(r12.yw);
          r12.z = r10.y * r12.w + r12.z;
          r12.y = r10.z * r12.y + r12.z;
          r14.z = r11.w ? r12.y : r14.z;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r14.z < r10.w);
      r9.z = r10.w ? 0 : 1;
    }
    if (r11.z == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r9.w;
        r11.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r11.zw = sunConstants.splitPinTransform[r10.w].zz * r11.zw;
        r14.xy = r11.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r14.z = r10.w + r9.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r8.w).x;
        r11.z = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
        r10.w = r11.z + r10.w;
        r10.w = saturate(-1 + r10.w);
        r11.z = r10.w * r10.w;
        r9.z = r11.z * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r14.x = -r9.x;
        r10.w = (uint)r9.w;
        r9.w = 1 + r9.w;
        r9.w = min(2, r9.w);
        r9.w = (uint)r9.w;
        r11.y = 1 + -r11.y;
        r11.y = 28 * r11.y;
        r11.y = (uint)r11.y;
        r11.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
        r11.zw = sunConstants.splitPinTransform[r10.w].zz * r11.zw;
        r11.zw = r11.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r9.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r9.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.y = r10.x;
        r14.z = r9.x;
        r12.yz = float2(0,0);
        while (true) {
          r12.w = cmp((uint)r12.z >= 8);
          if (r12.w != 0) break;
          r12.w = cmp((uint)r11.y < (uint)r12.z);
          r15.xy = r12.ww ? r10.yz : r11.zw;
          r14.w = r12.w ? sunConstants.splitPinTransform[r9.w].w : sunConstants.splitPinTransform[r10.w].w;
          r12.w = r12.w ? r9.w : r10.w;
          r16.x = dot(icb[r12.z+0].yx, r14.xy);
          r16.y = dot(icb[r12.z+0].yx, r14.yz);
          r15.xy = r16.xy * r14.ww + r15.xy;
          r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
          r15.z = (uint)r12.w;
          r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.w).x;
          r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
          r12.w = r14.w + r12.w;
          r12.w = saturate(-1 + r12.w);
          r12.y = r12.w * 0.125 + r12.y;
          r12.z = (int)r12.z + 1;
        }
        r8.w = r12.y * r12.y;
        r9.z = r8.w * r12.y;
      }
    }
  }
  r8.w = cmp(0 < r2.w);
  if (r8.w != 0) {
    r8.w = cmp(0 < r9.z);
    if (r8.w != 0) {
      r8.w = sunConstants.specScale * r4.z;
      r8.w = r8.w * r2.w;
      if (sunConstants.sunCookieIndex != 0) {
        r14.xyz = eyeOffset.xyz + v5.xyz;
        r14.w = 1;
        r9.w = dot(sunConstants.sunCookieTransform[0].xyzw, r14.xyzw);
        r10.y = dot(sunConstants.sunCookieTransform[1].xyzw, r14.xyzw);
        r14.x = frac(r9.w);
        r14.y = frac(r10.y);
        r9.w = -1 + (int14)sunConstants.sunCookieIndex;
        r14.z = (uint)r9.w;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r10.yzw = r10.yzw * r9.zzz;
      r9.z = -r7.x * 0.5 + 1;
      r9.z = -r2.w * r9.z + 1;
      r9.z = r9.z * r9.z;
      r9.z = -r9.z * 0.620000005 + 0.620000005;
      r9.z = r9.z + -r2.w;
      r9.z = r4.w * r9.z + r2.w;
      r14.xyz = r9.zzz * r10.yzw;
      r1.z = cmp(0 < r1.z);
      r11.yzw = -v5.xyz * r4.yyy + sunConstants.wldDir.xyz;
      r4.y = dot(r11.yzw, r11.yzw);
      r4.y = rsqrt(r4.y);
      r11.yzw = r11.yzw * r4.yyy;
      r4.y = dot(r3.xyz, r11.yzw);
      r9.z = dot(r11.yzw, r8.xyz);
      r9.w = r7.z * r7.w;
      r9.w = sqrt(r9.w);
      r12.y = dot(r11.yzw, r5.xyz);
      r11.y = dot(r11.yzw, r6.xyz);
      r11.z = r12.y * r12.y;
      r11.y = r11.y * r11.y;
      r11.yz = r11.yz / r7.wz;
      r11.y = r11.z + r11.y;
      r4.y = abs(r4.y) * abs(r4.y) + r11.y;
      r2.w = r2.w * r5.w + r6.w;
      r4.y = r4.y * r4.y;
      r4.y = r4.y * r9.w;
      r2.w = r4.y * r2.w;
      r2.w = rcp(r2.w);
      r2.w = r2.w * r8.w;
      r2.w = 0.25 * r2.w;
      r10.yzw = r2.www * r10.yzw;
      r2.w = saturate(1 + -r9.z);
      r4.y = r2.w * r2.w;
      r4.y = r4.y * r4.y;
      r2.w = r4.y * r2.w;
      r15.xyz = r10.zwy * r2.www;
      r14.w = r15.z;
      r14.xyzw = r1.zzzz ? r14.xyzw : 0;
      r15.zw = r10.yz;
      r15.xyzw = r1.zzzz ? r15.xyzw : 0;
      r1.z = r1.z ? r10.w : 0;
    } else {
      r14.xyzw = float4(0,0,0,0);
      r15.xyzw = float4(0,0,0,0);
      r1.z = 0;
    }
  } else {
    r14.xyzw = float4(0,0,0,0);
    r15.xyzw = float4(0,0,0,0);
    r1.z = 0;
  }
  r2.w = 0.0078125 * r4.x;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r16.xy = (uint2)r1.xy >> int2(6,6);
  r16.z = (uint)r2.w << 4;
  r17.x = -r9.x;
  r1.x = -r7.x * 0.5 + 1;
  r1.y = r7.z * r7.w;
  r1.y = sqrt(r1.y);
  r18.xy = float2(0,0);
  r19.w = 0;
  r20.xyz = v5.xyz;
  r20.w = 1;
  r17.z = r9.x;
  r21.z = 1;
  r22.w = 1;
  r17.yw = r10.xx;
  r9.y = r17.w;
  r10.xyz = r14.xyz;
  r23.x = r14.w;
  r23.yz = r15.xy;
  r24.xy = r15.zw;
  r24.z = r1.z;
  r2.w = enableDitheredShadow;
  r4.x = 0;
  while (true) {
    r4.y = cmp((uint)r4.x >= numLights);
    if (r4.y != 0) break;
    r18.z = (uint)r4.x >> 5;
    r19.xyz = (int3)r16.xyz + (int3)r18.xyz;
    r4.y = visibleLights.Load(r19.xyzw).x;
    r11.yzw = r10.xyz;
    r12.yzw = r23.xyz;
    r19.xyz = r24.xyz;
    r8.w = r2.w;
    r9.z = r4.y;
    while (true) {
      if (r9.z == 0) break;
      r9.w = firstbitlow((uint)r9.z);
      r10.w = 1 << (int)r9.w;
      r16.w = (int)r9.z & (int)r10.w;
      if (r16.w != 0) {
        r9.z = (int)r9.z ^ (int)r10.w;
        r9.w = (int)r4.x + (int)r9.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r9.w, l(0), t11.xyzw
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
      r25.z = samp0[]..swiz;
      r25.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r9.w, l(16), t11.xyxx
      r26.x = samp0[]..swiz;
      r26.y = samp0[]..swiz;
        r25.xyz = -v5.xyz + r25.xyz;
        r26.z = r25.w;
        r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
        r10.w = r25.y ? r25.x : 0;
        r10.w = r25.z ? r10.w : 0;
        if (r10.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xyzw, r9.w, l(0), t12.wxyz
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xyzw, r9.w, l(16), t12.zxyw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xyzw, r9.w, l(32), t12.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(48), t12.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(64), t12.yzwx
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(80), t12.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(96), t12.yzwx
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
          if (3 == 0) r10.w = 0; else if (3+24 < 32) {           r10.w = (uint)r26.w << (32-(3 + 24)); r10.w = (uint)r10.w >> (32-3);          } else r10.w = (uint)r26.w >> 24;
          switch (r10.w) {
            case 4 :            r10.w = cmp(0 < r31.x);
            r32.xy = r30.zw;
            r32.z = r31.w;
            r33.xyz = -r32.xyz * float3(0.5,0.5,0.5) + r25.yzw;
            r34.xyz = -v5.xyz + r33.xyz;
            r16.w = dot(r32.xyz, r34.xyz);
            r18.z = saturate(-r16.w / r31.x);
            r35.xyz = r18.zzz * r32.xyz + r33.xyz;
            r35.xyz = r10.www ? r35.xyz : r25.yzw;
            r35.xyz = -v5.xyz + r35.xyz;
            r18.w = dot(r35.xyz, r35.xyz);
            r21.w = rsqrt(r18.w);
            r35.xyz = r35.xyz * r21.www;
            r21.w = dot(r3.xyz, r35.xyz);
            r23.w = saturate(r21.w);
            r24.w = cmp(0 < r23.w);
            if (r24.w != 0) {
              r24.w = sqrt(r18.w);
              r32.w = r28.x * r28.x;
              r18.w = r32.w / r18.w;
              r18.w = min(1, r18.w);
              r35.xy = saturate(r24.ww * r27.xz + r27.yw);
              r35.zw = r35.xy * r35.xy;
              r35.xy = r35.xy * float2(-2,-2) + float2(3,3);
              r35.xy = r35.zw * r35.xy;
              r18.w = r35.x * r18.w;
              r18.w = r18.w * r35.y;
              r24.w = cmp(0 < r18.w);
              if (r24.w != 0) {
                if (3 == 0) r24.w = 0; else if (3+27 < 32) {                 r24.w = (uint)r26.w << (32-(3 + 27)); r24.w = (uint)r24.w >> (32-3);                } else r24.w = (uint)r26.w >> 27;
                r24.w = cmp((int)r24.w != 1);
                if (r24.w != 0) {
                  r24.w = abs(r21.w) * -0.200000003 + 0.400000006;
                  r35.xyz = r3.xyz * r24.www + v5.xyz;
                  r35.xyz = r35.xyz + -r29.xyz;
                  r24.w = max(abs(r35.y), abs(r35.z));
                  r24.w = max(abs(r35.x), r24.w);
                  r24.w = r30.x / r24.w;
                  r24.w = r24.w + r30.y;
                  r32.w = dot(r35.xyz, r35.xyz);
                  r32.w = rsqrt(r32.w);
                  r24.w = max(6.10351563e-05, r24.w);
                  r33.w = (int)r26.w & 0x0000ffff;
                  r36.w = (uint)r33.w;
                  r33.w = 0;
                  r34.w = 0;
                  while (true) {
                    r35.w = cmp((int)r34.w >= 8);
                    if (r35.w != 0) break;
                    r37.y = dot(icb[r34.w+0].yx, r17.xy);
                    r37.z = dot(icb[r34.w+0].yx, r17.yz);
                    r37.yz = r37.yz * r28.yy;
                    r37.x = r37.y * r12.x;
                    r37.w = r37.y * r11.x;
                    r36.xyz = r35.xyz * r32.www + r37.xzw;
                    r35.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyzw, r24.w).x;
                    r33.w = r35.w * 0.125 + r33.w;
                    r34.w = (int)r34.w + 1;
                  }
                } else {
                  r33.w = 1;
                }
                r18.w = r33.w * r18.w;
                r24.w = cmp(0 < r18.w);
                if (r24.w != 0) {
                  r24.w = r26.x * r4.z;
                  r24.w = 0.25 * r24.w;
                  r32.w = dot(r32.xyz, r13.xyz);
                  r34.x = dot(r13.xyz, r34.xyz);
                  r34.y = -r32.w * r32.w + r31.x;
                  r16.w = r32.w * r34.x + -r16.w;
                  r16.w = saturate(r16.w / r34.y);
                  r32.w = r34.y / r31.x;
                  r32.w = 10 * r32.w;
                  r32.w = min(1, r32.w);
                  r16.w = r16.w + -r18.z;
                  r16.w = r32.w * r16.w + r18.z;
                  r32.xyz = r16.www * r32.xyz + r33.xyz;
                  r32.xyz = r10.www ? r32.xyz : r25.yzw;
                  r32.xyz = -v5.xyz + r32.xyz;
                  r10.w = dot(r32.xyz, r32.xyz);
                  r10.w = rsqrt(r10.w);
                  r33.xyz = r32.xyz * r10.www;
                  r26.x = r25.x;
                  r34.xyz = r26.xyz * r18.www;
                  r16.w = -r23.w * r1.x + 1;
                  r16.w = r16.w * r16.w;
                  r16.w = -r16.w * 0.620000005 + 0.620000005;
                  r16.w = r16.w + -r23.w;
                  r16.w = r4.w * r16.w + r23.w;
                  r18.z = cmp(0 < r21.w);
                  r35.xyz = r16.www * r34.xyz + r11.yzw;
                  r16.w = saturate(dot(r3.xyz, r33.xyz));
                  r32.xyz = r32.xyz * r10.www + r8.xyz;
                  r10.w = dot(r32.xyz, r32.xyz);
                  r10.w = rsqrt(r10.w);
                  r32.xyz = r32.xyz * r10.www;
                  r10.w = dot(r3.xyz, r32.xyz);
                  r18.w = dot(r32.xyz, r8.xyz);
                  r21.w = dot(r32.xyz, r5.xyz);
                  r23.w = dot(r32.xyz, r6.xyz);
                  r21.w = r21.w * r21.w;
                  r21.w = r21.w / r7.z;
                  r23.w = r23.w * r23.w;
                  r23.w = r23.w / r7.w;
                  r21.w = r23.w + r21.w;
                  r10.w = abs(r10.w) * abs(r10.w) + r21.w;
                  r21.w = r16.w * r5.w + r6.w;
                  r10.w = r10.w * r10.w;
                  r10.w = r10.w * r1.y;
                  r10.w = r10.w * r21.w;
                  r10.w = rcp(r10.w);
                  r16.w = r16.w * r24.w;
                  r10.w = r16.w * r10.w;
                  r32.xyz = r10.www * r34.xyz;
                  r33.xyz = r10.www * r34.xyz + r19.xyz;
                  r10.w = saturate(1 + -r18.w);
                  r16.w = r10.w * r10.w;
                  r16.w = r16.w * r16.w;
                  r10.w = r16.w * r10.w;
                  r32.xyz = r32.xyz * r10.www + r12.yzw;
                  r11.yzw = r18.zzz ? r35.xyz : r11.yzw;
                  r12.yzw = r18.zzz ? r32.xyz : r12.yzw;
                  r19.xyz = r18.zzz ? r33.xyz : r19.xyz;
                }
              }
            }
            break;
            case 2 :            r32.xy = r28.zw;
            r32.z = r29.w;
            r32.xyz = -v5.xyz + r32.xyz;
            r10.w = dot(r32.xyz, r32.xyz);
            r10.w = rsqrt(r10.w);
            r33.xyz = r32.xyz * r10.www;
            r16.w = dot(r3.xyz, r33.xyz);
            r18.z = saturate(r16.w);
            r18.w = cmp(0 < r18.z);
            if (r18.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(112), t12.yzwx
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(128), t12.zxyw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r36.xyz = r34.xyz;
              r36.w = r35.y;
              r18.w = dot(r36.xyzw, r20.xyzw);
              r21.w = cmp(r18.w < 1);
              if (r21.w != 0) {
                r33.xyz = float3(1,1,1);
                r21.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(172), t12.yzwx
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(188), t12.wxyz
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(204), t12.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.w, r9.w, l(236), t12.xxxx
              r23.w = samp0[]..swiz;
                r40.xyz = -v5.xyz + r25.yzw;
                r24.w = r28.x * r28.x;
                r25.w = dot(r40.xyz, r40.xyz);
                r24.w = r24.w / r25.w;
                r24.w = min(1, r24.w);
                r27.xy = saturate(r18.ww * r27.xz + r27.yw);
                r27.zw = r27.xy * r27.xy;
                r27.xy = r27.xy * float2(-2,-2) + float2(3,3);
                r27.xy = r27.zw * r27.xy;
                r24.w = r27.x * r24.w;
                r24.w = r24.w * r27.y;
                r29.w = r30.x;
                r27.x = dot(r29.xyzw, r20.xyzw);
                r40.xyz = r30.yzw;
                r40.w = r31.w;
                r27.y = dot(r40.xyzw, r20.xyzw);
                r21.xy = r27.xy / r18.ww;
                r18.w = cmp(r37.w < 0.00048828125);
                if (r18.w != 0) {
                  r38.y = r39.x;
                  r27.xy = saturate(abs(r21.xy) * r38.zw + r38.xy);
                  r27.zw = r27.xy * r27.xy;
                  r27.xy = r27.xy * float2(-2,-2) + float2(3,3);
                  r27.xy = r27.zw * r27.xy;
                  r18.w = r27.x * r27.y;
                } else {
                  r37.w = r38.y;
                  r27.xyzw = saturate(r37.xyzw * abs(r21.yyxx));
                  r27.xyzw = log2(r27.xyzw);
                  r27.xyzw = r38.xxxx * r27.xyzw;
                  r27.xyzw = exp2(r27.xyzw);
                  r27.xy = r27.xy + r27.zw;
                  r27.xy = log2(r27.xy);
                  r27.xy = r39.xx * r27.xy;
                  r27.xy = exp2(r27.xy);
                  r25.w = r38.z * r27.x;
                  r27.x = r38.w * r27.y + -1;
                  r25.w = r38.w * r27.y + -r25.w;
                  r25.w = saturate(r27.x / r25.w);
                  r27.x = r25.w * r25.w;
                  r25.w = r25.w * -2 + 3;
                  r18.w = r27.x * r25.w;
                }
                r21.w = r24.w * r18.w;
                r18.w = (int)r23.w & 255;
                if (r18.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xyz, r9.w, l(220), t12.xyzx
                r27.x = samp0[]..swiz;
                r27.y = samp0[]..swiz;
                r27.z = samp0[]..swiz;
                  r23.w = dot(r39.yzw, r21.xyz);
                  r21.x = dot(r27.xyz, r21.xyz);
                  r27.x = frac(r23.w);
                  r27.y = frac(r21.x);
                  r18.w = (int)r18.w + -1;
                  r27.z = (uint)r18.w;
                  r33.xyz = gCookieArray.SampleLevel(samplerLinear_s, r27.xyz, 0).xyz;
                } else {
                  r33.xyz = float3(1,1,1);
                }
              }
              r25.yz = r26.yz;
              r25.xyz = r25.xyz * r33.xyz;
              r18.w = cmp(0 < r21.w);
              if (r18.w != 0) {
                if (3 == 0) r18.w = 0; else if (3+27 < 32) {                 r18.w = (uint)r26.w << (32-(3 + 27)); r18.w = (uint)r18.w >> (32-3);                } else r18.w = (uint)r26.w >> 27;
                r18.w = cmp((int)r18.w != 1);
                if (r18.w != 0) {
                  r18.w = abs(r16.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r3.xyz * r18.www + v5.xyz;
                  r34.xyz = r31.xyz;
                  r18.w = dot(r34.xyzw, r22.xyzw);
                  r21.x = dot(r36.xyzw, r22.xyzw);
                  r21.y = cmp(r21.x >= r18.w);
                  if (r21.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.y, r9.w, l(144), t12.xxxx
                  r35.y = samp0[]..swiz;
                    r29.w = r30.x;
                    r27.x = dot(r29.xyzw, r22.xyzw);
                    r31.xyz = r30.yzw;
                    r27.y = dot(r31.xyzw, r22.xyzw);
                    r22.xy = r27.xy / r21.xx;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r35.zw + r35.xy;
                    r9.w = r18.w / r21.x;
                    r9.w = max(6.10351563e-05, r9.w);
                    r18.w = (int)r26.w & 0x0000ffff;
                    if (r8.w != 0) {
                      r27.z = (uint)r18.w;
                      r21.xy = float2(0,0);
                      while (true) {
                        r23.w = cmp((int)r21.y >= 8);
                        if (r23.w != 0) break;
                        r29.x = dot(icb[r21.y+0].yx, r17.xw);
                        r29.y = dot(icb[r21.y+0].xy, r9.xy);
                        r27.xy = r29.xy * r28.yy + r22.xy;
                        r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r9.w).x;
                        r21.x = r23.w * 0.125 + r21.x;
                        r21.y = (int)r21.y + 1;
                      }
                    } else {
                      r22.z = (uint)r18.w;
                      r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r9.w).x;
                    }
                    r9.w = r21.x * r21.x;
                    r9.w = r9.w * r21.x;
                  } else {
                    r9.w = 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = r21.w * r9.w;
                r18.w = cmp(0 < r9.w);
                if (r18.w != 0) {
                  r18.w = r26.x * r4.z;
                  r18.w = r18.w * r18.z;
                  r22.xyz = r9.www * r25.xyz;
                  r9.w = -r18.z * r1.x + 1;
                  r9.w = r9.w * r9.w;
                  r9.w = -r9.w * 0.620000005 + 0.620000005;
                  r9.w = r9.w + -r18.z;
                  r9.w = r4.w * r9.w + r18.z;
                  r16.w = cmp(0 < r16.w);
                  r25.xyz = r9.www * r22.xyz + r11.yzw;
                  r26.xyz = r32.xyz * r10.www + r8.xyz;
                  r9.w = dot(r26.xyz, r26.xyz);
                  r9.w = rsqrt(r9.w);
                  r26.xyz = r26.xyz * r9.www;
                  r9.w = dot(r3.xyz, r26.xyz);
                  r10.w = dot(r26.xyz, r8.xyz);
                  r21.y = dot(r26.xyz, r5.xyz);
                  r21.w = dot(r26.xyz, r6.xyz);
                  r21.yw = r21.yw * r21.yw;
                  r21.yw = r21.yw / r7.zw;
                  r21.y = r21.y + r21.w;
                  r9.w = abs(r9.w) * abs(r9.w) + r21.y;
                  r18.z = r18.z * r5.w + r6.w;
                  r9.w = r9.w * r9.w;
                  r9.w = r9.w * r1.y;
                  r9.w = r9.w * r18.z;
                  r9.w = rcp(r9.w);
                  r9.w = r9.w * r18.w;
                  r9.w = 0.25 * r9.w;
                  r26.xyz = r9.www * r22.xyz;
                  r22.xyz = r9.www * r22.xyz + r19.xyz;
                  r9.w = saturate(1 + -r10.w);
                  r10.w = r9.w * r9.w;
                  r10.w = r10.w * r10.w;
                  r9.w = r10.w * r9.w;
                  r26.xyz = r26.xyz * r9.www + r12.yzw;
                  r11.yzw = r16.www ? r25.xyz : r11.yzw;
                  r12.yzw = r16.www ? r26.xyz : r12.yzw;
                  r19.xyz = r16.www ? r22.xyz : r19.xyz;
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
    r10.xyz = r11.yzw;
    r23.xyz = r12.yzw;
    r24.xyz = r19.xyz;
    r4.x = (int)r4.x + 32;
  }
  r1.x = -debugGlossOverride.w * r1.w + 1;
  r1.z = r1.x * 5 + -2.5;
  r1.z = saturate(0.400000006 * r1.z);
  r1.z = 100 * r1.z;
  r4.xy = -r1.xx * float2(10,5) + float2(6.85740995,7.08500004);
  r1.w = exp2(r4.x);
  r1.w = r7.x * r1.w;
  r1.yw = float2(5,9.1368103) * r1.xw;
  r2.w = r1.y * r1.x;
  r2.w = -r2.w * 2.0159049 + r4.y;
  r2.w = exp2(r2.w);
  r2.w = r7.x * r2.w;
  r2.w = 9.70808983 * r2.w;
  r1.w = max(r2.w, r1.w);
  r1.w = max(1.26815999, r1.w);
  r4.xy = float2(0,0);
  r5.w = 0;
  r6.yz = float2(0,1);
  r8.xy = float2(0,0);
  r9.xy = float2(0,0);
  r11.xy = float2(0,0);
  r12.x = 1;
  r14.xyzw = float4(0,0,0,0);
  r15.yzw = float3(0,0,0);
  r2.w = 0;
  r4.w = 0;
  while (true) {
    r6.w = cmp((uint)r4.w >= numRefProbes);
    if (r6.w != 0) break;
    r4.z = (uint)r4.w >> 5;
    r5.xyz = (int3)r4.xyz + (int3)r16.xyz;
    r4.z = visibleProbes.Load(r5.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r4.w, l(0), t15.wxyz
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r4.w, l(16), t15.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r4.w, l(32), t15.yxwz
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r4.w, l(48), t15.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r4.w, l(64), t15.zwxy
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r4.w, l(80), t15.xyzw
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r5.xy, r4.w, l(96), t15.xyxx
  r5.x = samp0[]..swiz;
  r5.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r4.w, l(116), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r4.w, l(132), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r4.w, l(148), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r4.w, l(164), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r4.w, l(180), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r4.w, l(196), t15.xyzw
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xy, r4.w, l(212), t15.xyxx
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
    r32.xyz = v5.xyz + -r17.yzw;
    r5.z = dot(r32.xyz, r32.xyz);
    r5.z = sqrt(r5.z);
    r5.z = cmp(probeDebugRadius >= r5.z);
    r6.w = (int)r25.y & 0x0000ffff;
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
    r7.z = dot(r33.xyz, r32.xyz);
    r7.z = saturate(r7.z + r33.w);
    r7.w = dot(r34.xyz, r32.xyz);
    r7.w = saturate(r7.w + r34.w);
    r7.z = r7.z * r7.w;
    r7.w = dot(r35.xyz, r32.xyz);
    r7.w = saturate(r7.w + r35.w);
    r7.z = r7.z * r7.w;
    r7.w = dot(r36.xyz, r32.xyz);
    r7.w = saturate(r7.w + r36.w);
    r7.z = r7.z * r7.w;
    r7.w = dot(r37.xyz, r32.xyz);
    r7.w = saturate(r7.w + r37.w);
    r7.z = r7.z * r7.w;
    r7.w = dot(r38.xyz, r32.xyz);
    r7.w = saturate(r7.w + r38.w);
    r6.x = r7.z * r7.w;
    r7.z = (int)r5.x & 1;
    r7.zw = r7.zz ? r6.xy : r6.zx;
    r33.xy = r25.zw;
    r33.z = r26.z;
    r6.x = dot(r13.xyz, r33.xyz);
    r8.w = dot(r32.xyz, r33.xyz);
    r8.w = r8.w + -r26.w;
    r9.w = cmp(r8.w >= 0);
    r8.w = max(abs(r8.w), r1.z);
    r8.w = r9.w ? r8.w : -r8.w;
    r6.x = max(1.00000001e-07, -r6.x);
    r6.x = r8.w / r6.x;
    r6.x = min(131072, abs(r6.x));
    r26.z = r27.z;
    r8.w = dot(r13.xyz, r26.xyz);
    r9.w = dot(r32.xyz, r26.xyz);
    r9.w = r9.w + -r27.w;
    r10.w = cmp(r9.w >= 0);
    r9.w = max(abs(r9.w), r1.z);
    r9.w = r10.w ? r9.w : -r9.w;
    r8.w = max(1.00000001e-07, -r8.w);
    r8.w = r9.w / r8.w;
    r6.x = min(abs(r8.w), r6.x);
    r27.z = r28.z;
    r8.w = dot(r13.xyz, r27.xyz);
    r9.w = dot(r32.xyz, r27.xyz);
    r9.w = r9.w + -r28.w;
    r10.w = cmp(r9.w >= 0);
    r9.w = max(abs(r9.w), r1.z);
    r9.w = r10.w ? r9.w : -r9.w;
    r8.w = max(1.00000001e-07, -r8.w);
    r8.w = r9.w / r8.w;
    r6.x = min(abs(r8.w), r6.x);
    r28.z = r29.z;
    r8.w = dot(r13.xyz, r28.xyz);
    r9.w = dot(r32.xyz, r28.xyz);
    r9.w = r9.w + -r29.w;
    r10.w = cmp(r9.w >= 0);
    r9.w = max(abs(r9.w), r1.z);
    r9.w = r10.w ? r9.w : -r9.w;
    r8.w = max(1.00000001e-07, -r8.w);
    r8.w = r9.w / r8.w;
    r6.x = min(abs(r8.w), r6.x);
    r29.z = r30.x;
    r8.w = dot(r13.xyz, r29.xyz);
    r9.w = dot(r32.xyz, r29.xyz);
    r9.w = r9.w + -r30.y;
    r10.w = cmp(r9.w >= 0);
    r9.w = max(abs(r9.w), r1.z);
    r9.w = r10.w ? r9.w : -r9.w;
    r8.w = max(1.00000001e-07, -r8.w);
    r8.w = r9.w / r8.w;
    r6.x = min(abs(r8.w), r6.x);
    r31.zw = r30.zw;
    r8.w = dot(r13.zxy, r31.xzw);
    r9.w = dot(r32.zxy, r31.xzw);
    r9.w = r9.w + -r31.y;
    r10.w = cmp(r9.w >= 0);
    r9.w = max(abs(r9.w), r1.z);
    r9.w = r10.w ? r9.w : -r9.w;
    r8.w = max(1.00000001e-07, -r8.w);
    r8.w = r9.w / r8.w;
    r6.x = min(abs(r8.w), r6.x);
    r26.x = r20.w;
    r26.yz = r21.zw;
    r26.xyz = r26.xyz + r32.xyz;
    r26.xyz = r13.xyz * r6.xxx + r26.xyz;
    r8.w = dot(r26.xyz, r26.xyz);
    r8.w = sqrt(r8.w);
    r6.x = r6.x / r8.w;
    r6.x = r6.x + r6.x;
    r6.x = sqrt(r6.x);
    r6.x = r1.x * 5 + r6.x;
    r6.x = -0.844799995 + r6.x;
    r17.y = r18.z;
    r17.z = r19.x;
    r27.x = dot(r26.xyz, r17.xyz);
    r28.xy = r18.xw;
    r28.z = r19.w;
    r27.y = dot(r26.xyz, r28.xyz);
    r19.x = r18.y;
    r27.z = dot(r26.xyz, r19.xyz);
    if (6 == 0) r12.z = 0; else if (6+25 < 32) {     r12.z = (uint)r25.y << (32-(6 + 25)); r12.z = (uint)r12.z >> (32-6);    } else r12.z = (uint)r25.y >> 25;
    if (9 == 0) r12.w = 0; else if (9+16 < 32) {     r12.w = (uint)r25.y << (32-(9 + 16)); r12.w = (uint)r12.w >> (32-9);    } else r12.w = (uint)r25.y >> 16;
    r27.w = (uint)r12.w;
    r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r6.x).xyz;
    r25.yzw = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
    r25.yzw = cmp((int3)r25.yzw == int3(2139095040,2139095040,2139095040));
    r6.x = (int)r25.z | (int)r25.y;
    r6.x = (int)r25.w | (int)r6.x;
    r18.xyz = r6.xxx ? float3(1,1,0) : r18.xyz;
    r26.x = dot(r32.xyz, r17.xyz);
    r26.y = dot(r32.xyz, r28.xyz);
    r26.z = dot(r32.xyz, r19.xyz);
    r20.xyz = saturate(r26.xyz * r20.xyz + float3(0.5,0.5,0.5));
    r21.z = r22.x;
    r20.xyz = r20.xyz * r21.xyz + r22.yzw;
    r27.x = dot(r3.xyz, r17.xyz);
    r27.y = dot(r3.xyz, r28.xyz);
    r27.z = dot(r3.xyz, r19.xyz);
    r17.xyz = cmp(float3(0,0,0) < r27.xyz);
    r8.z = r17.x ? 0 : 0.5;
    r19.xyz = r20.xyz + r8.xyz;
    r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r9.z = r17.y ? 0 : 0.5;
    r17.xyw = r20.xyz + r9.xyz;
    r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
    r11.z = r17.z ? 0 : 0.5;
    r20.xyz = r20.xyz + r11.xyz;
    r20.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r21.xyz = r27.xyz * r27.xyz;
    r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
    r25.yzw = (int3)r22.xyz & int3(-2147483648,-2147483648,-2147483648);
    r25.yzw = cmp((int3)r25.yzw == int3(2139095040,2139095040,2139095040));
    r6.x = (int)r25.z | (int)r25.y;
    r6.x = (int)r25.w | (int)r6.x;
    r22.xyz = r6.xxx ? float3(1,1,0) : r22.xyz;
    r26.xyzw = r14.xyzw;
    r25.yzw = r15.yzw;
    r6.x = r2.w;
    r8.z = r4.z;
    while (true) {
      if (r8.z == 0) break;
      r8.w = firstbitlow((uint)r8.z);
      r8.w = 1 << (int)r8.w;
      r9.z = (int)r8.w & (int)r8.z;
      if (r9.z != 0) {
        r8.w = ~(int)r8.w;
        r8.z = (int)r8.w & (int)r8.z;
        if (r5.z != 0) {
          r8.w = r5.x;
          r27.xy = r7.zw;
          r9.z = 1;
          while (true) {
            r9.w = cmp((int)r9.z >= (int)r12.z);
            if (r9.w != 0) break;
            r9.w = (int)r6.w + (int)r9.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
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
            r9.w = dot(r28.xyz, r32.xyz);
            r9.w = saturate(r9.w + r28.w);
            r9.w = r27.x * r9.w;
            r10.w = dot(r29.xyz, r32.xyz);
            r10.w = saturate(r10.w + r29.w);
            r9.w = r10.w * r9.w;
            r10.w = dot(r30.xyz, r32.xyz);
            r10.w = saturate(r10.w + r30.w);
            r9.w = r10.w * r9.w;
            r10.w = dot(r31.xyz, r32.xyz);
            r10.w = saturate(r10.w + r31.w);
            r9.w = r10.w * r9.w;
            r10.w = dot(r33.xyz, r32.xyz);
            r10.w = saturate(r10.w + r33.w);
            r9.w = r10.w * r9.w;
            r10.w = dot(r34.xyz, r32.xyz);
            r10.w = saturate(r10.w + r34.w);
            r27.x = r10.w * r9.w;
            r11.z = (uint)r8.w >> 2;
            if (1 == 0) r11.w = 0; else if (1+2 < 32) {             r11.w = (uint)r8.w << (32-(1 + 2)); r11.w = (uint)r11.w >> (32-1);            } else r11.w = (uint)r8.w >> 2;
            r12.w = (int)r11.z & 2;
            r16.w = max(r27.y, r27.x);
            r9.w = -r9.w * r10.w + 1;
            r9.w = r27.y * r9.w;
            r12.y = r12.w ? r9.w : r16.w;
            r27.xy = r11.ww ? r27.xy : r12.xy;
            r9.z = (int)r9.z + 1;
            r8.w = r11.z;
          }
          r27.y = saturate(r27.y);
          r8.w = r27.y * r5.y;
          r9.z = cmp(0 < r8.w);
          if (r9.z != 0) {
            r28.z = r27.y * r5.y + r25.w;
            r8.w = r8.w * r25.x;
            r27.xzw = r21.xyz * r8.www;
            r29.xyz = r27.zzz * r17.xyw;
            r29.xyz = r19.xyz * r27.xxx + r29.xyz;
            r27.xzw = r20.xyz * r27.www + r29.xyz;
            r29.xyz = r27.xzw * r22.xyz;
            r9.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r29.xyz = r27.xzw * r22.xyz + r26.xyz;
            r9.w = r9.z * r1.w;
            r27.xzw = r18.xyz * r8.www;
            r8.w = dot(r27.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r8.w = r1.w * r9.z + r8.w;
            r8.w = r9.w / r8.w;
            r30.x = r26.w;
            r30.yz = r25.yz;
            r28.xyw = r27.zwx * r8.www + r30.yzx;
            r29.w = r28.w;
          } else {
            r29.xyzw = r26.xyzw;
            r28.xyz = r25.yzw;
          }
          r6.x = -1;
          r26.xyzw = r29.xyzw;
          r25.yzw = r28.xyz;
          break;
        }
      }
    }
    if (r6.x != 0) {
      r14.xyzw = r26.xyzw;
      r15.yzw = r25.yzw;
      r2.w = -1;
      break;
    }
    r4.w = (int)r4.w + 32;
    r14.xyzw = r26.xyzw;
    r15.yzw = r25.yzw;
    r2.w = r6.x;
  }
  if (r2.w == 0) {
    r2.w = numRefProbes + -numOverrideProbes;
    r4.x = (int)r2.w & -32;
    r4.y = (int)r2.w + (int)-r4.x;
    r4.z = numRefProbes & -32;
    r4.w = (int)-r4.z + numRefProbes;
    r5.xy = float2(0,0);
    r6.w = 0;
    r8.yz = float2(0,1);
    r9.xy = float2(0,0);
    r11.x = 1;
    r12.xy = float2(0,0);
    r17.xy = float2(0,0);
    r18.xyzw = r14.xyzw;
    r19.yzw = r15.yzw;
    r5.w = r4.x;
    while (true) {
      r7.z = cmp((uint)r5.w >= numRefProbes);
      if (r7.z != 0) break;
      r5.z = (uint)r5.w >> 5;
      r6.xyz = (int3)r5.xyz + (int3)r16.xyz;
      r5.z = visibleProbes.Load(r6.xyzw).x;
      r6.x = cmp((int)r4.x == (int)r5.w);
      bitmask.y = ((~(-1 << r4.y)) << 0) & 0xffffffff;  r6.y = (((uint)0 << 0) & bitmask.y) | ((uint)r5.z & ~bitmask.y);
      r5.z = r6.x ? r6.y : r5.z;
      r6.x = cmp((int)r4.z == (int)r5.w);
      if (r4.w == 0) r6.y = 0; else if (r4.w+0 < 32) {       r6.y = (uint)r5.z << (32-(r4.w + 0)); r6.y = (uint)r6.y >> (32-r4.w);      } else r6.y = (uint)r5.z >> 0;
      r5.z = r6.x ? r6.y : r5.z;
      r6.x = (int)r5.w + numLights;
      r20.xyzw = r18.xyzw;
      r21.xyz = r19.yzw;
      r6.y = r5.z;
      while (true) {
        if (r6.y == 0) break;
        r6.z = firstbitlow((uint)r6.y);
        r7.z = 1 << (int)r6.z;
        r7.w = (int)r6.y & (int)r7.z;
        if (r7.w != 0) {
          r6.y = (int)r6.y ^ (int)r7.z;
          r7.z = (int)r6.z + (int)r6.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r7.z, l(0), t11.xyzw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r7.z, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r22.xyz = -v5.xyz + r22.xyz;
          r25.z = r22.w;
          r22.xyz = cmp(abs(r22.xyz) < r25.zxy);
          r7.z = r22.y ? r22.x : 0;
          r7.z = r22.z ? r7.z : 0;
          if (r7.z != 0) {
            r6.z = (int)r5.w + (int)r6.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r6.z, l(0), t15.wxyz
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r7.zw, r6.z, l(96), t15.xxxy
          r7.z = samp0[]..swiz;
          r7.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r6.z, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v5.xyz + -r22.yzw;
            r8.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r9.w = 0; else if (6+25 < 32) {             r9.w = (uint)r25.w << (32-(6 + 25)); r9.w = (uint)r9.w >> (32-6);            } else r9.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r8.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r8.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r8.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r10.w = dot(r27.xyz, r26.xyz);
            r10.w = saturate(r10.w + r27.w);
            r11.z = dot(r28.xyz, r26.xyz);
            r11.z = saturate(r11.z + r28.w);
            r10.w = r11.z * r10.w;
            r11.z = dot(r29.xyz, r26.xyz);
            r11.z = saturate(r11.z + r29.w);
            r10.w = r11.z * r10.w;
            r11.z = dot(r30.xyz, r26.xyz);
            r11.z = saturate(r11.z + r30.w);
            r10.w = r11.z * r10.w;
            r11.z = dot(r31.xyz, r26.xyz);
            r11.z = saturate(r11.z + r31.w);
            r10.w = r11.z * r10.w;
            r11.z = dot(r32.xyz, r26.xyz);
            r11.z = saturate(r11.z + r32.w);
            r8.x = r11.z * r10.w;
            r10.w = (int)r7.z & 1;
            r11.zw = r10.ww ? r8.xy : r8.zx;
            r8.x = r7.z;
            r27.xy = r11.zw;
            r10.w = 1;
            while (true) {
              r12.w = cmp((int)r10.w >= (int)r9.w);
              if (r12.w != 0) break;
              r12.w = (int)r8.w + (int)r10.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(16), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(32), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(48), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(64), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(80), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r12.w = dot(r28.xyz, r26.xyz);
              r12.w = saturate(r12.w + r28.w);
              r12.w = r27.x * r12.w;
              r16.w = dot(r29.xyz, r26.xyz);
              r16.w = saturate(r16.w + r29.w);
              r12.w = r16.w * r12.w;
              r16.w = dot(r30.xyz, r26.xyz);
              r16.w = saturate(r16.w + r30.w);
              r12.w = r16.w * r12.w;
              r16.w = dot(r31.xyz, r26.xyz);
              r16.w = saturate(r16.w + r31.w);
              r12.w = r16.w * r12.w;
              r16.w = dot(r32.xyz, r26.xyz);
              r16.w = saturate(r16.w + r32.w);
              r12.w = r16.w * r12.w;
              r16.w = dot(r33.xyz, r26.xyz);
              r16.w = saturate(r16.w + r33.w);
              r27.x = r16.w * r12.w;
              r17.w = (uint)r8.x >> 2;
              if (1 == 0) r22.w = 0; else if (1+2 < 32) {               r22.w = (uint)r8.x << (32-(1 + 2)); r22.w = (uint)r22.w >> (32-1);              } else r22.w = (uint)r8.x >> 2;
              r23.w = (int)r17.w & 2;
              r24.w = max(r27.y, r27.x);
              r12.w = -r12.w * r16.w + 1;
              r12.w = r27.y * r12.w;
              r11.y = r23.w ? r12.w : r24.w;
              r27.xy = r22.ww ? r27.xy : r11.xy;
              r10.w = (int)r10.w + 1;
              r8.x = r17.w;
            }
            r27.y = saturate(r27.y);
            r7.z = r27.y * r7.w;
            r8.x = cmp(0 < r7.z);
            if (r8.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r6.z, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r6.z, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r6.z, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r6.z, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r6.z, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r6.z, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r6.z, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r6.z, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r6.z, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r6.z, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r6.z, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r21.z = r27.y * r7.w + r21.z;
              r6.z = r7.z * r25.z;
              r25.z = r33.z;
              r7.z = dot(r13.xyz, r25.xyz);
              r7.w = dot(r26.xyz, r25.xyz);
              r7.w = r7.w + -r33.w;
              r8.x = cmp(r7.w >= 0);
              r7.w = max(abs(r7.w), r1.z);
              r7.w = r8.x ? r7.w : -r7.w;
              r7.z = max(1.00000001e-07, -r7.z);
              r7.z = r7.w / r7.z;
              r7.z = min(131072, abs(r7.z));
              r33.z = r34.z;
              r7.w = dot(r13.xyz, r33.xyz);
              r8.x = dot(r26.xyz, r33.xyz);
              r8.x = r8.x + -r34.w;
              r8.w = cmp(r8.x >= 0);
              r8.x = max(abs(r8.x), r1.z);
              r8.x = r8.w ? r8.x : -r8.x;
              r7.w = max(1.00000001e-07, -r7.w);
              r7.w = r8.x / r7.w;
              r7.z = min(r7.z, abs(r7.w));
              r34.z = r35.z;
              r7.w = dot(r13.xyz, r34.xyz);
              r8.x = dot(r26.xyz, r34.xyz);
              r8.x = r8.x + -r35.w;
              r8.w = cmp(r8.x >= 0);
              r8.x = max(abs(r8.x), r1.z);
              r8.x = r8.w ? r8.x : -r8.x;
              r7.w = max(1.00000001e-07, -r7.w);
              r7.w = r8.x / r7.w;
              r7.z = min(r7.z, abs(r7.w));
              r35.z = r36.z;
              r7.w = dot(r13.xyz, r35.xyz);
              r8.x = dot(r26.xyz, r35.xyz);
              r8.x = r8.x + -r36.w;
              r8.w = cmp(r8.x >= 0);
              r8.x = max(abs(r8.x), r1.z);
              r8.x = r8.w ? r8.x : -r8.x;
              r7.w = max(1.00000001e-07, -r7.w);
              r7.w = r8.x / r7.w;
              r7.z = min(r7.z, abs(r7.w));
              r36.z = r37.x;
              r7.w = dot(r13.xyz, r36.xyz);
              r8.x = dot(r26.xyz, r36.xyz);
              r8.x = r8.x + -r37.y;
              r8.w = cmp(r8.x >= 0);
              r8.x = max(abs(r8.x), r1.z);
              r8.x = r8.w ? r8.x : -r8.x;
              r7.w = max(1.00000001e-07, -r7.w);
              r7.w = r8.x / r7.w;
              r7.z = min(r7.z, abs(r7.w));
              r38.zw = r37.zw;
              r7.w = dot(r13.zxy, r38.xzw);
              r8.x = dot(r26.zxy, r38.xzw);
              r8.x = r8.x + -r38.y;
              r8.w = cmp(r8.x >= 0);
              r8.x = max(abs(r8.x), r1.z);
              r8.x = r8.w ? r8.x : -r8.x;
              r7.w = max(1.00000001e-07, -r7.w);
              r7.w = r8.x / r7.w;
              r7.z = min(r7.z, abs(r7.w));
              r25.x = r30.w;
              r25.yz = r31.zw;
              r11.yzw = r25.xyz + r26.xyz;
              r11.yzw = r13.xyz * r7.zzz + r11.yzw;
              r7.w = dot(r11.yzw, r11.yzw);
              r7.w = sqrt(r7.w);
              r7.z = r7.z / r7.w;
              r7.z = r7.z + r7.z;
              r7.z = sqrt(r7.z);
              r7.z = r1.x * 5 + r7.z;
              r7.z = -0.844799995 + r7.z;
              r22.y = r28.z;
              r22.z = r29.x;
              r33.x = dot(r11.yzw, r22.xyz);
              r25.xy = r28.xw;
              r25.z = r29.w;
              r33.y = dot(r11.yzw, r25.xyz);
              r29.x = r28.y;
              r33.z = dot(r11.yzw, r29.xyz);
              if (9 == 0) r7.w = 0; else if (9+16 < 32) {               r7.w = (uint)r25.w << (32-(9 + 16)); r7.w = (uint)r7.w >> (32-9);              } else r7.w = (uint)r25.w >> 16;
              r33.w = (uint)r7.w;
              r11.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r7.z).xyz;
              r27.xzw = (int3)r11.yzw & int3(-2147483648,-2147483648,-2147483648);
              r27.xzw = cmp((int3)r27.xzw == int3(2139095040,2139095040,2139095040));
              r7.z = (int)r27.z | (int)r27.x;
              r7.z = (int)r27.w | (int)r7.z;
              r11.yzw = r7.zzz ? float3(1,1,0) : r11.yzw;
              r28.x = dot(r26.xyz, r22.xyz);
              r28.y = dot(r26.xyz, r25.xyz);
              r28.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r3.xyz, r22.xyz);
              r33.y = dot(r3.xyz, r25.xyz);
              r33.z = dot(r3.xyz, r29.xyz);
              r22.xyz = cmp(float3(0,0,0) < r33.xyz);
              r9.z = r22.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r9.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xzw = r33.xyz * r33.xyz;
              r27.xzw = r27.xzw * r6.zzz;
              r12.z = r22.y ? 0 : 0.5;
              r22.xyw = r26.xyz + r12.xyz;
              r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
              r22.xyw = r22.xyw * r27.zzz;
              r22.xyw = r25.xyz * r27.xxx + r22.xyw;
              r17.z = r22.z ? 0 : 0.5;
              r25.xyz = r26.xyz + r17.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r22.xyz = r25.xyz * r27.www + r22.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
              r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
              r7.z = (int)r26.y | (int)r26.x;
              r7.z = (int)r26.z | (int)r7.z;
              r25.xyz = r7.zzz ? float3(1,1,0) : r25.xyz;
              r26.xyz = r25.xyz * r22.xyz;
              r7.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r20.xyz = r22.xyz * r25.xyz + r20.xyz;
              r7.w = r7.z * r1.w;
              r11.yzw = r11.yzw * r6.zzz;
              r6.z = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r6.z = r1.w * r7.z + r6.z;
              r6.z = r7.w / r6.z;
              r22.x = r20.w;
              r22.yz = r21.xy;
              r21.xyw = r11.zwy * r6.zzz + r22.yzx;
              r20.w = r21.w;
            }
          }
        }
      }
      r18.xyzw = r20.xyzw;
      r19.yzw = r21.xyz;
      r5.w = (int)r5.w + 32;
    }
    r4.z = cmp(r19.w < 1);
    if (r4.z != 0) {
      r5.xy = float2(0,0);
      r6.w = 0;
      r8.yz = float2(0,1);
      r9.xy = float2(0,0);
      r11.x = 1;
      r12.xy = float2(0,0);
      r17.xy = float2(0,0);
      r20.x = r18.w;
      r20.yzw = r19.yzw;
      r21.xyz = r18.xyz;
      r4.z = r19.w;
      r4.w = 0;
      while (true) {
        r5.w = cmp((uint)r4.w >= (uint)r2.w);
        if (r5.w != 0) break;
        r5.z = (uint)r4.w >> 5;
        r6.xyz = (int3)r5.xyz + (int3)r16.xyz;
        r5.z = visibleProbes.Load(r6.xyzw).x;
        r5.w = cmp((int)r4.x == (int)r4.w);
        if (r4.y == 0) r6.x = 0; else if (r4.y+0 < 32) {         r6.x = (uint)r5.z << (32-(r4.y + 0)); r6.x = (uint)r6.x >> (32-r4.y);        } else r6.x = (uint)r5.z >> 0;
        r5.z = r5.w ? r6.x : r5.z;
        r5.w = (int)r4.w + numLights;
        r22.xyzw = r20.xyzw;
        r6.xyz = r21.xyz;
        r7.z = r4.z;
        r7.w = r5.z;
        while (true) {
          if (r7.w == 0) break;
          r8.w = firstbitlow((uint)r7.w);
          r9.w = 1 << (int)r8.w;
          r10.w = (int)r7.w & (int)r9.w;
          if (r10.w != 0) {
            r7.w = (int)r7.w ^ (int)r9.w;
            r9.w = (int)r5.w + (int)r8.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r9.w, l(0), t11.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r9.w, l(16), t11.xyxx
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
            r25.xyz = -v5.xyz + r25.xyz;
            r26.z = r25.w;
            r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
            r9.w = r25.y ? r25.x : 0;
            r9.w = r25.z ? r9.w : 0;
            if (r9.w != 0) {
              r8.w = (int)r4.w + (int)r8.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r8.w, l(0), t15.wxyz
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.zw, r8.w, l(96), t15.xxxy
            r11.z = samp0[]..swiz;
            r11.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r8.w, l(116), t15.zwxy
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
              r27.xyz = v5.xyz + -r25.yzw;
              r9.w = (int)r26.w & 0x0000ffff;
              if (6 == 0) r10.w = 0; else if (6+25 < 32) {               r10.w = (uint)r26.w << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);              } else r10.w = (uint)r26.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(16), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(32), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(48), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(64), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(80), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r12.w = dot(r28.xyz, r27.xyz);
              r12.w = saturate(r12.w + r28.w);
              r15.w = dot(r29.xyz, r27.xyz);
              r15.w = saturate(r15.w + r29.w);
              r12.w = r15.w * r12.w;
              r15.w = dot(r30.xyz, r27.xyz);
              r15.w = saturate(r15.w + r30.w);
              r12.w = r15.w * r12.w;
              r15.w = dot(r31.xyz, r27.xyz);
              r15.w = saturate(r15.w + r31.w);
              r12.w = r15.w * r12.w;
              r15.w = dot(r32.xyz, r27.xyz);
              r15.w = saturate(r15.w + r32.w);
              r12.w = r15.w * r12.w;
              r15.w = dot(r33.xyz, r27.xyz);
              r15.w = saturate(r15.w + r33.w);
              r8.x = r15.w * r12.w;
              r12.w = (int)r11.z & 1;
              r28.xy = r12.ww ? r8.xy : r8.zx;
              r8.x = r11.z;
              r29.xy = r28.xy;
              r12.w = 1;
              while (true) {
                r15.w = cmp((int)r12.w >= (int)r10.w);
                if (r15.w != 0) break;
                r15.w = (int)r9.w + (int)r12.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(0), t16.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(16), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(32), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(48), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(64), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(80), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
                r15.w = dot(r30.xyz, r27.xyz);
                r15.w = saturate(r15.w + r30.w);
                r15.w = r29.x * r15.w;
                r16.w = dot(r31.xyz, r27.xyz);
                r16.w = saturate(r16.w + r31.w);
                r15.w = r16.w * r15.w;
                r16.w = dot(r32.xyz, r27.xyz);
                r16.w = saturate(r16.w + r32.w);
                r15.w = r16.w * r15.w;
                r16.w = dot(r33.xyz, r27.xyz);
                r16.w = saturate(r16.w + r33.w);
                r15.w = r16.w * r15.w;
                r16.w = dot(r34.xyz, r27.xyz);
                r16.w = saturate(r16.w + r34.w);
                r15.w = r16.w * r15.w;
                r16.w = dot(r35.xyz, r27.xyz);
                r16.w = saturate(r16.w + r35.w);
                r29.x = r16.w * r15.w;
                r17.w = (uint)r8.x >> 2;
                if (1 == 0) r21.w = 0; else if (1+2 < 32) {                 r21.w = (uint)r8.x << (32-(1 + 2)); r21.w = (uint)r21.w >> (32-1);                } else r21.w = (uint)r8.x >> 2;
                r23.w = (int)r17.w & 2;
                r24.w = max(r29.y, r29.x);
                r15.w = -r15.w * r16.w + 1;
                r15.w = r29.y * r15.w;
                r11.y = r23.w ? r15.w : r24.w;
                r29.xy = r21.ww ? r29.xy : r11.xy;
                r12.w = (int)r12.w + 1;
                r8.x = r17.w;
              }
              r8.x = saturate(r29.y + -r7.z);
              r9.w = r8.x * r11.w;
              r10.w = cmp(0 < r9.w);
              if (r10.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r8.w, l(16), t15.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(32), t15.yxwz
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(48), t15.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(64), t15.zwxy
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(80), t15.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(132), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(148), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(164), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r8.w, l(180), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r8.w, l(196), t15.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r8.w, l(212), t15.xyxx
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
                r22.w = r8.x * r11.w + r22.w;
                r8.x = r9.w * r26.z;
                r26.z = r34.z;
                r8.w = dot(r13.xyz, r26.xyz);
                r9.w = dot(r27.xyz, r26.xyz);
                r9.w = r9.w + -r34.w;
                r10.w = cmp(r9.w >= 0);
                r9.w = max(abs(r9.w), r1.z);
                r9.w = r10.w ? r9.w : -r9.w;
                r8.w = max(1.00000001e-07, -r8.w);
                r8.w = r9.w / r8.w;
                r8.w = min(131072, abs(r8.w));
                r34.z = r35.z;
                r9.w = dot(r13.xyz, r34.xyz);
                r10.w = dot(r27.xyz, r34.xyz);
                r10.w = r10.w + -r35.w;
                r11.y = cmp(r10.w >= 0);
                r10.w = max(abs(r10.w), r1.z);
                r10.w = r11.y ? r10.w : -r10.w;
                r9.w = max(1.00000001e-07, -r9.w);
                r9.w = r10.w / r9.w;
                r8.w = min(abs(r9.w), r8.w);
                r35.z = r36.z;
                r9.w = dot(r13.xyz, r35.xyz);
                r10.w = dot(r27.xyz, r35.xyz);
                r10.w = r10.w + -r36.w;
                r11.y = cmp(r10.w >= 0);
                r10.w = max(abs(r10.w), r1.z);
                r10.w = r11.y ? r10.w : -r10.w;
                r9.w = max(1.00000001e-07, -r9.w);
                r9.w = r10.w / r9.w;
                r8.w = min(abs(r9.w), r8.w);
                r36.z = r37.z;
                r9.w = dot(r13.xyz, r36.xyz);
                r10.w = dot(r27.xyz, r36.xyz);
                r10.w = r10.w + -r37.w;
                r11.y = cmp(r10.w >= 0);
                r10.w = max(abs(r10.w), r1.z);
                r10.w = r11.y ? r10.w : -r10.w;
                r9.w = max(1.00000001e-07, -r9.w);
                r9.w = r10.w / r9.w;
                r8.w = min(abs(r9.w), r8.w);
                r37.z = r38.x;
                r9.w = dot(r13.xyz, r37.xyz);
                r10.w = dot(r27.xyz, r37.xyz);
                r10.w = r10.w + -r38.y;
                r11.y = cmp(r10.w >= 0);
                r10.w = max(abs(r10.w), r1.z);
                r10.w = r11.y ? r10.w : -r10.w;
                r9.w = max(1.00000001e-07, -r9.w);
                r9.w = r10.w / r9.w;
                r8.w = min(abs(r9.w), r8.w);
                r39.zw = r38.zw;
                r9.w = dot(r13.zxy, r39.xzw);
                r10.w = dot(r27.zxy, r39.xzw);
                r10.w = r10.w + -r39.y;
                r11.y = cmp(r10.w >= 0);
                r10.w = max(abs(r10.w), r1.z);
                r10.w = r11.y ? r10.w : -r10.w;
                r9.w = max(1.00000001e-07, -r9.w);
                r9.w = r10.w / r9.w;
                r8.w = min(abs(r9.w), r8.w);
                r26.x = r31.w;
                r26.yz = r32.zw;
                r11.yzw = r26.xyz + r27.xyz;
                r11.yzw = r13.xyz * r8.www + r11.yzw;
                r9.w = dot(r11.yzw, r11.yzw);
                r9.w = sqrt(r9.w);
                r8.w = r8.w / r9.w;
                r8.w = r8.w + r8.w;
                r8.w = sqrt(r8.w);
                r8.w = r1.x * 5 + r8.w;
                r8.w = -0.844799995 + r8.w;
                r25.y = r28.z;
                r25.z = r30.x;
                r34.x = dot(r11.yzw, r25.xyz);
                r26.xy = r28.xw;
                r26.z = r30.w;
                r34.y = dot(r11.yzw, r26.xyz);
                r30.x = r28.y;
                r34.z = dot(r11.yzw, r30.xyz);
                if (9 == 0) r9.w = 0; else if (9+16 < 32) {                 r9.w = (uint)r26.w << (32-(9 + 16)); r9.w = (uint)r9.w >> (32-9);                } else r9.w = (uint)r26.w >> 16;
                r34.w = (uint)r9.w;
                r11.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r8.w).xyz;
                r28.xyz = (int3)r11.yzw & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r8.w = (int)r28.y | (int)r28.x;
                r8.w = (int)r28.z | (int)r8.w;
                r11.yzw = r8.www ? float3(1,1,0) : r11.yzw;
                r28.x = dot(r27.xyz, r25.xyz);
                r28.y = dot(r27.xyz, r26.xyz);
                r28.z = dot(r27.xyz, r30.xyz);
                r27.xyz = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
                r32.z = r33.x;
                r27.xyz = r27.xyz * r32.xyz + r33.yzw;
                r34.x = dot(r3.xyz, r25.xyz);
                r34.y = dot(r3.xyz, r26.xyz);
                r34.z = dot(r3.xyz, r30.xyz);
                r25.xyz = cmp(float3(0,0,0) < r34.xyz);
                r9.z = r25.x ? 0 : 0.5;
                r26.xyz = r27.xyz + r9.xyz;
                r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r28.xyz = r34.xyz * r34.xyz;
                r28.xyz = r28.xyz * r8.xxx;
                r12.z = r25.y ? 0 : 0.5;
                r25.xyw = r27.xyz + r12.xyz;
                r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
                r25.xyw = r25.xyw * r28.yyy;
                r25.xyw = r26.xyz * r28.xxx + r25.xyw;
                r17.z = r25.z ? 0 : 0.5;
                r26.xyz = r27.xyz + r17.xyz;
                r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r25.xyz = r26.xyz * r28.zzz + r25.xyw;
                r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
                r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
                r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
                r8.w = (int)r27.y | (int)r27.x;
                r8.w = (int)r27.z | (int)r8.w;
                r26.xyz = r8.www ? float3(1,1,0) : r26.xyz;
                r27.xyz = r26.xyz * r25.xyz;
                r8.w = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r6.xyz = r25.xyz * r26.xyz + r6.xyz;
                r9.z = r8.w * r1.w;
                r11.yzw = r11.yzw * r8.xxx;
                r8.x = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r8.x = r1.w * r8.w + r8.x;
                r8.x = r9.z / r8.x;
                r22.xyz = r11.yzw * r8.xxx + r22.xyz;
              }
            }
          }
        }
        r20.xyzw = r22.xyzw;
        r21.xyz = r6.xyz;
        r4.w = (int)r4.w + 32;
      }
      r19.xyzw = r20.zxyw;
      r18.xyz = r21.xyz;
      r19.xyzw = r19.yzxw;
    } else {
      r19.x = r18.w;
    }
    r1.x = max(1, r19.w);
    r1.x = rcp(r1.x);
    r19.w = saturate(r19.w);
    r14.xyz = r18.xyz * r1.xxx;
    r15.xyz = r19.xyz * r1.xxx;
    r1.z = cmp(r19.w < 0.99000001);
    if (r1.z != 0) {
      r1.z = 1 + -r19.w;
      r1.w = sunConstants.globalProbeExposure * r1.z;
      r4.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
      r5.x = globalProbeConstants.data[0].w * r4.x;
      r5.yz = globalProbeConstants.data[1].xy * r4.yz;
      r4.xyz = saturate(float3(0.5,0.5,0.5) + r5.xyz);
      r5.xy = globalProbeConstants.data[1].zw * r4.xy;
      r5.z = globalProbeConstants.data[2].x * r4.z;
      r4.xyz = globalProbeConstants.data[2].yzw + r5.xyz;
      r5.xyz = cmp(float3(0,0,0) < r3.xyz);
      r5.xyz = r5.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r5.w = 0;
      r6.xyz = r5.wwx + r4.xyz;
      r6.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r6.xyz, 0).xyz;
      r8.xyz = r3.xyz * r3.xyz;
      r8.xyz = r8.xyz * r1.www;
      r9.xyz = r5.wwy + r4.xyz;
      r9.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
      r9.xyz = r9.xyz * r8.yyy;
      r6.xyz = r6.xyz * r8.xxx + r9.xyz;
      r4.xyz = r5.wwz + r4.xyz;
      r4.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r4.xyz, 0).xyz;
      r4.xyz = r4.xyz * r8.zzz + r6.xyz;
      r3.w = 0;
      r3.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
      r3.xyz = r4.xyz * r3.xyz;
      r1.w = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r14.xyz = r18.xyz * r1.xxx + r3.xyz;
      r13.w = 0;
      r3.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r1.y).xyz;
      r1.x = sunConstants.globalProbeExposure * r1.z + -r1.w;
      r1.x = r7.y * r1.x + r1.w;
      r15.xyz = r3.xyz * r1.xxx + r15.xyz;
    }
  } else {
    r15.x = r14.w;
  }
  r1.xyz = r14.xyz * r0.www + r10.xyz;
  r3.xy = r7.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r3.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r3.xy, 0).xy;
  r4.xyz = r15.xyz * r0.www;
  r3.xzw = r4.xyz * r3.xxx + r23.xyz;
  r4.xyz = r4.xyz * r3.yyy + r24.xyz;
  r5.xyz = float3(1,1,1) + -r2.xyz;
  r3.xyz = r5.xyz * r3.xzw;
  r2.xyz = r4.xyz * r2.xyz + r3.xyz;
  r0.xyz = r1.xyz * r0.xyz + r2.xyz;
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