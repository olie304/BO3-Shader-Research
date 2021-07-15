// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:55 2021

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

SamplerState samplerLinear_s : register(s2);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float> downsampledDepth : register(t0);
StructuredBuffer<gLitFogVolumes> gLitFogVolumes : register(t1);
Texture2DArray<uint> visibleVolumetricSpotLights : register(t3);
Texture2DArray<uint> visibleVolumetricOmniLights : register(t4);
Texture2D<uint> downSampledDepthUV : register(t5);
Texture2D<float4> adaptiveTransparencyDepth : register(t7);
Texture2D<float4> adaptiveTransparencyTrans : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
Texture2D<float> oitPixelAlpha : register(t10);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float4> gCookieArray : register(t20);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 208
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v0.xy;
  r0.zw = float2(0,0);
  r1.x = downsampledDepth.Load(r0.xyw).x;
  r1.y = cmp(r1.x < 0);
  if (r1.y != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r1.yz = v0.xy / renderTargetSize.xy;
  r1.yz = r1.yz * float2(2,-2) + float2(-1,1);
  r2.xy = postFxControl4.xy * r1.yz;
  r2.z = 1;
  r1.xyz = r2.xyz * r1.xxx;
  r2.xyz = postFxControl1.xyz * r1.yyy;
  r1.xyw = r1.xxx * postFxControl0.xyz + r2.xyz;
  r1.xyz = r1.zzz * postFxControl2.xyz + r1.xyw;
  r1.xyz = postFxControl3.xyz + r1.xyz;
  r1.xyz = -postFxControl5.xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r2.x = sqrt(r1.w);
  r2.y = max(1, zNear.x);
  r2.x = min(8000, r2.x);
  r2.z = cmp(r2.y >= r2.x);
  if (r2.z != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r0.z = downSampledDepthUV.Load(r0.xyz).x;
  r0.w = (uint)r0.z >> 2;
  r0.z = (int)r0.z & 3;
  r2.zw = floor(v0.xy);
  r3.xy = (uint2)r0.wz;
  r0.zw = r2.zw * postFxControl7.xx + r3.xy;
  r3.xy = (uint2)r0.zw;
  r0.z = rsqrt(r1.w);
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = (int)postFxControl4.z & 0x0000ffff;
  r0.w = (uint)postFxControl4.w >> 16;
  r3.zw = float2(0,0);
  r4.xyzw = adaptiveTransparencyDepth.Load(r3.xyw).xyzw;
  r5.xyzw = adaptiveTransparencyTrans.Load(r3.xyw).zwxy;
  r1.w = oitPixelAlpha.Load(r3.xyz).x;
  r3.xyzw = float4(2000,2000,2000,2000) * r4.xyzw;
  r1.w = cmp(0.899999976 < r1.w);
  r2.zw = r1.ww ? float2(2000,2000) : r3.xy;
  r3.xy = r1.ww ? float2(1,1) : r5.xy;
  r5.xy = r3.zw;
  r4.xyzw = r1.wwww ? float4(2000,2000,1,1) : r5.xyzw;
  r3.zw = (uint2)r0.xy;
  r3.zw = postFxControl7.xx * r3.zw;
  r3.zw = float2(0.015625,0.015625) * r3.zw;
  r5.xy = (uint2)r3.zw;
  r6.xyzw = (uint14)volumetric.firstSpotLight >> int4(5,5,5,5);
  r0.w = (uint)r0.w;
  r5.w = 0;
  r7.xy = r5.xy;
  r7.w = 0;
  r8.w = 1;
  r9.w = 1;
  r10.y = 0;
  r11.z = 1;
  r12.z = 1;
  r13.z = 1;
  r14.xyzw = float4(0,0,0,0);
  while (true) {
    r1.w = cmp((uint)r14.w >= (uint)r0.z);
    if (r1.w != 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r15.xyzw, r14.w, l(132), t1.xyzw
  r15.x = samplerLinear[]..swiz;
  r15.y = samplerLinear[]..swiz;
  r15.z = samplerLinear[]..swiz;
  r15.w = samplerLinear[]..swiz;
    r1.w = (int)r15.w & 2;
    if (r1.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r16.xyzw, r14.w, l(24), t1.xyzw
    r16.x = samplerLinear[]..swiz;
    r16.y = samplerLinear[]..swiz;
    r16.z = samplerLinear[]..swiz;
    r16.w = samplerLinear[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r17.xyzw, r14.w, l(52), t1.xyzw
    r17.x = samplerLinear[]..swiz;
    r17.y = samplerLinear[]..swiz;
    r17.z = samplerLinear[]..swiz;
    r17.w = samplerLinear[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r1.w, r14.w, l(68), t1.xxxx
    r1.w = samplerLinear[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(84), t1.xyzw
    r18.x = samplerLinear[]..swiz;
    r18.y = samplerLinear[]..swiz;
    r18.z = samplerLinear[]..swiz;
    r18.w = samplerLinear[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r3.z, r14.w, l(100), t1.xxxx
    r3.z = samplerLinear[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r19.xyzw, r14.w, l(116), t1.xyzw
    r19.x = samplerLinear[]..swiz;
    r19.y = samplerLinear[]..swiz;
    r19.z = samplerLinear[]..swiz;
    r19.w = samplerLinear[]..swiz;
      r3.w = dot(r1.xyz, r16.xyz);
      r10.z = max(1.00000001e-07, abs(r3.w));
      r10.z = 1 / r10.z;
      r10.w = r16.w * r10.z;
      r10.z = r17.x * r10.z;
      r3.w = cmp(0 < -r3.w);
      r16.x = max(-131072, r10.w);
      r16.y = min(131072, -r10.z);
      r20.y = min(131072, -r10.w);
      r20.x = max(-131072, r10.z);
      r10.zw = r3.ww ? r16.xy : r20.xy;
      r3.w = dot(r1.xyz, r17.yzw);
      r11.w = max(1.00000001e-07, abs(r3.w));
      r11.w = 1 / r11.w;
      r1.w = r11.w * r1.w;
      r11.w = r18.x * r11.w;
      r3.w = cmp(0 < -r3.w);
      r16.x = max(r1.w, r10.z);
      r16.y = min(-r11.w, r10.w);
      r17.y = min(-r1.w, r10.w);
      r17.x = max(r11.w, r10.z);
      r10.zw = r3.ww ? r16.xy : r17.xy;
      r1.w = dot(r1.xyz, r18.yzw);
      r3.w = max(1.00000001e-07, abs(r1.w));
      r3.w = 1 / r3.w;
      r3.z = r3.z * r3.w;
      r3.w = r19.x * r3.w;
      r1.w = cmp(0 < -r1.w);
      r16.y = max(r3.z, r10.z);
      r16.z = min(-r3.w, r10.w);
      r17.z = min(-r3.z, r10.w);
      r17.y = max(r3.w, r10.z);
      r16.yz = r1.ww ? r16.yz : r17.yz;
      r1.w = cmp(r16.y < r16.z);
      if (r1.w != 0) {
        r16.x = max(0, r16.y);
        r3.zw = max(r16.xz, r2.yy);
        r3.zw = min(r3.zw, r2.xx);
        r1.w = r3.w + -r3.z;
        r1.w = cmp(r1.w >= 1);
        if (r1.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r1.w, r14.w, l(200), t1.xxxx
        r1.w = samplerLinear[]..swiz;
          r3.z = max(r3.z, r15.x);
          r3.w = r3.w + -r3.z;
          r1.w = min(r3.w, r1.w);
          r3.w = cmp(r1.w >= 1);
          if (r3.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r16.xyz, r14.w, l(148), t1.xyzx
          r16.x = samplerLinear[]..swiz;
          r16.y = samplerLinear[]..swiz;
          r16.z = samplerLinear[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r3.w, r14.w, l(184), t1.xxxx
          r3.w = samplerLinear[]..swiz;
            r16.xyz = r16.xyz + r15.zzz;
            r1.w = r3.z + r1.w;
            r3.z = r3.z + r15.x;
            r3.z = min(r3.z, r1.w);
            r10.z = 100 * r19.y;
            r10.w = -r15.y * r15.y + 1;
            r10.w = 0.0795774683 * r10.w;
            r17.xyz = float3(0,0,0);
            r5.z = r6.x;
            while (true) {
              r11.w = cmp((uint)r6.y < (uint)r5.z);
              if (r11.w != 0) break;
              r11.w = visibleVolumetricSpotLights.Load(r5.xyzw).x;
              r12.w = (uint)r5.z << 5;
              r18.xyz = r17.xyz;
              r18.w = r11.w;
              while (true) {
                if (r18.w == 0) break;
                r13.w = firstbitlow((uint)r18.w);
                r15.x = 1 << (int)r13.w;
                r15.w = (int)r15.x & (int)r18.w;
                if (r15.w != 0) {
                  r18.w = (int)r15.x ^ (int)r18.w;
                  r10.x = (int)r12.w + (int)r13.w;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xyz, r10.x, l(12), t11.xyzx
                r20.x = samplerLinear[]..swiz;
                r20.y = samplerLinear[]..swiz;
                r20.z = samplerLinear[]..swiz;
                  r13.w = dot(r20.xyz, r20.xyz);
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xyz, r10.x, l(0), t11.xyzx
                r20.x = samplerLinear[]..swiz;
                r20.y = samplerLinear[]..swiz;
                r20.z = samplerLinear[]..swiz;
                  r15.x = dot(-r20.xyz, r1.xyz);
                  r15.w = dot(-r20.xyz, -r20.xyz);
                  r13.w = r15.w + -r13.w;
                  r13.w = r15.x * r15.x + -r13.w;
                  r15.w = cmp(0 < r13.w);
                  r13.w = sqrt(r13.w);
                  r16.w = -r15.x + -r13.w;
                  r13.w = -r15.x + r13.w;
                  r15.x = min(r16.w, r13.w);
                  r13.w = max(r16.w, r13.w);
                  r15.x = max(r15.x, r3.z);
                  r15.x = min(r15.x, r1.w);
                  r13.w = max(r13.w, r3.z);
                  r13.w = min(r13.w, r1.w);
                  r16.w = 9.99999997e-07 + r15.x;
                  r16.w = cmp(r16.w < r13.w);
                  r15.w = r15.w ? r16.w : 0;
                  if (r15.w == 0) {
                    r20.xyz = float3(0,0,0);
                  }
                  if (r15.w != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xyzw, r10.x, l(68), t12.xyzw
                  r21.x = samplerLinear[]..swiz;
                  r21.y = samplerLinear[]..swiz;
                  r21.z = samplerLinear[]..swiz;
                  r21.w = samplerLinear[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xyzw, r10.x, l(84), t12.xyzw
                  r22.x = samplerLinear[]..swiz;
                  r22.y = samplerLinear[]..swiz;
                  r22.z = samplerLinear[]..swiz;
                  r22.w = samplerLinear[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xyzw, r10.x, l(116), t12.xyzw
                  r23.x = samplerLinear[]..swiz;
                  r23.y = samplerLinear[]..swiz;
                  r23.z = samplerLinear[]..swiz;
                  r23.w = samplerLinear[]..swiz;
                    r8.xyz = r15.xxx * r1.xyz;
                    r9.xyz = r13.www * r1.xyz;
                    r24.x = dot(r21.xyzw, r8.xyzw);
                    r24.y = dot(r22.xyzw, r8.xyzw);
                    r24.w = dot(r23.xyzw, r8.xyzw);
                    r21.x = dot(r21.xyzw, r9.xyzw);
                    r21.y = dot(r22.xyzw, r9.xyzw);
                    r21.w = dot(r23.xyzw, r9.xyzw);
                    r22.xy = r24.ww + r24.xy;
                    r22.zw = r24.ww + -r24.xy;
                    r23.xy = r21.ww + r21.xy;
                    r23.zw = r21.ww + -r21.xy;
                    r25.xy = cmp(r22.xy < float2(0,0));
                    r25.zw = -r23.xy + r22.xy;
                    r25.zw = r22.xy / r25.zw;
                    r15.w = max(0, r25.z);
                    r15.w = r25.x ? r15.w : 0;
                    r25.xz = cmp(r22.zw < float2(0,0));
                    r26.xy = -r23.zw + r22.zw;
                    r26.xy = r22.zw / r26.xy;
                    r16.w = max(r26.x, r15.w);
                    r15.w = r25.x ? r16.w : r15.w;
                    r16.w = max(r15.w, r25.w);
                    r15.w = r25.y ? r16.w : r15.w;
                    r16.w = max(r15.w, r26.y);
                    r15.w = r25.z ? r16.w : r15.w;
                    r25.xy = cmp(r23.xy < float2(0,0));
                    r22.xy = r23.xy + -r22.xy;
                    r22.xy = r23.xy / r22.xy;
                    r16.w = max(0, r22.x);
                    r16.w = r25.x ? r16.w : 0;
                    r23.xy = cmp(r23.zw < float2(0,0));
                    r22.xz = r23.zw + -r22.zw;
                    r22.xz = r23.zw / r22.xz;
                    r17.w = max(r22.x, r16.w);
                    r16.w = r23.x ? r17.w : r16.w;
                    r17.w = max(r16.w, r22.y);
                    r16.w = r25.y ? r17.w : r16.w;
                    r17.w = max(r16.w, r22.z);
                    r16.w = r23.y ? r17.w : r16.w;
                    r15.w = min(1, r15.w);
                    r16.w = min(1, r16.w);
                    r16.w = 1 + -r16.w;
                    r17.w = 9.99999997e-07 + r15.w;
                    r17.w = cmp(r17.w < r16.w);
                    if (r17.w != 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xyzw, r10.x, l(0), t12.xyzw
                    r22.x = samplerLinear[]..swiz;
                    r22.y = samplerLinear[]..swiz;
                    r22.z = samplerLinear[]..swiz;
                    r22.w = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r10.x, l(16), t12.xyxx
                    r23.x = samplerLinear[]..swiz;
                    r23.y = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.xyzw, r10.x, l(28), t12.xyzw
                    r25.x = samplerLinear[]..swiz;
                    r25.y = samplerLinear[]..swiz;
                    r25.z = samplerLinear[]..swiz;
                    r25.w = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xy, r10.x, l(44), t12.xyxx
                    r26.x = samplerLinear[]..swiz;
                    r26.y = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xyzw, r10.x, l(100), t12.xyzw
                    r27.x = samplerLinear[]..swiz;
                    r27.y = samplerLinear[]..swiz;
                    r27.z = samplerLinear[]..swiz;
                    r27.w = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r10.x, l(132), t12.xyzw
                    r28.x = samplerLinear[]..swiz;
                    r28.y = samplerLinear[]..swiz;
                    r28.z = samplerLinear[]..swiz;
                    r28.w = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r10.x, l(172), t12.yzwx
                    r29.x = samplerLinear[]..swiz;
                    r29.y = samplerLinear[]..swiz;
                    r29.z = samplerLinear[]..swiz;
                    r29.w = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r10.x, l(188), t12.xyzw
                    r30.x = samplerLinear[]..swiz;
                    r30.y = samplerLinear[]..swiz;
                    r30.z = samplerLinear[]..swiz;
                    r30.w = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r10.x, l(204), t12.xyzw
                    r31.x = samplerLinear[]..swiz;
                    r31.y = samplerLinear[]..swiz;
                    r31.z = samplerLinear[]..swiz;
                    r31.w = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r10.x, l(220), t12.xyzw
                    r32.x = samplerLinear[]..swiz;
                    r32.y = samplerLinear[]..swiz;
                    r32.z = samplerLinear[]..swiz;
                    r32.w = samplerLinear[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.w, r10.x, l(236), t12.xxxx
                    r17.w = samplerLinear[]..swiz;
                      r26.zw = (int2)r0.xy + (int2)r10.xy;
                      r26.zw = (uint2)r26.zw;
                      r10.x = dot(r26.zw, float2(0.0671105608,0.00583714992));
                      r10.x = frac(r10.x);
                      r10.x = 52.9829178 * r10.x;
                      r10.x = frac(r10.x);
                      if (3 == 0) r19.x = 0; else if (3+27 < 32) {                       r19.x = (uint)r25.x << (32-(3 + 27)); r19.x = (uint)r19.x >> (32-3);                      } else r19.x = (uint)r25.x >> 27;
                      r24.z = dot(r27.xyzw, r8.xyzw);
                      r21.z = dot(r27.xyzw, r9.xyzw);
                      r8.x = r13.w + -r15.x;
                      r8.y = r15.w * r8.x + r15.x;
                      r8.y = -1000 + r8.y;
                      r8.y = saturate(0.000500000024 * r8.y);
                      r8.y = 1 + -r8.y;
                      r8.y = r8.y * r0.w;
                      r8.y = floor(r8.y);
                      r8.y = max(2, r8.y);
                      r8.y = (uint)r8.y;
                      r8.z = r16.w + -r15.w;
                      r9.x = (uint)r8.y;
                      r8.z = r8.z / r9.x;
                      r9.y = -r8.z * 0.5 + r16.w;
                      r8.z = r8.z * 0.5 + r15.w;
                      r9.z = r9.y + -r8.z;
                      r9.z = r9.z / r9.x;
                      r10.x = -0.5 + r10.x;
                      r9.z = r10.x * r9.z;
                      r8.z = r9.z * 0.75 + r8.z;
                      r9.y = r9.z * 0.75 + r9.y;
                      r9.z = r8.z * r8.x + r15.x;
                      r8.x = r9.y * r8.x + r15.x;
                      r9.x = 1 / r9.x;
                      r21.xyzw = r21.xyzw + -r24.xyzw;
                      r27.xyzw = r21.xyzw * r9.yyyy + r24.xyzw;
                      r21.xyzw = r21.xyzw * r8.zzzz + r24.xyzw;
                      r21.xyz = r21.xyz / r21.www;
                      r27.xyz = r27.xyz / r27.www;
                      r8.z = r25.x ? 0.000000 : 0;
                      r8.x = r8.x + -r9.z;
                      r9.y = r8.x * r9.x;
                      r24.xyzw = r27.xyzw + -r21.xyzw;
                      r27.xyzw = r24.xyzw * r9.xxxx;
                      r15.xw = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                      r33.xy = r15.xw * r28.xz + r28.yw;
                      r33.z = (uint)r8.z;
                      r8.z = cmp((int)r19.x != 1);
                      if (r8.z != 0) {
                        r10.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r21.z).x;
                      } else {
                        r10.x = 1;
                      }
                      r15.xw = cmp(r2.zw >= r9.zz);
                      r26.zw = cmp(r4.xy >= r9.zz);
                      r13.w = r26.w ? r3.x : r3.y;
                      r13.w = r26.z ? r4.w : r13.w;
                      r13.w = r15.w ? r4.z : r13.w;
                      r13.w = r15.x ? 1 : r13.w;
                      r13.w = r13.w * r10.x;
                      r15.x = cmp(9.99999975e-05 < r13.w);
                      if (r15.x != 0) {
                        r15.x = r17.w ? 0.000000 : 0;
                        r15.w = (uint)r25.x >> 31;
                        r15.w = cmp((int)r15.w != 0);
                        r16.w = cmp(0 < (uint)r15.x);
                        r15.w = r15.w ? r16.w : 0;
                        if (r15.w != 0) {
                          r11.xy = r21.xy;
                          r15.w = dot(r31.yzw, r11.xyz);
                          r11.x = dot(r32.xyz, r11.xyz);
                          r34.x = frac(r15.w);
                          r34.y = frac(r11.x);
                          r11.x = (int)r15.x + -1;
                          r34.z = (uint)r11.x;
                          r34.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
                        } else {
                          r34.xyz = float3(1,1,1);
                        }
                        r11.x = r9.z * r1.z + r19.w;
                        r11.x = -r19.z * r11.x;
                        r11.x = exp2(r11.x);
                        r11.x = min(1, r11.x);
                        r11.x = r19.y * r11.x;
                        r11.x = min(r11.x, r10.z);
                        r35.xyz = -r9.zzz * r1.xyz + r22.xyz;
                        r11.y = r26.y * r26.y;
                        r15.x = dot(r35.xyz, r35.xyz);
                        r11.y = r11.y / r15.x;
                        r11.y = min(1, r11.y);
                        r15.w = saturate(r21.w * r25.y + r25.z);
                        r16.w = saturate(r21.w * r25.w + r26.x);
                        r19.x = r15.w * r15.w;
                        r15.w = r15.w * -2 + 3;
                        r15.w = r19.x * r15.w;
                        r11.y = r15.w * r11.y;
                        r15.w = r16.w * r16.w;
                        r16.w = r16.w * -2 + 3;
                        r15.w = r16.w * r15.w;
                        r11.y = r15.w * r11.y;
                        r15.w = cmp(r29.w < 0.00048828125);
                        if (r15.w != 0) {
                          r36.x = r30.w;
                          r36.y = r31.x;
                          r26.zw = saturate(abs(r21.xy) * r30.yz + r36.xy);
                          r36.xy = r26.zw * r26.zw;
                          r26.zw = r26.zw * float2(-2,-2) + float2(3,3);
                          r26.zw = r36.xy * r26.zw;
                          r15.w = r26.z * r26.w;
                        } else {
                          r36.xyz = r29.xyz;
                          r36.w = r30.x;
                          r36.xyzw = saturate(r36.xyzw * abs(r21.yyxx));
                          r36.xyzw = log2(r36.xyzw);
                          r36.xyzw = r36.xyzw * r30.wwww;
                          r36.xyzw = exp2(r36.xyzw);
                          r26.zw = r36.xy + r36.zw;
                          r26.zw = log2(r26.zw);
                          r26.zw = r31.xx * r26.zw;
                          r26.zw = exp2(r26.zw);
                          r16.w = r30.y * r26.z;
                          r19.x = r30.z * r26.w + -1;
                          r16.w = r30.z * r26.w + -r16.w;
                          r16.w = saturate(r19.x / r16.w);
                          r19.x = r16.w * r16.w;
                          r16.w = r16.w * -2 + 3;
                          r15.w = r19.x * r16.w;
                        }
                        r11.y = r15.w * r11.y;
                        r11.y = r13.w * r11.y;
                        r36.xyz = r16.xyz * r11.xxx;
                        r13.w = rsqrt(r15.x);
                        r35.xyz = r35.xyz * r13.www;
                        r13.w = dot(-r1.xyz, r35.xyz);
                        r13.w = max(-1, r13.w);
                        r13.w = min(1, r13.w);
                        r13.w = r15.y * r13.w + 1;
                        r13.w = max(9.99999997e-07, r13.w);
                        r13.w = min(2, r13.w);
                        r13.w = r13.w * r13.w;
                        r13.w = rcp(r13.w);
                        r13.w = r13.w * r10.w;
                        r13.w = max(0, r13.w);
                        r13.w = min(10000, r13.w);
                        r15.x = sqrt(r15.x);
                        r15.x = r15.x + r9.z;
                        r35.xyz = r36.xyz * -r15.xxx;
                        r35.xyz = exp2(r35.xyz);
                        r35.xyz = min(float3(1,1,1), r35.xyz);
                        r35.xyz = r35.xyz * r11.xxx;
                        r35.xyz = r35.xyz * r13.www;
                        r35.xyz = r35.xyz * r11.yyy;
                        r34.xyz = r35.xyz * r34.xyz;
                      } else {
                        r34.xyz = float3(0,0,0);
                      }
                      r11.x = r17.w ? 0.000000 : 0;
                      r11.y = (uint)r25.x >> 31;
                      r11.y = cmp((int)r11.y != 0);
                      r13.w = cmp(0 < (uint)r11.x);
                      r11.y = r11.y ? r13.w : 0;
                      r11.x = (int)r11.x + -1;
                      r35.z = (uint)r11.x;
                      r11.x = r26.y * r26.y;
                      r13.w = cmp(r29.w < 0.00048828125);
                      r36.xyz = r29.xyz;
                      r36.w = r30.x;
                      r37.xz = r30.ww;
                      r37.yw = r31.xx;
                      r29.w = r30.x;
                      r38.xyzw = r21.xyzw;
                      r26.yzw = r34.xyz;
                      r15.x = r9.z;
                      r15.w = r10.x;
                      r16.w = 0;
                      while (true) {
                        r17.w = cmp((uint)r16.w >= (uint)r8.y);
                        if (r17.w != 0) break;
                        r17.w = r9.y * 2 + r15.x;
                        r39.xyzw = r27.xyzw * float4(2,2,2,2) + r38.xyzw;
                        if (r8.z != 0) {
                          r40.xy = saturate(r39.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                          r33.xy = r40.xy * r28.xz + r28.yw;
                          r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r39.z).x;
                        } else {
                          r19.x = 1;
                        }
                        r40.xy = cmp(r2.zw >= r17.ww);
                        r40.zw = cmp(r4.xy >= r17.ww);
                        r20.w = r40.w ? r3.x : r3.y;
                        r20.w = r40.z ? r4.w : r20.w;
                        r20.w = r40.y ? r4.z : r20.w;
                        r20.w = r40.x ? 1 : r20.w;
                        r20.w = r20.w * r19.x;
                        r23.w = cmp(9.99999975e-05 < r20.w);
                        if (r23.w != 0) {
                          if (r11.y != 0) {
                            r12.xy = r39.xy;
                            r23.w = dot(r31.yzw, r12.xyz);
                            r12.x = dot(r32.xyz, r12.xyz);
                            r35.x = frac(r23.w);
                            r35.y = frac(r12.x);
                            r40.xyz = gCookieArray.SampleLevel(samplerLinear_s, r35.xyz, 0).xyz;
                          } else {
                            r40.xyz = float3(1,1,1);
                          }
                          r12.x = r17.w * r1.z + r19.w;
                          r12.x = -r19.z * r12.x;
                          r12.x = exp2(r12.x);
                          r12.x = min(1, r12.x);
                          r12.x = r19.y * r12.x;
                          r12.x = min(r12.x, r10.z);
                          r41.xyz = -r17.www * r1.xyz + r22.xyz;
                          r12.y = dot(r41.xyz, r41.xyz);
                          r23.w = r11.x / r12.y;
                          r23.w = min(1, r23.w);
                          r25.x = saturate(r39.w * r25.y + r25.z);
                          r30.x = saturate(r39.w * r25.w + r26.x);
                          r33.w = r25.x * r25.x;
                          r25.x = r25.x * -2 + 3;
                          r25.x = r33.w * r25.x;
                          r23.w = r25.x * r23.w;
                          r25.x = r30.x * r30.x;
                          r30.x = r30.x * -2 + 3;
                          r25.x = r30.x * r25.x;
                          r23.w = r25.x * r23.w;
                          if (r13.w != 0) {
                            r42.xy = saturate(abs(r39.xy) * r30.yz + r37.xy);
                            r42.zw = r42.xy * r42.xy;
                            r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
                            r42.xy = r42.zw * r42.xy;
                            r25.x = r42.x * r42.y;
                          } else {
                            r42.xyzw = saturate(abs(r39.yyxx) * r36.xyzw);
                            r42.xyzw = log2(r42.xyzw);
                            r42.xyzw = r42.xyzw * r30.wwww;
                            r42.xyzw = exp2(r42.xyzw);
                            r42.xy = r42.xy + r42.zw;
                            r42.xy = log2(r42.xy);
                            r42.xy = r42.xy * r31.xx;
                            r42.xy = exp2(r42.xy);
                            r30.x = r42.x * r30.y;
                            r33.w = r30.z * r42.y + -1;
                            r30.x = r30.z * r42.y + -r30.x;
                            r30.x = saturate(r33.w / r30.x);
                            r33.w = r30.x * r30.x;
                            r30.x = r30.x * -2 + 3;
                            r25.x = r33.w * r30.x;
                          }
                          r23.w = r25.x * r23.w;
                          r20.w = r23.w * r20.w;
                          r42.xyz = r16.xyz * r12.xxx;
                          r23.w = rsqrt(r12.y);
                          r41.xyz = r41.xyz * r23.www;
                          r23.w = dot(-r1.xyz, r41.xyz);
                          r23.w = max(-1, r23.w);
                          r23.w = min(1, r23.w);
                          r23.w = r15.y * r23.w + 1;
                          r23.w = max(9.99999997e-07, r23.w);
                          r23.w = min(2, r23.w);
                          r23.w = r23.w * r23.w;
                          r23.w = rcp(r23.w);
                          r23.w = r23.w * r10.w;
                          r23.w = max(0, r23.w);
                          r23.w = min(10000, r23.w);
                          r12.y = sqrt(r12.y);
                          r12.y = r12.y + r17.w;
                          r41.xyz = r42.xyz * -r12.yyy;
                          r41.xyz = exp2(r41.xyz);
                          r41.xyz = min(float3(1,1,1), r41.xyz);
                          r41.xyz = r41.xyz * r12.xxx;
                          r41.xyz = r41.xyz * r23.www;
                          r41.xyz = r41.xyz * r20.www;
                          r40.xyz = r41.xyz * r40.xyz;
                        } else {
                          r40.xyz = float3(0,0,0);
                        }
                        r41.xyz = r40.xyz + r26.yzw;
                        r12.x = -r19.x + r15.w;
                        r12.x = cmp(0.25 < abs(r12.x));
                        if (r12.x != 0) {
                          r12.x = r8.x * r9.x + r15.x;
                          r42.xyzw = r24.xyzw * r9.xxxx + r38.xyzw;
                          if (r8.z != 0) {
                            r43.xy = saturate(r42.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                            r33.xy = r43.xy * r28.xz + r28.yw;
                            r12.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r42.z).x;
                          } else {
                            r12.y = 1;
                          }
                          r33.xy = cmp(r2.zw >= r12.xx);
                          r43.xy = cmp(r4.xy >= r12.xx);
                          r20.w = r43.y ? r3.x : r3.y;
                          r20.w = r43.x ? r4.w : r20.w;
                          r20.w = r33.y ? r4.z : r20.w;
                          r20.w = r33.x ? 1 : r20.w;
                          r12.y = r20.w * r12.y;
                          r20.w = cmp(9.99999975e-05 < r12.y);
                          if (r20.w != 0) {
                            if (r11.y != 0) {
                              r13.xy = r42.xy;
                              r20.w = dot(r31.yzw, r13.xyz);
                              r13.x = dot(r32.xyz, r13.xyz);
                              r35.x = frac(r20.w);
                              r35.y = frac(r13.x);
                              r33.xyw = gCookieArray.SampleLevel(samplerLinear_s, r35.xyz, 0).xyz;
                            } else {
                              r33.xyw = float3(1,1,1);
                            }
                            r13.x = r12.x * r1.z + r19.w;
                            r13.x = -r19.z * r13.x;
                            r13.x = exp2(r13.x);
                            r13.x = min(1, r13.x);
                            r13.x = r19.y * r13.x;
                            r13.x = min(r13.x, r10.z);
                            r35.xyw = -r12.xxx * r1.xyz + r22.xyz;
                            r13.y = dot(r35.xyw, r35.xyw);
                            r20.w = r11.x / r13.y;
                            r20.w = min(1, r20.w);
                            r23.w = saturate(r42.w * r25.y + r25.z);
                            r25.x = saturate(r42.w * r25.w + r26.x);
                            r30.x = r23.w * r23.w;
                            r23.w = r23.w * -2 + 3;
                            r23.w = r30.x * r23.w;
                            r20.w = r23.w * r20.w;
                            r23.w = r25.x * r25.x;
                            r25.x = r25.x * -2 + 3;
                            r23.w = r25.x * r23.w;
                            r20.w = r23.w * r20.w;
                            if (r13.w != 0) {
                              r42.zw = saturate(abs(r42.xy) * r30.yz + r37.zw);
                              r43.xy = r42.zw * r42.zw;
                              r42.zw = r42.zw * float2(-2,-2) + float2(3,3);
                              r42.zw = r43.xy * r42.zw;
                              r23.w = r42.z * r42.w;
                            } else {
                              r42.xyzw = saturate(abs(r42.yyxx) * r29.xyzw);
                              r42.xyzw = log2(r42.xyzw);
                              r42.xyzw = r42.xyzw * r30.wwww;
                              r42.xyzw = exp2(r42.xyzw);
                              r42.xy = r42.xy + r42.zw;
                              r42.xy = log2(r42.xy);
                              r42.xy = r42.xy * r31.xx;
                              r42.xy = exp2(r42.xy);
                              r25.x = r42.x * r30.y;
                              r30.x = r30.z * r42.y + -1;
                              r25.x = r30.z * r42.y + -r25.x;
                              r25.x = saturate(r30.x / r25.x);
                              r30.x = r25.x * r25.x;
                              r25.x = r25.x * -2 + 3;
                              r23.w = r30.x * r25.x;
                            }
                            r20.w = r23.w * r20.w;
                            r12.y = r20.w * r12.y;
                            r42.xyz = r16.xyz * r13.xxx;
                            r20.w = rsqrt(r13.y);
                            r35.xyw = r35.xyw * r20.www;
                            r20.w = dot(-r1.xyz, r35.xyw);
                            r20.w = max(-1, r20.w);
                            r20.w = min(1, r20.w);
                            r20.w = r15.y * r20.w + 1;
                            r20.w = max(9.99999997e-07, r20.w);
                            r20.w = min(2, r20.w);
                            r20.w = r20.w * r20.w;
                            r20.w = rcp(r20.w);
                            r20.w = r20.w * r10.w;
                            r20.w = max(0, r20.w);
                            r20.w = min(10000, r20.w);
                            r13.y = sqrt(r13.y);
                            r12.x = r13.y + r12.x;
                            r35.xyw = r42.xyz * -r12.xxx;
                            r35.xyw = exp2(r35.xyw);
                            r35.xyw = min(float3(1,1,1), r35.xyw);
                            r35.xyw = r35.xyw * r13.xxx;
                            r35.xyw = r35.xyw * r20.www;
                            r35.xyw = r35.xyw * r12.yyy;
                            r40.xyz = r35.xyw * r33.xyw;
                          } else {
                            r40.xyz = float3(0,0,0);
                          }
                        }
                        r26.yzw = r41.xyz + r40.xyz;
                        r16.w = (int)r16.w + 2;
                        r38.xyzw = r39.xyzw;
                        r15.x = r17.w;
                        r15.w = r19.x;
                      }
                      r8.x = r9.y * r3.w;
                      r8.x = r8.x * r15.z;
                      r8.xyz = r26.yzw * r8.xxx;
                      r23.z = r22.w;
                      r9.xyz = r32.www * r23.zxy;
                      r20.xyz = r9.xyz * r8.xyz;
                    } else {
                      r20.xyz = float3(0,0,0);
                    }
                  }
                  r18.xyz = r20.xyz + r18.xyz;
                }
              }
              r17.xyz = r18.xyz;
              r5.z = (int)r5.z + 1;
            }
            r8.xyz = r17.xyz + r14.xyz;
            r9.xyz = float3(0,0,0);
            r7.z = r6.z;
            while (true) {
              r5.z = cmp((uint)r6.w < (uint)r7.z);
              if (r5.z != 0) break;
              r5.z = visibleVolumetricOmniLights.Load(r7.xyzw).x;
              r10.x = (uint)r7.z << 5;
              r20.xyz = r9.xyz;
              r20.w = r5.z;
              while (true) {
                if (r20.w == 0) break;
                r11.x = firstbitlow((uint)r20.w);
                r11.y = 1 << (int)r11.x;
                r11.w = (int)r11.y & (int)r20.w;
                if (r11.w != 0) {
                  r20.w = (int)r11.y ^ (int)r20.w;
                  r11.x = (int)r10.x + (int)r11.x;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xyw, r11.x, l(12), t11.xyxz
                r12.x = samplerLinear[]..swiz;
                r12.y = samplerLinear[]..swiz;
                r12.w = samplerLinear[]..swiz;
                  r11.y = max(r12.y, r12.w);
                  r11.y = max(r12.x, r11.y);
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xyw, r11.x, l(0), t11.xyxz
                r12.x = samplerLinear[]..swiz;
                r12.y = samplerLinear[]..swiz;
                r12.w = samplerLinear[]..swiz;
                  r11.w = dot(-r12.xyw, r1.xyz);
                  r12.x = dot(-r12.xyw, -r12.xyw);
                  r11.y = -r11.y * r11.y + r12.x;
                  r11.y = r11.w * r11.w + -r11.y;
                  r12.x = cmp(0 < r11.y);
                  r11.y = sqrt(r11.y);
                  r12.y = -r11.w + -r11.y;
                  r11.y = -r11.w + r11.y;
                  r11.w = min(r12.y, r11.y);
                  r11.y = max(r12.y, r11.y);
                  r11.yw = max(r11.yw, r3.zz);
                  r11.yw = min(r11.yw, r1.ww);
                  r12.y = 9.99999997e-07 + r11.w;
                  r12.y = cmp(r12.y < r11.y);
                  r12.x = r12.y ? r12.x : 0;
                  if (r12.x == 0) {
                    r13.xyw = float3(0,0,0);
                  }
                  if (r12.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xyzw, r11.x, l(0), t12.xyzw
                  r21.x = samplerLinear[]..swiz;
                  r21.y = samplerLinear[]..swiz;
                  r21.z = samplerLinear[]..swiz;
                  r21.w = samplerLinear[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.xy, r11.x, l(16), t12.xyxx
                  r22.x = samplerLinear[]..swiz;
                  r22.y = samplerLinear[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xyzw, r11.x, l(32), t12.xyzw
                  r23.x = samplerLinear[]..swiz;
                  r23.y = samplerLinear[]..swiz;
                  r23.z = samplerLinear[]..swiz;
                  r23.w = samplerLinear[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.x, r11.x, l(48), t12.xxxx
                  r12.x = samplerLinear[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.yw, r11.x, l(104), t12.xxxy
                  r12.y = samplerLinear[]..swiz;
                  r12.w = samplerLinear[]..swiz;
                    r11.x = (int)r12.w & 31;
                    r12.w = -1000 + r11.w;
                    r12.w = saturate(0.000500000024 * r12.w);
                    r12.w = 1 + -r12.w;
                    r11.x = (uint)r11.x;
                    r11.x = r11.x * r12.w;
                    r11.x = floor(r11.x);
                    r11.x = max(2, r11.x);
                    r11.x = (uint)r11.x;
                    r12.w = (uint)r11.x;
                    r12.w = 1 / r12.w;
                    r15.x = r11.y + -r11.w;
                    r15.x = r15.x * r12.w;
                    r11.y = -r15.x * 0.5 + r11.y;
                    r11.w = r15.x * 0.5 + r11.w;
                    r11.y = r11.y + -r11.w;
                    r15.x = r11.y * r12.w;
                    r12.x = r12.x * r12.x;
                    r24.xyz = float3(0,0,0);
                    r15.w = r11.w;
                    r16.w = 0;
                    while (true) {
                      r17.w = cmp((uint)r16.w >= (uint)r11.x);
                      if (r17.w != 0) break;
                      r15.w = r11.y * r12.w + r15.w;
                      r25.xyz = -r1.xyz * r15.www + r21.xyz;
                      r17.w = dot(r25.xyz, r25.xyz);
                      r18.w = sqrt(r17.w);
                      r19.x = r12.x / r17.w;
                      r19.x = min(1, r19.x);
                      r27.xy = saturate(r18.ww * r23.xz + r23.yw);
                      r27.zw = r27.xy * r27.xy;
                      r27.xy = r27.xy * float2(-2,-2) + float2(3,3);
                      r27.xy = r27.zw * r27.xy;
                      r19.x = r27.x * r19.x;
                      r19.x = r19.x * r27.y;
                      r22.w = cmp(0 < r19.x);
                      if (r22.w != 0) {
                        r22.w = r1.z * r15.w + r19.w;
                        r22.w = r22.w * -r19.z;
                        r22.w = exp2(r22.w);
                        r22.w = min(1, r22.w);
                        r22.w = r22.w * r19.y;
                        r22.w = min(r22.w, r10.z);
                        r27.xy = cmp(r2.zw >= r15.ww);
                        r27.zw = cmp(r4.xy >= r15.ww);
                        r24.w = r27.w ? r3.x : r3.y;
                        r24.w = r27.z ? r4.w : r24.w;
                        r24.w = r27.y ? r4.z : r24.w;
                        r24.w = r27.x ? 1 : r24.w;
                        r19.x = r24.w * r19.x;
                        r27.xyz = r22.www * r16.xyz;
                        r17.w = rsqrt(r17.w);
                        r25.xyz = r25.xyz * r17.www;
                        r17.w = dot(-r1.xyz, r25.xyz);
                        r17.w = max(-1, r17.w);
                        r17.w = min(1, r17.w);
                        r17.w = r15.y * r17.w + 1;
                        r17.w = max(9.99999997e-07, r17.w);
                        r17.w = min(2, r17.w);
                        r17.w = r17.w * r17.w;
                        r17.w = rcp(r17.w);
                        r17.w = r17.w * r10.w;
                        r17.w = max(0, r17.w);
                        r17.w = min(10000, r17.w);
                        r18.w = r18.w + r15.w;
                        r25.xyz = r27.xyz * -r18.www;
                        r25.xyz = exp2(r25.xyz);
                        r25.xyz = min(float3(1,1,1), r25.xyz);
                        r25.xyz = r25.xyz * r22.www;
                        r25.xyz = r25.xyz * r17.www;
                        r25.xyz = r25.xyz * r19.xxx;
                      } else {
                        r25.xyz = float3(0,0,0);
                      }
                      r24.xyz = r25.xyz + r24.xyz;
                      r16.w = (int)r16.w + 1;
                    }
                    r11.x = r15.x * r3.w;
                    r11.x = r11.x * r15.z;
                    r11.xyw = r24.xyz * r11.xxx;
                    r22.z = r21.w;
                    r12.xyw = r22.zxy * r12.yyy;
                    r13.xyw = r12.xyw * r11.xyw;
                  }
                  r20.xyz = r20.xyz + r13.xyw;
                }
              }
              r9.xyz = r20.xyz;
              r7.z = (int)r7.z + 1;
            }
            r14.xyz = r9.xyz + r8.xyz;
          }
        }
      }
    }
    r14.w = (int)r14.w + 1;
  }
  o0.xyz = r14.xyz;
  o0.w = 0;
  return;
}