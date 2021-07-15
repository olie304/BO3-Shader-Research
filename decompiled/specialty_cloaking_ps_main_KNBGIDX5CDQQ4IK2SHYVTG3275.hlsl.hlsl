// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:50 2021

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
  float EdgeAmount : packoffset(c11.z);
  float EdgeHarshness : packoffset(c11.w);
  float3 SceneTint : packoffset(c12);
  float PulseWidth : packoffset(c12.w);
  float Speed : packoffset(c13);
  float Scale : packoffset(c13.y);
  float PatternScale : packoffset(c13.z);
  float scriptFaker : packoffset(c13.w);
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

SamplerState normalSampler_s : register(s1);
SamplerState trilinearSampler_s : register(s3);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> normalMap : register(t21);
Texture2D<float4> resolvedPostSun : register(t22);
Texture2D<float4> revealTexture : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  nointerpolation uint4 v3 : TEXCOORD4,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = PatternScale * v2.xy;
  r0.z = gameTime.w * Speed;
  r0.zw = r0.zz * float2(0.00100000005,0.00100000005) + v2.xy;
  r0.zw = normalMap.Sample(normalSampler_s, r0.zw).xy;
  r0.zw = float2(-0.5,-0.5) + r0.zw;
  r0.zw = baseNormalHeight * r0.zw + float2(0.5,0.5);
  r0.zw = r0.zw * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.x = dot(r0.zw, r0.zw);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.y = v8.x ? 1 : -1;
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = rsqrt(r1.z);
  r2.xyz = v4.xyz * r1.zzz;
  r2.xyz = r2.xyz * r1.yyy;
  r1.z = dot(v5.xyz, v5.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = v5.xyz * r1.zzz;
  r3.xyz = r3.xyz * r1.yyy;
  r1.z = dot(v6.xyz, v6.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = v6.xyz * r1.zzz;
  r1.yzw = r4.xyz * r1.yyy;
  r1.yzw = r1.yzw * r0.www;
  r1.yzw = r3.xyz * r0.zzz + r1.yzw;
  r1.xyz = r2.xyz * r1.xxx + r1.yzw;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r0.zw = r1.xy * r0.zz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v3.x, l(4), t4.xxxx
r1.x = normalSampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.x, r1.x, l(0), t0.xxxx
r1.x = normalSampler[]..swiz;
  r0.x = revealTexture.Sample(trilinearSampler_s, r0.xy).x;
  r0.y = saturate(0.00999999978 + r0.x);
  r0.y = -0.00999999978 + r0.y;
  r1.xy = float2(0.400000006,-0.00999999978) + r1.xx;
  r0.y = 1 / r0.y;
  r0.y = saturate(r1.y * r0.y);
  r1.y = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = r1.y * r0.y;
  r0.x = 1 + -r0.x;
  r0.x = r0.x * 0.5 + 0.5;
  r1.y = 1.20000005 * gameTime.w;
  r1.y = v0.z * 10000 + r1.y;
  r1.y = sin(r1.y);
  r1.y = max(0, r1.y);
  r1.z = cmp(PulseWidth == 0.000000);
  r1.w = 0.5 * PulseWidth;
  r1.w = 1 / r1.w;
  r2.w = saturate(r1.y * r1.w);
  r3.x = r2.w * -2 + 3;
  r2.w = r2.w * r2.w;
  r2.w = r3.x * r2.w;
  r1.y = -PulseWidth * 0.5 + r1.y;
  r1.y = saturate(r1.y * r1.w);
  r1.w = r1.y * -2 + 3;
  r1.y = r1.y * r1.y;
  r1.y = -r1.w * r1.y + 1;
  r1.y = r2.w * r1.y;
  r1.y = r1.z ? 0 : r1.y;
  r1.z = dot(-v7.xyz, -v7.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = -v7.xyz * r1.zzz;
  r1.z = saturate(dot(r2.xyz, r3.xyz));
  r1.z = 1 + -r1.z;
  r1.z = log2(r1.z);
  r1.z = EdgeHarshness * r1.z;
  r1.z = exp2(r1.z);
  r1.y = r1.z + r1.y;
  r0.x = saturate(r0.y * r0.x + r1.y);
  r2.xyz = SceneTint.xyz * EdgeAmount + float3(-1,-1,-1);
  r2.xyz = r0.xxx * r2.xyz + float3(1,1,1);
  r1.yw = renderTargetSize.zw * Scale;
  r3.xyz = v7.xyz;
  r3.w = 1;
  r3.xyzw = gameTime.wwww + r3.xyzw;
  r3.xyzw = Speed * r3.xyzw;
  r3.xyzw = floor(r3.xyzw);
  r0.x = max(1, Speed);
  r0.x = 1 / r0.x;
  r3.xyzw = r3.xyzw * r0.xxxx;
  r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.x = frac(r0.x);
  r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.y = frac(r0.x);
  r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.z = frac(r0.x);
  r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.w = frac(r0.x);
  r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.x = frac(r0.x);
  r0.x = dot(r3.xyzw, float4(81.2394867,17.3480244,37.3498383,59.3948402));
  r3.y = frac(r0.x);
  r3.zw = r1.yw + r1.yw;
  r3.xy = r3.xy * r3.zw + -r1.yw;
  r3.xy = float2(0.00999999978,0.00999999978) * r3.xy;
  r0.xz = r1.yw * r0.zw;
  r1.x = saturate(r1.x);
  r0.xz = r1.xx * r0.xz;
  r0.xz = saturate(v0.xy * renderTargetSize.zw + r0.xz);
  r0.w = min(1, r1.z);
  r0.w = r0.w * 1.5 + 1.5;
  r1.xz = r3.xy * r0.ww;
  r2.w = cmp(0 < r0.y);
  if (r2.w != 0) {
    r1.xz = r1.xz * r0.yy;
    r1.xy = r1.xz * r1.yw;
    r4.xyzw = saturate(r1.xyxy * float4(0.200000003,0.129999995,-0.140000001,0.189999998) + r0.xzxz);
    r5.x = resolvedPostSun.SampleLevel(trilinearSampler_s, r4.xy, 0).x;
    r5.y = resolvedPostSun.SampleLevel(trilinearSampler_s, r4.zw, 0).y;
    r1.xy = saturate(r1.xy * float2(0.129999995,-0.180000007) + r0.xz);
    r5.z = resolvedPostSun.SampleLevel(trilinearSampler_s, r1.xy, 0).z;
  } else {
    r0.xy = r3.xy * r0.ww + r0.xz;
    r5.xyz = resolvedPostSun.SampleLevel(trilinearSampler_s, r0.xy, 0).xyz;
  }
  r0.xyz = r5.xyz * r2.xyz;
  r1.xyz = relHDRExposure.xxx * r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v7.xyz, v7.xyz);
    r1.w = rsqrt(r0.w);
    r2.xyz = v7.xyz * r1.www;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r1.w = cmp(0.00999999978 < abs(v7.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
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
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * v7.z;
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
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.x * r0.w;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r2.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r2.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r1.xyz * r3.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r1.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r2.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.x = min(64, r1.w);
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r3.y = saturate(fogConstants.K0b);
    r3.z = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r3.z ? r3.x : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r2.w ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.w ? r3.y : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(v7.xyz, v7.xyz);
    r2.w = sqrt(r1.w);
    r0.w = r0.w * r2.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r3.xyz = v7.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r1.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r3.w * r0.w;
    r0.xyz = -r0.xyz * relHDRExposure.xxx + r3.xyz;
    r2.xyz = r0.www * r0.xyz + r1.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = 1;
  return;
}