// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:58 2021

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
  float hdrScale : packoffset(c15);
  uint zFeatherComputeSprites : packoffset(c15.y);
  float desaturationAmount : packoffset(c15.z);
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
Texture2D<float4> emissiveMap : register(t25);
Texture2D<float4> alphaMap : register(t26);


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
  nointerpolation uint4 v9 : TEXCOORD6,
  float4 v10 : TEXCOORD7,
  float3 v11 : TEXCOORD8,
  float3 v12 : NORMAL0,
  float3 v13 : TANGENT0,
  float3 v14 : TEXCOORD9,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = ddx_coarse(v4.xy);
  r0.zw = ddy_coarse(v4.xy);
  r1.z = (uint)v9.x;
  r1.xy = w8.xy;
  r1.xyz = lmapTex.Sample(colorSampler_s, r1.xyz).xyz;
  r1.xyz = v1.xyz * r1.xyz;
  r1.w = dot(-v5.xyz, -v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -v5.xyz * r1.www;
  r3.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + v4.xyzw;
  r4.xyzw = offsetUVsColor.xyxy * scaleUVsColor.xyxy;
  r4.xyzw = r3.xyzw * scaleUVsColor.xyxy + r4.xyzw;
  r5.xy = gameTime.ww * scrollUVsColor.xy;
  r1.w = rotateUVsColor.y * gameTime.w + 1;
  r1.w = rotateUVsColor.x * r1.w;
  r1.w = 0.0174532924 * r1.w;
  sincos(r1.w, r6.x, r7.x);
  r7.y = r7.x;
  r7.z = r6.x;
  r8.x = dot(r7.yz, r4.xy);
  r7.x = -r6.x;
  r8.y = dot(r7.xy, r4.xy);
  r4.xy = r5.xy * scaleUVsColor.xy + r8.xy;
  r6.x = dot(r7.yz, r4.zw);
  r6.y = dot(r7.xy, r4.zw);
  r4.zw = r5.xy * scaleUVsColor.xy + r6.xy;
  r4.xyzw = float4(0.5,0.5,0.5,0.5) + r4.xyzw;
  r1.w = dot(r2.xyz, v12.xyz);
  r5.xyz = normalMap.SampleGrad(colorSampler_s, r4.xy, r0.xyx, r0.zwz).xyz;
  r6.xy = cmp(v6.xy != float2(0,1));
  if (r6.x != 0) {
    r7.xyz = normalMap.SampleGrad(colorSampler_s, r4.zw, r0.xyx, r0.zwz).xyz;
    r7.xyz = r7.xyz + -r5.xyz;
    r5.xyz = v6.xxx * r7.xyz + r5.xyz;
  }
  r5.xy = r5.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r5.z = r5.z * r5.z;
  r5.z = 0.333333343 * r5.z;
  r5.z = min(1, r5.z);
  r5.w = saturate(0.0588235296 * glossRange.y);
  r6.z = dot(v12.xyz, v12.xyz);
  r6.z = rsqrt(r6.z);
  r7.xyz = v12.xyz * r6.zzz;
  r6.z = dot(v13.xyz, v13.xyz);
  r6.z = rsqrt(r6.z);
  r8.xyz = v13.xyz * r6.zzz;
  r6.z = dot(v14.xyz, v14.xyz);
  r6.z = rsqrt(r6.z);
  r9.xyz = v14.xyz * r6.zzz;
  r5.w = -17 * r5.w;
  r5.w = exp2(r5.w);
  r5.z = r5.z + r5.w;
  r5.z = log2(r5.z);
  r5.z = -0.0588235296 * r5.z;
  r10.y = max(0, r5.z);
  r5.yzw = r9.xyz * r5.yyy;
  r5.xyz = r8.xyz * r5.xxx + r5.yzw;
  r5.xyz = r7.xyz * r2.www + r5.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r10.x = saturate(dot(r5.xyz, r2.xyz));
  r2.w = dot(-r2.xyz, r5.xyz);
  r2.w = r2.w + r2.w;
  r2.xyz = r5.xyz * -r2.www + -r2.xyz;
  r5.x = 1 + -r10.y;
  r5.x = 6 * r5.x;
  r5.x = (uint)r5.x;
  r5.x = (uint)r5.x;
  r2.w = 0;
  r2.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, r5.x).xyz;
  r2.xyz = sunConstants.globalProbeExposure * r2.xyz;
  r5.xy = r10.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.xy = gEnvBRDFGlass.SampleLevel(samplerLinear_s, r5.xy, 0).xy;
  r7.xyz = float3(0.0140000004,0.0140000004,0.0140000004) * v2.xyz;
  r5.xzw = r5.xxx * r2.xyz;
  r8.xyz = -v2.xyz * float3(0.0140000004,0.0140000004,0.0140000004) + float3(1,1,1);
  r2.xyz = r5.yyy * r2.xyz;
  r2.xyz = r2.xyz * r7.xyz;
  r2.xyz = r5.xzw * r8.xyz + r2.xyz;
  r2.x = r2.x + r2.y;
  r2.x = r2.x + r2.z;
  r2.x = 0.333333343 * r2.x;
  r2.y = dot(r1.xyz, float3(0.298999995,0.587000012,0.114));
  r2.y = max(9.99999975e-05, r2.y);
  r2.z = min(relHDRExposure.x, r2.y);
  r2.z = r2.z / sunConstants.globalProbeExposure;
  r2.x = r2.x * r2.z;
  r5.xyzw = colorMap.SampleGrad(colorSampler_s, r4.xy, r0.xyxx, r0.zwzz).xyzw;
  if (r6.x != 0) {
    r4.xyzw = colorMap.SampleGrad(colorSampler_s, r4.zw, r0.xyxx, r0.zwzz).xyzw;
    r4.xyzw = r4.xyzw + -r5.xyzw;
    r5.xyzw = v6.xxxx * r4.xyzw + r5.xyzw;
  }
  r2.z = dot(r5.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r4.xyz = r2.zzz + -r5.xyz;
  r4.xyz = desaturationAmount * r4.xyz + r5.xyz;
  r7.xyzw = cmp(levelsControls.xyzw == float4(0,1,0,1));
  r2.z = r7.y ? r7.x : 0;
  r2.z = r7.z ? r2.z : 0;
  r2.z = r7.w ? r2.z : 0;
  r2.w = max(9.99999975e-05, r5.w);
  r7.xyz = saturate(r4.xyz / r2.www);
  r7.xyz = saturate(-levelsControls.xxx + r7.xyz);
  r6.zw = levelsControls.yw + -levelsControls.xz;
  r4.w = max(9.99999975e-05, r6.z);
  r7.xyz = r7.xyz / r4.www;
  r7.xyz = min(float3(1,1,1), r7.xyz);
  r7.xyz = r7.xyz * r6.www + levelsControls.zzz;
  r8.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r7.xyz);
  r9.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r7.xyz;
  r7.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r7.xyz;
  r7.xyz = float3(0.947867334,0.947867334,0.947867334) * abs(r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = float3(2.4000001,2.4000001,2.4000001) * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r8.xyz ? r9.xyz : r7.xyz;
  r7.xyz = r7.xyz * r5.www;
  r5.xyz = r2.zzz ? r4.xyz : r7.xyz;
  r4.xy = (int2)v0.xy;
  r4.zw = float2(0,0);
  r2.z = floatZSampler.Load(r4.xyz).x;
  r4.x = cmp(v6.z == 0.000000);
  r4.y = 1 / v6.z;
  r4.x = r4.x ? 60000 : r4.y;
  r4.y = cmp(r2.z >= 0.984375);
  r4.z = 1.01587307 * r2.z;
  r2.z = r2.z * 64 + -63;
  r2.z = r4.y ? r2.z : r4.z;
  r2.z = max(9.99999994e-09, r2.z);
  r2.z = rcp(r2.z);
  r4.y = cmp(v0.z >= 0.984375);
  r4.z = 1.01587307 * v0.z;
  r4.w = v0.z * 64 + -63;
  r4.y = r4.y ? r4.w : r4.z;
  r4.y = max(9.99999994e-09, r4.y);
  r4.y = rcp(r4.y);
  r7.xyz = r5.xyz / r2.www;
  r2.w = v1.w + r5.w;
  r8.y = saturate(r2.w * v6.y + -v6.y);
  r8.xzw = r8.yyy * r7.xyz;
  r5.xyzw = r6.yyyy ? r8.xzwy : r5.xyzw;
  r8.x = 1;
  r4.zw = r6.yy ? r8.xy : v1.ww;
  r2.w = cmp(r4.y < r2.z);
  r2.z = -r4.y + r2.z;
  r2.z = saturate(r2.z * r4.x);
  r2.z = r2.w ? r2.z : 1;
  r1.w = r1.w * r1.w;
  r1.w = saturate(r1.w * v8.x + v8.y);
  r2.w = r4.w * r2.z;
  r2.w = r2.w * r1.w;
  r5.xyzw = r5.xyzw * r2.zzzz;
  r4.xyzw = r5.xyzw * r4.zzzz;
  r4.xyzw = r4.xyzw * r1.wwww;
  r5.xy = offsetUVsEmissive.xy * scaleUVsEmissive.xy;
  r3.xy = r3.xy * scaleUVsEmissive.xy + r5.xy;
  r5.zw = gameTime.ww * scrollUVsEmissive.xy;
  r1.w = rotateUVsEmissive.y * gameTime.w + 1;
  r1.w = rotateUVsEmissive.x * r1.w;
  r1.w = 0.0174532924 * r1.w;
  sincos(r1.w, r7.x, r8.x);
  r8.y = r8.x;
  r8.z = r7.x;
  r9.x = dot(r8.yz, r3.xy);
  r8.x = -r7.x;
  r9.y = dot(r8.xy, r3.xy);
  r3.xy = r5.zw * scaleUVsEmissive.xy + r9.xy;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r1.w = emissiveMap.SampleGrad(colorSampler_s, r3.xy, r0.x, r0.z).x;
  if (r6.x != 0) {
    r3.xy = r3.zw * scaleUVsEmissive.xy + r5.xy;
    r5.x = dot(r8.yz, r3.xy);
    r5.y = dot(r8.xy, r3.xy);
    r3.xy = r5.zw * scaleUVsEmissive.xy + r5.xy;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r2.z = emissiveMap.SampleGrad(colorSampler_s, r3.xy, r0.x, r0.z).x;
    r2.z = r2.z + -r1.w;
    r1.w = v6.x * r2.z + r1.w;
  }
  r1.w = r1.w * r2.w;
  r2.y = max(relHDRExposure.x, r2.y);
  r2.y = hdrScale * r2.y;
  r2.y = v5.w * r2.y;
  r2.y = useOldHDRScale ? hdrScale : r2.y;
  r1.w = r2.y * r1.w;
  r1.xyz = v2.xyz * r1.www + r1.xyz;
  r2.yz = useOldHDRScale * v4.xy;
  r1.w = alphaMap.SampleGrad(colorSampler_s, r2.yz, r0.x, r0.z).x;
  if (r6.x != 0) {
    r2.yz = useOldHDRScale * v4.zw;
    r0.x = alphaMap.SampleGrad(colorSampler_s, r2.yz, r0.x, r0.z).x;
    r0.x = r0.x + -r1.w;
    r1.w = v6.x * r0.x + r1.w;
  }
  r0.xyzw = r4.xyzw * r1.wwww;
  r1.w = r2.x * r0.w;
  r1.xyz = r0.xyz * r1.xyz + r1.www;
  r2.xyz = v3.xyz * r0.www;
  r3.xyz = v11.xyz * r0.www;
  r1.xyz = -v3.xyz * r0.www + r1.xyz;
  r1.xyz = v3.www * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz * v10.xyz + r3.xyz;
  r1.xyz = relHDRExposure.yyy * r1.xyz;
  r2.xyz = cmp(r1.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r1.xyz = r2.xyz ? r1.xyz : 0;
  r1.xyz = min(float3(65024,65024,64512), r1.xyz);
  r0.xyz = max(float3(0,0,0), r1.xyz);
  r2.x = (int)r0.w & 0x7f800000;
  r2.x = cmp((int)r2.x == 0x7f800000);
  r3.xyzw = cmp(r0.xyzw == float4(0,0,0,0));
  r2.yz = r3.zw ? r3.xy : 0;
  r2.y = r2.z ? r2.y : 0;
  r2.x = (int)r2.y | (int)r2.x;
  if (r2.x == 0) {
    r2.xy = (uint2)v0.xy;
    // Needs manual fix for instruction:
    imm_atomic_iadd r2.z, u6, r2.xyxx, l(1)
    InterlockedAdd(dest, imm_value, orig_value);
    r2.w = cmp((uint)r2.z < oitMaxEntries);
    if (r2.w != 0) {
      r2.w = max(r0.y, r0.z);
      r2.w = max(r2.w, r0.x);
      r2.w = (int)r2.w & 0x7f800000;
      r2.w = (int)r2.w + 0x00800000;
      r0.xyz = r2.www + r0.xyz;
      if (8 == 0) r0.x = 0; else if (8+15 < 32) {       r0.x = (uint)r0.x << (32-(8 + 15)); r0.x = (uint)r0.x >> (32-8);      } else r0.x = (uint)r0.x >> 15;
      r0.yz = (uint2)r0.yz >> int2(15,15);
      bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r0.y = (((uint)r0.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
      bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r0.z = (((uint)r0.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
      r0.x = (int)r0.y + (int)r0.x;
      r0.x = (int)r0.z + (int)r0.x;
      r0.y = (uint)r2.w << 1;
      r3.xzw = (int3)r0.yyy + (int3)r0.xxx;
      r0.x = saturate(r0.w);
      r0.x = 2046 * r0.x;
      r0.x = (uint)r0.x;
      r0.y = (uint)v0.z << 2;
      r0.x = (int)r0.x & 2046;
      bitmask.x = ((~(-1 << 11)) << 0) & 0xffffffff;  r0.x = (((uint)r0.x << 0) & bitmask.x) | ((uint)r0.y & ~bitmask.x);
      bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r3.y = (((uint)zFeatherComputeSprites << 0) & bitmask.y) | ((uint)r0.x & ~bitmask.y);
    // No code for instruction (needs manual fix):
        store_uav_typed u7.xyzw, r2.xyzz, r3.xyzw
      r0.x = -1;
    } else {
      r0.x = 0;
    }
  } else {
    r0.x = -1;
  }
  r1.w = r0.w;
  o0.xyzw = r0.xxxx ? float4(0,0,0,0) : r1.xyzw;
  return;
}