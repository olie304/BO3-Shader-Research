// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:49 2021

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
  float3 scriptTint : packoffset(c17);
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
Texture2D<float4> tintMask : register(t24);
Texture2D<float4> normalMap : register(t25);
Texture2D<float4> glossMap : register(t26);
Texture2D<float4> aoMap : register(t29);
Texture2D<float4> resolvedPostSun : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2D<float4> emissiveMap : register(t37);
Texture2D<float4> alphaMask : register(t38);
Texture2D<float4> edgeColorMap : register(t46);
Texture2D<float4> edgeEmissiveMap : register(t47);


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
  float2 v7 : TEXCOORD9,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.x = tintMask.Sample(colorSampler_s, w1.xy).x;
  r1.yzw = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r1.xxx * r1.yzw + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = v1.x * r0.w;
  r1.yzw = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r1.yzw = float3(-0.5,-0.5,-0) + r1.yzw;
  r1.yzw = baseNormalHeight * r1.yzw + float3(0.5,0.5,0);
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.yz, r1.yz);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r2.y = v8.x ? 1 : -1;
  r2.z = dot(v3.xyz, v3.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = v3.xyz * r2.zzz;
  r3.xyz = r3.xyz * r2.yyy;
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = rsqrt(r2.z);
  r4.xyz = v4.xyz * r2.zzz;
  r4.xyz = r4.xyz * r2.yyy;
  r2.z = dot(v5.xyz, v5.xyz);
  r2.z = rsqrt(r2.z);
  r5.xyz = v5.xyz * r2.zzz;
  r2.yzw = r5.xyz * r2.yyy;
  r2.yzw = r2.yzw * r1.zzz;
  r2.yzw = r4.xyz * r1.yyy + r2.yzw;
  r2.xyz = r3.xyz * r2.xxx + r2.yzw;
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = rsqrt(r1.y);
  r2.xyz = r2.xyz * r1.yyy;
  r1.y = cmp(0 < debugStreamerControl.w);
  if (r1.y != 0) {
    r1.y = (int)debugStreamerControl.w;
    r1.z = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r2.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r1.z = cmp(r1.z < r2.w);
    r2.w = cmp(0 < r2.w);
    r3.xyz = (int3)r1.yyy & int3(1,2,4);
    r4.xyz = r3.xxx ? float3(1,0,1) : r0.xyz;
    r3.xyw = r3.yyy ? float3(0,1,1) : r0.xyz;
    r3.xyw = r2.www ? r4.xyz : r3.xyw;
    r4.xyz = r3.zzz ? float3(0,1,0) : r0.xyz;
    r0.xyz = r1.zzz ? r3.xyw : r4.xyz;
  }
  r0.w = -r0.w * v1.x + debugAlphaOverride.x;
  r3.w = debugAlphaOverride.w * r0.w + r1.x;
  r1.xyz = v8.xxx ? v3.xyz : -v3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www + -r2.xyz;
  r2.xyz = debugNormalOverride.www * r1.xyz + r2.xyz;
  r0.w = cmp(r3.w == 0.000000);
  r1.xy = r2.xy * distortionAmount + v0.xy;
  r1.xy = renderTargetSize.zw * r1.xy;
  r1.xyz = resolvedPostSun.Sample(colorSampler_s, r1.xy).xyz;
  if (r0.w != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r0.w = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r4.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  r4.y = glossRange.y + -glossRange.x;
  r0.w = r0.w * r4.y + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.w = max(0, r0.w);
  r4.y = debugGlossOverride.x * r4.y + glossRange.x;
  r4.y = saturate(0.0588235296 * r4.y);
  r4.y = -17 * r4.y;
  r4.y = exp2(r4.y);
  r1.w = r4.y + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r4.yzw = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r4.yzw + r0.xyz;
  r4.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r4.yzw = debugSpecularOverride.www * r4.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.w = r1.w + -r0.w;
  r5.y = debugGlossOverride.w * r1.w + r0.w;
  r0.w = debugOcclusionOverride.x + -r4.x;
  r0.w = debugOcclusionOverride.w * r0.w + r4.x;
  r6.xyzw = emissiveMap.Sample(colorSampler_s, w1.xy).xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.w, v2.x, l(4), t4.xxxx
r1.w = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r7.xyz, r1.w, l(32), t0.xyzx
r7.x = samp0[]..swiz;
r7.y = samp0[]..swiz;
r7.z = samp0[]..swiz;
  r8.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r7.xyz);
  r9.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r7.xyz;
  r7.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r7.xyz;
  r7.xyz = float3(0.947867334,0.947867334,0.947867334) * r7.xyz;
  r7.xyz = log2(r7.xyz);
  r7.xyz = float3(2.4000001,2.4000001,2.4000001) * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r8.xyz ? r9.xyz : r7.xyz;
  r8.xyz = r7.xyz * r6.xyz;
  r0.xyz = r7.xyz * r0.xyz;
  r1.w = dot(-v6.xyz, -v6.xyz);
  r1.w = rsqrt(r1.w);
  r7.xyz = -v6.xyz * r1.www;
  r4.x = saturate(dot(v3.xyz, r7.xyz));
  r5.z = cmp(emissiveFalloffDir < 0.5);
  r5.w = 1 + -r4.x;
  r4.x = r5.z ? r5.w : r4.x;
  r4.x = saturate(emissiveFalloffScale * r4.x);
  r4.x = log2(r4.x);
  r4.x = emissiveFalloffPow * r4.x;
  r4.x = exp2(r4.x);
  r5.z = r6.w * r4.x;
  r6.xyz = r8.xyz * r5.zzz;
  r5.z = cmp(v0.z >= 0.984375);
  r5.w = 1.01587307 * v0.z;
  r7.w = v0.z * 64 + -63;
  r5.z = r5.z ? r7.w : r5.w;
  r5.z = max(9.99999994e-09, r5.z);
  r5.z = rcp(r5.z);
  r8.xy = (uint2)v0.xy;
  r5.w = cmp(isDepthHack != 0);
  r8.zw = (uint2)r8.yx;
  r7.w = dot(r8.wz, float2(0.0671105608,0.00583714992));
  r7.w = frac(r7.w);
  r7.w = 52.9829178 * r7.w;
  r7.w = frac(r7.w);
  r7.w = r7.w * 6.28318548 + gameTick.w;
  sincos(r7.w, r9.x, r10.x);
  r7.w = dot(r8.zw, float2(0.0671105608,0.00583714992));
  r7.w = frac(r7.w);
  r7.w = 52.9829178 * r7.w;
  r7.w = frac(r7.w);
  r7.w = r7.w * 6.28318548 + gameTick.w;
  sincos(r7.w, r11.x, r12.x);
  r5.x = saturate(dot(r2.xyz, r7.xyz));
  r7.w = dot(-r7.xyz, r2.xyz);
  r7.w = r7.w + r7.w;
  r13.xyz = r2.xyz * -r7.www + -r7.xyz;
  r7.w = 17 * r5.y;
  r7.w = exp2(r7.w);
  r7.w = 2 + r7.w;
  r7.w = 2 / r7.w;
  r8.z = sqrt(r7.w);
  r8.w = sqrt(r8.z);
  r8.w = r8.w * 0.5 + 0.5;
  r8.w = r8.w * r8.w;
  r9.z = 0.5 * r8.w;
  r8.w = -r8.w * 0.5 + 1;
  r9.w = r5.x * r8.w + r9.z;
  r8.w = r9.w * r8.w;
  r9.z = r9.z * r9.w;
  r9.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r10.w = saturate(r9.w);
  r11.y = cmp(0 >= r10.w);
  if (r11.y != 0) {
    r11.z = 0;
  }
  if (r11.y == 0) {
    r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r12.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r12.yzw;
    r12.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r12.yzw;
    r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r12.yzw;
    r11.y = -sunConstants.splitDepthOffset + r12.w;
    r11.y = -r11.y * 6.10351563e-05 + 1;
    r11.w = saturate(r11.y);
    r11.w = cmp(r11.y == r11.w);
    if (r11.w != 0) {
      r11.w = 0;
      r14.x = 0;
      while (true) {
        r14.y = cmp(r11.w >= 3);
        if (r14.y != 0) break;
        r14.y = (uint)r11.w;
        r14.zw = -sunConstants.splitPinTransform[r14.y].xy + r12.yz;
        r14.z = max(abs(r14.z), abs(r14.w));
        r14.x = sunConstants.splitPinTransform[r14.y].z * r14.z;
        r14.y = cmp(r14.x < 1);
        if (r14.y != 0) {
          break;
        }
        r11.w = 1 + r11.w;
        r14.x = 0;
      }
    } else {
      r11.w = 3;
      r14.x = 0;
    }
    r14.y = cmp(r11.w >= 3);
    if (r14.y != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r12.yzy * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r14.zw = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r14.zw = floor(r14.zw);
      r14.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.w;
      r14.z = r14.w * sunConstants.sstLightingConstants.coordScale + r14.z;
      r14.z = (uint)r14.z;
      r14.z = (int)r14.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.z, l(0), t23.xxxx
    r14.w = samp0[]..swiz;
      r15.w = (int)r14.w & 0x40000000;
      r16.x = (uint)r14.w << 2;
      if (r15.w == 0) {
        r15.w = (int)r14.w & 0x01ffffff;
        r17.x = (int)r14.z + (int)r15.w;
        r14.z = (uint)r14.w >> 25;
        r14.z = (uint)r14.z;
        r15.xyz = r15.xyz * r14.zzz;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r14.zw = (uint2)r15.zy >> int2(6,6);
        r15.w = (int)r17.z & 0xc0000000;
        r16.y = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
      r16.y = samp0[]..swiz;
        r14.w = r14.w ? r17.z : r16.y;
        r16.y = (uint)r14.w >> 13;
        r14.z = r14.z ? r16.y : r14.w;
        r14.z = (int)r14.z & 8191;
        r18.x = (int)r14.z + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r16.yzw = r15.www ? r17.xyz : r18.xyz;
        r18.yz = r15.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r14.zw = (uint2)r15.zy >> (uint2)r18.yy;
        r14.zw = (int2)r14.zw & int2(1,1);
        r17.w = (int)r16.w & 0xc0000000;
        r18.y = (int)r16.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.y, l(0), t23.xxxx
      r18.y = samp0[]..swiz;
        r14.w = r14.w ? r16.w : r18.y;
        r18.y = (uint)r14.w >> 13;
        r14.z = r14.z ? r18.y : r14.w;
        r14.z = (int)r14.z & 8191;
        r18.x = (int)r14.z + (int)r16.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r16.yzw = r17.www ? r16.yzw : r18.xzw;
        r16.yzw = r15.www ? r17.xyz : r16.yzw;
        r14.z = (int)r16.w & 0xc0000000;
        if (r14.z == 0) {
          r14.z = (int)-r16.z + 6;
          r14.zw = (uint2)r15.zy >> (uint2)r14.zz;
          r15.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r14.z = (uint)r15.w >> (uint)r14.z;
          r14.z = (int)r14.z & 1023;
          r17.x = (int)r14.z + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.zz + int2(1,2);
          r14.z = (int)-r17.y + 6;
          r14.zw = (uint2)r15.zy >> (uint2)r14.zz;
          r15.w = (int)r17.w & 0xc0000000;
          r16.z = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r14.z = (uint)r16.z >> (uint)r14.z;
          r14.z = (int)r14.z & 1023;
          r18.x = (int)r14.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r15.www ? r17.xyw : r18.xyz;
          r14.z = (int)-r18.y + 6;
          r14.zw = (uint2)r15.zy >> (uint2)r14.zz;
          r16.z = (int)r18.z & 0xc0000000;
          r17.y = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r14.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r14.z << 0) & bitmask.z) | ((uint)r14.w & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r14.z = (uint)r17.y >> (uint)r14.z;
          r14.z = (int)r14.z & 1023;
          r19.x = (int)r14.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r14.zw = r16.zz ? r18.xz : r19.xy;
          r16.yw = r15.ww ? r17.xw : r14.zw;
        }
        r14.z = (int)r16.w & 0xc0000000;
        if (r14.z == 0) {
          if (14 == 0) r14.w = 0; else if (14+15 < 32) {           r14.w = (uint)r16.w << (32-(14 + 15)); r14.w = (uint)r14.w >> (32-14);          } else r14.w = (uint)r16.w >> 15;
          r14.w = (uint)r14.w;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 6.10388815e-05 * r14.w;
          r17.xy = (int2)r16.ww & int2(32767,536870912);
          r15.w = (uint)r17.x;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 3.05185094e-05 * r15.w;
          r16.z = (int)r15.y & 3;
          r16.z = (int)r16.z + (int)r16.y;
          r16.z = (int)r16.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.z = (((uint)r15.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.w = (((uint)r15.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r15.x = (uint)r16.z >> (uint)r17.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r15.w;
          r15.x = r15.x * 0.00392156886 + r14.w;
          r15.y = (int)r17.z + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r17.w;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r15.y = r15.y * r15.w;
          r14.w = r15.y * 1.52590219e-05 + r14.w;
          r16.x = r17.y ? r15.x : r14.w;
        } else {
          r14.w = (int)r16.w & 0x80000000;
          r15.x = (int)r16.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.x, r15.x, l(0), t23.xxxx
        r15.x = samp0[]..swiz;
          r14.w = r14.w ? r15.x : 0;
          r15.x = (uint)r16.w << 2;
          r15.y = (uint)r14.w >> 16;
          r15.y = f16tof32(r15.y);
          r14.w = (int)r14.w & 0x0000ffff;
          r14.w = f16tof32(r14.w);
          r15.x = r12.y * r15.y + r15.x;
          r14.w = r12.z * r14.w + r15.x;
          r16.x = r14.z ? r14.w : r16.x;
        }
      }
      r12.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r12.w;
      r12.w = cmp(r16.x < r12.w);
      r11.z = r12.w ? 0 : 1;
    }
    if (r14.y == 0) {
      if (enableDitheredShadow == 0) {
        r12.w = (uint)r11.w;
        r14.yz = -sunConstants.splitPinTransform[r12.w].xy + r12.yz;
        r14.yz = sunConstants.splitPinTransform[r12.w].zz * r14.yz;
        r15.xy = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r12.w + r11.w;
        r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r11.y).x;
        r14.y = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r12.w = r14.y + r12.w;
        r12.w = saturate(-1 + r12.w);
        r14.y = r12.w * r12.w;
        r11.z = r14.y * r12.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r9.x;
        r12.w = (uint)r11.w;
        r11.w = 1 + r11.w;
        r11.w = min(2, r11.w);
        r11.w = (uint)r11.w;
        r14.x = 1 + -r14.x;
        r14.x = 28 * r14.x;
        r14.x = (uint)r14.x;
        r14.yz = -sunConstants.splitPinTransform[r12.w].xy + r12.yz;
        r14.yz = sunConstants.splitPinTransform[r12.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.yz = -sunConstants.splitPinTransform[r11.w].xy + r12.yz;
        r12.yz = sunConstants.splitPinTransform[r11.w].zz * r12.yz;
        r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r10.x;
        r15.z = r9.x;
        r14.w = 0;
        r15.w = 0;
        while (true) {
          r16.x = cmp((uint)r15.w >= 8);
          if (r16.x != 0) break;
          r16.x = cmp((uint)r14.x < (uint)r15.w);
          r16.yz = r16.xx ? r12.yz : r14.yz;
          r16.w = r16.x ? sunConstants.splitPinTransform[r11.w].w : sunConstants.splitPinTransform[r12.w].w;
          r16.x = r16.x ? r11.w : r12.w;
          r17.x = dot(icb[r15.w+0].yx, r15.xy);
          r17.y = dot(icb[r15.w+0].yx, r15.yz);
          r17.xy = r17.xy * r16.ww + r16.yz;
          r16.x = (int)r16.x + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.x;
          r16.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r11.y).x;
          r16.y = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.x = r16.x + r16.y;
          r16.x = saturate(-1 + r16.x);
          r14.w = r16.x * 0.125 + r14.w;
          r15.w = (int)r15.w + 1;
        }
        r11.y = r14.w * r14.w;
        r11.z = r11.y * r14.w;
      }
    }
  }
  r11.y = cmp(0 < r10.w);
  if (r11.y != 0) {
    r11.y = cmp(0 < r11.z);
    if (r11.y != 0) {
      r11.y = sunConstants.specScale * r7.w;
      r11.y = r11.y * r10.w;
      if (sunConstants.sunCookieIndex != 0) {
        r14.xyz = eyeOffset.xyz + v6.xyz;
        r14.w = 1;
        r11.w = dot(sunConstants.sunCookieTransform[0].xyzw, r14.xyzw);
        r12.y = dot(sunConstants.sunCookieTransform[1].xyzw, r14.xyzw);
        r14.x = frac(r11.w);
        r14.y = frac(r12.y);
        r11.w = -1 + (int14)sunConstants.sunCookieIndex;
        r14.z = (uint)r11.w;
        r12.yzw = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
        r12.yzw = float3(-1,-1,-1) + r12.yzw;
        r12.yzw = sunConstants.sunCookieIntensity * r12.yzw + float3(1,1,1);
        r12.yzw = sunConstants.color.xyz * r12.yzw;
      } else {
        r12.yzw = sunConstants.color.xyz;
      }
      r11.w = viewmodelSunShadowRaw >> 16;
      r14.x = cmp(0 < (uint)r11.w);
      r14.x = r5.w ? r14.x : 0;
      if (r14.x != 0) {
        r11.w = (int)r11.w + numLights;
        r11.w = (int)r11.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.x, r11.w, l(52), t12.xxxx
      r14.x = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r11.w, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r11.w, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r11.w, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r11.w, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r14.y = abs(r9.w) * -0.200000003 + 0.400000006;
        r19.xyz = r2.xyz * r14.yyy + v6.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r14.yz = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.yz = r14.yz + r18.zw;
        r14.yz = r14.yz * r18.xy;
        r15.xy = r14.xx / r17.xz;
        r15.zw = float2(1,1) + -r15.xy;
        r15.zw = cmp(r14.yz >= r15.zw);
        r15.xy = cmp(r15.xy >= r14.yz);
        r15.xy = (int2)r15.xy | (int2)r15.zw;
        r14.w = (int)r15.y | (int)r15.x;
        if (r14.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r11.w, l(28), t12.xxxx
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r11.w, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r11.w, l(164), t12.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r11.w = dot(r15.xyzw, r19.xyzw);
          r14.yz = saturate(r14.yz);
          r15.xy = r14.yz * r17.xz + r17.yw;
          r11.w = r11.w + r16.x;
          r11.w = r11.w / r16.y;
          r11.w = max(6.10351563e-05, r11.w);
          r14.y = (int)r14.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r9.x;
            r17.z = (uint)r14.y;
            r16.y = r10.x;
            r16.z = r9.x;
            r14.zw = float2(0,0);
            while (true) {
              r15.w = cmp((int)r14.w >= 8);
              if (r15.w != 0) break;
              r18.x = dot(icb[r14.w+0].yx, r16.xy);
              r18.y = dot(icb[r14.w+0].yx, r16.yz);
              r17.xy = r18.xy * r14.xx + r15.xy;
              r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r11.w).x;
              r14.z = r15.w * 0.125 + r14.z;
              r14.w = (int)r14.w + 1;
            }
          } else {
            r15.z = (uint)r14.y;
            r14.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r11.w).x;
          }
          r11.w = r14.z * r14.z;
          r11.w = r11.w * r14.z;
        } else {
          r11.w = 1;
        }
        r11.z = r11.z * r11.w;
      } else {
        r11.w = viewmodelSunShadowRaw & 0x0000ffff;
        r14.x = cmp(0 < (uint)r11.w);
        r14.y = ~(int)r5.w;
        r14.x = r14.x ? r14.y : 0;
        if (r14.x != 0) {
          r11.w = (int)r11.w + numLights;
          r11.w = (int)r11.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.x, r11.w, l(52), t12.xxxx
        r14.x = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r11.w, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r11.w, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r11.w, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r11.w, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r14.y = abs(r9.w) * -0.200000003 + 0.400000006;
          r19.xyz = r2.xyz * r14.yyy + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r14.yz = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r14.yz = r14.yz + r18.zw;
          r14.yz = r14.yz * r18.xy;
          r15.xy = r14.xx / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r14.yz >= r15.zw);
          r15.xy = cmp(r15.xy >= r14.yz);
          r15.xy = (int2)r15.xy | (int2)r15.zw;
          r14.w = (int)r15.y | (int)r15.x;
          if (r14.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r11.w, l(28), t12.xxxx
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r11.w, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r11.w, l(164), t12.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
            r11.w = dot(r15.xyzw, r19.xyzw);
            r14.yz = saturate(r14.yz);
            r15.xy = r14.yz * r17.xz + r17.yw;
            r11.w = r11.w + r16.x;
            r11.w = r11.w / r16.y;
            r11.w = max(6.10351563e-05, r11.w);
            r14.y = (int)r14.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r9.x;
              r17.z = (uint)r14.y;
              r16.y = r10.x;
              r16.z = r9.x;
              r14.zw = float2(0,0);
              while (true) {
                r15.w = cmp((int)r14.w >= 8);
                if (r15.w != 0) break;
                r18.x = dot(icb[r14.w+0].yx, r16.xy);
                r18.y = dot(icb[r14.w+0].yx, r16.yz);
                r17.xy = r18.xy * r14.xx + r15.xy;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r11.w).x;
                r14.z = r15.w * 0.125 + r14.z;
                r14.w = (int)r14.w + 1;
              }
            } else {
              r15.z = (uint)r14.y;
              r14.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r11.w).x;
            }
            r11.w = r14.z * r14.z;
            r11.w = r11.w * r14.z;
          } else {
            r11.w = 1;
          }
          r11.z = r11.z * r11.w;
        }
      }
      r11.w = -r5.x * 0.5 + 1;
      r11.w = -r10.w * r11.w + 1;
      r11.w = r11.w * r11.w;
      r11.w = -r11.w * 0.620000005 + 0.620000005;
      r11.w = r11.w + -r10.w;
      r11.w = r8.z * r11.w + r10.w;
      r11.w = r11.w * r11.z;
      r14.xyz = r11.www * r12.yzw;
      r9.w = cmp(0 < r9.w);
      r15.xyz = -v6.xyz * r1.www + sunConstants.wldDir.xyz;
      r1.w = dot(r15.xyz, r15.xyz);
      r1.w = rsqrt(r1.w);
      r15.xyz = r15.xyz * r1.www;
      r1.w = dot(r15.xyz, r7.xyz);
      r11.w = dot(r2.xyz, r15.xyz);
      r15.x = abs(r11.w) * r7.w + -abs(r11.w);
      r11.w = abs(r11.w) * r15.x + 1;
      r10.w = r10.w * r8.w + r9.z;
      r11.w = r11.w * r11.w;
      r10.w = r11.w * r10.w;
      r10.w = rcp(r10.w);
      r10.w = r10.w * r11.y;
      r10.w = r11.z * r10.w;
      r10.w = 0.25 * r10.w;
      r11.yzw = r10.www * r12.yzw;
      r1.w = saturate(1 + -r1.w);
      r15.x = r1.w * r1.w;
      r15.x = r15.x * r15.x;
      r1.w = r15.x * r1.w;
      r1.w = r10.w * r1.w;
      r15.xyz = r1.www * r12.zwy;
      r14.w = r15.z;
      r14.xyzw = r9.wwww ? r14.xyzw : 0;
      r15.zw = r11.yz;
      r15.xyzw = r9.wwww ? r15.xyzw : 0;
      r1.w = r9.w ? r11.w : 0;
    } else {
      r14.xyzw = float4(0,0,0,0);
      r15.xyzw = float4(0,0,0,0);
      r1.w = 0;
    }
  } else {
    r14.xyzw = float4(0,0,0,0);
    r15.xyzw = float4(0,0,0,0);
    r1.w = 0;
  }
  r9.w = 0.0078125 * r5.z;
  r9.w = min(15, r9.w);
  r9.w = (uint)r9.w;
  r16.xy = (uint2)r8.xy >> int2(6,6);
  r16.z = (uint)r9.w << 4;
  r17.x = -r9.x;
  r8.x = ~(int)r5.w;
  r8.y = -r5.x * 0.5 + 1;
  r18.xy = float2(0,0);
  r19.w = 0;
  r20.xyz = v6.xyz;
  r20.w = 1;
  r21.w = 1;
  r17.z = r9.x;
  r22.w = 1;
  r23.z = 1;
  r24.w = 1;
  r17.yw = r10.xx;
  r9.y = r17.w;
  r25.w = 1;
  r10.y = r17.x;
  r10.z = r9.x;
  r26.w = 1;
  r27.x = r10.x;
  r27.y = r17.x;
  r27.z = r9.x;
  r28.x = r10.x;
  r28.y = r17.x;
  r28.z = r9.x;
  r29.x = r10.x;
  r29.y = r17.x;
  r29.z = r9.x;
  r11.yzw = r14.xyz;
  r30.x = r14.w;
  r30.yz = r15.xy;
  r31.xy = r15.zw;
  r31.z = r1.w;
  r9.w = enableDitheredShadow;
  r10.w = 0;
  while (true) {
    r12.y = cmp((uint)r10.w >= numLights);
    if (r12.y != 0) break;
    r18.z = (uint)r10.w >> 5;
    r19.xyz = (int3)r16.xyz + (int3)r18.xyz;
    r12.y = visibleLights.Load(r19.xyzw).x;
    r19.xyz = r11.yzw;
    r32.xyz = r30.xyz;
    r33.xyz = r31.xyz;
    r12.z = r9.w;
    r12.w = r12.y;
    while (true) {
      if (r12.w == 0) break;
      r16.w = firstbitlow((uint)r12.w);
      r18.z = 1 << (int)r16.w;
      r18.w = (int)r12.w & (int)r18.z;
      if (r18.w != 0) {
        r12.w = (int)r12.w ^ (int)r18.z;
        r16.w = (int)r10.w + (int)r16.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(0), t11.xyzw
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
      r34.z = samp0[]..swiz;
      r34.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r35.xy, r16.w, l(16), t11.xyxx
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
        r34.xyz = -v6.xyz + r34.xyz;
        r35.z = r34.w;
        r34.xyz = cmp(abs(r34.xyz) < r35.zxy);
        r18.z = r34.y ? r34.x : 0;
        r18.z = r34.z ? r18.z : 0;
        if (r18.z != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(0), t12.wxyz
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(16), t12.zxyw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(32), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r16.w, l(48), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r16.w, l(64), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r16.w, l(80), t12.xyzw
        r39.x = samp0[]..swiz;
        r39.y = samp0[]..swiz;
        r39.z = samp0[]..swiz;
        r39.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r16.w, l(96), t12.yzwx
        r40.x = samp0[]..swiz;
        r40.y = samp0[]..swiz;
        r40.z = samp0[]..swiz;
        r40.w = samp0[]..swiz;
          if (3 == 0) r18.z = 0; else if (3+24 < 32) {           r18.z = (uint)r35.w << (32-(3 + 24)); r18.z = (uint)r18.z >> (32-3);          } else r18.z = (uint)r35.w >> 24;
          switch (r18.z) {
            case 4 :            r18.z = cmp(0 < r40.x);
            r41.xy = r39.zw;
            r41.z = r40.w;
            r42.xyz = -r41.xyz * float3(0.5,0.5,0.5) + r34.yzw;
            r43.xyz = -v6.xyz + r42.xyz;
            r18.w = dot(r41.xyz, r43.xyz);
            r23.w = saturate(-r18.w / r40.x);
            r44.xyz = r23.www * r41.xyz + r42.xyz;
            r44.xyz = r18.zzz ? r44.xyz : r34.yzw;
            r44.xyz = -v6.xyz + r44.xyz;
            r27.w = dot(r44.xyz, r44.xyz);
            r28.w = rsqrt(r27.w);
            r44.xyz = r44.xyz * r28.www;
            r28.w = dot(r2.xyz, r44.xyz);
            r29.w = saturate(r28.w);
            r30.w = cmp(0 < r29.w);
            if (r30.w != 0) {
              r30.w = sqrt(r27.w);
              r31.w = r37.x * r37.x;
              r27.w = r31.w / r27.w;
              r27.w = min(1, r27.w);
              r44.xy = saturate(r30.ww * r36.xz + r36.yw);
              r44.zw = r44.xy * r44.xy;
              r44.xy = r44.xy * float2(-2,-2) + float2(3,3);
              r44.xy = r44.zw * r44.xy;
              r27.w = r44.x * r27.w;
              r27.w = r27.w * r44.y;
              r30.w = cmp(0 < r27.w);
              if (r30.w != 0) {
                if (3 == 0) r30.w = 0; else if (3+27 < 32) {                 r30.w = (uint)r35.w << (32-(3 + 27)); r30.w = (uint)r30.w >> (32-3);                } else r30.w = (uint)r35.w >> 27;
                r30.w = cmp((int)r30.w != 1);
                if (r30.w != 0) {
                  r30.w = abs(r28.w) * -0.200000003 + 0.400000006;
                  r44.xyz = r2.xyz * r30.www + v6.xyz;
                  r44.xyz = r44.xyz + -r38.xyz;
                  r30.w = max(abs(r44.y), abs(r44.z));
                  r30.w = max(abs(r44.x), r30.w);
                  r30.w = r39.x / r30.w;
                  r30.w = r30.w + r39.y;
                  r31.w = dot(r44.xyz, r44.xyz);
                  r31.w = rsqrt(r31.w);
                  r30.w = max(6.10351563e-05, r30.w);
                  r32.w = (int)r35.w & 0x0000ffff;
                  r45.w = (uint)r32.w;
                  r32.w = 0;
                  r33.w = 0;
                  while (true) {
                    r41.w = cmp((int)r33.w >= 8);
                    if (r41.w != 0) break;
                    r46.y = dot(icb[r33.w+0].yx, r17.xy);
                    r46.z = dot(icb[r33.w+0].yx, r17.yz);
                    r46.yz = r46.yz * r37.yy;
                    r46.x = r46.y * r12.x;
                    r46.w = r46.y * r11.x;
                    r45.xyz = r44.xyz * r31.www + r46.xzw;
                    r41.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r45.xyzw, r30.w).x;
                    r32.w = r41.w * 0.125 + r32.w;
                    r33.w = (int)r33.w + 1;
                  }
                } else {
                  r32.w = 1;
                }
                r27.w = r32.w * r27.w;
                r30.w = cmp(0 < r27.w);
                if (r30.w != 0) {
                  r30.w = r35.x * r7.w;
                  r30.w = 0.25 * r30.w;
                  r31.w = dot(r41.xyz, r13.xyz);
                  r33.w = dot(r13.xyz, r43.xyz);
                  r41.w = -r31.w * r31.w + r40.x;
                  r18.w = r31.w * r33.w + -r18.w;
                  r18.w = saturate(r18.w / r41.w);
                  r31.w = r41.w / r40.x;
                  r31.w = 10 * r31.w;
                  r31.w = min(1, r31.w);
                  r18.w = r18.w + -r23.w;
                  r18.w = r31.w * r18.w + r23.w;
                  r41.xyz = r18.www * r41.xyz + r42.xyz;
                  r41.xyz = r18.zzz ? r41.xyz : r34.yzw;
                  r41.xyz = -v6.xyz + r41.xyz;
                  r18.z = dot(r41.xyz, r41.xyz);
                  r18.z = rsqrt(r18.z);
                  r42.xyz = r41.xyz * r18.zzz;
                  if (4 == 0) r18.w = 0; else if (4+16 < 32) {                   r18.w = (uint)r35.w << (32-(4 + 16)); r18.w = (uint)r18.w >> (32-4);                  } else r18.w = (uint)r35.w >> 16;
                  r23.w = cmp(0 < (uint)r18.w);
                  r23.w = r5.w ? r23.w : 0;
                  if (r23.w != 0) {
                    r18.w = (int)r18.w + numLights;
                    r18.w = (int)r18.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.w, r18.w, l(52), t12.xxxx
                  r23.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r18.w, l(100), t12.xyzw
                  r43.x = samp0[]..swiz;
                  r43.y = samp0[]..swiz;
                  r43.z = samp0[]..swiz;
                  r43.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r18.w, l(116), t12.xyzw
                  r44.x = samp0[]..swiz;
                  r44.y = samp0[]..swiz;
                  r44.z = samp0[]..swiz;
                  r44.w = samp0[]..swiz;
                    r31.w = abs(r28.w) * -0.200000003 + 0.400000006;
                    r21.xyz = r2.xyz * r31.www + v6.xyz;
                    r31.w = dot(r43.xyzw, r21.xyzw);
                    r33.w = dot(r44.xyzw, r21.xyzw);
                    r41.w = cmp(r33.w < r31.w);
                    if (r41.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r18.w, l(68), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r18.w, l(84), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r18.w, l(132), t12.xyzw
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                    r45.z = samp0[]..swiz;
                    r45.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r18.w, l(148), t12.xyzw
                    r46.x = samp0[]..swiz;
                    r46.y = samp0[]..swiz;
                    r46.z = samp0[]..swiz;
                    r46.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r18.w, l(164), t12.xyxx
                    r47.x = samp0[]..swiz;
                    r47.y = samp0[]..swiz;
                      r43.x = dot(r43.xyzw, r21.xyzw);
                      r43.y = dot(r44.xyzw, r21.xyzw);
                      r21.xy = r43.xy / r33.ww;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r46.zw;
                      r21.xy = r21.xy * r46.xy;
                      r43.xy = r23.ww / r45.xz;
                      r43.zw = float2(1,1) + -r43.xy;
                      r43.zw = cmp(r21.xy >= r43.zw);
                      r43.xy = cmp(r43.xy >= r21.xy);
                      r43.xy = (int2)r43.xy | (int2)r43.zw;
                      r21.z = (int)r43.y | (int)r43.x;
                      r21.xy = saturate(r21.xy);
                      r43.xy = r21.xy * r45.xz + r45.yw;
                      r21.x = r47.y * r33.w;
                      r21.y = r47.x * r33.w + r31.w;
                      r21.x = r21.y / r21.x;
                    } else {
                      r21.z = -1;
                    }
                    r21.y = (int)r41.w | (int)r21.z;
                    if (r21.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(28), t12.xxxx
                    r18.w = samp0[]..swiz;
                      r21.x = max(6.10351563e-05, r21.x);
                      r18.w = (int)r18.w & 0x0000ffff;
                      if (r12.z != 0) {
                        r44.z = (uint)r18.w;
                        r21.yz = float2(0,0);
                        while (true) {
                          r31.w = cmp((int)r21.z >= 8);
                          if (r31.w != 0) break;
                          r45.x = dot(icb[r21.z+0].yx, r17.xw);
                          r45.y = dot(icb[r21.z+0].xy, r9.xy);
                          r44.xy = r45.xy * r23.ww + r43.xy;
                          r31.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r44.xyz, r21.x).x;
                          r21.y = r31.w * 0.125 + r21.y;
                          r21.z = (int)r21.z + 1;
                        }
                      } else {
                        r43.z = (uint)r18.w;
                        r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r21.x).x;
                      }
                      r18.w = r21.y * r21.y;
                      r18.w = r18.w * r21.y;
                    } else {
                      r18.w = 1;
                    }
                    r27.w = r27.w * r18.w;
                  } else {
                    if (4 == 0) r18.w = 0; else if (4+20 < 32) {                     r18.w = (uint)r35.w << (32-(4 + 20)); r18.w = (uint)r18.w >> (32-4);                    } else r18.w = (uint)r35.w >> 20;
                    r21.x = cmp(0 < (uint)r18.w);
                    r21.x = r21.x ? r8.x : 0;
                    if (r21.x != 0) {
                      r18.w = (int)r18.w + numLights;
                      r18.w = (int)r18.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r18.w, l(52), t12.xxxx
                    r21.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r18.w, l(100), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r18.w, l(116), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                      r21.z = abs(r28.w) * -0.200000003 + 0.400000006;
                      r22.xyz = r2.xyz * r21.zzz + v6.xyz;
                      r21.z = dot(r43.xyzw, r22.xyzw);
                      r23.w = dot(r44.xyzw, r22.xyzw);
                      r31.w = cmp(r23.w < r21.z);
                      if (r31.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r18.w, l(68), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r18.w, l(84), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r18.w, l(132), t12.xyzw
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                      r45.z = samp0[]..swiz;
                      r45.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r18.w, l(148), t12.xyzw
                      r46.x = samp0[]..swiz;
                      r46.y = samp0[]..swiz;
                      r46.z = samp0[]..swiz;
                      r46.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r18.w, l(164), t12.xyxx
                      r47.x = samp0[]..swiz;
                      r47.y = samp0[]..swiz;
                        r43.x = dot(r43.xyzw, r22.xyzw);
                        r43.y = dot(r44.xyzw, r22.xyzw);
                        r22.xy = r43.xy / r23.ww;
                        r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r22.xy = r22.xy + r46.zw;
                        r22.xy = r22.xy * r46.xy;
                        r43.xy = r21.xx / r45.xz;
                        r43.zw = float2(1,1) + -r43.xy;
                        r43.zw = cmp(r22.xy >= r43.zw);
                        r43.xy = cmp(r43.xy >= r22.xy);
                        r43.xy = (int2)r43.xy | (int2)r43.zw;
                        r22.z = (int)r43.y | (int)r43.x;
                        r22.xy = saturate(r22.xy);
                        r43.xy = r22.xy * r45.xz + r45.yw;
                        r22.x = r47.y * r23.w;
                        r21.z = r47.x * r23.w + r21.z;
                        r21.z = r21.z / r22.x;
                      } else {
                        r22.z = -1;
                      }
                      r22.x = (int)r31.w | (int)r22.z;
                      if (r22.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(28), t12.xxxx
                      r18.w = samp0[]..swiz;
                        r21.z = max(6.10351563e-05, r21.z);
                        r18.w = (int)r18.w & 0x0000ffff;
                        if (r12.z != 0) {
                          r22.z = (uint)r18.w;
                          r23.w = 0;
                          r31.w = 0;
                          while (true) {
                            r33.w = cmp((int)r31.w >= 8);
                            if (r33.w != 0) break;
                            r44.x = dot(icb[r31.w+0].xy, r10.xy);
                            r44.y = dot(icb[r31.w+0].yx, r10.xz);
                            r22.xy = r44.xy * r21.xx + r43.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r21.z).x;
                            r23.w = r22.x * 0.125 + r23.w;
                            r31.w = (int)r31.w + 1;
                          }
                        } else {
                          r43.z = (uint)r18.w;
                          r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r21.z).x;
                        }
                        r18.w = r23.w * r23.w;
                        r18.w = r18.w * r23.w;
                      } else {
                        r18.w = 1;
                      }
                      r27.w = r27.w * r18.w;
                    }
                  }
                  r18.w = -r29.w * r8.y + 1;
                  r18.w = r18.w * r18.w;
                  r18.w = -r18.w * 0.620000005 + 0.620000005;
                  r18.w = r18.w + -r29.w;
                  r18.w = r8.z * r18.w + r29.w;
                  r18.w = r18.w * r27.w;
                  r35.x = r34.x;
                  r21.x = cmp(0 < r28.w);
                  r22.xyz = r18.www * r35.xyz + r19.xyz;
                  r18.w = saturate(dot(r2.xyz, r42.xyz));
                  r41.xyz = r41.xyz * r18.zzz + r7.xyz;
                  r18.z = dot(r41.xyz, r41.xyz);
                  r18.z = rsqrt(r18.z);
                  r41.xyz = r41.xyz * r18.zzz;
                  r18.z = dot(r41.xyz, r7.xyz);
                  r21.z = dot(r2.xyz, r41.xyz);
                  r28.w = abs(r21.z) * r7.w + -abs(r21.z);
                  r21.z = abs(r21.z) * r28.w + 1;
                  r28.w = r18.w * r8.w + r9.z;
                  r21.z = r21.z * r21.z;
                  r21.z = r21.z * r28.w;
                  r21.z = rcp(r21.z);
                  r18.w = r18.w * r30.w;
                  r18.w = r21.z * r18.w;
                  r18.w = r18.w * r27.w;
                  r41.xyz = r18.www * r35.xyz + r33.xyz;
                  r18.z = saturate(1 + -r18.z);
                  r21.z = r18.z * r18.z;
                  r21.z = r21.z * r21.z;
                  r18.z = r21.z * r18.z;
                  r18.z = r18.w * r18.z;
                  r42.xyz = r18.zzz * r35.xyz + r32.xyz;
                  r19.xyz = r21.xxx ? r22.xyz : r19.xyz;
                  r32.xyz = r21.xxx ? r42.xyz : r32.xyz;
                  r33.xyz = r21.xxx ? r41.xyz : r33.xyz;
                }
              }
            }
            break;
            case 2 :            r22.xy = r37.zw;
            r22.z = r38.w;
            r22.xyz = -v6.xyz + r22.xyz;
            r18.z = dot(r22.xyz, r22.xyz);
            r18.z = rsqrt(r18.z);
            r41.xyz = r22.xyz * r18.zzz;
            r18.w = dot(r2.xyz, r41.xyz);
            r21.x = saturate(r18.w);
            r21.z = cmp(0 < r21.x);
            if (r21.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r16.w, l(112), t12.yzwx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r16.w, l(128), t12.zxyw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
              r43.xyz = r41.xyz;
              r43.w = r42.y;
              r21.z = dot(r43.xyzw, r20.xyzw);
              r27.w = cmp(r21.z < 1);
              if (r27.w != 0) {
                r44.xyz = float3(1,1,1);
                r27.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r16.w, l(172), t12.yzwx
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r16.w, l(188), t12.wxyz
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
              r46.z = samp0[]..swiz;
              r46.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r16.w, l(204), t12.xyzw
              r47.x = samp0[]..swiz;
              r47.y = samp0[]..swiz;
              r47.z = samp0[]..swiz;
              r47.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.w, r16.w, l(236), t12.xxxx
              r28.w = samp0[]..swiz;
                r48.xyz = -v6.xyz + r34.yzw;
                r29.w = r37.x * r37.x;
                r30.w = dot(r48.xyz, r48.xyz);
                r29.w = r29.w / r30.w;
                r29.w = min(1, r29.w);
                r36.xy = saturate(r21.zz * r36.xz + r36.yw);
                r36.zw = r36.xy * r36.xy;
                r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                r36.xy = r36.zw * r36.xy;
                r29.w = r36.x * r29.w;
                r29.w = r29.w * r36.y;
                r38.w = r39.x;
                r36.x = dot(r38.xyzw, r20.xyzw);
                r48.xyz = r39.yzw;
                r48.w = r40.w;
                r36.y = dot(r48.xyzw, r20.xyzw);
                r23.xy = r36.xy / r21.zz;
                r21.z = cmp(r45.w < 0.00048828125);
                if (r21.z != 0) {
                  r46.y = r47.x;
                  r36.xy = saturate(abs(r23.xy) * r46.zw + r46.xy);
                  r36.zw = r36.xy * r36.xy;
                  r36.xy = r36.xy * float2(-2,-2) + float2(3,3);
                  r36.xy = r36.zw * r36.xy;
                  r21.z = r36.x * r36.y;
                } else {
                  r45.w = r46.y;
                  r36.xyzw = saturate(r45.xyzw * abs(r23.yyxx));
                  r36.xyzw = log2(r36.xyzw);
                  r36.xyzw = r46.xxxx * r36.xyzw;
                  r36.xyzw = exp2(r36.xyzw);
                  r36.xy = r36.xy + r36.zw;
                  r36.xy = log2(r36.xy);
                  r36.xy = r47.xx * r36.xy;
                  r36.xy = exp2(r36.xy);
                  r30.w = r46.z * r36.x;
                  r31.w = r46.w * r36.y + -1;
                  r30.w = r46.w * r36.y + -r30.w;
                  r30.w = saturate(r31.w / r30.w);
                  r31.w = r30.w * r30.w;
                  r30.w = r30.w * -2 + 3;
                  r21.z = r31.w * r30.w;
                }
                r27.w = r29.w * r21.z;
                r21.z = (int)r28.w & 255;
                if (r21.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyz, r16.w, l(220), t12.xyzx
                r36.x = samp0[]..swiz;
                r36.y = samp0[]..swiz;
                r36.z = samp0[]..swiz;
                  r28.w = dot(r47.yzw, r23.xyz);
                  r23.x = dot(r36.xyz, r23.xyz);
                  r36.x = frac(r28.w);
                  r36.y = frac(r23.x);
                  r21.z = (int)r21.z + -1;
                  r36.z = (uint)r21.z;
                  r44.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
                } else {
                  r44.xyz = float3(1,1,1);
                }
              }
              r34.yz = r35.yz;
              r34.xyz = r34.xyz * r44.xyz;
              r21.z = cmp(0 < r27.w);
              if (r21.z != 0) {
                if (3 == 0) r21.z = 0; else if (3+27 < 32) {                 r21.z = (uint)r35.w << (32-(3 + 27)); r21.z = (uint)r21.z >> (32-3);                } else r21.z = (uint)r35.w >> 27;
                r21.z = cmp((int)r21.z != 1);
                if (r21.z != 0) {
                  r21.z = abs(r18.w) * -0.200000003 + 0.400000006;
                  r24.xyz = r2.xyz * r21.zzz + v6.xyz;
                  r41.xyz = r40.xyz;
                  r21.z = dot(r41.xyzw, r24.xyzw);
                  r23.x = dot(r43.xyzw, r24.xyzw);
                  r23.y = cmp(r23.x >= r21.z);
                  if (r23.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.y, r16.w, l(144), t12.xxxx
                  r42.y = samp0[]..swiz;
                    r38.w = r39.x;
                    r36.x = dot(r38.xyzw, r24.xyzw);
                    r40.xyz = r39.yzw;
                    r36.y = dot(r40.xyzw, r24.xyzw);
                    r24.xy = r36.xy / r23.xx;
                    r24.xy = saturate(r24.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r24.xy = r24.xy * r42.zw + r42.xy;
                    r16.w = r21.z / r23.x;
                    r16.w = max(6.10351563e-05, r16.w);
                    r21.z = (int)r35.w & 0x0000ffff;
                    if (r12.z != 0) {
                      r36.z = (uint)r21.z;
                      r23.xy = float2(0,0);
                      while (true) {
                        r28.w = cmp((int)r23.y >= 8);
                        if (r28.w != 0) break;
                        r38.x = dot(icb[r23.y+0].xy, r27.xy);
                        r38.y = dot(icb[r23.y+0].yx, r27.xz);
                        r36.xy = r38.xy * r37.yy + r24.xy;
                        r28.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r16.w).x;
                        r23.x = r28.w * 0.125 + r23.x;
                        r23.y = (int)r23.y + 1;
                      }
                    } else {
                      r24.z = (uint)r21.z;
                      r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r16.w).x;
                    }
                    r16.w = r23.x * r23.x;
                    r16.w = r16.w * r23.x;
                  } else {
                    r16.w = 1;
                  }
                } else {
                  r16.w = 1;
                }
                r16.w = r27.w * r16.w;
                r21.z = cmp(0 < r16.w);
                if (r21.z != 0) {
                  r21.z = r35.x * r7.w;
                  r21.z = r21.z * r21.x;
                  if (4 == 0) r23.y = 0; else if (4+16 < 32) {                   r23.y = (uint)r35.w << (32-(4 + 16)); r23.y = (uint)r23.y >> (32-4);                  } else r23.y = (uint)r35.w >> 16;
                  r24.x = cmp(0 < (uint)r23.y);
                  r24.x = r5.w ? r24.x : 0;
                  if (r24.x != 0) {
                    r23.y = (int)r23.y + numLights;
                    r23.y = (int)r23.y + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r23.y, l(52), t12.xxxx
                  r24.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r23.y, l(68), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r23.y, l(84), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r23.y, l(100), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r23.y, l(116), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r23.y, l(132), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r23.y, l(148), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r24.y = abs(r18.w) * -0.200000003 + 0.400000006;
                    r25.xyz = r2.xyz * r24.yyy + v6.xyz;
                    r35.x = dot(r36.xyzw, r25.xyzw);
                    r35.y = dot(r37.xyzw, r25.xyzw);
                    r24.y = dot(r38.xyzw, r25.xyzw);
                    r24.z = dot(r39.xyzw, r25.xyzw);
                    r25.x = cmp(r24.z < r24.y);
                    r25.yz = r35.xy / r24.zz;
                    r25.yz = r25.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r25.yz = r25.yz + r41.zw;
                    r25.yz = r25.yz * r41.xy;
                    r35.xy = r24.xx / r40.xz;
                    r36.xy = float2(1,1) + -r35.xy;
                    r36.xy = cmp(r25.yz >= r36.xy);
                    r35.xy = cmp(r35.xy >= r25.yz);
                    r35.xy = (int2)r35.xy | (int2)r36.xy;
                    r27.w = (int)r35.y | (int)r35.x;
                    r25.x = (int)r25.x | (int)r27.w;
                    if (r25.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.x, r23.y, l(28), t12.xxxx
                    r25.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xy, r23.y, l(164), t12.xyxx
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                      r25.yz = saturate(r25.yz);
                      r36.xy = r25.yz * r40.xz + r40.yw;
                      r23.y = r35.y * r24.z;
                      r24.y = r35.x * r24.z + r24.y;
                      r23.y = r24.y / r23.y;
                      r23.y = max(6.10351563e-05, r23.y);
                      r24.y = r25.x ? 0.000000 : 0;
                      if (r12.z != 0) {
                        r25.z = (uint)r24.y;
                        r24.z = 0;
                        r27.w = 0;
                        while (true) {
                          r28.w = cmp((int)r27.w >= 8);
                          if (r28.w != 0) break;
                          r35.x = dot(icb[r27.w+0].xy, r28.xy);
                          r35.y = dot(icb[r27.w+0].yx, r28.xz);
                          r25.xy = r35.xy * r24.xx + r36.xy;
                          r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r23.y).x;
                          r24.z = r25.x * 0.125 + r24.z;
                          r27.w = (int)r27.w + 1;
                        }
                      } else {
                        r36.z = (uint)r24.y;
                        r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r36.xyz, r23.y).x;
                      }
                      r23.y = r24.z * r24.z;
                      r23.y = r23.y * r24.z;
                    } else {
                      r23.y = 1;
                    }
                    r16.w = r23.y * r16.w;
                  } else {
                    if (4 == 0) r23.y = 0; else if (4+20 < 32) {                     r23.y = (uint)r35.w << (32-(4 + 20)); r23.y = (uint)r23.y >> (32-4);                    } else r23.y = (uint)r35.w >> 20;
                    r24.x = cmp(0 < (uint)r23.y);
                    r24.x = r24.x ? r8.x : 0;
                    if (r24.x != 0) {
                      r23.y = (int)r23.y + numLights;
                      r23.y = (int)r23.y + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r23.y, l(52), t12.xxxx
                    r24.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r23.y, l(68), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r23.y, l(84), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r23.y, l(100), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r23.y, l(116), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r23.y, l(132), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r23.y, l(148), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                      r24.y = abs(r18.w) * -0.200000003 + 0.400000006;
                      r26.xyz = r2.xyz * r24.yyy + v6.xyz;
                      r25.x = dot(r35.xyzw, r26.xyzw);
                      r25.y = dot(r36.xyzw, r26.xyzw);
                      r24.y = dot(r37.xyzw, r26.xyzw);
                      r25.z = dot(r38.xyzw, r26.xyzw);
                      r26.x = cmp(r25.z < r24.y);
                      r25.xy = r25.xy / r25.zz;
                      r25.xy = r25.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r25.xy = r25.xy + r40.zw;
                      r25.xy = r25.xy * r40.xy;
                      r26.yz = r24.xx / r39.xz;
                      r35.xy = float2(1,1) + -r26.yz;
                      r35.xy = cmp(r25.xy >= r35.xy);
                      r26.yz = cmp(r26.yz >= r25.xy);
                      r26.yz = (int2)r26.yz | (int2)r35.xy;
                      r26.y = (int)r26.z | (int)r26.y;
                      r26.x = (int)r26.x | (int)r26.y;
                      if (r26.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.x, r23.y, l(28), t12.xxxx
                      r26.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.yz, r23.y, l(164), t12.xxyx
                      r26.y = samp0[]..swiz;
                      r26.z = samp0[]..swiz;
                        r25.xy = saturate(r25.xy);
                        r35.xy = r25.xy * r39.xz + r39.yw;
                        r23.y = r26.z * r25.z;
                        r24.y = r26.y * r25.z + r24.y;
                        r23.y = r24.y / r23.y;
                        r23.y = max(6.10351563e-05, r23.y);
                        r24.y = r26.x ? 0.000000 : 0;
                        if (r12.z != 0) {
                          r25.z = (uint)r24.y;
                          r26.xy = float2(0,0);
                          while (true) {
                            r26.z = cmp((int)r26.y >= 8);
                            if (r26.z != 0) break;
                            r36.x = dot(icb[r26.y+0].xy, r29.xy);
                            r36.y = dot(icb[r26.y+0].yx, r29.xz);
                            r25.xy = r36.xy * r24.xx + r35.xy;
                            r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r25.xyz, r23.y).x;
                            r26.x = r25.x * 0.125 + r26.x;
                            r26.y = (int)r26.y + 1;
                          }
                        } else {
                          r35.z = (uint)r24.y;
                          r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r23.y).x;
                        }
                        r23.y = r26.x * r26.x;
                        r23.y = r23.y * r26.x;
                      } else {
                        r23.y = 1;
                      }
                      r16.w = r23.y * r16.w;
                    }
                  }
                  r23.y = -r21.x * r8.y + 1;
                  r23.y = r23.y * r23.y;
                  r23.y = -r23.y * 0.620000005 + 0.620000005;
                  r23.y = r23.y + -r21.x;
                  r23.y = r8.z * r23.y + r21.x;
                  r23.y = r23.y * r16.w;
                  r18.w = cmp(0 < r18.w);
                  r25.xyz = r23.yyy * r34.xyz + r19.xyz;
                  r22.xyz = r22.xyz * r18.zzz + r7.xyz;
                  r18.z = dot(r22.xyz, r22.xyz);
                  r18.z = rsqrt(r18.z);
                  r22.xyz = r22.xyz * r18.zzz;
                  r18.z = dot(r22.xyz, r7.xyz);
                  r22.x = dot(r2.xyz, r22.xyz);
                  r22.y = abs(r22.x) * r7.w + -abs(r22.x);
                  r22.x = abs(r22.x) * r22.y + 1;
                  r21.x = r21.x * r8.w + r9.z;
                  r22.x = r22.x * r22.x;
                  r21.x = r22.x * r21.x;
                  r21.x = rcp(r21.x);
                  r21.x = r21.x * r21.z;
                  r16.w = r21.x * r16.w;
                  r16.w = 0.25 * r16.w;
                  r22.xyz = r16.www * r34.xyz + r33.xyz;
                  r18.z = saturate(1 + -r18.z);
                  r21.x = r18.z * r18.z;
                  r21.x = r21.x * r21.x;
                  r18.z = r21.x * r18.z;
                  r16.w = r18.z * r16.w;
                  r34.xyz = r16.www * r34.xyz + r32.xyz;
                  r19.xyz = r18.www ? r25.xyz : r19.xyz;
                  r32.xyz = r18.www ? r34.xyz : r32.xyz;
                  r33.xyz = r18.www ? r22.xyz : r33.xyz;
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
    r11.yzw = r19.xyz;
    r30.xyz = r32.xyz;
    r31.xyz = r33.xyz;
    r10.w = (int)r10.w + 32;
  }
  r1.w = 1 + -r5.y;
  r5.w = 5 * r1.w;
  r7.x = r1.w * 5 + -2.5;
  r7.x = saturate(0.400000006 * r7.x);
  r7.x = 100 * r7.x;
  r7.yz = -r1.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.y = exp2(r7.y);
  r7.y = r7.y * r5.x;
  r7.w = r5.w * r1.w;
  r7.z = -r7.w * 2.0159049 + r7.z;
  r7.z = exp2(r7.z);
  r7.z = r7.z * r5.x;
  r7.yz = float2(9.1368103,9.70808983) * r7.yz;
  r7.y = max(r7.y, r7.z);
  r7.y = max(1.26815999, r7.y);
  r8.xy = float2(0,0);
  r9.w = 0;
  r10.yz = float2(0,1);
  r12.xy = float2(0,0);
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r17.x = 1;
  r18.xyzw = float4(0,0,0,0);
  r19.yzw = float3(0,0,0);
  r7.zw = float2(0,0);
  while (true) {
    r8.w = cmp((uint)r7.w >= numRefProbes);
    if (r8.w != 0) break;
    r8.z = (uint)r7.w >> 5;
    r9.xyz = (int3)r8.xyz + (int3)r16.xyz;
    r8.z = visibleProbes.Load(r9.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r7.w, l(0), t15.wxyz
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r7.w, l(16), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r7.w, l(32), t15.yxwz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r7.w, l(48), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r7.w, l(64), t15.zwxy
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r7.w, l(80), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.xy, r7.w, l(96), t15.xyxx
  r9.x = samp0[]..swiz;
  r9.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r7.w, l(116), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r7.w, l(132), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r7.w, l(148), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r7.w, l(164), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r7.w, l(180), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r7.w, l(196), t15.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r7.w, l(212), t15.xyxx
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
    r35.xyz = v6.xyz + -r20.yzw;
    r8.w = dot(r35.xyz, r35.xyz);
    r8.w = sqrt(r8.w);
    r8.w = cmp(probeDebugRadius >= r8.w);
    r9.z = (int)r26.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r9.z, l(0), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r9.z, l(16), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r9.z, l(32), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r9.z, l(48), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r9.z, l(64), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r9.z, l(80), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
    r10.w = dot(r36.xyz, r35.xyz);
    r10.w = saturate(r10.w + r36.w);
    r11.x = dot(r37.xyz, r35.xyz);
    r11.x = saturate(r11.x + r37.w);
    r10.w = r11.x * r10.w;
    r11.x = dot(r38.xyz, r35.xyz);
    r11.x = saturate(r11.x + r38.w);
    r10.w = r11.x * r10.w;
    r11.x = dot(r39.xyz, r35.xyz);
    r11.x = saturate(r11.x + r39.w);
    r10.w = r11.x * r10.w;
    r11.x = dot(r40.xyz, r35.xyz);
    r11.x = saturate(r11.x + r40.w);
    r10.w = r11.x * r10.w;
    r11.x = dot(r41.xyz, r35.xyz);
    r11.x = saturate(r11.x + r41.w);
    r10.x = r11.x * r10.w;
    r10.w = (int)r9.x & 1;
    r10.xw = r10.ww ? r10.xy : r10.zx;
    r36.xy = r26.zw;
    r36.z = r27.z;
    r11.x = dot(r13.xyz, r36.xyz);
    r12.w = dot(r35.xyz, r36.xyz);
    r12.w = r12.w + -r27.w;
    r14.w = cmp(r12.w >= 0);
    r12.w = max(abs(r12.w), r7.x);
    r12.w = r14.w ? r12.w : -r12.w;
    r11.x = max(1.00000001e-07, -r11.x);
    r11.x = r12.w / r11.x;
    r11.x = min(131072, abs(r11.x));
    r27.z = r28.z;
    r12.w = dot(r13.xyz, r27.xyz);
    r14.w = dot(r35.xyz, r27.xyz);
    r14.w = r14.w + -r28.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.x);
    r14.w = r15.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r28.z = r29.z;
    r12.w = dot(r13.xyz, r28.xyz);
    r14.w = dot(r35.xyz, r28.xyz);
    r14.w = r14.w + -r29.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.x);
    r14.w = r15.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r29.z = r32.z;
    r12.w = dot(r13.xyz, r29.xyz);
    r14.w = dot(r35.xyz, r29.xyz);
    r14.w = r14.w + -r32.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.x);
    r14.w = r15.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r32.z = r33.x;
    r12.w = dot(r13.xyz, r32.xyz);
    r14.w = dot(r35.xyz, r32.xyz);
    r14.w = r14.w + -r33.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.x);
    r14.w = r15.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r34.zw = r33.zw;
    r12.w = dot(r13.zxy, r34.xzw);
    r14.w = dot(r35.zxy, r34.xzw);
    r14.w = r14.w + -r34.y;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r7.x);
    r14.w = r15.w ? r14.w : -r14.w;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r14.w / r12.w;
    r11.x = min(abs(r12.w), r11.x);
    r27.x = r23.w;
    r27.yz = r24.zw;
    r27.xyz = r27.xyz + r35.xyz;
    r27.xyz = r13.xyz * r11.xxx + r27.xyz;
    r12.w = dot(r27.xyz, r27.xyz);
    r12.w = sqrt(r12.w);
    r11.x = r11.x / r12.w;
    r11.x = r11.x + r11.x;
    r11.x = sqrt(r11.x);
    r11.x = r1.w * 5 + r11.x;
    r11.x = -0.844799995 + r11.x;
    r20.y = r21.z;
    r20.z = r22.x;
    r28.x = dot(r27.xyz, r20.xyz);
    r29.xy = r21.xw;
    r29.z = r22.w;
    r28.y = dot(r27.xyz, r29.xyz);
    r22.x = r21.y;
    r28.z = dot(r27.xyz, r22.xyz);
    if (6 == 0) r17.z = 0; else if (6+25 < 32) {     r17.z = (uint)r26.y << (32-(6 + 25)); r17.z = (uint)r17.z >> (32-6);    } else r17.z = (uint)r26.y >> 25;
    if (9 == 0) r17.w = 0; else if (9+16 < 32) {     r17.w = (uint)r26.y << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);    } else r17.w = (uint)r26.y >> 16;
    r28.w = (uint)r17.w;
    r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r11.x).xyz;
    r26.yzw = (int3)r21.xyz & int3(-2147483648,-2147483648,-2147483648);
    r26.yzw = cmp((int3)r26.yzw == int3(2139095040,2139095040,2139095040));
    r11.x = (int)r26.z | (int)r26.y;
    r11.x = (int)r26.w | (int)r11.x;
    r21.xyz = r11.xxx ? float3(1,1,0) : r21.xyz;
    r27.x = dot(r35.xyz, r20.xyz);
    r27.y = dot(r35.xyz, r29.xyz);
    r27.z = dot(r35.xyz, r22.xyz);
    r23.xyz = saturate(r27.xyz * r23.xyz + float3(0.5,0.5,0.5));
    r24.z = r25.x;
    r23.xyz = r23.xyz * r24.xyz + r25.yzw;
    r28.x = dot(r2.xyz, r20.xyz);
    r28.y = dot(r2.xyz, r29.xyz);
    r28.z = dot(r2.xyz, r22.xyz);
    r20.xyz = cmp(float3(0,0,0) < r28.xyz);
    r12.z = r20.x ? 0 : 0.5;
    r22.xyz = r23.xyz + r12.xyz;
    r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r14.z = r20.y ? 0 : 0.5;
    r20.xyw = r23.xyz + r14.xyz;
    r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
    r15.z = r20.z ? 0 : 0.5;
    r23.xyz = r23.xyz + r15.xyz;
    r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
    r24.xyz = r28.xyz * r28.xyz;
    r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, 6).xyz;
    r26.yzw = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
    r26.yzw = cmp((int3)r26.yzw == int3(2139095040,2139095040,2139095040));
    r11.x = (int)r26.z | (int)r26.y;
    r11.x = (int)r26.w | (int)r11.x;
    r25.xyz = r11.xxx ? float3(1,1,0) : r25.xyz;
    r27.xyzw = r18.xyzw;
    r26.yzw = r19.yzw;
    r11.x = r7.z;
    r12.z = r8.z;
    while (true) {
      if (r12.z == 0) break;
      r12.w = firstbitlow((uint)r12.z);
      r12.w = 1 << (int)r12.w;
      r14.z = (int)r12.w & (int)r12.z;
      if (r14.z != 0) {
        r12.w = ~(int)r12.w;
        r12.z = (int)r12.w & (int)r12.z;
        if (r8.w != 0) {
          r12.w = r9.x;
          r28.xy = r10.xw;
          r14.z = 1;
          while (true) {
            r14.w = cmp((int)r14.z >= (int)r17.z);
            if (r14.w != 0) break;
            r14.w = (int)r9.z + (int)r14.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
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
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(64), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(80), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
            r14.w = dot(r29.xyz, r35.xyz);
            r14.w = saturate(r14.w + r29.w);
            r14.w = r28.x * r14.w;
            r15.z = dot(r32.xyz, r35.xyz);
            r15.z = saturate(r15.z + r32.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r33.xyz, r35.xyz);
            r15.z = saturate(r15.z + r33.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r34.xyz, r35.xyz);
            r15.z = saturate(r15.z + r34.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r36.xyz, r35.xyz);
            r15.z = saturate(r15.z + r36.w);
            r14.w = r15.z * r14.w;
            r15.z = dot(r37.xyz, r35.xyz);
            r15.z = saturate(r15.z + r37.w);
            r28.x = r15.z * r14.w;
            r15.w = (uint)r12.w >> 2;
            if (1 == 0) r16.w = 0; else if (1+2 < 32) {             r16.w = (uint)r12.w << (32-(1 + 2)); r16.w = (uint)r16.w >> (32-1);            } else r16.w = (uint)r12.w >> 2;
            r17.w = (int)r15.w & 2;
            r20.z = max(r28.y, r28.x);
            r14.w = -r14.w * r15.z + 1;
            r14.w = r28.y * r14.w;
            r17.y = r17.w ? r14.w : r20.z;
            r28.xy = r16.ww ? r28.xy : r17.xy;
            r14.z = (int)r14.z + 1;
            r12.w = r15.w;
          }
          r28.y = saturate(r28.y);
          r12.w = r28.y * r9.y;
          r14.z = cmp(0 < r12.w);
          if (r14.z != 0) {
            r29.z = r28.y * r9.y + r26.w;
            r12.w = r12.w * r26.x;
            r28.xzw = r24.xyz * r12.www;
            r32.xyz = r28.zzz * r20.xyw;
            r32.xyz = r22.xyz * r28.xxx + r32.xyz;
            r28.xzw = r23.xyz * r28.www + r32.xyz;
            r32.xyz = r28.xzw * r25.xyz;
            r14.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r32.xyz = r28.xzw * r25.xyz + r27.xyz;
            r14.w = r14.z * r7.y;
            r28.xzw = r21.xyz * r12.www;
            r12.w = dot(r28.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r12.w = r7.y * r14.z + r12.w;
            r12.w = r14.w / r12.w;
            r33.x = r27.w;
            r33.yz = r26.yz;
            r29.xyw = r28.zwx * r12.www + r33.yzx;
            r32.w = r29.w;
          } else {
            r32.xyzw = r27.xyzw;
            r29.xyz = r26.yzw;
          }
          r11.x = -1;
          r27.xyzw = r32.xyzw;
          r26.yzw = r29.xyz;
          break;
        }
      }
    }
    if (r11.x != 0) {
      r18.xyzw = r27.xyzw;
      r19.yzw = r26.yzw;
      r7.z = -1;
      break;
    }
    r7.w = (int)r7.w + 32;
    r18.xyzw = r27.xyzw;
    r19.yzw = r26.yzw;
    r7.z = r11.x;
  }
  if (r7.z == 0) {
    r7.z = numRefProbes + -numOverrideProbes;
    r7.w = (int)r7.z & -32;
    r8.x = (int)-r7.w + (int)r7.z;
    r8.y = numRefProbes & -32;
    r8.z = (int)-r8.y + numRefProbes;
    r9.xy = float2(0,0);
    r10.w = 0;
    r12.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.x = 1;
    r17.xy = float2(0,0);
    r20.xy = float2(0,0);
    r21.xyzw = r18.xyzw;
    r22.yzw = r19.yzw;
    r8.w = r7.w;
    while (true) {
      r9.w = cmp((uint)r8.w >= numRefProbes);
      if (r9.w != 0) break;
      r9.z = (uint)r8.w >> 5;
      r10.xyz = (int3)r9.xyz + (int3)r16.xyz;
      r9.z = visibleProbes.Load(r10.xyzw).x;
      r9.w = cmp((int)r7.w == (int)r8.w);
      bitmask.x = ((~(-1 << r8.x)) << 0) & 0xffffffff;  r10.x = (((uint)0 << 0) & bitmask.x) | ((uint)r9.z & ~bitmask.x);
      r9.z = r9.w ? r10.x : r9.z;
      r9.w = cmp((int)r8.y == (int)r8.w);
      if (r8.z == 0) r10.x = 0; else if (r8.z+0 < 32) {       r10.x = (uint)r9.z << (32-(r8.z + 0)); r10.x = (uint)r10.x >> (32-r8.z);      } else r10.x = (uint)r9.z >> 0;
      r9.z = r9.w ? r10.x : r9.z;
      r9.w = (int)r8.w + numLights;
      r23.xyzw = r21.xyzw;
      r24.xyz = r22.yzw;
      r10.x = r9.z;
      while (true) {
        if (r10.x == 0) break;
        r10.y = firstbitlow((uint)r10.x);
        r10.z = 1 << (int)r10.y;
        r11.x = (int)r10.z & (int)r10.x;
        if (r11.x != 0) {
          r10.x = (int)r10.z ^ (int)r10.x;
          r10.z = (int)r9.w + (int)r10.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r10.z, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r10.z, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v6.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r10.z = r25.y ? r25.x : 0;
          r10.z = r25.z ? r10.z : 0;
          if (r10.z != 0) {
            r10.y = (int)r8.w + (int)r10.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.y, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r10.y, l(96), t15.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.y, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v6.xyz + -r25.yzw;
            r10.z = (int)r26.w & 0x0000ffff;
            if (6 == 0) r11.x = 0; else if (6+25 < 32) {             r11.x = (uint)r26.w << (32-(6 + 25)); r11.x = (uint)r11.x >> (32-6);            } else r11.x = (uint)r26.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r10.z, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r10.z, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r10.z, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r10.z, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r10.z, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r10.z, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r12.w = dot(r28.xyz, r27.xyz);
            r12.w = saturate(r12.w + r28.w);
            r14.w = dot(r29.xyz, r27.xyz);
            r14.w = saturate(r14.w + r29.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r32.xyz, r27.xyz);
            r14.w = saturate(r14.w + r32.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r33.xyz, r27.xyz);
            r14.w = saturate(r14.w + r33.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r34.xyz, r27.xyz);
            r14.w = saturate(r14.w + r34.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r35.xyz, r27.xyz);
            r14.w = saturate(r14.w + r35.w);
            r12.x = r14.w * r12.w;
            r12.w = (int)r15.z & 1;
            r12.xw = r12.ww ? r12.xy : r12.zx;
            r14.w = r15.z;
            r28.xy = r12.xw;
            r16.w = 1;
            while (true) {
              r17.w = cmp((int)r16.w >= (int)r11.x);
              if (r17.w != 0) break;
              r17.w = (int)r10.z + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
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
              r17.w = dot(r29.xyz, r27.xyz);
              r17.w = saturate(r17.w + r29.w);
              r17.w = r28.x * r17.w;
              r20.w = dot(r32.xyz, r27.xyz);
              r20.w = saturate(r20.w + r32.w);
              r17.w = r20.w * r17.w;
              r20.w = dot(r33.xyz, r27.xyz);
              r20.w = saturate(r20.w + r33.w);
              r17.w = r20.w * r17.w;
              r20.w = dot(r34.xyz, r27.xyz);
              r20.w = saturate(r20.w + r34.w);
              r17.w = r20.w * r17.w;
              r20.w = dot(r35.xyz, r27.xyz);
              r20.w = saturate(r20.w + r35.w);
              r17.w = r20.w * r17.w;
              r20.w = dot(r36.xyz, r27.xyz);
              r20.w = saturate(r20.w + r36.w);
              r28.x = r20.w * r17.w;
              r25.w = (uint)r14.w >> 2;
              if (1 == 0) r27.w = 0; else if (1+2 < 32) {               r27.w = (uint)r14.w << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);              } else r27.w = (uint)r14.w >> 2;
              r28.z = (int)r25.w & 2;
              r28.w = max(r28.y, r28.x);
              r17.w = -r17.w * r20.w + 1;
              r17.w = r28.y * r17.w;
              r15.y = r28.z ? r17.w : r28.w;
              r28.xy = r27.ww ? r28.xy : r15.xy;
              r16.w = (int)r16.w + 1;
              r14.w = r25.w;
            }
            r28.y = saturate(r28.y);
            r10.z = r28.y * r15.w;
            r11.x = cmp(0 < r10.z);
            if (r11.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.y, l(16), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.y, l(32), t15.yxwz
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.y, l(48), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.y, l(64), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.y, l(80), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.y, l(132), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r10.y, l(148), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r10.y, l(164), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r10.y, l(180), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r10.y, l(196), t15.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r10.y, l(212), t15.xyxx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
              r24.z = r28.y * r15.w + r24.z;
              r10.y = r10.z * r26.z;
              r26.z = r36.z;
              r10.z = dot(r13.xyz, r26.xyz);
              r11.x = dot(r27.xyz, r26.xyz);
              r11.x = r11.x + -r36.w;
              r12.x = cmp(r11.x >= 0);
              r11.x = max(abs(r11.x), r7.x);
              r11.x = r12.x ? r11.x : -r11.x;
              r10.z = max(1.00000001e-07, -r10.z);
              r10.z = r11.x / r10.z;
              r10.z = min(131072, abs(r10.z));
              r36.z = r37.z;
              r11.x = dot(r13.xyz, r36.xyz);
              r12.x = dot(r27.xyz, r36.xyz);
              r12.x = r12.x + -r37.w;
              r12.w = cmp(r12.x >= 0);
              r12.x = max(abs(r12.x), r7.x);
              r12.x = r12.w ? r12.x : -r12.x;
              r11.x = max(1.00000001e-07, -r11.x);
              r11.x = r12.x / r11.x;
              r10.z = min(abs(r11.x), r10.z);
              r37.z = r38.z;
              r11.x = dot(r13.xyz, r37.xyz);
              r12.x = dot(r27.xyz, r37.xyz);
              r12.x = r12.x + -r38.w;
              r12.w = cmp(r12.x >= 0);
              r12.x = max(abs(r12.x), r7.x);
              r12.x = r12.w ? r12.x : -r12.x;
              r11.x = max(1.00000001e-07, -r11.x);
              r11.x = r12.x / r11.x;
              r10.z = min(abs(r11.x), r10.z);
              r38.z = r39.z;
              r11.x = dot(r13.xyz, r38.xyz);
              r12.x = dot(r27.xyz, r38.xyz);
              r12.x = r12.x + -r39.w;
              r12.w = cmp(r12.x >= 0);
              r12.x = max(abs(r12.x), r7.x);
              r12.x = r12.w ? r12.x : -r12.x;
              r11.x = max(1.00000001e-07, -r11.x);
              r11.x = r12.x / r11.x;
              r10.z = min(abs(r11.x), r10.z);
              r39.z = r40.x;
              r11.x = dot(r13.xyz, r39.xyz);
              r12.x = dot(r27.xyz, r39.xyz);
              r12.x = r12.x + -r40.y;
              r12.w = cmp(r12.x >= 0);
              r12.x = max(abs(r12.x), r7.x);
              r12.x = r12.w ? r12.x : -r12.x;
              r11.x = max(1.00000001e-07, -r11.x);
              r11.x = r12.x / r11.x;
              r10.z = min(abs(r11.x), r10.z);
              r41.zw = r40.zw;
              r11.x = dot(r13.zxy, r41.xzw);
              r12.x = dot(r27.zxy, r41.xzw);
              r12.x = r12.x + -r41.y;
              r12.w = cmp(r12.x >= 0);
              r12.x = max(abs(r12.x), r7.x);
              r12.x = r12.w ? r12.x : -r12.x;
              r11.x = max(1.00000001e-07, -r11.x);
              r11.x = r12.x / r11.x;
              r10.z = min(abs(r11.x), r10.z);
              r26.x = r33.w;
              r26.yz = r34.zw;
              r15.yzw = r26.xyz + r27.xyz;
              r15.yzw = r13.xyz * r10.zzz + r15.yzw;
              r11.x = dot(r15.yzw, r15.yzw);
              r11.x = sqrt(r11.x);
              r10.z = r10.z / r11.x;
              r10.z = r10.z + r10.z;
              r10.z = sqrt(r10.z);
              r10.z = r1.w * 5 + r10.z;
              r10.z = -0.844799995 + r10.z;
              r25.y = r29.z;
              r25.z = r32.x;
              r36.x = dot(r15.yzw, r25.xyz);
              r26.xy = r29.xw;
              r26.z = r32.w;
              r36.y = dot(r15.yzw, r26.xyz);
              r32.x = r29.y;
              r36.z = dot(r15.yzw, r32.xyz);
              if (9 == 0) r11.x = 0; else if (9+16 < 32) {               r11.x = (uint)r26.w << (32-(9 + 16)); r11.x = (uint)r11.x >> (32-9);              } else r11.x = (uint)r26.w >> 16;
              r36.w = (uint)r11.x;
              r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r10.z).xyz;
              r28.xzw = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
              r28.xzw = cmp((int3)r28.xzw == int3(2139095040,2139095040,2139095040));
              r10.z = (int)r28.z | (int)r28.x;
              r10.z = (int)r28.w | (int)r10.z;
              r15.yzw = r10.zzz ? float3(1,1,0) : r15.yzw;
              r29.x = dot(r27.xyz, r25.xyz);
              r29.y = dot(r27.xyz, r26.xyz);
              r29.z = dot(r27.xyz, r32.xyz);
              r27.xyz = saturate(r29.xyz * r33.xyz + float3(0.5,0.5,0.5));
              r34.z = r35.x;
              r27.xyz = r27.xyz * r34.xyz + r35.yzw;
              r36.x = dot(r2.xyz, r25.xyz);
              r36.y = dot(r2.xyz, r26.xyz);
              r36.z = dot(r2.xyz, r32.xyz);
              r25.xyz = cmp(float3(0,0,0) < r36.xyz);
              r14.z = r25.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r14.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xzw = r36.xyz * r36.xyz;
              r28.xzw = r28.xzw * r10.yyy;
              r17.z = r25.y ? 0 : 0.5;
              r25.xyw = r27.xyz + r17.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r28.zzz;
              r25.xyw = r26.xyz * r28.xxx + r25.xyw;
              r20.z = r25.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r20.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r25.xyz = r26.xyz * r28.www + r25.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
              r27.xyz = (int3)r26.xyz & int3(-2147483648,-2147483648,-2147483648);
              r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
              r10.z = (int)r27.y | (int)r27.x;
              r10.z = (int)r27.z | (int)r10.z;
              r26.xyz = r10.zzz ? float3(1,1,0) : r26.xyz;
              r27.xyz = r26.xyz * r25.xyz;
              r10.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r23.xyz = r25.xyz * r26.xyz + r23.xyz;
              r11.x = r10.z * r7.y;
              r15.yzw = r15.yzw * r10.yyy;
              r10.y = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r10.y = r7.y * r10.z + r10.y;
              r10.y = r11.x / r10.y;
              r25.x = r23.w;
              r25.yz = r24.xy;
              r24.xyw = r15.zwy * r10.yyy + r25.yzx;
              r23.w = r24.w;
            }
          }
        }
      }
      r21.xyzw = r23.xyzw;
      r22.yzw = r24.xyz;
      r8.w = (int)r8.w + 32;
    }
    r8.y = cmp(r22.w < 1);
    if (r8.y != 0) {
      r9.xy = float2(0,0);
      r10.w = 0;
      r12.yz = float2(0,1);
      r14.xy = float2(0,0);
      r15.x = 1;
      r17.xy = float2(0,0);
      r20.xy = float2(0,0);
      r23.x = r21.w;
      r23.yzw = r22.yzw;
      r8.yzw = r21.xyz;
      r9.w = r22.w;
      r11.x = 0;
      while (true) {
        r12.w = cmp((uint)r11.x >= (uint)r7.z);
        if (r12.w != 0) break;
        r9.z = (uint)r11.x >> 5;
        r10.xyz = (int3)r9.xyz + (int3)r16.xyz;
        r9.z = visibleProbes.Load(r10.xyzw).x;
        r10.x = cmp((int)r7.w == (int)r11.x);
        if (r8.x == 0) r10.y = 0; else if (r8.x+0 < 32) {         r10.y = (uint)r9.z << (32-(r8.x + 0)); r10.y = (uint)r10.y >> (32-r8.x);        } else r10.y = (uint)r9.z >> 0;
        r9.z = r10.x ? r10.y : r9.z;
        r10.x = (int)r11.x + numLights;
        r24.xyzw = r23.xyzw;
        r25.xyz = r8.yzw;
        r10.y = r9.w;
        r10.z = r9.z;
        while (true) {
          if (r10.z == 0) break;
          r12.w = firstbitlow((uint)r10.z);
          r14.w = 1 << (int)r12.w;
          r15.z = (int)r10.z & (int)r14.w;
          if (r15.z != 0) {
            r10.z = (int)r10.z ^ (int)r14.w;
            r14.w = (int)r10.x + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(0), t11.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xy, r14.w, l(16), t11.xyxx
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
            r26.xyz = -v6.xyz + r26.xyz;
            r27.z = r26.w;
            r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
            r14.w = r26.y ? r26.x : 0;
            r14.w = r26.z ? r14.w : 0;
            if (r14.w != 0) {
              r12.w = (int)r11.x + (int)r12.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(0), t15.wxyz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r12.w, l(96), t15.xxxy
            r15.z = samp0[]..swiz;
            r15.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(116), t15.zwxy
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
              r28.xyz = v6.xyz + -r26.yzw;
              r14.w = (int)r27.w & 0x0000ffff;
              if (6 == 0) r16.w = 0; else if (6+25 < 32) {               r16.w = (uint)r27.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);              } else r16.w = (uint)r27.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
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
              r17.w = dot(r29.xyz, r28.xyz);
              r17.w = saturate(r17.w + r29.w);
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
              r12.x = r19.w * r17.w;
              r17.w = (int)r15.z & 1;
              r29.xy = r17.ww ? r12.xy : r12.zx;
              r12.x = r15.z;
              r32.xy = r29.xy;
              r17.w = 1;
              while (true) {
                r19.w = cmp((int)r17.w >= (int)r16.w);
                if (r19.w != 0) break;
                r19.w = (int)r14.w + (int)r17.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(0), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(16), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(32), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(48), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r19.w, l(64), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r19.w, l(80), t16.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
                r19.w = dot(r33.xyz, r28.xyz);
                r19.w = saturate(r19.w + r33.w);
                r19.w = r32.x * r19.w;
                r20.w = dot(r34.xyz, r28.xyz);
                r20.w = saturate(r20.w + r34.w);
                r19.w = r20.w * r19.w;
                r20.w = dot(r35.xyz, r28.xyz);
                r20.w = saturate(r20.w + r35.w);
                r19.w = r20.w * r19.w;
                r20.w = dot(r36.xyz, r28.xyz);
                r20.w = saturate(r20.w + r36.w);
                r19.w = r20.w * r19.w;
                r20.w = dot(r37.xyz, r28.xyz);
                r20.w = saturate(r20.w + r37.w);
                r19.w = r20.w * r19.w;
                r20.w = dot(r38.xyz, r28.xyz);
                r20.w = saturate(r20.w + r38.w);
                r32.x = r20.w * r19.w;
                r25.w = (uint)r12.x >> 2;
                if (1 == 0) r26.w = 0; else if (1+2 < 32) {                 r26.w = (uint)r12.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);                } else r26.w = (uint)r12.x >> 2;
                r28.w = (int)r25.w & 2;
                r29.z = max(r32.y, r32.x);
                r19.w = -r19.w * r20.w + 1;
                r19.w = r32.y * r19.w;
                r15.y = r28.w ? r19.w : r29.z;
                r32.xy = r26.ww ? r32.xy : r15.xy;
                r17.w = (int)r17.w + 1;
                r12.x = r25.w;
              }
              r12.x = saturate(r32.y + -r10.y);
              r14.w = r12.x * r15.w;
              r15.y = cmp(0 < r14.w);
              if (r15.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(16), t15.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(32), t15.yxwz
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(48), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(64), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(80), t15.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(132), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(148), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(164), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r12.w, l(180), t15.zwxy
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(196), t15.xyzw
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xy, r12.w, l(212), t15.xyxx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
                r24.w = r12.x * r15.w + r24.w;
                r12.x = r14.w * r27.z;
                r27.z = r37.z;
                r12.w = dot(r13.xyz, r27.xyz);
                r14.w = dot(r28.xyz, r27.xyz);
                r14.w = r14.w + -r37.w;
                r15.y = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r7.x);
                r14.w = r15.y ? r14.w : -r14.w;
                r12.w = max(1.00000001e-07, -r12.w);
                r12.w = r14.w / r12.w;
                r12.w = min(131072, abs(r12.w));
                r37.z = r38.z;
                r14.w = dot(r13.xyz, r37.xyz);
                r15.y = dot(r28.xyz, r37.xyz);
                r15.y = r15.y + -r38.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r7.x);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r38.z = r39.z;
                r14.w = dot(r13.xyz, r38.xyz);
                r15.y = dot(r28.xyz, r38.xyz);
                r15.y = r15.y + -r39.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r7.x);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r39.z = r40.z;
                r14.w = dot(r13.xyz, r39.xyz);
                r15.y = dot(r28.xyz, r39.xyz);
                r15.y = r15.y + -r40.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r7.x);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r40.z = r41.x;
                r14.w = dot(r13.xyz, r40.xyz);
                r15.y = dot(r28.xyz, r40.xyz);
                r15.y = r15.y + -r41.y;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r7.x);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r42.zw = r41.zw;
                r14.w = dot(r13.zxy, r42.xzw);
                r15.y = dot(r28.zxy, r42.xzw);
                r15.y = r15.y + -r42.y;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r7.x);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r12.w = min(abs(r14.w), r12.w);
                r27.x = r34.w;
                r27.yz = r35.zw;
                r15.yzw = r27.xyz + r28.xyz;
                r15.yzw = r13.xyz * r12.www + r15.yzw;
                r14.w = dot(r15.yzw, r15.yzw);
                r14.w = sqrt(r14.w);
                r12.w = r12.w / r14.w;
                r12.w = r12.w + r12.w;
                r12.w = sqrt(r12.w);
                r12.w = r1.w * 5 + r12.w;
                r12.w = -0.844799995 + r12.w;
                r26.y = r29.z;
                r26.z = r33.x;
                r37.x = dot(r15.yzw, r26.xyz);
                r27.xy = r29.xw;
                r27.z = r33.w;
                r37.y = dot(r15.yzw, r27.xyz);
                r33.x = r29.y;
                r37.z = dot(r15.yzw, r33.xyz);
                if (9 == 0) r14.w = 0; else if (9+16 < 32) {                 r14.w = (uint)r27.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);                } else r14.w = (uint)r27.w >> 16;
                r37.w = (uint)r14.w;
                r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, r12.w).xyz;
                r29.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r12.w = (int)r29.y | (int)r29.x;
                r12.w = (int)r29.z | (int)r12.w;
                r15.yzw = r12.www ? float3(1,1,0) : r15.yzw;
                r29.x = dot(r28.xyz, r26.xyz);
                r29.y = dot(r28.xyz, r27.xyz);
                r29.z = dot(r28.xyz, r33.xyz);
                r28.xyz = saturate(r29.xyz * r34.xyz + float3(0.5,0.5,0.5));
                r35.z = r36.x;
                r28.xyz = r28.xyz * r35.xyz + r36.yzw;
                r37.x = dot(r2.xyz, r26.xyz);
                r37.y = dot(r2.xyz, r27.xyz);
                r37.z = dot(r2.xyz, r33.xyz);
                r26.xyz = cmp(float3(0,0,0) < r37.xyz);
                r14.z = r26.x ? 0 : 0.5;
                r27.xyz = r28.xyz + r14.xyz;
                r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r29.xyz = r37.xyz * r37.xyz;
                r29.xyz = r29.xyz * r12.xxx;
                r17.z = r26.y ? 0 : 0.5;
                r26.xyw = r28.xyz + r17.xyz;
                r26.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r26.xyw, 0).xyz;
                r26.xyw = r26.xyw * r29.yyy;
                r26.xyw = r27.xyz * r29.xxx + r26.xyw;
                r20.z = r26.z ? 0 : 0.5;
                r27.xyz = r28.xyz + r20.xyz;
                r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
                r26.xyz = r27.xyz * r29.zzz + r26.xyw;
                r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, 6).xyz;
                r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
                r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
                r12.w = (int)r28.y | (int)r28.x;
                r12.w = (int)r28.z | (int)r12.w;
                r27.xyz = r12.www ? float3(1,1,0) : r27.xyz;
                r28.xyz = r27.xyz * r26.xyz;
                r12.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r25.xyz = r26.xyz * r27.xyz + r25.xyz;
                r14.z = r12.w * r7.y;
                r15.yzw = r15.yzw * r12.xxx;
                r12.x = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r12.x = r7.y * r12.w + r12.x;
                r12.x = r14.z / r12.x;
                r24.xyz = r15.yzw * r12.xxx + r24.xyz;
              }
            }
          }
        }
        r23.xyzw = r24.xyzw;
        r8.yzw = r25.xyz;
        r11.x = (int)r11.x + 32;
      }
      r22.xyzw = r23.zxyw;
      r21.xyz = r8.yzw;
      r22.xyzw = r22.yzxw;
    } else {
      r22.x = r21.w;
    }
    r1.w = max(1, r22.w);
    r1.w = rcp(r1.w);
    r22.w = saturate(r22.w);
    r18.xyz = r21.xyz * r1.www;
    r19.xyz = r22.xyz * r1.www;
    r7.x = cmp(r22.w < 0.99000001);
    if (r7.x != 0) {
      r7.x = 1 + -r22.w;
      r7.y = sunConstants.globalProbeExposure * r7.x;
      r8.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r9.x = globalProbeConstants.data[0].w * r8.x;
      r9.yz = globalProbeConstants.data[1].xy * r8.yz;
      r8.xyz = saturate(float3(0.5,0.5,0.5) + r9.xyz);
      r9.xy = globalProbeConstants.data[1].zw * r8.xy;
      r9.z = globalProbeConstants.data[2].x * r8.z;
      r8.xyz = globalProbeConstants.data[2].yzw + r9.xyz;
      r9.xyz = cmp(float3(0,0,0) < r2.xyz);
      r9.xyz = r9.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r9.w = 0;
      r10.xyz = r9.wwx + r8.xyz;
      r10.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
      r12.xyz = r2.xyz * r2.xyz;
      r7.yzw = r12.xyz * r7.yyy;
      r12.xyz = r9.wwy + r8.xyz;
      r12.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
      r12.xyz = r12.xyz * r7.zzz;
      r10.xyz = r10.xyz * r7.yyy + r12.xyz;
      r8.xyz = r9.wwz + r8.xyz;
      r8.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r8.xyz, 0).xyz;
      r7.yzw = r8.xyz * r7.www + r10.xyz;
      r2.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
      r2.xyz = r7.yzw * r2.xyz;
      r2.w = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r18.xyz = r21.xyz * r1.www + r2.xyz;
      r13.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r5.w).xyz;
      r1.w = sunConstants.globalProbeExposure * r7.x + -r2.w;
      r1.w = r5.y * r1.w + r2.w;
      r19.xyz = r2.xyz * r1.www + r19.xyz;
    }
  } else {
    r19.x = r18.w;
  }
  r2.xyz = r18.xyz * r0.www + r11.yzw;
  r5.xy = r5.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.xy, 0).xy;
  r7.xyz = r19.xyz * r0.www;
  r8.xyz = r7.xyz * r5.xxx + r30.xyz;
  r5.xyw = r7.xyz * r5.yyy + r31.xyz;
  r7.xyz = float3(1,1,1) + -r4.yzw;
  r7.xyz = r8.xyz * r7.xyz;
  r4.yzw = r5.xyw * r4.yzw + r7.xyz;
  r0.xyz = r2.xyz * r0.xyz + r4.yzw;
  r2.xy = (int2)v0.xy;
  r2.zw = float2(0,0);
  r0.w = floatZSampler.Load(r2.xyz).x;
  r1.w = cmp(r0.w >= 0.984375);
  r2.x = 1.01587307 * r0.w;
  r0.w = r0.w * 64 + -63;
  r0.w = r1.w ? r0.w : r2.x;
  r0.w = max(9.99999994e-09, r0.w);
  r0.w = rcp(r0.w);
  r1.w = cmp(zFeather == 0.000000);
  r2.x = 1 / zFeather;
  r1.w = r1.w ? 60000 : r2.x;
  r0.w = r0.w + -r5.z;
  r0.w = saturate(r0.w * r1.w);
  r1.w = cmp(r0.w < 1);
  if (r1.w != 0) {
    r1.w = edgeColorMap.Sample(colorSampler_s, w1.xy).w;
    r2.xyzw = edgeEmissiveMap.Sample(colorSampler_s, w1.xy).xyzw;
    r2.xyz = r2.xyz * r2.www;
    r4.y = r3.w + -r1.w;
    r1.w = r0.w * r4.y + r1.w;
    r5.xyzw = r6.xyzw + -r2.xyzw;
    r6.xyzw = r0.wwww * r5.xyzw + r2.xyzw;
    r0.w = 0.200000003 + r0.w;
    r0.w = min(1, r0.w);
    r3.w = r1.w * r0.w;
  }
  r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = max(9.99999975e-05, r0.w);
  r0.w = max(relHDRExposure.x, r0.w);
  r0.w = hdrScale * r0.w;
  r0.xyz = r6.xyz * r0.www + r0.xyz;
  r0.w = saturate(r0.w / relHDRExposure.x);
  r0.w = r0.w * r6.w;
  r1.w = alphaMask.Sample(colorSampler_s, v7.xy).x;
  r2.xyz = relHDRExposure.xxx * r1.xyz;
  r0.w = saturate(r0.w * r4.x + r3.w);
  r0.w = shieldOpacity * r0.w;
  r0.w = r0.w * r1.w;
  r0.xyz = -r1.xyz * relHDRExposure.xxx + r0.xyz;
  r0.xyz = r0.www * r0.xyz + r2.xyz;
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
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v6.z;
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