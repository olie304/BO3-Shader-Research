// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:39 2021

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
  float2 rotateUVs : packoffset(c11.z);
  float2 scrollUVs : packoffset(c12);
  float2 scaleUVs : packoffset(c12.z);
  float2 offsetUVs : packoffset(c13);
  float2 zoomUVs : packoffset(c13.z);
  float zoomRate : packoffset(c14);
  float layerDepth : packoffset(c14.y);
  bool clampU : packoffset(c14.z);
  bool clampV : packoffset(c14.w);
  float2 colorMapScale : packoffset(c15);
  float4 colorTint : packoffset(c16);
  float zFeatherDistance : packoffset(c17);
  float falloffBegin : packoffset(c17.y);
  float falloffEnd : packoffset(c17.z);
  float uvMotionToggle1 : packoffset(c17.w);
  float2 maskRotateUVs : packoffset(c18);
  float2 maskScrollUVs : packoffset(c18.z);
  float2 maskScaleUVs : packoffset(c19);
  float2 maskOffsetUVs : packoffset(c19.z);
  float2 maskZoomUVs : packoffset(c20);
  float maskZoomRate : packoffset(c20.z);
  bool noReceiveShadow : packoffset(c20.w);
  float4 flowParams : packoffset(c21);
  float4 noiseParams : packoffset(c22);
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
SamplerState flowSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState noiseSampler_s : register(s5);
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
Texture2D<float4> alphaMask : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> flowMap : register(t24);
Texture2D<float4> noiseMap : register(t25);
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
  float2 w2 : TEXCOORD9,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = colorMapScale.xy * v2.xy;
  r0.zw = gameTime.ww * noiseParams.xy;
  r0.zw = v2.xy * noiseParams.zz + r0.zw;
  r0.zw = noiseMap.Sample(noiseSampler_s, r0.zw).xy;
  r0.zw = noiseParams.ww * r0.zw;
  r0.zw = v2.xy * flowParams.xx + r0.zw;
  r1.xy = frac(r0.zw);
  r1.zw = r1.xy * float2(-2,-2) + float2(3,3);
  r1.xy = r1.xy * r1.xy;
  r1.xy = r1.zw * r1.xy;
  r1.zw = floor(r0.zw);
  r1.zw = r1.zw / flowParams.xx;
  r1.zw = flowMap.Sample(flowSampler_s, r1.zw).xy;
  r1.zw = r1.zw + r1.zw;
  r2.xyzw = float4(1,0,0,1) + r0.zwzw;
  r2.xyzw = floor(r2.xyzw);
  r2.xyzw = r2.xyzw / flowParams.xxxx;
  r2.xy = flowMap.Sample(flowSampler_s, r2.xy).xy;
  r2.xy = r2.xy + r2.xy;
  r2.zw = flowMap.Sample(flowSampler_s, r2.zw).xy;
  r2.zw = r2.zw + r2.zw;
  r0.zw = float2(1,1) + r0.zw;
  r0.zw = floor(r0.zw);
  r0.zw = r0.zw / flowParams.xx;
  r0.zw = flowMap.Sample(flowSampler_s, r0.zw).xy;
  r0.zw = r0.zw + r0.zw;
  colorMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r3.xy = fDest.xy;
  r3.xy = r3.xy * r0.xy;
  r3.zw = ddx_coarse(r3.xy);
  r3.xy = ddy_coarse(r3.xy);
  r3.z = dot(r3.zw, r3.zw);
  r3.x = dot(r3.xy, r3.xy);
  r3.x = max(r3.z, r3.x);
  r3.x = log2(r3.x);
  r3.x = 0.5 * r3.x;
  r3.y = gameTime.w * flowParams.y;
  r1.zw = r1.zw * float2(-1,1) + float2(1,-1);
  r1.zw = r1.zw * r3.yy + r0.xy;
  r4.xyzw = colorMap.SampleLevel(colorSampler_s, r1.zw, r3.x).xyzw;
  r1.zw = r2.xy * float2(-1,1) + float2(1,-1);
  r1.zw = r1.zw * r3.yy + r0.xy;
  r5.xyz = colorMap.SampleLevel(colorSampler_s, r1.zw, r3.x).xyz;
  r5.xyz = r5.xyz + -r4.xyz;
  r5.xyz = r1.xxx * r5.xyz + r4.xyz;
  r1.zw = r2.zw * float2(-1,1) + float2(1,-1);
  r1.zw = r1.zw * r3.yy + r0.xy;
  r2.xyz = colorMap.SampleLevel(colorSampler_s, r1.zw, r3.x).xyz;
  r0.zw = r0.zw * float2(-1,1) + float2(1,-1);
  r0.xy = r0.zw * r3.yy + r0.xy;
  r0.xyz = colorMap.SampleLevel(colorSampler_s, r0.xy, r3.x).xyz;
  r0.xyz = r0.xyz + -r2.xyz;
  r0.xyz = r1.xxx * r0.xyz + r2.xyz;
  r0.xyz = r0.xyz + -r5.xyz;
  r4.xyz = r1.yyy * r0.xyz + r5.xyz;
  r0.xyzw = colorTint.xyzw * r4.xyzw;
  r1.x = dot(-v6.xyz, -v6.xyz);
  r1.x = rsqrt(r1.x);
  r1.yzw = -v6.xyz * r1.xxx;
  r2.x = dot(r1.yzw, v3.xyz);
  r3.x = dot(r1.yzw, v4.xyz);
  r3.y = dot(r1.yzw, v5.xyz);
  r2.z = cmp(0 < r2.x);
  r3.xy = -r3.xy / r2.xx;
  r2.zw = r2.zz ? r3.xy : 0;
  r3.xy = float2(-0.5,-0.5) + v2.xy;
  r2.zw = maskScaleUVs.xy * r2.zw;
  r2.zw = float2(9.99999975e-06,9.99999975e-06) * r2.zw;
  r2.zw = r3.xy * maskScaleUVs.xy + r2.zw;
  r2.zw = maskOffsetUVs.xy * maskScaleUVs.xy + r2.zw;
  r3.xy = gameTime.ww * maskScrollUVs.xy;
  r3.z = maskRotateUVs.y * gameTime.w + 1;
  r3.z = maskRotateUVs.x * r3.z;
  r3.z = 0.0174532924 * r3.z;
  sincos(r3.z, r4.x, r5.x);
  r5.y = r5.x;
  r5.z = r4.x;
  r6.x = dot(r5.yz, r2.zw);
  r5.x = -r4.x;
  r6.y = dot(r5.xy, r2.zw);
  r2.zw = r3.xy * maskScaleUVs.xy + r6.xy;
  r3.x = gameTime.w * maskZoomRate;
  r3.x = cos(r3.x);
  r3.x = r3.x * 0.5 + 0.5;
  r3.x = 1 + -r3.x;
  r3.y = maskZoomUVs.y + -maskZoomUVs.x;
  r3.x = r3.x * r3.y + maskZoomUVs.x;
  r2.zw = r2.zw / r3.xx;
  r2.zw = float2(0.5,0.5) + r2.zw;
  r2.z = alphaMask.Sample(colorSampler_s, r2.zw).x;
  r0.w = r2.z * r0.w;
  r2.z = r2.x * r2.x;
  r2.z = saturate(r2.z * w2.x + w2.y);
  r0.w = r2.z * r0.w;
  r3.xy = (int2)v0.xy;
  r3.zw = float2(0,0);
  r2.z = floatZSampler.Load(r3.xyz).x;
  r2.w = cmp(r2.z >= 0.984375);
  r3.x = 1.01587307 * r2.z;
  r2.z = r2.z * 64 + -63;
  r2.z = r2.w ? r2.z : r3.x;
  r2.z = max(9.99999994e-09, r2.z);
  r2.w = cmp(v0.z >= 0.984375);
  r3.x = 1.01587307 * v0.z;
  r3.y = v0.z * 64 + -63;
  r2.w = r2.w ? r3.y : r3.x;
  r2.w = max(9.99999994e-09, r2.w);
  r2.zw = rcp(r2.zw);
  r3.x = cmp(zFeatherDistance == 0.000000);
  r3.y = 1 / zFeatherDistance;
  r3.x = r3.x ? 60000 : r3.y;
  r2.z = r2.z + -r2.w;
  r2.z = saturate(r2.z * r3.x);
  o0.w = r2.z * r0.w;
  r2.y = saturate(0.0588235296 * glossRange.y);
  r3.xy = (uint2)v0.xy;
  r0.w = cmp(isDepthHack != 0);
  r3.zw = (uint2)r3.yx;
  r2.z = dot(r3.wz, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.zw = float2(52.9829178,0.0078125) * r2.zw;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r4.x, r5.x);
  r2.z = dot(r3.zw, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.z = 52.9829178 * r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r6.x, r7.x);
  r2.x = saturate(r2.x);
  r2.z = dot(-r1.yzw, v3.xyz);
  r2.z = r2.z + r2.z;
  r8.xyz = v3.xyz * -r2.zzz + -r1.yzw;
  r2.z = 17 * r2.y;
  r2.z = exp2(r2.z);
  r2.z = 2 + r2.z;
  r2.z = 2 / r2.z;
  r3.z = sqrt(r2.z);
  r3.w = 1 + -r2.y;
  r4.z = 5 * r3.w;
  r4.w = r3.w * 5 + -2.5;
  r4.w = 0.400000006 * r4.w;
  r4.w = max(0, r4.w);
  r4.w = 100 * r4.w;
  r6.yz = -r3.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r5.w = exp2(r6.y);
  r5.w = r5.w * r2.x;
  r5.w = 9.1368103 * r5.w;
  r6.y = r4.z * r3.w;
  r6.y = -r6.y * 2.0159049 + r6.z;
  r6.y = exp2(r6.y);
  r6.y = r6.y * r2.x;
  r6.y = 9.70808983 * r6.y;
  r5.w = max(r6.y, r5.w);
  r5.w = max(1.26815999, r5.w);
  r6.y = numRefProbes + -numOverrideProbes;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r9.xy = (uint2)r3.xy >> int2(6,6);
  r9.z = (uint)r2.w << 4;
  r2.w = (int)r6.y & -32;
  r3.x = (int)-r2.w + (int)r6.y;
  r3.y = numRefProbes & -32;
  r6.z = (int)-r3.y + numRefProbes;
  r10.xy = float2(0,0);
  r11.w = 0;
  r12.yz = float2(0,1);
  r13.xy = float2(0,0);
  r14.x = 1;
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r17.xyzw = float4(0,0,0,0);
  r18.yzw = float3(0,0,0);
  r6.w = r2.w;
  while (true) {
    r7.y = cmp((uint)r6.w >= numRefProbes);
    if (r7.y != 0) break;
    r10.z = (uint)r6.w >> 5;
    r11.xyz = (int3)r9.xyz + (int3)r10.xyz;
    r7.y = visibleProbes.Load(r11.xyzw).x;
    r7.z = cmp((int)r2.w == (int)r6.w);
    bitmask.w = ((~(-1 << r3.x)) << 0) & 0xffffffff;  r7.w = (((uint)0 << 0) & bitmask.w) | ((uint)r7.y & ~bitmask.w);
    r7.y = r7.z ? r7.w : r7.y;
    r7.z = cmp((int)r3.y == (int)r6.w);
    if (r6.z == 0) r7.w = 0; else if (r6.z+0 < 32) {     r7.w = (uint)r7.y << (32-(r6.z + 0)); r7.w = (uint)r7.w >> (32-r6.z);    } else r7.w = (uint)r7.y >> 0;
    r7.y = r7.z ? r7.w : r7.y;
    r7.z = (int)r6.w + numLights;
    r19.xyzw = r17.xyzw;
    r20.xyz = r18.yzw;
    r7.w = r7.y;
    while (true) {
      if (r7.w == 0) break;
      r9.w = firstbitlow((uint)r7.w);
      r10.z = 1 << (int)r9.w;
      r10.w = (int)r7.w & (int)r10.z;
      if (r10.w != 0) {
        r7.w = (int)r7.w ^ (int)r10.z;
        r10.z = (int)r7.z + (int)r9.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r10.z, l(0), t11.xyzw
      r21.x = samp0[]..swiz;
      r21.y = samp0[]..swiz;
      r21.z = samp0[]..swiz;
      r21.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r11.xy, r10.z, l(16), t11.xyxx
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
        r21.xyz = -v6.xyz + r21.xyz;
        r11.z = r21.w;
        r11.xyz = cmp(abs(r21.xyz) < r11.zxy);
        r10.z = r11.y ? r11.x : 0;
        r10.z = r11.z ? r10.z : 0;
        if (r10.z != 0) {
          r9.w = (int)r6.w + (int)r9.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r9.w, l(0), t15.wxyz
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.zw, r9.w, l(96), t15.xxxy
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r9.w, l(116), t15.zwxy
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
          r11.xyz = v6.xyz + -r21.yzw;
          r12.w = (int)r22.w & 0x0000ffff;
          if (6 == 0) r13.w = 0; else if (6+25 < 32) {           r13.w = (uint)r22.w << (32-(6 + 25)); r13.w = (uint)r13.w >> (32-6);          } else r13.w = (uint)r22.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r12.w, l(0), t16.xyzw
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(16), t16.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(32), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(48), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(64), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(80), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
          r14.z = dot(r23.xyz, r11.xyz);
          r14.z = saturate(r14.z + r23.w);
          r14.w = dot(r24.xyz, r11.xyz);
          r14.w = saturate(r14.w + r24.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r25.xyz, r11.xyz);
          r14.w = saturate(r14.w + r25.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r26.xyz, r11.xyz);
          r14.w = saturate(r14.w + r26.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r27.xyz, r11.xyz);
          r14.w = saturate(r14.w + r27.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r28.xyz, r11.xyz);
          r14.w = saturate(r14.w + r28.w);
          r12.x = r14.z * r14.w;
          r14.z = (int)r10.z & 1;
          r14.zw = r14.zz ? r12.xy : r12.zx;
          r12.x = r10.z;
          r23.xy = r14.zw;
          r15.w = 1;
          while (true) {
            r16.w = cmp((int)r15.w >= (int)r13.w);
            if (r16.w != 0) break;
            r16.w = (int)r12.w + (int)r15.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r16.w, l(0), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(16), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(32), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r16.w, l(48), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(64), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(80), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
            r16.w = dot(r24.xyz, r11.xyz);
            r16.w = saturate(r16.w + r24.w);
            r16.w = r23.x * r16.w;
            r21.w = dot(r25.xyz, r11.xyz);
            r21.w = saturate(r21.w + r25.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r26.xyz, r11.xyz);
            r21.w = saturate(r21.w + r26.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r27.xyz, r11.xyz);
            r21.w = saturate(r21.w + r27.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r28.xyz, r11.xyz);
            r21.w = saturate(r21.w + r28.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r29.xyz, r11.xyz);
            r21.w = saturate(r21.w + r29.w);
            r23.x = r21.w * r16.w;
            r23.z = (uint)r12.x >> 2;
            if (1 == 0) r23.w = 0; else if (1+2 < 32) {             r23.w = (uint)r12.x << (32-(1 + 2)); r23.w = (uint)r23.w >> (32-1);            } else r23.w = (uint)r12.x >> 2;
            r24.x = (int)r23.z & 2;
            r24.y = max(r23.y, r23.x);
            r16.w = -r16.w * r21.w + 1;
            r16.w = r23.y * r16.w;
            r14.y = r24.x ? r16.w : r24.y;
            r23.xy = r23.ww ? r23.xy : r14.xy;
            r15.w = (int)r15.w + 1;
            r12.x = r23.z;
          }
          r23.y = saturate(r23.y);
          r10.z = r23.y * r10.w;
          r12.x = cmp(0 < r10.z);
          if (r12.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r9.w, l(16), t15.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r9.w, l(32), t15.yxwz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r9.w, l(48), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r9.w, l(64), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r9.w, l(80), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r9.w, l(132), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r9.w, l(148), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r9.w, l(164), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(180), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(196), t15.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r9.w, l(212), t15.xyxx
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
            r20.z = r23.y * r10.w + r20.z;
            r9.w = r10.z * r22.z;
            r22.z = r29.z;
            r10.z = dot(r8.xyz, r22.xyz);
            r10.w = dot(r11.xyz, r22.xyz);
            r10.w = r10.w + -r29.w;
            r12.x = cmp(r10.w >= 0);
            r10.w = max(abs(r10.w), r4.w);
            r10.w = r12.x ? r10.w : -r10.w;
            r10.z = max(1.00000001e-07, -r10.z);
            r10.z = r10.w / r10.z;
            r10.z = min(131072, abs(r10.z));
            r29.z = r30.z;
            r10.w = dot(r8.xyz, r29.xyz);
            r12.x = dot(r11.xyz, r29.xyz);
            r12.x = r12.x + -r30.w;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r4.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r30.z = r31.z;
            r10.w = dot(r8.xyz, r30.xyz);
            r12.x = dot(r11.xyz, r30.xyz);
            r12.x = r12.x + -r31.w;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r4.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r31.z = r32.z;
            r10.w = dot(r8.xyz, r31.xyz);
            r12.x = dot(r11.xyz, r31.xyz);
            r12.x = r12.x + -r32.w;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r4.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r32.z = r33.x;
            r10.w = dot(r8.xyz, r32.xyz);
            r12.x = dot(r11.xyz, r32.xyz);
            r12.x = r12.x + -r33.y;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r4.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r34.zw = r33.zw;
            r10.w = dot(r8.zxy, r34.xzw);
            r12.x = dot(r11.zxy, r34.xzw);
            r12.x = r12.x + -r34.y;
            r12.w = cmp(r12.x >= 0);
            r12.x = max(abs(r12.x), r4.w);
            r12.x = r12.w ? r12.x : -r12.x;
            r10.w = max(1.00000001e-07, -r10.w);
            r10.w = r12.x / r10.w;
            r10.z = min(r10.z, abs(r10.w));
            r22.x = r26.w;
            r22.yz = r27.zw;
            r14.yzw = r22.xyz + r11.xyz;
            r14.yzw = r8.xyz * r10.zzz + r14.yzw;
            r10.w = dot(r14.yzw, r14.yzw);
            r10.w = sqrt(r10.w);
            r10.z = r10.z / r10.w;
            r10.z = r10.z + r10.z;
            r10.z = sqrt(r10.z);
            r10.z = r3.w * 5 + r10.z;
            r10.z = -0.844799995 + r10.z;
            r21.y = r24.z;
            r21.z = r25.x;
            r29.x = dot(r14.yzw, r21.xyz);
            r22.xy = r24.xw;
            r22.z = r25.w;
            r29.y = dot(r14.yzw, r22.xyz);
            r25.x = r24.y;
            r29.z = dot(r14.yzw, r25.xyz);
            if (9 == 0) r10.w = 0; else if (9+16 < 32) {             r10.w = (uint)r22.w << (32-(9 + 16)); r10.w = (uint)r10.w >> (32-9);            } else r10.w = (uint)r22.w >> 16;
            r29.w = (uint)r10.w;
            r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, r10.z).xyz;
            r24.x = dot(r11.xyz, r21.xyz);
            r24.y = dot(r11.xyz, r22.xyz);
            r24.z = dot(r11.xyz, r25.xyz);
            r11.xyz = saturate(r24.xyz * r26.xyz + float3(0.5,0.5,0.5));
            r27.z = r28.x;
            r11.xyz = r11.xyz * r27.xyz + r28.yzw;
            r29.x = dot(v3.xyz, r21.xyz);
            r29.y = dot(v3.xyz, r22.xyz);
            r29.z = dot(v3.xyz, r25.xyz);
            r21.xyz = cmp(float3(0,0,0) < r29.xyz);
            r13.z = r21.x ? 0 : 0.5;
            r22.xyz = r13.xyz + r11.xyz;
            r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
            r23.xzw = r29.xyz * r29.xyz;
            r23.xzw = r23.xzw * r9.www;
            r15.z = r21.y ? 0 : 0.5;
            r21.xyw = r15.xyz + r11.xyz;
            r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
            r21.xyw = r21.xyw * r23.zzz;
            r21.xyw = r22.xyz * r23.xxx + r21.xyw;
            r16.z = r21.z ? 0 : 0.5;
            r11.xyz = r16.xyz + r11.xyz;
            r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r11.xyz = r11.xyz * r23.www + r21.xyw;
            r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r29.xyzw, 6).xyz;
            r22.xyz = r21.xyz * r11.xyz;
            r10.z = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r19.xyz = r11.xyz * r21.xyz + r19.xyz;
            r10.w = r10.z * r5.w;
            r11.xyz = r14.yzw * r9.www;
            r9.w = dot(r11.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r9.w = r5.w * r10.z + r9.w;
            r9.w = r10.w / r9.w;
            r21.x = r19.w;
            r21.yz = r20.xy;
            r20.xyw = r11.yzx * r9.www + r21.yzx;
            r19.w = r20.w;
          }
        }
      }
    }
    r17.xyzw = r19.xyzw;
    r18.yzw = r20.xyz;
    r6.w = (int)r6.w + 32;
  }
  r3.y = cmp(r18.w < 1);
  if (r3.y != 0) {
    r10.xy = float2(0,0);
    r11.w = 0;
    r12.yz = float2(0,1);
    r13.xy = float2(0,0);
    r14.x = 1;
    r15.xy = float2(0,0);
    r16.xy = float2(0,0);
    r19.x = r17.w;
    r19.yzw = r18.yzw;
    r7.yzw = r17.xyz;
    r3.y = r18.w;
    r6.z = 0;
    while (true) {
      r6.w = cmp((uint)r6.z >= (uint)r6.y);
      if (r6.w != 0) break;
      r10.z = (uint)r6.z >> 5;
      r11.xyz = (int3)r9.xyz + (int3)r10.xyz;
      r6.w = visibleProbes.Load(r11.xyzw).x;
      r9.w = cmp((int)r2.w == (int)r6.z);
      if (r3.x == 0) r10.z = 0; else if (r3.x+0 < 32) {       r10.z = (uint)r6.w << (32-(r3.x + 0)); r10.z = (uint)r10.z >> (32-r3.x);      } else r10.z = (uint)r6.w >> 0;
      r6.w = r9.w ? r10.z : r6.w;
      r9.w = (int)r6.z + numLights;
      r20.xyzw = r19.xyzw;
      r11.xyz = r7.yzw;
      r10.z = r3.y;
      r10.w = r6.w;
      while (true) {
        if (r10.w == 0) break;
        r12.w = firstbitlow((uint)r10.w);
        r13.w = 1 << (int)r12.w;
        r14.z = (int)r10.w & (int)r13.w;
        if (r14.z != 0) {
          r10.w = (int)r10.w ^ (int)r13.w;
          r13.w = (int)r9.w + (int)r12.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r13.w, l(0), t11.xyzw
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xy, r13.w, l(16), t11.xyxx
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
          r21.xyz = -v6.xyz + r21.xyz;
          r22.z = r21.w;
          r21.xyz = cmp(abs(r21.xyz) < r22.zxy);
          r13.w = r21.y ? r21.x : 0;
          r13.w = r21.z ? r13.w : 0;
          if (r13.w != 0) {
            r12.w = (int)r6.z + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r12.w, l(0), t15.wxyz
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r12.w, l(96), t15.xxxy
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r12.w, l(116), t15.zwxy
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
            r23.xyz = v6.xyz + -r21.yzw;
            r13.w = (int)r22.w & 0x0000ffff;
            if (6 == 0) r15.w = 0; else if (6+25 < 32) {             r15.w = (uint)r22.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);            } else r15.w = (uint)r22.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(0), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(16), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(32), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(48), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(64), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(80), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
            r16.w = dot(r24.xyz, r23.xyz);
            r16.w = saturate(r16.w + r24.w);
            r21.w = dot(r25.xyz, r23.xyz);
            r21.w = saturate(r21.w + r25.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r26.xyz, r23.xyz);
            r21.w = saturate(r21.w + r26.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r27.xyz, r23.xyz);
            r21.w = saturate(r21.w + r27.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r28.xyz, r23.xyz);
            r21.w = saturate(r21.w + r28.w);
            r16.w = r21.w * r16.w;
            r21.w = dot(r29.xyz, r23.xyz);
            r21.w = saturate(r21.w + r29.w);
            r12.x = r21.w * r16.w;
            r16.w = (int)r14.z & 1;
            r24.xy = r16.ww ? r12.xy : r12.zx;
            r12.x = r14.z;
            r25.xy = r24.xy;
            r16.w = 1;
            while (true) {
              r21.w = cmp((int)r16.w >= (int)r15.w);
              if (r21.w != 0) break;
              r21.w = (int)r13.w + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r21.w, l(0), t16.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r21.w, l(16), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r21.w, l(32), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r21.w, l(48), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r21.w, l(64), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r21.w, l(80), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
              r21.w = dot(r26.xyz, r23.xyz);
              r21.w = saturate(r21.w + r26.w);
              r21.w = r25.x * r21.w;
              r23.w = dot(r27.xyz, r23.xyz);
              r23.w = saturate(r23.w + r27.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r28.xyz, r23.xyz);
              r23.w = saturate(r23.w + r28.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r29.xyz, r23.xyz);
              r23.w = saturate(r23.w + r29.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r30.xyz, r23.xyz);
              r23.w = saturate(r23.w + r30.w);
              r21.w = r23.w * r21.w;
              r23.w = dot(r31.xyz, r23.xyz);
              r23.w = saturate(r23.w + r31.w);
              r25.x = r23.w * r21.w;
              r24.z = (uint)r12.x >> 2;
              if (1 == 0) r24.w = 0; else if (1+2 < 32) {               r24.w = (uint)r12.x << (32-(1 + 2)); r24.w = (uint)r24.w >> (32-1);              } else r24.w = (uint)r12.x >> 2;
              r25.z = (int)r24.z & 2;
              r25.w = max(r25.y, r25.x);
              r21.w = -r21.w * r23.w + 1;
              r21.w = r25.y * r21.w;
              r14.y = r25.z ? r21.w : r25.w;
              r25.xy = r24.ww ? r25.xy : r14.xy;
              r16.w = (int)r16.w + 1;
              r12.x = r24.z;
            }
            r12.x = saturate(r25.y + -r10.z);
            r13.w = r12.x * r14.w;
            r14.y = cmp(0 < r13.w);
            if (r14.y != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(16), t15.xyzw
            r24.x = samp0[]..swiz;
            r24.y = samp0[]..swiz;
            r24.z = samp0[]..swiz;
            r24.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(32), t15.yxwz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.w, l(48), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.w, l(64), t15.zwxy
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(80), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(132), t15.zwxy
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(148), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(164), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(180), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(196), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xy, r12.w, l(212), t15.xyxx
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
              r20.w = r12.x * r14.w + r20.w;
              r12.x = r13.w * r22.z;
              r22.z = r30.z;
              r12.w = dot(r8.xyz, r22.xyz);
              r13.w = dot(r23.xyz, r22.xyz);
              r13.w = r13.w + -r30.w;
              r14.y = cmp(r13.w >= 0);
              r13.w = max(abs(r13.w), r4.w);
              r13.w = r14.y ? r13.w : -r13.w;
              r12.w = max(1.00000001e-07, -r12.w);
              r12.w = r13.w / r12.w;
              r12.w = min(131072, abs(r12.w));
              r30.z = r31.z;
              r13.w = dot(r8.xyz, r30.xyz);
              r14.y = dot(r23.xyz, r30.xyz);
              r14.y = r14.y + -r31.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r4.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r31.z = r32.z;
              r13.w = dot(r8.xyz, r31.xyz);
              r14.y = dot(r23.xyz, r31.xyz);
              r14.y = r14.y + -r32.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r4.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r32.z = r33.z;
              r13.w = dot(r8.xyz, r32.xyz);
              r14.y = dot(r23.xyz, r32.xyz);
              r14.y = r14.y + -r33.w;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r4.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r33.z = r34.x;
              r13.w = dot(r8.xyz, r33.xyz);
              r14.y = dot(r23.xyz, r33.xyz);
              r14.y = r14.y + -r34.y;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r4.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r35.zw = r34.zw;
              r13.w = dot(r8.zxy, r35.xzw);
              r14.y = dot(r23.zxy, r35.xzw);
              r14.y = r14.y + -r35.y;
              r14.z = cmp(r14.y >= 0);
              r14.y = max(abs(r14.y), r4.w);
              r14.y = r14.z ? r14.y : -r14.y;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.y / r13.w;
              r12.w = min(abs(r13.w), r12.w);
              r22.x = r27.w;
              r22.yz = r28.zw;
              r14.yzw = r22.xyz + r23.xyz;
              r14.yzw = r8.xyz * r12.www + r14.yzw;
              r13.w = dot(r14.yzw, r14.yzw);
              r13.w = sqrt(r13.w);
              r12.w = r12.w / r13.w;
              r12.w = r12.w + r12.w;
              r12.w = sqrt(r12.w);
              r12.w = r3.w * 5 + r12.w;
              r12.w = -0.844799995 + r12.w;
              r21.y = r24.z;
              r21.z = r26.x;
              r30.x = dot(r14.yzw, r21.xyz);
              r22.xy = r24.xw;
              r22.z = r26.w;
              r30.y = dot(r14.yzw, r22.xyz);
              r26.x = r24.y;
              r30.z = dot(r14.yzw, r26.xyz);
              if (9 == 0) r13.w = 0; else if (9+16 < 32) {               r13.w = (uint)r22.w << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);              } else r13.w = (uint)r22.w >> 16;
              r30.w = (uint)r13.w;
              r14.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r12.w).xyz;
              r24.x = dot(r23.xyz, r21.xyz);
              r24.y = dot(r23.xyz, r22.xyz);
              r24.z = dot(r23.xyz, r26.xyz);
              r23.xyz = saturate(r24.xyz * r27.xyz + float3(0.5,0.5,0.5));
              r28.z = r29.x;
              r23.xyz = r23.xyz * r28.xyz + r29.yzw;
              r30.x = dot(v3.xyz, r21.xyz);
              r30.y = dot(v3.xyz, r22.xyz);
              r30.z = dot(v3.xyz, r26.xyz);
              r21.xyz = cmp(float3(0,0,0) < r30.xyz);
              r13.z = r21.x ? 0 : 0.5;
              r22.xyz = r23.xyz + r13.xyz;
              r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
              r24.xyz = r30.xyz * r30.xyz;
              r24.xyz = r24.xyz * r12.xxx;
              r15.z = r21.y ? 0 : 0.5;
              r21.xyw = r23.xyz + r15.xyz;
              r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
              r21.xyw = r21.xyw * r24.yyy;
              r21.xyw = r22.xyz * r24.xxx + r21.xyw;
              r16.z = r21.z ? 0 : 0.5;
              r22.xyz = r23.xyz + r16.xyz;
              r22.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
              r21.xyz = r22.xyz * r24.zzz + r21.xyw;
              r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
              r23.xyz = r22.xyz * r21.xyz;
              r12.w = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r11.xyz = r21.xyz * r22.xyz + r11.xyz;
              r13.z = r12.w * r5.w;
              r14.yzw = r14.yzw * r12.xxx;
              r12.x = dot(r14.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r12.x = r5.w * r12.w + r12.x;
              r12.x = r13.z / r12.x;
              r20.xyz = r14.yzw * r12.xxx + r20.xyz;
            }
          }
        }
      }
      r19.xyzw = r20.xyzw;
      r7.yzw = r11.xyz;
      r6.z = (int)r6.z + 32;
    }
    r18.xyzw = r19.zxyw;
    r17.xyz = r7.yzw;
    r18.xyzw = r18.yzxw;
  } else {
    r18.x = r17.w;
  }
  r2.w = max(1, r18.w);
  r2.w = rcp(r2.w);
  r18.w = saturate(r18.w);
  r10.xyz = r17.xyz * r2.www;
  r3.xyw = r18.xyz * r2.www;
  r4.w = cmp(r18.w < 0.99000001);
  if (r4.w != 0) {
    r4.w = 1 + -r18.w;
    r5.w = sunConstants.globalProbeExposure * r4.w;
    r6.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
    r11.x = globalProbeConstants.data[0].w * r6.y;
    r11.yz = globalProbeConstants.data[1].xy * r6.zw;
    r6.yzw = saturate(float3(0.5,0.5,0.5) + r11.xyz);
    r11.xy = globalProbeConstants.data[1].zw * r6.yz;
    r11.z = globalProbeConstants.data[2].x * r6.w;
    r6.yzw = globalProbeConstants.data[2].yzw + r11.xyz;
    r7.yzw = cmp(float3(0,0,0) < v3.xyz);
    r11.xyz = r7.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r11.w = 0;
    r7.yzw = r11.wwx + r6.yzw;
    r7.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r7.yzw, 0).xyz;
    r12.xyz = v3.xyz * v3.xyz;
    r12.xyz = r12.xyz * r5.www;
    r13.xyz = r11.wwy + r6.yzw;
    r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
    r13.xyz = r13.xyz * r12.yyy;
    r7.yzw = r7.yzw * r12.xxx + r13.xyz;
    r6.yzw = r11.wwz + r6.yzw;
    r6.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r6.yzw, 0).xyz;
    r6.yzw = r6.yzw * r12.zzz + r7.yzw;
    r11.xyz = v3.xyz;
    r11.w = 0;
    r7.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
    r6.yzw = r7.yzw * r6.yzw;
    r5.w = dot(r6.yzw, float3(0.212599993,0.715200007,0.0722000003));
    r10.xyz = r17.xyz * r2.www + r6.yzw;
    r8.w = 0;
    r6.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r8.xyzw, r4.z).xyz;
    r2.w = sunConstants.globalProbeExposure * r4.w + -r5.w;
    r2.w = r2.y * r2.w + r5.w;
    r3.xyw = r6.yzw * r2.www + r3.xyw;
  }
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r11.xyz = r3.ywx * r2.yyy;
  r3.xyw = r3.xyw * r2.www;
  r2.y = sqrt(r3.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r4.z = r2.x * r2.y + r2.w;
  r2.yw = r4.zz * r2.yw;
  if (noReceiveShadow == 0) {
    r4.z = dot(v3.xyz, sunConstants.wldDir.xyz);
    r4.z = cmp(0 >= abs(r4.z));
    if (r4.z != 0) {
      r4.w = 0;
    }
    if (r4.z == 0) {
      r6.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
      r6.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r6.yzw;
      r6.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r6.yzw;
      r6.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r6.yzw;
      r4.z = -sunConstants.splitDepthOffset + r6.w;
      r4.z = -r4.z * 6.10351563e-05 + 1;
      r5.w = saturate(r4.z);
      r5.w = cmp(r4.z == r5.w);
      if (r5.w != 0) {
        r5.w = 0;
        r7.y = 0;
        while (true) {
          r7.z = cmp(r5.w >= 3);
          if (r7.z != 0) break;
          r7.z = (uint)r5.w;
          r12.xy = -sunConstants.splitPinTransform[r7.z].xy + r6.yz;
          r7.w = max(abs(r12.x), abs(r12.y));
          r7.y = sunConstants.splitPinTransform[r7.z].z * r7.w;
          r7.z = cmp(r7.y < 1);
          if (r7.z != 0) {
            break;
          }
          r5.w = 1 + r5.w;
          r7.y = 0;
        }
      } else {
        r5.w = 3;
        r7.y = 0;
      }
      r7.z = cmp(r5.w >= 3);
      if (r7.z != 0) {
        r12.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
        r13.xz = rcp(r12.xx);
        r13.y = -r13.z;
        r12.xyz = r6.yzy * r13.xyz + r12.yzy;
        r13.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
        r12.xyz = max(float3(0,0,0), r12.xyz);
        r12.xyz = min(r12.xyz, r13.xyz);
        r13.xy = sunConstants.sstLightingConstants.coordScale * r12.zy;
        r13.xy = floor(r13.xy);
        r7.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.y;
        r7.w = r7.w * sunConstants.sstLightingConstants.coordScale + r13.x;
        r7.w = (uint)r7.w;
        r7.w = (int)r7.w + (int10)sunConstants.sstLightingConstants.rootOffset;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(0), t23.xxxx
      r8.w = samp0[]..swiz;
        r9.w = (int)r8.w & 0x40000000;
        r12.w = (uint)r8.w << 2;
        if (r9.w == 0) {
          r9.w = (int)r8.w & 0x01ffffff;
          r13.x = (int)r7.w + (int)r9.w;
          r7.w = (uint)r8.w >> 25;
          r7.w = (uint)r7.w;
          r12.xyz = r12.xyz * r7.www;
          r12.xyz = frac(r12.xyz);
          r12.xyz = float3(128,128,128) * r12.xyz;
          r12.xyz = (uint3)r12.xyz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r14.xy = (uint2)r12.zy >> int2(6,6);
          r7.w = (int)r13.z & 0xc0000000;
          r8.w = (int)r13.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(0), t23.xxxx
        r8.w = samp0[]..swiz;
          r8.w = r14.y ? r13.z : r8.w;
          r9.w = (uint)r8.w >> 13;
          r8.w = r14.x ? r9.w : r8.w;
          r8.w = (int)r8.w & 8191;
          r14.x = (int)r8.w + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r13.y = 0;
          r14.y = 1;
          r14.xyz = r7.www ? r13.xyz : r14.xyz;
          r15.yz = r7.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
          r16.xy = (uint2)r12.zy >> (uint2)r15.yy;
          r16.xy = (int2)r16.xy & int2(1,1);
          r8.w = (int)r14.z & 0xc0000000;
          r9.w = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
        r9.w = samp0[]..swiz;
          r9.w = r16.y ? r14.z : r9.w;
          r13.w = (uint)r9.w >> 13;
          r9.w = r16.x ? r13.w : r9.w;
          r9.w = (int)r9.w & 8191;
          r15.x = (int)r9.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r14.xyz = r8.www ? r14.xyz : r15.xzw;
          r13.xyz = r7.www ? r13.xyz : r14.xyz;
          r7.w = (int)r13.z & 0xc0000000;
          if (r7.w == 0) {
            r7.w = (int)-r13.y + 6;
            r14.xy = (uint2)r12.zy >> (uint2)r7.ww;
            r7.w = (int)r13.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r14.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.w = (((uint)r14.x << 0) & bitmask.w) | ((uint)r8.w & ~bitmask.w);
            r8.w = (int)r8.w * 10;
            r7.w = (uint)r7.w >> (uint)r8.w;
            r7.w = (int)r7.w & 1023;
            r14.x = (int)r7.w + (int)r13.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
          r14.w = samp0[]..swiz;
            r14.yz = (int2)r13.yy + int2(1,2);
            r7.w = (int)-r14.y + 6;
            r13.yw = (uint2)r12.zy >> (uint2)r7.ww;
            r7.w = (int)r14.w & 0xc0000000;
            r8.w = (int)r14.w | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.w = (((uint)r13.y << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
            r9.w = (int)r9.w * 10;
            r8.w = (uint)r8.w >> (uint)r9.w;
            r8.w = (int)r8.w & 1023;
            r15.x = (int)r8.w + (int)r14.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
          r15.z = samp0[]..swiz;
            r15.y = r14.z;
            r15.xyz = r7.www ? r14.xyw : r15.xyz;
            r8.w = (int)-r15.y + 6;
            r13.yw = (uint2)r12.zy >> (uint2)r8.ww;
            r8.w = (int)r15.z & 0xc0000000;
            r9.w = (int)r15.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.y = (((uint)r13.y << 0) & bitmask.y) | ((uint)r13.w & ~bitmask.y);
            r13.y = (int)r13.y * 10;
            r9.w = (uint)r9.w >> (uint)r13.y;
            r9.w = (int)r9.w & 1023;
            r16.x = (int)r9.w + (int)r15.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
          r16.y = samp0[]..swiz;
            r13.yw = r8.ww ? r15.xz : r16.xy;
            r13.xz = r7.ww ? r14.xw : r13.yw;
          }
          r7.w = (int)r13.z & 0xc0000000;
          if (r7.w == 0) {
            if (14 == 0) r8.w = 0; else if (14+15 < 32) {             r8.w = (uint)r13.z << (32-(14 + 15)); r8.w = (uint)r8.w >> (32-14);            } else r8.w = (uint)r13.z >> 15;
            r8.w = (uint)r8.w;
            r8.w = sunConstants.sstLightingConstants.constants.spanInInches * r8.w;
            r8.w = 6.10388815e-05 * r8.w;
            r13.yw = (int2)r13.zz & int2(32767,536870912);
            r9.w = (uint)r13.y;
            r9.w = sunConstants.sstLightingConstants.constants.spanInInches * r9.w;
            r9.w = 3.05185094e-05 * r9.w;
            r13.y = (int)r12.y & 3;
            r13.y = (int)r13.y + (int)r13.x;
            r13.y = (int)r13.y + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
          r13.y = samp0[]..swiz;
            bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r14.x = (((uint)r12.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
            bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r14.y = (((uint)r12.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
            bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r14.z = (((uint)r12.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
            r12.x = (uint)r13.y >> (uint)r14.x;
            r12.x = (int)r12.x & 255;
            r12.x = (uint)r12.x;
            r12.x = r12.x * r9.w;
            r12.x = r12.x * 0.00392156886 + r8.w;
            r12.y = (int)r14.y + 1;
            if (1 == 0) r12.z = 0; else if (1+1 < 32) {             r12.z = (uint)r12.z << (32-(1 + 1)); r12.z = (uint)r12.z >> (32-1);            } else r12.z = (uint)r12.z >> 1;
            r12.y = (int)r12.z + (int)r12.y;
            r12.y = (int)r12.y + (int)r13.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.y, r12.y, l(0), t23.xxxx
          r12.y = samp0[]..swiz;
            r12.y = (uint)r12.y >> (uint)r14.z;
            r12.y = (int)r12.y & 0x0000ffff;
            r12.y = (uint)r12.y;
            r9.w = r12.y * r9.w;
            r8.w = r9.w * 1.52590219e-05 + r8.w;
            r12.w = r13.w ? r12.x : r8.w;
          } else {
            r8.w = (int)r13.z & 0x80000000;
            r9.w = (int)r13.x + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
          r9.w = samp0[]..swiz;
            r8.w = r8.w ? r9.w : 0;
            r9.w = (uint)r13.z << 2;
            r12.x = (uint)r8.w >> 16;
            r12.x = f16tof32(r12.x);
            r8.w = (int)r8.w & 0x0000ffff;
            r8.w = f16tof32(r8.w);
            r9.w = r6.y * r12.x + r9.w;
            r8.w = r6.z * r8.w + r9.w;
            r12.w = r7.w ? r8.w : r12.w;
          }
        }
        r6.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r6.w;
        r6.w = cmp(r12.w < r6.w);
        r4.w = r6.w ? 0 : 1;
      }
      if (r7.z == 0) {
        if (enableDitheredShadow == 0) {
          r6.w = (uint)r5.w;
          r7.zw = -sunConstants.splitPinTransform[r6.w].xy + r6.yz;
          r7.zw = sunConstants.splitPinTransform[r6.w].zz * r7.zw;
          r12.xy = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
          r6.w = (int16)sunConstants.splitArrayOffset;
          r12.z = r6.w + r5.w;
          r6.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r4.z).x;
          r7.z = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
          r6.w = r7.z + r6.w;
          r6.w = saturate(-1 + r6.w);
          r7.z = r6.w * r6.w;
          r4.w = r7.z * r6.w;
        }
        if (enableDitheredShadow != 0) {
          r12.x = -r4.x;
          r6.w = (uint)r5.w;
          r5.w = 1 + r5.w;
          r5.w = min(2, r5.w);
          r5.w = (uint)r5.w;
          r7.y = 1 + -r7.y;
          r7.y = 28 * r7.y;
          r7.y = (uint)r7.y;
          r7.zw = -sunConstants.splitPinTransform[r6.w].xy + r6.yz;
          r7.zw = sunConstants.splitPinTransform[r6.w].zz * r7.zw;
          r7.zw = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
          r6.yz = -sunConstants.splitPinTransform[r5.w].xy + r6.yz;
          r6.yz = sunConstants.splitPinTransform[r5.w].zz * r6.yz;
          r6.yz = r6.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r12.y = r5.x;
          r12.z = r4.x;
          r8.w = 0;
          r9.w = 0;
          while (true) {
            r12.w = cmp((uint)r9.w >= 8);
            if (r12.w != 0) break;
            r12.w = cmp((uint)r7.y < (uint)r9.w);
            r13.xy = r12.ww ? r6.yz : r7.zw;
            r13.z = r12.w ? sunConstants.splitPinTransform[r5.w].w : sunConstants.splitPinTransform[r6.w].w;
            r12.w = r12.w ? r5.w : r6.w;
            r14.x = dot(icb[r9.w+0].yx, r12.xy);
            r14.y = dot(icb[r9.w+0].yx, r12.yz);
            r13.xy = r14.xy * r13.zz + r13.xy;
            r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
            r13.z = (uint)r12.w;
            r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r4.z).x;
            r13.x = gTransShadowmapArray.SampleLevel(samp0_s, r13.xyz, 0).x;
            r12.w = r13.x + r12.w;
            r12.w = saturate(-1 + r12.w);
            r8.w = r12.w * 0.125 + r8.w;
            r9.w = (int)r9.w + 1;
          }
          r4.z = r8.w * r8.w;
          r4.w = r4.z * r8.w;
        }
      }
    }
  } else {
    r4.w = 1;
  }
  r4.z = dot(v3.xyz, sunConstants.wldDir.xyz);
  r5.w = cmp(0 < abs(r4.z));
  if (r5.w != 0) {
    r5.w = cmp(0 < r4.w);
    if (r5.w != 0) {
      r5.w = sunConstants.specScale * r2.z;
      r5.w = 0.25 * r5.w;
      if (sunConstants.sunCookieIndex != 0) {
        r12.xyz = eyeOffset.xyz + v6.xyz;
        r12.w = 1;
        r6.y = dot(sunConstants.sunCookieTransform[0].xyzw, r12.xyzw);
        r6.z = dot(sunConstants.sunCookieTransform[1].xyzw, r12.xyzw);
        r12.xy = frac(r6.yz);
        r6.y = -1 + (int14)sunConstants.sunCookieIndex;
        r12.z = (uint)r6.y;
        r6.yzw = gCookieArray.SampleLevel(samplerLinear_s, r12.xyz, 0).xyz;
        r6.yzw = float3(-1,-1,-1) + r6.yzw;
        r6.yzw = sunConstants.sunCookieIntensity * r6.yzw + float3(1,1,1);
        r6.yzw = sunConstants.color.xyz * r6.yzw;
      } else {
        r6.yzw = sunConstants.color.xyz;
      }
      if (noReceiveShadow == 0) {
        r7.y = viewmodelSunShadowRaw >> 16;
        r7.z = cmp(0 < (uint)r7.y);
        r7.z = r0.w ? r7.z : 0;
        if (r7.z != 0) {
          r7.y = (int)r7.y + numLights;
          r7.y = (int)r7.y + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.z, r7.y, l(52), t12.xxxx
        r7.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r7.y, l(68), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.y, l(84), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.y, l(132), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.y, l(148), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
          r7.w = abs(r4.z) * -0.200000003 + 0.400000006;
          r8.w = cmp(r4.z < 0);
          r7.w = r8.w ? -r7.w : r7.w;
          r16.xyz = v3.xyz * r7.www + v6.xyz;
          r16.w = 1;
          r12.x = dot(r12.xyzw, r16.xyzw);
          r12.y = dot(r13.xyzw, r16.xyzw);
          r12.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r12.xy = r12.xy + r15.zw;
          r12.xy = r12.xy * r15.xy;
          r12.zw = r7.zz / r14.xz;
          r13.xy = float2(1,1) + -r12.zw;
          r13.xy = cmp(r12.xy >= r13.xy);
          r12.zw = cmp(r12.zw >= r12.xy);
          r12.zw = (int2)r12.zw | (int2)r13.xy;
          r7.w = (int)r12.w | (int)r12.z;
          if (r7.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.y, l(28), t12.xxxx
          r7.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.y, l(100), t12.xyzw
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.zw, r7.y, l(164), t12.xxxy
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
            r7.y = dot(r13.xyzw, r16.xyzw);
            r12.xy = saturate(r12.xy);
            r13.xy = r12.xy * r14.xz + r14.yw;
            r7.y = r7.y + r12.z;
            r7.y = r7.y / r12.w;
            r7.y = max(6.10351563e-05, r7.y);
            r7.w = (int)r7.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r12.x = -r4.x;
              r14.z = (uint)r7.w;
              r12.y = r5.x;
              r12.z = r4.x;
              r8.w = 0;
              r9.w = 0;
              while (true) {
                r12.w = cmp((int)r9.w >= 8);
                if (r12.w != 0) break;
                r15.x = dot(icb[r9.w+0].yx, r12.xy);
                r15.y = dot(icb[r9.w+0].yx, r12.yz);
                r14.xy = r15.xy * r7.zz + r13.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r7.y).x;
                r8.w = r12.w * 0.125 + r8.w;
                r9.w = (int)r9.w + 1;
              }
            } else {
              r13.z = (uint)r7.w;
              r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r7.y).x;
            }
            r7.y = r8.w * r8.w;
            r7.y = r7.y * r8.w;
          } else {
            r7.y = 1;
          }
          r4.w = r7.y * r4.w;
        } else {
          r7.y = viewmodelSunShadowRaw & 0x0000ffff;
          r7.z = cmp(0 < (uint)r7.y);
          r7.w = ~(int)r0.w;
          r7.z = r7.z ? r7.w : 0;
          if (r7.z != 0) {
            r7.y = (int)r7.y + numLights;
            r7.y = (int)r7.y + -1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.z, r7.y, l(52), t12.xxxx
          r7.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r7.y, l(68), t12.xyzw
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.y, l(84), t12.xyzw
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r7.y, l(132), t12.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.y, l(148), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
            r7.w = abs(r4.z) * -0.200000003 + 0.400000006;
            r8.w = cmp(r4.z < 0);
            r7.w = r8.w ? -r7.w : r7.w;
            r16.xyz = v3.xyz * r7.www + v6.xyz;
            r16.w = 1;
            r12.x = dot(r12.xyzw, r16.xyzw);
            r12.y = dot(r13.xyzw, r16.xyzw);
            r12.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
            r12.xy = r12.xy + r15.zw;
            r12.xy = r12.xy * r15.xy;
            r12.zw = r7.zz / r14.xz;
            r13.xy = float2(1,1) + -r12.zw;
            r13.xy = cmp(r12.xy >= r13.xy);
            r12.zw = cmp(r12.zw >= r12.xy);
            r12.zw = (int2)r12.zw | (int2)r13.xy;
            r7.w = (int)r12.w | (int)r12.z;
            if (r7.w == 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r7.y, l(28), t12.xxxx
            r7.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r7.y, l(100), t12.xyzw
            r13.x = samp0[]..swiz;
            r13.y = samp0[]..swiz;
            r13.z = samp0[]..swiz;
            r13.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.zw, r7.y, l(164), t12.xxxy
            r12.z = samp0[]..swiz;
            r12.w = samp0[]..swiz;
              r7.y = dot(r13.xyzw, r16.xyzw);
              r12.xy = saturate(r12.xy);
              r13.xy = r12.xy * r14.xz + r14.yw;
              r7.y = r7.y + r12.z;
              r7.y = r7.y / r12.w;
              r7.y = max(6.10351563e-05, r7.y);
              r7.w = (int)r7.w & 0x0000ffff;
              if (enableDitheredShadow != 0) {
                r12.x = -r4.x;
                r14.z = (uint)r7.w;
                r12.y = r5.x;
                r12.z = r4.x;
                r8.w = 0;
                r9.w = 0;
                while (true) {
                  r12.w = cmp((int)r9.w >= 8);
                  if (r12.w != 0) break;
                  r15.x = dot(icb[r9.w+0].yx, r12.xy);
                  r15.y = dot(icb[r9.w+0].yx, r12.yz);
                  r14.xy = r15.xy * r7.zz + r13.xy;
                  r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r7.y).x;
                  r8.w = r12.w * 0.125 + r8.w;
                  r9.w = (int)r9.w + 1;
                }
              } else {
                r13.z = (uint)r7.w;
                r8.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r7.y).x;
              }
              r7.y = r8.w * r8.w;
              r7.y = r7.y * r8.w;
            } else {
              r7.y = 1;
            }
            r4.w = r7.y * r4.w;
          }
        }
      }
      r7.y = -r2.x * 0.5 + 1;
      r7.y = -abs(r4.z) * r7.y + 1;
      r7.y = r7.y * r7.y;
      r7.y = -r7.y * 0.620000005 + 0.620000005;
      r7.y = r7.y + -abs(r4.z);
      r7.y = r3.z * r7.y + abs(r4.z);
      r7.y = r7.y * r4.w;
      r7.z = cmp(0 < r4.z);
      r12.xyz = r7.yyy * r6.yzw + r10.xyz;
      r4.z = saturate(r4.z);
      r13.xyz = -v6.xyz * r1.xxx + sunConstants.wldDir.xyz;
      r1.x = dot(r13.xyz, r13.xyz);
      r1.x = rsqrt(r1.x);
      r13.xyz = r13.xyz * r1.xxx;
      r1.x = dot(r13.xyz, r1.yzw);
      r7.y = dot(v3.xyz, r13.xyz);
      r7.w = abs(r7.y) * r2.z + -abs(r7.y);
      r7.y = abs(r7.y) * r7.w + 1;
      r7.w = r4.z * r2.y + r2.w;
      r7.y = r7.y * r7.y;
      r7.y = r7.y * r7.w;
      r7.y = rcp(r7.y);
      r4.z = r4.z * r5.w;
      r4.z = r7.y * r4.z;
      r4.z = r4.z * r4.w;
      r13.xyz = r4.zzz * r6.yzw + r3.xyw;
      r1.x = saturate(1 + -r1.x);
      r4.w = r1.x * r1.x;
      r4.w = r4.w * r4.w;
      r1.x = r4.w * r1.x;
      r1.x = r4.z * r1.x;
      r14.xyz = r1.xxx * r6.zwy + r11.xyz;
      r12.w = r14.z;
      r10.w = r11.z;
      r10.xyzw = r7.zzzz ? r12.xyzw : r10.xyzw;
      r14.zw = r13.xy;
      r11.zw = r3.xy;
      r12.xyzw = r7.zzzz ? r14.xyzw : r11.xyzw;
      r3.w = r7.z ? r13.z : r3.w;
      r11.z = r10.w;
      r11.xy = r12.xy;
      r3.xy = r12.zw;
    }
  }
  r12.x = -r4.x;
  r1.x = ~(int)r0.w;
  r2.x = -r2.x * 0.5 + 1;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.xyz = v6.xyz;
  r15.w = 1;
  r16.w = 1;
  r12.z = r4.x;
  r17.w = 1;
  r18.z = 1;
  r19.w = 1;
  r12.yw = r5.xx;
  r4.y = r12.w;
  r20.w = 1;
  r5.y = r12.x;
  r5.z = r4.x;
  r21.w = 1;
  r22.x = r5.x;
  r22.y = r12.x;
  r22.z = r4.x;
  r23.x = r5.x;
  r23.y = r12.x;
  r23.z = r4.x;
  r24.x = r5.x;
  r24.y = r12.x;
  r24.z = r4.x;
  r6.yzw = r10.xyz;
  r25.xyz = r11.zxy;
  r26.xyz = r3.xyw;
  r4.z = enableDitheredShadow;
  r4.w = 0;
  while (true) {
    r5.w = cmp((uint)r4.w >= numLights);
    if (r5.w != 0) break;
    r13.z = (uint)r4.w >> 5;
    r14.xyz = (int3)r9.xyz + (int3)r13.xyz;
    r5.w = visibleLights.Load(r14.xyzw).x;
    r7.yzw = r6.yzw;
    r14.xyz = r25.xyz;
    r27.xyz = r26.xyz;
    r8.w = r4.z;
    r9.w = r5.w;
    while (true) {
      if (r9.w == 0) break;
      r10.w = firstbitlow((uint)r9.w);
      r11.w = 1 << (int)r10.w;
      r13.z = (int)r9.w & (int)r11.w;
      if (r13.z != 0) {
        r9.w = (int)r9.w ^ (int)r11.w;
        r10.w = (int)r4.w + (int)r10.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(0), t11.xyzw
      r28.x = samp0[]..swiz;
      r28.y = samp0[]..swiz;
      r28.z = samp0[]..swiz;
      r28.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xy, r10.w, l(16), t11.xyxx
      r29.x = samp0[]..swiz;
      r29.y = samp0[]..swiz;
        r28.xyz = -v6.xyz + r28.xyz;
        r29.z = r28.w;
        r28.xyz = cmp(abs(r28.xyz) < r29.zxy);
        r11.w = r28.y ? r28.x : 0;
        r11.w = r28.z ? r11.w : 0;
        if (r11.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(0), t12.wxyz
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(16), t12.zxyw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(32), t12.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(48), t12.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(64), t12.yzwx
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(80), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(96), t12.yzwx
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
          if (3 == 0) r11.w = 0; else if (3+24 < 32) {           r11.w = (uint)r29.w << (32-(3 + 24)); r11.w = (uint)r11.w >> (32-3);          } else r11.w = (uint)r29.w >> 24;
          switch (r11.w) {
            case 4 :            r11.w = cmp(0 < r34.x);
            r35.xy = r33.zw;
            r35.z = r34.w;
            r36.xyz = -r35.xyz * float3(0.5,0.5,0.5) + r28.yzw;
            r37.xyz = -v6.xyz + r36.xyz;
            r13.z = dot(r35.xyz, r37.xyz);
            r13.w = saturate(-r13.z / r34.x);
            r38.xyz = r13.www * r35.xyz + r36.xyz;
            r38.xyz = r11.www ? r38.xyz : r28.yzw;
            r38.xyz = -v6.xyz + r38.xyz;
            r18.w = dot(r38.xyz, r38.xyz);
            r22.w = rsqrt(r18.w);
            r38.xyz = r38.xyz * r22.www;
            r22.w = dot(v3.xyz, r38.xyz);
            r23.w = cmp(0 < abs(r22.w));
            if (r23.w != 0) {
              r23.w = sqrt(r18.w);
              r24.w = r31.x * r31.x;
              r18.w = r24.w / r18.w;
              r18.w = min(1, r18.w);
              r38.xy = saturate(r23.ww * r30.xz + r30.yw);
              r38.zw = r38.xy * r38.xy;
              r38.xy = r38.xy * float2(-2,-2) + float2(3,3);
              r38.xy = r38.zw * r38.xy;
              r18.w = r38.x * r18.w;
              r18.w = r18.w * r38.y;
              r23.w = cmp(0 < r18.w);
              if (r23.w != 0) {
                if (3 == 0) r23.w = 0; else if (3+27 < 32) {                 r23.w = (uint)r29.w << (32-(3 + 27)); r23.w = (uint)r23.w >> (32-3);                } else r23.w = (uint)r29.w >> 27;
                r23.w = cmp((int)r23.w != 1);
                if (r23.w != 0) {
                  r23.w = abs(r22.w) * -0.200000003 + 0.400000006;
                  r24.w = cmp(r22.w < 0);
                  r23.w = r24.w ? -r23.w : r23.w;
                  r38.xyz = v3.xyz * r23.www + v6.xyz;
                  r38.xyz = r38.xyz + -r32.xyz;
                  r23.w = max(abs(r38.y), abs(r38.z));
                  r23.w = max(abs(r38.x), r23.w);
                  r23.w = r33.x / r23.w;
                  r23.w = r23.w + r33.y;
                  r24.w = dot(r38.xyz, r38.xyz);
                  r24.w = rsqrt(r24.w);
                  r23.w = max(6.10351563e-05, r23.w);
                  r25.w = (int)r29.w & 0x0000ffff;
                  r39.w = (uint)r25.w;
                  r25.w = 0;
                  r26.w = 0;
                  while (true) {
                    r27.w = cmp((int)r26.w >= 8);
                    if (r27.w != 0) break;
                    r40.y = dot(icb[r26.w+0].yx, r12.xy);
                    r40.z = dot(icb[r26.w+0].yx, r12.yz);
                    r40.yz = r40.yz * r31.yy;
                    r40.x = r40.y * r7.x;
                    r40.w = r40.y * r6.x;
                    r39.xyz = r38.xyz * r24.www + r40.xzw;
                    r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyzw, r23.w).x;
                    r25.w = r27.w * 0.125 + r25.w;
                    r26.w = (int)r26.w + 1;
                  }
                } else {
                  r25.w = 1;
                }
                r18.w = r25.w * r18.w;
                r23.w = cmp(0 < r18.w);
                if (r23.w != 0) {
                  r23.w = r29.x * r2.z;
                  r23.w = 0.25 * r23.w;
                  r24.w = dot(r35.xyz, r8.xyz);
                  r26.w = dot(r8.xyz, r37.xyz);
                  r27.w = -r24.w * r24.w + r34.x;
                  r13.z = r24.w * r26.w + -r13.z;
                  r13.z = saturate(r13.z / r27.w);
                  r24.w = r27.w / r34.x;
                  r24.w = 10 * r24.w;
                  r24.w = min(1, r24.w);
                  r13.z = r13.z + -r13.w;
                  r13.z = r24.w * r13.z + r13.w;
                  r35.xyz = r13.zzz * r35.xyz + r36.xyz;
                  r35.xyz = r11.www ? r35.xyz : r28.yzw;
                  r35.xyz = -v6.xyz + r35.xyz;
                  r11.w = dot(r35.xyz, r35.xyz);
                  r11.w = rsqrt(r11.w);
                  r36.xyz = r35.xyz * r11.www;
                  if (4 == 0) r13.z = 0; else if (4+16 < 32) {                   r13.z = (uint)r29.w << (32-(4 + 16)); r13.z = (uint)r13.z >> (32-4);                  } else r13.z = (uint)r29.w >> 16;
                  r13.w = cmp(0 < (uint)r13.z);
                  r13.w = r0.w ? r13.w : 0;
                  if (r13.w != 0) {
                    r13.z = (int)r13.z + numLights;
                    r13.z = (int)r13.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(52), t12.xxxx
                  r13.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(100), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.z, l(116), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r24.w = abs(r22.w) * -0.200000003 + 0.400000006;
                    r26.w = cmp(r22.w < 0);
                    r24.w = r26.w ? -r24.w : r24.w;
                    r16.xyz = v3.xyz * r24.www + v6.xyz;
                    r24.w = dot(r37.xyzw, r16.xyzw);
                    r26.w = dot(r38.xyzw, r16.xyzw);
                    r27.w = cmp(r26.w < r24.w);
                    if (r27.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(68), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.z, l(84), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.z, l(132), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.z, l(148), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xy, r13.z, l(164), t12.xyxx
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                      r37.x = dot(r37.xyzw, r16.xyzw);
                      r37.y = dot(r38.xyzw, r16.xyzw);
                      r16.xy = r37.xy / r26.ww;
                      r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r16.xy = r16.xy + r40.zw;
                      r16.xy = r16.xy * r40.xy;
                      r37.xy = r13.ww / r39.xz;
                      r37.zw = float2(1,1) + -r37.xy;
                      r37.zw = cmp(r16.xy >= r37.zw);
                      r37.xy = cmp(r37.xy >= r16.xy);
                      r37.xy = (int2)r37.xy | (int2)r37.zw;
                      r16.z = (int)r37.y | (int)r37.x;
                      r16.xy = saturate(r16.xy);
                      r37.xy = r16.xy * r39.xz + r39.yw;
                      r16.x = r41.y * r26.w;
                      r16.y = r41.x * r26.w + r24.w;
                      r16.x = r16.y / r16.x;
                    } else {
                      r16.z = -1;
                    }
                    r16.y = (int)r27.w | (int)r16.z;
                    if (r16.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(28), t12.xxxx
                    r13.z = samp0[]..swiz;
                      r16.x = max(6.10351563e-05, r16.x);
                      r13.z = (int)r13.z & 0x0000ffff;
                      if (r8.w != 0) {
                        r38.z = (uint)r13.z;
                        r16.yz = float2(0,0);
                        while (true) {
                          r24.w = cmp((int)r16.z >= 8);
                          if (r24.w != 0) break;
                          r39.x = dot(icb[r16.z+0].yx, r12.xw);
                          r39.y = dot(icb[r16.z+0].xy, r4.xy);
                          r38.xy = r39.xy * r13.ww + r37.xy;
                          r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r16.x).x;
                          r16.y = r24.w * 0.125 + r16.y;
                          r16.z = (int)r16.z + 1;
                        }
                      } else {
                        r37.z = (uint)r13.z;
                        r16.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r16.x).x;
                      }
                      r13.z = r16.y * r16.y;
                      r13.z = r13.z * r16.y;
                    } else {
                      r13.z = 1;
                    }
                    r18.w = r18.w * r13.z;
                  } else {
                    if (4 == 0) r13.z = 0; else if (4+20 < 32) {                     r13.z = (uint)r29.w << (32-(4 + 20)); r13.z = (uint)r13.z >> (32-4);                    } else r13.z = (uint)r29.w >> 20;
                    r13.w = cmp(0 < (uint)r13.z);
                    r13.w = r13.w ? r1.x : 0;
                    if (r13.w != 0) {
                      r13.z = (int)r13.z + numLights;
                      r13.z = (int)r13.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.z, l(52), t12.xxxx
                    r13.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(100), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.z, l(116), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                      r16.x = abs(r22.w) * -0.200000003 + 0.400000006;
                      r16.z = cmp(r22.w < 0);
                      r16.x = r16.z ? -r16.x : r16.x;
                      r17.xyz = v3.xyz * r16.xxx + v6.xyz;
                      r16.x = dot(r37.xyzw, r17.xyzw);
                      r16.z = dot(r38.xyzw, r17.xyzw);
                      r24.w = cmp(r16.z < r16.x);
                      if (r24.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r13.z, l(68), t12.xyzw
                      r37.x = samp0[]..swiz;
                      r37.y = samp0[]..swiz;
                      r37.z = samp0[]..swiz;
                      r37.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.z, l(84), t12.xyzw
                      r38.x = samp0[]..swiz;
                      r38.y = samp0[]..swiz;
                      r38.z = samp0[]..swiz;
                      r38.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.z, l(132), t12.xyzw
                      r39.x = samp0[]..swiz;
                      r39.y = samp0[]..swiz;
                      r39.z = samp0[]..swiz;
                      r39.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.z, l(148), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xy, r13.z, l(164), t12.xyxx
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                        r37.x = dot(r37.xyzw, r17.xyzw);
                        r37.y = dot(r38.xyzw, r17.xyzw);
                        r17.xy = r37.xy / r16.zz;
                        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r17.xy = r17.xy + r40.zw;
                        r17.xy = r17.xy * r40.xy;
                        r37.xy = r13.ww / r39.xz;
                        r37.zw = float2(1,1) + -r37.xy;
                        r37.zw = cmp(r17.xy >= r37.zw);
                        r37.xy = cmp(r37.xy >= r17.xy);
                        r37.xy = (int2)r37.xy | (int2)r37.zw;
                        r17.z = (int)r37.y | (int)r37.x;
                        r17.xy = saturate(r17.xy);
                        r37.xy = r17.xy * r39.xz + r39.yw;
                        r17.x = r41.y * r16.z;
                        r16.x = r41.x * r16.z + r16.x;
                        r16.x = r16.x / r17.x;
                      } else {
                        r17.z = -1;
                      }
                      r16.z = (int)r24.w | (int)r17.z;
                      if (r16.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(28), t12.xxxx
                      r13.z = samp0[]..swiz;
                        r16.x = max(6.10351563e-05, r16.x);
                        r13.z = (int)r13.z & 0x0000ffff;
                        if (r8.w != 0) {
                          r17.z = (uint)r13.z;
                          r16.z = 0;
                          r24.w = 0;
                          while (true) {
                            r26.w = cmp((int)r24.w >= 8);
                            if (r26.w != 0) break;
                            r38.x = dot(icb[r24.w+0].xy, r5.xy);
                            r38.y = dot(icb[r24.w+0].yx, r5.xz);
                            r17.xy = r38.xy * r13.ww + r37.xy;
                            r17.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r16.x).x;
                            r16.z = r17.x * 0.125 + r16.z;
                            r24.w = (int)r24.w + 1;
                          }
                        } else {
                          r37.z = (uint)r13.z;
                          r16.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r16.x).x;
                        }
                        r13.z = r16.z * r16.z;
                        r13.z = r13.z * r16.z;
                      } else {
                        r13.z = 1;
                      }
                      r18.w = r18.w * r13.z;
                    }
                  }
                  r13.z = -abs(r22.w) * r2.x + 1;
                  r13.z = r13.z * r13.z;
                  r13.z = -r13.z * 0.620000005 + 0.620000005;
                  r13.z = r13.z + -abs(r22.w);
                  r13.z = r3.z * r13.z + abs(r22.w);
                  r13.z = r13.z * r18.w;
                  r29.x = r28.x;
                  r13.w = cmp(0 < r22.w);
                  r17.xyz = r13.zzz * r29.xyz + r7.yzw;
                  r13.z = saturate(dot(v3.xyz, r36.xyz));
                  r35.xyz = r35.xyz * r11.www + r1.yzw;
                  r11.w = dot(r35.xyz, r35.xyz);
                  r11.w = rsqrt(r11.w);
                  r35.xyz = r35.xyz * r11.www;
                  r11.w = dot(r35.xyz, r1.yzw);
                  r16.x = dot(v3.xyz, r35.xyz);
                  r22.w = abs(r16.x) * r2.z + -abs(r16.x);
                  r16.x = abs(r16.x) * r22.w + 1;
                  r22.w = r13.z * r2.y + r2.w;
                  r16.x = r16.x * r16.x;
                  r16.x = r16.x * r22.w;
                  r16.x = rcp(r16.x);
                  r13.z = r13.z * r23.w;
                  r13.z = r16.x * r13.z;
                  r13.z = r13.z * r18.w;
                  r35.xyz = r13.zzz * r29.xyz + r27.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r16.x = r11.w * r11.w;
                  r16.x = r16.x * r16.x;
                  r11.w = r16.x * r11.w;
                  r11.w = r13.z * r11.w;
                  r36.xyz = r11.www * r29.xyz + r14.xyz;
                  r7.yzw = r13.www ? r17.xyz : r7.yzw;
                  r14.xyz = r13.www ? r36.xyz : r14.xyz;
                  r27.xyz = r13.www ? r35.xyz : r27.xyz;
                }
              }
            }
            break;
            case 2 :            r17.xy = r31.zw;
            r17.z = r32.w;
            r17.xyz = -v6.xyz + r17.xyz;
            r11.w = dot(r17.xyz, r17.xyz);
            r11.w = rsqrt(r11.w);
            r35.xyz = r17.xyz * r11.www;
            r13.z = dot(v3.xyz, r35.xyz);
            r13.w = cmp(0 < abs(r13.z));
            if (r13.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(112), t12.yzwx
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(128), t12.zxyw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r37.xyz = r35.xyz;
              r37.w = r36.y;
              r13.w = dot(r37.xyzw, r15.xyzw);
              r16.x = cmp(r13.w < 1);
              if (r16.x != 0) {
                r38.xyz = float3(1,1,1);
                r16.x = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(172), t12.yzwx
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(188), t12.wxyz
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(204), t12.xyzw
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.w, r10.w, l(236), t12.xxxx
              r18.w = samp0[]..swiz;
                r42.xyz = -v6.xyz + r28.yzw;
                r22.w = r31.x * r31.x;
                r23.w = dot(r42.xyz, r42.xyz);
                r22.w = r22.w / r23.w;
                r22.w = min(1, r22.w);
                r30.xy = saturate(r13.ww * r30.xz + r30.yw);
                r30.zw = r30.xy * r30.xy;
                r30.xy = r30.xy * float2(-2,-2) + float2(3,3);
                r30.xy = r30.zw * r30.xy;
                r22.w = r30.x * r22.w;
                r22.w = r22.w * r30.y;
                r32.w = r33.x;
                r30.x = dot(r32.xyzw, r15.xyzw);
                r42.xyz = r33.yzw;
                r42.w = r34.w;
                r30.y = dot(r42.xyzw, r15.xyzw);
                r18.xy = r30.xy / r13.ww;
                r13.w = cmp(r39.w < 0.00048828125);
                if (r13.w != 0) {
                  r40.y = r41.x;
                  r30.xy = saturate(abs(r18.xy) * r40.zw + r40.xy);
                  r30.zw = r30.xy * r30.xy;
                  r30.xy = r30.xy * float2(-2,-2) + float2(3,3);
                  r30.xy = r30.zw * r30.xy;
                  r13.w = r30.x * r30.y;
                } else {
                  r39.w = r40.y;
                  r30.xyzw = saturate(r39.xyzw * abs(r18.yyxx));
                  r30.xyzw = log2(r30.xyzw);
                  r30.xyzw = r40.xxxx * r30.xyzw;
                  r30.xyzw = exp2(r30.xyzw);
                  r30.xy = r30.xy + r30.zw;
                  r30.xy = log2(r30.xy);
                  r30.xy = r41.xx * r30.xy;
                  r30.xy = exp2(r30.xy);
                  r23.w = r40.z * r30.x;
                  r24.w = r40.w * r30.y + -1;
                  r23.w = r40.w * r30.y + -r23.w;
                  r23.w = saturate(r24.w / r23.w);
                  r24.w = r23.w * r23.w;
                  r23.w = r23.w * -2 + 3;
                  r13.w = r24.w * r23.w;
                }
                r16.x = r22.w * r13.w;
                r13.w = (int)r18.w & 255;
                if (r13.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyz, r10.w, l(220), t12.xyzx
                r30.x = samp0[]..swiz;
                r30.y = samp0[]..swiz;
                r30.z = samp0[]..swiz;
                  r18.w = dot(r41.yzw, r18.xyz);
                  r18.x = dot(r30.xyz, r18.xyz);
                  r30.xy = frac(r18.wx);
                  r13.w = (int)r13.w + -1;
                  r30.z = (uint)r13.w;
                  r38.xyz = gCookieArray.SampleLevel(samplerLinear_s, r30.xyz, 0).xyz;
                } else {
                  r38.xyz = float3(1,1,1);
                }
              }
              r28.yz = r29.yz;
              r18.xyw = r28.xyz * r38.xyz;
              r13.w = cmp(0 < r16.x);
              if (r13.w != 0) {
                if (3 == 0) r13.w = 0; else if (3+27 < 32) {                 r13.w = (uint)r29.w << (32-(3 + 27)); r13.w = (uint)r13.w >> (32-3);                } else r13.w = (uint)r29.w >> 27;
                r13.w = cmp((int)r13.w != 1);
                if (r13.w != 0) {
                  r13.w = abs(r13.z) * -0.200000003 + 0.400000006;
                  r22.w = cmp(r13.z < 0);
                  r13.w = r22.w ? -r13.w : r13.w;
                  r19.xyz = v3.xyz * r13.www + v6.xyz;
                  r35.xyz = r34.xyz;
                  r13.w = dot(r35.xyzw, r19.xyzw);
                  r22.w = dot(r37.xyzw, r19.xyzw);
                  r23.w = cmp(r22.w >= r13.w);
                  if (r23.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.y, r10.w, l(144), t12.xxxx
                  r36.y = samp0[]..swiz;
                    r32.w = r33.x;
                    r28.x = dot(r32.xyzw, r19.xyzw);
                    r34.xyz = r33.yzw;
                    r28.y = dot(r34.xyzw, r19.xyzw);
                    r19.xy = r28.xy / r22.ww;
                    r19.xy = saturate(r19.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r19.xy = r19.xy * r36.zw + r36.xy;
                    r10.w = r13.w / r22.w;
                    r10.w = max(6.10351563e-05, r10.w);
                    r13.w = (int)r29.w & 0x0000ffff;
                    if (r8.w != 0) {
                      r28.z = (uint)r13.w;
                      r22.w = 0;
                      r23.w = 0;
                      while (true) {
                        r24.w = cmp((int)r23.w >= 8);
                        if (r24.w != 0) break;
                        r30.x = dot(icb[r23.w+0].xy, r22.xy);
                        r30.y = dot(icb[r23.w+0].yx, r22.xz);
                        r28.xy = r30.xy * r31.yy + r19.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r10.w).x;
                        r22.w = r24.w * 0.125 + r22.w;
                        r23.w = (int)r23.w + 1;
                      }
                    } else {
                      r19.z = (uint)r13.w;
                      r22.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r10.w).x;
                    }
                    r10.w = r22.w * r22.w;
                    r10.w = r10.w * r22.w;
                  } else {
                    r10.w = 1;
                  }
                } else {
                  r10.w = 1;
                }
                r10.w = r16.x * r10.w;
                r13.w = cmp(0 < r10.w);
                if (r13.w != 0) {
                  r13.w = r29.x * r2.z;
                  r13.w = 0.25 * r13.w;
                  if (4 == 0) r16.x = 0; else if (4+16 < 32) {                   r16.x = (uint)r29.w << (32-(4 + 16)); r16.x = (uint)r16.x >> (32-4);                  } else r16.x = (uint)r29.w >> 16;
                  r19.x = cmp(0 < (uint)r16.x);
                  r19.x = r0.w ? r19.x : 0;
                  if (r19.x != 0) {
                    r16.x = (int)r16.x + numLights;
                    r16.x = (int)r16.x + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r16.x, l(52), t12.xxxx
                  r19.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r16.x, l(68), t12.xyzw
                  r28.x = samp0[]..swiz;
                  r28.y = samp0[]..swiz;
                  r28.z = samp0[]..swiz;
                  r28.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r16.x, l(84), t12.xyzw
                  r30.x = samp0[]..swiz;
                  r30.y = samp0[]..swiz;
                  r30.z = samp0[]..swiz;
                  r30.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r16.x, l(100), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.x, l(116), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.x, l(132), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.x, l(148), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                    r19.y = abs(r13.z) * -0.200000003 + 0.400000006;
                    r19.z = cmp(r13.z < 0);
                    r19.y = r19.z ? -r19.y : r19.y;
                    r20.xyz = v3.xyz * r19.yyy + v6.xyz;
                    r28.x = dot(r28.xyzw, r20.xyzw);
                    r28.y = dot(r30.xyzw, r20.xyzw);
                    r19.y = dot(r31.xyzw, r20.xyzw);
                    r19.z = dot(r32.xyzw, r20.xyzw);
                    r20.x = cmp(r19.z < r19.y);
                    r20.yz = r28.xy / r19.zz;
                    r20.yz = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r20.yz = r20.yz + r34.zw;
                    r20.yz = r20.yz * r34.xy;
                    r28.xy = r19.xx / r33.xz;
                    r28.zw = float2(1,1) + -r28.xy;
                    r28.zw = cmp(r20.yz >= r28.zw);
                    r28.xy = cmp(r28.xy >= r20.yz);
                    r28.xy = (int2)r28.xy | (int2)r28.zw;
                    r23.w = (int)r28.y | (int)r28.x;
                    r20.x = (int)r20.x | (int)r23.w;
                    if (r20.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r16.x, l(28), t12.xxxx
                    r20.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xy, r16.x, l(164), t12.xyxx
                    r28.x = samp0[]..swiz;
                    r28.y = samp0[]..swiz;
                      r20.yz = saturate(r20.yz);
                      r29.xy = r20.yz * r33.xz + r33.yw;
                      r16.x = r28.y * r19.z;
                      r19.y = r28.x * r19.z + r19.y;
                      r16.x = r19.y / r16.x;
                      r16.x = max(6.10351563e-05, r16.x);
                      r19.y = r20.x ? 0.000000 : 0;
                      if (r8.w != 0) {
                        r20.z = (uint)r19.y;
                        r19.z = 0;
                        r23.w = 0;
                        while (true) {
                          r24.w = cmp((int)r23.w >= 8);
                          if (r24.w != 0) break;
                          r28.x = dot(icb[r23.w+0].xy, r23.xy);
                          r28.y = dot(icb[r23.w+0].yx, r23.xz);
                          r20.xy = r28.xy * r19.xx + r29.xy;
                          r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r16.x).x;
                          r19.z = r20.x * 0.125 + r19.z;
                          r23.w = (int)r23.w + 1;
                        }
                      } else {
                        r29.z = (uint)r19.y;
                        r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r16.x).x;
                      }
                      r16.x = r19.z * r19.z;
                      r16.x = r16.x * r19.z;
                    } else {
                      r16.x = 1;
                    }
                    r10.w = r16.x * r10.w;
                  } else {
                    if (4 == 0) r16.x = 0; else if (4+20 < 32) {                     r16.x = (uint)r29.w << (32-(4 + 20)); r16.x = (uint)r16.x >> (32-4);                    } else r16.x = (uint)r29.w >> 20;
                    r19.x = cmp(0 < (uint)r16.x);
                    r19.x = r19.x ? r1.x : 0;
                    if (r19.x != 0) {
                      r16.x = (int)r16.x + numLights;
                      r16.x = (int)r16.x + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r16.x, l(52), t12.xxxx
                    r19.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r16.x, l(68), t12.xyzw
                    r28.x = samp0[]..swiz;
                    r28.y = samp0[]..swiz;
                    r28.z = samp0[]..swiz;
                    r28.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r16.x, l(84), t12.xyzw
                    r29.x = samp0[]..swiz;
                    r29.y = samp0[]..swiz;
                    r29.z = samp0[]..swiz;
                    r29.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r16.x, l(100), t12.xyzw
                    r30.x = samp0[]..swiz;
                    r30.y = samp0[]..swiz;
                    r30.z = samp0[]..swiz;
                    r30.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r16.x, l(116), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.x, l(132), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.x, l(148), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                      r19.y = abs(r13.z) * -0.200000003 + 0.400000006;
                      r20.x = cmp(r13.z < 0);
                      r19.y = r20.x ? -r19.y : r19.y;
                      r21.xyz = v3.xyz * r19.yyy + v6.xyz;
                      r20.x = dot(r28.xyzw, r21.xyzw);
                      r20.y = dot(r29.xyzw, r21.xyzw);
                      r19.y = dot(r30.xyzw, r21.xyzw);
                      r20.z = dot(r31.xyzw, r21.xyzw);
                      r21.x = cmp(r20.z < r19.y);
                      r20.xy = r20.xy / r20.zz;
                      r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r20.xy = r20.xy + r33.zw;
                      r20.xy = r20.xy * r33.xy;
                      r21.yz = r19.xx / r32.xz;
                      r28.xy = float2(1,1) + -r21.yz;
                      r28.xy = cmp(r20.xy >= r28.xy);
                      r21.yz = cmp(r21.yz >= r20.xy);
                      r21.yz = (int2)r21.yz | (int2)r28.xy;
                      r21.y = (int)r21.z | (int)r21.y;
                      r21.x = (int)r21.x | (int)r21.y;
                      if (r21.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r16.x, l(28), t12.xxxx
                      r21.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.yz, r16.x, l(164), t12.xxyx
                      r21.y = samp0[]..swiz;
                      r21.z = samp0[]..swiz;
                        r20.xy = saturate(r20.xy);
                        r28.xy = r20.xy * r32.xz + r32.yw;
                        r16.x = r21.z * r20.z;
                        r19.y = r21.y * r20.z + r19.y;
                        r16.x = r19.y / r16.x;
                        r16.x = max(6.10351563e-05, r16.x);
                        r19.y = r21.x ? 0.000000 : 0;
                        if (r8.w != 0) {
                          r20.z = (uint)r19.y;
                          r21.xy = float2(0,0);
                          while (true) {
                            r21.z = cmp((int)r21.y >= 8);
                            if (r21.z != 0) break;
                            r29.x = dot(icb[r21.y+0].xy, r24.xy);
                            r29.y = dot(icb[r21.y+0].yx, r24.xz);
                            r20.xy = r29.xy * r19.xx + r28.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r16.x).x;
                            r21.x = r20.x * 0.125 + r21.x;
                            r21.y = (int)r21.y + 1;
                          }
                        } else {
                          r28.z = (uint)r19.y;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r28.xyz, r16.x).x;
                        }
                        r16.x = r21.x * r21.x;
                        r16.x = r16.x * r21.x;
                      } else {
                        r16.x = 1;
                      }
                      r10.w = r16.x * r10.w;
                    }
                  }
                  r16.x = -abs(r13.z) * r2.x + 1;
                  r16.x = r16.x * r16.x;
                  r16.x = -r16.x * 0.620000005 + 0.620000005;
                  r16.x = r16.x + -abs(r13.z);
                  r16.x = r3.z * r16.x + abs(r13.z);
                  r16.x = r16.x * r10.w;
                  r19.x = cmp(0 < r13.z);
                  r20.xyz = r16.xxx * r18.xyw + r7.yzw;
                  r13.z = saturate(r13.z);
                  r17.xyz = r17.xyz * r11.www + r1.yzw;
                  r11.w = dot(r17.xyz, r17.xyz);
                  r11.w = rsqrt(r11.w);
                  r17.xyz = r17.xyz * r11.www;
                  r11.w = dot(r17.xyz, r1.yzw);
                  r16.x = dot(v3.xyz, r17.xyz);
                  r17.x = abs(r16.x) * r2.z + -abs(r16.x);
                  r16.x = abs(r16.x) * r17.x + 1;
                  r17.x = r13.z * r2.y + r2.w;
                  r16.x = r16.x * r16.x;
                  r16.x = r16.x * r17.x;
                  r16.x = rcp(r16.x);
                  r13.z = r13.z * r13.w;
                  r13.z = r16.x * r13.z;
                  r10.w = r13.z * r10.w;
                  r17.xyz = r10.www * r18.xyw + r27.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r13.z = r11.w * r11.w;
                  r13.z = r13.z * r13.z;
                  r11.w = r13.z * r11.w;
                  r10.w = r11.w * r10.w;
                  r18.xyw = r10.www * r18.xyw + r14.xyz;
                  r7.yzw = r19.xxx ? r20.xyz : r7.yzw;
                  r14.xyz = r19.xxx ? r18.xyw : r14.xyz;
                  r27.xyz = r19.xxx ? r17.xyz : r27.xyz;
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
    r6.yzw = r7.yzw;
    r25.xyz = r14.xyz;
    r26.xyz = r27.xyz;
    r4.w = (int)r4.w + 32;
  }
  r1.xyz = float3(0.959999979,0.959999979,0.959999979) * r25.xyz;
  r1.xyz = r26.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r1.xyz;
  r0.xyz = r6.yzw * r0.xyz + r1.xyz;
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