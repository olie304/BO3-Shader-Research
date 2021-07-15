// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:37:09 2021

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
  float3 specColorTint : packoffset(c11);
  float3 transColorTint : packoffset(c12);
  bool useAlphaControls : packoffset(c12.w);
  float zFeatherDistance : packoffset(c13);
  float falloffBegin : packoffset(c13.y);
  float falloffEnd : packoffset(c13.z);
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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65,r66;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyzw = v1.xyzw * r0.xyzw;
  r0.x = cmp(0 < debugStreamerControl.w);
  if (r0.x != 0) {
    r0.x = (int)debugStreamerControl.w;
    r0.y = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r0.z = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r0.y = cmp(r0.y < r0.z);
    r0.z = cmp(0 < r0.z);
    r2.xyz = (int3)r0.xxx & int3(1,2,4);
    r3.xyz = r2.xxx ? float3(1,0,1) : r1.xyz;
    r2.xyw = r2.yyy ? float3(0,1,1) : r1.xyz;
    r2.xyw = r0.zzz ? r3.xyz : r2.xyw;
    r3.xyz = r2.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r0.yyy ? r2.xyw : r3.xyz;
  }
  r0.x = -r0.w * w1.x + debugAlphaOverride.x;
  r0.w = debugAlphaOverride.w * r0.x + r1.w;
  r1.w = cmp(r0.w == 0.000000);
  if (r1.w != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r1.w = aoMap.Sample(aoSampler_s, v2.xy).x;
  r2.x = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r2.y = glossRange.y + -glossRange.x;
  r2.z = r2.x * r2.y;
  r2.x = r2.x * r2.y + glossRange.x;
  r2.z = r2.z * 0.5 + glossRange.x;
  r2.xz = saturate(float2(0.0588235296,0.0588235296) * r2.xz);
  r3.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r3.z = r3.z * r3.z;
  r3.z = 0.333333343 * r3.z;
  r3.z = min(1, r3.z);
  r3.w = v7.x ? 1 : -1;
  r4.x = dot(v3.xyz, v3.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = v3.xyz * r4.xxx;
  r4.xyz = r4.xyz * r3.www;
  r4.w = dot(v4.xyz, v4.xyz);
  r4.w = rsqrt(r4.w);
  r5.xyz = v4.xyz * r4.www;
  r5.xyz = r5.xyz * r3.www;
  r4.w = dot(v5.xyz, v5.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = v5.xyz * r4.www;
  r6.xyz = r6.xyz * r3.www;
  r2.xz = float2(-17,-17) * r2.xz;
  r2.x = exp2(r2.x);
  r2.x = r3.z + r2.x;
  r2.x = log2(r2.x);
  r2.z = exp2(r2.z);
  r2.z = r3.z + r2.z;
  r2.z = log2(r2.z);
  r2.xz = float2(-0.0588235296,-0.0588235296) * r2.xz;
  r7.xyz = r6.xyz * r3.yyy;
  r3.xyw = r5.xyz * r3.xxx + r7.xyz;
  r3.xyw = r4.xyz * r2.www + r3.xyw;
  r2.w = dot(r3.xyw, r3.xyw);
  r2.w = rsqrt(r2.w);
  r3.xyw = r3.xyw * r2.www;
  r2.y = debugGlossOverride.x * r2.y + glossRange.x;
  r2.y = saturate(0.0588235296 * r2.y);
  r2.y = -17 * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r3.z + r2.y;
  r2.y = log2(r2.y);
  r2.y = -0.0588235296 * r2.y;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r7.xyz = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r7.xyz + r1.xyz;
  r7.y = debugGlossOverride.w * r2.y;
  r2.w = debugOcclusionOverride.x + -r1.w;
  r1.w = debugOcclusionOverride.w * r2.w + r1.w;
  r8.xyz = v7.xxx ? r4.xyz : -r4.xyz;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = rsqrt(r2.w);
  r8.xyz = r8.xyz * r2.www + -r3.xyw;
  r3.xyz = debugNormalOverride.www * r8.xyz + r3.xyw;
  r7.zw = (uint2)v0.xy;
  r2.w = cmp(v0.z >= 0.984375);
  r4.w = 1.01587307 * v0.z;
  r5.w = v0.z * 64 + -63;
  r2.w = r2.w ? r5.w : r4.w;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r4.w = dot(-v6.xyz, -v6.xyz);
  r4.w = rsqrt(r4.w);
  r8.xyz = -v6.xyz * r4.www;
  r9.xy = (uint2)r7.wz;
  r5.w = dot(r9.yx, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r10.x, r11.x);
  r5.w = dot(r9.xy, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r9.x, r12.x);
  r7.x = saturate(dot(r3.xyz, r8.xyz));
  r5.w = dot(-r8.xyz, r3.xyz);
  r5.w = r5.w + r5.w;
  r13.xyz = r3.xyz * -r5.www + -r8.xyz;
  r5.w = 17 * r7.y;
  r14.x = exp2(r5.w);
  r5.w = 2 + r14.x;
  r5.w = 2 / r5.w;
  r6.w = sqrt(r5.w);
  r9.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r9.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r9.yzw;
  r9.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r9.yzw;
  r9.yzw = viewProjectionMatrix._m30_m31_m33 + r9.yzw;
  r15.xyz = eyeOffset.xyz + v6.xyz;
  r8.w = sqrt(r6.w);
  r8.w = r8.w * 0.5 + 0.5;
  r8.w = r8.w * r8.w;
  r10.z = 0.5 * r8.w;
  r8.w = -r8.w * 0.5 + 1;
  r10.w = r7.x * r8.w + r10.z;
  r8.w = r10.w * r8.w;
  r10.z = r10.z * r10.w;
  r10.w = min(1, abs(anisotropy));
  r2.z = r2.z + -r2.x;
  r2.x = r10.w * r2.z + r2.x;
  r2.z = cmp(anisotropy < 0);
  r2.x = 17 * r2.x;
  r14.y = exp2(r2.x);
  r2.xz = r2.zz ? r14.xy : r14.yx;
  r2.xz = float2(2,2) + r2.xz;
  r2.xz = float2(2,2) / r2.xz;
  r10.w = dot(r3.xyz, sunConstants.wldDir.xyz);
  r11.w = cmp(0 >= abs(r10.w));
  if (r11.w != 0) {
    r14.y = 0;
  }
  if (r11.w == 0) {
    r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r12.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r12.yzw;
    r12.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r12.yzw;
    r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r12.yzw;
    r11.w = -sunConstants.splitDepthOffset + r12.w;
    r11.w = -r11.w * 6.10351563e-05 + 1;
    r14.z = saturate(r11.w);
    r14.z = cmp(r11.w == r14.z);
    if (r14.z != 0) {
      r14.zw = float2(0,0);
      while (true) {
        r16.x = cmp(r14.z >= 3);
        if (r16.x != 0) break;
        r16.x = (uint)r14.z;
        r16.yz = -sunConstants.splitPinTransform[r16.x].xy + r12.yz;
        r16.y = max(abs(r16.y), abs(r16.z));
        r14.w = sunConstants.splitPinTransform[r16.x].z * r16.y;
        r16.x = cmp(r14.w < 1);
        if (r16.x != 0) {
          break;
        }
        r14.z = 1 + r14.z;
        r14.w = 0;
      }
    } else {
      r14.zw = float2(3,0);
    }
    r16.x = cmp(r14.z >= 3);
    if (r16.x != 0) {
      r16.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.yy);
      r17.y = -r17.z;
      r16.yzw = r12.yzy * r17.xyz + r16.zwz;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.yzw = max(float3(0,0,0), r16.yzw);
      r16.yzw = min(r16.yzw, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r16.wz;
      r17.xy = floor(r17.xy);
      r17.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r17.x = r17.y * sunConstants.sstLightingConstants.coordScale + r17.x;
      r17.x = (uint)r17.x;
      r17.x = (int)r17.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.x, l(0), t23.xxxx
    r17.y = samp0[]..swiz;
      r17.z = (int)r17.y & 0x40000000;
      r17.w = (uint)r17.y << 2;
      if (r17.z == 0) {
        r17.z = (int)r17.y & 0x01ffffff;
        r18.x = (int)r17.z + (int)r17.x;
        r17.x = (uint)r17.y >> 25;
        r17.x = (uint)r17.x;
        r16.yzw = r17.xxx * r16.yzw;
        r16.yzw = frac(r16.yzw);
        r16.yzw = float3(128,128,128) * r16.yzw;
        r16.yzw = (uint3)r16.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.xy = (uint2)r16.wz >> int2(6,6);
        r17.z = (int)r18.z & 0xc0000000;
        r18.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r17.y = r17.y ? r18.z : r18.w;
        r18.w = (uint)r17.y >> 13;
        r17.x = r17.x ? r18.w : r17.y;
        r17.x = (int)r17.x & 8191;
        r19.x = (int)r17.x + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r19.xyz = r17.zzz ? r18.xyz : r19.xyz;
        r20.yz = r17.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r17.xy = (uint2)r16.wz >> (uint2)r20.yy;
        r17.xy = (int2)r17.xy & int2(1,1);
        r18.w = (int)r19.z & 0xc0000000;
        r19.w = (int)r19.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.y = r17.y ? r19.z : r19.w;
        r19.w = (uint)r17.y >> 13;
        r17.x = r17.x ? r19.w : r17.y;
        r17.x = (int)r17.x & 8191;
        r20.x = (int)r17.x + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.x, l(0), t23.xxxx
      r20.w = samp0[]..swiz;
        r19.xyz = r18.www ? r19.xyz : r20.xzw;
        r17.xyz = r17.zzz ? r18.xyz : r19.xyz;
        r18.x = (int)r17.z & 0xc0000000;
        if (r18.x == 0) {
          r18.x = (int)-r17.y + 6;
          r18.xy = (uint2)r16.wz >> (uint2)r18.xx;
          r18.z = (int)r17.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.y = (((uint)r18.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.x = (((uint)r18.x << 0) & bitmask.x) | ((uint)r18.y & ~bitmask.x);
          r18.x = (int)r18.x * 10;
          r18.x = (uint)r18.z >> (uint)r18.x;
          r18.x = (int)r18.x & 1023;
          r18.x = (int)r17.x + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.yy + int2(1,2);
          r17.y = (int)-r18.y + 6;
          r19.xy = (uint2)r16.wz >> (uint2)r17.yy;
          r17.y = (int)r18.w & 0xc0000000;
          r19.z = (int)r18.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r19.y = (((uint)r19.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r19.x = (((uint)r19.x << 0) & bitmask.x) | ((uint)r19.y & ~bitmask.x);
          r19.x = (int)r19.x * 10;
          r19.x = (uint)r19.z >> (uint)r19.x;
          r19.x = (int)r19.x & 1023;
          r19.x = (int)r18.x + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r17.yyy ? r18.xyw : r19.xyz;
          r18.y = (int)-r19.y + 6;
          r18.yz = (uint2)r16.wz >> (uint2)r18.yy;
          r19.y = (int)r19.z & 0xc0000000;
          r19.w = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r18.z & ~bitmask.y);
          r18.y = (int)r18.y * 10;
          r18.y = (uint)r19.w >> (uint)r18.y;
          r18.y = (int)r18.y & 1023;
          r20.x = (int)r18.y + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r19.yy ? r19.xz : r20.xy;
          r17.xz = r17.yy ? r18.xw : r18.yz;
        }
        r17.y = (int)r17.z & 0xc0000000;
        if (r17.y == 0) {
          if (14 == 0) r18.x = 0; else if (14+15 < 32) {           r18.x = (uint)r17.z << (32-(14 + 15)); r18.x = (uint)r18.x >> (32-14);          } else r18.x = (uint)r17.z >> 15;
          r18.x = (uint)r18.x;
          r18.x = sunConstants.sstLightingConstants.constants.spanInInches * r18.x;
          r18.yz = (int2)r17.zz & int2(32767,536870912);
          r18.y = (uint)r18.y;
          r18.y = sunConstants.sstLightingConstants.constants.spanInInches * r18.y;
          r18.xy = float2(6.10388815e-05,3.05185094e-05) * r18.xy;
          r18.w = (int)r16.z & 3;
          r18.w = (int)r17.x + (int)r18.w;
          r18.w = (int)r18.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r16.y = (uint)r18.w >> (uint)r19.x;
          r16.y = (int)r16.y & 255;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r18.y;
          r16.y = r16.y * 0.00392156886 + r18.x;
          r16.z = (int)r19.y + 1;
          if (1 == 0) r16.w = 0; else if (1+1 < 32) {           r16.w = (uint)r16.w << (32-(1 + 1)); r16.w = (uint)r16.w >> (32-1);          } else r16.w = (uint)r16.w >> 1;
          r16.z = (int)r16.w + (int)r16.z;
          r16.z = (int)r16.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.z = (uint)r16.z >> (uint)r19.z;
          r16.z = (int)r16.z & 0x0000ffff;
          r16.z = (uint)r16.z;
          r16.z = r16.z * r18.y;
          r16.z = r16.z * 1.52590219e-05 + r18.x;
          r17.w = r18.z ? r16.y : r16.z;
        } else {
          r16.y = (int)r17.z & 0x80000000;
          r16.z = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.y = r16.y ? r16.z : 0;
          r16.z = (uint)r17.z << 2;
          r16.w = (uint)r16.y >> 16;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.yw = f16tof32(r16.yw);
          r16.z = r12.y * r16.w + r16.z;
          r16.y = r12.z * r16.y + r16.z;
          r17.w = r17.y ? r16.y : r17.w;
        }
      }
      r12.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r12.w;
      r12.w = cmp(r17.w < r12.w);
      r14.y = r12.w ? 0 : 1;
    }
    if (r16.x == 0) {
      if (enableDitheredShadow == 0) {
        r12.w = (uint)r14.z;
        r16.xy = -sunConstants.splitPinTransform[r12.w].xy + r12.yz;
        r16.xy = sunConstants.splitPinTransform[r12.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r14.z + r12.w;
        r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r11.w).x;
        r16.x = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r12.w = r16.x + r12.w;
        r12.w = saturate(-1 + r12.w);
        r16.x = r12.w * r12.w;
        r14.y = r16.x * r12.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r10.x;
        r12.w = (uint)r14.z;
        r14.z = 1 + r14.z;
        r14.z = min(2, r14.z);
        r14.w = 1 + -r14.w;
        r14.w = 28 * r14.w;
        r14.zw = (uint2)r14.zw;
        r17.xy = -sunConstants.splitPinTransform[r12.w].xy + r12.yz;
        r17.xy = sunConstants.splitPinTransform[r12.w].zz * r17.xy;
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.yz = -sunConstants.splitPinTransform[r14.z].xy + r12.yz;
        r12.yz = sunConstants.splitPinTransform[r14.z].zz * r12.yz;
        r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r11.x;
        r16.z = r10.x;
        r16.w = 0;
        r17.z = 0;
        while (true) {
          r17.w = cmp((uint)r17.z >= 8);
          if (r17.w != 0) break;
          r17.w = cmp((uint)r14.w < (uint)r17.z);
          r18.xy = r17.ww ? r12.yz : r17.xy;
          r18.z = r17.w ? sunConstants.splitPinTransform[r14.z].w : sunConstants.splitPinTransform[r12.w].w;
          r17.w = r17.w ? r14.z : r12.w;
          r19.x = dot(icb[r17.z+0].yx, r16.xy);
          r19.y = dot(icb[r17.z+0].yx, r16.yz);
          r18.xy = r19.xy * r18.zz + r18.xy;
          r17.w = (int)r17.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r17.w;
          r17.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r11.w).x;
          r18.x = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r17.w = r18.x + r17.w;
          r17.w = saturate(-1 + r17.w);
          r16.w = r17.w * 0.125 + r16.w;
          r17.z = (int)r17.z + 1;
        }
        r11.w = r16.w * r16.w;
        r14.y = r11.w * r16.w;
      }
    }
  }
  r11.w = viewmodelSunShadowRaw & 0x0000ffff;
  if (r11.w != 0) {
    r11.w = (int)r11.w + numLights;
    r11.w = (int)r11.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.y, r11.w, l(52), t12.xxxx
  r12.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r11.w, l(68), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r11.w, l(84), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r11.w, l(132), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r11.w, l(148), t12.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
    r12.z = abs(r10.w) * -0.200000003 + 0.400000006;
    r12.w = cmp(r10.w < 0);
    r12.z = r12.w ? -r12.z : r12.z;
    r20.xyz = r3.xyz * r12.zzz + v6.xyz;
    r20.w = 1;
    r16.x = dot(r16.xyzw, r20.xyzw);
    r16.y = dot(r17.xyzw, r20.xyzw);
    r12.zw = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.zw = r12.zw + r19.zw;
    r12.zw = r12.zw * r19.xy;
    r14.zw = r12.yy / r18.xz;
    r16.xy = float2(1,1) + -r14.zw;
    r16.xy = cmp(r12.zw >= r16.xy);
    r14.zw = cmp(r14.zw >= r12.zw);
    r14.zw = (int2)r14.zw | (int2)r16.xy;
    r14.z = (int)r14.w | (int)r14.z;
    if (r14.z == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.z, r11.w, l(28), t12.xxxx
    r14.z = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r11.w, l(100), t12.xyzw
    r16.x = samp0[]..swiz;
    r16.y = samp0[]..swiz;
    r16.z = samp0[]..swiz;
    r16.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r11.w, l(164), t12.xyxx
    r17.x = samp0[]..swiz;
    r17.y = samp0[]..swiz;
      r11.w = dot(r16.xyzw, r20.xyzw);
      r12.zw = saturate(r12.zw);
      r16.xy = r12.zw * r18.xz + r18.yw;
      r11.w = r11.w + r17.x;
      r11.w = r11.w / r17.y;
      r11.w = max(6.10351563e-05, r11.w);
      r12.z = r14.z ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r17.x = -r10.x;
        r18.z = (uint)r12.z;
        r17.y = r11.x;
        r17.z = r10.x;
        r12.w = 0;
        r14.z = 0;
        while (true) {
          r14.w = cmp((int)r14.z >= 8);
          if (r14.w != 0) break;
          r19.x = dot(icb[r14.z+0].yx, r17.xy);
          r19.y = dot(icb[r14.z+0].yx, r17.yz);
          r18.xy = r19.xy * r12.yy + r16.xy;
          r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r11.w).x;
          r12.w = r14.w * 0.125 + r12.w;
          r14.z = (int)r14.z + 1;
        }
      } else {
        r16.z = (uint)r12.z;
        r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r11.w).x;
      }
      r11.w = r12.w * r12.w;
      r11.w = r11.w * r12.w;
    } else {
      r11.w = 1;
    }
    r14.y = r14.y * r11.w;
  }
  r11.w = cmp(0 < abs(r10.w));
  if (r11.w != 0) {
    r11.w = cmp(0 < r14.y);
    if (r11.w != 0) {
      r11.w = sunConstants.specScale * r5.w;
      r11.w = 0.25 * r11.w;
      if (sunConstants.sunCookieIndex != 0) {
        r15.w = 1;
        r12.y = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
        r12.z = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
        r16.xy = frac(r12.yz);
        r12.y = -1 + (int14)sunConstants.sunCookieIndex;
        r16.z = (uint)r12.y;
        r12.yzw = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
        r12.yzw = float3(-1,-1,-1) + r12.yzw;
        r12.yzw = sunConstants.sunCookieIntensity * r12.yzw + float3(1,1,1);
        r12.yzw = sunConstants.color.xyz * r12.yzw;
      } else {
        r12.yzw = sunConstants.color.xyz;
      }
      r14.z = -r7.x * 0.5 + 1;
      r14.z = -abs(r10.w) * r14.z + 1;
      r14.z = r14.z * r14.z;
      r14.z = -r14.z * 0.620000005 + 0.620000005;
      r14.z = r14.z + -abs(r10.w);
      r14.z = r6.w * r14.z + abs(r10.w);
      r14.w = cmp(0 < r10.w);
      r10.w = saturate(r10.w);
      r16.xyz = -v6.xyz * r4.www + sunConstants.wldDir.xyz;
      r4.w = dot(r16.xyz, r16.xyz);
      r4.w = rsqrt(r4.w);
      r16.xyz = r16.xyz * r4.www;
      r4.w = dot(r3.xyz, r16.xyz);
      r15.w = dot(r16.xyz, r8.xyz);
      r16.w = r2.x * r2.z;
      r16.w = sqrt(r16.w);
      r17.x = dot(r16.xyz, r5.xyz);
      r16.x = dot(r16.xyz, r6.xyz);
      r16.y = r17.x * r17.x;
      r16.x = r16.x * r16.x;
      r16.xy = r16.xy / r2.zx;
      r16.x = r16.y + r16.x;
      r4.w = abs(r4.w) * abs(r4.w) + r16.x;
      r16.x = r10.w * r8.w + r10.z;
      r4.w = r4.w * r4.w;
      r4.w = r4.w * r16.w;
      r4.w = r4.w * r16.x;
      r4.w = rcp(r4.w);
      r10.w = r10.w * r11.w;
      r4.w = r10.w * r4.w;
      r10.w = saturate(1 + -r15.w);
      r11.w = r10.w * r10.w;
      r11.w = r11.w * r11.w;
      r10.w = r11.w * r10.w;
      r10.w = r10.w * r4.w;
      r11.w = r14.w ? r14.z : 0;
      r16.xyz = r14.www ? float3(0,0,0) : r14.zzz;
      r17.xy = r14.ww ? r10.ww : 0;
      r18.xyz = r14.www ? r4.www : 0;
      r4.w = dot(r12.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r4.w = r14.y * r4.w;
      r14.x = 1;
      r10.w = sunConstants.wldDir.x;
      r14.zw = sunConstants.wldDir.yz;
      r17.zw = r11.ww;
      r15.w = r17.y;
    } else {
      r4.w = 0;
      r12.yzw = float3(0,0,0);
      r10.w = 0;
      r14.xyzw = float4(0,0,0,0);
      r16.xyz = float3(0,0,0);
      r11.w = 0;
      r18.xyz = float3(0,0,0);
      r15.w = 0;
      r17.xyzw = float4(0,0,0,0);
    }
  } else {
    r4.w = 0;
    r12.yzw = float3(0,0,0);
    r10.w = 0;
    r14.xyzw = float4(0,0,0,0);
    r16.xyz = float3(0,0,0);
    r11.w = 0;
    r18.xyz = float3(0,0,0);
    r15.w = 0;
    r17.xyzw = float4(0,0,0,0);
  }
  r16.w = 0.0078125 * r2.w;
  r16.w = min(15, r16.w);
  r16.w = (uint)r16.w;
  r19.xy = (uint2)r7.zw >> int2(6,6);
  r19.z = (uint)r16.w << 4;
  r20.x = -r10.x;
  r7.z = -r7.x * 0.5 + 1;
  r7.w = r2.x * r2.z;
  r7.w = sqrt(r7.w);
  r21.xy = float2(0,0);
  r22.w = 0;
  r23.xyz = v6.xyz;
  r23.w = 1;
  r24.w = 1;
  r20.z = r10.x;
  r25.z = 1;
  r26.w = 1;
  r20.yw = r11.xx;
  r10.y = r20.w;
  r27.w = 1;
  r11.y = r20.x;
  r11.z = r10.x;
  r28.x = r11.x;
  r28.y = r20.x;
  r28.z = r10.x;
  r29.xyz = float3(0,0,0);
  r30.xyz = float3(0,0,0);
  r31.xyz = float3(0,0,0);
  r32.xyz = float3(0,0,0);
  r33.xyz = r12.yzw;
  r34.x = r10.w;
  r34.yz = r14.zw;
  r35.xy = r17.zw;
  r35.z = r11.w;
  r36.xyz = r16.xyz;
  r37.xyz = r18.xyz;
  r38.x = r15.w;
  r38.yz = r17.xy;
  r39.x = enableDitheredShadow;
  r39.y = r4.w;
  r39.zw = r14.xy;
  r16.w = 0;
  while (true) {
    r18.w = cmp((uint)r16.w >= numLights);
    if (r18.w != 0) break;
    r21.z = (uint)r16.w >> 5;
    r22.xyz = (int3)r19.xyz + (int3)r21.xyz;
    r18.w = visibleLights.Load(r22.xyzw).x;
    r22.xyz = r29.xyz;
    r40.xyz = r30.xyz;
    r41.xyz = r31.xyz;
    r42.xyz = r32.xyz;
    r43.xyz = r33.xyz;
    r44.xyz = r34.xyz;
    r45.xyz = r35.xyz;
    r46.xyz = r37.xyz;
    r47.xyz = r38.xyz;
    r21.zw = r39.zw;
    r19.w = r39.x;
    r25.w = r39.y;
    r48.xyz = r36.xyz;
    r28.w = r18.w;
    while (true) {
      if (r28.w == 0) break;
      r29.w = firstbitlow((uint)r28.w);
      r30.w = 1 << (int)r29.w;
      r31.w = (int)r28.w & (int)r30.w;
      if (r31.w != 0) {
        r28.w = (int)r28.w ^ (int)r30.w;
        r29.w = (int)r16.w + (int)r29.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r29.w, l(0), t12.wxyz
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r29.w, l(16), t12.zxyw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r29.w, l(32), t12.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r29.w, l(48), t12.xyzw
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r29.w, l(64), t12.yzwx
      r53.x = samp0[]..swiz;
      r53.y = samp0[]..swiz;
      r53.z = samp0[]..swiz;
      r53.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r29.w, l(80), t12.xyzw
      r54.x = samp0[]..swiz;
      r54.y = samp0[]..swiz;
      r54.z = samp0[]..swiz;
      r54.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r29.w, l(96), t12.yzwx
      r55.x = samp0[]..swiz;
      r55.y = samp0[]..swiz;
      r55.z = samp0[]..swiz;
      r55.w = samp0[]..swiz;
        if (3 == 0) r30.w = 0; else if (3+24 < 32) {         r30.w = (uint)r50.w << (32-(3 + 24)); r30.w = (uint)r30.w >> (32-3);        } else r30.w = (uint)r50.w >> 24;
        switch (r30.w) {
          case 4 :          r30.w = cmp(0 < r55.x);
          r56.xy = r54.zw;
          r56.z = r55.w;
          r57.xyz = -r56.xyz * float3(0.5,0.5,0.5) + r49.yzw;
          r58.xyz = -v6.xyz + r57.xyz;
          r31.w = dot(r56.xyz, r58.xyz);
          r32.w = saturate(-r31.w / r55.x);
          r59.xyz = r32.www * r56.xyz + r57.xyz;
          r59.xyz = r30.www ? r59.xyz : r49.yzw;
          r59.xyz = -v6.xyz + r59.xyz;
          r33.w = dot(r59.xyz, r59.xyz);
          r34.w = rsqrt(r33.w);
          r59.xyz = r59.xyz * r34.www;
          r34.w = dot(r3.xyz, r59.xyz);
          r35.w = cmp(0 < abs(r34.w));
          if (r35.w != 0) {
            r35.w = sqrt(r33.w);
            r36.w = r52.x * r52.x;
            r33.w = r36.w / r33.w;
            r33.w = min(1, r33.w);
            r60.xy = saturate(r35.ww * r51.xz + r51.yw);
            r60.zw = r60.xy * r60.xy;
            r60.xy = r60.xy * float2(-2,-2) + float2(3,3);
            r60.xy = r60.zw * r60.xy;
            r33.w = r60.x * r33.w;
            r60.x = r33.w * r60.y;
            r33.w = cmp(0 < r60.x);
            if (r33.w != 0) {
              if (3 == 0) r60.z = 0; else if (3+27 < 32) {               r60.z = (uint)r50.w << (32-(3 + 27)); r60.z = (uint)r60.z >> (32-3);              } else r60.z = (uint)r50.w >> 27;
              if (4 == 0) r60.w = 0; else if (4+20 < 32) {               r60.w = (uint)r50.w << (32-(4 + 20)); r60.w = (uint)r60.w >> (32-4);              } else r60.w = (uint)r50.w >> 20;
              r33.w = cmp((int)r60.z != 1);
              if (r33.w != 0) {
                r33.w = abs(r34.w) * -0.200000003 + 0.400000006;
                r35.w = cmp(r34.w < 0);
                r33.w = r35.w ? -r33.w : r33.w;
                r61.xyz = r3.xyz * r33.www + v6.xyz;
                r61.xyz = r61.xyz + -r53.xyz;
                r33.w = max(abs(r61.y), abs(r61.z));
                r33.w = max(abs(r61.x), r33.w);
                r33.w = r54.x / r33.w;
                r33.w = r33.w + r54.y;
                r35.w = dot(r61.xyz, r61.xyz);
                r35.w = rsqrt(r35.w);
                r33.w = max(6.10351563e-05, r33.w);
                r36.w = (int)r50.w & 0x0000ffff;
                r62.w = (uint)r36.w;
                r60.y = 0;
                r36.w = 0;
                while (true) {
                  r37.w = cmp((int)r36.w >= 8);
                  if (r37.w != 0) break;
                  r63.y = dot(icb[r36.w+0].yx, r20.xy);
                  r63.z = dot(icb[r36.w+0].yx, r20.yz);
                  r63.yz = r63.yz * r52.yy;
                  r63.x = r63.y * r12.x;
                  r63.w = r63.y * r9.x;
                  r62.xyz = r61.xyz * r35.www + r63.xzw;
                  r37.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r62.xyzw, r33.w).x;
                  r60.y = r37.w * 0.125 + r60.y;
                  r36.w = (int)r36.w + 1;
                }
              } else {
                r60.y = 1;
              }
              if (r60.w != 0) {
                r33.w = (int)r60.w + numLights;
                r33.w = (int)r33.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.w, r33.w, l(52), t12.xxxx
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r33.w, l(100), t12.xyzw
              r61.x = samp0[]..swiz;
              r61.y = samp0[]..swiz;
              r61.z = samp0[]..swiz;
              r61.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r33.w, l(116), t12.xyzw
              r62.x = samp0[]..swiz;
              r62.y = samp0[]..swiz;
              r62.z = samp0[]..swiz;
              r62.w = samp0[]..swiz;
                r36.w = abs(r34.w) * -0.200000003 + 0.400000006;
                r37.w = cmp(r34.w < 0);
                r36.w = r37.w ? -r36.w : r36.w;
                r24.xyz = r3.xyz * r36.www + v6.xyz;
                r36.w = dot(r61.xyzw, r24.xyzw);
                r37.w = dot(r62.xyzw, r24.xyzw);
                r38.w = cmp(r37.w < r36.w);
                if (r38.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r33.w, l(68), t12.xyzw
                r61.x = samp0[]..swiz;
                r61.y = samp0[]..swiz;
                r61.z = samp0[]..swiz;
                r61.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r33.w, l(84), t12.xyzw
                r62.x = samp0[]..swiz;
                r62.y = samp0[]..swiz;
                r62.z = samp0[]..swiz;
                r62.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r33.w, l(132), t12.xyzw
                r63.x = samp0[]..swiz;
                r63.y = samp0[]..swiz;
                r63.z = samp0[]..swiz;
                r63.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r33.w, l(148), t12.xyzw
                r64.x = samp0[]..swiz;
                r64.y = samp0[]..swiz;
                r64.z = samp0[]..swiz;
                r64.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.zw, r33.w, l(164), t12.xxxy
                r60.z = samp0[]..swiz;
                r60.w = samp0[]..swiz;
                  r61.x = dot(r61.xyzw, r24.xyzw);
                  r61.y = dot(r62.xyzw, r24.xyzw);
                  r24.xy = r61.xy / r37.ww;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.xy = r24.xy + r64.zw;
                  r24.xy = r24.xy * r64.xy;
                  r61.xy = r35.ww / r63.xz;
                  r61.zw = float2(1,1) + -r61.xy;
                  r61.zw = cmp(r24.xy >= r61.zw);
                  r61.xy = cmp(r61.xy >= r24.xy);
                  r61.xy = (int2)r61.xy | (int2)r61.zw;
                  r24.z = (int)r61.y | (int)r61.x;
                  r24.xy = saturate(r24.xy);
                  r61.xy = r24.xy * r63.xz + r63.yw;
                  r24.x = r60.w * r37.w;
                  r24.y = r60.z * r37.w + r36.w;
                  r24.x = r24.y / r24.x;
                } else {
                  r24.z = -1;
                }
                r24.y = (int)r38.w | (int)r24.z;
                if (r24.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r33.w, l(28), t12.xxxx
                r24.y = samp0[]..swiz;
                  r24.x = max(6.10351563e-05, r24.x);
                  r24.y = (int)r24.y & 0x0000ffff;
                  if (r19.w != 0) {
                    r62.z = (uint)r24.y;
                    r24.z = 0;
                    r33.w = 0;
                    while (true) {
                      r36.w = cmp((int)r33.w >= 8);
                      if (r36.w != 0) break;
                      r63.x = dot(icb[r33.w+0].yx, r20.xw);
                      r63.y = dot(icb[r33.w+0].xy, r10.xy);
                      r62.xy = r63.xy * r35.ww + r61.xy;
                      r36.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r62.xyz, r24.x).x;
                      r24.z = r36.w * 0.125 + r24.z;
                      r33.w = (int)r33.w + 1;
                    }
                  } else {
                    r61.z = (uint)r24.y;
                    r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyz, r24.x).x;
                  }
                  r24.x = r24.z * r24.z;
                  r24.x = r24.x * r24.z;
                } else {
                  r24.x = 1;
                }
                r60.y = r60.y * r24.x;
              }
              r24.x = r60.x * r60.y;
              r24.y = cmp(0 < r24.x);
              if (r24.y != 0) {
                r24.y = r50.x * r5.w;
                r24.y = 0.25 * r24.y;
                r33.w = dot(r56.xyz, r13.xyz);
                r35.w = dot(r13.xyz, r58.xyz);
                r36.w = -r33.w * r33.w + r55.x;
                r31.w = r33.w * r35.w + -r31.w;
                r31.w = saturate(r31.w / r36.w);
                r33.w = r36.w / r55.x;
                r33.w = 10 * r33.w;
                r33.w = min(1, r33.w);
                r31.w = r31.w + -r32.w;
                r31.w = r33.w * r31.w + r32.w;
                r56.xyz = r31.www * r56.xyz + r57.xyz;
                r56.xyz = r30.www ? r56.xyz : r49.yzw;
                r56.xyz = -v6.xyz + r56.xyz;
                r30.w = dot(r56.xyz, r56.xyz);
                r30.w = rsqrt(r30.w);
                r57.xyz = r56.xyz * r30.www;
                r31.w = -abs(r34.w) * r7.z + 1;
                r31.w = r31.w * r31.w;
                r31.w = -r31.w * 0.620000005 + 0.620000005;
                r31.w = r31.w + -abs(r34.w);
                r31.w = r6.w * r31.w + abs(r34.w);
                r32.w = cmp(0 < r34.w);
                r33.w = saturate(dot(r3.xyz, r57.xyz));
                r56.xyz = r56.xyz * r30.www + r8.xyz;
                r30.w = dot(r56.xyz, r56.xyz);
                r30.w = rsqrt(r30.w);
                r56.xyz = r56.xyz * r30.www;
                r30.w = dot(r3.xyz, r56.xyz);
                r34.w = dot(r56.xyz, r8.xyz);
                r35.w = dot(r56.xyz, r5.xyz);
                r36.w = dot(r56.xyz, r6.xyz);
                r35.w = r35.w * r35.w;
                r35.w = r35.w / r2.x;
                r36.w = r36.w * r36.w;
                r36.w = r36.w / r2.z;
                r35.w = r36.w + r35.w;
                r30.w = abs(r30.w) * abs(r30.w) + r35.w;
                r35.w = r33.w * r8.w + r10.z;
                r30.w = r30.w * r30.w;
                r30.w = r30.w * r7.w;
                r30.w = r30.w * r35.w;
                r30.w = rcp(r30.w);
                r24.y = r33.w * r24.y;
                r24.y = r30.w * r24.y;
                r30.w = saturate(1 + -r34.w);
                r33.w = r30.w * r30.w;
                r33.w = r33.w * r33.w;
                r30.w = r33.w * r30.w;
                r30.w = r30.w * r24.y;
                r56.xyz = r32.www ? r31.www : 0;
                r31.w = r32.w ? 0 : r31.w;
                r57.xyz = r32.www ? r30.www : 0;
                r24.y = r32.w ? r24.y : 0;
                r50.x = r49.x;
                r30.w = dot(r50.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r30.w = r30.w * r24.x;
                r32.w = cmp(r25.w < r30.w);
                if (r32.w != 0) {
                  r32.w = r21.z * r21.w;
                  r58.xyz = r32.www * r43.xyz;
                  r22.xyz = r58.xyz * r45.xyz + r22.xyz;
                  r40.xyz = r58.xyz * r48.xyz + r40.xyz;
                  r42.xyz = r58.xyz * r46.xyz + r42.xyz;
                  r41.xyz = r58.xyz * r47.xyz + r41.xyz;
                  r46.xyz = r24.yyy;
                  r25.w = r30.w;
                  r48.xyz = r31.www;
                  r43.xyz = r50.xyz;
                  r44.xyz = r59.xyz;
                  r45.xyz = r56.xyz;
                  r47.xyz = r57.xyz;
                  r21.zw = r60.xy;
                } else {
                  r56.xyw = r50.xyz * r24.xxx;
                  r22.xyz = r56.xyw * r56.zzz + r22.xyz;
                  r40.xyz = r56.xyw * r31.www + r40.xyz;
                  r42.xyz = r56.xyw * r24.yyy + r42.xyz;
                  r41.xyz = r56.xyw * r57.xyz + r41.xyz;
                }
              }
            }
          }
          break;
          case 2 :          r56.xy = r52.zw;
          r56.z = r53.w;
          r56.xyz = -v6.xyz + r56.xyz;
          r24.x = dot(r56.xyz, r56.xyz);
          r24.x = rsqrt(r24.x);
          r57.xyz = r56.xyz * r24.xxx;
          r24.y = dot(r3.xyz, r57.xyz);
          r30.w = cmp(0 < abs(r24.y));
          if (r30.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r29.w, l(112), t12.yzwx
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.xyzw, r29.w, l(128), t12.zxyw
          r59.x = samp0[]..swiz;
          r59.y = samp0[]..swiz;
          r59.z = samp0[]..swiz;
          r59.w = samp0[]..swiz;
            r61.xyz = r58.xyz;
            r61.w = r59.y;
            r30.w = dot(r61.xyzw, r23.xyzw);
            r31.w = cmp(r30.w < 1);
            if (r31.w != 0) {
              r60.xzw = float3(1,1,1);
              r62.x = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r29.w, l(172), t12.yzwx
            r63.x = samp0[]..swiz;
            r63.y = samp0[]..swiz;
            r63.z = samp0[]..swiz;
            r63.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r29.w, l(188), t12.wxyz
            r64.x = samp0[]..swiz;
            r64.y = samp0[]..swiz;
            r64.z = samp0[]..swiz;
            r64.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r29.w, l(204), t12.xyzw
            r65.x = samp0[]..swiz;
            r65.y = samp0[]..swiz;
            r65.z = samp0[]..swiz;
            r65.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.w, r29.w, l(236), t12.xxxx
            r31.w = samp0[]..swiz;
              r66.xyz = -v6.xyz + r49.yzw;
              r32.w = r52.x * r52.x;
              r33.w = dot(r66.xyz, r66.xyz);
              r32.w = r32.w / r33.w;
              r32.w = min(1, r32.w);
              r51.xy = saturate(r30.ww * r51.xz + r51.yw);
              r51.zw = r51.xy * r51.xy;
              r51.xy = r51.xy * float2(-2,-2) + float2(3,3);
              r51.xy = r51.zw * r51.xy;
              r32.w = r51.x * r32.w;
              r32.w = r32.w * r51.y;
              r53.w = r54.x;
              r51.x = dot(r53.xyzw, r23.xyzw);
              r66.xyz = r54.yzw;
              r66.w = r55.w;
              r51.y = dot(r66.xyzw, r23.xyzw);
              r25.xy = r51.xy / r30.ww;
              r30.w = cmp(r63.w < 0.00048828125);
              if (r30.w != 0) {
                r64.y = r65.x;
                r51.xy = saturate(abs(r25.xy) * r64.zw + r64.xy);
                r51.zw = r51.xy * r51.xy;
                r51.xy = r51.xy * float2(-2,-2) + float2(3,3);
                r51.xy = r51.zw * r51.xy;
                r30.w = r51.x * r51.y;
              } else {
                r63.w = r64.y;
                r51.xyzw = saturate(r63.xyzw * abs(r25.yyxx));
                r51.xyzw = log2(r51.xyzw);
                r51.xyzw = r64.xxxx * r51.xyzw;
                r51.xyzw = exp2(r51.xyzw);
                r51.xy = r51.xy + r51.zw;
                r51.xy = log2(r51.xy);
                r51.xy = r65.xx * r51.xy;
                r51.xy = exp2(r51.xy);
                r33.w = r64.z * r51.x;
                r34.w = r64.w * r51.y + -1;
                r33.w = r64.w * r51.y + -r33.w;
                r33.w = saturate(r34.w / r33.w);
                r34.w = r33.w * r33.w;
                r33.w = r33.w * -2 + 3;
                r30.w = r34.w * r33.w;
              }
              r62.x = r32.w * r30.w;
              r30.w = r31.w ? 0.000000 : 0;
              if (r30.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyz, r29.w, l(220), t12.xyzx
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
                r31.w = dot(r65.yzw, r25.xyz);
                r25.x = dot(r51.xyz, r25.xyz);
                r51.x = frac(r31.w);
                r51.y = frac(r25.x);
                r25.x = (int)r30.w + -1;
                r51.z = (uint)r25.x;
                r60.xzw = gCookieArray.SampleLevel(samplerLinear_s, r51.xyz, 0).xyz;
              } else {
                r60.xzw = float3(1,1,1);
              }
            }
            r49.yz = r50.yz;
            r49.xyz = r49.xyz * r60.xzw;
            r25.x = cmp(0 < r62.x);
            if (r25.x != 0) {
              if (3 == 0) r25.x = 0; else if (3+27 < 32) {               r25.x = (uint)r50.w << (32-(3 + 27)); r25.x = (uint)r25.x >> (32-3);              } else r25.x = (uint)r50.w >> 27;
              if (4 == 0) r25.y = 0; else if (4+20 < 32) {               r25.y = (uint)r50.w << (32-(4 + 20)); r25.y = (uint)r25.y >> (32-4);              } else r25.y = (uint)r50.w >> 20;
              r25.x = cmp((int)r25.x != 1);
              if (r25.x != 0) {
                r25.x = abs(r24.y) * -0.200000003 + 0.400000006;
                r30.w = cmp(r24.y < 0);
                r25.x = r30.w ? -r25.x : r25.x;
                r26.xyz = r3.xyz * r25.xxx + v6.xyz;
                r58.xyz = r55.xyz;
                r25.x = dot(r58.xyzw, r26.xyzw);
                r30.w = dot(r61.xyzw, r26.xyzw);
                r31.w = cmp(r30.w >= r25.x);
                if (r31.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.y, r29.w, l(144), t12.xxxx
                r59.y = samp0[]..swiz;
                  r53.w = r54.x;
                  r51.x = dot(r53.xyzw, r26.xyzw);
                  r55.xyz = r54.yzw;
                  r51.y = dot(r55.xyzw, r26.xyzw);
                  r26.xy = r51.xy / r30.ww;
                  r26.xy = saturate(r26.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r26.xy = r26.xy * r59.zw + r59.xy;
                  r25.x = r25.x / r30.w;
                  r25.x = max(6.10351563e-05, r25.x);
                  r29.w = (int)r50.w & 0x0000ffff;
                  if (r19.w != 0) {
                    r51.z = (uint)r29.w;
                    r30.w = 0;
                    r31.w = 0;
                    while (true) {
                      r32.w = cmp((int)r31.w >= 8);
                      if (r32.w != 0) break;
                      r53.x = dot(icb[r31.w+0].xy, r11.xy);
                      r53.y = dot(icb[r31.w+0].yx, r11.xz);
                      r51.xy = r53.xy * r52.yy + r26.xy;
                      r32.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r51.xyz, r25.x).x;
                      r30.w = r32.w * 0.125 + r30.w;
                      r31.w = (int)r31.w + 1;
                    }
                  } else {
                    r26.z = (uint)r29.w;
                    r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r25.x).x;
                  }
                  r25.x = r30.w * r30.w;
                  r62.y = r25.x * r30.w;
                } else {
                  r62.y = 1;
                }
              } else {
                r62.y = 1;
              }
              if (r25.y != 0) {
                r25.x = (int)r25.y + numLights;
                r25.x = (int)r25.x + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.y, r25.x, l(52), t12.xxxx
              r25.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r25.x, l(68), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r25.x, l(84), t12.xyzw
              r52.x = samp0[]..swiz;
              r52.y = samp0[]..swiz;
              r52.z = samp0[]..swiz;
              r52.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r25.x, l(100), t12.xyzw
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
              r53.z = samp0[]..swiz;
              r53.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r25.x, l(116), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r25.x, l(132), t12.xyzw
              r55.x = samp0[]..swiz;
              r55.y = samp0[]..swiz;
              r55.z = samp0[]..swiz;
              r55.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r25.x, l(148), t12.xyzw
              r58.x = samp0[]..swiz;
              r58.y = samp0[]..swiz;
              r58.z = samp0[]..swiz;
              r58.w = samp0[]..swiz;
                r26.x = abs(r24.y) * -0.200000003 + 0.400000006;
                r26.y = cmp(r24.y < 0);
                r26.x = r26.y ? -r26.x : r26.x;
                r27.xyz = r3.xyz * r26.xxx + v6.xyz;
                r26.x = dot(r51.xyzw, r27.xyzw);
                r26.y = dot(r52.xyzw, r27.xyzw);
                r26.z = dot(r53.xyzw, r27.xyzw);
                r27.x = dot(r54.xyzw, r27.xyzw);
                r27.y = cmp(r27.x < r26.z);
                r26.xy = r26.xy / r27.xx;
                r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r26.xy = r26.xy + r58.zw;
                r26.xy = r26.xy * r58.xy;
                r50.yz = r25.yy / r55.xz;
                r51.xy = float2(1,1) + -r50.yz;
                r51.xy = cmp(r26.xy >= r51.xy);
                r50.yz = cmp(r50.yz >= r26.xy);
                r50.yz = (int2)r50.yz | (int2)r51.xy;
                r27.z = (int)r50.z | (int)r50.y;
                r27.y = (int)r27.y | (int)r27.z;
                if (r27.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.y, r25.x, l(28), t12.xxxx
                r27.y = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.yz, r25.x, l(164), t12.xxyx
                r50.y = samp0[]..swiz;
                r50.z = samp0[]..swiz;
                  r26.xy = saturate(r26.xy);
                  r51.xy = r26.xy * r55.xz + r55.yw;
                  r25.x = r50.z * r27.x;
                  r26.x = r50.y * r27.x + r26.z;
                  r25.x = r26.x / r25.x;
                  r25.x = max(6.10351563e-05, r25.x);
                  r26.x = r27.y ? 0.000000 : 0;
                  if (r19.w != 0) {
                    r27.z = (uint)r26.x;
                    r26.yz = float2(0,0);
                    while (true) {
                      r29.w = cmp((int)r26.z >= 8);
                      if (r29.w != 0) break;
                      r52.x = dot(icb[r26.z+0].xy, r28.xy);
                      r52.y = dot(icb[r26.z+0].yx, r28.xz);
                      r27.xy = r52.xy * r25.yy + r51.xy;
                      r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r25.x).x;
                      r26.y = r27.x * 0.125 + r26.y;
                      r26.z = (int)r26.z + 1;
                    }
                  } else {
                    r51.z = (uint)r26.x;
                    r26.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r51.xyz, r25.x).x;
                  }
                  r25.x = r26.y * r26.y;
                  r25.x = r25.x * r26.y;
                } else {
                  r25.x = 1;
                }
                r62.y = r62.y * r25.x;
              }
              r25.x = r62.x * r62.y;
              r25.y = cmp(0 < r25.x);
              if (r25.y != 0) {
                r25.y = r50.x * r5.w;
                r25.y = 0.25 * r25.y;
                r26.x = -abs(r24.y) * r7.z + 1;
                r26.x = r26.x * r26.x;
                r26.x = -r26.x * 0.620000005 + 0.620000005;
                r26.x = r26.x + -abs(r24.y);
                r26.x = r6.w * r26.x + abs(r24.y);
                r26.z = cmp(0 < r24.y);
                r24.y = saturate(r24.y);
                r27.xyz = r56.xyz * r24.xxx + r8.xyz;
                r24.x = dot(r27.xyz, r27.xyz);
                r24.x = rsqrt(r24.x);
                r27.xyz = r27.xyz * r24.xxx;
                r24.x = dot(r3.xyz, r27.xyz);
                r29.w = dot(r27.xyz, r8.xyz);
                r31.w = dot(r27.xyz, r5.xyz);
                r27.x = dot(r27.xyz, r6.xyz);
                r27.y = r31.w * r31.w;
                r27.x = r27.x * r27.x;
                r27.xy = r27.xy / r2.zx;
                r27.x = r27.y + r27.x;
                r24.x = abs(r24.x) * abs(r24.x) + r27.x;
                r27.x = r24.y * r8.w + r10.z;
                r24.x = r24.x * r24.x;
                r24.x = r24.x * r7.w;
                r24.x = r24.x * r27.x;
                r24.x = rcp(r24.x);
                r24.y = r24.y * r25.y;
                r24.x = r24.x * r24.y;
                r24.y = saturate(1 + -r29.w);
                r25.y = r24.y * r24.y;
                r25.y = r25.y * r25.y;
                r24.y = r25.y * r24.y;
                r24.y = r24.x * r24.y;
                r27.xyz = r26.zzz ? r26.xxx : 0;
                r25.y = r26.z ? 0 : r26.x;
                r50.xyz = r26.zzz ? r24.yyy : 0;
                r24.x = r26.z ? r24.x : 0;
                r24.y = dot(r49.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r24.y = r25.x * r24.y;
                r26.x = cmp(r25.w < r24.y);
                if (r26.x != 0) {
                  r26.x = r21.z * r21.w;
                  r51.xyz = r26.xxx * r43.xyz;
                  r22.xyz = r51.xyz * r45.xyz + r22.xyz;
                  r40.xyz = r51.xyz * r48.xyz + r40.xyz;
                  r42.xyz = r51.xyz * r46.xyz + r42.xyz;
                  r41.xyz = r51.xyz * r47.xyz + r41.xyz;
                  r46.xyz = r24.xxx;
                  r25.w = r24.y;
                  r48.xyz = r25.yyy;
                  r43.xyz = r49.xyz;
                  r44.xyz = r57.xyz;
                  r45.xyz = r27.xyz;
                  r47.xyz = r50.xyz;
                  r21.zw = r62.xy;
                } else {
                  r49.xyz = r25.xxx * r49.xyz;
                  r22.xyz = r49.xyz * r27.zzz + r22.xyz;
                  r40.xyz = r49.xyz * r25.yyy + r40.xyz;
                  r42.xyz = r49.xyz * r24.xxx + r42.xyz;
                  r41.xyz = r49.xyz * r50.xyz + r41.xyz;
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
    r29.xyz = r22.xyz;
    r30.xyz = r40.xyz;
    r31.xyz = r41.xyz;
    r32.xyz = r42.xyz;
    r33.xyz = r43.xyz;
    r34.xyz = r44.xyz;
    r35.xyz = r45.xyz;
    r37.xyz = r46.xyz;
    r38.xyz = r47.xyz;
    r39.zw = r21.zw;
    r39.y = r25.w;
    r36.xyz = r48.xyz;
    r16.w = (int)r16.w + 32;
  }
  r5.z = 0;
  r5.xy = float2(1,-1) * r34.yx;
  r6.xyz = r34.zxy * r5.yzx;
  r6.xyz = r34.yzx * r5.zxy + -r6.xyz;
  r10.xyz = viewProjectionMatrix._m10_m11_m13 * r15.yyy;
  r10.xyz = r15.xxx * viewProjectionMatrix._m00_m01_m03 + r10.xyz;
  r10.xyz = r15.zzz * viewProjectionMatrix._m20_m21_m23 + r10.xyz;
  r10.xyz = r10.xyz + r9.yzw;
  r11.z = rcp(r10.z);
  r2.xz = r11.zz * r10.xy;
  r11.xy = r2.xz * float2(0.5,-0.5) + float2(0.5,0.5);
  r10.xyw = r34.xyz * float3(2.4000001,2.4000001,2.4000001) + r15.xyz;
  r2.x = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r2.x = frac(r2.x);
  r2.x = 52.9829178 * r2.x;
  r2.x = frac(r2.x);
  r2.z = 3.14159989 * r2.x;
  sincos(r2.z, r9.x, r12.x);
  r12.yzw = r9.xxx * r6.xyz;
  r12.xyz = r12.xxx * r5.xyz + r12.yzw;
  r12.xyz = r12.xyz * float3(0.119999997,0.119999997,0.119999997) + r10.xyw;
  r14.xyz = viewProjectionMatrix._m10_m11_m13 * r12.yyy;
  r12.xyw = r12.xxx * viewProjectionMatrix._m00_m01_m03 + r14.xyz;
  r12.xyz = r12.zzz * viewProjectionMatrix._m20_m21_m23 + r12.xyw;
  r12.xyz = r12.xyz + r9.yzw;
  r7.zw = float2(0.5,-0.5) * r12.xy;
  r12.z = rcp(r12.z);
  r12.xy = r7.zw * r12.zz + float2(0.5,0.5);
  r14.xyz = -r11.xyz;
  r12.xyz = r14.xyz + r12.xyz;
  r15.xyz = r2.xxx * float3(3.14159989,0.5,0.5) + float3(3.14159989,0.333333343,1);
  sincos(r15.x, r9.x, r15.x);
  r6.xyz = r9.xxx * r6.xyz;
  r5.xyz = r15.xxx * r5.xyz + r6.xyz;
  r5.xyz = r5.xyz * float3(0.119999997,0.119999997,0.119999997) + r10.xyw;
  r6.xyz = viewProjectionMatrix._m10_m11_m13 * r5.yyy;
  r5.xyw = r5.xxx * viewProjectionMatrix._m00_m01_m03 + r6.xyz;
  r5.xyz = r5.zzz * viewProjectionMatrix._m20_m21_m23 + r5.xyw;
  r5.xyz = r5.xyz + r9.yzw;
  r5.xy = float2(0.5,-0.5) * r5.xy;
  r6.z = rcp(r5.z);
  r6.xy = r5.xy * r6.zz + r14.xy;
  r14.w = 0.5;
  r5.xyz = r6.xyz + r14.wwz;
  r2.z = dot(renderTargetSize.zw, renderTargetSize.zw);
  r2.z = sqrt(r2.z);
  r4.w = dot(r12.xy, r12.xy);
  r4.w = sqrt(r4.w);
  r4.w = rcp(r4.w);
  r2.z = r4.w * r2.z;
  r6.xy = float2(0.117647059,0.117647059) * r15.yz;
  r6.xy = r6.xy * r6.xy;
  x1[0].x = r6.x;
  r9.xyz = r12.xyz * r6.xxx + r11.xyz;
  r6.zw = cmp(r2.zz < r6.xy);
  r7.zw = renderTargetSize.xy * r9.xy;
  r14.xy = (int2)r7.zw;
  r14.zw = float2(0,0);
  r4.w = floatZSampler.Load(r14.xyz).x;
  r5.w = cmp(r4.w >= 0.984375);
  r7.z = 1.01587307 * r4.w;
  r4.w = r4.w * 64 + -63;
  r4.w = r5.w ? r4.w : r7.z;
  r4.w = max(9.99999994e-09, r4.w);
  r4.w = rcp(r4.w);
  x2[0].x = r4.w;
  r5.w = 0.0419999994 + r4.w;
  r5.w = r9.z * r5.w;
  r5.w = cmp(1 < r5.w);
  r5.w = r5.w ? 1.000000 : 0;
  r5.w = r6.z ? r5.w : 1;
  x0[0].x = r5.w;
  x1[1].x = r6.y;
  r9.xyz = r5.xyz * r6.yyy + r11.xyz;
  r7.zw = renderTargetSize.xy * r9.xy;
  r14.xy = (int2)r7.zw;
  r14.zw = float2(0,0);
  r6.z = floatZSampler.Load(r14.xyz).x;
  r7.z = cmp(r6.z >= 0.984375);
  r7.w = 1.01587307 * r6.z;
  r6.z = r6.z * 64 + -63;
  r6.z = r7.z ? r6.z : r7.w;
  r6.z = max(9.99999994e-09, r6.z);
  r6.z = rcp(r6.z);
  x2[1].x = r6.z;
  r7.z = 0.0419999994 + r6.z;
  r7.z = r9.z * r7.z;
  r7.z = cmp(1 < r7.z);
  r7.z = r7.z ? 1.000000 : 0;
  r6.w = r6.w ? r7.z : 1;
  x0[1].x = r6.w;
  r7.z = r6.w + r5.w;
  r7.z = cmp(r7.z != 0.000000);
  if (r7.z != 0) {
    r7.zw = r2.xx * float2(0.5,0.5) + float2(1.33333337,2);
    r7.zw = float2(0.117647059,0.117647059) * r7.zw;
    r7.zw = r7.zw * r7.zw + -r6.xy;
    r6.x = r5.w * r7.z + r6.x;
    x1[0].x = r6.x;
    r9.xyz = r12.xyz * r6.xxx + r11.xyz;
    r6.x = cmp(r2.z < r6.x);
    r9.xy = renderTargetSize.xy * r9.xy;
    r14.xy = (int2)r9.xy;
    r14.zw = float2(0,0);
    r7.z = floatZSampler.Load(r14.xyz).x;
    r8.w = cmp(r7.z >= 0.984375);
    r9.x = 1.01587307 * r7.z;
    r7.z = r7.z * 64 + -63;
    r7.z = r8.w ? r7.z : r9.x;
    r7.z = max(9.99999994e-09, r7.z);
    r7.z = rcp(r7.z);
    r4.w = r6.x ? r7.z : r4.w;
    x2[0].x = r4.w;
    r4.w = 0.0419999994 + r7.z;
    r4.w = r9.z * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.w * r4.w;
    r4.w = r6.x ? r4.w : r5.w;
    x0[0].x = r4.w;
    r5.w = r6.w * r7.w + r6.y;
    x1[1].x = r5.w;
    r9.xyz = r5.xyz * r5.www + r11.xyz;
    r5.w = cmp(r2.z < r5.w);
    r6.xy = renderTargetSize.xy * r9.xy;
    r14.xy = (int2)r6.xy;
    r14.zw = float2(0,0);
    r6.x = floatZSampler.Load(r14.xyz).x;
    r6.y = cmp(r6.x >= 0.984375);
    r7.z = 1.01587307 * r6.x;
    r6.x = r6.x * 64 + -63;
    r6.x = r6.y ? r6.x : r7.z;
    r6.x = max(9.99999994e-09, r6.x);
    r6.x = rcp(r6.x);
    r6.y = r5.w ? r6.x : r6.z;
    x2[1].x = r6.y;
    r6.x = 0.0419999994 + r6.x;
    r6.x = r9.z * r6.x;
    r6.x = cmp(1 < r6.x);
    r6.x = r6.x ? 1.000000 : 0;
    r6.x = r6.w * r6.x;
    r5.w = r5.w ? r6.x : r6.w;
    x0[1].x = r5.w;
    r4.w = r5.w + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r6.xy = r2.xx * float2(0.5,0.5) + float2(2.33333325,3);
    r6.xy = float2(0.117647059,0.117647059) * r6.xy;
    r4.w = x1[0].x;
    r5.w = x0[0].x;
    r6.x = r6.x * r6.x + -r4.w;
    r4.w = r5.w * r6.x + r4.w;
    x1[0].x = r4.w;
    r6.xzw = r12.xyz * r4.www + r11.xyz;
    r4.w = cmp(r2.z < r4.w);
    r6.xz = renderTargetSize.xy * r6.xz;
    r9.xy = (int2)r6.xz;
    r9.zw = float2(0,0);
    r6.x = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.x >= 0.984375);
    r7.z = 1.01587307 * r6.x;
    r6.x = r6.x * 64 + -63;
    r6.x = r6.z ? r6.x : r7.z;
    r6.x = max(9.99999994e-09, r6.x);
    r6.x = rcp(r6.x);
    r6.z = x2[0].x;
    r6.z = r4.w ? r6.x : r6.z;
    x2[0].x = r6.z;
    r6.x = 0.0419999994 + r6.x;
    r6.x = r6.w * r6.x;
    r6.x = cmp(1 < r6.x);
    r6.x = r6.x ? 1.000000 : 0;
    r6.x = r6.x * r5.w;
    r4.w = r4.w ? r6.x : r5.w;
    x0[0].x = r4.w;
    r5.w = x1[1].x;
    r6.x = x0[1].x;
    r6.y = r6.y * r6.y + -r5.w;
    r5.w = r6.x * r6.y + r5.w;
    x1[1].x = r5.w;
    r6.yzw = r5.xyz * r5.www + r11.xyz;
    r5.w = cmp(r2.z < r5.w);
    r6.yz = renderTargetSize.xy * r6.yz;
    r9.xy = (int2)r6.yz;
    r9.zw = float2(0,0);
    r6.y = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.y >= 0.984375);
    r7.z = 1.01587307 * r6.y;
    r6.y = r6.y * 64 + -63;
    r6.y = r6.z ? r6.y : r7.z;
    r6.y = max(9.99999994e-09, r6.y);
    r6.y = rcp(r6.y);
    r6.z = x2[1].x;
    r6.z = r5.w ? r6.y : r6.z;
    x2[1].x = r6.z;
    r6.y = 0.0419999994 + r6.y;
    r6.y = r6.w * r6.y;
    r6.y = cmp(1 < r6.y);
    r6.y = r6.y ? 1.000000 : 0;
    r6.y = r6.x * r6.y;
    r5.w = r5.w ? r6.y : r6.x;
    x0[1].x = r5.w;
    r4.w = r5.w + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r6.xy = r2.xx * float2(0.5,0.5) + float2(3.33333325,4);
    r6.xy = float2(0.117647059,0.117647059) * r6.xy;
    r4.w = x1[0].x;
    r5.w = x0[0].x;
    r6.x = r6.x * r6.x + -r4.w;
    r4.w = r5.w * r6.x + r4.w;
    x1[0].x = r4.w;
    r6.xzw = r12.xyz * r4.www + r11.xyz;
    r4.w = cmp(r2.z < r4.w);
    r6.xz = renderTargetSize.xy * r6.xz;
    r9.xy = (int2)r6.xz;
    r9.zw = float2(0,0);
    r6.x = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.x >= 0.984375);
    r7.z = 1.01587307 * r6.x;
    r6.x = r6.x * 64 + -63;
    r6.x = r6.z ? r6.x : r7.z;
    r6.x = max(9.99999994e-09, r6.x);
    r6.x = rcp(r6.x);
    r6.z = x2[0].x;
    r6.z = r4.w ? r6.x : r6.z;
    x2[0].x = r6.z;
    r6.x = 0.0419999994 + r6.x;
    r6.x = r6.w * r6.x;
    r6.x = cmp(1 < r6.x);
    r6.x = r6.x ? 1.000000 : 0;
    r6.x = r6.x * r5.w;
    r4.w = r4.w ? r6.x : r5.w;
    x0[0].x = r4.w;
    r5.w = x1[1].x;
    r6.x = x0[1].x;
    r6.y = r6.y * r6.y + -r5.w;
    r5.w = r6.x * r6.y + r5.w;
    x1[1].x = r5.w;
    r6.yzw = r5.xyz * r5.www + r11.xyz;
    r5.w = cmp(r2.z < r5.w);
    r6.yz = renderTargetSize.xy * r6.yz;
    r9.xy = (int2)r6.yz;
    r9.zw = float2(0,0);
    r6.y = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.y >= 0.984375);
    r7.z = 1.01587307 * r6.y;
    r6.y = r6.y * 64 + -63;
    r6.y = r6.z ? r6.y : r7.z;
    r6.y = max(9.99999994e-09, r6.y);
    r6.y = rcp(r6.y);
    r6.z = x2[1].x;
    r6.z = r5.w ? r6.y : r6.z;
    x2[1].x = r6.z;
    r6.y = 0.0419999994 + r6.y;
    r6.y = r6.w * r6.y;
    r6.y = cmp(1 < r6.y);
    r6.y = r6.y ? 1.000000 : 0;
    r6.y = r6.x * r6.y;
    r5.w = r5.w ? r6.y : r6.x;
    x0[1].x = r5.w;
    r4.w = r5.w + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r6.xy = r2.xx * float2(0.5,0.5) + float2(4.33333349,5);
    r6.xy = float2(0.117647059,0.117647059) * r6.xy;
    r4.w = x1[0].x;
    r5.w = x0[0].x;
    r6.x = r6.x * r6.x + -r4.w;
    r4.w = r5.w * r6.x + r4.w;
    x1[0].x = r4.w;
    r6.xzw = r12.xyz * r4.www + r11.xyz;
    r4.w = cmp(r2.z < r4.w);
    r6.xz = renderTargetSize.xy * r6.xz;
    r9.xy = (int2)r6.xz;
    r9.zw = float2(0,0);
    r6.x = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.x >= 0.984375);
    r7.z = 1.01587307 * r6.x;
    r6.x = r6.x * 64 + -63;
    r6.x = r6.z ? r6.x : r7.z;
    r6.x = max(9.99999994e-09, r6.x);
    r6.x = rcp(r6.x);
    r6.z = x2[0].x;
    r6.z = r4.w ? r6.x : r6.z;
    x2[0].x = r6.z;
    r6.x = 0.0419999994 + r6.x;
    r6.x = r6.w * r6.x;
    r6.x = cmp(1 < r6.x);
    r6.x = r6.x ? 1.000000 : 0;
    r6.x = r6.x * r5.w;
    r4.w = r4.w ? r6.x : r5.w;
    x0[0].x = r4.w;
    r5.w = x1[1].x;
    r6.x = x0[1].x;
    r6.y = r6.y * r6.y + -r5.w;
    r5.w = r6.x * r6.y + r5.w;
    x1[1].x = r5.w;
    r6.yzw = r5.xyz * r5.www + r11.xyz;
    r5.w = cmp(r2.z < r5.w);
    r6.yz = renderTargetSize.xy * r6.yz;
    r9.xy = (int2)r6.yz;
    r9.zw = float2(0,0);
    r6.y = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.y >= 0.984375);
    r7.z = 1.01587307 * r6.y;
    r6.y = r6.y * 64 + -63;
    r6.y = r6.z ? r6.y : r7.z;
    r6.y = max(9.99999994e-09, r6.y);
    r6.y = rcp(r6.y);
    r6.z = x2[1].x;
    r6.z = r5.w ? r6.y : r6.z;
    x2[1].x = r6.z;
    r6.y = 0.0419999994 + r6.y;
    r6.y = r6.w * r6.y;
    r6.y = cmp(1 < r6.y);
    r6.y = r6.y ? 1.000000 : 0;
    r6.y = r6.x * r6.y;
    r5.w = r5.w ? r6.y : r6.x;
    x0[1].x = r5.w;
    r4.w = r5.w + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r6.xy = r2.xx * float2(0.5,0.5) + float2(5.33333349,6);
    r6.xy = float2(0.117647059,0.117647059) * r6.xy;
    r4.w = x1[0].x;
    r5.w = x0[0].x;
    r6.x = r6.x * r6.x + -r4.w;
    r4.w = r5.w * r6.x + r4.w;
    x1[0].x = r4.w;
    r6.xzw = r12.xyz * r4.www + r11.xyz;
    r4.w = cmp(r2.z < r4.w);
    r6.xz = renderTargetSize.xy * r6.xz;
    r9.xy = (int2)r6.xz;
    r9.zw = float2(0,0);
    r6.x = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.x >= 0.984375);
    r7.z = 1.01587307 * r6.x;
    r6.x = r6.x * 64 + -63;
    r6.x = r6.z ? r6.x : r7.z;
    r6.x = max(9.99999994e-09, r6.x);
    r6.x = rcp(r6.x);
    r6.z = x2[0].x;
    r6.z = r4.w ? r6.x : r6.z;
    x2[0].x = r6.z;
    r6.x = 0.0419999994 + r6.x;
    r6.x = r6.w * r6.x;
    r6.x = cmp(1 < r6.x);
    r6.x = r6.x ? 1.000000 : 0;
    r6.x = r6.x * r5.w;
    r4.w = r4.w ? r6.x : r5.w;
    x0[0].x = r4.w;
    r5.w = x1[1].x;
    r6.x = x0[1].x;
    r6.y = r6.y * r6.y + -r5.w;
    r5.w = r6.x * r6.y + r5.w;
    x1[1].x = r5.w;
    r6.yzw = r5.xyz * r5.www + r11.xyz;
    r5.w = cmp(r2.z < r5.w);
    r6.yz = renderTargetSize.xy * r6.yz;
    r9.xy = (int2)r6.yz;
    r9.zw = float2(0,0);
    r6.y = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.y >= 0.984375);
    r7.z = 1.01587307 * r6.y;
    r6.y = r6.y * 64 + -63;
    r6.y = r6.z ? r6.y : r7.z;
    r6.y = max(9.99999994e-09, r6.y);
    r6.y = rcp(r6.y);
    r6.z = x2[1].x;
    r6.z = r5.w ? r6.y : r6.z;
    x2[1].x = r6.z;
    r6.y = 0.0419999994 + r6.y;
    r6.y = r6.w * r6.y;
    r6.y = cmp(1 < r6.y);
    r6.y = r6.y ? 1.000000 : 0;
    r6.y = r6.x * r6.y;
    r5.w = r5.w ? r6.y : r6.x;
    x0[1].x = r5.w;
    r4.w = r5.w + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r6.xy = r2.xx * float2(0.5,0.5) + float2(6.33333349,7);
    r6.xy = float2(0.117647059,0.117647059) * r6.xy;
    r4.w = x1[0].x;
    r5.w = x0[0].x;
    r6.x = r6.x * r6.x + -r4.w;
    r4.w = r5.w * r6.x + r4.w;
    x1[0].x = r4.w;
    r6.xzw = r12.xyz * r4.www + r11.xyz;
    r4.w = cmp(r2.z < r4.w);
    r6.xz = renderTargetSize.xy * r6.xz;
    r9.xy = (int2)r6.xz;
    r9.zw = float2(0,0);
    r6.x = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.x >= 0.984375);
    r7.z = 1.01587307 * r6.x;
    r6.x = r6.x * 64 + -63;
    r6.x = r6.z ? r6.x : r7.z;
    r6.x = max(9.99999994e-09, r6.x);
    r6.x = rcp(r6.x);
    r6.z = x2[0].x;
    r6.z = r4.w ? r6.x : r6.z;
    x2[0].x = r6.z;
    r6.x = 0.0419999994 + r6.x;
    r6.x = r6.w * r6.x;
    r6.x = cmp(1 < r6.x);
    r6.x = r6.x ? 1.000000 : 0;
    r6.x = r6.x * r5.w;
    r4.w = r4.w ? r6.x : r5.w;
    x0[0].x = r4.w;
    r5.w = x1[1].x;
    r6.x = x0[1].x;
    r6.y = r6.y * r6.y + -r5.w;
    r5.w = r6.x * r6.y + r5.w;
    x1[1].x = r5.w;
    r6.yzw = r5.xyz * r5.www + r11.xyz;
    r5.w = cmp(r2.z < r5.w);
    r6.yz = renderTargetSize.xy * r6.yz;
    r9.xy = (int2)r6.yz;
    r9.zw = float2(0,0);
    r6.y = floatZSampler.Load(r9.xyz).x;
    r6.z = cmp(r6.y >= 0.984375);
    r7.z = 1.01587307 * r6.y;
    r6.y = r6.y * 64 + -63;
    r6.y = r6.z ? r6.y : r7.z;
    r6.y = max(9.99999994e-09, r6.y);
    r6.y = rcp(r6.y);
    r6.z = x2[1].x;
    r6.z = r5.w ? r6.y : r6.z;
    x2[1].x = r6.z;
    r6.y = 0.0419999994 + r6.y;
    r6.y = r6.w * r6.y;
    r6.y = cmp(1 < r6.y);
    r6.y = r6.y ? 1.000000 : 0;
    r6.y = r6.x * r6.y;
    r5.w = r5.w ? r6.y : r6.x;
    x0[1].x = r5.w;
    r4.w = r5.w + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r6.xy = r2.xx * float2(0.5,0.5) + float2(7.33333349,8);
    r6.xy = float2(0.117647059,0.117647059) * r6.xy;
    r2.x = x1[0].x;
    r4.w = x0[0].x;
    r5.w = r6.x * r6.x + -r2.x;
    r2.x = r4.w * r5.w + r2.x;
    r6.xzw = r12.xyz * r2.xxx + r11.xyz;
    r2.x = cmp(r2.z < r2.x);
    r6.xz = renderTargetSize.xy * r6.xz;
    r9.xy = (int2)r6.xz;
    r9.zw = float2(0,0);
    r5.w = floatZSampler.Load(r9.xyz).x;
    r6.x = cmp(r5.w >= 0.984375);
    r6.z = 1.01587307 * r5.w;
    r5.w = r5.w * 64 + -63;
    r5.w = r6.x ? r5.w : r6.z;
    r5.w = max(9.99999994e-09, r5.w);
    r5.w = rcp(r5.w);
    r6.x = x2[0].x;
    r6.x = r2.x ? r5.w : r6.x;
    x2[0].x = r6.x;
    r5.w = 0.0419999994 + r5.w;
    r5.w = r6.w * r5.w;
    r5.w = cmp(1 < r5.w);
    r5.w = r5.w ? 1.000000 : 0;
    r5.w = r5.w * r4.w;
    r2.x = r2.x ? r5.w : r4.w;
    x0[0].x = r2.x;
    r2.x = x1[1].x;
    r4.w = x0[1].x;
    r5.w = r6.y * r6.y + -r2.x;
    r2.x = r4.w * r5.w + r2.x;
    r5.xyz = r5.xyz * r2.xxx + r11.xyz;
    r2.x = cmp(r2.z < r2.x);
    r5.xy = renderTargetSize.xy * r5.xy;
    r6.xy = (int2)r5.xy;
    r6.zw = float2(0,0);
    r2.z = floatZSampler.Load(r6.xyz).x;
    r5.x = cmp(r2.z >= 0.984375);
    r5.y = 1.01587307 * r2.z;
    r2.z = r2.z * 64 + -63;
    r2.z = r5.x ? r2.z : r5.y;
    r2.z = max(9.99999994e-09, r2.z);
    r2.z = rcp(r2.z);
    r5.x = x2[1].x;
    r5.x = r2.x ? r2.z : r5.x;
    x2[1].x = r5.x;
    r2.z = 0.0419999994 + r2.z;
    r2.z = r5.z * r2.z;
    r2.z = cmp(1 < r2.z);
    r2.z = r2.z ? 1.000000 : 0;
    r2.z = r4.w * r2.z;
    r2.x = r2.x ? r2.z : r4.w;
    x0[1].x = r2.x;
  }
  r2.x = x2[0].x;
  r2.x = r2.x + -r10.z;
  r2.x = cmp(2.4000001 < abs(r2.x));
  r2.z = x0[0].x;
  r2.z = -r2.z * 0.5 + 1;
  r2.x = r2.x ? 0.5 : r2.z;
  r2.z = x2[1].x;
  r2.z = r2.z + -r10.z;
  r2.z = cmp(2.4000001 < abs(r2.z));
  r4.w = x0[1].x;
  r4.w = 0.5 * r4.w;
  r2.z = r2.z ? -0.5 : -r4.w;
  r2.x = r2.x + r2.z;
  r2.x = saturate(1 + -r2.x);
  r2.z = r2.x * -2 + 3;
  r2.x = r2.x * r2.x;
  r2.x = r2.z * r2.x;
  r2.x = min(r39.w, r2.x);
  r2.x = r39.z * r2.x;
  r5.xyz = r2.xxx * r33.xyz;
  r6.xyz = r5.xyz * r35.xyz + r29.xyz;
  r9.xyz = r5.xyz * r36.xyz + r30.xyz;
  r10.xyz = r5.xyz * r37.xyz + r32.xyz;
  r5.xyz = r5.xyz * r38.xyz + r31.xyz;
  r2.x = -debugGlossOverride.w * r2.y + 1;
  r2.y = 5 * r2.x;
  r2.z = r2.x * 5 + -2.5;
  r2.z = saturate(0.400000006 * r2.z);
  r2.z = 100 * r2.z;
  r7.zw = -r2.xx * float2(10,5) + float2(6.85740995,7.08500004);
  r4.w = exp2(r7.z);
  r4.w = r7.x * r4.w;
  r4.w = 9.1368103 * r4.w;
  r5.w = r2.y * r2.x;
  r5.w = -r5.w * 2.0159049 + r7.w;
  r5.w = exp2(r5.w);
  r5.w = r7.x * r5.w;
  r5.w = 9.70808983 * r5.w;
  r4.w = max(r5.w, r4.w);
  r4.w = max(1.26815999, r4.w);
  r11.xy = float2(0,0);
  r12.w = 0;
  r14.yz = float2(0,1);
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.x = 1;
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r5.w = 0;
  r6.w = 0;
  while (true) {
    r7.z = cmp((uint)r6.w >= numRefProbes);
    if (r7.z != 0) break;
    r11.z = (uint)r6.w >> 5;
    r12.xyz = (int3)r11.xyz + (int3)r19.xyz;
    r7.z = visibleProbes.Load(r12.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r6.w, l(0), t15.wxyz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r6.w, l(16), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r6.w, l(32), t15.yxwz
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r6.w, l(48), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r6.w, l(64), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r6.w, l(80), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.zw, r6.w, l(96), t15.xxxy
  r11.z = samp0[]..swiz;
  r11.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r6.w, l(116), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r6.w, l(132), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r6.w, l(148), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r6.w, l(164), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r6.w, l(180), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r6.w, l(196), t15.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r6.w, l(212), t15.xyxx
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
    r12.xyz = v6.xyz + -r22.yzw;
    r7.w = dot(r12.xyz, r12.xyz);
    r7.w = sqrt(r7.w);
    r7.w = cmp(probeDebugRadius >= r7.w);
    r8.w = (int)r28.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(0), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(16), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r8.w, l(32), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r8.w, l(48), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r8.w, l(64), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r8.w, l(80), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
    r9.w = dot(r35.xyz, r12.xyz);
    r9.w = saturate(r9.w + r35.w);
    r10.w = dot(r36.xyz, r12.xyz);
    r10.w = saturate(r10.w + r36.w);
    r9.w = r10.w * r9.w;
    r10.w = dot(r37.xyz, r12.xyz);
    r10.w = saturate(r10.w + r37.w);
    r9.w = r10.w * r9.w;
    r10.w = dot(r38.xyz, r12.xyz);
    r10.w = saturate(r10.w + r38.w);
    r9.w = r10.w * r9.w;
    r10.w = dot(r39.xyz, r12.xyz);
    r10.w = saturate(r10.w + r39.w);
    r9.w = r10.w * r9.w;
    r10.w = dot(r40.xyz, r12.xyz);
    r10.w = saturate(r10.w + r40.w);
    r14.x = r10.w * r9.w;
    r9.w = (int)r11.z & 1;
    r14.xw = r9.ww ? r14.xy : r14.zx;
    r35.xy = r28.zw;
    r35.z = r29.z;
    r9.w = dot(r13.xyz, r35.xyz);
    r10.w = dot(r12.xyz, r35.xyz);
    r10.w = r10.w + -r29.w;
    r15.w = cmp(r10.w >= 0);
    r10.w = max(abs(r10.w), r2.z);
    r10.w = r15.w ? r10.w : -r10.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r10.w / r9.w;
    r9.w = min(131072, abs(r9.w));
    r29.z = r30.z;
    r10.w = dot(r13.xyz, r29.xyz);
    r15.w = dot(r12.xyz, r29.xyz);
    r15.w = r15.w + -r30.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r2.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r15.w / r10.w;
    r9.w = min(abs(r10.w), r9.w);
    r30.z = r31.z;
    r10.w = dot(r13.xyz, r30.xyz);
    r15.w = dot(r12.xyz, r30.xyz);
    r15.w = r15.w + -r31.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r2.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r15.w / r10.w;
    r9.w = min(abs(r10.w), r9.w);
    r31.z = r32.z;
    r10.w = dot(r13.xyz, r31.xyz);
    r15.w = dot(r12.xyz, r31.xyz);
    r15.w = r15.w + -r32.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r2.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r15.w / r10.w;
    r9.w = min(abs(r10.w), r9.w);
    r32.z = r33.x;
    r10.w = dot(r13.xyz, r32.xyz);
    r15.w = dot(r12.xyz, r32.xyz);
    r15.w = r15.w + -r33.y;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r2.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r15.w / r10.w;
    r9.w = min(abs(r10.w), r9.w);
    r34.zw = r33.zw;
    r10.w = dot(r13.zxy, r34.xzw);
    r15.w = dot(r12.zxy, r34.xzw);
    r15.w = r15.w + -r34.y;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r2.z);
    r15.w = r16.w ? r15.w : -r15.w;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r15.w / r10.w;
    r9.w = min(abs(r10.w), r9.w);
    r29.x = r25.w;
    r29.yz = r26.zw;
    r29.xyz = r29.xyz + r12.xyz;
    r29.xyz = r13.xyz * r9.www + r29.xyz;
    r10.w = dot(r29.xyz, r29.xyz);
    r10.w = sqrt(r10.w);
    r9.w = r9.w / r10.w;
    r9.w = r9.w + r9.w;
    r9.w = sqrt(r9.w);
    r9.w = r2.x * 5 + r9.w;
    r9.w = -0.844799995 + r9.w;
    r22.y = r23.z;
    r22.z = r24.x;
    r30.x = dot(r29.xyz, r22.xyz);
    r31.xy = r23.xw;
    r31.z = r24.w;
    r30.y = dot(r29.xyz, r31.xyz);
    r24.x = r23.y;
    r30.z = dot(r29.xyz, r24.xyz);
    if (6 == 0) r18.z = 0; else if (6+25 < 32) {     r18.z = (uint)r28.y << (32-(6 + 25)); r18.z = (uint)r18.z >> (32-6);    } else r18.z = (uint)r28.y >> 25;
    if (9 == 0) r18.w = 0; else if (9+16 < 32) {     r18.w = (uint)r28.y << (32-(9 + 16)); r18.w = (uint)r18.w >> (32-9);    } else r18.w = (uint)r28.y >> 16;
    r30.w = (uint)r18.w;
    r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r9.w).xyz;
    r28.yzw = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r9.w = (int)r28.z | (int)r28.y;
    r9.w = (int)r28.w | (int)r9.w;
    r23.xyz = r9.www ? float3(1,1,0) : r23.xyz;
    r29.x = dot(r12.xyz, r22.xyz);
    r29.y = dot(r12.xyz, r31.xyz);
    r29.z = dot(r12.xyz, r24.xyz);
    r25.xyz = saturate(r29.xyz * r25.xyz + float3(0.5,0.5,0.5));
    r26.z = r27.x;
    r25.xyz = r25.xyz * r26.xyz + r27.yzw;
    r30.x = dot(r3.xyz, r22.xyz);
    r30.y = dot(r3.xyz, r31.xyz);
    r30.z = dot(r3.xyz, r24.xyz);
    r22.xyz = cmp(float3(0,0,0) < r30.xyz);
    r15.z = r22.x ? 0 : 0.5;
    r24.xyz = r25.xyz + r15.xyz;
    r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r16.z = r22.y ? 0 : 0.5;
    r22.xyw = r25.xyz + r16.xyz;
    r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
    r17.z = r22.z ? 0 : 0.5;
    r25.xyz = r25.xyz + r17.xyz;
    r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r26.xyz = r30.xyz * r30.xyz;
    r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
    r28.yzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r9.w = (int)r28.z | (int)r28.y;
    r9.w = (int)r28.w | (int)r9.w;
    r27.xyz = r9.www ? float3(1,1,0) : r27.xyz;
    r29.xyzw = r20.xyzw;
    r28.yzw = r21.yzw;
    r9.w = r5.w;
    r10.w = r7.z;
    while (true) {
      if (r10.w == 0) break;
      r15.z = firstbitlow((uint)r10.w);
      r15.z = 1 << (int)r15.z;
      r15.w = (int)r10.w & (int)r15.z;
      if (r15.w != 0) {
        r15.z = ~(int)r15.z;
        r10.w = (int)r10.w & (int)r15.z;
        if (r7.w != 0) {
          r15.z = r11.z;
          r30.xy = r14.xw;
          r15.w = 1;
          while (true) {
            r16.z = cmp((int)r15.w >= (int)r18.z);
            if (r16.z != 0) break;
            r16.z = (int)r8.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.z, l(0), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(16), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(32), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(48), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(64), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r16.z, l(80), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
            r16.z = dot(r31.xyz, r12.xyz);
            r16.z = saturate(r16.z + r31.w);
            r16.z = r30.x * r16.z;
            r16.w = dot(r32.xyz, r12.xyz);
            r16.w = saturate(r16.w + r32.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r33.xyz, r12.xyz);
            r16.w = saturate(r16.w + r33.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r34.xyz, r12.xyz);
            r16.w = saturate(r16.w + r34.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r35.xyz, r12.xyz);
            r16.w = saturate(r16.w + r35.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r36.xyz, r12.xyz);
            r16.w = saturate(r16.w + r36.w);
            r30.x = r16.z * r16.w;
            r17.z = (uint)r15.z >> 2;
            if (1 == 0) r17.w = 0; else if (1+2 < 32) {             r17.w = (uint)r15.z << (32-(1 + 2)); r17.w = (uint)r17.w >> (32-1);            } else r17.w = (uint)r15.z >> 2;
            r18.w = (int)r17.z & 2;
            r19.w = max(r30.y, r30.x);
            r16.z = -r16.z * r16.w + 1;
            r16.z = r30.y * r16.z;
            r18.y = r18.w ? r16.z : r19.w;
            r30.xy = r17.ww ? r30.xy : r18.xy;
            r15.w = (int)r15.w + 1;
            r15.z = r17.z;
          }
          r30.y = saturate(r30.y);
          r15.z = r30.y * r11.w;
          r15.w = cmp(0 < r15.z);
          if (r15.w != 0) {
            r31.z = r30.y * r11.w + r28.w;
            r15.z = r15.z * r28.x;
            r30.xzw = r26.xyz * r15.zzz;
            r32.xyz = r30.zzz * r22.xyw;
            r32.xyz = r24.xyz * r30.xxx + r32.xyz;
            r30.xzw = r25.xyz * r30.www + r32.xyz;
            r32.xyz = r30.xzw * r27.xyz;
            r15.w = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r32.xyz = r30.xzw * r27.xyz + r29.xyz;
            r16.z = r15.w * r4.w;
            r30.xzw = r23.xyz * r15.zzz;
            r15.z = dot(r30.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r15.z = r4.w * r15.w + r15.z;
            r15.z = r16.z / r15.z;
            r33.x = r29.w;
            r33.yz = r28.yz;
            r31.xyw = r30.zwx * r15.zzz + r33.yzx;
            r32.w = r31.w;
          } else {
            r32.xyzw = r29.xyzw;
            r31.xyz = r28.yzw;
          }
          r9.w = -1;
          r29.xyzw = r32.xyzw;
          r28.yzw = r31.xyz;
          break;
        }
      }
    }
    if (r9.w != 0) {
      r20.xyzw = r29.xyzw;
      r21.yzw = r28.yzw;
      r5.w = -1;
      break;
    }
    r6.w = (int)r6.w + 32;
    r20.xyzw = r29.xyzw;
    r21.yzw = r28.yzw;
    r5.w = r9.w;
  }
  if (r5.w == 0) {
    r5.w = numRefProbes + -numOverrideProbes;
    r6.w = (int)r5.w & -32;
    r7.z = (int)r5.w + (int)-r6.w;
    r7.w = numRefProbes & -32;
    r8.w = (int)-r7.w + numRefProbes;
    r11.xy = float2(0,0);
    r12.w = 0;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r16.x = 1;
    r17.xy = float2(0,0);
    r18.xy = float2(0,0);
    r22.xyzw = r20.xyzw;
    r23.yzw = r21.yzw;
    r9.w = r6.w;
    while (true) {
      r10.w = cmp((uint)r9.w >= numRefProbes);
      if (r10.w != 0) break;
      r11.z = (uint)r9.w >> 5;
      r12.xyz = (int3)r11.xyz + (int3)r19.xyz;
      r10.w = visibleProbes.Load(r12.xyzw).x;
      r11.z = cmp((int)r6.w == (int)r9.w);
      bitmask.w = ((~(-1 << r7.z)) << 0) & 0xffffffff;  r11.w = (((uint)0 << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
      r10.w = r11.z ? r11.w : r10.w;
      r11.z = cmp((int)r7.w == (int)r9.w);
      if (r8.w == 0) r11.w = 0; else if (r8.w+0 < 32) {       r11.w = (uint)r10.w << (32-(r8.w + 0)); r11.w = (uint)r11.w >> (32-r8.w);      } else r11.w = (uint)r10.w >> 0;
      r10.w = r11.z ? r11.w : r10.w;
      r11.z = (int)r9.w + numLights;
      r24.xyzw = r22.xyzw;
      r25.xyz = r23.yzw;
      r11.w = r10.w;
      while (true) {
        if (r11.w == 0) break;
        r12.x = firstbitlow((uint)r11.w);
        r12.y = 1 << (int)r12.x;
        r12.z = (int)r11.w & (int)r12.y;
        if (r12.z != 0) {
          r11.w = (int)r11.w ^ (int)r12.y;
          r12.y = (int)r11.z + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r12.y, l(0), t11.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xy, r12.y, l(16), t11.xyxx
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
          r26.xyz = -v6.xyz + r26.xyz;
          r27.z = r26.w;
          r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
          r12.y = r26.y ? r26.x : 0;
          r12.y = r26.z ? r12.y : 0;
          if (r12.y != 0) {
            r12.x = (int)r9.w + (int)r12.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.x, l(0), t15.wxyz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.yz, r12.x, l(96), t15.xxyx
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.x, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r28.xyz = v6.xyz + -r26.yzw;
            r14.w = (int)r27.w & 0x0000ffff;
            if (6 == 0) r15.w = 0; else if (6+25 < 32) {             r15.w = (uint)r27.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);            } else r15.w = (uint)r27.w >> 25;
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
            r16.z = dot(r29.xyz, r28.xyz);
            r16.z = saturate(r16.z + r29.w);
            r16.w = dot(r30.xyz, r28.xyz);
            r16.w = saturate(r16.w + r30.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r31.xyz, r28.xyz);
            r16.w = saturate(r16.w + r31.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r32.xyz, r28.xyz);
            r16.w = saturate(r16.w + r32.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r33.xyz, r28.xyz);
            r16.w = saturate(r16.w + r33.w);
            r16.z = r16.z * r16.w;
            r16.w = dot(r34.xyz, r28.xyz);
            r16.w = saturate(r16.w + r34.w);
            r14.x = r16.z * r16.w;
            r16.z = (int)r12.y & 1;
            r16.zw = r16.zz ? r14.xy : r14.zx;
            r14.x = r12.y;
            r29.xy = r16.zw;
            r17.w = 1;
            while (true) {
              r18.w = cmp((int)r17.w >= (int)r15.w);
              if (r18.w != 0) break;
              r18.w = (int)r14.w + (int)r17.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r18.w = dot(r30.xyz, r28.xyz);
              r18.w = saturate(r18.w + r30.w);
              r18.w = r29.x * r18.w;
              r19.w = dot(r31.xyz, r28.xyz);
              r19.w = saturate(r19.w + r31.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r32.xyz, r28.xyz);
              r19.w = saturate(r19.w + r32.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r33.xyz, r28.xyz);
              r19.w = saturate(r19.w + r33.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r34.xyz, r28.xyz);
              r19.w = saturate(r19.w + r34.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r35.xyz, r28.xyz);
              r19.w = saturate(r19.w + r35.w);
              r29.x = r19.w * r18.w;
              r26.w = (uint)r14.x >> 2;
              if (1 == 0) r28.w = 0; else if (1+2 < 32) {               r28.w = (uint)r14.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);              } else r28.w = (uint)r14.x >> 2;
              r29.z = (int)r26.w & 2;
              r29.w = max(r29.y, r29.x);
              r18.w = -r18.w * r19.w + 1;
              r18.w = r29.y * r18.w;
              r16.y = r29.z ? r18.w : r29.w;
              r29.xy = r28.ww ? r29.xy : r16.xy;
              r17.w = (int)r17.w + 1;
              r14.x = r26.w;
            }
            r29.y = saturate(r29.y);
            r12.y = r29.y * r12.z;
            r14.x = cmp(0 < r12.y);
            if (r14.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.x, l(16), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.x, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.x, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.x, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.x, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.x, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r12.x, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r12.x, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r12.x, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r12.x, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r12.x, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r25.z = r29.y * r12.z + r25.z;
              r12.x = r12.y * r27.z;
              r27.z = r35.z;
              r12.y = dot(r13.xyz, r27.xyz);
              r12.z = dot(r28.xyz, r27.xyz);
              r12.z = r12.z + -r35.w;
              r14.x = cmp(r12.z >= 0);
              r12.z = max(abs(r12.z), r2.z);
              r12.z = r14.x ? r12.z : -r12.z;
              r12.y = max(1.00000001e-07, -r12.y);
              r12.y = r12.z / r12.y;
              r12.y = min(131072, abs(r12.y));
              r35.z = r36.z;
              r12.z = dot(r13.xyz, r35.xyz);
              r14.x = dot(r28.xyz, r35.xyz);
              r14.x = r14.x + -r36.w;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r2.z);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.z = max(1.00000001e-07, -r12.z);
              r12.z = r14.x / r12.z;
              r12.y = min(r12.y, abs(r12.z));
              r36.z = r37.z;
              r12.z = dot(r13.xyz, r36.xyz);
              r14.x = dot(r28.xyz, r36.xyz);
              r14.x = r14.x + -r37.w;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r2.z);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.z = max(1.00000001e-07, -r12.z);
              r12.z = r14.x / r12.z;
              r12.y = min(r12.y, abs(r12.z));
              r37.z = r38.z;
              r12.z = dot(r13.xyz, r37.xyz);
              r14.x = dot(r28.xyz, r37.xyz);
              r14.x = r14.x + -r38.w;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r2.z);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.z = max(1.00000001e-07, -r12.z);
              r12.z = r14.x / r12.z;
              r12.y = min(r12.y, abs(r12.z));
              r38.z = r39.x;
              r12.z = dot(r13.xyz, r38.xyz);
              r14.x = dot(r28.xyz, r38.xyz);
              r14.x = r14.x + -r39.y;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r2.z);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.z = max(1.00000001e-07, -r12.z);
              r12.z = r14.x / r12.z;
              r12.y = min(r12.y, abs(r12.z));
              r40.zw = r39.zw;
              r12.z = dot(r13.zxy, r40.xzw);
              r14.x = dot(r28.zxy, r40.xzw);
              r14.x = r14.x + -r40.y;
              r14.w = cmp(r14.x >= 0);
              r14.x = max(abs(r14.x), r2.z);
              r14.x = r14.w ? r14.x : -r14.x;
              r12.z = max(1.00000001e-07, -r12.z);
              r12.z = r14.x / r12.z;
              r12.y = min(r12.y, abs(r12.z));
              r27.x = r32.w;
              r27.yz = r33.zw;
              r16.yzw = r27.xyz + r28.xyz;
              r16.yzw = r13.xyz * r12.yyy + r16.yzw;
              r12.z = dot(r16.yzw, r16.yzw);
              r12.z = sqrt(r12.z);
              r12.y = r12.y / r12.z;
              r12.y = r12.y + r12.y;
              r12.y = sqrt(r12.y);
              r12.y = r2.x * 5 + r12.y;
              r12.y = -0.844799995 + r12.y;
              r26.y = r30.z;
              r26.z = r31.x;
              r35.x = dot(r16.yzw, r26.xyz);
              r27.xy = r30.xw;
              r27.z = r31.w;
              r35.y = dot(r16.yzw, r27.xyz);
              r31.x = r30.y;
              r35.z = dot(r16.yzw, r31.xyz);
              if (9 == 0) r12.z = 0; else if (9+16 < 32) {               r12.z = (uint)r27.w << (32-(9 + 16)); r12.z = (uint)r12.z >> (32-9);              } else r12.z = (uint)r27.w >> 16;
              r35.w = (uint)r12.z;
              r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r12.y).xyz;
              r29.xzw = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
              r29.xzw = cmp((int3)r29.xzw == int3(2139095040,2139095040,2139095040));
              r12.y = (int)r29.z | (int)r29.x;
              r12.y = (int)r29.w | (int)r12.y;
              r16.yzw = r12.yyy ? float3(1,1,0) : r16.yzw;
              r30.x = dot(r28.xyz, r26.xyz);
              r30.y = dot(r28.xyz, r27.xyz);
              r30.z = dot(r28.xyz, r31.xyz);
              r28.xyz = saturate(r30.xyz * r32.xyz + float3(0.5,0.5,0.5));
              r33.z = r34.x;
              r28.xyz = r28.xyz * r33.xyz + r34.yzw;
              r35.x = dot(r3.xyz, r26.xyz);
              r35.y = dot(r3.xyz, r27.xyz);
              r35.z = dot(r3.xyz, r31.xyz);
              r26.xyz = cmp(float3(0,0,0) < r35.xyz);
              r15.z = r26.x ? 0 : 0.5;
              r27.xyz = r28.xyz + r15.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r29.xzw = r35.xyz * r35.xyz;
              r29.xzw = r29.xzw * r12.xxx;
              r17.z = r26.y ? 0 : 0.5;
              r26.xyw = r28.xyz + r17.xyz;
              r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
              r26.xyw = r26.xyw * r29.zzz;
              r26.xyw = r27.xyz * r29.xxx + r26.xyw;
              r18.z = r26.z ? 0 : 0.5;
              r27.xyz = r28.xyz + r18.xyz;
              r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r26.xyz = r27.xyz * r29.www + r26.xyw;
              r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
              r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
              r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
              r12.y = (int)r28.y | (int)r28.x;
              r12.y = (int)r28.z | (int)r12.y;
              r27.xyz = r12.yyy ? float3(1,1,0) : r27.xyz;
              r28.xyz = r27.xyz * r26.xyz;
              r12.y = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.xyz = r26.xyz * r27.xyz + r24.xyz;
              r12.z = r12.y * r4.w;
              r16.yzw = r16.yzw * r12.xxx;
              r12.x = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r12.x = r4.w * r12.y + r12.x;
              r12.x = r12.z / r12.x;
              r26.x = r24.w;
              r26.yz = r25.xy;
              r25.xyw = r16.zwy * r12.xxx + r26.yzx;
              r24.w = r25.w;
            }
          }
        }
      }
      r22.xyzw = r24.xyzw;
      r23.yzw = r25.xyz;
      r9.w = (int)r9.w + 32;
    }
    r7.w = cmp(r23.w < 1);
    if (r7.w != 0) {
      r11.xy = float2(0,0);
      r12.w = 0;
      r14.yz = float2(0,1);
      r15.xy = float2(0,0);
      r16.x = 1;
      r17.xy = float2(0,0);
      r18.xy = float2(0,0);
      r24.x = r22.w;
      r24.yzw = r23.yzw;
      r25.xyz = r22.xyz;
      r7.w = r23.w;
      r8.w = 0;
      while (true) {
        r9.w = cmp((uint)r8.w >= (uint)r5.w);
        if (r9.w != 0) break;
        r11.z = (uint)r8.w >> 5;
        r12.xyz = (int3)r11.xyz + (int3)r19.xyz;
        r9.w = visibleProbes.Load(r12.xyzw).x;
        r10.w = cmp((int)r6.w == (int)r8.w);
        if (r7.z == 0) r11.z = 0; else if (r7.z+0 < 32) {         r11.z = (uint)r9.w << (32-(r7.z + 0)); r11.z = (uint)r11.z >> (32-r7.z);        } else r11.z = (uint)r9.w >> 0;
        r9.w = r10.w ? r11.z : r9.w;
        r10.w = (int)r8.w + numLights;
        r26.xyzw = r24.xyzw;
        r12.xyz = r25.xyz;
        r11.z = r7.w;
        r11.w = r9.w;
        while (true) {
          if (r11.w == 0) break;
          r14.w = firstbitlow((uint)r11.w);
          r15.w = 1 << (int)r14.w;
          r16.z = (int)r11.w & (int)r15.w;
          if (r16.z != 0) {
            r11.w = (int)r11.w ^ (int)r15.w;
            r15.w = (int)r10.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(0), t11.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xy, r15.w, l(16), t11.xyxx
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
            r27.xyz = -v6.xyz + r27.xyz;
            r28.z = r27.w;
            r27.xyz = cmp(abs(r27.xyz) < r28.zxy);
            r15.w = r27.y ? r27.x : 0;
            r15.w = r27.z ? r15.w : 0;
            if (r15.w != 0) {
              r14.w = (int)r8.w + (int)r14.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(0), t15.wxyz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.zw, r14.w, l(96), t15.xxxy
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(116), t15.zwxy
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
              r29.xyz = v6.xyz + -r27.yzw;
              r15.w = (int)r28.w & 0x0000ffff;
              if (6 == 0) r17.w = 0; else if (6+25 < 32) {               r17.w = (uint)r28.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);              } else r17.w = (uint)r28.w >> 25;
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
              r18.w = dot(r30.xyz, r29.xyz);
              r18.w = saturate(r18.w + r30.w);
              r19.w = dot(r31.xyz, r29.xyz);
              r19.w = saturate(r19.w + r31.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r32.xyz, r29.xyz);
              r19.w = saturate(r19.w + r32.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r33.xyz, r29.xyz);
              r19.w = saturate(r19.w + r33.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r34.xyz, r29.xyz);
              r19.w = saturate(r19.w + r34.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r35.xyz, r29.xyz);
              r19.w = saturate(r19.w + r35.w);
              r14.x = r19.w * r18.w;
              r18.w = (int)r16.z & 1;
              r30.xy = r18.ww ? r14.xy : r14.zx;
              r14.x = r16.z;
              r31.xy = r30.xy;
              r18.w = 1;
              while (true) {
                r19.w = cmp((int)r18.w >= (int)r17.w);
                if (r19.w != 0) break;
                r19.w = (int)r15.w + (int)r18.w;
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
                r19.w = dot(r32.xyz, r29.xyz);
                r19.w = saturate(r19.w + r32.w);
                r19.w = r31.x * r19.w;
                r21.w = dot(r33.xyz, r29.xyz);
                r21.w = saturate(r21.w + r33.w);
                r19.w = r21.w * r19.w;
                r21.w = dot(r34.xyz, r29.xyz);
                r21.w = saturate(r21.w + r34.w);
                r19.w = r21.w * r19.w;
                r21.w = dot(r35.xyz, r29.xyz);
                r21.w = saturate(r21.w + r35.w);
                r19.w = r21.w * r19.w;
                r21.w = dot(r36.xyz, r29.xyz);
                r21.w = saturate(r21.w + r36.w);
                r19.w = r21.w * r19.w;
                r21.w = dot(r37.xyz, r29.xyz);
                r21.w = saturate(r21.w + r37.w);
                r31.x = r21.w * r19.w;
                r25.w = (uint)r14.x >> 2;
                if (1 == 0) r27.w = 0; else if (1+2 < 32) {                 r27.w = (uint)r14.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);                } else r27.w = (uint)r14.x >> 2;
                r29.w = (int)r25.w & 2;
                r30.z = max(r31.y, r31.x);
                r19.w = -r19.w * r21.w + 1;
                r19.w = r31.y * r19.w;
                r16.y = r29.w ? r19.w : r30.z;
                r31.xy = r27.ww ? r31.xy : r16.xy;
                r18.w = (int)r18.w + 1;
                r14.x = r25.w;
              }
              r14.x = saturate(r31.y + -r11.z);
              r15.w = r14.x * r16.w;
              r16.y = cmp(0 < r15.w);
              if (r16.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(16), t15.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(32), t15.yxwz
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(48), t15.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(64), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(80), t15.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(132), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(148), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(164), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(180), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(196), t15.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r14.w, l(212), t15.xyxx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
                r26.w = r14.x * r16.w + r26.w;
                r14.x = r15.w * r28.z;
                r28.z = r36.z;
                r14.w = dot(r13.xyz, r28.xyz);
                r15.w = dot(r29.xyz, r28.xyz);
                r15.w = r15.w + -r36.w;
                r16.y = cmp(r15.w >= 0);
                r15.w = max(abs(r15.w), r2.z);
                r15.w = r16.y ? r15.w : -r15.w;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.w / r14.w;
                r14.w = min(131072, abs(r14.w));
                r36.z = r37.z;
                r15.w = dot(r13.xyz, r36.xyz);
                r16.y = dot(r29.xyz, r36.xyz);
                r16.y = r16.y + -r37.w;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r2.z);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r37.z = r38.z;
                r15.w = dot(r13.xyz, r37.xyz);
                r16.y = dot(r29.xyz, r37.xyz);
                r16.y = r16.y + -r38.w;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r2.z);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r38.z = r39.z;
                r15.w = dot(r13.xyz, r38.xyz);
                r16.y = dot(r29.xyz, r38.xyz);
                r16.y = r16.y + -r39.w;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r2.z);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r39.z = r40.x;
                r15.w = dot(r13.xyz, r39.xyz);
                r16.y = dot(r29.xyz, r39.xyz);
                r16.y = r16.y + -r40.y;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r2.z);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r41.zw = r40.zw;
                r15.w = dot(r13.zxy, r41.xzw);
                r16.y = dot(r29.zxy, r41.xzw);
                r16.y = r16.y + -r41.y;
                r16.z = cmp(r16.y >= 0);
                r16.y = max(abs(r16.y), r2.z);
                r16.y = r16.z ? r16.y : -r16.y;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.y / r15.w;
                r14.w = min(abs(r15.w), r14.w);
                r28.x = r33.w;
                r28.yz = r34.zw;
                r16.yzw = r28.xyz + r29.xyz;
                r16.yzw = r13.xyz * r14.www + r16.yzw;
                r15.w = dot(r16.yzw, r16.yzw);
                r15.w = sqrt(r15.w);
                r14.w = r14.w / r15.w;
                r14.w = r14.w + r14.w;
                r14.w = sqrt(r14.w);
                r14.w = r2.x * 5 + r14.w;
                r14.w = -0.844799995 + r14.w;
                r27.y = r30.z;
                r27.z = r32.x;
                r36.x = dot(r16.yzw, r27.xyz);
                r28.xy = r30.xw;
                r28.z = r32.w;
                r36.y = dot(r16.yzw, r28.xyz);
                r32.x = r30.y;
                r36.z = dot(r16.yzw, r32.xyz);
                if (9 == 0) r15.w = 0; else if (9+16 < 32) {                 r15.w = (uint)r28.w << (32-(9 + 16)); r15.w = (uint)r15.w >> (32-9);                } else r15.w = (uint)r28.w >> 16;
                r36.w = (uint)r15.w;
                r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r14.w).xyz;
                r30.xyz = (int3)r16.yzw & int3(-2147483648,-2147483648,-2147483648);
                r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
                r14.w = (int)r30.y | (int)r30.x;
                r14.w = (int)r30.z | (int)r14.w;
                r16.yzw = r14.www ? float3(1,1,0) : r16.yzw;
                r30.x = dot(r29.xyz, r27.xyz);
                r30.y = dot(r29.xyz, r28.xyz);
                r30.z = dot(r29.xyz, r32.xyz);
                r29.xyz = saturate(r30.xyz * r33.xyz + float3(0.5,0.5,0.5));
                r34.z = r35.x;
                r29.xyz = r29.xyz * r34.xyz + r35.yzw;
                r36.x = dot(r3.xyz, r27.xyz);
                r36.y = dot(r3.xyz, r28.xyz);
                r36.z = dot(r3.xyz, r32.xyz);
                r27.xyz = cmp(float3(0,0,0) < r36.xyz);
                r15.z = r27.x ? 0 : 0.5;
                r28.xyz = r29.xyz + r15.xyz;
                r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r30.xyz = r36.xyz * r36.xyz;
                r30.xyz = r30.xyz * r14.xxx;
                r17.z = r27.y ? 0 : 0.5;
                r27.xyw = r29.xyz + r17.xyz;
                r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
                r27.xyw = r27.xyw * r30.yyy;
                r27.xyw = r28.xyz * r30.xxx + r27.xyw;
                r18.z = r27.z ? 0 : 0.5;
                r28.xyz = r29.xyz + r18.xyz;
                r28.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r27.xyz = r28.xyz * r30.zzz + r27.xyw;
                r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
                r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r14.w = (int)r29.y | (int)r29.x;
                r14.w = (int)r29.z | (int)r14.w;
                r28.xyz = r14.www ? float3(1,1,0) : r28.xyz;
                r29.xyz = r28.xyz * r27.xyz;
                r14.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r12.xyz = r27.xyz * r28.xyz + r12.xyz;
                r15.z = r14.w * r4.w;
                r16.yzw = r16.yzw * r14.xxx;
                r14.x = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r14.x = r4.w * r14.w + r14.x;
                r14.x = r15.z / r14.x;
                r26.xyz = r16.yzw * r14.xxx + r26.xyz;
              }
            }
          }
        }
        r24.xyzw = r26.xyzw;
        r25.xyz = r12.xyz;
        r8.w = (int)r8.w + 32;
      }
      r23.xyzw = r24.zxyw;
      r22.xyz = r25.xyz;
      r23.xyzw = r23.yzxw;
    } else {
      r23.x = r22.w;
    }
    r2.x = max(1, r23.w);
    r2.x = rcp(r2.x);
    r23.w = saturate(r23.w);
    r20.xyz = r22.xyz * r2.xxx;
    r21.xyz = r23.xyz * r2.xxx;
    r2.z = cmp(r23.w < 0.99000001);
    if (r2.z != 0) {
      r2.z = 1 + -r23.w;
      r4.w = sunConstants.globalProbeExposure * r2.z;
      r11.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r12.x = globalProbeConstants.data[0].w * r11.x;
      r12.yz = globalProbeConstants.data[1].xy * r11.yz;
      r11.xyz = saturate(float3(0.5,0.5,0.5) + r12.xyz);
      r12.xy = globalProbeConstants.data[1].zw * r11.xy;
      r12.z = globalProbeConstants.data[2].x * r11.z;
      r11.xyz = globalProbeConstants.data[2].yzw + r12.xyz;
      r12.xyz = cmp(float3(0,0,0) < r3.xyz);
      r12.xyz = r12.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r12.w = 0;
      r14.xyz = r12.wwx + r11.xyz;
      r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r15.xyz = r3.xyz * r3.xyz;
      r15.xyz = r15.xyz * r4.www;
      r16.xyz = r12.wwy + r11.xyz;
      r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r16.xyz = r16.xyz * r15.yyy;
      r14.xyz = r14.xyz * r15.xxx + r16.xyz;
      r11.xyz = r12.wwz + r11.xyz;
      r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r11.xyz = r11.xyz * r15.zzz + r14.xyz;
      r3.w = 0;
      r3.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
      r3.xyz = r11.xyz * r3.xyz;
      r3.w = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r20.xyz = r22.xyz * r2.xxx + r3.xyz;
      r13.w = 0;
      r3.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r2.y).xyz;
      r2.x = sunConstants.globalProbeExposure * r2.z + -r3.w;
      r2.x = r7.y * r2.x + r3.w;
      r21.xyz = r3.xyz * r2.xxx + r21.xyz;
    }
  } else {
    r21.x = r20.w;
  }
  r2.xyz = r20.xyz * r1.www + r6.xyz;
  r3.xyz = r20.xyz * r1.www + r9.xyz;
  r6.xy = r7.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r6.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r6.xy, 0).xy;
  r7.xyz = r21.xyz * r1.www;
  r5.xyz = r7.xyz * r6.xxx + r5.xyz;
  r6.xyz = r7.xyz * r6.yyy + r10.xyz;
  r1.w = dot(r4.xyz, r8.xyz);
  r3.w = 1 + -abs(r1.w);
  r3.w = r3.w * r3.w;
  r3.w = r3.w * 0.600000024 + 0.400000006;
  r3.w = min(1, r3.w);
  r4.xyz = transColorTint.xyz * r3.www;
  r7.xyz = saturate(r1.xyz * float3(0.0199999996,0.0199999996,0.0199999996) + float3(0.0399999991,0.0399999991,0.0399999991));
  r8.xyz = specColorTint.xyz * r7.xyz;
  r4.xyz = r4.xyz * r1.xyz;
  r3.xyz = r4.xyz * r3.xyz;
  r1.xyz = r2.xyz * r1.xyz + r3.xyz;
  r2.xyz = -r7.xyz * specColorTint.xyz + float3(1,1,1);
  r2.xyz = r5.xyz * r2.xyz;
  r2.xyz = r6.xyz * r8.xyz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  if (useAlphaControls != 0) {
    r2.xyz = cmp(falloffBegin == float3(0,0,0));
    r2.x = r2.y ? r2.x : 0;
    r3.xy = float2(0.0174532924,0.0174532924) * falloffBegin;
    r3.xy = cos(r3.xy);
    r3.yz = r3.xy * r3.xy;
    r2.y = r3.x * r3.x + -r3.z;
    r4.x = 1 / r2.y;
    r4.y = -r3.y * r4.x + 1;
    r2.xy = r2.xx ? float2(0,1) : r4.xy;
    r1.w = abs(r1.w) * abs(r1.w);
    r1.w = saturate(r1.w * r2.x + r2.y);
    r1.w = r1.w * r0.w;
    r3.xy = (int2)v0.xy;
    r3.zw = float2(0,0);
    r2.x = floatZSampler.Load(r3.xyz).x;
    r2.y = cmp(r2.x >= 0.984375);
    r3.x = 1.01587307 * r2.x;
    r2.x = r2.x * 64 + -63;
    r2.x = r2.y ? r2.x : r3.x;
    r2.x = max(9.99999994e-09, r2.x);
    r2.x = rcp(r2.x);
    r2.y = 1 / zFeatherDistance;
    r2.y = r2.z ? 60000 : r2.y;
    r2.x = r2.x + -r2.w;
    r2.x = saturate(r2.x * r2.y);
    r0.w = r2.x * r1.w;
  }
  r1.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.w != 0) {
    r1.w = dot(v6.xyz, v6.xyz);
    r2.x = rsqrt(r1.w);
    r2.xyz = v6.xyz * r2.xxx;
    r1.w = sqrt(r1.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r1.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r2.w = r1.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r1.w = -fogConstants.atmospherehazebasedist + r1.w;
    r1.w = saturate(fogConstants.atmospherehazefadedist * r1.w);
    r1.w = r2.y * r1.w;
    r2.x = saturate(r2.x);
    r2.x = r2.x * r2.x + 1;
    r2.x = r2.x * 0.0596831031 + -1;
    r2.x = fogConstants.atmospheresunstrength * r2.x + 1;
    r2.yzw = fogConstants.atmosphereMieDensity.xyz * r1.www;
    r2.xyz = r2.xxx * fogConstants.atmosphereRayleighDensity.xyz + r2.yzw;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r1.xyz * r3.xyz + r2.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v6.z;
    r2.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r3.x = cmp(abs(r1.w) < 9.99999975e-05);
    r3.y = min(64, r2.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r3.w ? r3.y : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r1.w = r3.x ? 1 : r1.w;
    r1.w = r2.w / r1.w;
    r1.w = r3.x ? r3.z : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r2.w = dot(v6.xyz, v6.xyz);
    r3.x = sqrt(r2.w);
    r1.w = r1.w * r3.x + fogConstants.expAdd;
    r1.w = exp2(r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v6.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r1.w = r3.w * r1.w;
    r3.xyz = r3.xyz + -r1.xyz;
    r2.xyz = r1.www * r3.xyz + r1.xyz;
  }
  r1.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r2.xyz ? r1.xyz : 0;
  r1.xyz = min(float3(65024,65024,64512), r1.xyz);
  r2.xyz = max(float3(0,0,0), r1.xyz);
  r0.xyz = r2.xyz * r0.www;
  r1.w = (int)r0.w & 0x7f800000;
  r1.w = cmp((int)r1.w == 0x7f800000);
  r3.xyzw = cmp(r0.xyzw == float4(0,0,0,0));
  r3.xy = r3.zw ? r3.xy : 0;
  r2.w = r3.y ? r3.x : 0;
  r1.w = (int)r1.w | (int)r2.w;
  if (r1.w == 0) {
    r3.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r3.z, u6, r3.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r1.w = cmp((uint)r3.z < oitMaxEntries);
    if (r1.w != 0) {
      r1.w = max(r0.y, r0.z);
      r1.w = max(r1.w, r0.x);
      r1.w = abs(r1.w);
      r1.w = (int)r1.w & 0x7f800000;
      r1.w = (int)r1.w + 0x00800000;
      r2.xyz = r2.xyz * r0.www + r1.www;
      if (8 == 0) r2.x = 0; else if (8+15 < 32) {       r2.x = (uint)r2.x << (32-(8 + 15)); r2.x = (uint)r2.x >> (32-8);      } else r2.x = (uint)r2.x >> 15;
      r2.yz = (uint2)r2.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r2.y = (((uint)r2.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r2.z = (((uint)r2.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r2.x = (int)r2.y + (int)r2.x;
      r2.x = (int)r2.z + (int)r2.x;
      r1.w = (uint)r1.w << 1;
      r2.xzw = (int3)r1.www + (int3)r2.xxx;
      r1.w = saturate(r0.w);
      r1.w = 2046 * r1.w;
      r1.w = (uint)r1.w;
      r3.w = (uint)v0.z << 2;
      r1.w = (int)r1.w & 2046;
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.y = (((uint)r1.w << 0) & bitmask.y) | ((uint)r3.w & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r3.xyzz, r2.xyzw
      r1.w = -1;
    } else {
      r1.w = 0;
    }
  } else {
    r1.w = -1;
  }
  r0.xyz = r1.xyz * r0.www;
  o0.xyzw = r1.wwww ? float4(0,0,0,0) : r0.xyzw;
  return;
}