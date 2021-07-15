// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:11 2021

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
  float scanlineScale : packoffset(c11.z);
  uint extracamSelect : packoffset(c11.w);
  float2 w1ScaleUVs : packoffset(c12);
  float2 w1OffsetUVs : packoffset(c12.z);
  float2 w1RotateUVs : packoffset(c13);
  float2 w1ScrollUVs : packoffset(c13.z);
  float2 w1ZoomUVs : packoffset(c14);
  float w1ZoomRate : packoffset(c14.z);
  bool w1ClampU : packoffset(c14.w);
  bool w1ClampV : packoffset(c15);
  float2 w2ScaleUVs : packoffset(c15.y);
  float2 w2OffsetUVs : packoffset(c16);
  float2 w2RotateUVs : packoffset(c16.z);
  float2 w2ScrollUVs : packoffset(c17);
  float2 w2ZoomUVs : packoffset(c17.z);
  float w2ZoomRate : packoffset(c18);
  bool w2ClampU : packoffset(c18.y);
  bool w2ClampV : packoffset(c18.z);
  float2 w3ScaleUVs : packoffset(c19);
  float2 w3OffsetUVs : packoffset(c19.z);
  float2 w3RotateUVs : packoffset(c20);
  float2 w3ScrollUVs : packoffset(c20.z);
  float2 w3ZoomUVs : packoffset(c21);
  float w3ZoomRate : packoffset(c21.z);
  bool w3ClampU : packoffset(c21.w);
  bool w3ClampV : packoffset(c22);
  float2 w4ScaleUVs : packoffset(c22.y);
  float2 w4OffsetUVs : packoffset(c23);
  float2 w4RotateUVs : packoffset(c23.z);
  float2 w4ScrollUVs : packoffset(c24);
  float2 w4ZoomUVs : packoffset(c24.z);
  float w4ZoomRate : packoffset(c25);
  bool w4ClampU : packoffset(c25.y);
  bool w4ClampV : packoffset(c25.z);
  float2 w5ScaleUVs : packoffset(c26);
  float2 w5OffsetUVs : packoffset(c26.z);
  float2 w5RotateUVs : packoffset(c27);
  float2 w5ScrollUVs : packoffset(c27.z);
  float2 w5ZoomUVs : packoffset(c28);
  float w5ZoomRate : packoffset(c28.z);
  bool w5ClampU : packoffset(c28.w);
  bool w5ClampV : packoffset(c29);
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

SamplerState bilinearClampler_s : register(s1);
SamplerState bilinearSampler_s : register(s3);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> extracamTexture1 : register(t22);
Texture2D<float4> extracamTexture2 : register(t24);
Texture2D<float4> extracamTexture3 : register(t25);
Texture2D<float4> extracamTexture4 : register(t26);
Texture2D<float4> widgetMap1 : register(t29);
Texture2D<float4> widgetMap2 : register(t30);
Texture2D<float4> widgetMap3 : register(t37);
Texture2D<float4> widgetMap4 : register(t38);
Texture2D<float4> widgetMap5 : register(t46);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  nointerpolation uint4 v3 : TEXCOORD4,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
r0.x = bilinearClampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(4), t0.xyzw
r1.x = bilinearClampler[]..swiz;
r1.y = bilinearClampler[]..swiz;
r1.z = bilinearClampler[]..swiz;
r1.w = bilinearClampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(20), t0.xxxx
r0.x = bilinearClampler[]..swiz;
  r2.xyzw = colorMap.Sample(bilinearClampler_s, v2.xy).xyzw;
  r3.xyzw = cmp(float4(0,0,0,0) < r1.xyzw);
  if (r3.x != 0) {
    r0.yz = float2(-0.5,-0.5) + v2.xy;
    r4.xy = w1OffsetUVs.xy * w1ScaleUVs.xy;
    r0.yz = r0.yz * w1ScaleUVs.xy + r4.xy;
    r4.xy = gameTime.ww * w1ScrollUVs.xy;
    r0.w = w1RotateUVs.y * gameTime.w + 1;
    r0.w = w1RotateUVs.x * r0.w;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r3.x, r5.x);
    r5.y = r5.x;
    r5.z = r3.x;
    r6.x = dot(r5.yz, r0.yz);
    r5.x = -r3.x;
    r6.y = dot(r5.xy, r0.yz);
    r0.yz = r4.xy * w1ScaleUVs.xy + r6.xy;
    r0.w = gameTime.w * w1ZoomRate;
    r0.w = cos(r0.w);
    r0.w = r0.w * 0.5 + 0.5;
    r0.w = 1 + -r0.w;
    r3.x = w1ZoomUVs.y + -w1ZoomUVs.x;
    r0.w = r0.w * r3.x + w1ZoomUVs.x;
    r0.yz = r0.yz / r0.ww;
    r0.yz = float2(0.5,0.5) + r0.yz;
    r4.xy = saturate(r0.yz);
    r5.x = w1ClampU ? r4.x : r0.y;
    r5.y = w1ClampV ? r4.y : r0.z;
    r0.yzw = widgetMap1.Sample(bilinearSampler_s, r5.xy).xyz;
    r4.xyz = float3(1,1,1) + -r2.xyz;
    r0.yzw = -r0.yzw * r1.xxx + float3(1,1,1);
    r2.xyz = -r4.xyz * r0.yzw + float3(1,1,1);
  }
  if (r3.y != 0) {
    r0.yz = float2(-0.5,-0.5) + v2.xy;
    r3.xy = w2OffsetUVs.xy * w1ClampV;
    r0.yz = r0.yz * w1ClampV + r3.xy;
    r0.w = w2RotateUVs.y * gameTime.w + 1;
    r0.w = w2RotateUVs.x * r0.w;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r1.x, r3.x);
    r4.y = r3.x;
    r4.z = r1.x;
    r3.x = dot(r4.yz, r0.yz);
    r4.x = -r1.x;
    r3.y = dot(r4.xy, r0.yz);
    r0.yz = gameTime.ww * w2ScrollUVs.xy;
    r0.yz = r0.yz * w1ClampV + r3.xy;
    r0.w = gameTime.w * w2ZoomRate;
    r0.w = cos(r0.w);
    r0.w = r0.w * 0.5 + 0.5;
    r0.w = 1 + -r0.w;
    r1.x = w2ZoomUVs.y + -w2ZoomUVs.x;
    r0.w = r0.w * r1.x + w2ZoomUVs.x;
    r0.yz = r0.yz / r0.ww;
    r0.yz = float2(0.5,0.5) + r0.yz;
    r3.xy = saturate(r0.yz);
    r0.yz = w2ClampU ? r3.xy : r0.yz;
    r0.yzw = widgetMap2.Sample(bilinearSampler_s, r0.yz).xyz;
    r4.xyz = float3(1,1,1) + -r2.xyz;
    r0.yzw = -r0.yzw * r1.yyy + float3(1,1,1);
    r2.xyz = -r4.xyz * r0.yzw + float3(1,1,1);
  }
  if (r3.z != 0) {
    r0.yz = float2(-0.5,-0.5) + v2.xy;
    r1.xy = w3OffsetUVs.xy * w3ScaleUVs.xy;
    r0.yz = r0.yz * w3ScaleUVs.xy + r1.xy;
    r1.xy = gameTime.ww * w3ScrollUVs.xy;
    r0.w = w3RotateUVs.y * gameTime.w + 1;
    r0.w = w3RotateUVs.x * r0.w;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r3.x, r4.x);
    r4.y = r4.x;
    r4.z = r3.x;
    r5.x = dot(r4.yz, r0.yz);
    r4.x = -r3.x;
    r5.y = dot(r4.xy, r0.yz);
    r0.yz = r1.xy * w3ScaleUVs.xy + r5.xy;
    r0.w = gameTime.w * w3ZoomRate;
    r0.w = cos(r0.w);
    r0.w = r0.w * 0.5 + 0.5;
    r0.w = 1 + -r0.w;
    r1.x = w3ZoomUVs.y + -w3ZoomUVs.x;
    r0.w = r0.w * r1.x + w3ZoomUVs.x;
    r0.yz = r0.yz / r0.ww;
    r0.yz = float2(0.5,0.5) + r0.yz;
    r1.xy = saturate(r0.yz);
    r3.x = w3ClampU ? r1.x : r0.y;
    r3.y = w3ClampV ? r1.y : r0.z;
    r0.yzw = widgetMap3.Sample(bilinearSampler_s, r3.xy).xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r0.yzw = -r0.yzw * r1.zzz + float3(1,1,1);
    r2.xyz = -r3.xyz * r0.yzw + float3(1,1,1);
  }
  if (r3.w != 0) {
    r0.yz = float2(-0.5,-0.5) + v2.xy;
    r1.xy = w4OffsetUVs.xy * w3ClampV;
    r0.yz = r0.yz * w3ClampV + r1.xy;
    r0.w = w4RotateUVs.y * gameTime.w + 1;
    r0.w = w4RotateUVs.x * r0.w;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r1.x, r3.x);
    r3.y = r3.x;
    r3.z = r1.x;
    r4.x = dot(r3.yz, r0.yz);
    r3.x = -r1.x;
    r4.y = dot(r3.xy, r0.yz);
    r0.yz = gameTime.ww * w4ScrollUVs.xy;
    r0.yz = r0.yz * w3ClampV + r4.xy;
    r0.w = gameTime.w * w4ZoomRate;
    r0.w = cos(r0.w);
    r0.w = r0.w * 0.5 + 0.5;
    r0.w = 1 + -r0.w;
    r1.x = w4ZoomUVs.y + -w4ZoomUVs.x;
    r0.w = r0.w * r1.x + w4ZoomUVs.x;
    r0.yz = r0.yz / r0.ww;
    r0.yz = float2(0.5,0.5) + r0.yz;
    r1.xy = saturate(r0.yz);
    r0.yz = w4ClampU ? r1.xy : r0.yz;
    r0.yzw = widgetMap4.Sample(bilinearSampler_s, r0.yz).xyz;
    r1.xyz = float3(1,1,1) + -r2.xyz;
    r0.yzw = -r0.yzw * r1.www + float3(1,1,1);
    r2.xyz = -r1.xyz * r0.yzw + float3(1,1,1);
  }
  r0.y = cmp(0 < r0.x);
  if (r0.y != 0) {
    r0.yz = float2(-0.5,-0.5) + v2.xy;
    r1.xy = w5OffsetUVs.xy * w5ScaleUVs.xy;
    r0.yz = r0.yz * w5ScaleUVs.xy + r1.xy;
    r1.xy = gameTime.ww * w5ScrollUVs.xy;
    r0.w = w5RotateUVs.y * gameTime.w + 1;
    r0.w = w5RotateUVs.x * r0.w;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r3.x, r4.x);
    r4.y = r4.x;
    r4.z = r3.x;
    r5.x = dot(r4.yz, r0.yz);
    r4.x = -r3.x;
    r5.y = dot(r4.xy, r0.yz);
    r0.yz = r1.xy * w5ScaleUVs.xy + r5.xy;
    r0.w = gameTime.w * w5ZoomRate;
    r0.w = cos(r0.w);
    r0.w = r0.w * 0.5 + 0.5;
    r0.w = 1 + -r0.w;
    r1.x = w5ZoomUVs.y + -w5ZoomUVs.x;
    r0.w = r0.w * r1.x + w5ZoomUVs.x;
    r0.yz = r0.yz / r0.ww;
    r0.yz = float2(0.5,0.5) + r0.yz;
    r1.xy = saturate(r0.yz);
    r3.x = w5ClampU ? r1.x : r0.y;
    r3.y = w5ClampV ? r1.y : r0.z;
    r0.yzw = widgetMap5.Sample(bilinearSampler_s, r3.xy).xyz;
    r1.xyz = float3(1,1,1) + -r2.xyz;
    r0.xyz = -r0.yzw * r0.xxx + float3(1,1,1);
    r2.xyz = -r1.xyz * r0.xyz + float3(1,1,1);
  }
  r0.x = cmp(extracamSelect == 4);
  if (r0.x != 0) {
    r0.xyzw = extracamTexture4.Sample(bilinearClampler_s, v2.xy).xyzw;
    o0.w = r0.w;
  } else {
    r1.x = cmp(extracamSelect == 3);
    if (r1.x != 0) {
      r0.xyzw = extracamTexture3.Sample(bilinearClampler_s, v2.xy).xyzw;
      o0.w = r0.w;
    } else {
      r1.x = cmp(extracamSelect == 2);
      if (r1.x != 0) {
        r0.xyzw = extracamTexture2.Sample(bilinearClampler_s, v2.xy).xyzw;
        o0.w = r0.w;
      } else {
        r0.xyzw = extracamTexture1.Sample(bilinearClampler_s, v2.xy).xyzw;
        o0.w = r0.w;
      }
    }
  }
  r0.xyz = float3(1,1,1) + -r0.xyz;
  r1.xyz = -r2.xyz * r2.www + float3(1,1,1);
  r0.xyz = -r0.xyz * r1.xyz + float3(1,1,1);
  r1.xyz = hdrControl0.www * r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v7.xyz, v7.xyz);
    r1.w = rsqrt(r0.w);
    r2.xyz = v7.xyz * r1.www;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r3.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r3.xy = fogConstants.atmospherefogdensityatcamera.xy * r3.xy;
      r1.w = cmp(0.00999999978 < abs(v7.z));
      r3.zw = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r4.xy = float2(-1.44269502,-1.44269502) * r3.zw;
      r4.xy = exp2(r4.xy);
      r4.xy = float2(1,1) + -r4.xy;
      r3.zw = r4.xy / r3.zw;
      r3.zw = r3.xy * r3.zw;
      r3.xy = r1.ww ? r3.zw : r3.xy;
      r3.xzw = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
      r3.xzw = exp2(r3.xzw);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.yyy;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r3.xzw;
      r3.xyz = fogConstants.blendAmount * r4.xyz + r3.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.w = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r4.x = -1.44269502 * r3.w;
      r4.x = exp2(r4.x);
      r4.x = 1 + -r4.x;
      r3.w = r4.x / r3.w;
      r3.w = r3.w * r1.w;
      r1.w = r2.w ? r3.w : r1.w;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r3.xyz = exp2(r4.xyz);
    }
    r3.xyz = r3.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r3.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r3.xyz);
    r1.w = dot(fogConstants.wldSunFogDir.xyz, -r2.xyz);
    r2.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.y = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
    r2.y = r2.y * r2.y;
    r2.y = 12.566371 * r2.y;
    r2.x = r2.x / r2.y;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.x * r0.w;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r2.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r2.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r4.xyz = float3(1,1,1) + -r3.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r2.xyz = r1.xyz * r3.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r1.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r2.w = cmp(abs(r0.w) < 9.99999975e-05);
    r3.x = min(64, r1.w);
    r3.x = 1.44269502 * r3.x;
    r3.x = exp2(r3.x);
    r3.y = saturate(fogConstants.K0b);
    r3.z = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r3.z ? r3.x : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r2.w ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.w ? r3.y : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(v7.xyz, v7.xyz);
    r2.w = sqrt(r1.w);
    r0.w = r0.w * r2.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r3.xyz = v7.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r1.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r3.w * r0.w;
    r0.xyz = -r0.xyz * hdrControl0.www + r3.xyz;
    r2.xyz = r0.www * r0.xyz + r1.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}