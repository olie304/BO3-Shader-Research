// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:38:40 2021

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
  float4 tensionParms : packoffset(c12);
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
SamplerState PointSampler_s : register(s7);
SamplerState LinearSampler_s : register(s8);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> floatZSampler : register(t0);
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
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> glossMap : register(t24);
Texture2D<float4> aoMap : register(t25);
Texture2D<float4> detailMap : register(t26);
Texture2D<float> gSSAOTexture : register(t27);
Texture2D<float4> coneLUTMap : register(t29);
Texture2D<float4> stretchNormal : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
Texture2D<float4> compressNormal : register(t37);
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
  float3 v2 : BENTNORMAL0,
  nointerpolation uint4 v3 : TEXCOORD4,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  float3 v8 : TENSION0,
  uint v9 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63,r64,r65,r66,r67,r68;
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
  r1.yz = saturate(tensionParms.ww * v8.xy);
  r1.yz = log2(r1.yz);
  r1.yz = tensionParms.zz * r1.yz;
  r1.yz = exp2(r1.yz);
  r1.w = cmp(r1.z < r1.y);
  r2.xyz = compressNormal.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = stretchNormal.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = r1.www ? r2.xyz : r3.xyz;
  r1.y = r1.w ? r1.y : r1.z;
  r1.z = r1.w ? tensionParms.y : tensionParms.x;
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r1.w = r3.z * r3.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r1.y = r1.y * r1.z;
  r4.xy = r2.xy * r1.yy + r3.xy;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyw = r4.xyz * r1.zzz;
  r1.y = r2.z * r1.y + r1.w;
  r1.zw = detailScale.xy * w1.xy;
  r3.xyz = detailMap.Sample(normalSampler_s, r1.zw).xyz;
  r1.zw = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.z = r3.z * r3.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r2.xy = r1.zw * detailScaleHeight + r2.xy;
  r1.z = dot(r2.xyw, r2.xyw);
  r1.z = rsqrt(r1.z);
  r2.xyw = r2.xyw * r1.zzz;
  r1.y = r2.z * detailScaleHeight + r1.y;
  r1.z = v9.x ? 1 : -1;
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v4.xyz * r1.www;
  r3.xyz = r3.xyz * r1.zzz;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = v5.xyz * r1.www;
  r4.xyz = r4.xyz * r1.zzz;
  r1.w = dot(v6.xyz, v6.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = v6.xyz * r1.www;
  r5.xyz = r5.xyz * r1.zzz;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.y + r1.x;
  r1.x = log2(r1.x);
  r1.x = saturate(-0.0588235296 * r1.x);
  r5.xyz = r5.xyz * r2.yyy;
  r2.xyz = r4.xyz * r2.xxx + r5.xyz;
  r2.xyz = r3.xyz * r2.www + r2.xyz;
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = rsqrt(r1.y);
  r2.xyz = r2.xyz * r1.yyy;
  r1.y = thicknessMap.Sample(colorSampler_s, w1.xy).x;
  r1.y = 1 + -r1.y;
  r3.xyz = float3(1,0.5,0.5) * r1.yyy;
  r4.xyzw = renderTargetSize.zwzw * v0.xyxy;
  if (enableGTAO != 0) {
    r5.xyz = viewMatrix._m10_m11_m12 * v4.yyy;
    r5.xyz = v4.xxx * viewMatrix._m00_m01_m02 + r5.xyz;
    r5.xyz = v4.zzz * viewMatrix._m20_m21_m22 + r5.xyz;
    r1.y = dot(r5.xyz, r5.xyz);
    r1.y = rsqrt(r1.y);
    r5.xyz = r5.xyz * r1.yyy;
    r1.y = 0.5 * gameTick.w;
    r6.xy = viewSpaceScaleBias.xy * r4.zw + -viewSpaceScaleBias.zw;
    r6.xy = v0.ww * r6.xy;
    r1.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
    r1.w = frac(r1.w);
    r1.w = 52.9829178 * r1.w;
    r1.w = frac(r1.w);
    r1.y = r1.w * 3.14159989 + r1.y;
    sincos(r1.y, r7.x, r8.x);
    r9.xyzw = float4(4.16666698,4.16666698,16.6666679,16.6666679) * renderTargetSize.zwzw;
    r8.y = r7.x;
    r7.xyzw = r9.xyzw * r8.xyxy + r4.zwzw;
    r10.xyzw = renderTargetSize.xyxy * r7.xyzw;
    r11.xy = (int2)r10.xy;
    r11.zw = float2(0,0);
    r1.y = floatZSampler.Load(r11.xyz).x;
    r1.w = cmp(r1.y >= 0.984375);
    r2.w = 1.01587307 * r1.y;
    r1.y = r1.y * 64 + -63;
    r1.y = r1.w ? r1.y : r2.w;
    r1.y = max(9.99999994e-09, r1.y);
    r11.z = rcp(r1.y);
    r7.xyzw = viewSpaceScaleBias.xyxy * r7.xyzw + -viewSpaceScaleBias.zwzw;
    r11.xy = r11.zz * r7.xy;
    r6.z = v0.w;
    r11.xyz = r11.xyz + -r6.xyz;
    r1.y = dot(r11.xyz, r11.xyz);
    r1.y = rsqrt(r1.y);
    r1.y = -r11.z * r1.y;
    r1.y = max(-1, r1.y);
    r10.xy = (int2)r10.zw;
    r10.zw = float2(0,0);
    r1.w = floatZSampler.Load(r10.xyz).x;
    r2.w = cmp(r1.w >= 0.984375);
    r3.w = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r2.w ? r1.w : r3.w;
    r1.w = max(9.99999994e-09, r1.w);
    r10.z = rcp(r1.w);
    r10.xy = r10.zz * r7.zw;
    r7.xyz = r10.xyz + -r6.xyz;
    r1.w = dot(r7.xyz, r7.xyz);
    r1.w = rsqrt(r1.w);
    r1.w = -r7.z * r1.w;
    r1.y = max(r1.y, r1.w);
    r7.xyzw = float4(37.5,37.5,66.6666718,66.6666718) * renderTargetSize.zwzw;
    r10.xyzw = r7.xyzw * r8.xyxy + r4.zwzw;
    r11.xyzw = renderTargetSize.xyxy * r10.xyzw;
    r12.xy = (int2)r11.xy;
    r12.zw = float2(0,0);
    r1.w = floatZSampler.Load(r12.xyz).x;
    r2.w = cmp(r1.w >= 0.984375);
    r3.w = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r2.w ? r1.w : r3.w;
    r1.w = max(9.99999994e-09, r1.w);
    r12.z = rcp(r1.w);
    r10.xyzw = viewSpaceScaleBias.xyxy * r10.xyzw + -viewSpaceScaleBias.zwzw;
    r12.xy = r12.zz * r10.xy;
    r12.xyz = r12.xyz + -r6.xyz;
    r1.w = dot(r12.xyz, r12.xyz);
    r1.w = rsqrt(r1.w);
    r1.w = -r12.z * r1.w;
    r1.y = max(r1.y, r1.w);
    r11.xy = (int2)r11.zw;
    r11.zw = float2(0,0);
    r1.w = floatZSampler.Load(r11.xyz).x;
    r2.w = cmp(r1.w >= 0.984375);
    r3.w = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r2.w ? r1.w : r3.w;
    r1.w = max(9.99999994e-09, r1.w);
    r11.z = rcp(r1.w);
    r11.xy = r11.zz * r10.zw;
    r10.xyz = r11.xyz + -r6.xyz;
    r1.w = dot(r10.xyz, r10.xyz);
    r1.w = rsqrt(r1.w);
    r1.w = -r10.z * r1.w;
    r1.y = max(r1.y, r1.w);
    r10.xyzw = float4(104.166664,104.166664,150,150) * renderTargetSize.zwzw;
    r11.xyzw = r10.xyzw * r8.xyxy + r4.zwzw;
    r12.xyzw = renderTargetSize.xyxy * r11.xyzw;
    r13.xy = (int2)r12.xy;
    r13.zw = float2(0,0);
    r1.w = floatZSampler.Load(r13.xyz).x;
    r2.w = cmp(r1.w >= 0.984375);
    r3.w = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r2.w ? r1.w : r3.w;
    r1.w = max(9.99999994e-09, r1.w);
    r13.z = rcp(r1.w);
    r11.xyzw = viewSpaceScaleBias.xyxy * r11.xyzw + -viewSpaceScaleBias.zwzw;
    r13.xy = r13.zz * r11.xy;
    r13.xyz = r13.xyz + -r6.xyz;
    r1.w = dot(r13.xyz, r13.xyz);
    r1.w = rsqrt(r1.w);
    r1.w = -r13.z * r1.w;
    r1.y = max(r1.y, r1.w);
    r12.xy = (int2)r12.zw;
    r12.zw = float2(0,0);
    r1.w = floatZSampler.Load(r12.xyz).x;
    r2.w = cmp(r1.w >= 0.984375);
    r3.w = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r2.w ? r1.w : r3.w;
    r1.w = max(9.99999994e-09, r1.w);
    r12.z = rcp(r1.w);
    r12.xy = r12.zz * r11.zw;
    r11.xyz = r12.xyz + -r6.xyz;
    r1.w = dot(r11.xyz, r11.xyz);
    r1.w = rsqrt(r1.w);
    r1.w = -r11.z * r1.w;
    r1.y = max(r1.y, r1.w);
    r9.xyzw = r9.xyzw * -r8.xyxy + r4.zwzw;
    r11.xyzw = renderTargetSize.xyxy * r9.xyzw;
    r11.xyzw = (int4)r11.zwxy;
    r12.xy = r11.zw;
    r12.zw = float2(0,0);
    r1.w = floatZSampler.Load(r12.xyz).x;
    r2.w = cmp(r1.w >= 0.984375);
    r3.w = 1.01587307 * r1.w;
    r1.w = r1.w * 64 + -63;
    r1.w = r2.w ? r1.w : r3.w;
    r1.w = max(9.99999994e-09, r1.w);
    r12.z = rcp(r1.w);
    r9.xyzw = viewSpaceScaleBias.xyxy * r9.xyzw + -viewSpaceScaleBias.zwzw;
    r12.xy = r12.zz * r9.xy;
    r12.xyz = r12.xyz + -r6.xyz;
    r1.w = dot(r12.xyz, r12.xyz);
    r1.w = rsqrt(r1.w);
    r1.w = -r12.z * r1.w;
    r1.w = max(-1, r1.w);
    r11.zw = float2(0,0);
    r2.w = floatZSampler.Load(r11.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r5.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r5.w;
    r2.w = max(9.99999994e-09, r2.w);
    r11.z = rcp(r2.w);
    r11.xy = r11.zz * r9.zw;
    r9.xyz = r11.xyz + -r6.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r9.z * r2.w;
    r1.w = max(r2.w, r1.w);
    r7.xyzw = r7.xyzw * -r8.xyxy + r4.zwzw;
    r9.xyzw = renderTargetSize.xyxy * r7.xyzw;
    r9.xyzw = (int4)r9.zwxy;
    r11.xy = r9.zw;
    r11.zw = float2(0,0);
    r2.w = floatZSampler.Load(r11.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r5.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r5.w;
    r2.w = max(9.99999994e-09, r2.w);
    r11.z = rcp(r2.w);
    r7.xyzw = viewSpaceScaleBias.xyxy * r7.xyzw + -viewSpaceScaleBias.zwzw;
    r11.xy = r11.zz * r7.xy;
    r11.xyz = r11.xyz + -r6.xyz;
    r2.w = dot(r11.xyz, r11.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r11.z * r2.w;
    r1.w = max(r2.w, r1.w);
    r9.zw = float2(0,0);
    r2.w = floatZSampler.Load(r9.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r5.w = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r5.w;
    r2.w = max(9.99999994e-09, r2.w);
    r9.z = rcp(r2.w);
    r9.xy = r9.zz * r7.zw;
    r7.xyz = r9.xyz + -r6.xyz;
    r2.w = dot(r7.xyz, r7.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r7.z * r2.w;
    r1.w = max(r2.w, r1.w);
    r7.xyzw = r10.xyzw * -r8.xyxy + r4.xyzw;
    r9.xyzw = renderTargetSize.xyxy * r7.xyzw;
    r9.xyzw = (int4)r9.zwxy;
    r10.xy = r9.zw;
    r10.zw = float2(0,0);
    r2.w = floatZSampler.Load(r10.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r4.x = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r4.x;
    r2.w = max(9.99999994e-09, r2.w);
    r10.z = rcp(r2.w);
    r7.xyzw = viewSpaceScaleBias.xyxy * r7.xyzw + -viewSpaceScaleBias.zwzw;
    r10.xy = r10.zz * r7.xy;
    r10.xyz = r10.xyz + -r6.xyz;
    r2.w = dot(r10.xyz, r10.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r10.z * r2.w;
    r1.w = max(r2.w, r1.w);
    r9.zw = float2(0,0);
    r2.w = floatZSampler.Load(r9.xyz).x;
    r3.w = cmp(r2.w >= 0.984375);
    r4.x = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r2.w = r3.w ? r2.w : r4.x;
    r2.w = max(9.99999994e-09, r2.w);
    r9.z = rcp(r2.w);
    r9.xy = r9.zz * r7.zw;
    r6.xyz = r9.xyz + -r6.xyz;
    r2.w = dot(r6.xyz, r6.xyz);
    r2.w = rsqrt(r2.w);
    r2.w = -r6.z * r2.w;
    r1.w = max(r2.w, r1.w);
    r4.xy = viewSpaceScaleBias.xy * r8.xy;
    r2.w = dot(r4.xy, r4.xy);
    r2.w = rsqrt(r2.w);
    r6.xy = r4.xy * r2.ww;
    r6.zw = -r6.yy;
    r2.w = dot(r5.yx, r6.xz);
    r5.xy = -r6.wx * r2.ww + r5.xy;
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = rsqrt(r2.w);
    r5.xyz = r5.zxy * r2.www;
    r2.w = dot(r6.xy, r5.yz);
    r2.w = cmp(r2.w >= 0);
    r2.w = r2.w ? -1 : 1;
    r5.x = saturate(-r5.x);
    r3.w = 1 + -r5.x;
    r3.w = sqrt(r3.w);
    r4.x = r5.x * -0.0187292993 + 0.0742610022;
    r4.x = r4.x * r5.x + -0.212114394;
    r4.x = r4.x * r5.x + 1.57072878;
    r3.w = r4.x * r3.w;
    r4.x = r3.w * r2.w;
    r4.y = 1 + -abs(r1.y);
    r4.y = sqrt(r4.y);
    r5.x = abs(r1.y) * -0.0187292993 + 0.0742610022;
    r5.x = r5.x * abs(r1.y) + -0.212114394;
    r5.x = r5.x * abs(r1.y) + 1.57072878;
    r5.y = r5.x * r4.y;
    r5.y = r5.y * -2 + 3.14159274;
    r1.y = cmp(r1.y < -r1.y);
    r1.y = r1.y ? r5.y : 0;
    r1.y = r5.x * r4.y + r1.y;
    r4.y = 1 + -abs(r1.w);
    r4.y = sqrt(r4.y);
    r5.x = abs(r1.w) * -0.0187292993 + 0.0742610022;
    r5.x = r5.x * abs(r1.w) + -0.212114394;
    r5.x = r5.x * abs(r1.w) + 1.57072878;
    r5.y = r5.x * r4.y;
    r5.y = r5.y * -2 + 3.14159274;
    r1.w = cmp(r1.w < -r1.w);
    r1.w = r1.w ? r5.y : 0;
    r1.w = r5.x * r4.y + r1.w;
    r1.y = -r2.w * r3.w + -r1.y;
    r1.y = max(-1.57079995, r1.y);
    r1.y = r2.w * r3.w + r1.y;
    r1.w = -r2.w * r3.w + r1.w;
    r1.w = min(1.57079995, r1.w);
    r1.w = r2.w * r3.w + r1.w;
    sincos(r4.x, r5.x, r6.x);
    r1.yw = r1.yw + r1.yw;
    r4.y = r1.y * r5.x + r6.x;
    r1.y = -r2.w * r3.w + r1.y;
    r1.y = cos(r1.y);
    r1.y = r4.y + -r1.y;
    r4.y = r1.w * r5.x + r6.x;
    r1.w = -r2.w * r3.w + r1.w;
    r1.w = cos(r1.w);
    r1.w = r4.y + -r1.w;
    r1.w = 0.25 * r1.w;
    r1.y = r1.y * 0.25 + r1.w;
    r1.w = r4.x * r5.x + r6.x;
    r1.y = r1.y / r1.w;
  } else {
    r1.w = aoMap.Sample(aoSampler_s, w1.xy).x;
    r2.w = gSSAOTexture.SampleLevel(LinearSampler_s, r4.zw, 0).x;
    r1.y = min(r2.w, r1.w);
  }
  r1.w = cmp(v0.z >= 0.984375);
  r2.w = 1.01587307 * v0.z;
  r3.w = v0.z * 64 + -63;
  r1.w = r1.w ? r3.w : r2.w;
  r1.w = max(9.99999994e-09, r1.w);
  r1.w = rcp(r1.w);
  r4.xy = (uint2)v0.xy;
  r5.xyz = ddx_coarse(v7.xyz);
  r6.xyz = ddy_coarse(v7.xyz);
  r2.w = numRefProbes + numLights;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.w, v3.x, l(8), t4.xxxx
r3.w = samp0[]..swiz;
  r4.zw = (int2)r3.ww & int2(268435456,536870912);
  if (r4.z != 0) {
    r7.xyz = eyeOffset.xyz + v7.xyz;
    r3.w = 0.0078125 * r1.w;
    r3.w = min(15, r3.w);
    r3.w = (uint)r3.w;
    r8.xy = (uint2)r4.xy >> int2(6,6);
    r8.z = (uint)r3.w << 4;
    r3.w = numStaticDecals & -32;
    r4.z = (int)-r3.w + numStaticDecals;
    r9.xy = float2(0,0);
    r10.w = 0;
    r7.w = 1;
    r11.xyz = float3(0,0,0);
    r12.xyz = float3(0,0,0);
    r13.yz = float2(0,0);
    r5.w = 0;
    while (true) {
      r6.w = cmp((uint)r5.w >= numStaticDecals);
      if (r6.w != 0) break;
      r9.z = (uint)r5.w >> 5;
      r10.xyz = (int3)r8.xyz + (int3)r9.xyz;
      r6.w = visibleDecals.Load(r10.xyzw).x;
      r8.w = cmp((int)r3.w == (int)r5.w);
      if (r4.z == 0) r9.z = 0; else if (r4.z+0 < 32) {       r9.z = (uint)r6.w << (32-(r4.z + 0)); r9.z = (uint)r9.z >> (32-r4.z);      } else r9.z = (uint)r6.w >> 0;
      r6.w = r8.w ? r9.z : r6.w;
      r8.w = (int)r2.w + (int)r5.w;
      r10.xyz = r11.xyz;
      r14.xyz = r12.xzy;
      r15.yz = r13.yz;
      r9.z = r6.w;
      while (true) {
        if (r9.z == 0) break;
        r9.w = firstbitlow((uint)r9.z);
        r11.w = 1 << (int)r9.w;
        r12.w = (int)r9.z & (int)r11.w;
        if (r12.w != 0) {
          r9.z = (int)r9.z ^ (int)r11.w;
          r11.w = (int)r8.w + (int)r9.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xyzw, r11.w, l(0), t11.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xy, r11.w, l(16), t11.xyxx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
          r16.xyz = -v7.xyz + r16.xyz;
          r17.z = r16.w;
          r16.xyz = cmp(abs(r16.xyz) < r17.zxy);
          r11.w = r16.y ? r16.x : 0;
          r11.w = r16.z ? r11.w : 0;
          if (r11.w != 0) {
            r9.w = (int)r5.w + (int)r9.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyz, r9.w, l(0), t36.xyzx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyz, r9.w, l(16), t36.xyzx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r9.w, l(32), t36.xyzx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
            r19.x = r16.x;
            r19.y = r17.x;
            r19.z = r18.x;
            r11.w = dot(r19.xyz, r19.xyz);
            r11.w = rsqrt(r11.w);
            r20.xyz = r19.xyz * r11.www;
            r11.w = dot(r20.xyz, v4.xyz);
            r11.w = cmp(r11.w >= 0.5);
            if (r11.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyw, r9.w, l(48), t36.xyxz
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.w = samp0[]..swiz;
              r19.w = r21.x;
              r19.x = dot(r7.xyzw, r19.xyzw);
              r22.x = r16.y;
              r22.y = r17.y;
              r22.z = r18.y;
              r22.w = r21.y;
              r19.y = dot(r7.xyzw, r22.xyzw);
              r21.x = r16.z;
              r21.y = r17.z;
              r21.z = r18.z;
              r19.z = dot(r7.xyzw, r21.xyzw);
              r16.xyz = cmp(abs(r19.xyz) < float3(1,1,1));
              r11.w = r16.y ? r16.x : 0;
              r11.w = r16.z ? r11.w : 0;
              if (r11.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r16.xyzw, r9.w, l(64), t36.xyzw
              r16.x = samp0[]..swiz;
              r16.y = samp0[]..swiz;
              r16.z = samp0[]..swiz;
              r16.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyzw, r9.w, l(80), t36.xyzw
              r17.x = samp0[]..swiz;
              r17.y = samp0[]..swiz;
              r17.z = samp0[]..swiz;
              r17.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r9.w, l(96), t36.xyzw
              r18.x = samp0[]..swiz;
              r18.y = samp0[]..swiz;
              r18.z = samp0[]..swiz;
              r18.w = samp0[]..swiz;
                r23.x = dot(r5.xyz, r22.xyz);
                r23.y = dot(r5.xyz, r21.xyz);
                r24.x = dot(r6.xyz, r22.xyz);
                r24.y = dot(r6.xyz, r21.xyz);
                r19.xy = r19.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r23.xyz = float3(0.5,-0.5,0.5) * r23.xyx;
                r24.xyz = float3(0.5,-0.5,0.5) * r24.xyx;
                r19.zw = (int2)r17.yz & int2(65535,65535);
                if (r19.z != 0) {
                  if (4 == 0) r11.w = 0; else if (4+24 < 32) {                   r11.w = (uint)r17.w << (32-(4 + 24)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r17.w >> 24;
                  r11.w = 1 << (int)r11.w;
                  r12.w = (uint)r17.w >> 28;
                  r12.w = 1 << (int)r12.w;
                  r13.w = cmp((int)r19.z == 4);
                  if (r13.w != 0) {
                    r13.w = (int)r17.w & 4095;
                    if (12 == 0) r14.w = 0; else if (12+12 < 32) {                     r14.w = (uint)r17.w << (32-(12 + 12)); r14.w = (uint)r14.w >> (32-12);                    } else r14.w = (uint)r17.w >> 12;
                    r15.w = (int)r18.w & 1023;
                    r25.xz = (uint2)r11.ww;
                    r25.y = (uint)r12.w;
                    r26.xy = r19.xy * r25.zy + float2(0.5,0.5);
                    r26.zw = float2(-0.5,-0.5) + r25.zy;
                    r26.xy = min(r26.xy, r26.zw);
                    r27.x = (uint)r13.w;
                    r27.y = (uint)r14.w;
                    r26.xy = r27.xy + r26.xy;
                    r26.xy = invBcTexSizes.xy * r26.xy;
                    r26.z = (uint)r15.w;
                    r27.xyz = invBcTexSizes.xyx * r23.zyz;
                    r27.xyz = r27.xyz * r25.xyz;
                    r28.xyz = invBcTexSizes.xyx * r24.zyz;
                    r25.xyz = r28.xyz * r25.xyz;
                    r25.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.xyzx, r25.xyzx).xyzw;
                  } else {
                    r13.w = cmp((int)r19.z == 1);
                    if (r13.w != 0) {
                      r13.w = (int)r17.w & 4095;
                      if (12 == 0) r14.w = 0; else if (12+12 < 32) {                       r14.w = (uint)r17.w << (32-(12 + 12)); r14.w = (uint)r14.w >> (32-12);                      } else r14.w = (uint)r17.w >> 12;
                      r15.w = (int)r18.w & 1023;
                      r26.xz = (uint2)r11.ww;
                      r26.y = (uint)r12.w;
                      r27.xy = r19.xy * r26.zy + float2(0.5,0.5);
                      r27.zw = float2(-0.5,-0.5) + r26.zy;
                      r27.xy = min(r27.xy, r27.zw);
                      r28.x = (uint)r13.w;
                      r28.y = (uint)r14.w;
                      r27.xy = r28.xy + r27.xy;
                      r27.xy = invBcTexSizes.zw * r27.xy;
                      r27.z = (uint)r15.w;
                      r28.xyz = invBcTexSizes.zwz * r23.zyz;
                      r28.xyz = r28.xyz * r26.xyz;
                      r29.xyz = invBcTexSizes.zwz * r24.zyz;
                      r26.xyz = r29.xyz * r26.xyz;
                      r25.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.xyzx, r26.xyzx).xyzw;
                    } else {
                      r25.xyzw = float4(1,1,1,1);
                    }
                  }
                  r16.xyz = r25.xyz * r16.xyz;
                  r11.w = r25.w * r16.w;
                } else {
                  r16.xyz = float3(0,0,0);
                  r11.w = 0;
                }
                r12.w = cmp(r17.x != 1.000000);
                r13.w = r11.w + r16.w;
                r13.w = saturate(r13.w * r17.x + -r17.x);
                r11.w = r12.w ? r13.w : r11.w;
                if (r19.w != 0) {
                  if (4 == 0) r12.w = 0; else if (4+24 < 32) {                   r12.w = (uint)r18.y << (32-(4 + 24)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r18.y >> 24;
                  r12.w = 1 << (int)r12.w;
                  r13.w = (uint)r18.y >> 28;
                  r13.w = 1 << (int)r13.w;
                  r14.w = cmp((int)r19.w == 2);
                  if (r14.w != 0) {
                    r14.w = (int)r18.y & 4095;
                    if (12 == 0) r17.x = 0; else if (12+12 < 32) {                     r17.x = (uint)r18.y << (32-(12 + 12)); r17.x = (uint)r17.x >> (32-12);                    } else r17.x = (uint)r18.y >> 12;
                    if (10 == 0) r17.w = 0; else if (10+20 < 32) {                     r17.w = (uint)r18.w << (32-(10 + 20)); r17.w = (uint)r17.w >> (32-10);                    } else r17.w = (uint)r18.w >> 20;
                    r25.xz = (uint2)r12.ww;
                    r25.y = (uint)r13.w;
                    r26.xy = r19.xy * r25.zy + float2(0.5,0.5);
                    r26.zw = float2(-0.5,-0.5) + r25.zy;
                    r26.xy = min(r26.xy, r26.zw);
                    r27.x = (uint)r14.w;
                    r27.y = (uint)r17.x;
                    r26.xy = r27.xy + r26.xy;
                    r26.xy = invMaskTexSizes.xy * r26.xy;
                    r26.z = (uint)r17.w;
                    r27.xyz = invMaskTexSizes.xyx * r23.zyz;
                    r27.xyz = r27.xyz * r25.xyz;
                    r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r25.xyz = r28.xyz * r25.xyz;
                    r14.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                  } else {
                    r15.w = cmp((int)r19.w == 4);
                    if (r15.w != 0) {
                      r15.w = (int)r18.y & 4095;
                      if (12 == 0) r17.x = 0; else if (12+12 < 32) {                       r17.x = (uint)r18.y << (32-(12 + 12)); r17.x = (uint)r17.x >> (32-12);                      } else r17.x = (uint)r18.y >> 12;
                      if (10 == 0) r17.w = 0; else if (10+20 < 32) {                       r17.w = (uint)r18.w << (32-(10 + 20)); r17.w = (uint)r17.w >> (32-10);                      } else r17.w = (uint)r18.w >> 20;
                      r25.xz = (uint2)r12.ww;
                      r25.y = (uint)r13.w;
                      r19.zw = r19.xy * r25.zy + float2(0.5,0.5);
                      r26.xy = float2(-0.5,-0.5) + r25.zy;
                      r19.zw = min(r26.xy, r19.zw);
                      r26.x = (uint)r15.w;
                      r26.yz = (uint2)r17.xw;
                      r19.zw = r26.xy + r19.zw;
                      r26.xy = invBcTexSizes.xy * r19.zw;
                      r27.xyz = invBcTexSizes.xyx * r23.zyz;
                      r27.xyz = r27.xyz * r25.xyz;
                      r28.xyz = invBcTexSizes.xyx * r24.zyz;
                      r25.xyz = r28.xyz * r25.xyz;
                      r14.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                    } else {
                      r15.w = (int)r18.y & 4095;
                      if (12 == 0) r17.x = 0; else if (12+12 < 32) {                       r17.x = (uint)r18.y << (32-(12 + 12)); r17.x = (uint)r17.x >> (32-12);                      } else r17.x = (uint)r18.y >> 12;
                      if (10 == 0) r17.w = 0; else if (10+20 < 32) {                       r17.w = (uint)r18.w << (32-(10 + 20)); r17.w = (uint)r17.w >> (32-10);                      } else r17.w = (uint)r18.w >> 20;
                      r25.xz = (uint2)r12.ww;
                      r25.y = (uint)r13.w;
                      r19.zw = r19.xy * r25.zy + float2(0.5,0.5);
                      r26.xy = float2(-0.5,-0.5) + r25.zy;
                      r19.zw = min(r26.xy, r19.zw);
                      r26.x = (uint)r15.w;
                      r26.yz = (uint2)r17.xw;
                      r19.zw = r26.xy + r19.zw;
                      r26.xy = invBcTexSizes.zw * r19.zw;
                      r27.xyz = invBcTexSizes.zwz * r23.zyz;
                      r27.xyz = r27.xyz * r25.xyz;
                      r28.xyz = invBcTexSizes.zwz * r24.zyz;
                      r25.xyz = r28.xyz * r25.xyz;
                      r14.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                    }
                  }
                  r12.w = saturate(1 + -r14.w);
                  r16.xyz = r16.xyz * r12.www;
                }
                r17.xy = (uint2)r17.zy >> int2(16,16);
                if (r17.x != 0) {
                  r12.w = cmp((int)r17.x == 2);
                  if (r12.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(112), t36.xxxx
                  r9.w = samp0[]..swiz;
                    if (4 == 0) r17.z = 0; else if (4+24 < 32) {                     r17.z = (uint)r18.z << (32-(4 + 24)); r17.z = (uint)r17.z >> (32-4);                    } else r17.z = (uint)r18.z >> 24;
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r18.z << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r18.z >> 12;
                    r12.w = 1 << (int)r17.z;
                    r13.w = (uint)r18.z >> 28;
                    r13.w = 1 << (int)r13.w;
                    r14.w = (int)r18.z & 4095;
                    r9.w = (int)r9.w & 1023;
                    r25.xz = (uint2)r12.ww;
                    r25.y = (uint)r13.w;
                    r18.yz = r19.xy * r25.zy + float2(0.5,0.5);
                    r19.zw = float2(-0.5,-0.5) + r25.zy;
                    r18.yz = min(r19.zw, r18.yz);
                    r26.x = (uint)r14.w;
                    r26.y = (uint)r17.w;
                    r17.zw = r26.xy + r18.yz;
                    r26.xy = invMaskTexSizes.xy * r17.zw;
                    r26.z = (uint)r9.w;
                    r27.xyz = invMaskTexSizes.xyx * r23.zyz;
                    r27.xyz = r27.xyz * r25.xyz;
                    r28.xyz = invMaskTexSizes.xyx * r24.zyz;
                    r25.xyz = r28.xyz * r25.xyz;
                    r9.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r26.xyz, r27.x, r25.x).x;
                  } else {
                    r12.w = cmp((int)r17.x == 6);
                    r9.w = r12.w ? 0 : 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = saturate(0.764705896 * r9.w);
                if (r17.y != 0) {
                  r12.w = cmp((int)r17.y == 3);
                  if (r12.w != 0) {
                    if (4 == 0) r17.x = 0; else if (4+24 < 32) {                     r17.x = (uint)r18.x << (32-(4 + 24)); r17.x = (uint)r17.x >> (32-4);                    } else r17.x = (uint)r18.x >> 24;
                    if (12 == 0) r17.y = 0; else if (12+12 < 32) {                     r17.y = (uint)r18.x << (32-(12 + 12)); r17.y = (uint)r17.y >> (32-12);                    } else r17.y = (uint)r18.x >> 12;
                    if (10 == 0) r17.z = 0; else if (10+10 < 32) {                     r17.z = (uint)r18.w << (32-(10 + 10)); r17.z = (uint)r17.z >> (32-10);                    } else r17.z = (uint)r18.w >> 10;
                    r12.w = 1 << (int)r17.x;
                    r13.w = (uint)r18.x >> 28;
                    r13.w = 1 << (int)r13.w;
                    r14.w = (int)r18.x & 4095;
                    r18.xz = (uint2)r12.ww;
                    r18.y = (uint)r13.w;
                    r17.xw = r19.xy * r18.xy + float2(0.5,0.5);
                    r19.xy = float2(-0.5,-0.5) + r18.zy;
                    r17.xw = min(r19.xy, r17.xw);
                    r19.x = (uint)r14.w;
                    r19.yz = (uint2)r17.yz;
                    r17.xy = r19.xy + r17.xw;
                    r19.xy = invMaskTexSizes.zw * r17.xy;
                    r17.xyz = invMaskTexSizes.zwz * r23.xyz;
                    r17.xyz = r17.xyz * r18.xyz;
                    r23.xyz = invMaskTexSizes.zwz * r24.xyz;
                    r18.xyz = r23.xyz * r18.xyz;
                    r17.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r19.xyz, r17.xyz, r18.xyz).xyz;
                  } else {
                    r17.xyz = float3(0.5,0.5,1);
                  }
                  r17.xy = r17.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r12.w = dot(r17.xy, r17.xy);
                  r12.w = 1 + -r12.w;
                  r12.w = max(0, r12.w);
                  r12.w = sqrt(r12.w);
                  r13.w = r17.z * r17.z;
                  r13.w = 0.333333343 * r13.w;
                  r13.w = min(1, r13.w);
                  r14.w = dot(r22.xyz, r22.xyz);
                  r14.w = rsqrt(r14.w);
                  r18.xyz = r22.xyz * r14.www;
                  r14.w = dot(-r21.xyz, -r21.xyz);
                  r14.w = rsqrt(r14.w);
                  r19.xyz = -r21.xyz * r14.www;
                  r20.xyz = r20.xyz * r1.zzz;
                  r18.xyz = r18.xyz * r1.zzz;
                  r19.xyz = r19.xyz * r1.zzz;
                  r14.w = -17 * r9.w;
                  r14.w = exp2(r14.w);
                  r13.w = r14.w + r13.w;
                  r13.w = log2(r13.w);
                  r13.w = -0.0588235296 * r13.w;
                  r9.w = max(0, r13.w);
                  r17.yzw = r19.xyz * r17.yyy;
                  r17.xyz = r18.xyz * r17.xxx + r17.yzw;
                  r17.xyz = r20.xyz * r12.www + r17.xyz;
                  r12.w = dot(r17.xyz, r17.xyz);
                  r12.w = rsqrt(r12.w);
                  r17.xyz = r17.xyz * r12.www;
                  r12.w = 1 + -r11.w;
                  r15.x = r14.x;
                  r18.xyz = r15.xyz * r12.www;
                  r15.xyz = r17.xyz * r11.www + r18.xyz;
                  r14.x = r15.x;
                }
                r12.w = 1 + -r11.w;
                r17.xyz = r12.www * r10.xyz;
                r10.xyz = r16.xyz * r11.www + r17.xyz;
                r13.w = r14.z * r12.w;
                r14.y = r14.y * r12.w + r11.w;
                r14.z = r9.w * r11.w + r13.w;
              }
            }
          }
        }
      }
      r11.xyz = r10.xyz;
      r12.xyz = r14.xzy;
      r13.yz = r15.yz;
      r5.w = (int)r5.w + 32;
    }
    r13.x = r12.x;
    r12.xy = r12.zy;
  } else {
    r11.xyz = float3(0,0,0);
    r13.xyz = float3(0,0,0);
    r12.xy = float2(0,0);
  }
  if (r4.w != 0) {
    r7.xyz = eyeOffset.xyz + v7.xyz;
    r3.w = numDynamicDecals + numStaticDecals;
    r1.w = 0.0078125 * r1.w;
    r1.w = min(15, r1.w);
    r1.w = (uint)r1.w;
    r8.xy = (uint2)r4.xy >> int2(6,6);
    r8.z = (uint)r1.w << 4;
    r1.w = numStaticDecals & -32;
    r4.z = (int)-r1.w + numStaticDecals;
    r4.w = (int)r3.w & -32;
    r5.w = (int)r3.w + (int)-r4.w;
    r9.xy = float2(0,0);
    r10.w = 0;
    r7.w = 1;
    r14.xyz = r11.xyz;
    r15.xyz = r13.xyz;
    r16.xy = r12.xy;
    r6.w = r1.w;
    while (true) {
      r8.w = cmp((uint)r6.w >= (uint)r3.w);
      if (r8.w != 0) break;
      r9.z = (uint)r6.w >> 5;
      r10.xyz = (int3)r8.xyz + (int3)r9.xyz;
      r8.w = visibleDecals.Load(r10.xyzw).x;
      r9.z = cmp((int)r1.w == (int)r6.w);
      bitmask.w = ((~(-1 << r4.z)) << 0) & 0xffffffff;  r9.w = (((uint)0 << 0) & bitmask.w) | ((uint)r8.w & ~bitmask.w);
      r8.w = r9.z ? r9.w : r8.w;
      r9.z = cmp((int)r4.w == (int)r6.w);
      if (r5.w == 0) r9.w = 0; else if (r5.w+0 < 32) {       r9.w = (uint)r8.w << (32-(r5.w + 0)); r9.w = (uint)r9.w >> (32-r5.w);      } else r9.w = (uint)r8.w >> 0;
      r8.w = r9.z ? r9.w : r8.w;
      r9.z = (int)r2.w + (int)r6.w;
      r10.xyz = r14.xyz;
      r17.xyz = r15.xyz;
      r12.zw = r16.xy;
      r9.w = r8.w;
      while (true) {
        if (r9.w == 0) break;
        r11.w = firstbitlow((uint)r9.w);
        r13.w = 1 << (int)r11.w;
        r14.w = (int)r9.w & (int)r13.w;
        if (r14.w != 0) {
          r9.w = (int)r9.w ^ (int)r13.w;
          r13.w = (int)r9.z + (int)r11.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r18.xyzw, r13.w, l(0), t11.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xy, r13.w, l(16), t11.xyxx
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
          r18.xyz = -v7.xyz + r18.xyz;
          r19.z = r18.w;
          r18.xyz = cmp(abs(r18.xyz) < r19.zxy);
          r13.w = r18.y ? r18.x : 0;
          r13.w = r18.z ? r13.w : 0;
          if (r13.w != 0) {
            r11.w = (int)r6.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r11.w, l(0), t36.xyzx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r11.w, l(16), t36.xyzx
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyz, r11.w, l(32), t36.xyzx
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
            r21.x = r18.x;
            r21.y = r19.x;
            r21.z = r20.x;
            r13.w = dot(r21.xyz, r21.xyz);
            r13.w = rsqrt(r13.w);
            r22.xyz = r21.xyz * r13.www;
            r13.w = dot(r22.xyz, v4.xyz);
            r13.w = cmp(r13.w >= 0.5);
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r23.xyw, r11.w, l(48), t36.xyxz
            r23.x = samp0[]..swiz;
            r23.y = samp0[]..swiz;
            r23.w = samp0[]..swiz;
              r21.w = r23.x;
              r21.x = dot(r7.xyzw, r21.xyzw);
              r24.x = r18.y;
              r24.y = r19.y;
              r24.z = r20.y;
              r24.w = r23.y;
              r21.y = dot(r7.xyzw, r24.xyzw);
              r23.x = r18.z;
              r23.y = r19.z;
              r23.z = r20.z;
              r21.z = dot(r7.xyzw, r23.xyzw);
              r18.xyz = cmp(abs(r21.xyz) < float3(1,1,1));
              r13.w = r18.y ? r18.x : 0;
              r13.w = r18.z ? r13.w : 0;
              if (r13.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r11.w, l(64), t36.xyzw
              r18.x = samp0[]..swiz;
              r18.y = samp0[]..swiz;
              r18.z = samp0[]..swiz;
              r18.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r11.w, l(80), t36.xyzw
              r19.x = samp0[]..swiz;
              r19.y = samp0[]..swiz;
              r19.z = samp0[]..swiz;
              r19.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyzw, r11.w, l(96), t36.xyzw
              r20.x = samp0[]..swiz;
              r20.y = samp0[]..swiz;
              r20.z = samp0[]..swiz;
              r20.w = samp0[]..swiz;
                r25.x = dot(r5.xyz, r24.xyz);
                r25.y = dot(r5.xyz, r23.xyz);
                r26.x = dot(r6.xyz, r24.xyz);
                r26.y = dot(r6.xyz, r23.xyz);
                r16.zw = r21.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r21.xyz = float3(0.5,-0.5,0.5) * r25.xyx;
                r25.xyz = float3(0.5,-0.5,0.5) * r26.xyx;
                r26.xy = (int2)r19.yz & int2(65535,65535);
                if (r26.x != 0) {
                  if (4 == 0) r13.w = 0; else if (4+24 < 32) {                   r13.w = (uint)r19.w << (32-(4 + 24)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r19.w >> 24;
                  r13.w = 1 << (int)r13.w;
                  r14.w = (uint)r19.w >> 28;
                  r14.w = 1 << (int)r14.w;
                  r15.w = cmp((int)r26.x == 4);
                  if (r15.w != 0) {
                    r15.w = (int)r19.w & 4095;
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r19.w << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r19.w >> 12;
                    r21.w = (int)r20.w & 1023;
                    r27.xz = (uint2)r13.ww;
                    r27.y = (uint)r14.w;
                    r26.zw = r16.zw * r27.zy + float2(0.5,0.5);
                    r28.xy = float2(-0.5,-0.5) + r27.zy;
                    r26.zw = min(r28.xy, r26.zw);
                    r28.x = (uint)r15.w;
                    r28.y = (uint)r17.w;
                    r26.zw = r28.xy + r26.zw;
                    r28.xy = invBcTexSizes.xy * r26.zw;
                    r28.z = (uint)r21.w;
                    r29.xyz = invBcTexSizes.xyx * r21.zyz;
                    r29.xyz = r29.xyz * r27.xyz;
                    r30.xyz = invBcTexSizes.xyx * r25.zyz;
                    r27.xyz = r30.xyz * r27.xyz;
                    r27.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.xyzx, r27.xyzx).xyzw;
                  } else {
                    r15.w = cmp((int)r26.x == 1);
                    if (r15.w != 0) {
                      r15.w = (int)r19.w & 4095;
                      if (12 == 0) r17.w = 0; else if (12+12 < 32) {                       r17.w = (uint)r19.w << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                      } else r17.w = (uint)r19.w >> 12;
                      r19.w = (int)r20.w & 1023;
                      r28.xz = (uint2)r13.ww;
                      r28.y = (uint)r14.w;
                      r26.xz = r16.zw * r28.zy + float2(0.5,0.5);
                      r29.xy = float2(-0.5,-0.5) + r28.zy;
                      r26.xz = min(r29.xy, r26.xz);
                      r29.x = (uint)r15.w;
                      r29.y = (uint)r17.w;
                      r26.xz = r29.xy + r26.xz;
                      r29.xy = invBcTexSizes.zw * r26.xz;
                      r29.z = (uint)r19.w;
                      r26.xzw = invBcTexSizes.zwz * r21.zyz;
                      r26.xzw = r26.xzw * r28.xyz;
                      r30.xyz = invBcTexSizes.zwz * r25.zyz;
                      r28.xyz = r30.xyz * r28.xyz;
                      r27.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r29.xyz, r26.xzwx, r28.xyzx).xyzw;
                    } else {
                      r27.xyzw = float4(1,1,1,1);
                    }
                  }
                  r18.xyz = r27.xyz * r18.xyz;
                  r13.w = r27.w * r18.w;
                } else {
                  r18.xyz = float3(0,0,0);
                  r13.w = 0;
                }
                r14.w = cmp(r19.x != 1.000000);
                r15.w = r13.w + r18.w;
                r15.w = saturate(r15.w * r19.x + -r19.x);
                r13.w = r14.w ? r15.w : r13.w;
                if (r26.y != 0) {
                  if (4 == 0) r14.w = 0; else if (4+24 < 32) {                   r14.w = (uint)r20.y << (32-(4 + 24)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r20.y >> 24;
                  r14.w = 1 << (int)r14.w;
                  r15.w = (uint)r20.y >> 28;
                  r15.w = 1 << (int)r15.w;
                  r17.w = cmp((int)r26.y == 2);
                  if (r17.w != 0) {
                    r17.w = (int)r20.y & 4095;
                    if (12 == 0) r19.x = 0; else if (12+12 < 32) {                     r19.x = (uint)r20.y << (32-(12 + 12)); r19.x = (uint)r19.x >> (32-12);                    } else r19.x = (uint)r20.y >> 12;
                    if (10 == 0) r19.w = 0; else if (10+20 < 32) {                     r19.w = (uint)r20.w << (32-(10 + 20)); r19.w = (uint)r19.w >> (32-10);                    } else r19.w = (uint)r20.w >> 20;
                    r27.xz = (uint2)r14.ww;
                    r27.y = (uint)r15.w;
                    r26.xz = r16.zw * r27.zy + float2(0.5,0.5);
                    r28.xy = float2(-0.5,-0.5) + r27.zy;
                    r26.xz = min(r28.xy, r26.xz);
                    r28.x = (uint)r17.w;
                    r28.yz = (uint2)r19.xw;
                    r26.xz = r28.xy + r26.xz;
                    r28.xy = invMaskTexSizes.xy * r26.xz;
                    r26.xzw = invMaskTexSizes.xyx * r21.zyz;
                    r26.xzw = r26.xzw * r27.xyz;
                    r29.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r27.xyz = r29.xyz * r27.xyz;
                    r17.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r28.xyz, r26.x, r27.x).x;
                  } else {
                    r18.w = cmp((int)r26.y == 4);
                    if (r18.w != 0) {
                      r18.w = (int)r20.y & 4095;
                      if (12 == 0) r19.x = 0; else if (12+12 < 32) {                       r19.x = (uint)r20.y << (32-(12 + 12)); r19.x = (uint)r19.x >> (32-12);                      } else r19.x = (uint)r20.y >> 12;
                      if (10 == 0) r19.w = 0; else if (10+20 < 32) {                       r19.w = (uint)r20.w << (32-(10 + 20)); r19.w = (uint)r19.w >> (32-10);                      } else r19.w = (uint)r20.w >> 20;
                      r26.xz = (uint2)r14.ww;
                      r26.y = (uint)r15.w;
                      r27.xy = r16.zw * r26.zy + float2(0.5,0.5);
                      r27.zw = float2(-0.5,-0.5) + r26.zy;
                      r27.xy = min(r27.xy, r27.zw);
                      r28.x = (uint)r18.w;
                      r28.y = (uint)r19.x;
                      r27.xy = r28.xy + r27.xy;
                      r27.xy = invBcTexSizes.xy * r27.xy;
                      r27.z = (uint)r19.w;
                      r28.xyz = invBcTexSizes.xyx * r21.zyz;
                      r28.xyz = r28.xyz * r26.xyz;
                      r29.xyz = invBcTexSizes.xyx * r25.zyz;
                      r26.xyz = r29.xyz * r26.xyz;
                      r17.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                    } else {
                      r18.w = (int)r20.y & 4095;
                      if (12 == 0) r19.x = 0; else if (12+12 < 32) {                       r19.x = (uint)r20.y << (32-(12 + 12)); r19.x = (uint)r19.x >> (32-12);                      } else r19.x = (uint)r20.y >> 12;
                      if (10 == 0) r19.w = 0; else if (10+20 < 32) {                       r19.w = (uint)r20.w << (32-(10 + 20)); r19.w = (uint)r19.w >> (32-10);                      } else r19.w = (uint)r20.w >> 20;
                      r26.xz = (uint2)r14.ww;
                      r26.y = (uint)r15.w;
                      r27.xy = r16.zw * r26.zy + float2(0.5,0.5);
                      r27.zw = float2(-0.5,-0.5) + r26.zy;
                      r27.xy = min(r27.xy, r27.zw);
                      r28.x = (uint)r18.w;
                      r28.y = (uint)r19.x;
                      r27.xy = r28.xy + r27.xy;
                      r27.xy = invBcTexSizes.zw * r27.xy;
                      r27.z = (uint)r19.w;
                      r28.xyz = invBcTexSizes.zwz * r21.zyz;
                      r28.xyz = r28.xyz * r26.xyz;
                      r29.xyz = invBcTexSizes.zwz * r25.zyz;
                      r26.xyz = r29.xyz * r26.xyz;
                      r17.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                    }
                  }
                  r14.w = saturate(1 + -r17.w);
                  r18.xyz = r18.xyz * r14.www;
                }
                r19.xy = (uint2)r19.zy >> int2(16,16);
                if (r19.x != 0) {
                  r14.w = cmp((int)r19.x == 2);
                  if (r14.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(112), t36.xxxx
                  r11.w = samp0[]..swiz;
                    if (4 == 0) r19.z = 0; else if (4+24 < 32) {                     r19.z = (uint)r20.z << (32-(4 + 24)); r19.z = (uint)r19.z >> (32-4);                    } else r19.z = (uint)r20.z >> 24;
                    if (12 == 0) r19.w = 0; else if (12+12 < 32) {                     r19.w = (uint)r20.z << (32-(12 + 12)); r19.w = (uint)r19.w >> (32-12);                    } else r19.w = (uint)r20.z >> 12;
                    r14.w = 1 << (int)r19.z;
                    r15.w = (uint)r20.z >> 28;
                    r15.w = 1 << (int)r15.w;
                    r17.w = (int)r20.z & 4095;
                    r11.w = (int)r11.w & 1023;
                    r26.xz = (uint2)r14.ww;
                    r26.y = (uint)r15.w;
                    r20.yz = r16.zw * r26.zy + float2(0.5,0.5);
                    r27.xy = float2(-0.5,-0.5) + r26.zy;
                    r20.yz = min(r27.xy, r20.yz);
                    r27.x = (uint)r17.w;
                    r27.y = (uint)r19.w;
                    r19.zw = r27.xy + r20.yz;
                    r27.xy = invMaskTexSizes.xy * r19.zw;
                    r27.z = (uint)r11.w;
                    r28.xyz = invMaskTexSizes.xyx * r21.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invMaskTexSizes.xyx * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r11.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  } else {
                    r14.w = cmp((int)r19.x == 6);
                    r11.w = r14.w ? 0 : 1;
                  }
                } else {
                  r11.w = 1;
                }
                r11.w = saturate(0.764705896 * r11.w);
                if (r19.y != 0) {
                  r14.w = cmp((int)r19.y == 3);
                  if (r14.w != 0) {
                    if (4 == 0) r19.x = 0; else if (4+24 < 32) {                     r19.x = (uint)r20.x << (32-(4 + 24)); r19.x = (uint)r19.x >> (32-4);                    } else r19.x = (uint)r20.x >> 24;
                    if (12 == 0) r19.y = 0; else if (12+12 < 32) {                     r19.y = (uint)r20.x << (32-(12 + 12)); r19.y = (uint)r19.y >> (32-12);                    } else r19.y = (uint)r20.x >> 12;
                    if (10 == 0) r19.z = 0; else if (10+10 < 32) {                     r19.z = (uint)r20.w << (32-(10 + 10)); r19.z = (uint)r19.z >> (32-10);                    } else r19.z = (uint)r20.w >> 10;
                    r14.w = 1 << (int)r19.x;
                    r15.w = (uint)r20.x >> 28;
                    r15.w = 1 << (int)r15.w;
                    r17.w = (int)r20.x & 4095;
                    r20.xz = (uint2)r14.ww;
                    r20.y = (uint)r15.w;
                    r16.zw = r16.zw * r20.xy + float2(0.5,0.5);
                    r19.xw = float2(-0.5,-0.5) + r20.zy;
                    r16.zw = min(r19.xw, r16.zw);
                    r26.x = (uint)r17.w;
                    r26.yz = (uint2)r19.yz;
                    r16.zw = r26.xy + r16.zw;
                    r26.xy = invMaskTexSizes.zw * r16.zw;
                    r19.xyz = invMaskTexSizes.zwz * r21.xyz;
                    r19.xyz = r19.xyz * r20.xyz;
                    r21.xyz = invMaskTexSizes.zwz * r25.xyz;
                    r20.xyz = r21.xyz * r20.xyz;
                    r19.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r26.xyz, r19.xyz, r20.xyz).xyz;
                  } else {
                    r19.xyz = float3(0.5,0.5,1);
                  }
                  r16.zw = r19.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                  r14.w = dot(r16.zw, r16.zw);
                  r14.w = 1 + -r14.w;
                  r14.w = max(0, r14.w);
                  r14.w = sqrt(r14.w);
                  r15.w = r19.z * r19.z;
                  r15.w = 0.333333343 * r15.w;
                  r15.w = min(1, r15.w);
                  r17.w = dot(r24.xyz, r24.xyz);
                  r17.w = rsqrt(r17.w);
                  r19.xyz = r24.xyz * r17.www;
                  r17.w = dot(-r23.xyz, -r23.xyz);
                  r17.w = rsqrt(r17.w);
                  r20.xyz = -r23.xyz * r17.www;
                  r21.xyz = r22.xyz * r1.zzz;
                  r19.xyz = r19.xyz * r1.zzz;
                  r20.xyz = r20.xyz * r1.zzz;
                  r17.w = -17 * r11.w;
                  r17.w = exp2(r17.w);
                  r15.w = r17.w + r15.w;
                  r15.w = log2(r15.w);
                  r15.w = -0.0588235296 * r15.w;
                  r11.w = max(0, r15.w);
                  r20.xyz = r20.xyz * r16.www;
                  r19.xyz = r19.xyz * r16.zzz + r20.xyz;
                  r19.xyz = r21.xyz * r14.www + r19.xyz;
                  r14.w = dot(r19.xyz, r19.xyz);
                  r14.w = rsqrt(r14.w);
                  r19.xyz = r19.xyz * r14.www;
                  r14.w = 1 + -r13.w;
                  r20.xyz = r17.xyz * r14.www;
                  r17.xyz = r19.xyz * r13.www + r20.xyz;
                }
                r14.w = 1 + -r13.w;
                r19.xyz = r14.www * r10.xyz;
                r10.xyz = r18.xyz * r13.www + r19.xyz;
                r15.w = r14.w * r12.w;
                r12.z = r12.z * r14.w + r13.w;
                r12.w = r11.w * r13.w + r15.w;
              }
            }
          }
        }
      }
      r14.xyz = r10.xyz;
      r15.xyz = r17.xyz;
      r16.xy = r12.zw;
      r6.w = (int)r6.w + 32;
    }
    r11.xyz = r14.xyz;
    r13.xyz = r15.xyz;
    r12.xy = r16.xy;
  }
  r12.x = saturate(r12.x);
  r1.z = 1 + -r12.x;
  o2.xyz = r0.xyz * r1.zzz + r11.xyz;
  r0.x = r0.w * r1.z + r12.x;
  r0.yzw = r2.xyz * r1.zzz + r13.xyz;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r2.xyz = r1.www * r0.yzw;
  r5.y = r1.x * r1.z + r12.y;
  r1.x = log2(abs(r1.y));
  r6.xyz = float3(0.600000024,0.850000024,0.870000005) * r1.xxx;
  r6.xyz = exp2(r6.xyz);
  r1.x = viewMatrix._m12 * v7.y;
  r1.x = v7.x * viewMatrix._m02 + r1.x;
  r1.x = v7.z * viewMatrix._m22 + r1.x;
  r1.z = dot(-v7.xyz, -v7.xyz);
  r1.z = rsqrt(r1.z);
  r7.xyz = -v7.xyz * r1.zzz;
  r2.w = cmp(isDepthHack != 0);
  r4.zw = (uint2)r4.yx;
  r3.w = dot(r4.wz, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r8.x, r9.x);
  r3.w = dot(r4.zw, float2(0.0671105608,0.00583714992));
  r3.w = frac(r3.w);
  r3.w = 52.9829178 * r3.w;
  r3.w = frac(r3.w);
  r3.w = r3.w * 6.28318548 + gameTick.w;
  sincos(r3.w, r10.x, r11.x);
  r3.w = saturate(dot(r2.xyz, r7.xyz));
  r4.z = dot(-r7.xyz, r2.xyz);
  r4.z = r4.z + r4.z;
  r10.yzw = r2.xyz * -r4.zzz + -r7.xyz;
  r4.z = 17 * r5.y;
  r4.z = exp2(r4.z);
  r4.z = 2 + r4.z;
  r4.z = 2 / r4.z;
  r4.w = sqrt(r4.z);
  r11.yzw = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r11.yzw = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r11.yzw;
  r11.yzw = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r11.yzw;
  r11.yzw = viewProjectionMatrix._m30_m31_m33 + r11.yzw;
  r12.xyz = eyeOffset.xyz + v7.xyz;
  r5.z = sqrt(r4.w);
  r5.z = r5.z * 0.5 + 0.5;
  r5.z = r5.z * r5.z;
  r5.w = 0.5 * r5.z;
  r5.z = -r5.z * 0.5 + 1;
  r6.w = r3.w * r5.z + r5.w;
  r5.zw = r6.ww * r5.zw;
  r6.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r7.w = cmp(0 >= abs(r6.w));
  if (r7.w != 0) {
    r13.y = 0;
  }
  if (r7.w == 0) {
    r14.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r14.xyz = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r14.xyz;
    r14.xyz = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r14.xyz;
    r14.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r14.xyz;
    r7.w = -sunConstants.splitDepthOffset + r14.z;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r8.z = saturate(r7.w);
    r8.z = cmp(r7.w == r8.z);
    if (r8.z != 0) {
      r8.zw = float2(0,0);
      while (true) {
        r9.w = cmp(r8.z >= 3);
        if (r9.w != 0) break;
        r9.w = (uint)r8.z;
        r13.zw = -sunConstants.splitPinTransform[r9.w].xy + r14.xy;
        r13.z = max(abs(r13.z), abs(r13.w));
        r8.w = sunConstants.splitPinTransform[r9.w].z * r13.z;
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
      r15.xyz = r14.xyx * r16.xyz + r15.yzy;
      r16.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r15.xyz = min(r15.xyz, r16.xyz);
      r13.zw = sunConstants.sstLightingConstants.coordScale * r15.zy;
      r13.zw = floor(r13.zw);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.w;
      r13.z = r13.w * sunConstants.sstLightingConstants.coordScale + r13.z;
      r13.z = (uint)r13.z;
      r13.z = (int)r13.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r14.w = (int)r13.w & 0x40000000;
      r15.w = (uint)r13.w << 2;
      if (r14.w == 0) {
        r14.w = (int)r13.w & 0x01ffffff;
        r16.x = (int)r13.z + (int)r14.w;
        r13.z = (uint)r13.w >> 25;
        r13.z = (uint)r13.z;
        r15.xyz = r15.xyz * r13.zzz;
        r15.xyz = frac(r15.xyz);
        r15.xyz = float3(128,128,128) * r15.xyz;
        r15.xyz = (uint3)r15.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r13.zw = (uint2)r15.zy >> int2(6,6);
        r14.w = (int)r16.z & 0xc0000000;
        r16.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r13.w = r13.w ? r16.z : r16.w;
        r16.w = (uint)r13.w >> 13;
        r13.z = r13.z ? r16.w : r13.w;
        r13.z = (int)r13.z & 8191;
        r17.x = (int)r13.z + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r16.y = 0;
        r17.y = 1;
        r17.xyz = r14.www ? r16.xyz : r17.xyz;
        r18.yz = r14.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.zw = (uint2)r15.zy >> (uint2)r18.yy;
        r13.zw = (int2)r13.zw & int2(1,1);
        r16.w = (int)r17.z & 0xc0000000;
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
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r17.xyz = r16.www ? r17.xyz : r18.xzw;
        r16.xyz = r14.www ? r16.xyz : r17.xyz;
        r13.z = (int)r16.z & 0xc0000000;
        if (r13.z == 0) {
          r13.z = (int)-r16.y + 6;
          r13.zw = (uint2)r15.zy >> (uint2)r13.zz;
          r14.w = (int)r16.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r14.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r17.x = (int)r13.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r16.yy + int2(1,2);
          r13.z = (int)-r17.y + 6;
          r13.zw = (uint2)r15.zy >> (uint2)r13.zz;
          r14.w = (int)r17.w & 0xc0000000;
          r16.y = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r16.y >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r18.x = (int)r13.z + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r14.www ? r17.xyw : r18.xyz;
          r13.z = (int)-r18.y + 6;
          r13.zw = (uint2)r15.zy >> (uint2)r13.zz;
          r16.y = (int)r18.z & 0xc0000000;
          r16.w = (int)r18.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r13.z << 0) & bitmask.z) | ((uint)r13.w & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r13.z = (uint)r16.w >> (uint)r13.z;
          r13.z = (int)r13.z & 1023;
          r19.x = (int)r13.z + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r13.zw = r16.yy ? r18.xz : r19.xy;
          r16.xz = r14.ww ? r17.xw : r13.zw;
        }
        r13.z = (int)r16.z & 0xc0000000;
        if (r13.z == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r16.z << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r16.z >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r16.yw = (int2)r16.zz & int2(32767,536870912);
          r14.w = (uint)r16.y;
          r14.w = sunConstants.sstLightingConstants.constants.spanInInches * r14.w;
          r14.w = 3.05185094e-05 * r14.w;
          r16.y = (int)r15.y & 3;
          r16.y = (int)r16.y + (int)r16.x;
          r16.y = (int)r16.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r17.x = (((uint)r15.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r17.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r17.z = (((uint)r15.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r15.x = (uint)r16.y >> (uint)r17.x;
          r15.x = (int)r15.x & 255;
          r15.x = (uint)r15.x;
          r15.x = r15.x * r14.w;
          r15.x = r15.x * 0.00392156886 + r13.w;
          r15.y = (int)r17.y + 1;
          if (1 == 0) r15.z = 0; else if (1+1 < 32) {           r15.z = (uint)r15.z << (32-(1 + 1)); r15.z = (uint)r15.z >> (32-1);          } else r15.z = (uint)r15.z >> 1;
          r15.y = (int)r15.z + (int)r15.y;
          r15.y = (int)r15.y + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r15.y = (uint)r15.y >> (uint)r17.z;
          r15.y = (int)r15.y & 0x0000ffff;
          r15.y = (uint)r15.y;
          r14.w = r15.y * r14.w;
          r13.w = r14.w * 1.52590219e-05 + r13.w;
          r15.w = r16.w ? r15.x : r13.w;
        } else {
          r13.w = (int)r16.z & 0x80000000;
          r14.w = (int)r16.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r13.w = r13.w ? r14.w : 0;
          r14.w = (uint)r16.z << 2;
          r15.x = (uint)r13.w >> 16;
          r15.x = f16tof32(r15.x);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r14.w = r14.x * r15.x + r14.w;
          r13.w = r14.y * r13.w + r14.w;
          r15.w = r13.z ? r13.w : r15.w;
        }
      }
      r13.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r14.z;
      r13.z = cmp(r15.w < r13.z);
      r13.y = r13.z ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.z;
        r13.zw = -sunConstants.splitPinTransform[r9.w].xy + r14.xy;
        r13.zw = sunConstants.splitPinTransform[r9.w].zz * r13.zw;
        r15.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r9.w + r8.z;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r7.w).x;
        r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r9.w = r13.z + r9.w;
        r9.w = saturate(-1 + r9.w);
        r13.z = r9.w * r9.w;
        r13.y = r13.z * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r8.x;
        r9.w = (uint)r8.z;
        r8.z = 1 + r8.z;
        r8.z = min(2, r8.z);
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.zw = (uint2)r8.zw;
        r13.zw = -sunConstants.splitPinTransform[r9.w].xy + r14.xy;
        r13.zw = sunConstants.splitPinTransform[r9.w].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.xy = -sunConstants.splitPinTransform[r8.z].xy + r14.xy;
        r14.xy = sunConstants.splitPinTransform[r8.z].zz * r14.xy;
        r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r9.x;
        r15.z = r8.x;
        r14.zw = float2(0,0);
        while (true) {
          r15.w = cmp((uint)r14.w >= 8);
          if (r15.w != 0) break;
          r15.w = cmp((uint)r8.w < (uint)r14.w);
          r16.xy = r15.ww ? r14.xy : r13.zw;
          r16.z = r15.w ? sunConstants.splitPinTransform[r8.z].w : sunConstants.splitPinTransform[r9.w].w;
          r15.w = r15.w ? r8.z : r9.w;
          r17.x = dot(icb[r14.w+0].yx, r15.xy);
          r17.y = dot(icb[r14.w+0].yx, r15.yz);
          r16.xy = r17.xy * r16.zz + r16.xy;
          r15.w = (int)r15.w + (int16)sunConstants.splitArrayOffset;
          r16.z = (uint)r15.w;
          r15.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
          r16.x = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
          r15.w = r16.x + r15.w;
          r15.w = saturate(-1 + r15.w);
          r14.z = r15.w * 0.125 + r14.z;
          r14.w = (int)r14.w + 1;
        }
        r7.w = r14.z * r14.z;
        r13.y = r7.w * r14.z;
      }
    }
  }
  r7.w = cmp(0 < abs(r6.w));
  if (r7.w != 0) {
    r7.w = cmp(0 < r13.y);
    if (r7.w != 0) {
      r7.w = sunConstants.specScale * r4.z;
      r7.w = 0.25 * r7.w;
      if (sunConstants.sunCookieIndex != 0) {
        r12.w = 1;
        r8.z = dot(sunConstants.sunCookieTransform[0].xyzw, r12.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r12.xyzw);
        r14.xy = frac(r8.zw);
        r8.z = -1 + (int14)sunConstants.sunCookieIndex;
        r14.z = (uint)r8.z;
        r14.xyz = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
        r14.xyz = float3(-1,-1,-1) + r14.xyz;
        r14.xyz = sunConstants.sunCookieIntensity * r14.xyz + float3(1,1,1);
        r14.xyz = sunConstants.color.xyz * r14.xyz;
      } else {
        r14.xyz = sunConstants.color.xyz;
      }
      r8.z = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r8.z);
      r8.w = r2.w ? r8.w : 0;
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
        r12.w = cmp(r6.w < 0);
        r9.w = r12.w ? -r9.w : r9.w;
        r19.xyz = r2.xyz * r9.www + v7.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r13.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.zw = r13.zw + r18.zw;
        r13.zw = r13.zw * r18.xy;
        r15.xy = r8.ww / r17.xz;
        r15.zw = float2(1,1) + -r15.xy;
        r15.zw = cmp(r13.zw >= r15.zw);
        r15.xy = cmp(r15.xy >= r13.zw);
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
          r13.zw = saturate(r13.zw);
          r15.xy = r13.zw * r17.xz + r17.yw;
          r8.z = r8.z + r16.x;
          r8.z = r8.z / r16.y;
          r8.z = max(6.10351563e-05, r8.z);
          r9.w = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r16.x = -r8.x;
            r17.z = (uint)r9.w;
            r16.y = r9.x;
            r16.z = r8.x;
            r12.w = 0;
            r13.z = 0;
            while (true) {
              r13.w = cmp((int)r13.z >= 8);
              if (r13.w != 0) break;
              r18.x = dot(icb[r13.z+0].yx, r16.xy);
              r18.y = dot(icb[r13.z+0].yx, r16.yz);
              r17.xy = r18.xy * r8.ww + r15.xy;
              r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.z).x;
              r12.w = r13.w * 0.125 + r12.w;
              r13.z = (int)r13.z + 1;
            }
          } else {
            r15.z = (uint)r9.w;
            r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.z).x;
          }
          r8.z = r12.w * r12.w;
          r8.z = r8.z * r12.w;
        } else {
          r8.z = 1;
        }
        r13.y = r13.y * r8.z;
      } else {
        r8.z = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r8.z);
        r9.w = ~(int)r2.w;
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
          r12.w = cmp(r6.w < 0);
          r9.w = r12.w ? -r9.w : r9.w;
          r19.xyz = r2.xyz * r9.www + v7.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r13.zw = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r13.zw = r13.zw + r18.zw;
          r13.zw = r13.zw * r18.xy;
          r15.xy = r8.ww / r17.xz;
          r15.zw = float2(1,1) + -r15.xy;
          r15.zw = cmp(r13.zw >= r15.zw);
          r15.xy = cmp(r15.xy >= r13.zw);
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
            r13.zw = saturate(r13.zw);
            r15.xy = r13.zw * r17.xz + r17.yw;
            r8.z = r8.z + r16.x;
            r8.z = r8.z / r16.y;
            r8.z = max(6.10351563e-05, r8.z);
            r9.w = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r16.x = -r8.x;
              r17.z = (uint)r9.w;
              r16.y = r9.x;
              r16.z = r8.x;
              r12.w = 0;
              r13.z = 0;
              while (true) {
                r13.w = cmp((int)r13.z >= 8);
                if (r13.w != 0) break;
                r18.x = dot(icb[r13.z+0].yx, r16.xy);
                r18.y = dot(icb[r13.z+0].yx, r16.yz);
                r17.xy = r18.xy * r8.ww + r15.xy;
                r13.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r8.z).x;
                r12.w = r13.w * 0.125 + r12.w;
                r13.z = (int)r13.z + 1;
              }
            } else {
              r15.z = (uint)r9.w;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r8.z).x;
            }
            r8.z = r12.w * r12.w;
            r8.z = r8.z * r12.w;
          } else {
            r8.z = 1;
          }
          r13.y = r13.y * r8.z;
        }
      }
      r8.z = -r3.w * 0.5 + 1;
      r8.z = -abs(r6.w) * r8.z + 1;
      r8.z = r8.z * r8.z;
      r8.z = -r8.z * 0.620000005 + 0.620000005;
      r8.z = r8.z + -abs(r6.w);
      r8.z = r4.w * r8.z + abs(r6.w);
      r8.w = cmp(0 < r6.w);
      r6.w = saturate(r6.w);
      r15.xyz = -v7.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r1.z = dot(r15.xyz, r15.xyz);
      r1.z = rsqrt(r1.z);
      r15.xyz = r15.xyz * r1.zzz;
      r1.z = dot(r15.xyz, r7.xyz);
      r9.w = dot(r2.xyz, r15.xyz);
      r12.w = abs(r9.w) * r4.z + -abs(r9.w);
      r9.w = abs(r9.w) * r12.w + 1;
      r12.w = r6.w * r5.z + r5.w;
      r9.w = r9.w * r9.w;
      r9.w = r9.w * r12.w;
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
      r13.zw = r8.ww ? r1.zz : 0;
      r16.xyz = r8.www ? r6.www : 0;
      r1.z = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r1.z = r13.y * r1.z;
      r13.x = 1;
      r6.w = sunConstants.wldDir.x;
      r8.zw = sunConstants.wldDir.yz;
      r17.xy = r7.ww;
      r9.w = r13.w;
    } else {
      r1.z = 0;
      r14.xyz = float3(0,0,0);
      r6.w = 0;
      r8.zw = float2(0,0);
      r17.xy = float2(0,0);
      r15.xyz = float3(0,0,0);
      r7.w = 0;
      r16.xyz = float3(0,0,0);
      r9.w = 0;
      r13.xyzw = float4(0,0,0,0);
    }
  } else {
    r1.z = 0;
    r14.xyz = float3(0,0,0);
    r6.w = 0;
    r8.zw = float2(0,0);
    r17.xy = float2(0,0);
    r15.xyz = float3(0,0,0);
    r7.w = 0;
    r16.xyz = float3(0,0,0);
    r9.w = 0;
    r13.xyzw = float4(0,0,0,0);
  }
  r1.x = 0.0078125 * r1.x;
  r1.x = max(0, r1.x);
  r1.x = min(15, r1.x);
  r1.x = (uint)r1.x;
  r18.xy = (uint2)r4.xy >> int2(6,6);
  r18.z = (uint)r1.x << 4;
  r1.x = ~(int)r2.w;
  r3.w = -r3.w * 0.5 + 1;
  r19.x = -r8.x;
  r20.xy = float2(0,0);
  r21.w = 0;
  r22.xyz = v7.xyz;
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
  r36.xyz = r14.xyz;
  r37.x = r6.w;
  r37.yz = r8.zw;
  r38.xy = r17.xy;
  r38.z = r7.w;
  r39.xyz = r15.xyz;
  r40.xyz = r16.xyz;
  r41.x = r9.w;
  r41.yz = r13.zw;
  r4.x = enableDitheredShadow;
  r4.y = r1.z;
  r17.zw = r13.xy;
  r12.w = 0;
  while (true) {
    r14.w = cmp((uint)r12.w >= numLights);
    if (r14.w != 0) break;
    r20.z = (uint)r12.w >> 5;
    r21.xyz = (int3)r18.xyz + (int3)r20.xyz;
    r14.w = visibleLights.Load(r21.xyzw).x;
    r21.xyz = r32.xyz;
    r42.xyz = r33.xyz;
    r43.xyz = r34.xyz;
    r44.xyz = r35.xyz;
    r45.xyz = r36.xyz;
    r46.xyz = r37.xyz;
    r47.xyz = r38.xyz;
    r48.xyz = r40.xyz;
    r49.xyz = r41.xyz;
    r20.zw = r17.zw;
    r15.w = r4.x;
    r16.w = r4.y;
    r50.xyz = r39.xyz;
    r18.w = r14.w;
    while (true) {
      if (r18.w == 0) break;
      r25.w = firstbitlow((uint)r18.w);
      r29.w = 1 << (int)r25.w;
      r30.w = (int)r18.w & (int)r29.w;
      if (r30.w != 0) {
        r18.w = (int)r18.w ^ (int)r29.w;
        r25.w = (int)r12.w + (int)r25.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r51.xyzw, r25.w, l(0), t11.xyzw
      r51.x = samp0[]..swiz;
      r51.y = samp0[]..swiz;
      r51.z = samp0[]..swiz;
      r51.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r52.xy, r25.w, l(16), t11.xyxx
      r52.x = samp0[]..swiz;
      r52.y = samp0[]..swiz;
        r51.xyz = -v7.xyz + r51.xyz;
        r52.z = r51.w;
        r51.xyz = cmp(abs(r51.xyz) < r52.zxy);
        r29.w = r51.y ? r51.x : 0;
        r29.w = r51.z ? r29.w : 0;
        if (r29.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r25.w, l(0), t12.wxyz
        r51.x = samp0[]..swiz;
        r51.y = samp0[]..swiz;
        r51.z = samp0[]..swiz;
        r51.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r25.w, l(16), t12.zxyw
        r52.x = samp0[]..swiz;
        r52.y = samp0[]..swiz;
        r52.z = samp0[]..swiz;
        r52.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r25.w, l(32), t12.xyzw
        r53.x = samp0[]..swiz;
        r53.y = samp0[]..swiz;
        r53.z = samp0[]..swiz;
        r53.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r25.w, l(48), t12.xyzw
        r54.x = samp0[]..swiz;
        r54.y = samp0[]..swiz;
        r54.z = samp0[]..swiz;
        r54.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r25.w, l(64), t12.yzwx
        r55.x = samp0[]..swiz;
        r55.y = samp0[]..swiz;
        r55.z = samp0[]..swiz;
        r55.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r25.w, l(80), t12.xyzw
        r56.x = samp0[]..swiz;
        r56.y = samp0[]..swiz;
        r56.z = samp0[]..swiz;
        r56.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r25.w, l(96), t12.yzwx
        r57.x = samp0[]..swiz;
        r57.y = samp0[]..swiz;
        r57.z = samp0[]..swiz;
        r57.w = samp0[]..swiz;
          if (3 == 0) r29.w = 0; else if (3+24 < 32) {           r29.w = (uint)r52.w << (32-(3 + 24)); r29.w = (uint)r29.w >> (32-3);          } else r29.w = (uint)r52.w >> 24;
          switch (r29.w) {
            case 4 :            r29.w = cmp(0 < r57.x);
            r58.xy = r56.zw;
            r58.z = r57.w;
            r59.xyz = -r58.xyz * float3(0.5,0.5,0.5) + r51.yzw;
            r60.xyz = -v7.xyz + r59.xyz;
            r30.w = dot(r58.xyz, r60.xyz);
            r31.w = saturate(-r30.w / r57.x);
            r61.xyz = r31.www * r58.xyz + r59.xyz;
            r61.xyz = r29.www ? r61.xyz : r51.yzw;
            r61.xyz = -v7.xyz + r61.xyz;
            r32.w = dot(r61.xyz, r61.xyz);
            r33.w = rsqrt(r32.w);
            r61.xyz = r61.xyz * r33.www;
            r33.w = dot(r2.xyz, r61.xyz);
            r34.w = cmp(0 < abs(r33.w));
            if (r34.w != 0) {
              r34.w = sqrt(r32.w);
              r35.w = r54.x * r54.x;
              r32.w = r35.w / r32.w;
              r32.w = min(1, r32.w);
              r62.xy = saturate(r34.ww * r53.xz + r53.yw);
              r62.zw = r62.xy * r62.xy;
              r62.xy = r62.xy * float2(-2,-2) + float2(3,3);
              r62.xy = r62.zw * r62.xy;
              r32.w = r62.x * r32.w;
              r62.x = r32.w * r62.y;
              r32.w = cmp(0 < r62.x);
              if (r32.w != 0) {
                if (3 == 0) r32.w = 0; else if (3+27 < 32) {                 r32.w = (uint)r52.w << (32-(3 + 27)); r32.w = (uint)r32.w >> (32-3);                } else r32.w = (uint)r52.w >> 27;
                r32.w = cmp((int)r32.w != 1);
                if (r32.w != 0) {
                  r32.w = abs(r33.w) * -0.200000003 + 0.400000006;
                  r34.w = cmp(r33.w < 0);
                  r32.w = r34.w ? -r32.w : r32.w;
                  r63.xyz = r2.xyz * r32.www + v7.xyz;
                  r63.xyz = r63.xyz + -r55.xyz;
                  r32.w = max(abs(r63.y), abs(r63.z));
                  r32.w = max(abs(r63.x), r32.w);
                  r32.w = r56.x / r32.w;
                  r32.w = r32.w + r56.y;
                  r34.w = dot(r63.xyz, r63.xyz);
                  r34.w = rsqrt(r34.w);
                  r32.w = max(6.10351563e-05, r32.w);
                  r35.w = (int)r52.w & 0x0000ffff;
                  r64.w = (uint)r35.w;
                  r62.y = 0;
                  r35.w = 0;
                  while (true) {
                    r36.w = cmp((int)r35.w >= 8);
                    if (r36.w != 0) break;
                    r65.y = dot(icb[r35.w+0].yx, r19.xy);
                    r65.z = dot(icb[r35.w+0].yx, r19.yz);
                    r65.yz = r65.yz * r54.yy;
                    r65.x = r65.y * r11.x;
                    r65.w = r65.y * r10.x;
                    r64.xyz = r63.xyz * r34.www + r65.xzw;
                    r36.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r64.xyzw, r32.w).x;
                    r62.y = r36.w * 0.125 + r62.y;
                    r35.w = (int)r35.w + 1;
                  }
                } else {
                  r62.y = 1;
                }
                r32.w = r62.x * r62.y;
                r32.w = cmp(0 < r32.w);
                if (r32.w != 0) {
                  r32.w = r52.x * r4.z;
                  r32.w = 0.25 * r32.w;
                  r34.w = dot(r58.xyz, r10.yzw);
                  r35.w = dot(r10.yzw, r60.xyz);
                  r36.w = -r34.w * r34.w + r57.x;
                  r30.w = r34.w * r35.w + -r30.w;
                  r30.w = saturate(r30.w / r36.w);
                  r34.w = r36.w / r57.x;
                  r34.w = 10 * r34.w;
                  r34.w = min(1, r34.w);
                  r30.w = r30.w + -r31.w;
                  r30.w = r34.w * r30.w + r31.w;
                  r58.xyz = r30.www * r58.xyz + r59.xyz;
                  r58.xyz = r29.www ? r58.xyz : r51.yzw;
                  r58.xyz = -v7.xyz + r58.xyz;
                  r29.w = dot(r58.xyz, r58.xyz);
                  r29.w = rsqrt(r29.w);
                  r59.xyz = r58.xyz * r29.www;
                  if (4 == 0) r30.w = 0; else if (4+16 < 32) {                   r30.w = (uint)r52.w << (32-(4 + 16)); r30.w = (uint)r30.w >> (32-4);                  } else r30.w = (uint)r52.w >> 16;
                  r31.w = cmp(0 < (uint)r30.w);
                  r31.w = r2.w ? r31.w : 0;
                  if (r31.w != 0) {
                    r30.w = (int)r30.w + numLights;
                    r30.w = (int)r30.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.w, r30.w, l(52), t12.xxxx
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r30.w, l(100), t12.xyzw
                  r60.x = samp0[]..swiz;
                  r60.y = samp0[]..swiz;
                  r60.z = samp0[]..swiz;
                  r60.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r30.w, l(116), t12.xyzw
                  r63.x = samp0[]..swiz;
                  r63.y = samp0[]..swiz;
                  r63.z = samp0[]..swiz;
                  r63.w = samp0[]..swiz;
                    r34.w = abs(r33.w) * -0.200000003 + 0.400000006;
                    r35.w = cmp(r33.w < 0);
                    r34.w = r35.w ? -r34.w : r34.w;
                    r23.xyz = r2.xyz * r34.www + v7.xyz;
                    r34.w = dot(r60.xyzw, r23.xyzw);
                    r35.w = dot(r63.xyzw, r23.xyzw);
                    r36.w = cmp(r35.w < r34.w);
                    if (r36.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r30.w, l(68), t12.xyzw
                    r60.x = samp0[]..swiz;
                    r60.y = samp0[]..swiz;
                    r60.z = samp0[]..swiz;
                    r60.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r30.w, l(84), t12.xyzw
                    r63.x = samp0[]..swiz;
                    r63.y = samp0[]..swiz;
                    r63.z = samp0[]..swiz;
                    r63.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r30.w, l(132), t12.xyzw
                    r64.x = samp0[]..swiz;
                    r64.y = samp0[]..swiz;
                    r64.z = samp0[]..swiz;
                    r64.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r30.w, l(148), t12.xyzw
                    r65.x = samp0[]..swiz;
                    r65.y = samp0[]..swiz;
                    r65.z = samp0[]..swiz;
                    r65.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.zw, r30.w, l(164), t12.xxxy
                    r62.z = samp0[]..swiz;
                    r62.w = samp0[]..swiz;
                      r60.x = dot(r60.xyzw, r23.xyzw);
                      r60.y = dot(r63.xyzw, r23.xyzw);
                      r23.xy = r60.xy / r35.ww;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r65.zw;
                      r23.xy = r23.xy * r65.xy;
                      r60.xy = r31.ww / r64.xz;
                      r60.zw = float2(1,1) + -r60.xy;
                      r60.zw = cmp(r23.xy >= r60.zw);
                      r60.xy = cmp(r60.xy >= r23.xy);
                      r60.xy = (int2)r60.xy | (int2)r60.zw;
                      r23.z = (int)r60.y | (int)r60.x;
                      r23.xy = saturate(r23.xy);
                      r60.xy = r23.xy * r64.xz + r64.yw;
                      r23.x = r62.w * r35.w;
                      r23.y = r62.z * r35.w + r34.w;
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
                        r63.z = (uint)r23.y;
                        r23.z = 0;
                        r30.w = 0;
                        while (true) {
                          r34.w = cmp((int)r30.w >= 8);
                          if (r34.w != 0) break;
                          r64.x = dot(icb[r30.w+0].yx, r19.xw);
                          r64.y = dot(icb[r30.w+0].xy, r8.xy);
                          r63.xy = r64.xy * r31.ww + r60.xy;
                          r34.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r63.xyz, r23.x).x;
                          r23.z = r34.w * 0.125 + r23.z;
                          r30.w = (int)r30.w + 1;
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
                    r62.y = r62.y * r23.x;
                  } else {
                    if (4 == 0) r23.x = 0; else if (4+20 < 32) {                     r23.x = (uint)r52.w << (32-(4 + 20)); r23.x = (uint)r23.x >> (32-4);                    } else r23.x = (uint)r52.w >> 20;
                    r23.y = cmp(0 < (uint)r23.x);
                    r23.y = r23.y ? r1.x : 0;
                    if (r23.y != 0) {
                      r23.x = (int)r23.x + numLights;
                      r23.x = (int)r23.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r23.x, l(52), t12.xxxx
                    r23.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r23.x, l(100), t12.xyzw
                    r60.x = samp0[]..swiz;
                    r60.y = samp0[]..swiz;
                    r60.z = samp0[]..swiz;
                    r60.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r23.x, l(116), t12.xyzw
                    r63.x = samp0[]..swiz;
                    r63.y = samp0[]..swiz;
                    r63.z = samp0[]..swiz;
                    r63.w = samp0[]..swiz;
                      r30.w = abs(r33.w) * -0.200000003 + 0.400000006;
                      r31.w = cmp(r33.w < 0);
                      r30.w = r31.w ? -r30.w : r30.w;
                      r24.xyz = r2.xyz * r30.www + v7.xyz;
                      r30.w = dot(r60.xyzw, r24.xyzw);
                      r31.w = dot(r63.xyzw, r24.xyzw);
                      r34.w = cmp(r31.w < r30.w);
                      if (r34.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r23.x, l(68), t12.xyzw
                      r60.x = samp0[]..swiz;
                      r60.y = samp0[]..swiz;
                      r60.z = samp0[]..swiz;
                      r60.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r63.xyzw, r23.x, l(84), t12.xyzw
                      r63.x = samp0[]..swiz;
                      r63.y = samp0[]..swiz;
                      r63.z = samp0[]..swiz;
                      r63.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r64.xyzw, r23.x, l(132), t12.xyzw
                      r64.x = samp0[]..swiz;
                      r64.y = samp0[]..swiz;
                      r64.z = samp0[]..swiz;
                      r64.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r23.x, l(148), t12.xyzw
                      r65.x = samp0[]..swiz;
                      r65.y = samp0[]..swiz;
                      r65.z = samp0[]..swiz;
                      r65.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r62.zw, r23.x, l(164), t12.xxxy
                      r62.z = samp0[]..swiz;
                      r62.w = samp0[]..swiz;
                        r60.x = dot(r60.xyzw, r24.xyzw);
                        r60.y = dot(r63.xyzw, r24.xyzw);
                        r24.xy = r60.xy / r31.ww;
                        r24.xy = r24.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r24.xy = r24.xy + r65.zw;
                        r24.xy = r24.xy * r65.xy;
                        r60.xy = r23.yy / r64.xz;
                        r60.zw = float2(1,1) + -r60.xy;
                        r60.zw = cmp(r24.xy >= r60.zw);
                        r60.xy = cmp(r60.xy >= r24.xy);
                        r60.xy = (int2)r60.xy | (int2)r60.zw;
                        r24.z = (int)r60.y | (int)r60.x;
                        r24.xy = saturate(r24.xy);
                        r60.xy = r24.xy * r64.xz + r64.yw;
                        r24.x = r62.w * r31.w;
                        r24.y = r62.z * r31.w + r30.w;
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
                          r63.z = (uint)r23.x;
                          r24.yz = float2(0,0);
                          while (true) {
                            r30.w = cmp((int)r24.z >= 8);
                            if (r30.w != 0) break;
                            r64.x = dot(icb[r24.z+0].xy, r9.xy);
                            r64.y = dot(icb[r24.z+0].yx, r9.xz);
                            r63.xy = r64.xy * r23.yy + r60.xy;
                            r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r63.xyz, r24.x).x;
                            r24.y = r30.w * 0.125 + r24.y;
                            r24.z = (int)r24.z + 1;
                          }
                        } else {
                          r60.z = (uint)r23.x;
                          r24.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r60.xyz, r24.x).x;
                        }
                        r23.x = r24.y * r24.y;
                        r23.x = r23.x * r24.y;
                      } else {
                        r23.x = 1;
                      }
                      r62.y = r62.y * r23.x;
                    }
                  }
                  r23.x = r62.x * r62.y;
                  r23.y = -abs(r33.w) * r3.w + 1;
                  r23.y = r23.y * r23.y;
                  r23.y = -r23.y * 0.620000005 + 0.620000005;
                  r23.y = r23.y + -abs(r33.w);
                  r23.y = r4.w * r23.y + abs(r33.w);
                  r24.x = cmp(0 < r33.w);
                  r24.z = saturate(dot(r2.xyz, r59.xyz));
                  r58.xyz = r58.xyz * r29.www + r7.xyz;
                  r29.w = dot(r58.xyz, r58.xyz);
                  r29.w = rsqrt(r29.w);
                  r58.xyz = r58.xyz * r29.www;
                  r29.w = dot(r58.xyz, r7.xyz);
                  r30.w = dot(r2.xyz, r58.xyz);
                  r31.w = abs(r30.w) * r4.z + -abs(r30.w);
                  r30.w = abs(r30.w) * r31.w + 1;
                  r31.w = r24.z * r5.z + r5.w;
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
                  r58.xyz = r24.xxx ? r23.yyy : 0;
                  r23.y = r24.x ? 0 : r23.y;
                  r59.xyz = r24.xxx ? r29.www : 0;
                  r24.x = r24.x ? r24.z : 0;
                  r52.x = r51.x;
                  r24.z = dot(r52.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r24.z = r24.z * r23.x;
                  r29.w = cmp(r16.w < r24.z);
                  if (r29.w != 0) {
                    r29.w = r20.z * r20.w;
                    r60.xyz = r29.www * r45.xyz;
                    r21.xyz = r60.xyz * r47.xyz + r21.xyz;
                    r42.xyz = r60.xyz * r50.xyz + r42.xyz;
                    r44.xyz = r60.xyz * r48.xyz + r44.xyz;
                    r43.xyz = r60.xyz * r49.xyz + r43.xyz;
                    r48.xyz = r24.xxx;
                    r16.w = r24.z;
                    r50.xyz = r23.yyy;
                    r45.xyz = r52.xyz;
                    r46.xyz = r61.xyz;
                    r47.xyz = r58.xyz;
                    r49.xyz = r59.xyz;
                    r20.zw = r62.xy;
                  } else {
                    r58.xyw = r52.xyz * r23.xxx;
                    r21.xyz = r58.xyw * r58.zzz + r21.xyz;
                    r42.xyz = r58.xyw * r23.yyy + r42.xyz;
                    r44.xyz = r58.xyw * r24.xxx + r44.xyz;
                    r43.xyz = r58.xyw * r59.xyz + r43.xyz;
                  }
                }
              }
            }
            break;
            case 2 :            r58.xy = r54.zw;
            r58.z = r55.w;
            r58.xyz = -v7.xyz + r58.xyz;
            r23.x = dot(r58.xyz, r58.xyz);
            r23.x = rsqrt(r23.x);
            r59.xyz = r58.xyz * r23.xxx;
            r23.y = dot(r2.xyz, r59.xyz);
            r24.x = cmp(0 < abs(r23.y));
            if (r24.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r25.w, l(112), t12.yzwx
            r60.x = samp0[]..swiz;
            r60.y = samp0[]..swiz;
            r60.z = samp0[]..swiz;
            r60.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.xyzw, r25.w, l(128), t12.zxyw
            r61.x = samp0[]..swiz;
            r61.y = samp0[]..swiz;
            r61.z = samp0[]..swiz;
            r61.w = samp0[]..swiz;
              r63.xyz = r60.xyz;
              r63.w = r61.y;
              r24.x = dot(r63.xyzw, r22.xyzw);
              r24.z = cmp(r24.x < 1);
              if (r24.z != 0) {
                r62.xzw = float3(1,1,1);
                r64.x = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r65.xyzw, r25.w, l(172), t12.yzwx
              r65.x = samp0[]..swiz;
              r65.y = samp0[]..swiz;
              r65.z = samp0[]..swiz;
              r65.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r66.xyzw, r25.w, l(188), t12.wxyz
              r66.x = samp0[]..swiz;
              r66.y = samp0[]..swiz;
              r66.z = samp0[]..swiz;
              r66.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r67.xyzw, r25.w, l(204), t12.xyzw
              r67.x = samp0[]..swiz;
              r67.y = samp0[]..swiz;
              r67.z = samp0[]..swiz;
              r67.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.z, r25.w, l(236), t12.xxxx
              r24.z = samp0[]..swiz;
                r68.xyz = -v7.xyz + r51.yzw;
                r29.w = r54.x * r54.x;
                r30.w = dot(r68.xyz, r68.xyz);
                r29.w = r29.w / r30.w;
                r29.w = min(1, r29.w);
                r53.xy = saturate(r24.xx * r53.xz + r53.yw);
                r53.zw = r53.xy * r53.xy;
                r53.xy = r53.xy * float2(-2,-2) + float2(3,3);
                r53.xy = r53.zw * r53.xy;
                r29.w = r53.x * r29.w;
                r29.w = r29.w * r53.y;
                r55.w = r56.x;
                r53.x = dot(r55.xyzw, r22.xyzw);
                r68.xyz = r56.yzw;
                r68.w = r57.w;
                r53.y = dot(r68.xyzw, r22.xyzw);
                r25.xy = r53.xy / r24.xx;
                r24.x = cmp(r65.w < 0.00048828125);
                if (r24.x != 0) {
                  r66.y = r67.x;
                  r53.xy = saturate(abs(r25.xy) * r66.zw + r66.xy);
                  r53.zw = r53.xy * r53.xy;
                  r53.xy = r53.xy * float2(-2,-2) + float2(3,3);
                  r53.xy = r53.zw * r53.xy;
                  r24.x = r53.x * r53.y;
                } else {
                  r65.w = r66.y;
                  r53.xyzw = saturate(r65.xyzw * abs(r25.yyxx));
                  r53.xyzw = log2(r53.xyzw);
                  r53.xyzw = r66.xxxx * r53.xyzw;
                  r53.xyzw = exp2(r53.xyzw);
                  r53.xy = r53.xy + r53.zw;
                  r53.xy = log2(r53.xy);
                  r53.xy = r67.xx * r53.xy;
                  r53.xy = exp2(r53.xy);
                  r30.w = r66.z * r53.x;
                  r31.w = r66.w * r53.y + -1;
                  r30.w = r66.w * r53.y + -r30.w;
                  r30.w = saturate(r31.w / r30.w);
                  r31.w = r30.w * r30.w;
                  r30.w = r30.w * -2 + 3;
                  r24.x = r31.w * r30.w;
                }
                r64.x = r29.w * r24.x;
                r24.x = r24.z ? 0.000000 : 0;
                if (r24.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyz, r25.w, l(220), t12.xyzx
                r53.x = samp0[]..swiz;
                r53.y = samp0[]..swiz;
                r53.z = samp0[]..swiz;
                  r24.z = dot(r67.yzw, r25.xyz);
                  r25.x = dot(r53.xyz, r25.xyz);
                  r53.x = frac(r24.z);
                  r53.y = frac(r25.x);
                  r24.x = (int)r24.x + -1;
                  r53.z = (uint)r24.x;
                  r62.xzw = gCookieArray.SampleLevel(samplerLinear_s, r53.xyz, 0).xyz;
                } else {
                  r62.xzw = float3(1,1,1);
                }
              }
              r51.yz = r52.yz;
              r51.xyz = r51.xyz * r62.xzw;
              r24.x = cmp(0 < r64.x);
              if (r24.x != 0) {
                if (3 == 0) r24.x = 0; else if (3+27 < 32) {                 r24.x = (uint)r52.w << (32-(3 + 27)); r24.x = (uint)r24.x >> (32-3);                } else r24.x = (uint)r52.w >> 27;
                r24.x = cmp((int)r24.x != 1);
                if (r24.x != 0) {
                  r24.x = abs(r23.y) * -0.200000003 + 0.400000006;
                  r24.z = cmp(r23.y < 0);
                  r24.x = r24.z ? -r24.x : r24.x;
                  r26.xyz = r2.xyz * r24.xxx + v7.xyz;
                  r60.xyz = r57.xyz;
                  r24.x = dot(r60.xyzw, r26.xyzw);
                  r24.z = dot(r63.xyzw, r26.xyzw);
                  r25.x = cmp(r24.z >= r24.x);
                  if (r25.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r61.y, r25.w, l(144), t12.xxxx
                  r61.y = samp0[]..swiz;
                    r55.w = r56.x;
                    r25.x = dot(r55.xyzw, r26.xyzw);
                    r57.xyz = r56.yzw;
                    r25.y = dot(r57.xyzw, r26.xyzw);
                    r25.xy = r25.xy / r24.zz;
                    r25.xy = saturate(r25.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r26.xy = r25.xy * r61.zw + r61.xy;
                    r24.x = r24.x / r24.z;
                    r24.x = max(6.10351563e-05, r24.x);
                    r24.z = (int)r52.w & 0x0000ffff;
                    if (r15.w != 0) {
                      r53.z = (uint)r24.z;
                      r25.xy = float2(0,0);
                      while (true) {
                        r25.w = cmp((int)r25.y >= 8);
                        if (r25.w != 0) break;
                        r55.x = dot(icb[r25.y+0].xy, r29.xy);
                        r55.y = dot(icb[r25.y+0].yx, r29.xz);
                        r53.xy = r55.xy * r54.yy + r26.xy;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r53.xyz, r24.x).x;
                        r25.x = r25.w * 0.125 + r25.x;
                        r25.y = (int)r25.y + 1;
                      }
                    } else {
                      r26.z = (uint)r24.z;
                      r25.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r24.x).x;
                    }
                    r24.x = r25.x * r25.x;
                    r64.y = r24.x * r25.x;
                  } else {
                    r64.y = 1;
                  }
                } else {
                  r64.y = 1;
                }
                r24.x = r64.x * r64.y;
                r24.x = cmp(0 < r24.x);
                if (r24.x != 0) {
                  r24.x = r52.x * r4.z;
                  r24.x = 0.25 * r24.x;
                  if (4 == 0) r24.z = 0; else if (4+16 < 32) {                   r24.z = (uint)r52.w << (32-(4 + 16)); r24.z = (uint)r24.z >> (32-4);                  } else r24.z = (uint)r52.w >> 16;
                  r25.y = cmp(0 < (uint)r24.z);
                  r25.y = r2.w ? r25.y : 0;
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
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r60.xyzw, r24.z, l(148), t12.xyzw
                  r60.x = samp0[]..swiz;
                  r60.y = samp0[]..swiz;
                  r60.z = samp0[]..swiz;
                  r60.w = samp0[]..swiz;
                    r25.w = abs(r23.y) * -0.200000003 + 0.400000006;
                    r26.x = cmp(r23.y < 0);
                    r25.w = r26.x ? -r25.w : r25.w;
                    r27.xyz = r2.xyz * r25.www + v7.xyz;
                    r26.x = dot(r53.xyzw, r27.xyzw);
                    r26.y = dot(r54.xyzw, r27.xyzw);
                    r25.w = dot(r55.xyzw, r27.xyzw);
                    r26.z = dot(r56.xyzw, r27.xyzw);
                    r27.x = cmp(r26.z < r25.w);
                    r26.xy = r26.xy / r26.zz;
                    r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r26.xy = r26.xy + r60.zw;
                    r26.xy = r26.xy * r60.xy;
                    r27.yz = r25.yy / r57.xz;
                    r52.xy = float2(1,1) + -r27.yz;
                    r52.xy = cmp(r26.xy >= r52.xy);
                    r27.yz = cmp(r27.yz >= r26.xy);
                    r27.yz = (int2)r27.yz | (int2)r52.xy;
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
                      r52.xy = r26.xy * r57.xz + r57.yw;
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
                          r53.x = dot(icb[r27.y+0].xy, r30.xy);
                          r53.y = dot(icb[r27.y+0].yx, r30.xz);
                          r26.xy = r53.xy * r25.yy + r52.xy;
                          r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r24.z).x;
                          r27.x = r26.x * 0.125 + r27.x;
                          r27.y = (int)r27.y + 1;
                        }
                      } else {
                        r52.z = (uint)r25.w;
                        r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r52.xyz, r24.z).x;
                      }
                      r24.z = r27.x * r27.x;
                      r24.z = r24.z * r27.x;
                    } else {
                      r24.z = 1;
                    }
                    r64.y = r64.y * r24.z;
                  } else {
                    if (4 == 0) r24.z = 0; else if (4+20 < 32) {                     r24.z = (uint)r52.w << (32-(4 + 20)); r24.z = (uint)r24.z >> (32-4);                    } else r24.z = (uint)r52.w >> 20;
                    r25.y = cmp(0 < (uint)r24.z);
                    r25.y = r25.y ? r1.x : 0;
                    if (r25.y != 0) {
                      r24.z = (int)r24.z + numLights;
                      r24.z = (int)r24.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.y, r24.z, l(52), t12.xxxx
                    r25.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r24.z, l(68), t12.xyzw
                    r52.x = samp0[]..swiz;
                    r52.y = samp0[]..swiz;
                    r52.z = samp0[]..swiz;
                    r52.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r24.z, l(84), t12.xyzw
                    r53.x = samp0[]..swiz;
                    r53.y = samp0[]..swiz;
                    r53.z = samp0[]..swiz;
                    r53.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r24.z, l(100), t12.xyzw
                    r54.x = samp0[]..swiz;
                    r54.y = samp0[]..swiz;
                    r54.z = samp0[]..swiz;
                    r54.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r55.xyzw, r24.z, l(116), t12.xyzw
                    r55.x = samp0[]..swiz;
                    r55.y = samp0[]..swiz;
                    r55.z = samp0[]..swiz;
                    r55.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r56.xyzw, r24.z, l(132), t12.xyzw
                    r56.x = samp0[]..swiz;
                    r56.y = samp0[]..swiz;
                    r56.z = samp0[]..swiz;
                    r56.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r57.xyzw, r24.z, l(148), t12.xyzw
                    r57.x = samp0[]..swiz;
                    r57.y = samp0[]..swiz;
                    r57.z = samp0[]..swiz;
                    r57.w = samp0[]..swiz;
                      r25.w = abs(r23.y) * -0.200000003 + 0.400000006;
                      r26.x = cmp(r23.y < 0);
                      r25.w = r26.x ? -r25.w : r25.w;
                      r28.xyz = r2.xyz * r25.www + v7.xyz;
                      r26.x = dot(r52.xyzw, r28.xyzw);
                      r26.y = dot(r53.xyzw, r28.xyzw);
                      r25.w = dot(r54.xyzw, r28.xyzw);
                      r26.z = dot(r55.xyzw, r28.xyzw);
                      r27.y = cmp(r26.z < r25.w);
                      r26.xy = r26.xy / r26.zz;
                      r26.xy = r26.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r26.xy = r26.xy + r57.zw;
                      r26.xy = r26.xy * r57.xy;
                      r28.xy = r25.yy / r56.xz;
                      r52.xy = float2(1,1) + -r28.xy;
                      r52.xy = cmp(r26.xy >= r52.xy);
                      r28.xy = cmp(r28.xy >= r26.xy);
                      r28.xy = (int2)r28.xy | (int2)r52.xy;
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
                        r52.xy = r26.xy * r56.xz + r56.yw;
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
                            r26.xy = r28.xy * r25.yy + r52.xy;
                            r26.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r26.xyz, r24.z).x;
                            r27.y = r26.x * 0.125 + r27.y;
                            r27.z = (int)r27.z + 1;
                          }
                        } else {
                          r52.z = (uint)r25.w;
                          r27.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r52.xyz, r24.z).x;
                        }
                        r24.z = r27.y * r27.y;
                        r24.z = r24.z * r27.y;
                      } else {
                        r24.z = 1;
                      }
                      r64.y = r64.y * r24.z;
                    }
                  }
                  r24.z = r64.x * r64.y;
                  r25.y = -abs(r23.y) * r3.w + 1;
                  r25.y = r25.y * r25.y;
                  r25.y = -r25.y * 0.620000005 + 0.620000005;
                  r25.y = r25.y + -abs(r23.y);
                  r25.y = r4.w * r25.y + abs(r23.y);
                  r25.w = cmp(0 < r23.y);
                  r23.y = saturate(r23.y);
                  r26.xyz = r58.xyz * r23.xxx + r7.xyz;
                  r23.x = dot(r26.xyz, r26.xyz);
                  r23.x = rsqrt(r23.x);
                  r26.xyz = r26.xyz * r23.xxx;
                  r23.x = dot(r26.xyz, r7.xyz);
                  r26.x = dot(r2.xyz, r26.xyz);
                  r26.y = abs(r26.x) * r4.z + -abs(r26.x);
                  r26.x = abs(r26.x) * r26.y + 1;
                  r26.y = r23.y * r5.z + r5.w;
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
                  r23.y = dot(r51.xyz, float3(0.212599993,0.715200007,0.0722000003));
                  r23.y = r24.z * r23.y;
                  r25.y = cmp(r16.w < r23.y);
                  if (r25.y != 0) {
                    r25.y = r20.z * r20.w;
                    r52.xyz = r25.yyy * r45.xyz;
                    r21.xyz = r52.xyz * r47.xyz + r21.xyz;
                    r42.xyz = r52.xyz * r50.xyz + r42.xyz;
                    r44.xyz = r52.xyz * r48.xyz + r44.xyz;
                    r43.xyz = r52.xyz * r49.xyz + r43.xyz;
                    r48.xyz = r23.xxx;
                    r16.w = r23.y;
                    r50.xyz = r24.xxx;
                    r45.xyz = r51.xyz;
                    r46.xyz = r59.xyz;
                    r47.xyz = r26.xyz;
                    r49.xyz = r28.xyz;
                    r20.zw = r64.xy;
                  } else {
                    r51.xyz = r24.zzz * r51.xyz;
                    r21.xyz = r51.xyz * r26.zzz + r21.xyz;
                    r42.xyz = r51.xyz * r24.xxx + r42.xyz;
                    r44.xyz = r51.xyz * r23.xxx + r44.xyz;
                    r43.xyz = r51.xyz * r28.xyz + r43.xyz;
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
    r33.xyz = r42.xyz;
    r34.xyz = r43.xyz;
    r35.xyz = r44.xyz;
    r36.xyz = r45.xyz;
    r37.xyz = r46.xyz;
    r38.xyz = r47.xyz;
    r40.xyz = r48.xyz;
    r41.xyz = r49.xyz;
    r17.zw = r20.zw;
    r4.y = r16.w;
    r39.xyz = r50.xyz;
    r12.w = (int)r12.w + 32;
  }
  r2.z = 0;
  r2.xy = float2(1,-1) * r37.yx;
  r4.xyz = r37.zxy * r2.yzx;
  r4.xyz = r37.yzx * r2.zxy + -r4.xyz;
  r8.xyz = viewProjectionMatrix._m10_m11_m13 * r12.yyy;
  r8.xyz = r12.xxx * viewProjectionMatrix._m00_m01_m03 + r8.xyz;
  r8.xyz = r12.zzz * viewProjectionMatrix._m20_m21_m23 + r8.xyz;
  r8.xyz = r8.xyz + r11.yzw;
  r9.z = rcp(r8.z);
  r1.xz = r9.zz * r8.xy;
  r9.xy = r1.xz * float2(0.5,-0.5) + float2(0.5,0.5);
  r8.xyw = r37.xyz * float3(3,3,3) + r12.xyz;
  r1.x = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r1.x = frac(r1.x);
  r1.x = 52.9829178 * r1.x;
  r1.x = frac(r1.x);
  r1.z = 3.14159989 * r1.x;
  r1.z = gameTick.w * 0.5 + r1.z;
  sincos(r1.z, r10.x, r11.x);
  r12.xyz = r10.xxx * r4.xyz;
  r12.xyz = r11.xxx * r2.xyz + r12.xyz;
  r12.xyz = r12.xyz * float3(0.119999997,0.119999997,0.119999997) + r8.xyw;
  r13.xyz = viewProjectionMatrix._m10_m11_m13 * r12.yyy;
  r12.xyw = r12.xxx * viewProjectionMatrix._m00_m01_m03 + r13.xyz;
  r12.xyz = r12.zzz * viewProjectionMatrix._m20_m21_m23 + r12.xyw;
  r12.xyz = r12.xyz + r11.yzw;
  r5.zw = float2(0.5,-0.5) * r12.xy;
  r12.z = rcp(r12.z);
  r12.xy = r5.zw * r12.zz + float2(0.5,0.5);
  r13.xyz = -r9.xyz;
  r12.xyz = r13.xyz + r12.xyz;
  r1.z = 3.14159989 + r1.z;
  sincos(r1.z, r10.x, r11.x);
  r4.xyz = r10.xxx * r4.xyz;
  r2.xyz = r11.xxx * r2.xyz + r4.xyz;
  r2.xyz = r2.xyz * float3(0.119999997,0.119999997,0.119999997) + r8.xyw;
  r4.xyz = viewProjectionMatrix._m10_m11_m13 * r2.yyy;
  r2.xyw = r2.xxx * viewProjectionMatrix._m00_m01_m03 + r4.xyz;
  r2.xyz = r2.zzz * viewProjectionMatrix._m20_m21_m23 + r2.xyw;
  r2.xyz = r2.xyz + r11.yzw;
  r2.xy = float2(0.5,-0.5) * r2.xy;
  r4.z = rcp(r2.z);
  r4.xy = r2.xy * r4.zz + r13.xy;
  r13.w = 0.5;
  r2.xyz = r4.xyz + r13.wwz;
  r1.z = dot(renderTargetSize.zw, renderTargetSize.zw);
  r1.z = sqrt(r1.z);
  r2.w = dot(r12.xy, r12.xy);
  r2.w = sqrt(r2.w);
  r2.w = rcp(r2.w);
  r1.z = r2.w * r1.z;
  r4.xy = r1.xx * float2(0.5,0.5) + float2(0.333333343,1);
  r4.xy = float2(0.117647059,0.117647059) * r4.xy;
  r4.xy = r4.xy * r4.xy;
  x1[0].x = r4.x;
  r8.xyw = r12.xyz * r4.xxx + r9.xyz;
  r4.zw = cmp(r1.zz < r4.xy);
  r5.zw = renderTargetSize.xy * r8.xy;
  r11.xy = (int2)r5.zw;
  r11.zw = float2(0,0);
  r2.w = floatZSampler.Load(r11.xyz).x;
  r3.w = cmp(r2.w >= 0.984375);
  r5.z = 1.01587307 * r2.w;
  r2.w = r2.w * 64 + -63;
  r2.w = r3.w ? r2.w : r5.z;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  x2[0].x = r2.w;
  r3.w = 0.0419999994 + r2.w;
  r3.w = r8.w * r3.w;
  r3.w = cmp(1 < r3.w);
  r3.w = r3.w ? 1.000000 : 0;
  r3.w = r4.z ? r3.w : 1;
  x0[0].x = r3.w;
  x1[1].x = r4.y;
  r8.xyw = r2.xyz * r4.yyy + r9.xyz;
  r5.zw = renderTargetSize.xy * r8.xy;
  r11.xy = (int2)r5.zw;
  r11.zw = float2(0,0);
  r4.z = floatZSampler.Load(r11.xyz).x;
  r5.z = cmp(r4.z >= 0.984375);
  r5.w = 1.01587307 * r4.z;
  r4.z = r4.z * 64 + -63;
  r4.z = r5.z ? r4.z : r5.w;
  r4.z = max(9.99999994e-09, r4.z);
  r4.z = rcp(r4.z);
  x2[1].x = r4.z;
  r5.z = 0.0419999994 + r4.z;
  r5.z = r8.w * r5.z;
  r5.z = cmp(1 < r5.z);
  r5.z = r5.z ? 1.000000 : 0;
  r4.w = r4.w ? r5.z : 1;
  x0[1].x = r4.w;
  r5.z = r4.w + r3.w;
  r5.z = cmp(r5.z != 0.000000);
  if (r5.z != 0) {
    r5.zw = r1.xx * float2(0.5,0.5) + float2(1.33333337,2);
    r5.zw = float2(0.117647059,0.117647059) * r5.zw;
    r5.zw = r5.zw * r5.zw + -r4.xy;
    r4.x = r3.w * r5.z + r4.x;
    x1[0].x = r4.x;
    r8.xyw = r12.xyz * r4.xxx + r9.xyz;
    r4.x = cmp(r1.z < r4.x);
    r8.xy = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r8.xy;
    r11.zw = float2(0,0);
    r5.z = floatZSampler.Load(r11.xyz).x;
    r6.w = cmp(r5.z >= 0.984375);
    r7.w = 1.01587307 * r5.z;
    r5.z = r5.z * 64 + -63;
    r5.z = r6.w ? r5.z : r7.w;
    r5.z = max(9.99999994e-09, r5.z);
    r5.z = rcp(r5.z);
    r2.w = r4.x ? r5.z : r2.w;
    x2[0].x = r2.w;
    r2.w = 0.0419999994 + r5.z;
    r2.w = r8.w * r2.w;
    r2.w = cmp(1 < r2.w);
    r2.w = r2.w ? 1.000000 : 0;
    r2.w = r3.w * r2.w;
    r2.w = r4.x ? r2.w : r3.w;
    x0[0].x = r2.w;
    r3.w = r4.w * r5.w + r4.y;
    x1[1].x = r3.w;
    r8.xyw = r2.xyz * r3.www + r9.xyz;
    r3.w = cmp(r1.z < r3.w);
    r4.xy = renderTargetSize.xy * r8.xy;
    r11.xy = (int2)r4.xy;
    r11.zw = float2(0,0);
    r4.x = floatZSampler.Load(r11.xyz).x;
    r4.y = cmp(r4.x >= 0.984375);
    r5.z = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.y ? r4.x : r5.z;
    r4.x = max(9.99999994e-09, r4.x);
    r4.x = rcp(r4.x);
    r4.y = r3.w ? r4.x : r4.z;
    x2[1].x = r4.y;
    r4.x = 0.0419999994 + r4.x;
    r4.x = r8.w * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.w * r4.x;
    r3.w = r3.w ? r4.x : r4.w;
    x0[1].x = r3.w;
    r2.w = r3.w + r2.w;
    r2.w = cmp(r2.w == 0.000000);
  } else {
    r2.w = -1;
  }
  if (r2.w == 0) {
    r4.xy = r1.xx * float2(0.5,0.5) + float2(2.33333325,3);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r2.w = x1[0].x;
    r3.w = x0[0].x;
    r4.x = r4.x * r4.x + -r2.w;
    r2.w = r3.w * r4.x + r2.w;
    x1[0].x = r2.w;
    r4.xzw = r12.xyz * r2.www + r9.xyz;
    r2.w = cmp(r1.z < r2.w);
    r4.xz = renderTargetSize.xy * r4.xz;
    r11.xy = (int2)r4.xz;
    r11.zw = float2(0,0);
    r4.x = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.x >= 0.984375);
    r5.z = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.z ? r4.x : r5.z;
    r4.x = max(9.99999994e-09, r4.x);
    r4.x = rcp(r4.x);
    r4.z = x2[0].x;
    r4.z = r2.w ? r4.x : r4.z;
    x2[0].x = r4.z;
    r4.x = 0.0419999994 + r4.x;
    r4.x = r4.w * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.x * r3.w;
    r2.w = r2.w ? r4.x : r3.w;
    x0[0].x = r2.w;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r4.y = r4.y * r4.y + -r3.w;
    r3.w = r4.x * r4.y + r3.w;
    x1[1].x = r3.w;
    r4.yzw = r2.xyz * r3.www + r9.xyz;
    r3.w = cmp(r1.z < r3.w);
    r4.yz = renderTargetSize.xy * r4.yz;
    r11.xy = (int2)r4.yz;
    r11.zw = float2(0,0);
    r4.y = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.y >= 0.984375);
    r5.z = 1.01587307 * r4.y;
    r4.y = r4.y * 64 + -63;
    r4.y = r4.z ? r4.y : r5.z;
    r4.y = max(9.99999994e-09, r4.y);
    r4.y = rcp(r4.y);
    r4.z = x2[1].x;
    r4.z = r3.w ? r4.y : r4.z;
    x2[1].x = r4.z;
    r4.y = 0.0419999994 + r4.y;
    r4.y = r4.w * r4.y;
    r4.y = cmp(1 < r4.y);
    r4.y = r4.y ? 1.000000 : 0;
    r4.y = r4.x * r4.y;
    r3.w = r3.w ? r4.y : r4.x;
    x0[1].x = r3.w;
    r2.w = r3.w + r2.w;
    r2.w = cmp(r2.w == 0.000000);
  } else {
    r2.w = -1;
  }
  if (r2.w == 0) {
    r4.xy = r1.xx * float2(0.5,0.5) + float2(3.33333325,4);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r2.w = x1[0].x;
    r3.w = x0[0].x;
    r4.x = r4.x * r4.x + -r2.w;
    r2.w = r3.w * r4.x + r2.w;
    x1[0].x = r2.w;
    r4.xzw = r12.xyz * r2.www + r9.xyz;
    r2.w = cmp(r1.z < r2.w);
    r4.xz = renderTargetSize.xy * r4.xz;
    r11.xy = (int2)r4.xz;
    r11.zw = float2(0,0);
    r4.x = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.x >= 0.984375);
    r5.z = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.z ? r4.x : r5.z;
    r4.x = max(9.99999994e-09, r4.x);
    r4.x = rcp(r4.x);
    r4.z = x2[0].x;
    r4.z = r2.w ? r4.x : r4.z;
    x2[0].x = r4.z;
    r4.x = 0.0419999994 + r4.x;
    r4.x = r4.w * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.x * r3.w;
    r2.w = r2.w ? r4.x : r3.w;
    x0[0].x = r2.w;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r4.y = r4.y * r4.y + -r3.w;
    r3.w = r4.x * r4.y + r3.w;
    x1[1].x = r3.w;
    r4.yzw = r2.xyz * r3.www + r9.xyz;
    r3.w = cmp(r1.z < r3.w);
    r4.yz = renderTargetSize.xy * r4.yz;
    r11.xy = (int2)r4.yz;
    r11.zw = float2(0,0);
    r4.y = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.y >= 0.984375);
    r5.z = 1.01587307 * r4.y;
    r4.y = r4.y * 64 + -63;
    r4.y = r4.z ? r4.y : r5.z;
    r4.y = max(9.99999994e-09, r4.y);
    r4.y = rcp(r4.y);
    r4.z = x2[1].x;
    r4.z = r3.w ? r4.y : r4.z;
    x2[1].x = r4.z;
    r4.y = 0.0419999994 + r4.y;
    r4.y = r4.w * r4.y;
    r4.y = cmp(1 < r4.y);
    r4.y = r4.y ? 1.000000 : 0;
    r4.y = r4.x * r4.y;
    r3.w = r3.w ? r4.y : r4.x;
    x0[1].x = r3.w;
    r2.w = r3.w + r2.w;
    r2.w = cmp(r2.w == 0.000000);
  } else {
    r2.w = -1;
  }
  if (r2.w == 0) {
    r4.xy = r1.xx * float2(0.5,0.5) + float2(4.33333349,5);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r2.w = x1[0].x;
    r3.w = x0[0].x;
    r4.x = r4.x * r4.x + -r2.w;
    r2.w = r3.w * r4.x + r2.w;
    x1[0].x = r2.w;
    r4.xzw = r12.xyz * r2.www + r9.xyz;
    r2.w = cmp(r1.z < r2.w);
    r4.xz = renderTargetSize.xy * r4.xz;
    r11.xy = (int2)r4.xz;
    r11.zw = float2(0,0);
    r4.x = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.x >= 0.984375);
    r5.z = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.z ? r4.x : r5.z;
    r4.x = max(9.99999994e-09, r4.x);
    r4.x = rcp(r4.x);
    r4.z = x2[0].x;
    r4.z = r2.w ? r4.x : r4.z;
    x2[0].x = r4.z;
    r4.x = 0.0419999994 + r4.x;
    r4.x = r4.w * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.x * r3.w;
    r2.w = r2.w ? r4.x : r3.w;
    x0[0].x = r2.w;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r4.y = r4.y * r4.y + -r3.w;
    r3.w = r4.x * r4.y + r3.w;
    x1[1].x = r3.w;
    r4.yzw = r2.xyz * r3.www + r9.xyz;
    r3.w = cmp(r1.z < r3.w);
    r4.yz = renderTargetSize.xy * r4.yz;
    r11.xy = (int2)r4.yz;
    r11.zw = float2(0,0);
    r4.y = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.y >= 0.984375);
    r5.z = 1.01587307 * r4.y;
    r4.y = r4.y * 64 + -63;
    r4.y = r4.z ? r4.y : r5.z;
    r4.y = max(9.99999994e-09, r4.y);
    r4.y = rcp(r4.y);
    r4.z = x2[1].x;
    r4.z = r3.w ? r4.y : r4.z;
    x2[1].x = r4.z;
    r4.y = 0.0419999994 + r4.y;
    r4.y = r4.w * r4.y;
    r4.y = cmp(1 < r4.y);
    r4.y = r4.y ? 1.000000 : 0;
    r4.y = r4.x * r4.y;
    r3.w = r3.w ? r4.y : r4.x;
    x0[1].x = r3.w;
    r2.w = r3.w + r2.w;
    r2.w = cmp(r2.w == 0.000000);
  } else {
    r2.w = -1;
  }
  if (r2.w == 0) {
    r4.xy = r1.xx * float2(0.5,0.5) + float2(5.33333349,6);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r2.w = x1[0].x;
    r3.w = x0[0].x;
    r4.x = r4.x * r4.x + -r2.w;
    r2.w = r3.w * r4.x + r2.w;
    x1[0].x = r2.w;
    r4.xzw = r12.xyz * r2.www + r9.xyz;
    r2.w = cmp(r1.z < r2.w);
    r4.xz = renderTargetSize.xy * r4.xz;
    r11.xy = (int2)r4.xz;
    r11.zw = float2(0,0);
    r4.x = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.x >= 0.984375);
    r5.z = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.z ? r4.x : r5.z;
    r4.x = max(9.99999994e-09, r4.x);
    r4.x = rcp(r4.x);
    r4.z = x2[0].x;
    r4.z = r2.w ? r4.x : r4.z;
    x2[0].x = r4.z;
    r4.x = 0.0419999994 + r4.x;
    r4.x = r4.w * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.x * r3.w;
    r2.w = r2.w ? r4.x : r3.w;
    x0[0].x = r2.w;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r4.y = r4.y * r4.y + -r3.w;
    r3.w = r4.x * r4.y + r3.w;
    x1[1].x = r3.w;
    r4.yzw = r2.xyz * r3.www + r9.xyz;
    r3.w = cmp(r1.z < r3.w);
    r4.yz = renderTargetSize.xy * r4.yz;
    r11.xy = (int2)r4.yz;
    r11.zw = float2(0,0);
    r4.y = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.y >= 0.984375);
    r5.z = 1.01587307 * r4.y;
    r4.y = r4.y * 64 + -63;
    r4.y = r4.z ? r4.y : r5.z;
    r4.y = max(9.99999994e-09, r4.y);
    r4.y = rcp(r4.y);
    r4.z = x2[1].x;
    r4.z = r3.w ? r4.y : r4.z;
    x2[1].x = r4.z;
    r4.y = 0.0419999994 + r4.y;
    r4.y = r4.w * r4.y;
    r4.y = cmp(1 < r4.y);
    r4.y = r4.y ? 1.000000 : 0;
    r4.y = r4.x * r4.y;
    r3.w = r3.w ? r4.y : r4.x;
    x0[1].x = r3.w;
    r2.w = r3.w + r2.w;
    r2.w = cmp(r2.w == 0.000000);
  } else {
    r2.w = -1;
  }
  if (r2.w == 0) {
    r4.xy = r1.xx * float2(0.5,0.5) + float2(6.33333349,7);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r2.w = x1[0].x;
    r3.w = x0[0].x;
    r4.x = r4.x * r4.x + -r2.w;
    r2.w = r3.w * r4.x + r2.w;
    x1[0].x = r2.w;
    r4.xzw = r12.xyz * r2.www + r9.xyz;
    r2.w = cmp(r1.z < r2.w);
    r4.xz = renderTargetSize.xy * r4.xz;
    r11.xy = (int2)r4.xz;
    r11.zw = float2(0,0);
    r4.x = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.x >= 0.984375);
    r5.z = 1.01587307 * r4.x;
    r4.x = r4.x * 64 + -63;
    r4.x = r4.z ? r4.x : r5.z;
    r4.x = max(9.99999994e-09, r4.x);
    r4.x = rcp(r4.x);
    r4.z = x2[0].x;
    r4.z = r2.w ? r4.x : r4.z;
    x2[0].x = r4.z;
    r4.x = 0.0419999994 + r4.x;
    r4.x = r4.w * r4.x;
    r4.x = cmp(1 < r4.x);
    r4.x = r4.x ? 1.000000 : 0;
    r4.x = r4.x * r3.w;
    r2.w = r2.w ? r4.x : r3.w;
    x0[0].x = r2.w;
    r3.w = x1[1].x;
    r4.x = x0[1].x;
    r4.y = r4.y * r4.y + -r3.w;
    r3.w = r4.x * r4.y + r3.w;
    x1[1].x = r3.w;
    r4.yzw = r2.xyz * r3.www + r9.xyz;
    r3.w = cmp(r1.z < r3.w);
    r4.yz = renderTargetSize.xy * r4.yz;
    r11.xy = (int2)r4.yz;
    r11.zw = float2(0,0);
    r4.y = floatZSampler.Load(r11.xyz).x;
    r4.z = cmp(r4.y >= 0.984375);
    r5.z = 1.01587307 * r4.y;
    r4.y = r4.y * 64 + -63;
    r4.y = r4.z ? r4.y : r5.z;
    r4.y = max(9.99999994e-09, r4.y);
    r4.y = rcp(r4.y);
    r4.z = x2[1].x;
    r4.z = r3.w ? r4.y : r4.z;
    x2[1].x = r4.z;
    r4.y = 0.0419999994 + r4.y;
    r4.y = r4.w * r4.y;
    r4.y = cmp(1 < r4.y);
    r4.y = r4.y ? 1.000000 : 0;
    r4.y = r4.x * r4.y;
    r3.w = r3.w ? r4.y : r4.x;
    x0[1].x = r3.w;
    r2.w = r3.w + r2.w;
    r2.w = cmp(r2.w == 0.000000);
  } else {
    r2.w = -1;
  }
  if (r2.w == 0) {
    r4.xy = r1.xx * float2(0.5,0.5) + float2(7.33333349,8);
    r4.xy = float2(0.117647059,0.117647059) * r4.xy;
    r1.x = x1[0].x;
    r2.w = x0[0].x;
    r3.w = r4.x * r4.x + -r1.x;
    r1.x = r2.w * r3.w + r1.x;
    r4.xzw = r12.xyz * r1.xxx + r9.xyz;
    r1.x = cmp(r1.z < r1.x);
    r4.xz = renderTargetSize.xy * r4.xz;
    r11.xy = (int2)r4.xz;
    r11.zw = float2(0,0);
    r3.w = floatZSampler.Load(r11.xyz).x;
    r4.x = cmp(r3.w >= 0.984375);
    r4.z = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.x ? r3.w : r4.z;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.x = x2[0].x;
    r4.x = r1.x ? r3.w : r4.x;
    x2[0].x = r4.x;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r4.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r3.w * r2.w;
    r1.x = r1.x ? r3.w : r2.w;
    x0[0].x = r1.x;
    r1.x = x1[1].x;
    r2.w = x0[1].x;
    r3.w = r4.y * r4.y + -r1.x;
    r1.x = r2.w * r3.w + r1.x;
    r2.xyz = r2.xyz * r1.xxx + r9.xyz;
    r1.x = cmp(r1.z < r1.x);
    r2.xy = renderTargetSize.xy * r2.xy;
    r4.xy = (int2)r2.xy;
    r4.zw = float2(0,0);
    r1.z = floatZSampler.Load(r4.xyz).x;
    r2.x = cmp(r1.z >= 0.984375);
    r2.y = 1.01587307 * r1.z;
    r1.z = r1.z * 64 + -63;
    r1.z = r2.x ? r1.z : r2.y;
    r1.z = max(9.99999994e-09, r1.z);
    r1.z = rcp(r1.z);
    r2.x = x2[1].x;
    r2.x = r1.x ? r1.z : r2.x;
    x2[1].x = r2.x;
    r1.z = 0.0419999994 + r1.z;
    r1.z = r2.z * r1.z;
    r1.z = cmp(1 < r1.z);
    r1.z = r1.z ? 1.000000 : 0;
    r1.z = r2.w * r1.z;
    r1.x = r1.x ? r1.z : r2.w;
    x0[1].x = r1.x;
  }
  r1.x = x2[0].x;
  r1.x = r1.x + -r8.z;
  r1.x = cmp(3 < abs(r1.x));
  r1.z = x0[0].x;
  r1.z = -r1.z * 0.5 + 1;
  r1.x = r1.x ? 0.5 : r1.z;
  r1.z = x2[1].x;
  r1.z = r1.z + -r8.z;
  r1.z = cmp(3 < abs(r1.z));
  r2.x = x0[1].x;
  r2.x = 0.5 * r2.x;
  r1.z = r1.z ? -0.5 : -r2.x;
  r1.x = r1.x + r1.z;
  r1.x = saturate(1 + -r1.x);
  r1.z = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.z * r1.x;
  r1.x = min(r17.w, r1.x);
  r1.x = r17.z * r1.x;
  r2.xyz = r1.xxx * r36.xyz;
  r4.xyz = r2.xyz * r38.xyz + r32.xyz;
  r8.xyz = r2.xyz * r39.xyz + r33.xyz;
  r9.xyz = r2.xyz * r40.xyz + r35.xyz;
  r2.xyz = r2.xyz * r41.xyz + r34.xyz;
  r11.xyz = -v4.xyz + v2.xyz;
  r0.yzw = r0.yzw * r1.www + r11.xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r11.xyz = r1.xxx * r0.yzw;
  r5.x = saturate(dot(r11.xyz, r7.xyz));
  r0.y = dot(-r7.xyz, r11.xyz);
  r0.y = r0.y + r0.y;
  r7.xyz = r11.xyz * -r0.yyy + -r7.xyz;
  r0.y = 1 + -r5.y;
  r0.z = log2(r0.y);
  r0.z = 1.75028002 * r0.z;
  r0.z = exp2(r0.z);
  r12.y = 1 + -r0.z;
  r0.z = 1 + -r1.y;
  r0.w = dot(r11.xyz, r10.yzw);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * 63 + 0.5;
  r0.w = floor(r0.w);
  r0.z = r0.z + r0.w;
  r12.x = 0.015625 * r0.z;
  r0.z = coneLUTMap.SampleLevel(PointSampler_s, r12.xy, 0).x;
  r0.w = 5 * r0.y;
  r1.x = r0.y * 5 + -2.5;
  r1.x = saturate(0.400000006 * r1.x);
  r1.x = 100 * r1.x;
  r1.yz = -r0.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r1.y = exp2(r1.y);
  r1.y = r5.x * r1.y;
  r1.w = r0.w * r0.y;
  r1.z = -r1.w * 2.0159049 + r1.z;
  r1.z = exp2(r1.z);
  r1.z = r5.x * r1.z;
  r1.yz = float2(9.1368103,9.70808983) * r1.yz;
  r1.y = max(r1.y, r1.z);
  r1.y = max(1.26815999, r1.y);
  r1.z = numRefProbes + -numOverrideProbes;
  r1.w = (int)r1.z & -32;
  r2.w = (int)-r1.w + (int)r1.z;
  r3.w = numRefProbes & -32;
  r4.w = (int)-r3.w + numRefProbes;
  r10.xy = float2(0,0);
  r12.w = 0;
  r13.yz = float2(0,1);
  r14.xy = float2(0,0);
  r15.x = 1;
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r19.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r5.z = r1.w;
  while (true) {
    r5.w = cmp((uint)r5.z >= numRefProbes);
    if (r5.w != 0) break;
    r10.z = (uint)r5.z >> 5;
    r12.xyz = (int3)r10.xyz + (int3)r18.xyz;
    r5.w = visibleProbes.Load(r12.xyzw).x;
    r6.w = cmp((int)r1.w == (int)r5.z);
    bitmask.w = ((~(-1 << r2.w)) << 0) & 0xffffffff;  r8.w = (((uint)0 << 0) & bitmask.w) | ((uint)r5.w & ~bitmask.w);
    r5.w = r6.w ? r8.w : r5.w;
    r6.w = cmp((int)r3.w == (int)r5.z);
    if (r4.w == 0) r8.w = 0; else if (r4.w+0 < 32) {     r8.w = (uint)r5.w << (32-(r4.w + 0)); r8.w = (uint)r8.w >> (32-r4.w);    } else r8.w = (uint)r5.w >> 0;
    r5.w = r6.w ? r8.w : r5.w;
    r6.w = (int)r5.z + numLights;
    r21.xyzw = r19.xyzw;
    r22.xyz = r20.yzw;
    r8.w = r5.w;
    while (true) {
      if (r8.w == 0) break;
      r9.w = firstbitlow((uint)r8.w);
      r10.z = 1 << (int)r9.w;
      r10.w = (int)r8.w & (int)r10.z;
      if (r10.w != 0) {
        r8.w = (int)r8.w ^ (int)r10.z;
        r10.z = (int)r6.w + (int)r9.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r10.z, l(0), t11.xyzw
      r23.x = samp0[]..swiz;
      r23.y = samp0[]..swiz;
      r23.z = samp0[]..swiz;
      r23.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r10.z, l(16), t11.xyxx
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
        r23.xyz = -v7.xyz + r23.xyz;
        r12.z = r23.w;
        r12.xyz = cmp(abs(r23.xyz) < r12.zxy);
        r10.z = r12.y ? r12.x : 0;
        r10.z = r12.z ? r10.z : 0;
        if (r10.z != 0) {
          r9.w = (int)r5.z + (int)r9.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r9.w, l(0), t15.wxyz
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.zw, r9.w, l(96), t15.xxxy
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r9.w, l(116), t15.zwxy
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
          r12.xyz = v7.xyz + -r23.yzw;
          r13.w = (int)r24.w & 0x0000ffff;
          if (6 == 0) r14.w = 0; else if (6+25 < 32) {           r14.w = (uint)r24.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);          } else r14.w = (uint)r24.w >> 25;
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
          r15.z = dot(r25.xyz, r12.xyz);
          r15.z = saturate(r15.z + r25.w);
          r15.w = dot(r26.xyz, r12.xyz);
          r15.w = saturate(r15.w + r26.w);
          r15.z = r15.z * r15.w;
          r15.w = dot(r27.xyz, r12.xyz);
          r15.w = saturate(r15.w + r27.w);
          r15.z = r15.z * r15.w;
          r15.w = dot(r28.xyz, r12.xyz);
          r15.w = saturate(r15.w + r28.w);
          r15.z = r15.z * r15.w;
          r15.w = dot(r29.xyz, r12.xyz);
          r15.w = saturate(r15.w + r29.w);
          r15.z = r15.z * r15.w;
          r15.w = dot(r30.xyz, r12.xyz);
          r15.w = saturate(r15.w + r30.w);
          r13.x = r15.z * r15.w;
          r15.z = (int)r10.z & 1;
          r15.zw = r15.zz ? r13.xy : r13.zx;
          r13.x = r10.z;
          r25.xy = r15.zw;
          r16.w = 1;
          while (true) {
            r17.w = cmp((int)r16.w >= (int)r14.w);
            if (r17.w != 0) break;
            r17.w = (int)r13.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r17.w, l(0), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(16), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(32), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r17.w = dot(r26.xyz, r12.xyz);
            r17.w = saturate(r17.w + r26.w);
            r17.w = r25.x * r17.w;
            r18.w = dot(r27.xyz, r12.xyz);
            r18.w = saturate(r18.w + r27.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r28.xyz, r12.xyz);
            r18.w = saturate(r18.w + r28.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r29.xyz, r12.xyz);
            r18.w = saturate(r18.w + r29.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r30.xyz, r12.xyz);
            r18.w = saturate(r18.w + r30.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r31.xyz, r12.xyz);
            r18.w = saturate(r18.w + r31.w);
            r25.x = r18.w * r17.w;
            r23.w = (uint)r13.x >> 2;
            if (1 == 0) r25.z = 0; else if (1+2 < 32) {             r25.z = (uint)r13.x << (32-(1 + 2)); r25.z = (uint)r25.z >> (32-1);            } else r25.z = (uint)r13.x >> 2;
            r25.w = (int)r23.w & 2;
            r26.x = max(r25.y, r25.x);
            r17.w = -r17.w * r18.w + 1;
            r17.w = r25.y * r17.w;
            r15.y = r25.w ? r17.w : r26.x;
            r25.xy = r25.zz ? r25.xy : r15.xy;
            r16.w = (int)r16.w + 1;
            r13.x = r23.w;
          }
          r25.y = saturate(r25.y);
          r10.z = r25.y * r10.w;
          r13.x = cmp(0 < r10.z);
          if (r13.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r9.w, l(16), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r9.w, l(32), t15.yxwz
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(48), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(64), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(80), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(132), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(148), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(164), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(180), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(196), t15.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r9.w, l(212), t15.xyxx
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
            r22.z = r25.y * r10.w + r22.z;
            r9.w = r10.z * r24.z;
            r24.z = r31.z;
            r10.z = dot(r7.xyz, r24.xyz);
            r10.w = dot(r12.xyz, r24.xyz);
            r10.w = r10.w + -r31.w;
            r13.x = cmp(r10.w >= 0);
            r10.w = max(abs(r10.w), r1.x);
            r10.w = r13.x ? r10.w : -r10.w;
            r10.z = max(1.00000001e-07, -r10.z);
            r10.z = r10.w / r10.z;
            r10.z = min(131072, abs(r10.z));
            r31.z = r32.z;
            r10.w = dot(r7.xyz, r31.xyz);
            r13.x = dot(r12.xyz, r31.xyz);
            r13.x = r13.x + -r32.w;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r1.x);
            r13.x = r13.w ? r13.x : -r13.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r13.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r32.z = r33.z;
            r10.w = dot(r7.xyz, r32.xyz);
            r13.x = dot(r12.xyz, r32.xyz);
            r13.x = r13.x + -r33.w;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r1.x);
            r13.x = r13.w ? r13.x : -r13.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r13.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r33.z = r34.z;
            r10.w = dot(r7.xyz, r33.xyz);
            r13.x = dot(r12.xyz, r33.xyz);
            r13.x = r13.x + -r34.w;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r1.x);
            r13.x = r13.w ? r13.x : -r13.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r13.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r34.z = r35.x;
            r10.w = dot(r7.xyz, r34.xyz);
            r13.x = dot(r12.xyz, r34.xyz);
            r13.x = r13.x + -r35.y;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r1.x);
            r13.x = r13.w ? r13.x : -r13.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r13.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r36.zw = r35.zw;
            r10.w = dot(r7.zxy, r36.xzw);
            r13.x = dot(r12.zxy, r36.xzw);
            r13.x = r13.x + -r36.y;
            r13.w = cmp(r13.x >= 0);
            r13.x = max(abs(r13.x), r1.x);
            r13.x = r13.w ? r13.x : -r13.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r13.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r24.x = r28.w;
            r24.yz = r29.zw;
            r15.yzw = r24.xyz + r12.xyz;
            r15.yzw = r7.xyz * r10.zzz + r15.yzw;
            r10.w = dot(r15.yzw, r15.yzw);
            r10.w = sqrt(r10.w);
            r10.z = r10.z / r10.w;
            r10.z = r10.z + r10.z;
            r10.z = sqrt(r10.z);
            r10.z = r0.y * 5 + r10.z;
            r10.z = -0.844799995 + r10.z;
            r23.y = r26.z;
            r23.z = r27.x;
            r31.x = dot(r15.yzw, r23.xyz);
            r24.xy = r26.xw;
            r24.z = r27.w;
            r31.y = dot(r15.yzw, r24.xyz);
            r27.x = r26.y;
            r31.z = dot(r15.yzw, r27.xyz);
            if (9 == 0) r10.w = 0; else if (9+16 < 32) {             r10.w = (uint)r24.w << (32-(9 + 16)); r10.w = (uint)r10.w >> (32-9);            } else r10.w = (uint)r24.w >> 16;
            r31.w = (uint)r10.w;
            r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r10.z).xyz;
            r26.x = dot(r12.xyz, r23.xyz);
            r26.y = dot(r12.xyz, r24.xyz);
            r26.z = dot(r12.xyz, r27.xyz);
            r12.xyz = saturate(r26.xyz * r28.xyz + float3(0.5,0.5,0.5));
            r29.z = r30.x;
            r12.xyz = r12.xyz * r29.xyz + r30.yzw;
            r31.x = dot(r11.xyz, r23.xyz);
            r31.y = dot(r11.xyz, r24.xyz);
            r31.z = dot(r11.xyz, r27.xyz);
            r23.xyz = cmp(float3(0,0,0) < r31.xyz);
            r14.z = r23.x ? 0 : 0.5;
            r24.xyz = r14.xyz + r12.xyz;
            r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
            r25.xzw = r31.xyz * r31.xyz;
            r25.xzw = r25.xzw * r9.www;
            r16.z = r23.y ? 0 : 0.5;
            r23.xyw = r16.xyz + r12.xyz;
            r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
            r23.xyw = r23.xyw * r25.zzz;
            r23.xyw = r24.xyz * r25.xxx + r23.xyw;
            r17.z = r23.z ? 0 : 0.5;
            r12.xyz = r17.xyz + r12.xyz;
            r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
            r12.xyz = r12.xyz * r25.www + r23.xyw;
            r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
            r24.xyz = r23.xyz * r12.xyz;
            r10.z = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r21.xyz = r12.xyz * r23.xyz + r21.xyz;
            r10.w = r10.z * r1.y;
            r12.xyz = r15.yzw * r9.www;
            r9.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r9.w = r1.y * r10.z + r9.w;
            r9.w = r10.w / r9.w;
            r23.x = r21.w;
            r23.yz = r22.xy;
            r22.xyw = r12.yzx * r9.www + r23.yzx;
            r21.w = r22.w;
          }
        }
      }
    }
    r19.xyzw = r21.xyzw;
    r20.yzw = r22.xyz;
    r5.z = (int)r5.z + 32;
  }
  r3.w = cmp(r20.w < 1);
  if (r3.w != 0) {
    r10.xy = float2(0,0);
    r12.w = 0;
    r13.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.x = 1;
    r16.xy = float2(0,0);
    r17.xy = float2(0,0);
    r21.x = r19.w;
    r21.yzw = r20.yzw;
    r22.xyz = r19.xyz;
    r3.w = r20.w;
    r4.w = 0;
    while (true) {
      r5.z = cmp((uint)r4.w >= (uint)r1.z);
      if (r5.z != 0) break;
      r10.z = (uint)r4.w >> 5;
      r12.xyz = (int3)r10.xyz + (int3)r18.xyz;
      r5.z = visibleProbes.Load(r12.xyzw).x;
      r5.w = cmp((int)r1.w == (int)r4.w);
      if (r2.w == 0) r6.w = 0; else if (r2.w+0 < 32) {       r6.w = (uint)r5.z << (32-(r2.w + 0)); r6.w = (uint)r6.w >> (32-r2.w);      } else r6.w = (uint)r5.z >> 0;
      r5.z = r5.w ? r6.w : r5.z;
      r5.w = (int)r4.w + numLights;
      r23.xyzw = r21.xyzw;
      r12.xyz = r22.xyz;
      r6.w = r3.w;
      r8.w = r5.z;
      while (true) {
        if (r8.w == 0) break;
        r9.w = firstbitlow((uint)r8.w);
        r10.z = 1 << (int)r9.w;
        r10.w = (int)r8.w & (int)r10.z;
        if (r10.w != 0) {
          r8.w = (int)r8.w ^ (int)r10.z;
          r10.z = (int)r5.w + (int)r9.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r10.z, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r10.z, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v7.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r10.z = r24.y ? r24.x : 0;
          r10.z = r24.z ? r10.z : 0;
          if (r10.z != 0) {
            r9.w = (int)r4.w + (int)r9.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r9.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.zw, r9.w, l(96), t15.xxxy
          r10.z = samp0[]..swiz;
          r10.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r9.w, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v7.xyz + -r24.yzw;
            r13.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r14.w = 0; else if (6+25 < 32) {             r14.w = (uint)r25.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);            } else r14.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r15.z = dot(r27.xyz, r26.xyz);
            r15.z = saturate(r15.z + r27.w);
            r15.w = dot(r28.xyz, r26.xyz);
            r15.w = saturate(r15.w + r28.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r29.xyz, r26.xyz);
            r15.w = saturate(r15.w + r29.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r30.xyz, r26.xyz);
            r15.w = saturate(r15.w + r30.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r31.xyz, r26.xyz);
            r15.w = saturate(r15.w + r31.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r32.xyz, r26.xyz);
            r15.w = saturate(r15.w + r32.w);
            r13.x = r15.z * r15.w;
            r15.z = (int)r10.z & 1;
            r15.zw = r15.zz ? r13.xy : r13.zx;
            r13.x = r10.z;
            r27.xy = r15.zw;
            r16.w = 1;
            while (true) {
              r17.w = cmp((int)r16.w >= (int)r14.w);
              if (r17.w != 0) break;
              r17.w = (int)r13.w + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(16), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(32), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(48), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(64), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(80), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r17.w = dot(r28.xyz, r26.xyz);
              r17.w = saturate(r17.w + r28.w);
              r17.w = r27.x * r17.w;
              r18.w = dot(r29.xyz, r26.xyz);
              r18.w = saturate(r18.w + r29.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r30.xyz, r26.xyz);
              r18.w = saturate(r18.w + r30.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r31.xyz, r26.xyz);
              r18.w = saturate(r18.w + r31.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r32.xyz, r26.xyz);
              r18.w = saturate(r18.w + r32.w);
              r17.w = r18.w * r17.w;
              r18.w = dot(r33.xyz, r26.xyz);
              r18.w = saturate(r18.w + r33.w);
              r27.x = r18.w * r17.w;
              r22.w = (uint)r13.x >> 2;
              if (1 == 0) r24.w = 0; else if (1+2 < 32) {               r24.w = (uint)r13.x << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);              } else r24.w = (uint)r13.x >> 2;
              r26.w = (int)r22.w & 2;
              r27.z = max(r27.y, r27.x);
              r17.w = -r17.w * r18.w + 1;
              r17.w = r27.y * r17.w;
              r15.y = r26.w ? r17.w : r27.z;
              r27.xy = r24.ww ? r27.xy : r15.xy;
              r16.w = (int)r16.w + 1;
              r13.x = r22.w;
            }
            r10.z = saturate(r27.y + -r6.w);
            r13.x = r10.z * r10.w;
            r13.w = cmp(0 < r13.x);
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r9.w, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r23.w = r10.z * r10.w + r23.w;
              r9.w = r13.x * r25.z;
              r25.z = r33.z;
              r10.z = dot(r7.xyz, r25.xyz);
              r10.w = dot(r26.xyz, r25.xyz);
              r10.w = r10.w + -r33.w;
              r13.x = cmp(r10.w >= 0);
              r10.w = max(abs(r10.w), r1.x);
              r10.w = r13.x ? r10.w : -r10.w;
              r10.z = max(1.00000001e-07, -r10.z);
              r10.z = r10.w / r10.z;
              r10.z = min(131072, abs(r10.z));
              r33.z = r34.z;
              r10.w = dot(r7.xyz, r33.xyz);
              r13.x = dot(r26.xyz, r33.xyz);
              r13.x = r13.x + -r34.w;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r1.x);
              r13.x = r13.w ? r13.x : -r13.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r13.x / r10.w;
              r10.z = min(r10.z, abs(r10.w));
              r34.z = r35.z;
              r10.w = dot(r7.xyz, r34.xyz);
              r13.x = dot(r26.xyz, r34.xyz);
              r13.x = r13.x + -r35.w;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r1.x);
              r13.x = r13.w ? r13.x : -r13.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r13.x / r10.w;
              r10.z = min(r10.z, abs(r10.w));
              r35.z = r36.z;
              r10.w = dot(r7.xyz, r35.xyz);
              r13.x = dot(r26.xyz, r35.xyz);
              r13.x = r13.x + -r36.w;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r1.x);
              r13.x = r13.w ? r13.x : -r13.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r13.x / r10.w;
              r10.z = min(r10.z, abs(r10.w));
              r36.z = r37.x;
              r10.w = dot(r7.xyz, r36.xyz);
              r13.x = dot(r26.xyz, r36.xyz);
              r13.x = r13.x + -r37.y;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r1.x);
              r13.x = r13.w ? r13.x : -r13.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r13.x / r10.w;
              r10.z = min(r10.z, abs(r10.w));
              r38.zw = r37.zw;
              r10.w = dot(r7.zxy, r38.xzw);
              r13.x = dot(r26.zxy, r38.xzw);
              r13.x = r13.x + -r38.y;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r1.x);
              r13.x = r13.w ? r13.x : -r13.x;
              r10.w = max(1.00000001e-07, -r10.w);
              r10.w = r13.x / r10.w;
              r10.z = min(r10.z, abs(r10.w));
              r25.x = r30.w;
              r25.yz = r31.zw;
              r15.yzw = r25.xyz + r26.xyz;
              r15.yzw = r7.xyz * r10.zzz + r15.yzw;
              r10.w = dot(r15.yzw, r15.yzw);
              r10.w = sqrt(r10.w);
              r10.z = r10.z / r10.w;
              r10.z = r10.z + r10.z;
              r10.z = sqrt(r10.z);
              r10.z = r0.y * 5 + r10.z;
              r10.z = -0.844799995 + r10.z;
              r24.y = r28.z;
              r24.z = r29.x;
              r33.x = dot(r15.yzw, r24.xyz);
              r25.xy = r28.xw;
              r25.z = r29.w;
              r33.y = dot(r15.yzw, r25.xyz);
              r29.x = r28.y;
              r33.z = dot(r15.yzw, r29.xyz);
              if (9 == 0) r10.w = 0; else if (9+16 < 32) {               r10.w = (uint)r25.w << (32-(9 + 16)); r10.w = (uint)r10.w >> (32-9);              } else r10.w = (uint)r25.w >> 16;
              r33.w = (uint)r10.w;
              r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r10.z).xyz;
              r28.x = dot(r26.xyz, r24.xyz);
              r28.y = dot(r26.xyz, r25.xyz);
              r28.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r11.xyz, r24.xyz);
              r33.y = dot(r11.xyz, r25.xyz);
              r33.z = dot(r11.xyz, r29.xyz);
              r24.xyz = cmp(float3(0,0,0) < r33.xyz);
              r14.z = r24.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r14.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xzw = r33.xyz * r33.xyz;
              r27.xzw = r27.xzw * r9.www;
              r16.z = r24.y ? 0 : 0.5;
              r24.xyw = r26.xyz + r16.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r27.zzz;
              r24.xyw = r25.xyz * r27.xxx + r24.xyw;
              r17.z = r24.z ? 0 : 0.5;
              r25.xyz = r26.xyz + r17.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r24.xyz = r25.xyz * r27.www + r24.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r26.xyz = r25.xyz * r24.xyz;
              r10.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r12.xyz = r24.xyz * r25.xyz + r12.xyz;
              r10.w = r10.z * r1.y;
              r15.yzw = r15.yzw * r9.www;
              r9.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r9.w = r1.y * r10.z + r9.w;
              r9.w = r10.w / r9.w;
              r23.xyz = r15.yzw * r9.www + r23.xyz;
            }
          }
        }
      }
      r21.xyzw = r23.xyzw;
      r22.xyz = r12.xyz;
      r4.w = (int)r4.w + 32;
    }
    r20.xyzw = r21.zxyw;
    r19.xyz = r22.xyz;
    r20.xyzw = r20.yzxw;
  } else {
    r20.x = r19.w;
  }
  r0.y = max(1, r20.w);
  r0.y = rcp(r0.y);
  r20.w = saturate(r20.w);
  r1.xyz = r19.xyz * r0.yyy;
  r10.xyz = r20.xyz * r0.yyy;
  r1.w = cmp(r20.w < 0.99000001);
  if (r1.w != 0) {
    r1.w = 1 + -r20.w;
    r2.w = sunConstants.globalProbeExposure * r1.w;
    r12.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r13.x = globalProbeConstants.data[0].w * r12.x;
    r13.yz = globalProbeConstants.data[1].xy * r12.yz;
    r12.xyz = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r12.xy;
    r13.z = globalProbeConstants.data[2].x * r12.z;
    r12.xyz = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = cmp(float3(0,0,0) < r11.xyz);
    r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r13.w = 0;
    r14.xyz = r13.wwx + r12.xyz;
    r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r15.xyz = r11.xyz * r11.xyz;
    r15.xyz = r15.xyz * r2.www;
    r16.xyz = r13.wwy + r12.xyz;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r14.xyz = r14.xyz * r15.xxx + r16.xyz;
    r12.xyz = r13.wwz + r12.xyz;
    r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r15.zzz + r14.xyz;
    r11.w = 0;
    r11.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r11.xyz = r12.xyz * r11.xyz;
    r2.w = dot(r11.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r1.xyz = r19.xyz * r0.yyy + r11.xyz;
    r7.w = 0;
    r7.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r7.xyzw, r0.w).xyz;
    r0.y = sunConstants.globalProbeExposure * r1.w + -r2.w;
    r0.y = r5.y * r0.y + r2.w;
    r10.xyz = r7.xyz * r0.yyy + r10.xyz;
  }
  r4.xyz = r1.xyz * r6.xyz + r4.xyz;
  r1.xyz = r1.xyz * r6.xyz + r8.xyz;
  r0.yw = r5.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r0.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r0.yw, 0).xy;
  r5.xyz = r10.xyz * r0.zzz;
  r2.xyz = r5.xyz * r0.yyy + r2.xyz;
  r0.yzw = r5.xyz * r0.www + r9.xyz;
  r1.xyz = r1.xyz * r3.xyz + r4.xyz;
  r2.xyz = float3(0.972000003,0.972000003,0.972000003) * r2.xyz;
  r0.yzw = r0.yzw * float3(0.0280000009,0.0280000009,0.0280000009) + r2.xyz;
  r1.w = saturate(0.0399999991 + r0.x);
  r2.xyz = r1.www * r0.yzw;
  r2.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r2.w != 0) {
    r3.x = dot(v7.xyz, v7.xyz);
    r3.x = sqrt(r3.x);
    r3.y = cmp(0 < fogConstants.blendAmount);
    if (r3.y != 0) {
      r3.yz = r3.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.yz = fogConstants.atmospherefogdensityatcamera.xy * r3.yz;
      r3.w = cmp(0.00999999978 < abs(v7.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r3.yz;
      r3.yz = r3.ww ? r4.xy : r3.yz;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
      r4.xyz = exp2(r4.xyz);
      r3.yzw = fogConstants.atmosphereTotalDensity.xyz * r3.zzz;
      r3.yzw = exp2(r3.yzw);
      r3.yzw = r3.yzw + -r4.xyz;
      r3.yzw = fogConstants.blendAmount * r3.yzw + r4.xyz;
    } else {
      r3.x = r3.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r3.x = fogConstants.atmospherefogdensityatcamera.x * r3.x;
      r4.x = cmp(0.00999999978 < abs(v7.z));
      r4.y = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r4.z = -1.44269502 * r4.y;
      r4.z = exp2(r4.z);
      r4.z = 1 + -r4.z;
      r4.y = r4.z / r4.y;
      r4.y = r4.y * r3.x;
      r3.x = r4.x ? r4.y : r3.x;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
      r3.yzw = exp2(r4.xyz);
    }
    r3.xyz = r3.yzw * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
    r3.xyz = r3.xyz * r1.xyz;
  } else {
    r3.w = fogConstants.heightFalloff * v7.z;
    r4.x = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r4.y = cmp(abs(r3.w) < 9.99999975e-05);
    r4.z = min(64, r4.x);
    r4.z = 1.44269502 * r4.z;
    r4.z = exp2(r4.z);
    r4.w = saturate(fogConstants.K0b);
    r5.x = cmp(r4.x < 0);
    r4.x = 1 + r4.x;
    r4.x = r5.x ? r4.z : r4.x;
    r4.x = -fogConstants.K0b + r4.x;
    r3.w = r4.y ? 1 : r3.w;
    r3.w = r4.x / r3.w;
    r3.w = r4.y ? r4.w : r3.w;
    r3.w = fogConstants.expMul * r3.w;
    r4.x = dot(v7.xyz, v7.xyz);
    r4.y = sqrt(r4.x);
    r3.w = r3.w * r4.y + fogConstants.expAdd;
    r3.w = exp2(r3.w);
    r3.w = min(1, r3.w);
    r3.w = 1 + -r3.w;
    r4.x = rsqrt(r4.x);
    r4.xyz = v7.xyz * r4.xxx;
    r4.x = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r4.x = saturate(fogConstants.sunFogAngles.y * r4.x + fogConstants.sunFogAngles.x);
    r4.y = -fogConstants.sunFogColor.w + fogConstants.fogColor.w;
    r4.x = r4.x * r4.y + fogConstants.sunFogColor.w;
    r3.w = r4.x * r3.w;
    r3.xyz = r3.www * -r1.xyz + r1.xyz;
  }
  r1.xyz = relHDRExposure.yyy * r3.xyz;
  r3.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r3.xyz ? r1.xyz : 0;
  o1.xyz = min(float3(65024,65024,64512), r1.xyz);
  if (r2.w != 0) {
    r1.x = dot(v7.xyz, v7.xyz);
    r1.y = rsqrt(r1.x);
    r3.xyz = v7.xyz * r1.yyy;
    r1.x = sqrt(r1.x);
    r1.y = cmp(0 < fogConstants.blendAmount);
    if (r1.y != 0) {
      r1.yz = r1.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.yz = fogConstants.atmospherefogdensityatcamera.xy * r1.yz;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r1.yz;
      r1.yz = r2.ww ? r4.xy : r1.yz;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.yyy;
      r4.xyz = exp2(r4.xyz);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.zzz;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xyz;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xyz;
    } else {
      r1.y = r1.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.y = fogConstants.atmospherefogdensityatcamera.x * r1.y;
      r1.z = cmp(0.00999999978 < abs(v7.z));
      r2.w = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r3.w = -1.44269502 * r2.w;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r2.w = r3.w / r2.w;
      r2.w = r2.w * r1.y;
      r1.y = r1.z ? r2.w : r1.y;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.yyy;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.y = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r1.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.w = fogConstants.atmosphereMieSchlickK * -r1.y + 1;
    r2.w = r2.w * r2.w;
    r2.w = 12.566371 * r2.w;
    r1.z = r1.z / r2.w;
    r1.x = -fogConstants.atmospherehazebasedist + r1.x;
    r1.x = saturate(fogConstants.atmospherehazefadedist * r1.x);
    r1.x = r1.z * r1.x;
    r1.y = saturate(r1.y);
    r1.y = r1.y * r1.y + 1;
    r1.y = r1.y * 0.0596831031 + -1;
    r1.y = fogConstants.atmospheresunstrength * r1.y + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r1.xxx;
    r1.xyz = r1.yyy * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
    r3.xyz = float3(1,1,1) + -r4.xyz;
    r1.xyz = r3.xyz * r1.xyz;
    r1.xyz = r2.xyz * r4.xyz + r1.xyz;
  } else {
    r2.w = fogConstants.heightFalloff * v7.z;
    r3.x = fogConstants.heightFalloff * v7.z + fogConstants.K0;
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
    r3.x = dot(v7.xyz, v7.xyz);
    r3.y = sqrt(r3.x);
    r2.w = r2.w * r3.y + fogConstants.expAdd;
    r2.w = exp2(r2.w);
    r2.w = min(1, r2.w);
    r2.w = 1 + -r2.w;
    r3.x = rsqrt(r3.x);
    r3.xyz = v7.xyz * r3.xxx;
    r3.x = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r3.x = saturate(fogConstants.sunFogAngles.y * r3.x + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r3.xxxx * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r2.w = r3.w * r2.w;
    r0.yzw = -r0.yzw * r1.www + r3.xyz;
    r1.xyz = r2.www * r0.yzw + r2.xyz;
  }
  r0.yzw = relHDRExposure.yyy * r1.xyz;
  r1.xyz = cmp(r0.yzw >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.yzw = r1.xyz ? r0.yzw : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.yzw);
  o2.w = r0.x;
  return;
}