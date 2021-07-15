// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:28:13 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 specColorTint : packoffset(c11);
  float baseNormalHeight : packoffset(c11.w);
  float2 glossRange : packoffset(c12);
  float3 colorTint : packoffset(c13);
  float rippleSpeed : packoffset(c13.w);
  float2 rippleScale : packoffset(c14);
  float normalFlattening : packoffset(c14.z);
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

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
SamplerState specColorSampler_s : register(s3);
SamplerState normalSampler_s : register(s4);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> revealMap : register(t6);
Texture2D<float4> colorMap : register(t7);
Texture2D<float4> normalMap : register(t9);
Texture2D<float4> glossMap : register(t10);
Texture2D<float4> rippleMap : register(t11);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = revealMap.Sample(revealSampler_s, w1.xy).x;
  r0.y = v1.x * r0.x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.yyy * r1.xyz + float3(1,1,1);
  r0.z = v6.x ? 1 : -1;
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v3.xyz * r0.www;
  r2.xyz = r2.xyz * r0.zzz;
  r3.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.w = sqrt(r0.w);
  r0.w = r3.z * r3.z;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  r1.w = saturate(dot(r2.xyz, weather.weatherVector.xyz));
  r2.w = cmp(0.400000006 < r1.w);
  r4.xyzw = w1.xyyz * rippleScale.xyxy + float4(0.25,0,-0.550000012,0.300000012);
  r4.xyzw = weather.weatherTile * r4.xyzw;
  r5.xyzw = rippleMap.Sample(normalSampler_s, r4.xy).xyzw;
  r4.xyzw = rippleMap.Sample(normalSampler_s, r4.zw).xyzw;
  r6.xyzw = w1.xyyz * rippleScale.xyxy + float4(0.600000024,0.850000024,0.5,-0.75);
  r6.xyzw = weather.weatherTile * r6.xyzw;
  r7.xyzw = rippleMap.Sample(normalSampler_s, r6.xy).xyzw;
  r6.xyzw = rippleMap.Sample(normalSampler_s, r6.zw).xyzw;
  if (r2.w != 0) {
    r8.xyzw = gameTime.wwww * float4(1,0.829999983,0.970000029,1.13) + float4(0,0.230000004,0.469999999,0.709999979);
    r9.xyzw = float4(-0,-0.25,-0.5,-0.75) + weather.rain;
    r9.xyzw = saturate(float4(4,4,4,4) * r9.xyzw);
    r5.yz = r5.yz * float2(2,2) + float2(-1,-1);
    r2.w = r8.x * rippleSpeed + r5.w;
    r2.w = frac(r2.w);
    r3.z = r2.w + r5.x;
    r3.z = -1 + r3.z;
    r10.xyzw = r9.xyzw * float4(0.800000012,0.800000012,0.800000012,0.800000012) + float4(0.200000003,0.200000003,0.200000003,0.200000003);
    r2.w = r10.x + -r2.w;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r5.x;
    r3.z = 9 * r3.z;
    r3.z = max(0, r3.z);
    r3.z = min(3, r3.z);
    r3.z = 3.14159274 * r3.z;
    r3.z = sin(r3.z);
    r2.w = r3.z * r2.w;
    r2.w = 0.349999994 * r2.w;
    r5.xy = r5.yz * r2.ww;
    r4.yz = r4.yz * float2(2,2) + float2(-1,-1);
    r2.w = r8.y * rippleSpeed + r4.w;
    r2.w = frac(r2.w);
    r3.z = r2.w + r4.x;
    r3.z = -1 + r3.z;
    r2.w = r10.y + -r2.w;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r4.x;
    r3.z = 9 * r3.z;
    r3.z = max(0, r3.z);
    r3.z = min(3, r3.z);
    r3.z = 3.14159274 * r3.z;
    r3.z = sin(r3.z);
    r2.w = r3.z * r2.w;
    r2.w = 0.349999994 * r2.w;
    r4.xy = r4.yz * r2.ww;
    r4.zw = r7.yz * float2(2,2) + float2(-1,-1);
    r2.w = r8.z * rippleSpeed + r7.w;
    r2.w = frac(r2.w);
    r3.z = r2.w + r7.x;
    r3.z = -1 + r3.z;
    r2.w = r10.z + -r2.w;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r7.x;
    r3.z = 9 * r3.z;
    r3.z = max(0, r3.z);
    r3.z = min(3, r3.z);
    r3.z = 3.14159274 * r3.z;
    r3.z = sin(r3.z);
    r2.w = r3.z * r2.w;
    r2.w = 0.349999994 * r2.w;
    r4.zw = r4.zw * r2.ww;
    r5.zw = r6.yz * float2(2,2) + float2(-1,-1);
    r2.w = r8.w * rippleSpeed + r6.w;
    r2.w = frac(r2.w);
    r3.z = r2.w + r6.x;
    r3.z = -1 + r3.z;
    r2.w = r10.w + -r2.w;
    r2.w = max(0, r2.w);
    r2.w = r2.w * r6.x;
    r3.z = 9 * r3.z;
    r3.z = max(0, r3.z);
    r3.z = min(3, r3.z);
    r3.z = 3.14159274 * r3.z;
    r3.z = sin(r3.z);
    r2.w = r3.z * r2.w;
    r2.w = 0.349999994 * r2.w;
    r5.zw = r5.zw * r2.ww;
    r1.w = -0.400000006 + r1.w;
    r1.w = 1.66666663 * r1.w;
    r1.w = max(0, r1.w);
    r6.xyzw = r9.xyzw * r1.wwww;
    r1.w = max(abs(r5.x), abs(r5.y));
    r2.w = max(abs(r4.x), abs(r4.y));
    r1.w = max(r2.w, r1.w);
    r2.w = max(abs(r4.z), abs(r4.w));
    r1.w = max(r2.w, r1.w);
    r2.w = max(abs(r5.z), abs(r5.w));
    r1.w = max(r2.w, r1.w);
    r2.w = normalFlattening * r0.y;
    r1.w = 10 * r1.w;
    r1.w = min(1, r1.w);
    r3.z = r0.x * v1.x + -r2.w;
    r7.w = r1.w * r3.z + r2.w;
    r1.w = -0.00100000005 + v0.z;
    r1.w = saturate(111.111115 * r1.w);
    r2.w = r1.w * -2 + 3;
    r1.w = r1.w * r1.w;
    r1.w = r2.w * r1.w;
    r6.xyzw = r6.xyzw * r1.wwww;
    r3.xy = r5.xy * r6.xx + r3.xy;
    r1.w = dot(r3.xyw, r3.xyw);
    r1.w = rsqrt(r1.w);
    r8.xyz = r3.xyw * r1.www;
    r8.xy = r4.xy * r6.yy + r8.xy;
    r1.w = dot(r8.xyz, r8.xyz);
    r1.w = rsqrt(r1.w);
    r8.xyz = r8.xyz * r1.www;
    r8.xy = r4.zw * r6.zz + r8.xy;
    r1.w = dot(r8.xyz, r8.xyz);
    r1.w = rsqrt(r1.w);
    r4.xyz = r8.xyz * r1.www;
    r4.xy = r5.zw * r6.ww + r4.xy;
    r1.w = dot(r4.xyz, r4.xyz);
    r1.w = rsqrt(r1.w);
    r3.xyw = r4.xyz * r1.www;
  } else {
    r7.w = r0.y;
  }
  r1.w = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r2.w = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r3.z = dot(v4.xyz, v4.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = v4.xyz * r3.zzz;
  r4.xyz = r4.xyz * r0.zzz;
  r3.z = dot(v5.xyz, v5.xyz);
  r3.z = rsqrt(r3.z);
  r5.xyz = v5.xyz * r3.zzz;
  r5.xyz = r5.xyz * r0.zzz;
  r0.z = -17 * r1.w;
  r0.z = exp2(r0.z);
  r0.z = r0.w + r0.z;
  r0.z = log2(r0.z);
  r0.z = -0.0588235296 * r0.z;
  r5.xyz = r5.xyz * r3.yyy;
  r3.xyz = r4.xyz * r3.xxx + r5.xyz;
  r3.xyz = r2.xyz * r3.www + r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r1.w = debugGlossOverride.x * r2.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r0.w = r1.w + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.zw = max(float2(0,0), r0.zw);
  r1.w = cmp(0 < debugStreamerControl.w);
  if (r1.w != 0) {
    r1.w = (int)debugStreamerControl.w;
    r2.w = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, w1.xy);
    r3.w = colorMap.CalculateLevelOfDetail(colorSampler_s, w1.xy);
    r2.w = cmp(r2.w < r3.w);
    r3.w = cmp(0 < r3.w);
    r4.xyz = (int3)r1.www & int3(1,2,4);
    r5.xyz = r4.xxx ? float3(1,0,1) : r1.xyz;
    r4.xyw = r4.yyy ? float3(0,1,1) : r1.xyz;
    r4.xyw = r3.www ? r5.xyz : r4.xyw;
    r5.xyz = r4.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r2.www ? r4.xyw : r5.xyz;
  }
  r4.xyz = debugColorOverride.xyz + -r1.xyz;
  o0.xyz = debugColorOverride.www * r4.xyz + r1.xyz;
  r0.x = -r0.x * v1.x + debugAlphaOverride.x;
  o0.w = debugAlphaOverride.w * r0.x + r0.y;
  r0.x = r0.w + -r0.z;
  r0.x = debugGlossOverride.w * r0.x + r0.z;
  r0.yzw = v6.xxx ? r2.xyz : -r2.xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r0.yzw * r1.xxx + -r3.xyz;
  r0.yzw = debugNormalOverride.www * r0.yzw + r3.xyz;
  r1.xy = (uint2)v0.xy;
  r1.zw = float2(0,0);
  r1.xy = resolvedNormal.Load(r1.xyz).zw;
  r1.z = cmp(0 < r1.x);
  r1.y = r1.y * 3 + 0.5;
  r1.y = (uint)r1.y;
  r2.xyzw = (int4)r1.yyyy & int4(2,1,2,1);
  r2.xyzw = r2.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r1.y = (int)r2.w ^ (int)r2.z;
  r2.z = r1.y ? -0.577350259 : 0.577350259;
  r1.yw = float2(-1.22474492,1.22474492) * r2.xz;
  r3.xyz = float3(0.707106769,-1.41421354,0.707106769) * r2.xyz;
  r3.x = dot(r0.yzw, r3.xyz);
  r3.y = dot(r0.yw, r1.yw);
  r0.y = dot(r0.yzw, r2.xyz);
  r0.y = 1 + abs(r0.y);
  r0.y = rsqrt(r0.y);
  r0.yz = r3.xy * r0.yy;
  r2.xy = r0.yz * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.y = cmp(r1.x >= 0.5);
  r0.y = r0.y ? 0.5 : 0.00146627566;
  r2.z = r0.x * 0.49755621 + r0.y;
  r0.xyz = r1.zzz ? r2.xyz : 0;
  r7.xyz = r0.xyz * r7.www;
  o1.xyzw = r7.xyzw;
  return;
}