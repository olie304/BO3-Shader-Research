// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:21 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float3 backlightScatterColor : packoffset(c13);
  float scriptReplacement : packoffset(c13.w);
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
SamplerState revealSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState colorSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState specColorSampler_s : register(s5);
SamplerState normalSampler_s : register(s6);
SamplerState aoSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> revealMap : register(t0);
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
Texture2D<float4> thicknessMap : register(t29);
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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = colorMap.Sample(colorSampler_s, v2.xy).xyz;
  r0.w = tintMask.Sample(colorSampler_s, v2.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  r1.xy = revealScale.xy * v2.xy;
  r0.w = revealMap.Sample(revealSampler_s, r1.xy).x;
  r1.x = saturate(w1.x * 0.998000026 + 0.00100000005);
  r1.y = 1 + -r1.x;
  r1.z = saturate(alphaRevealRamp);
  r1.x = log2(r1.x);
  r1.x = r1.z * r1.x;
  r1.x = exp2(r1.x);
  r2.x = -r1.x;
  r1.x = log2(r1.y);
  r1.x = r1.z * r1.x;
  r2.y = exp2(r1.x);
  r1.xy = saturate(alphaRevealSoftEdge * r2.xy + r1.yy);
  r0.w = -r1.x + r0.w;
  r1.x = r1.y + -r1.x;
  r0.w = saturate(r0.w / r1.x);
  r1.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  r1.y = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r1.z = glossRange.y + -glossRange.x;
  r1.y = r1.y * r1.z + glossRange.x;
  r1.y = saturate(0.0588235296 * r1.y);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
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
  r2.w = v8.x ? 1 : -1;
  r3.x = dot(v4.xyz, v4.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v4.xyz * r3.xxx;
  r3.xyz = r3.xyz * r2.www;
  r3.w = dot(v5.xyz, v5.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = v5.xyz * r3.www;
  r4.xyz = r4.xyz * r2.www;
  r3.w = dot(v6.xyz, v6.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = v6.xyz * r3.www;
  r5.xyz = r5.xyz * r2.www;
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r2.z + r1.y;
  r1.y = log2(r1.y);
  r1.y = -0.0588235296 * r1.y;
  r5.xyz = r5.xyz * r2.yyy;
  r2.xyw = r4.xyz * r2.xxx + r5.xyz;
  r2.xyw = r3.xyz * r1.www + r2.xyw;
  r1.w = dot(r2.xyw, r2.xyw);
  r1.w = rsqrt(r1.w);
  r2.xyw = r2.xyw * r1.www;
  r1.z = debugGlossOverride.x * r1.z + glossRange.x;
  r1.z = saturate(0.0588235296 * r1.z);
  r1.z = -17 * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.z + r1.z;
  r1.z = log2(r1.z);
  r1.z = -0.0588235296 * r1.z;
  r1.yz = max(float2(0,0), r1.yz);
  r1.w = cmp(0 < debugStreamerControl.w);
  if (r1.w != 0) {
    r1.w = (int)debugStreamerControl.w;
    r2.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r3.x = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
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
  r1.w = debugAlphaOverride.x + -r0.w;
  r3.w = debugAlphaOverride.w * r1.w + r0.w;
  r4.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r4.xyz = debugSpecularOverride.www * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r0.w = r1.z + -r1.y;
  r5.y = debugGlossOverride.w * r0.w + r1.y;
  r0.w = debugOcclusionOverride.x + -r1.x;
  r0.w = debugOcclusionOverride.w * r0.w + r1.x;
  r1.xyz = v8.xxx ? v4.xyz : -v4.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www + -r2.xyw;
  r1.xyz = debugNormalOverride.www * r1.xyz + r2.xyw;
  r2.x = thicknessMap.Sample(colorSampler_s, v2.xy).x;
  r2.x = 1 + -r2.x;
  r2.xyz = backlightScatterColor.xyz * r2.xxx;
  r2.xyz = r2.xyz * r0.xyz;
  r5.zw = (uint2)v0.xy;
  r2.w = cmp(v0.z >= 0.984375);
  r4.w = 1.01587307 * v0.z;
  r6.x = v0.z * 64 + -63;
  r2.w = r2.w ? r6.x : r4.w;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r4.w = dot(-v7.xyz, -v7.xyz);
  r4.w = rsqrt(r4.w);
  r6.xyz = -v7.xyz * r4.www;
  r6.w = cmp(isDepthHack != 0);
  r7.xy = (uint2)r5.wz;
  r7.z = dot(r7.yx, float2(0.0671105608,0.00583714992));
  r7.z = frac(r7.z);
  r7.z = 52.9829178 * r7.z;
  r7.z = frac(r7.z);
  r7.z = r7.z * 6.28318548 + gameTick.w;
  sincos(r7.z, r8.x, r9.x);
  r7.x = dot(r7.xy, float2(0.0671105608,0.00583714992));
  r7.x = frac(r7.x);
  r7.x = 52.9829178 * r7.x;
  r7.x = frac(r7.x);
  r7.x = r7.x * 6.28318548 + gameTick.w;
  sincos(r7.x, r7.x, r10.x);
  r5.x = saturate(dot(r1.xyz, r6.xyz));
  r7.y = dot(-r6.xyz, r1.xyz);
  r7.y = r7.y + r7.y;
  r11.xyz = r1.xyz * -r7.yyy + -r6.xyz;
  r7.y = 17 * r5.y;
  r7.y = exp2(r7.y);
  r7.y = 2 + r7.y;
  r7.y = 2 / r7.y;
  r7.z = sqrt(r7.y);
  r7.w = 1 + -r5.y;
  r8.z = 5 * r7.w;
  r8.w = r7.w * 5 + -2.5;
  r8.w = saturate(0.400000006 * r8.w);
  r8.w = 100 * r8.w;
  r10.yz = -r7.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r9.w = exp2(r10.y);
  r9.w = r9.w * r5.x;
  r9.w = 9.1368103 * r9.w;
  r10.y = r8.z * r7.w;
  r10.y = -r10.y * 2.0159049 + r10.z;
  r10.y = exp2(r10.y);
  r10.y = r10.y * r5.x;
  r10.y = 9.70808983 * r10.y;
  r9.w = max(r10.y, r9.w);
  r9.w = max(1.26815999, r9.w);
  r2.w = 0.0078125 * r2.w;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r12.xy = (uint2)r5.zw >> int2(6,6);
  r12.z = (uint)r2.w << 4;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.x = 1;
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r2.w = 0;
  r5.z = 0;
  while (true) {
    r5.w = cmp((uint)r5.z >= numRefProbes);
    if (r5.w != 0) break;
    r13.z = (uint)r5.z >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r5.w = visibleProbes.Load(r14.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r5.z, l(0), t15.wxyz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r5.z, l(16), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r5.z, l(32), t15.yxwz
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r5.z, l(48), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r5.z, l(64), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r5.z, l(80), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.yz, r5.z, l(96), t15.xxyx
  r10.y = samp0[]..swiz;
  r10.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r5.z, l(116), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r5.z, l(132), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r5.z, l(148), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r5.z, l(164), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r5.z, l(180), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r5.z, l(196), t15.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r5.z, l(212), t15.xyxx
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
    r14.xyz = v7.xyz + -r22.yzw;
    r10.w = dot(r14.xyz, r14.xyz);
    r10.w = sqrt(r10.w);
    r10.w = cmp(probeDebugRadius >= r10.w);
    r12.w = (int)r28.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(0), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(16), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(32), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(48), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(64), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(80), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
    r13.z = dot(r35.xyz, r14.xyz);
    r13.z = saturate(r13.z + r35.w);
    r13.w = dot(r36.xyz, r14.xyz);
    r13.w = saturate(r13.w + r36.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r37.xyz, r14.xyz);
    r13.w = saturate(r13.w + r37.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r38.xyz, r14.xyz);
    r13.w = saturate(r13.w + r38.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r39.xyz, r14.xyz);
    r13.w = saturate(r13.w + r39.w);
    r13.z = r13.z * r13.w;
    r13.w = dot(r40.xyz, r14.xyz);
    r13.w = saturate(r13.w + r40.w);
    r15.x = r13.z * r13.w;
    r13.z = (int)r10.y & 1;
    r13.zw = r13.zz ? r15.xy : r15.zx;
    r35.xy = r28.zw;
    r35.z = r29.z;
    r15.x = dot(r11.xyz, r35.xyz);
    r15.w = dot(r14.xyz, r35.xyz);
    r15.w = r15.w + -r29.w;
    r16.w = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r8.w);
    r15.w = r16.w ? r15.w : -r15.w;
    r15.x = max(1.00000001e-07, -r15.x);
    r15.x = r15.w / r15.x;
    r15.x = min(131072, abs(r15.x));
    r29.z = r30.z;
    r15.w = dot(r11.xyz, r29.xyz);
    r16.w = dot(r14.xyz, r29.xyz);
    r16.w = r16.w + -r30.w;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r8.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r15.w = max(1.00000001e-07, -r15.w);
    r15.w = r16.w / r15.w;
    r15.x = min(r15.x, abs(r15.w));
    r30.z = r31.z;
    r15.w = dot(r11.xyz, r30.xyz);
    r16.w = dot(r14.xyz, r30.xyz);
    r16.w = r16.w + -r31.w;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r8.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r15.w = max(1.00000001e-07, -r15.w);
    r15.w = r16.w / r15.w;
    r15.x = min(r15.x, abs(r15.w));
    r31.z = r32.z;
    r15.w = dot(r11.xyz, r31.xyz);
    r16.w = dot(r14.xyz, r31.xyz);
    r16.w = r16.w + -r32.w;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r8.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r15.w = max(1.00000001e-07, -r15.w);
    r15.w = r16.w / r15.w;
    r15.x = min(r15.x, abs(r15.w));
    r32.z = r33.x;
    r15.w = dot(r11.xyz, r32.xyz);
    r16.w = dot(r14.xyz, r32.xyz);
    r16.w = r16.w + -r33.y;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r8.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r15.w = max(1.00000001e-07, -r15.w);
    r15.w = r16.w / r15.w;
    r15.x = min(r15.x, abs(r15.w));
    r34.zw = r33.zw;
    r15.w = dot(r11.zxy, r34.xzw);
    r16.w = dot(r14.zxy, r34.xzw);
    r16.w = r16.w + -r34.y;
    r17.w = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r8.w);
    r16.w = r17.w ? r16.w : -r16.w;
    r15.w = max(1.00000001e-07, -r15.w);
    r15.w = r16.w / r15.w;
    r15.x = min(r15.x, abs(r15.w));
    r29.x = r25.w;
    r29.yz = r26.zw;
    r29.xyz = r29.xyz + r14.xyz;
    r29.xyz = r11.xyz * r15.xxx + r29.xyz;
    r15.w = dot(r29.xyz, r29.xyz);
    r15.w = sqrt(r15.w);
    r15.x = r15.x / r15.w;
    r15.x = r15.x + r15.x;
    r15.x = sqrt(r15.x);
    r15.x = r7.w * 5 + r15.x;
    r15.x = -0.844799995 + r15.x;
    r22.y = r23.z;
    r22.z = r24.x;
    r30.x = dot(r29.xyz, r22.xyz);
    r31.xy = r23.xw;
    r31.z = r24.w;
    r30.y = dot(r29.xyz, r31.xyz);
    r24.x = r23.y;
    r30.z = dot(r29.xyz, r24.xyz);
    if (6 == 0) r19.z = 0; else if (6+25 < 32) {     r19.z = (uint)r28.y << (32-(6 + 25)); r19.z = (uint)r19.z >> (32-6);    } else r19.z = (uint)r28.y >> 25;
    if (9 == 0) r19.w = 0; else if (9+16 < 32) {     r19.w = (uint)r28.y << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);    } else r19.w = (uint)r28.y >> 16;
    r30.w = (uint)r19.w;
    r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r15.x).xyz;
    r28.yzw = (int3)r23.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r15.x = (int)r28.z | (int)r28.y;
    r15.x = (int)r28.w | (int)r15.x;
    r23.xyz = r15.xxx ? float3(1,1,0) : r23.xyz;
    r29.x = dot(r14.xyz, r22.xyz);
    r29.y = dot(r14.xyz, r31.xyz);
    r29.z = dot(r14.xyz, r24.xyz);
    r25.xyz = saturate(r29.xyz * r25.xyz + float3(0.5,0.5,0.5));
    r26.z = r27.x;
    r25.xyz = r25.xyz * r26.xyz + r27.yzw;
    r30.x = dot(r1.xyz, r22.xyz);
    r30.y = dot(r1.xyz, r31.xyz);
    r30.z = dot(r1.xyz, r24.xyz);
    r22.xyz = cmp(float3(0,0,0) < r30.xyz);
    r16.z = r22.x ? 0 : 0.5;
    r24.xyz = r25.xyz + r16.xyz;
    r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r17.z = r22.y ? 0 : 0.5;
    r22.xyw = r25.xyz + r17.xyz;
    r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
    r18.z = r22.z ? 0 : 0.5;
    r25.xyz = r25.xyz + r18.xyz;
    r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r26.xyz = r30.xyz * r30.xyz;
    r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
    r28.yzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r15.x = (int)r28.z | (int)r28.y;
    r15.x = (int)r28.w | (int)r15.x;
    r27.xyz = r15.xxx ? float3(1,1,0) : r27.xyz;
    r29.xyzw = r20.xyzw;
    r28.yzw = r21.yzw;
    r15.x = r2.w;
    r15.w = r5.w;
    while (true) {
      if (r15.w == 0) break;
      r16.z = firstbitlow((uint)r15.w);
      r16.z = 1 << (int)r16.z;
      r16.w = (int)r15.w & (int)r16.z;
      if (r16.w != 0) {
        r16.z = ~(int)r16.z;
        r15.w = (int)r15.w & (int)r16.z;
        if (r10.w != 0) {
          r16.z = r10.y;
          r30.xy = r13.zw;
          r16.w = 1;
          while (true) {
            r17.z = cmp((int)r16.w >= (int)r19.z);
            if (r17.z != 0) break;
            r17.z = (int)r12.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.z, l(0), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(16), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(32), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(48), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(64), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r17.z, l(80), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
            r17.z = dot(r31.xyz, r14.xyz);
            r17.z = saturate(r17.z + r31.w);
            r17.z = r30.x * r17.z;
            r17.w = dot(r32.xyz, r14.xyz);
            r17.w = saturate(r17.w + r32.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r33.xyz, r14.xyz);
            r17.w = saturate(r17.w + r33.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r34.xyz, r14.xyz);
            r17.w = saturate(r17.w + r34.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r35.xyz, r14.xyz);
            r17.w = saturate(r17.w + r35.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r36.xyz, r14.xyz);
            r17.w = saturate(r17.w + r36.w);
            r30.x = r17.z * r17.w;
            r18.z = (uint)r16.z >> 2;
            if (1 == 0) r18.w = 0; else if (1+2 < 32) {             r18.w = (uint)r16.z << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);            } else r18.w = (uint)r16.z >> 2;
            r19.w = (int)r18.z & 2;
            r22.z = max(r30.y, r30.x);
            r17.z = -r17.z * r17.w + 1;
            r17.z = r30.y * r17.z;
            r19.y = r19.w ? r17.z : r22.z;
            r30.xy = r18.ww ? r30.xy : r19.xy;
            r16.w = (int)r16.w + 1;
            r16.z = r18.z;
          }
          r30.y = saturate(r30.y);
          r16.z = r30.y * r10.z;
          r16.w = cmp(0 < r16.z);
          if (r16.w != 0) {
            r31.z = r30.y * r10.z + r28.w;
            r16.z = r16.z * r28.x;
            r30.xzw = r26.xyz * r16.zzz;
            r32.xyz = r30.zzz * r22.xyw;
            r32.xyz = r24.xyz * r30.xxx + r32.xyz;
            r30.xzw = r25.xyz * r30.www + r32.xyz;
            r32.xyz = r30.xzw * r27.xyz;
            r16.w = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r32.xyz = r30.xzw * r27.xyz + r29.xyz;
            r17.z = r16.w * r9.w;
            r30.xzw = r23.xyz * r16.zzz;
            r16.z = dot(r30.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r16.z = r9.w * r16.w + r16.z;
            r16.z = r17.z / r16.z;
            r33.x = r29.w;
            r33.yz = r28.yz;
            r31.xyw = r30.zwx * r16.zzz + r33.yzx;
            r32.w = r31.w;
          } else {
            r32.xyzw = r29.xyzw;
            r31.xyz = r28.yzw;
          }
          r15.x = -1;
          r29.xyzw = r32.xyzw;
          r28.yzw = r31.xyz;
          break;
        }
      }
    }
    if (r15.x != 0) {
      r20.xyzw = r29.xyzw;
      r21.yzw = r28.yzw;
      r2.w = -1;
      break;
    }
    r5.z = (int)r5.z + 32;
    r20.xyzw = r29.xyzw;
    r21.yzw = r28.yzw;
    r2.w = r15.x;
  }
  if (r2.w == 0) {
    r2.w = numRefProbes + -numOverrideProbes;
    r5.z = (int)r2.w & -32;
    r5.w = (int)r2.w + (int)-r5.z;
    r10.y = numRefProbes & -32;
    r10.z = (int)-r10.y + numRefProbes;
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.xyzw = r20.xyzw;
    r23.yzw = r21.yzw;
    r10.w = r5.z;
    while (true) {
      r12.w = cmp((uint)r10.w >= numRefProbes);
      if (r12.w != 0) break;
      r13.z = (uint)r10.w >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r12.w = visibleProbes.Load(r14.xyzw).x;
      r13.z = cmp((int)r5.z == (int)r10.w);
      bitmask.w = ((~(-1 << r5.w)) << 0) & 0xffffffff;  r13.w = (((uint)0 << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
      r12.w = r13.z ? r13.w : r12.w;
      r13.z = cmp((int)r10.y == (int)r10.w);
      if (r10.z == 0) r13.w = 0; else if (r10.z+0 < 32) {       r13.w = (uint)r12.w << (32-(r10.z + 0)); r13.w = (uint)r13.w >> (32-r10.z);      } else r13.w = (uint)r12.w >> 0;
      r12.w = r13.z ? r13.w : r12.w;
      r13.z = (int)r10.w + numLights;
      r24.xyzw = r22.xyzw;
      r25.xyz = r23.yzw;
      r13.w = r12.w;
      while (true) {
        if (r13.w == 0) break;
        r14.x = firstbitlow((uint)r13.w);
        r14.y = 1 << (int)r14.x;
        r14.z = (int)r13.w & (int)r14.y;
        if (r14.z != 0) {
          r13.w = (int)r13.w ^ (int)r14.y;
          r14.y = (int)r13.z + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r14.y, l(0), t11.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xy, r14.y, l(16), t11.xyxx
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
          r26.xyz = -v7.xyz + r26.xyz;
          r27.z = r26.w;
          r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
          r14.y = r26.y ? r26.x : 0;
          r14.y = r26.z ? r14.y : 0;
          if (r14.y != 0) {
            r14.x = (int)r10.w + (int)r14.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r14.x, l(0), t15.wxyz
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.yz, r14.x, l(96), t15.xxyx
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.x, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r28.xyz = v7.xyz + -r26.yzw;
            r15.w = (int)r27.w & 0x0000ffff;
            if (6 == 0) r16.w = 0; else if (6+25 < 32) {             r16.w = (uint)r27.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);            } else r16.w = (uint)r27.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r17.z = dot(r29.xyz, r28.xyz);
            r17.z = saturate(r17.z + r29.w);
            r17.w = dot(r30.xyz, r28.xyz);
            r17.w = saturate(r17.w + r30.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r31.xyz, r28.xyz);
            r17.w = saturate(r17.w + r31.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r32.xyz, r28.xyz);
            r17.w = saturate(r17.w + r32.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r33.xyz, r28.xyz);
            r17.w = saturate(r17.w + r33.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r34.xyz, r28.xyz);
            r17.w = saturate(r17.w + r34.w);
            r15.x = r17.z * r17.w;
            r17.z = (int)r14.y & 1;
            r17.zw = r17.zz ? r15.xy : r15.zx;
            r15.x = r14.y;
            r29.xy = r17.zw;
            r18.w = 1;
            while (true) {
              r19.w = cmp((int)r18.w >= (int)r16.w);
              if (r19.w != 0) break;
              r19.w = (int)r15.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r19.w = dot(r30.xyz, r28.xyz);
              r19.w = saturate(r19.w + r30.w);
              r19.w = r29.x * r19.w;
              r26.w = dot(r31.xyz, r28.xyz);
              r26.w = saturate(r26.w + r31.w);
              r19.w = r26.w * r19.w;
              r26.w = dot(r32.xyz, r28.xyz);
              r26.w = saturate(r26.w + r32.w);
              r19.w = r26.w * r19.w;
              r26.w = dot(r33.xyz, r28.xyz);
              r26.w = saturate(r26.w + r33.w);
              r19.w = r26.w * r19.w;
              r26.w = dot(r34.xyz, r28.xyz);
              r26.w = saturate(r26.w + r34.w);
              r19.w = r26.w * r19.w;
              r26.w = dot(r35.xyz, r28.xyz);
              r26.w = saturate(r26.w + r35.w);
              r29.x = r26.w * r19.w;
              r28.w = (uint)r15.x >> 2;
              if (1 == 0) r29.z = 0; else if (1+2 < 32) {               r29.z = (uint)r15.x << (32-(1 + 2)); r29.z = (uint)r29.z >> (32-1);              } else r29.z = (uint)r15.x >> 2;
              r29.w = (int)r28.w & 2;
              r30.x = max(r29.y, r29.x);
              r19.w = -r19.w * r26.w + 1;
              r19.w = r29.y * r19.w;
              r17.y = r29.w ? r19.w : r30.x;
              r29.xy = r29.zz ? r29.xy : r17.xy;
              r18.w = (int)r18.w + 1;
              r15.x = r28.w;
            }
            r29.y = saturate(r29.y);
            r14.y = r29.y * r14.z;
            r15.x = cmp(0 < r14.y);
            if (r15.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.x, l(16), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.x, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.x, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.x, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.x, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.x, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.x, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.x, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.x, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r14.x, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r14.x, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r25.z = r29.y * r14.z + r25.z;
              r14.x = r14.y * r27.z;
              r27.z = r35.z;
              r14.y = dot(r11.xyz, r27.xyz);
              r14.z = dot(r28.xyz, r27.xyz);
              r14.z = r14.z + -r35.w;
              r15.x = cmp(r14.z >= 0);
              r14.z = max(abs(r14.z), r8.w);
              r14.z = r15.x ? r14.z : -r14.z;
              r14.y = max(1.00000001e-07, -r14.y);
              r14.y = r14.z / r14.y;
              r14.y = min(131072, abs(r14.y));
              r35.z = r36.z;
              r14.z = dot(r11.xyz, r35.xyz);
              r15.x = dot(r28.xyz, r35.xyz);
              r15.x = r15.x + -r36.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r8.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r36.z = r37.z;
              r14.z = dot(r11.xyz, r36.xyz);
              r15.x = dot(r28.xyz, r36.xyz);
              r15.x = r15.x + -r37.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r8.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r37.z = r38.z;
              r14.z = dot(r11.xyz, r37.xyz);
              r15.x = dot(r28.xyz, r37.xyz);
              r15.x = r15.x + -r38.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r8.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r38.z = r39.x;
              r14.z = dot(r11.xyz, r38.xyz);
              r15.x = dot(r28.xyz, r38.xyz);
              r15.x = r15.x + -r39.y;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r8.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r40.zw = r39.zw;
              r14.z = dot(r11.zxy, r40.xzw);
              r15.x = dot(r28.zxy, r40.xzw);
              r15.x = r15.x + -r40.y;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r8.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r27.x = r32.w;
              r27.yz = r33.zw;
              r17.yzw = r27.xyz + r28.xyz;
              r17.yzw = r11.xyz * r14.yyy + r17.yzw;
              r14.z = dot(r17.yzw, r17.yzw);
              r14.z = sqrt(r14.z);
              r14.y = r14.y / r14.z;
              r14.y = r14.y + r14.y;
              r14.y = sqrt(r14.y);
              r14.y = r7.w * 5 + r14.y;
              r14.y = -0.844799995 + r14.y;
              r26.y = r30.z;
              r26.z = r31.x;
              r35.x = dot(r17.yzw, r26.xyz);
              r27.xy = r30.xw;
              r27.z = r31.w;
              r35.y = dot(r17.yzw, r27.xyz);
              r31.x = r30.y;
              r35.z = dot(r17.yzw, r31.xyz);
              if (9 == 0) r14.z = 0; else if (9+16 < 32) {               r14.z = (uint)r27.w << (32-(9 + 16)); r14.z = (uint)r14.z >> (32-9);              } else r14.z = (uint)r27.w >> 16;
              r35.w = (uint)r14.z;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r14.y).xyz;
              r29.xzw = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
              r29.xzw = cmp((int3)r29.xzw == int3(2139095040,2139095040,2139095040));
              r14.y = (int)r29.z | (int)r29.x;
              r14.y = (int)r29.w | (int)r14.y;
              r17.yzw = r14.yyy ? float3(1,1,0) : r17.yzw;
              r30.x = dot(r28.xyz, r26.xyz);
              r30.y = dot(r28.xyz, r27.xyz);
              r30.z = dot(r28.xyz, r31.xyz);
              r28.xyz = saturate(r30.xyz * r32.xyz + float3(0.5,0.5,0.5));
              r33.z = r34.x;
              r28.xyz = r28.xyz * r33.xyz + r34.yzw;
              r35.x = dot(r1.xyz, r26.xyz);
              r35.y = dot(r1.xyz, r27.xyz);
              r35.z = dot(r1.xyz, r31.xyz);
              r26.xyz = cmp(float3(0,0,0) < r35.xyz);
              r16.z = r26.x ? 0 : 0.5;
              r27.xyz = r28.xyz + r16.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r29.xzw = r35.xyz * r35.xyz;
              r29.xzw = r29.xzw * r14.xxx;
              r18.z = r26.y ? 0 : 0.5;
              r26.xyw = r28.xyz + r18.xyz;
              r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
              r26.xyw = r26.xyw * r29.zzz;
              r26.xyw = r27.xyz * r29.xxx + r26.xyw;
              r19.z = r26.z ? 0 : 0.5;
              r27.xyz = r28.xyz + r19.xyz;
              r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r26.xyz = r27.xyz * r29.www + r26.xyw;
              r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
              r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
              r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
              r14.y = (int)r28.y | (int)r28.x;
              r14.y = (int)r28.z | (int)r14.y;
              r27.xyz = r14.yyy ? float3(1,1,0) : r27.xyz;
              r28.xyz = r27.xyz * r26.xyz;
              r14.y = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.xyz = r26.xyz * r27.xyz + r24.xyz;
              r14.z = r14.y * r9.w;
              r17.yzw = r17.yzw * r14.xxx;
              r14.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r14.x = r9.w * r14.y + r14.x;
              r14.x = r14.z / r14.x;
              r26.x = r24.w;
              r26.yz = r25.xy;
              r25.xyw = r17.zwy * r14.xxx + r26.yzx;
              r24.w = r25.w;
            }
          }
        }
      }
      r22.xyzw = r24.xyzw;
      r23.yzw = r25.xyz;
      r10.w = (int)r10.w + 32;
    }
    r10.y = cmp(r23.w < 1);
    if (r10.y != 0) {
      r13.xy = float2(0,0);
      r14.w = 0;
      r15.yz = float2(0,1);
      r16.xy = float2(0,0);
      r17.x = 1;
      r18.xy = float2(0,0);
      r19.xy = float2(0,0);
      r24.x = r22.w;
      r24.yzw = r23.yzw;
      r10.yzw = r22.xyz;
      r12.w = r23.w;
      r13.w = 0;
      while (true) {
        r15.w = cmp((uint)r13.w >= (uint)r2.w);
        if (r15.w != 0) break;
        r13.z = (uint)r13.w >> 5;
        r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
        r13.z = visibleProbes.Load(r14.xyzw).x;
        r14.x = cmp((int)r5.z == (int)r13.w);
        if (r5.w == 0) r14.y = 0; else if (r5.w+0 < 32) {         r14.y = (uint)r13.z << (32-(r5.w + 0)); r14.y = (uint)r14.y >> (32-r5.w);        } else r14.y = (uint)r13.z >> 0;
        r13.z = r14.x ? r14.y : r13.z;
        r14.x = (int)r13.w + numLights;
        r25.xyzw = r24.xyzw;
        r26.xyz = r10.yzw;
        r14.y = r12.w;
        r14.z = r13.z;
        while (true) {
          if (r14.z == 0) break;
          r15.w = firstbitlow((uint)r14.z);
          r16.w = 1 << (int)r15.w;
          r17.z = (int)r14.z & (int)r16.w;
          if (r17.z != 0) {
            r14.z = (int)r14.z ^ (int)r16.w;
            r16.w = (int)r14.x + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(0), t11.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xy, r16.w, l(16), t11.xyxx
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
            r27.xyz = -v7.xyz + r27.xyz;
            r28.z = r27.w;
            r27.xyz = cmp(abs(r27.xyz) < r28.zxy);
            r16.w = r27.y ? r27.x : 0;
            r16.w = r27.z ? r16.w : 0;
            if (r16.w != 0) {
              r15.w = (int)r13.w + (int)r15.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(0), t15.wxyz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r15.w, l(96), t15.xxxy
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(116), t15.zwxy
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
              r29.xyz = v7.xyz + -r27.yzw;
              r16.w = (int)r28.w & 0x0000ffff;
              if (6 == 0) r18.w = 0; else if (6+25 < 32) {               r18.w = (uint)r28.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);              } else r18.w = (uint)r28.w >> 25;
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
              r19.w = dot(r30.xyz, r29.xyz);
              r19.w = saturate(r19.w + r30.w);
              r21.w = dot(r31.xyz, r29.xyz);
              r21.w = saturate(r21.w + r31.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r32.xyz, r29.xyz);
              r21.w = saturate(r21.w + r32.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r33.xyz, r29.xyz);
              r21.w = saturate(r21.w + r33.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r34.xyz, r29.xyz);
              r21.w = saturate(r21.w + r34.w);
              r19.w = r21.w * r19.w;
              r21.w = dot(r35.xyz, r29.xyz);
              r21.w = saturate(r21.w + r35.w);
              r15.x = r21.w * r19.w;
              r19.w = (int)r17.z & 1;
              r30.xy = r19.ww ? r15.xy : r15.zx;
              r15.x = r17.z;
              r31.xy = r30.xy;
              r19.w = 1;
              while (true) {
                r21.w = cmp((int)r19.w >= (int)r18.w);
                if (r21.w != 0) break;
                r21.w = (int)r16.w + (int)r19.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r21.w, l(0), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r21.w, l(16), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r21.w, l(32), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r21.w, l(48), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r21.w, l(64), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r21.w, l(80), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r21.w = dot(r32.xyz, r29.xyz);
                r21.w = saturate(r21.w + r32.w);
                r21.w = r31.x * r21.w;
                r26.w = dot(r33.xyz, r29.xyz);
                r26.w = saturate(r26.w + r33.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r34.xyz, r29.xyz);
                r26.w = saturate(r26.w + r34.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r35.xyz, r29.xyz);
                r26.w = saturate(r26.w + r35.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r36.xyz, r29.xyz);
                r26.w = saturate(r26.w + r36.w);
                r21.w = r26.w * r21.w;
                r26.w = dot(r37.xyz, r29.xyz);
                r26.w = saturate(r26.w + r37.w);
                r31.x = r26.w * r21.w;
                r27.w = (uint)r15.x >> 2;
                if (1 == 0) r29.w = 0; else if (1+2 < 32) {                 r29.w = (uint)r15.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);                } else r29.w = (uint)r15.x >> 2;
                r30.z = (int)r27.w & 2;
                r30.w = max(r31.y, r31.x);
                r21.w = -r21.w * r26.w + 1;
                r21.w = r31.y * r21.w;
                r17.y = r30.z ? r21.w : r30.w;
                r31.xy = r29.ww ? r31.xy : r17.xy;
                r19.w = (int)r19.w + 1;
                r15.x = r27.w;
              }
              r15.x = saturate(r31.y + -r14.y);
              r16.w = r15.x * r17.w;
              r17.y = cmp(0 < r16.w);
              if (r17.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(16), t15.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(32), t15.yxwz
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(48), t15.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(64), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(80), t15.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(132), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(148), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r15.w, l(164), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r15.w, l(180), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r15.w, l(196), t15.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r15.w, l(212), t15.xyxx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
                r25.w = r15.x * r17.w + r25.w;
                r15.x = r16.w * r28.z;
                r28.z = r36.z;
                r15.w = dot(r11.xyz, r28.xyz);
                r16.w = dot(r29.xyz, r28.xyz);
                r16.w = r16.w + -r36.w;
                r17.y = cmp(r16.w >= 0);
                r16.w = max(abs(r16.w), r8.w);
                r16.w = r17.y ? r16.w : -r16.w;
                r15.w = max(1.00000001e-07, -r15.w);
                r15.w = r16.w / r15.w;
                r15.w = min(131072, abs(r15.w));
                r36.z = r37.z;
                r16.w = dot(r11.xyz, r36.xyz);
                r17.y = dot(r29.xyz, r36.xyz);
                r17.y = r17.y + -r37.w;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r8.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r37.z = r38.z;
                r16.w = dot(r11.xyz, r37.xyz);
                r17.y = dot(r29.xyz, r37.xyz);
                r17.y = r17.y + -r38.w;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r8.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r38.z = r39.z;
                r16.w = dot(r11.xyz, r38.xyz);
                r17.y = dot(r29.xyz, r38.xyz);
                r17.y = r17.y + -r39.w;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r8.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r39.z = r40.x;
                r16.w = dot(r11.xyz, r39.xyz);
                r17.y = dot(r29.xyz, r39.xyz);
                r17.y = r17.y + -r40.y;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r8.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r41.zw = r40.zw;
                r16.w = dot(r11.zxy, r41.xzw);
                r17.y = dot(r29.zxy, r41.xzw);
                r17.y = r17.y + -r41.y;
                r17.z = cmp(r17.y >= 0);
                r17.y = max(abs(r17.y), r8.w);
                r17.y = r17.z ? r17.y : -r17.y;
                r16.w = max(1.00000001e-07, -r16.w);
                r16.w = r17.y / r16.w;
                r15.w = min(abs(r16.w), r15.w);
                r28.x = r33.w;
                r28.yz = r34.zw;
                r17.yzw = r28.xyz + r29.xyz;
                r17.yzw = r11.xyz * r15.www + r17.yzw;
                r16.w = dot(r17.yzw, r17.yzw);
                r16.w = sqrt(r16.w);
                r15.w = r15.w / r16.w;
                r15.w = r15.w + r15.w;
                r15.w = sqrt(r15.w);
                r15.w = r7.w * 5 + r15.w;
                r15.w = -0.844799995 + r15.w;
                r27.y = r30.z;
                r27.z = r32.x;
                r36.x = dot(r17.yzw, r27.xyz);
                r28.xy = r30.xw;
                r28.z = r32.w;
                r36.y = dot(r17.yzw, r28.xyz);
                r32.x = r30.y;
                r36.z = dot(r17.yzw, r32.xyz);
                if (9 == 0) r16.w = 0; else if (9+16 < 32) {                 r16.w = (uint)r28.w << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);                } else r16.w = (uint)r28.w >> 16;
                r36.w = (uint)r16.w;
                r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r15.w).xyz;
                r30.xyz = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
                r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
                r15.w = (int)r30.y | (int)r30.x;
                r15.w = (int)r30.z | (int)r15.w;
                r17.yzw = r15.www ? float3(1,1,0) : r17.yzw;
                r30.x = dot(r29.xyz, r27.xyz);
                r30.y = dot(r29.xyz, r28.xyz);
                r30.z = dot(r29.xyz, r32.xyz);
                r29.xyz = saturate(r30.xyz * r33.xyz + float3(0.5,0.5,0.5));
                r34.z = r35.x;
                r29.xyz = r29.xyz * r34.xyz + r35.yzw;
                r36.x = dot(r1.xyz, r27.xyz);
                r36.y = dot(r1.xyz, r28.xyz);
                r36.z = dot(r1.xyz, r32.xyz);
                r27.xyz = cmp(float3(0,0,0) < r36.xyz);
                r16.z = r27.x ? 0 : 0.5;
                r28.xyz = r29.xyz + r16.xyz;
                r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r30.xyz = r36.xyz * r36.xyz;
                r30.xyz = r30.xyz * r15.xxx;
                r18.z = r27.y ? 0 : 0.5;
                r27.xyw = r29.xyz + r18.xyz;
                r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
                r27.xyw = r27.xyw * r30.yyy;
                r27.xyw = r28.xyz * r30.xxx + r27.xyw;
                r19.z = r27.z ? 0 : 0.5;
                r28.xyz = r29.xyz + r19.xyz;
                r28.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r27.xyz = r28.xyz * r30.zzz + r27.xyw;
                r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
                r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r15.w = (int)r29.y | (int)r29.x;
                r15.w = (int)r29.z | (int)r15.w;
                r28.xyz = r15.www ? float3(1,1,0) : r28.xyz;
                r29.xyz = r28.xyz * r27.xyz;
                r15.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r26.xyz = r27.xyz * r28.xyz + r26.xyz;
                r16.z = r15.w * r9.w;
                r17.yzw = r17.yzw * r15.xxx;
                r15.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r15.x = r9.w * r15.w + r15.x;
                r15.x = r16.z / r15.x;
                r25.xyz = r17.yzw * r15.xxx + r25.xyz;
              }
            }
          }
        }
        r24.xyzw = r25.xyzw;
        r10.yzw = r26.xyz;
        r13.w = (int)r13.w + 32;
      }
      r23.xyzw = r24.zxyw;
      r22.xyz = r10.yzw;
      r23.xyzw = r23.yzxw;
    } else {
      r23.x = r22.w;
    }
    r2.w = max(1, r23.w);
    r2.w = rcp(r2.w);
    r23.w = saturate(r23.w);
    r20.xyz = r22.xyz * r2.www;
    r21.xyz = r23.xyz * r2.www;
    r5.z = cmp(r23.w < 0.99000001);
    if (r5.z != 0) {
      r5.z = 1 + -r23.w;
      r5.w = sunConstants.globalProbeExposure * r5.z;
      r10.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
      r13.x = globalProbeConstants.data[0].w * r10.y;
      r13.yz = globalProbeConstants.data[1].xy * r10.zw;
      r10.yzw = saturate(float3(0.5,0.5,0.5) + r13.xyz);
      r13.xy = globalProbeConstants.data[1].zw * r10.yz;
      r13.z = globalProbeConstants.data[2].x * r10.w;
      r10.yzw = globalProbeConstants.data[2].yzw + r13.xyz;
      r13.xyz = cmp(float3(0,0,0) < r1.xyz);
      r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r13.w = 0;
      r14.xyz = r13.wwx + r10.yzw;
      r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r15.xyz = r1.xyz * r1.xyz;
      r15.xyz = r15.xyz * r5.www;
      r16.xyz = r13.wwy + r10.yzw;
      r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r16.xyz = r16.xyz * r15.yyy;
      r14.xyz = r14.xyz * r15.xxx + r16.xyz;
      r10.yzw = r13.wwz + r10.yzw;
      r10.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
      r10.yzw = r10.yzw * r15.zzz + r14.xyz;
      r1.w = 0;
      r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
      r10.yzw = r13.xyz * r10.yzw;
      r1.w = dot(r10.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r20.xyz = r22.xyz * r2.www + r10.yzw;
      r11.w = 0;
      r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r8.z).xyz;
      r2.w = sunConstants.globalProbeExposure * r5.z + -r1.w;
      r1.w = r5.y * r2.w + r1.w;
      r21.xyz = r10.yzw * r1.www + r21.xyz;
    }
  } else {
    r21.x = r20.w;
  }
  r1.w = r5.x + r0.w;
  r1.w = log2(abs(r1.w));
  r1.w = r7.z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w + r0.w;
  r1.w = saturate(-1 + r1.w);
  r13.xyz = r20.yzx * r0.www;
  r5.yz = r5.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.yz, 0).xy;
  r10.yzw = r21.xyz * r1.www;
  r14.xyz = r10.yzw * r5.yyy;
  r15.xyz = r10.yzw * r5.zzz;
  r0.w = sqrt(r7.z);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r1.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r2.w = r5.x * r0.w + r1.w;
  r0.w = r2.w * r0.w;
  r1.w = r2.w * r1.w;
  r2.w = dot(r1.xyz, sunConstants.wldDir.xyz);
  r5.y = cmp(0 >= abs(r2.w));
  if (r5.y != 0) {
    r5.z = 0;
  }
  if (r5.y == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r10.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r5.y = -sunConstants.splitDepthOffset + r10.w;
    r5.y = -r5.y * 6.10351563e-05 + 1;
    r5.w = saturate(r5.y);
    r5.w = cmp(r5.y == r5.w);
    if (r5.w != 0) {
      r5.w = 0;
      r7.w = 0;
      while (true) {
        r8.z = cmp(r5.w >= 3);
        if (r8.z != 0) break;
        r8.z = (uint)r5.w;
        r16.xy = -sunConstants.splitPinTransform[r8.z].xy + r10.yz;
        r8.w = max(abs(r16.x), abs(r16.y));
        r7.w = sunConstants.splitPinTransform[r8.z].z * r8.w;
        r8.z = cmp(r7.w < 1);
        if (r8.z != 0) {
          break;
        }
        r5.w = 1 + r5.w;
        r7.w = 0;
      }
    } else {
      r5.w = 3;
      r7.w = 0;
    }
    r8.z = cmp(r5.w >= 3);
    if (r8.z != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r10.yzy * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r17.xy = floor(r17.xy);
      r8.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r8.w = r8.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r8.w = (uint)r8.w;
      r8.w = (int)r8.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r8.w, l(0), t23.xxxx
    r9.w = samp0[]..swiz;
      r11.w = (int)r9.w & 0x40000000;
      r12.w = (uint)r9.w << 2;
      if (r11.w == 0) {
        r11.w = (int)r9.w & 0x01ffffff;
        r17.x = (int)r8.w + (int)r11.w;
        r8.w = (uint)r9.w >> 25;
        r8.w = (uint)r8.w;
        r16.xyz = r16.xyz * r8.www;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r18.xy = (uint2)r16.zy >> int2(6,6);
        r8.w = (int)r17.z & 0xc0000000;
        r9.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
      r9.w = samp0[]..swiz;
        r9.w = r18.y ? r17.z : r9.w;
        r11.w = (uint)r9.w >> 13;
        r9.w = r18.x ? r11.w : r9.w;
        r9.w = (int)r9.w & 8191;
        r18.x = (int)r9.w + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r18.xyz = r8.www ? r17.xyz : r18.xyz;
        r19.yz = r8.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r9.w = (int)r18.z & 0xc0000000;
        r11.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r11.w = r20.y ? r18.z : r11.w;
        r14.w = (uint)r11.w >> 13;
        r11.w = r20.x ? r14.w : r11.w;
        r11.w = (int)r11.w & 8191;
        r19.x = (int)r11.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r18.xyz = r9.www ? r18.xyz : r19.xzw;
        r17.xyz = r8.www ? r17.xyz : r18.xyz;
        r8.w = (int)r17.z & 0xc0000000;
        if (r8.w == 0) {
          r8.w = (int)-r17.y + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r8.ww;
          r8.w = (int)r17.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
          r9.w = (int)r9.w * 10;
          r8.w = (uint)r8.w >> (uint)r9.w;
          r8.w = (int)r8.w & 1023;
          r18.x = (int)r8.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.yy + int2(1,2);
          r8.w = (int)-r18.y + 6;
          r17.yw = (uint2)r16.zy >> (uint2)r8.ww;
          r8.w = (int)r18.w & 0xc0000000;
          r9.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r17.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.w = (((uint)r17.y << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r11.w = (int)r11.w * 10;
          r9.w = (uint)r9.w >> (uint)r11.w;
          r9.w = (int)r9.w & 1023;
          r19.x = (int)r9.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r8.www ? r18.xyw : r19.xyz;
          r9.w = (int)-r19.y + 6;
          r17.yw = (uint2)r16.zy >> (uint2)r9.ww;
          r9.w = (int)r19.z & 0xc0000000;
          r11.w = (int)r19.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r17.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.w = (((uint)r17.y << 0) & bitmask.w) | ((uint)r14.w & ~bitmask.w);
          r14.w = (int)r14.w * 10;
          r11.w = (uint)r11.w >> (uint)r14.w;
          r11.w = (int)r11.w & 1023;
          r20.x = (int)r11.w + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r17.yw = r9.ww ? r19.xz : r20.xy;
          r17.xz = r8.ww ? r18.xw : r17.yw;
        }
        r8.w = (int)r17.z & 0xc0000000;
        if (r8.w == 0) {
          if (14 == 0) r9.w = 0; else if (14+15 < 32) {           r9.w = (uint)r17.z << (32-(14 + 15)); r9.w = (uint)r9.w >> (32-14);          } else r9.w = (uint)r17.z >> 15;
          r9.w = (uint)r9.w;
          r9.w = sunConstants.sstLightingConstants.constants.spanInInches * r9.w;
          r9.w = 6.10388815e-05 * r9.w;
          r17.yw = (int2)r17.zz & int2(32767,536870912);
          r11.w = (uint)r17.y;
          r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
          r11.w = 3.05185094e-05 * r11.w;
          r14.w = (int)r16.y & 3;
          r14.w = (int)r14.w + (int)r17.x;
          r14.w = (int)r14.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.w = (((uint)r16.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r14.w = (uint)r14.w >> (uint)r16.x;
          r14.w = (int)r14.w & 255;
          r14.w = (uint)r14.w;
          r14.w = r14.w * r11.w;
          r14.w = r14.w * 0.00392156886 + r9.w;
          r16.x = (int)r16.y + 1;
          if (1 == 0) r16.y = 0; else if (1+1 < 32) {           r16.y = (uint)r16.z << (32-(1 + 1)); r16.y = (uint)r16.y >> (32-1);          } else r16.y = (uint)r16.z >> 1;
          r16.x = (int)r16.y + (int)r16.x;
          r16.x = (int)r16.x + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          r16.x = (uint)r16.x >> (uint)r16.w;
          r16.x = (int)r16.x & 0x0000ffff;
          r16.x = (uint)r16.x;
          r11.w = r16.x * r11.w;
          r9.w = r11.w * 1.52590219e-05 + r9.w;
          r12.w = r17.w ? r14.w : r9.w;
        } else {
          r9.w = (int)r17.z & 0x80000000;
          r11.w = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          r9.w = r9.w ? r11.w : 0;
          r11.w = (uint)r17.z << 2;
          r14.w = (uint)r9.w >> 16;
          r14.w = f16tof32(r14.w);
          r9.w = (int)r9.w & 0x0000ffff;
          r9.w = f16tof32(r9.w);
          r11.w = r10.y * r14.w + r11.w;
          r9.w = r10.z * r9.w + r11.w;
          r12.w = r8.w ? r9.w : r12.w;
        }
      }
      r8.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r8.w = cmp(r12.w < r8.w);
      r5.z = r8.w ? 0 : 1;
    }
    if (r8.z == 0) {
      if (enableDitheredShadow == 0) {
        r8.z = (uint)r5.w;
        r16.xy = -sunConstants.splitPinTransform[r8.z].xy + r10.yz;
        r8.zw = sunConstants.splitPinTransform[r8.z].zz * r16.xy;
        r16.xy = r8.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.z = (int16)sunConstants.splitArrayOffset;
        r16.z = r8.z + r5.w;
        r8.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.y).x;
        r8.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r8.z = r8.z + r8.w;
        r8.z = saturate(-1 + r8.z);
        r8.w = r8.z * r8.z;
        r5.z = r8.w * r8.z;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r8.x;
        r8.z = (uint)r5.w;
        r5.w = 1 + r5.w;
        r5.w = min(2, r5.w);
        r5.w = (uint)r5.w;
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.w = (uint)r7.w;
        r17.xy = -sunConstants.splitPinTransform[r8.z].xy + r10.yz;
        r17.xy = sunConstants.splitPinTransform[r8.z].zz * r17.xy;
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r5.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r5.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r9.x;
        r16.z = r8.x;
        r8.w = 0;
        r9.w = 0;
        while (true) {
          r10.w = cmp((uint)r9.w >= 8);
          if (r10.w != 0) break;
          r10.w = cmp((uint)r7.w < (uint)r9.w);
          r17.zw = r10.ww ? r10.yz : r17.xy;
          r11.w = r10.w ? sunConstants.splitPinTransform[r5.w].w : sunConstants.splitPinTransform[r8.z].w;
          r10.w = r10.w ? r5.w : r8.z;
          r18.x = dot(icb[r9.w+0].yx, r16.xy);
          r18.y = dot(icb[r9.w+0].yx, r16.yz);
          r18.xy = r18.xy * r11.ww + r17.zw;
          r10.w = (int)r10.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r10.w;
          r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.y).x;
          r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r10.w = r11.w + r10.w;
          r10.w = saturate(-1 + r10.w);
          r8.w = r10.w * 0.125 + r8.w;
          r9.w = (int)r9.w + 1;
        }
        r5.y = r8.w * r8.w;
        r5.z = r5.y * r8.w;
      }
    }
  }
  r5.y = cmp(0 < abs(r2.w));
  if (r5.y != 0) {
    r5.y = cmp(0 < r5.z);
    if (r5.y != 0) {
      r5.y = sunConstants.specScale * r7.y;
      r5.y = 0.25 * r5.y;
      if (sunConstants.sunCookieIndex != 0) {
        r16.xyz = eyeOffset.xyz + v7.xyz;
        r16.w = 1;
        r5.w = dot(sunConstants.sunCookieTransform[0].xyzw, r16.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r16.xyzw);
        r16.x = frac(r5.w);
        r16.y = frac(r7.w);
        r5.w = -1 + (int14)sunConstants.sunCookieIndex;
        r16.z = (uint)r5.w;
        r10.yzw = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
        r10.yzw = float3(-1,-1,-1) + r10.yzw;
        r10.yzw = sunConstants.sunCookieIntensity * r10.yzw + float3(1,1,1);
        r10.yzw = sunConstants.color.xyz * r10.yzw;
      } else {
        r10.yzw = sunConstants.color.xyz;
      }
      r5.w = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r5.w);
      r7.w = r6.w ? r7.w : 0;
      if (r7.w != 0) {
        r5.w = (int)r5.w + numLights;
        r5.w = (int)r5.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r5.w, l(52), t12.xxxx
      r7.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(68), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(84), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(132), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r5.w, l(148), t12.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
        r8.z = abs(r2.w) * -0.200000003 + 0.400000006;
        r8.w = cmp(r2.w < 0);
        r8.z = r8.w ? -r8.z : r8.z;
        r20.xyz = r1.xyz * r8.zzz + v7.xyz;
        r20.w = 1;
        r16.x = dot(r16.xyzw, r20.xyzw);
        r16.y = dot(r17.xyzw, r20.xyzw);
        r8.zw = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.zw = r8.zw + r19.zw;
        r8.zw = r8.zw * r19.xy;
        r16.xy = r7.ww / r18.xz;
        r16.zw = float2(1,1) + -r16.xy;
        r16.zw = cmp(r8.zw >= r16.zw);
        r16.xy = cmp(r16.xy >= r8.zw);
        r16.xy = (int2)r16.xy | (int2)r16.zw;
        r9.w = (int)r16.y | (int)r16.x;
        if (r9.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r5.w, l(28), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r5.w, l(164), t12.xyxx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
          r5.w = dot(r16.xyzw, r20.xyzw);
          r8.zw = saturate(r8.zw);
          r16.xy = r8.zw * r18.xz + r18.yw;
          r5.w = r5.w + r17.x;
          r5.w = r5.w / r17.y;
          r5.w = max(6.10351563e-05, r5.w);
          r8.z = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r17.x = -r8.x;
            r18.z = (uint)r8.z;
            r17.y = r9.x;
            r17.z = r8.x;
            r8.w = 0;
            r9.w = 0;
            while (true) {
              r11.w = cmp((int)r9.w >= 8);
              if (r11.w != 0) break;
              r19.x = dot(icb[r9.w+0].yx, r17.xy);
              r19.y = dot(icb[r9.w+0].yx, r17.yz);
              r18.xy = r19.xy * r7.ww + r16.xy;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
              r8.w = r11.w * 0.125 + r8.w;
              r9.w = (int)r9.w + 1;
            }
          } else {
            r16.z = (uint)r8.z;
            r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.w).x;
          }
          r5.w = r8.w * r8.w;
          r5.w = r5.w * r8.w;
        } else {
          r5.w = 1;
        }
        r5.z = r5.z * r5.w;
      } else {
        r5.w = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r5.w);
        r8.z = ~(int)r6.w;
        r7.w = r7.w ? r8.z : 0;
        if (r7.w != 0) {
          r5.w = (int)r5.w + numLights;
          r5.w = (int)r5.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r5.w, l(52), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(68), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(84), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(132), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r5.w, l(148), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
          r8.z = abs(r2.w) * -0.200000003 + 0.400000006;
          r8.w = cmp(r2.w < 0);
          r8.z = r8.w ? -r8.z : r8.z;
          r20.xyz = r1.xyz * r8.zzz + v7.xyz;
          r20.w = 1;
          r16.x = dot(r16.xyzw, r20.xyzw);
          r16.y = dot(r17.xyzw, r20.xyzw);
          r8.zw = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r8.zw = r8.zw + r19.zw;
          r8.zw = r8.zw * r19.xy;
          r16.xy = r7.ww / r18.xz;
          r16.zw = float2(1,1) + -r16.xy;
          r16.zw = cmp(r8.zw >= r16.zw);
          r16.xy = cmp(r16.xy >= r8.zw);
          r16.xy = (int2)r16.xy | (int2)r16.zw;
          r9.w = (int)r16.y | (int)r16.x;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r5.w, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r5.w, l(164), t12.xyxx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
            r5.w = dot(r16.xyzw, r20.xyzw);
            r8.zw = saturate(r8.zw);
            r16.xy = r8.zw * r18.xz + r18.yw;
            r5.w = r5.w + r17.x;
            r5.w = r5.w / r17.y;
            r5.w = max(6.10351563e-05, r5.w);
            r8.z = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r17.x = -r8.x;
              r18.z = (uint)r8.z;
              r17.y = r9.x;
              r17.z = r8.x;
              r8.w = 0;
              r9.w = 0;
              while (true) {
                r11.w = cmp((int)r9.w >= 8);
                if (r11.w != 0) break;
                r19.x = dot(icb[r9.w+0].yx, r17.xy);
                r19.y = dot(icb[r9.w+0].yx, r17.yz);
                r18.xy = r19.xy * r7.ww + r16.xy;
                r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
                r8.w = r11.w * 0.125 + r8.w;
                r9.w = (int)r9.w + 1;
              }
            } else {
              r16.z = (uint)r8.z;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.w).x;
            }
            r5.w = r8.w * r8.w;
            r5.w = r5.w * r8.w;
          } else {
            r5.w = 1;
          }
          r5.z = r5.z * r5.w;
        }
      }
      r5.w = -r5.x * 0.5 + 1;
      r5.w = -abs(r2.w) * r5.w + 1;
      r5.w = r5.w * r5.w;
      r5.w = -r5.w * 0.620000005 + 0.620000005;
      r5.w = r5.w + -abs(r2.w);
      r5.w = r7.z * r5.w + abs(r2.w);
      r5.w = r5.w * r5.z;
      r7.w = cmp(0 < r2.w);
      r16.xyz = r5.www * r10.zwy + r13.xyz;
      r2.w = saturate(r2.w);
      r17.xyz = -v7.xyz * r4.www + sunConstants.wldDir.xyz;
      r4.w = dot(r17.xyz, r17.xyz);
      r4.w = rsqrt(r4.w);
      r17.xyz = r17.xyz * r4.www;
      r4.w = dot(r17.xyz, r6.xyz);
      r5.w = dot(r1.xyz, r17.xyz);
      r8.z = abs(r5.w) * r7.y + -abs(r5.w);
      r5.w = abs(r5.w) * r8.z + 1;
      r8.z = r2.w * r0.w + r1.w;
      r5.w = r5.w * r5.w;
      r5.w = r5.w * r8.z;
      r5.w = rcp(r5.w);
      r2.w = r2.w * r5.y;
      r2.w = r5.w * r2.w;
      r2.w = r2.w * r5.z;
      r17.yzw = r2.www * r10.yzw + r15.xyz;
      r4.w = saturate(1 + -r4.w);
      r5.y = r4.w * r4.w;
      r5.y = r5.y * r5.y;
      r4.w = r5.y * r4.w;
      r2.w = r4.w * r2.w;
      r5.yzw = r2.www * r10.yzw + r14.xyz;
      r16.w = r13.z;
      r13.w = r16.z;
      r18.xyzw = r7.wwww ? r16.zxyw : r13.zxyw;
      r13.zw = r5.yz;
      r16.zw = r14.xy;
      r16.xyzw = r7.wwww ? r13.xyzw : r16.xyzw;
      r17.x = r5.w;
      r15.w = r14.z;
      r15.xyzw = r7.wwww ? r17.yzwx : r15.xyzw;
      r13.z = r18.w;
      r13.xy = r16.xy;
      r14.xy = r16.zw;
      r14.z = r15.w;
    } else {
      r18.xyz = r13.zxy;
    }
  } else {
    r18.xyz = r13.zxy;
  }
  r16.x = -r8.x;
  r2.w = ~(int)r6.w;
  r4.w = -r5.x * 0.5 + 1;
  r5.xy = float2(0,0);
  r17.w = 0;
  r19.xyz = v7.xyz;
  r19.w = 1;
  r20.w = 1;
  r16.z = r8.x;
  r21.w = 1;
  r22.z = 1;
  r23.w = 1;
  r16.yw = r9.xx;
  r8.y = r16.w;
  r24.w = 1;
  r9.y = r16.x;
  r9.z = r8.x;
  r25.w = 1;
  r26.x = r9.x;
  r26.y = r16.x;
  r26.z = r8.x;
  r27.x = r9.x;
  r27.y = r16.x;
  r27.z = r8.x;
  r28.x = r9.x;
  r28.y = r16.x;
  r28.z = r8.x;
  r10.yzw = r18.xyz;
  r29.xyz = r13.zxy;
  r30.xyz = r14.xyz;
  r31.xyz = r15.xyz;
  r5.w = enableDitheredShadow;
  r7.w = 0;
  while (true) {
    r8.z = cmp((uint)r7.w >= numLights);
    if (r8.z != 0) break;
    r5.z = (uint)r7.w >> 5;
    r17.xyz = (int3)r5.xyz + (int3)r12.xyz;
    r5.z = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r10.yzw;
    r32.xyz = r29.xyz;
    r33.xyz = r30.xyz;
    r34.xyz = r31.xyz;
    r8.z = r5.w;
    r8.w = r5.z;
    while (true) {
      if (r8.w == 0) break;
      r9.w = firstbitlow((uint)r8.w);
      r11.w = 1 << (int)r9.w;
      r12.w = (int)r8.w & (int)r11.w;
      if (r12.w != 0) {
        r8.w = (int)r8.w ^ (int)r11.w;
        r9.w = (int)r7.w + (int)r9.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(0), t11.xyzw
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
      r35.z = samp0[]..swiz;
      r35.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r36.xy, r9.w, l(16), t11.xyxx
      r36.x = samp0[]..swiz;
      r36.y = samp0[]..swiz;
        r35.xyz = -v7.xyz + r35.xyz;
        r36.z = r35.w;
        r35.xyz = cmp(abs(r35.xyz) < r36.zxy);
        r11.w = r35.y ? r35.x : 0;
        r11.w = r35.z ? r11.w : 0;
        if (r11.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(0), t12.wxyz
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(16), t12.zxyw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(32), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(48), t12.xyzw
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(64), t12.yzwx
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r9.w, l(80), t12.xyzw
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r9.w, l(96), t12.yzwx
        r41.x = samp0[]..swiz;
        r41.y = samp0[]..swiz;
        r41.z = samp0[]..swiz;
        r41.w = samp0[]..swiz;
          if (3 == 0) r11.w = 0; else if (3+24 < 32) {           r11.w = (uint)r36.w << (32-(3 + 24)); r11.w = (uint)r11.w >> (32-3);          } else r11.w = (uint)r36.w >> 24;
          switch (r11.w) {
            case 4 :            r11.w = cmp(0 < r41.x);
            r42.xy = r40.zw;
            r42.z = r41.w;
            r43.xyz = -r42.xyz * float3(0.5,0.5,0.5) + r35.yzw;
            r44.xyz = -v7.xyz + r43.xyz;
            r12.w = dot(r42.xyz, r44.xyz);
            r13.w = saturate(-r12.w / r41.x);
            r45.xyz = r13.www * r42.xyz + r43.xyz;
            r45.xyz = r11.www ? r45.xyz : r35.yzw;
            r45.xyz = -v7.xyz + r45.xyz;
            r14.w = dot(r45.xyz, r45.xyz);
            r15.w = rsqrt(r14.w);
            r45.xyz = r45.xyz * r15.www;
            r15.w = dot(r1.xyz, r45.xyz);
            r18.w = cmp(0 < abs(r15.w));
            if (r18.w != 0) {
              r18.w = sqrt(r14.w);
              r22.w = r38.x * r38.x;
              r14.w = r22.w / r14.w;
              r14.w = min(1, r14.w);
              r45.xy = saturate(r18.ww * r37.xz + r37.yw);
              r45.zw = r45.xy * r45.xy;
              r45.xy = r45.xy * float2(-2,-2) + float2(3,3);
              r45.xy = r45.zw * r45.xy;
              r14.w = r45.x * r14.w;
              r14.w = r14.w * r45.y;
              r18.w = cmp(0 < r14.w);
              if (r18.w != 0) {
                if (3 == 0) r18.w = 0; else if (3+27 < 32) {                 r18.w = (uint)r36.w << (32-(3 + 27)); r18.w = (uint)r18.w >> (32-3);                } else r18.w = (uint)r36.w >> 27;
                r18.w = cmp((int)r18.w != 1);
                if (r18.w != 0) {
                  r18.w = abs(r15.w) * -0.200000003 + 0.400000006;
                  r22.w = cmp(r15.w < 0);
                  r18.w = r22.w ? -r18.w : r18.w;
                  r45.xyz = r1.xyz * r18.www + v7.xyz;
                  r45.xyz = r45.xyz + -r39.xyz;
                  r18.w = max(abs(r45.y), abs(r45.z));
                  r18.w = max(abs(r45.x), r18.w);
                  r18.w = r40.x / r18.w;
                  r18.w = r18.w + r40.y;
                  r22.w = dot(r45.xyz, r45.xyz);
                  r22.w = rsqrt(r22.w);
                  r18.w = max(6.10351563e-05, r18.w);
                  r26.w = (int)r36.w & 0x0000ffff;
                  r46.w = (uint)r26.w;
                  r26.w = 0;
                  r27.w = 0;
                  while (true) {
                    r28.w = cmp((int)r27.w >= 8);
                    if (r28.w != 0) break;
                    r47.y = dot(icb[r27.w+0].yx, r16.xy);
                    r47.z = dot(icb[r27.w+0].yx, r16.yz);
                    r47.yz = r47.yz * r38.yy;
                    r47.x = r47.y * r10.x;
                    r47.w = r47.y * r7.x;
                    r46.xyz = r45.xyz * r22.www + r47.xzw;
                    r28.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r46.xyzw, r18.w).x;
                    r26.w = r28.w * 0.125 + r26.w;
                    r27.w = (int)r27.w + 1;
                  }
                } else {
                  r26.w = 1;
                }
                r14.w = r26.w * r14.w;
                r18.w = cmp(0 < r14.w);
                if (r18.w != 0) {
                  r18.w = r36.x * r7.y;
                  r18.w = 0.25 * r18.w;
                  r22.w = dot(r42.xyz, r11.xyz);
                  r27.w = dot(r11.xyz, r44.xyz);
                  r28.w = -r22.w * r22.w + r41.x;
                  r12.w = r22.w * r27.w + -r12.w;
                  r12.w = saturate(r12.w / r28.w);
                  r22.w = r28.w / r41.x;
                  r22.w = 10 * r22.w;
                  r22.w = min(1, r22.w);
                  r12.w = r12.w + -r13.w;
                  r12.w = r22.w * r12.w + r13.w;
                  r42.xyz = r12.www * r42.xyz + r43.xyz;
                  r42.xyz = r11.www ? r42.xyz : r35.yzw;
                  r42.xyz = -v7.xyz + r42.xyz;
                  r11.w = dot(r42.xyz, r42.xyz);
                  r11.w = rsqrt(r11.w);
                  r43.xyz = r42.xyz * r11.www;
                  if (4 == 0) r12.w = 0; else if (4+16 < 32) {                   r12.w = (uint)r36.w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r36.w >> 16;
                  r13.w = cmp(0 < (uint)r12.w);
                  r13.w = r6.w ? r13.w : 0;
                  if (r13.w != 0) {
                    r12.w = (int)r12.w + numLights;
                    r12.w = (int)r12.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(52), t12.xxxx
                  r13.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(100), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r12.w, l(116), t12.xyzw
                  r45.x = samp0[]..swiz;
                  r45.y = samp0[]..swiz;
                  r45.z = samp0[]..swiz;
                  r45.w = samp0[]..swiz;
                    r22.w = abs(r15.w) * -0.200000003 + 0.400000006;
                    r27.w = cmp(r15.w < 0);
                    r22.w = r27.w ? -r22.w : r22.w;
                    r20.xyz = r1.xyz * r22.www + v7.xyz;
                    r22.w = dot(r44.xyzw, r20.xyzw);
                    r27.w = dot(r45.xyzw, r20.xyzw);
                    r28.w = cmp(r27.w < r22.w);
                    if (r28.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(68), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r12.w, l(84), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r12.w, l(132), t12.xyzw
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                    r46.z = samp0[]..swiz;
                    r46.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r12.w, l(148), t12.xyzw
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                    r47.z = samp0[]..swiz;
                    r47.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xy, r12.w, l(164), t12.xyxx
                    r48.x = samp0[]..swiz;
                    r48.y = samp0[]..swiz;
                      r44.x = dot(r44.xyzw, r20.xyzw);
                      r44.y = dot(r45.xyzw, r20.xyzw);
                      r20.xy = r44.xy / r27.ww;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r47.zw;
                      r20.xy = r20.xy * r47.xy;
                      r44.xy = r13.ww / r46.xz;
                      r44.zw = float2(1,1) + -r44.xy;
                      r44.zw = cmp(r20.xy >= r44.zw);
                      r44.xy = cmp(r44.xy >= r20.xy);
                      r44.xy = (int2)r44.xy | (int2)r44.zw;
                      r20.z = (int)r44.y | (int)r44.x;
                      r20.xy = saturate(r20.xy);
                      r44.xy = r20.xy * r46.xz + r46.yw;
                      r20.x = r48.y * r27.w;
                      r20.y = r48.x * r27.w + r22.w;
                      r20.x = r20.y / r20.x;
                    } else {
                      r20.z = -1;
                    }
                    r20.y = (int)r28.w | (int)r20.z;
                    if (r20.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(28), t12.xxxx
                    r12.w = samp0[]..swiz;
                      r20.x = max(6.10351563e-05, r20.x);
                      r12.w = (int)r12.w & 0x0000ffff;
                      if (r8.z != 0) {
                        r45.z = (uint)r12.w;
                        r20.yz = float2(0,0);
                        while (true) {
                          r22.w = cmp((int)r20.z >= 8);
                          if (r22.w != 0) break;
                          r46.x = dot(icb[r20.z+0].yx, r16.xw);
                          r46.y = dot(icb[r20.z+0].xy, r8.xy);
                          r45.xy = r46.xy * r13.ww + r44.xy;
                          r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r45.xyz, r20.x).x;
                          r20.y = r22.w * 0.125 + r20.y;
                          r20.z = (int)r20.z + 1;
                        }
                      } else {
                        r44.z = (uint)r12.w;
                        r20.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r44.xyz, r20.x).x;
                      }
                      r12.w = r20.y * r20.y;
                      r12.w = r12.w * r20.y;
                    } else {
                      r12.w = 1;
                    }
                    r14.w = r14.w * r12.w;
                  } else {
                    if (4 == 0) r12.w = 0; else if (4+20 < 32) {                     r12.w = (uint)r36.w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);                    } else r12.w = (uint)r36.w >> 20;
                    r13.w = cmp(0 < (uint)r12.w);
                    r13.w = r13.w ? r2.w : 0;
                    if (r13.w != 0) {
                      r12.w = (int)r12.w + numLights;
                      r12.w = (int)r12.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(52), t12.xxxx
                    r13.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(100), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r12.w, l(116), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                      r20.x = abs(r15.w) * -0.200000003 + 0.400000006;
                      r20.z = cmp(r15.w < 0);
                      r20.x = r20.z ? -r20.x : r20.x;
                      r21.xyz = r1.xyz * r20.xxx + v7.xyz;
                      r20.x = dot(r44.xyzw, r21.xyzw);
                      r20.z = dot(r45.xyzw, r21.xyzw);
                      r22.w = cmp(r20.z < r20.x);
                      if (r22.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(68), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r12.w, l(84), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r12.w, l(132), t12.xyzw
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                      r46.z = samp0[]..swiz;
                      r46.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r12.w, l(148), t12.xyzw
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                      r47.z = samp0[]..swiz;
                      r47.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xy, r12.w, l(164), t12.xyxx
                      r48.x = samp0[]..swiz;
                      r48.y = samp0[]..swiz;
                        r44.x = dot(r44.xyzw, r21.xyzw);
                        r44.y = dot(r45.xyzw, r21.xyzw);
                        r21.xy = r44.xy / r20.zz;
                        r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r21.xy = r21.xy + r47.zw;
                        r21.xy = r21.xy * r47.xy;
                        r44.xy = r13.ww / r46.xz;
                        r44.zw = float2(1,1) + -r44.xy;
                        r44.zw = cmp(r21.xy >= r44.zw);
                        r44.xy = cmp(r44.xy >= r21.xy);
                        r44.xy = (int2)r44.xy | (int2)r44.zw;
                        r21.z = (int)r44.y | (int)r44.x;
                        r21.xy = saturate(r21.xy);
                        r44.xy = r21.xy * r46.xz + r46.yw;
                        r21.x = r48.y * r20.z;
                        r20.x = r48.x * r20.z + r20.x;
                        r20.x = r20.x / r21.x;
                      } else {
                        r21.z = -1;
                      }
                      r20.z = (int)r22.w | (int)r21.z;
                      if (r20.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(28), t12.xxxx
                      r12.w = samp0[]..swiz;
                        r20.x = max(6.10351563e-05, r20.x);
                        r12.w = (int)r12.w & 0x0000ffff;
                        if (r8.z != 0) {
                          r21.z = (uint)r12.w;
                          r20.z = 0;
                          r22.w = 0;
                          while (true) {
                            r27.w = cmp((int)r22.w >= 8);
                            if (r27.w != 0) break;
                            r45.x = dot(icb[r22.w+0].xy, r9.xy);
                            r45.y = dot(icb[r22.w+0].yx, r9.xz);
                            r21.xy = r45.xy * r13.ww + r44.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r20.x).x;
                            r20.z = r21.x * 0.125 + r20.z;
                            r22.w = (int)r22.w + 1;
                          }
                        } else {
                          r44.z = (uint)r12.w;
                          r20.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r44.xyz, r20.x).x;
                        }
                        r12.w = r20.z * r20.z;
                        r12.w = r12.w * r20.z;
                      } else {
                        r12.w = 1;
                      }
                      r14.w = r14.w * r12.w;
                    }
                  }
                  r12.w = -abs(r15.w) * r4.w + 1;
                  r12.w = r12.w * r12.w;
                  r12.w = -r12.w * 0.620000005 + 0.620000005;
                  r12.w = r12.w + -abs(r15.w);
                  r12.w = r7.z * r12.w + abs(r15.w);
                  r12.w = r12.w * r14.w;
                  r36.x = r35.x;
                  r13.w = cmp(0 < r15.w);
                  r21.xyz = r12.www * r36.xyz + r17.xyz;
                  r15.w = saturate(dot(r1.xyz, r43.xyz));
                  r42.xyz = r42.xyz * r11.www + r6.xyz;
                  r11.w = dot(r42.xyz, r42.xyz);
                  r11.w = rsqrt(r11.w);
                  r42.xyz = r42.xyz * r11.www;
                  r11.w = dot(r42.xyz, r6.xyz);
                  r20.x = dot(r1.xyz, r42.xyz);
                  r22.w = abs(r20.x) * r7.y + -abs(r20.x);
                  r20.x = abs(r20.x) * r22.w + 1;
                  r22.w = r15.w * r0.w + r1.w;
                  r20.x = r20.x * r20.x;
                  r20.x = r20.x * r22.w;
                  r20.x = rcp(r20.x);
                  r15.w = r15.w * r18.w;
                  r15.w = r20.x * r15.w;
                  r14.w = r15.w * r14.w;
                  r42.xyz = r14.www * r36.xyz + r34.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r15.w = r11.w * r11.w;
                  r15.w = r15.w * r15.w;
                  r11.w = r15.w * r11.w;
                  r11.w = r14.w * r11.w;
                  r43.xyz = r11.www * r36.xyz + r33.xyz;
                  r44.xyz = r12.www * r36.xyz + r32.xyz;
                  r17.xyz = r13.www ? r21.xyz : r17.xyz;
                  r32.xyz = r13.www ? r32.xyz : r44.xyz;
                  r33.xyz = r13.www ? r43.xyz : r33.xyz;
                  r34.xyz = r13.www ? r42.xyz : r34.xyz;
                }
              }
            }
            break;
            case 2 :            r21.xy = r38.zw;
            r21.z = r39.w;
            r21.xyz = -v7.xyz + r21.xyz;
            r11.w = dot(r21.xyz, r21.xyz);
            r11.w = rsqrt(r11.w);
            r42.xyz = r21.xyz * r11.www;
            r12.w = dot(r1.xyz, r42.xyz);
            r13.w = cmp(0 < abs(r12.w));
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r9.w, l(112), t12.yzwx
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(128), t12.zxyw
            r43.x = samp0[]..swiz;
            r43.y = samp0[]..swiz;
            r43.z = samp0[]..swiz;
            r43.w = samp0[]..swiz;
              r44.xyz = r42.xyz;
              r44.w = r43.y;
              r13.w = dot(r44.xyzw, r19.xyzw);
              r14.w = cmp(r13.w < 1);
              if (r14.w != 0) {
                r45.xyz = float3(1,1,1);
                r14.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r9.w, l(172), t12.yzwx
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r9.w, l(188), t12.wxyz
              r47.x = samp0[]..swiz;
              r47.y = samp0[]..swiz;
              r47.z = samp0[]..swiz;
              r47.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r9.w, l(204), t12.xyzw
              r48.x = samp0[]..swiz;
              r48.y = samp0[]..swiz;
              r48.z = samp0[]..swiz;
              r48.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r9.w, l(236), t12.xxxx
              r15.w = samp0[]..swiz;
                r49.xyz = -v7.xyz + r35.yzw;
                r18.w = r38.x * r38.x;
                r20.x = dot(r49.xyz, r49.xyz);
                r18.w = r18.w / r20.x;
                r18.w = min(1, r18.w);
                r37.xy = saturate(r13.ww * r37.xz + r37.yw);
                r37.zw = r37.xy * r37.xy;
                r37.xy = r37.xy * float2(-2,-2) + float2(3,3);
                r37.xy = r37.zw * r37.xy;
                r18.w = r37.x * r18.w;
                r18.w = r18.w * r37.y;
                r39.w = r40.x;
                r37.x = dot(r39.xyzw, r19.xyzw);
                r49.xyz = r40.yzw;
                r49.w = r41.w;
                r37.y = dot(r49.xyzw, r19.xyzw);
                r22.xy = r37.xy / r13.ww;
                r13.w = cmp(r46.w < 0.00048828125);
                if (r13.w != 0) {
                  r47.y = r48.x;
                  r37.xy = saturate(abs(r22.xy) * r47.zw + r47.xy);
                  r37.zw = r37.xy * r37.xy;
                  r37.xy = r37.xy * float2(-2,-2) + float2(3,3);
                  r37.xy = r37.zw * r37.xy;
                  r13.w = r37.x * r37.y;
                } else {
                  r46.w = r47.y;
                  r37.xyzw = saturate(r46.xyzw * abs(r22.yyxx));
                  r37.xyzw = log2(r37.xyzw);
                  r37.xyzw = r47.xxxx * r37.xyzw;
                  r37.xyzw = exp2(r37.xyzw);
                  r37.xy = r37.xy + r37.zw;
                  r37.xy = log2(r37.xy);
                  r37.xy = r48.xx * r37.xy;
                  r37.xy = exp2(r37.xy);
                  r20.x = r47.z * r37.x;
                  r22.w = r47.w * r37.y + -1;
                  r20.x = r47.w * r37.y + -r20.x;
                  r20.x = saturate(r22.w / r20.x);
                  r22.w = r20.x * r20.x;
                  r20.x = r20.x * -2 + 3;
                  r13.w = r22.w * r20.x;
                }
                r14.w = r18.w * r13.w;
                r13.w = (int)r15.w & 255;
                if (r13.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyz, r9.w, l(220), t12.xyzx
                r37.x = samp0[]..swiz;
                r37.y = samp0[]..swiz;
                r37.z = samp0[]..swiz;
                  r15.w = dot(r48.yzw, r22.xyz);
                  r18.w = dot(r37.xyz, r22.xyz);
                  r37.x = frac(r15.w);
                  r37.y = frac(r18.w);
                  r13.w = (int)r13.w + -1;
                  r37.z = (uint)r13.w;
                  r45.xyz = gCookieArray.SampleLevel(samplerLinear_s, r37.xyz, 0).xyz;
                } else {
                  r45.xyz = float3(1,1,1);
                }
              }
              r35.yz = r36.yz;
              r22.xyw = r35.xyz * r45.xyz;
              r13.w = cmp(0 < r14.w);
              if (r13.w != 0) {
                if (3 == 0) r13.w = 0; else if (3+27 < 32) {                 r13.w = (uint)r36.w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);                } else r13.w = (uint)r36.w >> 27;
                r13.w = cmp((int)r13.w != 1);
                if (r13.w != 0) {
                  r13.w = abs(r12.w) * -0.200000003 + 0.400000006;
                  r15.w = cmp(r12.w < 0);
                  r13.w = r15.w ? -r13.w : r13.w;
                  r23.xyz = r1.xyz * r13.www + v7.xyz;
                  r42.xyz = r41.xyz;
                  r13.w = dot(r42.xyzw, r23.xyzw);
                  r15.w = dot(r44.xyzw, r23.xyzw);
                  r18.w = cmp(r15.w >= r13.w);
                  if (r18.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.y, r9.w, l(144), t12.xxxx
                  r43.y = samp0[]..swiz;
                    r39.w = r40.x;
                    r35.x = dot(r39.xyzw, r23.xyzw);
                    r41.xyz = r40.yzw;
                    r35.y = dot(r41.xyzw, r23.xyzw);
                    r23.xy = r35.xy / r15.ww;
                    r23.xy = saturate(r23.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r23.xy = r23.xy * r43.zw + r43.xy;
                    r9.w = r13.w / r15.w;
                    r9.w = max(6.10351563e-05, r9.w);
                    r13.w = (int)r36.w & 0x0000ffff;
                    if (r8.z != 0) {
                      r35.z = (uint)r13.w;
                      r15.w = 0;
                      r18.w = 0;
                      while (true) {
                        r20.x = cmp((int)r18.w >= 8);
                        if (r20.x != 0) break;
                        r37.x = dot(icb[r18.w+0].xy, r26.xy);
                        r37.y = dot(icb[r18.w+0].yx, r26.xz);
                        r35.xy = r37.xy * r38.yy + r23.xy;
                        r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r9.w).x;
                        r15.w = r20.x * 0.125 + r15.w;
                        r18.w = (int)r18.w + 1;
                      }
                    } else {
                      r23.z = (uint)r13.w;
                      r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r9.w).x;
                    }
                    r9.w = r15.w * r15.w;
                    r9.w = r9.w * r15.w;
                  } else {
                    r9.w = 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = r14.w * r9.w;
                r13.w = cmp(0 < r9.w);
                if (r13.w != 0) {
                  r13.w = r36.x * r7.y;
                  r13.w = 0.25 * r13.w;
                  if (4 == 0) r14.w = 0; else if (4+16 < 32) {                   r14.w = (uint)r36.w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r36.w >> 16;
                  r18.w = cmp(0 < (uint)r14.w);
                  r18.w = r6.w ? r18.w : 0;
                  if (r18.w != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = (int)r14.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.w, r14.w, l(52), t12.xxxx
                  r18.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(68), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(84), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(100), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(116), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(132), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(148), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r20.x = abs(r12.w) * -0.200000003 + 0.400000006;
                    r23.x = cmp(r12.w < 0);
                    r20.x = r23.x ? -r20.x : r20.x;
                    r24.xyz = r1.xyz * r20.xxx + v7.xyz;
                    r23.x = dot(r35.xyzw, r24.xyzw);
                    r23.y = dot(r37.xyzw, r24.xyzw);
                    r20.x = dot(r38.xyzw, r24.xyzw);
                    r23.z = dot(r39.xyzw, r24.xyzw);
                    r24.x = cmp(r23.z < r20.x);
                    r23.xy = r23.xy / r23.zz;
                    r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r23.xy = r23.xy + r41.zw;
                    r23.xy = r23.xy * r41.xy;
                    r24.yz = r18.ww / r40.xz;
                    r35.xy = float2(1,1) + -r24.yz;
                    r35.xy = cmp(r23.xy >= r35.xy);
                    r24.yz = cmp(r24.yz >= r23.xy);
                    r24.yz = (int2)r24.yz | (int2)r35.xy;
                    r24.y = (int)r24.z | (int)r24.y;
                    r24.x = (int)r24.x | (int)r24.y;
                    if (r24.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r14.w, l(28), t12.xxxx
                    r24.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.yz, r14.w, l(164), t12.xxyx
                    r24.y = samp0[]..swiz;
                    r24.z = samp0[]..swiz;
                      r23.xy = saturate(r23.xy);
                      r35.xy = r23.xy * r40.xz + r40.yw;
                      r14.w = r24.z * r23.z;
                      r20.x = r24.y * r23.z + r20.x;
                      r14.w = r20.x / r14.w;
                      r14.w = max(6.10351563e-05, r14.w);
                      r20.x = r24.x ? 0.000000 : 0;
                      if (r8.z != 0) {
                        r23.z = (uint)r20.x;
                        r24.xy = float2(0,0);
                        while (true) {
                          r24.z = cmp((int)r24.y >= 8);
                          if (r24.z != 0) break;
                          r36.x = dot(icb[r24.y+0].xy, r27.xy);
                          r36.y = dot(icb[r24.y+0].yx, r27.xz);
                          r23.xy = r36.xy * r18.ww + r35.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r14.w).x;
                          r24.x = r23.x * 0.125 + r24.x;
                          r24.y = (int)r24.y + 1;
                        }
                      } else {
                        r35.z = (uint)r20.x;
                        r24.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r14.w).x;
                      }
                      r14.w = r24.x * r24.x;
                      r14.w = r14.w * r24.x;
                    } else {
                      r14.w = 1;
                    }
                    r9.w = r14.w * r9.w;
                  } else {
                    if (4 == 0) r14.w = 0; else if (4+20 < 32) {                     r14.w = (uint)r36.w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                    } else r14.w = (uint)r36.w >> 20;
                    r18.w = cmp(0 < (uint)r14.w);
                    r18.w = r18.w ? r2.w : 0;
                    if (r18.w != 0) {
                      r14.w = (int)r14.w + numLights;
                      r14.w = (int)r14.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.w, r14.w, l(52), t12.xxxx
                    r18.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(68), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(84), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(100), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(116), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r14.w, l(132), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(148), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                      r20.x = abs(r12.w) * -0.200000003 + 0.400000006;
                      r23.x = cmp(r12.w < 0);
                      r20.x = r23.x ? -r20.x : r20.x;
                      r25.xyz = r1.xyz * r20.xxx + v7.xyz;
                      r23.x = dot(r35.xyzw, r25.xyzw);
                      r23.y = dot(r36.xyzw, r25.xyzw);
                      r20.x = dot(r37.xyzw, r25.xyzw);
                      r23.z = dot(r38.xyzw, r25.xyzw);
                      r24.y = cmp(r23.z < r20.x);
                      r23.xy = r23.xy / r23.zz;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r40.zw;
                      r23.xy = r23.xy * r40.xy;
                      r25.xy = r18.ww / r39.xz;
                      r35.xy = float2(1,1) + -r25.xy;
                      r35.xy = cmp(r23.xy >= r35.xy);
                      r25.xy = cmp(r25.xy >= r23.xy);
                      r25.xy = (int2)r25.xy | (int2)r35.xy;
                      r24.z = (int)r25.y | (int)r25.x;
                      r24.y = (int)r24.y | (int)r24.z;
                      if (r24.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r14.w, l(28), t12.xxxx
                      r24.y = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xy, r14.w, l(164), t12.xyxx
                      r25.x = samp0[]..swiz;
                      r25.y = samp0[]..swiz;
                        r23.xy = saturate(r23.xy);
                        r35.xy = r23.xy * r39.xz + r39.yw;
                        r14.w = r25.y * r23.z;
                        r20.x = r25.x * r23.z + r20.x;
                        r14.w = r20.x / r14.w;
                        r14.w = max(6.10351563e-05, r14.w);
                        r20.x = r24.y ? 0.000000 : 0;
                        if (r8.z != 0) {
                          r23.z = (uint)r20.x;
                          r24.yz = float2(0,0);
                          while (true) {
                            r25.x = cmp((int)r24.z >= 8);
                            if (r25.x != 0) break;
                            r25.x = dot(icb[r24.z+0].xy, r28.xy);
                            r25.y = dot(icb[r24.z+0].yx, r28.xz);
                            r23.xy = r25.xy * r18.ww + r35.xy;
                            r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r14.w).x;
                            r24.y = r23.x * 0.125 + r24.y;
                            r24.z = (int)r24.z + 1;
                          }
                        } else {
                          r35.z = (uint)r20.x;
                          r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r14.w).x;
                        }
                        r14.w = r24.y * r24.y;
                        r14.w = r14.w * r24.y;
                      } else {
                        r14.w = 1;
                      }
                      r9.w = r14.w * r9.w;
                    }
                  }
                  r14.w = -abs(r12.w) * r4.w + 1;
                  r14.w = r14.w * r14.w;
                  r14.w = -r14.w * 0.620000005 + 0.620000005;
                  r14.w = r14.w + -abs(r12.w);
                  r14.w = r7.z * r14.w + abs(r12.w);
                  r14.w = r14.w * r9.w;
                  r18.w = cmp(0 < r12.w);
                  r23.xyz = r14.www * r22.xyw + r17.xyz;
                  r12.w = saturate(r12.w);
                  r21.xyz = r21.xyz * r11.www + r6.xyz;
                  r11.w = dot(r21.xyz, r21.xyz);
                  r11.w = rsqrt(r11.w);
                  r21.xyz = r21.xyz * r11.www;
                  r11.w = dot(r21.xyz, r6.xyz);
                  r20.x = dot(r1.xyz, r21.xyz);
                  r21.x = abs(r20.x) * r7.y + -abs(r20.x);
                  r20.x = abs(r20.x) * r21.x + 1;
                  r21.x = r12.w * r0.w + r1.w;
                  r20.x = r20.x * r20.x;
                  r20.x = r20.x * r21.x;
                  r20.x = rcp(r20.x);
                  r12.w = r12.w * r13.w;
                  r12.w = r20.x * r12.w;
                  r9.w = r12.w * r9.w;
                  r21.xyz = r9.www * r22.xyw + r34.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r12.w = r11.w * r11.w;
                  r12.w = r12.w * r12.w;
                  r11.w = r12.w * r11.w;
                  r9.w = r11.w * r9.w;
                  r25.xyz = r9.www * r22.xyw + r33.xyz;
                  r22.xyw = r14.www * r22.xyw + r32.xyz;
                  r17.xyz = r18.www ? r23.xyz : r17.xyz;
                  r32.xyz = r18.www ? r32.xyz : r22.xyw;
                  r33.xyz = r18.www ? r25.xyz : r33.xyz;
                  r34.xyz = r18.www ? r21.xyz : r34.xyz;
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
    r10.yzw = r17.xyz;
    r29.xyz = r32.xyz;
    r30.xyz = r33.xyz;
    r31.xyz = r34.xyz;
    r7.w = (int)r7.w + 32;
  }
  r1.xyz = r29.xyz * r2.xyz;
  r0.xyz = r10.yzw * r0.xyz + r1.xyz;
  r1.xyz = float3(1,1,1) + -r4.xyz;
  r1.xyz = r30.xyz * r1.xyz;
  r1.xyz = r31.xyz * r4.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
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
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  r1.xyz = max(float3(0,0,0), r0.xyz);
  r3.xyz = r1.xyz * r3.www;
  r0.w = (int)r3.w & 0x7f800000;
  r0.w = cmp((int)r0.w == 0x7f800000);
  r2.xyzw = cmp(r3.xyzw == float4(0,0,0,0));
  r2.xy = r2.zw ? r2.xy : 0;
  r1.w = r2.y ? r2.x : 0;
  r0.w = (int)r0.w | (int)r1.w;
  if (r0.w == 0) {
    r2.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r2.z, u6, r2.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r0.w = cmp((uint)r2.z < oitMaxEntries);
    if (r0.w != 0) {
      r0.w = max(r3.y, r3.z);
      r0.w = max(r3.x, r0.w);
      r0.w = abs(r0.w);
      r0.w = (int)r0.w & 0x7f800000;
      r0.w = (int)r0.w + 0x00800000;
      r1.xyz = r1.xyz * r3.www + r0.www;
      if (8 == 0) r1.x = 0; else if (8+15 < 32) {       r1.x = (uint)r1.x << (32-(8 + 15)); r1.x = (uint)r1.x >> (32-8);      } else r1.x = (uint)r1.x >> 15;
      r1.yz = (uint2)r1.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r1.y = (((uint)r1.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r1.z = (((uint)r1.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r1.x = (int)r1.y + (int)r1.x;
      r1.x = (int)r1.z + (int)r1.x;
      r0.w = (uint)r0.w << 1;
      r1.xzw = (int3)r0.www + (int3)r1.xxx;
      r0.w = saturate(r3.w);
      r0.w = 2046 * r0.w;
      r0.w = (uint)r0.w;
      r2.w = (uint)v0.z << 2;
      r0.w = (int)r0.w & 2046;
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r1.y = (((uint)r0.w << 0) & bitmask.y) | ((uint)r2.w & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r2.xyzz, r1.xyzw
      r0.w = -1;
    } else {
      r0.w = 0;
    }
  } else {
    r0.w = -1;
  }
  r3.xyz = r0.xyz * r3.www;
  o0.xyzw = r0.wwww ? float4(0,0,0,0) : r3.xyzw;
  return;
}