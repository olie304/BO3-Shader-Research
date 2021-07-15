// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:33 2021

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
  bool useUVOffsets : packoffset(c11.z);
  float2 sparkleTile : packoffset(c12);
  float3 specColorTint : packoffset(c13);
  float2 normalTile : packoffset(c14);
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
SamplerState normalSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState sparkleDataSampler_s : register(s3);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> normalMap : register(t0);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
Texture2DArray<uint> visibleLights : register(t6);
Texture2DArray<uint> visibleProbes : register(t7);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
StructuredBuffer<refProbeConstants> refProbeConstants : register(t15);
StructuredBuffer<refProbeAttenuationConstants> refProbeAttenuationConstants : register(t16);
Texture2DArray<float4> gCookieArray : register(t20);
Texture2D<float4> maskMap : register(t21);
Texture2D<float4> sparkleDataMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2DArray<float> gTransShadowmapArray : register(t31);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float3 v2 : UVOFFSETS0,
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
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = maskMap.Sample(sparkleDataSampler_s, v7.xy).x;
  r0.y = cmp(0 >= r0.x);
  r0.zw = normalTile.xy * w1.xy;
  r1.xyz = normalMap.Sample(normalSampler_s, r0.zw).xyz;
  r0.zw = sparkleTile.xy * w1.xy;
  r0.zw = sparkleDataMap.Sample(sparkleDataSampler_s, r0.zw).xy;
  if (r0.y != 0) {
    r0.y = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
    if (r0.y != 0) {
      r0.y = dot(v6.xyz, v6.xyz);
      r1.w = rsqrt(r0.y);
      r2.xyz = v6.xyz * r1.www;
      r0.y = sqrt(r0.y);
      r1.w = cmp(0 < fogConstants.blendAmount);
      if (r1.w != 0) {
        r3.xy = r0.yy * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
        r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
        r1.w = cmp(0.00999999978 < abs(v6.z));
        r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
        r4.xy = float2(-1.44269502,-1.44269502) * r3.zw;
        r4.xy = exp2(r4.xy);
        r4.xy = float2(1,1) + -r4.xy;
        r3.zw = r4.xy / r3.zw;
        r3.zw = r3.xy * r3.zw;
        r3.xy = r1.ww ? r3.zw : r3.xy;
        r3.xzw = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
        r3.xzw = exp2(r3.xzw);
        r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
        r4.xyz = exp2(r4.xyz);
        r4.xyz = r4.xyz + -r3.xzw;
        r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xzw;
      } else {
        r1.w = r0.y * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
        r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
        r2.w = cmp(0.00999999978 < abs(v6.z));
        r3.w = fogConstants.atmospherefogheightdensityscale.x * v6.z;
        r4.x = -1.44269502 * r3.w;
        r4.x = exp2(r4.x);
        r4.x = 1 + -r4.x;
        r3.w = r4.x / r3.w;
        r3.w = r3.w * r1.w;
        r1.w = r2.w ? r3.w : r1.w;
        r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
        r3.xyz = exp2(r4.xyz);
      }
      r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
      r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
      r1.w = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
      r2.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
      r2.y = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
      r2.y = r2.y * r2.y;
      r2.y = 12.566371 * r2.y;
      r2.x = r2.x / r2.y;
      r0.y = -fogConstants.atmospherehazebasedist + r0.y;
      r0.y = saturate(fogConstants.atmospherehazefadedist * r0.y);
      r0.y = r2.x * r0.y;
      r1.w = saturate(r1.w);
      r1.w = r1.w * r1.w + 1;
      r1.w = r1.w * 0.0596831031 + -1;
      r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
      r2.xyz = fogConstants.atmosphereMieDensity.xyz * r0.yyy;
      r2.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
      r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
      r3.xyz = float3(1,1,1) + -r3.xyz;
      r2.xyz = r3.xyz * r2.xyz;
    } else {
      r0.y = fogConstants.heightFalloff * v6.z;
      r1.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
      r2.w = cmp(abs(r0.y) < 9.99999975e-05);
      r3.x = min(64, r1.w);
      r3.x = 1.44269502 * r3.x;
      r3.x = exp2(r3.x);
      r3.y = saturate(fogConstants.K0b);
      r3.z = cmp(r1.w < 0);
      r1.w = 1 + r1.w;
      r1.w = r3.z ? r3.x : r1.w;
      r1.w = -fogConstants.K0b + r1.w;
      r0.y = r2.w ? 1 : r0.y;
      r0.y = r1.w / r0.y;
      r0.y = r2.w ? r3.y : r0.y;
      r0.y = fogConstants.expMul * r0.y;
      r1.w = dot(v6.xyz, v6.xyz);
      r2.w = sqrt(r1.w);
      r0.y = r0.y * r2.w + fogConstants.expAdd;
      r0.y = exp2(r0.y);
      r0.y = min(1, r0.y);
      r0.y = 1 + -r0.y;
      r1.w = rsqrt(r1.w);
      r3.xyz = v6.xyz * r1.www;
      r1.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
      r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
      r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
      r3.xyzw = r1.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
      r0.y = r3.w * r0.y;
      r2.xyz = r0.yyy * r3.xyz;
    }
    r2.xyz = relHDRExposure.yyy * r2.xyz;
    r3.xyz = cmp(r2.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
    r2.xyz = r3.xyz ? r2.xyz : 0;
    o0.xyz = min(float3(65024,65024,64512), r2.xyz);
    o0.w = 1;
    return;
  }
  r1.xyz = float3(-0.5,-0.5,-0) + r1.xyz;
  r1.xyz = baseNormalHeight * r1.xyz + float3(0.5,0.5,0);
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.y = dot(r1.xy, r1.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r1.w = v8.x ? 1 : -1;
  r2.x = dot(v3.xyz, v3.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v3.xyz * r2.xxx;
  r2.xyz = r2.xyz * r1.www;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = v4.xyz * r2.www;
  r3.xyz = r3.xyz * r1.www;
  r2.w = dot(v5.xyz, v5.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = v5.xyz * r2.www;
  r4.xyz = r4.xyz * r1.www;
  r1.z = 7.62939453e-06 + r1.z;
  r1.z = log2(r1.z);
  r1.z = -0.0588235296 * r1.z;
  r5.y = max(0, r1.z);
  r1.yzw = r4.xyz * r1.yyy;
  r1.xyz = r3.xyz * r1.xxx + r1.yzw;
  r1.xyz = r2.xyz * r0.yyy + r1.xyz;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r0.x = r0.z * r0.x;
  r0.yz = (uint2)v0.xy;
  r1.w = cmp(v0.z >= 0.984375);
  r2.x = 1.01587307 * v0.z;
  r2.y = v0.z * 64 + -63;
  r1.w = r1.w ? r2.y : r2.x;
  r1.w = max(9.99999994e-09, r1.w);
  r1.w = rcp(r1.w);
  r2.x = dot(-v6.xyz, -v6.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = -v6.xyz * r2.xxx;
  r2.w = dot(r1.xyz, r2.xyz);
  r5.x = saturate(r2.w);
  r3.x = dot(-r2.xyz, r1.xyz);
  r3.x = r3.x + r3.x;
  r3.xyz = r1.xyz * -r3.xxx + -r2.xyz;
  r4.x = 17 * r5.y;
  r4.x = exp2(r4.x);
  r4.x = 2 + r4.x;
  r4.x = 2 / r4.x;
  r4.y = numRefProbes + -numOverrideProbes;
  r1.w = 0.0078125 * r1.w;
  r1.w = min(15, r1.w);
  r1.w = (uint)r1.w;
  r6.xy = (uint2)r0.yz >> int2(6,6);
  r6.z = (uint)r1.w << 4;
  r1.w = (int)r4.y & -32;
  r4.z = (int)-r1.w + (int)r4.y;
  r4.w = numRefProbes & -32;
  r5.z = (int)-r4.w + numRefProbes;
  r7.xy = float2(0,0);
  r8.w = 0;
  r9.yz = float2(0,1);
  r10.x = 1;
  r11.x = 0;
  r5.w = r1.w;
  while (true) {
    r6.w = cmp((uint)r5.w >= numRefProbes);
    if (r6.w != 0) break;
    r7.z = (uint)r5.w >> 5;
    r8.xyz = (int3)r6.xyz + (int3)r7.xyz;
    r6.w = visibleProbes.Load(r8.xyzw).x;
    r7.z = cmp((int)r1.w == (int)r5.w);
    bitmask.w = ((~(-1 << r4.z)) << 0) & 0xffffffff;  r7.w = (((uint)0 << 0) & bitmask.w) | ((uint)r6.w & ~bitmask.w);
    r6.w = r7.z ? r7.w : r6.w;
    r7.z = cmp((int)r4.w == (int)r5.w);
    if (r5.z == 0) r7.w = 0; else if (r5.z+0 < 32) {     r7.w = (uint)r6.w << (32-(r5.z + 0)); r7.w = (uint)r7.w >> (32-r5.z);    } else r7.w = (uint)r6.w >> 0;
    r6.w = r7.z ? r7.w : r6.w;
    r7.z = (int)r5.w + numLights;
    r7.w = r11.x;
    r8.x = r6.w;
    while (true) {
      if (r8.x == 0) break;
      r8.y = firstbitlow((uint)r8.x);
      r8.z = 1 << (int)r8.y;
      r9.w = (int)r8.z & (int)r8.x;
      if (r9.w != 0) {
        r8.x = (int)r8.z ^ (int)r8.x;
        r8.z = (int)r7.z + (int)r8.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xyzw, r8.z, l(0), t11.xyzw
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
      r12.z = samp0[]..swiz;
      r12.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r8.z, l(16), t11.xyxx
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
        r11.yzw = -v6.xyz + r12.xyz;
        r13.z = r12.w;
        r11.yzw = cmp(abs(r11.yzw) < r13.zxy);
        r8.z = r11.z ? r11.y : 0;
        r8.z = r11.w ? r8.z : 0;
        if (r8.z != 0) {
          r8.y = (int)r5.w + (int)r8.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.yzw, r8.y, l(0), t15.xxyz
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.zw, r8.y, l(96), t15.xxxy
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.y, r8.y, l(120), t15.xxxx
        r8.y = samp0[]..swiz;
          r11.yzw = v6.xyz + -r11.yzw;
          r8.z = (int)r8.y & 0x0000ffff;
          if (6 == 0) r8.y = 0; else if (6+25 < 32) {           r8.y = (uint)r8.y << (32-(6 + 25)); r8.y = (uint)r8.y >> (32-6);          } else r8.y = (uint)r8.y >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r12.xyzw, r8.z, l(0), t16.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r13.xyzw, r8.z, l(16), t16.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r8.z, l(32), t16.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r8.z, l(48), t16.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(64), t16.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r8.z, l(80), t16.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
          r9.w = dot(r12.xyz, r11.yzw);
          r9.w = saturate(r9.w + r12.w);
          r12.x = dot(r13.xyz, r11.yzw);
          r12.x = saturate(r12.x + r13.w);
          r9.w = r12.x * r9.w;
          r12.x = dot(r14.xyz, r11.yzw);
          r12.x = saturate(r12.x + r14.w);
          r9.w = r12.x * r9.w;
          r12.x = dot(r15.xyz, r11.yzw);
          r12.x = saturate(r12.x + r15.w);
          r9.w = r12.x * r9.w;
          r12.x = dot(r16.xyz, r11.yzw);
          r12.x = saturate(r12.x + r16.w);
          r9.w = r12.x * r9.w;
          r12.x = dot(r17.xyz, r11.yzw);
          r12.x = saturate(r12.x + r17.w);
          r9.x = r12.x * r9.w;
          r9.w = (int)r10.z & 1;
          r9.xw = r9.ww ? r9.xy : r9.zx;
          r12.z = r10.z;
          r12.xy = r9.xw;
          r12.w = 1;
          while (true) {
            r13.x = cmp((int)r12.w >= (int)r8.y);
            if (r13.x != 0) break;
            r13.x = (int)r8.z + (int)r12.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r13.x, l(0), t16.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r13.x, l(16), t16.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r13.x, l(32), t16.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r13.x, l(48), t16.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r13.x, l(64), t16.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r13.xyzw, r13.x, l(80), t16.xyzw
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
            r14.x = dot(r14.xyz, r11.yzw);
            r14.x = saturate(r14.x + r14.w);
            r14.x = r14.x * r12.x;
            r14.y = dot(r15.xyz, r11.yzw);
            r14.y = saturate(r14.y + r15.w);
            r14.x = r14.x * r14.y;
            r14.y = dot(r16.xyz, r11.yzw);
            r14.y = saturate(r14.y + r16.w);
            r14.x = r14.x * r14.y;
            r14.y = dot(r17.xyz, r11.yzw);
            r14.y = saturate(r14.y + r17.w);
            r14.x = r14.x * r14.y;
            r14.y = dot(r18.xyz, r11.yzw);
            r14.y = saturate(r14.y + r18.w);
            r14.x = r14.x * r14.y;
            r13.x = dot(r13.xyz, r11.yzw);
            r13.x = saturate(r13.x + r13.w);
            r12.x = r14.x * r13.x;
            r13.y = (uint)r12.z >> 2;
            if (1 == 0) r13.z = 0; else if (1+2 < 32) {             r13.z = (uint)r12.z << (32-(1 + 2)); r13.z = (uint)r13.z >> (32-1);            } else r13.z = (uint)r12.z >> 2;
            r13.w = (int)r13.y & 2;
            r14.y = max(r12.y, r12.x);
            r13.x = -r14.x * r13.x + 1;
            r13.x = r13.x * r12.y;
            r10.y = r13.w ? r13.x : r14.y;
            r12.xy = r13.zz ? r12.xy : r10.xy;
            r12.w = (int)r12.w + 1;
            r12.z = r13.y;
          }
          r12.y = saturate(r12.y);
          r8.y = r12.y * r10.w;
          r8.y = cmp(0 < r8.y);
          if (r8.y != 0) {
            r7.w = r12.y * r10.w + r7.w;
          }
        }
      }
    }
    r11.x = r7.w;
    r5.w = (int)r5.w + 32;
  }
  r4.w = cmp(r11.x < 1);
  if (r4.w != 0) {
    r7.xy = float2(0,0);
    r8.w = 0;
    r9.yz = float2(0,1);
    r10.x = 1;
    r4.w = r11.x;
    r5.z = r11.x;
    r5.w = 0;
    while (true) {
      r6.w = cmp((uint)r5.w >= (uint)r4.y);
      if (r6.w != 0) break;
      r7.z = (uint)r5.w >> 5;
      r8.xyz = (int3)r6.xyz + (int3)r7.xyz;
      r6.w = visibleProbes.Load(r8.xyzw).x;
      r7.z = cmp((int)r1.w == (int)r5.w);
      if (r4.z == 0) r7.w = 0; else if (r4.z+0 < 32) {       r7.w = (uint)r6.w << (32-(r4.z + 0)); r7.w = (uint)r7.w >> (32-r4.z);      } else r7.w = (uint)r6.w >> 0;
      r6.w = r7.z ? r7.w : r6.w;
      r7.z = (int)r5.w + numLights;
      r7.w = r4.w;
      r8.x = r5.z;
      r8.y = r6.w;
      while (true) {
        if (r8.y == 0) break;
        r8.z = firstbitlow((uint)r8.y);
        r9.w = 1 << (int)r8.z;
        r10.z = (int)r8.y & (int)r9.w;
        if (r10.z != 0) {
          r8.y = (int)r8.y ^ (int)r9.w;
          r9.w = (int)r7.z + (int)r8.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xyzw, r9.w, l(0), t11.xyzw
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r9.w, l(16), t11.xyxx
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
          r11.yzw = -v6.xyz + r12.xyz;
          r13.z = r12.w;
          r11.yzw = cmp(abs(r11.yzw) < r13.zxy);
          r9.w = r11.z ? r11.y : 0;
          r9.w = r11.w ? r9.w : 0;
          if (r9.w != 0) {
            r8.z = (int)r5.w + (int)r8.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.yzw, r8.z, l(0), t15.xxyz
          r11.y = samp0[]..swiz;
          r11.z = samp0[]..swiz;
          r11.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.zw, r8.z, l(96), t15.xxxy
          r10.z = samp0[]..swiz;
          r10.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.z, r8.z, l(120), t15.xxxx
          r8.z = samp0[]..swiz;
            r11.yzw = v6.xyz + -r11.yzw;
            r9.w = (int)r8.z & 0x0000ffff;
            if (6 == 0) r8.z = 0; else if (6+25 < 32) {             r8.z = (uint)r8.z << (32-(6 + 25)); r8.z = (uint)r8.z >> (32-6);            } else r8.z = (uint)r8.z >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r12.xyzw, r9.w, l(0), t16.xyzw
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          r12.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r13.xyzw, r9.w, l(16), t16.xyzw
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          r13.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r9.w, l(32), t16.xyzw
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r9.w, l(48), t16.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r9.w, l(64), t16.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r9.w, l(80), t16.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
            r12.x = dot(r12.xyz, r11.yzw);
            r12.x = saturate(r12.x + r12.w);
            r12.y = dot(r13.xyz, r11.yzw);
            r12.y = saturate(r12.y + r13.w);
            r12.x = r12.x * r12.y;
            r12.y = dot(r14.xyz, r11.yzw);
            r12.y = saturate(r12.y + r14.w);
            r12.x = r12.x * r12.y;
            r12.y = dot(r15.xyz, r11.yzw);
            r12.y = saturate(r12.y + r15.w);
            r12.x = r12.x * r12.y;
            r12.y = dot(r16.xyz, r11.yzw);
            r12.y = saturate(r12.y + r16.w);
            r12.x = r12.x * r12.y;
            r12.y = dot(r17.xyz, r11.yzw);
            r12.y = saturate(r12.y + r17.w);
            r9.x = r12.x * r12.y;
            r12.x = (int)r10.z & 1;
            r12.xy = r12.xx ? r9.xy : r9.zx;
            r9.x = r10.z;
            r13.xy = r12.xy;
            r12.z = 1;
            while (true) {
              r12.w = cmp((int)r12.z >= (int)r8.z);
              if (r12.w != 0) break;
              r12.w = (int)r9.w + (int)r12.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r12.w, l(0), t16.xyzw
            r14.x = samp0[]..swiz;
            r14.y = samp0[]..swiz;
            r14.z = samp0[]..swiz;
            r14.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r12.w, l(16), t16.xyzw
            r15.x = samp0[]..swiz;
            r15.y = samp0[]..swiz;
            r15.z = samp0[]..swiz;
            r15.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r12.w, l(32), t16.xyzw
            r16.x = samp0[]..swiz;
            r16.y = samp0[]..swiz;
            r16.z = samp0[]..swiz;
            r16.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r12.w, l(48), t16.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r12.w, l(64), t16.xyzw
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r12.w, l(80), t16.xyzw
            r19.x = samp0[]..swiz;
            r19.y = samp0[]..swiz;
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
              r12.w = dot(r14.xyz, r11.yzw);
              r12.w = saturate(r12.w + r14.w);
              r12.w = r13.x * r12.w;
              r13.z = dot(r15.xyz, r11.yzw);
              r13.z = saturate(r13.z + r15.w);
              r12.w = r13.z * r12.w;
              r13.z = dot(r16.xyz, r11.yzw);
              r13.z = saturate(r13.z + r16.w);
              r12.w = r13.z * r12.w;
              r13.z = dot(r17.xyz, r11.yzw);
              r13.z = saturate(r13.z + r17.w);
              r12.w = r13.z * r12.w;
              r13.z = dot(r18.xyz, r11.yzw);
              r13.z = saturate(r13.z + r18.w);
              r12.w = r13.z * r12.w;
              r13.z = dot(r19.xyz, r11.yzw);
              r13.z = saturate(r13.z + r19.w);
              r13.x = r13.z * r12.w;
              r13.w = (uint)r9.x >> 2;
              if (1 == 0) r14.x = 0; else if (1+2 < 32) {               r14.x = (uint)r9.x << (32-(1 + 2)); r14.x = (uint)r14.x >> (32-1);              } else r14.x = (uint)r9.x >> 2;
              r14.y = (int)r13.w & 2;
              r14.z = max(r13.y, r13.x);
              r12.w = -r12.w * r13.z + 1;
              r12.w = r13.y * r12.w;
              r10.y = r14.y ? r12.w : r14.z;
              r13.xy = r14.xx ? r13.xy : r10.xy;
              r12.z = (int)r12.z + 1;
              r9.x = r13.w;
            }
            r8.z = saturate(r13.y + -r8.x);
            r9.x = r8.z * r10.w;
            r9.x = cmp(0 < r9.x);
            if (r9.x != 0) {
              r7.w = r8.z * r10.w + r7.w;
            }
          }
        }
      }
      r4.w = r7.w;
      r5.w = (int)r5.w + 32;
    }
    r11.x = r4.w;
  }
  r11.x = saturate(r11.x);
  r1.w = cmp(r11.x < 0.99000001);
  if (r1.w != 0) {
    r1.w = 1 + -r5.y;
    r1.w = 5 * r1.w;
    r4.y = 1 + -r11.x;
    r4.y = sunConstants.globalProbeExposure * r4.y;
    r4.z = dot(v6.xyz, v6.xyz);
    r4.z = rsqrt(r4.z);
    r7.xyz = v6.xyz * r4.zzz;
    r4.z = dot(r3.xyz, -r7.xyz);
    r4.w = r4.z + -r0.w;
    r4.w = min(1, abs(r4.w));
    r4.w = 10 * r4.w;
    r4.w = min(1, r4.w);
    r5.z = r4.w * -2 + 3;
    r4.w = r4.w * r4.w;
    r4.w = -r5.z * r4.w + 1;
    r5.z = r4.w * r4.w;
    r5.z = r5.z * r5.z;
    r4.w = r5.z * r4.w;
    r4.w = r4.w * r0.x;
    r4.w = sunConstants.globalProbeExposure * r4.w;
    r4.w = 20 * r4.w;
    r4.z = 0.5 + r4.z;
    r4.z = saturate(4 * r4.z);
    r5.z = r4.z * -2 + 3;
    r4.z = r4.z * r4.z;
    r4.z = r5.z * r4.z;
    r4.z = r4.w * r4.z;
    r3.w = 0;
    r7.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, r1.w).xyz;
    r7.xyz = r7.xyz * r4.zzz;
    r1.w = r5.y * r4.y;
    r4.yzw = r7.xyz * r1.www;
  } else {
    r4.yzw = float3(0,0,0);
  }
  r5.xy = r5.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.xy = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.xy, 0).xy;
  r7.xyz = r5.xxx * r4.yzw;
  r4.yzw = r5.yyy * r4.yzw;
  r1.w = dot(r1.xyz, sunConstants.wldDir.xyz);
  r3.w = cmp(0 >= abs(r1.w));
  if (r3.w != 0) {
    r5.x = 0;
  }
  if (r3.w == 0) {
    r5.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r5.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r5.yzw;
    r5.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r5.yzw;
    r5.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r5.yzw;
    r3.w = -sunConstants.splitDepthOffset + r5.w;
    r3.w = -r3.w * 6.10351563e-05 + 1;
    r6.w = saturate(r3.w);
    r6.w = cmp(r3.w == r6.w);
    if (r6.w != 0) {
      r6.w = 0;
      r8.x = 0;
      while (true) {
        r8.y = cmp(r6.w >= 3);
        if (r8.y != 0) break;
        r8.y = (uint)r6.w;
        r8.zw = -sunConstants.splitPinTransform[r8.y].xy + r5.yz;
        r8.z = max(abs(r8.z), abs(r8.w));
        r8.x = sunConstants.splitPinTransform[r8.y].z * r8.z;
        r8.y = cmp(r8.x < 1);
        if (r8.y != 0) {
          break;
        }
        r6.w = 1 + r6.w;
        r8.x = 0;
      }
    } else {
      r6.w = 3;
      r8.x = 0;
    }
    r8.y = cmp(r6.w >= 3);
    if (r8.y != 0) {
      r9.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r10.xz = rcp(r9.xx);
      r10.y = -r10.z;
      r9.xyz = r5.yzy * r10.xyz + r9.yzy;
      r10.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r9.xyz = max(float3(0,0,0), r9.xyz);
      r9.xyz = min(r9.xyz, r10.xyz);
      r8.zw = sunConstants.sstLightingConstants.coordScale * r9.zy;
      r8.zw = floor(r8.zw);
      r8.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r8.w;
      r8.z = r8.w * sunConstants.sstLightingConstants.coordScale + r8.z;
      r8.z = (uint)r8.z;
      r8.z = (int)r8.z + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(0), t23.xxxx
    r8.w = samp0[]..swiz;
      r9.w = (int)r8.w & 0x40000000;
      r10.x = (uint)r8.w << 2;
      if (r9.w == 0) {
        r9.w = (int)r8.w & 0x01ffffff;
        r11.x = (int)r8.z + (int)r9.w;
        r8.z = (uint)r8.w >> 25;
        r8.z = (uint)r8.z;
        r9.xyz = r9.xyz * r8.zzz;
        r9.xyz = frac(r9.xyz);
        r9.xyz = float3(128,128,128) * r9.xyz;
        r9.xyz = (uint3)r9.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.x, l(0), t23.xxxx
      r11.z = samp0[]..swiz;
        r8.zw = (uint2)r9.zy >> int2(6,6);
        r9.w = (int)r11.z & 0xc0000000;
        r10.y = (int)r11.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.y, r10.y, l(0), t23.xxxx
      r10.y = samp0[]..swiz;
        r8.w = r8.w ? r11.z : r10.y;
        r10.y = (uint)r8.w >> 13;
        r8.z = r8.z ? r10.y : r8.w;
        r8.z = (int)r8.z & 8191;
        r12.x = (int)r8.z + (int)r11.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
      r12.z = samp0[]..swiz;
        r11.y = 0;
        r12.y = 1;
        r10.yzw = r9.www ? r11.xyz : r12.xyz;
        r12.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r8.zw = (uint2)r9.zy >> (uint2)r12.yy;
        r8.zw = (int2)r8.zw & int2(1,1);
        r11.w = (int)r10.w & 0xc0000000;
        r12.y = (int)r10.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.y, r12.y, l(0), t23.xxxx
      r12.y = samp0[]..swiz;
        r8.w = r8.w ? r10.w : r12.y;
        r12.y = (uint)r8.w >> 13;
        r8.z = r8.z ? r12.y : r8.w;
        r8.z = (int)r8.z & 8191;
        r12.x = (int)r8.z + (int)r10.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.x, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r10.yzw = r11.www ? r10.yzw : r12.xzw;
        r10.yzw = r9.www ? r11.xyz : r10.yzw;
        r8.z = (int)r10.w & 0xc0000000;
        if (r8.z == 0) {
          r8.z = (int)-r10.z + 6;
          r8.zw = (uint2)r9.zy >> (uint2)r8.zz;
          r9.w = (int)r10.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r8.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.z = (((uint)r8.z << 0) & bitmask.z) | ((uint)r8.w & ~bitmask.z);
          r8.z = (int)r8.z * 10;
          r8.z = (uint)r9.w >> (uint)r8.z;
          r8.z = (int)r8.z & 1023;
          r11.x = (int)r8.z + (int)r10.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.x, l(0), t23.xxxx
        r11.w = samp0[]..swiz;
          r11.yz = (int2)r10.zz + int2(1,2);
          r8.z = (int)-r11.y + 6;
          r8.zw = (uint2)r9.zy >> (uint2)r8.zz;
          r9.w = (int)r11.w & 0xc0000000;
          r10.z = (int)r11.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r8.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.z = (((uint)r8.z << 0) & bitmask.z) | ((uint)r8.w & ~bitmask.z);
          r8.z = (int)r8.z * 10;
          r8.z = (uint)r10.z >> (uint)r8.z;
          r8.z = (int)r8.z & 1023;
          r12.x = (int)r8.z + (int)r11.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.x, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          r12.y = r11.z;
          r12.xyz = r9.www ? r11.xyw : r12.xyz;
          r8.z = (int)-r12.y + 6;
          r8.zw = (uint2)r9.zy >> (uint2)r8.zz;
          r10.z = (int)r12.z & 0xc0000000;
          r11.y = (int)r12.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r8.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.z = (((uint)r8.z << 0) & bitmask.z) | ((uint)r8.w & ~bitmask.z);
          r8.z = (int)r8.z * 10;
          r8.z = (uint)r11.y >> (uint)r8.z;
          r8.z = (int)r8.z & 1023;
          r13.x = (int)r8.z + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.x, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r8.zw = r10.zz ? r12.xz : r13.xy;
          r10.yw = r9.ww ? r11.xw : r8.zw;
        }
        r8.z = (int)r10.w & 0xc0000000;
        if (r8.z == 0) {
          if (14 == 0) r8.w = 0; else if (14+15 < 32) {           r8.w = (uint)r10.w << (32-(14 + 15)); r8.w = (uint)r8.w >> (32-14);          } else r8.w = (uint)r10.w >> 15;
          r8.w = (uint)r8.w;
          r8.w = sunConstants.sstLightingConstants.constants.spanInInches * r8.w;
          r8.w = 6.10388815e-05 * r8.w;
          r11.xy = (int2)r10.ww & int2(32767,536870912);
          r9.w = (uint)r11.x;
          r9.w = sunConstants.sstLightingConstants.constants.spanInInches * r9.w;
          r9.w = 3.05185094e-05 * r9.w;
          r10.z = (int)r9.y & 3;
          r10.z = (int)r10.z + (int)r10.y;
          r10.z = (int)r10.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.z, r10.z, l(0), t23.xxxx
        r10.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r11.x = (((uint)r9.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r11.z = (((uint)r9.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r11.w = (((uint)r9.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r9.x = (uint)r10.z >> (uint)r11.x;
          r9.x = (int)r9.x & 255;
          r9.x = (uint)r9.x;
          r9.x = r9.x * r9.w;
          r9.x = r9.x * 0.00392156886 + r8.w;
          r9.y = (int)r11.z + 1;
          if (1 == 0) r9.z = 0; else if (1+1 < 32) {           r9.z = (uint)r9.z << (32-(1 + 1)); r9.z = (uint)r9.z >> (32-1);          } else r9.z = (uint)r9.z >> 1;
          r9.y = (int)r9.z + (int)r9.y;
          r9.y = (int)r9.y + (int)r10.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.y, r9.y, l(0), t23.xxxx
        r9.y = samp0[]..swiz;
          r9.y = (uint)r9.y >> (uint)r11.w;
          r9.y = (int)r9.y & 0x0000ffff;
          r9.y = (uint)r9.y;
          r9.y = r9.y * r9.w;
          r8.w = r9.y * 1.52590219e-05 + r8.w;
          r10.x = r11.y ? r9.x : r8.w;
        } else {
          r8.w = (int)r10.w & 0x80000000;
          r9.x = (int)r10.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.x, r9.x, l(0), t23.xxxx
        r9.x = samp0[]..swiz;
          r8.w = r8.w ? r9.x : 0;
          r9.x = (uint)r10.w << 2;
          r9.y = (uint)r8.w >> 16;
          r9.y = f16tof32(r9.y);
          r8.w = (int)r8.w & 0x0000ffff;
          r8.w = f16tof32(r8.w);
          r9.x = r5.y * r9.y + r9.x;
          r8.w = r5.z * r8.w + r9.x;
          r10.x = r8.z ? r8.w : r10.x;
        }
      }
      r5.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r5.w;
      r5.w = cmp(r10.x < r5.w);
      r5.x = r5.w ? 0 : 1;
    }
    if (r8.y == 0) {
      if (enableDitheredShadow == 0) {
        r5.w = (uint)r6.w;
        r8.yz = -sunConstants.splitPinTransform[r5.w].xy + r5.yz;
        r8.yz = sunConstants.splitPinTransform[r5.w].zz * r8.yz;
        r9.xy = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r5.w = (int16)sunConstants.splitArrayOffset;
        r9.z = r6.w + r5.w;
        r5.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r9.xyz, r3.w).x;
        r8.y = gTransShadowmapArray.SampleLevel(samp0_s, r9.xyz, 0).x;
        r5.w = r8.y + r5.w;
        r5.w = saturate(-1 + r5.w);
        r8.y = r5.w * r5.w;
        r5.x = r8.y * r5.w;
      }
      if (enableDitheredShadow != 0) {
        r0.yz = (uint2)r0.yz;
        r0.y = dot(r0.yz, float2(0.0671105608,0.00583714992));
        r0.y = frac(r0.y);
        r0.y = 52.9829178 * r0.y;
        r0.y = frac(r0.y);
        r0.y = r0.y * 6.28318548 + gameTick.w;
        sincos(r0.y, r9.x, r10.x);
        r11.x = -r9.x;
        r0.y = (uint)r6.w;
        r0.z = 1 + r6.w;
        r0.z = min(2, r0.z);
        r0.z = (uint)r0.z;
        r5.w = 1 + -r8.x;
        r5.w = 28 * r5.w;
        r5.w = (uint)r5.w;
        r8.xy = -sunConstants.splitPinTransform[r0.y].xy + r5.yz;
        r8.xy = sunConstants.splitPinTransform[r0.y].zz * r8.xy;
        r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r5.yz = -sunConstants.splitPinTransform[r0.z].xy + r5.yz;
        r5.yz = sunConstants.splitPinTransform[r0.z].zz * r5.yz;
        r5.yz = r5.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.y = r10.x;
        r11.z = r9.x;
        r6.w = 0;
        r8.z = 0;
        while (true) {
          r8.w = cmp((uint)r8.z >= 8);
          if (r8.w != 0) break;
          r8.w = cmp((uint)r5.w < (uint)r8.z);
          r9.xy = r8.ww ? r5.yz : r8.xy;
          r9.z = r8.w ? sunConstants.splitPinTransform[r0.z].w : sunConstants.splitPinTransform[r0.y].w;
          r8.w = r8.w ? r0.z : r0.y;
          r10.x = dot(icb[r8.z+0].yx, r11.xy);
          r10.y = dot(icb[r8.z+0].yx, r11.yz);
          r9.xy = r10.xy * r9.zz + r9.xy;
          r8.w = (int)r8.w + (int16)sunConstants.splitArrayOffset;
          r9.z = (uint)r8.w;
          r8.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r9.xyz, r3.w).x;
          r9.x = gTransShadowmapArray.SampleLevel(samp0_s, r9.xyz, 0).x;
          r8.w = r9.x + r8.w;
          r8.w = saturate(-1 + r8.w);
          r6.w = r8.w * 0.125 + r6.w;
          r8.z = (int)r8.z + 1;
        }
        r0.y = r6.w * r6.w;
        r5.x = r0.y * r6.w;
      }
    }
  }
  r0.y = cmp(0 < abs(r1.w));
  if (r0.y != 0) {
    r0.y = cmp(0 < r5.x);
    if (r0.y != 0) {
      r0.y = sunConstants.specScale * r4.x;
      r0.y = 0.25 * r0.y;
      if (sunConstants.sunCookieIndex != 0) {
        r5.xyz = eyeOffset.xyz + v6.xyz;
        r5.w = 1;
        r0.z = dot(sunConstants.sunCookieTransform[0].xyzw, r5.xyzw);
        r3.w = dot(sunConstants.sunCookieTransform[1].xyzw, r5.xyzw);
        r5.x = frac(r0.z);
        r5.y = frac(r3.w);
        r0.z = -1 + (int14)sunConstants.sunCookieIndex;
        r5.z = (uint)r0.z;
        r5.xyz = gCookieArray.SampleLevel(samplerLinear_s, r5.xyz, 0).xyz;
        r5.xyz = float3(-1,-1,-1) + r5.xyz;
        r5.xyz = sunConstants.sunCookieIntensity * r5.xyz + float3(1,1,1);
        r5.xyz = sunConstants.color.xyz * r5.xyz;
      } else {
        r5.xyz = sunConstants.color.xyz;
      }
      r0.z = cmp(0 < r1.w);
      r1.w = r2.w + r2.w;
      r8.xyz = r1.xyz * -r1.www + r2.xyz;
      r1.w = dot(r8.xyz, -sunConstants.wldDir.xyz);
      r3.w = r1.w + -r0.w;
      r3.w = min(1, abs(r3.w));
      r3.w = 10 * r3.w;
      r3.w = min(1, r3.w);
      r5.w = r3.w * -2 + 3;
      r3.w = r3.w * r3.w;
      r3.w = -r5.w * r3.w + 1;
      r5.w = r3.w * r3.w;
      r5.w = r5.w * r5.w;
      r3.w = r5.w * r3.w;
      r3.w = r3.w * r0.x;
      r3.w = 20 * r3.w;
      r1.w = 0.5 + r1.w;
      r1.w = saturate(4 * r1.w);
      r5.w = r1.w * -2 + 3;
      r1.w = r1.w * r1.w;
      r1.w = r5.w * r1.w;
      r5.w = r3.w * r1.w;
      r8.xyz = r5.www * r5.xyz;
      r8.xyz = r8.xyz * r0.yyy + r4.yzw;
      r0.y = saturate(-r3.w * r1.w + 1);
      r1.w = r0.y * r0.y;
      r1.w = r1.w * r1.w;
      r0.y = r1.w * r0.y;
      r0.y = r5.w * r0.y;
      r5.xyz = r0.yyy * r5.xyz + r7.xyz;
      r5.w = r8.x;
      r7.w = r4.y;
      r7.xyzw = r0.zzzz ? r5.xyzw : r7.xyzw;
      r4.zw = r0.zz ? r8.yz : r4.zw;
      r4.y = r7.w;
    }
  }
  r0.y = r2.w + r2.w;
  r2.xyz = r1.xyz * -r0.yyy + r2.xyz;
  r5.xy = float2(0,0);
  r8.w = 0;
  r9.xyz = v6.xyz;
  r9.w = 1;
  r10.z = 1;
  r11.xyz = r7.xyz;
  r12.xyz = r4.yzw;
  r0.y = 0;
  while (true) {
    r0.z = cmp((uint)r0.y >= numLights);
    if (r0.z != 0) break;
    r5.z = (uint)r0.y >> 5;
    r8.xyz = (int3)r5.xyz + (int3)r6.xyz;
    r0.z = visibleLights.Load(r8.xyzw).x;
    r8.xyz = r11.xyz;
    r13.xyz = r12.xyz;
    r1.w = r0.z;
    while (true) {
      if (r1.w == 0) break;
      r2.w = firstbitlow((uint)r1.w);
      r3.w = 1 << (int)r2.w;
      r5.z = (int)r1.w & (int)r3.w;
      if (r5.z != 0) {
        r1.w = (int)r1.w ^ (int)r3.w;
        r2.w = (int)r0.y + (int)r2.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyzw, r2.w, l(0), t11.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r2.w, l(16), t11.xyxx
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
        r14.xyz = -v6.xyz + r14.xyz;
        r15.z = r14.w;
        r14.xyz = cmp(abs(r14.xyz) < r15.zxy);
        r3.w = r14.y ? r14.x : 0;
        r3.w = r14.z ? r3.w : 0;
        if (r3.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r2.w, l(0), t12.wxyz
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r2.w, l(16), t12.zxyw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r2.w, l(32), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r3.w, r2.w, l(48), t12.xxxx
        r3.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r2.w, l(88), t12.wxyz
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
          if (3 == 0) r5.z = 0; else if (3+24 < 32) {           r5.z = (uint)r15.w << (32-(3 + 24)); r5.z = (uint)r5.z >> (32-3);          } else r5.z = (uint)r15.w >> 24;
          switch (r5.z) {
            case 4 :            r5.z = cmp(0 < r17.x);
            r18.xyz = -r17.yzw * float3(0.5,0.5,0.5) + r14.yzw;
            r19.xyz = -v6.xyz + r18.xyz;
            r5.w = dot(r17.yzw, r19.xyz);
            r6.w = saturate(-r5.w / r17.x);
            r20.xyz = r6.www * r17.yzw + r18.xyz;
            r20.xyz = r5.zzz ? r20.xyz : r14.yzw;
            r20.xyz = -v6.xyz + r20.xyz;
            r7.w = dot(r20.xyz, r20.xyz);
            r10.w = rsqrt(r7.w);
            r20.xyz = r20.xyz * r10.www;
            r10.w = dot(r1.xyz, r20.xyz);
            r11.w = cmp(0 < abs(r10.w));
            if (r11.w != 0) {
              r11.w = sqrt(r7.w);
              r12.w = r3.w * r3.w;
              r7.w = r12.w / r7.w;
              r7.w = min(1, r7.w);
              r20.xy = saturate(r11.ww * r16.xz + r16.yw);
              r20.zw = r20.xy * r20.xy;
              r20.xy = r20.xy * float2(-2,-2) + float2(3,3);
              r20.xy = r20.zw * r20.xy;
              r7.w = r20.x * r7.w;
              r7.w = r7.w * r20.y;
              r7.w = cmp(0 < r7.w);
              if (r7.w != 0) {
                r7.w = r15.x * r4.x;
                r7.w = 0.25 * r7.w;
                r11.w = dot(r17.yzw, r3.xyz);
                r12.w = dot(r3.xyz, r19.xyz);
                r13.w = -r11.w * r11.w + r17.x;
                r5.w = r11.w * r12.w + -r5.w;
                r5.w = saturate(r5.w / r13.w);
                r11.w = r13.w / r17.x;
                r11.w = 10 * r11.w;
                r11.w = min(1, r11.w);
                r5.w = r5.w + -r6.w;
                r5.w = r11.w * r5.w + r6.w;
                r18.xyz = r5.www * r17.yzw + r18.xyz;
                r18.xyz = r5.zzz ? r18.xyz : r14.yzw;
                r18.xyz = -v6.xyz + r18.xyz;
                r5.z = dot(r18.xyz, r18.xyz);
                r5.z = rsqrt(r5.z);
                r18.xyz = r18.xyz * r5.zzz;
                r5.z = cmp(0 < r10.w);
                r5.w = dot(r2.xyz, -r18.xyz);
                r6.w = r5.w + -r0.w;
                r6.w = min(1, abs(r6.w));
                r6.w = 10 * r6.w;
                r6.w = min(1, r6.w);
                r10.w = r6.w * -2 + 3;
                r6.w = r6.w * r6.w;
                r6.w = -r10.w * r6.w + 1;
                r10.w = r6.w * r6.w;
                r10.w = r10.w * r10.w;
                r6.w = r10.w * r6.w;
                r6.w = r6.w * r0.x;
                r6.w = 20 * r6.w;
                r5.w = 0.5 + r5.w;
                r5.w = saturate(4 * r5.w);
                r10.w = r5.w * -2 + 3;
                r5.w = r5.w * r5.w;
                r5.w = r10.w * r5.w;
                r10.w = r6.w * r5.w;
                r15.x = r14.x;
                r18.xyz = r15.xyz * r10.www;
                r18.xyz = r18.xyz * r7.www + r13.xyz;
                r5.w = saturate(-r6.w * r5.w + 1);
                r6.w = r5.w * r5.w;
                r6.w = r6.w * r6.w;
                r5.w = r6.w * r5.w;
                r5.w = r10.w * r5.w;
                r19.xyz = r5.www * r15.xyz + r8.xyz;
                r8.xyz = r5.zzz ? r19.xyz : r8.xyz;
                r13.xyz = r5.zzz ? r18.xyz : r13.xyz;
              }
            }
            break;
            case 2 :          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r2.w, l(56), t12.wxyz
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
            r19.xyz = -v6.xyz + r18.yzw;
            r5.z = dot(r19.xyz, r19.xyz);
            r5.z = rsqrt(r5.z);
            r19.xyz = r19.xyz * r5.zzz;
            r5.z = dot(r1.xyz, r19.xyz);
            r5.w = cmp(0 < abs(r5.z));
            if (r5.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r2.w, l(116), t12.xyzw
            r20.x = samp0[]..swiz;
            r20.y = samp0[]..swiz;
            r20.z = samp0[]..swiz;
            r20.w = samp0[]..swiz;
              r5.w = dot(r20.xyzw, r9.xyzw);
              r6.w = cmp(r5.w < 1);
              if (r6.w != 0) {
                r20.xyz = float3(1,1,1);
                r6.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xyzw, r2.w, l(72), t12.xyzw
              r21.x = samp0[]..swiz;
              r21.y = samp0[]..swiz;
              r21.z = samp0[]..swiz;
              r21.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xyzw, r2.w, l(172), t12.yzwx
              r22.x = samp0[]..swiz;
              r22.y = samp0[]..swiz;
              r22.z = samp0[]..swiz;
              r22.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xyzw, r2.w, l(188), t12.wxyz
              r23.x = samp0[]..swiz;
              r23.y = samp0[]..swiz;
              r23.z = samp0[]..swiz;
              r23.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xyzw, r2.w, l(204), t12.xyzw
              r24.x = samp0[]..swiz;
              r24.y = samp0[]..swiz;
              r24.z = samp0[]..swiz;
              r24.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r2.w, l(236), t12.xxxx
              r7.w = samp0[]..swiz;
                r25.xyz = -v6.xyz + r14.yzw;
                r3.w = r3.w * r3.w;
                r10.w = dot(r25.xyz, r25.xyz);
                r3.w = r3.w / r10.w;
                r3.w = min(1, r3.w);
                r16.xy = saturate(r5.ww * r16.xz + r16.yw);
                r16.zw = r16.xy * r16.xy;
                r16.xy = r16.xy * float2(-2,-2) + float2(3,3);
                r16.xy = r16.zw * r16.xy;
                r3.w = r16.x * r3.w;
                r3.w = r3.w * r16.y;
                r18.yzw = r21.xyz;
                r16.x = dot(r18.xyzw, r9.xyzw);
                r17.x = r21.w;
                r16.y = dot(r17.xyzw, r9.xyzw);
                r10.xy = r16.xy / r5.ww;
                r5.w = cmp(r22.w < 0.00048828125);
                if (r5.w != 0) {
                  r23.y = r24.x;
                  r16.xy = saturate(abs(r10.xy) * r23.zw + r23.xy);
                  r16.zw = r16.xy * r16.xy;
                  r16.xy = r16.xy * float2(-2,-2) + float2(3,3);
                  r16.xy = r16.zw * r16.xy;
                  r5.w = r16.x * r16.y;
                } else {
                  r22.w = r23.y;
                  r16.xyzw = saturate(r22.xyzw * abs(r10.yyxx));
                  r16.xyzw = log2(r16.xyzw);
                  r16.xyzw = r23.xxxx * r16.xyzw;
                  r16.xyzw = exp2(r16.xyzw);
                  r16.xy = r16.xy + r16.zw;
                  r16.xy = log2(r16.xy);
                  r16.xy = r24.xx * r16.xy;
                  r16.xy = exp2(r16.xy);
                  r10.w = r23.z * r16.x;
                  r11.w = r23.w * r16.y + -1;
                  r10.w = r23.w * r16.y + -r10.w;
                  r10.w = saturate(r11.w / r10.w);
                  r11.w = r10.w * r10.w;
                  r10.w = r10.w * -2 + 3;
                  r5.w = r11.w * r10.w;
                }
                r6.w = r5.w * r3.w;
                r3.w = (int)r7.w & 255;
                if (r3.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyz, r2.w, l(220), t12.xyzx
                r16.x = samp0[]..swiz;
                r16.y = samp0[]..swiz;
                r16.z = samp0[]..swiz;
                  r2.w = dot(r24.yzw, r10.xyz);
                  r5.w = dot(r16.xyz, r10.xyz);
                  r16.x = frac(r2.w);
                  r16.y = frac(r5.w);
                  r2.w = (int)r3.w + -1;
                  r16.z = (uint)r2.w;
                  r20.xyz = gCookieArray.SampleLevel(samplerLinear_s, r16.xyz, 0).xyz;
                } else {
                  r20.xyz = float3(1,1,1);
                }
              }
              r14.yz = r15.yz;
              r10.xyw = r14.xyz * r20.xyz;
              r2.w = cmp(0 < r6.w);
              if (r2.w != 0) {
                r2.w = r15.x * r4.x;
                r2.w = 0.25 * r2.w;
                r3.w = cmp(0 < r5.z);
                r5.z = dot(r2.xyz, -r19.xyz);
                r5.w = r5.z + -r0.w;
                r5.w = min(1, abs(r5.w));
                r5.w = 10 * r5.w;
                r5.w = min(1, r5.w);
                r6.w = r5.w * -2 + 3;
                r5.w = r5.w * r5.w;
                r5.w = -r6.w * r5.w + 1;
                r6.w = r5.w * r5.w;
                r6.w = r6.w * r6.w;
                r5.w = r6.w * r5.w;
                r5.w = r5.w * r0.x;
                r5.w = 20 * r5.w;
                r5.z = 0.5 + r5.z;
                r5.z = saturate(4 * r5.z);
                r6.w = r5.z * -2 + 3;
                r5.z = r5.z * r5.z;
                r5.z = r6.w * r5.z;
                r6.w = r5.w * r5.z;
                r14.xyz = r6.www * r10.xyw;
                r14.xyz = r14.xyz * r2.www + r13.xyz;
                r2.w = saturate(-r5.w * r5.z + 1);
                r5.z = r2.w * r2.w;
                r5.z = r5.z * r5.z;
                r2.w = r5.z * r2.w;
                r2.w = r6.w * r2.w;
                r10.xyw = r2.www * r10.xyw + r8.xyz;
                r8.xyz = r3.www ? r10.xyw : r8.xyz;
                r13.xyz = r3.www ? r14.xyz : r13.xyz;
              }
            }
            break;
            default :
            break;
          }
        }
      }
    }
    r11.xyz = r8.xyz;
    r12.xyz = r13.xyz;
    r0.y = (int)r0.y + 32;
  }
  r0.xyz = float3(1,1,1) + -specColorTint.xyz;
  r0.xyz = r11.xyz * r0.xyz;
  r0.xyz = r12.xyz * specColorTint.xyz + r0.xyz;
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
  o0.w = 1;
  return;
}