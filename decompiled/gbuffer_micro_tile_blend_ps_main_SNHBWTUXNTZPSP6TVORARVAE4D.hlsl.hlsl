// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:30:57 2021

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
  float baseNormalHeight : packoffset(c10);
  float2 glossRange : packoffset(c10.y);
  float2 mixScale : packoffset(c11);
  float detailScaleHeight1 : packoffset(c11.z);
  float detailScaleHeight2 : packoffset(c11.w);
  float4 colorTint : packoffset(c12);
  float4 colorTint1 : packoffset(c13);
  float2 glossRange2 : packoffset(c14);
  float rotateUVs1 : packoffset(c14.z);
  float rotateUVs2 : packoffset(c14.w);
  bool useUVOffsets1 : packoffset(c15);
  bool useUVOffsets2 : packoffset(c15.y);
  float detailScaleHeight3 : packoffset(c15.z);
  float4 colorTint2 : packoffset(c16);
  float2 glossRange3 : packoffset(c17);
  float rotateUVs3 : packoffset(c17.z);
  bool useUVOffsets3 : packoffset(c17.w);
  float2 breakUpMapTile : packoffset(c18);
  float weatherThreshold : packoffset(c18.z);
  float weatherHarshness : packoffset(c18.w);
  float weatherThreshold2 : packoffset(c19);
  float weatherHarshness2 : packoffset(c19.y);
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
SamplerState normalSampler_s : register(s2);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> normalMap : register(t6);
Texture2D<float4> detailMap1 : register(t7);
Texture2D<float4> breakUpMap : register(t9);
Texture2D<float4> gWeatherGlossMap : register(t32);
Texture2D<float4> gWeatherColorMap : register(t33);
Texture2D<float4> gWeatherNormalMap : register(t34);
Texture2D<float4> gWeatherGlossMap2 : register(t39);
Texture2D<float4> gWeatherColorMap2 : register(t40);
Texture2D<float4> gWeatherNormalMap2 : register(t41);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float4 v7 : TEXCOORD7,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float2 o3 : SV_TARGET3)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  sincos(rotateUVs1, r0.x, r1.x);
  r2.z = r0.x;
  r2.y = r1.x;
  r2.x = -r0.x;
  r0.xy = float2(-0.5,-0.5) + v2.xy;
  r1.x = dot(r0.xy, r2.yz);
  r1.y = dot(r0.xy, r2.xy);
  r0.xy = v3.yx + r0.xy;
  r0.zw = float2(0.5,0.5) + r1.xy;
  r1.xy = v3.yx + r1.xy;
  r0.zw = detailScale1.xy * r0.zw;
  r1.z = 0.5 + v3.z;
  r1.xy = r1.xy + r1.zz;
  r0.xy = r1.zz + r0.xy;
  r1.xy = detailScale1.xy * r1.xy;
  r0.zw = useUVOffsets1 ? r1.xy : r0.zw;
  r1.xyzw = colorMap.Sample(colorSampler_s, r0.zw).xyzw;
  r2.xyz = detailMap1.Sample(normalSampler_s, r0.zw).xyz;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r1.www * r3.xyz + float3(1,1,1);
  r1.xyz = r3.xyz * r1.xyz;
  r0.zw = detailScale1.xy * r0.xy;
  r0.xy = breakUpMapTile.xy * r0.xy;
  r3.xy = detailScale1.xy * v2.xy;
  r3.zw = useUVOffsets1 ? r0.zw : r3.xy;
  r0.zw = useUVOffsets3 ? r0.zw : r3.xy;
  r4.xyz = gWeatherColorMap.Sample(colorSampler_s, r3.zw).xyz;
  r4.xyz = r4.xyz * weather.weatherTint.xyz + -r1.xyz;
  r3.xy = breakUpMapTile.xy * v2.xy;
  r0.xy = useUVOffsets1 ? r0.xy : r3.xy;
  r0.x = breakUpMap.Sample(colorSampler_s, r0.xy).x;
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.y = r2.z * r2.z;
  r0.y = 0.333333343 * r0.y;
  r0.y = min(1, r0.y);
  r5.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r5.xyz = float3(-0.5,-0.5,-0) + r5.xyz;
  r5.xyz = baseNormalHeight * r5.xyz + float3(0.5,0.5,0);
  r2.zw = r5.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r5.z * r5.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r5.xy = r2.xy * detailScaleHeight1 + r2.zw;
  r2.x = dot(r2.zw, r2.zw);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r5.z = sqrt(r2.x);
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = rsqrt(r2.x);
  r6.xyz = r5.xyz * r2.xxx;
  r2.x = dot(v6.xyz, v6.xyz);
  r2.x = rsqrt(r2.x);
  r7.xyz = v6.xyz * r2.xxx;
  r2.x = v8.x ? 1 : -1;
  r7.xyz = r7.xyz * r2.xxx;
  r8.xyz = r7.xyz * r6.yyy;
  r2.y = dot(v5.xyz, v5.xyz);
  r2.y = rsqrt(r2.y);
  r9.xyz = v5.xyz * r2.yyy;
  r9.xyz = r9.xyz * r2.xxx;
  r8.xyz = r9.xyz * r6.xxx + r8.xyz;
  r2.y = dot(v4.xyz, v4.xyz);
  r2.y = rsqrt(r2.y);
  r10.xyz = v4.xyz * r2.yyy;
  r11.xyz = r10.xyz * r2.xxx;
  r8.xyz = r11.xyz * r6.zzz + r8.xyz;
  r2.y = dot(r8.xyz, r8.xyz);
  r2.y = rsqrt(r2.y);
  r8.xyz = r8.xyz * r2.yyy;
  r2.y = saturate(dot(r8.xyz, weather.weatherVector.xyz));
  r3.x = saturate(dot(r8.xyz, weather.weatherVector2.xyz));
  r3.x = log2(r3.x);
  r3.x = weatherHarshness2 * r3.x;
  r3.x = exp2(r3.x);
  r3.x = -weatherThreshold2 + r3.x;
  r2.y = log2(r2.y);
  r2.y = weatherHarshness * r2.y;
  r2.y = exp2(r2.y);
  r2.y = -weatherThreshold + r2.y;
  r3.y = 1 + -weatherThreshold;
  r3.y = max(9.99999975e-05, r3.y);
  r2.y = saturate(r2.y / r3.y);
  r2.y = r2.y * r0.x;
  r1.xyz = r2.yyy * r4.xyz + r1.xyz;
  r4.xyz = gWeatherColorMap2.Sample(colorSampler_s, r0.zw).xyz;
  r4.xyz = r4.xyz * weather.weatherTint2.xyz + -r1.xyz;
  r3.y = 1 + -weatherThreshold2;
  r3.y = max(9.99999975e-05, r3.y);
  r3.x = saturate(r3.x / r3.y);
  r0.x = r3.x * r0.x;
  r1.xyz = r0.xxx * r4.xyz + r1.xyz;
  o0.xyz = v1.xyz * r1.xyz;
  o0.w = 1;
  r1.xyz = gWeatherNormalMap.Sample(normalSampler_s, r3.zw).xyz;
  r3.x = gWeatherGlossMap.Sample(colorSampler_s, r3.zw).x;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r4.w = r1.z * detailScaleHeight2 + r1.w;
  r5.xy = r1.xy * detailScaleHeight2 + r2.zw;
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = rsqrt(r1.x);
  r4.xyz = r5.xyz * r1.xxx;
  r6.w = r0.y * detailScaleHeight1 + r1.w;
  r4.xyzw = -r6.xyzw + r4.xyzw;
  r4.xyzw = r2.yyyy * r4.xyzw + r6.xyzw;
  r0.y = gWeatherNormalMap2.Sample(normalSampler_s, r0.zw).x;
  r0.z = gWeatherGlossMap2.Sample(colorSampler_s, r0.zw).x;
  r0.w = r0.y * 1.9921875 + -1;
  r0.y = r0.y * r0.y;
  r0.y = 0.333333343 * r0.y;
  r0.y = min(1, r0.y);
  r1.w = r0.y * useUVOffsets1 + r1.w;
  r5.xy = r0.ww * useUVOffsets1 + r2.zw;
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r5.xyz * r0.yyy;
  r1.xyzw = r1.xyzw + -r4.xyzw;
  r1.xyzw = r0.xxxx * r1.xyzw + r4.xyzw;
  r3.yzw = r7.xyz * r1.yyy;
  r3.yzw = r9.xyz * r1.xxx + r3.yzw;
  r1.xyz = r11.xyz * r1.zzz + r3.yzw;
  r0.y = r11.x + r11.y;
  r0.y = r10.z * r2.x + r0.y;
  r0.y = 0.5 * r0.y;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r4.yzw = r1.xyz * r0.www;
  r5.yzw = float3(1,-1,-1) * r4.yzw;
  r1.xyz = r10.xyz * r2.xxx + -r0.yyy;
  r0.w = max(r1.y, r1.z);
  r0.w = max(r1.x, r0.w);
  r0.y = max(r0.y, r0.w);
  r0.w = cmp(r0.y == r1.x);
  r5.x = 1;
  r4.x = 0;
  r4.xyzw = r0.wwww ? r5.xyzw : r4.xyzw;
  r5.yzw = float3(-1,1,-1) * r4.yzw;
  r1.x = 2 + r0.y;
  r0.y = r0.w ? r1.x : r0.y;
  r0.w = cmp(r0.y == r1.y);
  r5.x = 2;
  r4.xyzw = r0.wwww ? r5.xyzw : r4.xyzw;
  r5.yzw = float3(-1,-1,1) * r4.yzw;
  r1.x = 2 + r0.y;
  r0.y = r0.w ? r1.x : r0.y;
  r0.y = cmp(r0.y == r1.z);
  r5.x = 3;
  r4.xyzw = r0.yyyy ? r5.xyzw : r4.xyzw;
  r0.y = r4.y + r4.z;
  r1.z = r0.y + r4.w;
  r1.x = -r4.z * 3 + r1.z;
  r1.y = r4.w + -r4.y;
  r0.y = (uint)r4.x;
  o1.w = 0.333333343 * r0.y;
  r1.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.y = 1 + abs(r1.z);
  r0.y = rsqrt(r0.y);
  r0.yw = r1.xy * r0.yy;
  o1.xy = r0.yw * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = glossRange3.y + -glossRange3.x;
  r0.y = r0.z * r0.y + glossRange3.x;
  r0.z = glossRange2.y + -glossRange2.x;
  r0.z = r3.x * r0.z + glossRange2.x;
  r0.yz = saturate(float2(0.0588235296,0.0588235296) * r0.yz);
  r0.w = saturate(0.0588235296 * glossRange.y);
  r0.z = r0.z + -r0.w;
  r0.z = r2.y * r0.z + r0.w;
  r0.y = r0.y + -r0.z;
  r0.x = r0.x * r0.y + r0.z;
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r1.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  o2.xyzw = float4(0.0399999991,0.5,1,0.333333343);
  r0.xy = v7.xy / v7.ww;
  r0.zw = float2(0.5,0.5) * renderTargetSize.xy;
  r1.x = r0.x * r0.z;
  r1.y = r0.y * -r0.w;
  r0.xy = renderTargetSize.xy * float2(0.5,0.5) + r1.xy;
  r0.xy = v0.xy + -r0.xy;
  r0.zw = float2(0.100000001,0.100000001) * abs(r0.xy);
  r0.zw = min(float2(1,1), r0.zw);
  r1.xy = float2(-10,-10) + abs(r0.xy);
  r0.xy = cmp(r0.xy >= float2(0,0));
  r1.xy = saturate(float2(0.0333333351,0.0333333351) * r1.xy);
  r0.zw = -r1.xy + r0.zw;
  r0.zw = r0.zw * float2(0.5,0.5) + r1.xy;
  o3.xy = r0.xy ? r0.zw : -r0.zw;
  return;
}