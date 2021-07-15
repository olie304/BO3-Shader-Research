// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:56 2021

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
  uint zFeatherComputeSprites : packoffset(c11.z);
  float hdrScale : packoffset(c11.w);
  bool flowAlpha : packoffset(c12);
  float4 flowParams : packoffset(c13);
  float4 noiseParams : packoffset(c14);
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
SamplerState noiseSampler_s : register(s3);
SamplerState flowSampler_s : register(s5);
Texture2D<float4> emissiveMap : register(t0);
Texture2D<float4> emissiveFlowMap : register(t21);
Texture2D<float4> flowMap : register(t22);
Texture2D<float4> noiseMap : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  float3 v5 : OFFPOSITION0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = emissiveMap.Sample(colorSampler_s, w1.xy).xyzw;
  r1.xy = gameTime.ww * noiseParams.xy;
  r1.xy = w1.xy * noiseParams.zz + r1.xy;
  r1.xy = noiseMap.Sample(noiseSampler_s, r1.xy).xy;
  r1.xy = noiseParams.ww * r1.xy;
  r1.xy = w1.xy * flowParams.xx + r1.xy;
  r1.zw = frac(r1.xy);
  r2.xy = r1.zw * float2(-2,-2) + float2(3,3);
  r1.zw = r1.zw * r1.zw;
  r1.zw = r2.xy * r1.zw;
  r2.xy = floor(r1.xy);
  r2.xy = r2.xy / flowParams.xx;
  r2.xy = flowMap.Sample(flowSampler_s, r2.xy).xy;
  r2.xy = r2.xy + r2.xy;
  r3.xyzw = float4(1,0,0,1) + r1.xyxy;
  r3.xyzw = floor(r3.xyzw);
  r3.xyzw = r3.xyzw / flowParams.xxxx;
  r2.zw = flowMap.Sample(flowSampler_s, r3.xy).xy;
  r2.zw = r2.zw + r2.zw;
  r3.xy = flowMap.Sample(flowSampler_s, r3.zw).xy;
  r3.xy = r3.xy + r3.xy;
  r1.xy = float2(1,1) + r1.xy;
  r1.xy = floor(r1.xy);
  r1.xy = r1.xy / flowParams.xx;
  r1.xy = flowMap.Sample(flowSampler_s, r1.xy).xy;
  r1.xy = r1.xy + r1.xy;
  emissiveFlowMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r3.zw = fDest.xy;
  r3.zw = w1.xy * r3.zw;
  r4.xy = ddx_coarse(r3.zw);
  r3.zw = ddy_coarse(r3.zw);
  r4.x = dot(r4.xy, r4.xy);
  r3.z = dot(r3.zw, r3.zw);
  r3.z = max(r4.x, r3.z);
  r3.z = log2(r3.z);
  r3.z = 0.5 * r3.z;
  if (flowAlpha != 0) {
    r4.xyz = emissiveFlowMap.Sample(colorSampler_s, w1.xy).xyz;
    r3.w = gameTime.w * flowParams.y;
    r5.xy = r2.xy * float2(-1,1) + float2(1,-1);
    r5.xy = r5.xy * r3.ww + w1.xy;
    r4.w = emissiveFlowMap.SampleLevel(colorSampler_s, r5.xy, r3.z).w;
    r5.xy = r2.zw * float2(-1,1) + float2(1,-1);
    r5.xy = r5.xy * r3.ww + w1.xy;
    r5.x = emissiveFlowMap.SampleLevel(colorSampler_s, r5.xy, r3.z).w;
    r5.x = r5.x + -r4.w;
    r4.w = r1.z * r5.x + r4.w;
    r5.xy = r3.xy * float2(-1,1) + float2(1,-1);
    r5.xy = r5.xy * r3.ww + w1.xy;
    r5.x = emissiveFlowMap.SampleLevel(colorSampler_s, r5.xy, r3.z).w;
    r5.yz = r1.xy * float2(-1,1) + float2(1,-1);
    r5.yz = r5.yz * r3.ww + w1.xy;
    r3.w = emissiveFlowMap.SampleLevel(colorSampler_s, r5.yz, r3.z).w;
    r3.w = r3.w + -r5.x;
    r3.w = r1.z * r3.w + r5.x;
    r3.w = r3.w + -r4.w;
    r5.x = r1.w * r3.w + r4.w;
  } else {
    r3.w = gameTime.w * flowParams.y;
    r2.xy = r2.xy * float2(-1,1) + float2(1,-1);
    r2.xy = r2.xy * r3.ww + w1.xy;
    r5.xyzw = emissiveFlowMap.SampleLevel(colorSampler_s, r2.xy, r3.z).wxyz;
    r2.xy = r2.zw * float2(-1,1) + float2(1,-1);
    r2.xy = r2.xy * r3.ww + w1.xy;
    r2.xyz = emissiveFlowMap.SampleLevel(colorSampler_s, r2.xy, r3.z).xyz;
    r2.xyz = r2.xyz + -r5.yzw;
    r2.xyz = r1.zzz * r2.xyz + r5.yzw;
    r3.xy = r3.xy * float2(-1,1) + float2(1,-1);
    r3.xy = r3.xy * r3.ww + w1.xy;
    r5.yzw = emissiveFlowMap.SampleLevel(colorSampler_s, r3.xy, r3.z).xyz;
    r1.xy = r1.xy * float2(-1,1) + float2(1,-1);
    r1.xy = r1.xy * r3.ww + w1.xy;
    r3.xyz = emissiveFlowMap.SampleLevel(colorSampler_s, r1.xy, r3.z).xyz;
    r3.xyz = r3.xyz + -r5.yzw;
    r1.xyz = r1.zzz * r3.xyz + r5.yzw;
    r1.xyz = r1.xyz + -r2.xyz;
    r4.xyz = r1.www * r1.xyz + r2.xyz;
  }
  r1.x = 1 + -r5.x;
  r1.yzw = r5.xxx * r4.xyz;
  r1.xyz = r0.xyz * r1.xxx + r1.yzw;
  r2.xyz = hdrScale * r1.xyz;
  r1.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.w != 0) {
    r1.w = dot(v5.xyz, v5.xyz);
    r2.w = rsqrt(r1.w);
    r3.xyz = v5.xyz * r2.www;
    r1.w = sqrt(r1.w);
    r2.w = cmp(0 < fogConstants.blendAmount);
    if (r2.w != 0) {
      r4.xy = r1.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r4.xy = fogConstants.atmospherefogdensityatcamera.xy * r4.xy;
      r2.w = cmp(0.00999999978 < abs(v5.z));
      r4.zw = fogConstants.atmospherefogheightdensityscale.xy * v5.zz;
      r5.xy = float2(-1.44269502,-1.44269502) * r4.zw;
      r5.xy = exp2(r5.xy);
      r5.xy = float2(1,1) + -r5.xy;
      r4.zw = r5.xy / r4.zw;
      r4.zw = r4.xy * r4.zw;
      r4.xy = r2.ww ? r4.zw : r4.xy;
      r4.xzw = fogConstants.atmosphereTotalDensity.xyz * r4.xxx;
      r4.xzw = exp2(r4.xzw);
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r4.yyy;
      r5.xyz = exp2(r5.xyz);
      r5.xyz = r5.xyz + -r4.xzw;
      r4.xyz = fogConstants.blendAmount * r5.xyz + r4.xzw;
    } else {
      r2.w = r1.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.w = cmp(0.00999999978 < abs(v5.z));
      r4.w = fogConstants.atmospherefogheightdensityscale.x * v5.z;
      r5.x = -1.44269502 * r4.w;
      r5.x = exp2(r5.x);
      r5.x = 1 + -r5.x;
      r4.w = r5.x / r4.w;
      r4.w = r4.w * r2.w;
      r2.w = r3.w ? r4.w : r2.w;
      r5.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
      r4.xyz = exp2(r5.xyz);
    }
    r4.xyz = r4.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r4.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r4.xyz);
    r2.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r3.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.y = fogConstants.atmosphereMieSchlickK * -r2.w + 1;
    r3.y = r3.y * r3.y;
    r3.y = 12.566371 * r3.y;
    r3.x = r3.x / r3.y;
    r1.w = -fogConstants.atmospherehazebasedist + r1.w;
    r1.w = saturate(fogConstants.atmospherehazefadedist * r1.w);
    r1.w = r3.x * r1.w;
    r2.w = saturate(r2.w);
    r2.w = r2.w * r2.w + 1;
    r2.w = r2.w * 0.0596831031 + -1;
    r2.w = fogConstants.atmospheresunstrength * r2.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r1.www;
    r3.xyz = r2.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r4.xyz;
    r3.xyz = r5.xyz * r3.xyz;
    r3.xyz = r2.xyz * r4.xyz + r3.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v5.z;
    r2.w = fogConstants.heightFalloff * v5.z + fogConstants.K0;
    r3.w = cmp(abs(r1.w) < 9.99999975e-05);
    r4.x = min(64, r2.w);
    r4.x = 1.44269502 * r4.x;
    r4.x = exp2(r4.x);
    r4.y = saturate(fogConstants.K0b);
    r4.z = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r4.z ? r4.x : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r1.w = r3.w ? 1 : r1.w;
    r1.w = r2.w / r1.w;
    r1.w = r3.w ? r4.y : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r2.w = dot(v5.xyz, v5.xyz);
    r3.w = sqrt(r2.w);
    r1.w = r1.w * r3.w + fogConstants.expAdd;
    r1.w = exp2(r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r2.w = rsqrt(r2.w);
    r4.xyz = v5.xyz * r2.www;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r4.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r4.xyzw = r2.wwww * r4.xyzw + fogConstants.sunFogColor.xyzw;
    r1.w = r4.w * r1.w;
    r1.xyz = -r1.xyz * hdrScale + r4.xyz;
    r3.xyz = r1.www * r1.xyz + r2.xyz;
  }
  r1.xyz = max(float3(0,0,0), r3.xyz);
  r0.xyz = r1.xyz * r0.www;
  r1.w = (int)r0.w & 0x7f800000;
  r1.w = cmp((int)r1.w == 0x7f800000);
  r2.xyzw = cmp(r0.xyzw == float4(0,0,0,0));
  r2.xy = r2.zw ? r2.xy : 0;
  r2.x = r2.y ? r2.x : 0;
  r1.w = (int)r1.w | (int)r2.x;
  if (r1.w == 0) {
    r2.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r2.z, u6, r2.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r1.w = cmp((uint)r2.z < oitMaxEntries);
    if (r1.w != 0) {
      r1.w = max(r0.y, r0.z);
      r1.w = max(r1.w, r0.x);
      r1.w = abs(r1.w);
      r1.w = (int)r1.w & 0x7f800000;
      r1.w = (int)r1.w + 0x00800000;
      r1.xyz = r1.xyz * r0.www + r1.www;
      if (8 == 0) r1.x = 0; else if (8+15 < 32) {       r1.x = (uint)r1.x << (32-(8 + 15)); r1.x = (uint)r1.x >> (32-8);      } else r1.x = (uint)r1.x >> 15;
      r1.yz = (uint2)r1.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r1.y = (((uint)r1.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r1.z = (((uint)r1.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r1.x = (int)r1.y + (int)r1.x;
      r1.x = (int)r1.z + (int)r1.x;
      r1.y = (uint)r1.w << 1;
      r1.xzw = (int3)r1.yyy + (int3)r1.xxx;
      r2.w = saturate(r0.w);
      r2.w = 2046 * r2.w;
      r2.w = (uint)r2.w;
      r3.w = (uint)v0.z << 2;
      r2.w = (int)r2.w & 2046;
      bitmask.w = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.w = (((uint)r2.w << 0) & bitmask.w) | ((uint)r3.w & ~bitmask.w);
      bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r1.y = (((uint)zFeatherComputeSprites << 0) & bitmask.y) | ((uint)r2.w & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r2.xyzz, r1.xyzw
      r1.x = -1;
    } else {
      r1.x = 0;
    }
  } else {
    r1.x = -1;
  }
  r0.xyz = r3.xyz * r0.www;
  o0.xyzw = r1.xxxx ? float4(0,0,0,0) : r0.xyzw;
  return;
}