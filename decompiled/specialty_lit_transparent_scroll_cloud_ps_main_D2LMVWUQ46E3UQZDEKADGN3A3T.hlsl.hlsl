// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:37 2021

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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43;
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
  r3.w = r2.z * r0.w;
  r2.y = saturate(0.0588235296 * glossRange.y);
  r4.xy = (uint2)v0.xy;
  r0.w = cmp(isDepthHack != 0);
  r4.zw = (uint2)r4.yx;
  r2.z = dot(r4.wz, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.zw = float2(52.9829178,0.0078125) * r2.zw;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r5.x, r6.x);
  r2.z = dot(r4.zw, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.z = 52.9829178 * r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r7.x, r8.x);
  r2.x = saturate(r2.x);
  r2.z = dot(-r1.yzw, v3.xyz);
  r2.z = r2.z + r2.z;
  r9.xyz = v3.xyz * -r2.zzz + -r1.yzw;
  r2.z = 17 * r2.y;
  r2.z = exp2(r2.z);
  r2.z = 2 + r2.z;
  r2.z = 2 / r2.z;
  r4.z = sqrt(r2.z);
  r4.w = 1 + -r2.y;
  r5.z = 5 * r4.w;
  r5.w = r4.w * 5 + -2.5;
  r5.w = 0.400000006 * r5.w;
  r5.w = max(0, r5.w);
  r5.w = 100 * r5.w;
  r7.yz = -r4.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r7.y);
  r6.w = r6.w * r2.x;
  r6.w = 9.1368103 * r6.w;
  r7.y = r5.z * r4.w;
  r7.y = -r7.y * 2.0159049 + r7.z;
  r7.y = exp2(r7.y);
  r7.y = r7.y * r2.x;
  r7.y = 9.70808983 * r7.y;
  r6.w = max(r7.y, r6.w);
  r6.w = max(1.26815999, r6.w);
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r10.xy = (uint2)r4.xy >> int2(6,6);
  r10.z = (uint)r2.w << 4;
  r11.xy = float2(0,0);
  r12.w = 0;
  r13.yz = float2(0,1);
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.xy = float2(0,0);
  r4.x = 1;
  r17.xyzw = float4(0,0,0,0);
  r18.yzw = float3(0,0,0);
  r2.w = 0;
  r7.y = 0;
  while (true) {
    r7.z = cmp((uint)r7.y >= numRefProbes);
    if (r7.z != 0) break;
    r11.z = (uint)r7.y >> 5;
    r12.xyz = (int3)r10.xyz + (int3)r11.xyz;
    r7.z = visibleProbes.Load(r12.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r7.y, l(0), t15.wxyz
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r7.y, l(16), t15.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r7.y, l(32), t15.yxwz
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r7.y, l(48), t15.xyzw
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r7.y, l(64), t15.zwxy
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r7.y, l(80), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.yz, r7.y, l(96), t15.xxyx
  r8.y = samp0[]..swiz;
  r8.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r7.y, l(116), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r7.y, l(132), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r7.y, l(148), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r7.y, l(164), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r7.y, l(180), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r7.y, l(196), t15.xyzw
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xy, r7.y, l(212), t15.xyxx
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
    r12.xyz = v6.xyz + -r19.yzw;
    r7.w = dot(r12.xyz, r12.xyz);
    r7.w = sqrt(r7.w);
    r7.w = cmp(probeDebugRadius >= r7.w);
    r8.w = (int)r25.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(0), t16.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(16), t16.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(32), t16.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(48), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(64), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r8.w, l(80), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
    r10.w = dot(r32.xyz, r12.xyz);
    r10.w = saturate(r10.w + r32.w);
    r11.z = dot(r33.xyz, r12.xyz);
    r11.z = saturate(r11.z + r33.w);
    r10.w = r11.z * r10.w;
    r11.z = dot(r34.xyz, r12.xyz);
    r11.z = saturate(r11.z + r34.w);
    r10.w = r11.z * r10.w;
    r11.z = dot(r35.xyz, r12.xyz);
    r11.z = saturate(r11.z + r35.w);
    r10.w = r11.z * r10.w;
    r11.z = dot(r36.xyz, r12.xyz);
    r11.z = saturate(r11.z + r36.w);
    r10.w = r11.z * r10.w;
    r11.z = dot(r37.xyz, r12.xyz);
    r11.z = saturate(r11.z + r37.w);
    r13.x = r11.z * r10.w;
    r10.w = (int)r8.y & 1;
    r11.zw = r10.ww ? r13.xy : r13.zx;
    r32.xy = r25.zw;
    r32.z = r26.z;
    r10.w = dot(r9.xyz, r32.xyz);
    r13.x = dot(r12.xyz, r32.xyz);
    r13.x = r13.x + -r26.w;
    r13.w = cmp(r13.x >= 0);
    r13.x = max(abs(r13.x), r5.w);
    r13.x = r13.w ? r13.x : -r13.x;
    r10.w = max(1.00000001e-07, -r10.w);
    r10.w = r13.x / r10.w;
    r10.w = min(131072, abs(r10.w));
    r26.z = r27.z;
    r13.x = dot(r9.xyz, r26.xyz);
    r13.w = dot(r12.xyz, r26.xyz);
    r13.w = r13.w + -r27.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r5.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r10.w = min(abs(r13.x), r10.w);
    r27.z = r28.z;
    r13.x = dot(r9.xyz, r27.xyz);
    r13.w = dot(r12.xyz, r27.xyz);
    r13.w = r13.w + -r28.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r5.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r10.w = min(abs(r13.x), r10.w);
    r28.z = r29.z;
    r13.x = dot(r9.xyz, r28.xyz);
    r13.w = dot(r12.xyz, r28.xyz);
    r13.w = r13.w + -r29.w;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r5.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r10.w = min(abs(r13.x), r10.w);
    r29.z = r30.x;
    r13.x = dot(r9.xyz, r29.xyz);
    r13.w = dot(r12.xyz, r29.xyz);
    r13.w = r13.w + -r30.y;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r5.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r10.w = min(abs(r13.x), r10.w);
    r31.zw = r30.zw;
    r13.x = dot(r9.zxy, r31.xzw);
    r13.w = dot(r12.zxy, r31.xzw);
    r13.w = r13.w + -r31.y;
    r14.w = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r5.w);
    r13.w = r14.w ? r13.w : -r13.w;
    r13.x = max(1.00000001e-07, -r13.x);
    r13.x = r13.w / r13.x;
    r10.w = min(abs(r13.x), r10.w);
    r26.x = r22.w;
    r26.yz = r23.zw;
    r26.xyz = r26.xyz + r12.xyz;
    r26.xyz = r9.xyz * r10.www + r26.xyz;
    r13.x = dot(r26.xyz, r26.xyz);
    r13.x = sqrt(r13.x);
    r10.w = r10.w / r13.x;
    r10.w = r10.w + r10.w;
    r10.w = sqrt(r10.w);
    r10.w = r4.w * 5 + r10.w;
    r10.w = -0.844799995 + r10.w;
    r19.y = r20.z;
    r19.z = r21.x;
    r27.x = dot(r26.xyz, r19.xyz);
    r28.xy = r20.xw;
    r28.z = r21.w;
    r27.y = dot(r26.xyz, r28.xyz);
    r21.x = r20.y;
    r27.z = dot(r26.xyz, r21.xyz);
    if (6 == 0) r13.x = 0; else if (6+25 < 32) {     r13.x = (uint)r25.y << (32-(6 + 25)); r13.x = (uint)r13.x >> (32-6);    } else r13.x = (uint)r25.y >> 25;
    if (9 == 0) r13.w = 0; else if (9+16 < 32) {     r13.w = (uint)r25.y << (32-(9 + 16)); r13.w = (uint)r13.w >> (32-9);    } else r13.w = (uint)r25.y >> 16;
    r27.w = (uint)r13.w;
    r20.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, r10.w).xyz;
    r25.yzw = (int3)r20.xyz & int3(-2147483648,-2147483648,-2147483648);
    r25.yzw = cmp((int3)r25.yzw == int3(2139095040,2139095040,2139095040));
    r10.w = (int)r25.z | (int)r25.y;
    r10.w = (int)r25.w | (int)r10.w;
    r20.xyz = r10.www ? float3(1,1,0) : r20.xyz;
    r26.x = dot(r12.xyz, r19.xyz);
    r26.y = dot(r12.xyz, r28.xyz);
    r26.z = dot(r12.xyz, r21.xyz);
    r22.xyz = saturate(r26.xyz * r22.xyz + float3(0.5,0.5,0.5));
    r23.z = r24.x;
    r22.xyz = r22.xyz * r23.xyz + r24.yzw;
    r27.x = dot(v3.xyz, r19.xyz);
    r27.y = dot(v3.xyz, r28.xyz);
    r27.z = dot(v3.xyz, r21.xyz);
    r19.xyz = cmp(float3(0,0,0) < r27.xyz);
    r14.z = r19.x ? 0 : 0.5;
    r21.xyz = r22.xyz + r14.xyz;
    r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
    r15.z = r19.y ? 0 : 0.5;
    r19.xyw = r22.xyz + r15.xyz;
    r19.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyw, 0).xyz;
    r16.z = r19.z ? 0 : 0.5;
    r22.xyz = r22.xyz + r16.xyz;
    r22.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
    r23.xyz = r27.xyz * r27.xyz;
    r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r27.xyzw, 6).xyz;
    r25.yzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
    r25.yzw = cmp((int3)r25.yzw == int3(2139095040,2139095040,2139095040));
    r10.w = (int)r25.z | (int)r25.y;
    r10.w = (int)r25.w | (int)r10.w;
    r24.xyz = r10.www ? float3(1,1,0) : r24.xyz;
    r26.xyzw = r17.xyzw;
    r25.yzw = r18.yzw;
    r10.w = r2.w;
    r13.w = r7.z;
    while (true) {
      if (r13.w == 0) break;
      r14.z = firstbitlow((uint)r13.w);
      r14.z = 1 << (int)r14.z;
      r14.w = (int)r13.w & (int)r14.z;
      if (r14.w != 0) {
        r14.z = ~(int)r14.z;
        r13.w = (int)r13.w & (int)r14.z;
        if (r7.w != 0) {
          r14.z = r8.y;
          r27.xy = r11.zw;
          r14.w = 1;
          while (true) {
            r15.z = cmp((int)r14.w >= (int)r13.x);
            if (r15.z != 0) break;
            r15.z = (int)r8.w + (int)r14.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.z, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.z, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.z, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.z, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.z, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.z, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r15.z = dot(r28.xyz, r12.xyz);
            r15.z = saturate(r15.z + r28.w);
            r15.z = r27.x * r15.z;
            r15.w = dot(r29.xyz, r12.xyz);
            r15.w = saturate(r15.w + r29.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r30.xyz, r12.xyz);
            r15.w = saturate(r15.w + r30.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r31.xyz, r12.xyz);
            r15.w = saturate(r15.w + r31.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r32.xyz, r12.xyz);
            r15.w = saturate(r15.w + r32.w);
            r15.z = r15.z * r15.w;
            r15.w = dot(r33.xyz, r12.xyz);
            r15.w = saturate(r15.w + r33.w);
            r27.x = r15.z * r15.w;
            r16.z = (uint)r14.z >> 2;
            if (1 == 0) r16.w = 0; else if (1+2 < 32) {             r16.w = (uint)r14.z << (32-(1 + 2)); r16.w = (uint)r16.w >> (32-1);            } else r16.w = (uint)r14.z >> 2;
            r19.z = (int)r16.z & 2;
            r20.w = max(r27.y, r27.x);
            r15.z = -r15.z * r15.w + 1;
            r15.z = r27.y * r15.z;
            r4.y = r19.z ? r15.z : r20.w;
            r27.xy = r16.ww ? r27.xy : r4.xy;
            r14.w = (int)r14.w + 1;
            r14.z = r16.z;
          }
          r27.y = saturate(r27.y);
          r4.y = r27.y * r8.z;
          r14.z = cmp(0 < r4.y);
          if (r14.z != 0) {
            r28.z = r27.y * r8.z + r25.w;
            r4.y = r4.y * r25.x;
            r27.xzw = r23.xyz * r4.yyy;
            r29.xyz = r27.zzz * r19.xyw;
            r29.xyz = r21.xyz * r27.xxx + r29.xyz;
            r27.xzw = r22.xyz * r27.www + r29.xyz;
            r29.xyz = r27.xzw * r24.xyz;
            r14.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r29.xyz = r27.xzw * r24.xyz + r26.xyz;
            r14.w = r14.z * r6.w;
            r27.xzw = r20.xyz * r4.yyy;
            r4.y = dot(r27.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r4.y = r6.w * r14.z + r4.y;
            r4.y = r14.w / r4.y;
            r30.x = r26.w;
            r30.yz = r25.yz;
            r28.xyw = r27.zwx * r4.yyy + r30.yzx;
            r29.w = r28.w;
          } else {
            r29.xyzw = r26.xyzw;
            r28.xyz = r25.yzw;
          }
          r10.w = -1;
          r26.xyzw = r29.xyzw;
          r25.yzw = r28.xyz;
          break;
        }
      }
    }
    if (r10.w != 0) {
      r17.xyzw = r26.xyzw;
      r18.yzw = r25.yzw;
      r2.w = -1;
      break;
    }
    r7.y = (int)r7.y + 32;
    r17.xyzw = r26.xyzw;
    r18.yzw = r25.yzw;
    r2.w = r10.w;
  }
  if (r2.w == 0) {
    r2.w = numRefProbes + -numOverrideProbes;
    r4.x = (int)r2.w & -32;
    r4.y = (int)r2.w + (int)-r4.x;
    r7.y = numRefProbes & -32;
    r7.z = (int)-r7.y + numRefProbes;
    r11.xy = float2(0,0);
    r12.w = 0;
    r13.yz = float2(0,1);
    r14.xy = float2(0,0);
    r15.x = 1;
    r16.xy = float2(0,0);
    r19.xy = float2(0,0);
    r20.xyzw = r17.xyzw;
    r21.yzw = r18.yzw;
    r7.w = r4.x;
    while (true) {
      r8.y = cmp((uint)r7.w >= numRefProbes);
      if (r8.y != 0) break;
      r11.z = (uint)r7.w >> 5;
      r12.xyz = (int3)r10.xyz + (int3)r11.xyz;
      r8.y = visibleProbes.Load(r12.xyzw).x;
      r8.z = cmp((int)r4.x == (int)r7.w);
      bitmask.w = ((~(-1 << r4.y)) << 0) & 0xffffffff;  r8.w = (((uint)0 << 0) & bitmask.w) | ((uint)r8.y & ~bitmask.w);
      r8.y = r8.z ? r8.w : r8.y;
      r8.z = cmp((int)r7.y == (int)r7.w);
      if (r7.z == 0) r8.w = 0; else if (r7.z+0 < 32) {       r8.w = (uint)r8.y << (32-(r7.z + 0)); r8.w = (uint)r8.w >> (32-r7.z);      } else r8.w = (uint)r8.y >> 0;
      r8.y = r8.z ? r8.w : r8.y;
      r8.z = (int)r7.w + numLights;
      r22.xyzw = r20.xyzw;
      r23.xyz = r21.yzw;
      r8.w = r8.y;
      while (true) {
        if (r8.w == 0) break;
        r10.w = firstbitlow((uint)r8.w);
        r11.z = 1 << (int)r10.w;
        r11.w = (int)r8.w & (int)r11.z;
        if (r11.w != 0) {
          r8.w = (int)r8.w ^ (int)r11.z;
          r11.z = (int)r8.z + (int)r10.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r11.z, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r11.z, l(16), t11.xyxx
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
          r24.xyz = -v6.xyz + r24.xyz;
          r12.z = r24.w;
          r12.xyz = cmp(abs(r24.xyz) < r12.zxy);
          r11.z = r12.y ? r12.x : 0;
          r11.z = r12.z ? r11.z : 0;
          if (r11.z != 0) {
            r10.w = (int)r7.w + (int)r10.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.zw, r10.w, l(96), t15.xxxy
          r11.z = samp0[]..swiz;
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r12.xyz = v6.xyz + -r24.yzw;
            r13.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r14.w = 0; else if (6+25 < 32) {             r14.w = (uint)r25.w << (32-(6 + 25)); r14.w = (uint)r14.w >> (32-6);            } else r14.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(0), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(16), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(32), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r15.z = dot(r26.xyz, r12.xyz);
            r15.z = saturate(r15.z + r26.w);
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
            r15.z = r15.z * r15.w;
            r15.w = dot(r31.xyz, r12.xyz);
            r15.w = saturate(r15.w + r31.w);
            r13.x = r15.z * r15.w;
            r15.z = (int)r11.z & 1;
            r15.zw = r15.zz ? r13.xy : r13.zx;
            r13.x = r11.z;
            r26.xy = r15.zw;
            r16.w = 1;
            while (true) {
              r19.w = cmp((int)r16.w >= (int)r14.w);
              if (r19.w != 0) break;
              r19.w = (int)r13.w + (int)r16.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r19.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r19.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r19.w = dot(r27.xyz, r12.xyz);
              r19.w = saturate(r19.w + r27.w);
              r19.w = r26.x * r19.w;
              r24.w = dot(r28.xyz, r12.xyz);
              r24.w = saturate(r24.w + r28.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r29.xyz, r12.xyz);
              r24.w = saturate(r24.w + r29.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r30.xyz, r12.xyz);
              r24.w = saturate(r24.w + r30.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r31.xyz, r12.xyz);
              r24.w = saturate(r24.w + r31.w);
              r19.w = r24.w * r19.w;
              r24.w = dot(r32.xyz, r12.xyz);
              r24.w = saturate(r24.w + r32.w);
              r26.x = r24.w * r19.w;
              r26.z = (uint)r13.x >> 2;
              if (1 == 0) r26.w = 0; else if (1+2 < 32) {               r26.w = (uint)r13.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);              } else r26.w = (uint)r13.x >> 2;
              r27.x = (int)r26.z & 2;
              r27.y = max(r26.y, r26.x);
              r19.w = -r19.w * r24.w + 1;
              r19.w = r26.y * r19.w;
              r15.y = r27.x ? r19.w : r27.y;
              r26.xy = r26.ww ? r26.xy : r15.xy;
              r16.w = (int)r16.w + 1;
              r13.x = r26.z;
            }
            r26.y = saturate(r26.y);
            r11.z = r26.y * r11.w;
            r13.x = cmp(0 < r11.z);
            if (r13.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(16), t15.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(32), t15.yxwz
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(48), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(64), t15.zwxy
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(80), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(132), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(148), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r10.w, l(164), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r10.w, l(180), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(196), t15.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r10.w, l(212), t15.xyxx
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
              r23.z = r26.y * r11.w + r23.z;
              r10.w = r11.z * r25.z;
              r25.z = r32.z;
              r11.z = dot(r9.xyz, r25.xyz);
              r11.w = dot(r12.xyz, r25.xyz);
              r11.w = r11.w + -r32.w;
              r13.x = cmp(r11.w >= 0);
              r11.w = max(abs(r11.w), r5.w);
              r11.w = r13.x ? r11.w : -r11.w;
              r11.z = max(1.00000001e-07, -r11.z);
              r11.z = r11.w / r11.z;
              r11.z = min(131072, abs(r11.z));
              r32.z = r33.z;
              r11.w = dot(r9.xyz, r32.xyz);
              r13.x = dot(r12.xyz, r32.xyz);
              r13.x = r13.x + -r33.w;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r5.w);
              r13.x = r13.w ? r13.x : -r13.x;
              r11.w = max(1.00000001e-07, -r11.w);
              r11.w = r13.x / r11.w;
              r11.z = min(r11.z, abs(r11.w));
              r33.z = r34.z;
              r11.w = dot(r9.xyz, r33.xyz);
              r13.x = dot(r12.xyz, r33.xyz);
              r13.x = r13.x + -r34.w;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r5.w);
              r13.x = r13.w ? r13.x : -r13.x;
              r11.w = max(1.00000001e-07, -r11.w);
              r11.w = r13.x / r11.w;
              r11.z = min(r11.z, abs(r11.w));
              r34.z = r35.z;
              r11.w = dot(r9.xyz, r34.xyz);
              r13.x = dot(r12.xyz, r34.xyz);
              r13.x = r13.x + -r35.w;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r5.w);
              r13.x = r13.w ? r13.x : -r13.x;
              r11.w = max(1.00000001e-07, -r11.w);
              r11.w = r13.x / r11.w;
              r11.z = min(r11.z, abs(r11.w));
              r35.z = r36.x;
              r11.w = dot(r9.xyz, r35.xyz);
              r13.x = dot(r12.xyz, r35.xyz);
              r13.x = r13.x + -r36.y;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r5.w);
              r13.x = r13.w ? r13.x : -r13.x;
              r11.w = max(1.00000001e-07, -r11.w);
              r11.w = r13.x / r11.w;
              r11.z = min(r11.z, abs(r11.w));
              r37.zw = r36.zw;
              r11.w = dot(r9.zxy, r37.xzw);
              r13.x = dot(r12.zxy, r37.xzw);
              r13.x = r13.x + -r37.y;
              r13.w = cmp(r13.x >= 0);
              r13.x = max(abs(r13.x), r5.w);
              r13.x = r13.w ? r13.x : -r13.x;
              r11.w = max(1.00000001e-07, -r11.w);
              r11.w = r13.x / r11.w;
              r11.z = min(r11.z, abs(r11.w));
              r25.x = r29.w;
              r25.yz = r30.zw;
              r15.yzw = r25.xyz + r12.xyz;
              r15.yzw = r9.xyz * r11.zzz + r15.yzw;
              r11.w = dot(r15.yzw, r15.yzw);
              r11.w = sqrt(r11.w);
              r11.z = r11.z / r11.w;
              r11.z = r11.z + r11.z;
              r11.z = sqrt(r11.z);
              r11.z = r4.w * 5 + r11.z;
              r11.z = -0.844799995 + r11.z;
              r24.y = r27.z;
              r24.z = r28.x;
              r32.x = dot(r15.yzw, r24.xyz);
              r25.xy = r27.xw;
              r25.z = r28.w;
              r32.y = dot(r15.yzw, r25.xyz);
              r28.x = r27.y;
              r32.z = dot(r15.yzw, r28.xyz);
              if (9 == 0) r11.w = 0; else if (9+16 < 32) {               r11.w = (uint)r25.w << (32-(9 + 16)); r11.w = (uint)r11.w >> (32-9);              } else r11.w = (uint)r25.w >> 16;
              r32.w = (uint)r11.w;
              r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r11.z).xyz;
              r26.xzw = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
              r26.xzw = cmp((int3)r26.xzw == int3(2139095040,2139095040,2139095040));
              r11.z = (int)r26.z | (int)r26.x;
              r11.z = (int)r26.w | (int)r11.z;
              r15.yzw = r11.zzz ? float3(1,1,0) : r15.yzw;
              r27.x = dot(r12.xyz, r24.xyz);
              r27.y = dot(r12.xyz, r25.xyz);
              r27.z = dot(r12.xyz, r28.xyz);
              r12.xyz = saturate(r27.xyz * r29.xyz + float3(0.5,0.5,0.5));
              r30.z = r31.x;
              r12.xyz = r12.xyz * r30.xyz + r31.yzw;
              r32.x = dot(v3.xyz, r24.xyz);
              r32.y = dot(v3.xyz, r25.xyz);
              r32.z = dot(v3.xyz, r28.xyz);
              r24.xyz = cmp(float3(0,0,0) < r32.xyz);
              r14.z = r24.x ? 0 : 0.5;
              r25.xyz = r14.xyz + r12.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r26.xzw = r32.xyz * r32.xyz;
              r26.xzw = r26.xzw * r10.www;
              r16.z = r24.y ? 0 : 0.5;
              r24.xyw = r16.xyz + r12.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r26.zzz;
              r24.xyw = r25.xyz * r26.xxx + r24.xyw;
              r19.z = r24.z ? 0 : 0.5;
              r12.xyz = r19.xyz + r12.xyz;
              r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
              r12.xyz = r12.xyz * r26.www + r24.xyw;
              r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
              r25.xyz = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
              r25.xyz = cmp((int3)r25.xyz == int3(2139095040,2139095040,2139095040));
              r11.z = (int)r25.y | (int)r25.x;
              r11.z = (int)r25.z | (int)r11.z;
              r24.xyz = r11.zzz ? float3(1,1,0) : r24.xyz;
              r25.xyz = r24.xyz * r12.xyz;
              r11.z = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r22.xyz = r12.xyz * r24.xyz + r22.xyz;
              r11.w = r11.z * r6.w;
              r12.xyz = r15.yzw * r10.www;
              r10.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r10.w = r6.w * r11.z + r10.w;
              r10.w = r11.w / r10.w;
              r24.x = r22.w;
              r24.yz = r23.xy;
              r23.xyw = r12.yzx * r10.www + r24.yzx;
              r22.w = r23.w;
            }
          }
        }
      }
      r20.xyzw = r22.xyzw;
      r21.yzw = r23.xyz;
      r7.w = (int)r7.w + 32;
    }
    r7.y = cmp(r21.w < 1);
    if (r7.y != 0) {
      r11.xy = float2(0,0);
      r12.w = 0;
      r13.yz = float2(0,1);
      r14.xy = float2(0,0);
      r15.x = 1;
      r16.xy = float2(0,0);
      r19.xy = float2(0,0);
      r22.x = r20.w;
      r22.yzw = r21.yzw;
      r7.yzw = r20.xyz;
      r8.y = r21.w;
      r8.z = 0;
      while (true) {
        r8.w = cmp((uint)r8.z >= (uint)r2.w);
        if (r8.w != 0) break;
        r11.z = (uint)r8.z >> 5;
        r12.xyz = (int3)r10.xyz + (int3)r11.xyz;
        r8.w = visibleProbes.Load(r12.xyzw).x;
        r10.w = cmp((int)r4.x == (int)r8.z);
        if (r4.y == 0) r11.z = 0; else if (r4.y+0 < 32) {         r11.z = (uint)r8.w << (32-(r4.y + 0)); r11.z = (uint)r11.z >> (32-r4.y);        } else r11.z = (uint)r8.w >> 0;
        r8.w = r10.w ? r11.z : r8.w;
        r10.w = (int)r8.z + numLights;
        r23.xyzw = r22.xyzw;
        r12.xyz = r7.yzw;
        r11.z = r8.y;
        r11.w = r8.w;
        while (true) {
          if (r11.w == 0) break;
          r13.w = firstbitlow((uint)r11.w);
          r14.w = 1 << (int)r13.w;
          r15.z = (int)r11.w & (int)r14.w;
          if (r15.z != 0) {
            r11.w = (int)r11.w ^ (int)r14.w;
            r14.w = (int)r10.w + (int)r13.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r14.w, l(0), t11.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r14.w, l(16), t11.xyxx
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
            r24.xyz = -v6.xyz + r24.xyz;
            r25.z = r24.w;
            r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
            r14.w = r24.y ? r24.x : 0;
            r14.w = r24.z ? r14.w : 0;
            if (r14.w != 0) {
              r13.w = (int)r8.z + (int)r13.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.w, l(0), t15.wxyz
            r24.x = samp0[]..swiz;
            r24.y = samp0[]..swiz;
            r24.z = samp0[]..swiz;
            r24.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.zw, r13.w, l(96), t15.xxxy
            r15.z = samp0[]..swiz;
            r15.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r13.w, l(116), t15.zwxy
            r25.x = samp0[]..swiz;
            r25.y = samp0[]..swiz;
            r25.z = samp0[]..swiz;
            r25.w = samp0[]..swiz;
              r26.xyz = v6.xyz + -r24.yzw;
              r14.w = (int)r25.w & 0x0000ffff;
              if (6 == 0) r16.w = 0; else if (6+25 < 32) {               r16.w = (uint)r25.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);              } else r16.w = (uint)r25.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(0), t16.xyzw
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(16), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(32), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(48), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(64), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(80), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
              r18.w = dot(r27.xyz, r26.xyz);
              r18.w = saturate(r18.w + r27.w);
              r19.w = dot(r28.xyz, r26.xyz);
              r19.w = saturate(r19.w + r28.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r29.xyz, r26.xyz);
              r19.w = saturate(r19.w + r29.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r30.xyz, r26.xyz);
              r19.w = saturate(r19.w + r30.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r31.xyz, r26.xyz);
              r19.w = saturate(r19.w + r31.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r32.xyz, r26.xyz);
              r19.w = saturate(r19.w + r32.w);
              r13.x = r19.w * r18.w;
              r18.w = (int)r15.z & 1;
              r27.xy = r18.ww ? r13.xy : r13.zx;
              r13.x = r15.z;
              r28.xy = r27.xy;
              r18.w = 1;
              while (true) {
                r19.w = cmp((int)r18.w >= (int)r16.w);
                if (r19.w != 0) break;
                r19.w = (int)r14.w + (int)r18.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(0), t16.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(16), t16.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(32), t16.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(48), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(64), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(80), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
                r19.w = dot(r29.xyz, r26.xyz);
                r19.w = saturate(r19.w + r29.w);
                r19.w = r28.x * r19.w;
                r24.w = dot(r30.xyz, r26.xyz);
                r24.w = saturate(r24.w + r30.w);
                r19.w = r24.w * r19.w;
                r24.w = dot(r31.xyz, r26.xyz);
                r24.w = saturate(r24.w + r31.w);
                r19.w = r24.w * r19.w;
                r24.w = dot(r32.xyz, r26.xyz);
                r24.w = saturate(r24.w + r32.w);
                r19.w = r24.w * r19.w;
                r24.w = dot(r33.xyz, r26.xyz);
                r24.w = saturate(r24.w + r33.w);
                r19.w = r24.w * r19.w;
                r24.w = dot(r34.xyz, r26.xyz);
                r24.w = saturate(r24.w + r34.w);
                r28.x = r24.w * r19.w;
                r26.w = (uint)r13.x >> 2;
                if (1 == 0) r27.z = 0; else if (1+2 < 32) {                 r27.z = (uint)r13.x << (32-(1 + 2)); r27.z = (uint)r27.z >> (32-1);                } else r27.z = (uint)r13.x >> 2;
                r27.w = (int)r26.w & 2;
                r28.z = max(r28.y, r28.x);
                r19.w = -r19.w * r24.w + 1;
                r19.w = r28.y * r19.w;
                r15.y = r27.w ? r19.w : r28.z;
                r28.xy = r27.zz ? r28.xy : r15.xy;
                r18.w = (int)r18.w + 1;
                r13.x = r26.w;
              }
              r13.x = saturate(r28.y + -r11.z);
              r14.w = r13.x * r15.w;
              r15.y = cmp(0 < r14.w);
              if (r15.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.w, l(16), t15.xyzw
              r27.x = samp0[]..swiz;
              r27.y = samp0[]..swiz;
              r27.z = samp0[]..swiz;
              r27.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(32), t15.yxwz
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(48), t15.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(64), t15.zwxy
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(80), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(132), t15.zwxy
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(148), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(164), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(180), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(196), t15.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r13.w, l(212), t15.xyxx
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
                r23.w = r13.x * r15.w + r23.w;
                r13.x = r14.w * r25.z;
                r25.z = r33.z;
                r13.w = dot(r9.xyz, r25.xyz);
                r14.w = dot(r26.xyz, r25.xyz);
                r14.w = r14.w + -r33.w;
                r15.y = cmp(r14.w >= 0);
                r14.w = max(abs(r14.w), r5.w);
                r14.w = r15.y ? r14.w : -r14.w;
                r13.w = max(1.00000001e-07, -r13.w);
                r13.w = r14.w / r13.w;
                r13.w = min(131072, abs(r13.w));
                r33.z = r34.z;
                r14.w = dot(r9.xyz, r33.xyz);
                r15.y = dot(r26.xyz, r33.xyz);
                r15.y = r15.y + -r34.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r5.w);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r34.z = r35.z;
                r14.w = dot(r9.xyz, r34.xyz);
                r15.y = dot(r26.xyz, r34.xyz);
                r15.y = r15.y + -r35.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r5.w);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r35.z = r36.z;
                r14.w = dot(r9.xyz, r35.xyz);
                r15.y = dot(r26.xyz, r35.xyz);
                r15.y = r15.y + -r36.w;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r5.w);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r36.z = r37.x;
                r14.w = dot(r9.xyz, r36.xyz);
                r15.y = dot(r26.xyz, r36.xyz);
                r15.y = r15.y + -r37.y;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r5.w);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r38.zw = r37.zw;
                r14.w = dot(r9.zxy, r38.xzw);
                r15.y = dot(r26.zxy, r38.xzw);
                r15.y = r15.y + -r38.y;
                r15.z = cmp(r15.y >= 0);
                r15.y = max(abs(r15.y), r5.w);
                r15.y = r15.z ? r15.y : -r15.y;
                r14.w = max(1.00000001e-07, -r14.w);
                r14.w = r15.y / r14.w;
                r13.w = min(abs(r14.w), r13.w);
                r25.x = r30.w;
                r25.yz = r31.zw;
                r15.yzw = r25.xyz + r26.xyz;
                r15.yzw = r9.xyz * r13.www + r15.yzw;
                r14.w = dot(r15.yzw, r15.yzw);
                r14.w = sqrt(r14.w);
                r13.w = r13.w / r14.w;
                r13.w = r13.w + r13.w;
                r13.w = sqrt(r13.w);
                r13.w = r4.w * 5 + r13.w;
                r13.w = -0.844799995 + r13.w;
                r24.y = r27.z;
                r24.z = r29.x;
                r33.x = dot(r15.yzw, r24.xyz);
                r25.xy = r27.xw;
                r25.z = r29.w;
                r33.y = dot(r15.yzw, r25.xyz);
                r29.x = r27.y;
                r33.z = dot(r15.yzw, r29.xyz);
                if (9 == 0) r14.w = 0; else if (9+16 < 32) {                 r14.w = (uint)r25.w << (32-(9 + 16)); r14.w = (uint)r14.w >> (32-9);                } else r14.w = (uint)r25.w >> 16;
                r33.w = (uint)r14.w;
                r15.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r13.w).xyz;
                r27.xyz = (int3)r15.yzw & int3(-2147483648,-2147483648,-2147483648);
                r27.xyz = cmp((int3)r27.xyz == int3(2139095040,2139095040,2139095040));
                r13.w = (int)r27.y | (int)r27.x;
                r13.w = (int)r27.z | (int)r13.w;
                r15.yzw = r13.www ? float3(1,1,0) : r15.yzw;
                r27.x = dot(r26.xyz, r24.xyz);
                r27.y = dot(r26.xyz, r25.xyz);
                r27.z = dot(r26.xyz, r29.xyz);
                r26.xyz = saturate(r27.xyz * r30.xyz + float3(0.5,0.5,0.5));
                r31.z = r32.x;
                r26.xyz = r26.xyz * r31.xyz + r32.yzw;
                r33.x = dot(v3.xyz, r24.xyz);
                r33.y = dot(v3.xyz, r25.xyz);
                r33.z = dot(v3.xyz, r29.xyz);
                r24.xyz = cmp(float3(0,0,0) < r33.xyz);
                r14.z = r24.x ? 0 : 0.5;
                r25.xyz = r26.xyz + r14.xyz;
                r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r27.xyz = r33.xyz * r33.xyz;
                r27.xyz = r27.xyz * r13.xxx;
                r16.z = r24.y ? 0 : 0.5;
                r24.xyw = r26.xyz + r16.xyz;
                r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
                r24.xyw = r24.xyw * r27.yyy;
                r24.xyw = r25.xyz * r27.xxx + r24.xyw;
                r19.z = r24.z ? 0 : 0.5;
                r25.xyz = r26.xyz + r19.xyz;
                r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
                r24.xyz = r25.xyz * r27.zzz + r24.xyw;
                r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
                r26.xyz = (int3)r25.xyz & int3(-2147483648,-2147483648,-2147483648);
                r26.xyz = cmp((int3)r26.xyz == int3(2139095040,2139095040,2139095040));
                r13.w = (int)r26.y | (int)r26.x;
                r13.w = (int)r26.z | (int)r13.w;
                r25.xyz = r13.www ? float3(1,1,0) : r25.xyz;
                r26.xyz = r25.xyz * r24.xyz;
                r13.w = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r12.xyz = r24.xyz * r25.xyz + r12.xyz;
                r14.z = r13.w * r6.w;
                r15.yzw = r15.yzw * r13.xxx;
                r13.x = dot(r15.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r13.x = r6.w * r13.w + r13.x;
                r13.x = r14.z / r13.x;
                r23.xyz = r15.yzw * r13.xxx + r23.xyz;
              }
            }
          }
        }
        r22.xyzw = r23.xyzw;
        r7.yzw = r12.xyz;
        r8.z = (int)r8.z + 32;
      }
      r21.xyzw = r22.zxyw;
      r20.xyz = r7.yzw;
      r21.xyzw = r21.yzxw;
    } else {
      r21.x = r20.w;
    }
    r2.w = max(1, r21.w);
    r2.w = rcp(r2.w);
    r21.w = saturate(r21.w);
    r17.xyz = r20.xyz * r2.www;
    r18.xyz = r21.xyz * r2.www;
    r4.x = cmp(r21.w < 0.99000001);
    if (r4.x != 0) {
      r4.x = 1 + -r21.w;
      r4.y = sunConstants.globalProbeExposure * r4.x;
      r7.yzw = -globalProbeConstants.data[0].xyz + v6.xyz;
      r11.x = globalProbeConstants.data[0].w * r7.y;
      r11.yz = globalProbeConstants.data[1].xy * r7.zw;
      r7.yzw = saturate(float3(0.5,0.5,0.5) + r11.xyz);
      r11.xy = globalProbeConstants.data[1].zw * r7.yz;
      r11.z = globalProbeConstants.data[2].x * r7.w;
      r7.yzw = globalProbeConstants.data[2].yzw + r11.xyz;
      r8.yzw = cmp(float3(0,0,0) < v3.xyz);
      r11.xyz = r8.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r11.w = 0;
      r8.yzw = r11.wwx + r7.yzw;
      r8.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r8.yzw, 0).xyz;
      r12.xyz = v3.xyz * v3.xyz;
      r12.xyz = r12.xyz * r4.yyy;
      r13.xyz = r11.wwy + r7.yzw;
      r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
      r13.xyz = r13.xyz * r12.yyy;
      r8.yzw = r8.yzw * r12.xxx + r13.xyz;
      r7.yzw = r11.wwz + r7.yzw;
      r7.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r7.yzw, 0).xyz;
      r7.yzw = r7.yzw * r12.zzz + r8.yzw;
      r11.xyz = v3.xyz;
      r11.w = 0;
      r8.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, 6).xyz;
      r7.yzw = r8.yzw * r7.yzw;
      r4.y = dot(r7.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r17.xyz = r20.xyz * r2.www + r7.yzw;
      r9.w = 0;
      r7.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r9.xyzw, r5.z).xyz;
      r2.w = sunConstants.globalProbeExposure * r4.x + -r4.y;
      r2.w = r2.y * r2.w + r4.y;
      r18.xyz = r7.yzw * r2.www + r18.xyz;
    }
  } else {
    r18.x = r17.w;
  }
  r2.yw = r2.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r2.yw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r2.yw, 0).xy;
  r11.xyz = r18.yzx * r2.yyy;
  r4.xyw = r18.xyz * r2.www;
  r2.y = sqrt(r4.z);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * r2.y;
  r2.w = 0.5 * r2.y;
  r2.y = -r2.y * 0.5 + 1;
  r5.z = r2.x * r2.y + r2.w;
  r2.yw = r5.zz * r2.yw;
  if (noReceiveShadow == 0) {
    r5.z = dot(v3.xyz, sunConstants.wldDir.xyz);
    r5.z = cmp(0 >= abs(r5.z));
    if (r5.z != 0) {
      r5.w = 0;
    }
    if (r5.z == 0) {
      r7.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
      r7.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r7.yzw;
      r7.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r7.yzw;
      r7.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r7.yzw;
      r5.z = -sunConstants.splitDepthOffset + r7.w;
      r5.z = -r5.z * 6.10351563e-05 + 1;
      r6.w = saturate(r5.z);
      r6.w = cmp(r5.z == r6.w);
      if (r6.w != 0) {
        r6.w = 0;
        r8.y = 0;
        while (true) {
          r8.z = cmp(r6.w >= 3);
          if (r8.z != 0) break;
          r8.z = (uint)r6.w;
          r12.xy = -sunConstants.splitPinTransform[r8.z].xy + r7.yz;
          r8.w = max(abs(r12.x), abs(r12.y));
          r8.y = sunConstants.splitPinTransform[r8.z].z * r8.w;
          r8.z = cmp(r8.y < 1);
          if (r8.z != 0) {
            break;
          }
          r6.w = 1 + r6.w;
          r8.y = 0;
        }
      } else {
        r6.w = 3;
        r8.y = 0;
      }
      r8.z = cmp(r6.w >= 3);
      if (r8.z != 0) {
        r12.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
        r13.xz = rcp(r12.xx);
        r13.y = -r13.z;
        r12.xyz = r7.yzy * r13.xyz + r12.yzy;
        r13.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
        r12.xyz = max(float3(0,0,0), r12.xyz);
        r12.xyz = min(r12.xyz, r13.xyz);
        r13.xy = sunConstants.sstLightingConstants.coordScale * r12.zy;
        r13.xy = floor(r13.xy);
        r8.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.y;
        r8.w = r8.w * sunConstants.sstLightingConstants.coordScale + r13.x;
        r8.w = (uint)r8.w;
        r8.w = (int)r8.w + (int10)sunConstants.sstLightingConstants.rootOffset;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r8.w, l(0), t23.xxxx
      r9.w = samp0[]..swiz;
        r10.w = (int)r9.w & 0x40000000;
        r12.w = (uint)r9.w << 2;
        if (r10.w == 0) {
          r10.w = (int)r9.w & 0x01ffffff;
          r13.x = (int)r8.w + (int)r10.w;
          r8.w = (uint)r9.w >> 25;
          r8.w = (uint)r8.w;
          r12.xyz = r12.xyz * r8.www;
          r12.xyz = frac(r12.xyz);
          r12.xyz = float3(128,128,128) * r12.xyz;
          r12.xyz = (uint3)r12.xyz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r14.xy = (uint2)r12.zy >> int2(6,6);
          r8.w = (int)r13.z & 0xc0000000;
          r9.w = (int)r13.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
        r9.w = samp0[]..swiz;
          r9.w = r14.y ? r13.z : r9.w;
          r10.w = (uint)r9.w >> 13;
          r9.w = r14.x ? r10.w : r9.w;
          r9.w = (int)r9.w & 8191;
          r14.x = (int)r9.w + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r13.y = 0;
          r14.y = 1;
          r14.xyz = r8.www ? r13.xyz : r14.xyz;
          r15.yz = r8.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
          r16.xy = (uint2)r12.zy >> (uint2)r15.yy;
          r16.xy = (int2)r16.xy & int2(1,1);
          r9.w = (int)r14.z & 0xc0000000;
          r10.w = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
        r10.w = samp0[]..swiz;
          r10.w = r16.y ? r14.z : r10.w;
          r13.w = (uint)r10.w >> 13;
          r10.w = r16.x ? r13.w : r10.w;
          r10.w = (int)r10.w & 8191;
          r15.x = (int)r10.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r14.xyz = r9.www ? r14.xyz : r15.xzw;
          r13.xyz = r8.www ? r13.xyz : r14.xyz;
          r8.w = (int)r13.z & 0xc0000000;
          if (r8.w == 0) {
            r8.w = (int)-r13.y + 6;
            r14.xy = (uint2)r12.zy >> (uint2)r8.ww;
            r8.w = (int)r13.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.w = (((uint)r14.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.w = (((uint)r14.x << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
            r9.w = (int)r9.w * 10;
            r8.w = (uint)r8.w >> (uint)r9.w;
            r8.w = (int)r8.w & 1023;
            r14.x = (int)r8.w + (int)r13.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
          r14.w = samp0[]..swiz;
            r14.yz = (int2)r13.yy + int2(1,2);
            r8.w = (int)-r14.y + 6;
            r13.yw = (uint2)r12.zy >> (uint2)r8.ww;
            r8.w = (int)r14.w & 0xc0000000;
            r9.w = (int)r14.w | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r13.y << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
            r10.w = (int)r10.w * 10;
            r9.w = (uint)r9.w >> (uint)r10.w;
            r9.w = (int)r9.w & 1023;
            r15.x = (int)r9.w + (int)r14.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
          r15.z = samp0[]..swiz;
            r15.y = r14.z;
            r15.xyz = r8.www ? r14.xyw : r15.xyz;
            r9.w = (int)-r15.y + 6;
            r13.yw = (uint2)r12.zy >> (uint2)r9.ww;
            r9.w = (int)r15.z & 0xc0000000;
            r10.w = (int)r15.z | 0x40000000;
            bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r13.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
            bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.y = (((uint)r13.y << 0) & bitmask.y) | ((uint)r13.w & ~bitmask.y);
            r13.y = (int)r13.y * 10;
            r10.w = (uint)r10.w >> (uint)r13.y;
            r10.w = (int)r10.w & 1023;
            r16.x = (int)r10.w + (int)r15.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
          r16.y = samp0[]..swiz;
            r13.yw = r9.ww ? r15.xz : r16.xy;
            r13.xz = r8.ww ? r14.xw : r13.yw;
          }
          r8.w = (int)r13.z & 0xc0000000;
          if (r8.w == 0) {
            if (14 == 0) r9.w = 0; else if (14+15 < 32) {             r9.w = (uint)r13.z << (32-(14 + 15)); r9.w = (uint)r9.w >> (32-14);            } else r9.w = (uint)r13.z >> 15;
            r9.w = (uint)r9.w;
            r9.w = sunConstants.sstLightingConstants.constants.spanInInches * r9.w;
            r9.w = 6.10388815e-05 * r9.w;
            r13.yw = (int2)r13.zz & int2(32767,536870912);
            r10.w = (uint)r13.y;
            r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
            r10.w = 3.05185094e-05 * r10.w;
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
            r12.x = r12.x * r10.w;
            r12.x = r12.x * 0.00392156886 + r9.w;
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
            r10.w = r12.y * r10.w;
            r9.w = r10.w * 1.52590219e-05 + r9.w;
            r12.w = r13.w ? r12.x : r9.w;
          } else {
            r9.w = (int)r13.z & 0x80000000;
            r10.w = (int)r13.x + 1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
          r10.w = samp0[]..swiz;
            r9.w = r9.w ? r10.w : 0;
            r10.w = (uint)r13.z << 2;
            r12.x = (uint)r9.w >> 16;
            r12.x = f16tof32(r12.x);
            r9.w = (int)r9.w & 0x0000ffff;
            r9.w = f16tof32(r9.w);
            r10.w = r7.y * r12.x + r10.w;
            r9.w = r7.z * r9.w + r10.w;
            r12.w = r8.w ? r9.w : r12.w;
          }
        }
        r7.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r7.w;
        r7.w = cmp(r12.w < r7.w);
        r5.w = r7.w ? 0 : 1;
      }
      if (r8.z == 0) {
        if (enableDitheredShadow == 0) {
          r7.w = (uint)r6.w;
          r8.zw = -sunConstants.splitPinTransform[r7.w].xy + r7.yz;
          r8.zw = sunConstants.splitPinTransform[r7.w].zz * r8.zw;
          r12.xy = r8.zw * float2(0.5,-0.5) + float2(0.5,0.5);
          r7.w = (int16)sunConstants.splitArrayOffset;
          r12.z = r7.w + r6.w;
          r7.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r5.z).x;
          r8.z = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
          r7.w = r8.z + r7.w;
          r7.w = saturate(-1 + r7.w);
          r8.z = r7.w * r7.w;
          r5.w = r8.z * r7.w;
        }
        if (enableDitheredShadow != 0) {
          r12.x = -r5.x;
          r7.w = (uint)r6.w;
          r6.w = 1 + r6.w;
          r6.w = min(2, r6.w);
          r6.w = (uint)r6.w;
          r8.y = 1 + -r8.y;
          r8.y = 28 * r8.y;
          r8.y = (uint)r8.y;
          r8.zw = -sunConstants.splitPinTransform[r7.w].xy + r7.yz;
          r8.zw = sunConstants.splitPinTransform[r7.w].zz * r8.zw;
          r8.zw = r8.zw * float2(0.5,-0.5) + float2(0.5,0.5);
          r7.yz = -sunConstants.splitPinTransform[r6.w].xy + r7.yz;
          r7.yz = sunConstants.splitPinTransform[r6.w].zz * r7.yz;
          r7.yz = r7.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r12.y = r6.x;
          r12.z = r5.x;
          r9.w = 0;
          r10.w = 0;
          while (true) {
            r12.w = cmp((uint)r10.w >= 8);
            if (r12.w != 0) break;
            r12.w = cmp((uint)r8.y < (uint)r10.w);
            r13.xy = r12.ww ? r7.yz : r8.zw;
            r13.z = r12.w ? sunConstants.splitPinTransform[r6.w].w : sunConstants.splitPinTransform[r7.w].w;
            r12.w = r12.w ? r6.w : r7.w;
            r14.x = dot(icb[r10.w+0].yx, r12.xy);
            r14.y = dot(icb[r10.w+0].yx, r12.yz);
            r13.xy = r14.xy * r13.zz + r13.xy;
            r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
            r13.z = (uint)r12.w;
            r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r5.z).x;
            r13.x = gTransShadowmapArray.SampleLevel(samp0_s, r13.xyz, 0).x;
            r12.w = r13.x + r12.w;
            r12.w = saturate(-1 + r12.w);
            r9.w = r12.w * 0.125 + r9.w;
            r10.w = (int)r10.w + 1;
          }
          r5.z = r9.w * r9.w;
          r5.w = r5.z * r9.w;
        }
      }
    }
  } else {
    r5.w = 1;
  }
  r5.z = dot(v3.xyz, sunConstants.wldDir.xyz);
  r6.w = cmp(0 < abs(r5.z));
  if (r6.w != 0) {
    r6.w = cmp(0 < r5.w);
    if (r6.w != 0) {
      r6.w = sunConstants.specScale * r2.z;
      r6.w = 0.25 * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r12.xyz = eyeOffset.xyz + v6.xyz;
        r12.w = 1;
        r7.y = dot(sunConstants.sunCookieTransform[0].xyzw, r12.xyzw);
        r7.z = dot(sunConstants.sunCookieTransform[1].xyzw, r12.xyzw);
        r12.xy = frac(r7.yz);
        r7.y = -1 + (int14)sunConstants.sunCookieIndex;
        r12.z = (uint)r7.y;
        r7.yzw = gCookieArray.SampleLevel(samplerLinear_s, r12.xyz, 0).xyz;
        r7.yzw = float3(-1,-1,-1) + r7.yzw;
        r7.yzw = sunConstants.sunCookieIntensity * r7.yzw + float3(1,1,1);
        r7.yzw = sunConstants.color.xyz * r7.yzw;
      } else {
        r7.yzw = sunConstants.color.xyz;
      }
      if (noReceiveShadow == 0) {
        r8.y = viewmodelSunShadowRaw >> 16;
        r8.z = cmp(0 < (uint)r8.y);
        r8.z = r0.w ? r8.z : 0;
        if (r8.z != 0) {
          r8.y = (int)r8.y + numLights;
          r8.y = (int)r8.y + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r8.y, l(52), t12.xxxx
        r8.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r8.y, l(68), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r8.y, l(84), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r8.y, l(132), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.y, l(148), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
          r8.w = abs(r5.z) * -0.200000003 + 0.400000006;
          r9.w = cmp(r5.z < 0);
          r8.w = r9.w ? -r8.w : r8.w;
          r16.xyz = v3.xyz * r8.www + v6.xyz;
          r16.w = 1;
          r12.x = dot(r12.xyzw, r16.xyzw);
          r12.y = dot(r13.xyzw, r16.xyzw);
          r12.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r12.xy = r12.xy + r15.zw;
          r12.xy = r12.xy * r15.xy;
          r12.zw = r8.zz / r14.xz;
          r13.xy = float2(1,1) + -r12.zw;
          r13.xy = cmp(r12.xy >= r13.xy);
          r12.zw = cmp(r12.zw >= r12.xy);
          r12.zw = (int2)r12.zw | (int2)r13.xy;
          r8.w = (int)r12.w | (int)r12.z;
          if (r8.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.y, l(28), t12.xxxx
          r8.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r8.y, l(100), t12.xyzw
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.zw, r8.y, l(164), t12.xxxy
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
            r8.y = dot(r13.xyzw, r16.xyzw);
            r12.xy = saturate(r12.xy);
            r13.xy = r12.xy * r14.xz + r14.yw;
            r8.y = r8.y + r12.z;
            r8.y = r8.y / r12.w;
            r8.y = max(6.10351563e-05, r8.y);
            r8.w = (int)r8.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r12.x = -r5.x;
              r14.z = (uint)r8.w;
              r12.y = r6.x;
              r12.z = r5.x;
              r9.w = 0;
              r10.w = 0;
              while (true) {
                r12.w = cmp((int)r10.w >= 8);
                if (r12.w != 0) break;
                r15.x = dot(icb[r10.w+0].yx, r12.xy);
                r15.y = dot(icb[r10.w+0].yx, r12.yz);
                r14.xy = r15.xy * r8.zz + r13.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r8.y).x;
                r9.w = r12.w * 0.125 + r9.w;
                r10.w = (int)r10.w + 1;
              }
            } else {
              r13.z = (uint)r8.w;
              r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r8.y).x;
            }
            r8.y = r9.w * r9.w;
            r8.y = r8.y * r9.w;
          } else {
            r8.y = 1;
          }
          r5.w = r8.y * r5.w;
        } else {
          r8.y = viewmodelSunShadowRaw & 0x0000ffff;
          r8.z = cmp(0 < (uint)r8.y);
          r8.w = ~(int)r0.w;
          r8.z = r8.z ? r8.w : 0;
          if (r8.z != 0) {
            r8.y = (int)r8.y + numLights;
            r8.y = (int)r8.y + -1;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.z, r8.y, l(52), t12.xxxx
          r8.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r8.y, l(68), t12.xyzw
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r8.y, l(84), t12.xyzw
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r8.y, l(132), t12.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.y, l(148), t12.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
            r8.w = abs(r5.z) * -0.200000003 + 0.400000006;
            r9.w = cmp(r5.z < 0);
            r8.w = r9.w ? -r8.w : r8.w;
            r16.xyz = v3.xyz * r8.www + v6.xyz;
            r16.w = 1;
            r12.x = dot(r12.xyzw, r16.xyzw);
            r12.y = dot(r13.xyzw, r16.xyzw);
            r12.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
            r12.xy = r12.xy + r15.zw;
            r12.xy = r12.xy * r15.xy;
            r12.zw = r8.zz / r14.xz;
            r13.xy = float2(1,1) + -r12.zw;
            r13.xy = cmp(r12.xy >= r13.xy);
            r12.zw = cmp(r12.zw >= r12.xy);
            r12.zw = (int2)r12.zw | (int2)r13.xy;
            r8.w = (int)r12.w | (int)r12.z;
            if (r8.w == 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.y, l(28), t12.xxxx
            r8.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r8.y, l(100), t12.xyzw
            r13.x = samp0[]..swiz;
            r13.y = samp0[]..swiz;
            r13.z = samp0[]..swiz;
            r13.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.zw, r8.y, l(164), t12.xxxy
            r12.z = samp0[]..swiz;
            r12.w = samp0[]..swiz;
              r8.y = dot(r13.xyzw, r16.xyzw);
              r12.xy = saturate(r12.xy);
              r13.xy = r12.xy * r14.xz + r14.yw;
              r8.y = r8.y + r12.z;
              r8.y = r8.y / r12.w;
              r8.y = max(6.10351563e-05, r8.y);
              r8.w = (int)r8.w & 0x0000ffff;
              if (enableDitheredShadow != 0) {
                r12.x = -r5.x;
                r14.z = (uint)r8.w;
                r12.y = r6.x;
                r12.z = r5.x;
                r9.w = 0;
                r10.w = 0;
                while (true) {
                  r12.w = cmp((int)r10.w >= 8);
                  if (r12.w != 0) break;
                  r15.x = dot(icb[r10.w+0].yx, r12.xy);
                  r15.y = dot(icb[r10.w+0].yx, r12.yz);
                  r14.xy = r15.xy * r8.zz + r13.xy;
                  r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r8.y).x;
                  r9.w = r12.w * 0.125 + r9.w;
                  r10.w = (int)r10.w + 1;
                }
              } else {
                r13.z = (uint)r8.w;
                r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r8.y).x;
              }
              r8.y = r9.w * r9.w;
              r8.y = r8.y * r9.w;
            } else {
              r8.y = 1;
            }
            r5.w = r8.y * r5.w;
          }
        }
      }
      r8.y = -r2.x * 0.5 + 1;
      r8.y = -abs(r5.z) * r8.y + 1;
      r8.y = r8.y * r8.y;
      r8.y = -r8.y * 0.620000005 + 0.620000005;
      r8.y = r8.y + -abs(r5.z);
      r8.y = r4.z * r8.y + abs(r5.z);
      r8.y = r8.y * r5.w;
      r8.z = cmp(0 < r5.z);
      r12.xyz = r8.yyy * r7.yzw + r17.xyz;
      r5.z = saturate(r5.z);
      r13.xyz = -v6.xyz * r1.xxx + sunConstants.wldDir.xyz;
      r1.x = dot(r13.xyz, r13.xyz);
      r1.x = rsqrt(r1.x);
      r13.xyz = r13.xyz * r1.xxx;
      r1.x = dot(r13.xyz, r1.yzw);
      r8.y = dot(v3.xyz, r13.xyz);
      r8.w = abs(r8.y) * r2.z + -abs(r8.y);
      r8.y = abs(r8.y) * r8.w + 1;
      r8.w = r5.z * r2.y + r2.w;
      r8.y = r8.y * r8.y;
      r8.y = r8.y * r8.w;
      r8.y = rcp(r8.y);
      r5.z = r5.z * r6.w;
      r5.z = r8.y * r5.z;
      r5.z = r5.z * r5.w;
      r13.xyz = r5.zzz * r7.yzw + r4.xyw;
      r1.x = saturate(1 + -r1.x);
      r5.w = r1.x * r1.x;
      r5.w = r5.w * r5.w;
      r1.x = r5.w * r1.x;
      r1.x = r5.z * r1.x;
      r14.xyz = r1.xxx * r7.zwy + r11.xyz;
      r12.w = r14.z;
      r17.w = r11.z;
      r17.xyzw = r8.zzzz ? r12.xyzw : r17.xyzw;
      r14.zw = r13.xy;
      r11.zw = r4.xy;
      r12.xyzw = r8.zzzz ? r14.xyzw : r11.xyzw;
      r4.w = r8.z ? r13.z : r4.w;
      r11.z = r17.w;
      r11.xy = r12.xy;
      r4.xy = r12.zw;
    }
  }
  r12.x = -r5.x;
  r1.x = ~(int)r0.w;
  r2.x = -r2.x * 0.5 + 1;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.xyz = v6.xyz;
  r15.w = 1;
  r16.w = 1;
  r12.z = r5.x;
  r18.w = 1;
  r19.z = 1;
  r20.w = 1;
  r12.yw = r6.xx;
  r5.y = r12.w;
  r21.w = 1;
  r6.y = r12.x;
  r6.z = r5.x;
  r22.w = 1;
  r23.x = r6.x;
  r23.y = r12.x;
  r23.z = r5.x;
  r24.x = r6.x;
  r24.y = r12.x;
  r24.z = r5.x;
  r25.x = r6.x;
  r25.y = r12.x;
  r25.z = r5.x;
  r7.yzw = r17.xyz;
  r26.xyz = r11.zxy;
  r27.xyz = r4.xyw;
  r5.z = enableDitheredShadow;
  r5.w = 0;
  while (true) {
    r6.w = cmp((uint)r5.w >= numLights);
    if (r6.w != 0) break;
    r13.z = (uint)r5.w >> 5;
    r14.xyz = (int3)r10.xyz + (int3)r13.xyz;
    r6.w = visibleLights.Load(r14.xyzw).x;
    r8.yzw = r7.yzw;
    r14.xyz = r26.xyz;
    r28.xyz = r27.xyz;
    r9.w = r5.z;
    r10.w = r6.w;
    while (true) {
      if (r10.w == 0) break;
      r11.w = firstbitlow((uint)r10.w);
      r13.z = 1 << (int)r11.w;
      r13.w = (int)r10.w & (int)r13.z;
      if (r13.w != 0) {
        r10.w = (int)r10.w ^ (int)r13.z;
        r11.w = (int)r5.w + (int)r11.w;
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
        r29.xyz = -v6.xyz + r29.xyz;
        r30.z = r29.w;
        r29.xyz = cmp(abs(r29.xyz) < r30.zxy);
        r13.z = r29.y ? r29.x : 0;
        r13.z = r29.z ? r13.z : 0;
        if (r13.z != 0) {
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
          if (3 == 0) r13.z = 0; else if (3+24 < 32) {           r13.z = (uint)r30.w << (32-(3 + 24)); r13.z = (uint)r13.z >> (32-3);          } else r13.z = (uint)r30.w >> 24;
          switch (r13.z) {
            case 4 :            r13.z = cmp(0 < r35.x);
            r36.xy = r34.zw;
            r36.z = r35.w;
            r37.xyz = -r36.xyz * float3(0.5,0.5,0.5) + r29.yzw;
            r38.xyz = -v6.xyz + r37.xyz;
            r13.w = dot(r36.xyz, r38.xyz);
            r17.w = saturate(-r13.w / r35.x);
            r39.xyz = r17.www * r36.xyz + r37.xyz;
            r39.xyz = r13.zzz ? r39.xyz : r29.yzw;
            r39.xyz = -v6.xyz + r39.xyz;
            r19.w = dot(r39.xyz, r39.xyz);
            r23.w = rsqrt(r19.w);
            r39.xyz = r39.xyz * r23.www;
            r23.w = dot(v3.xyz, r39.xyz);
            r24.w = cmp(0 < abs(r23.w));
            if (r24.w != 0) {
              r24.w = sqrt(r19.w);
              r25.w = r32.x * r32.x;
              r19.w = r25.w / r19.w;
              r19.w = min(1, r19.w);
              r39.xy = saturate(r24.ww * r31.xz + r31.yw);
              r39.zw = r39.xy * r39.xy;
              r39.xy = r39.xy * float2(-2,-2) + float2(3,3);
              r39.xy = r39.zw * r39.xy;
              r19.w = r39.x * r19.w;
              r19.w = r19.w * r39.y;
              r24.w = cmp(0 < r19.w);
              if (r24.w != 0) {
                if (3 == 0) r24.w = 0; else if (3+27 < 32) {                 r24.w = (uint)r30.w << (32-(3 + 27)); r24.w = (uint)r24.w >> (32-3);                } else r24.w = (uint)r30.w >> 27;
                r24.w = cmp((int)r24.w != 1);
                if (r24.w != 0) {
                  r24.w = abs(r23.w) * -0.200000003 + 0.400000006;
                  r25.w = cmp(r23.w < 0);
                  r24.w = r25.w ? -r24.w : r24.w;
                  r39.xyz = v3.xyz * r24.www + v6.xyz;
                  r39.xyz = r39.xyz + -r33.xyz;
                  r24.w = max(abs(r39.y), abs(r39.z));
                  r24.w = max(abs(r39.x), r24.w);
                  r24.w = r34.x / r24.w;
                  r24.w = r24.w + r34.y;
                  r25.w = dot(r39.xyz, r39.xyz);
                  r25.w = rsqrt(r25.w);
                  r24.w = max(6.10351563e-05, r24.w);
                  r26.w = (int)r30.w & 0x0000ffff;
                  r40.w = (uint)r26.w;
                  r26.w = 0;
                  r27.w = 0;
                  while (true) {
                    r28.w = cmp((int)r27.w >= 8);
                    if (r28.w != 0) break;
                    r41.y = dot(icb[r27.w+0].yx, r12.xy);
                    r41.z = dot(icb[r27.w+0].yx, r12.yz);
                    r41.yz = r41.yz * r32.yy;
                    r41.x = r41.y * r8.x;
                    r41.w = r41.y * r7.x;
                    r40.xyz = r39.xyz * r25.www + r41.xzw;
                    r28.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyzw, r24.w).x;
                    r26.w = r28.w * 0.125 + r26.w;
                    r27.w = (int)r27.w + 1;
                  }
                } else {
                  r26.w = 1;
                }
                r19.w = r26.w * r19.w;
                r24.w = cmp(0 < r19.w);
                if (r24.w != 0) {
                  r24.w = r30.x * r2.z;
                  r24.w = 0.25 * r24.w;
                  r25.w = dot(r36.xyz, r9.xyz);
                  r27.w = dot(r9.xyz, r38.xyz);
                  r28.w = -r25.w * r25.w + r35.x;
                  r13.w = r25.w * r27.w + -r13.w;
                  r13.w = saturate(r13.w / r28.w);
                  r25.w = r28.w / r35.x;
                  r25.w = 10 * r25.w;
                  r25.w = min(1, r25.w);
                  r13.w = r13.w + -r17.w;
                  r13.w = r25.w * r13.w + r17.w;
                  r36.xyz = r13.www * r36.xyz + r37.xyz;
                  r36.xyz = r13.zzz ? r36.xyz : r29.yzw;
                  r36.xyz = -v6.xyz + r36.xyz;
                  r13.z = dot(r36.xyz, r36.xyz);
                  r13.z = rsqrt(r13.z);
                  r37.xyz = r36.xyz * r13.zzz;
                  if (4 == 0) r13.w = 0; else if (4+16 < 32) {                   r13.w = (uint)r30.w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r30.w >> 16;
                  r17.w = cmp(0 < (uint)r13.w);
                  r17.w = r0.w ? r17.w : 0;
                  if (r17.w != 0) {
                    r13.w = (int)r13.w + numLights;
                    r13.w = (int)r13.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.w, r13.w, l(52), t12.xxxx
                  r17.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(100), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(116), t12.xyzw
                  r39.x = samp0[]..swiz;
                  r39.y = samp0[]..swiz;
                  r39.z = samp0[]..swiz;
                  r39.w = samp0[]..swiz;
                    r25.w = abs(r23.w) * -0.200000003 + 0.400000006;
                    r27.w = cmp(r23.w < 0);
                    r25.w = r27.w ? -r25.w : r25.w;
                    r16.xyz = v3.xyz * r25.www + v6.xyz;
                    r25.w = dot(r38.xyzw, r16.xyzw);
                    r27.w = dot(r39.xyzw, r16.xyzw);
                    r28.w = cmp(r27.w < r25.w);
                    if (r28.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(68), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(84), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(132), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(148), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xy, r13.w, l(164), t12.xyxx
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                      r38.x = dot(r38.xyzw, r16.xyzw);
                      r38.y = dot(r39.xyzw, r16.xyzw);
                      r16.xy = r38.xy / r27.ww;
                      r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r16.xy = r16.xy + r41.zw;
                      r16.xy = r16.xy * r41.xy;
                      r38.xy = r17.ww / r40.xz;
                      r38.zw = float2(1,1) + -r38.xy;
                      r38.zw = cmp(r16.xy >= r38.zw);
                      r38.xy = cmp(r38.xy >= r16.xy);
                      r38.xy = (int2)r38.xy | (int2)r38.zw;
                      r16.z = (int)r38.y | (int)r38.x;
                      r16.xy = saturate(r16.xy);
                      r38.xy = r16.xy * r40.xz + r40.yw;
                      r16.x = r42.y * r27.w;
                      r16.y = r42.x * r27.w + r25.w;
                      r16.x = r16.y / r16.x;
                    } else {
                      r16.z = -1;
                    }
                    r16.y = (int)r28.w | (int)r16.z;
                    if (r16.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                    r13.w = samp0[]..swiz;
                      r16.x = max(6.10351563e-05, r16.x);
                      r13.w = (int)r13.w & 0x0000ffff;
                      if (r9.w != 0) {
                        r39.z = (uint)r13.w;
                        r16.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r16.z >= 8);
                          if (r25.w != 0) break;
                          r40.x = dot(icb[r16.z+0].yx, r12.xw);
                          r40.y = dot(icb[r16.z+0].xy, r5.xy);
                          r39.xy = r40.xy * r17.ww + r38.xy;
                          r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r16.x).x;
                          r16.y = r25.w * 0.125 + r16.y;
                          r16.z = (int)r16.z + 1;
                        }
                      } else {
                        r38.z = (uint)r13.w;
                        r16.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r16.x).x;
                      }
                      r13.w = r16.y * r16.y;
                      r13.w = r13.w * r16.y;
                    } else {
                      r13.w = 1;
                    }
                    r19.w = r19.w * r13.w;
                  } else {
                    if (4 == 0) r13.w = 0; else if (4+20 < 32) {                     r13.w = (uint)r30.w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                    } else r13.w = (uint)r30.w >> 20;
                    r16.x = cmp(0 < (uint)r13.w);
                    r16.x = r16.x ? r1.x : 0;
                    if (r16.x != 0) {
                      r13.w = (int)r13.w + numLights;
                      r13.w = (int)r13.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.x, r13.w, l(52), t12.xxxx
                    r16.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(100), t12.xyzw
                    r38.x = samp0[]..swiz;
                    r38.y = samp0[]..swiz;
                    r38.z = samp0[]..swiz;
                    r38.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(116), t12.xyzw
                    r39.x = samp0[]..swiz;
                    r39.y = samp0[]..swiz;
                    r39.z = samp0[]..swiz;
                    r39.w = samp0[]..swiz;
                      r16.z = abs(r23.w) * -0.200000003 + 0.400000006;
                      r17.w = cmp(r23.w < 0);
                      r16.z = r17.w ? -r16.z : r16.z;
                      r18.xyz = v3.xyz * r16.zzz + v6.xyz;
                      r16.z = dot(r38.xyzw, r18.xyzw);
                      r17.w = dot(r39.xyzw, r18.xyzw);
                      r25.w = cmp(r17.w < r16.z);
                      if (r25.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(68), t12.xyzw
                      r38.x = samp0[]..swiz;
                      r38.y = samp0[]..swiz;
                      r38.z = samp0[]..swiz;
                      r38.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(84), t12.xyzw
                      r39.x = samp0[]..swiz;
                      r39.y = samp0[]..swiz;
                      r39.z = samp0[]..swiz;
                      r39.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(132), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(148), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xy, r13.w, l(164), t12.xyxx
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                        r38.x = dot(r38.xyzw, r18.xyzw);
                        r38.y = dot(r39.xyzw, r18.xyzw);
                        r18.xy = r38.xy / r17.ww;
                        r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r18.xy = r18.xy + r41.zw;
                        r18.xy = r18.xy * r41.xy;
                        r38.xy = r16.xx / r40.xz;
                        r38.zw = float2(1,1) + -r38.xy;
                        r38.zw = cmp(r18.xy >= r38.zw);
                        r38.xy = cmp(r38.xy >= r18.xy);
                        r38.xy = (int2)r38.xy | (int2)r38.zw;
                        r18.z = (int)r38.y | (int)r38.x;
                        r18.xy = saturate(r18.xy);
                        r38.xy = r18.xy * r40.xz + r40.yw;
                        r18.x = r42.y * r17.w;
                        r16.z = r42.x * r17.w + r16.z;
                        r16.z = r16.z / r18.x;
                      } else {
                        r18.z = -1;
                      }
                      r17.w = (int)r25.w | (int)r18.z;
                      if (r17.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                      r13.w = samp0[]..swiz;
                        r16.z = max(6.10351563e-05, r16.z);
                        r13.w = (int)r13.w & 0x0000ffff;
                        if (r9.w != 0) {
                          r18.z = (uint)r13.w;
                          r17.w = 0;
                          r25.w = 0;
                          while (true) {
                            r27.w = cmp((int)r25.w >= 8);
                            if (r27.w != 0) break;
                            r39.x = dot(icb[r25.w+0].xy, r6.xy);
                            r39.y = dot(icb[r25.w+0].yx, r6.xz);
                            r18.xy = r39.xy * r16.xx + r38.xy;
                            r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r16.z).x;
                            r17.w = r18.x * 0.125 + r17.w;
                            r25.w = (int)r25.w + 1;
                          }
                        } else {
                          r38.z = (uint)r13.w;
                          r17.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r16.z).x;
                        }
                        r13.w = r17.w * r17.w;
                        r13.w = r13.w * r17.w;
                      } else {
                        r13.w = 1;
                      }
                      r19.w = r19.w * r13.w;
                    }
                  }
                  r13.w = -abs(r23.w) * r2.x + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -abs(r23.w);
                  r13.w = r4.z * r13.w + abs(r23.w);
                  r13.w = r13.w * r19.w;
                  r30.x = r29.x;
                  r16.x = cmp(0 < r23.w);
                  r18.xyz = r13.www * r30.xyz + r8.yzw;
                  r13.w = saturate(dot(v3.xyz, r37.xyz));
                  r36.xyz = r36.xyz * r13.zzz + r1.yzw;
                  r13.z = dot(r36.xyz, r36.xyz);
                  r13.z = rsqrt(r13.z);
                  r36.xyz = r36.xyz * r13.zzz;
                  r13.z = dot(r36.xyz, r1.yzw);
                  r16.z = dot(v3.xyz, r36.xyz);
                  r23.w = abs(r16.z) * r2.z + -abs(r16.z);
                  r16.z = abs(r16.z) * r23.w + 1;
                  r23.w = r13.w * r2.y + r2.w;
                  r16.z = r16.z * r16.z;
                  r16.z = r16.z * r23.w;
                  r16.z = rcp(r16.z);
                  r13.w = r13.w * r24.w;
                  r13.w = r16.z * r13.w;
                  r13.w = r13.w * r19.w;
                  r36.xyz = r13.www * r30.xyz + r28.xyz;
                  r13.z = saturate(1 + -r13.z);
                  r16.z = r13.z * r13.z;
                  r16.z = r16.z * r16.z;
                  r13.z = r16.z * r13.z;
                  r13.z = r13.w * r13.z;
                  r37.xyz = r13.zzz * r30.xyz + r14.xyz;
                  r8.yzw = r16.xxx ? r18.xyz : r8.yzw;
                  r14.xyz = r16.xxx ? r37.xyz : r14.xyz;
                  r28.xyz = r16.xxx ? r36.xyz : r28.xyz;
                }
              }
            }
            break;
            case 2 :            r18.xy = r32.zw;
            r18.z = r33.w;
            r18.xyz = -v6.xyz + r18.xyz;
            r13.z = dot(r18.xyz, r18.xyz);
            r13.z = rsqrt(r13.z);
            r36.xyz = r18.xyz * r13.zzz;
            r13.w = dot(v3.xyz, r36.xyz);
            r16.x = cmp(0 < abs(r13.w));
            if (r16.x != 0) {
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
              r16.x = dot(r38.xyzw, r15.xyzw);
              r16.z = cmp(r16.x < 1);
              if (r16.z != 0) {
                r39.xyz = float3(1,1,1);
                r16.z = 0;
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
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.w, r11.w, l(236), t12.xxxx
              r19.w = samp0[]..swiz;
                r43.xyz = -v6.xyz + r29.yzw;
                r23.w = r32.x * r32.x;
                r24.w = dot(r43.xyz, r43.xyz);
                r23.w = r23.w / r24.w;
                r23.w = min(1, r23.w);
                r31.xy = saturate(r16.xx * r31.xz + r31.yw);
                r31.zw = r31.xy * r31.xy;
                r31.xy = r31.xy * float2(-2,-2) + float2(3,3);
                r31.xy = r31.zw * r31.xy;
                r23.w = r31.x * r23.w;
                r23.w = r23.w * r31.y;
                r33.w = r34.x;
                r31.x = dot(r33.xyzw, r15.xyzw);
                r43.xyz = r34.yzw;
                r43.w = r35.w;
                r31.y = dot(r43.xyzw, r15.xyzw);
                r19.xy = r31.xy / r16.xx;
                r16.x = cmp(r40.w < 0.00048828125);
                if (r16.x != 0) {
                  r41.y = r42.x;
                  r31.xy = saturate(abs(r19.xy) * r41.zw + r41.xy);
                  r31.zw = r31.xy * r31.xy;
                  r31.xy = r31.xy * float2(-2,-2) + float2(3,3);
                  r31.xy = r31.zw * r31.xy;
                  r16.x = r31.x * r31.y;
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
                  r24.w = r41.z * r31.x;
                  r25.w = r41.w * r31.y + -1;
                  r24.w = r41.w * r31.y + -r24.w;
                  r24.w = saturate(r25.w / r24.w);
                  r25.w = r24.w * r24.w;
                  r24.w = r24.w * -2 + 3;
                  r16.x = r25.w * r24.w;
                }
                r16.z = r23.w * r16.x;
                r16.x = (int)r19.w & 255;
                if (r16.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyz, r11.w, l(220), t12.xyzx
                r31.x = samp0[]..swiz;
                r31.y = samp0[]..swiz;
                r31.z = samp0[]..swiz;
                  r19.w = dot(r42.yzw, r19.xyz);
                  r19.x = dot(r31.xyz, r19.xyz);
                  r31.xy = frac(r19.wx);
                  r16.x = (int)r16.x + -1;
                  r31.z = (uint)r16.x;
                  r39.xyz = gCookieArray.SampleLevel(samplerLinear_s, r31.xyz, 0).xyz;
                } else {
                  r39.xyz = float3(1,1,1);
                }
              }
              r29.yz = r30.yz;
              r19.xyw = r29.xyz * r39.xyz;
              r16.x = cmp(0 < r16.z);
              if (r16.x != 0) {
                if (3 == 0) r16.x = 0; else if (3+27 < 32) {                 r16.x = (uint)r30.w << (32-(3 + 27)); r16.x = (uint)r16.x >> (32-3);                } else r16.x = (uint)r30.w >> 27;
                r16.x = cmp((int)r16.x != 1);
                if (r16.x != 0) {
                  r16.x = abs(r13.w) * -0.200000003 + 0.400000006;
                  r23.w = cmp(r13.w < 0);
                  r16.x = r23.w ? -r16.x : r16.x;
                  r20.xyz = v3.xyz * r16.xxx + v6.xyz;
                  r36.xyz = r35.xyz;
                  r16.x = dot(r36.xyzw, r20.xyzw);
                  r23.w = dot(r38.xyzw, r20.xyzw);
                  r24.w = cmp(r23.w >= r16.x);
                  if (r24.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.y, r11.w, l(144), t12.xxxx
                  r37.y = samp0[]..swiz;
                    r33.w = r34.x;
                    r29.x = dot(r33.xyzw, r20.xyzw);
                    r35.xyz = r34.yzw;
                    r29.y = dot(r35.xyzw, r20.xyzw);
                    r20.xy = r29.xy / r23.ww;
                    r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r20.xy = r20.xy * r37.zw + r37.xy;
                    r11.w = r16.x / r23.w;
                    r11.w = max(6.10351563e-05, r11.w);
                    r16.x = (int)r30.w & 0x0000ffff;
                    if (r9.w != 0) {
                      r29.z = (uint)r16.x;
                      r23.w = 0;
                      r24.w = 0;
                      while (true) {
                        r25.w = cmp((int)r24.w >= 8);
                        if (r25.w != 0) break;
                        r31.x = dot(icb[r24.w+0].xy, r23.xy);
                        r31.y = dot(icb[r24.w+0].yx, r23.xz);
                        r29.xy = r31.xy * r32.yy + r20.xy;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r11.w).x;
                        r23.w = r25.w * 0.125 + r23.w;
                        r24.w = (int)r24.w + 1;
                      }
                    } else {
                      r20.z = (uint)r16.x;
                      r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r11.w).x;
                    }
                    r11.w = r23.w * r23.w;
                    r11.w = r11.w * r23.w;
                  } else {
                    r11.w = 1;
                  }
                } else {
                  r11.w = 1;
                }
                r11.w = r16.z * r11.w;
                r16.x = cmp(0 < r11.w);
                if (r16.x != 0) {
                  r16.x = r30.x * r2.z;
                  r16.x = 0.25 * r16.x;
                  if (4 == 0) r16.z = 0; else if (4+16 < 32) {                   r16.z = (uint)r30.w << (32-(4 + 16)); r16.z = (uint)r16.z >> (32-4);                  } else r16.z = (uint)r30.w >> 16;
                  r20.x = cmp(0 < (uint)r16.z);
                  r20.x = r0.w ? r20.x : 0;
                  if (r20.x != 0) {
                    r16.z = (int)r16.z + numLights;
                    r16.z = (int)r16.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r16.z, l(52), t12.xxxx
                  r20.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r16.z, l(68), t12.xyzw
                  r29.x = samp0[]..swiz;
                  r29.y = samp0[]..swiz;
                  r29.z = samp0[]..swiz;
                  r29.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r16.z, l(84), t12.xyzw
                  r31.x = samp0[]..swiz;
                  r31.y = samp0[]..swiz;
                  r31.z = samp0[]..swiz;
                  r31.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(100), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(116), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(132), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(148), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                    r20.y = abs(r13.w) * -0.200000003 + 0.400000006;
                    r20.z = cmp(r13.w < 0);
                    r20.y = r20.z ? -r20.y : r20.y;
                    r21.xyz = v3.xyz * r20.yyy + v6.xyz;
                    r29.x = dot(r29.xyzw, r21.xyzw);
                    r29.y = dot(r31.xyzw, r21.xyzw);
                    r20.y = dot(r32.xyzw, r21.xyzw);
                    r20.z = dot(r33.xyzw, r21.xyzw);
                    r21.x = cmp(r20.z < r20.y);
                    r21.yz = r29.xy / r20.zz;
                    r21.yz = r21.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.yz = r21.yz + r35.zw;
                    r21.yz = r21.yz * r35.xy;
                    r29.xy = r20.xx / r34.xz;
                    r29.zw = float2(1,1) + -r29.xy;
                    r29.zw = cmp(r21.yz >= r29.zw);
                    r29.xy = cmp(r29.xy >= r21.yz);
                    r29.xy = (int2)r29.xy | (int2)r29.zw;
                    r24.w = (int)r29.y | (int)r29.x;
                    r21.x = (int)r21.x | (int)r24.w;
                    if (r21.x == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.x, r16.z, l(28), t12.xxxx
                    r21.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xy, r16.z, l(164), t12.xyxx
                    r29.x = samp0[]..swiz;
                    r29.y = samp0[]..swiz;
                      r21.yz = saturate(r21.yz);
                      r30.xy = r21.yz * r34.xz + r34.yw;
                      r16.z = r29.y * r20.z;
                      r20.y = r29.x * r20.z + r20.y;
                      r16.z = r20.y / r16.z;
                      r16.z = max(6.10351563e-05, r16.z);
                      r20.y = r21.x ? 0.000000 : 0;
                      if (r9.w != 0) {
                        r21.z = (uint)r20.y;
                        r20.z = 0;
                        r24.w = 0;
                        while (true) {
                          r25.w = cmp((int)r24.w >= 8);
                          if (r25.w != 0) break;
                          r29.x = dot(icb[r24.w+0].xy, r24.xy);
                          r29.y = dot(icb[r24.w+0].yx, r24.xz);
                          r21.xy = r29.xy * r20.xx + r30.xy;
                          r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r16.z).x;
                          r20.z = r21.x * 0.125 + r20.z;
                          r24.w = (int)r24.w + 1;
                        }
                      } else {
                        r30.z = (uint)r20.y;
                        r20.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r16.z).x;
                      }
                      r16.z = r20.z * r20.z;
                      r16.z = r16.z * r20.z;
                    } else {
                      r16.z = 1;
                    }
                    r11.w = r16.z * r11.w;
                  } else {
                    if (4 == 0) r16.z = 0; else if (4+20 < 32) {                     r16.z = (uint)r30.w << (32-(4 + 20)); r16.z = (uint)r16.z >> (32-4);                    } else r16.z = (uint)r30.w >> 20;
                    r20.x = cmp(0 < (uint)r16.z);
                    r20.x = r20.x ? r1.x : 0;
                    if (r20.x != 0) {
                      r16.z = (int)r16.z + numLights;
                      r16.z = (int)r16.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.x, r16.z, l(52), t12.xxxx
                    r20.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r16.z, l(68), t12.xyzw
                    r29.x = samp0[]..swiz;
                    r29.y = samp0[]..swiz;
                    r29.z = samp0[]..swiz;
                    r29.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r16.z, l(84), t12.xyzw
                    r30.x = samp0[]..swiz;
                    r30.y = samp0[]..swiz;
                    r30.z = samp0[]..swiz;
                    r30.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r16.z, l(100), t12.xyzw
                    r31.x = samp0[]..swiz;
                    r31.y = samp0[]..swiz;
                    r31.z = samp0[]..swiz;
                    r31.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(116), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(132), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(148), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                      r20.y = abs(r13.w) * -0.200000003 + 0.400000006;
                      r21.x = cmp(r13.w < 0);
                      r20.y = r21.x ? -r20.y : r20.y;
                      r22.xyz = v3.xyz * r20.yyy + v6.xyz;
                      r21.x = dot(r29.xyzw, r22.xyzw);
                      r21.y = dot(r30.xyzw, r22.xyzw);
                      r20.y = dot(r31.xyzw, r22.xyzw);
                      r21.z = dot(r32.xyzw, r22.xyzw);
                      r22.x = cmp(r21.z < r20.y);
                      r21.xy = r21.xy / r21.zz;
                      r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r21.xy = r21.xy + r34.zw;
                      r21.xy = r21.xy * r34.xy;
                      r22.yz = r20.xx / r33.xz;
                      r29.xy = float2(1,1) + -r22.yz;
                      r29.xy = cmp(r21.xy >= r29.xy);
                      r22.yz = cmp(r22.yz >= r21.xy);
                      r22.yz = (int2)r22.yz | (int2)r29.xy;
                      r22.y = (int)r22.z | (int)r22.y;
                      r22.x = (int)r22.x | (int)r22.y;
                      if (r22.x == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.x, r16.z, l(28), t12.xxxx
                      r22.x = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.yz, r16.z, l(164), t12.xxyx
                      r22.y = samp0[]..swiz;
                      r22.z = samp0[]..swiz;
                        r21.xy = saturate(r21.xy);
                        r29.xy = r21.xy * r33.xz + r33.yw;
                        r16.z = r22.z * r21.z;
                        r20.y = r22.y * r21.z + r20.y;
                        r16.z = r20.y / r16.z;
                        r16.z = max(6.10351563e-05, r16.z);
                        r20.y = r22.x ? 0.000000 : 0;
                        if (r9.w != 0) {
                          r21.z = (uint)r20.y;
                          r22.xy = float2(0,0);
                          while (true) {
                            r22.z = cmp((int)r22.y >= 8);
                            if (r22.z != 0) break;
                            r30.x = dot(icb[r22.y+0].xy, r25.xy);
                            r30.y = dot(icb[r22.y+0].yx, r25.xz);
                            r21.xy = r30.xy * r20.xx + r29.xy;
                            r21.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r16.z).x;
                            r22.x = r21.x * 0.125 + r22.x;
                            r22.y = (int)r22.y + 1;
                          }
                        } else {
                          r29.z = (uint)r20.y;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r16.z).x;
                        }
                        r16.z = r22.x * r22.x;
                        r16.z = r16.z * r22.x;
                      } else {
                        r16.z = 1;
                      }
                      r11.w = r16.z * r11.w;
                    }
                  }
                  r16.z = -abs(r13.w) * r2.x + 1;
                  r16.z = r16.z * r16.z;
                  r16.z = -r16.z * 0.620000005 + 0.620000005;
                  r16.z = r16.z + -abs(r13.w);
                  r16.z = r4.z * r16.z + abs(r13.w);
                  r16.z = r16.z * r11.w;
                  r20.x = cmp(0 < r13.w);
                  r21.xyz = r16.zzz * r19.xyw + r8.yzw;
                  r13.w = saturate(r13.w);
                  r18.xyz = r18.xyz * r13.zzz + r1.yzw;
                  r13.z = dot(r18.xyz, r18.xyz);
                  r13.z = rsqrt(r13.z);
                  r18.xyz = r18.xyz * r13.zzz;
                  r13.z = dot(r18.xyz, r1.yzw);
                  r16.z = dot(v3.xyz, r18.xyz);
                  r18.x = abs(r16.z) * r2.z + -abs(r16.z);
                  r16.z = abs(r16.z) * r18.x + 1;
                  r18.x = r13.w * r2.y + r2.w;
                  r16.z = r16.z * r16.z;
                  r16.z = r16.z * r18.x;
                  r16.z = rcp(r16.z);
                  r13.w = r13.w * r16.x;
                  r13.w = r16.z * r13.w;
                  r11.w = r13.w * r11.w;
                  r18.xyz = r11.www * r19.xyw + r28.xyz;
                  r13.z = saturate(1 + -r13.z);
                  r13.w = r13.z * r13.z;
                  r13.w = r13.w * r13.w;
                  r13.z = r13.z * r13.w;
                  r11.w = r13.z * r11.w;
                  r19.xyw = r11.www * r19.xyw + r14.xyz;
                  r8.yzw = r20.xxx ? r21.xyz : r8.yzw;
                  r14.xyz = r20.xxx ? r19.xyw : r14.xyz;
                  r28.xyz = r20.xxx ? r18.xyz : r28.xyz;
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
    r7.yzw = r8.yzw;
    r26.xyz = r14.xyz;
    r27.xyz = r28.xyz;
    r5.w = (int)r5.w + 32;
  }
  r1.xyz = float3(0.959999979,0.959999979,0.959999979) * r26.xyz;
  r1.xyz = r27.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r1.xyz;
  r0.xyz = r7.yzw * r0.xyz + r1.xyz;
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