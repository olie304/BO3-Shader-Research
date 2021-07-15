// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:26 2021

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
  float rowCount : packoffset(c11.z);
  float columnCount : packoffset(c11.w);
  float imageTime : packoffset(c12);
  float2 rotateUVs : packoffset(c12.y);
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
  uint zFeatherComputeSprites : packoffset(c17.w);
  float hdrScale : packoffset(c18);
  float emissiveFalloffPower : packoffset(c18.y);
  float frameDarken : packoffset(c18.z);
  float warpAmount : packoffset(c18.w);
  float3 emissiveTint1 : packoffset(c19);
  float3 scriptControl : packoffset(c20);
  float3 tint1 : packoffset(c21);
  float3 tint2 : packoffset(c22);
  float3 tint3 : packoffset(c23);
  bool relativeHDR : packoffset(c23.w);
  bool invertFalloff : packoffset(c24);
  float uvMotionToggle1 : packoffset(c24.y);
  float4 scanlineConsts : packoffset(c25);
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

SamplerState colorSampler_s : register(s1);
SamplerState lookupSampler_s : register(s3);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> flickerLookupMap : register(t21);
Texture2D<float4> emissiveMap : register(t22);
Texture2D<float4> frameBuffer : register(t24);


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
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  float3 v8 : TEXCOORD10,
  uint v9 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0.5 < invertFalloff);
  if (r0.x != 0) {
    r0.x = rowCount * columnCount;
    r0.y = imageTime * r0.x;
    r0.z = gameTime.w * r0.y;
    r0.z = cmp(r0.z >= -r0.z);
    r0.z = r0.z ? r0.y : -r0.y;
    r0.w = 1 / r0.z;
    r0.w = gameTime.w * r0.w;
    r0.w = frac(r0.w);
    r0.z = r0.z * r0.w;
    r0.y = r0.z / r0.y;
    r0.x = r0.y * r0.x;
    r0.x = round(r0.x);
    r0.y = r0.x / columnCount;
    r0.z = columnCount * r0.x;
    r0.z = cmp(r0.z >= -r0.z);
    r0.z = r0.z ? columnCount : -columnCount;
    r0.w = 1 / r0.z;
    r0.x = r0.x * r0.w;
    r0.x = frac(r0.x);
    r0.x = r0.z * r0.x;
    r0.x = trunc(r0.x);
    r0.x = w2.x + r0.x;
    r1.x = r0.x / columnCount;
    r0.x = trunc(r0.y);
    r0.x = w2.y + r0.x;
    r1.y = r0.x / rowCount;
  } else {
    r0.x = dot(-v7.xyz, -v7.xyz);
    r0.x = rsqrt(r0.x);
    r0.xyz = -v7.xyz * r0.xxx;
    r2.x = dot(r0.xyz, v5.xyz);
    r2.y = dot(r0.xyz, v6.xyz);
    r0.x = dot(r0.xyz, v4.xyz);
    r0.y = cmp(0 < r0.x);
    r0.xz = -r2.xy / r0.xx;
    r0.xy = r0.yy ? r0.xz : 0;
    r0.zw = float2(-0.5,-0.5) + w2.xy;
    r1.z = 9.99999975e-06 + layerDepth;
    r0.xy = r1.zz * r0.xy;
    r0.xy = scaleUVs.xy * r0.xy;
    r0.xy = r0.zw * scaleUVs.xy + r0.xy;
    r0.xy = offsetUVs.xy * scaleUVs.xy + r0.xy;
    r0.z = rotateUVs.y * gameTime.w + 1;
    r0.z = rotateUVs.x * r0.z;
    r0.z = 0.0174532924 * r0.z;
    sincos(r0.z, r2.x, r3.x);
    r3.y = r3.x;
    r3.z = r2.x;
    r4.x = dot(r3.yz, r0.xy);
    r3.x = -r2.x;
    r4.y = dot(r3.xy, r0.xy);
    r0.xy = gameTime.ww * scrollUVs.xy;
    r0.xy = r0.xy * scaleUVs.xy + r4.xy;
    r0.z = gameTime.w * zoomRate;
    r0.z = cos(r0.z);
    r0.z = r0.z * 0.5 + 0.5;
    r0.z = 1 + -r0.z;
    r0.w = zoomUVs.y + -zoomUVs.x;
    r0.z = r0.z * r0.w + zoomUVs.x;
    r0.xy = r0.xy / r0.zz;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.zw = saturate(r0.xy);
    r1.xy = clampU ? r0.zw : r0.xy;
  }
  r0.x = dot(-v7.xyz, -v7.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = -v7.xyz * r0.xxx;
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v4.xyz * r0.www;
  r0.x = saturate(dot(r0.xyz, r2.xyz));
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.y, v3.w, l(4), t4.xxxx
r0.y = colorSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.y, l(52), t0.xxyz
r0.y = colorSampler[]..swiz;
r0.z = colorSampler[]..swiz;
r0.w = colorSampler[]..swiz;
  r0.y = saturate(r0.y);
  r0.y = hdrScale * r0.y;
  r2.xyz = cmp(r0.zzz == float3(3,2,1));
  r3.xyz = r2.zzz ? tint1.xyz : emissiveTint1.xyz;
  r2.yzw = r2.yyy ? tint2.xyz : r3.xyz;
  r2.xyz = r2.xxx ? tint3.xyz : r2.yzw;
  r0.z = gameTime.w * scanlineConsts.z;
  r3.xyz = v8.zxy * scanlineConsts.www + r0.zzz;
  r3.xyz = sin(r3.xyz);
  r3.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r3.xyz = log2(r3.xyz);
  r3.xyz = scanlineConsts.xxx * r3.xyz;
  r3.xyz = exp2(r3.xyz);
  r0.z = saturate(1 + -scanlineConsts.y);
  r3.xyz = r3.xyz + r0.zzz;
  r0.z = cmp(v0.z >= 0.984375);
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r1.zw = r3.xx * r3.yz;
  r0.z = r0.z ? r1.z : r1.w;
  r1.xyz = emissiveMap.Sample(colorSampler_s, r1.xy).xyz;
  r1.xyz = r1.xyz * r2.xyz;
  r1.w = log2(r0.x);
  r1.w = emissiveFalloffPower * r1.w;
  r1.w = exp2(r1.w);
  r0.x = 1 + -r0.x;
  r0.x = log2(r0.x);
  r0.x = emissiveFalloffPower * r0.x;
  r0.x = exp2(r0.x);
  r0.x = invertFalloff ? r0.x : r1.w;
  r1.w = cmp(emissiveFalloffPower == 0.000000);
  r0.x = r1.w ? 1 : r0.x;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * r0.z;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = v3.x + v3.y;
  r1.x = v3.z + r1.x;
  r1.x = flickerSeed.y + r1.x;
  r1.x = frac(r1.x);
  r1.y = gameTime.w * flickerSpeed + r1.x;
  r1.x = flickerSeed.x;
  r1.x = flickerLookupMap.SampleLevel(lookupSampler_s, r1.xy, 0).x;
  r1.x = log2(abs(r1.x));
  r1.x = flickerPower * r1.x;
  r1.x = exp2(r1.x);
  r1.y = flickerRange.y + -flickerRange.x;
  r1.x = r1.x * r1.y + flickerRange.x;
  r0.xyz = r1.xxx * r0.xyz;
  r1.xyz = relHDRExposure.xxx * r0.xyz;
  r0.xyz = relativeHDR ? r1.xyz : r0.xyz;
  r1.x = saturate(0.020833334 * v8.z);
  r1.y = r1.x * r1.x;
  r1.x = r1.x * r1.y;
  r0.xyzw = r1.xxxx * r0.xyzw;
  r1.xy = renderTargetSize.zw * v0.xy;
  r1.zw = renderTargetSize.zw * v4.xy;
  r1.zw = saturate(r1.zw * warpAmount + r1.xy);
  r1.zw = -v0.xy * renderTargetSize.zw + r1.zw;
  r1.xy = r0.ww * r1.zw + r1.xy;
  r1.xyz = frameBuffer.Sample(colorSampler_s, r1.xy).xyz;
  r2.xyz = relHDRExposure.xxx * r1.xyz;
  r3.xyz = frameDarken * r1.xyz;
  r0.xyz = r3.xyz * relHDRExposure.xxx + r0.xyz;
  r0.xyz = -r1.xyz * relHDRExposure.xxx + r0.xyz;
  r0.xyz = r0.www * r0.xyz + r2.xyz;
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
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  r1.xy = (uint2)v0.xy;
  // Needs manual fix for instruction:
imm_atomic_iadd r1.z, u6, r1.xyxx, l(1)
  InterlockedAdd(dest, imm_value, orig_value);
  r1.w = cmp((uint)r1.z < oitMaxEntries);
  if (r1.w != 0) {
    r2.xyz = max(float3(0,0,0), r0.xyz);
    r2.w = max(r2.y, r2.z);
    r2.w = max(r2.x, r2.w);
    r2.w = (int)r2.w & 0x7f800000;
    r2.w = (int)r2.w + 0x00800000;
    r2.xyz = r2.xyz + r2.www;
    if (8 == 0) r2.x = 0; else if (8+15 < 32) {     r2.x = (uint)r2.x << (32-(8 + 15)); r2.x = (uint)r2.x >> (32-8);    } else r2.x = (uint)r2.x >> 15;
    r2.yz = (uint2)r2.yz >> int2(15,15);
    bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r2.y = (((uint)r2.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r2.z = (((uint)r2.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r2.x = (int)r2.y + (int)r2.x;
    r2.x = (int)r2.z + (int)r2.x;
    r2.y = (uint)r2.w << 1;
    r2.xzw = (int3)r2.yyy + (int3)r2.xxx;
    r3.x = (uint)v0.z << 2;
    bitmask.x = ((~(-1 << 11)) << 0) & 0xffffffff;  r3.x = (((uint)2046 << 0) & bitmask.x) | ((uint)r3.x & ~bitmask.x);
    bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r2.y = (((uint)zFeatherComputeSprites << 0) & bitmask.y) | ((uint)r3.x & ~bitmask.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u7.xyzw, r1.xyzz, r2.xyzw
  }
  r0.w = 1;
  o0.xyzw = r1.wwww ? float4(0,0,0,0) : r0.xyzw;
  return;
}