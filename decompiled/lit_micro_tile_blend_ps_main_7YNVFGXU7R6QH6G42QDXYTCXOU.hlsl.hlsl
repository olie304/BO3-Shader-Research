// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:37:26 2021

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
  float2 mixScale : packoffset(c11);
  float detailScaleHeight1 : packoffset(c11.z);
  float detailScaleHeight2 : packoffset(c11.w);
  float4 colorTint : packoffset(c12);
  float4 colorTint1 : packoffset(c13);
  float2 glossRange2 : packoffset(c14);
  float rotateUVs1 : packoffset(c14.z);
  float rotateUVs2 : packoffset(c14.w);
  bool useUVOffsets1 : packoffset(c15);
  bool useUVOffsets2 : packoffset(c15.y);
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
SamplerState normalSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState mixSampler_s : register(s5);
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
Texture2D<float4> normalMap : register(t21);
Texture2D<float4> detailMap1 : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> detailMap2 : register(t24);
Texture2D<float4> colorMapDetail2 : register(t25);
Texture2D<float4> mixMap : register(t26);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = mixScale.xy * v2.xy;
  r0.x = mixMap.Sample(mixSampler_s, r0.xy).x;
  r0.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r0.yzw = float3(-0.5,-0.5,-0) + r0.yzw;
  r0.yzw = baseNormalHeight * r0.yzw + float3(0.5,0.5,0);
  r0.yz = r0.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.x = dot(r0.yz, r0.yz);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.z = sqrt(r1.x);
  r0.w = r0.w * r0.w;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  sincos(rotateUVs1, r2.x, r3.x);
  r4.x = -r2.x;
  r2.yz = float2(-0.5,-0.5) + v2.xy;
  r4.y = r3.x;
  r4.z = r2.x;
  r3.x = dot(r2.yz, r4.yz);
  r3.y = dot(r2.yz, r4.xy);
  r2.xw = v3.yx + r3.xy;
  r1.w = 0.5 + v3.z;
  r2.xw = r2.xw + r1.ww;
  r2.xw = detailScale1.xy * r2.xw;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r3.xy = detailScale1.xy * r3.xy;
  r2.xw = useUVOffsets1 ? r2.xw : r3.xy;
  r3.xyzw = colorMap.Sample(colorSampler_s, r2.xw).xyzw;
  r4.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r4.xyz = r3.www * r4.xyz + float3(1,1,1);
  r3.xyz = r4.xyz * r3.xyz;
  r4.xyz = detailMap1.Sample(normalSampler_s, r2.xw).xyz;
  r2.xw = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.x = r4.z * r4.z;
  r4.x = 0.333333343 * r4.x;
  r4.x = min(1, r4.x);
  sincos(rotateUVs2, r5.x, r6.x);
  r7.x = -r5.x;
  r7.y = r6.x;
  r7.z = r5.x;
  r5.x = dot(r2.yz, r7.yz);
  r5.y = dot(r2.yz, r7.xy);
  r2.yz = v3.yx + r5.xy;
  r2.yz = r2.yz + r1.ww;
  r2.yz = detailScale2.xy * r2.yz;
  r4.yz = float2(0.5,0.5) + r5.xy;
  r4.yz = detailScale2.xy * r4.yz;
  r2.yz = useUVOffsets1 ? r2.yz : r4.yz;
  r5.xyzw = colorMapDetail2.Sample(colorSampler_s, r2.yz).xyzw;
  r4.yzw = float3(-1,-1,-1) + colorTint1.xyz;
  r4.yzw = r5.www * r4.yzw + float3(1,1,1);
  r5.xyz = r5.xyz * r4.yzw;
  r4.yzw = detailMap2.Sample(normalSampler_s, r2.yz).xyz;
  r5.xyzw = r5.xyzw + -r3.xyzw;
  r3.xyzw = r0.xxxx * r5.xyzw + r3.xyzw;
  r3.xyz = v1.xyz * r3.xyz;
  r1.w = saturate(0.0588235296 * glossRange.y);
  r2.y = saturate(0.0588235296 * glossRange2.y);
  r2.y = r2.y + -r1.w;
  r1.w = r0.x * r2.y + r1.w;
  r2.yz = r4.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r4.y = r4.w * r4.w;
  r4.y = 0.333333343 * r4.y;
  r4.y = min(1, r4.y);
  r1.xy = r2.xw * detailScaleHeight1 + r0.yz;
  r2.x = dot(r1.xyz, r1.xyz);
  r2.x = rsqrt(r2.x);
  r5.xyz = r2.xxx * r1.xyz;
  r5.w = r4.x * detailScaleHeight1 + r0.w;
  r1.xy = r2.yz * detailScaleHeight2 + r0.yz;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r1.xyz * r0.yyy;
  r2.w = r4.y * detailScaleHeight2 + r0.w;
  r2.xyzw = r2.xyzw + -r5.xyzw;
  r0.xyzw = r0.xxxx * r2.xyzw + r5.xyzw;
  r1.x = v8.x ? 1 : -1;
  r1.y = dot(v4.xyz, v4.xyz);
  r1.y = rsqrt(r1.y);
  r2.xyz = v4.xyz * r1.yyy;
  r2.xyz = r2.xyz * r1.xxx;
  r1.y = dot(v5.xyz, v5.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = v5.xyz * r1.yyy;
  r4.xyz = r4.xyz * r1.xxx;
  r1.y = dot(v6.xyz, v6.xyz);
  r1.y = rsqrt(r1.y);
  r5.xyz = v6.xyz * r1.yyy;
  r1.xyz = r5.xyz * r1.xxx;
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r0.w = r1.w + r0.w;
  r0.w = log2(r0.w);
  r5.y = saturate(-0.0588235296 * r0.w);
  r1.xyz = r1.xyz * r0.yyy;
  r0.xyw = r4.xyz * r0.xxx + r1.xyz;
  r0.xyz = r2.xyz * r0.zzz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xy = (uint2)v0.xy;
  r1.z = cmp(v0.z >= 0.984375);
  r1.w = 1.01587307 * v0.z;
  r2.x = v0.z * 64 + -63;
  r1.z = r1.z ? r2.x : r1.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.z = rcp(r1.z);
  r1.w = dot(-v7.xyz, -v7.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -v7.xyz * r1.www;
  r2.w = cmp(isDepthHack != 0);
  r4.xy = (uint2)r1.yx;
  r4.z = dot(r4.yx, float2(0.0671105608,0.00583714992));
  r4.z = frac(r4.z);
  r4.z = 52.9829178 * r4.z;
  r4.z = frac(r4.z);
  r4.z = r4.z * 6.28318548 + gameTick.w;
  sincos(r4.z, r6.x, r7.x);
  r4.x = dot(r4.xy, float2(0.0671105608,0.00583714992));
  r4.x = frac(r4.x);
  r4.x = 52.9829178 * r4.x;
  r4.x = frac(r4.x);
  r4.x = r4.x * 6.28318548 + gameTick.w;
  sincos(r4.x, r4.x, r8.x);
  r5.x = saturate(dot(r0.xyz, r2.xyz));
  r4.y = dot(-r2.xyz, r0.xyz);
  r4.y = r4.y + r4.y;
  r9.xyz = r0.xyz * -r4.yyy + -r2.xyz;
  r4.y = 17 * r5.y;
  r4.y = exp2(r4.y);
  r4.y = 2 + r4.y;
  r4.y = 2 / r4.y;
  r4.z = sqrt(r4.y);
  r4.w = 1 + -r5.y;
  r5.z = 5 * r4.w;
  r5.w = r4.w * 5 + -2.5;
  r5.w = 0.400000006 * r5.w;
  r5.w = max(0, r5.w);
  r5.w = 100 * r5.w;
  r6.zw = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r6.z = exp2(r6.z);
  r6.z = r6.z * r5.x;
  r7.w = r5.z * r4.w;
  r6.w = -r7.w * 2.0159049 + r6.w;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r5.x;
  r6.zw = float2(9.1368103,9.70808983) * r6.zw;
  r6.z = max(r6.z, r6.w);
  r6.z = max(1.26815999, r6.z);
  r6.w = numRefProbes + -numOverrideProbes;
  r1.z = 0.0078125 * r1.z;
  r1.z = min(15, r1.z);
  r1.z = (uint)r1.z;
  r10.xy = (uint2)r1.xy >> int2(6,6);
  r10.z = (uint)r1.z << 4;
  r1.x = (int)r6.w & -32;
  r1.y = (int)-r1.x + (int)r6.w;
  r1.z = numRefProbes & -32;
  r7.w = (int)-r1.z + numRefProbes;
  r11.xy = float2(0,0);
  r12.w = 0;
  r13.yz = float2(0,1);
  r14.xy = float2(0,0);
  r15.x = 1;
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xyzw = float4(0,0,0,0);
  r19.yzw = float3(0,0,0);
  r8.y = r1.x;
  while (true) {
    r8.z = cmp((uint)r8.y >= numRefProbes);
    if (r8.z != 0) break;
    r11.z = (uint)r8.y >> 5;
    r12.xyz = (int3)r10.xyz + (int3)r11.xyz;
    r8.z = visibleProbes.Load(r12.xyzw).x;
    r8.w = cmp((int)r1.x == (int)r8.y);
    bitmask.w = ((~(-1 << r1.y)) << 0) & 0xffffffff;  r10.w = (((uint)0 << 0) & bitmask.w) | ((uint)r8.z & ~bitmask.w);
    r8.z = r8.w ? r10.w : r8.z;
    r8.w = cmp((int)r1.z == (int)r8.y);
    if (r7.w == 0) r10.w = 0; else if (r7.w+0 < 32) {     r10.w = (uint)r8.z << (32-(r7.w + 0)); r10.w = (uint)r10.w >> (32-r7.w);    } else r10.w = (uint)r8.z >> 0;
    r8.z = r8.w ? r10.w : r8.z;
    r8.w = (int)r8.y + numLights;
    r20.xyzw = r18.xyzw;
    r21.xyz = r19.yzw;
    r10.w = r8.z;
    while (true) {
      if (r10.w == 0) break;
      r11.z = firstbitlow((uint)r10.w);
      r11.w = 1 << (int)r11.z;
      r12.x = (int)r10.w & (int)r11.w;
      if (r12.x != 0) {
        r10.w = (int)r10.w ^ (int)r11.w;
        r11.w = (int)r8.w + (int)r11.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r11.w, l(0), t11.xyzw
      r22.x = samp0[]..swiz;
      r22.y = samp0[]..swiz;
      r22.z = samp0[]..swiz;
      r22.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r11.w, l(16), t11.xyxx
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
        r22.xyz = -v7.xyz + r22.xyz;
        r12.z = r22.w;
        r12.xyz = cmp(abs(r22.xyz) < r12.zxy);
        r11.w = r12.y ? r12.x : 0;
        r11.w = r12.z ? r11.w : 0;
        if (r11.w != 0) {
          r11.z = (int)r8.y + (int)r11.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r11.z, l(0), t15.wxyz
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xy, r11.z, l(96), t15.xyxx
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r11.z, l(116), t15.zwxy
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
          r24.xyz = v7.xyz + -r22.yzw;
          r11.w = (int)r23.w & 0x0000ffff;
          if (6 == 0) r12.z = 0; else if (6+25 < 32) {           r12.z = (uint)r23.w << (32-(6 + 25)); r12.z = (uint)r12.z >> (32-6);          } else r12.z = (uint)r23.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r11.w, l(0), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r11.w, l(16), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r11.w, l(32), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r11.w, l(48), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(64), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r11.w, l(80), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
          r13.w = dot(r25.xyz, r24.xyz);
          r13.w = saturate(r13.w + r25.w);
          r14.w = dot(r26.xyz, r24.xyz);
          r14.w = saturate(r14.w + r26.w);
          r13.w = r14.w * r13.w;
          r14.w = dot(r27.xyz, r24.xyz);
          r14.w = saturate(r14.w + r27.w);
          r13.w = r14.w * r13.w;
          r14.w = dot(r28.xyz, r24.xyz);
          r14.w = saturate(r14.w + r28.w);
          r13.w = r14.w * r13.w;
          r14.w = dot(r29.xyz, r24.xyz);
          r14.w = saturate(r14.w + r29.w);
          r13.w = r14.w * r13.w;
          r14.w = dot(r30.xyz, r24.xyz);
          r14.w = saturate(r14.w + r30.w);
          r13.x = r14.w * r13.w;
          r13.w = r12.x ? 0.000000 : 0;
          r13.xw = r13.ww ? r13.xy : r13.zx;
          r14.w = r12.x;
          r25.xy = r13.xw;
          r15.z = 1;
          while (true) {
            r15.w = cmp((int)r15.z >= (int)r12.z);
            if (r15.w != 0) break;
            r15.w = (int)r11.w + (int)r15.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r15.w, l(0), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(16), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(32), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r15.w = dot(r26.xyz, r24.xyz);
            r15.w = saturate(r15.w + r26.w);
            r15.w = r25.x * r15.w;
            r16.w = dot(r27.xyz, r24.xyz);
            r16.w = saturate(r16.w + r27.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r28.xyz, r24.xyz);
            r16.w = saturate(r16.w + r28.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r29.xyz, r24.xyz);
            r16.w = saturate(r16.w + r29.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r30.xyz, r24.xyz);
            r16.w = saturate(r16.w + r30.w);
            r15.w = r16.w * r15.w;
            r16.w = dot(r31.xyz, r24.xyz);
            r16.w = saturate(r16.w + r31.w);
            r25.x = r16.w * r15.w;
            r17.w = (uint)r14.w >> 2;
            if (1 == 0) r22.w = 0; else if (1+2 < 32) {             r22.w = (uint)r14.w << (32-(1 + 2)); r22.w = (uint)r22.w >> (32-1);            } else r22.w = (uint)r14.w >> 2;
            r24.w = (int)r17.w & 2;
            r25.z = max(r25.y, r25.x);
            r15.w = -r15.w * r16.w + 1;
            r15.w = r25.y * r15.w;
            r15.y = r24.w ? r15.w : r25.z;
            r25.xy = r22.ww ? r25.xy : r15.xy;
            r15.z = (int)r15.z + 1;
            r14.w = r17.w;
          }
          r25.y = saturate(r25.y);
          r11.w = r25.y * r12.y;
          r12.x = cmp(0 < r11.w);
          if (r12.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r11.z, l(16), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r11.z, l(32), t15.yxwz
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r11.z, l(48), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.z, l(64), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r11.z, l(80), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.z, l(132), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.z, l(148), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.z, l(164), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.z, l(180), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.z, l(196), t15.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r11.z, l(212), t15.xyxx
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
            r21.z = r25.y * r12.y + r21.z;
            r11.z = r11.w * r23.z;
            r23.z = r31.z;
            r11.w = dot(r9.xyz, r23.xyz);
            r12.x = dot(r24.xyz, r23.xyz);
            r12.x = r12.x + -r31.w;
            r12.y = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r5.w);
            r12.x = r12.y ? r12.x : -r12.x;
            r11.w = max(1.00000001e-07, -r11.w);
            r11.w = r12.x / r11.w;
            r11.w = min(131072, abs(r11.w));
            r31.z = r32.z;
            r12.x = dot(r9.xyz, r31.xyz);
            r12.y = dot(r24.xyz, r31.xyz);
            r12.y = r12.y + -r32.w;
            r12.z = cmp(r12.y >= 0);
            r12.y = max(abs(r12.y), r5.w);
            r12.y = r12.z ? r12.y : -r12.y;
            r12.x = max(1.00000001e-07, -r12.x);
            r12.x = r12.y / r12.x;
            r11.w = min(abs(r12.x), r11.w);
            r32.z = r33.z;
            r12.x = dot(r9.xyz, r32.xyz);
            r12.y = dot(r24.xyz, r32.xyz);
            r12.y = r12.y + -r33.w;
            r12.z = cmp(r12.y >= 0);
            r12.y = max(abs(r12.y), r5.w);
            r12.y = r12.z ? r12.y : -r12.y;
            r12.x = max(1.00000001e-07, -r12.x);
            r12.x = r12.y / r12.x;
            r11.w = min(abs(r12.x), r11.w);
            r33.z = r34.z;
            r12.x = dot(r9.xyz, r33.xyz);
            r12.y = dot(r24.xyz, r33.xyz);
            r12.y = r12.y + -r34.w;
            r12.z = cmp(r12.y >= 0);
            r12.y = max(abs(r12.y), r5.w);
            r12.y = r12.z ? r12.y : -r12.y;
            r12.x = max(1.00000001e-07, -r12.x);
            r12.x = r12.y / r12.x;
            r11.w = min(abs(r12.x), r11.w);
            r34.z = r35.x;
            r12.x = dot(r9.xyz, r34.xyz);
            r12.y = dot(r24.xyz, r34.xyz);
            r12.y = r12.y + -r35.y;
            r12.z = cmp(r12.y >= 0);
            r12.y = max(abs(r12.y), r5.w);
            r12.y = r12.z ? r12.y : -r12.y;
            r12.x = max(1.00000001e-07, -r12.x);
            r12.x = r12.y / r12.x;
            r11.w = min(abs(r12.x), r11.w);
            r36.zw = r35.zw;
            r12.x = dot(r9.zxy, r36.xzw);
            r12.y = dot(r24.zxy, r36.xzw);
            r12.y = r12.y + -r36.y;
            r12.z = cmp(r12.y >= 0);
            r12.y = max(abs(r12.y), r5.w);
            r12.y = r12.z ? r12.y : -r12.y;
            r12.x = max(1.00000001e-07, -r12.x);
            r12.x = r12.y / r12.x;
            r11.w = min(abs(r12.x), r11.w);
            r12.x = r28.w;
            r12.yz = r29.zw;
            r12.xyz = r12.xyz + r24.xyz;
            r12.xyz = r9.xyz * r11.www + r12.xyz;
            r13.x = dot(r12.xyz, r12.xyz);
            r13.x = sqrt(r13.x);
            r11.w = r11.w / r13.x;
            r11.w = r11.w + r11.w;
            r11.w = sqrt(r11.w);
            r11.w = r4.w * 5 + r11.w;
            r11.w = -0.844799995 + r11.w;
            r22.y = r26.z;
            r22.z = r27.x;
            r31.x = dot(r12.xyz, r22.xyz);
            r23.xy = r26.xw;
            r23.z = r27.w;
            r31.y = dot(r12.xyz, r23.xyz);
            r27.x = r26.y;
            r31.z = dot(r12.xyz, r27.xyz);
            if (9 == 0) r12.x = 0; else if (9+16 < 32) {             r12.x = (uint)r23.w << (32-(9 + 16)); r12.x = (uint)r12.x >> (32-9);            } else r12.x = (uint)r23.w >> 16;
            r31.w = (uint)r12.x;
            r12.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r11.w).xyz;
            r26.x = dot(r24.xyz, r22.xyz);
            r26.y = dot(r24.xyz, r23.xyz);
            r26.z = dot(r24.xyz, r27.xyz);
            r15.yzw = saturate(r26.xyz * r28.xyz + float3(0.5,0.5,0.5));
            r29.z = r30.x;
            r15.yzw = r15.yzw * r29.xyz + r30.yzw;
            r31.x = dot(r0.xyz, r22.xyz);
            r31.y = dot(r0.xyz, r23.xyz);
            r31.z = dot(r0.xyz, r27.xyz);
            r22.xyz = cmp(float3(0,0,0) < r31.xyz);
            r14.z = r22.x ? 0 : 0.5;
            r23.xyz = r15.yzw + r14.xyz;
            r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
            r24.xyz = r31.xyz * r31.xyz;
            r24.xyz = r24.xyz * r11.zzz;
            r16.z = r22.y ? 0 : 0.5;
            r22.xyw = r16.xyz + r15.yzw;
            r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
            r22.xyw = r22.xyw * r24.yyy;
            r22.xyw = r23.xyz * r24.xxx + r22.xyw;
            r17.z = r22.z ? 0 : 0.5;
            r15.yzw = r17.xyz + r15.yzw;
            r15.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.yzw, 0).xyz;
            r15.yzw = r15.yzw * r24.zzz + r22.xyw;
            r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
            r23.xyz = r22.xyz * r15.yzw;
            r11.w = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r20.xyz = r15.yzw * r22.xyz + r20.xyz;
            r13.x = r11.w * r6.z;
            r12.xyz = r12.xyz * r11.zzz;
            r11.z = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r11.z = r6.z * r11.w + r11.z;
            r11.z = r13.x / r11.z;
            r22.x = r20.w;
            r22.yz = r21.xy;
            r21.xyw = r12.yzx * r11.zzz + r22.yzx;
            r20.w = r21.w;
          }
        }
      }
    }
    r18.xyzw = r20.xyzw;
    r19.yzw = r21.xyz;
    r8.y = (int)r8.y + 32;
  }
  r1.z = cmp(r19.w < 1);
  if (r1.z != 0) {
    r11.xy = float2(0,0);
    r12.w = 0;
    r13.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.x = 1;
    r16.xy = float2(0,0);
    r17.xy = float2(0,0);
    r20.x = r18.w;
    r20.yzw = r19.yzw;
    r8.yzw = r18.xyz;
    r1.z = r19.w;
    r7.w = 0;
    while (true) {
      r10.w = cmp((uint)r7.w >= (uint)r6.w);
      if (r10.w != 0) break;
      r11.z = (uint)r7.w >> 5;
      r12.xyz = (int3)r10.xyz + (int3)r11.xyz;
      r10.w = visibleProbes.Load(r12.xyzw).x;
      r11.z = cmp((int)r1.x == (int)r7.w);
      if (r1.y == 0) r11.w = 0; else if (r1.y+0 < 32) {       r11.w = (uint)r10.w << (32-(r1.y + 0)); r11.w = (uint)r11.w >> (32-r1.y);      } else r11.w = (uint)r10.w >> 0;
      r10.w = r11.z ? r11.w : r10.w;
      r11.z = (int)r7.w + numLights;
      r21.xyzw = r20.xyzw;
      r12.xyz = r8.yzw;
      r11.w = r1.z;
      r13.w = r10.w;
      while (true) {
        if (r13.w == 0) break;
        r14.w = firstbitlow((uint)r13.w);
        r15.z = 1 << (int)r14.w;
        r15.w = (int)r13.w & (int)r15.z;
        if (r15.w != 0) {
          r13.w = (int)r13.w ^ (int)r15.z;
          r15.z = (int)r11.z + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r15.z, l(0), t11.xyzw
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r15.z, l(16), t11.xyxx
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
          r22.xyz = -v7.xyz + r22.xyz;
          r23.z = r22.w;
          r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
          r15.z = r22.y ? r22.x : 0;
          r15.z = r22.z ? r15.z : 0;
          if (r15.z != 0) {
            r14.w = (int)r7.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r14.w, l(0), t15.wxyz
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r14.w, l(96), t15.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r14.w, l(116), t15.zwxy
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
            r24.xyz = v7.xyz + -r22.yzw;
            r16.w = (int)r23.w & 0x0000ffff;
            if (6 == 0) r17.w = 0; else if (6+25 < 32) {             r17.w = (uint)r23.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);            } else r17.w = (uint)r23.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(0), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(16), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(32), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(48), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(64), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(80), t16.xyzw
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
            r22.w = (int)r15.z & 1;
            r25.xy = r22.ww ? r13.xy : r13.zx;
            r13.x = r15.z;
            r26.xy = r25.xy;
            r22.w = 1;
            while (true) {
              r24.w = cmp((int)r22.w >= (int)r17.w);
              if (r24.w != 0) break;
              r24.w = (int)r16.w + (int)r22.w;
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
              r15.y = r26.w ? r24.w : r27.x;
              r26.xy = r26.zz ? r26.xy : r15.xy;
              r22.w = (int)r22.w + 1;
              r13.x = r25.w;
            }
            r13.x = saturate(r26.y + -r11.w);
            r15.y = r13.x * r15.w;
            r15.z = cmp(0 < r15.y);
            if (r15.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r14.w, l(16), t15.xyzw
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(32), t15.yxwz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(48), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(64), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(80), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(132), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(148), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(164), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(180), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(196), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r14.w, l(212), t15.xyxx
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
              r21.w = r13.x * r15.w + r21.w;
              r13.x = r15.y * r23.z;
              r23.z = r31.z;
              r14.w = dot(r9.xyz, r23.xyz);
              r15.y = dot(r24.xyz, r23.xyz);
              r15.y = r15.y + -r31.w;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.w);
              r15.y = r15.z ? r15.y : -r15.y;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.y / r14.w;
              r14.w = min(131072, abs(r14.w));
              r31.z = r32.z;
              r15.y = dot(r9.xyz, r31.xyz);
              r15.z = dot(r24.xyz, r31.xyz);
              r15.z = r15.z + -r32.w;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r5.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r14.w = min(abs(r15.y), r14.w);
              r32.z = r33.z;
              r15.y = dot(r9.xyz, r32.xyz);
              r15.z = dot(r24.xyz, r32.xyz);
              r15.z = r15.z + -r33.w;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r5.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r14.w = min(abs(r15.y), r14.w);
              r33.z = r34.z;
              r15.y = dot(r9.xyz, r33.xyz);
              r15.z = dot(r24.xyz, r33.xyz);
              r15.z = r15.z + -r34.w;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r5.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r14.w = min(abs(r15.y), r14.w);
              r34.z = r35.x;
              r15.y = dot(r9.xyz, r34.xyz);
              r15.z = dot(r24.xyz, r34.xyz);
              r15.z = r15.z + -r35.y;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r5.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r14.w = min(abs(r15.y), r14.w);
              r36.zw = r35.zw;
              r15.y = dot(r9.zxy, r36.xzw);
              r15.z = dot(r24.zxy, r36.xzw);
              r15.z = r15.z + -r36.y;
              r15.w = cmp(r15.z >= 0);
              r15.z = max(abs(r15.z), r5.w);
              r15.z = r15.w ? r15.z : -r15.z;
              r15.y = max(1.00000001e-07, -r15.y);
              r15.y = r15.z / r15.y;
              r14.w = min(abs(r15.y), r14.w);
              r23.x = r28.w;
              r23.yz = r29.zw;
              r15.yzw = r23.xyz + r24.xyz;
              r15.yzw = r9.xyz * r14.www + r15.yzw;
              r16.w = dot(r15.yzw, r15.yzw);
              r16.w = sqrt(r16.w);
              r14.w = r14.w / r16.w;
              r14.w = r14.w + r14.w;
              r14.w = sqrt(r14.w);
              r14.w = r4.w * 5 + r14.w;
              r14.w = -0.844799995 + r14.w;
              r22.y = r25.z;
              r22.z = r27.x;
              r31.x = dot(r15.yzw, r22.xyz);
              r23.xy = r25.xw;
              r23.z = r27.w;
              r31.y = dot(r15.yzw, r23.xyz);
              r27.x = r25.y;
              r31.z = dot(r15.yzw, r27.xyz);
              if (9 == 0) r15.y = 0; else if (9+16 < 32) {               r15.y = (uint)r23.w << (32-(9 + 16)); r15.y = (uint)r15.y >> (32-9);              } else r15.y = (uint)r23.w >> 16;
              r31.w = (uint)r15.y;
              r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r14.w).xyz;
              r25.x = dot(r24.xyz, r22.xyz);
              r25.y = dot(r24.xyz, r23.xyz);
              r25.z = dot(r24.xyz, r27.xyz);
              r24.xyz = saturate(r25.xyz * r28.xyz + float3(0.5,0.5,0.5));
              r29.z = r30.x;
              r24.xyz = r24.xyz * r29.xyz + r30.yzw;
              r31.x = dot(r0.xyz, r22.xyz);
              r31.y = dot(r0.xyz, r23.xyz);
              r31.z = dot(r0.xyz, r27.xyz);
              r22.xyz = cmp(float3(0,0,0) < r31.xyz);
              r14.z = r22.x ? 0 : 0.5;
              r23.xyz = r24.xyz + r14.xyz;
              r23.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r25.xyz = r31.xyz * r31.xyz;
              r25.xyz = r25.xyz * r13.xxx;
              r16.z = r22.y ? 0 : 0.5;
              r22.xyw = r24.xyz + r16.xyz;
              r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
              r22.xyw = r22.xyw * r25.yyy;
              r22.xyw = r23.xyz * r25.xxx + r22.xyw;
              r17.z = r22.z ? 0 : 0.5;
              r23.xyz = r24.xyz + r17.xyz;
              r23.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r23.xyz, 0).xyz;
              r22.xyz = r23.xyz * r25.zzz + r22.xyw;
              r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
              r24.xyz = r23.xyz * r22.xyz;
              r14.z = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r12.xyz = r22.xyz * r23.xyz + r12.xyz;
              r14.w = r14.z * r6.z;
              r15.yzw = r15.yzw * r13.xxx;
              r13.x = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r13.x = r6.z * r14.z + r13.x;
              r13.x = r14.w / r13.x;
              r21.xyz = r15.yzw * r13.xxx + r21.xyz;
            }
          }
        }
      }
      r20.xyzw = r21.xyzw;
      r8.yzw = r12.xyz;
      r7.w = (int)r7.w + 32;
    }
    r19.xyzw = r20.zxyw;
    r18.xyz = r8.yzw;
    r19.xyzw = r19.yzxw;
  } else {
    r19.x = r18.w;
  }
  r1.x = max(1, r19.w);
  r1.x = rcp(r1.x);
  r19.w = saturate(r19.w);
  r11.xyz = r18.xyz * r1.xxx;
  r8.yzw = r19.xyz * r1.xxx;
  r1.y = cmp(r19.w < 0.99000001);
  if (r1.y != 0) {
    r1.y = 1 + -r19.w;
    r1.z = sunConstants.globalProbeExposure * r1.y;
    r12.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r13.x = globalProbeConstants.data[0].w * r12.x;
    r13.yz = globalProbeConstants.data[1].xy * r12.yz;
    r12.xyz = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r12.xy;
    r13.z = globalProbeConstants.data[2].x * r12.z;
    r12.xyz = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = cmp(float3(0,0,0) < r0.xyz);
    r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r13.w = 0;
    r14.xyz = r13.wwx + r12.xyz;
    r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r15.xyz = r0.xyz * r0.xyz;
    r15.xyz = r15.xyz * r1.zzz;
    r16.xyz = r13.wwy + r12.xyz;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r14.xyz = r14.xyz * r15.xxx + r16.xyz;
    r12.xyz = r13.wwz + r12.xyz;
    r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r15.zzz + r14.xyz;
    r0.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r0.xyzw, 6).xyz;
    r12.xyz = r13.xyz * r12.xyz;
    r0.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r11.xyz = r18.xyz * r1.xxx + r12.xyz;
    r9.w = 0;
    r12.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r9.xyzw, r5.z).xyz;
    r1.x = sunConstants.globalProbeExposure * r1.y + -r0.w;
    r0.w = r5.y * r1.x + r0.w;
    r8.yzw = r12.xyz * r0.www + r8.yzw;
  }
  r1.xy = r5.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r1.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r1.xy, 0).xy;
  r12.xyz = r8.zwy * r1.xxx;
  r1.xyz = r8.yzw * r1.yyy;
  r0.w = sqrt(r4.z);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r0.w;
  r4.w = 0.5 * r0.w;
  r0.w = -r0.w * 0.5 + 1;
  r5.y = r5.x * r0.w + r4.w;
  r0.w = r5.y * r0.w;
  r4.w = r5.y * r4.w;
  r5.y = dot(r0.xyz, sunConstants.wldDir.xyz);
  r5.z = saturate(r5.y);
  r5.w = cmp(0 >= r5.z);
  if (r5.w != 0) {
    r6.z = 0;
  }
  if (r5.w == 0) {
    r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r8.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r8.yzw;
    r8.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r8.yzw;
    r8.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r8.yzw;
    r5.w = -sunConstants.splitDepthOffset + r8.w;
    r5.w = -r5.w * 6.10351563e-05 + 1;
    r6.w = saturate(r5.w);
    r6.w = cmp(r5.w == r6.w);
    if (r6.w != 0) {
      r6.w = 0;
      r7.w = 0;
      while (true) {
        r9.w = cmp(r6.w >= 3);
        if (r9.w != 0) break;
        r9.w = (uint)r6.w;
        r13.xy = -sunConstants.splitPinTransform[r9.w].xy + r8.yz;
        r10.w = max(abs(r13.x), abs(r13.y));
        r7.w = sunConstants.splitPinTransform[r9.w].z * r10.w;
        r9.w = cmp(r7.w < 1);
        if (r9.w != 0) {
          break;
        }
        r6.w = 1 + r6.w;
        r7.w = 0;
      }
    } else {
      r6.w = 3;
      r7.w = 0;
    }
    r9.w = cmp(r6.w >= 3);
    if (r9.w != 0) {
      r13.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r14.xz = rcp(r13.xx);
      r14.y = -r14.z;
      r13.xyz = r8.yzy * r14.xyz + r13.yzy;
      r14.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.xyz = max(float3(0,0,0), r13.xyz);
      r13.xyz = min(r13.xyz, r14.xyz);
      r14.xy = sunConstants.sstLightingConstants.coordScale * r13.zy;
      r14.xy = floor(r14.xy);
      r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.y;
      r10.w = r10.w * sunConstants.sstLightingConstants.coordScale + r14.x;
      r10.w = (uint)r10.w;
      r10.w = (int)r10.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r10.w, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r14.x = (int)r13.w & 0x40000000;
      r14.y = (uint)r13.w << 2;
      if (r14.x == 0) {
        r14.x = (int)r13.w & 0x01ffffff;
        r15.x = (int)r10.w + (int)r14.x;
        r10.w = (uint)r13.w >> 25;
        r10.w = (uint)r10.w;
        r13.xyz = r13.xyz * r10.www;
        r13.xyz = frac(r13.xyz);
        r13.xyz = float3(128,128,128) * r13.xyz;
        r13.xyz = (uint3)r13.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.xz = (uint2)r13.zy >> int2(6,6);
        r10.w = (int)r15.z & 0xc0000000;
        r13.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r13.w = r14.z ? r15.z : r13.w;
        r14.z = (uint)r13.w >> 13;
        r13.w = r14.x ? r14.z : r13.w;
        r13.w = (int)r13.w & 8191;
        r16.x = (int)r13.w + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r14.xzw = r10.www ? r15.xyz : r16.xyz;
        r16.yz = r10.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r17.xy = (uint2)r13.zy >> (uint2)r16.yy;
        r17.xy = (int2)r17.xy & int2(1,1);
        r13.w = (int)r14.w & 0xc0000000;
        r15.w = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.w = r17.y ? r14.w : r15.w;
        r16.y = (uint)r15.w >> 13;
        r15.w = r17.x ? r16.y : r15.w;
        r15.w = (int)r15.w & 8191;
        r16.x = (int)r14.x + (int)r15.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r14.xzw = r13.www ? r14.xzw : r16.xzw;
        r14.xzw = r10.www ? r15.xyz : r14.xzw;
        r10.w = (int)r14.w & 0xc0000000;
        if (r10.w == 0) {
          r10.w = (int)-r14.z + 6;
          r15.xy = (uint2)r13.zy >> (uint2)r10.ww;
          r10.w = (int)r14.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r15.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r15.x << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
          r13.w = (int)r13.w * 10;
          r10.w = (uint)r10.w >> (uint)r13.w;
          r10.w = (int)r10.w & 1023;
          r15.x = (int)r10.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r15.yz = (int2)r14.zz + int2(1,2);
          r10.w = (int)-r15.y + 6;
          r16.xy = (uint2)r13.zy >> (uint2)r10.ww;
          r10.w = (int)r15.w & 0xc0000000;
          r13.w = (int)r15.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.z = (((uint)r16.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r16.x << 0) & bitmask.z) | ((uint)r14.z & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r13.w = (uint)r13.w >> (uint)r14.z;
          r13.w = (int)r13.w & 1023;
          r16.x = (int)r13.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.y = r15.z;
          r16.xyz = r10.www ? r15.xyw : r16.xyz;
          r13.w = (int)-r16.y + 6;
          r15.yz = (uint2)r13.zy >> (uint2)r13.ww;
          r13.w = (int)r16.z & 0xc0000000;
          r14.z = (int)r16.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.z = (((uint)r15.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.y = (((uint)r15.y << 0) & bitmask.y) | ((uint)r15.z & ~bitmask.y);
          r15.y = (int)r15.y * 10;
          r14.z = (uint)r14.z >> (uint)r15.y;
          r14.z = (int)r14.z & 1023;
          r17.x = (int)r14.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.x, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r15.yz = r13.ww ? r16.xz : r17.xy;
          r14.xw = r10.ww ? r15.xw : r15.yz;
        }
        r10.w = (int)r14.w & 0xc0000000;
        if (r10.w == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r14.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r14.w >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r15.xy = (int2)r14.ww & int2(32767,536870912);
          r14.z = (uint)r15.x;
          r14.z = sunConstants.sstLightingConstants.constants.spanInInches * r14.z;
          r14.z = 3.05185094e-05 * r14.z;
          r15.x = (int)r13.y & 3;
          r15.x = (int)r14.x + (int)r15.x;
          r15.x = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.x, r15.x, l(0), t23.xxxx
        r15.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r13.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r13.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r13.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r13.x = (uint)r15.x >> (uint)r16.x;
          r13.x = (int)r13.x & 255;
          r13.x = (uint)r13.x;
          r13.x = r13.x * r14.z;
          r13.x = r13.x * 0.00392156886 + r13.w;
          r13.y = (int)r16.y + 1;
          if (1 == 0) r13.z = 0; else if (1+1 < 32) {           r13.z = (uint)r13.z << (32-(1 + 1)); r13.z = (uint)r13.z >> (32-1);          } else r13.z = (uint)r13.z >> 1;
          r13.y = (int)r13.z + (int)r13.y;
          r13.y = (int)r13.y + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r13.y = (uint)r13.y >> (uint)r16.z;
          r13.y = (int)r13.y & 0x0000ffff;
          r13.y = (uint)r13.y;
          r13.y = r13.y * r14.z;
          r13.y = r13.y * 1.52590219e-05 + r13.w;
          r14.y = r15.y ? r13.x : r13.y;
        } else {
          r13.x = (int)r14.w & 0x80000000;
          r13.y = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r13.x = r13.x ? r13.y : 0;
          r13.y = (uint)r14.w << 2;
          r13.z = (uint)r13.x >> 16;
          r13.x = (int)r13.x & 0x0000ffff;
          r13.xz = f16tof32(r13.xz);
          r13.y = r8.y * r13.z + r13.y;
          r13.x = r8.z * r13.x + r13.y;
          r14.y = r10.w ? r13.x : r14.y;
        }
      }
      r8.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r8.w;
      r8.w = cmp(r14.y < r8.w);
      r6.z = r8.w ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r8.w = (uint)r6.w;
        r13.xy = -sunConstants.splitPinTransform[r8.w].xy + r8.yz;
        r13.xy = sunConstants.splitPinTransform[r8.w].zz * r13.xy;
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.w = (int16)sunConstants.splitArrayOffset;
        r13.z = r8.w + r6.w;
        r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r5.w).x;
        r9.w = gTransShadowmapArray.SampleLevel(samp0_s, r13.xyz, 0).x;
        r8.w = r9.w + r8.w;
        r8.w = saturate(-1 + r8.w);
        r9.w = r8.w * r8.w;
        r6.z = r9.w * r8.w;
      }
      if (enableDitheredShadow != 0) {
        r13.x = -r6.x;
        r8.w = (uint)r6.w;
        r6.w = 1 + r6.w;
        r6.w = min(2, r6.w);
        r6.w = (uint)r6.w;
        r7.w = 1 + -r7.w;
        r7.w = 28 * r7.w;
        r7.w = (uint)r7.w;
        r14.xy = -sunConstants.splitPinTransform[r8.w].xy + r8.yz;
        r14.xy = sunConstants.splitPinTransform[r8.w].zz * r14.xy;
        r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r8.yz = -sunConstants.splitPinTransform[r6.w].xy + r8.yz;
        r8.yz = sunConstants.splitPinTransform[r6.w].zz * r8.yz;
        r8.yz = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.y = r7.x;
        r13.z = r6.x;
        r9.w = 0;
        r10.w = 0;
        while (true) {
          r13.w = cmp((uint)r10.w >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r7.w < (uint)r10.w);
          r14.zw = r13.ww ? r8.yz : r14.xy;
          r15.x = r13.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r8.w].w;
          r13.w = r13.w ? r6.w : r8.w;
          r16.x = dot(icb[r10.w+0].yx, r13.xy);
          r16.y = dot(icb[r10.w+0].yx, r13.yz);
          r15.xy = r16.xy * r15.xx + r14.zw;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r15.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r5.w).x;
          r14.z = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
          r13.w = r14.z + r13.w;
          r13.w = saturate(-1 + r13.w);
          r9.w = r13.w * 0.125 + r9.w;
          r10.w = (int)r10.w + 1;
        }
        r5.w = r9.w * r9.w;
        r6.z = r5.w * r9.w;
      }
    }
  }
  r5.w = cmp(0 < r5.z);
  if (r5.w != 0) {
    r5.w = cmp(0 < r6.z);
    if (r5.w != 0) {
      r5.w = sunConstants.specScale * r4.y;
      r5.w = r5.w * r5.z;
      if (sunConstants.sunCookieIndex != 0) {
        r13.xyz = eyeOffset.xyz + v7.xyz;
        r13.w = 1;
        r6.w = dot(sunConstants.sunCookieTransform[0].xyzw, r13.xyzw);
        r7.w = dot(sunConstants.sunCookieTransform[1].xyzw, r13.xyzw);
        r13.x = frac(r6.w);
        r13.y = frac(r7.w);
        r6.w = -1 + (int14)sunConstants.sunCookieIndex;
        r13.z = (uint)r6.w;
        r8.yzw = gCookieArray.SampleLevel(samplerLinear_s, r13.xyz, 0).xyz;
        r8.yzw = float3(-1,-1,-1) + r8.yzw;
        r8.yzw = sunConstants.sunCookieIntensity * r8.yzw + float3(1,1,1);
        r8.yzw = sunConstants.color.xyz * r8.yzw;
      } else {
        r8.yzw = sunConstants.color.xyz;
      }
      r6.w = viewmodelSunShadowRaw >> 16;
      r7.w = cmp(0 < (uint)r6.w);
      r7.w = r2.w ? r7.w : 0;
      if (r7.w != 0) {
        r6.w = (int)r6.w + numLights;
        r6.w = (int)r6.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r6.w, l(52), t12.xxxx
      r7.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r6.w, l(68), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r6.w, l(84), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r6.w, l(132), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r6.w, l(148), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
        r9.w = abs(r5.y) * -0.200000003 + 0.400000006;
        r17.xyz = r0.xyz * r9.www + v7.xyz;
        r17.w = 1;
        r13.x = dot(r13.xyzw, r17.xyzw);
        r13.y = dot(r14.xyzw, r17.xyzw);
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.xy = r13.xy + r16.zw;
        r13.xy = r13.xy * r16.xy;
        r13.zw = r7.ww / r15.xz;
        r14.xy = float2(1,1) + -r13.zw;
        r14.xy = cmp(r13.xy >= r14.xy);
        r13.zw = cmp(r13.zw >= r13.xy);
        r13.zw = (int2)r13.zw | (int2)r14.xy;
        r9.w = (int)r13.w | (int)r13.z;
        if (r9.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r6.w, l(28), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r6.w, l(100), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.zw, r6.w, l(164), t12.xxxy
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
          r6.w = dot(r14.xyzw, r17.xyzw);
          r13.xy = saturate(r13.xy);
          r14.xy = r13.xy * r15.xz + r15.yw;
          r6.w = r6.w + r13.z;
          r6.w = r6.w / r13.w;
          r6.w = max(6.10351563e-05, r6.w);
          r9.w = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r13.x = -r6.x;
            r15.z = (uint)r9.w;
            r13.y = r7.x;
            r13.z = r6.x;
            r10.w = 0;
            r13.w = 0;
            while (true) {
              r14.w = cmp((int)r13.w >= 8);
              if (r14.w != 0) break;
              r16.x = dot(icb[r13.w+0].yx, r13.xy);
              r16.y = dot(icb[r13.w+0].yx, r13.yz);
              r15.xy = r16.xy * r7.ww + r14.xy;
              r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
              r10.w = r14.w * 0.125 + r10.w;
              r13.w = (int)r13.w + 1;
            }
          } else {
            r14.z = (uint)r9.w;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r6.w).x;
          }
          r6.w = r10.w * r10.w;
          r6.w = r6.w * r10.w;
        } else {
          r6.w = 1;
        }
        r6.z = r6.z * r6.w;
      } else {
        r6.w = viewmodelSunShadowRaw & 0x0000ffff;
        r7.w = cmp(0 < (uint)r6.w);
        r9.w = ~(int)r2.w;
        r7.w = r7.w ? r9.w : 0;
        if (r7.w != 0) {
          r6.w = (int)r6.w + numLights;
          r6.w = (int)r6.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r6.w, l(52), t12.xxxx
        r7.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r6.w, l(68), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r6.w, l(84), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r6.w, l(132), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r6.w, l(148), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
          r9.w = abs(r5.y) * -0.200000003 + 0.400000006;
          r17.xyz = r0.xyz * r9.www + v7.xyz;
          r17.w = 1;
          r13.x = dot(r13.xyzw, r17.xyzw);
          r13.y = dot(r14.xyzw, r17.xyzw);
          r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r13.xy = r13.xy + r16.zw;
          r13.xy = r13.xy * r16.xy;
          r13.zw = r7.ww / r15.xz;
          r14.xy = float2(1,1) + -r13.zw;
          r14.xy = cmp(r13.xy >= r14.xy);
          r13.zw = cmp(r13.zw >= r13.xy);
          r13.zw = (int2)r13.zw | (int2)r14.xy;
          r9.w = (int)r13.w | (int)r13.z;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r6.w, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r6.w, l(100), t12.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.zw, r6.w, l(164), t12.xxxy
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
            r6.w = dot(r14.xyzw, r17.xyzw);
            r13.xy = saturate(r13.xy);
            r14.xy = r13.xy * r15.xz + r15.yw;
            r6.w = r6.w + r13.z;
            r6.w = r6.w / r13.w;
            r6.w = max(6.10351563e-05, r6.w);
            r9.w = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r13.x = -r6.x;
              r15.z = (uint)r9.w;
              r13.y = r7.x;
              r13.z = r6.x;
              r10.w = 0;
              r13.w = 0;
              while (true) {
                r14.w = cmp((int)r13.w >= 8);
                if (r14.w != 0) break;
                r16.x = dot(icb[r13.w+0].yx, r13.xy);
                r16.y = dot(icb[r13.w+0].yx, r13.yz);
                r15.xy = r16.xy * r7.ww + r14.xy;
                r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r6.w).x;
                r10.w = r14.w * 0.125 + r10.w;
                r13.w = (int)r13.w + 1;
              }
            } else {
              r14.z = (uint)r9.w;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r6.w).x;
            }
            r6.w = r10.w * r10.w;
            r6.w = r6.w * r10.w;
          } else {
            r6.w = 1;
          }
          r6.z = r6.z * r6.w;
        }
      }
      r6.w = -r5.x * 0.5 + 1;
      r6.w = -r5.z * r6.w + 1;
      r6.w = r6.w * r6.w;
      r6.w = -r6.w * 0.620000005 + 0.620000005;
      r6.w = r6.w + -r5.z;
      r6.w = r4.z * r6.w + r5.z;
      r6.w = r6.w * r6.z;
      r5.y = cmp(0 < r5.y);
      r13.xyz = r6.www * r8.yzw + r11.xyz;
      r14.xyz = -v7.xyz * r1.www + sunConstants.wldDir.xyz;
      r1.w = dot(r14.xyz, r14.xyz);
      r1.w = rsqrt(r1.w);
      r14.xyz = r14.xyz * r1.www;
      r1.w = dot(r14.xyz, r2.xyz);
      r6.w = dot(r0.xyz, r14.xyz);
      r7.w = abs(r6.w) * r4.y + -abs(r6.w);
      r6.w = abs(r6.w) * r7.w + 1;
      r5.z = r5.z * r0.w + r4.w;
      r6.w = r6.w * r6.w;
      r5.z = r6.w * r5.z;
      r5.z = rcp(r5.z);
      r5.z = r5.z * r5.w;
      r5.z = r6.z * r5.z;
      r5.z = 0.25 * r5.z;
      r14.xyz = r5.zzz * r8.yzw + r1.xyz;
      r1.w = saturate(1 + -r1.w);
      r5.w = r1.w * r1.w;
      r5.w = r5.w * r5.w;
      r1.w = r5.w * r1.w;
      r1.w = r5.z * r1.w;
      r15.xyz = r1.www * r8.zwy + r12.xyz;
      r13.w = r15.z;
      r11.w = r12.z;
      r11.xyzw = r5.yyyy ? r13.xyzw : r11.xyzw;
      r15.zw = r14.xy;
      r12.zw = r1.xy;
      r13.xyzw = r5.yyyy ? r15.xyzw : r12.xyzw;
      r1.z = r5.y ? r14.z : r1.z;
      r12.z = r11.w;
      r12.xy = r13.xy;
      r1.xy = r13.zw;
    }
  }
  r13.x = -r6.x;
  r1.w = ~(int)r2.w;
  r5.x = -r5.x * 0.5 + 1;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.xyz = v7.xyz;
  r16.w = 1;
  r17.w = 1;
  r13.z = r6.x;
  r18.w = 1;
  r19.z = 1;
  r20.w = 1;
  r13.yw = r7.xx;
  r6.y = r13.w;
  r21.w = 1;
  r7.y = r13.x;
  r7.z = r6.x;
  r22.w = 1;
  r23.x = r7.x;
  r23.y = r13.x;
  r23.z = r6.x;
  r24.x = r7.x;
  r24.y = r13.x;
  r24.z = r6.x;
  r25.x = r7.x;
  r25.y = r13.x;
  r25.z = r6.x;
  r5.yzw = r11.xyz;
  r26.xyz = r12.zxy;
  r27.xyz = r1.xyz;
  r6.z = enableDitheredShadow;
  r6.w = 0;
  while (true) {
    r7.w = cmp((uint)r6.w >= numLights);
    if (r7.w != 0) break;
    r14.z = (uint)r6.w >> 5;
    r15.xyz = (int3)r10.xyz + (int3)r14.xyz;
    r7.w = visibleLights.Load(r15.xyzw).x;
    r8.yzw = r5.yzw;
    r15.xyz = r26.xyz;
    r28.xyz = r27.xyz;
    r9.w = r6.z;
    r10.w = r7.w;
    while (true) {
      if (r10.w == 0) break;
      r11.w = firstbitlow((uint)r10.w);
      r12.w = 1 << (int)r11.w;
      r14.z = (int)r10.w & (int)r12.w;
      if (r14.z != 0) {
        r10.w = (int)r10.w ^ (int)r12.w;
        r11.w = (int)r6.w + (int)r11.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(0), t11.xyzw
      r29.x = samp0[]..swiz;
      r29.y = samp0[]..swiz;
      r29.z = samp0[]..swiz;
      r29.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r30.xy, r11.w, l(16), t11.xyxx
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
        r29.xyz = -v7.xyz + r29.xyz;
        r30.z = r29.w;
        r29.xyz = cmp(abs(r29.xyz) < r30.zxy);
        r12.w = r29.y ? r29.x : 0;
        r12.w = r29.z ? r12.w : 0;
        if (r12.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(0), t12.wxyz
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r11.w, l(16), t12.zxyw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(32), t12.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(48), t12.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(64), t12.yzwx
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(80), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(96), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
          if (3 == 0) r12.w = 0; else if (3+24 < 32) {           r12.w = (uint)r30.w << (32-(3 + 24)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)r30.w >> 24;
          switch (r12.w) {
            case 4 :            r12.w = cmp(0 < r35.x);
            r36.xy = r34.zw;
            r36.z = r35.w;
            r37.xyz = -r36.xyz * float3(0.5,0.5,0.5) + r29.yzw;
            r38.xyz = -v7.xyz + r37.xyz;
            r14.z = dot(r36.xyz, r38.xyz);
            r14.w = saturate(-r14.z / r35.x);
            r39.xyz = r14.www * r36.xyz + r37.xyz;
            r39.xyz = r12.www ? r39.xyz : r29.yzw;
            r39.xyz = -v7.xyz + r39.xyz;
            r19.w = dot(r39.xyz, r39.xyz);
            r23.w = rsqrt(r19.w);
            r39.xyz = r39.xyz * r23.www;
            r23.w = dot(r0.xyz, r39.xyz);
            r24.w = saturate(r23.w);
            r25.w = cmp(0 < r24.w);
            if (r25.w != 0) {
              r25.w = sqrt(r19.w);
              r26.w = r32.x * r32.x;
              r19.w = r26.w / r19.w;
              r19.w = min(1, r19.w);
              r39.xy = saturate(r25.ww * r31.xz + r31.yw);
              r39.zw = r39.xy * r39.xy;
              r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
              r39.xy = r39.zw * r39.xy;
              r19.w = r39.x * r19.w;
              r19.w = r19.w * r39.y;
              r25.w = cmp(0 < r19.w);
              if (r25.w != 0) {
                if (3 == 0) r25.w = 0; else if (3+27 < 32) {                 r25.w = (uint)r30.w << (32-(3 + 27)); r25.w = (uint)r25.w >> (32-3);                } else r25.w = (uint)r30.w >> 27;
                r25.w = cmp((int)r25.w != 1);
                if (r25.w != 0) {
                  r25.w = abs(r23.w) * -0.200000003 + 0.400000006;
                  r39.xyz = r0.xyz * r25.www + v7.xyz;
                  r39.xyz = r39.xyz + -r33.xyz;
                  r25.w = max(abs(r39.y), abs(r39.z));
                  r25.w = max(abs(r39.x), r25.w);
                  r25.w = r34.x / r25.w;
                  r25.w = r25.w + r34.y;
                  r26.w = dot(r39.xyz, r39.xyz);
                  r26.w = rsqrt(r26.w);
                  r25.w = max(6.10351563e-05, r25.w);
                  r27.w = (int)r30.w & 0x0000ffff;
                  r40.w = (uint)r27.w;
                  r27.w = 0;
                  r28.w = 0;
                  while (true) {
                    r36.w = cmp((int)r28.w >= 8);
                    if (r36.w != 0) break;
                    r41.y = dot(icb[r28.w+0].yx, r13.xy);
                    r41.z = dot(icb[r28.w+0].yx, r13.yz);
                    r41.yz = r41.yz * r32.yy;
                    r41.x = r41.y * r8.x;
                    r41.w = r41.y * r4.x;
                    r40.xyz = r39.xyz * r26.www + r41.xzw;
                    r36.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyzw, r25.w).x;
                    r27.w = r36.w * 0.125 + r27.w;
                    r28.w = (int)r28.w + 1;
                  }
                } else {
                  r27.w = 1;
                }
                r19.w = r27.w * r19.w;
                r25.w = cmp(0 < r19.w);
                if (r25.w != 0) {
                  r25.w = r30.x * r4.y;
                  r25.w = 0.25 * r25.w;
                  r26.w = dot(r36.xyz, r9.xyz);
                  r28.w = dot(r9.xyz, r38.xyz);
                  r36.w = -r26.w * r26.w + r35.x;
                  r14.z = r26.w * r28.w + -r14.z;
                  r14.z = saturate(r14.z / r36.w);
                  r26.w = r36.w / r35.x;
                  r26.w = 10 * r26.w;
                  r26.w = min(1, r26.w);
                  r14.z = r14.z + -r14.w;
                  r14.z = r26.w * r14.z + r14.w;
                  r36.xyz = r14.zzz * r36.xyz + r37.xyz;
                  r36.xyz = r12.www ? r36.xyz : r29.yzw;
                  r36.xyz = -v7.xyz + r36.xyz;
                  r12.w = dot(r36.xyz, r36.xyz);
                  r12.w = rsqrt(r12.w);
                  r37.xyz = r36.xyz * r12.www;
                  if (4 == 0) r14.z = 0; else if (4+16 < 32) {                   r14.z = (uint)r30.w << (32-(4 + 16)); r14.z = (uint)r14.z >> (32-4);                  } else r14.z = (uint)r30.w >> 16;
                  r14.w = cmp(0 < (uint)r14.z);
                  r14.w = r2.w ? r14.w : 0;
                  if (r14.w != 0) {
                    r14.z = (int)r14.z + numLights;
                    r14.z = (int)r14.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.z, l(52), t12.xxxx
                  r14.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.z, l(100), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r14.z, l(116), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                    r26.w = abs(r23.w) * -0.200000003 + 0.400000006;
                    r17.xyz = r0.xyz * r26.www + v7.xyz;
                    r26.w = dot(r38.xyzw, r17.xyzw);
                    r28.w = dot(r39.xyzw, r17.xyzw);
                    r36.w = cmp(r28.w < r26.w);
                    if (r36.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.z, l(68), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r14.z, l(84), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.z, l(132), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.z, l(148), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xy, r14.z, l(164), t12.xyxx
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                      r38.x = dot(r38.xyzw, r17.xyzw);
                      r38.y = dot(r39.xyzw, r17.xyzw);
                      r17.xy = r38.xy / r28.ww;
                      r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r17.xy = r17.xy + r41.zw;
                      r17.xy = r17.xy * r41.xy;
                      r38.xy = r14.ww / r40.xz;
                      r38.zw = float2(1,1) + -r38.xy;
                      r38.zw = cmp(r17.xy >= r38.zw);
                      r38.xy = cmp(r38.xy >= r17.xy);
                      r38.xy = (int2)r38.xy | (int2)r38.zw;
                      r17.z = (int)r38.y | (int)r38.x;
                      r17.xy = saturate(r17.xy);
                      r38.xy = r17.xy * r40.xz + r40.yw;
                      r17.x = r42.y * r28.w;
                      r17.y = r42.x * r28.w + r26.w;
                      r17.x = r17.y / r17.x;
                    } else {
                      r17.z = -1;
                    }
                    r17.y = (int)r36.w | (int)r17.z;
                    if (r17.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.z, r14.z, l(28), t12.xxxx
                    r14.z = samp0[]..swiz;
                      r17.x = max(6.10351563e-05, r17.x);
                      r14.z = (int)r14.z & 0x0000ffff;
                      if (r9.w != 0) {
                        r39.z = (uint)r14.z;
                        r17.yz = float2(0,0);
                        while (true) {
                          r26.w = cmp((int)r17.z >= 8);
                          if (r26.w != 0) break;
                          r40.x = dot(icb[r17.z+0].yx, r13.xw);
                          r40.y = dot(icb[r17.z+0].xy, r6.xy);
                          r39.xy = r40.xy * r14.ww + r38.xy;
                          r26.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r17.x).x;
                          r17.y = r26.w * 0.125 + r17.y;
                          r17.z = (int)r17.z + 1;
                        }
                      } else {
                        r38.z = (uint)r14.z;
                        r17.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r17.x).x;
                      }
                      r14.z = r17.y * r17.y;
                      r14.z = r14.z * r17.y;
                    } else {
                      r14.z = 1;
                    }
                    r19.w = r19.w * r14.z;
                  } else {
                    if (4 == 0) r14.z = 0; else if (4+20 < 32) {                     r14.z = (uint)r30.w << (32-(4 + 20)); r14.z = (uint)r14.z >> (32-4);                    } else r14.z = (uint)r30.w >> 20;
                    r14.w = cmp(0 < (uint)r14.z);
                    r14.w = r14.w ? r1.w : 0;
                    if (r14.w != 0) {
                      r14.z = (int)r14.z + numLights;
                      r14.z = (int)r14.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.z, l(52), t12.xxxx
                    r14.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.z, l(100), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r14.z, l(116), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                      r17.x = abs(r23.w) * -0.200000003 + 0.400000006;
                      r18.xyz = r0.xyz * r17.xxx + v7.xyz;
                      r17.x = dot(r38.xyzw, r18.xyzw);
                      r17.z = dot(r39.xyzw, r18.xyzw);
                      r26.w = cmp(r17.z < r17.x);
                      if (r26.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r14.z, l(68), t12.xyzw
                      r38.x = samp0[]..swiz;
                      r38.y = samp0[]..swiz;
                      r38.z = samp0[]..swiz;
                      r38.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r14.z, l(84), t12.xyzw
                      r39.x = samp0[]..swiz;
                      r39.y = samp0[]..swiz;
                      r39.z = samp0[]..swiz;
                      r39.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.z, l(132), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.z, l(148), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xy, r14.z, l(164), t12.xyxx
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                        r38.x = dot(r38.xyzw, r18.xyzw);
                        r38.y = dot(r39.xyzw, r18.xyzw);
                        r18.xy = r38.xy / r17.zz;
                        r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r18.xy = r18.xy + r41.zw;
                        r18.xy = r18.xy * r41.xy;
                        r38.xy = r14.ww / r40.xz;
                        r38.zw = float2(1,1) + -r38.xy;
                        r38.zw = cmp(r18.xy >= r38.zw);
                        r38.xy = cmp(r38.xy >= r18.xy);
                        r38.xy = (int2)r38.xy | (int2)r38.zw;
                        r18.z = (int)r38.y | (int)r38.x;
                        r18.xy = saturate(r18.xy);
                        r38.xy = r18.xy * r40.xz + r40.yw;
                        r18.x = r42.y * r17.z;
                        r17.x = r42.x * r17.z + r17.x;
                        r17.x = r17.x / r18.x;
                      } else {
                        r18.z = -1;
                      }
                      r17.z = (int)r26.w | (int)r18.z;
                      if (r17.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.z, r14.z, l(28), t12.xxxx
                      r14.z = samp0[]..swiz;
                        r17.x = max(6.10351563e-05, r17.x);
                        r14.z = (int)r14.z & 0x0000ffff;
                        if (r9.w != 0) {
                          r18.z = (uint)r14.z;
                          r17.z = 0;
                          r26.w = 0;
                          while (true) {
                            r28.w = cmp((int)r26.w >= 8);
                            if (r28.w != 0) break;
                            r39.x = dot(icb[r26.w+0].xy, r7.xy);
                            r39.y = dot(icb[r26.w+0].yx, r7.xz);
                            r18.xy = r39.xy * r14.ww + r38.xy;
                            r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r17.x).x;
                            r17.z = r18.x * 0.125 + r17.z;
                            r26.w = (int)r26.w + 1;
                          }
                        } else {
                          r38.z = (uint)r14.z;
                          r17.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r17.x).x;
                        }
                        r14.z = r17.z * r17.z;
                        r14.z = r14.z * r17.z;
                      } else {
                        r14.z = 1;
                      }
                      r19.w = r19.w * r14.z;
                    }
                  }
                  r14.z = -r24.w * r5.x + 1;
                  r14.z = r14.z * r14.z;
                  r14.z = -r14.z * 0.620000005 + 0.620000005;
                  r14.z = r14.z + -r24.w;
                  r14.z = r4.z * r14.z + r24.w;
                  r14.z = r14.z * r19.w;
                  r30.x = r29.x;
                  r14.w = cmp(0 < r23.w);
                  r18.xyz = r14.zzz * r30.xyz + r8.yzw;
                  r14.z = saturate(dot(r0.xyz, r37.xyz));
                  r36.xyz = r36.xyz * r12.www + r2.xyz;
                  r12.w = dot(r36.xyz, r36.xyz);
                  r12.w = rsqrt(r12.w);
                  r36.xyz = r36.xyz * r12.www;
                  r12.w = dot(r36.xyz, r2.xyz);
                  r17.x = dot(r0.xyz, r36.xyz);
                  r23.w = abs(r17.x) * r4.y + -abs(r17.x);
                  r17.x = abs(r17.x) * r23.w + 1;
                  r23.w = r14.z * r0.w + r4.w;
                  r17.x = r17.x * r17.x;
                  r17.x = r17.x * r23.w;
                  r17.x = rcp(r17.x);
                  r14.z = r14.z * r25.w;
                  r14.z = r17.x * r14.z;
                  r14.z = r14.z * r19.w;
                  r36.xyz = r14.zzz * r30.xyz + r28.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r17.x = r12.w * r12.w;
                  r17.x = r17.x * r17.x;
                  r12.w = r17.x * r12.w;
                  r12.w = r14.z * r12.w;
                  r37.xyz = r12.www * r30.xyz + r15.xyz;
                  r8.yzw = r14.www ? r18.xyz : r8.yzw;
                  r15.xyz = r14.www ? r37.xyz : r15.xyz;
                  r28.xyz = r14.www ? r36.xyz : r28.xyz;
                }
              }
            }
            break;
            case 2 :            r18.xy = r32.zw;
            r18.z = r33.w;
            r18.xyz = -v7.xyz + r18.xyz;
            r12.w = dot(r18.xyz, r18.xyz);
            r12.w = rsqrt(r12.w);
            r36.xyz = r18.xyz * r12.www;
            r14.z = dot(r0.xyz, r36.xyz);
            r14.w = saturate(r14.z);
            r17.x = cmp(0 < r14.w);
            if (r17.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(112), t12.yzwx
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(128), t12.zxyw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
              r38.xyz = r36.xyz;
              r38.w = r37.y;
              r17.x = dot(r38.xyzw, r16.xyzw);
              r19.w = cmp(r17.x < 1);
              if (r19.w != 0) {
                r39.xyz = float3(1,1,1);
                r19.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(172), t12.yzwx
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r11.w, l(188), t12.wxyz
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r11.w, l(204), t12.xyzw
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.w, r11.w, l(236), t12.xxxx
              r23.w = samp0[]..swiz;
                r43.xyz = -v7.xyz + r29.yzw;
                r24.w = r32.x * r32.x;
                r25.w = dot(r43.xyz, r43.xyz);
                r24.w = r24.w / r25.w;
                r24.w = min(1, r24.w);
                r31.xy = saturate(r17.xx * r31.xz + r31.yw);
                r31.zw = r31.xy * r31.xy;
                r31.xy = r31.xy * float2(-2,-2) + float2(3,3);
                r31.xy = r31.zw * r31.xy;
                r24.w = r31.x * r24.w;
                r24.w = r24.w * r31.y;
                r33.w = r34.x;
                r31.x = dot(r33.xyzw, r16.xyzw);
                r43.xyz = r34.yzw;
                r43.w = r35.w;
                r31.y = dot(r43.xyzw, r16.xyzw);
                r19.xy = r31.xy / r17.xx;
                r17.x = cmp(r40.w < 0.00048828125);
                if (r17.x != 0) {
                  r41.y = r42.x;
                  r31.xy = saturate(abs(r19.xy) * r41.zw + r41.xy);
                  r31.zw = r31.xy * r31.xy;
                  r31.xy = r31.xy * float2(-2,-2) + float2(3,3);
                  r31.xy = r31.zw * r31.xy;
                  r17.x = r31.x * r31.y;
                } else {
                  r40.w = r41.y;
                  r31.xyzw = saturate(r40.xyzw * abs(r19.yyxx));
                  r31.xyzw = log2(r31.xyzw);
                  r31.xyzw = r41.xxxx * r31.xyzw;
                  r31.xyzw = exp2(r31.xyzw);
                  r31.xy = r31.xy + r31.zw;
                  r31.xy = log2(r31.xy);
                  r31.xy = r42.xx * r31.xy;
                  r31.xy = exp2(r31.xy);
                  r25.w = r41.z * r31.x;
                  r26.w = r41.w * r31.y + -1;
                  r25.w = r41.w * r31.y + -r25.w;
                  r25.w = saturate(r26.w / r25.w);
                  r26.w = r25.w * r25.w;
                  r25.w = r25.w * -2 + 3;
                  r17.x = r26.w * r25.w;
                }
                r19.w = r24.w * r17.x;
                r17.x = (int)r23.w & 255;
                if (r17.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyz, r11.w, l(220), t12.xyzx
                r31.x = samp0[]..swiz;
                r31.y = samp0[]..swiz;
                r31.z = samp0[]..swiz;
                  r23.w = dot(r42.yzw, r19.xyz);
                  r19.x = dot(r31.xyz, r19.xyz);
                  r31.x = frac(r23.w);
                  r31.y = frac(r19.x);
                  r17.x = (int)r17.x + -1;
                  r31.z = (uint)r17.x;
                  r39.xyz = gCookieArray.SampleLevel(samplerLinear_s, r31.xyz, 0).xyz;
                } else {
                  r39.xyz = float3(1,1,1);
                }
              }
              r29.yz = r30.yz;
              r29.xyz = r29.xyz * r39.xyz;
              r17.x = cmp(0 < r19.w);
              if (r17.x != 0) {
                if (3 == 0) r17.x = 0; else if (3+27 < 32) {                 r17.x = (uint)r30.w << (32-(3 + 27)); r17.x = (uint)r17.x >> (32-3);                } else r17.x = (uint)r30.w >> 27;
                r17.x = cmp((int)r17.x != 1);
                if (r17.x != 0) {
                  r17.x = abs(r14.z) * -0.200000003 + 0.400000006;
                  r20.xyz = r0.xyz * r17.xxx + v7.xyz;
                  r36.xyz = r35.xyz;
                  r17.x = dot(r36.xyzw, r20.xyzw);
                  r19.x = dot(r38.xyzw, r20.xyzw);
                  r19.y = cmp(r19.x >= r17.x);
                  if (r19.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.y, r11.w, l(144), t12.xxxx
                  r37.y = samp0[]..swiz;
                    r33.w = r34.x;
                    r31.x = dot(r33.xyzw, r20.xyzw);
                    r35.xyz = r34.yzw;
                    r31.y = dot(r35.xyzw, r20.xyzw);
                    r20.xy = r31.xy / r19.xx;
                    r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r20.xy = r20.xy * r37.zw + r37.xy;
                    r11.w = r17.x / r19.x;
                    r11.w = max(6.10351563e-05, r11.w);
                    r17.x = (int)r30.w & 0x0000ffff;
                    if (r9.w != 0) {
                      r31.z = (uint)r17.x;
                      r19.xy = float2(0,0);
                      while (true) {
                        r23.w = cmp((int)r19.y >= 8);
                        if (r23.w != 0) break;
                        r33.x = dot(icb[r19.y+0].xy, r23.xy);
                        r33.y = dot(icb[r19.y+0].yx, r23.xz);
                        r31.xy = r33.xy * r32.yy + r20.xy;
                        r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r11.w).x;
                        r19.x = r23.w * 0.125 + r19.x;
                        r19.y = (int)r19.y + 1;
                      }
                    } else {
                      r20.z = (uint)r17.x;
                      r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r11.w).x;
                    }
                    r11.w = r19.x * r19.x;
                    r11.w = r11.w * r19.x;
                  } else {
                    r11.w = 1;
                  }
                } else {
                  r11.w = 1;
                }
                r11.w = r19.w * r11.w;
                r17.x = cmp(0 < r11.w);
                if (r17.x != 0) {
                  r17.x = r30.x * r4.y;
                  r17.x = r17.x * r14.w;
                  if (4 == 0) r19.y = 0; else if (4+16 < 32) {                   r19.y = (uint)r30.w << (32-(4 + 16)); r19.y = (uint)r19.y >> (32-4);                  } else r19.y = (uint)r30.w >> 16;
                  r19.w = cmp(0 < (uint)r19.y);
                  r19.w = r2.w ? r19.w : 0;
                  if (r19.w != 0) {
                    r19.y = (int)r19.y + numLights;
                    r19.y = (int)r19.y + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.w, r19.y, l(52), t12.xxxx
                  r19.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r19.y, l(68), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r19.y, l(84), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r19.y, l(100), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r19.y, l(116), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r19.y, l(132), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r19.y, l(148), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                    r20.x = abs(r14.z) * -0.200000003 + 0.400000006;
                    r21.xyz = r0.xyz * r20.xxx + v7.xyz;
                    r20.x = dot(r31.xyzw, r21.xyzw);
                    r20.y = dot(r32.xyzw, r21.xyzw);
                    r20.z = dot(r33.xyzw, r21.xyzw);
                    r21.x = dot(r34.xyzw, r21.xyzw);
                    r21.y = cmp(r21.x < r20.z);
                    r20.xy = r20.xy / r21.xx;
                    r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r20.xy = r20.xy + r36.zw;
                    r20.xy = r20.xy * r36.xy;
                    r30.xy = r19.ww / r35.xz;
                    r31.xy = float2(1,1) + -r30.xy;
                    r31.xy = cmp(r20.xy >= r31.xy);
                    r30.xy = cmp(r30.xy >= r20.xy);
                    r30.xy = (int2)r30.xy | (int2)r31.xy;
                    r21.z = (int)r30.y | (int)r30.x;
                    r21.y = (int)r21.y | (int)r21.z;
                    if (r21.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.y, r19.y, l(28), t12.xxxx
                    r21.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xy, r19.y, l(164), t12.xyxx
                    r30.x = samp0[]..swiz;
                    r30.y = samp0[]..swiz;
                      r20.xy = saturate(r20.xy);
                      r31.xy = r20.xy * r35.xz + r35.yw;
                      r19.y = r30.y * r21.x;
                      r20.x = r30.x * r21.x + r20.z;
                      r19.y = r20.x / r19.y;
                      r19.y = max(6.10351563e-05, r19.y);
                      r20.x = r21.y ? 0.000000 : 0;
                      if (r9.w != 0) {
                        r21.z = (uint)r20.x;
                        r20.yz = float2(0,0);
                        while (true) {
                          r23.w = cmp((int)r20.z >= 8);
                          if (r23.w != 0) break;
                          r30.x = dot(icb[r20.z+0].xy, r24.xy);
                          r30.y = dot(icb[r20.z+0].yx, r24.xz);
                          r21.xy = r30.xy * r19.ww + r31.xy;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r19.y).x;
                          r20.y = r21.x * 0.125 + r20.y;
                          r20.z = (int)r20.z + 1;
                        }
                      } else {
                        r31.z = (uint)r20.x;
                        r20.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r19.y).x;
                      }
                      r19.y = r20.y * r20.y;
                      r19.y = r19.y * r20.y;
                    } else {
                      r19.y = 1;
                    }
                    r11.w = r19.y * r11.w;
                  } else {
                    if (4 == 0) r19.y = 0; else if (4+20 < 32) {                     r19.y = (uint)r30.w << (32-(4 + 20)); r19.y = (uint)r19.y >> (32-4);                    } else r19.y = (uint)r30.w >> 20;
                    r19.w = cmp(0 < (uint)r19.y);
                    r19.w = r19.w ? r1.w : 0;
                    if (r19.w != 0) {
                      r19.y = (int)r19.y + numLights;
                      r19.y = (int)r19.y + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.w, r19.y, l(52), t12.xxxx
                    r19.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r19.y, l(68), t12.xyzw
                    r30.x = samp0[]..swiz;
                    r30.y = samp0[]..swiz;
                    r30.z = samp0[]..swiz;
                    r30.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r19.y, l(84), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r19.y, l(100), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r19.y, l(116), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r19.y, l(132), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r19.y, l(148), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                      r20.x = abs(r14.z) * -0.200000003 + 0.400000006;
                      r22.xyz = r0.xyz * r20.xxx + v7.xyz;
                      r21.x = dot(r30.xyzw, r22.xyzw);
                      r21.y = dot(r31.xyzw, r22.xyzw);
                      r20.x = dot(r32.xyzw, r22.xyzw);
                      r20.z = dot(r33.xyzw, r22.xyzw);
                      r21.z = cmp(r20.z < r20.x);
                      r21.xy = r21.xy / r20.zz;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r35.zw;
                      r21.xy = r21.xy * r35.xy;
                      r22.xy = r19.ww / r34.xz;
                      r30.xy = float2(1,1) + -r22.xy;
                      r30.xy = cmp(r21.xy >= r30.xy);
                      r22.xy = cmp(r22.xy >= r21.xy);
                      r22.xy = (int2)r22.xy | (int2)r30.xy;
                      r22.x = (int)r22.y | (int)r22.x;
                      r21.z = (int)r21.z | (int)r22.x;
                      if (r21.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.z, r19.y, l(28), t12.xxxx
                      r21.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xy, r19.y, l(164), t12.xyxx
                      r22.x = samp0[]..swiz;
                      r22.y = samp0[]..swiz;
                        r21.xy = saturate(r21.xy);
                        r30.xy = r21.xy * r34.xz + r34.yw;
                        r19.y = r22.y * r20.z;
                        r20.x = r22.x * r20.z + r20.x;
                        r19.y = r20.x / r19.y;
                        r19.y = max(6.10351563e-05, r19.y);
                        r20.x = r21.z ? 0.000000 : 0;
                        if (r9.w != 0) {
                          r21.z = (uint)r20.x;
                          r20.z = 0;
                          r22.x = 0;
                          while (true) {
                            r22.y = cmp((int)r22.x >= 8);
                            if (r22.y != 0) break;
                            r31.x = dot(icb[r22.x+0].xy, r25.xy);
                            r31.y = dot(icb[r22.x+0].yx, r25.xz);
                            r21.xy = r31.xy * r19.ww + r30.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r19.y).x;
                            r20.z = r21.x * 0.125 + r20.z;
                            r22.x = (int)r22.x + 1;
                          }
                        } else {
                          r30.z = (uint)r20.x;
                          r20.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r19.y).x;
                        }
                        r19.y = r20.z * r20.z;
                        r19.y = r19.y * r20.z;
                      } else {
                        r19.y = 1;
                      }
                      r11.w = r19.y * r11.w;
                    }
                  }
                  r19.y = -r14.w * r5.x + 1;
                  r19.y = r19.y * r19.y;
                  r19.y = -r19.y * 0.620000005 + 0.620000005;
                  r19.y = r19.y + -r14.w;
                  r19.y = r4.z * r19.y + r14.w;
                  r19.y = r19.y * r11.w;
                  r14.z = cmp(0 < r14.z);
                  r21.xyz = r19.yyy * r29.xyz + r8.yzw;
                  r18.xyz = r18.xyz * r12.www + r2.xyz;
                  r12.w = dot(r18.xyz, r18.xyz);
                  r12.w = rsqrt(r12.w);
                  r18.xyz = r18.xyz * r12.www;
                  r12.w = dot(r18.xyz, r2.xyz);
                  r18.x = dot(r0.xyz, r18.xyz);
                  r18.y = abs(r18.x) * r4.y + -abs(r18.x);
                  r18.x = abs(r18.x) * r18.y + 1;
                  r14.w = r14.w * r0.w + r4.w;
                  r18.x = r18.x * r18.x;
                  r14.w = r18.x * r14.w;
                  r14.w = rcp(r14.w);
                  r14.w = r14.w * r17.x;
                  r11.w = r14.w * r11.w;
                  r11.w = 0.25 * r11.w;
                  r18.xyz = r11.www * r29.xyz + r28.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r14.w = r12.w * r12.w;
                  r14.w = r14.w * r14.w;
                  r12.w = r14.w * r12.w;
                  r11.w = r12.w * r11.w;
                  r22.xyz = r11.www * r29.xyz + r15.xyz;
                  r8.yzw = r14.zzz ? r21.xyz : r8.yzw;
                  r15.xyz = r14.zzz ? r22.xyz : r15.xyz;
                  r28.xyz = r14.zzz ? r18.xyz : r28.xyz;
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
    r5.yzw = r8.yzw;
    r26.xyz = r15.xyz;
    r27.xyz = r28.xyz;
    r6.w = (int)r6.w + 32;
  }
  r0.xyz = float3(0.959999979,0.959999979,0.959999979) * r26.xyz;
  r0.xyz = r27.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r0.xyz;
  r0.xyz = r5.yzw * r3.xyz + r0.xyz;
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
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v7.z;
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
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = r3.w;
  return;
}