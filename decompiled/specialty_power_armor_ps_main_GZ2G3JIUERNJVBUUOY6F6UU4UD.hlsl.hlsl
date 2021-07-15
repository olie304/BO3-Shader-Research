// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:42:42 2021

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
  float2 rotateUVs : packoffset(c12.z);
  float2 scrollUVs : packoffset(c13);
  float2 scaleUVs : packoffset(c13.z);
  float2 offsetUVs : packoffset(c14);
  float2 zoomUVs : packoffset(c14.z);
  float zoomRate : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  bool clampU : packoffset(c15.z);
  bool clampV : packoffset(c15.w);
  float2 flickerSeed : packoffset(c16);
  float flickerSpeed : packoffset(c16.z);
  float2 flickerRange : packoffset(c17);
  float flickerPower : packoffset(c17.z);
  float hdrScale : packoffset(c17.w);
  float emissiveFalloffPower : packoffset(c18);
  bool invertFalloff : packoffset(c18.y);
  float shieldCushion : packoffset(c18.z);
  float shieldOpacity : packoffset(c18.w);
  float warpPixels : packoffset(c19);
  float2 normalScale : packoffset(c19.y);
  float2 normalScroll : packoffset(c20);
  float4 scanlineConsts : packoffset(c21);
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
SamplerState normalSampler_s : register(s5);
SamplerState lookupSampler_s : register(s6);
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
Texture2D<float4> revealMap : register(t21);
Texture2D<float4> colorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> tintMask : register(t24);
Texture2D<float4> normalMap : register(t25);
Texture2D<float4> flickerLookupMap : register(t26);
Texture2D<float4> emissiveMap : register(t29);
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
  nointerpolation float3 v3 : UVOFFSETS0,
  nointerpolation uint w3 : TEXCOORD4,
  float3 v4 : TEXCOORD1,
  float w4 : TEXCOORD11,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  float3 v8 : TEXCOORD10,
  uint v9 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r0.w = w1.x * r0.w;
  r1.xy = revealScale.xy * v2.xy;
  r1.x = revealMap.Sample(revealSampler_s, r1.xy).x;
  r1.y = saturate(w1.x * 0.998000026 + 0.00100000005);
  r1.z = 1 + -r1.y;
  r1.w = saturate(alphaRevealRamp);
  r1.y = log2(r1.y);
  r1.y = r1.w * r1.y;
  r1.y = exp2(r1.y);
  r2.x = -r1.y;
  r1.y = log2(r1.z);
  r1.y = r1.w * r1.y;
  r2.y = exp2(r1.y);
  r1.yz = saturate(alphaRevealSoftEdge * r2.xy + r1.zz);
  r1.x = r1.x + -r1.y;
  r1.y = r1.z + -r1.y;
  r1.x = saturate(r1.x / r1.y);
  r0.w = r1.x * r0.w;
  r0.w = w4.x * r0.w;
  r1.xy = gameTime.ww * normalScroll.xy;
  r1.xy = w2.xy * normalScale.xy + r1.xy;
  r1.xyz = normalMap.Sample(normalSampler_s, r1.xy).xyz;
  r1.w = cmp(r0.w == 0.000000);
  r2.xy = gameTime.ww * scrollUVs.xy;
  r2.xy = w2.xy * scaleUVs.xy + r2.xy;
  r2.xyz = emissiveMap.Sample(colorSampler_s, r2.xy).xyz;
  if (r1.w != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r1.w = tintMask.Sample(colorSampler_s, v2.xy).x;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r1.www * r3.xyz + float3(1,1,1);
  r0.xyz = r3.xyz * r0.xyz;
  r0.xyz = v1.xyz * r0.xyz;
  r1.w = saturate(0.0588235296 * glossRange.y);
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r1.xy, r1.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r3.x = v9.x ? 1 : -1;
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
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.z = r1.z + r1.w;
  r1.z = log2(r1.z);
  r1.z = -0.0588235296 * r1.z;
  r6.y = max(0, r1.z);
  r1.yzw = r5.xyz * r1.yyy;
  r1.xyz = r4.xyz * r1.xxx + r1.yzw;
  r1.xyz = r3.yzw * r2.www + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r4.xy = renderTargetSize.zw * warpPixels;
  r2.w = max(r4.x, r4.y);
  r4.xyz = r2.www * r1.yxx + v8.zxy;
  r2.w = gameTime.w * scanlineConsts.z;
  r4.xyz = r4.xyz * scanlineConsts.www + r2.www;
  r4.xyz = sin(r4.xyz);
  r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r4.xyz = log2(r4.xyz);
  r4.xyz = scanlineConsts.xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r2.w = saturate(1 + -scanlineConsts.y);
  r4.xyz = r4.xyz + r2.www;
  r2.w = cmp(v0.z >= 0.984375);
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r4.xy = r4.xx * r4.yz;
  r3.x = r2.w ? r4.x : r4.y;
  r2.xyz = r3.xxx + r2.xyz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.x, v3.w, l(4), t4.xxxx
r3.x = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r4.xyz, r3.x, l(52), t0.xyzx
r4.x = samp0[]..swiz;
r4.y = samp0[]..swiz;
r4.z = samp0[]..swiz;
  r2.xyz = r4.xyz * r2.xyz;
  r3.x = dot(-v7.xyz, -v7.xyz);
  r3.x = rsqrt(r3.x);
  r4.xyz = -v7.xyz * r3.xxx;
  r3.y = saturate(dot(r4.xyz, r3.yzw));
  r3.z = log2(r3.y);
  r3.z = emissiveFalloffPower * r3.z;
  r3.z = exp2(r3.z);
  r3.y = 1 + -r3.y;
  r3.y = log2(r3.y);
  r3.y = emissiveFalloffPower * r3.y;
  r3.y = exp2(r3.y);
  r3.y = invertFalloff ? r3.y : r3.z;
  r3.z = cmp(emissiveFalloffPower == 0.000000);
  r3.y = r3.z ? 1 : r3.y;
  r3.y = hdrScale * r3.y;
  r2.xyz = r3.yyy * r2.xyz;
  r3.y = v3.x + v3.y;
  r3.y = v3.z + r3.y;
  r3.y = flickerSeed.y + r3.y;
  r3.y = frac(r3.y);
  r5.y = gameTime.w * flickerSpeed + r3.y;
  r5.x = flickerSeed.x;
  r3.y = flickerLookupMap.SampleLevel(lookupSampler_s, r5.xy, 0).x;
  r3.y = log2(abs(r3.y));
  r3.y = flickerPower * r3.y;
  r3.y = exp2(r3.y);
  r3.z = flickerRange.y + -flickerRange.x;
  r3.y = r3.y * r3.z + flickerRange.x;
  r2.xyz = r3.yyy * r2.xyz;
  r3.yz = (uint2)v0.xy;
  r3.w = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r2.w = r2.w ? r4.w : r3.w;
  r2.w = max(9.99999994e-09, r2.w);
  r2.w = rcp(r2.w);
  r3.w = cmp(isDepthHack != 0);
  r5.xy = (uint2)r3.zy;
  r4.w = dot(r5.yx, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r7.x, r8.x);
  r4.w = dot(r5.xy, float2(0.0671105608,0.00583714992));
  r4.w = frac(r4.w);
  r4.w = 52.9829178 * r4.w;
  r4.w = frac(r4.w);
  r4.w = r4.w * 6.28318548 + gameTick.w;
  sincos(r4.w, r5.x, r9.x);
  r6.x = saturate(dot(r1.xyz, r4.xyz));
  r4.w = dot(-r4.xyz, r1.xyz);
  r4.w = r4.w + r4.w;
  r10.xyz = r1.xyz * -r4.www + -r4.xyz;
  r4.w = 17 * r6.y;
  r4.w = exp2(r4.w);
  r4.w = 2 + r4.w;
  r4.w = 2 / r4.w;
  r5.y = sqrt(r4.w);
  r5.z = sqrt(r5.y);
  r5.z = r5.z * 0.5 + 0.5;
  r5.z = r5.z * r5.z;
  r5.w = 0.5 * r5.z;
  r5.z = -r5.z * 0.5 + 1;
  r6.z = r6.x * r5.z + r5.w;
  r5.zw = r6.zz * r5.zw;
  r6.z = dot(r1.xyz, sunConstants.wldDir.xyz);
  r6.w = saturate(r6.z);
  r7.z = cmp(0 >= r6.w);
  if (r7.z != 0) {
    r7.w = 0;
  }
  if (r7.z == 0) {
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r9.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
    r9.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
    r7.z = -sunConstants.splitDepthOffset + r9.w;
    r7.z = -r7.z * 6.10351563e-05 + 1;
    r8.w = saturate(r7.z);
    r8.w = cmp(r7.z == r8.w);
    if (r8.w != 0) {
      r8.w = 0;
      r11.x = 0;
      while (true) {
        r11.y = cmp(r8.w >= 3);
        if (r11.y != 0) break;
        r11.y = (uint)r8.w;
        r11.zw = -sunConstants.splitPinTransform[r11.y].xy + r9.yz;
        r11.z = max(abs(r11.z), abs(r11.w));
        r11.x = sunConstants.splitPinTransform[r11.y].z * r11.z;
        r11.y = cmp(r11.x < 1);
        if (r11.y != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r11.x = 0;
      }
    } else {
      r8.w = 3;
      r11.x = 0;
    }
    r11.y = cmp(r8.w >= 3);
    if (r11.y != 0) {
      r12.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r13.xz = rcp(r12.xx);
      r13.y = -r13.z;
      r12.xyz = r9.yzy * r13.xyz + r12.yzy;
      r13.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r12.xyz = max(float3(0,0,0), r12.xyz);
      r12.xyz = min(r12.xyz, r13.xyz);
      r11.zw = sunConstants.sstLightingConstants.coordScale * r12.zy;
      r11.zw = floor(r11.zw);
      r11.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r11.w;
      r11.z = r11.w * sunConstants.sstLightingConstants.coordScale + r11.z;
      r11.z = (uint)r11.z;
      r11.z = (int)r11.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.z, l(0), t23.xxxx
    r11.w = samp0[]..swiz;
      r12.w = (int)r11.w & 0x40000000;
      r13.x = (uint)r11.w << 2;
      if (r12.w == 0) {
        r12.w = (int)r11.w & 0x01ffffff;
        r14.x = (int)r11.z + (int)r12.w;
        r11.z = (uint)r11.w >> 25;
        r11.z = (uint)r11.z;
        r12.xyz = r12.xyz * r11.zzz;
        r12.xyz = frac(r12.xyz);
        r12.xyz = float3(128,128,128) * r12.xyz;
        r12.xyz = (uint3)r12.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
      r14.z = samp0[]..swiz;
        r11.zw = (uint2)r12.zy >> int2(6,6);
        r12.w = (int)r14.z & 0xc0000000;
        r13.y = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
      r13.y = samp0[]..swiz;
        r11.w = r11.w ? r14.z : r13.y;
        r13.y = (uint)r11.w >> 13;
        r11.z = r11.z ? r13.y : r11.w;
        r11.z = (int)r11.z & 8191;
        r15.x = (int)r11.z + (int)r14.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.y = 0;
        r15.y = 1;
        r13.yzw = r12.www ? r14.xyz : r15.xyz;
        r15.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r11.zw = (uint2)r12.zy >> (uint2)r15.yy;
        r11.zw = (int2)r11.zw & int2(1,1);
        r14.w = (int)r13.w & 0xc0000000;
        r15.y = (int)r13.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.y, l(0), t23.xxxx
      r15.y = samp0[]..swiz;
        r11.w = r11.w ? r13.w : r15.y;
        r15.y = (uint)r11.w >> 13;
        r11.z = r11.z ? r15.y : r11.w;
        r11.z = (int)r11.z & 8191;
        r15.x = (int)r11.z + (int)r13.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r13.yzw = r14.www ? r13.yzw : r15.xzw;
        r13.yzw = r12.www ? r14.xyz : r13.yzw;
        r11.z = (int)r13.w & 0xc0000000;
        if (r11.z == 0) {
          r11.z = (int)-r13.z + 6;
          r11.zw = (uint2)r12.zy >> (uint2)r11.zz;
          r12.w = (int)r13.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r11.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.z = (((uint)r11.z << 0) & bitmask.z) | ((uint)r11.w & ~bitmask.z);
          r11.z = (int)r11.z * 10;
          r11.z = (uint)r12.w >> (uint)r11.z;
          r11.z = (int)r11.z & 1023;
          r14.x = (int)r11.z + (int)r13.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r14.yz = (int2)r13.zz + int2(1,2);
          r11.z = (int)-r14.y + 6;
          r11.zw = (uint2)r12.zy >> (uint2)r11.zz;
          r12.w = (int)r14.w & 0xc0000000;
          r13.z = (int)r14.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r11.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.z = (((uint)r11.z << 0) & bitmask.z) | ((uint)r11.w & ~bitmask.z);
          r11.z = (int)r11.z * 10;
          r11.z = (uint)r13.z >> (uint)r11.z;
          r11.z = (int)r11.z & 1023;
          r15.x = (int)r11.z + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r14.z;
          r15.xyz = r12.www ? r14.xyw : r15.xyz;
          r11.z = (int)-r15.y + 6;
          r11.zw = (uint2)r12.zy >> (uint2)r11.zz;
          r13.z = (int)r15.z & 0xc0000000;
          r14.y = (int)r15.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r11.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.z = (((uint)r11.z << 0) & bitmask.z) | ((uint)r11.w & ~bitmask.z);
          r11.z = (int)r11.z * 10;
          r11.z = (uint)r14.y >> (uint)r11.z;
          r11.z = (int)r11.z & 1023;
          r16.x = (int)r11.z + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r11.zw = r13.zz ? r15.xz : r16.xy;
          r13.yw = r12.ww ? r14.xw : r11.zw;
        }
        r11.z = (int)r13.w & 0xc0000000;
        if (r11.z == 0) {
          if (14 == 0) r11.w = 0; else if (14+15 < 32) {           r11.w = (uint)r13.w << (32-(14 + 15)); r11.w = (uint)r11.w >> (32-14);          } else r11.w = (uint)r13.w >> 15;
          r11.w = (uint)r11.w;
          r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
          r11.w = 6.10388815e-05 * r11.w;
          r14.xy = (int2)r13.ww & int2(32767,536870912);
          r12.w = (uint)r14.x;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 3.05185094e-05 * r12.w;
          r13.z = (int)r12.y & 3;
          r13.z = (int)r13.z + (int)r13.y;
          r13.z = (int)r13.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r14.x = (((uint)r12.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r14.z = (((uint)r12.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r14.w = (((uint)r12.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r12.x = (uint)r13.z >> (uint)r14.x;
          r12.x = (int)r12.x & 255;
          r12.x = (uint)r12.x;
          r12.x = r12.x * r12.w;
          r12.x = r12.x * 0.00392156886 + r11.w;
          r12.y = (int)r14.z + 1;
          if (1 == 0) r12.z = 0; else if (1+1 < 32) {           r12.z = (uint)r12.z << (32-(1 + 1)); r12.z = (uint)r12.z >> (32-1);          } else r12.z = (uint)r12.z >> 1;
          r12.y = (int)r12.z + (int)r12.y;
          r12.y = (int)r12.y + (int)r13.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.y, r12.y, l(0), t23.xxxx
        r12.y = samp0[]..swiz;
          r12.y = (uint)r12.y >> (uint)r14.w;
          r12.y = (int)r12.y & 0x0000ffff;
          r12.y = (uint)r12.y;
          r12.y = r12.y * r12.w;
          r11.w = r12.y * 1.52590219e-05 + r11.w;
          r13.x = r14.y ? r12.x : r11.w;
        } else {
          r11.w = (int)r13.w & 0x80000000;
          r12.x = (int)r13.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.x, r12.x, l(0), t23.xxxx
        r12.x = samp0[]..swiz;
          r11.w = r11.w ? r12.x : 0;
          r12.x = (uint)r13.w << 2;
          r12.y = (uint)r11.w >> 16;
          r12.y = f16tof32(r12.y);
          r11.w = (int)r11.w & 0x0000ffff;
          r11.w = f16tof32(r11.w);
          r12.x = r9.y * r12.y + r12.x;
          r11.w = r9.z * r11.w + r12.x;
          r13.x = r11.z ? r11.w : r13.x;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r9.w = cmp(r13.x < r9.w);
      r7.w = r9.w ? 0 : 1;
    }
    if (r11.y == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.w;
        r11.yz = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r11.yz = sunConstants.splitPinTransform[r9.w].zz * r11.yz;
        r12.xy = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r12.z = r9.w + r8.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r7.z).x;
        r11.y = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
        r9.w = r11.y + r9.w;
        r9.w = saturate(-1 + r9.w);
        r11.y = r9.w * r9.w;
        r7.w = r11.y * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r12.x = -r7.x;
        r9.w = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r11.x = 1 + -r11.x;
        r11.x = 28 * r11.x;
        r11.x = (uint)r11.x;
        r11.yz = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r11.yz = sunConstants.splitPinTransform[r9.w].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.yz = -sunConstants.splitPinTransform[r8.w].xy + r9.yz;
        r9.yz = sunConstants.splitPinTransform[r8.w].zz * r9.yz;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.y = r8.x;
        r12.z = r7.x;
        r11.w = 0;
        r12.w = 0;
        while (true) {
          r13.x = cmp((uint)r12.w >= 8);
          if (r13.x != 0) break;
          r13.x = cmp((uint)r11.x < (uint)r12.w);
          r13.yz = r13.xx ? r9.yz : r11.yz;
          r13.w = r13.x ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r9.w].w;
          r13.x = r13.x ? r8.w : r9.w;
          r14.x = dot(icb[r12.w+0].yx, r12.xy);
          r14.y = dot(icb[r12.w+0].yx, r12.yz);
          r14.xy = r14.xy * r13.ww + r13.yz;
          r13.x = (int)r13.x + (int16)sunConstants.splitArrayOffset;
          r14.z = (uint)r13.x;
          r13.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r7.z).x;
          r13.y = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
          r13.x = r13.x + r13.y;
          r13.x = saturate(-1 + r13.x);
          r11.w = r13.x * 0.125 + r11.w;
          r12.w = (int)r12.w + 1;
        }
        r7.z = r11.w * r11.w;
        r7.w = r7.z * r11.w;
      }
    }
  }
  r7.z = cmp(0 < r6.w);
  if (r7.z != 0) {
    r7.z = cmp(0 < r7.w);
    if (r7.z != 0) {
      r7.z = sunConstants.specScale * r4.w;
      r7.z = r7.z * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r11.xyz = eyeOffset.xyz + v7.xyz;
        r11.w = 1;
        r8.w = dot(sunConstants.sunCookieTransform[0].xyzw, r11.xyzw);
        r9.y = dot(sunConstants.sunCookieTransform[1].xyzw, r11.xyzw);
        r11.x = frac(r8.w);
        r11.y = frac(r9.y);
        r8.w = -1 + (int14)sunConstants.sunCookieIndex;
        r11.z = (uint)r8.w;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r11.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      r8.w = viewmodelSunShadowRaw >> 16;
      r11.x = cmp(0 < (uint)r8.w);
      r11.x = r3.w ? r11.x : 0;
      if (r11.x != 0) {
        r8.w = (int)r8.w + numLights;
        r8.w = (int)r8.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.x, r8.w, l(52), t12.xxxx
      r11.x = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r8.w, l(68), t12.xyzw
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
      r12.z = samp0[]..swiz;
      r12.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r8.w, l(84), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r8.w, l(132), t12.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(148), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
        r11.y = abs(r6.z) * -0.200000003 + 0.400000006;
        r16.xyz = r1.xyz * r11.yyy + v7.xyz;
        r16.w = 1;
        r12.x = dot(r12.xyzw, r16.xyzw);
        r12.y = dot(r13.xyzw, r16.xyzw);
        r11.yz = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = r11.yz + r15.zw;
        r11.yz = r11.yz * r15.xy;
        r12.xy = r11.xx / r14.xz;
        r12.zw = float2(1,1) + -r12.xy;
        r12.zw = cmp(r11.yz >= r12.zw);
        r12.xy = cmp(r12.xy >= r11.yz);
        r12.xy = (int2)r12.xy | (int2)r12.zw;
        r11.w = (int)r12.y | (int)r12.x;
        if (r11.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(28), t12.xxxx
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r8.w, l(100), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xy, r8.w, l(164), t12.xyxx
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
          r8.w = dot(r12.xyzw, r16.xyzw);
          r11.yz = saturate(r11.yz);
          r12.xy = r11.yz * r14.xz + r14.yw;
          r8.w = r8.w + r13.x;
          r8.w = r8.w / r13.y;
          r8.w = max(6.10351563e-05, r8.w);
          r11.y = (int)r11.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r13.x = -r7.x;
            r14.z = (uint)r11.y;
            r13.y = r8.x;
            r13.z = r7.x;
            r11.zw = float2(0,0);
            while (true) {
              r12.w = cmp((int)r11.w >= 8);
              if (r12.w != 0) break;
              r15.x = dot(icb[r11.w+0].yx, r13.xy);
              r15.y = dot(icb[r11.w+0].yx, r13.yz);
              r14.xy = r15.xy * r11.xx + r12.xy;
              r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r8.w).x;
              r11.z = r12.w * 0.125 + r11.z;
              r11.w = (int)r11.w + 1;
            }
          } else {
            r12.z = (uint)r11.y;
            r11.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r8.w).x;
          }
          r8.w = r11.z * r11.z;
          r8.w = r8.w * r11.z;
        } else {
          r8.w = 1;
        }
        r7.w = r8.w * r7.w;
      } else {
        r8.w = viewmodelSunShadowRaw & 0x0000ffff;
        r11.x = cmp(0 < (uint)r8.w);
        r11.y = ~(int)r3.w;
        r11.x = r11.x ? r11.y : 0;
        if (r11.x != 0) {
          r8.w = (int)r8.w + numLights;
          r8.w = (int)r8.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.x, r8.w, l(52), t12.xxxx
        r11.x = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r8.w, l(68), t12.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r8.w, l(84), t12.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r8.w, l(132), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(148), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
          r11.y = abs(r6.z) * -0.200000003 + 0.400000006;
          r16.xyz = r1.xyz * r11.yyy + v7.xyz;
          r16.w = 1;
          r12.x = dot(r12.xyzw, r16.xyzw);
          r12.y = dot(r13.xyzw, r16.xyzw);
          r11.yz = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r11.yz = r11.yz + r15.zw;
          r11.yz = r11.yz * r15.xy;
          r12.xy = r11.xx / r14.xz;
          r12.zw = float2(1,1) + -r12.xy;
          r12.zw = cmp(r11.yz >= r12.zw);
          r12.xy = cmp(r12.xy >= r11.yz);
          r12.xy = (int2)r12.xy | (int2)r12.zw;
          r11.w = (int)r12.y | (int)r12.x;
          if (r11.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r8.w, l(28), t12.xxxx
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r8.w, l(100), t12.xyzw
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xy, r8.w, l(164), t12.xyxx
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
            r8.w = dot(r12.xyzw, r16.xyzw);
            r11.yz = saturate(r11.yz);
            r12.xy = r11.yz * r14.xz + r14.yw;
            r8.w = r8.w + r13.x;
            r8.w = r8.w / r13.y;
            r8.w = max(6.10351563e-05, r8.w);
            r11.y = (int)r11.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r13.x = -r7.x;
              r14.z = (uint)r11.y;
              r13.y = r8.x;
              r13.z = r7.x;
              r11.zw = float2(0,0);
              while (true) {
                r12.w = cmp((int)r11.w >= 8);
                if (r12.w != 0) break;
                r15.x = dot(icb[r11.w+0].yx, r13.xy);
                r15.y = dot(icb[r11.w+0].yx, r13.yz);
                r14.xy = r15.xy * r11.xx + r12.xy;
                r12.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r8.w).x;
                r11.z = r12.w * 0.125 + r11.z;
                r11.w = (int)r11.w + 1;
              }
            } else {
              r12.z = (uint)r11.y;
              r11.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r8.w).x;
            }
            r8.w = r11.z * r11.z;
            r8.w = r8.w * r11.z;
          } else {
            r8.w = 1;
          }
          r7.w = r8.w * r7.w;
        }
      }
      r8.w = -r6.x * 0.5 + 1;
      r8.w = -r6.w * r8.w + 1;
      r8.w = r8.w * r8.w;
      r8.w = -r8.w * 0.620000005 + 0.620000005;
      r8.w = r8.w + -r6.w;
      r8.w = r5.y * r8.w + r6.w;
      r8.w = r8.w * r7.w;
      r11.xyz = r8.www * r9.yzw;
      r6.z = cmp(0 < r6.z);
      r12.xyz = -v7.xyz * r3.xxx + sunConstants.wldDir.xyz;
      r3.x = dot(r12.xyz, r12.xyz);
      r3.x = rsqrt(r3.x);
      r12.xyz = r12.xyz * r3.xxx;
      r3.x = dot(r12.xyz, r4.xyz);
      r8.w = dot(r1.xyz, r12.xyz);
      r12.x = abs(r8.w) * r4.w + -abs(r8.w);
      r8.w = abs(r8.w) * r12.x + 1;
      r6.w = r6.w * r5.z + r5.w;
      r8.w = r8.w * r8.w;
      r6.w = r8.w * r6.w;
      r6.w = rcp(r6.w);
      r6.w = r6.w * r7.z;
      r6.w = r7.w * r6.w;
      r6.w = 0.25 * r6.w;
      r12.xyz = r6.www * r9.yzw;
      r3.x = saturate(1 + -r3.x);
      r7.z = r3.x * r3.x;
      r7.z = r7.z * r7.z;
      r3.x = r7.z * r3.x;
      r3.x = r6.w * r3.x;
      r13.xyz = r3.xxx * r9.zwy;
      r11.w = r13.z;
      r11.xyzw = r6.zzzz ? r11.xyzw : 0;
      r13.zw = r12.xy;
      r13.xyzw = r6.zzzz ? r13.xyzw : 0;
      r3.x = r6.z ? r12.z : 0;
    } else {
      r11.xyzw = float4(0,0,0,0);
      r13.xyzw = float4(0,0,0,0);
      r3.x = 0;
    }
  } else {
    r11.xyzw = float4(0,0,0,0);
    r13.xyzw = float4(0,0,0,0);
    r3.x = 0;
  }
  r2.w = 0.0078125 * r2.w;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r12.xy = (uint2)r3.yz >> int2(6,6);
  r12.z = (uint)r2.w << 4;
  r14.x = -r7.x;
  r2.w = ~(int)r3.w;
  r3.y = -r6.x * 0.5 + 1;
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v7.xyz;
  r17.w = 1;
  r18.w = 1;
  r14.z = r7.x;
  r19.w = 1;
  r20.z = 1;
  r21.w = 1;
  r14.yw = r8.xx;
  r7.y = r14.w;
  r22.w = 1;
  r8.y = r14.x;
  r8.z = r7.x;
  r23.w = 1;
  r24.x = r8.x;
  r24.y = r14.x;
  r24.z = r7.x;
  r25.x = r8.x;
  r25.y = r14.x;
  r25.z = r7.x;
  r26.x = r8.x;
  r26.y = r14.x;
  r26.z = r7.x;
  r9.yzw = r11.xyz;
  r27.x = r11.w;
  r27.yz = r13.xy;
  r28.xy = r13.zw;
  r28.z = r3.x;
  r3.z = enableDitheredShadow;
  r6.z = 0;
  while (true) {
    r6.w = cmp((uint)r6.z >= numLights);
    if (r6.w != 0) break;
    r15.z = (uint)r6.z >> 5;
    r16.xyz = (int3)r12.xyz + (int3)r15.xyz;
    r6.w = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r9.yzw;
    r29.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r7.z = r3.z;
    r7.w = r6.w;
    while (true) {
      if (r7.w == 0) break;
      r8.w = firstbitlow((uint)r7.w);
      r12.w = 1 << (int)r8.w;
      r15.z = (int)r7.w & (int)r12.w;
      if (r15.z != 0) {
        r7.w = (int)r7.w ^ (int)r12.w;
        r8.w = (int)r6.z + (int)r8.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r8.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v7.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r12.w = r31.y ? r31.x : 0;
        r12.w = r31.z ? r12.w : 0;
        if (r12.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r8.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r12.w = 0; else if (3+24 < 32) {           r12.w = (uint)r32.w << (32-(3 + 24)); r12.w = (uint)r12.w >> (32-3);          } else r12.w = (uint)r32.w >> 24;
          switch (r12.w) {
            case 4 :            r12.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v7.xyz + r39.xyz;
            r15.z = dot(r38.xyz, r40.xyz);
            r15.w = saturate(-r15.z / r37.x);
            r41.xyz = r15.www * r38.xyz + r39.xyz;
            r41.xyz = r12.www ? r41.xyz : r31.yzw;
            r41.xyz = -v7.xyz + r41.xyz;
            r20.w = dot(r41.xyz, r41.xyz);
            r24.w = rsqrt(r20.w);
            r41.xyz = r41.xyz * r24.www;
            r24.w = dot(r1.xyz, r41.xyz);
            r25.w = saturate(r24.w);
            r26.w = cmp(0 < r25.w);
            if (r26.w != 0) {
              r26.w = sqrt(r20.w);
              r27.w = r34.x * r34.x;
              r20.w = r27.w / r20.w;
              r20.w = min(1, r20.w);
              r41.xy = saturate(r26.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r20.w = r41.x * r20.w;
              r20.w = r20.w * r41.y;
              r26.w = cmp(0 < r20.w);
              if (r26.w != 0) {
                if (3 == 0) r26.w = 0; else if (3+27 < 32) {                 r26.w = (uint)r32.w << (32-(3 + 27)); r26.w = (uint)r26.w >> (32-3);                } else r26.w = (uint)r32.w >> 27;
                r26.w = cmp((int)r26.w != 1);
                if (r26.w != 0) {
                  r26.w = abs(r24.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r1.xyz * r26.www + v7.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r26.w = max(abs(r41.y), abs(r41.z));
                  r26.w = max(abs(r41.x), r26.w);
                  r26.w = r36.x / r26.w;
                  r26.w = r26.w + r36.y;
                  r27.w = dot(r41.xyz, r41.xyz);
                  r27.w = rsqrt(r27.w);
                  r26.w = max(6.10351563e-05, r26.w);
                  r28.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r28.w;
                  r28.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r43.y = dot(icb[r29.w+0].yx, r14.xy);
                    r43.z = dot(icb[r29.w+0].yx, r14.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r9.x;
                    r43.w = r43.y * r5.x;
                    r42.xyz = r41.xyz * r27.www + r43.xzw;
                    r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r26.w).x;
                    r28.w = r30.w * 0.125 + r28.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r28.w = 1;
                }
                r20.w = r28.w * r20.w;
                r26.w = cmp(0 < r20.w);
                if (r26.w != 0) {
                  r26.w = r32.x * r4.w;
                  r26.w = 0.25 * r26.w;
                  r27.w = dot(r38.xyz, r10.xyz);
                  r29.w = dot(r10.xyz, r40.xyz);
                  r30.w = -r27.w * r27.w + r37.x;
                  r15.z = r27.w * r29.w + -r15.z;
                  r15.z = saturate(r15.z / r30.w);
                  r27.w = r30.w / r37.x;
                  r27.w = 10 * r27.w;
                  r27.w = min(1, r27.w);
                  r15.z = r15.z + -r15.w;
                  r15.z = r27.w * r15.z + r15.w;
                  r38.xyz = r15.zzz * r38.xyz + r39.xyz;
                  r38.xyz = r12.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v7.xyz + r38.xyz;
                  r12.w = dot(r38.xyz, r38.xyz);
                  r12.w = rsqrt(r12.w);
                  r39.xyz = r38.xyz * r12.www;
                  if (4 == 0) r15.z = 0; else if (4+16 < 32) {                   r15.z = (uint)r32.w << (32-(4 + 16)); r15.z = (uint)r15.z >> (32-4);                  } else r15.z = (uint)r32.w >> 16;
                  r15.w = cmp(0 < (uint)r15.z);
                  r15.w = r3.w ? r15.w : 0;
                  if (r15.w != 0) {
                    r15.z = (int)r15.z + numLights;
                    r15.z = (int)r15.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r15.z, l(52), t12.xxxx
                  r15.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.z, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.z, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r27.w = abs(r24.w) * -0.200000003 + 0.400000006;
                    r18.xyz = r1.xyz * r27.www + v7.xyz;
                    r27.w = dot(r40.xyzw, r18.xyzw);
                    r29.w = dot(r41.xyzw, r18.xyzw);
                    r30.w = cmp(r29.w < r27.w);
                    if (r30.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.z, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.z, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r15.z, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r15.z, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r15.z, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r18.xyzw);
                      r40.y = dot(r41.xyzw, r18.xyzw);
                      r18.xy = r40.xy / r29.ww;
                      r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r18.xy = r18.xy + r43.zw;
                      r18.xy = r18.xy * r43.xy;
                      r40.xy = r15.ww / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r18.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r18.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r18.z = (int)r40.y | (int)r40.x;
                      r18.xy = saturate(r18.xy);
                      r40.xy = r18.xy * r42.xz + r42.yw;
                      r18.x = r44.y * r29.w;
                      r18.y = r44.x * r29.w + r27.w;
                      r18.x = r18.y / r18.x;
                    } else {
                      r18.z = -1;
                    }
                    r18.y = (int)r30.w | (int)r18.z;
                    if (r18.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(28), t12.xxxx
                    r15.z = samp0[]..swiz;
                      r18.x = max(6.10351563e-05, r18.x);
                      r15.z = (int)r15.z & 0x0000ffff;
                      if (r7.z != 0) {
                        r41.z = (uint)r15.z;
                        r18.yz = float2(0,0);
                        while (true) {
                          r27.w = cmp((int)r18.z >= 8);
                          if (r27.w != 0) break;
                          r42.x = dot(icb[r18.z+0].yx, r14.xw);
                          r42.y = dot(icb[r18.z+0].xy, r7.xy);
                          r41.xy = r42.xy * r15.ww + r40.xy;
                          r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r18.x).x;
                          r18.y = r27.w * 0.125 + r18.y;
                          r18.z = (int)r18.z + 1;
                        }
                      } else {
                        r40.z = (uint)r15.z;
                        r18.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                      }
                      r15.z = r18.y * r18.y;
                      r15.z = r15.z * r18.y;
                    } else {
                      r15.z = 1;
                    }
                    r20.w = r20.w * r15.z;
                  } else {
                    if (4 == 0) r15.z = 0; else if (4+20 < 32) {                     r15.z = (uint)r32.w << (32-(4 + 20)); r15.z = (uint)r15.z >> (32-4);                    } else r15.z = (uint)r32.w >> 20;
                    r15.w = cmp(0 < (uint)r15.z);
                    r15.w = r15.w ? r2.w : 0;
                    if (r15.w != 0) {
                      r15.z = (int)r15.z + numLights;
                      r15.z = (int)r15.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r15.z, l(52), t12.xxxx
                    r15.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.z, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.z, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r18.x = abs(r24.w) * -0.200000003 + 0.400000006;
                      r19.xyz = r1.xyz * r18.xxx + v7.xyz;
                      r18.x = dot(r40.xyzw, r19.xyzw);
                      r18.z = dot(r41.xyzw, r19.xyzw);
                      r27.w = cmp(r18.z < r18.x);
                      if (r27.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r15.z, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r15.z, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r15.z, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r15.z, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r15.z, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r19.xyzw);
                        r40.y = dot(r41.xyzw, r19.xyzw);
                        r19.xy = r40.xy / r18.zz;
                        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r19.xy = r19.xy + r43.zw;
                        r19.xy = r19.xy * r43.xy;
                        r40.xy = r15.ww / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r19.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r19.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r19.z = (int)r40.y | (int)r40.x;
                        r19.xy = saturate(r19.xy);
                        r40.xy = r19.xy * r42.xz + r42.yw;
                        r19.x = r44.y * r18.z;
                        r18.x = r44.x * r18.z + r18.x;
                        r18.x = r18.x / r19.x;
                      } else {
                        r19.z = -1;
                      }
                      r18.z = (int)r27.w | (int)r19.z;
                      if (r18.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.z, r15.z, l(28), t12.xxxx
                      r15.z = samp0[]..swiz;
                        r18.x = max(6.10351563e-05, r18.x);
                        r15.z = (int)r15.z & 0x0000ffff;
                        if (r7.z != 0) {
                          r19.z = (uint)r15.z;
                          r18.z = 0;
                          r27.w = 0;
                          while (true) {
                            r29.w = cmp((int)r27.w >= 8);
                            if (r29.w != 0) break;
                            r41.x = dot(icb[r27.w+0].xy, r8.xy);
                            r41.y = dot(icb[r27.w+0].yx, r8.xz);
                            r19.xy = r41.xy * r15.ww + r40.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r18.x).x;
                            r18.z = r19.x * 0.125 + r18.z;
                            r27.w = (int)r27.w + 1;
                          }
                        } else {
                          r40.z = (uint)r15.z;
                          r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                        }
                        r15.z = r18.z * r18.z;
                        r15.z = r15.z * r18.z;
                      } else {
                        r15.z = 1;
                      }
                      r20.w = r20.w * r15.z;
                    }
                  }
                  r15.z = -r25.w * r3.y + 1;
                  r15.z = r15.z * r15.z;
                  r15.z = -r15.z * 0.620000005 + 0.620000005;
                  r15.z = r15.z + -r25.w;
                  r15.z = r5.y * r15.z + r25.w;
                  r15.z = r15.z * r20.w;
                  r32.x = r31.x;
                  r15.w = cmp(0 < r24.w);
                  r19.xyz = r15.zzz * r32.xyz + r16.xyz;
                  r15.z = saturate(dot(r1.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r12.www + r4.xyz;
                  r12.w = dot(r38.xyz, r38.xyz);
                  r12.w = rsqrt(r12.w);
                  r38.xyz = r38.xyz * r12.www;
                  r12.w = dot(r38.xyz, r4.xyz);
                  r18.x = dot(r1.xyz, r38.xyz);
                  r24.w = abs(r18.x) * r4.w + -abs(r18.x);
                  r18.x = abs(r18.x) * r24.w + 1;
                  r24.w = r15.z * r5.z + r5.w;
                  r18.x = r18.x * r18.x;
                  r18.x = r18.x * r24.w;
                  r18.x = rcp(r18.x);
                  r15.z = r15.z * r26.w;
                  r15.z = r18.x * r15.z;
                  r15.z = r15.z * r20.w;
                  r38.xyz = r15.zzz * r32.xyz + r30.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r18.x = r12.w * r12.w;
                  r18.x = r18.x * r18.x;
                  r12.w = r18.x * r12.w;
                  r12.w = r15.z * r12.w;
                  r39.xyz = r12.www * r32.xyz + r29.xyz;
                  r16.xyz = r15.www ? r19.xyz : r16.xyz;
                  r29.xyz = r15.www ? r39.xyz : r29.xyz;
                  r30.xyz = r15.www ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r34.zw;
            r19.z = r35.w;
            r19.xyz = -v7.xyz + r19.xyz;
            r12.w = dot(r19.xyz, r19.xyz);
            r12.w = rsqrt(r12.w);
            r38.xyz = r19.xyz * r12.www;
            r15.z = dot(r1.xyz, r38.xyz);
            r15.w = saturate(r15.z);
            r18.x = cmp(0 < r15.w);
            if (r18.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r8.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r8.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r18.x = dot(r40.xyzw, r17.xyzw);
              r20.w = cmp(r18.x < 1);
              if (r20.w != 0) {
                r41.xyz = float3(1,1,1);
                r20.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r8.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r8.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.w, r8.w, l(236), t12.xxxx
              r24.w = samp0[]..swiz;
                r45.xyz = -v7.xyz + r31.yzw;
                r25.w = r34.x * r34.x;
                r26.w = dot(r45.xyz, r45.xyz);
                r25.w = r25.w / r26.w;
                r25.w = min(1, r25.w);
                r33.xy = saturate(r18.xx * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r25.w = r33.x * r25.w;
                r25.w = r25.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r17.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r17.xyzw);
                r20.xy = r33.xy / r18.xx;
                r18.x = cmp(r42.w < 0.00048828125);
                if (r18.x != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r20.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r18.x = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r20.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r43.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r44.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r26.w = r43.z * r33.x;
                  r27.w = r43.w * r33.y + -1;
                  r26.w = r43.w * r33.y + -r26.w;
                  r26.w = saturate(r27.w / r26.w);
                  r27.w = r26.w * r26.w;
                  r26.w = r26.w * -2 + 3;
                  r18.x = r27.w * r26.w;
                }
                r20.w = r25.w * r18.x;
                r18.x = (int)r24.w & 255;
                if (r18.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r8.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r24.w = dot(r44.yzw, r20.xyz);
                  r20.x = dot(r33.xyz, r20.xyz);
                  r33.x = frac(r24.w);
                  r33.y = frac(r20.x);
                  r18.x = (int)r18.x + -1;
                  r33.z = (uint)r18.x;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r31.xyz = r31.xyz * r41.xyz;
              r18.x = cmp(0 < r20.w);
              if (r18.x != 0) {
                if (3 == 0) r18.x = 0; else if (3+27 < 32) {                 r18.x = (uint)r32.w << (32-(3 + 27)); r18.x = (uint)r18.x >> (32-3);                } else r18.x = (uint)r32.w >> 27;
                r18.x = cmp((int)r18.x != 1);
                if (r18.x != 0) {
                  r18.x = abs(r15.z) * -0.200000003 + 0.400000006;
                  r21.xyz = r1.xyz * r18.xxx + v7.xyz;
                  r38.xyz = r37.xyz;
                  r18.x = dot(r38.xyzw, r21.xyzw);
                  r20.x = dot(r40.xyzw, r21.xyzw);
                  r20.y = cmp(r20.x >= r18.x);
                  if (r20.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r8.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r33.x = dot(r35.xyzw, r21.xyzw);
                    r37.xyz = r36.yzw;
                    r33.y = dot(r37.xyzw, r21.xyzw);
                    r21.xy = r33.xy / r20.xx;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r21.xy * r39.zw + r39.xy;
                    r8.w = r18.x / r20.x;
                    r8.w = max(6.10351563e-05, r8.w);
                    r18.x = (int)r32.w & 0x0000ffff;
                    if (r7.z != 0) {
                      r33.z = (uint)r18.x;
                      r20.xy = float2(0,0);
                      while (true) {
                        r24.w = cmp((int)r20.y >= 8);
                        if (r24.w != 0) break;
                        r35.x = dot(icb[r20.y+0].xy, r24.xy);
                        r35.y = dot(icb[r20.y+0].yx, r24.xz);
                        r33.xy = r35.xy * r34.yy + r21.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r8.w).x;
                        r20.x = r24.w * 0.125 + r20.x;
                        r20.y = (int)r20.y + 1;
                      }
                    } else {
                      r21.z = (uint)r18.x;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r8.w).x;
                    }
                    r8.w = r20.x * r20.x;
                    r8.w = r8.w * r20.x;
                  } else {
                    r8.w = 1;
                  }
                } else {
                  r8.w = 1;
                }
                r8.w = r20.w * r8.w;
                r18.x = cmp(0 < r8.w);
                if (r18.x != 0) {
                  r18.x = r32.x * r4.w;
                  r18.x = r18.x * r15.w;
                  if (4 == 0) r20.y = 0; else if (4+16 < 32) {                   r20.y = (uint)r32.w << (32-(4 + 16)); r20.y = (uint)r20.y >> (32-4);                  } else r20.y = (uint)r32.w >> 16;
                  r20.w = cmp(0 < (uint)r20.y);
                  r20.w = r3.w ? r20.w : 0;
                  if (r20.w != 0) {
                    r20.y = (int)r20.y + numLights;
                    r20.y = (int)r20.y + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r20.y, l(52), t12.xxxx
                  r20.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r20.y, l(68), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r20.y, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r20.y, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r20.y, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r20.y, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r20.y, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r21.x = abs(r15.z) * -0.200000003 + 0.400000006;
                    r22.xyz = r1.xyz * r21.xxx + v7.xyz;
                    r21.x = dot(r33.xyzw, r22.xyzw);
                    r21.y = dot(r34.xyzw, r22.xyzw);
                    r21.z = dot(r35.xyzw, r22.xyzw);
                    r22.x = dot(r36.xyzw, r22.xyzw);
                    r22.y = cmp(r22.x < r21.z);
                    r21.xy = r21.xy / r22.xx;
                    r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.xy = r21.xy + r38.zw;
                    r21.xy = r21.xy * r38.xy;
                    r32.xy = r20.ww / r37.xz;
                    r33.xy = float2(1,1) + -r32.xy;
                    r33.xy = cmp(r21.xy >= r33.xy);
                    r32.xy = cmp(r32.xy >= r21.xy);
                    r32.xy = (int2)r32.xy | (int2)r33.xy;
                    r22.z = (int)r32.y | (int)r32.x;
                    r22.y = (int)r22.y | (int)r22.z;
                    if (r22.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r20.y, l(28), t12.xxxx
                    r22.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r20.y, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r21.xy = saturate(r21.xy);
                      r33.xy = r21.xy * r37.xz + r37.yw;
                      r20.y = r32.y * r22.x;
                      r21.x = r32.x * r22.x + r21.z;
                      r20.y = r21.x / r20.y;
                      r20.y = max(6.10351563e-05, r20.y);
                      r21.x = r22.y ? 0.000000 : 0;
                      if (r7.z != 0) {
                        r22.z = (uint)r21.x;
                        r21.yz = float2(0,0);
                        while (true) {
                          r24.w = cmp((int)r21.z >= 8);
                          if (r24.w != 0) break;
                          r32.x = dot(icb[r21.z+0].xy, r25.xy);
                          r32.y = dot(icb[r21.z+0].yx, r25.xz);
                          r22.xy = r32.xy * r20.ww + r33.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.y).x;
                          r21.y = r22.x * 0.125 + r21.y;
                          r21.z = (int)r21.z + 1;
                        }
                      } else {
                        r33.z = (uint)r21.x;
                        r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r20.y).x;
                      }
                      r20.y = r21.y * r21.y;
                      r20.y = r20.y * r21.y;
                    } else {
                      r20.y = 1;
                    }
                    r8.w = r20.y * r8.w;
                  } else {
                    if (4 == 0) r20.y = 0; else if (4+20 < 32) {                     r20.y = (uint)r32.w << (32-(4 + 20)); r20.y = (uint)r20.y >> (32-4);                    } else r20.y = (uint)r32.w >> 20;
                    r20.w = cmp(0 < (uint)r20.y);
                    r20.w = r20.w ? r2.w : 0;
                    if (r20.w != 0) {
                      r20.y = (int)r20.y + numLights;
                      r20.y = (int)r20.y + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r20.y, l(52), t12.xxxx
                    r20.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r20.y, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r20.y, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r20.y, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r20.y, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r20.y, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r20.y, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r21.x = abs(r15.z) * -0.200000003 + 0.400000006;
                      r23.xyz = r1.xyz * r21.xxx + v7.xyz;
                      r22.x = dot(r32.xyzw, r23.xyzw);
                      r22.y = dot(r33.xyzw, r23.xyzw);
                      r21.x = dot(r34.xyzw, r23.xyzw);
                      r21.z = dot(r35.xyzw, r23.xyzw);
                      r22.z = cmp(r21.z < r21.x);
                      r22.xy = r22.xy / r21.zz;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r37.zw;
                      r22.xy = r22.xy * r37.xy;
                      r23.xy = r20.ww / r36.xz;
                      r32.xy = float2(1,1) + -r23.xy;
                      r32.xy = cmp(r22.xy >= r32.xy);
                      r23.xy = cmp(r23.xy >= r22.xy);
                      r23.xy = (int2)r23.xy | (int2)r32.xy;
                      r23.x = (int)r23.y | (int)r23.x;
                      r22.z = (int)r22.z | (int)r23.x;
                      if (r22.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.z, r20.y, l(28), t12.xxxx
                      r22.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r20.y, l(164), t12.xyxx
                      r23.x = samp0[]..swiz;
                      r23.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r32.xy = r22.xy * r36.xz + r36.yw;
                        r20.y = r23.y * r21.z;
                        r21.x = r23.x * r21.z + r21.x;
                        r20.y = r21.x / r20.y;
                        r20.y = max(6.10351563e-05, r20.y);
                        r21.x = r22.z ? 0.000000 : 0;
                        if (r7.z != 0) {
                          r22.z = (uint)r21.x;
                          r21.z = 0;
                          r23.x = 0;
                          while (true) {
                            r23.y = cmp((int)r23.x >= 8);
                            if (r23.y != 0) break;
                            r33.x = dot(icb[r23.x+0].xy, r26.xy);
                            r33.y = dot(icb[r23.x+0].yx, r26.xz);
                            r22.xy = r33.xy * r20.ww + r32.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.y).x;
                            r21.z = r22.x * 0.125 + r21.z;
                            r23.x = (int)r23.x + 1;
                          }
                        } else {
                          r32.z = (uint)r21.x;
                          r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r20.y).x;
                        }
                        r20.y = r21.z * r21.z;
                        r20.y = r20.y * r21.z;
                      } else {
                        r20.y = 1;
                      }
                      r8.w = r20.y * r8.w;
                    }
                  }
                  r20.y = -r15.w * r3.y + 1;
                  r20.y = r20.y * r20.y;
                  r20.y = -r20.y * 0.620000005 + 0.620000005;
                  r20.y = r20.y + -r15.w;
                  r20.y = r5.y * r20.y + r15.w;
                  r20.y = r20.y * r8.w;
                  r15.z = cmp(0 < r15.z);
                  r22.xyz = r20.yyy * r31.xyz + r16.xyz;
                  r19.xyz = r19.xyz * r12.www + r4.xyz;
                  r12.w = dot(r19.xyz, r19.xyz);
                  r12.w = rsqrt(r12.w);
                  r19.xyz = r19.xyz * r12.www;
                  r12.w = dot(r19.xyz, r4.xyz);
                  r19.x = dot(r1.xyz, r19.xyz);
                  r19.y = abs(r19.x) * r4.w + -abs(r19.x);
                  r19.x = abs(r19.x) * r19.y + 1;
                  r15.w = r15.w * r5.z + r5.w;
                  r19.x = r19.x * r19.x;
                  r15.w = r19.x * r15.w;
                  r15.w = rcp(r15.w);
                  r15.w = r15.w * r18.x;
                  r8.w = r15.w * r8.w;
                  r8.w = 0.25 * r8.w;
                  r19.xyz = r8.www * r31.xyz + r30.xyz;
                  r12.w = saturate(1 + -r12.w);
                  r15.w = r12.w * r12.w;
                  r15.w = r15.w * r15.w;
                  r12.w = r15.w * r12.w;
                  r8.w = r12.w * r8.w;
                  r23.xyz = r8.www * r31.xyz + r29.xyz;
                  r16.xyz = r15.zzz ? r22.xyz : r16.xyz;
                  r29.xyz = r15.zzz ? r23.xyz : r29.xyz;
                  r30.xyz = r15.zzz ? r19.xyz : r30.xyz;
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
    r9.yzw = r16.xyz;
    r27.xyz = r29.xyz;
    r28.xyz = r30.xyz;
    r6.z = (int)r6.z + 32;
  }
  r2.w = 1 + -r6.y;
  r3.x = 5 * r2.w;
  r3.y = r2.w * 5 + -2.5;
  r3.y = 0.400000006 * r3.y;
  r3.y = max(0, r3.y);
  r3.zw = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r3.z = exp2(r3.z);
  r3.z = r6.x * r3.z;
  r4.x = r3.x * r2.w;
  r3.w = -r4.x * 2.0159049 + r3.w;
  r3.w = exp2(r3.w);
  r3.w = r6.x * r3.w;
  r3.yzw = float3(100,9.1368103,9.70808983) * r3.yzw;
  r3.z = max(r3.z, r3.w);
  r3.z = max(1.26815999, r3.z);
  r3.w = numRefProbes + -numOverrideProbes;
  r4.x = (int)r3.w & -32;
  r4.y = (int)r3.w + (int)-r4.x;
  r4.z = numRefProbes & -32;
  r4.w = (int)-r4.z + numRefProbes;
  r5.xy = float2(0,0);
  r7.w = 0;
  r8.yz = float2(0,1);
  r11.xy = float2(0,0);
  r13.x = 1;
  r14.xy = float2(0,0);
  r15.xy = float2(0,0);
  r16.xyzw = float4(0,0,0,0);
  r17.yzw = float3(0,0,0);
  r5.w = r4.x;
  while (true) {
    r6.z = cmp((uint)r5.w >= numRefProbes);
    if (r6.z != 0) break;
    r5.z = (uint)r5.w >> 5;
    r7.xyz = (int3)r5.xyz + (int3)r12.xyz;
    r5.z = visibleProbes.Load(r7.xyzw).x;
    r6.z = cmp((int)r4.x == (int)r5.w);
    bitmask.w = ((~(-1 << r4.y)) << 0) & 0xffffffff;  r6.w = (((uint)0 << 0) & bitmask.w) | ((uint)r5.z & ~bitmask.w);
    r5.z = r6.z ? r6.w : r5.z;
    r6.z = cmp((int)r4.z == (int)r5.w);
    if (r4.w == 0) r6.w = 0; else if (r4.w+0 < 32) {     r6.w = (uint)r5.z << (32-(r4.w + 0)); r6.w = (uint)r6.w >> (32-r4.w);    } else r6.w = (uint)r5.z >> 0;
    r5.z = r6.z ? r6.w : r5.z;
    r6.z = (int)r5.w + numLights;
    r18.xyzw = r16.xyzw;
    r19.xyz = r17.yzw;
    r6.w = r5.z;
    while (true) {
      if (r6.w == 0) break;
      r7.x = firstbitlow((uint)r6.w);
      r7.y = 1 << (int)r7.x;
      r7.z = (int)r6.w & (int)r7.y;
      if (r7.z != 0) {
        r6.w = (int)r6.w ^ (int)r7.y;
        r7.y = (int)r6.z + (int)r7.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xyzw, r7.y, l(0), t11.xyzw
      r20.x = samp0[]..swiz;
      r20.y = samp0[]..swiz;
      r20.z = samp0[]..swiz;
      r20.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xy, r7.y, l(16), t11.xyxx
      r21.x = samp0[]..swiz;
      r21.y = samp0[]..swiz;
        r20.xyz = -v7.xyz + r20.xyz;
        r21.z = r20.w;
        r20.xyz = cmp(abs(r20.xyz) < r21.zxy);
        r7.y = r20.y ? r20.x : 0;
        r7.y = r20.z ? r7.y : 0;
        if (r7.y != 0) {
          r7.x = (int)r5.w + (int)r7.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r20.xyzw, r7.x, l(0), t15.wxyz
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r7.yz, r7.x, l(96), t15.xxyx
        r7.y = samp0[]..swiz;
        r7.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r7.x, l(116), t15.zwxy
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
          r22.xyz = v7.xyz + -r20.yzw;
          r8.w = (int)r21.w & 0x0000ffff;
          if (6 == 0) r9.x = 0; else if (6+25 < 32) {           r9.x = (uint)r21.w << (32-(6 + 25)); r9.x = (uint)r9.x >> (32-6);          } else r9.x = (uint)r21.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r23.xyzw, r8.w, l(0), t16.xyzw
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r8.w, l(16), t16.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r8.w, l(32), t16.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r8.w, l(48), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r8.w, l(64), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(80), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
          r11.w = dot(r23.xyz, r22.xyz);
          r11.w = saturate(r11.w + r23.w);
          r12.w = dot(r24.xyz, r22.xyz);
          r12.w = saturate(r12.w + r24.w);
          r11.w = r12.w * r11.w;
          r12.w = dot(r25.xyz, r22.xyz);
          r12.w = saturate(r12.w + r25.w);
          r11.w = r12.w * r11.w;
          r12.w = dot(r26.xyz, r22.xyz);
          r12.w = saturate(r12.w + r26.w);
          r11.w = r12.w * r11.w;
          r12.w = dot(r29.xyz, r22.xyz);
          r12.w = saturate(r12.w + r29.w);
          r11.w = r12.w * r11.w;
          r12.w = dot(r30.xyz, r22.xyz);
          r12.w = saturate(r12.w + r30.w);
          r8.x = r12.w * r11.w;
          r11.w = (int)r7.y & 1;
          r13.zw = r11.ww ? r8.xy : r8.zx;
          r8.x = r7.y;
          r23.xy = r13.zw;
          r11.w = 1;
          while (true) {
            r12.w = cmp((int)r11.w >= (int)r9.x);
            if (r12.w != 0) break;
            r12.w = (int)r8.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r12.w, l(0), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r12.w, l(16), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r12.w, l(32), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r12.w, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r12.w, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r12.w = dot(r24.xyz, r22.xyz);
            r12.w = saturate(r12.w + r24.w);
            r12.w = r23.x * r12.w;
            r14.w = dot(r25.xyz, r22.xyz);
            r14.w = saturate(r14.w + r25.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r26.xyz, r22.xyz);
            r14.w = saturate(r14.w + r26.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r29.xyz, r22.xyz);
            r14.w = saturate(r14.w + r29.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r30.xyz, r22.xyz);
            r14.w = saturate(r14.w + r30.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r31.xyz, r22.xyz);
            r14.w = saturate(r14.w + r31.w);
            r23.x = r14.w * r12.w;
            r15.w = (uint)r8.x >> 2;
            if (1 == 0) r20.w = 0; else if (1+2 < 32) {             r20.w = (uint)r8.x << (32-(1 + 2)); r20.w = (uint)r20.w >> (32-1);            } else r20.w = (uint)r8.x >> 2;
            r22.w = (int)r15.w & 2;
            r23.z = max(r23.y, r23.x);
            r12.w = -r12.w * r14.w + 1;
            r12.w = r23.y * r12.w;
            r13.y = r22.w ? r12.w : r23.z;
            r23.xy = r20.ww ? r23.xy : r13.xy;
            r11.w = (int)r11.w + 1;
            r8.x = r15.w;
          }
          r23.y = saturate(r23.y);
          r7.y = r23.y * r7.z;
          r8.x = cmp(0 < r7.y);
          if (r8.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r7.x, l(16), t15.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r7.x, l(32), t15.yxwz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r7.x, l(48), t15.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r7.x, l(64), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r7.x, l(80), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r7.x, l(132), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r7.x, l(148), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r7.x, l(164), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r7.x, l(180), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r7.x, l(196), t15.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r7.x, l(212), t15.xyxx
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
            r19.z = r23.y * r7.z + r19.z;
            r7.x = r7.y * r21.z;
            r21.z = r31.z;
            r7.y = dot(r10.xyz, r21.xyz);
            r7.z = dot(r22.xyz, r21.xyz);
            r7.z = r7.z + -r31.w;
            r8.x = cmp(r7.z >= 0);
            r7.z = max(abs(r7.z), r3.y);
            r7.z = r8.x ? r7.z : -r7.z;
            r7.y = max(1.00000001e-07, -r7.y);
            r7.y = r7.z / r7.y;
            r7.y = min(131072, abs(r7.y));
            r31.z = r32.z;
            r7.z = dot(r10.xyz, r31.xyz);
            r8.x = dot(r22.xyz, r31.xyz);
            r8.x = r8.x + -r32.w;
            r8.w = cmp(r8.x >= 0);
            r8.x = max(abs(r8.x), r3.y);
            r8.x = r8.w ? r8.x : -r8.x;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r8.x / r7.z;
            r7.y = min(r7.y, abs(r7.z));
            r32.z = r33.z;
            r7.z = dot(r10.xyz, r32.xyz);
            r8.x = dot(r22.xyz, r32.xyz);
            r8.x = r8.x + -r33.w;
            r8.w = cmp(r8.x >= 0);
            r8.x = max(abs(r8.x), r3.y);
            r8.x = r8.w ? r8.x : -r8.x;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r8.x / r7.z;
            r7.y = min(r7.y, abs(r7.z));
            r33.z = r34.z;
            r7.z = dot(r10.xyz, r33.xyz);
            r8.x = dot(r22.xyz, r33.xyz);
            r8.x = r8.x + -r34.w;
            r8.w = cmp(r8.x >= 0);
            r8.x = max(abs(r8.x), r3.y);
            r8.x = r8.w ? r8.x : -r8.x;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r8.x / r7.z;
            r7.y = min(r7.y, abs(r7.z));
            r34.z = r35.x;
            r7.z = dot(r10.xyz, r34.xyz);
            r8.x = dot(r22.xyz, r34.xyz);
            r8.x = r8.x + -r35.y;
            r8.w = cmp(r8.x >= 0);
            r8.x = max(abs(r8.x), r3.y);
            r8.x = r8.w ? r8.x : -r8.x;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r8.x / r7.z;
            r7.y = min(r7.y, abs(r7.z));
            r36.zw = r35.zw;
            r7.z = dot(r10.zxy, r36.xzw);
            r8.x = dot(r22.zxy, r36.xzw);
            r8.x = r8.x + -r36.y;
            r8.w = cmp(r8.x >= 0);
            r8.x = max(abs(r8.x), r3.y);
            r8.x = r8.w ? r8.x : -r8.x;
            r7.z = max(1.00000001e-07, -r7.z);
            r7.z = r8.x / r7.z;
            r7.y = min(r7.y, abs(r7.z));
            r21.x = r26.w;
            r21.yz = r29.zw;
            r13.yzw = r21.xyz + r22.xyz;
            r13.yzw = r10.xyz * r7.yyy + r13.yzw;
            r7.z = dot(r13.yzw, r13.yzw);
            r7.z = sqrt(r7.z);
            r7.y = r7.y / r7.z;
            r7.y = r7.y + r7.y;
            r7.y = sqrt(r7.y);
            r7.y = r2.w * 5 + r7.y;
            r7.y = -0.844799995 + r7.y;
            r20.y = r24.z;
            r20.z = r25.x;
            r31.x = dot(r13.yzw, r20.xyz);
            r21.xy = r24.xw;
            r21.z = r25.w;
            r31.y = dot(r13.yzw, r21.xyz);
            r25.x = r24.y;
            r31.z = dot(r13.yzw, r25.xyz);
            if (9 == 0) r7.z = 0; else if (9+16 < 32) {             r7.z = (uint)r21.w << (32-(9 + 16)); r7.z = (uint)r7.z >> (32-9);            } else r7.z = (uint)r21.w >> 16;
            r31.w = (uint)r7.z;
            r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r7.y).xyz;
            r24.x = dot(r22.xyz, r20.xyz);
            r24.y = dot(r22.xyz, r21.xyz);
            r24.z = dot(r22.xyz, r25.xyz);
            r22.xyz = saturate(r24.xyz * r26.xyz + float3(0.5,0.5,0.5));
            r29.z = r30.x;
            r22.xyz = r22.xyz * r29.xyz + r30.yzw;
            r31.x = dot(r1.xyz, r20.xyz);
            r31.y = dot(r1.xyz, r21.xyz);
            r31.z = dot(r1.xyz, r25.xyz);
            r20.xyz = cmp(float3(0,0,0) < r31.xyz);
            r11.z = r20.x ? 0 : 0.5;
            r21.xyz = r22.xyz + r11.xyz;
            r21.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
            r23.xzw = r31.xyz * r31.xyz;
            r23.xzw = r23.xzw * r7.xxx;
            r14.z = r20.y ? 0 : 0.5;
            r20.xyw = r22.xyz + r14.xyz;
            r20.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r20.xyw, 0).xyz;
            r20.xyw = r20.xyw * r23.zzz;
            r20.xyw = r21.xyz * r23.xxx + r20.xyw;
            r15.z = r20.z ? 0 : 0.5;
            r21.xyz = r22.xyz + r15.xyz;
            r21.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
            r20.xyz = r21.xyz * r23.www + r20.xyw;
            r21.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
            r22.xyz = r21.xyz * r20.xyz;
            r7.y = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r18.xyz = r20.xyz * r21.xyz + r18.xyz;
            r7.z = r7.y * r3.z;
            r13.yzw = r13.yzw * r7.xxx;
            r7.x = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r7.x = r3.z * r7.y + r7.x;
            r7.x = r7.z / r7.x;
            r20.x = r18.w;
            r20.yz = r19.xy;
            r19.xyw = r13.zwy * r7.xxx + r20.yzx;
            r18.w = r19.w;
          }
        }
      }
    }
    r16.xyzw = r18.xyzw;
    r17.yzw = r19.xyz;
    r5.w = (int)r5.w + 32;
  }
  r4.z = cmp(r17.w < 1);
  if (r4.z != 0) {
    r5.xy = float2(0,0);
    r7.w = 0;
    r8.yz = float2(0,1);
    r11.xy = float2(0,0);
    r13.x = 1;
    r14.xy = float2(0,0);
    r15.xy = float2(0,0);
    r18.x = r16.w;
    r18.yzw = r17.yzw;
    r19.xyz = r16.xyz;
    r4.z = r17.w;
    r4.w = 0;
    while (true) {
      r5.w = cmp((uint)r4.w >= (uint)r3.w);
      if (r5.w != 0) break;
      r5.z = (uint)r4.w >> 5;
      r7.xyz = (int3)r5.xyz + (int3)r12.xyz;
      r5.z = visibleProbes.Load(r7.xyzw).x;
      r5.w = cmp((int)r4.x == (int)r4.w);
      if (r4.y == 0) r6.z = 0; else if (r4.y+0 < 32) {       r6.z = (uint)r5.z << (32-(r4.y + 0)); r6.z = (uint)r6.z >> (32-r4.y);      } else r6.z = (uint)r5.z >> 0;
      r5.z = r5.w ? r6.z : r5.z;
      r5.w = (int)r4.w + numLights;
      r20.xyzw = r18.xyzw;
      r7.xyz = r19.xyz;
      r6.z = r4.z;
      r6.w = r5.z;
      while (true) {
        if (r6.w == 0) break;
        r8.w = firstbitlow((uint)r6.w);
        r9.x = 1 << (int)r8.w;
        r11.w = (int)r6.w & (int)r9.x;
        if (r11.w != 0) {
          r6.w = (int)r6.w ^ (int)r9.x;
          r9.x = (int)r5.w + (int)r8.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r21.xyzw, r9.x, l(0), t11.xyzw
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xy, r9.x, l(16), t11.xyxx
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
          r21.xyz = -v7.xyz + r21.xyz;
          r22.z = r21.w;
          r21.xyz = cmp(abs(r21.xyz) < r22.zxy);
          r9.x = r21.y ? r21.x : 0;
          r9.x = r21.z ? r9.x : 0;
          if (r9.x != 0) {
            r8.w = (int)r4.w + (int)r8.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r21.xyzw, r8.w, l(0), t15.wxyz
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.zw, r8.w, l(96), t15.xxxy
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r8.w, l(116), t15.zwxy
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
            r23.xyz = v7.xyz + -r21.yzw;
            r9.x = (int)r22.w & 0x0000ffff;
            if (6 == 0) r11.w = 0; else if (6+25 < 32) {             r11.w = (uint)r22.w << (32-(6 + 25)); r11.w = (uint)r11.w >> (32-6);            } else r11.w = (uint)r22.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r24.xyzw, r9.x, l(0), t16.xyzw
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r25.xyzw, r9.x, l(16), t16.xyzw
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r9.x, l(32), t16.xyzw
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r9.x, l(48), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r9.x, l(64), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r9.x, l(80), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
            r12.w = dot(r24.xyz, r23.xyz);
            r12.w = saturate(r12.w + r24.w);
            r14.w = dot(r25.xyz, r23.xyz);
            r14.w = saturate(r14.w + r25.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r26.xyz, r23.xyz);
            r14.w = saturate(r14.w + r26.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r29.xyz, r23.xyz);
            r14.w = saturate(r14.w + r29.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r30.xyz, r23.xyz);
            r14.w = saturate(r14.w + r30.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r31.xyz, r23.xyz);
            r14.w = saturate(r14.w + r31.w);
            r8.x = r14.w * r12.w;
            r12.w = (int)r13.z & 1;
            r24.xy = r12.ww ? r8.xy : r8.zx;
            r8.x = r13.z;
            r25.xy = r24.xy;
            r12.w = 1;
            while (true) {
              r14.w = cmp((int)r12.w >= (int)r11.w);
              if (r14.w != 0) break;
              r14.w = (int)r9.x + (int)r12.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(0), t16.xyzw
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(16), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(32), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(48), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(64), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(80), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r14.w = dot(r26.xyz, r23.xyz);
              r14.w = saturate(r14.w + r26.w);
              r14.w = r25.x * r14.w;
              r15.w = dot(r29.xyz, r23.xyz);
              r15.w = saturate(r15.w + r29.w);
              r14.w = r15.w * r14.w;
              r15.w = dot(r30.xyz, r23.xyz);
              r15.w = saturate(r15.w + r30.w);
              r14.w = r15.w * r14.w;
              r15.w = dot(r31.xyz, r23.xyz);
              r15.w = saturate(r15.w + r31.w);
              r14.w = r15.w * r14.w;
              r15.w = dot(r32.xyz, r23.xyz);
              r15.w = saturate(r15.w + r32.w);
              r14.w = r15.w * r14.w;
              r15.w = dot(r33.xyz, r23.xyz);
              r15.w = saturate(r15.w + r33.w);
              r25.x = r15.w * r14.w;
              r19.w = (uint)r8.x >> 2;
              if (1 == 0) r21.w = 0; else if (1+2 < 32) {               r21.w = (uint)r8.x << (32-(1 + 2)); r21.w = (uint)r21.w >> (32-1);              } else r21.w = (uint)r8.x >> 2;
              r23.w = (int)r19.w & 2;
              r24.z = max(r25.y, r25.x);
              r14.w = -r14.w * r15.w + 1;
              r14.w = r25.y * r14.w;
              r13.y = r23.w ? r14.w : r24.z;
              r25.xy = r21.ww ? r25.xy : r13.xy;
              r12.w = (int)r12.w + 1;
              r8.x = r19.w;
            }
            r8.x = saturate(r25.y + -r6.z);
            r9.x = r8.x * r13.w;
            r11.w = cmp(0 < r9.x);
            if (r11.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r8.w, l(16), t15.xyzw
            r24.x = samp0[]..swiz;
            r24.y = samp0[]..swiz;
            r24.z = samp0[]..swiz;
            r24.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r8.w, l(32), t15.yxwz
            r26.x = samp0[]..swiz;
            r26.y = samp0[]..swiz;
            r26.z = samp0[]..swiz;
            r26.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r8.w, l(48), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r8.w, l(64), t15.zwxy
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r8.w, l(80), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r8.w, l(132), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r8.w, l(148), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r8.w, l(164), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r8.w, l(180), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r8.w, l(196), t15.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r8.w, l(212), t15.xyxx
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
              r20.w = r8.x * r13.w + r20.w;
              r8.x = r9.x * r22.z;
              r22.z = r32.z;
              r8.w = dot(r10.xyz, r22.xyz);
              r9.x = dot(r23.xyz, r22.xyz);
              r9.x = r9.x + -r32.w;
              r11.w = cmp(r9.x >= 0);
              r9.x = max(abs(r9.x), r3.y);
              r9.x = r11.w ? r9.x : -r9.x;
              r8.w = max(1.00000001e-07, -r8.w);
              r8.w = r9.x / r8.w;
              r8.w = min(131072, abs(r8.w));
              r32.z = r33.z;
              r9.x = dot(r10.xyz, r32.xyz);
              r11.w = dot(r23.xyz, r32.xyz);
              r11.w = r11.w + -r33.w;
              r12.w = cmp(r11.w >= 0);
              r11.w = max(abs(r11.w), r3.y);
              r11.w = r12.w ? r11.w : -r11.w;
              r9.x = max(1.00000001e-07, -r9.x);
              r9.x = r11.w / r9.x;
              r8.w = min(abs(r9.x), r8.w);
              r33.z = r34.z;
              r9.x = dot(r10.xyz, r33.xyz);
              r11.w = dot(r23.xyz, r33.xyz);
              r11.w = r11.w + -r34.w;
              r12.w = cmp(r11.w >= 0);
              r11.w = max(abs(r11.w), r3.y);
              r11.w = r12.w ? r11.w : -r11.w;
              r9.x = max(1.00000001e-07, -r9.x);
              r9.x = r11.w / r9.x;
              r8.w = min(abs(r9.x), r8.w);
              r34.z = r35.z;
              r9.x = dot(r10.xyz, r34.xyz);
              r11.w = dot(r23.xyz, r34.xyz);
              r11.w = r11.w + -r35.w;
              r12.w = cmp(r11.w >= 0);
              r11.w = max(abs(r11.w), r3.y);
              r11.w = r12.w ? r11.w : -r11.w;
              r9.x = max(1.00000001e-07, -r9.x);
              r9.x = r11.w / r9.x;
              r8.w = min(abs(r9.x), r8.w);
              r35.z = r36.x;
              r9.x = dot(r10.xyz, r35.xyz);
              r11.w = dot(r23.xyz, r35.xyz);
              r11.w = r11.w + -r36.y;
              r12.w = cmp(r11.w >= 0);
              r11.w = max(abs(r11.w), r3.y);
              r11.w = r12.w ? r11.w : -r11.w;
              r9.x = max(1.00000001e-07, -r9.x);
              r9.x = r11.w / r9.x;
              r8.w = min(abs(r9.x), r8.w);
              r37.zw = r36.zw;
              r9.x = dot(r10.zxy, r37.xzw);
              r11.w = dot(r23.zxy, r37.xzw);
              r11.w = r11.w + -r37.y;
              r12.w = cmp(r11.w >= 0);
              r11.w = max(abs(r11.w), r3.y);
              r11.w = r12.w ? r11.w : -r11.w;
              r9.x = max(1.00000001e-07, -r9.x);
              r9.x = r11.w / r9.x;
              r8.w = min(abs(r9.x), r8.w);
              r22.x = r29.w;
              r22.yz = r30.zw;
              r13.yzw = r22.xyz + r23.xyz;
              r13.yzw = r10.xyz * r8.www + r13.yzw;
              r9.x = dot(r13.yzw, r13.yzw);
              r9.x = sqrt(r9.x);
              r8.w = r8.w / r9.x;
              r8.w = r8.w + r8.w;
              r8.w = sqrt(r8.w);
              r8.w = r2.w * 5 + r8.w;
              r8.w = -0.844799995 + r8.w;
              r21.y = r24.z;
              r21.z = r26.x;
              r32.x = dot(r13.yzw, r21.xyz);
              r22.xy = r24.xw;
              r22.z = r26.w;
              r32.y = dot(r13.yzw, r22.xyz);
              r26.x = r24.y;
              r32.z = dot(r13.yzw, r26.xyz);
              if (9 == 0) r9.x = 0; else if (9+16 < 32) {               r9.x = (uint)r22.w << (32-(9 + 16)); r9.x = (uint)r9.x >> (32-9);              } else r9.x = (uint)r22.w >> 16;
              r32.w = (uint)r9.x;
              r13.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r8.w).xyz;
              r24.x = dot(r23.xyz, r21.xyz);
              r24.y = dot(r23.xyz, r22.xyz);
              r24.z = dot(r23.xyz, r26.xyz);
              r23.xyz = saturate(r24.xyz * r29.xyz + float3(0.5,0.5,0.5));
              r30.z = r31.x;
              r23.xyz = r23.xyz * r30.xyz + r31.yzw;
              r32.x = dot(r1.xyz, r21.xyz);
              r32.y = dot(r1.xyz, r22.xyz);
              r32.z = dot(r1.xyz, r26.xyz);
              r21.xyz = cmp(float3(0,0,0) < r32.xyz);
              r11.z = r21.x ? 0 : 0.5;
              r22.xyz = r23.xyz + r11.xyz;
              r22.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
              r24.xyz = r32.xyz * r32.xyz;
              r24.xyz = r24.xyz * r8.xxx;
              r14.z = r21.y ? 0 : 0.5;
              r21.xyw = r23.xyz + r14.xyz;
              r21.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyw, 0).xyz;
              r21.xyw = r21.xyw * r24.yyy;
              r21.xyw = r22.xyz * r24.xxx + r21.xyw;
              r15.z = r21.z ? 0 : 0.5;
              r22.xyz = r23.xyz + r15.xyz;
              r22.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r22.xyz, 0).xyz;
              r21.xyz = r22.xyz * r24.zzz + r21.xyw;
              r22.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
              r23.xyz = r22.xyz * r21.xyz;
              r8.w = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r7.xyz = r21.xyz * r22.xyz + r7.xyz;
              r9.x = r8.w * r3.z;
              r13.yzw = r13.yzw * r8.xxx;
              r8.x = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r8.x = r3.z * r8.w + r8.x;
              r8.x = r9.x / r8.x;
              r20.xyz = r13.yzw * r8.xxx + r20.xyz;
            }
          }
        }
      }
      r18.xyzw = r20.xyzw;
      r19.xyz = r7.xyz;
      r4.w = (int)r4.w + 32;
    }
    r17.xyzw = r18.zxyw;
    r16.xyz = r19.xyz;
    r17.xyzw = r17.yzxw;
  } else {
    r17.x = r16.w;
  }
  r2.w = max(1, r17.w);
  r2.w = rcp(r2.w);
  r17.w = saturate(r17.w);
  r3.yzw = r16.xyz * r2.www;
  r4.xyz = r17.xyz * r2.www;
  r4.w = cmp(r17.w < 0.99000001);
  if (r4.w != 0) {
    r4.w = 1 + -r17.w;
    r5.x = sunConstants.globalProbeExposure * r4.w;
    r5.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
    r7.x = globalProbeConstants.data[0].w * r5.y;
    r7.yz = globalProbeConstants.data[1].xy * r5.zw;
    r5.yzw = saturate(float3(0.5,0.5,0.5) + r7.xyz);
    r7.xy = globalProbeConstants.data[1].zw * r5.yz;
    r7.z = globalProbeConstants.data[2].x * r5.w;
    r5.yzw = globalProbeConstants.data[2].yzw + r7.xyz;
    r7.xyz = cmp(float3(0,0,0) < r1.xyz);
    r7.xyz = r7.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r7.w = 0;
    r8.xyz = r7.wwx + r5.yzw;
    r8.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r8.xyz, 0).xyz;
    r11.xyz = r1.xyz * r1.xyz;
    r11.xyz = r11.xyz * r5.xxx;
    r12.xyz = r7.wwy + r5.yzw;
    r12.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r11.yyy;
    r8.xyz = r8.xyz * r11.xxx + r12.xyz;
    r5.xyz = r7.wwz + r5.yzw;
    r5.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * r11.zzz + r8.xyz;
    r1.w = 0;
    r1.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
    r1.xyz = r5.xyz * r1.xyz;
    r1.w = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r3.yzw = r16.xyz * r2.www + r1.xyz;
    r10.w = 0;
    r1.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, r3.x).xyz;
    r2.w = sunConstants.globalProbeExposure * r4.w + -r1.w;
    r1.w = r6.y * r2.w + r1.w;
    r4.xyz = r1.xyz * r1.www + r4.xyz;
  }
  r1.xyz = r9.yzw + r3.yzw;
  r3.xy = r6.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r3.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r3.xy, 0).xy;
  r3.xzw = r4.xyz * r3.xxx + r27.xyz;
  r4.xyz = r4.xyz * r3.yyy + r28.xyz;
  r3.xyz = float3(0.959999979,0.959999979,0.959999979) * r3.xzw;
  r3.xyz = r4.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + r3.xyz;
  r0.xyz = r1.xyz * r0.xyz + r3.xyz;
  r1.x = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r1.x = max(9.99999975e-05, r1.x);
  r1.x = max(relHDRExposure.x, r1.x);
  r0.xyz = r2.xyz * r1.xxx + r0.xyz;
  r1.w = shieldOpacity * r0.w;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v7.xyz, v7.xyz);
    r2.x = rsqrt(r0.w);
    r2.xyz = v7.xyz * r2.xxx;
    r0.w = sqrt(r0.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r2.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.y * r0.w;
    r2.x = saturate(r2.x);
    r2.x = r2.x * r2.x + 1;
    r2.x = r2.x * 0.0596831031 + -1;
    r2.x = fogConstants.atmospheresunstrength * r2.x + 1;
    r2.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r2.xyz = r2.xxx * fogConstants.atmosphereRayleighDensity.xyz + r2.yzw;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r0.xyz * r3.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r2.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r3.x = cmp(abs(r0.w) < 9.99999975e-05);
    r3.y = min(64, r2.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r3.w ? r3.y : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r0.w = r3.x ? 1 : r0.w;
    r0.w = r2.w / r0.w;
    r0.w = r3.x ? r3.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r2.w = dot(v7.xyz, v7.xyz);
    r3.x = sqrt(r2.w);
    r0.w = r0.w * r3.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r2.w = rsqrt(r2.w);
    r3.xyz = v7.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r3.w * r0.w;
    r3.xyz = r3.xyz + -r0.xyz;
    r2.xyz = r0.www * r3.xyz + r0.xyz;
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
    imm_atomic_iadd r4.x, u6, r3.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r3.zw = (int2)r4.xx & int2(65535,65535);
    r0.w = cmp((uint)r3.w < oitMaxEntries);
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
      r4.x = (uint)v0.z << 2;
      r0.w = (int)r0.w & 2046;
      bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.y = (((uint)r0.w << 0) & bitmask.y) | ((uint)r4.x & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r3.xyzw, r2.xyzw
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