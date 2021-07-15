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
Texture2D<float4> adaptiveTransparencyDepth : register(t4);
Texture2D<float4> adaptiveTransparencyTrans : register(t5);
Texture2D<uint> downSampledDepthUV : register(t6);
Texture2D<float> oitPixelAlpha : register(t7);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v0.xy;
  r0.zw = float2(0,0);
  r1.x = downsampledDepth.Load(r0.xyw).x;
  r1.y = cmp(r1.x < 0);
  if (r1.y != 0) discard;
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
  if (r2.z != 0) discard;
  r0.z = downSampledDepthUV.Load(r0.xyz).x;
  r0.w = (uint)r0.z >> 2;
  r0.z = (int)r0.z & 3;
  r2.zw = floor(v0.xy);
  r3.xy = (uint2)r0.wz;
  r0.zw = r2.zw * postFxControl7.xx + r3.xy;
  r3.xy = (uint2)r0.zw;
  r0.z = rsqrt(r1.w);
  r1.xyz = r1.xyz * r0.zzz;
  r0.zw = (int2)postFxControl4.zw & int2(65535,65535);
  r3.zw = float2(0,0);
  r4.xyzw = adaptiveTransparencyDepth.Load(r3.xyw).xyzw;
  r5.xyzw = adaptiveTransparencyTrans.Load(r3.xyw).xyzw;
  r1.w = oitPixelAlpha.Load(r3.xyz).x;
  r3.xyzw = float4(2000,2000,2000,2000) * r4.xyzw;
  r1.w = cmp(0.899999976 < r1.w);
  r3.xyzw = r1.wwww ? float4(2000,2000,2000,2000) : r3.xyzw;
  r4.xyzw = r1.wwww ? float4(1,1,1,1) : r5.xyzw;
  r1.w = max(r2.y, r2.x);
  r0.w = (uint)r0.w;
  r0.xy = (uint2)r0.xy;
  r2.z = dot(r0.yx, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.z = 52.9829178 * r2.z;
  r2.z = frac(r2.z);
  r2.z = -0.5 + r2.z;
  r5.xy = uiDest.xy;
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture3d)(float,float,float,float)_uint r5.xy, l(0), t2.xyzw
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=1, constZero.eType=4, returnType=2, texture.eType=7, afImmediates[0]=0.000000
  r0.xyw = float3(0.5,0.5,-1) + r0.xyw;
  r5.xy = (uint2)r5.xy;
  r2.w = 16 / postFxControl7.x;
  r5.xy = r5.xy * r2.ww;
  r5.yz = r0.xy / r5.xy;
  r6.w = 1;
  r7.w = 1;
  r8.w = 1;
  r9.w = 1;
  r10.w = 1;
  r11.w = 1;
  r12.w = 1;
  r13.w = 1;
  r14.w = 1;
  r15.w = 1;
  r16.w = 1;
  r17.w = 1;
  r18.xyzw = sunConstants.sunCookieTransform[0].xyzw;
  r19.xyzw = sunConstants.sunCookieTransform[1].xyzw;
  r20.xyz = sunConstants.wldDir.xyz;
  r21.xyz = sunConstants.splitPinTransform[1].xyz;
  r22.xyz = sunConstants.splitPinTransform[2].xyz;
  r23.xyz = float3(0,0,0);
  r0.x = sunConstants.splitDepthOffset;
  r0.y = sunConstants.sunCookieIndex;
  r2.w = sunConstants.sunCookieIntensity;
  r20.w = sunConstants.sunVolumetricCookieIntensity;
  r21.w = sunConstants.splitArrayOffset;
  r24.x = sunConstants.sstLightingConstants.offToPinTransform._m00;
  r25.x = sunConstants.sstLightingConstants.offToPinTransform._m01;
  r26.x = sunConstants.sstLightingConstants.offToPinTransform._m02;
  r24.y = sunConstants.sstLightingConstants.offToPinTransform._m10;
  r25.y = sunConstants.sstLightingConstants.offToPinTransform._m11;
  r26.y = sunConstants.sstLightingConstants.offToPinTransform._m12;
  r24.z = sunConstants.sstLightingConstants.offToPinTransform._m20;
  r25.z = sunConstants.sstLightingConstants.offToPinTransform._m21;
  r26.z = sunConstants.sstLightingConstants.offToPinTransform._m22;
  r24.w = sunConstants.sstLightingConstants.offToPinTransform._m30;
  r25.w = sunConstants.sstLightingConstants.offToPinTransform._m31;
  r26.w = sunConstants.sstLightingConstants.offToPinTransform._m32;
  r22.w = 0;
  while (true) {
    r23.w = cmp((uint)r22.w >= (uint)r0.z);
    if (r23.w != 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r27.xyzw, r22.w, l(132), t1.xyzw
  r27.x = gTrilinearClampSampler[]..swiz;
  r27.y = gTrilinearClampSampler[]..swiz;
  r27.z = gTrilinearClampSampler[]..swiz;
  r27.w = gTrilinearClampSampler[]..swiz;
    r23.w = (int)r27.w & 21;
    if (r23.w != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r28.xyzw, r22.w, l(24), t1.xyzw
    r28.x = gTrilinearClampSampler[]..swiz;
    r28.y = gTrilinearClampSampler[]..swiz;
    r28.z = gTrilinearClampSampler[]..swiz;
    r28.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r29.xyzw, r22.w, l(52), t1.xyzw
    r29.x = gTrilinearClampSampler[]..swiz;
    r29.y = gTrilinearClampSampler[]..swiz;
    r29.z = gTrilinearClampSampler[]..swiz;
    r29.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r27.w, r22.w, l(68), t1.xxxx
    r27.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r30.xyzw, r22.w, l(84), t1.xyzw
    r30.x = gTrilinearClampSampler[]..swiz;
    r30.y = gTrilinearClampSampler[]..swiz;
    r30.z = gTrilinearClampSampler[]..swiz;
    r30.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r31.x, r22.w, l(100), t1.xxxx
    r31.x = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r32.xyzw, r22.w, l(116), t1.xyzw
    r32.x = gTrilinearClampSampler[]..swiz;
    r32.y = gTrilinearClampSampler[]..swiz;
    r32.z = gTrilinearClampSampler[]..swiz;
    r32.w = gTrilinearClampSampler[]..swiz;
      r28.x = dot(r1.xyz, r28.xyz);
      r28.y = max(1.00000001e-07, abs(r28.x));
      r28.y = 1 / r28.y;
      r28.z = r28.w * r28.y;
      r28.y = r29.x * r28.y;
      r28.x = cmp(0 < -r28.x);
      r33.x = max(-131072, r28.z);
      r33.y = min(131072, -r28.y);
      r34.y = min(131072, -r28.z);
      r34.x = max(-131072, r28.y);
      r28.xy = r28.xx ? r33.xy : r34.xy;
      r28.z = dot(r1.xyz, r29.yzw);
      r28.w = max(1.00000001e-07, abs(r28.z));
      r28.w = 1 / r28.w;
      r27.w = r28.w * r27.w;
      r28.w = r30.x * r28.w;
      r28.z = cmp(0 < -r28.z);
      r29.x = max(r27.w, r28.x);
      r29.y = min(-r28.w, r28.y);
      r33.y = min(-r27.w, r28.y);
      r33.x = max(r28.w, r28.x);
      r28.xy = r28.zz ? r29.xy : r33.xy;
      r27.w = dot(r1.xyz, r30.yzw);
      r28.z = max(1.00000001e-07, abs(r27.w));
      r28.z = 1 / r28.z;
      r28.w = r31.x * r28.z;
      r28.z = r32.x * r28.z;
      r27.w = cmp(0 < -r27.w);
      r29.y = max(r28.w, r28.x);
      r29.z = min(-r28.z, r28.y);
      r30.z = min(-r28.w, r28.y);
      r30.y = max(r28.z, r28.x);
      r28.yz = r27.ww ? r29.yz : r30.yz;
      r27.w = cmp(r28.y < r28.z);
      if (r27.w != 0) {
        r28.x = max(0, r28.y);
        r28.yw = max(r28.xz, r2.yy);
        r28.xz = max(r28.xz, r2.xx);
        r28.xz = min(r28.xz, r1.ww);
        r28.xy = min(r28.yw, r28.xz);
        r27.w = r28.y + -r28.x;
        r27.w = cmp(r27.w >= 1);
        if (r27.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r27.w, r22.w, l(196), t1.xxxx
        r27.w = gTrilinearClampSampler[]..swiz;
          r28.x = max(r28.x, r27.x);
          r28.y = r28.y + -r28.x;
          r27.w = min(r28.y, r27.w);
          r28.y = cmp(r27.w >= 1);
          if (r28.y != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r29.xyzw, r22.w, l(148), t1.xyzw
          r29.x = gTrilinearClampSampler[]..swiz;
          r29.y = gTrilinearClampSampler[]..swiz;
          r29.z = gTrilinearClampSampler[]..swiz;
          r29.w = gTrilinearClampSampler[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r30.xyzw, r22.w, l(164), t1.zxyw
          r30.x = gTrilinearClampSampler[]..swiz;
          r30.y = gTrilinearClampSampler[]..swiz;
          r30.z = gTrilinearClampSampler[]..swiz;
          r30.w = gTrilinearClampSampler[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r31.xyzw, r22.w, l(180), t1.xyzw
          r31.x = gTrilinearClampSampler[]..swiz;
          r31.y = gTrilinearClampSampler[]..swiz;
          r31.z = gTrilinearClampSampler[]..swiz;
          r31.w = gTrilinearClampSampler[]..swiz;
            r28.yzw = r29.xyz + r27.zzz;
            r27.w = r28.x + r27.w;
            switch (r23.w) {
              case 1 :              r23.w = r28.x + r27.x;
              r23.w = min(r23.w, r27.w);
              r29.x = r27.w + -r23.w;
              r29.y = r29.x / postFxControlA.x;
              r29.y = min(r29.y, r0.w);
              r29.y = floor(r29.y);
              r29.y = 1 + r29.y;
              r29.y = (uint)r29.y;
              r29.y = (int)r29.y + 1;
              r29.y = (int)r29.y & -2;
              r29.z = (uint)r29.y;
              r29.z = 1 / r29.z;
              r29.x = r29.x * r29.z;
              r32.x = -r29.x * 0.5 + r27.w;
              r23.w = r29.x * 0.5 + r23.w;
              r29.x = r32.x + -r23.w;
              r29.x = r29.x * r29.z;
              r29.z = r29.x * r2.z;
              r23.w = r29.z * 0.75 + r23.w;
              r29.z = 100 * r32.y;
              r32.x = r1.z * r23.w + r32.w;
              r32.x = -r32.z * r32.x;
              r32.x = exp2(r32.x);
              r32.x = min(1, r32.x);
              r32.x = r32.y * r32.x;
              r32.x = min(r32.x, r29.z);
              r33.xyz = r32.xxx * r28.yzw;
              r33.xyz = -r33.xyz * r23.www;
              r33.xyz = exp2(r33.xyz);
              r33.xyz = r33.xyz * r31.yyy;
              r34.xyzw = cmp(r3.xyzw >= r23.wwww);
              r33.w = r34.w ? r4.z : r4.w;
              r33.w = r34.z ? r4.y : r33.w;
              r33.w = r34.y ? r4.x : r33.w;
              r33.w = r34.x ? 1 : r33.w;
              r33.xyz = r33.xyz * r32.xxx;
              r30.x = r29.w;
              r33.xyz = r33.xyz * r30.xyz;
              r33.xyz = r33.xyz * r33.www;
              r34.xyz = r33.xyz;
              r35.xyz = r33.xyz;
              r32.x = r23.w;
              r33.w = 0;
              while (true) {
                r34.w = cmp((uint)r33.w >= (uint)r29.y);
                if (r34.w != 0) break;
                r32.x = r29.x * 2 + r32.x;
                r34.w = r1.z * r32.x + r32.w;
                r34.w = r34.w * -r32.z;
                r34.w = exp2(r34.w);
                r34.w = min(1, r34.w);
                r34.w = r34.w * r32.y;
                r34.w = min(r34.w, r29.z);
                r36.xyz = r34.www * r28.yzw;
                r36.xyz = -r36.xyz * r32.xxx;
                r36.xyz = exp2(r36.xyz);
                r36.xyz = r36.xyz * r31.yyy;
                r37.xyzw = cmp(r3.xyzw >= r32.xxxx);
                r35.w = r37.w ? r4.z : r4.w;
                r35.w = r37.z ? r4.y : r35.w;
                r35.w = r37.y ? r4.x : r35.w;
                r35.w = r37.x ? 1 : r35.w;
                r36.xyz = r36.xyz * r34.www;
                r36.xyz = r36.xyz * r30.xyz;
                r37.xyz = r36.xyz * r35.www;
                r38.xyz = r36.xyz * r35.www + r34.xyz;
                r34.w = dot(float3(0.298999995,0.587000012,0.114), r35.xyz);
                r36.w = dot(float3(0.298999995,0.587000012,0.114), r37.xyz);
                r37.w = max(r36.w, r34.w);
                r34.w = min(r36.w, r34.w);
                r34.w = r34.w / r37.w;
                r34.w = cmp(r34.w < 0.800000012);
                if (r34.w != 0) {
                  r39.xyz = float3(0,0,0);
                } else {
                  r36.xyz = r36.xyz * r35.www + r35.xyz;
                  r39.xyz = float3(0.5,0.5,0.5) * r36.xyz;
                }
                r34.xyz = r39.xyz + r38.xyz;
                r33.w = (int)r33.w + 2;
                r35.xyz = r37.xyz;
              }
              r23.w = r29.x * r27.z;
              r29.xyz = r34.xyz * r23.www;
              r23.xyz = r29.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r23.xyz;
              break;
              case 1 :              r23.w = r28.x + r27.x;
              r23.w = min(r23.w, r27.w);
              r29.x = r27.w + -r23.w;
              r29.y = r29.x / postFxControlA.x;
              r29.y = min(r29.y, r0.w);
              r29.y = floor(r29.y);
              r29.y = 1 + r29.y;
              r29.y = (uint)r29.y;
              r29.y = (int)r29.y + 1;
              r29.y = (int)r29.y & -2;
              r29.z = (uint)r29.y;
              r29.z = 1 / r29.z;
              r32.x = dot(r20.xyz, -r1.xyz);
              r29.x = r29.x * r29.z;
              r33.x = -r29.x * 0.5 + r27.w;
              r23.w = r29.x * 0.5 + r23.w;
              r29.x = r33.x + -r23.w;
              r33.x = r29.x * r29.z;
              r32.x = max(-1, r32.x);
              r32.x = min(1, r32.x);
              r32.x = r27.y * r32.x + 1;
              r32.x = max(9.99999997e-07, r32.x);
              r32.x = min(2, r32.x);
              r33.y = -r27.y * r27.y + 1;
              r33.y = 0.0795774683 * r33.y;
              r32.x = r32.x * r32.x;
              r32.x = rcp(r32.x);
              r32.x = r33.y * r32.x;
              r32.x = max(0, r32.x);
              r32.x = min(10000, r32.x);
              r35.xy = r30.xw;
              r35.z = r31.x;
              r33.yzw = r35.xyz * r32.xxx;
              r33.yzw = r33.yzw * r31.www;
              r33.yzw = float3(12.566371,12.566371,12.566371) * r33.yzw;
              r32.x = r33.x * r2.z;
              r23.w = r32.x * 0.75 + r23.w;
              r6.xyz = r23.www * r1.xyz;
              r32.x = 100 * r32.y;
              r34.w = r1.z * r23.w + r32.w;
              r34.w = r34.w * -r32.z;
              r34.w = exp2(r34.w);
              r34.w = min(1, r34.w);
              r34.w = r34.w * r32.y;
              r34.w = min(r34.w, r32.x);
              r35.xyz = r34.www * r28.yzw;
              r35.xyz = -r35.xyz * r23.www;
              r35.xyz = exp2(r35.xyz);
              r35.xyz = r35.xyz * r31.yyy;
              r36.xyzw = cmp(r3.xyzw >= r23.wwww);
              r35.w = r36.w ? r4.z : r4.w;
              r35.w = r36.z ? r4.y : r35.w;
              r35.w = r36.y ? r4.x : r35.w;
              r35.w = r36.x ? 1 : r35.w;
              r8.xyz = r1.xyz * r23.www + postFxControl5.xyz;
              r36.x = dot(r8.xyz, postFxControl6.xyz);
              r36.x = postFxControl6.w + r36.x;
              r36.x = 0.00300000003 * r36.x;
              r36.x = max(1, r36.x);
              r36.x = min(2, r36.x);
              r36.x = (uint)r36.x;
              r36.y = dot(r6.xyzw, r24.xyzw);
              r36.z = dot(r6.xyzw, r25.xyzw);
              r6.x = dot(r6.xyzw, r26.xyzw);
              r6.y = (int)r36.x + -1;
              r37.xyz = icb[r6.y+0].xxx * r21.xyz;
              r37.xyz = icb[r6.y+0].yyy * r22.xyz + r37.xyz;
              r38.xy = -r37.xy + r36.yz;
              r6.yz = r38.xy * r37.zz;
              r37.xy = r6.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r6.x = r6.x + -r0.x;
              r6.x = -r6.x * 6.10351563e-05 + 0.999499977;
              r6.y = (int)r21.w + (int)r36.x;
              r37.z = (uint)r6.y;
              r6.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r37.xyz, r6.x).x;
              r6.x = r6.x * r35.w;
              r6.y = cmp(0 < r20.w);
              r6.z = cmp(0 < (uint)r0.y);
              r6.y = r6.z ? r6.y : 0;
              if (r6.y != 0) {
                r6.z = dot(r18.xyzw, r8.xyzw);
                r8.x = dot(r19.xyzw, r8.xyzw);
                r36.x = frac(r6.z);
                r36.y = frac(r8.x);
                r6.z = (int)r0.y + -1;
                r36.z = (uint)r6.z;
                r8.xyz = gCookieArray.SampleLevel(samplerLinear_s, r36.xyz, 0).xyz;
                r6.z = r20.w * r2.w;
                r8.xyz = float3(-1,-1,-1) + r8.xyz;
                r8.xyz = r6.zzz * r8.xyz + float3(1,1,1);
                r36.xyz = r35.xyz * r34.www;
                r36.xyz = r36.xyz * r6.xxx;
                r8.xyz = r36.xyz * r8.xyz;
              } else {
                r36.xyz = r35.xyz * r34.www;
                r8.xyz = r36.xyz * r6.xxx;
              }
              r35.xyz = r35.xyz * r34.www;
              r30.x = r29.w;
              r35.xyz = r35.xyz * r30.xyz;
              r35.xyz = r35.xyz * r35.www;
              r8.xyz = r8.xyz * r33.yzw + r35.xyz;
              r6.x = (int)r0.y + -1;
              r35.z = (uint)r6.x;
              r6.x = r20.w * r2.w;
              r36.xyz = r8.xyz;
              r37.xyz = r8.xyz;
              r6.z = r23.w;
              r29.w = 0;
              while (true) {
                r34.w = cmp((uint)r29.w >= (uint)r29.y);
                if (r34.w != 0) break;
                r34.w = r33.x * 2 + r6.z;
                r9.xyz = r34.www * r1.xyz;
                r35.w = r1.z * r34.w + r32.w;
                r35.w = r35.w * -r32.z;
                r35.w = exp2(r35.w);
                r35.w = min(1, r35.w);
                r35.w = r35.w * r32.y;
                r35.w = min(r35.w, r32.x);
                r38.xyz = r35.www * r28.yzw;
                r38.xyz = -r38.xyz * r34.www;
                r38.xyz = exp2(r38.xyz);
                r38.xyz = r38.xyz * r31.yyy;
                r39.xyzw = cmp(r3.xyzw >= r34.wwww);
                r36.w = r39.w ? r4.z : r4.w;
                r36.w = r39.z ? r4.y : r36.w;
                r36.w = r39.y ? r4.x : r36.w;
                r36.w = r39.x ? 1 : r36.w;
                r11.xyz = r1.xyz * r34.www + postFxControl5.xyz;
                r37.w = dot(r11.xyz, postFxControl6.xyz);
                r37.w = postFxControl6.w + r37.w;
                r37.w = 0.00300000003 * r37.w;
                r37.w = max(1, r37.w);
                r37.w = min(2, r37.w);
                r37.w = (uint)r37.w;
                r38.w = dot(r9.xyzw, r24.xyzw);
                r39.x = dot(r9.xyzw, r25.xyzw);
                r9.x = dot(r9.xyzw, r26.xyzw);
                r9.y = (int)r37.w + -1;
                r39.yzw = icb[r9.y+0].xxx * r21.xyz;
                r39.yzw = icb[r9.y+0].yyy * r22.xyz + r39.yzw;
                r40.x = -r39.y + r38.w;
                r40.y = r39.x + -r39.z;
                r9.yz = r40.xy * r39.ww;
                r39.xy = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r9.x = r9.x + -r0.x;
                r9.x = -r9.x * 6.10351563e-05 + 0.999499977;
                r9.y = (int)r21.w + (int)r37.w;
                r39.z = (uint)r9.y;
                r9.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r9.x).x;
                r9.x = r9.x * r36.w;
                if (r6.y != 0) {
                  r9.y = dot(r18.xyzw, r11.xyzw);
                  r9.z = dot(r19.xyzw, r11.xyzw);
                  r35.xy = frac(r9.yz);
                  r11.xyz = gCookieArray.SampleLevel(samplerLinear_s, r35.xyz, 0).xyz;
                  r11.xyz = float3(-1,-1,-1) + r11.xyz;
                  r11.xyz = r6.xxx * r11.xyz + float3(1,1,1);
                  r39.xyz = r38.xyz * r35.www;
                  r39.xyz = r39.xyz * r9.xxx;
                  r11.xyz = r39.xyz * r11.xyz;
                } else {
                  r39.xyz = r38.xyz * r35.www;
                  r11.xyz = r39.xyz * r9.xxx;
                }
                r9.xyz = r38.xyz * r35.www;
                r9.xyz = r9.xyz * r30.xyz;
                r9.xyz = r9.xyz * r36.www;
                r9.xyz = r11.xyz * r33.yzw + r9.xyz;
                r11.xyz = r36.xyz + r9.xyz;
                r35.w = dot(float3(0.298999995,0.587000012,0.114), r37.xyz);
                r36.w = dot(float3(0.298999995,0.587000012,0.114), r9.xyz);
                r37.w = max(r36.w, r35.w);
                r35.w = min(r36.w, r35.w);
                r35.w = r35.w / r37.w;
                r35.w = cmp(r35.w < 0.800000012);
                if (r35.w != 0) {
                  r35.w = r29.x * r29.z + r6.z;
                  r12.xyz = r35.www * r1.xyz;
                  r36.w = r1.z * r35.w + r32.w;
                  r36.w = r36.w * -r32.z;
                  r36.w = exp2(r36.w);
                  r36.w = min(1, r36.w);
                  r36.w = r36.w * r32.y;
                  r36.w = min(r36.w, r32.x);
                  r38.xyz = r36.www * r28.yzw;
                  r38.xyz = -r38.xyz * r35.www;
                  r38.xyz = exp2(r38.xyz);
                  r38.xyz = r38.xyz * r31.yyy;
                  r39.xyzw = cmp(r3.xyzw >= r35.wwww);
                  r37.w = r39.w ? r4.z : r4.w;
                  r37.w = r39.z ? r4.y : r37.w;
                  r37.w = r39.y ? r4.x : r37.w;
                  r37.w = r39.x ? 1 : r37.w;
                  r13.xyz = r1.xyz * r35.www + postFxControl5.xyz;
                  r35.w = dot(r13.xyz, postFxControl6.xyz);
                  r35.w = postFxControl6.w + r35.w;
                  r35.w = 0.00300000003 * r35.w;
                  r35.w = max(1, r35.w);
                  r35.w = min(2, r35.w);
                  r35.w = (uint)r35.w;
                  r38.w = dot(r12.xyzw, r24.xyzw);
                  r39.x = dot(r12.xyzw, r25.xyzw);
                  r12.x = dot(r12.xyzw, r26.xyzw);
                  r12.y = (int)r35.w + -1;
                  r39.yzw = icb[r12.y+0].xxx * r21.xyz;
                  r39.yzw = icb[r12.y+0].yyy * r22.xyz + r39.yzw;
                  r40.x = -r39.y + r38.w;
                  r40.y = r39.x + -r39.z;
                  r12.yz = r40.xy * r39.ww;
                  r39.xy = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r12.x = r12.x + -r0.x;
                  r12.x = -r12.x * 6.10351563e-05 + 0.999499977;
                  r12.y = (int)r21.w + (int)r35.w;
                  r39.z = (uint)r12.y;
                  r12.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r12.x).x;
                  r12.x = r12.x * r37.w;
                  if (r6.y != 0) {
                    r12.y = dot(r18.xyzw, r13.xyzw);
                    r12.z = dot(r19.xyzw, r13.xyzw);
                    r35.xy = frac(r12.yz);
                    r13.xyz = gCookieArray.SampleLevel(samplerLinear_s, r35.xyz, 0).xyz;
                    r13.xyz = float3(-1,-1,-1) + r13.xyz;
                    r13.xyz = r6.xxx * r13.xyz + float3(1,1,1);
                    r35.xyw = r38.xyz * r36.www;
                    r35.xyw = r35.xyw * r12.xxx;
                    r13.xyz = r35.xyw * r13.xyz;
                  } else {
                    r35.xyw = r38.xyz * r36.www;
                    r13.xyz = r35.xyw * r12.xxx;
                  }
                  r12.xyz = r13.xyz * r33.yzw;
                } else {
                  r13.xyz = r37.xyz + r9.xyz;
                  r12.xyz = float3(0.5,0.5,0.5) * r13.xyz;
                }
                r36.xyz = r12.xyz + r11.xyz;
                r29.w = (int)r29.w + 2;
                r37.xyz = r9.xyz;
                r6.z = r34.w;
              }
              r6.x = r33.x * r27.z;
              r6.xyz = r36.xyz * r6.xxx;
              r23.xyz = r6.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r23.xyz;
              break;
              case 4 :              r6.x = r28.x + r27.x;
              r6.x = min(r6.x, r27.w);
              r6.y = r27.w + -r6.x;
              r6.z = r6.y / postFxControlA.x;
              r6.z = min(r6.z, r0.w);
              r6.z = floor(r6.z);
              r6.z = 1 + r6.z;
              r6.z = (uint)r6.z;
              r6.z = (int)r6.z + 1;
              r6.z = (int)r6.z & -2;
              r8.x = (uint)r6.z;
              r8.x = 1 / r8.x;
              r6.y = r8.x * r6.y;
              r8.y = -r6.y * 0.5 + r27.w;
              r6.x = r6.y * 0.5 + r6.x;
              r6.y = r8.y + -r6.x;
              r6.y = r6.y * r8.x;
              r8.x = r6.y * r2.z;
              r6.x = r8.x * 0.75 + r6.x;
              r8.x = 100 * r32.y;
              r8.y = r1.z * r6.x + r32.w;
              r8.y = -r32.z * r8.y;
              r8.y = exp2(r8.y);
              r8.y = min(1, r8.y);
              r8.y = r32.y * r8.y;
              r8.y = min(r8.y, r8.x);
              r9.xyz = r28.yzw * r8.yyy;
              r9.xyz = -r9.xyz * r6.xxx;
              r9.xyz = exp2(r9.xyz);
              r9.xyz = r9.xyz * r31.yyy;
              r29.xyzw = cmp(r3.xyzw >= r6.xxxx);
              r8.z = r29.w ? r4.z : r4.w;
              r8.z = r29.z ? r4.y : r8.z;
              r8.z = r29.y ? r4.x : r8.z;
              r8.z = r29.x ? 1 : r8.z;
              r5.x = saturate(0.000500000024 * r6.x);
              r11.xyz = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r5.yzx, 0).xyz;
              r9.xyz = r11.xyz * r9.xyz;
              r9.xyz = r9.xyz * r8.yyy;
              r9.xyz = r9.xyz * r31.zzz;
              r9.xyz = r9.xyz * r8.zzz;
              r11.xyz = r9.xyz;
              r12.xyz = r9.xyz;
              r8.y = r6.x;
              r8.z = 0;
              while (true) {
                r13.x = cmp((uint)r8.z >= (uint)r6.z);
                if (r13.x != 0) break;
                r8.y = r6.y * 2 + r8.y;
                r13.x = r1.z * r8.y + r32.w;
                r13.x = -r32.z * r13.x;
                r13.x = exp2(r13.x);
                r13.x = min(1, r13.x);
                r13.x = r32.y * r13.x;
                r13.x = min(r13.x, r8.x);
                r29.xyz = r28.yzw * r13.xxx;
                r29.xyz = -r29.xyz * r8.yyy;
                r29.xyz = exp2(r29.xyz);
                r29.xyz = r29.xyz * r31.yyy;
                r33.xyzw = cmp(r3.xyzw >= r8.yyyy);
                r13.y = r33.w ? r4.z : r4.w;
                r13.y = r33.z ? r4.y : r13.y;
                r13.y = r33.y ? r4.x : r13.y;
                r13.y = r33.x ? 1 : r13.y;
                r5.w = saturate(0.000500000024 * r8.y);
                r33.xyz = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r5.yzw, 0).xyz;
                r29.xyz = r33.xyz * r29.xyz;
                r29.xyz = r29.xyz * r13.xxx;
                r29.xyz = r29.xyz * r31.zzz;
                r33.xyz = r29.xyz * r13.yyy;
                r35.xyz = r29.xyz * r13.yyy + r11.xyz;
                r13.x = dot(float3(0.298999995,0.587000012,0.114), r12.xyz);
                r13.z = dot(float3(0.298999995,0.587000012,0.114), r33.xyz);
                r23.w = max(r13.x, r13.z);
                r13.x = min(r13.x, r13.z);
                r13.x = r13.x / r23.w;
                r13.x = cmp(r13.x < 0.800000012);
                if (r13.x != 0) {
                  r37.xyz = float3(0,0,0);
                } else {
                  r13.xyz = r29.xyz * r13.yyy + r12.xyz;
                  r37.xyz = float3(0.5,0.5,0.5) * r13.xyz;
                }
                r11.xyz = r37.xyz + r35.xyz;
                r8.z = (int)r8.z + 2;
                r12.xyz = r33.xyz;
              }
              r6.x = r27.z * r6.y;
              r6.xyz = r11.xyz * r6.xxx;
              r23.xyz = r6.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r23.xyz;
              break;
              case 5 :              r6.x = r28.x + r27.x;
              r6.x = min(r6.x, r27.w);
              r6.y = r27.w + -r6.x;
              r6.z = r6.y / postFxControlA.x;
              r6.z = min(r6.z, r0.w);
              r6.z = floor(r6.z);
              r6.z = 1 + r6.z;
              r6.z = (uint)r6.z;
              r6.z = (int)r6.z + 1;
              r6.z = (int)r6.z & -2;
              r8.x = (uint)r6.z;
              r8.x = 1 / r8.x;
              r8.y = dot(r20.xyz, -r1.xyz);
              r6.y = r8.x * r6.y;
              r8.z = -r6.y * 0.5 + r27.w;
              r6.x = r6.y * 0.5 + r6.x;
              r6.y = r8.z + -r6.x;
              r8.z = r6.y * r8.x;
              r8.y = max(-1, r8.y);
              r8.y = min(1, r8.y);
              r8.y = r27.y * r8.y + 1;
              r8.y = max(9.99999997e-07, r8.y);
              r8.y = min(2, r8.y);
              r9.x = -r27.y * r27.y + 1;
              r9.x = 0.0795774683 * r9.x;
              r8.y = r8.y * r8.y;
              r8.y = rcp(r8.y);
              r8.y = r9.x * r8.y;
              r8.y = max(0, r8.y);
              r8.y = min(10000, r8.y);
              r30.y = r31.x;
              r9.xyz = r30.xwy * r8.yyy;
              r9.xyz = r9.xyz * r31.www;
              r9.xyz = float3(12.566371,12.566371,12.566371) * r9.xyz;
              r8.y = r8.z * r2.z;
              r6.x = r8.y * 0.75 + r6.x;
              r7.xyz = r6.xxx * r1.xyz;
              r8.y = 100 * r32.y;
              r12.x = r1.z * r6.x + r32.w;
              r12.x = -r32.z * r12.x;
              r12.x = exp2(r12.x);
              r12.x = min(1, r12.x);
              r12.x = r32.y * r12.x;
              r12.x = min(r12.x, r8.y);
              r13.xyz = r28.yzw * r12.xxx;
              r13.xyz = -r13.xyz * r6.xxx;
              r13.xyz = exp2(r13.xyz);
              r13.xyz = r13.xyz * r31.yyy;
              r29.xyzw = cmp(r3.xyzw >= r6.xxxx);
              r12.y = r29.w ? r4.z : r4.w;
              r12.y = r29.z ? r4.y : r12.y;
              r12.y = r29.y ? r4.x : r12.y;
              r12.y = r29.x ? 1 : r12.y;
              r10.xyz = r1.xyz * r6.xxx + postFxControl5.xyz;
              r12.z = dot(r10.xyz, postFxControl6.xyz);
              r12.z = postFxControl6.w + r12.z;
              r12.z = 0.00300000003 * r12.z;
              r12.z = max(1, r12.z);
              r12.z = min(2, r12.z);
              r12.z = (uint)r12.z;
              r23.w = dot(r7.xyzw, r24.xyzw);
              r27.x = dot(r7.xyzw, r25.xyzw);
              r7.x = dot(r7.xyzw, r26.xyzw);
              r7.y = (int)r12.z + -1;
              r29.xyz = icb[r7.y+0].xxx * r21.xyz;
              r29.xyz = icb[r7.y+0].yyy * r22.xyz + r29.xyz;
              r30.x = -r29.x + r23.w;
              r30.y = -r29.y + r27.x;
              r7.yz = r30.xy * r29.zz;
              r29.xy = r7.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r7.x = r7.x + -r0.x;
              r7.x = -r7.x * 6.10351563e-05 + 0.999499977;
              r7.y = (int)r21.w + (int)r12.z;
              r29.z = (uint)r7.y;
              r7.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r29.xyz, r7.x).x;
              r7.x = r7.x * r12.y;
              r7.y = cmp(0 < r20.w);
              r7.z = cmp(0 < (uint)r0.y);
              r7.y = r7.z ? r7.y : 0;
              if (r7.y != 0) {
                r7.z = dot(r18.xyzw, r10.xyzw);
                r10.x = dot(r19.xyzw, r10.xyzw);
                r29.x = frac(r7.z);
                r29.y = frac(r10.x);
                r7.z = (int)r0.y + -1;
                r29.z = (uint)r7.z;
                r10.xyz = gCookieArray.SampleLevel(samplerLinear_s, r29.xyz, 0).xyz;
                r7.z = r20.w * r2.w;
                r10.xyz = float3(-1,-1,-1) + r10.xyz;
                r10.xyz = r7.zzz * r10.xyz + float3(1,1,1);
                r27.xyw = r13.xyz * r12.xxx;
                r27.xyw = r27.xyw * r7.xxx;
                r10.xyz = r27.xyw * r10.xyz;
              } else {
                r27.xyw = r13.xyz * r12.xxx;
                r10.xyz = r27.xyw * r7.xxx;
              }
              r5.x = saturate(0.000500000024 * r6.x);
              r27.xyw = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r5.yzx, 0).xyz;
              r13.xyz = r27.xyw * r13.xyz;
              r13.xyz = r13.xyz * r12.xxx;
              r13.xyz = r13.xyz * r31.zzz;
              r12.xyz = r13.xyz * r12.yyy;
              r10.xyz = r10.xyz * r9.xyz + r12.xyz;
              r5.x = (int)r0.y + -1;
              r12.z = (uint)r5.x;
              r5.x = r20.w * r2.w;
              r13.xyz = r10.xyz;
              r27.xyw = r10.xyz;
              r7.x = r6.x;
              r7.z = 0;
              while (true) {
                r23.w = cmp((uint)r7.z >= (uint)r6.z);
                if (r23.w != 0) break;
                r23.w = r8.z * 2 + r7.x;
                r14.xyz = r23.www * r1.xyz;
                r28.x = r1.z * r23.w + r32.w;
                r28.x = -r32.z * r28.x;
                r28.x = exp2(r28.x);
                r28.x = min(1, r28.x);
                r28.x = r32.y * r28.x;
                r28.x = min(r28.x, r8.y);
                r29.xyz = r28.yzw * r28.xxx;
                r29.xyz = -r29.xyz * r23.www;
                r29.xyz = exp2(r29.xyz);
                r29.xyz = r29.xyz * r31.yyy;
                r30.xyzw = cmp(r3.xyzw >= r23.wwww);
                r29.w = r30.w ? r4.z : r4.w;
                r29.w = r30.z ? r4.y : r29.w;
                r29.w = r30.y ? r4.x : r29.w;
                r29.w = r30.x ? 1 : r29.w;
                r15.xyz = r1.xyz * r23.www + postFxControl5.xyz;
                r30.x = dot(r15.xyz, postFxControl6.xyz);
                r30.x = postFxControl6.w + r30.x;
                r30.x = 0.00300000003 * r30.x;
                r30.x = max(1, r30.x);
                r30.x = min(2, r30.x);
                r30.x = (uint)r30.x;
                r30.y = dot(r14.xyzw, r24.xyzw);
                r30.z = dot(r14.xyzw, r25.xyzw);
                r14.x = dot(r14.xyzw, r26.xyzw);
                r14.y = (int)r30.x + -1;
                r33.xyz = icb[r14.y+0].xxx * r21.xyz;
                r33.xyz = icb[r14.y+0].yyy * r22.xyz + r33.xyz;
                r35.xy = -r33.xy + r30.yz;
                r14.yz = r35.xy * r33.zz;
                r33.xy = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r14.x = r14.x + -r0.x;
                r14.x = -r14.x * 6.10351563e-05 + 0.999499977;
                r14.y = (int)r21.w + (int)r30.x;
                r33.z = (uint)r14.y;
                r14.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r14.x).x;
                r14.x = r14.x * r29.w;
                if (r7.y != 0) {
                  r14.y = dot(r18.xyzw, r15.xyzw);
                  r14.z = dot(r19.xyzw, r15.xyzw);
                  r12.xy = frac(r14.yz);
                  r15.xyz = gCookieArray.SampleLevel(samplerLinear_s, r12.xyz, 0).xyz;
                  r15.xyz = float3(-1,-1,-1) + r15.xyz;
                  r15.xyz = r5.xxx * r15.xyz + float3(1,1,1);
                  r30.xyz = r29.xyz * r28.xxx;
                  r30.xyz = r30.xyz * r14.xxx;
                  r15.xyz = r30.xyz * r15.xyz;
                } else {
                  r30.xyz = r29.xyz * r28.xxx;
                  r15.xyz = r30.xyz * r14.xxx;
                }
                r5.w = saturate(0.000500000024 * r23.w);
                r14.xyz = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r5.yzw, 0).xyz;
                r14.xyz = r14.xyz * r29.xyz;
                r14.xyz = r14.xyz * r28.xxx;
                r14.xyz = r14.xyz * r31.zzz;
                r14.xyz = r14.xyz * r29.www;
                r14.xyz = r15.xyz * r9.xyz + r14.xyz;
                r15.xyz = r14.xyz + r13.xyz;
                r5.w = dot(float3(0.298999995,0.587000012,0.114), r27.xyw);
                r28.x = dot(float3(0.298999995,0.587000012,0.114), r14.xyz);
                r29.x = max(r28.x, r5.w);
                r5.w = min(r28.x, r5.w);
                r5.w = r5.w / r29.x;
                r5.w = cmp(r5.w < 0.800000012);
                if (r5.w != 0) {
                  r5.w = r6.y * r8.x + r7.x;
                  r16.xyz = r5.www * r1.xyz;
                  r28.x = r1.z * r5.w + r32.w;
                  r28.x = -r32.z * r28.x;
                  r28.x = exp2(r28.x);
                  r28.x = min(1, r28.x);
                  r28.x = r32.y * r28.x;
                  r28.x = min(r28.x, r8.y);
                  r29.xyz = r28.yzw * r28.xxx;
                  r29.xyz = -r29.xyz * r5.www;
                  r29.xyz = exp2(r29.xyz);
                  r29.xyz = r29.xyz * r31.yyy;
                  r30.xyzw = cmp(r3.xyzw >= r5.wwww);
                  r29.w = r30.w ? r4.z : r4.w;
                  r29.w = r30.z ? r4.y : r29.w;
                  r29.w = r30.y ? r4.x : r29.w;
                  r29.w = r30.x ? 1 : r29.w;
                  r17.xyz = r1.xyz * r5.www + postFxControl5.xyz;
                  r5.w = dot(r17.xyz, postFxControl6.xyz);
                  r5.w = postFxControl6.w + r5.w;
                  r5.w = 0.00300000003 * r5.w;
                  r5.w = max(1, r5.w);
                  r5.w = min(2, r5.w);
                  r5.w = (uint)r5.w;
                  r30.x = dot(r16.xyzw, r24.xyzw);
                  r30.y = dot(r16.xyzw, r25.xyzw);
                  r16.x = dot(r16.xyzw, r26.xyzw);
                  r16.y = (int)r5.w + -1;
                  r33.xyz = icb[r16.y+0].xxx * r21.xyz;
                  r33.xyz = icb[r16.y+0].yyy * r22.xyz + r33.xyz;
                  r35.xy = -r33.xy + r30.xy;
                  r16.yz = r35.xy * r33.zz;
                  r30.xy = r16.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                  r16.x = r16.x + -r0.x;
                  r16.x = -r16.x * 6.10351563e-05 + 0.999499977;
                  r5.w = (int)r21.w + (int)r5.w;
                  r30.z = (uint)r5.w;
                  r5.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r16.x).x;
                  r5.w = r5.w * r29.w;
                  if (r7.y != 0) {
                    r16.x = dot(r18.xyzw, r17.xyzw);
                    r16.y = dot(r19.xyzw, r17.xyzw);
                    r12.xy = frac(r16.xy);
                    r16.xyz = gCookieArray.SampleLevel(samplerLinear_s, r12.xyz, 0).xyz;
                    r16.xyz = float3(-1,-1,-1) + r16.xyz;
                    r16.xyz = r5.xxx * r16.xyz + float3(1,1,1);
                    r17.xyz = r29.xyz * r28.xxx;
                    r17.xyz = r17.xyz * r5.www;
                    r16.xyz = r17.xyz * r16.xyz;
                  } else {
                    r17.xyz = r29.xyz * r28.xxx;
                    r16.xyz = r17.xyz * r5.www;
                  }
                  r16.xyz = r16.xyz * r9.xyz;
                } else {
                  r17.xyz = r27.xyw + r14.xyz;
                  r16.xyz = float3(0.5,0.5,0.5) * r17.xyz;
                }
                r13.xyz = r16.xyz + r15.xyz;
                r7.z = (int)r7.z + 2;
                r27.xyw = r14.xyz;
                r7.x = r23.w;
              }
              r5.x = r27.z * r8.z;
              r6.xyz = r13.xyz * r5.xxx;
              r23.xyz = r6.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r23.xyz;
              break;
              default :
              break;
            }
          }
        }
      }
    }
    r22.w = (int)r22.w + 1;
  }
  o0.xyz = r23.xyz;
  o0.w = 0;
  return;
}