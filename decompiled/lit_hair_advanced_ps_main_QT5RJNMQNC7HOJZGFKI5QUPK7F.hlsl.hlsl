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
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyzw = v1.xyzw * r0.xyzw;
  r0.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  r0.y = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r0.z = glossRange.y + -glossRange.x;
  r0.y = r0.y * r0.z + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r2.x = normalMap.Sample(normalSampler_s, v2.xy).z;
  r2.x = baseNormalHeight * r2.x;
  r2.x = r2.x * r2.x;
  r2.x = 0.333333343 * r2.x;
  r2.x = min(1, r2.x);
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r2.x + r0.y;
  r0.y = log2(r0.y);
  r0.y = -0.0588235296 * r0.y;
  r0.z = debugGlossOverride.x * r0.z + glossRange.x;
  r0.z = saturate(0.0588235296 * r0.z);
  r0.z = -17 * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r2.x + r0.z;
  r0.z = log2(r0.z);
  r0.z = -0.0588235296 * r0.z;
  r0.yz = max(float2(0,0), r0.yz);
  r2.x = cmp(0 < debugStreamerControl.w);
  if (r2.x != 0) {
    r2.x = (int)debugStreamerControl.w;
    r2.y = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r2.z = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r2.y = cmp(r2.y < r2.z);
    r2.z = cmp(0 < r2.z);
    r3.xyz = (int3)r2.xxx & int3(1,2,4);
    r4.xyz = r3.xxx ? float3(1,0,1) : r1.xyz;
    r3.xyw = r3.yyy ? float3(0,1,1) : r1.xyz;
    r2.xzw = r2.zzz ? r4.xyz : r3.xyw;
    r3.xyz = r3.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r2.yyy ? r2.xzw : r3.xyz;
  }
  r2.xyz = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r2.xyz + r1.xyz;
  r0.w = -r0.w * w1.x + debugAlphaOverride.x;
  r0.w = debugAlphaOverride.w * r0.w + r1.w;
  r0.z = r0.z + -r0.y;
  r2.y = debugGlossOverride.w * r0.z + r0.y;
  r0.y = debugOcclusionOverride.x + -r0.x;
  r0.x = debugOcclusionOverride.w * r0.y + r0.x;
  r3.xyz = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r3.xyz = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r3.xyz;
  r3.xyz = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r3.xyz;
  r3.xyz = viewProjectionMatrix._m30_m31_m33 + r3.xyz;
  r4.xyz = eyeOffset.xyz + v6.xyz;
  r0.y = cavityMap.Sample(LinearSampler_s, v2.xy).x;
  r5.xyzw = flowMap.Sample(LinearSampler_s, v2.xy).xyzw;
  r0.z = 0.173648 * r5.w;
  r5.xyz = r5.xyz * float3(1.9921875,1.9921875,1.9921875) + float3(-1,-1,-1);
  r6.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r7.xyz = v7.xxx ? v4.xyz : -v4.xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www;
  r8.xyz = v7.xxx ? v5.xyz : -v5.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = rsqrt(r1.w);
  r8.xyz = r8.xyz * r1.www;
  r8.xyz = r8.xyz * r5.yyy;
  r5.xyw = r7.xyz * r5.xxx + r8.xyz;
  r5.xyz = r6.xyz * r5.zzz + r5.xyw;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r7.xyz = r5.xyz * r1.www;
  r8.xyz = r7.yzx * r6.zxy;
  r8.xyz = r6.yzx * r7.zxy + -r8.xyz;
  r9.xyz = r8.yzx * r7.zxy;
  r7.xyz = r7.yzx * r8.zxy + -r9.xyz;
  r2.zw = (uint2)v0.xy;
  r3.w = cmp(v0.z >= 0.984375);
  r5.w = 1.01587307 * v0.z;
  r6.w = v0.z * 64 + -63;
  r3.w = r3.w ? r6.w : r5.w;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  r5.w = dot(-v6.xyz, -v6.xyz);
  r5.w = rsqrt(r5.w);
  r9.xyz = -v6.xyz * r5.www;
  r10.xy = (uint2)r2.wz;
  r6.w = dot(r10.yx, float2(0.0671105608,0.00583714992));
  r6.w = frac(r6.w);
  r6.w = 52.9829178 * r6.w;
  r6.w = frac(r6.w);
  r6.w = r6.w * 6.28318548 + gameTick.w;
  sincos(r6.w, r11.x, r12.x);
  r6.w = dot(r10.xy, float2(0.0671105608,0.00583714992));
  r6.w = frac(r6.w);
  r6.w = 52.9829178 * r6.w;
  r6.w = frac(r6.w);
  r6.w = r6.w * 6.28318548 + gameTick.w;
  sincos(r6.w, r10.x, r13.x);
  r2.x = saturate(dot(r7.xyz, r9.xyz));
  r6.w = 17 * r2.y;
  r6.w = exp2(r6.w);
  r6.w = 2 + r6.w;
  r6.w = 2 / r6.w;
  r8.w = sqrt(r6.w);
  r10.yzw = r7.xyz * r0.zzz;
  r13.yzw = r5.xyz * r1.www + r10.yzw;
  r0.z = dot(r13.yzw, r13.yzw);
  r0.z = rsqrt(r0.z);
  r14.xyz = r13.yzw * r0.zzz;
  r15.xyz = secondColorTint.xyz * r1.xyz;
  r0.z = sqrt(r8.w);
  r0.z = r0.z * 0.5 + 0.5;
  r0.z = r0.z * r0.z;
  r8.w = 0.5 * r0.z;
  r0.z = -r0.z * 0.5 + 1;
  r9.w = r2.x * r0.z + r8.w;
  r0.z = r9.w * r0.z;
  r8.w = r9.w * r8.w;
  r5.xyz = r5.xyz * r1.www + -r10.yzw;
  r1.w = saturate(anisotropy);
  r1.w = 1 + -r1.w;
  r1.w = r1.w * r2.y;
  r1.w = 17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 2 + r1.w;
  r1.w = 2 / r1.w;
  r9.w = r6.w * r1.w;
  r9.w = sqrt(r9.w);
  r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
  r10.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
  r10.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
  r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
  r11.z = -sunConstants.splitDepthOffset + r10.w;
  r11.z = -r11.z * 6.10351563e-05 + 1;
  r11.w = saturate(r11.z);
  r11.w = cmp(r11.z == r11.w);
  if (r11.w != 0) {
    r11.w = 0;
    r12.w = 0;
    while (true) {
      r14.w = cmp(r11.w >= 3);
      if (r14.w != 0) break;
      r14.w = (uint)r11.w;
      r16.xy = -sunConstants.splitPinTransform[r14.w].xy + r10.yz;
      r15.w = max(abs(r16.x), abs(r16.y));
      r12.w = sunConstants.splitPinTransform[r14.w].z * r15.w;
      r14.w = cmp(r12.w < 1);
      if (r14.w != 0) {
        break;
      }
      r11.w = 1 + r11.w;
      r12.w = 0;
    }
  } else {
    r11.w = 3;
    r12.w = 0;
  }
  r14.w = cmp(r11.w >= 3);
  if (r14.w != 0) {
    r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
    r17.xz = rcp(r16.xx);
    r17.y = -r17.z;
    r16.xyz = r10.yzy * r17.xyz + r16.yzy;
    r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
    r16.xyz = max(float3(0,0,0), r16.xyz);
    r16.xyz = min(r16.xyz, r17.xyz);
    r17.xy = sunConstants.sstLightingConstants.coordScale * r16.zy;
    r17.xy = floor(r17.xy);
    r15.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
    r15.w = r15.w * sunConstants.sstLightingConstants.coordScale + r17.x;
    r15.w = (uint)r15.w;
    r15.w = (int)r15.w + (int10)sunConstants.sstLightingConstants.rootOffset;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r15.w, l(0), t23.xxxx
  r16.w = samp0[]..swiz;
    r17.x = (int)r16.w & 0x40000000;
    r17.y = (uint)r16.w << 2;
    if (r17.x == 0) {
      r17.x = (int)r16.w & 0x01ffffff;
      r18.x = (int)r15.w + (int)r17.x;
      r15.w = (uint)r16.w >> 25;
      r15.w = (uint)r15.w;
      r16.xyz = r16.xyz * r15.www;
      r16.xyz = frac(r16.xyz);
      r16.xyz = float3(128,128,128) * r16.xyz;
      r16.xyz = (uint3)r16.xyz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
    r18.z = samp0[]..swiz;
      r17.xz = (uint2)r16.zy >> int2(6,6);
      r15.w = (int)r18.z & 0xc0000000;
      r16.w = (int)r18.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
    r16.w = samp0[]..swiz;
      r16.w = r17.z ? r18.z : r16.w;
      r17.z = (uint)r16.w >> 13;
      r16.w = r17.x ? r17.z : r16.w;
      r16.w = (int)r16.w & 8191;
      r19.x = (int)r16.w + (int)r18.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
    r19.z = samp0[]..swiz;
      r18.y = 0;
      r19.y = 1;
      r17.xzw = r15.www ? r18.xyz : r19.xyz;
      r19.yz = r15.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
      r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
      r20.xy = (int2)r20.xy & int2(1,1);
      r16.w = (int)r17.w & 0xc0000000;
      r18.w = (int)r17.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
    r18.w = samp0[]..swiz;
      r18.w = r20.y ? r17.w : r18.w;
      r19.y = (uint)r18.w >> 13;
      r18.w = r20.x ? r19.y : r18.w;
      r18.w = (int)r18.w & 8191;
      r19.x = (int)r17.x + (int)r18.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
    r19.w = samp0[]..swiz;
      r17.xzw = r16.www ? r17.xzw : r19.xzw;
      r17.xzw = r15.www ? r18.xyz : r17.xzw;
      r15.w = (int)r17.w & 0xc0000000;
      if (r15.w == 0) {
        r15.w = (int)-r17.z + 6;
        r18.xy = (uint2)r16.zy >> (uint2)r15.ww;
        r15.w = (int)r17.w | 0x40000000;
        bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
        bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
        r16.w = (int)r16.w * 10;
        r15.w = (uint)r15.w >> (uint)r16.w;
        r15.w = (int)r15.w & 1023;
        r18.x = (int)r15.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r18.yz = (int2)r17.zz + int2(1,2);
        r15.w = (int)-r18.y + 6;
        r19.xy = (uint2)r16.zy >> (uint2)r15.ww;
        r15.w = (int)r18.w & 0xc0000000;
        r16.w = (int)r18.w | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r19.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r19.x << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
        r17.z = (int)r17.z * 10;
        r16.w = (uint)r16.w >> (uint)r17.z;
        r16.w = (int)r16.w & 1023;
        r19.x = (int)r16.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r19.y = r18.z;
        r19.xyz = r15.www ? r18.xyw : r19.xyz;
        r16.w = (int)-r19.y + 6;
        r18.yz = (uint2)r16.zy >> (uint2)r16.ww;
        r16.w = (int)r19.z & 0xc0000000;
        r17.z = (int)r19.z | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r18.z & ~bitmask.y);
        r18.y = (int)r18.y * 10;
        r17.z = (uint)r17.z >> (uint)r18.y;
        r17.z = (int)r17.z & 1023;
        r20.x = (int)r17.z + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
      r20.y = samp0[]..swiz;
        r18.yz = r16.ww ? r19.xz : r20.xy;
        r17.xw = r15.ww ? r18.xw : r18.yz;
      }
      r15.w = (int)r17.w & 0xc0000000;
      if (r15.w == 0) {
        if (14 == 0) r16.w = 0; else if (14+15 < 32) {         r16.w = (uint)r17.w << (32-(14 + 15)); r16.w = (uint)r16.w >> (32-14);        } else r16.w = (uint)r17.w >> 15;
        r16.w = (uint)r16.w;
        r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
        r16.w = 6.10388815e-05 * r16.w;
        r18.xy = (int2)r17.ww & int2(32767,536870912);
        r17.z = (uint)r18.x;
        r17.z = sunConstants.sstLightingConstants.constants.spanInInches * r17.z;
        r17.z = 3.05185094e-05 * r17.z;
        r18.x = (int)r16.y & 3;
        r18.x = (int)r17.x + (int)r18.x;
        r18.x = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.x, r18.x, l(0), t23.xxxx
      r18.x = samp0[]..swiz;
        bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
        bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
        bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
        r16.x = (uint)r18.x >> (uint)r19.x;
        r16.x = (int)r16.x & 255;
        r16.x = (uint)r16.x;
        r16.x = r16.x * r17.z;
        r16.x = r16.x * 0.00392156886 + r16.w;
        r16.y = (int)r19.y + 1;
        if (1 == 0) r16.z = 0; else if (1+1 < 32) {         r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);        } else r16.z = (uint)r16.z >> 1;
        r16.y = (int)r16.z + (int)r16.y;
        r16.y = (int)r16.y + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
      r16.y = samp0[]..swiz;
        r16.y = (uint)r16.y >> (uint)r19.z;
        r16.y = (int)r16.y & 0x0000ffff;
        r16.y = (uint)r16.y;
        r16.y = r16.y * r17.z;
        r16.y = r16.y * 1.52590219e-05 + r16.w;
        r17.y = r18.y ? r16.x : r16.y;
      } else {
        r16.x = (int)r17.w & 0x80000000;
        r16.y = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
      r16.y = samp0[]..swiz;
        r16.x = r16.x ? r16.y : 0;
        r16.y = (uint)r17.w << 2;
        r16.z = (uint)r16.x >> 16;
        r16.x = (int)r16.x & 0x0000ffff;
        r16.xz = f16tof32(r16.xz);
        r16.y = r10.y * r16.z + r16.y;
        r16.x = r10.z * r16.x + r16.y;
        r17.y = r15.w ? r16.x : r17.y;
      }
    }
    r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
    r10.w = cmp(r17.y < r10.w);
    r16.y = r10.w ? 0 : 1;
  }
  if (r14.w == 0) {
    if (enableDitheredShadow == 0) {
      r10.w = (uint)r11.w;
      r16.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
      r16.zw = sunConstants.splitPinTransform[r10.w].zz * r16.zw;
      r17.xy = r16.zw * float2(0.5,-0.5) + float2(0.5,0.5);
      r10.w = (int16)sunConstants.splitArrayOffset;
      r17.z = r11.w + r10.w;
      r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r11.z).x;
      r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
      r10.w = r14.w + r10.w;
      r10.w = saturate(-1 + r10.w);
      r14.w = r10.w * r10.w;
      r16.y = r14.w * r10.w;
    }
    if (enableDitheredShadow != 0) {
      r17.x = -r11.x;
      r10.w = (uint)r11.w;
      r11.w = 1 + r11.w;
      r11.w = min(2, r11.w);
      r11.w = (uint)r11.w;
      r12.w = 1 + -r12.w;
      r12.w = 28 * r12.w;
      r12.w = (uint)r12.w;
      r16.zw = -sunConstants.splitPinTransform[r10.w].xy + r10.yz;
      r16.zw = sunConstants.splitPinTransform[r10.w].zz * r16.zw;
      r16.zw = r16.zw * float2(0.5,-0.5) + float2(0.5,0.5);
      r10.yz = -sunConstants.splitPinTransform[r11.w].xy + r10.yz;
      r10.yz = sunConstants.splitPinTransform[r11.w].zz * r10.yz;
      r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
      r17.y = r12.x;
      r17.z = r11.x;
      r14.w = 0;
      r15.w = 0;
      while (true) {
        r17.w = cmp((uint)r15.w >= 8);
        if (r17.w != 0) break;
        r17.w = cmp((uint)r12.w < (uint)r15.w);
        r18.xy = r17.ww ? r10.yz : r16.zw;
        r18.z = r17.w ? sunConstants.splitPinTransform[r11.w].w : sunConstants.splitPinTransform[r10.w].w;
        r17.w = r17.w ? r11.w : r10.w;
        r19.x = dot(icb[r15.w+0].yx, r17.xy);
        r19.y = dot(icb[r15.w+0].yx, r17.yz);
        r18.xy = r19.xy * r18.zz + r18.xy;
        r17.w = (int)r17.w + (int16)sunConstants.splitArrayOffset;
        r18.z = (uint)r17.w;
        r17.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r11.z).x;
        r18.x = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
        r17.w = r18.x + r17.w;
        r17.w = saturate(-1 + r17.w);
        r14.w = r17.w * 0.125 + r14.w;
        r15.w = (int)r15.w + 1;
      }
      r10.y = r14.w * r14.w;
      r16.y = r10.y * r14.w;
    }
  }
  r10.y = viewmodelSunShadowRaw & 0x0000ffff;
  if (r10.y != 0) {
    r10.y = (int)r10.y + numLights;
    r10.y = (int)r10.y + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.z, r10.y, l(52), t12.xxxx
  r10.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.y, l(68), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r10.y, l(84), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.y, l(132), t12.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r10.y, l(148), t12.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
    r10.w = dot(sunConstants.wldDir.xyz, r7.xyz);
    r10.w = abs(r10.w) * -0.200000003 + 0.400000006;
    r21.xyz = r7.xyz * r10.www + v6.xyz;
    r21.w = 1;
    r17.x = dot(r17.xyzw, r21.xyzw);
    r17.y = dot(r18.xyzw, r21.xyzw);
    r11.zw = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.zw = r11.zw + r20.zw;
    r11.zw = r11.zw * r20.xy;
    r16.zw = r10.zz / r19.xz;
    r17.xy = float2(1,1) + -r16.zw;
    r17.xy = cmp(r11.zw >= r17.xy);
    r16.zw = cmp(r16.zw >= r11.zw);
    r16.zw = (int2)r16.zw | (int2)r17.xy;
    r10.w = (int)r16.w | (int)r16.z;
    if (r10.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r10.y, l(28), t12.xxxx
    r10.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.y, l(100), t12.xyzw
    r17.x = samp0[]..swiz;
    r17.y = samp0[]..swiz;
    r17.z = samp0[]..swiz;
    r17.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.zw, r10.y, l(164), t12.xxxy
    r16.z = samp0[]..swiz;
    r16.w = samp0[]..swiz;
      r10.y = dot(r17.xyzw, r21.xyzw);
      r11.zw = saturate(r11.zw);
      r17.xy = r11.zw * r19.xz + r19.yw;
      r10.y = r10.y + r16.z;
      r10.y = r10.y / r16.w;
      r10.y = max(6.10351563e-05, r10.y);
      r10.w = (int)r10.w & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r18.x = -r11.x;
        r19.z = (uint)r10.w;
        r18.y = r12.x;
        r18.z = r11.x;
        r11.zw = float2(0,0);
        while (true) {
          r12.w = cmp((int)r11.w >= 8);
          if (r12.w != 0) break;
          r20.x = dot(icb[r11.w+0].yx, r18.xy);
          r20.y = dot(icb[r11.w+0].yx, r18.yz);
          r19.xy = r20.xy * r10.zz + r17.xy;
          r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.y).x;
          r11.z = r12.w * 0.125 + r11.z;
          r11.w = (int)r11.w + 1;
        }
      } else {
        r17.z = (uint)r10.w;
        r11.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.y).x;
      }
      r10.y = r11.z * r11.z;
      r10.y = r10.y * r11.z;
    } else {
      r10.y = 1;
    }
    r16.y = r16.y * r10.y;
  }
  r10.y = cmp(0 < r16.y);
  if (r10.y != 0) {
    r10.y = saturate(dot(r7.xyz, sunConstants.wldDir.xyz));
    if (sunConstants.sunCookieIndex != 0) {
      r4.w = 1;
      r10.z = dot(sunConstants.sunCookieTransform[0].xyzw, r4.xyzw);
      r4.w = dot(sunConstants.sunCookieTransform[1].xyzw, r4.xyzw);
      r17.x = frac(r10.z);
      r17.y = frac(r4.w);
      r4.w = -1 + (int14)sunConstants.sunCookieIndex;
      r17.z = (uint)r4.w;
      r17.xyz = gCookieArray.SampleLevel(samplerLinear_s, r17.xyz, 0).xyz;
      r17.xyz = float3(-1,-1,-1) + r17.xyz;
      r17.xyz = sunConstants.sunCookieIntensity * r17.xyz + float3(1,1,1);
      r17.xyz = sunConstants.color.xyz * r17.xyz;
    } else {
      r17.xyz = sunConstants.color.xyz;
    }
    r4.w = dot(r5.xyz, sunConstants.wldDir.xyz);
    r4.w = -r4.w * r4.w + 1;
    r18.xyz = sqrt(r4.www);
    r19.xyz = -v6.xyz * r5.www + sunConstants.wldDir.xyz;
    r4.w = dot(r19.xyz, r19.xyz);
    r4.w = rsqrt(r4.w);
    r19.xyz = r19.xyz * r4.www;
    r4.w = dot(r19.xyz, r9.xyz);
    r4.w = saturate(1 + -r4.w);
    r5.w = r4.w * r4.w;
    r5.w = r5.w * r5.w;
    r4.w = r5.w * r4.w;
    r5.w = r10.y * r0.z + r8.w;
    r10.z = dot(r7.xyz, r19.xyz);
    r10.w = dot(r19.xyz, r8.xyz);
    r11.z = dot(r19.xyz, r5.xyz);
    r11.z = r11.z * r11.z;
    r11.z = r11.z / r6.w;
    r10.w = r10.w * r10.w;
    r10.w = r10.w / r1.w;
    r11.z = r11.z + r10.w;
    r11.z = abs(r10.z) * abs(r10.z) + r11.z;
    r5.w = r9.w * r5.w;
    r11.z = r11.z * r11.z;
    r11.z = r11.z * r5.w;
    r11.z = rcp(r11.z);
    r11.z = r11.z * r10.y;
    r11.z = 0.25 * r11.z;
    r11.w = dot(r19.xyz, r13.yzw);
    r11.w = r11.w * r11.w;
    r11.w = r11.w / r6.w;
    r10.w = r11.w + r10.w;
    r10.z = abs(r10.z) * abs(r10.z) + r10.w;
    r10.z = r10.z * r10.z;
    r5.w = r10.z * r5.w;
    r5.w = rcp(r5.w);
    r5.w = r5.w * r10.y;
    r5.w = 0.25 * r5.w;
    r10.yzw = r5.www * r15.xyz;
    r10.yzw = r10.yzw * float3(0.829999983,0.829999983,0.829999983) + r11.zzz;
    r11.zw = r11.zz * r4.ww;
    r4.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r4.w = r16.y * r4.w;
    r16.x = 1;
    r16.zw = sunConstants.wldDir.xy;
    r5.w = sunConstants.wldDir.z;
    r12.w = r11.w;
  } else {
    r4.w = 0;
    r17.xyz = float3(0,0,0);
    r16.xyzw = float4(0,0,0,0);
    r18.xyz = float3(0,0,0);
    r5.w = 0;
    r10.yzw = float3(0,0,0);
    r12.w = 0;
    r11.zw = float2(0,0);
  }
  r14.w = 0.0078125 * r3.w;
  r14.w = min(15, r14.w);
  r14.w = (uint)r14.w;
  r19.xy = (uint2)r2.zw >> int2(6,6);
  r19.z = (uint)r14.w << 4;
  r20.x = -r11.x;
  r21.xy = float2(0,0);
  r22.w = 0;
  r23.xyz = v6.xyz;
  r23.w = 1;
  r24.w = 1;
  r20.z = r11.x;
  r25.z = 1;
  r26.w = 1;
  r20.yw = r12.xx;
  r11.y = r20.w;
  r27.w = 1;
  r12.y = r20.x;
  r12.z = r11.x;
  r28.x = r12.x;
  r28.y = r20.x;
  r28.z = r11.x;
  r29.xyz = float3(0,0,0);
  r30.xyz = float3(0,0,0);
  r31.xyz = float3(0,0,0);
  r32.xyz = r17.xyz;
  r33.xy = r16.zw;
  r33.z = r5.w;
  r34.xyz = r18.xyz;
  r35.xyz = r10.yzw;
  r36.x = r12.w;
  r36.yz = r11.zw;
  r37.x = enableDitheredShadow;
  r37.y = r4.w;
  r2.zw = r16.xy;
  r14.w = 0;
  while (true) {
    r15.w = cmp((uint)r14.w >= numLights);
    if (r15.w != 0) break;
    r21.z = (uint)r14.w >> 5;
    r22.xyz = (int3)r19.xyz + (int3)r21.xyz;
    r15.w = visibleLights.Load(r22.xyzw).x;
    r22.xyz = r29.xyz;
    r38.xyz = r30.xyz;
    r39.xyz = r31.xyz;
    r40.xyz = r32.xyz;
    r41.xyz = r33.xyz;
    r42.xyz = r34.xyz;
    r43.xyz = r35.xyz;
    r21.zw = r2.zw;
    r17.w = r37.x;
    r18.w = r37.y;
    r44.xyz = r36.xyz;
    r19.w = r15.w;
    while (true) {
      if (r19.w == 0) break;
      r25.w = firstbitlow((uint)r19.w);
      r28.w = 1 << (int)r25.w;
      r29.w = (int)r19.w & (int)r28.w;
      if (r29.w != 0) {
        r19.w = (int)r19.w ^ (int)r28.w;
        r25.w = (int)r14.w + (int)r25.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r25.w, l(0), t12.xyzw
      r45.x = samp0[]..swiz;
      r45.y = samp0[]..swiz;
      r45.z = samp0[]..swiz;
      r45.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xy, r25.w, l(16), t12.xyxx
      r46.x = samp0[]..swiz;
      r46.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r25.w, l(28), t12.xyzw
      r47.x = samp0[]..swiz;
      r47.y = samp0[]..swiz;
      r47.z = samp0[]..swiz;
      r47.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r25.w, l(44), t12.wxyz
      r48.x = samp0[]..swiz;
      r48.y = samp0[]..swiz;
      r48.z = samp0[]..swiz;
      r48.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r25.w, l(60), t12.zwxy
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r25.w, l(76), t12.xyzw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r25.w, l(92), t12.zwxy
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
        if (3 == 0) r28.w = 0; else if (3+24 < 32) {         r28.w = (uint)r47.x << (32-(3 + 24)); r28.w = (uint)r28.w >> (32-3);        } else r28.w = (uint)r47.x >> 24;
        switch (r28.w) {
          case 4 :          r28.w = cmp(0 < r51.x);
          r52.x = r50.w;
          r52.yz = r51.zw;
          r53.xyz = -r52.xyz * float3(0.5,0.5,0.5) + r45.xyz;
          r54.xyz = -v6.xyz + r53.xyz;
          r29.w = dot(r52.xyz, r54.xyz);
          r29.w = saturate(-r29.w / r51.x);
          r52.xyz = r29.www * r52.xyz + r53.xyz;
          r52.xyz = r28.www ? r52.xyz : r45.xyz;
          r52.xyz = -v6.xyz + r52.xyz;
          r28.w = dot(r52.xyz, r52.xyz);
          r29.w = sqrt(r28.w);
          r30.w = r48.z * r48.z;
          r30.w = r30.w / r28.w;
          r30.w = min(1, r30.w);
          r31.w = saturate(r29.w * r47.y + r47.z);
          r29.w = saturate(r29.w * r47.w + r48.y);
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
            r28.w = rsqrt(r28.w);
            r53.xyz = r52.xyz * r28.www;
            r30.w = dot(r7.xyz, r53.xyz);
            if (3 == 0) r37.z = 0; else if (3+27 < 32) {             r37.z = (uint)r47.x << (32-(3 + 27)); r37.z = (uint)r37.z >> (32-3);            } else r37.z = (uint)r47.x >> 27;
            if (4 == 0) r37.w = 0; else if (4+20 < 32) {             r37.w = (uint)r47.x << (32-(4 + 20)); r37.w = (uint)r37.w >> (32-4);            } else r37.w = (uint)r47.x >> 20;
            r31.w = cmp((int)r37.z != 1);
            if (r31.w != 0) {
              r31.w = abs(r30.w) * -0.200000003 + 0.400000006;
              r54.xyz = r7.xyz * r31.www + v6.xyz;
              r49.z = r50.x;
              r54.xyz = r54.xyz + -r49.xyz;
              r31.w = max(abs(r54.y), abs(r54.z));
              r31.w = max(abs(r54.x), r31.w);
              r31.w = r50.y / r31.w;
              r31.w = r31.w + r50.z;
              r32.w = dot(r54.xyz, r54.xyz);
              r32.w = rsqrt(r32.w);
              r31.w = max(6.10351563e-05, r31.w);
              r33.w = (int)r47.x & 0x0000ffff;
              r55.w = (uint)r33.w;
              r33.w = 0;
              r34.w = 0;
              while (true) {
                r35.w = cmp((int)r34.w >= 8);
                if (r35.w != 0) break;
                r56.y = dot(icb[r34.w+0].yx, r20.xy);
                r56.z = dot(icb[r34.w+0].yx, r20.yz);
                r56.yz = r56.yz * r48.ww;
                r56.x = r56.y * r13.x;
                r56.w = r56.y * r10.x;
                r55.xyz = r54.xyz * r32.www + r56.xzw;
                r35.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r55.xyzw, r31.w).x;
                r33.w = r35.w * 0.125 + r33.w;
                r34.w = (int)r34.w + 1;
              }
            } else {
              r33.w = 1;
            }
            if (r37.w != 0) {
              r31.w = (int)r37.w + numLights;
              r31.w = (int)r31.w + -1;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.w, r31.w, l(52), t12.xxxx
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r31.w, l(100), t12.xyzw
            r54.x = samp0[]..swiz;
            r54.y = samp0[]..swiz;
            r54.z = samp0[]..swiz;
            r54.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r31.w, l(116), t12.xyzw
            r55.x = samp0[]..swiz;
            r55.y = samp0[]..swiz;
            r55.z = samp0[]..swiz;
            r55.w = samp0[]..swiz;
              r34.w = abs(r30.w) * -0.200000003 + 0.400000006;
              r24.xyz = r7.xyz * r34.www + v6.xyz;
              r34.w = dot(r54.xyzw, r24.xyzw);
              r35.w = dot(r55.xyzw, r24.xyzw);
              r36.w = cmp(r35.w < r34.w);
              if (r36.w == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r31.w, l(68), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r31.w, l(84), t12.xyzw
              r55.x = samp0[]..swiz;
              r55.y = samp0[]..swiz;
              r55.z = samp0[]..swiz;
              r55.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r31.w, l(132), t12.xyzw
              r56.x = samp0[]..swiz;
              r56.y = samp0[]..swiz;
              r56.z = samp0[]..swiz;
              r56.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r31.w, l(148), t12.xyzw
              r57.x = samp0[]..swiz;
              r57.y = samp0[]..swiz;
              r57.z = samp0[]..swiz;
              r57.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.zw, r31.w, l(164), t12.xxxy
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r54.x = dot(r54.xyzw, r24.xyzw);
                r54.y = dot(r55.xyzw, r24.xyzw);
                r24.xy = r54.xy / r35.ww;
                r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r24.xy = r24.xy + r57.zw;
                r24.xy = r24.xy * r57.xy;
                r54.xy = r32.ww / r56.xz;
                r54.zw = float2(1,1) + -r54.xy;
                r54.zw = cmp(r24.xy >= r54.zw);
                r54.xy = cmp(r54.xy >= r24.xy);
                r54.xy = (int2)r54.xy | (int2)r54.zw;
                r24.z = (int)r54.y | (int)r54.x;
                r24.xy = saturate(r24.xy);
                r54.xy = r24.xy * r56.xz + r56.yw;
                r24.x = r37.w * r35.w;
                r24.y = r37.z * r35.w + r34.w;
                r24.x = r24.y / r24.x;
              } else {
                r24.z = -1;
              }
              r24.y = (int)r36.w | (int)r24.z;
              if (r24.y == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r31.w, l(28), t12.xxxx
              r24.y = samp0[]..swiz;
                r24.x = max(6.10351563e-05, r24.x);
                r24.y = (int)r24.y & 0x0000ffff;
                if (r17.w != 0) {
                  r55.z = (uint)r24.y;
                  r24.z = 0;
                  r31.w = 0;
                  while (true) {
                    r34.w = cmp((int)r31.w >= 8);
                    if (r34.w != 0) break;
                    r56.x = dot(icb[r31.w+0].yx, r20.xw);
                    r56.y = dot(icb[r31.w+0].xy, r11.xy);
                    r55.xy = r56.xy * r32.ww + r54.xy;
                    r34.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r55.xyz, r24.x).x;
                    r24.z = r34.w * 0.125 + r24.z;
                    r31.w = (int)r31.w + 1;
                  }
                } else {
                  r54.z = (uint)r24.y;
                  r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r54.xyz, r24.x).x;
                }
                r24.x = r24.z * r24.z;
                r24.x = r24.x * r24.z;
              } else {
                r24.x = 1;
              }
              r33.w = r33.w * r24.x;
            }
            r24.x = r33.w * r29.w;
            r24.y = cmp(0 < r24.x);
            if (r24.y != 0) {
              r30.w = saturate(r30.w);
              r24.y = dot(r5.xyz, r53.xyz);
              r24.y = -r24.y * r24.y + 1;
              r54.xyz = sqrt(r24.yyy);
              r52.xyz = r52.xyz * r28.www + r9.xyz;
              r24.y = dot(r52.xyz, r52.xyz);
              r24.y = rsqrt(r24.y);
              r52.xyz = r52.xyz * r24.yyy;
              r24.y = dot(r52.xyz, r9.xyz);
              r24.y = saturate(1 + -r24.y);
              r28.w = r24.y * r24.y;
              r28.w = r28.w * r28.w;
              r24.y = r28.w * r24.y;
              r28.w = r30.w * r0.z + r8.w;
              r31.w = dot(r7.xyz, r52.xyz);
              r32.w = dot(r52.xyz, r8.xyz);
              r34.w = dot(r52.xyz, r5.xyz);
              r34.w = r34.w * r34.w;
              r34.w = r34.w / r6.w;
              r32.w = r32.w * r32.w;
              r32.w = r32.w / r1.w;
              r34.w = r34.w + r32.w;
              r34.w = abs(r31.w) * abs(r31.w) + r34.w;
              r28.w = r28.w * r9.w;
              r34.w = r34.w * r34.w;
              r34.w = r34.w * r28.w;
              r34.w = rcp(r34.w);
              r34.w = r34.w * r30.w;
              r34.w = 0.25 * r34.w;
              r35.w = dot(r52.xyz, r13.yzw);
              r35.w = r35.w * r35.w;
              r35.w = r35.w / r6.w;
              r32.w = r35.w + r32.w;
              r31.w = abs(r31.w) * abs(r31.w) + r32.w;
              r31.w = r31.w * r31.w;
              r28.w = r31.w * r28.w;
              r28.w = rcp(r28.w);
              r28.w = r28.w * r30.w;
              r28.w = 0.25 * r28.w;
              r52.xyz = r28.www * r15.xyz;
              r52.xyz = r52.xyz * float3(0.829999983,0.829999983,0.829999983) + r34.www;
              r24.y = r34.w * r24.y;
              r46.z = r45.w;
              r28.w = dot(r46.zxy, float3(0.212599993,0.715200007,0.0722000003));
              r28.w = r28.w * r24.x;
              r30.w = cmp(r18.w < r28.w);
              if (r30.w != 0) {
                r30.w = r21.z * r21.w;
                r55.xyz = r30.www * r40.xyz;
                r22.xyz = r55.xyz * r42.xyz + r22.xyz;
                r39.xyz = r55.xyz * r43.xyz + r39.xyz;
                r38.xyz = r55.xyz * r44.xyz + r38.xyz;
                r21.w = r33.w;
                r44.xyz = r24.yyy;
                r40.xyz = r46.zxy;
                r41.xyz = r53.xyz;
                r42.xyz = r54.xyz;
                r43.xyz = r52.xyz;
                r18.w = r28.w;
                r21.z = r29.w;
              } else {
                r53.xyz = r24.xxx * r46.zxy;
                r22.xyz = r53.xyz * r54.zzz + r22.xyz;
                r39.xyz = r53.xyz * r52.xyz + r39.xyz;
                r38.xyz = r53.xyz * r24.yyy + r38.xyz;
              }
            }
          }
          break;
          case 2 :        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r25.w, l(108), t12.zwxy
        r52.x = samp0[]..swiz;
        r52.y = samp0[]..swiz;
        r52.z = samp0[]..swiz;
        r52.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r25.w, l(124), t12.xyzw
        r53.x = samp0[]..swiz;
        r53.y = samp0[]..swiz;
        r53.z = samp0[]..swiz;
        r53.w = samp0[]..swiz;
          r54.xy = r52.xy;
          r54.zw = r53.xy;
          r24.x = dot(r54.xyzw, r23.xyzw);
          r24.y = cmp(r24.x < 1);
          if (r24.y != 0) {
            r55.xyz = float3(1,1,1);
            r24.y = 0;
          } else {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r25.w, l(172), t12.yzwx
          r56.x = samp0[]..swiz;
          r56.y = samp0[]..swiz;
          r56.z = samp0[]..swiz;
          r56.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r25.w, l(188), t12.wxyz
          r57.x = samp0[]..swiz;
          r57.y = samp0[]..swiz;
          r57.z = samp0[]..swiz;
          r57.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r25.w, l(204), t12.xyzw
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.w, r25.w, l(236), t12.xxxx
          r28.w = samp0[]..swiz;
            r45.xyz = -v6.xyz + r45.xyz;
            r29.w = r48.z * r48.z;
            r30.w = dot(r45.xyz, r45.xyz);
            r29.w = r29.w / r30.w;
            r29.w = min(1, r29.w);
            r30.w = saturate(r24.x * r47.y + r47.z);
            r31.w = saturate(r24.x * r47.w + r48.y);
            r32.w = r30.w * r30.w;
            r30.w = r30.w * -2 + 3;
            r30.w = r32.w * r30.w;
            r29.w = r30.w * r29.w;
            r30.w = r31.w * r31.w;
            r31.w = r31.w * -2 + 3;
            r30.w = r31.w * r30.w;
            r29.w = r30.w * r29.w;
            r59.xy = r49.xy;
            r59.zw = r50.xy;
            r45.x = dot(r59.xyzw, r23.xyzw);
            r59.xy = r50.zw;
            r59.zw = r51.zw;
            r45.y = dot(r59.xyzw, r23.xyzw);
            r25.xy = r45.xy / r24.xx;
            r24.x = cmp(r56.w < 0.00048828125);
            if (r24.x != 0) {
              r57.y = r58.x;
              r37.zw = saturate(abs(r25.xy) * r57.zw + r57.xy);
              r45.xy = r37.zw * r37.zw;
              r37.zw = r37.zw * float2(-2,-2) + float2(3,3);
              r37.zw = r45.xy * r37.zw;
              r24.x = r37.z * r37.w;
            } else {
              r56.w = r57.y;
              r56.xyzw = saturate(r56.xyzw * abs(r25.yyxx));
              r56.xyzw = log2(r56.xyzw);
              r56.xyzw = r57.xxxx * r56.xyzw;
              r56.xyzw = exp2(r56.xyzw);
              r37.zw = r56.xy + r56.zw;
              r37.zw = log2(r37.zw);
              r37.zw = r58.xx * r37.zw;
              r37.zw = exp2(r37.zw);
              r30.w = r57.z * r37.z;
              r31.w = r57.w * r37.w + -1;
              r30.w = r57.w * r37.w + -r30.w;
              r30.w = saturate(r31.w / r30.w);
              r31.w = r30.w * r30.w;
              r30.w = r30.w * -2 + 3;
              r24.x = r31.w * r30.w;
            }
            r24.y = r29.w * r24.x;
            r24.x = (int)r28.w & 255;
            if (r24.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyz, r25.w, l(220), t12.xyzx
            r45.x = samp0[]..swiz;
            r45.y = samp0[]..swiz;
            r45.z = samp0[]..swiz;
              r28.w = dot(r58.yzw, r25.xyz);
              r25.x = dot(r45.xyz, r25.xyz);
              r45.x = frac(r28.w);
              r45.y = frac(r25.x);
              r24.x = (int)r24.x + -1;
              r45.z = (uint)r24.x;
              r55.xyz = gCookieArray.SampleLevel(samplerLinear_s, r45.xyz, 0).xyz;
            } else {
              r55.xyz = float3(1,1,1);
            }
          }
          r24.x = cmp(0 < r24.y);
          if (r24.x != 0) {
            r48.yz = r49.zw;
            r45.xyz = -v6.xyz + r48.xyz;
            r24.x = dot(r45.xyz, r45.xyz);
            r24.x = rsqrt(r24.x);
            r47.yzw = r45.xyz * r24.xxx;
            r25.x = dot(r7.xyz, r47.yzw);
            if (3 == 0) r37.z = 0; else if (3+27 < 32) {             r37.z = (uint)r47.x << (32-(3 + 27)); r37.z = (uint)r37.z >> (32-3);            } else r37.z = (uint)r47.x >> 27;
            if (4 == 0) r37.w = 0; else if (4+20 < 32) {             r37.w = (uint)r47.x << (32-(4 + 20)); r37.w = (uint)r37.w >> (32-4);            } else r37.w = (uint)r47.x >> 20;
            r25.y = cmp((int)r37.z != 1);
            if (r25.y != 0) {
              r25.y = abs(r25.x) * -0.200000003 + 0.400000006;
              r26.xyz = r7.xyz * r25.yyy + v6.xyz;
              r52.xy = r51.xy;
              r25.y = dot(r52.xyzw, r26.xyzw);
              r28.w = dot(r54.xyzw, r26.xyzw);
              r29.w = cmp(r28.w >= r25.y);
              if (r29.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xy, r25.w, l(140), t12.xyxx
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
                r49.zw = r50.xy;
                r48.x = dot(r49.xyzw, r26.xyzw);
                r51.xy = r50.zw;
                r48.y = dot(r51.xyzw, r26.xyzw);
                r26.xy = r48.xy / r28.ww;
                r26.xy = saturate(r26.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                r26.xy = r26.xy * r53.zx + r53.wy;
                r25.y = r25.y / r28.w;
                r25.y = max(6.10351563e-05, r25.y);
                r25.w = (int)r47.x & 0x0000ffff;
                if (r17.w != 0) {
                  r48.z = (uint)r25.w;
                  r28.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r49.x = dot(icb[r29.w+0].xy, r12.xy);
                    r49.y = dot(icb[r29.w+0].yx, r12.xz);
                    r48.xy = r49.xy * r48.ww + r26.xy;
                    r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r48.xyz, r25.y).x;
                    r28.w = r30.w * 0.125 + r28.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r26.z = (uint)r25.w;
                  r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r25.y).x;
                }
                r25.y = r28.w * r28.w;
                r25.y = r25.y * r28.w;
              } else {
                r25.y = 1;
              }
            } else {
              r25.y = 1;
            }
            if (r37.w != 0) {
              r25.w = (int)r37.w + numLights;
              r25.w = (int)r25.w + -1;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.x, r25.w, l(52), t12.xxxx
            r26.x = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r25.w, l(68), t12.xyzw
            r48.x = samp0[]..swiz;
            r48.y = samp0[]..swiz;
            r48.z = samp0[]..swiz;
            r48.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r25.w, l(84), t12.xyzw
            r49.x = samp0[]..swiz;
            r49.y = samp0[]..swiz;
            r49.z = samp0[]..swiz;
            r49.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r25.w, l(100), t12.xyzw
            r50.x = samp0[]..swiz;
            r50.y = samp0[]..swiz;
            r50.z = samp0[]..swiz;
            r50.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r25.w, l(116), t12.xyzw
            r51.x = samp0[]..swiz;
            r51.y = samp0[]..swiz;
            r51.z = samp0[]..swiz;
            r51.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r25.w, l(132), t12.xyzw
            r52.x = samp0[]..swiz;
            r52.y = samp0[]..swiz;
            r52.z = samp0[]..swiz;
            r52.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r25.w, l(148), t12.xyzw
            r53.x = samp0[]..swiz;
            r53.y = samp0[]..swiz;
            r53.z = samp0[]..swiz;
            r53.w = samp0[]..swiz;
              r26.y = abs(r25.x) * -0.200000003 + 0.400000006;
              r27.xyz = r7.xyz * r26.yyy + v6.xyz;
              r48.x = dot(r48.xyzw, r27.xyzw);
              r48.y = dot(r49.xyzw, r27.xyzw);
              r26.y = dot(r50.xyzw, r27.xyzw);
              r26.z = dot(r51.xyzw, r27.xyzw);
              r27.x = cmp(r26.z < r26.y);
              r27.yz = r48.xy / r26.zz;
              r27.yz = r27.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r27.yz = r27.yz + r53.zw;
              r27.yz = r27.yz * r53.xy;
              r37.zw = r26.xx / r52.xz;
              r48.xy = float2(1,1) + -r37.zw;
              r48.xy = cmp(r27.yz >= r48.xy);
              r37.zw = cmp(r37.zw >= r27.yz);
              r37.zw = (int2)r37.zw | (int2)r48.xy;
              r29.w = (int)r37.w | (int)r37.z;
              r27.x = (int)r27.x | (int)r29.w;
              if (r27.x == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.x, r25.w, l(28), t12.xxxx
              r27.x = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.zw, r25.w, l(164), t12.xxxy
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r27.yz = saturate(r27.yz);
                r48.xy = r27.yz * r52.xz + r52.yw;
                r25.w = r37.w * r26.z;
                r26.y = r37.z * r26.z + r26.y;
                r25.w = r26.y / r25.w;
                r25.w = max(6.10351563e-05, r25.w);
                r26.y = r27.x ? 0.000000 : 0;
                if (r17.w != 0) {
                  r27.z = (uint)r26.y;
                  r26.z = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r49.x = dot(icb[r29.w+0].xy, r28.xy);
                    r49.y = dot(icb[r29.w+0].yx, r28.xz);
                    r27.xy = r49.xy * r26.xx + r48.xy;
                    r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r25.w).x;
                    r26.z = r27.x * 0.125 + r26.z;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r48.z = (uint)r26.y;
                  r26.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r48.xyz, r25.w).x;
                }
                r25.w = r26.z * r26.z;
                r25.w = r25.w * r26.z;
              } else {
                r25.w = 1;
              }
              r25.y = r25.y * r25.w;
            }
            r25.w = r25.y * r24.y;
            r26.x = cmp(0 < r25.w);
            if (r26.x != 0) {
              r25.x = saturate(r25.x);
              r46.w = r45.w;
              r27.xyz = r55.xyz * r46.wxy;
              r26.x = dot(r5.xyz, r47.yzw);
              r26.x = -r26.x * r26.x + 1;
              r46.xyz = sqrt(r26.xxx);
              r45.xyz = r45.xyz * r24.xxx + r9.xyz;
              r24.x = dot(r45.xyz, r45.xyz);
              r24.x = rsqrt(r24.x);
              r45.xyz = r45.xyz * r24.xxx;
              r24.x = dot(r45.xyz, r9.xyz);
              r24.x = saturate(1 + -r24.x);
              r26.x = r24.x * r24.x;
              r26.x = r26.x * r26.x;
              r24.x = r26.x * r24.x;
              r26.x = r25.x * r0.z + r8.w;
              r26.y = dot(r7.xyz, r45.xyz);
              r29.w = dot(r45.xyz, r8.xyz);
              r30.w = dot(r45.xyz, r5.xyz);
              r30.w = r30.w * r30.w;
              r30.w = r30.w / r6.w;
              r29.w = r29.w * r29.w;
              r29.w = r29.w / r1.w;
              r30.w = r30.w + r29.w;
              r30.w = abs(r26.y) * abs(r26.y) + r30.w;
              r26.x = r26.x * r9.w;
              r30.w = r30.w * r30.w;
              r30.w = r30.w * r26.x;
              r30.w = rcp(r30.w);
              r30.w = r30.w * r25.x;
              r30.w = 0.25 * r30.w;
              r31.w = dot(r45.xyz, r13.yzw);
              r31.w = r31.w * r31.w;
              r31.w = r31.w / r6.w;
              r29.w = r31.w + r29.w;
              r26.y = abs(r26.y) * abs(r26.y) + r29.w;
              r26.y = r26.y * r26.y;
              r26.x = r26.y * r26.x;
              r26.x = rcp(r26.x);
              r25.x = r26.x * r25.x;
              r25.x = 0.25 * r25.x;
              r45.xyz = r25.xxx * r15.xyz;
              r45.xyz = r45.xyz * float3(0.829999983,0.829999983,0.829999983) + r30.www;
              r24.x = r30.w * r24.x;
              r25.x = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r25.x = r25.w * r25.x;
              r26.x = cmp(r18.w < r25.x);
              if (r26.x != 0) {
                r26.x = r21.z * r21.w;
                r48.xyz = r26.xxx * r40.xyz;
                r22.xyz = r48.xyz * r42.xyz + r22.xyz;
                r39.xyz = r48.xyz * r43.xyz + r39.xyz;
                r38.xyz = r48.xyz * r44.xyz + r38.xyz;
                r21.w = r25.y;
                r44.xyz = r24.xxx;
                r40.xyz = r27.xyz;
                r41.xyz = r47.yzw;
                r42.xyz = r46.xyz;
                r43.xyz = r45.xyz;
                r18.w = r25.x;
                r21.z = r24.y;
              } else {
                r25.xyw = r27.xyz * r25.www;
                r22.xyz = r25.xyw * r46.zzz + r22.xyz;
                r39.xyz = r25.xyw * r45.xyz + r39.xyz;
                r38.xyz = r25.xyw * r24.xxx + r38.xyz;
              }
            }
          }
          break;
          default :
          break;
        }
      }
    }
    r29.xyz = r22.xyz;
    r30.xyz = r38.xyz;
    r31.xyz = r39.xyz;
    r32.xyz = r40.xyz;
    r33.xyz = r41.xyz;
    r34.xyz = r42.xyz;
    r35.xyz = r43.xyz;
    r2.zw = r21.zw;
    r37.y = r18.w;
    r36.xyz = r44.xyz;
    r14.w = (int)r14.w + 32;
  }
  r5.z = 0;
  r5.xy = float2(1,-1) * r33.yx;
  r8.xyz = r33.zxy * r5.yzx;
  r8.xyz = r33.yzx * r5.zxy + -r8.xyz;
  r10.xyz = viewProjectionMatrix._m10_m11_m13 * r4.yyy;
  r10.xyz = r4.xxx * viewProjectionMatrix._m00_m01_m03 + r10.xyz;
  r10.xyz = r4.zzz * viewProjectionMatrix._m20_m21_m23 + r10.xyz;
  r10.xyz = r10.xyz + r3.xyz;
  r11.z = rcp(r10.z);
  r10.xy = r11.zz * r10.xy;
  r11.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r4.xyz = r33.xyz * float3(2.4000001,2.4000001,2.4000001) + r4.xyz;
  r0.z = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r1.w = 3.14159989 * r0.z;
  r1.w = gameTick.w * 0.5 + r1.w;
  sincos(r1.w, r10.x, r12.x);
  r10.xyw = r10.xxx * r8.xyz;
  r10.xyw = r12.xxx * r5.xyz + r10.xyw;
  r10.xyw = r10.xyw * float3(0.119999997,0.119999997,0.119999997) + r4.xyz;
  r12.xyz = viewProjectionMatrix._m10_m11_m13 * r10.yyy;
  r12.xyz = r10.xxx * viewProjectionMatrix._m00_m01_m03 + r12.xyz;
  r10.xyw = r10.www * viewProjectionMatrix._m20_m21_m23 + r12.xyz;
  r10.xyw = r10.xyw + r3.xyz;
  r10.xy = float2(0.5,-0.5) * r10.xy;
  r12.z = rcp(r10.w);
  r12.xy = r10.xy * r12.zz + float2(0.5,0.5);
  r13.xyz = -r11.xyz;
  r10.xyw = r13.xyz + r12.xyz;
  r1.w = 3.14159989 + r1.w;
  sincos(r1.w, r12.x, r15.x);
  r8.xyz = r12.xxx * r8.xyz;
  r5.xyz = r15.xxx * r5.xyz + r8.xyz;
  r4.xyz = r5.xyz * float3(0.119999997,0.119999997,0.119999997) + r4.xyz;
  r5.xyz = viewProjectionMatrix._m10_m11_m13 * r4.yyy;
  r4.xyw = r4.xxx * viewProjectionMatrix._m00_m01_m03 + r5.xyz;
  r4.xyz = r4.zzz * viewProjectionMatrix._m20_m21_m23 + r4.xyw;
  r3.xyz = r4.xyz + r3.xyz;
  r3.xy = float2(0.5,-0.5) * r3.xy;
  r4.z = rcp(r3.z);
  r4.xy = r3.xy * r4.zz + r13.xy;
  r13.w = 0.5;
  r3.xyz = r4.xyz + r13.wwz;
  r1.w = dot(renderTargetSize.zw, renderTargetSize.zw);
  r1.w = sqrt(r1.w);
  r4.x = dot(r10.xy, r10.xy);
  r4.x = sqrt(r4.x);
  r4.x = rcp(r4.x);
  r1.w = r4.x * r1.w;
  r4.xy = r0.zz * float2(0.5,0.5) + float2(0.333333343,1);
  r4.xy = float2(0.117647059,0.117647059) * r4.xy;
  r4.xy = r4.xy * r4.xy;
  x1[0].x = r4.x;
  r5.xyz = r10.xyw * r4.xxx + r11.xyz;
  r4.zw = cmp(r1.ww < r4.xy);
  r5.xy = renderTargetSize.xy * r5.xy;
  r8.xy = (int2)r5.xy;
  r8.zw = float2(0,0);
  r5.x = floatZSampler.Load(r8.xyz).x;
  r5.y = cmp(r5.x >= 0.984375);
  r5.w = 1.01587307 * r5.x;
  r5.x = r5.x * 64 + -63;
  r5.x = r5.y ? r5.x : r5.w;
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
  r5.yzw = r3.xyz * r4.yyy + r11.xyz;
  r5.yz = renderTargetSize.xy * r5.yz;
  r8.xy = (int2)r5.yz;
  r8.zw = float2(0,0);
  r5.y = floatZSampler.Load(r8.xyz).x;
  r5.z = cmp(r5.y >= 0.984375);
  r6.w = 1.01587307 * r5.y;
  r5.y = r5.y * 64 + -63;
  r5.y = r5.z ? r5.y : r6.w;
  r5.y = max(9.99999994e-09, r5.y);
  r5.y = rcp(r5.y);
  x2[1].x = r5.y;
  r5.z = 0.0419999994 + r5.y;
  r5.z = r5.w * r5.z;
  r5.z = cmp(1 < r5.z);
  r5.z = r5.z ? 1.000000 : 0;
  r4.w = r4.w ? r5.z : 1;
  x0[1].x = r4.w;
  r5.z = r4.z + r4.w;
  r5.z = cmp(r5.z != 0.000000);
  if (r5.z != 0) {
    r5.zw = r0.zz * float2(0.5,0.5) + float2(1.33333337,2);
    r5.zw = float2(0.117647059,0.117647059) * r5.zw;
    r5.zw = r5.zw * r5.zw + -r4.xy;
    r4.x = r4.z * r5.z + r4.x;
    x1[0].x = r4.x;
    r8.xyz = r10.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r1.w < r4.x);
    r8.xy = renderTargetSize.xy * r8.xy;
    r12.xy = (int2)r8.xy;
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
    r5.x = r8.z * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.z;
    r4.x = r4.x ? r5.x : r4.z;
    x0[0].x = r4.x;
    r4.y = r4.w * r5.w + r4.y;
    x1[1].x = r4.y;
    r5.xzw = r3.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r1.w < r4.y);
    r5.xz = renderTargetSize.xy * r5.xz;
    r8.xy = (int2)r5.xz;
    r8.zw = float2(0,0);
    r4.z = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.z >= 0.984375);
    r5.z = 1.01587307 * r4.z;
    r4.z = r4.z * 64 + -63;
    r4.z = r5.x ? r4.z : r5.z;
    r4.z = max(9.99999994e-09, r4.z);
    r4.z = rcp(r4.z);
    r5.x = r4.y ? r4.z : r5.y;
    x2[1].x = r5.x;
    r4.z = 0.0419999994 + r4.z;
    r4.z = r5.w * r4.z;
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
    r4.xy = r0.zz * float2(0.5,0.5) + float2(2.33333325,3);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r10.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r1.w < r4.x);
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
    r5.xyz = r3.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r1.w < r4.y);
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
    r4.xy = r0.zz * float2(0.5,0.5) + float2(3.33333325,4);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r10.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r1.w < r4.x);
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
    r5.xyz = r3.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r1.w < r4.y);
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
    r4.xy = r0.zz * float2(0.5,0.5) + float2(4.33333349,5);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r10.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r1.w < r4.x);
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
    r5.xyz = r3.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r1.w < r4.y);
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
    r4.xy = r0.zz * float2(0.5,0.5) + float2(5.33333349,6);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r10.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r1.w < r4.x);
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
    r5.xyz = r3.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r1.w < r4.y);
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
    r4.xy = r0.zz * float2(0.5,0.5) + float2(6.33333349,7);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r4.z = x1[0].x;
    r4.w = x0[0].x;
    r4.x = r4.x * r4.x + -r4.z;
    r4.x = r4.w * r4.x + r4.z;
    x1[0].x = r4.x;
    r5.xyz = r10.xyw * r4.xxx + r11.xyz;
    r4.x = cmp(r1.w < r4.x);
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
    r5.xyz = r3.xyz * r4.yyy + r11.xyz;
    r4.y = cmp(r1.w < r4.y);
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
    r4.xy = r0.zz * float2(0.5,0.5) + float2(7.33333349,8);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r0.z = x1[0].x;
    r4.z = x0[0].x;
    r4.x = r4.x * r4.x + -r0.z;
    r0.z = r4.z * r4.x + r0.z;
    r5.xyz = r10.xyw * r0.zzz + r11.xyz;
    r0.z = cmp(r1.w < r0.z);
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
    r4.w = r0.z ? r4.x : r4.w;
    x2[0].x = r4.w;
    r4.x = 0.0419999994 + r4.x;
    r4.x = r5.z * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.z * r4.x;
    r0.z = r0.z ? r4.x : r4.z;
    x0[0].x = r0.z;
    r0.z = x1[1].x;
    r4.x = x0[1].x;
    r4.y = r4.y * r4.y + -r0.z;
    r0.z = r4.x * r4.y + r0.z;
    r3.xyz = r3.xyz * r0.zzz + r11.xyz;
    r0.z = cmp(r1.w < r0.z);
    r3.xy = renderTargetSize.xy * r3.xy;
    r5.xy = (int2)r3.xy;
    r5.zw = float2(0,0);
    r1.w = floatZSampler.Load(r5.xyz).x;
    r3.x = cmp(r1.w >= 0.984375);
    r3.y = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r3.x ? r1.w : r3.y;
    r1.w = max(9.99999994e-09, r1.w);
    r1.w = rcp(r1.w);
    r3.x = x2[1].x;
    r3.x = r0.z ? r1.w : r3.x;
    x2[1].x = r3.x;
    r1.w = 0.0419999994 + r1.w;
    r1.w = r3.z * r1.w;
    r1.w = cmp(1 < r1.w);
    r1.w = r1.w ? 1.000000 : 0;
    r1.w = r4.x * r1.w;
    r0.z = r0.z ? r1.w : r4.x;
    x0[1].x = r0.z;
  }
  r0.z = x2[0].x;
  r0.z = r0.z + -r10.z;
  r0.z = cmp(2.4000001 < abs(r0.z));
  r1.w = x0[0].x;
  r1.w = -r1.w * 0.5 + 1;
  r0.z = r0.z ? 0.5 : r1.w;
  r1.w = x2[1].x;
  r1.w = r1.w + -r10.z;
  r1.w = cmp(2.4000001 < abs(r1.w));
  r3.x = x0[1].x;
  r3.x = 0.5 * r3.x;
  r1.w = r1.w ? -0.5 : -r3.x;
  r0.z = r1.w + r0.z;
  r0.z = saturate(1 + -r0.z);
  r1.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = r1.w * r0.z;
  r0.z = min(r2.w, r0.z);
  r0.z = r2.z * r0.z;
  r3.xyz = r0.zzz * r32.xyz;
  r4.xyz = r3.xyz * r34.xyz + r29.xyz;
  r5.xyz = r3.xyz * r35.xyz + r31.xyz;
  r3.xyz = r3.xyz * r36.xyz + r30.xyz;
  r0.z = 1 + -r2.y;
  r1.w = 5 * r0.z;
  r2.z = r0.z * 5 + -2.5;
  r2.z = saturate(0.400000006 * r2.z);
  r2.z = 100 * r2.z;
  r8.xy = -r0.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r2.w = exp2(r8.x);
  r2.w = r2.x * r2.w;
  r2.w = 9.1368103 * r2.w;
  r4.w = r1.w * r0.z;
  r4.w = -r4.w * 2.0159049 + r8.y;
  r4.w = exp2(r4.w);
  r4.w = r4.w * r2.x;
  r4.w = 9.70808983 * r4.w;
  r2.w = max(r4.w, r2.w);
  r2.w = max(1.26815999, r2.w);
  r8.xyz = r14.zxy * r9.xyz;
  r8.xyz = r9.zxy * r14.xyz + -r8.xyz;
  r10.xyz = r14.zxy * r8.xyz;
  r8.xyz = r14.yzx * r8.yzx + -r10.xyz;
  r8.xyz = r8.xyz + -r7.xyz;
  r8.xyz = anisotropy * r8.xyz + r7.xyz;
  r4.w = dot(r8.xyz, r8.xyz);
  r4.w = rsqrt(r4.w);
  r8.xyz = r8.xyz * r4.www;
  r4.w = dot(-r9.xyz, r8.xyz);
  r4.w = r4.w + r4.w;
  r8.xyz = r8.xyz * -r4.www + -r9.xyz;
  r10.xyz = r14.xyz * r14.xyz;
  r11.xy = float2(0,0);
  r12.w = 0;
  r13.yz = float2(0,1);
  r14.x = 1;
  r15.xyzw = float4(0,0,0,0);
  r16.yzw = float3(0,0,0);
  r4.w = 0;
  r5.w = 0;
  while (true) {
    r6.w = cmp((uint)r5.w >= numRefProbes);
    if (r6.w != 0) break;
    r11.z = (uint)r5.w >> 5;
    r12.xyz = (int3)r11.xyz + (int3)r19.xyz;
    r6.w = visibleProbes.Load(r12.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(0), t15.wxyz
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(16), t15.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
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
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.zw, r5.w, l(96), t15.xxxy
  r11.z = samp0[]..swiz;
  r11.w = samp0[]..swiz;
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
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r5.w, l(196), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xy, r5.w, l(212), t15.xyxx
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
    r12.xyz = v6.xyz + -r17.yzw;
    r9.w = dot(r12.xyz, r12.xyz);
    r9.w = sqrt(r9.w);
    r9.w = cmp(probeDebugRadius >= r9.w);
    r10.w = (int)r24.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(0), t16.xyzw
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(16), t16.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(32), t16.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(48), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(64), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(80), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
    r13.w = dot(r31.xyz, r12.xyz);
    r13.w = saturate(r13.w + r31.w);
    r14.z = dot(r32.xyz, r12.xyz);
    r14.z = saturate(r14.z + r32.w);
    r13.w = r14.z * r13.w;
    r14.z = dot(r33.xyz, r12.xyz);
    r14.z = saturate(r14.z + r33.w);
    r13.w = r14.z * r13.w;
    r14.z = dot(r34.xyz, r12.xyz);
    r14.z = saturate(r14.z + r34.w);
    r13.w = r14.z * r13.w;
    r14.z = dot(r35.xyz, r12.xyz);
    r14.z = saturate(r14.z + r35.w);
    r13.w = r14.z * r13.w;
    r14.z = dot(r36.xyz, r12.xyz);
    r14.z = saturate(r14.z + r36.w);
    r13.x = r14.z * r13.w;
    r13.w = (int)r11.z & 1;
    r13.xw = r13.ww ? r13.xy : r13.zx;
    r31.xy = r24.zw;
    r31.z = r25.z;
    r14.z = dot(r8.xyz, r31.xyz);
    r14.w = dot(r12.xyz, r31.xyz);
    r14.w = r14.w + -r25.w;
    r17.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r2.z);
    r14.w = r17.w ? r14.w : -r14.w;
    r14.z = max(1.00000001e-07, -r14.z);
    r14.z = r14.w / r14.z;
    r14.z = min(131072, abs(r14.z));
    r25.z = r26.z;
    r14.w = dot(r8.xyz, r25.xyz);
    r17.w = dot(r12.xyz, r25.xyz);
    r17.w = r17.w + -r26.w;
    r19.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r2.z);
    r17.w = r19.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r26.z = r27.z;
    r14.w = dot(r8.xyz, r26.xyz);
    r17.w = dot(r12.xyz, r26.xyz);
    r17.w = r17.w + -r27.w;
    r19.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r2.z);
    r17.w = r19.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r27.z = r28.z;
    r14.w = dot(r8.xyz, r27.xyz);
    r17.w = dot(r12.xyz, r27.xyz);
    r17.w = r17.w + -r28.w;
    r19.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r2.z);
    r17.w = r19.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r28.z = r29.x;
    r14.w = dot(r8.xyz, r28.xyz);
    r17.w = dot(r12.xyz, r28.xyz);
    r17.w = r17.w + -r29.y;
    r19.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r2.z);
    r17.w = r19.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r30.zw = r29.zw;
    r14.w = dot(r8.zxy, r30.xzw);
    r17.w = dot(r12.zxy, r30.xzw);
    r17.w = r17.w + -r30.y;
    r19.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r2.z);
    r17.w = r19.w ? r17.w : -r17.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r17.w / r14.w;
    r14.z = min(r14.z, abs(r14.w));
    r25.x = r21.w;
    r25.yz = r22.zw;
    r25.xyz = r25.xyz + r12.xyz;
    r25.xyz = r8.xyz * r14.zzz + r25.xyz;
    r14.w = dot(r25.xyz, r25.xyz);
    r14.w = sqrt(r14.w);
    r14.z = r14.z / r14.w;
    r14.z = r14.z + r14.z;
    r14.z = sqrt(r14.z);
    r14.z = r0.z * 5 + r14.z;
    r14.z = -0.844799995 + r14.z;
    r17.y = r18.z;
    r17.z = r20.x;
    r26.x = dot(r25.xyz, r17.xyz);
    r27.xy = r18.xw;
    r27.z = r20.w;
    r26.y = dot(r25.xyz, r27.xyz);
    r20.x = r18.y;
    r26.z = dot(r25.xyz, r20.xyz);
    if (6 == 0) r18.x = 0; else if (6+25 < 32) {     r18.x = (uint)r24.y << (32-(6 + 25)); r18.x = (uint)r18.x >> (32-6);    } else r18.x = (uint)r24.y >> 25;
    if (9 == 0) r18.y = 0; else if (9+16 < 32) {     r18.y = (uint)r24.y << (32-(9 + 16)); r18.y = (uint)r18.y >> (32-9);    } else r18.y = (uint)r24.y >> 16;
    r26.w = (uint)r18.y;
    r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, r14.z).xyz;
    r24.yzw = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
    r24.yzw = cmp((int3)r24.yzw == int3(2139095040,2139095040,2139095040));
    r14.z = (int)r24.z | (int)r24.y;
    r14.z = (int)r24.w | (int)r14.z;
    r18.yzw = r14.zzz ? float3(1,1,0) : r18.yzw;
    r25.x = dot(r12.xyz, r17.xyz);
    r25.y = dot(r12.xyz, r27.xyz);
    r25.z = dot(r12.xyz, r20.xyz);
    r21.xyz = saturate(r25.xyz * r21.xyz + float3(0.5,0.5,0.5));
    r22.z = r23.x;
    r21.xyz = r21.xyz * r22.xyz + r23.yzw;
    r26.x = dot(r7.xyz, r17.xyz);
    r26.y = dot(r7.xyz, r27.xyz);
    r26.z = dot(r7.xyz, r20.xyz);
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r20.xyz = float3(0,0,0.5) + r21.xyz;
    r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r23.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r24.yzw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r20.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r25.xyz = r24.yzw + r23.xyz;
    r25.xyz = r25.xyz + r21.xyz;
    r25.xyz = r25.xyz + r20.xyz;
    r25.xyz = r25.xyz * r10.xxx;
    r17.xyz = r22.xyz + r17.xyz;
    r21.xyz = r17.xyz + r21.xyz;
    r20.xyz = r21.xyz + r20.xyz;
    r20.xyz = r20.xyz * r10.yyy;
    r17.xyz = r17.xyz + r23.xyz;
    r17.xyz = r17.xyz + r24.yzw;
    r17.xyz = r17.xyz * r10.zzz;
    r20.xyz = float3(0.25,0.25,0.25) * r20.xyz;
    r20.xyz = r25.xyz * float3(0.25,0.25,0.25) + r20.xyz;
    r17.xyz = r17.xyz * float3(0.25,0.25,0.25) + r20.xyz;
    r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, 6).xyz;
    r21.xyz = (int3)r20.xyz & int3(-2147483648,-2147483648,-2147483648);
    r21.xyz = cmp((int3)r21.xyz == int3(2139095040,2139095040,2139095040));
    r14.z = (int)r21.y | (int)r21.x;
    r14.z = (int)r21.z | (int)r14.z;
    r20.xyz = r14.zzz ? float3(1,1,0) : r20.xyz;
    r21.xyzw = r15.xyzw;
    r22.xyz = r16.yzw;
    r14.z = r4.w;
    r14.w = r6.w;
    while (true) {
      if (r14.w == 0) break;
      r17.w = firstbitlow((uint)r14.w);
      r17.w = 1 << (int)r17.w;
      r19.w = (int)r14.w & (int)r17.w;
      if (r19.w != 0) {
        r17.w = ~(int)r17.w;
        r14.w = (int)r14.w & (int)r17.w;
        if (r9.w != 0) {
          r17.w = r11.z;
          r23.xy = r13.xw;
          r19.w = 1;
          while (true) {
            r20.w = cmp((int)r19.w >= (int)r18.x);
            if (r20.w != 0) break;
            r20.w = (int)r10.w + (int)r19.w;
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
            r20.w = dot(r25.xyz, r12.xyz);
            r20.w = saturate(r20.w + r25.w);
            r20.w = r23.x * r20.w;
            r22.w = dot(r26.xyz, r12.xyz);
            r22.w = saturate(r22.w + r26.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r27.xyz, r12.xyz);
            r22.w = saturate(r22.w + r27.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r28.xyz, r12.xyz);
            r22.w = saturate(r22.w + r28.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r29.xyz, r12.xyz);
            r22.w = saturate(r22.w + r29.w);
            r20.w = r22.w * r20.w;
            r22.w = dot(r30.xyz, r12.xyz);
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
          r14.y = r23.y * r11.w;
          r17.w = cmp(0 < r14.y);
          if (r17.w != 0) {
            r25.z = r23.y * r11.w + r22.z;
            r14.y = r14.y * r24.x;
            r23.xzw = r17.xyz * r14.yyy;
            r24.yzw = r23.xzw * r20.xyz;
            r17.w = dot(r24.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r26.xyz = r23.xzw * r20.xyz + r21.xyz;
            r19.w = r17.w * r2.w;
            r23.xzw = r18.yzw * r14.yyy;
            r14.y = dot(r23.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r14.y = r2.w * r17.w + r14.y;
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
      r4.w = -1;
      break;
    }
    r5.w = (int)r5.w + 32;
    r15.xyzw = r21.xyzw;
    r16.yzw = r22.xyz;
    r4.w = r14.z;
  }
  if (r4.w == 0) {
    r4.w = numRefProbes + -numOverrideProbes;
    r5.w = (int)r4.w & -32;
    r6.w = (int)r4.w + (int)-r5.w;
    r9.w = numRefProbes & -32;
    r10.w = (int)-r9.w + numRefProbes;
    r11.xy = float2(0,0);
    r12.w = 0;
    r13.yz = float2(0,1);
    r14.x = 1;
    r17.xyzw = r15.xyzw;
    r18.yzw = r16.yzw;
    r11.w = r5.w;
    while (true) {
      r13.w = cmp((uint)r11.w >= numRefProbes);
      if (r13.w != 0) break;
      r11.z = (uint)r11.w >> 5;
      r12.xyz = (int3)r11.xyz + (int3)r19.xyz;
      r11.z = visibleProbes.Load(r12.xyzw).x;
      r12.x = cmp((int)r5.w == (int)r11.w);
      bitmask.y = ((~(-1 << r6.w)) << 0) & 0xffffffff;  r12.y = (((uint)0 << 0) & bitmask.y) | ((uint)r11.z & ~bitmask.y);
      r11.z = r12.x ? r12.y : r11.z;
      r12.x = cmp((int)r9.w == (int)r11.w);
      if (r10.w == 0) r12.y = 0; else if (r10.w+0 < 32) {       r12.y = (uint)r11.z << (32-(r10.w + 0)); r12.y = (uint)r12.y >> (32-r10.w);      } else r12.y = (uint)r11.z >> 0;
      r11.z = r12.x ? r12.y : r11.z;
      r12.x = (int)r11.w + numLights;
      r20.xyzw = r17.xyzw;
      r21.xyz = r18.yzw;
      r12.y = r11.z;
      while (true) {
        if (r12.y == 0) break;
        r12.z = firstbitlow((uint)r12.y);
        r13.w = 1 << (int)r12.z;
        r14.z = (int)r12.y & (int)r13.w;
        if (r14.z != 0) {
          r12.y = (int)r12.y ^ (int)r13.w;
          r13.w = (int)r12.z + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r13.w, l(0), t11.xyzw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r13.w, l(16), t11.xyxx
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
          r22.xyz = -v6.xyz + r22.xyz;
          r23.z = r22.w;
          r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
          r13.w = r22.y ? r22.x : 0;
          r13.w = r22.z ? r13.w : 0;
          if (r13.w != 0) {
            r12.z = (int)r11.w + (int)r12.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r12.z, l(0), t15.wxyz
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r12.z, l(96), t15.xxxy
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r12.z, l(116), t15.zwxy
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
            r24.xyz = v6.xyz + -r22.yzw;
            r13.w = (int)r23.w & 0x0000ffff;
            if (6 == 0) r19.w = 0; else if (6+25 < 32) {             r19.w = (uint)r23.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);            } else r19.w = (uint)r23.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(80), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r22.w = dot(r25.xyz, r24.xyz);
            r22.w = saturate(r22.w + r25.w);
            r24.w = dot(r26.xyz, r24.xyz);
            r24.w = saturate(r24.w + r26.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r27.xyz, r24.xyz);
            r24.w = saturate(r24.w + r27.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r28.xyz, r24.xyz);
            r24.w = saturate(r24.w + r28.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r29.xyz, r24.xyz);
            r24.w = saturate(r24.w + r29.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r30.xyz, r24.xyz);
            r24.w = saturate(r24.w + r30.w);
            r13.x = r24.w * r22.w;
            r22.w = (int)r14.z & 1;
            r25.xy = r22.ww ? r13.xy : r13.zx;
            r13.x = r14.z;
            r26.xy = r25.xy;
            r22.w = 1;
            while (true) {
              r24.w = cmp((int)r22.w >= (int)r19.w);
              if (r24.w != 0) break;
              r24.w = (int)r13.w + (int)r22.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r24.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r24.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r24.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r24.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r24.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r24.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r24.w = dot(r27.xyz, r24.xyz);
              r24.w = saturate(r24.w + r27.w);
              r24.w = r26.x * r24.w;
              r25.z = dot(r28.xyz, r24.xyz);
              r25.z = saturate(r25.z + r28.w);
              r24.w = r25.z * r24.w;
              r25.z = dot(r29.xyz, r24.xyz);
              r25.z = saturate(r25.z + r29.w);
              r24.w = r25.z * r24.w;
              r25.z = dot(r30.xyz, r24.xyz);
              r25.z = saturate(r25.z + r30.w);
              r24.w = r25.z * r24.w;
              r25.z = dot(r31.xyz, r24.xyz);
              r25.z = saturate(r25.z + r31.w);
              r24.w = r25.z * r24.w;
              r25.z = dot(r32.xyz, r24.xyz);
              r25.z = saturate(r25.z + r32.w);
              r26.x = r25.z * r24.w;
              r25.w = (uint)r13.x >> 2;
              if (1 == 0) r26.z = 0; else if (1+2 < 32) {               r26.z = (uint)r13.x << (32-(1 + 2)); r26.z = (uint)r26.z >> (32-1);              } else r26.z = (uint)r13.x >> 2;
              r26.w = (int)r25.w & 2;
              r27.x = max(r26.y, r26.x);
              r24.w = -r24.w * r25.z + 1;
              r24.w = r26.y * r24.w;
              r14.y = r26.w ? r24.w : r27.x;
              r26.xy = r26.zz ? r26.xy : r14.xy;
              r22.w = (int)r22.w + 1;
              r13.x = r25.w;
            }
            r26.y = saturate(r26.y);
            r13.x = r26.y * r14.w;
            r13.w = cmp(0 < r13.x);
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r12.z, l(16), t15.xyzw
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.z, l(32), t15.yxwz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.z, l(48), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.z, l(64), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.z, l(80), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.z, l(132), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.z, l(148), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.z, l(164), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.z, l(180), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.z, l(196), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r12.z, l(212), t15.xyxx
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
              r21.z = r26.y * r14.w + r21.z;
              r12.z = r13.x * r23.z;
              r23.z = r31.z;
              r13.x = dot(r8.xyz, r23.xyz);
              r13.w = dot(r24.xyz, r23.xyz);
              r13.w = r13.w + -r31.w;
              r14.y = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r2.z);
              r13.w = r14.y ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r13.x = min(131072, abs(r13.x));
              r31.z = r32.z;
              r13.w = dot(r8.xyz, r31.xyz);
              r14.y = dot(r24.xyz, r31.xyz);
              r14.y = r14.y + -r32.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r2.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r13.x = min(r13.x, abs(r13.w));
              r32.z = r33.z;
              r13.w = dot(r8.xyz, r32.xyz);
              r14.y = dot(r24.xyz, r32.xyz);
              r14.y = r14.y + -r33.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r2.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r13.x = min(r13.x, abs(r13.w));
              r33.z = r34.z;
              r13.w = dot(r8.xyz, r33.xyz);
              r14.y = dot(r24.xyz, r33.xyz);
              r14.y = r14.y + -r34.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r2.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r13.x = min(r13.x, abs(r13.w));
              r34.z = r35.x;
              r13.w = dot(r8.xyz, r34.xyz);
              r14.y = dot(r24.xyz, r34.xyz);
              r14.y = r14.y + -r35.y;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r2.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r13.x = min(r13.x, abs(r13.w));
              r36.zw = r35.zw;
              r13.w = dot(r8.zxy, r36.xzw);
              r14.y = dot(r24.zxy, r36.xzw);
              r14.y = r14.y + -r36.y;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r2.z);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r13.x = min(r13.x, abs(r13.w));
              r23.x = r28.w;
              r23.yz = r29.zw;
              r14.yzw = r23.xyz + r24.xyz;
              r14.yzw = r8.xyz * r13.xxx + r14.yzw;
              r13.w = dot(r14.yzw, r14.yzw);
              r13.w = sqrt(r13.w);
              r13.x = r13.x / r13.w;
              r13.x = r13.x + r13.x;
              r13.x = sqrt(r13.x);
              r13.x = r0.z * 5 + r13.x;
              r13.x = -0.844799995 + r13.x;
              r22.y = r25.z;
              r22.z = r27.x;
              r31.x = dot(r14.yzw, r22.xyz);
              r23.xy = r25.xw;
              r23.z = r27.w;
              r31.y = dot(r14.yzw, r23.xyz);
              r27.x = r25.y;
              r31.z = dot(r14.yzw, r27.xyz);
              if (9 == 0) r13.w = 0; else if (9+16 < 32) {               r13.w = (uint)r23.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);              } else r13.w = (uint)r23.w >> 16;
              r31.w = (uint)r13.w;
              r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r13.x).xyz;
              r25.xyz = (int3)r14.yzw & int3(-2147483648,-2147483648,-2147483648);
              r25.xyz = cmp((int3)r25.xyz == int3(2139095040,2139095040,2139095040));
              r13.x = (int)r25.y | (int)r25.x;
              r13.x = (int)r25.z | (int)r13.x;
              r14.yzw = r13.xxx ? float3(1,1,0) : r14.yzw;
              r25.x = dot(r24.xyz, r22.xyz);
              r25.y = dot(r24.xyz, r23.xyz);
              r25.z = dot(r24.xyz, r27.xyz);
              r24.xyz = saturate(r25.xyz * r28.xyz + float3(0.5,0.5,0.5));
              r29.z = r30.x;
              r24.xyz = r24.xyz * r29.xyz + r30.yzw;
              r31.x = dot(r7.xyz, r22.xyz);
              r31.y = dot(r7.xyz, r23.xyz);
              r31.z = dot(r7.xyz, r27.xyz);
              r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r23.xyz = float3(0,0,0.5) + r24.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r26.xzw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r27.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
              r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r28.xyz = r27.xyz + r26.xzw;
              r28.xyz = r28.xyz + r24.xyz;
              r28.xyz = r28.xyz + r23.xyz;
              r28.xyz = r28.xyz * r10.xxx;
              r22.xyz = r25.xyz + r22.xyz;
              r24.xyz = r22.xyz + r24.xyz;
              r23.xyz = r24.xyz + r23.xyz;
              r23.xyz = r23.xyz * r10.yyy;
              r22.xyz = r22.xyz + r26.xzw;
              r22.xyz = r22.xyz + r27.xyz;
              r22.xyz = r22.xyz * r10.zzz;
              r23.xyz = float3(0.25,0.25,0.25) * r23.xyz;
              r23.xyz = r28.xyz * float3(0.25,0.25,0.25) + r23.xyz;
              r22.xyz = r22.xyz * float3(0.25,0.25,0.25) + r23.xyz;
              r22.xyz = r22.xyz * r12.zzz;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
              r24.xyz = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
              r24.xyz = cmp((int3)r24.xyz == int3(2139095040,2139095040,2139095040));
              r13.x = (int)r24.y | (int)r24.x;
              r13.x = (int)r24.z | (int)r13.x;
              r23.xyz = r13.xxx ? float3(1,1,0) : r23.xyz;
              r24.xyz = r23.xyz * r22.xyz;
              r13.x = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r20.xyz = r22.xyz * r23.xyz + r20.xyz;
              r13.w = r13.x * r2.w;
              r14.yzw = r14.yzw * r12.zzz;
              r12.z = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r12.z = r2.w * r13.x + r12.z;
              r12.z = r13.w / r12.z;
              r22.x = r20.w;
              r22.yz = r21.xy;
              r21.xyw = r14.zwy * r12.zzz + r22.yzx;
              r20.w = r21.w;
            }
          }
        }
      }
      r17.xyzw = r20.xyzw;
      r18.yzw = r21.xyz;
      r11.w = (int)r11.w + 32;
    }
    r9.w = cmp(r18.w < 1);
    if (r9.w != 0) {
      r11.xy = float2(0,0);
      r12.w = 0;
      r13.yz = float2(0,1);
      r14.x = 1;
      r20.x = r17.w;
      r20.yzw = r18.yzw;
      r21.xyz = r17.xyz;
      r9.w = r18.w;
      r10.w = 0;
      while (true) {
        r11.w = cmp((uint)r10.w >= (uint)r4.w);
        if (r11.w != 0) break;
        r11.z = (uint)r10.w >> 5;
        r12.xyz = (int3)r11.xyz + (int3)r19.xyz;
        r11.z = visibleProbes.Load(r12.xyzw).x;
        r11.w = cmp((int)r5.w == (int)r10.w);
        if (r6.w == 0) r12.x = 0; else if (r6.w+0 < 32) {         r12.x = (uint)r11.z << (32-(r6.w + 0)); r12.x = (uint)r12.x >> (32-r6.w);        } else r12.x = (uint)r11.z >> 0;
        r11.z = r11.w ? r12.x : r11.z;
        r11.w = (int)r10.w + numLights;
        r22.xyzw = r20.xyzw;
        r12.xyz = r21.xyz;
        r13.w = r9.w;
        r14.z = r11.z;
        while (true) {
          if (r14.z == 0) break;
          r14.w = firstbitlow((uint)r14.z);
          r16.w = 1 << (int)r14.w;
          r19.w = (int)r14.z & (int)r16.w;
          if (r19.w != 0) {
            r14.z = (int)r14.z ^ (int)r16.w;
            r16.w = (int)r11.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r16.w, l(0), t11.xyzw
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xy, r16.w, l(16), t11.xyxx
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
            r23.xyz = -v6.xyz + r23.xyz;
            r24.z = r23.w;
            r23.xyz = cmp(abs(r23.xyz) < r24.zxy);
            r16.w = r23.y ? r23.x : 0;
            r16.w = r23.z ? r16.w : 0;
            if (r16.w != 0) {
              r14.w = (int)r10.w + (int)r14.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r14.w, l(0), t15.wxyz
            r23.x = samp0[]..swiz;
            r23.y = samp0[]..swiz;
            r23.z = samp0[]..swiz;
            r23.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xy, r14.w, l(96), t15.xyxx
            r24.x = samp0[]..swiz;
            r24.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r14.w, l(116), t15.zwxy
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
              r26.xyz = v6.xyz + -r23.yzw;
              r16.w = (int)r25.w & 0x0000ffff;
              if (6 == 0) r19.w = 0; else if (6+25 < 32) {               r19.w = (uint)r25.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);              } else r19.w = (uint)r25.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r21.w = dot(r27.xyz, r26.xyz);
              r21.w = saturate(r21.w + r27.w);
              r23.w = dot(r28.xyz, r26.xyz);
              r23.w = saturate(r23.w + r28.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r29.xyz, r26.xyz);
              r23.w = saturate(r23.w + r29.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r30.xyz, r26.xyz);
              r23.w = saturate(r23.w + r30.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r31.xyz, r26.xyz);
              r23.w = saturate(r23.w + r31.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r32.xyz, r26.xyz);
              r23.w = saturate(r23.w + r32.w);
              r13.x = r23.w * r21.w;
              r21.w = (int)r24.x & 1;
              r24.zw = r21.ww ? r13.xy : r13.zx;
              r13.x = r24.x;
              r27.xy = r24.zw;
              r21.w = 1;
              while (true) {
                r23.w = cmp((int)r21.w >= (int)r19.w);
                if (r23.w != 0) break;
                r23.w = (int)r16.w + (int)r21.w;
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
                r23.w = dot(r28.xyz, r26.xyz);
                r23.w = saturate(r23.w + r28.w);
                r23.w = r27.x * r23.w;
                r26.w = dot(r29.xyz, r26.xyz);
                r26.w = saturate(r26.w + r29.w);
                r23.w = r26.w * r23.w;
                r26.w = dot(r30.xyz, r26.xyz);
                r26.w = saturate(r26.w + r30.w);
                r23.w = r26.w * r23.w;
                r26.w = dot(r31.xyz, r26.xyz);
                r26.w = saturate(r26.w + r31.w);
                r23.w = r26.w * r23.w;
                r26.w = dot(r32.xyz, r26.xyz);
                r26.w = saturate(r26.w + r32.w);
                r23.w = r26.w * r23.w;
                r26.w = dot(r33.xyz, r26.xyz);
                r26.w = saturate(r26.w + r33.w);
                r27.x = r26.w * r23.w;
                r27.z = (uint)r13.x >> 2;
                if (1 == 0) r27.w = 0; else if (1+2 < 32) {                 r27.w = (uint)r13.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);                } else r27.w = (uint)r13.x >> 2;
                r28.x = (int)r27.z & 2;
                r28.y = max(r27.y, r27.x);
                r23.w = -r23.w * r26.w + 1;
                r23.w = r27.y * r23.w;
                r14.y = r28.x ? r23.w : r28.y;
                r27.xy = r27.ww ? r27.xy : r14.xy;
                r21.w = (int)r21.w + 1;
                r13.x = r27.z;
              }
              r13.x = saturate(r27.y + -r13.w);
              r14.y = r13.x * r24.y;
              r16.w = cmp(0 < r14.y);
              if (r16.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(16), t15.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(32), t15.yxwz
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(48), t15.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(64), t15.zwxy
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(80), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(132), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(148), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(164), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(180), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(196), t15.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r14.w, l(212), t15.xyxx
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
                r22.w = r13.x * r24.y + r22.w;
                r13.x = r14.y * r25.z;
                r25.z = r33.z;
                r14.y = dot(r8.xyz, r25.xyz);
                r14.w = dot(r26.xyz, r25.xyz);
                r14.w = r14.w + -r33.w;
                r16.w = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r2.z);
                r14.w = r16.w ? r14.w : -r14.w;
                r14.y = max(1.00000001e-07, -r14.y);
                r14.y = r14.w / r14.y;
                r14.y = min(131072, abs(r14.y));
                r33.z = r34.z;
                r14.w = dot(r8.xyz, r33.xyz);
                r16.w = dot(r26.xyz, r33.xyz);
                r16.w = r16.w + -r34.w;
                r19.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r2.z);
                r16.w = r19.w ? r16.w : -r16.w;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r16.w / r14.w;
                r14.y = min(r14.y, abs(r14.w));
                r34.z = r35.z;
                r14.w = dot(r8.xyz, r34.xyz);
                r16.w = dot(r26.xyz, r34.xyz);
                r16.w = r16.w + -r35.w;
                r19.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r2.z);
                r16.w = r19.w ? r16.w : -r16.w;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r16.w / r14.w;
                r14.y = min(r14.y, abs(r14.w));
                r35.z = r36.z;
                r14.w = dot(r8.xyz, r35.xyz);
                r16.w = dot(r26.xyz, r35.xyz);
                r16.w = r16.w + -r36.w;
                r19.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r2.z);
                r16.w = r19.w ? r16.w : -r16.w;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r16.w / r14.w;
                r14.y = min(r14.y, abs(r14.w));
                r36.z = r37.x;
                r14.w = dot(r8.xyz, r36.xyz);
                r16.w = dot(r26.xyz, r36.xyz);
                r16.w = r16.w + -r37.y;
                r19.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r2.z);
                r16.w = r19.w ? r16.w : -r16.w;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r16.w / r14.w;
                r14.y = min(r14.y, abs(r14.w));
                r38.zw = r37.zw;
                r14.w = dot(r8.zxy, r38.xzw);
                r16.w = dot(r26.zxy, r38.xzw);
                r16.w = r16.w + -r38.y;
                r19.w = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r2.z);
                r16.w = r19.w ? r16.w : -r16.w;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r16.w / r14.w;
                r14.y = min(r14.y, abs(r14.w));
                r24.x = r30.w;
                r24.yz = r31.zw;
                r24.xyz = r24.xyz + r26.xyz;
                r24.xyz = r8.xyz * r14.yyy + r24.xyz;
                r14.w = dot(r24.xyz, r24.xyz);
                r14.w = sqrt(r14.w);
                r14.y = r14.y / r14.w;
                r14.y = r14.y + r14.y;
                r14.y = sqrt(r14.y);
                r14.y = r0.z * 5 + r14.y;
                r14.y = -0.844799995 + r14.y;
                r23.y = r28.z;
                r23.z = r29.x;
                r33.x = dot(r24.xyz, r23.xyz);
                r25.xy = r28.xw;
                r25.z = r29.w;
                r33.y = dot(r24.xyz, r25.xyz);
                r29.x = r28.y;
                r33.z = dot(r24.xyz, r29.xyz);
                if (9 == 0) r14.w = 0; else if (9+16 < 32) {                 r14.w = (uint)r25.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);                } else r14.w = (uint)r25.w >> 16;
                r33.w = (uint)r14.w;
                r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r14.y).xyz;
                r27.xzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
                r27.xzw = cmp((int3)r27.xzw == int3(2139095040,2139095040,2139095040));
                r14.y = (int)r27.z | (int)r27.x;
                r14.y = (int)r27.w | (int)r14.y;
                r24.xyz = r14.yyy ? float3(1,1,0) : r24.xyz;
                r28.x = dot(r26.xyz, r23.xyz);
                r28.y = dot(r26.xyz, r25.xyz);
                r28.z = dot(r26.xyz, r29.xyz);
                r26.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
                r31.z = r32.x;
                r26.xyz = r26.xyz * r31.xyz + r32.yzw;
                r33.x = dot(r7.xyz, r23.xyz);
                r33.y = dot(r7.xyz, r25.xyz);
                r33.z = dot(r7.xyz, r29.xyz);
                r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r25.xyz = float3(0,0,0.5) + r26.xyz;
                r27.xzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r28.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r29.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
                r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r30.xyz = r29.xyz + r28.xyz;
                r30.xyz = r30.xyz + r26.xyz;
                r30.xyz = r30.xyz + r25.xyz;
                r30.xyz = r30.xyz * r10.xxx;
                r23.xyz = r27.xzw + r23.xyz;
                r26.xyz = r23.xyz + r26.xyz;
                r25.xyz = r26.xyz + r25.xyz;
                r25.xyz = r25.xyz * r10.yyy;
                r23.xyz = r23.xyz + r28.xyz;
                r23.xyz = r23.xyz + r29.xyz;
                r23.xyz = r23.xyz * r10.zzz;
                r25.xyz = float3(0.25,0.25,0.25) * r25.xyz;
                r25.xyz = r30.xyz * float3(0.25,0.25,0.25) + r25.xyz;
                r23.xyz = r23.xyz * float3(0.25,0.25,0.25) + r25.xyz;
                r23.xyz = r23.xyz * r13.xxx;
                r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
                r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
                r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
                r14.y = (int)r26.y | (int)r26.x;
                r14.y = (int)r26.z | (int)r14.y;
                r25.xyz = r14.yyy ? float3(1,1,0) : r25.xyz;
                r26.xyz = r25.xyz * r23.xyz;
                r14.y = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r12.xyz = r23.xyz * r25.xyz + r12.xyz;
                r14.w = r14.y * r2.w;
                r23.xyz = r24.xyz * r13.xxx;
                r13.x = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r13.x = r2.w * r14.y + r13.x;
                r13.x = r14.w / r13.x;
                r22.xyz = r23.xyz * r13.xxx + r22.xyz;
              }
            }
          }
        }
        r20.xyzw = r22.xyzw;
        r21.xyz = r12.xyz;
        r10.w = (int)r10.w + 32;
      }
      r18.xyzw = r20.zxyw;
      r17.xyz = r21.xyz;
      r18.xyzw = r18.yzxw;
    } else {
      r18.x = r17.w;
    }
    r0.z = max(1, r18.w);
    r0.z = rcp(r0.z);
    r18.w = saturate(r18.w);
    r15.xyz = r17.xyz * r0.zzz;
    r16.xyz = r18.xyz * r0.zzz;
    r2.z = cmp(r18.w < 0.99000001);
    if (r2.z != 0) {
      r2.z = 1 + -r18.w;
      r2.w = sunConstants.globalProbeExposure * r2.z;
      r11.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r12.x = globalProbeConstants.data[0].w * r11.x;
      r12.yz = globalProbeConstants.data[1].xy * r11.yz;
      r11.xyz = saturate(float3(0.5,0.5,0.5) + r12.xyz);
      r12.xy = globalProbeConstants.data[1].zw * r11.xy;
      r12.z = globalProbeConstants.data[2].x * r11.z;
      r11.xyz = globalProbeConstants.data[2].yzw + r12.xyz;
      r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r13.xyz = float3(0,0,0.5) + r11.xyz;
      r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r20.xyz = r19.xyz + r18.xyz;
      r20.xyz = r20.xyz + r11.xyz;
      r20.xyz = r20.xyz + r13.xyz;
      r20.xyz = r20.xyz * r10.xxx;
      r12.xyz = r14.xyz + r12.xyz;
      r11.xyz = r12.xyz + r11.xyz;
      r11.xyz = r11.xyz + r13.xyz;
      r10.xyw = r11.xyz * r10.yyy;
      r11.xyz = r12.xyz + r18.xyz;
      r11.xyz = r11.xyz + r19.xyz;
      r11.xyz = r11.xyz * r10.zzz;
      r10.xyz = float3(0.25,0.25,0.25) * r10.xyw;
      r10.xyz = r20.xyz * float3(0.25,0.25,0.25) + r10.xyz;
      r10.xyz = r11.xyz * float3(0.25,0.25,0.25) + r10.xyz;
      r10.xyz = r10.xyz * r2.www;
      r7.w = 0;
      r7.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r7.xyzw, 6).xyz;
      r7.xyz = r10.xyz * r7.xyz;
      r2.w = dot(r7.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.xyz = r17.xyz * r0.zzz + r7.xyz;
      r8.w = 0;
      r7.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r8.xyzw, r1.w).xyz;
      r0.z = sunConstants.globalProbeExposure * r2.z + -r2.w;
      r0.z = r2.y * r0.z + r2.w;
      r16.xyz = r7.xyz * r0.zzz + r16.xyz;
    }
  } else {
    r16.x = r15.w;
  }
  r4.xyz = r15.xyz * r0.xxx + r4.xyz;
  r2.xy = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.xy, 0).xy;
  r7.xyz = r16.xyz * r0.xxx;
  r2.xzw = r7.xyz * r2.xxx + r3.xyz;
  r3.xyz = r7.xyz * r2.yyy + r5.xyz;
  r0.x = 0.0399999991 * r0.y;
  r0.y = -r0.y * 0.0399999991 + 1;
  r2.xyz = r2.xzw * r0.yyy;
  r0.xyz = r3.xyz * r0.xxx + r2.xyz;
  r0.xyz = r4.xyz * r1.xyz + r0.xyz;
  if (useAlphaControls != 0) {
    r1.x = dot(r6.xyz, r9.xyz);
    r1.yzw = cmp(falloffBegin == float3(0,0,0));
    r1.y = r1.z ? r1.y : 0;
    r2.xy = float2(0.0174532924,0.0174532924) * falloffBegin;
    r2.xy = cos(r2.xy);
    r2.yz = r2.xy * r2.xy;
    r1.z = r2.x * r2.x + -r2.z;
    r3.x = 1 / r1.z;
    r3.y = -r2.y * r3.x + 1;
    r1.yz = r1.yy ? float2(0,1) : r3.xy;
    r1.x = abs(r1.x) * abs(r1.x);
    r1.x = saturate(r1.x * r1.y + r1.z);
    r1.x = r1.x * r0.w;
    r2.xy = (int2)v0.xy;
    r2.zw = float2(0,0);
    r1.y = floatZSampler.Load(r2.xyz).x;
    r1.z = cmp(r1.y >= 0.984375);
    r2.x = 1.01587307 * r1.y;
    r1.y = r1.y * 64 + -63;
    r1.y = r1.z ? r1.y : r2.x;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.z = 1 / zFeatherDistance;
    r1.z = r1.w ? 60000 : r1.z;
    r1.y = r1.y + -r3.w;
    r1.y = saturate(r1.y * r1.z);
    o0.w = r1.x * r1.y;
  } else {
    o0.w = r0.w;
  }
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