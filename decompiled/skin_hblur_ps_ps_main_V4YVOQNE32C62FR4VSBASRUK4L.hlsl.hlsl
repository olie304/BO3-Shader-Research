// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:43 2021

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

SamplerState PointSampler_s : register(s1);
Texture2D<float4> GBufferDiffuseColor : register(t0);
Texture2D<float> GBufferDepth : register(t4);
Texture2D<float4> diffuseLighting : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1 / sssParams.z;
  r0.y = GBufferDiffuseColor.Sample(PointSampler_s, v1.xy).w;
  r0.z = cmp(r0.y < 0.800000012);
  r0.z = r0.z ? r0.y : -1;
  r0.y = sssParams.x * r0.y;
  r0.w = 0.5 * gameTick.w;
  r1.xyzw = diffuseLighting.Sample(PointSampler_s, v1.xy).xyzw;
  r2.x = GBufferDepth.Sample(PointSampler_s, v1.xy).x;
  r2.y = cmp(r2.x >= 0.984375);
  r2.z = 1.01587307 * r2.x;
  r2.x = r2.x * 64 + -63;
  r2.x = r2.y ? r2.x : r2.z;
  r2.x = max(9.99999994e-09, r2.x);
  r2.x = rcp(r2.x);
  r2.y = sssParams.y * r2.x;
  r0.y = sssParams.z * r0.y;
  r0.y = r0.y / r2.x;
  r2.xz = v0.xy * float2(0.000244140625,0.000244140625) + float2(0.0625,0.0625);
  r2.x = r2.x * r2.x + r2.z;
  r2.x = r2.x * r2.x;
  r2.x = 3571 * r2.x;
  r2.x = frac(r2.x);
  r2.x = r2.x * r2.x;
  r0.w = r2.x * 3571 + r0.w;
  sincos(r0.w, r2.x, r3.x);
  r4.yw = r2.xx * r0.xx;
  r4.xz = r3.xx;
  r3.xyzw = r4.xyzw * r0.yyyy;
  r2.xzw = float3(0.146835998,0.437839001,0.952030003) * r1.xyz;
  r0.x = cmp(0 < r0.z);
  r4.xy = float2(-0.261132985,0.261135012) * r0.yy;
  r4.z = 0;
  r4.xyzw = v1.xyxy + r4.xzyz;
  r5.xyz = diffuseLighting.Sample(PointSampler_s, r4.xy).xyz;
  r0.y = GBufferDepth.Sample(PointSampler_s, r4.xy).x;
  r0.w = GBufferDiffuseColor.Sample(PointSampler_s, r4.xy).w;
  r6.xyzw = r3.zwzw * float4(-0.0959469005,-0.0959469005,-0.0421367995,-0.0421367995) + v1.xyxy;
  r7.xyz = diffuseLighting.Sample(PointSampler_s, r6.xy).xyz;
  r4.x = GBufferDepth.Sample(PointSampler_s, r6.xy).x;
  r4.y = GBufferDiffuseColor.Sample(PointSampler_s, r6.xy).w;
  r8.xyz = diffuseLighting.Sample(PointSampler_s, r6.zw).xyz;
  r5.w = GBufferDepth.Sample(PointSampler_s, r6.zw).x;
  r6.x = GBufferDiffuseColor.Sample(PointSampler_s, r6.zw).w;
  r3.xyzw = r3.xyzw * float4(0.0421370007,0.0421370007,0.0959471017,0.0959471017) + v1.xyxy;
  r6.yzw = diffuseLighting.Sample(PointSampler_s, r3.xy).xyz;
  r7.w = GBufferDepth.Sample(PointSampler_s, r3.xy).x;
  r3.x = GBufferDiffuseColor.Sample(PointSampler_s, r3.xy).w;
  r9.xyz = diffuseLighting.Sample(PointSampler_s, r3.zw).xyz;
  r3.y = GBufferDepth.Sample(PointSampler_s, r3.zw).x;
  r3.z = GBufferDiffuseColor.Sample(PointSampler_s, r3.zw).w;
  r10.xyz = diffuseLighting.Sample(PointSampler_s, r4.zw).xyz;
  r3.w = GBufferDepth.Sample(PointSampler_s, r4.zw).x;
  r4.z = GBufferDiffuseColor.Sample(PointSampler_s, r4.zw).w;
  if (r0.x != 0) {
    r0.x = cmp(r0.y >= 0.984375);
    r4.w = 1.01587307 * r0.y;
    r8.w = r0.y * 64 + -63;
    r0.x = r0.x ? r8.w : r4.w;
    r0.x = max(9.99999994e-09, r0.x);
    r0.x = rcp(r0.x);
    r0.w = r0.w + -r0.z;
    r0.w = cmp(0.349999994 < abs(r0.w));
    r0.x = r0.w ? 65504 : r0.x;
    r0.x = -sssParams.y * r0.x + r2.y;
    r0.x = -abs(r0.x) * abs(r0.x);
    r0.x = sssParams.w * r0.x;
    r0.x = exp2(r0.x);
    r11.xyz = float3(0.106012002,0.0256836005,7.17777021e-13) * r0.xxx;
    r11.xyz = r11.xyz * r5.xyz + r2.xzw;
    r12.xyz = r0.xxx * float3(0.106012002,0.0256836005,7.17777021e-13) + float3(0.146835998,0.437839001,0.952030003);
    r0.x = cmp(r4.x >= 0.984375);
    r0.w = 1.01587307 * r4.x;
    r4.w = r4.x * 64 + -63;
    r0.x = r0.x ? r4.w : r0.w;
    r0.x = max(9.99999994e-09, r0.x);
    r0.x = rcp(r0.x);
    r0.w = r4.y + -r0.z;
    r0.w = cmp(0.349999994 < abs(r0.w));
    r0.x = r0.w ? 65504 : r0.x;
    r0.x = -sssParams.y * r0.x + r2.y;
    r0.x = -abs(r0.x) * abs(r0.x);
    r0.x = sssParams.w * r0.x;
    r0.x = exp2(r0.x);
    r13.xyz = float3(0.171772003,0.0639377013,0.00064857601) * r0.xxx;
    r11.xyz = r13.xyz * r7.xyz + r11.xyz;
    r12.xyz = r0.xxx * float3(0.171772003,0.0639377013,0.00064857601) + r12.xyz;
    r0.x = cmp(r5.w >= 0.984375);
    r0.w = 1.01587307 * r5.w;
    r4.y = r5.w * 64 + -63;
    r0.x = r0.x ? r4.y : r0.w;
    r0.x = max(9.99999994e-09, r0.x);
    r0.x = rcp(r0.x);
    r0.w = r6.x + -r0.z;
    r0.w = cmp(0.349999994 < abs(r0.w));
    r0.x = r0.w ? 65504 : r0.x;
    r0.x = -sssParams.y * r0.x + r2.y;
    r0.x = -abs(r0.x) * abs(r0.x);
    r0.x = sssParams.w * r0.x;
    r0.x = exp2(r0.x);
    r13.xyz = float3(0.148799002,0.191460997,0.0233364999) * r0.xxx;
    r11.xyz = r13.xyz * r8.xyz + r11.xyz;
    r12.xyz = r0.xxx * float3(0.148799002,0.191460997,0.0233364999) + r12.xyz;
    r0.x = cmp(r7.w >= 0.984375);
    r0.w = 1.01587307 * r7.w;
    r4.y = r7.w * 64 + -63;
    r0.x = r0.x ? r4.y : r0.w;
    r0.x = max(9.99999994e-09, r0.x);
    r0.x = rcp(r0.x);
    r0.w = r3.x + -r0.z;
    r0.w = cmp(0.349999994 < abs(r0.w));
    r0.x = r0.w ? 65504 : r0.x;
    r0.x = -sssParams.y * r0.x + r2.y;
    r0.x = -abs(r0.x) * abs(r0.x);
    r0.x = sssParams.w * r0.x;
    r0.x = exp2(r0.x);
    r13.xyz = float3(0.148799002,0.191459,0.0233362) * r0.xxx;
    r11.xyz = r13.xyz * r6.yzw + r11.xyz;
    r12.xyz = r0.xxx * float3(0.148799002,0.191459,0.0233362) + r12.xyz;
    r0.x = cmp(r3.y >= 0.984375);
    r0.w = 1.01587307 * r3.y;
    r3.x = r3.y * 64 + -63;
    r0.x = r0.x ? r3.x : r0.w;
    r0.x = max(9.99999994e-09, r0.x);
    r0.x = rcp(r0.x);
    r0.w = r3.z + -r0.z;
    r0.w = cmp(0.349999994 < abs(r0.w));
    r0.x = r0.w ? 65504 : r0.x;
    r0.x = -sssParams.y * r0.x + r2.y;
    r0.x = -abs(r0.x) * abs(r0.x);
    r0.x = sssParams.w * r0.x;
    r0.x = exp2(r0.x);
    r13.xyz = float3(0.171773002,0.0639377013,0.000648564019) * r0.xxx;
    r11.xyz = r13.xyz * r9.xyz + r11.xyz;
    r12.xyz = r0.xxx * float3(0.171773002,0.0639377013,0.000648564019) + r12.xyz;
    r0.x = cmp(r3.w >= 0.984375);
    r0.w = 1.01587307 * r3.w;
    r3.x = r3.w * 64 + -63;
    r0.x = r0.x ? r3.x : r0.w;
    r0.x = max(9.99999994e-09, r0.x);
    r0.x = rcp(r0.x);
    r0.z = r4.z + -r0.z;
    r0.z = cmp(0.349999994 < abs(r0.z));
    r0.x = r0.z ? 65504 : r0.x;
    r0.x = -sssParams.y * r0.x + r2.y;
    r0.x = -abs(r0.x) * abs(r0.x);
    r0.x = sssParams.w * r0.x;
    r0.x = exp2(r0.x);
    r4.yzw = float3(0.106009997,0.0256832,7.17540014e-13) * r0.xxx;
    r4.yzw = r4.yzw * r10.xyz + r11.xyz;
    r0.xzw = r0.xxx * float3(0.106009997,0.0256832,7.17540014e-13) + r12.xyz;
  } else {
    r3.x = cmp(r0.y >= 0.984375);
    r3.z = 1.01587307 * r0.y;
    r0.y = r0.y * 64 + -63;
    r0.y = r3.x ? r0.y : r3.z;
    r0.y = max(9.99999994e-09, r0.y);
    r0.y = rcp(r0.y);
    r0.y = -sssParams.y * r0.y + r2.y;
    r0.y = -abs(r0.y) * abs(r0.y);
    r0.y = sssParams.w * r0.y;
    r0.y = exp2(r0.y);
    r11.xyz = float3(0.106012002,0.0256836005,7.17777021e-13) * r0.yyy;
    r2.xzw = r11.xyz * r5.xyz + r2.xzw;
    r5.xyz = r0.yyy * float3(0.106012002,0.0256836005,7.17777021e-13) + float3(0.146835998,0.437839001,0.952030003);
    r0.y = cmp(r4.x >= 0.984375);
    r3.x = 1.01587307 * r4.x;
    r3.z = r4.x * 64 + -63;
    r0.y = r0.y ? r3.z : r3.x;
    r0.y = max(9.99999994e-09, r0.y);
    r0.y = rcp(r0.y);
    r0.y = -sssParams.y * r0.y + r2.y;
    r0.y = -abs(r0.y) * abs(r0.y);
    r0.y = sssParams.w * r0.y;
    r0.y = exp2(r0.y);
    r11.xyz = float3(0.171772003,0.0639377013,0.00064857601) * r0.yyy;
    r2.xzw = r11.xyz * r7.xyz + r2.xzw;
    r5.xyz = r0.yyy * float3(0.171772003,0.0639377013,0.00064857601) + r5.xyz;
    r0.y = cmp(r5.w >= 0.984375);
    r3.x = 1.01587307 * r5.w;
    r3.z = r5.w * 64 + -63;
    r0.y = r0.y ? r3.z : r3.x;
    r0.y = max(9.99999994e-09, r0.y);
    r0.y = rcp(r0.y);
    r0.y = -sssParams.y * r0.y + r2.y;
    r0.y = -abs(r0.y) * abs(r0.y);
    r0.y = sssParams.w * r0.y;
    r0.y = exp2(r0.y);
    r7.xyz = float3(0.148799002,0.191460997,0.0233364999) * r0.yyy;
    r2.xzw = r7.xyz * r8.xyz + r2.xzw;
    r5.xyz = r0.yyy * float3(0.148799002,0.191460997,0.0233364999) + r5.xyz;
    r0.y = cmp(r7.w >= 0.984375);
    r3.x = 1.01587307 * r7.w;
    r3.z = r7.w * 64 + -63;
    r0.y = r0.y ? r3.z : r3.x;
    r0.y = max(9.99999994e-09, r0.y);
    r0.y = rcp(r0.y);
    r0.y = -sssParams.y * r0.y + r2.y;
    r0.y = -abs(r0.y) * abs(r0.y);
    r0.y = sssParams.w * r0.y;
    r0.y = exp2(r0.y);
    r7.xyz = float3(0.148799002,0.191459,0.0233362) * r0.yyy;
    r2.xzw = r7.xyz * r6.yzw + r2.xzw;
    r5.xyz = r0.yyy * float3(0.148799002,0.191459,0.0233362) + r5.xyz;
    r0.y = cmp(r3.y >= 0.984375);
    r3.x = 1.01587307 * r3.y;
    r3.y = r3.y * 64 + -63;
    r0.y = r0.y ? r3.y : r3.x;
    r0.y = max(9.99999994e-09, r0.y);
    r0.y = rcp(r0.y);
    r0.y = -sssParams.y * r0.y + r2.y;
    r0.y = -abs(r0.y) * abs(r0.y);
    r0.y = sssParams.w * r0.y;
    r0.y = exp2(r0.y);
    r3.xyz = float3(0.171773002,0.0639377013,0.000648564019) * r0.yyy;
    r2.xzw = r3.xyz * r9.xyz + r2.xzw;
    r3.xyz = r0.yyy * float3(0.171773002,0.0639377013,0.000648564019) + r5.xyz;
    r0.y = cmp(r3.w >= 0.984375);
    r4.x = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r0.y = r0.y ? r3.w : r4.x;
    r0.y = max(9.99999994e-09, r0.y);
    r0.y = rcp(r0.y);
    r0.y = -sssParams.y * r0.y + r2.y;
    r0.y = -abs(r0.y) * abs(r0.y);
    r0.y = sssParams.w * r0.y;
    r0.y = exp2(r0.y);
    r5.xyz = float3(0.106009997,0.0256832,7.17540014e-13) * r0.yyy;
    r4.yzw = r5.xyz * r10.xyz + r2.xzw;
    r0.xzw = r0.yyy * float3(0.106009997,0.0256832,7.17540014e-13) + r3.xyz;
  }
  r0.xyz = float3(1,1,1) + -r0.xzw;
  o0.xyz = r1.xyz * r0.xyz + r4.yzw;
  o0.w = r1.w;
  return;
}