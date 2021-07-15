// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:39 2021

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
  float2 falloffParms : packoffset(c15);
  float hdrScale : packoffset(c15.z);
  uint zFeatherComputeSprites : packoffset(c15.w);
  float desaturationAmount : packoffset(c16);
  float4 levelsControls : packoffset(c17);
  bool useOldHDRScale : packoffset(c18);
  float2 scaleUVsAlpha : packoffset(c18.y);
  float zFeatherOverride : packoffset(c18.w);
  float2 scaleUVsColor : packoffset(c19);
  float2 offsetUVsColor : packoffset(c19.z);
  float2 rotateUVsColor : packoffset(c20);
  float2 scrollUVsColor : packoffset(c20.z);
  float2 scaleUVsEmissive : packoffset(c21);
  float2 offsetUVsEmissive : packoffset(c21.z);
  float2 rotateUVsEmissive : packoffset(c22);
  float2 scrollUVsEmissive : packoffset(c22.z);
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
Texture2DArray<float> gTransShadowmapArray : register(t31);


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
  out float3 o2 : COLOR1,
  out float4 o3 : COLOR2,
  out float4 o4 : TEXCOORD0,
  out float4 o5 : TEXCOORD1,
  out float4 o6 : TEXCOORD2,
  out float4 o7 : TEXCOORD3,
  out float2 o8 : TEXCOORD4,
  out float2 p8 : TEXCOORD5,
  out uint4 o9 : TEXCOORD6,
  out float4 o10 : TEXCOORD7,
  out float3 o11 : TEXCOORD8,
  out float3 o12 : NORMAL0,
  out float3 o13 : TANGENT0,
  out float3 o14 : TEXCOORD9)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.xy = cmp(falloffParms.xy == float2(0,0));
  r0.w = r1.y ? r1.x : 0;
  r1.xy = float2(0.0174532924,0.0174532924) * falloffParms.xy;
  r1.xy = cos(r1.xy);
  r1.yz = r1.xy * r1.xy;
  r1.x = r1.x * r1.x + -r1.z;
  r2.x = 1 / r1.x;
  r2.y = -r1.y * r2.x + 1;
  o8.xy = r0.ww ? float2(0,1) : r2.xy;
  r0.w = (uint)v0.w >> 16;
  o5.w = f16tof32(r0.w);
  r0.w = cmp(v3.w == 0.000000);
  r1.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r2.xyz = r1.yzx * r0.zxy;
  r2.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = v4.w * 2 + -1;
  r2.xyz = r2.xyz * r1.www;
  r1.w = (int)v0.w & 0x0000ffff;
  r1.w = (uint)r1.w;
  r3.x = 0.00390625 * r1.w;
  r4.xy = float2(0,1) * r0.xy;
  r4.xy = r0.zx * float2(1,0) + -r4.xy;
  r1.w = dot(r4.xy, r4.xy);
  r5.x = rsqrt(r1.w);
  r5.yz = r5.xx * r4.xy;
  r4.xyz = float3(-0,-1,-1) * r5.xyz;
  r5.xyzw = float4(1023,1023,1023,3) * v4.xyzw;
  r5.xyzw = (uint4)r5.xyzw;
  r5.yzw = (uint3)r5.yzw << int3(10,20,30);
  r1.w = (int)r5.y | (int)r5.x;
  r1.w = (int)r5.z | (int)r1.w;
  r3.z = (int)r5.w | (int)r1.w;
  o13.xyz = r0.www ? r1.xyz : float3(1,0,0);
  o14.xyz = r0.www ? r2.xyz : r4.xyz;
  r3.y = 1;
  r1.xy = r0.ww ? r3.xy : r3.xz;
  o4.xy = v2.xy * r1.yy;
  r2.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r2.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  r2.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r2.xyzw;
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * v0.yyyy;
  r3.xyzw = v0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r3.xyzw = v0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
  r2.xyzw = r3.xyzw + r2.xyzw;
  r3.xyz = -eyeOffset.xyz + v0.xyz;
  r0.w = cmp(0 < fogConsts4.w);
  if (r0.w != 0) {
    r0.w = dot(r3.xyz, r3.xyz);
    r4.x = rsqrt(r0.w);
    r4.xyz = r4.xxx * r3.xyz;
    r0.w = sqrt(r0.w);
    r4.x = dot(sunFogDir.xyz, -r4.xyz);
    r4.y = -fogConsts3.w * fogConsts3.w + 1;
    r4.z = fogConsts3.w * -r4.x + 1;
    r4.z = r4.z * r4.z;
    r4.z = 12.566371 * r4.z;
    r4.y = r4.y / r4.z;
    r4.z = -fogConsts9.z + r0.w;
    r4.z = saturate(fogConsts9.w * r4.z);
    r4.y = r4.y * r4.z;
    r0.w = r0.w * fogConsts7.x + fogConsts6.w;
    r0.w = fogConsts7.z * r0.w;
    r4.z = cmp(0.00999999978 < abs(r3.z));
    r4.w = fogConsts7.y * r3.z;
    r5.x = -1.44269502 * r4.w;
    r5.x = exp2(r5.x);
    r5.x = 1 + -r5.x;
    r4.w = r5.x / r4.w;
    r4.w = r4.w * r0.w;
    r0.w = r4.z ? r4.w : r0.w;
    r5.xyz = fogConsts5.xyz * r0.www;
    r5.xyz = exp2(r5.xyz);
    r5.xyz = r5.xyz * fogConsts4.www + float3(1,1,1);
    r5.xyz = saturate(-fogConsts4.www + r5.xyz);
    r4.x = saturate(r4.x);
    r0.w = r4.x * r4.x + 1;
    r0.w = r0.w * 0.0596831031 + -1;
    r0.w = fogConsts7.w * r0.w + 1;
    r4.xyz = fogConsts4.xyz * r4.yyy;
    r4.xyz = r0.www * fogConsts3.xyz + r4.xyz;
    r4.xyz = fogConsts5.www * r4.xyz;
    r6.xyz = float3(1,1,1) + -r5.xyz;
    o11.xyz = r6.xyz * r4.xyz;
    o10.xyz = r5.xyz;
    o3.xyzw = float4(0,0,0,1);
  } else {
    r0.w = fogConsts.w * r3.z;
    r4.x = fogConsts.w * r3.z + fogConsts.x;
    r4.y = cmp(abs(r0.w) < 9.99999975e-05);
    r4.z = min(64, r4.x);
    r4.z = 1.44269502 * r4.z;
    r4.z = exp2(r4.z);
    r4.w = saturate(fogConsts2.x);
    r5.x = cmp(r4.x < 0);
    r4.x = 1 + r4.x;
    r4.x = r5.x ? r4.z : r4.x;
    r4.x = -fogConsts2.x + r4.x;
    r0.w = r4.y ? 1 : r0.w;
    r0.w = r4.x / r0.w;
    r0.w = r4.y ? r4.w : r0.w;
    r0.w = fogConsts.y * r0.w;
    r4.x = dot(r3.xyz, r3.xyz);
    r4.y = sqrt(r4.x);
    r0.w = r0.w * r4.y + fogConsts.z;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r4.x = rsqrt(r4.x);
    r4.xyz = r4.xxx * r3.xyz;
    r4.x = dot(sunFogDir.xyz, r4.xyz);
    r4.x = saturate(sunFog.y * r4.x + sunFog.x);
    r5.xyzw = -sunFogColor.xyzw + fogColor.xyzw;
    r4.xyzw = r4.xxxx * r5.xyzw + sunFogColor.xyzw;
    r0.w = 1 + -r0.w;
    o3.w = -r0.w * r4.w + 1;
    o10.xyz = float3(1,1,1);
    o11.xyz = float3(0,0,0);
    o3.xyz = r4.xyz;
  }
  r1.z = max(0, useOldHDRScale);
  r0.w = viewMatrix._m12 * r3.y;
  r0.w = r3.x * viewMatrix._m02 + r0.w;
  r0.w = r3.z * viewMatrix._m22 + r0.w;
  r4.xyz = viewProjectionMatrix._m10_m11_m13 * r3.yyy;
  r4.xyz = r3.xxx * viewProjectionMatrix._m00_m01_m03 + r4.xyz;
  r4.xyz = r3.zzz * viewProjectionMatrix._m20_m21_m23 + r4.xyz;
  r4.xyz = viewProjectionMatrix._m30_m31_m33 + r4.xyz;
  r4.z = rcp(r4.z);
  r4.xy = r4.xy * r4.zz;
  r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r4.xy = renderTargetSize.xy * r4.xy;
  r4.zw = float2(-1,-1) + renderTargetSize.xy;
  r4.xy = max(float2(0,0), r4.xy);
  r4.xy = min(r4.xy, r4.zw);
  r4.xy = (uint2)r4.xy;
  r5.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r3.yyy;
  r5.xyz = r3.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r5.xyz;
  r5.xyz = r3.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r5.xyz;
  r5.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r5.xyz;
  r4.zw = -sunConstants.splitPinTransform[2].xy + r5.xy;
  r4.zw = sunConstants.splitPinTransform[2].zz * r4.zw;
  r5.w = max(abs(r4.z), abs(r4.w));
  r5.w = cmp(1 < r5.w);
  if (r5.w != 0) {
    r6.xyz = float3(128,0.5,0.5) * sunConstants.sstLightingConstants.constants.inchesPerTexel;
    r7.xz = rcp(r6.xx);
    r7.y = -r7.z;
    r6.xyz = r5.xyx * r7.xyz + r6.yzy;
    r7.xyz = float3(-0.0078125,-0.0078125,-0.0078125) + sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(r6.xyz, r7.xyz);
    r7.xy = sunConstants.sstLightingConstants.coordScale * r6.zy;
    r7.xy = floor(r7.xy);
    r5.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r7.y;
    r5.w = r5.w * sunConstants.sstLightingConstants.coordScale + r7.x;
    r5.w = (uint)r5.w;
    r5.w = (int)r5.w + (int10)sunConstants.sstLightingConstants.rootOffset;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r5.w, l(0), t23.xxxx
  r6.w = samp0[]..swiz;
    r7.x = (int)r6.w & 0x40000000;
    r7.y = (uint)r6.w << 2;
    if (r7.x == 0) {
      r7.x = (int)r6.w & 0x01ffffff;
      r8.x = (int)r5.w + (int)r7.x;
      r5.w = (uint)r6.w >> 25;
      r5.w = (uint)r5.w;
      r6.xyz = r6.xyz * r5.www;
      r6.xyz = frac(r6.xyz);
      r6.xyz = float3(128,128,128) * r6.xyz;
      r6.xyz = (uint3)r6.xyz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.x, l(0), t23.xxxx
    r8.z = samp0[]..swiz;
      r7.xz = (uint2)r6.zy >> int2(6,6);
      r5.w = (int)r8.z & 0xc0000000;
      r6.w = (int)r8.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r6.w, l(0), t23.xxxx
    r6.w = samp0[]..swiz;
      r6.w = r7.z ? r8.z : r6.w;
      r7.z = (uint)r6.w >> 13;
      r6.w = r7.x ? r7.z : r6.w;
      r6.w = (int)r6.w & 8191;
      r9.x = (int)r6.w + (int)r8.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.z, r9.x, l(0), t23.xxxx
    r9.z = samp0[]..swiz;
      r8.y = 0;
      r9.y = 1;
      r7.xzw = r5.www ? r8.xyz : r9.xyz;
      r9.yz = r5.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
      r10.xy = (uint2)r6.zy >> (uint2)r9.yy;
      r10.xy = (int2)r10.xy & int2(1,1);
      r6.w = (int)r7.w & 0xc0000000;
      r8.w = (int)r7.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(0), t23.xxxx
    r8.w = samp0[]..swiz;
      r8.w = r10.y ? r7.w : r8.w;
      r9.y = (uint)r8.w >> 13;
      r8.w = r10.x ? r9.y : r8.w;
      r8.w = (int)r8.w & 8191;
      r9.x = (int)r7.x + (int)r8.w;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.x, l(0), t23.xxxx
    r9.w = samp0[]..swiz;
      r7.xzw = r6.www ? r7.xzw : r9.xzw;
      r7.xzw = r5.www ? r8.xyz : r7.xzw;
      r5.w = (int)r7.w & 0xc0000000;
      if (r5.w == 0) {
        r5.w = (int)-r7.z + 6;
        r8.xy = (uint2)r6.zy >> (uint2)r5.ww;
        r5.w = (int)r7.w | 0x40000000;
        bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r6.w = (((uint)r8.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
        bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r6.w = (((uint)r8.x << 0) & bitmask.w) | ((uint)r6.w & ~bitmask.w);
        r6.w = (int)r6.w * 10;
        r5.w = (uint)r5.w >> (uint)r6.w;
        r5.w = (int)r5.w & 1023;
        r8.x = (int)r5.w + (int)r7.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.x, l(0), t23.xxxx
      r8.w = samp0[]..swiz;
        r8.yz = (int2)r7.zz + int2(1,2);
        r5.w = (int)-r8.y + 6;
        r9.xy = (uint2)r6.zy >> (uint2)r5.ww;
        r5.w = (int)r8.w & 0xc0000000;
        r6.w = (int)r8.w | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r7.z = (((uint)r9.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r7.z = (((uint)r9.x << 0) & bitmask.z) | ((uint)r7.z & ~bitmask.z);
        r7.z = (int)r7.z * 10;
        r6.w = (uint)r6.w >> (uint)r7.z;
        r6.w = (int)r6.w & 1023;
        r9.x = (int)r6.w + (int)r8.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.z, r9.x, l(0), t23.xxxx
      r9.z = samp0[]..swiz;
        r9.y = r8.z;
        r9.xyz = r5.www ? r8.xyw : r9.xyz;
        r6.w = (int)-r9.y + 6;
        r8.yz = (uint2)r6.zy >> (uint2)r6.ww;
        r6.w = (int)r9.z & 0xc0000000;
        r7.z = (int)r9.z | 0x40000000;
        bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.z = (((uint)r8.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
        bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.y = (((uint)r8.y << 0) & bitmask.y) | ((uint)r8.z & ~bitmask.y);
        r8.y = (int)r8.y * 10;
        r7.z = (uint)r7.z >> (uint)r8.y;
        r7.z = (int)r7.z & 1023;
        r10.x = (int)r7.z + (int)r9.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.y, r10.x, l(0), t23.xxxx
      r10.y = samp0[]..swiz;
        r8.yz = r6.ww ? r9.xz : r10.xy;
        r7.xw = r5.ww ? r8.xw : r8.yz;
      }
      r5.w = (int)r7.w & 0xc0000000;
      if (r5.w == 0) {
        if (14 == 0) r6.w = 0; else if (14+15 < 32) {         r6.w = (uint)r7.w << (32-(14 + 15)); r6.w = (uint)r6.w >> (32-14);        } else r6.w = (uint)r7.w >> 15;
        r6.w = (uint)r6.w;
        r6.w = sunConstants.sstLightingConstants.constants.spanInInches * r6.w;
        r6.w = 6.10388815e-05 * r6.w;
        r8.xy = (int2)r7.ww & int2(32767,536870912);
        r7.z = (uint)r8.x;
        r7.z = sunConstants.sstLightingConstants.constants.spanInInches * r7.z;
        r7.z = 3.05185094e-05 * r7.z;
        r8.x = (int)r6.y & 3;
        r8.x = (int)r7.x + (int)r8.x;
        r8.x = (int)r8.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.x, r8.x, l(0), t23.xxxx
      r8.x = samp0[]..swiz;
        bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r9.x = (((uint)r6.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
        bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r9.y = (((uint)r6.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
        bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r9.z = (((uint)r6.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
        r6.x = (uint)r8.x >> (uint)r9.x;
        r6.x = (int)r6.x & 255;
        r6.x = (uint)r6.x;
        r6.x = r6.x * r7.z;
        r6.x = r6.x * 0.00392156886 + r6.w;
        r6.y = (int)r9.y + 1;
        if (1 == 0) r6.z = 0; else if (1+1 < 32) {         r6.z = (uint)r6.z << (32-(1 + 1)); r6.z = (uint)r6.z >> (32-1);        } else r6.z = (uint)r6.z >> 1;
        r6.y = (int)r6.z + (int)r6.y;
        r6.y = (int)r6.y + (int)r7.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.y, r6.y, l(0), t23.xxxx
      r6.y = samp0[]..swiz;
        r6.y = (uint)r6.y >> (uint)r9.z;
        r6.y = (int)r6.y & 0x0000ffff;
        r6.y = (uint)r6.y;
        r6.y = r6.y * r7.z;
        r6.y = r6.y * 1.52590219e-05 + r6.w;
        r7.y = r8.y ? r6.x : r6.y;
      } else {
        r6.x = (int)r7.w & 0x80000000;
        r6.y = (int)r7.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.y, r6.y, l(0), t23.xxxx
      r6.y = samp0[]..swiz;
        r6.x = r6.x ? r6.y : 0;
        r6.y = (uint)r7.w << 2;
        r6.z = (uint)r6.x >> 16;
        r6.x = (int)r6.x & 0x0000ffff;
        r6.xz = f16tof32(r6.xz);
        r5.x = r5.x * r6.z + r6.y;
        r5.x = r5.y * r6.x + r5.x;
        r7.y = r5.w ? r5.x : r7.y;
      }
    }
    r5.x = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r5.z;
    r5.x = cmp(r7.y < r5.x);
    r5.x = r5.x ? 0 : 1;
  } else {
    r6.xy = r4.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r4.z = -sunConstants.splitDepthOffset + r5.z;
    r4.z = -r4.z * 6.10351563e-05 + 1;
    r4.w = (int16)sunConstants.splitArrayOffset + 2;
    r6.z = (uint)r4.w;
    r4.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r6.xyz, r4.z, int2(1, 1)).x;
    r5.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r6.xyz, r4.z, int2(1, -1)).x;
    r4.w = r5.y + r4.w;
    r5.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r6.xyz, r4.z, int2(-1, 1)).x;
    r4.w = r5.y + r4.w;
    r4.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r6.xyz, r4.z, int2(-1, -1)).x;
    r4.z = r4.w + r4.z;
    r4.w = gTransShadowmapArray.SampleLevel(samp0_s, r6.xyz, 0).x;
    r4.z = r4.z * 0.25 + r4.w;
    r5.x = saturate(-1 + r4.z);
  }
  r5.xyz = sunConstants.color.xyz * r5.xxx;
  r5.xyz = float3(0.25,0.25,0.25) * r5.xyz;
  r0.w = 0.0078125 * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(15, r0.w);
  r0.w = (uint)r0.w;
  r4.xy = (uint2)r4.xy >> int2(6,6);
  r4.z = (uint)r0.w << 4;
  r6.xy = float2(0,0);
  r7.w = 0;
  r3.w = 1;
  r8.z = 1;
  r9.xyz = r5.xyz;
  r0.w = 0;
  while (true) {
    r4.w = cmp((uint)r0.w >= numLights);
    if (r4.w != 0) break;
    r6.z = (uint)r0.w >> 5;
    r7.xyz = (int3)r4.xyz + (int3)r6.xyz;
    r4.w = visibleLights.Load(r7.xyzw).x;
    r10.xyz = r9.xyz;
    r10.w = r4.w;
    while (true) {
      if (r10.w == 0) break;
      r5.w = firstbitlow((uint)r10.w);
      r6.z = 1 << (int)r5.w;
      r6.w = (int)r6.z & (int)r10.w;
      if (r6.w != 0) {
        r10.w = (int)r6.z ^ (int)r10.w;
        r5.w = (int)r0.w + (int)r5.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r5.w, l(0), t12.xyzw
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
      r11.z = samp0[]..swiz;
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.yz, r5.w, l(16), t12.xxyx
      r12.y = samp0[]..swiz;
      r12.z = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r5.w, l(28), t12.xyzw
      r13.x = samp0[]..swiz;
      r13.y = samp0[]..swiz;
      r13.z = samp0[]..swiz;
      r13.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.zw, r5.w, l(44), t12.xxxy
      r6.z = samp0[]..swiz;
      r6.w = samp0[]..swiz;
        if (3 == 0) r7.x = 0; else if (3+24 < 32) {         r7.x = (uint)r13.x << (32-(3 + 24)); r7.x = (uint)r7.x >> (32-3);        } else r7.x = (uint)r13.x >> 24;
        switch (r7.x) {
          case 2 :        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r5.w, l(116), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
          r8.w = dot(r14.xyzw, r3.xyzw);
          r9.w = cmp(r8.w < 1);
          if (r9.w != 0) {
            r7.xyz = r10.xyz;
            break;
          }
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r5.w, l(68), t12.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.w, l(84), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.w, l(172), t12.yzwx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.w, l(188), t12.wxyz
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r5.w, l(204), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r19.xyz = r11.xyz + -r3.xyz;
          r9.w = r6.w * r6.w;
          r13.x = dot(r19.xyz, r19.xyz);
          r9.w = r9.w / r13.x;
          r9.w = min(1, r9.w);
          r13.x = saturate(r8.w * r13.y + r13.z);
          r19.x = saturate(r8.w * r13.w + r6.z);
          r19.y = r13.x * r13.x;
          r13.x = r13.x * -2 + 3;
          r13.x = r19.y * r13.x;
          r9.w = r13.x * r9.w;
          r13.x = r19.x * r19.x;
          r19.x = r19.x * -2 + 3;
          r13.x = r19.x * r13.x;
          r9.w = r13.x * r9.w;
          r14.x = dot(r14.xyzw, r3.xyzw);
          r14.y = dot(r15.xyzw, r3.xyzw);
          r8.xy = r14.xy / r8.ww;
          r8.w = cmp(r16.w < 0.00048828125);
          if (r8.w != 0) {
            r17.y = r18.x;
            r14.xy = saturate(abs(r8.xy) * r17.zw + r17.xy);
            r14.zw = r14.xy * r14.xy;
            r14.xy = r14.xy * float2(-2,-2) + float2(3,3);
            r14.xy = r14.zw * r14.xy;
            r8.w = r14.x * r14.y;
            r8.w = r9.w * r8.w;
          } else {
            r16.w = r17.y;
            r14.xyzw = saturate(r16.xyzw * abs(r8.yyxx));
            r14.xyzw = log2(r14.xyzw);
            r14.xyzw = r17.xxxx * r14.xyzw;
            r14.xyzw = exp2(r14.xyzw);
            r14.xy = r14.xy + r14.zw;
            r14.xy = log2(r14.xy);
            r14.xy = r18.xx * r14.xy;
            r14.xy = exp2(r14.xy);
            r13.x = r17.z * r14.x;
            r14.x = r17.w * r14.y + -1;
            r13.x = r17.w * r14.y + -r13.x;
            r13.x = saturate(r14.x / r13.x);
            r14.x = r13.x * r13.x;
            r13.x = r13.x * -2 + 3;
            r13.x = r14.x * r13.x;
            r8.w = r13.x * r9.w;
          }
          r9.w = cmp(0 >= r8.w);
          if (r9.w != 0) {
            r7.xyz = r10.xyz;
            break;
          }
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r5.w, l(236), t12.xxxx
        r9.w = samp0[]..swiz;
          r9.w = r9.w ? 0.000000 : 0;
          if (r9.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyz, r5.w, l(220), t12.xyzx
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
            r5.w = dot(r18.yzw, r8.xyz);
            r8.x = dot(r14.xyz, r8.xyz);
            r14.x = frac(r5.w);
            r14.y = frac(r8.x);
            r5.w = (int)r9.w + -1;
            r14.z = (uint)r5.w;
            r14.xyz = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
            r12.w = r11.w;
            r12.xyz = r14.xyz * r12.wyz;
          } else {
            r12.x = r11.w;
          }
          r5.w = 0.25 * r8.w;
          r8.xyw = r5.www * r12.xyz;
          r5.w = dot(r8.xyw, float3(0.298999995,0.587000012,0.114));
          r5.w = max(9.99999997e-07, r5.w);
          r9.w = min(relHDRExposure.x, r5.w);
          r5.w = r9.w / r5.w;
          r7.xyz = r8.xyw * r5.www + r10.xyz;
          break;
          case 4 :          r8.xyw = r11.xyz + -r3.xyz;
          r5.w = dot(r8.xyw, r8.xyw);
          r8.x = sqrt(r5.w);
          r6.w = r6.w * r6.w;
          r5.w = r6.w / r5.w;
          r5.w = min(1, r5.w);
          r6.w = saturate(r8.x * r13.y + r13.z);
          r6.z = saturate(r8.x * r13.w + r6.z);
          r8.x = r6.w * r6.w;
          r6.w = r6.w * -2 + 3;
          r6.w = r8.x * r6.w;
          r5.w = r6.w * r5.w;
          r6.w = r6.z * r6.z;
          r6.z = r6.z * -2 + 3;
          r6.z = r6.w * r6.z;
          r5.w = r6.z * r5.w;
          r6.z = cmp(0 >= r5.w);
          if (r6.z != 0) {
            r7.xyz = r10.xyz;
            break;
          }
          r5.w = 0.25 * r5.w;
          r12.w = r11.w;
          r8.xyw = r12.wyz * r5.www;
          r5.w = dot(r8.xyw, float3(0.298999995,0.587000012,0.114));
          r5.w = max(9.99999997e-07, r5.w);
          r6.z = min(relHDRExposure.x, r5.w);
          r5.w = r6.z / r5.w;
          r7.xyz = r8.xyw * r5.www + r10.xyz;
          break;
          default :
          r7.xyz = r10.xyz;
          break;
        }
        r10.xyz = r7.xyz;
      }
    }
    r9.xyz = r10.xyz;
    r0.w = (int)r0.w + 32;
  }
  r0.w = numRefProbes + -numOverrideProbes;
  r3.w = (int)r0.w & -32;
  r5.xy = float2(0,0);
  r6.w = 0;
  r7.yz = float2(0,1);
  r8.x = 1;
  r10.xyz = float3(0,0,0);
  r4.w = 0;
  r5.w = r3.w;
  while (true) {
    r7.w = cmp((uint)r5.w >= numRefProbes);
    if (r7.w != 0) break;
    r5.z = (uint)r5.w >> 5;
    r6.xyz = (int3)r4.xyz + (int3)r5.xyz;
    r5.z = visibleProbes.Load(r6.xyzw).x;
    r6.xyz = r10.xyz;
    r7.w = r4.w;
    r8.z = r5.z;
    while (true) {
      if (r8.z == 0) break;
      r8.w = firstbitlow((uint)r8.z);
      r9.w = 1 << (int)r8.w;
      r10.w = (int)r8.z & (int)r9.w;
      if (r10.w != 0) {
        r9.w = (int)r8.z ^ (int)r9.w;
        r8.w = (int)r5.w + (int)r8.w;
        r10.w = cmp((uint)r8.w >= numRefProbes);
        if (r10.w != 0) {
          break;
        }
        r10.w = cmp((uint)r8.w < (uint)r0.w);
        if (r10.w != 0) {
          r8.z = r9.w;
          continue;
        }
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.xyzw, r8.w, l(0), t15.wxyz
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
      r11.z = samp0[]..swiz;
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xyzw, r8.w, l(88), t15.zxyw
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
      r12.z = samp0[]..swiz;
      r12.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r10.w, r8.w, l(120), t15.xxxx
      r10.w = samp0[]..swiz;
        r13.xyz = -r11.yzw + r3.xyz;
        r11.w = r10.w ? 0.000000 : 0;
        if (6 == 0) r10.w = 0; else if (6+25 < 32) {         r10.w = (uint)r10.w << (32-(6 + 25)); r10.w = (uint)r10.w >> (32-6);        } else r10.w = (uint)r10.w >> 25;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r14.xyzw, r11.w, l(0), t16.xyzw
      r14.x = samp0[]..swiz;
      r14.y = samp0[]..swiz;
      r14.z = samp0[]..swiz;
      r14.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r11.w, l(16), t16.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r11.w, l(32), t16.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r11.w, l(48), t16.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r11.w, l(64), t16.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r11.w, l(80), t16.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
        r13.w = dot(r14.xyz, r13.xyz);
        r13.w = saturate(r13.w + r14.w);
        r14.x = dot(r15.xyz, r13.xyz);
        r14.x = saturate(r14.x + r15.w);
        r13.w = r14.x * r13.w;
        r14.x = dot(r16.xyz, r13.xyz);
        r14.x = saturate(r14.x + r16.w);
        r13.w = r14.x * r13.w;
        r14.x = dot(r17.xyz, r13.xyz);
        r14.x = saturate(r14.x + r17.w);
        r13.w = r14.x * r13.w;
        r14.x = dot(r18.xyz, r13.xyz);
        r14.x = saturate(r14.x + r18.w);
        r13.w = r14.x * r13.w;
        r14.x = dot(r19.xyz, r13.xyz);
        r14.x = saturate(r14.x + r19.w);
        r7.x = r14.x * r13.w;
        r13.w = (int)r12.x & 1;
        r14.xy = r13.ww ? r7.xy : r7.zx;
        r7.x = r12.x;
        r15.xy = r14.xy;
        r13.w = 1;
        while (true) {
          r14.z = cmp((int)r13.w >= (int)r10.w);
          if (r14.z != 0) break;
          r14.z = (int)r11.w + (int)r13.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r14.z, l(0), t16.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r14.z, l(16), t16.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r14.z, l(32), t16.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r14.z, l(48), t16.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r14.z, l(64), t16.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r14.z, l(80), t16.xyzw
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
        r21.w = samp0[]..swiz;
          r14.z = dot(r16.xyz, r13.xyz);
          r14.z = saturate(r14.z + r16.w);
          r14.z = r15.x * r14.z;
          r14.w = dot(r17.xyz, r13.xyz);
          r14.w = saturate(r14.w + r17.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r18.xyz, r13.xyz);
          r14.w = saturate(r14.w + r18.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r19.xyz, r13.xyz);
          r14.w = saturate(r14.w + r19.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r20.xyz, r13.xyz);
          r14.w = saturate(r14.w + r20.w);
          r14.z = r14.z * r14.w;
          r14.w = dot(r21.xyz, r13.xyz);
          r14.w = saturate(r14.w + r21.w);
          r15.x = r14.z * r14.w;
          r15.z = (uint)r7.x >> 2;
          if (1 == 0) r15.w = 0; else if (1+2 < 32) {           r15.w = (uint)r7.x << (32-(1 + 2)); r15.w = (uint)r15.w >> (32-1);          } else r15.w = (uint)r7.x >> 2;
          r16.x = (int)r15.z & 2;
          r16.y = max(r15.y, r15.x);
          r14.z = -r14.z * r14.w + 1;
          r14.z = r15.y * r14.z;
          r8.y = r16.x ? r14.z : r16.y;
          r15.xy = r15.ww ? r15.xy : r8.xy;
          r13.w = (int)r13.w + 1;
          r7.x = r15.z;
        }
        r15.y = saturate(r15.y);
        r7.x = r15.y * r12.w;
        r8.y = cmp(0 < r7.x);
        if (r8.y != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.xyzw, r8.w, l(16), t15.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.xyzw, r8.w, l(32), t15.yxwz
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xzw, r8.w, l(48), t15.xxyz
        r15.x = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(72), t15.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(104), t15.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r11.y = r14.z;
          r11.z = r16.x;
          r11.x = dot(r13.xyz, r11.xyz);
          r19.xy = r14.xw;
          r19.z = r16.w;
          r11.y = dot(r13.xyz, r19.xyz);
          r16.x = r14.y;
          r11.z = dot(r13.xyz, r16.xyz);
          r11.xyz = saturate(r11.xyz * r15.xzw + float3(0.5,0.5,0.5));
          r12.x = r17.w;
          r11.xyz = r11.xyz * r17.xyz + r12.xyz;
          r12.xyz = float3(0,0,0.5) + r11.xyz;
          r13.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
          r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
          r13.xyz = r14.xyz + r13.xyz;
          r11.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r11.xyz, 0).xyz;
          r11.xyz = r13.xyz + r11.xyz;
          r13.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
          r11.xyz = r13.xyz + r11.xyz;
          r13.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
          r11.xyz = r13.xyz + r11.xyz;
          r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
          r11.xyz = r12.xyz + r11.xyz;
          r7.x = r18.w * r7.x;
          r7.x = 0.166666672 * r7.x;
          r11.xyz = r11.xyz * r7.xxx;
          r6.xyz = r11.xyz * r18.xyz + r6.xyz;
          r7.w = r15.y * r12.w + r7.w;
        }
        r8.z = r9.w;
      }
    }
    r10.xyz = r6.xyz;
    r4.w = r7.w;
    r5.w = (int)r5.w + 32;
  }
  r3.w = cmp(r4.w < 1);
  if (r3.w != 0) {
    r5.xy = float2(0,0);
    r6.w = 0;
    r7.yz = float2(0,1);
    r8.x = 1;
    r11.xyz = r10.xyz;
    r3.w = r4.w;
    r5.w = 0;
    while (true) {
      r7.w = cmp((uint)r5.w >= (uint)r0.w);
      if (r7.w != 0) break;
      r5.z = (uint)r5.w >> 5;
      r6.xyz = (int3)r4.xyz + (int3)r5.xyz;
      r5.z = visibleProbes.Load(r6.xyzw).x;
      r6.xyz = r11.xyz;
      r7.w = r3.w;
      r8.z = r5.z;
      while (true) {
        if (r8.z == 0) break;
        r8.w = firstbitlow((uint)r8.z);
        r9.w = 1 << (int)r8.w;
        r10.w = (int)r8.z & (int)r9.w;
        if (r10.w != 0) {
          r8.z = (int)r8.z ^ (int)r9.w;
          r8.w = (int)r5.w + (int)r8.w;
          r9.w = cmp((uint)r8.w >= (uint)r0.w);
          if (r9.w != 0) {
            break;
          }
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r12.xyzw, r8.w, l(0), t15.wxyz
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        r12.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.xyzw, r8.w, l(88), t15.zxyw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.w, r8.w, l(120), t15.xxxx
        r9.w = samp0[]..swiz;
          r14.xyz = -r12.yzw + r3.xyz;
          r10.w = r9.w ? 0.000000 : 0;
          if (6 == 0) r9.w = 0; else if (6+25 < 32) {           r9.w = (uint)r9.w << (32-(6 + 25)); r9.w = (uint)r9.w >> (32-6);          } else r9.w = (uint)r9.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r15.xyzw, r10.w, l(0), t16.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r16.xyzw, r10.w, l(16), t16.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r10.w, l(32), t16.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r10.w, l(48), t16.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r10.w, l(64), t16.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r10.w, l(80), t16.xyzw
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        r20.w = samp0[]..swiz;
          r11.w = dot(r15.xyz, r14.xyz);
          r11.w = saturate(r11.w + r15.w);
          r12.w = dot(r16.xyz, r14.xyz);
          r12.w = saturate(r12.w + r16.w);
          r11.w = r12.w * r11.w;
          r12.w = dot(r17.xyz, r14.xyz);
          r12.w = saturate(r12.w + r17.w);
          r11.w = r12.w * r11.w;
          r12.w = dot(r18.xyz, r14.xyz);
          r12.w = saturate(r12.w + r18.w);
          r11.w = r12.w * r11.w;
          r12.w = dot(r19.xyz, r14.xyz);
          r12.w = saturate(r12.w + r19.w);
          r11.w = r12.w * r11.w;
          r12.w = dot(r20.xyz, r14.xyz);
          r12.w = saturate(r12.w + r20.w);
          r7.x = r12.w * r11.w;
          r11.w = (int)r13.x & 1;
          r15.xy = r11.ww ? r7.xy : r7.zx;
          r7.x = r13.x;
          r16.xy = r15.xy;
          r11.w = 1;
          while (true) {
            r12.w = cmp((int)r11.w >= (int)r9.w);
            if (r12.w != 0) break;
            r12.w = (int)r10.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r17.xyzw, r12.w, l(0), t16.xyzw
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r18.xyzw, r12.w, l(16), t16.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r19.xyzw, r12.w, l(32), t16.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r20.xyzw, r12.w, l(48), t16.xyzw
          r20.x = samp0[]..swiz;
          r20.y = samp0[]..swiz;
          r20.z = samp0[]..swiz;
          r20.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r21.xyzw, r12.w, l(64), t16.xyzw
          r21.x = samp0[]..swiz;
          r21.y = samp0[]..swiz;
          r21.z = samp0[]..swiz;
          r21.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r22.xyzw, r12.w, l(80), t16.xyzw
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.z = samp0[]..swiz;
          r22.w = samp0[]..swiz;
            r12.w = dot(r17.xyz, r14.xyz);
            r12.w = saturate(r12.w + r17.w);
            r12.w = r16.x * r12.w;
            r14.w = dot(r18.xyz, r14.xyz);
            r14.w = saturate(r14.w + r18.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r19.xyz, r14.xyz);
            r14.w = saturate(r14.w + r19.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r20.xyz, r14.xyz);
            r14.w = saturate(r14.w + r20.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r21.xyz, r14.xyz);
            r14.w = saturate(r14.w + r21.w);
            r12.w = r14.w * r12.w;
            r14.w = dot(r22.xyz, r14.xyz);
            r14.w = saturate(r14.w + r22.w);
            r16.x = r14.w * r12.w;
            r15.z = (uint)r7.x >> 2;
            if (1 == 0) r15.w = 0; else if (1+2 < 32) {             r15.w = (uint)r7.x << (32-(1 + 2)); r15.w = (uint)r15.w >> (32-1);            } else r15.w = (uint)r7.x >> 2;
            r16.z = (int)r15.z & 2;
            r16.w = max(r16.y, r16.x);
            r12.w = -r12.w * r14.w + 1;
            r12.w = r16.y * r12.w;
            r8.y = r16.z ? r12.w : r16.w;
            r16.xy = r15.ww ? r16.xy : r8.xy;
            r11.w = (int)r11.w + 1;
            r7.x = r15.z;
          }
          r7.x = saturate(r16.y + -r4.w);
          r8.y = r7.x * r13.w;
          r9.w = cmp(0 < r8.y);
          if (r9.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xyzw, r8.w, l(16), t15.xyzw
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.xyzw, r8.w, l(32), t15.yxwz
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.xzw, r8.w, l(48), t15.xxyz
          r16.x = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xyzw, r8.w, l(72), t15.xyzw
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          r18.z = samp0[]..swiz;
          r18.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r19.xyzw, r8.w, l(104), t15.xyzw
          r19.x = samp0[]..swiz;
          r19.y = samp0[]..swiz;
          r19.z = samp0[]..swiz;
          r19.w = samp0[]..swiz;
            r12.y = r15.z;
            r12.z = r17.x;
            r12.x = dot(r14.xyz, r12.xyz);
            r20.xy = r15.xw;
            r20.z = r17.w;
            r12.y = dot(r14.xyz, r20.xyz);
            r17.x = r15.y;
            r12.z = dot(r14.xyz, r17.xyz);
            r12.xyz = saturate(r12.xyz * r16.xzw + float3(0.5,0.5,0.5));
            r13.x = r18.w;
            r12.xyz = r12.xyz * r18.xyz + r13.xyz;
            r13.xyz = float3(0,0,0.5) + r12.xyz;
            r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
            r15.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
            r14.xyz = r15.xyz + r14.xyz;
            r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
            r12.xyz = r14.xyz + r12.xyz;
            r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
            r12.xyz = r14.xyz + r12.xyz;
            r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
            r12.xyz = r14.xyz + r12.xyz;
            r13.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.xyz, 0).xyz;
            r12.xyz = r13.xyz + r12.xyz;
            r8.y = r19.w * r8.y;
            r8.y = 0.166666672 * r8.y;
            r12.xyz = r12.xyz * r8.yyy;
            r6.xyz = r12.xyz * r19.xyz + r6.xyz;
            r7.w = r7.x * r13.w + r7.w;
          }
        }
      }
      r11.xyz = r6.xyz;
      r3.w = r7.w;
      r5.w = (int)r5.w + 32;
    }
    r10.xyz = r11.xyz;
    r4.w = r3.w;
  }
  r0.w = max(9.99999975e-05, r4.w);
  r0.w = rcp(r0.w);
  r4.w = saturate(r4.w);
  r4.xyz = r10.xyz * r0.www;
  r3.w = cmp(0 != r4.w);
  r5.xyz = r10.xyz * r0.www + r9.xyz;
  r0.w = -r4.w * 1.01010096 + 1;
  r6.xyz = sunConstants.avgGlobalProbeColor.xyz * sunConstants.globalProbeExposure;
  r4.xyz = r6.xyz * r0.www + r4.xyz;
  r4.xyz = r9.xyz + r4.xyz;
  r4.xyz = r3.www ? r5.xyz : r4.xyz;
  o1.xyz = v1.xyz * r4.xyz;
  r0.w = max(0.100000001, r1.z);
  r0.w = 1 / r0.w;
  r3.w = cmp(1 >= r0.w);
  r0.w = saturate(r2.w * r0.w);
  r0.w = v1.w * r0.w;
  o1.w = r3.w ? r0.w : v1.w;
  o0.xyzw = r2.xyzw;
  o5.xyz = r3.xyz;
  r1.w = 0;
  o6.xyzw = r1.wxzw;
  p8.xy = v2.xy;
  o2.xyz = v1.xyz;
  o4.z = r1.y;
  o7.xyz = r0.xyz;
  o12.xyz = r0.xyz;
  o9.x = 0;
  return;
}