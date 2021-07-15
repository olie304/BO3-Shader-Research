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
SamplerState specColorSampler_s : register(s2);
SamplerState normalSampler_s : register(s3);
Texture2D<float4> resolvedNormal : register(t0);
Texture2D<float4> revealMap : register(t6);
Texture2D<float4> normalMap : register(t7);
Texture2D<float4> glossMap : register(t9);
Texture2D<float4> rippleMap : register(t10);


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = revealMap.Sample(revealSampler_s, w1.xy).x;
  r0.y = v1.x * r0.x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  o0.xyz = r0.yyy * r1.xyz + float3(1,1,1);
  r0.z = v6.x ? 1 : -1;
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v3.xyz * r0.www;
  r1.xyz = r1.xyz * r0.zzz;
  r2.xyz = normalMap.Sample(normalSampler_s, w1.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.w = sqrt(r0.w);
  r0.w = r2.z * r2.z;
  r0.w = 0.333333343 * r0.w;
  r0.w = min(1, r0.w);
  r1.w = saturate(dot(r1.xyz, weather.weatherVector.xyz));
  r2.z = cmp(0.400000006 < r1.w);
  r3.xyzw = w1.xyyz * rippleScale.xyxy + float4(0.25,0,-0.550000012,0.300000012);
  r3.xyzw = weather.weatherTile * r3.xyzw;
  r4.xyzw = rippleMap.Sample(normalSampler_s, r3.xy).xyzw;
  r3.xyzw = rippleMap.Sample(normalSampler_s, r3.zw).xyzw;
  r5.xyzw = w1.xyyz * rippleScale.xyxy + float4(0.600000024,0.850000024,0.5,-0.75);
  r5.xyzw = weather.weatherTile * r5.xyzw;
  r6.xyzw = rippleMap.Sample(normalSampler_s, r5.xy).xyzw;
  r5.xyzw = rippleMap.Sample(normalSampler_s, r5.zw).xyzw;
  if (r2.z != 0) {
    r7.xyzw = gameTime.wwww * float4(1,0.829999983,0.970000029,1.13) + float4(0,0.230000004,0.469999999,0.709999979);
    r8.xyzw = float4(-0,-0.25,-0.5,-0.75) + weather.rain;
    r8.xyzw = saturate(float4(4,4,4,4) * r8.xyzw);
    r4.yz = r4.yz * float2(2,2) + float2(-1,-1);
    r2.z = r7.x * rippleSpeed + r4.w;
    r2.z = frac(r2.z);
    r4.w = r2.z + r4.x;
    r4.w = -1 + r4.w;
    r9.xyzw = r8.xyzw * float4(0.800000012,0.800000012,0.800000012,0.800000012) + float4(0.200000003,0.200000003,0.200000003,0.200000003);
    r2.z = r9.x + -r2.z;
    r2.z = max(0, r2.z);
    r2.z = r2.z * r4.x;
    r4.x = 9 * r4.w;
    r4.x = max(0, r4.x);
    r4.x = min(3, r4.x);
    r4.x = 3.14159274 * r4.x;
    r4.x = sin(r4.x);
    r2.z = r4.x * r2.z;
    r2.z = 0.349999994 * r2.z;
    r4.xy = r4.yz * r2.zz;
    r3.yz = r3.yz * float2(2,2) + float2(-1,-1);
    r2.z = r7.y * rippleSpeed + r3.w;
    r2.z = frac(r2.z);
    r3.w = r2.z + r3.x;
    r3.w = -1 + r3.w;
    r2.z = r9.y + -r2.z;
    r2.z = max(0, r2.z);
    r2.z = r2.z * r3.x;
    r3.x = 9 * r3.w;
    r3.x = max(0, r3.x);
    r3.x = min(3, r3.x);
    r3.x = 3.14159274 * r3.x;
    r3.x = sin(r3.x);
    r2.z = r3.x * r2.z;
    r2.z = 0.349999994 * r2.z;
    r3.xy = r3.yz * r2.zz;
    r3.zw = r6.yz * float2(2,2) + float2(-1,-1);
    r2.z = r7.z * rippleSpeed + r6.w;
    r2.z = frac(r2.z);
    r4.z = r2.z + r6.x;
    r4.z = -1 + r4.z;
    r2.z = r9.z + -r2.z;
    r2.z = max(0, r2.z);
    r2.z = r2.z * r6.x;
    r4.z = 9 * r4.z;
    r4.z = max(0, r4.z);
    r4.z = min(3, r4.z);
    r4.z = 3.14159274 * r4.z;
    r4.z = sin(r4.z);
    r2.z = r4.z * r2.z;
    r2.z = 0.349999994 * r2.z;
    r3.zw = r3.zw * r2.zz;
    r4.zw = r5.yz * float2(2,2) + float2(-1,-1);
    r2.z = r7.w * rippleSpeed + r5.w;
    r2.z = frac(r2.z);
    r5.y = r2.z + r5.x;
    r5.y = -1 + r5.y;
    r2.z = r9.w + -r2.z;
    r2.z = max(0, r2.z);
    r2.z = r2.z * r5.x;
    r5.x = 9 * r5.y;
    r5.x = max(0, r5.x);
    r5.x = min(3, r5.x);
    r5.x = 3.14159274 * r5.x;
    r5.x = sin(r5.x);
    r2.z = r5.x * r2.z;
    r2.z = 0.349999994 * r2.z;
    r4.zw = r4.zw * r2.zz;
    r1.w = -0.400000006 + r1.w;
    r1.w = 1.66666663 * r1.w;
    r1.w = max(0, r1.w);
    r5.xyzw = r8.xyzw * r1.wwww;
    r1.w = max(abs(r4.x), abs(r4.y));
    r2.z = max(abs(r3.x), abs(r3.y));
    r1.w = max(r2.z, r1.w);
    r2.z = max(abs(r3.z), abs(r3.w));
    r1.w = max(r2.z, r1.w);
    r2.z = max(abs(r4.z), abs(r4.w));
    r1.w = max(r2.z, r1.w);
    r2.z = normalFlattening * r0.y;
    r1.w = 10 * r1.w;
    r1.w = min(1, r1.w);
    r0.x = r0.x * v1.x + -r2.z;
    r6.w = r1.w * r0.x + r2.z;
    r0.x = -0.00100000005 + v0.z;
    r0.x = saturate(111.111115 * r0.x);
    r1.w = r0.x * -2 + 3;
    r0.x = r0.x * r0.x;
    r0.x = r1.w * r0.x;
    r5.xyzw = r5.xyzw * r0.xxxx;
    r2.xy = r4.xy * r5.xx + r2.xy;
    r0.x = dot(r2.xyw, r2.xyw);
    r0.x = rsqrt(r0.x);
    r7.xyz = r2.xyw * r0.xxx;
    r7.xy = r3.xy * r5.yy + r7.xy;
    r0.x = dot(r7.xyz, r7.xyz);
    r0.x = rsqrt(r0.x);
    r7.xyz = r7.xyz * r0.xxx;
    r7.xy = r3.zw * r5.zz + r7.xy;
    r0.x = dot(r7.xyz, r7.xyz);
    r0.x = rsqrt(r0.x);
    r3.xyz = r7.xyz * r0.xxx;
    r3.xy = r4.zw * r5.ww + r3.xy;
    r0.x = dot(r3.xyz, r3.xyz);
    r0.x = rsqrt(r0.x);
    r2.xyw = r3.xyz * r0.xxx;
  } else {
    r6.w = r0.y;
  }
  r0.x = glossMap.Sample(specColorSampler_s, w1.xy).x;
  r1.w = glossRange.y + -glossRange.x;
  r0.x = r0.x * r1.w + glossRange.x;
  r0.x = saturate(0.0588235296 * r0.x);
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v4.xyz * r1.www;
  r3.xyz = r3.xyz * r0.zzz;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = v5.xyz * r1.www;
  r4.xyz = r4.xyz * r0.zzz;
  r0.x = -17 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.w + r0.x;
  r0.x = log2(r0.x);
  r0.x = -0.0588235296 * r0.x;
  r0.x = max(0, r0.x);
  r4.xyz = r4.xyz * r2.yyy;
  r2.xyz = r3.xyz * r2.xxx + r4.xyz;
  r1.xyz = r1.xyz * r2.www + r2.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r2.xy = (uint2)v0.xy;
  r2.zw = float2(0,0);
  r0.zw = resolvedNormal.Load(r2.xyz).zw;
  r1.w = cmp(0 < r0.z);
  r0.w = r0.w * 3 + 0.5;
  r0.w = (uint)r0.w;
  r2.xyzw = (int4)r0.wwww & int4(2,1,2,1);
  r2.xyzw = r2.zwxy ? float4(-0.577350259,-0.577350259,1.40129846e-45,1.40129846e-45) : float4(0.577350259,0.577350259,0,0);
  r0.w = (int)r2.w ^ (int)r2.z;
  r2.z = r0.w ? -0.577350259 : 0.577350259;
  r3.xy = float2(-1.22474492,1.22474492) * r2.xz;
  r4.xyz = float3(0.707106769,-1.41421354,0.707106769) * r2.xyz;
  r4.x = dot(r1.xyz, r4.xyz);
  r4.y = dot(r1.xz, r3.xy);
  r0.w = dot(r1.xyz, r2.xyz);
  r0.w = 1 + abs(r0.w);
  r0.w = rsqrt(r0.w);
  r1.xy = r4.xy * r0.ww;
  r1.xy = r1.xy * float2(0.588235319,0.588235319) + float2(0.5,0.5);
  r0.z = cmp(r0.z >= 0.5);
  r0.z = r0.z ? 0.5 : 0.00146627566;
  r1.z = r0.x * 0.49755621 + r0.z;
  r0.xzw = r1.www ? r1.xyz : 0;
  r6.xyz = r0.xzw * r6.www;
  o0.w = r0.y;
  o1.xyzw = r6.xyzw;
  return;
}