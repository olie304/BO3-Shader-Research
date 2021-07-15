// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:33:01 2021

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
  float rowCount : packoffset(c11.z);
  float columnCount : packoffset(c11.w);
  float imageTime : packoffset(c12);
  float2 rotateUVs : packoffset(c12.y);
  float2 scrollUVs : packoffset(c13);
  float2 scaleUVs : packoffset(c13.z);
  float2 offsetUVs : packoffset(c14);
  float2 zoomUVs : packoffset(c14.z);
  float zoomRate : packoffset(c15);
  float layerDepth : packoffset(c15.y);
  bool clampU : packoffset(c15.z);
  bool clampV : packoffset(c15.w);
  float2 flickerSeed : packoffset(c16);
  float flickerSpeed : packoffset(c16.z);
  float2 flickerRange : packoffset(c17);
  float flickerPower : packoffset(c17.z);
  bool useAsCamo : packoffset(c17.w);
  float3 emissiveTint1 : packoffset(c18);
  float hdrScale : packoffset(c18.w);
  float uvMotionToggle1 : packoffset(c19);
  bool relativeHDR : packoffset(c19.y);
  float3 emissiveTint2 : packoffset(c20);
  float rowCount2 : packoffset(c20.w);
  float columnCount2 : packoffset(c21);
  float imageTime2 : packoffset(c21.y);
  float2 rotateUVs2 : packoffset(c21.z);
  float2 scrollUVs2 : packoffset(c22);
  float2 scaleUVs2 : packoffset(c22.z);
  float2 offsetUVs2 : packoffset(c23);
  float2 zoomUVs2 : packoffset(c23.z);
  float zoomRate2 : packoffset(c24);
  float layer2Depth : packoffset(c24.y);
  float uvMotionToggle2 : packoffset(c24.z);
  bool clampU2 : packoffset(c24.w);
  bool clampV2 : packoffset(c25);
  float2 flickerSeed2 : packoffset(c25.y);
  float flickerSpeed2 : packoffset(c25.w);
  float2 flickerRange2 : packoffset(c26);
  float flickerPower2 : packoffset(c26.z);
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
SamplerState lookupSampler_s : register(s7);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
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
Texture2D<float4> colorMap : register(t21);
Texture2D<float4> normalMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> glossMap : register(t24);
Texture2D<float4> aoMap : register(t25);
Texture2D<float4> flickerLookupMap : register(t26);
Texture2D<float4> camoMaskMap : register(t29);
Texture2D<float4> emissiveMap1 : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
Texture2D<float4> emissiveMap2 : register(t37);
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
  float2 v2 : TEXCOORD0,
  nointerpolation float3 v3 : UVOFFSETS0,
  nointerpolation uint w3 : TEXCOORD4,
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
// unknown dcl_: dcl_resource_structured t0, 384
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
// unknown dcl_: dcl_resource_structured t23, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t36, 128
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46;
  uint4 bitmask, uiDest;
  float4 fDest;

  if (useAsCamo != 0) {
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.w, l(4), t4.xxxx
  r0.x = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(208), t0.xxyz
  r0.y = samp0[]..swiz;
  r0.z = samp0[]..swiz;
  r0.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyz, r0.x, l(224), t0.xyzx
  r1.x = samp0[]..swiz;
  r1.y = samp0[]..swiz;
  r1.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyz, r0.x, l(240), t0.xyzx
  r2.x = samp0[]..swiz;
  r2.y = samp0[]..swiz;
  r2.z = samp0[]..swiz;
    r3.xyz = camoMaskMap.Sample(colorSampler_s, v2.xy).xyz;
    r0.x = saturate(dot(r3.xyz, r0.yzw));
    r3.xy = v2.xy;
    r3.z = 1;
    r1.x = dot(r1.xyz, r3.xyz);
    r1.y = dot(r2.xyz, r3.xyz);
    r0.yz = r1.xy;
  } else {
    r0.yz = v2.xy;
    r1.xy = v2.xy;
    r0.x = 1;
  }
  r2.xyzw = colorMap.Sample(colorSampler_s, r0.yz).xyzw;
  r3.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r3.xyz = r2.www * r3.xyz + float3(1,1,1);
  r2.xyz = r3.xyz * r2.xyz;
  r2.xyz = v1.xyz * r2.xyz;
  r0.w = w1.x * r2.w;
  r1.z = aoMap.Sample(aoSampler_s, r0.yz).x;
  r1.w = glossMap.Sample(specColorSampler_s, r0.yz).x;
  r2.w = glossRange.y + -glossRange.x;
  r1.w = r1.w * r2.w + glossRange.x;
  r1.w = saturate(0.0588235296 * r1.w);
  r3.xyz = normalMap.Sample(normalSampler_s, r0.yz).xyz;
  r3.xyz = float3(-0.5,-0.5,-0) + r3.xyz;
  r3.xyz = baseNormalHeight * r3.xyz + float3(0.5,0.5,0);
  r0.yz = r3.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.w = dot(r0.yz, r0.yz);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r3.x = r3.z * r3.z;
  r3.x = 0.333333343 * r3.x;
  r3.x = min(1, r3.x);
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
  r1.w = -17 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r3.x + r1.w;
  r1.w = log2(r1.w);
  r1.w = -0.0588235296 * r1.w;
  r1.w = max(0, r1.w);
  r3.xzw = r6.xyz * r0.zzz;
  r3.xzw = r5.xyz * r0.yyy + r3.xzw;
  r3.xzw = r4.xyz * r2.www + r3.xzw;
  r0.y = dot(r3.xzw, r3.xzw);
  r0.y = rsqrt(r0.y);
  r3.xzw = r3.xzw * r0.yyy;
  r0.y = cmp(v0.z >= 0.984375);
  r0.z = 1.01587307 * v0.z;
  r2.w = v0.z * 64 + -63;
  r0.y = r0.y ? r2.w : r0.z;
  r0.y = max(9.99999994e-09, r0.y);
  r0.y = rcp(r0.y);
  r7.xy = (uint2)v0.yx;
  r8.xyz = ddx_coarse(v7.xyz);
  r9.xyz = ddy_coarse(v7.xyz);
  r0.z = numRefProbes + numLights;
  r10.xyz = eyeOffset.xyz + v7.xyz;
  r0.y = 0.0078125 * r0.y;
  r0.y = min(15, r0.y);
  r0.y = (uint)r0.y;
  r11.xy = (uint2)r7.yx >> int2(6,6);
  r11.z = (uint)r0.y << 4;
  r0.y = numStaticDecals & -32;
  r2.w = (int)-r0.y + numStaticDecals;
  r12.xy = float2(0,0);
  r13.w = 0;
  r10.w = 1;
  r14.xyz = float3(0,0,0);
  r15.xyz = float3(0,0,0);
  r16.xyz = float3(0,0,0);
  r4.w = 0;
  r5.w = 0;
  r6.w = 0;
  while (true) {
    r7.z = cmp((uint)r6.w >= numStaticDecals);
    if (r7.z != 0) break;
    r12.z = (uint)r6.w >> 5;
    r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
    r7.z = visibleDecals.Load(r13.xyzw).x;
    r7.w = cmp((int)r0.y == (int)r6.w);
    if (r2.w == 0) r8.w = 0; else if (r2.w+0 < 32) {     r8.w = (uint)r7.z << (32-(r2.w + 0)); r8.w = (uint)r8.w >> (32-r2.w);    } else r8.w = (uint)r7.z >> 0;
    r7.z = r7.w ? r8.w : r7.z;
    r7.w = (int)r0.z + (int)r6.w;
    r13.xyz = r14.xyz;
    r17.xyz = r15.xyz;
    r18.xyz = r16.xyz;
    r8.w = r4.w;
    r9.w = r5.w;
    r11.w = r7.z;
    while (true) {
      if (r11.w == 0) break;
      r12.z = firstbitlow((uint)r11.w);
      r12.w = 1 << (int)r12.z;
      r14.w = (int)r11.w & (int)r12.w;
      if (r14.w != 0) {
        r11.w = (int)r11.w ^ (int)r12.w;
        r12.w = (int)r7.w + (int)r12.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r19.xyzw, r12.w, l(0), t11.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r20.xy, r12.w, l(16), t11.xyxx
      r20.x = samp0[]..swiz;
      r20.y = samp0[]..swiz;
        r19.xyz = -v7.xyz + r19.xyz;
        r20.z = r19.w;
        r19.xyz = cmp(abs(r19.xyz) < r20.zxy);
        r12.w = r19.y ? r19.x : 0;
        r12.w = r19.z ? r12.w : 0;
        if (r12.w != 0) {
          r12.z = (int)r6.w + (int)r12.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r12.z, l(0), t36.xyzx
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyz, r12.z, l(16), t36.xyzx
        r20.x = samp0[]..swiz;
        r20.y = samp0[]..swiz;
        r20.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyz, r12.z, l(32), t36.xyzx
        r21.x = samp0[]..swiz;
        r21.y = samp0[]..swiz;
        r21.z = samp0[]..swiz;
          r22.x = r19.x;
          r22.y = r20.x;
          r22.z = r21.x;
          r12.w = dot(r22.xyz, r22.xyz);
          r12.w = rsqrt(r12.w);
          r23.xyz = r22.xyz * r12.www;
          r12.w = dot(r23.xyz, r4.xyz);
          r12.w = cmp(r12.w >= 0.5);
          if (r12.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r24.xyw, r12.z, l(48), t36.xyxz
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
            r12.w = r19.y ? r19.x : 0;
            r12.w = r19.z ? r12.w : 0;
            if (r12.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r12.z, l(64), t36.xyzw
            r19.x = samp0[]..swiz;
            r19.y = samp0[]..swiz;
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r20.xyzw, r12.z, l(80), t36.xyzw
            r20.x = samp0[]..swiz;
            r20.y = samp0[]..swiz;
            r20.z = samp0[]..swiz;
            r20.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r21.xyzw, r12.z, l(96), t36.xyzw
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
                if (4 == 0) r12.w = 0; else if (4+24 < 32) {                 r12.w = (uint)r20.w << (32-(4 + 24)); r12.w = (uint)r12.w >> (32-4);                } else r12.w = (uint)r20.w >> 24;
                r12.w = 1 << (int)r12.w;
                r14.w = (uint)r20.w >> 28;
                r14.w = 1 << (int)r14.w;
                r15.w = cmp((int)r22.z == 4);
                if (r15.w != 0) {
                  r15.w = (int)r20.w & 4095;
                  if (12 == 0) r16.w = 0; else if (12+12 < 32) {                   r16.w = (uint)r20.w << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                  } else r16.w = (uint)r20.w >> 12;
                  r17.w = (int)r21.w & 1023;
                  r28.xz = (uint2)r12.ww;
                  r28.y = (uint)r14.w;
                  r29.xy = r22.xy * r28.zy + float2(0.5,0.5);
                  r29.zw = float2(-0.5,-0.5) + r28.zy;
                  r29.xy = min(r29.xy, r29.zw);
                  r30.x = (uint)r15.w;
                  r30.y = (uint)r16.w;
                  r29.xy = r30.xy + r29.xy;
                  r29.xy = invBcTexSizes.xy * r29.xy;
                  r29.z = (uint)r17.w;
                  r30.xyz = invBcTexSizes.xyx * r26.zyz;
                  r30.xyz = r30.xyz * r28.xyz;
                  r31.xyz = invBcTexSizes.xyx * r27.zyz;
                  r28.xyz = r31.xyz * r28.xyz;
                  r28.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.xyzx, r28.xyzx).xyzw;
                } else {
                  r15.w = cmp((int)r22.z == 1);
                  if (r15.w != 0) {
                    r15.w = (int)r20.w & 4095;
                    if (12 == 0) r16.w = 0; else if (12+12 < 32) {                     r16.w = (uint)r20.w << (32-(12 + 12)); r16.w = (uint)r16.w >> (32-12);                    } else r16.w = (uint)r20.w >> 12;
                    r17.w = (int)r21.w & 1023;
                    r29.xz = (uint2)r12.ww;
                    r29.y = (uint)r14.w;
                    r30.xy = r22.xy * r29.zy + float2(0.5,0.5);
                    r30.zw = float2(-0.5,-0.5) + r29.zy;
                    r30.xy = min(r30.xy, r30.zw);
                    r31.x = (uint)r15.w;
                    r31.y = (uint)r16.w;
                    r30.xy = r31.xy + r30.xy;
                    r30.xy = invBcTexSizes.zw * r30.xy;
                    r30.z = (uint)r17.w;
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
                r12.w = r28.w * r19.w;
              } else {
                r19.xyz = float3(0,0,0);
                r12.w = 0;
              }
              r14.w = cmp(r20.x != 1.000000);
              r15.w = r12.w + r19.w;
              r15.w = saturate(r15.w * r20.x + -r20.x);
              r12.w = r14.w ? r15.w : r12.w;
              if (r22.w != 0) {
                if (4 == 0) r14.w = 0; else if (4+24 < 32) {                 r14.w = (uint)r21.y << (32-(4 + 24)); r14.w = (uint)r14.w >> (32-4);                } else r14.w = (uint)r21.y >> 24;
                r14.w = 1 << (int)r14.w;
                r15.w = (uint)r21.y >> 28;
                r15.w = 1 << (int)r15.w;
                r16.w = cmp((int)r22.w == 2);
                if (r16.w != 0) {
                  r16.w = (int)r21.y & 4095;
                  if (12 == 0) r20.x = 0; else if (12+12 < 32) {                   r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                  } else r20.x = (uint)r21.y >> 12;
                  if (10 == 0) r20.w = 0; else if (10+20 < 32) {                   r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                  } else r20.w = (uint)r21.w >> 20;
                  r28.xz = (uint2)r14.ww;
                  r28.y = (uint)r15.w;
                  r29.xy = r22.xy * r28.zy + float2(0.5,0.5);
                  r29.zw = float2(-0.5,-0.5) + r28.zy;
                  r29.xy = min(r29.xy, r29.zw);
                  r30.x = (uint)r16.w;
                  r30.y = (uint)r20.x;
                  r29.xy = r30.xy + r29.xy;
                  r29.xy = invMaskTexSizes.xy * r29.xy;
                  r29.z = (uint)r20.w;
                  r30.xyz = invMaskTexSizes.xyx * r26.zyz;
                  r30.xyz = r30.xyz * r28.xyz;
                  r31.xyz = invMaskTexSizes.xyx * r27.zyz;
                  r28.xyz = r31.xyz * r28.xyz;
                  r16.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                } else {
                  r17.w = cmp((int)r22.w == 4);
                  if (r17.w != 0) {
                    r17.w = (int)r21.y & 4095;
                    if (12 == 0) r20.x = 0; else if (12+12 < 32) {                     r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                    } else r20.x = (uint)r21.y >> 12;
                    if (10 == 0) r20.w = 0; else if (10+20 < 32) {                     r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                    } else r20.w = (uint)r21.w >> 20;
                    r28.xz = (uint2)r14.ww;
                    r28.y = (uint)r15.w;
                    r22.zw = r22.xy * r28.zy + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r28.zy;
                    r22.zw = min(r29.xy, r22.zw);
                    r29.x = (uint)r17.w;
                    r29.yz = (uint2)r20.xw;
                    r22.zw = r29.xy + r22.zw;
                    r29.xy = invBcTexSizes.xy * r22.zw;
                    r30.xyz = invBcTexSizes.xyx * r26.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invBcTexSizes.xyx * r27.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r16.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                  } else {
                    r17.w = (int)r21.y & 4095;
                    if (12 == 0) r20.x = 0; else if (12+12 < 32) {                     r20.x = (uint)r21.y << (32-(12 + 12)); r20.x = (uint)r20.x >> (32-12);                    } else r20.x = (uint)r21.y >> 12;
                    if (10 == 0) r20.w = 0; else if (10+20 < 32) {                     r20.w = (uint)r21.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                    } else r20.w = (uint)r21.w >> 20;
                    r28.xz = (uint2)r14.ww;
                    r28.y = (uint)r15.w;
                    r22.zw = r22.xy * r28.zy + float2(0.5,0.5);
                    r29.xy = float2(-0.5,-0.5) + r28.zy;
                    r22.zw = min(r29.xy, r22.zw);
                    r29.x = (uint)r17.w;
                    r29.yz = (uint2)r20.xw;
                    r22.zw = r29.xy + r22.zw;
                    r29.xy = invBcTexSizes.zw * r22.zw;
                    r30.xyz = invBcTexSizes.zwz * r26.zyz;
                    r30.xyz = r30.xyz * r28.xyz;
                    r31.xyz = invBcTexSizes.zwz * r27.zyz;
                    r28.xyz = r31.xyz * r28.xyz;
                    r16.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r29.xyz, r30.x, r28.x).x;
                  }
                }
                r28.xyz = r16.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r14.w = saturate(1 + -r16.w);
                r19.xyz = r19.xyz * r14.www;
              } else {
                r28.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r20.xy = (uint2)r20.zy >> int2(16,16);
              if (r20.x != 0) {
                r14.w = cmp((int)r20.x == 2);
                if (r14.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(112), t36.xxxx
                r12.z = samp0[]..swiz;
                  if (4 == 0) r20.z = 0; else if (4+24 < 32) {                   r20.z = (uint)r21.z << (32-(4 + 24)); r20.z = (uint)r20.z >> (32-4);                  } else r20.z = (uint)r21.z >> 24;
                  if (12 == 0) r20.w = 0; else if (12+12 < 32) {                   r20.w = (uint)r21.z << (32-(12 + 12)); r20.w = (uint)r20.w >> (32-12);                  } else r20.w = (uint)r21.z >> 12;
                  r14.w = 1 << (int)r20.z;
                  r15.w = (uint)r21.z >> 28;
                  r15.w = 1 << (int)r15.w;
                  r16.w = (int)r21.z & 4095;
                  r12.z = (int)r12.z & 1023;
                  r29.xz = (uint2)r14.ww;
                  r29.y = (uint)r15.w;
                  r21.yz = r22.xy * r29.zy + float2(0.5,0.5);
                  r22.zw = float2(-0.5,-0.5) + r29.zy;
                  r21.yz = min(r22.zw, r21.yz);
                  r30.x = (uint)r16.w;
                  r30.y = (uint)r20.w;
                  r20.zw = r30.xy + r21.yz;
                  r30.xy = invMaskTexSizes.xy * r20.zw;
                  r30.z = (uint)r12.z;
                  r31.xyz = invMaskTexSizes.xyx * r26.zyz;
                  r31.xyz = r31.xyz * r29.xyz;
                  r32.xyz = invMaskTexSizes.xyx * r27.zyz;
                  r29.xyz = r32.xyz * r29.xyz;
                  r12.z = materialTexMask.SampleGrad(samplerLinearClamp_s, r30.xyz, r31.z, r29.z).x;
                } else {
                  r14.w = cmp((int)r20.x == 6);
                  r12.z = r14.w ? 0 : 1;
                }
              } else {
                r12.z = 1;
              }
              r12.z = saturate(0.764705896 * r12.z);
              if (r20.y != 0) {
                r14.w = cmp((int)r20.y == 3);
                if (r14.w != 0) {
                  if (4 == 0) r20.x = 0; else if (4+24 < 32) {                   r20.x = (uint)r21.x << (32-(4 + 24)); r20.x = (uint)r20.x >> (32-4);                  } else r20.x = (uint)r21.x >> 24;
                  if (12 == 0) r20.y = 0; else if (12+12 < 32) {                   r20.y = (uint)r21.x << (32-(12 + 12)); r20.y = (uint)r20.y >> (32-12);                  } else r20.y = (uint)r21.x >> 12;
                  if (10 == 0) r20.z = 0; else if (10+10 < 32) {                   r20.z = (uint)r21.w << (32-(10 + 10)); r20.z = (uint)r20.z >> (32-10);                  } else r20.z = (uint)r21.w >> 10;
                  r14.w = 1 << (int)r20.x;
                  r15.w = (uint)r21.x >> 28;
                  r15.w = 1 << (int)r15.w;
                  r16.w = (int)r21.x & 4095;
                  r21.xz = (uint2)r14.ww;
                  r21.y = (uint)r15.w;
                  r20.xw = r22.xy * r21.xy + float2(0.5,0.5);
                  r22.xy = float2(-0.5,-0.5) + r21.zy;
                  r20.xw = min(r22.xy, r20.xw);
                  r22.x = (uint)r16.w;
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
                r14.w = dot(r20.xy, r20.xy);
                r14.w = 1 + -r14.w;
                r14.w = max(0, r14.w);
                r14.w = sqrt(r14.w);
                r15.w = r20.z * r20.z;
                r15.w = 0.333333343 * r15.w;
                r15.w = min(1, r15.w);
                r16.w = dot(r25.xyz, r25.xyz);
                r16.w = rsqrt(r16.w);
                r21.xyz = r25.xyz * r16.www;
                r16.w = dot(-r24.xyz, -r24.xyz);
                r16.w = rsqrt(r16.w);
                r22.xyz = -r24.xyz * r16.www;
                r23.xyz = r23.xyz * r3.yyy;
                r21.xyz = r21.xyz * r3.yyy;
                r22.xyz = r22.xyz * r3.yyy;
                r16.w = -17 * r12.z;
                r16.w = exp2(r16.w);
                r15.w = r16.w + r15.w;
                r15.w = log2(r15.w);
                r15.w = -0.0588235296 * r15.w;
                r12.z = max(0, r15.w);
                r20.yzw = r22.xyz * r20.yyy;
                r20.xyz = r21.xyz * r20.xxx + r20.yzw;
                r20.xyz = r23.xyz * r14.www + r20.xyz;
                r14.w = dot(r20.xyz, r20.xyz);
                r14.w = rsqrt(r14.w);
                r20.xyz = r20.xyz * r14.www;
                r14.w = 1 + -r12.w;
                r21.xyz = r17.xyz * r14.www;
                r17.xyz = r20.xyz * r12.www + r21.xyz;
              }
              r14.w = 1 + -r12.w;
              r20.xyz = r14.www * r13.xyz;
              r13.xyz = r19.xyz * r12.www + r20.xyz;
              r19.xyz = r18.xyz * r14.www;
              r18.xyz = r28.xyz * r12.www + r19.xyz;
              r8.w = r8.w * r14.w + r12.w;
              r14.w = r14.w * r9.w;
              r9.w = r12.z * r12.w + r14.w;
            }
          }
        }
      }
    }
    r14.xyz = r13.xyz;
    r15.xyz = r17.xyz;
    r16.xyz = r18.xyz;
    r4.w = r8.w;
    r5.w = r9.w;
    r6.w = (int)r6.w + 32;
  }
  r4.w = saturate(r4.w);
  r0.y = 1 + -r4.w;
  r2.xyz = r2.xyz * r0.yyy + r14.xyz;
  r0.z = r0.w * r0.y + r4.w;
  r3.xyz = r3.xzw * r0.yyy + r15.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r8.y = r1.w * r0.y + r5.w;
  r9.xyz = r0.yyy * float3(0.0399999991,0.0399999991,0.0399999991) + r16.xyz;
  r0.w = cmp(0.5 < uvMotionToggle1);
  if (r0.w != 0) {
    r0.w = rowCount * columnCount;
    r1.w = imageTime * r0.w;
    r2.w = gameTime.w * r1.w;
    r2.w = cmp(r2.w >= -r2.w);
    r2.w = r2.w ? r1.w : -r1.w;
    r4.w = 1 / r2.w;
    r4.w = gameTime.w * r4.w;
    r4.w = frac(r4.w);
    r2.w = r4.w * r2.w;
    r1.w = r2.w / r1.w;
    r0.w = r1.w * r0.w;
    r0.w = round(r0.w);
    r1.w = r0.w / columnCount;
    r2.w = columnCount * r0.w;
    r2.w = cmp(r2.w >= -r2.w);
    r2.w = r2.w ? columnCount : -columnCount;
    r4.w = 1 / r2.w;
    r0.w = r4.w * r0.w;
    r0.w = frac(r0.w);
    r0.w = r2.w * r0.w;
    r0.w = trunc(r0.w);
    r0.w = r1.x + r0.w;
    r12.x = r0.w / columnCount;
    r0.w = trunc(r1.w);
    r0.w = r1.y + r0.w;
    r12.y = r0.w / rowCount;
  } else {
    r0.w = dot(-v7.xyz, -v7.xyz);
    r0.w = rsqrt(r0.w);
    r13.xyz = -v7.xyz * r0.www;
    r14.x = dot(r13.xyz, r5.xyz);
    r14.y = dot(r13.xyz, r6.xyz);
    r0.w = dot(r13.xyz, r4.xyz);
    r1.w = cmp(0 < r0.w);
    r7.zw = -r14.xy / r0.ww;
    r7.zw = r1.ww ? r7.zw : 0;
    r8.zw = float2(-0.5,-0.5) + r1.xy;
    r0.w = 9.99999975e-06 + layerDepth;
    r7.zw = r7.zw * r0.ww;
    r7.zw = scaleUVs.xy * r7.zw;
    r7.zw = r8.zw * scaleUVs.xy + r7.zw;
    r7.zw = offsetUVs.xy * scaleUVs.xy + r7.zw;
    r0.w = rotateUVs.y * gameTime.w + 1;
    r0.w = rotateUVs.x * r0.w;
    r0.w = 0.0174532924 * r0.w;
    sincos(r0.w, r13.x, r14.x);
    r14.y = r14.x;
    r14.z = r13.x;
    r15.x = dot(r14.yz, r7.zw);
    r14.x = -r13.x;
    r15.y = dot(r14.xy, r7.zw);
    r7.zw = gameTime.ww * scrollUVs.xy;
    r7.zw = r7.zw * scaleUVs.xy + r15.xy;
    r0.w = gameTime.w * zoomRate;
    r0.w = cos(r0.w);
    r0.w = r0.w * 0.5 + 0.5;
    r0.w = 1 + -r0.w;
    r1.w = zoomUVs.y + -zoomUVs.x;
    r0.w = r0.w * r1.w + zoomUVs.x;
    r7.zw = r7.zw / r0.ww;
    r7.zw = float2(0.5,0.5) + r7.zw;
    r8.zw = saturate(r7.zw);
    r12.xy = clampU ? r8.zw : r7.zw;
  }
  r12.xyzw = emissiveMap1.Sample(colorSampler_s, r12.xy).xyzw;
  r12.xyzw = emissiveTint1.xyzw * r12.xyzw;
  r12.xyz = r12.xyz * r12.www;
  r0.w = v3.x + v3.y;
  r0.w = v3.z + r0.w;
  r1.w = flickerSeed.y + r0.w;
  r1.w = frac(r1.w);
  r13.y = gameTime.w * flickerSpeed + r1.w;
  r13.x = flickerSeed.x;
  r1.w = flickerLookupMap.SampleLevel(lookupSampler_s, r13.xy, 0).x;
  r1.w = log2(abs(r1.w));
  r1.w = flickerPower * r1.w;
  r1.w = exp2(r1.w);
  r2.w = flickerRange.y + -flickerRange.x;
  r1.w = r1.w * r2.w + flickerRange.x;
  r12.xyz = r12.xyz * r1.www;
  r1.w = cmp(0.5 < uvMotionToggle2);
  if (r1.w != 0) {
    r1.w = columnCount2 * rowCount2;
    r2.w = imageTime2 * r1.w;
    r4.w = gameTime.w * r2.w;
    r4.w = cmp(r4.w >= -r4.w);
    r4.w = r4.w ? r2.w : -r2.w;
    r5.w = 1 / r4.w;
    r5.w = gameTime.w * r5.w;
    r5.w = frac(r5.w);
    r4.w = r5.w * r4.w;
    r2.w = r4.w / r2.w;
    r1.w = r2.w * r1.w;
    r1.w = round(r1.w);
    r2.w = r1.w / columnCount2;
    r4.w = columnCount2 * r1.w;
    r4.w = cmp(r4.w >= -r4.w);
    r4.w = r4.w ? columnCount2 : -columnCount2;
    r5.w = 1 / r4.w;
    r1.w = r5.w * r1.w;
    r1.w = frac(r1.w);
    r1.w = r4.w * r1.w;
    r1.w = trunc(r1.w);
    r1.w = r1.x + r1.w;
    r13.x = r1.w / columnCount2;
    r1.w = trunc(r2.w);
    r1.w = r1.y + r1.w;
    r13.y = r1.w / rowCount2;
  } else {
    r1.w = dot(-v7.xyz, -v7.xyz);
    r1.w = rsqrt(r1.w);
    r14.xyz = -v7.xyz * r1.www;
    r5.x = dot(r14.xyz, r5.xyz);
    r5.y = dot(r14.xyz, r6.xyz);
    r1.w = dot(r14.xyz, r4.xyz);
    r2.w = cmp(0 < r1.w);
    r4.xy = -r5.xy / r1.ww;
    r4.xy = r2.ww ? r4.xy : 0;
    r1.xy = float2(-0.5,-0.5) + r1.xy;
    r1.w = 9.99999975e-06 + layer2Depth;
    r4.xy = r4.xy * r1.ww;
    r4.xy = scaleUVs2.xy * r4.xy;
    r1.xy = r1.xy * scaleUVs2.xy + r4.xy;
    r1.xy = offsetUVs2.xy * scaleUVs2.xy + r1.xy;
    r1.w = rotateUVs2.y * gameTime.w + 1;
    r1.w = rotateUVs2.x * r1.w;
    r1.w = 0.0174532924 * r1.w;
    sincos(r1.w, r4.x, r5.x);
    r5.y = r5.x;
    r5.z = r4.x;
    r6.x = dot(r5.yz, r1.xy);
    r5.x = -r4.x;
    r6.y = dot(r5.xy, r1.xy);
    r1.xy = gameTime.ww * scrollUVs2.xy;
    r1.xy = r1.xy * scaleUVs2.xy + r6.xy;
    r1.w = gameTime.w * zoomRate2;
    r1.w = cos(r1.w);
    r1.w = r1.w * 0.5 + 0.5;
    r1.w = 1 + -r1.w;
    r2.w = zoomUVs2.y + -zoomUVs2.x;
    r1.w = r1.w * r2.w + zoomUVs2.x;
    r1.xy = r1.xy / r1.ww;
    r1.xy = float2(0.5,0.5) + r1.xy;
    r4.xy = saturate(r1.xy);
    r13.x = clampU2 ? r4.x : r1.x;
    r13.y = clampV2 ? r4.y : r1.y;
  }
  r4.xyzw = emissiveMap2.Sample(colorSampler_s, r13.xy).xyzw;
  r1.xyw = emissiveTint2.xyz * r4.xyz;
  r2.w = hdrScale * r4.w;
  r1.xyw = r2.www * r1.xyw;
  r0.w = clampV2 + r0.w;
  r0.w = frac(r0.w);
  r4.y = gameTime.w * clampV2 + r0.w;
  r4.x = clampV2;
  r0.w = flickerLookupMap.SampleLevel(lookupSampler_s, r4.xy, 0).x;
  r0.w = log2(abs(r0.w));
  r0.w = flickerPower2 * r0.w;
  r0.w = exp2(r0.w);
  r2.w = flickerRange2.y + -flickerRange2.x;
  r0.w = r0.w * r2.w + flickerRange2.x;
  r1.xyw = r1.xyw * r0.www;
  r0.w = 1 + -r4.w;
  r1.xyw = r12.xyz * r0.www + r1.xyw;
  r4.xyz = r1.xyw * r0.yyy;
  r0.y = dot(-v7.xyz, -v7.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyw = -v7.xyz * r0.yyy;
  r0.w = cmp(isDepthHack != 0);
  r5.xy = (uint2)r7.xy;
  r2.w = dot(r5.yx, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r6.x, r7.x);
  r2.w = dot(r5.xy, float2(0.0671105608,0.00583714992));
  r2.w = frac(r2.w);
  r2.w = 52.9829178 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * 6.28318548 + gameTick.w;
  sincos(r2.w, r5.x, r12.x);
  r8.x = saturate(dot(r3.xyz, r1.xyw));
  r2.w = dot(-r1.xyw, r3.xyz);
  r2.w = r2.w + r2.w;
  r13.xyz = r3.xyz * -r2.www + -r1.xyw;
  r2.w = 17 * r8.y;
  r2.w = exp2(r2.w);
  r2.w = 2 + r2.w;
  r2.w = 2 / r2.w;
  r5.y = sqrt(r2.w);
  r5.z = 1 + -r8.y;
  r5.w = 5 * r5.z;
  r6.z = r5.z * 5 + -2.5;
  r6.z = saturate(0.400000006 * r6.z);
  r6.z = 100 * r6.z;
  r8.zw = -r5.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r6.w = exp2(r8.z);
  r6.w = r8.x * r6.w;
  r6.w = 9.1368103 * r6.w;
  r7.w = r5.w * r5.z;
  r7.w = -r7.w * 2.0159049 + r8.w;
  r7.w = exp2(r7.w);
  r7.w = r8.x * r7.w;
  r7.w = 9.70808983 * r7.w;
  r6.w = max(r7.w, r6.w);
  r6.w = max(1.26815999, r6.w);
  r7.w = numRefProbes + -numOverrideProbes;
  r8.z = (int)r7.w & -32;
  r8.w = (int)r7.w + (int)-r8.z;
  r9.w = numRefProbes & -32;
  r11.w = (int)-r9.w + numRefProbes;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.x = 1;
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r12.y = r8.z;
  while (true) {
    r12.z = cmp((uint)r12.y >= numRefProbes);
    if (r12.z != 0) break;
    r14.z = (uint)r12.y >> 5;
    r15.xyz = (int3)r11.xyz + (int3)r14.xyz;
    r12.z = visibleProbes.Load(r15.xyzw).x;
    r12.w = cmp((int)r8.z == (int)r12.y);
    bitmask.z = ((~(-1 << r8.w)) << 0) & 0xffffffff;  r14.z = (((uint)0 << 0) & bitmask.z) | ((uint)r12.z & ~bitmask.z);
    r12.z = r12.w ? r14.z : r12.z;
    r12.w = cmp((int)r9.w == (int)r12.y);
    if (r11.w == 0) r14.z = 0; else if (r11.w+0 < 32) {     r14.z = (uint)r12.z << (32-(r11.w + 0)); r14.z = (uint)r14.z >> (32-r11.w);    } else r14.z = (uint)r12.z >> 0;
    r12.z = r12.w ? r14.z : r12.z;
    r12.w = (int)r12.y + numLights;
    r23.xyzw = r21.xyzw;
    r24.xyz = r22.yzw;
    r14.z = r12.z;
    while (true) {
      if (r14.z == 0) break;
      r14.w = firstbitlow((uint)r14.z);
      r15.x = 1 << (int)r14.w;
      r15.y = (int)r14.z & (int)r15.x;
      if (r15.y != 0) {
        r14.z = (int)r14.z ^ (int)r15.x;
        r15.x = (int)r12.w + (int)r14.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r15.x, l(0), t11.xyzw
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
      r25.z = samp0[]..swiz;
      r25.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r15.x, l(16), t11.xyxx
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
        r25.xyz = -v7.xyz + r25.xyz;
        r15.z = r25.w;
        r15.xyz = cmp(abs(r25.xyz) < r15.zxy);
        r15.x = r15.y ? r15.x : 0;
        r15.x = r15.z ? r15.x : 0;
        if (r15.x != 0) {
          r14.w = (int)r12.y + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r14.w, l(0), t15.wxyz
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r15.xy, r14.w, l(96), t15.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(116), t15.zwxy
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
          r27.xyz = v7.xyz + -r25.yzw;
          r15.z = (int)r26.w & 0x0000ffff;
          if (6 == 0) r16.w = 0; else if (6+25 < 32) {           r16.w = (uint)r26.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);          } else r16.w = (uint)r26.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r15.z, l(0), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r15.z, l(16), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.z, l(32), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.z, l(48), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.z, l(64), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.z, l(80), t16.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
          r17.w = dot(r28.xyz, r27.xyz);
          r17.w = saturate(r17.w + r28.w);
          r18.z = dot(r29.xyz, r27.xyz);
          r18.z = saturate(r18.z + r29.w);
          r17.w = r18.z * r17.w;
          r18.z = dot(r30.xyz, r27.xyz);
          r18.z = saturate(r18.z + r30.w);
          r17.w = r18.z * r17.w;
          r18.z = dot(r31.xyz, r27.xyz);
          r18.z = saturate(r18.z + r31.w);
          r17.w = r18.z * r17.w;
          r18.z = dot(r32.xyz, r27.xyz);
          r18.z = saturate(r18.z + r32.w);
          r17.w = r18.z * r17.w;
          r18.z = dot(r33.xyz, r27.xyz);
          r18.z = saturate(r18.z + r33.w);
          r16.x = r18.z * r17.w;
          r17.w = r15.x ? 0.000000 : 0;
          r18.zw = r17.ww ? r16.xy : r16.zx;
          r16.x = r15.x;
          r28.xy = r18.zw;
          r17.w = 1;
          while (true) {
            r19.w = cmp((int)r17.w >= (int)r16.w);
            if (r19.w != 0) break;
            r19.w = (int)r15.z + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r19.w, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r19.w = dot(r29.xyz, r27.xyz);
            r19.w = saturate(r19.w + r29.w);
            r19.w = r28.x * r19.w;
            r20.w = dot(r30.xyz, r27.xyz);
            r20.w = saturate(r20.w + r30.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r31.xyz, r27.xyz);
            r20.w = saturate(r20.w + r31.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r32.xyz, r27.xyz);
            r20.w = saturate(r20.w + r32.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r33.xyz, r27.xyz);
            r20.w = saturate(r20.w + r33.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r34.xyz, r27.xyz);
            r20.w = saturate(r20.w + r34.w);
            r28.x = r20.w * r19.w;
            r25.w = (uint)r16.x >> 2;
            if (1 == 0) r27.w = 0; else if (1+2 < 32) {             r27.w = (uint)r16.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);            } else r27.w = (uint)r16.x >> 2;
            r28.z = (int)r25.w & 2;
            r28.w = max(r28.y, r28.x);
            r19.w = -r19.w * r20.w + 1;
            r19.w = r28.y * r19.w;
            r18.y = r28.z ? r19.w : r28.w;
            r28.xy = r27.ww ? r28.xy : r18.xy;
            r17.w = (int)r17.w + 1;
            r16.x = r25.w;
          }
          r28.y = saturate(r28.y);
          r15.x = r28.y * r15.y;
          r15.z = cmp(0 < r15.x);
          if (r15.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(16), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(32), t15.yxwz
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(48), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.w, l(64), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.w, l(80), t15.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.w, l(132), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.w, l(148), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.w, l(164), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.w, l(180), t15.zwxy
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.w, l(196), t15.xyzw
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r14.w, l(212), t15.xyxx
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
            r24.z = r28.y * r15.y + r24.z;
            r14.w = r15.x * r26.z;
            r26.z = r34.z;
            r15.x = dot(r13.xyz, r26.xyz);
            r15.y = dot(r27.xyz, r26.xyz);
            r15.y = r15.y + -r34.w;
            r15.z = cmp(r15.y >= 0);
            r15.y = max(abs(r15.y), r6.z);
            r15.y = r15.z ? r15.y : -r15.y;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.y / r15.x;
            r15.x = min(131072, abs(r15.x));
            r34.z = r35.z;
            r15.y = dot(r13.xyz, r34.xyz);
            r15.z = dot(r27.xyz, r34.xyz);
            r15.z = r15.z + -r35.w;
            r16.x = cmp(r15.z >= 0);
            r15.z = max(abs(r15.z), r6.z);
            r15.z = r16.x ? r15.z : -r15.z;
            r15.y = max(1.00000001e-07, -r15.y);
            r15.y = r15.z / r15.y;
            r15.x = min(r15.x, abs(r15.y));
            r35.z = r36.z;
            r15.y = dot(r13.xyz, r35.xyz);
            r15.z = dot(r27.xyz, r35.xyz);
            r15.z = r15.z + -r36.w;
            r16.x = cmp(r15.z >= 0);
            r15.z = max(abs(r15.z), r6.z);
            r15.z = r16.x ? r15.z : -r15.z;
            r15.y = max(1.00000001e-07, -r15.y);
            r15.y = r15.z / r15.y;
            r15.x = min(r15.x, abs(r15.y));
            r36.z = r37.z;
            r15.y = dot(r13.xyz, r36.xyz);
            r15.z = dot(r27.xyz, r36.xyz);
            r15.z = r15.z + -r37.w;
            r16.x = cmp(r15.z >= 0);
            r15.z = max(abs(r15.z), r6.z);
            r15.z = r16.x ? r15.z : -r15.z;
            r15.y = max(1.00000001e-07, -r15.y);
            r15.y = r15.z / r15.y;
            r15.x = min(r15.x, abs(r15.y));
            r37.z = r38.x;
            r15.y = dot(r13.xyz, r37.xyz);
            r15.z = dot(r27.xyz, r37.xyz);
            r15.z = r15.z + -r38.y;
            r16.x = cmp(r15.z >= 0);
            r15.z = max(abs(r15.z), r6.z);
            r15.z = r16.x ? r15.z : -r15.z;
            r15.y = max(1.00000001e-07, -r15.y);
            r15.y = r15.z / r15.y;
            r15.x = min(r15.x, abs(r15.y));
            r39.zw = r38.zw;
            r15.y = dot(r13.zxy, r39.xzw);
            r15.z = dot(r27.zxy, r39.xzw);
            r15.z = r15.z + -r39.y;
            r16.x = cmp(r15.z >= 0);
            r15.z = max(abs(r15.z), r6.z);
            r15.z = r16.x ? r15.z : -r15.z;
            r15.y = max(1.00000001e-07, -r15.y);
            r15.y = r15.z / r15.y;
            r15.x = min(r15.x, abs(r15.y));
            r26.x = r31.w;
            r26.yz = r32.zw;
            r18.yzw = r26.xyz + r27.xyz;
            r18.yzw = r13.xyz * r15.xxx + r18.yzw;
            r15.y = dot(r18.yzw, r18.yzw);
            r15.y = sqrt(r15.y);
            r15.x = r15.x / r15.y;
            r15.x = r15.x + r15.x;
            r15.x = sqrt(r15.x);
            r15.x = r5.z * 5 + r15.x;
            r15.x = -0.844799995 + r15.x;
            r25.y = r29.z;
            r25.z = r30.x;
            r34.x = dot(r18.yzw, r25.xyz);
            r26.xy = r29.xw;
            r26.z = r30.w;
            r34.y = dot(r18.yzw, r26.xyz);
            r30.x = r29.y;
            r34.z = dot(r18.yzw, r30.xyz);
            if (9 == 0) r15.y = 0; else if (9+16 < 32) {             r15.y = (uint)r26.w << (32-(9 + 16)); r15.y = (uint)r15.y >> (32-9);            } else r15.y = (uint)r26.w >> 16;
            r34.w = (uint)r15.y;
            r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r15.x).xyz;
            r29.x = dot(r27.xyz, r25.xyz);
            r29.y = dot(r27.xyz, r26.xyz);
            r29.z = dot(r27.xyz, r30.xyz);
            r18.yzw = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
            r32.z = r33.x;
            r18.yzw = r18.yzw * r32.xyz + r33.yzw;
            r34.x = dot(r3.xyz, r25.xyz);
            r34.y = dot(r3.xyz, r26.xyz);
            r34.z = dot(r3.xyz, r30.xyz);
            r25.xyz = cmp(float3(0,0,0) < r34.xyz);
            r17.z = r25.x ? 0 : 0.5;
            r26.xyz = r18.yzw + r17.xyz;
            r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
            r27.xyz = r34.xyz * r34.xyz;
            r27.xyz = r27.xyz * r14.www;
            r19.z = r25.y ? 0 : 0.5;
            r25.xyw = r19.xyz + r18.yzw;
            r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
            r25.xyw = r25.xyw * r27.yyy;
            r25.xyw = r26.xyz * r27.xxx + r25.xyw;
            r20.z = r25.z ? 0 : 0.5;
            r18.yzw = r20.xyz + r18.yzw;
            r18.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r18.yzw, 0).xyz;
            r18.yzw = r18.yzw * r27.zzz + r25.xyw;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
            r26.xyz = r25.xyz * r18.yzw;
            r16.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r23.xyz = r18.yzw * r25.xyz + r23.xyz;
            r16.w = r16.x * r6.w;
            r15.xyz = r15.xyz * r14.www;
            r14.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r14.w = r6.w * r16.x + r14.w;
            r14.w = r16.w / r14.w;
            r25.x = r23.w;
            r25.yz = r24.xy;
            r24.xyw = r15.yzx * r14.www + r25.yzx;
            r23.w = r24.w;
          }
        }
      }
    }
    r21.xyzw = r23.xyzw;
    r22.yzw = r24.xyz;
    r12.y = (int)r12.y + 32;
  }
  r9.w = cmp(r22.w < 1);
  if (r9.w != 0) {
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r20.xy = float2(0,0);
    r23.x = r21.w;
    r23.yzw = r22.yzw;
    r12.yzw = r21.xyz;
    r9.w = r22.w;
    r11.w = 0;
    while (true) {
      r14.w = cmp((uint)r11.w >= (uint)r7.w);
      if (r14.w != 0) break;
      r14.z = (uint)r11.w >> 5;
      r15.xyz = (int3)r11.xyz + (int3)r14.xyz;
      r14.z = visibleProbes.Load(r15.xyzw).x;
      r14.w = cmp((int)r8.z == (int)r11.w);
      if (r8.w == 0) r15.x = 0; else if (r8.w+0 < 32) {       r15.x = (uint)r14.z << (32-(r8.w + 0)); r15.x = (uint)r15.x >> (32-r8.w);      } else r15.x = (uint)r14.z >> 0;
      r14.z = r14.w ? r15.x : r14.z;
      r14.w = (int)r11.w + numLights;
      r24.xyzw = r23.xyzw;
      r15.xyz = r12.yzw;
      r16.w = r9.w;
      r17.w = r14.z;
      while (true) {
        if (r17.w == 0) break;
        r18.z = firstbitlow((uint)r17.w);
        r18.w = 1 << (int)r18.z;
        r19.w = (int)r17.w & (int)r18.w;
        if (r19.w != 0) {
          r17.w = (int)r17.w ^ (int)r18.w;
          r18.w = (int)r14.w + (int)r18.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r18.w, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r18.w, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v7.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r18.w = r25.y ? r25.x : 0;
          r18.w = r25.z ? r18.w : 0;
          if (r18.w != 0) {
            r18.z = (int)r11.w + (int)r18.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r18.z, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xy, r18.z, l(96), t15.xyxx
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r18.z, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r28.xyz = v7.xyz + -r25.yzw;
            r18.w = (int)r27.w & 0x0000ffff;
            if (6 == 0) r19.w = 0; else if (6+25 < 32) {             r19.w = (uint)r27.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);            } else r19.w = (uint)r27.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r18.w, l(0), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(16), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(32), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(48), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(64), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(80), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
            r20.w = dot(r29.xyz, r28.xyz);
            r20.w = saturate(r20.w + r29.w);
            r25.w = dot(r30.xyz, r28.xyz);
            r25.w = saturate(r25.w + r30.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r31.xyz, r28.xyz);
            r25.w = saturate(r25.w + r31.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r32.xyz, r28.xyz);
            r25.w = saturate(r25.w + r32.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r33.xyz, r28.xyz);
            r25.w = saturate(r25.w + r33.w);
            r20.w = r25.w * r20.w;
            r25.w = dot(r34.xyz, r28.xyz);
            r25.w = saturate(r25.w + r34.w);
            r16.x = r25.w * r20.w;
            r20.w = (int)r26.x & 1;
            r26.zw = r20.ww ? r16.xy : r16.zx;
            r16.x = r26.x;
            r29.xy = r26.zw;
            r20.w = 1;
            while (true) {
              r25.w = cmp((int)r20.w >= (int)r19.w);
              if (r25.w != 0) break;
              r25.w = (int)r18.w + (int)r20.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r25.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r25.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r25.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r25.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r25.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r25.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r25.w = dot(r30.xyz, r28.xyz);
              r25.w = saturate(r25.w + r30.w);
              r25.w = r29.x * r25.w;
              r28.w = dot(r31.xyz, r28.xyz);
              r28.w = saturate(r28.w + r31.w);
              r25.w = r28.w * r25.w;
              r28.w = dot(r32.xyz, r28.xyz);
              r28.w = saturate(r28.w + r32.w);
              r25.w = r28.w * r25.w;
              r28.w = dot(r33.xyz, r28.xyz);
              r28.w = saturate(r28.w + r33.w);
              r25.w = r28.w * r25.w;
              r28.w = dot(r34.xyz, r28.xyz);
              r28.w = saturate(r28.w + r34.w);
              r25.w = r28.w * r25.w;
              r28.w = dot(r35.xyz, r28.xyz);
              r28.w = saturate(r28.w + r35.w);
              r29.x = r28.w * r25.w;
              r29.z = (uint)r16.x >> 2;
              if (1 == 0) r29.w = 0; else if (1+2 < 32) {               r29.w = (uint)r16.x << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);              } else r29.w = (uint)r16.x >> 2;
              r30.x = (int)r29.z & 2;
              r30.y = max(r29.y, r29.x);
              r25.w = -r25.w * r28.w + 1;
              r25.w = r29.y * r25.w;
              r18.y = r30.x ? r25.w : r30.y;
              r29.xy = r29.ww ? r29.xy : r18.xy;
              r20.w = (int)r20.w + 1;
              r16.x = r29.z;
            }
            r16.x = saturate(r29.y + -r16.w);
            r18.y = r16.x * r26.y;
            r18.w = cmp(0 < r18.y);
            if (r18.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r18.z, l(16), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r18.z, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r18.z, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r18.z, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r18.z, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r18.z, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r18.z, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r18.z, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r18.z, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r18.z, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r18.z, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r24.w = r16.x * r26.y + r24.w;
              r16.x = r18.y * r27.z;
              r27.z = r35.z;
              r18.y = dot(r13.xyz, r27.xyz);
              r18.z = dot(r28.xyz, r27.xyz);
              r18.z = r18.z + -r35.w;
              r18.w = cmp(r18.z >= 0);
              r18.z = max(abs(r18.z), r6.z);
              r18.z = r18.w ? r18.z : -r18.z;
              r18.y = max(1.00000001e-07, -r18.y);
              r18.y = r18.z / r18.y;
              r18.y = min(131072, abs(r18.y));
              r35.z = r36.z;
              r18.z = dot(r13.xyz, r35.xyz);
              r18.w = dot(r28.xyz, r35.xyz);
              r18.w = r18.w + -r36.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r6.z);
              r18.w = r19.w ? r18.w : -r18.w;
              r18.z = max(1.00000001e-07, -r18.z);
              r18.z = r18.w / r18.z;
              r18.y = min(r18.y, abs(r18.z));
              r36.z = r37.z;
              r18.z = dot(r13.xyz, r36.xyz);
              r18.w = dot(r28.xyz, r36.xyz);
              r18.w = r18.w + -r37.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r6.z);
              r18.w = r19.w ? r18.w : -r18.w;
              r18.z = max(1.00000001e-07, -r18.z);
              r18.z = r18.w / r18.z;
              r18.y = min(r18.y, abs(r18.z));
              r37.z = r38.z;
              r18.z = dot(r13.xyz, r37.xyz);
              r18.w = dot(r28.xyz, r37.xyz);
              r18.w = r18.w + -r38.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r6.z);
              r18.w = r19.w ? r18.w : -r18.w;
              r18.z = max(1.00000001e-07, -r18.z);
              r18.z = r18.w / r18.z;
              r18.y = min(r18.y, abs(r18.z));
              r38.z = r39.x;
              r18.z = dot(r13.xyz, r38.xyz);
              r18.w = dot(r28.xyz, r38.xyz);
              r18.w = r18.w + -r39.y;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r6.z);
              r18.w = r19.w ? r18.w : -r18.w;
              r18.z = max(1.00000001e-07, -r18.z);
              r18.z = r18.w / r18.z;
              r18.y = min(r18.y, abs(r18.z));
              r40.zw = r39.zw;
              r18.z = dot(r13.zxy, r40.xzw);
              r18.w = dot(r28.zxy, r40.xzw);
              r18.w = r18.w + -r40.y;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r6.z);
              r18.w = r19.w ? r18.w : -r18.w;
              r18.z = max(1.00000001e-07, -r18.z);
              r18.z = r18.w / r18.z;
              r18.y = min(r18.y, abs(r18.z));
              r26.x = r32.w;
              r26.yz = r33.zw;
              r26.xyz = r26.xyz + r28.xyz;
              r26.xyz = r13.xyz * r18.yyy + r26.xyz;
              r18.z = dot(r26.xyz, r26.xyz);
              r18.z = sqrt(r18.z);
              r18.y = r18.y / r18.z;
              r18.y = r18.y + r18.y;
              r18.y = sqrt(r18.y);
              r18.y = r5.z * 5 + r18.y;
              r18.y = -0.844799995 + r18.y;
              r25.y = r30.z;
              r25.z = r31.x;
              r35.x = dot(r26.xyz, r25.xyz);
              r27.xy = r30.xw;
              r27.z = r31.w;
              r35.y = dot(r26.xyz, r27.xyz);
              r31.x = r30.y;
              r35.z = dot(r26.xyz, r31.xyz);
              if (9 == 0) r18.z = 0; else if (9+16 < 32) {               r18.z = (uint)r27.w << (32-(9 + 16)); r18.z = (uint)r18.z >> (32-9);              } else r18.z = (uint)r27.w >> 16;
              r35.w = (uint)r18.z;
              r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r18.y).xyz;
              r26.x = dot(r28.xyz, r25.xyz);
              r26.y = dot(r28.xyz, r27.xyz);
              r26.z = dot(r28.xyz, r31.xyz);
              r26.xyz = saturate(r26.xyz * r32.xyz + float3(0.5,0.5,0.5));
              r33.z = r34.x;
              r26.xyz = r26.xyz * r33.xyz + r34.yzw;
              r35.x = dot(r3.xyz, r25.xyz);
              r35.y = dot(r3.xyz, r27.xyz);
              r35.z = dot(r3.xyz, r31.xyz);
              r25.xyz = cmp(float3(0,0,0) < r35.xyz);
              r17.z = r25.x ? 0 : 0.5;
              r27.xyz = r26.xyz + r17.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r28.xyz = r35.xyz * r35.xyz;
              r28.xyz = r28.xyz * r16.xxx;
              r19.z = r25.y ? 0 : 0.5;
              r25.xyw = r26.xyz + r19.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r28.yyy;
              r25.xyw = r27.xyz * r28.xxx + r25.xyw;
              r20.z = r25.z ? 0 : 0.5;
              r26.xyz = r26.xyz + r20.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r25.xyz = r26.xyz * r28.zzz + r25.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r25.xyz;
              r17.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r15.xyz = r25.xyz * r26.xyz + r15.xyz;
              r19.z = r17.z * r6.w;
              r18.yzw = r18.yzw * r16.xxx;
              r16.x = dot(r18.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r16.x = r6.w * r17.z + r16.x;
              r16.x = r19.z / r16.x;
              r24.xyz = r18.yzw * r16.xxx + r24.xyz;
            }
          }
        }
      }
      r23.xyzw = r24.xyzw;
      r12.yzw = r15.xyz;
      r11.w = (int)r11.w + 32;
    }
    r22.xyzw = r23.zxyw;
    r21.xyz = r12.yzw;
    r22.xyzw = r22.yzxw;
  } else {
    r22.x = r21.w;
  }
  r5.z = max(1, r22.w);
  r5.z = rcp(r5.z);
  r22.w = saturate(r22.w);
  r12.yzw = r21.xyz * r5.zzz;
  r14.xyz = r22.xyz * r5.zzz;
  r6.z = cmp(r22.w < 0.99000001);
  if (r6.z != 0) {
    r6.z = 1 + -r22.w;
    r6.w = sunConstants.globalProbeExposure * r6.z;
    r15.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r16.x = globalProbeConstants.data[0].w * r15.x;
    r16.yz = globalProbeConstants.data[1].xy * r15.yz;
    r15.xyz = saturate(float3(0.5,0.5,0.5) + r16.xyz);
    r16.xy = globalProbeConstants.data[1].zw * r15.xy;
    r16.z = globalProbeConstants.data[2].x * r15.z;
    r15.xyz = globalProbeConstants.data[2].yzw + r16.xyz;
    r16.xyz = cmp(float3(0,0,0) < r3.xyz);
    r16.xyz = r16.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r16.w = 0;
    r17.xyz = r16.wwx + r15.xyz;
    r17.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
    r18.xyz = r3.xyz * r3.xyz;
    r18.xyz = r18.xyz * r6.www;
    r19.xyz = r16.wwy + r15.xyz;
    r19.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
    r19.xyz = r19.xyz * r18.yyy;
    r17.xyz = r17.xyz * r18.xxx + r19.xyz;
    r15.xyz = r16.wwz + r15.xyz;
    r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
    r15.xyz = r15.xyz * r18.zzz + r17.xyz;
    r3.w = 0;
    r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r3.xyzw, 6).xyz;
    r15.xyz = r16.xyz * r15.xyz;
    r3.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r12.yzw = r21.xyz * r5.zzz + r15.xyz;
    r13.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r5.w).xyz;
    r5.z = sunConstants.globalProbeExposure * r6.z + -r3.w;
    r3.w = r8.y * r5.z + r3.w;
    r14.xyz = r15.xyz * r3.www + r14.xyz;
  }
  r3.w = r8.x + r1.z;
  r3.w = log2(abs(r3.w));
  r3.w = r5.y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w + r1.z;
  r3.w = saturate(-1 + r3.w);
  r15.xyz = r12.yzw * r1.zzz;
  r5.zw = r8.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.zw, 0).xy;
  r8.yzw = r14.xyz * r3.www;
  r14.xyz = r8.zwy * r5.zzz;
  r8.yzw = r8.yzw * r5.www;
  r1.z = sqrt(r5.y);
  r1.z = r1.z * 0.5 + 0.5;
  r1.z = r1.z * r1.z;
  r3.w = 0.5 * r1.z;
  r1.z = -r1.z * 0.5 + 1;
  r5.z = r8.x * r1.z + r3.w;
  r1.z = r5.z * r1.z;
  r3.w = r5.z * r3.w;
  r5.z = dot(r3.xyz, sunConstants.wldDir.xyz);
  r5.w = saturate(r5.z);
  r6.z = cmp(0 >= r5.w);
  if (r6.z != 0) {
    r6.w = 0;
  }
  if (r6.z == 0) {
    r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r12.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r12.yzw;
    r12.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r12.yzw;
    r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r12.yzw;
    r6.z = -sunConstants.splitDepthOffset + r12.w;
    r6.z = -r6.z * 6.10351563e-05 + 1;
    r7.w = saturate(r6.z);
    r7.w = cmp(r6.z == r7.w);
    if (r7.w != 0) {
      r7.w = 0;
      r9.w = 0;
      while (true) {
        r11.w = cmp(r7.w >= 3);
        if (r11.w != 0) break;
        r11.w = (uint)r7.w;
        r16.xy = -sunConstants.splitPinTransform[r11.w].xy + r12.yz;
        r13.w = max(abs(r16.x), abs(r16.y));
        r9.w = sunConstants.splitPinTransform[r11.w].z * r13.w;
        r11.w = cmp(r9.w < 1);
        if (r11.w != 0) {
          break;
        }
        r7.w = 1 + r7.w;
        r9.w = 0;
      }
    } else {
      r7.w = 3;
      r9.w = 0;
    }
    r11.w = cmp(r7.w >= 3);
    if (r11.w != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r12.yzy * r17.xyz + r16.yzy;
      r17.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r16.xyz = max(float3(0,0,0), r16.xyz);
      r16.xyz = min(r16.xyz, r17.xyz);
      r17.xy = sunConstants.sstLightingConstants.coordScale * r16.zy;
      r17.xy = floor(r17.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r17.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r17.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r13.w, l(0), t23.xxxx
    r16.w = samp0[]..swiz;
      r17.x = (int)r16.w & 0x40000000;
      r17.y = (uint)r16.w << 2;
      if (r17.x == 0) {
        r17.x = (int)r16.w & 0x01ffffff;
        r18.x = (int)r13.w + (int)r17.x;
        r13.w = (uint)r16.w >> 25;
        r13.w = (uint)r13.w;
        r16.xyz = r16.xyz * r13.www;
        r16.xyz = frac(r16.xyz);
        r16.xyz = float3(128,128,128) * r16.xyz;
        r16.xyz = (uint3)r16.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.xz = (uint2)r16.zy >> int2(6,6);
        r13.w = (int)r18.z & 0xc0000000;
        r16.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.w, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r16.w = r17.z ? r18.z : r16.w;
        r17.z = (uint)r16.w >> 13;
        r16.w = r17.x ? r17.z : r16.w;
        r16.w = (int)r16.w & 8191;
        r19.x = (int)r16.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.xzw = r13.www ? r18.xyz : r19.xyz;
        r19.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r16.w = (int)r17.w & 0xc0000000;
        r18.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.w, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r18.w = r20.y ? r17.w : r18.w;
        r19.y = (uint)r18.w >> 13;
        r18.w = r20.x ? r19.y : r18.w;
        r18.w = (int)r18.w & 8191;
        r19.x = (int)r17.x + (int)r18.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.w, r19.x, l(0), t23.xxxx
      r19.w = samp0[]..swiz;
        r17.xzw = r16.www ? r17.xzw : r19.xzw;
        r17.xzw = r13.www ? r18.xyz : r17.xzw;
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r17.z + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
          r16.w = (int)r16.w * 10;
          r13.w = (uint)r13.w >> (uint)r16.w;
          r13.w = (int)r13.w & 1023;
          r18.x = (int)r13.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r13.w = (int)-r18.y + 6;
          r19.xy = (uint2)r16.zy >> (uint2)r13.ww;
          r13.w = (int)r18.w & 0xc0000000;
          r16.w = (int)r18.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r19.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.z = (((uint)r19.x << 0) & bitmask.z) | ((uint)r17.z & ~bitmask.z);
          r17.z = (int)r17.z * 10;
          r16.w = (uint)r16.w >> (uint)r17.z;
          r16.w = (int)r16.w & 1023;
          r19.x = (int)r16.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r13.www ? r18.xyw : r19.xyz;
          r16.w = (int)-r19.y + 6;
          r18.yz = (uint2)r16.zy >> (uint2)r16.ww;
          r16.w = (int)r19.z & 0xc0000000;
          r17.z = (int)r19.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r18.z = (((uint)r18.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r18.y = (((uint)r18.y << 0) & bitmask.y) | ((uint)r18.z & ~bitmask.y);
          r18.y = (int)r18.y * 10;
          r17.z = (uint)r17.z >> (uint)r18.y;
          r17.z = (int)r17.z & 1023;
          r20.x = (int)r17.z + (int)r19.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r20.y, r20.x, l(0), t23.xxxx
        r20.y = samp0[]..swiz;
          r18.yz = r16.ww ? r19.xz : r20.xy;
          r17.xw = r13.ww ? r18.xw : r18.yz;
        }
        r13.w = (int)r17.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r16.w = 0; else if (14+15 < 32) {           r16.w = (uint)r17.w << (32-(14 + 15)); r16.w = (uint)r16.w >> (32-14);          } else r16.w = (uint)r17.w >> 15;
          r16.w = (uint)r16.w;
          r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
          r16.w = 6.10388815e-05 * r16.w;
          r18.xy = (int2)r17.ww & int2(32767,536870912);
          r17.z = (uint)r18.x;
          r17.z = sunConstants.sstLightingConstants.constants.spanInInches * r17.z;
          r17.z = 3.05185094e-05 * r17.z;
          r18.x = (int)r16.y & 3;
          r18.x = (int)r17.x + (int)r18.x;
          r18.x = (int)r18.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.x, r18.x, l(0), t23.xxxx
        r18.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r19.x = (((uint)r16.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r19.y = (((uint)r16.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r19.z = (((uint)r16.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r16.x = (uint)r18.x >> (uint)r19.x;
          r16.x = (int)r16.x & 255;
          r16.x = (uint)r16.x;
          r16.x = r16.x * r17.z;
          r16.x = r16.x * 0.00392156886 + r16.w;
          r16.y = (int)r19.y + 1;
          if (1 == 0) r16.z = 0; else if (1+1 < 32) {           r16.z = (uint)r16.z << (32-(1 + 1)); r16.z = (uint)r16.z >> (32-1);          } else r16.z = (uint)r16.z >> 1;
          r16.y = (int)r16.z + (int)r16.y;
          r16.y = (int)r16.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.y = (uint)r16.y >> (uint)r19.z;
          r16.y = (int)r16.y & 0x0000ffff;
          r16.y = (uint)r16.y;
          r16.y = r16.y * r17.z;
          r16.y = r16.y * 1.52590219e-05 + r16.w;
          r17.y = r18.y ? r16.x : r16.y;
        } else {
          r16.x = (int)r17.w & 0x80000000;
          r16.y = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.y, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r16.x = r16.x ? r16.y : 0;
          r16.y = (uint)r17.w << 2;
          r16.z = (uint)r16.x >> 16;
          r16.x = (int)r16.x & 0x0000ffff;
          r16.xz = f16tof32(r16.xz);
          r16.y = r12.y * r16.z + r16.y;
          r16.x = r12.z * r16.x + r16.y;
          r17.y = r13.w ? r16.x : r17.y;
        }
      }
      r12.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r12.w;
      r12.w = cmp(r17.y < r12.w);
      r6.w = r12.w ? 0 : 1;
    }
    if (r11.w == 0) {
      if (enableDitheredShadow == 0) {
        r11.w = (uint)r7.w;
        r16.xy = -sunConstants.splitPinTransform[r11.w].xy + r12.yz;
        r16.xy = sunConstants.splitPinTransform[r11.w].zz * r16.xy;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r11.w + r7.w;
        r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r6.z).x;
        r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r11.w = r12.w + r11.w;
        r11.w = saturate(-1 + r11.w);
        r12.w = r11.w * r11.w;
        r6.w = r12.w * r11.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r6.x;
        r11.w = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r17.xy = -sunConstants.splitPinTransform[r11.w].xy + r12.yz;
        r17.xy = sunConstants.splitPinTransform[r11.w].zz * r17.xy;
        r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.yz = -sunConstants.splitPinTransform[r7.w].xy + r12.yz;
        r12.yz = sunConstants.splitPinTransform[r7.w].zz * r12.yz;
        r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r7.x;
        r16.z = r6.x;
        r12.w = 0;
        r13.w = 0;
        while (true) {
          r16.w = cmp((uint)r13.w >= 8);
          if (r16.w != 0) break;
          r16.w = cmp((uint)r9.w < (uint)r13.w);
          r17.zw = r16.ww ? r12.yz : r17.xy;
          r18.x = r16.w ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r11.w].w;
          r16.w = r16.w ? r7.w : r11.w;
          r19.x = dot(icb[r13.w+0].yx, r16.xy);
          r19.y = dot(icb[r13.w+0].yx, r16.yz);
          r18.xy = r19.xy * r18.xx + r17.zw;
          r16.w = (int)r16.w + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r16.w;
          r16.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r6.z).x;
          r17.z = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r16.w = r17.z + r16.w;
          r16.w = saturate(-1 + r16.w);
          r12.w = r16.w * 0.125 + r12.w;
          r13.w = (int)r13.w + 1;
        }
        r6.z = r12.w * r12.w;
        r6.w = r6.z * r12.w;
      }
    }
  }
  r6.z = cmp(0 < r5.w);
  if (r6.z != 0) {
    r6.z = cmp(0 < r6.w);
    if (r6.z != 0) {
      r6.z = sunConstants.specScale * r2.w;
      r6.z = r6.z * r5.w;
      if (sunConstants.sunCookieIndex != 0) {
        r10.w = 1;
        r7.w = dot(sunConstants.sunCookieTransform[0].xyzw, r10.xyzw);
        r9.w = dot(sunConstants.sunCookieTransform[1].xyzw, r10.xyzw);
        r10.x = frac(r7.w);
        r10.y = frac(r9.w);
        r7.w = -1 + (int14)sunConstants.sunCookieIndex;
        r10.z = (uint)r7.w;
        r10.xyz = gCookieArray.SampleLevel(samplerLinear_s, r10.xyz, 0).xyz;
        r10.xyz = float3(-1,-1,-1) + r10.xyz;
        r10.xyz = sunConstants.sunCookieIntensity * r10.xyz + float3(1,1,1);
        r10.xyz = sunConstants.color.xyz * r10.xyz;
      } else {
        r10.xyz = sunConstants.color.xyz;
      }
      r7.w = viewmodelSunShadowRaw >> 16;
      r9.w = cmp(0 < (uint)r7.w);
      r9.w = r0.w ? r9.w : 0;
      if (r9.w != 0) {
        r7.w = (int)r7.w + numLights;
        r7.w = (int)r7.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.w, l(52), t12.xxxx
      r9.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(68), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(84), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(132), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r7.w, l(148), t12.xyzw
      r19.x = samp0[]..swiz;
      r19.y = samp0[]..swiz;
      r19.z = samp0[]..swiz;
      r19.w = samp0[]..swiz;
        r10.w = abs(r5.z) * -0.200000003 + 0.400000006;
        r20.xyz = r3.xyz * r10.www + v7.xyz;
        r20.w = 1;
        r16.x = dot(r16.xyzw, r20.xyzw);
        r16.y = dot(r17.xyzw, r20.xyzw);
        r12.yz = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.yz = r12.yz + r19.zw;
        r12.yz = r12.yz * r19.xy;
        r16.xy = r9.ww / r18.xz;
        r16.zw = float2(1,1) + -r16.xy;
        r16.zw = cmp(r12.yz >= r16.zw);
        r16.xy = cmp(r16.xy >= r12.yz);
        r16.xy = (int2)r16.xy | (int2)r16.zw;
        r10.w = (int)r16.y | (int)r16.x;
        if (r10.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r7.w, l(28), t12.xxxx
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r7.w, l(164), t12.xyxx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
          r7.w = dot(r16.xyzw, r20.xyzw);
          r12.yz = saturate(r12.yz);
          r16.xy = r12.yz * r18.xz + r18.yw;
          r7.w = r7.w + r17.x;
          r7.w = r7.w / r17.y;
          r7.w = max(6.10351563e-05, r7.w);
          r10.w = (int)r10.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r17.x = -r6.x;
            r18.z = (uint)r10.w;
            r17.y = r7.x;
            r17.z = r6.x;
            r11.w = 0;
            r12.y = 0;
            while (true) {
              r12.z = cmp((int)r12.y >= 8);
              if (r12.z != 0) break;
              r19.x = dot(icb[r12.y+0].yx, r17.xy);
              r19.y = dot(icb[r12.y+0].yx, r17.yz);
              r18.xy = r19.xy * r9.ww + r16.xy;
              r12.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
              r11.w = r12.z * 0.125 + r11.w;
              r12.y = (int)r12.y + 1;
            }
          } else {
            r16.z = (uint)r10.w;
            r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
          }
          r7.w = r11.w * r11.w;
          r7.w = r7.w * r11.w;
        } else {
          r7.w = 1;
        }
        r6.w = r7.w * r6.w;
      } else {
        r7.w = viewmodelSunShadowRaw & 0x0000ffff;
        r9.w = cmp(0 < (uint)r7.w);
        r10.w = ~(int)r0.w;
        r9.w = r9.w ? r10.w : 0;
        if (r9.w != 0) {
          r7.w = (int)r7.w + numLights;
          r7.w = (int)r7.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.w, l(52), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(68), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(84), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(132), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r7.w, l(148), t12.xyzw
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
        r19.w = samp0[]..swiz;
          r10.w = abs(r5.z) * -0.200000003 + 0.400000006;
          r20.xyz = r3.xyz * r10.www + v7.xyz;
          r20.w = 1;
          r16.x = dot(r16.xyzw, r20.xyzw);
          r16.y = dot(r17.xyzw, r20.xyzw);
          r12.yz = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r12.yz = r12.yz + r19.zw;
          r12.yz = r12.yz * r19.xy;
          r16.xy = r9.ww / r18.xz;
          r16.zw = float2(1,1) + -r16.xy;
          r16.zw = cmp(r12.yz >= r16.zw);
          r16.xy = cmp(r16.xy >= r12.yz);
          r16.xy = (int2)r16.xy | (int2)r16.zw;
          r10.w = (int)r16.y | (int)r16.x;
          if (r10.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r7.w, l(28), t12.xxxx
          r10.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xy, r7.w, l(164), t12.xyxx
          r17.x = samp0[]..swiz;
          r17.y = samp0[]..swiz;
            r7.w = dot(r16.xyzw, r20.xyzw);
            r12.yz = saturate(r12.yz);
            r16.xy = r12.yz * r18.xz + r18.yw;
            r7.w = r7.w + r17.x;
            r7.w = r7.w / r17.y;
            r7.w = max(6.10351563e-05, r7.w);
            r10.w = (int)r10.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r17.x = -r6.x;
              r18.z = (uint)r10.w;
              r17.y = r7.x;
              r17.z = r6.x;
              r11.w = 0;
              r12.y = 0;
              while (true) {
                r12.z = cmp((int)r12.y >= 8);
                if (r12.z != 0) break;
                r19.x = dot(icb[r12.y+0].yx, r17.xy);
                r19.y = dot(icb[r12.y+0].yx, r17.yz);
                r18.xy = r19.xy * r9.ww + r16.xy;
                r12.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r7.w).x;
                r11.w = r12.z * 0.125 + r11.w;
                r12.y = (int)r12.y + 1;
              }
            } else {
              r16.z = (uint)r10.w;
              r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
            }
            r7.w = r11.w * r11.w;
            r7.w = r7.w * r11.w;
          } else {
            r7.w = 1;
          }
          r6.w = r7.w * r6.w;
        }
      }
      r7.w = -r8.x * 0.5 + 1;
      r7.w = -r5.w * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -r5.w;
      r7.w = r5.y * r7.w + r5.w;
      r7.w = r7.w * r6.w;
      r5.z = cmp(0 < r5.z);
      r16.xyz = r7.www * r10.xyz + r15.xyz;
      r12.yzw = -v7.xyz * r0.yyy + sunConstants.wldDir.xyz;
      r0.y = dot(r12.yzw, r12.yzw);
      r0.y = rsqrt(r0.y);
      r12.yzw = r12.yzw * r0.yyy;
      r0.y = dot(r12.yzw, r1.xyw);
      r7.w = dot(r3.xyz, r12.yzw);
      r9.w = abs(r7.w) * r2.w + -abs(r7.w);
      r7.w = abs(r7.w) * r9.w + 1;
      r5.w = r5.w * r1.z + r3.w;
      r7.w = r7.w * r7.w;
      r5.w = r7.w * r5.w;
      r5.w = rcp(r5.w);
      r5.w = r5.w * r6.z;
      r5.w = r6.w * r5.w;
      r5.w = 0.25 * r5.w;
      r12.yzw = r5.www * r10.xyz + r8.yzw;
      r0.y = saturate(1 + -r0.y);
      r6.z = r0.y * r0.y;
      r6.z = r6.z * r6.z;
      r0.y = r6.z * r0.y;
      r0.y = r5.w * r0.y;
      r10.xyz = r0.yyy * r10.yzx + r14.xyz;
      r16.w = r10.z;
      r15.w = r14.z;
      r15.xyzw = r5.zzzz ? r16.xyzw : r15.xyzw;
      r10.zw = r12.yz;
      r14.zw = r8.yz;
      r10.xyzw = r5.zzzz ? r10.xyzw : r14.xyzw;
      r8.w = r5.z ? r12.w : r8.w;
      r14.z = r15.w;
      r14.xy = r10.xy;
      r8.yz = r10.zw;
    }
  }
  r10.x = -r6.x;
  r0.y = ~(int)r0.w;
  r5.z = -r8.x * 0.5 + 1;
  r16.xy = float2(0,0);
  r17.w = 0;
  r18.xyz = v7.xyz;
  r18.w = 1;
  r19.w = 1;
  r10.z = r6.x;
  r20.w = 1;
  r21.z = 1;
  r22.w = 1;
  r10.yw = r7.xx;
  r6.y = r10.w;
  r23.w = 1;
  r7.y = r10.x;
  r7.z = r6.x;
  r24.w = 1;
  r25.x = r7.x;
  r25.y = r10.x;
  r25.z = r6.x;
  r26.x = r7.x;
  r26.y = r10.x;
  r26.z = r6.x;
  r27.x = r7.x;
  r27.y = r10.x;
  r27.z = r6.x;
  r12.yzw = r15.xyz;
  r28.xyz = r14.zxy;
  r29.xyz = r8.yzw;
  r5.w = enableDitheredShadow;
  r6.z = 0;
  while (true) {
    r6.w = cmp((uint)r6.z >= numLights);
    if (r6.w != 0) break;
    r16.z = (uint)r6.z >> 5;
    r17.xyz = (int3)r11.xyz + (int3)r16.xyz;
    r6.w = visibleLights.Load(r17.xyzw).x;
    r17.xyz = r12.yzw;
    r30.xyz = r28.xyz;
    r31.xyz = r29.xyz;
    r7.w = r5.w;
    r8.x = r6.w;
    while (true) {
      if (r8.x == 0) break;
      r9.w = firstbitlow((uint)r8.x);
      r11.w = 1 << (int)r9.w;
      r13.w = (int)r8.x & (int)r11.w;
      if (r13.w != 0) {
        r8.x = (int)r8.x ^ (int)r11.w;
        r9.w = (int)r6.z + (int)r9.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(0), t11.xyzw
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r33.xy, r9.w, l(16), t11.xyxx
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
        r32.xyz = -v7.xyz + r32.xyz;
        r33.z = r32.w;
        r32.xyz = cmp(abs(r32.xyz) < r33.zxy);
        r11.w = r32.y ? r32.x : 0;
        r11.w = r32.z ? r11.w : 0;
        if (r11.w != 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r9.w, l(0), t12.wxyz
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r9.w, l(16), t12.zxyw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r9.w, l(32), t12.xyzw
        r34.x = samp0[]..swiz;
        r34.y = samp0[]..swiz;
        r34.z = samp0[]..swiz;
        r34.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r9.w, l(48), t12.xyzw
        r35.x = samp0[]..swiz;
        r35.y = samp0[]..swiz;
        r35.z = samp0[]..swiz;
        r35.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r9.w, l(64), t12.yzwx
        r36.x = samp0[]..swiz;
        r36.y = samp0[]..swiz;
        r36.z = samp0[]..swiz;
        r36.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r9.w, l(80), t12.xyzw
        r37.x = samp0[]..swiz;
        r37.y = samp0[]..swiz;
        r37.z = samp0[]..swiz;
        r37.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r9.w, l(96), t12.yzwx
        r38.x = samp0[]..swiz;
        r38.y = samp0[]..swiz;
        r38.z = samp0[]..swiz;
        r38.w = samp0[]..swiz;
          if (3 == 0) r11.w = 0; else if (3+24 < 32) {           r11.w = (uint)r33.w << (32-(3 + 24)); r11.w = (uint)r11.w >> (32-3);          } else r11.w = (uint)r33.w >> 24;
          switch (r11.w) {
            case 4 :            r11.w = cmp(0 < r38.x);
            r39.xy = r37.zw;
            r39.z = r38.w;
            r40.xyz = -r39.xyz * float3(0.5,0.5,0.5) + r32.yzw;
            r41.xyz = -v7.xyz + r40.xyz;
            r13.w = dot(r39.xyz, r41.xyz);
            r14.w = saturate(-r13.w / r38.x);
            r42.xyz = r14.www * r39.xyz + r40.xyz;
            r42.xyz = r11.www ? r42.xyz : r32.yzw;
            r42.xyz = -v7.xyz + r42.xyz;
            r15.w = dot(r42.xyz, r42.xyz);
            r16.z = rsqrt(r15.w);
            r42.xyz = r42.xyz * r16.zzz;
            r16.z = dot(r3.xyz, r42.xyz);
            r16.w = saturate(r16.z);
            r21.w = cmp(0 < r16.w);
            if (r21.w != 0) {
              r21.w = sqrt(r15.w);
              r25.w = r35.x * r35.x;
              r15.w = r25.w / r15.w;
              r15.w = min(1, r15.w);
              r42.xy = saturate(r21.ww * r34.xz + r34.yw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r15.w = r42.x * r15.w;
              r15.w = r15.w * r42.y;
              r21.w = cmp(0 < r15.w);
              if (r21.w != 0) {
                if (3 == 0) r21.w = 0; else if (3+27 < 32) {                 r21.w = (uint)r33.w << (32-(3 + 27)); r21.w = (uint)r21.w >> (32-3);                } else r21.w = (uint)r33.w >> 27;
                r21.w = cmp((int)r21.w != 1);
                if (r21.w != 0) {
                  r21.w = abs(r16.z) * -0.200000003 + 0.400000006;
                  r42.xyz = r3.xyz * r21.www + v7.xyz;
                  r42.xyz = r42.xyz + -r36.xyz;
                  r21.w = max(abs(r42.y), abs(r42.z));
                  r21.w = max(abs(r42.x), r21.w);
                  r21.w = r37.x / r21.w;
                  r21.w = r21.w + r37.y;
                  r25.w = dot(r42.xyz, r42.xyz);
                  r25.w = rsqrt(r25.w);
                  r21.w = max(6.10351563e-05, r21.w);
                  r26.w = (int)r33.w & 0x0000ffff;
                  r43.w = (uint)r26.w;
                  r26.w = 0;
                  r27.w = 0;
                  while (true) {
                    r28.w = cmp((int)r27.w >= 8);
                    if (r28.w != 0) break;
                    r44.y = dot(icb[r27.w+0].yx, r10.xy);
                    r44.z = dot(icb[r27.w+0].yx, r10.yz);
                    r44.yz = r44.yz * r35.yy;
                    r44.x = r44.y * r12.x;
                    r44.w = r44.y * r5.x;
                    r43.xyz = r42.xyz * r25.www + r44.xzw;
                    r28.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyzw, r21.w).x;
                    r26.w = r28.w * 0.125 + r26.w;
                    r27.w = (int)r27.w + 1;
                  }
                } else {
                  r26.w = 1;
                }
                r15.w = r26.w * r15.w;
                r21.w = cmp(0 < r15.w);
                if (r21.w != 0) {
                  r21.w = r33.x * r2.w;
                  r21.w = 0.25 * r21.w;
                  r25.w = dot(r39.xyz, r13.xyz);
                  r27.w = dot(r13.xyz, r41.xyz);
                  r28.w = -r25.w * r25.w + r38.x;
                  r13.w = r25.w * r27.w + -r13.w;
                  r13.w = saturate(r13.w / r28.w);
                  r25.w = r28.w / r38.x;
                  r25.w = 10 * r25.w;
                  r25.w = min(1, r25.w);
                  r13.w = r13.w + -r14.w;
                  r13.w = r25.w * r13.w + r14.w;
                  r39.xyz = r13.www * r39.xyz + r40.xyz;
                  r39.xyz = r11.www ? r39.xyz : r32.yzw;
                  r39.xyz = -v7.xyz + r39.xyz;
                  r11.w = dot(r39.xyz, r39.xyz);
                  r11.w = rsqrt(r11.w);
                  r40.xyz = r39.xyz * r11.www;
                  if (4 == 0) r13.w = 0; else if (4+16 < 32) {                   r13.w = (uint)r33.w << (32-(4 + 16)); r13.w = (uint)r13.w >> (32-4);                  } else r13.w = (uint)r33.w >> 16;
                  r14.w = cmp(0 < (uint)r13.w);
                  r14.w = r0.w ? r14.w : 0;
                  if (r14.w != 0) {
                    r13.w = (int)r13.w + numLights;
                    r13.w = (int)r13.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(52), t12.xxxx
                  r14.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(100), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(116), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                    r25.w = abs(r16.z) * -0.200000003 + 0.400000006;
                    r19.xyz = r3.xyz * r25.www + v7.xyz;
                    r25.w = dot(r41.xyzw, r19.xyzw);
                    r27.w = dot(r42.xyzw, r19.xyzw);
                    r28.w = cmp(r27.w < r25.w);
                    if (r28.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(68), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(84), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(132), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(148), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r13.w, l(164), t12.xyxx
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                      r41.x = dot(r41.xyzw, r19.xyzw);
                      r41.y = dot(r42.xyzw, r19.xyzw);
                      r19.xy = r41.xy / r27.ww;
                      r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r19.xy = r19.xy + r44.zw;
                      r19.xy = r19.xy * r44.xy;
                      r41.xy = r14.ww / r43.xz;
                      r41.zw = float2(1,1) + -r41.xy;
                      r41.zw = cmp(r19.xy >= r41.zw);
                      r41.xy = cmp(r41.xy >= r19.xy);
                      r41.xy = (int2)r41.xy | (int2)r41.zw;
                      r19.z = (int)r41.y | (int)r41.x;
                      r19.xy = saturate(r19.xy);
                      r41.xy = r19.xy * r43.xz + r43.yw;
                      r19.x = r45.y * r27.w;
                      r19.y = r45.x * r27.w + r25.w;
                      r19.x = r19.y / r19.x;
                    } else {
                      r19.z = -1;
                    }
                    r19.y = (int)r28.w | (int)r19.z;
                    if (r19.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                    r13.w = samp0[]..swiz;
                      r19.x = max(6.10351563e-05, r19.x);
                      r13.w = (int)r13.w & 0x0000ffff;
                      if (r7.w != 0) {
                        r42.z = (uint)r13.w;
                        r19.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r19.z >= 8);
                          if (r25.w != 0) break;
                          r43.x = dot(icb[r19.z+0].yx, r10.xw);
                          r43.y = dot(icb[r19.z+0].xy, r6.xy);
                          r42.xy = r43.xy * r14.ww + r41.xy;
                          r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r19.x).x;
                          r19.y = r25.w * 0.125 + r19.y;
                          r19.z = (int)r19.z + 1;
                        }
                      } else {
                        r41.z = (uint)r13.w;
                        r19.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                      }
                      r13.w = r19.y * r19.y;
                      r13.w = r13.w * r19.y;
                    } else {
                      r13.w = 1;
                    }
                    r15.w = r15.w * r13.w;
                  } else {
                    if (4 == 0) r13.w = 0; else if (4+20 < 32) {                     r13.w = (uint)r33.w << (32-(4 + 20)); r13.w = (uint)r13.w >> (32-4);                    } else r13.w = (uint)r33.w >> 20;
                    r14.w = cmp(0 < (uint)r13.w);
                    r14.w = r14.w ? r0.y : 0;
                    if (r14.w != 0) {
                      r13.w = (int)r13.w + numLights;
                      r13.w = (int)r13.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.w, r13.w, l(52), t12.xxxx
                    r14.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(100), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(116), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                      r19.x = abs(r16.z) * -0.200000003 + 0.400000006;
                      r20.xyz = r3.xyz * r19.xxx + v7.xyz;
                      r19.x = dot(r41.xyzw, r20.xyzw);
                      r19.z = dot(r42.xyzw, r20.xyzw);
                      r25.w = cmp(r19.z < r19.x);
                      if (r25.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(68), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(84), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(132), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(148), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r13.w, l(164), t12.xyxx
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                        r41.x = dot(r41.xyzw, r20.xyzw);
                        r41.y = dot(r42.xyzw, r20.xyzw);
                        r20.xy = r41.xy / r19.zz;
                        r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r20.xy = r20.xy + r44.zw;
                        r20.xy = r20.xy * r44.xy;
                        r41.xy = r14.ww / r43.xz;
                        r41.zw = float2(1,1) + -r41.xy;
                        r41.zw = cmp(r20.xy >= r41.zw);
                        r41.xy = cmp(r41.xy >= r20.xy);
                        r41.xy = (int2)r41.xy | (int2)r41.zw;
                        r20.z = (int)r41.y | (int)r41.x;
                        r20.xy = saturate(r20.xy);
                        r41.xy = r20.xy * r43.xz + r43.yw;
                        r20.x = r45.y * r19.z;
                        r19.x = r45.x * r19.z + r19.x;
                        r19.x = r19.x / r20.x;
                      } else {
                        r20.z = -1;
                      }
                      r19.z = (int)r25.w | (int)r20.z;
                      if (r19.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(28), t12.xxxx
                      r13.w = samp0[]..swiz;
                        r19.x = max(6.10351563e-05, r19.x);
                        r13.w = (int)r13.w & 0x0000ffff;
                        if (r7.w != 0) {
                          r20.z = (uint)r13.w;
                          r19.z = 0;
                          r25.w = 0;
                          while (true) {
                            r27.w = cmp((int)r25.w >= 8);
                            if (r27.w != 0) break;
                            r42.x = dot(icb[r25.w+0].xy, r7.xy);
                            r42.y = dot(icb[r25.w+0].yx, r7.xz);
                            r20.xy = r42.xy * r14.ww + r41.xy;
                            r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r19.x).x;
                            r19.z = r20.x * 0.125 + r19.z;
                            r25.w = (int)r25.w + 1;
                          }
                        } else {
                          r41.z = (uint)r13.w;
                          r19.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r19.x).x;
                        }
                        r13.w = r19.z * r19.z;
                        r13.w = r13.w * r19.z;
                      } else {
                        r13.w = 1;
                      }
                      r15.w = r15.w * r13.w;
                    }
                  }
                  r13.w = -r16.w * r5.z + 1;
                  r13.w = r13.w * r13.w;
                  r13.w = -r13.w * 0.620000005 + 0.620000005;
                  r13.w = r13.w + -r16.w;
                  r13.w = r5.y * r13.w + r16.w;
                  r13.w = r13.w * r15.w;
                  r33.x = r32.x;
                  r14.w = cmp(0 < r16.z);
                  r20.xyz = r13.www * r33.xyz + r17.xyz;
                  r13.w = saturate(dot(r3.xyz, r40.xyz));
                  r39.xyz = r39.xyz * r11.www + r1.xyw;
                  r11.w = dot(r39.xyz, r39.xyz);
                  r11.w = rsqrt(r11.w);
                  r39.xyz = r39.xyz * r11.www;
                  r11.w = dot(r39.xyz, r1.xyw);
                  r16.z = dot(r3.xyz, r39.xyz);
                  r16.w = abs(r16.z) * r2.w + -abs(r16.z);
                  r16.z = abs(r16.z) * r16.w + 1;
                  r16.w = r13.w * r1.z + r3.w;
                  r16.z = r16.z * r16.z;
                  r16.z = r16.z * r16.w;
                  r16.z = rcp(r16.z);
                  r13.w = r13.w * r21.w;
                  r13.w = r16.z * r13.w;
                  r13.w = r13.w * r15.w;
                  r39.xyz = r13.www * r33.xyz + r31.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r15.w = r11.w * r11.w;
                  r15.w = r15.w * r15.w;
                  r11.w = r15.w * r11.w;
                  r11.w = r13.w * r11.w;
                  r40.xyz = r11.www * r33.xyz + r30.xyz;
                  r17.xyz = r14.www ? r20.xyz : r17.xyz;
                  r30.xyz = r14.www ? r40.xyz : r30.xyz;
                  r31.xyz = r14.www ? r39.xyz : r31.xyz;
                }
              }
            }
            break;
            case 2 :            r20.xy = r35.zw;
            r20.z = r36.w;
            r20.xyz = -v7.xyz + r20.xyz;
            r11.w = dot(r20.xyz, r20.xyz);
            r11.w = rsqrt(r11.w);
            r39.xyz = r20.xyz * r11.www;
            r13.w = dot(r3.xyz, r39.xyz);
            r14.w = saturate(r13.w);
            r15.w = cmp(0 < r14.w);
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r9.w, l(112), t12.yzwx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r9.w, l(128), t12.zxyw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
              r41.xyz = r39.xyz;
              r41.w = r40.y;
              r15.w = dot(r41.xyzw, r18.xyzw);
              r16.z = cmp(r15.w < 1);
              if (r16.z != 0) {
                r42.xyz = float3(1,1,1);
                r16.z = 0;
              } else {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r9.w, l(172), t12.yzwx
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r9.w, l(188), t12.wxyz
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xyzw, r9.w, l(204), t12.xyzw
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.w, r9.w, l(236), t12.xxxx
              r16.w = samp0[]..swiz;
                r46.xyz = -v7.xyz + r32.yzw;
                r19.x = r35.x * r35.x;
                r21.w = dot(r46.xyz, r46.xyz);
                r19.x = r19.x / r21.w;
                r19.x = min(1, r19.x);
                r34.xy = saturate(r15.ww * r34.xz + r34.yw);
                r34.zw = r34.xy * r34.xy;
                r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                r34.xy = r34.zw * r34.xy;
                r19.x = r34.x * r19.x;
                r19.x = r19.x * r34.y;
                r36.w = r37.x;
                r34.x = dot(r36.xyzw, r18.xyzw);
                r46.xyz = r37.yzw;
                r46.w = r38.w;
                r34.y = dot(r46.xyzw, r18.xyzw);
                r21.xy = r34.xy / r15.ww;
                r15.w = cmp(r43.w < 0.00048828125);
                if (r15.w != 0) {
                  r44.y = r45.x;
                  r34.xy = saturate(abs(r21.xy) * r44.zw + r44.xy);
                  r34.zw = r34.xy * r34.xy;
                  r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                  r34.xy = r34.zw * r34.xy;
                  r15.w = r34.x * r34.y;
                } else {
                  r43.w = r44.y;
                  r34.xyzw = saturate(r43.xyzw * abs(r21.yyxx));
                  r34.xyzw = log2(r34.xyzw);
                  r34.xyzw = r44.xxxx * r34.xyzw;
                  r34.xyzw = exp2(r34.xyzw);
                  r34.xy = r34.xy + r34.zw;
                  r34.xy = log2(r34.xy);
                  r34.xy = r45.xx * r34.xy;
                  r34.xy = exp2(r34.xy);
                  r21.w = r44.z * r34.x;
                  r25.w = r44.w * r34.y + -1;
                  r21.w = r44.w * r34.y + -r21.w;
                  r21.w = saturate(r25.w / r21.w);
                  r25.w = r21.w * r21.w;
                  r21.w = r21.w * -2 + 3;
                  r15.w = r25.w * r21.w;
                }
                r16.z = r19.x * r15.w;
                r15.w = (int)r16.w & 255;
                if (r15.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyz, r9.w, l(220), t12.xyzx
                r34.x = samp0[]..swiz;
                r34.y = samp0[]..swiz;
                r34.z = samp0[]..swiz;
                  r16.w = dot(r45.yzw, r21.xyz);
                  r19.x = dot(r34.xyz, r21.xyz);
                  r34.x = frac(r16.w);
                  r34.y = frac(r19.x);
                  r15.w = (int)r15.w + -1;
                  r34.z = (uint)r15.w;
                  r42.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
                } else {
                  r42.xyz = float3(1,1,1);
                }
              }
              r32.yz = r33.yz;
              r21.xyw = r32.xyz * r42.xyz;
              r15.w = cmp(0 < r16.z);
              if (r15.w != 0) {
                if (3 == 0) r15.w = 0; else if (3+27 < 32) {                 r15.w = (uint)r33.w << (32-(3 + 27)); r15.w = (uint)r15.w >> (32-3);                } else r15.w = (uint)r33.w >> 27;
                r15.w = cmp((int)r15.w != 1);
                if (r15.w != 0) {
                  r15.w = abs(r13.w) * -0.200000003 + 0.400000006;
                  r22.xyz = r3.xyz * r15.www + v7.xyz;
                  r39.xyz = r38.xyz;
                  r15.w = dot(r39.xyzw, r22.xyzw);
                  r16.w = dot(r41.xyzw, r22.xyzw);
                  r19.x = cmp(r16.w >= r15.w);
                  if (r19.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.y, r9.w, l(144), t12.xxxx
                  r40.y = samp0[]..swiz;
                    r36.w = r37.x;
                    r32.x = dot(r36.xyzw, r22.xyzw);
                    r38.xyz = r37.yzw;
                    r32.y = dot(r38.xyzw, r22.xyzw);
                    r22.xy = r32.xy / r16.ww;
                    r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r22.xy = r22.xy * r40.zw + r40.xy;
                    r9.w = r15.w / r16.w;
                    r9.w = max(6.10351563e-05, r9.w);
                    r15.w = (int)r33.w & 0x0000ffff;
                    if (r7.w != 0) {
                      r32.z = (uint)r15.w;
                      r16.w = 0;
                      r19.x = 0;
                      while (true) {
                        r25.w = cmp((int)r19.x >= 8);
                        if (r25.w != 0) break;
                        r34.x = dot(icb[r19.x+0].xy, r25.xy);
                        r34.y = dot(icb[r19.x+0].yx, r25.xz);
                        r32.xy = r34.xy * r35.yy + r22.xy;
                        r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r9.w).x;
                        r16.w = r25.w * 0.125 + r16.w;
                        r19.x = (int)r19.x + 1;
                      }
                    } else {
                      r22.z = (uint)r15.w;
                      r16.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r9.w).x;
                    }
                    r9.w = r16.w * r16.w;
                    r9.w = r9.w * r16.w;
                  } else {
                    r9.w = 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = r16.z * r9.w;
                r15.w = cmp(0 < r9.w);
                if (r15.w != 0) {
                  r15.w = r33.x * r2.w;
                  r15.w = r15.w * r14.w;
                  if (4 == 0) r16.z = 0; else if (4+16 < 32) {                   r16.z = (uint)r33.w << (32-(4 + 16)); r16.z = (uint)r16.z >> (32-4);                  } else r16.z = (uint)r33.w >> 16;
                  r19.x = cmp(0 < (uint)r16.z);
                  r19.x = r0.w ? r19.x : 0;
                  if (r19.x != 0) {
                    r16.z = (int)r16.z + numLights;
                    r16.z = (int)r16.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r16.z, l(52), t12.xxxx
                  r19.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(68), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r16.z, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r16.z, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r16.z, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r22.x = abs(r13.w) * -0.200000003 + 0.400000006;
                    r23.xyz = r3.xyz * r22.xxx + v7.xyz;
                    r22.x = dot(r32.xyzw, r23.xyzw);
                    r22.y = dot(r34.xyzw, r23.xyzw);
                    r22.z = dot(r35.xyzw, r23.xyzw);
                    r23.x = dot(r36.xyzw, r23.xyzw);
                    r23.y = cmp(r23.x < r22.z);
                    r22.xy = r22.xy / r23.xx;
                    r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r22.xy = r22.xy + r38.zw;
                    r22.xy = r22.xy * r38.xy;
                    r32.xy = r19.xx / r37.xz;
                    r32.zw = float2(1,1) + -r32.xy;
                    r32.zw = cmp(r22.xy >= r32.zw);
                    r32.xy = cmp(r32.xy >= r22.xy);
                    r32.xy = (int2)r32.xy | (int2)r32.zw;
                    r23.z = (int)r32.y | (int)r32.x;
                    r23.y = (int)r23.y | (int)r23.z;
                    if (r23.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r16.z, l(28), t12.xxxx
                    r23.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r16.z, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r22.xy = saturate(r22.xy);
                      r33.xy = r22.xy * r37.xz + r37.yw;
                      r16.z = r32.y * r23.x;
                      r22.x = r32.x * r23.x + r22.z;
                      r16.z = r22.x / r16.z;
                      r16.z = max(6.10351563e-05, r16.z);
                      r22.x = r23.y ? 0.000000 : 0;
                      if (r7.w != 0) {
                        r23.z = (uint)r22.x;
                        r22.yz = float2(0,0);
                        while (true) {
                          r25.w = cmp((int)r22.z >= 8);
                          if (r25.w != 0) break;
                          r32.x = dot(icb[r22.z+0].xy, r26.xy);
                          r32.y = dot(icb[r22.z+0].yx, r26.xz);
                          r23.xy = r32.xy * r19.xx + r33.xy;
                          r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.z).x;
                          r22.y = r23.x * 0.125 + r22.y;
                          r22.z = (int)r22.z + 1;
                        }
                      } else {
                        r33.z = (uint)r22.x;
                        r22.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r16.z).x;
                      }
                      r16.z = r22.y * r22.y;
                      r16.z = r16.z * r22.y;
                    } else {
                      r16.z = 1;
                    }
                    r9.w = r16.z * r9.w;
                  } else {
                    if (4 == 0) r16.z = 0; else if (4+20 < 32) {                     r16.z = (uint)r33.w << (32-(4 + 20)); r16.z = (uint)r16.z >> (32-4);                    } else r16.z = (uint)r33.w >> 20;
                    r19.x = cmp(0 < (uint)r16.z);
                    r19.x = r19.x ? r0.y : 0;
                    if (r19.x != 0) {
                      r16.z = (int)r16.z + numLights;
                      r16.z = (int)r16.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.x, r16.z, l(52), t12.xxxx
                    r19.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r16.z, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r16.z, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r16.z, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r16.z, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r16.z, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r16.z, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r22.x = abs(r13.w) * -0.200000003 + 0.400000006;
                      r24.xyz = r3.xyz * r22.xxx + v7.xyz;
                      r23.x = dot(r32.xyzw, r24.xyzw);
                      r23.y = dot(r33.xyzw, r24.xyzw);
                      r22.x = dot(r34.xyzw, r24.xyzw);
                      r22.z = dot(r35.xyzw, r24.xyzw);
                      r23.z = cmp(r22.z < r22.x);
                      r23.xy = r23.xy / r22.zz;
                      r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r23.xy = r23.xy + r37.zw;
                      r23.xy = r23.xy * r37.xy;
                      r24.xy = r19.xx / r36.xz;
                      r32.xy = float2(1,1) + -r24.xy;
                      r32.xy = cmp(r23.xy >= r32.xy);
                      r24.xy = cmp(r24.xy >= r23.xy);
                      r24.xy = (int2)r24.xy | (int2)r32.xy;
                      r24.x = (int)r24.y | (int)r24.x;
                      r23.z = (int)r23.z | (int)r24.x;
                      if (r23.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.z, r16.z, l(28), t12.xxxx
                      r23.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.xy, r16.z, l(164), t12.xyxx
                      r24.x = samp0[]..swiz;
                      r24.y = samp0[]..swiz;
                        r23.xy = saturate(r23.xy);
                        r32.xy = r23.xy * r36.xz + r36.yw;
                        r16.z = r24.y * r22.z;
                        r22.x = r24.x * r22.z + r22.x;
                        r16.z = r22.x / r16.z;
                        r16.z = max(6.10351563e-05, r16.z);
                        r22.x = r23.z ? 0.000000 : 0;
                        if (r7.w != 0) {
                          r23.z = (uint)r22.x;
                          r22.z = 0;
                          r24.x = 0;
                          while (true) {
                            r24.y = cmp((int)r24.x >= 8);
                            if (r24.y != 0) break;
                            r33.x = dot(icb[r24.x+0].xy, r27.xy);
                            r33.y = dot(icb[r24.x+0].yx, r27.xz);
                            r23.xy = r33.xy * r19.xx + r32.xy;
                            r23.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r23.xyz, r16.z).x;
                            r22.z = r23.x * 0.125 + r22.z;
                            r24.x = (int)r24.x + 1;
                          }
                        } else {
                          r32.z = (uint)r22.x;
                          r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r16.z).x;
                        }
                        r16.z = r22.z * r22.z;
                        r16.z = r16.z * r22.z;
                      } else {
                        r16.z = 1;
                      }
                      r9.w = r16.z * r9.w;
                    }
                  }
                  r16.z = -r14.w * r5.z + 1;
                  r16.z = r16.z * r16.z;
                  r16.z = -r16.z * 0.620000005 + 0.620000005;
                  r16.z = r16.z + -r14.w;
                  r16.z = r5.y * r16.z + r14.w;
                  r16.z = r16.z * r9.w;
                  r13.w = cmp(0 < r13.w);
                  r23.xyz = r16.zzz * r21.xyw + r17.xyz;
                  r20.xyz = r20.xyz * r11.www + r1.xyw;
                  r11.w = dot(r20.xyz, r20.xyz);
                  r11.w = rsqrt(r11.w);
                  r20.xyz = r20.xyz * r11.www;
                  r11.w = dot(r20.xyz, r1.xyw);
                  r16.z = dot(r3.xyz, r20.xyz);
                  r19.x = abs(r16.z) * r2.w + -abs(r16.z);
                  r16.z = abs(r16.z) * r19.x + 1;
                  r14.w = r14.w * r1.z + r3.w;
                  r16.z = r16.z * r16.z;
                  r14.w = r16.z * r14.w;
                  r14.w = rcp(r14.w);
                  r14.w = r14.w * r15.w;
                  r9.w = r14.w * r9.w;
                  r9.w = 0.25 * r9.w;
                  r20.xyz = r9.www * r21.xyw + r31.xyz;
                  r11.w = saturate(1 + -r11.w);
                  r14.w = r11.w * r11.w;
                  r14.w = r14.w * r14.w;
                  r11.w = r14.w * r11.w;
                  r9.w = r11.w * r9.w;
                  r21.xyw = r9.www * r21.xyw + r30.xyz;
                  r17.xyz = r13.www ? r23.xyz : r17.xyz;
                  r30.xyz = r13.www ? r21.xyw : r30.xyz;
                  r31.xyz = r13.www ? r20.xyz : r31.xyz;
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
    r12.yzw = r17.xyz;
    r28.xyz = r30.xyz;
    r29.xyz = r31.xyz;
    r6.z = (int)r6.z + 32;
  }
  r1.xyz = float3(1,1,1) + -r9.xyz;
  r1.xyz = r28.xyz * r1.xyz;
  r1.xyz = r29.xyz * r9.xyz + r1.xyz;
  r1.xyz = r12.yzw * r2.xyz + r1.xyz;
  r0.y = dot(r1.xyz, float3(0.298999995,0.587000012,0.114));
  r0.y = max(9.99999975e-05, r0.y);
  r2.w = max(relHDRExposure.x, r0.y);
  r2.xyz = r4.xyz * r2.www;
  r4.w = 1;
  r2.xyzw = relativeHDR ? r2.xyzw : r4.xyzw;
  r1.xyz = r2.xyz + r1.xyz;
  r0.y = hdrScale * r2.w;
  r0.y = max(1, r0.y);
  r2.xyz = r2.xyz / r0.yyy;
  r0.y = saturate(dot(r2.xyz, float3(0.298999995,0.587000012,0.114)));
  r0.y = r0.z + r0.y;
  o0.w = r0.y * r0.x;
  r0.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.x != 0) {
    r0.x = dot(v7.xyz, v7.xyz);
    r0.y = rsqrt(r0.x);
    r0.yzw = v7.xyz * r0.yyy;
    r0.x = sqrt(r0.x);
    r1.w = cmp(0 < fogConstants.blendAmount);
    if (r1.w != 0) {
      r2.xy = r0.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r1.w = r0.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r0.y = dot(fogConstants.wldSunFogDir.xyz, -r0.yzw);
    r0.z = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r0.w = fogConstants.atmosphereMieSchlickK * -r0.y + 1;
    r0.w = r0.w * r0.w;
    r0.w = 12.566371 * r0.w;
    r0.z = r0.z / r0.w;
    r0.x = -fogConstants.atmospherehazebasedist + r0.x;
    r0.x = saturate(fogConstants.atmospherehazefadedist * r0.x);
    r0.x = r0.z * r0.x;
    r0.y = saturate(r0.y);
    r0.y = r0.y * r0.y + 1;
    r0.y = r0.y * 0.0596831031 + -1;
    r0.y = fogConstants.atmospheresunstrength * r0.y + 1;
    r0.xzw = fogConstants.atmosphereMieDensity.xyz * r0.xxx;
    r0.xyz = r0.yyy * fogConstants.atmosphereRayleighDensity.xyz + r0.xzw;
    r0.xyz = fogConstants.atmosphereInScatterIntensity * r0.xyz;
    r3.xyz = float3(1,1,1) + -r2.xyz;
    r0.xyz = r3.xyz * r0.xyz;
    r0.xyz = r1.xyz * r2.xyz + r0.xyz;
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
    r2.xyz = r2.xyz + -r1.xyz;
    r0.xyz = r0.www * r2.xyz + r1.xyz;
  }
  r0.xyz = relHDRExposure.yyy * r0.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  return;
}