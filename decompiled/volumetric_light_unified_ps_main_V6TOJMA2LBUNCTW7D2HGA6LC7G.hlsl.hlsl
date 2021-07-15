// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:56 2021

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

SamplerState gTrilinearClampSampler_s : register(s0);
SamplerState samplerLinear_s : register(s2);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float> downsampledDepth : register(t0);
StructuredBuffer<gLitFogVolumes> gLitFogVolumes : register(t1);
Texture3D<float3> volLightTexture : register(t2);
Texture2DArray<uint> visibleVolumetricSpotLights : register(t3);
Texture2DArray<uint> visibleVolumetricOmniLights : register(t4);
Texture2D<uint> downSampledDepthUV : register(t5);
Texture2D<float4> adaptiveTransparencyDepth : register(t7);
Texture2D<float4> adaptiveTransparencyTrans : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
Texture2D<float> oitPixelAlpha : register(t10);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
Texture2DArray<float4> gCookieArray : register(t20);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 208
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t11, 80
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t12, 240
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,r50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60;
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
  r5.xyzw = adaptiveTransparencyTrans.Load(r3.xyw).xyzw;
  r1.w = oitPixelAlpha.Load(r3.xyz).x;
  r3.xyzw = float4(2000,2000,2000,2000) * r4.xyzw;
  r1.w = cmp(0.899999976 < r1.w);
  r3.xyzw = r1.wwww ? float4(2000,2000,2000,2000) : r3.xyzw;
  r4.xyzw = r1.wwww ? float4(1,1,1,1) : r5.xyzw;
  r2.zw = (uint2)r0.xy;
  r5.xy = postFxControl7.xx * r2.zw;
  r1.w = dot(r2.wz, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  r5.zw = uiDest.xy;
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture3d)(float,float,float,float)_uint r5.zw, l(0), t2.zwxy
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=1, constZero.eType=4, returnType=2, texture.eType=7, afImmediates[0]=0.000000
  r2.zw = float2(0.5,0.5) + r2.zw;
  r5.zw = (uint2)r5.zw;
  r6.x = 16 / postFxControl7.x;
  r5.zw = r6.xx * r5.zw;
  r6.yz = r2.zw / r5.zw;
  r2.zw = float2(0.015625,0.015625) * r5.xy;
  r5.xy = (uint2)r2.zw;
  r7.xyzw = (uint14)volumetric.firstSpotLight >> int4(5,5,5,5);
  r0.w = (uint)r0.w;
  r8.w = 1;
  r9.w = 1;
  r10.w = 1;
  r11.w = 1;
  r12.w = 1;
  r13.w = 1;
  r14.w = 1;
  r5.w = 0;
  r15.w = 1;
  r16.xy = r5.xy;
  r17.w = 1;
  r16.w = 0;
  r18.w = 1;
  r19.w = 1;
  r20.w = 1;
  r21.w = 1;
  r22.w = 1;
  r23.y = 0;
  r24.z = 1;
  r25.z = 1;
  r26.z = 1;
  r27.xyzw = sunConstants.sunCookieTransform[0].xyzw;
  r28.xyzw = sunConstants.sunCookieTransform[1].xyzw;
  r29.xyz = sunConstants.wldDir.xyz;
  r30.xyz = sunConstants.splitPinTransform[1].xyz;
  r31.xyz = sunConstants.splitPinTransform[2].xyz;
  r32.xyz = float3(0,0,0);
  r2.z = sunConstants.splitDepthOffset;
  r2.w = sunConstants.sunCookieIndex;
  r23.zw = sunConstants.sunCookieIntensity;
  r24.w = sunConstants.splitArrayOffset;
  r33.x = sunConstants.sstLightingConstants.offToPinTransform._m00;
  r34.x = sunConstants.sstLightingConstants.offToPinTransform._m01;
  r35.x = sunConstants.sstLightingConstants.offToPinTransform._m02;
  r33.y = sunConstants.sstLightingConstants.offToPinTransform._m10;
  r34.y = sunConstants.sstLightingConstants.offToPinTransform._m11;
  r35.y = sunConstants.sstLightingConstants.offToPinTransform._m12;
  r33.z = sunConstants.sstLightingConstants.offToPinTransform._m20;
  r34.z = sunConstants.sstLightingConstants.offToPinTransform._m21;
  r35.z = sunConstants.sstLightingConstants.offToPinTransform._m22;
  r33.w = sunConstants.sstLightingConstants.offToPinTransform._m30;
  r34.w = sunConstants.sstLightingConstants.offToPinTransform._m31;
  r35.w = sunConstants.sstLightingConstants.offToPinTransform._m32;
  r25.w = 0;
  while (true) {
    r26.w = cmp((uint)r25.w >= (uint)r0.z);
    if (r26.w != 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r36.xyzw, r25.w, l(132), t1.xyzw
  r36.x = gTrilinearClampSampler[]..swiz;
  r36.y = gTrilinearClampSampler[]..swiz;
  r36.z = gTrilinearClampSampler[]..swiz;
  r36.w = gTrilinearClampSampler[]..swiz;
    r26.w = (int)r36.w & 2;
    if (r26.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r37.xyzw, r25.w, l(24), t1.xyzw
    r37.x = gTrilinearClampSampler[]..swiz;
    r37.y = gTrilinearClampSampler[]..swiz;
    r37.z = gTrilinearClampSampler[]..swiz;
    r37.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r38.xyzw, r25.w, l(52), t1.xyzw
    r38.x = gTrilinearClampSampler[]..swiz;
    r38.y = gTrilinearClampSampler[]..swiz;
    r38.z = gTrilinearClampSampler[]..swiz;
    r38.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r26.w, r25.w, l(68), t1.xxxx
    r26.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r39.xyzw, r25.w, l(84), t1.xyzw
    r39.x = gTrilinearClampSampler[]..swiz;
    r39.y = gTrilinearClampSampler[]..swiz;
    r39.z = gTrilinearClampSampler[]..swiz;
    r39.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r29.w, r25.w, l(100), t1.xxxx
    r29.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r40.xyzw, r25.w, l(116), t1.xyzw
    r40.x = gTrilinearClampSampler[]..swiz;
    r40.y = gTrilinearClampSampler[]..swiz;
    r40.z = gTrilinearClampSampler[]..swiz;
    r40.w = gTrilinearClampSampler[]..swiz;
      r30.w = dot(r1.xyz, r37.xyz);
      r31.w = max(1.00000001e-07, abs(r30.w));
      r31.w = 1 / r31.w;
      r32.w = r37.w * r31.w;
      r31.w = r38.x * r31.w;
      r30.w = cmp(0 < -r30.w);
      r37.x = max(-131072, r32.w);
      r37.y = min(131072, -r31.w);
      r41.y = min(131072, -r32.w);
      r41.x = max(-131072, r31.w);
      r37.xy = r30.ww ? r37.xy : r41.xy;
      r30.w = dot(r1.xyz, r38.yzw);
      r31.w = max(1.00000001e-07, abs(r30.w));
      r31.w = 1 / r31.w;
      r26.w = r31.w * r26.w;
      r31.w = r39.x * r31.w;
      r30.w = cmp(0 < -r30.w);
      r38.x = max(r26.w, r37.x);
      r38.y = min(-r31.w, r37.y);
      r41.y = min(-r26.w, r37.y);
      r41.x = max(r31.w, r37.x);
      r37.xy = r30.ww ? r38.xy : r41.xy;
      r26.w = dot(r1.xyz, r39.yzw);
      r30.w = max(1.00000001e-07, abs(r26.w));
      r30.w = 1 / r30.w;
      r29.w = r30.w * r29.w;
      r30.w = r40.x * r30.w;
      r26.w = cmp(0 < -r26.w);
      r38.y = max(r29.w, r37.x);
      r38.z = min(-r30.w, r37.y);
      r37.z = min(-r29.w, r37.y);
      r37.y = max(r30.w, r37.x);
      r37.yz = r26.ww ? r38.yz : r37.yz;
      r26.w = cmp(r37.y < r37.z);
      if (r26.w != 0) {
        r37.x = max(0, r37.y);
        r37.xy = max(r37.xz, r2.yy);
        r37.xy = min(r37.xy, r2.xx);
        r26.w = r37.y + -r37.x;
        r26.w = cmp(r26.w >= 1);
        if (r26.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r26.w, r25.w, l(196), t1.xxxx
        r26.w = gTrilinearClampSampler[]..swiz;
          r29.w = max(r37.x, r36.x);
          r30.w = r37.y + -r29.w;
          r26.w = min(r30.w, r26.w);
          r30.w = cmp(r26.w >= 1);
          if (r30.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r37.xyzw, r25.w, l(148), t1.xyzw
          r37.x = gTrilinearClampSampler[]..swiz;
          r37.y = gTrilinearClampSampler[]..swiz;
          r37.z = gTrilinearClampSampler[]..swiz;
          r37.w = gTrilinearClampSampler[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r38.xyzw, r25.w, l(164), t1.zxyw
          r38.x = gTrilinearClampSampler[]..swiz;
          r38.y = gTrilinearClampSampler[]..swiz;
          r38.z = gTrilinearClampSampler[]..swiz;
          r38.w = gTrilinearClampSampler[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r39.xyzw, r25.w, l(180), t1.xyzw
          r39.x = gTrilinearClampSampler[]..swiz;
          r39.y = gTrilinearClampSampler[]..swiz;
          r39.z = gTrilinearClampSampler[]..swiz;
          r39.w = gTrilinearClampSampler[]..swiz;
            r37.xyz = r37.xyz + r36.zzz;
            r26.w = r29.w + r26.w;
            r30.w = (int)r36.w & 21;
            switch (r30.w) {
              case 1 :              r30.w = r29.w + r36.x;
              r30.w = min(r30.w, r26.w);
              r31.w = -r30.w + r26.w;
              r32.w = r31.w / postFxControlA.x;
              r32.w = min(39, r32.w);
              r32.w = floor(r32.w);
              r32.w = 1 + r32.w;
              r32.w = (uint)r32.w;
              r32.w = (int)r32.w + 1;
              r32.w = (int)r32.w & -2;
              r36.w = (uint)r32.w;
              r36.w = 1 / r36.w;
              r31.w = r36.w * r31.w;
              r40.x = -r31.w * 0.5 + r26.w;
              r30.w = r31.w * 0.5 + r30.w;
              r31.w = r40.x + -r30.w;
              r31.w = r31.w * r36.w;
              r36.w = r31.w * r1.w;
              r30.w = r36.w * 1.5 + r30.w;
              r36.w = 100 * r40.y;
              r40.x = r1.z * r30.w + r40.w;
              r40.x = -r40.z * r40.x;
              r40.x = exp2(r40.x);
              r40.x = min(1, r40.x);
              r40.x = r40.y * r40.x;
              r40.x = min(r40.x, r36.w);
              r41.xyz = r40.xxx * r37.xyz;
              r41.xyz = -r41.xyz * r30.www;
              r41.xyz = exp2(r41.xyz);
              r41.xyz = r41.xyz * r39.yyy;
              r42.xyzw = cmp(r3.xyzw >= r30.wwww);
              r41.w = r42.w ? r4.z : r4.w;
              r41.w = r42.z ? r4.y : r41.w;
              r41.w = r42.y ? r4.x : r41.w;
              r41.w = r42.x ? 1 : r41.w;
              r41.xyz = r41.xyz * r40.xxx;
              r38.x = r37.w;
              r41.xyz = r41.xyz * r38.xyz;
              r41.xyz = r41.xyz * r41.www;
              r42.xyz = r41.xyz;
              r43.xyz = r41.xyz;
              r40.x = r30.w;
              r41.w = 0;
              while (true) {
                r42.w = cmp((uint)r41.w >= (uint)r32.w);
                if (r42.w != 0) break;
                r40.x = r31.w * 2 + r40.x;
                r42.w = r1.z * r40.x + r40.w;
                r42.w = r42.w * -r40.z;
                r42.w = exp2(r42.w);
                r42.w = min(1, r42.w);
                r42.w = r42.w * r40.y;
                r42.w = min(r42.w, r36.w);
                r44.xyz = r42.www * r37.xyz;
                r44.xyz = -r44.xyz * r40.xxx;
                r44.xyz = exp2(r44.xyz);
                r44.xyz = r44.xyz * r39.yyy;
                r45.xyzw = cmp(r3.xyzw >= r40.xxxx);
                r43.w = r45.w ? r4.z : r4.w;
                r43.w = r45.z ? r4.y : r43.w;
                r43.w = r45.y ? r4.x : r43.w;
                r43.w = r45.x ? 1 : r43.w;
                r44.xyz = r44.xyz * r42.www;
                r44.xyz = r44.xyz * r38.xyz;
                r45.xyz = r44.xyz * r43.www;
                r46.xyz = r44.xyz * r43.www + r42.xyz;
                r42.w = dot(float3(0.298999995,0.587000012,0.114), r43.xyz);
                r44.w = dot(float3(0.298999995,0.587000012,0.114), r45.xyz);
                r45.w = max(r44.w, r42.w);
                r42.w = min(r44.w, r42.w);
                r42.w = r42.w / r45.w;
                r42.w = cmp(r42.w < 0.800000012);
                if (r42.w != 0) {
                  r47.xyz = float3(0,0,0);
                } else {
                  r44.xyz = r44.xyz * r43.www + r43.xyz;
                  r47.xyz = float3(0.5,0.5,0.5) * r44.xyz;
                }
                r42.xyz = r47.xyz + r46.xyz;
                r41.w = (int)r41.w + 2;
                r43.xyz = r45.xyz;
              }
              r30.w = r36.z * r31.w;
              r41.xyz = r42.xyz * r30.www;
              r32.xyz = r41.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r32.xyz;
              break;
              case 1 :              r30.w = r29.w + r36.x;
              r30.w = min(r30.w, r26.w);
              r31.w = -r30.w + r26.w;
              r32.w = r31.w / postFxControlA.x;
              r32.w = min(39, r32.w);
              r32.w = floor(r32.w);
              r32.w = 1 + r32.w;
              r32.w = (uint)r32.w;
              r32.w = (int)r32.w + 1;
              r32.w = (int)r32.w & -2;
              r36.w = (uint)r32.w;
              r36.w = 1 / r36.w;
              r40.x = dot(r29.xyz, -r1.xyz);
              r31.w = r36.w * r31.w;
              r41.x = -r31.w * 0.5 + r26.w;
              r30.w = r31.w * 0.5 + r30.w;
              r31.w = r41.x + -r30.w;
              r41.x = r31.w * r36.w;
              r40.x = max(-1, r40.x);
              r40.x = min(1, r40.x);
              r40.x = r36.y * r40.x + 1;
              r40.x = max(9.99999997e-07, r40.x);
              r40.x = min(2, r40.x);
              r41.y = -r36.y * r36.y + 1;
              r41.y = 0.0795774683 * r41.y;
              r40.x = r40.x * r40.x;
              r40.x = rcp(r40.x);
              r40.x = r41.y * r40.x;
              r40.x = max(0, r40.x);
              r40.x = min(10000, r40.x);
              r43.xy = r38.xw;
              r43.z = r39.x;
              r41.yzw = r43.xyz * r40.xxx;
              r41.yzw = r41.yzw * r39.www;
              r41.yzw = float3(12.566371,12.566371,12.566371) * r41.yzw;
              r40.x = r41.x * r1.w;
              r30.w = r40.x * 1.5 + r30.w;
              r8.xyz = r30.www * r1.xyz;
              r40.x = 100 * r40.y;
              r42.w = r1.z * r30.w + r40.w;
              r42.w = r42.w * -r40.z;
              r42.w = exp2(r42.w);
              r42.w = min(1, r42.w);
              r42.w = r42.w * r40.y;
              r42.w = min(r42.w, r40.x);
              r43.xyz = r42.www * r37.xyz;
              r43.xyz = -r43.xyz * r30.www;
              r43.xyz = exp2(r43.xyz);
              r43.xyz = r43.xyz * r39.yyy;
              r44.xyzw = cmp(r3.xyzw >= r30.wwww);
              r43.w = r44.w ? r4.z : r4.w;
              r43.w = r44.z ? r4.y : r43.w;
              r43.w = r44.y ? r4.x : r43.w;
              r43.w = r44.x ? 1 : r43.w;
              r10.xyz = r1.xyz * r30.www + postFxControl5.xyz;
              r44.x = dot(r10.xyz, postFxControl6.xyz);
              r44.x = postFxControl6.w + r44.x;
              r44.x = 0.00300000003 * r44.x;
              r44.x = max(1, r44.x);
              r44.x = min(2, r44.x);
              r44.x = (uint)r44.x;
              r44.y = dot(r8.xyzw, r33.xyzw);
              r44.z = dot(r8.xyzw, r34.xyzw);
              r8.x = dot(r8.xyzw, r35.xyzw);
              r8.y = (int)r44.x + -1;
              r45.xyz = icb[r8.y+0].xxx * r30.xyz;
              r45.xyz = icb[r8.y+0].yyy * r31.xyz + r45.xyz;
              r46.xy = -r45.xy + r44.yz;
              r8.yz = r46.xy * r45.zz;
              r45.xy = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r8.x = r8.x + -r2.z;
              r8.x = -r8.x * 6.10351563e-05 + 0.999499977;
              r8.y = (int)r24.w + (int)r44.x;
              r45.z = (uint)r8.y;
              r8.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r45.xyz, r8.x).x;
              r8.x = r8.x * r43.w;
              r8.y = cmp(0 < r23.w);
              r8.z = cmp(0 < (uint)r2.w);
              r8.y = r8.z ? r8.y : 0;
              if (r8.y != 0) {
                r8.z = dot(r27.xyzw, r10.xyzw);
                r10.x = dot(r28.xyzw, r10.xyzw);
                r44.x = frac(r8.z);
                r44.y = frac(r10.x);
                r8.z = (int)r2.w + -1;
                r44.z = (uint)r8.z;
                r10.xyz = gCookieArray.SampleLevel(samplerLinear_s, r44.xyz, 0).xyz;
                r8.z = r23.z * r23.w;
                r10.xyz = float3(-1,-1,-1) + r10.xyz;
                r10.xyz = r8.zzz * r10.xyz + float3(1,1,1);
                r44.xyz = r43.xyz * r42.www;
                r44.xyz = r44.xyz * r8.xxx;
                r10.xyz = r44.xyz * r10.xyz;
              } else {
                r44.xyz = r43.xyz * r42.www;
                r10.xyz = r44.xyz * r8.xxx;
              }
              r43.xyz = r43.xyz * r42.www;
              r38.x = r37.w;
              r43.xyz = r43.xyz * r38.xyz;
              r43.xyz = r43.xyz * r43.www;
              r10.xyz = r10.xyz * r41.yzw + r43.xyz;
              r8.x = (int)r2.w + -1;
              r43.z = (uint)r8.x;
              r8.x = r23.z * r23.w;
              r44.xyz = r10.xyz;
              r45.xyz = r10.xyz;
              r8.z = r30.w;
              r37.w = 0;
              while (true) {
                r42.w = cmp((uint)r37.w >= (uint)r32.w);
                if (r42.w != 0) break;
                r42.w = r41.x * 2 + r8.z;
                r11.xyz = r42.www * r1.xyz;
                r43.w = r1.z * r42.w + r40.w;
                r43.w = r43.w * -r40.z;
                r43.w = exp2(r43.w);
                r43.w = min(1, r43.w);
                r43.w = r43.w * r40.y;
                r43.w = min(r43.w, r40.x);
                r46.xyz = r43.www * r37.xyz;
                r46.xyz = -r46.xyz * r42.www;
                r46.xyz = exp2(r46.xyz);
                r46.xyz = r46.xyz * r39.yyy;
                r47.xyzw = cmp(r3.xyzw >= r42.wwww);
                r44.w = r47.w ? r4.z : r4.w;
                r44.w = r47.z ? r4.y : r44.w;
                r44.w = r47.y ? r4.x : r44.w;
                r44.w = r47.x ? 1 : r44.w;
                r13.xyz = r1.xyz * r42.www + postFxControl5.xyz;
                r45.w = dot(r13.xyz, postFxControl6.xyz);
                r45.w = postFxControl6.w + r45.w;
                r45.w = 0.00300000003 * r45.w;
                r45.w = max(1, r45.w);
                r45.w = min(2, r45.w);
                r45.w = (uint)r45.w;
                r46.w = dot(r11.xyzw, r33.xyzw);
                r47.x = dot(r11.xyzw, r34.xyzw);
                r11.x = dot(r11.xyzw, r35.xyzw);
                r11.y = (int)r45.w + -1;
                r47.yzw = icb[r11.y+0].xxx * r30.xyz;
                r47.yzw = icb[r11.y+0].yyy * r31.xyz + r47.yzw;
                r48.x = -r47.y + r46.w;
                r48.y = r47.x + -r47.z;
                r11.yz = r48.xy * r47.ww;
                r47.xy = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r11.x = r11.x + -r2.z;
                r11.x = -r11.x * 6.10351563e-05 + 0.999499977;
                r11.y = (int)r24.w + (int)r45.w;
                r47.z = (uint)r11.y;
                r11.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r47.xyz, r11.x).x;
                r11.x = r11.x * r44.w;
                if (r8.y != 0) {
                  r11.y = dot(r27.xyzw, r13.xyzw);
                  r11.z = dot(r28.xyzw, r13.xyzw);
                  r43.xy = frac(r11.yz);
                  r13.xyz = gCookieArray.SampleLevel(samplerLinear_s, r43.xyz, 0).xyz;
                  r13.xyz = float3(-1,-1,-1) + r13.xyz;
                  r13.xyz = r8.xxx * r13.xyz + float3(1,1,1);
                  r47.xyz = r46.xyz * r43.www;
                  r47.xyz = r47.xyz * r11.xxx;
                  r13.xyz = r47.xyz * r13.xyz;
                } else {
                  r47.xyz = r46.xyz * r43.www;
                  r13.xyz = r47.xyz * r11.xxx;
                }
                r11.xyz = r46.xyz * r43.www;
                r11.xyz = r11.xyz * r38.xyz;
                r11.xyz = r11.xyz * r44.www;
                r11.xyz = r13.xyz * r41.yzw + r11.xyz;
                r13.xyz = r44.xyz + r11.xyz;
                r43.w = dot(float3(0.298999995,0.587000012,0.114), r45.xyz);
                r44.w = dot(float3(0.298999995,0.587000012,0.114), r11.xyz);
                r45.w = max(r44.w, r43.w);
                r43.w = min(r44.w, r43.w);
                r43.w = r43.w / r45.w;
                r43.w = cmp(r43.w < 0.800000012);
                if (r43.w != 0) {
                  r43.w = r31.w * r36.w + r8.z;
                  r14.xyz = r43.www * r1.xyz;
                  r44.w = r1.z * r43.w + r40.w;
                  r44.w = r44.w * -r40.z;
                  r44.w = exp2(r44.w);
                  r44.w = min(1, r44.w);
                  r44.w = r44.w * r40.y;
                  r44.w = min(r44.w, r40.x);
                  r46.xyz = r44.www * r37.xyz;
                  r46.xyz = -r46.xyz * r43.www;
                  r46.xyz = exp2(r46.xyz);
                  r46.xyz = r46.xyz * r39.yyy;
                  r47.xyzw = cmp(r3.xyzw >= r43.wwww);
                  r45.w = r47.w ? r4.z : r4.w;
                  r45.w = r47.z ? r4.y : r45.w;
                  r45.w = r47.y ? r4.x : r45.w;
                  r45.w = r47.x ? 1 : r45.w;
                  r15.xyz = r1.xyz * r43.www + postFxControl5.xyz;
                  r43.w = dot(r15.xyz, postFxControl6.xyz);
                  r43.w = postFxControl6.w + r43.w;
                  r43.w = 0.00300000003 * r43.w;
                  r43.w = max(1, r43.w);
                  r43.w = min(2, r43.w);
                  r43.w = (uint)r43.w;
                  r46.w = dot(r14.xyzw, r33.xyzw);
                  r47.x = dot(r14.xyzw, r34.xyzw);
                  r14.x = dot(r14.xyzw, r35.xyzw);
                  r14.y = (int)r43.w + -1;
                  r47.yzw = icb[r14.y+0].xxx * r30.xyz;
                  r47.yzw = icb[r14.y+0].yyy * r31.xyz + r47.yzw;
                  r48.x = -r47.y + r46.w;
                  r48.y = r47.x + -r47.z;
                  r14.yz = r48.xy * r47.ww;
                  r47.xy = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r14.x = r14.x + -r2.z;
                  r14.x = -r14.x * 6.10351563e-05 + 0.999499977;
                  r14.y = (int)r24.w + (int)r43.w;
                  r47.z = (uint)r14.y;
                  r14.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r47.xyz, r14.x).x;
                  r14.x = r14.x * r45.w;
                  if (r8.y != 0) {
                    r14.y = dot(r27.xyzw, r15.xyzw);
                    r14.z = dot(r28.xyzw, r15.xyzw);
                    r43.xy = frac(r14.yz);
                    r15.xyz = gCookieArray.SampleLevel(samplerLinear_s, r43.xyz, 0).xyz;
                    r15.xyz = float3(-1,-1,-1) + r15.xyz;
                    r15.xyz = r8.xxx * r15.xyz + float3(1,1,1);
                    r43.xyw = r46.xyz * r44.www;
                    r43.xyw = r43.xyw * r14.xxx;
                    r15.xyz = r43.xyw * r15.xyz;
                  } else {
                    r43.xyw = r46.xyz * r44.www;
                    r15.xyz = r43.xyw * r14.xxx;
                  }
                  r14.xyz = r15.xyz * r41.yzw;
                } else {
                  r15.xyz = r45.xyz + r11.xyz;
                  r14.xyz = float3(0.5,0.5,0.5) * r15.xyz;
                }
                r44.xyz = r14.xyz + r13.xyz;
                r37.w = (int)r37.w + 2;
                r45.xyz = r11.xyz;
                r8.z = r42.w;
              }
              r8.x = r41.x * r36.z;
              r8.xyz = r44.xyz * r8.xxx;
              r32.xyz = r8.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r32.xyz;
              break;
              case 4 :              r8.x = r29.w + r36.x;
              r8.x = min(r8.x, r26.w);
              r8.y = r26.w + -r8.x;
              r8.z = r8.y / postFxControlA.x;
              r8.z = min(39, r8.z);
              r8.z = floor(r8.z);
              r8.z = 1 + r8.z;
              r8.z = (uint)r8.z;
              r8.z = (int)r8.z + 1;
              r8.z = (int)r8.z & -2;
              r10.x = (uint)r8.z;
              r10.x = 1 / r10.x;
              r8.y = r10.x * r8.y;
              r10.y = -r8.y * 0.5 + r26.w;
              r8.x = r8.y * 0.5 + r8.x;
              r8.y = r10.y + -r8.x;
              r8.y = r8.y * r10.x;
              r10.x = r8.y * r1.w;
              r8.x = r10.x * 1.5 + r8.x;
              r10.x = 100 * r40.y;
              r10.y = r1.z * r8.x + r40.w;
              r10.y = -r40.z * r10.y;
              r10.y = exp2(r10.y);
              r10.y = min(1, r10.y);
              r10.y = r40.y * r10.y;
              r10.y = min(r10.y, r10.x);
              r11.xyz = r37.xyz * r10.yyy;
              r11.xyz = -r11.xyz * r8.xxx;
              r11.xyz = exp2(r11.xyz);
              r11.xyz = r11.xyz * r39.yyy;
              r41.xyzw = cmp(r3.xyzw >= r8.xxxx);
              r10.z = r41.w ? r4.z : r4.w;
              r10.z = r41.z ? r4.y : r10.z;
              r10.z = r41.y ? r4.x : r10.z;
              r10.z = r41.x ? 1 : r10.z;
              r6.x = saturate(0.000500000024 * r8.x);
              r13.xyz = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r6.yzx, 0).xyz;
              r11.xyz = r13.xyz * r11.xyz;
              r11.xyz = r11.xyz * r10.yyy;
              r11.xyz = r11.xyz * r39.zzz;
              r11.xyz = r11.xyz * r10.zzz;
              r13.xyz = r11.xyz;
              r14.xyz = r11.xyz;
              r10.y = r8.x;
              r10.z = 0;
              while (true) {
                r15.x = cmp((uint)r10.z >= (uint)r8.z);
                if (r15.x != 0) break;
                r10.y = r8.y * 2 + r10.y;
                r15.x = r1.z * r10.y + r40.w;
                r15.x = -r40.z * r15.x;
                r15.x = exp2(r15.x);
                r15.x = min(1, r15.x);
                r15.x = r40.y * r15.x;
                r15.x = min(r15.x, r10.x);
                r41.xyz = r37.xyz * r15.xxx;
                r41.xyz = -r41.xyz * r10.yyy;
                r41.xyz = exp2(r41.xyz);
                r41.xyz = r41.xyz * r39.yyy;
                r43.xyzw = cmp(r3.xyzw >= r10.yyyy);
                r15.y = r43.w ? r4.z : r4.w;
                r15.y = r43.z ? r4.y : r15.y;
                r15.y = r43.y ? r4.x : r15.y;
                r15.y = r43.x ? 1 : r15.y;
                r6.w = saturate(0.000500000024 * r10.y);
                r43.xyz = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r6.yzw, 0).xyz;
                r41.xyz = r43.xyz * r41.xyz;
                r41.xyz = r41.xyz * r15.xxx;
                r41.xyz = r41.xyz * r39.zzz;
                r43.xyz = r41.xyz * r15.yyy;
                r45.xyz = r41.xyz * r15.yyy + r13.xyz;
                r15.x = dot(float3(0.298999995,0.587000012,0.114), r14.xyz);
                r15.z = dot(float3(0.298999995,0.587000012,0.114), r43.xyz);
                r30.w = max(r15.x, r15.z);
                r15.x = min(r15.x, r15.z);
                r15.x = r15.x / r30.w;
                r15.x = cmp(r15.x < 0.800000012);
                if (r15.x != 0) {
                  r46.xyz = float3(0,0,0);
                } else {
                  r15.xyz = r41.xyz * r15.yyy + r14.xyz;
                  r46.xyz = float3(0.5,0.5,0.5) * r15.xyz;
                }
                r13.xyz = r46.xyz + r45.xyz;
                r10.z = (int)r10.z + 2;
                r14.xyz = r43.xyz;
              }
              r8.x = r36.z * r8.y;
              r8.xyz = r13.xyz * r8.xxx;
              r32.xyz = r8.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r32.xyz;
              break;
              case 5 :              r8.x = r29.w + r36.x;
              r8.x = min(r8.x, r26.w);
              r8.y = r26.w + -r8.x;
              r8.z = r8.y / postFxControlA.x;
              r8.z = min(39, r8.z);
              r8.z = floor(r8.z);
              r8.z = 1 + r8.z;
              r8.z = (uint)r8.z;
              r8.z = (int)r8.z + 1;
              r8.z = (int)r8.z & -2;
              r10.x = (uint)r8.z;
              r10.x = 1 / r10.x;
              r10.y = dot(r29.xyz, -r1.xyz);
              r8.y = r10.x * r8.y;
              r10.z = -r8.y * 0.5 + r26.w;
              r8.x = r8.y * 0.5 + r8.x;
              r8.y = r10.z + -r8.x;
              r10.z = r8.y * r10.x;
              r10.y = max(-1, r10.y);
              r10.y = min(1, r10.y);
              r10.y = r36.y * r10.y + 1;
              r10.y = max(9.99999997e-07, r10.y);
              r10.y = min(2, r10.y);
              r11.x = -r36.y * r36.y + 1;
              r11.x = 0.0795774683 * r11.x;
              r10.y = r10.y * r10.y;
              r10.y = rcp(r10.y);
              r10.y = r11.x * r10.y;
              r10.y = max(0, r10.y);
              r10.y = min(10000, r10.y);
              r38.y = r39.x;
              r11.xyz = r38.xwy * r10.yyy;
              r11.xyz = r11.xyz * r39.www;
              r11.xyz = float3(12.566371,12.566371,12.566371) * r11.xyz;
              r10.y = r10.z * r1.w;
              r8.x = r10.y * 1.5 + r8.x;
              r9.xyz = r8.xxx * r1.xyz;
              r10.y = 100 * r40.y;
              r14.x = r1.z * r8.x + r40.w;
              r14.x = -r40.z * r14.x;
              r14.x = exp2(r14.x);
              r14.x = min(1, r14.x);
              r14.x = r40.y * r14.x;
              r14.x = min(r14.x, r10.y);
              r15.xyz = r37.xyz * r14.xxx;
              r15.xyz = -r15.xyz * r8.xxx;
              r15.xyz = exp2(r15.xyz);
              r15.xyz = r15.xyz * r39.yyy;
              r38.xyzw = cmp(r3.xyzw >= r8.xxxx);
              r14.y = r38.w ? r4.z : r4.w;
              r14.y = r38.z ? r4.y : r14.y;
              r14.y = r38.y ? r4.x : r14.y;
              r14.y = r38.x ? 1 : r14.y;
              r12.xyz = r1.xyz * r8.xxx + postFxControl5.xyz;
              r14.z = dot(r12.xyz, postFxControl6.xyz);
              r14.z = postFxControl6.w + r14.z;
              r14.z = 0.00300000003 * r14.z;
              r14.z = max(1, r14.z);
              r14.z = min(2, r14.z);
              r14.z = (uint)r14.z;
              r30.w = dot(r9.xyzw, r33.xyzw);
              r31.w = dot(r9.xyzw, r34.xyzw);
              r9.x = dot(r9.xyzw, r35.xyzw);
              r9.y = (int)r14.z + -1;
              r38.xyz = icb[r9.y+0].xxx * r30.xyz;
              r38.xyz = icb[r9.y+0].yyy * r31.xyz + r38.xyz;
              r41.x = -r38.x + r30.w;
              r41.y = -r38.y + r31.w;
              r9.yz = r41.xy * r38.zz;
              r38.xy = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r9.x = r9.x + -r2.z;
              r9.x = -r9.x * 6.10351563e-05 + 0.999499977;
              r9.y = (int)r24.w + (int)r14.z;
              r38.z = (uint)r9.y;
              r9.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r9.x).x;
              r9.x = r9.x * r14.y;
              r9.y = cmp(0 < r23.w);
              r9.z = cmp(0 < (uint)r2.w);
              r9.y = r9.z ? r9.y : 0;
              if (r9.y != 0) {
                r9.z = dot(r27.xyzw, r12.xyzw);
                r12.x = dot(r28.xyzw, r12.xyzw);
                r38.x = frac(r9.z);
                r38.y = frac(r12.x);
                r9.z = (int)r2.w + -1;
                r38.z = (uint)r9.z;
                r12.xyz = gCookieArray.SampleLevel(samplerLinear_s, r38.xyz, 0).xyz;
                r9.z = r23.z * r23.w;
                r12.xyz = float3(-1,-1,-1) + r12.xyz;
                r12.xyz = r9.zzz * r12.xyz + float3(1,1,1);
                r38.xyz = r15.xyz * r14.xxx;
                r38.xyz = r38.xyz * r9.xxx;
                r12.xyz = r38.xyz * r12.xyz;
              } else {
                r38.xyz = r15.xyz * r14.xxx;
                r12.xyz = r38.xyz * r9.xxx;
              }
              r6.x = saturate(0.000500000024 * r8.x);
              r38.xyz = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r6.yzx, 0).xyz;
              r15.xyz = r38.xyz * r15.xyz;
              r15.xyz = r15.xyz * r14.xxx;
              r15.xyz = r15.xyz * r39.zzz;
              r14.xyz = r15.xyz * r14.yyy;
              r12.xyz = r12.xyz * r11.xyz + r14.xyz;
              r6.x = (int)r2.w + -1;
              r14.z = (uint)r6.x;
              r6.x = r23.z * r23.w;
              r15.xyz = r12.xyz;
              r38.xyz = r12.xyz;
              r9.x = r8.x;
              r9.z = 0;
              while (true) {
                r30.w = cmp((uint)r9.z >= (uint)r8.z);
                if (r30.w != 0) break;
                r30.w = r10.z * 2 + r9.x;
                r17.xyz = r30.www * r1.xyz;
                r31.w = r1.z * r30.w + r40.w;
                r31.w = -r40.z * r31.w;
                r31.w = exp2(r31.w);
                r31.w = min(1, r31.w);
                r31.w = r40.y * r31.w;
                r31.w = min(r31.w, r10.y);
                r41.xyz = r37.xyz * r31.www;
                r41.xyz = -r41.xyz * r30.www;
                r41.xyz = exp2(r41.xyz);
                r41.xyz = r41.xyz * r39.yyy;
                r43.xyzw = cmp(r3.xyzw >= r30.wwww);
                r32.w = r43.w ? r4.z : r4.w;
                r32.w = r43.z ? r4.y : r32.w;
                r32.w = r43.y ? r4.x : r32.w;
                r32.w = r43.x ? 1 : r32.w;
                r18.xyz = r1.xyz * r30.www + postFxControl5.xyz;
                r36.w = dot(r18.xyz, postFxControl6.xyz);
                r36.w = postFxControl6.w + r36.w;
                r36.w = 0.00300000003 * r36.w;
                r36.w = max(1, r36.w);
                r36.w = min(2, r36.w);
                r36.w = (uint)r36.w;
                r37.w = dot(r17.xyzw, r33.xyzw);
                r38.w = dot(r17.xyzw, r34.xyzw);
                r17.x = dot(r17.xyzw, r35.xyzw);
                r17.y = (int)r36.w + -1;
                r43.xyz = icb[r17.y+0].xxx * r30.xyz;
                r43.xyz = icb[r17.y+0].yyy * r31.xyz + r43.xyz;
                r45.x = -r43.x + r37.w;
                r45.y = -r43.y + r38.w;
                r17.yz = r45.xy * r43.zz;
                r43.xy = r17.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r17.x = r17.x + -r2.z;
                r17.x = -r17.x * 6.10351563e-05 + 0.999499977;
                r17.y = (int)r24.w + (int)r36.w;
                r43.z = (uint)r17.y;
                r17.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r17.x).x;
                r17.x = r17.x * r32.w;
                if (r9.y != 0) {
                  r17.y = dot(r27.xyzw, r18.xyzw);
                  r17.z = dot(r28.xyzw, r18.xyzw);
                  r14.xy = frac(r17.yz);
                  r18.xyz = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
                  r18.xyz = float3(-1,-1,-1) + r18.xyz;
                  r18.xyz = r6.xxx * r18.xyz + float3(1,1,1);
                  r43.xyz = r41.xyz * r31.www;
                  r43.xyz = r43.xyz * r17.xxx;
                  r18.xyz = r43.xyz * r18.xyz;
                } else {
                  r43.xyz = r41.xyz * r31.www;
                  r18.xyz = r43.xyz * r17.xxx;
                }
                r6.w = saturate(0.000500000024 * r30.w);
                r17.xyz = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r6.yzw, 0).xyz;
                r17.xyz = r17.xyz * r41.xyz;
                r17.xyz = r17.xyz * r31.www;
                r17.xyz = r17.xyz * r39.zzz;
                r17.xyz = r17.xyz * r32.www;
                r17.xyz = r18.xyz * r11.xyz + r17.xyz;
                r18.xyz = r17.xyz + r15.xyz;
                r6.w = dot(float3(0.298999995,0.587000012,0.114), r38.xyz);
                r31.w = dot(float3(0.298999995,0.587000012,0.114), r17.xyz);
                r32.w = max(r31.w, r6.w);
                r6.w = min(r31.w, r6.w);
                r6.w = r6.w / r32.w;
                r6.w = cmp(r6.w < 0.800000012);
                if (r6.w != 0) {
                  r6.w = r8.y * r10.x + r9.x;
                  r19.xyz = r6.www * r1.xyz;
                  r31.w = r1.z * r6.w + r40.w;
                  r31.w = -r40.z * r31.w;
                  r31.w = exp2(r31.w);
                  r31.w = min(1, r31.w);
                  r31.w = r40.y * r31.w;
                  r31.w = min(r31.w, r10.y);
                  r41.xyz = r37.xyz * r31.www;
                  r41.xyz = -r41.xyz * r6.www;
                  r41.xyz = exp2(r41.xyz);
                  r41.xyz = r41.xyz * r39.yyy;
                  r43.xyzw = cmp(r3.xyzw >= r6.wwww);
                  r32.w = r43.w ? r4.z : r4.w;
                  r32.w = r43.z ? r4.y : r32.w;
                  r32.w = r43.y ? r4.x : r32.w;
                  r32.w = r43.x ? 1 : r32.w;
                  r20.xyz = r1.xyz * r6.www + postFxControl5.xyz;
                  r6.w = dot(r20.xyz, postFxControl6.xyz);
                  r6.w = postFxControl6.w + r6.w;
                  r6.w = 0.00300000003 * r6.w;
                  r6.w = max(1, r6.w);
                  r6.w = min(2, r6.w);
                  r6.w = (uint)r6.w;
                  r36.w = dot(r19.xyzw, r33.xyzw);
                  r37.w = dot(r19.xyzw, r34.xyzw);
                  r19.x = dot(r19.xyzw, r35.xyzw);
                  r19.y = (int)r6.w + -1;
                  r43.xyz = icb[r19.y+0].xxx * r30.xyz;
                  r43.xyz = icb[r19.y+0].yyy * r31.xyz + r43.xyz;
                  r45.x = -r43.x + r36.w;
                  r45.y = -r43.y + r37.w;
                  r19.yz = r45.xy * r43.zz;
                  r43.xy = r19.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r19.x = r19.x + -r2.z;
                  r19.x = -r19.x * 6.10351563e-05 + 0.999499977;
                  r6.w = (int)r24.w + (int)r6.w;
                  r43.z = (uint)r6.w;
                  r6.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyz, r19.x).x;
                  r6.w = r6.w * r32.w;
                  if (r9.y != 0) {
                    r19.x = dot(r27.xyzw, r20.xyzw);
                    r19.y = dot(r28.xyzw, r20.xyzw);
                    r14.xy = frac(r19.xy);
                    r19.xyz = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
                    r19.xyz = float3(-1,-1,-1) + r19.xyz;
                    r19.xyz = r6.xxx * r19.xyz + float3(1,1,1);
                    r20.xyz = r41.xyz * r31.www;
                    r20.xyz = r20.xyz * r6.www;
                    r19.xyz = r20.xyz * r19.xyz;
                  } else {
                    r20.xyz = r41.xyz * r31.www;
                    r19.xyz = r20.xyz * r6.www;
                  }
                  r19.xyz = r19.xyz * r11.xyz;
                } else {
                  r20.xyz = r38.xyz + r17.xyz;
                  r19.xyz = float3(0.5,0.5,0.5) * r20.xyz;
                }
                r15.xyz = r19.xyz + r18.xyz;
                r9.z = (int)r9.z + 2;
                r38.xyz = r17.xyz;
                r9.x = r30.w;
              }
              r6.x = r36.z * r10.z;
              r8.xyz = r15.xyz * r6.xxx;
              r32.xyz = r8.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r32.xyz;
              break;
              default :
              break;
            }
            r6.x = r29.w + r36.x;
            r6.x = min(r6.x, r26.w);
            r6.w = 100 * r40.y;
            r8.x = -r36.y * r36.y + 1;
            r8.x = 0.0795774683 * r8.x;
            r9.xyz = float3(0,0,0);
            r5.z = r7.x;
            while (true) {
              r8.y = cmp((uint)r7.y < (uint)r5.z);
              if (r8.y != 0) break;
              r8.y = visibleVolumetricSpotLights.Load(r5.xyzw).x;
              r8.z = (uint)r5.z << 5;
              r38.xyz = r9.xyz;
              r38.w = r8.y;
              while (true) {
                if (r38.w == 0) break;
                r10.x = firstbitlow((uint)r38.w);
                r10.y = 1 << (int)r10.x;
                r10.z = (int)r10.y & (int)r38.w;
                if (r10.z != 0) {
                  r38.w = (int)r10.y ^ (int)r38.w;
                  r23.x = (int)r8.z + (int)r10.x;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r10.xyz, r23.x, l(12), t11.xyzx
                r10.x = gTrilinearClampSampler[]..swiz;
                r10.y = gTrilinearClampSampler[]..swiz;
                r10.z = gTrilinearClampSampler[]..swiz;
                  r10.x = dot(r10.xyz, r10.xyz);
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r11.xyz, r23.x, l(0), t11.xyzx
                r11.x = gTrilinearClampSampler[]..swiz;
                r11.y = gTrilinearClampSampler[]..swiz;
                r11.z = gTrilinearClampSampler[]..swiz;
                  r10.y = dot(-r11.xyz, r1.xyz);
                  r10.z = dot(-r11.xyz, -r11.xyz);
                  r10.x = r10.z + -r10.x;
                  r10.x = r10.y * r10.y + -r10.x;
                  r10.z = cmp(0 < r10.x);
                  r10.x = sqrt(r10.x);
                  r11.x = -r10.y + -r10.x;
                  r10.x = -r10.y + r10.x;
                  r10.y = min(r11.x, r10.x);
                  r10.x = max(r11.x, r10.x);
                  r10.xy = max(r10.xy, r6.xx);
                  r10.xy = min(r10.xy, r26.ww);
                  r11.x = 9.99999997e-07 + r10.y;
                  r11.x = cmp(r11.x < r10.x);
                  r10.z = r10.z ? r11.x : 0;
                  if (r10.z == 0) {
                    r11.xyz = float3(0,0,0);
                  }
                  if (r10.z != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r23.x, l(68), t12.xyzw
                  r41.x = gTrilinearClampSampler[]..swiz;
                  r41.y = gTrilinearClampSampler[]..swiz;
                  r41.z = gTrilinearClampSampler[]..swiz;
                  r41.w = gTrilinearClampSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r23.x, l(84), t12.xyzw
                  r43.x = gTrilinearClampSampler[]..swiz;
                  r43.y = gTrilinearClampSampler[]..swiz;
                  r43.z = gTrilinearClampSampler[]..swiz;
                  r43.w = gTrilinearClampSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r23.x, l(116), t12.xyzw
                  r45.x = gTrilinearClampSampler[]..swiz;
                  r45.y = gTrilinearClampSampler[]..swiz;
                  r45.z = gTrilinearClampSampler[]..swiz;
                  r45.w = gTrilinearClampSampler[]..swiz;
                    r21.xyz = r10.yyy * r1.xyz;
                    r22.xyz = r10.xxx * r1.xyz;
                    r46.x = dot(r41.xyzw, r21.xyzw);
                    r46.y = dot(r43.xyzw, r21.xyzw);
                    r46.w = dot(r45.xyzw, r21.xyzw);
                    r41.x = dot(r41.xyzw, r22.xyzw);
                    r41.y = dot(r43.xyzw, r22.xyzw);
                    r41.w = dot(r45.xyzw, r22.xyzw);
                    r12.xy = r46.ww + r46.xy;
                    r14.xy = r46.ww + -r46.xy;
                    r17.xy = r41.ww + r41.xy;
                    r18.xy = r41.ww + -r41.xy;
                    r19.xy = cmp(r12.xy < float2(0,0));
                    r20.xy = -r17.xy + r12.xy;
                    r20.xy = r12.xy / r20.xy;
                    r10.z = max(0, r20.x);
                    r10.z = r19.x ? r10.z : 0;
                    r19.xz = cmp(r14.xy < float2(0,0));
                    r20.xz = -r18.xy + r14.xy;
                    r20.xz = r14.xy / r20.xz;
                    r12.z = max(r20.x, r10.z);
                    r10.z = r19.x ? r12.z : r10.z;
                    r12.z = max(r10.z, r20.y);
                    r10.z = r19.y ? r12.z : r10.z;
                    r12.z = max(r10.z, r20.z);
                    r10.z = r19.z ? r12.z : r10.z;
                    r19.xy = cmp(r17.xy < float2(0,0));
                    r12.xy = r17.xy + -r12.xy;
                    r12.xy = r17.xy / r12.xy;
                    r12.x = max(0, r12.x);
                    r12.x = r19.x ? r12.x : 0;
                    r17.xy = cmp(r18.xy < float2(0,0));
                    r14.xy = r18.xy + -r14.xy;
                    r14.xy = r18.xy / r14.xy;
                    r12.z = max(r14.x, r12.x);
                    r12.x = r17.x ? r12.z : r12.x;
                    r12.y = max(r12.x, r12.y);
                    r12.x = r19.y ? r12.y : r12.x;
                    r12.y = max(r12.x, r14.y);
                    r12.x = r17.y ? r12.y : r12.x;
                    r10.z = min(1, r10.z);
                    r12.x = min(1, r12.x);
                    r12.x = 1 + -r12.x;
                    r12.y = 9.99999997e-07 + r10.z;
                    r12.y = cmp(r12.y < r12.x);
                    if (r12.y != 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r23.x, l(0), t12.xyzw
                    r43.x = gTrilinearClampSampler[]..swiz;
                    r43.y = gTrilinearClampSampler[]..swiz;
                    r43.z = gTrilinearClampSampler[]..swiz;
                    r43.w = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xy, r23.x, l(16), t12.xyxx
                    r14.x = gTrilinearClampSampler[]..swiz;
                    r14.y = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r23.x, l(28), t12.xyzw
                    r45.x = gTrilinearClampSampler[]..swiz;
                    r45.y = gTrilinearClampSampler[]..swiz;
                    r45.z = gTrilinearClampSampler[]..swiz;
                    r45.w = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.yz, r23.x, l(44), t12.xxyx
                    r12.y = gTrilinearClampSampler[]..swiz;
                    r12.z = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r47.xyzw, r23.x, l(100), t12.xyzw
                    r47.x = gTrilinearClampSampler[]..swiz;
                    r47.y = gTrilinearClampSampler[]..swiz;
                    r47.z = gTrilinearClampSampler[]..swiz;
                    r47.w = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r48.xyzw, r23.x, l(132), t12.xyzw
                    r48.x = gTrilinearClampSampler[]..swiz;
                    r48.y = gTrilinearClampSampler[]..swiz;
                    r48.z = gTrilinearClampSampler[]..swiz;
                    r48.w = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r49.xyzw, r23.x, l(172), t12.yzwx
                    r49.x = gTrilinearClampSampler[]..swiz;
                    r49.y = gTrilinearClampSampler[]..swiz;
                    r49.z = gTrilinearClampSampler[]..swiz;
                    r49.w = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r50.xyzw, r23.x, l(188), t12.xyzw
                    r50.x = gTrilinearClampSampler[]..swiz;
                    r50.y = gTrilinearClampSampler[]..swiz;
                    r50.z = gTrilinearClampSampler[]..swiz;
                    r50.w = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r51.xyzw, r23.x, l(204), t12.xyzw
                    r51.x = gTrilinearClampSampler[]..swiz;
                    r51.y = gTrilinearClampSampler[]..swiz;
                    r51.z = gTrilinearClampSampler[]..swiz;
                    r51.w = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r52.xyzw, r23.x, l(220), t12.xyzw
                    r52.x = gTrilinearClampSampler[]..swiz;
                    r52.y = gTrilinearClampSampler[]..swiz;
                    r52.z = gTrilinearClampSampler[]..swiz;
                    r52.w = gTrilinearClampSampler[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.x, r23.x, l(236), t12.xxxx
                    r17.x = gTrilinearClampSampler[]..swiz;
                      r17.yz = (int2)r0.xy + (int2)r23.xy;
                      r17.yz = (uint2)r17.yz;
                      r17.y = dot(r17.yz, float2(0.0671105608,0.00583714992));
                      r17.y = frac(r17.y);
                      r17.y = 52.9829178 * r17.y;
                      r17.y = frac(r17.y);
                      if (3 == 0) r17.z = 0; else if (3+27 < 32) {                       r17.z = (uint)r45.x << (32-(3 + 27)); r17.z = (uint)r17.z >> (32-3);                      } else r17.z = (uint)r45.x >> 27;
                      r46.z = dot(r47.xyzw, r21.xyzw);
                      r41.z = dot(r47.xyzw, r22.xyzw);
                      r10.x = r10.x + -r10.y;
                      r18.x = r10.z * r10.x + r10.y;
                      r18.x = -1000 + r18.x;
                      r18.x = saturate(0.000500000024 * r18.x);
                      r18.x = 1 + -r18.x;
                      r18.x = r18.x * r0.w;
                      r18.x = floor(r18.x);
                      r18.x = max(2, r18.x);
                      r18.x = (uint)r18.x;
                      r18.y = r12.x + -r10.z;
                      r18.z = (uint)r18.x;
                      r18.y = r18.y / r18.z;
                      r12.x = -r18.y * 0.5 + r12.x;
                      r10.z = r18.y * 0.5 + r10.z;
                      r18.y = r12.x + -r10.z;
                      r18.y = r18.y / r18.z;
                      r17.y = -0.5 + r17.y;
                      r17.y = r18.y * r17.y;
                      r10.z = r17.y * 1.5 + r10.z;
                      r12.x = r17.y * 1.5 + r12.x;
                      r17.y = r10.z * r10.x + r10.y;
                      r10.x = r12.x * r10.x + r10.y;
                      r10.y = 1 / r18.z;
                      r41.xyzw = r41.xyzw + -r46.xyzw;
                      r47.xyzw = r41.xyzw * r12.xxxx + r46.xyzw;
                      r41.xyzw = r41.xyzw * r10.zzzz + r46.xyzw;
                      r41.xyz = r41.xyz / r41.www;
                      r47.xyz = r47.xyz / r47.www;
                      r10.z = (int)r45.x & 0x0000ffff;
                      r10.x = r10.x + -r17.y;
                      r12.x = r10.x * r10.y;
                      r46.xyzw = r47.xyzw + -r41.xyzw;
                      r47.xyzw = r46.xyzw * r10.yyyy;
                      r18.yz = saturate(r41.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                      r19.xy = r18.yz * r48.xz + r48.yw;
                      r19.z = (uint)r10.z;
                      r10.z = cmp((int)r17.z != 1);
                      if (r10.z != 0) {
                        r17.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r41.z).x;
                      } else {
                        r17.z = 1;
                      }
                      r53.xyzw = cmp(r3.xyzw >= r17.yyyy);
                      r18.y = r53.w ? r4.z : r4.w;
                      r18.y = r53.z ? r4.y : r18.y;
                      r18.y = r53.y ? r4.x : r18.y;
                      r18.y = r53.x ? 1 : r18.y;
                      r18.y = r18.y * r17.z;
                      r18.z = cmp(9.99999975e-05 < r18.y);
                      if (r18.z != 0) {
                        r18.z = r17.x ? 0.000000 : 0;
                        r20.x = (uint)r45.x >> 31;
                        r20.x = cmp((int)r20.x != 0);
                        r20.y = cmp(0 < (uint)r18.z);
                        r20.x = r20.y ? r20.x : 0;
                        if (r20.x != 0) {
                          r24.xy = r41.xy;
                          r20.x = dot(r51.yzw, r24.xyz);
                          r20.y = dot(r52.xyz, r24.xyz);
                          r21.xy = frac(r20.xy);
                          r18.z = (int)r18.z + -1;
                          r21.z = (uint)r18.z;
                          r20.xyz = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
                        } else {
                          r20.xyz = float3(1,1,1);
                        }
                        r18.z = r17.y * r1.z + r40.w;
                        r18.z = -r40.z * r18.z;
                        r18.z = exp2(r18.z);
                        r18.z = min(1, r18.z);
                        r18.z = r40.y * r18.z;
                        r18.z = min(r18.z, r6.w);
                        r21.xyz = -r17.yyy * r1.xyz + r43.xyz;
                        r22.x = r12.z * r12.z;
                        r22.y = dot(r21.xyz, r21.xyz);
                        r22.x = r22.x / r22.y;
                        r22.x = min(1, r22.x);
                        r22.z = saturate(r41.w * r45.y + r45.z);
                        r23.x = saturate(r41.w * r45.w + r12.y);
                        r24.x = r22.z * r22.z;
                        r22.z = r22.z * -2 + 3;
                        r22.z = r24.x * r22.z;
                        r22.x = r22.x * r22.z;
                        r22.z = r23.x * r23.x;
                        r23.x = r23.x * -2 + 3;
                        r22.z = r23.x * r22.z;
                        r22.x = r22.x * r22.z;
                        r22.z = cmp(r49.w < 0.00048828125);
                        if (r22.z != 0) {
                          r24.x = r50.w;
                          r24.y = r51.x;
                          r24.xy = saturate(abs(r41.xy) * r50.yz + r24.xy);
                          r36.xw = r24.xy * r24.xy;
                          r24.xy = r24.xy * float2(-2,-2) + float2(3,3);
                          r24.xy = r36.xw * r24.xy;
                          r22.z = r24.x * r24.y;
                        } else {
                          r53.xyz = r49.xyz;
                          r53.w = r50.x;
                          r53.xyzw = saturate(r53.xyzw * abs(r41.yyxx));
                          r53.xyzw = log2(r53.xyzw);
                          r53.xyzw = r53.xyzw * r50.wwww;
                          r53.xyzw = exp2(r53.xyzw);
                          r24.xy = r53.xy + r53.zw;
                          r24.xy = log2(r24.xy);
                          r24.xy = r51.xx * r24.xy;
                          r24.xy = exp2(r24.xy);
                          r23.x = r50.y * r24.x;
                          r24.x = r50.z * r24.y + -1;
                          r23.x = r50.z * r24.y + -r23.x;
                          r23.x = saturate(r24.x / r23.x);
                          r24.x = r23.x * r23.x;
                          r23.x = r23.x * -2 + 3;
                          r22.z = r24.x * r23.x;
                        }
                        r22.x = r22.x * r22.z;
                        r18.y = r22.x * r18.y;
                        r39.xzw = r37.xyz * r18.zzz;
                        r22.x = rsqrt(r22.y);
                        r21.xyz = r22.xxx * r21.xyz;
                        r21.x = dot(-r1.xyz, r21.xyz);
                        r21.x = max(-1, r21.x);
                        r21.x = min(1, r21.x);
                        r21.x = r36.y * r21.x + 1;
                        r21.x = max(9.99999997e-07, r21.x);
                        r21.x = min(2, r21.x);
                        r21.x = r21.x * r21.x;
                        r21.x = rcp(r21.x);
                        r21.x = r21.x * r8.x;
                        r21.x = max(0, r21.x);
                        r21.x = min(10000, r21.x);
                        r21.y = sqrt(r22.y);
                        r21.y = r21.y + r17.y;
                        r22.xyz = r39.xzw * -r21.yyy;
                        r22.xyz = exp2(r22.xyz);
                        r22.xyz = min(float3(1,1,1), r22.xyz);
                        r22.xyz = r22.xyz * r18.zzz;
                        r21.xyz = r22.xyz * r21.xxx;
                        r21.xyz = r21.xyz * r18.yyy;
                        r20.xyz = r21.xyz * r20.xyz;
                      } else {
                        r20.xyz = float3(0,0,0);
                      }
                      r17.x = r17.x ? 0.000000 : 0;
                      r18.y = (uint)r45.x >> 31;
                      r18.y = cmp((int)r18.y != 0);
                      r18.z = cmp(0 < (uint)r17.x);
                      r18.y = r18.z ? r18.y : 0;
                      r17.x = (int)r17.x + -1;
                      r21.z = (uint)r17.x;
                      r12.z = r12.z * r12.z;
                      r17.x = cmp(r49.w < 0.00048828125);
                      r53.xyz = r49.xyz;
                      r53.w = r50.x;
                      r54.xz = r50.ww;
                      r54.yw = r51.xx;
                      r49.w = r50.x;
                      r55.xyzw = r41.xyzw;
                      r22.xyz = r20.xyz;
                      r18.z = r17.y;
                      r23.x = r17.z;
                      r24.x = 0;
                      while (true) {
                        r24.y = cmp((uint)r24.x >= (uint)r18.x);
                        if (r24.y != 0) break;
                        r24.y = r12.x * 2 + r18.z;
                        r56.xyzw = r47.xyzw * float4(2,2,2,2) + r55.xyzw;
                        if (r10.z != 0) {
                          r36.xw = saturate(r56.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                          r19.xy = r36.xw * r48.xz + r48.yw;
                          r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r56.z).x;
                        } else {
                          r29.w = 1;
                        }
                        r57.xyzw = cmp(r3.xyzw >= r24.yyyy);
                        r30.w = r57.w ? r4.z : r4.w;
                        r30.w = r57.z ? r4.y : r30.w;
                        r30.w = r57.y ? r4.x : r30.w;
                        r30.w = r57.x ? 1 : r30.w;
                        r30.w = r30.w * r29.w;
                        r31.w = cmp(9.99999975e-05 < r30.w);
                        if (r31.w != 0) {
                          if (r18.y != 0) {
                            r25.xy = r56.xy;
                            r31.w = dot(r51.yzw, r25.xyz);
                            r25.x = dot(r52.xyz, r25.xyz);
                            r21.x = frac(r31.w);
                            r21.y = frac(r25.x);
                            r39.xzw = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
                          } else {
                            r39.xzw = float3(1,1,1);
                          }
                          r25.x = r24.y * r1.z + r40.w;
                          r25.x = -r40.z * r25.x;
                          r25.x = exp2(r25.x);
                          r25.x = min(1, r25.x);
                          r25.x = r40.y * r25.x;
                          r25.x = min(r25.x, r6.w);
                          r57.xyz = -r24.yyy * r1.xyz + r43.xyz;
                          r25.y = dot(r57.xyz, r57.xyz);
                          r31.w = r12.z / r25.y;
                          r31.w = min(1, r31.w);
                          r32.w = saturate(r56.w * r45.y + r45.z);
                          r36.x = saturate(r56.w * r45.w + r12.y);
                          r36.w = r32.w * r32.w;
                          r32.w = r32.w * -2 + 3;
                          r32.w = r36.w * r32.w;
                          r31.w = r32.w * r31.w;
                          r32.w = r36.x * r36.x;
                          r36.x = r36.x * -2 + 3;
                          r32.w = r36.x * r32.w;
                          r31.w = r32.w * r31.w;
                          if (r17.x != 0) {
                            r36.xw = saturate(abs(r56.xy) * r50.yz + r54.xy);
                            r58.xy = r36.xw * r36.xw;
                            r36.xw = r36.xw * float2(-2,-2) + float2(3,3);
                            r36.xw = r58.xy * r36.xw;
                            r32.w = r36.x * r36.w;
                          } else {
                            r58.xyzw = saturate(abs(r56.yyxx) * r53.xyzw);
                            r58.xyzw = log2(r58.xyzw);
                            r58.xyzw = r58.xyzw * r50.wwww;
                            r58.xyzw = exp2(r58.xyzw);
                            r36.xw = r58.xy + r58.zw;
                            r36.xw = log2(r36.xw);
                            r36.xw = r51.xx * r36.xw;
                            r36.xw = exp2(r36.xw);
                            r36.x = r50.y * r36.x;
                            r37.w = r50.z * r36.w + -1;
                            r36.x = r50.z * r36.w + -r36.x;
                            r36.x = saturate(r37.w / r36.x);
                            r36.w = r36.x * r36.x;
                            r36.x = r36.x * -2 + 3;
                            r32.w = r36.w * r36.x;
                          }
                          r31.w = r32.w * r31.w;
                          r30.w = r31.w * r30.w;
                          r58.xyz = r37.xyz * r25.xxx;
                          r31.w = rsqrt(r25.y);
                          r57.xyz = r57.xyz * r31.www;
                          r31.w = dot(-r1.xyz, r57.xyz);
                          r31.w = max(-1, r31.w);
                          r31.w = min(1, r31.w);
                          r31.w = r36.y * r31.w + 1;
                          r31.w = max(9.99999997e-07, r31.w);
                          r31.w = min(2, r31.w);
                          r31.w = r31.w * r31.w;
                          r31.w = rcp(r31.w);
                          r31.w = r31.w * r8.x;
                          r31.w = max(0, r31.w);
                          r31.w = min(10000, r31.w);
                          r25.y = sqrt(r25.y);
                          r25.y = r25.y + r24.y;
                          r57.xyz = r58.xyz * -r25.yyy;
                          r57.xyz = exp2(r57.xyz);
                          r57.xyz = min(float3(1,1,1), r57.xyz);
                          r57.xyz = r57.xyz * r25.xxx;
                          r57.xyz = r57.xyz * r31.www;
                          r57.xyz = r57.xyz * r30.www;
                          r39.xzw = r57.xyz * r39.xzw;
                        } else {
                          r39.xzw = float3(0,0,0);
                        }
                        r57.xyz = r39.xzw + r22.xyz;
                        r25.x = -r29.w + r23.x;
                        r25.x = cmp(0.25 < abs(r25.x));
                        if (r25.x != 0) {
                          r25.x = r10.x * r10.y + r18.z;
                          r58.xyzw = r46.xyzw * r10.yyyy + r55.xyzw;
                          if (r10.z != 0) {
                            r36.xw = saturate(r58.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                            r19.xy = r36.xw * r48.xz + r48.yw;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r58.z).x;
                          } else {
                            r19.x = 1;
                          }
                          r59.xyzw = cmp(r3.xyzw >= r25.xxxx);
                          r19.y = r59.w ? r4.z : r4.w;
                          r19.y = r59.z ? r4.y : r19.y;
                          r19.y = r59.y ? r4.x : r19.y;
                          r19.y = r59.x ? 1 : r19.y;
                          r19.x = r19.x * r19.y;
                          r19.y = cmp(9.99999975e-05 < r19.x);
                          if (r19.y != 0) {
                            if (r18.y != 0) {
                              r26.xy = r58.xy;
                              r19.y = dot(r51.yzw, r26.xyz);
                              r25.y = dot(r52.xyz, r26.xyz);
                              r21.x = frac(r19.y);
                              r21.y = frac(r25.y);
                              r59.xyz = gCookieArray.SampleLevel(samplerLinear_s, r21.xyz, 0).xyz;
                            } else {
                              r59.xyz = float3(1,1,1);
                            }
                            r19.y = r25.x * r1.z + r40.w;
                            r19.y = -r40.z * r19.y;
                            r19.y = exp2(r19.y);
                            r19.y = min(1, r19.y);
                            r19.y = r40.y * r19.y;
                            r19.y = min(r19.y, r6.w);
                            r60.xyz = -r25.xxx * r1.xyz + r43.xyz;
                            r21.x = dot(r60.xyz, r60.xyz);
                            r21.y = r12.z / r21.x;
                            r21.y = min(1, r21.y);
                            r25.y = saturate(r58.w * r45.y + r45.z);
                            r26.x = saturate(r58.w * r45.w + r12.y);
                            r26.y = r25.y * r25.y;
                            r25.y = r25.y * -2 + 3;
                            r25.y = r26.y * r25.y;
                            r21.y = r25.y * r21.y;
                            r25.y = r26.x * r26.x;
                            r26.x = r26.x * -2 + 3;
                            r25.y = r26.x * r25.y;
                            r21.y = r25.y * r21.y;
                            if (r17.x != 0) {
                              r26.xy = saturate(abs(r58.xy) * r50.yz + r54.zw);
                              r36.xw = r26.xy * r26.xy;
                              r26.xy = r26.xy * float2(-2,-2) + float2(3,3);
                              r26.xy = r36.xw * r26.xy;
                              r25.y = r26.x * r26.y;
                            } else {
                              r58.xyzw = saturate(abs(r58.yyxx) * r49.xyzw);
                              r58.xyzw = log2(r58.xyzw);
                              r58.xyzw = r58.xyzw * r50.wwww;
                              r58.xyzw = exp2(r58.xyzw);
                              r26.xy = r58.xy + r58.zw;
                              r26.xy = log2(r26.xy);
                              r26.xy = r51.xx * r26.xy;
                              r26.xy = exp2(r26.xy);
                              r26.x = r50.y * r26.x;
                              r30.w = r50.z * r26.y + -1;
                              r26.x = r50.z * r26.y + -r26.x;
                              r26.x = saturate(r30.w / r26.x);
                              r26.y = r26.x * r26.x;
                              r26.x = r26.x * -2 + 3;
                              r25.y = r26.y * r26.x;
                            }
                            r21.y = r25.y * r21.y;
                            r19.x = r21.y * r19.x;
                            r58.xyz = r37.xyz * r19.yyy;
                            r21.y = rsqrt(r21.x);
                            r60.xyz = r60.xyz * r21.yyy;
                            r21.y = dot(-r1.xyz, r60.xyz);
                            r21.y = max(-1, r21.y);
                            r21.y = min(1, r21.y);
                            r21.y = r36.y * r21.y + 1;
                            r21.y = max(9.99999997e-07, r21.y);
                            r21.y = min(2, r21.y);
                            r21.y = r21.y * r21.y;
                            r21.y = rcp(r21.y);
                            r21.y = r21.y * r8.x;
                            r21.y = max(0, r21.y);
                            r21.y = min(10000, r21.y);
                            r21.x = sqrt(r21.x);
                            r21.x = r21.x + r25.x;
                            r58.xyz = r58.xyz * -r21.xxx;
                            r58.xyz = exp2(r58.xyz);
                            r58.xyz = min(float3(1,1,1), r58.xyz);
                            r58.xyz = r58.xyz * r19.yyy;
                            r58.xyz = r58.xyz * r21.yyy;
                            r58.xyz = r58.xyz * r19.xxx;
                            r39.xzw = r58.xyz * r59.xyz;
                          } else {
                            r39.xzw = float3(0,0,0);
                          }
                        }
                        r22.xyz = r57.xyz + r39.xzw;
                        r24.x = (int)r24.x + 2;
                        r55.xyzw = r56.xyzw;
                        r18.z = r24.y;
                        r23.x = r29.w;
                      }
                      r10.x = r12.x * r39.y;
                      r10.x = r10.x * r36.z;
                      r10.xyz = r22.xyz * r10.xxx;
                      r14.z = r43.w;
                      r12.xyz = r52.www * r14.zxy;
                      r11.xyz = r12.xyz * r10.xyz;
                    } else {
                      r11.xyz = float3(0,0,0);
                    }
                  }
                  r38.xyz = r38.xyz + r11.xyz;
                }
              }
              r9.xyz = r38.xyz;
              r5.z = (int)r5.z + 1;
            }
            r10.xyz = r32.xyz + r9.xyz;
            r11.xyz = float3(0,0,0);
            r16.z = r7.z;
            while (true) {
              r5.z = cmp((uint)r7.w < (uint)r16.z);
              if (r5.z != 0) break;
              r5.z = visibleVolumetricOmniLights.Load(r16.xyzw).x;
              r8.y = (uint)r16.z << 5;
              r41.xyz = r11.xyz;
              r41.w = r5.z;
              while (true) {
                if (r41.w == 0) break;
                r8.z = firstbitlow((uint)r41.w);
                r12.x = 1 << (int)r8.z;
                r12.y = (int)r12.x & (int)r41.w;
                if (r12.y != 0) {
                  r41.w = (int)r12.x ^ (int)r41.w;
                  r8.z = (int)r8.z + (int)r8.y;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xyz, r8.z, l(12), t11.xyzx
                r12.x = gTrilinearClampSampler[]..swiz;
                r12.y = gTrilinearClampSampler[]..swiz;
                r12.z = gTrilinearClampSampler[]..swiz;
                  r12.y = max(r12.y, r12.z);
                  r12.x = max(r12.x, r12.y);
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyz, r8.z, l(0), t11.xyzx
                r14.x = gTrilinearClampSampler[]..swiz;
                r14.y = gTrilinearClampSampler[]..swiz;
                r14.z = gTrilinearClampSampler[]..swiz;
                  r12.y = dot(-r14.xyz, r1.xyz);
                  r12.z = dot(-r14.xyz, -r14.xyz);
                  r12.x = -r12.x * r12.x + r12.z;
                  r12.x = r12.y * r12.y + -r12.x;
                  r12.z = cmp(0 < r12.x);
                  r12.x = sqrt(r12.x);
                  r14.x = -r12.y + -r12.x;
                  r12.x = -r12.y + r12.x;
                  r12.y = min(r14.x, r12.x);
                  r12.x = max(r14.x, r12.x);
                  r12.xy = max(r12.xy, r6.xx);
                  r12.xy = min(r12.xy, r26.ww);
                  r14.x = 9.99999997e-07 + r12.y;
                  r14.x = cmp(r14.x < r12.x);
                  r12.z = r12.z ? r14.x : 0;
                  if (r12.z == 0) {
                    r14.xyz = float3(0,0,0);
                  }
                  if (r12.z != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r8.z, l(0), t12.xyzw
                  r43.x = gTrilinearClampSampler[]..swiz;
                  r43.y = gTrilinearClampSampler[]..swiz;
                  r43.z = gTrilinearClampSampler[]..swiz;
                  r43.w = gTrilinearClampSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r8.z, l(16), t12.xyxx
                  r17.x = gTrilinearClampSampler[]..swiz;
                  r17.y = gTrilinearClampSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r8.z, l(32), t12.xyzw
                  r45.x = gTrilinearClampSampler[]..swiz;
                  r45.y = gTrilinearClampSampler[]..swiz;
                  r45.z = gTrilinearClampSampler[]..swiz;
                  r45.w = gTrilinearClampSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.z, r8.z, l(48), t12.xxxx
                  r12.z = gTrilinearClampSampler[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xy, r8.z, l(104), t12.xyxx
                  r18.x = gTrilinearClampSampler[]..swiz;
                  r18.y = gTrilinearClampSampler[]..swiz;
                    r8.z = r18.y ? 0.000000 : 0;
                    r18.y = -1000 + r12.y;
                    r18.y = saturate(0.000500000024 * r18.y);
                    r18.y = 1 + -r18.y;
                    r8.z = (uint)r8.z;
                    r8.z = r8.z * r18.y;
                    r8.z = floor(r8.z);
                    r8.z = max(2, r8.z);
                    r8.z = (uint)r8.z;
                    r18.y = (uint)r8.z;
                    r18.y = 1 / r18.y;
                    r18.z = r12.x + -r12.y;
                    r18.z = r18.z * r18.y;
                    r12.x = -r18.z * 0.5 + r12.x;
                    r12.y = r18.z * 0.5 + r12.y;
                    r12.x = r12.x + -r12.y;
                    r18.z = r12.x * r18.y;
                    r12.z = r12.z * r12.z;
                    r19.xyz = float3(0,0,0);
                    r20.x = r12.y;
                    r20.y = 0;
                    while (true) {
                      r20.z = cmp((uint)r20.y >= (uint)r8.z);
                      if (r20.z != 0) break;
                      r20.x = r12.x * r18.y + r20.x;
                      r21.xyz = -r1.xyz * r20.xxx + r43.xyz;
                      r20.z = dot(r21.xyz, r21.xyz);
                      r23.x = sqrt(r20.z);
                      r24.x = r12.z / r20.z;
                      r24.x = min(1, r24.x);
                      r25.xy = saturate(r23.xx * r45.xz + r45.yw);
                      r26.xy = r25.xy * r25.xy;
                      r25.xy = r25.xy * float2(-2,-2) + float2(3,3);
                      r25.xy = r26.xy * r25.xy;
                      r24.x = r25.x * r24.x;
                      r24.x = r24.x * r25.y;
                      r24.y = cmp(0 < r24.x);
                      if (r24.y != 0) {
                        r24.y = r1.z * r20.x + r40.w;
                        r24.y = -r40.z * r24.y;
                        r24.y = exp2(r24.y);
                        r24.y = min(1, r24.y);
                        r24.y = r40.y * r24.y;
                        r24.y = min(r24.y, r6.w);
                        r46.xyzw = cmp(r3.xyzw >= r20.xxxx);
                        r25.x = r46.w ? r4.z : r4.w;
                        r25.x = r46.z ? r4.y : r25.x;
                        r25.x = r46.y ? r4.x : r25.x;
                        r25.x = r46.x ? 1 : r25.x;
                        r24.x = r25.x * r24.x;
                        r39.xzw = r37.xyz * r24.yyy;
                        r20.z = rsqrt(r20.z);
                        r21.xyz = r21.xyz * r20.zzz;
                        r20.z = dot(-r1.xyz, r21.xyz);
                        r20.z = max(-1, r20.z);
                        r20.z = min(1, r20.z);
                        r20.z = r36.y * r20.z + 1;
                        r20.z = max(9.99999997e-07, r20.z);
                        r20.z = min(2, r20.z);
                        r20.z = r20.z * r20.z;
                        r20.z = rcp(r20.z);
                        r20.z = r20.z * r8.x;
                        r20.z = max(0, r20.z);
                        r20.z = min(10000, r20.z);
                        r21.x = r23.x + r20.x;
                        r21.xyz = r39.xzw * -r21.xxx;
                        r21.xyz = exp2(r21.xyz);
                        r21.xyz = min(float3(1,1,1), r21.xyz);
                        r21.xyz = r21.xyz * r24.yyy;
                        r21.xyz = r21.xyz * r20.zzz;
                        r21.xyz = r21.xyz * r24.xxx;
                      } else {
                        r21.xyz = float3(0,0,0);
                      }
                      r19.xyz = r21.xyz + r19.xyz;
                      r20.y = (int)r20.y + 1;
                    }
                    r8.z = r18.z * r39.y;
                    r8.z = r8.z * r36.z;
                    r12.xyz = r19.xyz * r8.zzz;
                    r17.z = r43.w;
                    r17.xyz = r18.xxx * r17.zxy;
                    r14.xyz = r17.xyz * r12.xyz;
                  }
                  r41.xyz = r41.xyz + r14.xyz;
                }
              }
              r11.xyz = r41.xyz;
              r16.z = (int)r16.z + 1;
            }
            r32.xyz = r11.xyz + r10.xyz;
          }
        }
      }
    }
    r25.w = (int)r25.w + 1;
  }
  o0.xyz = r32.xyz;
  o0.w = 0;
  return;
}