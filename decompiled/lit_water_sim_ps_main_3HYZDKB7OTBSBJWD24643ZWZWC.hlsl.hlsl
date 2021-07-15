// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:40 2021

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
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
// Needs manual fix for instruction: 
// unknown dcl_: dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(v0.z >= 0.984375);
  r0.y = 1.01587307 * v0.z;
  r0.z = v0.z * 64 + -63;
  r0.x = r0.x ? r0.z : r0.y;
  r0.x = max(9.99999994e-09, r0.x);
  r0.x = rcp(r0.x);
  r1.xy = (uint2)v0.xy;
  r0.yzw = ddx_coarse(v7.xyz);
  r2.xyz = ddy_coarse(v7.xyz);
  r1.w = numRefProbes + numLights;
  r3.xyz = eyeOffset.xyz + v7.xyz;
  r2.w = 0.0078125 * r0.x;
  r2.w = min(15, r2.w);
  r2.w = (uint)r2.w;
  r4.xy = (uint2)r1.xy >> int2(6,6);
  r4.z = (uint)r2.w << 4;
  r2.w = numStaticDecals & -32;
  r4.w = (int)-r2.w + numStaticDecals;
  r5.xy = float2(0,0);
  r6.w = 0;
  r3.w = 1;
  r7.xyzw = float4(0,0,0,0);
  r8.xyz = float3(0,0,0);
  r5.w = 0;
  while (true) {
    r8.w = cmp((uint)r5.w >= numStaticDecals);
    if (r8.w != 0) break;
    r5.z = (uint)r5.w >> 5;
    r6.xyz = (int3)r4.xyz + (int3)r5.xyz;
    r5.z = visibleDecals.Load(r6.xyzw).x;
    r6.x = cmp((int)r2.w == (int)r5.w);
    if (r4.w == 0) r6.y = 0; else if (r4.w+0 < 32) {     r6.y = (uint)r5.z << (32-(r4.w + 0)); r6.y = (uint)r6.y >> (32-r4.w);    } else r6.y = (uint)r5.z >> 0;
    r5.z = r6.x ? r6.y : r5.z;
    r6.x = (int)r1.w + (int)r5.w;
    r9.xyzw = r7.yzwx;
    r10.xyz = r8.xyz;
    r6.y = r5.z;
    while (true) {
      if (r6.y == 0) break;
      r6.z = firstbitlow((uint)r6.y);
      r8.w = 1 << (int)r6.z;
      r10.w = (int)r6.y & (int)r8.w;
      if (r10.w != 0) {
        r6.y = (int)r6.y ^ (int)r8.w;
        r8.w = (int)r6.z + (int)r6.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r11.xyzw, r8.w, l(0), t11.xyzw
      r11.x = samp0[]..swiz;
      r11.y = samp0[]..swiz;
      r11.z = samp0[]..swiz;
      r11.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r12.xy, r8.w, l(16), t11.xyxx
      r12.x = samp0[]..swiz;
      r12.y = samp0[]..swiz;
        r11.xyz = -v7.xyz + r11.xyz;
        r12.z = r11.w;
        r11.xyz = cmp(abs(r11.xyz) < r12.zxy);
        r8.w = r11.y ? r11.x : 0;
        r8.w = r11.z ? r8.w : 0;
        if (r8.w != 0) {
          r6.z = (int)r5.w + (int)r6.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.xyz, r6.z, l(0), t36.xyzx
        r11.x = samp0[]..swiz;
        r11.y = samp0[]..swiz;
        r11.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.xyz, r6.z, l(16), t36.xyzx
        r12.x = samp0[]..swiz;
        r12.y = samp0[]..swiz;
        r12.z = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r13.xyz, r6.z, l(32), t36.xyzx
        r13.x = samp0[]..swiz;
        r13.y = samp0[]..swiz;
        r13.z = samp0[]..swiz;
          r14.x = r11.x;
          r14.y = r12.x;
          r14.z = r13.x;
          r8.w = dot(r14.xyz, r14.xyz);
          r8.w = rsqrt(r8.w);
          r15.xyz = r14.xyz * r8.www;
          r8.w = dot(r15.xyz, v4.xyz);
          r8.w = cmp(r8.w >= 0.5);
          if (r8.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.xyw, r6.z, l(48), t36.xyxz
          r15.x = samp0[]..swiz;
          r15.y = samp0[]..swiz;
          r15.w = samp0[]..swiz;
            r14.w = r15.x;
            r14.x = dot(r3.xyzw, r14.xyzw);
            r16.x = r11.y;
            r16.y = r12.y;
            r16.z = r13.y;
            r16.w = r15.y;
            r14.y = dot(r3.xyzw, r16.xyzw);
            r15.x = r11.z;
            r15.y = r12.z;
            r15.z = r13.z;
            r14.z = dot(r3.xyzw, r15.xyzw);
            r11.xyz = cmp(abs(r14.xyz) < float3(1,1,1));
            r8.w = r11.y ? r11.x : 0;
            r8.w = r11.z ? r8.w : 0;
            if (r8.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r11.xyzw, r6.z, l(64), t36.xyzw
            r11.x = samp0[]..swiz;
            r11.y = samp0[]..swiz;
            r11.z = samp0[]..swiz;
            r11.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r12.xyzw, r6.z, l(80), t36.xyzw
            r12.x = samp0[]..swiz;
            r12.y = samp0[]..swiz;
            r12.z = samp0[]..swiz;
            r12.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r8.w, r6.z, l(108), t36.xxxx
            r8.w = samp0[]..swiz;
              r13.x = dot(r0.yzw, r16.xyz);
              r13.y = dot(r0.yzw, r15.xyz);
              r16.x = dot(r2.xyz, r16.xyz);
              r16.y = dot(r2.xyz, r15.xyz);
              r13.zw = r14.yz * float2(0.5,-0.5) + float2(0.5,0.5);
              r14.xyz = float3(0.5,-0.5,0.5) * r13.xyx;
              r15.xyz = float3(0.5,-0.5,0.5) * r16.xyx;
              r12.yz = (int2)r12.yz & int2(65535,65535);
              if (r12.y != 0) {
                if (4 == 0) r10.w = 0; else if (4+24 < 32) {                 r10.w = (uint)r12.w << (32-(4 + 24)); r10.w = (uint)r10.w >> (32-4);                } else r10.w = (uint)r12.w >> 24;
                r10.w = 1 << (int)r10.w;
                r13.x = (uint)r12.w >> 28;
                r13.x = 1 << (int)r13.x;
                r13.y = cmp((int)r12.y == 4);
                if (r13.y != 0) {
                  r13.y = (int)r12.w & 4095;
                  if (12 == 0) r14.w = 0; else if (12+12 < 32) {                   r14.w = (uint)r12.w << (32-(12 + 12)); r14.w = (uint)r14.w >> (32-12);                  } else r14.w = (uint)r12.w >> 12;
                  r15.w = r8.w ? 0.000000 : 0;
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
                    if (12 == 0) r12.w = 0; else if (12+12 < 32) {                     r12.w = (uint)r12.w << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                    } else r12.w = (uint)r12.w >> 12;
                    r13.y = r8.w ? 0.000000 : 0;
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
                            ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r6.z, r6.z, l(100), t36.xxxx
              r6.z = samp0[]..swiz;
                if (4 == 0) r11.w = 0; else if (4+24 < 32) {                 r11.w = (uint)r6.z << (32-(4 + 24)); r11.w = (uint)r11.w >> (32-4);                } else r11.w = (uint)r6.z >> 24;
                r11.w = 1 << (int)r11.w;
                r12.x = (uint)r6.z >> 28;
                r12.x = 1 << (int)r12.x;
                r12.y = cmp((int)r12.z == 2);
                if (r12.y != 0) {
                  r12.y = (int)r6.z & 4095;
                  if (12 == 0) r12.w = 0; else if (12+12 < 32) {                   r12.w = (uint)r6.z << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                  } else r12.w = (uint)r6.z >> 12;
                  if (10 == 0) r13.x = 0; else if (10+20 < 32) {                   r13.x = (uint)r8.w << (32-(10 + 20)); r13.x = (uint)r13.x >> (32-10);                  } else r13.x = (uint)r8.w >> 20;
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
                    r12.z = (int)r6.z & 4095;
                    if (12 == 0) r12.w = 0; else if (12+12 < 32) {                     r12.w = (uint)r6.z << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                    } else r12.w = (uint)r6.z >> 12;
                    if (10 == 0) r13.x = 0; else if (10+20 < 32) {                     r13.x = (uint)r8.w << (32-(10 + 20)); r13.x = (uint)r13.x >> (32-10);                    } else r13.x = (uint)r8.w >> 20;
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
                    r12.z = (int)r6.z & 4095;
                    if (12 == 0) r6.z = 0; else if (12+12 < 32) {                     r6.z = (uint)r6.z << (32-(12 + 12)); r6.z = (uint)r6.z >> (32-12);                    } else r6.z = (uint)r6.z >> 12;
                    if (10 == 0) r8.w = 0; else if (10+20 < 32) {                     r8.w = (uint)r8.w << (32-(10 + 20)); r8.w = (uint)r8.w >> (32-10);                    } else r8.w = (uint)r8.w >> 20;
                    r16.xz = (uint2)r11.ww;
                    r16.y = (uint)r12.x;
                    r12.xw = r13.zw * r16.xy + float2(0.5,0.5);
                    r13.xy = float2(-0.5,-0.5) + r16.zy;
                    r12.xw = min(r13.xy, r12.xw);
                    r13.x = (uint)r12.z;
                    r13.y = (uint)r6.z;
                    r12.xz = r13.xy + r12.xw;
                    r13.xy = invBcTexSizes.zw * r12.xz;
                    r13.z = (uint)r8.w;
                    r12.xzw = invBcTexSizes.zwz * r14.xyz;
                    r12.xzw = r12.xzw * r16.xyz;
                    r14.xyz = invBcTexSizes.zwz * r15.xyz;
                    r14.xyz = r14.xyz * r16.xyz;
                    r12.y = materialTexBC3.SampleGrad(samplerLinearClamp_s, r13.xyz, r12.z, r14.y).x;
                  }
                }
                r12.xzw = r12.yyy * float3(0.959999979,0.959999979,0.959999979) + float3(0.0399999991,0.0399999991,0.0399999991);
                r6.z = saturate(1 + -r12.y);
                r11.xyz = r11.xyz * r6.zzz;
              } else {
                r12.xzw = float3(0.0399999991,0.0399999991,0.0399999991);
              }
              r6.z = 1 + -r10.w;
              r13.xyz = r10.xyz * r6.zzz;
              r10.xyz = r11.xyz * r10.www + r13.xyz;
              r11.xyz = r9.xyz * r6.zzz;
              r9.xyz = r12.xzw * r10.www + r11.xyz;
              r9.w = r9.w * r6.z + r10.w;
            }
          }
        }
      }
    }
    r7.xyzw = r9.wxyz;
    r8.xyz = r10.xyz;
    r5.w = (int)r5.w + 32;
  }
  r7.x = saturate(r7.x);
  r0.y = 1 + -r7.x;
  r0.zw = normalMapScale.xy * v2.xy;
  r2.xy = gameTime.ww * noiseParams.xy;
  r2.xy = v2.xy * noiseParams.zz + r2.xy;
  r2.xy = noiseMap.Sample(noiseSampler_s, r2.xy).xy;
  r2.xy = noiseParams.ww * r2.xy;
  r2.xy = v2.xy * flowParams.xx + r2.xy;
  r2.zw = frac(r2.xy);
  r5.xy = r2.zw * float2(-2,-2) + float2(3,3);
  r2.zw = r2.zw * r2.zw;
  r5.zw = r5.xy * r2.zw;
  normalMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r6.xy = fDest.xy;
  r6.xy = r6.xy * r0.zw;
  r6.zw = ddx_coarse(r6.xy);
  r6.xy = ddy_coarse(r6.xy);
  r1.w = dot(r6.zw, r6.zw);
  r4.w = dot(r6.xy, r6.xy);
  r1.w = max(r4.w, r1.w);
  r1.w = log2(r1.w);
  r1.w = 0.5 * r1.w;
  r6.xy = floor(r2.xy);
  r6.xy = r6.xy / flowParams.xx;
  r6.xy = flowMap.Sample(flowSampler_s, r6.xy).xy;
  r6.xy = r6.xy + r6.xy;
  r9.xyzw = float4(1,0,0,1) + r2.xyxy;
  r9.xyzw = floor(r9.xyzw);
  r9.xyzw = r9.xyzw / flowParams.xxxx;
  r6.zw = flowMap.Sample(flowSampler_s, r9.xy).xy;
  r6.zw = r6.zw + r6.zw;
  r9.xy = flowMap.Sample(flowSampler_s, r9.zw).xy;
  r9.xy = r9.xy + r9.xy;
  r2.xy = float2(1,1) + r2.xy;
  r2.xy = floor(r2.xy);
  r2.xy = r2.xy / flowParams.xx;
  r2.xy = flowMap.Sample(flowSampler_s, r2.xy).xy;
  r2.xy = r2.xy + r2.xy;
  if (useSpecularZFeather != 0) {
    r9.zw = flowMap.Sample(flowSampler_s, v2.xy).xy;
    r10.xy = r9.zw + r9.zw;
    r10.zw = r10.xy * float2(-1,1) + float2(1,-1);
    r9.zw = r10.xw * float2(-1,1) + float2(1,0);
    r4.w = dot(r10.zw, r9.zw);
    r4.w = sqrt(r4.w);
    r4.w = r4.w * normalsFlowScaleMin.y + normalsFlowScaleMin.x;
    r9.zw = normalAdjustAndGloss.xy * r4.ww;
  } else {
    r9.zw = normalAdjustAndGloss.xy;
  }
  r2.zw = -r5.xy * r2.zw + float2(1,1);
  r2.zw = r2.zw * r2.zw;
  r2.zw = r5.zw * r5.zw + r2.zw;
  r2.zw = rsqrt(r2.zw);
  if (useOrientedNormalMap == 0) {
    r4.w = gameTime.w * flowParams.y;
    r5.xy = r6.xy * float2(-1,1) + float2(1,-1);
    r5.xy = r5.xy * r4.ww + r0.zw;
    r5.xy = normalMap.SampleLevel(normalSampler_s, r5.xy, r1.w).xy;
    r10.xy = r6.zw * float2(-1,1) + float2(1,-1);
    r10.xy = r10.xy * r4.ww + r0.zw;
    r10.xy = normalMap.SampleLevel(normalSampler_s, r10.xy, r1.w).xy;
    r10.xy = r10.xy + -r5.xy;
    r5.xy = r5.zz * r10.xy + r5.xy;
    r10.xy = r9.xy * float2(-1,1) + float2(1,-1);
    r10.xy = r10.xy * r4.ww + r0.zw;
    r10.xy = normalMap.SampleLevel(normalSampler_s, r10.xy, r1.w).xy;
    r10.zw = r2.xy * float2(-1,1) + float2(1,-1);
    r0.zw = r10.zw * r4.ww + r0.zw;
    r0.zw = normalMap.SampleLevel(normalSampler_s, r0.zw, r1.w).xy;
    r0.zw = r0.zw + -r10.xy;
    r0.zw = r5.zz * r0.zw + r10.xy;
    r0.zw = r0.zw + -r5.xy;
    r0.zw = r5.ww * r0.zw + r5.xy;
    r0.zw = r0.zw * r9.zz + r9.ww;
  } else {
    r5.xy = r6.xy * float2(-1,1) + float2(1,-1);
    r4.w = dot(r5.xy, r5.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r10.xy = r5.xy / r4.ww;
    r10.z = -r10.x;
    r5.x = dot(v2.xy, r10.yz);
    r5.y = dot(v2.xy, -r10.xy);
    r11.xy = normalMapScale.xy * r5.xy;
    r4.w = gameTime.w * r4.w;
    r11.z = -r4.w * flowParams.y + r11.y;
    r5.xy = normalMap.SampleLevel(normalSampler_s, r11.xz, r1.w).xy;
    r5.xy = r5.xy * r9.zz + r9.ww;
    r6.x = dot(r5.xy, r10.yz);
    r6.y = dot(r5.xy, -r10.xy);
    r5.xy = r6.zw * float2(-1,1) + float2(1,-1);
    r4.w = dot(r5.xy, r5.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r10.xy = r5.xy / r4.ww;
    r10.z = -r10.x;
    r5.x = dot(v2.xy, r10.yz);
    r5.y = dot(v2.xy, -r10.xy);
    r11.xy = normalMapScale.xy * r5.xy;
    r4.w = gameTime.w * r4.w;
    r11.z = -r4.w * flowParams.y + r11.y;
    r5.xy = normalMap.SampleLevel(normalSampler_s, r11.xz, r1.w).xy;
    r5.xy = r5.xy * r9.zz + r9.ww;
    r11.x = dot(r5.xy, r10.yz);
    r11.y = dot(r5.xy, -r10.xy);
    r5.xy = r11.xy + -r6.xy;
    r5.xy = r5.zz * r5.xy + r6.xy;
    r6.xy = r9.xy * float2(-1,1) + float2(1,-1);
    r4.w = dot(r6.xy, r6.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r6.xy = r6.xy / r4.ww;
    r6.z = -r6.x;
    r9.x = dot(v2.xy, r6.yz);
    r9.y = dot(v2.xy, -r6.xy);
    r10.xy = normalMapScale.xy * r9.xy;
    r4.w = gameTime.w * r4.w;
    r10.z = -r4.w * flowParams.y + r10.y;
    r9.xy = normalMap.SampleLevel(normalSampler_s, r10.xz, r1.w).xy;
    r9.xy = r9.xy * r9.zz + r9.ww;
    r10.x = dot(r9.xy, r6.yz);
    r10.y = dot(r9.xy, -r6.xy);
    r2.xy = r2.xy * float2(-1,1) + float2(1,-1);
    r4.w = dot(r2.xy, r2.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r6.xy = r2.xy / r4.ww;
    r6.z = -r6.x;
    r2.x = dot(v2.xy, r6.yz);
    r2.y = dot(v2.xy, -r6.xy);
    r11.xy = normalMapScale.xy * r2.xy;
    r2.x = gameTime.w * r4.w;
    r11.z = -r2.x * flowParams.y + r11.y;
    r2.xy = normalMap.SampleLevel(normalSampler_s, r11.xz, r1.w).xy;
    r2.xy = r2.xy * r9.zz + r9.ww;
    r9.x = dot(r2.xy, r6.yz);
    r9.y = dot(r2.xy, -r6.xy);
    r2.xy = r9.xy + -r10.xy;
    r2.xy = r5.zz * r2.xy + r10.xy;
    r2.xy = r2.xy + -r5.xy;
    r0.zw = r5.ww * r2.xy + r5.xy;
  }
  r1.w = r2.z * r2.w;
  r0.zw = r1.ww * r0.zw;
  r2.xyz = v6.xyz * r0.www;
  r2.xyz = v5.xyz * r0.zzz + r2.xyz;
  r2.xyz = v4.xyz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r2.xyz = v10.xxx ? r2.xyz : -r2.xyz;
  r0.z = dot(v7.xyz, v7.xyz);
  r0.w = rsqrt(r0.z);
  r5.xyz = v7.xyz * r0.www;
  r6.z = saturate(dot(r2.xyz, -r5.xyz));
  if (v10.x != 0) {
    r9.xy = (int2)v0.xy;
    r9.zw = float2(0,0);
    r0.w = ifloatZScene.Load(r9.xyz).x;
    r1.w = cmp(r0.w >= 0.984375);
    r4.w = 1.01587307 * r0.w;
    r0.w = r0.w * 64 + -63;
    r0.w = r1.w ? r0.w : r4.w;
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
    r4.w = foamBase.Sample(foamSampler_s, v8.xy).x;
    r5.w = foamBase.Sample(foamSampler_s, v8.zw).x;
    r8.w = foamBase.Sample(foamSampler_s, v9.xy).x;
    r9.x = foamBase.Sample(foamSampler_s, v9.zw).x;
    r4.w = r5.w + r4.w;
    r4.w = r4.w + r8.w;
    r4.w = r4.w + r9.x;
    r4.w = foamColorScale * r4.w;
    r5.w = flowMap.Sample(flowSampler_s, v2.xy).z;
    r5.w = foamSpacing.y * r5.w + foamSpacing.x;
    r4.w = max(0, r4.w);
    r4.w = log2(r4.w);
    r4.w = r5.w * r4.w;
    r4.w = exp2(r4.w);
    r5.w = foamZFeather * r0.w;
    r5.w = min(1, r5.w);
    r8.w = r5.w * r4.w;
    r4.w = -r4.w * r5.w + 1;
    r4.w = normalAdjustAndGloss.z * r4.w;
  } else {
    r8.w = 0;
    r4.w = normalAdjustAndGloss.z;
  }
  r5.w = dot(-v7.xyz, -v7.xyz);
  r5.w = rsqrt(r5.w);
  r9.xyz = -v7.xyz * r5.www;
  r10.xy = (uint2)r1.xy;
  r9.w = dot(r10.xy, float2(0.0671105608,0.00583714992));
  r9.w = frac(r9.w);
  r9.w = 52.9829178 * r9.w;
  r9.w = frac(r9.w);
  r9.w = r9.w * 6.28318548 + gameTick.w;
  sincos(r9.w, r10.x, r11.x);
  r9.w = saturate(dot(r2.xyz, r9.xyz));
  r10.y = dot(-r9.xyz, r2.xyz);
  r10.y = r10.y + r10.y;
  r12.xyz = r2.xyz * -r10.yyy + -r9.xyz;
  r10.y = 1 + -r4.w;
  r10.z = 5 * r10.y;
  r10.w = r10.y * 5 + -2.5;
  r10.w = saturate(0.400000006 * r10.w);
  r10.w = 100 * r10.w;
  r11.yz = -r10.yy * float2(10,5) + float2(6.85740995,7.08500004);
  r11.y = exp2(r11.y);
  r11.y = r11.y * r9.w;
  r11.w = r10.z * r10.y;
  r11.z = -r11.w * 2.0159049 + r11.z;
  r11.z = exp2(r11.z);
  r11.z = r11.z * r9.w;
  r11.yz = float2(9.1368103,9.70808983) * r11.yz;
  r11.y = max(r11.y, r11.z);
  r11.y = max(1.26815999, r11.y);
  r11.z = numRefProbes + -numOverrideProbes;
  r11.w = (int)r11.z & -32;
  r13.x = (int)-r11.w + (int)r11.z;
  r13.y = numRefProbes & -32;
  r13.z = (int)-r13.y + numRefProbes;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r6.xw = float2(1,0);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r13.w = r11.w;
  while (true) {
    r14.w = cmp((uint)r13.w >= numRefProbes);
    if (r14.w != 0) break;
    r14.z = (uint)r13.w >> 5;
    r15.xyz = (int3)r4.xyz + (int3)r14.xyz;
    r14.z = visibleProbes.Load(r15.xyzw).x;
    r14.w = cmp((int)r11.w == (int)r13.w);
    bitmask.x = ((~(-1 << r13.x)) << 0) & 0xffffffff;  r15.x = (((uint)0 << 0) & bitmask.x) | ((uint)r14.z & ~bitmask.x);
    r14.z = r14.w ? r15.x : r14.z;
    r14.w = cmp((int)r13.y == (int)r13.w);
    if (r13.z == 0) r15.x = 0; else if (r13.z+0 < 32) {     r15.x = (uint)r14.z << (32-(r13.z + 0)); r15.x = (uint)r15.x >> (32-r13.z);    } else r15.x = (uint)r14.z >> 0;
    r14.z = r14.w ? r15.x : r14.z;
    r14.w = (int)r13.w + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r15.x = r14.z;
    while (true) {
      if (r15.x == 0) break;
      r15.y = firstbitlow((uint)r15.x);
      r15.z = 1 << (int)r15.y;
      r16.w = (int)r15.z & (int)r15.x;
      if (r16.w != 0) {
        r15.x = (int)r15.z ^ (int)r15.x;
        r15.z = (int)r14.w + (int)r15.y;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r15.z, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r15.z, l(16), t11.xyxx
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
        r24.xyz = -v7.xyz + r24.xyz;
        r25.z = r24.w;
        r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
        r15.z = r24.y ? r24.x : 0;
        r15.z = r24.z ? r15.z : 0;
        if (r15.z != 0) {
          r15.y = (int)r13.w + (int)r15.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r15.y, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xy, r15.y, l(96), t15.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r15.y, l(116), t15.zwxy
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
          r27.xyz = v7.xyz + -r24.yzw;
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
          r18.w = dot(r29.xyz, r27.xyz);
          r18.w = saturate(r18.w + r29.w);
          r17.w = r18.w * r17.w;
          r18.w = dot(r30.xyz, r27.xyz);
          r18.w = saturate(r18.w + r30.w);
          r17.w = r18.w * r17.w;
          r18.w = dot(r31.xyz, r27.xyz);
          r18.w = saturate(r18.w + r31.w);
          r17.w = r18.w * r17.w;
          r18.w = dot(r32.xyz, r27.xyz);
          r18.w = saturate(r18.w + r32.w);
          r17.w = r18.w * r17.w;
          r18.w = dot(r33.xyz, r27.xyz);
          r18.w = saturate(r18.w + r33.w);
          r16.x = r18.w * r17.w;
          r17.w = (int)r25.x & 1;
          r25.zw = r17.ww ? r16.xy : r16.zx;
          r16.x = r25.x;
          r28.xy = r25.zw;
          r17.w = 1;
          while (true) {
            r18.w = cmp((int)r17.w >= (int)r16.w);
            if (r18.w != 0) break;
            r18.w = (int)r15.z + (int)r17.w;
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
            r18.w = dot(r29.xyz, r27.xyz);
            r18.w = saturate(r18.w + r29.w);
            r18.w = r28.x * r18.w;
            r19.w = dot(r30.xyz, r27.xyz);
            r19.w = saturate(r19.w + r30.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r31.xyz, r27.xyz);
            r19.w = saturate(r19.w + r31.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r32.xyz, r27.xyz);
            r19.w = saturate(r19.w + r32.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r33.xyz, r27.xyz);
            r19.w = saturate(r19.w + r33.w);
            r18.w = r19.w * r18.w;
            r19.w = dot(r34.xyz, r27.xyz);
            r19.w = saturate(r19.w + r34.w);
            r28.x = r19.w * r18.w;
            r24.w = (uint)r16.x >> 2;
            if (1 == 0) r27.w = 0; else if (1+2 < 32) {             r27.w = (uint)r16.x << (32-(1 + 2)); r27.w = (uint)r27.w >> (32-1);            } else r27.w = (uint)r16.x >> 2;
            r28.z = (int)r24.w & 2;
            r28.w = max(r28.y, r28.x);
            r18.w = -r18.w * r19.w + 1;
            r18.w = r28.y * r18.w;
            r6.y = r28.z ? r18.w : r28.w;
            r28.xy = r27.ww ? r28.xy : r6.xy;
            r17.w = (int)r17.w + 1;
            r16.x = r24.w;
          }
          r28.y = saturate(r28.y);
          r6.y = r28.y * r25.y;
          r15.z = cmp(0 < r6.y);
          if (r15.z != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r15.y, l(16), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r15.y, l(32), t15.yxwz
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r15.y, l(48), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r15.y, l(64), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.y, l(80), t15.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.y, l(132), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.y, l(148), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.y, l(164), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.y, l(180), t15.zwxy
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r15.y, l(196), t15.xyzw
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r15.y, l(212), t15.xyxx
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
            r23.z = r28.y * r25.y + r23.z;
            r6.y = r6.y * r26.z;
            r26.z = r34.z;
            r15.y = dot(r12.xyz, r26.xyz);
            r15.z = dot(r27.xyz, r26.xyz);
            r15.z = r15.z + -r34.w;
            r16.x = cmp(r15.z >= 0);
            r15.z = max(abs(r15.z), r10.w);
            r15.z = r16.x ? r15.z : -r15.z;
            r15.y = max(1.00000001e-07, -r15.y);
            r15.y = r15.z / r15.y;
            r15.y = min(131072, abs(r15.y));
            r34.z = r35.z;
            r15.z = dot(r12.xyz, r34.xyz);
            r16.x = dot(r27.xyz, r34.xyz);
            r16.x = r16.x + -r35.w;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r10.w);
            r16.x = r16.w ? r16.x : -r16.x;
            r15.z = max(1.00000001e-07, -r15.z);
            r15.z = r16.x / r15.z;
            r15.y = min(r15.y, abs(r15.z));
            r35.z = r36.z;
            r15.z = dot(r12.xyz, r35.xyz);
            r16.x = dot(r27.xyz, r35.xyz);
            r16.x = r16.x + -r36.w;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r10.w);
            r16.x = r16.w ? r16.x : -r16.x;
            r15.z = max(1.00000001e-07, -r15.z);
            r15.z = r16.x / r15.z;
            r15.y = min(r15.y, abs(r15.z));
            r36.z = r37.z;
            r15.z = dot(r12.xyz, r36.xyz);
            r16.x = dot(r27.xyz, r36.xyz);
            r16.x = r16.x + -r37.w;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r10.w);
            r16.x = r16.w ? r16.x : -r16.x;
            r15.z = max(1.00000001e-07, -r15.z);
            r15.z = r16.x / r15.z;
            r15.y = min(r15.y, abs(r15.z));
            r37.z = r38.x;
            r15.z = dot(r12.xyz, r37.xyz);
            r16.x = dot(r27.xyz, r37.xyz);
            r16.x = r16.x + -r38.y;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r10.w);
            r16.x = r16.w ? r16.x : -r16.x;
            r15.z = max(1.00000001e-07, -r15.z);
            r15.z = r16.x / r15.z;
            r15.y = min(r15.y, abs(r15.z));
            r39.zw = r38.zw;
            r15.z = dot(r12.zxy, r39.xzw);
            r16.x = dot(r27.zxy, r39.xzw);
            r16.x = r16.x + -r39.y;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r10.w);
            r16.x = r16.w ? r16.x : -r16.x;
            r15.z = max(1.00000001e-07, -r15.z);
            r15.z = r16.x / r15.z;
            r15.y = min(r15.y, abs(r15.z));
            r25.x = r31.w;
            r25.yz = r32.zw;
            r25.xyz = r25.xyz + r27.xyz;
            r25.xyz = r12.xyz * r15.yyy + r25.xyz;
            r15.z = dot(r25.xyz, r25.xyz);
            r15.z = sqrt(r15.z);
            r15.y = r15.y / r15.z;
            r15.y = r15.y + r15.y;
            r15.y = sqrt(r15.y);
            r15.y = r10.y * 5 + r15.y;
            r15.y = -0.844799995 + r15.y;
            r24.y = r29.z;
            r24.z = r30.x;
            r34.x = dot(r25.xyz, r24.xyz);
            r26.xy = r29.xw;
            r26.z = r30.w;
            r34.y = dot(r25.xyz, r26.xyz);
            r30.x = r29.y;
            r34.z = dot(r25.xyz, r30.xyz);
            if (9 == 0) r15.z = 0; else if (9+16 < 32) {             r15.z = (uint)r26.w << (32-(9 + 16)); r15.z = (uint)r15.z >> (32-9);            } else r15.z = (uint)r26.w >> 16;
            r34.w = (uint)r15.z;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r15.y).xyz;
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
            r17.z = r24.x ? 0 : 0.5;
            r26.xyz = r27.xyz + r17.xyz;
            r26.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
            r28.xzw = r34.xyz * r34.xyz;
            r28.xzw = r28.xzw * r6.yyy;
            r18.z = r24.y ? 0 : 0.5;
            r24.xyw = r27.xyz + r18.xyz;
            r24.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r24.xyw, 0).xyz;
            r24.xyw = r24.xyw * r28.zzz;
            r24.xyw = r26.xyz * r28.xxx + r24.xyw;
            r19.z = r24.z ? 0 : 0.5;
            r26.xyz = r27.xyz + r19.xyz;
            r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
            r24.xyz = r26.xyz * r28.www + r24.xyw;
            r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, 6).xyz;
            r27.xyz = r26.xyz * r24.xyz;
            r15.y = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r24.xyz * r26.xyz + r22.xyz;
            r15.z = r15.y * r11.y;
            r24.xyz = r25.xyz * r6.yyy;
            r6.y = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r6.y = r11.y * r15.y + r6.y;
            r6.y = r15.z / r6.y;
            r25.x = r22.w;
            r25.yz = r23.xy;
            r23.xyw = r24.yzx * r6.yyy + r25.yzx;
            r22.w = r23.w;
          }
        }
      }
    }
    r20.xyzw = r22.xyzw;
    r21.yzw = r23.xyz;
    r13.w = (int)r13.w + 32;
  }
  r6.x = cmp(r21.w < 1);
  if (r6.x != 0) {
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r6.x = 1;
    r18.xy = float2(0,0);
    r19.xy = float2(0,0);
    r22.x = r20.w;
    r22.yzw = r21.yzw;
    r13.yzw = r20.xyz;
    r14.w = r21.w;
    r16.w = 0;
    while (true) {
      r17.w = cmp((uint)r16.w >= (uint)r11.z);
      if (r17.w != 0) break;
      r14.z = (uint)r16.w >> 5;
      r15.xyz = (int3)r4.xyz + (int3)r14.xyz;
      r14.z = visibleProbes.Load(r15.xyzw).x;
      r15.x = cmp((int)r11.w == (int)r16.w);
      if (r13.x == 0) r15.y = 0; else if (r13.x+0 < 32) {       r15.y = (uint)r14.z << (32-(r13.x + 0)); r15.y = (uint)r15.y >> (32-r13.x);      } else r15.y = (uint)r14.z >> 0;
      r14.z = r15.x ? r15.y : r14.z;
      r15.x = (int)r16.w + numLights;
      r23.xyzw = r22.xyzw;
      r24.xyz = r13.yzw;
      r15.y = r14.w;
      r15.z = r14.z;
      while (true) {
        if (r15.z == 0) break;
        r17.w = firstbitlow((uint)r15.z);
        r18.w = 1 << (int)r17.w;
        r19.w = (int)r15.z & (int)r18.w;
        if (r19.w != 0) {
          r15.z = (int)r15.z ^ (int)r18.w;
          r18.w = (int)r15.x + (int)r17.w;
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
            r17.w = (int)r16.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r17.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xy, r17.w, l(96), t15.xyxx
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(116), t15.zwxy
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
            r24.w = dot(r29.xyz, r28.xyz);
            r24.w = saturate(r24.w + r29.w);
            r25.w = dot(r30.xyz, r28.xyz);
            r25.w = saturate(r25.w + r30.w);
            r24.w = r25.w * r24.w;
            r25.w = dot(r31.xyz, r28.xyz);
            r25.w = saturate(r25.w + r31.w);
            r24.w = r25.w * r24.w;
            r25.w = dot(r32.xyz, r28.xyz);
            r25.w = saturate(r25.w + r32.w);
            r24.w = r25.w * r24.w;
            r25.w = dot(r33.xyz, r28.xyz);
            r25.w = saturate(r25.w + r33.w);
            r24.w = r25.w * r24.w;
            r25.w = dot(r34.xyz, r28.xyz);
            r25.w = saturate(r25.w + r34.w);
            r16.x = r25.w * r24.w;
            r24.w = (int)r26.x & 1;
            r26.zw = r24.ww ? r16.xy : r16.zx;
            r16.x = r26.x;
            r29.xy = r26.zw;
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
              r6.y = r30.x ? r25.w : r30.y;
              r29.xy = r29.ww ? r29.xy : r6.xy;
              r24.w = (int)r24.w + 1;
              r16.x = r29.z;
            }
            r6.y = saturate(r29.y + -r15.y);
            r16.x = r6.y * r26.y;
            r18.w = cmp(0 < r16.x);
            if (r18.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r17.w, l(16), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r17.w, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r17.w, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r17.w, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r23.w = r6.y * r26.y + r23.w;
              r6.y = r16.x * r27.z;
              r27.z = r35.z;
              r16.x = dot(r12.xyz, r27.xyz);
              r17.w = dot(r28.xyz, r27.xyz);
              r17.w = r17.w + -r35.w;
              r18.w = cmp(r17.w >= 0);
              r17.w = max(abs(r17.w), r10.w);
              r17.w = r18.w ? r17.w : -r17.w;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r17.w / r16.x;
              r16.x = min(131072, abs(r16.x));
              r35.z = r36.z;
              r17.w = dot(r12.xyz, r35.xyz);
              r18.w = dot(r28.xyz, r35.xyz);
              r18.w = r18.w + -r36.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r10.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.w / r17.w;
              r16.x = min(abs(r17.w), r16.x);
              r36.z = r37.z;
              r17.w = dot(r12.xyz, r36.xyz);
              r18.w = dot(r28.xyz, r36.xyz);
              r18.w = r18.w + -r37.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r10.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.w / r17.w;
              r16.x = min(abs(r17.w), r16.x);
              r37.z = r38.z;
              r17.w = dot(r12.xyz, r37.xyz);
              r18.w = dot(r28.xyz, r37.xyz);
              r18.w = r18.w + -r38.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r10.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.w / r17.w;
              r16.x = min(abs(r17.w), r16.x);
              r38.z = r39.x;
              r17.w = dot(r12.xyz, r38.xyz);
              r18.w = dot(r28.xyz, r38.xyz);
              r18.w = r18.w + -r39.y;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r10.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.w / r17.w;
              r16.x = min(abs(r17.w), r16.x);
              r40.zw = r39.zw;
              r17.w = dot(r12.zxy, r40.xzw);
              r18.w = dot(r28.zxy, r40.xzw);
              r18.w = r18.w + -r40.y;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r10.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r17.w = max(1.00000001e-07, -r17.w);
              r17.w = r18.w / r17.w;
              r16.x = min(abs(r17.w), r16.x);
              r26.x = r32.w;
              r26.yz = r33.zw;
              r26.xyz = r26.xyz + r28.xyz;
              r26.xyz = r12.xyz * r16.xxx + r26.xyz;
              r17.w = dot(r26.xyz, r26.xyz);
              r17.w = sqrt(r17.w);
              r16.x = r16.x / r17.w;
              r16.x = r16.x + r16.x;
              r16.x = sqrt(r16.x);
              r16.x = r10.y * 5 + r16.x;
              r16.x = -0.844799995 + r16.x;
              r25.y = r30.z;
              r25.z = r31.x;
              r35.x = dot(r26.xyz, r25.xyz);
              r27.xy = r30.xw;
              r27.z = r31.w;
              r35.y = dot(r26.xyz, r27.xyz);
              r31.x = r30.y;
              r35.z = dot(r26.xyz, r31.xyz);
              if (9 == 0) r17.w = 0; else if (9+16 < 32) {               r17.w = (uint)r27.w << (32-(9 + 16)); r17.w = (uint)r17.w >> (32-9);              } else r17.w = (uint)r27.w >> 16;
              r35.w = (uint)r17.w;
              r26.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, r16.x).xyz;
              r30.x = dot(r28.xyz, r25.xyz);
              r30.y = dot(r28.xyz, r27.xyz);
              r30.z = dot(r28.xyz, r31.xyz);
              r28.xyz = saturate(r30.xyz * r32.xyz + float3(0.5,0.5,0.5));
              r33.z = r34.x;
              r28.xyz = r28.xyz * r33.xyz + r34.yzw;
              r35.x = dot(r2.xyz, r25.xyz);
              r35.y = dot(r2.xyz, r27.xyz);
              r35.z = dot(r2.xyz, r31.xyz);
              r25.xyz = cmp(float3(0,0,0) < r35.xyz);
              r17.z = r25.x ? 0 : 0.5;
              r27.xyz = r28.xyz + r17.xyz;
              r27.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r29.xzw = r35.xyz * r35.xyz;
              r29.xzw = r29.xzw * r6.yyy;
              r18.z = r25.y ? 0 : 0.5;
              r25.xyw = r28.xyz + r18.xyz;
              r25.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r25.xyw, 0).xyz;
              r25.xyw = r25.xyw * r29.zzz;
              r25.xyw = r27.xyz * r29.xxx + r25.xyw;
              r19.z = r25.z ? 0 : 0.5;
              r27.xyz = r28.xyz + r19.xyz;
              r27.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r27.xyz, 0).xyz;
              r25.xyz = r27.xyz * r29.www + r25.xyw;
              r27.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r35.xyzw, 6).xyz;
              r28.xyz = r27.xyz * r25.xyz;
              r16.x = dot(r28.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r24.xyz = r25.xyz * r27.xyz + r24.xyz;
              r17.z = r16.x * r11.y;
              r25.xyz = r26.xyz * r6.yyy;
              r6.y = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r6.y = r11.y * r16.x + r6.y;
              r6.y = r17.z / r6.y;
              r23.xyz = r25.xyz * r6.yyy + r23.xyz;
            }
          }
        }
      }
      r22.xyzw = r23.xyzw;
      r13.yzw = r24.xyz;
      r16.w = (int)r16.w + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r13.yzw;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r4.x = max(1, r21.w);
  r4.x = rcp(r4.x);
  r21.w = saturate(r21.w);
  r11.yzw = r20.xyz * r4.xxx;
  r13.xyz = r21.xyz * r4.xxx;
  r4.y = cmp(r21.w < 0.99000001);
  if (r4.y != 0) {
    r4.y = 1 + -r21.w;
    r4.z = sunConstants.globalProbeExposure * r4.y;
    r14.xyz = -globalProbeConstants.data[0].xyz + v7.xyz;
    r15.x = globalProbeConstants.data[0].w * r14.x;
    r15.yz = globalProbeConstants.data[1].xy * r14.yz;
    r14.xyz = saturate(float3(0.5,0.5,0.5) + r15.xyz);
    r15.xy = globalProbeConstants.data[1].zw * r14.xy;
    r15.z = globalProbeConstants.data[2].x * r14.z;
    r14.xyz = globalProbeConstants.data[2].yzw + r15.xyz;
    r15.xyz = cmp(float3(0,0,0) < r2.xyz);
    r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
    r15.w = 0;
    r16.xyz = r15.wwx + r14.xyz;
    r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
    r17.xyz = r2.xyz * r2.xyz;
    r17.xyz = r17.xyz * r4.zzz;
    r18.xyz = r15.wwy + r14.xyz;
    r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
    r18.xyz = r18.xyz * r17.yyy;
    r16.xyz = r16.xyz * r17.xxx + r18.xyz;
    r14.xyz = r15.wwz + r14.xyz;
    r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
    r14.xyz = r14.xyz * r17.zzz + r16.xyz;
    r2.w = 0;
    r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r2.xyzw, 6).xyz;
    r14.xyz = r15.xyz * r14.xyz;
    r2.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
    r11.yzw = r20.xyz * r4.xxx + r14.xyz;
    r12.w = 0;
    r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r10.z).xyz;
    r4.x = sunConstants.globalProbeExposure * r4.y + -r2.w;
    r2.w = r4.w * r4.x + r2.w;
    r13.xyz = r10.yzw * r2.www + r13.xyz;
  }
  if (useSSR != 0) {
    r2.w = dot(r5.xyz, r2.xyz);
    r2.w = r2.w + r2.w;
    r4.xyz = r2.xyz * -r2.www + r5.xyz;
    r2.w = dot(r5.xyz, -r2.xyz);
    r2.w = r2.w + r2.w;
    r10.yzw = r2.xyz * r2.www + r5.xyz;
    r4.xyz = v10.xxx ? r4.xyz : r10.yzw;
    if (useLoopedSSR != 0) {
      r10.yzw = viewMatrix._m10_m11_m12 * v7.yyy;
      r10.yzw = v7.xxx * viewMatrix._m00_m01_m02 + r10.yzw;
      r10.yzw = v7.zzz * viewMatrix._m20_m21_m22 + r10.yzw;
      r12.xyz = ssrParams.zzz * r4.xyz;
      r14.xyz = viewMatrix._m10_m11_m12 * r12.yyy;
      r12.xyw = r12.xxx * viewMatrix._m00_m01_m02 + r14.xyz;
      r12.xyz = r12.zzz * viewMatrix._m20_m21_m22 + r12.xyw;
      r2.w = min(1000, ssrParams.x);
      r10.yzw = r12.xyz * float3(10,10,10) + r10.yzw;
      r2.w = r2.w / ssrParams.z;
      r14.xyz = r13.xyz;
      r15.xyz = r10.yzw;
      r4.w = 0;
      while (true) {
        r6.x = (int)r4.w;
        r6.x = cmp(r6.x >= r2.w);
        if (r6.x != 0) break;
        r15.xyz = r15.xyz + r12.xyz;
        r16.xyz = projectionMatrix._m10_m11_m13 * r15.yyy;
        r16.xyz = r15.xxx * projectionMatrix._m00_m01_m03 + r16.xyz;
        r16.xyz = r15.zzz * projectionMatrix._m20_m21_m23 + r16.xyz;
        r16.xyz = projectionMatrix._m30_m31_m33 + r16.xyz;
        r6.x = max(abs(r16.x), abs(r16.y));
        r6.x = cmp(r16.z < r6.x);
        if (r6.x != 0) {
          break;
        }
        r6.xy = r16.xy / r16.zz;
        r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.x = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r6.xy, 1).x;
        r6.y = cmp(abs(r6.x) < r15.z);
        r12.w = cmp(abs(r6.x) >= v0.w);
        r6.y = r6.y ? r12.w : 0;
        if (r6.y != 0) {
          r6.x = r15.z + -abs(r6.x);
          r6.x = ssrParams.w * r6.x;
          r16.xyz = -r6.xxx * r12.xyz + r15.xyz;
          r17.xyz = projectionMatrix._m10_m11_m13 * r16.yyy;
          r16.xyw = r16.xxx * projectionMatrix._m00_m01_m03 + r17.xyz;
          r16.xyz = r16.zzz * projectionMatrix._m20_m21_m23 + r16.xyw;
          r16.xyz = projectionMatrix._m30_m31_m33 + r16.xyz;
          r6.xy = r16.xy / r16.zz;
          r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r16.xyz = iResolveScene.SampleLevel(bilinearClamp_s, r6.xy, 0).xyz;
          r16.xyz = relHDRExposure.xxx * r16.xyz;
          r14.xyz = r16.xyz;
          break;
        }
        r4.w = (int)r4.w + 1;
      }
      r13.xyz = r14.xyz;
    } else {
      r2.w = ssrParams.y * r0.w;
      r4.xyz = r4.xyz * r2.www + v7.xyz;
      r10.yzw = viewProjectionMatrix._m10_m11_m13 * r4.yyy;
      r4.xyw = r4.xxx * viewProjectionMatrix._m00_m01_m03 + r10.yzw;
      r4.xyz = r4.zzz * viewProjectionMatrix._m20_m21_m23 + r4.xyw;
      r4.xyz = viewProjectionMatrix._m30_m31_m33 + r4.xyz;
      r4.xy = r4.xy / r4.zz;
      r2.w = max(abs(r4.x), abs(r4.y));
      r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
      r4.z = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r4.xy, 0).x;
      r4.z = cmp(abs(r4.z) >= v0.w);
      r2.w = cmp(r2.w < 1);
      r2.w = r2.w ? r4.z : 0;
      r4.xyz = iResolveScene.Sample(bilinearClamp_s, r4.xy).xyz;
      if (r2.w != 0) {
        r13.xyz = relHDRExposure.xxx * r4.xyz;
      }
    }
  }
  r2.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r4.x = saturate(r2.w);
  r4.y = cmp(0 >= r4.x);
  if (r4.y != 0) {
    r4.z = 0;
  }
  if (r4.y == 0) {
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r10.yzw = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r10.yzw;
    r10.yzw = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r10.yzw;
    r10.yzw = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r10.yzw;
    r4.y = -sunConstants.splitDepthOffset + r10.w;
    r4.y = -r4.y * 6.10351563e-05 + 1;
    r4.w = saturate(r4.y);
    r4.w = cmp(r4.y == r4.w);
    if (r4.w != 0) {
      r4.w = 0;
      r6.x = 0;
      while (true) {
        r6.y = cmp(r4.w >= 3);
        if (r6.y != 0) break;
        r6.y = (uint)r4.w;
        r12.xy = -sunConstants.splitPinTransform[r6.y].xy + r10.yz;
        r12.x = max(abs(r12.x), abs(r12.y));
        r6.x = sunConstants.splitPinTransform[r6.y].z * r12.x;
        r6.y = cmp(r6.x < 1);
        if (r6.y != 0) {
          break;
        }
        r4.w = 1 + r4.w;
        r6.x = 0;
      }
    } else {
      r4.w = 3;
      r6.x = 0;
    }
    r6.y = cmp(r4.w >= 3);
    if (r6.y != 0) {
      r12.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r14.xz = rcp(r12.xx);
      r14.y = -r14.z;
      r12.xyz = r10.yzy * r14.xyz + r12.yzy;
      r14.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r12.xyz = max(float3(0,0,0), r12.xyz);
      r12.xyz = min(r12.xyz, r14.xyz);
      r14.xy = sunConstants.sstLightingConstants.coordScale * r12.zy;
      r14.xy = floor(r14.xy);
      r12.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r14.y;
      r12.w = r12.w * sunConstants.sstLightingConstants.coordScale + r14.x;
      r12.w = (uint)r12.w;
      r12.w = (int)r12.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r12.w, l(0), t23.xxxx
    r13.w = samp0[]..swiz;
      r14.x = (int)r13.w & 0x40000000;
      r14.y = (uint)r13.w << 2;
      if (r14.x == 0) {
        r14.x = (int)r13.w & 0x01ffffff;
        r15.x = (int)r12.w + (int)r14.x;
        r12.w = (uint)r13.w >> 25;
        r12.w = (uint)r12.w;
        r12.xyz = r12.xyz * r12.www;
        r12.xyz = frac(r12.xyz);
        r12.xyz = float3(128,128,128) * r12.xyz;
        r12.xyz = (uint3)r12.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.xz = (uint2)r12.zy >> int2(6,6);
        r12.w = (int)r15.z & 0xc0000000;
        r13.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r13.w = r14.z ? r15.z : r13.w;
        r14.z = (uint)r13.w >> 13;
        r13.w = r14.x ? r14.z : r13.w;
        r13.w = (int)r13.w & 8191;
        r16.x = (int)r13.w + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r14.xzw = r12.www ? r15.xyz : r16.xyz;
        r16.yz = r12.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r17.xy = (uint2)r12.zy >> (uint2)r16.yy;
        r17.xy = (int2)r17.xy & int2(1,1);
        r13.w = (int)r14.w & 0xc0000000;
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
        r14.xzw = r13.www ? r14.xzw : r16.xzw;
        r14.xzw = r12.www ? r15.xyz : r14.xzw;
        r12.w = (int)r14.w & 0xc0000000;
        if (r12.w == 0) {
          r12.w = (int)-r14.z + 6;
          r15.xy = (uint2)r12.zy >> (uint2)r12.ww;
          r12.w = (int)r14.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r15.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r15.x << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
          r13.w = (int)r13.w * 10;
          r12.w = (uint)r12.w >> (uint)r13.w;
          r12.w = (int)r12.w & 1023;
          r15.x = (int)r12.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
        r15.w = samp0[]..swiz;
          r15.yz = (int2)r14.zz + int2(1,2);
          r12.w = (int)-r15.y + 6;
          r16.xy = (uint2)r12.zy >> (uint2)r12.ww;
          r12.w = (int)r15.w & 0xc0000000;
          r13.w = (int)r15.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.z = (((uint)r16.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.z = (((uint)r16.x << 0) & bitmask.z) | ((uint)r14.z & ~bitmask.z);
          r14.z = (int)r14.z * 10;
          r13.w = (uint)r13.w >> (uint)r14.z;
          r13.w = (int)r13.w & 1023;
          r16.x = (int)r13.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
        r16.z = samp0[]..swiz;
          r16.y = r15.z;
          r16.xyz = r12.www ? r15.xyw : r16.xyz;
          r13.w = (int)-r16.y + 6;
          r15.yz = (uint2)r12.zy >> (uint2)r13.ww;
          r13.w = (int)r16.z & 0xc0000000;
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
          r15.yz = r13.ww ? r16.xz : r17.xy;
          r14.xw = r12.ww ? r15.xw : r15.yz;
        }
        r12.w = (int)r14.w & 0xc0000000;
        if (r12.w == 0) {
          if (14 == 0) r13.w = 0; else if (14+15 < 32) {           r13.w = (uint)r14.w << (32-(14 + 15)); r13.w = (uint)r13.w >> (32-14);          } else r13.w = (uint)r14.w >> 15;
          r13.w = (uint)r13.w;
          r13.w = sunConstants.sstLightingConstants.constants.spanInInches * r13.w;
          r13.w = 6.10388815e-05 * r13.w;
          r15.xy = (int2)r14.ww & int2(32767,536870912);
          r14.z = (uint)r15.x;
          r14.z = sunConstants.sstLightingConstants.constants.spanInInches * r14.z;
          r14.z = 3.05185094e-05 * r14.z;
          r15.x = (int)r12.y & 3;
          r15.x = (int)r14.x + (int)r15.x;
          r15.x = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.x, r15.x, l(0), t23.xxxx
        r15.x = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r12.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r12.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r12.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r12.x = (uint)r15.x >> (uint)r16.x;
          r12.x = (int)r12.x & 255;
          r12.x = (uint)r12.x;
          r12.x = r12.x * r14.z;
          r12.x = r12.x * 0.00392156886 + r13.w;
          r12.y = (int)r16.y + 1;
          if (1 == 0) r12.z = 0; else if (1+1 < 32) {           r12.z = (uint)r12.z << (32-(1 + 1)); r12.z = (uint)r12.z >> (32-1);          } else r12.z = (uint)r12.z >> 1;
          r12.y = (int)r12.z + (int)r12.y;
          r12.y = (int)r12.y + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.y, r12.y, l(0), t23.xxxx
        r12.y = samp0[]..swiz;
          r12.y = (uint)r12.y >> (uint)r16.z;
          r12.y = (int)r12.y & 0x0000ffff;
          r12.y = (uint)r12.y;
          r12.y = r12.y * r14.z;
          r12.y = r12.y * 1.52590219e-05 + r13.w;
          r14.y = r15.y ? r12.x : r12.y;
        } else {
          r12.x = (int)r14.w & 0x80000000;
          r12.y = (int)r14.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.y, r12.y, l(0), t23.xxxx
        r12.y = samp0[]..swiz;
          r12.x = r12.x ? r12.y : 0;
          r12.y = (uint)r14.w << 2;
          r12.z = (uint)r12.x >> 16;
          r12.x = (int)r12.x & 0x0000ffff;
          r12.xz = f16tof32(r12.xz);
          r12.y = r10.y * r12.z + r12.y;
          r12.x = r10.z * r12.x + r12.y;
          r14.y = r12.w ? r12.x : r14.y;
        }
      }
      r10.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r10.w;
      r10.w = cmp(r14.y < r10.w);
      r4.z = r10.w ? 0 : 1;
    }
    if (r6.y == 0) {
      if (enableDitheredShadow == 0) {
        r6.y = (uint)r4.w;
        r12.xy = -sunConstants.splitPinTransform[r6.y].xy + r10.yz;
        r12.xy = sunConstants.splitPinTransform[r6.y].zz * r12.xy;
        r12.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.y = (int16)sunConstants.splitArrayOffset;
        r12.z = r6.y + r4.w;
        r6.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r4.y).x;
        r10.w = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
        r6.y = r10.w + r6.y;
        r6.y = saturate(-1 + r6.y);
        r10.w = r6.y * r6.y;
        r4.z = r10.w * r6.y;
      }
      if (enableDitheredShadow != 0) {
        r12.x = -r10.x;
        r6.y = (uint)r4.w;
        r4.w = 1 + r4.w;
        r4.w = min(2, r4.w);
        r4.w = (uint)r4.w;
        r6.x = 1 + -r6.x;
        r6.x = 28 * r6.x;
        r6.x = (uint)r6.x;
        r14.xy = -sunConstants.splitPinTransform[r6.y].xy + r10.yz;
        r14.xy = sunConstants.splitPinTransform[r6.y].zz * r14.xy;
        r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r10.yz = -sunConstants.splitPinTransform[r4.w].xy + r10.yz;
        r10.yz = sunConstants.splitPinTransform[r4.w].zz * r10.yz;
        r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.y = r11.x;
        r12.z = r10.x;
        r10.w = 0;
        r12.w = 0;
        while (true) {
          r13.w = cmp((uint)r12.w >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r6.x < (uint)r12.w);
          r14.zw = r13.ww ? r10.yz : r14.xy;
          r15.x = r13.w ? sunConstants.splitPinTransform[r4.w].w : sunConstants.splitPinTransform[r6.y].w;
          r13.w = r13.w ? r4.w : r6.y;
          r16.x = dot(icb[r12.w+0].yx, r12.xy);
          r16.y = dot(icb[r12.w+0].yx, r12.yz);
          r15.xy = r16.xy * r15.xx + r14.zw;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r15.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r4.y).x;
          r14.z = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
          r13.w = r14.z + r13.w;
          r13.w = saturate(-1 + r13.w);
          r10.w = r13.w * 0.125 + r10.w;
          r12.w = (int)r12.w + 1;
        }
        r4.y = r10.w * r10.w;
        r4.z = r4.y * r10.w;
      }
    }
  }
  r4.y = viewmodelSunShadowRaw & 0x0000ffff;
  r4.w = cmp(0 < (uint)r4.y);
  r6.x = cmp(0 < r4.z);
  r4.w = r4.w ? r6.x : 0;
  if (r4.w != 0) {
    r4.y = (int)r4.y + numLights;
    r4.y = (int)r4.y + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r4.w, r4.y, l(52), t12.xxxx
  r4.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r4.y, l(68), t12.xyzw
  r12.x = samp0[]..swiz;
  r12.y = samp0[]..swiz;
  r12.z = samp0[]..swiz;
  r12.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r4.y, l(84), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r4.y, l(100), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r4.y, l(116), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r4.y, l(132), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r4.y, l(148), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
    r2.w = abs(r2.w) * -0.200000003 + 0.400000006;
    r19.xyz = r2.xyz * r2.www + v7.xyz;
    r19.w = 1;
    r6.x = dot(r12.xyzw, r19.xyzw);
    r6.y = dot(r14.xyzw, r19.xyzw);
    r2.w = dot(r15.xyzw, r19.xyzw);
    r10.y = dot(r16.xyzw, r19.xyzw);
    r10.z = cmp(r10.y < r2.w);
    r6.xy = r6.xy / r10.yy;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r6.xy = r6.xy + r18.zw;
    r6.xy = r6.xy * r18.xy;
    r12.xy = r4.ww / r17.xz;
    r12.zw = float2(1,1) + -r12.xy;
    r12.zw = cmp(r6.xy >= r12.zw);
    r12.xy = cmp(r12.xy >= r6.xy);
    r12.xy = (int2)r12.xy | (int2)r12.zw;
    r10.w = (int)r12.y | (int)r12.x;
    r10.z = (int)r10.z | (int)r10.w;
    if (r10.z == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r10.z, r4.y, l(28), t12.xxxx
    r10.z = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xy, r4.y, l(164), t12.xyxx
    r12.x = samp0[]..swiz;
    r12.y = samp0[]..swiz;
      r6.xy = saturate(r6.xy);
      r14.xy = r6.xy * r17.xz + r17.yw;
      r4.y = r12.y * r10.y;
      r2.w = r12.x * r10.y + r2.w;
      r2.w = r2.w / r4.y;
      r2.w = max(6.10351563e-05, r2.w);
      r4.y = r10.z ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r12.x = -r10.x;
        r15.z = (uint)r4.y;
        r12.y = r11.x;
        r12.z = r10.x;
        r6.xy = float2(0,0);
        while (true) {
          r10.x = cmp((int)r6.y >= 8);
          if (r10.x != 0) break;
          r10.x = dot(icb[r6.y+0].yx, r12.xy);
          r10.y = dot(icb[r6.y+0].yx, r12.yz);
          r15.xy = r10.xy * r4.ww + r14.xy;
          r10.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r2.w).x;
          r6.x = r10.x * 0.125 + r6.x;
          r6.y = (int)r6.y + 1;
        }
      } else {
        r14.z = (uint)r4.y;
        r6.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r2.w).x;
      }
      r2.w = r6.x * r6.x;
      r2.w = r2.w * r6.x;
    } else {
      r2.w = 1;
    }
    r4.z = r4.z * r2.w;
  }
  r2.w = cmp(0 < r4.x);
  r4.y = cmp(0 < r4.z);
  if (r4.y != 0) {
    if (sunConstants.sunCookieIndex != 0) {
      r3.w = 1;
      r4.y = dot(sunConstants.sunCookieTransform[0].xyzw, r3.xyzw);
      r3.x = dot(sunConstants.sunCookieTransform[1].xyzw, r3.xyzw);
      r10.x = frac(r4.y);
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
    r3.xyz = r4.zzz * r3.xyz;
    r3.w = r9.w + r4.x;
    r3.w = r4.x / r3.w;
    r4.yzw = r3.xyz * r3.www + r11.yzw;
    r10.xyz = -v7.xyz * r5.www + sunConstants.wldDir.xyz;
    r3.w = dot(r10.xyz, r10.xyz);
    r3.w = rsqrt(r3.w);
    r10.xyz = r10.xyz * r3.www;
    r3.w = saturate(dot(r2.xyz, r10.xyz));
    r5.w = saturate(dot(r10.xyz, r9.xyz));
    r6.x = r3.w * r3.w;
    r6.xy = r6.xx * specularLobeRoughnessControl.xz + float2(1,1);
    r6.xy = r6.xy * r6.xy;
    r6.xy = specularLobeRoughnessControl.yw / r6.xy;
    r6.xy = r6.xy * r3.ww;
    r3.w = 4 * r5.w;
    r6.xy = r6.xy / r3.ww;
    r6.xy = lobeWeightingThicknessRefraction.xy * r6.xy;
    r9.xyz = r6.xxx * r3.xyz;
    r9.xyz = r9.xyz * r4.xxx + r13.xyz;
    r3.xyz = r6.yyy * r3.xyz;
    r3.xyz = r3.xyz * r4.xxx + r9.xyz;
  } else {
    r4.yzw = r11.yzw;
    r3.xyz = r13.xyz;
  }
  r4.xyz = r2.www ? r4.yzw : r11.yzw;
  r3.xyz = r2.www ? r3.xyz : r13.xyz;
  r9.xyzw = colorMap.Sample(colorSampler_s, r6.zw).xyzw;
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
  r6.xyw = relHDRExposure.xxx * r2.xyz;
  r0.x = r0.w * 2 + 1;
  r0.x = log2(r0.x);
  r10.x = 0.0833333358 * r0.x;
  r10.y = 0;
  r10.xyzw = rColorRamp.Sample(bilinearClamp_s, r10.xy).xyzw;
  r10.xyz = r10.xyz * r6.xyw;
  r0.x = r10.w * r9.w;
  r9.xyz = r9.xyz * r4.xyz + -r10.xyz;
  r9.xyz = r0.xxx * r9.xyz + r10.xyz;
  r2.xyz = -r2.xyz * relHDRExposure.xxx + r9.xyz;
  r2.xyz = r1.www * r2.xyz + r6.xyw;
  r6.xyw = r8.xyz * r4.xyz + -r2.xyz;
  r2.xyz = r7.xxx * r6.xyw + r2.xyz;
  r0.xyw = r3.xyz * r0.yyy + r7.yzw;
  r1.w = 1 + -r6.z;
  r2.w = r1.w * r1.w;
  r2.w = r2.w * r2.w;
  r1.w = r2.w * r1.w;
  r1.w = r1.w * 0.980000019 + 0.0199999996;
  r0.xyw = r0.xyw + -r2.xyz;
  r0.xyw = r1.www * r0.xyw + r2.xyz;
  r2.xyz = foamColor.xyz * r4.xyz + -r0.xyw;
  r2.xyz = r8.www * r2.xyz + r0.xyw;
  r0.xyw = useFoam ? r2.xyz : r0.xyw;
  r1.w = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r1.w != 0) {
    r1.w = sqrt(r0.z);
    r2.x = cmp(0 < fogConstants.blendAmount);
    if (r2.x != 0) {
      r2.xy = r1.ww * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.xy = fogConstants.atmospherefogdensityatcamera.xy * r2.xy;
      r2.z = cmp(0.00999999978 < abs(v7.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r2.xy;
      r2.xy = r2.zz ? r3.xy : r2.xy;
      r2.xzw = fogConstants.atmosphereTotalDensity.xyz * r2.xxx;
      r2.xzw = exp2(r2.xzw);
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r3.xyz = r3.xyz + -r2.xzw;
      r2.xyz = fogConstants.blendAmount * r3.xyz + r2.xzw;
    } else {
      r2.w = r1.w * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r2.w = fogConstants.atmospherefogdensityatcamera.x * r2.w;
      r3.x = cmp(0.00999999978 < abs(v7.z));
      r3.y = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r3.z = -1.44269502 * r3.y;
      r3.z = exp2(r3.z);
      r3.z = 1 + -r3.z;
      r3.y = r3.z / r3.y;
      r3.y = r3.y * r2.w;
      r2.w = r3.x ? r3.y : r2.w;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.www;
      r2.xyz = exp2(r3.xyz);
    }
    r2.xyz = r2.xyz * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.xyz = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.xyz);
    r2.w = dot(fogConstants.wldSunFogDir.xyz, -r5.xyz);
    r3.x = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.y = fogConstants.atmosphereMieSchlickK * -r2.w + 1;
    r3.y = r3.y * r3.y;
    r3.y = 12.566371 * r3.y;
    r3.x = r3.x / r3.y;
    r1.w = -fogConstants.atmospherehazebasedist + r1.w;
    r1.w = saturate(fogConstants.atmospherehazefadedist * r1.w);
    r1.w = r3.x * r1.w;
    r2.w = saturate(r2.w);
    r2.w = r2.w * r2.w + 1;
    r2.w = r2.w * 0.0596831031 + -1;
    r2.w = fogConstants.atmospheresunstrength * r2.w + 1;
    r3.xyz = fogConstants.atmosphereMieDensity.xyz * r1.www;
    r3.xyz = r2.www * fogConstants.atmosphereRayleighDensity.xyz + r3.xyz;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r4.xyz = float3(1,1,1) + -r2.xyz;
    r3.xyz = r4.xyz * r3.xyz;
    r2.xyz = r0.xyw * r2.xyz + r3.xyz;
  } else {
    r1.w = fogConstants.heightFalloff * v7.z;
    r2.w = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r3.x = cmp(abs(r1.w) < 9.99999975e-05);
    r3.y = min(64, r2.w);
    r3.y = 1.44269502 * r3.y;
    r3.y = exp2(r3.y);
    r3.z = saturate(fogConstants.K0b);
    r3.w = cmp(r2.w < 0);
    r2.w = 1 + r2.w;
    r2.w = r3.w ? r3.y : r2.w;
    r2.w = -fogConstants.K0b + r2.w;
    r1.w = r3.x ? 1 : r1.w;
    r1.w = r2.w / r1.w;
    r1.w = r3.x ? r3.z : r1.w;
    r1.w = fogConstants.expMul * r1.w;
    r0.z = sqrt(r0.z);
    r0.z = r1.w * r0.z + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r1.w = dot(fogConstants.wldSunFogDir.xyz, r5.xyz);
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