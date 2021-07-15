// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:33 2021

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
  float2 falloffParms : packoffset(c11.z);
  uint zFeatherComputeSprites : packoffset(c12);
  float desaturationAmount : packoffset(c12.y);
  float4 levelsControls : packoffset(c13);
  bool useOldHDRScale : packoffset(c14);
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

SamplerState samplerLinear_s : register(s2);
SamplerState samplerLinearClamp_s : register(s4);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2DArray<uint> visibleLights : register(t6);
Texture2DArray<uint> visibleProbes : register(t7);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
StructuredBuffer<refProbeConstants> refProbeConstants : register(t15);
StructuredBuffer<refProbeAttenuationConstants> refProbeAttenuationConstants : register(t16);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  float4 v3 : NORMAL0,
  float4 v4 : TANGENT0,
  uint v5 : SV_VertexID0,
  uint v6 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : COLOR2,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD2,
  out float4 o6 : TEXCOORD3,
  out float2 o7 : TEXCOORD4,
  out float2 p7 : TEXCOORD5,
  out uint4 o8 : TEXCOORD6,
  out float4 o9 : TEXCOORD7,
  out float3 o10 : TEXCOORD8)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  o6.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r0.xy = cmp(falloffParms.xy == float2(0,0));
  r0.x = r0.y ? r0.x : 0;
  r0.yz = float2(0.0174532924,0.0174532924) * falloffParms.xy;
  r0.yz = cos(r0.yz);
  r0.zw = r0.yz * r0.yz;
  r0.y = r0.y * r0.y + -r0.w;
  r1.x = 1 / r0.y;
  r1.y = -r0.z * r1.x + 1;
  o7.xy = r0.xx ? float2(0,1) : r1.xy;
  r0.x = (uint)v0.w >> 16;
  o4.w = f16tof32(r0.x);
  r0.x = cmp(v3.w == 0.000000);
  r0.y = (int)v0.w & 0x0000ffff;
  r0.y = (uint)r0.y;
  r1.x = 0.00390625 * r0.y;
  r2.xyzw = float4(1023,1023,1023,3) * v4.xyzw;
  r2.xyzw = (uint4)r2.xyzw;
  r0.yzw = (uint3)r2.yzw << int3(10,20,30);
  r0.y = (int)r0.y | (int)r2.x;
  r0.y = (int)r0.z | (int)r0.y;
  r1.z = (int)r0.w | (int)r0.y;
  r1.y = 1;
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o3.xy = v2.xy * r0.yy;
  r1.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r1.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r1.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  r1.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
  r2.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * v0.yyyy;
  r2.xyzw = v0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = v0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  o0.xyzw = r2.xyzw + r1.xyzw;
  r1.xyz = -eyeOffset.xyz + v0.xyz;
  r0.w = cmp(0 < fogConsts4.w);
  if (r0.w != 0) {
    r0.w = dot(r1.xyz, r1.xyz);
    r2.x = rsqrt(r0.w);
    r2.xyz = r2.xxx * r1.xyz;
    r0.w = sqrt(r0.w);
    r2.x = dot(sunFogDir.xyz, -r2.xyz);
    r2.y = -fogConsts3.w * fogConsts3.w + 1;
    r2.z = fogConsts3.w * -r2.x + 1;
    r2.z = r2.z * r2.z;
    r2.z = 12.566371 * r2.z;
    r2.y = r2.y / r2.z;
    r2.z = -fogConsts9.z + r0.w;
    r2.z = saturate(fogConsts9.w * r2.z);
    r2.y = r2.y * r2.z;
    r0.w = r0.w * fogConsts7.x + fogConsts6.w;
    r0.w = fogConsts7.z * r0.w;
    r2.z = cmp(0.00999999978 < abs(r1.z));
    r2.w = fogConsts7.y * r1.z;
    r3.x = -1.44269502 * r2.w;
    r3.x = exp2(r3.x);
    r3.x = 1 + -r3.x;
    r2.w = r3.x / r2.w;
    r2.w = r2.w * r0.w;
    r0.w = r2.z ? r2.w : r0.w;
    r3.xyz = fogConsts5.xyz * r0.www;
    r3.xyz = exp2(r3.xyz);
    r3.xyz = r3.xyz * fogConsts4.www + float3(1,1,1);
    r3.xyz = saturate(-fogConsts4.www + r3.xyz);
    r2.x = saturate(r2.x);
    r0.w = r2.x * r2.x + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConsts7.w * r0.w + 1;
    r2.xyz = fogConsts4.xyz * r2.yyy;
    r2.xyz = r0.www * fogConsts3.xyz + r2.xyz;
    r2.xyz = fogConsts5.www * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    o10.xyz = r4.xyz * r2.xyz;
    o9.xyz = r3.xyz;
    o2.xyzw = float4(0,0,0,1);
  } else {
    r0.w = fogConsts.w * r1.z;
    r2.x = fogConsts.w * r1.z + fogConsts.x;
    r2.y = cmp(abs(r0.w) < 9.99999975e-05);
    r2.z = min(64, r2.x);
    r2.z = 1.44269502 * r2.z;
    r2.z = exp2(r2.z);
    r2.w = saturate(fogConsts2.x);
    r3.x = cmp(r2.x < 0);
    r2.x = 1 + r2.x;
    r2.x = r3.x ? r2.z : r2.x;
    r2.x = -fogConsts2.x + r2.x;
    r0.w = r2.y ? 1 : r0.w;
    r0.w = r2.x / r0.w;
    r0.w = r2.y ? r2.w : r0.w;
    r0.w = fogConsts.y * r0.w;
    r2.x = dot(r1.xyz, r1.xyz);
    r2.y = sqrt(r2.x);
    r0.w = r0.w * r2.y + fogConsts.z;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r2.x = rsqrt(r2.x);
    r2.xyz = r2.xxx * r1.xyz;
    r2.x = dot(sunFogDir.xyz, r2.xyz);
    r2.x = saturate(sunFog.y * r2.x + sunFog.x);
    r3.xyzw = -sunFogColor.xyzw + fogColor.xyzw;
    r2.xyzw = r2.xxxx * r3.xyzw + sunFogColor.xyzw;
    r0.w = 1 + -r0.w;
    o2.w = -r0.w * r2.w + 1;
    o9.xyz = float3(1,1,1);
    o10.xyz = float3(0,0,0);
    o2.xyz = r2.xyz;
  }
  r0.w = viewMatrix._m12 * r1.y;
  r0.w = r1.x * viewMatrix._m02 + r0.w;
  r0.w = r1.z * viewMatrix._m22 + r0.w;
  r2.xyz = viewProjectionMatrix._m10_m11_m13 * r1.yyy;
  r2.xyz = r1.xxx * viewProjectionMatrix._m00_m01_m03 + r2.xyz;
  r2.xyz = r1.zzz * viewProjectionMatrix._m20_m21_m23 + r2.xyz;
  r2.xyz = viewProjectionMatrix._m30_m31_m33 + r2.xyz;
  r2.z = rcp(r2.z);
  r2.xy = r2.xy * r2.zz;
  r2.xy = r2.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r2.xy = renderTargetSize.xy * r2.xy;
  r2.zw = float2(-1,-1) + renderTargetSize.xy;
  r2.xy = max(float2(0,0), r2.xy);
  r2.xy = min(r2.xy, r2.zw);
  r2.xy = (uint2)r2.xy;
  r3.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r1.yyy;
  r3.xyz = r1.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r3.xyz;
  r3.xyz = r1.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r3.xyz;
  r3.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r3.xyz;
  r2.zw = -sunConstants.splitPinTransform[2].xy + r3.xy;
  r2.zw = sunConstants.splitPinTransform[2].zz * r2.zw;
  r3.w = max(abs(r2.z), abs(r2.w));
  r3.w = cmp(1 < r3.w);
  if (r3.w != 0) {
    r4.xyz = float3(128,0.5,0.5) * sunConstants.sstLightingConstants.constants.inchesPerTexel;
    r5.xz = rcp(r4.xx);
    r5.y = -r5.z;
    r4.xyz = r3.xyx * r5.xyz + r4.yzy;
    r5.xyz = float3(-0.0078125,-0.0078125,-0.0078125) + sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(r4.xyz, r5.xyz);
    r5.xy = sunConstants.sstLightingConstants.coordScale * r4.zy;
    r5.xy = floor(r5.xy);
    r3.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r5.y;
    r3.w = r3.w * sunConstants.sstLightingConstants.coordScale + r5.x;
    r3.w = (uint)r3.w;
    r3.w = (int)r3.w + (int10)sunConstants.sstLightingConstants.rootOffset;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r3.w, l(0), t23.xxxx
  r4.w = samplerLinear[]..swiz;
    r5.x = (int)r4.w & 0x40000000;
    r5.y = (uint)r4.w << 2;
    if (r5.x == 0) {
      r5.x = (int)r4.w & 0x01ffffff;
      r6.x = (int)r3.w + (int)r5.x;
      r3.w = (uint)r4.w >> 25;
      r3.w = (uint)r3.w;
      r4.xyz = r4.xyz * r3.www;
      r4.xyz = frac(r4.xyz);
      r4.xyz = float3(128,128,128) * r4.xyz;
      r4.xyz = (uint3)r4.xyz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.z, r6.x, l(0), t23.xxxx
    r6.z = samplerLinear[]..swiz;
      r5.xz = (uint2)r4.zy >> int2(6,6);
      r3.w = (int)r6.z & 0xc0000000;
      r4.w = (int)r6.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r4.w, l(0), t23.xxxx
    r4.w = samplerLinear[]..swiz;
      r4.w = r5.z ? r6.z : r4.w;
      r5.z = (uint)r4.w >> 13;
      r4.w = r5.x ? r5.z : r4.w;
      r4.w = (int)r4.w & 8191;
      r7.x = (int)r4.w + (int)r6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.z, r7.x, l(0), t23.xxxx
    r7.z = samplerLinear[]..swiz;
      r6.y = 0;
      r7.y = 1;
      r5.xzw = r3.www ? r6.xyz : r7.xyz;
      r7.yz = r3.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
      r8.xy = (uint2)r4.zy >> (uint2)r7.yy;
      r8.xy = (int2)r8.xy & int2(1,1);
      r4.w = (int)r5.w & 0xc0000000;
      r6.w = (int)r5.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r6.w, l(0), t23.xxxx
    r6.w = samplerLinear[]..swiz;
      r6.w = r8.y ? r5.w : r6.w;
      r7.y = (uint)r6.w >> 13;
      r6.w = r8.x ? r7.y : r6.w;
      r6.w = (int)r6.w & 8191;
      r7.x = (int)r5.x + (int)r6.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.x, l(0), t23.xxxx
    r7.w = samplerLinear[]..swiz;
      r5.xzw = r4.www ? r5.xzw : r7.xzw;
      r5.xzw = r3.www ? r6.xyz : r5.xzw;
      r3.w = (int)r5.w & 0xc0000000;
      if (r3.w == 0) {
        r3.w = (int)-r5.z + 6;
        r6.xy = (uint2)r4.zy >> (uint2)r3.ww;
        r3.w = (int)r5.w | 0x40000000;
        bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r4.w = (((uint)r6.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
        bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.w = (((uint)r6.x << 0) & bitmask.w) | ((uint)r4.w & ~bitmask.w);
        r4.w = (int)r4.w * 10;
        r3.w = (uint)r3.w >> (uint)r4.w;
        r3.w = (int)r3.w & 1023;
        r6.x = (int)r3.w + (int)r5.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r6.x, l(0), t23.xxxx
      r6.w = samplerLinear[]..swiz;
        r6.yz = (int2)r5.zz + int2(1,2);
        r3.w = (int)-r6.y + 6;
        r7.xy = (uint2)r4.zy >> (uint2)r3.ww;
        r3.w = (int)r6.w & 0xc0000000;
        r4.w = (int)r6.w | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r5.z = (((uint)r7.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r5.z = (((uint)r7.x << 0) & bitmask.z) | ((uint)r5.z & ~bitmask.z);
        r5.z = (int)r5.z * 10;
        r4.w = (uint)r4.w >> (uint)r5.z;
        r4.w = (int)r4.w & 1023;
        r7.x = (int)r4.w + (int)r6.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.z, r7.x, l(0), t23.xxxx
      r7.z = samplerLinear[]..swiz;
        r7.y = r6.z;
        r7.xyz = r3.www ? r6.xyw : r7.xyz;
        r4.w = (int)-r7.y + 6;
        r6.yz = (uint2)r4.zy >> (uint2)r4.ww;
        r4.w = (int)r7.z & 0xc0000000;
        r5.z = (int)r7.z | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r6.z = (((uint)r6.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r6.y = (((uint)r6.y << 0) & bitmask.y) | ((uint)r6.z & ~bitmask.y);
        r6.y = (int)r6.y * 10;
        r5.z = (uint)r5.z >> (uint)r6.y;
        r5.z = (int)r5.z & 1023;
        r8.x = (int)r5.z + (int)r7.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.y, r8.x, l(0), t23.xxxx
      r8.y = samplerLinear[]..swiz;
        r6.yz = r4.ww ? r7.xz : r8.xy;
        r5.xw = r3.ww ? r6.xw : r6.yz;
      }
      r3.w = (int)r5.w & 0xc0000000;
      if (r3.w == 0) {
        if (14 == 0) r4.w = 0; else if (14+15 < 32) {         r4.w = (uint)r5.w << (32-(14 + 15)); r4.w = (uint)r4.w >> (32-14);        } else r4.w = (uint)r5.w >> 15;
        r4.w = (uint)r4.w;
        r4.w = sunConstants.sstLightingConstants.constants.spanInInches * r4.w;
        r4.w = 6.10388815e-05 * r4.w;
        r6.xy = (int2)r5.ww & int2(32767,536870912);
        r5.z = (uint)r6.x;
        r5.z = sunConstants.sstLightingConstants.constants.spanInInches * r5.z;
        r5.z = 3.05185094e-05 * r5.z;
        r6.x = (int)r4.y & 3;
        r6.x = (int)r5.x + (int)r6.x;
        r6.x = (int)r6.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.x, r6.x, l(0), t23.xxxx
      r6.x = samplerLinear[]..swiz;
        bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r7.x = (((uint)r4.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
        bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r7.y = (((uint)r4.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
        bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r7.z = (((uint)r4.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
        r4.x = (uint)r6.x >> (uint)r7.x;
        r4.x = (int)r4.x & 255;
        r4.x = (uint)r4.x;
        r4.x = r4.x * r5.z;
        r4.x = r4.x * 0.00392156886 + r4.w;
        r4.y = (int)r7.y + 1;
        if (1 == 0) r4.z = 0; else if (1+1 < 32) {         r4.z = (uint)r4.z << (32-(1 + 1)); r4.z = (uint)r4.z >> (32-1);        } else r4.z = (uint)r4.z >> 1;
        r4.y = (int)r4.z + (int)r4.y;
        r4.y = (int)r4.y + (int)r5.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.y, r4.y, l(0), t23.xxxx
      r4.y = samplerLinear[]..swiz;
        r4.y = (uint)r4.y >> (uint)r7.z;
        r4.y = (int)r4.y & 0x0000ffff;
        r4.y = (uint)r4.y;
        r4.y = r4.y * r5.z;
        r4.y = r4.y * 1.52590219e-05 + r4.w;
        r5.y = r6.y ? r4.x : r4.y;
      } else {
        r4.x = (int)r5.w & 0x80000000;
        r4.y = (int)r5.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.y, r4.y, l(0), t23.xxxx
      r4.y = samplerLinear[]..swiz;
        r4.x = r4.x ? r4.y : 0;
        r4.y = (uint)r5.w << 2;
        r4.z = (uint)r4.x >> 16;
        r4.x = (int)r4.x & 0x0000ffff;
        r4.xz = f16tof32(r4.xz);
        r3.x = r3.x * r4.z + r4.y;
        r3.x = r3.y * r4.x + r3.x;
        r5.y = r3.w ? r3.x : r5.y;
      }
    }
    r3.x = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r3.z;
    r3.x = cmp(r5.y < r3.x);
    r3.x = r3.x ? 0 : 1;
  } else {
    r4.xy = r2.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r2.z = -sunConstants.splitDepthOffset + r3.z;
    r2.z = -r2.z * 6.10351563e-05 + 1;
    r2.w = (int16)sunConstants.splitArrayOffset + 2;
    r4.z = (uint)r2.w;
    r2.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r4.xyz, r2.z, int2(1, 1)).x;
    r3.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r4.xyz, r2.z, int2(1, -1)).x;
    r2.w = r3.y + r2.w;
    r3.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r4.xyz, r2.z, int2(-1, 1)).x;
    r2.w = r3.y + r2.w;
    r2.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r4.xyz, r2.z, int2(-1, -1)).x;
    r2.z = r2.w + r2.z;
    r3.x = 0.25 * r2.z;
  }
  r3.xyz = sunConstants.color.xyz * r3.xxx;
  r3.xyz = float3(0.25,0.25,0.25) * r3.xyz;
  r0.w = 0.0078125 * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(15, r0.w);
  r0.w = (uint)r0.w;
  r2.xy = (uint2)r2.xy >> int2(6,6);
  r2.z = (uint)r0.w << 4;
  r4.xy = float2(0,0);
  r5.w = 0;
  r1.w = 1;
  r6.z = 1;
  r7.xyz = r3.xyz;
  r0.w = 0;
  while (true) {
    r2.w = cmp((uint)r0.w >= numLights);
    if (r2.w != 0) break;
    r4.z = (uint)r0.w >> 5;
    r5.xyz = (int3)r2.xyz + (int3)r4.xyz;
    r2.w = visibleLights.Load(r5.xyzw).x;
    r8.xyz = r7.xyz;
    r8.w = r2.w;
    while (true) {
      if (r8.w == 0) break;
      r3.w = firstbitlow((uint)r8.w);
      r4.z = 1 << (int)r3.w;
      r4.w = (int)r4.z & (int)r8.w;
      if (r4.w != 0) {
        r8.w = (int)r4.z ^ (int)r8.w;
        r3.w = (int)r0.w + (int)r3.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.xyzw, r3.w, l(0), t12.xyzw
      r9.x = samplerLinear[]..swiz;
      r9.y = samplerLinear[]..swiz;
      r9.z = samplerLinear[]..swiz;
      r9.w = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.yz, r3.w, l(16), t12.xxyx
      r10.y = samplerLinear[]..swiz;
      r10.z = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r3.w, l(28), t12.xyzw
      r11.x = samplerLinear[]..swiz;
      r11.y = samplerLinear[]..swiz;
      r11.z = samplerLinear[]..swiz;
      r11.w = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r4.zw, r3.w, l(44), t12.xxxy
      r4.z = samplerLinear[]..swiz;
      r4.w = samplerLinear[]..swiz;
        if (3 == 0) r5.x = 0; else if (3+24 < 32) {         r5.x = (uint)r11.x << (32-(3 + 24)); r5.x = (uint)r5.x >> (32-3);        } else r5.x = (uint)r11.x >> 24;
        switch (r5.x) {
          case 2 :        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r3.w, l(116), t12.xyzw
        r12.x = samplerLinear[]..swiz;
        r12.y = samplerLinear[]..swiz;
        r12.z = samplerLinear[]..swiz;
        r12.w = samplerLinear[]..swiz;
          r6.w = dot(r12.xyzw, r1.xyzw);
          r7.w = cmp(r6.w < 1);
          if (r7.w != 0) {
            r5.xyz = r8.xyz;
            break;
          }
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r3.w, l(68), t12.xyzw
        r12.x = samplerLinear[]..swiz;
        r12.y = samplerLinear[]..swiz;
        r12.z = samplerLinear[]..swiz;
        r12.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r3.w, l(84), t12.xyzw
        r13.x = samplerLinear[]..swiz;
        r13.y = samplerLinear[]..swiz;
        r13.z = samplerLinear[]..swiz;
        r13.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r3.w, l(172), t12.yzwx
        r14.x = samplerLinear[]..swiz;
        r14.y = samplerLinear[]..swiz;
        r14.z = samplerLinear[]..swiz;
        r14.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r3.w, l(188), t12.wxyz
        r15.x = samplerLinear[]..swiz;
        r15.y = samplerLinear[]..swiz;
        r15.z = samplerLinear[]..swiz;
        r15.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r3.w, l(204), t12.xyzw
        r16.x = samplerLinear[]..swiz;
        r16.y = samplerLinear[]..swiz;
        r16.z = samplerLinear[]..swiz;
        r16.w = samplerLinear[]..swiz;
          r17.xyz = r9.xyz + -r1.xyz;
          r7.w = r4.w * r4.w;
          r11.x = dot(r17.xyz, r17.xyz);
          r7.w = r7.w / r11.x;
          r7.w = min(1, r7.w);
          r11.x = saturate(r6.w * r11.y + r11.z);
          r17.x = saturate(r6.w * r11.w + r4.z);
          r17.y = r11.x * r11.x;
          r11.x = r11.x * -2 + 3;
          r11.x = r17.y * r11.x;
          r7.w = r11.x * r7.w;
          r11.x = r17.x * r17.x;
          r17.x = r17.x * -2 + 3;
          r11.x = r17.x * r11.x;
          r7.w = r11.x * r7.w;
          r12.x = dot(r12.xyzw, r1.xyzw);
          r12.y = dot(r13.xyzw, r1.xyzw);
          r6.xy = r12.xy / r6.ww;
          r6.w = cmp(r14.w < 0.00048828125);
          if (r6.w != 0) {
            r15.y = r16.x;
            r12.xy = saturate(abs(r6.xy) * r15.zw + r15.xy);
            r12.zw = r12.xy * r12.xy;
            r12.xy = r12.xy * float2(-2,-2) + float2(3,3);
            r12.xy = r12.zw * r12.xy;
            r6.w = r12.x * r12.y;
            r6.w = r7.w * r6.w;
          } else {
            r14.w = r15.y;
            r12.xyzw = saturate(r14.xyzw * abs(r6.yyxx));
            r12.xyzw = log2(r12.xyzw);
            r12.xyzw = r15.xxxx * r12.xyzw;
            r12.xyzw = exp2(r12.xyzw);
            r12.xy = r12.xy + r12.zw;
            r12.xy = log2(r12.xy);
            r12.xy = r16.xx * r12.xy;
            r12.xy = exp2(r12.xy);
            r11.x = r15.z * r12.x;
            r12.x = r15.w * r12.y + -1;
            r11.x = r15.w * r12.y + -r11.x;
            r11.x = saturate(r12.x / r11.x);
            r12.x = r11.x * r11.x;
            r11.x = r11.x * -2 + 3;
            r11.x = r12.x * r11.x;
            r6.w = r11.x * r7.w;
          }
          r7.w = cmp(0 >= r6.w);
          if (r7.w != 0) {
            r5.xyz = r8.xyz;
            break;
          }
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.w, r3.w, l(236), t12.xxxx
        r7.w = samplerLinear[]..swiz;
          r7.w = r7.w ? 0.000000 : 0;
          if (r7.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyz, r3.w, l(220), t12.xyzx
          r12.x = samplerLinear[]..swiz;
          r12.y = samplerLinear[]..swiz;
          r12.z = samplerLinear[]..swiz;
            r3.w = dot(r16.yzw, r6.xyz);
            r6.x = dot(r12.xyz, r6.xyz);
            r12.x = frac(r3.w);
            r12.y = frac(r6.x);
            r3.w = (int)r7.w + -1;
            r12.z = (uint)r3.w;
            r12.xyz = gCookieArray.SampleLevel(samplerLinear_s, r12.xyz, 0).xyz;
            r10.w = r9.w;
            r10.xyz = r12.xyz * r10.wyz;
          } else {
            r10.x = r9.w;
          }
          r3.w = 0.25 * r6.w;
          r6.xyw = r3.www * r10.xyz;
          r3.w = dot(r6.xyw, float3(0.298999995,0.587000012,0.114));
          r3.w = max(9.99999997e-07, r3.w);
          r7.w = min(relHDRExposure.x, r3.w);
          r3.w = r7.w / r3.w;
          r5.xyz = r6.xyw * r3.www + r8.xyz;
          break;
          case 4 :          r6.xyw = r9.xyz + -r1.xyz;
          r3.w = dot(r6.xyw, r6.xyw);
          r6.x = sqrt(r3.w);
          r4.w = r4.w * r4.w;
          r3.w = r4.w / r3.w;
          r3.w = min(1, r3.w);
          r4.w = saturate(r6.x * r11.y + r11.z);
          r4.z = saturate(r6.x * r11.w + r4.z);
          r6.x = r4.w * r4.w;
          r4.w = r4.w * -2 + 3;
          r4.w = r6.x * r4.w;
          r3.w = r4.w * r3.w;
          r4.w = r4.z * r4.z;
          r4.z = r4.z * -2 + 3;
          r4.z = r4.w * r4.z;
          r3.w = r4.z * r3.w;
          r4.z = cmp(0 >= r3.w);
          if (r4.z != 0) {
            r5.xyz = r8.xyz;
            break;
          }
          r3.w = 0.25 * r3.w;
          r10.w = r9.w;
          r6.xyw = r10.wyz * r3.www;
          r3.w = dot(r6.xyw, float3(0.298999995,0.587000012,0.114));
          r3.w = max(9.99999997e-07, r3.w);
          r4.z = min(relHDRExposure.x, r3.w);
          r3.w = r4.z / r3.w;
          r5.xyz = r6.xyw * r3.www + r8.xyz;
          break;
          default :
          r5.xyz = r8.xyz;
          break;
        }
        r8.xyz = r5.xyz;
      }
    }
    r7.xyz = r8.xyz;
    r0.w = (int)r0.w + 32;
  }
  r0.w = numRefProbes + -numOverrideProbes;
  r1.w = (int)r0.w & -32;
  r3.xy = float2(0,0);
  r4.w = 0;
  r5.yz = float2(0,1);
  r6.x = 1;
  r8.xyz = float3(0,0,0);
  r2.w = 0;
  r3.w = r1.w;
  while (true) {
    r5.w = cmp((uint)r3.w >= numRefProbes);
    if (r5.w != 0) break;
    r3.z = (uint)r3.w >> 5;
    r4.xyz = (int3)r2.xyz + (int3)r3.xyz;
    r3.z = visibleProbes.Load(r4.xyzw).x;
    r4.xyz = r8.xyz;
    r5.w = r2.w;
    r6.z = r3.z;
    while (true) {
      if (r6.z == 0) break;
      r6.w = firstbitlow((uint)r6.z);
      r7.w = 1 << (int)r6.w;
      r8.w = (int)r6.z & (int)r7.w;
      if (r8.w != 0) {
        r7.w = (int)r6.z ^ (int)r7.w;
        r6.w = (int)r3.w + (int)r6.w;
        r8.w = cmp((uint)r6.w >= numRefProbes);
        if (r8.w != 0) {
          break;
        }
        r8.w = cmp((uint)r6.w < (uint)r0.w);
        if (r8.w != 0) {
          r6.z = r7.w;
          continue;
        }
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.xyzw, r6.w, l(0), t15.wxyz
      r9.x = samplerLinear[]..swiz;
      r9.y = samplerLinear[]..swiz;
      r9.z = samplerLinear[]..swiz;
      r9.w = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.xyzw, r6.w, l(88), t15.zxyw
      r10.x = samplerLinear[]..swiz;
      r10.y = samplerLinear[]..swiz;
      r10.z = samplerLinear[]..swiz;
      r10.w = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r8.w, r6.w, l(120), t15.xxxx
      r8.w = samplerLinear[]..swiz;
        r11.xyz = -r9.yzw + r1.xyz;
        r9.w = r8.w ? 0.000000 : 0;
        if (6 == 0) r8.w = 0; else if (6+25 < 32) {         r8.w = (uint)r8.w << (32-(6 + 25)); r8.w = (uint)r8.w >> (32-6);        } else r8.w = (uint)r8.w >> 25;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r12.xyzw, r9.w, l(0), t16.xyzw
      r12.x = samplerLinear[]..swiz;
      r12.y = samplerLinear[]..swiz;
      r12.z = samplerLinear[]..swiz;
      r12.w = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r13.xyzw, r9.w, l(16), t16.xyzw
      r13.x = samplerLinear[]..swiz;
      r13.y = samplerLinear[]..swiz;
      r13.z = samplerLinear[]..swiz;
      r13.w = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r9.w, l(32), t16.xyzw
      r14.x = samplerLinear[]..swiz;
      r14.y = samplerLinear[]..swiz;
      r14.z = samplerLinear[]..swiz;
      r14.w = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r9.w, l(48), t16.xyzw
      r15.x = samplerLinear[]..swiz;
      r15.y = samplerLinear[]..swiz;
      r15.z = samplerLinear[]..swiz;
      r15.w = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r9.w, l(64), t16.xyzw
      r16.x = samplerLinear[]..swiz;
      r16.y = samplerLinear[]..swiz;
      r16.z = samplerLinear[]..swiz;
      r16.w = samplerLinear[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r9.w, l(80), t16.xyzw
      r17.x = samplerLinear[]..swiz;
      r17.y = samplerLinear[]..swiz;
      r17.z = samplerLinear[]..swiz;
      r17.w = samplerLinear[]..swiz;
        r11.w = dot(r12.xyz, r11.xyz);
        r11.w = saturate(r11.w + r12.w);
        r12.x = dot(r13.xyz, r11.xyz);
        r12.x = saturate(r12.x + r13.w);
        r11.w = r12.x * r11.w;
        r12.x = dot(r14.xyz, r11.xyz);
        r12.x = saturate(r12.x + r14.w);
        r11.w = r12.x * r11.w;
        r12.x = dot(r15.xyz, r11.xyz);
        r12.x = saturate(r12.x + r15.w);
        r11.w = r12.x * r11.w;
        r12.x = dot(r16.xyz, r11.xyz);
        r12.x = saturate(r12.x + r16.w);
        r11.w = r12.x * r11.w;
        r12.x = dot(r17.xyz, r11.xyz);
        r12.x = saturate(r12.x + r17.w);
        r5.x = r12.x * r11.w;
        r11.w = (int)r10.x & 1;
        r12.xy = r11.ww ? r5.xy : r5.zx;
        r5.x = r10.x;
        r13.xy = r12.xy;
        r11.w = 1;
        while (true) {
          r12.z = cmp((int)r11.w >= (int)r8.w);
          if (r12.z != 0) break;
          r12.z = (int)r9.w + (int)r11.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r12.z, l(0), t16.xyzw
        r14.x = samplerLinear[]..swiz;
        r14.y = samplerLinear[]..swiz;
        r14.z = samplerLinear[]..swiz;
        r14.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r12.z, l(16), t16.xyzw
        r15.x = samplerLinear[]..swiz;
        r15.y = samplerLinear[]..swiz;
        r15.z = samplerLinear[]..swiz;
        r15.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r12.z, l(32), t16.xyzw
        r16.x = samplerLinear[]..swiz;
        r16.y = samplerLinear[]..swiz;
        r16.z = samplerLinear[]..swiz;
        r16.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r12.z, l(48), t16.xyzw
        r17.x = samplerLinear[]..swiz;
        r17.y = samplerLinear[]..swiz;
        r17.z = samplerLinear[]..swiz;
        r17.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r12.z, l(64), t16.xyzw
        r18.x = samplerLinear[]..swiz;
        r18.y = samplerLinear[]..swiz;
        r18.z = samplerLinear[]..swiz;
        r18.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r12.z, l(80), t16.xyzw
        r19.x = samplerLinear[]..swiz;
        r19.y = samplerLinear[]..swiz;
        r19.z = samplerLinear[]..swiz;
        r19.w = samplerLinear[]..swiz;
          r12.z = dot(r14.xyz, r11.xyz);
          r12.z = saturate(r12.z + r14.w);
          r12.z = r13.x * r12.z;
          r12.w = dot(r15.xyz, r11.xyz);
          r12.w = saturate(r12.w + r15.w);
          r12.z = r12.z * r12.w;
          r12.w = dot(r16.xyz, r11.xyz);
          r12.w = saturate(r12.w + r16.w);
          r12.z = r12.z * r12.w;
          r12.w = dot(r17.xyz, r11.xyz);
          r12.w = saturate(r12.w + r17.w);
          r12.z = r12.z * r12.w;
          r12.w = dot(r18.xyz, r11.xyz);
          r12.w = saturate(r12.w + r18.w);
          r12.z = r12.z * r12.w;
          r12.w = dot(r19.xyz, r11.xyz);
          r12.w = saturate(r12.w + r19.w);
          r13.x = r12.z * r12.w;
          r13.z = (uint)r5.x >> 2;
          if (1 == 0) r13.w = 0; else if (1+2 < 32) {           r13.w = (uint)r5.x << (32-(1 + 2)); r13.w = (uint)r13.w >> (32-1);          } else r13.w = (uint)r5.x >> 2;
          r14.x = (int)r13.z & 2;
          r14.y = max(r13.y, r13.x);
          r12.z = -r12.z * r12.w + 1;
          r12.z = r13.y * r12.z;
          r6.y = r14.x ? r12.z : r14.y;
          r13.xy = r13.ww ? r13.xy : r6.xy;
          r11.w = (int)r11.w + 1;
          r5.x = r13.z;
        }
        r13.y = saturate(r13.y);
        r5.x = r13.y * r10.w;
        r6.y = cmp(0 < r5.x);
        if (r6.y != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xyzw, r6.w, l(16), t15.xyzw
        r12.x = samplerLinear[]..swiz;
        r12.y = samplerLinear[]..swiz;
        r12.z = samplerLinear[]..swiz;
        r12.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xyzw, r6.w, l(32), t15.yxwz
        r14.x = samplerLinear[]..swiz;
        r14.y = samplerLinear[]..swiz;
        r14.z = samplerLinear[]..swiz;
        r14.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.xzw, r6.w, l(48), t15.xxyz
        r13.x = samplerLinear[]..swiz;
        r13.z = samplerLinear[]..swiz;
        r13.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xyzw, r6.w, l(72), t15.xyzw
        r15.x = samplerLinear[]..swiz;
        r15.y = samplerLinear[]..swiz;
        r15.z = samplerLinear[]..swiz;
        r15.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.xyzw, r6.w, l(104), t15.xyzw
        r16.x = samplerLinear[]..swiz;
        r16.y = samplerLinear[]..swiz;
        r16.z = samplerLinear[]..swiz;
        r16.w = samplerLinear[]..swiz;
          r9.y = r12.z;
          r9.z = r14.x;
          r9.x = dot(r11.xyz, r9.xyz);
          r17.xy = r12.xw;
          r17.z = r14.w;
          r9.y = dot(r11.xyz, r17.xyz);
          r14.x = r12.y;
          r9.z = dot(r11.xyz, r14.xyz);
          r9.xyz = saturate(r9.xyz * r13.xzw + float3(0.5,0.5,0.5));
          r10.x = r15.w;
          r9.xyz = r9.xyz * r15.xyz + r10.xyz;
          r10.xyz = float3(0,0,0.5) + r9.xyz;
          r11.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
          r12.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
          r11.xyz = r12.xyz + r11.xyz;
          r9.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.xyz, 0).xyz;
          r9.xyz = r11.xyz + r9.xyz;
          r11.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
          r9.xyz = r11.xyz + r9.xyz;
          r11.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
          r9.xyz = r11.xyz + r9.xyz;
          r10.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
          r9.xyz = r10.xyz + r9.xyz;
          r5.x = r16.w * r5.x;
          r5.x = 0.166666672 * r5.x;
          r9.xyz = r9.xyz * r5.xxx;
          r4.xyz = r9.xyz * r16.xyz + r4.xyz;
          r5.w = r13.y * r10.w + r5.w;
        }
        r6.z = r7.w;
      }
    }
    r8.xyz = r4.xyz;
    r2.w = r5.w;
    r3.w = (int)r3.w + 32;
  }
  r1.w = cmp(r2.w < 1);
  if (r1.w != 0) {
    r3.xy = float2(0,0);
    r4.w = 0;
    r5.yz = float2(0,1);
    r6.x = 1;
    r9.xyz = r8.xyz;
    r1.w = r2.w;
    r3.w = 0;
    while (true) {
      r5.w = cmp((uint)r3.w >= (uint)r0.w);
      if (r5.w != 0) break;
      r3.z = (uint)r3.w >> 5;
      r4.xyz = (int3)r2.xyz + (int3)r3.xyz;
      r3.z = visibleProbes.Load(r4.xyzw).x;
      r4.xyz = r9.xyz;
      r5.w = r1.w;
      r6.z = r3.z;
      while (true) {
        if (r6.z == 0) break;
        r6.w = firstbitlow((uint)r6.z);
        r7.w = 1 << (int)r6.w;
        r8.w = (int)r6.z & (int)r7.w;
        if (r8.w != 0) {
          r6.z = (int)r6.z ^ (int)r7.w;
          r6.w = (int)r3.w + (int)r6.w;
          r7.w = cmp((uint)r6.w >= (uint)r0.w);
          if (r7.w != 0) {
            break;
          }
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.xyzw, r6.w, l(0), t15.wxyz
        r10.x = samplerLinear[]..swiz;
        r10.y = samplerLinear[]..swiz;
        r10.z = samplerLinear[]..swiz;
        r10.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.xyzw, r6.w, l(88), t15.zxyw
        r11.x = samplerLinear[]..swiz;
        r11.y = samplerLinear[]..swiz;
        r11.z = samplerLinear[]..swiz;
        r11.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r7.w, r6.w, l(120), t15.xxxx
        r7.w = samplerLinear[]..swiz;
          r12.xyz = -r10.yzw + r1.xyz;
          r8.w = r7.w ? 0.000000 : 0;
          if (6 == 0) r7.w = 0; else if (6+25 < 32) {           r7.w = (uint)r7.w << (32-(6 + 25)); r7.w = (uint)r7.w >> (32-6);          } else r7.w = (uint)r7.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r13.xyzw, r8.w, l(0), t16.xyzw
        r13.x = samplerLinear[]..swiz;
        r13.y = samplerLinear[]..swiz;
        r13.z = samplerLinear[]..swiz;
        r13.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r8.w, l(16), t16.xyzw
        r14.x = samplerLinear[]..swiz;
        r14.y = samplerLinear[]..swiz;
        r14.z = samplerLinear[]..swiz;
        r14.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(32), t16.xyzw
        r15.x = samplerLinear[]..swiz;
        r15.y = samplerLinear[]..swiz;
        r15.z = samplerLinear[]..swiz;
        r15.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(48), t16.xyzw
        r16.x = samplerLinear[]..swiz;
        r16.y = samplerLinear[]..swiz;
        r16.z = samplerLinear[]..swiz;
        r16.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(64), t16.xyzw
        r17.x = samplerLinear[]..swiz;
        r17.y = samplerLinear[]..swiz;
        r17.z = samplerLinear[]..swiz;
        r17.w = samplerLinear[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(80), t16.xyzw
        r18.x = samplerLinear[]..swiz;
        r18.y = samplerLinear[]..swiz;
        r18.z = samplerLinear[]..swiz;
        r18.w = samplerLinear[]..swiz;
          r9.w = dot(r13.xyz, r12.xyz);
          r9.w = saturate(r9.w + r13.w);
          r10.w = dot(r14.xyz, r12.xyz);
          r10.w = saturate(r10.w + r14.w);
          r9.w = r10.w * r9.w;
          r10.w = dot(r15.xyz, r12.xyz);
          r10.w = saturate(r10.w + r15.w);
          r9.w = r10.w * r9.w;
          r10.w = dot(r16.xyz, r12.xyz);
          r10.w = saturate(r10.w + r16.w);
          r9.w = r10.w * r9.w;
          r10.w = dot(r17.xyz, r12.xyz);
          r10.w = saturate(r10.w + r17.w);
          r9.w = r10.w * r9.w;
          r10.w = dot(r18.xyz, r12.xyz);
          r10.w = saturate(r10.w + r18.w);
          r5.x = r10.w * r9.w;
          r9.w = (int)r11.x & 1;
          r13.xy = r9.ww ? r5.xy : r5.zx;
          r5.x = r11.x;
          r14.xy = r13.xy;
          r9.w = 1;
          while (true) {
            r10.w = cmp((int)r9.w >= (int)r7.w);
            if (r10.w != 0) break;
            r10.w = (int)r8.w + (int)r9.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r10.w, l(0), t16.xyzw
          r15.x = samplerLinear[]..swiz;
          r15.y = samplerLinear[]..swiz;
          r15.z = samplerLinear[]..swiz;
          r15.w = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(16), t16.xyzw
          r16.x = samplerLinear[]..swiz;
          r16.y = samplerLinear[]..swiz;
          r16.z = samplerLinear[]..swiz;
          r16.w = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(32), t16.xyzw
          r17.x = samplerLinear[]..swiz;
          r17.y = samplerLinear[]..swiz;
          r17.z = samplerLinear[]..swiz;
          r17.w = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(48), t16.xyzw
          r18.x = samplerLinear[]..swiz;
          r18.y = samplerLinear[]..swiz;
          r18.z = samplerLinear[]..swiz;
          r18.w = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(64), t16.xyzw
          r19.x = samplerLinear[]..swiz;
          r19.y = samplerLinear[]..swiz;
          r19.z = samplerLinear[]..swiz;
          r19.w = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(80), t16.xyzw
          r20.x = samplerLinear[]..swiz;
          r20.y = samplerLinear[]..swiz;
          r20.z = samplerLinear[]..swiz;
          r20.w = samplerLinear[]..swiz;
            r10.w = dot(r15.xyz, r12.xyz);
            r10.w = saturate(r10.w + r15.w);
            r10.w = r14.x * r10.w;
            r12.w = dot(r16.xyz, r12.xyz);
            r12.w = saturate(r12.w + r16.w);
            r10.w = r12.w * r10.w;
            r12.w = dot(r17.xyz, r12.xyz);
            r12.w = saturate(r12.w + r17.w);
            r10.w = r12.w * r10.w;
            r12.w = dot(r18.xyz, r12.xyz);
            r12.w = saturate(r12.w + r18.w);
            r10.w = r12.w * r10.w;
            r12.w = dot(r19.xyz, r12.xyz);
            r12.w = saturate(r12.w + r19.w);
            r10.w = r12.w * r10.w;
            r12.w = dot(r20.xyz, r12.xyz);
            r12.w = saturate(r12.w + r20.w);
            r14.x = r12.w * r10.w;
            r13.z = (uint)r5.x >> 2;
            if (1 == 0) r13.w = 0; else if (1+2 < 32) {             r13.w = (uint)r5.x << (32-(1 + 2)); r13.w = (uint)r13.w >> (32-1);            } else r13.w = (uint)r5.x >> 2;
            r14.z = (int)r13.z & 2;
            r14.w = max(r14.y, r14.x);
            r10.w = -r10.w * r12.w + 1;
            r10.w = r14.y * r10.w;
            r6.y = r14.z ? r10.w : r14.w;
            r14.xy = r13.ww ? r14.xy : r6.xy;
            r9.w = (int)r9.w + 1;
            r5.x = r13.z;
          }
          r5.x = saturate(r14.y + -r2.w);
          r6.y = r5.x * r11.w;
          r7.w = cmp(0 < r6.y);
          if (r7.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.xyzw, r6.w, l(16), t15.xyzw
          r13.x = samplerLinear[]..swiz;
          r13.y = samplerLinear[]..swiz;
          r13.z = samplerLinear[]..swiz;
          r13.w = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xyzw, r6.w, l(32), t15.yxwz
          r15.x = samplerLinear[]..swiz;
          r15.y = samplerLinear[]..swiz;
          r15.z = samplerLinear[]..swiz;
          r15.w = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xzw, r6.w, l(48), t15.xxyz
          r14.x = samplerLinear[]..swiz;
          r14.z = samplerLinear[]..swiz;
          r14.w = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.xyzw, r6.w, l(72), t15.xyzw
          r16.x = samplerLinear[]..swiz;
          r16.y = samplerLinear[]..swiz;
          r16.z = samplerLinear[]..swiz;
          r16.w = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r6.w, l(104), t15.xyzw
          r17.x = samplerLinear[]..swiz;
          r17.y = samplerLinear[]..swiz;
          r17.z = samplerLinear[]..swiz;
          r17.w = samplerLinear[]..swiz;
            r10.y = r13.z;
            r10.z = r15.x;
            r10.x = dot(r12.xyz, r10.xyz);
            r18.xy = r13.xw;
            r18.z = r15.w;
            r10.y = dot(r12.xyz, r18.xyz);
            r15.x = r13.y;
            r10.z = dot(r12.xyz, r15.xyz);
            r10.xyz = saturate(r10.xyz * r14.xzw + float3(0.5,0.5,0.5));
            r11.x = r16.w;
            r10.xyz = r10.xyz * r16.xyz + r11.xyz;
            r11.xyz = float3(0,0,0.5) + r10.xyz;
            r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
            r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
            r12.xyz = r13.xyz + r12.xyz;
            r10.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.xyz, 0).xyz;
            r10.xyz = r12.xyz + r10.xyz;
            r12.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r10.xyz = r12.xyz + r10.xyz;
            r12.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r10.xyz = r12.xyz + r10.xyz;
            r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
            r10.xyz = r11.xyz + r10.xyz;
            r6.y = r17.w * r6.y;
            r6.y = 0.166666672 * r6.y;
            r10.xyz = r10.xyz * r6.yyy;
            r4.xyz = r10.xyz * r17.xyz + r4.xyz;
            r5.w = r5.x * r11.w + r5.w;
          }
        }
      }
      r9.xyz = r4.xyz;
      r1.w = r5.w;
      r3.w = (int)r3.w + 32;
    }
    r8.xyz = r9.xyz;
    r2.w = r1.w;
  }
  r0.w = max(9.99999975e-05, r2.w);
  r0.w = rcp(r0.w);
  r2.w = saturate(r2.w);
  r2.xyz = r8.xyz * r0.www;
  r1.w = cmp(0 != r2.w);
  r3.xyz = r8.xyz * r0.www + r7.xyz;
  r0.w = -r2.w * 1.01010096 + 1;
  r4.xyz = sunConstants.avgGlobalProbeColor.xyz * sunConstants.globalProbeExposure;
  r2.xyz = r4.xyz * r0.www + r2.xyz;
  r2.xyz = r7.xyz + r2.xyz;
  r2.xyz = r1.www ? r3.xyz : r2.xyz;
  o1.xyz = v1.xyz * r2.xyz;
  o1.w = v1.w;
  o4.xyz = r1.xyz;
  r0.z = 0;
  o5.xyzw = r0.zxzz;
  p7.xy = v2.xy;
  o3.z = r0.y;
  o8.x = 0;
  return;
}