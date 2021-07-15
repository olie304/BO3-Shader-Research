// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:57 2021

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
  float desaturationAmount : packoffset(c11.w);
  float4 levelsControls : packoffset(c12);
  bool useOldHDRScale : packoffset(c13);
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
SamplerState samplerLinear_s : register(s2);
Texture2D<float4> floatZSampler : register(t0);
Texture2D<float2> gEnvBRDFGlass : register(t5);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> normalMap : register(t22);
Texture2DArray<float4> lmapTex : register(t24);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : COLOR2,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  nointerpolation float4 v5 : TEXCOORD2,
  float4 v6 : TEXCOORD3,
  float2 v7 : TEXCOORD4,
  float2 w7 : TEXCOORD5,
  nointerpolation uint4 v8 : TEXCOORD6,
  float4 v9 : TEXCOORD7,
  float3 v10 : TEXCOORD8,
  float3 v11 : NORMAL0,
  float3 v12 : TANGENT0,
  float3 v13 : TEXCOORD9,
  float3 v14 : COLOR1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = ddx_coarse(v3.xy);
  r0.zw = ddy_coarse(v3.xy);
  r1.z = (uint)v8.x;
  r1.xy = w7.xy;
  r1.xyz = lmapTex.Sample(colorSampler_s, r1.xyz).xyz;
  r1.xyz = v1.xyz * r1.xyz;
  r1.w = dot(-v4.xyz, -v4.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -v4.xyz * r1.www;
  r1.w = dot(r2.xyz, v11.xyz);
  r3.xyz = normalMap.SampleGrad(colorSampler_s, v3.xy, r0.xyx, r0.zwz).xyz;
  r4.xy = cmp(v5.xy != float2(0,1));
  if (r4.x != 0) {
    r5.xyz = normalMap.SampleGrad(colorSampler_s, v3.zw, r0.xyx, r0.zwz).xyz;
    r5.xyz = r5.xyz + -r3.xyz;
    r3.xyz = v5.xxx * r5.xyz + r3.xyz;
  }
  r3.xy = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r3.z = r3.z * r3.z;
  r3.z = 0.333333343 * r3.z;
  r3.z = min(1, r3.z);
  r3.w = saturate(0.0588235296 * glossRange.y);
  r4.z = dot(v11.xyz, v11.xyz);
  r4.z = rsqrt(r4.z);
  r5.xyz = v11.xyz * r4.zzz;
  r4.z = dot(v12.xyz, v12.xyz);
  r4.z = rsqrt(r4.z);
  r6.xyz = v12.xyz * r4.zzz;
  r4.z = dot(v13.xyz, v13.xyz);
  r4.z = rsqrt(r4.z);
  r7.xyz = v13.xyz * r4.zzz;
  r3.w = -17 * r3.w;
  r3.w = exp2(r3.w);
  r3.z = r3.z + r3.w;
  r3.z = log2(r3.z);
  r3.z = -0.0588235296 * r3.z;
  r8.y = max(0, r3.z);
  r3.yzw = r7.xyz * r3.yyy;
  r3.xyz = r6.xyz * r3.xxx + r3.yzw;
  r3.xyz = r5.xyz * r2.www + r3.xyz;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r8.x = saturate(dot(r3.xyz, r2.xyz));
  r2.w = dot(-r2.xyz, r3.xyz);
  r2.w = r2.w + r2.w;
  r2.xyz = r3.xyz * -r2.www + -r2.xyz;
  r3.x = 1 + -r8.y;
  r3.x = 6 * r3.x;
  r3.x = (uint)r3.x;
  r3.x = (uint)r3.x;
  r2.w = 0;
  r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, r3.x).xyz;
  r2.xyz = sunConstants.globalProbeExposure * r2.xyz;
  r3.xy = r8.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r3.xy = gEnvBRDFGlass.SampleLevel(samplerLinear_s, r3.xy, 0).xy;
  r5.xyz = float3(0.0140000004,0.0140000004,0.0140000004) * v14.xyz;
  r3.xzw = r3.xxx * r2.xyz;
  r6.xyz = -v14.xyz * float3(0.0140000004,0.0140000004,0.0140000004) + float3(1,1,1);
  r2.xyz = r3.yyy * r2.xyz;
  r2.xyz = r2.xyz * r5.xyz;
  r2.xyz = r3.xzw * r6.xyz + r2.xyz;
  r2.x = r2.x + r2.y;
  r2.x = r2.x + r2.z;
  r2.x = 0.333333343 * r2.x;
  r2.y = dot(r1.xyz, float3(0.298999995,0.587000012,0.114));
  r2.y = max(9.99999975e-05, r2.y);
  r2.y = min(relHDRExposure.x, r2.y);
  r2.y = r2.y / sunConstants.globalProbeExposure;
  r2.x = r2.x * r2.y;
  r3.xyzw = colorMap.SampleGrad(colorSampler_s, v3.xy, r0.xyxx, r0.zwzz).xyzw;
  if (r4.x != 0) {
    r0.xyzw = colorMap.SampleGrad(colorSampler_s, v3.zw, r0.xyxx, r0.zwzz).xyzw;
    r0.xyzw = r0.xyzw + -r3.xyzw;
    r3.xyzw = v5.xxxx * r0.xyzw + r3.xyzw;
  }
  r0.x = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r0.xyz = r0.xxx + -r3.xyz;
  r0.xyz = desaturationAmount * r0.xyz + r3.xyz;
  r5.xyzw = cmp(levelsControls.xyzw == float4(0,1,0,1));
  r0.w = r5.y ? r5.x : 0;
  r0.w = r5.z ? r0.w : 0;
  r0.w = r5.w ? r0.w : 0;
  r2.y = max(9.99999975e-05, r3.w);
  r4.xzw = saturate(r0.xyz / r2.yyy);
  r4.xzw = saturate(-levelsControls.xxx + r4.xzw);
  r2.zw = levelsControls.yw + -levelsControls.xz;
  r2.z = max(9.99999975e-05, r2.z);
  r4.xzw = r4.xzw / r2.zzz;
  r4.xzw = min(float3(1,1,1), r4.xzw);
  r4.xzw = r4.xzw * r2.www + levelsControls.zzz;
  r5.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r4.xzw);
  r6.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r4.xzw;
  r4.xzw = float3(0.0549999997,0.0549999997,0.0549999997) + r4.xzw;
  r4.xzw = float3(0.947867334,0.947867334,0.947867334) * abs(r4.xzw);
  r4.xzw = log2(r4.xzw);
  r4.xzw = float3(2.4000001,2.4000001,2.4000001) * r4.xzw;
  r4.xzw = exp2(r4.xzw);
  r4.xzw = r5.xyz ? r6.xyz : r4.xzw;
  r4.xzw = r4.xzw * r3.www;
  r3.xyz = r0.www ? r0.xyz : r4.xzw;
  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r0.x = floatZSampler.Load(r0.xyz).x;
  r0.y = cmp(v5.z == 0.000000);
  r0.z = 1 / v5.z;
  r0.y = r0.y ? 60000 : r0.z;
  r0.z = cmp(r0.x >= 0.984375);
  r0.w = 1.01587307 * r0.x;
  r0.x = r0.x * 64 + -63;
  r0.x = r0.z ? r0.x : r0.w;
  r0.x = max(9.99999994e-09, r0.x);
  r0.z = cmp(v0.z >= 0.984375);
  r0.w = 1.01587307 * v0.z;
  r2.z = v0.z * 64 + -63;
  r0.z = r0.z ? r2.z : r0.w;
  r0.z = max(9.99999994e-09, r0.z);
  r0.xz = rcp(r0.xz);
  r2.yzw = r3.xyz / r2.yyy;
  r0.w = v1.w + r3.w;
  r5.w = saturate(r0.w * v5.y + -v5.y);
  r5.xyz = r5.www * r2.yzw;
  r3.xyzw = r4.yyyy ? r5.xyzw : r3.xyzw;
  r0.w = r4.y ? 1 : v1.w;
  r2.y = cmp(r0.z < r0.x);
  r0.x = r0.x + -r0.z;
  r0.x = saturate(r0.x * r0.y);
  r0.x = r2.y ? r0.x : 1;
  r0.y = r1.w * r1.w;
  r0.y = saturate(r0.y * v7.x + v7.y);
  r3.xyzw = r3.xyzw * r0.xxxx;
  r3.xyzw = r3.xyzw * r0.wwww;
  r0.xyzw = r3.xyzw * r0.yyyy;
  r1.w = r2.x * r0.w;
  r1.xyz = r0.xyz * r1.xyz + r1.www;
  r2.xyz = v2.xyz * r0.www;
  r3.xyz = v10.xyz * r0.www;
  r1.xyz = -v2.xyz * r0.www + r1.xyz;
  r1.xyz = v2.www * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz * v9.xyz + r3.xyz;
  r1.xyz = relHDRExposure.yyy * r1.xyz;
  r2.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r2.xyz ? r1.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r1.xyz);
  r1.xy = cmp(float2(0.995000005,0.995000005) < w7.xy);
  r1.x = (int)r1.y | (int)r1.x;
  r1.yz = cmp(w7.xy < float2(0.00499999989,0.00499999989));
  r1.y = (int)r1.z | (int)r1.y;
  r1.x = (int)r1.y | (int)r1.x;
  r2.xz = float2(0,0.5) * relHDRExposure.xx;
  r2.w = 1;
  o0.xyzw = r1.xxxx ? r2.xxzw : r0.xyzw;
  return;
}