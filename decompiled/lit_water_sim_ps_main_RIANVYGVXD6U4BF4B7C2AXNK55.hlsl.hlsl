// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:45 2021

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
  bool doubleSidedLighting : packoffset(c29.z);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(v0.z >= 0.984375);
  r0.y = 1.01587307 * v0.z;
  r0.z = v0.z * 64 + -63;
  r0.x = r0.x ? r0.z : r0.y;
  r0.x = max(9.99999994e-09, r0.x);
  r0.x = rcp(r0.x);
  r0.yz = (uint2)v0.yx;
  r1.xyz = ddx_coarse(v7.xyz);
  r2.xyz = ddy_coarse(v7.xyz);
  r0.w = numRefProbes + numLights;
  r3.xyz = eyeOffset.xyz + v7.xyz;
  r1.w = 0.0078125 * r0.x;
  r1.w = min(15, r1.w);
  r1.w = (uint)r1.w;
  r4.xy = (uint2)r0.zy >> int2(6,6);
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
  r6.z = cmp(useSpecularZFeather != 0);
  r8.w = dot(-v7.xyz, -v7.xyz);
  r8.w = rsqrt(r8.w);
  r9.xyz = -v7.xyz * r8.www;
  r0.yz = (uint2)r0.yz;
  r9.w = dot(r0.zy, float2(0.0671105608,0.00583714992));
  r9.w = frac(r9.w);
  r9.w = 52.9829178 * r9.w;
  r9.w = frac(r9.w);
  r9.w = r9.w * 6.28318548 + gameTick.w;
  sincos(r9.w, r10.x, r11.x);
  r0.y = dot(r0.yz, float2(0.0671105608,0.00583714992));
  r0.y = frac(r0.y);
  r0.y = 52.9829178 * r0.y;
  r0.y = frac(r0.y);
  r0.y = r0.y * 6.28318548 + gameTick.w;
  sincos(r0.y, r12.x, r13.x);
  r0.y = saturate(dot(r1.xyz, r9.xyz));
  r0.z = dot(-r9.xyz, r1.xyz);
  r0.z = r0.z + r0.z;
  r14.xyz = r1.xyz * -r0.zzz + -r9.xyz;
  r0.z = 1 + -r6.y;
  r9.w = 5 * r0.z;
  r10.z = r0.z * 5 + -2.5;
  r10.z = saturate(0.400000006 * r10.z);
  r10.z = 100 * r10.z;
  r12.yz = -r0.zz * float2(10,5) + float2(6.85740995,7.08500004);
  r10.w = exp2(r12.y);
  r10.w = r10.w * r0.y;
  r10.w = 9.1368103 * r10.w;
  r11.w = r9.w * r0.z;
  r11.w = -r11.w * 2.0159049 + r12.z;
  r11.w = exp2(r11.w);
  r11.w = r11.w * r0.y;
  r11.w = 9.70808983 * r11.w;
  r10.w = max(r11.w, r10.w);
  r10.w = max(1.26815999, r10.w);
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.yz = float2(0,1);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xy = float2(0,0);
  r5.xw = float2(1,0);
  r21.xyzw = float4(0,0,0,0);
  r22.yzw = float3(0,0,0);
  r23.w = 0;
  r11.w = 0;
  r12.y = 0;
  while (true) {
    r12.z = cmp((uint)r12.y >= numRefProbes);
    if (r12.z != 0) break;
    r15.z = (uint)r12.y >> 5;
    r16.xyz = (int3)r4.xyz + (int3)r15.xyz;
    r12.z = visibleProbes.Load(r16.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r12.y, l(0), t15.wxyz
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r12.y, l(16), t15.xyzw
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r12.y, l(32), t15.yxwz
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r12.y, l(48), t15.xyzw
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r12.y, l(64), t15.zwxy
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r12.y, l(80), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r13.yz, r12.y, l(96), t15.xxyx
  r13.y = samp0[]..swiz;
  r13.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r12.y, l(116), t15.xyzw
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r12.y, l(132), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r12.y, l(148), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r12.y, l(164), t15.zwxy
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r12.y, l(180), t15.zwxy
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r12.y, l(196), t15.xyzw
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xy, r12.y, l(212), t15.xyxx
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
    r16.xyz = v7.xyz + -r24.yzw;
    r12.w = dot(r16.xyz, r16.xyz);
    r12.w = sqrt(r12.w);
    r12.w = cmp(probeDebugRadius >= r12.w);
    r13.w = (int)r30.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r13.w, l(0), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(16), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(32), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(48), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(64), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(80), t16.xyzw
  r42.x = samp0[]..swiz;
  r42.y = samp0[]..swiz;
  r42.z = samp0[]..swiz;
  r42.w = samp0[]..swiz;
    r15.z = dot(r37.xyz, r16.xyz);
    r15.z = saturate(r15.z + r37.w);
    r15.w = dot(r38.xyz, r16.xyz);
    r15.w = saturate(r15.w + r38.w);
    r15.z = r15.z * r15.w;
    r15.w = dot(r39.xyz, r16.xyz);
    r15.w = saturate(r15.w + r39.w);
    r15.z = r15.z * r15.w;
    r15.w = dot(r40.xyz, r16.xyz);
    r15.w = saturate(r15.w + r40.w);
    r15.z = r15.z * r15.w;
    r15.w = dot(r41.xyz, r16.xyz);
    r15.w = saturate(r15.w + r41.w);
    r15.z = r15.z * r15.w;
    r15.w = dot(r42.xyz, r16.xyz);
    r15.w = saturate(r15.w + r42.w);
    r17.x = r15.z * r15.w;
    r15.z = (int)r13.y & 1;
    r15.zw = r15.zz ? r17.xy : r17.zx;
    r37.xy = r30.zw;
    r37.z = r31.z;
    r17.x = dot(r14.xyz, r37.xyz);
    r17.w = dot(r16.xyz, r37.xyz);
    r17.w = r17.w + -r31.w;
    r18.w = cmp(r17.w >= 0);
    r17.w = max(abs(r17.w), r10.z);
    r17.w = r18.w ? r17.w : -r17.w;
    r17.x = max(1.00000001e-07, -r17.x);
    r17.x = r17.w / r17.x;
    r17.x = min(131072, abs(r17.x));
    r31.z = r32.z;
    r17.w = dot(r14.xyz, r31.xyz);
    r18.w = dot(r16.xyz, r31.xyz);
    r18.w = r18.w + -r32.w;
    r19.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r10.z);
    r18.w = r19.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r17.x = min(r17.x, abs(r17.w));
    r32.z = r33.z;
    r17.w = dot(r14.xyz, r32.xyz);
    r18.w = dot(r16.xyz, r32.xyz);
    r18.w = r18.w + -r33.w;
    r19.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r10.z);
    r18.w = r19.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r17.x = min(r17.x, abs(r17.w));
    r33.z = r34.z;
    r17.w = dot(r14.xyz, r33.xyz);
    r18.w = dot(r16.xyz, r33.xyz);
    r18.w = r18.w + -r34.w;
    r19.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r10.z);
    r18.w = r19.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r17.x = min(r17.x, abs(r17.w));
    r34.z = r35.x;
    r17.w = dot(r14.xyz, r34.xyz);
    r18.w = dot(r16.xyz, r34.xyz);
    r18.w = r18.w + -r35.y;
    r19.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r10.z);
    r18.w = r19.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r17.x = min(r17.x, abs(r17.w));
    r36.zw = r35.zw;
    r17.w = dot(r14.zxy, r36.xzw);
    r18.w = dot(r16.zxy, r36.xzw);
    r18.w = r18.w + -r36.y;
    r19.w = cmp(r18.w >= 0);
    r18.w = max(abs(r18.w), r10.z);
    r18.w = r19.w ? r18.w : -r18.w;
    r17.w = max(1.00000001e-07, -r17.w);
    r17.w = r18.w / r17.w;
    r17.x = min(r17.x, abs(r17.w));
    r31.x = r27.w;
    r31.yz = r28.zw;
    r31.xyz = r31.xyz + r16.xyz;
    r31.xyz = r14.xyz * r17.xxx + r31.xyz;
    r17.w = dot(r31.xyz, r31.xyz);
    r17.w = sqrt(r17.w);
    r17.x = r17.x / r17.w;
    r17.x = r17.x + r17.x;
    r17.x = sqrt(r17.x);
    r17.x = r0.z * 5 + r17.x;
    r17.x = -0.844799995 + r17.x;
    r24.y = r25.z;
    r24.z = r26.x;
    r32.x = dot(r31.xyz, r24.xyz);
    r33.xy = r25.xw;
    r33.z = r26.w;
    r32.y = dot(r31.xyz, r33.xyz);
    r26.x = r25.y;
    r32.z = dot(r31.xyz, r26.xyz);
    if (6 == 0) r25.x = 0; else if (6+25 < 32) {     r25.x = (uint)r30.y << (32-(6 + 25)); r25.x = (uint)r25.x >> (32-6);    } else r25.x = (uint)r30.y >> 25;
    if (9 == 0) r25.y = 0; else if (9+16 < 32) {     r25.y = (uint)r30.y << (32-(9 + 16)); r25.y = (uint)r25.y >> (32-9);    } else r25.y = (uint)r30.y >> 16;
    r32.w = (uint)r25.y;
    r25.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r17.x).xyz;
    r30.yzw = (int3)r25.yzw & int3(-2147483648,-2147483648,-2147483648);
    r30.yzw = cmp((int3)r30.yzw == int3(2139095040,2139095040,2139095040));
    r17.x = (int)r30.z | (int)r30.y;
    r17.x = (int)r30.w | (int)r17.x;
    r25.yzw = r17.xxx ? float3(1,1,0) : r25.yzw;
    r31.x = dot(r16.xyz, r24.xyz);
    r31.y = dot(r16.xyz, r33.xyz);
    r31.z = dot(r16.xyz, r26.xyz);
    r27.xyz = saturate(r31.xyz * r27.xyz + float3(0.5,0.5,0.5));
    r28.z = r29.x;
    r27.xyz = r27.xyz * r28.xyz + r29.yzw;
    r32.x = dot(r1.xyz, r24.xyz);
    r32.y = dot(r1.xyz, r33.xyz);
    r32.z = dot(r1.xyz, r26.xyz);
    r24.xyz = cmp(float3(0,0,0) < r32.xyz);
    r18.z = r24.x ? 0 : 0.5;
    r26.xyz = r27.xyz + r18.xyz;
    r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
    r19.z = r24.y ? 0 : 0.5;
    r24.xyw = r27.xyz + r19.xyz;
    r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
    r20.z = r24.z ? 0 : 0.5;
    r27.xyz = r27.xyz + r20.xyz;
    r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
    r28.xyz = r32.xyz * r32.xyz;
    r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
    r30.yzw = (int3)r29.xyz & int3(-2147483648,-2147483648,-2147483648);
    r30.yzw = cmp((int3)r30.yzw == int3(2139095040,2139095040,2139095040));
    r17.x = (int)r30.z | (int)r30.y;
    r17.x = (int)r30.w | (int)r17.x;
    r29.xyz = r17.xxx ? float3(1,1,0) : r29.xyz;
    r31.xyzw = r21.xyzw;
    r30.yzw = r22.yzw;
    r17.x = r23.w;
    r17.w = r11.w;
    r18.z = r12.z;
    while (true) {
      if (r18.z == 0) break;
      r18.w = firstbitlow((uint)r18.z);
      r18.w = 1 << (int)r18.w;
      r19.z = (int)r18.w & (int)r18.z;
      if (r19.z != 0) {
        r18.w = ~(int)r18.w;
        r18.z = (int)r18.w & (int)r18.z;
        if (r12.w != 0) {
          r18.w = r13.y;
          r32.xy = r15.zw;
          r19.z = 1;
          while (true) {
            r19.w = cmp((int)r19.z >= (int)r25.x);
            if (r19.w != 0) break;
            r19.w = (int)r13.w + (int)r19.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(0), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(16), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(32), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(48), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r19.w, l(64), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r19.w, l(80), t16.xyzw
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
            r19.w = dot(r33.xyz, r16.xyz);
            r19.w = saturate(r19.w + r33.w);
            r19.w = r32.x * r19.w;
            r20.z = dot(r34.xyz, r16.xyz);
            r20.z = saturate(r20.z + r34.w);
            r19.w = r20.z * r19.w;
            r20.z = dot(r35.xyz, r16.xyz);
            r20.z = saturate(r20.z + r35.w);
            r19.w = r20.z * r19.w;
            r20.z = dot(r36.xyz, r16.xyz);
            r20.z = saturate(r20.z + r36.w);
            r19.w = r20.z * r19.w;
            r20.z = dot(r37.xyz, r16.xyz);
            r20.z = saturate(r20.z + r37.w);
            r19.w = r20.z * r19.w;
            r20.z = dot(r38.xyz, r16.xyz);
            r20.z = saturate(r20.z + r38.w);
            r32.x = r20.z * r19.w;
            r20.w = (uint)r18.w >> 2;
            if (1 == 0) r24.z = 0; else if (1+2 < 32) {             r24.z = (uint)r18.w << (32-(1 + 2)); r24.z = (uint)r24.z >> (32-1);            } else r24.z = (uint)r18.w >> 2;
            r26.w = (int)r20.w & 2;
            r27.w = max(r32.y, r32.x);
            r19.w = -r19.w * r20.z + 1;
            r19.w = r32.y * r19.w;
            r5.y = r26.w ? r19.w : r27.w;
            r32.xy = r24.zz ? r32.xy : r5.xy;
            r19.z = (int)r19.z + 1;
            r18.w = r20.w;
          }
          r32.y = saturate(r32.y);
          r5.y = r32.y * r13.z;
          r18.w = cmp(0 < r5.y);
          if (r18.w != 0) {
            r18.w = (int)r17.x + 257;
            r33.z = r32.y * r13.z + r30.w;
            r5.y = r5.y * r30.x;
            r32.xzw = r28.xyz * r5.yyy;
            r34.xyz = r32.zzz * r24.xyw;
            r34.xyz = r26.xyz * r32.xxx + r34.xyz;
            r32.xzw = r27.xyz * r32.www + r34.xyz;
            r34.xyz = r32.xzw * r29.xyz;
            r19.z = dot(r34.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r34.xyz = r32.xzw * r29.xyz + r31.xyz;
            r19.w = r19.z * r10.w;
            r32.xzw = r25.yzw * r5.yyy;
            r5.y = dot(r32.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r5.y = r10.w * r19.z + r5.y;
            r5.y = r19.w / r5.y;
            r35.x = r31.w;
            r35.yz = r30.yz;
            r33.xyw = r32.zwx * r5.yyy + r35.yzx;
            r34.w = r33.w;
          } else {
            r18.w = (int)r17.x + 1;
            r34.xyzw = r31.xyzw;
            r33.xyz = r30.yzw;
          }
          r17.w = -1;
          r31.xyzw = r34.xyzw;
          r30.yzw = r33.xyz;
          r17.x = r18.w;
          break;
        }
      }
    }
    if (r17.w != 0) {
      r21.xyzw = r31.xyzw;
      r22.yzw = r30.yzw;
      r23.w = r17.x;
      r11.w = -1;
      break;
    }
    r12.y = (int)r12.y + 32;
    r21.xyzw = r31.xyzw;
    r22.yzw = r30.yzw;
    r23.w = r17.x;
    r11.w = r17.w;
  }
  if (r11.w == 0) {
    r5.x = numRefProbes + -numOverrideProbes;
    r5.y = (int)r5.x & -32;
    r11.w = (int)-r5.y + (int)r5.x;
    r12.y = numRefProbes & -32;
    r12.z = (int)-r12.y + numRefProbes;
    r15.xy = float2(0,0);
    r16.w = 0;
    r17.yz = float2(0,1);
    r18.xy = float2(0,0);
    r19.x = 1;
    r20.xy = float2(0,0);
    r24.xy = float2(0,0);
    r25.xyzw = r21.wxyz;
    r26.xyz = r22.yzw;
    r26.w = r23.w;
    r12.w = r5.y;
    while (true) {
      r13.y = cmp((uint)r12.w >= numRefProbes);
      if (r13.y != 0) break;
      r15.z = (uint)r12.w >> 5;
      r16.xyz = (int3)r4.xyz + (int3)r15.xyz;
      r13.y = visibleProbes.Load(r16.xyzw).x;
      r13.z = cmp((int)r5.y == (int)r12.w);
      bitmask.w = ((~(-1 << r11.w)) << 0) & 0xffffffff;  r13.w = (((uint)0 << 0) & bitmask.w) | ((uint)r13.y & ~bitmask.w);
      r13.y = r13.z ? r13.w : r13.y;
      r13.z = cmp((int)r12.y == (int)r12.w);
      if (r12.z == 0) r13.w = 0; else if (r12.z+0 < 32) {       r13.w = (uint)r13.y << (32-(r12.z + 0)); r13.w = (uint)r13.w >> (32-r12.z);      } else r13.w = (uint)r13.y >> 0;
      r13.y = r13.z ? r13.w : r13.y;
      r13.z = (int)r12.w + numLights;
      r27.xyzw = r25.yzwx;
      r28.xyzw = r26.xyzw;
      r13.w = r13.y;
      while (true) {
        if (r13.w == 0) break;
        r15.z = firstbitlow((uint)r13.w);
        r15.w = 1 << (int)r15.z;
        r16.x = (int)r13.w & (int)r15.w;
        if (r16.x != 0) {
          r13.w = (int)r13.w ^ (int)r15.w;
          r15.w = (int)r13.z + (int)r15.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xyzw, r15.w, l(0), t11.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r16.xy, r15.w, l(16), t11.xyxx
        r16.x = samp0[]..swiz;
        r16.y = samp0[]..swiz;
          r29.xyz = -v7.xyz + r29.xyz;
          r16.z = r29.w;
          r16.xyz = cmp(abs(r29.xyz) < r16.zxy);
          r15.w = r16.y ? r16.x : 0;
          r15.w = r16.z ? r15.w : 0;
          if (r15.w != 0) {
            r15.z = (int)r12.w + (int)r15.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r15.z, l(0), t15.wxyz
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r16.xy, r15.z, l(96), t15.xyxx
          r16.x = samp0[]..swiz;
          r16.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r15.z, l(116), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
            r31.xyz = v7.xyz + -r29.yzw;
            r15.w = (int)r30.w & 0x0000ffff;
            if (6 == 0) r16.z = 0; else if (6+25 < 32) {             r16.z = (uint)r30.w << (32-(6 + 25)); r16.z = (uint)r16.z >> (32-6);            } else r16.z = (uint)r30.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r15.w, l(0), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r15.w, l(16), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r15.w, l(32), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r15.w, l(48), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r15.w, l(64), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r15.w, l(80), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
            r17.w = dot(r32.xyz, r31.xyz);
            r17.w = saturate(r17.w + r32.w);
            r18.w = dot(r33.xyz, r31.xyz);
            r18.w = saturate(r18.w + r33.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r34.xyz, r31.xyz);
            r18.w = saturate(r18.w + r34.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r35.xyz, r31.xyz);
            r18.w = saturate(r18.w + r35.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r36.xyz, r31.xyz);
            r18.w = saturate(r18.w + r36.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r37.xyz, r31.xyz);
            r18.w = saturate(r18.w + r37.w);
            r17.x = r18.w * r17.w;
            r17.w = r16.x ? 0.000000 : 0;
            r17.xw = r17.ww ? r17.xy : r17.zx;
            r18.w = r16.x;
            r32.xy = r17.xw;
            r19.z = 1;
            while (true) {
              r19.w = cmp((int)r19.z >= (int)r16.z);
              if (r19.w != 0) break;
              r19.w = (int)r15.w + (int)r19.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(0), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(16), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(32), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(48), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r19.w, l(64), t16.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r19.w, l(80), t16.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
              r19.w = dot(r33.xyz, r31.xyz);
              r19.w = saturate(r19.w + r33.w);
              r19.w = r32.x * r19.w;
              r20.w = dot(r34.xyz, r31.xyz);
              r20.w = saturate(r20.w + r34.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r35.xyz, r31.xyz);
              r20.w = saturate(r20.w + r35.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r36.xyz, r31.xyz);
              r20.w = saturate(r20.w + r36.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r37.xyz, r31.xyz);
              r20.w = saturate(r20.w + r37.w);
              r19.w = r20.w * r19.w;
              r20.w = dot(r38.xyz, r31.xyz);
              r20.w = saturate(r20.w + r38.w);
              r32.x = r20.w * r19.w;
              r24.w = (uint)r18.w >> 2;
              if (1 == 0) r29.w = 0; else if (1+2 < 32) {               r29.w = (uint)r18.w << (32-(1 + 2)); r29.w = (uint)r29.w >> (32-1);              } else r29.w = (uint)r18.w >> 2;
              r31.w = (int)r24.w & 2;
              r32.z = max(r32.y, r32.x);
              r19.w = -r19.w * r20.w + 1;
              r19.w = r32.y * r19.w;
              r19.y = r31.w ? r19.w : r32.z;
              r32.xy = r29.ww ? r32.xy : r19.xy;
              r19.z = (int)r19.z + 1;
              r18.w = r24.w;
            }
            r32.y = saturate(r32.y);
            r15.w = r32.y * r16.y;
            r16.x = cmp(0 < r15.w);
            if (r16.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.z, l(16), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.z, l(32), t15.yxwz
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.z, l(48), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.z, l(64), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.z, l(80), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r15.z, l(132), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r15.z, l(148), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r15.z, l(164), t15.zwxy
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r15.z, l(180), t15.zwxy
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xyzw, r15.z, l(196), t15.xyzw
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r43.xy, r15.z, l(212), t15.xyxx
            r43.x = samp0[]..swiz;
            r43.y = samp0[]..swiz;
              r28.w = (int)r28.w + 257;
              r28.z = r32.y * r16.y + r28.z;
              r15.z = r15.w * r30.z;
              r30.z = r38.z;
              r15.w = dot(r14.xyz, r30.xyz);
              r16.x = dot(r31.xyz, r30.xyz);
              r16.x = r16.x + -r38.w;
              r16.y = cmp(r16.x >= 0);
              r16.x = max(abs(r16.x), r10.z);
              r16.x = r16.y ? r16.x : -r16.x;
              r15.w = max(1.00000001e-07, -r15.w);
              r15.w = r16.x / r15.w;
              r15.w = min(131072, abs(r15.w));
              r38.z = r39.z;
              r16.x = dot(r14.xyz, r38.xyz);
              r16.y = dot(r31.xyz, r38.xyz);
              r16.y = r16.y + -r39.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r10.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r39.z = r40.z;
              r16.x = dot(r14.xyz, r39.xyz);
              r16.y = dot(r31.xyz, r39.xyz);
              r16.y = r16.y + -r40.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r10.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r40.z = r41.z;
              r16.x = dot(r14.xyz, r40.xyz);
              r16.y = dot(r31.xyz, r40.xyz);
              r16.y = r16.y + -r41.w;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r10.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r41.z = r42.x;
              r16.x = dot(r14.xyz, r41.xyz);
              r16.y = dot(r31.xyz, r41.xyz);
              r16.y = r16.y + -r42.y;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r10.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r43.zw = r42.zw;
              r16.x = dot(r14.zxy, r43.xzw);
              r16.y = dot(r31.zxy, r43.xzw);
              r16.y = r16.y + -r43.y;
              r16.z = cmp(r16.y >= 0);
              r16.y = max(abs(r16.y), r10.z);
              r16.y = r16.z ? r16.y : -r16.y;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r16.y / r16.x;
              r15.w = min(abs(r16.x), r15.w);
              r16.x = r35.w;
              r16.yz = r36.zw;
              r16.xyz = r16.xyz + r31.xyz;
              r16.xyz = r14.xyz * r15.www + r16.xyz;
              r17.x = dot(r16.xyz, r16.xyz);
              r17.x = sqrt(r17.x);
              r15.w = r15.w / r17.x;
              r15.w = r15.w + r15.w;
              r15.w = sqrt(r15.w);
              r15.w = r0.z * 5 + r15.w;
              r15.w = -0.844799995 + r15.w;
              r29.y = r33.z;
              r29.z = r34.x;
              r38.x = dot(r16.xyz, r29.xyz);
              r30.xy = r33.xw;
              r30.z = r34.w;
              r38.y = dot(r16.xyz, r30.xyz);
              r34.x = r33.y;
              r38.z = dot(r16.xyz, r34.xyz);
              if (9 == 0) r16.x = 0; else if (9+16 < 32) {               r16.x = (uint)r30.w << (32-(9 + 16)); r16.x = (uint)r16.x >> (32-9);              } else r16.x = (uint)r30.w >> 16;
              r38.w = (uint)r16.x;
              r16.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r38.xyzw, r15.w).xyz;
              r19.yzw = (int3)r16.xyz & int3(-2147483648,-2147483648,-2147483648);
              r19.yzw = cmp((int3)r19.yzw == int3(2139095040,2139095040,2139095040));
              r15.w = (int)r19.z | (int)r19.y;
              r15.w = (int)r19.w | (int)r15.w;
              r16.xyz = r15.www ? float3(1,1,0) : r16.xyz;
              r33.x = dot(r31.xyz, r29.xyz);
              r33.y = dot(r31.xyz, r30.xyz);
              r33.z = dot(r31.xyz, r34.xyz);
              r19.yzw = saturate(r33.xyz * r35.xyz + float3(0.5,0.5,0.5));
              r36.z = r37.x;
              r19.yzw = r19.yzw * r36.xyz + r37.yzw;
              r38.x = dot(r1.xyz, r29.xyz);
              r38.y = dot(r1.xyz, r30.xyz);
              r38.z = dot(r1.xyz, r34.xyz);
              r29.xyz = cmp(float3(0,0,0) < r38.xyz);
              r18.z = r29.x ? 0 : 0.5;
              r30.xyz = r19.yzw + r18.xyz;
              r30.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
              r31.xyz = r38.xyz * r38.xyz;
              r31.xyz = r31.xyz * r15.zzz;
              r20.z = r29.y ? 0 : 0.5;
              r29.xyw = r20.xyz + r19.yzw;
              r29.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyw, 0).xyz;
              r29.xyw = r29.xyw * r31.yyy;
              r29.xyw = r30.xyz * r31.xxx + r29.xyw;
              r24.z = r29.z ? 0 : 0.5;
              r19.yzw = r24.xyz + r19.yzw;
              r19.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r19.yzw, 0).xyz;
              r19.yzw = r19.yzw * r31.zzz + r29.xyw;
              r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r38.xyzw, 6).xyz;
              r30.xyz = (int3)r29.xyz & int3(-2147483648,-2147483648,-2147483648);
              r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
              r15.w = (int)r30.y | (int)r30.x;
              r15.w = (int)r30.z | (int)r15.w;
              r29.xyz = r15.www ? float3(1,1,0) : r29.xyz;
              r30.xyz = r29.xyz * r19.yzw;
              r15.w = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r27.xyz = r19.yzw * r29.xyz + r27.xyz;
              r17.x = r15.w * r10.w;
              r16.xyz = r16.xyz * r15.zzz;
              r15.z = dot(r16.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r15.z = r10.w * r15.w + r15.z;
              r15.z = r17.x / r15.z;
              r29.x = r27.w;
              r29.yz = r28.xy;
              r16.xyz = r16.xyz * r15.zzz + r29.xyz;
              r27.w = r16.x;
              r28.xy = r16.yz;
            } else {
              r28.w = (int)r28.w + 1;
            }
          }
        }
      }
      r25.xyzw = r27.wxyz;
      r26.xyzw = r28.xyzw;
      r12.w = (int)r12.w + 32;
    }
    r23.xyzw = r26.zxyw;
    r12.y = cmp(r23.x < 1);
    if (r12.y != 0) {
      r15.xy = float2(0,0);
      r16.w = 0;
      r17.yz = float2(0,1);
      r18.xy = float2(0,0);
      r19.x = 1;
      r20.xy = float2(0,0);
      r24.xy = float2(0,0);
      r12.yzw = r25.yzw;
      r26.x = r25.x;
      r26.yz = r23.yz;
      r13.yzw = r23.xwx;
      r15.w = 0;
      while (true) {
        r17.w = cmp((uint)r15.w >= (uint)r5.x);
        if (r17.w != 0) break;
        r15.z = (uint)r15.w >> 5;
        r16.xyz = (int3)r4.xyz + (int3)r15.xyz;
        r15.z = visibleProbes.Load(r16.xyzw).x;
        r16.x = cmp((int)r5.y == (int)r15.w);
        if (r11.w == 0) r16.y = 0; else if (r11.w+0 < 32) {         r16.y = (uint)r15.z << (32-(r11.w + 0)); r16.y = (uint)r16.y >> (32-r11.w);        } else r16.y = (uint)r15.z >> 0;
        r15.z = r16.x ? r16.y : r15.z;
        r16.x = (int)r15.w + numLights;
        r27.xyz = r12.yzw;
        r28.xyz = r26.xyz;
        r16.yz = r13.yz;
        r17.w = r13.w;
        r18.w = r15.z;
        while (true) {
          if (r18.w == 0) break;
          r19.z = firstbitlow((uint)r18.w);
          r19.w = 1 << (int)r19.z;
          r20.w = (int)r18.w & (int)r19.w;
          if (r20.w != 0) {
            r18.w = (int)r18.w ^ (int)r19.w;
            r19.w = (int)r16.x + (int)r19.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r29.xyzw, r19.w, l(0), t11.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r30.xy, r19.w, l(16), t11.xyxx
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
            r29.xyz = -v7.xyz + r29.xyz;
            r30.z = r29.w;
            r29.xyz = cmp(abs(r29.xyz) < r30.zxy);
            r19.w = r29.y ? r29.x : 0;
            r19.w = r29.z ? r19.w : 0;
            if (r19.w != 0) {
              r19.z = (int)r15.w + (int)r19.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r19.z, l(0), t15.wxyz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xy, r19.z, l(96), t15.xyxx
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r19.z, l(116), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
              r32.xyz = v7.xyz + -r29.yzw;
              r19.w = (int)r31.w & 0x0000ffff;
              if (6 == 0) r20.w = 0; else if (6+25 < 32) {               r20.w = (uint)r31.w << (32-(6 + 25)); r20.w = (uint)r20.w >> (32-6);              } else r20.w = (uint)r31.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(0), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(16), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(32), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(48), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r19.w, l(64), t16.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r19.w, l(80), t16.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
              r22.w = dot(r33.xyz, r32.xyz);
              r22.w = saturate(r22.w + r33.w);
              r24.w = dot(r34.xyz, r32.xyz);
              r24.w = saturate(r24.w + r34.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r35.xyz, r32.xyz);
              r24.w = saturate(r24.w + r35.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r36.xyz, r32.xyz);
              r24.w = saturate(r24.w + r36.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r37.xyz, r32.xyz);
              r24.w = saturate(r24.w + r37.w);
              r22.w = r24.w * r22.w;
              r24.w = dot(r38.xyz, r32.xyz);
              r24.w = saturate(r24.w + r38.w);
              r17.x = r24.w * r22.w;
              r22.w = (int)r30.x & 1;
              r30.zw = r22.ww ? r17.xy : r17.zx;
              r17.x = r30.x;
              r33.xy = r30.zw;
              r22.w = 1;
              while (true) {
                r24.w = cmp((int)r22.w >= (int)r20.w);
                if (r24.w != 0) break;
                r24.w = (int)r19.w + (int)r22.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r24.w, l(0), t16.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r24.w, l(16), t16.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r24.w, l(32), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r24.w, l(48), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r24.w, l(64), t16.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r24.w, l(80), t16.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
                r24.w = dot(r34.xyz, r32.xyz);
                r24.w = saturate(r24.w + r34.w);
                r24.w = r33.x * r24.w;
                r26.w = dot(r35.xyz, r32.xyz);
                r26.w = saturate(r26.w + r35.w);
                r24.w = r26.w * r24.w;
                r26.w = dot(r36.xyz, r32.xyz);
                r26.w = saturate(r26.w + r36.w);
                r24.w = r26.w * r24.w;
                r26.w = dot(r37.xyz, r32.xyz);
                r26.w = saturate(r26.w + r37.w);
                r24.w = r26.w * r24.w;
                r26.w = dot(r38.xyz, r32.xyz);
                r26.w = saturate(r26.w + r38.w);
                r24.w = r26.w * r24.w;
                r26.w = dot(r39.xyz, r32.xyz);
                r26.w = saturate(r26.w + r39.w);
                r33.x = r26.w * r24.w;
                r27.w = (uint)r17.x >> 2;
                if (1 == 0) r28.w = 0; else if (1+2 < 32) {                 r28.w = (uint)r17.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);                } else r28.w = (uint)r17.x >> 2;
                r29.w = (int)r27.w & 2;
                r32.w = max(r33.y, r33.x);
                r24.w = -r24.w * r26.w + 1;
                r24.w = r33.y * r24.w;
                r19.y = r29.w ? r24.w : r32.w;
                r33.xy = r28.ww ? r33.xy : r19.xy;
                r22.w = (int)r22.w + 1;
                r17.x = r27.w;
              }
              r17.x = saturate(r33.y + -r17.w);
              r19.y = r17.x * r30.y;
              r19.w = cmp(0 < r19.y);
              if (r19.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r19.z, l(16), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r19.z, l(32), t15.yxwz
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r19.z, l(48), t15.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r19.z, l(64), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r19.z, l(80), t15.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r19.z, l(132), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r19.z, l(148), t15.zwxy
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r19.z, l(164), t15.zwxy
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xyzw, r19.z, l(180), t15.zwxy
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r43.xyzw, r19.z, l(196), t15.xyzw
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r44.xy, r19.z, l(212), t15.xyxx
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
                r16.z = (int)r16.z + 257;
                r16.y = r17.x * r30.y + r16.y;
                r17.x = r19.y * r31.z;
                r31.z = r39.z;
                r19.y = dot(r14.xyz, r31.xyz);
                r19.z = dot(r32.xyz, r31.xyz);
                r19.z = r19.z + -r39.w;
                r19.w = cmp(r19.z >= 0);
                r19.z = max(abs(r19.z), r10.z);
                r19.z = r19.w ? r19.z : -r19.z;
                r19.y = max(1.00000001e-07, -r19.y);
                r19.y = r19.z / r19.y;
                r19.y = min(131072, abs(r19.y));
                r39.z = r40.z;
                r19.z = dot(r14.xyz, r39.xyz);
                r19.w = dot(r32.xyz, r39.xyz);
                r19.w = r19.w + -r40.w;
                r20.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r10.z);
                r19.w = r20.w ? r19.w : -r19.w;
                r19.z = max(1.00000001e-07, -r19.z);
                r19.z = r19.w / r19.z;
                r19.y = min(r19.y, abs(r19.z));
                r40.z = r41.z;
                r19.z = dot(r14.xyz, r40.xyz);
                r19.w = dot(r32.xyz, r40.xyz);
                r19.w = r19.w + -r41.w;
                r20.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r10.z);
                r19.w = r20.w ? r19.w : -r19.w;
                r19.z = max(1.00000001e-07, -r19.z);
                r19.z = r19.w / r19.z;
                r19.y = min(r19.y, abs(r19.z));
                r41.z = r42.z;
                r19.z = dot(r14.xyz, r41.xyz);
                r19.w = dot(r32.xyz, r41.xyz);
                r19.w = r19.w + -r42.w;
                r20.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r10.z);
                r19.w = r20.w ? r19.w : -r19.w;
                r19.z = max(1.00000001e-07, -r19.z);
                r19.z = r19.w / r19.z;
                r19.y = min(r19.y, abs(r19.z));
                r42.z = r43.x;
                r19.z = dot(r14.xyz, r42.xyz);
                r19.w = dot(r32.xyz, r42.xyz);
                r19.w = r19.w + -r43.y;
                r20.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r10.z);
                r19.w = r20.w ? r19.w : -r19.w;
                r19.z = max(1.00000001e-07, -r19.z);
                r19.z = r19.w / r19.z;
                r19.y = min(r19.y, abs(r19.z));
                r44.zw = r43.zw;
                r19.z = dot(r14.zxy, r44.xzw);
                r19.w = dot(r32.zxy, r44.xzw);
                r19.w = r19.w + -r44.y;
                r20.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r10.z);
                r19.w = r20.w ? r19.w : -r19.w;
                r19.z = max(1.00000001e-07, -r19.z);
                r19.z = r19.w / r19.z;
                r19.y = min(r19.y, abs(r19.z));
                r30.x = r36.w;
                r30.yz = r37.zw;
                r30.xyz = r30.xyz + r32.xyz;
                r30.xyz = r14.xyz * r19.yyy + r30.xyz;
                r19.z = dot(r30.xyz, r30.xyz);
                r19.z = sqrt(r19.z);
                r19.y = r19.y / r19.z;
                r19.y = r19.y + r19.y;
                r19.y = sqrt(r19.y);
                r19.y = r0.z * 5 + r19.y;
                r19.y = -0.844799995 + r19.y;
                r29.y = r34.z;
                r29.z = r35.x;
                r39.x = dot(r30.xyz, r29.xyz);
                r31.xy = r34.xw;
                r31.z = r35.w;
                r39.y = dot(r30.xyz, r31.xyz);
                r35.x = r34.y;
                r39.z = dot(r30.xyz, r35.xyz);
                if (9 == 0) r19.z = 0; else if (9+16 < 32) {                 r19.z = (uint)r31.w << (32-(9 + 16)); r19.z = (uint)r19.z >> (32-9);                } else r19.z = (uint)r31.w >> 16;
                r39.w = (uint)r19.z;
                r19.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r39.xyzw, r19.y).xyz;
                r30.xyz = (int3)r19.yzw & int3(-2147483648,-2147483648,-2147483648);
                r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
                r20.w = (int)r30.y | (int)r30.x;
                r20.w = (int)r30.z | (int)r20.w;
                r19.yzw = r20.www ? float3(1,1,0) : r19.yzw;
                r30.x = dot(r32.xyz, r29.xyz);
                r30.y = dot(r32.xyz, r31.xyz);
                r30.z = dot(r32.xyz, r35.xyz);
                r30.xyz = saturate(r30.xyz * r36.xyz + float3(0.5,0.5,0.5));
                r37.z = r38.x;
                r30.xyz = r30.xyz * r37.xyz + r38.yzw;
                r39.x = dot(r1.xyz, r29.xyz);
                r39.y = dot(r1.xyz, r31.xyz);
                r39.z = dot(r1.xyz, r35.xyz);
                r29.xyz = cmp(float3(0,0,0) < r39.xyz);
                r18.z = r29.x ? 0 : 0.5;
                r31.xyz = r30.xyz + r18.xyz;
                r31.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r31.xyz, 0).xyz;
                r32.xyz = r39.xyz * r39.xyz;
                r32.xyz = r32.xyz * r17.xxx;
                r20.z = r29.y ? 0 : 0.5;
                r29.xyw = r30.xyz + r20.xyz;
                r29.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r29.xyw, 0).xyz;
                r29.xyw = r29.xyw * r32.yyy;
                r29.xyw = r31.xyz * r32.xxx + r29.xyw;
                r24.z = r29.z ? 0 : 0.5;
                r30.xyz = r30.xyz + r24.xyz;
                r30.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
                r29.xyz = r30.xyz * r32.zzz + r29.xyw;
                r30.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r39.xyzw, 6).xyz;
                r31.xyz = (int3)r30.xyz & int3(-2147483648,-2147483648,-2147483648);
                r31.xyz = cmp((int3)r31.xyz == int3(2139095040,2139095040,2139095040));
                r18.z = (int)r31.y | (int)r31.x;
                r18.z = (int)r31.z | (int)r18.z;
                r30.xyz = r18.zzz ? float3(1,1,0) : r30.xyz;
                r31.xyz = r30.xyz * r29.xyz;
                r18.z = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r27.xyz = r29.xyz * r30.xyz + r27.xyz;
                r20.z = r18.z * r10.w;
                r19.yzw = r19.yzw * r17.xxx;
                r17.x = dot(r19.yzw, float3(0.212599993,0.715200007,0.0722000003));
                r17.x = r10.w * r18.z + r17.x;
                r17.x = r20.z / r17.x;
                r28.xyz = r19.yzw * r17.xxx + r28.xyz;
              } else {
                r16.z = (int)r16.z + 1;
              }
            }
          }
        }
        r12.yzw = r27.xyz;
        r26.xyz = r28.xyz;
        r13.yz = r16.yz;
        r15.w = (int)r15.w + 32;
      }
      r25.xyz = r26.xyz;
      r23.yw = r13.yz;
      r23.xw = r23.yw;
    } else {
      r12.yzw = r25.yzw;
      r25.yz = r23.yz;
    }
    r0.z = max(1, r23.x);
    r0.z = rcp(r0.z);
    r23.x = saturate(r23.x);
    r21.xyz = r12.yzw * r0.zzz;
    r22.xyz = r25.xyz * r0.zzz;
    r5.x = cmp(r23.x < 0.99000001);
    if (r5.x != 0) {
      r23.w = (int)r23.w + 256;
      r5.x = 1 + -r23.x;
      r5.y = sunConstants.globalProbeExposure * r5.x;
      r13.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
      r15.x = globalProbeConstants.data[0].w * r13.y;
      r15.yz = globalProbeConstants.data[1].xy * r13.zw;
      r13.yzw = saturate(float3(0.5,0.5,0.5) + r15.xyz);
      r15.xy = globalProbeConstants.data[1].zw * r13.yz;
      r15.z = globalProbeConstants.data[2].x * r13.w;
      r13.yzw = globalProbeConstants.data[2].yzw + r15.xyz;
      r15.xyz = cmp(float3(0,0,0) < r1.xyz);
      r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r15.w = 0;
      r16.xyz = r15.wwx + r13.yzw;
      r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r17.xyz = r1.xyz * r1.xyz;
      r17.xyz = r17.xyz * r5.yyy;
      r18.xyz = r15.wwy + r13.yzw;
      r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r18.xyz = r18.xyz * r17.yyy;
      r16.xyz = r16.xyz * r17.xxx + r18.xyz;
      r13.yzw = r15.wwz + r13.yzw;
      r13.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r13.yzw, 0).xyz;
      r13.yzw = r13.yzw * r17.zzz + r16.xyz;
      r1.w = 0;
      r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
      r13.yzw = r15.xyz * r13.yzw;
      r1.w = dot(r13.yzw, float3(0.212599993,0.715200007,0.0722000003));
      r21.xyz = r12.yzw * r0.zzz + r13.yzw;
      r14.w = 0;
      r12.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r14.xyzw, r9.w).xyz;
      r0.z = sunConstants.globalProbeExposure * r5.x + -r1.w;
      r0.z = r6.y * r0.z + r1.w;
      r22.xyz = r12.yzw * r0.zzz + r22.xyz;
    }
  } else {
    r22.x = r21.w;
  }
  if (useSSR != 0) {
    r0.z = dot(r2.yzw, r1.xyz);
    r0.z = r0.z + r0.z;
    r12.yzw = r1.xyz * -r0.zzz + r2.yzw;
    r0.z = dot(r2.yzw, -r1.xyz);
    r0.z = r0.z + r0.z;
    r13.yzw = r1.xyz * r0.zzz + r2.yzw;
    r12.yzw = v10.xxx ? r12.yzw : r13.yzw;
    if (useLoopedSSR != 0) {
      r13.yzw = viewMatrix._m10_m11_m12 * v7.yyy;
      r13.yzw = v7.xxx * viewMatrix._m00_m01_m02 + r13.yzw;
      r13.yzw = v7.zzz * viewMatrix._m20_m21_m22 + r13.yzw;
      r14.xyz = ssrParams.zzz * r12.yzw;
      r15.xyz = viewMatrix._m10_m11_m12 * r14.yyy;
      r14.xyw = r14.xxx * viewMatrix._m00_m01_m02 + r15.xyz;
      r14.xyz = r14.zzz * viewMatrix._m20_m21_m22 + r14.xyw;
      r0.z = min(1000, ssrParams.x);
      r13.yzw = r14.xyz * float3(10,10,10) + r13.yzw;
      r0.z = r0.z / ssrParams.z;
      r15.xyz = r22.xyz;
      r16.xyz = r13.yzw;
      r1.w = 0;
      while (true) {
        r5.x = (int)r1.w;
        r5.x = cmp(r5.x >= r0.z);
        if (r5.x != 0) break;
        r16.xyz = r16.xyz + r14.xyz;
        r17.xyz = projectionMatrix._m10_m11_m13 * r16.yyy;
        r17.xyz = r16.xxx * projectionMatrix._m00_m01_m03 + r17.xyz;
        r17.xyz = r16.zzz * projectionMatrix._m20_m21_m23 + r17.xyz;
        r17.xyz = projectionMatrix._m30_m31_m33 + r17.xyz;
        r5.x = max(abs(r17.x), abs(r17.y));
        r5.x = cmp(r17.z < r5.x);
        if (r5.x != 0) {
          break;
        }
        r5.xy = r17.xy / r17.zz;
        r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r5.x = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r5.xy, 1).x;
        r5.y = cmp(abs(r5.x) < r16.z);
        r6.y = cmp(abs(r5.x) >= v0.w);
        r5.y = r5.y ? r6.y : 0;
        if (r5.y != 0) {
          r5.x = r16.z + -abs(r5.x);
          r5.x = ssrParams.w * r5.x;
          r17.xyz = -r5.xxx * r14.xyz + r16.xyz;
          r18.xyz = projectionMatrix._m10_m11_m13 * r17.yyy;
          r17.xyw = r17.xxx * projectionMatrix._m00_m01_m03 + r18.xyz;
          r17.xyz = r17.zzz * projectionMatrix._m20_m21_m23 + r17.xyw;
          r17.xyz = projectionMatrix._m30_m31_m33 + r17.xyz;
          r5.xy = r17.xy / r17.zz;
          r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r17.xyz = iResolveScene.SampleLevel(bilinearClamp_s, r5.xy, 0).xyz;
          r17.xyz = relHDRExposure.xxx * r17.xyz;
          r15.xyz = r17.xyz;
          break;
        }
        r1.w = (int)r1.w + 1;
      }
      r22.xyz = r15.xyz;
    } else {
      r0.z = ssrParams.y * r4.w;
      r12.yzw = r12.yzw * r0.zzz + v7.xyz;
      r13.yzw = viewProjectionMatrix._m10_m11_m13 * r12.zzz;
      r13.yzw = r12.yyy * viewProjectionMatrix._m00_m01_m03 + r13.yzw;
      r12.yzw = r12.www * viewProjectionMatrix._m20_m21_m23 + r13.yzw;
      r12.yzw = viewProjectionMatrix._m30_m31_m33 + r12.yzw;
      r5.xy = r12.yz / r12.ww;
      r0.z = max(abs(r5.x), abs(r5.y));
      r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
      r1.w = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r5.xy, 0).x;
      r1.w = cmp(abs(r1.w) >= v0.w);
      r0.z = cmp(r0.z < 1);
      r0.z = r0.z ? r1.w : 0;
      r12.yzw = iResolveScene.Sample(bilinearClamp_s, r5.xy).xyz;
      if (r0.z != 0) {
        r22.xyz = relHDRExposure.xxx * r12.yzw;
      }
    }
  }
  r0.z = dot(r1.xyz, sunConstants.wldDir.xyz);
  r1.w = saturate(r0.z);
  r5.x = useSpecularZFeather ? abs(r0.z) : r1.w;
  r5.x = cmp(0 >= r5.x);
  if (r5.x != 0) {
    r5.y = 0;
  }
  if (r5.x == 0) {
    r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r12.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r12.yzw;
    r12.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r12.yzw;
    r12.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r12.yzw;
    r5.x = -sunConstants.splitDepthOffset + r12.w;
    r5.x = -r5.x * 6.10351563e-05 + 1;
    r6.y = saturate(r5.x);
    r6.y = cmp(r5.x == r6.y);
    if (r6.y != 0) {
      r6.y = 0;
      r9.w = 0;
      while (true) {
        r10.z = cmp(r6.y >= 3);
        if (r10.z != 0) break;
        r10.z = (uint)r6.y;
        r13.yz = -sunConstants.splitPinTransform[r10.z].xy + r12.yz;
        r10.w = max(abs(r13.y), abs(r13.z));
        r9.w = sunConstants.splitPinTransform[r10.z].z * r10.w;
        r10.z = cmp(r9.w < 1);
        if (r10.z != 0) {
          break;
        }
        r6.y = 1 + r6.y;
        r9.w = 0;
      }
    } else {
      r6.y = 3;
      r9.w = 0;
    }
    r10.z = cmp(r6.y >= 3);
    if (r10.z != 0) {
      r13.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r14.xz = rcp(r13.yy);
      r14.y = -r14.z;
      r13.yzw = r12.yzy * r14.xyz + r13.zwz;
      r14.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r13.yzw = max(float3(0,0,0), r13.yzw);
      r13.yzw = min(r13.yzw, r14.xyz);
      r14.xy = sunConstants.sstLightingConstants.coordScale * r13.wz;
      r14.xy = floor(r14.xy);
      r10.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.y;
      r10.w = r10.w * sunConstants.sstLightingConstants.coordScale + r14.x;
      r10.w = (uint)r10.w;
      r10.w = (int)r10.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r10.w, l(0), t23.xxxx
    r11.w = samp0[]..swiz;
      r14.x = (int)r11.w & 0x40000000;
      r14.y = (uint)r11.w << 2;
      if (r14.x == 0) {
        r14.x = (int)r11.w & 0x01ffffff;
        r15.x = (int)r10.w + (int)r14.x;
        r10.w = (uint)r11.w >> 25;
        r10.w = (uint)r10.w;
        r13.yzw = r13.yzw * r10.www;
        r13.yzw = frac(r13.yzw);
        r13.yzw = float3(128,128,128) * r13.yzw;
        r13.yzw = (uint3)r13.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.xz = (uint2)r13.wz >> int2(6,6);
        r10.w = (int)r15.z & 0xc0000000;
        r11.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(0), t23.xxxx
      r11.w = samp0[]..swiz;
        r11.w = r14.z ? r15.z : r11.w;
        r14.z = (uint)r11.w >> 13;
        r11.w = r14.x ? r14.z : r11.w;
        r11.w = (int)r11.w & 8191;
        r16.x = (int)r11.w + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r14.xzw = r10.www ? r15.xyz : r16.xyz;
        r16.yz = r10.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r17.xy = (uint2)r13.wz >> (uint2)r16.yy;
        r17.xy = (int2)r17.xy & int2(1,1);
        r11.w = (int)r14.w & 0xc0000000;
        r15.w = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.w = r17.y ? r14.w : r15.w;
        r16.y = (uint)r15.w >> 13;
        r15.w = r17.x ? r16.y : r15.w;
        r15.w = (int)r15.w & 8191;
        r16.x = (int)r14.x + (int)r15.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r14.xzw = r11.www ? r14.xzw : r16.xzw;
        r14.xzw = r10.www ? r15.xyz : r14.xzw;
        r10.w = (int)r14.w & 0xc0000000;
        if (r10.w == 0) {
          r10.w = (int)-r14.z + 6;
          r15.xy = (uint2)r13.wz >> (uint2)r10.ww;
          r10.w = (int)r14.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r11.w = (((uint)r15.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r11.w = (((uint)r15.x << 0) & bitmask.w) | ((uint)r11.w & ~bitmask.w);
          r11.w = (int)r11.w * 10;
          r10.w = (uint)r10.w >> (uint)r11.w;
          r10.w = (int)r10.w & 1023;
          r15.x = (int)r10.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r15.yz = (int2)r14.zz + int2(1,2);
          r10.w = (int)-r15.y + 6;
          r16.xy = (uint2)r13.wz >> (uint2)r10.ww;
          r10.w = (int)r15.w & 0xc0000000;
          r11.w = (int)r15.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.z = (((uint)r16.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r16.x << 0) & bitmask.z) | ((uint)r14.z & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r11.w = (uint)r11.w >> (uint)r14.z;
          r11.w = (int)r11.w & 1023;
          r16.x = (int)r11.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.y = r15.z;
          r16.xyz = r10.www ? r15.xyw : r16.xyz;
          r11.w = (int)-r16.y + 6;
          r15.yz = (uint2)r13.wz >> (uint2)r11.ww;
          r11.w = (int)r16.z & 0xc0000000;
          r14.z = (int)r16.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.z = (((uint)r15.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.y = (((uint)r15.y << 0) & bitmask.y) | ((uint)r15.z & ~bitmask.y);
          r15.y = (int)r15.y * 10;
          r14.z = (uint)r14.z >> (uint)r15.y;
          r14.z = (int)r14.z & 1023;
          r17.x = (int)r14.z + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.y, r17.x, l(0), t23.xxxx
        r17.y = samp0[]..swiz;
          r15.yz = r11.ww ? r16.xz : r17.xy;
          r14.xw = r10.ww ? r15.xw : r15.yz;
        }
        r10.w = (int)r14.w & 0xc0000000;
        if (r10.w == 0) {
          if (14 == 0) r11.w = 0; else if (14+15 < 32) {           r11.w = (uint)r14.w << (32-(14 + 15)); r11.w = (uint)r11.w >> (32-14);          } else r11.w = (uint)r14.w >> 15;
          r11.w = (uint)r11.w;
          r11.w = sunConstants.sstLightingConstants.constants.spanInInches * r11.w;
          r11.w = 6.10388815e-05 * r11.w;
          r15.xy = (int2)r14.ww & int2(32767,536870912);
          r14.z = (uint)r15.x;
          r14.z = sunConstants.sstLightingConstants.constants.spanInInches * r14.z;
          r14.z = 3.05185094e-05 * r14.z;
          r15.x = (int)r13.z & 3;
          r15.x = (int)r14.x + (int)r15.x;
          r15.x = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.x, r15.x, l(0), t23.xxxx
        r15.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r13.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r13.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r13.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r13.y = (uint)r15.x >> (uint)r16.x;
          r13.y = (int)r13.y & 255;
          r13.y = (uint)r13.y;
          r13.y = r13.y * r14.z;
          r13.y = r13.y * 0.00392156886 + r11.w;
          r13.z = (int)r16.y + 1;
          if (1 == 0) r13.w = 0; else if (1+1 < 32) {           r13.w = (uint)r13.w << (32-(1 + 1)); r13.w = (uint)r13.w >> (32-1);          } else r13.w = (uint)r13.w >> 1;
          r13.z = (int)r13.w + (int)r13.z;
          r13.z = (int)r13.z + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          r13.z = (uint)r13.z >> (uint)r16.z;
          r13.z = (int)r13.z & 0x0000ffff;
          r13.z = (uint)r13.z;
          r13.z = r13.z * r14.z;
          r11.w = r13.z * 1.52590219e-05 + r11.w;
          r14.y = r15.y ? r13.y : r11.w;
        } else {
          r11.w = (int)r14.w & 0x80000000;
          r13.y = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.y, l(0), t23.xxxx
        r13.y = samp0[]..swiz;
          r11.w = r11.w ? r13.y : 0;
          r13.y = (uint)r14.w << 2;
          r13.z = (uint)r11.w >> 16;
          r13.z = f16tof32(r13.z);
          r11.w = (int)r11.w & 0x0000ffff;
          r11.w = f16tof32(r11.w);
          r13.y = r12.y * r13.z + r13.y;
          r11.w = r12.z * r11.w + r13.y;
          r14.y = r10.w ? r11.w : r14.y;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r12.w;
      r10.w = cmp(r14.y < r10.w);
      r5.y = r10.w ? 0 : 1;
    }
    if (r10.z == 0) {
      if (enableDitheredShadow == 0) {
        r10.z = (uint)r6.y;
        r13.yz = -sunConstants.splitPinTransform[r10.z].xy + r12.yz;
        r10.zw = sunConstants.splitPinTransform[r10.z].zz * r13.yz;
        r14.xy = r10.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.z = (int16)sunConstants.splitArrayOffset;
        r14.z = r10.z + r6.y;
        r10.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r5.x).x;
        r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
        r10.z = r10.z + r10.w;
        r10.z = saturate(-1 + r10.z);
        r10.w = r10.z * r10.z;
        r5.y = r10.w * r10.z;
      }
      if (enableDitheredShadow != 0) {
        r14.x = -r10.x;
        r10.z = (uint)r6.y;
        r6.y = 1 + r6.y;
        r6.y = min(2, r6.y);
        r6.y = (uint)r6.y;
        r9.w = 1 + -r9.w;
        r9.w = 28 * r9.w;
        r9.w = (uint)r9.w;
        r13.yz = -sunConstants.splitPinTransform[r10.z].xy + r12.yz;
        r13.yz = sunConstants.splitPinTransform[r10.z].zz * r13.yz;
        r13.yz = r13.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.yz = -sunConstants.splitPinTransform[r6.y].xy + r12.yz;
        r12.yz = sunConstants.splitPinTransform[r6.y].zz * r12.yz;
        r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.y = r11.x;
        r14.z = r10.x;
        r10.w = 0;
        r11.w = 0;
        while (true) {
          r12.w = cmp((uint)r11.w >= 8);
          if (r12.w != 0) break;
          r12.w = cmp((uint)r9.w < (uint)r11.w);
          r15.xy = r12.ww ? r12.yz : r13.yz;
          r13.w = r12.w ? sunConstants.splitPinTransform[r6.y].w : sunConstants.splitPinTransform[r10.z].w;
          r12.w = r12.w ? r6.y : r10.z;
          r16.x = dot(icb[r11.w+0].yx, r14.xy);
          r16.y = dot(icb[r11.w+0].yx, r14.yz);
          r15.xy = r16.xy * r13.ww + r15.xy;
          r12.w = (int)r12.w + (int16)sunConstants.splitArrayOffset;
          r15.z = (uint)r12.w;
          r12.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r5.x).x;
          r13.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
          r12.w = r13.w + r12.w;
          r12.w = saturate(-1 + r12.w);
          r10.w = r12.w * 0.125 + r10.w;
          r11.w = (int)r11.w + 1;
        }
        r5.x = r10.w * r10.w;
        r5.y = r5.x * r10.w;
      }
    }
  }
  r5.x = viewmodelSunShadowRaw & 0x0000ffff;
  r6.y = cmp(0 < (uint)r5.x);
  r9.w = cmp(0 < r5.y);
  r6.y = r6.y ? r9.w : 0;
  if (r6.y != 0) {
    r5.x = (int)r5.x + numLights;
    r5.x = (int)r5.x + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r6.y, r5.x, l(52), t12.xxxx
  r6.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r5.x, l(68), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.x, l(84), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.x, l(100), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.x, l(116), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r5.x, l(132), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r5.x, l(148), t12.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
    r9.w = abs(r0.z) * -0.200000003 + 0.400000006;
    r0.z = cmp(r0.z < 0);
    r0.z = r0.z ? r6.z : 0;
    r0.z = r0.z ? -r9.w : r9.w;
    r20.xyz = r1.xyz * r0.zzz + v7.xyz;
    r20.w = 1;
    r14.x = dot(r14.xyzw, r20.xyzw);
    r14.y = dot(r15.xyzw, r20.xyzw);
    r0.z = dot(r16.xyzw, r20.xyzw);
    r9.w = dot(r17.xyzw, r20.xyzw);
    r10.z = cmp(r9.w < r0.z);
    r12.yz = r14.xy / r9.ww;
    r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.yz = r12.yz + r19.zw;
    r12.yz = r12.yz * r19.xy;
    r13.yz = r6.yy / r18.xz;
    r14.xy = float2(1,1) + -r13.yz;
    r14.xy = cmp(r12.yz >= r14.xy);
    r13.yz = cmp(r13.yz >= r12.yz);
    r13.yz = (int2)r13.yz | (int2)r14.xy;
    r10.w = (int)r13.z | (int)r13.y;
    r10.z = (int)r10.z | (int)r10.w;
    if (r10.z == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.z, r5.x, l(28), t12.xxxx
    r10.z = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.yz, r5.x, l(164), t12.xxyx
    r13.y = samp0[]..swiz;
    r13.z = samp0[]..swiz;
      r12.yz = saturate(r12.yz);
      r14.xy = r12.yz * r18.xz + r18.yw;
      r5.x = r13.z * r9.w;
      r0.z = r13.y * r9.w + r0.z;
      r0.z = r0.z / r5.x;
      r0.z = max(6.10351563e-05, r0.z);
      r5.x = r10.z ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r15.x = -r10.x;
        r16.z = (uint)r5.x;
        r15.y = r11.x;
        r15.z = r10.x;
        r9.w = 0;
        r10.z = 0;
        while (true) {
          r10.w = cmp((int)r10.z >= 8);
          if (r10.w != 0) break;
          r17.x = dot(icb[r10.z+0].yx, r15.xy);
          r17.y = dot(icb[r10.z+0].yx, r15.yz);
          r16.xy = r17.xy * r6.yy + r14.xy;
          r10.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r16.xyz, r0.z).x;
          r9.w = r10.w * 0.125 + r9.w;
          r10.z = (int)r10.z + 1;
        }
      } else {
        r14.z = (uint)r5.x;
        r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r0.z).x;
      }
      r0.z = r9.w * r9.w;
      r0.z = r0.z * r9.w;
    } else {
      r0.z = 1;
    }
    r5.y = r5.y * r0.z;
  }
  r0.z = cmp(0 < r1.w);
  r5.x = cmp(0 < r5.y);
  if (r5.x != 0) {
    if (sunConstants.sunCookieIndex != 0) {
      r3.w = 1;
      r5.x = dot(sunConstants.sunCookieTransform[0].xyzw, r3.xyzw);
      r3.x = dot(sunConstants.sunCookieTransform[1].xyzw, r3.xyzw);
      r14.x = frac(r5.x);
      r14.y = frac(r3.x);
      r3.x = -1 + (int14)sunConstants.sunCookieIndex;
      r14.z = (uint)r3.x;
      r3.xyz = gCookieArray.SampleLevel(samplerLinear_s, r14.xyz, 0).xyz;
      r3.xyz = float3(-1,-1,-1) + r3.xyz;
      r3.xyz = sunConstants.sunCookieIntensity * r3.xyz + float3(1,1,1);
      r3.xyz = sunConstants.color.xyz * r3.xyz;
    } else {
      r3.xyz = sunConstants.color.xyz;
    }
    r3.xyz = r5.yyy * r3.xyz;
    r3.w = r1.w + r0.y;
    r3.w = r1.w / r3.w;
    r12.yzw = r3.xyz * r3.www + r21.xyz;
    r13.yzw = -v7.xyz * r8.www + sunConstants.wldDir.xyz;
    r3.w = dot(r13.yzw, r13.yzw);
    r3.w = rsqrt(r3.w);
    r13.yzw = r13.yzw * r3.www;
    r3.w = saturate(dot(r1.xyz, r13.yzw));
    r5.x = saturate(dot(r13.yzw, r9.xyz));
    r5.y = r3.w * r3.w;
    r10.zw = r5.yy * specularLobeRoughnessControl.xz + float2(1,1);
    r10.zw = r10.zw * r10.zw;
    r10.zw = specularLobeRoughnessControl.yw / r10.zw;
    r10.zw = r10.zw * r3.ww;
    r3.w = 4 * r5.x;
    r5.xy = r10.zw / r3.ww;
    r5.xy = lobeWeightingThicknessRefraction.xy * r5.xy;
    r13.yzw = r5.xxx * r3.xyz;
    r13.yzw = r13.yzw * r1.www + r22.xyz;
    r3.xyz = r5.yyy * r3.xyz;
    r3.xyz = r3.xyz * r1.www + r13.yzw;
    r5.xy = float2(1,1);
  } else {
    r12.yzw = r21.xyz;
    r3.xyz = r22.xyz;
    r5.xy = float2(0,0);
  }
  r12.yzw = r0.zzz ? r12.yzw : r21.xyz;
  r3.xyz = r0.zzz ? r3.xyz : r22.xyz;
  r5.xy = r0.zz ? r5.xy : 0;
  r14.x = -r10.x;
  r15.xy = float2(0,0);
  r16.w = 0;
  r17.xyz = v7.xyz;
  r17.w = 1;
  r18.w = 1;
  r14.z = r10.x;
  r19.z = 1;
  r20.w = 1;
  r14.yw = r11.xx;
  r10.y = r14.w;
  r21.w = 1;
  r11.y = r14.x;
  r11.z = r10.x;
  r22.x = r11.x;
  r22.y = r14.x;
  r22.z = r10.x;
  r13.z = 1;
  r13.yw = r5.yx;
  r23.xyz = r12.yzw;
  r24.xyz = r3.xyz;
  r0.z = enableDitheredShadow;
  r1.w = 0;
  while (true) {
    r3.w = cmp((uint)r1.w >= numLights);
    if (r3.w != 0) break;
    r15.z = (uint)r1.w >> 5;
    r16.xyz = (int3)r4.xyz + (int3)r15.xyz;
    r3.w = visibleLights.Load(r16.xyzw).x;
    r16.xyz = r23.xyz;
    r25.xyz = r24.xyz;
    r6.y = r0.z;
    r8.w = r13.z;
    r9.w = r13.w;
    r10.z = r13.y;
    r10.w = r3.w;
    while (true) {
      if (r10.w == 0) break;
      r11.w = firstbitlow((uint)r10.w);
      r15.z = 1 << (int)r11.w;
      r15.w = (int)r10.w & (int)r15.z;
      if (r15.w != 0) {
        r10.w = (int)r10.w ^ (int)r15.z;
        r11.w = (int)r1.w + (int)r11.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xyzw, r11.w, l(0), t12.xyzw
      r26.x = samp0[]..swiz;
      r26.y = samp0[]..swiz;
      r26.z = samp0[]..swiz;
      r26.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xy, r11.w, l(16), t12.xyxx
      r27.x = samp0[]..swiz;
      r27.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r11.w, l(28), t12.xyzw
      r28.x = samp0[]..swiz;
      r28.y = samp0[]..swiz;
      r28.z = samp0[]..swiz;
      r28.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(44), t12.xyzw
      r29.x = samp0[]..swiz;
      r29.y = samp0[]..swiz;
      r29.z = samp0[]..swiz;
      r29.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r11.w, l(60), t12.zwxy
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
      r30.z = samp0[]..swiz;
      r30.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(76), t12.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(92), t12.zwxy
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
        if (3 == 0) r15.z = 0; else if (3+24 < 32) {         r15.z = (uint)r28.x << (32-(3 + 24)); r15.z = (uint)r15.z >> (32-3);        } else r15.z = (uint)r28.x >> 24;
        switch (r15.z) {
          case 4 :          r15.z = cmp(0 < r32.x);
          r33.x = r31.w;
          r33.yz = r32.zw;
          r34.xyz = -r33.xyz * float3(0.5,0.5,0.5) + r26.xyz;
          r35.xyz = -v7.xyz + r34.xyz;
          r15.w = dot(r33.xyz, r35.xyz);
          r15.w = saturate(-r15.w / r32.x);
          r33.xyz = r15.www * r33.xyz + r34.xyz;
          r33.xyz = r15.zzz ? r33.xyz : r26.xyz;
          r33.xyz = -v7.xyz + r33.xyz;
          r15.z = dot(r33.xyz, r33.xyz);
          r15.w = rsqrt(r15.z);
          r34.xyz = r33.xyz * r15.www;
          r19.w = dot(r1.xyz, r34.xyz);
          r22.w = saturate(r19.w);
          r22.w = useSpecularZFeather ? abs(r19.w) : r22.w;
          r24.w = cmp(0 < r22.w);
          if (r24.w != 0) {
            r24.w = sqrt(r15.z);
            r25.w = r29.y * r29.y;
            r15.z = r25.w / r15.z;
            r15.z = min(1, r15.z);
            r25.w = saturate(r24.w * r28.y + r28.z);
            r24.w = saturate(r24.w * r28.w + r29.x);
            r33.w = r25.w * r25.w;
            r25.w = r25.w * -2 + 3;
            r25.w = r33.w * r25.w;
            r15.z = r25.w * r15.z;
            r25.w = r24.w * r24.w;
            r24.w = r24.w * -2 + 3;
            r24.w = r25.w * r24.w;
            r15.z = r24.w * r15.z;
            r24.w = cmp(0 < r15.z);
            if (r24.w != 0) {
              r9.w = (int)r9.w + 1;
              if (3 == 0) r34.x = 0; else if (3+27 < 32) {               r34.x = (uint)r28.x << (32-(3 + 27)); r34.x = (uint)r34.x >> (32-3);              } else r34.x = (uint)r28.x >> 27;
              if (4 == 0) r34.y = 0; else if (4+20 < 32) {               r34.y = (uint)r28.x << (32-(4 + 20)); r34.y = (uint)r34.y >> (32-4);              } else r34.y = (uint)r28.x >> 20;
              r24.w = cmp((int)r34.x != 1);
              if (r24.w != 0) {
                r24.w = abs(r19.w) * -0.200000003 + 0.400000006;
                r25.w = cmp(r19.w < 0);
                r25.w = r6.z ? r25.w : 0;
                r24.w = r25.w ? -r24.w : r24.w;
                r34.xzw = r1.xyz * r24.www + v7.xyz;
                r30.z = r31.x;
                r34.xzw = r34.xzw + -r30.xyz;
                r24.w = max(abs(r34.z), abs(r34.w));
                r24.w = max(abs(r34.x), r24.w);
                r24.w = r31.y / r24.w;
                r24.w = r24.w + r31.z;
                r25.w = dot(r34.xzw, r34.xzw);
                r25.w = rsqrt(r25.w);
                r24.w = max(6.10351563e-05, r24.w);
                r33.w = (int)r28.x & 0x0000ffff;
                r35.w = (uint)r33.w;
                r33.w = 0;
                r36.x = 0;
                while (true) {
                  r36.y = cmp((int)r36.x >= 8);
                  if (r36.y != 0) break;
                  r36.y = dot(icb[r36.x+0].yx, r14.xy);
                  r36.z = dot(icb[r36.x+0].yx, r14.yz);
                  r37.yz = r36.yz * r29.zz;
                  r37.x = r37.y * r13.x;
                  r37.w = r37.y * r12.x;
                  r35.xyz = r34.xzw * r25.www + r37.xzw;
                  r35.x = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyzw, r24.w).x;
                  r33.w = r35.x * 0.125 + r33.w;
                  r36.x = (int)r36.x + 1;
                }
              } else {
                r33.w = 1;
              }
              r15.z = r33.w * r15.z;
              if (r34.y != 0) {
                r24.w = (int)r34.y + numLights;
                r24.w = (int)r24.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r25.w, r24.w, l(52), t12.xxxx
              r25.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r24.w, l(100), t12.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r24.w, l(116), t12.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
                r36.x = abs(r19.w) * -0.200000003 + 0.400000006;
                r19.w = cmp(r19.w < 0);
                r19.w = r6.z ? r19.w : 0;
                r19.w = r19.w ? -r36.x : r36.x;
                r18.xyz = r1.xyz * r19.www + v7.xyz;
                r19.w = dot(r34.xyzw, r18.xyzw);
                r34.x = dot(r35.xyzw, r18.xyzw);
                r34.y = cmp(r34.x < r19.w);
                if (r34.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r24.w, l(68), t12.xyzw
                r35.x = samp0[]..swiz;
                r35.y = samp0[]..swiz;
                r35.z = samp0[]..swiz;
                r35.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r24.w, l(84), t12.xyzw
                r36.x = samp0[]..swiz;
                r36.y = samp0[]..swiz;
                r36.z = samp0[]..swiz;
                r36.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r24.w, l(132), t12.xyzw
                r37.x = samp0[]..swiz;
                r37.y = samp0[]..swiz;
                r37.z = samp0[]..swiz;
                r37.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r24.w, l(148), t12.xyzw
                r38.x = samp0[]..swiz;
                r38.y = samp0[]..swiz;
                r38.z = samp0[]..swiz;
                r38.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.zw, r24.w, l(164), t12.xxxy
                r34.z = samp0[]..swiz;
                r34.w = samp0[]..swiz;
                  r35.x = dot(r35.xyzw, r18.xyzw);
                  r35.y = dot(r36.xyzw, r18.xyzw);
                  r18.xy = r35.xy / r34.xx;
                  r18.xy = r18.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r18.xy = r18.xy + r38.zw;
                  r18.xy = r18.xy * r38.xy;
                  r35.xy = r25.ww / r37.xz;
                  r35.zw = float2(1,1) + -r35.xy;
                  r35.zw = cmp(r18.xy >= r35.zw);
                  r35.xy = cmp(r35.xy >= r18.xy);
                  r35.xy = (int2)r35.xy | (int2)r35.zw;
                  r18.z = (int)r35.y | (int)r35.x;
                  r18.xy = saturate(r18.xy);
                  r35.xy = r18.xy * r37.xz + r37.yw;
                  r18.x = r34.w * r34.x;
                  r18.y = r34.z * r34.x + r19.w;
                  r18.x = r18.y / r18.x;
                } else {
                  r18.z = -1;
                }
                r18.y = (int)r34.y | (int)r18.z;
                if (r18.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.y, r24.w, l(28), t12.xxxx
                r18.y = samp0[]..swiz;
                  r18.x = max(6.10351563e-05, r18.x);
                  r18.y = (int)r18.y & 0x0000ffff;
                  if (r6.y != 0) {
                    r34.z = (uint)r18.y;
                    r18.z = 0;
                    r19.w = 0;
                    while (true) {
                      r24.w = cmp((int)r19.w >= 8);
                      if (r24.w != 0) break;
                      r36.x = dot(icb[r19.w+0].yx, r14.xw);
                      r36.y = dot(icb[r19.w+0].xy, r10.xy);
                      r34.xy = r36.xy * r25.ww + r35.xy;
                      r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r18.x).x;
                      r18.z = r24.w * 0.125 + r18.z;
                      r19.w = (int)r19.w + 1;
                    }
                  } else {
                    r35.z = (uint)r18.y;
                    r18.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r18.x).x;
                  }
                  r18.x = r18.z * r18.z;
                  r18.x = r18.x * r18.z;
                } else {
                  r18.x = 1;
                }
                r15.z = r18.x * r15.z;
              }
              r18.x = cmp(0 < r15.z);
              if (r18.x != 0) {
                r10.z = (int)r10.z + 1;
                r27.z = r26.w;
                r34.xyz = r15.zzz * r27.zxy;
                r15.z = r22.w + r0.y;
                r15.z = r22.w / r15.z;
                r16.xyz = r34.xyz * r15.zzz + r16.xyz;
                r33.xyz = r33.xyz * r15.www + r9.xyz;
                r15.z = dot(r33.xyz, r33.xyz);
                r15.z = rsqrt(r15.z);
                r33.xyz = r33.xyz * r15.zzz;
                r15.z = saturate(dot(r1.xyz, r33.xyz));
                r15.w = saturate(dot(r33.xyz, r9.xyz));
                r18.x = r15.z * r15.z;
                r18.xy = r18.xx * specularLobeRoughnessControl.xz + float2(1,1);
                r18.xy = r18.xy * r18.xy;
                r18.xy = specularLobeRoughnessControl.yw / r18.xy;
                r18.xy = r18.xy * r15.zz;
                r15.z = 4 * r15.w;
                r15.zw = r18.xy / r15.zz;
                r15.zw = lobeWeightingThicknessRefraction.xy * r15.zw;
                r33.xyz = r34.xyz * r15.zzz;
                r33.xyz = r33.xyz * r22.www + r25.xyz;
                r34.xyz = r34.xyz * r15.www;
                r25.xyz = r34.xyz * r22.www + r33.xyz;
              }
            }
          }
          break;
          case 2 :          r33.x = r29.w;
          r33.yz = r30.zw;
          r33.xyz = -v7.xyz + r33.xyz;
          r15.z = dot(r33.xyz, r33.xyz);
          r15.z = rsqrt(r15.z);
          r34.xyz = r33.xyz * r15.zzz;
          r15.w = dot(r1.xyz, r34.xyz);
          r18.x = saturate(r15.w);
          r18.x = useSpecularZFeather ? abs(r15.w) : r18.x;
          r18.y = cmp(0 < r18.x);
          if (r18.y != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(108), t12.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(124), t12.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r36.xy = r34.xy;
            r36.zw = r35.xy;
            r18.y = dot(r36.xyzw, r17.xyzw);
            r19.w = cmp(r18.y < 1);
            if (r19.w != 0) {
              r37.xyz = float3(1,1,1);
              r19.w = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(172), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(188), t12.wxyz
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(204), t12.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.w, r11.w, l(236), t12.xxxx
            r22.w = samp0[]..swiz;
              r26.xyz = -v7.xyz + r26.xyz;
              r24.w = r29.y * r29.y;
              r25.w = dot(r26.xyz, r26.xyz);
              r24.w = r24.w / r25.w;
              r24.w = min(1, r24.w);
              r25.w = saturate(r18.y * r28.y + r28.z);
              r26.x = saturate(r18.y * r28.w + r29.x);
              r26.y = r25.w * r25.w;
              r25.w = r25.w * -2 + 3;
              r25.w = r26.y * r25.w;
              r24.w = r25.w * r24.w;
              r25.w = r26.x * r26.x;
              r26.x = r26.x * -2 + 3;
              r25.w = r26.x * r25.w;
              r24.w = r25.w * r24.w;
              r30.zw = r31.xy;
              r26.x = dot(r30.xyzw, r17.xyzw);
              r41.xy = r31.zw;
              r41.zw = r32.zw;
              r26.y = dot(r41.xyzw, r17.xyzw);
              r19.xy = r26.xy / r18.yy;
              r18.y = cmp(r38.w < 0.00048828125);
              if (r18.y != 0) {
                r39.y = r40.x;
                r26.xy = saturate(abs(r19.xy) * r39.zw + r39.xy);
                r28.yz = r26.xy * r26.xy;
                r26.xy = r26.xy * float2(-2,-2) + float2(3,3);
                r26.xy = r28.yz * r26.xy;
                r18.y = r26.x * r26.y;
              } else {
                r38.w = r39.y;
                r38.xyzw = saturate(r38.xyzw * abs(r19.yyxx));
                r38.xyzw = log2(r38.xyzw);
                r38.xyzw = r39.xxxx * r38.xyzw;
                r38.xyzw = exp2(r38.xyzw);
                r26.xy = r38.xy + r38.zw;
                r26.xy = log2(r26.xy);
                r26.xy = r40.xx * r26.xy;
                r26.xy = exp2(r26.xy);
                r25.w = r39.z * r26.x;
                r26.x = r39.w * r26.y + -1;
                r25.w = r39.w * r26.y + -r25.w;
                r25.w = saturate(r26.x / r25.w);
                r26.x = r25.w * r25.w;
                r25.w = r25.w * -2 + 3;
                r18.y = r26.x * r25.w;
              }
              r19.w = r24.w * r18.y;
              r18.y = (int)r22.w & 255;
              if (r18.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xyz, r11.w, l(220), t12.xyzx
              r26.x = samp0[]..swiz;
              r26.y = samp0[]..swiz;
              r26.z = samp0[]..swiz;
                r22.w = dot(r40.yzw, r19.xyz);
                r19.x = dot(r26.xyz, r19.xyz);
                r26.x = frac(r22.w);
                r26.y = frac(r19.x);
                r18.y = (int)r18.y + -1;
                r26.z = (uint)r18.y;
                r37.xyz = gCookieArray.SampleLevel(samplerLinear_s, r26.xyz, 0).xyz;
              } else {
                r37.xyz = float3(1,1,1);
              }
            }
            r27.w = r26.w;
            r26.xyz = r37.xyz * r27.wxy;
            r18.y = cmp(0 < r19.w);
            if (r18.y != 0) {
              r9.w = (int)r9.w + 1;
              if (3 == 0) r19.x = 0; else if (3+27 < 32) {               r19.x = (uint)r28.x << (32-(3 + 27)); r19.x = (uint)r19.x >> (32-3);              } else r19.x = (uint)r28.x >> 27;
              if (4 == 0) r19.y = 0; else if (4+20 < 32) {               r19.y = (uint)r28.x << (32-(4 + 20)); r19.y = (uint)r19.y >> (32-4);              } else r19.y = (uint)r28.x >> 20;
              r18.y = cmp((int)r19.x != 1);
              if (r18.y != 0) {
                r18.y = abs(r15.w) * -0.200000003 + 0.400000006;
                r19.x = cmp(r15.w < 0);
                r19.x = r6.z ? r19.x : 0;
                r18.y = r19.x ? -r18.y : r18.y;
                r20.xyz = r1.xyz * r18.yyy + v7.xyz;
                r34.xy = r32.xy;
                r18.y = dot(r34.xyzw, r20.xyzw);
                r19.x = dot(r36.xyzw, r20.xyzw);
                r22.w = cmp(r19.x >= r18.y);
                if (r22.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xy, r11.w, l(140), t12.xyxx
                r35.x = samp0[]..swiz;
                r35.y = samp0[]..swiz;
                  r30.zw = r31.xy;
                  r27.x = dot(r30.xyzw, r20.xyzw);
                  r32.xy = r31.zw;
                  r27.y = dot(r32.xyzw, r20.xyzw);
                  r20.xy = r27.xy / r19.xx;
                  r20.xy = saturate(r20.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r20.xy = r20.xy * r35.zx + r35.wy;
                  r11.w = r18.y / r19.x;
                  r11.w = max(6.10351563e-05, r11.w);
                  r18.y = (int)r28.x & 0x0000ffff;
                  if (r6.y != 0) {
                    r27.z = (uint)r18.y;
                    r19.x = 0;
                    r22.w = 0;
                    while (true) {
                      r24.w = cmp((int)r22.w >= 8);
                      if (r24.w != 0) break;
                      r28.x = dot(icb[r22.w+0].xy, r11.xy);
                      r28.y = dot(icb[r22.w+0].yx, r11.xz);
                      r27.xy = r28.xy * r29.zz + r20.xy;
                      r24.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r11.w).x;
                      r19.x = r24.w * 0.125 + r19.x;
                      r22.w = (int)r22.w + 1;
                    }
                  } else {
                    r20.z = (uint)r18.y;
                    r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r11.w).x;
                  }
                  r11.w = r19.x * r19.x;
                  r11.w = r11.w * r19.x;
                } else {
                  r11.w = 1;
                }
              } else {
                r11.w = 1;
              }
              r11.w = r19.w * r11.w;
              if (r19.y != 0) {
                r18.y = (int)r19.y + numLights;
                r18.y = (int)r18.y + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.y, r18.y, l(52), t12.xxxx
              r19.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xyzw, r18.y, l(68), t12.xyzw
              r27.x = samp0[]..swiz;
              r27.y = samp0[]..swiz;
              r27.z = samp0[]..swiz;
              r27.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r18.y, l(84), t12.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r18.y, l(100), t12.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r18.y, l(116), t12.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r18.y, l(132), t12.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r18.y, l(148), t12.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
                r19.w = abs(r15.w) * -0.200000003 + 0.400000006;
                r15.w = cmp(r15.w < 0);
                r15.w = r6.z ? r15.w : 0;
                r15.w = r15.w ? -r19.w : r19.w;
                r21.xyz = r1.xyz * r15.www + v7.xyz;
                r20.x = dot(r27.xyzw, r21.xyzw);
                r20.y = dot(r28.xyzw, r21.xyzw);
                r15.w = dot(r29.xyzw, r21.xyzw);
                r19.w = dot(r30.xyzw, r21.xyzw);
                r20.z = cmp(r19.w < r15.w);
                r20.xy = r20.xy / r19.ww;
                r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r20.xy = r20.xy + r32.zw;
                r20.xy = r20.xy * r32.xy;
                r21.xy = r19.yy / r31.xz;
                r27.xy = float2(1,1) + -r21.xy;
                r27.xy = cmp(r20.xy >= r27.xy);
                r21.xy = cmp(r21.xy >= r20.xy);
                r21.xy = (int2)r21.xy | (int2)r27.xy;
                r21.x = (int)r21.y | (int)r21.x;
                r20.z = (int)r20.z | (int)r21.x;
                if (r20.z == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.z, r18.y, l(28), t12.xxxx
                r20.z = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xy, r18.y, l(164), t12.xyxx
                r21.x = samp0[]..swiz;
                r21.y = samp0[]..swiz;
                  r20.xy = saturate(r20.xy);
                  r27.xy = r20.xy * r31.xz + r31.yw;
                  r18.y = r21.y * r19.w;
                  r15.w = r21.x * r19.w + r15.w;
                  r15.w = r15.w / r18.y;
                  r15.w = max(6.10351563e-05, r15.w);
                  r18.y = r20.z ? 0.000000 : 0;
                  if (r6.y != 0) {
                    r20.z = (uint)r18.y;
                    r19.w = 0;
                    r21.x = 0;
                    while (true) {
                      r21.y = cmp((int)r21.x >= 8);
                      if (r21.y != 0) break;
                      r28.x = dot(icb[r21.x+0].xy, r22.xy);
                      r28.y = dot(icb[r21.x+0].yx, r22.xz);
                      r20.xy = r28.xy * r19.yy + r27.xy;
                      r20.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r20.xyz, r15.w).x;
                      r19.w = r20.x * 0.125 + r19.w;
                      r21.x = (int)r21.x + 1;
                    }
                  } else {
                    r27.z = (uint)r18.y;
                    r19.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r15.w).x;
                  }
                  r15.w = r19.w * r19.w;
                  r15.w = r15.w * r19.w;
                } else {
                  r15.w = 1;
                }
                r11.w = r15.w * r11.w;
              }
              r15.w = cmp(0 < r11.w);
              if (r15.w != 0) {
                r10.z = (int)r10.z + 1;
                r20.xyz = r11.www * r26.xyz;
                r11.w = r18.x + r0.y;
                r11.w = r18.x / r11.w;
                r16.xyz = r20.xyz * r11.www + r16.xyz;
                r21.xyz = r33.xyz * r15.zzz + r9.xyz;
                r11.w = dot(r21.xyz, r21.xyz);
                r11.w = rsqrt(r11.w);
                r21.xyz = r21.xyz * r11.www;
                r11.w = saturate(dot(r1.xyz, r21.xyz));
                r15.z = saturate(dot(r21.xyz, r9.xyz));
                r15.w = r11.w * r11.w;
                r21.xy = r15.ww * specularLobeRoughnessControl.xz + float2(1,1);
                r21.xy = r21.xy * r21.xy;
                r21.xy = specularLobeRoughnessControl.yw / r21.xy;
                r21.xy = r21.xy * r11.ww;
                r11.w = 4 * r15.z;
                r15.zw = r21.xy / r11.ww;
                r15.zw = lobeWeightingThicknessRefraction.xy * r15.zw;
                r21.xyz = r20.xyz * r15.zzz;
                r21.xyz = r21.xyz * r18.xxx + r25.xyz;
                r20.xyz = r20.xyz * r15.www;
                r25.xyz = r20.xyz * r18.xxx + r21.xyz;
              }
            }
          }
          break;
          default :
          break;
        }
        r8.w = (int)r8.w + 1;
      }
    }
    r23.xyz = r16.xyz;
    r24.xyz = r25.xyz;
    r13.z = r8.w;
    r13.w = r9.w;
    r13.y = r10.z;
    r1.w = (int)r1.w + 32;
  }
  r3.xyzw = colorMap.Sample(colorSampler_s, r5.zw).xyzw;
  r0.y = 1 + r4.w;
  r0.y = log2(r0.y);
  r0.y = lobeWeightingThicknessRefraction.w * r0.y;
  r0.y = min(500, r0.y);
  r0.yz = r0.yy * r1.xy + v0.xy;
  r1.xy = float2(-1,-1) + renderTargetSize.xy;
  r0.yz = max(float2(0,0), r0.yz);
  r0.yz = min(r0.yz, r1.xy);
  r1.xy = (int2)r0.yz;
  r1.zw = float2(0,0);
  r1.x = ifloatZScene.Load(r1.xyz).x;
  r1.y = cmp(r1.x >= 0.984375);
  r1.z = 1.01587307 * r1.x;
  r1.x = r1.x * 64 + -63;
  r1.x = r1.y ? r1.x : r1.z;
  r1.x = max(9.99999994e-09, r1.x);
  r1.x = rcp(r1.x);
  r0.x = cmp(r0.x < r1.x);
  r0.yz = renderTargetSize.zw * r0.yz;
  r1.xyz = iResolveScene.Sample(pointClamp_s, r0.yz).xyz;
  if (r0.x == 0) {
    r9.xy = (int2)v0.xy;
    r9.zw = float2(0,0);
    r1.xyz = iResolveScene.Load(r9.xyz).xyz;
  }
  r0.xyz = relHDRExposure.xxx * r1.xyz;
  r1.w = r4.w * 2 + 1;
  r1.w = log2(r1.w);
  r4.x = 0.0833333358 * r1.w;
  r4.y = 0;
  r4.xyzw = rColorRamp.Sample(bilinearClamp_s, r4.xy).xyzw;
  r4.xyz = r4.xyz * r0.xyz;
  r1.w = r4.w * r3.w;
  r3.xyz = r3.xyz * r23.xyz + -r4.xyz;
  r3.xyz = r1.www * r3.xyz + r4.xyz;
  r1.xyz = -r1.xyz * relHDRExposure.xxx + r3.xyz;
  r0.xyz = r6.xxx * r1.xyz + r0.xyz;
  r1.xyz = r8.xyz * r23.xyz + -r0.xyz;
  r0.xyz = r7.xxx * r1.xyz + r0.xyz;
  r1.xyz = r24.xyz * r0.www + r7.yzw;
  r0.w = 1 + -r5.z;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = r0.w * 0.980000019 + 0.0199999996;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  r1.xyz = foamColor.xyz * r23.xyz + -r0.xyz;
  r1.xyz = r6.www * r1.xyz + r0.xyz;
  r0.xyz = useFoam ? r1.xyz : r0.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r13.y = r13.z;
        break;
        case 2 :        r13.y = r13.w;
        break;
        case 3 :        break;
        case 4 :        r13.y = (int)r23.w & 255;
        break;
        case 5 :        if (8 == 0) r13.y = 0; else if (8+8 < 32) {         r13.y = (uint)r23.w << (32-(8 + 8)); r13.y = (uint)r13.y >> (32-8);        } else r13.y = (uint)r23.w >> 8;
        break;
        default :
        r13.y = 0;
        break;
      }
      r0.w = (uint)r13.y;
      r1.xyz = r0.www * float3(50,50,50) + -r0.xyz;
      r0.xyz = drawNumLightsAlpha * r1.xyz + r0.xyz;
    }
  }
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = sqrt(r2.x);
    r1.x = cmp(0 < fogConstants.blendAmount);
    if (r1.x != 0) {
      r1.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
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
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
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
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r3.x * r0.w;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r3.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r4.xyz = float3(1,1,1) + -r1.xyz;
    r3.xyz = r4.xyz * r3.xyz;
    r1.xyz = r0.xyz * r1.xyz + r3.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v7.z;
    r1.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r3.x = cmp(abs(r0.w) < 9.99999975e-05);
    r3.y = min(64, r1.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r1.w < 0);
    r1.w = 1 + r1.w;
    r1.w = r3.w ? r3.y : r1.w;
    r1.w = -fogConstants.K0b + r1.w;
    r0.w = r3.x ? 1 : r0.w;
    r0.w = r1.w / r0.w;
    r0.w = r3.x ? r3.z : r0.w;
    r0.w = fogConstants.expMul * r0.w;
    r1.w = sqrt(r2.x);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r2.yzw);
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
  o0.w = 1;
  return;
}