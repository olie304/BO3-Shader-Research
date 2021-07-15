// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:39 2021

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
  float2 normalMapScale : packoffset(c11.z);
  float4 flowParams : packoffset(c12);
  float4 noiseParams : packoffset(c13);
  bool useOrientedNormalMap : packoffset(c14);
  float4 specularLobeRoughnessControl : packoffset(c15);
  float4 lobeWeightingThicknessRefraction : packoffset(c16);
  float3 normalAdjustAndGloss : packoffset(c17);
  float4 decalTint : packoffset(c18);
  float2 opacityScale : packoffset(c19);
  float invZFeatherDepth : packoffset(c19.z);
  float2 normalsFlowScaleMin : packoffset(c20);
  float4 ssrParams : packoffset(c21);
  float translucentShadowOpacity : packoffset(c22);
  float3 foamColor : packoffset(c22.y);
  float4 foamMaskScroll01 : packoffset(c23);
  float4 foamMaskScroll23 : packoffset(c24);
  float4 foamMaskScale01 : packoffset(c25);
  float4 foamMaskScale23 : packoffset(c26);
  float foamScale : packoffset(c27);
  float2 foamSpacing : packoffset(c27.y);
  float foamColorScale : packoffset(c27.w);
  float foamZFeather : packoffset(c28);
  bool useFoam : packoffset(c28.y);
  bool useSSR : packoffset(c28.z);
  bool useLoopedSSR : packoffset(c28.w);
  bool useSpecularZFeather : packoffset(c29);
  bool scaleNormalsWithFlow : packoffset(c29.y);
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
SamplerState flowSampler_s : register(s5);
SamplerState noiseSampler_s : register(s6);
SamplerState foamSampler_s : register(s7);
SamplerState bilinearClamp_s : register(s8);
SamplerState pointClamp_s : register(s9);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
Texture2DArray<uint> visibleProbes : register(t7);
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
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
Texture2D<float4> flowMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> noiseMap : register(t24);
Texture2D<float4> foamBase : register(t25);
Texture2D<float4> ifloatZSceneDownsampled : register(t26);
Texture2D<float4> ifloatZScene : register(t29);
Texture2D<float4> iResolveScene : register(t30);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
Texture2D<float4> rColorRamp : register(t37);
Texture2DArray<float4> materialTexBC7 : register(t42);
Texture2DArray<float4> materialTexBC3 : register(t43);
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
  uint4 v3 : TEXCOORD4,
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  float3 v6 : TEXCOORD3,
  float3 v7 : OFFPOSITION0,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD8,
  uint v10 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(v0.z >= 0.984375);
  r0.y = 1.01587307 * v0.z;
  r0.z = v0.z * 64 + -63;
  r0.x = r0.x ? r0.z : r0.y;
  r0.x = max(9.99999994e-09, r0.x);
  r0.x = rcp(r0.x);
  r0.yz = (uint2)v0.xy;
  r1.xyz = ddx_coarse(v7.xyz);
  r2.xyz = ddy_coarse(v7.xyz);
  r0.w = numRefProbes + numLights;
  r3.xyz = eyeOffset.xyz + v7.xyz;
  r1.w = 0.0078125 * r0.x;
  r1.w = min(15, r1.w);
  r1.w = (uint)r1.w;
  r4.xy = (uint2)r0.yz >> int2(6,6);
  r4.z = (uint)r1.w << 4;
  r1.w = numStaticDecals & -32;
  r2.w = (int)-r1.w + numStaticDecals;
  r5.xy = float2(0,0);
  r6.w = 0;
  r3.w = 1;
  r7.xyzw = float4(0,0,0,0);
  r8.xyz = float3(0,0,0);
  r4.w = 0;
  while (true) {
    r5.w = cmp((uint)r4.w >= numStaticDecals);
    if (r5.w != 0) break;
    r5.z = (uint)r4.w >> 5;
    r6.xyz = (int3)r4.xyz + (int3)r5.xyz;
    r5.z = visibleDecals.Load(r6.xyzw).x;
    r5.w = cmp((int)r1.w == (int)r4.w);
    if (r2.w == 0) r6.x = 0; else if (r2.w+0 < 32) {     r6.x = (uint)r5.z << (32-(r2.w + 0)); r6.x = (uint)r6.x >> (32-r2.w);    } else r6.x = (uint)r5.z >> 0;
    r5.z = r5.w ? r6.x : r5.z;
    r5.w = (int)r0.w + (int)r4.w;
    r9.xyzw = r7.yzwx;
    r6.xyz = r8.xyz;
    r8.w = r5.z;
    while (true) {
      if (r8.w == 0) break;
      r10.x = firstbitlow((uint)r8.w);
      r10.y = 1 << (int)r10.x;
      r10.z = (int)r8.w & (int)r10.y;
      if (r10.z != 0) {
        r8.w = (int)r8.w ^ (int)r10.y;
        r10.y = (int)r5.w + (int)r10.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r11.xyzw, r10.y, l(0), t11.xyzw
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
      r11.z = samp0[]..swiz;
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r10.y, l(16), t11.xyxx
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
        r10.yzw = -v7.xyz + r11.xyz;
        r12.z = r11.w;
        r10.yzw = cmp(abs(r10.yzw) < r12.zxy);
        r10.y = r10.z ? r10.y : 0;
        r10.y = r10.w ? r10.y : 0;
        if (r10.y != 0) {
          r10.x = (int)r4.w + (int)r10.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r10.yzw, r10.x, l(0), t36.xxyz
        r10.y = samp0[]..swiz;
        r10.z = samp0[]..swiz;
        r10.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.xyz, r10.x, l(16), t36.xyzx
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.xyz, r10.x, l(32), t36.xyzx
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
          r13.x = r10.y;
          r13.y = r11.x;
          r13.z = r12.x;
          r10.y = dot(r13.xyz, r13.xyz);
          r10.y = rsqrt(r10.y);
          r14.xyz = r13.xyz * r10.yyy;
          r10.y = dot(r14.xyz, v4.xyz);
          r10.y = cmp(r10.y >= 0.5);
          if (r10.y != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.xyw, r10.x, l(48), t36.xyxz
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.w = samp0[]..swiz;
            r13.w = r14.x;
            r13.x = dot(r3.xyzw, r13.xyzw);
            r15.x = r10.z;
            r15.y = r11.y;
            r15.z = r12.y;
            r15.w = r14.y;
            r13.y = dot(r3.xyzw, r15.xyzw);
            r14.x = r10.w;
            r14.y = r11.z;
            r14.z = r12.z;
            r13.z = dot(r3.xyzw, r14.xyzw);
            r10.yzw = cmp(abs(r13.xyz) < float3(1,1,1));
            r10.y = r10.z ? r10.y : 0;
            r10.y = r10.w ? r10.y : 0;
            if (r10.y != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.xyzw, r10.x, l(64), t36.xyzw
            r11.x = samp0[]..swiz;
            r11.y = samp0[]..swiz;
            r11.z = samp0[]..swiz;
            r11.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.xyzw, r10.x, l(80), t36.xyzw
            r12.x = samp0[]..swiz;
            r12.y = samp0[]..swiz;
            r12.z = samp0[]..swiz;
            r12.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r10.y, r10.x, l(108), t36.xxxx
            r10.y = samp0[]..swiz;
              r16.x = dot(r1.xyz, r15.xyz);
              r16.y = dot(r1.xyz, r14.xyz);
              r15.x = dot(r2.xyz, r15.xyz);
              r15.y = dot(r2.xyz, r14.xyz);
              r10.zw = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r13.xyz = float3(0.5,-0.5,0.5) * r16.xyx;
              r14.xyz = float3(0.5,-0.5,0.5) * r15.xyx;
              r12.yz = (int2)r12.yz & int2(65535,65535);
              if (r12.y != 0) {
                if (4 == 0) r13.w = 0; else if (4+24 < 32) {                 r13.w = (uint)r12.w << (32-(4 + 24)); r13.w = (uint)r13.w >> (32-4);                } else r13.w = (uint)r12.w >> 24;
                r13.w = 1 << (int)r13.w;
                r14.w = (uint)r12.w >> 28;
                r14.w = 1 << (int)r14.w;
                r15.x = cmp((int)r12.y == 4);
                if (r15.x != 0) {
                  r15.x = (int)r12.w & 4095;
                  if (12 == 0) r15.y = 0; else if (12+12 < 32) {                   r15.y = (uint)r12.w << (32-(12 + 12)); r15.y = (uint)r15.y >> (32-12);                  } else r15.y = (uint)r12.w >> 12;
                  r15.z = r10.y ? 0.000000 : 0;
                  r16.xz = (uint2)r13.ww;
                  r16.y = (uint)r14.w;
                  r17.xy = r10.zw * r16.zy + float2(0.5,0.5);
                  r17.zw = float2(-0.5,-0.5) + r16.zy;
                  r17.xy = min(r17.xy, r17.zw);
                  r18.xy = (uint2)r15.xy;
                  r15.xy = r18.xy + r17.xy;
                  r17.xy = invBcTexSizes.xy * r15.xy;
                  r17.z = (uint)r15.z;
                  r15.xyz = invBcTexSizes.xyx * r13.zyz;
                  r15.xyz = r15.xyz * r16.xyz;
                  r18.xyz = invBcTexSizes.xyx * r14.zyz;
                  r16.xyz = r18.xyz * r16.xyz;
                  r15.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r17.xyz, r15.xyzx, r16.xyzx).xyzw;
                } else {
                  r12.y = cmp((int)r12.y == 1);
                  if (r12.y != 0) {
                    r12.y = (int)r12.w & 4095;
                    if (12 == 0) r12.w = 0; else if (12+12 < 32) {                     r12.w = (uint)r12.w << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                    } else r12.w = (uint)r12.w >> 12;
                    r16.x = r10.y ? 0.000000 : 0;
                    r17.xz = (uint2)r13.ww;
                    r17.y = (uint)r14.w;
                    r16.yz = r10.zw * r17.zy + float2(0.5,0.5);
                    r18.xy = float2(-0.5,-0.5) + r17.zy;
                    r16.yz = min(r18.xy, r16.yz);
                    r18.xy = (uint2)r12.yw;
                    r12.yw = r18.xy + r16.yz;
                    r18.xy = invBcTexSizes.zw * r12.yw;
                    r18.z = (uint)r16.x;
                    r16.xyz = invBcTexSizes.zwz * r13.zyz;
                    r16.xyz = r16.xyz * r17.xyz;
                    r19.xyz = invBcTexSizes.zwz * r14.zyz;
                    r17.xyz = r19.xyz * r17.xyz;
                    r15.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r18.xyz, r16.xyzx, r17.xyzx).xyzw;
                  } else {
                    r15.xyzw = float4(1,1,1,1);
                  }
                }
                r11.xyz = r15.xyz * r11.xyz;
                r12.y = r15.w * r11.w;
              } else {
                r11.xyz = float3(0,0,0);
                r12.y = 0;
              }
              r12.w = cmp(r12.x != 1.000000);
              r11.w = r12.y + r11.w;
              r11.w = saturate(r11.w * r12.x + -r12.x);
              r11.w = r12.w ? r11.w : r12.y;
              if (r12.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r10.x, r10.x, l(100), t36.xxxx
              r10.x = samp0[]..swiz;
                if (4 == 0) r12.x = 0; else if (4+24 < 32) {                 r12.x = (uint)r10.x << (32-(4 + 24)); r12.x = (uint)r12.x >> (32-4);                } else r12.x = (uint)r10.x >> 24;
                r12.y = (uint)r10.x >> 28;
                r12.xy = int2(1,1) << (int2)r12.xy;
                r12.w = cmp((int)r12.z == 2);
                if (r12.w != 0) {
                  r12.w = (int)r10.x & 4095;
                  if (12 == 0) r13.w = 0; else if (12+12 < 32) {                   r13.w = (uint)r10.x << (32-(12 + 12)); r13.w = (uint)r13.w >> (32-12);                  } else r13.w = (uint)r10.x >> 12;
                  if (10 == 0) r14.w = 0; else if (10+20 < 32) {                   r14.w = (uint)r10.y << (32-(10 + 20)); r14.w = (uint)r14.w >> (32-10);                  } else r14.w = (uint)r10.y >> 20;
                  r15.xyz = (uint3)r12.xyx;
                  r16.xy = r10.zw * r15.zy + float2(0.5,0.5);
                  r16.zw = float2(-0.5,-0.5) + r15.zy;
                  r16.xy = min(r16.xy, r16.zw);
                  r17.x = (uint)r12.w;
                  r17.y = (uint)r13.w;
                  r16.xy = r17.xy + r16.xy;
                  r16.xy = invMaskTexSizes.xy * r16.xy;
                  r16.z = (uint)r14.w;
                  r17.xyz = invMaskTexSizes.xyx * r13.zyz;
                  r17.xyz = r17.xyz * r15.xyz;
                  r18.xyz = invMaskTexSizes.xyx * r14.zyz;
                  r15.xyz = r18.xyz * r15.xyz;
                  r12.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r16.xyz, r17.x, r15.x).x;
                } else {
                  r12.z = cmp((int)r12.z == 4);
                  if (r12.z != 0) {
                    r12.z = (int)r10.x & 4095;
                    if (12 == 0) r13.w = 0; else if (12+12 < 32) {                     r13.w = (uint)r10.x << (32-(12 + 12)); r13.w = (uint)r13.w >> (32-12);                    } else r13.w = (uint)r10.x >> 12;
                    if (10 == 0) r14.w = 0; else if (10+20 < 32) {                     r14.w = (uint)r10.y << (32-(10 + 20)); r14.w = (uint)r14.w >> (32-10);                    } else r14.w = (uint)r10.y >> 20;
                    r15.xyz = (uint3)r12.xyx;
                    r16.xy = r10.zw * r15.zy + float2(0.5,0.5);
                    r16.zw = float2(-0.5,-0.5) + r15.zy;
                    r16.xy = min(r16.xy, r16.zw);
                    r17.x = (uint)r12.z;
                    r17.y = (uint)r13.w;
                    r16.xy = r17.xy + r16.xy;
                    r16.xy = invBcTexSizes.xy * r16.xy;
                    r16.z = (uint)r14.w;
                    r17.xyz = invBcTexSizes.xyx * r13.zyz;
                    r17.xyz = r17.xyz * r15.xyz;
                    r18.xyz = invBcTexSizes.xyx * r14.zyz;
                    r15.xyz = r18.xyz * r15.xyz;
                    r12.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r16.xyz, r17.x, r15.x).x;
                  } else {
                    r12.z = (int)r10.x & 4095;
                    if (12 == 0) r10.x = 0; else if (12+12 < 32) {                     r10.x = (uint)r10.x << (32-(12 + 12)); r10.x = (uint)r10.x >> (32-12);                    } else r10.x = (uint)r10.x >> 12;
                    if (10 == 0) r10.y = 0; else if (10+20 < 32) {                     r10.y = (uint)r10.y << (32-(10 + 20)); r10.y = (uint)r10.y >> (32-10);                    } else r10.y = (uint)r10.y >> 20;
                    r15.xyz = (uint3)r12.xyx;
                    r10.zw = r10.zw * r15.xy + float2(0.5,0.5);
                    r12.xy = float2(-0.5,-0.5) + r15.zy;
                    r10.zw = min(r12.xy, r10.zw);
                    r12.x = (uint)r12.z;
                    r12.yz = (uint2)r10.xy;
                    r10.xz = r12.xy + r10.zw;
                    r12.xy = invBcTexSizes.zw * r10.xz;
                    r10.xyz = invBcTexSizes.zwz * r13.xyz;
                    r10.xyz = r10.xyz * r15.xyz;
                    r13.xyz = invBcTexSizes.zwz * r14.xyz;
                    r13.xyz = r13.xyz * r15.xyz;
                    r12.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r12.xyz, r10.x, r13.x).x;
                  }
                }
                r10.xyz = r12.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r10.w = saturate(1 + -r12.w);
                r11.xyz = r11.xyz * r10.www;
              } else {
                r10.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r10.w = 1 + -r11.w;
              r12.xyz = r10.www * r6.xyz;
              r6.xyz = r11.xyz * r11.www + r12.xyz;
              r11.xyz = r10.www * r9.xyz;
              r9.xyz = r10.xyz * r11.www + r11.xyz;
              r9.w = r9.w * r10.w + r11.w;
            }
          }
        }
      }
    }
    r7.xyzw = r9.wxyz;
    r8.xyz = r6.xyz;
    r4.w = (int)r4.w + 32;
  }
  r7.x = saturate(r7.x);
  r0.w = 1 + -r7.x;
  r1.xy = normalMapScale.xy * v2.xy;
  r1.zw = gameTime.ww * noiseParams.xy;
  r1.zw = v2.xy * noiseParams.zz + r1.zw;
  r1.zw = noiseMap.Sample(noiseSampler_s, r1.zw).xy;
  r1.zw = noiseParams.ww * r1.zw;
  r1.zw = v2.xy * flowParams.xx + r1.zw;
  r2.xy = frac(r1.zw);
  r2.zw = r2.xy * float2(-2,-2) + float2(3,3);
  r2.xy = r2.xy * r2.xy;
  r5.xy = r2.zw * r2.xy;
  normalMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r5.zw = fDest.xy;
  r5.zw = r5.zw * r1.xy;
  r6.xy = ddx_coarse(r5.zw);
  r5.zw = ddy_coarse(r5.zw);
  r4.w = dot(r6.xy, r6.xy);
  r5.z = dot(r5.zw, r5.zw);
  r4.w = max(r5.z, r4.w);
  r4.w = log2(r4.w);
  r4.w = 0.5 * r4.w;
  r5.zw = floor(r1.zw);
  r5.zw = r5.zw / flowParams.xx;
  r5.zw = flowMap.Sample(flowSampler_s, r5.zw).xy;
  r5.zw = r5.zw + r5.zw;
  r6.xyzw = float4(1,0,0,1) + r1.zwzw;
  r6.xyzw = floor(r6.xyzw);
  r6.xyzw = r6.xyzw / flowParams.xxxx;
  r6.xy = flowMap.Sample(flowSampler_s, r6.xy).xy;
  r6.xy = r6.xy + r6.xy;
  r6.zw = flowMap.Sample(flowSampler_s, r6.zw).xy;
  r6.zw = r6.zw + r6.zw;
  r1.zw = float2(1,1) + r1.zw;
  r1.zw = floor(r1.zw);
  r1.zw = r1.zw / flowParams.xx;
  r1.zw = flowMap.Sample(flowSampler_s, r1.zw).xy;
  r1.zw = r1.zw + r1.zw;
  if (useSpecularZFeather != 0) {
    r9.xy = flowMap.Sample(flowSampler_s, v2.xy).xy;
    r9.xy = r9.xy + r9.xy;
    r9.zw = r9.xy * float2(-1,1) + float2(1,-1);
    r9.xy = r9.xw * float2(-1,1) + float2(1,0);
    r8.w = dot(r9.zw, r9.xy);
    r8.w = sqrt(r8.w);
    r8.w = r8.w * normalsFlowScaleMin.y + normalsFlowScaleMin.x;
    r9.xy = normalAdjustAndGloss.xy * r8.ww;
  } else {
    r9.xy = normalAdjustAndGloss.xy;
  }
  r2.xy = -r2.zw * r2.xy + float2(1,1);
  r2.xy = r2.xy * r2.xy;
  r2.xy = r5.xy * r5.xy + r2.xy;
  r2.xy = rsqrt(r2.xy);
  if (useOrientedNormalMap == 0) {
    r2.z = gameTime.w * flowParams.y;
    r9.zw = r5.zw * float2(-1,1) + float2(1,-1);
    r9.zw = r9.zw * r2.zz + r1.xy;
    r9.zw = normalMap.SampleLevel(normalSampler_s, r9.zw, r4.w).xy;
    r10.xy = r6.xy * float2(-1,1) + float2(1,-1);
    r10.xy = r10.xy * r2.zz + r1.xy;
    r10.xy = normalMap.SampleLevel(normalSampler_s, r10.xy, r4.w).xy;
    r10.xy = r10.xy + -r9.zw;
    r9.zw = r5.xx * r10.xy + r9.zw;
    r10.xy = r6.zw * float2(-1,1) + float2(1,-1);
    r10.xy = r10.xy * r2.zz + r1.xy;
    r10.xy = normalMap.SampleLevel(normalSampler_s, r10.xy, r4.w).xy;
    r10.zw = r1.zw * float2(-1,1) + float2(1,-1);
    r1.xy = r10.zw * r2.zz + r1.xy;
    r1.xy = normalMap.SampleLevel(normalSampler_s, r1.xy, r4.w).xy;
    r1.xy = r1.xy + -r10.xy;
    r1.xy = r5.xx * r1.xy + r10.xy;
    r1.xy = r1.xy + -r9.zw;
    r1.xy = r5.yy * r1.xy + r9.zw;
    r1.xy = r1.xy * r9.xx + r9.yy;
  } else {
    r2.zw = r5.zw * float2(-1,1) + float2(1,-1);
    r5.z = dot(r2.zw, r2.zw);
    r5.z = sqrt(r5.z);
    r5.z = max(9.99999975e-06, r5.z);
    r10.xy = r2.zw / r5.zz;
    r10.z = -r10.x;
    r11.x = dot(v2.xy, r10.yz);
    r11.y = dot(v2.xy, -r10.xy);
    r11.xy = normalMapScale.xy * r11.xy;
    r2.z = gameTime.w * r5.z;
    r11.z = -r2.z * flowParams.y + r11.y;
    r2.zw = normalMap.SampleLevel(normalSampler_s, r11.xz, r4.w).xy;
    r2.zw = r2.zw * r9.xx + r9.yy;
    r11.x = dot(r2.zw, r10.yz);
    r11.y = dot(r2.zw, -r10.xy);
    r2.zw = r6.xy * float2(-1,1) + float2(1,-1);
    r5.z = dot(r2.zw, r2.zw);
    r5.z = sqrt(r5.z);
    r5.z = max(9.99999975e-06, r5.z);
    r10.xy = r2.zw / r5.zz;
    r10.z = -r10.x;
    r6.x = dot(v2.xy, r10.yz);
    r6.y = dot(v2.xy, -r10.xy);
    r12.xy = normalMapScale.xy * r6.xy;
    r2.z = gameTime.w * r5.z;
    r12.z = -r2.z * flowParams.y + r12.y;
    r2.zw = normalMap.SampleLevel(normalSampler_s, r12.xz, r4.w).xy;
    r2.zw = r2.zw * r9.xx + r9.yy;
    r6.x = dot(r2.zw, r10.yz);
    r6.y = dot(r2.zw, -r10.xy);
    r2.zw = r6.xy + -r11.xy;
    r2.zw = r5.xx * r2.zw + r11.xy;
    r5.zw = r6.zw * float2(-1,1) + float2(1,-1);
    r6.x = dot(r5.zw, r5.zw);
    r6.x = sqrt(r6.x);
    r6.x = max(9.99999975e-06, r6.x);
    r10.xy = r5.zw / r6.xx;
    r10.z = -r10.x;
    r11.x = dot(v2.xy, r10.yz);
    r11.y = dot(v2.xy, -r10.xy);
    r11.xy = normalMapScale.xy * r11.xy;
    r5.z = gameTime.w * r6.x;
    r11.z = -r5.z * flowParams.y + r11.y;
    r5.zw = normalMap.SampleLevel(normalSampler_s, r11.xz, r4.w).xy;
    r5.zw = r5.zw * r9.xx + r9.yy;
    r6.x = dot(r5.zw, r10.yz);
    r6.y = dot(r5.zw, -r10.xy);
    r1.zw = r1.zw * float2(-1,1) + float2(1,-1);
    r5.z = dot(r1.zw, r1.zw);
    r5.z = sqrt(r5.z);
    r5.z = max(9.99999975e-06, r5.z);
    r10.xy = r1.zw / r5.zz;
    r10.z = -r10.x;
    r11.x = dot(v2.xy, r10.yz);
    r11.y = dot(v2.xy, -r10.xy);
    r11.xy = normalMapScale.xy * r11.xy;
    r1.z = gameTime.w * r5.z;
    r11.z = -r1.z * flowParams.y + r11.y;
    r1.zw = normalMap.SampleLevel(normalSampler_s, r11.xz, r4.w).xy;
    r1.zw = r1.zw * r9.xx + r9.yy;
    r9.x = dot(r1.zw, r10.yz);
    r9.y = dot(r1.zw, -r10.xy);
    r1.zw = r9.xy + -r6.xy;
    r1.zw = r5.xx * r1.zw + r6.xy;
    r1.zw = r1.zw + -r2.zw;
    r1.xy = r5.yy * r1.zw + r2.zw;
  }
  r1.z = r2.x * r2.y;
  r1.xy = r1.xy * r1.zz;
  r1.yzw = v6.xyz * r1.yyy;
  r1.xyz = v5.xyz * r1.xxx + r1.yzw;
  r1.xyz = v4.xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = v10.xxx ? r1.xyz : -r1.xyz;
  r2.x = dot(v7.xyz, v7.xyz);
  r2.y = rsqrt(r2.x);
  r2.yzw = v7.xyz * r2.yyy;
  r5.z = saturate(dot(r1.xyz, -r2.yzw));
  if (v10.x != 0) {
    r6.xy = (int2)v0.xy;
    r6.zw = float2(0,0);
    r4.w = ifloatZScene.Load(r6.xyz).x;
    r6.x = cmp(r4.w >= 0.984375);
    r6.y = 1.01587307 * r4.w;
    r4.w = r4.w * 64 + -63;
    r4.w = r6.x ? r4.w : r6.y;
    r4.w = max(9.99999994e-09, r4.w);
    r4.w = rcp(r4.w);
    r4.w = -v0.w + r4.w;
    r4.w = max(0, r4.w);
    r4.w = min(ssrParams.x, r4.w);
    r6.x = opacityScale.y;
  } else {
    r4.w = sqrt(r2.x);
    r6.x = opacityScale.x;
  }
  if (useFoam != 0) {
    r6.y = foamBase.Sample(foamSampler_s, v8.xy).x;
    r6.z = foamBase.Sample(foamSampler_s, v8.zw).x;
    r6.w = foamBase.Sample(foamSampler_s, v9.xy).x;
    r8.w = foamBase.Sample(foamSampler_s, v9.zw).x;
    r6.y = r6.y + r6.z;
    r6.y = r6.y + r6.w;
    r6.y = r6.y + r8.w;
    r6.y = foamColorScale * r6.y;
    r6.z = flowMap.Sample(flowSampler_s, v2.xy).z;
    r6.z = foamSpacing.y * r6.z + foamSpacing.x;
    r6.y = max(0, r6.y);
    r6.y = log2(r6.y);
    r6.y = r6.z * r6.y;
    r6.y = exp2(r6.y);
    r6.z = foamZFeather * r4.w;
    r6.z = min(1, r6.z);
    r6.w = r6.y * r6.z;
    r6.y = -r6.y * r6.z + 1;
    r6.y = normalAdjustAndGloss.z * r6.y;
  } else {
    r6.w = 0;
    r6.y = normalAdjustAndGloss.z;
  }
  r6.z = dot(-v7.xyz, -v7.xyz);
  r6.z = rsqrt(r6.z);
  r9.xyz = -v7.xyz * r6.zzz;
  r0.yz = (uint2)r0.yz;
  r0.y = dot(r0.yz, float2(0.0671105608,0.00583714992));
  r0.y = frac(r0.y);
  r0.y = 52.9829178 * r0.y;
  r0.y = frac(r0.y);
  r0.y = r0.y * 6.28318548 + gameTick.w;
  sincos(r0.y, r10.x, r11.x);
  r0.y = saturate(dot(r1.xyz, r9.xyz));
  r0.z = dot(-r9.xyz, r1.xyz);
  r0.z = r0.z + r0.z;
  r12.xyz = r1.xyz * -r0.zzz + -r9.xyz;
  r0.z = 1 + -r6.y;
  r8.w = 5 * r0.z;
  r9.w = r0.z * 5 + -2.5;
  r9.w = saturate(0.400000006 * r9.w);
  r9.w = 100 * r9.w;
  r10.yz = -r0.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r10.y = exp2(r10.y);
  r10.y = r10.y * r0.y;
  r10.w = r8.w * r0.z;
  r10.z = -r10.w * 2.0159049 + r10.z;
  r10.z = exp2(r10.z);
  r10.z = r10.z * r0.y;
  r10.yz = float2(9.1368103,9.70808983) * r10.yz;
  r10.y = max(r10.y, r10.z);
  r10.y = max(1.26815999, r10.y);
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r5.xw = float2(1,0);
  r19.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r21.w = 0;
  r10.zw = float2(0,0);
  while (true) {
    r11.y = cmp((uint)r10.w >= numRefProbes);
    if (r11.y != 0) break;
    r13.z = (uint)r10.w >> 5;
    r14.xyz = (int3)r4.xyz + (int3)r13.xyz;
    r11.y = visibleProbes.Load(r14.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r10.w, l(0), t15.wxyz
  r22.x = samp0[]..swiz;
  r22.y = samp0[]..swiz;
  r22.z = samp0[]..swiz;
  r22.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r10.w, l(16), t15.xyzw
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r10.w, l(32), t15.yxwz
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r10.w, l(48), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r10.w, l(64), t15.zwxy
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r10.w, l(80), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.zw, r10.w, l(96), t15.xxxy
  r11.z = samp0[]..swiz;
  r11.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r10.w, l(116), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r10.w, l(132), t15.zwxy
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r10.w, l(148), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r10.w, l(164), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r10.w, l(180), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r10.w, l(196), t15.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xy, r10.w, l(212), t15.xyxx
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
    r14.xyz = v7.xyz + -r22.yzw;
    r13.z = dot(r14.xyz, r14.xyz);
    r13.z = sqrt(r13.z);
    r13.z = cmp(probeDebugRadius >= r13.z);
    r13.w = (int)r28.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(0), t16.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r13.w, l(16), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(32), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(48), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(64), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(80), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
    r15.w = dot(r35.xyz, r14.xyz);
    r15.w = saturate(r15.w + r35.w);
    r16.w = dot(r36.xyz, r14.xyz);
    r16.w = saturate(r16.w + r36.w);
    r15.w = r16.w * r15.w;
    r16.w = dot(r37.xyz, r14.xyz);
    r16.w = saturate(r16.w + r37.w);
    r15.w = r16.w * r15.w;
    r16.w = dot(r38.xyz, r14.xyz);
    r16.w = saturate(r16.w + r38.w);
    r15.w = r16.w * r15.w;
    r16.w = dot(r39.xyz, r14.xyz);
    r16.w = saturate(r16.w + r39.w);
    r15.w = r16.w * r15.w;
    r16.w = dot(r40.xyz, r14.xyz);
    r16.w = saturate(r16.w + r40.w);
    r15.x = r16.w * r15.w;
    r15.w = (int)r11.z & 1;
    r15.xw = r15.ww ? r15.xy : r15.zx;
    r35.xy = r28.zw;
    r35.z = r29.z;
    r16.w = dot(r12.xyz, r35.xyz);
    r17.w = dot(r14.xyz, r35.xyz);
    r17.w = r17.w + -r29.w;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r9.w);
    r17.w = r18.w ? r17.w : -r17.w;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r17.w / r16.w;
    r16.w = min(131072, abs(r16.w));
    r29.z = r30.z;
    r17.w = dot(r12.xyz, r29.xyz);
    r18.w = dot(r14.xyz, r29.xyz);
    r18.w = r18.w + -r30.w;
    r22.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r9.w);
    r18.w = r22.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r16.w = min(abs(r17.w), r16.w);
    r30.z = r31.z;
    r17.w = dot(r12.xyz, r30.xyz);
    r18.w = dot(r14.xyz, r30.xyz);
    r18.w = r18.w + -r31.w;
    r22.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r9.w);
    r18.w = r22.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r16.w = min(abs(r17.w), r16.w);
    r31.z = r32.z;
    r17.w = dot(r12.xyz, r31.xyz);
    r18.w = dot(r14.xyz, r31.xyz);
    r18.w = r18.w + -r32.w;
    r22.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r9.w);
    r18.w = r22.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r16.w = min(abs(r17.w), r16.w);
    r32.z = r33.x;
    r17.w = dot(r12.xyz, r32.xyz);
    r18.w = dot(r14.xyz, r32.xyz);
    r18.w = r18.w + -r33.y;
    r22.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r9.w);
    r18.w = r22.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r16.w = min(abs(r17.w), r16.w);
    r34.zw = r33.zw;
    r17.w = dot(r12.zxy, r34.xzw);
    r18.w = dot(r14.zxy, r34.xzw);
    r18.w = r18.w + -r34.y;
    r22.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r9.w);
    r18.w = r22.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r16.w = min(abs(r17.w), r16.w);
    r29.x = r25.w;
    r29.yz = r26.zw;
    r29.xyz = r29.xyz + r14.xyz;
    r29.xyz = r12.xyz * r16.www + r29.xyz;
    r17.w = dot(r29.xyz, r29.xyz);
    r17.w = sqrt(r17.w);
    r16.w = r16.w / r17.w;
    r16.w = r16.w + r16.w;
    r16.w = sqrt(r16.w);
    r16.w = r0.z * 5 + r16.w;
    r16.w = -0.844799995 + r16.w;
    r22.y = r23.z;
    r22.z = r24.x;
    r30.x = dot(r29.xyz, r22.xyz);
    r31.xy = r23.xw;
    r31.z = r24.w;
    r30.y = dot(r29.xyz, r31.xyz);
    r24.x = r23.y;
    r30.z = dot(r29.xyz, r24.xyz);
    if (6 == 0) r23.x = 0; else if (6+25 < 32) {     r23.x = (uint)r28.y << (32-(6 + 25)); r23.x = (uint)r23.x >> (32-6);    } else r23.x = (uint)r28.y >> 25;
    if (9 == 0) r23.y = 0; else if (9+16 < 32) {     r23.y = (uint)r28.y << (32-(9 + 16)); r23.y = (uint)r23.y >> (32-9);    } else r23.y = (uint)r28.y >> 16;
    r30.w = (uint)r23.y;
    r23.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, r16.w).xyz;
    r28.yzw = (int3)r23.yzw & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r16.w = (int)r28.z | (int)r28.y;
    r16.w = (int)r28.w | (int)r16.w;
    r23.yzw = r16.www ? float3(1,1,0) : r23.yzw;
    r29.x = dot(r14.xyz, r22.xyz);
    r29.y = dot(r14.xyz, r31.xyz);
    r29.z = dot(r14.xyz, r24.xyz);
    r25.xyz = saturate(r29.xyz * r25.xyz + float3(0.5,0.5,0.5));
    r26.z = r27.x;
    r25.xyz = r25.xyz * r26.xyz + r27.yzw;
    r30.x = dot(r1.xyz, r22.xyz);
    r30.y = dot(r1.xyz, r31.xyz);
    r30.z = dot(r1.xyz, r24.xyz);
    r22.xyz = cmp(float3(0,0,0) < r30.xyz);
    r16.z = r22.x ? 0 : 0.5;
    r24.xyz = r25.xyz + r16.xyz;
    r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
    r17.z = r22.y ? 0 : 0.5;
    r22.xyw = r25.xyz + r17.xyz;
    r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
    r18.z = r22.z ? 0 : 0.5;
    r25.xyz = r25.xyz + r18.xyz;
    r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r26.xyz = r30.xyz * r30.xyz;
    r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r30.xyzw, 6).xyz;
    r28.yzw = (int3)r27.xyz & int3(-2147483648,-2147483648,-2147483648);
    r28.yzw = cmp((int3)r28.yzw == int3(2139095040,2139095040,2139095040));
    r16.z = (int)r28.z | (int)r28.y;
    r16.z = (int)r28.w | (int)r16.z;
    r27.xyz = r16.zzz ? float3(1,1,0) : r27.xyz;
    r29.xyzw = r19.xyzw;
    r28.yzw = r20.yzw;
    r16.z = r21.w;
    r16.w = r10.z;
    r17.z = r11.y;
    while (true) {
      if (r17.z == 0) break;
      r17.w = firstbitlow((uint)r17.z);
      r17.w = 1 << (int)r17.w;
      r18.z = (int)r17.w & (int)r17.z;
      if (r18.z != 0) {
        r17.w = ~(int)r17.w;
        r17.z = (int)r17.w & (int)r17.z;
        if (r13.z != 0) {
          r17.w = r11.z;
          r30.xy = r15.xw;
          r18.z = 1;
          while (true) {
            r18.w = cmp((int)r18.z >= (int)r23.x);
            if (r18.w != 0) break;
            r18.w = (int)r13.w + (int)r18.z;
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
            r18.w = dot(r31.xyz, r14.xyz);
            r18.w = saturate(r18.w + r31.w);
            r18.w = r30.x * r18.w;
            r22.z = dot(r32.xyz, r14.xyz);
            r22.z = saturate(r22.z + r32.w);
            r18.w = r22.z * r18.w;
            r22.z = dot(r33.xyz, r14.xyz);
            r22.z = saturate(r22.z + r33.w);
            r18.w = r22.z * r18.w;
            r22.z = dot(r34.xyz, r14.xyz);
            r22.z = saturate(r22.z + r34.w);
            r18.w = r22.z * r18.w;
            r22.z = dot(r35.xyz, r14.xyz);
            r22.z = saturate(r22.z + r35.w);
            r18.w = r22.z * r18.w;
            r22.z = dot(r36.xyz, r14.xyz);
            r22.z = saturate(r22.z + r36.w);
            r30.x = r22.z * r18.w;
            r24.w = (uint)r17.w >> 2;
            if (1 == 0) r25.w = 0; else if (1+2 < 32) {             r25.w = (uint)r17.w << (32-(1 + 2)); r25.w = (uint)r25.w >> (32-1);            } else r25.w = (uint)r17.w >> 2;
            r26.w = (int)r24.w & 2;
            r27.w = max(r30.y, r30.x);
            r18.w = -r18.w * r22.z + 1;
            r18.w = r30.y * r18.w;
            r5.y = r26.w ? r18.w : r27.w;
            r30.xy = r25.ww ? r30.xy : r5.xy;
            r18.z = (int)r18.z + 1;
            r17.w = r24.w;
          }
          r30.y = saturate(r30.y);
          r5.y = r30.y * r11.w;
          r17.w = cmp(0 < r5.y);
          if (r17.w != 0) {
            r17.w = (int)r16.z + 257;
            r31.z = r30.y * r11.w + r28.w;
            r5.y = r5.y * r28.x;
            r30.xzw = r26.xyz * r5.yyy;
            r32.xyz = r30.zzz * r22.xyw;
            r32.xyz = r24.xyz * r30.xxx + r32.xyz;
            r30.xzw = r25.xyz * r30.www + r32.xyz;
            r32.xyz = r30.xzw * r27.xyz;
            r18.z = dot(r32.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r32.xyz = r30.xzw * r27.xyz + r29.xyz;
            r18.w = r18.z * r10.y;
            r30.xzw = r23.yzw * r5.yyy;
            r5.y = dot(r30.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r5.y = r10.y * r18.z + r5.y;
            r5.y = r18.w / r5.y;
            r33.x = r29.w;
            r33.yz = r28.yz;
            r31.xyw = r30.zwx * r5.yyy + r33.yzx;
            r32.w = r31.w;
          } else {
            r17.w = (int)r16.z + 1;
            r32.xyzw = r29.xyzw;
            r31.xyz = r28.yzw;
          }
          r16.w = -1;
          r29.xyzw = r32.xyzw;
          r28.yzw = r31.xyz;
          r16.z = r17.w;
          break;
        }
      }
    }
    if (r16.w != 0) {
      r19.xyzw = r29.xyzw;
      r20.yzw = r28.yzw;
      r21.w = r16.z;
      r10.z = -1;
      break;
    }
    r10.w = (int)r10.w + 32;
    r19.xyzw = r29.xyzw;
    r20.yzw = r28.yzw;
    r21.w = r16.z;
    r10.z = r16.w;
  }
  if (r10.z == 0) {
    r5.x = numRefProbes + -numOverrideProbes;
    r5.y = (int)r5.x & -32;
    r10.z = (int)-r5.y + (int)r5.x;
    r10.w = numRefProbes & -32;
    r11.y = (int)-r10.w + numRefProbes;
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r17.x = 1;
    r18.xy = float2(0,0);
    r22.xy = float2(0,0);
    r23.xyzw = r19.wxyz;
    r24.xyz = r20.yzw;
    r24.w = r21.w;
    r11.z = r5.y;
    while (true) {
      r11.w = cmp((uint)r11.z >= numRefProbes);
      if (r11.w != 0) break;
      r13.z = (uint)r11.z >> 5;
      r14.xyz = (int3)r4.xyz + (int3)r13.xyz;
      r11.w = visibleProbes.Load(r14.xyzw).x;
      r13.z = cmp((int)r5.y == (int)r11.z);
      bitmask.w = ((~(-1 << r10.z)) << 0) & 0xffffffff;  r13.w = (((uint)0 << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
      r11.w = r13.z ? r13.w : r11.w;
      r13.z = cmp((int)r10.w == (int)r11.z);
      if (r11.y == 0) r13.w = 0; else if (r11.y+0 < 32) {       r13.w = (uint)r11.w << (32-(r11.y + 0)); r13.w = (uint)r13.w >> (32-r11.y);      } else r13.w = (uint)r11.w >> 0;
      r11.w = r13.z ? r13.w : r11.w;
      r13.z = (int)r11.z + numLights;
      r25.xyzw = r23.yzwx;
      r26.xyzw = r24.xyzw;
      r13.w = r11.w;
      while (true) {
        if (r13.w == 0) break;
        r14.x = firstbitlow((uint)r13.w);
        r14.y = 1 << (int)r14.x;
        r14.z = (int)r13.w & (int)r14.y;
        if (r14.z != 0) {
          r13.w = (int)r13.w ^ (int)r14.y;
          r14.y = (int)r13.z + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r14.y, l(0), t11.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xy, r14.y, l(16), t11.xyxx
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
          r27.xyz = -v7.xyz + r27.xyz;
          r28.z = r27.w;
          r27.xyz = cmp(abs(r27.xyz) < r28.zxy);
          r14.y = r27.y ? r27.x : 0;
          r14.y = r27.z ? r14.y : 0;
          if (r14.y != 0) {
            r14.x = (int)r11.z + (int)r14.x;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r14.x, l(0), t15.wxyz
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.yz, r14.x, l(96), t15.xxyx
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.x, l(116), t15.zwxy
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
            r29.xyz = v7.xyz + -r27.yzw;
            r15.w = (int)r28.w & 0x0000ffff;
            if (6 == 0) r16.w = 0; else if (6+25 < 32) {             r16.w = (uint)r28.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);            } else r16.w = (uint)r28.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r15.w, l(0), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r15.w, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r17.z = dot(r30.xyz, r29.xyz);
            r17.z = saturate(r17.z + r30.w);
            r17.w = dot(r31.xyz, r29.xyz);
            r17.w = saturate(r17.w + r31.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r32.xyz, r29.xyz);
            r17.w = saturate(r17.w + r32.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r33.xyz, r29.xyz);
            r17.w = saturate(r17.w + r33.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r34.xyz, r29.xyz);
            r17.w = saturate(r17.w + r34.w);
            r17.z = r17.z * r17.w;
            r17.w = dot(r35.xyz, r29.xyz);
            r17.w = saturate(r17.w + r35.w);
            r15.x = r17.z * r17.w;
            r17.z = (int)r14.y & 1;
            r17.zw = r17.zz ? r15.xy : r15.zx;
            r15.x = r14.y;
            r30.xy = r17.zw;
            r18.w = 1;
            while (true) {
              r22.w = cmp((int)r18.w >= (int)r16.w);
              if (r22.w != 0) break;
              r22.w = (int)r15.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r22.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r22.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r22.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r22.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r22.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r22.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r22.w = dot(r31.xyz, r29.xyz);
              r22.w = saturate(r22.w + r31.w);
              r22.w = r30.x * r22.w;
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
              r22.w = r27.w * r22.w;
              r27.w = dot(r36.xyz, r29.xyz);
              r27.w = saturate(r27.w + r36.w);
              r30.x = r27.w * r22.w;
              r29.w = (uint)r15.x >> 2;
              if (1 == 0) r30.z = 0; else if (1+2 < 32) {               r30.z = (uint)r15.x << (32-(1 + 2)); r30.z = (uint)r30.z >> (32-1);              } else r30.z = (uint)r15.x >> 2;
              r30.w = (int)r29.w & 2;
              r31.x = max(r30.y, r30.x);
              r22.w = -r22.w * r27.w + 1;
              r22.w = r30.y * r22.w;
              r17.y = r30.w ? r22.w : r31.x;
              r30.xy = r30.zz ? r30.xy : r17.xy;
              r18.w = (int)r18.w + 1;
              r15.x = r29.w;
            }
            r30.y = saturate(r30.y);
            r14.y = r30.y * r14.z;
            r15.x = cmp(0 < r14.y);
            if (r15.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r14.x, l(16), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r14.x, l(32), t15.yxwz
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r14.x, l(48), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r14.x, l(64), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r14.x, l(80), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r14.x, l(132), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r14.x, l(148), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r14.x, l(164), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r14.x, l(180), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r14.x, l(196), t15.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r14.x, l(212), t15.xyxx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
              r26.w = (int)r26.w + 257;
              r26.z = r30.y * r14.z + r26.z;
              r14.x = r14.y * r28.z;
              r28.z = r36.z;
              r14.y = dot(r12.xyz, r28.xyz);
              r14.z = dot(r29.xyz, r28.xyz);
              r14.z = r14.z + -r36.w;
              r15.x = cmp(r14.z >= 0);
              r14.z = max(abs(r14.z), r9.w);
              r14.z = r15.x ? r14.z : -r14.z;
              r14.y = max(1.00000001e-07, -r14.y);
              r14.y = r14.z / r14.y;
              r14.y = min(131072, abs(r14.y));
              r36.z = r37.z;
              r14.z = dot(r12.xyz, r36.xyz);
              r15.x = dot(r29.xyz, r36.xyz);
              r15.x = r15.x + -r37.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r9.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r37.z = r38.z;
              r14.z = dot(r12.xyz, r37.xyz);
              r15.x = dot(r29.xyz, r37.xyz);
              r15.x = r15.x + -r38.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r9.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r38.z = r39.z;
              r14.z = dot(r12.xyz, r38.xyz);
              r15.x = dot(r29.xyz, r38.xyz);
              r15.x = r15.x + -r39.w;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r9.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r39.z = r40.x;
              r14.z = dot(r12.xyz, r39.xyz);
              r15.x = dot(r29.xyz, r39.xyz);
              r15.x = r15.x + -r40.y;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r9.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r41.zw = r40.zw;
              r14.z = dot(r12.zxy, r41.xzw);
              r15.x = dot(r29.zxy, r41.xzw);
              r15.x = r15.x + -r41.y;
              r15.w = cmp(r15.x >= 0);
              r15.x = max(abs(r15.x), r9.w);
              r15.x = r15.w ? r15.x : -r15.x;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r15.x / r14.z;
              r14.y = min(r14.y, abs(r14.z));
              r28.x = r33.w;
              r28.yz = r34.zw;
              r17.yzw = r28.xyz + r29.xyz;
              r17.yzw = r12.xyz * r14.yyy + r17.yzw;
              r14.z = dot(r17.yzw, r17.yzw);
              r14.z = sqrt(r14.z);
              r14.y = r14.y / r14.z;
              r14.y = r14.y + r14.y;
              r14.y = sqrt(r14.y);
              r14.y = r0.z * 5 + r14.y;
              r14.y = -0.844799995 + r14.y;
              r27.y = r31.z;
              r27.z = r32.x;
              r36.x = dot(r17.yzw, r27.xyz);
              r28.xy = r31.xw;
              r28.z = r32.w;
              r36.y = dot(r17.yzw, r28.xyz);
              r32.x = r31.y;
              r36.z = dot(r17.yzw, r32.xyz);
              if (9 == 0) r14.z = 0; else if (9+16 < 32) {               r14.z = (uint)r28.w << (32-(9 + 16)); r14.z = (uint)r14.z >> (32-9);              } else r14.z = (uint)r28.w >> 16;
              r36.w = (uint)r14.z;
              r17.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r14.y).xyz;
              r30.xzw = (int3)r17.yzw & int3(-2147483648,-2147483648,-2147483648);
              r30.xzw = cmp((int3)r30.xzw == int3(2139095040,2139095040,2139095040));
              r14.y = (int)r30.z | (int)r30.x;
              r14.y = (int)r30.w | (int)r14.y;
              r17.yzw = r14.yyy ? float3(1,1,0) : r17.yzw;
              r31.x = dot(r29.xyz, r27.xyz);
              r31.y = dot(r29.xyz, r28.xyz);
              r31.z = dot(r29.xyz, r32.xyz);
              r29.xyz = saturate(r31.xyz * r33.xyz + float3(0.5,0.5,0.5));
              r34.z = r35.x;
              r29.xyz = r29.xyz * r34.xyz + r35.yzw;
              r36.x = dot(r1.xyz, r27.xyz);
              r36.y = dot(r1.xyz, r28.xyz);
              r36.z = dot(r1.xyz, r32.xyz);
              r27.xyz = cmp(float3(0,0,0) < r36.xyz);
              r16.z = r27.x ? 0 : 0.5;
              r28.xyz = r29.xyz + r16.xyz;
              r28.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
              r30.xzw = r36.xyz * r36.xyz;
              r30.xzw = r30.xzw * r14.xxx;
              r18.z = r27.y ? 0 : 0.5;
              r27.xyw = r29.xyz + r18.xyz;
              r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
              r27.xyw = r27.xyw * r30.zzz;
              r27.xyw = r28.xyz * r30.xxx + r27.xyw;
              r22.z = r27.z ? 0 : 0.5;
              r28.xyz = r29.xyz + r22.xyz;
              r28.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r28.xyz, 0).xyz;
              r27.xyz = r28.xyz * r30.www + r27.xyw;
              r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
              r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
              r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
              r14.y = (int)r29.y | (int)r29.x;
              r14.y = (int)r29.z | (int)r14.y;
              r28.xyz = r14.yyy ? float3(1,1,0) : r28.xyz;
              r29.xyz = r28.xyz * r27.xyz;
              r14.y = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r25.xyz = r27.xyz * r28.xyz + r25.xyz;
              r14.z = r14.y * r10.y;
              r17.yzw = r17.yzw * r14.xxx;
              r14.x = dot(r17.yzw, float3(0.212599993,0.715200007,0.0722000003));
              r14.x = r10.y * r14.y + r14.x;
              r14.x = r14.z / r14.x;
              r27.x = r25.w;
              r27.yz = r26.xy;
              r14.xyz = r17.yzw * r14.xxx + r27.xyz;
              r25.w = r14.x;
              r26.xy = r14.yz;
            } else {
              r26.w = (int)r26.w + 1;
            }
          }
        }
      }
      r23.xyzw = r25.wxyz;
      r24.xyzw = r26.xyzw;
      r11.z = (int)r11.z + 32;
    }
    r21.xyzw = r24.zxyw;
    r10.w = cmp(r21.x < 1);
    if (r10.w != 0) {
      r13.xy = float2(0,0);
      r14.w = 0;
      r15.yz = float2(0,1);
      r16.xy = float2(0,0);
      r17.x = 1;
      r18.xy = float2(0,0);
      r22.xy = float2(0,0);
      r11.yzw = r23.yzw;
      r24.x = r23.x;
      r24.yz = r21.yz;
      r17.zw = r21.xw;
      r10.w = r21.x;
      r13.w = 0;
      while (true) {
        r15.w = cmp((uint)r13.w >= (uint)r5.x);
        if (r15.w != 0) break;
        r13.z = (uint)r13.w >> 5;
        r14.xyz = (int3)r4.xyz + (int3)r13.xyz;
        r13.z = visibleProbes.Load(r14.xyzw).x;
        r14.x = cmp((int)r5.y == (int)r13.w);
        if (r10.z == 0) r14.y = 0; else if (r10.z+0 < 32) {         r14.y = (uint)r13.z << (32-(r10.z + 0)); r14.y = (uint)r14.y >> (32-r10.z);        } else r14.y = (uint)r13.z >> 0;
        r13.z = r14.x ? r14.y : r13.z;
        r14.x = (int)r13.w + numLights;
        r25.xyz = r11.yzw;
        r26.xyz = r24.xyz;
        r14.yz = r17.zw;
        r15.w = r10.w;
        r16.w = r13.z;
        while (true) {
          if (r16.w == 0) break;
          r18.w = firstbitlow((uint)r16.w);
          r20.w = 1 << (int)r18.w;
          r22.w = (int)r16.w & (int)r20.w;
          if (r22.w != 0) {
            r16.w = (int)r16.w ^ (int)r20.w;
            r20.w = (int)r14.x + (int)r18.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r20.w, l(0), t11.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xy, r20.w, l(16), t11.xyxx
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
            r27.xyz = -v7.xyz + r27.xyz;
            r28.z = r27.w;
            r27.xyz = cmp(abs(r27.xyz) < r28.zxy);
            r20.w = r27.y ? r27.x : 0;
            r20.w = r27.z ? r20.w : 0;
            if (r20.w != 0) {
              r18.w = (int)r13.w + (int)r18.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r18.w, l(0), t15.wxyz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xy, r18.w, l(96), t15.xyxx
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r18.w, l(116), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
              r30.xyz = v7.xyz + -r27.yzw;
              r20.w = (int)r29.w & 0x0000ffff;
              if (6 == 0) r22.w = 0; else if (6+25 < 32) {               r22.w = (uint)r29.w << (32-(6 + 25)); r22.w = (uint)r22.w >> (32-6);              } else r22.w = (uint)r29.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r20.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r20.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r20.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r20.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r20.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r24.w = dot(r31.xyz, r30.xyz);
              r24.w = saturate(r24.w + r31.w);
              r25.w = dot(r32.xyz, r30.xyz);
              r25.w = saturate(r25.w + r32.w);
              r24.w = r25.w * r24.w;
              r25.w = dot(r33.xyz, r30.xyz);
              r25.w = saturate(r25.w + r33.w);
              r24.w = r25.w * r24.w;
              r25.w = dot(r34.xyz, r30.xyz);
              r25.w = saturate(r25.w + r34.w);
              r24.w = r25.w * r24.w;
              r25.w = dot(r35.xyz, r30.xyz);
              r25.w = saturate(r25.w + r35.w);
              r24.w = r25.w * r24.w;
              r25.w = dot(r36.xyz, r30.xyz);
              r25.w = saturate(r25.w + r36.w);
              r15.x = r25.w * r24.w;
              r24.w = (int)r28.x & 1;
              r28.zw = r24.ww ? r15.xy : r15.zx;
              r15.x = r28.x;
              r31.xy = r28.zw;
              r24.w = 1;
              while (true) {
                r25.w = cmp((int)r24.w >= (int)r22.w);
                if (r25.w != 0) break;
                r25.w = (int)r20.w + (int)r24.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r25.w, l(0), t16.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r25.w, l(16), t16.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r25.w, l(32), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r25.w, l(48), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r25.w, l(64), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r25.w, l(80), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
                r25.w = dot(r32.xyz, r30.xyz);
                r25.w = saturate(r25.w + r32.w);
                r25.w = r31.x * r25.w;
                r26.w = dot(r33.xyz, r30.xyz);
                r26.w = saturate(r26.w + r33.w);
                r25.w = r26.w * r25.w;
                r26.w = dot(r34.xyz, r30.xyz);
                r26.w = saturate(r26.w + r34.w);
                r25.w = r26.w * r25.w;
                r26.w = dot(r35.xyz, r30.xyz);
                r26.w = saturate(r26.w + r35.w);
                r25.w = r26.w * r25.w;
                r26.w = dot(r36.xyz, r30.xyz);
                r26.w = saturate(r26.w + r36.w);
                r25.w = r26.w * r25.w;
                r26.w = dot(r37.xyz, r30.xyz);
                r26.w = saturate(r26.w + r37.w);
                r31.x = r26.w * r25.w;
                r27.w = (uint)r15.x >> 2;
                if (1 == 0) r30.w = 0; else if (1+2 < 32) {                 r30.w = (uint)r15.x << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);                } else r30.w = (uint)r15.x >> 2;
                r31.z = (int)r27.w & 2;
                r31.w = max(r31.y, r31.x);
                r25.w = -r25.w * r26.w + 1;
                r25.w = r31.y * r25.w;
                r17.y = r31.z ? r25.w : r31.w;
                r31.xy = r30.ww ? r31.xy : r17.xy;
                r24.w = (int)r24.w + 1;
                r15.x = r27.w;
              }
              r15.x = saturate(r31.y + -r15.w);
              r17.y = r15.x * r28.y;
              r20.w = cmp(0 < r17.y);
              if (r20.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(16), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(32), t15.yxwz
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(48), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r18.w, l(64), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r18.w, l(80), t15.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r18.w, l(132), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r18.w, l(148), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r18.w, l(164), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r18.w, l(180), t15.zwxy
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r18.w, l(196), t15.xyzw
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xy, r18.w, l(212), t15.xyxx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
                r14.z = (int)r14.z + 257;
                r14.y = r15.x * r28.y + r14.y;
                r15.x = r17.y * r29.z;
                r29.z = r37.z;
                r17.y = dot(r12.xyz, r29.xyz);
                r18.w = dot(r30.xyz, r29.xyz);
                r18.w = r18.w + -r37.w;
                r20.w = cmp(r18.w >= 0);
                r18.w = max(abs(r18.w), r9.w);
                r18.w = r20.w ? r18.w : -r18.w;
                r17.y = max(1.00000001e-07, -r17.y);
                r17.y = r18.w / r17.y;
                r17.y = min(131072, abs(r17.y));
                r37.z = r38.z;
                r18.w = dot(r12.xyz, r37.xyz);
                r20.w = dot(r30.xyz, r37.xyz);
                r20.w = r20.w + -r38.w;
                r22.w = cmp(r20.w >= 0);
                r20.w = max(abs(r20.w), r9.w);
                r20.w = r22.w ? r20.w : -r20.w;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r20.w / r18.w;
                r17.y = min(abs(r18.w), r17.y);
                r38.z = r39.z;
                r18.w = dot(r12.xyz, r38.xyz);
                r20.w = dot(r30.xyz, r38.xyz);
                r20.w = r20.w + -r39.w;
                r22.w = cmp(r20.w >= 0);
                r20.w = max(abs(r20.w), r9.w);
                r20.w = r22.w ? r20.w : -r20.w;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r20.w / r18.w;
                r17.y = min(abs(r18.w), r17.y);
                r39.z = r40.z;
                r18.w = dot(r12.xyz, r39.xyz);
                r20.w = dot(r30.xyz, r39.xyz);
                r20.w = r20.w + -r40.w;
                r22.w = cmp(r20.w >= 0);
                r20.w = max(abs(r20.w), r9.w);
                r20.w = r22.w ? r20.w : -r20.w;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r20.w / r18.w;
                r17.y = min(abs(r18.w), r17.y);
                r40.z = r41.x;
                r18.w = dot(r12.xyz, r40.xyz);
                r20.w = dot(r30.xyz, r40.xyz);
                r20.w = r20.w + -r41.y;
                r22.w = cmp(r20.w >= 0);
                r20.w = max(abs(r20.w), r9.w);
                r20.w = r22.w ? r20.w : -r20.w;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r20.w / r18.w;
                r17.y = min(abs(r18.w), r17.y);
                r42.zw = r41.zw;
                r18.w = dot(r12.zxy, r42.xzw);
                r20.w = dot(r30.zxy, r42.xzw);
                r20.w = r20.w + -r42.y;
                r22.w = cmp(r20.w >= 0);
                r20.w = max(abs(r20.w), r9.w);
                r20.w = r22.w ? r20.w : -r20.w;
                r18.w = max(1.00000001e-07, -r18.w);
                r18.w = r20.w / r18.w;
                r17.y = min(abs(r18.w), r17.y);
                r28.x = r34.w;
                r28.yz = r35.zw;
                r28.xyz = r28.xyz + r30.xyz;
                r28.xyz = r12.xyz * r17.yyy + r28.xyz;
                r18.w = dot(r28.xyz, r28.xyz);
                r18.w = sqrt(r18.w);
                r17.y = r17.y / r18.w;
                r17.y = r17.y + r17.y;
                r17.y = sqrt(r17.y);
                r17.y = r0.z * 5 + r17.y;
                r17.y = -0.844799995 + r17.y;
                r27.y = r32.z;
                r27.z = r33.x;
                r37.x = dot(r28.xyz, r27.xyz);
                r29.xy = r32.xw;
                r29.z = r33.w;
                r37.y = dot(r28.xyz, r29.xyz);
                r33.x = r32.y;
                r37.z = dot(r28.xyz, r33.xyz);
                if (9 == 0) r18.w = 0; else if (9+16 < 32) {                 r18.w = (uint)r29.w << (32-(9 + 16)); r18.w = (uint)r18.w >> (32-9);                } else r18.w = (uint)r29.w >> 16;
                r37.w = (uint)r18.w;
                r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, r17.y).xyz;
                r31.xzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
                r31.xzw = cmp((int3)r31.xzw == int3(2139095040,2139095040,2139095040));
                r17.y = (int)r31.z | (int)r31.x;
                r17.y = (int)r31.w | (int)r17.y;
                r28.xyz = r17.yyy ? float3(1,1,0) : r28.xyz;
                r32.x = dot(r30.xyz, r27.xyz);
                r32.y = dot(r30.xyz, r29.xyz);
                r32.z = dot(r30.xyz, r33.xyz);
                r30.xyz = saturate(r32.xyz * r34.xyz + float3(0.5,0.5,0.5));
                r35.z = r36.x;
                r30.xyz = r30.xyz * r35.xyz + r36.yzw;
                r37.x = dot(r1.xyz, r27.xyz);
                r37.y = dot(r1.xyz, r29.xyz);
                r37.z = dot(r1.xyz, r33.xyz);
                r27.xyz = cmp(float3(0,0,0) < r37.xyz);
                r16.z = r27.x ? 0 : 0.5;
                r29.xyz = r30.xyz + r16.xyz;
                r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
                r31.xzw = r37.xyz * r37.xyz;
                r31.xzw = r31.xzw * r15.xxx;
                r18.z = r27.y ? 0 : 0.5;
                r27.xyw = r30.xyz + r18.xyz;
                r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
                r27.xyw = r27.xyw * r31.zzz;
                r27.xyw = r29.xyz * r31.xxx + r27.xyw;
                r22.z = r27.z ? 0 : 0.5;
                r29.xyz = r30.xyz + r22.xyz;
                r29.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
                r27.xyz = r29.xyz * r31.www + r27.xyw;
                r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, 6).xyz;
                r30.xyz = (int3)r29.xyz & int3(-2147483648,-2147483648,-2147483648);
                r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
                r16.z = (int)r30.y | (int)r30.x;
                r16.z = (int)r30.z | (int)r16.z;
                r29.xyz = r16.zzz ? float3(1,1,0) : r29.xyz;
                r30.xyz = r29.xyz * r27.xyz;
                r16.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r25.xyz = r27.xyz * r29.xyz + r25.xyz;
                r17.y = r16.z * r10.y;
                r27.xyz = r28.xyz * r15.xxx;
                r15.x = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r15.x = r10.y * r16.z + r15.x;
                r15.x = r17.y / r15.x;
                r26.xyz = r27.xyz * r15.xxx + r26.xyz;
              } else {
                r14.z = (int)r14.z + 1;
              }
            }
          }
        }
        r11.yzw = r25.xyz;
        r24.xyz = r26.xyz;
        r17.zw = r14.yz;
        r13.w = (int)r13.w + 32;
      }
      r23.xyz = r24.xyz;
      r21.yw = r17.zw;
      r21.xw = r21.yw;
    } else {
      r11.yzw = r23.yzw;
      r23.yz = r21.yz;
    }
    r0.z = max(1, r21.x);
    r0.z = rcp(r0.z);
    r21.x = saturate(r21.x);
    r19.xyz = r11.yzw * r0.zzz;
    r20.xyz = r23.xyz * r0.zzz;
    r4.x = cmp(r21.x < 0.99000001);
    if (r4.x != 0) {
      r21.w = (int)r21.w + 256;
      r4.x = 1 + -r21.x;
      r4.y = sunConstants.globalProbeExposure * r4.x;
      r10.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
      r13.x = globalProbeConstants.data[0].w * r10.y;
      r13.yz = globalProbeConstants.data[1].xy * r10.zw;
      r10.yzw = saturate(float3(0.5,0.5,0.5) + r13.xyz);
      r13.xy = globalProbeConstants.data[1].zw * r10.yz;
      r13.z = globalProbeConstants.data[2].x * r10.w;
      r10.yzw = globalProbeConstants.data[2].yzw + r13.xyz;
      r13.xyz = cmp(float3(0,0,0) < r1.xyz);
      r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r13.w = 0;
      r14.xyz = r13.wwx + r10.yzw;
      r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r15.xyz = r1.xyz * r1.xyz;
      r15.xyz = r15.xyz * r4.yyy;
      r16.xyz = r13.wwy + r10.yzw;
      r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r16.xyz = r16.xyz * r15.yyy;
      r14.xyz = r14.xyz * r15.xxx + r16.xyz;
      r10.yzw = r13.wwz + r10.yzw;
      r10.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
      r10.yzw = r10.yzw * r15.zzz + r14.xyz;
      r1.w = 0;
      r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
      r10.yzw = r13.xyz * r10.yzw;
      r1.w = dot(r10.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r19.xyz = r11.yzw * r0.zzz + r10.yzw;
      r12.w = 0;
      r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r8.w).xyz;
      r0.z = sunConstants.globalProbeExposure * r4.x + -r1.w;
      r0.z = r6.y * r0.z + r1.w;
      r20.xyz = r10.yzw * r0.zzz + r20.xyz;
    }
  } else {
    r20.x = r19.w;
  }
  if (useSSR != 0) {
    r0.z = dot(r2.yzw, r1.xyz);
    r0.z = r0.z + r0.z;
    r4.xyz = r1.xyz * -r0.zzz + r2.yzw;
    r0.z = dot(r2.yzw, -r1.xyz);
    r0.z = r0.z + r0.z;
    r10.yzw = r1.xyz * r0.zzz + r2.yzw;
    r4.xyz = v10.xxx ? r4.xyz : r10.yzw;
    if (useLoopedSSR != 0) {
      r10.yzw = viewMatrix._m10_m11_m12 * v7.yyy;
      r10.yzw = v7.xxx * viewMatrix._m00_m01_m02 + r10.yzw;
      r10.yzw = v7.zzz * viewMatrix._m20_m21_m22 + r10.yzw;
      r11.yzw = ssrParams.zzz * r4.xyz;
      r12.xyz = viewMatrix._m10_m11_m12 * r11.zzz;
      r12.xyz = r11.yyy * viewMatrix._m00_m01_m02 + r12.xyz;
      r11.yzw = r11.www * viewMatrix._m20_m21_m22 + r12.xyz;
      r0.z = min(1000, ssrParams.x);
      r10.yzw = r11.yzw * float3(10,10,10) + r10.yzw;
      r0.z = r0.z / ssrParams.z;
      r12.xyz = r20.xyz;
      r13.xyz = r10.yzw;
      r1.w = 0;
      while (true) {
        r5.x = (int)r1.w;
        r5.x = cmp(r5.x >= r0.z);
        if (r5.x != 0) break;
        r13.xyz = r13.xyz + r11.yzw;
        r14.xyz = projectionMatrix._m10_m11_m13 * r13.yyy;
        r14.xyz = r13.xxx * projectionMatrix._m00_m01_m03 + r14.xyz;
        r14.xyz = r13.zzz * projectionMatrix._m20_m21_m23 + r14.xyz;
        r14.xyz = projectionMatrix._m30_m31_m33 + r14.xyz;
        r5.x = max(abs(r14.x), abs(r14.y));
        r5.x = cmp(r14.z < r5.x);
        if (r5.x != 0) {
          break;
        }
        r5.xy = r14.xy / r14.zz;
        r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r5.x = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r5.xy, 1).x;
        r5.y = cmp(abs(r5.x) < r13.z);
        r6.y = cmp(abs(r5.x) >= v0.w);
        r5.y = r5.y ? r6.y : 0;
        if (r5.y != 0) {
          r5.x = r13.z + -abs(r5.x);
          r5.x = ssrParams.w * r5.x;
          r14.xyz = -r5.xxx * r11.yzw + r13.xyz;
          r15.xyz = projectionMatrix._m10_m11_m13 * r14.yyy;
          r14.xyw = r14.xxx * projectionMatrix._m00_m01_m03 + r15.xyz;
          r14.xyz = r14.zzz * projectionMatrix._m20_m21_m23 + r14.xyw;
          r14.xyz = projectionMatrix._m30_m31_m33 + r14.xyz;
          r5.xy = r14.xy / r14.zz;
          r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r14.xyz = iResolveScene.SampleLevel(bilinearClamp_s, r5.xy, 0).xyz;
          r14.xyz = relHDRExposure.xxx * r14.xyz;
          r12.xyz = r14.xyz;
          break;
        }
        r1.w = (int)r1.w + 1;
      }
      r20.xyz = r12.xyz;
    } else {
      r0.z = ssrParams.y * r4.w;
      r4.xyz = r4.xyz * r0.zzz + v7.xyz;
      r10.yzw = viewProjectionMatrix._m10_m11_m13 * r4.yyy;
      r10.yzw = r4.xxx * viewProjectionMatrix._m00_m01_m03 + r10.yzw;
      r4.xyz = r4.zzz * viewProjectionMatrix._m20_m21_m23 + r10.yzw;
      r4.xyz = viewProjectionMatrix._m30_m31_m33 + r4.xyz;
      r4.xy = r4.xy / r4.zz;
      r0.z = max(abs(r4.x), abs(r4.y));
      r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
      r1.w = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r4.xy, 0).x;
      r1.w = cmp(abs(r1.w) >= v0.w);
      r0.z = cmp(r0.z < 1);
      r0.z = r0.z ? r1.w : 0;
      r4.xyz = iResolveScene.Sample(bilinearClamp_s, r4.xy).xyz;
      if (r0.z != 0) {
        r20.xyz = relHDRExposure.xxx * r4.xyz;
      }
    }
  }
  r0.z = dot(r1.xyz, sunConstants.wldDir.xyz);
  r1.w = saturate(r0.z);
  r4.x = cmp(0 >= r1.w);
  if (r4.x != 0) {
    r4.y = 0;
  }
  if (r4.x == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r10.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r4.x = -sunConstants.splitDepthOffset + r10.w;
    r4.x = -r4.x * 6.10351563e-05 + 1;
    r4.z = saturate(r4.x);
    r4.z = cmp(r4.x == r4.z);
    if (r4.z != 0) {
      r4.z = 0;
      r5.x = 0;
      while (true) {
        r5.y = cmp(r4.z >= 3);
        if (r5.y != 0) break;
        r5.y = (uint)r4.z;
        r11.yz = -sunConstants.splitPinTransform[r5.y].xy + r10.yz;
        r6.y = max(abs(r11.y), abs(r11.z));
        r5.x = sunConstants.splitPinTransform[r5.y].z * r6.y;
        r5.y = cmp(r5.x < 1);
        if (r5.y != 0) {
          break;
        }
        r4.z = 1 + r4.z;
        r5.x = 0;
      }
    } else {
      r4.z = 3;
      r5.x = 0;
    }
    r5.y = cmp(r4.z >= 3);
    if (r5.y != 0) {
      r11.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r12.xz = rcp(r11.yy);
      r12.y = -r12.z;
      r11.yzw = r10.yzy * r12.xyz + r11.zwz;
      r12.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r11.yzw = max(float3(0,0,0), r11.yzw);
      r11.yzw = min(r11.yzw, r12.xyz);
      r12.xy = sunConstants.sstLightingConstants.coordScale * r11.wz;
      r12.xy = floor(r12.xy);
      r6.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r12.y;
      r6.y = r6.y * sunConstants.sstLightingConstants.coordScale + r12.x;
      r6.y = (uint)r6.y;
      r6.y = (int)r6.y + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r6.y, l(0), t23.xxxx
    r8.w = samp0[]..swiz;
      r9.w = (int)r8.w & 0x40000000;
      r12.x = (uint)r8.w << 2;
      if (r9.w == 0) {
        r9.w = (int)r8.w & 0x01ffffff;
        r13.x = (int)r6.y + (int)r9.w;
        r6.y = (uint)r8.w >> 25;
        r6.y = (uint)r6.y;
        r11.yzw = r11.yzw * r6.yyy;
        r11.yzw = frac(r11.yzw);
        r11.yzw = float3(128,128,128) * r11.yzw;
        r11.yzw = (uint3)r11.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
      r13.z = samp0[]..swiz;
        r12.yz = (uint2)r11.wz >> int2(6,6);
        r6.y = (int)r13.z & 0xc0000000;
        r8.w = (int)r13.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.w, l(0), t23.xxxx
      r8.w = samp0[]..swiz;
        r8.w = r12.z ? r13.z : r8.w;
        r9.w = (uint)r8.w >> 13;
        r8.w = r12.y ? r9.w : r8.w;
        r8.w = (int)r8.w & 8191;
        r14.x = (int)r8.w + (int)r13.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
      r14.z = samp0[]..swiz;
        r13.y = 0;
        r14.y = 1;
        r12.yzw = r6.yyy ? r13.xyz : r14.xyz;
        r14.yz = r6.yy ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r15.xy = (uint2)r11.wz >> (uint2)r14.yy;
        r15.xy = (int2)r15.xy & int2(1,1);
        r8.w = (int)r12.w & 0xc0000000;
        r9.w = (int)r12.y + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
      r9.w = samp0[]..swiz;
        r9.w = r15.y ? r12.w : r9.w;
        r13.w = (uint)r9.w >> 13;
        r9.w = r15.x ? r13.w : r9.w;
        r9.w = (int)r9.w & 8191;
        r14.x = (int)r9.w + (int)r12.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r12.yzw = r8.www ? r12.yzw : r14.xzw;
        r12.yzw = r6.yyy ? r13.xyz : r12.yzw;
        r6.y = (int)r12.w & 0xc0000000;
        if (r6.y == 0) {
          r6.y = (int)-r12.z + 6;
          r13.xy = (uint2)r11.wz >> (uint2)r6.yy;
          r6.y = (int)r12.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r8.w = (((uint)r13.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r8.w = (((uint)r13.x << 0) & bitmask.w) | ((uint)r8.w & ~bitmask.w);
          r8.w = (int)r8.w * 10;
          r6.y = (uint)r6.y >> (uint)r8.w;
          r6.y = (int)r6.y & 1023;
          r13.x = (int)r6.y + (int)r12.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.x, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          r13.yz = (int2)r12.zz + int2(1,2);
          r6.y = (int)-r13.y + 6;
          r14.xy = (uint2)r11.wz >> (uint2)r6.yy;
          r6.y = (int)r13.w & 0xc0000000;
          r8.w = (int)r13.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.w = (((uint)r14.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.w = (((uint)r14.x << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
          r9.w = (int)r9.w * 10;
          r8.w = (uint)r8.w >> (uint)r9.w;
          r8.w = (int)r8.w & 1023;
          r14.x = (int)r8.w + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r14.y = r13.z;
          r14.xyz = r6.yyy ? r13.xyw : r14.xyz;
          r8.w = (int)-r14.y + 6;
          r13.yz = (uint2)r11.wz >> (uint2)r8.ww;
          r8.w = (int)r14.z & 0xc0000000;
          r9.w = (int)r14.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.z = (((uint)r13.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.z = (((uint)r13.y << 0) & bitmask.z) | ((uint)r12.z & ~bitmask.z);
          r12.z = (int)r12.z * 10;
          r9.w = (uint)r9.w >> (uint)r12.z;
          r9.w = (int)r9.w & 1023;
          r15.x = (int)r9.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.x, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r13.yz = r8.ww ? r14.xz : r15.xy;
          r12.yw = r6.yy ? r13.xw : r13.yz;
        }
        r6.y = (int)r12.w & 0xc0000000;
        if (r6.y == 0) {
          if (14 == 0) r8.w = 0; else if (14+15 < 32) {           r8.w = (uint)r12.w << (32-(14 + 15)); r8.w = (uint)r8.w >> (32-14);          } else r8.w = (uint)r12.w >> 15;
          r8.w = (uint)r8.w;
          r8.w = sunConstants.sstLightingConstants.constants.spanInInches * r8.w;
          r8.w = 6.10388815e-05 * r8.w;
          r13.xy = (int2)r12.ww & int2(32767,536870912);
          r9.w = (uint)r13.x;
          r9.w = sunConstants.sstLightingConstants.constants.spanInInches * r9.w;
          r9.w = 3.05185094e-05 * r9.w;
          r12.z = (int)r11.z & 3;
          r12.z = (int)r12.z + (int)r12.y;
          r12.z = (int)r12.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r13.x = (((uint)r11.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r13.z = (((uint)r11.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r13.w = (((uint)r11.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r11.y = (uint)r12.z >> (uint)r13.x;
          r11.y = (int)r11.y & 255;
          r11.y = (uint)r11.y;
          r11.y = r11.y * r9.w;
          r11.y = r11.y * 0.00392156886 + r8.w;
          r11.z = (int)r13.z + 1;
          if (1 == 0) r11.w = 0; else if (1+1 < 32) {           r11.w = (uint)r11.w << (32-(1 + 1)); r11.w = (uint)r11.w >> (32-1);          } else r11.w = (uint)r11.w >> 1;
          r11.z = (int)r11.w + (int)r11.z;
          r11.z = (int)r11.z + (int)r12.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.z, l(0), t23.xxxx
        r11.z = samp0[]..swiz;
          r11.z = (uint)r11.z >> (uint)r13.w;
          r11.z = (int)r11.z & 0x0000ffff;
          r11.z = (uint)r11.z;
          r9.w = r11.z * r9.w;
          r8.w = r9.w * 1.52590219e-05 + r8.w;
          r12.x = r13.y ? r11.y : r8.w;
        } else {
          r8.w = (int)r12.w & 0x80000000;
          r9.w = (int)r12.y + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
        r9.w = samp0[]..swiz;
          r8.w = r8.w ? r9.w : 0;
          r9.w = (uint)r12.w << 2;
          r11.y = (uint)r8.w >> 16;
          r11.y = f16tof32(r11.y);
          r8.w = (int)r8.w & 0x0000ffff;
          r8.w = f16tof32(r8.w);
          r9.w = r10.y * r11.y + r9.w;
          r8.w = r10.z * r8.w + r9.w;
          r12.x = r6.y ? r8.w : r12.x;
        }
      }
      r6.y = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r6.y = cmp(r12.x < r6.y);
      r4.y = r6.y ? 0 : 1;
    }
    if (r5.y == 0) {
      if (enableDitheredShadow == 0) {
        r5.y = (uint)r4.z;
        r11.yz = -sunConstants.splitPinTransform[r5.y].xy + r10.yz;
        r11.yz = sunConstants.splitPinTransform[r5.y].zz * r11.yz;
        r12.xy = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r5.y = (int16)sunConstants.splitArrayOffset;
        r12.z = r5.y + r4.z;
        r5.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r4.x).x;
        r6.y = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
        r5.y = r6.y + r5.y;
        r5.y = saturate(-1 + r5.y);
        r6.y = r5.y * r5.y;
        r4.y = r6.y * r5.y;
      }
      if (enableDitheredShadow != 0) {
        r12.x = -r10.x;
        r5.y = (uint)r4.z;
        r4.z = 1 + r4.z;
        r4.z = min(2, r4.z);
        r4.z = (uint)r4.z;
        r5.x = 1 + -r5.x;
        r5.x = 28 * r5.x;
        r5.x = (uint)r5.x;
        r11.yz = -sunConstants.splitPinTransform[r5.y].xy + r10.yz;
        r11.yz = sunConstants.splitPinTransform[r5.y].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r4.z].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r4.z].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.y = r11.x;
        r12.z = r10.x;
        r6.y = 0;
        r8.w = 0;
        while (true) {
          r9.w = cmp((uint)r8.w >= 8);
          if (r9.w != 0) break;
          r9.w = cmp((uint)r5.x < (uint)r8.w);
          r13.xy = r9.ww ? r10.yz : r11.yz;
          r10.w = r9.w ? sunConstants.splitPinTransform[r4.z].w : sunConstants.splitPinTransform[r5.y].w;
          r9.w = r9.w ? r4.z : r5.y;
          r14.x = dot(icb[r8.w+0].yx, r12.xy);
          r14.y = dot(icb[r8.w+0].yx, r12.yz);
          r13.xy = r14.xy * r10.ww + r13.xy;
          r9.w = (int)r9.w + (int16)sunConstants.splitArrayOffset;
          r13.z = (uint)r9.w;
          r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r4.x).x;
          r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r13.xyz, 0).x;
          r9.w = r10.w + r9.w;
          r9.w = saturate(-1 + r9.w);
          r6.y = r9.w * 0.125 + r6.y;
          r8.w = (int)r8.w + 1;
        }
        r4.x = r6.y * r6.y;
        r4.y = r4.x * r6.y;
      }
    }
  }
  r4.x = viewmodelSunShadowRaw & 0x0000ffff;
  r4.z = cmp(0 < (uint)r4.x);
  r5.x = cmp(0 < r4.y);
  r4.z = r4.z ? r5.x : 0;
  if (r4.z != 0) {
    r4.x = (int)r4.x + numLights;
    r4.x = (int)r4.x + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r4.z, r4.x, l(52), t12.xxxx
  r4.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r4.x, l(68), t12.xyzw
  r12.x = samp0[]..swiz;
  r12.y = samp0[]..swiz;
  r12.z = samp0[]..swiz;
  r12.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r4.x, l(84), t12.xyzw
  r13.x = samp0[]..swiz;
  r13.y = samp0[]..swiz;
  r13.z = samp0[]..swiz;
  r13.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r4.x, l(100), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.x, l(116), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.x, l(132), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r4.x, l(148), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
    r0.z = abs(r0.z) * -0.200000003 + 0.400000006;
    r18.xyz = r1.xyz * r0.zzz + v7.xyz;
    r18.w = 1;
    r5.x = dot(r12.xyzw, r18.xyzw);
    r5.y = dot(r13.xyzw, r18.xyzw);
    r0.z = dot(r14.xyzw, r18.xyzw);
    r6.y = dot(r15.xyzw, r18.xyzw);
    r8.w = cmp(r6.y < r0.z);
    r5.xy = r5.xy / r6.yy;
    r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r5.xy = r5.xy + r17.zw;
    r5.xy = r5.xy * r17.xy;
    r10.yz = r4.zz / r16.xz;
    r11.yz = float2(1,1) + -r10.yz;
    r11.yz = cmp(r5.xy >= r11.yz);
    r10.yz = cmp(r10.yz >= r5.xy);
    r10.yz = (int2)r10.yz | (int2)r11.yz;
    r9.w = (int)r10.z | (int)r10.y;
    r8.w = (int)r8.w | (int)r9.w;
    if (r8.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r4.x, l(28), t12.xxxx
    r8.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.yz, r4.x, l(164), t12.xxyx
    r10.y = samp0[]..swiz;
    r10.z = samp0[]..swiz;
      r5.xy = saturate(r5.xy);
      r12.xy = r5.xy * r16.xz + r16.yw;
      r4.x = r10.z * r6.y;
      r0.z = r10.y * r6.y + r0.z;
      r0.z = r0.z / r4.x;
      r0.z = max(6.10351563e-05, r0.z);
      r4.x = r8.w ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r13.x = -r10.x;
        r14.z = (uint)r4.x;
        r13.y = r11.x;
        r13.z = r10.x;
        r5.xy = float2(0,0);
        while (true) {
          r6.y = cmp((int)r5.y >= 8);
          if (r6.y != 0) break;
          r10.x = dot(icb[r5.y+0].yx, r13.xy);
          r10.y = dot(icb[r5.y+0].yx, r13.yz);
          r14.xy = r10.xy * r4.zz + r12.xy;
          r6.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r0.z).x;
          r5.x = r6.y * 0.125 + r5.x;
          r5.y = (int)r5.y + 1;
        }
      } else {
        r12.z = (uint)r4.x;
        r5.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r0.z).x;
      }
      r0.z = r5.x * r5.x;
      r0.z = r0.z * r5.x;
    } else {
      r0.z = 1;
    }
    r4.y = r4.y * r0.z;
  }
  r0.z = cmp(0 < r1.w);
  r4.x = cmp(0 < r4.y);
  if (r4.x != 0) {
    if (sunConstants.sunCookieIndex != 0) {
      r3.w = 1;
      r4.x = dot(sunConstants.sunCookieTransform[0].xyzw, r3.xyzw);
      r3.x = dot(sunConstants.sunCookieTransform[1].xyzw, r3.xyzw);
      r10.x = frac(r4.x);
      r10.y = frac(r3.x);
      r3.x = -1 + (int14)sunConstants.sunCookieIndex;
      r10.z = (uint)r3.x;
      r3.xyz = gCookieArray.SampleLevel(samplerLinear_s, r10.xyz, 0).xyz;
      r3.xyz = float3(-1,-1,-1) + r3.xyz;
      r3.xyz = sunConstants.sunCookieIntensity * r3.xyz + float3(1,1,1);
      r3.xyz = sunConstants.color.xyz * r3.xyz;
    } else {
      r3.xyz = sunConstants.color.xyz;
    }
    r3.xyz = r4.yyy * r3.xyz;
    r0.y = r1.w + r0.y;
    r0.y = r1.w / r0.y;
    r4.xyz = r3.xyz * r0.yyy + r19.xyz;
    r10.xyz = -v7.xyz * r6.zzz + sunConstants.wldDir.xyz;
    r0.y = dot(r10.xyz, r10.xyz);
    r0.y = rsqrt(r0.y);
    r10.xyz = r10.xyz * r0.yyy;
    r0.y = saturate(dot(r1.xyz, r10.xyz));
    r1.z = saturate(dot(r10.xyz, r9.xyz));
    r3.w = r0.y * r0.y;
    r5.xy = r3.ww * specularLobeRoughnessControl.xz + float2(1,1);
    r5.xy = r5.xy * r5.xy;
    r5.xy = specularLobeRoughnessControl.yw / r5.xy;
    r5.xy = r5.xy * r0.yy;
    r0.y = 4 * r1.z;
    r5.xy = r5.xy / r0.yy;
    r5.xy = lobeWeightingThicknessRefraction.xy * r5.xy;
    r9.xyz = r5.xxx * r3.xyz;
    r9.xyz = r9.xyz * r1.www + r20.xyz;
    r3.xyz = r5.yyy * r3.xyz;
    r3.xyz = r3.xyz * r1.www + r9.xyz;
    r1.zw = float2(1.40129846e-45,1.40129846e-45);
  } else {
    r4.xyz = r19.xyz;
    r3.xyz = r20.xyz;
    r1.zw = float2(0,0);
  }
  r4.xyz = r0.zzz ? r4.xyz : r19.xyz;
  r3.xyz = r0.zzz ? r3.xyz : r20.xyz;
  r9.xyzw = colorMap.Sample(colorSampler_s, r5.zw).xyzw;
  r0.y = 1 + r4.w;
  r0.y = log2(r0.y);
  r0.y = lobeWeightingThicknessRefraction.w * r0.y;
  r0.y = min(500, r0.y);
  r1.xy = r0.yy * r1.xy + v0.xy;
  r5.xy = float2(-1,-1) + renderTargetSize.xy;
  r1.xy = max(float2(0,0), r1.xy);
  r1.xy = min(r1.xy, r5.xy);
  r10.xy = (int2)r1.xy;
  r10.zw = float2(0,0);
  r0.y = ifloatZScene.Load(r10.xyz).x;
  r3.w = cmp(r0.y >= 0.984375);
  r5.x = 1.01587307 * r0.y;
  r0.y = r0.y * 64 + -63;
  r0.y = r3.w ? r0.y : r5.x;
  r0.y = max(9.99999994e-09, r0.y);
  r0.y = rcp(r0.y);
  r0.x = cmp(r0.x < r0.y);
  r1.xy = renderTargetSize.zw * r1.xy;
  r5.xyw = iResolveScene.Sample(pointClamp_s, r1.xy).xyz;
  if (r0.x == 0) {
    r10.xy = (int2)v0.xy;
    r10.zw = float2(0,0);
    r5.xyw = iResolveScene.Load(r10.xyz).xyz;
  }
  r10.xyz = relHDRExposure.xxx * r5.xyw;
  r0.x = r4.w + r4.w;
  r0.y = r4.w * 2 + 1;
  r0.y = log2(r0.y);
  r1.x = 0.0833333358 * r0.y;
  r1.y = 0;
  r11.xyzw = rColorRamp.Sample(bilinearClamp_s, r1.xy).xyzw;
  r11.xyz = r11.xyz * r10.xyz;
  r0.y = r11.w * r9.w;
  r9.xyz = r9.xyz * r4.xyz + -r11.xyz;
  r9.xyz = r0.yyy * r9.xyz + r11.xyz;
  r5.xyw = -r5.xyw * relHDRExposure.xxx + r9.xyz;
  r5.xyw = r6.xxx * r5.xyw + r10.xyz;
  r6.xyz = r8.xyz * r4.xyz + -r5.xyw;
  r5.xyw = r7.xxx * r6.xyz + r5.xyw;
  r3.xyz = r3.xyz * r0.www + r7.yzw;
  r0.y = 1 + -r5.z;
  r0.w = r0.y * r0.y;
  r0.w = r0.w * r0.w;
  r0.y = r0.y * r0.w;
  r0.y = r0.y * 0.980000019 + 0.0199999996;
  r0.x = saturate(invZFeatherDepth * r0.x);
  r0.x = r0.y * r0.x;
  r0.x = useSpecularZFeather ? r0.x : r0.y;
  r3.xyz = r3.xyz + -r5.xyw;
  r0.xyw = r0.xxx * r3.xyz + r5.xyw;
  r3.xyz = foamColor.xyz * r4.xyz + -r0.xyw;
  r3.xyz = r6.www * r3.xyz + r0.xyw;
  r0.xyw = useFoam ? r3.xyz : r0.xyw;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      r1.xy = r0.zz ? r1.wz : 0;
      switch (cb2[53].y) {
        case 1 :        r1.x = 1;
        break;
        case 2 :        r1.x = r1.y;
        break;
        case 3 :        break;
        case 4 :        r1.x = (int)r21.w & 255;
        break;
        case 5 :        if (8 == 0) r1.x = 0; else if (8+8 < 32) {         r1.x = (uint)r21.w << (32-(8 + 8)); r1.x = (uint)r1.x >> (32-8);        } else r1.x = (uint)r21.w >> 8;
        break;
        default :
        r1.x = 0;
        break;
      }
      r0.z = (uint)r1.x;
      r1.xyz = r0.zzz * float3(50,50,50) + -r0.xyw;
      r0.xyw = drawNumLightsAlpha * r1.xyz + r0.xyw;
    }
  }
  r0.z = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.z != 0) {
    r0.z = sqrt(r2.x);
    r1.x = cmp(0 < fogConstants.blendAmount);
    if (r1.x != 0) {
      r1.xy = r0.zz * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.xy = fogConstants.atmospherefogdensityatcamera.xy * r1.xy;
      r1.z = cmp(0.00999999978 < abs(v7.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r1.xy;
      r1.xy = r1.zz ? r3.xy : r1.xy;
      r1.xzw = fogConstants.atmosphereTotalDensity.xyz * r1.xxx;
      r1.xzw = exp2(r1.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r1.xzw;
      r1.xyz = fogConstants.blendAmount * r3.xyz + r1.xzw;
    } else {
      r1.w = r0.z * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r3.x = cmp(0.00999999978 < abs(v7.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r3.z = -1.44269502 * r3.y;
      r3.z = exp2(r3.z);
      r3.z = 1 + -r3.z;
      r3.y = r3.z / r3.y;
      r3.y = r3.y * r1.w;
      r1.w = r3.x ? r3.y : r1.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r1.xyz = exp2(r3.xyz);
    }
    r1.xyz = r1.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r1.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r1.xyz);
    r1.w = dot(fogConstants.wldSunFogDir.xyz, -r2.yzw);
    r3.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.y = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
    r3.y = r3.y * r3.y;
    r3.y = 12.566371 * r3.y;
    r3.x = r3.x / r3.y;
    r0.z = -fogConstants.atmospherehazebasedist + r0.z;
    r0.z = saturate(fogConstants.atmospherehazefadedist * r0.z);
    r0.z = r3.x * r0.z;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.zzz;
    r3.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r4.xyz = float3(1,1,1) + -r1.xyz;
    r3.xyz = r4.xyz * r3.xyz;
    r1.xyz = r0.xyw * r1.xyz + r3.xyz;
  } else {
    r0.z = fogConstants.heightFalloff * v7.z;
    r1.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r3.x = cmp(abs(r0.z) < 9.99999975e-05);
    r3.y = min(64, r1.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r3.w ? r3.y : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.z = r3.x ? 1 : r0.z;
    r0.z = r1.w / r0.z;
    r0.z = r3.x ? r3.z : r0.z;
    r0.z = fogConstants.expMul * r0.z;
    r1.w = sqrt(r2.x);
    r0.z = r0.z * r1.w + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.yzw);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r2.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r2.xyzw = r1.wwww * r2.xyzw + fogConstants.sunFogColor.xyzw;
    r0.z = r2.w * r0.z;
    r2.xyz = r2.xyz + -r0.xyw;
    r1.xyz = r0.zzz * r2.xyz + r0.xyw;
  }
  r0.xyz = relHDRExposure.yyy * r1.xyz;
  r1.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r1.xyz ? r0.xyz : 0;
  o0.xyz = min(float3(65024,65024,64512), r0.xyz);
  o0.w = 1;
  return;
}