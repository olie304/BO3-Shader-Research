// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:32:56 2021

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
  float3 emissiveTint3 : packoffset(c27);
  float rowCount3 : packoffset(c27.w);
  float columnCount3 : packoffset(c28);
  float imageTime3 : packoffset(c28.y);
  float2 rotateUVs3 : packoffset(c28.z);
  float2 scrollUVs3 : packoffset(c29);
  float2 scaleUVs3 : packoffset(c29.z);
  float2 offsetUVs3 : packoffset(c30);
  float2 zoomUVs3 : packoffset(c30.z);
  float zoomRate3 : packoffset(c31);
  float layer3Depth : packoffset(c31.y);
  float uvMotionToggle3 : packoffset(c31.z);
  bool clampU3 : packoffset(c31.w);
  bool clampV3 : packoffset(c32);
  float2 flickerSeed3 : packoffset(c32.y);
  float flickerSpeed3 : packoffset(c32.w);
  float2 flickerRange3 : packoffset(c33);
  float flickerPower3 : packoffset(c33.z);
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
SamplerState normalSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState lookupSampler_s : register(s5);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
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
Texture2D<float4> normalMap : register(t21);
Texture2D<float4> flickerLookupMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> emissiveMap1 : register(t24);
Texture2D<float4> emissiveMap2 : register(t25);
Texture2D<float4> emissiveMap3 : register(t26);
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

  r0.xyzw = colorMap.Sample(colorSampler_s, v2.xy).xyzw;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyzw = v1.xyzw * r0.xyzw;
  r1.x = saturate(0.0588235296 * glossRange.y);
  r1.yzw = normalMap.Sample(normalSampler_s, v2.xy).xyz;
  r1.yzw = float3(-0.5,-0.5,-0) + r1.yzw;
  r1.yzw = baseNormalHeight * r1.yzw + float3(0.5,0.5,0);
  r1.yz = r1.yz * float2(1.9921875,1.9921875) + float2(-1,-1);
  r2.x = dot(r1.yz, r1.yz);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r1.w = r1.w * r1.w;
  r1.w = 0.333333343 * r1.w;
  r1.w = min(1, r1.w);
  r2.y = v8.x ? 1 : -1;
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = rsqrt(r2.z);
  r3.xyz = v4.xyz * r2.zzz;
  r3.xyz = r3.xyz * r2.yyy;
  r2.z = dot(v5.xyz, v5.xyz);
  r2.z = rsqrt(r2.z);
  r4.xyz = v5.xyz * r2.zzz;
  r4.xyz = r4.xyz * r2.yyy;
  r2.z = dot(v6.xyz, v6.xyz);
  r2.z = rsqrt(r2.z);
  r5.xyz = v6.xyz * r2.zzz;
  r5.xyz = r5.xyz * r2.yyy;
  r1.x = -17 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.w + r1.x;
  r1.x = log2(r1.x);
  r1.x = -0.0588235296 * r1.x;
  r1.x = max(0, r1.x);
  r6.xyz = r5.xyz * r1.zzz;
  r1.yzw = r4.xyz * r1.yyy + r6.xyz;
  r1.yzw = r3.xyz * r2.xxx + r1.yzw;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = rsqrt(r2.x);
  r1.yzw = r2.xxx * r1.yzw;
  r2.x = cmp(v0.z >= 0.984375);
  r2.z = 1.01587307 * v0.z;
  r2.w = v0.z * 64 + -63;
  r2.x = r2.x ? r2.w : r2.z;
  r2.x = max(9.99999994e-09, r2.x);
  r2.x = rcp(r2.x);
  r2.zw = (uint2)v0.yx;
  r6.xyz = ddx_coarse(v7.xyz);
  r7.xyz = ddy_coarse(v7.xyz);
  r3.w = numRefProbes + numLights;
  r8.xyz = eyeOffset.xyz + v7.xyz;
  r2.x = 0.0078125 * r2.x;
  r2.x = min(15, r2.x);
  r2.x = (uint)r2.x;
  r9.xy = (uint2)r2.wz >> int2(6,6);
  r9.z = (uint)r2.x << 4;
  r2.x = numStaticDecals & -32;
  r4.w = (int)-r2.x + numStaticDecals;
  r10.xy = float2(0,0);
  r11.w = 0;
  r8.w = 1;
  r12.xyz = float3(0,0,0);
  r13.xyz = float3(0,0,0);
  r14.xyz = float3(0,0,0);
  r5.w = 0;
  r6.w = 0;
  r7.w = 0;
  while (true) {
    r9.w = cmp((uint)r7.w >= numStaticDecals);
    if (r9.w != 0) break;
    r10.z = (uint)r7.w >> 5;
    r11.xyz = (int3)r9.xyz + (int3)r10.xyz;
    r9.w = visibleDecals.Load(r11.xyzw).x;
    r10.z = cmp((int)r2.x == (int)r7.w);
    if (r4.w == 0) r10.w = 0; else if (r4.w+0 < 32) {     r10.w = (uint)r9.w << (32-(r4.w + 0)); r10.w = (uint)r10.w >> (32-r4.w);    } else r10.w = (uint)r9.w >> 0;
    r9.w = r10.z ? r10.w : r9.w;
    r10.z = (int)r3.w + (int)r7.w;
    r11.xyz = r12.xyz;
    r15.xyz = r13.xyz;
    r16.xyz = r14.xyz;
    r10.w = r5.w;
    r12.w = r6.w;
    r13.w = r9.w;
    while (true) {
      if (r13.w == 0) break;
      r14.w = firstbitlow((uint)r13.w);
      r15.w = 1 << (int)r14.w;
      r16.w = (int)r13.w & (int)r15.w;
      if (r16.w != 0) {
        r13.w = (int)r13.w ^ (int)r15.w;
        r15.w = (int)r10.z + (int)r14.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r17.xyzw, r15.w, l(0), t11.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r18.xy, r15.w, l(16), t11.xyxx
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
        r17.xyz = -v7.xyz + r17.xyz;
        r18.z = r17.w;
        r17.xyz = cmp(abs(r17.xyz) < r18.zxy);
        r15.w = r17.y ? r17.x : 0;
        r15.w = r17.z ? r15.w : 0;
        if (r15.w != 0) {
          r14.w = (int)r7.w + (int)r14.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyz, r14.w, l(0), t36.xyzx
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyz, r14.w, l(16), t36.xyzx
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyz, r14.w, l(32), t36.xyzx
        r19.x = samp0[]..swiz;
        r19.y = samp0[]..swiz;
        r19.z = samp0[]..swiz;
          r20.x = r17.x;
          r20.y = r18.x;
          r20.z = r19.x;
          r15.w = dot(r20.xyz, r20.xyz);
          r15.w = rsqrt(r15.w);
          r21.xyz = r20.xyz * r15.www;
          r15.w = dot(r21.xyz, r3.xyz);
          r15.w = cmp(r15.w >= 0.5);
          if (r15.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r22.xyw, r14.w, l(48), t36.xyxz
          r22.x = samp0[]..swiz;
          r22.y = samp0[]..swiz;
          r22.w = samp0[]..swiz;
            r20.w = r22.x;
            r20.x = dot(r8.xyzw, r20.xyzw);
            r23.x = r17.y;
            r23.y = r18.y;
            r23.z = r19.y;
            r23.w = r22.y;
            r20.y = dot(r8.xyzw, r23.xyzw);
            r22.x = r17.z;
            r22.y = r18.z;
            r22.z = r19.z;
            r20.z = dot(r8.xyzw, r22.xyzw);
            r17.xyz = cmp(abs(r20.xyz) < float3(1,1,1));
            r15.w = r17.y ? r17.x : 0;
            r15.w = r17.z ? r15.w : 0;
            if (r15.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyzw, r14.w, l(64), t36.xyzw
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.z = samp0[]..swiz;
            r17.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r18.xyzw, r14.w, l(80), t36.xyzw
            r18.x = samp0[]..swiz;
            r18.y = samp0[]..swiz;
            r18.z = samp0[]..swiz;
            r18.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r19.xyzw, r14.w, l(96), t36.xyzw
            r19.x = samp0[]..swiz;
            r19.y = samp0[]..swiz;
            r19.z = samp0[]..swiz;
            r19.w = samp0[]..swiz;
              r24.x = dot(r6.xyz, r23.xyz);
              r24.y = dot(r6.xyz, r22.xyz);
              r25.x = dot(r7.xyz, r23.xyz);
              r25.y = dot(r7.xyz, r22.xyz);
              r20.xy = r20.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r24.xyz = float3(0.5,-0.5,0.5) * r24.xyx;
              r25.xyz = float3(0.5,-0.5,0.5) * r25.xyx;
              r20.zw = (int2)r18.yz & int2(65535,65535);
              if (r20.z != 0) {
                if (4 == 0) r15.w = 0; else if (4+24 < 32) {                 r15.w = (uint)r18.w << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                } else r15.w = (uint)r18.w >> 24;
                r15.w = 1 << (int)r15.w;
                r16.w = (uint)r18.w >> 28;
                r16.w = 1 << (int)r16.w;
                r21.w = cmp((int)r20.z == 4);
                if (r21.w != 0) {
                  r21.w = (int)r18.w & 4095;
                  if (12 == 0) r22.w = 0; else if (12+12 < 32) {                   r22.w = (uint)r18.w << (32-(12 + 12)); r22.w = (uint)r22.w >> (32-12);                  } else r22.w = (uint)r18.w >> 12;
                  r23.w = (int)r19.w & 1023;
                  r26.xz = (uint2)r15.ww;
                  r26.y = (uint)r16.w;
                  r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                  r27.zw = float2(-0.5,-0.5) + r26.zy;
                  r27.xy = min(r27.xy, r27.zw);
                  r28.x = (uint)r21.w;
                  r28.y = (uint)r22.w;
                  r27.xy = r28.xy + r27.xy;
                  r27.xy = invBcTexSizes.xy * r27.xy;
                  r27.z = (uint)r23.w;
                  r28.xyz = invBcTexSizes.xyx * r24.zyz;
                  r28.xyz = r28.xyz * r26.xyz;
                  r29.xyz = invBcTexSizes.xyx * r25.zyz;
                  r26.xyz = r29.xyz * r26.xyz;
                  r26.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.xyzx, r26.xyzx).xyzw;
                } else {
                  r20.z = cmp((int)r20.z == 1);
                  if (r20.z != 0) {
                    r20.z = (int)r18.w & 4095;
                    if (12 == 0) r18.w = 0; else if (12+12 < 32) {                     r18.w = (uint)r18.w << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                    } else r18.w = (uint)r18.w >> 12;
                    r21.w = (int)r19.w & 1023;
                    r27.xz = (uint2)r15.ww;
                    r27.y = (uint)r16.w;
                    r28.xy = r20.xy * r27.zy + float2(0.5,0.5);
                    r28.zw = float2(-0.5,-0.5) + r27.zy;
                    r28.xy = min(r28.xy, r28.zw);
                    r29.x = (uint)r20.z;
                    r29.y = (uint)r18.w;
                    r28.xy = r29.xy + r28.xy;
                    r28.xy = invBcTexSizes.zw * r28.xy;
                    r28.z = (uint)r21.w;
                    r29.xyz = invBcTexSizes.zwz * r24.zyz;
                    r29.xyz = r29.xyz * r27.xyz;
                    r30.xyz = invBcTexSizes.zwz * r25.zyz;
                    r27.xyz = r30.xyz * r27.xyz;
                    r26.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.xyzx, r27.xyzx).xyzw;
                  } else {
                    r26.xyzw = float4(1,1,1,1);
                  }
                }
                r17.xyz = r26.xyz * r17.xyz;
                r15.w = r26.w * r17.w;
              } else {
                r17.xyz = float3(0,0,0);
                r15.w = 0;
              }
              r16.w = cmp(r18.x != 1.000000);
              r17.w = r15.w + r17.w;
              r17.w = saturate(r17.w * r18.x + -r18.x);
              r15.w = r16.w ? r17.w : r15.w;
              if (r20.w != 0) {
                if (4 == 0) r16.w = 0; else if (4+24 < 32) {                 r16.w = (uint)r19.y << (32-(4 + 24)); r16.w = (uint)r16.w >> (32-4);                } else r16.w = (uint)r19.y >> 24;
                r16.w = 1 << (int)r16.w;
                r17.w = (uint)r19.y >> 28;
                r17.w = 1 << (int)r17.w;
                r18.x = cmp((int)r20.w == 2);
                if (r18.x != 0) {
                  r18.x = (int)r19.y & 4095;
                  if (12 == 0) r26.x = 0; else if (12+12 < 32) {                   r26.x = (uint)r19.y << (32-(12 + 12)); r26.x = (uint)r26.x >> (32-12);                  } else r26.x = (uint)r19.y >> 12;
                  if (10 == 0) r26.y = 0; else if (10+20 < 32) {                   r26.y = (uint)r19.w << (32-(10 + 20)); r26.y = (uint)r26.y >> (32-10);                  } else r26.y = (uint)r19.w >> 20;
                  r27.xz = (uint2)r16.ww;
                  r27.y = (uint)r17.w;
                  r26.zw = r20.xy * r27.zy + float2(0.5,0.5);
                  r28.xy = float2(-0.5,-0.5) + r27.zy;
                  r26.zw = min(r28.xy, r26.zw);
                  r28.x = (uint)r18.x;
                  r28.yz = (uint2)r26.xy;
                  r18.xw = r28.xy + r26.zw;
                  r28.xy = invMaskTexSizes.xy * r18.xw;
                  r26.xyz = invMaskTexSizes.xyx * r24.zyz;
                  r26.xyz = r26.xyz * r27.xyz;
                  r29.xyz = invMaskTexSizes.xyx * r25.zyz;
                  r27.xyz = r29.xyz * r27.xyz;
                  r18.x = materialTexMask.SampleGrad(samplerLinearClamp_s, r28.xyz, r26.x, r27.x).x;
                } else {
                  r18.w = cmp((int)r20.w == 4);
                  if (r18.w != 0) {
                    r18.w = (int)r19.y & 4095;
                    if (12 == 0) r20.z = 0; else if (12+12 < 32) {                     r20.z = (uint)r19.y << (32-(12 + 12)); r20.z = (uint)r20.z >> (32-12);                    } else r20.z = (uint)r19.y >> 12;
                    if (10 == 0) r20.w = 0; else if (10+20 < 32) {                     r20.w = (uint)r19.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                    } else r20.w = (uint)r19.w >> 20;
                    r26.xz = (uint2)r16.ww;
                    r26.y = (uint)r17.w;
                    r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                    r27.zw = float2(-0.5,-0.5) + r26.zy;
                    r27.xy = min(r27.xy, r27.zw);
                    r28.x = (uint)r18.w;
                    r28.y = (uint)r20.z;
                    r27.xy = r28.xy + r27.xy;
                    r27.xy = invBcTexSizes.xy * r27.xy;
                    r27.z = (uint)r20.w;
                    r28.xyz = invBcTexSizes.xyx * r24.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invBcTexSizes.xyx * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r18.x = materialTexBC7.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  } else {
                    r18.w = (int)r19.y & 4095;
                    if (12 == 0) r20.z = 0; else if (12+12 < 32) {                     r20.z = (uint)r19.y << (32-(12 + 12)); r20.z = (uint)r20.z >> (32-12);                    } else r20.z = (uint)r19.y >> 12;
                    if (10 == 0) r20.w = 0; else if (10+20 < 32) {                     r20.w = (uint)r19.w << (32-(10 + 20)); r20.w = (uint)r20.w >> (32-10);                    } else r20.w = (uint)r19.w >> 20;
                    r26.xz = (uint2)r16.ww;
                    r26.y = (uint)r17.w;
                    r27.xy = r20.xy * r26.zy + float2(0.5,0.5);
                    r27.zw = float2(-0.5,-0.5) + r26.zy;
                    r27.xy = min(r27.xy, r27.zw);
                    r28.x = (uint)r18.w;
                    r28.y = (uint)r20.z;
                    r27.xy = r28.xy + r27.xy;
                    r27.xy = invBcTexSizes.zw * r27.xy;
                    r27.z = (uint)r20.w;
                    r28.xyz = invBcTexSizes.zwz * r24.zyz;
                    r28.xyz = r28.xyz * r26.xyz;
                    r29.xyz = invBcTexSizes.zwz * r25.zyz;
                    r26.xyz = r29.xyz * r26.xyz;
                    r18.x = materialTexBC3.SampleGrad(samplerLinearClamp_s, r27.xyz, r28.x, r26.x).x;
                  }
                }
                r26.xyz = r18.xxx * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r16.w = saturate(1 + -r18.x);
                r17.xyz = r17.xyz * r16.www;
              } else {
                r26.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r18.xy = (uint2)r18.zy >> int2(16,16);
              if (r18.x != 0) {
                r16.w = cmp((int)r18.x == 2);
                if (r16.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(112), t36.xxxx
                r14.w = samp0[]..swiz;
                  if (4 == 0) r18.z = 0; else if (4+24 < 32) {                   r18.z = (uint)r19.z << (32-(4 + 24)); r18.z = (uint)r18.z >> (32-4);                  } else r18.z = (uint)r19.z >> 24;
                  if (12 == 0) r18.w = 0; else if (12+12 < 32) {                   r18.w = (uint)r19.z << (32-(12 + 12)); r18.w = (uint)r18.w >> (32-12);                  } else r18.w = (uint)r19.z >> 12;
                  r16.w = 1 << (int)r18.z;
                  r17.w = (uint)r19.z >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.z = (int)r19.z & 4095;
                  r14.w = (int)r14.w & 1023;
                  r27.xz = (uint2)r16.ww;
                  r27.y = (uint)r17.w;
                  r19.yz = r20.xy * r27.zy + float2(0.5,0.5);
                  r20.zw = float2(-0.5,-0.5) + r27.zy;
                  r19.yz = min(r20.zw, r19.yz);
                  r28.xy = (uint2)r18.zw;
                  r18.zw = r28.xy + r19.yz;
                  r28.xy = invMaskTexSizes.xy * r18.zw;
                  r28.z = (uint)r14.w;
                  r29.xyz = invMaskTexSizes.xyx * r24.zyz;
                  r29.xyz = r29.xyz * r27.xyz;
                  r30.xyz = invMaskTexSizes.xyx * r25.zyz;
                  r27.xyz = r30.xyz * r27.xyz;
                  r14.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r28.xyz, r29.x, r27.x).x;
                } else {
                  r16.w = cmp((int)r18.x == 6);
                  r14.w = r16.w ? 0 : 1;
                }
              } else {
                r14.w = 1;
              }
              r14.w = saturate(0.764705896 * r14.w);
              if (r18.y != 0) {
                r16.w = cmp((int)r18.y == 3);
                if (r16.w != 0) {
                  if (4 == 0) r18.x = 0; else if (4+24 < 32) {                   r18.x = (uint)r19.x << (32-(4 + 24)); r18.x = (uint)r18.x >> (32-4);                  } else r18.x = (uint)r19.x >> 24;
                  if (12 == 0) r18.y = 0; else if (12+12 < 32) {                   r18.y = (uint)r19.x << (32-(12 + 12)); r18.y = (uint)r18.y >> (32-12);                  } else r18.y = (uint)r19.x >> 12;
                  if (10 == 0) r18.z = 0; else if (10+10 < 32) {                   r18.z = (uint)r19.w << (32-(10 + 10)); r18.z = (uint)r18.z >> (32-10);                  } else r18.z = (uint)r19.w >> 10;
                  r16.w = 1 << (int)r18.x;
                  r17.w = (uint)r19.x >> 28;
                  r17.w = 1 << (int)r17.w;
                  r18.x = (int)r19.x & 4095;
                  r19.xz = (uint2)r16.ww;
                  r19.y = (uint)r17.w;
                  r20.xy = r20.xy * r19.xy + float2(0.5,0.5);
                  r20.zw = float2(-0.5,-0.5) + r19.zy;
                  r20.xy = min(r20.xy, r20.zw);
                  r27.xy = (uint2)r18.xy;
                  r18.xy = r27.xy + r20.xy;
                  r20.xy = invMaskTexSizes.zw * r18.xy;
                  r20.z = (uint)r18.z;
                  r18.xyz = invMaskTexSizes.zwz * r24.xyz;
                  r18.xyz = r18.xyz * r19.xyz;
                  r24.xyz = invMaskTexSizes.zwz * r25.xyz;
                  r19.xyz = r24.xyz * r19.xyz;
                  r18.xyz = materialTexBC7linear.SampleGrad(samplerLinearClamp_s, r20.xyz, r18.xyz, r19.xyz).xyz;
                } else {
                  r18.xyz = float3(0.5,0.5,1);
                }
                r18.xy = r18.xy * float2(1.9921875,1.9921875) + float2(-1,-1);
                r16.w = dot(r18.xy, r18.xy);
                r16.w = 1 + -r16.w;
                r16.w = max(0, r16.w);
                r16.w = sqrt(r16.w);
                r17.w = r18.z * r18.z;
                r17.w = 0.333333343 * r17.w;
                r17.w = min(1, r17.w);
                r18.z = dot(r23.xyz, r23.xyz);
                r18.z = rsqrt(r18.z);
                r19.xyz = r23.xyz * r18.zzz;
                r18.z = dot(-r22.xyz, -r22.xyz);
                r18.z = rsqrt(r18.z);
                r20.xyz = -r22.xyz * r18.zzz;
                r21.xyz = r21.xyz * r2.yyy;
                r19.xyz = r19.xyz * r2.yyy;
                r20.xyz = r20.xyz * r2.yyy;
                r18.z = -17 * r14.w;
                r18.z = exp2(r18.z);
                r17.w = r18.z + r17.w;
                r17.w = log2(r17.w);
                r17.w = -0.0588235296 * r17.w;
                r14.w = max(0, r17.w);
                r18.yzw = r20.xyz * r18.yyy;
                r18.xyz = r19.xyz * r18.xxx + r18.yzw;
                r18.xyz = r21.xyz * r16.www + r18.xyz;
                r16.w = dot(r18.xyz, r18.xyz);
                r16.w = rsqrt(r16.w);
                r18.xyz = r18.xyz * r16.www;
                r16.w = 1 + -r15.w;
                r19.xyz = r16.www * r15.xyz;
                r15.xyz = r18.xyz * r15.www + r19.xyz;
              }
              r16.w = 1 + -r15.w;
              r18.xyz = r16.www * r11.xyz;
              r11.xyz = r17.xyz * r15.www + r18.xyz;
              r17.xyz = r16.xyz * r16.www;
              r16.xyz = r26.xyz * r15.www + r17.xyz;
              r10.w = r10.w * r16.w + r15.w;
              r16.w = r16.w * r12.w;
              r12.w = r14.w * r15.w + r16.w;
            }
          }
        }
      }
    }
    r12.xyz = r11.xyz;
    r13.xyz = r15.xyz;
    r14.xyz = r16.xyz;
    r5.w = r10.w;
    r6.w = r12.w;
    r7.w = (int)r7.w + 32;
  }
  r5.w = saturate(r5.w);
  r2.x = 1 + -r5.w;
  r0.xyz = r0.xyz * r2.xxx + r12.xyz;
  r0.w = r0.w * r2.x + r5.w;
  r1.yzw = r1.yzw * r2.xxx + r13.xyz;
  r2.y = dot(r1.yzw, r1.yzw);
  r2.y = rsqrt(r2.y);
  r7.xyz = r2.yyy * r1.yzw;
  r1.y = r1.x * r2.x + r6.w;
  r6.xyz = r2.xxx * float3(0.0399999991,0.0399999991,0.0399999991) + r14.xyz;
  r1.z = cmp(0.5 < uvMotionToggle1);
  if (r1.z != 0) {
    r1.z = rowCount * columnCount;
    r1.w = imageTime * r1.z;
    r2.y = gameTime.w * r1.w;
    r2.y = cmp(r2.y >= -r2.y);
    r2.y = r2.y ? r1.w : -r1.w;
    r3.w = 1 / r2.y;
    r3.w = gameTime.w * r3.w;
    r3.w = frac(r3.w);
    r2.y = r3.w * r2.y;
    r1.w = r2.y / r1.w;
    r1.z = r1.w * r1.z;
    r1.z = round(r1.z);
    r1.w = r1.z / columnCount;
    r2.y = columnCount * r1.z;
    r2.y = cmp(r2.y >= -r2.y);
    r2.y = r2.y ? columnCount : -columnCount;
    r3.w = 1 / r2.y;
    r1.z = r3.w * r1.z;
    r1.z = frac(r1.z);
    r1.z = r2.y * r1.z;
    r1.z = trunc(r1.z);
    r1.z = v2.x + r1.z;
    r10.x = r1.z / columnCount;
    r1.z = trunc(r1.w);
    r1.z = v2.y + r1.z;
    r10.y = r1.z / rowCount;
  } else {
    r1.z = dot(-v7.xyz, -v7.xyz);
    r1.z = rsqrt(r1.z);
    r11.xyz = -v7.xyz * r1.zzz;
    r12.x = dot(r11.xyz, r4.xyz);
    r12.y = dot(r11.xyz, r5.xyz);
    r1.z = dot(r11.xyz, r3.xyz);
    r1.w = cmp(0 < r1.z);
    r10.zw = -r12.xy / r1.zz;
    r1.zw = r1.ww ? r10.zw : 0;
    r10.zw = float2(-0.5,-0.5) + v2.xy;
    r2.y = 9.99999975e-06 + layerDepth;
    r1.zw = r2.yy * r1.zw;
    r1.zw = scaleUVs.xy * r1.zw;
    r1.zw = r10.zw * scaleUVs.xy + r1.zw;
    r1.zw = offsetUVs.xy * scaleUVs.xy + r1.zw;
    r2.y = rotateUVs.y * gameTime.w + 1;
    r2.y = rotateUVs.x * r2.y;
    r2.y = 0.0174532924 * r2.y;
    sincos(r2.y, r11.x, r12.x);
    r12.y = r12.x;
    r12.z = r11.x;
    r13.x = dot(r12.yz, r1.zw);
    r12.x = -r11.x;
    r13.y = dot(r12.xy, r1.zw);
    r1.zw = gameTime.ww * scrollUVs.xy;
    r1.zw = r1.zw * scaleUVs.xy + r13.xy;
    r2.y = gameTime.w * zoomRate;
    r2.y = cos(r2.y);
    r2.y = r2.y * 0.5 + 0.5;
    r2.y = 1 + -r2.y;
    r3.w = zoomUVs.y + -zoomUVs.x;
    r2.y = r2.y * r3.w + zoomUVs.x;
    r1.zw = r1.zw / r2.yy;
    r1.zw = float2(0.5,0.5) + r1.zw;
    r10.zw = saturate(r1.zw);
    r10.xy = clampU ? r10.zw : r1.zw;
  }
  r10.xyzw = emissiveMap1.Sample(colorSampler_s, r10.xy).xyzw;
  r10.xyzw = emissiveTint1.xyzw * r10.xyzw;
  r10.xyz = r10.xyz * r10.www;
  r1.z = v3.x + v3.y;
  r1.z = v3.z + r1.z;
  r1.w = flickerSeed.y + r1.z;
  r1.w = frac(r1.w);
  r11.y = gameTime.w * flickerSpeed + r1.w;
  r11.x = flickerSeed.x;
  r1.w = flickerLookupMap.SampleLevel(lookupSampler_s, r11.xy, 0).x;
  r1.w = log2(abs(r1.w));
  r1.w = flickerPower * r1.w;
  r1.w = exp2(r1.w);
  r2.y = flickerRange.y + -flickerRange.x;
  r1.w = r1.w * r2.y + flickerRange.x;
  r10.xyz = r10.xyz * r1.www;
  r1.w = cmp(0.5 < uvMotionToggle2);
  if (r1.w != 0) {
    r1.w = columnCount2 * rowCount2;
    r2.y = imageTime2 * r1.w;
    r3.w = gameTime.w * r2.y;
    r3.w = cmp(r3.w >= -r3.w);
    r3.w = r3.w ? r2.y : -r2.y;
    r4.w = 1 / r3.w;
    r4.w = gameTime.w * r4.w;
    r4.w = frac(r4.w);
    r3.w = r4.w * r3.w;
    r2.y = r3.w / r2.y;
    r1.w = r2.y * r1.w;
    r1.w = round(r1.w);
    r2.y = r1.w / columnCount2;
    r3.w = columnCount2 * r1.w;
    r3.w = cmp(r3.w >= -r3.w);
    r3.w = r3.w ? columnCount2 : -columnCount2;
    r4.w = 1 / r3.w;
    r1.w = r4.w * r1.w;
    r1.w = frac(r1.w);
    r1.w = r3.w * r1.w;
    r1.w = trunc(r1.w);
    r1.w = v2.x + r1.w;
    r11.x = r1.w / columnCount2;
    r1.w = trunc(r2.y);
    r1.w = v2.y + r1.w;
    r11.y = r1.w / rowCount2;
  } else {
    r1.w = dot(-v7.xyz, -v7.xyz);
    r1.w = rsqrt(r1.w);
    r12.xyz = -v7.xyz * r1.www;
    r13.x = dot(r12.xyz, r4.xyz);
    r13.y = dot(r12.xyz, r5.xyz);
    r1.w = dot(r12.xyz, r3.xyz);
    r2.y = cmp(0 < r1.w);
    r11.zw = -r13.xy / r1.ww;
    r11.zw = r2.yy ? r11.zw : 0;
    r12.xy = float2(-0.5,-0.5) + v2.xy;
    r1.w = 9.99999975e-06 + layer2Depth;
    r11.zw = r11.zw * r1.ww;
    r11.zw = scaleUVs2.xy * r11.zw;
    r11.zw = r12.xy * scaleUVs2.xy + r11.zw;
    r11.zw = offsetUVs2.xy * scaleUVs2.xy + r11.zw;
    r1.w = rotateUVs2.y * gameTime.w + 1;
    r1.w = rotateUVs2.x * r1.w;
    r1.w = 0.0174532924 * r1.w;
    sincos(r1.w, r12.x, r13.x);
    r13.y = r13.x;
    r13.z = r12.x;
    r14.x = dot(r13.yz, r11.zw);
    r13.x = -r12.x;
    r14.y = dot(r13.xy, r11.zw);
    r11.zw = gameTime.ww * scrollUVs2.xy;
    r11.zw = r11.zw * scaleUVs2.xy + r14.xy;
    r1.w = gameTime.w * zoomRate2;
    r1.w = cos(r1.w);
    r1.w = r1.w * 0.5 + 0.5;
    r1.w = 1 + -r1.w;
    r2.y = zoomUVs2.y + -zoomUVs2.x;
    r1.w = r1.w * r2.y + zoomUVs2.x;
    r11.zw = r11.zw / r1.ww;
    r11.zw = float2(0.5,0.5) + r11.zw;
    r12.xy = saturate(r11.zw);
    r11.x = clampU2 ? r12.x : r11.z;
    r11.y = clampV2 ? r12.y : r11.w;
  }
  r11.xyzw = emissiveMap2.Sample(colorSampler_s, r11.xy).xyzw;
  r11.xyz = emissiveTint2.xyz * r11.xyz;
  r1.w = hdrScale * r11.w;
  r11.xyz = r11.xyz * r1.www;
  r1.w = clampV2 + r1.z;
  r1.w = frac(r1.w);
  r12.y = gameTime.w * clampV2 + r1.w;
  r12.x = clampV2;
  r1.w = flickerLookupMap.SampleLevel(lookupSampler_s, r12.xy, 0).x;
  r1.w = log2(abs(r1.w));
  r1.w = flickerPower2 * r1.w;
  r1.w = exp2(r1.w);
  r2.y = flickerRange2.y + -flickerRange2.x;
  r1.w = r1.w * r2.y + flickerRange2.x;
  r11.xyz = r11.xyz * r1.www;
  r1.w = 1 + -r11.w;
  r10.xyz = r10.xyz * r1.www + r11.xyz;
  r1.w = cmp(0.5 < uvMotionToggle3);
  if (r1.w != 0) {
    r1.w = columnCount3 * rowCount3;
    r2.y = imageTime3 * r1.w;
    r3.w = gameTime.w * r2.y;
    r3.w = cmp(r3.w >= -r3.w);
    r3.w = r3.w ? r2.y : -r2.y;
    r4.w = 1 / r3.w;
    r4.w = gameTime.w * r4.w;
    r4.w = frac(r4.w);
    r3.w = r4.w * r3.w;
    r2.y = r3.w / r2.y;
    r1.w = r2.y * r1.w;
    r1.w = round(r1.w);
    r2.y = r1.w / columnCount3;
    r3.w = columnCount3 * r1.w;
    r3.w = cmp(r3.w >= -r3.w);
    r3.w = r3.w ? columnCount3 : -columnCount3;
    r4.w = 1 / r3.w;
    r1.w = r4.w * r1.w;
    r1.w = frac(r1.w);
    r1.w = r3.w * r1.w;
    r1.w = trunc(r1.w);
    r1.w = v2.x + r1.w;
    r11.x = r1.w / columnCount3;
    r1.w = trunc(r2.y);
    r1.w = v2.y + r1.w;
    r11.y = r1.w / rowCount3;
  } else {
    r1.w = dot(-v7.xyz, -v7.xyz);
    r1.w = rsqrt(r1.w);
    r12.xyz = -v7.xyz * r1.www;
    r4.x = dot(r12.xyz, r4.xyz);
    r4.y = dot(r12.xyz, r5.xyz);
    r1.w = dot(r12.xyz, r3.xyz);
    r2.y = cmp(0 < r1.w);
    r3.xy = -r4.xy / r1.ww;
    r3.xy = r2.yy ? r3.xy : 0;
    r3.zw = float2(-0.5,-0.5) + v2.xy;
    r1.w = 9.99999975e-06 + layer3Depth;
    r3.xy = r3.xy * r1.ww;
    r3.xy = scaleUVs3.xy * r3.xy;
    r3.xy = r3.zw * scaleUVs3.xy + r3.xy;
    r3.xy = offsetUVs3.xy * scaleUVs3.xy + r3.xy;
    r1.w = rotateUVs3.y * gameTime.w + 1;
    r1.w = rotateUVs3.x * r1.w;
    r1.w = 0.0174532924 * r1.w;
    sincos(r1.w, r4.x, r5.x);
    r5.y = r5.x;
    r5.z = r4.x;
    r12.x = dot(r5.yz, r3.xy);
    r5.x = -r4.x;
    r12.y = dot(r5.xy, r3.xy);
    r3.xy = gameTime.ww * scrollUVs3.xy;
    r3.xy = r3.xy * scaleUVs3.xy + r12.xy;
    r1.w = gameTime.w * zoomRate3;
    r1.w = cos(r1.w);
    r1.w = r1.w * 0.5 + 0.5;
    r1.w = 1 + -r1.w;
    r2.y = zoomUVs3.y + -zoomUVs3.x;
    r1.w = r1.w * r2.y + zoomUVs3.x;
    r3.xy = r3.xy / r1.ww;
    r3.xy = float2(0.5,0.5) + r3.xy;
    r3.zw = saturate(r3.xy);
    r11.x = clampU3 ? r3.z : r3.x;
    r11.y = clampV3 ? r3.w : r3.y;
  }
  r3.xyzw = emissiveMap3.Sample(colorSampler_s, r11.xy).xyzw;
  r3.xyz = emissiveTint3.xyz * r3.xyz;
  r1.w = hdrScale * r3.w;
  r3.xyz = r3.xyz * r1.www;
  r1.z = clampV3 + r1.z;
  r1.z = frac(r1.z);
  r4.y = gameTime.w * clampV3 + r1.z;
  r4.x = clampV3;
  r1.z = flickerLookupMap.SampleLevel(lookupSampler_s, r4.xy, 0).x;
  r1.z = log2(abs(r1.z));
  r1.z = flickerPower3 * r1.z;
  r1.z = exp2(r1.z);
  r1.w = flickerRange3.y + -flickerRange3.x;
  r1.z = r1.z * r1.w + flickerRange3.x;
  r3.xyz = r3.xyz * r1.zzz;
  r1.z = 1 + -r3.w;
  r3.xyz = r10.xyz * r1.zzz + r3.xyz;
  r3.xyz = r3.xyz * r2.xxx;
  r1.z = dot(-v7.xyz, -v7.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = -v7.xyz * r1.zzz;
  r1.w = cmp(isDepthHack != 0);
  r2.xy = (uint2)r2.zw;
  r2.z = dot(r2.yx, float2(0.0671105608,0.00583714992));
  r2.z = frac(r2.z);
  r2.z = 52.9829178 * r2.z;
  r2.z = frac(r2.z);
  r2.z = r2.z * 6.28318548 + gameTick.w;
  sincos(r2.z, r5.x, r10.x);
  r2.x = dot(r2.xy, float2(0.0671105608,0.00583714992));
  r2.x = frac(r2.x);
  r2.x = 52.9829178 * r2.x;
  r2.x = frac(r2.x);
  r2.x = r2.x * 6.28318548 + gameTick.w;
  sincos(r2.x, r2.x, r11.x);
  r1.x = saturate(dot(r7.xyz, r4.xyz));
  r2.y = dot(-r4.xyz, r7.xyz);
  r2.y = r2.y + r2.y;
  r12.xyz = r7.xyz * -r2.yyy + -r4.xyz;
  r2.y = 17 * r1.y;
  r2.y = exp2(r2.y);
  r2.y = 2 + r2.y;
  r2.y = 2 / r2.y;
  r2.z = sqrt(r2.y);
  r2.w = 1 + -r1.y;
  r4.w = 5 * r2.w;
  r5.z = r2.w * 5 + -2.5;
  r5.z = saturate(0.400000006 * r5.z);
  r5.z = 100 * r5.z;
  r11.yz = -r2.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r5.w = exp2(r11.y);
  r5.w = r5.w * r1.x;
  r5.w = 9.1368103 * r5.w;
  r6.w = r4.w * r2.w;
  r6.w = -r6.w * 2.0159049 + r11.z;
  r6.w = exp2(r6.w);
  r6.w = r6.w * r1.x;
  r6.w = 9.70808983 * r6.w;
  r5.w = max(r6.w, r5.w);
  r5.w = max(1.26815999, r5.w);
  r6.w = numRefProbes + -numOverrideProbes;
  r9.w = (int)r6.w & -32;
  r10.w = (int)r6.w + (int)-r9.w;
  r11.y = numRefProbes & -32;
  r11.z = (int)-r11.y + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.x = 1;
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r11.w = r9.w;
  while (true) {
    r13.w = cmp((uint)r11.w >= numRefProbes);
    if (r13.w != 0) break;
    r13.z = (uint)r11.w >> 5;
    r14.xyz = (int3)r9.xyz + (int3)r13.xyz;
    r13.z = visibleProbes.Load(r14.xyzw).x;
    r13.w = cmp((int)r9.w == (int)r11.w);
    bitmask.x = ((~(-1 << r10.w)) << 0) & 0xffffffff;  r14.x = (((uint)0 << 0) & bitmask.x) | ((uint)r13.z & ~bitmask.x);
    r13.z = r13.w ? r14.x : r13.z;
    r13.w = cmp((int)r11.y == (int)r11.w);
    if (r11.z == 0) r14.x = 0; else if (r11.z+0 < 32) {     r14.x = (uint)r13.z << (32-(r11.z + 0)); r14.x = (uint)r14.x >> (32-r11.z);    } else r14.x = (uint)r13.z >> 0;
    r13.z = r13.w ? r14.x : r13.z;
    r13.w = (int)r11.w + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r14.x = r13.z;
    while (true) {
      if (r14.x == 0) break;
      r14.y = firstbitlow((uint)r14.x);
      r14.z = 1 << (int)r14.y;
      r15.w = (int)r14.z & (int)r14.x;
      if (r15.w != 0) {
        r14.x = (int)r14.z ^ (int)r14.x;
        r14.z = (int)r13.w + (int)r14.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r14.z, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r14.z, l(16), t11.xyxx
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
        r24.xyz = -v7.xyz + r24.xyz;
        r25.z = r24.w;
        r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
        r14.z = r24.y ? r24.x : 0;
        r14.z = r24.z ? r14.z : 0;
        if (r14.z != 0) {
          r14.y = (int)r11.w + (int)r14.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r14.y, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r14.y, l(96), t15.xxxy
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r14.y, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r26.xyz = v7.xyz + -r24.yzw;
          r14.z = (int)r25.w & 0x0000ffff;
          if (6 == 0) r15.w = 0; else if (6+25 < 32) {           r15.w = (uint)r25.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);          } else r15.w = (uint)r25.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r14.z, l(0), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.z, l(16), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.z, l(32), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.z, l(48), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.z, l(64), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r14.z, l(80), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
          r16.w = dot(r27.xyz, r26.xyz);
          r16.w = saturate(r16.w + r27.w);
          r18.w = dot(r28.xyz, r26.xyz);
          r18.w = saturate(r18.w + r28.w);
          r16.w = r18.w * r16.w;
          r18.w = dot(r29.xyz, r26.xyz);
          r18.w = saturate(r18.w + r29.w);
          r16.w = r18.w * r16.w;
          r18.w = dot(r30.xyz, r26.xyz);
          r18.w = saturate(r18.w + r30.w);
          r16.w = r18.w * r16.w;
          r18.w = dot(r31.xyz, r26.xyz);
          r18.w = saturate(r18.w + r31.w);
          r16.w = r18.w * r16.w;
          r18.w = dot(r32.xyz, r26.xyz);
          r18.w = saturate(r18.w + r32.w);
          r15.x = r18.w * r16.w;
          r16.w = (int)r17.z & 1;
          r27.xy = r16.ww ? r15.xy : r15.zx;
          r15.x = r17.z;
          r28.xy = r27.xy;
          r16.w = 1;
          while (true) {
            r18.w = cmp((int)r16.w >= (int)r15.w);
            if (r18.w != 0) break;
            r18.w = (int)r14.z + (int)r16.w;
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
            r18.w = dot(r29.xyz, r26.xyz);
            r18.w = saturate(r18.w + r29.w);
            r18.w = r28.x * r18.w;
            r19.w = dot(r30.xyz, r26.xyz);
            r19.w = saturate(r19.w + r30.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r31.xyz, r26.xyz);
            r19.w = saturate(r19.w + r31.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r32.xyz, r26.xyz);
            r19.w = saturate(r19.w + r32.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r33.xyz, r26.xyz);
            r19.w = saturate(r19.w + r33.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r34.xyz, r26.xyz);
            r19.w = saturate(r19.w + r34.w);
            r28.x = r19.w * r18.w;
            r24.w = (uint)r15.x >> 2;
            if (1 == 0) r26.w = 0; else if (1+2 < 32) {             r26.w = (uint)r15.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);            } else r26.w = (uint)r15.x >> 2;
            r27.z = (int)r24.w & 2;
            r27.w = max(r28.y, r28.x);
            r18.w = -r18.w * r19.w + 1;
            r18.w = r28.y * r18.w;
            r17.y = r27.z ? r18.w : r27.w;
            r28.xy = r26.ww ? r28.xy : r17.xy;
            r16.w = (int)r16.w + 1;
            r15.x = r24.w;
          }
          r28.y = saturate(r28.y);
          r14.z = r28.y * r17.w;
          r15.x = cmp(0 < r14.z);
          if (r15.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.y, l(16), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r14.y, l(32), t15.yxwz
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r14.y, l(48), t15.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.y, l(64), t15.zwxy
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.y, l(80), t15.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.y, l(132), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.y, l(148), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.y, l(164), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.y, l(180), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.y, l(196), t15.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r14.y, l(212), t15.xyxx
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
            r23.z = r28.y * r17.w + r23.z;
            r14.y = r14.z * r25.z;
            r25.z = r33.z;
            r14.z = dot(r12.xyz, r25.xyz);
            r15.x = dot(r26.xyz, r25.xyz);
            r15.x = r15.x + -r33.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r5.z);
            r15.x = r15.w ? r15.x : -r15.x;
            r14.z = max(1.00000001e-07, -r14.z);
            r14.z = r15.x / r14.z;
            r14.z = min(131072, abs(r14.z));
            r33.z = r34.z;
            r15.x = dot(r12.xyz, r33.xyz);
            r15.w = dot(r26.xyz, r33.xyz);
            r15.w = r15.w + -r34.w;
            r16.w = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r5.z);
            r15.w = r16.w ? r15.w : -r15.w;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.w / r15.x;
            r14.z = min(abs(r15.x), r14.z);
            r34.z = r35.z;
            r15.x = dot(r12.xyz, r34.xyz);
            r15.w = dot(r26.xyz, r34.xyz);
            r15.w = r15.w + -r35.w;
            r16.w = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r5.z);
            r15.w = r16.w ? r15.w : -r15.w;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.w / r15.x;
            r14.z = min(abs(r15.x), r14.z);
            r35.z = r36.z;
            r15.x = dot(r12.xyz, r35.xyz);
            r15.w = dot(r26.xyz, r35.xyz);
            r15.w = r15.w + -r36.w;
            r16.w = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r5.z);
            r15.w = r16.w ? r15.w : -r15.w;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.w / r15.x;
            r14.z = min(abs(r15.x), r14.z);
            r36.z = r37.x;
            r15.x = dot(r12.xyz, r36.xyz);
            r15.w = dot(r26.xyz, r36.xyz);
            r15.w = r15.w + -r37.y;
            r16.w = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r5.z);
            r15.w = r16.w ? r15.w : -r15.w;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.w / r15.x;
            r14.z = min(abs(r15.x), r14.z);
            r38.zw = r37.zw;
            r15.x = dot(r12.zxy, r38.xzw);
            r15.w = dot(r26.zxy, r38.xzw);
            r15.w = r15.w + -r38.y;
            r16.w = cmp(r15.w >= 0);
            r15.w = max(abs(r15.w), r5.z);
            r15.w = r16.w ? r15.w : -r15.w;
            r15.x = max(1.00000001e-07, -r15.x);
            r15.x = r15.w / r15.x;
            r14.z = min(abs(r15.x), r14.z);
            r25.x = r30.w;
            r25.yz = r31.zw;
            r17.yzw = r25.xyz + r26.xyz;
            r17.yzw = r12.xyz * r14.zzz + r17.yzw;
            r15.x = dot(r17.yzw, r17.yzw);
            r15.x = sqrt(r15.x);
            r14.z = r14.z / r15.x;
            r14.z = r14.z + r14.z;
            r14.z = sqrt(r14.z);
            r14.z = r2.w * 5 + r14.z;
            r14.z = -0.844799995 + r14.z;
            r24.y = r27.z;
            r24.z = r29.x;
            r33.x = dot(r17.yzw, r24.xyz);
            r25.xy = r27.xw;
            r25.z = r29.w;
            r33.y = dot(r17.yzw, r25.xyz);
            r29.x = r27.y;
            r33.z = dot(r17.yzw, r29.xyz);
            if (9 == 0) r15.x = 0; else if (9+16 < 32) {             r15.x = (uint)r25.w << (32-(9 + 16)); r15.x = (uint)r15.x >> (32-9);            } else r15.x = (uint)r25.w >> 16;
            r33.w = (uint)r15.x;
            r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r14.z).xyz;
            r27.x = dot(r26.xyz, r24.xyz);
            r27.y = dot(r26.xyz, r25.xyz);
            r27.z = dot(r26.xyz, r29.xyz);
            r26.xyz = saturate(r27.xyz * r30.xyz + float3(0.5,0.5,0.5));
            r31.z = r32.x;
            r26.xyz = r26.xyz * r31.xyz + r32.yzw;
            r33.x = dot(r7.xyz, r24.xyz);
            r33.y = dot(r7.xyz, r25.xyz);
            r33.z = dot(r7.xyz, r29.xyz);
            r24.xyz = cmp(float3(0,0,0) < r33.xyz);
            r16.z = r24.x ? 0 : 0.5;
            r25.xyz = r26.xyz + r16.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r27.xyz = r33.xyz * r33.xyz;
            r27.xyz = r27.xyz * r14.yyy;
            r18.z = r24.y ? 0 : 0.5;
            r24.xyw = r26.xyz + r18.xyz;
            r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
            r24.xyw = r24.xyw * r27.yyy;
            r24.xyw = r25.xyz * r27.xxx + r24.xyw;
            r19.z = r24.z ? 0 : 0.5;
            r25.xyz = r26.xyz + r19.xyz;
            r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r24.xyz = r25.xyz * r27.zzz + r24.xyw;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
            r26.xyz = r25.xyz * r24.xyz;
            r14.z = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r24.xyz * r25.xyz + r22.xyz;
            r15.x = r14.z * r5.w;
            r17.yzw = r17.yzw * r14.yyy;
            r14.y = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
            r14.y = r5.w * r14.z + r14.y;
            r14.y = r15.x / r14.y;
            r24.x = r22.w;
            r24.yz = r23.xy;
            r23.xyw = r17.zwy * r14.yyy + r24.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r11.w = (int)r11.w + 32;
  }
  r11.y = cmp(r21.w < 1);
  if (r11.y != 0) {
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r11.yzw = r20.xyz;
    r13.w = r21.w;
    r15.w = 0;
    while (true) {
      r16.w = cmp((uint)r15.w >= (uint)r6.w);
      if (r16.w != 0) break;
      r13.z = (uint)r15.w >> 5;
      r14.xyz = (int3)r9.xyz + (int3)r13.xyz;
      r13.z = visibleProbes.Load(r14.xyzw).x;
      r14.x = cmp((int)r9.w == (int)r15.w);
      if (r10.w == 0) r14.y = 0; else if (r10.w+0 < 32) {       r14.y = (uint)r13.z << (32-(r10.w + 0)); r14.y = (uint)r14.y >> (32-r10.w);      } else r14.y = (uint)r13.z >> 0;
      r13.z = r14.x ? r14.y : r13.z;
      r14.x = (int)r15.w + numLights;
      r23.xyzw = r22.xyzw;
      r24.xyz = r11.yzw;
      r14.y = r13.w;
      r14.z = r13.z;
      while (true) {
        if (r14.z == 0) break;
        r16.w = firstbitlow((uint)r14.z);
        r17.z = 1 << (int)r16.w;
        r17.w = (int)r14.z & (int)r17.z;
        if (r17.w != 0) {
          r14.z = (int)r14.z ^ (int)r17.z;
          r17.z = (int)r14.x + (int)r16.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r17.z, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r17.z, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v7.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r17.z = r25.y ? r25.x : 0;
          r17.z = r25.z ? r17.z : 0;
          if (r17.z != 0) {
            r16.w = (int)r15.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r17.zw, r16.w, l(96), t15.xxxy
          r17.z = samp0[]..swiz;
          r17.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v7.xyz + -r25.yzw;
            r18.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r19.w = 0; else if (6+25 < 32) {             r19.w = (uint)r26.w << (32-(6 + 25)); r19.w = (uint)r19.w >> (32-6);            } else r19.w = (uint)r26.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r18.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r18.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r24.w = dot(r28.xyz, r27.xyz);
            r24.w = saturate(r24.w + r28.w);
            r25.w = dot(r29.xyz, r27.xyz);
            r25.w = saturate(r25.w + r29.w);
            r24.w = r25.w * r24.w;
            r25.w = dot(r30.xyz, r27.xyz);
            r25.w = saturate(r25.w + r30.w);
            r24.w = r25.w * r24.w;
            r25.w = dot(r31.xyz, r27.xyz);
            r25.w = saturate(r25.w + r31.w);
            r24.w = r25.w * r24.w;
            r25.w = dot(r32.xyz, r27.xyz);
            r25.w = saturate(r25.w + r32.w);
            r24.w = r25.w * r24.w;
            r25.w = dot(r33.xyz, r27.xyz);
            r25.w = saturate(r25.w + r33.w);
            r15.x = r25.w * r24.w;
            r24.w = (int)r17.z & 1;
            r28.xy = r24.ww ? r15.xy : r15.zx;
            r15.x = r17.z;
            r29.xy = r28.xy;
            r24.w = 1;
            while (true) {
              r25.w = cmp((int)r24.w >= (int)r19.w);
              if (r25.w != 0) break;
              r25.w = (int)r18.w + (int)r24.w;
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
              r25.w = dot(r30.xyz, r27.xyz);
              r25.w = saturate(r25.w + r30.w);
              r25.w = r29.x * r25.w;
              r27.w = dot(r31.xyz, r27.xyz);
              r27.w = saturate(r27.w + r31.w);
              r25.w = r27.w * r25.w;
              r27.w = dot(r32.xyz, r27.xyz);
              r27.w = saturate(r27.w + r32.w);
              r25.w = r27.w * r25.w;
              r27.w = dot(r33.xyz, r27.xyz);
              r27.w = saturate(r27.w + r33.w);
              r25.w = r27.w * r25.w;
              r27.w = dot(r34.xyz, r27.xyz);
              r27.w = saturate(r27.w + r34.w);
              r25.w = r27.w * r25.w;
              r27.w = dot(r35.xyz, r27.xyz);
              r27.w = saturate(r27.w + r35.w);
              r29.x = r27.w * r25.w;
              r28.z = (uint)r15.x >> 2;
              if (1 == 0) r28.w = 0; else if (1+2 < 32) {               r28.w = (uint)r15.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);              } else r28.w = (uint)r15.x >> 2;
              r29.z = (int)r28.z & 2;
              r29.w = max(r29.y, r29.x);
              r25.w = -r25.w * r27.w + 1;
              r25.w = r29.y * r25.w;
              r17.y = r29.z ? r25.w : r29.w;
              r29.xy = r28.ww ? r29.xy : r17.xy;
              r24.w = (int)r24.w + 1;
              r15.x = r28.z;
            }
            r15.x = saturate(r29.y + -r14.y);
            r17.y = r15.x * r17.w;
            r17.z = cmp(0 < r17.y);
            if (r17.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(32), t15.yxwz
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(48), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(64), t15.zwxy
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(80), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(132), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(148), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(164), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r16.w, l(180), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r16.w, l(196), t15.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r16.w, l(212), t15.xyxx
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
              r23.w = r15.x * r17.w + r23.w;
              r15.x = r17.y * r26.z;
              r26.z = r34.z;
              r16.w = dot(r12.xyz, r26.xyz);
              r17.y = dot(r27.xyz, r26.xyz);
              r17.y = r17.y + -r34.w;
              r17.z = cmp(r17.y >= 0);
              r17.y = max(abs(r17.y), r5.z);
              r17.y = r17.z ? r17.y : -r17.y;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.y / r16.w;
              r16.w = min(131072, abs(r16.w));
              r34.z = r35.z;
              r17.y = dot(r12.xyz, r34.xyz);
              r17.z = dot(r27.xyz, r34.xyz);
              r17.z = r17.z + -r35.w;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r5.z);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r35.z = r36.z;
              r17.y = dot(r12.xyz, r35.xyz);
              r17.z = dot(r27.xyz, r35.xyz);
              r17.z = r17.z + -r36.w;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r5.z);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r36.z = r37.z;
              r17.y = dot(r12.xyz, r36.xyz);
              r17.z = dot(r27.xyz, r36.xyz);
              r17.z = r17.z + -r37.w;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r5.z);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r37.z = r38.x;
              r17.y = dot(r12.xyz, r37.xyz);
              r17.z = dot(r27.xyz, r37.xyz);
              r17.z = r17.z + -r38.y;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r5.z);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r39.zw = r38.zw;
              r17.y = dot(r12.zxy, r39.xzw);
              r17.z = dot(r27.zxy, r39.xzw);
              r17.z = r17.z + -r39.y;
              r17.w = cmp(r17.z >= 0);
              r17.z = max(abs(r17.z), r5.z);
              r17.z = r17.w ? r17.z : -r17.z;
              r17.y = max(1.00000001e-07, -r17.y);
              r17.y = r17.z / r17.y;
              r16.w = min(abs(r17.y), r16.w);
              r26.x = r31.w;
              r26.yz = r32.zw;
              r17.yzw = r26.xyz + r27.xyz;
              r17.yzw = r12.xyz * r16.www + r17.yzw;
              r18.w = dot(r17.yzw, r17.yzw);
              r18.w = sqrt(r18.w);
              r16.w = r16.w / r18.w;
              r16.w = r16.w + r16.w;
              r16.w = sqrt(r16.w);
              r16.w = r2.w * 5 + r16.w;
              r16.w = -0.844799995 + r16.w;
              r25.y = r28.z;
              r25.z = r30.x;
              r34.x = dot(r17.yzw, r25.xyz);
              r26.xy = r28.xw;
              r26.z = r30.w;
              r34.y = dot(r17.yzw, r26.xyz);
              r30.x = r28.y;
              r34.z = dot(r17.yzw, r30.xyz);
              if (9 == 0) r17.y = 0; else if (9+16 < 32) {               r17.y = (uint)r26.w << (32-(9 + 16)); r17.y = (uint)r17.y >> (32-9);              } else r17.y = (uint)r26.w >> 16;
              r34.w = (uint)r17.y;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r16.w).xyz;
              r28.x = dot(r27.xyz, r25.xyz);
              r28.y = dot(r27.xyz, r26.xyz);
              r28.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r28.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r7.xyz, r25.xyz);
              r34.y = dot(r7.xyz, r26.xyz);
              r34.z = dot(r7.xyz, r30.xyz);
              r25.xyz = cmp(float3(0,0,0) < r34.xyz);
              r16.z = r25.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r16.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xyz = r34.xyz * r34.xyz;
              r28.xyz = r28.xyz * r15.xxx;
              r18.z = r25.y ? 0 : 0.5;
              r25.xyw = r27.xyz + r18.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r28.yyy;
              r25.xyw = r26.xyz * r28.xxx + r25.xyw;
              r19.z = r25.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r19.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r25.xyz = r26.xyz * r28.zzz + r25.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r25.xyz;
              r16.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.xyz = r25.xyz * r26.xyz + r24.xyz;
              r16.w = r16.z * r5.w;
              r17.yzw = r17.yzw * r15.xxx;
              r15.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r15.x = r5.w * r16.z + r15.x;
              r15.x = r16.w / r15.x;
              r23.xyz = r17.yzw * r15.xxx + r23.xyz;
            }
          }
        }
      }
      r22.xyzw = r23.xyzw;
      r11.yzw = r24.xyz;
      r15.w = (int)r15.w + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r11.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r2.w = max(1, r21.w);
  r2.w = rcp(r2.w);
  r21.w = saturate(r21.w);
  r13.xyz = r20.xyz * r2.www;
  r11.yzw = r21.xyz * r2.www;
  r5.z = cmp(r21.w < 0.99000001);
  if (r5.z != 0) {
    r5.z = 1 + -r21.w;
    r5.w = sunConstants.globalProbeExposure * r5.z;
    r14.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r15.x = globalProbeConstants.data[0].w * r14.x;
    r15.yz = globalProbeConstants.data[1].xy * r14.yz;
    r14.xyz = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r14.xy;
    r15.z = globalProbeConstants.data[2].x * r14.z;
    r14.xyz = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r7.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r16.xyz = r15.wwx + r14.xyz;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r17.xyz = r7.xyz * r7.xyz;
    r17.xyz = r17.xyz * r5.www;
    r18.xyz = r15.wwy + r14.xyz;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r17.yyy;
    r16.xyz = r16.xyz * r17.xxx + r18.xyz;
    r14.xyz = r15.wwz + r14.xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r17.zzz + r16.xyz;
    r7.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r7.xyzw, 6).xyz;
    r14.xyz = r15.xyz * r14.xyz;
    r5.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r13.xyz = r20.xyz * r2.www + r14.xyz;
    r12.w = 0;
    r14.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r4.w).xyz;
    r2.w = sunConstants.globalProbeExposure * r5.z + -r5.w;
    r2.w = r1.y * r2.w + r5.w;
    r11.yzw = r14.xyz * r2.www + r11.yzw;
  }
  r5.zw = r1.xy * float2(0.984375,0.984375) + float2(0.0078125,0.0078125);
  r5.zw = gEnvBRDFGeneric.SampleLevel(samplerLinear_s, r5.zw, 0).xy;
  r14.xyz = r11.zwy * r5.zzz;
  r11.yzw = r11.yzw * r5.www;
  r1.y = sqrt(r2.z);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * r1.y;
  r2.w = 0.5 * r1.y;
  r1.y = -r1.y * 0.5 + 1;
  r4.w = r1.x * r1.y + r2.w;
  r1.y = r4.w * r1.y;
  r2.w = r4.w * r2.w;
  r4.w = dot(r7.xyz, sunConstants.wldDir.xyz);
  r5.z = saturate(r4.w);
  r5.w = cmp(0 >= r5.z);
  if (r5.w != 0) {
    r6.w = 0;
  }
  if (r5.w == 0) {
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r15.xyz = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r15.xyz;
    r15.xyz = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r15.xyz;
    r15.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r15.xyz;
    r5.w = -sunConstants.splitDepthOffset + r15.z;
    r5.w = -r5.w * 6.10351563e-05 + 1;
    r7.w = saturate(r5.w);
    r7.w = cmp(r5.w == r7.w);
    if (r7.w != 0) {
      r7.w = 0;
      r9.w = 0;
      while (true) {
        r10.w = cmp(r7.w >= 3);
        if (r10.w != 0) break;
        r10.w = (uint)r7.w;
        r16.xy = -sunConstants.splitPinTransform[r10.w].xy + r15.xy;
        r12.w = max(abs(r16.x), abs(r16.y));
        r9.w = sunConstants.splitPinTransform[r10.w].z * r12.w;
        r10.w = cmp(r9.w < 1);
        if (r10.w != 0) {
          break;
        }
        r7.w = 1 + r7.w;
        r9.w = 0;
      }
    } else {
      r7.w = 3;
      r9.w = 0;
    }
    r10.w = cmp(r7.w >= 3);
    if (r10.w != 0) {
      r16.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r17.xz = rcp(r16.xx);
      r17.y = -r17.z;
      r16.xyz = r15.xyx * r17.xyz + r16.yzy;
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
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r12.w, l(0), t23.xxxx
    r15.w = samp0[]..swiz;
      r16.w = (int)r15.w & 0x40000000;
      r17.x = (uint)r15.w << 2;
      if (r16.w == 0) {
        r16.w = (int)r15.w & 0x01ffffff;
        r18.x = (int)r12.w + (int)r16.w;
        r12.w = (uint)r15.w >> 25;
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
        r15.w = (int)r18.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.w = r17.z ? r18.z : r15.w;
        r16.w = (uint)r15.w >> 13;
        r15.w = r17.y ? r16.w : r15.w;
        r15.w = (int)r15.w & 8191;
        r19.x = (int)r15.w + (int)r18.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
      r19.z = samp0[]..swiz;
        r18.y = 0;
        r19.y = 1;
        r17.yzw = r12.www ? r18.xyz : r19.xyz;
        r19.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r20.xy = (uint2)r16.zy >> (uint2)r19.yy;
        r20.xy = (int2)r20.xy & int2(1,1);
        r15.w = (int)r17.w & 0xc0000000;
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
        r17.yzw = r15.www ? r17.yzw : r19.xzw;
        r17.yzw = r12.www ? r18.xyz : r17.yzw;
        r12.w = (int)r17.w & 0xc0000000;
        if (r12.w == 0) {
          r12.w = (int)-r17.z + 6;
          r18.xy = (uint2)r16.zy >> (uint2)r12.ww;
          r12.w = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r15.w & ~bitmask.w);
          r15.w = (int)r15.w * 10;
          r12.w = (uint)r12.w >> (uint)r15.w;
          r12.w = (int)r12.w & 1023;
          r18.x = (int)r12.w + (int)r17.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
        r18.w = samp0[]..swiz;
          r18.yz = (int2)r17.zz + int2(1,2);
          r12.w = (int)-r18.y + 6;
          r19.xy = (uint2)r16.zy >> (uint2)r12.ww;
          r12.w = (int)r18.w & 0xc0000000;
          r15.w = (int)r18.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r19.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r19.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
          r16.w = (int)r16.w * 10;
          r15.w = (uint)r15.w >> (uint)r16.w;
          r15.w = (int)r15.w & 1023;
          r19.x = (int)r15.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.z, r19.x, l(0), t23.xxxx
        r19.z = samp0[]..swiz;
          r19.y = r18.z;
          r19.xyz = r12.www ? r18.xyw : r19.xyz;
          r15.w = (int)-r19.y + 6;
          r18.yz = (uint2)r16.zy >> (uint2)r15.ww;
          r15.w = (int)r19.z & 0xc0000000;
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
          r18.yz = r15.ww ? r19.xz : r20.xy;
          r17.yw = r12.ww ? r18.xw : r18.yz;
        }
        r12.w = (int)r17.w & 0xc0000000;
        if (r12.w == 0) {
          if (14 == 0) r15.w = 0; else if (14+15 < 32) {           r15.w = (uint)r17.w << (32-(14 + 15)); r15.w = (uint)r15.w >> (32-14);          } else r15.w = (uint)r17.w >> 15;
          r15.w = (uint)r15.w;
          r15.w = sunConstants.sstLightingConstants.constants.spanInInches * r15.w;
          r15.w = 6.10388815e-05 * r15.w;
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
          r16.x = r16.x * 0.00392156886 + r15.w;
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
          r15.w = r16.y * 1.52590219e-05 + r15.w;
          r17.x = r18.y ? r16.x : r15.w;
        } else {
          r15.w = (int)r17.w & 0x80000000;
          r16.x = (int)r17.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.x, r16.x, l(0), t23.xxxx
        r16.x = samp0[]..swiz;
          r15.w = r15.w ? r16.x : 0;
          r16.x = (uint)r17.w << 2;
          r16.y = (uint)r15.w >> 16;
          r16.y = f16tof32(r16.y);
          r15.w = (int)r15.w & 0x0000ffff;
          r15.w = f16tof32(r15.w);
          r16.x = r15.x * r16.y + r16.x;
          r15.w = r15.y * r15.w + r16.x;
          r17.x = r12.w ? r15.w : r17.x;
        }
      }
      r12.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r15.z;
      r12.w = cmp(r17.x < r12.w);
      r6.w = r12.w ? 0 : 1;
    }
    if (r10.w == 0) {
      if (enableDitheredShadow == 0) {
        r10.w = (uint)r7.w;
        r15.zw = -sunConstants.splitPinTransform[r10.w].xy + r15.xy;
        r15.zw = sunConstants.splitPinTransform[r10.w].zz * r15.zw;
        r16.xy = r15.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.w = (int16)sunConstants.splitArrayOffset;
        r16.z = r10.w + r7.w;
        r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r5.w).x;
        r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r16.xyz, 0).x;
        r10.w = r12.w + r10.w;
        r10.w = saturate(-1 + r10.w);
        r12.w = r10.w * r10.w;
        r6.w = r12.w * r10.w;
      }
      if (enableDitheredShadow != 0) {
        r16.x = -r5.x;
        r10.w = (uint)r7.w;
        r7.w = 1 + r7.w;
        r7.w = min(2, r7.w);
        r7.w = (uint)r7.w;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r15.zw = -sunConstants.splitPinTransform[r10.w].xy + r15.xy;
        r15.zw = sunConstants.splitPinTransform[r10.w].zz * r15.zw;
        r15.zw = r15.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xy = -sunConstants.splitPinTransform[r7.w].xy + r15.xy;
        r15.xy = sunConstants.splitPinTransform[r7.w].zz * r15.xy;
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r16.y = r10.x;
        r16.z = r5.x;
        r12.w = 0;
        r16.w = 0;
        while (true) {
          r17.x = cmp((uint)r16.w >= 8);
          if (r17.x != 0) break;
          r17.x = cmp((uint)r9.w < (uint)r16.w);
          r17.yz = r17.xx ? r15.xy : r15.zw;
          r17.w = r17.x ? sunConstants.splitPinTransform[r7.w].w : sunConstants.splitPinTransform[r10.w].w;
          r17.x = r17.x ? r7.w : r10.w;
          r18.x = dot(icb[r16.w+0].yx, r16.xy);
          r18.y = dot(icb[r16.w+0].yx, r16.yz);
          r18.xy = r18.xy * r17.ww + r17.yz;
          r17.x = (int)r17.x + (int16)sunConstants.splitArrayOffset;
          r18.z = (uint)r17.x;
          r17.x = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r5.w).x;
          r17.y = gTransShadowmapArray.SampleLevel(samp0_s, r18.xyz, 0).x;
          r17.x = r17.x + r17.y;
          r17.x = saturate(-1 + r17.x);
          r12.w = r17.x * 0.125 + r12.w;
          r16.w = (int)r16.w + 1;
        }
        r5.w = r12.w * r12.w;
        r6.w = r5.w * r12.w;
      }
    }
  }
  r5.w = cmp(0 < r5.z);
  if (r5.w != 0) {
    r5.w = cmp(0 < r6.w);
    if (r5.w != 0) {
      r5.w = sunConstants.specScale * r2.y;
      r5.w = r5.w * r5.z;
      if (sunConstants.sunCookieIndex != 0) {
        r8.w = 1;
        r7.w = dot(sunConstants.sunCookieTransform[0].xyzw, r8.xyzw);
        r8.x = dot(sunConstants.sunCookieTransform[1].xyzw, r8.xyzw);
        r15.x = frac(r7.w);
        r15.y = frac(r8.x);
        r7.w = -1 + (int14)sunConstants.sunCookieIndex;
        r15.z = (uint)r7.w;
        r8.xyz = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
        r8.xyz = float3(-1,-1,-1) + r8.xyz;
        r8.xyz = sunConstants.sunCookieIntensity * r8.xyz + float3(1,1,1);
        r8.xyz = sunConstants.color.xyz * r8.xyz;
      } else {
        r8.xyz = sunConstants.color.xyz;
      }
      r7.w = viewmodelSunShadowRaw >> 16;
      r8.w = cmp(0 < (uint)r7.w);
      r8.w = r1.w ? r8.w : 0;
      if (r8.w != 0) {
        r7.w = (int)r7.w + numLights;
        r7.w = (int)r7.w + -1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(52), t12.xxxx
      r8.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(68), t12.xyzw
      r15.x = samp0[]..swiz;
      r15.y = samp0[]..swiz;
      r15.z = samp0[]..swiz;
      r15.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(84), t12.xyzw
      r16.x = samp0[]..swiz;
      r16.y = samp0[]..swiz;
      r16.z = samp0[]..swiz;
      r16.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(132), t12.xyzw
      r17.x = samp0[]..swiz;
      r17.y = samp0[]..swiz;
      r17.z = samp0[]..swiz;
      r17.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(148), t12.xyzw
      r18.x = samp0[]..swiz;
      r18.y = samp0[]..swiz;
      r18.z = samp0[]..swiz;
      r18.w = samp0[]..swiz;
        r9.w = abs(r4.w) * -0.200000003 + 0.400000006;
        r19.xyz = r7.xyz * r9.www + v7.xyz;
        r19.w = 1;
        r15.x = dot(r15.xyzw, r19.xyzw);
        r15.y = dot(r16.xyzw, r19.xyzw);
        r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.xy = r15.xy + r18.zw;
        r15.xy = r15.xy * r18.xy;
        r15.zw = r8.ww / r17.xz;
        r16.xy = float2(1,1) + -r15.zw;
        r16.xy = cmp(r15.xy >= r16.xy);
        r15.zw = cmp(r15.zw >= r15.xy);
        r15.zw = (int2)r15.zw | (int2)r16.xy;
        r9.w = (int)r15.w | (int)r15.z;
        if (r9.w == 0) {
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.w, l(28), t12.xxxx
        r9.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(100), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.zw, r7.w, l(164), t12.xxxy
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
          r7.w = dot(r16.xyzw, r19.xyzw);
          r15.xy = saturate(r15.xy);
          r16.xy = r15.xy * r17.xz + r17.yw;
          r7.w = r7.w + r15.z;
          r7.w = r7.w / r15.w;
          r7.w = max(6.10351563e-05, r7.w);
          r9.w = (int)r9.w & 0x0000ffff;
          if (enableDitheredShadow != 0) {
            r15.x = -r5.x;
            r17.z = (uint)r9.w;
            r15.y = r10.x;
            r15.z = r5.x;
            r10.w = 0;
            r12.w = 0;
            while (true) {
              r15.w = cmp((int)r12.w >= 8);
              if (r15.w != 0) break;
              r18.x = dot(icb[r12.w+0].yx, r15.xy);
              r18.y = dot(icb[r12.w+0].yx, r15.yz);
              r17.xy = r18.xy * r8.ww + r16.xy;
              r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
              r10.w = r15.w * 0.125 + r10.w;
              r12.w = (int)r12.w + 1;
            }
          } else {
            r16.z = (uint)r9.w;
            r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
          }
          r7.w = r10.w * r10.w;
          r7.w = r7.w * r10.w;
        } else {
          r7.w = 1;
        }
        r6.w = r7.w * r6.w;
      } else {
        r7.w = viewmodelSunShadowRaw & 0x0000ffff;
        r8.w = cmp(0 < (uint)r7.w);
        r9.w = ~(int)r1.w;
        r8.w = r8.w ? r9.w : 0;
        if (r8.w != 0) {
          r7.w = (int)r7.w + numLights;
          r7.w = (int)r7.w + -1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r7.w, l(52), t12.xxxx
        r8.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(68), t12.xyzw
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
        r15.z = samp0[]..swiz;
        r15.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(84), t12.xyzw
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
        r16.z = samp0[]..swiz;
        r16.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(132), t12.xyzw
        r17.x = samp0[]..swiz;
        r17.y = samp0[]..swiz;
        r17.z = samp0[]..swiz;
        r17.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r7.w, l(148), t12.xyzw
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
        r18.z = samp0[]..swiz;
        r18.w = samp0[]..swiz;
          r9.w = abs(r4.w) * -0.200000003 + 0.400000006;
          r19.xyz = r7.xyz * r9.www + v7.xyz;
          r19.w = 1;
          r15.x = dot(r15.xyzw, r19.xyzw);
          r15.y = dot(r16.xyzw, r19.xyzw);
          r15.xy = r15.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r15.xy = r15.xy + r18.zw;
          r15.xy = r15.xy * r18.xy;
          r15.zw = r8.ww / r17.xz;
          r16.xy = float2(1,1) + -r15.zw;
          r16.xy = cmp(r15.xy >= r16.xy);
          r15.zw = cmp(r15.zw >= r15.xy);
          r15.zw = (int2)r15.zw | (int2)r16.xy;
          r9.w = (int)r15.w | (int)r15.z;
          if (r9.w == 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r7.w, l(28), t12.xxxx
          r9.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r7.w, l(100), t12.xyzw
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          r16.z = samp0[]..swiz;
          r16.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.zw, r7.w, l(164), t12.xxxy
          r15.z = samp0[]..swiz;
          r15.w = samp0[]..swiz;
            r7.w = dot(r16.xyzw, r19.xyzw);
            r15.xy = saturate(r15.xy);
            r16.xy = r15.xy * r17.xz + r17.yw;
            r7.w = r7.w + r15.z;
            r7.w = r7.w / r15.w;
            r7.w = max(6.10351563e-05, r7.w);
            r9.w = (int)r9.w & 0x0000ffff;
            if (enableDitheredShadow != 0) {
              r15.x = -r5.x;
              r17.z = (uint)r9.w;
              r15.y = r10.x;
              r15.z = r5.x;
              r10.w = 0;
              r12.w = 0;
              while (true) {
                r15.w = cmp((int)r12.w >= 8);
                if (r15.w != 0) break;
                r18.x = dot(icb[r12.w+0].yx, r15.xy);
                r18.y = dot(icb[r12.w+0].yx, r15.yz);
                r17.xy = r18.xy * r8.ww + r16.xy;
                r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r7.w).x;
                r10.w = r15.w * 0.125 + r10.w;
                r12.w = (int)r12.w + 1;
              }
            } else {
              r16.z = (uint)r9.w;
              r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r7.w).x;
            }
            r7.w = r10.w * r10.w;
            r7.w = r7.w * r10.w;
          } else {
            r7.w = 1;
          }
          r6.w = r7.w * r6.w;
        }
      }
      r7.w = -r1.x * 0.5 + 1;
      r7.w = -r5.z * r7.w + 1;
      r7.w = r7.w * r7.w;
      r7.w = -r7.w * 0.620000005 + 0.620000005;
      r7.w = r7.w + -r5.z;
      r7.w = r2.z * r7.w + r5.z;
      r7.w = r7.w * r6.w;
      r4.w = cmp(0 < r4.w);
      r15.xyz = r7.www * r8.xyz + r13.xyz;
      r16.xyz = -v7.xyz * r1.zzz + sunConstants.wldDir.xyz;
      r1.z = dot(r16.xyz, r16.xyz);
      r1.z = rsqrt(r1.z);
      r16.xyz = r16.xyz * r1.zzz;
      r1.z = dot(r16.xyz, r4.xyz);
      r7.w = dot(r7.xyz, r16.xyz);
      r8.w = abs(r7.w) * r2.y + -abs(r7.w);
      r7.w = abs(r7.w) * r8.w + 1;
      r5.z = r5.z * r1.y + r2.w;
      r7.w = r7.w * r7.w;
      r5.z = r7.w * r5.z;
      r5.z = rcp(r5.z);
      r5.z = r5.z * r5.w;
      r5.z = r6.w * r5.z;
      r5.z = 0.25 * r5.z;
      r16.xyz = r5.zzz * r8.xyz + r11.yzw;
      r1.z = saturate(1 + -r1.z);
      r5.w = r1.z * r1.z;
      r5.w = r5.w * r5.w;
      r1.z = r5.w * r1.z;
      r1.z = r5.z * r1.z;
      r8.xyz = r1.zzz * r8.yzx + r14.xyz;
      r15.w = r8.z;
      r13.w = r14.z;
      r13.xyzw = r4.wwww ? r15.xyzw : r13.xyzw;
      r8.zw = r16.xy;
      r14.zw = r11.yz;
      r8.xyzw = r4.wwww ? r8.xyzw : r14.xyzw;
      r11.w = r4.w ? r16.z : r11.w;
      r14.z = r13.w;
      r14.xy = r8.xy;
      r11.yz = r8.zw;
    }
  }
  r8.x = -r5.x;
  r1.z = ~(int)r1.w;
  r1.x = -r1.x * 0.5 + 1;
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v7.xyz;
  r17.w = 1;
  r18.w = 1;
  r8.z = r5.x;
  r19.w = 1;
  r20.z = 1;
  r21.w = 1;
  r8.yw = r10.xx;
  r5.y = r8.w;
  r22.w = 1;
  r10.y = r8.x;
  r10.z = r5.x;
  r23.w = 1;
  r24.x = r10.x;
  r24.y = r8.x;
  r24.z = r5.x;
  r25.x = r10.x;
  r25.y = r8.x;
  r25.z = r5.x;
  r26.x = r10.x;
  r26.y = r8.x;
  r26.z = r5.x;
  r27.xyz = r13.xyz;
  r28.xyz = r14.zxy;
  r29.xyz = r11.yzw;
  r4.w = enableDitheredShadow;
  r5.z = 0;
  while (true) {
    r5.w = cmp((uint)r5.z >= numLights);
    if (r5.w != 0) break;
    r15.z = (uint)r5.z >> 5;
    r16.xyz = (int3)r9.xyz + (int3)r15.xyz;
    r5.w = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r27.xyz;
    r30.xyz = r28.xyz;
    r31.xyz = r29.xyz;
    r6.w = r4.w;
    r7.w = r5.w;
    while (true) {
      if (r7.w == 0) break;
      r9.w = firstbitlow((uint)r7.w);
      r10.w = 1 << (int)r9.w;
      r12.w = (int)r7.w & (int)r10.w;
      if (r12.w != 0) {
        r7.w = (int)r7.w ^ (int)r10.w;
        r9.w = (int)r5.z + (int)r9.w;
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
        r10.w = r32.y ? r32.x : 0;
        r10.w = r32.z ? r10.w : 0;
        if (r10.w != 0) {
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
          if (3 == 0) r10.w = 0; else if (3+24 < 32) {           r10.w = (uint)r33.w << (32-(3 + 24)); r10.w = (uint)r10.w >> (32-3);          } else r10.w = (uint)r33.w >> 24;
          switch (r10.w) {
            case 4 :            r10.w = cmp(0 < r38.x);
            r39.xy = r37.zw;
            r39.z = r38.w;
            r40.xyz = -r39.xyz * float3(0.5,0.5,0.5) + r32.yzw;
            r41.xyz = -v7.xyz + r40.xyz;
            r12.w = dot(r39.xyz, r41.xyz);
            r13.w = saturate(-r12.w / r38.x);
            r42.xyz = r13.www * r39.xyz + r40.xyz;
            r42.xyz = r10.www ? r42.xyz : r32.yzw;
            r42.xyz = -v7.xyz + r42.xyz;
            r14.w = dot(r42.xyz, r42.xyz);
            r15.z = rsqrt(r14.w);
            r42.xyz = r42.xyz * r15.zzz;
            r15.z = dot(r7.xyz, r42.xyz);
            r15.w = saturate(r15.z);
            r20.w = cmp(0 < r15.w);
            if (r20.w != 0) {
              r20.w = sqrt(r14.w);
              r24.w = r35.x * r35.x;
              r14.w = r24.w / r14.w;
              r14.w = min(1, r14.w);
              r42.xy = saturate(r20.ww * r34.xz + r34.yw);
              r42.zw = r42.xy * r42.xy;
              r42.xy = r42.xy * float2(-2,-2) + float2(3,3);
              r42.xy = r42.zw * r42.xy;
              r14.w = r42.x * r14.w;
              r14.w = r14.w * r42.y;
              r20.w = cmp(0 < r14.w);
              if (r20.w != 0) {
                if (3 == 0) r20.w = 0; else if (3+27 < 32) {                 r20.w = (uint)r33.w << (32-(3 + 27)); r20.w = (uint)r20.w >> (32-3);                } else r20.w = (uint)r33.w >> 27;
                r20.w = cmp((int)r20.w != 1);
                if (r20.w != 0) {
                  r20.w = abs(r15.z) * -0.200000003 + 0.400000006;
                  r42.xyz = r7.xyz * r20.www + v7.xyz;
                  r42.xyz = r42.xyz + -r36.xyz;
                  r20.w = max(abs(r42.y), abs(r42.z));
                  r20.w = max(abs(r42.x), r20.w);
                  r20.w = r37.x / r20.w;
                  r20.w = r20.w + r37.y;
                  r24.w = dot(r42.xyz, r42.xyz);
                  r24.w = rsqrt(r24.w);
                  r20.w = max(6.10351563e-05, r20.w);
                  r25.w = (int)r33.w & 0x0000ffff;
                  r43.w = (uint)r25.w;
                  r25.w = 0;
                  r26.w = 0;
                  while (true) {
                    r27.w = cmp((int)r26.w >= 8);
                    if (r27.w != 0) break;
                    r44.y = dot(icb[r26.w+0].yx, r8.xy);
                    r44.z = dot(icb[r26.w+0].yx, r8.yz);
                    r44.yz = r44.yz * r35.yy;
                    r44.x = r44.y * r11.x;
                    r44.w = r44.y * r2.x;
                    r43.xyz = r42.xyz * r24.www + r44.xzw;
                    r27.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r43.xyzw, r20.w).x;
                    r25.w = r27.w * 0.125 + r25.w;
                    r26.w = (int)r26.w + 1;
                  }
                } else {
                  r25.w = 1;
                }
                r14.w = r25.w * r14.w;
                r20.w = cmp(0 < r14.w);
                if (r20.w != 0) {
                  r20.w = r33.x * r2.y;
                  r20.w = 0.25 * r20.w;
                  r24.w = dot(r39.xyz, r12.xyz);
                  r26.w = dot(r12.xyz, r41.xyz);
                  r27.w = -r24.w * r24.w + r38.x;
                  r12.w = r24.w * r26.w + -r12.w;
                  r12.w = saturate(r12.w / r27.w);
                  r24.w = r27.w / r38.x;
                  r24.w = 10 * r24.w;
                  r24.w = min(1, r24.w);
                  r12.w = r12.w + -r13.w;
                  r12.w = r24.w * r12.w + r13.w;
                  r39.xyz = r12.www * r39.xyz + r40.xyz;
                  r39.xyz = r10.www ? r39.xyz : r32.yzw;
                  r39.xyz = -v7.xyz + r39.xyz;
                  r10.w = dot(r39.xyz, r39.xyz);
                  r10.w = rsqrt(r10.w);
                  r40.xyz = r39.xyz * r10.www;
                  if (4 == 0) r12.w = 0; else if (4+16 < 32) {                   r12.w = (uint)r33.w << (32-(4 + 16)); r12.w = (uint)r12.w >> (32-4);                  } else r12.w = (uint)r33.w >> 16;
                  r13.w = cmp(0 < (uint)r12.w);
                  r13.w = r1.w ? r13.w : 0;
                  if (r13.w != 0) {
                    r12.w = (int)r12.w + numLights;
                    r12.w = (int)r12.w + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(52), t12.xxxx
                  r13.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(100), t12.xyzw
                  r41.x = samp0[]..swiz;
                  r41.y = samp0[]..swiz;
                  r41.z = samp0[]..swiz;
                  r41.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(116), t12.xyzw
                  r42.x = samp0[]..swiz;
                  r42.y = samp0[]..swiz;
                  r42.z = samp0[]..swiz;
                  r42.w = samp0[]..swiz;
                    r24.w = abs(r15.z) * -0.200000003 + 0.400000006;
                    r18.xyz = r7.xyz * r24.www + v7.xyz;
                    r24.w = dot(r41.xyzw, r18.xyzw);
                    r26.w = dot(r42.xyzw, r18.xyzw);
                    r27.w = cmp(r26.w < r24.w);
                    if (r27.w == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(68), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(84), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(132), t12.xyzw
                    r43.x = samp0[]..swiz;
                    r43.y = samp0[]..swiz;
                    r43.z = samp0[]..swiz;
                    r43.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(148), t12.xyzw
                    r44.x = samp0[]..swiz;
                    r44.y = samp0[]..swiz;
                    r44.z = samp0[]..swiz;
                    r44.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r12.w, l(164), t12.xyxx
                    r45.x = samp0[]..swiz;
                    r45.y = samp0[]..swiz;
                      r41.x = dot(r41.xyzw, r18.xyzw);
                      r41.y = dot(r42.xyzw, r18.xyzw);
                      r18.xy = r41.xy / r26.ww;
                      r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r18.xy = r18.xy + r44.zw;
                      r18.xy = r18.xy * r44.xy;
                      r41.xy = r13.ww / r43.xz;
                      r41.zw = float2(1,1) + -r41.xy;
                      r41.zw = cmp(r18.xy >= r41.zw);
                      r41.xy = cmp(r41.xy >= r18.xy);
                      r41.xy = (int2)r41.xy | (int2)r41.zw;
                      r18.z = (int)r41.y | (int)r41.x;
                      r18.xy = saturate(r18.xy);
                      r41.xy = r18.xy * r43.xz + r43.yw;
                      r18.x = r45.y * r26.w;
                      r18.y = r45.x * r26.w + r24.w;
                      r18.x = r18.y / r18.x;
                    } else {
                      r18.z = -1;
                    }
                    r18.y = (int)r27.w | (int)r18.z;
                    if (r18.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(28), t12.xxxx
                    r12.w = samp0[]..swiz;
                      r18.x = max(6.10351563e-05, r18.x);
                      r12.w = (int)r12.w & 0x0000ffff;
                      if (r6.w != 0) {
                        r42.z = (uint)r12.w;
                        r18.yz = float2(0,0);
                        while (true) {
                          r24.w = cmp((int)r18.z >= 8);
                          if (r24.w != 0) break;
                          r43.x = dot(icb[r18.z+0].yx, r8.xw);
                          r43.y = dot(icb[r18.z+0].xy, r5.xy);
                          r42.xy = r43.xy * r13.ww + r41.xy;
                          r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r42.xyz, r18.x).x;
                          r18.y = r24.w * 0.125 + r18.y;
                          r18.z = (int)r18.z + 1;
                        }
                      } else {
                        r41.z = (uint)r12.w;
                        r18.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r18.x).x;
                      }
                      r12.w = r18.y * r18.y;
                      r12.w = r12.w * r18.y;
                    } else {
                      r12.w = 1;
                    }
                    r14.w = r14.w * r12.w;
                  } else {
                    if (4 == 0) r12.w = 0; else if (4+20 < 32) {                     r12.w = (uint)r33.w << (32-(4 + 20)); r12.w = (uint)r12.w >> (32-4);                    } else r12.w = (uint)r33.w >> 20;
                    r13.w = cmp(0 < (uint)r12.w);
                    r13.w = r13.w ? r1.z : 0;
                    if (r13.w != 0) {
                      r12.w = (int)r12.w + numLights;
                      r12.w = (int)r12.w + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(52), t12.xxxx
                    r13.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(100), t12.xyzw
                    r41.x = samp0[]..swiz;
                    r41.y = samp0[]..swiz;
                    r41.z = samp0[]..swiz;
                    r41.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(116), t12.xyzw
                    r42.x = samp0[]..swiz;
                    r42.y = samp0[]..swiz;
                    r42.z = samp0[]..swiz;
                    r42.w = samp0[]..swiz;
                      r18.x = abs(r15.z) * -0.200000003 + 0.400000006;
                      r19.xyz = r7.xyz * r18.xxx + v7.xyz;
                      r18.x = dot(r41.xyzw, r19.xyzw);
                      r18.z = dot(r42.xyzw, r19.xyzw);
                      r24.w = cmp(r18.z < r18.x);
                      if (r24.w == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r12.w, l(68), t12.xyzw
                      r41.x = samp0[]..swiz;
                      r41.y = samp0[]..swiz;
                      r41.z = samp0[]..swiz;
                      r41.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r12.w, l(84), t12.xyzw
                      r42.x = samp0[]..swiz;
                      r42.y = samp0[]..swiz;
                      r42.z = samp0[]..swiz;
                      r42.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r12.w, l(132), t12.xyzw
                      r43.x = samp0[]..swiz;
                      r43.y = samp0[]..swiz;
                      r43.z = samp0[]..swiz;
                      r43.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r12.w, l(148), t12.xyzw
                      r44.x = samp0[]..swiz;
                      r44.y = samp0[]..swiz;
                      r44.z = samp0[]..swiz;
                      r44.w = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r45.xy, r12.w, l(164), t12.xyxx
                      r45.x = samp0[]..swiz;
                      r45.y = samp0[]..swiz;
                        r41.x = dot(r41.xyzw, r19.xyzw);
                        r41.y = dot(r42.xyzw, r19.xyzw);
                        r19.xy = r41.xy / r18.zz;
                        r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                        r19.xy = r19.xy + r44.zw;
                        r19.xy = r19.xy * r44.xy;
                        r41.xy = r13.ww / r43.xz;
                        r41.zw = float2(1,1) + -r41.xy;
                        r41.zw = cmp(r19.xy >= r41.zw);
                        r41.xy = cmp(r41.xy >= r19.xy);
                        r41.xy = (int2)r41.xy | (int2)r41.zw;
                        r19.z = (int)r41.y | (int)r41.x;
                        r19.xy = saturate(r19.xy);
                        r41.xy = r19.xy * r43.xz + r43.yw;
                        r19.x = r45.y * r18.z;
                        r18.x = r45.x * r18.z + r18.x;
                        r18.x = r18.x / r19.x;
                      } else {
                        r19.z = -1;
                      }
                      r18.z = (int)r24.w | (int)r19.z;
                      if (r18.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(28), t12.xxxx
                      r12.w = samp0[]..swiz;
                        r18.x = max(6.10351563e-05, r18.x);
                        r12.w = (int)r12.w & 0x0000ffff;
                        if (r6.w != 0) {
                          r19.z = (uint)r12.w;
                          r18.z = 0;
                          r24.w = 0;
                          while (true) {
                            r26.w = cmp((int)r24.w >= 8);
                            if (r26.w != 0) break;
                            r42.x = dot(icb[r24.w+0].xy, r10.xy);
                            r42.y = dot(icb[r24.w+0].yx, r10.xz);
                            r19.xy = r42.xy * r13.ww + r41.xy;
                            r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r18.x).x;
                            r18.z = r19.x * 0.125 + r18.z;
                            r24.w = (int)r24.w + 1;
                          }
                        } else {
                          r41.z = (uint)r12.w;
                          r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r41.xyz, r18.x).x;
                        }
                        r12.w = r18.z * r18.z;
                        r12.w = r12.w * r18.z;
                      } else {
                        r12.w = 1;
                      }
                      r14.w = r14.w * r12.w;
                    }
                  }
                  r12.w = -r15.w * r1.x + 1;
                  r12.w = r12.w * r12.w;
                  r12.w = -r12.w * 0.620000005 + 0.620000005;
                  r12.w = r12.w + -r15.w;
                  r12.w = r2.z * r12.w + r15.w;
                  r12.w = r12.w * r14.w;
                  r33.x = r32.x;
                  r13.w = cmp(0 < r15.z);
                  r19.xyz = r12.www * r33.xyz + r16.xyz;
                  r12.w = saturate(dot(r7.xyz, r40.xyz));
                  r39.xyz = r39.xyz * r10.www + r4.xyz;
                  r10.w = dot(r39.xyz, r39.xyz);
                  r10.w = rsqrt(r10.w);
                  r39.xyz = r39.xyz * r10.www;
                  r10.w = dot(r39.xyz, r4.xyz);
                  r15.z = dot(r7.xyz, r39.xyz);
                  r15.w = abs(r15.z) * r2.y + -abs(r15.z);
                  r15.z = abs(r15.z) * r15.w + 1;
                  r15.w = r12.w * r1.y + r2.w;
                  r15.z = r15.z * r15.z;
                  r15.z = r15.z * r15.w;
                  r15.z = rcp(r15.z);
                  r12.w = r12.w * r20.w;
                  r12.w = r15.z * r12.w;
                  r12.w = r12.w * r14.w;
                  r39.xyz = r12.www * r33.xyz + r31.xyz;
                  r10.w = saturate(1 + -r10.w);
                  r14.w = r10.w * r10.w;
                  r14.w = r14.w * r14.w;
                  r10.w = r14.w * r10.w;
                  r10.w = r12.w * r10.w;
                  r40.xyz = r10.www * r33.xyz + r30.xyz;
                  r16.xyz = r13.www ? r19.xyz : r16.xyz;
                  r30.xyz = r13.www ? r40.xyz : r30.xyz;
                  r31.xyz = r13.www ? r39.xyz : r31.xyz;
                }
              }
            }
            break;
            case 2 :            r19.xy = r35.zw;
            r19.z = r36.w;
            r19.xyz = -v7.xyz + r19.xyz;
            r10.w = dot(r19.xyz, r19.xyz);
            r10.w = rsqrt(r10.w);
            r39.xyz = r19.xyz * r10.www;
            r12.w = dot(r7.xyz, r39.xyz);
            r13.w = saturate(r12.w);
            r14.w = cmp(0 < r13.w);
            if (r14.w != 0) {
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
              r14.w = dot(r41.xyzw, r17.xyzw);
              r15.z = cmp(r14.w < 1);
              if (r15.z != 0) {
                r42.xyz = float3(1,1,1);
                r15.z = 0;
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
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.w, r9.w, l(236), t12.xxxx
              r15.w = samp0[]..swiz;
                r46.xyz = -v7.xyz + r32.yzw;
                r18.x = r35.x * r35.x;
                r20.w = dot(r46.xyz, r46.xyz);
                r18.x = r18.x / r20.w;
                r18.x = min(1, r18.x);
                r34.xy = saturate(r14.ww * r34.xz + r34.yw);
                r34.zw = r34.xy * r34.xy;
                r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                r34.xy = r34.zw * r34.xy;
                r18.x = r34.x * r18.x;
                r18.x = r18.x * r34.y;
                r36.w = r37.x;
                r34.x = dot(r36.xyzw, r17.xyzw);
                r46.xyz = r37.yzw;
                r46.w = r38.w;
                r34.y = dot(r46.xyzw, r17.xyzw);
                r20.xy = r34.xy / r14.ww;
                r14.w = cmp(r43.w < 0.00048828125);
                if (r14.w != 0) {
                  r44.y = r45.x;
                  r34.xy = saturate(abs(r20.xy) * r44.zw + r44.xy);
                  r34.zw = r34.xy * r34.xy;
                  r34.xy = r34.xy * float2(-2,-2) + float2(3,3);
                  r34.xy = r34.zw * r34.xy;
                  r14.w = r34.x * r34.y;
                } else {
                  r43.w = r44.y;
                  r34.xyzw = saturate(r43.xyzw * abs(r20.yyxx));
                  r34.xyzw = log2(r34.xyzw);
                  r34.xyzw = r44.xxxx * r34.xyzw;
                  r34.xyzw = exp2(r34.xyzw);
                  r34.xy = r34.xy + r34.zw;
                  r34.xy = log2(r34.xy);
                  r34.xy = r45.xx * r34.xy;
                  r34.xy = exp2(r34.xy);
                  r20.w = r44.z * r34.x;
                  r24.w = r44.w * r34.y + -1;
                  r20.w = r44.w * r34.y + -r20.w;
                  r20.w = saturate(r24.w / r20.w);
                  r24.w = r20.w * r20.w;
                  r20.w = r20.w * -2 + 3;
                  r14.w = r24.w * r20.w;
                }
                r15.z = r18.x * r14.w;
                r14.w = (int)r15.w & 255;
                if (r14.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyz, r9.w, l(220), t12.xyzx
                r34.x = samp0[]..swiz;
                r34.y = samp0[]..swiz;
                r34.z = samp0[]..swiz;
                  r15.w = dot(r45.yzw, r20.xyz);
                  r18.x = dot(r34.xyz, r20.xyz);
                  r34.x = frac(r15.w);
                  r34.y = frac(r18.x);
                  r14.w = (int)r14.w + -1;
                  r34.z = (uint)r14.w;
                  r42.xyz = gCookieArray.SampleLevel(samplerLinear_s, r34.xyz, 0).xyz;
                } else {
                  r42.xyz = float3(1,1,1);
                }
              }
              r32.yz = r33.yz;
              r20.xyw = r32.xyz * r42.xyz;
              r14.w = cmp(0 < r15.z);
              if (r14.w != 0) {
                if (3 == 0) r14.w = 0; else if (3+27 < 32) {                 r14.w = (uint)r33.w << (32-(3 + 27)); r14.w = (uint)r14.w >> (32-3);                } else r14.w = (uint)r33.w >> 27;
                r14.w = cmp((int)r14.w != 1);
                if (r14.w != 0) {
                  r14.w = abs(r12.w) * -0.200000003 + 0.400000006;
                  r21.xyz = r7.xyz * r14.www + v7.xyz;
                  r39.xyz = r38.xyz;
                  r14.w = dot(r39.xyzw, r21.xyzw);
                  r15.w = dot(r41.xyzw, r21.xyzw);
                  r18.x = cmp(r15.w >= r14.w);
                  if (r18.x != 0) {
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.y, r9.w, l(144), t12.xxxx
                  r40.y = samp0[]..swiz;
                    r36.w = r37.x;
                    r32.x = dot(r36.xyzw, r21.xyzw);
                    r38.xyz = r37.yzw;
                    r32.y = dot(r38.xyzw, r21.xyzw);
                    r21.xy = r32.xy / r15.ww;
                    r21.xy = saturate(r21.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                    r21.xy = r21.xy * r40.zw + r40.xy;
                    r9.w = r14.w / r15.w;
                    r9.w = max(6.10351563e-05, r9.w);
                    r14.w = (int)r33.w & 0x0000ffff;
                    if (r6.w != 0) {
                      r32.z = (uint)r14.w;
                      r15.w = 0;
                      r18.x = 0;
                      while (true) {
                        r24.w = cmp((int)r18.x >= 8);
                        if (r24.w != 0) break;
                        r34.x = dot(icb[r18.x+0].xy, r24.xy);
                        r34.y = dot(icb[r18.x+0].yx, r24.xz);
                        r32.xy = r34.xy * r35.yy + r21.xy;
                        r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r9.w).x;
                        r15.w = r24.w * 0.125 + r15.w;
                        r18.x = (int)r18.x + 1;
                      }
                    } else {
                      r21.z = (uint)r14.w;
                      r15.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r21.xyz, r9.w).x;
                    }
                    r9.w = r15.w * r15.w;
                    r9.w = r9.w * r15.w;
                  } else {
                    r9.w = 1;
                  }
                } else {
                  r9.w = 1;
                }
                r9.w = r15.z * r9.w;
                r14.w = cmp(0 < r9.w);
                if (r14.w != 0) {
                  r14.w = r33.x * r2.y;
                  r14.w = r14.w * r13.w;
                  if (4 == 0) r15.z = 0; else if (4+16 < 32) {                   r15.z = (uint)r33.w << (32-(4 + 16)); r15.z = (uint)r15.z >> (32-4);                  } else r15.z = (uint)r33.w >> 16;
                  r18.x = cmp(0 < (uint)r15.z);
                  r18.x = r1.w ? r18.x : 0;
                  if (r18.x != 0) {
                    r15.z = (int)r15.z + numLights;
                    r15.z = (int)r15.z + -1;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.x, r15.z, l(52), t12.xxxx
                  r18.x = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r15.z, l(68), t12.xyzw
                  r32.x = samp0[]..swiz;
                  r32.y = samp0[]..swiz;
                  r32.z = samp0[]..swiz;
                  r32.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r15.z, l(84), t12.xyzw
                  r34.x = samp0[]..swiz;
                  r34.y = samp0[]..swiz;
                  r34.z = samp0[]..swiz;
                  r34.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r15.z, l(100), t12.xyzw
                  r35.x = samp0[]..swiz;
                  r35.y = samp0[]..swiz;
                  r35.z = samp0[]..swiz;
                  r35.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r15.z, l(116), t12.xyzw
                  r36.x = samp0[]..swiz;
                  r36.y = samp0[]..swiz;
                  r36.z = samp0[]..swiz;
                  r36.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r15.z, l(132), t12.xyzw
                  r37.x = samp0[]..swiz;
                  r37.y = samp0[]..swiz;
                  r37.z = samp0[]..swiz;
                  r37.w = samp0[]..swiz;
                  // Known bad code for instruction (needs manual fix):
                                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r15.z, l(148), t12.xyzw
                  r38.x = samp0[]..swiz;
                  r38.y = samp0[]..swiz;
                  r38.z = samp0[]..swiz;
                  r38.w = samp0[]..swiz;
                    r21.x = abs(r12.w) * -0.200000003 + 0.400000006;
                    r22.xyz = r7.xyz * r21.xxx + v7.xyz;
                    r21.x = dot(r32.xyzw, r22.xyzw);
                    r21.y = dot(r34.xyzw, r22.xyzw);
                    r21.z = dot(r35.xyzw, r22.xyzw);
                    r22.x = dot(r36.xyzw, r22.xyzw);
                    r22.y = cmp(r22.x < r21.z);
                    r21.xy = r21.xy / r22.xx;
                    r21.xy = r21.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                    r21.xy = r21.xy + r38.zw;
                    r21.xy = r21.xy * r38.xy;
                    r32.xy = r18.xx / r37.xz;
                    r32.zw = float2(1,1) + -r32.xy;
                    r32.zw = cmp(r21.xy >= r32.zw);
                    r32.xy = cmp(r32.xy >= r21.xy);
                    r32.xy = (int2)r32.xy | (int2)r32.zw;
                    r22.z = (int)r32.y | (int)r32.x;
                    r22.y = (int)r22.y | (int)r22.z;
                    if (r22.y == 0) {
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r15.z, l(28), t12.xxxx
                    r22.y = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xy, r15.z, l(164), t12.xyxx
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                      r21.xy = saturate(r21.xy);
                      r33.xy = r21.xy * r37.xz + r37.yw;
                      r15.z = r32.y * r22.x;
                      r21.x = r32.x * r22.x + r21.z;
                      r15.z = r21.x / r15.z;
                      r15.z = max(6.10351563e-05, r15.z);
                      r21.x = r22.y ? 0.000000 : 0;
                      if (r6.w != 0) {
                        r22.z = (uint)r21.x;
                        r21.yz = float2(0,0);
                        while (true) {
                          r24.w = cmp((int)r21.z >= 8);
                          if (r24.w != 0) break;
                          r32.x = dot(icb[r21.z+0].xy, r25.xy);
                          r32.y = dot(icb[r21.z+0].yx, r25.xz);
                          r22.xy = r32.xy * r18.xx + r33.xy;
                          r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r15.z).x;
                          r21.y = r22.x * 0.125 + r21.y;
                          r21.z = (int)r21.z + 1;
                        }
                      } else {
                        r33.z = (uint)r21.x;
                        r21.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r33.xyz, r15.z).x;
                      }
                      r15.z = r21.y * r21.y;
                      r15.z = r15.z * r21.y;
                    } else {
                      r15.z = 1;
                    }
                    r9.w = r15.z * r9.w;
                  } else {
                    if (4 == 0) r15.z = 0; else if (4+20 < 32) {                     r15.z = (uint)r33.w << (32-(4 + 20)); r15.z = (uint)r15.z >> (32-4);                    } else r15.z = (uint)r33.w >> 20;
                    r18.x = cmp(0 < (uint)r15.z);
                    r18.x = r18.x ? r1.z : 0;
                    if (r18.x != 0) {
                      r15.z = (int)r15.z + numLights;
                      r15.z = (int)r15.z + -1;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.x, r15.z, l(52), t12.xxxx
                    r18.x = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r15.z, l(68), t12.xyzw
                    r32.x = samp0[]..swiz;
                    r32.y = samp0[]..swiz;
                    r32.z = samp0[]..swiz;
                    r32.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r15.z, l(84), t12.xyzw
                    r33.x = samp0[]..swiz;
                    r33.y = samp0[]..swiz;
                    r33.z = samp0[]..swiz;
                    r33.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r15.z, l(100), t12.xyzw
                    r34.x = samp0[]..swiz;
                    r34.y = samp0[]..swiz;
                    r34.z = samp0[]..swiz;
                    r34.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r15.z, l(116), t12.xyzw
                    r35.x = samp0[]..swiz;
                    r35.y = samp0[]..swiz;
                    r35.z = samp0[]..swiz;
                    r35.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r15.z, l(132), t12.xyzw
                    r36.x = samp0[]..swiz;
                    r36.y = samp0[]..swiz;
                    r36.z = samp0[]..swiz;
                    r36.w = samp0[]..swiz;
                    // Known bad code for instruction (needs manual fix):
                                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r15.z, l(148), t12.xyzw
                    r37.x = samp0[]..swiz;
                    r37.y = samp0[]..swiz;
                    r37.z = samp0[]..swiz;
                    r37.w = samp0[]..swiz;
                      r21.x = abs(r12.w) * -0.200000003 + 0.400000006;
                      r23.xyz = r7.xyz * r21.xxx + v7.xyz;
                      r22.x = dot(r32.xyzw, r23.xyzw);
                      r22.y = dot(r33.xyzw, r23.xyzw);
                      r21.x = dot(r34.xyzw, r23.xyzw);
                      r21.z = dot(r35.xyzw, r23.xyzw);
                      r22.z = cmp(r21.z < r21.x);
                      r22.xy = r22.xy / r21.zz;
                      r22.xy = r22.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                      r22.xy = r22.xy + r37.zw;
                      r22.xy = r22.xy * r37.xy;
                      r23.xy = r18.xx / r36.xz;
                      r32.xy = float2(1,1) + -r23.xy;
                      r32.xy = cmp(r22.xy >= r32.xy);
                      r23.xy = cmp(r23.xy >= r22.xy);
                      r23.xy = (int2)r23.xy | (int2)r32.xy;
                      r23.x = (int)r23.y | (int)r23.x;
                      r22.z = (int)r22.z | (int)r23.x;
                      if (r22.z == 0) {
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.z, r15.z, l(28), t12.xxxx
                      r22.z = samp0[]..swiz;
                      // Known bad code for instruction (needs manual fix):
                                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.xy, r15.z, l(164), t12.xyxx
                      r23.x = samp0[]..swiz;
                      r23.y = samp0[]..swiz;
                        r22.xy = saturate(r22.xy);
                        r32.xy = r22.xy * r36.xz + r36.yw;
                        r15.z = r23.y * r21.z;
                        r21.x = r23.x * r21.z + r21.x;
                        r15.z = r21.x / r15.z;
                        r15.z = max(6.10351563e-05, r15.z);
                        r21.x = r22.z ? 0.000000 : 0;
                        if (r6.w != 0) {
                          r22.z = (uint)r21.x;
                          r21.z = 0;
                          r23.x = 0;
                          while (true) {
                            r23.y = cmp((int)r23.x >= 8);
                            if (r23.y != 0) break;
                            r33.x = dot(icb[r23.x+0].xy, r26.xy);
                            r33.y = dot(icb[r23.x+0].yx, r26.xz);
                            r22.xy = r33.xy * r18.xx + r32.xy;
                            r22.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r15.z).x;
                            r21.z = r22.x * 0.125 + r21.z;
                            r23.x = (int)r23.x + 1;
                          }
                        } else {
                          r32.z = (uint)r21.x;
                          r21.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r32.xyz, r15.z).x;
                        }
                        r15.z = r21.z * r21.z;
                        r15.z = r15.z * r21.z;
                      } else {
                        r15.z = 1;
                      }
                      r9.w = r15.z * r9.w;
                    }
                  }
                  r15.z = -r13.w * r1.x + 1;
                  r15.z = r15.z * r15.z;
                  r15.z = -r15.z * 0.620000005 + 0.620000005;
                  r15.z = r15.z + -r13.w;
                  r15.z = r2.z * r15.z + r13.w;
                  r15.z = r15.z * r9.w;
                  r12.w = cmp(0 < r12.w);
                  r22.xyz = r15.zzz * r20.xyw + r16.xyz;
                  r19.xyz = r19.xyz * r10.www + r4.xyz;
                  r10.w = dot(r19.xyz, r19.xyz);
                  r10.w = rsqrt(r10.w);
                  r19.xyz = r19.xyz * r10.www;
                  r10.w = dot(r19.xyz, r4.xyz);
                  r15.z = dot(r7.xyz, r19.xyz);
                  r18.x = abs(r15.z) * r2.y + -abs(r15.z);
                  r15.z = abs(r15.z) * r18.x + 1;
                  r13.w = r13.w * r1.y + r2.w;
                  r15.z = r15.z * r15.z;
                  r13.w = r15.z * r13.w;
                  r13.w = rcp(r13.w);
                  r13.w = r13.w * r14.w;
                  r9.w = r13.w * r9.w;
                  r9.w = 0.25 * r9.w;
                  r19.xyz = r9.www * r20.xyw + r31.xyz;
                  r10.w = saturate(1 + -r10.w);
                  r13.w = r10.w * r10.w;
                  r13.w = r13.w * r13.w;
                  r10.w = r13.w * r10.w;
                  r9.w = r10.w * r9.w;
                  r20.xyw = r9.www * r20.xyw + r30.xyz;
                  r16.xyz = r12.www ? r22.xyz : r16.xyz;
                  r30.xyz = r12.www ? r20.xyw : r30.xyz;
                  r31.xyz = r12.www ? r19.xyz : r31.xyz;
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
    r27.xyz = r16.xyz;
    r28.xyz = r30.xyz;
    r29.xyz = r31.xyz;
    r5.z = (int)r5.z + 32;
  }
  r1.xyz = float3(1,1,1) + -r6.xyz;
  r1.xyz = r28.xyz * r1.xyz;
  r1.xyz = r29.xyz * r6.xyz + r1.xyz;
  r0.xyz = r27.xyz * r0.xyz + r1.xyz;
  r1.x = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r1.x = max(9.99999975e-05, r1.x);
  r1.w = max(relHDRExposure.x, r1.x);
  r1.xyz = r3.xyz * r1.www;
  r3.w = 1;
  r1.xyzw = relativeHDR ? r1.xyzw : r3.xyzw;
  r0.xyz = r1.xyz + r0.xyz;
  r1.w = hdrScale * r1.w;
  r1.w = max(1, r1.w);
  r1.xyz = r1.xyz / r1.www;
  r1.x = saturate(dot(r1.xyz, float3(0.298999995,0.587000012,0.114)));
  o0.w = r1.x + r0.w;
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