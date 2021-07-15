// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:36:55 2021

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65,r66;
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
  r2.x = r0.y * r0.z;
  r0.y = r0.y * r0.z + glossRange.x;
  r0.y = saturate(0.0588235296 * r0.y);
  r2.x = r2.x * 0.5 + glossRange.x;
  r2.x = saturate(0.0588235296 * r2.x);
  r2.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.yzw = float3(-0.5,-0.5,-0) + r2.yzw;
  r2.yzw = baseNormalHeight * r2.yzw + float3(0.5,0.5,0);
  r2.yz = r2.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.x = dot(r2.yz, r2.yz);
  r3.x = 1 + -r3.x;
  r3.x = max(0, r3.x);
  r3.x = sqrt(r3.x);
  r2.w = r2.w * r2.w;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
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
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r2.w + r0.y;
  r0.y = log2(r0.y);
  r0.y = -0.0588235296 * r0.y;
  r2.x = -17 * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.w + r2.x;
  r2.x = log2(r2.x);
  r2.x = -0.0588235296 * r2.x;
  r2.x = max(0, r2.x);
  r6.xyz = r3.yzw * r2.zzz;
  r6.xyz = r5.xyz * r2.yyy + r6.xyz;
  r6.xyz = r4.xyz * r3.xxx + r6.xyz;
  r2.y = dot(r6.xyz, r6.xyz);
  r2.y = rsqrt(r2.y);
  r6.xyz = r6.xyz * r2.yyy;
  r0.z = debugGlossOverride.x * r0.z + glossRange.x;
  r0.z = saturate(0.0588235296 * r0.z);
  r0.z = -17 * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r2.w + r0.z;
  r0.z = log2(r0.z);
  r0.z = -0.0588235296 * r0.z;
  r0.yz = max(float2(0,0), r0.yz);
  r2.y = cmp(0 < debugStreamerControl.w);
  if (r2.y != 0) {
    r2.y = (int)debugStreamerControl.w;
    r2.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r2.w = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r2.z = cmp(r2.z < r2.w);
    r2.w = cmp(0 < r2.w);
    r7.xyz = (int3)r2.yyy & int3(1,2,4);
    r8.xyz = r7.xxx ? float3(1,0,1) : r1.xyz;
    r7.xyw = r7.yyy ? float3(0,1,1) : r1.xyz;
    r7.xyw = r2.www ? r8.xyz : r7.xyw;
    r8.xyz = r7.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r2.zzz ? r7.xyw : r8.xyz;
  }
  r2.yzw = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r2.yzw + r1.xyz;
  r0.w = -r0.w * w1.x + debugAlphaOverride.x;
  o0.w = debugAlphaOverride.w * r0.w + r1.w;
  r7.y = debugGlossOverride.w * r0.z;
  r0.w = debugOcclusionOverride.x + -r0.x;
  r0.x = debugOcclusionOverride.w * r0.w + r0.x;
  r2.yzw = v7.xxx ? r4.xyz : -r4.xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = rsqrt(r0.w);
  r2.yzw = r2.yzw * r0.www + -r6.xyz;
  r6.xyz = debugNormalOverride.www * r2.yzw + r6.xyz;
  r2.yz = (uint2)v0.xy;
  r0.w = cmp(v0.z >= 0.984375);
  r1.w = 1.01587307 * v0.z;
  r2.w = v0.z * 64 + -63;
  r0.w = r0.w ? r2.w : r1.w;
  r0.w = max(9.99999994e-09, r0.w);
  r0.w = rcp(r0.w);
  r1.w = dot(-v6.xyz, -v6.xyz);
  r1.w = rsqrt(r1.w);
  r8.xyz = -v6.xyz * r1.www;
  r7.zw = (uint2)r2.zy;
  r2.w = dot(r7.wz, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r9.x, r10.x);
  r2.w = dot(r7.zw, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r3.x, r11.x);
  r7.x = saturate(dot(r6.xyz, r8.xyz));
  r2.w = dot(-r8.xyz, r6.xyz);
  r2.w = r2.w + r2.w;
  r12.xyz = r6.xyz * -r2.www + -r8.xyz;
  r2.w = 17 * r7.y;
  r13.x = exp2(r2.w);
  r2.w = 2 + r13.x;
  r2.w = 2 / r2.w;
  r4.w = sqrt(r2.w);
  r11.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r11.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r11.yzw;
  r11.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r11.yzw;
  r11.yzw = viewProjectionMatrix._m30_m31_m33 + r11.yzw;
  r14.xyz = eyeOffset.xyz + v6.xyz;
  r5.w = sqrt(r4.w);
  r5.w = r5.w * 0.5 + 0.5;
  r5.w = r5.w * r5.w;
  r7.z = 0.5 * r5.w;
  r5.w = -r5.w * 0.5 + 1;
  r7.w = r7.x * r5.w + r7.z;
  r5.w = r7.w * r5.w;
  r7.z = r7.z * r7.w;
  r7.w = min(1, abs(anisotropy));
  r2.x = r2.x + -r0.y;
  r0.y = r7.w * r2.x + r0.y;
  r2.x = cmp(anisotropy < 0);
  r0.yw = float2(17,0.0078125) * r0.yw;
  r13.y = exp2(r0.y);
  r9.zw = r2.xx ? r13.xy : r13.yx;
  r9.zw = float2(2,2) + r9.zw;
  r9.zw = float2(2,2) / r9.zw;
  r0.y = dot(r6.xyz, sunConstants.wldDir.xyz);
  r2.x = cmp(0 >= abs(r0.y));
  if (r2.x != 0) {
    r13.y = 0;
  }
  if (r2.x == 0) {
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r15.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.xyz;
    r15.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.xyz;
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.xyz;
    r2.x = -sunConstants.splitDepthOffset + r15.z;
    r2.x = -r2.x * 6.10351563e-05 + 1;
    r7.w = saturate(r2.x);
    r7.w = cmp(r2.x == r7.w);
    if (r7.w != 0) {
      r7.w = 0;
      r8.w = 0;
      while (true) {
        r10.w = cmp(r7.w >= 3);
        if (r10.w != 0) break;
        r10.w = (uint)r7.w;
        r13.zw = -sunConstants.splitPinTransform[r10.w].xy + r15.xy;
        r13.z = max(abs(r13.z), abs(r13.w));
        r8.w = sunConstants.splitPinTransform[r10.w].z * r13.z;
        r10.w = cmp(r8.w < 1);
        if (r10.w != 0) {
          break;
        }
        r7.w = 1 + r7.w;
        r8.w = 0;
      }
    } else {
      r7.w = 3;
      r8.w = 0;
    }
    r10.w = cmp(r7.w >= 3);
    if (r10.w != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r15.xyx * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r13.zw = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r13.zw = floor(r13.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r13.z = r13.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r13.z = (uint)r13.z;
      r13.z = (int)r13.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r15.w = (int)r13.w & 0x40000000;
      r16.w = (uint)r13.w << 2;
      if (r15.w == 0) {
        r15.w = (int)r13.w & 0x01ffffff;
        r17.x = (int)r13.z + (int)r15.w;
        r13.z = (uint)r13.w >> 25;
        r13.z = (uint)r13.z;
        r16.xyz = r16.xyz * r13.zzz;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r13.zw = (uint2)r16.zy >> int2(6,6);
        r15.w = (int)r17.z & 0xc0000000;
        r17.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r13.w = r13.w ? r17.z : r17.w;
        r17.w = (uint)r13.w >> 13;
        r13.z = r13.z ? r17.w : r13.w;
        r13.z = (int)r13.z & 8191;
        r18.x = (int)r13.z + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r18.xyz = r15.www ? r17.xyz : r18.xyz;
        r19.yz = r15.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r16.zy >> (uint2)r19.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r17.w = (int)r18.z & 0xc0000000;
        r18.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r13.w = r13.w ? r18.z : r18.w;
        r18.w = (uint)r13.w >> 13;
        r13.z = r13.z ? r18.w : r13.w;
        r13.z = (int)r13.z & 8191;
        r19.x = (int)r13.z + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r18.xyz = r17.www ? r18.xyz : r19.xzw;
        r17.xyz = r15.www ? r17.xyz : r18.xyz;
        r13.z = (int)r17.z & 0xc0000000;
        if (r13.z == 0) {
          r13.z = (int)-r17.y + 6;
          r13.zw = (uint2)r16.zy >> (uint2)r13.zz;
          r15.w = (int)r17.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r15.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r18.x = (int)r13.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.yy + int2(1,2);
          r13.z = (int)-r18.y + 6;
          r13.zw = (uint2)r16.zy >> (uint2)r13.zz;
          r15.w = (int)r18.w & 0xc0000000;
          r17.y = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r17.y >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r19.x = (int)r13.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r15.www ? r18.xyw : r19.xyz;
          r13.z = (int)-r19.y + 6;
          r13.zw = (uint2)r16.zy >> (uint2)r13.zz;
          r17.y = (int)r19.z & 0xc0000000;
          r17.w = (int)r19.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r17.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r20.x = (int)r13.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r13.zw = r17.yy ? r19.xz : r20.xy;
          r17.xz = r15.ww ? r18.xw : r13.zw;
        }
        r13.z = (int)r17.z & 0xc0000000;
        if (r13.z == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r17.z << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r17.z >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r17.yw = (int2)r17.zz & int2(32767,536870912);
          r15.w = (uint)r17.y;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 3.05185094e-05 * r15.w;
          r17.y = (int)r16.y & 3;
          r17.y = (int)r17.y + (int)r17.x;
          r17.y = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.y, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r16.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r16.x = (uint)r17.y >> (uint)r18.x;
          r16.x = (int)r16.x & 255;
          r16.x = (uint)r16.x;
          r16.x = r16.x * r15.w;
          r16.x = r16.x * 0.00392156886 + r13.w;
          r16.y = (int)r18.y + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.z >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r18.z;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r15.w = r16.y * r15.w;
          r13.w = r15.w * 1.52590219e-05 + r13.w;
          r16.w = r17.w ? r16.x : r13.w;
        } else {
          r13.w = (int)r17.z & 0x80000000;
          r15.w = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r13.w = r13.w ? r15.w : 0;
          r15.w = (uint)r17.z << 2;
          r16.x = (uint)r13.w >> 16;
          r16.x = f16tof32(r16.x);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r15.w = r15.x * r16.x + r15.w;
          r13.w = r15.y * r13.w + r15.w;
          r16.w = r13.z ? r13.w : r16.w;
        }
      }
      r13.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.z;
      r13.z = cmp(r16.w < r13.z);
      r13.y = r13.z ? 0 : 1;
    }
    if (r10.w == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r7.w;
        r13.zw = -sunConstants.splitPinTransform[r10.w].xy + r15.xy;
        r13.zw = sunConstants.splitPinTransform[r10.w].zz * r13.zw;
        r16.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r10.w + r7.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r2.x).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r10.w = r13.z + r10.w;
        r10.w = saturate(-1 + r10.w);
        r13.z = r10.w * r10.w;
        r13.y = r13.z * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r9.x;
        r10.w = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.w = (uint)r8.w;
        r13.zw = -sunConstants.splitPinTransform[r10.w].xy + r15.xy;
        r13.zw = sunConstants.splitPinTransform[r10.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xy = -sunConstants.splitPinTransform[r7.w].xy + r15.xy;
        r15.xy = sunConstants.splitPinTransform[r7.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r10.x;
        r16.z = r9.x;
        r15.zw = float2(0,0);
        while (true) {
          r16.w = cmp((uint)r15.w >= 8);
          if (r16.w != 0) break;
          r16.w = cmp((uint)r8.w < (uint)r15.w);
          r17.xy = r16.ww ? r15.xy : r13.zw;
          r17.z = r16.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r10.w].w;
          r16.w = r16.w ? r7.w : r10.w;
          r18.x = dot(icb[r15.w+0].yx, r16.xy);
          r18.y = dot(icb[r15.w+0].yx, r16.yz);
          r17.xy = r18.xy * r17.zz + r17.xy;
          r16.w = (int)r16.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.w;
          r16.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r2.x).x;
          r17.x = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.w = r17.x + r16.w;
          r16.w = saturate(-1 + r16.w);
          r15.z = r16.w * 0.125 + r15.z;
          r15.w = (int)r15.w + 1;
        }
        r2.x = r15.z * r15.z;
        r13.y = r2.x * r15.z;
      }
    }
  }
  r2.x = viewmodelSunShadowRaw & 0x0000ffff;
  if (r2.x != 0) {
    r2.x = (int)r2.x + numLights;
    r2.x = (int)r2.x + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r2.x, l(52), t12.xxxx
  r7.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r2.x, l(68), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r2.x, l(84), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r2.x, l(132), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r2.x, l(148), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
    r8.w = abs(r0.y) * -0.200000003 + 0.400000006;
    r10.w = cmp(r0.y < 0);
    r8.w = r10.w ? -r8.w : r8.w;
    r19.xyz = r6.xyz * r8.www + v6.xyz;
    r19.w = 1;
    r15.x = dot(r15.xyzw, r19.xyzw);
    r15.y = dot(r16.xyzw, r19.xyzw);
    r13.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.zw = r13.zw + r18.zw;
    r13.zw = r13.zw * r18.xy;
    r15.xy = r7.ww / r17.xz;
    r15.zw = float2(1,1) + -r15.xy;
    r15.zw = cmp(r13.zw >= r15.zw);
    r15.xy = cmp(r15.xy >= r13.zw);
    r15.xy = (int2)r15.xy | (int2)r15.zw;
    r8.w = (int)r15.y | (int)r15.x;
    if (r8.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r2.x, l(28), t12.xxxx
    r8.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r2.x, l(100), t12.xyzw
    r15.x = samp0[]..swiz;
    r15.y = samp0[]..swiz;
    r15.z = samp0[]..swiz;
    r15.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r2.x, l(164), t12.xyxx
    r16.x = samp0[]..swiz;
    r16.y = samp0[]..swiz;
      r2.x = dot(r15.xyzw, r19.xyzw);
      r13.zw = saturate(r13.zw);
      r15.xy = r13.zw * r17.xz + r17.yw;
      r2.x = r2.x + r16.x;
      r2.x = r2.x / r16.y;
      r2.x = max(6.10351563e-05, r2.x);
      r8.w = (int)r8.w & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r16.x = -r9.x;
        r17.z = (uint)r8.w;
        r16.y = r10.x;
        r16.z = r9.x;
        r10.w = 0;
        r13.z = 0;
        while (true) {
          r13.w = cmp((int)r13.z >= 8);
          if (r13.w != 0) break;
          r18.x = dot(icb[r13.z+0].yx, r16.xy);
          r18.y = dot(icb[r13.z+0].yx, r16.yz);
          r17.xy = r18.xy * r7.ww + r15.xy;
          r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r2.x).x;
          r10.w = r13.w * 0.125 + r10.w;
          r13.z = (int)r13.z + 1;
        }
      } else {
        r15.z = (uint)r8.w;
        r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r2.x).x;
      }
      r2.x = r10.w * r10.w;
      r2.x = r2.x * r10.w;
    } else {
      r2.x = 1;
    }
    r13.y = r13.y * r2.x;
  }
  r2.x = cmp(0 < abs(r0.y));
  if (r2.x != 0) {
    r2.x = cmp(0 < r13.y);
    if (r2.x != 0) {
      r2.x = sunConstants.specScale * r2.w;
      r2.x = 0.25 * r2.x;
      if (sunConstants.sunCookieIndex != 0) {
        r14.w = 1;
        r7.w = dot(sunConstants.sunCookieTransform[0].xyzw, r14.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r14.xyzw);
        r15.x = frac(r7.w);
        r15.y = frac(r8.w);
        r7.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r7.w;
        r15.xyz = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r15.xyz = float3(-1,-1,-1) + r15.xyz;
        r15.xyz = sunConstants.sunCookieIntensity * r15.xyz + float3(1,1,1);
        r15.xyz = sunConstants.color.xyz * r15.xyz;
      } else {
        r15.xyz = sunConstants.color.xyz;
      }
      r7.w = -r7.x * 0.5 + 1;
      r7.w = -abs(r0.y) * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -abs(r0.y);
      r7.w = r4.w * r7.w + abs(r0.y);
      r8.w = cmp(0 < r0.y);
      r0.y = saturate(r0.y);
      r16.xyz = -v6.xyz * r1.www + sunConstants.wldDir.xyz;
      r1.w = dot(r16.xyz, r16.xyz);
      r1.w = rsqrt(r1.w);
      r16.xyz = r16.xyz * r1.www;
      r1.w = dot(r6.xyz, r16.xyz);
      r10.w = dot(r16.xyz, r8.xyz);
      r13.z = r9.z * r9.w;
      r13.z = sqrt(r13.z);
      r13.w = dot(r16.xyz, r5.xyz);
      r14.w = dot(r16.xyz, r3.yzw);
      r13.w = r13.w * r13.w;
      r13.w = r13.w / r9.z;
      r14.w = r14.w * r14.w;
      r14.w = r14.w / r9.w;
      r13.w = r14.w + r13.w;
      r1.w = abs(r1.w) * abs(r1.w) + r13.w;
      r13.w = r0.y * r5.w + r7.z;
      r1.w = r1.w * r1.w;
      r1.w = r1.w * r13.z;
      r1.w = r1.w * r13.w;
      r1.w = rcp(r1.w);
      r0.y = r0.y * r2.x;
      r0.y = r1.w * r0.y;
      r1.w = saturate(1 + -r10.w);
      r2.x = r1.w * r1.w;
      r2.x = r2.x * r2.x;
      r1.w = r2.x * r1.w;
      r1.w = r1.w * r0.y;
      r2.x = r8.w ? r7.w : 0;
      r16.xyz = r8.www ? float3(0,0,0) : r7.www;
      r13.zw = r8.ww ? r1.ww : 0;
      r17.xyz = r8.www ? r0.yyy : 0;
      r0.y = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.y = r13.y * r0.y;
      r13.x = 1;
      r1.w = sunConstants.wldDir.x;
      r18.xy = sunConstants.wldDir.yz;
      r18.zw = r2.xx;
      r7.w = r13.w;
    } else {
      r0.y = 0;
      r15.xyz = float3(0,0,0);
      r1.w = 0;
      r18.xyzw = float4(0,0,0,0);
      r16.xyz = float3(0,0,0);
      r2.x = 0;
      r17.xyz = float3(0,0,0);
      r7.w = 0;
      r13.xyzw = float4(0,0,0,0);
    }
  } else {
    r0.y = 0;
    r15.xyz = float3(0,0,0);
    r1.w = 0;
    r18.xyzw = float4(0,0,0,0);
    r16.xyz = float3(0,0,0);
    r2.x = 0;
    r17.xyz = float3(0,0,0);
    r7.w = 0;
    r13.xyzw = float4(0,0,0,0);
  }
  r0.w = min(15, r0.w);
  r0.w = (uint)r0.w;
  r19.xy = (uint2)r2.yz >> int2(6,6);
  r19.z = (uint)r0.w << 4;
  r20.x = -r9.x;
  r0.w = -r7.x * 0.5 + 1;
  r2.y = r9.z * r9.w;
  r2.y = sqrt(r2.y);
  r21.xy = float2(0,0);
  r22.w = 0;
  r23.xyz = v6.xyz;
  r23.w = 1;
  r24.w = 1;
  r20.z = r9.x;
  r25.z = 1;
  r26.w = 1;
  r20.yw = r10.xx;
  r9.y = r20.w;
  r27.w = 1;
  r10.y = r20.x;
  r10.z = r9.x;
  r28.x = r10.x;
  r28.y = r20.x;
  r28.z = r9.x;
  r29.xyz = float3(0,0,0);
  r30.xyz = float3(0,0,0);
  r31.xyz = float3(0,0,0);
  r32.xyz = float3(0,0,0);
  r33.xyz = r15.xyz;
  r34.x = r1.w;
  r34.yz = r18.xy;
  r35.xy = r18.zw;
  r35.z = r2.x;
  r36.xyz = r16.xyz;
  r37.xyz = r17.xyz;
  r38.x = r7.w;
  r38.yz = r13.zw;
  r39.x = enableDitheredShadow;
  r39.y = r0.y;
  r39.zw = r13.xy;
  r2.z = 0;
  while (true) {
    r8.w = cmp((uint)r2.z >= numLights);
    if (r8.w != 0) break;
    r21.z = (uint)r2.z >> 5;
    r22.xyz = (int3)r19.xyz + (int3)r21.xyz;
    r8.w = visibleLights.Load(r22.xyzw).x;
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
    r10.w = r39.x;
    r14.w = r39.y;
    r48.xyz = r36.xyz;
    r15.w = r8.w;
    while (true) {
      if (r15.w == 0) break;
      r16.w = firstbitlow((uint)r15.w);
      r17.w = 1 << (int)r16.w;
      r19.w = (int)r15.w & (int)r17.w;
      if (r19.w != 0) {
        r15.w = (int)r15.w ^ (int)r17.w;
        r16.w = (int)r2.z + (int)r16.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r16.w, l(0), t12.wxyz
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r16.w, l(16), t12.zxyw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r16.w, l(32), t12.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r16.w, l(48), t12.xyzw
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r16.w, l(64), t12.yzwx
      r53.x = samp0[]..swiz;
      r53.y = samp0[]..swiz;
      r53.z = samp0[]..swiz;
      r53.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r16.w, l(80), t12.xyzw
      r54.x = samp0[]..swiz;
      r54.y = samp0[]..swiz;
      r54.z = samp0[]..swiz;
      r54.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r16.w, l(96), t12.yzwx
      r55.x = samp0[]..swiz;
      r55.y = samp0[]..swiz;
      r55.z = samp0[]..swiz;
      r55.w = samp0[]..swiz;
        if (3 == 0) r17.w = 0; else if (3+24 < 32) {         r17.w = (uint)r50.w << (32-(3 + 24)); r17.w = (uint)r17.w >> (32-3);        } else r17.w = (uint)r50.w >> 24;
        switch (r17.w) {
          case 4 :          r17.w = cmp(0 < r55.x);
          r56.xy = r54.zw;
          r56.z = r55.w;
          r57.xyz = -r56.xyz * float3(0.5,0.5,0.5) + r49.yzw;
          r58.xyz = -v6.xyz + r57.xyz;
          r19.w = dot(r56.xyz, r58.xyz);
          r25.w = saturate(-r19.w / r55.x);
          r59.xyz = r25.www * r56.xyz + r57.xyz;
          r59.xyz = r17.www ? r59.xyz : r49.yzw;
          r59.xyz = -v6.xyz + r59.xyz;
          r28.w = dot(r59.xyz, r59.xyz);
          r29.w = rsqrt(r28.w);
          r59.xyz = r59.xyz * r29.www;
          r29.w = dot(r6.xyz, r59.xyz);
          r30.w = cmp(0 < abs(r29.w));
          if (r30.w != 0) {
            r30.w = sqrt(r28.w);
            r31.w = r52.x * r52.x;
            r28.w = r31.w / r28.w;
            r28.w = min(1, r28.w);
            r60.xy = saturate(r30.ww * r51.xz + r51.yw);
            r60.zw = r60.xy * r60.xy;
            r60.xy = r60.xy * float2(-2,-2) + float2(3,3);
            r60.xy = r60.zw * r60.xy;
            r28.w = r60.x * r28.w;
            r60.x = r28.w * r60.y;
            r28.w = cmp(0 < r60.x);
            if (r28.w != 0) {
              if (3 == 0) r60.z = 0; else if (3+27 < 32) {               r60.z = (uint)r50.w << (32-(3 + 27)); r60.z = (uint)r60.z >> (32-3);              } else r60.z = (uint)r50.w >> 27;
              if (4 == 0) r60.w = 0; else if (4+20 < 32) {               r60.w = (uint)r50.w << (32-(4 + 20)); r60.w = (uint)r60.w >> (32-4);              } else r60.w = (uint)r50.w >> 20;
              r28.w = cmp((int)r60.z != 1);
              if (r28.w != 0) {
                r28.w = abs(r29.w) * -0.200000003 + 0.400000006;
                r30.w = cmp(r29.w < 0);
                r28.w = r30.w ? -r28.w : r28.w;
                r61.xyz = r6.xyz * r28.www + v6.xyz;
                r61.xyz = r61.xyz + -r53.xyz;
                r28.w = max(abs(r61.y), abs(r61.z));
                r28.w = max(abs(r61.x), r28.w);
                r28.w = r54.x / r28.w;
                r28.w = r28.w + r54.y;
                r30.w = dot(r61.xyz, r61.xyz);
                r30.w = rsqrt(r30.w);
                r28.w = max(6.10351563e-05, r28.w);
                r31.w = (int)r50.w & 0x0000ffff;
                r62.w = (uint)r31.w;
                r60.y = 0;
                r31.w = 0;
                while (true) {
                  r32.w = cmp((int)r31.w >= 8);
                  if (r32.w != 0) break;
                  r63.y = dot(icb[r31.w+0].yx, r20.xy);
                  r63.z = dot(icb[r31.w+0].yx, r20.yz);
                  r63.yz = r63.yz * r52.yy;
                  r63.x = r63.y * r11.x;
                  r63.w = r63.y * r3.x;
                  r62.xyz = r61.xyz * r30.www + r63.xzw;
                  r32.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r62.xyzw, r28.w).x;
                  r60.y = r32.w * 0.125 + r60.y;
                  r31.w = (int)r31.w + 1;
                }
              } else {
                r60.y = 1;
              }
              if (r60.w != 0) {
                r28.w = (int)r60.w + numLights;
                r28.w = (int)r28.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.w, r28.w, l(52), t12.xxxx
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r28.w, l(100), t12.xyzw
              r61.x = samp0[]..swiz;
              r61.y = samp0[]..swiz;
              r61.z = samp0[]..swiz;
              r61.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r28.w, l(116), t12.xyzw
              r62.x = samp0[]..swiz;
              r62.y = samp0[]..swiz;
              r62.z = samp0[]..swiz;
              r62.w = samp0[]..swiz;
                r31.w = abs(r29.w) * -0.200000003 + 0.400000006;
                r32.w = cmp(r29.w < 0);
                r31.w = r32.w ? -r31.w : r31.w;
                r24.xyz = r6.xyz * r31.www + v6.xyz;
                r31.w = dot(r61.xyzw, r24.xyzw);
                r32.w = dot(r62.xyzw, r24.xyzw);
                r33.w = cmp(r32.w < r31.w);
                if (r33.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r28.w, l(68), t12.xyzw
                r61.x = samp0[]..swiz;
                r61.y = samp0[]..swiz;
                r61.z = samp0[]..swiz;
                r61.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r28.w, l(84), t12.xyzw
                r62.x = samp0[]..swiz;
                r62.y = samp0[]..swiz;
                r62.z = samp0[]..swiz;
                r62.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r28.w, l(132), t12.xyzw
                r63.x = samp0[]..swiz;
                r63.y = samp0[]..swiz;
                r63.z = samp0[]..swiz;
                r63.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r28.w, l(148), t12.xyzw
                r64.x = samp0[]..swiz;
                r64.y = samp0[]..swiz;
                r64.z = samp0[]..swiz;
                r64.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.zw, r28.w, l(164), t12.xxxy
                r60.z = samp0[]..swiz;
                r60.w = samp0[]..swiz;
                  r61.x = dot(r61.xyzw, r24.xyzw);
                  r61.y = dot(r62.xyzw, r24.xyzw);
                  r24.xy = r61.xy / r32.ww;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.xy = r24.xy + r64.zw;
                  r24.xy = r24.xy * r64.xy;
                  r61.xy = r30.ww / r63.xz;
                  r61.zw = float2(1,1) + -r61.xy;
                  r61.zw = cmp(r24.xy >= r61.zw);
                  r61.xy = cmp(r61.xy >= r24.xy);
                  r61.xy = (int2)r61.xy | (int2)r61.zw;
                  r24.z = (int)r61.y | (int)r61.x;
                  r24.xy = saturate(r24.xy);
                  r61.xy = r24.xy * r63.xz + r63.yw;
                  r24.x = r60.w * r32.w;
                  r24.y = r60.z * r32.w + r31.w;
                  r24.x = r24.y / r24.x;
                } else {
                  r24.z = -1;
                }
                r24.y = (int)r33.w | (int)r24.z;
                if (r24.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r28.w, l(28), t12.xxxx
                r24.y = samp0[]..swiz;
                  r24.x = max(6.10351563e-05, r24.x);
                  r24.y = (int)r24.y & 0x0000ffff;
                  if (r10.w != 0) {
                    r62.z = (uint)r24.y;
                    r24.z = 0;
                    r28.w = 0;
                    while (true) {
                      r31.w = cmp((int)r28.w >= 8);
                      if (r31.w != 0) break;
                      r63.x = dot(icb[r28.w+0].yx, r20.xw);
                      r63.y = dot(icb[r28.w+0].xy, r9.xy);
                      r62.xy = r63.xy * r30.ww + r61.xy;
                      r31.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r62.xyz, r24.x).x;
                      r24.z = r31.w * 0.125 + r24.z;
                      r28.w = (int)r28.w + 1;
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
                r24.y = r50.x * r2.w;
                r24.y = 0.25 * r24.y;
                r28.w = dot(r56.xyz, r12.xyz);
                r30.w = dot(r12.xyz, r58.xyz);
                r31.w = -r28.w * r28.w + r55.x;
                r19.w = r28.w * r30.w + -r19.w;
                r19.w = saturate(r19.w / r31.w);
                r28.w = r31.w / r55.x;
                r28.w = 10 * r28.w;
                r28.w = min(1, r28.w);
                r19.w = r19.w + -r25.w;
                r19.w = r28.w * r19.w + r25.w;
                r56.xyz = r19.www * r56.xyz + r57.xyz;
                r56.xyz = r17.www ? r56.xyz : r49.yzw;
                r56.xyz = -v6.xyz + r56.xyz;
                r17.w = dot(r56.xyz, r56.xyz);
                r17.w = rsqrt(r17.w);
                r57.xyz = r56.xyz * r17.www;
                r19.w = -abs(r29.w) * r0.w + 1;
                r19.w = r19.w * r19.w;
                r19.w = -r19.w * 0.620000005 + 0.620000005;
                r19.w = r19.w + -abs(r29.w);
                r19.w = r4.w * r19.w + abs(r29.w);
                r25.w = cmp(0 < r29.w);
                r28.w = saturate(dot(r6.xyz, r57.xyz));
                r56.xyz = r56.xyz * r17.www + r8.xyz;
                r17.w = dot(r56.xyz, r56.xyz);
                r17.w = rsqrt(r17.w);
                r56.xyz = r56.xyz * r17.www;
                r17.w = dot(r6.xyz, r56.xyz);
                r29.w = dot(r56.xyz, r8.xyz);
                r30.w = dot(r56.xyz, r5.xyz);
                r31.w = dot(r56.xyz, r3.yzw);
                r30.w = r30.w * r30.w;
                r30.w = r30.w / r9.z;
                r31.w = r31.w * r31.w;
                r31.w = r31.w / r9.w;
                r30.w = r31.w + r30.w;
                r17.w = abs(r17.w) * abs(r17.w) + r30.w;
                r30.w = r28.w * r5.w + r7.z;
                r17.w = r17.w * r17.w;
                r17.w = r17.w * r2.y;
                r17.w = r17.w * r30.w;
                r17.w = rcp(r17.w);
                r24.y = r28.w * r24.y;
                r17.w = r24.y * r17.w;
                r24.y = saturate(1 + -r29.w);
                r28.w = r24.y * r24.y;
                r28.w = r28.w * r28.w;
                r24.y = r28.w * r24.y;
                r24.y = r24.y * r17.w;
                r56.xyz = r25.www ? r19.www : 0;
                r19.w = r25.w ? 0 : r19.w;
                r57.xyz = r25.www ? r24.yyy : 0;
                r17.w = r25.w ? r17.w : 0;
                r50.x = r49.x;
                r24.y = dot(r50.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r24.y = r24.x * r24.y;
                r25.w = cmp(r14.w < r24.y);
                if (r25.w != 0) {
                  r25.w = r21.z * r21.w;
                  r58.xyz = r25.www * r43.xyz;
                  r22.xyz = r58.xyz * r45.xyz + r22.xyz;
                  r40.xyz = r58.xyz * r48.xyz + r40.xyz;
                  r42.xyz = r58.xyz * r46.xyz + r42.xyz;
                  r41.xyz = r58.xyz * r47.xyz + r41.xyz;
                  r46.xyz = r17.www;
                  r14.w = r24.y;
                  r48.xyz = r19.www;
                  r43.xyz = r50.xyz;
                  r44.xyz = r59.xyz;
                  r45.xyz = r56.xyz;
                  r47.xyz = r57.xyz;
                  r21.zw = r60.xy;
                } else {
                  r56.xyw = r50.xyz * r24.xxx;
                  r22.xyz = r56.xyw * r56.zzz + r22.xyz;
                  r40.xyz = r56.xyw * r19.www + r40.xyz;
                  r42.xyz = r56.xyw * r17.www + r42.xyz;
                  r41.xyz = r56.xyw * r57.xyz + r41.xyz;
                }
              }
            }
          }
          break;
          case 2 :          r56.xy = r52.zw;
          r56.z = r53.w;
          r56.xyz = -v6.xyz + r56.xyz;
          r17.w = dot(r56.xyz, r56.xyz);
          r17.w = rsqrt(r17.w);
          r57.xyz = r56.xyz * r17.www;
          r19.w = dot(r6.xyz, r57.xyz);
          r24.x = cmp(0 < abs(r19.w));
          if (r24.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r16.w, l(112), t12.yzwx
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.xyzw, r16.w, l(128), t12.zxyw
          r59.x = samp0[]..swiz;
          r59.y = samp0[]..swiz;
          r59.z = samp0[]..swiz;
          r59.w = samp0[]..swiz;
            r61.xyz = r58.xyz;
            r61.w = r59.y;
            r24.x = dot(r61.xyzw, r23.xyzw);
            r24.y = cmp(r24.x < 1);
            if (r24.y != 0) {
              r60.xzw = float3(1,1,1);
              r62.x = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r16.w, l(172), t12.yzwx
            r63.x = samp0[]..swiz;
            r63.y = samp0[]..swiz;
            r63.z = samp0[]..swiz;
            r63.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r16.w, l(188), t12.wxyz
            r64.x = samp0[]..swiz;
            r64.y = samp0[]..swiz;
            r64.z = samp0[]..swiz;
            r64.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r16.w, l(204), t12.xyzw
            r65.x = samp0[]..swiz;
            r65.y = samp0[]..swiz;
            r65.z = samp0[]..swiz;
            r65.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r16.w, l(236), t12.xxxx
            r24.y = samp0[]..swiz;
              r66.xyz = -v6.xyz + r49.yzw;
              r25.w = r52.x * r52.x;
              r28.w = dot(r66.xyz, r66.xyz);
              r25.w = r25.w / r28.w;
              r25.w = min(1, r25.w);
              r51.xy = saturate(r24.xx * r51.xz + r51.yw);
              r51.zw = r51.xy * r51.xy;
              r51.xy = r51.xy * float2(-2,-2) + float2(3,3);
              r51.xy = r51.zw * r51.xy;
              r25.w = r51.x * r25.w;
              r25.w = r25.w * r51.y;
              r53.w = r54.x;
              r51.x = dot(r53.xyzw, r23.xyzw);
              r66.xyz = r54.yzw;
              r66.w = r55.w;
              r51.y = dot(r66.xyzw, r23.xyzw);
              r25.xy = r51.xy / r24.xx;
              r24.x = cmp(r63.w < 0.00048828125);
              if (r24.x != 0) {
                r64.y = r65.x;
                r51.xy = saturate(abs(r25.xy) * r64.zw + r64.xy);
                r51.zw = r51.xy * r51.xy;
                r51.xy = r51.xy * float2(-2,-2) + float2(3,3);
                r51.xy = r51.zw * r51.xy;
                r24.x = r51.x * r51.y;
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
                r28.w = r64.z * r51.x;
                r29.w = r64.w * r51.y + -1;
                r28.w = r64.w * r51.y + -r28.w;
                r28.w = saturate(r29.w / r28.w);
                r29.w = r28.w * r28.w;
                r28.w = r28.w * -2 + 3;
                r24.x = r29.w * r28.w;
              }
              r62.x = r25.w * r24.x;
              r24.x = r24.y ? 0.000000 : 0;
              if (r24.x != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyz, r16.w, l(220), t12.xyzx
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
                r24.y = dot(r65.yzw, r25.xyz);
                r25.x = dot(r51.xyz, r25.xyz);
                r51.x = frac(r24.y);
                r51.y = frac(r25.x);
                r24.x = (int)r24.x + -1;
                r51.z = (uint)r24.x;
                r60.xzw = gCookieArray.SampleLevel(samplerLinear_s, r51.xyz, 0).xyz;
              } else {
                r60.xzw = float3(1,1,1);
              }
            }
            r49.yz = r50.yz;
            r25.xyw = r49.xyz * r60.xzw;
            r24.x = cmp(0 < r62.x);
            if (r24.x != 0) {
              if (3 == 0) r24.x = 0; else if (3+27 < 32) {               r24.x = (uint)r50.w << (32-(3 + 27)); r24.x = (uint)r24.x >> (32-3);              } else r24.x = (uint)r50.w >> 27;
              if (4 == 0) r24.y = 0; else if (4+20 < 32) {               r24.y = (uint)r50.w << (32-(4 + 20)); r24.y = (uint)r24.y >> (32-4);              } else r24.y = (uint)r50.w >> 20;
              r24.x = cmp((int)r24.x != 1);
              if (r24.x != 0) {
                r24.x = abs(r19.w) * -0.200000003 + 0.400000006;
                r28.w = cmp(r19.w < 0);
                r24.x = r28.w ? -r24.x : r24.x;
                r26.xyz = r6.xyz * r24.xxx + v6.xyz;
                r58.xyz = r55.xyz;
                r24.x = dot(r58.xyzw, r26.xyzw);
                r28.w = dot(r61.xyzw, r26.xyzw);
                r29.w = cmp(r28.w >= r24.x);
                if (r29.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.y, r16.w, l(144), t12.xxxx
                r59.y = samp0[]..swiz;
                  r53.w = r54.x;
                  r49.x = dot(r53.xyzw, r26.xyzw);
                  r55.xyz = r54.yzw;
                  r49.y = dot(r55.xyzw, r26.xyzw);
                  r26.xy = r49.xy / r28.ww;
                  r26.xy = saturate(r26.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r26.xy = r26.xy * r59.zw + r59.xy;
                  r16.w = r24.x / r28.w;
                  r16.w = max(6.10351563e-05, r16.w);
                  r24.x = (int)r50.w & 0x0000ffff;
                  if (r10.w != 0) {
                    r49.z = (uint)r24.x;
                    r28.w = 0;
                    r29.w = 0;
                    while (true) {
                      r30.w = cmp((int)r29.w >= 8);
                      if (r30.w != 0) break;
                      r51.x = dot(icb[r29.w+0].xy, r10.xy);
                      r51.y = dot(icb[r29.w+0].yx, r10.xz);
                      r49.xy = r51.xy * r52.yy + r26.xy;
                      r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r49.xyz, r16.w).x;
                      r28.w = r30.w * 0.125 + r28.w;
                      r29.w = (int)r29.w + 1;
                    }
                  } else {
                    r26.z = (uint)r24.x;
                    r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r16.w).x;
                  }
                  r16.w = r28.w * r28.w;
                  r62.y = r16.w * r28.w;
                } else {
                  r62.y = 1;
                }
              } else {
                r62.y = 1;
              }
              if (r24.y != 0) {
                r16.w = (int)r24.y + numLights;
                r16.w = (int)r16.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r16.w, l(52), t12.xxxx
              r24.x = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r16.w, l(68), t12.xyzw
              r49.x = samp0[]..swiz;
              r49.y = samp0[]..swiz;
              r49.z = samp0[]..swiz;
              r49.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r16.w, l(84), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r16.w, l(100), t12.xyzw
              r52.x = samp0[]..swiz;
              r52.y = samp0[]..swiz;
              r52.z = samp0[]..swiz;
              r52.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r16.w, l(116), t12.xyzw
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
              r53.z = samp0[]..swiz;
              r53.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r16.w, l(132), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r16.w, l(148), t12.xyzw
              r55.x = samp0[]..swiz;
              r55.y = samp0[]..swiz;
              r55.z = samp0[]..swiz;
              r55.w = samp0[]..swiz;
                r24.y = abs(r19.w) * -0.200000003 + 0.400000006;
                r26.x = cmp(r19.w < 0);
                r24.y = r26.x ? -r24.y : r24.y;
                r27.xyz = r6.xyz * r24.yyy + v6.xyz;
                r26.x = dot(r49.xyzw, r27.xyzw);
                r26.y = dot(r51.xyzw, r27.xyzw);
                r24.y = dot(r52.xyzw, r27.xyzw);
                r26.z = dot(r53.xyzw, r27.xyzw);
                r27.x = cmp(r26.z < r24.y);
                r26.xy = r26.xy / r26.zz;
                r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r26.xy = r26.xy + r55.zw;
                r26.xy = r26.xy * r55.xy;
                r27.yz = r24.xx / r54.xz;
                r49.xy = float2(1,1) + -r27.yz;
                r49.xy = cmp(r26.xy >= r49.xy);
                r27.yz = cmp(r27.yz >= r26.xy);
                r27.yz = (int2)r27.yz | (int2)r49.xy;
                r27.y = (int)r27.z | (int)r27.y;
                r27.x = (int)r27.x | (int)r27.y;
                if (r27.x == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.x, r16.w, l(28), t12.xxxx
                r27.x = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.yz, r16.w, l(164), t12.xxyx
                r27.y = samp0[]..swiz;
                r27.z = samp0[]..swiz;
                  r26.xy = saturate(r26.xy);
                  r49.xy = r26.xy * r54.xz + r54.yw;
                  r16.w = r27.z * r26.z;
                  r24.y = r27.y * r26.z + r24.y;
                  r16.w = r24.y / r16.w;
                  r16.w = max(6.10351563e-05, r16.w);
                  r24.y = r27.x ? 0.000000 : 0;
                  if (r10.w != 0) {
                    r26.z = (uint)r24.y;
                    r27.xy = float2(0,0);
                    while (true) {
                      r27.z = cmp((int)r27.y >= 8);
                      if (r27.z != 0) break;
                      r51.x = dot(icb[r27.y+0].xy, r28.xy);
                      r51.y = dot(icb[r27.y+0].yx, r28.xz);
                      r26.xy = r51.xy * r24.xx + r49.xy;
                      r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r16.w).x;
                      r27.x = r26.x * 0.125 + r27.x;
                      r27.y = (int)r27.y + 1;
                    }
                  } else {
                    r49.z = (uint)r24.y;
                    r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r49.xyz, r16.w).x;
                  }
                  r16.w = r27.x * r27.x;
                  r16.w = r16.w * r27.x;
                } else {
                  r16.w = 1;
                }
                r62.y = r62.y * r16.w;
              }
              r16.w = r62.x * r62.y;
              r24.x = cmp(0 < r16.w);
              if (r24.x != 0) {
                r24.x = r50.x * r2.w;
                r24.x = 0.25 * r24.x;
                r24.y = -abs(r19.w) * r0.w + 1;
                r24.y = r24.y * r24.y;
                r24.y = -r24.y * 0.620000005 + 0.620000005;
                r24.y = r24.y + -abs(r19.w);
                r24.y = r4.w * r24.y + abs(r19.w);
                r26.x = cmp(0 < r19.w);
                r19.w = saturate(r19.w);
                r49.xyz = r56.xyz * r17.www + r8.xyz;
                r17.w = dot(r49.xyz, r49.xyz);
                r17.w = rsqrt(r17.w);
                r49.xyz = r49.xyz * r17.www;
                r17.w = dot(r6.xyz, r49.xyz);
                r26.y = dot(r49.xyz, r8.xyz);
                r26.z = dot(r49.xyz, r5.xyz);
                r27.y = dot(r49.xyz, r3.yzw);
                r26.z = r26.z * r26.z;
                r26.z = r26.z / r9.z;
                r27.y = r27.y * r27.y;
                r27.y = r27.y / r9.w;
                r26.z = r27.y + r26.z;
                r17.w = abs(r17.w) * abs(r17.w) + r26.z;
                r26.z = r19.w * r5.w + r7.z;
                r17.w = r17.w * r17.w;
                r17.w = r17.w * r2.y;
                r17.w = r17.w * r26.z;
                r17.w = rcp(r17.w);
                r19.w = r19.w * r24.x;
                r17.w = r19.w * r17.w;
                r19.w = saturate(1 + -r26.y);
                r24.x = r19.w * r19.w;
                r24.x = r24.x * r24.x;
                r19.w = r24.x * r19.w;
                r19.w = r19.w * r17.w;
                r49.xyz = r26.xxx ? r24.yyy : 0;
                r24.x = r26.x ? 0 : r24.y;
                r50.xyz = r26.xxx ? r19.www : 0;
                r17.w = r26.x ? r17.w : 0;
                r19.w = dot(r25.xyw, float3(0.212599993,0.715200007,0.0722000003));
                r19.w = r19.w * r16.w;
                r24.y = cmp(r14.w < r19.w);
                if (r24.y != 0) {
                  r24.y = r21.z * r21.w;
                  r26.xyz = r24.yyy * r43.xyz;
                  r22.xyz = r26.xyz * r45.xyz + r22.xyz;
                  r40.xyz = r26.xyz * r48.xyz + r40.xyz;
                  r42.xyz = r26.xyz * r46.xyz + r42.xyz;
                  r41.xyz = r26.xyz * r47.xyz + r41.xyz;
                  r46.xyz = r17.www;
                  r14.w = r19.w;
                  r48.xyz = r24.xxx;
                  r43.xyz = r25.xyw;
                  r44.xyz = r57.xyz;
                  r45.xyz = r49.xyz;
                  r47.xyz = r50.xyz;
                  r21.zw = r62.xy;
                } else {
                  r25.xyw = r16.www * r25.xyw;
                  r22.xyz = r25.xyw * r49.zzz + r22.xyz;
                  r40.xyz = r25.xyw * r24.xxx + r40.xyz;
                  r42.xyz = r25.xyw * r17.www + r42.xyz;
                  r41.xyz = r25.xyw * r50.xyz + r41.xyz;
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
    r39.y = r14.w;
    r36.xyz = r48.xyz;
    r2.z = (int)r2.z + 32;
  }
  r2.z = 0;
  r2.xy = float2(1,-1) * r34.yx;
  r3.xyz = r34.zxy * r2.yzx;
  r3.xyz = r34.yzx * r2.zxy + -r3.xyz;
  r5.xyz = viewProjectionMatrix._m10_m11_m13 * r14.yyy;
  r5.xyz = r14.xxx * viewProjectionMatrix._m00_m01_m03 + r5.xyz;
  r5.xyz = r14.zzz * viewProjectionMatrix._m20_m21_m23 + r5.xyz;
  r5.xyz = r5.xyz + r11.yzw;
  r9.z = rcp(r5.z);
  r0.yw = r9.zz * r5.xy;
  r9.xy = r0.yw * float2(0.5,-0.5) + float2(0.5,0.5);
  r5.xyw = r34.xyz * float3(2.4000001,2.4000001,2.4000001) + r14.xyz;
  r0.y = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r0.y = frac(r0.y);
  r0.y = 52.9829178 * r0.y;
  r0.y = frac(r0.y);
  r0.w = 3.14159989 * r0.y;
  r0.w = gameTick.w * 0.5 + r0.w;
  sincos(r0.w, r10.x, r11.x);
  r10.xyz = r10.xxx * r3.xyz;
  r10.xyz = r11.xxx * r2.xyz + r10.xyz;
  r10.xyz = r10.xyz * float3(0.119999997,0.119999997,0.119999997) + r5.xyw;
  r13.xyz = viewProjectionMatrix._m10_m11_m13 * r10.yyy;
  r10.xyw = r10.xxx * viewProjectionMatrix._m00_m01_m03 + r13.xyz;
  r10.xyz = r10.zzz * viewProjectionMatrix._m20_m21_m23 + r10.xyw;
  r10.xyz = r10.xyz + r11.yzw;
  r7.zw = float2(0.5,-0.5) * r10.xy;
  r10.z = rcp(r10.z);
  r10.xy = r7.zw * r10.zz + float2(0.5,0.5);
  r13.xyz = -r9.xyz;
  r10.xyz = r13.xyz + r10.xyz;
  r0.w = 3.14159989 + r0.w;
  sincos(r0.w, r11.x, r14.x);
  r3.xyz = r11.xxx * r3.xyz;
  r2.xyz = r14.xxx * r2.xyz + r3.xyz;
  r2.xyz = r2.xyz * float3(0.119999997,0.119999997,0.119999997) + r5.xyw;
  r3.xyz = viewProjectionMatrix._m10_m11_m13 * r2.yyy;
  r2.xyw = r2.xxx * viewProjectionMatrix._m00_m01_m03 + r3.xyz;
  r2.xyz = r2.zzz * viewProjectionMatrix._m20_m21_m23 + r2.xyw;
  r2.xyz = r2.xyz + r11.yzw;
  r2.xy = float2(0.5,-0.5) * r2.xy;
  r3.z = rcp(r2.z);
  r3.xy = r2.xy * r3.zz + r13.xy;
  r13.w = 0.5;
  r2.xyz = r3.xyz + r13.wwz;
  r0.w = dot(renderTargetSize.zw, renderTargetSize.zw);
  r0.w = sqrt(r0.w);
  r1.w = dot(r10.xy, r10.xy);
  r1.w = sqrt(r1.w);
  r1.w = rcp(r1.w);
  r0.w = r1.w * r0.w;
  r3.xy = r0.yy * float2(0.5,0.5) + float2(0.333333343,1);
  r3.xy = float2(0.117647059,0.117647059) * r3.xy;
  r3.xy = r3.xy * r3.xy;
  x1[0].x = r3.x;
  r5.xyw = r10.xyz * r3.xxx + r9.xyz;
  r3.zw = cmp(r0.ww < r3.xy);
  r5.xy = renderTargetSize.xy * r5.xy;
  r11.xy = (int2)r5.xy;
  r11.zw = float2(0,0);
  r1.w = floatZSampler.Load(r11.xyz).x;
  r2.w = cmp(r1.w >= 0.984375);
  r4.w = 1.01587307 * r1.w;
  r1.w = r1.w * 64 + -63;
  r1.w = r2.w ? r1.w : r4.w;
  r1.w = max(9.99999994e-09, r1.w);
  r1.w = rcp(r1.w);
  x2[0].x = r1.w;
  r2.w = 0.0419999994 + r1.w;
  r2.w = r5.w * r2.w;
  r2.w = cmp(1 < r2.w);
  r2.w = r2.w ? 1.000000 : 0;
  r2.w = r3.z ? r2.w : 1;
  x0[0].x = r2.w;
  x1[1].x = r3.y;
  r5.xyw = r2.xyz * r3.yyy + r9.xyz;
  r5.xy = renderTargetSize.xy * r5.xy;
  r11.xy = (int2)r5.xy;
  r11.zw = float2(0,0);
  r3.z = floatZSampler.Load(r11.xyz).x;
  r4.w = cmp(r3.z >= 0.984375);
  r5.x = 1.01587307 * r3.z;
  r3.z = r3.z * 64 + -63;
  r3.z = r4.w ? r3.z : r5.x;
  r3.z = max(9.99999994e-09, r3.z);
  r3.z = rcp(r3.z);
  x2[1].x = r3.z;
  r4.w = 0.0419999994 + r3.z;
  r4.w = r5.w * r4.w;
  r4.w = cmp(1 < r4.w);
  r4.w = r4.w ? 1.000000 : 0;
  r3.w = r3.w ? r4.w : 1;
  x0[1].x = r3.w;
  r4.w = r3.w + r2.w;
  r4.w = cmp(r4.w != 0.000000);
  if (r4.w != 0) {
    r5.xy = r0.yy * float2(0.5,0.5) + float2(1.33333337,2);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r5.xy = r5.xy * r5.xy + -r3.xy;
    r3.x = r2.w * r5.x + r3.x;
    x1[0].x = r3.x;
    r11.xyz = r10.xyz * r3.xxx + r9.xyz;
    r3.x = cmp(r0.w < r3.x);
    r5.xw = renderTargetSize.xy * r11.xy;
    r13.xy = (int2)r5.xw;
    r13.zw = float2(0,0);
    r4.w = floatZSampler.Load(r13.xyz).x;
    r5.x = cmp(r4.w >= 0.984375);
    r5.w = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.x ? r4.w : r5.w;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r1.w = r3.x ? r4.w : r1.w;
    x2[0].x = r1.w;
    r1.w = 0.0419999994 + r4.w;
    r1.w = r11.z * r1.w;
    r1.w = cmp(1 < r1.w);
    r1.w = r1.w ? 1.000000 : 0;
    r1.w = r2.w * r1.w;
    r1.w = r3.x ? r1.w : r2.w;
    x0[0].x = r1.w;
    r2.w = r3.w * r5.y + r3.y;
    x1[1].x = r2.w;
    r5.xyw = r2.xyz * r2.www + r9.xyz;
    r2.w = cmp(r0.w < r2.w);
    r3.xy = renderTargetSize.xy * r5.xy;
    r11.xy = (int2)r3.xy;
    r11.zw = float2(0,0);
    r3.x = floatZSampler.Load(r11.xyz).x;
    r3.y = cmp(r3.x >= 0.984375);
    r4.w = 1.01587307 * r3.x;
    r3.x = r3.x * 64 + -63;
    r3.x = r3.y ? r3.x : r4.w;
    r3.x = max(9.99999994e-09, r3.x);
    r3.x = rcp(r3.x);
    r3.y = r2.w ? r3.x : r3.z;
    x2[1].x = r3.y;
    r3.x = 0.0419999994 + r3.x;
    r3.x = r5.w * r3.x;
    r3.x = cmp(1 < r3.x);
    r3.x = r3.x ? 1.000000 : 0;
    r3.x = r3.w * r3.x;
    r2.w = r2.w ? r3.x : r3.w;
    x0[1].x = r2.w;
    r1.w = r2.w + r1.w;
    r1.w = cmp(r1.w == 0.000000);
  } else {
    r1.w = -1;
  }
  if (r1.w == 0) {
    r3.xy = r0.yy * float2(0.5,0.5) + float2(2.33333325,3);
    r3.xy = float2(0.117647059,0.117647059) * r3.xy;
    r1.w = x1[0].x;
    r2.w = x0[0].x;
    r3.x = r3.x * r3.x + -r1.w;
    r1.w = r2.w * r3.x + r1.w;
    x1[0].x = r1.w;
    r3.xzw = r10.xyz * r1.www + r9.xyz;
    r1.w = cmp(r0.w < r1.w);
    r3.xz = renderTargetSize.xy * r3.xz;
    r11.xy = (int2)r3.xz;
    r11.zw = float2(0,0);
    r3.x = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.x >= 0.984375);
    r4.w = 1.01587307 * r3.x;
    r3.x = r3.x * 64 + -63;
    r3.x = r3.z ? r3.x : r4.w;
    r3.x = max(9.99999994e-09, r3.x);
    r3.x = rcp(r3.x);
    r3.z = x2[0].x;
    r3.z = r1.w ? r3.x : r3.z;
    x2[0].x = r3.z;
    r3.x = 0.0419999994 + r3.x;
    r3.x = r3.w * r3.x;
    r3.x = cmp(1 < r3.x);
    r3.x = r3.x ? 1.000000 : 0;
    r3.x = r3.x * r2.w;
    r1.w = r1.w ? r3.x : r2.w;
    x0[0].x = r1.w;
    r2.w = x1[1].x;
    r3.x = x0[1].x;
    r3.y = r3.y * r3.y + -r2.w;
    r2.w = r3.x * r3.y + r2.w;
    x1[1].x = r2.w;
    r3.yzw = r2.xyz * r2.www + r9.xyz;
    r2.w = cmp(r0.w < r2.w);
    r3.yz = renderTargetSize.xy * r3.yz;
    r11.xy = (int2)r3.yz;
    r11.zw = float2(0,0);
    r3.y = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.y >= 0.984375);
    r4.w = 1.01587307 * r3.y;
    r3.y = r3.y * 64 + -63;
    r3.y = r3.z ? r3.y : r4.w;
    r3.y = max(9.99999994e-09, r3.y);
    r3.y = rcp(r3.y);
    r3.z = x2[1].x;
    r3.z = r2.w ? r3.y : r3.z;
    x2[1].x = r3.z;
    r3.y = 0.0419999994 + r3.y;
    r3.y = r3.w * r3.y;
    r3.y = cmp(1 < r3.y);
    r3.y = r3.y ? 1.000000 : 0;
    r3.y = r3.x * r3.y;
    r2.w = r2.w ? r3.y : r3.x;
    x0[1].x = r2.w;
    r1.w = r2.w + r1.w;
    r1.w = cmp(r1.w == 0.000000);
  } else {
    r1.w = -1;
  }
  if (r1.w == 0) {
    r3.xy = r0.yy * float2(0.5,0.5) + float2(3.33333325,4);
    r3.xy = float2(0.117647059,0.117647059) * r3.xy;
    r1.w = x1[0].x;
    r2.w = x0[0].x;
    r3.x = r3.x * r3.x + -r1.w;
    r1.w = r2.w * r3.x + r1.w;
    x1[0].x = r1.w;
    r3.xzw = r10.xyz * r1.www + r9.xyz;
    r1.w = cmp(r0.w < r1.w);
    r3.xz = renderTargetSize.xy * r3.xz;
    r11.xy = (int2)r3.xz;
    r11.zw = float2(0,0);
    r3.x = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.x >= 0.984375);
    r4.w = 1.01587307 * r3.x;
    r3.x = r3.x * 64 + -63;
    r3.x = r3.z ? r3.x : r4.w;
    r3.x = max(9.99999994e-09, r3.x);
    r3.x = rcp(r3.x);
    r3.z = x2[0].x;
    r3.z = r1.w ? r3.x : r3.z;
    x2[0].x = r3.z;
    r3.x = 0.0419999994 + r3.x;
    r3.x = r3.w * r3.x;
    r3.x = cmp(1 < r3.x);
    r3.x = r3.x ? 1.000000 : 0;
    r3.x = r3.x * r2.w;
    r1.w = r1.w ? r3.x : r2.w;
    x0[0].x = r1.w;
    r2.w = x1[1].x;
    r3.x = x0[1].x;
    r3.y = r3.y * r3.y + -r2.w;
    r2.w = r3.x * r3.y + r2.w;
    x1[1].x = r2.w;
    r3.yzw = r2.xyz * r2.www + r9.xyz;
    r2.w = cmp(r0.w < r2.w);
    r3.yz = renderTargetSize.xy * r3.yz;
    r11.xy = (int2)r3.yz;
    r11.zw = float2(0,0);
    r3.y = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.y >= 0.984375);
    r4.w = 1.01587307 * r3.y;
    r3.y = r3.y * 64 + -63;
    r3.y = r3.z ? r3.y : r4.w;
    r3.y = max(9.99999994e-09, r3.y);
    r3.y = rcp(r3.y);
    r3.z = x2[1].x;
    r3.z = r2.w ? r3.y : r3.z;
    x2[1].x = r3.z;
    r3.y = 0.0419999994 + r3.y;
    r3.y = r3.w * r3.y;
    r3.y = cmp(1 < r3.y);
    r3.y = r3.y ? 1.000000 : 0;
    r3.y = r3.x * r3.y;
    r2.w = r2.w ? r3.y : r3.x;
    x0[1].x = r2.w;
    r1.w = r2.w + r1.w;
    r1.w = cmp(r1.w == 0.000000);
  } else {
    r1.w = -1;
  }
  if (r1.w == 0) {
    r3.xy = r0.yy * float2(0.5,0.5) + float2(4.33333349,5);
    r3.xy = float2(0.117647059,0.117647059) * r3.xy;
    r1.w = x1[0].x;
    r2.w = x0[0].x;
    r3.x = r3.x * r3.x + -r1.w;
    r1.w = r2.w * r3.x + r1.w;
    x1[0].x = r1.w;
    r3.xzw = r10.xyz * r1.www + r9.xyz;
    r1.w = cmp(r0.w < r1.w);
    r3.xz = renderTargetSize.xy * r3.xz;
    r11.xy = (int2)r3.xz;
    r11.zw = float2(0,0);
    r3.x = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.x >= 0.984375);
    r4.w = 1.01587307 * r3.x;
    r3.x = r3.x * 64 + -63;
    r3.x = r3.z ? r3.x : r4.w;
    r3.x = max(9.99999994e-09, r3.x);
    r3.x = rcp(r3.x);
    r3.z = x2[0].x;
    r3.z = r1.w ? r3.x : r3.z;
    x2[0].x = r3.z;
    r3.x = 0.0419999994 + r3.x;
    r3.x = r3.w * r3.x;
    r3.x = cmp(1 < r3.x);
    r3.x = r3.x ? 1.000000 : 0;
    r3.x = r3.x * r2.w;
    r1.w = r1.w ? r3.x : r2.w;
    x0[0].x = r1.w;
    r2.w = x1[1].x;
    r3.x = x0[1].x;
    r3.y = r3.y * r3.y + -r2.w;
    r2.w = r3.x * r3.y + r2.w;
    x1[1].x = r2.w;
    r3.yzw = r2.xyz * r2.www + r9.xyz;
    r2.w = cmp(r0.w < r2.w);
    r3.yz = renderTargetSize.xy * r3.yz;
    r11.xy = (int2)r3.yz;
    r11.zw = float2(0,0);
    r3.y = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.y >= 0.984375);
    r4.w = 1.01587307 * r3.y;
    r3.y = r3.y * 64 + -63;
    r3.y = r3.z ? r3.y : r4.w;
    r3.y = max(9.99999994e-09, r3.y);
    r3.y = rcp(r3.y);
    r3.z = x2[1].x;
    r3.z = r2.w ? r3.y : r3.z;
    x2[1].x = r3.z;
    r3.y = 0.0419999994 + r3.y;
    r3.y = r3.w * r3.y;
    r3.y = cmp(1 < r3.y);
    r3.y = r3.y ? 1.000000 : 0;
    r3.y = r3.x * r3.y;
    r2.w = r2.w ? r3.y : r3.x;
    x0[1].x = r2.w;
    r1.w = r2.w + r1.w;
    r1.w = cmp(r1.w == 0.000000);
  } else {
    r1.w = -1;
  }
  if (r1.w == 0) {
    r3.xy = r0.yy * float2(0.5,0.5) + float2(5.33333349,6);
    r3.xy = float2(0.117647059,0.117647059) * r3.xy;
    r1.w = x1[0].x;
    r2.w = x0[0].x;
    r3.x = r3.x * r3.x + -r1.w;
    r1.w = r2.w * r3.x + r1.w;
    x1[0].x = r1.w;
    r3.xzw = r10.xyz * r1.www + r9.xyz;
    r1.w = cmp(r0.w < r1.w);
    r3.xz = renderTargetSize.xy * r3.xz;
    r11.xy = (int2)r3.xz;
    r11.zw = float2(0,0);
    r3.x = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.x >= 0.984375);
    r4.w = 1.01587307 * r3.x;
    r3.x = r3.x * 64 + -63;
    r3.x = r3.z ? r3.x : r4.w;
    r3.x = max(9.99999994e-09, r3.x);
    r3.x = rcp(r3.x);
    r3.z = x2[0].x;
    r3.z = r1.w ? r3.x : r3.z;
    x2[0].x = r3.z;
    r3.x = 0.0419999994 + r3.x;
    r3.x = r3.w * r3.x;
    r3.x = cmp(1 < r3.x);
    r3.x = r3.x ? 1.000000 : 0;
    r3.x = r3.x * r2.w;
    r1.w = r1.w ? r3.x : r2.w;
    x0[0].x = r1.w;
    r2.w = x1[1].x;
    r3.x = x0[1].x;
    r3.y = r3.y * r3.y + -r2.w;
    r2.w = r3.x * r3.y + r2.w;
    x1[1].x = r2.w;
    r3.yzw = r2.xyz * r2.www + r9.xyz;
    r2.w = cmp(r0.w < r2.w);
    r3.yz = renderTargetSize.xy * r3.yz;
    r11.xy = (int2)r3.yz;
    r11.zw = float2(0,0);
    r3.y = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.y >= 0.984375);
    r4.w = 1.01587307 * r3.y;
    r3.y = r3.y * 64 + -63;
    r3.y = r3.z ? r3.y : r4.w;
    r3.y = max(9.99999994e-09, r3.y);
    r3.y = rcp(r3.y);
    r3.z = x2[1].x;
    r3.z = r2.w ? r3.y : r3.z;
    x2[1].x = r3.z;
    r3.y = 0.0419999994 + r3.y;
    r3.y = r3.w * r3.y;
    r3.y = cmp(1 < r3.y);
    r3.y = r3.y ? 1.000000 : 0;
    r3.y = r3.x * r3.y;
    r2.w = r2.w ? r3.y : r3.x;
    x0[1].x = r2.w;
    r1.w = r2.w + r1.w;
    r1.w = cmp(r1.w == 0.000000);
  } else {
    r1.w = -1;
  }
  if (r1.w == 0) {
    r3.xy = r0.yy * float2(0.5,0.5) + float2(6.33333349,7);
    r3.xy = float2(0.117647059,0.117647059) * r3.xy;
    r1.w = x1[0].x;
    r2.w = x0[0].x;
    r3.x = r3.x * r3.x + -r1.w;
    r1.w = r2.w * r3.x + r1.w;
    x1[0].x = r1.w;
    r3.xzw = r10.xyz * r1.www + r9.xyz;
    r1.w = cmp(r0.w < r1.w);
    r3.xz = renderTargetSize.xy * r3.xz;
    r11.xy = (int2)r3.xz;
    r11.zw = float2(0,0);
    r3.x = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.x >= 0.984375);
    r4.w = 1.01587307 * r3.x;
    r3.x = r3.x * 64 + -63;
    r3.x = r3.z ? r3.x : r4.w;
    r3.x = max(9.99999994e-09, r3.x);
    r3.x = rcp(r3.x);
    r3.z = x2[0].x;
    r3.z = r1.w ? r3.x : r3.z;
    x2[0].x = r3.z;
    r3.x = 0.0419999994 + r3.x;
    r3.x = r3.w * r3.x;
    r3.x = cmp(1 < r3.x);
    r3.x = r3.x ? 1.000000 : 0;
    r3.x = r3.x * r2.w;
    r1.w = r1.w ? r3.x : r2.w;
    x0[0].x = r1.w;
    r2.w = x1[1].x;
    r3.x = x0[1].x;
    r3.y = r3.y * r3.y + -r2.w;
    r2.w = r3.x * r3.y + r2.w;
    x1[1].x = r2.w;
    r3.yzw = r2.xyz * r2.www + r9.xyz;
    r2.w = cmp(r0.w < r2.w);
    r3.yz = renderTargetSize.xy * r3.yz;
    r11.xy = (int2)r3.yz;
    r11.zw = float2(0,0);
    r3.y = floatZSampler.Load(r11.xyz).x;
    r3.z = cmp(r3.y >= 0.984375);
    r4.w = 1.01587307 * r3.y;
    r3.y = r3.y * 64 + -63;
    r3.y = r3.z ? r3.y : r4.w;
    r3.y = max(9.99999994e-09, r3.y);
    r3.y = rcp(r3.y);
    r3.z = x2[1].x;
    r3.z = r2.w ? r3.y : r3.z;
    x2[1].x = r3.z;
    r3.y = 0.0419999994 + r3.y;
    r3.y = r3.w * r3.y;
    r3.y = cmp(1 < r3.y);
    r3.y = r3.y ? 1.000000 : 0;
    r3.y = r3.x * r3.y;
    r2.w = r2.w ? r3.y : r3.x;
    x0[1].x = r2.w;
    r1.w = r2.w + r1.w;
    r1.w = cmp(r1.w == 0.000000);
  } else {
    r1.w = -1;
  }
  if (r1.w == 0) {
    r3.xy = r0.yy * float2(0.5,0.5) + float2(7.33333349,8);
    r3.xy = float2(0.117647059,0.117647059) * r3.xy;
    r0.y = x1[0].x;
    r1.w = x0[0].x;
    r2.w = r3.x * r3.x + -r0.y;
    r0.y = r1.w * r2.w + r0.y;
    r3.xzw = r10.xyz * r0.yyy + r9.xyz;
    r0.y = cmp(r0.w < r0.y);
    r3.xz = renderTargetSize.xy * r3.xz;
    r10.xy = (int2)r3.xz;
    r10.zw = float2(0,0);
    r2.w = floatZSampler.Load(r10.xyz).x;
    r3.x = cmp(r2.w >= 0.984375);
    r3.z = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.x ? r2.w : r3.z;
    r2.w = max(9.99999994e-09, r2.w);
    r2.w = rcp(r2.w);
    r3.x = x2[0].x;
    r3.x = r0.y ? r2.w : r3.x;
    x2[0].x = r3.x;
    r2.w = 0.0419999994 + r2.w;
    r2.w = r3.w * r2.w;
    r2.w = cmp(1 < r2.w);
    r2.w = r2.w ? 1.000000 : 0;
    r2.w = r2.w * r1.w;
    r0.y = r0.y ? r2.w : r1.w;
    x0[0].x = r0.y;
    r0.y = x1[1].x;
    r1.w = x0[1].x;
    r2.w = r3.y * r3.y + -r0.y;
    r0.y = r1.w * r2.w + r0.y;
    r2.xyz = r2.xyz * r0.yyy + r9.xyz;
    r0.y = cmp(r0.w < r0.y);
    r2.xy = renderTargetSize.xy * r2.xy;
    r3.xy = (int2)r2.xy;
    r3.zw = float2(0,0);
    r0.w = floatZSampler.Load(r3.xyz).x;
    r2.x = cmp(r0.w >= 0.984375);
    r2.y = 1.01587307 * r0.w;
    r0.w = r0.w * 64 + -63;
    r0.w = r2.x ? r0.w : r2.y;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r2.x = x2[1].x;
    r2.x = r0.y ? r0.w : r2.x;
    x2[1].x = r2.x;
    r0.w = 0.0419999994 + r0.w;
    r0.w = r2.z * r0.w;
    r0.w = cmp(1 < r0.w);
    r0.w = r0.w ? 1.000000 : 0;
    r0.w = r1.w * r0.w;
    r0.y = r0.y ? r0.w : r1.w;
    x0[1].x = r0.y;
  }
  r0.y = x2[0].x;
  r0.y = r0.y + -r5.z;
  r0.y = cmp(2.4000001 < abs(r0.y));
  r0.w = x0[0].x;
  r0.w = -r0.w * 0.5 + 1;
  r0.y = r0.y ? 0.5 : r0.w;
  r0.w = x2[1].x;
  r0.w = r0.w + -r5.z;
  r0.w = cmp(2.4000001 < abs(r0.w));
  r1.w = x0[1].x;
  r1.w = 0.5 * r1.w;
  r0.w = r0.w ? -0.5 : -r1.w;
  r0.y = r0.y + r0.w;
  r0.y = saturate(1 + -r0.y);
  r0.w = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = r0.w * r0.y;
  r0.y = min(r39.w, r0.y);
  r0.y = r39.z * r0.y;
  r2.xyz = r0.yyy * r33.xyz;
  r3.xyz = r2.xyz * r35.xyz + r29.xyz;
  r5.xyz = r2.xyz * r36.xyz + r30.xyz;
  r9.xyz = r2.xyz * r37.xyz + r32.xyz;
  r2.xyz = r2.xyz * r38.xyz + r31.xyz;
  r0.y = -debugGlossOverride.w * r0.z + 1;
  r0.z = 5 * r0.y;
  r0.w = r0.y * 5 + -2.5;
  r0.w = saturate(0.400000006 * r0.w);
  r0.w = 100 * r0.w;
  r7.zw = -r0.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r1.w = exp2(r7.z);
  r1.w = r7.x * r1.w;
  r1.w = 9.1368103 * r1.w;
  r2.w = r0.z * r0.y;
  r2.w = -r2.w * 2.0159049 + r7.w;
  r2.w = exp2(r2.w);
  r2.w = r7.x * r2.w;
  r2.w = 9.70808983 * r2.w;
  r1.w = max(r2.w, r1.w);
  r1.w = max(1.26815999, r1.w);
  r10.xy = float2(0,0);
  r11.w = 0;
  r13.yz = float2(0,1);
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r2.w = 0;
  r3.w = 0;
  while (true) {
    r4.w = cmp((uint)r3.w >= numRefProbes);
    if (r4.w != 0) break;
    r10.z = (uint)r3.w >> 5;
    r11.xyz = (int3)r10.xyz + (int3)r19.xyz;
    r4.w = visibleProbes.Load(r11.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r3.w, l(0), t15.wxyz
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r3.w, l(16), t15.xyzw
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r3.w, l(32), t15.yxwz
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r3.w, l(48), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r3.w, l(64), t15.zwxy
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r3.w, l(80), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r7.zw, r3.w, l(96), t15.xxxy
  r7.z = samp0[]..swiz;
  r7.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r3.w, l(116), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r3.w, l(132), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r3.w, l(148), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r3.w, l(164), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r3.w, l(180), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r3.w, l(196), t15.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xy, r3.w, l(212), t15.xyxx
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
    r11.xyz = v6.xyz + -r21.yzw;
    r5.w = dot(r11.xyz, r11.xyz);
    r5.w = sqrt(r5.w);
    r5.w = cmp(probeDebugRadius >= r5.w);
    r8.w = (int)r27.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(0), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(16), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(32), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r8.w, l(48), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r8.w, l(64), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r8.w, l(80), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
    r9.w = dot(r34.xyz, r11.xyz);
    r9.w = saturate(r9.w + r34.w);
    r10.z = dot(r35.xyz, r11.xyz);
    r10.z = saturate(r10.z + r35.w);
    r9.w = r10.z * r9.w;
    r10.z = dot(r36.xyz, r11.xyz);
    r10.z = saturate(r10.z + r36.w);
    r9.w = r10.z * r9.w;
    r10.z = dot(r37.xyz, r11.xyz);
    r10.z = saturate(r10.z + r37.w);
    r9.w = r10.z * r9.w;
    r10.z = dot(r38.xyz, r11.xyz);
    r10.z = saturate(r10.z + r38.w);
    r9.w = r10.z * r9.w;
    r10.z = dot(r39.xyz, r11.xyz);
    r10.z = saturate(r10.z + r39.w);
    r13.x = r10.z * r9.w;
    r9.w = (int)r7.z & 1;
    r10.zw = r9.ww ? r13.xy : r13.zx;
    r34.xy = r27.zw;
    r34.z = r28.z;
    r9.w = dot(r12.xyz, r34.xyz);
    r13.x = dot(r11.xyz, r34.xyz);
    r13.x = r13.x + -r28.w;
    r13.w = cmp(r13.x >= 0);
    r13.x = max(abs(r13.x), r0.w);
    r13.x = r13.w ? r13.x : -r13.x;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r13.x / r9.w;
    r9.w = min(131072, abs(r9.w));
    r28.z = r29.z;
    r13.x = dot(r12.xyz, r28.xyz);
    r13.w = dot(r11.xyz, r28.xyz);
    r13.w = r13.w + -r29.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r0.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r9.w = min(abs(r13.x), r9.w);
    r29.z = r30.z;
    r13.x = dot(r12.xyz, r29.xyz);
    r13.w = dot(r11.xyz, r29.xyz);
    r13.w = r13.w + -r30.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r0.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r9.w = min(abs(r13.x), r9.w);
    r30.z = r31.z;
    r13.x = dot(r12.xyz, r30.xyz);
    r13.w = dot(r11.xyz, r30.xyz);
    r13.w = r13.w + -r31.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r0.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r9.w = min(abs(r13.x), r9.w);
    r31.z = r32.x;
    r13.x = dot(r12.xyz, r31.xyz);
    r13.w = dot(r11.xyz, r31.xyz);
    r13.w = r13.w + -r32.y;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r0.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r9.w = min(abs(r13.x), r9.w);
    r33.zw = r32.zw;
    r13.x = dot(r12.zxy, r33.xzw);
    r13.w = dot(r11.zxy, r33.xzw);
    r13.w = r13.w + -r33.y;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r0.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r9.w = min(abs(r13.x), r9.w);
    r28.x = r24.w;
    r28.yz = r25.zw;
    r28.xyz = r28.xyz + r11.xyz;
    r28.xyz = r12.xyz * r9.www + r28.xyz;
    r13.x = dot(r28.xyz, r28.xyz);
    r13.x = sqrt(r13.x);
    r9.w = r9.w / r13.x;
    r9.w = r9.w + r9.w;
    r9.w = sqrt(r9.w);
    r9.w = r0.y * 5 + r9.w;
    r9.w = -0.844799995 + r9.w;
    r21.y = r22.z;
    r21.z = r23.x;
    r29.x = dot(r28.xyz, r21.xyz);
    r30.xy = r22.xw;
    r30.z = r23.w;
    r29.y = dot(r28.xyz, r30.xyz);
    r23.x = r22.y;
    r29.z = dot(r28.xyz, r23.xyz);
    if (6 == 0) r13.x = 0; else if (6+25 < 32) {     r13.x = (uint)r27.y << (32-(6 + 25)); r13.x = (uint)r13.x >> (32-6);    } else r13.x = (uint)r27.y >> 25;
    if (9 == 0) r13.w = 0; else if (9+16 < 32) {     r13.w = (uint)r27.y << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);    } else r13.w = (uint)r27.y >> 16;
    r29.w = (uint)r13.w;
    r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r9.w).xyz;
    r27.yzw = (int3)r22.xyz & int3(-2147483648,-2147483648,-2147483648);
    r27.yzw = cmp((int3)r27.yzw == int3(2139095040,2139095040,2139095040));
    r9.w = (int)r27.z | (int)r27.y;
    r9.w = (int)r27.w | (int)r9.w;
    r22.xyz = r9.www ? float3(1,1,0) : r22.xyz;
    r28.x = dot(r11.xyz, r21.xyz);
    r28.y = dot(r11.xyz, r30.xyz);
    r28.z = dot(r11.xyz, r23.xyz);
    r24.xyz = saturate(r28.xyz * r24.xyz + float3(0.5,0.5,0.5));
    r25.z = r26.x;
    r24.xyz = r24.xyz * r25.xyz + r26.yzw;
    r29.x = dot(r6.xyz, r21.xyz);
    r29.y = dot(r6.xyz, r30.xyz);
    r29.z = dot(r6.xyz, r23.xyz);
    r21.xyz = cmp(float3(0,0,0) < r29.xyz);
    r14.z = r21.x ? 0 : 0.5;
    r23.xyz = r24.xyz + r14.xyz;
    r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r15.z = r21.y ? 0 : 0.5;
    r21.xyw = r24.xyz + r15.xyz;
    r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
    r16.z = r21.z ? 0 : 0.5;
    r24.xyz = r24.xyz + r16.xyz;
    r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r25.xyz = r29.xyz * r29.xyz;
    r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
    r27.yzw = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
    r27.yzw = cmp((int3)r27.yzw == int3(2139095040,2139095040,2139095040));
    r9.w = (int)r27.z | (int)r27.y;
    r9.w = (int)r27.w | (int)r9.w;
    r26.xyz = r9.www ? float3(1,1,0) : r26.xyz;
    r28.xyzw = r18.xyzw;
    r27.yzw = r20.yzw;
    r9.w = r2.w;
    r13.w = r4.w;
    while (true) {
      if (r13.w == 0) break;
      r14.z = firstbitlow((uint)r13.w);
      r14.z = 1 << (int)r14.z;
      r14.w = (int)r13.w & (int)r14.z;
      if (r14.w != 0) {
        r14.z = ~(int)r14.z;
        r13.w = (int)r13.w & (int)r14.z;
        if (r5.w != 0) {
          r14.z = r7.z;
          r29.xy = r10.zw;
          r14.w = 1;
          while (true) {
            r15.z = cmp((int)r14.w >= (int)r13.x);
            if (r15.z != 0) break;
            r15.z = (int)r8.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.z, l(0), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.z, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.z, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.z, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r15.z, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r15.z, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r15.z = dot(r30.xyz, r11.xyz);
            r15.z = saturate(r15.z + r30.w);
            r15.z = r29.x * r15.z;
            r15.w = dot(r31.xyz, r11.xyz);
            r15.w = saturate(r15.w + r31.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r32.xyz, r11.xyz);
            r15.w = saturate(r15.w + r32.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r33.xyz, r11.xyz);
            r15.w = saturate(r15.w + r33.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r34.xyz, r11.xyz);
            r15.w = saturate(r15.w + r34.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r35.xyz, r11.xyz);
            r15.w = saturate(r15.w + r35.w);
            r29.x = r15.z * r15.w;
            r16.z = (uint)r14.z >> 2;
            if (1 == 0) r16.w = 0; else if (1+2 < 32) {             r16.w = (uint)r14.z << (32-(1 + 2)); r16.w = (uint)r16.w >> (32-1);            } else r16.w = (uint)r14.z >> 2;
            r17.z = (int)r16.z & 2;
            r17.w = max(r29.y, r29.x);
            r15.z = -r15.z * r15.w + 1;
            r15.z = r29.y * r15.z;
            r17.y = r17.z ? r15.z : r17.w;
            r29.xy = r16.ww ? r29.xy : r17.xy;
            r14.w = (int)r14.w + 1;
            r14.z = r16.z;
          }
          r29.y = saturate(r29.y);
          r14.z = r29.y * r7.w;
          r14.w = cmp(0 < r14.z);
          if (r14.w != 0) {
            r30.z = r29.y * r7.w + r27.w;
            r14.z = r14.z * r27.x;
            r17.yzw = r25.xyz * r14.zzz;
            r29.xzw = r21.xyw * r17.zzz;
            r29.xzw = r23.xyz * r17.yyy + r29.xzw;
            r17.yzw = r24.xyz * r17.www + r29.xzw;
            r29.xzw = r17.yzw * r26.xyz;
            r14.w = dot(r29.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r31.xyz = r17.yzw * r26.xyz + r28.xyz;
            r15.z = r14.w * r1.w;
            r17.yzw = r22.xyz * r14.zzz;
            r14.z = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r14.z = r1.w * r14.w + r14.z;
            r14.z = r15.z / r14.z;
            r32.x = r28.w;
            r32.yz = r27.yz;
            r30.xyw = r17.zwy * r14.zzz + r32.yzx;
            r31.w = r30.w;
          } else {
            r31.xyzw = r28.xyzw;
            r30.xyz = r27.yzw;
          }
          r9.w = -1;
          r28.xyzw = r31.xyzw;
          r27.yzw = r30.xyz;
          break;
        }
      }
    }
    if (r9.w != 0) {
      r18.xyzw = r28.xyzw;
      r20.yzw = r27.yzw;
      r2.w = -1;
      break;
    }
    r3.w = (int)r3.w + 32;
    r18.xyzw = r28.xyzw;
    r20.yzw = r27.yzw;
    r2.w = r9.w;
  }
  if (r2.w == 0) {
    r2.w = numRefProbes + -numOverrideProbes;
    r3.w = (int)r2.w & -32;
    r4.w = (int)r2.w + (int)-r3.w;
    r5.w = numRefProbes & -32;
    r7.z = (int)-r5.w + numRefProbes;
    r10.xy = float2(0,0);
    r11.w = 0;
    r13.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.x = 1;
    r16.xy = float2(0,0);
    r17.xy = float2(0,0);
    r21.xyzw = r18.xyzw;
    r22.yzw = r20.yzw;
    r7.w = r3.w;
    while (true) {
      r8.w = cmp((uint)r7.w >= numRefProbes);
      if (r8.w != 0) break;
      r10.z = (uint)r7.w >> 5;
      r11.xyz = (int3)r10.xyz + (int3)r19.xyz;
      r8.w = visibleProbes.Load(r11.xyzw).x;
      r9.w = cmp((int)r3.w == (int)r7.w);
      bitmask.z = ((~(-1 << r4.w)) << 0) & 0xffffffff;  r10.z = (((uint)0 << 0) & bitmask.z) | ((uint)r8.w & ~bitmask.z);
      r8.w = r9.w ? r10.z : r8.w;
      r9.w = cmp((int)r5.w == (int)r7.w);
      if (r7.z == 0) r10.z = 0; else if (r7.z+0 < 32) {       r10.z = (uint)r8.w << (32-(r7.z + 0)); r10.z = (uint)r10.z >> (32-r7.z);      } else r10.z = (uint)r8.w >> 0;
      r8.w = r9.w ? r10.z : r8.w;
      r9.w = (int)r7.w + numLights;
      r23.xyzw = r21.xyzw;
      r24.xyz = r22.yzw;
      r10.z = r8.w;
      while (true) {
        if (r10.z == 0) break;
        r10.w = firstbitlow((uint)r10.z);
        r11.x = 1 << (int)r10.w;
        r11.y = (int)r10.z & (int)r11.x;
        if (r11.y != 0) {
          r10.z = (int)r10.z ^ (int)r11.x;
          r11.x = (int)r9.w + (int)r10.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r11.x, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r11.xy, r11.x, l(16), t11.xyxx
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
          r25.xyz = -v6.xyz + r25.xyz;
          r11.z = r25.w;
          r11.xyz = cmp(abs(r25.xyz) < r11.zxy);
          r11.x = r11.y ? r11.x : 0;
          r11.x = r11.z ? r11.x : 0;
          if (r11.x != 0) {
            r10.w = (int)r7.w + (int)r10.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.xy, r10.w, l(96), t15.xyxx
          r11.x = samp0[]..swiz;
          r11.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v6.xyz + -r25.yzw;
            r11.z = (int)r26.w & 0x0000ffff;
            if (6 == 0) r13.w = 0; else if (6+25 < 32) {             r13.w = (uint)r26.w << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);            } else r13.w = (uint)r26.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r11.z, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r11.z, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r11.z, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r11.z, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r11.z, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r11.z, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r14.w = dot(r28.xyz, r27.xyz);
            r14.w = saturate(r14.w + r28.w);
            r15.z = dot(r29.xyz, r27.xyz);
            r15.z = saturate(r15.z + r29.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r30.xyz, r27.xyz);
            r15.z = saturate(r15.z + r30.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r31.xyz, r27.xyz);
            r15.z = saturate(r15.z + r31.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r32.xyz, r27.xyz);
            r15.z = saturate(r15.z + r32.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r33.xyz, r27.xyz);
            r15.z = saturate(r15.z + r33.w);
            r13.x = r15.z * r14.w;
            r14.w = r11.x ? 0.000000 : 0;
            r15.zw = r14.ww ? r13.xy : r13.zx;
            r13.x = r11.x;
            r28.xy = r15.zw;
            r14.w = 1;
            while (true) {
              r16.w = cmp((int)r14.w >= (int)r13.w);
              if (r16.w != 0) break;
              r16.w = (int)r11.z + (int)r14.w;
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
              r16.w = dot(r29.xyz, r27.xyz);
              r16.w = saturate(r16.w + r29.w);
              r16.w = r28.x * r16.w;
              r17.w = dot(r30.xyz, r27.xyz);
              r17.w = saturate(r17.w + r30.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r31.xyz, r27.xyz);
              r17.w = saturate(r17.w + r31.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r32.xyz, r27.xyz);
              r17.w = saturate(r17.w + r32.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r33.xyz, r27.xyz);
              r17.w = saturate(r17.w + r33.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r34.xyz, r27.xyz);
              r17.w = saturate(r17.w + r34.w);
              r28.x = r17.w * r16.w;
              r19.w = (uint)r13.x >> 2;
              if (1 == 0) r25.w = 0; else if (1+2 < 32) {               r25.w = (uint)r13.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);              } else r25.w = (uint)r13.x >> 2;
              r27.w = (int)r19.w & 2;
              r28.z = max(r28.y, r28.x);
              r16.w = -r16.w * r17.w + 1;
              r16.w = r28.y * r16.w;
              r15.y = r27.w ? r16.w : r28.z;
              r28.xy = r25.ww ? r28.xy : r15.xy;
              r14.w = (int)r14.w + 1;
              r13.x = r19.w;
            }
            r28.y = saturate(r28.y);
            r11.x = r28.y * r11.y;
            r11.z = cmp(0 < r11.x);
            if (r11.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(16), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r10.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r24.z = r28.y * r11.y + r24.z;
              r10.w = r11.x * r26.z;
              r26.z = r34.z;
              r11.x = dot(r12.xyz, r26.xyz);
              r11.y = dot(r27.xyz, r26.xyz);
              r11.y = r11.y + -r34.w;
              r11.z = cmp(r11.y >= 0);
              r11.y = max(abs(r11.y), r0.w);
              r11.y = r11.z ? r11.y : -r11.y;
              r11.x = max(1.00000001e-07, -r11.x);
              r11.x = r11.y / r11.x;
              r11.x = min(131072, abs(r11.x));
              r34.z = r35.z;
              r11.y = dot(r12.xyz, r34.xyz);
              r11.z = dot(r27.xyz, r34.xyz);
              r11.z = r11.z + -r35.w;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r0.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r35.z = r36.z;
              r11.y = dot(r12.xyz, r35.xyz);
              r11.z = dot(r27.xyz, r35.xyz);
              r11.z = r11.z + -r36.w;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r0.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r36.z = r37.z;
              r11.y = dot(r12.xyz, r36.xyz);
              r11.z = dot(r27.xyz, r36.xyz);
              r11.z = r11.z + -r37.w;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r0.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r37.z = r38.x;
              r11.y = dot(r12.xyz, r37.xyz);
              r11.z = dot(r27.xyz, r37.xyz);
              r11.z = r11.z + -r38.y;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r0.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r39.zw = r38.zw;
              r11.y = dot(r12.zxy, r39.xzw);
              r11.z = dot(r27.zxy, r39.xzw);
              r11.z = r11.z + -r39.y;
              r13.x = cmp(r11.z >= 0);
              r11.z = max(abs(r11.z), r0.w);
              r11.z = r13.x ? r11.z : -r11.z;
              r11.y = max(1.00000001e-07, -r11.y);
              r11.y = r11.z / r11.y;
              r11.x = min(r11.x, abs(r11.y));
              r26.x = r31.w;
              r26.yz = r32.zw;
              r15.yzw = r26.xyz + r27.xyz;
              r15.yzw = r12.xyz * r11.xxx + r15.yzw;
              r11.y = dot(r15.yzw, r15.yzw);
              r11.y = sqrt(r11.y);
              r11.x = r11.x / r11.y;
              r11.x = r11.x + r11.x;
              r11.x = sqrt(r11.x);
              r11.x = r0.y * 5 + r11.x;
              r11.x = -0.844799995 + r11.x;
              r25.y = r29.z;
              r25.z = r30.x;
              r34.x = dot(r15.yzw, r25.xyz);
              r26.xy = r29.xw;
              r26.z = r30.w;
              r34.y = dot(r15.yzw, r26.xyz);
              r30.x = r29.y;
              r34.z = dot(r15.yzw, r30.xyz);
              if (9 == 0) r11.y = 0; else if (9+16 < 32) {               r11.y = (uint)r26.w << (32-(9 + 16)); r11.y = (uint)r11.y >> (32-9);              } else r11.y = (uint)r26.w >> 16;
              r34.w = (uint)r11.y;
              r11.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r11.x).xyz;
              r15.yzw = (int3)r11.xyz & int3(-2147483648,-2147483648,-2147483648);
              r15.yzw = cmp((int3)r15.yzw == int3(2139095040,2139095040,2139095040));
              r13.x = (int)r15.z | (int)r15.y;
              r13.x = (int)r15.w | (int)r13.x;
              r11.xyz = r13.xxx ? float3(1,1,0) : r11.xyz;
              r29.x = dot(r27.xyz, r25.xyz);
              r29.y = dot(r27.xyz, r26.xyz);
              r29.z = dot(r27.xyz, r30.xyz);
              r15.yzw = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r15.yzw = r15.yzw * r32.xyz + r33.yzw;
              r34.x = dot(r6.xyz, r25.xyz);
              r34.y = dot(r6.xyz, r26.xyz);
              r34.z = dot(r6.xyz, r30.xyz);
              r25.xyz = cmp(float3(0,0,0) < r34.xyz);
              r14.z = r25.x ? 0 : 0.5;
              r26.xyz = r15.yzw + r14.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r27.xyz = r34.xyz * r34.xyz;
              r27.xyz = r27.xyz * r10.www;
              r16.z = r25.y ? 0 : 0.5;
              r25.xyw = r16.xyz + r15.yzw;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r27.yyy;
              r25.xyw = r26.xyz * r27.xxx + r25.xyw;
              r17.z = r25.z ? 0 : 0.5;
              r15.yzw = r17.xyz + r15.yzw;
              r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
              r15.yzw = r15.yzw * r27.zzz + r25.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
              r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
              r13.x = (int)r26.y | (int)r26.x;
              r13.x = (int)r26.z | (int)r13.x;
              r25.xyz = r13.xxx ? float3(1,1,0) : r25.xyz;
              r26.xyz = r25.xyz * r15.yzw;
              r13.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r23.xyz = r15.yzw * r25.xyz + r23.xyz;
              r13.w = r13.x * r1.w;
              r11.xyz = r11.xyz * r10.www;
              r10.w = dot(r11.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r10.w = r1.w * r13.x + r10.w;
              r10.w = r13.w / r10.w;
              r25.x = r23.w;
              r25.yz = r24.xy;
              r24.xyw = r11.yzx * r10.www + r25.yzx;
              r23.w = r24.w;
            }
          }
        }
      }
      r21.xyzw = r23.xyzw;
      r22.yzw = r24.xyz;
      r7.w = (int)r7.w + 32;
    }
    r5.w = cmp(r22.w < 1);
    if (r5.w != 0) {
      r10.xy = float2(0,0);
      r11.w = 0;
      r13.yz = float2(0,1);
      r14.xy = float2(0,0);
      r15.x = 1;
      r16.xy = float2(0,0);
      r17.xy = float2(0,0);
      r23.x = r21.w;
      r23.yzw = r22.yzw;
      r24.xyz = r21.xyz;
      r5.w = r22.w;
      r7.z = 0;
      while (true) {
        r7.w = cmp((uint)r7.z >= (uint)r2.w);
        if (r7.w != 0) break;
        r10.z = (uint)r7.z >> 5;
        r11.xyz = (int3)r10.xyz + (int3)r19.xyz;
        r7.w = visibleProbes.Load(r11.xyzw).x;
        r8.w = cmp((int)r3.w == (int)r7.z);
        if (r4.w == 0) r9.w = 0; else if (r4.w+0 < 32) {         r9.w = (uint)r7.w << (32-(r4.w + 0)); r9.w = (uint)r9.w >> (32-r4.w);        } else r9.w = (uint)r7.w >> 0;
        r7.w = r8.w ? r9.w : r7.w;
        r8.w = (int)r7.z + numLights;
        r25.xyzw = r23.xyzw;
        r11.xyz = r24.xyz;
        r9.w = r5.w;
        r10.z = r7.w;
        while (true) {
          if (r10.z == 0) break;
          r10.w = firstbitlow((uint)r10.z);
          r13.w = 1 << (int)r10.w;
          r14.w = (int)r10.z & (int)r13.w;
          if (r14.w != 0) {
            r10.z = (int)r10.z ^ (int)r13.w;
            r13.w = (int)r8.w + (int)r10.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(0), t11.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xy, r13.w, l(16), t11.xyxx
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
            r26.xyz = -v6.xyz + r26.xyz;
            r27.z = r26.w;
            r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
            r13.w = r26.y ? r26.x : 0;
            r13.w = r26.z ? r13.w : 0;
            if (r13.w != 0) {
              r10.w = (int)r7.z + (int)r10.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(0), t15.wxyz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r10.w, l(96), t15.xxxy
            r15.z = samp0[]..swiz;
            r15.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(116), t15.zwxy
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r28.xyz = v6.xyz + -r26.yzw;
              r13.w = (int)r27.w & 0x0000ffff;
              if (6 == 0) r14.w = 0; else if (6+25 < 32) {               r14.w = (uint)r27.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);              } else r14.w = (uint)r27.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r16.w = dot(r29.xyz, r28.xyz);
              r16.w = saturate(r16.w + r29.w);
              r17.w = dot(r30.xyz, r28.xyz);
              r17.w = saturate(r17.w + r30.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r31.xyz, r28.xyz);
              r17.w = saturate(r17.w + r31.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r32.xyz, r28.xyz);
              r17.w = saturate(r17.w + r32.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r33.xyz, r28.xyz);
              r17.w = saturate(r17.w + r33.w);
              r16.w = r17.w * r16.w;
              r17.w = dot(r34.xyz, r28.xyz);
              r17.w = saturate(r17.w + r34.w);
              r13.x = r17.w * r16.w;
              r16.w = (int)r15.z & 1;
              r29.xy = r16.ww ? r13.xy : r13.zx;
              r13.x = r15.z;
              r30.xy = r29.xy;
              r16.w = 1;
              while (true) {
                r17.w = cmp((int)r16.w >= (int)r14.w);
                if (r17.w != 0) break;
                r17.w = (int)r13.w + (int)r16.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(0), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(16), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(32), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(48), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(64), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(80), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
                r17.w = dot(r31.xyz, r28.xyz);
                r17.w = saturate(r17.w + r31.w);
                r17.w = r30.x * r17.w;
                r19.w = dot(r32.xyz, r28.xyz);
                r19.w = saturate(r19.w + r32.w);
                r17.w = r19.w * r17.w;
                r19.w = dot(r33.xyz, r28.xyz);
                r19.w = saturate(r19.w + r33.w);
                r17.w = r19.w * r17.w;
                r19.w = dot(r34.xyz, r28.xyz);
                r19.w = saturate(r19.w + r34.w);
                r17.w = r19.w * r17.w;
                r19.w = dot(r35.xyz, r28.xyz);
                r19.w = saturate(r19.w + r35.w);
                r17.w = r19.w * r17.w;
                r19.w = dot(r36.xyz, r28.xyz);
                r19.w = saturate(r19.w + r36.w);
                r30.x = r19.w * r17.w;
                r20.w = (uint)r13.x >> 2;
                if (1 == 0) r24.w = 0; else if (1+2 < 32) {                 r24.w = (uint)r13.x << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);                } else r24.w = (uint)r13.x >> 2;
                r26.w = (int)r20.w & 2;
                r28.w = max(r30.y, r30.x);
                r17.w = -r17.w * r19.w + 1;
                r17.w = r30.y * r17.w;
                r15.y = r26.w ? r17.w : r28.w;
                r30.xy = r24.ww ? r30.xy : r15.xy;
                r16.w = (int)r16.w + 1;
                r13.x = r20.w;
              }
              r13.x = saturate(r30.y + -r9.w);
              r13.w = r13.x * r15.w;
              r14.w = cmp(0 < r13.w);
              if (r14.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(16), t15.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(32), t15.yxwz
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(48), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(64), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(80), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(132), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(148), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(164), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(180), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(196), t15.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r10.w, l(212), t15.xyxx
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
                r25.w = r13.x * r15.w + r25.w;
                r10.w = r13.w * r27.z;
                r27.z = r35.z;
                r13.x = dot(r12.xyz, r27.xyz);
                r13.w = dot(r28.xyz, r27.xyz);
                r13.w = r13.w + -r35.w;
                r14.w = cmp(r13.w >= 0);
                r13.w = max(abs(r13.w), r0.w);
                r13.w = r14.w ? r13.w : -r13.w;
                r13.x = max(1.00000001e-07, -r13.x);
                r13.x = r13.w / r13.x;
                r13.x = min(131072, abs(r13.x));
                r35.z = r36.z;
                r13.w = dot(r12.xyz, r35.xyz);
                r14.w = dot(r28.xyz, r35.xyz);
                r14.w = r14.w + -r36.w;
                r15.y = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r0.w);
                r14.w = r15.y ? r14.w : -r14.w;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.w / r13.w;
                r13.x = min(r13.x, abs(r13.w));
                r36.z = r37.z;
                r13.w = dot(r12.xyz, r36.xyz);
                r14.w = dot(r28.xyz, r36.xyz);
                r14.w = r14.w + -r37.w;
                r15.y = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r0.w);
                r14.w = r15.y ? r14.w : -r14.w;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.w / r13.w;
                r13.x = min(r13.x, abs(r13.w));
                r37.z = r38.z;
                r13.w = dot(r12.xyz, r37.xyz);
                r14.w = dot(r28.xyz, r37.xyz);
                r14.w = r14.w + -r38.w;
                r15.y = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r0.w);
                r14.w = r15.y ? r14.w : -r14.w;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.w / r13.w;
                r13.x = min(r13.x, abs(r13.w));
                r38.z = r39.x;
                r13.w = dot(r12.xyz, r38.xyz);
                r14.w = dot(r28.xyz, r38.xyz);
                r14.w = r14.w + -r39.y;
                r15.y = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r0.w);
                r14.w = r15.y ? r14.w : -r14.w;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.w / r13.w;
                r13.x = min(r13.x, abs(r13.w));
                r40.zw = r39.zw;
                r13.w = dot(r12.zxy, r40.xzw);
                r14.w = dot(r28.zxy, r40.xzw);
                r14.w = r14.w + -r40.y;
                r15.y = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r0.w);
                r14.w = r15.y ? r14.w : -r14.w;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.w / r13.w;
                r13.x = min(r13.x, abs(r13.w));
                r27.x = r32.w;
                r27.yz = r33.zw;
                r15.yzw = r27.xyz + r28.xyz;
                r15.yzw = r12.xyz * r13.xxx + r15.yzw;
                r13.w = dot(r15.yzw, r15.yzw);
                r13.w = sqrt(r13.w);
                r13.x = r13.x / r13.w;
                r13.x = r13.x + r13.x;
                r13.x = sqrt(r13.x);
                r13.x = r0.y * 5 + r13.x;
                r13.x = -0.844799995 + r13.x;
                r26.y = r29.z;
                r26.z = r31.x;
                r35.x = dot(r15.yzw, r26.xyz);
                r27.xy = r29.xw;
                r27.z = r31.w;
                r35.y = dot(r15.yzw, r27.xyz);
                r31.x = r29.y;
                r35.z = dot(r15.yzw, r31.xyz);
                if (9 == 0) r13.w = 0; else if (9+16 < 32) {                 r13.w = (uint)r27.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);                } else r13.w = (uint)r27.w >> 16;
                r35.w = (uint)r13.w;
                r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r13.x).xyz;
                r29.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r13.x = (int)r29.y | (int)r29.x;
                r13.x = (int)r29.z | (int)r13.x;
                r15.yzw = r13.xxx ? float3(1,1,0) : r15.yzw;
                r29.x = dot(r28.xyz, r26.xyz);
                r29.y = dot(r28.xyz, r27.xyz);
                r29.z = dot(r28.xyz, r31.xyz);
                r28.xyz = saturate(r29.xyz * r32.xyz + float3(0.5,0.5,0.5));
                r33.z = r34.x;
                r28.xyz = r28.xyz * r33.xyz + r34.yzw;
                r35.x = dot(r6.xyz, r26.xyz);
                r35.y = dot(r6.xyz, r27.xyz);
                r35.z = dot(r6.xyz, r31.xyz);
                r26.xyz = cmp(float3(0,0,0) < r35.xyz);
                r14.z = r26.x ? 0 : 0.5;
                r27.xyz = r28.xyz + r14.xyz;
                r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r29.xyz = r35.xyz * r35.xyz;
                r29.xyz = r29.xyz * r10.www;
                r16.z = r26.y ? 0 : 0.5;
                r26.xyw = r28.xyz + r16.xyz;
                r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
                r26.xyw = r26.xyw * r29.yyy;
                r26.xyw = r27.xyz * r29.xxx + r26.xyw;
                r17.z = r26.z ? 0 : 0.5;
                r27.xyz = r28.xyz + r17.xyz;
                r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r26.xyz = r27.xyz * r29.zzz + r26.xyw;
                r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
                r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r13.x = (int)r28.y | (int)r28.x;
                r13.x = (int)r28.z | (int)r13.x;
                r27.xyz = r13.xxx ? float3(1,1,0) : r27.xyz;
                r28.xyz = r27.xyz * r26.xyz;
                r13.x = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r11.xyz = r26.xyz * r27.xyz + r11.xyz;
                r13.w = r13.x * r1.w;
                r15.yzw = r15.yzw * r10.www;
                r10.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r10.w = r1.w * r13.x + r10.w;
                r10.w = r13.w / r10.w;
                r25.xyz = r15.yzw * r10.www + r25.xyz;
              }
            }
          }
        }
        r23.xyzw = r25.xyzw;
        r24.xyz = r11.xyz;
        r7.z = (int)r7.z + 32;
      }
      r22.xyzw = r23.zxyw;
      r21.xyz = r24.xyz;
      r22.xyzw = r22.yzxw;
    } else {
      r22.x = r21.w;
    }
    r0.y = max(1, r22.w);
    r0.y = rcp(r0.y);
    r22.w = saturate(r22.w);
    r18.xyz = r21.xyz * r0.yyy;
    r20.xyz = r22.xyz * r0.yyy;
    r0.w = cmp(r22.w < 0.99000001);
    if (r0.w != 0) {
      r0.w = 1 + -r22.w;
      r1.w = sunConstants.globalProbeExposure * r0.w;
      r10.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r11.x = globalProbeConstants.data[0].w * r10.x;
      r11.yz = globalProbeConstants.data[1].xy * r10.yz;
      r10.xyz = saturate(float3(0.5,0.5,0.5) + r11.xyz);
      r11.xy = globalProbeConstants.data[1].zw * r10.xy;
      r11.z = globalProbeConstants.data[2].x * r10.z;
      r10.xyz = globalProbeConstants.data[2].yzw + r11.xyz;
      r11.xyz = cmp(float3(0,0,0) < r6.xyz);
      r11.xyz = r11.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r11.w = 0;
      r13.xyz = r11.wwx + r10.xyz;
      r13.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r14.xyz = r6.xyz * r6.xyz;
      r14.xyz = r14.xyz * r1.www;
      r15.xyz = r11.wwy + r10.xyz;
      r15.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r15.xyz = r15.xyz * r14.yyy;
      r13.xyz = r13.xyz * r14.xxx + r15.xyz;
      r10.xyz = r11.wwz + r10.xyz;
      r10.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
      r10.xyz = r10.xyz * r14.zzz + r13.xyz;
      r6.w = 0;
      r6.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r6.xyzw, 6).xyz;
      r6.xyz = r10.xyz * r6.xyz;
      r1.w = dot(r6.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r18.xyz = r21.xyz * r0.yyy + r6.xyz;
      r12.w = 0;
      r6.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r0.z).xyz;
      r0.y = sunConstants.globalProbeExposure * r0.w + -r1.w;
      r0.y = r7.y * r0.y + r1.w;
      r20.xyz = r6.xyz * r0.yyy + r20.xyz;
    }
  } else {
    r20.x = r18.w;
  }
  r0.yzw = r18.xyz * r0.xxx + r3.xyz;
  r3.xyz = r18.xyz * r0.xxx + r5.xyz;
  r5.xy = r7.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.xy, 0).xy;
  r6.xyz = r20.xyz * r0.xxx;
  r2.xyz = r6.xyz * r5.xxx + r2.xyz;
  r5.xyz = r6.xyz * r5.yyy + r9.xyz;
  r0.x = dot(r4.xyz, r8.xyz);
  r0.x = 1 + -abs(r0.x);
  r0.x = r0.x * r0.x;
  r0.x = r0.x * 0.600000024 + 0.400000006;
  r0.x = min(1, r0.x);
  r4.xyz = transColorTint.xyz * r0.xxx;
  r6.xyz = saturate(r1.xyz * float3(0.0199999996,0.0199999996,0.0199999996) + float3(0.0399999991,0.0399999991,0.0399999991));
  r7.xyz = specColorTint.xyz * r6.xyz;
  r4.xyz = r4.xyz * r1.xyz;
  r3.xyz = r4.xyz * r3.xyz;
  r0.xyz = r0.yzw * r1.xyz + r3.xyz;
  r1.xyz = -r6.xyz * specColorTint.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = r5.xyz * r7.xyz + r1.xyz;
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