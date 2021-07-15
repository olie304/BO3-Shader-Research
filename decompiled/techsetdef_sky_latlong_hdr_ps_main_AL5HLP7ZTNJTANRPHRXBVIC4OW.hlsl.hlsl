// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:24 2021

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
  float skyScale : packoffset(c10);
  float skyFogFraction : packoffset(c10.y);
  float3 skyOrigin : packoffset(c11);
  float skyHorizonOffset : packoffset(c11.w);
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
Texture2D<float4> colorMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float3 v3 : TEXCOORD2,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.yzw = v1.xyz * r0.xxx;
  r1.x = cmp(r0.w < skyHorizonOffset);
  r0.x = saturate(-v1.z * r0.x + skyHorizonOffset);
  r0.x = max(9.99999975e-05, r0.x);
  r0.x = v3.z / r0.x;
  r0.x = min(131072, r0.x);
  r0.x = r1.x ? r0.x : 131072;
  r1.xyz = skyOrigin.xyz + v3.xyz;
  r0.xyz = r0.yzw * r0.xxx + r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = min(abs(r0.y), abs(r0.x));
  r1.x = max(abs(r0.y), abs(r0.x));
  r1.x = 1 / r1.x;
  r0.w = r1.x * r0.w;
  r1.x = r0.w * r0.w;
  r1.y = r1.x * 0.0208350997 + -0.0851330012;
  r1.y = r1.x * r1.y + 0.180141002;
  r1.y = r1.x * r1.y + -0.330299497;
  r1.x = r1.x * r1.y + 0.999866009;
  r1.y = r1.x * r0.w;
  r1.z = cmp(abs(r0.x) < abs(r0.y));
  r1.y = r1.y * -2 + 1.57079637;
  r1.y = r1.z ? r1.y : 0;
  r0.w = r0.w * r1.x + r1.y;
  r1.xy = cmp(r0.xz < -r0.xz);
  r1.x = r1.x ? -3.141593 : 0;
  r0.w = r1.x + r0.w;
  r1.x = min(r0.y, r0.x);
  r1.z = max(r0.y, r0.x);
  r1.x = cmp(r1.x < -r1.x);
  r1.z = cmp(r1.z >= -r1.z);
  r1.x = r1.z ? r1.x : 0;
  r2.x = r1.x ? -r0.w : r0.w;
  r0.w = 1 + -abs(r0.z);
  r0.w = sqrt(r0.w);
  r1.x = abs(r0.z) * -0.0187292993 + 0.0742610022;
  r1.x = r1.x * abs(r0.z) + -0.212114394;
  r1.x = r1.x * abs(r0.z) + 1.57072878;
  r1.z = r1.x * r0.w;
  r1.z = r1.z * -2 + 3.14159274;
  r1.y = r1.y ? r1.z : 0;
  r2.yz = r1.xx * r0.ww + r1.yy;
  r1.xyz = r2.xyz * float3(-0.159154937,0.318309873,-0.318309873) + float3(0.5,0,1);
  r2.xyz = colorMap.Sample(colorSampler_s, r1.xy).xyz;
  r1.xyz = colorMap.Sample(colorSampler_s, r1.xz).xyz;
  r1.xyz = r1.xyz + -r2.xyz;
  r1.xyz = skyRotationTransition.www * r1.xyz + r2.xyz;
  r2.x = dot(r1.xyz, skyMxR.xyz);
  r2.y = dot(r1.xyz, skyMxG.xyz);
  r2.z = dot(r1.xyz, skyMxB.xyz);
  r3.x = dot(r1.xyz, sunMxR.xyz);
  r3.y = dot(r1.xyz, sunMxG.xyz);
  r3.z = dot(r1.xyz, sunMxB.xyz);
  r1.x = skyMxR.w;
  r1.y = skyMxG.w;
  r1.z = skyMxB.w;
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.x = saturate(r0.x * sunMxR.w + sunMxG.w);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r0.x * r0.y;
  r0.yzw = r3.xyz + -r2.xyz;
  r0.xyz = r0.xxx * r0.yzw + r2.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.xyz = skyScale * r0.xyz;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v2.xyz * r0.www;
  r2.xyz = fogConstants.worldfogskysize * r2.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(r2.xyz, r2.xyz);
    r1.w = rsqrt(r0.w);
    r3.xyz = r2.xyz * r1.www;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r4.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmosphereskyfogdensityatcamera.xy * r4.xy;
      r1.w = cmp(0.00999999978 < abs(r2.z));
      r4.zw = fogConstants.atmosphereskyfogheightdensityscale.xy * r2.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.zw = r5.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r1.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmosphereskyfogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(r2.z));
      r3.w = fogConstants.atmosphereskyfogheightdensityscale.x * r2.z;
      r4.w = -1.44269502 * r3.w;
      r4.w = exp2(r4.w);
      r4.w = 1 + -r4.w;
      r3.w = r4.w / r3.w;
      r3.w = r3.w * r1.w;
      r1.w = r2.w ? r3.w : r1.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r1.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r2.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.x = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r2.w = r2.w / r3.x;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.w * r0.w;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r3.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r1.xyz * r4.xyz + r3.xyz;
  } else {
    r0.w = fogConstants.skyHeightFalloff * r2.z;
    r1.w = fogConstants.skyHeightFalloff * r2.z + fogConstants.skyK0;
    r2.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.w = min(64, r1.w);
    r3.w = 1.44269502 * r3.w;
    r3.w = exp2(r3.w);
    r4.x = saturate(fogConstants.skyK0b);
    r4.y = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r4.y ? r3.w : r1.w;
    r1.w = -fogConstants.skyK0b + r1.w;
    r0.w = r2.w ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.w ? r4.x : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(r2.xyz, r2.xyz);
    r2.w = sqrt(r1.w);
    r0.w = r0.w * r2.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = r2.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r1.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r2.w * r0.w;
    r0.xyz = -r0.xyz * skyScale + r2.xyz;
    r3.xyz = r0.www * r0.xyz + r1.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r3.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = 1;
  return;
}