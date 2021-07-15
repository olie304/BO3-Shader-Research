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
  float2 breakUpMapTile : packoffset(c15.z);
  float weatherThreshold : packoffset(c16);
  float weatherHarshness : packoffset(c16.y);
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
Texture2D<float4> normalMap : register(t6);
Texture2D<float4> glossMap : register(t7);
Texture2D<float4> aoMap : register(t9);
Texture2D<float4> detailMap1 : register(t10);
Texture2D<float4> breakUpMap : register(t11);
Texture2D<float4> gWeatherGlossMap : register(t32);
Texture2D<float4> gWeatherColorMap : register(t33);
Texture2D<float4> gWeatherNormalMap : register(t34);


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
  float3 v6 : TEXCOORD3,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r2.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r2.xyz = r1.www * r2.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r2.xy = detailScale1.xy * r0.xy;
  r0.xy = useUVOffsets1 * r0.xy;
  r2.zw = detailScale1.xy * v2.xy;
  r2.xy = useUVOffsets1 ? r2.xy : r2.zw;
  r3.xyz = gWeatherColorMap.Sample(colorSampler_s, r2.xy).xyz;
  r3.xyz = r3.xyz * weather.weatherTint.xyz + -r1.xyz;
  r2.zw = useUVOffsets1 * v2.xy;
  r0.xy = useUVOffsets1 ? r0.xy : r2.zw;
  r0.x = breakUpMap.Sample(colorSampler_s, r0.xy).x;
  r4.xyz = detailMap1.Sample(normalSampler_s, r0.zw).xyz;
  r0.y = glossMap.Sample(specColorSampler_s, r0.zw).x;
  r0.zw = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r4.z * r4.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r4.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r4.xyz = float3(-0.5,-0.5,-0) + r4.xyz;
  r4.xyz = baseNormalHeight * r4.xyz + float3(0.5,0.5,0);
  r2.zw = r4.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.w = r4.z * r4.z;
  r3.w = 0.333333343 * r3.w;
  r3.w = min(1, r3.w);
  r4.xy = r0.zw * detailScaleHeight1 + r2.zw;
  r0.z = dot(r2.zw, r2.zw);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r4.z = sqrt(r0.z);
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = rsqrt(r0.z);
  r5.xyz = r4.xyz * r0.zzz;
  r0.z = dot(v6.xyz, v6.xyz);
  r0.z = rsqrt(r0.z);
  r6.xyz = v6.xyz * r0.zzz;
  r0.z = v7.x ? 1 : -1;
  r6.xyz = r6.xyz * r0.zzz;
  r7.xyz = r6.xyz * r5.yyy;
  r0.w = dot(v5.xyz, v5.xyz);
  r0.w = rsqrt(r0.w);
  r8.xyz = v5.xyz * r0.www;
  r8.xyz = r8.xyz * r0.zzz;
  r7.xyz = r8.xyz * r5.xxx + r7.xyz;
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = rsqrt(r0.w);
  r9.xyz = v4.xyz * r0.www;
  r10.xyz = r9.xyz * r0.zzz;
  r7.xyz = r10.xyz * r5.zzz + r7.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = r7.xyz * r0.www;
  r0.w = saturate(dot(r7.xyz, weather.weatherVector.xyz));
  r0.w = log2(r0.w);
  r0.w = weatherHarshness * r0.w;
  r0.w = exp2(r0.w);
  r0.w = -weatherThreshold + r0.w;
  r4.w = 1 + -weatherThreshold;
  r4.w = max(9.99999975e-05, r4.w);
  r0.w = saturate(r0.w / r4.w);
  r0.x = r0.w * r0.x;
  r1.xyz = r0.xxx * r3.xyz + r1.xyz;
  o0.xyz = v1.xyz * r1.xyz;
  o0.w = 1;
  r1.xyz = gWeatherNormalMap.Sample(normalSampler_s, r2.xy).xyz;
  r0.w = gWeatherGlossMap.Sample(colorSampler_s, r2.xy).x;
  r1.xy = r1.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.z = r1.z * r1.z;
  r1.z = 0.333333343 * r1.z;
  r1.z = min(1, r1.z);
  r7.w = r1.z * detailScaleHeight2 + r3.w;
  r5.w = r1.w * detailScaleHeight1 + r3.w;
  r4.xy = r1.xy * detailScaleHeight2 + r2.zw;
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = rsqrt(r1.x);
  r7.xyz = r4.xyz * r1.xxx;
  r1.xyzw = r7.xyzw + -r5.xyzw;
  r1.xyzw = r0.xxxx * r1.xyzw + r5.xyzw;
  r2.xyz = r6.xyz * r1.yyy;
  r2.xyz = r8.xyz * r1.xxx + r2.xyz;
  r1.xyz = r10.xyz * r1.zzz + r2.xyz;
  r2.x = r10.x + r10.y;
  r2.x = r9.z * r0.z + r2.x;
  r2.x = 0.5 * r2.x;
  r2.y = dot(r1.xyz, r1.xyz);
  r2.y = rsqrt(r2.y);
  r3.yzw = r2.yyy * r1.xyz;
  r4.yzw = float3(1,-1,-1) * r3.yzw;
  r1.xyz = r9.xyz * r0.zzz + -r2.xxx;
  r0.z = max(r1.y, r1.z);
  r0.z = max(r1.x, r0.z);
  r0.z = max(r2.x, r0.z);
  r1.x = cmp(r0.z == r1.x);
  r4.x = 1;
  r3.x = 0;
  r2.xyzw = r1.xxxx ? r4.xyzw : r3.xyzw;
  r3.yzw = float3(-1,1,-1) * r2.yzw;
  r4.x = 2 + r0.z;
  r0.z = r1.x ? r4.x : r0.z;
  r1.x = cmp(r0.z == r1.y);
  r3.x = 2;
  r2.xyzw = r1.xxxx ? r3.xyzw : r2.xyzw;
  r3.yzw = float3(-1,-1,1) * r2.yzw;
  r1.y = 2 + r0.z;
  r0.z = r1.x ? r1.y : r0.z;
  r0.z = cmp(r0.z == r1.z);
  r3.x = 3;
  r2.xyzw = r0.zzzz ? r3.xyzw : r2.xyzw;
  r0.z = r2.y + r2.z;
  r1.z = r0.z + r2.w;
  r1.x = -r2.z * 3 + r1.z;
  r1.y = r2.w + -r2.y;
  r0.z = (uint)r2.x;
  o1.w = 0.333333343 * r0.z;
  r1.xyz = float3(0.408248305,0.707106769,0.577350259) * r1.xyz;
  r0.z = 1 + abs(r1.z);
  r0.z = rsqrt(r0.z);
  r1.xy = r1.xy * r0.zz;
  o1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.z = glossRange2.y + -glossRange2.x;
  r0.z = r0.w * r0.z + glossRange2.x;
  r0.w = glossRange.y + -glossRange.x;
  r0.y = r0.y * r0.w + glossRange.x;
  r0.yz = saturate(float2(0.0588235296,0.0588235296) * r0.yz);
  r0.z = r0.z + -r0.y;
  r0.x = r0.x * r0.z + r0.y;
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r1.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(-0.0588235296 * r0.x);
  o1.z = r0.x * 0.49755621 + 0.00146627566;
  r0.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  o2.z = r0.x;
  o2.xyw = float3(0.0399999991,0.5,0.333333343);
  return;
}