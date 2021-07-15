// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:33 2021

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
  float detailScaleHeight : packoffset(c11.z);
  float scriptReplacement1 : packoffset(c11.w);
  float scriptReplacement2 : packoffset(c12);
  float alphaRevealRamp : packoffset(c12.y);
  float alphaRevealSoftEdge : packoffset(c12.z);
  float hdrScale : packoffset(c12.w);
  bool enableGTAO : packoffset(c13);
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
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
Texture2D<float4> thicknessMap : register(t3);
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
Texture2D<float> gSSAOTexture : register(t27);
Texture2D<float4> detailMap : register(t29);
Texture2D<float4> veinMap : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
Texture2DArray<float4> materialTexBC7 : register(t42);
Texture2DArray<float4> materialTexBC3 : register(t43);
Texture2DArray<float4> materialTexBC7linear : register(t44);
Texture2DArray<float4> materialTexMask : register(t45);


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
  out float3 o0 : SV_TARGET0,
  out float3 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
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
// unknown dcl_: dcl_resource_structured t36, 128
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65,r66,r67,r68,r69;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  r0.xyzw = colorMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.y = glossRange.y + -glossRange.x;
  r1.x = r1.x * r1.y + glossRange.x;
  r1.x = saturate(0.0588235296 * r1.x);
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r1.zw = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r3.z = sqrt(r2.x);
  r2.x = r2.z * r2.z;
  r2.x = 0.333333343 * r2.x;
  r2.x = min(1, r2.x);
  r2.yz = detailScale.xy * w1.xy;
  r2.yzw = detailMap.Sample(normalSampler_s, r2.yz).xyz;
  r2.yz = r2.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = r2.w * r2.w;
  r2.w = 0.333333343 * r2.w;
  r2.w = min(1, r2.w);
  r3.xy = r2.yz * detailScaleHeight + r1.zw;
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r3.xyz * r1.zzz;
  r1.z = r2.w * detailScaleHeight + r2.x;
  r1.w = v7.x ? 1 : -1;
  r2.x = dot(v3.xyz, v3.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v3.xyz * r2.xxx;
  r2.xyz = r2.xyz * r1.www;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = v4.xyz * r2.www;
  r4.xyz = r4.xyz * r1.www;
  r2.w = dot(v5.xyz, v5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = v5.xyz * r2.www;
  r5.xyz = r5.xyz * r1.www;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.z + r1.x;
  r1.x = log2(r1.x);
  r5.xyz = r5.xyz * r3.yyy;
  r3.xyw = r4.xyz * r3.xxx + r5.xyz;
  r2.xyz = r2.xyz * r3.zzz + r3.xyw;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r1.y = debugGlossOverride.x * r1.y + glossRange.x;
  r1.xy = saturate(float2(-0.0588235296,0.0588235296) * r1.xy);
  r1.y = -17 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r1.z + r1.y;
  r1.y = log2(r1.y);
  r1.y = saturate(-0.0588235296 * r1.y);
  r1.z = cmp(0 < debugStreamerControl.w);
  if (r1.z != 0) {
    r1.z = (int)debugStreamerControl.w;
    r2.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r3.x = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.w = cmp(r2.w < r3.x);
    r3.x = cmp(0 < r3.x);
    r3.yzw = (int3)r1.zzz & int3(1,2,4);
    r4.xyz = r3.yyy ? float3(1,0,1) : r0.xyz;
    r5.xyz = r3.zzz ? float3(0,1,1) : r0.xyz;
    r3.xyz = r3.xxx ? r4.xyz : r5.xyz;
    r4.xyz = r3.www ? float3(0,1,0) : r0.xyz;
    r0.xyz = r2.www ? r3.xyz : r4.xyz;
  }
  r3.xyz = debugColorOverride.xyz + -r0.xyz;
  r0.xyz = debugColorOverride.www * r3.xyz + r0.xyz;
  r1.z = debugAlphaOverride.x + -r0.w;
  r0.w = debugAlphaOverride.w * r1.z + r0.w;
  r1.y = r1.y + -r1.x;
  r1.x = debugGlossOverride.w * r1.y + r1.x;
  r3.xyz = v7.xxx ? v3.xyz : -v3.xyz;
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r3.xyz = r3.xyz * r1.yyy + -r2.xyz;
  r2.xyz = debugNormalOverride.www * r3.xyz + r2.xyz;
  r1.y = thicknessMap.Sample(colorSampler_s, w1.xy).x;
  r1.y = 1 + -r1.y;
  r3.xyz = float3(1,0.5,0.5) * r1.yyy;
  r1.y = dot(r0.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r4.xyzw = veinMap.Sample(colorSampler_s, w1.xy).xyzw;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r5.xy, v2.x, l(4), t4.xyxx
r5.x = samp0[]..swiz;
r5.y = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r5.xz, r5.x, l(16), t0.yxxx
r5.x = samp0[]..swiz;
r5.z = samp0[]..swiz;
  r5.x = saturate(r5.x);
  r6.xyz = r1.yyy + -r0.xyz;
  r0.xyz = r5.zzz * r6.xyz + r0.xyz;
  r1.y = 0.998000026 + -r5.x;
  r1.y = max(0, r1.y);
  r1.z = saturate(alphaRevealRamp);
  r2.w = log2(r5.x);
  r2.w = r2.w * r1.z;
  r2.w = exp2(r2.w);
  r6.x = -r2.w;
  r2.w = log2(r1.y);
  r1.z = r2.w * r1.z;
  r6.y = exp2(r1.z);
  r1.yz = saturate(alphaRevealSoftEdge * r6.xy + r1.yy);
  r2.w = r4.w + -r1.y;
  r1.y = r1.z + -r1.y;
  r1.y = saturate(r2.w / r1.y);
  r6.xyzw = renderTargetSize.zwzw * v0.xyxy;
  if (enableGTAO != 0) {
    r7.xyz = viewMatrix._m10_m11_m12 * v3.yyy;
    r7.xyz = v3.xxx * viewMatrix._m00_m01_m02 + r7.xyz;
    r7.xyz = v3.zzz * viewMatrix._m20_m21_m22 + r7.xyz;
    r1.z = dot(r7.xyz, r7.xyz);
    r1.z = rsqrt(r1.z);
    r7.xyz = r7.xyz * r1.zzz;
    r1.z = 0.5 * gameTick.w;
    r5.zw = viewSpaceScaleBias.xy * r6.zw + -viewSpaceScaleBias.zw;
    r8.xy = v0.ww * r5.zw;
    r2.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
    r2.w = frac(r2.w);
    r2.w = 52.9829178 * r2.w;
    r2.w = frac(r2.w);
    r1.z = r2.w * 3.14159989 + r1.z;
    sincos(r1.z, r9.x, r10.x);
    r11.xyzw = float4(4.16666698,4.16666698,16.6666679,16.6666679) * renderTargetSize.zwzw;
    r10.y = r9.x;
    r9.xyzw = r11.xyzw * r10.xyxy + r6.zwzw;
    r12.xyzw = renderTargetSize.xyxy * r9.xyzw;
    r13.xy = (int2)r12.xy;
    r13.zw = float2(0,0);
    r1.z = floatZSampler.Load(r13.xyz).x;
    r2.w = cmp(r1.z >= 0.984375);
    r3.w = 1.01587307 * r1.z;
    r1.z = r1.z * 64 + -63;
    r1.z = r2.w ? r1.z : r3.w;
    r1.z = max(9.99999994e-09, r1.z);
    r13.z = rcp(r1.z);
    r9.xyzw = viewSpaceScaleBias.xyxy * r9.xyzw + -viewSpaceScaleBias.zwzw;
    r13.xy = r13.zz * r9.xy;
    r8.z = v0.w;
    r13.xyz = r13.xyz + -r8.xyz;
    r1.z = dot(r13.xyz, r13.xyz);
    r1.z = rsqrt(r1.z);
    r1.z = -r13.z * r1.z;
    r1.z = max(-1, r1.z);
    r12.xy = (int2)r12.zw;
    r12.zw = float2(0,0);
    r2.w = floatZSampler.Load(r12.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r4.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r4.w;
    r2.w = max(9.99999994e-09, r2.w);
    r12.z = rcp(r2.w);
    r12.xy = r12.zz * r9.zw;
    r9.xyz = r12.xyz + -r8.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r9.z * r2.w;
    r1.z = max(r2.w, r1.z);
    r9.xyzw = float4(37.5,37.5,66.6666718,66.6666718) * renderTargetSize.zwzw;
    r12.xyzw = r9.xyzw * r10.xyxy + r6.zwzw;
    r13.xyzw = renderTargetSize.xyxy * r12.xyzw;
    r14.xy = (int2)r13.xy;
    r14.zw = float2(0,0);
    r2.w = floatZSampler.Load(r14.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r4.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r4.w;
    r2.w = max(9.99999994e-09, r2.w);
    r14.z = rcp(r2.w);
    r12.xyzw = viewSpaceScaleBias.xyxy * r12.xyzw + -viewSpaceScaleBias.zwzw;
    r14.xy = r14.zz * r12.xy;
    r14.xyz = r14.xyz + -r8.xyz;
    r2.w = dot(r14.xyz, r14.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r14.z * r2.w;
    r1.z = max(r2.w, r1.z);
    r13.xy = (int2)r13.zw;
    r13.zw = float2(0,0);
    r2.w = floatZSampler.Load(r13.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r4.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r4.w;
    r2.w = max(9.99999994e-09, r2.w);
    r13.z = rcp(r2.w);
    r13.xy = r13.zz * r12.zw;
    r12.xyz = r13.xyz + -r8.xyz;
    r2.w = dot(r12.xyz, r12.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r12.z * r2.w;
    r1.z = max(r2.w, r1.z);
    r12.xyzw = float4(104.166664,104.166664,150,150) * renderTargetSize.zwzw;
    r13.xyzw = r12.xyzw * r10.xyxy + r6.zwzw;
    r14.xyzw = renderTargetSize.xyxy * r13.xyzw;
    r15.xy = (int2)r14.xy;
    r15.zw = float2(0,0);
    r2.w = floatZSampler.Load(r15.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r4.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r4.w;
    r2.w = max(9.99999994e-09, r2.w);
    r15.z = rcp(r2.w);
    r13.xyzw = viewSpaceScaleBias.xyxy * r13.xyzw + -viewSpaceScaleBias.zwzw;
    r15.xy = r15.zz * r13.xy;
    r15.xyz = r15.xyz + -r8.xyz;
    r2.w = dot(r15.xyz, r15.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r15.z * r2.w;
    r1.z = max(r2.w, r1.z);
    r14.xy = (int2)r14.zw;
    r14.zw = float2(0,0);
    r2.w = floatZSampler.Load(r14.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r4.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r4.w;
    r2.w = max(9.99999994e-09, r2.w);
    r14.z = rcp(r2.w);
    r14.xy = r14.zz * r13.zw;
    r13.xyz = r14.xyz + -r8.xyz;
    r2.w = dot(r13.xyz, r13.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r13.z * r2.w;
    r1.z = max(r2.w, r1.z);
    r11.xyzw = r11.xyzw * -r10.xyxy + r6.zwzw;
    r13.xyzw = renderTargetSize.xyxy * r11.xyzw;
    r13.xyzw = (int4)r13.zwxy;
    r14.xy = r13.zw;
    r14.zw = float2(0,0);
    r2.w = floatZSampler.Load(r14.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r4.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r4.w;
    r2.w = max(9.99999994e-09, r2.w);
    r14.z = rcp(r2.w);
    r11.xyzw = viewSpaceScaleBias.xyxy * r11.xyzw + -viewSpaceScaleBias.zwzw;
    r14.xy = r14.zz * r11.xy;
    r14.xyz = r14.xyz + -r8.xyz;
    r2.w = dot(r14.xyz, r14.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r14.z * r2.w;
    r2.w = max(-1, r2.w);
    r13.zw = float2(0,0);
    r3.w = floatZSampler.Load(r13.xyz).x;
    r4.w = cmp(r3.w >= 0.984375);
    r5.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.w ? r3.w : r5.z;
    r3.w = max(9.99999994e-09, r3.w);
    r13.z = rcp(r3.w);
    r13.xy = r13.zz * r11.zw;
    r11.xyz = r13.xyz + -r8.xyz;
    r3.w = dot(r11.xyz, r11.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r11.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r9.xyzw = r9.xyzw * -r10.xyxy + r6.zwzw;
    r11.xyzw = renderTargetSize.xyxy * r9.xyzw;
    r11.xyzw = (int4)r11.zwxy;
    r13.xy = r11.zw;
    r13.zw = float2(0,0);
    r3.w = floatZSampler.Load(r13.xyz).x;
    r4.w = cmp(r3.w >= 0.984375);
    r5.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.w ? r3.w : r5.z;
    r3.w = max(9.99999994e-09, r3.w);
    r13.z = rcp(r3.w);
    r9.xyzw = viewSpaceScaleBias.xyxy * r9.xyzw + -viewSpaceScaleBias.zwzw;
    r13.xy = r13.zz * r9.xy;
    r13.xyz = r13.xyz + -r8.xyz;
    r3.w = dot(r13.xyz, r13.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r13.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r11.zw = float2(0,0);
    r3.w = floatZSampler.Load(r11.xyz).x;
    r4.w = cmp(r3.w >= 0.984375);
    r5.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.w ? r3.w : r5.z;
    r3.w = max(9.99999994e-09, r3.w);
    r11.z = rcp(r3.w);
    r11.xy = r11.zz * r9.zw;
    r9.xyz = r11.xyz + -r8.xyz;
    r3.w = dot(r9.xyz, r9.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r9.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r9.xyzw = r12.xyzw * -r10.xyxy + r6.xyzw;
    r11.xyzw = renderTargetSize.xyxy * r9.xyzw;
    r11.xyzw = (int4)r11.zwxy;
    r12.xy = r11.zw;
    r12.zw = float2(0,0);
    r3.w = floatZSampler.Load(r12.xyz).x;
    r4.w = cmp(r3.w >= 0.984375);
    r5.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.w ? r3.w : r5.z;
    r3.w = max(9.99999994e-09, r3.w);
    r12.z = rcp(r3.w);
    r9.xyzw = viewSpaceScaleBias.xyxy * r9.xyzw + -viewSpaceScaleBias.zwzw;
    r12.xy = r12.zz * r9.xy;
    r12.xyz = r12.xyz + -r8.xyz;
    r3.w = dot(r12.xyz, r12.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r12.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r11.zw = float2(0,0);
    r3.w = floatZSampler.Load(r11.xyz).x;
    r4.w = cmp(r3.w >= 0.984375);
    r5.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.w ? r3.w : r5.z;
    r3.w = max(9.99999994e-09, r3.w);
    r11.z = rcp(r3.w);
    r11.xy = r11.zz * r9.zw;
    r8.xyz = r11.xyz + -r8.xyz;
    r3.w = dot(r8.xyz, r8.xyz);
    r3.w = rsqrt(r3.w);
    r3.w = -r8.z * r3.w;
    r2.w = max(r3.w, r2.w);
    r5.zw = viewSpaceScaleBias.xy * r10.xy;
    r3.w = dot(r5.zw, r5.zw);
    r3.w = rsqrt(r3.w);
    r8.xy = r5.zw * r3.ww;
    r8.zw = -r8.yy;
    r3.w = dot(r7.yx, r8.xz);
    r7.xy = -r8.wx * r3.ww + r7.xy;
    r3.w = dot(r7.xyz, r7.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r7.zxy * r3.www;
    r3.w = dot(r8.xy, r7.yz);
    r3.w = cmp(r3.w >= 0);
    r3.w = r3.w ? -1 : 1;
    r7.x = saturate(-r7.x);
    r4.w = 1 + -r7.x;
    r4.w = sqrt(r4.w);
    r5.z = r7.x * -0.0187292993 + 0.0742610022;
    r5.z = r5.z * r7.x + -0.212114394;
    r5.z = r5.z * r7.x + 1.57072878;
    r4.w = r5.z * r4.w;
    r5.z = r4.w * r3.w;
    r5.w = 1 + -abs(r1.z);
    r5.w = sqrt(r5.w);
    r6.x = abs(r1.z) * -0.0187292993 + 0.0742610022;
    r6.x = r6.x * abs(r1.z) + -0.212114394;
    r6.x = r6.x * abs(r1.z) + 1.57072878;
    r6.y = r6.x * r5.w;
    r6.y = r6.y * -2 + 3.14159274;
    r1.z = cmp(r1.z < -r1.z);
    r1.z = r1.z ? r6.y : 0;
    r1.z = r6.x * r5.w + r1.z;
    r5.w = 1 + -abs(r2.w);
    r5.w = sqrt(r5.w);
    r6.x = abs(r2.w) * -0.0187292993 + 0.0742610022;
    r6.x = r6.x * abs(r2.w) + -0.212114394;
    r6.x = r6.x * abs(r2.w) + 1.57072878;
    r6.y = r6.x * r5.w;
    r6.y = r6.y * -2 + 3.14159274;
    r2.w = cmp(r2.w < -r2.w);
    r2.w = r2.w ? r6.y : 0;
    r2.w = r6.x * r5.w + r2.w;
    r1.z = -r3.w * r4.w + -r1.z;
    r1.z = max(-1.57079995, r1.z);
    r1.z = r3.w * r4.w + r1.z;
    r2.w = -r3.w * r4.w + r2.w;
    r2.w = min(1.57079995, r2.w);
    r2.w = r3.w * r4.w + r2.w;
    sincos(r5.z, r6.x, r7.x);
    r1.z = r1.z + r1.z;
    r5.w = r1.z * r6.x + r7.x;
    r1.z = -r3.w * r4.w + r1.z;
    r1.z = cos(r1.z);
    r1.z = r5.w + -r1.z;
    r2.w = r2.w + r2.w;
    r5.w = r2.w * r6.x + r7.x;
    r2.w = -r3.w * r4.w + r2.w;
    r2.w = cos(r2.w);
    r2.w = r5.w + -r2.w;
    r2.w = 0.25 * r2.w;
    r1.z = r1.z * 0.25 + r2.w;
    r2.w = r5.z * r6.x + r7.x;
    r1.z = r1.z / r2.w;
  } else {
    r2.w = aoMap.Sample(aoSampler_s, w1.xy).x;
    r3.w = debugOcclusionOverride.x + -r2.w;
    r2.w = debugOcclusionOverride.w * r3.w + r2.w;
    r3.w = gSSAOTexture.SampleLevel(LinearSampler_s, r6.zw, 0).x;
    r1.z = min(r3.w, r2.w);
  }
  r2.w = cmp(v0.z >= 0.984375);
  r3.w = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r2.w = r2.w ? r4.w : r3.w;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r5.zw = (uint2)v0.xy;
  r6.xyz = ddx_coarse(v6.xyz);
  r7.xyz = ddy_coarse(v6.xyz);
  r3.w = numRefProbes + numLights;
  r8.xy = (int2)r5.yy & int2(268435456,536870912);
  if (r8.x != 0) {
    r9.xyz = eyeOffset.xyz + v6.xyz;
    r4.w = 0.0078125 * r2.w;
    r4.w = min(15, r4.w);
    r4.w = (uint)r4.w;
    r10.xy = (uint2)r5.zw >> int2(6,6);
    r10.z = (uint)r4.w << 4;
    r4.w = numStaticDecals & -32;
    r5.y = (int)-r4.w + numStaticDecals;
    r11.xy = float2(0,0);
    r12.w = 0;
    r9.w = 1;
    r8.xzw = float3(0,0,0);
    r13.xyz = float3(0,0,0);
    r14.yz = float2(0,0);
    r6.w = 0;
    while (true) {
      r7.w = cmp((uint)r6.w >= numStaticDecals);
      if (r7.w != 0) break;
      r11.z = (uint)r6.w >> 5;
      r12.xyz = (int3)r10.xyz + (int3)r11.xyz;
      r7.w = visibleDecals.Load(r12.xyzw).x;
      r10.w = cmp((int)r4.w == (int)r6.w);
      if (r5.y == 0) r11.z = 0; else if (r5.y+0 < 32) {       r11.z = (uint)r7.w << (32-(r5.y + 0)); r11.z = (uint)r11.z >> (32-r5.y);      } else r11.z = (uint)r7.w >> 0;
      r7.w = r10.w ? r11.z : r7.w;
      r10.w = (int)r3.w + (int)r6.w;
      r12.xyz = r8.xzw;
      r15.xyz = r13.xzy;
      r16.yz = r14.yz;
      r11.z = r7.w;
      while (true) {
        if (r11.z == 0) break;
        r11.w = firstbitlow((uint)r11.z);
        r13.w = 1 << (int)r11.w;
        r14.w = (int)r11.z & (int)r13.w;
        if (r14.w != 0) {
          r11.z = (int)r11.z ^ (int)r13.w;
          r13.w = (int)r10.w + (int)r11.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xyzw, r13.w, l(0), t11.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r18.xy, r13.w, l(16), t11.xyxx
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
          r17.xyz = -v6.xyz + r17.xyz;
          r18.z = r17.w;
          r17.xyz = cmp(abs(r17.xyz) < r18.zxy);
          r13.w = r17.y ? r17.x : 0;
          r13.w = r17.z ? r13.w : 0;
          if (r13.w != 0) {
            r11.w = (int)r6.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyz, r11.w, l(0), t36.xyzx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r11.w, l(16), t36.xyzx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r11.w, l(32), t36.xyzx
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
            r20.x = r17.x;
            r20.y = r18.x;
            r20.z = r19.x;
            r13.w = dot(r20.xyz, r20.xyz);
            r13.w = rsqrt(r13.w);
            r21.xyz = r20.xyz * r13.www;
            r13.w = dot(r21.xyz, v3.xyz);
            r13.w = cmp(r13.w >= 0.5);
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyw, r11.w, l(48), t36.xyxz
            r22.x = samp0[]..swiz;
            r22.y = samp0[]..swiz;
            r22.w = samp0[]..swiz;
              r20.w = r22.x;
              r20.x = dot(r9.xyzw, r20.xyzw);
              r23.x = r17.y;
              r23.y = r18.y;
              r23.z = r19.y;
              r23.w = r22.y;
              r20.y = dot(r9.xyzw, r23.xyzw);
              r22.x = r17.z;
              r22.y = r18.z;
              r22.z = r19.z;
              r20.z = dot(r9.xyzw, r22.xyzw);
              r17.xyz = cmp(abs(r20.xyz) < float3(1,1,1));
              r13.w = r17.y ? r17.x : 0;
              r13.w = r17.z ? r13.w : 0;
              if (r13.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyzw, r11.w, l(64), t36.xyzw
              r17.x = samp0[]..swiz;
              r17.y = samp0[]..swiz;
              r17.z = samp0[]..swiz;
              r17.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r11.w, l(80), t36.xyzw
              r18.x = samp0[]..swiz;
              r18.y = samp0[]..swiz;
              r18.z = samp0[]..swiz;
              r18.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r11.w, l(96), t36.xyzw
              r19.x = samp0[]..swiz;
              r19.y = samp0[]..swiz;
              r19.z = samp0[]..swiz;
              r19.w = samp0[]..swiz;
                r24.x = dot(r6.xyz, r23.xyz);
                r24.y = dot(r6.xyz, r22.xyz);
                r25.x = dot(r7.xyz, r23.xyz);
                r25.y = dot(r7.xyz, r22.xyz);
                r20.xy = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r24.xyz = float3(0.5,-0.5,0.5) * r24.xyx;
                r25.xyz = float3(0.5,-0.5,0.5) * r25.xyx;
                r20.zw = (int2)r18.yz & int2(65535,65535);
                if (r20.z != 0) {
                  if (4 == 0) r13.w = 0; else if (4+24 < 32) {                   r13.w = (uint)r18.w << (32-(4 + 24)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r18.w >> 24;
                  r13.w = 1 << (int)r13.w;
                  r14.w = (uint)r18.w >> 28;
                  r14.w = 1 << (int)r14.w;
                  r15.w = cmp((int)r20.z == 4);
                  if (r15.w != 0) {
                    r15.w = (int)r18.w & 4095;
                    if (12 == 0) r16.w = 0; else if (12+12 < 32) {                     r16.w = (uint)r18.w << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                    } else r16.w = (uint)r18.w >> 12;
                    r21.w = (int)r19.w & 1023;
                    r26.xz = (uint2)r13.ww;
                    r26.y = (uint)r14.w;
                    r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                    r27.zw = float2(-0.5,-0.5) + r26.zy;
                    r27.xy = min(r27.xy, r27.zw);
                    r28.x = (uint)r15.w;
                    r28.y = (uint)r16.w;
                    r27.xy = r28.xy + r27.xy;
                    r27.xy = invBcTexSizes.xy * r27.xy;
                    r27.z = (uint)r21.w;
                    r28.xyz = invBcTexSizes.xyx * r24.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invBcTexSizes.xyx * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r26.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.xyzx, r26.xyzx).xyzw;
                  } else {
                    r15.w = cmp((int)r20.z == 1);
                    if (r15.w != 0) {
                      r15.w = (int)r18.w & 4095;
                      if (12 == 0) r16.w = 0; else if (12+12 < 32) {                       r16.w = (uint)r18.w << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                      } else r16.w = (uint)r18.w >> 12;
                      r18.w = (int)r19.w & 1023;
                      r27.xz = (uint2)r13.ww;
                      r27.y = (uint)r14.w;
                      r28.xy = r20.xy * r27.zy + float2(0.5,0.5);
                      r28.zw = float2(-0.5,-0.5) + r27.zy;
                      r28.xy = min(r28.xy, r28.zw);
                      r29.x = (uint)r15.w;
                      r29.y = (uint)r16.w;
                      r28.xy = r29.xy + r28.xy;
                      r28.xy = invBcTexSizes.zw * r28.xy;
                      r28.z = (uint)r18.w;
                      r29.xyz = invBcTexSizes.zwz * r24.zyz;
                      r29.xyz = r29.xyz * r27.xyz;
                      r30.xyz = invBcTexSizes.zwz * r25.zyz;
                      r27.xyz = r30.xyz * r27.xyz;
                      r26.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.xyzx, r27.xyzx).xyzw;
                    } else {
                      r26.xyzw = float4(1,1,1,1);
                    }
                  }
                  r17.xyz = r26.xyz * r17.xyz;
                  r13.w = r26.w * r17.w;
                } else {
                  r17.xyz = float3(0,0,0);
                  r13.w = 0;
                }
                r14.w = cmp(r18.x != 1.000000);
                r15.w = r13.w + r17.w;
                r15.w = saturate(r15.w * r18.x + -r18.x);
                r13.w = r14.w ? r15.w : r13.w;
                if (r20.w != 0) {
                  if (4 == 0) r14.w = 0; else if (4+24 < 32) {                   r14.w = (uint)r19.y << (32-(4 + 24)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r19.y >> 24;
                  r14.w = 1 << (int)r14.w;
                  r15.w = (uint)r19.y >> 28;
                  r15.w = 1 << (int)r15.w;
                  r16.w = cmp((int)r20.w == 2);
                  if (r16.w != 0) {
                    r16.w = (int)r19.y & 4095;
                    if (12 == 0) r18.x = 0; else if (12+12 < 32) {                     r18.x = (uint)r19.y << (32-(12 + 12)); r18.x = (uint)r18.x >> (32-12);                    } else r18.x = (uint)r19.y >> 12;
                    if (10 == 0) r18.w = 0; else if (10+20 < 32) {                     r18.w = (uint)r19.w << (32-(10 + 20)); r18.w = (uint)r18.w >> (32-10);                    } else r18.w = (uint)r19.w >> 20;
                    r26.xz = (uint2)r14.ww;
                    r26.y = (uint)r15.w;
                    r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                    r27.zw = float2(-0.5,-0.5) + r26.zy;
                    r27.xy = min(r27.xy, r27.zw);
                    r28.x = (uint)r16.w;
                    r28.y = (uint)r18.x;
                    r27.xy = r28.xy + r27.xy;
                    r27.xy = invMaskTexSizes.xy * r27.xy;
                    r27.z = (uint)r18.w;
                    r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r16.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  } else {
                    r17.w = cmp((int)r20.w == 4);
                    if (r17.w != 0) {
                      r17.w = (int)r19.y & 4095;
                      if (12 == 0) r18.x = 0; else if (12+12 < 32) {                       r18.x = (uint)r19.y << (32-(12 + 12)); r18.x = (uint)r18.x >> (32-12);                      } else r18.x = (uint)r19.y >> 12;
                      if (10 == 0) r18.w = 0; else if (10+20 < 32) {                       r18.w = (uint)r19.w << (32-(10 + 20)); r18.w = (uint)r18.w >> (32-10);                      } else r18.w = (uint)r19.w >> 20;
                      r26.xz = (uint2)r14.ww;
                      r26.y = (uint)r15.w;
                      r20.zw = r20.xy * r26.zy + float2(0.5,0.5);
                      r27.xy = float2(-0.5,-0.5) + r26.zy;
                      r20.zw = min(r27.xy, r20.zw);
                      r27.x = (uint)r17.w;
                      r27.yz = (uint2)r18.xw;
                      r20.zw = r27.xy + r20.zw;
                      r27.xy = invBcTexSizes.xy * r20.zw;
                      r28.xyz = invBcTexSizes.xyx * r24.zyz;
                      r28.xyz = r28.xyz * r26.xyz;
                      r29.xyz = invBcTexSizes.xyx * r25.zyz;
                      r26.xyz = r29.xyz * r26.xyz;
                      r16.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                    } else {
                      r17.w = (int)r19.y & 4095;
                      if (12 == 0) r18.x = 0; else if (12+12 < 32) {                       r18.x = (uint)r19.y << (32-(12 + 12)); r18.x = (uint)r18.x >> (32-12);                      } else r18.x = (uint)r19.y >> 12;
                      if (10 == 0) r18.w = 0; else if (10+20 < 32) {                       r18.w = (uint)r19.w << (32-(10 + 20)); r18.w = (uint)r18.w >> (32-10);                      } else r18.w = (uint)r19.w >> 20;
                      r26.xz = (uint2)r14.ww;
                      r26.y = (uint)r15.w;
                      r20.zw = r20.xy * r26.zy + float2(0.5,0.5);
                      r27.xy = float2(-0.5,-0.5) + r26.zy;
                      r20.zw = min(r27.xy, r20.zw);
                      r27.x = (uint)r17.w;
                      r27.yz = (uint2)r18.xw;
                      r20.zw = r27.xy + r20.zw;
                      r27.xy = invBcTexSizes.zw * r20.zw;
                      r28.xyz = invBcTexSizes.zwz * r24.zyz;
                      r28.xyz = r28.xyz * r26.xyz;
                      r29.xyz = invBcTexSizes.zwz * r25.zyz;
                      r26.xyz = r29.xyz * r26.xyz;
                      r16.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                    }
                  }
                  r14.w = saturate(1 + -r16.w);
                  r17.xyz = r17.xyz * r14.www;
                }
                r18.xy = (uint2)r18.zy >> int2(16,16);
                if (r18.x != 0) {
                  r14.w = cmp((int)r18.x == 2);
                  if (r14.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(112), t36.xxxx
                  r11.w = samp0[]..swiz;
                    if (4 == 0) r18.z = 0; else if (4+24 < 32) {                     r18.z = (uint)r19.z << (32-(4 + 24)); r18.z = (uint)r18.z >> (32-4);                    } else r18.z = (uint)r19.z >> 24;
                    if (12 == 0) r18.w = 0; else if (12+12 < 32) {                     r18.w = (uint)r19.z << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                    } else r18.w = (uint)r19.z >> 12;
                    r14.w = 1 << (int)r18.z;
                    r15.w = (uint)r19.z >> 28;
                    r15.w = 1 << (int)r15.w;
                    r16.w = (int)r19.z & 4095;
                    r11.w = (int)r11.w & 1023;
                    r26.xz = (uint2)r14.ww;
                    r26.y = (uint)r15.w;
                    r19.yz = r20.xy * r26.zy + float2(0.5,0.5);
                    r20.zw = float2(-0.5,-0.5) + r26.zy;
                    r19.yz = min(r20.zw, r19.yz);
                    r27.x = (uint)r16.w;
                    r27.y = (uint)r18.w;
                    r18.zw = r27.xy + r19.yz;
                    r27.xy = invMaskTexSizes.xy * r18.zw;
                    r27.z = (uint)r11.w;
                    r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r11.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  } else {
                    r14.w = cmp((int)r18.x == 6);
                    r11.w = r14.w ? 0 : 1;
                  }
                } else {
                  r11.w = 1;
                }
                r11.w = saturate(0.764705896 * r11.w);
                if (r18.y != 0) {
                  r14.w = cmp((int)r18.y == 3);
                  if (r14.w != 0) {
                    if (4 == 0) r18.x = 0; else if (4+24 < 32) {                     r18.x = (uint)r19.x << (32-(4 + 24)); r18.x = (uint)r18.x >> (32-4);                    } else r18.x = (uint)r19.x >> 24;
                    if (12 == 0) r18.y = 0; else if (12+12 < 32) {                     r18.y = (uint)r19.x << (32-(12 + 12)); r18.y = (uint)r18.y >> (32-12);                    } else r18.y = (uint)r19.x >> 12;
                    if (10 == 0) r18.z = 0; else if (10+10 < 32) {                     r18.z = (uint)r19.w << (32-(10 + 10)); r18.z = (uint)r18.z >> (32-10);                    } else r18.z = (uint)r19.w >> 10;
                    r14.w = 1 << (int)r18.x;
                    r15.w = (uint)r19.x >> 28;
                    r15.w = 1 << (int)r15.w;
                    r16.w = (int)r19.x & 4095;
                    r19.xz = (uint2)r14.ww;
                    r19.y = (uint)r15.w;
                    r18.xw = r20.xy * r19.xy + float2(0.5,0.5);
                    r20.xy = float2(-0.5,-0.5) + r19.zy;
                    r18.xw = min(r20.xy, r18.xw);
                    r20.x = (uint)r16.w;
                    r20.yz = (uint2)r18.yz;
                    r18.xy = r20.xy + r18.xw;
                    r20.xy = invMaskTexSizes.zw * r18.xy;
                    r18.xyz = invMaskTexSizes.zwz * r24.xyz;
                    r18.xyz = r18.xyz * r19.xyz;
                    r24.xyz = invMaskTexSizes.zwz * r25.xyz;
                    r19.xyz = r24.xyz * r19.xyz;
                    r18.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r20.xyz, r18.xyz, r19.xyz).xyz;
                  } else {
                    r18.xyz = float3(0.5,0.5,1);
                  }
                  r18.xy = r18.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r14.w = dot(r18.xy, r18.xy);
                  r14.w = 1 + -r14.w;
                  r14.w = max(0, r14.w);
                  r14.w = sqrt(r14.w);
                  r15.w = r18.z * r18.z;
                  r15.w = 0.333333343 * r15.w;
                  r15.w = min(1, r15.w);
                  r16.w = dot(r23.xyz, r23.xyz);
                  r16.w = rsqrt(r16.w);
                  r19.xyz = r23.xyz * r16.www;
                  r16.w = dot(-r22.xyz, -r22.xyz);
                  r16.w = rsqrt(r16.w);
                  r20.xyz = -r22.xyz * r16.www;
                  r21.xyz = r21.xyz * r1.www;
                  r19.xyz = r19.xyz * r1.www;
                  r20.xyz = r20.xyz * r1.www;
                  r16.w = -17 * r11.w;
                  r16.w = exp2(r16.w);
                  r15.w = r16.w + r15.w;
                  r15.w = log2(r15.w);
                  r15.w = -0.0588235296 * r15.w;
                  r11.w = max(0, r15.w);
                  r18.yzw = r20.xyz * r18.yyy;
                  r18.xyz = r19.xyz * r18.xxx + r18.yzw;
                  r18.xyz = r21.xyz * r14.www + r18.xyz;
                  r14.w = dot(r18.xyz, r18.xyz);
                  r14.w = rsqrt(r14.w);
                  r18.xyz = r18.xyz * r14.www;
                  r14.w = 1 + -r13.w;
                  r16.x = r15.x;
                  r19.xyz = r16.xyz * r14.www;
                  r16.xyz = r18.xyz * r13.www + r19.xyz;
                  r15.x = r16.x;
                }
                r14.w = 1 + -r13.w;
                r18.xyz = r14.www * r12.xyz;
                r12.xyz = r17.xyz * r13.www + r18.xyz;
                r15.w = r15.z * r14.w;
                r15.y = r15.y * r14.w + r13.w;
                r15.z = r11.w * r13.w + r15.w;
              }
            }
          }
        }
      }
      r8.xzw = r12.xyz;
      r13.xyz = r15.xzy;
      r14.yz = r16.yz;
      r6.w = (int)r6.w + 32;
    }
    r14.x = r13.x;
    r13.xy = r13.zy;
  } else {
    r8.xzw = float3(0,0,0);
    r14.xyz = float3(0,0,0);
    r13.xy = float2(0,0);
  }
  if (r8.y != 0) {
    r9.xyz = eyeOffset.xyz + v6.xyz;
    r4.w = numDynamicDecals + numStaticDecals;
    r2.w = 0.0078125 * r2.w;
    r2.w = min(15, r2.w);
    r2.w = (uint)r2.w;
    r10.xy = (uint2)r5.zw >> int2(6,6);
    r10.z = (uint)r2.w << 4;
    r2.w = numStaticDecals & -32;
    r5.y = (int)-r2.w + numStaticDecals;
    r6.w = (int)r4.w & -32;
    r7.w = (int)r4.w + (int)-r6.w;
    r11.xy = float2(0,0);
    r12.w = 0;
    r9.w = 1;
    r15.xyz = r8.xzw;
    r16.xyz = r14.xyz;
    r17.xy = r13.xy;
    r8.y = r2.w;
    while (true) {
      r10.w = cmp((uint)r8.y >= (uint)r4.w);
      if (r10.w != 0) break;
      r11.z = (uint)r8.y >> 5;
      r12.xyz = (int3)r10.xyz + (int3)r11.xyz;
      r10.w = visibleDecals.Load(r12.xyzw).x;
      r11.z = cmp((int)r2.w == (int)r8.y);
      bitmask.w = ((~(-1 << r5.y)) << 0) & 0xffffffff;  r11.w = (((uint)0 << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
      r10.w = r11.z ? r11.w : r10.w;
      r11.z = cmp((int)r6.w == (int)r8.y);
      if (r7.w == 0) r11.w = 0; else if (r7.w+0 < 32) {       r11.w = (uint)r10.w << (32-(r7.w + 0)); r11.w = (uint)r11.w >> (32-r7.w);      } else r11.w = (uint)r10.w >> 0;
      r10.w = r11.z ? r11.w : r10.w;
      r11.z = (int)r3.w + (int)r8.y;
      r12.xyz = r15.xyz;
      r18.xyz = r16.xyz;
      r13.zw = r17.xy;
      r11.w = r10.w;
      while (true) {
        if (r11.w == 0) break;
        r14.w = firstbitlow((uint)r11.w);
        r15.w = 1 << (int)r14.w;
        r16.w = (int)r11.w & (int)r15.w;
        if (r16.w != 0) {
          r11.w = (int)r11.w ^ (int)r15.w;
          r15.w = (int)r11.z + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xyzw, r15.w, l(0), t11.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xy, r15.w, l(16), t11.xyxx
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
          r19.xyz = -v6.xyz + r19.xyz;
          r20.z = r19.w;
          r19.xyz = cmp(abs(r19.xyz) < r20.zxy);
          r15.w = r19.y ? r19.x : 0;
          r15.w = r19.z ? r15.w : 0;
          if (r15.w != 0) {
            r14.w = (int)r8.y + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r14.w, l(0), t36.xyzx
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyz, r14.w, l(16), t36.xyzx
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyz, r14.w, l(32), t36.xyzx
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
            r22.x = r19.x;
            r22.y = r20.x;
            r22.z = r21.x;
            r15.w = dot(r22.xyz, r22.xyz);
            r15.w = rsqrt(r15.w);
            r23.xyz = r22.xyz * r15.www;
            r15.w = dot(r23.xyz, v3.xyz);
            r15.w = cmp(r15.w >= 0.5);
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r24.xyw, r14.w, l(48), t36.xyxz
            r24.x = samp0[]..swiz;
            r24.y = samp0[]..swiz;
            r24.w = samp0[]..swiz;
              r22.w = r24.x;
              r22.x = dot(r9.xyzw, r22.xyzw);
              r25.x = r19.y;
              r25.y = r20.y;
              r25.z = r21.y;
              r25.w = r24.y;
              r22.y = dot(r9.xyzw, r25.xyzw);
              r24.x = r19.z;
              r24.y = r20.z;
              r24.z = r21.z;
              r22.z = dot(r9.xyzw, r24.xyzw);
              r19.xyz = cmp(abs(r22.xyz) < float3(1,1,1));
              r15.w = r19.y ? r19.x : 0;
              r15.w = r19.z ? r15.w : 0;
              if (r15.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r14.w, l(64), t36.xyzw
              r19.x = samp0[]..swiz;
              r19.y = samp0[]..swiz;
              r19.z = samp0[]..swiz;
              r19.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyzw, r14.w, l(80), t36.xyzw
              r20.x = samp0[]..swiz;
              r20.y = samp0[]..swiz;
              r20.z = samp0[]..swiz;
              r20.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyzw, r14.w, l(96), t36.xyzw
              r21.x = samp0[]..swiz;
              r21.y = samp0[]..swiz;
              r21.z = samp0[]..swiz;
              r21.w = samp0[]..swiz;
                r26.x = dot(r6.xyz, r25.xyz);
                r26.y = dot(r6.xyz, r24.xyz);
                r27.x = dot(r7.xyz, r25.xyz);
                r27.y = dot(r7.xyz, r24.xyz);
                r17.zw = r22.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r22.xyz = float3(0.5,-0.5,0.5) * r26.xyx;
                r26.xyz = float3(0.5,-0.5,0.5) * r27.xyx;
                r27.xy = (int2)r20.yz & int2(65535,65535);
                if (r27.x != 0) {
                  if (4 == 0) r15.w = 0; else if (4+24 < 32) {                   r15.w = (uint)r20.w << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r20.w >> 24;
                  r15.w = 1 << (int)r15.w;
                  r16.w = (uint)r20.w >> 28;
                  r16.w = 1 << (int)r16.w;
                  r18.w = cmp((int)r27.x == 4);
                  if (r18.w != 0) {
                    r18.w = (int)r20.w & 4095;
                    if (12 == 0) r22.w = 0; else if (12+12 < 32) {                     r22.w = (uint)r20.w << (32-(12 + 12)); r22.w = (uint)r22.w >> (32-12);                    } else r22.w = (uint)r20.w >> 12;
                    r23.w = (int)r21.w & 1023;
                    r28.xz = (uint2)r15.ww;
                    r28.y = (uint)r16.w;
                    r27.zw = r17.zw * r28.zy + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r28.zy;
                    r27.zw = min(r29.xy, r27.zw);
                    r29.x = (uint)r18.w;
                    r29.y = (uint)r22.w;
                    r27.zw = r29.xy + r27.zw;
                    r29.xy = invBcTexSizes.xy * r27.zw;
                    r29.z = (uint)r23.w;
                    r30.xyz = invBcTexSizes.xyx * r22.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invBcTexSizes.xyx * r26.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r28.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.xyzx, r28.xyzx).xyzw;
                  } else {
                    r18.w = cmp((int)r27.x == 1);
                    if (r18.w != 0) {
                      r18.w = (int)r20.w & 4095;
                      if (12 == 0) r20.w = 0; else if (12+12 < 32) {                       r20.w = (uint)r20.w << (32-(12 + 12)); r20.w = (uint)r20.w >> (32-12);                      } else r20.w = (uint)r20.w >> 12;
                      r22.w = (int)r21.w & 1023;
                      r29.xz = (uint2)r15.ww;
                      r29.y = (uint)r16.w;
                      r27.xz = r17.zw * r29.zy + float2(0.5,0.5);
                      r30.xy = float2(-0.5,-0.5) + r29.zy;
                      r27.xz = min(r30.xy, r27.xz);
                      r30.x = (uint)r18.w;
                      r30.y = (uint)r20.w;
                      r27.xz = r30.xy + r27.xz;
                      r30.xy = invBcTexSizes.zw * r27.xz;
                      r30.z = (uint)r22.w;
                      r27.xzw = invBcTexSizes.zwz * r22.zyz;
                      r27.xzw = r27.xzw * r29.xyz;
                      r31.xyz = invBcTexSizes.zwz * r26.zyz;
                      r29.xyz = r31.xyz * r29.xyz;
                      r28.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r30.xyz, r27.xzwx, r29.xyzx).xyzw;
                    } else {
                      r28.xyzw = float4(1,1,1,1);
                    }
                  }
                  r19.xyz = r28.xyz * r19.xyz;
                  r15.w = r28.w * r19.w;
                } else {
                  r19.xyz = float3(0,0,0);
                  r15.w = 0;
                }
                r16.w = cmp(r20.x != 1.000000);
                r18.w = r15.w + r19.w;
                r18.w = saturate(r18.w * r20.x + -r20.x);
                r15.w = r16.w ? r18.w : r15.w;
                if (r27.y != 0) {
                  if (4 == 0) r16.w = 0; else if (4+24 < 32) {                   r16.w = (uint)r21.y << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                  } else r16.w = (uint)r21.y >> 24;
                  r16.w = 1 << (int)r16.w;
                  r18.w = (uint)r21.y >> 28;
                  r18.w = 1 << (int)r18.w;
                  r19.w = cmp((int)r27.y == 2);
                  if (r19.w != 0) {
                    r19.w = (int)r21.y & 4095;
                    if (12 == 0) r20.x = 0; else if (12+12 < 32) {                     r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                    } else r20.x = (uint)r21.y >> 12;
                    if (10 == 0) r20.w = 0; else if (10+20 < 32) {                     r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                    } else r20.w = (uint)r21.w >> 20;
                    r28.xz = (uint2)r16.ww;
                    r28.y = (uint)r18.w;
                    r27.xz = r17.zw * r28.zy + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r28.zy;
                    r27.xz = min(r29.xy, r27.xz);
                    r29.x = (uint)r19.w;
                    r29.yz = (uint2)r20.xw;
                    r27.xz = r29.xy + r27.xz;
                    r29.xy = invMaskTexSizes.xy * r27.xz;
                    r27.xzw = invMaskTexSizes.xyx * r22.zyz;
                    r27.xzw = r27.xzw * r28.xyz;
                    r30.xyz = invMaskTexSizes.xyx * r26.zyz;
                    r28.xyz = r30.xyz * r28.xyz;
                    r19.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r29.xyz, r27.x, r28.x).x;
                  } else {
                    r20.x = cmp((int)r27.y == 4);
                    if (r20.x != 0) {
                      r20.x = (int)r21.y & 4095;
                      if (12 == 0) r27.x = 0; else if (12+12 < 32) {                       r27.x = (uint)r21.y << (32-(12 + 12)); r27.x = (uint)r27.x >> (32-12);                      } else r27.x = (uint)r21.y >> 12;
                      if (10 == 0) r27.y = 0; else if (10+20 < 32) {                       r27.y = (uint)r21.w << (32-(10 + 20)); r27.y = (uint)r27.y >> (32-10);                      } else r27.y = (uint)r21.w >> 20;
                      r28.xz = (uint2)r16.ww;
                      r28.y = (uint)r18.w;
                      r27.zw = r17.zw * r28.zy + float2(0.5,0.5);
                      r29.xy = float2(-0.5,-0.5) + r28.zy;
                      r27.zw = min(r29.xy, r27.zw);
                      r29.x = (uint)r20.x;
                      r29.yz = (uint2)r27.xy;
                      r20.xw = r29.xy + r27.zw;
                      r29.xy = invBcTexSizes.xy * r20.xw;
                      r27.xyz = invBcTexSizes.xyx * r22.zyz;
                      r27.xyz = r27.xyz * r28.xyz;
                      r30.xyz = invBcTexSizes.xyx * r26.zyz;
                      r28.xyz = r30.xyz * r28.xyz;
                      r19.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r27.x, r28.x).x;
                    } else {
                      r20.x = (int)r21.y & 4095;
                      if (12 == 0) r27.x = 0; else if (12+12 < 32) {                       r27.x = (uint)r21.y << (32-(12 + 12)); r27.x = (uint)r27.x >> (32-12);                      } else r27.x = (uint)r21.y >> 12;
                      if (10 == 0) r27.y = 0; else if (10+20 < 32) {                       r27.y = (uint)r21.w << (32-(10 + 20)); r27.y = (uint)r27.y >> (32-10);                      } else r27.y = (uint)r21.w >> 20;
                      r28.xz = (uint2)r16.ww;
                      r28.y = (uint)r18.w;
                      r27.zw = r17.zw * r28.zy + float2(0.5,0.5);
                      r29.xy = float2(-0.5,-0.5) + r28.zy;
                      r27.zw = min(r29.xy, r27.zw);
                      r29.x = (uint)r20.x;
                      r29.yz = (uint2)r27.xy;
                      r20.xw = r29.xy + r27.zw;
                      r29.xy = invBcTexSizes.zw * r20.xw;
                      r27.xyz = invBcTexSizes.zwz * r22.zyz;
                      r27.xyz = r27.xyz * r28.xyz;
                      r30.xyz = invBcTexSizes.zwz * r26.zyz;
                      r28.xyz = r30.xyz * r28.xyz;
                      r19.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r29.xyz, r27.x, r28.x).x;
                    }
                  }
                  r16.w = saturate(1 + -r19.w);
                  r19.xyz = r19.xyz * r16.www;
                }
                r20.xy = (uint2)r20.zy >> int2(16,16);
                if (r20.x != 0) {
                  r16.w = cmp((int)r20.x == 2);
                  if (r16.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(112), t36.xxxx
                  r14.w = samp0[]..swiz;
                    if (4 == 0) r20.z = 0; else if (4+24 < 32) {                     r20.z = (uint)r21.z << (32-(4 + 24)); r20.z = (uint)r20.z >> (32-4);                    } else r20.z = (uint)r21.z >> 24;
                    if (12 == 0) r20.w = 0; else if (12+12 < 32) {                     r20.w = (uint)r21.z << (32-(12 + 12)); r20.w = (uint)r20.w >> (32-12);                    } else r20.w = (uint)r21.z >> 12;
                    r16.w = 1 << (int)r20.z;
                    r18.w = (uint)r21.z >> 28;
                    r18.w = 1 << (int)r18.w;
                    r19.w = (int)r21.z & 4095;
                    r14.w = (int)r14.w & 1023;
                    r27.xz = (uint2)r16.ww;
                    r27.y = (uint)r18.w;
                    r21.yz = r17.zw * r27.zy + float2(0.5,0.5);
                    r28.xy = float2(-0.5,-0.5) + r27.zy;
                    r21.yz = min(r28.xy, r21.yz);
                    r28.x = (uint)r19.w;
                    r28.y = (uint)r20.w;
                    r20.zw = r28.xy + r21.yz;
                    r28.xy = invMaskTexSizes.xy * r20.zw;
                    r28.z = (uint)r14.w;
                    r29.xyz = invMaskTexSizes.xyx * r22.zyz;
                    r29.xyz = r29.xyz * r27.xyz;
                    r30.xyz = invMaskTexSizes.xyx * r26.zyz;
                    r27.xyz = r30.xyz * r27.xyz;
                    r14.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.x, r27.x).x;
                  } else {
                    r16.w = cmp((int)r20.x == 6);
                    r14.w = r16.w ? 0 : 1;
                  }
                } else {
                  r14.w = 1;
                }
                r14.w = saturate(0.764705896 * r14.w);
                if (r20.y != 0) {
                  r16.w = cmp((int)r20.y == 3);
                  if (r16.w != 0) {
                    if (4 == 0) r20.x = 0; else if (4+24 < 32) {                     r20.x = (uint)r21.x << (32-(4 + 24)); r20.x = (uint)r20.x >> (32-4);                    } else r20.x = (uint)r21.x >> 24;
                    if (12 == 0) r20.y = 0; else if (12+12 < 32) {                     r20.y = (uint)r21.x << (32-(12 + 12)); r20.y = (uint)r20.y >> (32-12);                    } else r20.y = (uint)r21.x >> 12;
                    if (10 == 0) r20.z = 0; else if (10+10 < 32) {                     r20.z = (uint)r21.w << (32-(10 + 10)); r20.z = (uint)r20.z >> (32-10);                    } else r20.z = (uint)r21.w >> 10;
                    r16.w = 1 << (int)r20.x;
                    r18.w = (uint)r21.x >> 28;
                    r18.w = 1 << (int)r18.w;
                    r19.w = (int)r21.x & 4095;
                    r21.xz = (uint2)r16.ww;
                    r21.y = (uint)r18.w;
                    r17.zw = r17.zw * r21.xy + float2(0.5,0.5);
                    r20.xw = float2(-0.5,-0.5) + r21.zy;
                    r17.zw = min(r20.xw, r17.zw);
                    r27.x = (uint)r19.w;
                    r27.yz = (uint2)r20.yz;
                    r17.zw = r27.xy + r17.zw;
                    r27.xy = invMaskTexSizes.zw * r17.zw;
                    r20.xyz = invMaskTexSizes.zwz * r22.xyz;
                    r20.xyz = r20.xyz * r21.xyz;
                    r22.xyz = invMaskTexSizes.zwz * r26.xyz;
                    r21.xyz = r22.xyz * r21.xyz;
                    r20.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r27.xyz, r20.xyz, r21.xyz).xyz;
                  } else {
                    r20.xyz = float3(0.5,0.5,1);
                  }
                  r17.zw = r20.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r16.w = dot(r17.zw, r17.zw);
                  r16.w = 1 + -r16.w;
                  r16.w = max(0, r16.w);
                  r16.w = sqrt(r16.w);
                  r18.w = r20.z * r20.z;
                  r18.w = 0.333333343 * r18.w;
                  r18.w = min(1, r18.w);
                  r19.w = dot(r25.xyz, r25.xyz);
                  r19.w = rsqrt(r19.w);
                  r20.xyz = r25.xyz * r19.www;
                  r19.w = dot(-r24.xyz, -r24.xyz);
                  r19.w = rsqrt(r19.w);
                  r21.xyz = -r24.xyz * r19.www;
                  r22.xyz = r23.xyz * r1.www;
                  r20.xyz = r20.xyz * r1.www;
                  r21.xyz = r21.xyz * r1.www;
                  r19.w = -17 * r14.w;
                  r19.w = exp2(r19.w);
                  r18.w = r19.w + r18.w;
                  r18.w = log2(r18.w);
                  r18.w = -0.0588235296 * r18.w;
                  r14.w = max(0, r18.w);
                  r21.xyz = r21.xyz * r17.www;
                  r20.xyz = r20.xyz * r17.zzz + r21.xyz;
                  r20.xyz = r22.xyz * r16.www + r20.xyz;
                  r16.w = dot(r20.xyz, r20.xyz);
                  r16.w = rsqrt(r16.w);
                  r20.xyz = r20.xyz * r16.www;
                  r16.w = 1 + -r15.w;
                  r21.xyz = r18.xyz * r16.www;
                  r18.xyz = r20.xyz * r15.www + r21.xyz;
                }
                r16.w = 1 + -r15.w;
                r20.xyz = r16.www * r12.xyz;
                r12.xyz = r19.xyz * r15.www + r20.xyz;
                r17.z = r16.w * r13.w;
                r13.z = r13.z * r16.w + r15.w;
                r13.w = r14.w * r15.w + r17.z;
              }
            }
          }
        }
      }
      r15.xyz = r12.xyz;
      r16.xyz = r18.xyz;
      r17.xy = r13.zw;
      r8.y = (int)r8.y + 32;
    }
    r8.xzw = r15.xyz;
    r14.xyz = r16.xyz;
    r13.xy = r17.xy;
  }
  r13.x = saturate(r13.x);
  r1.w = 1 + -r13.x;
  o2.xyz = r0.xyz * r1.www + r8.xzw;
  r0.x = r0.w * r1.w + r13.x;
  r0.yzw = r2.xyz * r1.www + r14.xyz;
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = rsqrt(r2.x);
  r2.xyz = r2.xxx * r0.yzw;
  r6.y = r1.x * r1.w + r13.y;
  r0.y = log2(abs(r1.z));
  r0.yzw = float3(0.600000024,0.850000024,0.870000005) * r0.yyy;
  r0.yzw = exp2(r0.yzw);
  r1.x = viewMatrix._m12 * v6.y;
  r1.x = v6.x * viewMatrix._m02 + r1.x;
  r1.x = v6.z * viewMatrix._m22 + r1.x;
  r1.z = dot(-v6.xyz, -v6.xyz);
  r1.z = rsqrt(r1.z);
  r7.xyz = -v6.xyz * r1.zzz;
  r1.w = cmp(isDepthHack != 0);
  r6.zw = (uint2)r5.wz;
  r3.w = dot(r6.wz, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r8.x, r9.x);
  r3.w = dot(r6.zw, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r10.x, r11.x);
  r6.x = saturate(dot(r2.xyz, r7.xyz));
  r3.w = dot(-r7.xyz, r2.xyz);
  r3.w = r3.w + r3.w;
  r12.xyz = r2.xyz * -r3.www + -r7.xyz;
  r3.w = 17 * r6.y;
  r3.w = exp2(r3.w);
  r3.w = 2 + r3.w;
  r3.w = 2 / r3.w;
  r4.w = sqrt(r3.w);
  r10.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r10.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r10.yzw;
  r10.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r10.yzw;
  r10.yzw = viewProjectionMatrix._m30_m31_m33 + r10.yzw;
  r13.xyz = eyeOffset.xyz + v6.xyz;
  r5.y = sqrt(r4.w);
  r5.y = r5.y * 0.5 + 0.5;
  r5.y = r5.y * r5.y;
  r6.z = 0.5 * r5.y;
  r5.y = -r5.y * 0.5 + 1;
  r6.w = r6.x * r5.y + r6.z;
  r5.y = r6.w * r5.y;
  r6.z = r6.z * r6.w;
  r6.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r7.w = cmp(0 >= abs(r6.w));
  if (r7.w != 0) {
    r14.y = 0;
  }
  if (r7.w == 0) {
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r11.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.yzw;
    r11.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.yzw;
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.yzw;
    r7.w = -sunConstants.splitDepthOffset + r11.w;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r8.z = saturate(r7.w);
    r8.z = cmp(r7.w == r8.z);
    if (r8.z != 0) {
      r8.zw = float2(0,0);
      while (true) {
        r9.w = cmp(r8.z >= 3);
        if (r9.w != 0) break;
        r9.w = (uint)r8.z;
        r14.zw = -sunConstants.splitPinTransform[r9.w].xy + r11.yz;
        r14.z = max(abs(r14.z), abs(r14.w));
        r8.w = sunConstants.splitPinTransform[r9.w].z * r14.z;
        r9.w = cmp(r8.w < 1);
        if (r9.w != 0) {
          break;
        }
        r8.z = 1 + r8.z;
        r8.w = 0;
      }
    } else {
      r8.zw = float2(3,0);
    }
    r9.w = cmp(r8.z >= 3);
    if (r9.w != 0) {
      r15.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r16.xz = rcp(r15.xx);
      r16.y = -r16.z;
      r15.xyz = r11.yzy * r16.xyz + r15.yzy;
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
          r15.x = r11.y * r15.y + r15.x;
          r14.w = r11.z * r14.w + r15.x;
          r16.x = r14.z ? r14.w : r16.x;
        }
      }
      r11.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.w;
      r11.w = cmp(r16.x < r11.w);
      r14.y = r11.w ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.z;
        r14.zw = -sunConstants.splitPinTransform[r9.w].xy + r11.yz;
        r14.zw = sunConstants.splitPinTransform[r9.w].zz * r14.zw;
        r15.xy = r14.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r9.w + r8.z;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.w).x;
        r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r9.w = r11.w + r9.w;
        r9.w = saturate(-1 + r9.w);
        r11.w = r9.w * r9.w;
        r14.y = r11.w * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r8.x;
        r9.w = (uint)r8.z;
        r8.z = 1 + r8.z;
        r8.z = min(2, r8.z);
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.zw = (uint2)r8.zw;
        r14.zw = -sunConstants.splitPinTransform[r9.w].xy + r11.yz;
        r14.zw = sunConstants.splitPinTransform[r9.w].zz * r14.zw;
        r14.zw = r14.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = -sunConstants.splitPinTransform[r8.z].xy + r11.yz;
        r11.yz = sunConstants.splitPinTransform[r8.z].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r9.x;
        r15.z = r8.x;
        r11.w = 0;
        r15.w = 0;
        while (true) {
          r16.x = cmp((uint)r15.w >= 8);
          if (r16.x != 0) break;
          r16.x = cmp((uint)r8.w < (uint)r15.w);
          r16.yz = r16.xx ? r11.yz : r14.zw;
          r16.w = r16.x ? sunConstants.splitPinTransform[r8.z].w : sunConstants.splitPinTransform[r9.w].w;
          r16.x = r16.x ? r8.z : r9.w;
          r17.x = dot(icb[r15.w+0].yx, r15.xy);
          r17.y = dot(icb[r15.w+0].yx, r15.yz);
          r17.xy = r17.xy * r16.ww + r16.yz;
          r16.x = (int)r16.x + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r16.x;
          r16.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
          r16.y = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r16.x = r16.x + r16.y;
          r16.x = saturate(-1 + r16.x);
          r11.w = r16.x * 0.125 + r11.w;
          r15.w = (int)r15.w + 1;
        }
        r7.w = r11.w * r11.w;
        r14.y = r7.w * r11.w;
      }
    }
  }
  r7.w = cmp(0 < abs(r6.w));
  if (r7.w != 0) {
    r7.w = cmp(0 < r14.y);
    if (r7.w != 0) {
      r7.w = sunConstants.specScale * r3.w;
      r7.w = 0.25 * r7.w;
      if (sunConstants.sunCookieIndex != 0) {
        r13.w = 1;
        r8.z = dot(sunConstants.sunCookieTransform[0].xyzw, r13.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r13.xyzw);
        r15.xy = frac(r8.zw);
        r8.z = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r8.z;
        r11.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r11.yzw = float3(-1,-1,-1) + r11.yzw;
        r11.yzw = sunConstants.sunCookieIntensity * r11.yzw + float3(1,1,1);
        r11.yzw = sunConstants.color.xyz * r11.yzw;
      } else {
        r11.yzw = sunConstants.color.xyz;
      }
      r8.z = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r8.z);
      r8.w = r1.w ? r8.w : 0;
      if (r8.w != 0) {
        r8.z = (int)r8.z + numLights;
        r8.z = (int)r8.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
      r8.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.z, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.z, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.z, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r9.w = abs(r6.w) * -0.200000003 + 0.400000006;
        r13.w = cmp(r6.w < 0);
        r9.w = r13.w ? -r9.w : r9.w;
        r19.xyz = r2.xyz * r9.www + v6.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r14.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.zw = r14.zw + r18.zw;
        r14.zw = r14.zw * r18.xy;
        r15.xy = r8.ww / r17.xz;
        r15.zw = float2(1,1) + -r15.xy;
        r15.zw = cmp(r14.zw >= r15.zw);
        r15.xy = cmp(r15.xy >= r14.zw);
        r15.xy = (int2)r15.xy | (int2)r15.zw;
        r9.w = (int)r15.y | (int)r15.x;
        if (r9.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r8.z, l(28), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.z, l(100), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r8.z, l(164), t12.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r8.z = dot(r15.xyzw, r19.xyzw);
          r14.zw = saturate(r14.zw);
          r15.xy = r14.zw * r17.xz + r17.yw;
          r8.z = r8.z + r16.x;
          r8.z = r8.z / r16.y;
          r8.z = max(6.10351563e-05, r8.z);
          r9.w = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r8.x;
            r17.z = (uint)r9.w;
            r16.y = r9.x;
            r16.z = r8.x;
            r13.w = 0;
            r14.z = 0;
            while (true) {
              r14.w = cmp((int)r14.z >= 8);
              if (r14.w != 0) break;
              r18.x = dot(icb[r14.z+0].yx, r16.xy);
              r18.y = dot(icb[r14.z+0].yx, r16.yz);
              r17.xy = r18.xy * r8.ww + r15.xy;
              r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.z).x;
              r13.w = r14.w * 0.125 + r13.w;
              r14.z = (int)r14.z + 1;
            }
          } else {
            r15.z = (uint)r9.w;
            r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.z).x;
          }
          r8.z = r13.w * r13.w;
          r8.z = r8.z * r13.w;
        } else {
          r8.z = 1;
        }
        r14.y = r14.y * r8.z;
      } else {
        r8.z = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r8.z);
        r9.w = ~(int)r1.w;
        r8.w = r8.w ? r9.w : 0;
        if (r8.w != 0) {
          r8.z = (int)r8.z + numLights;
          r8.z = (int)r8.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.z, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.z, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.z, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r9.w = abs(r6.w) * -0.200000003 + 0.400000006;
          r13.w = cmp(r6.w < 0);
          r9.w = r13.w ? -r9.w : r9.w;
          r19.xyz = r2.xyz * r9.www + v6.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r14.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r14.zw = r14.zw + r18.zw;
          r14.zw = r14.zw * r18.xy;
          r15.xy = r8.ww / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r14.zw >= r15.zw);
          r15.xy = cmp(r15.xy >= r14.zw);
          r15.xy = (int2)r15.xy | (int2)r15.zw;
          r9.w = (int)r15.y | (int)r15.x;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r8.z, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.z, l(100), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xy, r8.z, l(164), t12.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
            r8.z = dot(r15.xyzw, r19.xyzw);
            r14.zw = saturate(r14.zw);
            r15.xy = r14.zw * r17.xz + r17.yw;
            r8.z = r8.z + r16.x;
            r8.z = r8.z / r16.y;
            r8.z = max(6.10351563e-05, r8.z);
            r9.w = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r8.x;
              r17.z = (uint)r9.w;
              r16.y = r9.x;
              r16.z = r8.x;
              r13.w = 0;
              r14.z = 0;
              while (true) {
                r14.w = cmp((int)r14.z >= 8);
                if (r14.w != 0) break;
                r18.x = dot(icb[r14.z+0].yx, r16.xy);
                r18.y = dot(icb[r14.z+0].yx, r16.yz);
                r17.xy = r18.xy * r8.ww + r15.xy;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.z).x;
                r13.w = r14.w * 0.125 + r13.w;
                r14.z = (int)r14.z + 1;
              }
            } else {
              r15.z = (uint)r9.w;
              r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.z).x;
            }
            r8.z = r13.w * r13.w;
            r8.z = r8.z * r13.w;
          } else {
            r8.z = 1;
          }
          r14.y = r14.y * r8.z;
        }
      }
      r8.z = -r6.x * 0.5 + 1;
      r8.z = -abs(r6.w) * r8.z + 1;
      r8.z = r8.z * r8.z;
      r8.z = -r8.z * 0.620000005 + 0.620000005;
      r8.z = r8.z + -abs(r6.w);
      r8.z = r4.w * r8.z + abs(r6.w);
      r8.w = cmp(0 < r6.w);
      r6.w = saturate(r6.w);
      r15.xyz = -v6.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r1.z = dot(r15.xyz, r15.xyz);
      r1.z = rsqrt(r1.z);
      r15.xyz = r15.xyz * r1.zzz;
      r1.z = dot(r15.xyz, r7.xyz);
      r9.w = dot(r2.xyz, r15.xyz);
      r13.w = abs(r9.w) * r3.w + -abs(r9.w);
      r9.w = abs(r9.w) * r13.w + 1;
      r13.w = r6.w * r5.y + r6.z;
      r9.w = r9.w * r9.w;
      r9.w = r9.w * r13.w;
      r9.w = rcp(r9.w);
      r6.w = r6.w * r7.w;
      r6.w = r9.w * r6.w;
      r1.z = saturate(1 + -r1.z);
      r7.w = r1.z * r1.z;
      r7.w = r7.w * r7.w;
      r1.z = r7.w * r1.z;
      r1.z = r6.w * r1.z;
      r7.w = r8.w ? r8.z : 0;
      r15.xyz = r8.www ? float3(0,0,0) : r8.zzz;
      r14.zw = r8.ww ? r1.zz : 0;
      r16.xyz = r8.www ? r6.www : 0;
      r1.z = dot(r11.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r1.z = r14.y * r1.z;
      r14.x = 1;
      r6.w = sunConstants.wldDir.x;
      r8.zw = sunConstants.wldDir.yz;
      r17.xy = r7.ww;
      r9.w = r14.w;
    } else {
      r1.z = 0;
      r11.yzw = float3(0,0,0);
      r6.w = 0;
      r8.zw = float2(0,0);
      r17.xy = float2(0,0);
      r15.xyz = float3(0,0,0);
      r7.w = 0;
      r16.xyz = float3(0,0,0);
      r9.w = 0;
      r14.xyzw = float4(0,0,0,0);
    }
  } else {
    r1.z = 0;
    r11.yzw = float3(0,0,0);
    r6.w = 0;
    r8.zw = float2(0,0);
    r17.xy = float2(0,0);
    r15.xyz = float3(0,0,0);
    r7.w = 0;
    r16.xyz = float3(0,0,0);
    r9.w = 0;
    r14.xyzw = float4(0,0,0,0);
  }
  r1.x = 0.0078125 * r1.x;
  r1.x = max(0, r1.x);
  r1.x = min(15, r1.x);
  r1.x = (uint)r1.x;
  r18.xy = (uint2)r5.zw >> int2(6,6);
  r18.z = (uint)r1.x << 4;
  r19.x = -r8.x;
  r1.x = ~(int)r1.w;
  r5.z = -r6.x * 0.5 + 1;
  r20.xy = float2(0,0);
  r21.w = 0;
  r22.xyz = v6.xyz;
  r22.w = 1;
  r23.w = 1;
  r19.z = r8.x;
  r24.w = 1;
  r25.z = 1;
  r26.w = 1;
  r19.yw = r9.xx;
  r8.y = r19.w;
  r27.w = 1;
  r9.y = r19.x;
  r9.z = r8.x;
  r28.w = 1;
  r29.x = r9.x;
  r29.y = r19.x;
  r29.z = r8.x;
  r30.x = r9.x;
  r30.y = r19.x;
  r30.z = r8.x;
  r31.x = r9.x;
  r31.y = r19.x;
  r31.z = r8.x;
  r32.xyz = float3(0,0,0);
  r33.xyz = float3(0,0,0);
  r34.xyz = float3(0,0,0);
  r35.xyz = float3(0,0,0);
  r36.xyz = r11.yzw;
  r37.x = r6.w;
  r37.yz = r8.zw;
  r38.xy = r17.xy;
  r38.z = r7.w;
  r39.xyz = r15.xyz;
  r40.xyz = r16.xyz;
  r41.x = r9.w;
  r41.yz = r14.zw;
  r42.x = enableDitheredShadow;
  r42.y = r1.z;
  r17.zw = r14.xy;
  r5.w = 0;
  while (true) {
    r13.w = cmp((uint)r5.w >= numLights);
    if (r13.w != 0) break;
    r20.z = (uint)r5.w >> 5;
    r21.xyz = (int3)r18.xyz + (int3)r20.xyz;
    r13.w = visibleLights.Load(r21.xyzw).x;
    r21.xyz = r32.xyz;
    r43.xyz = r33.xyz;
    r44.xyz = r34.xyz;
    r45.xyz = r35.xyz;
    r46.xyz = r36.xyz;
    r47.xyz = r37.xyz;
    r48.xyz = r38.xyz;
    r49.xyz = r40.xyz;
    r50.xyz = r41.xyz;
    r20.zw = r17.zw;
    r15.w = r42.x;
    r16.w = r42.y;
    r51.xyz = r39.xyz;
    r18.w = r13.w;
    while (true) {
      if (r18.w == 0) break;
      r25.w = firstbitlow((uint)r18.w);
      r29.w = 1 << (int)r25.w;
      r30.w = (int)r18.w & (int)r29.w;
      if (r30.w != 0) {
        r18.w = (int)r18.w ^ (int)r29.w;
        r25.w = (int)r5.w + (int)r25.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r52.xyzw, r25.w, l(0), t11.xyzw
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
      r52.z = samp0[]..swiz;
      r52.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r53.xy, r25.w, l(16), t11.xyxx
      r53.x = samp0[]..swiz;
      r53.y = samp0[]..swiz;
        r52.xyz = -v6.xyz + r52.xyz;
        r53.z = r52.w;
        r52.xyz = cmp(abs(r52.xyz) < r53.zxy);
        r29.w = r52.y ? r52.x : 0;
        r29.w = r52.z ? r29.w : 0;
        if (r29.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r25.w, l(0), t12.wxyz
        r52.x = samp0[]..swiz;
        r52.y = samp0[]..swiz;
        r52.z = samp0[]..swiz;
        r52.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r25.w, l(16), t12.zxyw
        r53.x = samp0[]..swiz;
        r53.y = samp0[]..swiz;
        r53.z = samp0[]..swiz;
        r53.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r25.w, l(32), t12.xyzw
        r54.x = samp0[]..swiz;
        r54.y = samp0[]..swiz;
        r54.z = samp0[]..swiz;
        r54.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r25.w, l(48), t12.xyzw
        r55.x = samp0[]..swiz;
        r55.y = samp0[]..swiz;
        r55.z = samp0[]..swiz;
        r55.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r25.w, l(64), t12.yzwx
        r56.x = samp0[]..swiz;
        r56.y = samp0[]..swiz;
        r56.z = samp0[]..swiz;
        r56.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r25.w, l(80), t12.xyzw
        r57.x = samp0[]..swiz;
        r57.y = samp0[]..swiz;
        r57.z = samp0[]..swiz;
        r57.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r25.w, l(96), t12.yzwx
        r58.x = samp0[]..swiz;
        r58.y = samp0[]..swiz;
        r58.z = samp0[]..swiz;
        r58.w = samp0[]..swiz;
          if (3 == 0) r29.w = 0; else if (3+24 < 32) {           r29.w = (uint)r53.w << (32-(3 + 24)); r29.w = (uint)r29.w >> (32-3);          } else r29.w = (uint)r53.w >> 24;
          switch (r29.w) {
            case 4 :            r29.w = cmp(0 < r58.x);
            r59.xy = r57.zw;
            r59.z = r58.w;
            r60.xyz = -r59.xyz * float3(0.5,0.5,0.5) + r52.yzw;
            r61.xyz = -v6.xyz + r60.xyz;
            r30.w = dot(r59.xyz, r61.xyz);
            r31.w = saturate(-r30.w / r58.x);
            r62.xyz = r31.www * r59.xyz + r60.xyz;
            r62.xyz = r29.www ? r62.xyz : r52.yzw;
            r62.xyz = -v6.xyz + r62.xyz;
            r32.w = dot(r62.xyz, r62.xyz);
            r33.w = rsqrt(r32.w);
            r62.xyz = r62.xyz * r33.www;
            r33.w = dot(r2.xyz, r62.xyz);
            r34.w = cmp(0 < abs(r33.w));
            if (r34.w != 0) {
              r34.w = sqrt(r32.w);
              r35.w = r55.x * r55.x;
              r32.w = r35.w / r32.w;
              r32.w = min(1, r32.w);
              r42.zw = saturate(r34.ww * r54.xz + r54.yw);
              r63.xy = r42.zw * r42.zw;
              r42.zw = r42.zw * float2(-2,-2) + float2(3,3);
              r42.zw = r63.xy * r42.zw;
              r32.w = r42.z * r32.w;
              r63.x = r32.w * r42.w;
              r32.w = cmp(0 < r63.x);
              if (r32.w != 0) {
                if (3 == 0) r32.w = 0; else if (3+27 < 32) {                 r32.w = (uint)r53.w << (32-(3 + 27)); r32.w = (uint)r32.w >> (32-3);                } else r32.w = (uint)r53.w >> 27;
                r32.w = cmp((int)r32.w != 1);
                if (r32.w != 0) {
                  r32.w = abs(r33.w) * -0.200000003 + 0.400000006;
                  r34.w = cmp(r33.w < 0);
                  r32.w = r34.w ? -r32.w : r32.w;
                  r64.xyz = r2.xyz * r32.www + v6.xyz;
                  r64.xyz = r64.xyz + -r56.xyz;
                  r32.w = max(abs(r64.y), abs(r64.z));
                  r32.w = max(abs(r64.x), r32.w);
                  r32.w = r57.x / r32.w;
                  r32.w = r32.w + r57.y;
                  r34.w = dot(r64.xyz, r64.xyz);
                  r34.w = rsqrt(r34.w);
                  r32.w = max(6.10351563e-05, r32.w);
                  r35.w = (int)r53.w & 0x0000ffff;
                  r65.w = (uint)r35.w;
                  r63.y = 0;
                  r35.w = 0;
                  while (true) {
                    r36.w = cmp((int)r35.w >= 8);
                    if (r36.w != 0) break;
                    r66.y = dot(icb[r35.w+0].yx, r19.xy);
                    r66.z = dot(icb[r35.w+0].yx, r19.yz);
                    r66.yz = r66.yz * r55.yy;
                    r66.x = r66.y * r11.x;
                    r66.w = r66.y * r10.x;
                    r65.xyz = r64.xyz * r34.www + r66.xzw;
                    r36.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r65.xyzw, r32.w).x;
                    r63.y = r36.w * 0.125 + r63.y;
                    r35.w = (int)r35.w + 1;
                  }
                } else {
                  r63.y = 1;
                }
                r32.w = r63.x * r63.y;
                r32.w = cmp(0 < r32.w);
                if (r32.w != 0) {
                  r32.w = r53.x * r3.w;
                  r32.w = 0.25 * r32.w;
                  r34.w = dot(r59.xyz, r12.xyz);
                  r35.w = dot(r12.xyz, r61.xyz);
                  r36.w = -r34.w * r34.w + r58.x;
                  r30.w = r34.w * r35.w + -r30.w;
                  r30.w = saturate(r30.w / r36.w);
                  r34.w = r36.w / r58.x;
                  r34.w = 10 * r34.w;
                  r34.w = min(1, r34.w);
                  r30.w = r30.w + -r31.w;
                  r30.w = r34.w * r30.w + r31.w;
                  r59.xyz = r30.www * r59.xyz + r60.xyz;
                  r59.xyz = r29.www ? r59.xyz : r52.yzw;
                  r59.xyz = -v6.xyz + r59.xyz;
                  r29.w = dot(r59.xyz, r59.xyz);
                  r29.w = rsqrt(r29.w);
                  r60.xyz = r59.xyz * r29.www;
                  if (4 == 0) r30.w = 0; else if (4+16 < 32) {                   r30.w = (uint)r53.w << (32-(4 + 16)); r30.w = (uint)r30.w >> (32-4);                  } else r30.w = (uint)r53.w >> 16;
                  r31.w = cmp(0 < (uint)r30.w);
                  r31.w = r1.w ? r31.w : 0;
                  if (r31.w != 0) {
                    r30.w = (int)r30.w + numLights;
                    r30.w = (int)r30.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.w, r30.w, l(52), t12.xxxx
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r30.w, l(100), t12.xyzw
                  r61.x = samp0[]..swiz;
                  r61.y = samp0[]..swiz;
                  r61.z = samp0[]..swiz;
                  r61.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r30.w, l(116), t12.xyzw
                  r64.x = samp0[]..swiz;
                  r64.y = samp0[]..swiz;
                  r64.z = samp0[]..swiz;
                  r64.w = samp0[]..swiz;
                    r34.w = abs(r33.w) * -0.200000003 + 0.400000006;
                    r35.w = cmp(r33.w < 0);
                    r34.w = r35.w ? -r34.w : r34.w;
                    r23.xyz = r2.xyz * r34.www + v6.xyz;
                    r34.w = dot(r61.xyzw, r23.xyzw);
                    r35.w = dot(r64.xyzw, r23.xyzw);
                    r36.w = cmp(r35.w < r34.w);
                    if (r36.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r30.w, l(68), t12.xyzw
                    r61.x = samp0[]..swiz;
                    r61.y = samp0[]..swiz;
                    r61.z = samp0[]..swiz;
                    r61.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r30.w, l(84), t12.xyzw
                    r64.x = samp0[]..swiz;
                    r64.y = samp0[]..swiz;
                    r64.z = samp0[]..swiz;
                    r64.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r30.w, l(132), t12.xyzw
                    r65.x = samp0[]..swiz;
                    r65.y = samp0[]..swiz;
                    r65.z = samp0[]..swiz;
                    r65.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r66.xyzw, r30.w, l(148), t12.xyzw
                    r66.x = samp0[]..swiz;
                    r66.y = samp0[]..swiz;
                    r66.z = samp0[]..swiz;
                    r66.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.zw, r30.w, l(164), t12.xxxy
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                      r61.x = dot(r61.xyzw, r23.xyzw);
                      r61.y = dot(r64.xyzw, r23.xyzw);
                      r23.xy = r61.xy / r35.ww;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r66.zw;
                      r23.xy = r23.xy * r66.xy;
                      r61.xy = r31.ww / r65.xz;
                      r61.zw = float2(1,1) + -r61.xy;
                      r61.zw = cmp(r23.xy >= r61.zw);
                      r61.xy = cmp(r61.xy >= r23.xy);
                      r61.xy = (int2)r61.xy | (int2)r61.zw;
                      r23.z = (int)r61.y | (int)r61.x;
                      r23.xy = saturate(r23.xy);
                      r61.xy = r23.xy * r65.xz + r65.yw;
                      r23.x = r42.w * r35.w;
                      r23.y = r42.z * r35.w + r34.w;
                      r23.x = r23.y / r23.x;
                    } else {
                      r23.z = -1;
                    }
                    r23.y = (int)r36.w | (int)r23.z;
                    if (r23.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r30.w, l(28), t12.xxxx
                    r23.y = samp0[]..swiz;
                      r23.x = max(6.10351563e-05, r23.x);
                      r23.y = (int)r23.y & 0x0000ffff;
                      if (r15.w != 0) {
                        r64.z = (uint)r23.y;
                        r23.z = 0;
                        r30.w = 0;
                        while (true) {
                          r34.w = cmp((int)r30.w >= 8);
                          if (r34.w != 0) break;
                          r65.x = dot(icb[r30.w+0].yx, r19.xw);
                          r65.y = dot(icb[r30.w+0].xy, r8.xy);
                          r64.xy = r65.xy * r31.ww + r61.xy;
                          r34.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r64.xyz, r23.x).x;
                          r23.z = r34.w * 0.125 + r23.z;
                          r30.w = (int)r30.w + 1;
                        }
                      } else {
                        r61.z = (uint)r23.y;
                        r23.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyz, r23.x).x;
                      }
                      r23.x = r23.z * r23.z;
                      r23.x = r23.x * r23.z;
                    } else {
                      r23.x = 1;
                    }
                    r63.y = r63.y * r23.x;
                  } else {
                    if (4 == 0) r23.x = 0; else if (4+20 < 32) {                     r23.x = (uint)r53.w << (32-(4 + 20)); r23.x = (uint)r23.x >> (32-4);                    } else r23.x = (uint)r53.w >> 20;
                    r23.y = cmp(0 < (uint)r23.x);
                    r23.y = r23.y ? r1.x : 0;
                    if (r23.y != 0) {
                      r23.x = (int)r23.x + numLights;
                      r23.x = (int)r23.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r23.x, l(52), t12.xxxx
                    r23.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r23.x, l(100), t12.xyzw
                    r61.x = samp0[]..swiz;
                    r61.y = samp0[]..swiz;
                    r61.z = samp0[]..swiz;
                    r61.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r23.x, l(116), t12.xyzw
                    r64.x = samp0[]..swiz;
                    r64.y = samp0[]..swiz;
                    r64.z = samp0[]..swiz;
                    r64.w = samp0[]..swiz;
                      r30.w = abs(r33.w) * -0.200000003 + 0.400000006;
                      r31.w = cmp(r33.w < 0);
                      r30.w = r31.w ? -r30.w : r30.w;
                      r24.xyz = r2.xyz * r30.www + v6.xyz;
                      r30.w = dot(r61.xyzw, r24.xyzw);
                      r31.w = dot(r64.xyzw, r24.xyzw);
                      r34.w = cmp(r31.w < r30.w);
                      if (r34.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r23.x, l(68), t12.xyzw
                      r61.x = samp0[]..swiz;
                      r61.y = samp0[]..swiz;
                      r61.z = samp0[]..swiz;
                      r61.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r23.x, l(84), t12.xyzw
                      r64.x = samp0[]..swiz;
                      r64.y = samp0[]..swiz;
                      r64.z = samp0[]..swiz;
                      r64.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r23.x, l(132), t12.xyzw
                      r65.x = samp0[]..swiz;
                      r65.y = samp0[]..swiz;
                      r65.z = samp0[]..swiz;
                      r65.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r66.xyzw, r23.x, l(148), t12.xyzw
                      r66.x = samp0[]..swiz;
                      r66.y = samp0[]..swiz;
                      r66.z = samp0[]..swiz;
                      r66.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.zw, r23.x, l(164), t12.xxxy
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                        r61.x = dot(r61.xyzw, r24.xyzw);
                        r61.y = dot(r64.xyzw, r24.xyzw);
                        r24.xy = r61.xy / r31.ww;
                        r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r24.xy = r24.xy + r66.zw;
                        r24.xy = r24.xy * r66.xy;
                        r61.xy = r23.yy / r65.xz;
                        r61.zw = float2(1,1) + -r61.xy;
                        r61.zw = cmp(r24.xy >= r61.zw);
                        r61.xy = cmp(r61.xy >= r24.xy);
                        r61.xy = (int2)r61.xy | (int2)r61.zw;
                        r24.z = (int)r61.y | (int)r61.x;
                        r24.xy = saturate(r24.xy);
                        r61.xy = r24.xy * r65.xz + r65.yw;
                        r24.x = r42.w * r31.w;
                        r24.y = r42.z * r31.w + r30.w;
                        r24.x = r24.y / r24.x;
                      } else {
                        r24.z = -1;
                      }
                      r24.y = (int)r34.w | (int)r24.z;
                      if (r24.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.x, r23.x, l(28), t12.xxxx
                      r23.x = samp0[]..swiz;
                        r24.x = max(6.10351563e-05, r24.x);
                        r23.x = (int)r23.x & 0x0000ffff;
                        if (r15.w != 0) {
                          r64.z = (uint)r23.x;
                          r24.yz = float2(0,0);
                          while (true) {
                            r30.w = cmp((int)r24.z >= 8);
                            if (r30.w != 0) break;
                            r65.x = dot(icb[r24.z+0].xy, r9.xy);
                            r65.y = dot(icb[r24.z+0].yx, r9.xz);
                            r64.xy = r65.xy * r23.yy + r61.xy;
                            r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r64.xyz, r24.x).x;
                            r24.y = r30.w * 0.125 + r24.y;
                            r24.z = (int)r24.z + 1;
                          }
                        } else {
                          r61.z = (uint)r23.x;
                          r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r61.xyz, r24.x).x;
                        }
                        r23.x = r24.y * r24.y;
                        r23.x = r23.x * r24.y;
                      } else {
                        r23.x = 1;
                      }
                      r63.y = r63.y * r23.x;
                    }
                  }
                  r23.x = r63.x * r63.y;
                  r23.y = -abs(r33.w) * r5.z + 1;
                  r23.y = r23.y * r23.y;
                  r23.y = -r23.y * 0.620000005 + 0.620000005;
                  r23.y = r23.y + -abs(r33.w);
                  r23.y = r4.w * r23.y + abs(r33.w);
                  r24.x = cmp(0 < r33.w);
                  r24.z = saturate(dot(r2.xyz, r60.xyz));
                  r59.xyz = r59.xyz * r29.www + r7.xyz;
                  r29.w = dot(r59.xyz, r59.xyz);
                  r29.w = rsqrt(r29.w);
                  r59.xyz = r59.xyz * r29.www;
                  r29.w = dot(r59.xyz, r7.xyz);
                  r30.w = dot(r2.xyz, r59.xyz);
                  r31.w = abs(r30.w) * r3.w + -abs(r30.w);
                  r30.w = abs(r30.w) * r31.w + 1;
                  r31.w = r24.z * r5.y + r6.z;
                  r30.w = r30.w * r30.w;
                  r30.w = r30.w * r31.w;
                  r30.w = rcp(r30.w);
                  r24.z = r24.z * r32.w;
                  r24.z = r30.w * r24.z;
                  r29.w = saturate(1 + -r29.w);
                  r30.w = r29.w * r29.w;
                  r30.w = r30.w * r30.w;
                  r29.w = r30.w * r29.w;
                  r29.w = r29.w * r24.z;
                  r59.xyz = r24.xxx ? r23.yyy : 0;
                  r23.y = r24.x ? 0 : r23.y;
                  r60.xyz = r24.xxx ? r29.www : 0;
                  r24.x = r24.x ? r24.z : 0;
                  r53.x = r52.x;
                  r24.z = dot(r53.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r24.z = r24.z * r23.x;
                  r29.w = cmp(r16.w < r24.z);
                  if (r29.w != 0) {
                    r29.w = r20.z * r20.w;
                    r61.xyz = r29.www * r46.xyz;
                    r21.xyz = r61.xyz * r48.xyz + r21.xyz;
                    r43.xyz = r61.xyz * r51.xyz + r43.xyz;
                    r45.xyz = r61.xyz * r49.xyz + r45.xyz;
                    r44.xyz = r61.xyz * r50.xyz + r44.xyz;
                    r49.xyz = r24.xxx;
                    r16.w = r24.z;
                    r51.xyz = r23.yyy;
                    r46.xyz = r53.xyz;
                    r47.xyz = r62.xyz;
                    r48.xyz = r59.xyz;
                    r50.xyz = r60.xyz;
                    r20.zw = r63.xy;
                  } else {
                    r59.xyw = r53.xyz * r23.xxx;
                    r21.xyz = r59.xyw * r59.zzz + r21.xyz;
                    r43.xyz = r59.xyw * r23.yyy + r43.xyz;
                    r45.xyz = r59.xyw * r24.xxx + r45.xyz;
                    r44.xyz = r59.xyw * r60.xyz + r44.xyz;
                  }
                }
              }
            }
            break;
            case 2 :            r59.xy = r55.zw;
            r59.z = r56.w;
            r59.xyz = -v6.xyz + r59.xyz;
            r23.x = dot(r59.xyz, r59.xyz);
            r23.x = rsqrt(r23.x);
            r60.xyz = r59.xyz * r23.xxx;
            r23.y = dot(r2.xyz, r60.xyz);
            r24.x = cmp(0 < abs(r23.y));
            if (r24.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r25.w, l(112), t12.yzwx
            r61.x = samp0[]..swiz;
            r61.y = samp0[]..swiz;
            r61.z = samp0[]..swiz;
            r61.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.xyzw, r25.w, l(128), t12.zxyw
            r62.x = samp0[]..swiz;
            r62.y = samp0[]..swiz;
            r62.z = samp0[]..swiz;
            r62.w = samp0[]..swiz;
              r64.xyz = r61.xyz;
              r64.w = r62.y;
              r24.x = dot(r64.xyzw, r22.xyzw);
              r24.z = cmp(r24.x < 1);
              if (r24.z != 0) {
                r63.xzw = float3(1,1,1);
                r65.x = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r66.xyzw, r25.w, l(172), t12.yzwx
              r66.x = samp0[]..swiz;
              r66.y = samp0[]..swiz;
              r66.z = samp0[]..swiz;
              r66.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r67.xyzw, r25.w, l(188), t12.wxyz
              r67.x = samp0[]..swiz;
              r67.y = samp0[]..swiz;
              r67.z = samp0[]..swiz;
              r67.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r68.xyzw, r25.w, l(204), t12.xyzw
              r68.x = samp0[]..swiz;
              r68.y = samp0[]..swiz;
              r68.z = samp0[]..swiz;
              r68.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.z, r25.w, l(236), t12.xxxx
              r24.z = samp0[]..swiz;
                r69.xyz = -v6.xyz + r52.yzw;
                r29.w = r55.x * r55.x;
                r30.w = dot(r69.xyz, r69.xyz);
                r29.w = r29.w / r30.w;
                r29.w = min(1, r29.w);
                r42.zw = saturate(r24.xx * r54.xz + r54.yw);
                r54.xy = r42.zw * r42.zw;
                r42.zw = r42.zw * float2(-2,-2) + float2(3,3);
                r42.zw = r54.xy * r42.zw;
                r29.w = r42.z * r29.w;
                r29.w = r29.w * r42.w;
                r56.w = r57.x;
                r54.x = dot(r56.xyzw, r22.xyzw);
                r69.xyz = r57.yzw;
                r69.w = r58.w;
                r54.y = dot(r69.xyzw, r22.xyzw);
                r25.xy = r54.xy / r24.xx;
                r24.x = cmp(r66.w < 0.00048828125);
                if (r24.x != 0) {
                  r67.y = r68.x;
                  r42.zw = saturate(abs(r25.xy) * r67.zw + r67.xy);
                  r54.xy = r42.zw * r42.zw;
                  r42.zw = r42.zw * float2(-2,-2) + float2(3,3);
                  r42.zw = r54.xy * r42.zw;
                  r24.x = r42.z * r42.w;
                } else {
                  r66.w = r67.y;
                  r54.xyzw = saturate(r66.xyzw * abs(r25.yyxx));
                  r54.xyzw = log2(r54.xyzw);
                  r54.xyzw = r67.xxxx * r54.xyzw;
                  r54.xyzw = exp2(r54.xyzw);
                  r42.zw = r54.xy + r54.zw;
                  r42.zw = log2(r42.zw);
                  r42.zw = r68.xx * r42.zw;
                  r42.zw = exp2(r42.zw);
                  r30.w = r67.z * r42.z;
                  r31.w = r67.w * r42.w + -1;
                  r30.w = r67.w * r42.w + -r30.w;
                  r30.w = saturate(r31.w / r30.w);
                  r31.w = r30.w * r30.w;
                  r30.w = r30.w * -2 + 3;
                  r24.x = r31.w * r30.w;
                }
                r65.x = r29.w * r24.x;
                r24.x = r24.z ? 0.000000 : 0;
                if (r24.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyz, r25.w, l(220), t12.xyzx
                r54.x = samp0[]..swiz;
                r54.y = samp0[]..swiz;
                r54.z = samp0[]..swiz;
                  r24.z = dot(r68.yzw, r25.xyz);
                  r25.x = dot(r54.xyz, r25.xyz);
                  r54.x = frac(r24.z);
                  r54.y = frac(r25.x);
                  r24.x = (int)r24.x + -1;
                  r54.z = (uint)r24.x;
                  r63.xzw = gCookieArray.SampleLevel(samplerLinear_s, r54.xyz, 0).xyz;
                } else {
                  r63.xzw = float3(1,1,1);
                }
              }
              r52.yz = r53.yz;
              r52.xyz = r52.xyz * r63.xzw;
              r24.x = cmp(0 < r65.x);
              if (r24.x != 0) {
                if (3 == 0) r24.x = 0; else if (3+27 < 32) {                 r24.x = (uint)r53.w << (32-(3 + 27)); r24.x = (uint)r24.x >> (32-3);                } else r24.x = (uint)r53.w >> 27;
                r24.x = cmp((int)r24.x != 1);
                if (r24.x != 0) {
                  r24.x = abs(r23.y) * -0.200000003 + 0.400000006;
                  r24.z = cmp(r23.y < 0);
                  r24.x = r24.z ? -r24.x : r24.x;
                  r26.xyz = r2.xyz * r24.xxx + v6.xyz;
                  r61.xyz = r58.xyz;
                  r24.x = dot(r61.xyzw, r26.xyzw);
                  r24.z = dot(r64.xyzw, r26.xyzw);
                  r25.x = cmp(r24.z >= r24.x);
                  if (r25.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.y, r25.w, l(144), t12.xxxx
                  r62.y = samp0[]..swiz;
                    r56.w = r57.x;
                    r25.x = dot(r56.xyzw, r26.xyzw);
                    r58.xyz = r57.yzw;
                    r25.y = dot(r58.xyzw, r26.xyzw);
                    r25.xy = r25.xy / r24.zz;
                    r25.xy = saturate(r25.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r26.xy = r25.xy * r62.zw + r62.xy;
                    r24.x = r24.x / r24.z;
                    r24.x = max(6.10351563e-05, r24.x);
                    r24.z = (int)r53.w & 0x0000ffff;
                    if (r15.w != 0) {
                      r54.z = (uint)r24.z;
                      r25.xy = float2(0,0);
                      while (true) {
                        r25.w = cmp((int)r25.y >= 8);
                        if (r25.w != 0) break;
                        r56.x = dot(icb[r25.y+0].xy, r29.xy);
                        r56.y = dot(icb[r25.y+0].yx, r29.xz);
                        r54.xy = r56.xy * r55.yy + r26.xy;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r54.xyz, r24.x).x;
                        r25.x = r25.w * 0.125 + r25.x;
                        r25.y = (int)r25.y + 1;
                      }
                    } else {
                      r26.z = (uint)r24.z;
                      r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r24.x).x;
                    }
                    r24.x = r25.x * r25.x;
                    r65.y = r24.x * r25.x;
                  } else {
                    r65.y = 1;
                  }
                } else {
                  r65.y = 1;
                }
                r24.x = r65.x * r65.y;
                r24.x = cmp(0 < r24.x);
                if (r24.x != 0) {
                  r24.x = r53.x * r3.w;
                  r24.x = 0.25 * r24.x;
                  if (4 == 0) r24.z = 0; else if (4+16 < 32) {                   r24.z = (uint)r53.w << (32-(4 + 16)); r24.z = (uint)r24.z >> (32-4);                  } else r24.z = (uint)r53.w >> 16;
                  r25.y = cmp(0 < (uint)r24.z);
                  r25.y = r1.w ? r25.y : 0;
                  if (r25.y != 0) {
                    r24.z = (int)r24.z + numLights;
                    r24.z = (int)r24.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.y, r24.z, l(52), t12.xxxx
                  r25.y = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r24.z, l(68), t12.xyzw
                  r54.x = samp0[]..swiz;
                  r54.y = samp0[]..swiz;
                  r54.z = samp0[]..swiz;
                  r54.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r24.z, l(84), t12.xyzw
                  r55.x = samp0[]..swiz;
                  r55.y = samp0[]..swiz;
                  r55.z = samp0[]..swiz;
                  r55.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r24.z, l(100), t12.xyzw
                  r56.x = samp0[]..swiz;
                  r56.y = samp0[]..swiz;
                  r56.z = samp0[]..swiz;
                  r56.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r24.z, l(116), t12.xyzw
                  r57.x = samp0[]..swiz;
                  r57.y = samp0[]..swiz;
                  r57.z = samp0[]..swiz;
                  r57.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r24.z, l(132), t12.xyzw
                  r58.x = samp0[]..swiz;
                  r58.y = samp0[]..swiz;
                  r58.z = samp0[]..swiz;
                  r58.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r24.z, l(148), t12.xyzw
                  r61.x = samp0[]..swiz;
                  r61.y = samp0[]..swiz;
                  r61.z = samp0[]..swiz;
                  r61.w = samp0[]..swiz;
                    r25.w = abs(r23.y) * -0.200000003 + 0.400000006;
                    r26.x = cmp(r23.y < 0);
                    r25.w = r26.x ? -r25.w : r25.w;
                    r27.xyz = r2.xyz * r25.www + v6.xyz;
                    r26.x = dot(r54.xyzw, r27.xyzw);
                    r26.y = dot(r55.xyzw, r27.xyzw);
                    r25.w = dot(r56.xyzw, r27.xyzw);
                    r26.z = dot(r57.xyzw, r27.xyzw);
                    r27.x = cmp(r26.z < r25.w);
                    r26.xy = r26.xy / r26.zz;
                    r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r26.xy = r26.xy + r61.zw;
                    r26.xy = r26.xy * r61.xy;
                    r27.yz = r25.yy / r58.xz;
                    r42.zw = float2(1,1) + -r27.yz;
                    r42.zw = cmp(r26.xy >= r42.zw);
                    r27.yz = cmp(r27.yz >= r26.xy);
                    r27.yz = (int2)r27.yz | (int2)r42.zw;
                    r27.y = (int)r27.z | (int)r27.y;
                    r27.x = (int)r27.x | (int)r27.y;
                    if (r27.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.x, r24.z, l(28), t12.xxxx
                    r27.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.yz, r24.z, l(164), t12.xxyx
                    r27.y = samp0[]..swiz;
                    r27.z = samp0[]..swiz;
                      r26.xy = saturate(r26.xy);
                      r53.xy = r26.xy * r58.xz + r58.yw;
                      r24.z = r27.z * r26.z;
                      r25.w = r27.y * r26.z + r25.w;
                      r24.z = r25.w / r24.z;
                      r24.z = max(6.10351563e-05, r24.z);
                      r25.w = r27.x ? 0.000000 : 0;
                      if (r15.w != 0) {
                        r26.z = (uint)r25.w;
                        r27.xy = float2(0,0);
                        while (true) {
                          r27.z = cmp((int)r27.y >= 8);
                          if (r27.z != 0) break;
                          r54.x = dot(icb[r27.y+0].xy, r30.xy);
                          r54.y = dot(icb[r27.y+0].yx, r30.xz);
                          r26.xy = r54.xy * r25.yy + r53.xy;
                          r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r24.z).x;
                          r27.x = r26.x * 0.125 + r27.x;
                          r27.y = (int)r27.y + 1;
                        }
                      } else {
                        r53.z = (uint)r25.w;
                        r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r53.xyz, r24.z).x;
                      }
                      r24.z = r27.x * r27.x;
                      r24.z = r24.z * r27.x;
                    } else {
                      r24.z = 1;
                    }
                    r65.y = r65.y * r24.z;
                  } else {
                    if (4 == 0) r24.z = 0; else if (4+20 < 32) {                     r24.z = (uint)r53.w << (32-(4 + 20)); r24.z = (uint)r24.z >> (32-4);                    } else r24.z = (uint)r53.w >> 20;
                    r25.y = cmp(0 < (uint)r24.z);
                    r25.y = r25.y ? r1.x : 0;
                    if (r25.y != 0) {
                      r24.z = (int)r24.z + numLights;
                      r24.z = (int)r24.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.y, r24.z, l(52), t12.xxxx
                    r25.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r24.z, l(68), t12.xyzw
                    r53.x = samp0[]..swiz;
                    r53.y = samp0[]..swiz;
                    r53.z = samp0[]..swiz;
                    r53.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r24.z, l(84), t12.xyzw
                    r54.x = samp0[]..swiz;
                    r54.y = samp0[]..swiz;
                    r54.z = samp0[]..swiz;
                    r54.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r24.z, l(100), t12.xyzw
                    r55.x = samp0[]..swiz;
                    r55.y = samp0[]..swiz;
                    r55.z = samp0[]..swiz;
                    r55.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r24.z, l(116), t12.xyzw
                    r56.x = samp0[]..swiz;
                    r56.y = samp0[]..swiz;
                    r56.z = samp0[]..swiz;
                    r56.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r24.z, l(132), t12.xyzw
                    r57.x = samp0[]..swiz;
                    r57.y = samp0[]..swiz;
                    r57.z = samp0[]..swiz;
                    r57.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r24.z, l(148), t12.xyzw
                    r58.x = samp0[]..swiz;
                    r58.y = samp0[]..swiz;
                    r58.z = samp0[]..swiz;
                    r58.w = samp0[]..swiz;
                      r25.w = abs(r23.y) * -0.200000003 + 0.400000006;
                      r26.x = cmp(r23.y < 0);
                      r25.w = r26.x ? -r25.w : r25.w;
                      r28.xyz = r2.xyz * r25.www + v6.xyz;
                      r26.x = dot(r53.xyzw, r28.xyzw);
                      r26.y = dot(r54.xyzw, r28.xyzw);
                      r25.w = dot(r55.xyzw, r28.xyzw);
                      r26.z = dot(r56.xyzw, r28.xyzw);
                      r27.y = cmp(r26.z < r25.w);
                      r26.xy = r26.xy / r26.zz;
                      r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r26.xy = r26.xy + r58.zw;
                      r26.xy = r26.xy * r58.xy;
                      r28.xy = r25.yy / r57.xz;
                      r42.zw = float2(1,1) + -r28.xy;
                      r42.zw = cmp(r26.xy >= r42.zw);
                      r28.xy = cmp(r28.xy >= r26.xy);
                      r28.xy = (int2)r28.xy | (int2)r42.zw;
                      r27.z = (int)r28.y | (int)r28.x;
                      r27.y = (int)r27.y | (int)r27.z;
                      if (r27.y == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.y, r24.z, l(28), t12.xxxx
                      r27.y = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xy, r24.z, l(164), t12.xyxx
                      r28.x = samp0[]..swiz;
                      r28.y = samp0[]..swiz;
                        r26.xy = saturate(r26.xy);
                        r53.xy = r26.xy * r57.xz + r57.yw;
                        r24.z = r28.y * r26.z;
                        r25.w = r28.x * r26.z + r25.w;
                        r24.z = r25.w / r24.z;
                        r24.z = max(6.10351563e-05, r24.z);
                        r25.w = r27.y ? 0.000000 : 0;
                        if (r15.w != 0) {
                          r26.z = (uint)r25.w;
                          r27.yz = float2(0,0);
                          while (true) {
                            r28.x = cmp((int)r27.z >= 8);
                            if (r28.x != 0) break;
                            r28.x = dot(icb[r27.z+0].xy, r31.xy);
                            r28.y = dot(icb[r27.z+0].yx, r31.xz);
                            r26.xy = r28.xy * r25.yy + r53.xy;
                            r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r24.z).x;
                            r27.y = r26.x * 0.125 + r27.y;
                            r27.z = (int)r27.z + 1;
                          }
                        } else {
                          r53.z = (uint)r25.w;
                          r27.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r53.xyz, r24.z).x;
                        }
                        r24.z = r27.y * r27.y;
                        r24.z = r24.z * r27.y;
                      } else {
                        r24.z = 1;
                      }
                      r65.y = r65.y * r24.z;
                    }
                  }
                  r24.z = r65.x * r65.y;
                  r25.y = -abs(r23.y) * r5.z + 1;
                  r25.y = r25.y * r25.y;
                  r25.y = -r25.y * 0.620000005 + 0.620000005;
                  r25.y = r25.y + -abs(r23.y);
                  r25.y = r4.w * r25.y + abs(r23.y);
                  r25.w = cmp(0 < r23.y);
                  r23.y = saturate(r23.y);
                  r26.xyz = r59.xyz * r23.xxx + r7.xyz;
                  r23.x = dot(r26.xyz, r26.xyz);
                  r23.x = rsqrt(r23.x);
                  r26.xyz = r26.xyz * r23.xxx;
                  r23.x = dot(r26.xyz, r7.xyz);
                  r26.x = dot(r2.xyz, r26.xyz);
                  r26.y = abs(r26.x) * r3.w + -abs(r26.x);
                  r26.x = abs(r26.x) * r26.y + 1;
                  r26.y = r23.y * r5.y + r6.z;
                  r26.x = r26.x * r26.x;
                  r26.x = r26.x * r26.y;
                  r26.x = rcp(r26.x);
                  r23.y = r23.y * r24.x;
                  r23.y = r26.x * r23.y;
                  r23.x = saturate(1 + -r23.x);
                  r24.x = r23.x * r23.x;
                  r24.x = r24.x * r24.x;
                  r23.x = r24.x * r23.x;
                  r23.x = r23.y * r23.x;
                  r26.xyz = r25.www ? r25.yyy : 0;
                  r24.x = r25.w ? 0 : r25.y;
                  r28.xyz = r25.www ? r23.xxx : 0;
                  r23.x = r25.w ? r23.y : 0;
                  r23.y = dot(r52.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r23.y = r24.z * r23.y;
                  r25.y = cmp(r16.w < r23.y);
                  if (r25.y != 0) {
                    r25.y = r20.z * r20.w;
                    r53.xyz = r25.yyy * r46.xyz;
                    r21.xyz = r53.xyz * r48.xyz + r21.xyz;
                    r43.xyz = r53.xyz * r51.xyz + r43.xyz;
                    r45.xyz = r53.xyz * r49.xyz + r45.xyz;
                    r44.xyz = r53.xyz * r50.xyz + r44.xyz;
                    r49.xyz = r23.xxx;
                    r16.w = r23.y;
                    r51.xyz = r24.xxx;
                    r46.xyz = r52.xyz;
                    r47.xyz = r60.xyz;
                    r48.xyz = r26.xyz;
                    r50.xyz = r28.xyz;
                    r20.zw = r65.xy;
                  } else {
                    r52.xyz = r24.zzz * r52.xyz;
                    r21.xyz = r52.xyz * r26.zzz + r21.xyz;
                    r43.xyz = r52.xyz * r24.xxx + r43.xyz;
                    r45.xyz = r52.xyz * r23.xxx + r45.xyz;
                    r44.xyz = r52.xyz * r28.xyz + r44.xyz;
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
    }
    r32.xyz = r21.xyz;
    r33.xyz = r43.xyz;
    r34.xyz = r44.xyz;
    r35.xyz = r45.xyz;
    r36.xyz = r46.xyz;
    r37.xyz = r47.xyz;
    r38.xyz = r48.xyz;
    r40.xyz = r49.xyz;
    r41.xyz = r50.xyz;
    r17.zw = r20.zw;
    r42.y = r16.w;
    r39.xyz = r51.xyz;
    r5.w = (int)r5.w + 32;
  }
  r7.z = 0;
  r7.xy = float2(1,-1) * r37.yx;
  r1.xzw = r37.zxy * r7.yzx;
  r1.xzw = r37.yzx * r7.zxy + -r1.xzw;
  r5.yzw = viewProjectionMatrix._m10_m11_m13 * r13.yyy;
  r5.yzw = r13.xxx * viewProjectionMatrix._m00_m01_m03 + r5.yzw;
  r5.yzw = r13.zzz * viewProjectionMatrix._m20_m21_m23 + r5.yzw;
  r5.yzw = r5.yzw + r10.yzw;
  r8.z = rcp(r5.w);
  r5.yz = r8.zz * r5.yz;
  r8.xy = r5.yz * float2(0.5,-0.5) + float2(0.5,0.5);
  r9.xyz = r37.xyz * float3(3,3,3) + r13.xyz;
  r3.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r4.w = 3.14159989 * r3.w;
  r4.w = gameTick.w * 0.5 + r4.w;
  sincos(r4.w, r10.x, r11.x);
  r11.yzw = r10.xxx * r1.xzw;
  r11.xyz = r11.xxx * r7.xyz + r11.yzw;
  r11.xyz = r11.xyz * float3(0.119999997,0.119999997,0.119999997) + r9.xyz;
  r13.xyz = viewProjectionMatrix._m10_m11_m13 * r11.yyy;
  r11.xyw = r11.xxx * viewProjectionMatrix._m00_m01_m03 + r13.xyz;
  r11.xyz = r11.zzz * viewProjectionMatrix._m20_m21_m23 + r11.xyw;
  r11.xyz = r11.xyz + r10.yzw;
  r5.yz = float2(0.5,-0.5) * r11.xy;
  r11.z = rcp(r11.z);
  r11.xy = r5.yz * r11.zz + float2(0.5,0.5);
  r13.xyz = -r8.xyz;
  r11.xyz = r13.xyz + r11.xyz;
  r4.w = 3.14159989 + r4.w;
  sincos(r4.w, r10.x, r14.x);
  r1.xzw = r10.xxx * r1.xzw;
  r1.xzw = r14.xxx * r7.xyz + r1.xzw;
  r1.xzw = r1.xzw * float3(0.119999997,0.119999997,0.119999997) + r9.xyz;
  r7.xyz = viewProjectionMatrix._m10_m11_m13 * r1.zzz;
  r7.xyz = r1.xxx * viewProjectionMatrix._m00_m01_m03 + r7.xyz;
  r1.xzw = r1.www * viewProjectionMatrix._m20_m21_m23 + r7.xyz;
  r1.xzw = r1.xzw + r10.yzw;
  r1.xz = float2(0.5,-0.5) * r1.xz;
  r7.z = rcp(r1.w);
  r7.xy = r1.xz * r7.zz + r13.xy;
  r13.xyw = float3(0,0,0.5);
  r1.xzw = r7.xyz + r13.wwz;
  r4.w = dot(renderTargetSize.zw, renderTargetSize.zw);
  r4.w = sqrt(r4.w);
  r5.y = dot(r11.xy, r11.xy);
  r5.y = sqrt(r5.y);
  r5.y = rcp(r5.y);
  r4.w = r5.y * r4.w;
  r5.yz = r3.ww * float2(0.5,0.5) + float2(0.333333343,1);
  r5.yz = float2(0.117647059,0.117647059) * r5.yz;
  r5.yz = r5.yz * r5.yz;
  x1[0].x = r5.y;
  r7.xyz = r11.xyz * r5.yyy + r8.xyz;
  r6.zw = cmp(r4.ww < r5.yz);
  r7.xy = renderTargetSize.xy * r7.xy;
  r9.xy = (int2)r7.xy;
  r9.zw = float2(0,0);
  r7.x = floatZSampler.Load(r9.xyz).x;
  r7.y = cmp(r7.x >= 0.984375);
  r7.w = 1.01587307 * r7.x;
  r7.x = r7.x * 64 + -63;
  r7.x = r7.y ? r7.x : r7.w;
  r7.x = max(9.99999994e-09, r7.x);
  r7.x = rcp(r7.x);
  x2[0].x = r7.x;
  r7.y = 0.0419999994 + r7.x;
  r7.y = r7.z * r7.y;
  r7.y = cmp(1 < r7.y);
  r7.y = r7.y ? 1.000000 : 0;
  r6.z = r6.z ? r7.y : 1;
  x0[0].x = r6.z;
  x1[1].x = r5.z;
  r7.yzw = r1.xzw * r5.zzz + r8.xyz;
  r7.yz = renderTargetSize.xy * r7.yz;
  r9.xy = (int2)r7.yz;
  r9.zw = float2(0,0);
  r7.y = floatZSampler.Load(r9.xyz).x;
  r7.z = cmp(r7.y >= 0.984375);
  r8.w = 1.01587307 * r7.y;
  r7.y = r7.y * 64 + -63;
  r7.y = r7.z ? r7.y : r8.w;
  r7.y = max(9.99999994e-09, r7.y);
  r7.y = rcp(r7.y);
  x2[1].x = r7.y;
  r7.z = 0.0419999994 + r7.y;
  r7.z = r7.w * r7.z;
  r7.z = cmp(1 < r7.z);
  r7.z = r7.z ? 1.000000 : 0;
  r6.w = r6.w ? r7.z : 1;
  x0[1].x = r6.w;
  r7.z = r6.z + r6.w;
  r7.z = cmp(r7.z != 0.000000);
  if (r7.z != 0) {
    r7.zw = r3.ww * float2(0.5,0.5) + float2(1.33333337,2);
    r7.zw = float2(0.117647059,0.117647059) * r7.zw;
    r7.zw = r7.zw * r7.zw + -r5.yz;
    r5.y = r6.z * r7.z + r5.y;
    x1[0].x = r5.y;
    r9.xyz = r11.xyz * r5.yyy + r8.xyz;
    r5.y = cmp(r4.w < r5.y);
    r9.xy = renderTargetSize.xy * r9.xy;
    r10.xy = (int2)r9.xy;
    r10.zw = float2(0,0);
    r7.z = floatZSampler.Load(r10.xyz).x;
    r8.w = cmp(r7.z >= 0.984375);
    r9.x = 1.01587307 * r7.z;
    r7.z = r7.z * 64 + -63;
    r7.z = r8.w ? r7.z : r9.x;
    r7.z = max(9.99999994e-09, r7.z);
    r7.z = rcp(r7.z);
    r7.x = r5.y ? r7.z : r7.x;
    x2[0].x = r7.x;
    r7.x = 0.0419999994 + r7.z;
    r7.x = r9.z * r7.x;
    r7.x = cmp(1 < r7.x);
    r7.x = r7.x ? 1.000000 : 0;
    r7.x = r7.x * r6.z;
    r5.y = r5.y ? r7.x : r6.z;
    x0[0].x = r5.y;
    r5.z = r6.w * r7.w + r5.z;
    x1[1].x = r5.z;
    r7.xzw = r1.xzw * r5.zzz + r8.xyz;
    r5.z = cmp(r4.w < r5.z);
    r7.xz = renderTargetSize.xy * r7.xz;
    r9.xy = (int2)r7.xz;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.z = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.z;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = r5.z ? r6.z : r7.y;
    x2[1].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.w * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.z = r5.z ? r6.z : r6.w;
    x0[1].x = r5.z;
    r5.y = r5.y + r5.z;
    r5.y = cmp(r5.y == 0.000000);
  } else {
    r5.y = -1;
  }
  if (r5.y == 0) {
    r5.yz = r3.ww * float2(0.5,0.5) + float2(2.33333325,3);
    r5.yz = float2(0.117647059,0.117647059) * r5.yz;
    r6.z = x1[0].x;
    r6.w = x0[0].x;
    r5.y = r5.y * r5.y + -r6.z;
    r5.y = r6.w * r5.y + r6.z;
    x1[0].x = r5.y;
    r7.xyz = r11.xyz * r5.yyy + r8.xyz;
    r5.y = cmp(r4.w < r5.y);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[0].x;
    r7.x = r5.y ? r6.z : r7.x;
    x2[0].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.y = r5.y ? r6.z : r6.w;
    x0[0].x = r5.y;
    r6.z = x1[1].x;
    r6.w = x0[1].x;
    r5.z = r5.z * r5.z + -r6.z;
    r5.z = r6.w * r5.z + r6.z;
    x1[1].x = r5.z;
    r7.xyz = r1.xzw * r5.zzz + r8.xyz;
    r5.z = cmp(r4.w < r5.z);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[1].x;
    r7.x = r5.z ? r6.z : r7.x;
    x2[1].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.z = r5.z ? r6.z : r6.w;
    x0[1].x = r5.z;
    r5.y = r5.y + r5.z;
    r5.y = cmp(r5.y == 0.000000);
  } else {
    r5.y = -1;
  }
  if (r5.y == 0) {
    r5.yz = r3.ww * float2(0.5,0.5) + float2(3.33333325,4);
    r5.yz = float2(0.117647059,0.117647059) * r5.yz;
    r6.z = x1[0].x;
    r6.w = x0[0].x;
    r5.y = r5.y * r5.y + -r6.z;
    r5.y = r6.w * r5.y + r6.z;
    x1[0].x = r5.y;
    r7.xyz = r11.xyz * r5.yyy + r8.xyz;
    r5.y = cmp(r4.w < r5.y);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[0].x;
    r7.x = r5.y ? r6.z : r7.x;
    x2[0].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.y = r5.y ? r6.z : r6.w;
    x0[0].x = r5.y;
    r6.z = x1[1].x;
    r6.w = x0[1].x;
    r5.z = r5.z * r5.z + -r6.z;
    r5.z = r6.w * r5.z + r6.z;
    x1[1].x = r5.z;
    r7.xyz = r1.xzw * r5.zzz + r8.xyz;
    r5.z = cmp(r4.w < r5.z);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[1].x;
    r7.x = r5.z ? r6.z : r7.x;
    x2[1].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.z = r5.z ? r6.z : r6.w;
    x0[1].x = r5.z;
    r5.y = r5.y + r5.z;
    r5.y = cmp(r5.y == 0.000000);
  } else {
    r5.y = -1;
  }
  if (r5.y == 0) {
    r5.yz = r3.ww * float2(0.5,0.5) + float2(4.33333349,5);
    r5.yz = float2(0.117647059,0.117647059) * r5.yz;
    r6.z = x1[0].x;
    r6.w = x0[0].x;
    r5.y = r5.y * r5.y + -r6.z;
    r5.y = r6.w * r5.y + r6.z;
    x1[0].x = r5.y;
    r7.xyz = r11.xyz * r5.yyy + r8.xyz;
    r5.y = cmp(r4.w < r5.y);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[0].x;
    r7.x = r5.y ? r6.z : r7.x;
    x2[0].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.y = r5.y ? r6.z : r6.w;
    x0[0].x = r5.y;
    r6.z = x1[1].x;
    r6.w = x0[1].x;
    r5.z = r5.z * r5.z + -r6.z;
    r5.z = r6.w * r5.z + r6.z;
    x1[1].x = r5.z;
    r7.xyz = r1.xzw * r5.zzz + r8.xyz;
    r5.z = cmp(r4.w < r5.z);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[1].x;
    r7.x = r5.z ? r6.z : r7.x;
    x2[1].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.z = r5.z ? r6.z : r6.w;
    x0[1].x = r5.z;
    r5.y = r5.y + r5.z;
    r5.y = cmp(r5.y == 0.000000);
  } else {
    r5.y = -1;
  }
  if (r5.y == 0) {
    r5.yz = r3.ww * float2(0.5,0.5) + float2(5.33333349,6);
    r5.yz = float2(0.117647059,0.117647059) * r5.yz;
    r6.z = x1[0].x;
    r6.w = x0[0].x;
    r5.y = r5.y * r5.y + -r6.z;
    r5.y = r6.w * r5.y + r6.z;
    x1[0].x = r5.y;
    r7.xyz = r11.xyz * r5.yyy + r8.xyz;
    r5.y = cmp(r4.w < r5.y);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[0].x;
    r7.x = r5.y ? r6.z : r7.x;
    x2[0].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.y = r5.y ? r6.z : r6.w;
    x0[0].x = r5.y;
    r6.z = x1[1].x;
    r6.w = x0[1].x;
    r5.z = r5.z * r5.z + -r6.z;
    r5.z = r6.w * r5.z + r6.z;
    x1[1].x = r5.z;
    r7.xyz = r1.xzw * r5.zzz + r8.xyz;
    r5.z = cmp(r4.w < r5.z);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[1].x;
    r7.x = r5.z ? r6.z : r7.x;
    x2[1].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.z = r5.z ? r6.z : r6.w;
    x0[1].x = r5.z;
    r5.y = r5.y + r5.z;
    r5.y = cmp(r5.y == 0.000000);
  } else {
    r5.y = -1;
  }
  if (r5.y == 0) {
    r5.yz = r3.ww * float2(0.5,0.5) + float2(6.33333349,7);
    r5.yz = float2(0.117647059,0.117647059) * r5.yz;
    r6.z = x1[0].x;
    r6.w = x0[0].x;
    r5.y = r5.y * r5.y + -r6.z;
    r5.y = r6.w * r5.y + r6.z;
    x1[0].x = r5.y;
    r7.xyz = r11.xyz * r5.yyy + r8.xyz;
    r5.y = cmp(r4.w < r5.y);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[0].x;
    r7.x = r5.y ? r6.z : r7.x;
    x2[0].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.y = r5.y ? r6.z : r6.w;
    x0[0].x = r5.y;
    r6.z = x1[1].x;
    r6.w = x0[1].x;
    r5.z = r5.z * r5.z + -r6.z;
    r5.z = r6.w * r5.z + r6.z;
    x1[1].x = r5.z;
    r7.xyz = r1.xzw * r5.zzz + r8.xyz;
    r5.z = cmp(r4.w < r5.z);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r6.z = floatZSampler.Load(r9.xyz).x;
    r7.x = cmp(r6.z >= 0.984375);
    r7.y = 1.01587307 * r6.z;
    r6.z = r6.z * 64 + -63;
    r6.z = r7.x ? r6.z : r7.y;
    r6.z = max(9.99999994e-09, r6.z);
    r6.z = rcp(r6.z);
    r7.x = x2[1].x;
    r7.x = r5.z ? r6.z : r7.x;
    x2[1].x = r7.x;
    r6.z = 0.0419999994 + r6.z;
    r6.z = r7.z * r6.z;
    r6.z = cmp(1 < r6.z);
    r6.z = r6.z ? 1.000000 : 0;
    r6.z = r6.w * r6.z;
    r5.z = r5.z ? r6.z : r6.w;
    x0[1].x = r5.z;
    r5.y = r5.y + r5.z;
    r5.y = cmp(r5.y == 0.000000);
  } else {
    r5.y = -1;
  }
  if (r5.y == 0) {
    r5.yz = r3.ww * float2(0.5,0.5) + float2(7.33333349,8);
    r5.yz = float2(0.117647059,0.117647059) * r5.yz;
    r3.w = x1[0].x;
    r6.z = x0[0].x;
    r5.y = r5.y * r5.y + -r3.w;
    r3.w = r6.z * r5.y + r3.w;
    r7.xyz = r11.xyz * r3.www + r8.xyz;
    r3.w = cmp(r4.w < r3.w);
    r7.xy = renderTargetSize.xy * r7.xy;
    r9.xy = (int2)r7.xy;
    r9.zw = float2(0,0);
    r5.y = floatZSampler.Load(r9.xyz).x;
    r6.w = cmp(r5.y >= 0.984375);
    r7.x = 1.01587307 * r5.y;
    r5.y = r5.y * 64 + -63;
    r5.y = r6.w ? r5.y : r7.x;
    r5.y = max(9.99999994e-09, r5.y);
    r5.y = rcp(r5.y);
    r6.w = x2[0].x;
    r6.w = r3.w ? r5.y : r6.w;
    x2[0].x = r6.w;
    r5.y = 0.0419999994 + r5.y;
    r5.y = r7.z * r5.y;
    r5.y = cmp(1 < r5.y);
    r5.y = r5.y ? 1.000000 : 0;
    r5.y = r6.z * r5.y;
    r3.w = r3.w ? r5.y : r6.z;
    x0[0].x = r3.w;
    r3.w = x1[1].x;
    r5.y = x0[1].x;
    r5.z = r5.z * r5.z + -r3.w;
    r3.w = r5.y * r5.z + r3.w;
    r1.xzw = r1.xzw * r3.www + r8.xyz;
    r3.w = cmp(r4.w < r3.w);
    r1.xz = renderTargetSize.xy * r1.xz;
    r7.xy = (int2)r1.xz;
    r7.zw = float2(0,0);
    r1.x = floatZSampler.Load(r7.xyz).x;
    r1.z = cmp(r1.x >= 0.984375);
    r4.w = 1.01587307 * r1.x;
    r1.x = r1.x * 64 + -63;
    r1.x = r1.z ? r1.x : r4.w;
    r1.x = max(9.99999994e-09, r1.x);
    r1.x = rcp(r1.x);
    r1.z = x2[1].x;
    r1.z = r3.w ? r1.x : r1.z;
    x2[1].x = r1.z;
    r1.x = 0.0419999994 + r1.x;
    r1.x = r1.w * r1.x;
    r1.x = cmp(1 < r1.x);
    r1.x = r1.x ? 1.000000 : 0;
    r1.x = r5.y * r1.x;
    r1.x = r3.w ? r1.x : r5.y;
    x0[1].x = r1.x;
  }
  r1.x = x2[0].x;
  r1.x = r1.x + -r5.w;
  r1.x = cmp(3 < abs(r1.x));
  r1.z = x0[0].x;
  r1.z = -r1.z * 0.5 + 1;
  r1.x = r1.x ? 0.5 : r1.z;
  r1.z = x2[1].x;
  r1.z = r1.z + -r5.w;
  r1.z = cmp(3 < abs(r1.z));
  r1.w = x0[1].x;
  r1.w = 0.5 * r1.w;
  r1.z = r1.z ? -0.5 : -r1.w;
  r1.x = r1.x + r1.z;
  r1.x = saturate(1 + -r1.x);
  r1.z = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.z * r1.x;
  r1.x = min(r17.w, r1.x);
  r1.x = r17.z * r1.x;
  r1.xzw = r1.xxx * r36.xyz;
  r5.yzw = r1.xzw * r38.xyz + r32.xyz;
  r7.xyz = r1.xzw * r39.xyz + r33.xyz;
  r8.xyz = r1.xzw * r40.xyz + r35.xyz;
  r1.xzw = r1.xzw * r41.xyz + r34.xyz;
  r3.w = 1 + -r6.y;
  r4.w = 5 * r3.w;
  r6.z = r3.w * 5 + -2.5;
  r6.z = saturate(0.400000006 * r6.z);
  r6.z = 100 * r6.z;
  r9.xy = -r3.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r9.x);
  r6.w = r6.x * r6.w;
  r6.w = 9.1368103 * r6.w;
  r7.w = r4.w * r3.w;
  r7.w = -r7.w * 2.0159049 + r9.y;
  r7.w = exp2(r7.w);
  r7.w = r7.w * r6.x;
  r7.w = 9.70808983 * r7.w;
  r6.w = max(r7.w, r6.w);
  r6.w = max(1.26815999, r6.w);
  r9.xy = float2(0,0);
  r10.w = 0;
  r11.yz = float2(0,1);
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.x = 1;
  r17.xyzw = float4(0,0,0,0);
  r19.yzw = float3(0,0,0);
  r7.w = 0;
  r8.w = 0;
  while (true) {
    r9.w = cmp((uint)r8.w >= numRefProbes);
    if (r9.w != 0) break;
    r9.z = (uint)r8.w >> 5;
    r10.xyz = (int3)r9.xyz + (int3)r18.xyz;
    r9.z = visibleProbes.Load(r10.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r8.w, l(0), t15.wxyz
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r8.w, l(16), t15.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r8.w, l(32), t15.yxwz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r8.w, l(48), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r8.w, l(64), t15.zwxy
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r8.w, l(80), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.xy, r8.w, l(96), t15.xyxx
  r10.x = samp0[]..swiz;
  r10.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r8.w, l(116), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r8.w, l(132), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r8.w, l(148), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r8.w, l(164), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(180), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(196), t15.xyzw
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xy, r8.w, l(212), t15.xyxx
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
    r33.xyz = v6.xyz + -r20.yzw;
    r9.w = dot(r33.xyz, r33.xyz);
    r9.w = sqrt(r9.w);
    r9.w = cmp(probeDebugRadius >= r9.w);
    r10.z = (int)r26.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r10.z, l(0), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r10.z, l(16), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r10.z, l(32), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r10.z, l(48), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r10.z, l(64), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r10.z, l(80), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
    r11.w = dot(r34.xyz, r33.xyz);
    r11.w = saturate(r11.w + r34.w);
    r13.w = dot(r35.xyz, r33.xyz);
    r13.w = saturate(r13.w + r35.w);
    r11.w = r13.w * r11.w;
    r13.w = dot(r36.xyz, r33.xyz);
    r13.w = saturate(r13.w + r36.w);
    r11.w = r13.w * r11.w;
    r13.w = dot(r37.xyz, r33.xyz);
    r13.w = saturate(r13.w + r37.w);
    r11.w = r13.w * r11.w;
    r13.w = dot(r38.xyz, r33.xyz);
    r13.w = saturate(r13.w + r38.w);
    r11.w = r13.w * r11.w;
    r13.w = dot(r39.xyz, r33.xyz);
    r13.w = saturate(r13.w + r39.w);
    r11.x = r13.w * r11.w;
    r11.w = (int)r10.x & 1;
    r11.xw = r11.ww ? r11.xy : r11.zx;
    r34.xy = r26.zw;
    r34.z = r27.z;
    r13.w = dot(r12.xyz, r34.xyz);
    r14.w = dot(r33.xyz, r34.xyz);
    r14.w = r14.w + -r27.w;
    r15.w = cmp(r14.w >= 0);
    r14.w = max(abs(r14.w), r6.z);
    r14.w = r15.w ? r14.w : -r14.w;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r14.w / r13.w;
    r13.w = min(131072, abs(r13.w));
    r27.z = r28.z;
    r14.w = dot(r12.xyz, r27.xyz);
    r15.w = dot(r33.xyz, r27.xyz);
    r15.w = r15.w + -r28.w;
    r16.z = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r6.z);
    r15.w = r16.z ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r13.w = min(abs(r14.w), r13.w);
    r28.z = r29.z;
    r14.w = dot(r12.xyz, r28.xyz);
    r15.w = dot(r33.xyz, r28.xyz);
    r15.w = r15.w + -r29.w;
    r16.z = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r6.z);
    r15.w = r16.z ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r13.w = min(abs(r14.w), r13.w);
    r29.z = r30.z;
    r14.w = dot(r12.xyz, r29.xyz);
    r15.w = dot(r33.xyz, r29.xyz);
    r15.w = r15.w + -r30.w;
    r16.z = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r6.z);
    r15.w = r16.z ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r13.w = min(abs(r14.w), r13.w);
    r30.z = r31.x;
    r14.w = dot(r12.xyz, r30.xyz);
    r15.w = dot(r33.xyz, r30.xyz);
    r15.w = r15.w + -r31.y;
    r16.z = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r6.z);
    r15.w = r16.z ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r13.w = min(abs(r14.w), r13.w);
    r32.zw = r31.zw;
    r14.w = dot(r12.zxy, r32.xzw);
    r15.w = dot(r33.zxy, r32.xzw);
    r15.w = r15.w + -r32.y;
    r16.z = cmp(r15.w >= 0);
    r15.w = max(abs(r15.w), r6.z);
    r15.w = r16.z ? r15.w : -r15.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r15.w / r14.w;
    r13.w = min(abs(r14.w), r13.w);
    r27.x = r23.w;
    r27.yz = r24.zw;
    r27.xyz = r27.xyz + r33.xyz;
    r27.xyz = r12.xyz * r13.www + r27.xyz;
    r14.w = dot(r27.xyz, r27.xyz);
    r14.w = sqrt(r14.w);
    r13.w = r13.w / r14.w;
    r13.w = r13.w + r13.w;
    r13.w = sqrt(r13.w);
    r13.w = r3.w * 5 + r13.w;
    r13.w = -0.844799995 + r13.w;
    r20.y = r21.z;
    r20.z = r22.x;
    r28.x = dot(r27.xyz, r20.xyz);
    r29.xy = r21.xw;
    r29.z = r22.w;
    r28.y = dot(r27.xyz, r29.xyz);
    r22.x = r21.y;
    r28.z = dot(r27.xyz, r22.xyz);
    if (6 == 0) r16.z = 0; else if (6+25 < 32) {     r16.z = (uint)r26.y << (32-(6 + 25)); r16.z = (uint)r16.z >> (32-6);    } else r16.z = (uint)r26.y >> 25;
    if (9 == 0) r16.w = 0; else if (9+16 < 32) {     r16.w = (uint)r26.y << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);    } else r16.w = (uint)r26.y >> 16;
    r28.w = (uint)r16.w;
    r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r28.xyzw, r13.w).xyz;
    r26.yzw = (int3)r21.xyz & int3(-2147483648,-2147483648,-2147483648);
    r26.yzw = cmp((int3)r26.yzw == int3(2139095040,2139095040,2139095040));
    r13.w = (int)r26.z | (int)r26.y;
    r13.w = (int)r26.w | (int)r13.w;
    r21.xyz = r13.www ? float3(1,1,0) : r21.xyz;
    r27.x = dot(r33.xyz, r20.xyz);
    r27.y = dot(r33.xyz, r29.xyz);
    r27.z = dot(r33.xyz, r22.xyz);
    r23.xyz = saturate(r27.xyz * r23.xyz + float3(0.5,0.5,0.5));
    r24.z = r25.x;
    r23.xyz = r23.xyz * r24.xyz + r25.yzw;
    r28.x = dot(r2.xyz, r20.xyz);
    r28.y = dot(r2.xyz, r29.xyz);
    r28.z = dot(r2.xyz, r22.xyz);
    r20.xyz = cmp(float3(0,0,0) < r28.xyz);
    r13.z = r20.x ? 0 : 0.5;
    r22.xyz = r23.xyz + r13.xyz;
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
    r13.z = (int)r26.z | (int)r26.y;
    r13.z = (int)r26.w | (int)r13.z;
    r25.xyz = r13.zzz ? float3(1,1,0) : r25.xyz;
    r27.xyzw = r17.xyzw;
    r26.yzw = r19.yzw;
    r13.z = r7.w;
    r13.w = r9.z;
    while (true) {
      if (r13.w == 0) break;
      r14.z = firstbitlow((uint)r13.w);
      r14.z = 1 << (int)r14.z;
      r14.w = (int)r13.w & (int)r14.z;
      if (r14.w != 0) {
        r14.z = ~(int)r14.z;
        r13.w = (int)r13.w & (int)r14.z;
        if (r9.w != 0) {
          r14.z = r10.x;
          r28.xy = r11.xw;
          r14.w = 1;
          while (true) {
            r15.z = cmp((int)r14.w >= (int)r16.z);
            if (r15.z != 0) break;
            r15.z = (int)r10.z + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.z, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.z, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.z, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.z, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
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
            r15.z = dot(r29.xyz, r33.xyz);
            r15.z = saturate(r15.z + r29.w);
            r15.z = r28.x * r15.z;
            r15.w = dot(r30.xyz, r33.xyz);
            r15.w = saturate(r15.w + r30.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r31.xyz, r33.xyz);
            r15.w = saturate(r15.w + r31.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r32.xyz, r33.xyz);
            r15.w = saturate(r15.w + r32.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r34.xyz, r33.xyz);
            r15.w = saturate(r15.w + r34.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r35.xyz, r33.xyz);
            r15.w = saturate(r15.w + r35.w);
            r28.x = r15.z * r15.w;
            r16.w = (uint)r14.z >> 2;
            if (1 == 0) r18.w = 0; else if (1+2 < 32) {             r18.w = (uint)r14.z << (32-(1 + 2)); r18.w = (uint)r18.w >> (32-1);            } else r18.w = (uint)r14.z >> 2;
            r20.z = (int)r16.w & 2;
            r21.w = max(r28.y, r28.x);
            r15.z = -r15.z * r15.w + 1;
            r15.z = r28.y * r15.z;
            r16.y = r20.z ? r15.z : r21.w;
            r28.xy = r18.ww ? r28.xy : r16.xy;
            r14.w = (int)r14.w + 1;
            r14.z = r16.w;
          }
          r28.y = saturate(r28.y);
          r14.z = r28.y * r10.y;
          r14.w = cmp(0 < r14.z);
          if (r14.w != 0) {
            r29.z = r28.y * r10.y + r26.w;
            r14.z = r14.z * r26.x;
            r28.xzw = r24.xyz * r14.zzz;
            r30.xyz = r28.zzz * r20.xyw;
            r30.xyz = r22.xyz * r28.xxx + r30.xyz;
            r28.xzw = r23.xyz * r28.www + r30.xyz;
            r30.xyz = r28.xzw * r25.xyz;
            r14.w = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r30.xyz = r28.xzw * r25.xyz + r27.xyz;
            r15.z = r14.w * r6.w;
            r28.xzw = r21.xyz * r14.zzz;
            r14.z = dot(r28.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r14.z = r6.w * r14.w + r14.z;
            r14.z = r15.z / r14.z;
            r31.x = r27.w;
            r31.yz = r26.yz;
            r29.xyw = r28.zwx * r14.zzz + r31.yzx;
            r30.w = r29.w;
          } else {
            r30.xyzw = r27.xyzw;
            r29.xyz = r26.yzw;
          }
          r13.z = -1;
          r27.xyzw = r30.xyzw;
          r26.yzw = r29.xyz;
          break;
        }
      }
    }
    if (r13.z != 0) {
      r17.xyzw = r27.xyzw;
      r19.yzw = r26.yzw;
      r7.w = -1;
      break;
    }
    r8.w = (int)r8.w + 32;
    r17.xyzw = r27.xyzw;
    r19.yzw = r26.yzw;
    r7.w = r13.z;
  }
  if (r7.w == 0) {
    r7.w = numRefProbes + -numOverrideProbes;
    r8.w = (int)r7.w & -32;
    r9.x = (int)r7.w + (int)-r8.w;
    r9.y = numRefProbes & -32;
    r9.z = (int)-r9.y + numRefProbes;
    r10.xy = float2(0,0);
    r11.w = 0;
    r13.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.x = 1;
    r16.xy = float2(0,0);
    r20.xy = float2(0,0);
    r21.xyzw = r17.xyzw;
    r22.yzw = r19.yzw;
    r9.w = r8.w;
    while (true) {
      r10.w = cmp((uint)r9.w >= numRefProbes);
      if (r10.w != 0) break;
      r10.z = (uint)r9.w >> 5;
      r11.xyz = (int3)r10.xyz + (int3)r18.xyz;
      r10.z = visibleProbes.Load(r11.xyzw).x;
      r10.w = cmp((int)r8.w == (int)r9.w);
      bitmask.x = ((~(-1 << r9.x)) << 0) & 0xffffffff;  r11.x = (((uint)0 << 0) & bitmask.x) | ((uint)r10.z & ~bitmask.x);
      r10.z = r10.w ? r11.x : r10.z;
      r10.w = cmp((int)r9.y == (int)r9.w);
      if (r9.z == 0) r11.x = 0; else if (r9.z+0 < 32) {       r11.x = (uint)r10.z << (32-(r9.z + 0)); r11.x = (uint)r11.x >> (32-r9.z);      } else r11.x = (uint)r10.z >> 0;
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
          r25.xyz = -v6.xyz + r25.xyz;
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
              r18.w = dot(r31.xyz, r27.xyz);
              r18.w = saturate(r18.w + r31.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r32.xyz, r27.xyz);
              r18.w = saturate(r18.w + r32.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r33.xyz, r27.xyz);
              r18.w = saturate(r18.w + r33.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r34.xyz, r27.xyz);
              r18.w = saturate(r18.w + r34.w);
              r16.w = r18.w * r16.w;
              r18.w = dot(r35.xyz, r27.xyz);
              r18.w = saturate(r18.w + r35.w);
              r29.x = r18.w * r16.w;
              r20.w = (uint)r13.x >> 2;
              if (1 == 0) r25.w = 0; else if (1+2 < 32) {               r25.w = (uint)r13.x << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);              } else r25.w = (uint)r13.x >> 2;
              r27.w = (int)r20.w & 2;
              r28.z = max(r29.y, r29.x);
              r16.w = -r16.w * r18.w + 1;
              r16.w = r29.y * r16.w;
              r15.y = r27.w ? r16.w : r28.z;
              r29.xy = r25.ww ? r29.xy : r15.xy;
              r14.w = (int)r14.w + 1;
              r13.x = r20.w;
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
              r13.x = max(abs(r13.x), r6.z);
              r13.x = r13.w ? r13.x : -r13.x;
              r11.z = max(1.00000001e-07, -r11.z);
              r11.z = r13.x / r11.z;
              r11.z = min(131072, abs(r11.z));
              r34.z = r35.z;
              r13.x = dot(r12.xyz, r34.xyz);
              r13.w = dot(r27.xyz, r34.xyz);
              r13.w = r13.w + -r35.w;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r6.z);
              r13.w = r14.w ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r11.z = min(abs(r13.x), r11.z);
              r35.z = r36.z;
              r13.x = dot(r12.xyz, r35.xyz);
              r13.w = dot(r27.xyz, r35.xyz);
              r13.w = r13.w + -r36.w;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r6.z);
              r13.w = r14.w ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r11.z = min(abs(r13.x), r11.z);
              r36.z = r37.z;
              r13.x = dot(r12.xyz, r36.xyz);
              r13.w = dot(r27.xyz, r36.xyz);
              r13.w = r13.w + -r37.w;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r6.z);
              r13.w = r14.w ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r11.z = min(abs(r13.x), r11.z);
              r37.z = r38.x;
              r13.x = dot(r12.xyz, r37.xyz);
              r13.w = dot(r27.xyz, r37.xyz);
              r13.w = r13.w + -r38.y;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r6.z);
              r13.w = r14.w ? r13.w : -r13.w;
              r13.x = max(1.00000001e-07, -r13.x);
              r13.x = r13.w / r13.x;
              r11.z = min(abs(r13.x), r11.z);
              r39.zw = r38.zw;
              r13.x = dot(r12.zxy, r39.xzw);
              r13.w = dot(r27.zxy, r39.xzw);
              r13.w = r13.w + -r39.y;
              r14.w = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r6.z);
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
              r11.z = r3.w * 5 + r11.z;
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
              r20.z = r25.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r20.xyz;
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
              r13.x = r11.z * r6.w;
              r15.yzw = r15.yzw * r11.yyy;
              r11.y = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r11.y = r6.w * r11.z + r11.y;
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
    r9.y = cmp(r22.w < 1);
    if (r9.y != 0) {
      r10.xy = float2(0,0);
      r11.w = 0;
      r13.yz = float2(0,1);
      r14.xy = float2(0,0);
      r15.x = 1;
      r16.xy = float2(0,0);
      r20.xy = float2(0,0);
      r23.x = r21.w;
      r23.yzw = r22.yzw;
      r9.yzw = r21.xyz;
      r10.w = r22.w;
      r13.w = 0;
      while (true) {
        r14.w = cmp((uint)r13.w >= (uint)r7.w);
        if (r14.w != 0) break;
        r10.z = (uint)r13.w >> 5;
        r11.xyz = (int3)r10.xyz + (int3)r18.xyz;
        r10.z = visibleProbes.Load(r11.xyzw).x;
        r11.x = cmp((int)r8.w == (int)r13.w);
        if (r9.x == 0) r11.y = 0; else if (r9.x+0 < 32) {         r11.y = (uint)r10.z << (32-(r9.x + 0)); r11.y = (uint)r11.y >> (32-r9.x);        } else r11.y = (uint)r10.z >> 0;
        r10.z = r11.x ? r11.y : r10.z;
        r11.x = (int)r13.w + numLights;
        r24.xyzw = r23.xyzw;
        r25.xyz = r9.yzw;
        r11.y = r10.w;
        r11.z = r10.z;
        while (true) {
          if (r11.z == 0) break;
          r14.w = firstbitlow((uint)r11.z);
          r15.z = 1 << (int)r14.w;
          r15.w = (int)r11.z & (int)r15.z;
          if (r15.w != 0) {
            r11.z = (int)r11.z ^ (int)r15.z;
            r15.z = (int)r11.x + (int)r14.w;
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
            r26.xyz = -v6.xyz + r26.xyz;
            r27.z = r26.w;
            r26.xyz = cmp(abs(r26.xyz) < r27.zxy);
            r15.z = r26.y ? r26.x : 0;
            r15.z = r26.z ? r15.z : 0;
            if (r15.z != 0) {
              r14.w = (int)r13.w + (int)r14.w;
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
              r28.xyz = v6.xyz + -r26.yzw;
              r16.w = (int)r27.w & 0x0000ffff;
              if (6 == 0) r18.w = 0; else if (6+25 < 32) {               r18.w = (uint)r27.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);              } else r18.w = (uint)r27.w >> 25;
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
                r20.w = cmp((int)r19.w >= (int)r18.w);
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
                r25.w = dot(r32.xyz, r28.xyz);
                r25.w = saturate(r25.w + r32.w);
                r20.w = r25.w * r20.w;
                r25.w = dot(r33.xyz, r28.xyz);
                r25.w = saturate(r25.w + r33.w);
                r20.w = r25.w * r20.w;
                r25.w = dot(r34.xyz, r28.xyz);
                r25.w = saturate(r25.w + r34.w);
                r20.w = r25.w * r20.w;
                r25.w = dot(r35.xyz, r28.xyz);
                r25.w = saturate(r25.w + r35.w);
                r20.w = r25.w * r20.w;
                r25.w = dot(r36.xyz, r28.xyz);
                r25.w = saturate(r25.w + r36.w);
                r30.x = r25.w * r20.w;
                r26.w = (uint)r13.x >> 2;
                if (1 == 0) r28.w = 0; else if (1+2 < 32) {                 r28.w = (uint)r13.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);                } else r28.w = (uint)r13.x >> 2;
                r29.z = (int)r26.w & 2;
                r29.w = max(r30.y, r30.x);
                r20.w = -r20.w * r25.w + 1;
                r20.w = r30.y * r20.w;
                r15.y = r29.z ? r20.w : r29.w;
                r30.xy = r28.ww ? r30.xy : r15.xy;
                r19.w = (int)r19.w + 1;
                r13.x = r26.w;
              }
              r13.x = saturate(r30.y + -r11.y);
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
                r24.w = r13.x * r15.w + r24.w;
                r13.x = r15.y * r27.z;
                r27.z = r35.z;
                r14.w = dot(r12.xyz, r27.xyz);
                r15.y = dot(r28.xyz, r27.xyz);
                r15.y = r15.y + -r35.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r6.z);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r14.w = min(131072, abs(r14.w));
                r35.z = r36.z;
                r15.y = dot(r12.xyz, r35.xyz);
                r15.z = dot(r28.xyz, r35.xyz);
                r15.z = r15.z + -r36.w;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r6.z);
                r15.z = r15.w ? r15.z : -r15.z;
                r15.y = max(1.00000001e-07, -r15.y);
                r15.y = r15.z / r15.y;
                r14.w = min(abs(r15.y), r14.w);
                r36.z = r37.z;
                r15.y = dot(r12.xyz, r36.xyz);
                r15.z = dot(r28.xyz, r36.xyz);
                r15.z = r15.z + -r37.w;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r6.z);
                r15.z = r15.w ? r15.z : -r15.z;
                r15.y = max(1.00000001e-07, -r15.y);
                r15.y = r15.z / r15.y;
                r14.w = min(abs(r15.y), r14.w);
                r37.z = r38.z;
                r15.y = dot(r12.xyz, r37.xyz);
                r15.z = dot(r28.xyz, r37.xyz);
                r15.z = r15.z + -r38.w;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r6.z);
                r15.z = r15.w ? r15.z : -r15.z;
                r15.y = max(1.00000001e-07, -r15.y);
                r15.y = r15.z / r15.y;
                r14.w = min(abs(r15.y), r14.w);
                r38.z = r39.x;
                r15.y = dot(r12.xyz, r38.xyz);
                r15.z = dot(r28.xyz, r38.xyz);
                r15.z = r15.z + -r39.y;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r6.z);
                r15.z = r15.w ? r15.z : -r15.z;
                r15.y = max(1.00000001e-07, -r15.y);
                r15.y = r15.z / r15.y;
                r14.w = min(abs(r15.y), r14.w);
                r40.zw = r39.zw;
                r15.y = dot(r12.zxy, r40.xzw);
                r15.z = dot(r28.zxy, r40.xzw);
                r15.z = r15.z + -r40.y;
                r15.w = cmp(r15.z >= 0);
                r15.z = max(abs(r15.z), r6.z);
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
                r14.w = r3.w * 5 + r14.w;
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
                r20.z = r26.z ? 0 : 0.5;
                r27.xyz = r28.xyz + r20.xyz;
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
                r25.xyz = r26.xyz * r27.xyz + r25.xyz;
                r14.w = r14.z * r6.w;
                r15.yzw = r15.yzw * r13.xxx;
                r13.x = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r13.x = r6.w * r14.z + r13.x;
                r13.x = r14.w / r13.x;
                r24.xyz = r15.yzw * r13.xxx + r24.xyz;
              }
            }
          }
        }
        r23.xyzw = r24.xyzw;
        r9.yzw = r25.xyz;
        r13.w = (int)r13.w + 32;
      }
      r22.xyzw = r23.zxyw;
      r21.xyz = r9.yzw;
      r22.xyzw = r22.yzxw;
    } else {
      r22.x = r21.w;
    }
    r3.w = max(1, r22.w);
    r3.w = rcp(r3.w);
    r22.w = saturate(r22.w);
    r17.xyz = r21.xyz * r3.www;
    r19.xyz = r22.xyz * r3.www;
    r6.z = cmp(r22.w < 0.99000001);
    if (r6.z != 0) {
      r6.z = 1 + -r22.w;
      r6.w = sunConstants.globalProbeExposure * r6.z;
      r9.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r10.x = globalProbeConstants.data[0].w * r9.x;
      r10.yz = globalProbeConstants.data[1].xy * r9.yz;
      r9.xyz = saturate(float3(0.5,0.5,0.5) + r10.xyz);
      r10.xy = globalProbeConstants.data[1].zw * r9.xy;
      r10.z = globalProbeConstants.data[2].x * r9.z;
      r9.xyz = globalProbeConstants.data[2].yzw + r10.xyz;
      r10.xyz = cmp(float3(0,0,0) < r2.xyz);
      r10.xyz = r10.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r10.w = 0;
      r11.xyz = r10.wwx + r9.xyz;
      r11.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
      r13.xyz = r2.xyz * r2.xyz;
      r13.xyz = r13.xyz * r6.www;
      r14.xyz = r10.wwy + r9.xyz;
      r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r14.xyz = r14.xyz * r13.yyy;
      r11.xyz = r11.xyz * r13.xxx + r14.xyz;
      r9.xyz = r10.wwz + r9.xyz;
      r9.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
      r9.xyz = r9.xyz * r13.zzz + r11.xyz;
      r2.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
      r2.xyz = r9.xyz * r2.xyz;
      r2.w = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r17.xyz = r21.xyz * r3.www + r2.xyz;
      r12.w = 0;
      r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r4.w).xyz;
      r3.w = sunConstants.globalProbeExposure * r6.z + -r2.w;
      r2.w = r6.y * r3.w + r2.w;
      r19.xyz = r2.xyz * r2.www + r19.xyz;
    }
  } else {
    r19.x = r17.w;
  }
  r2.xyz = r17.xyz * r0.yzw + r5.yzw;
  r0.yzw = r17.xyz * r0.yzw + r7.xyz;
  r5.yz = r6.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.yz, 0).xy;
  r1.xzw = r19.xyz * r5.yyy + r1.xzw;
  r5.yzw = r19.xyz * r5.zzz + r8.xyz;
  r0.yzw = r0.yzw * r3.xyz + r2.xyz;
  r1.xzw = float3(0.972000003,0.972000003,0.972000003) * r1.xzw;
  r1.xzw = r5.yzw * float3(0.0280000009,0.0280000009,0.0280000009) + r1.xzw;
  r2.x = saturate(0.0399999991 + r0.x);
  r2.yzw = r2.xxx * r1.xzw;
  r1.xzw = r1.xzw * r2.xxx + r0.yzw;
  r1.x = dot(r1.xzw, float3(0.298999995,0.587000012,0.114));
  r1.x = max(9.99999975e-05, r1.x);
  r1.x = max(relHDRExposure.x, r1.x);
  r1.y = hdrScale * r1.y;
  r1.y = r1.y * r5.x;
  r1.x = r1.y * r1.x;
  r1.xyz = r4.xyz * r1.xxx + r2.yzw;
  r1.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.w != 0) {
    r2.x = dot(v6.xyz, v6.xyz);
    r2.x = sqrt(r2.x);
    r2.y = cmp(0 < fogConstants.blendAmount);
    if (r2.y != 0) {
      r2.yz = r2.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.yz = fogConstants.atmospherefogdensityatcamera.xy * r2.yz;
      r2.w = cmp(0.00999999978 < abs(v6.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r2.yz;
      r2.yz = r2.ww ? r3.xy : r2.yz;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r2.yzw = fogConstants.atmosphereTotalDensity.xyz * r2.zzz;
      r2.yzw = exp2(r2.yzw);
      r2.yzw = r2.yzw + -r3.xyz;
      r2.yzw = fogConstants.blendAmount * r2.yzw + r3.xyz;
    } else {
      r2.x = r2.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.x = fogConstants.atmospherefogdensityatcamera.x * r2.x;
      r3.x = cmp(0.00999999978 < abs(v6.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r3.z = -1.44269502 * r3.y;
      r3.z = exp2(r3.z);
      r3.z = 1 + -r3.z;
      r3.y = r3.z / r3.y;
      r3.y = r3.y * r2.x;
      r2.x = r3.x ? r3.y : r2.x;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.yzw = exp2(r3.xyz);
    }
    r2.xyz = r2.yzw * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r2.xyz = r2.xyz * r0.yzw;
  } else {
    r2.w = fogConstants.heightFalloff * v6.z;
    r3.x = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r3.y = cmp(abs(r2.w) < 9.99999975e-05);
    r3.z = min(64, r3.x);
    r3.z = 1.44269502 * r3.z;
    r3.z = exp2(r3.z);
    r3.w = saturate(fogConstants.K0b);
    r4.x = cmp(r3.x < 0);
    r3.x = 1 + r3.x;
    r3.x = r4.x ? r3.z : r3.x;
    r3.x = -fogConstants.K0b + r3.x;
    r2.w = r3.y ? 1 : r2.w;
    r2.w = r3.x / r2.w;
    r2.w = r3.y ? r3.w : r2.w;
    r2.w = fogConstants.expMul * r2.w;
    r3.x = dot(v6.xyz, v6.xyz);
    r3.y = sqrt(r3.x);
    r2.w = r2.w * r3.y + fogConstants.expAdd;
    r2.w = exp2(r2.w);
    r2.w = min(1, r2.w);
    r2.w = 1 + -r2.w;
    r3.x = rsqrt(r3.x);
    r3.xyz = v6.xyz * r3.xxx;
    r3.x = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r3.x = saturate(fogConstants.sunFogAngles.y * r3.x + fogConstants.sunFogAngles.x);
    r3.y = -fogConstants.sunFogColor.w + fogConstants.fogColor.w;
    r3.x = r3.x * r3.y + fogConstants.sunFogColor.w;
    r2.w = r3.x * r2.w;
    r2.xyz = r2.www * -r0.yzw + r0.yzw;
  }
  r0.yzw = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r0.yzw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.yzw = r2.xyz ? r0.yzw : 0;
  o1.xyz = min(float3(65024,65024,64512), r0.yzw);
  if (r1.w != 0) {
    r0.y = dot(v6.xyz, v6.xyz);
    r0.z = rsqrt(r0.y);
    r2.xyz = v6.xyz * r0.zzz;
    r0.y = sqrt(r0.y);
    r0.z = cmp(0 < fogConstants.blendAmount);
    if (r0.z != 0) {
      r0.zw = r0.yy * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r0.zw = fogConstants.atmospherefogdensityatcamera.xy * r0.zw;
      r1.w = cmp(0.00999999978 < abs(v6.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r0.zw;
      r0.zw = r1.ww ? r3.xy : r0.zw;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.zzz;
      r3.xyz = exp2(r3.xyz);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.www;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r3.xyz;
      r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xyz;
    } else {
      r0.z = r0.y * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r0.z = fogConstants.atmospherefogdensityatcamera.x * r0.z;
      r0.w = cmp(0.00999999978 < abs(v6.z));
      r1.w = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r2.w = -1.44269502 * r1.w;
      r2.w = exp2(r2.w);
      r2.w = 1 + -r2.w;
      r1.w = r2.w / r1.w;
      r1.w = r1.w * r0.z;
      r0.z = r0.w ? r1.w : r0.z;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r0.zzz;
      r3.xyz = exp2(r4.xyz);
    }
    r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
    r0.z = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
    r0.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.w = fogConstants.atmosphereMieSchlickK * -r0.z + 1;
    r1.w = r1.w * r1.w;
    r1.w = 12.566371 * r1.w;
    r0.w = r0.w / r1.w;
    r0.y = -fogConstants.atmospherehazebasedist + r0.y;
    r0.y = saturate(fogConstants.atmospherehazefadedist * r0.y);
    r0.y = r0.w * r0.y;
    r0.z = saturate(r0.z);
    r0.z = r0.z * r0.z + 1;
    r0.z = r0.z * 0.0596831031 + -1;
    r0.z = fogConstants.atmospheresunstrength * r0.z + 1;
    r2.xyz = fogConstants.atmosphereMieDensity.xyz * r0.yyy;
    r0.yzw = r0.zzz * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
    r0.yzw = fogConstants.atmosphereInScatterIntensity * r0.yzw;
    r2.xyz = float3(1,1,1) + -r3.xyz;
    r0.yzw = r2.xyz * r0.yzw;
    r0.yzw = r1.xyz * r3.xyz + r0.yzw;
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
    r2.xyz = r2.xyz + -r1.xyz;
    r0.yzw = r1.www * r2.xyz + r1.xyz;
  }
  r0.yzw = relHDRExposure.yyy * r0.yzw;
  r1.xyz = cmp(r0.yzw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.yzw = r1.xyz ? r0.yzw : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.yzw);
  o2.w = r0.x;
  return;
}