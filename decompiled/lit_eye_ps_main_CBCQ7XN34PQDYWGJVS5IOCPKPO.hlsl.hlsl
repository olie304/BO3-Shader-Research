// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:35:48 2021

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
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float detailScaleHeight : packoffset(c11.z);
  float eyeIrisScale : packoffset(c11.w);
  float eyeLimbusScale : packoffset(c12);
  float eyeRedness : packoffset(c12.y);
  float eyePupilDilation : packoffset(c12.z);
  float3 emissiveTint1 : packoffset(c13);
  float hdrScale : packoffset(c13.w);
  float emissiveFalloffPower : packoffset(c14);
  float scriptController1 : packoffset(c14.y);
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
SamplerState LinearSampler_s : register(s5);
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
Texture2D<float4> detailMap : register(t24);
Texture2D<float4> causticMap : register(t25);
Texture2D<float4> emissiveMap : register(t26);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation uint v2 : TEXCOORD4,
  nointerpolation float3 w2 : TEXCOORD9,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  nointerpolation float4 v7 : TEXCOORD10,
  nointerpolation float3 v8 : TEXCOORD11,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  float4 x2[4];
  float4 x3[4];
  float4 x4[4];
  float4 x5[4];
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v3.xyz * r0.xxx;
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v4.xyz * r0.www;
  r0.w = dot(-v6.xyz, -v6.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -v6.xyz * r0.www;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = v5.xyz * r0.www;
  r0.w = rcp(eyeIrisScale);
  r4.xy = float2(-0.5,-0.5) + w1.xy;
  r1.w = dot(r4.xy, r4.xy);
  r1.w = sqrt(r1.w);
  r2.w = max(9.99999975e-06, r1.w);
  r2.w = rcp(r2.w);
  r4.xy = r4.xy * r2.ww;
  r0.w = r1.w * r0.w;
  r1.w = -eyeIrisScale * 0.5 + r1.w;
  r2.w = -eyeIrisScale * 0.5 + 0.5;
  r1.w = r1.w / r2.w;
  r2.w = cmp(r1.w < 0);
  r0.w = 0.439999998 * r0.w;
  r1.w = r1.w * 0.280000001 + 0.219999999;
  r0.w = r2.w ? r0.w : r1.w;
  r4.zw = r4.xy * r0.ww + float2(0.5,0.5);
  r1.w = eyeLimbusScale * 0.0500000007 + 0.0199999996;
  r2.w = r1.w + r0.w;
  r2.w = -0.200000003 + r2.w;
  r2.w = r2.w / r1.w;
  r2.w = -r2.w * 10 + 5;
  r2.w = 1.44269502 * r2.w;
  r2.w = exp2(r2.w);
  r2.w = 1 + r2.w;
  r2.w = 1.01357996 / r2.w;
  r2.w = saturate(-0.00669999979 + r2.w);
  r5.x = 1 + -r2.w;
  r2.w = dot(w2.xyz, w2.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = w2.xyz * r2.www;
  r3.w = r0.w * r0.w;
  r3.w = saturate(-r3.w * 18.3999996 + 1);
  r3.w = 0.101000004 * r3.w;
  r5.w = dot(r0.xyz, r2.xyz);
  r7.xy = r5.ww * float2(0.726957142,0.726957142) + float2(-0.726957142,0.726957142);
  r6.w = r7.x * r7.y + 1;
  r6.w = sqrt(r6.w);
  r6.w = r5.w * 0.726957142 + -r6.w;
  r7.xyz = float3(0.726957142,0.726957142,0.726957142) * r2.xyz;
  r7.xyz = r6.www * r0.xyz + -r7.xyz;
  r6.w = dot(r6.xyz, -r7.xyz);
  r6.w = r3.w / r6.w;
  r7.xyz = r6.www * r7.xyz;
  r8.x = dot(r7.xyz, v7.xyz);
  r8.y = dot(r7.xyz, v8.xyz);
  r5.y = 0.741839767;
  r7.xy = r8.xy * r5.xy;
  r5.z = -r5.x;
  r5.yz = r5.yz * r7.xy + r4.zw;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r6.w, v2.x, l(4), t4.xxxx
r6.w = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r7.xy, r6.w, l(0), t0.xyxx
r7.x = samp0[]..swiz;
r7.y = samp0[]..swiz;
  r7.xy = saturate(r7.xy);
  r6.w = r7.x * 0.499000013 + 0.00100000005;
  r7.x = rcp(r6.w);
  r7.zw = float2(-0.5,-0.5) + r5.yz;
  r8.x = dot(r7.zw, r7.zw);
  r8.x = sqrt(r8.x);
  r8.y = max(9.99999975e-06, r8.x);
  r8.y = rcp(r8.y);
  r7.zw = r8.yy * r7.zw;
  r7.x = r8.x * r7.x;
  r8.x = -r6.w * 0.219999999 + r8.x;
  r6.w = -r6.w * 0.219999999 + 0.219999999;
  r6.w = r8.x / r6.w;
  r8.x = cmp(r6.w < 0);
  r7.x = 0.181818172 * r7.x;
  r6.w = r6.w * 0.180000007 + 0.0399999991;
  r6.w = r8.x ? r7.x : r6.w;
  r7.xz = r7.zw * r6.ww + float2(0.5,0.5);
  r4.xy = r1.ww * r4.xy + r4.zw;
  r4.xyz = colorMap.Sample(colorSampler_s, r4.xy).xyz;
  r8.xyz = colorMap.Sample(colorSampler_s, r7.xz).xyz;
  r0.w = eyeRedness * r0.w;
  r9.xy = float2(1.22000003,3.33333325) * r0.ww;
  r9.xzw = r9.xxx * r4.xyz;
  r4.xyw = r9.xzw * float3(0.299999952,-0.949999988,-0.949999988) + r4.xyz;
  r9.xyz = r4.xyw * r9.yyy;
  r9.xyz = float3(-0.300000012,-0.699999988,-0.699999988) * r9.xyz;
  r0.w = saturate(-r4.z * 2 + 1);
  r4.xyz = saturate(r0.www * r9.xyz + r4.xyw);
  r8.xyz = r8.xyz + -r4.xyz;
  o2.xyz = r5.xxx * r8.xyz + r4.xyz;
  r0.w = hdrScale * r7.y;
  r4.xyzw = emissiveMap.Sample(colorSampler_s, r7.xz).xyzw;
  r4.xyz = emissiveTint1.xyz * r4.xyz;
  r1.w = cmp(emissiveFalloffPower == 0.000000);
  r5.w = saturate(r5.w);
  r5.w = log2(r5.w);
  r5.w = emissiveFalloffPower * r5.w;
  r5.w = exp2(r5.w);
  r1.w = r1.w ? 1 : r5.w;
  r0.w = r4.w * r0.w;
  r0.w = r0.w * r1.w;
  r4.xyz = r4.xyz * r0.www;
  o2.w = r5.x * -0.300000012 + 0.5;
  r7.yw = detailScale.xy * w1.xy;
  r8.xyz = detailMap.Sample(normalSampler_s, r7.yw).xyz;
  r9.xy = r8.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r9.z = sqrt(r0.w);
  r0.w = r8.z * r8.z;
  r0.w = 0.333333343 * r0.w;
  r9.w = min(1, r0.w);
  r8.xyzw = float4(0,0,1,0) + -r9.xyzw;
  r8.xyzw = r5.xxxx * r8.xyzw + r9.xyzw;
  r0.w = dot(r8.xyzw, r8.xyzw);
  r0.w = rsqrt(r0.w);
  r8.xyz = r8.xyz * r0.www;
  r3.xyz = r8.yyy * r3.xyz;
  r1.xyz = r8.xxx * r1.xyz + r3.xyz;
  r1.xyz = r8.zzz * r0.xyz + r1.xyz;
  r0.w = r8.w * r0.w + 0.000471648847;
  r0.w = log2(r0.w);
  r0.w = saturate(-0.0588235296 * r0.w);
  r3.xyz = viewMatrix._m10_m11_m12 * r0.yyy;
  r3.xyz = r0.xxx * viewMatrix._m00_m01_m02 + r3.xyz;
  r3.xyz = r0.zzz * viewMatrix._m20_m21_m22 + r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r8.xyzw = renderTargetSize.zwzw * v0.xyxy;
  r7.yw = viewSpaceScaleBias.xy * r8.zw + -viewSpaceScaleBias.zw;
  r9.xy = v0.ww * r7.yw;
  r1.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r4.w = 3.14159989 * r1.w;
  r4.w = gameTick.w * 0.5 + r4.w;
  sincos(r4.w, r10.x, r11.x);
  r12.xyzw = float4(4.16666698,4.16666698,16.6666679,16.6666679) * renderTargetSize.zwzw;
  r11.y = r10.x;
  r13.xyzw = r12.xyzw * r11.xyxy + r8.zwzw;
  r14.xyzw = renderTargetSize.xyxy * r13.xyzw;
  r15.xy = (int2)r14.xy;
  r15.zw = float2(0,0);
  r5.w = floatZSampler.Load(r15.xyz).x;
  r6.w = cmp(r5.w >= 0.984375);
  r7.y = 1.01587307 * r5.w;
  r5.w = r5.w * 64 + -63;
  r5.w = r6.w ? r5.w : r7.y;
  r5.w = max(9.99999994e-09, r5.w);
  r15.z = rcp(r5.w);
  r13.xyzw = viewSpaceScaleBias.xyxy * r13.xyzw + -viewSpaceScaleBias.zwzw;
  r15.xy = r15.zz * r13.xy;
  r9.z = v0.w;
  r10.yzw = r15.xyz + -r9.xyz;
  r5.w = dot(r10.yzw, r10.yzw);
  r5.w = rsqrt(r5.w);
  r5.w = -r10.w * r5.w;
  r5.w = max(-1, r5.w);
  r14.xy = (int2)r14.zw;
  r14.zw = float2(0,0);
  r6.w = floatZSampler.Load(r14.xyz).x;
  r7.y = cmp(r6.w >= 0.984375);
  r7.w = 1.01587307 * r6.w;
  r6.w = r6.w * 64 + -63;
  r6.w = r7.y ? r6.w : r7.w;
  r6.w = max(9.99999994e-09, r6.w);
  r14.z = rcp(r6.w);
  r14.xy = r14.zz * r13.zw;
  r10.yzw = r14.xyz + -r9.xyz;
  r6.w = dot(r10.yzw, r10.yzw);
  r6.w = rsqrt(r6.w);
  r6.w = -r10.w * r6.w;
  r5.w = max(r6.w, r5.w);
  r13.xyzw = float4(37.5,37.5,66.6666718,66.6666718) * renderTargetSize.zwzw;
  r14.xyzw = r13.xyzw * r11.xyxy + r8.zwzw;
  r15.xyzw = renderTargetSize.xyxy * r14.xyzw;
  r16.xy = (int2)r15.xy;
  r16.zw = float2(0,0);
  r6.w = floatZSampler.Load(r16.xyz).x;
  r7.y = cmp(r6.w >= 0.984375);
  r7.w = 1.01587307 * r6.w;
  r6.w = r6.w * 64 + -63;
  r6.w = r7.y ? r6.w : r7.w;
  r6.w = max(9.99999994e-09, r6.w);
  r16.z = rcp(r6.w);
  r14.xyzw = viewSpaceScaleBias.xyxy * r14.xyzw + -viewSpaceScaleBias.zwzw;
  r16.xy = r16.zz * r14.xy;
  r10.yzw = r16.xyz + -r9.xyz;
  r6.w = dot(r10.yzw, r10.yzw);
  r6.w = rsqrt(r6.w);
  r6.w = -r10.w * r6.w;
  r5.w = max(r6.w, r5.w);
  r15.xy = (int2)r15.zw;
  r15.zw = float2(0,0);
  r6.w = floatZSampler.Load(r15.xyz).x;
  r7.y = cmp(r6.w >= 0.984375);
  r7.w = 1.01587307 * r6.w;
  r6.w = r6.w * 64 + -63;
  r6.w = r7.y ? r6.w : r7.w;
  r6.w = max(9.99999994e-09, r6.w);
  r15.z = rcp(r6.w);
  r15.xy = r15.zz * r14.zw;
  r10.yzw = r15.xyz + -r9.xyz;
  r6.w = dot(r10.yzw, r10.yzw);
  r6.w = rsqrt(r6.w);
  r6.w = -r10.w * r6.w;
  r5.w = max(r6.w, r5.w);
  r14.xyzw = float4(104.166664,104.166664,150,150) * renderTargetSize.zwzw;
  r15.xyzw = r14.xyzw * r11.xyxy + r8.zwzw;
  r16.xyzw = renderTargetSize.xyxy * r15.xyzw;
  r17.xy = (int2)r16.xy;
  r17.zw = float2(0,0);
  r6.w = floatZSampler.Load(r17.xyz).x;
  r7.y = cmp(r6.w >= 0.984375);
  r7.w = 1.01587307 * r6.w;
  r6.w = r6.w * 64 + -63;
  r6.w = r7.y ? r6.w : r7.w;
  r6.w = max(9.99999994e-09, r6.w);
  r17.z = rcp(r6.w);
  r15.xyzw = viewSpaceScaleBias.xyxy * r15.xyzw + -viewSpaceScaleBias.zwzw;
  r17.xy = r17.zz * r15.xy;
  r10.yzw = r17.xyz + -r9.xyz;
  r6.w = dot(r10.yzw, r10.yzw);
  r6.w = rsqrt(r6.w);
  r6.w = -r10.w * r6.w;
  r5.w = max(r6.w, r5.w);
  r16.xy = (int2)r16.zw;
  r16.zw = float2(0,0);
  r6.w = floatZSampler.Load(r16.xyz).x;
  r7.y = cmp(r6.w >= 0.984375);
  r7.w = 1.01587307 * r6.w;
  r6.w = r6.w * 64 + -63;
  r6.w = r7.y ? r6.w : r7.w;
  r6.w = max(9.99999994e-09, r6.w);
  r16.z = rcp(r6.w);
  r16.xy = r16.zz * r15.zw;
  r10.yzw = r16.xyz + -r9.xyz;
  r6.w = dot(r10.yzw, r10.yzw);
  r6.w = rsqrt(r6.w);
  r6.w = -r10.w * r6.w;
  r5.w = max(r6.w, r5.w);
  r12.xyzw = r12.xyzw * -r11.xyxy + r8.zwzw;
  r15.xyzw = renderTargetSize.xyxy * r12.xyzw;
  r15.xyzw = (int4)r15.zwxy;
  r16.xy = r15.zw;
  r16.zw = float2(0,0);
  r6.w = floatZSampler.Load(r16.xyz).x;
  r7.y = cmp(r6.w >= 0.984375);
  r7.w = 1.01587307 * r6.w;
  r6.w = r6.w * 64 + -63;
  r6.w = r7.y ? r6.w : r7.w;
  r6.w = max(9.99999994e-09, r6.w);
  r16.z = rcp(r6.w);
  r12.xyzw = viewSpaceScaleBias.xyxy * r12.xyzw + -viewSpaceScaleBias.zwzw;
  r16.xy = r16.zz * r12.xy;
  r10.yzw = r16.xyz + -r9.xyz;
  r6.w = dot(r10.yzw, r10.yzw);
  r6.w = rsqrt(r6.w);
  r6.w = -r10.w * r6.w;
  r6.w = max(-1, r6.w);
  r15.zw = float2(0,0);
  r7.y = floatZSampler.Load(r15.xyz).x;
  r7.w = cmp(r7.y >= 0.984375);
  r9.w = 1.01587307 * r7.y;
  r7.y = r7.y * 64 + -63;
  r7.y = r7.w ? r7.y : r9.w;
  r7.y = max(9.99999994e-09, r7.y);
  r15.z = rcp(r7.y);
  r15.xy = r15.zz * r12.zw;
  r10.yzw = r15.xyz + -r9.xyz;
  r7.y = dot(r10.yzw, r10.yzw);
  r7.y = rsqrt(r7.y);
  r7.y = -r10.w * r7.y;
  r6.w = max(r7.y, r6.w);
  r12.xyzw = r13.xyzw * -r11.xyxy + r8.zwzw;
  r13.xyzw = renderTargetSize.xyxy * r12.xyzw;
  r13.xyzw = (int4)r13.zwxy;
  r15.xy = r13.zw;
  r15.zw = float2(0,0);
  r7.y = floatZSampler.Load(r15.xyz).x;
  r7.w = cmp(r7.y >= 0.984375);
  r9.w = 1.01587307 * r7.y;
  r7.y = r7.y * 64 + -63;
  r7.y = r7.w ? r7.y : r9.w;
  r7.y = max(9.99999994e-09, r7.y);
  r15.z = rcp(r7.y);
  r12.xyzw = viewSpaceScaleBias.xyxy * r12.xyzw + -viewSpaceScaleBias.zwzw;
  r15.xy = r15.zz * r12.xy;
  r10.yzw = r15.xyz + -r9.xyz;
  r7.y = dot(r10.yzw, r10.yzw);
  r7.y = rsqrt(r7.y);
  r7.y = -r10.w * r7.y;
  r6.w = max(r7.y, r6.w);
  r13.zw = float2(0,0);
  r7.y = floatZSampler.Load(r13.xyz).x;
  r7.w = cmp(r7.y >= 0.984375);
  r9.w = 1.01587307 * r7.y;
  r7.y = r7.y * 64 + -63;
  r7.y = r7.w ? r7.y : r9.w;
  r7.y = max(9.99999994e-09, r7.y);
  r13.z = rcp(r7.y);
  r13.xy = r13.zz * r12.zw;
  r10.yzw = r13.xyz + -r9.xyz;
  r7.y = dot(r10.yzw, r10.yzw);
  r7.y = rsqrt(r7.y);
  r7.y = -r10.w * r7.y;
  r6.w = max(r7.y, r6.w);
  r8.xyzw = r14.xyzw * -r11.xyxy + r8.xyzw;
  r12.xyzw = renderTargetSize.xyxy * r8.xyzw;
  r12.xyzw = (int4)r12.zwxy;
  r13.xy = r12.zw;
  r13.zw = float2(0,0);
  r7.y = floatZSampler.Load(r13.xyz).x;
  r7.w = cmp(r7.y >= 0.984375);
  r9.w = 1.01587307 * r7.y;
  r7.y = r7.y * 64 + -63;
  r7.y = r7.w ? r7.y : r9.w;
  r7.y = max(9.99999994e-09, r7.y);
  r13.z = rcp(r7.y);
  r8.xyzw = viewSpaceScaleBias.xyxy * r8.xyzw + -viewSpaceScaleBias.zwzw;
  r13.xy = r13.zz * r8.xy;
  r10.yzw = r13.xyz + -r9.xyz;
  r7.y = dot(r10.yzw, r10.yzw);
  r7.y = rsqrt(r7.y);
  r7.y = -r10.w * r7.y;
  r6.w = max(r7.y, r6.w);
  r12.zw = float2(0,0);
  r7.y = floatZSampler.Load(r12.xyz).x;
  r7.w = cmp(r7.y >= 0.984375);
  r8.x = 1.01587307 * r7.y;
  r7.y = r7.y * 64 + -63;
  r7.y = r7.w ? r7.y : r8.x;
  r7.y = max(9.99999994e-09, r7.y);
  r12.z = rcp(r7.y);
  r12.xy = r12.zz * r8.zw;
  r8.xyz = r12.xyz + -r9.xyz;
  r7.y = dot(r8.xyz, r8.xyz);
  r7.y = rsqrt(r7.y);
  r7.y = -r8.z * r7.y;
  r6.w = max(r7.y, r6.w);
  r7.yw = viewSpaceScaleBias.xy * r11.xy;
  r8.x = dot(r7.yw, r7.yw);
  r8.x = rsqrt(r8.x);
  r8.xy = r8.xx * r7.yw;
  r8.zw = -r8.yy;
  r7.y = dot(r3.yx, r8.xz);
  r3.xy = -r8.wx * r7.yy + r3.xy;
  r7.y = dot(r3.xyz, r3.xyz);
  r7.y = rsqrt(r7.y);
  r3.xyz = r7.yyy * r3.zxy;
  r3.y = dot(r8.xy, r3.yz);
  r3.y = cmp(r3.y >= 0);
  r3.y = r3.y ? -1 : 1;
  r3.x = saturate(-r3.x);
  r3.z = 1 + -r3.x;
  r3.z = sqrt(r3.z);
  r7.y = r3.x * -0.0187292993 + 0.0742610022;
  r7.y = r7.y * r3.x + -0.212114394;
  r3.x = r7.y * r3.x + 1.57072878;
  r3.x = r3.x * r3.z;
  r3.z = r3.y * r3.x;
  r7.y = 1 + -abs(r5.w);
  r7.y = sqrt(r7.y);
  r7.w = abs(r5.w) * -0.0187292993 + 0.0742610022;
  r7.w = r7.w * abs(r5.w) + -0.212114394;
  r7.w = r7.w * abs(r5.w) + 1.57072878;
  r8.x = r7.w * r7.y;
  r8.x = r8.x * -2 + 3.14159274;
  r5.w = cmp(r5.w < -r5.w);
  r5.w = r5.w ? r8.x : 0;
  r5.w = r7.w * r7.y + r5.w;
  r7.y = 1 + -abs(r6.w);
  r7.y = sqrt(r7.y);
  r7.w = abs(r6.w) * -0.0187292993 + 0.0742610022;
  r7.w = r7.w * abs(r6.w) + -0.212114394;
  r7.w = r7.w * abs(r6.w) + 1.57072878;
  r8.x = r7.w * r7.y;
  r8.x = r8.x * -2 + 3.14159274;
  r6.w = cmp(r6.w < -r6.w);
  r6.w = r6.w ? r8.x : 0;
  r6.w = r7.w * r7.y + r6.w;
  r5.w = -r3.y * r3.x + -r5.w;
  r5.w = max(-1.57079995, r5.w);
  r5.w = r3.y * r3.x + r5.w;
  r6.w = -r3.y * r3.x + r6.w;
  r6.w = min(1.57079995, r6.w);
  r6.w = r3.y * r3.x + r6.w;
  sincos(r3.z, r8.x, r9.x);
  r5.w = r5.w + r5.w;
  r7.y = r5.w * r8.x + r9.x;
  r5.w = -r3.y * r3.x + r5.w;
  r5.w = cos(r5.w);
  r5.w = r7.y + -r5.w;
  r6.w = r6.w + r6.w;
  r7.y = r6.w * r8.x + r9.x;
  r3.x = -r3.y * r3.x + r6.w;
  r3.x = cos(r3.x);
  r3.x = r7.y + -r3.x;
  r3.x = 0.25 * r3.x;
  r3.x = r5.w * 0.25 + r3.x;
  r3.y = r3.z * r8.x + r9.x;
  r3.x = r3.x / r3.y;
  r3.x = log2(abs(r3.x));
  r3.xyz = float3(0.600000024,0.850000024,0.870000005) * r3.xxx;
  r3.xyz = exp2(r3.xyz);
  r7.xy = r7.xz + r5.yz;
  r8.xyz = -eyeOffset.yyy * viewProjectionMatrix._m10_m11_m13;
  r8.xyz = -eyeOffset.xxx * viewProjectionMatrix._m00_m01_m03 + r8.xyz;
  r8.xyz = -eyeOffset.zzz * viewProjectionMatrix._m20_m21_m23 + r8.xyz;
  r8.xyz = viewProjectionMatrix._m30_m31_m33 + r8.xyz;
  r9.xyz = eyeOffset.xyz + v6.xyz;
  r5.w = dot(-r2.xyz, r0.xyz);
  r5.w = r5.w + r5.w;
  r2.xyz = r0.xyz * -r5.www + -r2.xyz;
  r5.w = dot(r2.xyz, r2.xyz);
  r5.w = rsqrt(r5.w);
  r2.xyz = r5.www * r2.xyz;
  r10.yzw = viewProjectionMatrix._m10_m11_m13 * r9.yyy;
  r10.yzw = r9.xxx * viewProjectionMatrix._m00_m01_m03 + r10.yzw;
  r10.yzw = r9.zzz * viewProjectionMatrix._m20_m21_m23 + r10.yzw;
  r10.yzw = r10.yzw + r8.xyz;
  r12.z = rcp(r10.w);
  r7.zw = r12.zz * r10.yz;
  r12.xy = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
  r2.xyz = r2.xyz * float3(2.4000001,2.4000001,2.4000001) + r9.xyz;
  r9.xyz = viewProjectionMatrix._m10_m11_m13 * r2.yyy;
  r9.xyz = r2.xxx * viewProjectionMatrix._m00_m01_m03 + r9.xyz;
  r2.xyz = r2.zzz * viewProjectionMatrix._m20_m21_m23 + r9.xyz;
  r2.xyz = r2.xyz + r8.xyz;
  r2.xy = float2(0.5,-0.5) * r2.xy;
  r9.z = rcp(r2.z);
  r9.xy = r2.xy * r9.zz + float2(0.5,0.5);
  r2.xyz = r9.xyz + -r12.xyz;
  r5.w = ddx_coarse(r12.z);
  r6.w = ddy_coarse(r12.z);
  r7.zw = float2(-0.25,0.25) * r6.ww;
  r7.zw = r5.ww * float2(-0.25,0.25) + r7.zw;
  r9.xyz = ddx_coarse(r2.xyz);
  r11.yzw = ddy_coarse(r2.xyz);
  r13.xyz = float3(-0.25,-0.25,-0.25) * r11.yzw;
  r13.xyz = r9.xyz * float3(-0.25,-0.25,-0.25) + r13.xyz;
  r13.xyz = r13.xyz + r2.xyz;
  r14.xyzw = renderTargetSize.zwzw * float4(0.25,0.25,-0.25,-0.25) + r12.xyxy;
  r12.xy = r12.zz + r7.zw;
  r11.yzw = float3(0.25,0.25,0.25) * r11.yzw;
  r9.xyz = r9.xyz * float3(0.25,0.25,0.25) + r11.yzw;
  r2.xyz = r9.xyz + r2.xyz;
  r5.w = dot(renderTargetSize.zw, renderTargetSize.zw);
  r5.w = sqrt(r5.w);
  r6.w = dot(r13.xy, r13.xy);
  r6.w = sqrt(r6.w);
  r6.w = rcp(r6.w);
  r6.w = r6.w * r5.w;
  x1[0].x = 0.00173611124;
  r12.zw = r14.zw;
  r9.xyz = r13.xyz * float3(0.00173611124,0.00173611124,0.00173611124) + r12.zwx;
  r7.zw = cmp(r6.ww < float2(0.00173611124,0.015625));
  r9.xy = renderTargetSize.xy * r9.xy;
  r15.xy = (int2)r9.xy;
  r15.zw = float2(0,0);
  r8.w = floatZSampler.Load(r15.xyz).x;
  r9.x = cmp(r8.w >= 0.984375);
  r9.y = 1.01587307 * r8.w;
  r8.w = r8.w * 64 + -63;
  r8.w = r9.x ? r8.w : r9.y;
  r8.w = max(9.99999994e-09, r8.w);
  r8.w = rcp(r8.w);
  x2[0].x = r8.w;
  r9.x = r9.z * r8.w;
  r9.x = cmp(1 < r9.x);
  r9.x = r9.x ? 1.000000 : 0;
  r7.z = r7.z ? r9.x : 1;
  x0[0].x = r7.z;
  x1[1].x = 0.015625;
  r14.z = r12.y;
  r9.xyz = r2.xyz * float3(0.015625,0.015625,0.015625) + r14.xyz;
  r9.xy = renderTargetSize.xy * r9.xy;
  r15.xy = (int2)r9.xy;
  r15.zw = float2(0,0);
  r9.x = floatZSampler.Load(r15.xyz).x;
  r9.y = cmp(r9.x >= 0.984375);
  r9.w = 1.01587307 * r9.x;
  r9.x = r9.x * 64 + -63;
  r9.x = r9.y ? r9.x : r9.w;
  r9.x = max(9.99999994e-09, r9.x);
  r9.x = rcp(r9.x);
  x2[1].x = r9.x;
  r9.y = r9.z * r9.x;
  r9.y = cmp(1 < r9.y);
  r9.y = r9.y ? 1.000000 : 0;
  r7.w = r7.w ? r9.y : 1;
  x0[1].x = r7.w;
  r9.y = r7.z + r7.w;
  r9.y = cmp(r9.y != 0.000000);
  if (r9.y != 0) {
    r9.y = r7.z * 0.0260416679 + 0.00173611124;
    x1[0].x = r9.y;
    r11.yzw = r13.xyz * r9.yyy + r12.zwx;
    r9.y = cmp(r6.w < r9.y);
    r9.zw = renderTargetSize.xy * r11.yz;
    r15.xy = (int2)r9.zw;
    r15.zw = float2(0,0);
    r9.z = floatZSampler.Load(r15.xyz).x;
    r9.w = cmp(r9.z >= 0.984375);
    r10.y = 1.01587307 * r9.z;
    r9.z = r9.z * 64 + -63;
    r9.z = r9.w ? r9.z : r10.y;
    r9.z = max(9.99999994e-09, r9.z);
    r9.z = rcp(r9.z);
    r8.w = r9.y ? r9.z : r8.w;
    x2[0].x = r8.w;
    r8.w = r11.w * r9.z;
    r8.w = cmp(1 < r8.w);
    r8.w = r8.w ? 1.000000 : 0;
    r8.w = r8.w * r7.z;
    r7.z = r9.y ? r8.w : r7.z;
    x0[0].x = r7.z;
    r8.w = r7.w * 0.046875 + 0.015625;
    x1[1].x = r8.w;
    r9.yzw = r2.xyz * r8.www + r14.xyz;
    r8.w = cmp(r6.w < r8.w);
    r9.yz = renderTargetSize.xy * r9.yz;
    r15.xy = (int2)r9.yz;
    r15.zw = float2(0,0);
    r9.y = floatZSampler.Load(r15.xyz).x;
    r9.z = cmp(r9.y >= 0.984375);
    r10.y = 1.01587307 * r9.y;
    r9.y = r9.y * 64 + -63;
    r9.y = r9.z ? r9.y : r10.y;
    r9.y = max(9.99999994e-09, r9.y);
    r9.y = rcp(r9.y);
    r9.x = r8.w ? r9.y : r9.x;
    x2[1].x = r9.x;
    r9.x = r9.w * r9.y;
    r9.x = cmp(1 < r9.x);
    r9.x = r9.x ? 1.000000 : 0;
    r9.x = r9.x * r7.w;
    r7.w = r8.w ? r9.x : r7.w;
    x0[1].x = r7.w;
    r7.z = r7.z + r7.w;
    r7.z = cmp(r7.z == 0.000000);
  } else {
    r7.z = -1;
  }
  if (r7.z == 0) {
    r7.z = x1[0].x;
    r7.w = x0[0].x;
    r8.w = 0.0850694403 + -r7.z;
    r7.z = r7.w * r8.w + r7.z;
    x1[0].x = r7.z;
    r9.xyz = r13.xyz * r7.zzz + r12.zwx;
    r7.z = cmp(r6.w < r7.z);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r8.w = floatZSampler.Load(r15.xyz).x;
    r9.x = cmp(r8.w >= 0.984375);
    r9.y = 1.01587307 * r8.w;
    r8.w = r8.w * 64 + -63;
    r8.w = r9.x ? r8.w : r9.y;
    r8.w = max(9.99999994e-09, r8.w);
    r8.w = rcp(r8.w);
    r9.x = x2[0].x;
    r9.x = r7.z ? r8.w : r9.x;
    x2[0].x = r9.x;
    r8.w = r9.z * r8.w;
    r8.w = cmp(1 < r8.w);
    r8.w = r8.w ? 1.000000 : 0;
    r8.w = r8.w * r7.w;
    r7.z = r7.z ? r8.w : r7.w;
    x0[0].x = r7.z;
    r7.w = x1[1].x;
    r8.w = x0[1].x;
    r9.x = 0.140625 + -r7.w;
    r7.w = r8.w * r9.x + r7.w;
    x1[1].x = r7.w;
    r9.xyz = r2.xyz * r7.www + r14.xyz;
    r7.w = cmp(r6.w < r7.w);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r9.x = floatZSampler.Load(r15.xyz).x;
    r9.y = cmp(r9.x >= 0.984375);
    r9.w = 1.01587307 * r9.x;
    r9.x = r9.x * 64 + -63;
    r9.x = r9.y ? r9.x : r9.w;
    r9.x = max(9.99999994e-09, r9.x);
    r9.x = rcp(r9.x);
    r9.y = x2[1].x;
    r9.y = r7.w ? r9.x : r9.y;
    x2[1].x = r9.y;
    r9.x = r9.z * r9.x;
    r9.x = cmp(1 < r9.x);
    r9.x = r9.x ? 1.000000 : 0;
    r9.x = r9.x * r8.w;
    r7.w = r7.w ? r9.x : r8.w;
    x0[1].x = r7.w;
    r7.z = r7.z + r7.w;
    r7.z = cmp(r7.z == 0.000000);
  } else {
    r7.z = -1;
  }
  if (r7.z == 0) {
    r7.z = x1[0].x;
    r7.w = x0[0].x;
    r8.w = 0.173611104 + -r7.z;
    r7.z = r7.w * r8.w + r7.z;
    x1[0].x = r7.z;
    r9.xyz = r13.xyz * r7.zzz + r12.zwx;
    r7.z = cmp(r6.w < r7.z);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r8.w = floatZSampler.Load(r15.xyz).x;
    r9.x = cmp(r8.w >= 0.984375);
    r9.y = 1.01587307 * r8.w;
    r8.w = r8.w * 64 + -63;
    r8.w = r9.x ? r8.w : r9.y;
    r8.w = max(9.99999994e-09, r8.w);
    r8.w = rcp(r8.w);
    r9.x = x2[0].x;
    r9.x = r7.z ? r8.w : r9.x;
    x2[0].x = r9.x;
    r8.w = r9.z * r8.w;
    r8.w = cmp(1 < r8.w);
    r8.w = r8.w ? 1.000000 : 0;
    r8.w = r8.w * r7.w;
    r7.z = r7.z ? r8.w : r7.w;
    x0[0].x = r7.z;
    r7.w = x1[1].x;
    r8.w = x0[1].x;
    r9.x = 0.25 + -r7.w;
    r7.w = r8.w * r9.x + r7.w;
    x1[1].x = r7.w;
    r9.xyz = r2.xyz * r7.www + r14.xyz;
    r7.w = cmp(r6.w < r7.w);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r9.x = floatZSampler.Load(r15.xyz).x;
    r9.y = cmp(r9.x >= 0.984375);
    r9.w = 1.01587307 * r9.x;
    r9.x = r9.x * 64 + -63;
    r9.x = r9.y ? r9.x : r9.w;
    r9.x = max(9.99999994e-09, r9.x);
    r9.x = rcp(r9.x);
    r9.y = x2[1].x;
    r9.y = r7.w ? r9.x : r9.y;
    x2[1].x = r9.y;
    r9.x = r9.z * r9.x;
    r9.x = cmp(1 < r9.x);
    r9.x = r9.x ? 1.000000 : 0;
    r9.x = r9.x * r8.w;
    r7.w = r7.w ? r9.x : r8.w;
    x0[1].x = r7.w;
    r7.z = r7.z + r7.w;
    r7.z = cmp(r7.z == 0.000000);
  } else {
    r7.z = -1;
  }
  if (r7.z == 0) {
    r7.z = x1[0].x;
    r7.w = x0[0].x;
    r8.w = 0.293402791 + -r7.z;
    r7.z = r7.w * r8.w + r7.z;
    x1[0].x = r7.z;
    r9.xyz = r13.xyz * r7.zzz + r12.zwx;
    r7.z = cmp(r6.w < r7.z);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r8.w = floatZSampler.Load(r15.xyz).x;
    r9.x = cmp(r8.w >= 0.984375);
    r9.y = 1.01587307 * r8.w;
    r8.w = r8.w * 64 + -63;
    r8.w = r9.x ? r8.w : r9.y;
    r8.w = max(9.99999994e-09, r8.w);
    r8.w = rcp(r8.w);
    r9.x = x2[0].x;
    r9.x = r7.z ? r8.w : r9.x;
    x2[0].x = r9.x;
    r8.w = r9.z * r8.w;
    r8.w = cmp(1 < r8.w);
    r8.w = r8.w ? 1.000000 : 0;
    r8.w = r8.w * r7.w;
    r7.z = r7.z ? r8.w : r7.w;
    x0[0].x = r7.z;
    r7.w = x1[1].x;
    r8.w = x0[1].x;
    r9.x = 0.390625 + -r7.w;
    r7.w = r8.w * r9.x + r7.w;
    x1[1].x = r7.w;
    r9.xyz = r2.xyz * r7.www + r14.xyz;
    r7.w = cmp(r6.w < r7.w);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r9.x = floatZSampler.Load(r15.xyz).x;
    r9.y = cmp(r9.x >= 0.984375);
    r9.w = 1.01587307 * r9.x;
    r9.x = r9.x * 64 + -63;
    r9.x = r9.y ? r9.x : r9.w;
    r9.x = max(9.99999994e-09, r9.x);
    r9.x = rcp(r9.x);
    r9.y = x2[1].x;
    r9.y = r7.w ? r9.x : r9.y;
    x2[1].x = r9.y;
    r9.x = r9.z * r9.x;
    r9.x = cmp(1 < r9.x);
    r9.x = r9.x ? 1.000000 : 0;
    r9.x = r9.x * r8.w;
    r7.w = r7.w ? r9.x : r8.w;
    x0[1].x = r7.w;
    r7.z = r7.z + r7.w;
    r7.z = cmp(r7.z == 0.000000);
  } else {
    r7.z = -1;
  }
  if (r7.z == 0) {
    r7.z = x1[0].x;
    r7.w = x0[0].x;
    r8.w = 0.444444478 + -r7.z;
    r7.z = r7.w * r8.w + r7.z;
    x1[0].x = r7.z;
    r9.xyz = r13.xyz * r7.zzz + r12.zwx;
    r7.z = cmp(r6.w < r7.z);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r8.w = floatZSampler.Load(r15.xyz).x;
    r9.x = cmp(r8.w >= 0.984375);
    r9.y = 1.01587307 * r8.w;
    r8.w = r8.w * 64 + -63;
    r8.w = r9.x ? r8.w : r9.y;
    r8.w = max(9.99999994e-09, r8.w);
    r8.w = rcp(r8.w);
    r9.x = x2[0].x;
    r9.x = r7.z ? r8.w : r9.x;
    x2[0].x = r9.x;
    r8.w = r9.z * r8.w;
    r8.w = cmp(1 < r8.w);
    r8.w = r8.w ? 1.000000 : 0;
    r8.w = r8.w * r7.w;
    r7.z = r7.z ? r8.w : r7.w;
    x0[0].x = r7.z;
    r7.w = x1[1].x;
    r8.w = x0[1].x;
    r9.x = 0.5625 + -r7.w;
    r7.w = r8.w * r9.x + r7.w;
    x1[1].x = r7.w;
    r9.xyz = r2.xyz * r7.www + r14.xyz;
    r7.w = cmp(r6.w < r7.w);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r9.x = floatZSampler.Load(r15.xyz).x;
    r9.y = cmp(r9.x >= 0.984375);
    r9.w = 1.01587307 * r9.x;
    r9.x = r9.x * 64 + -63;
    r9.x = r9.y ? r9.x : r9.w;
    r9.x = max(9.99999994e-09, r9.x);
    r9.x = rcp(r9.x);
    r9.y = x2[1].x;
    r9.y = r7.w ? r9.x : r9.y;
    x2[1].x = r9.y;
    r9.x = r9.z * r9.x;
    r9.x = cmp(1 < r9.x);
    r9.x = r9.x ? 1.000000 : 0;
    r9.x = r9.x * r8.w;
    r7.w = r7.w ? r9.x : r8.w;
    x0[1].x = r7.w;
    r7.z = r7.z + r7.w;
    r7.z = cmp(r7.z == 0.000000);
  } else {
    r7.z = -1;
  }
  if (r7.z == 0) {
    r7.z = x1[0].x;
    r7.w = x0[0].x;
    r8.w = 0.626736164 + -r7.z;
    r7.z = r7.w * r8.w + r7.z;
    x1[0].x = r7.z;
    r9.xyz = r13.xyz * r7.zzz + r12.zwx;
    r7.z = cmp(r6.w < r7.z);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r8.w = floatZSampler.Load(r15.xyz).x;
    r9.x = cmp(r8.w >= 0.984375);
    r9.y = 1.01587307 * r8.w;
    r8.w = r8.w * 64 + -63;
    r8.w = r9.x ? r8.w : r9.y;
    r8.w = max(9.99999994e-09, r8.w);
    r8.w = rcp(r8.w);
    r9.x = x2[0].x;
    r9.x = r7.z ? r8.w : r9.x;
    x2[0].x = r9.x;
    r8.w = r9.z * r8.w;
    r8.w = cmp(1 < r8.w);
    r8.w = r8.w ? 1.000000 : 0;
    r8.w = r8.w * r7.w;
    r7.z = r7.z ? r8.w : r7.w;
    x0[0].x = r7.z;
    r7.w = x1[1].x;
    r8.w = x0[1].x;
    r9.x = 0.765625 + -r7.w;
    r7.w = r8.w * r9.x + r7.w;
    x1[1].x = r7.w;
    r9.xyz = r2.xyz * r7.www + r14.xyz;
    r7.w = cmp(r6.w < r7.w);
    r9.xy = renderTargetSize.xy * r9.xy;
    r15.xy = (int2)r9.xy;
    r15.zw = float2(0,0);
    r9.x = floatZSampler.Load(r15.xyz).x;
    r9.y = cmp(r9.x >= 0.984375);
    r9.w = 1.01587307 * r9.x;
    r9.x = r9.x * 64 + -63;
    r9.x = r9.y ? r9.x : r9.w;
    r9.x = max(9.99999994e-09, r9.x);
    r9.x = rcp(r9.x);
    r9.y = x2[1].x;
    r9.y = r7.w ? r9.x : r9.y;
    x2[1].x = r9.y;
    r9.x = r9.z * r9.x;
    r9.x = cmp(1 < r9.x);
    r9.x = r9.x ? 1.000000 : 0;
    r9.x = r9.x * r8.w;
    r7.w = r7.w ? r9.x : r8.w;
    x0[1].x = r7.w;
    r7.z = r7.z + r7.w;
    r7.z = cmp(r7.z == 0.000000);
  } else {
    r7.z = -1;
  }
  if (r7.z == 0) {
    r7.z = x1[0].x;
    r7.w = x0[0].x;
    r8.w = 0.840277791 + -r7.z;
    r7.z = r7.w * r8.w + r7.z;
    r9.xyz = r13.xyz * r7.zzz + r12.zwx;
    r7.z = cmp(r6.w < r7.z);
    r9.xy = renderTargetSize.xy * r9.xy;
    r12.xy = (int2)r9.xy;
    r12.zw = float2(0,0);
    r8.w = floatZSampler.Load(r12.xyz).x;
    r9.x = cmp(r8.w >= 0.984375);
    r9.y = 1.01587307 * r8.w;
    r8.w = r8.w * 64 + -63;
    r8.w = r9.x ? r8.w : r9.y;
    r8.w = max(9.99999994e-09, r8.w);
    r8.w = rcp(r8.w);
    r9.x = x2[0].x;
    r9.x = r7.z ? r8.w : r9.x;
    x2[0].x = r9.x;
    r8.w = r9.z * r8.w;
    r8.w = cmp(1 < r8.w);
    r8.w = r8.w ? 1.000000 : 0;
    r8.w = r8.w * r7.w;
    r7.z = r7.z ? r8.w : r7.w;
    x0[0].x = r7.z;
    r7.z = x1[1].x;
    r7.w = x0[1].x;
    r8.w = 1 + -r7.z;
    r7.z = r7.w * r8.w + r7.z;
    r2.xyz = r2.xyz * r7.zzz + r14.xyz;
    r6.w = cmp(r6.w < r7.z);
    r2.xy = renderTargetSize.xy * r2.xy;
    r9.xy = (int2)r2.xy;
    r9.zw = float2(0,0);
    r2.x = floatZSampler.Load(r9.xyz).x;
    r2.y = cmp(r2.x >= 0.984375);
    r7.z = 1.01587307 * r2.x;
    r2.x = r2.x * 64 + -63;
    r2.x = r2.y ? r2.x : r7.z;
    r2.x = max(9.99999994e-09, r2.x);
    r2.x = rcp(r2.x);
    r2.y = x2[1].x;
    r2.y = r6.w ? r2.x : r2.y;
    x2[1].x = r2.y;
    r2.x = r2.z * r2.x;
    r2.x = cmp(1 < r2.x);
    r2.x = r2.x ? 1.000000 : 0;
    r2.x = r7.w * r2.x;
    r2.x = r6.w ? r2.x : r7.w;
    x0[1].x = r2.x;
  }
  r2.x = x2[0].x;
  r2.x = r2.x + -r10.w;
  r2.x = cmp(2.4000001 < abs(r2.x));
  r2.y = x0[0].x;
  r2.y = -r2.y * 0.5 + 1;
  r2.x = r2.x ? 0.5 : r2.y;
  r2.y = x2[1].x;
  r2.y = r2.y + -r10.w;
  r2.y = cmp(2.4000001 < abs(r2.y));
  r2.z = x0[1].x;
  r2.z = 0.5 * r2.z;
  r2.y = r2.y ? -0.5 : -r2.z;
  r2.x = r2.x + r2.y;
  r2.x = 1 + -r2.x;
  r2.yzw = w2.xyz * r2.www + -r0.xyz;
  r2.yzw = r5.xxx * r2.yzw + r0.xyz;
  r6.w = dot(r2.yzw, r2.yzw);
  r6.w = rsqrt(r6.w);
  r9.xyz = r6.www * r2.yzw;
  r2.yzw = sqrt(r3.xyz);
  r10.yzw = r3.www * r6.xyz;
  r10.yzw = r10.yzw * r5.xxx;
  r12.xyz = -r10.yzw * float3(0.5,0.5,0.5) + v6.xyz;
  r7.zw = (uint2)v0.xy;
  r3.w = cmp(v0.z >= 0.984375);
  r6.w = 1.01587307 * v0.z;
  r8.w = v0.z * 64 + -63;
  r3.w = r3.w ? r8.w : r6.w;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  r6.w = cmp(isDepthHack != 0);
  r10.yz = (uint2)r7.wz;
  r8.w = dot(r10.zy, float2(0.0671105608,0.00583714992));
  r8.w = frac(r8.w);
  r8.w = 52.9829178 * r8.w;
  r8.w = frac(r8.w);
  r8.w = r8.w * 6.28318548 + gameTick.w;
  sincos(r8.w, r13.x, r14.x);
  r8.w = dot(r10.yz, float2(0.0671105608,0.00583714992));
  r8.w = frac(r8.w);
  r8.w = 52.9829178 * r8.w;
  r8.w = frac(r8.w);
  r8.w = r8.w * 6.28318548 + gameTick.w;
  sincos(r8.w, r15.x, r16.x);
  r8.w = 17 * r0.w;
  r8.w = exp2(r8.w);
  r10.y = 2 + r8.w;
  r10.y = 2 / r10.y;
  r10.z = dot(-r12.xyz, -r12.xyz);
  r10.z = rsqrt(r10.z);
  r11.yzw = -r12.xyz * r10.zzz;
  r17.xyz = eyeOffset.xyz + r12.xyz;
  r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r12.yyy;
  r15.yzw = r12.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.yzw;
  r15.yzw = r12.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.yzw;
  r15.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.yzw;
  r10.w = -sunConstants.splitDepthOffset + r15.w;
  r10.w = -r10.w * 6.10351563e-05 + 1;
  r13.z = saturate(r10.w);
  r13.z = cmp(r10.w == r13.z);
  if (r13.z != 0) {
    r13.zw = float2(0,0);
    while (true) {
      r14.w = cmp(r13.z >= 3);
      if (r14.w != 0) break;
      r14.w = (uint)r13.z;
      r16.yz = -sunConstants.splitPinTransform[r14.w].xy + r15.yz;
      r16.y = max(abs(r16.y), abs(r16.z));
      r13.w = sunConstants.splitPinTransform[r14.w].z * r16.y;
      r14.w = cmp(r13.w < 1);
      if (r14.w != 0) {
        break;
      }
      r13.z = 1 + r13.z;
      r13.w = 0;
    }
  } else {
    r13.zw = float2(3,0);
  }
  r14.w = cmp(r13.z >= 3);
  if (r14.w != 0) {
    r16.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
    r18.xz = rcp(r16.yy);
    r18.y = -r18.z;
    r16.yzw = r15.yzy * r18.xyz + r16.zwz;
    r18.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
    r16.yzw = max(float3(0,0,0), r16.yzw);
    r16.yzw = min(r16.yzw, r18.xyz);
    r18.xy = sunConstants.sstLightingConstants.coordScale * r16.wz;
    r18.xy = floor(r18.xy);
    r18.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r18.y;
    r18.x = r18.y * sunConstants.sstLightingConstants.coordScale + r18.x;
    r18.x = (uint)r18.x;
    r18.x = (int)r18.x + (int10)sunConstants.sstLightingConstants.rootOffset;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
  r18.y = samp0[]..swiz;
    r18.z = (int)r18.y & 0x40000000;
    r18.w = (uint)r18.y << 2;
    if (r18.z == 0) {
      r18.z = (int)r18.y & 0x01ffffff;
      r19.x = (int)r18.z + (int)r18.x;
      r18.x = (uint)r18.y >> 25;
      r18.x = (uint)r18.x;
      r16.yzw = r18.xxx * r16.yzw;
      r16.yzw = frac(r16.yzw);
      r16.yzw = float3(128,128,128) * r16.yzw;
      r16.yzw = (uint3)r16.yzw;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
    r19.z = samp0[]..swiz;
      r18.xy = (uint2)r16.wz >> int2(6,6);
      r18.z = (int)r19.z & 0xc0000000;
      r19.w = (int)r19.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t23.xxxx
    r19.w = samp0[]..swiz;
      r18.y = r18.y ? r19.z : r19.w;
      r19.w = (uint)r18.y >> 13;
      r18.x = r18.x ? r19.w : r18.y;
      r18.x = (int)r18.x & 8191;
      r20.x = (int)r18.x + (int)r19.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
    r20.z = samp0[]..swiz;
      r19.y = 0;
      r20.y = 1;
      r20.xyz = r18.zzz ? r19.xyz : r20.xyz;
      r21.yz = r18.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
      r18.xy = (uint2)r16.wz >> (uint2)r21.yy;
      r18.xy = (int2)r18.xy & int2(1,1);
      r19.w = (int)r20.z & 0xc0000000;
      r20.w = (int)r20.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.w, r20.w, l(0), t23.xxxx
    r20.w = samp0[]..swiz;
      r18.y = r18.y ? r20.z : r20.w;
      r20.w = (uint)r18.y >> 13;
      r18.x = r18.x ? r20.w : r18.y;
      r18.x = (int)r18.x & 8191;
      r21.x = (int)r18.x + (int)r20.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.w, r21.x, l(0), t23.xxxx
    r21.w = samp0[]..swiz;
      r20.xyz = r19.www ? r20.xyz : r21.xzw;
      r18.xyz = r18.zzz ? r19.xyz : r20.xyz;
      r19.x = (int)r18.z & 0xc0000000;
      if (r19.x == 0) {
        r19.x = (int)-r18.y + 6;
        r19.xy = (uint2)r16.wz >> (uint2)r19.xx;
        r19.z = (int)r18.z | 0x40000000;
        bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r19.y = (((uint)r19.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
        bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r19.x = (((uint)r19.x << 0) & bitmask.x) | ((uint)r19.y & ~bitmask.x);
        r19.x = (int)r19.x * 10;
        r19.x = (uint)r19.z >> (uint)r19.x;
        r19.x = (int)r19.x & 1023;
        r19.x = (int)r18.x + (int)r19.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r19.yz = (int2)r18.yy + int2(1,2);
        r18.y = (int)-r19.y + 6;
        r20.xy = (uint2)r16.wz >> (uint2)r18.yy;
        r18.y = (int)r19.w & 0xc0000000;
        r20.z = (int)r19.w | 0x40000000;
        bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r20.y = (((uint)r20.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
        bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r20.x = (((uint)r20.x << 0) & bitmask.x) | ((uint)r20.y & ~bitmask.x);
        r20.x = (int)r20.x * 10;
        r20.x = (uint)r20.z >> (uint)r20.x;
        r20.x = (int)r20.x & 1023;
        r20.x = (int)r19.x + (int)r20.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.z, r20.x, l(0), t23.xxxx
      r20.z = samp0[]..swiz;
        r20.y = r19.z;
        r20.xyz = r18.yyy ? r19.xyw : r20.xyz;
        r19.y = (int)-r20.y + 6;
        r19.yz = (uint2)r16.wz >> (uint2)r19.yy;
        r20.y = (int)r20.z & 0xc0000000;
        r20.w = (int)r20.z | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r19.z = (((uint)r19.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r19.y = (((uint)r19.y << 0) & bitmask.y) | ((uint)r19.z & ~bitmask.y);
        r19.y = (int)r19.y * 10;
        r19.y = (uint)r20.w >> (uint)r19.y;
        r19.y = (int)r19.y & 1023;
        r21.x = (int)r19.y + (int)r20.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r21.y, r21.x, l(0), t23.xxxx
      r21.y = samp0[]..swiz;
        r19.yz = r20.yy ? r20.xz : r21.xy;
        r18.xz = r18.yy ? r19.xw : r19.yz;
      }
      r18.y = (int)r18.z & 0xc0000000;
      if (r18.y == 0) {
        if (14 == 0) r19.x = 0; else if (14+15 < 32) {         r19.x = (uint)r18.z << (32-(14 + 15)); r19.x = (uint)r19.x >> (32-14);        } else r19.x = (uint)r18.z >> 15;
        r19.x = (uint)r19.x;
        r19.x = sunConstants.sstLightingConstants.constants.spanInInches * r19.x;
        r19.yz = (int2)r18.zz & int2(32767,536870912);
        r19.y = (uint)r19.y;
        r19.y = sunConstants.sstLightingConstants.constants.spanInInches * r19.y;
        r19.xy = float2(6.10388815e-05,3.05185094e-05) * r19.xy;
        r19.w = (int)r16.z & 3;
        r19.w = (int)r18.x + (int)r19.w;
        r19.w = (int)r19.w + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.w, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r20.x = (((uint)r16.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
        bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r20.y = (((uint)r16.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
        bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r20.z = (((uint)r16.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
        r16.y = (uint)r19.w >> (uint)r20.x;
        r16.y = (int)r16.y & 255;
        r16.y = (uint)r16.y;
        r16.y = r16.y * r19.y;
        r16.y = r16.y * 0.00392156886 + r19.x;
        r16.z = (int)r20.y + 1;
        if (1 == 0) r16.w = 0; else if (1+1 < 32) {         r16.w = (uint)r16.w << (32-(1 + 1)); r16.w = (uint)r16.w >> (32-1);        } else r16.w = (uint)r16.w >> 1;
        r16.z = (int)r16.w + (int)r16.z;
        r16.z = (int)r16.z + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r16.z = (uint)r16.z >> (uint)r20.z;
        r16.z = (int)r16.z & 0x0000ffff;
        r16.z = (uint)r16.z;
        r16.z = r16.z * r19.y;
        r16.z = r16.z * 1.52590219e-05 + r19.x;
        r18.w = r19.z ? r16.y : r16.z;
      } else {
        r16.y = (int)r18.z & 0x80000000;
        r16.z = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.z, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r16.y = r16.y ? r16.z : 0;
        r16.z = (uint)r18.z << 2;
        r16.w = (uint)r16.y >> 16;
        r16.y = (int)r16.y & 0x0000ffff;
        r16.yw = f16tof32(r16.yw);
        r16.z = r15.y * r16.w + r16.z;
        r16.y = r15.z * r16.y + r16.z;
        r18.w = r18.y ? r16.y : r18.w;
      }
    }
    r15.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.w;
    r15.w = cmp(r18.w < r15.w);
    r18.y = r15.w ? 0 : 1;
  }
  if (r14.w == 0) {
    if (enableDitheredShadow == 0) {
      r14.w = (uint)r13.z;
      r16.yz = -sunConstants.splitPinTransform[r14.w].xy + r15.yz;
      r16.yz = sunConstants.splitPinTransform[r14.w].zz * r16.yz;
      r19.xy = r16.yz * float2(0.5,-0.5) + float2(0.5,0.5);
      r14.w = (int16)sunConstants.splitArrayOffset;
      r19.z = r14.w + r13.z;
      r14.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.w).x;
      r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r19.xyz, 0).x;
      r14.w = r15.w + r14.w;
      r14.w = saturate(-1 + r14.w);
      r15.w = r14.w * r14.w;
      r18.y = r15.w * r14.w;
    }
    if (enableDitheredShadow != 0) {
      r19.x = -r13.x;
      r14.w = (uint)r13.z;
      r13.z = 1 + r13.z;
      r13.z = min(2, r13.z);
      r13.w = 1 + -r13.w;
      r13.w = 28 * r13.w;
      r13.zw = (uint2)r13.zw;
      r16.yz = -sunConstants.splitPinTransform[r14.w].xy + r15.yz;
      r16.yz = sunConstants.splitPinTransform[r14.w].zz * r16.yz;
      r16.yz = r16.yz * float2(0.5,-0.5) + float2(0.5,0.5);
      r15.yz = -sunConstants.splitPinTransform[r13.z].xy + r15.yz;
      r15.yz = sunConstants.splitPinTransform[r13.z].zz * r15.yz;
      r15.yz = r15.yz * float2(0.5,-0.5) + float2(0.5,0.5);
      r19.y = r14.x;
      r19.z = r13.x;
      r15.w = 0;
      r16.w = 0;
      while (true) {
        r18.z = cmp((uint)r16.w >= 8);
        if (r18.z != 0) break;
        r18.z = cmp((uint)r13.w < (uint)r16.w);
        r20.xy = r18.zz ? r15.yz : r16.yz;
        r18.w = r18.z ? sunConstants.splitPinTransform[r13.z].w : sunConstants.splitPinTransform[r14.w].w;
        r18.z = r18.z ? r13.z : r14.w;
        r21.x = dot(icb[r16.w+0].yx, r19.xy);
        r21.y = dot(icb[r16.w+0].yx, r19.yz);
        r20.xy = r21.xy * r18.ww + r20.xy;
        r18.z = (int)r18.z + (int16)sunConstants.splitArrayOffset;
        r20.z = (uint)r18.z;
        r18.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r10.w).x;
        r18.w = gTransShadowmapArray.SampleLevel(samp0_s, r20.xyz, 0).x;
        r18.z = r18.z + r18.w;
        r18.z = saturate(-1 + r18.z);
        r15.w = r18.z * 0.125 + r15.w;
        r16.w = (int)r16.w + 1;
      }
      r10.w = r15.w * r15.w;
      r18.y = r10.w * r15.w;
    }
  }
  r10.w = viewmodelSunShadowRaw >> 16;
  r13.z = cmp(0 < (uint)r10.w);
  r13.z = r6.w ? r13.z : 0;
  if (r13.z != 0) {
    r10.w = (int)r10.w + numLights;
    r10.w = (int)r10.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.z, r10.w, l(52), t12.xxxx
  r13.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(68), t12.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(84), t12.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xyzw, r10.w, l(132), t12.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xyzw, r10.w, l(148), t12.xyzw
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
    r13.w = dot(sunConstants.wldDir.xyz, r6.xyz);
    r13.w = abs(r13.w) * -0.200000003 + 0.400000006;
    r23.xyz = r6.xyz * r13.www + r12.xyz;
    r23.w = 1;
    r19.x = dot(r19.xyzw, r23.xyzw);
    r19.y = dot(r20.xyzw, r23.xyzw);
    r15.yz = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r15.yz = r15.yz + r22.zw;
    r15.yz = r15.yz * r22.xy;
    r16.yz = r13.zz / r21.xz;
    r18.zw = float2(1,1) + -r16.yz;
    r18.zw = cmp(r15.yz >= r18.zw);
    r16.yz = cmp(r16.yz >= r15.yz);
    r16.yz = (int2)r16.yz | (int2)r18.zw;
    r13.w = (int)r16.z | (int)r16.y;
    if (r13.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r10.w, l(28), t12.xxxx
    r13.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(100), t12.xyzw
    r19.x = samp0[]..swiz;
    r19.y = samp0[]..swiz;
    r19.z = samp0[]..swiz;
    r19.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.yz, r10.w, l(164), t12.xxyx
    r16.y = samp0[]..swiz;
    r16.z = samp0[]..swiz;
      r10.w = dot(r19.xyzw, r23.xyzw);
      r15.yz = saturate(r15.yz);
      r19.xy = r15.yz * r21.xz + r21.yw;
      r10.w = r10.w + r16.y;
      r10.w = r10.w / r16.z;
      r10.w = max(6.10351563e-05, r10.w);
      r13.w = (int)r13.w & 0x0000ffff;
      if (enableDitheredShadow != 0) {
        r20.x = -r13.x;
        r21.z = (uint)r13.w;
        r20.y = r14.x;
        r20.z = r13.x;
        r14.w = 0;
        r15.y = 0;
        while (true) {
          r15.z = cmp((int)r15.y >= 8);
          if (r15.z != 0) break;
          r22.x = dot(icb[r15.y+0].yx, r20.xy);
          r22.y = dot(icb[r15.y+0].yx, r20.yz);
          r21.xy = r22.xy * r13.zz + r19.xy;
          r15.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r10.w).x;
          r14.w = r15.z * 0.125 + r14.w;
          r15.y = (int)r15.y + 1;
        }
      } else {
        r19.z = (uint)r13.w;
        r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.w).x;
      }
      r10.w = r14.w * r14.w;
      r10.w = r10.w * r14.w;
    } else {
      r10.w = 1;
    }
    r18.y = r18.y * r10.w;
  } else {
    r10.w = viewmodelSunShadowRaw & 0x0000ffff;
    r13.z = cmp(0 < (uint)r10.w);
    r13.w = ~(int)r6.w;
    r13.z = r13.z ? r13.w : 0;
    if (r13.z != 0) {
      r10.w = (int)r10.w + numLights;
      r10.w = (int)r10.w + -1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.z, r10.w, l(52), t12.xxxx
    r13.z = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(68), t12.xyzw
    r19.x = samp0[]..swiz;
    r19.y = samp0[]..swiz;
    r19.z = samp0[]..swiz;
    r19.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(84), t12.xyzw
    r20.x = samp0[]..swiz;
    r20.y = samp0[]..swiz;
    r20.z = samp0[]..swiz;
    r20.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xyzw, r10.w, l(132), t12.xyzw
    r21.x = samp0[]..swiz;
    r21.y = samp0[]..swiz;
    r21.z = samp0[]..swiz;
    r21.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xyzw, r10.w, l(148), t12.xyzw
    r22.x = samp0[]..swiz;
    r22.y = samp0[]..swiz;
    r22.z = samp0[]..swiz;
    r22.w = samp0[]..swiz;
      r13.w = dot(sunConstants.wldDir.xyz, r6.xyz);
      r13.w = abs(r13.w) * -0.200000003 + 0.400000006;
      r23.xyz = r6.xyz * r13.www + r12.xyz;
      r23.w = 1;
      r19.x = dot(r19.xyzw, r23.xyzw);
      r19.y = dot(r20.xyzw, r23.xyzw);
      r15.yz = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
      r15.yz = r15.yz + r22.zw;
      r15.yz = r15.yz * r22.xy;
      r16.yz = r13.zz / r21.xz;
      r18.zw = float2(1,1) + -r16.yz;
      r18.zw = cmp(r15.yz >= r18.zw);
      r16.yz = cmp(r16.yz >= r15.yz);
      r16.yz = (int2)r16.yz | (int2)r18.zw;
      r13.w = (int)r16.z | (int)r16.y;
      if (r13.w == 0) {
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r10.w, l(28), t12.xxxx
      r13.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(100), t12.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.yz, r10.w, l(164), t12.xxyx
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
        r10.w = dot(r19.xyzw, r23.xyzw);
        r15.yz = saturate(r15.yz);
        r19.xy = r15.yz * r21.xz + r21.yw;
        r10.w = r10.w + r16.y;
        r10.w = r10.w / r16.z;
        r10.w = max(6.10351563e-05, r10.w);
        r13.w = (int)r13.w & 0x0000ffff;
        if (enableDitheredShadow != 0) {
          r20.x = -r13.x;
          r21.z = (uint)r13.w;
          r20.y = r14.x;
          r20.z = r13.x;
          r14.w = 0;
          r15.y = 0;
          while (true) {
            r15.z = cmp((int)r15.y >= 8);
            if (r15.z != 0) break;
            r22.x = dot(icb[r15.y+0].yx, r20.xy);
            r22.y = dot(icb[r15.y+0].yx, r20.yz);
            r21.xy = r22.xy * r13.zz + r19.xy;
            r15.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r10.w).x;
            r14.w = r15.z * 0.125 + r14.w;
            r15.y = (int)r15.y + 1;
          }
        } else {
          r19.z = (uint)r13.w;
          r14.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.w).x;
        }
        r10.w = r14.w * r14.w;
        r10.w = r10.w * r14.w;
      } else {
        r10.w = 1;
      }
      r18.y = r18.y * r10.w;
    }
  }
  r10.w = cmp(0 < r18.y);
  if (r10.w != 0) {
    r15.yzw = sunConstants.color.xyz * r2.yzw;
    r10.w = saturate(dot(r1.xyz, sunConstants.wldDir.xyz));
    if (sunConstants.sunCookieIndex != 0) {
      r17.w = 1;
      r13.z = dot(sunConstants.sunCookieTransform[0].xyzw, r17.xyzw);
      r13.w = dot(sunConstants.sunCookieTransform[1].xyzw, r17.xyzw);
      r19.xy = frac(r13.zw);
      r13.z = -1 + (int14)sunConstants.sunCookieIndex;
      r19.z = (uint)r13.z;
      r16.yzw = gCookieArray.SampleLevel(samplerLinear_s, r19.xyz, 0).xyz;
      r16.yzw = float3(-1,-1,-1) + r16.yzw;
      r16.yzw = sunConstants.sunCookieIntensity * r16.yzw + float3(1,1,1);
      r15.yzw = r16.yzw * r15.yzw;
    }
    r13.z = dot(sunConstants.wldDir.xyz, r0.xyz);
    r13.z = 0.200000003 + r13.z;
    r13.z = saturate(0.833333313 * r13.z);
    r13.z = r13.z * r13.z;
    r13.w = 1.25 * r13.z;
    r16.yz = r7.xy * float2(0.795454562,0.795454562) + float2(-0.795454562,-0.795454562);
    r19.x = dot(sunConstants.wldDir.xyz, v7.xyz);
    r19.y = dot(sunConstants.wldDir.xyz, v8.xyz);
    r14.w = dot(r19.xy, r19.xy);
    r14.w = rsqrt(r14.w);
    r19.xy = r19.xy * r14.ww;
    r19.z = -r19.x;
    r20.x = dot(r16.zy, r19.yz);
    r20.y = dot(r16.zy, -r19.xy);
    r19.xy = r20.xy * float2(1,2) + float2(0.5,1);
    r14.w = dot(sunConstants.wldDir.xyz, r6.xyz);
    r14.w = r14.w * 0.689655125 + 0.310344785;
    r16.y = cmp(1 < r19.y);
    r16.z = 2 + -r19.y;
    r19.z = r16.y ? r16.z : r19.y;
    r16.y = 126.5 * r14.w;
    r16.z = floor(r16.y);
    r16.y = ceil(r16.y);
    r18.zw = float2(0.0078125,1) * r19.xz;
    r19.xy = r16.zz * float2(0.0078125,0) + r18.zw;
    r16.w = causticMap.SampleLevel(LinearSampler_s, r19.xy, 0).x;
    r18.zw = r16.yy * float2(0.0078125,0) + r18.zw;
    r16.y = causticMap.SampleLevel(LinearSampler_s, r18.zw, 0).x;
    r14.w = r14.w * 126.5 + -r16.z;
    r16.y = r16.y + -r16.w;
    r14.w = r14.w * r16.y + r16.w;
    r13.z = -r13.z * 1.25 + r14.w;
    r16.yzw = r5.xxx * r13.zzz + r13.www;
    r13.z = cmp(0 < r10.w);
    if (r13.z != 0) {
      r13.z = sunConstants.specScale * r10.y;
      r13.z = 0.25 * r13.z;
      r19.xyz = -r12.xyz * r10.zzz + sunConstants.wldDir.xyz;
      r13.w = dot(r19.xyz, r19.xyz);
      r13.w = rsqrt(r13.w);
      r19.xyz = r19.xyz * r13.www;
      r13.w = dot(r1.xyz, r19.xyz);
      r14.w = r8.w * 0.125 + 0.25;
      r13.w = log2(abs(r13.w));
      r13.w = r13.w * r8.w;
      r13.w = exp2(r13.w);
      r13.w = r14.w * r13.w;
      r10.w = r13.w * r10.w;
      r10.w = r10.w * r13.z;
      r13.z = 0.25 * r10.y;
      r20.xyz = r10.www / r13.zzz;
      r10.w = dot(r19.xyz, sunConstants.wldDir.xyz);
      r10.w = saturate(1 + -r10.w);
      r13.z = r10.w * r10.w;
      r13.z = r13.z * r13.z;
      r10.w = r13.z * r10.w;
      r10.w = r20.z * r10.w;
      r13.zw = r10.ww;
    } else {
      r13.zw = float2(0,0);
      r10.w = 0;
      r20.xyz = float3(0,0,0);
    }
    r14.w = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r14.w = r18.y * r14.w;
    r18.x = 1;
    r18.zw = sunConstants.wldDir.xy;
    r17.w = sunConstants.wldDir.z;
  } else {
    r14.w = 0;
    r15.yzw = float3(0,0,0);
    r18.xyzw = float4(0,0,0,0);
    r16.yzw = float3(0,0,0);
    r17.w = 0;
    r20.xyz = float3(0,0,0);
    r10.w = 0;
    r13.zw = float2(0,0);
  }
  r3.w = 0.0078125 * r3.w;
  r3.w = min(15, r3.w);
  r3.w = (uint)r3.w;
  r19.xy = (uint2)r7.zw >> int2(6,6);
  r19.z = (uint)r3.w << 4;
  r3.w = ~(int)r6.w;
  r21.x = -r13.x;
  r7.xy = r7.xy * float2(0.795454562,0.795454562) + float2(-0.795454562,-0.795454562);
  r7.z = r8.w * 0.125 + 0.25;
  r7.w = 0.25 * r10.y;
  r22.xy = float2(0,0);
  r23.w = 0;
  r12.w = 1;
  r24.w = 1;
  r25.w = 1;
  r26.z = 1;
  r27.w = 1;
  r21.z = r13.x;
  r21.yw = r14.xx;
  r13.y = r21.w;
  r14.y = r21.x;
  r14.z = r13.x;
  r28.x = r14.x;
  r28.y = r21.x;
  r28.z = r13.x;
  r29.xyz = r15.yzw;
  r30.xy = r18.zw;
  r30.z = r17.w;
  r31.xyz = r16.yzw;
  r32.xyz = r20.xyz;
  r33.x = r10.w;
  r33.yz = r13.zw;
  r34.xyz = float3(0,0,0);
  r35.xyz = float3(0,0,0);
  r36.xyz = float3(0,0,0);
  r37.x = enableDitheredShadow;
  r37.y = r14.w;
  r37.zw = r18.xy;
  r19.w = 0;
  while (true) {
    r20.w = cmp((uint)r19.w >= numLights);
    if (r20.w != 0) break;
    r22.z = (uint)r19.w >> 5;
    r23.xyz = (int3)r19.xyz + (int3)r22.xyz;
    r20.w = visibleLights.Load(r23.xyzw).x;
    r23.xyz = r29.xyz;
    r38.xyz = r30.xyz;
    r39.xyz = r31.xyz;
    r40.xyz = r32.xyz;
    r41.xyz = r33.xyz;
    r42.xyz = r34.xyz;
    r43.xyz = r35.xyz;
    r22.zw = r37.zw;
    r26.w = r37.x;
    r28.w = r37.y;
    r44.xyz = r36.xyz;
    r29.w = r20.w;
    while (true) {
      if (r29.w == 0) break;
      r30.w = firstbitlow((uint)r29.w);
      r31.w = 1 << (int)r30.w;
      r32.w = (int)r29.w & (int)r31.w;
      if (r32.w != 0) {
        r29.w = (int)r29.w ^ (int)r31.w;
        r30.w = (int)r19.w + (int)r30.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r45.xyzw, r30.w, l(0), t11.xyzw
      r45.x = samp0[]..swiz;
      r45.y = samp0[]..swiz;
      r45.z = samp0[]..swiz;
      r45.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r46.xy, r30.w, l(16), t11.xyxx
      r46.x = samp0[]..swiz;
      r46.y = samp0[]..swiz;
        r45.xyz = r45.xyz + -r12.xyz;
        r46.z = r45.w;
        r45.xyz = cmp(abs(r45.xyz) < r46.zxy);
        r31.w = r45.y ? r45.x : 0;
        r31.w = r45.z ? r31.w : 0;
        if (r31.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r30.w, l(0), t12.xyzw
        r45.x = samp0[]..swiz;
        r45.y = samp0[]..swiz;
        r45.z = samp0[]..swiz;
        r45.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r46.xyzw, r30.w, l(16), t12.zxyw
        r46.x = samp0[]..swiz;
        r46.y = samp0[]..swiz;
        r46.z = samp0[]..swiz;
        r46.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r30.w, l(32), t12.xyzw
        r47.x = samp0[]..swiz;
        r47.y = samp0[]..swiz;
        r47.z = samp0[]..swiz;
        r47.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r30.w, l(48), t12.xyzw
        r48.x = samp0[]..swiz;
        r48.y = samp0[]..swiz;
        r48.z = samp0[]..swiz;
        r48.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r30.w, l(64), t12.yzwx
        r49.x = samp0[]..swiz;
        r49.y = samp0[]..swiz;
        r49.z = samp0[]..swiz;
        r49.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r30.w, l(80), t12.yzwx
        r50.x = samp0[]..swiz;
        r50.y = samp0[]..swiz;
        r50.z = samp0[]..swiz;
        r50.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r30.w, l(96), t12.yzwx
        r51.x = samp0[]..swiz;
        r51.y = samp0[]..swiz;
        r51.z = samp0[]..swiz;
        r51.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r30.w, l(112), t12.yzwx
        r52.x = samp0[]..swiz;
        r52.y = samp0[]..swiz;
        r52.z = samp0[]..swiz;
        r52.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r53.xyzw, r30.w, l(128), t12.xyzw
        r53.x = samp0[]..swiz;
        r53.y = samp0[]..swiz;
        r53.z = samp0[]..swiz;
        r53.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r54.xyzw, r30.w, l(172), t12.yzwx
        r54.x = samp0[]..swiz;
        r54.y = samp0[]..swiz;
        r54.z = samp0[]..swiz;
        r54.w = samp0[]..swiz;
          if (3 == 0) r31.w = 0; else if (3+24 < 32) {           r31.w = (uint)r46.w << (32-(3 + 24)); r31.w = (uint)r31.w >> (32-3);          } else r31.w = (uint)r46.w >> 24;
          r32.w = cmp((int)r31.w == 4);
          if (r32.w != 0) {
            r33.w = r46.x * r10.y;
            r33.w = 0.25 * r33.w;
            r34.w = cmp(0 < r51.x);
            r55.xy = r50.yz;
            r55.z = r51.w;
            r56.xyz = -r55.xyz * float3(0.5,0.5,0.5) + r45.xyz;
            r57.xyz = r56.xyz + -r12.xyz;
            r35.w = dot(r55.xyz, r57.xyz);
            r35.w = saturate(-r35.w / r51.x);
            r55.xyz = r35.www * r55.xyz + r56.xyz;
            r55.xyz = r34.www ? r55.xyz : r45.xyz;
            r56.xyz = r55.xyz + -r12.xyz;
            r34.w = dot(r56.xyz, r56.xyz);
            r34.w = rsqrt(r34.w);
            r56.xyz = r56.xyz * r34.www;
          } else {
            r34.w = cmp((int)r31.w == 1);
            r57.xy = r48.zw;
            r57.z = r49.w;
            r57.xyz = r57.xyz + -r12.xyz;
            r35.w = dot(r57.xyz, r57.xyz);
            r35.w = rsqrt(r35.w);
            r57.xyz = r57.xyz * r35.www;
            r56.xyz = r34.www ? r54.wxy : r57.xyz;
            r34.w = r46.x * r10.y;
            r33.w = 0.25 * r34.w;
            r55.xyz = r45.xyz;
          }
          switch (r31.w) {
            case 2 :            r58.xyz = r52.xyz;
            r58.w = r53.x;
            r36.w = dot(r58.xyzw, r12.xyzw);
            r38.w = cmp(r36.w < 1);
            if (r38.w != 0) {
              r57.xyz = float3(1,1,1);
              r34.w = 0;
              r35.w = -1;
              break;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r58.xyzw, r30.w, l(188), t12.wxyz
            r58.x = samp0[]..swiz;
            r58.y = samp0[]..swiz;
            r58.z = samp0[]..swiz;
            r58.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r59.xyzw, r30.w, l(204), t12.xyzw
            r59.x = samp0[]..swiz;
            r59.y = samp0[]..swiz;
            r59.z = samp0[]..swiz;
            r59.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.w, r30.w, l(236), t12.xxxx
            r38.w = samp0[]..swiz;
              r45.xyz = r45.xyz + -r12.xyz;
              r39.w = r48.x * r48.x;
              r40.w = dot(r45.xyz, r45.xyz);
              r39.w = r39.w / r40.w;
              r39.w = min(1, r39.w);
              r45.xy = saturate(r36.ww * r47.xz + r47.yw);
              r48.zw = r45.xy * r45.xy;
              r45.xy = r45.xy * float2(-2,-2) + float2(3,3);
              r45.xy = r48.zw * r45.xy;
              r39.w = r45.x * r39.w;
              r39.w = r39.w * r45.y;
              r49.w = r50.w;
              r45.x = dot(r49.xyzw, r12.xyzw);
              r60.xyz = r50.xyz;
              r60.w = r51.w;
              r45.y = dot(r60.xyzw, r12.xyzw);
              r26.xy = r45.xy / r36.ww;
              r36.w = cmp(r54.w < 0.00048828125);
              if (r36.w != 0) {
                r58.y = r59.x;
                r45.xy = saturate(abs(r26.xy) * r58.zw + r58.xy);
                r48.zw = r45.xy * r45.xy;
                r45.xy = r45.xy * float2(-2,-2) + float2(3,3);
                r45.xy = r48.zw * r45.xy;
                r36.w = r45.x * r45.y;
              } else {
                r54.w = r58.y;
                r54.xyzw = saturate(r54.xyzw * abs(r26.yyxx));
                r54.xyzw = log2(r54.xyzw);
                r54.xyzw = r58.xxxx * r54.xyzw;
                r54.xyzw = exp2(r54.xyzw);
                r45.xy = r54.xy + r54.zw;
                r45.xy = log2(r45.xy);
                r45.xy = r59.xx * r45.xy;
                r45.xy = exp2(r45.xy);
                r40.w = r58.z * r45.x;
                r41.w = r58.w * r45.y + -1;
                r40.w = r58.w * r45.y + -r40.w;
                r40.w = saturate(r41.w / r40.w);
                r41.w = r40.w * r40.w;
                r40.w = r40.w * -2 + 3;
                r36.w = r41.w * r40.w;
              }
              r34.w = r39.w * r36.w;
              r36.w = r38.w ? 0.000000 : 0;
              if (r36.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyz, r30.w, l(220), t12.xyzx
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
                r38.w = dot(r59.yzw, r26.xyz);
                r26.x = dot(r45.xyz, r26.xyz);
                r45.x = frac(r38.w);
                r45.y = frac(r26.x);
                r26.x = (int)r36.w + -1;
                r45.z = (uint)r26.x;
                r57.xyz = gCookieArray.SampleLevel(samplerLinear_s, r45.xyz, 0).xyz;
              } else {
                r57.xyz = float3(1,1,1);
              }
              r35.w = -1;
              break;
            }
            case 4 :            r45.xyz = r55.xyz + -r12.xyz;
            r26.x = dot(r45.xyz, r45.xyz);
            r26.y = sqrt(r26.x);
            r36.w = r48.x * r48.x;
            r26.x = r36.w / r26.x;
            r26.x = min(1, r26.x);
            r45.xy = saturate(r26.yy * r47.xz + r47.yw);
            r47.xy = r45.xy * r45.xy;
            r45.xy = r45.xy * float2(-2,-2) + float2(3,3);
            r45.xy = r47.xy * r45.xy;
            r26.x = r45.x * r26.x;
            r34.w = r26.x * r45.y;
            r57.xyz = float3(1,1,1);
            r35.w = -1;
            break;
            default :
            r57.xyz = float3(1,1,1);
            r35.w = 0;
            break;
          }
          r26.x = r35.w ? r34.w : 1;
          r26.y = cmp(0 < r26.x);
          if (r26.y != 0) {
            if (3 == 0) r45.x = 0; else if (3+27 < 32) {             r45.x = (uint)r46.w << (32-(3 + 27)); r45.x = (uint)r45.x >> (32-3);            } else r45.x = (uint)r46.w >> 27;
            if (4 == 0) r45.y = 0; else if (4+16 < 32) {             r45.y = (uint)r46.w << (32-(4 + 16)); r45.y = (uint)r45.y >> (32-4);            } else r45.y = (uint)r46.w >> 16;
            r26.y = cmp((int)r45.x != 1);
            if (r26.y != 0) {
              r26.y = dot(r56.xyz, r6.xyz);
              r26.y = abs(r26.y) * -0.200000003 + 0.400000006;
              r25.xyz = r6.xyz * r26.yyy + r12.xyz;
              r26.y = cmp((int)r31.w != 4);
              if (r26.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.y, r30.w, l(144), t12.xxxx
              r47.y = samp0[]..swiz;
                r49.w = r50.w;
                r54.x = dot(r49.xyzw, r25.xyzw);
                r50.w = r51.w;
                r54.y = dot(r50.xyzw, r25.xyzw);
                r51.w = r52.w;
                r26.y = dot(r51.xyzw, r25.xyzw);
                r52.w = r53.x;
                r30.w = dot(r52.xyzw, r25.xyzw);
                r31.w = cmp(r30.w < r26.y);
                r45.xz = r54.xy / r30.ww;
                r45.xz = saturate(r45.xz * float2(0.5,-0.5) + float2(0.5,0.5));
                r47.x = r53.z;
                r47.xy = r45.xz * r53.yw + r47.xy;
                r26.y = r26.y / r30.w;
              } else {
                r25.xyz = r25.xyz + -r49.xyz;
                r30.w = max(abs(r25.y), abs(r25.z));
                r30.w = max(r30.w, abs(r25.x));
                r30.w = r50.w / r30.w;
                r26.y = r30.w + r50.x;
                r30.w = dot(r25.xyz, r25.xyz);
                r30.w = rsqrt(r30.w);
                r47.xyz = r30.www * r25.xyz;
                r31.w = 0;
              }
              if (r31.w == 0) {
                r25.x = max(6.10351563e-05, r26.y);
                if (r32.w != 0) {
                  r25.y = (int)r46.w & 0x0000ffff;
                  r49.w = (uint)r25.y;
                  r25.yz = float2(0,0);
                  while (true) {
                    r26.y = cmp((int)r25.z >= 8);
                    if (r26.y != 0) break;
                    r50.y = dot(icb[r25.z+0].yx, r21.xy);
                    r50.z = dot(icb[r25.z+0].yx, r21.yz);
                    r50.yz = r50.yz * r48.yy;
                    r50.x = r50.y * r16.x;
                    r50.w = r50.y * r15.x;
                    r49.xyz = r50.xzw + r47.xyz;
                    r26.y = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r49.xyzw, r25.x).x;
                    r25.y = r26.y * 0.125 + r25.y;
                    r25.z = (int)r25.z + 1;
                  }
                } else {
                  r25.z = (int)r46.w & 0x0000ffff;
                  if (r26.w != 0) {
                    r49.z = (uint)r25.z;
                    r26.y = 0;
                    r30.w = 0;
                    while (true) {
                      r31.w = cmp((int)r30.w >= 8);
                      if (r31.w != 0) break;
                      r50.x = dot(icb[r30.w+0].yx, r21.xw);
                      r50.y = dot(icb[r30.w+0].xy, r13.xy);
                      r49.xy = r50.xy * r48.yy + r47.xy;
                      r31.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r49.xyz, r25.x).x;
                      r26.y = r31.w * 0.125 + r26.y;
                      r30.w = (int)r30.w + 1;
                    }
                  } else {
                    r47.w = (uint)r25.z;
                    r26.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r47.xyw, r25.x).x;
                  }
                  r25.x = r26.y * r26.y;
                  r25.y = r25.x * r26.y;
                }
              } else {
                r25.y = 1;
              }
            } else {
              r25.y = 1;
            }
            r25.x = cmp(0 < (uint)r45.y);
            r25.x = r6.w ? r25.x : 0;
            if (r25.x != 0) {
              r25.x = (int)r45.y + numLights;
              r25.x = (int)r25.x + -1;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.z, r25.x, l(52), t12.xxxx
            r25.z = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r25.x, l(68), t12.xyzw
            r47.x = samp0[]..swiz;
            r47.y = samp0[]..swiz;
            r47.z = samp0[]..swiz;
            r47.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r25.x, l(84), t12.xyzw
            r48.x = samp0[]..swiz;
            r48.y = samp0[]..swiz;
            r48.z = samp0[]..swiz;
            r48.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r25.x, l(100), t12.xyzw
            r49.x = samp0[]..swiz;
            r49.y = samp0[]..swiz;
            r49.z = samp0[]..swiz;
            r49.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r25.x, l(116), t12.xyzw
            r50.x = samp0[]..swiz;
            r50.y = samp0[]..swiz;
            r50.z = samp0[]..swiz;
            r50.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r25.x, l(132), t12.xyzw
            r51.x = samp0[]..swiz;
            r51.y = samp0[]..swiz;
            r51.z = samp0[]..swiz;
            r51.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r25.x, l(148), t12.xyzw
            r52.x = samp0[]..swiz;
            r52.y = samp0[]..swiz;
            r52.z = samp0[]..swiz;
            r52.w = samp0[]..swiz;
              r30.w = dot(r56.xyz, r6.xyz);
              r30.w = abs(r30.w) * -0.200000003 + 0.400000006;
              r24.xyz = r6.xyz * r30.www + r12.xyz;
              r45.x = dot(r47.xyzw, r24.xyzw);
              r45.y = dot(r48.xyzw, r24.xyzw);
              r30.w = dot(r49.xyzw, r24.xyzw);
              r24.x = dot(r50.xyzw, r24.xyzw);
              r24.y = cmp(r24.x < r30.w);
              r45.xy = r45.xy / r24.xx;
              r45.xy = r45.xy * float2(0.5,-0.5) + float2(0.5,0.5);
              r45.xy = r45.xy + r52.zw;
              r45.xy = r45.xy * r52.xy;
              r47.xy = r25.zz / r51.xz;
              r47.zw = float2(1,1) + -r47.xy;
              r47.zw = cmp(r45.xy >= r47.zw);
              r47.xy = cmp(r47.xy >= r45.xy);
              r47.xy = (int2)r47.xy | (int2)r47.zw;
              r24.z = (int)r47.y | (int)r47.x;
              r24.y = (int)r24.y | (int)r24.z;
              if (r24.y == 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r25.x, l(28), t12.xxxx
              r24.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xy, r25.x, l(164), t12.xyxx
              r47.x = samp0[]..swiz;
              r47.y = samp0[]..swiz;
                r45.xy = saturate(r45.xy);
                r45.xy = r45.xy * r51.xz + r51.yw;
                r24.z = r47.y * r24.x;
                r24.x = r47.x * r24.x + r30.w;
                r24.x = r24.x / r24.z;
                r24.x = max(6.10351563e-05, r24.x);
                r24.y = r24.y ? 0.000000 : 0;
                if (r26.w != 0) {
                  r47.z = (uint)r24.y;
                  r24.z = 0;
                  r25.x = 0;
                  while (true) {
                    r30.w = cmp((int)r25.x >= 8);
                    if (r30.w != 0) break;
                    r48.x = dot(icb[r25.x+0].xy, r14.xy);
                    r48.y = dot(icb[r25.x+0].yx, r14.xz);
                    r47.xy = r48.xy * r25.zz + r45.xy;
                    r30.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r47.xyz, r24.x).x;
                    r24.z = r30.w * 0.125 + r24.z;
                    r25.x = (int)r25.x + 1;
                  }
                } else {
                  r45.z = (uint)r24.y;
                  r24.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r45.xyz, r24.x).x;
                }
                r24.x = r24.z * r24.z;
                r24.x = r24.x * r24.z;
              } else {
                r24.x = 1;
              }
              r25.y = r25.y * r24.x;
            } else {
              if (4 == 0) r24.x = 0; else if (4+20 < 32) {               r24.x = (uint)r46.w << (32-(4 + 20)); r24.x = (uint)r24.x >> (32-4);              } else r24.x = (uint)r46.w >> 20;
              r24.y = cmp(0 < (uint)r24.x);
              r24.y = r24.y ? r3.w : 0;
              if (r24.y != 0) {
                r24.x = (int)r24.x + numLights;
                r24.x = (int)r24.x + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.y, r24.x, l(52), t12.xxxx
              r24.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r24.x, l(68), t12.xyzw
              r47.x = samp0[]..swiz;
              r47.y = samp0[]..swiz;
              r47.z = samp0[]..swiz;
              r47.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r24.x, l(84), t12.xyzw
              r48.x = samp0[]..swiz;
              r48.y = samp0[]..swiz;
              r48.z = samp0[]..swiz;
              r48.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r24.x, l(100), t12.xyzw
              r49.x = samp0[]..swiz;
              r49.y = samp0[]..swiz;
              r49.z = samp0[]..swiz;
              r49.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r24.x, l(116), t12.xyzw
              r50.x = samp0[]..swiz;
              r50.y = samp0[]..swiz;
              r50.z = samp0[]..swiz;
              r50.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r24.x, l(132), t12.xyzw
              r51.x = samp0[]..swiz;
              r51.y = samp0[]..swiz;
              r51.z = samp0[]..swiz;
              r51.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r24.x, l(148), t12.xyzw
              r52.x = samp0[]..swiz;
              r52.y = samp0[]..swiz;
              r52.z = samp0[]..swiz;
              r52.w = samp0[]..swiz;
                r25.x = dot(r56.xyz, r6.xyz);
                r25.x = abs(r25.x) * -0.200000003 + 0.400000006;
                r27.xyz = r6.xyz * r25.xxx + r12.xyz;
                r45.x = dot(r47.xyzw, r27.xyzw);
                r45.y = dot(r48.xyzw, r27.xyzw);
                r25.x = dot(r49.xyzw, r27.xyzw);
                r25.z = dot(r50.xyzw, r27.xyzw);
                r27.x = cmp(r25.z < r25.x);
                r27.yz = r45.xy / r25.zz;
                r27.yz = r27.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r27.yz = r27.yz + r52.zw;
                r27.yz = r27.yz * r52.xy;
                r45.xy = r24.yy / r51.xz;
                r47.xy = float2(1,1) + -r45.xy;
                r47.xy = cmp(r27.yz >= r47.xy);
                r45.xy = cmp(r45.xy >= r27.yz);
                r45.xy = (int2)r45.xy | (int2)r47.xy;
                r30.w = (int)r45.y | (int)r45.x;
                r27.x = (int)r27.x | (int)r30.w;
                if (r27.x == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.x, r24.x, l(28), t12.xxxx
                r27.x = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r24.x, l(164), t12.xyxx
                r45.x = samp0[]..swiz;
                r45.y = samp0[]..swiz;
                  r27.yz = saturate(r27.yz);
                  r47.xy = r27.yz * r51.xz + r51.yw;
                  r24.x = r45.y * r25.z;
                  r25.x = r45.x * r25.z + r25.x;
                  r24.x = r25.x / r24.x;
                  r24.x = max(6.10351563e-05, r24.x);
                  r25.x = r27.x ? 0.000000 : 0;
                  if (r26.w != 0) {
                    r27.z = (uint)r25.x;
                    r25.z = 0;
                    r30.w = 0;
                    while (true) {
                      r31.w = cmp((int)r30.w >= 8);
                      if (r31.w != 0) break;
                      r45.x = dot(icb[r30.w+0].xy, r28.xy);
                      r45.y = dot(icb[r30.w+0].yx, r28.xz);
                      r27.xy = r45.xy * r24.yy + r47.xy;
                      r27.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r24.x).x;
                      r25.z = r27.x * 0.125 + r25.z;
                      r30.w = (int)r30.w + 1;
                    }
                  } else {
                    r47.z = (uint)r25.x;
                    r25.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r47.xyz, r24.x).x;
                  }
                  r24.x = r25.z * r25.z;
                  r24.x = r24.x * r25.z;
                } else {
                  r24.x = 1;
                }
                r25.y = r25.y * r24.x;
              }
            }
            r24.x = r26.x * r25.y;
            r24.y = cmp(0 < r24.x);
            if (r24.y != 0) {
              r46.x = r45.w;
              r27.xyz = r46.xyz * r2.yzw;
              r24.y = saturate(dot(r1.xyz, r56.xyz));
              r27.xyz = r27.xyz * r57.xyz;
              r25.x = dot(r56.xyz, r0.xyz);
              r25.x = 0.200000003 + r25.x;
              r25.x = saturate(0.833333313 * r25.x);
              r25.x = r25.x * r25.x;
              r30.w = 1.25 * r25.x;
              r45.x = dot(r56.xyz, v7.xyz);
              r45.y = dot(r56.xyz, v8.xyz);
              r31.w = dot(r45.xy, r45.xy);
              r31.w = rsqrt(r31.w);
              r45.xy = r45.xy * r31.ww;
              r45.z = -r45.x;
              r46.x = dot(r7.yx, r45.yz);
              r46.y = dot(r7.yx, -r45.xy);
              r45.xy = r46.xy * float2(1,2) + float2(0.5,1);
              r31.w = dot(r56.xyz, r6.xyz);
              r31.w = r31.w * 0.689655125 + 0.310344785;
              r32.w = cmp(1 < r45.y);
              r34.w = 2 + -r45.y;
              r45.z = r32.w ? r34.w : r45.y;
              r32.w = 126.5 * r31.w;
              r34.w = floor(r32.w);
              r32.w = ceil(r32.w);
              r45.xy = float2(0.0078125,1) * r45.xz;
              r45.zw = r34.ww * float2(0.0078125,0) + r45.xy;
              r35.w = causticMap.SampleLevel(LinearSampler_s, r45.zw, 0).x;
              r45.xy = r32.ww * float2(0.0078125,0) + r45.xy;
              r32.w = causticMap.SampleLevel(LinearSampler_s, r45.xy, 0).x;
              r31.w = r31.w * 126.5 + -r34.w;
              r32.w = r32.w + -r35.w;
              r31.w = r31.w * r32.w + r35.w;
              r25.x = -r25.x * 1.25 + r31.w;
              r45.xyz = r5.xxx * r25.xxx + r30.www;
              r25.x = cmp(0 < r24.y);
              if (r25.x != 0) {
                r46.xyz = -r12.xyz * r10.zzz + r56.xyz;
                r25.x = dot(r46.xyz, r46.xyz);
                r25.x = rsqrt(r25.x);
                r46.xyz = r46.xyz * r25.xxx;
                r25.x = dot(r1.xyz, r46.xyz);
                r25.x = log2(abs(r25.x));
                r25.x = r25.x * r8.w;
                r25.x = exp2(r25.x);
                r25.x = r25.x * r7.z;
                r24.y = r25.x * r24.y;
                r24.y = r24.y * r33.w;
                r47.xyz = r24.yyy / r7.www;
                r24.y = dot(r46.xyz, r56.xyz);
                r24.y = saturate(1 + -r24.y);
                r25.x = r24.y * r24.y;
                r25.x = r25.x * r25.x;
                r24.y = r25.x * r24.y;
                r46.xyz = r47.zzz * r24.yyy;
              } else {
                r46.xyz = float3(0,0,0);
                r47.xyz = float3(0,0,0);
              }
              r24.y = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.y = r24.x * r24.y;
              r25.x = cmp(r28.w < r24.y);
              if (r25.x != 0) {
                r25.x = r22.z * r22.w;
                r48.xyz = r25.xxx * r23.xyz;
                r42.xyz = r48.xyz * r39.xyz + r42.xyz;
                r44.xyz = r48.xyz * r40.xyz + r44.xyz;
                r43.xyz = r48.xyz * r41.xyz + r43.xyz;
                r23.xyz = r27.xyz;
                r38.xyz = r56.xyz;
                r39.xyz = r45.xyz;
                r40.xyz = r47.xyz;
                r41.xyz = r46.xyz;
                r28.w = r24.y;
                r22.z = r26.x;
                r22.w = r25.y;
              } else {
                r27.xyz = r27.xyz * r24.xxx;
                r42.xyz = r27.xyz * r45.zzz + r42.xyz;
                r44.xyz = r27.xyz * r47.xyz + r44.xyz;
                r43.xyz = r27.xyz * r46.xyz + r43.xyz;
              }
            }
          }
        }
      }
    }
    r29.xyz = r23.xyz;
    r30.xyz = r38.xyz;
    r31.xyz = r39.xyz;
    r32.xyz = r40.xyz;
    r33.xyz = r41.xyz;
    r34.xyz = r42.xyz;
    r35.xyz = r43.xyz;
    r37.zw = r22.zw;
    r37.y = r28.w;
    r36.xyz = r44.xyz;
    r19.w = (int)r19.w + 32;
  }
  r0.z = 0;
  r0.xy = float2(1,-1) * r30.yx;
  r2.yzw = r30.zxy * r0.yzx;
  r2.yzw = r30.yzx * r0.zxy + -r2.yzw;
  r6.xyz = viewProjectionMatrix._m10_m11_m13 * r17.yyy;
  r6.xyz = r17.xxx * viewProjectionMatrix._m00_m01_m03 + r6.xyz;
  r6.xyz = r17.zzz * viewProjectionMatrix._m20_m21_m23 + r6.xyz;
  r6.xyz = r6.xyz + r8.xyz;
  r7.z = rcp(r6.z);
  r6.xy = r7.zz * r6.xy;
  r7.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r6.xyw = r30.xyz * float3(2.4000001,2.4000001,2.4000001) + r17.xyz;
  r10.xyz = r10.xxx * r2.yzw;
  r10.xyz = r11.xxx * r0.xyz + r10.xyz;
  r10.xyz = r10.xyz * float3(0.119999997,0.119999997,0.119999997) + r6.xyw;
  r13.xyz = viewProjectionMatrix._m10_m11_m13 * r10.yyy;
  r10.xyw = r10.xxx * viewProjectionMatrix._m00_m01_m03 + r13.xyz;
  r10.xyz = r10.zzz * viewProjectionMatrix._m20_m21_m23 + r10.xyw;
  r10.xyz = r10.xyz + r8.xyz;
  r10.xy = float2(0.5,-0.5) * r10.xy;
  r13.z = rcp(r10.z);
  r13.xy = r10.xy * r13.zz + float2(0.5,0.5);
  r10.xyz = -r7.xyz;
  r13.xyz = r13.xyz + r10.xyz;
  r3.w = 3.14159989 + r4.w;
  sincos(r3.w, r11.x, r14.x);
  r2.yzw = r11.xxx * r2.yzw;
  r0.xyz = r14.xxx * r0.xyz + r2.yzw;
  r0.xyz = r0.xyz * float3(0.119999997,0.119999997,0.119999997) + r6.xyw;
  r2.yzw = viewProjectionMatrix._m10_m11_m13 * r0.yyy;
  r2.yzw = r0.xxx * viewProjectionMatrix._m00_m01_m03 + r2.yzw;
  r0.xyz = r0.zzz * viewProjectionMatrix._m20_m21_m23 + r2.yzw;
  r0.xyz = r0.xyz + r8.xyz;
  r0.xy = float2(0.5,-0.5) * r0.xy;
  r8.z = rcp(r0.z);
  r8.xy = r0.xy * r8.zz + r10.xy;
  r10.w = 0.5;
  r0.xyz = r8.xyz + r10.wwz;
  r2.y = dot(r13.xy, r13.xy);
  r2.y = sqrt(r2.y);
  r2.y = rcp(r2.y);
  r2.y = r5.w * r2.y;
  r2.zw = r1.ww * float2(0.5,0.5) + float2(0.333333343,1);
  r2.zw = float2(0.117647059,0.117647059) * r2.zw;
  r2.zw = r2.zw * r2.zw;
  x4[0].x = r2.z;
  r6.xyw = r13.xyz * r2.zzz + r7.xyz;
  r8.xy = cmp(r2.yy < r2.zw);
  r6.xy = renderTargetSize.xy * r6.xy;
  r10.xy = (int2)r6.xy;
  r10.zw = float2(0,0);
  r3.w = floatZSampler.Load(r10.xyz).x;
  r4.w = cmp(r3.w >= 0.984375);
  r5.w = 1.01587307 * r3.w;
  r3.w = r3.w * 64 + -63;
  r3.w = r4.w ? r3.w : r5.w;
  r3.w = max(9.99999994e-09, r3.w);
  r3.w = rcp(r3.w);
  x5[0].x = r3.w;
  r4.w = 0.0419999994 + r3.w;
  r4.w = r6.w * r4.w;
  r4.w = cmp(1 < r4.w);
  r4.w = r4.w ? 1.000000 : 0;
  r4.w = r8.x ? r4.w : 1;
  x3[0].x = r4.w;
  x4[1].x = r2.w;
  r6.xyw = r0.xyz * r2.www + r7.xyz;
  r6.xy = renderTargetSize.xy * r6.xy;
  r10.xy = (int2)r6.xy;
  r10.zw = float2(0,0);
  r5.w = floatZSampler.Load(r10.xyz).x;
  r6.x = cmp(r5.w >= 0.984375);
  r6.y = 1.01587307 * r5.w;
  r5.w = r5.w * 64 + -63;
  r5.w = r6.x ? r5.w : r6.y;
  r5.w = max(9.99999994e-09, r5.w);
  r5.w = rcp(r5.w);
  x5[1].x = r5.w;
  r6.x = 0.0419999994 + r5.w;
  r6.x = r6.w * r6.x;
  r6.x = cmp(1 < r6.x);
  r6.x = r6.x ? 1.000000 : 0;
  r6.x = r8.y ? r6.x : 1;
  x3[1].x = r6.x;
  r6.y = r6.x + r4.w;
  r6.y = cmp(r6.y != 0.000000);
  if (r6.y != 0) {
    r6.yw = r1.ww * float2(0.5,0.5) + float2(1.33333337,2);
    r6.yw = float2(0.117647059,0.117647059) * r6.yw;
    r6.yw = r6.yw * r6.yw + -r2.zw;
    r2.z = r4.w * r6.y + r2.z;
    x4[0].x = r2.z;
    r8.xyz = r13.xyz * r2.zzz + r7.xyz;
    r2.z = cmp(r2.y < r2.z);
    r8.xy = renderTargetSize.xy * r8.xy;
    r10.xy = (int2)r8.xy;
    r10.zw = float2(0,0);
    r6.y = floatZSampler.Load(r10.xyz).x;
    r7.w = cmp(r6.y >= 0.984375);
    r8.x = 1.01587307 * r6.y;
    r6.y = r6.y * 64 + -63;
    r6.y = r7.w ? r6.y : r8.x;
    r6.y = max(9.99999994e-09, r6.y);
    r6.y = rcp(r6.y);
    r3.w = r2.z ? r6.y : r3.w;
    x5[0].x = r3.w;
    r3.w = 0.0419999994 + r6.y;
    r3.w = r8.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x3[0].x = r2.z;
    r2.w = r6.x * r6.w + r2.w;
    x4[1].x = r2.w;
    r8.xyz = r0.xyz * r2.www + r7.xyz;
    r2.w = cmp(r2.y < r2.w);
    r6.yw = renderTargetSize.xy * r8.xy;
    r10.xy = (int2)r6.yw;
    r10.zw = float2(0,0);
    r3.w = floatZSampler.Load(r10.xyz).x;
    r4.w = cmp(r3.w >= 0.984375);
    r6.y = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r4.w ? r3.w : r6.y;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r4.w = r2.w ? r3.w : r5.w;
    x5[1].x = r4.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r8.z * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r6.x * r3.w;
    r2.w = r2.w ? r3.w : r6.x;
    x3[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r1.ww * float2(0.5,0.5) + float2(2.33333325,3);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x4[0].x;
    r4.w = x3[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x4[0].x = r2.z;
    r6.xyw = r13.xyz * r2.zzz + r7.xyz;
    r2.z = cmp(r2.y < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x5[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x3[0].x = r2.z;
    r3.w = x4[1].x;
    r4.w = x3[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x4[1].x = r2.w;
    r6.xyw = r0.xyz * r2.www + r7.xyz;
    r2.w = cmp(r2.y < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x5[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x3[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r1.ww * float2(0.5,0.5) + float2(3.33333325,4);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x4[0].x;
    r4.w = x3[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x4[0].x = r2.z;
    r6.xyw = r13.xyz * r2.zzz + r7.xyz;
    r2.z = cmp(r2.y < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x5[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x3[0].x = r2.z;
    r3.w = x4[1].x;
    r4.w = x3[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x4[1].x = r2.w;
    r6.xyw = r0.xyz * r2.www + r7.xyz;
    r2.w = cmp(r2.y < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x5[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x3[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r1.ww * float2(0.5,0.5) + float2(4.33333349,5);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x4[0].x;
    r4.w = x3[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x4[0].x = r2.z;
    r6.xyw = r13.xyz * r2.zzz + r7.xyz;
    r2.z = cmp(r2.y < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x5[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x3[0].x = r2.z;
    r3.w = x4[1].x;
    r4.w = x3[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x4[1].x = r2.w;
    r6.xyw = r0.xyz * r2.www + r7.xyz;
    r2.w = cmp(r2.y < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x5[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x3[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r1.ww * float2(0.5,0.5) + float2(5.33333349,6);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x4[0].x;
    r4.w = x3[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x4[0].x = r2.z;
    r6.xyw = r13.xyz * r2.zzz + r7.xyz;
    r2.z = cmp(r2.y < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x5[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x3[0].x = r2.z;
    r3.w = x4[1].x;
    r4.w = x3[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x4[1].x = r2.w;
    r6.xyw = r0.xyz * r2.www + r7.xyz;
    r2.w = cmp(r2.y < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x5[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x3[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r1.ww * float2(0.5,0.5) + float2(6.33333349,7);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r3.w = x4[0].x;
    r4.w = x3[0].x;
    r2.z = r2.z * r2.z + -r3.w;
    r2.z = r4.w * r2.z + r3.w;
    x4[0].x = r2.z;
    r6.xyw = r13.xyz * r2.zzz + r7.xyz;
    r2.z = cmp(r2.y < r2.z);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[0].x;
    r5.w = r2.z ? r3.w : r5.w;
    x5[0].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.z = r2.z ? r3.w : r4.w;
    x3[0].x = r2.z;
    r3.w = x4[1].x;
    r4.w = x3[1].x;
    r2.w = r2.w * r2.w + -r3.w;
    r2.w = r4.w * r2.w + r3.w;
    x4[1].x = r2.w;
    r6.xyw = r0.xyz * r2.www + r7.xyz;
    r2.w = cmp(r2.y < r2.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r3.w = floatZSampler.Load(r8.xyz).x;
    r5.w = cmp(r3.w >= 0.984375);
    r6.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r3.w = r5.w ? r3.w : r6.x;
    r3.w = max(9.99999994e-09, r3.w);
    r3.w = rcp(r3.w);
    r5.w = x5[1].x;
    r5.w = r2.w ? r3.w : r5.w;
    x5[1].x = r5.w;
    r3.w = 0.0419999994 + r3.w;
    r3.w = r6.w * r3.w;
    r3.w = cmp(1 < r3.w);
    r3.w = r3.w ? 1.000000 : 0;
    r3.w = r4.w * r3.w;
    r2.w = r2.w ? r3.w : r4.w;
    x3[1].x = r2.w;
    r2.z = r2.z + r2.w;
    r2.z = cmp(r2.z == 0.000000);
  } else {
    r2.z = -1;
  }
  if (r2.z == 0) {
    r2.zw = r1.ww * float2(0.5,0.5) + float2(7.33333349,8);
    r2.zw = float2(0.117647059,0.117647059) * r2.zw;
    r1.w = x4[0].x;
    r3.w = x3[0].x;
    r2.z = r2.z * r2.z + -r1.w;
    r1.w = r3.w * r2.z + r1.w;
    r6.xyw = r13.xyz * r1.www + r7.xyz;
    r1.w = cmp(r2.y < r1.w);
    r6.xy = renderTargetSize.xy * r6.xy;
    r8.xy = (int2)r6.xy;
    r8.zw = float2(0,0);
    r2.z = floatZSampler.Load(r8.xyz).x;
    r4.w = cmp(r2.z >= 0.984375);
    r5.w = 1.01587307 * r2.z;
    r2.z = r2.z * 64 + -63;
    r2.z = r4.w ? r2.z : r5.w;
    r2.z = max(9.99999994e-09, r2.z);
    r2.z = rcp(r2.z);
    r4.w = x5[0].x;
    r4.w = r1.w ? r2.z : r4.w;
    x5[0].x = r4.w;
    r2.z = 0.0419999994 + r2.z;
    r2.z = r6.w * r2.z;
    r2.z = cmp(1 < r2.z);
    r2.z = r2.z ? 1.000000 : 0;
    r2.z = r3.w * r2.z;
    r1.w = r1.w ? r2.z : r3.w;
    x3[0].x = r1.w;
    r1.w = x4[1].x;
    r2.z = x3[1].x;
    r2.w = r2.w * r2.w + -r1.w;
    r1.w = r2.z * r2.w + r1.w;
    r0.xyz = r0.xyz * r1.www + r7.xyz;
    r1.w = cmp(r2.y < r1.w);
    r0.xy = renderTargetSize.xy * r0.xy;
    r7.xy = (int2)r0.xy;
    r7.zw = float2(0,0);
    r0.x = floatZSampler.Load(r7.xyz).x;
    r0.y = cmp(r0.x >= 0.984375);
    r2.y = 1.01587307 * r0.x;
    r0.x = r0.x * 64 + -63;
    r0.x = r0.y ? r0.x : r2.y;
    r0.x = max(9.99999994e-09, r0.x);
    r0.x = rcp(r0.x);
    r0.y = x5[1].x;
    r0.y = r1.w ? r0.x : r0.y;
    x5[1].x = r0.y;
    r0.x = 0.0419999994 + r0.x;
    r0.x = r0.z * r0.x;
    r0.x = cmp(1 < r0.x);
    r0.x = r0.x ? 1.000000 : 0;
    r0.x = r2.z * r0.x;
    r0.x = r1.w ? r0.x : r2.z;
    x3[1].x = r0.x;
  }
  r0.x = x5[0].x;
  r0.x = r0.x + -r6.z;
  r0.x = cmp(2.4000001 < abs(r0.x));
  r0.y = x3[0].x;
  r0.y = -r0.y * 0.5 + 1;
  r0.x = r0.x ? 0.5 : r0.y;
  r0.y = x5[1].x;
  r0.y = r0.y + -r6.z;
  r0.y = cmp(2.4000001 < abs(r0.y));
  r0.z = x3[1].x;
  r0.z = 0.5 * r0.z;
  r0.y = r0.y ? -0.5 : -r0.z;
  r0.x = r0.x + r0.y;
  r0.x = saturate(1 + -r0.x);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r0.y * r0.x;
  r0.x = min(r37.w, r0.x);
  r0.x = r37.z * r0.x;
  r0.xyz = r0.xxx * r29.xyz;
  r2.yzw = r0.xyz * r31.xyz + r34.xyz;
  r6.xyz = r0.xyz * r32.xyz + r36.xyz;
  r0.xyz = r0.xyz * r33.xyz + r35.xyz;
  r1.w = saturate(dot(r9.xyz, r11.yzw));
  r7.y = 0.150000006 + r0.w;
  r0.w = 1 + -r7.y;
  r3.w = 5 * r0.w;
  r4.w = r0.w * 5 + -2.5;
  r4.w = 0.400000006 * r4.w;
  r4.w = max(0, r4.w);
  r4.w = 100 * r4.w;
  r7.zw = -r0.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r5.w = exp2(r7.z);
  r5.w = r5.w * r1.w;
  r5.w = 9.1368103 * r5.w;
  r6.w = r3.w * r0.w;
  r6.w = -r6.w * 2.0159049 + r7.w;
  r6.w = exp2(r6.w);
  r1.w = r6.w * r1.w;
  r1.w = 9.70808983 * r1.w;
  r1.w = max(r5.w, r1.w);
  r1.w = max(1.26815999, r1.w);
  r5.w = dot(-r11.yzw, r1.xyz);
  r5.w = r5.w + r5.w;
  r8.xyz = r1.xyz * -r5.www + -r11.yzw;
  r5.w = numRefProbes + -numOverrideProbes;
  r6.w = (int)r5.w & -32;
  r7.z = (int)r5.w + (int)-r6.w;
  r7.w = numRefProbes & -32;
  r10.x = (int)-r7.w + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r10.y = r6.w;
  while (true) {
    r10.z = cmp((uint)r10.y >= numRefProbes);
    if (r10.z != 0) break;
    r13.z = (uint)r10.y >> 5;
    r14.xyz = (int3)r13.xyz + (int3)r19.xyz;
    r10.z = visibleProbes.Load(r14.xyzw).x;
    r10.w = cmp((int)r6.w == (int)r10.y);
    bitmask.x = ((~(-1 << r7.z)) << 0) & 0xffffffff;  r11.x = (((uint)0 << 0) & bitmask.x) | ((uint)r10.z & ~bitmask.x);
    r10.z = r10.w ? r11.x : r10.z;
    r10.w = cmp((int)r7.w == (int)r10.y);
    if (r10.x == 0) r11.x = 0; else if (r10.x+0 < 32) {     r11.x = (uint)r10.z << (32-(r10.x + 0)); r11.x = (uint)r11.x >> (32-r10.x);    } else r11.x = (uint)r10.z >> 0;
    r10.z = r10.w ? r11.x : r10.z;
    r10.w = (int)r10.y + numLights;
    r23.xyzw = r21.xyzw;
    r24.xyz = r22.yzw;
    r11.x = r10.z;
    while (true) {
      if (r11.x == 0) break;
      r12.w = firstbitlow((uint)r11.x);
      r13.z = 1 << (int)r12.w;
      r13.w = (int)r11.x & (int)r13.z;
      if (r13.w != 0) {
        r11.x = (int)r11.x ^ (int)r13.z;
        r13.z = (int)r10.w + (int)r12.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r13.z, l(0), t11.xyzw
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
      r25.z = samp0[]..swiz;
      r25.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r13.z, l(16), t11.xyxx
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
        r25.xyz = r25.xyz + -r12.xyz;
        r14.z = r25.w;
        r14.xyz = cmp(abs(r25.xyz) < r14.zxy);
        r13.z = r14.y ? r14.x : 0;
        r13.z = r14.z ? r13.z : 0;
        if (r13.z != 0) {
          r12.w = (int)r10.y + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(0), t15.wxyz
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r12.w, l(96), t15.xxxy
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(116), t15.zwxy
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
          r14.xyz = -r25.yzw + r12.xyz;
          r15.w = (int)r26.w & 0x0000ffff;
          if (6 == 0) r16.w = 0; else if (6+25 < 32) {           r16.w = (uint)r26.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);          } else r16.w = (uint)r26.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r15.w, l(0), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(16), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(32), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(48), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(64), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(80), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
          r17.z = dot(r27.xyz, r14.xyz);
          r17.z = saturate(r17.z + r27.w);
          r17.w = dot(r28.xyz, r14.xyz);
          r17.w = saturate(r17.w + r28.w);
          r17.z = r17.z * r17.w;
          r17.w = dot(r29.xyz, r14.xyz);
          r17.w = saturate(r17.w + r29.w);
          r17.z = r17.z * r17.w;
          r17.w = dot(r30.xyz, r14.xyz);
          r17.w = saturate(r17.w + r30.w);
          r17.z = r17.z * r17.w;
          r17.w = dot(r31.xyz, r14.xyz);
          r17.w = saturate(r17.w + r31.w);
          r17.z = r17.z * r17.w;
          r17.w = dot(r32.xyz, r14.xyz);
          r17.w = saturate(r17.w + r32.w);
          r15.x = r17.z * r17.w;
          r17.z = (int)r13.z & 1;
          r17.zw = r17.zz ? r15.xy : r15.zx;
          r15.x = r13.z;
          r27.xy = r17.zw;
          r18.w = 1;
          while (true) {
            r19.w = cmp((int)r18.w >= (int)r16.w);
            if (r19.w != 0) break;
            r19.w = (int)r15.w + (int)r18.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r19.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r19.w = dot(r28.xyz, r14.xyz);
            r19.w = saturate(r19.w + r28.w);
            r19.w = r27.x * r19.w;
            r20.w = dot(r29.xyz, r14.xyz);
            r20.w = saturate(r20.w + r29.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r30.xyz, r14.xyz);
            r20.w = saturate(r20.w + r30.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r31.xyz, r14.xyz);
            r20.w = saturate(r20.w + r31.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r32.xyz, r14.xyz);
            r20.w = saturate(r20.w + r32.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r33.xyz, r14.xyz);
            r20.w = saturate(r20.w + r33.w);
            r27.x = r20.w * r19.w;
            r25.w = (uint)r15.x >> 2;
            if (1 == 0) r27.z = 0; else if (1+2 < 32) {             r27.z = (uint)r15.x << (32-(1 + 2)); r27.z = (uint)r27.z >> (32-1);            } else r27.z = (uint)r15.x >> 2;
            r27.w = (int)r25.w & 2;
            r28.x = max(r27.y, r27.x);
            r19.w = -r19.w * r20.w + 1;
            r19.w = r27.y * r19.w;
            r17.y = r27.w ? r19.w : r28.x;
            r27.xy = r27.zz ? r27.xy : r17.xy;
            r18.w = (int)r18.w + 1;
            r15.x = r25.w;
          }
          r27.y = saturate(r27.y);
          r13.z = r27.y * r13.w;
          r15.x = cmp(0 < r13.z);
          if (r15.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(16), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(32), t15.yxwz
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(48), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(64), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(80), t15.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(132), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(148), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(164), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(180), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(196), t15.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r12.w, l(212), t15.xyxx
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
            r24.z = r27.y * r13.w + r24.z;
            r12.w = r13.z * r26.z;
            r26.z = r33.z;
            r13.z = dot(r8.xyz, r26.xyz);
            r13.w = dot(r14.xyz, r26.xyz);
            r13.w = r13.w + -r33.w;
            r15.x = cmp(r13.w >= 0);
            r13.w = max(abs(r13.w), r4.w);
            r13.w = r15.x ? r13.w : -r13.w;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r13.w / r13.z;
            r13.z = min(131072, abs(r13.z));
            r33.z = r34.z;
            r13.w = dot(r8.xyz, r33.xyz);
            r15.x = dot(r14.xyz, r33.xyz);
            r15.x = r15.x + -r34.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r4.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r34.z = r35.z;
            r13.w = dot(r8.xyz, r34.xyz);
            r15.x = dot(r14.xyz, r34.xyz);
            r15.x = r15.x + -r35.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r4.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r35.z = r36.z;
            r13.w = dot(r8.xyz, r35.xyz);
            r15.x = dot(r14.xyz, r35.xyz);
            r15.x = r15.x + -r36.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r4.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r36.z = r37.x;
            r13.w = dot(r8.xyz, r36.xyz);
            r15.x = dot(r14.xyz, r36.xyz);
            r15.x = r15.x + -r37.y;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r4.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r38.zw = r37.zw;
            r13.w = dot(r8.zxy, r38.xzw);
            r15.x = dot(r14.zxy, r38.xzw);
            r15.x = r15.x + -r38.y;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r4.w);
            r15.x = r15.w ? r15.x : -r15.x;
            r13.w = max(1.00000001e-07, -r13.w);
            r13.w = r15.x / r13.w;
            r13.z = min(r13.z, abs(r13.w));
            r26.x = r30.w;
            r26.yz = r31.zw;
            r17.yzw = r26.xyz + r14.xyz;
            r17.yzw = r8.xyz * r13.zzz + r17.yzw;
            r13.w = dot(r17.yzw, r17.yzw);
            r13.w = sqrt(r13.w);
            r13.z = r13.z / r13.w;
            r13.z = r13.z + r13.z;
            r13.z = sqrt(r13.z);
            r13.z = r0.w * 5 + r13.z;
            r13.z = -0.844799995 + r13.z;
            r25.y = r28.z;
            r25.z = r29.x;
            r33.x = dot(r17.yzw, r25.xyz);
            r26.xy = r28.xw;
            r26.z = r29.w;
            r33.y = dot(r17.yzw, r26.xyz);
            r29.x = r28.y;
            r33.z = dot(r17.yzw, r29.xyz);
            if (9 == 0) r13.w = 0; else if (9+16 < 32) {             r13.w = (uint)r26.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);            } else r13.w = (uint)r26.w >> 16;
            r33.w = (uint)r13.w;
            r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r13.z).xyz;
            r28.x = dot(r14.xyz, r25.xyz);
            r28.y = dot(r14.xyz, r26.xyz);
            r28.z = dot(r14.xyz, r29.xyz);
            r14.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
            r31.z = r32.x;
            r14.xyz = r14.xyz * r31.xyz + r32.yzw;
            r33.x = dot(r9.xyz, r25.xyz);
            r33.y = dot(r9.xyz, r26.xyz);
            r33.z = dot(r9.xyz, r29.xyz);
            r25.xyz = cmp(float3(0,0,0) < r33.xyz);
            r16.z = r25.x ? 0 : 0.5;
            r26.xyz = r16.xyz + r14.xyz;
            r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
            r27.xzw = r33.xyz * r33.xyz;
            r27.xzw = r27.xzw * r12.www;
            r18.z = r25.y ? 0 : 0.5;
            r25.xyw = r18.xyz + r14.xyz;
            r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
            r25.xyw = r25.xyw * r27.zzz;
            r25.xyw = r26.xyz * r27.xxx + r25.xyw;
            r20.z = r25.z ? 0 : 0.5;
            r14.xyz = r20.xyz + r14.xyz;
            r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
            r14.xyz = r14.xyz * r27.www + r25.xyw;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
            r26.xyz = r25.xyz * r14.xyz;
            r13.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r23.xyz = r14.xyz * r25.xyz + r23.xyz;
            r13.w = r13.z * r1.w;
            r14.xyz = r17.yzw * r12.www;
            r12.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r12.w = r1.w * r13.z + r12.w;
            r12.w = r13.w / r12.w;
            r25.x = r23.w;
            r25.yz = r24.xy;
            r24.xyw = r14.yzx * r12.www + r25.yzx;
            r23.w = r24.w;
          }
        }
      }
    }
    r21.xyzw = r23.xyzw;
    r22.yzw = r24.xyz;
    r10.y = (int)r10.y + 32;
  }
  r7.w = cmp(r22.w < 1);
  if (r7.w != 0) {
    r10.xy = float2(0,0);
    r13.w = 0;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r16.x = 1;
    r17.xy = float2(0,0);
    r18.xy = float2(0,0);
    r20.x = r21.w;
    r20.yzw = r22.yzw;
    r23.xyz = r21.xyz;
    r7.w = r22.w;
    r10.w = 0;
    while (true) {
      r11.x = cmp((uint)r10.w >= (uint)r5.w);
      if (r11.x != 0) break;
      r10.z = (uint)r10.w >> 5;
      r13.xyz = (int3)r10.xyz + (int3)r19.xyz;
      r10.z = visibleProbes.Load(r13.xyzw).x;
      r11.x = cmp((int)r6.w == (int)r10.w);
      if (r7.z == 0) r12.w = 0; else if (r7.z+0 < 32) {       r12.w = (uint)r10.z << (32-(r7.z + 0)); r12.w = (uint)r12.w >> (32-r7.z);      } else r12.w = (uint)r10.z >> 0;
      r10.z = r11.x ? r12.w : r10.z;
      r11.x = (int)r10.w + numLights;
      r24.xyzw = r20.xyzw;
      r13.xyz = r23.xyz;
      r12.w = r7.w;
      r14.w = r10.z;
      while (true) {
        if (r14.w == 0) break;
        r15.w = firstbitlow((uint)r14.w);
        r16.z = 1 << (int)r15.w;
        r16.w = (int)r14.w & (int)r16.z;
        if (r16.w != 0) {
          r14.w = (int)r14.w ^ (int)r16.z;
          r16.z = (int)r11.x + (int)r15.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r16.z, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r16.z, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = r25.xyz + -r12.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r16.z = r25.y ? r25.x : 0;
          r16.z = r25.z ? r16.z : 0;
          if (r16.z != 0) {
            r15.w = (int)r10.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r15.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.zw, r15.w, l(96), t15.xxxy
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r15.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = -r25.yzw + r12.xyz;
            r17.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r18.w = 0; else if (6+25 < 32) {             r18.w = (uint)r26.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);            } else r18.w = (uint)r26.w >> 25;
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
            r19.w = dot(r28.xyz, r27.xyz);
            r19.w = saturate(r19.w + r28.w);
            r23.w = dot(r29.xyz, r27.xyz);
            r23.w = saturate(r23.w + r29.w);
            r19.w = r23.w * r19.w;
            r23.w = dot(r30.xyz, r27.xyz);
            r23.w = saturate(r23.w + r30.w);
            r19.w = r23.w * r19.w;
            r23.w = dot(r31.xyz, r27.xyz);
            r23.w = saturate(r23.w + r31.w);
            r19.w = r23.w * r19.w;
            r23.w = dot(r32.xyz, r27.xyz);
            r23.w = saturate(r23.w + r32.w);
            r19.w = r23.w * r19.w;
            r23.w = dot(r33.xyz, r27.xyz);
            r23.w = saturate(r23.w + r33.w);
            r14.x = r23.w * r19.w;
            r19.w = (int)r16.z & 1;
            r28.xy = r19.ww ? r14.xy : r14.zx;
            r14.x = r16.z;
            r29.xy = r28.xy;
            r19.w = 1;
            while (true) {
              r23.w = cmp((int)r19.w >= (int)r18.w);
              if (r23.w != 0) break;
              r23.w = (int)r17.w + (int)r19.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r23.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r23.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r23.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r23.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r23.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r23.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r23.w = dot(r30.xyz, r27.xyz);
              r23.w = saturate(r23.w + r30.w);
              r23.w = r29.x * r23.w;
              r25.w = dot(r31.xyz, r27.xyz);
              r25.w = saturate(r25.w + r31.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r32.xyz, r27.xyz);
              r25.w = saturate(r25.w + r32.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r33.xyz, r27.xyz);
              r25.w = saturate(r25.w + r33.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r34.xyz, r27.xyz);
              r25.w = saturate(r25.w + r34.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r35.xyz, r27.xyz);
              r25.w = saturate(r25.w + r35.w);
              r29.x = r25.w * r23.w;
              r27.w = (uint)r14.x >> 2;
              if (1 == 0) r28.z = 0; else if (1+2 < 32) {               r28.z = (uint)r14.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);              } else r28.z = (uint)r14.x >> 2;
              r28.w = (int)r27.w & 2;
              r29.z = max(r29.y, r29.x);
              r23.w = -r23.w * r25.w + 1;
              r23.w = r29.y * r23.w;
              r16.y = r28.w ? r23.w : r29.z;
              r29.xy = r28.zz ? r29.xy : r16.xy;
              r19.w = (int)r19.w + 1;
              r14.x = r27.w;
            }
            r14.x = saturate(r29.y + -r12.w);
            r16.y = r14.x * r16.w;
            r16.z = cmp(0 < r16.y);
            if (r16.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r15.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r15.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r15.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r24.w = r14.x * r16.w + r24.w;
              r14.x = r16.y * r26.z;
              r26.z = r34.z;
              r15.w = dot(r8.xyz, r26.xyz);
              r16.y = dot(r27.xyz, r26.xyz);
              r16.y = r16.y + -r34.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r4.w);
              r16.y = r16.z ? r16.y : -r16.y;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.y / r15.w;
              r15.w = min(131072, abs(r15.w));
              r34.z = r35.z;
              r16.y = dot(r8.xyz, r34.xyz);
              r16.z = dot(r27.xyz, r34.xyz);
              r16.z = r16.z + -r35.w;
              r16.w = cmp(r16.z >= 0);
              r16.z = max(abs(r16.z), r4.w);
              r16.z = r16.w ? r16.z : -r16.z;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r16.z / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r35.z = r36.z;
              r16.y = dot(r8.xyz, r35.xyz);
              r16.z = dot(r27.xyz, r35.xyz);
              r16.z = r16.z + -r36.w;
              r16.w = cmp(r16.z >= 0);
              r16.z = max(abs(r16.z), r4.w);
              r16.z = r16.w ? r16.z : -r16.z;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r16.z / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r36.z = r37.z;
              r16.y = dot(r8.xyz, r36.xyz);
              r16.z = dot(r27.xyz, r36.xyz);
              r16.z = r16.z + -r37.w;
              r16.w = cmp(r16.z >= 0);
              r16.z = max(abs(r16.z), r4.w);
              r16.z = r16.w ? r16.z : -r16.z;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r16.z / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r37.z = r38.x;
              r16.y = dot(r8.xyz, r37.xyz);
              r16.z = dot(r27.xyz, r37.xyz);
              r16.z = r16.z + -r38.y;
              r16.w = cmp(r16.z >= 0);
              r16.z = max(abs(r16.z), r4.w);
              r16.z = r16.w ? r16.z : -r16.z;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r16.z / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r39.zw = r38.zw;
              r16.y = dot(r8.zxy, r39.xzw);
              r16.z = dot(r27.zxy, r39.xzw);
              r16.z = r16.z + -r39.y;
              r16.w = cmp(r16.z >= 0);
              r16.z = max(abs(r16.z), r4.w);
              r16.z = r16.w ? r16.z : -r16.z;
              r16.y = max(1.00000001e-07, -r16.y);
              r16.y = r16.z / r16.y;
              r15.w = min(abs(r16.y), r15.w);
              r26.x = r31.w;
              r26.yz = r32.zw;
              r16.yzw = r26.xyz + r27.xyz;
              r16.yzw = r8.xyz * r15.www + r16.yzw;
              r17.w = dot(r16.yzw, r16.yzw);
              r17.w = sqrt(r17.w);
              r15.w = r15.w / r17.w;
              r15.w = r15.w + r15.w;
              r15.w = sqrt(r15.w);
              r15.w = r0.w * 5 + r15.w;
              r15.w = -0.844799995 + r15.w;
              r25.y = r28.z;
              r25.z = r30.x;
              r34.x = dot(r16.yzw, r25.xyz);
              r26.xy = r28.xw;
              r26.z = r30.w;
              r34.y = dot(r16.yzw, r26.xyz);
              r30.x = r28.y;
              r34.z = dot(r16.yzw, r30.xyz);
              if (9 == 0) r16.y = 0; else if (9+16 < 32) {               r16.y = (uint)r26.w << (32-(9 + 16)); r16.y = (uint)r16.y >> (32-9);              } else r16.y = (uint)r26.w >> 16;
              r34.w = (uint)r16.y;
              r16.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r15.w).xyz;
              r28.x = dot(r27.xyz, r25.xyz);
              r28.y = dot(r27.xyz, r26.xyz);
              r28.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r9.xyz, r25.xyz);
              r34.y = dot(r9.xyz, r26.xyz);
              r34.z = dot(r9.xyz, r30.xyz);
              r25.xyz = cmp(float3(0,0,0) < r34.xyz);
              r15.z = r25.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r15.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xyz = r34.xyz * r34.xyz;
              r28.xyz = r28.xyz * r14.xxx;
              r17.z = r25.y ? 0 : 0.5;
              r25.xyw = r27.xyz + r17.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r28.yyy;
              r25.xyw = r26.xyz * r28.xxx + r25.xyw;
              r18.z = r25.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r18.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r25.xyz = r26.xyz * r28.zzz + r25.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r25.xyz;
              r15.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r13.xyz = r25.xyz * r26.xyz + r13.xyz;
              r15.w = r15.z * r1.w;
              r16.yzw = r16.yzw * r14.xxx;
              r14.x = dot(r16.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r14.x = r1.w * r15.z + r14.x;
              r14.x = r15.w / r14.x;
              r24.xyz = r16.yzw * r14.xxx + r24.xyz;
            }
          }
        }
      }
      r20.xyzw = r24.xyzw;
      r23.xyz = r13.xyz;
      r10.w = (int)r10.w + 32;
    }
    r22.xyzw = r20.zxyw;
    r21.xyz = r23.xyz;
    r22.xyzw = r22.yzxw;
  } else {
    r22.x = r21.w;
  }
  r0.w = max(1, r22.w);
  r0.w = rcp(r0.w);
  r22.w = saturate(r22.w);
  r10.xyz = r21.xyz * r0.www;
  r13.xyz = r22.xyz * r0.www;
  r1.w = cmp(r22.w < 0.99000001);
  if (r1.w != 0) {
    r1.w = 1 + -r22.w;
    r4.w = sunConstants.globalProbeExposure * r1.w;
    r12.xyz = -globalProbeConstants.data[0].xyz + r12.xyz;
    r14.x = globalProbeConstants.data[0].w * r12.x;
    r14.yz = globalProbeConstants.data[1].xy * r12.yz;
    r12.xyz = saturate(float3(0.5,0.5,0.5) + r14.xyz);
    r14.xy = globalProbeConstants.data[1].zw * r12.xy;
    r14.z = globalProbeConstants.data[2].x * r12.z;
    r12.xyz = globalProbeConstants.data[2].yzw + r14.xyz;
    r14.xyz = cmp(float3(0,0,0) < r9.xyz);
    r14.xyz = r14.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r14.w = 0;
    r15.xyz = r14.wwx + r12.xyz;
    r15.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r16.xyz = r9.xyz * r9.xyz;
    r16.xyz = r16.xyz * r4.www;
    r17.xyz = r14.wwy + r12.xyz;
    r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r17.xyz = r17.xyz * r16.yyy;
    r15.xyz = r15.xyz * r16.xxx + r17.xyz;
    r12.xyz = r14.wwz + r12.xyz;
    r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r16.zzz + r15.xyz;
    r9.w = 0;
    r9.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r9.xyzw, 6).xyz;
    r9.xyz = r12.xyz * r9.xyz;
    r4.w = dot(r9.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r10.xyz = r21.xyz * r0.www + r9.xyz;
    r8.w = 0;
    r8.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r8.xyzw, r3.w).xyz;
    r0.w = sunConstants.globalProbeExposure * r1.w + -r4.w;
    r0.w = r7.y * r0.w + r4.w;
    r13.xyz = r8.xyz * r0.www + r13.xyz;
  }
  r5.yz = r5.yz * float2(1.59090912,1.59090912) + float2(-0.795454562,-0.795454562);
  r8.xy = r5.yz * float2(1,2) + float2(0.5,1);
  r0.w = cmp(1 < r8.y);
  r1.w = 2 + -r8.y;
  r8.z = r0.w ? r1.w : r8.y;
  r5.yz = r8.xz * float2(0.0078125,1) + float2(0.9921875,0);
  r0.w = causticMap.SampleLevel(LinearSampler_s, r5.yz, 0).x;
  r0.w = -1 + r0.w;
  r0.w = r5.x * r0.w + 1;
  r5.xyz = r10.xyz * r0.www;
  r7.x = saturate(dot(r1.xyz, r11.yzw));
  r1.xyz = r5.xyz * r3.xyz + r2.yzw;
  r2.yz = r7.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yz, 0).xy;
  r3.xyz = r13.xyz * r2.xxx;
  r0.xyz = r3.xyz * r2.yyy + r0.xyz;
  r2.xyz = r3.xyz * r2.zzz + r6.xyz;
  r0.xyz = float3(0.967999995,0.967999995,0.967999995) * r0.xyz;
  r0.xyz = r2.xyz * float3(0.0320000015,0.0320000015,0.0320000015) + r0.xyz;
  r2.xyz = r1.xyz + r0.xyz;
  r0.w = dot(r2.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = max(9.99999975e-05, r0.w);
  r0.w = max(relHDRExposure.x, r0.w);
  r0.xyz = r4.xyz * r0.www + r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r1.w = dot(v6.xyz, v6.xyz);
    r1.w = sqrt(r1.w);
    r2.x = cmp(0 < fogConstants.blendAmount);
    if (r2.x != 0) {
      r2.xy = r1.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r1.w = r1.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r2.xyz = r2.xyz * r1.xyz;
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
    r3.x = -fogConstants.sunFogColor.w + fogConstants.fogColor.w;
    r2.w = r2.w * r3.x + fogConstants.sunFogColor.w;
    r1.w = r2.w * r1.w;
    r2.xyz = r1.www * -r1.xyz + r1.xyz;
  }
  r1.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r2.xyz ? r1.xyz : 0;
  o1.xyz = min(float3(65024,65024,64512), r1.xyz);
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