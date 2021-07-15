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
  bool useAlphaControls : packoffset(c11.w);
  float zFeatherDistance : packoffset(c12);
  float falloffBegin : packoffset(c12.y);
  float falloffEnd : packoffset(c12.z);
  float alphaRevealSoftEdge : packoffset(c12.w);
  float alphaRevealRamp : packoffset(c13);
  float scriptControl : packoffset(c13.y);
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
SamplerState revealSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
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
Texture2D<float4> floatZSampler : register(t21);
Texture2D<float4> colorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> revealMap : register(t29);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation uint4 v2 : TEXCOORD4,
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
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.z = r1.x * r1.y;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.z = r1.z * 0.5 + glossRange.x;
  r1.xz = saturate(float2(0.0588235296,0.0588235296) * r1.xz);
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
  r1.xz = float2(-17,-17) * r1.xz;
  r1.x = exp2(r1.x);
  r1.x = r2.z + r1.x;
  r1.x = log2(r1.x);
  r1.z = exp2(r1.z);
  r1.z = r2.z + r1.z;
  r1.z = log2(r1.z);
  r1.xz = float2(-0.0588235296,-0.0588235296) * r1.xz;
  r6.xyz = r5.xyz * r2.yyy;
  r2.xyw = r4.xyz * r2.xxx + r6.xyz;
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
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.w = cmp(0 < debugStreamerControl.w);
  if (r1.w != 0) {
    r1.w = (int)debugStreamerControl.w;
    r2.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r3.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.z = cmp(r2.z < r3.w);
    r3.w = cmp(0 < r3.w);
    r6.xyz = (int3)r1.www & int3(1,2,4);
    r7.xyz = r6.xxx ? float3(1,0,1) : r0.xyz;
    r6.xyw = r6.yyy ? float3(0,1,1) : r0.xyz;
    r6.xyw = r3.www ? r7.xyz : r6.xyw;
    r7.xyz = r6.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r2.zzz ? r6.xyw : r7.xyz;
  }
  r1.w = debugAlphaOverride.x + -r0.w;
  r0.w = debugAlphaOverride.w * r1.w + r0.w;
  r6.y = debugGlossOverride.w * r1.y;
  r7.xyz = v7.xxx ? r3.xyz : -r3.xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www + -r2.xyw;
  r2.xyz = debugNormalOverride.www * r7.xyz + r2.xyw;
  r6.zw = (uint2)v0.xy;
  r1.w = cmp(v0.z >= 0.984375);
  r3.w = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r1.w = r1.w ? r4.w : r3.w;
  r1.w = max(9.99999994e-09, r1.w);
  r1.w = rcp(r1.w);
  r3.w = dot(-v6.xyz, -v6.xyz);
  r3.w = rsqrt(r3.w);
  r7.xyz = -v6.xyz * r3.www;
  r8.xy = (uint2)r6.wz;
  r4.w = dot(r8.yx, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r9.x, r10.x);
  r4.w = dot(r8.xy, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r8.x, r11.x);
  r6.x = saturate(dot(r2.xyz, r7.xyz));
  r4.w = dot(-r7.xyz, r2.xyz);
  r4.w = r4.w + r4.w;
  r12.xyz = r2.xyz * -r4.www + -r7.xyz;
  r4.w = 17 * r6.y;
  r13.x = exp2(r4.w);
  r4.w = 2 + r13.x;
  r4.w = 2 / r4.w;
  r5.w = sqrt(r4.w);
  r8.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r8.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r8.yzw;
  r8.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r8.yzw;
  r8.yzw = viewProjectionMatrix._m30_m31_m33 + r8.yzw;
  r14.xyz = eyeOffset.xyz + v6.xyz;
  r7.w = sqrt(r5.w);
  r7.w = r7.w * 0.5 + 0.5;
  r7.w = r7.w * r7.w;
  r9.z = 0.5 * r7.w;
  r7.w = -r7.w * 0.5 + 1;
  r9.w = r6.x * r7.w + r9.z;
  r7.w = r9.w * r7.w;
  r9.z = r9.z * r9.w;
  r9.w = min(1, abs(anisotropy));
  r1.z = r1.z + -r1.x;
  r1.x = r9.w * r1.z + r1.x;
  r1.z = cmp(anisotropy < 0);
  r1.x = 17 * r1.x;
  r13.y = exp2(r1.x);
  r1.xz = r1.zz ? r13.xy : r13.yx;
  r1.xz = float2(2,2) + r1.xz;
  r1.xz = float2(2,2) / r1.xz;
  r9.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r10.w = cmp(0 >= abs(r9.w));
  if (r10.w != 0) {
    r13.y = 0;
  }
  if (r10.w == 0) {
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r11.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.yzw;
    r11.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.yzw;
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.yzw;
    r10.w = -sunConstants.splitDepthOffset + r11.w;
    r10.w = -r10.w * 6.10351563e-05 + 1;
    r13.z = saturate(r10.w);
    r13.z = cmp(r10.w == r13.z);
    if (r13.z != 0) {
      r13.zw = float2(0,0);
      while (true) {
        r15.x = cmp(r13.z >= 3);
        if (r15.x != 0) break;
        r15.x = (uint)r13.z;
        r15.yz = -sunConstants.splitPinTransform[r15.x].xy + r11.yz;
        r15.y = max(abs(r15.y), abs(r15.z));
        r13.w = sunConstants.splitPinTransform[r15.x].z * r15.y;
        r15.x = cmp(r13.w < 1);
        if (r15.x != 0) {
          break;
        }
        r13.z = 1 + r13.z;
        r13.w = 0;
      }
    } else {
      r13.zw = float2(3,0);
    }
    r15.x = cmp(r13.z >= 3);
    if (r15.x != 0) {
      r15.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.yy);
      r16.y = -r16.z;
      r15.yzw = r11.yzy * r16.xyz + r15.zwz;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.yzw = max(float3(0,0,0), r15.yzw);
      r15.yzw = min(r15.yzw, r16.xyz);
      r16.xy = sunConstants.sstLightingConstants.coordScale * r15.wz;
      r16.xy = floor(r16.xy);
      r16.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r16.y;
      r16.x = r16.y * sunConstants.sstLightingConstants.coordScale + r16.x;
      r16.x = (uint)r16.x;
      r16.x = (int)r16.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
    r16.y = samp0[]..swiz;
      r16.z = (int)r16.y & 0x40000000;
      r16.w = (uint)r16.y << 2;
      if (r16.z == 0) {
        r16.z = (int)r16.y & 0x01ffffff;
        r17.x = (int)r16.z + (int)r16.x;
        r16.x = (uint)r16.y >> 25;
        r16.x = (uint)r16.x;
        r15.yzw = r16.xxx * r15.yzw;
        r15.yzw = frac(r15.yzw);
        r15.yzw = float3(128,128,128) * r15.yzw;
        r15.yzw = (uint3)r15.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.xy = (uint2)r15.wz >> int2(6,6);
        r16.z = (int)r17.z & 0xc0000000;
        r17.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r16.y = r16.y ? r17.z : r17.w;
        r17.w = (uint)r16.y >> 13;
        r16.x = r16.x ? r17.w : r16.y;
        r16.x = (int)r16.x & 8191;
        r18.x = (int)r16.x + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r18.xyz = r16.zzz ? r17.xyz : r18.xyz;
        r19.yz = r16.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r16.xy = (uint2)r15.wz >> (uint2)r19.yy;
        r16.xy = (int2)r16.xy & int2(1,1);
        r17.w = (int)r18.z & 0xc0000000;
        r18.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.y = r16.y ? r18.z : r18.w;
        r18.w = (uint)r16.y >> 13;
        r16.x = r16.x ? r18.w : r16.y;
        r16.x = (int)r16.x & 8191;
        r19.x = (int)r16.x + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r18.xyz = r17.www ? r18.xyz : r19.xzw;
        r16.xyz = r16.zzz ? r17.xyz : r18.xyz;
        r17.x = (int)r16.z & 0xc0000000;
        if (r17.x == 0) {
          r17.x = (int)-r16.y + 6;
          r17.xy = (uint2)r15.wz >> (uint2)r17.xx;
          r17.z = (int)r16.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.y = (((uint)r17.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.x = (((uint)r17.x << 0) & bitmask.x) | ((uint)r17.y & ~bitmask.x);
          r17.x = (int)r17.x * 10;
          r17.x = (uint)r17.z >> (uint)r17.x;
          r17.x = (int)r17.x & 1023;
          r17.x = (int)r16.x + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r16.y = (int)-r17.y + 6;
          r18.xy = (uint2)r15.wz >> (uint2)r16.yy;
          r16.y = (int)r17.w & 0xc0000000;
          r18.z = (int)r17.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.y = (((uint)r18.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.x = (((uint)r18.x << 0) & bitmask.x) | ((uint)r18.y & ~bitmask.x);
          r18.x = (int)r18.x * 10;
          r18.x = (uint)r18.z >> (uint)r18.x;
          r18.x = (int)r18.x & 1023;
          r18.x = (int)r17.x + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r16.yyy ? r17.xyw : r18.xyz;
          r17.y = (int)-r18.y + 6;
          r17.yz = (uint2)r15.wz >> (uint2)r17.yy;
          r18.y = (int)r18.z & 0xc0000000;
          r18.w = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r17.y = (uint)r18.w >> (uint)r17.y;
          r17.y = (int)r17.y & 1023;
          r19.x = (int)r17.y + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r18.yy ? r18.xz : r19.xy;
          r16.xz = r16.yy ? r17.xw : r17.yz;
        }
        r16.y = (int)r16.z & 0xc0000000;
        if (r16.y == 0) {
          if (14 == 0) r17.x = 0; else if (14+15 < 32) {           r17.x = (uint)r16.z << (32-(14 + 15)); r17.x = (uint)r17.x >> (32-14);          } else r17.x = (uint)r16.z >> 15;
          r17.x = (uint)r17.x;
          r17.x = sunConstants.sstLightingConstants.constants.spanInInches * r17.x;
          r17.yz = (int2)r16.zz & int2(32767,536870912);
          r17.y = (uint)r17.y;
          r17.y = sunConstants.sstLightingConstants.constants.spanInInches * r17.y;
          r17.xy = float2(6.10388815e-05,3.05185094e-05) * r17.xy;
          r17.w = (int)r15.z & 3;
          r17.w = (int)r16.x + (int)r17.w;
          r17.w = (int)r17.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r15.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r15.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r15.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.y = (uint)r17.w >> (uint)r18.x;
          r15.y = (int)r15.y & 255;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r17.y;
          r15.y = r15.y * 0.00392156886 + r17.x;
          r15.z = (int)r18.y + 1;
          if (1 == 0) r15.w = 0; else if (1+1 < 32) {           r15.w = (uint)r15.w << (32-(1 + 1)); r15.w = (uint)r15.w >> (32-1);          } else r15.w = (uint)r15.w >> 1;
          r15.z = (int)r15.w + (int)r15.z;
          r15.z = (int)r15.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.z = (uint)r15.z >> (uint)r18.z;
          r15.z = (int)r15.z & 0x0000ffff;
          r15.z = (uint)r15.z;
          r15.z = r15.z * r17.y;
          r15.z = r15.z * 1.52590219e-05 + r17.x;
          r16.w = r17.z ? r15.y : r15.z;
        } else {
          r15.y = (int)r16.z & 0x80000000;
          r15.z = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r15.y ? r15.z : 0;
          r15.z = (uint)r16.z << 2;
          r15.w = (uint)r15.y >> 16;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.yw = f16tof32(r15.yw);
          r15.z = r11.y * r15.w + r15.z;
          r15.y = r11.z * r15.y + r15.z;
          r16.w = r16.y ? r15.y : r16.w;
        }
      }
      r11.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.w;
      r11.w = cmp(r16.w < r11.w);
      r13.y = r11.w ? 0 : 1;
    }
    if (r15.x == 0) {
      if (enableDitheredShadow == 0) {
        r11.w = (uint)r13.z;
        r15.xy = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r15.xy = sunConstants.splitPinTransform[r11.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r13.z + r11.w;
        r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r10.w).x;
        r15.x = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r11.w = r15.x + r11.w;
        r11.w = saturate(-1 + r11.w);
        r15.x = r11.w * r11.w;
        r13.y = r15.x * r11.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r9.x;
        r11.w = (uint)r13.z;
        r13.z = 1 + r13.z;
        r13.z = min(2, r13.z);
        r13.w = 1 + -r13.w;
        r13.w = 28 * r13.w;
        r13.zw = (uint2)r13.zw;
        r16.xy = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r16.xy = sunConstants.splitPinTransform[r11.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = -sunConstants.splitPinTransform[r13.z].xy + r11.yz;
        r11.yz = sunConstants.splitPinTransform[r13.z].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r10.x;
        r15.z = r9.x;
        r15.w = 0;
        r16.z = 0;
        while (true) {
          r16.w = cmp((uint)r16.z >= 8);
          if (r16.w != 0) break;
          r16.w = cmp((uint)r13.w < (uint)r16.z);
          r17.xy = r16.ww ? r11.yz : r16.xy;
          r17.z = r16.w ? sunConstants.splitPinTransform[r13.z].w : sunConstants.splitPinTransform[r11.w].w;
          r16.w = r16.w ? r13.z : r11.w;
          r18.x = dot(icb[r16.z+0].yx, r15.xy);
          r18.y = dot(icb[r16.z+0].yx, r15.yz);
          r17.xy = r18.xy * r17.zz + r17.xy;
          r16.w = (int)r16.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.w;
          r16.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.w).x;
          r17.x = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.w = r17.x + r16.w;
          r16.w = saturate(-1 + r16.w);
          r15.w = r16.w * 0.125 + r15.w;
          r16.z = (int)r16.z + 1;
        }
        r10.w = r15.w * r15.w;
        r13.y = r10.w * r15.w;
      }
    }
  }
  r10.w = viewmodelSunShadowRaw & 0x0000ffff;
  if (r10.w != 0) {
    r10.w = (int)r10.w + numLights;
    r10.w = (int)r10.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.y, r10.w, l(52), t12.xxxx
  r11.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r10.w, l(68), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(84), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(132), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(148), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
    r11.z = abs(r9.w) * -0.200000003 + 0.400000006;
    r11.w = cmp(r9.w < 0);
    r11.z = r11.w ? -r11.z : r11.z;
    r19.xyz = r2.xyz * r11.zzz + v6.xyz;
    r19.w = 1;
    r15.x = dot(r15.xyzw, r19.xyzw);
    r15.y = dot(r16.xyzw, r19.xyzw);
    r11.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.zw = r11.zw + r18.zw;
    r11.zw = r11.zw * r18.xy;
    r13.zw = r11.yy / r17.xz;
    r15.xy = float2(1,1) + -r13.zw;
    r15.xy = cmp(r11.zw >= r15.xy);
    r13.zw = cmp(r13.zw >= r11.zw);
    r13.zw = (int2)r13.zw | (int2)r15.xy;
    r13.z = (int)r13.w | (int)r13.z;
    if (r13.z == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.z, r10.w, l(28), t12.xxxx
    r13.z = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r10.w, l(100), t12.xyzw
    r15.x = samp0[]..swiz;
    r15.y = samp0[]..swiz;
    r15.z = samp0[]..swiz;
    r15.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r10.w, l(164), t12.xyxx
    r16.x = samp0[]..swiz;
    r16.y = samp0[]..swiz;
      r10.w = dot(r15.xyzw, r19.xyzw);
      r11.zw = saturate(r11.zw);
      r15.xy = r11.zw * r17.xz + r17.yw;
      r10.w = r10.w + r16.x;
      r10.w = r10.w / r16.y;
      r10.w = max(6.10351563e-05, r10.w);
      r11.z = r13.z ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r16.x = -r9.x;
        r17.z = (uint)r11.z;
        r16.y = r10.x;
        r16.z = r9.x;
        r11.w = 0;
        r13.z = 0;
        while (true) {
          r13.w = cmp((int)r13.z >= 8);
          if (r13.w != 0) break;
          r18.x = dot(icb[r13.z+0].yx, r16.xy);
          r18.y = dot(icb[r13.z+0].yx, r16.yz);
          r17.xy = r18.xy * r11.yy + r15.xy;
          r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r10.w).x;
          r11.w = r13.w * 0.125 + r11.w;
          r13.z = (int)r13.z + 1;
        }
      } else {
        r15.z = (uint)r11.z;
        r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r10.w).x;
      }
      r10.w = r11.w * r11.w;
      r10.w = r10.w * r11.w;
    } else {
      r10.w = 1;
    }
    r13.y = r13.y * r10.w;
  }
  r10.w = cmp(0 < abs(r9.w));
  if (r10.w != 0) {
    r10.w = cmp(0 < r13.y);
    if (r10.w != 0) {
      r10.w = sunConstants.specScale * r4.w;
      r10.w = 0.25 * r10.w;
      if (sunConstants.sunCookieIndex != 0) {
        r14.w = 1;
        r11.y = dot(sunConstants.sunCookieTransform[0].xyzw, r14.xyzw);
        r11.z = dot(sunConstants.sunCookieTransform[1].xyzw, r14.xyzw);
        r15.xy = frac(r11.yz);
        r11.y = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r11.y;
        r11.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r11.yzw = float3(-1,-1,-1) + r11.yzw;
        r11.yzw = sunConstants.sunCookieIntensity * r11.yzw + float3(1,1,1);
        r11.yzw = sunConstants.color.xyz * r11.yzw;
      } else {
        r11.yzw = sunConstants.color.xyz;
      }
      r13.z = -r6.x * 0.5 + 1;
      r13.z = -abs(r9.w) * r13.z + 1;
      r13.z = r13.z * r13.z;
      r13.z = -r13.z * 0.620000005 + 0.620000005;
      r13.z = r13.z + -abs(r9.w);
      r13.z = r5.w * r13.z + abs(r9.w);
      r13.w = cmp(0 < r9.w);
      r9.w = saturate(r9.w);
      r15.xyz = -v6.xyz * r3.www + sunConstants.wldDir.xyz;
      r3.w = dot(r15.xyz, r15.xyz);
      r3.w = rsqrt(r3.w);
      r15.xyz = r15.xyz * r3.www;
      r3.w = dot(r2.xyz, r15.xyz);
      r14.w = dot(r15.xyz, r7.xyz);
      r15.w = r1.x * r1.z;
      r15.w = sqrt(r15.w);
      r16.x = dot(r15.xyz, r4.xyz);
      r15.x = dot(r15.xyz, r5.xyz);
      r15.y = r16.x * r16.x;
      r15.x = r15.x * r15.x;
      r15.xy = r15.xy / r1.zx;
      r15.x = r15.y + r15.x;
      r3.w = abs(r3.w) * abs(r3.w) + r15.x;
      r15.x = r9.w * r7.w + r9.z;
      r3.w = r3.w * r3.w;
      r3.w = r3.w * r15.w;
      r3.w = r3.w * r15.x;
      r3.w = rcp(r3.w);
      r9.w = r9.w * r10.w;
      r3.w = r9.w * r3.w;
      r9.w = saturate(1 + -r14.w);
      r10.w = r9.w * r9.w;
      r10.w = r10.w * r10.w;
      r9.w = r10.w * r9.w;
      r9.w = r9.w * r3.w;
      r10.w = r13.w ? r13.z : 0;
      r15.xyz = r13.www ? float3(0,0,0) : r13.zzz;
      r16.xy = r13.ww ? r9.ww : 0;
      r17.xyz = r13.www ? r3.www : 0;
      r3.w = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r3.w = r13.y * r3.w;
      r13.x = 1;
      r9.w = sunConstants.wldDir.x;
      r13.zw = sunConstants.wldDir.yz;
      r16.zw = r10.ww;
      r14.w = r16.y;
    } else {
      r3.w = 0;
      r11.yzw = float3(0,0,0);
      r9.w = 0;
      r13.xyzw = float4(0,0,0,0);
      r15.xyz = float3(0,0,0);
      r10.w = 0;
      r17.xyz = float3(0,0,0);
      r14.w = 0;
      r16.xyzw = float4(0,0,0,0);
    }
  } else {
    r3.w = 0;
    r11.yzw = float3(0,0,0);
    r9.w = 0;
    r13.xyzw = float4(0,0,0,0);
    r15.xyz = float3(0,0,0);
    r10.w = 0;
    r17.xyz = float3(0,0,0);
    r14.w = 0;
    r16.xyzw = float4(0,0,0,0);
  }
  r15.w = 0.0078125 * r1.w;
  r15.w = min(15, r15.w);
  r15.w = (uint)r15.w;
  r18.xy = (uint2)r6.zw >> int2(6,6);
  r18.z = (uint)r15.w << 4;
  r19.x = -r9.x;
  r6.z = -r6.x * 0.5 + 1;
  r6.w = r1.x * r1.z;
  r6.w = sqrt(r6.w);
  r20.xy = float2(0,0);
  r21.w = 0;
  r22.xyz = v6.xyz;
  r22.w = 1;
  r23.w = 1;
  r19.z = r9.x;
  r24.z = 1;
  r25.w = 1;
  r19.yw = r10.xx;
  r9.y = r19.w;
  r26.w = 1;
  r10.y = r19.x;
  r10.z = r9.x;
  r27.x = r10.x;
  r27.y = r19.x;
  r27.z = r9.x;
  r28.xyz = float3(0,0,0);
  r29.xyz = float3(0,0,0);
  r30.xyz = float3(0,0,0);
  r31.xyz = float3(0,0,0);
  r32.xyz = r11.yzw;
  r33.x = r9.w;
  r33.yz = r13.zw;
  r34.xy = r16.zw;
  r34.z = r10.w;
  r35.xyz = r15.xyz;
  r36.xyz = r17.xyz;
  r37.x = r14.w;
  r37.yz = r16.xy;
  r38.x = enableDitheredShadow;
  r38.y = r3.w;
  r38.zw = r13.xy;
  r15.w = 0;
  while (true) {
    r17.w = cmp((uint)r15.w >= numLights);
    if (r17.w != 0) break;
    r20.z = (uint)r15.w >> 5;
    r21.xyz = (int3)r18.xyz + (int3)r20.xyz;
    r17.w = visibleLights.Load(r21.xyzw).x;
    r21.xyz = r28.xyz;
    r39.xyz = r29.xyz;
    r40.xyz = r30.xyz;
    r41.xyz = r31.xyz;
    r42.xyz = r32.xyz;
    r43.xyz = r33.xyz;
    r44.xyz = r34.xyz;
    r45.xyz = r36.xyz;
    r46.xyz = r37.xyz;
    r20.zw = r38.zw;
    r18.w = r38.x;
    r24.w = r38.y;
    r47.xyz = r35.xyz;
    r27.w = r17.w;
    while (true) {
      if (r27.w == 0) break;
      r28.w = firstbitlow((uint)r27.w);
      r29.w = 1 << (int)r28.w;
      r30.w = (int)r27.w & (int)r29.w;
      if (r30.w != 0) {
        r27.w = (int)r27.w ^ (int)r29.w;
        r28.w = (int)r15.w + (int)r28.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r28.w, l(0), t12.wxyz
      r48.x = samp0[]..swiz;
      r48.y = samp0[]..swiz;
      r48.z = samp0[]..swiz;
      r48.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r28.w, l(16), t12.zxyw
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r28.w, l(32), t12.xyzw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r28.w, l(48), t12.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r28.w, l(64), t12.yzwx
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r28.w, l(80), t12.xyzw
      r53.x = samp0[]..swiz;
      r53.y = samp0[]..swiz;
      r53.z = samp0[]..swiz;
      r53.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r28.w, l(96), t12.yzwx
      r54.x = samp0[]..swiz;
      r54.y = samp0[]..swiz;
      r54.z = samp0[]..swiz;
      r54.w = samp0[]..swiz;
        if (3 == 0) r29.w = 0; else if (3+24 < 32) {         r29.w = (uint)r49.w << (32-(3 + 24)); r29.w = (uint)r29.w >> (32-3);        } else r29.w = (uint)r49.w >> 24;
        switch (r29.w) {
          case 4 :          r29.w = cmp(0 < r54.x);
          r55.xy = r53.zw;
          r55.z = r54.w;
          r56.xyz = -r55.xyz * float3(0.5,0.5,0.5) + r48.yzw;
          r57.xyz = -v6.xyz + r56.xyz;
          r30.w = dot(r55.xyz, r57.xyz);
          r31.w = saturate(-r30.w / r54.x);
          r58.xyz = r31.www * r55.xyz + r56.xyz;
          r58.xyz = r29.www ? r58.xyz : r48.yzw;
          r58.xyz = -v6.xyz + r58.xyz;
          r32.w = dot(r58.xyz, r58.xyz);
          r33.w = rsqrt(r32.w);
          r58.xyz = r58.xyz * r33.www;
          r33.w = dot(r2.xyz, r58.xyz);
          r34.w = cmp(0 < abs(r33.w));
          if (r34.w != 0) {
            r34.w = sqrt(r32.w);
            r35.w = r51.x * r51.x;
            r32.w = r35.w / r32.w;
            r32.w = min(1, r32.w);
            r59.xy = saturate(r34.ww * r50.xz + r50.yw);
            r59.zw = r59.xy * r59.xy;
            r59.xy = r59.xy * float2(-2,-2) + float2(3,3);
            r59.xy = r59.zw * r59.xy;
            r32.w = r59.x * r32.w;
            r59.x = r32.w * r59.y;
            r32.w = cmp(0 < r59.x);
            if (r32.w != 0) {
              if (3 == 0) r59.z = 0; else if (3+27 < 32) {               r59.z = (uint)r49.w << (32-(3 + 27)); r59.z = (uint)r59.z >> (32-3);              } else r59.z = (uint)r49.w >> 27;
              if (4 == 0) r59.w = 0; else if (4+20 < 32) {               r59.w = (uint)r49.w << (32-(4 + 20)); r59.w = (uint)r59.w >> (32-4);              } else r59.w = (uint)r49.w >> 20;
              r32.w = cmp((int)r59.z != 1);
              if (r32.w != 0) {
                r32.w = abs(r33.w) * -0.200000003 + 0.400000006;
                r34.w = cmp(r33.w < 0);
                r32.w = r34.w ? -r32.w : r32.w;
                r60.xyz = r2.xyz * r32.www + v6.xyz;
                r60.xyz = r60.xyz + -r52.xyz;
                r32.w = max(abs(r60.y), abs(r60.z));
                r32.w = max(abs(r60.x), r32.w);
                r32.w = r53.x / r32.w;
                r32.w = r32.w + r53.y;
                r34.w = dot(r60.xyz, r60.xyz);
                r34.w = rsqrt(r34.w);
                r32.w = max(6.10351563e-05, r32.w);
                r35.w = (int)r49.w & 0x0000ffff;
                r61.w = (uint)r35.w;
                r59.y = 0;
                r35.w = 0;
                while (true) {
                  r36.w = cmp((int)r35.w >= 8);
                  if (r36.w != 0) break;
                  r62.y = dot(icb[r35.w+0].yx, r19.xy);
                  r62.z = dot(icb[r35.w+0].yx, r19.yz);
                  r62.yz = r62.yz * r51.yy;
                  r62.x = r62.y * r11.x;
                  r62.w = r62.y * r8.x;
                  r61.xyz = r60.xyz * r34.www + r62.xzw;
                  r36.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyzw, r32.w).x;
                  r59.y = r36.w * 0.125 + r59.y;
                  r35.w = (int)r35.w + 1;
                }
              } else {
                r59.y = 1;
              }
              if (r59.w != 0) {
                r32.w = (int)r59.w + numLights;
                r32.w = (int)r32.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.w, r32.w, l(52), t12.xxxx
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r32.w, l(100), t12.xyzw
              r60.x = samp0[]..swiz;
              r60.y = samp0[]..swiz;
              r60.z = samp0[]..swiz;
              r60.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r32.w, l(116), t12.xyzw
              r61.x = samp0[]..swiz;
              r61.y = samp0[]..swiz;
              r61.z = samp0[]..swiz;
              r61.w = samp0[]..swiz;
                r35.w = abs(r33.w) * -0.200000003 + 0.400000006;
                r36.w = cmp(r33.w < 0);
                r35.w = r36.w ? -r35.w : r35.w;
                r23.xyz = r2.xyz * r35.www + v6.xyz;
                r35.w = dot(r60.xyzw, r23.xyzw);
                r36.w = dot(r61.xyzw, r23.xyzw);
                r37.w = cmp(r36.w < r35.w);
                if (r37.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r32.w, l(68), t12.xyzw
                r60.x = samp0[]..swiz;
                r60.y = samp0[]..swiz;
                r60.z = samp0[]..swiz;
                r60.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r32.w, l(84), t12.xyzw
                r61.x = samp0[]..swiz;
                r61.y = samp0[]..swiz;
                r61.z = samp0[]..swiz;
                r61.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r32.w, l(132), t12.xyzw
                r62.x = samp0[]..swiz;
                r62.y = samp0[]..swiz;
                r62.z = samp0[]..swiz;
                r62.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r32.w, l(148), t12.xyzw
                r63.x = samp0[]..swiz;
                r63.y = samp0[]..swiz;
                r63.z = samp0[]..swiz;
                r63.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.zw, r32.w, l(164), t12.xxxy
                r59.z = samp0[]..swiz;
                r59.w = samp0[]..swiz;
                  r60.x = dot(r60.xyzw, r23.xyzw);
                  r60.y = dot(r61.xyzw, r23.xyzw);
                  r23.xy = r60.xy / r36.ww;
                  r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r23.xy = r23.xy + r63.zw;
                  r23.xy = r23.xy * r63.xy;
                  r60.xy = r34.ww / r62.xz;
                  r60.zw = float2(1,1) + -r60.xy;
                  r60.zw = cmp(r23.xy >= r60.zw);
                  r60.xy = cmp(r60.xy >= r23.xy);
                  r60.xy = (int2)r60.xy | (int2)r60.zw;
                  r23.z = (int)r60.y | (int)r60.x;
                  r23.xy = saturate(r23.xy);
                  r60.xy = r23.xy * r62.xz + r62.yw;
                  r23.x = r59.w * r36.w;
                  r23.y = r59.z * r36.w + r35.w;
                  r23.x = r23.y / r23.x;
                } else {
                  r23.z = -1;
                }
                r23.y = (int)r37.w | (int)r23.z;
                if (r23.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r32.w, l(28), t12.xxxx
                r23.y = samp0[]..swiz;
                  r23.x = max(6.10351563e-05, r23.x);
                  r23.y = (int)r23.y & 0x0000ffff;
                  if (r18.w != 0) {
                    r61.z = (uint)r23.y;
                    r23.z = 0;
                    r32.w = 0;
                    while (true) {
                      r35.w = cmp((int)r32.w >= 8);
                      if (r35.w != 0) break;
                      r62.x = dot(icb[r32.w+0].yx, r19.xw);
                      r62.y = dot(icb[r32.w+0].xy, r9.xy);
                      r61.xy = r62.xy * r34.ww + r60.xy;
                      r35.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyz, r23.x).x;
                      r23.z = r35.w * 0.125 + r23.z;
                      r32.w = (int)r32.w + 1;
                    }
                  } else {
                    r60.z = (uint)r23.y;
                    r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r60.xyz, r23.x).x;
                  }
                  r23.x = r23.z * r23.z;
                  r23.x = r23.x * r23.z;
                } else {
                  r23.x = 1;
                }
                r59.y = r59.y * r23.x;
              }
              r23.x = r59.x * r59.y;
              r23.y = cmp(0 < r23.x);
              if (r23.y != 0) {
                r23.y = r49.x * r4.w;
                r23.y = 0.25 * r23.y;
                r32.w = dot(r55.xyz, r12.xyz);
                r34.w = dot(r12.xyz, r57.xyz);
                r35.w = -r32.w * r32.w + r54.x;
                r30.w = r32.w * r34.w + -r30.w;
                r30.w = saturate(r30.w / r35.w);
                r32.w = r35.w / r54.x;
                r32.w = 10 * r32.w;
                r32.w = min(1, r32.w);
                r30.w = r30.w + -r31.w;
                r30.w = r32.w * r30.w + r31.w;
                r55.xyz = r30.www * r55.xyz + r56.xyz;
                r55.xyz = r29.www ? r55.xyz : r48.yzw;
                r55.xyz = -v6.xyz + r55.xyz;
                r29.w = dot(r55.xyz, r55.xyz);
                r29.w = rsqrt(r29.w);
                r56.xyz = r55.xyz * r29.www;
                r30.w = -abs(r33.w) * r6.z + 1;
                r30.w = r30.w * r30.w;
                r30.w = -r30.w * 0.620000005 + 0.620000005;
                r30.w = r30.w + -abs(r33.w);
                r30.w = r5.w * r30.w + abs(r33.w);
                r31.w = cmp(0 < r33.w);
                r32.w = saturate(dot(r2.xyz, r56.xyz));
                r55.xyz = r55.xyz * r29.www + r7.xyz;
                r29.w = dot(r55.xyz, r55.xyz);
                r29.w = rsqrt(r29.w);
                r55.xyz = r55.xyz * r29.www;
                r29.w = dot(r2.xyz, r55.xyz);
                r33.w = dot(r55.xyz, r7.xyz);
                r34.w = dot(r55.xyz, r4.xyz);
                r35.w = dot(r55.xyz, r5.xyz);
                r34.w = r34.w * r34.w;
                r34.w = r34.w / r1.x;
                r35.w = r35.w * r35.w;
                r35.w = r35.w / r1.z;
                r34.w = r35.w + r34.w;
                r29.w = abs(r29.w) * abs(r29.w) + r34.w;
                r34.w = r32.w * r7.w + r9.z;
                r29.w = r29.w * r29.w;
                r29.w = r29.w * r6.w;
                r29.w = r29.w * r34.w;
                r29.w = rcp(r29.w);
                r23.y = r32.w * r23.y;
                r23.y = r29.w * r23.y;
                r29.w = saturate(1 + -r33.w);
                r32.w = r29.w * r29.w;
                r32.w = r32.w * r32.w;
                r29.w = r32.w * r29.w;
                r29.w = r29.w * r23.y;
                r55.xyz = r31.www ? r30.www : 0;
                r30.w = r31.w ? 0 : r30.w;
                r56.xyz = r31.www ? r29.www : 0;
                r23.y = r31.w ? r23.y : 0;
                r49.x = r48.x;
                r29.w = dot(r49.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r29.w = r29.w * r23.x;
                r31.w = cmp(r24.w < r29.w);
                if (r31.w != 0) {
                  r31.w = r20.z * r20.w;
                  r57.xyz = r31.www * r42.xyz;
                  r21.xyz = r57.xyz * r44.xyz + r21.xyz;
                  r39.xyz = r57.xyz * r47.xyz + r39.xyz;
                  r41.xyz = r57.xyz * r45.xyz + r41.xyz;
                  r40.xyz = r57.xyz * r46.xyz + r40.xyz;
                  r45.xyz = r23.yyy;
                  r24.w = r29.w;
                  r47.xyz = r30.www;
                  r42.xyz = r49.xyz;
                  r43.xyz = r58.xyz;
                  r44.xyz = r55.xyz;
                  r46.xyz = r56.xyz;
                  r20.zw = r59.xy;
                } else {
                  r55.xyw = r49.xyz * r23.xxx;
                  r21.xyz = r55.xyw * r55.zzz + r21.xyz;
                  r39.xyz = r55.xyw * r30.www + r39.xyz;
                  r41.xyz = r55.xyw * r23.yyy + r41.xyz;
                  r40.xyz = r55.xyw * r56.xyz + r40.xyz;
                }
              }
            }
          }
          break;
          case 2 :          r55.xy = r51.zw;
          r55.z = r52.w;
          r55.xyz = -v6.xyz + r55.xyz;
          r23.x = dot(r55.xyz, r55.xyz);
          r23.x = rsqrt(r23.x);
          r56.xyz = r55.xyz * r23.xxx;
          r23.y = dot(r2.xyz, r56.xyz);
          r29.w = cmp(0 < abs(r23.y));
          if (r29.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r28.w, l(112), t12.yzwx
          r57.x = samp0[]..swiz;
          r57.y = samp0[]..swiz;
          r57.z = samp0[]..swiz;
          r57.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r28.w, l(128), t12.zxyw
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
            r60.xyz = r57.xyz;
            r60.w = r58.y;
            r29.w = dot(r60.xyzw, r22.xyzw);
            r30.w = cmp(r29.w < 1);
            if (r30.w != 0) {
              r59.xzw = float3(1,1,1);
              r61.x = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r28.w, l(172), t12.yzwx
            r62.x = samp0[]..swiz;
            r62.y = samp0[]..swiz;
            r62.z = samp0[]..swiz;
            r62.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r28.w, l(188), t12.wxyz
            r63.x = samp0[]..swiz;
            r63.y = samp0[]..swiz;
            r63.z = samp0[]..swiz;
            r63.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r28.w, l(204), t12.xyzw
            r64.x = samp0[]..swiz;
            r64.y = samp0[]..swiz;
            r64.z = samp0[]..swiz;
            r64.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.w, r28.w, l(236), t12.xxxx
            r30.w = samp0[]..swiz;
              r65.xyz = -v6.xyz + r48.yzw;
              r31.w = r51.x * r51.x;
              r32.w = dot(r65.xyz, r65.xyz);
              r31.w = r31.w / r32.w;
              r31.w = min(1, r31.w);
              r50.xy = saturate(r29.ww * r50.xz + r50.yw);
              r50.zw = r50.xy * r50.xy;
              r50.xy = r50.xy * float2(-2,-2) + float2(3,3);
              r50.xy = r50.zw * r50.xy;
              r31.w = r50.x * r31.w;
              r31.w = r31.w * r50.y;
              r52.w = r53.x;
              r50.x = dot(r52.xyzw, r22.xyzw);
              r65.xyz = r53.yzw;
              r65.w = r54.w;
              r50.y = dot(r65.xyzw, r22.xyzw);
              r24.xy = r50.xy / r29.ww;
              r29.w = cmp(r62.w < 0.00048828125);
              if (r29.w != 0) {
                r63.y = r64.x;
                r50.xy = saturate(abs(r24.xy) * r63.zw + r63.xy);
                r50.zw = r50.xy * r50.xy;
                r50.xy = r50.xy * float2(-2,-2) + float2(3,3);
                r50.xy = r50.zw * r50.xy;
                r29.w = r50.x * r50.y;
              } else {
                r62.w = r63.y;
                r50.xyzw = saturate(r62.xyzw * abs(r24.yyxx));
                r50.xyzw = log2(r50.xyzw);
                r50.xyzw = r63.xxxx * r50.xyzw;
                r50.xyzw = exp2(r50.xyzw);
                r50.xy = r50.xy + r50.zw;
                r50.xy = log2(r50.xy);
                r50.xy = r64.xx * r50.xy;
                r50.xy = exp2(r50.xy);
                r32.w = r63.z * r50.x;
                r33.w = r63.w * r50.y + -1;
                r32.w = r63.w * r50.y + -r32.w;
                r32.w = saturate(r33.w / r32.w);
                r33.w = r32.w * r32.w;
                r32.w = r32.w * -2 + 3;
                r29.w = r33.w * r32.w;
              }
              r61.x = r31.w * r29.w;
              r29.w = r30.w ? 0.000000 : 0;
              if (r29.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyz, r28.w, l(220), t12.xyzx
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
                r30.w = dot(r64.yzw, r24.xyz);
                r24.x = dot(r50.xyz, r24.xyz);
                r50.x = frac(r30.w);
                r50.y = frac(r24.x);
                r24.x = (int)r29.w + -1;
                r50.z = (uint)r24.x;
                r59.xzw = gCookieArray.SampleLevel(samplerLinear_s, r50.xyz, 0).xyz;
              } else {
                r59.xzw = float3(1,1,1);
              }
            }
            r48.yz = r49.yz;
            r48.xyz = r48.xyz * r59.xzw;
            r24.x = cmp(0 < r61.x);
            if (r24.x != 0) {
              if (3 == 0) r24.x = 0; else if (3+27 < 32) {               r24.x = (uint)r49.w << (32-(3 + 27)); r24.x = (uint)r24.x >> (32-3);              } else r24.x = (uint)r49.w >> 27;
              if (4 == 0) r24.y = 0; else if (4+20 < 32) {               r24.y = (uint)r49.w << (32-(4 + 20)); r24.y = (uint)r24.y >> (32-4);              } else r24.y = (uint)r49.w >> 20;
              r24.x = cmp((int)r24.x != 1);
              if (r24.x != 0) {
                r24.x = abs(r23.y) * -0.200000003 + 0.400000006;
                r29.w = cmp(r23.y < 0);
                r24.x = r29.w ? -r24.x : r24.x;
                r25.xyz = r2.xyz * r24.xxx + v6.xyz;
                r57.xyz = r54.xyz;
                r24.x = dot(r57.xyzw, r25.xyzw);
                r29.w = dot(r60.xyzw, r25.xyzw);
                r30.w = cmp(r29.w >= r24.x);
                if (r30.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.y, r28.w, l(144), t12.xxxx
                r58.y = samp0[]..swiz;
                  r52.w = r53.x;
                  r50.x = dot(r52.xyzw, r25.xyzw);
                  r54.xyz = r53.yzw;
                  r50.y = dot(r54.xyzw, r25.xyzw);
                  r25.xy = r50.xy / r29.ww;
                  r25.xy = saturate(r25.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r25.xy = r25.xy * r58.zw + r58.xy;
                  r24.x = r24.x / r29.w;
                  r24.x = max(6.10351563e-05, r24.x);
                  r28.w = (int)r49.w & 0x0000ffff;
                  if (r18.w != 0) {
                    r50.z = (uint)r28.w;
                    r29.w = 0;
                    r30.w = 0;
                    while (true) {
                      r31.w = cmp((int)r30.w >= 8);
                      if (r31.w != 0) break;
                      r52.x = dot(icb[r30.w+0].xy, r10.xy);
                      r52.y = dot(icb[r30.w+0].yx, r10.xz);
                      r50.xy = r52.xy * r51.yy + r25.xy;
                      r31.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r50.xyz, r24.x).x;
                      r29.w = r31.w * 0.125 + r29.w;
                      r30.w = (int)r30.w + 1;
                    }
                  } else {
                    r25.z = (uint)r28.w;
                    r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r24.x).x;
                  }
                  r24.x = r29.w * r29.w;
                  r61.y = r24.x * r29.w;
                } else {
                  r61.y = 1;
                }
              } else {
                r61.y = 1;
              }
              if (r24.y != 0) {
                r24.x = (int)r24.y + numLights;
                r24.x = (int)r24.x + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r24.x, l(52), t12.xxxx
              r24.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r24.x, l(68), t12.xyzw
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
              r50.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r24.x, l(84), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r24.x, l(100), t12.xyzw
              r52.x = samp0[]..swiz;
              r52.y = samp0[]..swiz;
              r52.z = samp0[]..swiz;
              r52.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r24.x, l(116), t12.xyzw
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
              r53.z = samp0[]..swiz;
              r53.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r24.x, l(132), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r24.x, l(148), t12.xyzw
              r57.x = samp0[]..swiz;
              r57.y = samp0[]..swiz;
              r57.z = samp0[]..swiz;
              r57.w = samp0[]..swiz;
                r25.x = abs(r23.y) * -0.200000003 + 0.400000006;
                r25.y = cmp(r23.y < 0);
                r25.x = r25.y ? -r25.x : r25.x;
                r26.xyz = r2.xyz * r25.xxx + v6.xyz;
                r25.x = dot(r50.xyzw, r26.xyzw);
                r25.y = dot(r51.xyzw, r26.xyzw);
                r25.z = dot(r52.xyzw, r26.xyzw);
                r26.x = dot(r53.xyzw, r26.xyzw);
                r26.y = cmp(r26.x < r25.z);
                r25.xy = r25.xy / r26.xx;
                r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r25.xy = r25.xy + r57.zw;
                r25.xy = r25.xy * r57.xy;
                r49.yz = r24.yy / r54.xz;
                r50.xy = float2(1,1) + -r49.yz;
                r50.xy = cmp(r25.xy >= r50.xy);
                r49.yz = cmp(r49.yz >= r25.xy);
                r49.yz = (int2)r49.yz | (int2)r50.xy;
                r26.z = (int)r49.z | (int)r49.y;
                r26.y = (int)r26.y | (int)r26.z;
                if (r26.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.y, r24.x, l(28), t12.xxxx
                r26.y = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.yz, r24.x, l(164), t12.xxyx
                r49.y = samp0[]..swiz;
                r49.z = samp0[]..swiz;
                  r25.xy = saturate(r25.xy);
                  r50.xy = r25.xy * r54.xz + r54.yw;
                  r24.x = r49.z * r26.x;
                  r25.x = r49.y * r26.x + r25.z;
                  r24.x = r25.x / r24.x;
                  r24.x = max(6.10351563e-05, r24.x);
                  r25.x = r26.y ? 0.000000 : 0;
                  if (r18.w != 0) {
                    r26.z = (uint)r25.x;
                    r25.yz = float2(0,0);
                    while (true) {
                      r28.w = cmp((int)r25.z >= 8);
                      if (r28.w != 0) break;
                      r51.x = dot(icb[r25.z+0].xy, r27.xy);
                      r51.y = dot(icb[r25.z+0].yx, r27.xz);
                      r26.xy = r51.xy * r24.yy + r50.xy;
                      r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r24.x).x;
                      r25.y = r26.x * 0.125 + r25.y;
                      r25.z = (int)r25.z + 1;
                    }
                  } else {
                    r50.z = (uint)r25.x;
                    r25.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r50.xyz, r24.x).x;
                  }
                  r24.x = r25.y * r25.y;
                  r24.x = r24.x * r25.y;
                } else {
                  r24.x = 1;
                }
                r61.y = r61.y * r24.x;
              }
              r24.x = r61.x * r61.y;
              r24.y = cmp(0 < r24.x);
              if (r24.y != 0) {
                r24.y = r49.x * r4.w;
                r24.y = 0.25 * r24.y;
                r25.x = -abs(r23.y) * r6.z + 1;
                r25.x = r25.x * r25.x;
                r25.x = -r25.x * 0.620000005 + 0.620000005;
                r25.x = r25.x + -abs(r23.y);
                r25.x = r5.w * r25.x + abs(r23.y);
                r25.z = cmp(0 < r23.y);
                r23.y = saturate(r23.y);
                r26.xyz = r55.xyz * r23.xxx + r7.xyz;
                r23.x = dot(r26.xyz, r26.xyz);
                r23.x = rsqrt(r23.x);
                r26.xyz = r26.xyz * r23.xxx;
                r23.x = dot(r2.xyz, r26.xyz);
                r28.w = dot(r26.xyz, r7.xyz);
                r30.w = dot(r26.xyz, r4.xyz);
                r26.x = dot(r26.xyz, r5.xyz);
                r26.y = r30.w * r30.w;
                r26.x = r26.x * r26.x;
                r26.xy = r26.xy / r1.zx;
                r26.x = r26.y + r26.x;
                r23.x = abs(r23.x) * abs(r23.x) + r26.x;
                r26.x = r23.y * r7.w + r9.z;
                r23.x = r23.x * r23.x;
                r23.x = r23.x * r6.w;
                r23.x = r23.x * r26.x;
                r23.x = rcp(r23.x);
                r23.y = r23.y * r24.y;
                r23.x = r23.x * r23.y;
                r23.y = saturate(1 + -r28.w);
                r24.y = r23.y * r23.y;
                r24.y = r24.y * r24.y;
                r23.y = r24.y * r23.y;
                r23.y = r23.x * r23.y;
                r26.xyz = r25.zzz ? r25.xxx : 0;
                r24.y = r25.z ? 0 : r25.x;
                r49.xyz = r25.zzz ? r23.yyy : 0;
                r23.x = r25.z ? r23.x : 0;
                r23.y = dot(r48.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r23.y = r24.x * r23.y;
                r25.x = cmp(r24.w < r23.y);
                if (r25.x != 0) {
                  r25.x = r20.z * r20.w;
                  r50.xyz = r25.xxx * r42.xyz;
                  r21.xyz = r50.xyz * r44.xyz + r21.xyz;
                  r39.xyz = r50.xyz * r47.xyz + r39.xyz;
                  r41.xyz = r50.xyz * r45.xyz + r41.xyz;
                  r40.xyz = r50.xyz * r46.xyz + r40.xyz;
                  r45.xyz = r23.xxx;
                  r24.w = r23.y;
                  r47.xyz = r24.yyy;
                  r42.xyz = r48.xyz;
                  r43.xyz = r56.xyz;
                  r44.xyz = r26.xyz;
                  r46.xyz = r49.xyz;
                  r20.zw = r61.xy;
                } else {
                  r48.xyz = r24.xxx * r48.xyz;
                  r21.xyz = r48.xyz * r26.zzz + r21.xyz;
                  r39.xyz = r48.xyz * r24.yyy + r39.xyz;
                  r41.xyz = r48.xyz * r23.xxx + r41.xyz;
                  r40.xyz = r48.xyz * r49.xyz + r40.xyz;
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
    r28.xyz = r21.xyz;
    r29.xyz = r39.xyz;
    r30.xyz = r40.xyz;
    r31.xyz = r41.xyz;
    r32.xyz = r42.xyz;
    r33.xyz = r43.xyz;
    r34.xyz = r44.xyz;
    r36.xyz = r45.xyz;
    r37.xyz = r46.xyz;
    r38.zw = r20.zw;
    r38.y = r24.w;
    r35.xyz = r47.xyz;
    r15.w = (int)r15.w + 32;
  }
  r4.z = 0;
  r4.xy = float2(1,-1) * r33.yx;
  r5.xyz = r33.zxy * r4.yzx;
  r5.xyz = r33.yzx * r4.zxy + -r5.xyz;
  r9.xyz = viewProjectionMatrix._m10_m11_m13 * r14.yyy;
  r9.xyz = r14.xxx * viewProjectionMatrix._m00_m01_m03 + r9.xyz;
  r9.xyz = r14.zzz * viewProjectionMatrix._m20_m21_m23 + r9.xyz;
  r9.xyz = r9.xyz + r8.yzw;
  r10.z = rcp(r9.z);
  r1.xz = r10.zz * r9.xy;
  r10.xy = r1.xz * float2(0.5,-0.5) + float2(0.5,0.5);
  r9.xyw = r33.xyz * float3(2.4000001,2.4000001,2.4000001) + r14.xyz;
  r1.x = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r1.x = frac(r1.x);
  r1.x = 52.9829178 * r1.x;
  r1.x = frac(r1.x);
  r1.z = 3.14159989 * r1.x;
  r1.z = gameTick.w * 0.5 + r1.z;
  sincos(r1.z, r8.x, r11.x);
  r11.yzw = r8.xxx * r5.xyz;
  r11.xyz = r11.xxx * r4.xyz + r11.yzw;
  r11.xyz = r11.xyz * float3(0.119999997,0.119999997,0.119999997) + r9.xyw;
  r13.xyz = viewProjectionMatrix._m10_m11_m13 * r11.yyy;
  r11.xyw = r11.xxx * viewProjectionMatrix._m00_m01_m03 + r13.xyz;
  r11.xyz = r11.zzz * viewProjectionMatrix._m20_m21_m23 + r11.xyw;
  r11.xyz = r11.xyz + r8.yzw;
  r6.zw = float2(0.5,-0.5) * r11.xy;
  r11.z = rcp(r11.z);
  r11.xy = r6.zw * r11.zz + float2(0.5,0.5);
  r13.xyz = -r10.xyz;
  r11.xyz = r13.xyz + r11.xyz;
  r1.z = 3.14159989 + r1.z;
  sincos(r1.z, r8.x, r14.x);
  r5.xyz = r8.xxx * r5.xyz;
  r4.xyz = r14.xxx * r4.xyz + r5.xyz;
  r4.xyz = r4.xyz * float3(0.119999997,0.119999997,0.119999997) + r9.xyw;
  r5.xyz = viewProjectionMatrix._m10_m11_m13 * r4.yyy;
  r4.xyw = r4.xxx * viewProjectionMatrix._m00_m01_m03 + r5.xyz;
  r4.xyz = r4.zzz * viewProjectionMatrix._m20_m21_m23 + r4.xyw;
  r4.xyz = r4.xyz + r8.yzw;
  r4.xy = float2(0.5,-0.5) * r4.xy;
  r5.z = rcp(r4.z);
  r5.xy = r4.xy * r5.zz + r13.xy;
  r13.w = 0.5;
  r4.xyz = r5.xyz + r13.wwz;
  r1.z = dot(renderTargetSize.zw, renderTargetSize.zw);
  r1.z = sqrt(r1.z);
  r3.w = dot(r11.xy, r11.xy);
  r3.w = sqrt(r3.w);
  r3.w = rcp(r3.w);
  r1.z = r3.w * r1.z;
  r5.xy = r1.xx * float2(0.5,0.5) + float2(0.333333343,1);
  r5.xy = float2(0.117647059,0.117647059) * r5.xy;
  r5.xy = r5.xy * r5.xy;
  x1[0].x = r5.x;
  r8.xyz = r11.xyz * r5.xxx + r10.xyz;
  r5.zw = cmp(r1.zz < r5.xy);
  r6.zw = renderTargetSize.xy * r8.xy;
  r13.xy = (int2)r6.zw;
  r13.zw = float2(0,0);
  r3.w = floatZSampler.Load(r13.xyz).x;
  r4.w = cmp(r3.w >= 0.984375);
  r6.z = 1.01587307 * r3.w;
  r3.w = r3.w * 64 + -63;
  r3.w = r4.w ? r3.w : r6.z;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  x2[0].x = r3.w;
  r4.w = 0.0419999994 + r3.w;
  r4.w = r8.z * r4.w;
  r4.w = cmp(1 < r4.w);
  r4.w = r4.w ? 1.000000 : 0;
  r4.w = r5.z ? r4.w : 1;
  x0[0].x = r4.w;
  x1[1].x = r5.y;
  r8.xyz = r4.xyz * r5.yyy + r10.xyz;
  r6.zw = renderTargetSize.xy * r8.xy;
  r13.xy = (int2)r6.zw;
  r13.zw = float2(0,0);
  r5.z = floatZSampler.Load(r13.xyz).x;
  r6.z = cmp(r5.z >= 0.984375);
  r6.w = 1.01587307 * r5.z;
  r5.z = r5.z * 64 + -63;
  r5.z = r6.z ? r5.z : r6.w;
  r5.z = max(9.99999994e-09, r5.z);
  r5.z = rcp(r5.z);
  x2[1].x = r5.z;
  r6.z = 0.0419999994 + r5.z;
  r6.z = r8.z * r6.z;
  r6.z = cmp(1 < r6.z);
  r6.z = r6.z ? 1.000000 : 0;
  r5.w = r5.w ? r6.z : 1;
  x0[1].x = r5.w;
  r6.z = r5.w + r4.w;
  r6.z = cmp(r6.z != 0.000000);
  if (r6.z != 0) {
    r6.zw = r1.xx * float2(0.5,0.5) + float2(1.33333337,2);
    r6.zw = float2(0.117647059,0.117647059) * r6.zw;
    r6.zw = r6.zw * r6.zw + -r5.xy;
    r5.x = r4.w * r6.z + r5.x;
    x1[0].x = r5.x;
    r8.xyz = r11.xyz * r5.xxx + r10.xyz;
    r5.x = cmp(r1.z < r5.x);
    r8.xy = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r8.xy;
    r13.zw = float2(0,0);
    r6.z = floatZSampler.Load(r13.xyz).x;
    r7.w = cmp(r6.z >= 0.984375);
    r8.x = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.w ? r6.z : r8.x;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r3.w = r5.x ? r6.z : r3.w;
    x2[0].x = r3.w;
    r3.w = 0.0419999994 + r6.z;
    r3.w = r8.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r3.w = r5.x ? r3.w : r4.w;
    x0[0].x = r3.w;
    r4.w = r5.w * r6.w + r5.y;
    x1[1].x = r4.w;
    r8.xyz = r4.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.z < r4.w);
    r5.xy = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.xy;
    r13.zw = float2(0,0);
    r5.x = floatZSampler.Load(r13.xyz).x;
    r5.y = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.y ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.y = r4.w ? r5.x : r5.z;
    x2[1].x = r5.y;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r8.z * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.w * r5.x;
    r4.w = r4.w ? r5.x : r5.w;
    x0[1].x = r4.w;
    r3.w = r4.w + r3.w;
    r3.w = cmp(r3.w == 0.000000);
  } else {
    r3.w = -1;
  }
  if (r3.w == 0) {
    r5.xy = r1.xx * float2(0.5,0.5) + float2(2.33333325,3);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r5.x = r5.x * r5.x + -r3.w;
    r3.w = r4.w * r5.x + r3.w;
    x1[0].x = r3.w;
    r5.xzw = r11.xyz * r3.www + r10.xyz;
    r3.w = cmp(r1.z < r3.w);
    r5.xz = renderTargetSize.xy * r5.xz;
    r8.xy = (int2)r5.xz;
    r8.zw = float2(0,0);
    r5.x = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.z ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.z = x2[0].x;
    r5.z = r3.w ? r5.x : r5.z;
    x2[0].x = r5.z;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r5.w * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.w;
    r3.w = r3.w ? r5.x : r4.w;
    x0[0].x = r3.w;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r5.y = r5.y * r5.y + -r4.w;
    r4.w = r5.x * r5.y + r4.w;
    x1[1].x = r4.w;
    r5.yzw = r4.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.z < r4.w);
    r5.yz = renderTargetSize.xy * r5.yz;
    r8.xy = (int2)r5.yz;
    r8.zw = float2(0,0);
    r5.y = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.z ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.z = x2[1].x;
    r5.z = r4.w ? r5.y : r5.z;
    x2[1].x = r5.z;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r5.w * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.x * r5.y;
    r4.w = r4.w ? r5.y : r5.x;
    x0[1].x = r4.w;
    r3.w = r4.w + r3.w;
    r3.w = cmp(r3.w == 0.000000);
  } else {
    r3.w = -1;
  }
  if (r3.w == 0) {
    r5.xy = r1.xx * float2(0.5,0.5) + float2(3.33333325,4);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r5.x = r5.x * r5.x + -r3.w;
    r3.w = r4.w * r5.x + r3.w;
    x1[0].x = r3.w;
    r5.xzw = r11.xyz * r3.www + r10.xyz;
    r3.w = cmp(r1.z < r3.w);
    r5.xz = renderTargetSize.xy * r5.xz;
    r8.xy = (int2)r5.xz;
    r8.zw = float2(0,0);
    r5.x = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.z ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.z = x2[0].x;
    r5.z = r3.w ? r5.x : r5.z;
    x2[0].x = r5.z;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r5.w * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.w;
    r3.w = r3.w ? r5.x : r4.w;
    x0[0].x = r3.w;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r5.y = r5.y * r5.y + -r4.w;
    r4.w = r5.x * r5.y + r4.w;
    x1[1].x = r4.w;
    r5.yzw = r4.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.z < r4.w);
    r5.yz = renderTargetSize.xy * r5.yz;
    r8.xy = (int2)r5.yz;
    r8.zw = float2(0,0);
    r5.y = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.z ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.z = x2[1].x;
    r5.z = r4.w ? r5.y : r5.z;
    x2[1].x = r5.z;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r5.w * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.x * r5.y;
    r4.w = r4.w ? r5.y : r5.x;
    x0[1].x = r4.w;
    r3.w = r4.w + r3.w;
    r3.w = cmp(r3.w == 0.000000);
  } else {
    r3.w = -1;
  }
  if (r3.w == 0) {
    r5.xy = r1.xx * float2(0.5,0.5) + float2(4.33333349,5);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r5.x = r5.x * r5.x + -r3.w;
    r3.w = r4.w * r5.x + r3.w;
    x1[0].x = r3.w;
    r5.xzw = r11.xyz * r3.www + r10.xyz;
    r3.w = cmp(r1.z < r3.w);
    r5.xz = renderTargetSize.xy * r5.xz;
    r8.xy = (int2)r5.xz;
    r8.zw = float2(0,0);
    r5.x = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.z ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.z = x2[0].x;
    r5.z = r3.w ? r5.x : r5.z;
    x2[0].x = r5.z;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r5.w * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.w;
    r3.w = r3.w ? r5.x : r4.w;
    x0[0].x = r3.w;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r5.y = r5.y * r5.y + -r4.w;
    r4.w = r5.x * r5.y + r4.w;
    x1[1].x = r4.w;
    r5.yzw = r4.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.z < r4.w);
    r5.yz = renderTargetSize.xy * r5.yz;
    r8.xy = (int2)r5.yz;
    r8.zw = float2(0,0);
    r5.y = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.z ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.z = x2[1].x;
    r5.z = r4.w ? r5.y : r5.z;
    x2[1].x = r5.z;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r5.w * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.x * r5.y;
    r4.w = r4.w ? r5.y : r5.x;
    x0[1].x = r4.w;
    r3.w = r4.w + r3.w;
    r3.w = cmp(r3.w == 0.000000);
  } else {
    r3.w = -1;
  }
  if (r3.w == 0) {
    r5.xy = r1.xx * float2(0.5,0.5) + float2(5.33333349,6);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r5.x = r5.x * r5.x + -r3.w;
    r3.w = r4.w * r5.x + r3.w;
    x1[0].x = r3.w;
    r5.xzw = r11.xyz * r3.www + r10.xyz;
    r3.w = cmp(r1.z < r3.w);
    r5.xz = renderTargetSize.xy * r5.xz;
    r8.xy = (int2)r5.xz;
    r8.zw = float2(0,0);
    r5.x = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.z ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.z = x2[0].x;
    r5.z = r3.w ? r5.x : r5.z;
    x2[0].x = r5.z;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r5.w * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.w;
    r3.w = r3.w ? r5.x : r4.w;
    x0[0].x = r3.w;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r5.y = r5.y * r5.y + -r4.w;
    r4.w = r5.x * r5.y + r4.w;
    x1[1].x = r4.w;
    r5.yzw = r4.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.z < r4.w);
    r5.yz = renderTargetSize.xy * r5.yz;
    r8.xy = (int2)r5.yz;
    r8.zw = float2(0,0);
    r5.y = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.z ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.z = x2[1].x;
    r5.z = r4.w ? r5.y : r5.z;
    x2[1].x = r5.z;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r5.w * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.x * r5.y;
    r4.w = r4.w ? r5.y : r5.x;
    x0[1].x = r4.w;
    r3.w = r4.w + r3.w;
    r3.w = cmp(r3.w == 0.000000);
  } else {
    r3.w = -1;
  }
  if (r3.w == 0) {
    r5.xy = r1.xx * float2(0.5,0.5) + float2(6.33333349,7);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r3.w = x1[0].x;
    r4.w = x0[0].x;
    r5.x = r5.x * r5.x + -r3.w;
    r3.w = r4.w * r5.x + r3.w;
    x1[0].x = r3.w;
    r5.xzw = r11.xyz * r3.www + r10.xyz;
    r3.w = cmp(r1.z < r3.w);
    r5.xz = renderTargetSize.xy * r5.xz;
    r8.xy = (int2)r5.xz;
    r8.zw = float2(0,0);
    r5.x = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.z ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.z = x2[0].x;
    r5.z = r3.w ? r5.x : r5.z;
    x2[0].x = r5.z;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r5.w * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.w;
    r3.w = r3.w ? r5.x : r4.w;
    x0[0].x = r3.w;
    r4.w = x1[1].x;
    r5.x = x0[1].x;
    r5.y = r5.y * r5.y + -r4.w;
    r4.w = r5.x * r5.y + r4.w;
    x1[1].x = r4.w;
    r5.yzw = r4.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.z < r4.w);
    r5.yz = renderTargetSize.xy * r5.yz;
    r8.xy = (int2)r5.yz;
    r8.zw = float2(0,0);
    r5.y = floatZSampler.Load(r8.xyz).x;
    r5.z = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.z ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.z = x2[1].x;
    r5.z = r4.w ? r5.y : r5.z;
    x2[1].x = r5.z;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r5.w * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.x * r5.y;
    r4.w = r4.w ? r5.y : r5.x;
    x0[1].x = r4.w;
    r3.w = r4.w + r3.w;
    r3.w = cmp(r3.w == 0.000000);
  } else {
    r3.w = -1;
  }
  if (r3.w == 0) {
    r5.xy = r1.xx * float2(0.5,0.5) + float2(7.33333349,8);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r1.x = x1[0].x;
    r3.w = x0[0].x;
    r4.w = r5.x * r5.x + -r1.x;
    r1.x = r3.w * r4.w + r1.x;
    r5.xzw = r11.xyz * r1.xxx + r10.xyz;
    r1.x = cmp(r1.z < r1.x);
    r5.xz = renderTargetSize.xy * r5.xz;
    r8.xy = (int2)r5.xz;
    r8.zw = float2(0,0);
    r4.w = floatZSampler.Load(r8.xyz).x;
    r5.x = cmp(r4.w >= 0.984375);
    r5.z = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r5.x ? r4.w : r5.z;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r5.x = x2[0].x;
    r5.x = r1.x ? r4.w : r5.x;
    x2[0].x = r5.x;
    r4.w = 0.0419999994 + r4.w;
    r4.w = r5.w * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r4.w * r3.w;
    r1.x = r1.x ? r4.w : r3.w;
    x0[0].x = r1.x;
    r1.x = x1[1].x;
    r3.w = x0[1].x;
    r4.w = r5.y * r5.y + -r1.x;
    r1.x = r3.w * r4.w + r1.x;
    r4.xyz = r4.xyz * r1.xxx + r10.xyz;
    r1.x = cmp(r1.z < r1.x);
    r4.xy = renderTargetSize.xy * r4.xy;
    r5.xy = (int2)r4.xy;
    r5.zw = float2(0,0);
    r1.z = floatZSampler.Load(r5.xyz).x;
    r4.x = cmp(r1.z >= 0.984375);
    r4.y = 1.01587307 * r1.z;
    r1.z = r1.z * 64 + -63;
    r1.z = r4.x ? r1.z : r4.y;
    r1.z = max(9.99999994e-09, r1.z);
    r1.z = rcp(r1.z);
    r4.x = x2[1].x;
    r4.x = r1.x ? r1.z : r4.x;
    x2[1].x = r4.x;
    r1.z = 0.0419999994 + r1.z;
    r1.z = r4.z * r1.z;
    r1.z = cmp(1 < r1.z);
    r1.z = r1.z ? 1.000000 : 0;
    r1.z = r3.w * r1.z;
    r1.x = r1.x ? r1.z : r3.w;
    x0[1].x = r1.x;
  }
  r1.x = x0[0].x;
  r1.y = -debugGlossOverride.w * r1.y + 1;
  r1.z = 5 * r1.y;
  r3.w = r1.y * 5 + -2.5;
  r3.w = saturate(0.400000006 * r3.w);
  r3.w = 100 * r3.w;
  r4.xy = -r1.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r4.x = exp2(r4.x);
  r4.x = r6.x * r4.x;
  r4.z = r1.z * r1.y;
  r4.y = -r4.z * 2.0159049 + r4.y;
  r4.y = exp2(r4.y);
  r4.y = r6.x * r4.y;
  r4.xy = float2(9.1368103,9.70808983) * r4.xy;
  r4.x = max(r4.x, r4.y);
  r4.x = max(1.26815999, r4.x);
  r5.xy = float2(0,0);
  r8.w = 0;
  r10.yz = float2(0,1);
  r11.xy = float2(0,0);
  r13.xy = float2(0,0);
  r14.xy = float2(0,0);
  r9.x = 1;
  r15.xyzw = float4(0,0,0,0);
  r16.yzw = float3(0,0,0);
  r4.yz = float2(0,0);
  while (true) {
    r4.w = cmp((uint)r4.z >= numRefProbes);
    if (r4.w != 0) break;
    r5.z = (uint)r4.z >> 5;
    r8.xyz = (int3)r5.xyz + (int3)r18.xyz;
    r4.w = visibleProbes.Load(r8.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r4.z, l(0), t15.wxyz
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r4.z, l(16), t15.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r4.z, l(32), t15.yxwz
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r4.z, l(48), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r4.z, l(64), t15.zwxy
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r4.z, l(80), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r5.zw, r4.z, l(96), t15.xxxy
  r5.z = samp0[]..swiz;
  r5.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r4.z, l(116), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r4.z, l(132), t15.zwxy
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r4.z, l(148), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r4.z, l(164), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r4.z, l(180), t15.zwxy
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r4.z, l(196), t15.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r4.z, l(212), t15.xyxx
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
    r8.xyz = v6.xyz + -r17.yzw;
    r6.z = dot(r8.xyz, r8.xyz);
    r6.z = sqrt(r6.z);
    r6.z = cmp(probeDebugRadius >= r6.z);
    r6.w = (int)r24.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r6.w, l(0), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r42.xyzw, r6.w, l(16), t16.xyzw
  r42.x = samp0[]..swiz;
  r42.y = samp0[]..swiz;
  r42.z = samp0[]..swiz;
  r42.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r43.xyzw, r6.w, l(32), t16.xyzw
  r43.x = samp0[]..swiz;
  r43.y = samp0[]..swiz;
  r43.z = samp0[]..swiz;
  r43.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r44.xyzw, r6.w, l(48), t16.xyzw
  r44.x = samp0[]..swiz;
  r44.y = samp0[]..swiz;
  r44.z = samp0[]..swiz;
  r44.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r45.xyzw, r6.w, l(64), t16.xyzw
  r45.x = samp0[]..swiz;
  r45.y = samp0[]..swiz;
  r45.z = samp0[]..swiz;
  r45.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r46.xyzw, r6.w, l(80), t16.xyzw
  r46.x = samp0[]..swiz;
  r46.y = samp0[]..swiz;
  r46.z = samp0[]..swiz;
  r46.w = samp0[]..swiz;
    r7.w = dot(r41.xyz, r8.xyz);
    r7.w = saturate(r7.w + r41.w);
    r9.w = dot(r42.xyz, r8.xyz);
    r9.w = saturate(r9.w + r42.w);
    r7.w = r9.w * r7.w;
    r9.w = dot(r43.xyz, r8.xyz);
    r9.w = saturate(r9.w + r43.w);
    r7.w = r9.w * r7.w;
    r9.w = dot(r44.xyz, r8.xyz);
    r9.w = saturate(r9.w + r44.w);
    r7.w = r9.w * r7.w;
    r9.w = dot(r45.xyz, r8.xyz);
    r9.w = saturate(r9.w + r45.w);
    r7.w = r9.w * r7.w;
    r9.w = dot(r46.xyz, r8.xyz);
    r9.w = saturate(r9.w + r46.w);
    r10.x = r9.w * r7.w;
    r7.w = (int)r5.z & 1;
    r10.xw = r7.ww ? r10.xy : r10.zx;
    r41.xy = r24.zw;
    r41.z = r25.z;
    r7.w = dot(r12.xyz, r41.xyz);
    r9.w = dot(r8.xyz, r41.xyz);
    r9.w = r9.w + -r25.w;
    r11.w = cmp(r9.w >= 0);
    r9.w = max(abs(r9.w), r3.w);
    r9.w = r11.w ? r9.w : -r9.w;
    r7.w = max(1.00000001e-07, -r7.w);
    r7.w = r9.w / r7.w;
    r7.w = min(131072, abs(r7.w));
    r25.z = r26.z;
    r9.w = dot(r12.xyz, r25.xyz);
    r11.w = dot(r8.xyz, r25.xyz);
    r11.w = r11.w + -r26.w;
    r13.w = cmp(r11.w >= 0);
    r11.w = max(abs(r11.w), r3.w);
    r11.w = r13.w ? r11.w : -r11.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r11.w / r9.w;
    r7.w = min(abs(r9.w), r7.w);
    r26.z = r27.z;
    r9.w = dot(r12.xyz, r26.xyz);
    r11.w = dot(r8.xyz, r26.xyz);
    r11.w = r11.w + -r27.w;
    r13.w = cmp(r11.w >= 0);
    r11.w = max(abs(r11.w), r3.w);
    r11.w = r13.w ? r11.w : -r11.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r11.w / r9.w;
    r7.w = min(abs(r9.w), r7.w);
    r27.z = r33.z;
    r9.w = dot(r12.xyz, r27.xyz);
    r11.w = dot(r8.xyz, r27.xyz);
    r11.w = r11.w + -r33.w;
    r13.w = cmp(r11.w >= 0);
    r11.w = max(abs(r11.w), r3.w);
    r11.w = r13.w ? r11.w : -r11.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r11.w / r9.w;
    r7.w = min(abs(r9.w), r7.w);
    r33.z = r39.x;
    r9.w = dot(r12.xyz, r33.xyz);
    r11.w = dot(r8.xyz, r33.xyz);
    r11.w = r11.w + -r39.y;
    r13.w = cmp(r11.w >= 0);
    r11.w = max(abs(r11.w), r3.w);
    r11.w = r13.w ? r11.w : -r11.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r11.w / r9.w;
    r7.w = min(abs(r9.w), r7.w);
    r40.zw = r39.zw;
    r9.w = dot(r12.zxy, r40.xzw);
    r11.w = dot(r8.zxy, r40.xzw);
    r11.w = r11.w + -r40.y;
    r13.w = cmp(r11.w >= 0);
    r11.w = max(abs(r11.w), r3.w);
    r11.w = r13.w ? r11.w : -r11.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r11.w / r9.w;
    r7.w = min(abs(r9.w), r7.w);
    r25.x = r21.w;
    r25.yz = r22.zw;
    r25.xyz = r25.xyz + r8.xyz;
    r25.xyz = r12.xyz * r7.www + r25.xyz;
    r9.w = dot(r25.xyz, r25.xyz);
    r9.w = sqrt(r9.w);
    r7.w = r7.w / r9.w;
    r7.w = r7.w + r7.w;
    r7.w = sqrt(r7.w);
    r7.w = r1.y * 5 + r7.w;
    r7.w = -0.844799995 + r7.w;
    r17.y = r19.z;
    r17.z = r20.x;
    r26.x = dot(r25.xyz, r17.xyz);
    r27.xy = r19.xw;
    r27.z = r20.w;
    r26.y = dot(r25.xyz, r27.xyz);
    r20.x = r19.y;
    r26.z = dot(r25.xyz, r20.xyz);
    if (6 == 0) r19.x = 0; else if (6+25 < 32) {     r19.x = (uint)r24.y << (32-(6 + 25)); r19.x = (uint)r19.x >> (32-6);    } else r19.x = (uint)r24.y >> 25;
    if (9 == 0) r19.y = 0; else if (9+16 < 32) {     r19.y = (uint)r24.y << (32-(9 + 16)); r19.y = (uint)r19.y >> (32-9);    } else r19.y = (uint)r24.y >> 16;
    r26.w = (uint)r19.y;
    r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, r7.w).xyz;
    r24.yzw = (int3)r19.yzw & int3(-2147483648,-2147483648,-2147483648);
    r24.yzw = cmp((int3)r24.yzw == int3(2139095040,2139095040,2139095040));
    r7.w = (int)r24.z | (int)r24.y;
    r7.w = (int)r24.w | (int)r7.w;
    r19.yzw = r7.www ? float3(1,1,0) : r19.yzw;
    r25.x = dot(r8.xyz, r17.xyz);
    r25.y = dot(r8.xyz, r27.xyz);
    r25.z = dot(r8.xyz, r20.xyz);
    r21.xyz = saturate(r25.xyz * r21.xyz + float3(0.5,0.5,0.5));
    r22.z = r23.x;
    r21.xyz = r21.xyz * r22.xyz + r23.yzw;
    r26.x = dot(r2.xyz, r17.xyz);
    r26.y = dot(r2.xyz, r27.xyz);
    r26.z = dot(r2.xyz, r20.xyz);
    r17.xyz = cmp(float3(0,0,0) < r26.xyz);
    r11.z = r17.x ? 0 : 0.5;
    r20.xyz = r21.xyz + r11.xyz;
    r20.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r20.xyz, 0).xyz;
    r13.z = r17.y ? 0 : 0.5;
    r17.xyw = r21.xyz + r13.xyz;
    r17.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyw, 0).xyz;
    r14.z = r17.z ? 0 : 0.5;
    r21.xyz = r21.xyz + r14.xyz;
    r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r22.xyz = r26.xyz * r26.xyz;
    r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r26.xyzw, 6).xyz;
    r24.yzw = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
    r24.yzw = cmp((int3)r24.yzw == int3(2139095040,2139095040,2139095040));
    r7.w = (int)r24.z | (int)r24.y;
    r7.w = (int)r24.w | (int)r7.w;
    r23.xyz = r7.www ? float3(1,1,0) : r23.xyz;
    r25.xyzw = r15.xyzw;
    r24.yzw = r16.yzw;
    r7.w = r4.y;
    r9.w = r4.w;
    while (true) {
      if (r9.w == 0) break;
      r11.z = firstbitlow((uint)r9.w);
      r11.z = 1 << (int)r11.z;
      r11.w = (int)r9.w & (int)r11.z;
      if (r11.w != 0) {
        r11.z = ~(int)r11.z;
        r9.w = (int)r9.w & (int)r11.z;
        if (r6.z != 0) {
          r11.z = r5.z;
          r26.xy = r10.xw;
          r11.w = 1;
          while (true) {
            r13.z = cmp((int)r11.w >= (int)r19.x);
            if (r13.z != 0) break;
            r13.z = (int)r6.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.z, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(16), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r13.z, l(32), t16.xyzw
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
          r39.z = samp0[]..swiz;
          r39.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r13.z, l(48), t16.xyzw
          r40.x = samp0[]..swiz;
          r40.y = samp0[]..swiz;
          r40.z = samp0[]..swiz;
          r40.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r13.z, l(64), t16.xyzw
          r41.x = samp0[]..swiz;
          r41.y = samp0[]..swiz;
          r41.z = samp0[]..swiz;
          r41.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r42.xyzw, r13.z, l(80), t16.xyzw
          r42.x = samp0[]..swiz;
          r42.y = samp0[]..swiz;
          r42.z = samp0[]..swiz;
          r42.w = samp0[]..swiz;
            r13.z = dot(r27.xyz, r8.xyz);
            r13.z = saturate(r13.z + r27.w);
            r13.z = r26.x * r13.z;
            r13.w = dot(r33.xyz, r8.xyz);
            r13.w = saturate(r13.w + r33.w);
            r13.z = r13.z * r13.w;
            r13.w = dot(r39.xyz, r8.xyz);
            r13.w = saturate(r13.w + r39.w);
            r13.z = r13.z * r13.w;
            r13.w = dot(r40.xyz, r8.xyz);
            r13.w = saturate(r13.w + r40.w);
            r13.z = r13.z * r13.w;
            r13.w = dot(r41.xyz, r8.xyz);
            r13.w = saturate(r13.w + r41.w);
            r13.z = r13.z * r13.w;
            r13.w = dot(r42.xyz, r8.xyz);
            r13.w = saturate(r13.w + r42.w);
            r26.x = r13.z * r13.w;
            r14.z = (uint)r11.z >> 2;
            if (1 == 0) r14.w = 0; else if (1+2 < 32) {             r14.w = (uint)r11.z << (32-(1 + 2)); r14.w = (uint)r14.w >> (32-1);            } else r14.w = (uint)r11.z >> 2;
            r17.z = (int)r14.z & 2;
            r18.w = max(r26.y, r26.x);
            r13.z = -r13.z * r13.w + 1;
            r13.z = r26.y * r13.z;
            r9.y = r17.z ? r13.z : r18.w;
            r26.xy = r14.ww ? r26.xy : r9.xy;
            r11.w = (int)r11.w + 1;
            r11.z = r14.z;
          }
          r26.y = saturate(r26.y);
          r9.y = r26.y * r5.w;
          r11.z = cmp(0 < r9.y);
          if (r11.z != 0) {
            r27.z = r26.y * r5.w + r24.w;
            r9.y = r9.y * r24.x;
            r26.xzw = r22.xyz * r9.yyy;
            r33.xyz = r26.zzz * r17.xyw;
            r33.xyz = r20.xyz * r26.xxx + r33.xyz;
            r26.xzw = r21.xyz * r26.www + r33.xyz;
            r33.xyz = r26.xzw * r23.xyz;
            r11.z = dot(r33.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r33.xyz = r26.xzw * r23.xyz + r25.xyz;
            r11.w = r11.z * r4.x;
            r26.xzw = r19.yzw * r9.yyy;
            r9.y = dot(r26.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r9.y = r4.x * r11.z + r9.y;
            r9.y = r11.w / r9.y;
            r39.x = r25.w;
            r39.yz = r24.yz;
            r27.xyw = r26.zwx * r9.yyy + r39.yzx;
            r33.w = r27.w;
          } else {
            r33.xyzw = r25.xyzw;
            r27.xyz = r24.yzw;
          }
          r7.w = -1;
          r25.xyzw = r33.xyzw;
          r24.yzw = r27.xyz;
          break;
        }
      }
    }
    if (r7.w != 0) {
      r15.xyzw = r25.xyzw;
      r16.yzw = r24.yzw;
      r4.y = -1;
      break;
    }
    r4.z = (int)r4.z + 32;
    r15.xyzw = r25.xyzw;
    r16.yzw = r24.yzw;
    r4.y = r7.w;
  }
  if (r4.y == 0) {
    r4.y = numRefProbes + -numOverrideProbes;
    r4.z = (int)r4.y & -32;
    r4.w = (int)-r4.z + (int)r4.y;
    r5.x = numRefProbes & -32;
    r5.y = (int)-r5.x + numRefProbes;
    r8.xy = float2(0,0);
    r10.w = 0;
    r11.yz = float2(0,1);
    r13.xy = float2(0,0);
    r9.x = 1;
    r14.xy = float2(0,0);
    r17.xy = float2(0,0);
    r19.xyzw = r15.xyzw;
    r20.yzw = r16.yzw;
    r5.z = r4.z;
    while (true) {
      r5.w = cmp((uint)r5.z >= numRefProbes);
      if (r5.w != 0) break;
      r8.z = (uint)r5.z >> 5;
      r10.xyz = (int3)r8.xyz + (int3)r18.xyz;
      r5.w = visibleProbes.Load(r10.xyzw).x;
      r6.z = cmp((int)r4.z == (int)r5.z);
      bitmask.w = ((~(-1 << r4.w)) << 0) & 0xffffffff;  r6.w = (((uint)0 << 0) & bitmask.w) | ((uint)r5.w & ~bitmask.w);
      r5.w = r6.z ? r6.w : r5.w;
      r6.z = cmp((int)r5.x == (int)r5.z);
      if (r5.y == 0) r6.w = 0; else if (r5.y+0 < 32) {       r6.w = (uint)r5.w << (32-(r5.y + 0)); r6.w = (uint)r6.w >> (32-r5.y);      } else r6.w = (uint)r5.w >> 0;
      r5.w = r6.z ? r6.w : r5.w;
      r6.z = (int)r5.z + numLights;
      r21.xyzw = r19.xyzw;
      r22.xyz = r20.yzw;
      r6.w = r5.w;
      while (true) {
        if (r6.w == 0) break;
        r7.w = firstbitlow((uint)r6.w);
        r8.z = 1 << (int)r7.w;
        r8.w = (int)r6.w & (int)r8.z;
        if (r8.w != 0) {
          r6.w = (int)r6.w ^ (int)r8.z;
          r8.z = (int)r6.z + (int)r7.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r8.z, l(0), t11.xyzw
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r10.xy, r8.z, l(16), t11.xyxx
        r10.x = samp0[]..swiz;
        r10.y = samp0[]..swiz;
          r23.xyz = -v6.xyz + r23.xyz;
          r10.z = r23.w;
          r10.xyz = cmp(abs(r23.xyz) < r10.zxy);
          r8.z = r10.y ? r10.x : 0;
          r8.z = r10.z ? r8.z : 0;
          if (r8.z != 0) {
            r7.w = (int)r5.z + (int)r7.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r7.w, l(0), t15.wxyz
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.zw, r7.w, l(96), t15.xxxy
          r8.z = samp0[]..swiz;
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r7.w, l(116), t15.zwxy
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
            r10.xyz = v6.xyz + -r23.yzw;
            r9.w = (int)r24.w & 0x0000ffff;
            if (6 == 0) r11.w = 0; else if (6+25 < 32) {             r11.w = (uint)r24.w << (32-(6 + 25)); r11.w = (uint)r11.w >> (32-6);            } else r11.w = (uint)r24.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r9.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r9.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r9.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
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
            r13.w = dot(r25.xyz, r10.xyz);
            r13.w = saturate(r13.w + r25.w);
            r14.w = dot(r26.xyz, r10.xyz);
            r14.w = saturate(r14.w + r26.w);
            r13.w = r14.w * r13.w;
            r14.w = dot(r27.xyz, r10.xyz);
            r14.w = saturate(r14.w + r27.w);
            r13.w = r14.w * r13.w;
            r14.w = dot(r33.xyz, r10.xyz);
            r14.w = saturate(r14.w + r33.w);
            r13.w = r14.w * r13.w;
            r14.w = dot(r39.xyz, r10.xyz);
            r14.w = saturate(r14.w + r39.w);
            r13.w = r14.w * r13.w;
            r14.w = dot(r40.xyz, r10.xyz);
            r14.w = saturate(r14.w + r40.w);
            r11.x = r14.w * r13.w;
            r13.w = (int)r8.z & 1;
            r25.xy = r13.ww ? r11.xy : r11.zx;
            r11.x = r8.z;
            r26.xy = r25.xy;
            r13.w = 1;
            while (true) {
              r14.w = cmp((int)r13.w >= (int)r11.w);
              if (r14.w != 0) break;
              r14.w = (int)r9.w + (int)r13.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(16), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(32), t16.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(48), t16.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(64), t16.xyzw
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r42.xyzw, r14.w, l(80), t16.xyzw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
              r14.w = dot(r27.xyz, r10.xyz);
              r14.w = saturate(r14.w + r27.w);
              r14.w = r26.x * r14.w;
              r17.w = dot(r33.xyz, r10.xyz);
              r17.w = saturate(r17.w + r33.w);
              r14.w = r17.w * r14.w;
              r17.w = dot(r39.xyz, r10.xyz);
              r17.w = saturate(r17.w + r39.w);
              r14.w = r17.w * r14.w;
              r17.w = dot(r40.xyz, r10.xyz);
              r17.w = saturate(r17.w + r40.w);
              r14.w = r17.w * r14.w;
              r17.w = dot(r41.xyz, r10.xyz);
              r17.w = saturate(r17.w + r41.w);
              r14.w = r17.w * r14.w;
              r17.w = dot(r42.xyz, r10.xyz);
              r17.w = saturate(r17.w + r42.w);
              r26.x = r17.w * r14.w;
              r18.w = (uint)r11.x >> 2;
              if (1 == 0) r23.w = 0; else if (1+2 < 32) {               r23.w = (uint)r11.x << (32-(1 + 2)); r23.w = (uint)r23.w >> (32-1);              } else r23.w = (uint)r11.x >> 2;
              r25.z = (int)r18.w & 2;
              r25.w = max(r26.y, r26.x);
              r14.w = -r14.w * r17.w + 1;
              r14.w = r26.y * r14.w;
              r9.y = r25.z ? r14.w : r25.w;
              r26.xy = r23.ww ? r26.xy : r9.xy;
              r13.w = (int)r13.w + 1;
              r11.x = r18.w;
            }
            r26.y = saturate(r26.y);
            r8.z = r26.y * r8.w;
            r9.y = cmp(0 < r8.z);
            if (r9.y != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r7.w, l(16), t15.xyzw
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r7.w, l(32), t15.yxwz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r7.w, l(48), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r7.w, l(64), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r7.w, l(80), t15.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r7.w, l(132), t15.zwxy
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xyzw, r7.w, l(148), t15.zwxy
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r43.xyzw, r7.w, l(164), t15.zwxy
            r43.x = samp0[]..swiz;
            r43.y = samp0[]..swiz;
            r43.z = samp0[]..swiz;
            r43.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r44.xyzw, r7.w, l(180), t15.zwxy
            r44.x = samp0[]..swiz;
            r44.y = samp0[]..swiz;
            r44.z = samp0[]..swiz;
            r44.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r45.xyzw, r7.w, l(196), t15.xyzw
            r45.x = samp0[]..swiz;
            r45.y = samp0[]..swiz;
            r45.z = samp0[]..swiz;
            r45.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r46.xy, r7.w, l(212), t15.xyxx
            r46.x = samp0[]..swiz;
            r46.y = samp0[]..swiz;
              r22.z = r26.y * r8.w + r22.z;
              r7.w = r8.z * r24.z;
              r24.z = r41.z;
              r8.z = dot(r12.xyz, r24.xyz);
              r8.w = dot(r10.xyz, r24.xyz);
              r8.w = r8.w + -r41.w;
              r9.y = cmp(r8.w >= 0);
              r8.w = max(abs(r8.w), r3.w);
              r8.w = r9.y ? r8.w : -r8.w;
              r8.z = max(1.00000001e-07, -r8.z);
              r8.z = r8.w / r8.z;
              r8.z = min(131072, abs(r8.z));
              r41.z = r42.z;
              r8.w = dot(r12.xyz, r41.xyz);
              r9.y = dot(r10.xyz, r41.xyz);
              r9.y = r9.y + -r42.w;
              r9.w = cmp(r9.y >= 0);
              r9.y = max(abs(r9.y), r3.w);
              r9.y = r9.w ? r9.y : -r9.y;
              r8.w = max(1.00000001e-07, -r8.w);
              r8.w = r9.y / r8.w;
              r8.z = min(r8.z, abs(r8.w));
              r42.z = r43.z;
              r8.w = dot(r12.xyz, r42.xyz);
              r9.y = dot(r10.xyz, r42.xyz);
              r9.y = r9.y + -r43.w;
              r9.w = cmp(r9.y >= 0);
              r9.y = max(abs(r9.y), r3.w);
              r9.y = r9.w ? r9.y : -r9.y;
              r8.w = max(1.00000001e-07, -r8.w);
              r8.w = r9.y / r8.w;
              r8.z = min(r8.z, abs(r8.w));
              r43.z = r44.z;
              r8.w = dot(r12.xyz, r43.xyz);
              r9.y = dot(r10.xyz, r43.xyz);
              r9.y = r9.y + -r44.w;
              r9.w = cmp(r9.y >= 0);
              r9.y = max(abs(r9.y), r3.w);
              r9.y = r9.w ? r9.y : -r9.y;
              r8.w = max(1.00000001e-07, -r8.w);
              r8.w = r9.y / r8.w;
              r8.z = min(r8.z, abs(r8.w));
              r44.z = r45.x;
              r8.w = dot(r12.xyz, r44.xyz);
              r9.y = dot(r10.xyz, r44.xyz);
              r9.y = r9.y + -r45.y;
              r9.w = cmp(r9.y >= 0);
              r9.y = max(abs(r9.y), r3.w);
              r9.y = r9.w ? r9.y : -r9.y;
              r8.w = max(1.00000001e-07, -r8.w);
              r8.w = r9.y / r8.w;
              r8.z = min(r8.z, abs(r8.w));
              r46.zw = r45.zw;
              r8.w = dot(r12.zxy, r46.xzw);
              r9.y = dot(r10.zxy, r46.xzw);
              r9.y = r9.y + -r46.y;
              r9.w = cmp(r9.y >= 0);
              r9.y = max(abs(r9.y), r3.w);
              r9.y = r9.w ? r9.y : -r9.y;
              r8.w = max(1.00000001e-07, -r8.w);
              r8.w = r9.y / r8.w;
              r8.z = min(r8.z, abs(r8.w));
              r24.x = r33.w;
              r24.yz = r39.zw;
              r24.xyz = r24.xyz + r10.xyz;
              r24.xyz = r12.xyz * r8.zzz + r24.xyz;
              r8.w = dot(r24.xyz, r24.xyz);
              r8.w = sqrt(r8.w);
              r8.z = r8.z / r8.w;
              r8.z = r8.z + r8.z;
              r8.z = sqrt(r8.z);
              r8.z = r1.y * 5 + r8.z;
              r8.z = -0.844799995 + r8.z;
              r23.y = r25.z;
              r23.z = r27.x;
              r41.x = dot(r24.xyz, r23.xyz);
              r42.xy = r25.xw;
              r42.z = r27.w;
              r41.y = dot(r24.xyz, r42.xyz);
              r27.x = r25.y;
              r41.z = dot(r24.xyz, r27.xyz);
              if (9 == 0) r8.w = 0; else if (9+16 < 32) {               r8.w = (uint)r24.w << (32-(9 + 16)); r8.w = (uint)r8.w >> (32-9);              } else r8.w = (uint)r24.w >> 16;
              r41.w = (uint)r8.w;
              r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r41.xyzw, r8.z).xyz;
              r25.xyz = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
              r25.xyz = cmp((int3)r25.xyz == int3(2139095040,2139095040,2139095040));
              r8.z = (int)r25.y | (int)r25.x;
              r8.z = (int)r25.z | (int)r8.z;
              r24.xyz = r8.zzz ? float3(1,1,0) : r24.xyz;
              r25.x = dot(r10.xyz, r23.xyz);
              r25.y = dot(r10.xyz, r42.xyz);
              r25.z = dot(r10.xyz, r27.xyz);
              r10.xyz = saturate(r25.xyz * r33.xyz + float3(0.5,0.5,0.5));
              r39.z = r40.x;
              r10.xyz = r10.xyz * r39.xyz + r40.yzw;
              r41.x = dot(r2.xyz, r23.xyz);
              r41.y = dot(r2.xyz, r42.xyz);
              r41.z = dot(r2.xyz, r27.xyz);
              r23.xyz = cmp(float3(0,0,0) < r41.xyz);
              r13.z = r23.x ? 0 : 0.5;
              r25.xyz = r13.xyz + r10.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r26.xzw = r41.xyz * r41.xyz;
              r26.xzw = r26.xzw * r7.www;
              r14.z = r23.y ? 0 : 0.5;
              r23.xyw = r14.xyz + r10.xyz;
              r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
              r23.xyw = r23.xyw * r26.zzz;
              r23.xyw = r25.xyz * r26.xxx + r23.xyw;
              r17.z = r23.z ? 0 : 0.5;
              r10.xyz = r17.xyz + r10.xyz;
              r10.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
              r10.xyz = r10.xyz * r26.www + r23.xyw;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r41.xyzw, 6).xyz;
              r25.xyz = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
              r25.xyz = cmp((int3)r25.xyz == int3(2139095040,2139095040,2139095040));
              r8.z = (int)r25.y | (int)r25.x;
              r8.z = (int)r25.z | (int)r8.z;
              r23.xyz = r8.zzz ? float3(1,1,0) : r23.xyz;
              r25.xyz = r23.xyz * r10.xyz;
              r8.z = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r21.xyz = r10.xyz * r23.xyz + r21.xyz;
              r8.w = r8.z * r4.x;
              r10.xyz = r24.xyz * r7.www;
              r7.w = dot(r10.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r7.w = r4.x * r8.z + r7.w;
              r7.w = r8.w / r7.w;
              r23.x = r21.w;
              r23.yz = r22.xy;
              r22.xyw = r10.yzx * r7.www + r23.yzx;
              r21.w = r22.w;
            }
          }
        }
      }
      r19.xyzw = r21.xyzw;
      r20.yzw = r22.xyz;
      r5.z = (int)r5.z + 32;
    }
    r5.x = cmp(r20.w < 1);
    if (r5.x != 0) {
      r5.xy = float2(0,0);
      r8.w = 0;
      r10.yz = float2(0,1);
      r11.xy = float2(0,0);
      r9.x = 1;
      r13.xy = float2(0,0);
      r14.xy = float2(0,0);
      r17.x = r19.w;
      r17.yzw = r20.yzw;
      r21.xyz = r19.xyz;
      r5.w = r20.w;
      r6.z = 0;
      while (true) {
        r6.w = cmp((uint)r6.z >= (uint)r4.y);
        if (r6.w != 0) break;
        r5.z = (uint)r6.z >> 5;
        r8.xyz = (int3)r5.xyz + (int3)r18.xyz;
        r5.z = visibleProbes.Load(r8.xyzw).x;
        r6.w = cmp((int)r4.z == (int)r6.z);
        if (r4.w == 0) r7.w = 0; else if (r4.w+0 < 32) {         r7.w = (uint)r5.z << (32-(r4.w + 0)); r7.w = (uint)r7.w >> (32-r4.w);        } else r7.w = (uint)r5.z >> 0;
        r5.z = r6.w ? r7.w : r5.z;
        r6.w = (int)r6.z + numLights;
        r22.xyzw = r17.xyzw;
        r8.xyz = r21.xyz;
        r7.w = r5.w;
        r9.w = r5.z;
        while (true) {
          if (r9.w == 0) break;
          r10.w = firstbitlow((uint)r9.w);
          r11.w = 1 << (int)r10.w;
          r13.w = (int)r9.w & (int)r11.w;
          if (r13.w != 0) {
            r9.w = (int)r9.w ^ (int)r11.w;
            r11.w = (int)r6.w + (int)r10.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r11.w, l(0), t11.xyzw
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xy, r11.w, l(16), t11.xyxx
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
            r23.xyz = -v6.xyz + r23.xyz;
            r24.z = r23.w;
            r23.xyz = cmp(abs(r23.xyz) < r24.zxy);
            r11.w = r23.y ? r23.x : 0;
            r11.w = r23.z ? r11.w : 0;
            if (r11.w != 0) {
              r10.w = (int)r6.z + (int)r10.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r10.w, l(0), t15.wxyz
            r23.x = samp0[]..swiz;
            r23.y = samp0[]..swiz;
            r23.z = samp0[]..swiz;
            r23.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xy, r10.w, l(96), t15.xyxx
            r24.x = samp0[]..swiz;
            r24.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(116), t15.zwxy
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
              r26.xyz = v6.xyz + -r23.yzw;
              r11.w = (int)r25.w & 0x0000ffff;
              if (6 == 0) r13.w = 0; else if (6+25 < 32) {               r13.w = (uint)r25.w << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);              } else r13.w = (uint)r25.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r11.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(16), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(32), t16.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(48), t16.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(64), t16.xyzw
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(80), t16.xyzw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
              r14.w = dot(r27.xyz, r26.xyz);
              r14.w = saturate(r14.w + r27.w);
              r16.w = dot(r33.xyz, r26.xyz);
              r16.w = saturate(r16.w + r33.w);
              r14.w = r16.w * r14.w;
              r16.w = dot(r39.xyz, r26.xyz);
              r16.w = saturate(r16.w + r39.w);
              r14.w = r16.w * r14.w;
              r16.w = dot(r40.xyz, r26.xyz);
              r16.w = saturate(r16.w + r40.w);
              r14.w = r16.w * r14.w;
              r16.w = dot(r41.xyz, r26.xyz);
              r16.w = saturate(r16.w + r41.w);
              r14.w = r16.w * r14.w;
              r16.w = dot(r42.xyz, r26.xyz);
              r16.w = saturate(r16.w + r42.w);
              r10.x = r16.w * r14.w;
              r14.w = (int)r24.x & 1;
              r24.zw = r14.ww ? r10.xy : r10.zx;
              r10.x = r24.x;
              r27.xy = r24.zw;
              r14.w = 1;
              while (true) {
                r16.w = cmp((int)r14.w >= (int)r13.w);
                if (r16.w != 0) break;
                r16.w = (int)r11.w + (int)r14.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(0), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r16.w, l(16), t16.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r16.w, l(32), t16.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r16.w, l(48), t16.xyzw
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r42.xyzw, r16.w, l(64), t16.xyzw
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r43.xyzw, r16.w, l(80), t16.xyzw
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
                r16.w = dot(r33.xyz, r26.xyz);
                r16.w = saturate(r16.w + r33.w);
                r16.w = r27.x * r16.w;
                r18.w = dot(r39.xyz, r26.xyz);
                r18.w = saturate(r18.w + r39.w);
                r16.w = r18.w * r16.w;
                r18.w = dot(r40.xyz, r26.xyz);
                r18.w = saturate(r18.w + r40.w);
                r16.w = r18.w * r16.w;
                r18.w = dot(r41.xyz, r26.xyz);
                r18.w = saturate(r18.w + r41.w);
                r16.w = r18.w * r16.w;
                r18.w = dot(r42.xyz, r26.xyz);
                r18.w = saturate(r18.w + r42.w);
                r16.w = r18.w * r16.w;
                r18.w = dot(r43.xyz, r26.xyz);
                r18.w = saturate(r18.w + r43.w);
                r27.x = r18.w * r16.w;
                r21.w = (uint)r10.x >> 2;
                if (1 == 0) r23.w = 0; else if (1+2 < 32) {                 r23.w = (uint)r10.x << (32-(1 + 2)); r23.w = (uint)r23.w >> (32-1);                } else r23.w = (uint)r10.x >> 2;
                r26.w = (int)r21.w & 2;
                r27.z = max(r27.y, r27.x);
                r16.w = -r16.w * r18.w + 1;
                r16.w = r27.y * r16.w;
                r9.y = r26.w ? r16.w : r27.z;
                r27.xy = r23.ww ? r27.xy : r9.xy;
                r14.w = (int)r14.w + 1;
                r10.x = r21.w;
              }
              r9.y = saturate(r27.y + -r7.w);
              r10.x = r9.y * r24.y;
              r11.w = cmp(0 < r10.x);
              if (r11.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(16), t15.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(32), t15.yxwz
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(48), t15.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(64), t15.zwxy
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xyzw, r10.w, l(80), t15.xyzw
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r43.xyzw, r10.w, l(132), t15.zwxy
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r44.xyzw, r10.w, l(148), t15.zwxy
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r45.xyzw, r10.w, l(164), t15.zwxy
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r46.xyzw, r10.w, l(180), t15.zwxy
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r47.xyzw, r10.w, l(196), t15.xyzw
              r47.x = samp0[]..swiz;
              r47.y = samp0[]..swiz;
              r47.z = samp0[]..swiz;
              r47.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r48.xy, r10.w, l(212), t15.xyxx
              r48.x = samp0[]..swiz;
              r48.y = samp0[]..swiz;
                r22.w = r9.y * r24.y + r22.w;
                r9.y = r10.x * r25.z;
                r25.z = r43.z;
                r10.x = dot(r12.xyz, r25.xyz);
                r10.w = dot(r26.xyz, r25.xyz);
                r10.w = r10.w + -r43.w;
                r11.w = cmp(r10.w >= 0);
                r10.w = max(abs(r10.w), r3.w);
                r10.w = r11.w ? r10.w : -r10.w;
                r10.x = max(1.00000001e-07, -r10.x);
                r10.x = r10.w / r10.x;
                r10.x = min(131072, abs(r10.x));
                r43.z = r44.z;
                r10.w = dot(r12.xyz, r43.xyz);
                r11.w = dot(r26.xyz, r43.xyz);
                r11.w = r11.w + -r44.w;
                r13.w = cmp(r11.w >= 0);
                r11.w = max(abs(r11.w), r3.w);
                r11.w = r13.w ? r11.w : -r11.w;
                r10.w = max(1.00000001e-07, -r10.w);
                r10.w = r11.w / r10.w;
                r10.x = min(r10.x, abs(r10.w));
                r44.z = r45.z;
                r10.w = dot(r12.xyz, r44.xyz);
                r11.w = dot(r26.xyz, r44.xyz);
                r11.w = r11.w + -r45.w;
                r13.w = cmp(r11.w >= 0);
                r11.w = max(abs(r11.w), r3.w);
                r11.w = r13.w ? r11.w : -r11.w;
                r10.w = max(1.00000001e-07, -r10.w);
                r10.w = r11.w / r10.w;
                r10.x = min(r10.x, abs(r10.w));
                r45.z = r46.z;
                r10.w = dot(r12.xyz, r45.xyz);
                r11.w = dot(r26.xyz, r45.xyz);
                r11.w = r11.w + -r46.w;
                r13.w = cmp(r11.w >= 0);
                r11.w = max(abs(r11.w), r3.w);
                r11.w = r13.w ? r11.w : -r11.w;
                r10.w = max(1.00000001e-07, -r10.w);
                r10.w = r11.w / r10.w;
                r10.x = min(r10.x, abs(r10.w));
                r46.z = r47.x;
                r10.w = dot(r12.xyz, r46.xyz);
                r11.w = dot(r26.xyz, r46.xyz);
                r11.w = r11.w + -r47.y;
                r13.w = cmp(r11.w >= 0);
                r11.w = max(abs(r11.w), r3.w);
                r11.w = r13.w ? r11.w : -r11.w;
                r10.w = max(1.00000001e-07, -r10.w);
                r10.w = r11.w / r10.w;
                r10.x = min(r10.x, abs(r10.w));
                r48.zw = r47.zw;
                r10.w = dot(r12.zxy, r48.xzw);
                r11.w = dot(r26.zxy, r48.xzw);
                r11.w = r11.w + -r48.y;
                r13.w = cmp(r11.w >= 0);
                r11.w = max(abs(r11.w), r3.w);
                r11.w = r13.w ? r11.w : -r11.w;
                r10.w = max(1.00000001e-07, -r10.w);
                r10.w = r11.w / r10.w;
                r10.x = min(r10.x, abs(r10.w));
                r24.x = r40.w;
                r24.yz = r41.zw;
                r24.xyz = r24.xyz + r26.xyz;
                r24.xyz = r12.xyz * r10.xxx + r24.xyz;
                r10.w = dot(r24.xyz, r24.xyz);
                r10.w = sqrt(r10.w);
                r10.x = r10.x / r10.w;
                r10.x = r10.x + r10.x;
                r10.x = sqrt(r10.x);
                r10.x = r1.y * 5 + r10.x;
                r10.x = -0.844799995 + r10.x;
                r23.y = r33.z;
                r23.z = r39.x;
                r43.x = dot(r24.xyz, r23.xyz);
                r25.xy = r33.xw;
                r25.z = r39.w;
                r43.y = dot(r24.xyz, r25.xyz);
                r39.x = r33.y;
                r43.z = dot(r24.xyz, r39.xyz);
                if (9 == 0) r10.w = 0; else if (9+16 < 32) {                 r10.w = (uint)r25.w << (32-(9 + 16)); r10.w = (uint)r10.w >> (32-9);                } else r10.w = (uint)r25.w >> 16;
                r43.w = (uint)r10.w;
                r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r43.xyzw, r10.x).xyz;
                r27.xzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
                r27.xzw = cmp((int3)r27.xzw == int3(2139095040,2139095040,2139095040));
                r10.x = (int)r27.z | (int)r27.x;
                r10.x = (int)r27.w | (int)r10.x;
                r24.xyz = r10.xxx ? float3(1,1,0) : r24.xyz;
                r33.x = dot(r26.xyz, r23.xyz);
                r33.y = dot(r26.xyz, r25.xyz);
                r33.z = dot(r26.xyz, r39.xyz);
                r26.xyz = saturate(r33.xyz * r40.xyz + float3(0.5,0.5,0.5));
                r41.z = r42.x;
                r26.xyz = r26.xyz * r41.xyz + r42.yzw;
                r43.x = dot(r2.xyz, r23.xyz);
                r43.y = dot(r2.xyz, r25.xyz);
                r43.z = dot(r2.xyz, r39.xyz);
                r23.xyz = cmp(float3(0,0,0) < r43.xyz);
                r11.z = r23.x ? 0 : 0.5;
                r25.xyz = r26.xyz + r11.xyz;
                r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r27.xzw = r43.xyz * r43.xyz;
                r27.xzw = r27.xzw * r9.yyy;
                r13.z = r23.y ? 0 : 0.5;
                r23.xyw = r26.xyz + r13.xyz;
                r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
                r23.xyw = r23.xyw * r27.zzz;
                r23.xyw = r25.xyz * r27.xxx + r23.xyw;
                r14.z = r23.z ? 0 : 0.5;
                r25.xyz = r26.xyz + r14.xyz;
                r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r23.xyz = r25.xyz * r27.www + r23.xyw;
                r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r43.xyzw, 6).xyz;
                r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
                r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
                r10.x = (int)r26.y | (int)r26.x;
                r10.x = (int)r26.z | (int)r10.x;
                r25.xyz = r10.xxx ? float3(1,1,0) : r25.xyz;
                r26.xyz = r25.xyz * r23.xyz;
                r10.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r8.xyz = r23.xyz * r25.xyz + r8.xyz;
                r10.w = r10.x * r4.x;
                r23.xyz = r24.xyz * r9.yyy;
                r9.y = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r9.y = r4.x * r10.x + r9.y;
                r9.y = r10.w / r9.y;
                r22.xyz = r23.xyz * r9.yyy + r22.xyz;
              }
            }
          }
        }
        r17.xyzw = r22.xyzw;
        r21.xyz = r8.xyz;
        r6.z = (int)r6.z + 32;
      }
      r20.xyzw = r17.zxyw;
      r19.xyz = r21.xyz;
      r20.xyzw = r20.yzxw;
    } else {
      r20.x = r19.w;
    }
    r1.y = max(1, r20.w);
    r1.y = rcp(r1.y);
    r20.w = saturate(r20.w);
    r15.xyz = r19.xyz * r1.yyy;
    r16.xyz = r20.xyz * r1.yyy;
    r3.w = cmp(r20.w < 0.99000001);
    if (r3.w != 0) {
      r3.w = 1 + -r20.w;
      r4.x = sunConstants.globalProbeExposure * r3.w;
      r4.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
      r5.x = globalProbeConstants.data[0].w * r4.y;
      r5.yz = globalProbeConstants.data[1].xy * r4.zw;
      r4.yzw = saturate(float3(0.5,0.5,0.5) + r5.xyz);
      r5.xy = globalProbeConstants.data[1].zw * r4.yz;
      r5.z = globalProbeConstants.data[2].x * r4.w;
      r4.yzw = globalProbeConstants.data[2].yzw + r5.xyz;
      r5.xyz = cmp(float3(0,0,0) < r2.xyz);
      r5.xyz = r5.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r5.w = 0;
      r8.xyz = r5.wwx + r4.yzw;
      r8.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r8.xyz, 0).xyz;
      r9.xyw = r2.xyz * r2.xyz;
      r9.xyw = r9.xyw * r4.xxx;
      r10.xyz = r5.wwy + r4.yzw;
      r10.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
      r10.xyz = r10.xyz * r9.yyy;
      r8.xyz = r8.xyz * r9.xxx + r10.xyz;
      r4.xyz = r5.wwz + r4.yzw;
      r4.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r4.xyz, 0).xyz;
      r4.xyz = r4.xyz * r9.www + r8.xyz;
      r2.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
      r2.xyz = r4.xyz * r2.xyz;
      r2.w = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r15.xyz = r19.xyz * r1.yyy + r2.xyz;
      r12.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r1.z).xyz;
      r1.y = sunConstants.globalProbeExposure * r3.w + -r2.w;
      r1.y = r6.y * r1.y + r2.w;
      r16.xyz = r2.xyz * r1.yyy + r16.xyz;
    }
  } else {
    r16.x = r15.w;
  }
  r1.y = dot(r3.xyz, r7.xyz);
  if (useAlphaControls != 0) {
    r2.xyz = cmp(falloffBegin == float3(0,0,0));
    r1.z = r2.y ? r2.x : 0;
    r2.xy = float2(0.0174532924,0.0174532924) * falloffBegin;
    r2.xy = cos(r2.xy);
    r2.yw = r2.xy * r2.xy;
    r2.x = r2.x * r2.x + -r2.w;
    r3.x = 1 / r2.x;
    r3.y = -r2.y * r3.x + 1;
    r2.xy = r1.zz ? float2(0,1) : r3.xy;
    r1.z = abs(r1.y) * abs(r1.y);
    r1.z = saturate(r1.z * r2.x + r2.y);
    r1.z = r1.z * r0.w;
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
    r1.w = r2.x + -r1.w;
    r1.w = saturate(r1.w * r2.y);
    r0.w = r1.z * r1.w;
  }
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.z, v2.x, l(4), t4.xxxx
r1.z = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.z, r1.z, l(0), t0.xxxx
r1.z = samp0[]..swiz;
  r1.w = revealMap.Sample(revealSampler_s, w1.xy).x;
  r1.z = saturate(r1.z * 0.998000026 + 0.00100000005);
  r2.x = 1 + -r1.z;
  r2.y = saturate(alphaRevealRamp);
  r1.z = log2(r1.z);
  r1.z = r2.y * r1.z;
  r1.z = exp2(r1.z);
  r3.x = -r1.z;
  r1.z = log2(r2.x);
  r1.z = r2.y * r1.z;
  r3.y = exp2(r1.z);
  r2.xy = saturate(alphaRevealSoftEdge * r3.xy + r2.xx);
  r1.z = -r2.x + r1.w;
  r1.w = r2.y + -r2.x;
  r1.z = saturate(r1.z / r1.w);
  r0.w = r1.z * r0.w;
  r1.z = cmp(r0.w < 0.5);
  if (r1.z != 0) discard;
  r1.z = aoMap.Sample(aoSampler_s, w1.xy).x;
  r2.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r2.xyz + r0.xyz;
  r1.w = debugOcclusionOverride.x + -r1.z;
  r1.z = debugOcclusionOverride.w * r1.w + r1.z;
  r1.w = x2[0].x;
  r1.w = r1.w + -r9.z;
  r1.w = cmp(2.4000001 < abs(r1.w));
  r1.x = -r1.x * 0.5 + 1;
  r1.x = r1.w ? 0.5 : r1.x;
  r1.w = x2[1].x;
  r1.w = r1.w + -r9.z;
  r1.w = cmp(2.4000001 < abs(r1.w));
  r2.x = x0[1].x;
  r2.x = 0.5 * r2.x;
  r1.w = r1.w ? -0.5 : -r2.x;
  r1.x = r1.x + r1.w;
  r1.x = saturate(1 + -r1.x);
  r1.w = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.w * r1.x;
  r1.x = min(r38.w, r1.x);
  r1.x = r38.z * r1.x;
  r2.xyz = r1.xxx * r32.xyz;
  r3.xyz = r2.xyz * r34.xyz + r28.xyz;
  r4.xyz = r2.xyz * r35.xyz + r29.xyz;
  r5.xyz = r2.xyz * r36.xyz + r31.xyz;
  r2.xyz = r2.xyz * r37.xyz + r30.xyz;
  r3.xyz = r15.xyz * r1.zzz + r3.xyz;
  r4.xyz = r15.xyz * r1.zzz + r4.xyz;
  r1.xw = r6.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.xw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.xw, 0).xy;
  r6.xyz = r16.xyz * r1.zzz;
  r2.xyz = r6.xyz * r1.xxx + r2.xyz;
  r1.xzw = r6.xyz * r1.www + r5.xyz;
  r1.y = 1 + -abs(r1.y);
  r1.y = r1.y * r1.y;
  r1.y = r1.y * 0.600000024 + 0.400000006;
  r1.y = min(1, r1.y);
  r5.xyz = saturate(r0.xyz * float3(0.0199999996,0.0199999996,0.0199999996) + float3(0.0399999991,0.0399999991,0.0399999991));
  r6.xyz = specColorTint.xyz * r5.xyz;
  r7.xyz = r1.yyy * r0.xyz;
  r4.xyz = r7.xyz * r4.xyz;
  r0.xyz = r3.xyz * r0.xyz + r4.xyz;
  r3.xyz = -r5.xyz * specColorTint.xyz + float3(1,1,1);
  r2.xyz = r3.xyz * r2.xyz;
  r1.xyz = r1.xzw * r6.xyz + r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.x != 0) {
    r1.x = dot(v6.xyz, v6.xyz);
    r1.y = rsqrt(r1.x);
    r1.yzw = v6.xyz * r1.yyy;
    r1.x = sqrt(r1.x);
    r2.x = cmp(0 < fogConstants.blendAmount);
    if (r2.x != 0) {
      r2.xy = r1.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r2.z = cmp(0.00999999978 < abs(v6.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
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
      r3.x = cmp(0.00999999978 < abs(v6.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v6.z;
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
    r1.w = fogConstants.heightFalloff * v6.z;
    r2.x = fogConstants.heightFalloff * v6.z + fogConstants.K0;
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
    r2.x = dot(v6.xyz, v6.xyz);
    r2.y = sqrt(r2.x);
    r1.w = r1.w * r2.y + fogConstants.expAdd;
    r1.w = exp2(r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r2.x = rsqrt(r2.x);
    r2.xyz = v6.xyz * r2.xxx;
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