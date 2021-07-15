// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:25:20 2021

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
  uint3 v2 : TEXCOORD0,
  float3 v3 : NORMAL0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  uint4 v6 : TEXCOORD3,
  uint v7 : SV_VertexID0,
  uint v8 : TEXCOORD15,
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
// unknown dcl_: dcl_resource_structured t0, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v7.xx & int2(3,2);
  r0.z = (uint)r0.y;
  bitmask.x = ((~(-1 << 2)) << 1) & 0xffffffff;  r1.x = (((uint)v7.x << 1) & bitmask.x) | ((uint)0 & ~bitmask.x);
  r0.x = (int)r0.x ^ (int)r1.x;
  r0.x = (int)r0.x & 2;
  r0.x = (uint)r0.x;
  r0.xy = float2(-1,-1) + r0.xz;
  r0.w = -r0.x;
  r0.zw = float2(0,1) + r0.zw;
  r0.zw = float2(0.5,0.5) * r0.zw;
  r1.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r2.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r3.xyz = (int3)v6.zzz & int3(4,1,2);
  r4.xyz = eyeOffset.yzx + -v0.yzx;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r5.xyz = inverseViewMatrix._m12_m10_m11 * r4.xyz;
  r5.xyz = inverseViewMatrix._m11_m12_m10 * r4.yzx + -r5.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r5.xyz = r3.yyy ? r5.xyz : inverseViewMatrix._m00_m01_m02;
  r4.xy = r3.yy ? r4.zx : -inverseViewMatrix._m20_m21;
  r4.zw = -r4.yy;
  r1.w = dot(r4.xz, r4.xw);
  r1.w = rsqrt(r1.w);
  r6.x = -r4.y * r1.w;
  r6.y = r4.x * r1.w;
  r6.z = 0;
  r4.xyz = r3.zzz ? float3(0,0,1) : inverseViewMatrix._m10_m11_m12;
  r3.yzw = r3.zzz ? r6.xyz : r5.xyz;
  r1.xyz = r3.xxx ? r1.xyz : r4.xyz;
  r2.xyz = r3.xxx ? r2.xyz : r3.yzw;
  r3.xyz = (uint3)v6.wxy;
  r3.xyz = float3(9.58738019e-05,0.00390625,0.0625) * r3.xyz;
  sincos(r3.x, r3.x, r4.x);
  r4.yzw = r3.xxx * r1.xyz;
  r4.yzw = r2.xyz * r4.xxx + r4.yzw;
  r1.xyz = r4.xxx * r1.xyz;
  r1.xyz = r2.xyz * r3.xxx + -r1.xyz;
  r2.xyz = r1.zxy * r4.zwy;
  r2.xyz = r1.yzx * r4.wyz + -r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  o6.xyz = r2.xyz * r1.www;
  r2.xyz = v5.zzz * r4.yzw;
  r1.xyz = v5.www * r1.xyz;
  r4.xyz = r2.xyz * v5.xxx + v0.xyz;
  r4.xyz = r1.xyz * v5.yyy + r4.xyz;
  r1.xyz = r1.xyz * r0.xxx;
  r1.xyz = r2.xyz * r0.yyy + -r1.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r0.xy = (int2)v2.xy & int2(255,65535);
  r2.xy = (uint2)v2.xy >> int2(28,16);
  if (8 == 0) r4.x = 0; else if (8+8 < 32) {   r4.x = (uint)v2.x << (32-(8 + 8)); r4.x = (uint)r4.x >> (32-8);  } else r4.x = (uint)v2.x >> 8;
  if (4 == 0) r4.y = 0; else if (4+24 < 32) {   r4.y = (uint)v2.x << (32-(4 + 24)); r4.y = (uint)r4.y >> (32-4);  } else r4.y = (uint)v2.x >> 24;
  if (8 == 0) r4.z = 0; else if (8+16 < 32) {   r4.z = (uint)v2.x << (32-(8 + 16)); r4.z = (uint)r4.z >> (32-8);  } else r4.z = (uint)v2.x >> 16;
  r1.w = (uint)r4.z;
  r1.w = 0.00390625 * r1.w;
  r4.w = r2.x;
  r2.zw = (uint2)r4.yw << int2(23,23);
  r2.zw = (int2)-r2.zw + int2(1065353216,1065353216);
  if (r4.y == 0) r3.x = 0; else if (r4.y+0 < 32) {   r3.x = (uint)r0.x << (32-(r4.y + 0)); r3.x = (uint)r3.x >> (32-r4.y);  } else r3.x = (uint)r0.x >> 0;
  if (r2.x == 0) r0.x = 0; else if (r2.x+r4.y < 32) {   r0.x = (uint)r0.x << (32-(r2.x + r4.y)); r0.x = (uint)r0.x >> (32-r2.x);  } else r0.x = (uint)r0.x >> r4.y;
  if (r4.y == 0) r3.w = 0; else if (r4.y+0 < 32) {   r3.w = (uint)r4.x << (32-(r4.y + 0)); r3.w = (uint)r3.w >> (32-r4.y);  } else r3.w = (uint)r4.x >> 0;
  if (r2.x == 0) r2.x = 0; else if (r2.x+r4.y < 32) {   r2.x = (uint)r4.x << (32-(r2.x + r4.y)); r2.x = (uint)r2.x >> (32-r2.x);  } else r2.x = (uint)r4.x >> r4.y;
  r4.y = (uint)r0.x;
  r4.xz = (uint2)r3.xw;
  r4.w = (uint)r2.x;
  r3.xw = r2.zw * r0.zw;
  r5.xy = r4.xy * r2.zw + r3.xw;
  r5.zw = r4.zw * r2.zw + r3.xw;
  o3.xyzw = v2.xxxx ? r5.xyzw : r0.zwzw;
  o5.x = v2.x ? r1.w : 0;
  r0.x = (uint)r0.y;
  r0.y = (uint)r2.y;
  r1.w = cmp(r0.x == 0.000000);
  r2.x = cmp(r0.y == 0.000000);
  r1.w = r1.w ? r2.x : 0;
  r0.xy = float2(0.0174532924,0.0174532924) * r0.xy;
  r0.xy = cos(r0.xy);
  r0.x = r0.x * r0.x;
  r0.y = -r0.y * r0.y + r0.x;
  r2.x = 1 / r0.y;
  r2.y = -r0.x * r2.x + 1;
  o7.xy = r1.ww ? float2(0,1) : r2.xy;
  o4.w = f16tof32(v2.z);
  o8.x = (uint)v2.z >> 16;
  r2.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r2.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  r2.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r2.xyzw;
  r4.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r1.yyyy;
  r4.xyzw = r1.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r4.xyzw;
  r4.xyzw = r1.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r4.xyzw;
  r2.xyzw = r4.xyzw + r2.xyzw;
  r4.xyz = -eyeOffset.xyz + r1.xyz;
  r0.x = cmp(0 < fogConsts4.w);
  if (r0.x != 0) {
    r0.x = dot(r4.xyz, r4.xyz);
    r0.y = rsqrt(r0.x);
    r5.xyz = r4.xyz * r0.yyy;
    r0.x = sqrt(r0.x);
    r0.y = dot(sunFogDir.xyz, -r5.xyz);
    r1.w = -fogConsts3.w * fogConsts3.w + 1;
    r3.x = fogConsts3.w * -r0.y + 1;
    r3.x = r3.x * r3.x;
    r3.x = 12.566371 * r3.x;
    r1.w = r1.w / r3.x;
    r3.x = -fogConsts9.z + r0.x;
    r3.x = saturate(fogConsts9.w * r3.x);
    r1.w = r3.x * r1.w;
    r0.x = r0.x * fogConsts7.x + fogConsts6.w;
    r0.x = fogConsts7.z * r0.x;
    r3.x = cmp(0.00999999978 < abs(r4.z));
    r3.w = fogConsts7.y * r4.z;
    r4.w = -1.44269502 * r3.w;
    r4.w = exp2(r4.w);
    r4.w = 1 + -r4.w;
    r3.w = r4.w / r3.w;
    r3.w = r3.w * r0.x;
    r0.x = r3.x ? r3.w : r0.x;
    r5.xyz = fogConsts5.xyz * r0.xxx;
    r5.xyz = exp2(r5.xyz);
    r5.xyz = r5.xyz * fogConsts4.www + float3(1,1,1);
    r5.xyz = saturate(-fogConsts4.www + r5.xyz);
    r0.y = saturate(r0.y);
    r0.x = r0.y * r0.y + 1;
    r0.x = r0.x * 0.0596831031 + -1;
    r0.x = fogConsts7.w * r0.x + 1;
    r6.xyz = fogConsts4.xyz * r1.www;
    r6.xyz = r0.xxx * fogConsts3.xyz + r6.xyz;
    r6.xyz = fogConsts5.www * r6.xyz;
    r7.xyz = float3(1,1,1) + -r5.xyz;
    o10.xyz = r7.xyz * r6.xyz;
    o9.xyz = r5.xyz;
    o2.xyzw = float4(0,0,0,1);
  } else {
    r0.x = fogConsts.w * r4.z;
    r0.y = fogConsts.w * r4.z + fogConsts.x;
    r1.w = cmp(abs(r0.x) < 9.99999975e-05);
    r3.x = min(64, r0.y);
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r3.w = saturate(fogConsts2.x);
    r4.w = cmp(r0.y < 0);
    r0.y = 1 + r0.y;
    r0.y = r4.w ? r3.x : r0.y;
    r0.y = -fogConsts2.x + r0.y;
    r0.x = r1.w ? 1 : r0.x;
    r0.x = r0.y / r0.x;
    r0.x = r1.w ? r3.w : r0.x;
    r0.x = fogConsts.y * r0.x;
    r0.y = dot(r4.xyz, r4.xyz);
    r1.w = sqrt(r0.y);
    r0.x = r0.x * r1.w + fogConsts.z;
    r0.x = exp2(r0.x);
    r0.x = min(1, r0.x);
    r0.y = rsqrt(r0.y);
    r5.xyz = r4.xyz * r0.yyy;
    r0.y = dot(sunFogDir.xyz, r5.xyz);
    r0.y = saturate(sunFog.y * r0.y + sunFog.x);
    r5.xyzw = -sunFogColor.xyzw + fogColor.xyzw;
    r5.xyzw = r0.yyyy * r5.xyzw + sunFogColor.xyzw;
    r0.x = 1 + -r0.x;
    o2.w = -r0.x * r5.w + 1;
    o9.xyz = float3(1,1,1);
    o10.xyz = float3(0,0,0);
    o2.xyz = r5.xyz;
  }
  r0.x = max(0.100000001, r3.z);
  r0.x = 1 / r0.x;
  r0.y = cmp(1 >= r0.x);
  r0.x = saturate(r2.w * r0.x);
  r0.x = v1.w * r0.x;
  r0.x = r0.y ? r0.x : v1.w;
  r1.yw = outdoorSSTConstants.offToPinTransform._m10_m11 * r1.yy;
  r1.xy = r1.xx * outdoorSSTConstants.offToPinTransform._m00_m01 + r1.yw;
  r1.xy = r1.zz * outdoorSSTConstants.offToPinTransform._m20_m21 + r1.xy;
  r5.xy = outdoorSSTConstants.offToPinTransform._m30_m31 + r1.xy;
  r1.xyw = float3(128,0.5,0.5) * outdoorSSTConstants.constants.inchesPerTexel;
  r6.xz = rcp(r1.xx);
  r6.y = -r6.z;
  r1.xyw = r5.xyx * r6.xyz + r1.ywy;
  r6.xyz = float3(-0.0078125,-0.0078125,-0.0078125) + outdoorSSTConstants.constants.dimensionInTiles.xyx;
  r1.xyw = max(float3(0,0,0), r1.xyw);
  r1.xyw = min(r1.xyw, r6.xyz);
  r3.xw = floor(r1.wy);
  r0.y = r3.w * outdoorSSTConstants.constants.dimensionInTiles.x + r3.x;
  r0.y = (uint)r0.y;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r3.x, r0.y, l(0), t0.xxxx
r3.x = outdoorOcclusionTree[]..swiz;
  r3.w = (int)r3.x & 0x40000000;
  r5.z = (uint)r3.x << 2;
  if (r3.w == 0) {
    r3.w = (int)r3.x & 0x01ffffff;
    r6.x = (int)r0.y + (int)r3.w;
    r0.y = (uint)r3.x >> 25;
    r0.y = (uint)r0.y;
    r1.xyw = r1.xyw * r0.yyy;
    r1.xyw = frac(r1.xyw);
    r1.xyw = float3(128,128,128) * r1.xyw;
    r1.xyw = (uint3)r1.xyw;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.z, r6.x, l(0), t0.xxxx
  r6.z = outdoorOcclusionTree[]..swiz;
    r3.xw = (uint2)r1.wy >> int2(6,6);
    r0.y = (int)r6.z & 0xc0000000;
    r4.w = (int)r6.x + 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r4.w, l(0), t0.xxxx
  r4.w = outdoorOcclusionTree[]..swiz;
    r3.w = r3.w ? r6.z : r4.w;
    r4.w = (uint)r3.w >> 13;
    r3.x = r3.x ? r4.w : r3.w;
    r3.x = (int)r3.x & 8191;
    r7.x = (int)r3.x + (int)r6.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.z, r7.x, l(0), t0.xxxx
  r7.z = outdoorOcclusionTree[]..swiz;
    r6.y = 0;
    r7.y = 1;
    r7.xyz = r0.yyy ? r6.xyz : r7.xyz;
    r8.yz = r0.yy ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
    r3.xw = (uint2)r1.wy >> (uint2)r8.yy;
    r3.xw = (int2)r3.xw & int2(1,1);
    r4.w = (int)r7.z & 0xc0000000;
    r5.w = (int)r7.x + 1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.w, r5.w, l(0), t0.xxxx
  r5.w = outdoorOcclusionTree[]..swiz;
    r3.w = r3.w ? r7.z : r5.w;
    r5.w = (uint)r3.w >> 13;
    r3.x = r3.x ? r5.w : r3.w;
    r3.x = (int)r3.x & 8191;
    r8.x = (int)r3.x + (int)r7.x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.x, l(0), t0.xxxx
  r8.w = outdoorOcclusionTree[]..swiz;
    r7.xyz = r4.www ? r7.xyz : r8.xzw;
    r6.xyz = r0.yyy ? r6.xyz : r7.xyz;
    r0.y = (int)r6.z & 0xc0000000;
    if (r0.y == 0) {
      r0.y = (int)-r6.y + 6;
      r3.xw = (uint2)r1.wy >> (uint2)r0.yy;
      r0.y = (int)r6.z | 0x40000000;
      bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r3.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
      bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r3.x = (((uint)r3.x << 0) & bitmask.x) | ((uint)r3.w & ~bitmask.x);
      r3.x = (int)r3.x * 10;
      r0.y = (uint)r0.y >> (uint)r3.x;
      r0.y = (int)r0.y & 1023;
      r7.x = (int)r0.y + (int)r6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.x, l(0), t0.xxxx
    r7.w = outdoorOcclusionTree[]..swiz;
      r7.yz = (int2)r6.yy + int2(1,2);
      r0.y = (int)-r7.y + 6;
      r3.xw = (uint2)r1.wy >> (uint2)r0.yy;
      r0.y = (int)r7.w & 0xc0000000;
      r4.w = (int)r7.w | 0x40000000;
      bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r3.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
      bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r3.x = (((uint)r3.x << 0) & bitmask.x) | ((uint)r3.w & ~bitmask.x);
      r3.x = (int)r3.x * 10;
      r3.x = (uint)r4.w >> (uint)r3.x;
      r3.x = (int)r3.x & 1023;
      r8.x = (int)r3.x + (int)r7.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.x, l(0), t0.xxxx
    r8.z = outdoorOcclusionTree[]..swiz;
      r8.y = r7.z;
      r8.xyz = r0.yyy ? r7.xyw : r8.xyz;
      r3.x = (int)-r8.y + 6;
      r3.xw = (uint2)r1.wy >> (uint2)r3.xx;
      r4.w = (int)r8.z & 0xc0000000;
      r5.w = (int)r8.z | 0x40000000;
      bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r3.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
      bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r3.x = (((uint)r3.x << 0) & bitmask.x) | ((uint)r3.w & ~bitmask.x);
      r3.x = (int)r3.x * 10;
      r3.x = (uint)r5.w >> (uint)r3.x;
      r3.x = (int)r3.x & 1023;
      r9.x = (int)r3.x + (int)r8.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.y, r9.x, l(0), t0.xxxx
    r9.y = outdoorOcclusionTree[]..swiz;
      r3.xw = r4.ww ? r8.xz : r9.xy;
      r6.xz = r0.yy ? r7.xw : r3.xw;
    }
    r0.y = (int)r6.z & 0xc0000000;
    if (r0.y == 0) {
      if (14 == 0) r3.x = 0; else if (14+15 < 32) {       r3.x = (uint)r6.z << (32-(14 + 15)); r3.x = (uint)r3.x >> (32-14);      } else r3.x = (uint)r6.z >> 15;
      r3.x = (uint)r3.x;
      r3.x = outdoorSSTConstants.constants.spanInInches * r3.x;
      r6.yw = (int2)r6.zz & int2(32767,536870912);
      r3.w = (uint)r6.y;
      r3.w = outdoorSSTConstants.constants.spanInInches * r3.w;
      r3.xw = float2(6.10388815e-05,3.05185094e-05) * r3.xw;
      r4.w = (int)r1.y & 3;
      r4.w = (int)r4.w + (int)r6.x;
      r4.w = (int)r4.w + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r4.w, l(0), t0.xxxx
    r4.w = outdoorOcclusionTree[]..swiz;
      bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r7.x = (((uint)r1.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
      bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r7.y = (((uint)r1.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r7.z = (((uint)r1.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r1.x = (uint)r4.w >> (uint)r7.x;
      r1.x = (int)r1.x & 255;
      r1.x = (uint)r1.x;
      r1.x = r1.x * r3.w;
      r1.x = r1.x * 0.00392156886 + r3.x;
      r1.y = (int)r7.y + 1;
      if (1 == 0) r1.w = 0; else if (1+1 < 32) {       r1.w = (uint)r1.w << (32-(1 + 1)); r1.w = (uint)r1.w >> (32-1);      } else r1.w = (uint)r1.w >> 1;
      r1.y = (int)r1.w + (int)r1.y;
      r1.y = (int)r1.y + (int)r6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r1.y, r1.y, l(0), t0.xxxx
    r1.y = outdoorOcclusionTree[]..swiz;
      r1.y = (uint)r1.y >> (uint)r7.z;
      r1.y = (int)r1.y & 0x0000ffff;
      r1.y = (uint)r1.y;
      r1.y = r1.y * r3.w;
      r1.y = r1.y * 1.52590219e-05 + r3.x;
      r5.z = r6.w ? r1.x : r1.y;
    } else {
      r1.x = (int)r6.z & 0x80000000;
      r1.y = (int)r6.x + 1;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r1.y, r1.y, l(0), t0.xxxx
    r1.y = outdoorOcclusionTree[]..swiz;
      r1.x = r1.x ? r1.y : 0;
      r1.y = (uint)r6.z << 2;
      r1.w = (uint)r1.x >> 16;
      r1.x = (int)r1.x & 0x0000ffff;
      r1.xw = f16tof32(r1.xw);
      r1.y = r5.x * r1.w + r1.y;
      r1.x = r5.y * r1.x + r1.y;
      r5.z = r0.y ? r1.x : r5.z;
    }
  }
  r0.y = dot(r5.xyz, pinToWorldZ.xyz);
  r0.y = pinToWorldZ.w + r0.y;
  r0.y = saturate(r1.z + -r0.y);
  o1.w = r0.x * r0.y;
  o0.xyzw = r2.xyzw;
  o1.xyz = v1.xyz;
  o4.xyz = r4.xyz;
  o5.yz = r3.yz;
  o5.w = 0;
  p7.xy = r0.zw;
  return;
}