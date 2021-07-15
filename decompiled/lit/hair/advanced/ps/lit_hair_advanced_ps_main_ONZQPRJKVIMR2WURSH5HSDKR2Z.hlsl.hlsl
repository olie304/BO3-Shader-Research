// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:36:49 2021

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
  float baseNormalHeight : packoffset(c10);
  float2 glossRange : packoffset(c10.y);
  float anisotropy : packoffset(c10.w);
  float3 secondColorTint : packoffset(c11);
  bool useAlphaControls : packoffset(c11.w);
  float zFeatherDistance : packoffset(c12);
  float falloffBegin : packoffset(c12.y);
  float falloffEnd : packoffset(c12.z);
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
SamplerState LinearSampler_s : register(s7);
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
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> glossMap : register(t24);
Texture2D<float4> aoMap : register(t25);
Texture2D<float4> flowMap : register(t26);
Texture2D<float4> cavityMap : register(t29);
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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
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
  r0.w = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.x = normalMap.Sample(normalSampler_s, w1.xy).z;
  r2.y = aoMap.Sample(aoSampler_s, w1.xy).x;
  r2.z = glossRange.y + -glossRange.x;
  r0.w = r0.w * r2.z + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r2.x = baseNormalHeight * r2.x;
  r2.x = r2.x * r2.x;
  r2.x = 0.333333343 * r2.x;
  r2.x = min(1, r2.x);
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.x + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.w = max(0, r0.w);
  r2.z = debugGlossOverride.x * r2.z + glossRange.x;
  r2.z = saturate(0.0588235296 * r2.z);
  r2.z = -17 * r2.z;
  r2.z = exp2(r2.z);
  r2.x = r2.x + r2.z;
  r2.x = log2(r2.x);
  r2.x = -0.0588235296 * r2.x;
  r2.x = max(0, r2.x);
  r3.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r3.xyz + r0.xyz;
  r2.x = r2.x + -r0.w;
  r3.y = debugGlossOverride.w * r2.x + r0.w;
  r0.w = debugOcclusionOverride.x + -r2.y;
  r0.w = debugOcclusionOverride.w * r0.w + r2.y;
  r2.xyz = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r2.xyz = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r2.xyz;
  r2.xyz = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r2.xyz;
  r2.xyz = viewProjectionMatrix._m30_m31_m33 + r2.xyz;
  r4.xyz = eyeOffset.xyz + v5.xyz;
  r2.w = cavityMap.Sample(LinearSampler_s, w1.xy).x;
  r5.xyzw = flowMap.Sample(LinearSampler_s, w1.xy).xyzw;
  r3.z = 0.173648 * r5.w;
  r5.xyz = r5.xyz * float3(1.9921875,1.9921875,1.9921875) + float3(-1,-1,-1);
  r6.xyz = v6.xxx ? v2.xyz : -v2.xyz;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = rsqrt(r3.w);
  r6.xyz = r6.xyz * r3.www;
  r7.xyz = v6.xxx ? v3.xyz : -v3.xyz;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = rsqrt(r3.w);
  r7.xyz = r7.xyz * r3.www;
  r8.xyz = v6.xxx ? v4.xyz : -v4.xyz;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = rsqrt(r3.w);
  r8.xyz = r8.xyz * r3.www;
  r8.xyz = r8.xyz * r5.yyy;
  r5.xyw = r7.xyz * r5.xxx + r8.xyz;
  r5.xyz = r6.xyz * r5.zzz + r5.xyw;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = rsqrt(r3.w);
  r7.xyz = r5.xyz * r3.www;
  r8.xyz = r7.yzx * r6.zxy;
  r8.xyz = r6.yzx * r7.zxy + -r8.xyz;
  r9.xyz = r8.yzx * r7.zxy;
  r7.xyz = r7.yzx * r8.zxy + -r9.xyz;
  r9.xy = (uint2)v0.xy;
  r5.w = cmp(v0.z >= 0.984375);
  r6.w = 1.01587307 * v0.z;
  r8.w = v0.z * 64 + -63;
  r5.w = r5.w ? r8.w : r6.w;
  r5.w = max(9.99999994e-09, r5.w);
  r5.w = rcp(r5.w);
  r6.w = dot(-v5.xyz, -v5.xyz);
  r6.w = rsqrt(r6.w);
  r10.xyz = -v5.xyz * r6.www;
  r9.zw = (uint2)r9.yx;
  r8.w = dot(r9.wz, float2(0.0671105608,0.00583714992));
  r8.w = frac(r8.w);
  r8.w = 52.9829178 * r8.w;
  r8.w = frac(r8.w);
  r8.w = r8.w * 6.28318548 + gameTick.w;
  sincos(r8.w, r11.x, r12.x);
  r8.w = dot(r9.zw, float2(0.0671105608,0.00583714992));
  r8.w = frac(r8.w);
  r8.w = 52.9829178 * r8.w;
  r8.w = frac(r8.w);
  r8.w = r8.w * 6.28318548 + gameTick.w;
  sincos(r8.w, r13.x, r14.x);
  r3.x = saturate(dot(r7.xyz, r10.xyz));
  r8.w = 17 * r3.y;
  r8.w = exp2(r8.w);
  r8.w = 2 + r8.w;
  r8.w = 2 / r8.w;
  r9.z = sqrt(r8.w);
  r13.yzw = r7.xyz * r3.zzz;
  r14.yzw = r5.xyz * r3.www + r13.yzw;
  r3.z = dot(r14.yzw, r14.yzw);
  r3.z = rsqrt(r3.z);
  r15.xyz = r14.yzw * r3.zzz;
  r16.xyz = secondColorTint.xyz * r0.xyz;
  r3.z = sqrt(r9.z);
  r3.z = r3.z * 0.5 + 0.5;
  r3.z = r3.z * r3.z;
  r9.z = 0.5 * r3.z;
  r3.z = -r3.z * 0.5 + 1;
  r9.w = r3.x * r3.z + r9.z;
  r3.z = r9.w * r3.z;
  r9.z = r9.z * r9.w;
  r5.xyz = r5.xyz * r3.www + -r13.yzw;
  r3.w = saturate(anisotropy);
  r3.w = 1 + -r3.w;
  r3.w = r3.w * r3.y;
  r3.w = 17 * r3.w;
  r3.w = exp2(r3.w);
  r3.w = 2 + r3.w;
  r3.w = 2 / r3.w;
  r9.w = r8.w * r3.w;
  r9.w = sqrt(r9.w);
  r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v5.yyy;
  r13.yzw = v5.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.yzw;
  r13.yzw = v5.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.yzw;
  r13.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.yzw;
  r10.w = -sunConstants.splitDepthOffset + r13.w;
  r10.w = -r10.w * 6.10351563e-05 + 1;
  r11.z = saturate(r10.w);
  r11.z = cmp(r10.w == r11.z);
  if (r11.z != 0) {
    r11.zw = float2(0,0);
    while (true) {
      r12.w = cmp(r11.z >= 3);
      if (r12.w != 0) break;
      r12.w = (uint)r11.z;
      r17.xy = -sunConstants.splitPinTransform[r12.w].xy + r13.yz;
      r15.w = max(abs(r17.x), abs(r17.y));
      r11.w = sunConstants.splitPinTransform[r12.w].z * r15.w;
      r12.w = cmp(r11.w < 1);
      if (r12.w != 0) {
        break;
      }
      r11.z = 1 + r11.z;
      r11.w = 0;
    }
  } else {
    r11.zw = float2(3,0);
  }
  r12.w = cmp(r11.z >= 3);
  if (r12.w != 0) {
    r17.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
    r18.xz = rcp(r17.xx);
    r18.y = -r18.z;
    r17.xyz = r13.yzy * r18.xyz + r17.yzy;
    r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
    r17.xyz = max(float3(0,0,0), r17.xyz);
    r17.xyz = min(r17.xyz, r18.xyz);
    r18.xy = sunConstants.sstLightingConstants.coordScale * r17.zy;
    r18.xy = floor(r18.xy);
    r15.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r18.y;
    r15.w = r15.w * sunConstants.sstLightingConstants.coordScale + r18.x;
    r15.w = (uint)r15.w;
    r15.w = (int)r15.w + (int10)sunConstants.sstLightingConstants.rootOffset;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r15.w, l(0), t23.xxxx
  r16.w = samp0[]..swiz;
    r17.w = (int)r16.w & 0x40000000;
    r18.x = (uint)r16.w << 2;
    if (r17.w == 0) {
      r17.w = (int)r16.w & 0x01ffffff;
      r19.x = (int)r15.w + (int)r17.w;
      r15.w = (uint)r16.w >> 25;
      r15.w = (uint)r15.w;
      r17.xyz = r17.xyz * r15.www;
      r17.xyz = frac(r17.xyz);
      r17.xyz = float3(128,128,128) * r17.xyz;
      r17.xyz = (uint3)r17.xyz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
    r19.z = samp0[]..swiz;
      r18.yz = (uint2)r17.zy >> int2(6,6);
      r15.w = (int)r19.z & 0xc0000000;
      r16.w = (int)r19.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
    r16.w = samp0[]..swiz;
      r16.w = r18.z ? r19.z : r16.w;
      r17.w = (uint)r16.w >> 13;
      r16.w = r18.y ? r17.w : r16.w;
      r16.w = (int)r16.w & 8191;
      r20.x = (int)r16.w + (int)r19.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
    r20.z = samp0[]..swiz;
      r19.y = 0;
      r20.y = 1;
      r18.yzw = r15.www ? r19.xyz : r20.xyz;
      r20.yz = r15.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
      r21.xy = (uint2)r17.zy >> (uint2)r20.yy;
      r21.xy = (int2)r21.xy & int2(1,1);
      r16.w = (int)r18.w & 0xc0000000;
      r17.w = (int)r18.y + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
    r17.w = samp0[]..swiz;
      r17.w = r21.y ? r18.w : r17.w;
      r19.w = (uint)r17.w >> 13;
      r17.w = r21.x ? r19.w : r17.w;
      r17.w = (int)r17.w & 8191;
      r20.x = (int)r17.w + (int)r18.y;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
    r20.w = samp0[]..swiz;
      r18.yzw = r16.www ? r18.yzw : r20.xzw;
      r18.yzw = r15.www ? r19.xyz : r18.yzw;
      r15.w = (int)r18.w & 0xc0000000;
      if (r15.w == 0) {
        r15.w = (int)-r18.z + 6;
        r19.xy = (uint2)r17.zy >> (uint2)r15.ww;
        r15.w = (int)r18.w | 0x40000000;
        bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r19.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
        bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r19.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
        r16.w = (int)r16.w * 10;
        r15.w = (uint)r15.w >> (uint)r16.w;
        r15.w = (int)r15.w & 1023;
        r19.x = (int)r15.w + (int)r18.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r19.yz = (int2)r18.zz + int2(1,2);
        r15.w = (int)-r19.y + 6;
        r20.xy = (uint2)r17.zy >> (uint2)r15.ww;
        r15.w = (int)r19.w & 0xc0000000;
        r16.w = (int)r19.w | 0x40000000;
        bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.w = (((uint)r20.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
        bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.w = (((uint)r20.x << 0) & bitmask.w) | ((uint)r17.w & ~bitmask.w);
        r17.w = (int)r17.w * 10;
        r16.w = (uint)r16.w >> (uint)r17.w;
        r16.w = (int)r16.w & 1023;
        r20.x = (int)r16.w + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
      r20.z = samp0[]..swiz;
        r20.y = r19.z;
        r20.xyz = r15.www ? r19.xyw : r20.xyz;
        r16.w = (int)-r20.y + 6;
        r19.yz = (uint2)r17.zy >> (uint2)r16.ww;
        r16.w = (int)r20.z & 0xc0000000;
        r17.w = (int)r20.z | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r19.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.z = (((uint)r19.y << 0) & bitmask.z) | ((uint)r18.z & ~bitmask.z);
        r18.z = (int)r18.z * 10;
        r17.w = (uint)r17.w >> (uint)r18.z;
        r17.w = (int)r17.w & 1023;
        r21.x = (int)r17.w + (int)r20.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
      r21.y = samp0[]..swiz;
        r19.yz = r16.ww ? r20.xz : r21.xy;
        r18.yw = r15.ww ? r19.xw : r19.yz;
      }
      r15.w = (int)r18.w & 0xc0000000;
      if (r15.w == 0) {
        if (14 == 0) r16.w = 0; else if (14+15 < 32) {         r16.w = (uint)r18.w << (32-(14 + 15)); r16.w = (uint)r16.w >> (32-14);        } else r16.w = (uint)r18.w >> 15;
        r16.w = (uint)r16.w;
        r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
        r16.w = 6.10388815e-05 * r16.w;
        r19.xy = (int2)r18.ww & int2(32767,536870912);
        r17.w = (uint)r19.x;
        r17.w = sunConstants.sstLightingConstants.constants.spanInInches * r17.w;
        r17.w = 3.05185094e-05 * r17.w;
        r18.z = (int)r17.y & 3;
        r18.z = (int)r18.z + (int)r18.y;
        r18.z = (int)r18.z + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.z, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r17.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
        bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.z = (((uint)r17.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.w = (((uint)r17.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
        r17.x = (uint)r18.z >> (uint)r19.x;
        r17.x = (int)r17.x & 255;
        r17.x = (uint)r17.x;
        r17.x = r17.x * r17.w;
        r17.x = r17.x * 0.00392156886 + r16.w;
        r17.y = (int)r19.z + 1;
        if (1 == 0) r17.z = 0; else if (1+1 < 32) {         r17.z = (uint)r17.z << (32-(1 + 1)); r17.z = (uint)r17.z >> (32-1);        } else r17.z = (uint)r17.z >> 1;
        r17.y = (int)r17.z + (int)r17.y;
        r17.y = (int)r17.y + (int)r18.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
      r17.y = samp0[]..swiz;
        r17.y = (uint)r17.y >> (uint)r19.w;
        r17.y = (int)r17.y & 0x0000ffff;
        r17.y = (uint)r17.y;
        r17.y = r17.y * r17.w;
        r16.w = r17.y * 1.52590219e-05 + r16.w;
        r18.x = r19.y ? r17.x : r16.w;
      } else {
        r16.w = (int)r18.w & 0x80000000;
        r17.x = (int)r18.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r17.x, l(0), t23.xxxx
      r17.x = samp0[]..swiz;
        r16.w = r16.w ? r17.x : 0;
        r17.x = (uint)r18.w << 2;
        r17.y = (uint)r16.w >> 16;
        r17.y = f16tof32(r17.y);
        r16.w = (int)r16.w & 0x0000ffff;
        r16.w = f16tof32(r16.w);
        r17.x = r13.y * r17.y + r17.x;
        r16.w = r13.z * r16.w + r17.x;
        r18.x = r15.w ? r16.w : r18.x;
      }
    }
    r13.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.w;
    r13.w = cmp(r18.x < r13.w);
    r17.y = r13.w ? 0 : 1;
  }
  if (r12.w == 0) {
    if (enableDitheredShadow == 0) {
      r12.w = (uint)r11.z;
      r17.zw = -sunConstants.splitPinTransform[r12.w].xy + r13.yz;
      r17.zw = sunConstants.splitPinTransform[r12.w].zz * r17.zw;
      r18.xy = r17.zw * float2(0.5,-0.5) + float2(0.5,0.5);
      r12.w = (int16)sunConstants.splitArrayOffset;
      r18.z = r12.w + r11.z;
      r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r10.w).x;
      r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
      r12.w = r13.w + r12.w;
      r12.w = saturate(-1 + r12.w);
      r13.w = r12.w * r12.w;
      r17.y = r13.w * r12.w;
    }
    if (enableDitheredShadow != 0) {
      r18.x = -r11.x;
      r12.w = (uint)r11.z;
      r11.z = 1 + r11.z;
      r11.z = min(2, r11.z);
      r11.w = 1 + -r11.w;
      r11.w = 28 * r11.w;
      r11.zw = (uint2)r11.zw;
      r17.zw = -sunConstants.splitPinTransform[r12.w].xy + r13.yz;
      r17.zw = sunConstants.splitPinTransform[r12.w].zz * r17.zw;
      r17.zw = r17.zw * float2(0.5,-0.5) + float2(0.5,0.5);
      r13.yz = -sunConstants.splitPinTransform[r11.z].xy + r13.yz;
      r13.yz = sunConstants.splitPinTransform[r11.z].zz * r13.yz;
      r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
      r18.y = r12.x;
      r18.z = r11.x;
      r13.w = 0;
      r15.w = 0;
      while (true) {
        r16.w = cmp((uint)r15.w >= 8);
        if (r16.w != 0) break;
        r16.w = cmp((uint)r11.w < (uint)r15.w);
        r19.xy = r16.ww ? r13.yz : r17.zw;
        r18.w = r16.w ? sunConstants.splitPinTransform[r11.z].w : sunConstants.splitPinTransform[r12.w].w;
        r16.w = r16.w ? r11.z : r12.w;
        r20.x = dot(icb[r15.w+0].yx, r18.xy);
        r20.y = dot(icb[r15.w+0].yx, r18.yz);
        r19.xy = r20.xy * r18.ww + r19.xy;
        r16.w = (int)r16.w + (int16)sunConstants.splitArrayOffset;
        r19.z = (uint)r16.w;
        r16.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.w).x;
        r18.w = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
        r16.w = r18.w + r16.w;
        r16.w = saturate(-1 + r16.w);
        r13.w = r16.w * 0.125 + r13.w;
        r15.w = (int)r15.w + 1;
      }
      r10.w = r13.w * r13.w;
      r17.y = r10.w * r13.w;
    }
  }
  r10.w = viewmodelSunShadowRaw & 0x0000ffff;
  if (r10.w != 0) {
    r10.w = (int)r10.w + numLights;
    r10.w = (int)r10.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.z, r10.w, l(52), t12.xxxx
  r11.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(68), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(84), t12.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(132), t12.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xyzw, r10.w, l(148), t12.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
    r11.w = dot(sunConstants.wldDir.xyz, r7.xyz);
    r11.w = abs(r11.w) * -0.200000003 + 0.400000006;
    r22.xyz = r7.xyz * r11.www + v5.xyz;
    r22.w = 1;
    r18.x = dot(r18.xyzw, r22.xyzw);
    r18.y = dot(r19.xyzw, r22.xyzw);
    r13.yz = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.yz = r13.yz + r21.zw;
    r13.yz = r13.yz * r21.xy;
    r17.zw = r11.zz / r20.xz;
    r18.xy = float2(1,1) + -r17.zw;
    r18.xy = cmp(r13.yz >= r18.xy);
    r17.zw = cmp(r17.zw >= r13.yz);
    r17.zw = (int2)r17.zw | (int2)r18.xy;
    r11.w = (int)r17.w | (int)r17.z;
    if (r11.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r10.w, l(28), t12.xxxx
    r11.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(100), t12.xyzw
    r18.x = samp0[]..swiz;
    r18.y = samp0[]..swiz;
    r18.z = samp0[]..swiz;
    r18.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.zw, r10.w, l(164), t12.xxxy
    r17.z = samp0[]..swiz;
    r17.w = samp0[]..swiz;
      r10.w = dot(r18.xyzw, r22.xyzw);
      r13.yz = saturate(r13.yz);
      r18.xy = r13.yz * r20.xz + r20.yw;
      r10.w = r10.w + r17.z;
      r10.w = r10.w / r17.w;
      r10.w = max(6.10351563e-05, r10.w);
      r11.w = (int)r11.w & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r19.x = -r11.x;
        r20.z = (uint)r11.w;
        r19.y = r12.x;
        r19.z = r11.x;
        r12.w = 0;
        r13.y = 0;
        while (true) {
          r13.z = cmp((int)r13.y >= 8);
          if (r13.z != 0) break;
          r21.x = dot(icb[r13.y+0].yx, r19.xy);
          r21.y = dot(icb[r13.y+0].yx, r19.yz);
          r20.xy = r21.xy * r11.zz + r18.xy;
          r13.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r10.w).x;
          r12.w = r13.z * 0.125 + r12.w;
          r13.y = (int)r13.y + 1;
        }
      } else {
        r18.z = (uint)r11.w;
        r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r10.w).x;
      }
      r10.w = r12.w * r12.w;
      r10.w = r10.w * r12.w;
    } else {
      r10.w = 1;
    }
    r17.y = r17.y * r10.w;
  }
  r10.w = cmp(0 < r17.y);
  if (r10.w != 0) {
    r10.w = saturate(dot(r7.xyz, sunConstants.wldDir.xyz));
    if (sunConstants.sunCookieIndex != 0) {
      r4.w = 1;
      r11.z = dot(sunConstants.sunCookieTransform[0].xyzw, r4.xyzw);
      r4.w = dot(sunConstants.sunCookieTransform[1].xyzw, r4.xyzw);
      r18.x = frac(r11.z);
      r18.y = frac(r4.w);
      r4.w = -1 + (int14)sunConstants.sunCookieIndex;
      r18.z = (uint)r4.w;
      r13.yzw = gCookieArray.SampleLevel(samplerLinear_s, r18.xyz, 0).xyz;
      r13.yzw = float3(-1,-1,-1) + r13.yzw;
      r13.yzw = sunConstants.sunCookieIntensity * r13.yzw + float3(1,1,1);
      r13.yzw = sunConstants.color.xyz * r13.yzw;
    } else {
      r13.yzw = sunConstants.color.xyz;
    }
    r4.w = dot(r5.xyz, sunConstants.wldDir.xyz);
    r4.w = -r4.w * r4.w + 1;
    r18.xyz = sqrt(r4.www);
    r19.xyz = -v5.xyz * r6.www + sunConstants.wldDir.xyz;
    r4.w = dot(r19.xyz, r19.xyz);
    r4.w = rsqrt(r4.w);
    r19.xyz = r19.xyz * r4.www;
    r4.w = dot(r19.xyz, r10.xyz);
    r4.w = saturate(1 + -r4.w);
    r6.w = r4.w * r4.w;
    r6.w = r6.w * r6.w;
    r4.w = r6.w * r4.w;
    r6.w = r10.w * r3.z + r9.z;
    r11.z = dot(r7.xyz, r19.xyz);
    r11.w = dot(r19.xyz, r8.xyz);
    r12.w = dot(r19.xyz, r5.xyz);
    r12.w = r12.w * r12.w;
    r12.w = r12.w / r8.w;
    r11.w = r11.w * r11.w;
    r11.w = r11.w / r3.w;
    r12.w = r12.w + r11.w;
    r12.w = abs(r11.z) * abs(r11.z) + r12.w;
    r6.w = r9.w * r6.w;
    r12.w = r12.w * r12.w;
    r12.w = r12.w * r6.w;
    r12.w = rcp(r12.w);
    r12.w = r12.w * r10.w;
    r12.w = 0.25 * r12.w;
    r15.w = dot(r19.xyz, r14.yzw);
    r15.w = r15.w * r15.w;
    r15.w = r15.w / r8.w;
    r11.w = r15.w + r11.w;
    r11.z = abs(r11.z) * abs(r11.z) + r11.w;
    r11.z = r11.z * r11.z;
    r6.w = r11.z * r6.w;
    r6.w = rcp(r6.w);
    r6.w = r6.w * r10.w;
    r6.w = 0.25 * r6.w;
    r19.xyz = r6.www * r16.xyz;
    r19.xyz = r19.xyz * float3(0.829999983,0.829999983,0.829999983) + r12.www;
    r11.zw = r12.ww * r4.ww;
    r4.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r4.w = r17.y * r4.w;
    r17.x = 1;
    r17.zw = sunConstants.wldDir.xy;
    r6.w = sunConstants.wldDir.z;
    r10.w = r11.w;
  } else {
    r4.w = 0;
    r13.yzw = float3(0,0,0);
    r17.xyzw = float4(0,0,0,0);
    r18.xyz = float3(0,0,0);
    r6.w = 0;
    r19.xyz = float3(0,0,0);
    r10.w = 0;
    r11.zw = float2(0,0);
  }
  r12.w = 0.0078125 * r5.w;
  r12.w = min(15, r12.w);
  r12.w = (uint)r12.w;
  r20.xy = (uint2)r9.xy >> int2(6,6);
  r20.z = (uint)r12.w << 4;
  r21.x = -r11.x;
  r22.xy = float2(0,0);
  r23.w = 0;
  r24.xyz = v5.xyz;
  r24.w = 1;
  r25.w = 1;
  r21.z = r11.x;
  r26.z = 1;
  r27.w = 1;
  r21.yw = r12.xx;
  r11.y = r21.w;
  r28.w = 1;
  r12.y = r21.x;
  r12.z = r11.x;
  r29.x = r12.x;
  r29.y = r21.x;
  r29.z = r11.x;
  r30.xyz = float3(0,0,0);
  r31.xyz = float3(0,0,0);
  r32.xyz = float3(0,0,0);
  r33.xyz = r13.yzw;
  r34.xy = r17.zw;
  r34.z = r6.w;
  r35.xyz = r18.xyz;
  r36.xyz = r19.xyz;
  r37.x = r10.w;
  r37.yz = r11.zw;
  r9.x = enableDitheredShadow;
  r9.y = r4.w;
  r38.xy = r17.xy;
  r12.w = 0;
  while (true) {
    r15.w = cmp((uint)r12.w >= numLights);
    if (r15.w != 0) break;
    r22.z = (uint)r12.w >> 5;
    r23.xyz = (int3)r20.xyz + (int3)r22.xyz;
    r15.w = visibleLights.Load(r23.xyzw).x;
    r23.xyz = r30.xyz;
    r39.xyz = r31.xyz;
    r40.xyz = r32.xyz;
    r41.xyz = r33.xyz;
    r42.xyz = r34.xyz;
    r43.xyz = r35.xyz;
    r44.xyz = r36.xyz;
    r22.zw = r38.xy;
    r16.w = r9.x;
    r18.w = r9.y;
    r45.xyz = r37.xyz;
    r19.w = r15.w;
    while (true) {
      if (r19.w == 0) break;
      r20.w = firstbitlow((uint)r19.w);
      r26.w = 1 << (int)r20.w;
      r29.w = (int)r19.w & (int)r26.w;
      if (r29.w != 0) {
        r19.w = (int)r19.w ^ (int)r26.w;
        r20.w = (int)r12.w + (int)r20.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r20.w, l(0), t12.xyzw
      r46.x = samp0[]..swiz;
      r46.y = samp0[]..swiz;
      r46.z = samp0[]..swiz;
      r46.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r20.w, l(16), t12.xyxx
      r47.x = samp0[]..swiz;
      r47.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r20.w, l(28), t12.xyzw
      r48.x = samp0[]..swiz;
      r48.y = samp0[]..swiz;
      r48.z = samp0[]..swiz;
      r48.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r20.w, l(44), t12.wxyz
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r20.w, l(60), t12.zwxy
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r20.w, l(76), t12.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r20.w, l(92), t12.zwxy
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
        if (3 == 0) r26.w = 0; else if (3+24 < 32) {         r26.w = (uint)r48.x << (32-(3 + 24)); r26.w = (uint)r26.w >> (32-3);        } else r26.w = (uint)r48.x >> 24;
        switch (r26.w) {
          case 4 :          r26.w = cmp(0 < r52.x);
          r53.x = r51.w;
          r53.yz = r52.zw;
          r54.xyz = -r53.xyz * float3(0.5,0.5,0.5) + r46.xyz;
          r55.xyz = -v5.xyz + r54.xyz;
          r29.w = dot(r53.xyz, r55.xyz);
          r29.w = saturate(-r29.w / r52.x);
          r53.xyz = r29.www * r53.xyz + r54.xyz;
          r53.xyz = r26.www ? r53.xyz : r46.xyz;
          r53.xyz = -v5.xyz + r53.xyz;
          r26.w = dot(r53.xyz, r53.xyz);
          r29.w = sqrt(r26.w);
          r30.w = r49.z * r49.z;
          r30.w = r30.w / r26.w;
          r30.w = min(1, r30.w);
          r31.w = saturate(r29.w * r48.y + r48.z);
          r29.w = saturate(r29.w * r48.w + r49.y);
          r32.w = r31.w * r31.w;
          r31.w = r31.w * -2 + 3;
          r31.w = r32.w * r31.w;
          r30.w = r31.w * r30.w;
          r31.w = r29.w * r29.w;
          r29.w = r29.w * -2 + 3;
          r29.w = r31.w * r29.w;
          r29.w = r30.w * r29.w;
          r30.w = cmp(0 < r29.w);
          if (r30.w != 0) {
            r26.w = rsqrt(r26.w);
            r54.xyz = r53.xyz * r26.www;
            r30.w = dot(r7.xyz, r54.xyz);
            if (3 == 0) r38.z = 0; else if (3+27 < 32) {             r38.z = (uint)r48.x << (32-(3 + 27)); r38.z = (uint)r38.z >> (32-3);            } else r38.z = (uint)r48.x >> 27;
            if (4 == 0) r38.w = 0; else if (4+20 < 32) {             r38.w = (uint)r48.x << (32-(4 + 20)); r38.w = (uint)r38.w >> (32-4);            } else r38.w = (uint)r48.x >> 20;
            r31.w = cmp((int)r38.z != 1);
            if (r31.w != 0) {
              r31.w = abs(r30.w) * -0.200000003 + 0.400000006;
              r55.xyz = r7.xyz * r31.www + v5.xyz;
              r50.z = r51.x;
              r55.xyz = r55.xyz + -r50.xyz;
              r31.w = max(abs(r55.y), abs(r55.z));
              r31.w = max(abs(r55.x), r31.w);
              r31.w = r51.y / r31.w;
              r31.w = r31.w + r51.z;
              r32.w = dot(r55.xyz, r55.xyz);
              r32.w = rsqrt(r32.w);
              r31.w = max(6.10351563e-05, r31.w);
              r33.w = (int)r48.x & 0x0000ffff;
              r56.w = (uint)r33.w;
              r33.w = 0;
              r34.w = 0;
              while (true) {
                r35.w = cmp((int)r34.w >= 8);
                if (r35.w != 0) break;
                r57.y = dot(icb[r34.w+0].yx, r21.xy);
                r57.z = dot(icb[r34.w+0].yx, r21.yz);
                r57.yz = r57.yz * r49.ww;
                r57.x = r57.y * r14.x;
                r57.w = r57.y * r13.x;
                r56.xyz = r55.xyz * r32.www + r57.xzw;
                r35.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r56.xyzw, r31.w).x;
                r33.w = r35.w * 0.125 + r33.w;
                r34.w = (int)r34.w + 1;
              }
            } else {
              r33.w = 1;
            }
            if (r38.w != 0) {
              r31.w = (int)r38.w + numLights;
              r31.w = (int)r31.w + -1;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.w, r31.w, l(52), t12.xxxx
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r31.w, l(100), t12.xyzw
            r55.x = samp0[]..swiz;
            r55.y = samp0[]..swiz;
            r55.z = samp0[]..swiz;
            r55.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r31.w, l(116), t12.xyzw
            r56.x = samp0[]..swiz;
            r56.y = samp0[]..swiz;
            r56.z = samp0[]..swiz;
            r56.w = samp0[]..swiz;
              r34.w = abs(r30.w) * -0.200000003 + 0.400000006;
              r25.xyz = r7.xyz * r34.www + v5.xyz;
              r34.w = dot(r55.xyzw, r25.xyzw);
              r35.w = dot(r56.xyzw, r25.xyzw);
              r36.w = cmp(r35.w < r34.w);
              if (r36.w == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r31.w, l(68), t12.xyzw
              r55.x = samp0[]..swiz;
              r55.y = samp0[]..swiz;
              r55.z = samp0[]..swiz;
              r55.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r31.w, l(84), t12.xyzw
              r56.x = samp0[]..swiz;
              r56.y = samp0[]..swiz;
              r56.z = samp0[]..swiz;
              r56.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r31.w, l(132), t12.xyzw
              r57.x = samp0[]..swiz;
              r57.y = samp0[]..swiz;
              r57.z = samp0[]..swiz;
              r57.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r31.w, l(148), t12.xyzw
              r58.x = samp0[]..swiz;
              r58.y = samp0[]..swiz;
              r58.z = samp0[]..swiz;
              r58.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.zw, r31.w, l(164), t12.xxxy
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
                r55.x = dot(r55.xyzw, r25.xyzw);
                r55.y = dot(r56.xyzw, r25.xyzw);
                r25.xy = r55.xy / r35.ww;
                r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.xy = r25.xy + r58.zw;
                r25.xy = r25.xy * r58.xy;
                r55.xy = r32.ww / r57.xz;
                r55.zw = float2(1,1) + -r55.xy;
                r55.zw = cmp(r25.xy >= r55.zw);
                r55.xy = cmp(r55.xy >= r25.xy);
                r55.xy = (int2)r55.xy | (int2)r55.zw;
                r25.z = (int)r55.y | (int)r55.x;
                r25.xy = saturate(r25.xy);
                r55.xy = r25.xy * r57.xz + r57.yw;
                r25.x = r38.w * r35.w;
                r25.y = r38.z * r35.w + r34.w;
                r25.x = r25.y / r25.x;
              } else {
                r25.z = -1;
              }
              r25.y = (int)r36.w | (int)r25.z;
              if (r25.y == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.y, r31.w, l(28), t12.xxxx
              r25.y = samp0[]..swiz;
                r25.x = max(6.10351563e-05, r25.x);
                r25.y = (int)r25.y & 0x0000ffff;
                if (r16.w != 0) {
                  r56.z = (uint)r25.y;
                  r25.z = 0;
                  r31.w = 0;
                  while (true) {
                    r34.w = cmp((int)r31.w >= 8);
                    if (r34.w != 0) break;
                    r57.x = dot(icb[r31.w+0].yx, r21.xw);
                    r57.y = dot(icb[r31.w+0].xy, r11.xy);
                    r56.xy = r57.xy * r32.ww + r55.xy;
                    r34.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r56.xyz, r25.x).x;
                    r25.z = r34.w * 0.125 + r25.z;
                    r31.w = (int)r31.w + 1;
                  }
                } else {
                  r55.z = (uint)r25.y;
                  r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r55.xyz, r25.x).x;
                }
                r25.x = r25.z * r25.z;
                r25.x = r25.x * r25.z;
              } else {
                r25.x = 1;
              }
              r33.w = r33.w * r25.x;
            }
            r25.x = r33.w * r29.w;
            r25.y = cmp(0 < r25.x);
            if (r25.y != 0) {
              r30.w = saturate(r30.w);
              r25.y = dot(r5.xyz, r54.xyz);
              r25.y = -r25.y * r25.y + 1;
              r55.xyz = sqrt(r25.yyy);
              r53.xyz = r53.xyz * r26.www + r10.xyz;
              r25.y = dot(r53.xyz, r53.xyz);
              r25.y = rsqrt(r25.y);
              r53.xyz = r53.xyz * r25.yyy;
              r25.y = dot(r53.xyz, r10.xyz);
              r25.y = saturate(1 + -r25.y);
              r26.w = r25.y * r25.y;
              r26.w = r26.w * r26.w;
              r25.y = r26.w * r25.y;
              r26.w = r30.w * r3.z + r9.z;
              r31.w = dot(r7.xyz, r53.xyz);
              r32.w = dot(r53.xyz, r8.xyz);
              r34.w = dot(r53.xyz, r5.xyz);
              r34.w = r34.w * r34.w;
              r34.w = r34.w / r8.w;
              r32.w = r32.w * r32.w;
              r32.w = r32.w / r3.w;
              r34.w = r34.w + r32.w;
              r34.w = abs(r31.w) * abs(r31.w) + r34.w;
              r26.w = r26.w * r9.w;
              r34.w = r34.w * r34.w;
              r34.w = r34.w * r26.w;
              r34.w = rcp(r34.w);
              r34.w = r34.w * r30.w;
              r34.w = 0.25 * r34.w;
              r35.w = dot(r53.xyz, r14.yzw);
              r35.w = r35.w * r35.w;
              r35.w = r35.w / r8.w;
              r32.w = r35.w + r32.w;
              r31.w = abs(r31.w) * abs(r31.w) + r32.w;
              r31.w = r31.w * r31.w;
              r26.w = r31.w * r26.w;
              r26.w = rcp(r26.w);
              r26.w = r26.w * r30.w;
              r26.w = 0.25 * r26.w;
              r53.xyz = r26.www * r16.xyz;
              r53.xyz = r53.xyz * float3(0.829999983,0.829999983,0.829999983) + r34.www;
              r25.y = r34.w * r25.y;
              r47.z = r46.w;
              r26.w = dot(r47.zxy, float3(0.212599993,0.715200007,0.0722000003));
              r26.w = r26.w * r25.x;
              r30.w = cmp(r18.w < r26.w);
              if (r30.w != 0) {
                r30.w = r22.z * r22.w;
                r56.xyz = r30.www * r41.xyz;
                r23.xyz = r56.xyz * r43.xyz + r23.xyz;
                r40.xyz = r56.xyz * r44.xyz + r40.xyz;
                r39.xyz = r56.xyz * r45.xyz + r39.xyz;
                r22.w = r33.w;
                r45.xyz = r25.yyy;
                r41.xyz = r47.zxy;
                r42.xyz = r54.xyz;
                r43.xyz = r55.xyz;
                r44.xyz = r53.xyz;
                r18.w = r26.w;
                r22.z = r29.w;
              } else {
                r54.xyz = r25.xxx * r47.zxy;
                r23.xyz = r54.xyz * r55.zzz + r23.xyz;
                r40.xyz = r54.xyz * r53.xyz + r40.xyz;
                r39.xyz = r54.xyz * r25.yyy + r39.xyz;
              }
            }
          }
          break;
          case 2 :        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r20.w, l(108), t12.zwxy
        r53.x = samp0[]..swiz;
        r53.y = samp0[]..swiz;
        r53.z = samp0[]..swiz;
        r53.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r20.w, l(124), t12.xyzw
        r54.x = samp0[]..swiz;
        r54.y = samp0[]..swiz;
        r54.z = samp0[]..swiz;
        r54.w = samp0[]..swiz;
          r55.xy = r53.xy;
          r55.zw = r54.xy;
          r25.x = dot(r55.xyzw, r24.xyzw);
          r25.y = cmp(r25.x < 1);
          if (r25.y != 0) {
            r56.xyz = float3(1,1,1);
            r25.y = 0;
          } else {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r20.w, l(172), t12.yzwx
          r57.x = samp0[]..swiz;
          r57.y = samp0[]..swiz;
          r57.z = samp0[]..swiz;
          r57.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r20.w, l(188), t12.wxyz
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.xyzw, r20.w, l(204), t12.xyzw
          r59.x = samp0[]..swiz;
          r59.y = samp0[]..swiz;
          r59.z = samp0[]..swiz;
          r59.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.w, r20.w, l(236), t12.xxxx
          r26.w = samp0[]..swiz;
            r46.xyz = -v5.xyz + r46.xyz;
            r29.w = r49.z * r49.z;
            r30.w = dot(r46.xyz, r46.xyz);
            r29.w = r29.w / r30.w;
            r29.w = min(1, r29.w);
            r30.w = saturate(r25.x * r48.y + r48.z);
            r31.w = saturate(r25.x * r48.w + r49.y);
            r32.w = r30.w * r30.w;
            r30.w = r30.w * -2 + 3;
            r30.w = r32.w * r30.w;
            r29.w = r30.w * r29.w;
            r30.w = r31.w * r31.w;
            r31.w = r31.w * -2 + 3;
            r30.w = r31.w * r30.w;
            r29.w = r30.w * r29.w;
            r60.xy = r50.xy;
            r60.zw = r51.xy;
            r46.x = dot(r60.xyzw, r24.xyzw);
            r60.xy = r51.zw;
            r60.zw = r52.zw;
            r46.y = dot(r60.xyzw, r24.xyzw);
            r26.xy = r46.xy / r25.xx;
            r25.x = cmp(r57.w < 0.00048828125);
            if (r25.x != 0) {
              r58.y = r59.x;
              r38.zw = saturate(abs(r26.xy) * r58.zw + r58.xy);
              r46.xy = r38.zw * r38.zw;
              r38.zw = r38.zw * float2(-2,-2) + float2(3,3);
              r38.zw = r46.xy * r38.zw;
              r25.x = r38.z * r38.w;
            } else {
              r57.w = r58.y;
              r57.xyzw = saturate(r57.xyzw * abs(r26.yyxx));
              r57.xyzw = log2(r57.xyzw);
              r57.xyzw = r58.xxxx * r57.xyzw;
              r57.xyzw = exp2(r57.xyzw);
              r38.zw = r57.xy + r57.zw;
              r38.zw = log2(r38.zw);
              r38.zw = r59.xx * r38.zw;
              r38.zw = exp2(r38.zw);
              r30.w = r58.z * r38.z;
              r31.w = r58.w * r38.w + -1;
              r30.w = r58.w * r38.w + -r30.w;
              r30.w = saturate(r31.w / r30.w);
              r31.w = r30.w * r30.w;
              r30.w = r30.w * -2 + 3;
              r25.x = r31.w * r30.w;
            }
            r25.y = r29.w * r25.x;
            r25.x = (int)r26.w & 255;
            if (r25.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyz, r20.w, l(220), t12.xyzx
            r46.x = samp0[]..swiz;
            r46.y = samp0[]..swiz;
            r46.z = samp0[]..swiz;
              r26.w = dot(r59.yzw, r26.xyz);
              r26.x = dot(r46.xyz, r26.xyz);
              r46.xy = frac(r26.wx);
              r25.x = (int)r25.x + -1;
              r46.z = (uint)r25.x;
              r56.xyz = gCookieArray.SampleLevel(samplerLinear_s, r46.xyz, 0).xyz;
            } else {
              r56.xyz = float3(1,1,1);
            }
          }
          r25.x = cmp(0 < r25.y);
          if (r25.x != 0) {
            r49.yz = r50.zw;
            r26.xyw = -v5.xyz + r49.xyz;
            r25.x = dot(r26.xyw, r26.xyw);
            r25.x = rsqrt(r25.x);
            r46.xyz = r26.xyw * r25.xxx;
            r29.w = dot(r7.xyz, r46.xyz);
            if (3 == 0) r38.z = 0; else if (3+27 < 32) {             r38.z = (uint)r48.x << (32-(3 + 27)); r38.z = (uint)r38.z >> (32-3);            } else r38.z = (uint)r48.x >> 27;
            if (4 == 0) r38.w = 0; else if (4+20 < 32) {             r38.w = (uint)r48.x << (32-(4 + 20)); r38.w = (uint)r38.w >> (32-4);            } else r38.w = (uint)r48.x >> 20;
            r30.w = cmp((int)r38.z != 1);
            if (r30.w != 0) {
              r30.w = abs(r29.w) * -0.200000003 + 0.400000006;
              r27.xyz = r7.xyz * r30.www + v5.xyz;
              r53.xy = r52.xy;
              r30.w = dot(r53.xyzw, r27.xyzw);
              r31.w = dot(r55.xyzw, r27.xyzw);
              r32.w = cmp(r31.w >= r30.w);
              if (r32.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xy, r20.w, l(140), t12.xyxx
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
                r50.zw = r51.xy;
                r49.x = dot(r50.xyzw, r27.xyzw);
                r52.xy = r51.zw;
                r49.y = dot(r52.xyzw, r27.xyzw);
                r27.xy = r49.xy / r31.ww;
                r27.xy = saturate(r27.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r27.xy = r27.xy * r54.zx + r54.wy;
                r20.w = r30.w / r31.w;
                r20.w = max(6.10351563e-05, r20.w);
                r30.w = (int)r48.x & 0x0000ffff;
                if (r16.w != 0) {
                  r48.z = (uint)r30.w;
                  r31.w = 0;
                  r32.w = 0;
                  while (true) {
                    r34.w = cmp((int)r32.w >= 8);
                    if (r34.w != 0) break;
                    r49.x = dot(icb[r32.w+0].xy, r12.xy);
                    r49.y = dot(icb[r32.w+0].yx, r12.xz);
                    r48.xy = r49.xy * r49.ww + r27.xy;
                    r34.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r48.xyz, r20.w).x;
                    r31.w = r34.w * 0.125 + r31.w;
                    r32.w = (int)r32.w + 1;
                  }
                } else {
                  r27.z = (uint)r30.w;
                  r31.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r20.w).x;
                }
                r20.w = r31.w * r31.w;
                r20.w = r20.w * r31.w;
              } else {
                r20.w = 1;
              }
            } else {
              r20.w = 1;
            }
            if (r38.w != 0) {
              r27.x = (int)r38.w + numLights;
              r27.x = (int)r27.x + -1;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.y, r27.x, l(52), t12.xxxx
            r27.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r27.x, l(68), t12.xyzw
            r48.x = samp0[]..swiz;
            r48.y = samp0[]..swiz;
            r48.z = samp0[]..swiz;
            r48.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r27.x, l(84), t12.xyzw
            r49.x = samp0[]..swiz;
            r49.y = samp0[]..swiz;
            r49.z = samp0[]..swiz;
            r49.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r27.x, l(100), t12.xyzw
            r50.x = samp0[]..swiz;
            r50.y = samp0[]..swiz;
            r50.z = samp0[]..swiz;
            r50.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r27.x, l(116), t12.xyzw
            r51.x = samp0[]..swiz;
            r51.y = samp0[]..swiz;
            r51.z = samp0[]..swiz;
            r51.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r27.x, l(132), t12.xyzw
            r52.x = samp0[]..swiz;
            r52.y = samp0[]..swiz;
            r52.z = samp0[]..swiz;
            r52.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r27.x, l(148), t12.xyzw
            r53.x = samp0[]..swiz;
            r53.y = samp0[]..swiz;
            r53.z = samp0[]..swiz;
            r53.w = samp0[]..swiz;
              r27.z = abs(r29.w) * -0.200000003 + 0.400000006;
              r28.xyz = r7.xyz * r27.zzz + v5.xyz;
              r48.x = dot(r48.xyzw, r28.xyzw);
              r48.y = dot(r49.xyzw, r28.xyzw);
              r27.z = dot(r50.xyzw, r28.xyzw);
              r28.x = dot(r51.xyzw, r28.xyzw);
              r28.y = cmp(r28.x < r27.z);
              r38.zw = r48.xy / r28.xx;
              r38.zw = r38.zw * float2(0.5,-0.5) + float2(0.5,0.5);
              r38.zw = r38.zw + r53.zw;
              r38.zw = r38.zw * r53.xy;
              r48.xy = r27.yy / r52.xz;
              r48.zw = float2(1,1) + -r48.xy;
              r48.zw = cmp(r38.zw >= r48.zw);
              r48.xy = cmp(r48.xy >= r38.zw);
              r48.xy = (int2)r48.xy | (int2)r48.zw;
              r28.z = (int)r48.y | (int)r48.x;
              r28.y = (int)r28.y | (int)r28.z;
              if (r28.y == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.y, r27.x, l(28), t12.xxxx
              r28.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xy, r27.x, l(164), t12.xyxx
              r48.x = samp0[]..swiz;
              r48.y = samp0[]..swiz;
                r38.zw = saturate(r38.zw);
                r49.xy = r38.zw * r52.xz + r52.yw;
                r27.x = r48.y * r28.x;
                r27.z = r48.x * r28.x + r27.z;
                r27.x = r27.z / r27.x;
                r27.x = max(6.10351563e-05, r27.x);
                r27.z = r28.y ? 0.000000 : 0;
                if (r16.w != 0) {
                  r28.z = (uint)r27.z;
                  r30.w = 0;
                  r32.w = 0;
                  while (true) {
                    r34.w = cmp((int)r32.w >= 8);
                    if (r34.w != 0) break;
                    r48.x = dot(icb[r32.w+0].xy, r29.xy);
                    r48.y = dot(icb[r32.w+0].yx, r29.xz);
                    r28.xy = r48.xy * r27.yy + r49.xy;
                    r28.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r27.x).x;
                    r30.w = r28.x * 0.125 + r30.w;
                    r32.w = (int)r32.w + 1;
                  }
                } else {
                  r49.z = (uint)r27.z;
                  r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r49.xyz, r27.x).x;
                }
                r27.x = r30.w * r30.w;
                r27.x = r27.x * r30.w;
              } else {
                r27.x = 1;
              }
              r20.w = r27.x * r20.w;
            }
            r27.x = r25.y * r20.w;
            r27.y = cmp(0 < r27.x);
            if (r27.y != 0) {
              r29.w = saturate(r29.w);
              r47.w = r46.w;
              r28.xyz = r56.xyz * r47.wxy;
              r27.y = dot(r5.xyz, r46.xyz);
              r27.y = -r27.y * r27.y + 1;
              r47.xyz = sqrt(r27.yyy);
              r26.xyw = r26.xyw * r25.xxx + r10.xyz;
              r25.x = dot(r26.xyw, r26.xyw);
              r25.x = rsqrt(r25.x);
              r26.xyw = r26.xyw * r25.xxx;
              r25.x = dot(r26.xyw, r10.xyz);
              r25.x = saturate(1 + -r25.x);
              r27.y = r25.x * r25.x;
              r27.y = r27.y * r27.y;
              r25.x = r27.y * r25.x;
              r27.y = r29.w * r3.z + r9.z;
              r27.z = dot(r7.xyz, r26.xyw);
              r32.w = dot(r26.xyw, r8.xyz);
              r34.w = dot(r26.xyw, r5.xyz);
              r34.w = r34.w * r34.w;
              r34.w = r34.w / r8.w;
              r32.w = r32.w * r32.w;
              r32.w = r32.w / r3.w;
              r34.w = r34.w + r32.w;
              r34.w = abs(r27.z) * abs(r27.z) + r34.w;
              r27.y = r27.y * r9.w;
              r34.w = r34.w * r34.w;
              r34.w = r34.w * r27.y;
              r34.w = rcp(r34.w);
              r34.w = r34.w * r29.w;
              r34.w = 0.25 * r34.w;
              r26.x = dot(r26.xyw, r14.yzw);
              r26.x = r26.x * r26.x;
              r26.x = r26.x / r8.w;
              r26.x = r26.x + r32.w;
              r26.x = abs(r27.z) * abs(r27.z) + r26.x;
              r26.x = r26.x * r26.x;
              r26.x = r26.x * r27.y;
              r26.x = rcp(r26.x);
              r26.x = r26.x * r29.w;
              r26.x = 0.25 * r26.x;
              r26.xyw = r26.xxx * r16.xyz;
              r26.xyw = r26.xyw * float3(0.829999983,0.829999983,0.829999983) + r34.www;
              r25.x = r34.w * r25.x;
              r27.y = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r27.y = r27.x * r27.y;
              r27.z = cmp(r18.w < r27.y);
              if (r27.z != 0) {
                r27.z = r22.z * r22.w;
                r48.xyz = r27.zzz * r41.xyz;
                r23.xyz = r48.xyz * r43.xyz + r23.xyz;
                r40.xyz = r48.xyz * r44.xyz + r40.xyz;
                r39.xyz = r48.xyz * r45.xyz + r39.xyz;
                r22.w = r20.w;
                r45.xyz = r25.xxx;
                r41.xyz = r28.xyz;
                r42.xyz = r46.xyz;
                r43.xyz = r47.xyz;
                r44.xyz = r26.xyw;
                r18.w = r27.y;
                r22.z = r25.y;
              } else {
                r27.xyz = r28.xyz * r27.xxx;
                r23.xyz = r27.xyz * r47.zzz + r23.xyz;
                r40.xyz = r27.xyz * r26.xyw + r40.xyz;
                r39.xyz = r27.xyz * r25.xxx + r39.xyz;
              }
            }
          }
          break;
          default :
          break;
        }
      }
    }
    r30.xyz = r23.xyz;
    r31.xyz = r39.xyz;
    r32.xyz = r40.xyz;
    r33.xyz = r41.xyz;
    r34.xyz = r42.xyz;
    r35.xyz = r43.xyz;
    r36.xyz = r44.xyz;
    r38.xy = r22.zw;
    r9.y = r18.w;
    r37.xyz = r45.xyz;
    r12.w = (int)r12.w + 32;
  }
  r5.z = 0;
  r5.xy = float2(1,-1) * r34.yx;
  r8.xyz = r34.zxy * r5.yzx;
  r8.xyz = r34.yzx * r5.zxy + -r8.xyz;
  r9.xyz = viewProjectionMatrix._m10_m11_m13 * r4.yyy;
  r9.xyz = r4.xxx * viewProjectionMatrix._m00_m01_m03 + r9.xyz;
  r9.xyz = r4.zzz * viewProjectionMatrix._m20_m21_m23 + r9.xyz;
  r9.xyz = r9.xyz + r2.xyz;
  r11.z = rcp(r9.z);
  r3.zw = r11.zz * r9.xy;
  r11.xy = r3.zw * float2(0.5,-0.5) + float2(0.5,0.5);
  r4.xyz = r34.xyz * float3(2.4000001,2.4000001,2.4000001) + r4.xyz;
  r3.z = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r3.z = frac(r3.z);
  r3.z = 52.9829178 * r3.z;
  r3.z = frac(r3.z);
  r3.w = 3.14159989 * r3.z;
  sincos(r3.w, r9.x, r12.x);
  r9.xyw = r9.xxx * r8.xyz;
  r9.xyw = r12.xxx * r5.xyz + r9.xyw;
  r9.xyw = r9.xyw * float3(0.119999997,0.119999997,0.119999997) + r4.xyz;
  r12.xyz = viewProjectionMatrix._m10_m11_m13 * r9.yyy;
  r12.xyz = r9.xxx * viewProjectionMatrix._m00_m01_m03 + r12.xyz;
  r9.xyw = r9.www * viewProjectionMatrix._m20_m21_m23 + r12.xyz;
  r9.xyw = r9.xyw + r2.xyz;
  r9.xy = float2(0.5,-0.5) * r9.xy;
  r12.z = rcp(r9.w);
  r12.xy = r9.xy * r12.zz + float2(0.5,0.5);
  r13.xyz = -r11.xyz;
  r9.xyw = r13.xyz + r12.xyz;
  r12.xyz = r3.zzz * float3(3.14159989,0.5,0.5) + float3(3.14159989,0.333333343,1);
  sincos(r12.x, r12.x, r14.x);
  r8.xyz = r12.xxx * r8.xyz;
  r5.xyz = r14.xxx * r5.xyz + r8.xyz;
  r4.xyz = r5.xyz * float3(0.119999997,0.119999997,0.119999997) + r4.xyz;
  r5.xyz = viewProjectionMatrix._m10_m11_m13 * r4.yyy;
  r4.xyw = r4.xxx * viewProjectionMatrix._m00_m01_m03 + r5.xyz;
  r4.xyz = r4.zzz * viewProjectionMatrix._m20_m21_m23 + r4.xyw;
  r2.xyz = r4.xyz + r2.xyz;
  r2.xy = float2(0.5,-0.5) * r2.xy;
  r4.z = rcp(r2.z);
  r4.xy = r2.xy * r4.zz + r13.xy;
  r13.w = 0.5;
  r2.xyz = r4.xyz + r13.wwz;
  r3.w = dot(renderTargetSize.zw, renderTargetSize.zw);
  r3.w = sqrt(r3.w);
  r4.x = dot(r9.xy, r9.xy);
  r4.x = sqrt(r4.x);
  r4.x = rcp(r4.x);
  r3.w = r4.x * r3.w;
  r4.xy = float2(0.117647059,0.117647059) * r12.yz;
  r4.xy = r4.xy * r4.xy;
  x1[0].x = r4.x;
  r5.xyz = r9.xyw * r4.xxx + r11.xyz;
  r4.zw = cmp(r3.ww < r4.xy);
  r5.xy = renderTargetSize.xy * r5.xy;
  r8.xy = (int2)r5.xy;
  r8.zw = float2(0,0);
  r5.x = floatZSampler.Load(r8.xyz).x;
  r5.y = cmp(r5.x >= 0.984375);
  r6.w = 1.01587307 * r5.x;
  r5.x = r5.x * 64 + -63;
  r5.x = r5.y ? r5.x : r6.w;
  r5.x = max(9.99999994e-09, r5.x);
  r5.x = rcp(r5.x);
  x2[0].x = r5.x;
  r5.y = 0.0419999994 + r5.x;
  r5.y = r5.z * r5.y;
  r5.y = cmp(1 < r5.y);
  r5.y = r5.y ? 1.000000 : 0;
  r4.z = r4.z ? r5.y : 1;
  x0[0].x = r4.z;
  x1[1].x = r4.y;
  r8.xyz = r2.xyz * r4.yyy + r11.xyz;
  r5.yz = renderTargetSize.xy * r8.xy;
  r12.xy = (int2)r5.yz;
  r12.zw = float2(0,0);
  r5.y = floatZSampler.Load(r12.xyz).x;
  r5.z = cmp(r5.y >= 0.984375);
  r6.w = 1.01587307 * r5.y;
  r5.y = r5.y * 64 + -63;
  r5.y = r5.z ? r5.y : r6.w;
  r5.y = max(9.99999994e-09, r5.y);
  r5.y = rcp(r5.y);
  x2[1].x = r5.y;
  r5.z = 0.0419999994 + r5.y;
  r5.z = r8.z * r5.z;
  r5.z = cmp(1 < r5.z);
  r5.z = r5.z ? 1.000000 : 0;
  r4.w = r4.w ? r5.z : 1;
  x0[1].x = r4.w;
  r5.z = r4.z + r4.w;
  r5.z = cmp(r5.z != 0.000000);
  if (r5.z != 0) {
    r8.xy = r3.zz * float2(0.5,0.5) + float2(1.33333337,2);
    r8.xy = float2(0.117647059,0.117647059) * r8.xy;
    r8.xy = r8.xy * r8.xy + -r4.xy;
    r4.x = r4.z * r8.x + r4.x;
    x1[0].x = r4.x;
    r8.xzw = r9.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r3.w < r4.x);
    r8.xz = renderTargetSize.xy * r8.xz;
    r12.xy = (int2)r8.xz;
    r12.zw = float2(0,0);
    r5.z = floatZSampler.Load(r12.xyz).x;
    r6.w = cmp(r5.z >= 0.984375);
    r8.x = 1.01587307 * r5.z;
    r5.z = r5.z * 64 + -63;
    r5.z = r6.w ? r5.z : r8.x;
    r5.z = max(9.99999994e-09, r5.z);
    r5.z = rcp(r5.z);
    r5.x = r4.x ? r5.z : r5.x;
    x2[0].x = r5.x;
    r5.x = 0.0419999994 + r5.z;
    r5.x = r8.w * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.z;
    r4.x = r4.x ? r5.x : r4.z;
    x0[0].x = r4.x;
    r4.y = r4.w * r8.y + r4.y;
    x1[1].x = r4.y;
    r8.xyz = r2.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xz = renderTargetSize.xy * r8.xy;
    r12.xy = (int2)r5.xz;
    r12.zw = float2(0,0);
    r4.z = floatZSampler.Load(r12.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.z = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.z;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = r4.y ? r4.z : r5.y;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r8.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r3.zz * float2(0.5,0.5) + float2(2.33333325,3);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r9.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r5.xyz = r2.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r3.zz * float2(0.5,0.5) + float2(3.33333325,4);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r9.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r5.xyz = r2.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r3.zz * float2(0.5,0.5) + float2(4.33333349,5);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r9.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r5.xyz = r2.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r3.zz * float2(0.5,0.5) + float2(5.33333349,6);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r9.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r5.xyz = r2.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r3.zz * float2(0.5,0.5) + float2(6.33333349,7);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r9.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r3.w < r4.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[0].x;
    r5.x = r4.x ? r4.z : r5.x;
    x2[0].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.x = r4.x ? r4.z : r4.w;
    x0[0].x = r4.x;
    r4.z = x1[1].x;
    r4.w = x0[1].x;
    r4.y = r4.y * r4.y + -r4.z;
    r4.y = r4.w * r4.y + r4.z;
    x1[1].x = r4.y;
    r5.xyz = r2.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r3.w < r4.y);
    r5.xy = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r5.xy;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.y = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.y;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = x2[1].x;
    r5.x = r4.y ? r4.z : r5.x;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.z * r4.z;
    r4.z = cmp(1 < r4.z);
    r4.z = r4.z ? 1.000000 : 0;
    r4.z = r4.w * r4.z;
    r4.y = r4.y ? r4.z : r4.w;
    x0[1].x = r4.y;
    r4.x = r4.x + r4.y;
    r4.x = cmp(r4.x == 0.000000);
  } else {
    r4.x = -1;
  }
  if (r4.x == 0) {
    r4.xy = r3.zz * float2(0.5,0.5) + float2(7.33333349,8);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r3.z = x1[0].x;
    r4.z = x0[0].x;
    r4.x = r4.x * r4.x + -r3.z;
    r3.z = r4.z * r4.x + r3.z;
    r5.xyz = r9.xyw * r3.zzz + r11.xyz;
    r3.z = cmp(r3.w < r3.z);
    r4.xw = renderTargetSize.xy * r5.xy;
    r8.xy = (int2)r4.xw;
    r8.zw = float2(0,0);
    r4.x = floatZSampler.Load(r8.xyz).x;
    r4.w = cmp(r4.x >= 0.984375);
    r5.x = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.w ? r4.x : r5.x;
    r4.x = max(9.99999994e-09, r4.x);
    r4.x = rcp(r4.x);
    r4.w = x2[0].x;
    r4.w = r3.z ? r4.x : r4.w;
    x2[0].x = r4.w;
    r4.x = 0.0419999994 + r4.x;
    r4.x = r5.z * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.z * r4.x;
    r3.z = r3.z ? r4.x : r4.z;
    x0[0].x = r3.z;
    r3.z = x1[1].x;
    r4.x = x0[1].x;
    r4.y = r4.y * r4.y + -r3.z;
    r3.z = r4.x * r4.y + r3.z;
    r2.xyz = r2.xyz * r3.zzz + r11.xyz;
    r3.z = cmp(r3.w < r3.z);
    r2.xy = renderTargetSize.xy * r2.xy;
    r8.xy = (int2)r2.xy;
    r8.zw = float2(0,0);
    r2.x = floatZSampler.Load(r8.xyz).x;
    r2.y = cmp(r2.x >= 0.984375);
    r3.w = 1.01587307 * r2.x;
    r2.x = r2.x * 64 + -63;
    r2.x = r2.y ? r2.x : r3.w;
    r2.x = max(9.99999994e-09, r2.x);
    r2.x = rcp(r2.x);
    r2.y = x2[1].x;
    r2.y = r3.z ? r2.x : r2.y;
    x2[1].x = r2.y;
    r2.x = 0.0419999994 + r2.x;
    r2.x = r2.z * r2.x;
    r2.x = cmp(1 < r2.x);
    r2.x = r2.x ? 1.000000 : 0;
    r2.x = r4.x * r2.x;
    r2.x = r3.z ? r2.x : r4.x;
    x0[1].x = r2.x;
  }
  r2.x = x2[0].x;
  r2.x = r2.x + -r9.z;
  r2.x = cmp(2.4000001 < abs(r2.x));
  r2.y = x0[0].x;
  r2.y = -r2.y * 0.5 + 1;
  r2.x = r2.x ? 0.5 : r2.y;
  r2.y = x2[1].x;
  r2.y = r2.y + -r9.z;
  r2.y = cmp(2.4000001 < abs(r2.y));
  r2.z = x0[1].x;
  r2.z = 0.5 * r2.z;
  r2.y = r2.y ? -0.5 : -r2.z;
  r2.x = r2.x + r2.y;
  r2.x = saturate(1 + -r2.x);
  r2.y = r2.x * -2 + 3;
  r2.x = r2.x * r2.x;
  r2.x = r2.y * r2.x;
  r2.x = min(r38.y, r2.x);
  r2.x = r38.x * r2.x;
  r2.xyz = r2.xxx * r33.xyz;
  r4.xyz = r2.xyz * r35.xyz + r30.xyz;
  r5.xyz = r2.xyz * r36.xyz + r32.xyz;
  r2.xyz = r2.xyz * r37.xyz + r31.xyz;
  r3.z = 1 + -r3.y;
  r3.w = 5 * r3.z;
  r4.w = r3.z * 5 + -2.5;
  r4.w = saturate(0.400000006 * r4.w);
  r4.w = 100 * r4.w;
  r8.xy = -r3.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r8.x);
  r6.w = r6.w * r3.x;
  r6.w = 9.1368103 * r6.w;
  r8.x = r3.w * r3.z;
  r8.x = -r8.x * 2.0159049 + r8.y;
  r8.x = exp2(r8.x);
  r8.x = r8.x * r3.x;
  r8.x = 9.70808983 * r8.x;
  r6.w = max(r8.x, r6.w);
  r6.w = max(1.26815999, r6.w);
  r8.xyz = r15.zxy * r10.xyz;
  r8.xyz = r10.zxy * r15.xyz + -r8.xyz;
  r9.xyz = r15.zxy * r8.xyz;
  r8.xyz = r15.yzx * r8.yzx + -r9.xyz;
  r8.xyz = r8.xyz + -r7.xyz;
  r8.xyz = anisotropy * r8.xyz + r7.xyz;
  r8.w = dot(r8.xyz, r8.xyz);
  r8.w = rsqrt(r8.w);
  r8.xyz = r8.xyz * r8.www;
  r8.w = dot(-r10.xyz, r8.xyz);
  r8.w = r8.w + r8.w;
  r8.xyz = r8.xyz * -r8.www + -r10.xyz;
  r9.xyz = r15.xyz * r15.xyz;
  r11.xy = float2(0,0);
  r12.w = 0;
  r13.yz = float2(0,1);
  r14.x = 1;
  r15.xyzw = float4(0,0,0,0);
  r16.yzw = float3(0,0,0);
  r9.w = 0;
  r10.w = 0;
  while (true) {
    r11.w = cmp((uint)r10.w >= numRefProbes);
    if (r11.w != 0) break;
    r11.z = (uint)r10.w >> 5;
    r12.xyz = (int3)r11.xyz + (int3)r20.xyz;
    r11.z = visibleProbes.Load(r12.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(0), t15.wxyz
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(16), t15.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(32), t15.yxwz
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r10.w, l(48), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r10.w, l(64), t15.zwxy
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r10.w, l(80), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xy, r10.w, l(96), t15.xyxx
  r12.x = samp0[]..swiz;
  r12.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.w, l(116), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(132), t15.zwxy
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(148), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(164), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(180), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(196), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xy, r10.w, l(212), t15.xyxx
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
    r31.xyz = v5.xyz + -r17.yzw;
    r11.w = dot(r31.xyz, r31.xyz);
    r11.w = sqrt(r11.w);
    r11.w = cmp(probeDebugRadius >= r11.w);
    r12.z = (int)r24.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r12.z, l(0), t16.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r12.z, l(16), t16.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r12.z, l(32), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r12.z, l(48), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r12.z, l(64), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r12.z, l(80), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
    r13.w = dot(r32.xyz, r31.xyz);
    r13.w = saturate(r13.w + r32.w);
    r14.z = dot(r33.xyz, r31.xyz);
    r14.z = saturate(r14.z + r33.w);
    r13.w = r14.z * r13.w;
    r14.z = dot(r34.xyz, r31.xyz);
    r14.z = saturate(r14.z + r34.w);
    r13.w = r14.z * r13.w;
    r14.z = dot(r35.xyz, r31.xyz);
    r14.z = saturate(r14.z + r35.w);
    r13.w = r14.z * r13.w;
    r14.z = dot(r36.xyz, r31.xyz);
    r14.z = saturate(r14.z + r36.w);
    r13.w = r14.z * r13.w;
    r14.z = dot(r37.xyz, r31.xyz);
    r14.z = saturate(r14.z + r37.w);
    r13.x = r14.z * r13.w;
    r13.w = (int)r12.x & 1;
    r13.xw = r13.ww ? r13.xy : r13.zx;
    r32.xy = r24.zw;
    r32.z = r25.z;
    r14.z = dot(r8.xyz, r32.xyz);
    r14.w = dot(r31.xyz, r32.xyz);
    r14.w = r14.w + -r25.w;
    r17.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r4.w);
    r14.w = r17.w ? r14.w : -r14.w;
    r14.z = max(1.00000001e-07, -r14.z);
    r14.z = r14.w / r14.z;
    r14.z = min(131072, abs(r14.z));
    r25.z = r26.z;
    r14.w = dot(r8.xyz, r25.xyz);
    r17.w = dot(r31.xyz, r25.xyz);
    r17.w = r17.w + -r26.w;
    r20.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r4.w);
    r17.w = r20.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r26.z = r27.z;
    r14.w = dot(r8.xyz, r26.xyz);
    r17.w = dot(r31.xyz, r26.xyz);
    r17.w = r17.w + -r27.w;
    r20.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r4.w);
    r17.w = r20.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r27.z = r28.z;
    r14.w = dot(r8.xyz, r27.xyz);
    r17.w = dot(r31.xyz, r27.xyz);
    r17.w = r17.w + -r28.w;
    r20.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r4.w);
    r17.w = r20.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r28.z = r29.x;
    r14.w = dot(r8.xyz, r28.xyz);
    r17.w = dot(r31.xyz, r28.xyz);
    r17.w = r17.w + -r29.y;
    r20.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r4.w);
    r17.w = r20.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r30.zw = r29.zw;
    r14.w = dot(r8.zxy, r30.xzw);
    r17.w = dot(r31.zxy, r30.xzw);
    r17.w = r17.w + -r30.y;
    r20.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r4.w);
    r17.w = r20.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r25.x = r21.w;
    r25.yz = r22.zw;
    r25.xyz = r25.xyz + r31.xyz;
    r25.xyz = r8.xyz * r14.zzz + r25.xyz;
    r14.w = dot(r25.xyz, r25.xyz);
    r14.w = sqrt(r14.w);
    r14.z = r14.z / r14.w;
    r14.z = r14.z + r14.z;
    r14.z = sqrt(r14.z);
    r14.z = r3.z * 5 + r14.z;
    r14.z = -0.844799995 + r14.z;
    r17.y = r18.z;
    r17.z = r19.x;
    r26.x = dot(r25.xyz, r17.xyz);
    r27.xy = r18.xw;
    r27.z = r19.w;
    r26.y = dot(r25.xyz, r27.xyz);
    r19.x = r18.y;
    r26.z = dot(r25.xyz, r19.xyz);
    if (6 == 0) r18.x = 0; else if (6+25 < 32) {     r18.x = (uint)r24.y << (32-(6 + 25)); r18.x = (uint)r18.x >> (32-6);    } else r18.x = (uint)r24.y >> 25;
    if (9 == 0) r18.y = 0; else if (9+16 < 32) {     r18.y = (uint)r24.y << (32-(9 + 16)); r18.y = (uint)r18.y >> (32-9);    } else r18.y = (uint)r24.y >> 16;
    r26.w = (uint)r18.y;
    r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, r14.z).xyz;
    r24.yzw = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
    r24.yzw = cmp((int3)r24.yzw == int3(2139095040,2139095040,2139095040));
    r14.z = (int)r24.z | (int)r24.y;
    r14.z = (int)r24.w | (int)r14.z;
    r18.yzw = r14.zzz ? float3(1,1,0) : r18.yzw;
    r25.x = dot(r31.xyz, r17.xyz);
    r25.y = dot(r31.xyz, r27.xyz);
    r25.z = dot(r31.xyz, r19.xyz);
    r21.xyz = saturate(r25.xyz * r21.xyz + float3(0.5,0.5,0.5));
    r22.z = r23.x;
    r21.xyz = r21.xyz * r22.xyz + r23.yzw;
    r26.x = dot(r7.xyz, r17.xyz);
    r26.y = dot(r7.xyz, r27.xyz);
    r26.z = dot(r7.xyz, r19.xyz);
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r19.xyz = float3(0,0,0.5) + r21.xyz;
    r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r24.yzw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r19.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r25.xyz = r24.yzw + r23.xyz;
    r25.xyz = r25.xyz + r21.xyz;
    r25.xyz = r25.xyz + r19.xyz;
    r25.xyz = r25.xyz * r9.xxx;
    r17.xyz = r22.xyz + r17.xyz;
    r21.xyz = r17.xyz + r21.xyz;
    r19.xyz = r21.xyz + r19.xyz;
    r19.xyz = r19.xyz * r9.yyy;
    r17.xyz = r17.xyz + r23.xyz;
    r17.xyz = r17.xyz + r24.yzw;
    r17.xyz = r17.xyz * r9.zzz;
    r19.xyz = float3(0.25,0.25,0.25) * r19.xyz;
    r19.xyz = r25.xyz * float3(0.25,0.25,0.25) + r19.xyz;
    r17.xyz = r17.xyz * float3(0.25,0.25,0.25) + r19.xyz;
    r19.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, 6).xyz;
    r21.xyz = (int3)r19.xyz & int3(-2147483648,-2147483648,-2147483648);
    r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
    r14.z = (int)r21.y | (int)r21.x;
    r14.z = (int)r21.z | (int)r14.z;
    r19.xyz = r14.zzz ? float3(1,1,0) : r19.xyz;
    r21.xyzw = r15.xyzw;
    r22.xyz = r16.yzw;
    r14.z = r9.w;
    r14.w = r11.z;
    while (true) {
      if (r14.w == 0) break;
      r17.w = firstbitlow((uint)r14.w);
      r17.w = 1 << (int)r17.w;
      r19.w = (int)r14.w & (int)r17.w;
      if (r19.w != 0) {
        r17.w = ~(int)r17.w;
        r14.w = (int)r14.w & (int)r17.w;
        if (r11.w != 0) {
          r17.w = r12.x;
          r23.xy = r13.xw;
          r19.w = 1;
          while (true) {
            r20.w = cmp((int)r19.w >= (int)r18.x);
            if (r20.w != 0) break;
            r20.w = (int)r12.z + (int)r19.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r20.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r20.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r20.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r20.w, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r20.w, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r20.w, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r20.w = dot(r25.xyz, r31.xyz);
            r20.w = saturate(r20.w + r25.w);
            r20.w = r23.x * r20.w;
            r22.w = dot(r26.xyz, r31.xyz);
            r22.w = saturate(r22.w + r26.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r27.xyz, r31.xyz);
            r22.w = saturate(r22.w + r27.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r28.xyz, r31.xyz);
            r22.w = saturate(r22.w + r28.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r29.xyz, r31.xyz);
            r22.w = saturate(r22.w + r29.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r30.xyz, r31.xyz);
            r22.w = saturate(r22.w + r30.w);
            r23.x = r22.w * r20.w;
            r23.z = (uint)r17.w >> 2;
            if (1 == 0) r23.w = 0; else if (1+2 < 32) {             r23.w = (uint)r17.w << (32-(1 + 2)); r23.w = (uint)r23.w >> (32-1);            } else r23.w = (uint)r17.w >> 2;
            r24.y = (int)r23.z & 2;
            r24.z = max(r23.y, r23.x);
            r20.w = -r20.w * r22.w + 1;
            r20.w = r23.y * r20.w;
            r14.y = r24.y ? r20.w : r24.z;
            r23.xy = r23.ww ? r23.xy : r14.xy;
            r19.w = (int)r19.w + 1;
            r17.w = r23.z;
          }
          r23.y = saturate(r23.y);
          r14.y = r23.y * r12.y;
          r17.w = cmp(0 < r14.y);
          if (r17.w != 0) {
            r25.z = r23.y * r12.y + r22.z;
            r14.y = r14.y * r24.x;
            r23.xzw = r17.xyz * r14.yyy;
            r24.yzw = r23.xzw * r19.xyz;
            r17.w = dot(r24.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r26.xyz = r23.xzw * r19.xyz + r21.xyz;
            r19.w = r17.w * r6.w;
            r23.xzw = r18.yzw * r14.yyy;
            r14.y = dot(r23.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r14.y = r6.w * r17.w + r14.y;
            r14.y = r19.w / r14.y;
            r27.x = r21.w;
            r27.yz = r22.xy;
            r25.xyw = r23.zwx * r14.yyy + r27.yzx;
            r26.w = r25.w;
          } else {
            r26.xyzw = r21.xyzw;
            r25.xyz = r22.xyz;
          }
          r14.z = -1;
          r21.xyzw = r26.xyzw;
          r22.xyz = r25.xyz;
          break;
        }
      }
    }
    if (r14.z != 0) {
      r15.xyzw = r21.xyzw;
      r16.yzw = r22.xyz;
      r9.w = -1;
      break;
    }
    r10.w = (int)r10.w + 32;
    r15.xyzw = r21.xyzw;
    r16.yzw = r22.xyz;
    r9.w = r14.z;
  }
  if (r9.w == 0) {
    r9.w = numRefProbes + -numOverrideProbes;
    r10.w = (int)r9.w & -32;
    r11.x = (int)r9.w + (int)-r10.w;
    r11.y = numRefProbes & -32;
    r11.z = (int)-r11.y + numRefProbes;
    r12.xy = float2(0,0);
    r13.w = 0;
    r14.yz = float2(0,1);
    r17.x = 1;
    r18.xyzw = r15.xyzw;
    r19.yzw = r16.yzw;
    r11.w = r10.w;
    while (true) {
      r12.w = cmp((uint)r11.w >= numRefProbes);
      if (r12.w != 0) break;
      r12.z = (uint)r11.w >> 5;
      r13.xyz = (int3)r12.xyz + (int3)r20.xyz;
      r12.z = visibleProbes.Load(r13.xyzw).x;
      r12.w = cmp((int)r10.w == (int)r11.w);
      bitmask.x = ((~(-1 << r11.x)) << 0) & 0xffffffff;  r13.x = (((uint)0 << 0) & bitmask.x) | ((uint)r12.z & ~bitmask.x);
      r12.z = r12.w ? r13.x : r12.z;
      r12.w = cmp((int)r11.y == (int)r11.w);
      if (r11.z == 0) r13.x = 0; else if (r11.z+0 < 32) {       r13.x = (uint)r12.z << (32-(r11.z + 0)); r13.x = (uint)r13.x >> (32-r11.z);      } else r13.x = (uint)r12.z >> 0;
      r12.z = r12.w ? r13.x : r12.z;
      r12.w = (int)r11.w + numLights;
      r21.xyzw = r18.xyzw;
      r22.xyz = r19.yzw;
      r13.x = r12.z;
      while (true) {
        if (r13.x == 0) break;
        r13.y = firstbitlow((uint)r13.x);
        r13.z = 1 << (int)r13.y;
        r14.w = (int)r13.z & (int)r13.x;
        if (r14.w != 0) {
          r13.x = (int)r13.z ^ (int)r13.x;
          r13.z = (int)r12.w + (int)r13.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r13.z, l(0), t11.xyzw
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xy, r13.z, l(16), t11.xyxx
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
          r23.xyz = -v5.xyz + r23.xyz;
          r24.z = r23.w;
          r23.xyz = cmp(abs(r23.xyz) < r24.zxy);
          r13.z = r23.y ? r23.x : 0;
          r13.z = r23.z ? r13.z : 0;
          if (r13.z != 0) {
            r13.y = (int)r11.w + (int)r13.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r13.y, l(0), t15.wxyz
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r13.y, l(96), t15.xxxy
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.y, l(116), t15.zwxy
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
            r25.xyz = v5.xyz + -r23.yzw;
            r13.z = (int)r24.w & 0x0000ffff;
            if (6 == 0) r14.w = 0; else if (6+25 < 32) {             r14.w = (uint)r24.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);            } else r14.w = (uint)r24.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r13.z, l(0), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.z, l(16), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.z, l(32), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r20.w = dot(r26.xyz, r25.xyz);
            r20.w = saturate(r20.w + r26.w);
            r23.w = dot(r27.xyz, r25.xyz);
            r23.w = saturate(r23.w + r27.w);
            r20.w = r23.w * r20.w;
            r23.w = dot(r28.xyz, r25.xyz);
            r23.w = saturate(r23.w + r28.w);
            r20.w = r23.w * r20.w;
            r23.w = dot(r29.xyz, r25.xyz);
            r23.w = saturate(r23.w + r29.w);
            r20.w = r23.w * r20.w;
            r23.w = dot(r30.xyz, r25.xyz);
            r23.w = saturate(r23.w + r30.w);
            r20.w = r23.w * r20.w;
            r23.w = dot(r31.xyz, r25.xyz);
            r23.w = saturate(r23.w + r31.w);
            r14.x = r23.w * r20.w;
            r20.w = (int)r17.z & 1;
            r26.xy = r20.ww ? r14.xy : r14.zx;
            r14.x = r17.z;
            r27.xy = r26.xy;
            r20.w = 1;
            while (true) {
              r23.w = cmp((int)r20.w >= (int)r14.w);
              if (r23.w != 0) break;
              r23.w = (int)r13.z + (int)r20.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r23.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r23.w, l(16), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r23.w, l(32), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r23.w, l(48), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r23.w, l(64), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r23.w, l(80), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r23.w = dot(r28.xyz, r25.xyz);
              r23.w = saturate(r23.w + r28.w);
              r23.w = r27.x * r23.w;
              r25.w = dot(r29.xyz, r25.xyz);
              r25.w = saturate(r25.w + r29.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r30.xyz, r25.xyz);
              r25.w = saturate(r25.w + r30.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r31.xyz, r25.xyz);
              r25.w = saturate(r25.w + r31.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r32.xyz, r25.xyz);
              r25.w = saturate(r25.w + r32.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r33.xyz, r25.xyz);
              r25.w = saturate(r25.w + r33.w);
              r27.x = r25.w * r23.w;
              r26.z = (uint)r14.x >> 2;
              if (1 == 0) r26.w = 0; else if (1+2 < 32) {               r26.w = (uint)r14.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);              } else r26.w = (uint)r14.x >> 2;
              r27.z = (int)r26.z & 2;
              r27.w = max(r27.y, r27.x);
              r23.w = -r23.w * r25.w + 1;
              r23.w = r27.y * r23.w;
              r17.y = r27.z ? r23.w : r27.w;
              r27.xy = r26.ww ? r27.xy : r17.xy;
              r20.w = (int)r20.w + 1;
              r14.x = r26.z;
            }
            r27.y = saturate(r27.y);
            r13.z = r27.y * r17.w;
            r14.x = cmp(0 < r13.z);
            if (r14.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r13.y, l(16), t15.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.y, l(32), t15.yxwz
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.y, l(48), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.y, l(64), t15.zwxy
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.y, l(80), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.y, l(132), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.y, l(148), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.y, l(164), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.y, l(180), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.y, l(196), t15.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r13.y, l(212), t15.xyxx
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
              r22.z = r27.y * r17.w + r22.z;
              r13.y = r13.z * r24.z;
              r24.z = r32.z;
              r13.z = dot(r8.xyz, r24.xyz);
              r14.x = dot(r25.xyz, r24.xyz);
              r14.x = r14.x + -r32.w;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r4.w);
              r14.x = r14.w ? r14.x : -r14.x;
              r13.z = max(1.00000001e-07, -r13.z);
              r13.z = r14.x / r13.z;
              r13.z = min(131072, abs(r13.z));
              r32.z = r33.z;
              r14.x = dot(r8.xyz, r32.xyz);
              r14.w = dot(r25.xyz, r32.xyz);
              r14.w = r14.w + -r33.w;
              r17.y = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r4.w);
              r14.w = r17.y ? r14.w : -r14.w;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.w / r14.x;
              r13.z = min(abs(r14.x), r13.z);
              r33.z = r34.z;
              r14.x = dot(r8.xyz, r33.xyz);
              r14.w = dot(r25.xyz, r33.xyz);
              r14.w = r14.w + -r34.w;
              r17.y = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r4.w);
              r14.w = r17.y ? r14.w : -r14.w;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.w / r14.x;
              r13.z = min(abs(r14.x), r13.z);
              r34.z = r35.z;
              r14.x = dot(r8.xyz, r34.xyz);
              r14.w = dot(r25.xyz, r34.xyz);
              r14.w = r14.w + -r35.w;
              r17.y = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r4.w);
              r14.w = r17.y ? r14.w : -r14.w;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.w / r14.x;
              r13.z = min(abs(r14.x), r13.z);
              r35.z = r36.x;
              r14.x = dot(r8.xyz, r35.xyz);
              r14.w = dot(r25.xyz, r35.xyz);
              r14.w = r14.w + -r36.y;
              r17.y = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r4.w);
              r14.w = r17.y ? r14.w : -r14.w;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.w / r14.x;
              r13.z = min(abs(r14.x), r13.z);
              r37.zw = r36.zw;
              r14.x = dot(r8.zxy, r37.xzw);
              r14.w = dot(r25.zxy, r37.xzw);
              r14.w = r14.w + -r37.y;
              r17.y = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r4.w);
              r14.w = r17.y ? r14.w : -r14.w;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r14.w / r14.x;
              r13.z = min(abs(r14.x), r13.z);
              r24.x = r29.w;
              r24.yz = r30.zw;
              r17.yzw = r24.xyz + r25.xyz;
              r17.yzw = r8.xyz * r13.zzz + r17.yzw;
              r14.x = dot(r17.yzw, r17.yzw);
              r14.x = sqrt(r14.x);
              r13.z = r13.z / r14.x;
              r13.z = r13.z + r13.z;
              r13.z = sqrt(r13.z);
              r13.z = r3.z * 5 + r13.z;
              r13.z = -0.844799995 + r13.z;
              r23.y = r26.z;
              r23.z = r28.x;
              r32.x = dot(r17.yzw, r23.xyz);
              r24.xy = r26.xw;
              r24.z = r28.w;
              r32.y = dot(r17.yzw, r24.xyz);
              r28.x = r26.y;
              r32.z = dot(r17.yzw, r28.xyz);
              if (9 == 0) r14.x = 0; else if (9+16 < 32) {               r14.x = (uint)r24.w << (32-(9 + 16)); r14.x = (uint)r14.x >> (32-9);              } else r14.x = (uint)r24.w >> 16;
              r32.w = (uint)r14.x;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r13.z).xyz;
              r26.xyz = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
              r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
              r13.z = (int)r26.y | (int)r26.x;
              r13.z = (int)r26.z | (int)r13.z;
              r17.yzw = r13.zzz ? float3(1,1,0) : r17.yzw;
              r26.x = dot(r25.xyz, r23.xyz);
              r26.y = dot(r25.xyz, r24.xyz);
              r26.z = dot(r25.xyz, r28.xyz);
              r25.xyz = saturate(r26.xyz * r29.xyz + float3(0.5,0.5,0.5));
              r30.z = r31.x;
              r25.xyz = r25.xyz * r30.xyz + r31.yzw;
              r32.x = dot(r7.xyz, r23.xyz);
              r32.y = dot(r7.xyz, r24.xyz);
              r32.z = dot(r7.xyz, r28.xyz);
              r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = float3(0,0,0.5) + r25.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r27.xzw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r28.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r29.xyz = r28.xyz + r27.xzw;
              r29.xyz = r29.xyz + r25.xyz;
              r29.xyz = r29.xyz + r24.xyz;
              r29.xyz = r29.xyz * r9.xxx;
              r23.xyz = r26.xyz + r23.xyz;
              r25.xyz = r23.xyz + r25.xyz;
              r24.xyz = r25.xyz + r24.xyz;
              r24.xyz = r24.xyz * r9.yyy;
              r23.xyz = r23.xyz + r27.xzw;
              r23.xyz = r23.xyz + r28.xyz;
              r23.xyz = r23.xyz * r9.zzz;
              r24.xyz = float3(0.25,0.25,0.25) * r24.xyz;
              r24.xyz = r29.xyz * float3(0.25,0.25,0.25) + r24.xyz;
              r23.xyz = r23.xyz * float3(0.25,0.25,0.25) + r24.xyz;
              r23.xyz = r23.xyz * r13.yyy;
              r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
              r25.xyz = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
              r25.xyz = cmp((int3)r25.xyz == int3(2139095040,2139095040,2139095040));
              r13.z = (int)r25.y | (int)r25.x;
              r13.z = (int)r25.z | (int)r13.z;
              r24.xyz = r13.zzz ? float3(1,1,0) : r24.xyz;
              r25.xyz = r24.xyz * r23.xyz;
              r13.z = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r21.xyz = r23.xyz * r24.xyz + r21.xyz;
              r14.x = r13.z * r6.w;
              r17.yzw = r17.yzw * r13.yyy;
              r13.y = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r13.y = r6.w * r13.z + r13.y;
              r13.y = r14.x / r13.y;
              r23.x = r21.w;
              r23.yz = r22.xy;
              r22.xyw = r17.zwy * r13.yyy + r23.yzx;
              r21.w = r22.w;
            }
          }
        }
      }
      r18.xyzw = r21.xyzw;
      r19.yzw = r22.xyz;
      r11.w = (int)r11.w + 32;
    }
    r11.y = cmp(r19.w < 1);
    if (r11.y != 0) {
      r12.xy = float2(0,0);
      r13.w = 0;
      r14.yz = float2(0,1);
      r17.x = 1;
      r21.x = r18.w;
      r21.yzw = r19.yzw;
      r11.yzw = r18.xyz;
      r12.w = r19.w;
      r14.w = 0;
      while (true) {
        r16.w = cmp((uint)r14.w >= (uint)r9.w);
        if (r16.w != 0) break;
        r12.z = (uint)r14.w >> 5;
        r13.xyz = (int3)r12.xyz + (int3)r20.xyz;
        r12.z = visibleProbes.Load(r13.xyzw).x;
        r13.x = cmp((int)r10.w == (int)r14.w);
        if (r11.x == 0) r13.y = 0; else if (r11.x+0 < 32) {         r13.y = (uint)r12.z << (32-(r11.x + 0)); r13.y = (uint)r13.y >> (32-r11.x);        } else r13.y = (uint)r12.z >> 0;
        r12.z = r13.x ? r13.y : r12.z;
        r13.x = (int)r14.w + numLights;
        r22.xyzw = r21.xyzw;
        r23.xyz = r11.yzw;
        r13.y = r12.w;
        r13.z = r12.z;
        while (true) {
          if (r13.z == 0) break;
          r16.w = firstbitlow((uint)r13.z);
          r17.z = 1 << (int)r16.w;
          r17.w = (int)r13.z & (int)r17.z;
          if (r17.w != 0) {
            r13.z = (int)r13.z ^ (int)r17.z;
            r17.z = (int)r13.x + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r17.z, l(0), t11.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r17.z, l(16), t11.xyxx
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
            r24.xyz = -v5.xyz + r24.xyz;
            r25.z = r24.w;
            r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
            r17.z = r24.y ? r24.x : 0;
            r17.z = r24.z ? r17.z : 0;
            if (r17.z != 0) {
              r16.w = (int)r14.w + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r16.w, l(0), t15.wxyz
            r24.x = samp0[]..swiz;
            r24.y = samp0[]..swiz;
            r24.z = samp0[]..swiz;
            r24.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r16.w, l(96), t15.xxxy
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(116), t15.zwxy
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
              r26.xyz = v5.xyz + -r24.yzw;
              r20.w = (int)r25.w & 0x0000ffff;
              if (6 == 0) r23.w = 0; else if (6+25 < 32) {               r23.w = (uint)r25.w << (32-(6 + 25)); r23.w = (uint)r23.w >> (32-6);              } else r23.w = (uint)r25.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r20.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r20.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r20.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r20.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r24.w = dot(r27.xyz, r26.xyz);
              r24.w = saturate(r24.w + r27.w);
              r26.w = dot(r28.xyz, r26.xyz);
              r26.w = saturate(r26.w + r28.w);
              r24.w = r26.w * r24.w;
              r26.w = dot(r29.xyz, r26.xyz);
              r26.w = saturate(r26.w + r29.w);
              r24.w = r26.w * r24.w;
              r26.w = dot(r30.xyz, r26.xyz);
              r26.w = saturate(r26.w + r30.w);
              r24.w = r26.w * r24.w;
              r26.w = dot(r31.xyz, r26.xyz);
              r26.w = saturate(r26.w + r31.w);
              r24.w = r26.w * r24.w;
              r26.w = dot(r32.xyz, r26.xyz);
              r26.w = saturate(r26.w + r32.w);
              r14.x = r26.w * r24.w;
              r24.w = (int)r17.z & 1;
              r27.xy = r24.ww ? r14.xy : r14.zx;
              r14.x = r17.z;
              r28.xy = r27.xy;
              r24.w = 1;
              while (true) {
                r26.w = cmp((int)r24.w >= (int)r23.w);
                if (r26.w != 0) break;
                r26.w = (int)r20.w + (int)r24.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r26.w, l(0), t16.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r26.w, l(16), t16.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r26.w, l(32), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r26.w, l(48), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r26.w, l(64), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r26.w, l(80), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
                r26.w = dot(r29.xyz, r26.xyz);
                r26.w = saturate(r26.w + r29.w);
                r26.w = r28.x * r26.w;
                r27.z = dot(r30.xyz, r26.xyz);
                r27.z = saturate(r27.z + r30.w);
                r26.w = r27.z * r26.w;
                r27.z = dot(r31.xyz, r26.xyz);
                r27.z = saturate(r27.z + r31.w);
                r26.w = r27.z * r26.w;
                r27.z = dot(r32.xyz, r26.xyz);
                r27.z = saturate(r27.z + r32.w);
                r26.w = r27.z * r26.w;
                r27.z = dot(r33.xyz, r26.xyz);
                r27.z = saturate(r27.z + r33.w);
                r26.w = r27.z * r26.w;
                r27.z = dot(r34.xyz, r26.xyz);
                r27.z = saturate(r27.z + r34.w);
                r28.x = r27.z * r26.w;
                r27.w = (uint)r14.x >> 2;
                if (1 == 0) r28.z = 0; else if (1+2 < 32) {                 r28.z = (uint)r14.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);                } else r28.z = (uint)r14.x >> 2;
                r28.w = (int)r27.w & 2;
                r29.x = max(r28.y, r28.x);
                r26.w = -r26.w * r27.z + 1;
                r26.w = r28.y * r26.w;
                r17.y = r28.w ? r26.w : r29.x;
                r28.xy = r28.zz ? r28.xy : r17.xy;
                r24.w = (int)r24.w + 1;
                r14.x = r27.w;
              }
              r14.x = saturate(r28.y + -r13.y);
              r17.y = r14.x * r17.w;
              r17.z = cmp(0 < r17.y);
              if (r17.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(16), t15.xyzw
              r27.x = samp0[]..swiz;
              r27.y = samp0[]..swiz;
              r27.z = samp0[]..swiz;
              r27.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(32), t15.yxwz
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(48), t15.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(64), t15.zwxy
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(80), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(132), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(148), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(164), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(180), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r16.w, l(196), t15.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r16.w, l(212), t15.xyxx
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
                r22.w = r14.x * r17.w + r22.w;
                r14.x = r17.y * r25.z;
                r25.z = r33.z;
                r16.w = dot(r8.xyz, r25.xyz);
                r17.y = dot(r26.xyz, r25.xyz);
                r17.y = r17.y + -r33.w;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r4.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r16.w = min(131072, abs(r16.w));
                r33.z = r34.z;
                r17.y = dot(r8.xyz, r33.xyz);
                r17.z = dot(r26.xyz, r33.xyz);
                r17.z = r17.z + -r34.w;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r4.w);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r34.z = r35.z;
                r17.y = dot(r8.xyz, r34.xyz);
                r17.z = dot(r26.xyz, r34.xyz);
                r17.z = r17.z + -r35.w;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r4.w);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r35.z = r36.z;
                r17.y = dot(r8.xyz, r35.xyz);
                r17.z = dot(r26.xyz, r35.xyz);
                r17.z = r17.z + -r36.w;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r4.w);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r36.z = r37.x;
                r17.y = dot(r8.xyz, r36.xyz);
                r17.z = dot(r26.xyz, r36.xyz);
                r17.z = r17.z + -r37.y;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r4.w);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r38.zw = r37.zw;
                r17.y = dot(r8.zxy, r38.xzw);
                r17.z = dot(r26.zxy, r38.xzw);
                r17.z = r17.z + -r38.y;
                r17.w = cmp(r17.z >= 0);
                r17.z = max(abs(r17.z), r4.w);
                r17.z = r17.w ? r17.z : -r17.z;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r17.z / r17.y;
                r16.w = min(abs(r17.y), r16.w);
                r25.x = r30.w;
                r25.yz = r31.zw;
                r17.yzw = r25.xyz + r26.xyz;
                r17.yzw = r8.xyz * r16.www + r17.yzw;
                r20.w = dot(r17.yzw, r17.yzw);
                r20.w = sqrt(r20.w);
                r16.w = r16.w / r20.w;
                r16.w = r16.w + r16.w;
                r16.w = sqrt(r16.w);
                r16.w = r3.z * 5 + r16.w;
                r16.w = -0.844799995 + r16.w;
                r24.y = r27.z;
                r24.z = r29.x;
                r33.x = dot(r17.yzw, r24.xyz);
                r25.xy = r27.xw;
                r25.z = r29.w;
                r33.y = dot(r17.yzw, r25.xyz);
                r29.x = r27.y;
                r33.z = dot(r17.yzw, r29.xyz);
                if (9 == 0) r17.y = 0; else if (9+16 < 32) {                 r17.y = (uint)r25.w << (32-(9 + 16)); r17.y = (uint)r17.y >> (32-9);                } else r17.y = (uint)r25.w >> 16;
                r33.w = (uint)r17.y;
                r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r16.w).xyz;
                r27.xyz = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
                r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
                r16.w = (int)r27.y | (int)r27.x;
                r16.w = (int)r27.z | (int)r16.w;
                r17.yzw = r16.www ? float3(1,1,0) : r17.yzw;
                r27.x = dot(r26.xyz, r24.xyz);
                r27.y = dot(r26.xyz, r25.xyz);
                r27.z = dot(r26.xyz, r29.xyz);
                r26.xyz = saturate(r27.xyz * r30.xyz + float3(0.5,0.5,0.5));
                r31.z = r32.x;
                r26.xyz = r26.xyz * r31.xyz + r32.yzw;
                r33.x = dot(r7.xyz, r24.xyz);
                r33.y = dot(r7.xyz, r25.xyz);
                r33.z = dot(r7.xyz, r29.xyz);
                r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r25.xyz = float3(0,0,0.5) + r26.xyz;
                r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r28.xzw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r29.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r30.xyz = r29.xyz + r28.xzw;
                r30.xyz = r30.xyz + r26.xyz;
                r30.xyz = r30.xyz + r25.xyz;
                r30.xyz = r30.xyz * r9.xxx;
                r24.xyz = r27.xyz + r24.xyz;
                r26.xyz = r24.xyz + r26.xyz;
                r25.xyz = r26.xyz + r25.xyz;
                r25.xyz = r25.xyz * r9.yyy;
                r24.xyz = r24.xyz + r28.xzw;
                r24.xyz = r24.xyz + r29.xyz;
                r24.xyz = r24.xyz * r9.zzz;
                r25.xyz = float3(0.25,0.25,0.25) * r25.xyz;
                r25.xyz = r30.xyz * float3(0.25,0.25,0.25) + r25.xyz;
                r24.xyz = r24.xyz * float3(0.25,0.25,0.25) + r25.xyz;
                r24.xyz = r24.xyz * r14.xxx;
                r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
                r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
                r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
                r16.w = (int)r26.y | (int)r26.x;
                r16.w = (int)r26.z | (int)r16.w;
                r25.xyz = r16.www ? float3(1,1,0) : r25.xyz;
                r26.xyz = r25.xyz * r24.xyz;
                r16.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r23.xyz = r24.xyz * r25.xyz + r23.xyz;
                r20.w = r16.w * r6.w;
                r17.yzw = r17.yzw * r14.xxx;
                r14.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r14.x = r6.w * r16.w + r14.x;
                r14.x = r20.w / r14.x;
                r22.xyz = r17.yzw * r14.xxx + r22.xyz;
              }
            }
          }
        }
        r21.xyzw = r22.xyzw;
        r11.yzw = r23.xyz;
        r14.w = (int)r14.w + 32;
      }
      r19.xyzw = r21.zxyw;
      r18.xyz = r11.yzw;
      r19.xyzw = r19.yzxw;
    } else {
      r19.x = r18.w;
    }
    r3.z = max(1, r19.w);
    r3.z = rcp(r3.z);
    r19.w = saturate(r19.w);
    r15.xyz = r18.xyz * r3.zzz;
    r16.xyz = r19.xyz * r3.zzz;
    r4.w = cmp(r19.w < 0.99000001);
    if (r4.w != 0) {
      r4.w = 1 + -r19.w;
      r6.w = sunConstants.globalProbeExposure * r4.w;
      r11.xyz = -globalProbeConstants.data[0].xyz + v5.xyz;
      r12.x = globalProbeConstants.data[0].w * r11.x;
      r12.yz = globalProbeConstants.data[1].xy * r11.yz;
      r11.xyz = saturate(float3(0.5,0.5,0.5) + r12.xyz);
      r12.xy = globalProbeConstants.data[1].zw * r11.xy;
      r12.z = globalProbeConstants.data[2].x * r11.z;
      r11.xyz = globalProbeConstants.data[2].yzw + r12.xyz;
      r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r13.xyz = float3(0,0,0.5) + r11.xyz;
      r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r20.xyz = r19.xyz + r17.xyz;
      r20.xyz = r20.xyz + r11.xyz;
      r20.xyz = r20.xyz + r13.xyz;
      r20.xyz = r20.xyz * r9.xxx;
      r12.xyz = r14.xyz + r12.xyz;
      r11.xyz = r12.xyz + r11.xyz;
      r11.xyz = r11.xyz + r13.xyz;
      r9.xyw = r11.xyz * r9.yyy;
      r11.xyz = r12.xyz + r17.xyz;
      r11.xyz = r11.xyz + r19.xyz;
      r11.xyz = r11.xyz * r9.zzz;
      r9.xyz = float3(0.25,0.25,0.25) * r9.xyw;
      r9.xyz = r20.xyz * float3(0.25,0.25,0.25) + r9.xyz;
      r9.xyz = r11.xyz * float3(0.25,0.25,0.25) + r9.xyz;
      r9.xyz = r9.xyz * r6.www;
      r7.w = 0;
      r7.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r7.xyzw, 6).xyz;
      r7.xyz = r9.xyz * r7.xyz;
      r6.w = dot(r7.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.xyz = r18.xyz * r3.zzz + r7.xyz;
      r8.w = 0;
      r7.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r8.xyzw, r3.w).xyz;
      r3.z = sunConstants.globalProbeExposure * r4.w + -r6.w;
      r3.z = r3.y * r3.z + r6.w;
      r16.xyz = r7.xyz * r3.zzz + r16.xyz;
    }
  } else {
    r16.x = r15.w;
  }
  r4.xyz = r15.xyz * r0.www + r4.xyz;
  r3.xy = r3.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r3.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r3.xy, 0).xy;
  r7.xyz = r16.xyz * r0.www;
  r2.xyz = r7.xyz * r3.xxx + r2.xyz;
  r3.xyz = r7.xyz * r3.yyy + r5.xyz;
  r0.w = 0.0399999991 * r2.w;
  r2.w = -r2.w * 0.0399999991 + 1;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = r3.xyz * r0.www + r2.xyz;
  r0.xyz = r4.xyz * r0.xyz + r2.xyz;
  if (useAlphaControls != 0) {
    r0.w = dot(r6.xyz, r10.xyz);
    r2.xyz = cmp(falloffBegin == float3(0,0,0));
    r2.x = r2.y ? r2.x : 0;
    r2.yw = float2(0.0174532924,0.0174532924) * falloffBegin;
    r2.yw = cos(r2.yw);
    r3.xy = r2.yw * r2.yw;
    r2.y = r2.y * r2.y + -r3.y;
    r4.x = 1 / r2.y;
    r4.y = -r3.x * r4.x + 1;
    r2.xy = r2.xx ? float2(0,1) : r4.xy;
    r0.w = abs(r0.w) * abs(r0.w);
    r0.w = saturate(r0.w * r2.x + r2.y);
    r0.w = r1.w * r0.w;
    r3.xy = (int2)v0.xy;
    r3.zw = float2(0,0);
    r2.x = floatZSampler.Load(r3.xyz).x;
    r2.y = cmp(r2.x >= 0.984375);
    r2.w = 1.01587307 * r2.x;
    r2.x = r2.x * 64 + -63;
    r2.x = r2.y ? r2.x : r2.w;
    r2.x = max(9.99999994e-09, r2.x);
    r2.x = rcp(r2.x);
    r2.y = 1 / zFeatherDistance;
    r2.y = r2.z ? 60000 : r2.y;
    r2.x = r2.x + -r5.w;
    r2.x = saturate(r2.x * r2.y);
    r1.w = r2.x * r0.w;
  }
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v5.xyz, v5.xyz);
    r2.x = rsqrt(r0.w);
    r2.xyz = v5.xyz * r2.xxx;
    r0.w = sqrt(r0.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r2.w = cmp(0.00999999978 < abs(v5.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v5.zz;
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
      r3.w = cmp(0.00999999978 < abs(v5.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v5.z;
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
    r0.w = fogConstants.heightFalloff * v5.z;
    r2.w = fogConstants.heightFalloff * v5.z + fogConstants.K0;
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
    r2.w = dot(v5.xyz, v5.xyz);
    r3.x = sqrt(r2.w);
    r0.w = r0.w * r3.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v5.xyz * r2.www;
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