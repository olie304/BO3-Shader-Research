// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:34:30 2021

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
  uint zFeatherComputeSprites : packoffset(c10.w);
  float hdrScale : packoffset(c11);
  float emissiveFalloffPower : packoffset(c11.y);
  float3 emissiveTint1 : packoffset(c12);
  bool relativeHDR : packoffset(c12.w);
  bool invertFalloff : packoffset(c13);
  float layerDepth : packoffset(c13.y);
  float uvMotionToggle1 : packoffset(c13.z) = {0};
  float2 scriptControl : packoffset(c14);
  float3 tint1 : packoffset(c15);
  float3 tint2 : packoffset(c16);
  float3 tint3 : packoffset(c17);
}

cbuffer PostFxCBuffer : register(b8)
{
  float4 postFxControl0 : packoffset(c0);
  float4 postFxControl1 : packoffset(c1);
  float4 postFxControl2 : packoffset(c2);
  float4 postFxControl3 : packoffset(c3);
  float4 postFxControl4 : packoffset(c4);
  float4 postFxControl5 : packoffset(c5);
  float4 postFxControl6 : packoffset(c6);
  float4 postFxControl7 : packoffset(c7);
  float4 postFxControl8 : packoffset(c8);
  float4 postFxControl9 : packoffset(c9);
  float4 postFxControlA : packoffset(c10);
  float4 postFxControlB : packoffset(c11);
  float4 postFxControlC : packoffset(c12);
  float4 postFxControlD : packoffset(c13);
  float4 postFxControlE : packoffset(c14);
  float4 postFxControlF : packoffset(c15);
  float4 postFxConst00 : packoffset(c16);
  float4 postFxConst01 : packoffset(c17);
  float4 postFxConst02 : packoffset(c18);
  float4 postFxConst03 : packoffset(c19);
  float4 postFxConst04 : packoffset(c20);
  float4 postFxConst05 : packoffset(c21);
  float4 postFxConst06 : packoffset(c22);
  float4 postFxConst07 : packoffset(c23);
  float4 postFxConst08 : packoffset(c24);
  float4 postFxConst09 : packoffset(c25);
  float4 postFxConst10 : packoffset(c26);
  float4 postFxConst11 : packoffset(c27);
  float4 postFxConst12 : packoffset(c28);
  float4 postFxConst13 : packoffset(c29);
  float4 postFxConst14 : packoffset(c30);
  float4 postFxConst15 : packoffset(c31);
  float4 postFxConst16 : packoffset(c32);
  float4 postFxConst17 : packoffset(c33);
  float4 postFxConst18 : packoffset(c34);
  float4 postFxConst19 : packoffset(c35);
  float4 postFxConst20 : packoffset(c36);
  float4 postFxConst21 : packoffset(c37);
  float4 postFxConst22 : packoffset(c38);
  float4 postFxConst23 : packoffset(c39);
  float4 postFxConst24 : packoffset(c40);
  float4 postFxConst25 : packoffset(c41);
  float4 postFxConst26 : packoffset(c42);
  float4 postFxConst27 : packoffset(c43);
  float4 postFxConst28 : packoffset(c44);
  float4 postFxConst29 : packoffset(c45);
  float4 postFxConst30 : packoffset(c46);
  float4 postFxConst31 : packoffset(c47);
  float4 postFxConst32 : packoffset(c48);
  float4 postFxConst33 : packoffset(c49);
  float4 postFxConst34 : packoffset(c50);
  float4 postFxConst35 : packoffset(c51);
  float4 postFxConst36 : packoffset(c52);
  float4 postFxConst37 : packoffset(c53);
  float4 postFxConst38 : packoffset(c54);
  float4 postFxConst39 : packoffset(c55);
  float4 postFxConst40 : packoffset(c56);
  float4 postFxConst41 : packoffset(c57);
  float4 postFxConst42 : packoffset(c58);
  float4 postFxConst43 : packoffset(c59);
  float4 postFxConst44 : packoffset(c60);
  float4 postFxConst45 : packoffset(c61);
  float4 postFxConst46 : packoffset(c62);
  float4 postFxConst47 : packoffset(c63);
  float4 postFxConst48 : packoffset(c64);
  float4 postFxConst49 : packoffset(c65);
  float4 postFxConst50 : packoffset(c66);
  float4 postFxConst51 : packoffset(c67);
  float4 postFxConst52 : packoffset(c68);
  float4 postFxConst53 : packoffset(c69);
  float4 postFxConst54 : packoffset(c70);
  float4 postFxConst55 : packoffset(c71);
  float4 postFxConst56 : packoffset(c72);
  float4 postFxConst57 : packoffset(c73);
  float4 postFxConst58 : packoffset(c74);
  float4 postFxConst59 : packoffset(c75);
  float4 postFxConst60 : packoffset(c76);
  float4 postFxConst61 : packoffset(c77);
  float4 postFxConst62 : packoffset(c78);
  float4 postFxConst63 : packoffset(c79);
  float4 postFxBloom00 : packoffset(c80);
  float4 postFxBloom01 : packoffset(c81);
  float4 postFxBloom02 : packoffset(c82);
  float4 postFxBloom03 : packoffset(c83);
  float4 postFxBloom04 : packoffset(c84);
  float4 postFxBloom05 : packoffset(c85);
  float4 postFxBloom06 : packoffset(c86);
  float4 postFxBloom07 : packoffset(c87);
  float4 postFxBloom08 : packoffset(c88);
  float4 postFxBloom09 : packoffset(c89);
  float4 postFxBloom10 : packoffset(c90);
  float4 postFxBloom11 : packoffset(c91);
  float4 postFxBloom12 : packoffset(c92);
  float4 postFxBloom13 : packoffset(c93);
  float4 postFxBloom14 : packoffset(c94);
  float4 postFxBloom15 : packoffset(c95);
  float4 postFxBloom16 : packoffset(c96);
  float4 postFxBloom17 : packoffset(c97);
  float4 postFxBloom18 : packoffset(c98);
  float4 postFxBloom19 : packoffset(c99);
  float4 postFxBloom20 : packoffset(c100);
  float4 postFxBloom21 : packoffset(c101);
  float4 postFxBloom22 : packoffset(c102);
  float4 postFxBloom23 : packoffset(c103);
  float4 postFxBloom24 : packoffset(c104);
  float4 postFxBloom25 : packoffset(c105);
  float4 filterTap[8] : packoffset(c106);
  float4 postfxViewMatrix0 : packoffset(c114);
  float4 postfxViewMatrix1 : packoffset(c115);
  float4 postfxViewMatrix2 : packoffset(c116);
  float4 postfxViewMatrix3 : packoffset(c117);
  float4 postfxProjMatrix0 : packoffset(c118);
  float4 postfxProjMatrix1 : packoffset(c119);
  float4 postfxProjMatrix2 : packoffset(c120);
  float4 postfxProjMatrix3 : packoffset(c121);
  float4 postfxViewProjMatrix0 : packoffset(c122);
  float4 postfxViewProjMatrix1 : packoffset(c123);
  float4 postfxViewProjMatrix2 : packoffset(c124);
  float4 postfxViewProjMatrix3 : packoffset(c125);
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

SamplerState samp0_s : register(s0);
SamplerState colorSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState specColorSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState normalSampler_s : register(s5);
SamplerState aoSampler_s : register(s6);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> customizeMask : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float2> gEnvBRDFGeneric : register(t5);
Texture2DArray<uint> visibleLights : register(t6);
Texture2DArray<uint> visibleProbes : register(t7);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
TextureCubeArray<float> gOmniShadowmapArray : register(t10);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
StructuredBuffer<refProbeConstants> refProbeConstants : register(t15);
StructuredBuffer<refProbeAttenuationConstants> refProbeAttenuationConstants : register(t16);
Texture3D<float3> gProbeXArray : register(t17);
Texture3D<float3> gProbeYArray : register(t18);
Texture3D<float3> gProbeZArray : register(t19);
Texture2DArray<float4> gCookieArray : register(t20);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t21);
Texture2D<float4> colorMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> normalMap : register(t24);
Texture2D<float4> glossMap : register(t25);
Texture2D<float4> aoMap : register(t26);
Texture2D<float4> emissiveMap : register(t29);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
Texture2DArray<float4> materialTexBC7 : register(t42);
Texture2DArray<float4> materialTexBC3 : register(t43);
Texture2DArray<float4> materialTexBC7linear : register(t44);
Texture2DArray<float4> materialTexMask : register(t45);


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
  const float4 icb[] = { { -0.808114, 0.808114, 0, 0},
                              { 0, -1.000000, 0, 0},
                              { 0.606057, 0.606057, 0, 0},
                              { -0.714286, 0, 0, 0},
                              { 0.404114, -0.404114, 0, 0},
                              { 0, 0.428571, 0, 0},
                              { -0.202057, -0.202057, 0, 0},
                              { 0.142857, 0, 0, 0} };
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t15, 224
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t16, 96
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t21, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t23, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t36, 128
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
r0.x = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yz, r0.x, l(36), t21.xxyx
r0.y = samp0[]..swiz;
r0.z = samp0[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(256), t21.xyzw
r1.x = samp0[]..swiz;
r1.y = samp0[]..swiz;
r1.z = samp0[]..swiz;
r1.w = samp0[]..swiz;
  r0.w = cmp(0 < r1.w);
  if (r0.w != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyz, r0.x, l(288), t21.xyzx
  r2.x = samp0[]..swiz;
  r2.y = samp0[]..swiz;
  r2.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r3.xyz, r0.x, l(320), t21.xyzx
  r3.x = samp0[]..swiz;
  r3.y = samp0[]..swiz;
  r3.z = samp0[]..swiz;
    r4.xyz = customizeMask.Sample(colorSampler_s, v2.xy).xyz;
    r0.x = r4.x + r4.y;
    r0.x = saturate(r0.x + r4.z);
    r2.xyz = r4.yyy * r2.xyz;
    r1.xyz = r4.xxx * r1.xyz + r2.xyz;
    r1.xyz = r4.zzz * r3.xyz + r1.xyz;
    r0.x = 1 + -r0.x;
    r2.xyz = float3(1,1,1) + -r1.xyz;
    r1.xyz = r0.xxx * r2.xyz + r1.xyz;
  } else {
    r1.xyz = float3(1,1,1);
  }
  r2.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + r1.xyz;
  r1.xyz = r2.www * r1.xyz + float3(1,1,1);
  r1.xyz = r2.xyz * r1.xyz;
  r0.x = aoMap.Sample(aoSampler_s, v2.xy).x;
  r0.w = glossMap.Sample(specColorSampler_s, v2.xy).x;
  r1.w = glossRange.y + -glossRange.x;
  r0.w = r0.w * r1.w + glossRange.x;
  r0.w = saturate(0.0588235296 * r0.w);
  r2.xyz = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r2.xyz = float3(-0.5,-0.5,-0) + r2.xyz;
  r2.xyz = baseNormalHeight * r2.xyz + float3(0.5,0.5,0);
  r2.xy = r2.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r3.x = dot(r2.xy, r2.xy);
  r3.x = 1 + -r3.x;
  r3.x = max(0, r3.x);
  r3.x = sqrt(r3.x);
  r2.z = r2.z * r2.z;
  r2.z = 0.333333343 * r2.z;
  r2.z = min(1, r2.z);
  r3.y = v8.x ? 1 : -1;
  r3.z = dot(v4.xyz, v4.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = v4.xyz * r3.zzz;
  r4.xyz = r4.xyz * r3.yyy;
  r3.z = dot(v5.xyz, v5.xyz);
  r3.z = rsqrt(r3.z);
  r5.xyz = v5.xyz * r3.zzz;
  r5.xyz = r5.xyz * r3.yyy;
  r3.z = dot(v6.xyz, v6.xyz);
  r3.z = rsqrt(r3.z);
  r6.xyz = v6.xyz * r3.zzz;
  r6.xyz = r6.xyz * r3.yyy;
  r0.w = -17 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.z + r0.w;
  r0.w = log2(r0.w);
  r0.w = -0.0588235296 * r0.w;
  r0.w = max(0, r0.w);
  r7.xyz = r6.xyz * r2.yyy;
  r7.xyz = r5.xyz * r2.xxx + r7.xyz;
  r3.xzw = r4.xyz * r3.xxx + r7.xyz;
  r2.x = dot(r3.xzw, r3.xzw);
  r2.x = rsqrt(r2.x);
  r3.xzw = r3.xzw * r2.xxx;
  r1.w = debugGlossOverride.x * r1.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.z + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r2.x = cmp(0 < debugStreamerControl.w);
  if (r2.x != 0) {
    r2.x = (int)debugStreamerControl.w;
    r2.y = colorMap.CalculateLevelOfDetailUnclamped(colorSampler_s, v2.xy);
    r2.z = colorMap.CalculateLevelOfDetail(colorSampler_s, v2.xy);
    r2.y = cmp(r2.y < r2.z);
    r2.z = cmp(0 < r2.z);
    r7.xyz = (int3)r2.xxx & int3(1,2,4);
    r8.xyz = r7.xxx ? float3(1,0,1) : r1.xyz;
    r7.xyw = r7.yyy ? float3(0,1,1) : r1.xyz;
    r7.xyw = r2.zzz ? r8.xyz : r7.xyw;
    r8.xyz = r7.zzz ? float3(0,1,0) : r1.xyz;
    r1.xyz = r2.yyy ? r7.xyw : r8.xyz;
  }
  r2.xyz = debugColorOverride.xyz + -r1.xyz;
  r1.xyz = debugColorOverride.www * r2.xyz + r1.xyz;
  r2.x = debugAlphaOverride.x + -r2.w;
  r2.x = debugAlphaOverride.w * r2.x + r2.w;
  r2.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + debugSpecularOverride.xyz;
  r2.yzw = debugSpecularOverride.www * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r1.w = r1.w + -r0.w;
  r0.w = debugGlossOverride.w * r1.w + r0.w;
  r1.w = debugOcclusionOverride.x + -r0.x;
  r0.x = debugOcclusionOverride.w * r1.w + r0.x;
  r7.xyz = v8.xxx ? v4.xyz : -v4.xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = rsqrt(r1.w);
  r7.xyz = r7.xyz * r1.www + -r3.xzw;
  r3.xzw = debugNormalOverride.www * r7.xyz + r3.xzw;
  r1.w = cmp(v0.z >= 0.984375);
  r4.w = 1.01587307 * v0.z;
  r5.w = v0.z * 64 + -63;
  r1.w = r1.w ? r5.w : r4.w;
  r1.w = max(9.99999994e-09, r1.w);
  r1.w = rcp(r1.w);
  r7.xy = (uint2)v0.yx;
  r8.xyz = ddx_coarse(v7.xyz);
  r9.xyz = ddy_coarse(v7.xyz);
  r4.w = numRefProbes + numLights;
  r10.xyz = eyeOffset.xyz + v7.xyz;
  r1.w = 0.0078125 * r1.w;
  r1.w = min(15, r1.w);
  r1.w = (uint)r1.w;
  r11.xy = (uint2)r7.yx >> int2(6,6);
  r11.z = (uint)r1.w << 4;
  r1.w = numStaticDecals & -32;
  r5.w = (int)-r1.w + numStaticDecals;
  r12.xy = float2(0,0);
  r13.w = 0;
  r10.w = 1;
  r14.xyz = float3(0,0,0);
  r15.xyz = float3(0,0,0);
  r16.xyz = float3(0,0,0);
  r6.w = 0;
  r7.zw = float2(0,0);
  while (true) {
    r8.w = cmp((uint)r7.w >= numStaticDecals);
    if (r8.w != 0) break;
    r12.z = (uint)r7.w >> 5;
    r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
    r8.w = visibleDecals.Load(r13.xyzw).x;
    r9.w = cmp((int)r1.w == (int)r7.w);
    if (r5.w == 0) r11.w = 0; else if (r5.w+0 < 32) {     r11.w = (uint)r8.w << (32-(r5.w + 0)); r11.w = (uint)r11.w >> (32-r5.w);    } else r11.w = (uint)r8.w >> 0;
    r8.w = r9.w ? r11.w : r8.w;
    r9.w = (int)r4.w + (int)r7.w;
    r13.xyz = r14.xyz;
    r17.xyz = r15.xyz;
    r18.xyz = r16.xyz;
    r11.w = r6.w;
    r12.z = r7.z;
    r12.w = r8.w;
    while (true) {
      if (r12.w == 0) break;
      r14.w = firstbitlow((uint)r12.w);
      r15.w = 1 << (int)r14.w;
      r16.w = (int)r12.w & (int)r15.w;
      if (r16.w != 0) {
        r12.w = (int)r12.w ^ (int)r15.w;
        r15.w = (int)r9.w + (int)r14.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xyzw, r15.w, l(0), t11.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xy, r15.w, l(16), t11.xyxx
      r20.x = samp0[]..swiz;
      r20.y = samp0[]..swiz;
        r19.xyz = -v7.xyz + r19.xyz;
        r20.z = r19.w;
        r19.xyz = cmp(abs(r19.xyz) < r20.zxy);
        r15.w = r19.y ? r19.x : 0;
        r15.w = r19.z ? r15.w : 0;
        if (r15.w != 0) {
          r14.w = (int)r7.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r14.w, l(0), t36.xyzx
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyz, r14.w, l(16), t36.xyzx
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyz, r14.w, l(32), t36.xyzx
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
          r22.x = r19.x;
          r22.y = r20.x;
          r22.z = r21.x;
          r15.w = dot(r22.xyz, r22.xyz);
          r15.w = rsqrt(r15.w);
          r23.xyz = r22.xyz * r15.www;
          r15.w = dot(r23.xyz, v4.xyz);
          r15.w = cmp(r15.w >= 0.5);
          if (r15.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r24.xyw, r14.w, l(48), t36.xyxz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.w = samp0[]..swiz;
            r22.w = r24.x;
            r22.x = dot(r10.xyzw, r22.xyzw);
            r25.x = r19.y;
            r25.y = r20.y;
            r25.z = r21.y;
            r25.w = r24.y;
            r22.y = dot(r10.xyzw, r25.xyzw);
            r24.x = r19.z;
            r24.y = r20.z;
            r24.z = r21.z;
            r22.z = dot(r10.xyzw, r24.xyzw);
            r19.xyz = cmp(abs(r22.xyz) < float3(1,1,1));
            r15.w = r19.y ? r19.x : 0;
            r15.w = r19.z ? r15.w : 0;
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r14.w, l(64), t36.xyzw
            r19.x = samp0[]..swiz;
            r19.y = samp0[]..swiz;
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyzw, r14.w, l(80), t36.xyzw
            r20.x = samp0[]..swiz;
            r20.y = samp0[]..swiz;
            r20.z = samp0[]..swiz;
            r20.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyzw, r14.w, l(96), t36.xyzw
            r21.x = samp0[]..swiz;
            r21.y = samp0[]..swiz;
            r21.z = samp0[]..swiz;
            r21.w = samp0[]..swiz;
              r26.x = dot(r8.xyz, r25.xyz);
              r26.y = dot(r8.xyz, r24.xyz);
              r27.x = dot(r9.xyz, r25.xyz);
              r27.y = dot(r9.xyz, r24.xyz);
              r22.xy = r22.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r26.xyz = float3(0.5,-0.5,0.5) * r26.xyx;
              r27.xyz = float3(0.5,-0.5,0.5) * r27.xyx;
              r22.zw = (int2)r20.yz & int2(65535,65535);
              if (r22.z != 0) {
                if (4 == 0) r15.w = 0; else if (4+24 < 32) {                 r15.w = (uint)r20.w << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                } else r15.w = (uint)r20.w >> 24;
                r15.w = 1 << (int)r15.w;
                r16.w = (uint)r20.w >> 28;
                r16.w = 1 << (int)r16.w;
                r17.w = cmp((int)r22.z == 4);
                if (r17.w != 0) {
                  r17.w = (int)r20.w & 4095;
                  if (12 == 0) r18.w = 0; else if (12+12 < 32) {                   r18.w = (uint)r20.w << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                  } else r18.w = (uint)r20.w >> 12;
                  r23.w = (int)r21.w & 1023;
                  r28.xz = (uint2)r15.ww;
                  r28.y = (uint)r16.w;
                  r29.xy = r22.xy * r28.zy + float2(0.5,0.5);
                  r29.zw = float2(-0.5,-0.5) + r28.zy;
                  r29.xy = min(r29.xy, r29.zw);
                  r30.x = (uint)r17.w;
                  r30.y = (uint)r18.w;
                  r29.xy = r30.xy + r29.xy;
                  r29.xy = invBcTexSizes.xy * r29.xy;
                  r29.z = (uint)r23.w;
                  r30.xyz = invBcTexSizes.xyx * r26.zyz;
                  r30.xyz = r30.xyz * r28.xyz;
                  r31.xyz = invBcTexSizes.xyx * r27.zyz;
                  r28.xyz = r31.xyz * r28.xyz;
                  r28.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.xyzx, r28.xyzx).xyzw;
                } else {
                  r17.w = cmp((int)r22.z == 1);
                  if (r17.w != 0) {
                    r17.w = (int)r20.w & 4095;
                    if (12 == 0) r18.w = 0; else if (12+12 < 32) {                     r18.w = (uint)r20.w << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                    } else r18.w = (uint)r20.w >> 12;
                    r20.w = (int)r21.w & 1023;
                    r29.xz = (uint2)r15.ww;
                    r29.y = (uint)r16.w;
                    r30.xy = r22.xy * r29.zy + float2(0.5,0.5);
                    r30.zw = float2(-0.5,-0.5) + r29.zy;
                    r30.xy = min(r30.xy, r30.zw);
                    r31.x = (uint)r17.w;
                    r31.y = (uint)r18.w;
                    r30.xy = r31.xy + r30.xy;
                    r30.xy = invBcTexSizes.zw * r30.xy;
                    r30.z = (uint)r20.w;
                    r31.xyz = invBcTexSizes.zwz * r26.zyz;
                    r31.xyz = r31.xyz * r29.xyz;
                    r32.xyz = invBcTexSizes.zwz * r27.zyz;
                    r29.xyz = r32.xyz * r29.xyz;
                    r28.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.xyzx, r29.xyzx).xyzw;
                  } else {
                    r28.xyzw = float4(1,1,1,1);
                  }
                }
                r19.xyz = r28.xyz * r19.xyz;
                r15.w = r28.w * r19.w;
              } else {
                r19.xyz = float3(0,0,0);
                r15.w = 0;
              }
              r16.w = cmp(r20.x != 1.000000);
              r17.w = r15.w + r19.w;
              r17.w = saturate(r17.w * r20.x + -r20.x);
              r15.w = r16.w ? r17.w : r15.w;
              if (r22.w != 0) {
                if (4 == 0) r16.w = 0; else if (4+24 < 32) {                 r16.w = (uint)r21.y << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                } else r16.w = (uint)r21.y >> 24;
                r16.w = 1 << (int)r16.w;
                r17.w = (uint)r21.y >> 28;
                r17.w = 1 << (int)r17.w;
                r18.w = cmp((int)r22.w == 2);
                if (r18.w != 0) {
                  r18.w = (int)r21.y & 4095;
                  if (12 == 0) r20.x = 0; else if (12+12 < 32) {                   r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                  } else r20.x = (uint)r21.y >> 12;
                  if (10 == 0) r20.w = 0; else if (10+20 < 32) {                   r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                  } else r20.w = (uint)r21.w >> 20;
                  r28.xz = (uint2)r16.ww;
                  r28.y = (uint)r17.w;
                  r29.xy = r22.xy * r28.zy + float2(0.5,0.5);
                  r29.zw = float2(-0.5,-0.5) + r28.zy;
                  r29.xy = min(r29.xy, r29.zw);
                  r30.x = (uint)r18.w;
                  r30.y = (uint)r20.x;
                  r29.xy = r30.xy + r29.xy;
                  r29.xy = invMaskTexSizes.xy * r29.xy;
                  r29.z = (uint)r20.w;
                  r30.xyz = invMaskTexSizes.xyx * r26.zyz;
                  r30.xyz = r30.xyz * r28.xyz;
                  r31.xyz = invMaskTexSizes.xyx * r27.zyz;
                  r28.xyz = r31.xyz * r28.xyz;
                  r18.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                } else {
                  r19.w = cmp((int)r22.w == 4);
                  if (r19.w != 0) {
                    r19.w = (int)r21.y & 4095;
                    if (12 == 0) r20.x = 0; else if (12+12 < 32) {                     r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                    } else r20.x = (uint)r21.y >> 12;
                    if (10 == 0) r20.w = 0; else if (10+20 < 32) {                     r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                    } else r20.w = (uint)r21.w >> 20;
                    r28.xz = (uint2)r16.ww;
                    r28.y = (uint)r17.w;
                    r22.zw = r22.xy * r28.zy + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r28.zy;
                    r22.zw = min(r29.xy, r22.zw);
                    r29.x = (uint)r19.w;
                    r29.yz = (uint2)r20.xw;
                    r22.zw = r29.xy + r22.zw;
                    r29.xy = invBcTexSizes.xy * r22.zw;
                    r30.xyz = invBcTexSizes.xyx * r26.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invBcTexSizes.xyx * r27.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r18.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                  } else {
                    r19.w = (int)r21.y & 4095;
                    if (12 == 0) r20.x = 0; else if (12+12 < 32) {                     r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                    } else r20.x = (uint)r21.y >> 12;
                    if (10 == 0) r20.w = 0; else if (10+20 < 32) {                     r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                    } else r20.w = (uint)r21.w >> 20;
                    r28.xz = (uint2)r16.ww;
                    r28.y = (uint)r17.w;
                    r22.zw = r22.xy * r28.zy + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r28.zy;
                    r22.zw = min(r29.xy, r22.zw);
                    r29.x = (uint)r19.w;
                    r29.yz = (uint2)r20.xw;
                    r22.zw = r29.xy + r22.zw;
                    r29.xy = invBcTexSizes.zw * r22.zw;
                    r30.xyz = invBcTexSizes.zwz * r26.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invBcTexSizes.zwz * r27.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r18.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                  }
                }
                r28.xyz = r18.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r16.w = saturate(1 + -r18.w);
                r19.xyz = r19.xyz * r16.www;
              } else {
                r28.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r20.xy = (uint2)r20.zy >> int2(16,16);
              if (r20.x != 0) {
                r16.w = cmp((int)r20.x == 2);
                if (r16.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(112), t36.xxxx
                r14.w = samp0[]..swiz;
                  if (4 == 0) r20.z = 0; else if (4+24 < 32) {                   r20.z = (uint)r21.z << (32-(4 + 24)); r20.z = (uint)r20.z >> (32-4);                  } else r20.z = (uint)r21.z >> 24;
                  if (12 == 0) r20.w = 0; else if (12+12 < 32) {                   r20.w = (uint)r21.z << (32-(12 + 12)); r20.w = (uint)r20.w >> (32-12);                  } else r20.w = (uint)r21.z >> 12;
                  r16.w = 1 << (int)r20.z;
                  r17.w = (uint)r21.z >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.w = (int)r21.z & 4095;
                  r14.w = (int)r14.w & 1023;
                  r29.xz = (uint2)r16.ww;
                  r29.y = (uint)r17.w;
                  r21.yz = r22.xy * r29.zy + float2(0.5,0.5);
                  r22.zw = float2(-0.5,-0.5) + r29.zy;
                  r21.yz = min(r22.zw, r21.yz);
                  r30.x = (uint)r18.w;
                  r30.y = (uint)r20.w;
                  r20.zw = r30.xy + r21.yz;
                  r30.xy = invMaskTexSizes.xy * r20.zw;
                  r30.z = (uint)r14.w;
                  r31.xyz = invMaskTexSizes.xyx * r26.zyz;
                  r31.xyz = r31.xyz * r29.xyz;
                  r32.xyz = invMaskTexSizes.xyx * r27.zyz;
                  r29.xyz = r32.xyz * r29.xyz;
                  r14.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.x, r29.x).x;
                } else {
                  r16.w = cmp((int)r20.x == 6);
                  r14.w = r16.w ? 0 : 1;
                }
              } else {
                r14.w = 1;
              }
              r14.w = saturate(0.764705896 * r14.w);
              if (r20.y != 0) {
                r16.w = cmp((int)r20.y == 3);
                if (r16.w != 0) {
                  if (4 == 0) r20.x = 0; else if (4+24 < 32) {                   r20.x = (uint)r21.x << (32-(4 + 24)); r20.x = (uint)r20.x >> (32-4);                  } else r20.x = (uint)r21.x >> 24;
                  if (12 == 0) r20.y = 0; else if (12+12 < 32) {                   r20.y = (uint)r21.x << (32-(12 + 12)); r20.y = (uint)r20.y >> (32-12);                  } else r20.y = (uint)r21.x >> 12;
                  if (10 == 0) r20.z = 0; else if (10+10 < 32) {                   r20.z = (uint)r21.w << (32-(10 + 10)); r20.z = (uint)r20.z >> (32-10);                  } else r20.z = (uint)r21.w >> 10;
                  r16.w = 1 << (int)r20.x;
                  r17.w = (uint)r21.x >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.w = (int)r21.x & 4095;
                  r21.xz = (uint2)r16.ww;
                  r21.y = (uint)r17.w;
                  r20.xw = r22.xy * r21.xy + float2(0.5,0.5);
                  r22.xy = float2(-0.5,-0.5) + r21.zy;
                  r20.xw = min(r22.xy, r20.xw);
                  r22.x = (uint)r18.w;
                  r22.yz = (uint2)r20.yz;
                  r20.xy = r22.xy + r20.xw;
                  r22.xy = invMaskTexSizes.zw * r20.xy;
                  r20.xyz = invMaskTexSizes.zwz * r26.xyz;
                  r20.xyz = r20.xyz * r21.xyz;
                  r26.xyz = invMaskTexSizes.zwz * r27.xyz;
                  r21.xyz = r26.xyz * r21.xyz;
                  r20.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r22.xyz, r20.xyz, r21.xyz).xyz;
                } else {
                  r20.xyz = float3(0.5,0.5,1);
                }
                r20.xy = r20.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                r16.w = dot(r20.xy, r20.xy);
                r16.w = 1 + -r16.w;
                r16.w = max(0, r16.w);
                r16.w = sqrt(r16.w);
                r17.w = r20.z * r20.z;
                r17.w = 0.333333343 * r17.w;
                r17.w = min(1, r17.w);
                r18.w = dot(r25.xyz, r25.xyz);
                r18.w = rsqrt(r18.w);
                r21.xyz = r25.xyz * r18.www;
                r18.w = dot(-r24.xyz, -r24.xyz);
                r18.w = rsqrt(r18.w);
                r22.xyz = -r24.xyz * r18.www;
                r23.xyz = r23.xyz * r3.yyy;
                r21.xyz = r21.xyz * r3.yyy;
                r22.xyz = r22.xyz * r3.yyy;
                r18.w = -17 * r14.w;
                r18.w = exp2(r18.w);
                r17.w = r18.w + r17.w;
                r17.w = log2(r17.w);
                r17.w = -0.0588235296 * r17.w;
                r14.w = max(0, r17.w);
                r20.yzw = r22.xyz * r20.yyy;
                r20.xyz = r21.xyz * r20.xxx + r20.yzw;
                r20.xyz = r23.xyz * r16.www + r20.xyz;
                r16.w = dot(r20.xyz, r20.xyz);
                r16.w = rsqrt(r16.w);
                r20.xyz = r20.xyz * r16.www;
                r16.w = 1 + -r15.w;
                r21.xyz = r17.xyz * r16.www;
                r17.xyz = r20.xyz * r15.www + r21.xyz;
              }
              r16.w = 1 + -r15.w;
              r20.xyz = r16.www * r13.xyz;
              r13.xyz = r19.xyz * r15.www + r20.xyz;
              r19.xyz = r18.xyz * r16.www;
              r18.xyz = r28.xyz * r15.www + r19.xyz;
              r11.w = r11.w * r16.w + r15.w;
              r16.w = r16.w * r12.z;
              r12.z = r14.w * r15.w + r16.w;
            }
          }
        }
      }
    }
    r14.xyz = r13.xyz;
    r15.xyz = r17.xyz;
    r16.xyz = r18.xyz;
    r6.w = r11.w;
    r7.z = r12.z;
    r7.w = (int)r7.w + 32;
  }
  r6.w = saturate(r6.w);
  r1.w = 1 + -r6.w;
  r1.xyz = r1.xyz * r1.www + r14.xyz;
  r2.x = r2.x * r1.w + r6.w;
  r3.xyz = r3.xzw * r1.www + r15.xyz;
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r8.y = r0.w * r1.w + r7.z;
  r2.yzw = r2.yzw * r1.www + r16.xyz;
  r0.y = saturate(r0.y);
  r0.y = hdrScale * r0.y;
  r9.xyz = cmp(r0.zzz == float3(3,2,1));
  r12.xyz = r9.zzz ? tint1.xyz : emissiveTint1.xyz;
  r9.yzw = r9.yyy ? tint2.xyz : r12.xyz;
  r9.xyz = r9.xxx ? tint3.xyz : r9.yzw;
  r0.z = dot(-v7.xyz, -v7.xyz);
  r0.z = rsqrt(r0.z);
  r12.xyz = -v7.xyz * r0.zzz;
  r0.w = dot(r12.xyz, r4.xyz);
  r4.x = dot(r12.xyz, r5.xyz);
  r4.y = dot(r12.xyz, r6.xyz);
  r4.z = cmp(0 < r0.w);
  r4.xy = -r4.xy / r0.ww;
  r4.xy = r4.zz ? r4.xy : 0;
  r4.z = 9.99999975e-06 + invertFalloff;
  r4.xy = r4.xy * r4.zz + v2.xy;
  r4.xyzw = emissiveMap.Sample(colorSampler_s, r4.xy).xyzw;
  r4.xyz = r4.xyz * r9.xyz;
  r0.w = saturate(r0.w);
  r5.x = log2(r0.w);
  r5.x = emissiveFalloffPower * r5.x;
  r5.x = exp2(r5.x);
  r0.w = 1 + -r0.w;
  r0.w = log2(r0.w);
  r0.w = emissiveFalloffPower * r0.w;
  r0.w = exp2(r0.w);
  r0.w = invertFalloff ? r0.w : r5.x;
  r5.x = cmp(emissiveFalloffPower == 0.000000);
  r0.w = r5.x ? 1 : r0.w;
  r0.y = r4.w * r0.y;
  r0.y = r0.y * r0.w;
  r0.y = r0.y * r1.w;
  r4.xyz = r4.xyz * r0.yyy;
  r0.y = cmp(isDepthHack != 0);
  r5.xy = (uint2)r7.xy;
  r0.w = dot(r5.yx, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r6.x, r7.x);
  r0.w = dot(r5.xy, float2(0.0671105608,0.00583714992));
  r0.w = frac(r0.w);
  r0.w = 52.9829178 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * 6.28318548 + gameTick.w;
  sincos(r0.w, r5.x, r9.x);
  r8.x = saturate(dot(r3.xyz, r12.xyz));
  r0.w = dot(-r12.xyz, r3.xyz);
  r0.w = r0.w + r0.w;
  r13.xyz = r3.xyz * -r0.www + -r12.xyz;
  r0.w = 17 * r8.y;
  r0.w = exp2(r0.w);
  r0.w = 2 + r0.w;
  r0.w = 2 / r0.w;
  r1.w = sqrt(r0.w);
  r5.y = 1 + -r8.y;
  r5.z = 5 * r5.y;
  r5.w = r5.y * 5 + -2.5;
  r5.w = saturate(0.400000006 * r5.w);
  r5.w = 100 * r5.w;
  r6.zw = -r5.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r6.z = exp2(r6.z);
  r6.z = r8.x * r6.z;
  r7.w = r5.z * r5.y;
  r6.w = -r7.w * 2.0159049 + r6.w;
  r6.w = exp2(r6.w);
  r6.w = r8.x * r6.w;
  r6.zw = float2(9.1368103,9.70808983) * r6.zw;
  r6.z = max(r6.z, r6.w);
  r6.z = max(1.26815999, r6.z);
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.x = 1;
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r6.w = 0;
  r7.w = 0;
  while (true) {
    r8.z = cmp((uint)r7.w >= numRefProbes);
    if (r8.z != 0) break;
    r14.z = (uint)r7.w >> 5;
    r15.xyz = (int3)r11.xyz + (int3)r14.xyz;
    r8.z = visibleProbes.Load(r15.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r7.w, l(0), t15.wxyz
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r7.w, l(16), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r7.w, l(32), t15.yxwz
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r7.w, l(48), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r7.w, l(64), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r7.w, l(80), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r9.yz, r7.w, l(96), t15.xxyx
  r9.y = samp0[]..swiz;
  r9.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r7.w, l(116), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r7.w, l(132), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r7.w, l(148), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r7.w, l(164), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r7.w, l(180), t15.zwxy
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r7.w, l(196), t15.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xy, r7.w, l(212), t15.xyxx
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
    r15.xyz = v7.xyz + -r23.yzw;
    r8.w = dot(r15.xyz, r15.xyz);
    r8.w = sqrt(r8.w);
    r8.w = cmp(probeDebugRadius >= r8.w);
    r9.w = (int)r29.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(0), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(16), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(32), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(48), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r9.w, l(64), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r9.w, l(80), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
    r11.w = dot(r36.xyz, r15.xyz);
    r11.w = saturate(r11.w + r36.w);
    r12.w = dot(r37.xyz, r15.xyz);
    r12.w = saturate(r12.w + r37.w);
    r11.w = r12.w * r11.w;
    r12.w = dot(r38.xyz, r15.xyz);
    r12.w = saturate(r12.w + r38.w);
    r11.w = r12.w * r11.w;
    r12.w = dot(r39.xyz, r15.xyz);
    r12.w = saturate(r12.w + r39.w);
    r11.w = r12.w * r11.w;
    r12.w = dot(r40.xyz, r15.xyz);
    r12.w = saturate(r12.w + r40.w);
    r11.w = r12.w * r11.w;
    r12.w = dot(r41.xyz, r15.xyz);
    r12.w = saturate(r12.w + r41.w);
    r16.x = r12.w * r11.w;
    r11.w = (int)r9.y & 1;
    r14.zw = r11.ww ? r16.xy : r16.zx;
    r36.xy = r29.zw;
    r36.z = r30.z;
    r11.w = dot(r13.xyz, r36.xyz);
    r12.w = dot(r15.xyz, r36.xyz);
    r12.w = r12.w + -r30.w;
    r16.x = cmp(r12.w >= 0);
    r12.w = max(abs(r12.w), r5.w);
    r12.w = r16.x ? r12.w : -r12.w;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r12.w / r11.w;
    r11.w = min(131072, abs(r11.w));
    r30.z = r31.z;
    r12.w = dot(r13.xyz, r30.xyz);
    r16.x = dot(r15.xyz, r30.xyz);
    r16.x = r16.x + -r31.w;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r5.w);
    r16.x = r16.w ? r16.x : -r16.x;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r16.x / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r31.z = r32.z;
    r12.w = dot(r13.xyz, r31.xyz);
    r16.x = dot(r15.xyz, r31.xyz);
    r16.x = r16.x + -r32.w;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r5.w);
    r16.x = r16.w ? r16.x : -r16.x;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r16.x / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r32.z = r33.z;
    r12.w = dot(r13.xyz, r32.xyz);
    r16.x = dot(r15.xyz, r32.xyz);
    r16.x = r16.x + -r33.w;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r5.w);
    r16.x = r16.w ? r16.x : -r16.x;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r16.x / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r33.z = r34.x;
    r12.w = dot(r13.xyz, r33.xyz);
    r16.x = dot(r15.xyz, r33.xyz);
    r16.x = r16.x + -r34.y;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r5.w);
    r16.x = r16.w ? r16.x : -r16.x;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r16.x / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r35.zw = r34.zw;
    r12.w = dot(r13.zxy, r35.xzw);
    r16.x = dot(r15.zxy, r35.xzw);
    r16.x = r16.x + -r35.y;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r5.w);
    r16.x = r16.w ? r16.x : -r16.x;
    r12.w = max(1.00000001e-07, -r12.w);
    r12.w = r16.x / r12.w;
    r11.w = min(abs(r12.w), r11.w);
    r30.x = r26.w;
    r30.yz = r27.zw;
    r30.xyz = r30.xyz + r15.xyz;
    r30.xyz = r13.xyz * r11.www + r30.xyz;
    r12.w = dot(r30.xyz, r30.xyz);
    r12.w = sqrt(r12.w);
    r11.w = r11.w / r12.w;
    r11.w = r11.w + r11.w;
    r11.w = sqrt(r11.w);
    r11.w = r5.y * 5 + r11.w;
    r11.w = -0.844799995 + r11.w;
    r23.y = r24.z;
    r23.z = r25.x;
    r31.x = dot(r30.xyz, r23.xyz);
    r32.xy = r24.xw;
    r32.z = r25.w;
    r31.y = dot(r30.xyz, r32.xyz);
    r25.x = r24.y;
    r31.z = dot(r30.xyz, r25.xyz);
    if (6 == 0) r16.x = 0; else if (6+25 < 32) {     r16.x = (uint)r29.y << (32-(6 + 25)); r16.x = (uint)r16.x >> (32-6);    } else r16.x = (uint)r29.y >> 25;
    if (9 == 0) r16.w = 0; else if (9+16 < 32) {     r16.w = (uint)r29.y << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);    } else r16.w = (uint)r29.y >> 16;
    r31.w = (uint)r16.w;
    r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r11.w).xyz;
    r29.yzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
    r29.yzw = cmp((int3)r29.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r29.z | (int)r29.y;
    r11.w = (int)r29.w | (int)r11.w;
    r24.xyz = r11.www ? float3(1,1,0) : r24.xyz;
    r30.x = dot(r15.xyz, r23.xyz);
    r30.y = dot(r15.xyz, r32.xyz);
    r30.z = dot(r15.xyz, r25.xyz);
    r26.xyz = saturate(r30.xyz * r26.xyz + float3(0.5,0.5,0.5));
    r27.z = r28.x;
    r26.xyz = r26.xyz * r27.xyz + r28.yzw;
    r31.x = dot(r3.xyz, r23.xyz);
    r31.y = dot(r3.xyz, r32.xyz);
    r31.z = dot(r3.xyz, r25.xyz);
    r23.xyz = cmp(float3(0,0,0) < r31.xyz);
    r17.z = r23.x ? 0 : 0.5;
    r25.xyz = r26.xyz + r17.xyz;
    r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r18.z = r23.y ? 0 : 0.5;
    r23.xyw = r26.xyz + r18.xyz;
    r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
    r19.z = r23.z ? 0 : 0.5;
    r26.xyz = r26.xyz + r19.xyz;
    r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
    r27.xyz = r31.xyz * r31.xyz;
    r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
    r29.yzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
    r29.yzw = cmp((int3)r29.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r29.z | (int)r29.y;
    r11.w = (int)r29.w | (int)r11.w;
    r28.xyz = r11.www ? float3(1,1,0) : r28.xyz;
    r30.xyzw = r21.xyzw;
    r29.yzw = r22.yzw;
    r11.w = r6.w;
    r12.w = r8.z;
    while (true) {
      if (r12.w == 0) break;
      r16.w = firstbitlow((uint)r12.w);
      r16.w = 1 << (int)r16.w;
      r17.z = (int)r12.w & (int)r16.w;
      if (r17.z != 0) {
        r16.w = ~(int)r16.w;
        r12.w = (int)r12.w & (int)r16.w;
        if (r8.w != 0) {
          r16.w = r9.y;
          r31.xy = r14.zw;
          r17.z = 1;
          while (true) {
            r17.w = cmp((int)r17.z >= (int)r16.x);
            if (r17.w != 0) break;
            r17.w = (int)r9.w + (int)r17.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(0), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(16), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(32), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(48), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(64), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(80), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
            r17.w = dot(r32.xyz, r15.xyz);
            r17.w = saturate(r17.w + r32.w);
            r17.w = r31.x * r17.w;
            r18.z = dot(r33.xyz, r15.xyz);
            r18.z = saturate(r18.z + r33.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r34.xyz, r15.xyz);
            r18.z = saturate(r18.z + r34.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r35.xyz, r15.xyz);
            r18.z = saturate(r18.z + r35.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r36.xyz, r15.xyz);
            r18.z = saturate(r18.z + r36.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r37.xyz, r15.xyz);
            r18.z = saturate(r18.z + r37.w);
            r31.x = r18.z * r17.w;
            r18.w = (uint)r16.w >> 2;
            if (1 == 0) r19.z = 0; else if (1+2 < 32) {             r19.z = (uint)r16.w << (32-(1 + 2)); r19.z = (uint)r19.z >> (32-1);            } else r19.z = (uint)r16.w >> 2;
            r19.w = (int)r18.w & 2;
            r20.z = max(r31.y, r31.x);
            r17.w = -r17.w * r18.z + 1;
            r17.w = r31.y * r17.w;
            r20.y = r19.w ? r17.w : r20.z;
            r31.xy = r19.zz ? r31.xy : r20.xy;
            r17.z = (int)r17.z + 1;
            r16.w = r18.w;
          }
          r31.y = saturate(r31.y);
          r16.w = r31.y * r9.z;
          r17.z = cmp(0 < r16.w);
          if (r17.z != 0) {
            r32.z = r31.y * r9.z + r29.w;
            r16.w = r16.w * r29.x;
            r20.yzw = r27.xyz * r16.www;
            r31.xzw = r23.xyw * r20.zzz;
            r31.xzw = r25.xyz * r20.yyy + r31.xzw;
            r20.yzw = r26.xyz * r20.www + r31.xzw;
            r31.xzw = r20.yzw * r28.xyz;
            r17.z = dot(r31.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r33.xyz = r20.yzw * r28.xyz + r30.xyz;
            r17.w = r17.z * r6.z;
            r20.yzw = r24.xyz * r16.www;
            r16.w = dot(r20.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r16.w = r6.z * r17.z + r16.w;
            r16.w = r17.w / r16.w;
            r34.x = r30.w;
            r34.yz = r29.yz;
            r32.xyw = r20.zwy * r16.www + r34.yzx;
            r33.w = r32.w;
          } else {
            r33.xyzw = r30.xyzw;
            r32.xyz = r29.yzw;
          }
          r11.w = -1;
          r30.xyzw = r33.xyzw;
          r29.yzw = r32.xyz;
          break;
        }
      }
    }
    if (r11.w != 0) {
      r21.xyzw = r30.xyzw;
      r22.yzw = r29.yzw;
      r6.w = -1;
      break;
    }
    r7.w = (int)r7.w + 32;
    r21.xyzw = r30.xyzw;
    r22.yzw = r29.yzw;
    r6.w = r11.w;
  }
  if (r6.w == 0) {
    r6.w = numRefProbes + -numOverrideProbes;
    r7.w = (int)r6.w & -32;
    r8.z = (int)r6.w + (int)-r7.w;
    r8.w = numRefProbes & -32;
    r9.y = (int)-r8.w + numRefProbes;
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r20.xy = float2(0,0);
    r23.xyzw = r21.xyzw;
    r24.yzw = r22.yzw;
    r9.z = r7.w;
    while (true) {
      r9.w = cmp((uint)r9.z >= numRefProbes);
      if (r9.w != 0) break;
      r14.z = (uint)r9.z >> 5;
      r15.xyz = (int3)r11.xyz + (int3)r14.xyz;
      r9.w = visibleProbes.Load(r15.xyzw).x;
      r11.w = cmp((int)r7.w == (int)r9.z);
      bitmask.w = ((~(-1 << r8.z)) << 0) & 0xffffffff;  r12.w = (((uint)0 << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
      r9.w = r11.w ? r12.w : r9.w;
      r11.w = cmp((int)r8.w == (int)r9.z);
      if (r9.y == 0) r12.w = 0; else if (r9.y+0 < 32) {       r12.w = (uint)r9.w << (32-(r9.y + 0)); r12.w = (uint)r12.w >> (32-r9.y);      } else r12.w = (uint)r9.w >> 0;
      r9.w = r11.w ? r12.w : r9.w;
      r11.w = (int)r9.z + numLights;
      r25.xyzw = r23.xyzw;
      r26.xyz = r24.yzw;
      r12.w = r9.w;
      while (true) {
        if (r12.w == 0) break;
        r14.z = firstbitlow((uint)r12.w);
        r14.w = 1 << (int)r14.z;
        r15.x = (int)r12.w & (int)r14.w;
        if (r15.x != 0) {
          r12.w = (int)r12.w ^ (int)r14.w;
          r14.w = (int)r11.w + (int)r14.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(0), t11.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r14.w, l(16), t11.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
          r27.xyz = -v7.xyz + r27.xyz;
          r15.z = r27.w;
          r15.xyz = cmp(abs(r27.xyz) < r15.zxy);
          r14.w = r15.y ? r15.x : 0;
          r14.w = r15.z ? r14.w : 0;
          if (r14.w != 0) {
            r14.z = (int)r9.z + (int)r14.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.z, l(0), t15.wxyz
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xy, r14.z, l(96), t15.xyxx
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.z, l(116), t15.zwxy
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
            r29.xyz = v7.xyz + -r27.yzw;
            r14.w = (int)r28.w & 0x0000ffff;
            if (6 == 0) r15.z = 0; else if (6+25 < 32) {             r15.z = (uint)r28.w << (32-(6 + 25)); r15.z = (uint)r15.z >> (32-6);            } else r15.z = (uint)r28.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(0), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r16.w = dot(r30.xyz, r29.xyz);
            r16.w = saturate(r16.w + r30.w);
            r17.w = dot(r31.xyz, r29.xyz);
            r17.w = saturate(r17.w + r31.w);
            r16.w = r17.w * r16.w;
            r17.w = dot(r32.xyz, r29.xyz);
            r17.w = saturate(r17.w + r32.w);
            r16.w = r17.w * r16.w;
            r17.w = dot(r33.xyz, r29.xyz);
            r17.w = saturate(r17.w + r33.w);
            r16.w = r17.w * r16.w;
            r17.w = dot(r34.xyz, r29.xyz);
            r17.w = saturate(r17.w + r34.w);
            r16.w = r17.w * r16.w;
            r17.w = dot(r35.xyz, r29.xyz);
            r17.w = saturate(r17.w + r35.w);
            r16.x = r17.w * r16.w;
            r16.w = r15.x ? 0.000000 : 0;
            r16.xw = r16.ww ? r16.xy : r16.zx;
            r17.w = r15.x;
            r30.xy = r16.xw;
            r18.z = 1;
            while (true) {
              r18.w = cmp((int)r18.z >= (int)r15.z);
              if (r18.w != 0) break;
              r18.w = (int)r14.w + (int)r18.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r18.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r18.w = dot(r31.xyz, r29.xyz);
              r18.w = saturate(r18.w + r31.w);
              r18.w = r30.x * r18.w;
              r19.w = dot(r32.xyz, r29.xyz);
              r19.w = saturate(r19.w + r32.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r33.xyz, r29.xyz);
              r19.w = saturate(r19.w + r33.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r34.xyz, r29.xyz);
              r19.w = saturate(r19.w + r34.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r35.xyz, r29.xyz);
              r19.w = saturate(r19.w + r35.w);
              r18.w = r19.w * r18.w;
              r19.w = dot(r36.xyz, r29.xyz);
              r19.w = saturate(r19.w + r36.w);
              r30.x = r19.w * r18.w;
              r20.w = (uint)r17.w >> 2;
              if (1 == 0) r27.w = 0; else if (1+2 < 32) {               r27.w = (uint)r17.w << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);              } else r27.w = (uint)r17.w >> 2;
              r29.w = (int)r20.w & 2;
              r30.z = max(r30.y, r30.x);
              r18.w = -r18.w * r19.w + 1;
              r18.w = r30.y * r18.w;
              r18.y = r29.w ? r18.w : r30.z;
              r30.xy = r27.ww ? r30.xy : r18.xy;
              r18.z = (int)r18.z + 1;
              r17.w = r20.w;
            }
            r30.y = saturate(r30.y);
            r14.w = r30.y * r15.y;
            r15.x = cmp(0 < r14.w);
            if (r15.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.z, l(16), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.z, l(32), t15.yxwz
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.z, l(48), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.z, l(64), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.z, l(80), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.z, l(132), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.z, l(148), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.z, l(164), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r14.z, l(180), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r14.z, l(196), t15.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r14.z, l(212), t15.xyxx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
              r26.z = r30.y * r15.y + r26.z;
              r14.z = r14.w * r28.z;
              r28.z = r36.z;
              r14.w = dot(r13.xyz, r28.xyz);
              r15.x = dot(r29.xyz, r28.xyz);
              r15.x = r15.x + -r36.w;
              r15.y = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r5.w);
              r15.x = r15.y ? r15.x : -r15.x;
              r14.w = max(1.00000001e-07, -r14.w);
              r14.w = r15.x / r14.w;
              r14.w = min(131072, abs(r14.w));
              r36.z = r37.z;
              r15.x = dot(r13.xyz, r36.xyz);
              r15.y = dot(r29.xyz, r36.xyz);
              r15.y = r15.y + -r37.w;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.w);
              r15.y = r15.z ? r15.y : -r15.y;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.y / r15.x;
              r14.w = min(abs(r15.x), r14.w);
              r37.z = r38.z;
              r15.x = dot(r13.xyz, r37.xyz);
              r15.y = dot(r29.xyz, r37.xyz);
              r15.y = r15.y + -r38.w;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.w);
              r15.y = r15.z ? r15.y : -r15.y;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.y / r15.x;
              r14.w = min(abs(r15.x), r14.w);
              r38.z = r39.z;
              r15.x = dot(r13.xyz, r38.xyz);
              r15.y = dot(r29.xyz, r38.xyz);
              r15.y = r15.y + -r39.w;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.w);
              r15.y = r15.z ? r15.y : -r15.y;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.y / r15.x;
              r14.w = min(abs(r15.x), r14.w);
              r39.z = r40.x;
              r15.x = dot(r13.xyz, r39.xyz);
              r15.y = dot(r29.xyz, r39.xyz);
              r15.y = r15.y + -r40.y;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.w);
              r15.y = r15.z ? r15.y : -r15.y;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.y / r15.x;
              r14.w = min(abs(r15.x), r14.w);
              r41.zw = r40.zw;
              r15.x = dot(r13.zxy, r41.xzw);
              r15.y = dot(r29.zxy, r41.xzw);
              r15.y = r15.y + -r41.y;
              r15.z = cmp(r15.y >= 0);
              r15.y = max(abs(r15.y), r5.w);
              r15.y = r15.z ? r15.y : -r15.y;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r15.y / r15.x;
              r14.w = min(abs(r15.x), r14.w);
              r15.x = r33.w;
              r15.yz = r34.zw;
              r15.xyz = r15.xyz + r29.xyz;
              r15.xyz = r13.xyz * r14.www + r15.xyz;
              r16.x = dot(r15.xyz, r15.xyz);
              r16.x = sqrt(r16.x);
              r14.w = r14.w / r16.x;
              r14.w = r14.w + r14.w;
              r14.w = sqrt(r14.w);
              r14.w = r5.y * 5 + r14.w;
              r14.w = -0.844799995 + r14.w;
              r27.y = r31.z;
              r27.z = r32.x;
              r36.x = dot(r15.xyz, r27.xyz);
              r28.xy = r31.xw;
              r28.z = r32.w;
              r36.y = dot(r15.xyz, r28.xyz);
              r32.x = r31.y;
              r36.z = dot(r15.xyz, r32.xyz);
              if (9 == 0) r15.x = 0; else if (9+16 < 32) {               r15.x = (uint)r28.w << (32-(9 + 16)); r15.x = (uint)r15.x >> (32-9);              } else r15.x = (uint)r28.w >> 16;
              r36.w = (uint)r15.x;
              r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r14.w).xyz;
              r18.yzw = (int3)r15.xyz & int3(-2147483648,-2147483648,-2147483648);
              r18.yzw = cmp((int3)r18.yzw == int3(2139095040,2139095040,2139095040));
              r14.w = (int)r18.z | (int)r18.y;
              r14.w = (int)r18.w | (int)r14.w;
              r15.xyz = r14.www ? float3(1,1,0) : r15.xyz;
              r31.x = dot(r29.xyz, r27.xyz);
              r31.y = dot(r29.xyz, r28.xyz);
              r31.z = dot(r29.xyz, r32.xyz);
              r18.yzw = saturate(r31.xyz * r33.xyz + float3(0.5,0.5,0.5));
              r34.z = r35.x;
              r18.yzw = r18.yzw * r34.xyz + r35.yzw;
              r36.x = dot(r3.xyz, r27.xyz);
              r36.y = dot(r3.xyz, r28.xyz);
              r36.z = dot(r3.xyz, r32.xyz);
              r27.xyz = cmp(float3(0,0,0) < r36.xyz);
              r17.z = r27.x ? 0 : 0.5;
              r28.xyz = r18.yzw + r17.xyz;
              r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
              r29.xyz = r36.xyz * r36.xyz;
              r29.xyz = r29.xyz * r14.zzz;
              r19.z = r27.y ? 0 : 0.5;
              r27.xyw = r19.xyz + r18.yzw;
              r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
              r27.xyw = r27.xyw * r29.yyy;
              r27.xyw = r28.xyz * r29.xxx + r27.xyw;
              r20.z = r27.z ? 0 : 0.5;
              r18.yzw = r20.xyz + r18.yzw;
              r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
              r18.yzw = r18.yzw * r29.zzz + r27.xyw;
              r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
              r28.xyz = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
              r28.xyz = cmp((int3)r28.xyz == int3(2139095040,2139095040,2139095040));
              r14.w = (int)r28.y | (int)r28.x;
              r14.w = (int)r28.z | (int)r14.w;
              r27.xyz = r14.www ? float3(1,1,0) : r27.xyz;
              r28.xyz = r27.xyz * r18.yzw;
              r14.w = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r25.xyz = r18.yzw * r27.xyz + r25.xyz;
              r16.x = r14.w * r6.z;
              r15.xyz = r15.xyz * r14.zzz;
              r14.z = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.z = r6.z * r14.w + r14.z;
              r14.z = r16.x / r14.z;
              r27.x = r25.w;
              r27.yz = r26.xy;
              r26.xyw = r15.yzx * r14.zzz + r27.yzx;
              r25.w = r26.w;
            }
          }
        }
      }
      r23.xyzw = r25.xyzw;
      r24.yzw = r26.xyz;
      r9.z = (int)r9.z + 32;
    }
    r8.w = cmp(r24.w < 1);
    if (r8.w != 0) {
      r14.xy = float2(0,0);
      r15.w = 0;
      r16.yz = float2(0,1);
      r17.xy = float2(0,0);
      r18.x = 1;
      r19.xy = float2(0,0);
      r20.xy = float2(0,0);
      r25.x = r23.w;
      r25.yzw = r24.yzw;
      r9.yzw = r23.xyz;
      r8.w = r24.w;
      r11.w = 0;
      while (true) {
        r12.w = cmp((uint)r11.w >= (uint)r6.w);
        if (r12.w != 0) break;
        r14.z = (uint)r11.w >> 5;
        r15.xyz = (int3)r11.xyz + (int3)r14.xyz;
        r12.w = visibleProbes.Load(r15.xyzw).x;
        r14.z = cmp((int)r7.w == (int)r11.w);
        if (r8.z == 0) r14.w = 0; else if (r8.z+0 < 32) {         r14.w = (uint)r12.w << (32-(r8.z + 0)); r14.w = (uint)r14.w >> (32-r8.z);        } else r14.w = (uint)r12.w >> 0;
        r12.w = r14.z ? r14.w : r12.w;
        r14.z = (int)r11.w + numLights;
        r26.xyzw = r25.xyzw;
        r15.xyz = r9.yzw;
        r14.w = r8.w;
        r16.w = r12.w;
        while (true) {
          if (r16.w == 0) break;
          r17.w = firstbitlow((uint)r16.w);
          r18.z = 1 << (int)r17.w;
          r18.w = (int)r16.w & (int)r18.z;
          if (r18.w != 0) {
            r16.w = (int)r16.w ^ (int)r18.z;
            r18.z = (int)r14.z + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r18.z, l(0), t11.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xy, r18.z, l(16), t11.xyxx
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
            r27.xyz = -v7.xyz + r27.xyz;
            r28.z = r27.w;
            r27.xyz = cmp(abs(r27.xyz) < r28.zxy);
            r18.z = r27.y ? r27.x : 0;
            r18.z = r27.z ? r18.z : 0;
            if (r18.z != 0) {
              r17.w = (int)r11.w + (int)r17.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(0), t15.wxyz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.zw, r17.w, l(96), t15.xxxy
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(116), t15.zwxy
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
              r29.xyz = v7.xyz + -r27.yzw;
              r19.w = (int)r28.w & 0x0000ffff;
              if (6 == 0) r20.w = 0; else if (6+25 < 32) {               r20.w = (uint)r28.w << (32-(6 + 25)); r20.w = (uint)r20.w >> (32-6);              } else r20.w = (uint)r28.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r22.w = dot(r30.xyz, r29.xyz);
              r22.w = saturate(r22.w + r30.w);
              r27.w = dot(r31.xyz, r29.xyz);
              r27.w = saturate(r27.w + r31.w);
              r22.w = r27.w * r22.w;
              r27.w = dot(r32.xyz, r29.xyz);
              r27.w = saturate(r27.w + r32.w);
              r22.w = r27.w * r22.w;
              r27.w = dot(r33.xyz, r29.xyz);
              r27.w = saturate(r27.w + r33.w);
              r22.w = r27.w * r22.w;
              r27.w = dot(r34.xyz, r29.xyz);
              r27.w = saturate(r27.w + r34.w);
              r22.w = r27.w * r22.w;
              r27.w = dot(r35.xyz, r29.xyz);
              r27.w = saturate(r27.w + r35.w);
              r16.x = r27.w * r22.w;
              r22.w = (int)r18.z & 1;
              r30.xy = r22.ww ? r16.xy : r16.zx;
              r16.x = r18.z;
              r31.xy = r30.xy;
              r22.w = 1;
              while (true) {
                r27.w = cmp((int)r22.w >= (int)r20.w);
                if (r27.w != 0) break;
                r27.w = (int)r19.w + (int)r22.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r27.w, l(0), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r27.w, l(16), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r27.w, l(32), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r27.w, l(48), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r27.w, l(64), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r27.w, l(80), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r27.w = dot(r32.xyz, r29.xyz);
                r27.w = saturate(r27.w + r32.w);
                r27.w = r31.x * r27.w;
                r29.w = dot(r33.xyz, r29.xyz);
                r29.w = saturate(r29.w + r33.w);
                r27.w = r29.w * r27.w;
                r29.w = dot(r34.xyz, r29.xyz);
                r29.w = saturate(r29.w + r34.w);
                r27.w = r29.w * r27.w;
                r29.w = dot(r35.xyz, r29.xyz);
                r29.w = saturate(r29.w + r35.w);
                r27.w = r29.w * r27.w;
                r29.w = dot(r36.xyz, r29.xyz);
                r29.w = saturate(r29.w + r36.w);
                r27.w = r29.w * r27.w;
                r29.w = dot(r37.xyz, r29.xyz);
                r29.w = saturate(r29.w + r37.w);
                r31.x = r29.w * r27.w;
                r30.z = (uint)r16.x >> 2;
                if (1 == 0) r30.w = 0; else if (1+2 < 32) {                 r30.w = (uint)r16.x << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);                } else r30.w = (uint)r16.x >> 2;
                r31.z = (int)r30.z & 2;
                r31.w = max(r31.y, r31.x);
                r27.w = -r27.w * r29.w + 1;
                r27.w = r31.y * r27.w;
                r18.y = r31.z ? r27.w : r31.w;
                r31.xy = r30.ww ? r31.xy : r18.xy;
                r22.w = (int)r22.w + 1;
                r16.x = r30.z;
              }
              r16.x = saturate(r31.y + -r14.w);
              r18.y = r16.x * r18.w;
              r18.z = cmp(0 < r18.y);
              if (r18.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(16), t15.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(32), t15.yxwz
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(48), t15.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(64), t15.zwxy
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(80), t15.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(132), t15.zwxy
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(148), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(164), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r17.w, l(180), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r17.w, l(196), t15.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r17.w, l(212), t15.xyxx
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
                r26.w = r16.x * r18.w + r26.w;
                r16.x = r18.y * r28.z;
                r28.z = r36.z;
                r17.w = dot(r13.xyz, r28.xyz);
                r18.y = dot(r29.xyz, r28.xyz);
                r18.y = r18.y + -r36.w;
                r18.z = cmp(r18.y >= 0);
                r18.y = max(abs(r18.y), r5.w);
                r18.y = r18.z ? r18.y : -r18.y;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.y / r17.w;
                r17.w = min(131072, abs(r17.w));
                r36.z = r37.z;
                r18.y = dot(r13.xyz, r36.xyz);
                r18.z = dot(r29.xyz, r36.xyz);
                r18.z = r18.z + -r37.w;
                r18.w = cmp(r18.z >= 0);
                r18.z = max(abs(r18.z), r5.w);
                r18.z = r18.w ? r18.z : -r18.z;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r18.z / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r37.z = r38.z;
                r18.y = dot(r13.xyz, r37.xyz);
                r18.z = dot(r29.xyz, r37.xyz);
                r18.z = r18.z + -r38.w;
                r18.w = cmp(r18.z >= 0);
                r18.z = max(abs(r18.z), r5.w);
                r18.z = r18.w ? r18.z : -r18.z;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r18.z / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r38.z = r39.z;
                r18.y = dot(r13.xyz, r38.xyz);
                r18.z = dot(r29.xyz, r38.xyz);
                r18.z = r18.z + -r39.w;
                r18.w = cmp(r18.z >= 0);
                r18.z = max(abs(r18.z), r5.w);
                r18.z = r18.w ? r18.z : -r18.z;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r18.z / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r39.z = r40.x;
                r18.y = dot(r13.xyz, r39.xyz);
                r18.z = dot(r29.xyz, r39.xyz);
                r18.z = r18.z + -r40.y;
                r18.w = cmp(r18.z >= 0);
                r18.z = max(abs(r18.z), r5.w);
                r18.z = r18.w ? r18.z : -r18.z;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r18.z / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r41.zw = r40.zw;
                r18.y = dot(r13.zxy, r41.xzw);
                r18.z = dot(r29.zxy, r41.xzw);
                r18.z = r18.z + -r41.y;
                r18.w = cmp(r18.z >= 0);
                r18.z = max(abs(r18.z), r5.w);
                r18.z = r18.w ? r18.z : -r18.z;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r18.z / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r28.x = r33.w;
                r28.yz = r34.zw;
                r18.yzw = r28.xyz + r29.xyz;
                r18.yzw = r13.xyz * r17.www + r18.yzw;
                r19.w = dot(r18.yzw, r18.yzw);
                r19.w = sqrt(r19.w);
                r17.w = r17.w / r19.w;
                r17.w = r17.w + r17.w;
                r17.w = sqrt(r17.w);
                r17.w = r5.y * 5 + r17.w;
                r17.w = -0.844799995 + r17.w;
                r27.y = r30.z;
                r27.z = r32.x;
                r36.x = dot(r18.yzw, r27.xyz);
                r28.xy = r30.xw;
                r28.z = r32.w;
                r36.y = dot(r18.yzw, r28.xyz);
                r32.x = r30.y;
                r36.z = dot(r18.yzw, r32.xyz);
                if (9 == 0) r18.y = 0; else if (9+16 < 32) {                 r18.y = (uint)r28.w << (32-(9 + 16)); r18.y = (uint)r18.y >> (32-9);                } else r18.y = (uint)r28.w >> 16;
                r36.w = (uint)r18.y;
                r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r17.w).xyz;
                r30.xyz = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
                r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
                r17.w = (int)r30.y | (int)r30.x;
                r17.w = (int)r30.z | (int)r17.w;
                r18.yzw = r17.www ? float3(1,1,0) : r18.yzw;
                r30.x = dot(r29.xyz, r27.xyz);
                r30.y = dot(r29.xyz, r28.xyz);
                r30.z = dot(r29.xyz, r32.xyz);
                r29.xyz = saturate(r30.xyz * r33.xyz + float3(0.5,0.5,0.5));
                r34.z = r35.x;
                r29.xyz = r29.xyz * r34.xyz + r35.yzw;
                r36.x = dot(r3.xyz, r27.xyz);
                r36.y = dot(r3.xyz, r28.xyz);
                r36.z = dot(r3.xyz, r32.xyz);
                r27.xyz = cmp(float3(0,0,0) < r36.xyz);
                r17.z = r27.x ? 0 : 0.5;
                r28.xyz = r29.xyz + r17.xyz;
                r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r30.xyz = r36.xyz * r36.xyz;
                r30.xyz = r30.xyz * r16.xxx;
                r19.z = r27.y ? 0 : 0.5;
                r27.xyw = r29.xyz + r19.xyz;
                r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
                r27.xyw = r27.xyw * r30.yyy;
                r27.xyw = r28.xyz * r30.xxx + r27.xyw;
                r20.z = r27.z ? 0 : 0.5;
                r28.xyz = r29.xyz + r20.xyz;
                r28.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
                r27.xyz = r28.xyz * r30.zzz + r27.xyw;
                r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
                r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
                r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
                r17.z = (int)r29.y | (int)r29.x;
                r17.z = (int)r29.z | (int)r17.z;
                r28.xyz = r17.zzz ? float3(1,1,0) : r28.xyz;
                r29.xyz = r28.xyz * r27.xyz;
                r17.z = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r15.xyz = r27.xyz * r28.xyz + r15.xyz;
                r17.w = r17.z * r6.z;
                r18.yzw = r18.yzw * r16.xxx;
                r16.x = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r16.x = r6.z * r17.z + r16.x;
                r16.x = r17.w / r16.x;
                r26.xyz = r18.yzw * r16.xxx + r26.xyz;
              }
            }
          }
        }
        r25.xyzw = r26.xyzw;
        r9.yzw = r15.xyz;
        r11.w = (int)r11.w + 32;
      }
      r24.xyzw = r25.zxyw;
      r23.xyz = r9.yzw;
      r24.xyzw = r24.yzxw;
    } else {
      r24.x = r23.w;
    }
    r5.y = max(1, r24.w);
    r5.y = rcp(r5.y);
    r24.w = saturate(r24.w);
    r21.xyz = r23.xyz * r5.yyy;
    r22.xyz = r24.xyz * r5.yyy;
    r5.w = cmp(r24.w < 0.99000001);
    if (r5.w != 0) {
      r5.w = 1 + -r24.w;
      r6.z = sunConstants.globalProbeExposure * r5.w;
      r9.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
      r14.x = globalProbeConstants.data[0].w * r9.y;
      r14.yz = globalProbeConstants.data[1].xy * r9.zw;
      r9.yzw = saturate(float3(0.5,0.5,0.5) + r14.xyz);
      r14.xy = globalProbeConstants.data[1].zw * r9.yz;
      r14.z = globalProbeConstants.data[2].x * r9.w;
      r9.yzw = globalProbeConstants.data[2].yzw + r14.xyz;
      r14.xyz = cmp(float3(0,0,0) < r3.xyz);
      r14.xyz = r14.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r14.w = 0;
      r15.xyz = r14.wwx + r9.yzw;
      r15.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
      r16.xyz = r3.xyz * r3.xyz;
      r16.xyz = r16.xyz * r6.zzz;
      r17.xyz = r14.wwy + r9.yzw;
      r17.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r17.xyz = r17.xyz * r16.yyy;
      r15.xyz = r15.xyz * r16.xxx + r17.xyz;
      r9.yzw = r14.wwz + r9.yzw;
      r9.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
      r9.yzw = r9.yzw * r16.zzz + r15.xyz;
      r3.w = 0;
      r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
      r9.yzw = r14.xyz * r9.yzw;
      r3.w = dot(r9.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r21.xyz = r23.xyz * r5.yyy + r9.yzw;
      r13.w = 0;
      r9.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r5.z).xyz;
      r5.y = sunConstants.globalProbeExposure * r5.w + -r3.w;
      r3.w = r8.y * r5.y + r3.w;
      r22.xyz = r9.yzw * r3.www + r22.xyz;
    }
  } else {
    r22.x = r21.w;
  }
  r3.w = r8.x + r0.x;
  r3.w = log2(abs(r3.w));
  r3.w = r3.w * r1.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w + r0.x;
  r3.w = saturate(-1 + r3.w);
  r14.xyz = r21.xyz * r0.xxx;
  r5.yz = r8.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.yz = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.yz, 0).xy;
  r8.yzw = r22.xyz * r3.www;
  r15.xyz = r8.zwy * r5.yyy;
  r5.yzw = r8.yzw * r5.zzz;
  r0.x = sqrt(r1.w);
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = r0.x * r0.x;
  r3.w = 0.5 * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r6.z = r8.x * r0.x + r3.w;
  r0.x = r6.z * r0.x;
  r3.w = r6.z * r3.w;
  r6.z = dot(r3.xyz, sunConstants.wldDir.xyz);
  r6.w = saturate(r6.z);
  r7.w = cmp(0 >= r6.w);
  if (r7.w != 0) {
    r8.y = 0;
  }
  if (r7.w == 0) {
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r9.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r9.yzw;
    r9.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r9.yzw;
    r9.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r9.yzw;
    r7.w = -sunConstants.splitDepthOffset + r9.w;
    r7.w = -r7.w * 6.10351563e-05 + 1;
    r8.z = saturate(r7.w);
    r8.z = cmp(r7.w == r8.z);
    if (r8.z != 0) {
      r8.zw = float2(0,0);
      while (true) {
        r11.w = cmp(r8.z >= 3);
        if (r11.w != 0) break;
        r11.w = (uint)r8.z;
        r16.xy = -sunConstants.splitPinTransform[r11.w].xy + r9.yz;
        r12.w = max(abs(r16.x), abs(r16.y));
        r8.w = sunConstants.splitPinTransform[r11.w].z * r12.w;
        r11.w = cmp(r8.w < 1);
        if (r11.w != 0) {
          break;
        }
        r8.z = 1 + r8.z;
        r8.w = 0;
      }
    } else {
      r8.zw = float2(3,0);
    }
    r11.w = cmp(r8.z >= 3);
    if (r11.w != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r9.yzy * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r17.xy = floor(r17.xy);
      r12.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r12.w = r12.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r12.w = (uint)r12.w;
      r12.w = (int)r12.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r16.w = (int)r13.w & 0x40000000;
      r17.x = (uint)r13.w << 2;
      if (r16.w == 0) {
        r16.w = (int)r13.w & 0x01ffffff;
        r18.x = (int)r12.w + (int)r16.w;
        r12.w = (uint)r13.w >> 25;
        r12.w = (uint)r12.w;
        r16.xyz = r16.xyz * r12.www;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.yz = (uint2)r16.zy >> int2(6,6);
        r12.w = (int)r18.z & 0xc0000000;
        r13.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r13.w = r17.z ? r18.z : r13.w;
        r16.w = (uint)r13.w >> 13;
        r13.w = r17.y ? r16.w : r13.w;
        r13.w = (int)r13.w & 8191;
        r19.x = (int)r13.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.yzw = r12.www ? r18.xyz : r19.xyz;
        r19.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r13.w = (int)r17.w & 0xc0000000;
        r16.w = (int)r17.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.w = r20.y ? r17.w : r16.w;
        r18.w = (uint)r16.w >> 13;
        r16.w = r20.x ? r18.w : r16.w;
        r16.w = (int)r16.w & 8191;
        r19.x = (int)r16.w + (int)r17.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.yzw = r13.www ? r17.yzw : r19.xzw;
        r17.yzw = r12.www ? r18.xyz : r17.yzw;
        r12.w = (int)r17.w & 0xc0000000;
        if (r12.w == 0) {
          r12.w = (int)-r17.z + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r12.ww;
          r12.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
          r13.w = (int)r13.w * 10;
          r12.w = (uint)r12.w >> (uint)r13.w;
          r12.w = (int)r12.w & 1023;
          r18.x = (int)r12.w + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r12.w = (int)-r18.y + 6;
          r19.xy = (uint2)r16.zy >> (uint2)r12.ww;
          r12.w = (int)r18.w & 0xc0000000;
          r13.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r19.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r19.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
          r16.w = (int)r16.w * 10;
          r13.w = (uint)r13.w >> (uint)r16.w;
          r13.w = (int)r13.w & 1023;
          r19.x = (int)r13.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r12.www ? r18.xyw : r19.xyz;
          r13.w = (int)-r19.y + 6;
          r18.yz = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r19.z & 0xc0000000;
          r16.w = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r18.y << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
          r17.z = (int)r17.z * 10;
          r16.w = (uint)r16.w >> (uint)r17.z;
          r16.w = (int)r16.w & 1023;
          r20.x = (int)r16.w + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r13.ww ? r19.xz : r20.xy;
          r17.yw = r12.ww ? r18.xw : r18.yz;
        }
        r12.w = (int)r17.w & 0xc0000000;
        if (r12.w == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r17.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r17.w >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r16.w = (uint)r18.x;
          r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
          r16.w = 3.05185094e-05 * r16.w;
          r17.z = (int)r16.y & 3;
          r17.z = (int)r17.z + (int)r17.y;
          r17.z = (int)r17.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.z, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.z = (((uint)r16.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.w = (((uint)r16.z << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r16.x = (uint)r17.z >> (uint)r18.x;
          r16.x = (int)r16.x & 255;
          r16.x = (uint)r16.x;
          r16.x = r16.x * r16.w;
          r16.x = r16.x * 0.00392156886 + r13.w;
          r16.y = (int)r18.z + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.z >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r18.w;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r16.w;
          r13.w = r16.y * 1.52590219e-05 + r13.w;
          r17.x = r18.y ? r16.x : r13.w;
        } else {
          r13.w = (int)r17.w & 0x80000000;
          r16.x = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          r13.w = r13.w ? r16.x : 0;
          r16.x = (uint)r17.w << 2;
          r16.y = (uint)r13.w >> 16;
          r16.y = f16tof32(r16.y);
          r13.w = (int)r13.w & 0x0000ffff;
          r13.w = f16tof32(r13.w);
          r16.x = r9.y * r16.y + r16.x;
          r13.w = r9.z * r13.w + r16.x;
          r17.x = r12.w ? r13.w : r17.x;
        }
      }
      r9.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r9.w;
      r9.w = cmp(r17.x < r9.w);
      r8.y = r9.w ? 0 : 1;
    }
    if (r11.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r8.z;
        r16.xy = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r16.xy = sunConstants.splitPinTransform[r9.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r9.w + r8.z;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
        r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r9.w = r11.w + r9.w;
        r9.w = saturate(-1 + r9.w);
        r11.w = r9.w * r9.w;
        r8.y = r11.w * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r6.x;
        r9.w = (uint)r8.z;
        r8.z = 1 + r8.z;
        r8.z = min(2, r8.z);
        r8.w = 1 + -r8.w;
        r8.w = 28 * r8.w;
        r8.zw = (uint2)r8.zw;
        r17.xy = -sunConstants.splitPinTransform[r9.w].xy + r9.yz;
        r17.xy = sunConstants.splitPinTransform[r9.w].zz * r17.xy;
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.yz = -sunConstants.splitPinTransform[r8.z].xy + r9.yz;
        r9.yz = sunConstants.splitPinTransform[r8.z].zz * r9.yz;
        r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r7.x;
        r16.z = r6.x;
        r11.w = 0;
        r12.w = 0;
        while (true) {
          r13.w = cmp((uint)r12.w >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r8.w < (uint)r12.w);
          r17.zw = r13.ww ? r9.yz : r17.xy;
          r16.w = r13.w ? sunConstants.splitPinTransform[r8.z].w : sunConstants.splitPinTransform[r9.w].w;
          r13.w = r13.w ? r8.z : r9.w;
          r18.x = dot(icb[r12.w+0].yx, r16.xy);
          r18.y = dot(icb[r12.w+0].yx, r16.yz);
          r18.xy = r18.xy * r16.ww + r17.zw;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
          r16.w = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r13.w = r16.w + r13.w;
          r13.w = saturate(-1 + r13.w);
          r11.w = r13.w * 0.125 + r11.w;
          r12.w = (int)r12.w + 1;
        }
        r7.w = r11.w * r11.w;
        r8.y = r7.w * r11.w;
      }
    }
  }
  r7.w = cmp(0 < r6.w);
  if (r7.w != 0) {
    r7.w = cmp(0 < r8.y);
    if (r7.w != 0) {
      r7.w = sunConstants.specScale * r0.w;
      r7.w = r7.w * r6.w;
      if (sunConstants.sunCookieIndex != 0) {
        r10.w = 1;
        r8.z = dot(sunConstants.sunCookieTransform[0].xyzw, r10.xyzw);
        r8.w = dot(sunConstants.sunCookieTransform[1].xyzw, r10.xyzw);
        r10.xy = frac(r8.zw);
        r8.z = -1 + (int14)sunConstants.sunCookieIndex;
        r10.z = (uint)r8.z;
        r9.yzw = gCookieArray.SampleLevel(samplerLinear_s, r10.xyz, 0).xyz;
        r9.yzw = float3(-1,-1,-1) + r9.yzw;
        r9.yzw = sunConstants.sunCookieIntensity * r9.yzw + float3(1,1,1);
        r9.yzw = sunConstants.color.xyz * r9.yzw;
      } else {
        r9.yzw = sunConstants.color.xyz;
      }
      r8.z = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r8.z);
      r8.w = r0.y ? r8.w : 0;
      if (r8.w != 0) {
        r8.z = (int)r8.z + numLights;
        r8.z = (int)r8.z + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
      r8.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r8.z, l(68), t12.xyzw
      r10.x = samp0[]..swiz;
      r10.y = samp0[]..swiz;
      r10.z = samp0[]..swiz;
      r10.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.z, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.z, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r11.w = abs(r6.z) * -0.200000003 + 0.400000006;
        r19.xyz = r3.xyz * r11.www + v7.xyz;
        r19.w = 1;
        r10.x = dot(r10.xyzw, r19.xyzw);
        r10.y = dot(r16.xyzw, r19.xyzw);
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.xy = r10.xy + r18.zw;
        r10.xy = r10.xy * r18.xy;
        r10.zw = r8.ww / r17.xz;
        r16.xy = float2(1,1) + -r10.zw;
        r16.xy = cmp(r10.xy >= r16.xy);
        r10.zw = cmp(r10.zw >= r10.xy);
        r10.zw = (int2)r10.zw | (int2)r16.xy;
        r10.z = (int)r10.w | (int)r10.z;
        if (r10.z == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.z, r8.z, l(28), t12.xxxx
        r10.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r8.z, l(164), t12.xyxx
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
          r8.z = dot(r16.xyzw, r19.xyzw);
          r10.xy = saturate(r10.xy);
          r16.xy = r10.xy * r17.xz + r17.yw;
          r8.z = r8.z + r18.x;
          r8.z = r8.z / r18.y;
          r8.z = max(6.10351563e-05, r8.z);
          r10.x = r10.z ? 0.000000 : 0;
          if (enableDitheredShadow != 0) {
            r17.x = -r6.x;
            r18.z = (uint)r10.x;
            r17.y = r7.x;
            r17.z = r6.x;
            r10.yz = float2(0,0);
            while (true) {
              r10.w = cmp((int)r10.z >= 8);
              if (r10.w != 0) break;
              r19.x = dot(icb[r10.z+0].yx, r17.xy);
              r19.y = dot(icb[r10.z+0].yx, r17.yz);
              r18.xy = r19.xy * r8.ww + r16.xy;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.z).x;
              r10.y = r10.w * 0.125 + r10.y;
              r10.z = (int)r10.z + 1;
            }
          } else {
            r16.z = (uint)r10.x;
            r10.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.z).x;
          }
          r8.z = r10.y * r10.y;
          r8.z = r8.z * r10.y;
        } else {
          r8.z = 1;
        }
        r8.y = r8.y * r8.z;
      } else {
        r8.z = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r8.z);
        r10.x = ~(int)r0.y;
        r8.w = r8.w ? r10.x : 0;
        if (r8.w != 0) {
          r8.z = (int)r8.z + numLights;
          r8.z = (int)r8.z + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r8.z, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r8.z, l(68), t12.xyzw
        r10.x = samp0[]..swiz;
        r10.y = samp0[]..swiz;
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r8.z, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r8.z, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r11.w = abs(r6.z) * -0.200000003 + 0.400000006;
          r19.xyz = r3.xyz * r11.www + v7.xyz;
          r19.w = 1;
          r10.x = dot(r10.xyzw, r19.xyzw);
          r10.y = dot(r16.xyzw, r19.xyzw);
          r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r10.xy = r10.xy + r18.zw;
          r10.xy = r10.xy * r18.xy;
          r10.zw = r8.ww / r17.xz;
          r16.xy = float2(1,1) + -r10.zw;
          r16.xy = cmp(r10.xy >= r16.xy);
          r10.zw = cmp(r10.zw >= r10.xy);
          r10.zw = (int2)r10.zw | (int2)r16.xy;
          r10.z = (int)r10.w | (int)r10.z;
          if (r10.z == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.z, r8.z, l(28), t12.xxxx
          r10.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r8.z, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r8.z, l(164), t12.xyxx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
            r8.z = dot(r16.xyzw, r19.xyzw);
            r10.xy = saturate(r10.xy);
            r16.xy = r10.xy * r17.xz + r17.yw;
            r8.z = r8.z + r18.x;
            r8.z = r8.z / r18.y;
            r8.z = max(6.10351563e-05, r8.z);
            r10.x = r10.z ? 0.000000 : 0;
            if (enableDitheredShadow != 0) {
              r17.x = -r6.x;
              r18.z = (uint)r10.x;
              r17.y = r7.x;
              r17.z = r6.x;
              r10.yz = float2(0,0);
              while (true) {
                r10.w = cmp((int)r10.z >= 8);
                if (r10.w != 0) break;
                r19.x = dot(icb[r10.z+0].yx, r17.xy);
                r19.y = dot(icb[r10.z+0].yx, r17.yz);
                r18.xy = r19.xy * r8.ww + r16.xy;
                r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r8.z).x;
                r10.y = r10.w * 0.125 + r10.y;
                r10.z = (int)r10.z + 1;
              }
            } else {
              r16.z = (uint)r10.x;
              r10.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r8.z).x;
            }
            r8.z = r10.y * r10.y;
            r8.z = r8.z * r10.y;
          } else {
            r8.z = 1;
          }
          r8.y = r8.y * r8.z;
        }
      }
      r8.z = -r8.x * 0.5 + 1;
      r8.z = -r6.w * r8.z + 1;
      r8.z = r8.z * r8.z;
      r8.z = -r8.z * 0.620000005 + 0.620000005;
      r8.z = r8.z + -r6.w;
      r8.z = r1.w * r8.z + r6.w;
      r8.z = r8.z * r8.y;
      r6.z = cmp(0 < r6.z);
      r10.xyz = r8.zzz * r9.yzw + r14.xyz;
      r16.xyz = -v7.xyz * r0.zzz + sunConstants.wldDir.xyz;
      r0.z = dot(r16.xyz, r16.xyz);
      r0.z = rsqrt(r0.z);
      r16.xyz = r16.xyz * r0.zzz;
      r0.z = dot(r16.xyz, r12.xyz);
      r8.z = dot(r3.xyz, r16.xyz);
      r8.w = abs(r8.z) * r0.w + -abs(r8.z);
      r8.z = abs(r8.z) * r8.w + 1;
      r6.w = r6.w * r0.x + r3.w;
      r8.z = r8.z * r8.z;
      r6.w = r8.z * r6.w;
      r6.w = rcp(r6.w);
      r6.w = r6.w * r7.w;
      r6.w = r8.y * r6.w;
      r6.w = 0.25 * r6.w;
      r8.yzw = r6.www * r9.yzw + r5.yzw;
      r0.z = saturate(1 + -r0.z);
      r7.w = r0.z * r0.z;
      r7.w = r7.w * r7.w;
      r0.z = r7.w * r0.z;
      r0.z = r6.w * r0.z;
      r16.xyz = r0.zzz * r9.zwy + r15.xyz;
      r10.w = r16.z;
      r14.w = r15.z;
      r14.xyzw = r6.zzzz ? r10.xyzw : r14.xyzw;
      r16.zw = r8.yz;
      r15.zw = r5.yz;
      r10.xyzw = r6.zzzz ? r16.xyzw : r15.xyzw;
      r5.w = r6.z ? r8.w : r5.w;
      r15.z = r14.w;
      r15.xy = r10.xy;
      r5.yz = r10.zw;
    }
  }
  r10.x = -r6.x;
  r0.z = ~(int)r0.y;
  r6.z = -r8.x * 0.5 + 1;
  r8.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v7.xyz;
  r17.w = 1;
  r18.w = 1;
  r10.z = r6.x;
  r19.w = 1;
  r20.z = 1;
  r21.w = 1;
  r10.yw = r7.xx;
  r6.y = r10.w;
  r22.w = 1;
  r7.y = r10.x;
  r7.z = r6.x;
  r23.w = 1;
  r24.x = r7.x;
  r24.y = r10.x;
  r24.z = r6.x;
  r25.x = r7.x;
  r25.y = r10.x;
  r25.z = r6.x;
  r26.x = r7.x;
  r26.y = r10.x;
  r26.z = r6.x;
  r9.yzw = r14.xyz;
  r27.xyz = r15.zxy;
  r28.xyz = r5.yzw;
  r6.w = enableDitheredShadow;
  r7.w = 0;
  while (true) {
    r8.w = cmp((uint)r7.w >= numLights);
    if (r8.w != 0) break;
    r8.z = (uint)r7.w >> 5;
    r16.xyz = (int3)r8.xyz + (int3)r11.xyz;
    r8.z = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r9.yzw;
    r29.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r8.w = r6.w;
    r11.w = r8.z;
    while (true) {
      if (r11.w == 0) break;
      r12.w = firstbitlow((uint)r11.w);
      r13.w = 1 << (int)r12.w;
      r14.w = (int)r11.w & (int)r13.w;
      if (r14.w != 0) {
        r11.w = (int)r11.w ^ (int)r13.w;
        r12.w = (int)r7.w + (int)r12.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(0), t11.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r12.w, l(16), t11.xyxx
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
        r31.xyz = -v7.xyz + r31.xyz;
        r32.z = r31.w;
        r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
        r13.w = r31.y ? r31.x : 0;
        r13.w = r31.z ? r13.w : 0;
        if (r13.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r12.w, l(0), t12.wxyz
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r12.w, l(16), t12.zxyw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r12.w, l(32), t12.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r12.w, l(48), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r12.w, l(64), t12.yzwx
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r12.w, l(80), t12.xyzw
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r12.w, l(96), t12.yzwx
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
          if (3 == 0) r13.w = 0; else if (3+24 < 32) {           r13.w = (uint)r32.w << (32-(3 + 24)); r13.w = (uint)r13.w >> (32-3);          } else r13.w = (uint)r32.w >> 24;
          switch (r13.w) {
            case 4 :            r13.w = cmp(0 < r37.x);
            r38.xy = r36.zw;
            r38.z = r37.w;
            r39.xyz = -r38.xyz * float3(0.5,0.5,0.5) + r31.yzw;
            r40.xyz = -v7.xyz + r39.xyz;
            r14.w = dot(r38.xyz, r40.xyz);
            r15.w = saturate(-r14.w / r37.x);
            r41.xyz = r15.www * r38.xyz + r39.xyz;
            r41.xyz = r13.www ? r41.xyz : r31.yzw;
            r41.xyz = -v7.xyz + r41.xyz;
            r20.w = dot(r41.xyz, r41.xyz);
            r24.w = rsqrt(r20.w);
            r41.xyz = r41.xyz * r24.www;
            r24.w = dot(r3.xyz, r41.xyz);
            r25.w = saturate(r24.w);
            r26.w = cmp(0 < r25.w);
            if (r26.w != 0) {
              r26.w = sqrt(r20.w);
              r27.w = r34.x * r34.x;
              r20.w = r27.w / r20.w;
              r20.w = min(1, r20.w);
              r41.xy = saturate(r26.ww * r33.xz + r33.yw);
              r41.zw = r41.xy * r41.xy;
              r41.xy = r41.xy * float2(-2,-2) + float2(3,3);
              r41.xy = r41.zw * r41.xy;
              r20.w = r41.x * r20.w;
              r20.w = r20.w * r41.y;
              r26.w = cmp(0 < r20.w);
              if (r26.w != 0) {
                if (3 == 0) r26.w = 0; else if (3+27 < 32) {                 r26.w = (uint)r32.w << (32-(3 + 27)); r26.w = (uint)r26.w >> (32-3);                } else r26.w = (uint)r32.w >> 27;
                r26.w = cmp((int)r26.w != 1);
                if (r26.w != 0) {
                  r26.w = abs(r24.w) * -0.200000003 + 0.400000006;
                  r41.xyz = r3.xyz * r26.www + v7.xyz;
                  r41.xyz = r41.xyz + -r35.xyz;
                  r26.w = max(abs(r41.y), abs(r41.z));
                  r26.w = max(abs(r41.x), r26.w);
                  r26.w = r36.x / r26.w;
                  r26.w = r26.w + r36.y;
                  r27.w = dot(r41.xyz, r41.xyz);
                  r27.w = rsqrt(r27.w);
                  r26.w = max(6.10351563e-05, r26.w);
                  r28.w = (int)r32.w & 0x0000ffff;
                  r42.w = (uint)r28.w;
                  r28.w = 0;
                  r29.w = 0;
                  while (true) {
                    r30.w = cmp((int)r29.w >= 8);
                    if (r30.w != 0) break;
                    r43.y = dot(icb[r29.w+0].yx, r10.xy);
                    r43.z = dot(icb[r29.w+0].yx, r10.yz);
                    r43.yz = r43.yz * r34.yy;
                    r43.x = r43.y * r9.x;
                    r43.w = r43.y * r5.x;
                    r42.xyz = r41.xyz * r27.www + r43.xzw;
                    r30.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyzw, r26.w).x;
                    r28.w = r30.w * 0.125 + r28.w;
                    r29.w = (int)r29.w + 1;
                  }
                } else {
                  r28.w = 1;
                }
                r20.w = r28.w * r20.w;
                r26.w = cmp(0 < r20.w);
                if (r26.w != 0) {
                  r26.w = r32.x * r0.w;
                  r26.w = 0.25 * r26.w;
                  r27.w = dot(r38.xyz, r13.xyz);
                  r29.w = dot(r13.xyz, r40.xyz);
                  r30.w = -r27.w * r27.w + r37.x;
                  r14.w = r27.w * r29.w + -r14.w;
                  r14.w = saturate(r14.w / r30.w);
                  r27.w = r30.w / r37.x;
                  r27.w = 10 * r27.w;
                  r27.w = min(1, r27.w);
                  r14.w = r14.w + -r15.w;
                  r14.w = r27.w * r14.w + r15.w;
                  r38.xyz = r14.www * r38.xyz + r39.xyz;
                  r38.xyz = r13.www ? r38.xyz : r31.yzw;
                  r38.xyz = -v7.xyz + r38.xyz;
                  r13.w = dot(r38.xyz, r38.xyz);
                  r13.w = rsqrt(r13.w);
                  r39.xyz = r38.xyz * r13.www;
                  if (4 == 0) r14.w = 0; else if (4+16 < 32) {                   r14.w = (uint)r32.w << (32-(4 + 16)); r14.w = (uint)r14.w >> (32-4);                  } else r14.w = (uint)r32.w >> 16;
                  r15.w = cmp(0 < (uint)r14.w);
                  r15.w = r0.y ? r15.w : 0;
                  if (r15.w != 0) {
                    r14.w = (int)r14.w + numLights;
                    r14.w = (int)r14.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r14.w, l(52), t12.xxxx
                  r15.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(100), t12.xyzw
                  r40.x = samp0[]..swiz;
                  r40.y = samp0[]..swiz;
                  r40.z = samp0[]..swiz;
                  r40.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(116), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                    r27.w = abs(r24.w) * -0.200000003 + 0.400000006;
                    r18.xyz = r3.xyz * r27.www + v7.xyz;
                    r27.w = dot(r40.xyzw, r18.xyzw);
                    r29.w = dot(r41.xyzw, r18.xyzw);
                    r30.w = cmp(r29.w < r27.w);
                    if (r30.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(68), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(84), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r14.w, l(132), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r14.w, l(148), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r14.w, l(164), t12.xyxx
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                      r40.x = dot(r40.xyzw, r18.xyzw);
                      r40.y = dot(r41.xyzw, r18.xyzw);
                      r18.xy = r40.xy / r29.ww;
                      r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r18.xy = r18.xy + r43.zw;
                      r18.xy = r18.xy * r43.xy;
                      r40.xy = r15.ww / r42.xz;
                      r40.zw = float2(1,1) + -r40.xy;
                      r40.zw = cmp(r18.xy >= r40.zw);
                      r40.xy = cmp(r40.xy >= r18.xy);
                      r40.xy = (int2)r40.xy | (int2)r40.zw;
                      r18.z = (int)r40.y | (int)r40.x;
                      r18.xy = saturate(r18.xy);
                      r40.xy = r18.xy * r42.xz + r42.yw;
                      r18.x = r44.y * r29.w;
                      r18.y = r44.x * r29.w + r27.w;
                      r18.x = r18.y / r18.x;
                    } else {
                      r18.z = -1;
                    }
                    r18.y = (int)r30.w | (int)r18.z;
                    if (r18.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(28), t12.xxxx
                    r14.w = samp0[]..swiz;
                      r18.x = max(6.10351563e-05, r18.x);
                      r14.w = (int)r14.w & 0x0000ffff;
                      if (r8.w != 0) {
                        r41.z = (uint)r14.w;
                        r18.yz = float2(0,0);
                        while (true) {
                          r27.w = cmp((int)r18.z >= 8);
                          if (r27.w != 0) break;
                          r42.x = dot(icb[r18.z+0].yx, r10.xw);
                          r42.y = dot(icb[r18.z+0].xy, r6.xy);
                          r41.xy = r42.xy * r15.ww + r40.xy;
                          r27.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r18.x).x;
                          r18.y = r27.w * 0.125 + r18.y;
                          r18.z = (int)r18.z + 1;
                        }
                      } else {
                        r40.z = (uint)r14.w;
                        r18.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                      }
                      r14.w = r18.y * r18.y;
                      r14.w = r14.w * r18.y;
                    } else {
                      r14.w = 1;
                    }
                    r20.w = r20.w * r14.w;
                  } else {
                    if (4 == 0) r14.w = 0; else if (4+20 < 32) {                     r14.w = (uint)r32.w << (32-(4 + 20)); r14.w = (uint)r14.w >> (32-4);                    } else r14.w = (uint)r32.w >> 20;
                    r15.w = cmp(0 < (uint)r14.w);
                    r15.w = r15.w ? r0.z : 0;
                    if (r15.w != 0) {
                      r14.w = (int)r14.w + numLights;
                      r14.w = (int)r14.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r14.w, l(52), t12.xxxx
                    r15.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(100), t12.xyzw
                    r40.x = samp0[]..swiz;
                    r40.y = samp0[]..swiz;
                    r40.z = samp0[]..swiz;
                    r40.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(116), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                      r18.x = abs(r24.w) * -0.200000003 + 0.400000006;
                      r19.xyz = r3.xyz * r18.xxx + v7.xyz;
                      r18.x = dot(r40.xyzw, r19.xyzw);
                      r18.z = dot(r41.xyzw, r19.xyzw);
                      r27.w = cmp(r18.z < r18.x);
                      if (r27.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r14.w, l(68), t12.xyzw
                      r40.x = samp0[]..swiz;
                      r40.y = samp0[]..swiz;
                      r40.z = samp0[]..swiz;
                      r40.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r14.w, l(84), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r14.w, l(132), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r14.w, l(148), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xy, r14.w, l(164), t12.xyxx
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                        r40.x = dot(r40.xyzw, r19.xyzw);
                        r40.y = dot(r41.xyzw, r19.xyzw);
                        r19.xy = r40.xy / r18.zz;
                        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r19.xy = r19.xy + r43.zw;
                        r19.xy = r19.xy * r43.xy;
                        r40.xy = r15.ww / r42.xz;
                        r40.zw = float2(1,1) + -r40.xy;
                        r40.zw = cmp(r19.xy >= r40.zw);
                        r40.xy = cmp(r40.xy >= r19.xy);
                        r40.xy = (int2)r40.xy | (int2)r40.zw;
                        r19.z = (int)r40.y | (int)r40.x;
                        r19.xy = saturate(r19.xy);
                        r40.xy = r19.xy * r42.xz + r42.yw;
                        r19.x = r44.y * r18.z;
                        r18.x = r44.x * r18.z + r18.x;
                        r18.x = r18.x / r19.x;
                      } else {
                        r19.z = -1;
                      }
                      r18.z = (int)r27.w | (int)r19.z;
                      if (r18.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(28), t12.xxxx
                      r14.w = samp0[]..swiz;
                        r18.x = max(6.10351563e-05, r18.x);
                        r14.w = (int)r14.w & 0x0000ffff;
                        if (r8.w != 0) {
                          r19.z = (uint)r14.w;
                          r18.z = 0;
                          r27.w = 0;
                          while (true) {
                            r29.w = cmp((int)r27.w >= 8);
                            if (r29.w != 0) break;
                            r41.x = dot(icb[r27.w+0].xy, r7.xy);
                            r41.y = dot(icb[r27.w+0].yx, r7.xz);
                            r19.xy = r41.xy * r15.ww + r40.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r18.x).x;
                            r18.z = r19.x * 0.125 + r18.z;
                            r27.w = (int)r27.w + 1;
                          }
                        } else {
                          r40.z = (uint)r14.w;
                          r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r40.xyz, r18.x).x;
                        }
                        r14.w = r18.z * r18.z;
                        r14.w = r14.w * r18.z;
                      } else {
                        r14.w = 1;
                      }
                      r20.w = r20.w * r14.w;
                    }
                  }
                  r14.w = -r25.w * r6.z + 1;
                  r14.w = r14.w * r14.w;
                  r14.w = -r14.w * 0.620000005 + 0.620000005;
                  r14.w = r14.w + -r25.w;
                  r14.w = r1.w * r14.w + r25.w;
                  r14.w = r14.w * r20.w;
                  r32.x = r31.x;
                  r15.w = cmp(0 < r24.w);
                  r19.xyz = r14.www * r32.xyz + r16.xyz;
                  r14.w = saturate(dot(r3.xyz, r39.xyz));
                  r38.xyz = r38.xyz * r13.www + r12.xyz;
                  r13.w = dot(r38.xyz, r38.xyz);
                  r13.w = rsqrt(r13.w);
                  r38.xyz = r38.xyz * r13.www;
                  r13.w = dot(r38.xyz, r12.xyz);
                  r18.x = dot(r3.xyz, r38.xyz);
                  r24.w = abs(r18.x) * r0.w + -abs(r18.x);
                  r18.x = abs(r18.x) * r24.w + 1;
                  r24.w = r14.w * r0.x + r3.w;
                  r18.x = r18.x * r18.x;
                  r18.x = r18.x * r24.w;
                  r18.x = rcp(r18.x);
                  r14.w = r14.w * r26.w;
                  r14.w = r18.x * r14.w;
                  r14.w = r14.w * r20.w;
                  r38.xyz = r14.www * r32.xyz + r30.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r18.x = r13.w * r13.w;
                  r18.x = r18.x * r18.x;
                  r13.w = r18.x * r13.w;
                  r13.w = r14.w * r13.w;
                  r39.xyz = r13.www * r32.xyz + r29.xyz;
                  r16.xyz = r15.www ? r19.xyz : r16.xyz;
                  r29.xyz = r15.www ? r39.xyz : r29.xyz;
                  r30.xyz = r15.www ? r38.xyz : r30.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r34.zw;
            r19.z = r35.w;
            r19.xyz = -v7.xyz + r19.xyz;
            r13.w = dot(r19.xyz, r19.xyz);
            r13.w = rsqrt(r13.w);
            r38.xyz = r19.xyz * r13.www;
            r14.w = dot(r3.xyz, r38.xyz);
            r15.w = saturate(r14.w);
            r18.x = cmp(0 < r15.w);
            if (r18.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r12.w, l(112), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r12.w, l(128), t12.zxyw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
              r40.xyz = r38.xyz;
              r40.w = r39.y;
              r18.x = dot(r40.xyzw, r17.xyzw);
              r20.w = cmp(r18.x < 1);
              if (r20.w != 0) {
                r41.xyz = float3(1,1,1);
                r20.w = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(172), t12.yzwx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(188), t12.wxyz
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(204), t12.xyzw
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.w, r12.w, l(236), t12.xxxx
              r24.w = samp0[]..swiz;
                r45.xyz = -v7.xyz + r31.yzw;
                r25.w = r34.x * r34.x;
                r26.w = dot(r45.xyz, r45.xyz);
                r25.w = r25.w / r26.w;
                r25.w = min(1, r25.w);
                r33.xy = saturate(r18.xx * r33.xz + r33.yw);
                r33.zw = r33.xy * r33.xy;
                r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                r33.xy = r33.zw * r33.xy;
                r25.w = r33.x * r25.w;
                r25.w = r25.w * r33.y;
                r35.w = r36.x;
                r33.x = dot(r35.xyzw, r17.xyzw);
                r45.xyz = r36.yzw;
                r45.w = r37.w;
                r33.y = dot(r45.xyzw, r17.xyzw);
                r20.xy = r33.xy / r18.xx;
                r18.x = cmp(r42.w < 0.00048828125);
                if (r18.x != 0) {
                  r43.y = r44.x;
                  r33.xy = saturate(abs(r20.xy) * r43.zw + r43.xy);
                  r33.zw = r33.xy * r33.xy;
                  r33.xy = r33.xy * float2(-2,-2) + float2(3,3);
                  r33.xy = r33.zw * r33.xy;
                  r18.x = r33.x * r33.y;
                } else {
                  r42.w = r43.y;
                  r33.xyzw = saturate(r42.xyzw * abs(r20.yyxx));
                  r33.xyzw = log2(r33.xyzw);
                  r33.xyzw = r43.xxxx * r33.xyzw;
                  r33.xyzw = exp2(r33.xyzw);
                  r33.xy = r33.xy + r33.zw;
                  r33.xy = log2(r33.xy);
                  r33.xy = r44.xx * r33.xy;
                  r33.xy = exp2(r33.xy);
                  r26.w = r43.z * r33.x;
                  r27.w = r43.w * r33.y + -1;
                  r26.w = r43.w * r33.y + -r26.w;
                  r26.w = saturate(r27.w / r26.w);
                  r27.w = r26.w * r26.w;
                  r26.w = r26.w * -2 + 3;
                  r18.x = r27.w * r26.w;
                }
                r20.w = r25.w * r18.x;
                r18.x = (int)r24.w & 255;
                if (r18.x != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyz, r12.w, l(220), t12.xyzx
                r33.x = samp0[]..swiz;
                r33.y = samp0[]..swiz;
                r33.z = samp0[]..swiz;
                  r24.w = dot(r44.yzw, r20.xyz);
                  r20.x = dot(r33.xyz, r20.xyz);
                  r33.x = frac(r24.w);
                  r33.y = frac(r20.x);
                  r18.x = (int)r18.x + -1;
                  r33.z = (uint)r18.x;
                  r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r33.xyz, 0).xyz;
                } else {
                  r41.xyz = float3(1,1,1);
                }
              }
              r31.yz = r32.yz;
              r31.xyz = r31.xyz * r41.xyz;
              r18.x = cmp(0 < r20.w);
              if (r18.x != 0) {
                if (3 == 0) r18.x = 0; else if (3+27 < 32) {                 r18.x = (uint)r32.w << (32-(3 + 27)); r18.x = (uint)r18.x >> (32-3);                } else r18.x = (uint)r32.w >> 27;
                r18.x = cmp((int)r18.x != 1);
                if (r18.x != 0) {
                  r18.x = abs(r14.w) * -0.200000003 + 0.400000006;
                  r21.xyz = r3.xyz * r18.xxx + v7.xyz;
                  r38.xyz = r37.xyz;
                  r18.x = dot(r38.xyzw, r21.xyzw);
                  r20.x = dot(r40.xyzw, r21.xyzw);
                  r20.y = cmp(r20.x >= r18.x);
                  if (r20.y != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.y, r12.w, l(144), t12.xxxx
                  r39.y = samp0[]..swiz;
                    r35.w = r36.x;
                    r33.x = dot(r35.xyzw, r21.xyzw);
                    r37.xyz = r36.yzw;
                    r33.y = dot(r37.xyzw, r21.xyzw);
                    r21.xy = r33.xy / r20.xx;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r21.xy * r39.zw + r39.xy;
                    r12.w = r18.x / r20.x;
                    r12.w = max(6.10351563e-05, r12.w);
                    r18.x = (int)r32.w & 0x0000ffff;
                    if (r8.w != 0) {
                      r33.z = (uint)r18.x;
                      r20.xy = float2(0,0);
                      while (true) {
                        r24.w = cmp((int)r20.y >= 8);
                        if (r24.w != 0) break;
                        r35.x = dot(icb[r20.y+0].xy, r24.xy);
                        r35.y = dot(icb[r20.y+0].yx, r24.xz);
                        r33.xy = r35.xy * r34.yy + r21.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r12.w).x;
                        r20.x = r24.w * 0.125 + r20.x;
                        r20.y = (int)r20.y + 1;
                      }
                    } else {
                      r21.z = (uint)r18.x;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r12.w).x;
                    }
                    r12.w = r20.x * r20.x;
                    r12.w = r12.w * r20.x;
                  } else {
                    r12.w = 1;
                  }
                } else {
                  r12.w = 1;
                }
                r12.w = r20.w * r12.w;
                r18.x = cmp(0 < r12.w);
                if (r18.x != 0) {
                  r18.x = r32.x * r0.w;
                  r18.x = r18.x * r15.w;
                  if (4 == 0) r20.y = 0; else if (4+16 < 32) {                   r20.y = (uint)r32.w << (32-(4 + 16)); r20.y = (uint)r20.y >> (32-4);                  } else r20.y = (uint)r32.w >> 16;
                  r20.w = cmp(0 < (uint)r20.y);
                  r20.w = r0.y ? r20.w : 0;
                  if (r20.w != 0) {
                    r20.y = (int)r20.y + numLights;
                    r20.y = (int)r20.y + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r20.y, l(52), t12.xxxx
                  r20.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r20.y, l(68), t12.xyzw
                  r33.x = samp0[]..swiz;
                  r33.y = samp0[]..swiz;
                  r33.z = samp0[]..swiz;
                  r33.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r20.y, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r20.y, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r20.y, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r20.y, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r20.y, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r21.x = abs(r14.w) * -0.200000003 + 0.400000006;
                    r22.xyz = r3.xyz * r21.xxx + v7.xyz;
                    r21.x = dot(r33.xyzw, r22.xyzw);
                    r21.y = dot(r34.xyzw, r22.xyzw);
                    r21.z = dot(r35.xyzw, r22.xyzw);
                    r22.x = dot(r36.xyzw, r22.xyzw);
                    r22.y = cmp(r22.x < r21.z);
                    r21.xy = r21.xy / r22.xx;
                    r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.xy = r21.xy + r38.zw;
                    r21.xy = r21.xy * r38.xy;
                    r32.xy = r20.ww / r37.xz;
                    r33.xy = float2(1,1) + -r32.xy;
                    r33.xy = cmp(r21.xy >= r33.xy);
                    r32.xy = cmp(r32.xy >= r21.xy);
                    r32.xy = (int2)r32.xy | (int2)r33.xy;
                    r22.z = (int)r32.y | (int)r32.x;
                    r22.y = (int)r22.y | (int)r22.z;
                    if (r22.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r20.y, l(28), t12.xxxx
                    r22.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r20.y, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r21.xy = saturate(r21.xy);
                      r33.xy = r21.xy * r37.xz + r37.yw;
                      r20.y = r32.y * r22.x;
                      r21.x = r32.x * r22.x + r21.z;
                      r20.y = r21.x / r20.y;
                      r20.y = max(6.10351563e-05, r20.y);
                      r21.x = r22.y ? 0.000000 : 0;
                      if (r8.w != 0) {
                        r22.z = (uint)r21.x;
                        r21.yz = float2(0,0);
                        while (true) {
                          r24.w = cmp((int)r21.z >= 8);
                          if (r24.w != 0) break;
                          r32.x = dot(icb[r21.z+0].xy, r25.xy);
                          r32.y = dot(icb[r21.z+0].yx, r25.xz);
                          r22.xy = r32.xy * r20.ww + r33.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.y).x;
                          r21.y = r22.x * 0.125 + r21.y;
                          r21.z = (int)r21.z + 1;
                        }
                      } else {
                        r33.z = (uint)r21.x;
                        r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r20.y).x;
                      }
                      r20.y = r21.y * r21.y;
                      r20.y = r20.y * r21.y;
                    } else {
                      r20.y = 1;
                    }
                    r12.w = r20.y * r12.w;
                  } else {
                    if (4 == 0) r20.y = 0; else if (4+20 < 32) {                     r20.y = (uint)r32.w << (32-(4 + 20)); r20.y = (uint)r20.y >> (32-4);                    } else r20.y = (uint)r32.w >> 20;
                    r20.w = cmp(0 < (uint)r20.y);
                    r20.w = r20.w ? r0.z : 0;
                    if (r20.w != 0) {
                      r20.y = (int)r20.y + numLights;
                      r20.y = (int)r20.y + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.w, r20.y, l(52), t12.xxxx
                    r20.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r20.y, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r20.y, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r20.y, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r20.y, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r20.y, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r20.y, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r21.x = abs(r14.w) * -0.200000003 + 0.400000006;
                      r23.xyz = r3.xyz * r21.xxx + v7.xyz;
                      r22.x = dot(r32.xyzw, r23.xyzw);
                      r22.y = dot(r33.xyzw, r23.xyzw);
                      r21.x = dot(r34.xyzw, r23.xyzw);
                      r21.z = dot(r35.xyzw, r23.xyzw);
                      r22.z = cmp(r21.z < r21.x);
                      r22.xy = r22.xy / r21.zz;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r37.zw;
                      r22.xy = r22.xy * r37.xy;
                      r23.xy = r20.ww / r36.xz;
                      r32.xy = float2(1,1) + -r23.xy;
                      r32.xy = cmp(r22.xy >= r32.xy);
                      r23.xy = cmp(r23.xy >= r22.xy);
                      r23.xy = (int2)r23.xy | (int2)r32.xy;
                      r23.x = (int)r23.y | (int)r23.x;
                      r22.z = (int)r22.z | (int)r23.x;
                      if (r22.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.z, r20.y, l(28), t12.xxxx
                      r22.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r20.y, l(164), t12.xyxx
                      r23.x = samp0[]..swiz;
                      r23.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r32.xy = r22.xy * r36.xz + r36.yw;
                        r20.y = r23.y * r21.z;
                        r21.x = r23.x * r21.z + r21.x;
                        r20.y = r21.x / r20.y;
                        r20.y = max(6.10351563e-05, r20.y);
                        r21.x = r22.z ? 0.000000 : 0;
                        if (r8.w != 0) {
                          r22.z = (uint)r21.x;
                          r21.z = 0;
                          r23.x = 0;
                          while (true) {
                            r23.y = cmp((int)r23.x >= 8);
                            if (r23.y != 0) break;
                            r33.x = dot(icb[r23.x+0].xy, r26.xy);
                            r33.y = dot(icb[r23.x+0].yx, r26.xz);
                            r22.xy = r33.xy * r20.ww + r32.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.y).x;
                            r21.z = r22.x * 0.125 + r21.z;
                            r23.x = (int)r23.x + 1;
                          }
                        } else {
                          r32.z = (uint)r21.x;
                          r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r20.y).x;
                        }
                        r20.y = r21.z * r21.z;
                        r20.y = r20.y * r21.z;
                      } else {
                        r20.y = 1;
                      }
                      r12.w = r20.y * r12.w;
                    }
                  }
                  r20.y = -r15.w * r6.z + 1;
                  r20.y = r20.y * r20.y;
                  r20.y = -r20.y * 0.620000005 + 0.620000005;
                  r20.y = r20.y + -r15.w;
                  r20.y = r1.w * r20.y + r15.w;
                  r20.y = r20.y * r12.w;
                  r14.w = cmp(0 < r14.w);
                  r22.xyz = r20.yyy * r31.xyz + r16.xyz;
                  r19.xyz = r19.xyz * r13.www + r12.xyz;
                  r13.w = dot(r19.xyz, r19.xyz);
                  r13.w = rsqrt(r13.w);
                  r19.xyz = r19.xyz * r13.www;
                  r13.w = dot(r19.xyz, r12.xyz);
                  r19.x = dot(r3.xyz, r19.xyz);
                  r19.y = abs(r19.x) * r0.w + -abs(r19.x);
                  r19.x = abs(r19.x) * r19.y + 1;
                  r15.w = r15.w * r0.x + r3.w;
                  r19.x = r19.x * r19.x;
                  r15.w = r19.x * r15.w;
                  r15.w = rcp(r15.w);
                  r15.w = r15.w * r18.x;
                  r12.w = r15.w * r12.w;
                  r12.w = 0.25 * r12.w;
                  r19.xyz = r12.www * r31.xyz + r30.xyz;
                  r13.w = saturate(1 + -r13.w);
                  r15.w = r13.w * r13.w;
                  r15.w = r15.w * r15.w;
                  r13.w = r15.w * r13.w;
                  r12.w = r13.w * r12.w;
                  r23.xyz = r12.www * r31.xyz + r29.xyz;
                  r16.xyz = r14.www ? r22.xyz : r16.xyz;
                  r29.xyz = r14.www ? r23.xyz : r29.xyz;
                  r30.xyz = r14.www ? r19.xyz : r30.xyz;
                }
              }
            }
            break;
            default :
            break;
          }
        }
      }
    }
    r9.yzw = r16.xyz;
    r27.xyz = r29.xyz;
    r28.xyz = r30.xyz;
    r7.w = (int)r7.w + 32;
  }
  r0.xyz = float3(1,1,1) + -r2.yzw;
  r0.xyz = r27.xyz * r0.xyz;
  r0.xyz = r28.xyz * r2.yzw + r0.xyz;
  r0.xyz = r9.yzw * r1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r0.w = max(9.99999975e-05, r0.w);
  r1.w = max(relHDRExposure.x, r0.w);
  r1.xyz = r4.xyz * r1.www;
  r4.w = 1;
  r1.xyzw = relativeHDR ? r1.xyzw : r4.xyzw;
  r0.xyz = r1.xyz + r0.xyz;
  r0.w = hdrScale * r1.w;
  r0.w = max(1, r0.w);
  r1.xyz = r1.xyz / r0.www;
  r0.w = saturate(dot(r1.xyz, float3(0.298999995,0.587000012,0.114)));
  o0.w = r2.x + r0.w;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = dot(v7.xyz, v7.xyz);
    r1.x = rsqrt(r0.w);
    r1.xyz = v7.xyz * r1.xxx;
    r0.w = sqrt(r0.w);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r1.w = cmp(0.00999999978 < abs(v7.z));
      r2.zw = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r3.xy = float2(-1.44269502,-1.44269502) * r2.zw;
      r3.xy = exp2(r3.xy);
      r3.xy = float2(1,1) + -r3.xy;
      r2.zw = r3.xy / r2.zw;
      r2.zw = r2.xy * r2.zw;
      r2.xy = r1.ww ? r2.zw : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r3.xyz + r2.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.x = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r3.y = -1.44269502 * r3.x;
      r3.y = exp2(r3.y);
      r3.y = 1 + -r3.y;
      r3.x = r3.y / r3.x;
      r3.x = r3.x * r1.w;
      r1.w = r2.w ? r3.x : r1.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r2.xyz = exp2(r3.xyz);
    }
    r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r1.x = dot(fogConstants.wldSunFogDir.xyz, -r1.xyz);
    r1.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r1.z = fogConstants.atmosphereMieSchlickK * -r1.x + 1;
    r1.z = r1.z * r1.z;
    r1.z = 12.566371 * r1.z;
    r1.y = r1.y / r1.z;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r1.y * r0.w;
    r1.x = saturate(r1.x);
    r1.x = r1.x * r1.x + 1;
    r1.x = r1.x * 0.0596831031 + -1;
    r1.x = fogConstants.atmospheresunstrength * r1.x + 1;
    r1.yzw = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r1.xyz = r1.xxx * fogConstants.atmosphereRayleighDensity.xyz + r1.yzw;
    r1.xyz = fogConstants.atmosphereInScatterIntensity * r1.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r1.xyz = r3.xyz * r1.xyz;
    r1.xyz = r0.xyz * r2.xyz + r1.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r1.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r2.x = cmp(abs(r0.w) < 9.99999975e-05);
    r2.y = min(64, r1.w);
    r2.y = 1.44269502 * r2.y;
    r2.y = exp2(r2.y);
    r2.z = saturate(fogConstants.K0b);
    r2.w = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r2.w ? r2.y : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r2.x ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r2.x ? r2.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = dot(v7.xyz, v7.xyz);
    r2.x = sqrt(r1.w);
    r0.w = r0.w * r2.x + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = rsqrt(r1.w);
    r2.xyz = v7.xyz * r1.www;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r1.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
    r0.w = r2.w * r0.w;
    r2.xyz = r2.xyz + -r0.xyz;
    r1.xyz = r0.www * r2.xyz + r0.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r1.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}