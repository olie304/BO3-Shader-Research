// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:50 2021

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

SamplerState colorSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
Texture2D<float4> floatZSampler : register(t0);
Texture2D<float2> gEnvBRDFGlass : register(t5);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> normalMap : register(t22);
Texture2D<float4> emissiveMap : register(t24);
Texture2D<float4> alphaMap : register(t25);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float3 v2 : COLOR1,
  float4 v3 : COLOR2,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD1,
  nointerpolation float4 v6 : TEXCOORD2,
  float4 v7 : TEXCOORD3,
  float2 v8 : TEXCOORD4,
  float2 w8 : TEXCOORD5,
  uint4 v9 : TEXCOORD6,
  float4 v10 : TEXCOORD7,
  float3 v11 : TEXCOORD8,
  float3 v12 : NORMAL0,
  float3 v13 : TANGENT0,
  float3 v14 : TEXCOORD9,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v12.xyz, v12.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v12.xyz * r0.xxx;
  r0.w = dot(v13.xyz, v13.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v13.xyz * r0.www;
  r0.w = dot(v14.xyz, v14.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v14.xyz * r0.www;
  r3.xy = gameTime.ww * scrollUVsColor.xy;
  r0.w = rotateUVsColor.y * gameTime.w + 1;
  r0.w = rotateUVsColor.x * r0.w;
  r0.w = 0.0174532924 * r0.w;
  sincos(r0.w, r4.x, r5.x);
  r6.z = r4.x;
  r6.y = r5.x;
  r6.x = -r4.x;
  r3.zw = offsetUVsColor.xy * scaleUVsColor.xy;
  r4.xy = v4.xy / v4.zz;
  r4.zw = float2(-0.5,-0.5) + r4.xy;
  r3.zw = r4.zw * scaleUVsColor.xy + r3.zw;
  r5.x = dot(r6.yz, r3.zw);
  r5.y = dot(r6.xy, r3.zw);
  r3.xy = r3.xy * scaleUVsColor.xy + r5.xy;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r3.zw = ddx_coarse(r4.xy);
  r5.xy = ddy_coarse(r4.xy);
  r4.xy = useOldHDRScale * r4.xy;
  r0.w = alphaMap.SampleGrad(colorSampler_s, r4.xy, r3.z, r5.x).x;
  r6.xyz = normalMap.SampleGrad(colorSampler_s, r3.xy, r3.zwz, r5.xyx).xyz;
  r7.xyzw = colorMap.SampleGrad(colorSampler_s, r3.xy, r3.zwzz, r5.xyxx).xyzw;
  r3.xy = r6.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r1.w = r6.z * r6.z;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.xyz = r3.yyy * r2.xyz;
  r1.xyz = r1.xyz * r3.xxx + r2.xyz;
  r2.x = dot(r3.xy, r3.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r0.xyz = r0.xyz * r2.xxx + r1.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r1.x = dot(-v5.xyz, -v5.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = -v5.xyz * r1.xxx;
  r2.x = dot(-r1.xyz, r0.xyz);
  r2.x = r2.x + r2.x;
  r2.xyz = r0.xyz * -r2.xxx + -r1.xyz;
  r0.x = saturate(dot(r0.xyz, r1.xyz));
  r0.z = dot(r1.xyz, v12.xyz);
  r0.z = r0.z * r0.z;
  r0.z = saturate(r0.z * v8.x + v8.y);
  r1.x = saturate(0.0588235296 * glossRange.y);
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.w + r1.x;
  r1.x = log2(r1.x);
  r1.x = -0.0588235296 * r1.x;
  r0.y = max(0, r1.x);
  r1.x = 1 + -r0.y;
  r0.xy = r0.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r0.xy = gEnvBRDFGlass.SampleLevel(samplerLinear_s, r0.xy, 0).xy;
  r1.x = 6 * r1.x;
  r1.x = (uint)r1.x;
  r1.x = (uint)r1.x;
  r2.w = 0;
  r1.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, r1.x).xyz;
  r1.xyz = sunConstants.globalProbeExposure * r1.xyz;
  r2.xyz = r1.xyz * r0.yyy;
  r1.xyz = r1.xyz * r0.xxx;
  r6.xyz = float3(0.0140000004,0.0140000004,0.0140000004) * v2.xyz;
  r2.xyz = r6.xyz * r2.xyz;
  r6.xyz = -v2.xyz * float3(0.0140000004,0.0140000004,0.0140000004) + float3(1,1,1);
  r1.xyz = r1.xyz * r6.xyz + r2.xyz;
  r0.x = r1.x + r1.y;
  r0.x = r0.x + r1.z;
  r0.x = 0.333333343 * r0.x;
  r0.y = dot(v1.xyz, float3(0.298999995,0.587000012,0.114));
  r0.y = max(9.99999975e-05, r0.y);
  r1.x = min(relHDRExposure.x, r0.y);
  r0.y = max(relHDRExposure.x, r0.y);
  r0.y = hdrScale * r0.y;
  r0.y = v5.w * r0.y;
  r0.y = useOldHDRScale ? hdrScale : r0.y;
  r1.x = r1.x / sunConstants.globalProbeExposure;
  r0.x = r1.x * r0.x;
  r1.x = dot(r7.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r1.xyz = r1.xxx + -r7.xyz;
  r1.xyz = desaturationAmount * r1.xyz + r7.xyz;
  r1.w = max(9.99999975e-05, r7.w);
  r2.xyz = saturate(r1.xyz / r1.www);
  r2.xyz = saturate(-levelsControls.xxx + r2.xyz);
  r3.xy = levelsControls.yw + -levelsControls.xz;
  r2.w = max(9.99999975e-05, r3.x);
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r2.xyz = r2.xyz * r3.yyy + levelsControls.zzz;
  r6.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r2.xyz;
  r6.xyz = float3(0.947867334,0.947867334,0.947867334) * abs(r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = float3(2.4000001,2.4000001,2.4000001) * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r8.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r2.xyz);
  r2.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r2.xyz;
  r2.xyz = r8.xyz ? r2.xyz : r6.xyz;
  r2.xyz = r2.xyz * r7.www;
  r6.xyzw = cmp(levelsControls.xyzw == float4(0,1,0,1));
  r2.w = r6.y ? r6.x : 0;
  r2.w = r6.z ? r2.w : 0;
  r2.w = r6.w ? r2.w : 0;
  r7.xyz = r2.www ? r1.xyz : r2.xyz;
  r1.xyz = r7.xyz / r1.www;
  r1.w = v1.w + r7.w;
  r2.y = saturate(r1.w * v6.y + -v6.y);
  r2.xzw = r2.yyy * r1.xyz;
  r1.x = cmp(v6.y != 1.000000);
  r6.xyzw = r1.xxxx ? r2.xzwy : r7.xyzw;
  r7.xy = (int2)v0.xy;
  r7.zw = float2(0,0);
  r1.y = floatZSampler.Load(r7.xyz).x;
  r1.z = cmp(r1.y >= 0.984375);
  r1.w = 1.01587307 * r1.y;
  r1.y = r1.y * 64 + -63;
  r1.y = r1.z ? r1.y : r1.w;
  r1.y = max(9.99999994e-09, r1.y);
  r1.z = cmp(v0.z >= 0.984375);
  r1.w = 1.01587307 * v0.z;
  r2.z = v0.z * 64 + -63;
  r1.z = r1.z ? r2.z : r1.w;
  r1.z = max(9.99999994e-09, r1.z);
  r1.yz = rcp(r1.yz);
  r1.w = r1.y + -r1.z;
  r1.y = cmp(r1.z < r1.y);
  r1.z = cmp(v6.z == 0.000000);
  r2.z = 1 / v6.z;
  r1.z = r1.z ? 60000 : r2.z;
  r1.z = saturate(r1.w * r1.z);
  r1.y = r1.y ? r1.z : 1;
  r6.xyzw = r6.xyzw * r1.yyyy;
  r2.x = 1;
  r1.xz = r1.xx ? r2.xy : v1.ww;
  r2.xyzw = r6.xyzw * r1.xxxx;
  r1.x = r1.z * r1.y;
  r1.x = r1.x * r0.z;
  r2.xyzw = r2.xyzw * r0.zzzz;
  r2.xyzw = r2.xyzw * r0.wwww;
  r0.x = r2.w * r0.x;
  r0.zw = offsetUVsEmissive.xy * scaleUVsEmissive.xy;
  r0.zw = r4.zw * scaleUVsEmissive.xy + r0.zw;
  r1.y = rotateUVsEmissive.y * gameTime.w + 1;
  r1.y = rotateUVsEmissive.x * r1.y;
  r1.y = 0.0174532924 * r1.y;
  sincos(r1.y, r3.x, r4.x);
  r6.z = r3.x;
  r6.y = r4.x;
  r6.x = -r3.x;
  r3.y = dot(r6.xy, r0.zw);
  r3.x = dot(r6.yz, r0.zw);
  r0.zw = gameTime.ww * scrollUVsEmissive.xy;
  r0.zw = r0.zw * scaleUVsEmissive.xy + r3.xy;
  r0.zw = float2(0.5,0.5) + r0.zw;
  r0.z = emissiveMap.SampleGrad(colorSampler_s, r0.zw, r3.z, r5.x).x;
  r0.z = r0.z * r1.x;
  r0.y = r0.y * r0.z;
  r0.yzw = v2.xyz * r0.yyy + v1.xyz;
  r0.xyz = r2.xyz * r0.yzw + r0.xxx;
  r0.xyz = -v3.xyz * r2.www + r0.xyz;
  r1.xyz = v3.xyz * r2.www;
  r0.xyz = v3.www * r0.xyz + r1.xyz;
  r1.xyz = v11.xyz * r2.www;
  r0.xyz = r0.xyz * v10.xyz + r1.xyz;
  r0.xyz = relHDRExposure.yyy * r0.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  r2.xyz = min(float3(65024,65024,64512), r0.xyz);
  r0.xy = cmp(float2(0.995000005,0.995000005) < w8.xy);
  r0.x = (int)r0.y | (int)r0.x;
  r0.yz = cmp(w8.xy < float2(0.00499999989,0.00499999989));
  r0.y = (int)r0.z | (int)r0.y;
  r0.x = (int)r0.y | (int)r0.x;
  r1.xz = float2(0,0.5) * relHDRExposure.xx;
  r1.w = 1;
  o0.xyzw = r0.xxxx ? r1.xxzw : r2.xyzw;
  return;
}