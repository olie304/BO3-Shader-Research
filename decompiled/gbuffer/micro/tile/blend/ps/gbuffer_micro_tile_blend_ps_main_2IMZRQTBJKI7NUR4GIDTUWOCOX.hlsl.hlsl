// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:30:41 2021

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
  float2 mixScale : packoffset(c11.z);
  float detailScaleHeight1 : packoffset(c12);
  float detailScaleHeight2 : packoffset(c12.y);
  float4 colorTint : packoffset(c13);
  float4 colorTint1 : packoffset(c14);
  float2 glossRange2 : packoffset(c15);
  float rotateUVs1 : packoffset(c15.z);
  float rotateUVs2 : packoffset(c15.w);
  bool useUVOffsets1 : packoffset(c16);
  bool useUVOffsets2 : packoffset(c16.y);
  float2 breakUpMapTile : packoffset(c16.z);
  float weatherThreshold : packoffset(c17);
  float weatherHarshness : packoffset(c17.y);
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
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
SamplerState aoSampler_s : register(s4);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> specColorMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> glossMap : register(t9);
Texture2D<float4> aoMap : register(t10);
Texture2D<float4> detailMap1 : register(t11);
Texture2D<float4> breakUpMap : register(t12);
Texture2D<float4> gWeatherGlossMap : register(t32);
Texture2D<float4> gWeatherColorMap : register(t33);
Texture2D<float4> gWeatherNormalMap : register(t34);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation float3 v2 : UVOFFSETS0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  sincos(rotateUVs1, r0.x, r1.x);
  r2.z = r0.x;
  r2.y = r1.x;
  r2.x = -r0.x;
  r0.xy = float2(-0.5,-0.5) + w1.xy;
  r1.x = dot(r0.xy, r2.yz);
  r1.y = dot(r0.xy, r2.xy);
  r0.xy = v2.yx + r0.xy;
  r0.zw = float2(0.5,0.5) + r1.xy;
  r1.xy = v2.yx + r1.xy;
  r0.zw = detailScale1.xy * r0.zw;
  r1.z = 0.5 + v2.z;
  r1.xy = r1.xy + r1.zz;
  r0.xy = r1.zz + r0.xy;
  r1.xy = detailScale1.xy * r1.xy;
  r0.zw = useUVOffsets1 ? r1.xy : r0.zw;
  r1.xyzw = colorMap.Sample(colorSampler_s, r0.zw).xyzw;
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r1.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r2.xy = detailScale1.xy * r0.xy;
  r0.xy = useUVOffsets1 * r0.xy;
  r2.zw = detailScale1.xy * w1.xy;
  r2.xy = useUVOffsets1 ? r2.xy : r2.zw;
  r3.xyz = gWeatherColorMap.Sample(colorSampler_s, r2.xy).xyz;
  r3.xyz = r3.xyz * weather.weatherTint.xyz + -r1.xyz;
  r2.zw = useUVOffsets1 * w1.xy;
  r0.xy = useUVOffsets1 ? r0.xy : r2.zw;
  r0.x = breakUpMap.Sample(colorSampler_s, r0.xy).x;
  r4.xyz = detailMap1.Sample(normalSampler_s, r0.zw).xyz;
  r2.zw = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.y = r4.z * r4.z;
  r0.y = 0.333333343 * r0.y;
  r0.y = min(1, r0.y);
  r4.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r4.xyz = float3(-0.5,-0.5,-0) + r4.xyz;
  r4.xyz = baseNormalHeight * r4.xyz + float3(0.5,0.5,0);
  r4.xy = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r4.z * r4.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r5.xy = r2.zw * detailScaleHeight1 + r4.xy;
  r2.z = dot(r4.xy, r4.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r5.z = sqrt(r2.z);
  r2.z = dot(r5.xyz, r5.xyz);
  r2.z = rsqrt(r2.z);
  r6.xyz = r5.xyz * r2.zzz;
  r2.z = dot(v5.xyz, v5.xyz);
  r2.z = rsqrt(r2.z);
  r7.xyz = v5.xyz * r2.zzz;
  r2.z = v6.x ? 1 : -1;
  r7.xyz = r7.xyz * r2.zzz;
  r8.xyz = r7.xyz * r6.yyy;
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = rsqrt(r2.w);
  r9.xyz = v4.xyz * r2.www;
  r9.xyz = r9.xyz * r2.zzz;
  r8.xyz = r9.xyz * r6.xxx + r8.xyz;
  r2.w = dot(v3.xyz, v3.xyz);
  r2.w = rsqrt(r2.w);
  r10.xyz = v3.xyz * r2.www;
  r11.xyz = r10.xyz * r2.zzz;
  r8.xyz = r11.xyz * r6.zzz + r8.xyz;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = rsqrt(r2.w);
  r8.xyz = r8.xyz * r2.www;
  r2.w = saturate(dot(r8.xyz, weather.weatherVector.xyz));
  r2.w = log2(r2.w);
  r2.w = weatherHarshness * r2.w;
  r2.w = exp2(r2.w);
  r2.w = -weatherThreshold + r2.w;
  r3.w = 1 + -weatherThreshold;
  r3.w = max(9.99999975e-05, r3.w);
  r2.w = saturate(r2.w / r3.w);
  r0.x = r2.w * r0.x;
  r1.xyz = r0.xxx * r3.xyz + r1.xyz;
  r2.w = specColorMap.Sample(specColorSampler_s, r0.zw).x;
  r0.z = glossMap.Sample(specColorSampler_s, r0.zw).x;
  r0.w = r0.x * -r2.w + r2.w;
  r0.w = 1 + -r0.w;
  o0.xyz = r1.xyz * r0.www;
  o0.w = 1;
  r1.xyz = gWeatherNormalMap.Sample(normalSampler_s, r2.xy).xyz;
  r0.w = gWeatherGlossMap.Sample(colorSampler_s, r2.xy).x;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r3.w = r1.z * detailScaleHeight2 + r1.w;
  r6.w = r0.y * detailScaleHeight1 + r1.w;
  r5.xy = r1.xy * detailScaleHeight2 + r4.xy;
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = r5.xyz * r0.yyy;
  r1.xyzw = -r6.xyzw + r3.xyzw;
  r1.xyzw = r0.xxxx * r1.xyzw + r6.xyzw;
  r3.xyz = r7.xyz * r1.yyy;
  r3.xyz = r9.xyz * r1.xxx + r3.xyz;
  r1.xyz = r11.xyz * r1.zzz + r3.xyz;
  r0.y = r11.x + r11.y;
  r0.y = r10.z * r2.z + r0.y;
  r0.y = 0.5 * r0.y;
  r2.x = dot(r1.xyz, r1.xyz);
  r2.x = rsqrt(r2.x);
  r3.yzw = r2.xxx * r1.xyz;
  r4.yzw = float3(1,-1,-1) * r3.yzw;
  r1.xyz = r10.xyz * r2.zzz + -r0.yyy;
  r2.x = max(r1.y, r1.z);
  r2.x = max(r2.x, r1.x);
  r0.y = max(r2.x, r0.y);
  r1.x = cmp(r0.y == r1.x);
  r4.x = 1;
  r3.x = 0;
  r3.xyzw = r1.xxxx ? r4.xyzw : r3.xyzw;
  r4.yzw = float3(-1,1,-1) * r3.yzw;
  r2.x = 2 + r0.y;
  r0.y = r1.x ? r2.x : r0.y;
  r1.x = cmp(r0.y == r1.y);
  r4.x = 2;
  r3.xyzw = r1.xxxx ? r4.xyzw : r3.xyzw;
  r4.yzw = float3(-1,-1,1) * r3.yzw;
  r1.y = 2 + r0.y;
  r0.y = r1.x ? r1.y : r0.y;
  r0.y = cmp(r0.y == r1.z);
  r4.x = 3;
  r3.xyzw = r0.yyyy ? r4.xyzw : r3.xyzw;
  r0.y = r3.y + r3.z;
  r1.z = r0.y + r3.w;
  r1.x = -r3.z * 3 + r1.z;
  r1.y = r3.w + -r3.y;
  r0.y = (uint)r3.x;
  o1.w = 0.333333343 * r0.y;
  r1.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.y = 1 + abs(r1.z);
  r0.y = rsqrt(r0.y);
  r1.xy = r1.xy * r0.yy;
  o1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = glossRange2.y + -glossRange2.x;
  r0.y = r0.w * r0.y + glossRange2.x;
  r0.w = glossRange.y + -glossRange.x;
  r0.z = r0.z * r0.w + glossRange.x;
  r0.yz = saturate(float2(0.0588235296,0.0588235296) * r0.yz);
  r0.y = r0.y + -r0.z;
  r0.y = r0.x * r0.y + r0.z;
  r0.y = -17 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r1.w + r0.y;
  r0.y = log2(r0.y);
  r0.y = saturate(-0.0588235296 * r0.y);
  o1.z = r0.y * 0.49755621 + 0.00146627566;
  r0.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + specColorTint.xyz;
  r0.yzw = r2.www * r0.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.xyz = float3(0.0399999991,0.0399999991,0.0399999991) + -r0.yzw;
  r0.xyz = r0.xxx * r1.xyz + r0.yzw;
  r1.y = r0.x + -r0.z;
  r0.x = r1.y * 0.5 + r0.z;
  r1.z = r0.y + -r0.x;
  r1.x = r1.z * 0.5 + r0.x;
  r0.xy = (uint2)v0.xy;
  r0.xy = (int2)r0.xy & int2(1,1);
  r0.x = cmp((int)r0.y == (int)r0.x);
  r0.xy = r0.xx ? r1.xy : r1.xz;
  o2.xy = r0.xy * float2(1,0.5) + float2(0,0.5);
  r0.x = aoMap.Sample(aoSampler_s, w1.xy).x;
  o2.z = r0.x;
  o2.w = 0.333333343;
  return;
}