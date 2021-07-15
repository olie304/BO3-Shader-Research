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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = GBufferDiffuseColor.Sample(PointSampler_s, v1.xy).xyzw;
  r1.x = cmp(r0.w < 0.800000012);
  r1.x = r1.x ? r0.w : -1;
  r0.w = sssParams.x * r0.w;
  r1.y = 0.5 * gameTick.w;
  r2.xyz = diffuseLighting.Sample(PointSampler_s, v1.xy).xyz;
  r1.z = GBufferDepth.Sample(PointSampler_s, v1.xy).x;
  r1.w = cmp(r1.z >= 0.984375);
  r2.w = 1.01587307 * r1.z;
  r1.z = r1.z * 64 + -63;
  r1.z = r1.w ? r1.z : r2.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.z = rcp(r1.z);
  r1.w = sssParams.y * r1.z;
  r0.w = r0.w / r1.z;
  r3.xy = v0.xy * float2(0.000244140625,0.000244140625) + float2(0.0625,0.0625);
  r1.z = r3.x * r3.x + r3.y;
  r1.z = r1.z * r1.z;
  r1.z = 3571 * r1.z;
  r1.z = frac(r1.z);
  r1.z = r1.z * r1.z;
  r1.y = r1.z * 3571 + r1.y;
  r3.yw = cos(r1.yy);
  r1.y = sin(-r1.y);
  r3.xz = sssParams.zz * r1.yy;
  r3.xyzw = r3.xyzw * r0.wwww;
  r4.xyz = float3(0.0715152994,0.231067002,0.798469007) * r2.xyz;
  r1.y = cmp(0 < r1.x);
  r5.xy = float2(-0.178540006,0.178541005) * r0.ww;
  r5.z = 0;
  r5.xyzw = v1.xyxy + r5.zxzy;
  r6.xyz = diffuseLighting.Sample(PointSampler_s, r5.xy).xyz;
  r0.w = GBufferDepth.Sample(PointSampler_s, r5.xy).x;
  r1.z = GBufferDiffuseColor.Sample(PointSampler_s, r5.xy).w;
  r7.xyzw = r3.zwzw * float4(-0.0690418035,-0.0690418035,-0.0210682992,-0.0210682992) + v1.xyxy;
  r8.xyz = diffuseLighting.Sample(PointSampler_s, r7.xy).xyz;
  r2.w = GBufferDepth.Sample(PointSampler_s, r7.xy).x;
  r4.w = GBufferDiffuseColor.Sample(PointSampler_s, r7.xy).w;
  r9.xyz = diffuseLighting.Sample(PointSampler_s, r7.zw).xyz;
  r5.x = GBufferDepth.Sample(PointSampler_s, r7.zw).x;
  r5.y = GBufferDiffuseColor.Sample(PointSampler_s, r7.zw).w;
  r3.xyzw = r3.xyzw * float4(0.0210685991,0.0210685991,0.0690421015,0.0690421015) + v1.xyxy;
  r7.xyz = diffuseLighting.Sample(PointSampler_s, r3.xy).xyz;
  r6.w = GBufferDepth.Sample(PointSampler_s, r3.xy).x;
  r3.x = GBufferDiffuseColor.Sample(PointSampler_s, r3.xy).w;
  r10.xyz = diffuseLighting.Sample(PointSampler_s, r3.zw).xyz;
  r3.y = GBufferDepth.Sample(PointSampler_s, r3.zw).x;
  r3.z = GBufferDiffuseColor.Sample(PointSampler_s, r3.zw).w;
  r11.xyz = diffuseLighting.Sample(PointSampler_s, r5.zw).xyz;
  r3.w = GBufferDepth.Sample(PointSampler_s, r5.zw).x;
  r5.z = GBufferDiffuseColor.Sample(PointSampler_s, r5.zw).w;
  if (r1.y != 0) {
    r1.y = cmp(r0.w >= 0.984375);
    r5.w = 1.01587307 * r0.w;
    r7.w = r0.w * 64 + -63;
    r1.y = r1.y ? r7.w : r5.w;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.z = r1.z + -r1.x;
    r1.z = cmp(0.349999994 < abs(r1.z));
    r1.y = r1.z ? 65504 : r1.y;
    r1.y = -sssParams.y * r1.y + r1.w;
    r1.y = -abs(r1.y) * abs(r1.y);
    r1.y = sssParams.w * r1.y;
    r1.y = exp2(r1.y);
    r12.xyz = float3(0.174447,0.0479632989,8.1458802e-07) * r1.yyy;
    r12.xyz = r12.xyz * r6.xyz + r4.xyz;
    r13.xyz = r1.yyy * float3(0.174447,0.0479632989,8.1458802e-07) + float3(0.0715152994,0.231067002,0.798469007);
    r1.y = cmp(r2.w >= 0.984375);
    r1.z = 1.01587307 * r2.w;
    r5.w = r2.w * 64 + -63;
    r1.y = r1.y ? r5.w : r1.z;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.z = r4.w + -r1.x;
    r1.z = cmp(0.349999994 < abs(r1.z));
    r1.y = r1.z ? 65504 : r1.y;
    r1.y = -sssParams.y * r1.y + r1.w;
    r1.y = -abs(r1.y) * abs(r1.y);
    r1.y = sssParams.w * r1.y;
    r1.y = exp2(r1.y);
    r14.xyz = float3(0.178063005,0.0941203013,0.0072812601) * r1.yyy;
    r12.xyz = r14.xyz * r8.xyz + r12.xyz;
    r13.xyz = r1.yyy * float3(0.178063005,0.0941203013,0.0072812601) + r13.xyz;
    r1.y = cmp(r5.x >= 0.984375);
    r1.z = 1.01587307 * r5.x;
    r4.w = r5.x * 64 + -63;
    r1.y = r1.y ? r4.w : r1.z;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.z = r5.y + -r1.x;
    r1.z = cmp(0.349999994 < abs(r1.z));
    r1.y = r1.z ? 65504 : r1.y;
    r1.y = -sssParams.y * r1.y + r1.w;
    r1.y = -abs(r1.y) * abs(r1.y);
    r1.y = sssParams.w * r1.y;
    r1.y = exp2(r1.y);
    r14.xyz = float3(0.111732997,0.242384002,0.0934842005) * r1.yyy;
    r12.xyz = r14.xyz * r9.xyz + r12.xyz;
    r13.xyz = r1.yyy * float3(0.111732997,0.242384002,0.0934842005) + r13.xyz;
    r1.y = cmp(r6.w >= 0.984375);
    r1.z = 1.01587307 * r6.w;
    r4.w = r6.w * 64 + -63;
    r1.y = r1.y ? r4.w : r1.z;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.z = r3.x + -r1.x;
    r1.z = cmp(0.349999994 < abs(r1.z));
    r1.y = r1.z ? 65504 : r1.y;
    r1.y = -sssParams.y * r1.y + r1.w;
    r1.y = -abs(r1.y) * abs(r1.y);
    r1.y = sssParams.w * r1.y;
    r1.y = exp2(r1.y);
    r14.xyz = float3(0.111732997,0.242383003,0.0934825018) * r1.yyy;
    r12.xyz = r14.xyz * r7.xyz + r12.xyz;
    r13.xyz = r1.yyy * float3(0.111732997,0.242383003,0.0934825018) + r13.xyz;
    r1.y = cmp(r3.y >= 0.984375);
    r1.z = 1.01587307 * r3.y;
    r3.x = r3.y * 64 + -63;
    r1.y = r1.y ? r3.x : r1.z;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.z = r3.z + -r1.x;
    r1.z = cmp(0.349999994 < abs(r1.z));
    r1.y = r1.z ? 65504 : r1.y;
    r1.y = -sssParams.y * r1.y + r1.w;
    r1.y = -abs(r1.y) * abs(r1.y);
    r1.y = sssParams.w * r1.y;
    r1.y = exp2(r1.y);
    r14.xyz = float3(0.178063005,0.094119899,0.0072811502) * r1.yyy;
    r12.xyz = r14.xyz * r10.xyz + r12.xyz;
    r13.xyz = r1.yyy * float3(0.178063005,0.094119899,0.0072811502) + r13.xyz;
    r1.y = cmp(r3.w >= 0.984375);
    r1.z = 1.01587307 * r3.w;
    r3.x = r3.w * 64 + -63;
    r1.y = r1.y ? r3.x : r1.z;
    r1.y = max(9.99999994e-09, r1.y);
    r1.y = rcp(r1.y);
    r1.x = r5.z + -r1.x;
    r1.x = cmp(0.349999994 < abs(r1.x));
    r1.x = r1.x ? 65504 : r1.y;
    r1.x = -sssParams.y * r1.x + r1.w;
    r1.x = -abs(r1.x) * abs(r1.x);
    r1.x = sssParams.w * r1.x;
    r1.x = exp2(r1.x);
    r5.yzw = float3(0.174446002,0.0479629003,8.14475015e-07) * r1.xxx;
    r5.yzw = r5.yzw * r11.xyz + r12.xyz;
    r1.xyz = r1.xxx * float3(0.174446002,0.0479629003,8.14475015e-07) + r13.xyz;
  } else {
    r3.x = cmp(r0.w >= 0.984375);
    r3.z = 1.01587307 * r0.w;
    r0.w = r0.w * 64 + -63;
    r0.w = r3.x ? r0.w : r3.z;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r0.w = -sssParams.y * r0.w + r1.w;
    r0.w = -abs(r0.w) * abs(r0.w);
    r0.w = sssParams.w * r0.w;
    r0.w = exp2(r0.w);
    r12.xyz = float3(0.174447,0.0479632989,8.1458802e-07) * r0.www;
    r4.xyz = r12.xyz * r6.xyz + r4.xyz;
    r6.xyz = r0.www * float3(0.174447,0.0479632989,8.1458802e-07) + float3(0.0715152994,0.231067002,0.798469007);
    r0.w = cmp(r2.w >= 0.984375);
    r3.x = 1.01587307 * r2.w;
    r2.w = r2.w * 64 + -63;
    r0.w = r0.w ? r2.w : r3.x;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r0.w = -sssParams.y * r0.w + r1.w;
    r0.w = -abs(r0.w) * abs(r0.w);
    r0.w = sssParams.w * r0.w;
    r0.w = exp2(r0.w);
    r12.xyz = float3(0.178063005,0.0941203013,0.0072812601) * r0.www;
    r4.xyz = r12.xyz * r8.xyz + r4.xyz;
    r6.xyz = r0.www * float3(0.178063005,0.0941203013,0.0072812601) + r6.xyz;
    r0.w = cmp(r5.x >= 0.984375);
    r2.w = 1.01587307 * r5.x;
    r3.x = r5.x * 64 + -63;
    r0.w = r0.w ? r3.x : r2.w;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r0.w = -sssParams.y * r0.w + r1.w;
    r0.w = -abs(r0.w) * abs(r0.w);
    r0.w = sssParams.w * r0.w;
    r0.w = exp2(r0.w);
    r8.xyz = float3(0.111732997,0.242384002,0.0934842005) * r0.www;
    r4.xyz = r8.xyz * r9.xyz + r4.xyz;
    r6.xyz = r0.www * float3(0.111732997,0.242384002,0.0934842005) + r6.xyz;
    r0.w = cmp(r6.w >= 0.984375);
    r2.w = 1.01587307 * r6.w;
    r3.x = r6.w * 64 + -63;
    r0.w = r0.w ? r3.x : r2.w;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r0.w = -sssParams.y * r0.w + r1.w;
    r0.w = -abs(r0.w) * abs(r0.w);
    r0.w = sssParams.w * r0.w;
    r0.w = exp2(r0.w);
    r8.xyz = float3(0.111732997,0.242383003,0.0934825018) * r0.www;
    r4.xyz = r8.xyz * r7.xyz + r4.xyz;
    r6.xyz = r0.www * float3(0.111732997,0.242383003,0.0934825018) + r6.xyz;
    r0.w = cmp(r3.y >= 0.984375);
    r2.w = 1.01587307 * r3.y;
    r3.x = r3.y * 64 + -63;
    r0.w = r0.w ? r3.x : r2.w;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r0.w = -sssParams.y * r0.w + r1.w;
    r0.w = -abs(r0.w) * abs(r0.w);
    r0.w = sssParams.w * r0.w;
    r0.w = exp2(r0.w);
    r3.xyz = float3(0.178063005,0.094119899,0.0072811502) * r0.www;
    r3.xyz = r3.xyz * r10.xyz + r4.xyz;
    r4.xyz = r0.www * float3(0.178063005,0.094119899,0.0072811502) + r6.xyz;
    r0.w = cmp(r3.w >= 0.984375);
    r2.w = 1.01587307 * r3.w;
    r3.w = r3.w * 64 + -63;
    r0.w = r0.w ? r3.w : r2.w;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r0.w = -sssParams.y * r0.w + r1.w;
    r0.w = -abs(r0.w) * abs(r0.w);
    r0.w = sssParams.w * r0.w;
    r0.w = exp2(r0.w);
    r6.xyz = float3(0.174446002,0.0479629003,8.14475015e-07) * r0.www;
    r5.yzw = r6.xyz * r11.xyz + r3.xyz;
    r1.xyz = r0.www * float3(0.174446002,0.0479629003,8.14475015e-07) + r4.xyz;
  }
  r1.xyz = float3(1,1,1) + -r1.xyz;
  r1.xyz = r2.xyz * r1.xyz + r5.yzw;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
  return;
}