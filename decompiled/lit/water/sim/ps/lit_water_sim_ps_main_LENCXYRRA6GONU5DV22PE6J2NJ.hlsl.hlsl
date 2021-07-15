// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:43 2021

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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(v0.z >= 0.984375);
  r0.y = 1.01587307 * v0.z;
  r0.z = v0.z * 64 + -63;
  r0.x = r0.x ? r0.z : r0.y;
  r0.x = max(9.99999994e-09, r0.x);
  r0.x = rcp(r0.x);
  r1.xy = (uint2)v0.xy;
  r0.yzw = ddx_coarse(v6.xyz);
  r2.xyz = ddy_coarse(v6.xyz);
  r1.w = numRefProbes + numLights;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.w, v2.x, l(8), t4.xxxx
r2.w = samp0[]..swiz;
  r3.xy = (int2)r2.ww & int2(268435456,536870912);
  if (r3.x != 0) {
    r4.xyz = eyeOffset.xyz + v6.xyz;
    r2.w = 0.0078125 * r0.x;
    r2.w = min(15, r2.w);
    r2.w = (uint)r2.w;
    r5.xy = (uint2)r1.xy >> int2(6,6);
    r5.z = (uint)r2.w << 4;
    r2.w = numStaticDecals & -32;
    r3.x = (int)-r2.w + numStaticDecals;
    r6.xy = float2(0,0);
    r7.w = 0;
    r4.w = 1;
    r8.xyzw = float4(0,0,0,0);
    r9.xyz = float3(0,0,0);
    r3.z = 0;
    while (true) {
      r3.w = cmp((uint)r3.z >= numStaticDecals);
      if (r3.w != 0) break;
      r6.z = (uint)r3.z >> 5;
      r7.xyz = (int3)r5.xyz + (int3)r6.xyz;
      r3.w = visibleDecals.Load(r7.xyzw).x;
      r5.w = cmp((int)r2.w == (int)r3.z);
      if (r3.x == 0) r6.z = 0; else if (r3.x+0 < 32) {       r6.z = (uint)r3.w << (32-(r3.x + 0)); r6.z = (uint)r6.z >> (32-r3.x);      } else r6.z = (uint)r3.w >> 0;
      r3.w = r5.w ? r6.z : r3.w;
      r5.w = (int)r1.w + (int)r3.z;
      r10.xyzw = r8.xyzw;
      r7.xyz = r9.xyz;
      r6.z = r3.w;
      while (true) {
        if (r6.z == 0) break;
        r6.w = firstbitlow((uint)r6.z);
        r9.w = 1 << (int)r6.w;
        r11.x = (int)r6.z & (int)r9.w;
        if (r11.x != 0) {
          r6.z = (int)r6.z ^ (int)r9.w;
          r9.w = (int)r5.w + (int)r6.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r11.xyzw, r9.w, l(0), t11.xyzw
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        r11.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r9.w, l(16), t11.xyxx
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
          r11.xyz = -v6.xyz + r11.xyz;
          r12.z = r11.w;
          r11.xyz = cmp(abs(r11.xyz) < r12.zxy);
          r9.w = r11.y ? r11.x : 0;
          r9.w = r11.z ? r9.w : 0;
          if (r9.w != 0) {
            r6.w = (int)r3.z + (int)r6.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.xyz, r6.w, l(0), t36.xyzx
          r11.x = samp0[]..swiz;
          r11.y = samp0[]..swiz;
          r11.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.xyz, r6.w, l(16), t36.xyzx
          r12.x = samp0[]..swiz;
          r12.y = samp0[]..swiz;
          r12.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r13.xyz, r6.w, l(32), t36.xyzx
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
            r14.x = r11.x;
            r14.y = r12.x;
            r14.z = r13.x;
            r9.w = dot(r14.xyz, r14.xyz);
            r9.w = rsqrt(r9.w);
            r15.xyz = r14.xyz * r9.www;
            r9.w = dot(r15.xyz, v3.xyz);
            r9.w = cmp(r9.w >= 0.5);
            if (r9.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.xyw, r6.w, l(48), t36.xyxz
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
              r9.w = r11.y ? r11.x : 0;
              r9.w = r11.z ? r9.w : 0;
              if (r9.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.xyzw, r6.w, l(64), t36.xyzw
              r11.x = samp0[]..swiz;
              r11.y = samp0[]..swiz;
              r11.z = samp0[]..swiz;
              r11.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.xyzw, r6.w, l(80), t36.xyzw
              r12.x = samp0[]..swiz;
              r12.y = samp0[]..swiz;
              r12.z = samp0[]..swiz;
              r12.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r9.w, r6.w, l(108), t36.xxxx
              r9.w = samp0[]..swiz;
                r13.x = dot(r0.yzw, r16.xyz);
                r13.y = dot(r0.yzw, r15.xyz);
                r16.x = dot(r2.xyz, r16.xyz);
                r16.y = dot(r2.xyz, r15.xyz);
                r13.zw = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r14.xyz = float3(0.5,-0.5,0.5) * r13.xyx;
                r15.xyz = float3(0.5,-0.5,0.5) * r16.xyx;
                r12.yz = (int2)r12.yz & int2(65535,65535);
                if (r12.y != 0) {
                  if (4 == 0) r13.x = 0; else if (4+24 < 32) {                   r13.x = (uint)r12.w << (32-(4 + 24)); r13.x = (uint)r13.x >> (32-4);                  } else r13.x = (uint)r12.w >> 24;
                  r13.y = (uint)r12.w >> 28;
                  r13.xy = int2(1,1) << (int2)r13.xy;
                  r14.w = cmp((int)r12.y == 4);
                  if (r14.w != 0) {
                    r14.w = (int)r12.w & 4095;
                    if (12 == 0) r15.w = 0; else if (12+12 < 32) {                     r15.w = (uint)r12.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                    } else r15.w = (uint)r12.w >> 12;
                    r16.x = r9.w ? 0.000000 : 0;
                    r17.xyz = (uint3)r13.xyx;
                    r16.yz = r13.zw * r17.zy + float2(0.5,0.5);
                    r18.xy = float2(-0.5,-0.5) + r17.zy;
                    r16.yz = min(r18.xy, r16.yz);
                    r18.x = (uint)r14.w;
                    r18.y = (uint)r15.w;
                    r16.yz = r18.xy + r16.yz;
                    r18.xy = invBcTexSizes.xy * r16.yz;
                    r18.z = (uint)r16.x;
                    r16.xyz = invBcTexSizes.xyx * r14.zyz;
                    r16.xyz = r16.xyz * r17.xyz;
                    r19.xyz = invBcTexSizes.xyx * r15.zyz;
                    r17.xyz = r19.xyz * r17.xyz;
                    r16.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r18.xyz, r16.xyzx, r17.xyzx).xyzw;
                  } else {
                    r12.y = cmp((int)r12.y == 1);
                    if (r12.y != 0) {
                      r12.y = (int)r12.w & 4095;
                      if (12 == 0) r12.w = 0; else if (12+12 < 32) {                       r12.w = (uint)r12.w << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                      } else r12.w = (uint)r12.w >> 12;
                      r14.w = r9.w ? 0.000000 : 0;
                      r17.xyz = (uint3)r13.xyx;
                      r13.xy = r13.zw * r17.zy + float2(0.5,0.5);
                      r18.xy = float2(-0.5,-0.5) + r17.zy;
                      r13.xy = min(r18.xy, r13.xy);
                      r18.xy = (uint2)r12.yw;
                      r12.yw = r18.xy + r13.xy;
                      r18.xy = invBcTexSizes.zw * r12.yw;
                      r18.z = (uint)r14.w;
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
                  r12.y = r16.w * r11.w;
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
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r6.w, r6.w, l(100), t36.xxxx
                r6.w = samp0[]..swiz;
                  if (4 == 0) r12.x = 0; else if (4+24 < 32) {                   r12.x = (uint)r6.w << (32-(4 + 24)); r12.x = (uint)r12.x >> (32-4);                  } else r12.x = (uint)r6.w >> 24;
                  r12.y = (uint)r6.w >> 28;
                  r12.xy = int2(1,1) << (int2)r12.xy;
                  r12.w = cmp((int)r12.z == 2);
                  if (r12.w != 0) {
                    r12.w = (int)r6.w & 4095;
                    if (12 == 0) r13.x = 0; else if (12+12 < 32) {                     r13.x = (uint)r6.w << (32-(12 + 12)); r13.x = (uint)r13.x >> (32-12);                    } else r13.x = (uint)r6.w >> 12;
                    if (10 == 0) r13.y = 0; else if (10+20 < 32) {                     r13.y = (uint)r9.w << (32-(10 + 20)); r13.y = (uint)r13.y >> (32-10);                    } else r13.y = (uint)r9.w >> 20;
                    r16.xyz = (uint3)r12.xyx;
                    r17.xy = r13.zw * r16.zy + float2(0.5,0.5);
                    r17.zw = float2(-0.5,-0.5) + r16.zy;
                    r17.xy = min(r17.xy, r17.zw);
                    r18.x = (uint)r12.w;
                    r18.y = (uint)r13.x;
                    r17.xy = r18.xy + r17.xy;
                    r17.xy = invMaskTexSizes.xy * r17.xy;
                    r17.z = (uint)r13.y;
                    r18.xyz = invMaskTexSizes.xyx * r14.zyz;
                    r18.xyz = r18.xyz * r16.xyz;
                    r19.xyz = invMaskTexSizes.xyx * r15.zyz;
                    r16.xyz = r19.xyz * r16.xyz;
                    r12.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r17.xyz, r18.x, r16.x).x;
                  } else {
                    r12.z = cmp((int)r12.z == 4);
                    if (r12.z != 0) {
                      r12.z = (int)r6.w & 4095;
                      if (12 == 0) r13.x = 0; else if (12+12 < 32) {                       r13.x = (uint)r6.w << (32-(12 + 12)); r13.x = (uint)r13.x >> (32-12);                      } else r13.x = (uint)r6.w >> 12;
                      if (10 == 0) r13.y = 0; else if (10+20 < 32) {                       r13.y = (uint)r9.w << (32-(10 + 20)); r13.y = (uint)r13.y >> (32-10);                      } else r13.y = (uint)r9.w >> 20;
                      r16.xyz = (uint3)r12.xyx;
                      r17.xy = r13.zw * r16.zy + float2(0.5,0.5);
                      r17.zw = float2(-0.5,-0.5) + r16.zy;
                      r17.xy = min(r17.xy, r17.zw);
                      r18.x = (uint)r12.z;
                      r18.y = (uint)r13.x;
                      r17.xy = r18.xy + r17.xy;
                      r17.xy = invBcTexSizes.xy * r17.xy;
                      r17.z = (uint)r13.y;
                      r18.xyz = invBcTexSizes.xyx * r14.zyz;
                      r18.xyz = r18.xyz * r16.xyz;
                      r19.xyz = invBcTexSizes.xyx * r15.zyz;
                      r16.xyz = r19.xyz * r16.xyz;
                      r12.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r17.xyz, r18.x, r16.x).x;
                    } else {
                      r12.z = (int)r6.w & 4095;
                      if (12 == 0) r6.w = 0; else if (12+12 < 32) {                       r6.w = (uint)r6.w << (32-(12 + 12)); r6.w = (uint)r6.w >> (32-12);                      } else r6.w = (uint)r6.w >> 12;
                      if (10 == 0) r9.w = 0; else if (10+20 < 32) {                       r9.w = (uint)r9.w << (32-(10 + 20)); r9.w = (uint)r9.w >> (32-10);                      } else r9.w = (uint)r9.w >> 20;
                      r16.xyz = (uint3)r12.xyx;
                      r12.xy = r13.zw * r16.xy + float2(0.5,0.5);
                      r13.xy = float2(-0.5,-0.5) + r16.zy;
                      r12.xy = min(r13.xy, r12.xy);
                      r13.x = (uint)r12.z;
                      r13.y = (uint)r6.w;
                      r12.xy = r13.xy + r12.xy;
                      r12.xy = invBcTexSizes.zw * r12.xy;
                      r12.z = (uint)r9.w;
                      r13.xyz = invBcTexSizes.zwz * r14.xyz;
                      r13.xyz = r13.xyz * r16.xyz;
                      r14.xyz = invBcTexSizes.zwz * r15.xyz;
                      r14.xyz = r14.xyz * r16.xyz;
                      r12.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r12.xyz, r13.x, r14.x).x;
                    }
                  }
                  r12.xyz = r12.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r6.w = saturate(1 + -r12.w);
                  r11.xyz = r11.xyz * r6.www;
                } else {
                  r12.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r6.w = 1 + -r11.w;
                r13.xyz = r7.xyz * r6.www;
                r7.xyz = r11.xyz * r11.www + r13.xyz;
                r11.xyz = r10.xyz * r6.www;
                r10.xyz = r12.xyz * r11.www + r11.xyz;
                r10.w = r10.w * r6.w + r11.w;
              }
            }
          }
        }
      }
      r8.xyzw = r10.xyzw;
      r9.xyz = r7.xyz;
      r3.z = (int)r3.z + 32;
    }
  } else {
    r9.xyz = float3(0,0,0);
    r8.xyzw = float4(0,0,0,0);
  }
  if (r3.y != 0) {
    r3.xyz = eyeOffset.xyz + v6.xyz;
    r2.w = numDynamicDecals + numStaticDecals;
    r4.x = 0.0078125 * r0.x;
    r4.x = min(15, r4.x);
    r4.x = (uint)r4.x;
    r5.xy = (uint2)r1.xy >> int2(6,6);
    r5.z = (uint)r4.x << 4;
    r4.x = numStaticDecals & -32;
    r4.y = (int)-r4.x + numStaticDecals;
    r4.z = (int)r2.w & -32;
    r4.w = (int)r2.w + (int)-r4.z;
    r6.xy = float2(0,0);
    r7.w = 0;
    r3.w = 1;
    r10.xyzw = r8.xyzw;
    r11.xyz = r9.xyz;
    r5.w = r4.x;
    while (true) {
      r6.w = cmp((uint)r5.w >= (uint)r2.w);
      if (r6.w != 0) break;
      r6.z = (uint)r5.w >> 5;
      r7.xyz = (int3)r5.xyz + (int3)r6.xyz;
      r6.z = visibleDecals.Load(r7.xyzw).x;
      r6.w = cmp((int)r4.x == (int)r5.w);
      bitmask.x = ((~(-1 << r4.y)) << 0) & 0xffffffff;  r7.x = (((uint)0 << 0) & bitmask.x) | ((uint)r6.z & ~bitmask.x);
      r6.z = r6.w ? r7.x : r6.z;
      r6.w = cmp((int)r4.z == (int)r5.w);
      if (r4.w == 0) r7.x = 0; else if (r4.w+0 < 32) {       r7.x = (uint)r6.z << (32-(r4.w + 0)); r7.x = (uint)r7.x >> (32-r4.w);      } else r7.x = (uint)r6.z >> 0;
      r6.z = r6.w ? r7.x : r6.z;
      r6.w = (int)r1.w + (int)r5.w;
      r12.xyzw = r10.xyzw;
      r7.xyz = r11.xyz;
      r9.w = r6.z;
      while (true) {
        if (r9.w == 0) break;
        r11.w = firstbitlow((uint)r9.w);
        r13.x = 1 << (int)r11.w;
        r13.y = (int)r9.w & (int)r13.x;
        if (r13.y != 0) {
          r9.w = (int)r9.w ^ (int)r13.x;
          r13.x = (int)r6.w + (int)r11.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r14.xyzw, r13.x, l(0), t11.xyzw
        r14.x = samp0[]..swiz;
        r14.y = samp0[]..swiz;
        r14.z = samp0[]..swiz;
        r14.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r13.xy, r13.x, l(16), t11.xyxx
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
          r14.xyz = -v6.xyz + r14.xyz;
          r13.z = r14.w;
          r13.xyz = cmp(abs(r14.xyz) < r13.zxy);
          r13.x = r13.y ? r13.x : 0;
          r13.x = r13.z ? r13.x : 0;
          if (r13.x != 0) {
            r11.w = (int)r5.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r13.xyz, r11.w, l(0), t36.xyzx
          r13.x = samp0[]..swiz;
          r13.y = samp0[]..swiz;
          r13.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.xyz, r11.w, l(16), t36.xyzx
          r14.x = samp0[]..swiz;
          r14.y = samp0[]..swiz;
          r14.z = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.xyz, r11.w, l(32), t36.xyzx
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.z = samp0[]..swiz;
            r16.x = r13.x;
            r16.y = r14.x;
            r16.z = r15.x;
            r13.x = dot(r16.xyz, r16.xyz);
            r13.x = rsqrt(r13.x);
            r17.xyz = r16.xyz * r13.xxx;
            r13.x = dot(r17.xyz, v3.xyz);
            r13.x = cmp(r13.x >= 0.5);
            if (r13.x != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r17.xyw, r11.w, l(48), t36.xyxz
            r17.x = samp0[]..swiz;
            r17.y = samp0[]..swiz;
            r17.w = samp0[]..swiz;
              r16.w = r17.x;
              r16.x = dot(r3.xyzw, r16.xyzw);
              r18.x = r13.y;
              r18.y = r14.y;
              r18.z = r15.y;
              r18.w = r17.y;
              r16.y = dot(r3.xyzw, r18.xyzw);
              r17.x = r13.z;
              r17.y = r14.z;
              r17.z = r15.z;
              r16.z = dot(r3.xyzw, r17.xyzw);
              r13.xyz = cmp(abs(r16.xyz) < float3(1,1,1));
              r13.x = r13.y ? r13.x : 0;
              r13.x = r13.z ? r13.x : 0;
              if (r13.x != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r13.xyzw, r11.w, l(64), t36.xyzw
              r13.x = samp0[]..swiz;
              r13.y = samp0[]..swiz;
              r13.z = samp0[]..swiz;
              r13.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r14.xyzw, r11.w, l(80), t36.xyzw
              r14.x = samp0[]..swiz;
              r14.y = samp0[]..swiz;
              r14.z = samp0[]..swiz;
              r14.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.x, r11.w, l(108), t36.xxxx
              r15.x = samp0[]..swiz;
                r19.x = dot(r0.yzw, r18.xyz);
                r19.y = dot(r0.yzw, r17.xyz);
                r18.x = dot(r2.xyz, r18.xyz);
                r18.y = dot(r2.xyz, r17.xyz);
                r15.yz = r16.yz * float2(0.5,-0.5) + float2(0.5,0.5);
                r16.xyz = float3(0.5,-0.5,0.5) * r19.xyx;
                r17.xyz = float3(0.5,-0.5,0.5) * r18.xyx;
                r14.yz = (int2)r14.yz & int2(65535,65535);
                if (r14.y != 0) {
                  if (4 == 0) r15.w = 0; else if (4+24 < 32) {                   r15.w = (uint)r14.w << (32-(4 + 24)); r15.w = (uint)r15.w >> (32-4);                  } else r15.w = (uint)r14.w >> 24;
                  r15.w = 1 << (int)r15.w;
                  r16.w = (uint)r14.w >> 28;
                  r16.w = 1 << (int)r16.w;
                  r17.w = cmp((int)r14.y == 4);
                  if (r17.w != 0) {
                    r17.w = r14.w ? 0.000000 : 0;
                    if (12 == 0) r18.x = 0; else if (12+12 < 32) {                     r18.x = (uint)r14.w << (32-(12 + 12)); r18.x = (uint)r18.x >> (32-12);                    } else r18.x = (uint)r14.w >> 12;
                    r18.y = (int)r15.x & 1023;
                    r19.xz = (uint2)r15.ww;
                    r19.y = (uint)r16.w;
                    r18.zw = r15.yz * r19.zy + float2(0.5,0.5);
                    r20.xy = float2(-0.5,-0.5) + r19.zy;
                    r18.zw = min(r20.xy, r18.zw);
                    r20.x = (uint)r17.w;
                    r20.yz = (uint2)r18.xy;
                    r18.xz = r20.xy + r18.zw;
                    r20.xy = invBcTexSizes.xy * r18.xz;
                    r18.xyz = invBcTexSizes.xyx * r16.zyz;
                    r18.xyz = r18.xyz * r19.xyz;
                    r21.xyz = invBcTexSizes.xyx * r17.zyz;
                    r19.xyz = r21.xyz * r19.xyz;
                    r18.xyzw = materialTexBC7.SampleGrad(samplerLinearClamp_s, r20.xyz, r18.xyzx, r19.xyzx).xyzw;
                  } else {
                    r14.y = cmp((int)r14.y == 1);
                    if (r14.y != 0) {
                      r14.y = r14.w ? 0.000000 : 0;
                      if (12 == 0) r14.w = 0; else if (12+12 < 32) {                       r14.w = (uint)r14.w << (32-(12 + 12)); r14.w = (uint)r14.w >> (32-12);                      } else r14.w = (uint)r14.w >> 12;
                      r17.w = (int)r15.x & 1023;
                      r19.xz = (uint2)r15.ww;
                      r19.y = (uint)r16.w;
                      r20.xy = r15.yz * r19.zy + float2(0.5,0.5);
                      r20.zw = float2(-0.5,-0.5) + r19.zy;
                      r20.xy = min(r20.xy, r20.zw);
                      r21.xy = (uint2)r14.yw;
                      r14.yw = r21.xy + r20.xy;
                      r20.xy = invBcTexSizes.zw * r14.yw;
                      r20.z = (uint)r17.w;
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
                                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.w, r11.w, l(100), t36.xxxx
                r11.w = samp0[]..swiz;
                  if (4 == 0) r14.x = 0; else if (4+24 < 32) {                   r14.x = (uint)r11.w << (32-(4 + 24)); r14.x = (uint)r14.x >> (32-4);                  } else r14.x = (uint)r11.w >> 24;
                  r14.y = (uint)r11.w >> 28;
                  r14.xy = int2(1,1) << (int2)r14.xy;
                  r14.w = cmp((int)r14.z == 2);
                  if (r14.w != 0) {
                    r14.w = (int)r11.w & 4095;
                    if (12 == 0) r15.w = 0; else if (12+12 < 32) {                     r15.w = (uint)r11.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                    } else r15.w = (uint)r11.w >> 12;
                    if (10 == 0) r16.w = 0; else if (10+20 < 32) {                     r16.w = (uint)r15.x << (32-(10 + 20)); r16.w = (uint)r16.w >> (32-10);                    } else r16.w = (uint)r15.x >> 20;
                    r18.xyz = (uint3)r14.xyx;
                    r19.xy = r15.yz * r18.zy + float2(0.5,0.5);
                    r19.zw = float2(-0.5,-0.5) + r18.zy;
                    r19.xy = min(r19.xy, r19.zw);
                    r20.x = (uint)r14.w;
                    r20.y = (uint)r15.w;
                    r19.xy = r20.xy + r19.xy;
                    r19.xy = invMaskTexSizes.xy * r19.xy;
                    r19.z = (uint)r16.w;
                    r20.xyz = invMaskTexSizes.xyx * r16.zyz;
                    r20.xyz = r20.xyz * r18.xyz;
                    r21.xyz = invMaskTexSizes.xyx * r17.zyz;
                    r18.xyz = r21.xyz * r18.xyz;
                    r14.w = materialTexMask.SampleGrad(samplerLinearClamp_s, r19.xyz, r20.x, r18.x).x;
                  } else {
                    r14.z = cmp((int)r14.z == 4);
                    if (r14.z != 0) {
                      r14.z = (int)r11.w & 4095;
                      if (12 == 0) r15.w = 0; else if (12+12 < 32) {                       r15.w = (uint)r11.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                      } else r15.w = (uint)r11.w >> 12;
                      if (10 == 0) r16.w = 0; else if (10+20 < 32) {                       r16.w = (uint)r15.x << (32-(10 + 20)); r16.w = (uint)r16.w >> (32-10);                      } else r16.w = (uint)r15.x >> 20;
                      r18.xyz = (uint3)r14.xyx;
                      r19.xy = r15.yz * r18.zy + float2(0.5,0.5);
                      r19.zw = float2(-0.5,-0.5) + r18.zy;
                      r19.xy = min(r19.xy, r19.zw);
                      r20.x = (uint)r14.z;
                      r20.y = (uint)r15.w;
                      r19.xy = r20.xy + r19.xy;
                      r19.xy = invBcTexSizes.xy * r19.xy;
                      r19.z = (uint)r16.w;
                      r20.xyz = invBcTexSizes.xyx * r16.zyz;
                      r20.xyz = r20.xyz * r18.xyz;
                      r21.xyz = invBcTexSizes.xyx * r17.zyz;
                      r18.xyz = r21.xyz * r18.xyz;
                      r14.w = materialTexBC7.SampleGrad(samplerLinearClamp_s, r19.xyz, r20.x, r18.x).x;
                    } else {
                      r14.z = (int)r11.w & 4095;
                      if (12 == 0) r11.w = 0; else if (12+12 < 32) {                       r11.w = (uint)r11.w << (32-(12 + 12)); r11.w = (uint)r11.w >> (32-12);                      } else r11.w = (uint)r11.w >> 12;
                      if (10 == 0) r15.x = 0; else if (10+20 < 32) {                       r15.x = (uint)r15.x << (32-(10 + 20)); r15.x = (uint)r15.x >> (32-10);                      } else r15.x = (uint)r15.x >> 20;
                      r18.xyz = (uint3)r14.xyx;
                      r14.xy = r15.yz * r18.xy + float2(0.5,0.5);
                      r15.yz = float2(-0.5,-0.5) + r18.zy;
                      r14.xy = min(r15.yz, r14.xy);
                      r19.x = (uint)r14.z;
                      r19.y = (uint)r11.w;
                      r14.xy = r19.xy + r14.xy;
                      r14.xy = invBcTexSizes.zw * r14.xy;
                      r14.z = (uint)r15.x;
                      r15.xyz = invBcTexSizes.zwz * r16.xyz;
                      r15.xyz = r15.xyz * r18.xyz;
                      r16.xyz = invBcTexSizes.zwz * r17.xyz;
                      r16.xyz = r16.xyz * r18.xyz;
                      r14.w = materialTexBC3.SampleGrad(samplerLinearClamp_s, r14.xyz, r15.x, r16.x).x;
                    }
                  }
                  r14.xyz = r14.www * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                  r11.w = saturate(1 + -r14.w);
                  r13.xyz = r13.xyz * r11.www;
                } else {
                  r14.xyz = float3(0.0399999991,0.0399999991,0.0399999991);
                }
                r11.w = 1 + -r13.w;
                r15.xyz = r11.www * r7.xyz;
                r7.xyz = r13.xyz * r13.www + r15.xyz;
                r13.xyz = r12.xyz * r11.www;
                r12.xyz = r14.xyz * r13.www + r13.xyz;
                r12.w = r12.w * r11.w + r13.w;
              }
            }
          }
        }
      }
      r10.xyzw = r12.xyzw;
      r11.xyz = r7.xyz;
      r5.w = (int)r5.w + 32;
    }
    r8.xyzw = r10.xyzw;
    r9.xyz = r11.xyz;
  }
  r8.w = saturate(r8.w);
  r0.y = 1 + -r8.w;
  r0.zw = normalMapScale.xy * w1.xy;
  r2.xy = gameTime.ww * noiseParams.xy;
  r2.xy = w1.xy * noiseParams.zz + r2.xy;
  r2.xy = noiseMap.Sample(noiseSampler_s, r2.xy).xy;
  r2.xy = noiseParams.ww * r2.xy;
  r2.xy = w1.xy * flowParams.xx + r2.xy;
  r2.zw = frac(r2.xy);
  r3.xy = r2.zw * float2(-2,-2) + float2(3,3);
  r2.zw = r2.zw * r2.zw;
  r3.zw = r3.xy * r2.zw;
  normalMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r4.xy = fDest.xy;
  r4.xy = r4.xy * r0.zw;
  r4.zw = ddx_coarse(r4.xy);
  r4.xy = ddy_coarse(r4.xy);
  r1.w = dot(r4.zw, r4.zw);
  r4.x = dot(r4.xy, r4.xy);
  r1.w = max(r4.x, r1.w);
  r1.w = log2(r1.w);
  r1.w = 0.5 * r1.w;
  r4.xy = floor(r2.xy);
  r4.xy = r4.xy / flowParams.xx;
  r4.xy = flowMap.Sample(flowSampler_s, r4.xy).xy;
  r4.xy = r4.xy + r4.xy;
  r5.xyzw = float4(1,0,0,1) + r2.xyxy;
  r5.xyzw = floor(r5.xyzw);
  r5.xyzw = r5.xyzw / flowParams.xxxx;
  r4.zw = flowMap.Sample(flowSampler_s, r5.xy).xy;
  r4.zw = r4.zw + r4.zw;
  r5.xy = flowMap.Sample(flowSampler_s, r5.zw).xy;
  r5.xy = r5.xy + r5.xy;
  r2.xy = float2(1,1) + r2.xy;
  r2.xy = floor(r2.xy);
  r2.xy = r2.xy / flowParams.xx;
  r2.xy = flowMap.Sample(flowSampler_s, r2.xy).xy;
  r2.xy = r2.xy + r2.xy;
  if (useSpecularZFeather != 0) {
    r5.zw = flowMap.Sample(flowSampler_s, w1.xy).xy;
    r6.xy = r5.zw + r5.zw;
    r6.zw = r6.xy * float2(-1,1) + float2(1,-1);
    r5.zw = r6.xw * float2(-1,1) + float2(1,0);
    r5.z = dot(r6.zw, r5.zw);
    r5.z = sqrt(r5.z);
    r5.z = r5.z * normalsFlowScaleMin.y + normalsFlowScaleMin.x;
    r5.zw = normalAdjustAndGloss.xy * r5.zz;
  } else {
    r5.zw = normalAdjustAndGloss.xy;
  }
  r2.zw = -r3.xy * r2.zw + float2(1,1);
  r2.zw = r2.zw * r2.zw;
  r2.zw = r3.zw * r3.zw + r2.zw;
  r2.zw = rsqrt(r2.zw);
  if (useOrientedNormalMap == 0) {
    r3.x = gameTime.w * flowParams.y;
    r6.xy = r4.xy * float2(-1,1) + float2(1,-1);
    r6.xy = r6.xy * r3.xx + r0.zw;
    r6.xy = normalMap.SampleLevel(normalSampler_s, r6.xy, r1.w).xy;
    r6.zw = r4.zw * float2(-1,1) + float2(1,-1);
    r6.zw = r6.zw * r3.xx + r0.zw;
    r6.zw = normalMap.SampleLevel(normalSampler_s, r6.zw, r1.w).xy;
    r6.zw = r6.zw + -r6.xy;
    r6.xy = r3.zz * r6.zw + r6.xy;
    r6.zw = r5.xy * float2(-1,1) + float2(1,-1);
    r6.zw = r6.zw * r3.xx + r0.zw;
    r6.zw = normalMap.SampleLevel(normalSampler_s, r6.zw, r1.w).xy;
    r7.xy = r2.xy * float2(-1,1) + float2(1,-1);
    r0.zw = r7.xy * r3.xx + r0.zw;
    r0.zw = normalMap.SampleLevel(normalSampler_s, r0.zw, r1.w).xy;
    r0.zw = r0.zw + -r6.zw;
    r0.zw = r3.zz * r0.zw + r6.zw;
    r0.zw = r0.zw + -r6.xy;
    r0.zw = r3.ww * r0.zw + r6.xy;
    r0.zw = r0.zw * r5.zz + r5.ww;
  } else {
    r3.xy = r4.xy * float2(-1,1) + float2(1,-1);
    r4.x = dot(r3.xy, r3.xy);
    r4.x = sqrt(r4.x);
    r4.x = max(9.99999975e-06, r4.x);
    r6.xy = r3.xy / r4.xx;
    r6.z = -r6.x;
    r3.x = dot(w1.xy, r6.yz);
    r3.y = dot(w1.xy, -r6.xy);
    r7.xy = normalMapScale.xy * r3.xy;
    r3.x = gameTime.w * r4.x;
    r7.z = -r3.x * flowParams.y + r7.y;
    r3.xy = normalMap.SampleLevel(normalSampler_s, r7.xz, r1.w).xy;
    r3.xy = r3.xy * r5.zz + r5.ww;
    r4.x = dot(r3.xy, r6.yz);
    r4.y = dot(r3.xy, -r6.xy);
    r3.xy = r4.zw * float2(-1,1) + float2(1,-1);
    r4.z = dot(r3.xy, r3.xy);
    r4.z = sqrt(r4.z);
    r4.z = max(9.99999975e-06, r4.z);
    r6.xy = r3.xy / r4.zz;
    r6.z = -r6.x;
    r3.x = dot(w1.xy, r6.yz);
    r3.y = dot(w1.xy, -r6.xy);
    r7.xy = normalMapScale.xy * r3.xy;
    r3.x = gameTime.w * r4.z;
    r7.z = -r3.x * flowParams.y + r7.y;
    r3.xy = normalMap.SampleLevel(normalSampler_s, r7.xz, r1.w).xy;
    r3.xy = r3.xy * r5.zz + r5.ww;
    r7.x = dot(r3.xy, r6.yz);
    r7.y = dot(r3.xy, -r6.xy);
    r3.xy = r7.xy + -r4.xy;
    r3.xy = r3.zz * r3.xy + r4.xy;
    r4.xy = r5.xy * float2(-1,1) + float2(1,-1);
    r4.z = dot(r4.xy, r4.xy);
    r4.z = sqrt(r4.z);
    r4.z = max(9.99999975e-06, r4.z);
    r6.xy = r4.xy / r4.zz;
    r6.z = -r6.x;
    r4.x = dot(w1.xy, r6.yz);
    r4.y = dot(w1.xy, -r6.xy);
    r7.xy = normalMapScale.xy * r4.xy;
    r4.x = gameTime.w * r4.z;
    r7.z = -r4.x * flowParams.y + r7.y;
    r4.xy = normalMap.SampleLevel(normalSampler_s, r7.xz, r1.w).xy;
    r4.xy = r4.xy * r5.zz + r5.ww;
    r5.x = dot(r4.xy, r6.yz);
    r5.y = dot(r4.xy, -r6.xy);
    r2.xy = r2.xy * float2(-1,1) + float2(1,-1);
    r4.x = dot(r2.xy, r2.xy);
    r4.x = sqrt(r4.x);
    r4.x = max(9.99999975e-06, r4.x);
    r6.xy = r2.xy / r4.xx;
    r6.z = -r6.x;
    r2.x = dot(w1.xy, r6.yz);
    r2.y = dot(w1.xy, -r6.xy);
    r7.xy = normalMapScale.xy * r2.xy;
    r2.x = gameTime.w * r4.x;
    r7.z = -r2.x * flowParams.y + r7.y;
    r2.xy = normalMap.SampleLevel(normalSampler_s, r7.xz, r1.w).xy;
    r2.xy = r2.xy * r5.zz + r5.ww;
    r4.x = dot(r2.xy, r6.yz);
    r4.y = dot(r2.xy, -r6.xy);
    r2.xy = r4.xy + -r5.xy;
    r2.xy = r3.zz * r2.xy + r5.xy;
    r2.xy = r2.xy + -r3.xy;
    r0.zw = r3.ww * r2.xy + r3.xy;
  }
  r1.w = r2.z * r2.w;
  r0.zw = r1.ww * r0.zw;
  r2.xyz = v5.xyz * r0.www;
  r2.xyz = v4.xyz * r0.zzz + r2.xyz;
  r2.xyz = v3.xyz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r2.xyz = v9.xxx ? r2.xyz : -r2.xyz;
  r0.z = dot(v6.xyz, v6.xyz);
  r0.w = rsqrt(r0.z);
  r3.xyz = v6.xyz * r0.www;
  r4.z = saturate(dot(r2.xyz, -r3.xyz));
  if (v9.x != 0) {
    r5.xy = (int2)v0.xy;
    r5.zw = float2(0,0);
    r0.w = ifloatZScene.Load(r5.xyz).x;
    r1.w = cmp(r0.w >= 0.984375);
    r3.w = 1.01587307 * r0.w;
    r0.w = r0.w * 64 + -63;
    r0.w = r1.w ? r0.w : r3.w;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r0.w = -v0.w + r0.w;
    r0.w = max(0, r0.w);
    r0.w = min(ssrParams.x, r0.w);
    r1.w = opacityScale.y;
  } else {
    r0.w = sqrt(r0.z);
    r1.w = opacityScale.x;
  }
  if (useFoam != 0) {
    r3.w = foamBase.Sample(foamSampler_s, v7.xy).x;
    r5.x = foamBase.Sample(foamSampler_s, v7.zw).x;
    r5.y = foamBase.Sample(foamSampler_s, v8.xy).x;
    r5.z = foamBase.Sample(foamSampler_s, v8.zw).x;
    r3.w = r5.x + r3.w;
    r3.w = r3.w + r5.y;
    r3.w = r3.w + r5.z;
    r3.w = foamColorScale * r3.w;
    r5.x = flowMap.Sample(flowSampler_s, w1.xy).z;
    r5.x = foamSpacing.y * r5.x + foamSpacing.x;
    r3.w = max(0, r3.w);
    r3.w = log2(r3.w);
    r3.w = r5.x * r3.w;
    r3.w = exp2(r3.w);
    r5.x = foamZFeather * r0.w;
    r5.x = min(1, r5.x);
    r5.y = r5.x * r3.w;
    r3.w = -r3.w * r5.x + 1;
    r3.w = normalAdjustAndGloss.z * r3.w;
  } else {
    r5.y = 0;
    r3.w = normalAdjustAndGloss.z;
  }
  r5.x = dot(-v6.xyz, -v6.xyz);
  r5.x = rsqrt(r5.x);
  r6.xyz = -v6.xyz * r5.xxx;
  r5.zw = (uint2)r1.xy;
  r5.z = dot(r5.zw, float2(0.0671105608,0.00583714992));
  r5.z = frac(r5.z);
  r5.z = 52.9829178 * r5.z;
  r5.z = frac(r5.z);
  r5.z = r5.z * 6.28318548 + gameTick.w;
  sincos(r5.z, r7.x, r10.x);
  r5.z = saturate(dot(r2.xyz, r6.xyz));
  r5.w = dot(-r6.xyz, r2.xyz);
  r5.w = r5.w + r5.w;
  r11.xyz = r2.xyz * -r5.www + -r6.xyz;
  r5.w = 1 + -r3.w;
  r6.w = 5 * r5.w;
  r7.y = r5.w * 5 + -2.5;
  r7.y = saturate(0.400000006 * r7.y);
  r7.y = 100 * r7.y;
  r7.zw = -r5.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.z = exp2(r7.z);
  r7.z = r7.z * r5.z;
  r9.w = r6.w * r5.w;
  r7.w = -r9.w * 2.0159049 + r7.w;
  r7.w = exp2(r7.w);
  r7.w = r7.w * r5.z;
  r7.zw = float2(9.1368103,9.70808983) * r7.zw;
  r7.z = max(r7.z, r7.w);
  r7.z = max(1.26815999, r7.z);
  r7.w = numRefProbes + -numOverrideProbes;
  r9.w = 0.0078125 * r0.x;
  r9.w = min(15, r9.w);
  r9.w = (uint)r9.w;
  r12.xy = (uint2)r1.xy >> int2(6,6);
  r12.z = (uint)r9.w << 4;
  r9.w = (int)r7.w & -32;
  r10.y = (int)r7.w + (int)-r9.w;
  r10.z = numRefProbes & -32;
  r10.w = (int)-r10.z + numRefProbes;
  r13.xy = float2(0,0);
  r14.w = 0;
  r15.yz = float2(0,1);
  r16.xy = float2(0,0);
  r4.xw = float2(1,0);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xyzw = float4(0,0,0,0);
  r20.yzw = float3(0,0,0);
  r12.w = r9.w;
  while (true) {
    r13.w = cmp((uint)r12.w >= numRefProbes);
    if (r13.w != 0) break;
    r13.z = (uint)r12.w >> 5;
    r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
    r13.z = visibleProbes.Load(r14.xyzw).x;
    r13.w = cmp((int)r9.w == (int)r12.w);
    bitmask.x = ((~(-1 << r10.y)) << 0) & 0xffffffff;  r14.x = (((uint)0 << 0) & bitmask.x) | ((uint)r13.z & ~bitmask.x);
    r13.z = r13.w ? r14.x : r13.z;
    r13.w = cmp((int)r10.z == (int)r12.w);
    if (r10.w == 0) r14.x = 0; else if (r10.w+0 < 32) {     r14.x = (uint)r13.z << (32-(r10.w + 0)); r14.x = (uint)r14.x >> (32-r10.w);    } else r14.x = (uint)r13.z >> 0;
    r13.z = r13.w ? r14.x : r13.z;
    r13.w = (int)r12.w + numLights;
    r21.xyzw = r19.xyzw;
    r22.xyz = r20.yzw;
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
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r23.xyzw, r14.z, l(0), t11.xyzw
      r23.x = samp0[]..swiz;
      r23.y = samp0[]..swiz;
      r23.z = samp0[]..swiz;
      r23.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xy, r14.z, l(16), t11.xyxx
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
        r23.xyz = -v6.xyz + r23.xyz;
        r24.z = r23.w;
        r23.xyz = cmp(abs(r23.xyz) < r24.zxy);
        r14.z = r23.y ? r23.x : 0;
        r14.z = r23.z ? r14.z : 0;
        if (r14.z != 0) {
          r14.y = (int)r12.w + (int)r14.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r14.y, l(0), t15.wxyz
        r23.x = samp0[]..swiz;
        r23.y = samp0[]..swiz;
        r23.z = samp0[]..swiz;
        r23.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xy, r14.y, l(96), t15.xyxx
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r14.y, l(116), t15.zwxy
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
          r26.xyz = v6.xyz + -r23.yzw;
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
          r17.w = dot(r28.xyz, r26.xyz);
          r17.w = saturate(r17.w + r28.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r29.xyz, r26.xyz);
          r17.w = saturate(r17.w + r29.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r30.xyz, r26.xyz);
          r17.w = saturate(r17.w + r30.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r31.xyz, r26.xyz);
          r17.w = saturate(r17.w + r31.w);
          r16.w = r17.w * r16.w;
          r17.w = dot(r32.xyz, r26.xyz);
          r17.w = saturate(r17.w + r32.w);
          r15.x = r17.w * r16.w;
          r16.w = (int)r24.x & 1;
          r24.zw = r16.ww ? r15.xy : r15.zx;
          r15.x = r24.x;
          r27.xy = r24.zw;
          r16.w = 1;
          while (true) {
            r17.w = cmp((int)r16.w >= (int)r15.w);
            if (r17.w != 0) break;
            r17.w = (int)r14.z + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r17.w = dot(r28.xyz, r26.xyz);
            r17.w = saturate(r17.w + r28.w);
            r17.w = r27.x * r17.w;
            r18.w = dot(r29.xyz, r26.xyz);
            r18.w = saturate(r18.w + r29.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r30.xyz, r26.xyz);
            r18.w = saturate(r18.w + r30.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r31.xyz, r26.xyz);
            r18.w = saturate(r18.w + r31.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r32.xyz, r26.xyz);
            r18.w = saturate(r18.w + r32.w);
            r17.w = r18.w * r17.w;
            r18.w = dot(r33.xyz, r26.xyz);
            r18.w = saturate(r18.w + r33.w);
            r27.x = r18.w * r17.w;
            r23.w = (uint)r15.x >> 2;
            if (1 == 0) r26.w = 0; else if (1+2 < 32) {             r26.w = (uint)r15.x << (32-(1 + 2)); r26.w = (uint)r26.w >> (32-1);            } else r26.w = (uint)r15.x >> 2;
            r27.z = (int)r23.w & 2;
            r27.w = max(r27.y, r27.x);
            r17.w = -r17.w * r18.w + 1;
            r17.w = r27.y * r17.w;
            r4.y = r27.z ? r17.w : r27.w;
            r27.xy = r26.ww ? r27.xy : r4.xy;
            r16.w = (int)r16.w + 1;
            r15.x = r23.w;
          }
          r27.y = saturate(r27.y);
          r4.y = r27.y * r24.y;
          r14.z = cmp(0 < r4.y);
          if (r14.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r14.y, l(16), t15.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
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
            r22.z = r27.y * r24.y + r22.z;
            r4.y = r4.y * r25.z;
            r25.z = r33.z;
            r14.y = dot(r11.xyz, r25.xyz);
            r14.z = dot(r26.xyz, r25.xyz);
            r14.z = r14.z + -r33.w;
            r15.x = cmp(r14.z >= 0);
            r14.z = max(abs(r14.z), r7.y);
            r14.z = r15.x ? r14.z : -r14.z;
            r14.y = max(1.00000001e-07, -r14.y);
            r14.y = r14.z / r14.y;
            r14.y = min(131072, abs(r14.y));
            r33.z = r34.z;
            r14.z = dot(r11.xyz, r33.xyz);
            r15.x = dot(r26.xyz, r33.xyz);
            r15.x = r15.x + -r34.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.y);
            r15.x = r15.w ? r15.x : -r15.x;
            r14.z = max(1.00000001e-07, -r14.z);
            r14.z = r15.x / r14.z;
            r14.y = min(r14.y, abs(r14.z));
            r34.z = r35.z;
            r14.z = dot(r11.xyz, r34.xyz);
            r15.x = dot(r26.xyz, r34.xyz);
            r15.x = r15.x + -r35.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.y);
            r15.x = r15.w ? r15.x : -r15.x;
            r14.z = max(1.00000001e-07, -r14.z);
            r14.z = r15.x / r14.z;
            r14.y = min(r14.y, abs(r14.z));
            r35.z = r36.z;
            r14.z = dot(r11.xyz, r35.xyz);
            r15.x = dot(r26.xyz, r35.xyz);
            r15.x = r15.x + -r36.w;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.y);
            r15.x = r15.w ? r15.x : -r15.x;
            r14.z = max(1.00000001e-07, -r14.z);
            r14.z = r15.x / r14.z;
            r14.y = min(r14.y, abs(r14.z));
            r36.z = r37.x;
            r14.z = dot(r11.xyz, r36.xyz);
            r15.x = dot(r26.xyz, r36.xyz);
            r15.x = r15.x + -r37.y;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.y);
            r15.x = r15.w ? r15.x : -r15.x;
            r14.z = max(1.00000001e-07, -r14.z);
            r14.z = r15.x / r14.z;
            r14.y = min(r14.y, abs(r14.z));
            r38.zw = r37.zw;
            r14.z = dot(r11.zxy, r38.xzw);
            r15.x = dot(r26.zxy, r38.xzw);
            r15.x = r15.x + -r38.y;
            r15.w = cmp(r15.x >= 0);
            r15.x = max(abs(r15.x), r7.y);
            r15.x = r15.w ? r15.x : -r15.x;
            r14.z = max(1.00000001e-07, -r14.z);
            r14.z = r15.x / r14.z;
            r14.y = min(r14.y, abs(r14.z));
            r24.x = r30.w;
            r24.yz = r31.zw;
            r24.xyz = r24.xyz + r26.xyz;
            r24.xyz = r11.xyz * r14.yyy + r24.xyz;
            r14.z = dot(r24.xyz, r24.xyz);
            r14.z = sqrt(r14.z);
            r14.y = r14.y / r14.z;
            r14.y = r14.y + r14.y;
            r14.y = sqrt(r14.y);
            r14.y = r5.w * 5 + r14.y;
            r14.y = -0.844799995 + r14.y;
            r23.y = r28.z;
            r23.z = r29.x;
            r33.x = dot(r24.xyz, r23.xyz);
            r25.xy = r28.xw;
            r25.z = r29.w;
            r33.y = dot(r24.xyz, r25.xyz);
            r29.x = r28.y;
            r33.z = dot(r24.xyz, r29.xyz);
            if (9 == 0) r14.z = 0; else if (9+16 < 32) {             r14.z = (uint)r25.w << (32-(9 + 16)); r14.z = (uint)r14.z >> (32-9);            } else r14.z = (uint)r25.w >> 16;
            r33.w = (uint)r14.z;
            r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, r14.y).xyz;
            r28.x = dot(r26.xyz, r23.xyz);
            r28.y = dot(r26.xyz, r25.xyz);
            r28.z = dot(r26.xyz, r29.xyz);
            r26.xyz = saturate(r28.xyz * r30.xyz + float3(0.5,0.5,0.5));
            r31.z = r32.x;
            r26.xyz = r26.xyz * r31.xyz + r32.yzw;
            r33.x = dot(r2.xyz, r23.xyz);
            r33.y = dot(r2.xyz, r25.xyz);
            r33.z = dot(r2.xyz, r29.xyz);
            r23.xyz = cmp(float3(0,0,0) < r33.xyz);
            r16.z = r23.x ? 0 : 0.5;
            r25.xyz = r26.xyz + r16.xyz;
            r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r27.xzw = r33.xyz * r33.xyz;
            r27.xzw = r27.xzw * r4.yyy;
            r17.z = r23.y ? 0 : 0.5;
            r23.xyw = r26.xyz + r17.xyz;
            r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
            r23.xyw = r23.xyw * r27.zzz;
            r23.xyw = r25.xyz * r27.xxx + r23.xyw;
            r18.z = r23.z ? 0 : 0.5;
            r25.xyz = r26.xyz + r18.xyz;
            r25.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
            r23.xyz = r25.xyz * r27.www + r23.xyw;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r33.xyzw, 6).xyz;
            r26.xyz = r25.xyz * r23.xyz;
            r14.y = dot(r26.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r21.xyz = r23.xyz * r25.xyz + r21.xyz;
            r14.z = r14.y * r7.z;
            r23.xyz = r24.xyz * r4.yyy;
            r4.y = dot(r23.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r4.y = r7.z * r14.y + r4.y;
            r4.y = r14.z / r4.y;
            r24.x = r21.w;
            r24.yz = r22.xy;
            r22.xyw = r23.yzx * r4.yyy + r24.yzx;
            r21.w = r22.w;
          }
        }
      }
    }
    r19.xyzw = r21.xyzw;
    r20.yzw = r22.xyz;
    r12.w = (int)r12.w + 32;
  }
  r4.x = cmp(r20.w < 1);
  if (r4.x != 0) {
    r13.xy = float2(0,0);
    r14.w = 0;
    r15.yz = float2(0,1);
    r16.xy = float2(0,0);
    r4.x = 1;
    r17.xy = float2(0,0);
    r18.xy = float2(0,0);
    r21.x = r19.w;
    r21.yzw = r20.yzw;
    r22.xyz = r19.xyz;
    r10.z = r20.w;
    r10.w = 0;
    while (true) {
      r12.w = cmp((uint)r10.w >= (uint)r7.w);
      if (r12.w != 0) break;
      r13.z = (uint)r10.w >> 5;
      r14.xyz = (int3)r12.xyz + (int3)r13.xyz;
      r12.w = visibleProbes.Load(r14.xyzw).x;
      r13.z = cmp((int)r9.w == (int)r10.w);
      if (r10.y == 0) r13.w = 0; else if (r10.y+0 < 32) {       r13.w = (uint)r12.w << (32-(r10.y + 0)); r13.w = (uint)r13.w >> (32-r10.y);      } else r13.w = (uint)r12.w >> 0;
      r12.w = r13.z ? r13.w : r12.w;
      r13.z = (int)r10.w + numLights;
      r23.xyzw = r21.xyzw;
      r14.xyz = r22.xyz;
      r13.w = r10.z;
      r15.w = r12.w;
      while (true) {
        if (r15.w == 0) break;
        r16.w = firstbitlow((uint)r15.w);
        r17.w = 1 << (int)r16.w;
        r18.w = (int)r15.w & (int)r17.w;
        if (r18.w != 0) {
          r15.w = (int)r15.w ^ (int)r17.w;
          r17.w = (int)r13.z + (int)r16.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r17.w, l(0), t11.xyzw
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r17.w, l(16), t11.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
          r24.xyz = -v6.xyz + r24.xyz;
          r25.z = r24.w;
          r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
          r17.w = r24.y ? r24.x : 0;
          r17.w = r24.z ? r17.w : 0;
          if (r17.w != 0) {
            r16.w = (int)r10.w + (int)r16.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r16.w, l(0), t15.wxyz
          r24.x = samp0[]..swiz;
          r24.y = samp0[]..swiz;
          r24.z = samp0[]..swiz;
          r24.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xy, r16.w, l(96), t15.xyxx
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r16.w, l(116), t15.zwxy
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          r26.z = samp0[]..swiz;
          r26.w = samp0[]..swiz;
            r27.xyz = v6.xyz + -r24.yzw;
            r17.w = (int)r26.w & 0x0000ffff;
            if (6 == 0) r18.w = 0; else if (6+25 < 32) {             r18.w = (uint)r26.w << (32-(6 + 25)); r18.w = (uint)r18.w >> (32-6);            } else r18.w = (uint)r26.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r17.w, l(0), t16.xyzw
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(16), t16.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(32), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(48), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(64), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(80), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
            r22.w = dot(r28.xyz, r27.xyz);
            r22.w = saturate(r22.w + r28.w);
            r24.w = dot(r29.xyz, r27.xyz);
            r24.w = saturate(r24.w + r29.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r30.xyz, r27.xyz);
            r24.w = saturate(r24.w + r30.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r31.xyz, r27.xyz);
            r24.w = saturate(r24.w + r31.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r32.xyz, r27.xyz);
            r24.w = saturate(r24.w + r32.w);
            r22.w = r24.w * r22.w;
            r24.w = dot(r33.xyz, r27.xyz);
            r24.w = saturate(r24.w + r33.w);
            r15.x = r24.w * r22.w;
            r22.w = (int)r25.x & 1;
            r25.zw = r22.ww ? r15.xy : r15.zx;
            r15.x = r25.x;
            r28.xy = r25.zw;
            r22.w = 1;
            while (true) {
              r24.w = cmp((int)r22.w >= (int)r18.w);
              if (r24.w != 0) break;
              r24.w = (int)r17.w + (int)r22.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r24.w, l(0), t16.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r24.w, l(16), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r24.w, l(32), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r24.w, l(48), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r24.w, l(64), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r24.w, l(80), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
              r24.w = dot(r29.xyz, r27.xyz);
              r24.w = saturate(r24.w + r29.w);
              r24.w = r28.x * r24.w;
              r27.w = dot(r30.xyz, r27.xyz);
              r27.w = saturate(r27.w + r30.w);
              r24.w = r27.w * r24.w;
              r27.w = dot(r31.xyz, r27.xyz);
              r27.w = saturate(r27.w + r31.w);
              r24.w = r27.w * r24.w;
              r27.w = dot(r32.xyz, r27.xyz);
              r27.w = saturate(r27.w + r32.w);
              r24.w = r27.w * r24.w;
              r27.w = dot(r33.xyz, r27.xyz);
              r27.w = saturate(r27.w + r33.w);
              r24.w = r27.w * r24.w;
              r27.w = dot(r34.xyz, r27.xyz);
              r27.w = saturate(r27.w + r34.w);
              r28.x = r27.w * r24.w;
              r28.z = (uint)r15.x >> 2;
              if (1 == 0) r28.w = 0; else if (1+2 < 32) {               r28.w = (uint)r15.x << (32-(1 + 2)); r28.w = (uint)r28.w >> (32-1);              } else r28.w = (uint)r15.x >> 2;
              r29.x = (int)r28.z & 2;
              r29.y = max(r28.y, r28.x);
              r24.w = -r24.w * r27.w + 1;
              r24.w = r28.y * r24.w;
              r4.y = r29.x ? r24.w : r29.y;
              r28.xy = r28.ww ? r28.xy : r4.xy;
              r22.w = (int)r22.w + 1;
              r15.x = r28.z;
            }
            r4.y = saturate(r28.y + -r13.w);
            r15.x = r4.y * r25.y;
            r17.w = cmp(0 < r15.x);
            if (r17.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(16), t15.xyzw
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
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
              r23.w = r4.y * r25.y + r23.w;
              r4.y = r15.x * r26.z;
              r26.z = r34.z;
              r15.x = dot(r11.xyz, r26.xyz);
              r16.w = dot(r27.xyz, r26.xyz);
              r16.w = r16.w + -r34.w;
              r17.w = cmp(r16.w >= 0);
              r16.w = max(abs(r16.w), r7.y);
              r16.w = r17.w ? r16.w : -r16.w;
              r15.x = max(1.00000001e-07, -r15.x);
              r15.x = r16.w / r15.x;
              r15.x = min(131072, abs(r15.x));
              r34.z = r35.z;
              r16.w = dot(r11.xyz, r34.xyz);
              r17.w = dot(r27.xyz, r34.xyz);
              r17.w = r17.w + -r35.w;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.y);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r15.x = min(abs(r16.w), r15.x);
              r35.z = r36.z;
              r16.w = dot(r11.xyz, r35.xyz);
              r17.w = dot(r27.xyz, r35.xyz);
              r17.w = r17.w + -r36.w;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.y);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r15.x = min(abs(r16.w), r15.x);
              r36.z = r37.z;
              r16.w = dot(r11.xyz, r36.xyz);
              r17.w = dot(r27.xyz, r36.xyz);
              r17.w = r17.w + -r37.w;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.y);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r15.x = min(abs(r16.w), r15.x);
              r37.z = r38.x;
              r16.w = dot(r11.xyz, r37.xyz);
              r17.w = dot(r27.xyz, r37.xyz);
              r17.w = r17.w + -r38.y;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.y);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r15.x = min(abs(r16.w), r15.x);
              r39.zw = r38.zw;
              r16.w = dot(r11.zxy, r39.xzw);
              r17.w = dot(r27.zxy, r39.xzw);
              r17.w = r17.w + -r39.y;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r7.y);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.w = max(1.00000001e-07, -r16.w);
              r16.w = r17.w / r16.w;
              r15.x = min(abs(r16.w), r15.x);
              r25.x = r31.w;
              r25.yz = r32.zw;
              r25.xyz = r25.xyz + r27.xyz;
              r25.xyz = r11.xyz * r15.xxx + r25.xyz;
              r16.w = dot(r25.xyz, r25.xyz);
              r16.w = sqrt(r16.w);
              r15.x = r15.x / r16.w;
              r15.x = r15.x + r15.x;
              r15.x = sqrt(r15.x);
              r15.x = r5.w * 5 + r15.x;
              r15.x = -0.844799995 + r15.x;
              r24.y = r29.z;
              r24.z = r30.x;
              r34.x = dot(r25.xyz, r24.xyz);
              r26.xy = r29.xw;
              r26.z = r30.w;
              r34.y = dot(r25.xyz, r26.xyz);
              r30.x = r29.y;
              r34.z = dot(r25.xyz, r30.xyz);
              if (9 == 0) r16.w = 0; else if (9+16 < 32) {               r16.w = (uint)r26.w << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);              } else r16.w = (uint)r26.w >> 16;
              r34.w = (uint)r16.w;
              r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r15.x).xyz;
              r29.x = dot(r27.xyz, r24.xyz);
              r29.y = dot(r27.xyz, r26.xyz);
              r29.z = dot(r27.xyz, r30.xyz);
              r27.xyz = saturate(r29.xyz * r31.xyz + float3(0.5,0.5,0.5));
              r32.z = r33.x;
              r27.xyz = r27.xyz * r32.xyz + r33.yzw;
              r34.x = dot(r2.xyz, r24.xyz);
              r34.y = dot(r2.xyz, r26.xyz);
              r34.z = dot(r2.xyz, r30.xyz);
              r24.xyz = cmp(float3(0,0,0) < r34.xyz);
              r16.z = r24.x ? 0 : 0.5;
              r26.xyz = r27.xyz + r16.xyz;
              r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r28.xzw = r34.xyz * r34.xyz;
              r28.xzw = r28.xzw * r4.yyy;
              r17.z = r24.y ? 0 : 0.5;
              r24.xyw = r27.xyz + r17.xyz;
              r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
              r24.xyw = r24.xyw * r28.zzz;
              r24.xyw = r26.xyz * r28.xxx + r24.xyw;
              r18.z = r24.z ? 0 : 0.5;
              r26.xyz = r27.xyz + r18.xyz;
              r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
              r24.xyz = r26.xyz * r28.www + r24.xyw;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
              r27.xyz = r26.xyz * r24.xyz;
              r15.x = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r14.xyz = r24.xyz * r26.xyz + r14.xyz;
              r16.z = r15.x * r7.z;
              r24.xyz = r25.xyz * r4.yyy;
              r4.y = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r4.y = r7.z * r15.x + r4.y;
              r4.y = r16.z / r4.y;
              r23.xyz = r24.xyz * r4.yyy + r23.xyz;
            }
          }
        }
      }
      r21.xyzw = r23.xyzw;
      r22.xyz = r14.xyz;
      r10.w = (int)r10.w + 32;
    }
    r20.xyzw = r21.zxyw;
    r19.xyz = r22.xyz;
    r20.xyzw = r20.yzxw;
  } else {
    r20.x = r19.w;
  }
  r4.x = max(1, r20.w);
  r4.x = rcp(r4.x);
  r20.w = saturate(r20.w);
  r7.yzw = r19.xyz * r4.xxx;
  r10.yzw = r20.xyz * r4.xxx;
  r4.y = cmp(r20.w < 0.99000001);
  if (r4.y != 0) {
    r4.y = 1 + -r20.w;
    r5.w = sunConstants.globalProbeExposure * r4.y;
    r12.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
    r13.x = globalProbeConstants.data[0].w * r12.x;
    r13.yz = globalProbeConstants.data[1].xy * r12.yz;
    r12.xyz = saturate(float3(0.5,0.5,0.5) + r13.xyz);
    r13.xy = globalProbeConstants.data[1].zw * r12.xy;
    r13.z = globalProbeConstants.data[2].x * r12.z;
    r12.xyz = globalProbeConstants.data[2].yzw + r13.xyz;
    r13.xyz = cmp(float3(0,0,0) < r2.xyz);
    r13.xyz = r13.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r13.w = 0;
    r14.xyz = r13.wwx + r12.xyz;
    r14.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r15.xyz = r2.xyz * r2.xyz;
    r15.xyz = r15.xyz * r5.www;
    r16.xyz = r13.wwy + r12.xyz;
    r16.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r16.xyz = r16.xyz * r15.yyy;
    r14.xyz = r14.xyz * r15.xxx + r16.xyz;
    r12.xyz = r13.wwz + r12.xyz;
    r12.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r12.xyz, 0).xyz;
    r12.xyz = r12.xyz * r15.zzz + r14.xyz;
    r2.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
    r12.xyz = r13.xyz * r12.xyz;
    r2.w = dot(r12.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r7.yzw = r19.xyz * r4.xxx + r12.xyz;
    r11.w = 0;
    r11.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r6.w).xyz;
    r4.x = sunConstants.globalProbeExposure * r4.y + -r2.w;
    r2.w = r3.w * r4.x + r2.w;
    r10.yzw = r11.xyz * r2.www + r10.yzw;
  }
  if (useSSR != 0) {
    r2.w = dot(r3.xyz, r2.xyz);
    r2.w = r2.w + r2.w;
    r11.xyz = r2.xyz * -r2.www + r3.xyz;
    r2.w = dot(r3.xyz, -r2.xyz);
    r2.w = r2.w + r2.w;
    r12.xyz = r2.xyz * r2.www + r3.xyz;
    r11.xyz = v9.xxx ? r11.xyz : r12.xyz;
    if (useLoopedSSR != 0) {
      r12.xyz = viewMatrix._m10_m11_m12 * v6.yyy;
      r12.xyz = v6.xxx * viewMatrix._m00_m01_m02 + r12.xyz;
      r12.xyz = v6.zzz * viewMatrix._m20_m21_m22 + r12.xyz;
      r13.xyz = ssrParams.zzz * r11.xyz;
      r14.xyz = viewMatrix._m10_m11_m12 * r13.yyy;
      r13.xyw = r13.xxx * viewMatrix._m00_m01_m02 + r14.xyz;
      r13.xyz = r13.zzz * viewMatrix._m20_m21_m22 + r13.xyw;
      r2.w = min(1000, ssrParams.x);
      r12.xyz = r13.xyz * float3(10,10,10) + r12.xyz;
      r2.w = r2.w / ssrParams.z;
      r14.xyz = r10.yzw;
      r15.xyz = r12.xyz;
      r3.w = 0;
      while (true) {
        r4.x = (int)r3.w;
        r4.x = cmp(r4.x >= r2.w);
        if (r4.x != 0) break;
        r15.xyz = r15.xyz + r13.xyz;
        r16.xyz = projectionMatrix._m10_m11_m13 * r15.yyy;
        r16.xyz = r15.xxx * projectionMatrix._m00_m01_m03 + r16.xyz;
        r16.xyz = r15.zzz * projectionMatrix._m20_m21_m23 + r16.xyz;
        r16.xyz = projectionMatrix._m30_m31_m33 + r16.xyz;
        r4.x = max(abs(r16.x), abs(r16.y));
        r4.x = cmp(r16.z < r4.x);
        if (r4.x != 0) {
          break;
        }
        r4.xy = r16.xy / r16.zz;
        r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r4.x = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r4.xy, 1).x;
        r4.y = cmp(abs(r4.x) < r15.z);
        r5.w = cmp(abs(r4.x) >= v0.w);
        r4.y = r4.y ? r5.w : 0;
        if (r4.y != 0) {
          r4.x = r15.z + -abs(r4.x);
          r4.x = ssrParams.w * r4.x;
          r16.xyz = -r4.xxx * r13.xyz + r15.xyz;
          r17.xyz = projectionMatrix._m10_m11_m13 * r16.yyy;
          r16.xyw = r16.xxx * projectionMatrix._m00_m01_m03 + r17.xyz;
          r16.xyz = r16.zzz * projectionMatrix._m20_m21_m23 + r16.xyw;
          r16.xyz = projectionMatrix._m30_m31_m33 + r16.xyz;
          r4.xy = r16.xy / r16.zz;
          r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r16.xyz = iResolveScene.SampleLevel(bilinearClamp_s, r4.xy, 0).xyz;
          r16.xyz = relHDRExposure.xxx * r16.xyz;
          r14.xyz = r16.xyz;
          break;
        }
        r3.w = (int)r3.w + 1;
      }
      r10.yzw = r14.xyz;
    } else {
      r2.w = ssrParams.y * r0.w;
      r11.xyz = r11.xyz * r2.www + v6.xyz;
      r12.xyz = viewProjectionMatrix._m10_m11_m13 * r11.yyy;
      r11.xyw = r11.xxx * viewProjectionMatrix._m00_m01_m03 + r12.xyz;
      r11.xyz = r11.zzz * viewProjectionMatrix._m20_m21_m23 + r11.xyw;
      r11.xyz = viewProjectionMatrix._m30_m31_m33 + r11.xyz;
      r4.xy = r11.xy / r11.zz;
      r2.w = max(abs(r4.x), abs(r4.y));
      r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
      r3.w = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r4.xy, 0).x;
      r3.w = cmp(abs(r3.w) >= v0.w);
      r2.w = cmp(r2.w < 1);
      r2.w = r2.w ? r3.w : 0;
      r11.xyz = iResolveScene.Sample(bilinearClamp_s, r4.xy).xyz;
      if (r2.w != 0) {
        r10.yzw = relHDRExposure.xxx * r11.xyz;
      }
    }
  }
  r2.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r3.w = saturate(r2.w);
  r4.x = cmp(0 >= r3.w);
  if (r4.x != 0) {
    r4.y = 0;
  }
  if (r4.x == 0) {
    r11.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v6.yyy;
    r11.xyz = v6.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.xyz;
    r11.xyz = v6.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.xyz;
    r11.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.xyz;
    r4.x = -sunConstants.splitDepthOffset + r11.z;
    r4.x = -r4.x * 6.10351563e-05 + 1;
    r5.w = saturate(r4.x);
    r5.w = cmp(r4.x == r5.w);
    if (r5.w != 0) {
      r5.w = 0;
      r6.w = 0;
      while (true) {
        r9.w = cmp(r5.w >= 3);
        if (r9.w != 0) break;
        r9.w = (uint)r5.w;
        r12.xy = -sunConstants.splitPinTransform[r9.w].xy + r11.xy;
        r11.w = max(abs(r12.x), abs(r12.y));
        r6.w = sunConstants.splitPinTransform[r9.w].z * r11.w;
        r9.w = cmp(r6.w < 1);
        if (r9.w != 0) {
          break;
        }
        r5.w = 1 + r5.w;
        r6.w = 0;
      }
    } else {
      r5.w = 3;
      r6.w = 0;
    }
    r9.w = cmp(r5.w >= 3);
    if (r9.w != 0) {
      r12.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r13.xz = rcp(r12.xx);
      r13.y = -r13.z;
      r12.xyz = r11.xyx * r13.xyz + r12.yzy;
      r13.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r12.xyz = max(float3(0,0,0), r12.xyz);
      r12.xyz = min(r12.xyz, r13.xyz);
      r13.xy = sunConstants.sstLightingConstants.coordScale * r12.zy;
      r13.xy = floor(r13.xy);
      r11.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.y;
      r11.w = r11.w * sunConstants.sstLightingConstants.coordScale + r13.x;
      r11.w = (uint)r11.w;
      r11.w = (int)r11.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r11.w, l(0), t23.xxxx
    r12.w = samp0[]..swiz;
      r13.x = (int)r12.w & 0x40000000;
      r13.y = (uint)r12.w << 2;
      if (r13.x == 0) {
        r13.x = (int)r12.w & 0x01ffffff;
        r14.x = (int)r11.w + (int)r13.x;
        r11.w = (uint)r12.w >> 25;
        r11.w = (uint)r11.w;
        r12.xyz = r12.xyz * r11.www;
        r12.xyz = frac(r12.xyz);
        r12.xyz = float3(128,128,128) * r12.xyz;
        r12.xyz = (uint3)r12.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
      r14.z = samp0[]..swiz;
        r13.xz = (uint2)r12.zy >> int2(6,6);
        r11.w = (int)r14.z & 0xc0000000;
        r12.w = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.w, r12.w, l(0), t23.xxxx
      r12.w = samp0[]..swiz;
        r12.w = r13.z ? r14.z : r12.w;
        r13.z = (uint)r12.w >> 13;
        r12.w = r13.x ? r13.z : r12.w;
        r12.w = (int)r12.w & 8191;
        r15.x = (int)r12.w + (int)r14.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.y = 0;
        r15.y = 1;
        r13.xzw = r11.www ? r14.xyz : r15.xyz;
        r15.yz = r11.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r16.xy = (uint2)r12.zy >> (uint2)r15.yy;
        r16.xy = (int2)r16.xy & int2(1,1);
        r12.w = (int)r13.w & 0xc0000000;
        r14.w = (int)r13.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r14.w = r16.y ? r13.w : r14.w;
        r15.y = (uint)r14.w >> 13;
        r14.w = r16.x ? r15.y : r14.w;
        r14.w = (int)r14.w & 8191;
        r15.x = (int)r13.x + (int)r14.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r13.xzw = r12.www ? r13.xzw : r15.xzw;
        r13.xzw = r11.www ? r14.xyz : r13.xzw;
        r11.w = (int)r13.w & 0xc0000000;
        if (r11.w == 0) {
          r11.w = (int)-r13.z + 6;
          r14.xy = (uint2)r12.zy >> (uint2)r11.ww;
          r11.w = (int)r13.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.w = (((uint)r14.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.w = (((uint)r14.x << 0) & bitmask.w) | ((uint)r12.w & ~bitmask.w);
          r12.w = (int)r12.w * 10;
          r11.w = (uint)r11.w >> (uint)r12.w;
          r11.w = (int)r11.w & 1023;
          r14.x = (int)r11.w + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r14.yz = (int2)r13.zz + int2(1,2);
          r11.w = (int)-r14.y + 6;
          r15.xy = (uint2)r12.zy >> (uint2)r11.ww;
          r11.w = (int)r14.w & 0xc0000000;
          r12.w = (int)r14.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.z = (((uint)r15.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.z = (((uint)r15.x << 0) & bitmask.z) | ((uint)r13.z & ~bitmask.z);
          r13.z = (int)r13.z * 10;
          r12.w = (uint)r12.w >> (uint)r13.z;
          r12.w = (int)r12.w & 1023;
          r15.x = (int)r12.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r14.z;
          r15.xyz = r11.www ? r14.xyw : r15.xyz;
          r12.w = (int)-r15.y + 6;
          r14.yz = (uint2)r12.zy >> (uint2)r12.ww;
          r12.w = (int)r15.z & 0xc0000000;
          r13.z = (int)r15.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.z = (((uint)r14.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.y = (((uint)r14.y << 0) & bitmask.y) | ((uint)r14.z & ~bitmask.y);
          r14.y = (int)r14.y * 10;
          r13.z = (uint)r13.z >> (uint)r14.y;
          r13.z = (int)r13.z & 1023;
          r16.x = (int)r13.z + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r14.yz = r12.ww ? r15.xz : r16.xy;
          r13.xw = r11.ww ? r14.xw : r14.yz;
        }
        r11.w = (int)r13.w & 0xc0000000;
        if (r11.w == 0) {
          if (14 == 0) r12.w = 0; else if (14+15 < 32) {           r12.w = (uint)r13.w << (32-(14 + 15)); r12.w = (uint)r12.w >> (32-14);          } else r12.w = (uint)r13.w >> 15;
          r12.w = (uint)r12.w;
          r12.w = sunConstants.sstLightingConstants.constants.spanInInches * r12.w;
          r12.w = 6.10388815e-05 * r12.w;
          r14.xy = (int2)r13.ww & int2(32767,536870912);
          r13.z = (uint)r14.x;
          r13.z = sunConstants.sstLightingConstants.constants.spanInInches * r13.z;
          r13.z = 3.05185094e-05 * r13.z;
          r14.x = (int)r12.y & 3;
          r14.x = (int)r13.x + (int)r14.x;
          r14.x = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.x, r14.x, l(0), t23.xxxx
        r14.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r15.x = (((uint)r12.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r15.y = (((uint)r12.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r15.z = (((uint)r12.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r12.x = (uint)r14.x >> (uint)r15.x;
          r12.x = (int)r12.x & 255;
          r12.x = (uint)r12.x;
          r12.x = r12.x * r13.z;
          r12.x = r12.x * 0.00392156886 + r12.w;
          r12.y = (int)r15.y + 1;
          if (1 == 0) r12.z = 0; else if (1+1 < 32) {           r12.z = (uint)r12.z << (32-(1 + 1)); r12.z = (uint)r12.z >> (32-1);          } else r12.z = (uint)r12.z >> 1;
          r12.y = (int)r12.z + (int)r12.y;
          r12.y = (int)r12.y + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.y, r12.y, l(0), t23.xxxx
        r12.y = samp0[]..swiz;
          r12.y = (uint)r12.y >> (uint)r15.z;
          r12.y = (int)r12.y & 0x0000ffff;
          r12.y = (uint)r12.y;
          r12.y = r12.y * r13.z;
          r12.y = r12.y * 1.52590219e-05 + r12.w;
          r13.y = r14.y ? r12.x : r12.y;
        } else {
          r12.x = (int)r13.w & 0x80000000;
          r12.y = (int)r13.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.y, r12.y, l(0), t23.xxxx
        r12.y = samp0[]..swiz;
          r12.x = r12.x ? r12.y : 0;
          r12.y = (uint)r13.w << 2;
          r12.z = (uint)r12.x >> 16;
          r12.x = (int)r12.x & 0x0000ffff;
          r12.xz = f16tof32(r12.xz);
          r12.y = r11.x * r12.z + r12.y;
          r12.x = r11.y * r12.x + r12.y;
          r13.y = r11.w ? r12.x : r13.y;
        }
      }
      r11.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.z;
      r11.z = cmp(r13.y < r11.z);
      r4.y = r11.z ? 0 : 1;
    }
    if (r9.w == 0) {
      if (enableDitheredShadow == 0) {
        r9.w = (uint)r5.w;
        r11.zw = -sunConstants.splitPinTransform[r9.w].xy + r11.xy;
        r11.zw = sunConstants.splitPinTransform[r9.w].zz * r11.zw;
        r12.xy = r11.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r9.w = (int16)sunConstants.splitArrayOffset;
        r12.z = r9.w + r5.w;
        r9.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r4.x).x;
        r11.z = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
        r9.w = r11.z + r9.w;
        r9.w = saturate(-1 + r9.w);
        r11.z = r9.w * r9.w;
        r4.y = r11.z * r9.w;
      }
      if (enableDitheredShadow != 0) {
        r12.x = -r7.x;
        r9.w = (uint)r5.w;
        r5.w = 1 + r5.w;
        r5.w = min(2, r5.w);
        r5.w = (uint)r5.w;
        r6.w = 1 + -r6.w;
        r6.w = 28 * r6.w;
        r6.w = (uint)r6.w;
        r11.zw = -sunConstants.splitPinTransform[r9.w].xy + r11.xy;
        r11.zw = sunConstants.splitPinTransform[r9.w].zz * r11.zw;
        r11.zw = r11.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.xy = -sunConstants.splitPinTransform[r5.w].xy + r11.xy;
        r11.xy = sunConstants.splitPinTransform[r5.w].zz * r11.xy;
        r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.y = r10.x;
        r12.z = r7.x;
        r12.w = 0;
        r13.x = 0;
        while (true) {
          r13.y = cmp((uint)r13.x >= 8);
          if (r13.y != 0) break;
          r13.y = cmp((uint)r6.w < (uint)r13.x);
          r13.zw = r13.yy ? r11.xy : r11.zw;
          r14.x = r13.y ? sunConstants.splitPinTransform[r5.w].w : sunConstants.splitPinTransform[r9.w].w;
          r13.y = r13.y ? r5.w : r9.w;
          r15.x = dot(icb[r13.x+0].yx, r12.xy);
          r15.y = dot(icb[r13.x+0].yx, r12.yz);
          r14.xy = r15.xy * r14.xx + r13.zw;
          r13.y = (int)r13.y + (int16)sunConstants.splitArrayOffset;
          r14.z = (uint)r13.y;
          r13.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r4.x).x;
          r13.z = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
          r13.y = r13.y + r13.z;
          r13.y = saturate(-1 + r13.y);
          r12.w = r13.y * 0.125 + r12.w;
          r13.x = (int)r13.x + 1;
        }
        r4.x = r12.w * r12.w;
        r4.y = r4.x * r12.w;
      }
    }
  }
  r4.x = viewmodelSunShadowRaw & 0x0000ffff;
  r5.w = cmp(0 < (uint)r4.x);
  r6.w = cmp(0 < r4.y);
  r5.w = r5.w ? r6.w : 0;
  if (r5.w != 0) {
    r4.x = (int)r4.x + numLights;
    r4.x = (int)r4.x + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r5.w, r4.x, l(52), t12.xxxx
  r5.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r4.x, l(68), t12.xyzw
  r11.x = samp0[]..swiz;
  r11.y = samp0[]..swiz;
  r11.z = samp0[]..swiz;
  r11.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r4.x, l(84), t12.xyzw
  r12.x = samp0[]..swiz;
  r12.y = samp0[]..swiz;
  r12.z = samp0[]..swiz;
  r12.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r4.x, l(100), t12.xyzw
  r13.x = samp0[]..swiz;
  r13.y = samp0[]..swiz;
  r13.z = samp0[]..swiz;
  r13.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r4.x, l(116), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.x, l(132), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.x, l(148), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
    r2.w = abs(r2.w) * -0.200000003 + 0.400000006;
    r17.xyz = r2.xyz * r2.www + v6.xyz;
    r17.w = 1;
    r11.x = dot(r11.xyzw, r17.xyzw);
    r11.y = dot(r12.xyzw, r17.xyzw);
    r2.w = dot(r13.xyzw, r17.xyzw);
    r6.w = dot(r14.xyzw, r17.xyzw);
    r9.w = cmp(r6.w < r2.w);
    r11.xy = r11.xy / r6.ww;
    r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xy = r11.xy + r16.zw;
    r11.xy = r11.xy * r16.xy;
    r11.zw = r5.ww / r15.xz;
    r12.xy = float2(1,1) + -r11.zw;
    r12.xy = cmp(r11.xy >= r12.xy);
    r11.zw = cmp(r11.zw >= r11.xy);
    r11.zw = (int2)r11.zw | (int2)r12.xy;
    r11.z = (int)r11.w | (int)r11.z;
    r9.w = (int)r9.w | (int)r11.z;
    if (r9.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r4.x, l(28), t12.xxxx
    r9.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.zw, r4.x, l(164), t12.xxxy
    r11.z = samp0[]..swiz;
    r11.w = samp0[]..swiz;
      r11.xy = saturate(r11.xy);
      r12.xy = r11.xy * r15.xz + r15.yw;
      r4.x = r11.w * r6.w;
      r2.w = r11.z * r6.w + r2.w;
      r2.w = r2.w / r4.x;
      r2.w = max(6.10351563e-05, r2.w);
      r4.x = r9.w ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r11.x = -r7.x;
        r13.z = (uint)r4.x;
        r11.y = r10.x;
        r11.z = r7.x;
        r6.w = 0;
        r7.x = 0;
        while (true) {
          r9.w = cmp((int)r7.x >= 8);
          if (r9.w != 0) break;
          r14.x = dot(icb[r7.x+0].yx, r11.xy);
          r14.y = dot(icb[r7.x+0].yx, r11.yz);
          r13.xy = r14.xy * r5.ww + r12.xy;
          r9.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r2.w).x;
          r6.w = r9.w * 0.125 + r6.w;
          r7.x = (int)r7.x + 1;
        }
      } else {
        r12.z = (uint)r4.x;
        r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r2.w).x;
      }
      r2.w = r6.w * r6.w;
      r2.w = r2.w * r6.w;
    } else {
      r2.w = 1;
    }
    r4.y = r4.y * r2.w;
  }
  r2.w = cmp(0 < r3.w);
  r4.x = cmp(0 < r4.y);
  if (r4.x != 0) {
    if (sunConstants.sunCookieIndex != 0) {
      r11.xyz = eyeOffset.xyz + v6.xyz;
      r11.w = 1;
      r4.x = dot(sunConstants.sunCookieTransform[0].xyzw, r11.xyzw);
      r5.w = dot(sunConstants.sunCookieTransform[1].xyzw, r11.xyzw);
      r11.x = frac(r4.x);
      r11.y = frac(r5.w);
      r4.x = -1 + (int14)sunConstants.sunCookieIndex;
      r11.z = (uint)r4.x;
      r11.xyz = gCookieArray.SampleLevel(samplerLinear_s, r11.xyz, 0).xyz;
      r11.xyz = float3(-1,-1,-1) + r11.xyz;
      r11.xyz = sunConstants.sunCookieIntensity * r11.xyz + float3(1,1,1);
      r11.xyz = sunConstants.color.xyz * r11.xyz;
    } else {
      r11.xyz = sunConstants.color.xyz;
    }
    r11.xyz = r11.xyz * r4.yyy;
    r4.x = r5.z + r3.w;
    r4.x = r3.w / r4.x;
    r12.xyz = r11.xyz * r4.xxx + r7.yzw;
    r5.xzw = -v6.xyz * r5.xxx + sunConstants.wldDir.xyz;
    r4.x = dot(r5.xzw, r5.xzw);
    r4.x = rsqrt(r4.x);
    r5.xzw = r5.xzw * r4.xxx;
    r4.x = saturate(dot(r2.xyz, r5.xzw));
    r4.y = saturate(dot(r5.xzw, r6.xyz));
    r5.x = r4.x * r4.x;
    r5.xz = r5.xx * specularLobeRoughnessControl.xz + float2(1,1);
    r5.xz = r5.xz * r5.xz;
    r5.xz = specularLobeRoughnessControl.yw / r5.xz;
    r5.xz = r5.xz * r4.xx;
    r4.x = 4 * r4.y;
    r4.xy = r5.xz / r4.xx;
    r4.xy = lobeWeightingThicknessRefraction.xy * r4.xy;
    r5.xzw = r11.xyz * r4.xxx;
    r5.xzw = r5.xzw * r3.www + r10.yzw;
    r6.xyz = r11.xyz * r4.yyy;
    r5.xzw = r6.xyz * r3.www + r5.xzw;
  } else {
    r12.xyz = r7.yzw;
    r5.xzw = r10.yzw;
  }
  r6.xyz = r2.www ? r12.xyz : r7.yzw;
  r5.xzw = r2.www ? r5.xzw : r10.yzw;
  r7.xyzw = colorMap.Sample(colorSampler_s, r4.zw).xyzw;
  r2.yw = viewMatrix._m10_m11 * r2.yy;
  r2.xy = r2.xx * viewMatrix._m00_m01 + r2.yw;
  r2.xy = r2.zz * viewMatrix._m20_m21 + r2.xy;
  r2.z = 1 + r0.w;
  r2.z = log2(r2.z);
  r2.z = lobeWeightingThicknessRefraction.w * r2.z;
  r2.z = min(500, r2.z);
  r2.xy = r2.zz * r2.xy + v0.xy;
  r2.zw = float2(-1,-1) + renderTargetSize.xy;
  r2.xy = max(float2(0,0), r2.xy);
  r2.xy = min(r2.xy, r2.zw);
  r10.xy = (int2)r2.xy;
  r10.zw = float2(0,0);
  r2.z = ifloatZScene.Load(r10.xyz).x;
  r2.w = cmp(r2.z >= 0.984375);
  r3.w = 1.01587307 * r2.z;
  r2.z = r2.z * 64 + -63;
  r2.z = r2.w ? r2.z : r3.w;
  r2.z = max(9.99999994e-09, r2.z);
  r2.z = rcp(r2.z);
  r0.x = cmp(r0.x < r2.z);
  r2.xy = renderTargetSize.zw * r2.xy;
  r2.xyz = iResolveScene.Sample(pointClamp_s, r2.xy).xyz;
  if (r0.x == 0) {
    r10.xy = (int2)v0.xy;
    r10.zw = float2(0,0);
    r2.xyz = iResolveScene.Load(r10.xyz).xyz;
  }
  r4.xyw = relHDRExposure.xxx * r2.xyz;
  r0.x = r0.w * 2 + 1;
  r0.x = log2(r0.x);
  r10.x = 0.0833333358 * r0.x;
  r10.y = 0;
  r10.xyzw = rColorRamp.Sample(bilinearClamp_s, r10.xy).xyzw;
  r10.xyz = r10.xyz * r4.xyw;
  r0.x = r10.w * r7.w;
  r7.xyz = r7.xyz * r6.xyz + -r10.xyz;
  r7.xyz = r0.xxx * r7.xyz + r10.xyz;
  r2.xyz = -r2.xyz * relHDRExposure.xxx + r7.xyz;
  r2.xyz = r1.www * r2.xyz + r4.xyw;
  r4.xyw = r9.xyz * r6.xyz + -r2.xyz;
  r2.xyz = r8.www * r4.xyw + r2.xyz;
  r0.xyw = r5.xzw * r0.yyy + r8.xyz;
  r1.w = 1 + -r4.z;
  r2.w = r1.w * r1.w;
  r2.w = r2.w * r2.w;
  r1.w = r2.w * r1.w;
  r1.w = r1.w * 0.980000019 + 0.0199999996;
  r0.xyw = r0.xyw + -r2.xyz;
  r0.xyw = r1.www * r0.xyw + r2.xyz;
  r2.xyz = foamColor.xyz * r6.xyz + -r0.xyw;
  r2.xyz = r5.yyy * r2.xyz + r0.xyw;
  r0.xyw = useFoam ? r2.xyz : r0.xyw;
  r1.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.w != 0) {
    r1.w = sqrt(r0.z);
    r2.x = cmp(0 < fogConstants.blendAmount);
    if (r2.x != 0) {
      r2.xy = r1.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r2.z = cmp(0.00999999978 < abs(v6.z));
      r4.xy = fogConstants.atmospherefogheightdensityscale.xy * v6.zz;
      r4.zw = float2(-1.44269502,-1.44269502) * r4.xy;
      r4.zw = exp2(r4.zw);
      r4.zw = float2(1,1) + -r4.zw;
      r4.xy = r4.zw / r4.xy;
      r4.xy = r4.xy * r2.xy;
      r2.xy = r2.zz ? r4.xy : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r4.xyz = exp2(r4.xyz);
      r4.xyz = r4.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r4.xyz + r2.xzw;
    } else {
      r2.w = r1.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.w = cmp(0.00999999978 < abs(v6.z));
      r4.x = fogConstants.atmospherefogheightdensityscale.x * v6.z;
      r4.y = -1.44269502 * r4.x;
      r4.y = exp2(r4.y);
      r4.y = 1 + -r4.y;
      r4.x = r4.y / r4.x;
      r4.x = r4.x * r2.w;
      r2.w = r3.w ? r4.x : r2.w;
      r4.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
      r2.xyz = exp2(r4.xyz);
    }
    r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r2.w = dot(fogConstants.wldSunFogDir.xyz, -r3.xyz);
    r3.w = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r4.x = fogConstants.atmosphereMieSchlickK * -r2.w + 1;
    r4.x = r4.x * r4.x;
    r4.x = 12.566371 * r4.x;
    r3.w = r3.w / r4.x;
    r1.w = -fogConstants.atmospherehazebasedist + r1.w;
    r1.w = saturate(fogConstants.atmospherehazefadedist * r1.w);
    r1.w = r3.w * r1.w;
    r2.w = saturate(r2.w);
    r2.w = r2.w * r2.w + 1;
    r2.w = r2.w * 0.0596831031 + -1;
    r2.w = fogConstants.atmospheresunstrength * r2.w + 1;
    r4.xyz = fogConstants.atmosphereMieDensity.xyz * r1.www;
    r4.xyz = r2.www * fogConstants.atmosphereRayleighDensity.xyz + r4.xyz;
    r4.xyz = fogConstants.atmosphereInScatterIntensity * r4.xyz;
    r5.xyz = float3(1,1,1) + -r2.xyz;
    r4.xyz = r5.xyz * r4.xyz;
    r2.xyz = r0.xyw * r2.xyz + r4.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v6.z;
    r2.w = fogConstants.heightFalloff * v6.z + fogConstants.K0;
    r3.w = cmp(abs(r1.w) < 9.99999975e-05);
    r4.x = min(64, r2.w);
    r4.x = 1.44269502 * r4.x;
    r4.x = exp2(r4.x);
    r4.y = saturate(fogConstants.K0b);
    r4.z = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r4.z ? r4.x : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r1.w = r3.w ? 1 : r1.w;
    r1.w = r2.w / r1.w;
    r1.w = r3.w ? r4.y : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r0.z = sqrt(r0.z);
    r0.z = r1.w * r0.z + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r3.xyz);
    r1.w = saturate(fogConstants.sunFogAngles.y * r1.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r1.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.z = r3.w * r0.z;
    r3.xyz = r3.xyz + -r0.xyw;
    r2.xyz = r0.zzz * r3.xyz + r0.xyw;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r2.xyz ? r0.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  // Needs manual fix for instruction:
imm_atomic_iadd r1.z, u6, r1.xyxx, l(1)
  InterlockedAdd(dest, imm_value, orig_value);
  r1.w = cmp((uint)r1.z < oitMaxEntries);
  if (r1.w != 0) {
    r2.xyz = max(float3(0,0,0), r0.xyz);
    r2.w = max(r2.y, r2.z);
    r2.w = max(r2.x, r2.w);
    r2.w = (int)r2.w & 0x7f800000;
    r2.w = (int)r2.w + 0x00800000;
    r2.xyz = r2.xyz + r2.www;
    if (8 == 0) r2.x = 0; else if (8+15 < 32) {     r2.x = (uint)r2.x << (32-(8 + 15)); r2.x = (uint)r2.x >> (32-8);    } else r2.x = (uint)r2.x >> 15;
    r2.yz = (uint2)r2.yz >> int2(15,15);
    bitmask.y = ((~(-1 << 8)) << 8) & 0xffffffff;  r2.y = (((uint)r2.y << 8) & bitmask.y) | ((uint)0 & ~bitmask.y);
    bitmask.z = ((~(-1 << 8)) << 16) & 0xffffffff;  r2.z = (((uint)r2.z << 16) & bitmask.z) | ((uint)0 & ~bitmask.z);
    r2.x = (int)r2.y + (int)r2.x;
    r2.x = (int)r2.z + (int)r2.x;
    r2.y = (uint)r2.w << 1;
    r2.xzw = (int3)r2.yyy + (int3)r2.xxx;
    r3.x = (uint)v0.z << 2;
    bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r2.y = (((uint)2046 << 0) & bitmask.y) | ((uint)r3.x & ~bitmask.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u7.xyzw, r1.xyzz, r2.xyzw
  }
  r0.w = 1;
  o0.xyzw = r1.wwww ? float4(0,0,0,0) : r0.xyzw;
  return;
}