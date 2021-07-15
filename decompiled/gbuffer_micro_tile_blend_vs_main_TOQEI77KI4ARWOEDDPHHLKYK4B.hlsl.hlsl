// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:31:20 2021

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
  float2 wind1Parms : packoffset(c11);
  float2 wind2Parms : packoffset(c11.z);
  float2 wind3Parms : packoffset(c12);
  float2 vertexColorScale : packoffset(c12.z);
  float2 mixScale : packoffset(c13);
  float detailScaleHeight1 : packoffset(c13.z);
  float detailScaleHeight2 : packoffset(c13.w);
  float4 colorTint : packoffset(c14);
  float4 colorTint1 : packoffset(c15);
  float2 glossRange2 : packoffset(c16);
  float rotateUVs1 : packoffset(c16.z);
  float rotateUVs2 : packoffset(c16.w);
  bool useUVOffsets1 : packoffset(c17);
  bool useUVOffsets2 : packoffset(c17.y);
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

StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
StructuredBuffer<boneMatrixBuffer> boneMatrixBuffer : register(t5);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float3 v0 : POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  float3 v3 : NORMAL0,
  float4 v4 : TANGENT0,
  float4 v5 : BLENDWEIGHT0,
  uint4 v6 : BLENDINDICES0,
  uint v7 : TEXCOORD15,
  out float4 o0 : SV_POSITION0,
  out float3 o1 : COLOR0,
  out float p1 : COLOR1,
  out float2 o2 : TEXCOORD0,
  out float3 o3 : UVOFFSETS0,
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD2,
  out float3 o6 : TEXCOORD3)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r1.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r0.w = v4.w * 2 + -1;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.w, v7.x, l(0), t4.xxxx
r1.w = modelInstanceBuffer[]..swiz;
  if (r1.w != 0) {
    r2.x = cmp(v5.x != 0.000000);
    if (r2.x != 0) {
      r2.x = (int)r1.w + (int)v6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r2.x, l(0), t5.xyzw
    r3.x = modelInstanceBuffer[]..swiz;
    r3.y = modelInstanceBuffer[]..swiz;
    r3.z = modelInstanceBuffer[]..swiz;
    r3.w = modelInstanceBuffer[]..swiz;
      r2.y = dot(r3.xyz, v0.xyz);
      r2.y = r2.y + r3.w;
      r4.x = v5.x * r2.y;
      r2.y = dot(r3.xyz, r0.xyz);
      r5.x = v5.x * r2.y;
      r2.y = dot(r3.xyz, r1.xyz);
      r3.x = v5.x * r2.y;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(16), t5.xyzw
    r6.x = modelInstanceBuffer[]..swiz;
    r6.y = modelInstanceBuffer[]..swiz;
    r6.z = modelInstanceBuffer[]..swiz;
    r6.w = modelInstanceBuffer[]..swiz;
      r2.y = dot(r6.xyz, v0.xyz);
      r2.y = r2.y + r6.w;
      r4.y = v5.x * r2.y;
      r2.y = dot(r6.xyz, r0.xyz);
      r5.y = v5.x * r2.y;
      r2.y = dot(r6.xyz, r1.xyz);
      r3.y = v5.x * r2.y;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
    r2.x = modelInstanceBuffer[]..swiz;
    r2.y = modelInstanceBuffer[]..swiz;
    r2.z = modelInstanceBuffer[]..swiz;
    r2.w = modelInstanceBuffer[]..swiz;
      r3.w = dot(r2.xyz, v0.xyz);
      r2.w = r3.w + r2.w;
      r4.z = v5.x * r2.w;
      r2.w = dot(r2.xyz, r0.xyz);
      r5.z = v5.x * r2.w;
      r2.x = dot(r2.xyz, r1.xyz);
      r3.z = v5.x * r2.x;
      r2.x = cmp(v5.y != 0.000000);
      if (r2.x != 0) {
        r2.x = (int)r1.w + (int)v6.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(0), t5.xyzw
      r6.x = modelInstanceBuffer[]..swiz;
      r6.y = modelInstanceBuffer[]..swiz;
      r6.z = modelInstanceBuffer[]..swiz;
      r6.w = modelInstanceBuffer[]..swiz;
        r2.y = dot(r6.xyz, v0.xyz);
        r2.y = r2.y + r6.w;
        r4.x = r2.y * v5.y + r4.x;
        r2.y = dot(r6.xyz, r0.xyz);
        r5.x = r2.y * v5.y + r5.x;
        r2.y = dot(r6.xyz, r1.xyz);
        r3.x = r2.y * v5.y + r3.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(16), t5.xyzw
      r6.x = modelInstanceBuffer[]..swiz;
      r6.y = modelInstanceBuffer[]..swiz;
      r6.z = modelInstanceBuffer[]..swiz;
      r6.w = modelInstanceBuffer[]..swiz;
        r2.y = dot(r6.xyz, v0.xyz);
        r2.y = r2.y + r6.w;
        r4.y = r2.y * v5.y + r4.y;
        r2.y = dot(r6.xyz, r0.xyz);
        r5.y = r2.y * v5.y + r5.y;
        r2.y = dot(r6.xyz, r1.xyz);
        r3.y = r2.y * v5.y + r3.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
      r2.x = modelInstanceBuffer[]..swiz;
      r2.y = modelInstanceBuffer[]..swiz;
      r2.z = modelInstanceBuffer[]..swiz;
      r2.w = modelInstanceBuffer[]..swiz;
        r3.w = dot(r2.xyz, v0.xyz);
        r2.w = r3.w + r2.w;
        r4.z = r2.w * v5.y + r4.z;
        r2.w = dot(r2.xyz, r0.xyz);
        r5.z = r2.w * v5.y + r5.z;
        r2.x = dot(r2.xyz, r1.xyz);
        r3.z = r2.x * v5.y + r3.z;
        r2.x = cmp(v5.z != 0.000000);
        if (r2.x != 0) {
          r2.x = (int)r1.w + (int)v6.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(0), t5.xyzw
        r6.x = modelInstanceBuffer[]..swiz;
        r6.y = modelInstanceBuffer[]..swiz;
        r6.z = modelInstanceBuffer[]..swiz;
        r6.w = modelInstanceBuffer[]..swiz;
          r2.y = dot(r6.xyz, v0.xyz);
          r2.y = r2.y + r6.w;
          r4.x = r2.y * v5.z + r4.x;
          r2.y = dot(r6.xyz, r0.xyz);
          r5.x = r2.y * v5.z + r5.x;
          r2.y = dot(r6.xyz, r1.xyz);
          r3.x = r2.y * v5.z + r3.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(16), t5.xyzw
        r6.x = modelInstanceBuffer[]..swiz;
        r6.y = modelInstanceBuffer[]..swiz;
        r6.z = modelInstanceBuffer[]..swiz;
        r6.w = modelInstanceBuffer[]..swiz;
          r2.y = dot(r6.xyz, v0.xyz);
          r2.y = r2.y + r6.w;
          r4.y = r2.y * v5.z + r4.y;
          r2.y = dot(r6.xyz, r0.xyz);
          r5.y = r2.y * v5.z + r5.y;
          r2.y = dot(r6.xyz, r1.xyz);
          r3.y = r2.y * v5.z + r3.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
        r2.x = modelInstanceBuffer[]..swiz;
        r2.y = modelInstanceBuffer[]..swiz;
        r2.z = modelInstanceBuffer[]..swiz;
        r2.w = modelInstanceBuffer[]..swiz;
          r3.w = dot(r2.xyz, v0.xyz);
          r2.w = r3.w + r2.w;
          r4.z = r2.w * v5.z + r4.z;
          r2.w = dot(r2.xyz, r0.xyz);
          r5.z = r2.w * v5.z + r5.z;
          r2.x = dot(r2.xyz, r1.xyz);
          r3.z = r2.x * v5.z + r3.z;
          r2.x = cmp(v5.w != 0.000000);
          if (r2.x != 0) {
            r1.w = (int)r1.w + (int)v6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.w, l(0), t5.xyzw
          r2.x = modelInstanceBuffer[]..swiz;
          r2.y = modelInstanceBuffer[]..swiz;
          r2.z = modelInstanceBuffer[]..swiz;
          r2.w = modelInstanceBuffer[]..swiz;
            r3.w = dot(r2.xyz, v0.xyz);
            r2.w = r3.w + r2.w;
            r4.x = r2.w * v5.w + r4.x;
            r2.w = dot(r2.xyz, r0.xyz);
            r5.x = r2.w * v5.w + r5.x;
            r2.x = dot(r2.xyz, r1.xyz);
            r3.x = r2.x * v5.w + r3.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.w, l(16), t5.xyzw
          r2.x = modelInstanceBuffer[]..swiz;
          r2.y = modelInstanceBuffer[]..swiz;
          r2.z = modelInstanceBuffer[]..swiz;
          r2.w = modelInstanceBuffer[]..swiz;
            r3.w = dot(r2.xyz, v0.xyz);
            r2.w = r3.w + r2.w;
            r4.y = r2.w * v5.w + r4.y;
            r2.w = dot(r2.xyz, r0.xyz);
            r5.y = r2.w * v5.w + r5.y;
            r2.x = dot(r2.xyz, r1.xyz);
            r3.y = r2.x * v5.w + r3.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.w, l(32), t5.xyzw
          r2.x = modelInstanceBuffer[]..swiz;
          r2.y = modelInstanceBuffer[]..swiz;
          r2.z = modelInstanceBuffer[]..swiz;
          r2.w = modelInstanceBuffer[]..swiz;
            r1.w = dot(r2.xyz, v0.xyz);
            r1.w = r1.w + r2.w;
            r4.z = r1.w * v5.w + r4.z;
            r1.w = dot(r2.xyz, r0.xyz);
            r5.z = r1.w * v5.w + r5.z;
            r1.w = dot(r2.xyz, r1.xyz);
            r3.z = r1.w * v5.w + r3.z;
          }
        }
      }
    } else {
      r4.xyz = float3(0,0,0);
      r5.xyz = float3(0,0,0);
      r3.xyz = float3(0,0,0);
    }
    r1.w = dot(r5.xyz, r5.xyz);
    r1.w = rsqrt(r1.w);
    r0.xyz = r5.xyz * r1.www;
    r1.w = dot(r3.xyz, r3.xyz);
    r1.w = rsqrt(r1.w);
    r1.xyz = r3.xyz * r1.www;
  } else {
    r4.xyz = v0.xyz;
  }
  r2.xyz = r1.yzx * r0.zxy;
  r2.xyz = r0.yzx * r1.zxy + -r2.xyz;
  r2.xyz = r2.xyz * r0.www;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v7.x, l(12), t4.xxxx
r0.w = modelInstanceBuffer[]..swiz;
  if (r0.w != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.w, l(0), t5.xyzw
  r3.x = modelInstanceBuffer[]..swiz;
  r3.y = modelInstanceBuffer[]..swiz;
  r3.z = modelInstanceBuffer[]..swiz;
  r3.w = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(16), t5.xyzw
  r5.x = modelInstanceBuffer[]..swiz;
  r5.y = modelInstanceBuffer[]..swiz;
  r5.z = modelInstanceBuffer[]..swiz;
  r5.w = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.w, l(32), t5.xywz
  r6.x = modelInstanceBuffer[]..swiz;
  r6.y = modelInstanceBuffer[]..swiz;
  r6.z = modelInstanceBuffer[]..swiz;
  r6.w = modelInstanceBuffer[]..swiz;
    r7.xyz = r6.xyw;
    r6.x = r3.w;
    r6.y = r5.w;
  } else {
    r3.xyz = float3(1,0,0);
    r5.xyz = float3(0,1,0);
    r7.xyz = float3(0,0,1);
    r6.xyz = float3(0,0,0);
  }
  r6.xyz = -eyeOffset.xyz + r6.xyz;
  r4.w = 1;
  r3.w = r6.x;
  r8.x = dot(r4.xyzw, r3.xyzw);
  r5.w = r6.y;
  r8.y = dot(r4.xyzw, r5.xyzw);
  r7.w = r6.z;
  r8.z = dot(r4.xyzw, r7.xyzw);
  r4.x = dot(r0.xyz, r3.xyz);
  r4.y = dot(r0.xyz, r5.xyz);
  r4.z = dot(r0.xyz, r7.xyz);
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = rsqrt(r0.x);
  o4.xyz = r4.xyz * r0.xxx;
  r0.x = dot(r1.xyz, r3.xyz);
  r0.y = dot(r1.xyz, r5.xyz);
  r0.z = dot(r1.xyz, r7.xyz);
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  o5.xyz = r1.xxx * r0.xyz;
  r0.x = dot(r2.xyz, r3.xyz);
  r0.y = dot(r2.xyz, r5.xyz);
  r0.z = dot(r2.xyz, r7.xyz);
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  o6.xyz = r1.xxx * r0.xyz;
  if (r0.w != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, r0.w, l(12), t5.xxxx
  r0.x = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.y, r0.w, l(28), t5.xxxx
  r0.y = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.z, r0.w, l(44), t5.xxxx
  r0.z = modelInstanceBuffer[]..swiz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = float3(0.100000001,0.100000001,0.100000001) * r0.xyz;
  o3.xyz = frac(r0.xyz);
  r0.xy = vertexColorScale.xy * v1.xy;
  if (r0.w != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.x, r0.w, l(12), t5.xxxx
  r1.x = modelInstanceBuffer[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.y, r0.w, l(28), t5.xxxx
  r1.y = modelInstanceBuffer[]..swiz;
  } else {
    r1.xy = float2(0,0);
  }
  r2.xyz = eyeOffset.xyz + r8.xyz;
  r0.z = weather.windSpeed * gameTime.w;
  r0.w = gameTime.w * weather.windSpeed + 0.5;
  r1.z = r0.z * 0.899999976 + r2.x;
  r1.xyz = float3(0.100000001,0.100000001,0.699999988) * r1.xyz;
  r1.z = sin(r1.z);
  r1.w = r0.w * 0.699999988 + r2.x;
  r1.w = 0.699999988 * r1.w;
  r1.w = cos(r1.w);
  r2.w = 0.00999999978 * v0.z;
  r3.xy = weather.windSpeed * weather.windDirSin;
  r3.x = r3.x * r1.z;
  r4.x = r3.x * r0.y;
  r3.x = r3.y * r1.w;
  r4.y = r3.x * r0.y;
  r1.z = r1.z * r1.w;
  r1.z = r1.z * r2.w;
  r4.z = r1.z * r0.y;
  r3.xyz = float3(0.109999999,0.129999995,0.0900000036) * r4.xyz;
  r0.z = r0.z * 0.899999976 + r1.x;
  r0.z = 0.0700000003 * r0.z;
  r0.z = sin(r0.z);
  r0.z = r0.z * 0.5 + 0.5;
  r0.w = r0.w * 0.699999988 + r1.y;
  r0.w = 0.0700000003 * r0.w;
  r0.w = cos(r0.w);
  r0.z = r0.w * 0.5 + r0.z;
  r0.z = 0.5 + r0.z;
  r0.z = 0.5 * r0.z;
  r0.w = dot(v0.xz, v0.xz);
  r0.w = sqrt(r0.w);
  r0.w = weather.windSpeed * r0.w;
  r0.w = weather.windDirSin * r0.w;
  r0.w = r0.w * r0.z;
  r0.w = r0.w * r0.x;
  r3.x = r0.w * 0.00999999978 + r3.x;
  r0.w = dot(v0.yz, v0.yz);
  r0.w = sqrt(r0.w);
  r0.w = weather.windSpeed * r0.w;
  r0.w = weather.windDirCos * r0.w;
  r0.z = r0.w * r0.z;
  r0.z = r0.z * r0.x;
  r3.y = r0.z * 0.00999999978 + r3.y;
  r1.xyz = r3.xyz + r2.xyz;
  r2.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r2.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  r2.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r2.xyzw;
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r1.yyyy;
  r3.xyzw = r1.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r1.xyzw = r1.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
  o0.xyzw = r1.xyzw + r2.xyzw;
  o1.zw = v1.zw;
  o1.xy = r0.xy;
  o2.xy = v2.xy;
  return;
}