// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:37:13 2021

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
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  nointerpolation uint4 v3 : TEXCOORD4,
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
  r0.x = debugAlphaOverride.w * r0.x + r1.w;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r0.y = aoMap.Sample(aoSampler_s, v2.xy).x;
  r0.z = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r0.w = glossRange.y + -glossRange.x;
  r1.w = r0.z * r0.w;
  r0.z = r0.z * r0.w + glossRange.x;
  r0.z = saturate(0.0588235296 * r0.z);
  r1.w = r1.w * 0.5 + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
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
  r0.z = -17 * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r2.z + r0.z;
  r0.z = log2(r0.z);
  r0.z = -0.0588235296 * r0.z;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r6.xyz = r5.xyz * r2.yyy;
  r6.xyz = r4.xyz * r2.xxx + r6.xyz;
  r2.xyw = r3.yzw * r2.www + r6.xyz;
  r3.x = dot(r2.xyw, r2.xyw);
  r3.x = rsqrt(r3.x);
  r2.xyw = r3.xxx * r2.xyw;
  r0.w = debugGlossOverride.x * r0.w + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.z + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.zw = max(float2(0,0), r0.zw);
  r6.xyz = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r6.xyz + r1.xyz;
  r6.y = debugGlossOverride.w * r0.w;
  r2.z = debugOcclusionOverride.x + -r0.y;
  r0.y = debugOcclusionOverride.w * r2.z + r0.y;
  r7.xyz = v8.xxx ? r3.yzw : -r3.yzw;
  r2.z = dot(r7.xyz, r7.xyz);
  r2.z = rsqrt(r2.z);
  r7.xyz = r7.xyz * r2.zzz + -r2.xyw;
  r2.xyz = debugNormalOverride.www * r7.xyz + r2.xyw;
  r6.zw = (uint2)v0.xy;
  r3.x = cmp(v0.z >= 0.984375);
  r4.w = 1.01587307 * v0.z;
  r5.w = v0.z * 64 + -63;
  r3.x = r3.x ? r5.w : r4.w;
  r3.x = max(9.99999994e-09, r3.x);
  r3.x = rcp(r3.x);
  r4.w = dot(-v7.xyz, -v7.xyz);
  r4.w = rsqrt(r4.w);
  r7.xyz = -v7.xyz * r4.www;
  r8.xy = (uint2)r6.wz;
  r5.w = dot(r8.yx, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r9.x, r10.x);
  r5.w = dot(r8.xy, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r8.x, r11.x);
  r6.x = saturate(dot(r2.xyz, r7.xyz));
  r5.w = dot(-r7.xyz, r2.xyz);
  r5.w = r5.w + r5.w;
  r12.xyz = r2.xyz * -r5.www + -r7.xyz;
  r5.w = 17 * r6.y;
  r13.x = exp2(r5.w);
  r5.w = 2 + r13.x;
  r5.w = 2 / r5.w;
  r7.w = sqrt(r5.w);
  r8.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r8.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r8.yzw;
  r8.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r8.yzw;
  r8.yzw = viewProjectionMatrix._m30_m31_m33 + r8.yzw;
  r14.xyz = eyeOffset.xyz + v7.xyz;
  r9.z = sqrt(r7.w);
  r9.z = r9.z * 0.5 + 0.5;
  r9.z = r9.z * r9.z;
  r9.w = 0.5 * r9.z;
  r9.z = -r9.z * 0.5 + 1;
  r10.w = r6.x * r9.z + r9.w;
  r9.zw = r10.ww * r9.zw;
  r10.w = min(1, abs(anisotropy));
  r1.w = r1.w + -r0.z;
  r0.z = r10.w * r1.w + r0.z;
  r1.w = cmp(anisotropy < 0);
  r0.z = 17 * r0.z;
  r13.y = exp2(r0.z);
  r11.yz = r1.ww ? r13.xy : r13.yx;
  r11.yz = float2(2,2) + r11.yz;
  r11.yz = float2(2,2) / r11.yz;
  r0.z = dot(r2.xyz, sunConstants.wldDir.xyz);
  r1.w = cmp(0 >= abs(r0.z));
  if (r1.w != 0) {
    r13.y = 0;
  }
  if (r1.w == 0) {
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r15.xyz = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.xyz;
    r15.xyz = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.xyz;
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.xyz;
    r1.w = -sunConstants.splitDepthOffset + r15.z;
    r1.w = -r1.w * 6.10351563e-05 + 1;
    r10.w = saturate(r1.w);
    r10.w = cmp(r1.w == r10.w);
    if (r10.w != 0) {
      r10.w = 0;
      r11.w = 0;
      while (true) {
        r13.z = cmp(r10.w >= 3);
        if (r13.z != 0) break;
        r13.z = (uint)r10.w;
        r16.xy = -sunConstants.splitPinTransform[r13.z].xy + r15.xy;
        r13.w = max(abs(r16.x), abs(r16.y));
        r11.w = sunConstants.splitPinTransform[r13.z].z * r13.w;
        r13.z = cmp(r11.w < 1);
        if (r13.z != 0) {
          break;
        }
        r10.w = 1 + r10.w;
        r11.w = 0;
      }
    } else {
      r10.w = 3;
      r11.w = 0;
    }
    r13.z = cmp(r10.w >= 3);
    if (r13.z != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r15.xyx * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r17.xy = floor(r17.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r13.w, l(0), t23.xxxx
    r15.w = samp0[]..swiz;
      r16.w = (int)r15.w & 0x40000000;
      r17.x = (uint)r15.w << 2;
      if (r16.w == 0) {
        r16.w = (int)r15.w & 0x01ffffff;
        r18.x = (int)r13.w + (int)r16.w;
        r13.w = (uint)r15.w >> 25;
        r13.w = (uint)r13.w;
        r16.xyz = r16.xyz * r13.www;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.yz = (uint2)r16.zy >> int2(6,6);
        r13.w = (int)r18.z & 0xc0000000;
        r15.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.w = r17.z ? r18.z : r15.w;
        r16.w = (uint)r15.w >> 13;
        r15.w = r17.y ? r16.w : r15.w;
        r15.w = (int)r15.w & 8191;
        r19.x = (int)r15.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.yzw = r13.www ? r18.xyz : r19.xyz;
        r19.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r15.w = (int)r17.w & 0xc0000000;
        r16.w = (int)r17.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.w = r20.y ? r17.w : r16.w;
        r18.w = (uint)r16.w >> 13;
        r16.w = r20.x ? r18.w : r16.w;
        r16.w = (int)r16.w & 8191;
        r19.x = (int)r16.w + (int)r17.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.yzw = r15.www ? r17.yzw : r19.xzw;
        r17.yzw = r13.www ? r18.xyz : r17.yzw;
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r17.z + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r13.w = (uint)r13.w >> (uint)r15.w;
          r13.w = (int)r13.w & 1023;
          r18.x = (int)r13.w + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r13.w = (int)-r18.y + 6;
          r19.xy = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r18.w & 0xc0000000;
          r15.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r19.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r19.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
          r16.w = (int)r16.w * 10;
          r15.w = (uint)r15.w >> (uint)r16.w;
          r15.w = (int)r15.w & 1023;
          r19.x = (int)r15.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r13.www ? r18.xyw : r19.xyz;
          r15.w = (int)-r19.y + 6;
          r18.yz = (uint2)r16.zy >> (uint2)r15.ww;
          r15.w = (int)r19.z & 0xc0000000;
          r16.w = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r18.y << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
          r17.z = (int)r17.z * 10;
          r16.w = (uint)r16.w >> (uint)r17.z;
          r16.w = (int)r16.w & 1023;
          r20.x = (int)r16.w + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r15.ww ? r19.xz : r20.xy;
          r17.yw = r13.ww ? r18.xw : r18.yz;
        }
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r15.w = 0; else if (14+15 < 32) {           r15.w = (uint)r17.w << (32-(14 + 15)); r15.w = (uint)r15.w >> (32-14);          } else r15.w = (uint)r17.w >> 15;
          r15.w = (uint)r15.w;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 6.10388815e-05 * r15.w;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r16.w = (uint)r18.x;
          r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
          r16.w = 3.05185094e-05 * r16.w;
          r17.z = (int)r16.y & 3;
          r17.z = (int)r17.z + (int)r17.y;
          r17.z = (int)r17.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.z = (((uint)r16.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.w = (((uint)r16.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r16.x = (uint)r17.z >> (uint)r18.x;
          r16.x = (int)r16.x & 255;
          r16.x = (uint)r16.x;
          r16.x = r16.x * r16.w;
          r16.x = r16.x * 0.00392156886 + r15.w;
          r16.y = (int)r18.z + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.z >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r18.w;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r16.w;
          r15.w = r16.y * 1.52590219e-05 + r15.w;
          r17.x = r18.y ? r16.x : r15.w;
        } else {
          r15.w = (int)r17.w & 0x80000000;
          r16.x = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          r15.w = r15.w ? r16.x : 0;
          r16.x = (uint)r17.w << 2;
          r16.y = (uint)r15.w >> 16;
          r16.y = f16tof32(r16.y);
          r15.w = (int)r15.w & 0x0000ffff;
          r15.w = f16tof32(r15.w);
          r16.x = r15.x * r16.y + r16.x;
          r15.w = r15.y * r15.w + r16.x;
          r17.x = r13.w ? r15.w : r17.x;
        }
      }
      r13.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.z;
      r13.w = cmp(r17.x < r13.w);
      r13.y = r13.w ? 0 : 1;
    }
    if (r13.z == 0) {
      if (enableDitheredShadow == 0) {
        r13.z = (uint)r10.w;
        r15.zw = -sunConstants.splitPinTransform[r13.z].xy + r15.xy;
        r13.zw = sunConstants.splitPinTransform[r13.z].zz * r15.zw;
        r16.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.z = (int16)sunConstants.splitArrayOffset;
        r16.z = r13.z + r10.w;
        r13.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r1.w).x;
        r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r13.z = r13.z + r13.w;
        r13.z = saturate(-1 + r13.z);
        r13.w = r13.z * r13.z;
        r13.y = r13.w * r13.z;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r9.x;
        r13.z = (uint)r10.w;
        r10.w = 1 + r10.w;
        r10.w = min(2, r10.w);
        r10.w = (uint)r10.w;
        r11.w = 1 + -r11.w;
        r11.w = 28 * r11.w;
        r11.w = (uint)r11.w;
        r15.zw = -sunConstants.splitPinTransform[r13.z].xy + r15.xy;
        r15.zw = sunConstants.splitPinTransform[r13.z].zz * r15.zw;
        r15.zw = r15.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xy = -sunConstants.splitPinTransform[r10.w].xy + r15.xy;
        r15.xy = sunConstants.splitPinTransform[r10.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r10.x;
        r16.z = r9.x;
        r13.w = 0;
        r16.w = 0;
        while (true) {
          r17.x = cmp((uint)r16.w >= 8);
          if (r17.x != 0) break;
          r17.x = cmp((uint)r11.w < (uint)r16.w);
          r17.yz = r17.xx ? r15.xy : r15.zw;
          r17.w = r17.x ? sunConstants.splitPinTransform[r10.w].w : sunConstants.splitPinTransform[r13.z].w;
          r17.x = r17.x ? r10.w : r13.z;
          r18.x = dot(icb[r16.w+0].yx, r16.xy);
          r18.y = dot(icb[r16.w+0].yx, r16.yz);
          r18.xy = r18.xy * r17.ww + r17.yz;
          r17.x = (int)r17.x + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r17.x;
          r17.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r1.w).x;
          r17.y = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r17.x = r17.x + r17.y;
          r17.x = saturate(-1 + r17.x);
          r13.w = r17.x * 0.125 + r13.w;
          r16.w = (int)r16.w + 1;
        }
        r1.w = r13.w * r13.w;
        r13.y = r1.w * r13.w;
      }
    }
  }
  r1.w = viewmodelSunShadowRaw & 0x0000ffff;
  if (r1.w != 0) {
    r1.w = (int)r1.w + numLights;
    r1.w = (int)r1.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r1.w, l(52), t12.xxxx
  r10.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r1.w, l(68), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r1.w, l(84), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r1.w, l(132), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r1.w, l(148), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
    r11.w = abs(r0.z) * -0.200000003 + 0.400000006;
    r13.z = cmp(r0.z < 0);
    r11.w = r13.z ? -r11.w : r11.w;
    r19.xyz = r2.xyz * r11.www + v7.xyz;
    r19.w = 1;
    r15.x = dot(r15.xyzw, r19.xyzw);
    r15.y = dot(r16.xyzw, r19.xyzw);
    r13.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.zw = r13.zw + r18.zw;
    r13.zw = r13.zw * r18.xy;
    r15.xy = r10.ww / r17.xz;
    r15.zw = float2(1,1) + -r15.xy;
    r15.zw = cmp(r13.zw >= r15.zw);
    r15.xy = cmp(r15.xy >= r13.zw);
    r15.xy = (int2)r15.xy | (int2)r15.zw;
    r11.w = (int)r15.y | (int)r15.x;
    if (r11.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r1.w, l(28), t12.xxxx
    r11.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r1.w, l(100), t12.xyzw
    r15.x = samp0[]..swiz;
    r15.y = samp0[]..swiz;
    r15.z = samp0[]..swiz;
    r15.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r1.w, l(164), t12.xyxx
    r16.x = samp0[]..swiz;
    r16.y = samp0[]..swiz;
      r1.w = dot(r15.xyzw, r19.xyzw);
      r13.zw = saturate(r13.zw);
      r15.xy = r13.zw * r17.xz + r17.yw;
      r1.w = r1.w + r16.x;
      r1.w = r1.w / r16.y;
      r1.w = max(6.10351563e-05, r1.w);
      r11.w = (int)r11.w & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r16.x = -r9.x;
        r17.z = (uint)r11.w;
        r16.y = r10.x;
        r16.z = r9.x;
        r13.zw = float2(0,0);
        while (true) {
          r15.w = cmp((int)r13.w >= 8);
          if (r15.w != 0) break;
          r18.x = dot(icb[r13.w+0].yx, r16.xy);
          r18.y = dot(icb[r13.w+0].yx, r16.yz);
          r17.xy = r18.xy * r10.ww + r15.xy;
          r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r1.w).x;
          r13.z = r15.w * 0.125 + r13.z;
          r13.w = (int)r13.w + 1;
        }
      } else {
        r15.z = (uint)r11.w;
        r13.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r1.w).x;
      }
      r1.w = r13.z * r13.z;
      r1.w = r1.w * r13.z;
    } else {
      r1.w = 1;
    }
    r13.y = r13.y * r1.w;
  }
  r1.w = cmp(0 < abs(r0.z));
  if (r1.w != 0) {
    r1.w = cmp(0 < r13.y);
    if (r1.w != 0) {
      r1.w = sunConstants.specScale * r5.w;
      r1.w = 0.25 * r1.w;
      if (sunConstants.sunCookieIndex != 0) {
        r14.w = 1;
        r10.w = dot(sunConstants.sunCookieTransform[0].xyzw, r14.xyzw);
        r11.w = dot(sunConstants.sunCookieTransform[1].xyzw, r14.xyzw);
        r15.x = frac(r10.w);
        r15.y = frac(r11.w);
        r10.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r10.w;
        r15.xyz = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r15.xyz = float3(-1,-1,-1) + r15.xyz;
        r15.xyz = sunConstants.sunCookieIntensity * r15.xyz + float3(1,1,1);
        r15.xyz = sunConstants.color.xyz * r15.xyz;
      } else {
        r15.xyz = sunConstants.color.xyz;
      }
      r10.w = -r6.x * 0.5 + 1;
      r10.w = -abs(r0.z) * r10.w + 1;
      r10.w = r10.w * r10.w;
      r10.w = -r10.w * 0.620000005 + 0.620000005;
      r10.w = r10.w + -abs(r0.z);
      r10.w = r7.w * r10.w + abs(r0.z);
      r11.w = cmp(0 < r0.z);
      r0.z = saturate(r0.z);
      r16.xyz = -v7.xyz * r4.www + sunConstants.wldDir.xyz;
      r4.w = dot(r16.xyz, r16.xyz);
      r4.w = rsqrt(r4.w);
      r16.xyz = r16.xyz * r4.www;
      r4.w = dot(r2.xyz, r16.xyz);
      r13.z = dot(r16.xyz, r7.xyz);
      r13.w = r11.y * r11.z;
      r13.w = sqrt(r13.w);
      r14.w = dot(r16.xyz, r4.xyz);
      r15.w = dot(r16.xyz, r5.xyz);
      r14.w = r14.w * r14.w;
      r14.w = r14.w / r11.y;
      r15.w = r15.w * r15.w;
      r15.w = r15.w / r11.z;
      r14.w = r15.w + r14.w;
      r4.w = abs(r4.w) * abs(r4.w) + r14.w;
      r14.w = r0.z * r9.z + r9.w;
      r4.w = r4.w * r4.w;
      r4.w = r4.w * r13.w;
      r4.w = r4.w * r14.w;
      r4.w = rcp(r4.w);
      r0.z = r0.z * r1.w;
      r0.z = r4.w * r0.z;
      r1.w = saturate(1 + -r13.z);
      r4.w = r1.w * r1.w;
      r4.w = r4.w * r4.w;
      r1.w = r4.w * r1.w;
      r1.w = r1.w * r0.z;
      r4.w = r11.w ? r10.w : 0;
      r16.xyz = r11.www ? float3(0,0,0) : r10.www;
      r13.zw = r11.ww ? r1.ww : 0;
      r17.xyz = r11.www ? r0.zzz : 0;
      r0.z = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r0.z = r13.y * r0.z;
      r13.x = 1;
      r1.w = sunConstants.wldDir.x;
      r18.xy = sunConstants.wldDir.yz;
      r18.zw = r4.ww;
      r10.w = r13.w;
    } else {
      r0.z = 0;
      r15.xyz = float3(0,0,0);
      r1.w = 0;
      r18.xyzw = float4(0,0,0,0);
      r16.xyz = float3(0,0,0);
      r4.w = 0;
      r17.xyz = float3(0,0,0);
      r10.w = 0;
      r13.xyzw = float4(0,0,0,0);
    }
  } else {
    r0.z = 0;
    r15.xyz = float3(0,0,0);
    r1.w = 0;
    r18.xyzw = float4(0,0,0,0);
    r16.xyz = float3(0,0,0);
    r4.w = 0;
    r17.xyz = float3(0,0,0);
    r10.w = 0;
    r13.xyzw = float4(0,0,0,0);
  }
  r11.w = 0.0078125 * r3.x;
  r11.w = min(15, r11.w);
  r11.w = (uint)r11.w;
  r19.xy = (uint2)r6.zw >> int2(6,6);
  r19.z = (uint)r11.w << 4;
  r20.x = -r9.x;
  r6.z = -r6.x * 0.5 + 1;
  r6.w = r11.y * r11.z;
  r6.w = sqrt(r6.w);
  r21.xy = float2(0,0);
  r22.w = 0;
  r23.xyz = v7.xyz;
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
  r35.z = r4.w;
  r36.xyz = r16.xyz;
  r37.xyz = r17.xyz;
  r38.x = r10.w;
  r38.yz = r13.zw;
  r39.x = enableDitheredShadow;
  r39.y = r0.z;
  r39.zw = r13.xy;
  r11.w = 0;
  while (true) {
    r14.w = cmp((uint)r11.w >= numLights);
    if (r14.w != 0) break;
    r21.z = (uint)r11.w >> 5;
    r22.xyz = (int3)r19.xyz + (int3)r21.xyz;
    r14.w = visibleLights.Load(r22.xyzw).x;
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
    r15.w = r39.x;
    r16.w = r39.y;
    r48.xyz = r36.xyz;
    r17.w = r14.w;
    while (true) {
      if (r17.w == 0) break;
      r19.w = firstbitlow((uint)r17.w);
      r25.w = 1 << (int)r19.w;
      r28.w = (int)r17.w & (int)r25.w;
      if (r28.w != 0) {
        r17.w = (int)r17.w ^ (int)r25.w;
        r19.w = (int)r11.w + (int)r19.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r19.w, l(0), t12.wxyz
      r49.x = samp0[]..swiz;
      r49.y = samp0[]..swiz;
      r49.z = samp0[]..swiz;
      r49.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r19.w, l(16), t12.zxyw
      r50.x = samp0[]..swiz;
      r50.y = samp0[]..swiz;
      r50.z = samp0[]..swiz;
      r50.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r19.w, l(32), t12.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r19.w, l(48), t12.xyzw
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r19.w, l(64), t12.yzwx
      r53.x = samp0[]..swiz;
      r53.y = samp0[]..swiz;
      r53.z = samp0[]..swiz;
      r53.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r19.w, l(80), t12.xyzw
      r54.x = samp0[]..swiz;
      r54.y = samp0[]..swiz;
      r54.z = samp0[]..swiz;
      r54.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r19.w, l(96), t12.yzwx
      r55.x = samp0[]..swiz;
      r55.y = samp0[]..swiz;
      r55.z = samp0[]..swiz;
      r55.w = samp0[]..swiz;
        if (3 == 0) r25.w = 0; else if (3+24 < 32) {         r25.w = (uint)r50.w << (32-(3 + 24)); r25.w = (uint)r25.w >> (32-3);        } else r25.w = (uint)r50.w >> 24;
        switch (r25.w) {
          case 4 :          r25.w = cmp(0 < r55.x);
          r56.xy = r54.zw;
          r56.z = r55.w;
          r57.xyz = -r56.xyz * float3(0.5,0.5,0.5) + r49.yzw;
          r58.xyz = -v7.xyz + r57.xyz;
          r28.w = dot(r56.xyz, r58.xyz);
          r29.w = saturate(-r28.w / r55.x);
          r59.xyz = r29.www * r56.xyz + r57.xyz;
          r59.xyz = r25.www ? r59.xyz : r49.yzw;
          r59.xyz = -v7.xyz + r59.xyz;
          r30.w = dot(r59.xyz, r59.xyz);
          r31.w = rsqrt(r30.w);
          r59.xyz = r59.xyz * r31.www;
          r31.w = dot(r2.xyz, r59.xyz);
          r32.w = cmp(0 < abs(r31.w));
          if (r32.w != 0) {
            r32.w = sqrt(r30.w);
            r33.w = r52.x * r52.x;
            r30.w = r33.w / r30.w;
            r30.w = min(1, r30.w);
            r60.xy = saturate(r32.ww * r51.xz + r51.yw);
            r60.zw = r60.xy * r60.xy;
            r60.xy = r60.xy * float2(-2,-2) + float2(3,3);
            r60.xy = r60.zw * r60.xy;
            r30.w = r60.x * r30.w;
            r60.x = r30.w * r60.y;
            r30.w = cmp(0 < r60.x);
            if (r30.w != 0) {
              if (3 == 0) r60.z = 0; else if (3+27 < 32) {               r60.z = (uint)r50.w << (32-(3 + 27)); r60.z = (uint)r60.z >> (32-3);              } else r60.z = (uint)r50.w >> 27;
              if (4 == 0) r60.w = 0; else if (4+20 < 32) {               r60.w = (uint)r50.w << (32-(4 + 20)); r60.w = (uint)r60.w >> (32-4);              } else r60.w = (uint)r50.w >> 20;
              r30.w = cmp((int)r60.z != 1);
              if (r30.w != 0) {
                r30.w = abs(r31.w) * -0.200000003 + 0.400000006;
                r32.w = cmp(r31.w < 0);
                r30.w = r32.w ? -r30.w : r30.w;
                r61.xyz = r2.xyz * r30.www + v7.xyz;
                r61.xyz = r61.xyz + -r53.xyz;
                r30.w = max(abs(r61.y), abs(r61.z));
                r30.w = max(abs(r61.x), r30.w);
                r30.w = r54.x / r30.w;
                r30.w = r30.w + r54.y;
                r32.w = dot(r61.xyz, r61.xyz);
                r32.w = rsqrt(r32.w);
                r30.w = max(6.10351563e-05, r30.w);
                r33.w = (int)r50.w & 0x0000ffff;
                r62.w = (uint)r33.w;
                r60.y = 0;
                r33.w = 0;
                while (true) {
                  r34.w = cmp((int)r33.w >= 8);
                  if (r34.w != 0) break;
                  r63.y = dot(icb[r33.w+0].yx, r20.xy);
                  r63.z = dot(icb[r33.w+0].yx, r20.yz);
                  r63.yz = r63.yz * r52.yy;
                  r63.x = r63.y * r11.x;
                  r63.w = r63.y * r8.x;
                  r62.xyz = r61.xyz * r32.www + r63.xzw;
                  r34.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r62.xyzw, r30.w).x;
                  r60.y = r34.w * 0.125 + r60.y;
                  r33.w = (int)r33.w + 1;
                }
              } else {
                r60.y = 1;
              }
              if (r60.w != 0) {
                r30.w = (int)r60.w + numLights;
                r30.w = (int)r30.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.w, r30.w, l(52), t12.xxxx
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r30.w, l(100), t12.xyzw
              r61.x = samp0[]..swiz;
              r61.y = samp0[]..swiz;
              r61.z = samp0[]..swiz;
              r61.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r30.w, l(116), t12.xyzw
              r62.x = samp0[]..swiz;
              r62.y = samp0[]..swiz;
              r62.z = samp0[]..swiz;
              r62.w = samp0[]..swiz;
                r33.w = abs(r31.w) * -0.200000003 + 0.400000006;
                r34.w = cmp(r31.w < 0);
                r33.w = r34.w ? -r33.w : r33.w;
                r24.xyz = r2.xyz * r33.www + v7.xyz;
                r33.w = dot(r61.xyzw, r24.xyzw);
                r34.w = dot(r62.xyzw, r24.xyzw);
                r35.w = cmp(r34.w < r33.w);
                if (r35.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r30.w, l(68), t12.xyzw
                r61.x = samp0[]..swiz;
                r61.y = samp0[]..swiz;
                r61.z = samp0[]..swiz;
                r61.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r30.w, l(84), t12.xyzw
                r62.x = samp0[]..swiz;
                r62.y = samp0[]..swiz;
                r62.z = samp0[]..swiz;
                r62.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r30.w, l(132), t12.xyzw
                r63.x = samp0[]..swiz;
                r63.y = samp0[]..swiz;
                r63.z = samp0[]..swiz;
                r63.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r30.w, l(148), t12.xyzw
                r64.x = samp0[]..swiz;
                r64.y = samp0[]..swiz;
                r64.z = samp0[]..swiz;
                r64.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.zw, r30.w, l(164), t12.xxxy
                r60.z = samp0[]..swiz;
                r60.w = samp0[]..swiz;
                  r61.x = dot(r61.xyzw, r24.xyzw);
                  r61.y = dot(r62.xyzw, r24.xyzw);
                  r24.xy = r61.xy / r34.ww;
                  r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r24.xy = r24.xy + r64.zw;
                  r24.xy = r24.xy * r64.xy;
                  r61.xy = r32.ww / r63.xz;
                  r61.zw = float2(1,1) + -r61.xy;
                  r61.zw = cmp(r24.xy >= r61.zw);
                  r61.xy = cmp(r61.xy >= r24.xy);
                  r61.xy = (int2)r61.xy | (int2)r61.zw;
                  r24.z = (int)r61.y | (int)r61.x;
                  r24.xy = saturate(r24.xy);
                  r61.xy = r24.xy * r63.xz + r63.yw;
                  r24.x = r60.w * r34.w;
                  r24.y = r60.z * r34.w + r33.w;
                  r24.x = r24.y / r24.x;
                } else {
                  r24.z = -1;
                }
                r24.y = (int)r35.w | (int)r24.z;
                if (r24.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r30.w, l(28), t12.xxxx
                r24.y = samp0[]..swiz;
                  r24.x = max(6.10351563e-05, r24.x);
                  r24.y = (int)r24.y & 0x0000ffff;
                  if (r15.w != 0) {
                    r62.z = (uint)r24.y;
                    r24.z = 0;
                    r30.w = 0;
                    while (true) {
                      r33.w = cmp((int)r30.w >= 8);
                      if (r33.w != 0) break;
                      r63.x = dot(icb[r30.w+0].yx, r20.xw);
                      r63.y = dot(icb[r30.w+0].xy, r9.xy);
                      r62.xy = r63.xy * r32.ww + r61.xy;
                      r33.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r62.xyz, r24.x).x;
                      r24.z = r33.w * 0.125 + r24.z;
                      r30.w = (int)r30.w + 1;
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
                r30.w = dot(r56.xyz, r12.xyz);
                r32.w = dot(r12.xyz, r58.xyz);
                r33.w = -r30.w * r30.w + r55.x;
                r28.w = r30.w * r32.w + -r28.w;
                r28.w = saturate(r28.w / r33.w);
                r30.w = r33.w / r55.x;
                r30.w = 10 * r30.w;
                r30.w = min(1, r30.w);
                r28.w = r28.w + -r29.w;
                r28.w = r30.w * r28.w + r29.w;
                r56.xyz = r28.www * r56.xyz + r57.xyz;
                r56.xyz = r25.www ? r56.xyz : r49.yzw;
                r56.xyz = -v7.xyz + r56.xyz;
                r25.w = dot(r56.xyz, r56.xyz);
                r25.w = rsqrt(r25.w);
                r57.xyz = r56.xyz * r25.www;
                r28.w = -abs(r31.w) * r6.z + 1;
                r28.w = r28.w * r28.w;
                r28.w = -r28.w * 0.620000005 + 0.620000005;
                r28.w = r28.w + -abs(r31.w);
                r28.w = r7.w * r28.w + abs(r31.w);
                r29.w = cmp(0 < r31.w);
                r30.w = saturate(dot(r2.xyz, r57.xyz));
                r56.xyz = r56.xyz * r25.www + r7.xyz;
                r25.w = dot(r56.xyz, r56.xyz);
                r25.w = rsqrt(r25.w);
                r56.xyz = r56.xyz * r25.www;
                r25.w = dot(r2.xyz, r56.xyz);
                r31.w = dot(r56.xyz, r7.xyz);
                r32.w = dot(r56.xyz, r4.xyz);
                r33.w = dot(r56.xyz, r5.xyz);
                r32.w = r32.w * r32.w;
                r32.w = r32.w / r11.y;
                r33.w = r33.w * r33.w;
                r33.w = r33.w / r11.z;
                r32.w = r33.w + r32.w;
                r25.w = abs(r25.w) * abs(r25.w) + r32.w;
                r32.w = r30.w * r9.z + r9.w;
                r25.w = r25.w * r25.w;
                r25.w = r25.w * r6.w;
                r25.w = r25.w * r32.w;
                r25.w = rcp(r25.w);
                r24.y = r30.w * r24.y;
                r24.y = r25.w * r24.y;
                r25.w = saturate(1 + -r31.w);
                r30.w = r25.w * r25.w;
                r30.w = r30.w * r30.w;
                r25.w = r30.w * r25.w;
                r25.w = r25.w * r24.y;
                r56.xyz = r29.www ? r28.www : 0;
                r28.w = r29.w ? 0 : r28.w;
                r57.xyz = r29.www ? r25.www : 0;
                r24.y = r29.w ? r24.y : 0;
                r50.x = r49.x;
                r25.w = dot(r50.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r25.w = r25.w * r24.x;
                r29.w = cmp(r16.w < r25.w);
                if (r29.w != 0) {
                  r29.w = r21.z * r21.w;
                  r58.xyz = r29.www * r43.xyz;
                  r22.xyz = r58.xyz * r45.xyz + r22.xyz;
                  r40.xyz = r58.xyz * r48.xyz + r40.xyz;
                  r42.xyz = r58.xyz * r46.xyz + r42.xyz;
                  r41.xyz = r58.xyz * r47.xyz + r41.xyz;
                  r46.xyz = r24.yyy;
                  r16.w = r25.w;
                  r48.xyz = r28.www;
                  r43.xyz = r50.xyz;
                  r44.xyz = r59.xyz;
                  r45.xyz = r56.xyz;
                  r47.xyz = r57.xyz;
                  r21.zw = r60.xy;
                } else {
                  r56.xyw = r50.xyz * r24.xxx;
                  r22.xyz = r56.xyw * r56.zzz + r22.xyz;
                  r40.xyz = r56.xyw * r28.www + r40.xyz;
                  r42.xyz = r56.xyw * r24.yyy + r42.xyz;
                  r41.xyz = r56.xyw * r57.xyz + r41.xyz;
                }
              }
            }
          }
          break;
          case 2 :          r56.xy = r52.zw;
          r56.z = r53.w;
          r56.xyz = -v7.xyz + r56.xyz;
          r24.x = dot(r56.xyz, r56.xyz);
          r24.x = rsqrt(r24.x);
          r57.xyz = r56.xyz * r24.xxx;
          r24.y = dot(r2.xyz, r57.xyz);
          r25.w = cmp(0 < abs(r24.y));
          if (r25.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r19.w, l(112), t12.yzwx
          r58.x = samp0[]..swiz;
          r58.y = samp0[]..swiz;
          r58.z = samp0[]..swiz;
          r58.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.xyzw, r19.w, l(128), t12.zxyw
          r59.x = samp0[]..swiz;
          r59.y = samp0[]..swiz;
          r59.z = samp0[]..swiz;
          r59.w = samp0[]..swiz;
            r61.xyz = r58.xyz;
            r61.w = r59.y;
            r25.w = dot(r61.xyzw, r23.xyzw);
            r28.w = cmp(r25.w < 1);
            if (r28.w != 0) {
              r60.xzw = float3(1,1,1);
              r62.x = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r19.w, l(172), t12.yzwx
            r63.x = samp0[]..swiz;
            r63.y = samp0[]..swiz;
            r63.z = samp0[]..swiz;
            r63.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r19.w, l(188), t12.wxyz
            r64.x = samp0[]..swiz;
            r64.y = samp0[]..swiz;
            r64.z = samp0[]..swiz;
            r64.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r19.w, l(204), t12.xyzw
            r65.x = samp0[]..swiz;
            r65.y = samp0[]..swiz;
            r65.z = samp0[]..swiz;
            r65.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.w, r19.w, l(236), t12.xxxx
            r28.w = samp0[]..swiz;
              r66.xyz = -v7.xyz + r49.yzw;
              r29.w = r52.x * r52.x;
              r30.w = dot(r66.xyz, r66.xyz);
              r29.w = r29.w / r30.w;
              r29.w = min(1, r29.w);
              r51.xy = saturate(r25.ww * r51.xz + r51.yw);
              r51.zw = r51.xy * r51.xy;
              r51.xy = r51.xy * float2(-2,-2) + float2(3,3);
              r51.xy = r51.zw * r51.xy;
              r29.w = r51.x * r29.w;
              r29.w = r29.w * r51.y;
              r53.w = r54.x;
              r51.x = dot(r53.xyzw, r23.xyzw);
              r66.xyz = r54.yzw;
              r66.w = r55.w;
              r51.y = dot(r66.xyzw, r23.xyzw);
              r25.xy = r51.xy / r25.ww;
              r25.w = cmp(r63.w < 0.00048828125);
              if (r25.w != 0) {
                r64.y = r65.x;
                r51.xy = saturate(abs(r25.xy) * r64.zw + r64.xy);
                r51.zw = r51.xy * r51.xy;
                r51.xy = r51.xy * float2(-2,-2) + float2(3,3);
                r51.xy = r51.zw * r51.xy;
                r25.w = r51.x * r51.y;
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
                r30.w = r64.z * r51.x;
                r31.w = r64.w * r51.y + -1;
                r30.w = r64.w * r51.y + -r30.w;
                r30.w = saturate(r31.w / r30.w);
                r31.w = r30.w * r30.w;
                r30.w = r30.w * -2 + 3;
                r25.w = r31.w * r30.w;
              }
              r62.x = r29.w * r25.w;
              r25.w = r28.w ? 0.000000 : 0;
              if (r25.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyz, r19.w, l(220), t12.xyzx
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
                r28.w = dot(r65.yzw, r25.xyz);
                r25.x = dot(r51.xyz, r25.xyz);
                r51.x = frac(r28.w);
                r51.y = frac(r25.x);
                r25.x = (int)r25.w + -1;
                r51.z = (uint)r25.x;
                r60.xzw = gCookieArray.SampleLevel(samplerLinear_s, r51.xyz, 0).xyz;
              } else {
                r60.xzw = float3(1,1,1);
              }
            }
            r49.yz = r50.yz;
            r25.xyw = r49.xyz * r60.xzw;
            r28.w = cmp(0 < r62.x);
            if (r28.w != 0) {
              if (3 == 0) r49.x = 0; else if (3+27 < 32) {               r49.x = (uint)r50.w << (32-(3 + 27)); r49.x = (uint)r49.x >> (32-3);              } else r49.x = (uint)r50.w >> 27;
              if (4 == 0) r49.y = 0; else if (4+20 < 32) {               r49.y = (uint)r50.w << (32-(4 + 20)); r49.y = (uint)r49.y >> (32-4);              } else r49.y = (uint)r50.w >> 20;
              r28.w = cmp((int)r49.x != 1);
              if (r28.w != 0) {
                r28.w = abs(r24.y) * -0.200000003 + 0.400000006;
                r29.w = cmp(r24.y < 0);
                r28.w = r29.w ? -r28.w : r28.w;
                r26.xyz = r2.xyz * r28.www + v7.xyz;
                r58.xyz = r55.xyz;
                r28.w = dot(r58.xyzw, r26.xyzw);
                r29.w = dot(r61.xyzw, r26.xyzw);
                r30.w = cmp(r29.w >= r28.w);
                if (r30.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.y, r19.w, l(144), t12.xxxx
                r59.y = samp0[]..swiz;
                  r53.w = r54.x;
                  r51.x = dot(r53.xyzw, r26.xyzw);
                  r55.xyz = r54.yzw;
                  r51.y = dot(r55.xyzw, r26.xyzw);
                  r26.xy = r51.xy / r29.ww;
                  r26.xy = saturate(r26.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r26.xy = r26.xy * r59.zw + r59.xy;
                  r19.w = r28.w / r29.w;
                  r19.w = max(6.10351563e-05, r19.w);
                  r28.w = (int)r50.w & 0x0000ffff;
                  if (r15.w != 0) {
                    r51.z = (uint)r28.w;
                    r29.w = 0;
                    r30.w = 0;
                    while (true) {
                      r31.w = cmp((int)r30.w >= 8);
                      if (r31.w != 0) break;
                      r53.x = dot(icb[r30.w+0].xy, r10.xy);
                      r53.y = dot(icb[r30.w+0].yx, r10.xz);
                      r51.xy = r53.xy * r52.yy + r26.xy;
                      r31.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r51.xyz, r19.w).x;
                      r29.w = r31.w * 0.125 + r29.w;
                      r30.w = (int)r30.w + 1;
                    }
                  } else {
                    r26.z = (uint)r28.w;
                    r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r19.w).x;
                  }
                  r19.w = r29.w * r29.w;
                  r62.y = r19.w * r29.w;
                } else {
                  r62.y = 1;
                }
              } else {
                r62.y = 1;
              }
              if (r49.y != 0) {
                r19.w = (int)r49.y + numLights;
                r19.w = (int)r19.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.x, r19.w, l(52), t12.xxxx
              r26.x = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r19.w, l(68), t12.xyzw
              r49.x = samp0[]..swiz;
              r49.y = samp0[]..swiz;
              r49.z = samp0[]..swiz;
              r49.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r19.w, l(84), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r19.w, l(100), t12.xyzw
              r52.x = samp0[]..swiz;
              r52.y = samp0[]..swiz;
              r52.z = samp0[]..swiz;
              r52.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r19.w, l(116), t12.xyzw
              r53.x = samp0[]..swiz;
              r53.y = samp0[]..swiz;
              r53.z = samp0[]..swiz;
              r53.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r19.w, l(132), t12.xyzw
              r54.x = samp0[]..swiz;
              r54.y = samp0[]..swiz;
              r54.z = samp0[]..swiz;
              r54.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r19.w, l(148), t12.xyzw
              r55.x = samp0[]..swiz;
              r55.y = samp0[]..swiz;
              r55.z = samp0[]..swiz;
              r55.w = samp0[]..swiz;
                r26.y = abs(r24.y) * -0.200000003 + 0.400000006;
                r26.z = cmp(r24.y < 0);
                r26.y = r26.z ? -r26.y : r26.y;
                r27.xyz = r2.xyz * r26.yyy + v7.xyz;
                r49.x = dot(r49.xyzw, r27.xyzw);
                r49.y = dot(r51.xyzw, r27.xyzw);
                r26.y = dot(r52.xyzw, r27.xyzw);
                r26.z = dot(r53.xyzw, r27.xyzw);
                r27.x = cmp(r26.z < r26.y);
                r27.yz = r49.xy / r26.zz;
                r27.yz = r27.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r27.yz = r27.yz + r55.zw;
                r27.yz = r27.yz * r55.xy;
                r49.xy = r26.xx / r54.xz;
                r49.zw = float2(1,1) + -r49.xy;
                r49.zw = cmp(r27.yz >= r49.zw);
                r49.xy = cmp(r49.xy >= r27.yz);
                r49.xy = (int2)r49.xy | (int2)r49.zw;
                r28.w = (int)r49.y | (int)r49.x;
                r27.x = (int)r27.x | (int)r28.w;
                if (r27.x == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.x, r19.w, l(28), t12.xxxx
                r27.x = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xy, r19.w, l(164), t12.xyxx
                r49.x = samp0[]..swiz;
                r49.y = samp0[]..swiz;
                  r27.yz = saturate(r27.yz);
                  r51.xy = r27.yz * r54.xz + r54.yw;
                  r19.w = r49.y * r26.z;
                  r26.y = r49.x * r26.z + r26.y;
                  r19.w = r26.y / r19.w;
                  r19.w = max(6.10351563e-05, r19.w);
                  r26.y = r27.x ? 0.000000 : 0;
                  if (r15.w != 0) {
                    r27.z = (uint)r26.y;
                    r26.z = 0;
                    r28.w = 0;
                    while (true) {
                      r30.w = cmp((int)r28.w >= 8);
                      if (r30.w != 0) break;
                      r49.x = dot(icb[r28.w+0].xy, r28.xy);
                      r49.y = dot(icb[r28.w+0].yx, r28.xz);
                      r27.xy = r49.xy * r26.xx + r51.xy;
                      r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r19.w).x;
                      r26.z = r27.x * 0.125 + r26.z;
                      r28.w = (int)r28.w + 1;
                    }
                  } else {
                    r51.z = (uint)r26.y;
                    r26.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r51.xyz, r19.w).x;
                  }
                  r19.w = r26.z * r26.z;
                  r19.w = r19.w * r26.z;
                } else {
                  r19.w = 1;
                }
                r62.y = r62.y * r19.w;
              }
              r19.w = r62.x * r62.y;
              r26.x = cmp(0 < r19.w);
              if (r26.x != 0) {
                r26.x = r50.x * r5.w;
                r26.x = 0.25 * r26.x;
                r26.y = -abs(r24.y) * r6.z + 1;
                r26.y = r26.y * r26.y;
                r26.y = -r26.y * 0.620000005 + 0.620000005;
                r26.y = r26.y + -abs(r24.y);
                r26.y = r7.w * r26.y + abs(r24.y);
                r27.x = cmp(0 < r24.y);
                r24.y = saturate(r24.y);
                r49.xyz = r56.xyz * r24.xxx + r7.xyz;
                r24.x = dot(r49.xyz, r49.xyz);
                r24.x = rsqrt(r24.x);
                r49.xyz = r49.xyz * r24.xxx;
                r24.x = dot(r2.xyz, r49.xyz);
                r27.y = dot(r49.xyz, r7.xyz);
                r27.z = dot(r49.xyz, r4.xyz);
                r28.w = dot(r49.xyz, r5.xyz);
                r27.z = r27.z * r27.z;
                r27.z = r27.z / r11.y;
                r28.w = r28.w * r28.w;
                r28.w = r28.w / r11.z;
                r27.z = r28.w + r27.z;
                r24.x = abs(r24.x) * abs(r24.x) + r27.z;
                r27.z = r24.y * r9.z + r9.w;
                r24.x = r24.x * r24.x;
                r24.x = r24.x * r6.w;
                r24.x = r24.x * r27.z;
                r24.x = rcp(r24.x);
                r24.y = r24.y * r26.x;
                r24.x = r24.x * r24.y;
                r24.y = saturate(1 + -r27.y);
                r26.x = r24.y * r24.y;
                r26.x = r26.x * r26.x;
                r24.y = r26.x * r24.y;
                r24.y = r24.x * r24.y;
                r49.xyz = r27.xxx ? r26.yyy : 0;
                r26.x = r27.x ? 0 : r26.y;
                r50.xyz = r27.xxx ? r24.yyy : 0;
                r24.x = r27.x ? r24.x : 0;
                r24.y = dot(r25.xyw, float3(0.212599993,0.715200007,0.0722000003));
                r24.y = r24.y * r19.w;
                r26.y = cmp(r16.w < r24.y);
                if (r26.y != 0) {
                  r26.y = r21.z * r21.w;
                  r27.xyz = r26.yyy * r43.xyz;
                  r22.xyz = r27.xyz * r45.xyz + r22.xyz;
                  r40.xyz = r27.xyz * r48.xyz + r40.xyz;
                  r42.xyz = r27.xyz * r46.xyz + r42.xyz;
                  r41.xyz = r27.xyz * r47.xyz + r41.xyz;
                  r46.xyz = r24.xxx;
                  r16.w = r24.y;
                  r48.xyz = r26.xxx;
                  r43.xyz = r25.xyw;
                  r44.xyz = r57.xyz;
                  r45.xyz = r49.xyz;
                  r47.xyz = r50.xyz;
                  r21.zw = r62.xy;
                } else {
                  r25.xyw = r19.www * r25.xyw;
                  r22.xyz = r25.xyw * r49.zzz + r22.xyz;
                  r40.xyz = r25.xyw * r26.xxx + r40.xyz;
                  r42.xyz = r25.xyw * r24.xxx + r42.xyz;
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
    r39.y = r16.w;
    r36.xyz = r48.xyz;
    r11.w = (int)r11.w + 32;
  }
  r4.z = 0;
  r4.xy = float2(1,-1) * r34.yx;
  r5.xyz = r34.zxy * r4.yzx;
  r5.xyz = r34.yzx * r4.zxy + -r5.xyz;
  r9.xyz = viewProjectionMatrix._m10_m11_m13 * r14.yyy;
  r9.xyz = r14.xxx * viewProjectionMatrix._m00_m01_m03 + r9.xyz;
  r9.xyz = r14.zzz * viewProjectionMatrix._m20_m21_m23 + r9.xyz;
  r9.xyz = r9.xyz + r8.yzw;
  r10.z = rcp(r9.z);
  r6.zw = r10.zz * r9.xy;
  r10.xy = r6.zw * float2(0.5,-0.5) + float2(0.5,0.5);
  r9.xyw = r34.xyz * float3(2.4000001,2.4000001,2.4000001) + r14.xyz;
  r0.z = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r0.z = frac(r0.z);
  r0.z = 52.9829178 * r0.z;
  r0.z = frac(r0.z);
  r1.w = 3.14159989 * r0.z;
  sincos(r1.w, r8.x, r11.x);
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
  r14.xyz = r0.zzz * float3(3.14159989,0.5,0.5) + float3(3.14159989,0.333333343,1);
  sincos(r14.x, r8.x, r14.x);
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
  r1.w = dot(renderTargetSize.zw, renderTargetSize.zw);
  r1.w = sqrt(r1.w);
  r4.w = dot(r11.xy, r11.xy);
  r4.w = sqrt(r4.w);
  r4.w = rcp(r4.w);
  r1.w = r4.w * r1.w;
  r5.xy = float2(0.117647059,0.117647059) * r14.yz;
  r5.xy = r5.xy * r5.xy;
  x1[0].x = r5.x;
  r8.xyz = r11.xyz * r5.xxx + r10.xyz;
  r5.zw = cmp(r1.ww < r5.xy);
  r6.zw = renderTargetSize.xy * r8.xy;
  r13.xy = (int2)r6.zw;
  r13.zw = float2(0,0);
  r4.w = floatZSampler.Load(r13.xyz).x;
  r6.z = cmp(r4.w >= 0.984375);
  r6.w = 1.01587307 * r4.w;
  r4.w = r4.w * 64 + -63;
  r4.w = r6.z ? r4.w : r6.w;
  r4.w = max(9.99999994e-09, r4.w);
  r4.w = rcp(r4.w);
  x2[0].x = r4.w;
  r6.z = 0.0419999994 + r4.w;
  r6.z = r8.z * r6.z;
  r6.z = cmp(1 < r6.z);
  r6.z = r6.z ? 1.000000 : 0;
  r5.z = r5.z ? r6.z : 1;
  x0[0].x = r5.z;
  x1[1].x = r5.y;
  r8.xyz = r4.xyz * r5.yyy + r10.xyz;
  r6.zw = renderTargetSize.xy * r8.xy;
  r13.xy = (int2)r6.zw;
  r13.zw = float2(0,0);
  r6.z = floatZSampler.Load(r13.xyz).x;
  r6.w = cmp(r6.z >= 0.984375);
  r7.w = 1.01587307 * r6.z;
  r6.z = r6.z * 64 + -63;
  r6.z = r6.w ? r6.z : r7.w;
  r6.z = max(9.99999994e-09, r6.z);
  r6.z = rcp(r6.z);
  x2[1].x = r6.z;
  r6.w = 0.0419999994 + r6.z;
  r6.w = r8.z * r6.w;
  r6.w = cmp(1 < r6.w);
  r6.w = r6.w ? 1.000000 : 0;
  r5.w = r5.w ? r6.w : 1;
  x0[1].x = r5.w;
  r6.w = r5.z + r5.w;
  r6.w = cmp(r6.w != 0.000000);
  if (r6.w != 0) {
    r8.xy = r0.zz * float2(0.5,0.5) + float2(1.33333337,2);
    r8.xy = float2(0.117647059,0.117647059) * r8.xy;
    r8.xy = r8.xy * r8.xy + -r5.xy;
    r5.x = r5.z * r8.x + r5.x;
    x1[0].x = r5.x;
    r8.xzw = r11.xyz * r5.xxx + r10.xyz;
    r5.x = cmp(r1.w < r5.x);
    r8.xz = renderTargetSize.xy * r8.xz;
    r13.xy = (int2)r8.xz;
    r13.zw = float2(0,0);
    r6.w = floatZSampler.Load(r13.xyz).x;
    r7.w = cmp(r6.w >= 0.984375);
    r8.x = 1.01587307 * r6.w;
    r6.w = r6.w * 64 + -63;
    r6.w = r7.w ? r6.w : r8.x;
    r6.w = max(9.99999994e-09, r6.w);
    r6.w = rcp(r6.w);
    r4.w = r5.x ? r6.w : r4.w;
    x2[0].x = r4.w;
    r4.w = 0.0419999994 + r6.w;
    r4.w = r8.w * r4.w;
    r4.w = cmp(1 < r4.w);
    r4.w = r4.w ? 1.000000 : 0;
    r4.w = r5.z * r4.w;
    r4.w = r5.x ? r4.w : r5.z;
    x0[0].x = r4.w;
    r5.x = r5.w * r8.y + r5.y;
    x1[1].x = r5.x;
    r8.xyz = r4.xyz * r5.xxx + r10.xyz;
    r5.x = cmp(r1.w < r5.x);
    r5.yz = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.yz;
    r13.zw = float2(0,0);
    r5.y = floatZSampler.Load(r13.xyz).x;
    r5.z = cmp(r5.y >= 0.984375);
    r6.w = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.z ? r5.y : r6.w;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.z = r5.x ? r5.y : r6.z;
    x2[1].x = r5.z;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r8.z * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.w * r5.y;
    r5.x = r5.x ? r5.y : r5.w;
    x0[1].x = r5.x;
    r4.w = r5.x + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r5.xy = r0.zz * float2(0.5,0.5) + float2(2.33333325,3);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r4.w = x1[0].x;
    r5.z = x0[0].x;
    r5.x = r5.x * r5.x + -r4.w;
    r4.w = r5.z * r5.x + r4.w;
    x1[0].x = r4.w;
    r8.xyz = r11.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.w < r4.w);
    r5.xw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.xw;
    r13.zw = float2(0,0);
    r5.x = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.w ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.w = x2[0].x;
    r5.w = r4.w ? r5.x : r5.w;
    x2[0].x = r5.w;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r8.z * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.z * r5.x;
    r4.w = r4.w ? r5.x : r5.z;
    x0[0].x = r4.w;
    r5.x = x1[1].x;
    r5.z = x0[1].x;
    r5.y = r5.y * r5.y + -r5.x;
    r5.x = r5.z * r5.y + r5.x;
    x1[1].x = r5.x;
    r8.xyz = r4.xyz * r5.xxx + r10.xyz;
    r5.x = cmp(r1.w < r5.x);
    r5.yw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.yw;
    r13.zw = float2(0,0);
    r5.y = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.w ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.w = x2[1].x;
    r5.w = r5.x ? r5.y : r5.w;
    x2[1].x = r5.w;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r8.z * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.z * r5.y;
    r5.x = r5.x ? r5.y : r5.z;
    x0[1].x = r5.x;
    r4.w = r5.x + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r5.xy = r0.zz * float2(0.5,0.5) + float2(3.33333325,4);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r4.w = x1[0].x;
    r5.z = x0[0].x;
    r5.x = r5.x * r5.x + -r4.w;
    r4.w = r5.z * r5.x + r4.w;
    x1[0].x = r4.w;
    r8.xyz = r11.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.w < r4.w);
    r5.xw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.xw;
    r13.zw = float2(0,0);
    r5.x = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.w ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.w = x2[0].x;
    r5.w = r4.w ? r5.x : r5.w;
    x2[0].x = r5.w;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r8.z * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.z * r5.x;
    r4.w = r4.w ? r5.x : r5.z;
    x0[0].x = r4.w;
    r5.x = x1[1].x;
    r5.z = x0[1].x;
    r5.y = r5.y * r5.y + -r5.x;
    r5.x = r5.z * r5.y + r5.x;
    x1[1].x = r5.x;
    r8.xyz = r4.xyz * r5.xxx + r10.xyz;
    r5.x = cmp(r1.w < r5.x);
    r5.yw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.yw;
    r13.zw = float2(0,0);
    r5.y = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.w ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.w = x2[1].x;
    r5.w = r5.x ? r5.y : r5.w;
    x2[1].x = r5.w;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r8.z * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.z * r5.y;
    r5.x = r5.x ? r5.y : r5.z;
    x0[1].x = r5.x;
    r4.w = r5.x + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r5.xy = r0.zz * float2(0.5,0.5) + float2(4.33333349,5);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r4.w = x1[0].x;
    r5.z = x0[0].x;
    r5.x = r5.x * r5.x + -r4.w;
    r4.w = r5.z * r5.x + r4.w;
    x1[0].x = r4.w;
    r8.xyz = r11.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.w < r4.w);
    r5.xw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.xw;
    r13.zw = float2(0,0);
    r5.x = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.w ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.w = x2[0].x;
    r5.w = r4.w ? r5.x : r5.w;
    x2[0].x = r5.w;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r8.z * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.z * r5.x;
    r4.w = r4.w ? r5.x : r5.z;
    x0[0].x = r4.w;
    r5.x = x1[1].x;
    r5.z = x0[1].x;
    r5.y = r5.y * r5.y + -r5.x;
    r5.x = r5.z * r5.y + r5.x;
    x1[1].x = r5.x;
    r8.xyz = r4.xyz * r5.xxx + r10.xyz;
    r5.x = cmp(r1.w < r5.x);
    r5.yw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.yw;
    r13.zw = float2(0,0);
    r5.y = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.w ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.w = x2[1].x;
    r5.w = r5.x ? r5.y : r5.w;
    x2[1].x = r5.w;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r8.z * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.z * r5.y;
    r5.x = r5.x ? r5.y : r5.z;
    x0[1].x = r5.x;
    r4.w = r5.x + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r5.xy = r0.zz * float2(0.5,0.5) + float2(5.33333349,6);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r4.w = x1[0].x;
    r5.z = x0[0].x;
    r5.x = r5.x * r5.x + -r4.w;
    r4.w = r5.z * r5.x + r4.w;
    x1[0].x = r4.w;
    r8.xyz = r11.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.w < r4.w);
    r5.xw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.xw;
    r13.zw = float2(0,0);
    r5.x = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.w ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.w = x2[0].x;
    r5.w = r4.w ? r5.x : r5.w;
    x2[0].x = r5.w;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r8.z * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.z * r5.x;
    r4.w = r4.w ? r5.x : r5.z;
    x0[0].x = r4.w;
    r5.x = x1[1].x;
    r5.z = x0[1].x;
    r5.y = r5.y * r5.y + -r5.x;
    r5.x = r5.z * r5.y + r5.x;
    x1[1].x = r5.x;
    r8.xyz = r4.xyz * r5.xxx + r10.xyz;
    r5.x = cmp(r1.w < r5.x);
    r5.yw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.yw;
    r13.zw = float2(0,0);
    r5.y = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.w ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.w = x2[1].x;
    r5.w = r5.x ? r5.y : r5.w;
    x2[1].x = r5.w;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r8.z * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.z * r5.y;
    r5.x = r5.x ? r5.y : r5.z;
    x0[1].x = r5.x;
    r4.w = r5.x + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r5.xy = r0.zz * float2(0.5,0.5) + float2(6.33333349,7);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r4.w = x1[0].x;
    r5.z = x0[0].x;
    r5.x = r5.x * r5.x + -r4.w;
    r4.w = r5.z * r5.x + r4.w;
    x1[0].x = r4.w;
    r8.xyz = r11.xyz * r4.www + r10.xyz;
    r4.w = cmp(r1.w < r4.w);
    r5.xw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.xw;
    r13.zw = float2(0,0);
    r5.x = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.x >= 0.984375);
    r6.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.w ? r5.x : r6.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.w = x2[0].x;
    r5.w = r4.w ? r5.x : r5.w;
    x2[0].x = r5.w;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r8.z * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.z * r5.x;
    r4.w = r4.w ? r5.x : r5.z;
    x0[0].x = r4.w;
    r5.x = x1[1].x;
    r5.z = x0[1].x;
    r5.y = r5.y * r5.y + -r5.x;
    r5.x = r5.z * r5.y + r5.x;
    x1[1].x = r5.x;
    r8.xyz = r4.xyz * r5.xxx + r10.xyz;
    r5.x = cmp(r1.w < r5.x);
    r5.yw = renderTargetSize.xy * r8.xy;
    r13.xy = (int2)r5.yw;
    r13.zw = float2(0,0);
    r5.y = floatZSampler.Load(r13.xyz).x;
    r5.w = cmp(r5.y >= 0.984375);
    r6.z = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r5.w ? r5.y : r6.z;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r5.w = x2[1].x;
    r5.w = r5.x ? r5.y : r5.w;
    x2[1].x = r5.w;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r8.z * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r5.z * r5.y;
    r5.x = r5.x ? r5.y : r5.z;
    x0[1].x = r5.x;
    r4.w = r5.x + r4.w;
    r4.w = cmp(r4.w == 0.000000);
  } else {
    r4.w = -1;
  }
  if (r4.w == 0) {
    r5.xy = r0.zz * float2(0.5,0.5) + float2(7.33333349,8);
    r5.xy = float2(0.117647059,0.117647059) * r5.xy;
    r0.z = x1[0].x;
    r4.w = x0[0].x;
    r5.x = r5.x * r5.x + -r0.z;
    r0.z = r4.w * r5.x + r0.z;
    r5.xzw = r11.xyz * r0.zzz + r10.xyz;
    r0.z = cmp(r1.w < r0.z);
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
    r5.z = r0.z ? r5.x : r5.z;
    x2[0].x = r5.z;
    r5.x = 0.0419999994 + r5.x;
    r5.x = r5.w * r5.x;
    r5.x = cmp(1 < r5.x);
    r5.x = r5.x ? 1.000000 : 0;
    r5.x = r5.x * r4.w;
    r0.z = r0.z ? r5.x : r4.w;
    x0[0].x = r0.z;
    r0.z = x1[1].x;
    r4.w = x0[1].x;
    r5.x = r5.y * r5.y + -r0.z;
    r0.z = r4.w * r5.x + r0.z;
    r4.xyz = r4.xyz * r0.zzz + r10.xyz;
    r0.z = cmp(r1.w < r0.z);
    r4.xy = renderTargetSize.xy * r4.xy;
    r5.xy = (int2)r4.xy;
    r5.zw = float2(0,0);
    r1.w = floatZSampler.Load(r5.xyz).x;
    r4.x = cmp(r1.w >= 0.984375);
    r4.y = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r4.x ? r1.w : r4.y;
    r1.w = max(9.99999994e-09, r1.w);
    r1.w = rcp(r1.w);
    r4.x = x2[1].x;
    r4.x = r0.z ? r1.w : r4.x;
    x2[1].x = r4.x;
    r1.w = 0.0419999994 + r1.w;
    r1.w = r4.z * r1.w;
    r1.w = cmp(1 < r1.w);
    r1.w = r1.w ? 1.000000 : 0;
    r1.w = r4.w * r1.w;
    r0.z = r0.z ? r1.w : r4.w;
    x0[1].x = r0.z;
  }
  r0.z = x2[0].x;
  r0.z = r0.z + -r9.z;
  r0.z = cmp(2.4000001 < abs(r0.z));
  r1.w = x0[0].x;
  r1.w = -r1.w * 0.5 + 1;
  r0.z = r0.z ? 0.5 : r1.w;
  r1.w = x2[1].x;
  r1.w = r1.w + -r9.z;
  r1.w = cmp(2.4000001 < abs(r1.w));
  r4.x = x0[1].x;
  r4.x = 0.5 * r4.x;
  r1.w = r1.w ? -0.5 : -r4.x;
  r0.z = r1.w + r0.z;
  r0.z = saturate(1 + -r0.z);
  r1.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = r1.w * r0.z;
  r0.z = min(r39.w, r0.z);
  r0.z = r39.z * r0.z;
  r4.xyz = r0.zzz * r33.xyz;
  r5.xyz = r4.xyz * r35.xyz + r29.xyz;
  r8.xyz = r4.xyz * r36.xyz + r30.xyz;
  r9.xyz = r4.xyz * r37.xyz + r32.xyz;
  r4.xyz = r4.xyz * r38.xyz + r31.xyz;
  r0.z = -debugGlossOverride.w * r0.w + 1;
  r0.w = 5 * r0.z;
  r1.w = r0.z * 5 + -2.5;
  r1.w = saturate(0.400000006 * r1.w);
  r1.w = 100 * r1.w;
  r6.zw = -r0.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r4.w = exp2(r6.z);
  r4.w = r6.x * r4.w;
  r4.w = 9.1368103 * r4.w;
  r5.w = r0.w * r0.z;
  r5.w = -r5.w * 2.0159049 + r6.w;
  r5.w = exp2(r5.w);
  r5.w = r6.x * r5.w;
  r5.w = 9.70808983 * r5.w;
  r4.w = max(r5.w, r4.w);
  r4.w = max(1.26815999, r4.w);
  r10.xy = float2(0,0);
  r11.w = 0;
  r13.yz = float2(0,1);
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r5.w = 0;
  r6.z = 0;
  while (true) {
    r6.w = cmp((uint)r6.z >= numRefProbes);
    if (r6.w != 0) break;
    r10.z = (uint)r6.z >> 5;
    r11.xyz = (int3)r10.xyz + (int3)r19.xyz;
    r6.w = visibleProbes.Load(r11.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r6.z, l(0), t15.wxyz
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r6.z, l(16), t15.xyzw
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r6.z, l(32), t15.yxwz
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r6.z, l(48), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r6.z, l(64), t15.zwxy
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r6.z, l(80), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.zw, r6.z, l(96), t15.xxxy
  r10.z = samp0[]..swiz;
  r10.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r6.z, l(116), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r6.z, l(132), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r6.z, l(148), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r6.z, l(164), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r6.z, l(180), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r6.z, l(196), t15.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xy, r6.z, l(212), t15.xyxx
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
    r11.xyz = v7.xyz + -r21.yzw;
    r7.w = dot(r11.xyz, r11.xyz);
    r7.w = sqrt(r7.w);
    r7.w = cmp(probeDebugRadius >= r7.w);
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
    r13.w = dot(r35.xyz, r11.xyz);
    r13.w = saturate(r13.w + r35.w);
    r9.w = r13.w * r9.w;
    r13.w = dot(r36.xyz, r11.xyz);
    r13.w = saturate(r13.w + r36.w);
    r9.w = r13.w * r9.w;
    r13.w = dot(r37.xyz, r11.xyz);
    r13.w = saturate(r13.w + r37.w);
    r9.w = r13.w * r9.w;
    r13.w = dot(r38.xyz, r11.xyz);
    r13.w = saturate(r13.w + r38.w);
    r9.w = r13.w * r9.w;
    r13.w = dot(r39.xyz, r11.xyz);
    r13.w = saturate(r13.w + r39.w);
    r13.x = r13.w * r9.w;
    r9.w = (int)r10.z & 1;
    r13.xw = r9.ww ? r13.xy : r13.zx;
    r34.xy = r27.zw;
    r34.z = r28.z;
    r9.w = dot(r12.xyz, r34.xyz);
    r14.w = dot(r11.xyz, r34.xyz);
    r14.w = r14.w + -r28.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r1.w);
    r14.w = r15.w ? r14.w : -r14.w;
    r9.w = max(1.00000001e-07, -r9.w);
    r9.w = r14.w / r9.w;
    r9.w = min(131072, abs(r9.w));
    r28.z = r29.z;
    r14.w = dot(r12.xyz, r28.xyz);
    r15.w = dot(r11.xyz, r28.xyz);
    r15.w = r15.w + -r29.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r1.w);
    r15.w = r16.w ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r9.w = min(abs(r14.w), r9.w);
    r29.z = r30.z;
    r14.w = dot(r12.xyz, r29.xyz);
    r15.w = dot(r11.xyz, r29.xyz);
    r15.w = r15.w + -r30.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r1.w);
    r15.w = r16.w ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r9.w = min(abs(r14.w), r9.w);
    r30.z = r31.z;
    r14.w = dot(r12.xyz, r30.xyz);
    r15.w = dot(r11.xyz, r30.xyz);
    r15.w = r15.w + -r31.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r1.w);
    r15.w = r16.w ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r9.w = min(abs(r14.w), r9.w);
    r31.z = r32.x;
    r14.w = dot(r12.xyz, r31.xyz);
    r15.w = dot(r11.xyz, r31.xyz);
    r15.w = r15.w + -r32.y;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r1.w);
    r15.w = r16.w ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r9.w = min(abs(r14.w), r9.w);
    r33.zw = r32.zw;
    r14.w = dot(r12.zxy, r33.xzw);
    r15.w = dot(r11.zxy, r33.xzw);
    r15.w = r15.w + -r33.y;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r1.w);
    r15.w = r16.w ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r9.w = min(abs(r14.w), r9.w);
    r28.x = r24.w;
    r28.yz = r25.zw;
    r28.xyz = r28.xyz + r11.xyz;
    r28.xyz = r12.xyz * r9.www + r28.xyz;
    r14.w = dot(r28.xyz, r28.xyz);
    r14.w = sqrt(r14.w);
    r9.w = r9.w / r14.w;
    r9.w = r9.w + r9.w;
    r9.w = sqrt(r9.w);
    r9.w = r0.z * 5 + r9.w;
    r9.w = -0.844799995 + r9.w;
    r21.y = r22.z;
    r21.z = r23.x;
    r29.x = dot(r28.xyz, r21.xyz);
    r30.xy = r22.xw;
    r30.z = r23.w;
    r29.y = dot(r28.xyz, r30.xyz);
    r23.x = r22.y;
    r29.z = dot(r28.xyz, r23.xyz);
    if (6 == 0) r17.z = 0; else if (6+25 < 32) {     r17.z = (uint)r27.y << (32-(6 + 25)); r17.z = (uint)r17.z >> (32-6);    } else r17.z = (uint)r27.y >> 25;
    if (9 == 0) r17.w = 0; else if (9+16 < 32) {     r17.w = (uint)r27.y << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);    } else r17.w = (uint)r27.y >> 16;
    r29.w = (uint)r17.w;
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
    r29.x = dot(r2.xyz, r21.xyz);
    r29.y = dot(r2.xyz, r30.xyz);
    r29.z = dot(r2.xyz, r23.xyz);
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
    r9.w = r5.w;
    r14.z = r6.w;
    while (true) {
      if (r14.z == 0) break;
      r14.w = firstbitlow((uint)r14.z);
      r14.w = 1 << (int)r14.w;
      r15.z = (int)r14.w & (int)r14.z;
      if (r15.z != 0) {
        r14.w = ~(int)r14.w;
        r14.z = (int)r14.w & (int)r14.z;
        if (r7.w != 0) {
          r14.w = r10.z;
          r29.xy = r13.xw;
          r15.z = 1;
          while (true) {
            r15.w = cmp((int)r15.z >= (int)r17.z);
            if (r15.w != 0) break;
            r15.w = (int)r8.w + (int)r15.z;
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
            r15.w = dot(r30.xyz, r11.xyz);
            r15.w = saturate(r15.w + r30.w);
            r15.w = r29.x * r15.w;
            r16.z = dot(r31.xyz, r11.xyz);
            r16.z = saturate(r16.z + r31.w);
            r15.w = r16.z * r15.w;
            r16.z = dot(r32.xyz, r11.xyz);
            r16.z = saturate(r16.z + r32.w);
            r15.w = r16.z * r15.w;
            r16.z = dot(r33.xyz, r11.xyz);
            r16.z = saturate(r16.z + r33.w);
            r15.w = r16.z * r15.w;
            r16.z = dot(r34.xyz, r11.xyz);
            r16.z = saturate(r16.z + r34.w);
            r15.w = r16.z * r15.w;
            r16.z = dot(r35.xyz, r11.xyz);
            r16.z = saturate(r16.z + r35.w);
            r29.x = r16.z * r15.w;
            r16.w = (uint)r14.w >> 2;
            if (1 == 0) r17.w = 0; else if (1+2 < 32) {             r17.w = (uint)r14.w << (32-(1 + 2)); r17.w = (uint)r17.w >> (32-1);            } else r17.w = (uint)r14.w >> 2;
            r19.w = (int)r16.w & 2;
            r21.z = max(r29.y, r29.x);
            r15.w = -r15.w * r16.z + 1;
            r15.w = r29.y * r15.w;
            r17.y = r19.w ? r15.w : r21.z;
            r29.xy = r17.ww ? r29.xy : r17.xy;
            r15.z = (int)r15.z + 1;
            r14.w = r16.w;
          }
          r29.y = saturate(r29.y);
          r14.w = r29.y * r10.w;
          r15.z = cmp(0 < r14.w);
          if (r15.z != 0) {
            r30.z = r29.y * r10.w + r27.w;
            r14.w = r14.w * r27.x;
            r29.xzw = r25.xyz * r14.www;
            r31.xyz = r29.zzz * r21.xyw;
            r31.xyz = r23.xyz * r29.xxx + r31.xyz;
            r29.xzw = r24.xyz * r29.www + r31.xyz;
            r31.xyz = r29.xzw * r26.xyz;
            r15.z = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r31.xyz = r29.xzw * r26.xyz + r28.xyz;
            r15.w = r15.z * r4.w;
            r29.xzw = r22.xyz * r14.www;
            r14.w = dot(r29.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r14.w = r4.w * r15.z + r14.w;
            r14.w = r15.w / r14.w;
            r32.x = r28.w;
            r32.yz = r27.yz;
            r30.xyw = r29.zwx * r14.www + r32.yzx;
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
      r5.w = -1;
      break;
    }
    r6.z = (int)r6.z + 32;
    r18.xyzw = r28.xyzw;
    r20.yzw = r27.yzw;
    r5.w = r9.w;
  }
  if (r5.w == 0) {
    r5.w = numRefProbes + -numOverrideProbes;
    r6.z = (int)r5.w & -32;
    r6.w = (int)r5.w + (int)-r6.z;
    r7.w = numRefProbes & -32;
    r8.w = (int)-r7.w + numRefProbes;
    r10.xy = float2(0,0);
    r11.w = 0;
    r13.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.x = 1;
    r16.xy = float2(0,0);
    r17.xy = float2(0,0);
    r21.xyzw = r18.xyzw;
    r22.yzw = r20.yzw;
    r9.w = r6.z;
    while (true) {
      r10.w = cmp((uint)r9.w >= numRefProbes);
      if (r10.w != 0) break;
      r10.z = (uint)r9.w >> 5;
      r11.xyz = (int3)r10.xyz + (int3)r19.xyz;
      r10.z = visibleProbes.Load(r11.xyzw).x;
      r10.w = cmp((int)r6.z == (int)r9.w);
      bitmask.x = ((~(-1 << r6.w)) << 0) & 0xffffffff;  r11.x = (((uint)0 << 0) & bitmask.x) | ((uint)r10.z & ~bitmask.x);
      r10.z = r10.w ? r11.x : r10.z;
      r10.w = cmp((int)r7.w == (int)r9.w);
      if (r8.w == 0) r11.x = 0; else if (r8.w+0 < 32) {       r11.x = (uint)r10.z << (32-(r8.w + 0)); r11.x = (uint)r11.x >> (32-r8.w);      } else r11.x = (uint)r10.z >> 0;
      r10.z = r10.w ? r11.x : r10.z;
      r10.w = (int)r9.w + numLights;
      r23.xyzw = r21.xyzw;
      r24.xyz = r22.yzw;
      r11.x = r10.z;
      while (true) {
        if (r11.x == 0) break;
        r11.y = firstbitlow((uint)r11.x);
        r11.z = 1 << (int)r11.y;
        r13.w = (int)r11.z & (int)r11.x;
        if (r13.w != 0) {
          r11.x = (int)r11.z ^ (int)r11.x;
          r11.z = (int)r10.w + (int)r11.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r11.z, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r11.z, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v7.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r11.z = r25.y ? r25.x : 0;
          r11.z = r25.z ? r11.z : 0;
          if (r11.z != 0) {
            r11.y = (int)r9.w + (int)r11.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r11.y, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r11.y, l(96), t15.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r11.y, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v7.xyz + -r25.yzw;
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
            r16.w = dot(r29.xyz, r27.xyz);
            r16.w = saturate(r16.w + r29.w);
            r14.w = r16.w * r14.w;
            r16.w = dot(r30.xyz, r27.xyz);
            r16.w = saturate(r16.w + r30.w);
            r14.w = r16.w * r14.w;
            r16.w = dot(r31.xyz, r27.xyz);
            r16.w = saturate(r16.w + r31.w);
            r14.w = r16.w * r14.w;
            r16.w = dot(r32.xyz, r27.xyz);
            r16.w = saturate(r16.w + r32.w);
            r14.w = r16.w * r14.w;
            r16.w = dot(r33.xyz, r27.xyz);
            r16.w = saturate(r16.w + r33.w);
            r13.x = r16.w * r14.w;
            r14.w = (int)r15.z & 1;
            r28.xy = r14.ww ? r13.xy : r13.zx;
            r13.x = r15.z;
            r29.xy = r28.xy;
            r14.w = 1;
            while (true) {
              r16.w = cmp((int)r14.w >= (int)r13.w);
              if (r16.w != 0) break;
              r16.w = (int)r11.z + (int)r14.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r16.w = dot(r30.xyz, r27.xyz);
              r16.w = saturate(r16.w + r30.w);
              r16.w = r29.x * r16.w;
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
              r16.w = r17.w * r16.w;
              r17.w = dot(r35.xyz, r27.xyz);
              r17.w = saturate(r17.w + r35.w);
              r29.x = r17.w * r16.w;
              r19.w = (uint)r13.x >> 2;
              if (1 == 0) r25.w = 0; else if (1+2 < 32) {               r25.w = (uint)r13.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);              } else r25.w = (uint)r13.x >> 2;
              r27.w = (int)r19.w & 2;
              r28.z = max(r29.y, r29.x);
              r16.w = -r16.w * r17.w + 1;
              r16.w = r29.y * r16.w;
              r15.y = r27.w ? r16.w : r28.z;
              r29.xy = r25.ww ? r29.xy : r15.xy;
              r14.w = (int)r14.w + 1;
              r13.x = r19.w;
            }
            r29.y = saturate(r29.y);
            r11.z = r29.y * r15.w;
            r13.x = cmp(0 < r11.z);
            if (r13.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r11.y, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r11.y, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.y, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.y, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.y, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.y, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.y, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r11.y, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r11.y, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r11.y, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r11.y, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r24.z = r29.y * r15.w + r24.z;
              r11.y = r11.z * r26.z;
              r26.z = r34.z;
              r11.z = dot(r12.xyz, r26.xyz);
              r13.x = dot(r27.xyz, r26.xyz);
              r13.x = r13.x + -r34.w;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r1.w);
              r13.x = r13.w ? r13.x : -r13.x;
              r11.z = max(1.00000001e-07, -r11.z);
              r11.z = r13.x / r11.z;
              r11.z = min(131072, abs(r11.z));
              r34.z = r35.z;
              r13.x = dot(r12.xyz, r34.xyz);
              r13.w = dot(r27.xyz, r34.xyz);
              r13.w = r13.w + -r35.w;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r1.w);
              r13.w = r14.w ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r11.z = min(abs(r13.x), r11.z);
              r35.z = r36.z;
              r13.x = dot(r12.xyz, r35.xyz);
              r13.w = dot(r27.xyz, r35.xyz);
              r13.w = r13.w + -r36.w;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r1.w);
              r13.w = r14.w ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r11.z = min(abs(r13.x), r11.z);
              r36.z = r37.z;
              r13.x = dot(r12.xyz, r36.xyz);
              r13.w = dot(r27.xyz, r36.xyz);
              r13.w = r13.w + -r37.w;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r1.w);
              r13.w = r14.w ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r11.z = min(abs(r13.x), r11.z);
              r37.z = r38.x;
              r13.x = dot(r12.xyz, r37.xyz);
              r13.w = dot(r27.xyz, r37.xyz);
              r13.w = r13.w + -r38.y;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r1.w);
              r13.w = r14.w ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r11.z = min(abs(r13.x), r11.z);
              r39.zw = r38.zw;
              r13.x = dot(r12.zxy, r39.xzw);
              r13.w = dot(r27.zxy, r39.xzw);
              r13.w = r13.w + -r39.y;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r1.w);
              r13.w = r14.w ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r11.z = min(abs(r13.x), r11.z);
              r26.x = r31.w;
              r26.yz = r32.zw;
              r15.yzw = r26.xyz + r27.xyz;
              r15.yzw = r12.xyz * r11.zzz + r15.yzw;
              r13.x = dot(r15.yzw, r15.yzw);
              r13.x = sqrt(r13.x);
              r11.z = r11.z / r13.x;
              r11.z = r11.z + r11.z;
              r11.z = sqrt(r11.z);
              r11.z = r0.z * 5 + r11.z;
              r11.z = -0.844799995 + r11.z;
              r25.y = r28.z;
              r25.z = r30.x;
              r34.x = dot(r15.yzw, r25.xyz);
              r26.xy = r28.xw;
              r26.z = r30.w;
              r34.y = dot(r15.yzw, r26.xyz);
              r30.x = r28.y;
              r34.z = dot(r15.yzw, r30.xyz);
              if (9 == 0) r13.x = 0; else if (9+16 < 32) {               r13.x = (uint)r26.w << (32-(9 + 16)); r13.x = (uint)r13.x >> (32-9);              } else r13.x = (uint)r26.w >> 16;
              r34.w = (uint)r13.x;
              r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r11.z).xyz;
              r28.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
              r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
              r11.z = (int)r28.y | (int)r28.x;
              r11.z = (int)r28.z | (int)r11.z;
              r15.yzw = r11.zzz ? float3(1,1,0) : r15.yzw;
              r28.x = dot(r27.xyz, r25.xyz);
              r28.y = dot(r27.xyz, r26.xyz);
              r28.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r2.xyz, r25.xyz);
              r34.y = dot(r2.xyz, r26.xyz);
              r34.z = dot(r2.xyz, r30.xyz);
              r25.xyz = cmp(float3(0,0,0) < r34.xyz);
              r14.z = r25.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r14.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xyz = r34.xyz * r34.xyz;
              r28.xyz = r28.xyz * r11.yyy;
              r16.z = r25.y ? 0 : 0.5;
              r25.xyw = r27.xyz + r16.xyz;
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
              r11.z = (int)r27.y | (int)r27.x;
              r11.z = (int)r27.z | (int)r11.z;
              r26.xyz = r11.zzz ? float3(1,1,0) : r26.xyz;
              r27.xyz = r26.xyz * r25.xyz;
              r11.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r23.xyz = r25.xyz * r26.xyz + r23.xyz;
              r13.x = r11.z * r4.w;
              r15.yzw = r15.yzw * r11.yyy;
              r11.y = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r11.y = r4.w * r11.z + r11.y;
              r11.y = r13.x / r11.y;
              r25.x = r23.w;
              r25.yz = r24.xy;
              r24.xyw = r15.zwy * r11.yyy + r25.yzx;
              r23.w = r24.w;
            }
          }
        }
      }
      r21.xyzw = r23.xyzw;
      r22.yzw = r24.xyz;
      r9.w = (int)r9.w + 32;
    }
    r7.w = cmp(r22.w < 1);
    if (r7.w != 0) {
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
      r7.w = r22.w;
      r8.w = 0;
      while (true) {
        r9.w = cmp((uint)r8.w >= (uint)r5.w);
        if (r9.w != 0) break;
        r10.z = (uint)r8.w >> 5;
        r11.xyz = (int3)r10.xyz + (int3)r19.xyz;
        r9.w = visibleProbes.Load(r11.xyzw).x;
        r10.z = cmp((int)r6.z == (int)r8.w);
        if (r6.w == 0) r10.w = 0; else if (r6.w+0 < 32) {         r10.w = (uint)r9.w << (32-(r6.w + 0)); r10.w = (uint)r10.w >> (32-r6.w);        } else r10.w = (uint)r9.w >> 0;
        r9.w = r10.z ? r10.w : r9.w;
        r10.z = (int)r8.w + numLights;
        r25.xyzw = r23.xyzw;
        r11.xyz = r24.xyz;
        r10.w = r7.w;
        r13.w = r9.w;
        while (true) {
          if (r13.w == 0) break;
          r14.w = firstbitlow((uint)r13.w);
          r15.z = 1 << (int)r14.w;
          r15.w = (int)r13.w & (int)r15.z;
          if (r15.w != 0) {
            r13.w = (int)r13.w ^ (int)r15.z;
            r15.z = (int)r10.z + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r15.z, l(0), t11.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xy, r15.z, l(16), t11.xyxx
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
            r26.xyz = -v7.xyz + r26.xyz;
            r27.z = r26.w;
            r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
            r15.z = r26.y ? r26.x : 0;
            r15.z = r26.z ? r15.z : 0;
            if (r15.z != 0) {
              r14.w = (int)r8.w + (int)r14.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(0), t15.wxyz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r14.w, l(96), t15.xxxy
            r15.z = samp0[]..swiz;
            r15.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(116), t15.zwxy
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r28.xyz = v7.xyz + -r26.yzw;
              r16.w = (int)r27.w & 0x0000ffff;
              if (6 == 0) r17.w = 0; else if (6+25 < 32) {               r17.w = (uint)r27.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);              } else r17.w = (uint)r27.w >> 25;
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
              r19.w = dot(r29.xyz, r28.xyz);
              r19.w = saturate(r19.w + r29.w);
              r20.w = dot(r30.xyz, r28.xyz);
              r20.w = saturate(r20.w + r30.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r31.xyz, r28.xyz);
              r20.w = saturate(r20.w + r31.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r32.xyz, r28.xyz);
              r20.w = saturate(r20.w + r32.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r33.xyz, r28.xyz);
              r20.w = saturate(r20.w + r33.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r34.xyz, r28.xyz);
              r20.w = saturate(r20.w + r34.w);
              r13.x = r20.w * r19.w;
              r19.w = (int)r15.z & 1;
              r29.xy = r19.ww ? r13.xy : r13.zx;
              r13.x = r15.z;
              r30.xy = r29.xy;
              r19.w = 1;
              while (true) {
                r20.w = cmp((int)r19.w >= (int)r17.w);
                if (r20.w != 0) break;
                r20.w = (int)r16.w + (int)r19.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(0), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(16), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r20.w, l(32), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r20.w, l(48), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r20.w, l(64), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r20.w, l(80), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
                r20.w = dot(r31.xyz, r28.xyz);
                r20.w = saturate(r20.w + r31.w);
                r20.w = r30.x * r20.w;
                r24.w = dot(r32.xyz, r28.xyz);
                r24.w = saturate(r24.w + r32.w);
                r20.w = r24.w * r20.w;
                r24.w = dot(r33.xyz, r28.xyz);
                r24.w = saturate(r24.w + r33.w);
                r20.w = r24.w * r20.w;
                r24.w = dot(r34.xyz, r28.xyz);
                r24.w = saturate(r24.w + r34.w);
                r20.w = r24.w * r20.w;
                r24.w = dot(r35.xyz, r28.xyz);
                r24.w = saturate(r24.w + r35.w);
                r20.w = r24.w * r20.w;
                r24.w = dot(r36.xyz, r28.xyz);
                r24.w = saturate(r24.w + r36.w);
                r30.x = r24.w * r20.w;
                r26.w = (uint)r13.x >> 2;
                if (1 == 0) r28.w = 0; else if (1+2 < 32) {                 r28.w = (uint)r13.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);                } else r28.w = (uint)r13.x >> 2;
                r29.z = (int)r26.w & 2;
                r29.w = max(r30.y, r30.x);
                r20.w = -r20.w * r24.w + 1;
                r20.w = r30.y * r20.w;
                r15.y = r29.z ? r20.w : r29.w;
                r30.xy = r28.ww ? r30.xy : r15.xy;
                r19.w = (int)r19.w + 1;
                r13.x = r26.w;
              }
              r13.x = saturate(r30.y + -r10.w);
              r15.y = r13.x * r15.w;
              r15.z = cmp(0 < r15.y);
              if (r15.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(16), t15.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(32), t15.yxwz
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(48), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(64), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(80), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(132), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(148), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(164), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(180), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(196), t15.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r14.w, l(212), t15.xyxx
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
                r25.w = r13.x * r15.w + r25.w;
                r13.x = r15.y * r27.z;
                r27.z = r35.z;
                r14.w = dot(r12.xyz, r27.xyz);
                r15.y = dot(r28.xyz, r27.xyz);
                r15.y = r15.y + -r35.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r1.w);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r14.w = min(131072, abs(r14.w));
                r35.z = r36.z;
                r15.y = dot(r12.xyz, r35.xyz);
                r15.z = dot(r28.xyz, r35.xyz);
                r15.z = r15.z + -r36.w;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r1.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r15.y = max(1.00000001e-07, -r15.y);
                r15.y = r15.z / r15.y;
                r14.w = min(abs(r15.y), r14.w);
                r36.z = r37.z;
                r15.y = dot(r12.xyz, r36.xyz);
                r15.z = dot(r28.xyz, r36.xyz);
                r15.z = r15.z + -r37.w;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r1.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r15.y = max(1.00000001e-07, -r15.y);
                r15.y = r15.z / r15.y;
                r14.w = min(abs(r15.y), r14.w);
                r37.z = r38.z;
                r15.y = dot(r12.xyz, r37.xyz);
                r15.z = dot(r28.xyz, r37.xyz);
                r15.z = r15.z + -r38.w;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r1.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r15.y = max(1.00000001e-07, -r15.y);
                r15.y = r15.z / r15.y;
                r14.w = min(abs(r15.y), r14.w);
                r38.z = r39.x;
                r15.y = dot(r12.xyz, r38.xyz);
                r15.z = dot(r28.xyz, r38.xyz);
                r15.z = r15.z + -r39.y;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r1.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r15.y = max(1.00000001e-07, -r15.y);
                r15.y = r15.z / r15.y;
                r14.w = min(abs(r15.y), r14.w);
                r40.zw = r39.zw;
                r15.y = dot(r12.zxy, r40.xzw);
                r15.z = dot(r28.zxy, r40.xzw);
                r15.z = r15.z + -r40.y;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r1.w);
                r15.z = r15.w ? r15.z : -r15.z;
                r15.y = max(1.00000001e-07, -r15.y);
                r15.y = r15.z / r15.y;
                r14.w = min(abs(r15.y), r14.w);
                r27.x = r32.w;
                r27.yz = r33.zw;
                r15.yzw = r27.xyz + r28.xyz;
                r15.yzw = r12.xyz * r14.www + r15.yzw;
                r16.w = dot(r15.yzw, r15.yzw);
                r16.w = sqrt(r16.w);
                r14.w = r14.w / r16.w;
                r14.w = r14.w + r14.w;
                r14.w = sqrt(r14.w);
                r14.w = r0.z * 5 + r14.w;
                r14.w = -0.844799995 + r14.w;
                r26.y = r29.z;
                r26.z = r31.x;
                r35.x = dot(r15.yzw, r26.xyz);
                r27.xy = r29.xw;
                r27.z = r31.w;
                r35.y = dot(r15.yzw, r27.xyz);
                r31.x = r29.y;
                r35.z = dot(r15.yzw, r31.xyz);
                if (9 == 0) r15.y = 0; else if (9+16 < 32) {                 r15.y = (uint)r27.w << (32-(9 + 16)); r15.y = (uint)r15.y >> (32-9);                } else r15.y = (uint)r27.w >> 16;
                r35.w = (uint)r15.y;
                r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r14.w).xyz;
                r29.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r14.w = (int)r29.y | (int)r29.x;
                r14.w = (int)r29.z | (int)r14.w;
                r15.yzw = r14.www ? float3(1,1,0) : r15.yzw;
                r29.x = dot(r28.xyz, r26.xyz);
                r29.y = dot(r28.xyz, r27.xyz);
                r29.z = dot(r28.xyz, r31.xyz);
                r28.xyz = saturate(r29.xyz * r32.xyz + float3(0.5,0.5,0.5));
                r33.z = r34.x;
                r28.xyz = r28.xyz * r33.xyz + r34.yzw;
                r35.x = dot(r2.xyz, r26.xyz);
                r35.y = dot(r2.xyz, r27.xyz);
                r35.z = dot(r2.xyz, r31.xyz);
                r26.xyz = cmp(float3(0,0,0) < r35.xyz);
                r14.z = r26.x ? 0 : 0.5;
                r27.xyz = r28.xyz + r14.xyz;
                r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r29.xyz = r35.xyz * r35.xyz;
                r29.xyz = r29.xyz * r13.xxx;
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
                r14.z = (int)r28.y | (int)r28.x;
                r14.z = (int)r28.z | (int)r14.z;
                r27.xyz = r14.zzz ? float3(1,1,0) : r27.xyz;
                r28.xyz = r27.xyz * r26.xyz;
                r14.z = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r11.xyz = r26.xyz * r27.xyz + r11.xyz;
                r14.w = r14.z * r4.w;
                r15.yzw = r15.yzw * r13.xxx;
                r13.x = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r13.x = r4.w * r14.z + r13.x;
                r13.x = r14.w / r13.x;
                r25.xyz = r15.yzw * r13.xxx + r25.xyz;
              }
            }
          }
        }
        r23.xyzw = r25.xyzw;
        r24.xyz = r11.xyz;
        r8.w = (int)r8.w + 32;
      }
      r22.xyzw = r23.zxyw;
      r21.xyz = r24.xyz;
      r22.xyzw = r22.yzxw;
    } else {
      r22.x = r21.w;
    }
    r0.z = max(1, r22.w);
    r0.z = rcp(r0.z);
    r22.w = saturate(r22.w);
    r18.xyz = r21.xyz * r0.zzz;
    r20.xyz = r22.xyz * r0.zzz;
    r1.w = cmp(r22.w < 0.99000001);
    if (r1.w != 0) {
      r1.w = 1 + -r22.w;
      r4.w = sunConstants.globalProbeExposure * r1.w;
      r10.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
      r11.x = globalProbeConstants.data[0].w * r10.x;
      r11.yz = globalProbeConstants.data[1].xy * r10.yz;
      r10.xyz = saturate(float3(0.5,0.5,0.5) + r11.xyz);
      r11.xy = globalProbeConstants.data[1].zw * r10.xy;
      r11.z = globalProbeConstants.data[2].x * r10.z;
      r10.xyz = globalProbeConstants.data[2].yzw + r11.xyz;
      r11.xyz = cmp(float3(0,0,0) < r2.xyz);
      r11.xyz = r11.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r11.w = 0;
      r13.xyz = r11.wwx + r10.xyz;
      r13.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r14.xyz = r2.xyz * r2.xyz;
      r14.xyz = r14.xyz * r4.www;
      r15.xyz = r11.wwy + r10.xyz;
      r15.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r15.xyz = r15.xyz * r14.yyy;
      r13.xyz = r13.xyz * r14.xxx + r15.xyz;
      r10.xyz = r11.wwz + r10.xyz;
      r10.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
      r10.xyz = r10.xyz * r14.zzz + r13.xyz;
      r2.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
      r2.xyz = r10.xyz * r2.xyz;
      r2.w = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r18.xyz = r21.xyz * r0.zzz + r2.xyz;
      r12.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r0.w).xyz;
      r0.z = sunConstants.globalProbeExposure * r1.w + -r2.w;
      r0.z = r6.y * r0.z + r2.w;
      r20.xyz = r2.xyz * r0.zzz + r20.xyz;
    }
  } else {
    r20.x = r18.w;
  }
  r2.xyz = r18.xyz * r0.yyy + r5.xyz;
  r5.xyz = r18.xyz * r0.yyy + r8.xyz;
  r0.zw = r6.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r0.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r0.zw, 0).xy;
  r6.xyz = r20.xyz * r0.yyy;
  r4.xyz = r6.xyz * r0.zzz + r4.xyz;
  r0.yzw = r6.xyz * r0.www + r9.xyz;
  r1.w = dot(r3.yzw, r7.xyz);
  r2.w = 1 + -abs(r1.w);
  r2.w = r2.w * r2.w;
  r2.w = r2.w * 0.600000024 + 0.400000006;
  r2.w = min(1, r2.w);
  r3.yzw = saturate(r1.xyz * float3(0.0199999996,0.0199999996,0.0199999996) + float3(0.0399999991,0.0399999991,0.0399999991));
  r6.xyz = specColorTint.xyz * r3.yzw;
  r7.xyz = r2.www * r1.xyz;
  r5.xyz = r7.xyz * r5.xyz;
  r1.xyz = r2.xyz * r1.xyz + r5.xyz;
  r2.xyz = -r3.yzw * specColorTint.xyz + float3(1,1,1);
  r2.xyz = r4.xyz * r2.xyz;
  r0.yzw = r0.yzw * r6.xyz + r2.xyz;
  r0.yzw = r1.xyz + r0.yzw;
  if (useAlphaControls != 0) {
    r1.xyz = cmp(falloffBegin == float3(0,0,0));
    r1.x = r1.y ? r1.x : 0;
    r2.xy = float2(0.0174532924,0.0174532924) * falloffBegin;
    r2.xy = cos(r2.xy);
    r2.yz = r2.xy * r2.xy;
    r1.y = r2.x * r2.x + -r2.z;
    r4.x = 1 / r1.y;
    r4.y = -r2.y * r4.x + 1;
    r1.xy = r1.xx ? float2(0,1) : r4.xy;
    r1.w = abs(r1.w) * abs(r1.w);
    r1.x = saturate(r1.w * r1.x + r1.y);
    r1.x = r1.x * r0.x;
    r2.xy = (int2)v0.xy;
    r2.zw = float2(0,0);
    r1.y = floatZSampler.Load(r2.xyz).x;
    r1.w = cmp(r1.y >= 0.984375);
    r2.x = 1.01587307 * r1.y;
    r1.y = r1.y * 64 + -63;
    r1.y = r1.w ? r1.y : r2.x;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.w = 1 / zFeatherDistance;
    r1.z = r1.z ? 60000 : r1.w;
    r1.y = r1.y + -r3.x;
    r1.y = saturate(r1.y * r1.z);
    r0.x = r1.x * r1.y;
  }
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v3.x, l(4), t4.xxxx
r1.x = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.x, r1.x, l(0), t0.xxxx
r1.x = samp0[]..swiz;
  r1.y = revealMap.Sample(revealSampler_s, v2.xy).x;
  r1.x = saturate(r1.x * 0.998000026 + 0.00100000005);
  r1.z = 1 + -r1.x;
  r1.w = saturate(alphaRevealRamp);
  r1.x = log2(r1.x);
  r1.x = r1.w * r1.x;
  r1.x = exp2(r1.x);
  r2.x = -r1.x;
  r1.x = log2(r1.z);
  r1.x = r1.w * r1.x;
  r2.y = exp2(r1.x);
  r1.xz = saturate(alphaRevealSoftEdge * r2.xy + r1.zz);
  r1.y = r1.y + -r1.x;
  r1.x = r1.z + -r1.x;
  r1.x = saturate(r1.y / r1.x);
  r0.x = r1.x * r0.x;
  r1.x = cmp(r0.x < 0.5);
  r1.w = r1.x ? 0 : r0.x;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(v7.xyz, v7.xyz);
    r2.x = rsqrt(r0.x);
    r2.xyz = v7.xyz * r2.xxx;
    r0.x = sqrt(r0.x);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
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
      r2.w = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.w = cmp(0.00999999978 < abs(v7.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v7.z;
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
    r0.x = -fogConstants.atmospherehazebasedist + r0.x;
    r0.x = saturate(fogConstants.atmospherehazefadedist * r0.x);
    r0.x = r2.y * r0.x;
    r2.x = saturate(r2.x);
    r2.x = r2.x * r2.x + 1;
    r2.x = r2.x * 0.0596831031 + -1;
    r2.x = fogConstants.atmospheresunstrength * r2.x + 1;
    r2.yzw = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r2.xyz = r2.xxx * fogConstants.atmosphereRayleighDensity.xyz + r2.yzw;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r0.yzw * r3.xyz + r2.xyz;
  } else {
    r0.x = fogConstants.heightFalloff * v7.z;
    r2.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r3.x = cmp(abs(r0.x) < 9.99999975e-05);
    r3.y = min(64, r2.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r3.w ? r3.y : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r0.x = r3.x ? 1 : r0.x;
    r0.x = r2.w / r0.x;
    r0.x = r3.x ? r3.z : r0.x;
    r0.x = fogConstants.expMul * r0.x;
    r2.w = dot(v7.xyz, v7.xyz);
    r3.x = sqrt(r2.w);
    r0.x = r0.x * r3.x + fogConstants.expAdd;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.x = 1 + -r0.x;
    r2.w = rsqrt(r2.w);
    r3.xyz = v7.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.x = r3.w * r0.x;
    r3.xyz = r3.xyz + -r0.yzw;
    r2.xyz = r0.xxx * r3.xyz + r0.yzw;
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