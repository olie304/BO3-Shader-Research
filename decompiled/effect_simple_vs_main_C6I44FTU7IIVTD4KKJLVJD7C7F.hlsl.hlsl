// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:25 2021

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
  uint zFeatherComputeSprites : packoffset(c15.z);
  float desaturationAmount : packoffset(c15.w);
  float4 levelsControls : packoffset(c16);
  bool useOldHDRScale : packoffset(c17);
  float2 scaleUVsAlpha : packoffset(c17.y);
  float zFeatherOverride : packoffset(c17.w);
  float2 scaleUVsColor : packoffset(c18);
  float2 offsetUVsColor : packoffset(c18.z);
  float2 rotateUVsColor : packoffset(c19);
  float2 scrollUVsColor : packoffset(c19.z);
  float2 scaleUVsEmissive : packoffset(c20);
  float2 offsetUVsEmissive : packoffset(c20.z);
  float2 rotateUVsEmissive : packoffset(c21);
  float2 scrollUVsEmissive : packoffset(c21.z);
  float translucentShadowOpacity : packoffset(c22);
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

StructuredBuffer<outdoorOcclusionTree> outdoorOcclusionTree : register(t0);


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
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2,
  out float4 o5 : TEXCOORD3,
  out float2 o6 : TEXCOORD4,
  out float2 p6 : TEXCOORD5,
  out uint o7 : TEXCOORD6)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 4
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cmp(falloffParms.xy == float2(0,0));
  r0.x = r0.y ? r0.x : 0;
  r0.yz = float2(0.0174532924,0.0174532924) * falloffParms.xy;
  r0.yz = cos(r0.yz);
  r0.zw = r0.yz * r0.yz;
  r0.y = r0.y * r0.y + -r0.w;
  r1.x = 1 / r0.y;
  r1.y = -r0.z * r1.x + 1;
  o6.xy = r0.xx ? float2(0,1) : r1.xy;
  r0.x = (uint)v0.w >> 16;
  o3.w = f16tof32(r0.x);
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
  o2.xy = v2.xy * r0.yy;
  r1.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r1.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r1.xyzw;
  r1.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r1.xyzw;
  r1.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r1.xyzw;
  r2.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * v0.yyyy;
  r2.xyzw = v0.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = v0.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  o3.xyz = -eyeOffset.xyz + v0.xyz;
  r0.z = max(0, useOldHDRScale);
  r2.x = max(0.100000001, r0.z);
  r2.x = 1 / r2.x;
  r2.y = cmp(1 >= r2.x);
  r2.x = saturate(r2.x * r1.w);
  r2.x = v1.w * r2.x;
  r2.x = r2.y ? r2.x : v1.w;
  r2.yz = outdoorSSTConstants.offToPinTransform._m10_m11 * v0.yy;
  r2.yz = v0.xx * outdoorSSTConstants.offToPinTransform._m00_m01 + r2.yz;
  r2.yz = v0.zz * outdoorSSTConstants.offToPinTransform._m20_m21 + r2.yz;
  r3.xy = outdoorSSTConstants.offToPinTransform._m30_m31 + r2.yz;
  r2.yzw = float3(128,0.5,0.5) * outdoorSSTConstants.constants.inchesPerTexel;
  r4.xz = rcp(r2.yy);
  r4.y = -r4.z;
  r2.yzw = r3.xyx * r4.xyz + r2.zwz;
  r4.xyz = float3(-0.0078125,-0.0078125,-0.0078125) + outdoorSSTConstants.constants.dimensionInTiles.xyx;
  r2.yzw = max(float3(0,0,0), r2.yzw);
  r2.yzw = min(r2.yzw, r4.xyz);
  r4.xy = floor(r2.wz);
  r3.w = r4.y * outdoorSSTConstants.constants.dimensionInTiles.x + r4.x;
  r3.w = (uint)r3.w;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.x, r3.w, l(0), t0.xxxx
r4.x = outdoorOcclusionTree[]..swiz;
  r4.y = (int)r4.x & 0x40000000;
  r3.z = (uint)r4.x << 2;
  if (r4.y == 0) {
    r4.y = (int)r4.x & 0x01ffffff;
    r5.x = (int)r3.w + (int)r4.y;
    r3.w = (uint)r4.x >> 25;
    r3.w = (uint)r3.w;
    r2.yzw = r3.www * r2.yzw;
    r2.yzw = frac(r2.yzw);
    r2.yzw = float3(128,128,128) * r2.yzw;
    r2.yzw = (uint3)r2.yzw;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.z, r5.x, l(0), t0.xxxx
  r5.z = outdoorOcclusionTree[]..swiz;
    r4.xy = (uint2)r2.wz >> int2(6,6);
    r3.w = (int)r5.z & 0xc0000000;
    r4.z = (int)r5.x + 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.z, r4.z, l(0), t0.xxxx
  r4.z = outdoorOcclusionTree[]..swiz;
    r4.y = r4.y ? r5.z : r4.z;
    r4.z = (uint)r4.y >> 13;
    r4.x = r4.x ? r4.z : r4.y;
    r4.x = (int)r4.x & 8191;
    r4.x = (int)r4.x + (int)r5.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.z, r4.x, l(0), t0.xxxx
  r4.z = outdoorOcclusionTree[]..swiz;
    r5.y = 0;
    r4.y = 1;
    r4.xyz = r3.www ? r5.xyz : r4.xyz;
    r6.yz = r3.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
    r7.xy = (uint2)r2.wz >> (uint2)r6.yy;
    r7.xy = (int2)r7.xy & int2(1,1);
    r4.w = (int)r4.z & 0xc0000000;
    r5.w = (int)r4.x + 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.w, r5.w, l(0), t0.xxxx
  r5.w = outdoorOcclusionTree[]..swiz;
    r5.w = r7.y ? r4.z : r5.w;
    r6.y = (uint)r5.w >> 13;
    r5.w = r7.x ? r6.y : r5.w;
    r5.w = (int)r5.w & 8191;
    r6.x = (int)r4.x + (int)r5.w;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.w, r6.x, l(0), t0.xxxx
  r6.w = outdoorOcclusionTree[]..swiz;
    r4.xyz = r4.www ? r4.xyz : r6.xzw;
    r4.xyz = r3.www ? r5.xyz : r4.xyz;
    r3.w = (int)r4.z & 0xc0000000;
    if (r3.w == 0) {
      r3.w = (int)-r4.y + 6;
      r5.xy = (uint2)r2.wz >> (uint2)r3.ww;
      r3.w = (int)r4.z | 0x40000000;
      bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r4.w = (((uint)r5.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
      bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.w = (((uint)r5.x << 0) & bitmask.w) | ((uint)r4.w & ~bitmask.w);
      r4.w = (int)r4.w * 10;
      r3.w = (uint)r3.w >> (uint)r4.w;
      r3.w = (int)r3.w & 1023;
      r5.x = (int)r3.w + (int)r4.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.w, r5.x, l(0), t0.xxxx
    r5.w = outdoorOcclusionTree[]..swiz;
      r5.yz = (int2)r4.yy + int2(1,2);
      r3.w = (int)-r5.y + 6;
      r4.yw = (uint2)r2.wz >> (uint2)r3.ww;
      r3.w = (int)r5.w & 0xc0000000;
      r6.x = (int)r5.w | 0x40000000;
      bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r4.w = (((uint)r4.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
      bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.y = (((uint)r4.y << 0) & bitmask.y) | ((uint)r4.w & ~bitmask.y);
      r4.y = (int)r4.y * 10;
      r4.y = (uint)r6.x >> (uint)r4.y;
      r4.y = (int)r4.y & 1023;
      r6.x = (int)r4.y + (int)r5.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.z, r6.x, l(0), t0.xxxx
    r6.z = outdoorOcclusionTree[]..swiz;
      r6.y = r5.z;
      r6.xyz = r3.www ? r5.xyw : r6.xyz;
      r4.y = (int)-r6.y + 6;
      r4.yw = (uint2)r2.wz >> (uint2)r4.yy;
      r5.y = (int)r6.z & 0xc0000000;
      r5.z = (int)r6.z | 0x40000000;
      bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r4.w = (((uint)r4.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
      bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r4.y = (((uint)r4.y << 0) & bitmask.y) | ((uint)r4.w & ~bitmask.y);
      r4.y = (int)r4.y * 10;
      r4.y = (uint)r5.z >> (uint)r4.y;
      r4.y = (int)r4.y & 1023;
      r7.x = (int)r4.y + (int)r6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.y, r7.x, l(0), t0.xxxx
    r7.y = outdoorOcclusionTree[]..swiz;
      r4.yw = r5.yy ? r6.xz : r7.xy;
      r4.xz = r3.ww ? r5.xw : r4.yw;
    }
    r3.w = (int)r4.z & 0xc0000000;
    if (r3.w == 0) {
      if (14 == 0) r4.y = 0; else if (14+15 < 32) {       r4.y = (uint)r4.z << (32-(14 + 15)); r4.y = (uint)r4.y >> (32-14);      } else r4.y = (uint)r4.z >> 15;
      r4.y = (uint)r4.y;
      r4.y = outdoorSSTConstants.constants.spanInInches * r4.y;
      r5.xy = (int2)r4.zz & int2(32767,536870912);
      r4.w = (uint)r5.x;
      r4.w = outdoorSSTConstants.constants.spanInInches * r4.w;
      r4.yw = float2(6.10388815e-05,3.05185094e-05) * r4.yw;
      r5.x = (int)r2.z & 3;
      r5.x = (int)r4.x + (int)r5.x;
      r5.x = (int)r5.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.x, r5.x, l(0), t0.xxxx
    r5.x = outdoorOcclusionTree[]..swiz;
      bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r6.x = (((uint)r2.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
      bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r6.y = (((uint)r2.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r6.z = (((uint)r2.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r2.y = (uint)r5.x >> (uint)r6.x;
      r2.y = (int)r2.y & 255;
      r2.y = (uint)r2.y;
      r2.y = r2.y * r4.w;
      r2.y = r2.y * 0.00392156886 + r4.y;
      r2.z = (int)r6.y + 1;
      if (1 == 0) r2.w = 0; else if (1+1 < 32) {       r2.w = (uint)r2.w << (32-(1 + 1)); r2.w = (uint)r2.w >> (32-1);      } else r2.w = (uint)r2.w >> 1;
      r2.z = (int)r2.w + (int)r2.z;
      r2.z = (int)r2.z + (int)r4.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r2.z, r2.z, l(0), t0.xxxx
    r2.z = outdoorOcclusionTree[]..swiz;
      r2.z = (uint)r2.z >> (uint)r6.z;
      r2.z = (int)r2.z & 0x0000ffff;
      r2.z = (uint)r2.z;
      r2.z = r2.z * r4.w;
      r2.z = r2.z * 1.52590219e-05 + r4.y;
      r3.z = r5.y ? r2.y : r2.z;
    } else {
      r2.y = (int)r4.z & 0x80000000;
      r2.z = (int)r4.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r2.z, r2.z, l(0), t0.xxxx
    r2.z = outdoorOcclusionTree[]..swiz;
      r2.y = r2.y ? r2.z : 0;
      r2.z = (uint)r4.z << 2;
      r2.w = (uint)r2.y >> 16;
      r2.y = (int)r2.y & 0x0000ffff;
      r2.yw = f16tof32(r2.yw);
      r2.z = r3.x * r2.w + r2.z;
      r2.y = r3.y * r2.y + r2.z;
      r3.z = r3.w ? r2.y : r3.z;
    }
  }
  r2.y = dot(r3.xyz, pinToWorldZ.xyz);
  r2.y = pinToWorldZ.w + r2.y;
  r2.y = saturate(v0.z + -r2.y);
  o1.w = r2.x * r2.y;
  o0.xyzw = r1.xyzw;
  o1.xyz = v1.xyz;
  r0.w = 0;
  o4.xyzw = r0.wxzw;
  p6.xy = v2.xy;
  o2.z = r0.y;
  o5.xyz = float3(0,0,0);
  o7.x = 0;
  return;
}