// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:30:14 2021

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
  float3 colorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float2 wind1Parms : packoffset(c11.z);
  float2 wind2Parms : packoffset(c12);
  float2 wind3Parms : packoffset(c12.z);
  float2 vertexColorScale : packoffset(c13);
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

cbuffer MotionVectorParams : register(b7)
{

  struct
  {
    row_major float4x4 prevFrameOffToClpMatrixFull;
    row_major float4x4 prevFrameOffToClpMatrixPartial;
    row_major float4x4 curFrameCamToOffMatrix;
    float3 prevFrameEyeOffset;
    float motionStrength;
    float3 eyeOffsetFrameDelta;
    float _padding_23;
    float2 curFrameHalfNearPlaneSize;
    float2 _padding_26;
  } motionVectorConstants : packoffset(c0);

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

StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
Texture2D<float4> gpuSkinBase : register(t1);
Texture2D<float4> gpuSkinQuat : register(t2);
Texture2D<float4> gpuSkinPos : register(t3);
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
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2,
  out float4 o5 : TEXCOORD3,
  out float4 o6 : TEXCOORD7)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t5, 64
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.xy, v7.x, l(0), t4.xyxx
r1.x = shaderConstantSetBuffer[]..swiz;
r1.y = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.w, r1.y, l(96), t0.xxxx
r0.w = shaderConstantSetBuffer[]..swiz;
  r1.yzw = r0.xyz * r0.www + v0.xyz;
  r2.xyz = v4.xyz * float3(2.00195694,2.00195694,2.00195694) + float3(-1.00195694,-1.00195694,-1.00195694);
  r0.w = v4.w * 2 + -1;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.xy, v7.x, l(12), t4.xyxx
r3.x = shaderConstantSetBuffer[]..swiz;
r3.y = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r3.y, l(48), t5.xyzw
r4.x = shaderConstantSetBuffer[]..swiz;
r4.y = shaderConstantSetBuffer[]..swiz;
r4.z = shaderConstantSetBuffer[]..swiz;
r4.w = shaderConstantSetBuffer[]..swiz;
  r4.xyzw = r3.yyyy ? r4.xyzw : float4(0,0,0,0);
  r2.w = cmp(0 != r4.w);
  if (r2.w != 0) {
    r2.w = (uint)r4.w;
    if (r2.w != 0) {
      r3.y = (int)r2.w + (int)v6.x;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r3.y, l(0), t5.xyzw
    r5.x = shaderConstantSetBuffer[]..swiz;
    r5.y = shaderConstantSetBuffer[]..swiz;
    r5.z = shaderConstantSetBuffer[]..swiz;
    r5.w = shaderConstantSetBuffer[]..swiz;
      r3.z = dot(r5.xyz, r1.yzw);
      r3.z = r3.z + r5.w;
      r6.x = v5.x * r3.z;
      r3.z = dot(r5.xyz, r0.xyz);
      r7.x = v5.x * r3.z;
      r3.z = dot(r5.xyz, r2.xyz);
      r5.x = v5.x * r3.z;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(16), t5.xyzw
    r8.x = shaderConstantSetBuffer[]..swiz;
    r8.y = shaderConstantSetBuffer[]..swiz;
    r8.z = shaderConstantSetBuffer[]..swiz;
    r8.w = shaderConstantSetBuffer[]..swiz;
      r3.z = dot(r8.xyz, r1.yzw);
      r3.z = r3.z + r8.w;
      r6.y = v5.x * r3.z;
      r3.z = dot(r8.xyz, r0.xyz);
      r7.y = v5.x * r3.z;
      r3.z = dot(r8.xyz, r2.xyz);
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(32), t5.xyzw
    r8.x = shaderConstantSetBuffer[]..swiz;
    r8.y = shaderConstantSetBuffer[]..swiz;
    r8.z = shaderConstantSetBuffer[]..swiz;
    r8.w = shaderConstantSetBuffer[]..swiz;
      r3.y = dot(r8.xyz, r1.yzw);
      r3.y = r3.y + r8.w;
      r6.z = v5.x * r3.y;
      r3.y = dot(r8.xyz, r0.xyz);
      r7.z = v5.x * r3.y;
      r3.y = dot(r8.xyz, r2.xyz);
      r5.yz = v5.xx * r3.zy;
      r3.y = cmp(v5.y != 0.000000);
      if (r3.y != 0) {
        r3.y = (int)r2.w + (int)v6.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(0), t5.xyzw
      r8.x = shaderConstantSetBuffer[]..swiz;
      r8.y = shaderConstantSetBuffer[]..swiz;
      r8.z = shaderConstantSetBuffer[]..swiz;
      r8.w = shaderConstantSetBuffer[]..swiz;
        r3.z = dot(r8.xyz, r1.yzw);
        r3.z = r3.z + r8.w;
        r6.x = r3.z * v5.y + r6.x;
        r3.z = dot(r8.xyz, r0.xyz);
        r7.x = r3.z * v5.y + r7.x;
        r3.z = dot(r8.xyz, r2.xyz);
        r5.x = r3.z * v5.y + r5.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(16), t5.xyzw
      r8.x = shaderConstantSetBuffer[]..swiz;
      r8.y = shaderConstantSetBuffer[]..swiz;
      r8.z = shaderConstantSetBuffer[]..swiz;
      r8.w = shaderConstantSetBuffer[]..swiz;
        r3.z = dot(r8.xyz, r1.yzw);
        r3.z = r3.z + r8.w;
        r6.y = r3.z * v5.y + r6.y;
        r3.z = dot(r8.xyz, r0.xyz);
        r7.y = r3.z * v5.y + r7.y;
        r3.z = dot(r8.xyz, r2.xyz);
        r5.y = r3.z * v5.y + r5.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(32), t5.xyzw
      r8.x = shaderConstantSetBuffer[]..swiz;
      r8.y = shaderConstantSetBuffer[]..swiz;
      r8.z = shaderConstantSetBuffer[]..swiz;
      r8.w = shaderConstantSetBuffer[]..swiz;
        r3.y = dot(r8.xyz, r1.yzw);
        r3.y = r3.y + r8.w;
        r6.z = r3.y * v5.y + r6.z;
        r3.y = dot(r8.xyz, r0.xyz);
        r7.z = r3.y * v5.y + r7.z;
        r3.y = dot(r8.xyz, r2.xyz);
        r5.z = r3.y * v5.y + r5.z;
        r3.y = cmp(v5.z != 0.000000);
        if (r3.y != 0) {
          r3.y = (int)r2.w + (int)v6.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(0), t5.xyzw
        r8.x = shaderConstantSetBuffer[]..swiz;
        r8.y = shaderConstantSetBuffer[]..swiz;
        r8.z = shaderConstantSetBuffer[]..swiz;
        r8.w = shaderConstantSetBuffer[]..swiz;
          r3.z = dot(r8.xyz, r1.yzw);
          r3.z = r3.z + r8.w;
          r6.x = r3.z * v5.z + r6.x;
          r3.z = dot(r8.xyz, r0.xyz);
          r7.x = r3.z * v5.z + r7.x;
          r3.z = dot(r8.xyz, r2.xyz);
          r5.x = r3.z * v5.z + r5.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(16), t5.xyzw
        r8.x = shaderConstantSetBuffer[]..swiz;
        r8.y = shaderConstantSetBuffer[]..swiz;
        r8.z = shaderConstantSetBuffer[]..swiz;
        r8.w = shaderConstantSetBuffer[]..swiz;
          r3.z = dot(r8.xyz, r1.yzw);
          r3.z = r3.z + r8.w;
          r6.y = r3.z * v5.z + r6.y;
          r3.z = dot(r8.xyz, r0.xyz);
          r7.y = r3.z * v5.z + r7.y;
          r3.z = dot(r8.xyz, r2.xyz);
          r5.y = r3.z * v5.z + r5.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(32), t5.xyzw
        r8.x = shaderConstantSetBuffer[]..swiz;
        r8.y = shaderConstantSetBuffer[]..swiz;
        r8.z = shaderConstantSetBuffer[]..swiz;
        r8.w = shaderConstantSetBuffer[]..swiz;
          r3.y = dot(r8.xyz, r1.yzw);
          r3.y = r3.y + r8.w;
          r6.z = r3.y * v5.z + r6.z;
          r3.y = dot(r8.xyz, r0.xyz);
          r7.z = r3.y * v5.z + r7.z;
          r3.y = dot(r8.xyz, r2.xyz);
          r5.z = r3.y * v5.z + r5.z;
          r3.y = cmp(v5.w != 0.000000);
          if (r3.y != 0) {
            r2.w = (int)r2.w + (int)v6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.w, l(0), t5.xyzw
          r8.x = shaderConstantSetBuffer[]..swiz;
          r8.y = shaderConstantSetBuffer[]..swiz;
          r8.z = shaderConstantSetBuffer[]..swiz;
          r8.w = shaderConstantSetBuffer[]..swiz;
            r3.y = dot(r8.xyz, r1.yzw);
            r3.y = r3.y + r8.w;
            r6.x = r3.y * v5.w + r6.x;
            r3.y = dot(r8.xyz, r0.xyz);
            r7.x = r3.y * v5.w + r7.x;
            r3.y = dot(r8.xyz, r2.xyz);
            r5.x = r3.y * v5.w + r5.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.w, l(16), t5.xyzw
          r8.x = shaderConstantSetBuffer[]..swiz;
          r8.y = shaderConstantSetBuffer[]..swiz;
          r8.z = shaderConstantSetBuffer[]..swiz;
          r8.w = shaderConstantSetBuffer[]..swiz;
            r3.y = dot(r8.xyz, r1.yzw);
            r3.y = r3.y + r8.w;
            r6.y = r3.y * v5.w + r6.y;
            r3.y = dot(r8.xyz, r0.xyz);
            r7.y = r3.y * v5.w + r7.y;
            r3.y = dot(r8.xyz, r2.xyz);
            r5.y = r3.y * v5.w + r5.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.w, l(32), t5.xyzw
          r8.x = shaderConstantSetBuffer[]..swiz;
          r8.y = shaderConstantSetBuffer[]..swiz;
          r8.z = shaderConstantSetBuffer[]..swiz;
          r8.w = shaderConstantSetBuffer[]..swiz;
            r2.w = dot(r8.xyz, r1.yzw);
            r2.w = r2.w + r8.w;
            r6.z = r2.w * v5.w + r6.z;
            r2.w = dot(r8.xyz, r0.xyz);
            r7.z = r2.w * v5.w + r7.z;
            r2.w = dot(r8.xyz, r2.xyz);
            r5.z = r2.w * v5.w + r5.z;
          }
        }
      }
      r2.w = dot(r7.xyz, r7.xyz);
      r2.w = rsqrt(r2.w);
      r0.xyz = r7.xyz * r2.www;
      r2.w = dot(r5.xyz, r5.xyz);
      r2.w = rsqrt(r2.w);
      r2.xyz = r5.xyz * r2.www;
    } else {
      r6.xyz = r1.yzw;
    }
  } else {
    r5.yw = (uint2)r4.xy;
    r5.x = v6.x;
    r5.z = 0;
    r7.xyzw = gpuSkinQuat.Load(r5.xyz).xyzw;
    r8.xyzw = gpuSkinQuat.Load(r5.xwz).xyzw;
    r3.yzw = gpuSkinPos.Load(r5.xyz).xyz;
    r4.xyw = gpuSkinPos.Load(r5.xwz).xyz;
    r9.xyz = gpuSkinBase.Load(r5.xzz).xyz;
    r8.xyzw = r8.xyzw + -r7.xyzw;
    r7.xyzw = r4.zzzz * r8.xyzw + r7.xyzw;
    r4.xyw = r4.xyw + -r3.yzw;
    r3.yzw = r4.zzz * r4.xyw + r3.yzw;
    r4.xyw = -r9.xyz + r1.yzw;
    r2.w = dot(r7.xyzw, r7.xyzw);
    r2.w = rsqrt(r2.w);
    r7.xyzw = r7.xyzw * r2.wwww;
    r8.xyz = r7.xyz + r7.xyz;
    r10.xyz = r8.xxx * r7.xzw;
    r2.w = r8.y * r7.w;
    r8.zw = r8.zz * r7.wz;
    r9.w = r7.y * r8.y + r8.w;
    r11.x = 1 + -r9.w;
    r12.x = r7.z * r8.x + -r2.w;
    r11.y = r7.y * r8.x + -r8.z;
    r13.xy = r7.yx * r8.xx + r8.zw;
    r13.z = r7.z * r8.y + -r10.z;
    r7.xyz = r7.zwy * r8.yyy + r10.zyx;
    r11.z = r7.y;
    r8.x = dot(r4.xyw, r11.xyz);
    r13.w = 1 + -r13.y;
    r8.y = dot(r4.xwy, r13.xzw);
    r12.yz = r7.xz * float2(1,-1) + float2(0,1);
    r8.z = dot(r4.xyw, r12.xyz);
    r7.x = dot(r0.xyz, r11.xyz);
    r7.y = dot(r0.xzy, r13.xzw);
    r7.z = dot(r0.xyz, r12.xyz);
    r10.x = dot(r2.xyz, r11.xyz);
    r10.y = dot(r2.xzy, r13.xzw);
    r10.z = dot(r2.xyz, r12.xyz);
    r4.xyw = r8.xyz + r9.xyz;
    r3.yzw = r4.xyw + r3.yzw;
    r6.xyz = v5.xxx * r3.yzw;
    r3.yzw = v5.xxx * r7.xyz;
    r4.xyw = v5.xxx * r10.xyz;
    r2.w = cmp(v5.y != 0.000000);
    if (r2.w != 0) {
      r5.x = v6.y;
      r7.xyzw = gpuSkinQuat.Load(r5.xyz).xyzw;
      r8.xyzw = gpuSkinQuat.Load(r5.xwz).xyzw;
      r9.xyz = gpuSkinPos.Load(r5.xyz).xyz;
      r10.xyz = gpuSkinPos.Load(r5.xwz).xyz;
      r11.xyz = gpuSkinBase.Load(r5.xzz).xyz;
      r8.xyzw = r8.xyzw + -r7.xyzw;
      r7.xyzw = r4.zzzz * r8.xyzw + r7.xyzw;
      r8.xyz = r10.xyz + -r9.xyz;
      r8.xyz = r4.zzz * r8.xyz + r9.xyz;
      r9.xyz = -r11.xyz + r1.yzw;
      r2.w = dot(r7.xyzw, r7.xyzw);
      r2.w = rsqrt(r2.w);
      r7.xyzw = r7.xyzw * r2.wwww;
      r10.xyz = r7.xyz + r7.xyz;
      r12.xyz = r10.xxx * r7.xzw;
      r2.w = r10.y * r7.w;
      r10.zw = r10.zz * r7.wz;
      r8.w = r7.y * r10.y + r10.w;
      r13.x = 1 + -r8.w;
      r14.x = r7.z * r10.x + -r2.w;
      r13.y = r7.y * r10.x + -r10.z;
      r15.xy = r7.yx * r10.xx + r10.zw;
      r15.z = r7.z * r10.y + -r12.z;
      r7.xyz = r7.zwy * r10.yyy + r12.zyx;
      r13.z = r7.y;
      r10.x = dot(r9.xyz, r13.xyz);
      r15.w = 1 + -r15.y;
      r10.y = dot(r9.xzy, r15.xzw);
      r14.yz = r7.xz * float2(1,-1) + float2(0,1);
      r10.z = dot(r9.xyz, r14.xyz);
      r7.x = dot(r0.xyz, r13.xyz);
      r7.y = dot(r0.xzy, r15.xzw);
      r7.z = dot(r0.xyz, r14.xyz);
      r9.x = dot(r2.xyz, r13.xyz);
      r9.y = dot(r2.xzy, r15.xzw);
      r9.z = dot(r2.xyz, r14.xyz);
      r10.xyz = r10.xyz + r11.xyz;
      r8.xyz = r10.xyz + r8.xyz;
      r6.xyz = r8.xyz * v5.yyy + r6.xyz;
      r3.yzw = r7.xyz * v5.yyy + r3.yzw;
      r4.xyw = r9.xyz * v5.yyy + r4.xyw;
      r2.w = cmp(v5.z != 0.000000);
      if (r2.w != 0) {
        r5.x = v6.z;
        r7.xyzw = gpuSkinQuat.Load(r5.xyz).xyzw;
        r8.xyzw = gpuSkinQuat.Load(r5.xwz).xyzw;
        r9.xyz = gpuSkinPos.Load(r5.xyz).xyz;
        r10.xyz = gpuSkinPos.Load(r5.xwz).xyz;
        r11.xyz = gpuSkinBase.Load(r5.xzz).xyz;
        r8.xyzw = r8.xyzw + -r7.xyzw;
        r7.xyzw = r4.zzzz * r8.xyzw + r7.xyzw;
        r8.xyz = r10.xyz + -r9.xyz;
        r8.xyz = r4.zzz * r8.xyz + r9.xyz;
        r9.xyz = -r11.xyz + r1.yzw;
        r2.w = dot(r7.xyzw, r7.xyzw);
        r2.w = rsqrt(r2.w);
        r7.xyzw = r7.xyzw * r2.wwww;
        r10.xyz = r7.xyz + r7.xyz;
        r12.xyz = r10.xxx * r7.xzw;
        r2.w = r10.y * r7.w;
        r10.zw = r10.zz * r7.wz;
        r8.w = r7.y * r10.y + r10.w;
        r13.x = 1 + -r8.w;
        r14.x = r7.z * r10.x + -r2.w;
        r13.y = r7.y * r10.x + -r10.z;
        r15.xy = r7.yx * r10.xx + r10.zw;
        r15.z = r7.z * r10.y + -r12.z;
        r7.xyz = r7.zwy * r10.yyy + r12.zyx;
        r13.z = r7.y;
        r10.x = dot(r9.xyz, r13.xyz);
        r15.w = 1 + -r15.y;
        r10.y = dot(r9.xzy, r15.xzw);
        r14.yz = r7.xz * float2(1,-1) + float2(0,1);
        r10.z = dot(r9.xyz, r14.xyz);
        r7.x = dot(r0.xyz, r13.xyz);
        r7.y = dot(r0.xzy, r15.xzw);
        r7.z = dot(r0.xyz, r14.xyz);
        r9.x = dot(r2.xyz, r13.xyz);
        r9.y = dot(r2.xzy, r15.xzw);
        r9.z = dot(r2.xyz, r14.xyz);
        r10.xyz = r10.xyz + r11.xyz;
        r8.xyz = r10.xyz + r8.xyz;
        r6.xyz = r8.xyz * v5.zzz + r6.xyz;
        r3.yzw = r7.xyz * v5.zzz + r3.yzw;
        r4.xyw = r9.xyz * v5.zzz + r4.xyw;
        r2.w = cmp(v5.w != 0.000000);
        if (r2.w != 0) {
          r5.x = v6.w;
          r7.xyzw = gpuSkinQuat.Load(r5.xyz).xyzw;
          r8.xyzw = gpuSkinQuat.Load(r5.xwz).xyzw;
          r9.xyz = gpuSkinPos.Load(r5.xyz).xyz;
          r10.xyz = gpuSkinPos.Load(r5.xwz).xyz;
          r5.xyz = gpuSkinBase.Load(r5.xzz).xyz;
          r8.xyzw = r8.xyzw + -r7.xyzw;
          r7.xyzw = r4.zzzz * r8.xyzw + r7.xyzw;
          r8.xyz = r10.xyz + -r9.xyz;
          r8.xyz = r4.zzz * r8.xyz + r9.xyz;
          r1.yzw = -r5.xyz + r1.yzw;
          r2.w = dot(r7.xyzw, r7.xyzw);
          r2.w = rsqrt(r2.w);
          r7.xyzw = r7.xyzw * r2.wwww;
          r9.xyz = r7.xyz + r7.xyz;
          r10.xyz = r9.xxx * r7.xzw;
          r2.w = r9.y * r7.w;
          r9.zw = r9.zz * r7.wz;
          r4.z = r7.y * r9.y + r9.w;
          r11.x = 1 + -r4.z;
          r12.x = r7.z * r9.x + -r2.w;
          r11.y = r7.y * r9.x + -r9.z;
          r13.xy = r7.yx * r9.xx + r9.zw;
          r13.z = r7.z * r9.y + -r10.z;
          r7.xyz = r7.zwy * r9.yyy + r10.zyx;
          r11.z = r7.y;
          r9.x = dot(r1.yzw, r11.xyz);
          r13.w = 1 + -r13.y;
          r9.y = dot(r1.ywz, r13.xzw);
          r12.yz = r7.xz * float2(1,-1) + float2(0,1);
          r9.z = dot(r1.yzw, r12.xyz);
          r7.x = dot(r0.xyz, r11.xyz);
          r7.y = dot(r0.xzy, r13.xzw);
          r7.z = dot(r0.xyz, r12.xyz);
          r10.x = dot(r2.xyz, r11.xyz);
          r10.y = dot(r2.xzy, r13.xzw);
          r10.z = dot(r2.xyz, r12.xyz);
          r1.yzw = r9.xyz + r5.xyz;
          r1.yzw = r1.yzw + r8.xyz;
          r6.xyz = r1.yzw * v5.www + r6.xyz;
          r3.yzw = r7.xyz * v5.www + r3.yzw;
          r4.xyw = r10.xyz * v5.www + r4.xyw;
        }
      }
    }
    r1.y = dot(r3.yzw, r3.yzw);
    r1.y = rsqrt(r1.y);
    r0.xyz = r3.yzw * r1.yyy;
    r1.y = dot(r4.xyw, r4.xyw);
    r1.y = rsqrt(r1.y);
    r2.xyz = r4.xyw * r1.yyy;
  }
  r1.yzw = r2.yzx * r0.zxy;
  r1.yzw = r0.yzx * r2.zxy + -r1.yzw;
  r1.yzw = r1.yzw * r0.www;
  r0.w = (int)r1.x + (int)r3.x;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.w, l(0), t5.xyzw
r3.x = shaderConstantSetBuffer[]..swiz;
r3.y = shaderConstantSetBuffer[]..swiz;
r3.z = shaderConstantSetBuffer[]..swiz;
r3.w = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(16), t5.xyzw
r4.x = shaderConstantSetBuffer[]..swiz;
r4.y = shaderConstantSetBuffer[]..swiz;
r4.z = shaderConstantSetBuffer[]..swiz;
r4.w = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(32), t5.xyzw
r5.x = shaderConstantSetBuffer[]..swiz;
r5.y = shaderConstantSetBuffer[]..swiz;
r5.z = shaderConstantSetBuffer[]..swiz;
r5.w = shaderConstantSetBuffer[]..swiz;
  r7.x = r3.w;
  r7.y = r4.w;
  r7.z = r5.w;
  r7.xyw = -eyeOffset.xyz + r7.xyz;
  r6.w = 1;
  r3.w = r7.x;
  r8.x = dot(r6.xyzw, r3.xyzw);
  r4.w = r7.y;
  r8.y = dot(r6.xyzw, r4.xyzw);
  r7.xyz = r5.xyz;
  r8.z = dot(r6.xyzw, r7.xyzw);
  r5.x = dot(r0.xyz, r3.xyz);
  r5.y = dot(r0.xyz, r4.xyz);
  r5.z = dot(r0.xyz, r7.xyz);
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = rsqrt(r0.x);
  o3.xyz = r5.xyz * r0.xxx;
  r0.x = dot(r2.xyz, r3.xyz);
  r0.y = dot(r2.xyz, r4.xyz);
  r0.z = dot(r2.xyz, r7.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r0.xyz * r0.www;
  r0.x = dot(r1.yzw, r3.xyz);
  r0.y = dot(r1.yzw, r4.xyz);
  r0.z = dot(r1.yzw, r7.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r0.xyz * r0.www;
  r0.zw = vertexColorScale.xy * v1.xy;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v7.x, l(0), t4.xxxx
r1.x = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.y, v7.x, l(12), t4.xxxx
r1.y = shaderConstantSetBuffer[]..swiz;
  r1.x = (int)r1.x + (int)r1.y;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.y, r1.x, l(12), t5.xxxx
r1.y = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.x, r1.x, l(28), t5.xxxx
r1.x = shaderConstantSetBuffer[]..swiz;
  r2.xyz = eyeOffset.xyz + r8.xyz;
  r1.z = weather.windSpeed * gameTime.w;
  r1.w = gameTime.w * weather.windSpeed + 0.5;
  r1.xy = float2(0.100000001,0.100000001) * r1.xy;
  r1.y = r1.z * 0.899999976 + r1.y;
  r1.y = 0.0700000003 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.x = r1.w * 0.699999988 + r1.x;
  r1.x = 0.0700000003 * r1.x;
  r1.x = cos(r1.x);
  r1.x = r1.x * 0.5 + r1.y;
  r1.x = 0.5 + r1.x;
  r1.x = 0.5 * r1.x;
  r1.y = dot(v0.xz, v0.xz);
  r1.y = sqrt(r1.y);
  r1.y = weather.windSpeed * r1.y;
  r1.y = weather.windDirSin * r1.y;
  r1.y = r1.y * r1.x;
  r0.x = r1.y * r0.z;
  r1.y = dot(v0.yz, v0.yz);
  r1.y = sqrt(r1.y);
  r1.y = weather.windSpeed * r1.y;
  r1.y = weather.windDirCos * r1.y;
  r1.x = r1.y * r1.x;
  r0.y = r1.x * r0.z;
  r1.xyz = r0.xyz * float3(0.00999999978,0.00999999978,0) + r2.xyz;
  r2.xyzw = -eyeOffset.yyyy * viewProjectionMatrix._m10_m11_m12_m13;
  r2.xyzw = -eyeOffset.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r2.xyzw;
  r2.xyzw = -eyeOffset.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r2.xyzw;
  r2.xyzw = viewProjectionMatrix._m30_m31_m32_m33 + r2.xyzw;
  r3.xyzw = viewProjectionMatrix._m10_m11_m12_m13 * r1.yyyy;
  r3.xyzw = r1.xxxx * viewProjectionMatrix._m00_m01_m02_m03 + r3.xyzw;
  r3.xyzw = r1.zzzz * viewProjectionMatrix._m20_m21_m22_m23 + r3.xyzw;
  o0.xyzw = r3.xyzw + r2.xyzw;
  r1.xyz = -motionVectorConstants.prevFrameEyeOffset.xyz + r1.xyz;
  r2.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m10_m11_m12_m13 * r1.yyyy;
  r2.xyzw = r1.xxxx * motionVectorConstants.prevFrameOffToClpMatrixFull._m00_m01_m02_m03 + r2.xyzw;
  r1.xyzw = r1.zzzz * motionVectorConstants.prevFrameOffToClpMatrixFull._m20_m21_m22_m23 + r2.xyzw;
  o6.xyzw = motionVectorConstants.prevFrameOffToClpMatrixFull._m30_m31_m32_m33 + r1.xyzw;
  o1.xy = r0.zw;
  o1.zw = v1.zw;
  o2.xy = v2.xy;
  return;
}