// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:42 2021

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
SamplerState normalSampler_s : register(s1);
SamplerState samplerLinear_s : register(s2);
SamplerState flowSampler_s : register(s3);
SamplerState samplerLinearClamp_s : register(s4);
SamplerState noiseSampler_s : register(s5);
SamplerState foamSampler_s : register(s6);
SamplerState decalSampler_s : register(s7);
SamplerState bilinearClamp_s : register(s8);
SamplerState pointClamp_s : register(s9);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> normalMap : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
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
Texture2D<float4> flowMap : register(t21);
Texture2D<float4> noiseMap : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> foamBase : register(t24);
Texture2D<float4> decalMap : register(t25);
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46;
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
  decalMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r6.xy = fDest.xy;
  r6.xy = r6.xy * r1.xy;
  r6.zw = ddx_coarse(r6.xy);
  r6.xy = ddy_coarse(r6.xy);
  r6.z = dot(r6.zw, r6.zw);
  r6.x = dot(r6.xy, r6.xy);
  r6.x = max(r6.z, r6.x);
  r6.x = log2(r6.x);
  r6.x = 0.5 * r6.x;
  if (useSpecularZFeather != 0) {
    r6.yz = flowMap.Sample(flowSampler_s, w1.xy).xy;
    r7.xy = r6.yz + r6.yz;
    r7.zw = r7.xy * float2(-1,1) + float2(1,-1);
    r6.yz = r7.xw * float2(-1,1) + float2(1,0);
    r6.y = dot(r7.zw, r6.yz);
    r6.y = sqrt(r6.y);
    r6.y = r6.y * normalsFlowScaleMin.y + normalsFlowScaleMin.x;
    r6.yz = normalAdjustAndGloss.xy * r6.yy;
  } else {
    r6.yz = normalAdjustAndGloss.xy;
  }
  r2.xy = -r2.zw * r2.xy + float2(1,1);
  r2.xy = r2.xy * r2.xy;
  r2.xy = r4.xy * r4.xy + r2.xy;
  r2.xy = rsqrt(r2.xy);
  if (useOrientedNormalMap == 0) {
    r2.z = gameTime.w * flowParams.y;
    r7.xy = r4.zw * float2(-1,1) + float2(1,-1);
    r7.xy = r7.xy * r2.zz + r1.xy;
    r7.xy = normalMap.SampleLevel(normalSampler_s, r7.xy, r3.y).xy;
    r7.zw = r5.xy * float2(-1,1) + float2(1,-1);
    r7.zw = r7.zw * r2.zz + r1.xy;
    r7.zw = normalMap.SampleLevel(normalSampler_s, r7.zw, r3.y).xy;
    r7.zw = r7.zw + -r7.xy;
    r7.xy = r4.xx * r7.zw + r7.xy;
    r7.zw = r5.zw * float2(-1,1) + float2(1,-1);
    r7.zw = r7.zw * r2.zz + r1.xy;
    r7.zw = normalMap.SampleLevel(normalSampler_s, r7.zw, r3.y).xy;
    r9.xy = r1.zw * float2(-1,1) + float2(1,-1);
    r2.zw = r9.xy * r2.zz + r1.xy;
    r2.zw = normalMap.SampleLevel(normalSampler_s, r2.zw, r3.y).xy;
    r2.zw = r2.zw + -r7.zw;
    r2.zw = r4.xx * r2.zw + r7.zw;
    r2.zw = r2.zw + -r7.xy;
    r2.zw = r4.yy * r2.zw + r7.xy;
    r2.zw = r2.zw * r6.yy + r6.zz;
  } else {
    r7.xy = r4.zw * float2(-1,1) + float2(1,-1);
    r6.w = dot(r7.xy, r7.xy);
    r6.w = sqrt(r6.w);
    r6.w = max(9.99999975e-06, r6.w);
    r7.xy = r7.xy / r6.ww;
    r7.z = -r7.x;
    r9.x = dot(w1.xy, r7.yz);
    r9.y = dot(w1.xy, -r7.xy);
    r9.xy = normalMapScale.xy * r9.xy;
    r6.w = gameTime.w * r6.w;
    r9.z = -r6.w * flowParams.y + r9.y;
    r9.xy = normalMap.SampleLevel(normalSampler_s, r9.xz, r3.y).xy;
    r9.xy = r9.xy * r6.yy + r6.zz;
    r10.x = dot(r9.xy, r7.yz);
    r10.y = dot(r9.xy, -r7.xy);
    r7.xy = r5.xy * float2(-1,1) + float2(1,-1);
    r6.w = dot(r7.xy, r7.xy);
    r6.w = sqrt(r6.w);
    r6.w = max(9.99999975e-06, r6.w);
    r7.xy = r7.xy / r6.ww;
    r7.z = -r7.x;
    r9.x = dot(w1.xy, r7.yz);
    r9.y = dot(w1.xy, -r7.xy);
    r9.xy = normalMapScale.xy * r9.xy;
    r6.w = gameTime.w * r6.w;
    r9.z = -r6.w * flowParams.y + r9.y;
    r9.xy = normalMap.SampleLevel(normalSampler_s, r9.xz, r3.y).xy;
    r9.xy = r9.xy * r6.yy + r6.zz;
    r11.x = dot(r9.xy, r7.yz);
    r11.y = dot(r9.xy, -r7.xy);
    r7.xy = r11.xy + -r10.xy;
    r7.xy = r4.xx * r7.xy + r10.xy;
    r7.zw = r5.zw * float2(-1,1) + float2(1,-1);
    r6.w = dot(r7.zw, r7.zw);
    r6.w = sqrt(r6.w);
    r6.w = max(9.99999975e-06, r6.w);
    r9.xy = r7.zw / r6.ww;
    r9.z = -r9.x;
    r10.x = dot(w1.xy, r9.yz);
    r10.y = dot(w1.xy, -r9.xy);
    r10.xy = normalMapScale.xy * r10.xy;
    r6.w = gameTime.w * r6.w;
    r10.z = -r6.w * flowParams.y + r10.y;
    r7.zw = normalMap.SampleLevel(normalSampler_s, r10.xz, r3.y).xy;
    r7.zw = r7.zw * r6.yy + r6.zz;
    r10.x = dot(r7.zw, r9.yz);
    r10.y = dot(r7.zw, -r9.xy);
    r7.zw = r1.zw * float2(-1,1) + float2(1,-1);
    r6.w = dot(r7.zw, r7.zw);
    r6.w = sqrt(r6.w);
    r6.w = max(9.99999975e-06, r6.w);
    r9.xy = r7.zw / r6.ww;
    r9.z = -r9.x;
    r11.x = dot(w1.xy, r9.yz);
    r11.y = dot(w1.xy, -r9.xy);
    r11.xy = normalMapScale.xy * r11.xy;
    r6.w = gameTime.w * r6.w;
    r11.z = -r6.w * flowParams.y + r11.y;
    r7.zw = normalMap.SampleLevel(normalSampler_s, r11.xz, r3.y).xy;
    r6.yz = r7.zw * r6.yy + r6.zz;
    r11.x = dot(r6.yz, r9.yz);
    r11.y = dot(r6.yz, -r9.xy);
    r6.yz = r11.xy + -r10.xy;
    r6.yz = r4.xx * r6.yz + r10.xy;
    r6.yz = r6.yz + -r7.xy;
    r2.zw = r4.yy * r6.yz + r7.xy;
  }
  r2.x = r2.x * r2.y;
  r2.xy = r2.zw * r2.xx;
  r2.yzw = v5.xyz * r2.yyy;
  r2.xyz = v4.xyz * r2.xxx + r2.yzw;
  r2.xyz = v3.xyz + r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = v9.xxx ? r2.xyz : -r2.xyz;
  r3.y = dot(v6.xyz, v6.xyz);
  r6.y = rsqrt(r3.y);
  r6.yzw = v6.xyz * r6.yyy;
  r7.x = saturate(dot(r2.xyz, -r6.yzw));
  if (v9.x != 0) {
    r9.xy = (int2)v0.xy;
    r9.zw = float2(0,0);
    r7.y = ifloatZScene.Load(r9.xyz).x;
    r7.z = cmp(r7.y >= 0.984375);
    r7.w = 1.01587307 * r7.y;
    r7.y = r7.y * 64 + -63;
    r7.y = r7.z ? r7.y : r7.w;
    r7.y = max(9.99999994e-09, r7.y);
    r7.y = rcp(r7.y);
    r7.y = -v0.w + r7.y;
    r7.y = max(0, r7.y);
    r7.y = min(ssrParams.x, r7.y);
    r7.z = opacityScale.y;
  } else {
    r7.y = sqrt(r3.y);
    r7.z = opacityScale.x;
  }
  if (useFoam != 0) {
    r7.w = foamBase.Sample(foamSampler_s, v7.xy).x;
    r9.x = foamBase.Sample(foamSampler_s, v7.zw).x;
    r9.y = foamBase.Sample(foamSampler_s, v8.xy).x;
    r9.z = foamBase.Sample(foamSampler_s, v8.zw).x;
    r7.w = r9.x + r7.w;
    r7.w = r7.w + r9.y;
    r7.w = r7.w + r9.z;
    r7.w = foamColorScale * r7.w;
    r9.x = flowMap.Sample(flowSampler_s, w1.xy).z;
    r9.x = foamSpacing.y * r9.x + foamSpacing.x;
    r7.w = max(0, r7.w);
    r7.w = log2(r7.w);
    r7.w = r9.x * r7.w;
    r7.w = exp2(r7.w);
    r9.x = foamZFeather * r7.y;
    r9.x = min(1, r9.x);
    r9.y = r9.x * r7.w;
    r7.w = -r7.w * r9.x + 1;
    r7.w = normalAdjustAndGloss.z * r7.w;
  } else {
    r9.y = 0;
    r7.w = normalAdjustAndGloss.z;
  }
  r9.x = cmp(useSpecularZFeather != 0);
  r9.z = dot(-v6.xyz, -v6.xyz);
  r9.z = rsqrt(r9.z);
  r10.xyz = -v6.xyz * r9.zzz;
  r11.xy = (uint2)r0.zy;
  r9.w = dot(r11.yx, float2(0.0671105608,0.00583714992));
  r9.w = frac(r9.w);
  r9.w = 52.9829178 * r9.w;
  r9.w = frac(r9.w);
  r9.w = r9.w * 6.28318548 + gameTick.w;
  sincos(r9.w, r12.x, r13.x);
  r9.w = dot(r11.xy, float2(0.0671105608,0.00583714992));
  r9.w = frac(r9.w);
  r9.w = 52.9829178 * r9.w;
  r9.w = frac(r9.w);
  r9.w = r9.w * 6.28318548 + gameTick.w;
  sincos(r9.w, r11.x, r14.x);
  r9.w = saturate(dot(r2.xyz, r10.xyz));
  r10.w = dot(-r10.xyz, r2.xyz);
  r10.w = r10.w + r10.w;
  r15.xyz = r2.xyz * -r10.www + -r10.xyz;
  r10.w = 1 + -r7.w;
  r11.y = 5 * r10.w;
  r11.z = r10.w * 5 + -2.5;
  r11.z = saturate(0.400000006 * r11.z);
  r11.z = 100 * r11.z;
  r12.zw = -r10.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r11.w = exp2(r12.z);
  r11.w = r11.w * r9.w;
  r11.w = 9.1368103 * r11.w;
  r12.z = r11.y * r10.w;
  r12.z = -r12.z * 2.0159049 + r12.w;
  r12.z = exp2(r12.z);
  r12.z = r12.z * r9.w;
  r12.z = 9.70808983 * r12.z;
  r11.w = max(r12.z, r11.w);
  r11.w = max(1.26815999, r11.w);
  r12.z = 0.0078125 * r0.x;
  r12.z = min(15, r12.z);
  r12.z = (uint)r12.z;
  r16.xy = (uint2)r0.yz >> int2(6,6);
  r16.z = (uint)r12.z << 4;
  r17.xy = float2(0,0);
  r18.w = 0;
  r19.yz = float2(0,1);
  r20.xy = float2(0,0);
  r21.xy = float2(0,0);
  r22.xy = float2(0,0);
  r23.xw = float2(1,0);
  r24.xyzw = float4(0,0,0,0);
  r25.yzw = float3(0,0,0);
  r26.w = 0;
  r0.yz = float2(0,0);
  while (true) {
    r12.z = cmp((uint)r0.z >= numRefProbes);
    if (r12.z != 0) break;
    r17.z = (uint)r0.z >> 5;
    r18.xyz = (int3)r16.xyz + (int3)r17.xyz;
    r12.z = visibleProbes.Load(r18.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r0.z, l(0), t15.wxyz
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r0.z, l(16), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r0.z, l(32), t15.yxwz
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r0.z, l(48), t15.xyzw
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r0.z, l(64), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r0.z, l(80), t15.xyzw
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.yz, r0.z, l(96), t15.xxyx
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r0.z, l(116), t15.xyzw
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r0.z, l(132), t15.zwxy
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r0.z, l(148), t15.zwxy
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
  r35.z = samp0[]..swiz;
  r35.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r0.z, l(164), t15.zwxy
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r0.z, l(180), t15.zwxy
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r0.z, l(196), t15.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r0.z, l(212), t15.xyxx
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
    r18.xyz = v6.xyz + -r27.yzw;
    r12.w = dot(r18.xyz, r18.xyz);
    r12.w = sqrt(r12.w);
    r12.w = cmp(probeDebugRadius >= r12.w);
    r13.w = (int)r33.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(0), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r13.w, l(16), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r42.xyzw, r13.w, l(32), t16.xyzw
  r42.x = samp0[]..swiz;
  r42.y = samp0[]..swiz;
  r42.z = samp0[]..swiz;
  r42.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r43.xyzw, r13.w, l(48), t16.xyzw
  r43.x = samp0[]..swiz;
  r43.y = samp0[]..swiz;
  r43.z = samp0[]..swiz;
  r43.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r44.xyzw, r13.w, l(64), t16.xyzw
  r44.x = samp0[]..swiz;
  r44.y = samp0[]..swiz;
  r44.z = samp0[]..swiz;
  r44.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r45.xyzw, r13.w, l(80), t16.xyzw
  r45.x = samp0[]..swiz;
  r45.y = samp0[]..swiz;
  r45.z = samp0[]..swiz;
  r45.w = samp0[]..swiz;
    r14.w = dot(r40.xyz, r18.xyz);
    r14.w = saturate(r14.w + r40.w);
    r16.w = dot(r41.xyz, r18.xyz);
    r16.w = saturate(r16.w + r41.w);
    r14.w = r16.w * r14.w;
    r16.w = dot(r42.xyz, r18.xyz);
    r16.w = saturate(r16.w + r42.w);
    r14.w = r16.w * r14.w;
    r16.w = dot(r43.xyz, r18.xyz);
    r16.w = saturate(r16.w + r43.w);
    r14.w = r16.w * r14.w;
    r16.w = dot(r44.xyz, r18.xyz);
    r16.w = saturate(r16.w + r44.w);
    r14.w = r16.w * r14.w;
    r16.w = dot(r45.xyz, r18.xyz);
    r16.w = saturate(r16.w + r45.w);
    r19.x = r16.w * r14.w;
    r14.w = (int)r14.y & 1;
    r17.zw = r14.ww ? r19.xy : r19.zx;
    r40.xy = r33.zw;
    r40.z = r34.z;
    r14.w = dot(r15.xyz, r40.xyz);
    r16.w = dot(r18.xyz, r40.xyz);
    r16.w = r16.w + -r34.w;
    r19.x = cmp(r16.w >= 0);
    r16.w = max(abs(r16.w), r11.z);
    r16.w = r19.x ? r16.w : -r16.w;
    r14.w = max(1.00000001e-07, -r14.w);
    r14.w = r16.w / r14.w;
    r14.w = min(131072, abs(r14.w));
    r34.z = r35.z;
    r16.w = dot(r15.xyz, r34.xyz);
    r19.x = dot(r18.xyz, r34.xyz);
    r19.x = r19.x + -r35.w;
    r19.w = cmp(r19.x >= 0);
    r19.x = max(abs(r19.x), r11.z);
    r19.x = r19.w ? r19.x : -r19.x;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r19.x / r16.w;
    r14.w = min(abs(r16.w), r14.w);
    r35.z = r36.z;
    r16.w = dot(r15.xyz, r35.xyz);
    r19.x = dot(r18.xyz, r35.xyz);
    r19.x = r19.x + -r36.w;
    r19.w = cmp(r19.x >= 0);
    r19.x = max(abs(r19.x), r11.z);
    r19.x = r19.w ? r19.x : -r19.x;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r19.x / r16.w;
    r14.w = min(abs(r16.w), r14.w);
    r36.z = r37.z;
    r16.w = dot(r15.xyz, r36.xyz);
    r19.x = dot(r18.xyz, r36.xyz);
    r19.x = r19.x + -r37.w;
    r19.w = cmp(r19.x >= 0);
    r19.x = max(abs(r19.x), r11.z);
    r19.x = r19.w ? r19.x : -r19.x;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r19.x / r16.w;
    r14.w = min(abs(r16.w), r14.w);
    r37.z = r38.x;
    r16.w = dot(r15.xyz, r37.xyz);
    r19.x = dot(r18.xyz, r37.xyz);
    r19.x = r19.x + -r38.y;
    r19.w = cmp(r19.x >= 0);
    r19.x = max(abs(r19.x), r11.z);
    r19.x = r19.w ? r19.x : -r19.x;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r19.x / r16.w;
    r14.w = min(abs(r16.w), r14.w);
    r39.zw = r38.zw;
    r16.w = dot(r15.zxy, r39.xzw);
    r19.x = dot(r18.zxy, r39.xzw);
    r19.x = r19.x + -r39.y;
    r19.w = cmp(r19.x >= 0);
    r19.x = max(abs(r19.x), r11.z);
    r19.x = r19.w ? r19.x : -r19.x;
    r16.w = max(1.00000001e-07, -r16.w);
    r16.w = r19.x / r16.w;
    r14.w = min(abs(r16.w), r14.w);
    r34.x = r30.w;
    r34.yz = r31.zw;
    r34.xyz = r34.xyz + r18.xyz;
    r34.xyz = r15.xyz * r14.www + r34.xyz;
    r16.w = dot(r34.xyz, r34.xyz);
    r16.w = sqrt(r16.w);
    r14.w = r14.w / r16.w;
    r14.w = r14.w + r14.w;
    r14.w = sqrt(r14.w);
    r14.w = r10.w * 5 + r14.w;
    r14.w = -0.844799995 + r14.w;
    r27.y = r28.z;
    r27.z = r29.x;
    r35.x = dot(r34.xyz, r27.xyz);
    r36.xy = r28.xw;
    r36.z = r29.w;
    r35.y = dot(r34.xyz, r36.xyz);
    r29.x = r28.y;
    r35.z = dot(r34.xyz, r29.xyz);
    if (6 == 0) r19.x = 0; else if (6+25 < 32) {     r19.x = (uint)r33.y << (32-(6 + 25)); r19.x = (uint)r19.x >> (32-6);    } else r19.x = (uint)r33.y >> 25;
    if (9 == 0) r19.w = 0; else if (9+16 < 32) {     r19.w = (uint)r33.y << (32-(9 + 16)); r19.w = (uint)r19.w >> (32-9);    } else r19.w = (uint)r33.y >> 16;
    r35.w = (uint)r19.w;
    r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r14.w).xyz;
    r33.yzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
    r33.yzw = cmp((int3)r33.yzw == int3(2139095040,2139095040,2139095040));
    r14.w = (int)r33.z | (int)r33.y;
    r14.w = (int)r33.w | (int)r14.w;
    r28.xyz = r14.www ? float3(1,1,0) : r28.xyz;
    r34.x = dot(r18.xyz, r27.xyz);
    r34.y = dot(r18.xyz, r36.xyz);
    r34.z = dot(r18.xyz, r29.xyz);
    r30.xyz = saturate(r34.xyz * r30.xyz + float3(0.5,0.5,0.5));
    r31.z = r32.x;
    r30.xyz = r30.xyz * r31.xyz + r32.yzw;
    r35.x = dot(r2.xyz, r27.xyz);
    r35.y = dot(r2.xyz, r36.xyz);
    r35.z = dot(r2.xyz, r29.xyz);
    r27.xyz = cmp(float3(0,0,0) < r35.xyz);
    r20.z = r27.x ? 0 : 0.5;
    r29.xyz = r30.xyz + r20.xyz;
    r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
    r21.z = r27.y ? 0 : 0.5;
    r27.xyw = r30.xyz + r21.xyz;
    r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
    r22.z = r27.z ? 0 : 0.5;
    r30.xyz = r30.xyz + r22.xyz;
    r30.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r30.xyz, 0).xyz;
    r31.xyz = r35.xyz * r35.xyz;
    r32.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
    r33.yzw = (int3)r32.xyz & int3(-2147483648,-2147483648,-2147483648);
    r33.yzw = cmp((int3)r33.yzw == int3(2139095040,2139095040,2139095040));
    r14.w = (int)r33.z | (int)r33.y;
    r14.w = (int)r33.w | (int)r14.w;
    r32.xyz = r14.www ? float3(1,1,0) : r32.xyz;
    r34.xyzw = r24.xyzw;
    r33.yzw = r25.yzw;
    r14.w = r26.w;
    r16.w = r0.y;
    r19.w = r12.z;
    while (true) {
      if (r19.w == 0) break;
      r20.z = firstbitlow((uint)r19.w);
      r20.z = 1 << (int)r20.z;
      r20.w = (int)r19.w & (int)r20.z;
      if (r20.w != 0) {
        r20.z = ~(int)r20.z;
        r19.w = (int)r19.w & (int)r20.z;
        if (r12.w != 0) {
          r20.z = r14.y;
          r35.xy = r17.zw;
          r20.w = 1;
          while (true) {
            r21.z = cmp((int)r20.w >= (int)r19.x);
            if (r21.z != 0) break;
            r21.z = (int)r13.w + (int)r20.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r21.z, l(0), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r21.z, l(16), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r21.z, l(32), t16.xyzw
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r21.z, l(48), t16.xyzw
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
          r39.z = samp0[]..swiz;
          r39.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r21.z, l(64), t16.xyzw
          r40.x = samp0[]..swiz;
          r40.y = samp0[]..swiz;
          r40.z = samp0[]..swiz;
          r40.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r21.z, l(80), t16.xyzw
          r41.x = samp0[]..swiz;
          r41.y = samp0[]..swiz;
          r41.z = samp0[]..swiz;
          r41.w = samp0[]..swiz;
            r21.z = dot(r36.xyz, r18.xyz);
            r21.z = saturate(r21.z + r36.w);
            r21.z = r35.x * r21.z;
            r21.w = dot(r37.xyz, r18.xyz);
            r21.w = saturate(r21.w + r37.w);
            r21.z = r21.z * r21.w;
            r21.w = dot(r38.xyz, r18.xyz);
            r21.w = saturate(r21.w + r38.w);
            r21.z = r21.z * r21.w;
            r21.w = dot(r39.xyz, r18.xyz);
            r21.w = saturate(r21.w + r39.w);
            r21.z = r21.z * r21.w;
            r21.w = dot(r40.xyz, r18.xyz);
            r21.w = saturate(r21.w + r40.w);
            r21.z = r21.z * r21.w;
            r21.w = dot(r41.xyz, r18.xyz);
            r21.w = saturate(r21.w + r41.w);
            r35.x = r21.z * r21.w;
            r22.z = (uint)r20.z >> 2;
            if (1 == 0) r22.w = 0; else if (1+2 < 32) {             r22.w = (uint)r20.z << (32-(1 + 2)); r22.w = (uint)r22.w >> (32-1);            } else r22.w = (uint)r20.z >> 2;
            r27.z = (int)r22.z & 2;
            r28.w = max(r35.y, r35.x);
            r21.z = -r21.z * r21.w + 1;
            r21.z = r35.y * r21.z;
            r23.y = r27.z ? r21.z : r28.w;
            r35.xy = r22.ww ? r35.xy : r23.xy;
            r20.w = (int)r20.w + 1;
            r20.z = r22.z;
          }
          r35.y = saturate(r35.y);
          r20.z = r35.y * r14.z;
          r20.w = cmp(0 < r20.z);
          if (r20.w != 0) {
            r20.w = (int)r14.w + 257;
            r36.z = r35.y * r14.z + r33.w;
            r20.z = r20.z * r33.x;
            r35.xzw = r31.xyz * r20.zzz;
            r37.xyz = r35.zzz * r27.xyw;
            r37.xyz = r29.xyz * r35.xxx + r37.xyz;
            r35.xzw = r30.xyz * r35.www + r37.xyz;
            r37.xyz = r35.xzw * r32.xyz;
            r21.z = dot(r37.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r37.xyz = r35.xzw * r32.xyz + r34.xyz;
            r21.w = r21.z * r11.w;
            r35.xzw = r28.xyz * r20.zzz;
            r20.z = dot(r35.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r20.z = r11.w * r21.z + r20.z;
            r20.z = r21.w / r20.z;
            r38.x = r34.w;
            r38.yz = r33.yz;
            r36.xyw = r35.zwx * r20.zzz + r38.yzx;
            r37.w = r36.w;
          } else {
            r20.w = (int)r14.w + 1;
            r37.xyzw = r34.xyzw;
            r36.xyz = r33.yzw;
          }
          r16.w = -1;
          r34.xyzw = r37.xyzw;
          r33.yzw = r36.xyz;
          r14.w = r20.w;
          break;
        }
      }
    }
    if (r16.w != 0) {
      r24.xyzw = r34.xyzw;
      r25.yzw = r33.yzw;
      r26.w = r14.w;
      r0.y = -1;
      break;
    }
    r0.z = (int)r0.z + 32;
    r24.xyzw = r34.xyzw;
    r25.yzw = r33.yzw;
    r26.w = r14.w;
    r0.y = r16.w;
  }
  if (r0.y == 0) {
    r0.y = numRefProbes + -numOverrideProbes;
    r0.z = (int)r0.y & -32;
    r12.z = (int)-r0.z + (int)r0.y;
    r12.w = numRefProbes & -32;
    r13.w = (int)-r12.w + numRefProbes;
    r17.xy = float2(0,0);
    r18.w = 0;
    r19.yz = float2(0,1);
    r20.xy = float2(0,0);
    r21.x = 1;
    r22.xy = float2(0,0);
    r27.xy = float2(0,0);
    r28.xyzw = r24.wxyz;
    r29.xyz = r25.yzw;
    r29.w = r26.w;
    r14.y = r0.z;
    while (true) {
      r14.z = cmp((uint)r14.y >= numRefProbes);
      if (r14.z != 0) break;
      r17.z = (uint)r14.y >> 5;
      r18.xyz = (int3)r16.xyz + (int3)r17.xyz;
      r14.z = visibleProbes.Load(r18.xyzw).x;
      r14.w = cmp((int)r0.z == (int)r14.y);
      bitmask.w = ((~(-1 << r12.z)) << 0) & 0xffffffff;  r16.w = (((uint)0 << 0) & bitmask.w) | ((uint)r14.z & ~bitmask.w);
      r14.z = r14.w ? r16.w : r14.z;
      r14.w = cmp((int)r12.w == (int)r14.y);
      if (r13.w == 0) r16.w = 0; else if (r13.w+0 < 32) {       r16.w = (uint)r14.z << (32-(r13.w + 0)); r16.w = (uint)r16.w >> (32-r13.w);      } else r16.w = (uint)r14.z >> 0;
      r14.z = r14.w ? r16.w : r14.z;
      r14.w = (int)r14.y + numLights;
      r30.xyzw = r28.yzwx;
      r31.xyzw = r29.xyzw;
      r16.w = r14.z;
      while (true) {
        if (r16.w == 0) break;
        r17.z = firstbitlow((uint)r16.w);
        r17.w = 1 << (int)r17.z;
        r18.x = (int)r16.w & (int)r17.w;
        if (r18.x != 0) {
          r16.w = (int)r16.w ^ (int)r17.w;
          r17.w = (int)r14.w + (int)r17.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(0), t11.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r18.xy, r17.w, l(16), t11.xyxx
        r18.x = samp0[]..swiz;
        r18.y = samp0[]..swiz;
          r32.xyz = -v6.xyz + r32.xyz;
          r18.z = r32.w;
          r18.xyz = cmp(abs(r32.xyz) < r18.zxy);
          r17.w = r18.y ? r18.x : 0;
          r17.w = r18.z ? r17.w : 0;
          if (r17.w != 0) {
            r17.z = (int)r14.y + (int)r17.z;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(0), t15.wxyz
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r18.xy, r17.z, l(96), t15.xyxx
          r18.x = samp0[]..swiz;
          r18.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(116), t15.zwxy
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r34.xyz = v6.xyz + -r32.yzw;
            r17.w = (int)r33.w & 0x0000ffff;
            if (6 == 0) r18.z = 0; else if (6+25 < 32) {             r18.z = (uint)r33.w << (32-(6 + 25)); r18.z = (uint)r18.z >> (32-6);            } else r18.z = (uint)r33.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(0), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(16), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(32), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(48), t16.xyzw
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r17.w, l(64), t16.xyzw
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
          r39.z = samp0[]..swiz;
          r39.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r17.w, l(80), t16.xyzw
          r40.x = samp0[]..swiz;
          r40.y = samp0[]..swiz;
          r40.z = samp0[]..swiz;
          r40.w = samp0[]..swiz;
            r19.w = dot(r35.xyz, r34.xyz);
            r19.w = saturate(r19.w + r35.w);
            r20.w = dot(r36.xyz, r34.xyz);
            r20.w = saturate(r20.w + r36.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r37.xyz, r34.xyz);
            r20.w = saturate(r20.w + r37.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r38.xyz, r34.xyz);
            r20.w = saturate(r20.w + r38.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r39.xyz, r34.xyz);
            r20.w = saturate(r20.w + r39.w);
            r19.w = r20.w * r19.w;
            r20.w = dot(r40.xyz, r34.xyz);
            r20.w = saturate(r20.w + r40.w);
            r19.x = r20.w * r19.w;
            r19.w = r18.x ? 0.000000 : 0;
            r19.xw = r19.ww ? r19.xy : r19.zx;
            r20.w = r18.x;
            r23.xy = r19.xw;
            r21.z = 1;
            while (true) {
              r21.w = cmp((int)r21.z >= (int)r18.z);
              if (r21.w != 0) break;
              r21.w = (int)r17.w + (int)r21.z;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r21.w, l(0), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r21.w, l(16), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r21.w, l(32), t16.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r21.w, l(48), t16.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r21.w, l(64), t16.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r21.w, l(80), t16.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
              r21.w = dot(r35.xyz, r34.xyz);
              r21.w = saturate(r21.w + r35.w);
              r21.w = r23.x * r21.w;
              r22.w = dot(r36.xyz, r34.xyz);
              r22.w = saturate(r22.w + r36.w);
              r21.w = r22.w * r21.w;
              r22.w = dot(r37.xyz, r34.xyz);
              r22.w = saturate(r22.w + r37.w);
              r21.w = r22.w * r21.w;
              r22.w = dot(r38.xyz, r34.xyz);
              r22.w = saturate(r22.w + r38.w);
              r21.w = r22.w * r21.w;
              r22.w = dot(r39.xyz, r34.xyz);
              r22.w = saturate(r22.w + r39.w);
              r21.w = r22.w * r21.w;
              r22.w = dot(r40.xyz, r34.xyz);
              r22.w = saturate(r22.w + r40.w);
              r23.x = r22.w * r21.w;
              r27.w = (uint)r20.w >> 2;
              if (1 == 0) r32.w = 0; else if (1+2 < 32) {               r32.w = (uint)r20.w << (32-(1 + 2)); r32.w = (uint)r32.w >> (32-1);              } else r32.w = (uint)r20.w >> 2;
              r34.w = (int)r27.w & 2;
              r35.x = max(r23.y, r23.x);
              r21.w = -r21.w * r22.w + 1;
              r21.w = r23.y * r21.w;
              r21.y = r34.w ? r21.w : r35.x;
              r23.xy = r32.ww ? r23.xy : r21.xy;
              r21.z = (int)r21.z + 1;
              r20.w = r27.w;
            }
            r23.y = saturate(r23.y);
            r17.w = r23.y * r18.y;
            r18.x = cmp(0 < r17.w);
            if (r18.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(16), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r17.z, l(32), t15.yxwz
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r17.z, l(48), t15.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r17.z, l(64), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r17.z, l(80), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r17.z, l(132), t15.zwxy
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r17.z, l(148), t15.zwxy
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
            r41.z = samp0[]..swiz;
            r41.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xyzw, r17.z, l(164), t15.zwxy
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r43.xyzw, r17.z, l(180), t15.zwxy
            r43.x = samp0[]..swiz;
            r43.y = samp0[]..swiz;
            r43.z = samp0[]..swiz;
            r43.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r44.xyzw, r17.z, l(196), t15.xyzw
            r44.x = samp0[]..swiz;
            r44.y = samp0[]..swiz;
            r44.z = samp0[]..swiz;
            r44.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r45.xy, r17.z, l(212), t15.xyxx
            r45.x = samp0[]..swiz;
            r45.y = samp0[]..swiz;
              r31.w = (int)r31.w + 257;
              r31.z = r23.y * r18.y + r31.z;
              r17.z = r17.w * r33.z;
              r33.z = r40.z;
              r17.w = dot(r15.xyz, r33.xyz);
              r18.x = dot(r34.xyz, r33.xyz);
              r18.x = r18.x + -r40.w;
              r18.y = cmp(r18.x >= 0);
              r18.x = max(abs(r18.x), r11.z);
              r18.x = r18.y ? r18.x : -r18.x;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.x / r17.w;
              r17.w = min(131072, abs(r17.w));
              r40.z = r41.z;
              r18.x = dot(r15.xyz, r40.xyz);
              r18.y = dot(r34.xyz, r40.xyz);
              r18.y = r18.y + -r41.w;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r11.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r18.x = max(1.00000001e-07, -r18.x);
              r18.x = r18.y / r18.x;
              r17.w = min(abs(r18.x), r17.w);
              r41.z = r42.z;
              r18.x = dot(r15.xyz, r41.xyz);
              r18.y = dot(r34.xyz, r41.xyz);
              r18.y = r18.y + -r42.w;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r11.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r18.x = max(1.00000001e-07, -r18.x);
              r18.x = r18.y / r18.x;
              r17.w = min(abs(r18.x), r17.w);
              r42.z = r43.z;
              r18.x = dot(r15.xyz, r42.xyz);
              r18.y = dot(r34.xyz, r42.xyz);
              r18.y = r18.y + -r43.w;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r11.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r18.x = max(1.00000001e-07, -r18.x);
              r18.x = r18.y / r18.x;
              r17.w = min(abs(r18.x), r17.w);
              r43.z = r44.x;
              r18.x = dot(r15.xyz, r43.xyz);
              r18.y = dot(r34.xyz, r43.xyz);
              r18.y = r18.y + -r44.y;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r11.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r18.x = max(1.00000001e-07, -r18.x);
              r18.x = r18.y / r18.x;
              r17.w = min(abs(r18.x), r17.w);
              r45.zw = r44.zw;
              r18.x = dot(r15.zxy, r45.xzw);
              r18.y = dot(r34.zxy, r45.xzw);
              r18.y = r18.y + -r45.y;
              r18.z = cmp(r18.y >= 0);
              r18.y = max(abs(r18.y), r11.z);
              r18.y = r18.z ? r18.y : -r18.y;
              r18.x = max(1.00000001e-07, -r18.x);
              r18.x = r18.y / r18.x;
              r17.w = min(abs(r18.x), r17.w);
              r18.x = r37.w;
              r18.yz = r38.zw;
              r18.xyz = r18.xyz + r34.xyz;
              r18.xyz = r15.xyz * r17.www + r18.xyz;
              r19.x = dot(r18.xyz, r18.xyz);
              r19.x = sqrt(r19.x);
              r17.w = r17.w / r19.x;
              r17.w = r17.w + r17.w;
              r17.w = sqrt(r17.w);
              r17.w = r10.w * 5 + r17.w;
              r17.w = -0.844799995 + r17.w;
              r32.y = r35.z;
              r32.z = r36.x;
              r40.x = dot(r18.xyz, r32.xyz);
              r33.xy = r35.xw;
              r33.z = r36.w;
              r40.y = dot(r18.xyz, r33.xyz);
              r36.x = r35.y;
              r40.z = dot(r18.xyz, r36.xyz);
              if (9 == 0) r18.x = 0; else if (9+16 < 32) {               r18.x = (uint)r33.w << (32-(9 + 16)); r18.x = (uint)r18.x >> (32-9);              } else r18.x = (uint)r33.w >> 16;
              r40.w = (uint)r18.x;
              r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r40.xyzw, r17.w).xyz;
              r21.yzw = (int3)r18.xyz & int3(-2147483648,-2147483648,-2147483648);
              r21.yzw = cmp((int3)r21.yzw == int3(2139095040,2139095040,2139095040));
              r17.w = (int)r21.z | (int)r21.y;
              r17.w = (int)r21.w | (int)r17.w;
              r18.xyz = r17.www ? float3(1,1,0) : r18.xyz;
              r35.x = dot(r34.xyz, r32.xyz);
              r35.y = dot(r34.xyz, r33.xyz);
              r35.z = dot(r34.xyz, r36.xyz);
              r21.yzw = saturate(r35.xyz * r37.xyz + float3(0.5,0.5,0.5));
              r38.z = r39.x;
              r21.yzw = r21.yzw * r38.xyz + r39.yzw;
              r40.x = dot(r2.xyz, r32.xyz);
              r40.y = dot(r2.xyz, r33.xyz);
              r40.z = dot(r2.xyz, r36.xyz);
              r32.xyz = cmp(float3(0,0,0) < r40.xyz);
              r20.z = r32.x ? 0 : 0.5;
              r33.xyz = r21.yzw + r20.xyz;
              r33.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r33.xyz, 0).xyz;
              r34.xyz = r40.xyz * r40.xyz;
              r34.xyz = r34.xyz * r17.zzz;
              r22.z = r32.y ? 0 : 0.5;
              r32.xyw = r22.xyz + r21.yzw;
              r32.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r32.xyw, 0).xyz;
              r32.xyw = r32.xyw * r34.yyy;
              r32.xyw = r33.xyz * r34.xxx + r32.xyw;
              r27.z = r32.z ? 0 : 0.5;
              r21.yzw = r27.xyz + r21.yzw;
              r21.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r21.yzw, 0).xyz;
              r21.yzw = r21.yzw * r34.zzz + r32.xyw;
              r32.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r40.xyzw, 6).xyz;
              r33.xyz = (int3)r32.xyz & int3(-2147483648,-2147483648,-2147483648);
              r33.xyz = cmp((int3)r33.xyz == int3(2139095040,2139095040,2139095040));
              r17.w = (int)r33.y | (int)r33.x;
              r17.w = (int)r33.z | (int)r17.w;
              r32.xyz = r17.www ? float3(1,1,0) : r32.xyz;
              r33.xyz = r32.xyz * r21.yzw;
              r17.w = dot(r33.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r30.xyz = r21.yzw * r32.xyz + r30.xyz;
              r19.x = r17.w * r11.w;
              r18.xyz = r18.xyz * r17.zzz;
              r17.z = dot(r18.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r17.z = r11.w * r17.w + r17.z;
              r17.z = r19.x / r17.z;
              r32.x = r30.w;
              r32.yz = r31.xy;
              r18.xyz = r18.xyz * r17.zzz + r32.xyz;
              r30.w = r18.x;
              r31.xy = r18.yz;
            } else {
              r31.w = (int)r31.w + 1;
            }
          }
        }
      }
      r28.xyzw = r30.wxyz;
      r29.xyzw = r31.xyzw;
      r14.y = (int)r14.y + 32;
    }
    r26.xyzw = r29.zxyw;
    r12.w = cmp(r26.x < 1);
    if (r12.w != 0) {
      r17.xy = float2(0,0);
      r18.w = 0;
      r19.yz = float2(0,1);
      r20.xy = float2(0,0);
      r21.x = 1;
      r22.xy = float2(0,0);
      r27.xy = float2(0,0);
      r14.yzw = r28.yzw;
      r29.x = r28.x;
      r29.yz = r26.yz;
      r21.zw = r26.xw;
      r12.w = r26.x;
      r13.w = 0;
      while (true) {
        r16.w = cmp((uint)r13.w >= (uint)r0.y);
        if (r16.w != 0) break;
        r17.z = (uint)r13.w >> 5;
        r18.xyz = (int3)r16.xyz + (int3)r17.xyz;
        r16.w = visibleProbes.Load(r18.xyzw).x;
        r17.z = cmp((int)r0.z == (int)r13.w);
        if (r12.z == 0) r17.w = 0; else if (r12.z+0 < 32) {         r17.w = (uint)r16.w << (32-(r12.z + 0)); r17.w = (uint)r17.w >> (32-r12.z);        } else r17.w = (uint)r16.w >> 0;
        r16.w = r17.z ? r17.w : r16.w;
        r17.z = (int)r13.w + numLights;
        r18.xyz = r14.yzw;
        r30.xyz = r29.xyz;
        r23.xy = r21.zw;
        r17.w = r12.w;
        r19.w = r16.w;
        while (true) {
          if (r19.w == 0) break;
          r20.w = firstbitlow((uint)r19.w);
          r22.w = 1 << (int)r20.w;
          r25.w = (int)r19.w & (int)r22.w;
          if (r25.w != 0) {
            r19.w = (int)r19.w ^ (int)r22.w;
            r22.w = (int)r17.z + (int)r20.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r31.xyzw, r22.w, l(0), t11.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r32.xy, r22.w, l(16), t11.xyxx
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
            r31.xyz = -v6.xyz + r31.xyz;
            r32.z = r31.w;
            r31.xyz = cmp(abs(r31.xyz) < r32.zxy);
            r22.w = r31.y ? r31.x : 0;
            r22.w = r31.z ? r22.w : 0;
            if (r22.w != 0) {
              r20.w = (int)r13.w + (int)r20.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r20.w, l(0), t15.wxyz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xy, r20.w, l(96), t15.xyxx
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r20.w, l(116), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
              r34.xyz = v6.xyz + -r31.yzw;
              r22.w = (int)r33.w & 0x0000ffff;
              if (6 == 0) r25.w = 0; else if (6+25 < 32) {               r25.w = (uint)r33.w << (32-(6 + 25)); r25.w = (uint)r25.w >> (32-6);              } else r25.w = (uint)r33.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r22.w, l(0), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r22.w, l(16), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r22.w, l(32), t16.xyzw
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r22.w, l(48), t16.xyzw
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r22.w, l(64), t16.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r22.w, l(80), t16.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
              r27.w = dot(r35.xyz, r34.xyz);
              r27.w = saturate(r27.w + r35.w);
              r29.w = dot(r36.xyz, r34.xyz);
              r29.w = saturate(r29.w + r36.w);
              r27.w = r29.w * r27.w;
              r29.w = dot(r37.xyz, r34.xyz);
              r29.w = saturate(r29.w + r37.w);
              r27.w = r29.w * r27.w;
              r29.w = dot(r38.xyz, r34.xyz);
              r29.w = saturate(r29.w + r38.w);
              r27.w = r29.w * r27.w;
              r29.w = dot(r39.xyz, r34.xyz);
              r29.w = saturate(r29.w + r39.w);
              r27.w = r29.w * r27.w;
              r29.w = dot(r40.xyz, r34.xyz);
              r29.w = saturate(r29.w + r40.w);
              r19.x = r29.w * r27.w;
              r27.w = (int)r32.x & 1;
              r32.zw = r27.ww ? r19.xy : r19.zx;
              r19.x = r32.x;
              r35.xy = r32.zw;
              r27.w = 1;
              while (true) {
                r29.w = cmp((int)r27.w >= (int)r25.w);
                if (r29.w != 0) break;
                r29.w = (int)r22.w + (int)r27.w;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r29.w, l(0), t16.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r29.w, l(16), t16.xyzw
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r29.w, l(32), t16.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r29.w, l(48), t16.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r29.w, l(64), t16.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r29.w, l(80), t16.xyzw
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
                r29.w = dot(r36.xyz, r34.xyz);
                r29.w = saturate(r29.w + r36.w);
                r29.w = r35.x * r29.w;
                r30.w = dot(r37.xyz, r34.xyz);
                r30.w = saturate(r30.w + r37.w);
                r29.w = r30.w * r29.w;
                r30.w = dot(r38.xyz, r34.xyz);
                r30.w = saturate(r30.w + r38.w);
                r29.w = r30.w * r29.w;
                r30.w = dot(r39.xyz, r34.xyz);
                r30.w = saturate(r30.w + r39.w);
                r29.w = r30.w * r29.w;
                r30.w = dot(r40.xyz, r34.xyz);
                r30.w = saturate(r30.w + r40.w);
                r29.w = r30.w * r29.w;
                r30.w = dot(r41.xyz, r34.xyz);
                r30.w = saturate(r30.w + r41.w);
                r35.x = r30.w * r29.w;
                r31.w = (uint)r19.x >> 2;
                if (1 == 0) r34.w = 0; else if (1+2 < 32) {                 r34.w = (uint)r19.x << (32-(1 + 2)); r34.w = (uint)r34.w >> (32-1);                } else r34.w = (uint)r19.x >> 2;
                r35.z = (int)r31.w & 2;
                r35.w = max(r35.y, r35.x);
                r29.w = -r29.w * r30.w + 1;
                r29.w = r35.y * r29.w;
                r21.y = r35.z ? r29.w : r35.w;
                r35.xy = r34.ww ? r35.xy : r21.xy;
                r27.w = (int)r27.w + 1;
                r19.x = r31.w;
              }
              r19.x = saturate(r35.y + -r17.w);
              r21.y = r19.x * r32.y;
              r22.w = cmp(0 < r21.y);
              if (r22.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r20.w, l(16), t15.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r20.w, l(32), t15.yxwz
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r20.w, l(48), t15.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r20.w, l(64), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r20.w, l(80), t15.xyzw
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r20.w, l(132), t15.zwxy
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xyzw, r20.w, l(148), t15.zwxy
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
              r42.z = samp0[]..swiz;
              r42.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r43.xyzw, r20.w, l(164), t15.zwxy
              r43.x = samp0[]..swiz;
              r43.y = samp0[]..swiz;
              r43.z = samp0[]..swiz;
              r43.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r44.xyzw, r20.w, l(180), t15.zwxy
              r44.x = samp0[]..swiz;
              r44.y = samp0[]..swiz;
              r44.z = samp0[]..swiz;
              r44.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r45.xyzw, r20.w, l(196), t15.xyzw
              r45.x = samp0[]..swiz;
              r45.y = samp0[]..swiz;
              r45.z = samp0[]..swiz;
              r45.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r46.xy, r20.w, l(212), t15.xyxx
              r46.x = samp0[]..swiz;
              r46.y = samp0[]..swiz;
                r23.y = (int)r23.y + 257;
                r23.x = r19.x * r32.y + r23.x;
                r19.x = r21.y * r33.z;
                r33.z = r41.z;
                r20.w = dot(r15.xyz, r33.xyz);
                r21.y = dot(r34.xyz, r33.xyz);
                r21.y = r21.y + -r41.w;
                r22.w = cmp(r21.y >= 0);
                r21.y = max(abs(r21.y), r11.z);
                r21.y = r22.w ? r21.y : -r21.y;
                r20.w = max(1.00000001e-07, -r20.w);
                r20.w = r21.y / r20.w;
                r20.w = min(131072, abs(r20.w));
                r41.z = r42.z;
                r21.y = dot(r15.xyz, r41.xyz);
                r22.w = dot(r34.xyz, r41.xyz);
                r22.w = r22.w + -r42.w;
                r25.w = cmp(r22.w >= 0);
                r22.w = max(abs(r22.w), r11.z);
                r22.w = r25.w ? r22.w : -r22.w;
                r21.y = max(1.00000001e-07, -r21.y);
                r21.y = r22.w / r21.y;
                r20.w = min(abs(r21.y), r20.w);
                r42.z = r43.z;
                r21.y = dot(r15.xyz, r42.xyz);
                r22.w = dot(r34.xyz, r42.xyz);
                r22.w = r22.w + -r43.w;
                r25.w = cmp(r22.w >= 0);
                r22.w = max(abs(r22.w), r11.z);
                r22.w = r25.w ? r22.w : -r22.w;
                r21.y = max(1.00000001e-07, -r21.y);
                r21.y = r22.w / r21.y;
                r20.w = min(abs(r21.y), r20.w);
                r43.z = r44.z;
                r21.y = dot(r15.xyz, r43.xyz);
                r22.w = dot(r34.xyz, r43.xyz);
                r22.w = r22.w + -r44.w;
                r25.w = cmp(r22.w >= 0);
                r22.w = max(abs(r22.w), r11.z);
                r22.w = r25.w ? r22.w : -r22.w;
                r21.y = max(1.00000001e-07, -r21.y);
                r21.y = r22.w / r21.y;
                r20.w = min(abs(r21.y), r20.w);
                r44.z = r45.x;
                r21.y = dot(r15.xyz, r44.xyz);
                r22.w = dot(r34.xyz, r44.xyz);
                r22.w = r22.w + -r45.y;
                r25.w = cmp(r22.w >= 0);
                r22.w = max(abs(r22.w), r11.z);
                r22.w = r25.w ? r22.w : -r22.w;
                r21.y = max(1.00000001e-07, -r21.y);
                r21.y = r22.w / r21.y;
                r20.w = min(abs(r21.y), r20.w);
                r46.zw = r45.zw;
                r21.y = dot(r15.zxy, r46.xzw);
                r22.w = dot(r34.zxy, r46.xzw);
                r22.w = r22.w + -r46.y;
                r25.w = cmp(r22.w >= 0);
                r22.w = max(abs(r22.w), r11.z);
                r22.w = r25.w ? r22.w : -r22.w;
                r21.y = max(1.00000001e-07, -r21.y);
                r21.y = r22.w / r21.y;
                r20.w = min(abs(r21.y), r20.w);
                r32.x = r38.w;
                r32.yz = r39.zw;
                r32.xyz = r32.xyz + r34.xyz;
                r32.xyz = r15.xyz * r20.www + r32.xyz;
                r21.y = dot(r32.xyz, r32.xyz);
                r21.y = sqrt(r21.y);
                r20.w = r20.w / r21.y;
                r20.w = r20.w + r20.w;
                r20.w = sqrt(r20.w);
                r20.w = r10.w * 5 + r20.w;
                r20.w = -0.844799995 + r20.w;
                r31.y = r36.z;
                r31.z = r37.x;
                r41.x = dot(r32.xyz, r31.xyz);
                r33.xy = r36.xw;
                r33.z = r37.w;
                r41.y = dot(r32.xyz, r33.xyz);
                r37.x = r36.y;
                r41.z = dot(r32.xyz, r37.xyz);
                if (9 == 0) r21.y = 0; else if (9+16 < 32) {                 r21.y = (uint)r33.w << (32-(9 + 16)); r21.y = (uint)r21.y >> (32-9);                } else r21.y = (uint)r33.w >> 16;
                r41.w = (uint)r21.y;
                r32.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r41.xyzw, r20.w).xyz;
                r35.xzw = (int3)r32.xyz & int3(-2147483648,-2147483648,-2147483648);
                r35.xzw = cmp((int3)r35.xzw == int3(2139095040,2139095040,2139095040));
                r20.w = (int)r35.z | (int)r35.x;
                r20.w = (int)r35.w | (int)r20.w;
                r32.xyz = r20.www ? float3(1,1,0) : r32.xyz;
                r36.x = dot(r34.xyz, r31.xyz);
                r36.y = dot(r34.xyz, r33.xyz);
                r36.z = dot(r34.xyz, r37.xyz);
                r34.xyz = saturate(r36.xyz * r38.xyz + float3(0.5,0.5,0.5));
                r39.z = r40.x;
                r34.xyz = r34.xyz * r39.xyz + r40.yzw;
                r41.x = dot(r2.xyz, r31.xyz);
                r41.y = dot(r2.xyz, r33.xyz);
                r41.z = dot(r2.xyz, r37.xyz);
                r31.xyz = cmp(float3(0,0,0) < r41.xyz);
                r20.z = r31.x ? 0 : 0.5;
                r33.xyz = r34.xyz + r20.xyz;
                r33.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r33.xyz, 0).xyz;
                r35.xzw = r41.xyz * r41.xyz;
                r35.xzw = r35.xzw * r19.xxx;
                r22.z = r31.y ? 0 : 0.5;
                r31.xyw = r34.xyz + r22.xyz;
                r31.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r31.xyw, 0).xyz;
                r31.xyw = r31.xyw * r35.zzz;
                r31.xyw = r33.xyz * r35.xxx + r31.xyw;
                r27.z = r31.z ? 0 : 0.5;
                r33.xyz = r34.xyz + r27.xyz;
                r33.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r33.xyz, 0).xyz;
                r31.xyz = r33.xyz * r35.www + r31.xyw;
                r33.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r41.xyzw, 6).xyz;
                r34.xyz = (int3)r33.xyz & int3(-2147483648,-2147483648,-2147483648);
                r34.xyz = cmp((int3)r34.xyz == int3(2139095040,2139095040,2139095040));
                r20.z = (int)r34.y | (int)r34.x;
                r20.z = (int)r34.z | (int)r20.z;
                r33.xyz = r20.zzz ? float3(1,1,0) : r33.xyz;
                r34.xyz = r33.xyz * r31.xyz;
                r20.z = dot(r34.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r18.xyz = r31.xyz * r33.xyz + r18.xyz;
                r20.w = r20.z * r11.w;
                r31.xyz = r32.xyz * r19.xxx;
                r19.x = dot(r31.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r19.x = r11.w * r20.z + r19.x;
                r19.x = r20.w / r19.x;
                r30.xyz = r31.xyz * r19.xxx + r30.xyz;
              } else {
                r23.y = (int)r23.y + 1;
              }
            }
          }
        }
        r14.yzw = r18.xyz;
        r29.xyz = r30.xyz;
        r21.zw = r23.xy;
        r13.w = (int)r13.w + 32;
      }
      r28.xyz = r29.xyz;
      r26.yw = r21.zw;
      r26.xw = r26.yw;
    } else {
      r14.yzw = r28.yzw;
      r28.yz = r26.yz;
    }
    r0.y = max(1, r26.x);
    r0.y = rcp(r0.y);
    r26.x = saturate(r26.x);
    r24.xyz = r14.yzw * r0.yyy;
    r25.xyz = r28.xyz * r0.yyy;
    r0.z = cmp(r26.x < 0.99000001);
    if (r0.z != 0) {
      r26.w = (int)r26.w + 256;
      r0.z = 1 + -r26.x;
      r10.w = sunConstants.globalProbeExposure * r0.z;
      r17.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r18.x = globalProbeConstants.data[0].w * r17.x;
      r18.yz = globalProbeConstants.data[1].xy * r17.yz;
      r17.xyz = saturate(float3(0.5,0.5,0.5) + r18.xyz);
      r18.xy = globalProbeConstants.data[1].zw * r17.xy;
      r18.z = globalProbeConstants.data[2].x * r17.z;
      r17.xyz = globalProbeConstants.data[2].yzw + r18.xyz;
      r18.xyz = cmp(float3(0,0,0) < r2.xyz);
      r18.xyz = r18.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r18.w = 0;
      r19.xyz = r18.wwx + r17.xyz;
      r19.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r19.xyz, 0).xyz;
      r20.xyz = r2.xyz * r2.xyz;
      r20.xyz = r20.xyz * r10.www;
      r21.xyz = r18.wwy + r17.xyz;
      r21.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r21.xyz, 0).xyz;
      r21.xyz = r21.xyz * r20.yyy;
      r19.xyz = r19.xyz * r20.xxx + r21.xyz;
      r17.xyz = r18.wwz + r17.xyz;
      r17.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r17.xyz, 0).xyz;
      r17.xyz = r17.xyz * r20.zzz + r19.xyz;
      r2.w = 0;
      r18.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
      r17.xyz = r18.xyz * r17.xyz;
      r2.w = dot(r17.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r24.xyz = r14.yzw * r0.yyy + r17.xyz;
      r15.w = 0;
      r11.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r15.xyzw, r11.y).xyz;
      r0.y = sunConstants.globalProbeExposure * r0.z + -r2.w;
      r0.y = r7.w * r0.y + r2.w;
      r25.xyz = r11.yzw * r0.yyy + r25.xyz;
    }
  } else {
    r25.x = r24.w;
  }
  if (useSSR != 0) {
    r0.y = dot(r6.yzw, r2.xyz);
    r0.y = r0.y + r0.y;
    r11.yzw = r2.xyz * -r0.yyy + r6.yzw;
    r0.y = dot(r6.yzw, -r2.xyz);
    r0.y = r0.y + r0.y;
    r14.yzw = r2.xyz * r0.yyy + r6.yzw;
    r11.yzw = v9.xxx ? r11.yzw : r14.yzw;
    if (useLoopedSSR != 0) {
      r14.yzw = viewMatrix._m10_m11_m12 * v6.yyy;
      r14.yzw = v6.xxx * viewMatrix._m00_m01_m02 + r14.yzw;
      r14.yzw = v6.zzz * viewMatrix._m20_m21_m22 + r14.yzw;
      r15.xyz = ssrParams.zzz * r11.yzw;
      r17.xyz = viewMatrix._m10_m11_m12 * r15.yyy;
      r15.xyw = r15.xxx * viewMatrix._m00_m01_m02 + r17.xyz;
      r15.xyz = r15.zzz * viewMatrix._m20_m21_m22 + r15.xyw;
      r0.y = min(1000, ssrParams.x);
      r14.yzw = r15.xyz * float3(10,10,10) + r14.yzw;
      r0.y = r0.y / ssrParams.z;
      r17.xyz = r25.xyz;
      r18.xyz = r14.yzw;
      r0.z = 0;
      while (true) {
        r2.w = (int)r0.z;
        r2.w = cmp(r2.w >= r0.y);
        if (r2.w != 0) break;
        r18.xyz = r18.xyz + r15.xyz;
        r19.xyz = projectionMatrix._m10_m11_m13 * r18.yyy;
        r19.xyz = r18.xxx * projectionMatrix._m00_m01_m03 + r19.xyz;
        r19.xyz = r18.zzz * projectionMatrix._m20_m21_m23 + r19.xyz;
        r19.xyz = projectionMatrix._m30_m31_m33 + r19.xyz;
        r2.w = max(abs(r19.x), abs(r19.y));
        r2.w = cmp(r19.z < r2.w);
        if (r2.w != 0) {
          break;
        }
        r12.zw = r19.xy / r19.zz;
        r12.zw = r12.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r2.w = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r12.zw, 1).x;
        r7.w = cmp(abs(r2.w) < r18.z);
        r10.w = cmp(abs(r2.w) >= v0.w);
        r7.w = r7.w ? r10.w : 0;
        if (r7.w != 0) {
          r2.w = r18.z + -abs(r2.w);
          r2.w = ssrParams.w * r2.w;
          r19.xyz = -r2.www * r15.xyz + r18.xyz;
          r20.xyz = projectionMatrix._m10_m11_m13 * r19.yyy;
          r19.xyw = r19.xxx * projectionMatrix._m00_m01_m03 + r20.xyz;
          r19.xyz = r19.zzz * projectionMatrix._m20_m21_m23 + r19.xyw;
          r19.xyz = projectionMatrix._m30_m31_m33 + r19.xyz;
          r12.zw = r19.xy / r19.zz;
          r12.zw = r12.zw * float2(0.5,-0.5) + float2(0.5,0.5);
          r19.xyz = iResolveScene.SampleLevel(bilinearClamp_s, r12.zw, 0).xyz;
          r19.xyz = relHDRExposure.xxx * r19.xyz;
          r17.xyz = r19.xyz;
          break;
        }
        r0.z = (int)r0.z + 1;
      }
      r25.xyz = r17.xyz;
    } else {
      r0.y = ssrParams.y * r7.y;
      r11.yzw = r11.yzw * r0.yyy + v6.xyz;
      r14.yzw = viewProjectionMatrix._m10_m11_m13 * r11.zzz;
      r14.yzw = r11.yyy * viewProjectionMatrix._m00_m01_m03 + r14.yzw;
      r11.yzw = r11.www * viewProjectionMatrix._m20_m21_m23 + r14.yzw;
      r11.yzw = viewProjectionMatrix._m30_m31_m33 + r11.yzw;
      r0.yz = r11.yz / r11.ww;
      r2.w = max(abs(r0.y), abs(r0.z));
      r0.yz = r0.yz * float2(0.5,-0.5) + float2(0.5,0.5);
      r7.w = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r0.yz, 0).x;
      r7.w = cmp(abs(r7.w) >= v0.w);
      r2.w = cmp(r2.w < 1);
      r2.w = r2.w ? r7.w : 0;
      r11.yzw = iResolveScene.Sample(bilinearClamp_s, r0.yz).xyz;
      if (r2.w != 0) {
        r25.xyz = relHDRExposure.xxx * r11.yzw;
      }
    }
  }
  r0.y = dot(r2.xyz, sunConstants.wldDir.xyz);
  r0.z = saturate(r0.y);
  r2.w = useSpecularZFeather ? abs(r0.y) : r0.z;
  r2.w = cmp(0 >= r2.w);
  if (r2.w != 0) {
    r7.w = 0;
  }
  if (r2.w == 0) {
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r11.yzw = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.yzw;
    r11.yzw = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.yzw;
    r11.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.yzw;
    r2.w = -sunConstants.splitDepthOffset + r11.w;
    r2.w = -r2.w * 6.10351563e-05 + 1;
    r10.w = saturate(r2.w);
    r10.w = cmp(r2.w == r10.w);
    if (r10.w != 0) {
      r10.w = 0;
      r12.z = 0;
      while (true) {
        r12.w = cmp(r10.w >= 3);
        if (r12.w != 0) break;
        r12.w = (uint)r10.w;
        r14.yz = -sunConstants.splitPinTransform[r12.w].xy + r11.yz;
        r13.w = max(abs(r14.y), abs(r14.z));
        r12.z = sunConstants.splitPinTransform[r12.w].z * r13.w;
        r12.w = cmp(r12.z < 1);
        if (r12.w != 0) {
          break;
        }
        r10.w = 1 + r10.w;
        r12.z = 0;
      }
    } else {
      r10.w = 3;
      r12.z = 0;
    }
    r12.w = cmp(r10.w >= 3);
    if (r12.w != 0) {
      r14.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r14.yy);
      r15.y = -r15.z;
      r14.yzw = r11.yzy * r15.xyz + r14.zwz;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.yzw = max(float3(0,0,0), r14.yzw);
      r14.yzw = min(r14.yzw, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r14.wz;
      r15.xy = floor(r15.xy);
      r13.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r13.w = r13.w * sunConstants.sstLightingConstants.coordScale + r15.x;
      r13.w = (uint)r13.w;
      r13.w = (int)r13.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.x, r13.w, l(0), t23.xxxx
    r15.x = samp0[]..swiz;
      r15.y = (int)r15.x & 0x40000000;
      r15.z = (uint)r15.x << 2;
      if (r15.y == 0) {
        r15.y = (int)r15.x & 0x01ffffff;
        r17.x = (int)r13.w + (int)r15.y;
        r13.w = (uint)r15.x >> 25;
        r13.w = (uint)r13.w;
        r14.yzw = r14.yzw * r13.www;
        r14.yzw = frac(r14.yzw);
        r14.yzw = float3(128,128,128) * r14.yzw;
        r14.yzw = (uint3)r14.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
      r17.z = samp0[]..swiz;
        r15.xy = (uint2)r14.wz >> int2(6,6);
        r13.w = (int)r17.z & 0xc0000000;
        r15.w = (int)r17.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r15.y = r15.y ? r17.z : r15.w;
        r15.w = (uint)r15.y >> 13;
        r15.x = r15.x ? r15.w : r15.y;
        r15.x = (int)r15.x & 8191;
        r18.x = (int)r15.x + (int)r17.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
      r18.z = samp0[]..swiz;
        r17.y = 0;
        r18.y = 1;
        r15.xyw = r13.www ? r17.xyz : r18.xyz;
        r18.yz = r13.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r19.xy = (uint2)r14.wz >> (uint2)r18.yy;
        r19.xy = (int2)r19.xy & int2(1,1);
        r16.w = (int)r15.w & 0xc0000000;
        r17.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.w, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r17.w = r19.y ? r15.w : r17.w;
        r18.y = (uint)r17.w >> 13;
        r17.w = r19.x ? r18.y : r17.w;
        r17.w = (int)r17.w & 8191;
        r18.x = (int)r15.x + (int)r17.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.w, r18.x, l(0), t23.xxxx
      r18.w = samp0[]..swiz;
        r15.xyw = r16.www ? r15.xyw : r18.xzw;
        r15.xyw = r13.www ? r17.xyz : r15.xyw;
        r13.w = (int)r15.w & 0xc0000000;
        if (r13.w == 0) {
          r13.w = (int)-r15.y + 6;
          r17.xy = (uint2)r14.wz >> (uint2)r13.ww;
          r13.w = (int)r15.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r17.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r17.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
          r16.w = (int)r16.w * 10;
          r13.w = (uint)r13.w >> (uint)r16.w;
          r13.w = (int)r13.w & 1023;
          r17.x = (int)r13.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
        r17.w = samp0[]..swiz;
          r17.yz = (int2)r15.yy + int2(1,2);
          r13.w = (int)-r17.y + 6;
          r18.xy = (uint2)r14.wz >> (uint2)r13.ww;
          r13.w = (int)r17.w & 0xc0000000;
          r15.y = (int)r17.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r16.w = (((uint)r18.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r16.w = (((uint)r18.x << 0) & bitmask.w) | ((uint)r16.w & ~bitmask.w);
          r16.w = (int)r16.w * 10;
          r15.y = (uint)r15.y >> (uint)r16.w;
          r15.y = (int)r15.y & 1023;
          r18.x = (int)r15.y + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.z, r18.x, l(0), t23.xxxx
        r18.z = samp0[]..swiz;
          r18.y = r17.z;
          r18.xyz = r13.www ? r17.xyw : r18.xyz;
          r15.y = (int)-r18.y + 6;
          r17.yz = (uint2)r14.wz >> (uint2)r15.yy;
          r15.y = (int)r18.z & 0xc0000000;
          r16.w = (int)r18.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r17.z = (((uint)r17.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r17.y = (((uint)r17.y << 0) & bitmask.y) | ((uint)r17.z & ~bitmask.y);
          r17.y = (int)r17.y * 10;
          r16.w = (uint)r16.w >> (uint)r17.y;
          r16.w = (int)r16.w & 1023;
          r19.x = (int)r16.w + (int)r18.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r19.y, r19.x, l(0), t23.xxxx
        r19.y = samp0[]..swiz;
          r17.yz = r15.yy ? r18.xz : r19.xy;
          r15.xw = r13.ww ? r17.xw : r17.yz;
        }
        r13.w = (int)r15.w & 0xc0000000;
        if (r13.w == 0) {
          if (14 == 0) r15.y = 0; else if (14+15 < 32) {           r15.y = (uint)r15.w << (32-(14 + 15)); r15.y = (uint)r15.y >> (32-14);          } else r15.y = (uint)r15.w >> 15;
          r15.y = (uint)r15.y;
          r15.y = sunConstants.sstLightingConstants.constants.spanInInches * r15.y;
          r15.y = 6.10388815e-05 * r15.y;
          r17.xy = (int2)r15.ww & int2(32767,536870912);
          r16.w = (uint)r17.x;
          r16.w = sunConstants.sstLightingConstants.constants.spanInInches * r16.w;
          r16.w = 3.05185094e-05 * r16.w;
          r17.x = (int)r14.z & 3;
          r17.x = (int)r15.x + (int)r17.x;
          r17.x = (int)r17.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.x, r17.x, l(0), t23.xxxx
        r17.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r18.x = (((uint)r14.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r18.y = (((uint)r14.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r18.z = (((uint)r14.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r14.y = (uint)r17.x >> (uint)r18.x;
          r14.y = (int)r14.y & 255;
          r14.y = (uint)r14.y;
          r14.y = r14.y * r16.w;
          r14.y = r14.y * 0.00392156886 + r15.y;
          r14.z = (int)r18.y + 1;
          if (1 == 0) r14.w = 0; else if (1+1 < 32) {           r14.w = (uint)r14.w << (32-(1 + 1)); r14.w = (uint)r14.w >> (32-1);          } else r14.w = (uint)r14.w >> 1;
          r14.z = (int)r14.w + (int)r14.z;
          r14.z = (int)r14.z + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.z, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r14.z = (uint)r14.z >> (uint)r18.z;
          r14.z = (int)r14.z & 0x0000ffff;
          r14.z = (uint)r14.z;
          r14.z = r14.z * r16.w;
          r14.z = r14.z * 1.52590219e-05 + r15.y;
          r15.z = r17.y ? r14.y : r14.z;
        } else {
          r14.y = (int)r15.w & 0x80000000;
          r14.z = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.z, l(0), t23.xxxx
        r14.z = samp0[]..swiz;
          r14.y = r14.y ? r14.z : 0;
          r14.z = (uint)r15.w << 2;
          r14.w = (uint)r14.y >> 16;
          r14.y = (int)r14.y & 0x0000ffff;
          r14.yw = f16tof32(r14.yw);
          r14.z = r11.y * r14.w + r14.z;
          r14.y = r11.z * r14.y + r14.z;
          r15.z = r13.w ? r14.y : r15.z;
        }
      }
      r11.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.w;
      r11.w = cmp(r15.z < r11.w);
      r7.w = r11.w ? 0 : 1;
    }
    if (r12.w == 0) {
      if (enableDitheredShadow == 0) {
        r11.w = (uint)r10.w;
        r14.yz = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r14.yz = sunConstants.splitPinTransform[r11.w].zz * r14.yz;
        r15.xy = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.w = (int16)sunConstants.splitArrayOffset;
        r15.z = r11.w + r10.w;
        r11.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r2.w).x;
        r12.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
        r11.w = r12.w + r11.w;
        r11.w = saturate(-1 + r11.w);
        r12.w = r11.w * r11.w;
        r7.w = r12.w * r11.w;
      }
      if (enableDitheredShadow != 0) {
        r15.x = -r12.x;
        r11.w = (uint)r10.w;
        r10.w = 1 + r10.w;
        r10.w = min(2, r10.w);
        r10.w = (uint)r10.w;
        r12.z = 1 + -r12.z;
        r12.z = 28 * r12.z;
        r12.z = (uint)r12.z;
        r14.yz = -sunConstants.splitPinTransform[r11.w].xy + r11.yz;
        r14.yz = sunConstants.splitPinTransform[r11.w].zz * r14.yz;
        r14.yz = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.yz = -sunConstants.splitPinTransform[r10.w].xy + r11.yz;
        r11.yz = sunConstants.splitPinTransform[r10.w].zz * r11.yz;
        r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r15.y = r13.x;
        r15.z = r12.x;
        r12.w = 0;
        r13.w = 0;
        while (true) {
          r14.w = cmp((uint)r13.w >= 8);
          if (r14.w != 0) break;
          r14.w = cmp((uint)r12.z < (uint)r13.w);
          r17.xy = r14.ww ? r11.yz : r14.yz;
          r15.w = r14.w ? sunConstants.splitPinTransform[r10.w].w : sunConstants.splitPinTransform[r11.w].w;
          r14.w = r14.w ? r10.w : r11.w;
          r18.x = dot(icb[r13.w+0].yx, r15.xy);
          r18.y = dot(icb[r13.w+0].yx, r15.yz);
          r17.xy = r18.xy * r15.ww + r17.xy;
          r14.w = (int)r14.w + (int16)sunConstants.splitArrayOffset;
          r17.z = (uint)r14.w;
          r14.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r17.xyz, r2.w).x;
          r15.w = gTransShadowmapArray.SampleLevel(samp0_s, r17.xyz, 0).x;
          r14.w = r15.w + r14.w;
          r14.w = saturate(-1 + r14.w);
          r12.w = r14.w * 0.125 + r12.w;
          r13.w = (int)r13.w + 1;
        }
        r2.w = r12.w * r12.w;
        r7.w = r2.w * r12.w;
      }
    }
  }
  r2.w = viewmodelSunShadowRaw & 0x0000ffff;
  r10.w = cmp(0 < (uint)r2.w);
  r11.y = cmp(0 < r7.w);
  r10.w = r10.w ? r11.y : 0;
  if (r10.w != 0) {
    r2.w = (int)r2.w + numLights;
    r2.w = (int)r2.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.w, r2.w, l(52), t12.xxxx
  r10.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r2.w, l(68), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r2.w, l(84), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r2.w, l(100), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.xyzw, r2.w, l(116), t12.xyzw
  r19.x = samp0[]..swiz;
  r19.y = samp0[]..swiz;
  r19.z = samp0[]..swiz;
  r19.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xyzw, r2.w, l(132), t12.xyzw
  r20.x = samp0[]..swiz;
  r20.y = samp0[]..swiz;
  r20.z = samp0[]..swiz;
  r20.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.xyzw, r2.w, l(148), t12.xyzw
  r21.x = samp0[]..swiz;
  r21.y = samp0[]..swiz;
  r21.z = samp0[]..swiz;
  r21.w = samp0[]..swiz;
    r11.y = abs(r0.y) * -0.200000003 + 0.400000006;
    r0.y = cmp(r0.y < 0);
    r0.y = r0.y ? r9.x : 0;
    r0.y = r0.y ? -r11.y : r11.y;
    r22.xyz = r2.xyz * r0.yyy + v6.xyz;
    r22.w = 1;
    r15.x = dot(r15.xyzw, r22.xyzw);
    r15.y = dot(r17.xyzw, r22.xyzw);
    r0.y = dot(r18.xyzw, r22.xyzw);
    r11.y = dot(r19.xyzw, r22.xyzw);
    r11.z = cmp(r11.y < r0.y);
    r12.zw = r15.xy / r11.yy;
    r12.zw = r12.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.zw = r12.zw + r21.zw;
    r12.zw = r12.zw * r21.xy;
    r14.yz = r10.ww / r20.xz;
    r15.xy = float2(1,1) + -r14.yz;
    r15.xy = cmp(r12.zw >= r15.xy);
    r14.yz = cmp(r14.yz >= r12.zw);
    r14.yz = (int2)r14.yz | (int2)r15.xy;
    r11.w = (int)r14.z | (int)r14.y;
    r11.z = (int)r11.z | (int)r11.w;
    if (r11.z == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.z, r2.w, l(28), t12.xxxx
    r11.z = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.yz, r2.w, l(164), t12.xxyx
    r14.y = samp0[]..swiz;
    r14.z = samp0[]..swiz;
      r12.zw = saturate(r12.zw);
      r15.xy = r12.zw * r20.xz + r20.yw;
      r2.w = r14.z * r11.y;
      r0.y = r14.y * r11.y + r0.y;
      r0.y = r0.y / r2.w;
      r0.y = max(6.10351563e-05, r0.y);
      r2.w = r11.z ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r17.x = -r12.x;
        r18.z = (uint)r2.w;
        r17.y = r13.x;
        r17.z = r12.x;
        r11.yz = float2(0,0);
        while (true) {
          r11.w = cmp((int)r11.z >= 8);
          if (r11.w != 0) break;
          r19.x = dot(icb[r11.z+0].yx, r17.xy);
          r19.y = dot(icb[r11.z+0].yx, r17.yz);
          r18.xy = r19.xy * r10.ww + r15.xy;
          r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r18.xyz, r0.y).x;
          r11.y = r11.w * 0.125 + r11.y;
          r11.z = (int)r11.z + 1;
        }
      } else {
        r15.z = (uint)r2.w;
        r11.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r0.y).x;
      }
      r0.y = r11.y * r11.y;
      r0.y = r0.y * r11.y;
    } else {
      r0.y = 1;
    }
    r7.w = r7.w * r0.y;
  }
  r0.y = cmp(0 < r0.z);
  r2.w = cmp(0 < r7.w);
  if (r2.w != 0) {
    if (sunConstants.sunCookieIndex != 0) {
      r15.xyz = eyeOffset.xyz + v6.xyz;
      r15.w = 1;
      r2.w = dot(sunConstants.sunCookieTransform[0].xyzw, r15.xyzw);
      r10.w = dot(sunConstants.sunCookieTransform[1].xyzw, r15.xyzw);
      r15.x = frac(r2.w);
      r15.y = frac(r10.w);
      r2.w = -1 + (int14)sunConstants.sunCookieIndex;
      r15.z = (uint)r2.w;
      r11.yzw = gCookieArray.SampleLevel(samplerLinear_s, r15.xyz, 0).xyz;
      r11.yzw = float3(-1,-1,-1) + r11.yzw;
      r11.yzw = sunConstants.sunCookieIntensity * r11.yzw + float3(1,1,1);
      r11.yzw = sunConstants.color.xyz * r11.yzw;
    } else {
      r11.yzw = sunConstants.color.xyz;
    }
    r11.yzw = r11.yzw * r7.www;
    r2.w = r9.w + r0.z;
    r2.w = r0.z / r2.w;
    r14.yzw = r11.yzw * r2.www + r24.xyz;
    r15.xyz = -v6.xyz * r9.zzz + sunConstants.wldDir.xyz;
    r2.w = dot(r15.xyz, r15.xyz);
    r2.w = rsqrt(r2.w);
    r15.xyz = r15.xyz * r2.www;
    r2.w = saturate(dot(r2.xyz, r15.xyz));
    r7.w = saturate(dot(r15.xyz, r10.xyz));
    r9.z = r2.w * r2.w;
    r12.zw = r9.zz * specularLobeRoughnessControl.xz + float2(1,1);
    r12.zw = r12.zw * r12.zw;
    r12.zw = specularLobeRoughnessControl.yw / r12.zw;
    r12.zw = r12.zw * r2.ww;
    r2.w = 4 * r7.w;
    r12.zw = r12.zw / r2.ww;
    r12.zw = lobeWeightingThicknessRefraction.xy * r12.zw;
    r15.xyz = r12.zzz * r11.yzw;
    r15.xyz = r15.xyz * r0.zzz + r25.xyz;
    r11.yzw = r12.www * r11.yzw;
    r11.yzw = r11.yzw * r0.zzz + r15.xyz;
    r12.zw = float2(1.40129846e-45,1.40129846e-45);
  } else {
    r14.yzw = r24.xyz;
    r11.yzw = r25.xyz;
    r12.zw = float2(0,0);
  }
  r14.yzw = r0.yyy ? r14.yzw : r24.xyz;
  r11.yzw = r0.yyy ? r11.yzw : r25.xyz;
  r0.yz = r0.yy ? r12.zw : 0;
  r15.x = -r12.x;
  r17.xy = float2(0,0);
  r18.w = 0;
  r19.xyz = v6.xyz;
  r19.w = 1;
  r20.w = 1;
  r15.z = r12.x;
  r21.z = 1;
  r22.w = 1;
  r15.yw = r13.xx;
  r12.y = r15.w;
  r24.w = 1;
  r13.y = r15.x;
  r13.z = r12.x;
  r25.x = r13.x;
  r25.y = r15.x;
  r25.z = r12.x;
  r26.y = 1;
  r26.xz = r0.zy;
  r27.xyz = r14.yzw;
  r28.xyz = r11.yzw;
  r2.w = enableDitheredShadow;
  r7.w = 0;
  while (true) {
    r9.z = cmp((uint)r7.w >= numLights);
    if (r9.z != 0) break;
    r17.z = (uint)r7.w >> 5;
    r18.xyz = (int3)r16.xyz + (int3)r17.xyz;
    r9.z = visibleLights.Load(r18.xyzw).x;
    r18.xyz = r27.xyz;
    r29.xyz = r28.xyz;
    r10.w = r2.w;
    r12.zw = r26.yz;
    r13.w = r26.x;
    r16.w = r9.z;
    while (true) {
      if (r16.w == 0) break;
      r17.z = firstbitlow((uint)r16.w);
      r17.w = 1 << (int)r17.z;
      r21.w = (int)r16.w & (int)r17.w;
      if (r21.w != 0) {
        r16.w = (int)r16.w ^ (int)r17.w;
        r17.z = (int)r7.w + (int)r17.z;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r17.z, l(0), t12.xyzw
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
      r30.z = samp0[]..swiz;
      r30.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xy, r17.z, l(16), t12.xyxx
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r17.z, l(28), t12.xyzw
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r17.z, l(44), t12.xyzw
      r33.x = samp0[]..swiz;
      r33.y = samp0[]..swiz;
      r33.z = samp0[]..swiz;
      r33.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r17.z, l(60), t12.zwxy
      r34.x = samp0[]..swiz;
      r34.y = samp0[]..swiz;
      r34.z = samp0[]..swiz;
      r34.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r17.z, l(76), t12.xyzw
      r35.x = samp0[]..swiz;
      r35.y = samp0[]..swiz;
      r35.z = samp0[]..swiz;
      r35.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r17.z, l(92), t12.zwxy
      r36.x = samp0[]..swiz;
      r36.y = samp0[]..swiz;
      r36.z = samp0[]..swiz;
      r36.w = samp0[]..swiz;
        if (3 == 0) r17.w = 0; else if (3+24 < 32) {         r17.w = (uint)r32.x << (32-(3 + 24)); r17.w = (uint)r17.w >> (32-3);        } else r17.w = (uint)r32.x >> 24;
        switch (r17.w) {
          case 4 :          r17.w = cmp(0 < r36.x);
          r37.x = r35.w;
          r37.yz = r36.zw;
          r38.xyz = -r37.xyz * float3(0.5,0.5,0.5) + r30.xyz;
          r39.xyz = -v6.xyz + r38.xyz;
          r21.w = dot(r37.xyz, r39.xyz);
          r21.w = saturate(-r21.w / r36.x);
          r37.xyz = r21.www * r37.xyz + r38.xyz;
          r37.xyz = r17.www ? r37.xyz : r30.xyz;
          r37.xyz = -v6.xyz + r37.xyz;
          r17.w = dot(r37.xyz, r37.xyz);
          r21.w = rsqrt(r17.w);
          r38.xyz = r37.xyz * r21.www;
          r23.x = dot(r2.xyz, r38.xyz);
          r23.y = saturate(r23.x);
          r23.y = useSpecularZFeather ? abs(r23.x) : r23.y;
          r25.w = cmp(0 < r23.y);
          if (r25.w != 0) {
            r25.w = sqrt(r17.w);
            r27.w = r33.y * r33.y;
            r17.w = r27.w / r17.w;
            r17.w = min(1, r17.w);
            r27.w = saturate(r25.w * r32.y + r32.z);
            r25.w = saturate(r25.w * r32.w + r33.x);
            r28.w = r27.w * r27.w;
            r27.w = r27.w * -2 + 3;
            r27.w = r28.w * r27.w;
            r17.w = r27.w * r17.w;
            r27.w = r25.w * r25.w;
            r25.w = r25.w * -2 + 3;
            r25.w = r27.w * r25.w;
            r17.w = r25.w * r17.w;
            r25.w = cmp(0 < r17.w);
            if (r25.w != 0) {
              r12.w = (int)r12.w + 1;
              if (3 == 0) r38.x = 0; else if (3+27 < 32) {               r38.x = (uint)r32.x << (32-(3 + 27)); r38.x = (uint)r38.x >> (32-3);              } else r38.x = (uint)r32.x >> 27;
              if (4 == 0) r38.y = 0; else if (4+20 < 32) {               r38.y = (uint)r32.x << (32-(4 + 20)); r38.y = (uint)r38.y >> (32-4);              } else r38.y = (uint)r32.x >> 20;
              r25.w = cmp((int)r38.x != 1);
              if (r25.w != 0) {
                r25.w = abs(r23.x) * -0.200000003 + 0.400000006;
                r27.w = cmp(r23.x < 0);
                r27.w = r9.x ? r27.w : 0;
                r25.w = r27.w ? -r25.w : r25.w;
                r38.xzw = r2.xyz * r25.www + v6.xyz;
                r34.z = r35.x;
                r38.xzw = r38.xzw + -r34.xyz;
                r25.w = max(abs(r38.z), abs(r38.w));
                r25.w = max(abs(r38.x), r25.w);
                r25.w = r35.y / r25.w;
                r25.w = r25.w + r35.z;
                r27.w = dot(r38.xzw, r38.xzw);
                r27.w = rsqrt(r27.w);
                r25.w = max(6.10351563e-05, r25.w);
                r28.w = (int)r32.x & 0x0000ffff;
                r39.w = (uint)r28.w;
                r28.w = 0;
                r29.w = 0;
                while (true) {
                  r37.w = cmp((int)r29.w >= 8);
                  if (r37.w != 0) break;
                  r40.y = dot(icb[r29.w+0].yx, r15.xy);
                  r40.z = dot(icb[r29.w+0].yx, r15.yz);
                  r40.yz = r40.yz * r33.zz;
                  r40.x = r40.y * r14.x;
                  r40.w = r40.y * r11.x;
                  r39.xyz = r38.xzw * r27.www + r40.xzw;
                  r37.w = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyzw, r25.w).x;
                  r28.w = r37.w * 0.125 + r28.w;
                  r29.w = (int)r29.w + 1;
                }
              } else {
                r28.w = 1;
              }
              r17.w = r28.w * r17.w;
              if (r38.y != 0) {
                r25.w = (int)r38.y + numLights;
                r25.w = (int)r25.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.w, r25.w, l(52), t12.xxxx
              r27.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r25.w, l(100), t12.xyzw
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r25.w, l(116), t12.xyzw
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
                r29.w = abs(r23.x) * -0.200000003 + 0.400000006;
                r23.x = cmp(r23.x < 0);
                r23.x = r9.x ? r23.x : 0;
                r23.x = r23.x ? -r29.w : r29.w;
                r20.xyz = r2.xyz * r23.xxx + v6.xyz;
                r23.x = dot(r38.xyzw, r20.xyzw);
                r29.w = dot(r39.xyzw, r20.xyzw);
                r37.w = cmp(r29.w < r23.x);
                if (r37.w == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r25.w, l(68), t12.xyzw
                r38.x = samp0[]..swiz;
                r38.y = samp0[]..swiz;
                r38.z = samp0[]..swiz;
                r38.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r25.w, l(84), t12.xyzw
                r39.x = samp0[]..swiz;
                r39.y = samp0[]..swiz;
                r39.z = samp0[]..swiz;
                r39.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r25.w, l(132), t12.xyzw
                r40.x = samp0[]..swiz;
                r40.y = samp0[]..swiz;
                r40.z = samp0[]..swiz;
                r40.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r41.xyzw, r25.w, l(148), t12.xyzw
                r41.x = samp0[]..swiz;
                r41.y = samp0[]..swiz;
                r41.z = samp0[]..swiz;
                r41.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xy, r25.w, l(164), t12.xyxx
                r42.x = samp0[]..swiz;
                r42.y = samp0[]..swiz;
                  r38.x = dot(r38.xyzw, r20.xyzw);
                  r38.y = dot(r39.xyzw, r20.xyzw);
                  r20.xy = r38.xy / r29.ww;
                  r20.xy = r20.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r20.xy = r20.xy + r41.zw;
                  r20.xy = r20.xy * r41.xy;
                  r38.xy = r27.ww / r40.xz;
                  r38.zw = float2(1,1) + -r38.xy;
                  r38.zw = cmp(r20.xy >= r38.zw);
                  r38.xy = cmp(r38.xy >= r20.xy);
                  r38.xy = (int2)r38.xy | (int2)r38.zw;
                  r20.z = (int)r38.y | (int)r38.x;
                  r20.xy = saturate(r20.xy);
                  r38.xy = r20.xy * r40.xz + r40.yw;
                  r20.x = r42.y * r29.w;
                  r20.y = r42.x * r29.w + r23.x;
                  r20.x = r20.y / r20.x;
                } else {
                  r20.z = -1;
                }
                r20.y = (int)r37.w | (int)r20.z;
                if (r20.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.y, r25.w, l(28), t12.xxxx
                r20.y = samp0[]..swiz;
                  r20.x = max(6.10351563e-05, r20.x);
                  r20.y = (int)r20.y & 0x0000ffff;
                  if (r10.w != 0) {
                    r39.z = (uint)r20.y;
                    r20.z = 0;
                    r23.x = 0;
                    while (true) {
                      r25.w = cmp((int)r23.x >= 8);
                      if (r25.w != 0) break;
                      r40.x = dot(icb[r23.x+0].yx, r15.xw);
                      r40.y = dot(icb[r23.x+0].xy, r12.xy);
                      r39.xy = r40.xy * r27.ww + r38.xy;
                      r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r39.xyz, r20.x).x;
                      r20.z = r25.w * 0.125 + r20.z;
                      r23.x = (int)r23.x + 1;
                    }
                  } else {
                    r38.z = (uint)r20.y;
                    r20.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r38.xyz, r20.x).x;
                  }
                  r20.x = r20.z * r20.z;
                  r20.x = r20.x * r20.z;
                } else {
                  r20.x = 1;
                }
                r17.w = r20.x * r17.w;
              }
              r20.x = cmp(0 < r17.w);
              if (r20.x != 0) {
                r13.w = (int)r13.w + 1;
                r31.z = r30.w;
                r38.xyz = r17.www * r31.zxy;
                r17.w = r23.y + r9.w;
                r17.w = r23.y / r17.w;
                r18.xyz = r38.xyz * r17.www + r18.xyz;
                r37.xyz = r37.xyz * r21.www + r10.xyz;
                r17.w = dot(r37.xyz, r37.xyz);
                r17.w = rsqrt(r17.w);
                r37.xyz = r37.xyz * r17.www;
                r17.w = saturate(dot(r2.xyz, r37.xyz));
                r20.x = saturate(dot(r37.xyz, r10.xyz));
                r20.y = r17.w * r17.w;
                r37.xy = r20.yy * specularLobeRoughnessControl.xz + float2(1,1);
                r37.xy = r37.xy * r37.xy;
                r37.xy = specularLobeRoughnessControl.yw / r37.xy;
                r37.xy = r37.xy * r17.ww;
                r17.w = 4 * r20.x;
                r20.xy = r37.xy / r17.ww;
                r20.xy = lobeWeightingThicknessRefraction.xy * r20.xy;
                r37.xyz = r38.xyz * r20.xxx;
                r37.xyz = r37.xyz * r23.yyy + r29.xyz;
                r38.xyz = r38.xyz * r20.yyy;
                r29.xyz = r38.xyz * r23.yyy + r37.xyz;
              }
            }
          }
          break;
          case 2 :          r37.x = r33.w;
          r37.yz = r34.zw;
          r37.xyz = -v6.xyz + r37.xyz;
          r17.w = dot(r37.xyz, r37.xyz);
          r17.w = rsqrt(r17.w);
          r38.xyz = r37.xyz * r17.www;
          r20.x = dot(r2.xyz, r38.xyz);
          r20.y = saturate(r20.x);
          r20.y = useSpecularZFeather ? abs(r20.x) : r20.y;
          r21.w = cmp(0 < r20.y);
          if (r21.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r17.z, l(108), t12.zwxy
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r17.z, l(124), t12.xyzw
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
          r39.z = samp0[]..swiz;
          r39.w = samp0[]..swiz;
            r40.xy = r38.xy;
            r40.zw = r39.xy;
            r21.w = dot(r40.xyzw, r19.xyzw);
            r23.x = cmp(r21.w < 1);
            if (r23.x != 0) {
              r41.xyz = float3(1,1,1);
              r23.x = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r42.xyzw, r17.z, l(172), t12.yzwx
            r42.x = samp0[]..swiz;
            r42.y = samp0[]..swiz;
            r42.z = samp0[]..swiz;
            r42.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r43.xyzw, r17.z, l(188), t12.wxyz
            r43.x = samp0[]..swiz;
            r43.y = samp0[]..swiz;
            r43.z = samp0[]..swiz;
            r43.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r44.xyzw, r17.z, l(204), t12.xyzw
            r44.x = samp0[]..swiz;
            r44.y = samp0[]..swiz;
            r44.z = samp0[]..swiz;
            r44.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r23.y, r17.z, l(236), t12.xxxx
            r23.y = samp0[]..swiz;
              r30.xyz = -v6.xyz + r30.xyz;
              r25.w = r33.y * r33.y;
              r27.w = dot(r30.xyz, r30.xyz);
              r25.w = r25.w / r27.w;
              r25.w = min(1, r25.w);
              r27.w = saturate(r21.w * r32.y + r32.z);
              r29.w = saturate(r21.w * r32.w + r33.x);
              r30.x = r27.w * r27.w;
              r27.w = r27.w * -2 + 3;
              r27.w = r30.x * r27.w;
              r25.w = r27.w * r25.w;
              r27.w = r29.w * r29.w;
              r29.w = r29.w * -2 + 3;
              r27.w = r29.w * r27.w;
              r25.w = r27.w * r25.w;
              r34.zw = r35.xy;
              r30.x = dot(r34.xyzw, r19.xyzw);
              r45.xy = r35.zw;
              r45.zw = r36.zw;
              r30.y = dot(r45.xyzw, r19.xyzw);
              r21.xy = r30.xy / r21.ww;
              r21.w = cmp(r42.w < 0.00048828125);
              if (r21.w != 0) {
                r43.y = r44.x;
                r30.xy = saturate(abs(r21.xy) * r43.zw + r43.xy);
                r32.yz = r30.xy * r30.xy;
                r30.xy = r30.xy * float2(-2,-2) + float2(3,3);
                r30.xy = r32.yz * r30.xy;
                r21.w = r30.x * r30.y;
              } else {
                r42.w = r43.y;
                r42.xyzw = saturate(r42.xyzw * abs(r21.yyxx));
                r42.xyzw = log2(r42.xyzw);
                r42.xyzw = r43.xxxx * r42.xyzw;
                r42.xyzw = exp2(r42.xyzw);
                r30.xy = r42.xy + r42.zw;
                r30.xy = log2(r30.xy);
                r30.xy = r44.xx * r30.xy;
                r30.xy = exp2(r30.xy);
                r27.w = r43.z * r30.x;
                r29.w = r43.w * r30.y + -1;
                r27.w = r43.w * r30.y + -r27.w;
                r27.w = saturate(r29.w / r27.w);
                r29.w = r27.w * r27.w;
                r27.w = r27.w * -2 + 3;
                r21.w = r29.w * r27.w;
              }
              r23.x = r25.w * r21.w;
              r21.w = (int)r23.y & 255;
              if (r21.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyz, r17.z, l(220), t12.xyzx
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
                r23.y = dot(r44.yzw, r21.xyz);
                r21.x = dot(r30.xyz, r21.xyz);
                r30.x = frac(r23.y);
                r30.y = frac(r21.x);
                r21.x = (int)r21.w + -1;
                r30.z = (uint)r21.x;
                r41.xyz = gCookieArray.SampleLevel(samplerLinear_s, r30.xyz, 0).xyz;
              } else {
                r41.xyz = float3(1,1,1);
              }
            }
            r31.w = r30.w;
            r21.xyw = r41.xyz * r31.wxy;
            r23.y = cmp(0 < r23.x);
            if (r23.y != 0) {
              r12.w = (int)r12.w + 1;
              if (3 == 0) r30.x = 0; else if (3+27 < 32) {               r30.x = (uint)r32.x << (32-(3 + 27)); r30.x = (uint)r30.x >> (32-3);              } else r30.x = (uint)r32.x >> 27;
              if (4 == 0) r30.y = 0; else if (4+20 < 32) {               r30.y = (uint)r32.x << (32-(4 + 20)); r30.y = (uint)r30.y >> (32-4);              } else r30.y = (uint)r32.x >> 20;
              r23.y = cmp((int)r30.x != 1);
              if (r23.y != 0) {
                r23.y = abs(r20.x) * -0.200000003 + 0.400000006;
                r25.w = cmp(r20.x < 0);
                r25.w = r9.x ? r25.w : 0;
                r23.y = r25.w ? -r23.y : r23.y;
                r22.xyz = r2.xyz * r23.yyy + v6.xyz;
                r38.xy = r36.xy;
                r23.y = dot(r38.xyzw, r22.xyzw);
                r25.w = dot(r40.xyzw, r22.xyzw);
                r27.w = cmp(r25.w >= r23.y);
                if (r27.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xy, r17.z, l(140), t12.xyxx
                r39.x = samp0[]..swiz;
                r39.y = samp0[]..swiz;
                  r34.zw = r35.xy;
                  r31.x = dot(r34.xyzw, r22.xyzw);
                  r36.xy = r35.zw;
                  r31.y = dot(r36.xyzw, r22.xyzw);
                  r22.xy = r31.xy / r25.ww;
                  r22.xy = saturate(r22.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r22.xy = r22.xy * r39.zx + r39.wy;
                  r17.z = r23.y / r25.w;
                  r17.z = max(6.10351563e-05, r17.z);
                  r23.y = (int)r32.x & 0x0000ffff;
                  if (r10.w != 0) {
                    r31.z = (uint)r23.y;
                    r25.w = 0;
                    r27.w = 0;
                    while (true) {
                      r29.w = cmp((int)r27.w >= 8);
                      if (r29.w != 0) break;
                      r32.x = dot(icb[r27.w+0].xy, r13.xy);
                      r32.y = dot(icb[r27.w+0].yx, r13.xz);
                      r31.xy = r32.xy * r33.zz + r22.xy;
                      r29.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r31.xyz, r17.z).x;
                      r25.w = r29.w * 0.125 + r25.w;
                      r27.w = (int)r27.w + 1;
                    }
                  } else {
                    r22.z = (uint)r23.y;
                    r25.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r22.xyz, r17.z).x;
                  }
                  r17.z = r25.w * r25.w;
                  r17.z = r17.z * r25.w;
                } else {
                  r17.z = 1;
                }
              } else {
                r17.z = 1;
              }
              r17.z = r23.x * r17.z;
              if (r30.y != 0) {
                r22.x = (int)r30.y + numLights;
                r22.x = (int)r22.x + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r22.y, r22.x, l(52), t12.xxxx
              r22.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r22.x, l(68), t12.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r22.x, l(84), t12.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r22.x, l(100), t12.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r33.xyzw, r22.x, l(116), t12.xyzw
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r22.x, l(132), t12.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r22.x, l(148), t12.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
                r22.z = abs(r20.x) * -0.200000003 + 0.400000006;
                r20.x = cmp(r20.x < 0);
                r20.x = r9.x ? r20.x : 0;
                r20.x = r20.x ? -r22.z : r22.z;
                r24.xyz = r2.xyz * r20.xxx + v6.xyz;
                r23.x = dot(r30.xyzw, r24.xyzw);
                r23.y = dot(r31.xyzw, r24.xyzw);
                r20.x = dot(r32.xyzw, r24.xyzw);
                r22.z = dot(r33.xyzw, r24.xyzw);
                r24.x = cmp(r22.z < r20.x);
                r23.xy = r23.xy / r22.zz;
                r23.xy = r23.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r23.xy = r23.xy + r35.zw;
                r23.xy = r23.xy * r35.xy;
                r24.yz = r22.yy / r34.xz;
                r30.xy = float2(1,1) + -r24.yz;
                r30.xy = cmp(r23.xy >= r30.xy);
                r24.yz = cmp(r24.yz >= r23.xy);
                r24.yz = (int2)r24.yz | (int2)r30.xy;
                r24.y = (int)r24.z | (int)r24.y;
                r24.x = (int)r24.x | (int)r24.y;
                if (r24.x == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.x, r22.x, l(28), t12.xxxx
                r24.x = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.yz, r22.x, l(164), t12.xxyx
                r24.y = samp0[]..swiz;
                r24.z = samp0[]..swiz;
                  r23.xy = saturate(r23.xy);
                  r30.xy = r23.xy * r34.xz + r34.yw;
                  r22.x = r24.z * r22.z;
                  r20.x = r24.y * r22.z + r20.x;
                  r20.x = r20.x / r22.x;
                  r20.x = max(6.10351563e-05, r20.x);
                  r22.x = r24.x ? 0.000000 : 0;
                  if (r10.w != 0) {
                    r24.z = (uint)r22.x;
                    r22.z = 0;
                    r23.x = 0;
                    while (true) {
                      r23.y = cmp((int)r23.x >= 8);
                      if (r23.y != 0) break;
                      r31.x = dot(icb[r23.x+0].xy, r25.xy);
                      r31.y = dot(icb[r23.x+0].yx, r25.xz);
                      r24.xy = r31.xy * r22.yy + r30.xy;
                      r23.y = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r24.xyz, r20.x).x;
                      r22.z = r23.y * 0.125 + r22.z;
                      r23.x = (int)r23.x + 1;
                    }
                  } else {
                    r30.z = (uint)r22.x;
                    r22.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r30.xyz, r20.x).x;
                  }
                  r20.x = r22.z * r22.z;
                  r20.x = r20.x * r22.z;
                } else {
                  r20.x = 1;
                }
                r17.z = r20.x * r17.z;
              }
              r20.x = cmp(0 < r17.z);
              if (r20.x != 0) {
                r13.w = (int)r13.w + 1;
                r21.xyw = r17.zzz * r21.xyw;
                r17.z = r20.y + r9.w;
                r17.z = r20.y / r17.z;
                r18.xyz = r21.xyw * r17.zzz + r18.xyz;
                r24.xyz = r37.xyz * r17.www + r10.xyz;
                r17.z = dot(r24.xyz, r24.xyz);
                r17.z = rsqrt(r17.z);
                r24.xyz = r24.xyz * r17.zzz;
                r17.z = saturate(dot(r2.xyz, r24.xyz));
                r17.w = saturate(dot(r24.xyz, r10.xyz));
                r20.x = r17.z * r17.z;
                r22.xy = r20.xx * specularLobeRoughnessControl.xz + float2(1,1);
                r22.xy = r22.xy * r22.xy;
                r22.xy = specularLobeRoughnessControl.yw / r22.xy;
                r22.xy = r22.xy * r17.zz;
                r17.z = 4 * r17.w;
                r17.zw = r22.xy / r17.zz;
                r17.zw = lobeWeightingThicknessRefraction.xy * r17.zw;
                r24.xyz = r21.xyw * r17.zzz;
                r24.xyz = r24.xyz * r20.yyy + r29.xyz;
                r21.xyw = r21.xyw * r17.www;
                r29.xyz = r21.xyw * r20.yyy + r24.xyz;
              }
            }
          }
          break;
          default :
          break;
        }
        r12.z = (int)r12.z + 1;
      }
    }
    r27.xyz = r18.xyz;
    r28.xyz = r29.xyz;
    r26.yz = r12.zw;
    r26.x = r13.w;
    r7.w = (int)r7.w + 32;
  }
  r0.y = gameTime.w * flowParams.y;
  r2.zw = r4.zw * float2(-1,1) + float2(1,-1);
  r2.zw = r2.zw * r0.yy + r1.xy;
  r10.xyzw = decalMap.SampleLevel(decalSampler_s, r2.zw, r6.x).xyzw;
  r2.zw = r5.xy * float2(-1,1) + float2(1,-1);
  r2.zw = r2.zw * r0.yy + r1.xy;
  r9.xzw = decalMap.SampleLevel(decalSampler_s, r2.zw, r6.x).xyz;
  r9.xzw = r9.xzw + -r10.xyz;
  r9.xzw = r4.xxx * r9.xzw + r10.xyz;
  r2.zw = r5.zw * float2(-1,1) + float2(1,-1);
  r2.zw = r2.zw * r0.yy + r1.xy;
  r5.xyz = decalMap.SampleLevel(decalSampler_s, r2.zw, r6.x).xyz;
  r1.zw = r1.zw * float2(-1,1) + float2(1,-1);
  r0.yz = r1.zw * r0.yy + r1.xy;
  r1.xyz = decalMap.SampleLevel(decalSampler_s, r0.yz, r6.x).xyz;
  r1.xyz = r1.xyz + -r5.xyz;
  r1.xyz = r4.xxx * r1.xyz + r5.xyz;
  r1.xyz = r1.xyz + -r9.xzw;
  r10.xyz = r4.yyy * r1.xyz + r9.xzw;
  r1.xyzw = decalTint.xyzw * r10.xyzw;
  r0.y = 1 + r7.y;
  r0.y = log2(r0.y);
  r0.y = lobeWeightingThicknessRefraction.w * r0.y;
  r0.y = min(500, r0.y);
  r0.yz = r0.yy * r2.xy + v0.xy;
  r2.xy = float2(-1,-1) + renderTargetSize.xy;
  r0.yz = max(float2(0,0), r0.yz);
  r0.yz = min(r0.yz, r2.xy);
  r2.xy = (int2)r0.yz;
  r2.zw = float2(0,0);
  r2.x = ifloatZScene.Load(r2.xyz).x;
  r2.y = cmp(r2.x >= 0.984375);
  r2.z = 1.01587307 * r2.x;
  r2.x = r2.x * 64 + -63;
  r2.x = r2.y ? r2.x : r2.z;
  r2.x = max(9.99999994e-09, r2.x);
  r2.x = rcp(r2.x);
  r0.x = cmp(r0.x < r2.x);
  r0.yz = renderTargetSize.zw * r0.yz;
  r2.xyz = iResolveScene.Sample(pointClamp_s, r0.yz).xyz;
  if (r0.x == 0) {
    r4.xy = (int2)v0.xy;
    r4.zw = float2(0,0);
    r2.xyz = iResolveScene.Load(r4.xyz).xyz;
  }
  r0.xyz = relHDRExposure.xxx * r2.xyz;
  r2.w = r7.y * 2 + 1;
  r2.w = log2(r2.w);
  r23.z = 0.0833333358 * r2.w;
  r4.xyzw = rColorRamp.Sample(bilinearClamp_s, r23.zw).xyzw;
  r4.xyz = r4.xyz * r0.xyz;
  r1.w = r4.w * r1.w;
  r1.xyz = r1.xyz * r27.xyz + -r4.xyz;
  r1.xyz = r1.www * r1.xyz + r4.xyz;
  r1.xyz = -r2.xyz * relHDRExposure.xxx + r1.xyz;
  r0.xyz = r7.zzz * r1.xyz + r0.xyz;
  r1.xyz = r3.xzw * r27.xyz + -r0.xyz;
  r0.xyz = r8.www * r1.xyz + r0.xyz;
  r1.xyz = r28.xyz * r0.www + r8.xyz;
  r0.w = 1 + -r7.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = r0.w * 0.980000019 + 0.0199999996;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  r1.xyz = foamColor.xyz * r27.xyz + -r0.xyz;
  r1.xyz = r9.yyy * r1.xyz + r0.xyz;
  r0.xyz = useFoam ? r1.xyz : r0.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r26.x = r26.y;
        break;
        case 2 :        r26.x = r26.z;
        break;
        case 3 :        break;
        case 4 :        r26.x = (int)r26.w & 255;
        break;
        case 5 :        if (8 == 0) r26.x = 0; else if (8+8 < 32) {         r26.x = (uint)r26.w << (32-(8 + 8)); r26.x = (uint)r26.x >> (32-8);        } else r26.x = (uint)r26.w >> 8;
        break;
        default :
        r26.x = 0;
        break;
      }
      r0.w = (uint)r26.x;
      r1.xyz = r0.www * float3(50,50,50) + -r0.xyz;
      r0.xyz = drawNumLightsAlpha * r1.xyz + r0.xyz;
    }
  }
  r0.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r0.w != 0) {
    r0.w = sqrt(r3.y);
    r1.x = cmp(0 < fogConstants.blendAmount);
    if (r1.x != 0) {
      r1.xy = r0.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r1.xy = fogConstants.atmospherefogdensityatcamera.xy * r1.xy;
      r1.z = cmp(0.00999999978 < abs(v6.z));
      r2.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r2.zw = float2(-1.44269502,-1.44269502) * r2.xy;
      r2.zw = exp2(r2.zw);
      r2.zw = float2(1,1) + -r2.zw;
      r2.xy = r2.zw / r2.xy;
      r2.xy = r2.xy * r1.xy;
      r1.xy = r1.zz ? r2.xy : r1.xy;
      r1.xzw = fogConstants.atmosphereTotalDensity.xyz * r1.xxx;
      r1.xzw = exp2(r1.xzw);
      r2.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.yyy;
      r2.xyz = exp2(r2.xyz);
      r2.xyz = r2.xyz + -r1.xzw;
      r1.xyz = fogConstants.blendAmount * r2.xyz + r1.xzw;
    } else {
      r1.w = r0.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r1.w = fogConstants.atmospherefogdensityatcamera.x * r1.w;
      r2.x = cmp(0.00999999978 < abs(v6.z));
      r2.y = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r2.z = -1.44269502 * r2.y;
      r2.z = exp2(r2.z);
      r2.z = 1 + -r2.z;
      r2.y = r2.z / r2.y;
      r2.y = r2.y * r1.w;
      r1.w = r2.x ? r2.y : r1.w;
      r2.xyz = fogConstants.atmosphereTotalDensity.xyz * r1.www;
      r1.xyz = exp2(r2.xyz);
    }
    r1.xyz = r1.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r1.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r1.xyz);
    r1.w = dot(fogConstants.wldSunFogDir.xyz, -r6.yzw);
    r2.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r2.y = fogConstants.atmosphereMieSchlickK * -r1.w + 1;
    r2.y = r2.y * r2.y;
    r2.y = 12.566371 * r2.y;
    r2.x = r2.x / r2.y;
    r0.w = -fogConstants.atmospherehazebasedist + r0.w;
    r0.w = saturate(fogConstants.atmospherehazefadedist * r0.w);
    r0.w = r2.x * r0.w;
    r1.w = saturate(r1.w);
    r1.w = r1.w * r1.w + 1;
    r1.w = r1.w * 0.0596831031 + -1;
    r1.w = fogConstants.atmospheresunstrength * r1.w + 1;
    r2.xyz = fogConstants.atmosphereMieDensity.xyz * r0.www;
    r2.xyz = r1.www * fogConstants.atmosphereRayleighDensity.xyz + r2.xyz;
    r2.xyz = fogConstants.atmosphereInScatterIntensity * r2.xyz;
    r3.xzw = float3(1,1,1) + -r1.xyz;
    r2.xyz = r3.xzw * r2.xyz;
    r1.xyz = r0.xyz * r1.xyz + r2.xyz;
  } else {
    r0.w = fogConstants.heightFalloff * v6.z;
    r1.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
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
    r1.w = sqrt(r3.y);
    r0.w = r0.w * r1.w + fogConstants.expAdd;
    r0.w = exp2(r0.w);
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r6.yzw);
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