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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t1, 208
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
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
  r5.xyzw = adaptiveTransparencyTrans.Load(r3.xyw).zwxy;
  r1.w = oitPixelAlpha.Load(r3.xyz).x;
  r3.xyzw = float4(2000,2000,2000,2000) * r4.xyzw;
  r1.w = cmp(0.899999976 < r1.w);
  r2.zw = r1.ww ? float2(2000,2000) : r3.xy;
  r3.xy = r1.ww ? float2(1,1) : r5.xy;
  r5.xy = r3.zw;
  r4.xyzw = r1.wwww ? float4(2000,2000,1,1) : r5.xyzw;
  r1.w = max(r2.y, r2.x);
  r0.w = (uint)r0.w;
  r0.xy = (uint2)r0.xy;
  r3.z = dot(r0.yx, float2(0.0671105608,0.00583714992));
  r3.z = frac(r3.z);
  r3.z = 52.9829178 * r3.z;
  r3.z = frac(r3.z);
  r3.z = -0.5 + r3.z;
  r3.w = dot(sunConstants.wldDir.xyz, -r1.xyz);
  r3.w = max(-1, r3.w);
  r3.w = min(1, r3.w);
  r5.x = cmp(0 < sunConstants.sunVolumetricCookieIntensity);
  r5.y = sunConstants.sunCookieIntensity * sunConstants.sunVolumetricCookieIntensity;
  r5.zw = uiDest.xy;
// Unknown use of GetDimensions for resinfo_ from missing reflection info, need manual fix.
// resinfo_indexable(texture3d)(float,float,float,float)_uint r5.zw, l(0), t2.zwxy
// Example for texture2d type, uint return:
tx.GetDimensions(0, uiDest.x, uiDest.y, uiDest.z);
rx = uiDest;
 state=1, constZero.eType=4, returnType=2, texture.eType=7, afImmediates[0]=0.000000
  r0.xyw = float3(0.5,0.5,-1) + r0.xyw;
  r5.zw = (uint2)r5.zw;
  r6.x = 16 / postFxControl7.x;
  r5.zw = r6.xx * r5.zw;
  r6.xy = r0.xy / r5.zw;
  r7.w = 1;
  r8.w = 1;
  r9.xyz = float3(0,0,0);
  r0.x = sunConstants.sunCookieIndex;
  r0.y = 0;
  while (true) {
    r5.z = cmp((uint)r0.y >= (uint)r0.z);
    if (r5.z != 0) break;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r10.xyzw, r0.y, l(132), t1.xyzw
  r10.x = gTrilinearClampSampler[]..swiz;
  r10.y = gTrilinearClampSampler[]..swiz;
  r10.z = gTrilinearClampSampler[]..swiz;
  r10.w = gTrilinearClampSampler[]..swiz;
    r5.z = (int)r10.w & 21;
    if (r5.z != 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r11.xyzw, r0.y, l(24), t1.xyzw
    r11.x = gTrilinearClampSampler[]..swiz;
    r11.y = gTrilinearClampSampler[]..swiz;
    r11.z = gTrilinearClampSampler[]..swiz;
    r11.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r12.xyzw, r0.y, l(52), t1.xyzw
    r12.x = gTrilinearClampSampler[]..swiz;
    r12.y = gTrilinearClampSampler[]..swiz;
    r12.z = gTrilinearClampSampler[]..swiz;
    r12.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r5.w, r0.y, l(68), t1.xxxx
    r5.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r13.xyzw, r0.y, l(84), t1.xyzw
    r13.x = gTrilinearClampSampler[]..swiz;
    r13.y = gTrilinearClampSampler[]..swiz;
    r13.z = gTrilinearClampSampler[]..swiz;
    r13.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r9.w, r0.y, l(100), t1.xxxx
    r9.w = gTrilinearClampSampler[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r14.xyzw, r0.y, l(116), t1.xyzw
    r14.x = gTrilinearClampSampler[]..swiz;
    r14.y = gTrilinearClampSampler[]..swiz;
    r14.z = gTrilinearClampSampler[]..swiz;
    r14.w = gTrilinearClampSampler[]..swiz;
      r10.w = dot(r1.xyz, r11.xyz);
      r11.x = max(1.00000001e-07, abs(r10.w));
      r11.x = 1 / r11.x;
      r11.y = r11.w * r11.x;
      r11.x = r12.x * r11.x;
      r10.w = cmp(0 < -r10.w);
      r15.x = max(-131072, r11.y);
      r15.y = min(131072, -r11.x);
      r16.y = min(131072, -r11.y);
      r16.x = max(-131072, r11.x);
      r11.xy = r10.ww ? r15.xy : r16.xy;
      r10.w = dot(r1.xyz, r12.yzw);
      r11.z = max(1.00000001e-07, abs(r10.w));
      r11.z = 1 / r11.z;
      r5.w = r11.z * r5.w;
      r11.z = r13.x * r11.z;
      r10.w = cmp(0 < -r10.w);
      r12.x = max(r5.w, r11.x);
      r12.y = min(-r11.z, r11.y);
      r15.y = min(-r5.w, r11.y);
      r15.x = max(r11.z, r11.x);
      r11.xy = r10.ww ? r12.xy : r15.xy;
      r5.w = dot(r1.xyz, r13.yzw);
      r10.w = max(1.00000001e-07, abs(r5.w));
      r10.w = 1 / r10.w;
      r9.w = r10.w * r9.w;
      r10.w = r14.x * r10.w;
      r5.w = cmp(0 < -r5.w);
      r12.y = max(r9.w, r11.x);
      r12.z = min(-r10.w, r11.y);
      r11.z = min(-r9.w, r11.y);
      r11.y = max(r10.w, r11.x);
      r11.yz = r5.ww ? r12.yz : r11.yz;
      r5.w = cmp(r11.y < r11.z);
      if (r5.w != 0) {
        r11.x = max(0, r11.y);
        r11.yw = max(r11.xz, r2.yy);
        r11.xz = max(r11.xz, r2.xx);
        r11.xz = min(r11.xz, r1.ww);
        r11.xy = min(r11.yw, r11.xz);
        r5.w = r11.y + -r11.x;
        r5.w = cmp(r5.w >= 1);
        if (r5.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r5.w, r0.y, l(196), t1.xxxx
        r5.w = gTrilinearClampSampler[]..swiz;
          r9.w = max(r11.x, r10.x);
          r10.w = r11.y + -r9.w;
          r5.w = min(r10.w, r5.w);
          r10.w = cmp(r5.w >= 1);
          if (r10.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r11.xyzw, r0.y, l(148), t1.xyzw
          r11.x = gTrilinearClampSampler[]..swiz;
          r11.y = gTrilinearClampSampler[]..swiz;
          r11.z = gTrilinearClampSampler[]..swiz;
          r11.w = gTrilinearClampSampler[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r12.xyzw, r0.y, l(164), t1.zxyw
          r12.x = gTrilinearClampSampler[]..swiz;
          r12.y = gTrilinearClampSampler[]..swiz;
          r12.z = gTrilinearClampSampler[]..swiz;
          r12.w = gTrilinearClampSampler[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=208)(mixed,mixed,mixed,mixed) r13.xyzw, r0.y, l(180), t1.xyzw
          r13.x = gTrilinearClampSampler[]..swiz;
          r13.y = gTrilinearClampSampler[]..swiz;
          r13.z = gTrilinearClampSampler[]..swiz;
          r13.w = gTrilinearClampSampler[]..swiz;
            r11.xyz = r11.xyz + r10.zzz;
            r5.w = r9.w + r5.w;
            switch (r5.z) {
              case 1 :              r5.z = r9.w + r10.x;
              r5.z = min(r5.z, r5.w);
              r10.w = r5.w + -r5.z;
              r14.x = r10.w / postFxControlA.x;
              r14.x = min(r14.x, r0.w);
              r14.x = floor(r14.x);
              r14.x = 1 + r14.x;
              r14.x = (uint)r14.x;
              r15.x = (uint)r14.x;
              r15.x = 1 / r15.x;
              r10.w = r15.x * r10.w;
              r15.y = -r10.w * 0.5 + r5.w;
              r5.z = r10.w * 0.5 + r5.z;
              r10.w = r15.y + -r5.z;
              r15.y = r10.w * r15.x;
              r15.z = r15.y * r3.z;
              r5.z = r15.z * 0.75 + r5.z;
              r15.z = 100 * r14.y;
              r12.x = r11.w;
              r15.w = r5.z;
              r16.xyzw = float4(0,0,0,0);
              while (true) {
                r17.x = cmp((uint)r16.w >= (uint)r14.x);
                if (r17.x != 0) break;
                r15.w = r10.w * r15.x + r15.w;
                r17.x = r1.z * r15.w + r14.w;
                r17.x = r17.x * -r14.z;
                r17.x = exp2(r17.x);
                r17.x = min(1, r17.x);
                r17.x = r17.x * r14.y;
                r17.x = min(r17.x, r15.z);
                r17.yzw = r17.xxx * r11.xyz;
                r17.yzw = -r17.yzw * r15.www;
                r17.yzw = exp2(r17.yzw);
                r17.yzw = r17.yzw * r13.yyy;
                r18.xy = cmp(r2.zw >= r15.ww);
                r18.zw = cmp(r4.xy >= r15.ww);
                r18.w = r18.w ? r3.x : r3.y;
                r18.z = r18.z ? r4.w : r18.w;
                r18.y = r18.y ? r4.z : r18.z;
                r18.x = r18.x ? 1 : r18.y;
                r17.xyz = r17.yzw * r17.xxx;
                r17.xyz = r17.xyz * r12.xyz;
                r16.xyz = r17.xyz * r18.xxx + r16.xyz;
                r16.w = (int)r16.w + 1;
              }
              r5.z = r15.y * r10.z;
              r15.xyz = r16.xyz * r5.zzz;
              r9.xyz = r15.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r9.xyz;
              break;
              case 1 :              r5.z = r9.w + r10.x;
              r5.z = min(r5.z, r5.w);
              r10.w = r5.w + -r5.z;
              r14.x = r10.w / postFxControlA.x;
              r14.x = min(r14.x, r0.w);
              r14.x = floor(r14.x);
              r14.x = 1 + r14.x;
              r14.x = (uint)r14.x;
              r15.x = (uint)r14.x;
              r15.x = 1 / r15.x;
              r10.w = r15.x * r10.w;
              r15.y = -r10.w * 0.5 + r5.w;
              r5.z = r10.w * 0.5 + r5.z;
              r10.w = r15.y + -r5.z;
              r15.y = r10.w * r15.x;
              r15.z = r10.y * r3.w + 1;
              r15.z = max(9.99999997e-07, r15.z);
              r15.z = min(2, r15.z);
              r15.w = -r10.y * r10.y + 1;
              r15.w = 0.0795774683 * r15.w;
              r15.z = r15.z * r15.z;
              r15.z = rcp(r15.z);
              r15.z = r15.w * r15.z;
              r15.z = max(0, r15.z);
              r15.z = min(10000, r15.z);
              r17.xy = r12.xw;
              r17.z = r13.x;
              r17.xyz = r17.xyz * r15.zzz;
              r17.xyz = r17.xyz * r13.www;
              r17.xyz = float3(12.566371,12.566371,12.566371) * r17.xyz;
              r15.z = r15.y * r3.z;
              r5.z = r15.z * 0.75 + r5.z;
              r15.z = 100 * r14.y;
              r15.w = cmp(0 < (uint)r0.x);
              r15.w = r5.x ? r15.w : 0;
              r16.w = (int)r0.x + -1;
              r18.z = (uint)r16.w;
              r12.x = r11.w;
              r19.xyz = float3(0,0,0);
              r11.w = r5.z;
              r16.w = 0;
              while (true) {
                r17.w = cmp((uint)r16.w >= (uint)r14.x);
                if (r17.w != 0) break;
                r11.w = r10.w * r15.x + r11.w;
                r20.xyz = r11.www * r1.xyz;
                r17.w = r1.z * r11.w + r14.w;
                r17.w = r17.w * -r14.z;
                r17.w = exp2(r17.w);
                r17.w = min(1, r17.w);
                r17.w = r17.w * r14.y;
                r17.w = min(r17.w, r15.z);
                r21.xyz = r17.www * r11.xyz;
                r21.xyz = -r21.xyz * r11.www;
                r21.xyz = exp2(r21.xyz);
                r21.xyz = r21.xyz * r13.yyy;
                r22.xy = cmp(r2.zw >= r11.ww);
                r22.zw = cmp(r4.xy >= r11.ww);
                r18.w = r22.w ? r3.x : r3.y;
                r18.w = r22.z ? r4.w : r18.w;
                r18.w = r22.y ? r4.z : r18.w;
                r18.w = r22.x ? 1 : r18.w;
                r7.xyz = r1.xyz * r11.www + postFxControl5.xyz;
                r19.w = dot(r7.xyz, postFxControl6.xyz);
                r19.w = postFxControl6.w + r19.w;
                r19.w = 0.00300000003 * r19.w;
                r19.w = max(1, r19.w);
                r19.w = min(2, r19.w);
                r19.w = (uint)r19.w;
                r22.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r20.yyy;
                r20.xyw = r20.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r22.xyz;
                r20.xyz = r20.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r20.xyw;
                r20.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r20.xyz;
                r20.xy = -sunConstants.splitPinTransform[r19.w].xy + r20.xy;
                r20.xy = sunConstants.splitPinTransform[r19.w].zz * r20.xy;
                r22.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.x = -sunConstants.splitDepthOffset + r20.z;
                r20.x = -r20.x * 6.10351563e-05 + 0.999499977;
                r19.w = (int)r19.w + (int16)sunConstants.splitArrayOffset;
                r22.z = (uint)r19.w;
                r19.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r20.x).x;
                r19.w = r19.w * r18.w;
                if (r15.w != 0) {
                  r20.x = dot(sunConstants.sunCookieTransform[0].xyzw, r7.xyzw);
                  r7.x = dot(sunConstants.sunCookieTransform[1].xyzw, r7.xyzw);
                  r18.x = frac(r20.x);
                  r18.y = frac(r7.x);
                  r7.xyz = gCookieArray.SampleLevel(samplerLinear_s, r18.xyz, 0).xyz;
                  r7.xyz = float3(-1,-1,-1) + r7.xyz;
                  r7.xyz = r5.yyy * r7.xyz + float3(1,1,1);
                  r20.xyz = r21.xyz * r17.www;
                  r20.xyz = r20.xyz * r19.www;
                  r7.xyz = r20.xyz * r7.xyz;
                } else {
                  r20.xyz = r21.xyz * r17.www;
                  r7.xyz = r20.xyz * r19.www;
                }
                r20.xyz = r21.xyz * r17.www;
                r20.xyz = r20.xyz * r12.xyz;
                r18.xyw = r20.xyz * r18.www;
                r7.xyz = r7.xyz * r17.xyz + r18.xyw;
                r19.xyz = r19.xyz + r7.xyz;
                r16.w = (int)r16.w + 1;
              }
              r5.z = r15.y * r10.z;
              r7.xyz = r19.xyz * r5.zzz;
              r9.xyz = r7.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r9.xyz;
              break;
              case 4 :              r5.z = r9.w + r10.x;
              r5.z = min(r5.z, r5.w);
              r7.x = r5.w + -r5.z;
              r7.y = r7.x / postFxControlA.x;
              r7.y = min(r7.y, r0.w);
              r7.y = floor(r7.y);
              r7.y = 1 + r7.y;
              r7.y = (uint)r7.y;
              r7.z = (uint)r7.y;
              r7.z = 1 / r7.z;
              r7.x = r7.x * r7.z;
              r10.w = -r7.x * 0.5 + r5.w;
              r5.z = r7.x * 0.5 + r5.z;
              r7.x = r10.w + -r5.z;
              r10.w = r7.x * r7.z;
              r11.w = r10.w * r3.z;
              r5.z = r11.w * 0.75 + r5.z;
              r11.w = 100 * r14.y;
              r15.xyz = float3(0,0,0);
              r12.z = r5.z;
              r14.x = 0;
              while (true) {
                r15.w = cmp((uint)r14.x >= (uint)r7.y);
                if (r15.w != 0) break;
                r12.z = r7.x * r7.z + r12.z;
                r15.w = r1.z * r12.z + r14.w;
                r15.w = r15.w * -r14.z;
                r15.w = exp2(r15.w);
                r15.w = min(1, r15.w);
                r15.w = r15.w * r14.y;
                r15.w = min(r15.w, r11.w);
                r17.xyz = r15.www * r11.xyz;
                r17.xyz = -r17.xyz * r12.zzz;
                r17.xyz = exp2(r17.xyz);
                r17.xyz = r17.xyz * r13.yyy;
                r18.xy = cmp(r2.zw >= r12.zz);
                r18.zw = cmp(r4.xy >= r12.zz);
                r16.w = r18.w ? r3.x : r3.y;
                r16.w = r18.z ? r4.w : r16.w;
                r16.w = r18.y ? r4.z : r16.w;
                r16.w = r18.x ? 1 : r16.w;
                r6.z = saturate(0.000500000024 * r12.z);
                r18.xyz = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r6.xyz, 0).xyz;
                r17.xyz = r18.xyz * r17.xyz;
                r17.xyz = r17.xyz * r15.www;
                r17.xyz = r17.xyz * r13.zzz;
                r15.xyz = r17.xyz * r16.www + r15.xyz;
                r14.x = (int)r14.x + 1;
              }
              r5.z = r10.z * r10.w;
              r7.xyz = r15.xyz * r5.zzz;
              r9.xyz = r7.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r9.xyz;
              break;
              case 5 :              r5.z = r9.w + r10.x;
              r5.z = min(r5.z, r5.w);
              r6.z = r5.w + -r5.z;
              r7.x = r6.z / postFxControlA.x;
              r7.x = min(r7.x, r0.w);
              r7.x = floor(r7.x);
              r7.x = 1 + r7.x;
              r7.x = (uint)r7.x;
              r7.y = (uint)r7.x;
              r7.y = 1 / r7.y;
              r6.z = r7.y * r6.z;
              r5.w = -r6.z * 0.5 + r5.w;
              r5.z = r6.z * 0.5 + r5.z;
              r5.w = r5.w + -r5.z;
              r6.z = r5.w * r7.y;
              r7.z = r10.y * r3.w + 1;
              r7.z = max(9.99999997e-07, r7.z);
              r7.z = min(2, r7.z);
              r9.w = -r10.y * r10.y + 1;
              r9.w = 0.0795774683 * r9.w;
              r7.z = r7.z * r7.z;
              r7.z = rcp(r7.z);
              r7.z = r9.w * r7.z;
              r7.z = max(0, r7.z);
              r7.z = min(10000, r7.z);
              r12.y = r13.x;
              r10.xyw = r12.xwy * r7.zzz;
              r10.xyw = r10.xyw * r13.www;
              r10.xyw = float3(12.566371,12.566371,12.566371) * r10.xyw;
              r7.z = r6.z * r3.z;
              r5.z = r7.z * 0.75 + r5.z;
              r7.z = 100 * r14.y;
              r9.w = cmp(0 < (uint)r0.x);
              r9.w = r5.x ? r9.w : 0;
              r11.w = (int)r0.x + -1;
              r12.z = (uint)r11.w;
              r17.xyz = float3(0,0,0);
              r11.w = r5.z;
              r12.w = 0;
              while (true) {
                r13.x = cmp((uint)r12.w >= (uint)r7.x);
                if (r13.x != 0) break;
                r11.w = r5.w * r7.y + r11.w;
                r18.xyz = r11.www * r1.xyz;
                r13.x = r1.z * r11.w + r14.w;
                r13.x = -r14.z * r13.x;
                r13.x = exp2(r13.x);
                r13.x = min(1, r13.x);
                r13.x = r14.y * r13.x;
                r13.x = min(r13.x, r7.z);
                r20.xyz = r13.xxx * r11.xyz;
                r20.xyz = -r20.xyz * r11.www;
                r20.xyz = exp2(r20.xyz);
                r20.xyz = r20.xyz * r13.yyy;
                r21.xy = cmp(r2.zw >= r11.ww);
                r21.zw = cmp(r4.xy >= r11.ww);
                r13.w = r21.w ? r3.x : r3.y;
                r13.w = r21.z ? r4.w : r13.w;
                r13.w = r21.y ? r4.z : r13.w;
                r13.w = r21.x ? 1 : r13.w;
                r8.xyz = r1.xyz * r11.www + postFxControl5.xyz;
                r14.x = dot(r8.xyz, postFxControl6.xyz);
                r14.x = postFxControl6.w + r14.x;
                r14.x = 0.00300000003 * r14.x;
                r14.x = max(1, r14.x);
                r14.x = min(2, r14.x);
                r14.x = (uint)r14.x;
                r21.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * r18.yyy;
                r18.xyw = r18.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r21.xyz;
                r18.xyz = r18.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r18.xyw;
                r18.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r18.xyz;
                r18.xy = -sunConstants.splitPinTransform[r14.x].xy + r18.xy;
                r18.xy = sunConstants.splitPinTransform[r14.x].zz * r18.xy;
                r21.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r15.w = -sunConstants.splitDepthOffset + r18.z;
                r15.w = -r15.w * 6.10351563e-05 + 0.999499977;
                r14.x = (int)r14.x + (int16)sunConstants.splitArrayOffset;
                r21.z = (uint)r14.x;
                r14.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r15.w).x;
                r14.x = r14.x * r13.w;
                if (r9.w != 0) {
                  r15.w = dot(sunConstants.sunCookieTransform[0].xyzw, r8.xyzw);
                  r8.x = dot(sunConstants.sunCookieTransform[1].xyzw, r8.xyzw);
                  r12.x = frac(r15.w);
                  r12.y = frac(r8.x);
                  r8.xyz = gCookieArray.SampleLevel(samplerLinear_s, r12.xyz, 0).xyz;
                  r8.xyz = float3(-1,-1,-1) + r8.xyz;
                  r8.xyz = r5.yyy * r8.xyz + float3(1,1,1);
                  r18.xyz = r20.xyz * r13.xxx;
                  r18.xyz = r18.xyz * r14.xxx;
                  r8.xyz = r18.xyz * r8.xyz;
                } else {
                  r18.xyz = r20.xyz * r13.xxx;
                  r8.xyz = r18.xyz * r14.xxx;
                }
                r6.w = saturate(0.000500000024 * r11.w);
                r18.xyz = volLightTexture.SampleLevel(gTrilinearClampSampler_s, r6.xyw, 0).xyz;
                r18.xyz = r18.xyz * r20.xyz;
                r18.xyz = r18.xyz * r13.xxx;
                r18.xyz = r18.xyz * r13.zzz;
                r18.xyz = r18.xyz * r13.www;
                r8.xyz = r8.xyz * r10.xyw + r18.xyz;
                r17.xyz = r17.xyz + r8.xyz;
                r12.w = (int)r12.w + 1;
              }
              r5.z = r10.z * r6.z;
              r7.xyz = r17.xyz * r5.zzz;
              r9.xyz = r7.xyz * float3(0.0795774683,0.0795774683,0.0795774683) + r9.xyz;
              break;
              default :
              break;
            }
          }
        }
      }
    }
    r0.y = (int)r0.y + 1;
  }
  o0.xyz = r9.xyz;
  o0.w = 0;
  return;
}