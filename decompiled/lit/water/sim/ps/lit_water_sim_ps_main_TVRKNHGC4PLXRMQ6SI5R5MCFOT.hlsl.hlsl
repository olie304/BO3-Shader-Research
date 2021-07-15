// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:46 2021

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
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
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
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  uint v9 : SV_IsFrontFace0,
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
// unknown dcl_: dcl_resource_structured t23, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t36, 128
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(v0.z >= 0.984375);
  r0.y = 1.01587307 * v0.z;
  r0.z = v0.z * 64 + -63;
  r0.x = r0.x ? r0.z : r0.y;
  r0.x = max(9.99999994e-09, r0.x);
  r0.x = rcp(r0.x);
  r0.yz = (uint2)v0.xy;
  r1.xyz = ddx_coarse(v6.xyz);
  r2.xyz = ddy_coarse(v6.xyz);
  r0.w = numRefProbes + numLights;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.w, v2.x, l(8), t4.xxxx
r1.w = samp0[]..swiz;
  r3.xy = (int2)r1.ww & int2(268435456,536870912);
  if (r3.x != 0) {
    r4.xyz = eyeOffset.xyz + v6.xyz;
    r1.w = 0.0078125 * r0.x;
    r1.w = min(15, r1.w);
    r1.w = (uint)r1.w;
    r5.xy = (uint2)r0.yz >> int2(6,6);
    r5.z = (uint)r1.w << 4;
    r1.w = numStaticDecals & -32;
    r2.w = (int)-r1.w + numStaticDecals;
    r6.xy = float2(0,0);
    r7.w = 0;
    r4.w = 1;
    r8.xyzw = float4(0,0,0,0);
    r3.xzw = float3(0,0,0);
    r5.w = 0;
    while (true) {
      r6.w = cmp((uint)r5.w >= numStaticDecals);
      if (r6.w != 0) break;
      r6.z = (uint)r5.w >> 5;
      r7.xyz = (int3)r5.xyz + (int3)r6.xyz;
      r6.z = visibleDecals.Load(r7.xyzw).x;
      r6.w = cmp((int)r1.w == (int)r5.w);
      if (r2.w == 0) r7.x = 0; else if (r2.w+0 < 32) {       r7.x = (uint)r6.z << (32-(r2.w + 0)); r7.x = (uint)r7.x >> (32-r2.w);      } else r7.x = (uint)r6.z >> 0;
      r6.z = r6.w ? r7.x : r6.z;
      r6.w = (int)r0.w + (int)r5.w;
      r9.xyzw = r8.xyzw;
      r7.xyz = r3.xzw;
      r10.x = r6.z;
      while (true) {
        if (r10.x == 0) break;
        r10.y = firstbitlow((uint)r10.x);
        r10.z = 1 << (int)r10.y;
        r10.w = (int)r10.z & (int)r10.x;
        if (r10.w != 0) {
          r10.x = (int)r10.z ^ (int)r10.x;
          r10.z = (int)r6.w + (int)r10.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r11.xyzw, r10.z, l(0), t11.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r10.z, l(16), t11.xyxx
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
          r11.xyz = -v6.xyz + r11.xyz;
          r12.z = r11.w;
          r11.xyz = cmp(abs(r11.xyz) < r12.zxy);
          r10.z = r11.y ? r11.x : 0;
          r10.z = r11.z ? r10.z : 0;
          if (r10.z != 0) {
            r10.y = (int)r5.w + (int)r10.y;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.xyz, r10.y, l(0), t36.xyzx
          r11.x = samp0[]..swiz;
          r11.y = samp0[]..swiz;
          r11.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.xyz, r10.y, l(16), t36.xyzx
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r13.xyz, r10.y, l(32), t36.xyzx
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
            r14.x = r11.x;
            r14.y = r12.x;
            r14.z = r13.x;
            r10.z = dot(r14.xyz, r14.xyz);
            r10.z = rsqrt(r10.z);
            r15.xyz = r14.xyz * r10.zzz;
            r10.z = dot(r15.xyz, v3.xyz);
            r10.z = cmp(r10.z >= 0.5);
            if (r10.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.xyw, r10.y, l(48), t36.xyxz
            r15.x = samp0[]..swiz;
            r15.y = samp0[]..swiz;
            r15.w = samp0[]..swiz;
              r14.w = r15.x;
              r14.x = dot(r4.xyzw, r14.xyzw);
              r16.x = r11.y;
              r16.y = r12.y;
              r16.z = r13.y;
              r16.w = r15.y;
              r14.y = dot(r4.xyzw, r16.xyzw);
              r15.x = r11.z;
              r15.y = r12.z;
              r15.z = r13.z;
              r14.z = dot(r4.xyzw, r15.xyzw);
              r11.xyz = cmp(abs(r14.xyz) < float3(1,1,1));
              r10.z = r11.y ? r11.x : 0;
              r10.z = r11.z ? r10.z : 0;
              if (r10.z != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.xyzw, r10.y, l(64), t36.xyzw
              r11.x = samp0[]..swiz;
              r11.y = samp0[]..swiz;
              r11.z = samp0[]..swiz;
              r11.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.xyzw, r10.y, l(80), t36.xyzw
              r12.x = samp0[]..swiz;
              r12.y = samp0[]..swiz;
              r12.z = samp0[]..swiz;
              r12.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r10.z, r10.y, l(108), t36.xxxx
              r10.z = samp0[]..swiz;
                r13.x = dot(r1.xyz, r16.xyz);
                r13.y = dot(r1.xyz, r15.xyz);
                r16.x = dot(r2.xyz, r16.xyz);
                r16.y = dot(r2.xyz, r15.xyz);
                r13.zw = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r14.xyz = float3(0.5,-0.5,0.5) * r13.xyx;
                r15.xyz = float3(0.5,-0.5,0.5) * r16.xyx;
                r12.yz = (int2)r12.yz & int2(65535,65535);
                if (r12.y != 0) {
                  if (4 == 0) r10.w = 0; else if (4+24 < 32) {                   r10.w = (uint)r12.w << (32-(4 + 24)); r10.w = (uint)r10.w >> (32-4);                  } else r10.w = (uint)r12.w >> 24;
                  r10.w = 1 << (int)r10.w;
                  r13.x = (uint)r12.w >> 28;
                  r13.x = 1 << (int)r13.x;
                  r13.y = cmp((int)r12.y == 4);
                  if (r13.y != 0) {
                    r13.y = (int)r12.w & 4095;
                    if (12 == 0) r14.w = 0; else if (12+12 < 32) {                     r14.w = (uint)r12.w << (32-(12 + 12)); r14.w = (uint)r14.w >> (32-12);                    } else r14.w = (uint)r12.w >> 12;
                    r15.w = r10.z ? 0.000000 : 0;
                    r16.xz = (uint2)r10.ww;
                    r16.y = (uint)r13.x;
                    r17.xy = r13.zw * r16.zy + float2(0.5,0.5);
                    r17.zw = float2(-0.5,-0.5) + r16.zy;
                    r17.xy = min(r17.xy, r17.zw);
                    r18.x = (uint)r13.y;
                    r18.y = (uint)r14.w;
                    r17.xy = r18.xy + r17.xy;
                    r17.xy = invBcTexSizes.xy * r17.xy;
                    r17.z = (uint)r15.w;
                    r18.xyz = invBcTexSizes.xyx * r14.zyz;
                    r18.xyz = r18.xyz * r16.xyz;
                    r19.xyz = invBcTexSizes.xyx * r15.zyz;
                    r16.xyz = r19.xyz * r16.xyz;
                    r16.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r17.xyz, r18.xyzx, r16.xyzx).xyzw;
                  } else {
                    r12.y = cmp((int)r12.y == 1);
                    if (r12.y != 0) {
                      r12.y = (int)r12.w & 4095;
                      if (12 == 0) r12.w = 0; else if (12+12 < 32) {                       r12.w = (uint)r12.w << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                      } else r12.w = (uint)r12.w >> 12;
                      r13.y = r10.z ? 0.000000 : 0;
                      r17.xz = (uint2)r10.ww;
                      r17.y = (uint)r13.x;
                      r18.xy = r13.zw * r17.zy + float2(0.5,0.5);
                      r18.zw = float2(-0.5,-0.5) + r17.zy;
                      r18.xy = min(r18.xy, r18.zw);
                      r19.xy = (uint2)r12.yw;
                      r12.yw = r19.xy + r18.xy;
                      r18.xy = invBcTexSizes.zw * r12.yw;
                      r18.z = (uint)r13.y;
                      r19.xyz = invBcTexSizes.zwz * r14.zyz;
                      r19.xyz = r19.xyz * r17.xyz;
                      r20.xyz = invBcTexSizes.zwz * r15.zyz;
                      r17.xyz = r20.xyz * r17.xyz;
                      r16.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r18.xyz, r19.xyzx, r17.xyzx).xyzw;
                    } else {
                      r16.xyzw = float4(1,1,1,1);
                    }
                  }
                  r11.xyz = r16.xyz * r11.xyz;
                  r10.w = r16.w * r11.w;
                } else {
                  r11.xyz = float3(0,0,0);
                  r10.w = 0;
                }
                r12.y = cmp(r12.x != 1.000000);
                r11.w = r10.w + r11.w;
                r11.w = saturate(r11.w * r12.x + -r12.x);
                r10.w = r12.y ? r11.w : r10.w;
                if (r12.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r10.y, r10.y, l(100), t36.xxxx
                r10.y = samp0[]..swiz;
                  if (4 == 0) r11.w = 0; else if (4+24 < 32) {                   r11.w = (uint)r10.y << (32-(4 + 24)); r11.w = (uint)r11.w >> (32-4);                  } else r11.w = (uint)r10.y >> 24;
                  r11.w = 1 << (int)r11.w;
                  r12.x = (uint)r10.y >> 28;
                  r12.x = 1 << (int)r12.x;
                  r12.y = cmp((int)r12.z == 2);
                  if (r12.y != 0) {
                    r12.y = (int)r10.y & 4095;
                    if (12 == 0) r12.w = 0; else if (12+12 < 32) {                     r12.w = (uint)r10.y << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                    } else r12.w = (uint)r10.y >> 12;
                    if (10 == 0) r13.x = 0; else if (10+20 < 32) {                     r13.x = (uint)r10.z << (32-(10 + 20)); r13.x = (uint)r13.x >> (32-10);                    } else r13.x = (uint)r10.z >> 20;
                    r16.xz = (uint2)r11.ww;
                    r16.y = (uint)r12.x;
                    r17.xy = r13.zw * r16.zy + float2(0.5,0.5);
                    r17.zw = float2(-0.5,-0.5) + r16.zy;
                    r17.xy = min(r17.xy, r17.zw);
                    r18.xy = (uint2)r12.yw;
                    r12.yw = r18.xy + r17.xy;
                    r17.xy = invMaskTexSizes.xy * r12.yw;
                    r17.z = (uint)r13.x;
                    r18.xyz = invMaskTexSizes.xyx * r14.zyz;
                    r18.xyz = r18.xyz * r16.xyz;
                    r19.xyz = invMaskTexSizes.xyx * r15.zyz;
                    r16.xyz = r19.xyz * r16.xyz;
                    r12.y = materialTexMask.SampleGrad(samplerLinearClamp_s, r17.xyz, r18.y, r16.y).x;
                  } else {
                    r12.z = cmp((int)r12.z == 4);
                    if (r12.z != 0) {
                      r12.z = (int)r10.y & 4095;
                      if (12 == 0) r12.w = 0; else if (12+12 < 32) {                       r12.w = (uint)r10.y << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                      } else r12.w = (uint)r10.y >> 12;
                      if (10 == 0) r13.x = 0; else if (10+20 < 32) {                       r13.x = (uint)r10.z << (32-(10 + 20)); r13.x = (uint)r13.x >> (32-10);                      } else r13.x = (uint)r10.z >> 20;
                      r16.xz = (uint2)r11.ww;
                      r16.y = (uint)r12.x;
                      r17.xy = r13.zw * r16.zy + float2(0.5,0.5);
                      r17.zw = float2(-0.5,-0.5) + r16.zy;
                      r17.xy = min(r17.xy, r17.zw);
                      r18.xy = (uint2)r12.zw;
                      r12.zw = r18.xy + r17.xy;
                      r17.xy = invBcTexSizes.xy * r12.zw;
                      r17.z = (uint)r13.x;
                      r18.xyz = invBcTexSizes.xyx * r14.zyz;
                      r18.xyz = r18.xyz * r16.xyz;
                      r19.xyz = invBcTexSizes.xyx * r15.zyz;
                      r16.xyz = r19.xyz * r16.xyz;
                      r12.y = materialTexBC7.SampleGrad(samplerLinearClamp_s, r17.xyz, r18.y, r16.y).x;
                    } else {
                      r12.z = (int)r10.y & 4095;
                      if (12 == 0) r10.y = 0; else if (12+12 < 32) {                       r10.y = (uint)r10.y << (32-(12 + 12)); r10.y = (uint)r10.y >> (32-12);                      } else r10.y = (uint)r10.y >> 12;
                      if (10 == 0) r10.z = 0; else if (10+20 < 32) {                       r10.z = (uint)r10.z << (32-(10 + 20)); r10.z = (uint)r10.z >> (32-10);                      } else r10.z = (uint)r10.z >> 20;
                      r16.xz = (uint2)r11.ww;
                      r16.y = (uint)r12.x;
                      r12.xw = r13.zw * r16.xy + float2(0.5,0.5);
                      r13.xy = float2(-0.5,-0.5) + r16.zy;
                      r12.xw = min(r13.xy, r12.xw);
                      r13.x = (uint)r12.z;
                      r13.yz = (uint2)r10.yz;
                      r12.xz = r13.xy + r12.xw;
                      r13.xy = invBcTexSizes.zw * r12.xz;
                      r12.xzw = invBcTexSizes.zwz * r14.xyz;
                      r12.xzw = r12.xzw * r16.xyz;
                      r14.xyz = invBcTexSizes.zwz * r15.xyz;
                      r14.xyz = r14.xyz * r16.xyz;
                      r12.y = materialTexBC3.SampleGrad(samplerLinearClamp_s, r13.xyz, r12.z, r14.y).x;
                    }
                  }
                  r12.xzw = r12.yyy * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r10.y = saturate(1 + -r12.y);
                  r11.xyz = r11.xyz * r10.yyy;
                } else {
                  r12.xzw = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r10.y = 1 + -r10.w;
                r13.xyz = r10.yyy * r7.xyz;
                r7.xyz = r11.xyz * r10.www + r13.xyz;
                r11.xyz = r10.yyy * r9.xyz;
                r9.xyz = r12.xzw * r10.www + r11.xyz;
                r9.w = r9.w * r10.y + r10.w;
              }
            }
          }
        }
      }
      r8.xyzw = r9.xyzw;
      r3.xzw = r7.xyz;
      r5.w = (int)r5.w + 32;
    }
  } else {
    r3.xzw = float3(0,0,0);
    r8.xyzw = float4(0,0,0,0);
  }
  if (r3.y != 0) {
    r4.xyz = eyeOffset.xyz + v6.xyz;
    r1.w = numDynamicDecals + numStaticDecals;
    r2.w = 0.0078125 * r0.x;
    r2.w = min(15, r2.w);
    r2.w = (uint)r2.w;
    r5.xy = (uint2)r0.yz >> int2(6,6);
    r5.z = (uint)r2.w << 4;
    r2.w = numStaticDecals & -32;
    r3.y = (int)-r2.w + numStaticDecals;
    r5.w = (int)r1.w & -32;
    r6.x = (int)r1.w + (int)-r5.w;
    r7.xy = float2(0,0);
    r9.w = 0;
    r4.w = 1;
    r10.xyzw = r8.xyzw;
    r6.yzw = r3.xzw;
    r7.w = r2.w;
    while (true) {
      r11.x = cmp((uint)r7.w >= (uint)r1.w);
      if (r11.x != 0) break;
      r7.z = (uint)r7.w >> 5;
      r9.xyz = (int3)r5.xyz + (int3)r7.xyz;
      r7.z = visibleDecals.Load(r9.xyzw).x;
      r9.x = cmp((int)r2.w == (int)r7.w);
      bitmask.y = ((~(-1 << r3.y)) << 0) & 0xffffffff;  r9.y = (((uint)0 << 0) & bitmask.y) | ((uint)r7.z & ~bitmask.y);
      r7.z = r9.x ? r9.y : r7.z;
      r9.x = cmp((int)r5.w == (int)r7.w);
      if (r6.x == 0) r9.y = 0; else if (r6.x+0 < 32) {       r9.y = (uint)r7.z << (32-(r6.x + 0)); r9.y = (uint)r9.y >> (32-r6.x);      } else r9.y = (uint)r7.z >> 0;
      r7.z = r9.x ? r9.y : r7.z;
      r9.x = (int)r0.w + (int)r7.w;
      r11.xyzw = r10.xyzw;
      r12.xyz = r6.yzw;
      r9.y = r7.z;
      while (true) {
        if (r9.y == 0) break;
        r9.z = firstbitlow((uint)r9.y);
        r12.w = 1 << (int)r9.z;
        r13.x = (int)r9.y & (int)r12.w;
        if (r13.x != 0) {
          r9.y = (int)r9.y ^ (int)r12.w;
          r12.w = (int)r9.z + (int)r9.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xyzw, r12.w, l(0), t11.xyzw
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
        r13.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xy, r12.w, l(16), t11.xyxx
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
          r13.xyz = -v6.xyz + r13.xyz;
          r14.z = r13.w;
          r13.xyz = cmp(abs(r13.xyz) < r14.zxy);
          r12.w = r13.y ? r13.x : 0;
          r12.w = r13.z ? r12.w : 0;
          if (r12.w != 0) {
            r9.z = (int)r7.w + (int)r9.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r13.xyz, r9.z, l(0), t36.xyzx
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.xyz, r9.z, l(16), t36.xyzx
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.xyz, r9.z, l(32), t36.xyzx
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
            r16.x = r13.x;
            r16.y = r14.x;
            r16.z = r15.x;
            r12.w = dot(r16.xyz, r16.xyz);
            r12.w = rsqrt(r12.w);
            r17.xyz = r16.xyz * r12.www;
            r12.w = dot(r17.xyz, v3.xyz);
            r12.w = cmp(r12.w >= 0.5);
            if (r12.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyw, r9.z, l(48), t36.xyxz
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.w = samp0[]..swiz;
              r16.w = r17.x;
              r16.x = dot(r4.xyzw, r16.xyzw);
              r18.x = r13.y;
              r18.y = r14.y;
              r18.z = r15.y;
              r18.w = r17.y;
              r16.y = dot(r4.xyzw, r18.xyzw);
              r17.x = r13.z;
              r17.y = r14.z;
              r17.z = r15.z;
              r16.z = dot(r4.xyzw, r17.xyzw);
              r13.xyz = cmp(abs(r16.xyz) < float3(1,1,1));
              r12.w = r13.y ? r13.x : 0;
              r12.w = r13.z ? r12.w : 0;
              if (r12.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r13.xyzw, r9.z, l(64), t36.xyzw
              r13.x = samp0[]..swiz;
              r13.y = samp0[]..swiz;
              r13.z = samp0[]..swiz;
              r13.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.xyzw, r9.z, l(80), t36.xyzw
              r14.x = samp0[]..swiz;
              r14.y = samp0[]..swiz;
              r14.z = samp0[]..swiz;
              r14.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.w, r9.z, l(108), t36.xxxx
              r12.w = samp0[]..swiz;
                r15.x = dot(r1.xyz, r18.xyz);
                r15.y = dot(r1.xyz, r17.xyz);
                r18.x = dot(r2.xyz, r18.xyz);
                r18.y = dot(r2.xyz, r17.xyz);
                r15.zw = r16.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r16.xyz = float3(0.5,-0.5,0.5) * r15.xyx;
                r17.xyz = float3(0.5,-0.5,0.5) * r18.xyx;
                r14.yz = (int2)r14.yz & int2(65535,65535);
                if (r14.y != 0) {
                  if (4 == 0) r15.x = 0; else if (4+24 < 32) {                   r15.x = (uint)r14.w << (32-(4 + 24)); r15.x = (uint)r15.x >> (32-4);                  } else r15.x = (uint)r14.w >> 24;
                  r15.y = (uint)r14.w >> 28;
                  r15.xy = int2(1,1) << (int2)r15.xy;
                  r16.w = cmp((int)r14.y == 4);
                  if (r16.w != 0) {
                    r16.w = (int)r14.w & 4095;
                    if (12 == 0) r17.w = 0; else if (12+12 < 32) {                     r17.w = (uint)r14.w << (32-(12 + 12)); r17.w = (uint)r17.w >> (32-12);                    } else r17.w = (uint)r14.w >> 12;
                    r18.x = r12.w ? 0.000000 : 0;
                    r19.xyz = (uint3)r15.xyx;
                    r18.yz = r15.zw * r19.zy + float2(0.5,0.5);
                    r20.xy = float2(-0.5,-0.5) + r19.zy;
                    r18.yz = min(r20.xy, r18.yz);
                    r20.x = (uint)r16.w;
                    r20.y = (uint)r17.w;
                    r18.yz = r20.xy + r18.yz;
                    r20.xy = invBcTexSizes.xy * r18.yz;
                    r20.z = (uint)r18.x;
                    r18.xyz = invBcTexSizes.xyx * r16.zyz;
                    r18.xyz = r18.xyz * r19.xyz;
                    r21.xyz = invBcTexSizes.xyx * r17.zyz;
                    r19.xyz = r21.xyz * r19.xyz;
                    r18.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r20.xyz, r18.xyzx, r19.xyzx).xyzw;
                  } else {
                    r14.y = cmp((int)r14.y == 1);
                    if (r14.y != 0) {
                      r14.y = (int)r14.w & 4095;
                      if (12 == 0) r14.w = 0; else if (12+12 < 32) {                       r14.w = (uint)r14.w << (32-(12 + 12)); r14.w = (uint)r14.w >> (32-12);                      } else r14.w = (uint)r14.w >> 12;
                      r16.w = r12.w ? 0.000000 : 0;
                      r19.xyz = (uint3)r15.xyx;
                      r15.xy = r15.zw * r19.zy + float2(0.5,0.5);
                      r20.xy = float2(-0.5,-0.5) + r19.zy;
                      r15.xy = min(r20.xy, r15.xy);
                      r20.xy = (uint2)r14.yw;
                      r14.yw = r20.xy + r15.xy;
                      r20.xy = invBcTexSizes.zw * r14.yw;
                      r20.z = (uint)r16.w;
                      r21.xyz = invBcTexSizes.zwz * r16.zyz;
                      r21.xyz = r21.xyz * r19.xyz;
                      r22.xyz = invBcTexSizes.zwz * r17.zyz;
                      r19.xyz = r22.xyz * r19.xyz;
                      r18.xyzw = materialTexBC3.SampleGrad(samplerLinearClamp_s, r20.xyz, r21.xyzx, r19.xyzx).xyzw;
                    } else {
                      r18.xyzw = float4(1,1,1,1);
                    }
                  }
                  r13.xyz = r18.xyz * r13.xyz;
                  r14.y = r18.w * r13.w;
                } else {
                  r13.xyz = float3(0,0,0);
                  r14.y = 0;
                }
                r14.w = cmp(r14.x != 1.000000);
                r13.w = r14.y + r13.w;
                r13.w = saturate(r13.w * r14.x + -r14.x);
                r13.w = r14.w ? r13.w : r14.y;
                if (r14.z != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r9.z, r9.z, l(100), t36.xxxx
                r9.z = samp0[]..swiz;
                  if (4 == 0) r14.x = 0; else if (4+24 < 32) {                   r14.x = (uint)r9.z << (32-(4 + 24)); r14.x = (uint)r14.x >> (32-4);                  } else r14.x = (uint)r9.z >> 24;
                  r14.y = (uint)r9.z >> 28;
                  r14.xy = int2(1,1) << (int2)r14.xy;
                  r14.w = cmp((int)r14.z == 2);
                  if (r14.w != 0) {
                    r14.w = (int)r9.z & 4095;
                    if (12 == 0) r15.x = 0; else if (12+12 < 32) {                     r15.x = (uint)r9.z << (32-(12 + 12)); r15.x = (uint)r15.x >> (32-12);                    } else r15.x = (uint)r9.z >> 12;
                    if (10 == 0) r15.y = 0; else if (10+20 < 32) {                     r15.y = (uint)r12.w << (32-(10 + 20)); r15.y = (uint)r15.y >> (32-10);                    } else r15.y = (uint)r12.w >> 20;
                    r18.xyz = (uint3)r14.xyx;
                    r19.xy = r15.zw * r18.zy + float2(0.5,0.5);
                    r19.zw = float2(-0.5,-0.5) + r18.zy;
                    r19.xy = min(r19.xy, r19.zw);
                    r20.x = (uint)r14.w;
                    r20.y = (uint)r15.x;
                    r19.xy = r20.xy + r19.xy;
                    r19.xy = invMaskTexSizes.xy * r19.xy;
                    r19.z = (uint)r15.y;
                    r20.xyz = invMaskTexSizes.xyx * r16.zyz;
                    r20.xyz = r20.xyz * r18.xyz;
                    r21.xyz = invMaskTexSizes.xyx * r17.zyz;
                    r18.xyz = r21.xyz * r18.xyz;
                    r14.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r19.xyz, r20.x, r18.x).x;
                  } else {
                    r14.z = cmp((int)r14.z == 4);
                    if (r14.z != 0) {
                      r14.z = (int)r9.z & 4095;
                      if (12 == 0) r15.x = 0; else if (12+12 < 32) {                       r15.x = (uint)r9.z << (32-(12 + 12)); r15.x = (uint)r15.x >> (32-12);                      } else r15.x = (uint)r9.z >> 12;
                      if (10 == 0) r15.y = 0; else if (10+20 < 32) {                       r15.y = (uint)r12.w << (32-(10 + 20)); r15.y = (uint)r15.y >> (32-10);                      } else r15.y = (uint)r12.w >> 20;
                      r18.xyz = (uint3)r14.xyx;
                      r19.xy = r15.zw * r18.zy + float2(0.5,0.5);
                      r19.zw = float2(-0.5,-0.5) + r18.zy;
                      r19.xy = min(r19.xy, r19.zw);
                      r20.x = (uint)r14.z;
                      r20.y = (uint)r15.x;
                      r19.xy = r20.xy + r19.xy;
                      r19.xy = invBcTexSizes.xy * r19.xy;
                      r19.z = (uint)r15.y;
                      r20.xyz = invBcTexSizes.xyx * r16.zyz;
                      r20.xyz = r20.xyz * r18.xyz;
                      r21.xyz = invBcTexSizes.xyx * r17.zyz;
                      r18.xyz = r21.xyz * r18.xyz;
                      r14.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r19.xyz, r20.x, r18.x).x;
                    } else {
                      r14.z = (int)r9.z & 4095;
                      if (12 == 0) r9.z = 0; else if (12+12 < 32) {                       r9.z = (uint)r9.z << (32-(12 + 12)); r9.z = (uint)r9.z >> (32-12);                      } else r9.z = (uint)r9.z >> 12;
                      if (10 == 0) r12.w = 0; else if (10+20 < 32) {                       r12.w = (uint)r12.w << (32-(10 + 20)); r12.w = (uint)r12.w >> (32-10);                      } else r12.w = (uint)r12.w >> 20;
                      r18.xyz = (uint3)r14.xyx;
                      r14.xy = r15.zw * r18.xy + float2(0.5,0.5);
                      r15.xy = float2(-0.5,-0.5) + r18.zy;
                      r14.xy = min(r15.xy, r14.xy);
                      r15.x = (uint)r14.z;
                      r15.y = (uint)r9.z;
                      r14.xy = r15.xy + r14.xy;
                      r14.xy = invBcTexSizes.zw * r14.xy;
                      r14.z = (uint)r12.w;
                      r15.xyz = invBcTexSizes.zwz * r16.xyz;
                      r15.xyz = r15.xyz * r18.xyz;
                      r16.xyz = invBcTexSizes.zwz * r17.xyz;
                      r16.xyz = r16.xyz * r18.xyz;
                      r14.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r14.xyz, r15.x, r16.x).x;
                    }
                  }
                  r14.xyz = r14.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r9.z = saturate(1 + -r14.w);
                  r13.xyz = r13.xyz * r9.zzz;
                } else {
                  r14.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r9.z = 1 + -r13.w;
                r15.xyz = r12.xyz * r9.zzz;
                r12.xyz = r13.xyz * r13.www + r15.xyz;
                r13.xyz = r11.xyz * r9.zzz;
                r11.xyz = r14.xyz * r13.www + r13.xyz;
                r11.w = r11.w * r9.z + r13.w;
              }
            }
          }
        }
      }
      r10.xyzw = r11.xyzw;
      r6.yzw = r12.xyz;
      r7.w = (int)r7.w + 32;
    }
    r8.xyzw = r10.xyzw;
    r3.xzw = r6.yzw;
  }
  r8.w = saturate(r8.w);
  r0.w = 1 + -r8.w;
  r1.xy = normalMapScale.xy * w1.xy;
  r1.zw = gameTime.ww * noiseParams.xy;
  r1.zw = w1.xy * noiseParams.zz + r1.zw;
  r1.zw = noiseMap.Sample(noiseSampler_s, r1.zw).xy;
  r1.zw = noiseParams.ww * r1.zw;
  r1.zw = w1.xy * flowParams.xx + r1.zw;
  r2.xy = frac(r1.zw);
  r2.zw = r2.xy * float2(-2,-2) + float2(3,3);
  r2.xy = r2.xy * r2.xy;
  r4.xy = r2.zw * r2.xy;
  normalMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r4.zw = fDest.xy;
  r4.zw = r4.zw * r1.xy;
  r5.xy = ddx_coarse(r4.zw);
  r4.zw = ddy_coarse(r4.zw);
  r3.y = dot(r5.xy, r5.xy);
  r4.z = dot(r4.zw, r4.zw);
  r3.y = max(r4.z, r3.y);
  r3.y = log2(r3.y);
  r3.y = 0.5 * r3.y;
  r4.zw = floor(r1.zw);
  r4.zw = r4.zw / flowParams.xx;
  r4.zw = flowMap.Sample(flowSampler_s, r4.zw).xy;
  r4.zw = r4.zw + r4.zw;
  r5.xyzw = float4(1,0,0,1) + r1.zwzw;
  r5.xyzw = floor(r5.xyzw);
  r5.xyzw = r5.xyzw / flowParams.xxxx;
  r5.xy = flowMap.Sample(flowSampler_s, r5.xy).xy;
  r5.xy = r5.xy + r5.xy;
  r5.zw = flowMap.Sample(flowSampler_s, r5.zw).xy;
  r5.zw = r5.zw + r5.zw;
  r1.zw = float2(1,1) + r1.zw;
  r1.zw = floor(r1.zw);
  r1.zw = r1.zw / flowParams.xx;
  r1.zw = flowMap.Sample(flowSampler_s, r1.zw).xy;
  r1.zw = r1.zw + r1.zw;
  if (useSpecularZFeather != 0) {
    r6.xy = flowMap.Sample(flowSampler_s, w1.xy).xy;
    r6.xy = r6.xy + r6.xy;
    r6.zw = r6.xy * float2(-1,1) + float2(1,-1);
    r6.xy = r6.xw * float2(-1,1) + float2(1,0);
    r6.x = dot(r6.zw, r6.xy);
    r6.x = sqrt(r6.x);
    r6.x = r6.x * normalsFlowScaleMin.y + normalsFlowScaleMin.x;
    r6.xy = normalAdjustAndGloss.xy * r6.xx;
  } else {
    r6.xy = normalAdjustAndGloss.xy;
  }
  r2.xy = -r2.zw * r2.xy + float2(1,1);
  r2.xy = r2.xy * r2.xy;
  r2.xy = r4.xy * r4.xy + r2.xy;
  r2.xy = rsqrt(r2.xy);
  if (useOrientedNormalMap == 0) {
    r2.z = gameTime.w * flowParams.y;
    r6.zw = r4.zw * float2(-1,1) + float2(1,-1);
    r6.zw = r6.zw * r2.zz + r1.xy;
    r6.zw = normalMap.SampleLevel(normalSampler_s, r6.zw, r3.y).xy;
    r7.xy = r5.xy * float2(-1,1) + float2(1,-1);
    r7.xy = r7.xy * r2.zz + r1.xy;
    r7.xy = normalMap.SampleLevel(normalSampler_s, r7.xy, r3.y).xy;
    r7.xy = r7.xy + -r6.zw;
    r6.zw = r4.xx * r7.xy + r6.zw;
    r7.xy = r5.zw * float2(-1,1) + float2(1,-1);
    r7.xy = r7.xy * r2.zz + r1.xy;
    r7.xy = normalMap.SampleLevel(normalSampler_s, r7.xy, r3.y).xy;
    r7.zw = r1.zw * float2(-1,1) + float2(1,-1);
    r1.xy = r7.zw * r2.zz + r1.xy;
    r1.xy = normalMap.SampleLevel(normalSampler_s, r1.xy, r3.y).xy;
    r1.xy = r1.xy + -r7.xy;
    r1.xy = r4.xx * r1.xy + r7.xy;
    r1.xy = r1.xy + -r6.zw;
    r1.xy = r4.yy * r1.xy + r6.zw;
    r1.xy = r1.xy * r6.xx + r6.yy;
  } else {
    r2.zw = r4.zw * float2(-1,1) + float2(1,-1);
    r4.z = dot(r2.zw, r2.zw);
    r4.z = sqrt(r4.z);
    r4.z = max(9.99999975e-06, r4.z);
    r7.xy = r2.zw / r4.zz;
    r7.z = -r7.x;
    r9.x = dot(w1.xy, r7.yz);
    r9.y = dot(w1.xy, -r7.xy);
    r9.xy = normalMapScale.xy * r9.xy;
    r2.z = gameTime.w * r4.z;
    r9.z = -r2.z * flowParams.y + r9.y;
    r2.zw = normalMap.SampleLevel(normalSampler_s, r9.xz, r3.y).xy;
    r2.zw = r2.zw * r6.xx + r6.yy;
    r9.x = dot(r2.zw, r7.yz);
    r9.y = dot(r2.zw, -r7.xy);
    r2.zw = r5.xy * float2(-1,1) + float2(1,-1);
    r4.z = dot(r2.zw, r2.zw);
    r4.z = sqrt(r4.z);
    r4.z = max(9.99999975e-06, r4.z);
    r7.xy = r2.zw / r4.zz;
    r7.z = -r7.x;
    r5.x = dot(w1.xy, r7.yz);
    r5.y = dot(w1.xy, -r7.xy);
    r10.xy = normalMapScale.xy * r5.xy;
    r2.z = gameTime.w * r4.z;
    r10.z = -r2.z * flowParams.y + r10.y;
    r2.zw = normalMap.SampleLevel(normalSampler_s, r10.xz, r3.y).xy;
    r2.zw = r2.zw * r6.xx + r6.yy;
    r5.x = dot(r2.zw, r7.yz);
    r5.y = dot(r2.zw, -r7.xy);
    r2.zw = r5.xy + -r9.xy;
    r2.zw = r4.xx * r2.zw + r9.xy;
    r4.zw = r5.zw * float2(-1,1) + float2(1,-1);
    r5.x = dot(r4.zw, r4.zw);
    r5.x = sqrt(r5.x);
    r5.x = max(9.99999975e-06, r5.x);
    r7.xy = r4.zw / r5.xx;
    r7.z = -r7.x;
    r9.x = dot(w1.xy, r7.yz);
    r9.y = dot(w1.xy, -r7.xy);
    r9.xy = normalMapScale.xy * r9.xy;
    r4.z = gameTime.w * r5.x;
    r9.z = -r4.z * flowParams.y + r9.y;
    r4.zw = normalMap.SampleLevel(normalSampler_s, r9.xz, r3.y).xy;
    r4.zw = r4.zw * r6.xx + r6.yy;
    r5.x = dot(r4.zw, r7.yz);
    r5.y = dot(r4.zw, -r7.xy);
    r1.zw = r1.zw * float2(-1,1) + float2(1,-1);
    r4.z = dot(r1.zw, r1.zw);
    r4.z = sqrt(r4.z);
    r4.z = max(9.99999975e-06, r4.z);
    r7.xy = r1.zw / r4.zz;
    r7.z = -r7.x;
    r9.x = dot(w1.xy, r7.yz);
    r9.y = dot(w1.xy, -r7.xy);
    r9.xy = normalMapScale.xy * r9.xy;
    r1.z = gameTime.w * r4.z;
    r9.z = -r1.z * flowParams.y + r9.y;
    r1.zw = normalMap.SampleLevel(normalSampler_s, r9.xz, r3.y).xy;
    r1.zw = r1.zw * r6.xx + r6.yy;
    r6.x = dot(r1.zw, r7.yz);
    r6.y = dot(r1.zw, -r7.xy);
    r1.zw = r6.xy + -r5.xy;
    r1.zw = r4.xx * r1.zw + r5.xy;
    r1.zw = r1.zw + -r2.zw;
    r1.xy = r4.yy * r1.zw + r2.zw;
  }
  r1.z = r2.x * r2.y;
  r1.xy = r1.xy * r1.zz;
  r1.yzw = v5.xyz * r1.yyy;
  r1.xyz = v4.xyz * r1.xxx + r1.yzw;
  r1.xyz = v3.xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = v9.xxx ? r1.xyz : -r1.xyz;
  r2.x = dot(v6.xyz, v6.xyz);
  r2.y = rsqrt(r2.x);
  r2.yzw = v6.xyz * r2.yyy;
  r4.z = saturate(dot(r1.xyz, -r2.yzw));
  if (v9.x != 0) {
    r5.xy = (int2)v0.xy;
    r5.zw = float2(0,0);
    r3.y = ifloatZScene.Load(r5.xyz).x;
    r5.x = cmp(r3.y >= 0.984375);
    r5.y = 1.01587307 * r3.y;
    r3.y = r3.y * 64 + -63;
    r3.y = r5.x ? r3.y : r5.y;
    r3.y = max(9.99999994e-09, r3.y);
    r3.y = rcp(r3.y);
    r3.y = -v0.w + r3.y;
    r3.y = max(0, r3.y);
    r3.y = min(ssrParams.x, r3.y);
    r5.x = opacityScale.y;
  } else {
    r3.y = sqrt(r2.x);
    r5.x = opacityScale.x;
  }
  if (useFoam != 0) {
    r5.y = foamBase.Sample(foamSampler_s, v7.xy).x;
    r5.z = foamBase.Sample(foamSampler_s, v7.zw).x;
    r5.w = foamBase.Sample(foamSampler_s, v8.xy).x;
    r6.x = foamBase.Sample(foamSampler_s, v8.zw).x;
    r5.y = r5.y + r5.z;
    r5.y = r5.y + r5.w;
    r5.y = r5.y + r6.x;
    r5.y = foamColorScale * r5.y;
    r5.z = flowMap.Sample(flowSampler_s, w1.xy).z;
    r5.z = foamSpacing.y * r5.z + foamSpacing.x;
    r5.y = max(0, r5.y);
    r5.y = log2(r5.y);
    r5.y = r5.z * r5.y;
    r5.y = exp2(r5.y);
    r5.z = foamZFeather * r3.y;
    r5.z = min(1, r5.z);
    r5.w = r5.y * r5.z;
    r5.y = -r5.y * r5.z + 1;
    r5.y = normalAdjustAndGloss.z * r5.y;
  } else {
    r5.w = 0;
    r5.y = normalAdjustAndGloss.z;
  }
  r5.z = dot(-v6.xyz, -v6.xyz);
  r5.z = rsqrt(r5.z);
  r6.xyz = -v6.xyz * r5.zzz;
  r7.xy = (uint2)r0.yz;
  r6.w = dot(r7.xy, float2(0.0671105608,0.00583714992));
  r6.w = frac(r6.w);
  r6.w = 52.9829178 * r6.w;
  r6.w = frac(r6.w);
  r6.w = r6.w * 6.28318548 + gameTick.w;
  sincos(r6.w, r7.x, r9.x);
  r6.w = saturate(dot(r1.xyz, r6.xyz));
  r7.y = dot(-r6.xyz, r1.xyz);
  r7.y = r7.y + r7.y;
  r10.xyz = r1.xyz * -r7.yyy + -r6.xyz;
  r7.y = 1 + -r5.y;
  r7.z = 5 * r7.y;
  r7.w = r7.y * 5 + -2.5;
  r7.w = saturate(0.400000006 * r7.w);
  r7.w = 100 * r7.w;
  r9.yz = -r7.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r9.y = exp2(r9.y);
  r9.y = r9.y * r6.w;
  r9.w = r7.z * r7.y;
  r9.z = -r9.w * 2.0159049 + r9.z;
  r9.z = exp2(r9.z);
  r9.z = r9.z * r6.w;
  r9.yz = float2(9.1368103,9.70808983) * r9.yz;
  r9.y = max(r9.y, r9.z);
  r9.y = max(1.26815999, r9.y);
  r9.z = numRefProbes + -numOverrideProbes;
  r9.w = 0.0078125 * r0.x;
  r9.w = min(15, r9.w);
  r9.w = (uint)r9.w;
  r11.xy = (uint2)r0.yz >> int2(6,6);
  r11.z = (uint)r9.w << 4;
  r0.y = (int)r9.z & -32;
  r0.z = (int)-r0.y + (int)r9.z;
  r9.w = numRefProbes & -32;
  r11.w = (int)-r9.w + numRefProbes;
  r12.xy = float2(0,0);
  r13.w = 0;
  r14.yz = float2(0,1);
  r15.xy = float2(0,0);
  r4.xw = float2(1,0);
  r16.xy = float2(0,0);
  r17.xy = float2(0,0);
  r18.xyzw = float4(0,0,0,0);
  r19.yzw = float3(0,0,0);
  r12.w = r0.y;
  while (true) {
    r14.w = cmp((uint)r12.w >= numRefProbes);
    if (r14.w != 0) break;
    r12.z = (uint)r12.w >> 5;
    r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
    r12.z = visibleProbes.Load(r13.xyzw).x;
    r13.x = cmp((int)r0.y == (int)r12.w);
    bitmask.y = ((~(-1 << r0.z)) << 0) & 0xffffffff;  r13.y = (((uint)0 << 0) & bitmask.y) | ((uint)r12.z & ~bitmask.y);
    r12.z = r13.x ? r13.y : r12.z;
    r13.x = cmp((int)r9.w == (int)r12.w);
    if (r11.w == 0) r13.y = 0; else if (r11.w+0 < 32) {     r13.y = (uint)r12.z << (32-(r11.w + 0)); r13.y = (uint)r13.y >> (32-r11.w);    } else r13.y = (uint)r12.z >> 0;
    r12.z = r13.x ? r13.y : r12.z;
    r13.x = (int)r12.w + numLights;
    r20.xyzw = r18.xyzw;
    r21.xyz = r19.yzw;
    r13.y = r12.z;
    while (true) {
      if (r13.y == 0) break;
      r13.z = firstbitlow((uint)r13.y);
      r14.w = 1 << (int)r13.z;
      r15.w = (int)r13.y & (int)r14.w;
      if (r15.w != 0) {
        r13.y = (int)r13.y ^ (int)r14.w;
        r14.w = (int)r13.z + (int)r13.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r22.xyzw, r14.w, l(0), t11.xyzw
      r22.x = samp0[]..swiz;
      r22.y = samp0[]..swiz;
      r22.z = samp0[]..swiz;
      r22.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xy, r14.w, l(16), t11.xyxx
      r23.x = samp0[]..swiz;
      r23.y = samp0[]..swiz;
        r22.xyz = -v6.xyz + r22.xyz;
        r23.z = r22.w;
        r22.xyz = cmp(abs(r22.xyz) < r23.zxy);
        r14.w = r22.y ? r22.x : 0;
        r14.w = r22.z ? r14.w : 0;
        if (r14.w != 0) {
          r13.z = (int)r12.w + (int)r13.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r22.xyzw, r13.z, l(0), t15.wxyz
        r22.x = samp0[]..swiz;
        r22.y = samp0[]..swiz;
        r22.z = samp0[]..swiz;
        r22.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xy, r13.z, l(96), t15.xyxx
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r13.z, l(116), t15.zwxy
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
          r25.xyz = v6.xyz + -r22.yzw;
          r14.w = (int)r24.w & 0x0000ffff;
          if (6 == 0) r15.w = 0; else if (6+25 < 32) {           r15.w = (uint)r24.w << (32-(6 + 25)); r15.w = (uint)r15.w >> (32-6);          } else r15.w = (uint)r24.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r26.xyzw, r14.w, l(0), t16.xyzw
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r14.w, l(16), t16.xyzw
        r27.x = samp0[]..swiz;
        r27.y = samp0[]..swiz;
        r27.z = samp0[]..swiz;
        r27.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r14.w, l(32), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r14.w, l(48), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r14.w, l(64), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r14.w, l(80), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
          r16.w = dot(r26.xyz, r25.xyz);
          r16.w = saturate(r16.w + r26.w);
          r17.w = dot(r27.xyz, r25.xyz);
          r17.w = saturate(r17.w + r27.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r28.xyz, r25.xyz);
          r17.w = saturate(r17.w + r28.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r29.xyz, r25.xyz);
          r17.w = saturate(r17.w + r29.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r30.xyz, r25.xyz);
          r17.w = saturate(r17.w + r30.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r31.xyz, r25.xyz);
          r17.w = saturate(r17.w + r31.w);
          r14.x = r17.w * r16.w;
          r16.w = (int)r23.x & 1;
          r23.zw = r16.ww ? r14.xy : r14.zx;
          r14.x = r23.x;
          r26.xy = r23.zw;
          r16.w = 1;
          while (true) {
            r17.w = cmp((int)r16.w >= (int)r15.w);
            if (r17.w != 0) break;
            r17.w = (int)r14.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r17.w = dot(r27.xyz, r25.xyz);
            r17.w = saturate(r17.w + r27.w);
            r17.w = r26.x * r17.w;
            r22.w = dot(r28.xyz, r25.xyz);
            r22.w = saturate(r22.w + r28.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r29.xyz, r25.xyz);
            r22.w = saturate(r22.w + r29.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r30.xyz, r25.xyz);
            r22.w = saturate(r22.w + r30.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r31.xyz, r25.xyz);
            r22.w = saturate(r22.w + r31.w);
            r17.w = r22.w * r17.w;
            r22.w = dot(r32.xyz, r25.xyz);
            r22.w = saturate(r22.w + r32.w);
            r26.x = r22.w * r17.w;
            r25.w = (uint)r14.x >> 2;
            if (1 == 0) r26.z = 0; else if (1+2 < 32) {             r26.z = (uint)r14.x << (32-(1 + 2)); r26.z = (uint)r26.z >> (32-1);            } else r26.z = (uint)r14.x >> 2;
            r26.w = (int)r25.w & 2;
            r27.x = max(r26.y, r26.x);
            r17.w = -r17.w * r22.w + 1;
            r17.w = r26.y * r17.w;
            r4.y = r26.w ? r17.w : r27.x;
            r26.xy = r26.zz ? r26.xy : r4.xy;
            r16.w = (int)r16.w + 1;
            r14.x = r25.w;
          }
          r26.y = saturate(r26.y);
          r4.y = r26.y * r23.y;
          r14.x = cmp(0 < r4.y);
          if (r14.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r13.z, l(16), t15.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r13.z, l(32), t15.yxwz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r13.z, l(48), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r13.z, l(64), t15.zwxy
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r13.z, l(80), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r13.z, l(132), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r13.z, l(148), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r13.z, l(164), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r13.z, l(180), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r13.z, l(196), t15.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xy, r13.z, l(212), t15.xyxx
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
            r21.z = r26.y * r23.y + r21.z;
            r4.y = r4.y * r24.z;
            r24.z = r32.z;
            r13.z = dot(r10.xyz, r24.xyz);
            r14.x = dot(r25.xyz, r24.xyz);
            r14.x = r14.x + -r32.w;
            r14.w = cmp(r14.x >= 0);
            r14.x = max(abs(r14.x), r7.w);
            r14.x = r14.w ? r14.x : -r14.x;
            r13.z = max(1.00000001e-07, -r13.z);
            r13.z = r14.x / r13.z;
            r13.z = min(131072, abs(r13.z));
            r32.z = r33.z;
            r14.x = dot(r10.xyz, r32.xyz);
            r14.w = dot(r25.xyz, r32.xyz);
            r14.w = r14.w + -r33.w;
            r15.w = cmp(r14.w >= 0);
            r14.w = max(abs(r14.w), r7.w);
            r14.w = r15.w ? r14.w : -r14.w;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.w / r14.x;
            r13.z = min(abs(r14.x), r13.z);
            r33.z = r34.z;
            r14.x = dot(r10.xyz, r33.xyz);
            r14.w = dot(r25.xyz, r33.xyz);
            r14.w = r14.w + -r34.w;
            r15.w = cmp(r14.w >= 0);
            r14.w = max(abs(r14.w), r7.w);
            r14.w = r15.w ? r14.w : -r14.w;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.w / r14.x;
            r13.z = min(abs(r14.x), r13.z);
            r34.z = r35.z;
            r14.x = dot(r10.xyz, r34.xyz);
            r14.w = dot(r25.xyz, r34.xyz);
            r14.w = r14.w + -r35.w;
            r15.w = cmp(r14.w >= 0);
            r14.w = max(abs(r14.w), r7.w);
            r14.w = r15.w ? r14.w : -r14.w;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.w / r14.x;
            r13.z = min(abs(r14.x), r13.z);
            r35.z = r36.x;
            r14.x = dot(r10.xyz, r35.xyz);
            r14.w = dot(r25.xyz, r35.xyz);
            r14.w = r14.w + -r36.y;
            r15.w = cmp(r14.w >= 0);
            r14.w = max(abs(r14.w), r7.w);
            r14.w = r15.w ? r14.w : -r14.w;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.w / r14.x;
            r13.z = min(abs(r14.x), r13.z);
            r37.zw = r36.zw;
            r14.x = dot(r10.zxy, r37.xzw);
            r14.w = dot(r25.zxy, r37.xzw);
            r14.w = r14.w + -r37.y;
            r15.w = cmp(r14.w >= 0);
            r14.w = max(abs(r14.w), r7.w);
            r14.w = r15.w ? r14.w : -r14.w;
            r14.x = max(1.00000001e-07, -r14.x);
            r14.x = r14.w / r14.x;
            r13.z = min(abs(r14.x), r13.z);
            r23.x = r29.w;
            r23.yz = r30.zw;
            r23.xyz = r23.xyz + r25.xyz;
            r23.xyz = r10.xyz * r13.zzz + r23.xyz;
            r14.x = dot(r23.xyz, r23.xyz);
            r14.x = sqrt(r14.x);
            r13.z = r13.z / r14.x;
            r13.z = r13.z + r13.z;
            r13.z = sqrt(r13.z);
            r13.z = r7.y * 5 + r13.z;
            r13.z = -0.844799995 + r13.z;
            r22.y = r27.z;
            r22.z = r28.x;
            r32.x = dot(r23.xyz, r22.xyz);
            r24.xy = r27.xw;
            r24.z = r28.w;
            r32.y = dot(r23.xyz, r24.xyz);
            r28.x = r27.y;
            r32.z = dot(r23.xyz, r28.xyz);
            if (9 == 0) r14.x = 0; else if (9+16 < 32) {             r14.x = (uint)r24.w << (32-(9 + 16)); r14.x = (uint)r14.x >> (32-9);            } else r14.x = (uint)r24.w >> 16;
            r32.w = (uint)r14.x;
            r23.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, r13.z).xyz;
            r27.x = dot(r25.xyz, r22.xyz);
            r27.y = dot(r25.xyz, r24.xyz);
            r27.z = dot(r25.xyz, r28.xyz);
            r25.xyz = saturate(r27.xyz * r29.xyz + float3(0.5,0.5,0.5));
            r30.z = r31.x;
            r25.xyz = r25.xyz * r30.xyz + r31.yzw;
            r32.x = dot(r1.xyz, r22.xyz);
            r32.y = dot(r1.xyz, r24.xyz);
            r32.z = dot(r1.xyz, r28.xyz);
            r22.xyz = cmp(float3(0,0,0) < r32.xyz);
            r15.z = r22.x ? 0 : 0.5;
            r24.xyz = r25.xyz + r15.xyz;
            r24.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
            r26.xzw = r32.xyz * r32.xyz;
            r26.xzw = r26.xzw * r4.yyy;
            r16.z = r22.y ? 0 : 0.5;
            r22.xyw = r25.xyz + r16.xyz;
            r22.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r22.xyw, 0).xyz;
            r22.xyw = r22.xyw * r26.zzz;
            r22.xyw = r24.xyz * r26.xxx + r22.xyw;
            r17.z = r22.z ? 0 : 0.5;
            r24.xyz = r25.xyz + r17.xyz;
            r24.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r24.xyz, 0).xyz;
            r22.xyz = r24.xyz * r26.www + r22.xyw;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r32.xyzw, 6).xyz;
            r25.xyz = r24.xyz * r22.xyz;
            r13.z = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r20.xyz = r22.xyz * r24.xyz + r20.xyz;
            r14.x = r13.z * r9.y;
            r22.xyz = r23.xyz * r4.yyy;
            r4.y = dot(r22.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r4.y = r9.y * r13.z + r4.y;
            r4.y = r14.x / r4.y;
            r23.x = r20.w;
            r23.yz = r21.xy;
            r21.xyw = r22.yzx * r4.yyy + r23.yzx;
            r20.w = r21.w;
          }
        }
      }
    }
    r18.xyzw = r20.xyzw;
    r19.yzw = r21.xyz;
    r12.w = (int)r12.w + 32;
  }
  r4.x = cmp(r19.w < 1);
  if (r4.x != 0) {
    r12.xy = float2(0,0);
    r13.w = 0;
    r14.yz = float2(0,1);
    r15.xy = float2(0,0);
    r4.x = 1;
    r16.xy = float2(0,0);
    r17.xy = float2(0,0);
    r20.x = r18.w;
    r20.yzw = r19.yzw;
    r21.xyz = r18.xyz;
    r9.w = r19.w;
    r11.w = 0;
    while (true) {
      r12.w = cmp((uint)r11.w >= (uint)r9.z);
      if (r12.w != 0) break;
      r12.z = (uint)r11.w >> 5;
      r13.xyz = (int3)r11.xyz + (int3)r12.xyz;
      r12.z = visibleProbes.Load(r13.xyzw).x;
      r12.w = cmp((int)r0.y == (int)r11.w);
      if (r0.z == 0) r13.x = 0; else if (r0.z+0 < 32) {       r13.x = (uint)r12.z << (32-(r0.z + 0)); r13.x = (uint)r13.x >> (32-r0.z);      } else r13.x = (uint)r12.z >> 0;
      r12.z = r12.w ? r13.x : r12.z;
      r12.w = (int)r11.w + numLights;
      r22.xyzw = r20.xyzw;
      r13.xyz = r21.xyz;
      r14.w = r9.w;
      r15.w = r12.z;
      while (true) {
        if (r15.w == 0) break;
        r16.w = firstbitlow((uint)r15.w);
        r17.w = 1 << (int)r16.w;
        r21.w = (int)r15.w & (int)r17.w;
        if (r21.w != 0) {
          r15.w = (int)r15.w ^ (int)r17.w;
          r17.w = (int)r12.w + (int)r16.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r17.w, l(0), t11.xyzw
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xy, r17.w, l(16), t11.xyxx
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
          r23.xyz = -v6.xyz + r23.xyz;
          r24.z = r23.w;
          r23.xyz = cmp(abs(r23.xyz) < r24.zxy);
          r17.w = r23.y ? r23.x : 0;
          r17.w = r23.z ? r17.w : 0;
          if (r17.w != 0) {
            r16.w = (int)r11.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r16.w, l(0), t15.wxyz
          r23.x = samp0[]..swiz;
          r23.y = samp0[]..swiz;
          r23.z = samp0[]..swiz;
          r23.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xy, r16.w, l(96), t15.xyxx
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r16.w, l(116), t15.zwxy
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
            r26.xyz = v6.xyz + -r23.yzw;
            r17.w = (int)r25.w & 0x0000ffff;
            if (6 == 0) r21.w = 0; else if (6+25 < 32) {             r21.w = (uint)r25.w << (32-(6 + 25)); r21.w = (uint)r21.w >> (32-6);            } else r21.w = (uint)r25.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(0), t16.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(16), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(32), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(48), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(64), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(80), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
            r23.w = dot(r27.xyz, r26.xyz);
            r23.w = saturate(r23.w + r27.w);
            r24.z = dot(r28.xyz, r26.xyz);
            r24.z = saturate(r24.z + r28.w);
            r23.w = r24.z * r23.w;
            r24.z = dot(r29.xyz, r26.xyz);
            r24.z = saturate(r24.z + r29.w);
            r23.w = r24.z * r23.w;
            r24.z = dot(r30.xyz, r26.xyz);
            r24.z = saturate(r24.z + r30.w);
            r23.w = r24.z * r23.w;
            r24.z = dot(r31.xyz, r26.xyz);
            r24.z = saturate(r24.z + r31.w);
            r23.w = r24.z * r23.w;
            r24.z = dot(r32.xyz, r26.xyz);
            r24.z = saturate(r24.z + r32.w);
            r14.x = r24.z * r23.w;
            r23.w = (int)r24.x & 1;
            r24.zw = r23.ww ? r14.xy : r14.zx;
            r14.x = r24.x;
            r27.xy = r24.zw;
            r23.w = 1;
            while (true) {
              r26.w = cmp((int)r23.w >= (int)r21.w);
              if (r26.w != 0) break;
              r26.w = (int)r17.w + (int)r23.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r26.w, l(0), t16.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r26.w, l(16), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r26.w, l(32), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r26.w, l(48), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r26.w, l(64), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r26.w, l(80), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r26.w = dot(r28.xyz, r26.xyz);
              r26.w = saturate(r26.w + r28.w);
              r26.w = r27.x * r26.w;
              r27.z = dot(r29.xyz, r26.xyz);
              r27.z = saturate(r27.z + r29.w);
              r26.w = r27.z * r26.w;
              r27.z = dot(r30.xyz, r26.xyz);
              r27.z = saturate(r27.z + r30.w);
              r26.w = r27.z * r26.w;
              r27.z = dot(r31.xyz, r26.xyz);
              r27.z = saturate(r27.z + r31.w);
              r26.w = r27.z * r26.w;
              r27.z = dot(r32.xyz, r26.xyz);
              r27.z = saturate(r27.z + r32.w);
              r26.w = r27.z * r26.w;
              r27.z = dot(r33.xyz, r26.xyz);
              r27.z = saturate(r27.z + r33.w);
              r27.x = r27.z * r26.w;
              r27.w = (uint)r14.x >> 2;
              if (1 == 0) r28.x = 0; else if (1+2 < 32) {               r28.x = (uint)r14.x << (32-(1 + 2)); r28.x = (uint)r28.x >> (32-1);              } else r28.x = (uint)r14.x >> 2;
              r28.y = (int)r27.w & 2;
              r28.z = max(r27.y, r27.x);
              r26.w = -r26.w * r27.z + 1;
              r26.w = r27.y * r26.w;
              r4.y = r28.y ? r26.w : r28.z;
              r27.xy = r28.xx ? r27.xy : r4.xy;
              r23.w = (int)r23.w + 1;
              r14.x = r27.w;
            }
            r4.y = saturate(r27.y + -r14.w);
            r14.x = r4.y * r24.y;
            r17.w = cmp(0 < r14.x);
            if (r17.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(16), t15.xyzw
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            r28.z = samp0[]..swiz;
            r28.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(32), t15.yxwz
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(48), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(64), t15.zwxy
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(80), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(132), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r16.w, l(148), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r16.w, l(164), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r16.w, l(180), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r16.w, l(196), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xy, r16.w, l(212), t15.xyxx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
              r22.w = r4.y * r24.y + r22.w;
              r4.y = r14.x * r25.z;
              r25.z = r33.z;
              r14.x = dot(r10.xyz, r25.xyz);
              r16.w = dot(r26.xyz, r25.xyz);
              r16.w = r16.w + -r33.w;
              r17.w = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.w);
              r16.w = r17.w ? r16.w : -r16.w;
              r14.x = max(1.00000001e-07, -r14.x);
              r14.x = r16.w / r14.x;
              r14.x = min(131072, abs(r14.x));
              r33.z = r34.z;
              r16.w = dot(r10.xyz, r33.xyz);
              r17.w = dot(r26.xyz, r33.xyz);
              r17.w = r17.w + -r34.w;
              r21.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.w);
              r17.w = r21.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r14.x = min(abs(r16.w), r14.x);
              r34.z = r35.z;
              r16.w = dot(r10.xyz, r34.xyz);
              r17.w = dot(r26.xyz, r34.xyz);
              r17.w = r17.w + -r35.w;
              r21.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.w);
              r17.w = r21.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r14.x = min(abs(r16.w), r14.x);
              r35.z = r36.z;
              r16.w = dot(r10.xyz, r35.xyz);
              r17.w = dot(r26.xyz, r35.xyz);
              r17.w = r17.w + -r36.w;
              r21.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.w);
              r17.w = r21.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r14.x = min(abs(r16.w), r14.x);
              r36.z = r37.x;
              r16.w = dot(r10.xyz, r36.xyz);
              r17.w = dot(r26.xyz, r36.xyz);
              r17.w = r17.w + -r37.y;
              r21.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.w);
              r17.w = r21.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r14.x = min(abs(r16.w), r14.x);
              r38.zw = r37.zw;
              r16.w = dot(r10.zxy, r38.xzw);
              r17.w = dot(r26.zxy, r38.xzw);
              r17.w = r17.w + -r38.y;
              r21.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.w);
              r17.w = r21.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r14.x = min(abs(r16.w), r14.x);
              r24.x = r30.w;
              r24.yz = r31.zw;
              r24.xyz = r24.xyz + r26.xyz;
              r24.xyz = r10.xyz * r14.xxx + r24.xyz;
              r16.w = dot(r24.xyz, r24.xyz);
              r16.w = sqrt(r16.w);
              r14.x = r14.x / r16.w;
              r14.x = r14.x + r14.x;
              r14.x = sqrt(r14.x);
              r14.x = r7.y * 5 + r14.x;
              r14.x = -0.844799995 + r14.x;
              r23.y = r28.z;
              r23.z = r29.x;
              r33.x = dot(r24.xyz, r23.xyz);
              r25.xy = r28.xw;
              r25.z = r29.w;
              r33.y = dot(r24.xyz, r25.xyz);
              r29.x = r28.y;
              r33.z = dot(r24.xyz, r29.xyz);
              if (9 == 0) r16.w = 0; else if (9+16 < 32) {               r16.w = (uint)r25.w << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);              } else r16.w = (uint)r25.w >> 16;
              r33.w = (uint)r16.w;
              r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r14.x).xyz;
              r28.x = dot(r26.xyz, r23.xyz);
              r28.y = dot(r26.xyz, r25.xyz);
              r28.z = dot(r26.xyz, r29.xyz);
              r26.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
              r31.z = r32.x;
              r26.xyz = r26.xyz * r31.xyz + r32.yzw;
              r33.x = dot(r1.xyz, r23.xyz);
              r33.y = dot(r1.xyz, r25.xyz);
              r33.z = dot(r1.xyz, r29.xyz);
              r23.xyz = cmp(float3(0,0,0) < r33.xyz);
              r15.z = r23.x ? 0 : 0.5;
              r25.xyz = r26.xyz + r15.xyz;
              r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r27.xzw = r33.xyz * r33.xyz;
              r27.xzw = r27.xzw * r4.yyy;
              r16.z = r23.y ? 0 : 0.5;
              r23.xyw = r26.xyz + r16.xyz;
              r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
              r23.xyw = r23.xyw * r27.zzz;
              r23.xyw = r25.xyz * r27.xxx + r23.xyw;
              r17.z = r23.z ? 0 : 0.5;
              r25.xyz = r26.xyz + r17.xyz;
              r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
              r23.xyz = r25.xyz * r27.www + r23.xyw;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
              r26.xyz = r25.xyz * r23.xyz;
              r14.x = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r13.xyz = r23.xyz * r25.xyz + r13.xyz;
              r15.z = r14.x * r9.y;
              r23.xyz = r24.xyz * r4.yyy;
              r4.y = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r4.y = r9.y * r14.x + r4.y;
              r4.y = r15.z / r4.y;
              r22.xyz = r23.xyz * r4.yyy + r22.xyz;
            }
          }
        }
      }
      r20.xyzw = r22.xyzw;
      r21.xyz = r13.xyz;
      r11.w = (int)r11.w + 32;
    }
    r19.xyzw = r20.zxyw;
    r18.xyz = r21.xyz;
    r19.xyzw = r19.yzxw;
  } else {
    r19.x = r18.w;
  }
  r0.y = max(1, r19.w);
  r0.y = rcp(r0.y);
  r19.w = saturate(r19.w);
  r9.yzw = r18.xyz * r0.yyy;
  r11.xyz = r19.xyz * r0.yyy;
  r0.z = cmp(r19.w < 0.99000001);
  if (r0.z != 0) {
    r0.z = 1 + -r19.w;
    r4.x = sunConstants.globalProbeExposure * r0.z;
    r12.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
    r13.x = globalProbeConstants.data[0].w * r12.x;
    r13.yz = globalProbeConstants.data[1].xy * r12.yz;
    r12.xyz = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r12.xy;
    r13.z = globalProbeConstants.data[2].x * r12.z;
    r12.xyz = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = cmp(float3(0,0,0) < r1.xyz);
    r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r13.w = 0;
    r14.xyz = r13.wwx + r12.xyz;
    r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r15.xyz = r1.xyz * r1.xyz;
    r15.xyz = r15.xyz * r4.xxx;
    r16.xyz = r13.wwy + r12.xyz;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r14.xyz = r14.xyz * r15.xxx + r16.xyz;
    r12.xyz = r13.wwz + r12.xyz;
    r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r15.zzz + r14.xyz;
    r1.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
    r12.xyz = r13.xyz * r12.xyz;
    r1.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r9.yzw = r18.xyz * r0.yyy + r12.xyz;
    r10.w = 0;
    r7.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r10.xyzw, r7.z).xyz;
    r0.y = sunConstants.globalProbeExposure * r0.z + -r1.w;
    r0.y = r5.y * r0.y + r1.w;
    r11.xyz = r7.yzw * r0.yyy + r11.xyz;
  }
  if (useSSR != 0) {
    r0.y = dot(r2.yzw, r1.xyz);
    r0.y = r0.y + r0.y;
    r7.yzw = r1.xyz * -r0.yyy + r2.yzw;
    r0.y = dot(r2.yzw, -r1.xyz);
    r0.y = r0.y + r0.y;
    r10.xyz = r1.xyz * r0.yyy + r2.yzw;
    r7.yzw = v9.xxx ? r7.yzw : r10.xyz;
    if (useLoopedSSR != 0) {
      r10.xyz = viewMatrix._m10_m11_m12 * v6.yyy;
      r10.xyz = v6.xxx * viewMatrix._m00_m01_m02 + r10.xyz;
      r10.xyz = v6.zzz * viewMatrix._m20_m21_m22 + r10.xyz;
      r12.xyz = ssrParams.zzz * r7.yzw;
      r13.xyz = viewMatrix._m10_m11_m12 * r12.yyy;
      r12.xyw = r12.xxx * viewMatrix._m00_m01_m02 + r13.xyz;
      r12.xyz = r12.zzz * viewMatrix._m20_m21_m22 + r12.xyw;
      r0.y = min(1000, ssrParams.x);
      r10.xyz = r12.xyz * float3(10,10,10) + r10.xyz;
      r0.y = r0.y / ssrParams.z;
      r13.xyz = r11.xyz;
      r14.xyz = r10.xyz;
      r0.z = 0;
      while (true) {
        r1.w = (int)r0.z;
        r1.w = cmp(r1.w >= r0.y);
        if (r1.w != 0) break;
        r14.xyz = r14.xyz + r12.xyz;
        r15.xyz = projectionMatrix._m10_m11_m13 * r14.yyy;
        r15.xyz = r14.xxx * projectionMatrix._m00_m01_m03 + r15.xyz;
        r15.xyz = r14.zzz * projectionMatrix._m20_m21_m23 + r15.xyz;
        r15.xyz = projectionMatrix._m30_m31_m33 + r15.xyz;
        r1.w = max(abs(r15.x), abs(r15.y));
        r1.w = cmp(r15.z < r1.w);
        if (r1.w != 0) {
          break;
        }
        r4.xy = r15.xy / r15.zz;
        r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r1.w = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r4.xy, 1).x;
        r4.x = cmp(abs(r1.w) < r14.z);
        r4.y = cmp(abs(r1.w) >= v0.w);
        r4.x = r4.y ? r4.x : 0;
        if (r4.x != 0) {
          r1.w = r14.z + -abs(r1.w);
          r1.w = ssrParams.w * r1.w;
          r15.xyz = -r1.www * r12.xyz + r14.xyz;
          r16.xyz = projectionMatrix._m10_m11_m13 * r15.yyy;
          r15.xyw = r15.xxx * projectionMatrix._m00_m01_m03 + r16.xyz;
          r15.xyz = r15.zzz * projectionMatrix._m20_m21_m23 + r15.xyw;
          r15.xyz = projectionMatrix._m30_m31_m33 + r15.xyz;
          r4.xy = r15.xy / r15.zz;
          r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r15.xyz = iResolveScene.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
          r15.xyz = relHDRExposure.xxx * r15.xyz;
          r13.xyz = r15.xyz;
          break;
        }
        r0.z = (int)r0.z + 1;
      }
      r11.xyz = r13.xyz;
    } else {
      r0.y = ssrParams.y * r3.y;
      r7.yzw = r7.yzw * r0.yyy + v6.xyz;
      r10.xyz = viewProjectionMatrix._m10_m11_m13 * r7.zzz;
      r10.xyz = r7.yyy * viewProjectionMatrix._m00_m01_m03 + r10.xyz;
      r7.yzw = r7.www * viewProjectionMatrix._m20_m21_m23 + r10.xyz;
      r7.yzw = viewProjectionMatrix._m30_m31_m33 + r7.yzw;
      r0.yz = r7.yz / r7.ww;
      r1.w = max(abs(r0.y), abs(r0.z));
      r0.yz = r0.yz * float2(0.5,-0.5) + float2(0.5,0.5);
      r4.x = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r0.yz, 0).x;
      r4.x = cmp(abs(r4.x) >= v0.w);
      r1.w = cmp(r1.w < 1);
      r1.w = r1.w ? r4.x : 0;
      r7.yzw = iResolveScene.Sample(bilinearClamp_s, r0.yz).xyz;
      if (r1.w != 0) {
        r11.xyz = relHDRExposure.xxx * r7.yzw;
      }
    }
  }
  r0.y = dot(r1.xyz, sunConstants.wldDir.xyz);
  r0.z = saturate(r0.y);
  r1.w = cmp(0 >= r0.z);
  if (r1.w != 0) {
    r4.x = 0;
  }
  if (r1.w == 0) {
    r7.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r7.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r7.yzw;
    r7.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r7.yzw;
    r7.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r7.yzw;
    r1.w = -sunConstants.splitDepthOffset + r7.w;
    r1.w = -r1.w * 6.10351563e-05 + 1;
    r4.y = saturate(r1.w);
    r4.y = cmp(r1.w == r4.y);
    if (r4.y != 0) {
      r4.y = 0;
      r5.y = 0;
      while (true) {
        r10.x = cmp(r4.y >= 3);
        if (r10.x != 0) break;
        r10.x = (uint)r4.y;
        r10.yz = -sunConstants.splitPinTransform[r10.x].xy + r7.yz;
        r10.y = max(abs(r10.y), abs(r10.z));
        r5.y = sunConstants.splitPinTransform[r10.x].z * r10.y;
        r10.x = cmp(r5.y < 1);
        if (r10.x != 0) {
          break;
        }
        r4.y = 1 + r4.y;
        r5.y = 0;
      }
    } else {
      r4.y = 3;
      r5.y = 0;
    }
    r10.x = cmp(r4.y >= 3);
    if (r10.x != 0) {
      r10.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r12.xz = rcp(r10.yy);
      r12.y = -r12.z;
      r10.yzw = r7.yzy * r12.xyz + r10.zwz;
      r12.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r10.yzw = max(float3(0,0,0), r10.yzw);
      r10.yzw = min(r10.yzw, r12.xyz);
      r12.xy = sunConstants.sstLightingConstants.coordScale * r10.wz;
      r12.xy = floor(r12.xy);
      r11.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r12.y;
      r11.w = r11.w * sunConstants.sstLightingConstants.coordScale + r12.x;
      r11.w = (uint)r11.w;
      r11.w = (int)r11.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.x, r11.w, l(0), t23.xxxx
    r12.x = samp0[]..swiz;
      r12.y = (int)r12.x & 0x40000000;
      r12.z = (uint)r12.x << 2;
      if (r12.y == 0) {
        r12.y = (int)r12.x & 0x01ffffff;
        r13.x = (int)r11.w + (int)r12.y;
        r11.w = (uint)r12.x >> 25;
        r11.w = (uint)r11.w;
        r10.yzw = r11.www * r10.yzw;
        r10.yzw = frac(r10.yzw);
        r10.yzw = float3(128,128,128) * r10.yzw;
        r10.yzw = (uint3)r10.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.x, l(0), t23.xxxx
      r13.z = samp0[]..swiz;
        r12.xy = (uint2)r10.wz >> int2(6,6);
        r11.w = (int)r13.z & 0xc0000000;
        r12.w = (int)r13.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.y = r12.y ? r13.z : r12.w;
        r12.w = (uint)r12.y >> 13;
        r12.x = r12.x ? r12.w : r12.y;
        r12.x = (int)r12.x & 8191;
        r14.x = (int)r12.x + (int)r13.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
      r14.z = samp0[]..swiz;
        r13.y = 0;
        r14.y = 1;
        r12.xyw = r11.www ? r13.xyz : r14.xyz;
        r14.yz = r11.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r15.xy = (uint2)r10.wz >> (uint2)r14.yy;
        r15.xy = (int2)r15.xy & int2(1,1);
        r13.w = (int)r12.w & 0xc0000000;
        r14.y = (int)r12.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t23.xxxx
      r14.y = samp0[]..swiz;
        r14.y = r15.y ? r12.w : r14.y;
        r15.y = (uint)r14.y >> 13;
        r14.y = r15.x ? r15.y : r14.y;
        r14.y = (int)r14.y & 8191;
        r14.x = (int)r12.x + (int)r14.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r12.xyw = r13.www ? r12.xyw : r14.xzw;
        r12.xyw = r11.www ? r13.xyz : r12.xyw;
        r11.w = (int)r12.w & 0xc0000000;
        if (r11.w == 0) {
          r11.w = (int)-r12.y + 6;
          r13.xy = (uint2)r10.wz >> (uint2)r11.ww;
          r11.w = (int)r12.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.y = (((uint)r13.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.x = (((uint)r13.x << 0) & bitmask.x) | ((uint)r13.y & ~bitmask.x);
          r13.x = (int)r13.x * 10;
          r11.w = (uint)r11.w >> (uint)r13.x;
          r11.w = (int)r11.w & 1023;
          r13.x = (int)r11.w + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.x, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          r13.yz = (int2)r12.yy + int2(1,2);
          r11.w = (int)-r13.y + 6;
          r14.xy = (uint2)r10.wz >> (uint2)r11.ww;
          r11.w = (int)r13.w & 0xc0000000;
          r12.y = (int)r13.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.y = (((uint)r14.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.x = (((uint)r14.x << 0) & bitmask.x) | ((uint)r14.y & ~bitmask.x);
          r14.x = (int)r14.x * 10;
          r12.y = (uint)r12.y >> (uint)r14.x;
          r12.y = (int)r12.y & 1023;
          r14.x = (int)r12.y + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r14.y = r13.z;
          r14.xyz = r11.www ? r13.xyw : r14.xyz;
          r12.y = (int)-r14.y + 6;
          r13.yz = (uint2)r10.wz >> (uint2)r12.yy;
          r12.y = (int)r14.z & 0xc0000000;
          r14.y = (int)r14.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.z = (((uint)r13.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.y = (((uint)r13.y << 0) & bitmask.y) | ((uint)r13.z & ~bitmask.y);
          r13.y = (int)r13.y * 10;
          r13.y = (uint)r14.y >> (uint)r13.y;
          r13.y = (int)r13.y & 1023;
          r15.x = (int)r13.y + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.y, r15.x, l(0), t23.xxxx
        r15.y = samp0[]..swiz;
          r13.yz = r12.yy ? r14.xz : r15.xy;
          r12.xw = r11.ww ? r13.xw : r13.yz;
        }
        r11.w = (int)r12.w & 0xc0000000;
        if (r11.w == 0) {
          if (14 == 0) r12.y = 0; else if (14+15 < 32) {           r12.y = (uint)r12.w << (32-(14 + 15)); r12.y = (uint)r12.y >> (32-14);          } else r12.y = (uint)r12.w >> 15;
          r12.y = (uint)r12.y;
          r12.y = sunConstants.sstLightingConstants.constants.spanInInches * r12.y;
          r12.y = 6.10388815e-05 * r12.y;
          r13.xy = (int2)r12.ww & int2(32767,536870912);
          r13.x = (uint)r13.x;
          r13.x = sunConstants.sstLightingConstants.constants.spanInInches * r13.x;
          r13.x = 3.05185094e-05 * r13.x;
          r13.z = (int)r10.z & 3;
          r13.z = (int)r12.x + (int)r13.z;
          r13.z = (int)r13.z + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.z, r13.z, l(0), t23.xxxx
        r13.z = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r14.x = (((uint)r10.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r14.y = (((uint)r10.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r14.z = (((uint)r10.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r10.y = (uint)r13.z >> (uint)r14.x;
          r10.y = (int)r10.y & 255;
          r10.y = (uint)r10.y;
          r10.y = r10.y * r13.x;
          r10.y = r10.y * 0.00392156886 + r12.y;
          r10.z = (int)r14.y + 1;
          if (1 == 0) r10.w = 0; else if (1+1 < 32) {           r10.w = (uint)r10.w << (32-(1 + 1)); r10.w = (uint)r10.w >> (32-1);          } else r10.w = (uint)r10.w >> 1;
          r10.z = (int)r10.w + (int)r10.z;
          r10.z = (int)r10.z + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.z, r10.z, l(0), t23.xxxx
        r10.z = samp0[]..swiz;
          r10.z = (uint)r10.z >> (uint)r14.z;
          r10.z = (int)r10.z & 0x0000ffff;
          r10.z = (uint)r10.z;
          r10.z = r10.z * r13.x;
          r10.z = r10.z * 1.52590219e-05 + r12.y;
          r12.z = r13.y ? r10.y : r10.z;
        } else {
          r10.y = (int)r12.w & 0x80000000;
          r10.z = (int)r12.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.z, r10.z, l(0), t23.xxxx
        r10.z = samp0[]..swiz;
          r10.y = r10.y ? r10.z : 0;
          r10.z = (uint)r12.w << 2;
          r10.w = (uint)r10.y >> 16;
          r10.y = (int)r10.y & 0x0000ffff;
          r10.yw = f16tof32(r10.yw);
          r10.z = r7.y * r10.w + r10.z;
          r10.y = r7.z * r10.y + r10.z;
          r12.z = r11.w ? r10.y : r12.z;
        }
      }
      r7.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r7.w;
      r7.w = cmp(r12.z < r7.w);
      r4.x = r7.w ? 0 : 1;
    }
    if (r10.x == 0) {
      if (enableDitheredShadow == 0) {
        r7.w = (uint)r4.y;
        r10.xy = -sunConstants.splitPinTransform[r7.w].xy + r7.yz;
        r10.xy = sunConstants.splitPinTransform[r7.w].zz * r10.xy;
        r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.w = (int16)sunConstants.splitArrayOffset;
        r10.z = r7.w + r4.y;
        r7.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r10.xyz, r1.w).x;
        r10.x = gTransShadowmapArray.SampleLevel(samp0_s, r10.xyz, 0).x;
        r7.w = r10.x + r7.w;
        r7.w = saturate(-1 + r7.w);
        r10.x = r7.w * r7.w;
        r4.x = r10.x * r7.w;
      }
      if (enableDitheredShadow != 0) {
        r10.x = -r7.x;
        r7.w = (uint)r4.y;
        r4.y = 1 + r4.y;
        r4.y = min(2, r4.y);
        r4.y = (uint)r4.y;
        r5.y = 1 + -r5.y;
        r5.y = 28 * r5.y;
        r5.y = (uint)r5.y;
        r12.xy = -sunConstants.splitPinTransform[r7.w].xy + r7.yz;
        r12.xy = sunConstants.splitPinTransform[r7.w].zz * r12.xy;
        r12.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.yz = -sunConstants.splitPinTransform[r4.y].xy + r7.yz;
        r7.yz = sunConstants.splitPinTransform[r4.y].zz * r7.yz;
        r7.yz = r7.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.y = r9.x;
        r10.z = r7.x;
        r10.w = 0;
        r11.w = 0;
        while (true) {
          r12.z = cmp((uint)r11.w >= 8);
          if (r12.z != 0) break;
          r12.z = cmp((uint)r5.y < (uint)r11.w);
          r13.xy = r12.zz ? r7.yz : r12.xy;
          r12.w = r12.z ? sunConstants.splitPinTransform[r4.y].w : sunConstants.splitPinTransform[r7.w].w;
          r12.z = r12.z ? r4.y : r7.w;
          r14.x = dot(icb[r11.w+0].yx, r10.xy);
          r14.y = dot(icb[r11.w+0].yx, r10.yz);
          r13.xy = r14.xy * r12.ww + r13.xy;
          r12.z = (int)r12.z + (int16)sunConstants.splitArrayOffset;
          r13.z = (uint)r12.z;
          r12.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r1.w).x;
          r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r13.xyz, 0).x;
          r12.z = r12.z + r12.w;
          r12.z = saturate(-1 + r12.z);
          r10.w = r12.z * 0.125 + r10.w;
          r11.w = (int)r11.w + 1;
        }
        r1.w = r10.w * r10.w;
        r4.x = r1.w * r10.w;
      }
    }
  }
  r1.w = viewmodelSunShadowRaw & 0x0000ffff;
  r4.y = cmp(0 < (uint)r1.w);
  r5.y = cmp(0 < r4.x);
  r4.y = r4.y ? r5.y : 0;
  if (r4.y != 0) {
    r1.w = (int)r1.w + numLights;
    r1.w = (int)r1.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r4.y, r1.w, l(52), t12.xxxx
  r4.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xyzw, r1.w, l(68), t12.xyzw
  r10.x = samp0[]..swiz;
  r10.y = samp0[]..swiz;
  r10.z = samp0[]..swiz;
  r10.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r1.w, l(84), t12.xyzw
  r12.x = samp0[]..swiz;
  r12.y = samp0[]..swiz;
  r12.z = samp0[]..swiz;
  r12.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r1.w, l(100), t12.xyzw
  r13.x = samp0[]..swiz;
  r13.y = samp0[]..swiz;
  r13.z = samp0[]..swiz;
  r13.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r1.w, l(116), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r1.w, l(132), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r1.w, l(148), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
    r0.y = abs(r0.y) * -0.200000003 + 0.400000006;
    r17.xyz = r1.xyz * r0.yyy + v6.xyz;
    r17.w = 1;
    r10.x = dot(r10.xyzw, r17.xyzw);
    r10.y = dot(r12.xyzw, r17.xyzw);
    r0.y = dot(r13.xyzw, r17.xyzw);
    r5.y = dot(r14.xyzw, r17.xyzw);
    r7.y = cmp(r5.y < r0.y);
    r7.zw = r10.xy / r5.yy;
    r7.zw = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r7.zw = r7.zw + r16.zw;
    r7.zw = r7.zw * r16.xy;
    r10.xy = r4.yy / r15.xz;
    r10.zw = float2(1,1) + -r10.xy;
    r10.zw = cmp(r7.zw >= r10.zw);
    r10.xy = cmp(r10.xy >= r7.zw);
    r10.xy = (int2)r10.xy | (int2)r10.zw;
    r10.x = (int)r10.y | (int)r10.x;
    r7.y = (int)r7.y | (int)r10.x;
    if (r7.y == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.y, r1.w, l(28), t12.xxxx
    r7.y = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.xy, r1.w, l(164), t12.xyxx
    r10.x = samp0[]..swiz;
    r10.y = samp0[]..swiz;
      r7.zw = saturate(r7.zw);
      r12.xy = r7.zw * r15.xz + r15.yw;
      r1.w = r10.y * r5.y;
      r0.y = r10.x * r5.y + r0.y;
      r0.y = r0.y / r1.w;
      r0.y = max(6.10351563e-05, r0.y);
      r1.w = r7.y ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r10.x = -r7.x;
        r13.z = (uint)r1.w;
        r10.y = r9.x;
        r10.z = r7.x;
        r5.y = 0;
        r7.x = 0;
        while (true) {
          r7.y = cmp((int)r7.x >= 8);
          if (r7.y != 0) break;
          r14.x = dot(icb[r7.x+0].yx, r10.xy);
          r14.y = dot(icb[r7.x+0].yx, r10.yz);
          r13.xy = r14.xy * r4.yy + r12.xy;
          r7.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r0.y).x;
          r5.y = r7.y * 0.125 + r5.y;
          r7.x = (int)r7.x + 1;
        }
      } else {
        r12.z = (uint)r1.w;
        r5.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r0.y).x;
      }
      r0.y = r5.y * r5.y;
      r0.y = r0.y * r5.y;
    } else {
      r0.y = 1;
    }
    r4.x = r4.x * r0.y;
  }
  r0.y = cmp(0 < r0.z);
  r1.w = cmp(0 < r4.x);
  if (r1.w != 0) {
    if (sunConstants.sunCookieIndex != 0) {
      r7.xyz = eyeOffset.xyz + v6.xyz;
      r7.w = 1;
      r1.w = dot(sunConstants.sunCookieTransform[0].xyzw, r7.xyzw);
      r4.y = dot(sunConstants.sunCookieTransform[1].xyzw, r7.xyzw);
      r7.x = frac(r1.w);
      r7.y = frac(r4.y);
      r1.w = -1 + (int14)sunConstants.sunCookieIndex;
      r7.z = (uint)r1.w;
      r7.xyz = gCookieArray.SampleLevel(samplerLinear_s, r7.xyz, 0).xyz;
      r7.xyz = float3(-1,-1,-1) + r7.xyz;
      r7.xyz = sunConstants.sunCookieIntensity * r7.xyz + float3(1,1,1);
      r7.xyz = sunConstants.color.xyz * r7.xyz;
    } else {
      r7.xyz = sunConstants.color.xyz;
    }
    r7.xyz = r7.xyz * r4.xxx;
    r1.w = r6.w + r0.z;
    r1.w = r0.z / r1.w;
    r10.xyz = r7.xyz * r1.www + r9.yzw;
    r12.xyz = -v6.xyz * r5.zzz + sunConstants.wldDir.xyz;
    r1.w = dot(r12.xyz, r12.xyz);
    r1.w = rsqrt(r1.w);
    r12.xyz = r12.xyz * r1.www;
    r1.z = saturate(dot(r1.xyz, r12.xyz));
    r1.w = saturate(dot(r12.xyz, r6.xyz));
    r4.x = r1.z * r1.z;
    r4.xy = r4.xx * specularLobeRoughnessControl.xz + float2(1,1);
    r4.xy = r4.xy * r4.xy;
    r4.xy = specularLobeRoughnessControl.yw / r4.xy;
    r4.xy = r4.xy * r1.zz;
    r1.z = 4 * r1.w;
    r1.zw = r4.xy / r1.zz;
    r1.zw = lobeWeightingThicknessRefraction.xy * r1.zw;
    r6.xyz = r7.xyz * r1.zzz;
    r6.xyz = r6.xyz * r0.zzz + r11.xyz;
    r7.xyz = r7.xyz * r1.www;
    r6.xyz = r7.xyz * r0.zzz + r6.xyz;
  } else {
    r10.xyz = r9.yzw;
    r6.xyz = r11.xyz;
  }
  r7.xyz = r0.yyy ? r10.xyz : r9.yzw;
  r6.xyz = r0.yyy ? r6.xyz : r11.xyz;
  r9.xyzw = colorMap.Sample(colorSampler_s, r4.zw).xyzw;
  r0.y = 1 + r3.y;
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
    r10.xy = (int2)v0.xy;
    r10.zw = float2(0,0);
    r1.xyz = iResolveScene.Load(r10.xyz).xyz;
  }
  r0.xyz = relHDRExposure.xxx * r1.xyz;
  r1.w = r3.y * 2 + 1;
  r1.w = log2(r1.w);
  r4.x = 0.0833333358 * r1.w;
  r4.y = 0;
  r10.xyzw = rColorRamp.Sample(bilinearClamp_s, r4.xy).xyzw;
  r4.xyw = r10.xyz * r0.xyz;
  r1.w = r10.w * r9.w;
  r9.xyz = r9.xyz * r7.xyz + -r4.xyw;
  r4.xyw = r1.www * r9.xyz + r4.xyw;
  r1.xyz = -r1.xyz * relHDRExposure.xxx + r4.xyw;
  r0.xyz = r5.xxx * r1.xyz + r0.xyz;
  r1.xyz = r3.xzw * r7.xyz + -r0.xyz;
  r0.xyz = r8.www * r1.xyz + r0.xyz;
  r1.xyz = r6.xyz * r0.www + r8.xyz;
  r0.w = 1 + -r4.z;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = r0.w * 0.980000019 + 0.0199999996;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  r1.xyz = foamColor.xyz * r7.xyz + -r0.xyz;
  r1.xyz = r5.www * r1.xyz + r0.xyz;
  r0.xyz = useFoam ? r1.xyz : r0.xyz;
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = sqrt(r2.x);
    r1.x = cmp(0 < fogConstants.blendAmount);
    if (r1.x != 0) {
      r1.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.xy = fogConstants.atmospherefogdensityatcamera.xy * r1.xy;
      r1.z = cmp(0.00999999978 < abs(v6.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
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
      r3.x = cmp(0.00999999978 < abs(v6.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v6.z;
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
    r0.w = fogConstants.heightFalloff * v6.z;
    r1.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
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