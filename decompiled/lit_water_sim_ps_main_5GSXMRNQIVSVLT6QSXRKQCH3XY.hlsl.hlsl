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
  r2.w = numRefProbes + numLights;
  r3.xyz = eyeOffset.xyz + v7.xyz;
  r4.x = 0.0078125 * r0.x;
  r4.x = min(15, r4.x);
  r4.x = (uint)r4.x;
  r5.xy = (uint2)r1.xy >> int2(6,6);
  r5.z = (uint)r4.x << 4;
  r4.x = numStaticDecals & -32;
  r4.y = (int)-r4.x + numStaticDecals;
  r6.xy = float2(0,0);
  r7.w = 0;
  r3.w = 1;
  r8.xyzw = float4(0,0,0,0);
  r9.xyz = float3(0,0,0);
  r4.z = 0;
  while (true) {
    r4.w = cmp((uint)r4.z >= numStaticDecals);
    if (r4.w != 0) break;
    r6.z = (uint)r4.z >> 5;
    r7.xyz = (int3)r5.xyz + (int3)r6.xyz;
    r4.w = visibleDecals.Load(r7.xyzw).x;
    r5.w = cmp((int)r4.x == (int)r4.z);
    if (r4.y == 0) r6.z = 0; else if (r4.y+0 < 32) {     r6.z = (uint)r4.w << (32-(r4.y + 0)); r6.z = (uint)r6.z >> (32-r4.y);    } else r6.z = (uint)r4.w >> 0;
    r4.w = r5.w ? r6.z : r4.w;
    r5.w = (int)r2.w + (int)r4.z;
    r10.xyzw = r8.yzwx;
    r7.xyz = r9.xyz;
    r6.z = r4.w;
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
        r11.xyz = -v7.xyz + r11.xyz;
        r12.z = r11.w;
        r11.xyz = cmp(abs(r11.xyz) < r12.zxy);
        r9.w = r11.y ? r11.x : 0;
        r9.w = r11.z ? r9.w : 0;
        if (r9.w != 0) {
          r6.w = (int)r4.z + (int)r6.w;
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
          r9.w = dot(r15.xyz, v4.xyz);
          r9.w = cmp(r9.w >= 0.5);
          if (r9.w != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=128)(mixed,mixed,mixed,mixed) r15.xyw, r6.w, l(48), t36.xyxz
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
                if (4 == 0) r13.x = 0; else if (4+24 < 32) {                 r13.x = (uint)r12.w << (32-(4 + 24)); r13.x = (uint)r13.x >> (32-4);                } else r13.x = (uint)r12.w >> 24;
                r13.y = (uint)r12.w >> 28;
                r13.xy = int2(1,1) << (int2)r13.xy;
                r14.w = cmp((int)r12.y == 4);
                if (r14.w != 0) {
                  r14.w = (int)r12.w & 4095;
                  if (12 == 0) r15.w = 0; else if (12+12 < 32) {                   r15.w = (uint)r12.w << (32-(12 + 12)); r15.w = (uint)r15.w >> (32-12);                  } else r15.w = (uint)r12.w >> 12;
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
                    if (12 == 0) r12.w = 0; else if (12+12 < 32) {                     r12.w = (uint)r12.w << (32-(12 + 12)); r12.w = (uint)r12.w >> (32-12);                    } else r12.w = (uint)r12.w >> 12;
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
                if (4 == 0) r12.x = 0; else if (4+24 < 32) {                 r12.x = (uint)r6.w << (32-(4 + 24)); r12.x = (uint)r12.x >> (32-4);                } else r12.x = (uint)r6.w >> 24;
                r12.y = (uint)r6.w >> 28;
                r12.xy = int2(1,1) << (int2)r12.xy;
                r12.w = cmp((int)r12.z == 2);
                if (r12.w != 0) {
                  r12.w = (int)r6.w & 4095;
                  if (12 == 0) r13.x = 0; else if (12+12 < 32) {                   r13.x = (uint)r6.w << (32-(12 + 12)); r13.x = (uint)r13.x >> (32-12);                  } else r13.x = (uint)r6.w >> 12;
                  if (10 == 0) r13.y = 0; else if (10+20 < 32) {                   r13.y = (uint)r9.w << (32-(10 + 20)); r13.y = (uint)r13.y >> (32-10);                  } else r13.y = (uint)r9.w >> 20;
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
                    if (12 == 0) r13.x = 0; else if (12+12 < 32) {                     r13.x = (uint)r6.w << (32-(12 + 12)); r13.x = (uint)r13.x >> (32-12);                    } else r13.x = (uint)r6.w >> 12;
                    if (10 == 0) r13.y = 0; else if (10+20 < 32) {                     r13.y = (uint)r9.w << (32-(10 + 20)); r13.y = (uint)r13.y >> (32-10);                    } else r13.y = (uint)r9.w >> 20;
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
                    if (12 == 0) r6.w = 0; else if (12+12 < 32) {                     r6.w = (uint)r6.w << (32-(12 + 12)); r6.w = (uint)r6.w >> (32-12);                    } else r6.w = (uint)r6.w >> 12;
                    if (10 == 0) r9.w = 0; else if (10+20 < 32) {                     r9.w = (uint)r9.w << (32-(10 + 20)); r9.w = (uint)r9.w >> (32-10);                    } else r9.w = (uint)r9.w >> 20;
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
    r8.xyzw = r10.wxyz;
    r9.xyz = r7.xyz;
    r4.z = (int)r4.z + 32;
  }
  r8.x = saturate(r8.x);
  r0.y = 1 + -r8.x;
  r0.zw = normalMapScale.xy * v2.xy;
  r2.xy = gameTime.ww * noiseParams.xy;
  r2.xy = v2.xy * noiseParams.zz + r2.xy;
  r2.xy = noiseMap.Sample(noiseSampler_s, r2.xy).xy;
  r2.xy = noiseParams.ww * r2.xy;
  r2.xy = v2.xy * flowParams.xx + r2.xy;
  r2.zw = frac(r2.xy);
  r4.xy = r2.zw * float2(-2,-2) + float2(3,3);
  r2.zw = r2.zw * r2.zw;
  r4.zw = r4.xy * r2.zw;
  normalMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r6.xy = fDest.xy;
  r6.xy = r6.xy * r0.zw;
  r6.zw = ddx_coarse(r6.xy);
  r6.xy = ddy_coarse(r6.xy);
  r5.w = dot(r6.zw, r6.zw);
  r6.x = dot(r6.xy, r6.xy);
  r5.w = max(r6.x, r5.w);
  r5.w = log2(r5.w);
  r5.w = 0.5 * r5.w;
  r6.xy = floor(r2.xy);
  r6.xy = r6.xy / flowParams.xx;
  r6.xy = flowMap.Sample(flowSampler_s, r6.xy).xy;
  r6.xy = r6.xy + r6.xy;
  r7.xyzw = float4(1,0,0,1) + r2.xyxy;
  r7.xyzw = floor(r7.xyzw);
  r7.xyzw = r7.xyzw / flowParams.xxxx;
  r6.zw = flowMap.Sample(flowSampler_s, r7.xy).xy;
  r6.zw = r6.zw + r6.zw;
  r7.xy = flowMap.Sample(flowSampler_s, r7.zw).xy;
  r7.xy = r7.xy + r7.xy;
  r2.xy = float2(1,1) + r2.xy;
  r2.xy = floor(r2.xy);
  r2.xy = r2.xy / flowParams.xx;
  r2.xy = flowMap.Sample(flowSampler_s, r2.xy).xy;
  r2.xy = r2.xy + r2.xy;
  if (useSpecularZFeather != 0) {
    r7.zw = flowMap.Sample(flowSampler_s, v2.xy).xy;
    r10.xy = r7.zw + r7.zw;
    r10.zw = r10.xy * float2(-1,1) + float2(1,-1);
    r7.zw = r10.xw * float2(-1,1) + float2(1,0);
    r7.z = dot(r10.zw, r7.zw);
    r7.z = sqrt(r7.z);
    r7.z = r7.z * normalsFlowScaleMin.y + normalsFlowScaleMin.x;
    r7.zw = normalAdjustAndGloss.xy * r7.zz;
  } else {
    r7.zw = normalAdjustAndGloss.xy;
  }
  r2.zw = -r4.xy * r2.zw + float2(1,1);
  r2.zw = r2.zw * r2.zw;
  r2.zw = r4.zw * r4.zw + r2.zw;
  r2.zw = rsqrt(r2.zw);
  if (useOrientedNormalMap == 0) {
    r4.x = gameTime.w * flowParams.y;
    r10.xy = r6.xy * float2(-1,1) + float2(1,-1);
    r10.xy = r10.xy * r4.xx + r0.zw;
    r10.xy = normalMap.SampleLevel(normalSampler_s, r10.xy, r5.w).xy;
    r10.zw = r6.zw * float2(-1,1) + float2(1,-1);
    r10.zw = r10.zw * r4.xx + r0.zw;
    r10.zw = normalMap.SampleLevel(normalSampler_s, r10.zw, r5.w).xy;
    r10.zw = r10.zw + -r10.xy;
    r10.xy = r4.zz * r10.zw + r10.xy;
    r10.zw = r7.xy * float2(-1,1) + float2(1,-1);
    r10.zw = r10.zw * r4.xx + r0.zw;
    r10.zw = normalMap.SampleLevel(normalSampler_s, r10.zw, r5.w).xy;
    r11.xy = r2.xy * float2(-1,1) + float2(1,-1);
    r0.zw = r11.xy * r4.xx + r0.zw;
    r0.zw = normalMap.SampleLevel(normalSampler_s, r0.zw, r5.w).xy;
    r0.zw = r0.zw + -r10.zw;
    r0.zw = r4.zz * r0.zw + r10.zw;
    r0.zw = r0.zw + -r10.xy;
    r0.zw = r4.ww * r0.zw + r10.xy;
    r0.zw = r0.zw * r7.zz + r7.ww;
  } else {
    r4.xy = r6.xy * float2(-1,1) + float2(1,-1);
    r6.x = dot(r4.xy, r4.xy);
    r6.x = sqrt(r6.x);
    r6.x = max(9.99999975e-06, r6.x);
    r10.xy = r4.xy / r6.xx;
    r10.z = -r10.x;
    r4.x = dot(v2.xy, r10.yz);
    r4.y = dot(v2.xy, -r10.xy);
    r11.xy = normalMapScale.xy * r4.xy;
    r4.x = gameTime.w * r6.x;
    r11.z = -r4.x * flowParams.y + r11.y;
    r4.xy = normalMap.SampleLevel(normalSampler_s, r11.xz, r5.w).xy;
    r4.xy = r4.xy * r7.zz + r7.ww;
    r6.x = dot(r4.xy, r10.yz);
    r6.y = dot(r4.xy, -r10.xy);
    r4.xy = r6.zw * float2(-1,1) + float2(1,-1);
    r6.z = dot(r4.xy, r4.xy);
    r6.z = sqrt(r6.z);
    r6.z = max(9.99999975e-06, r6.z);
    r10.xy = r4.xy / r6.zz;
    r10.z = -r10.x;
    r4.x = dot(v2.xy, r10.yz);
    r4.y = dot(v2.xy, -r10.xy);
    r11.xy = normalMapScale.xy * r4.xy;
    r4.x = gameTime.w * r6.z;
    r11.z = -r4.x * flowParams.y + r11.y;
    r4.xy = normalMap.SampleLevel(normalSampler_s, r11.xz, r5.w).xy;
    r4.xy = r4.xy * r7.zz + r7.ww;
    r11.x = dot(r4.xy, r10.yz);
    r11.y = dot(r4.xy, -r10.xy);
    r4.xy = r11.xy + -r6.xy;
    r4.xy = r4.zz * r4.xy + r6.xy;
    r6.xy = r7.xy * float2(-1,1) + float2(1,-1);
    r6.z = dot(r6.xy, r6.xy);
    r6.z = sqrt(r6.z);
    r6.z = max(9.99999975e-06, r6.z);
    r10.xy = r6.xy / r6.zz;
    r10.z = -r10.x;
    r6.x = dot(v2.xy, r10.yz);
    r6.y = dot(v2.xy, -r10.xy);
    r11.xy = normalMapScale.xy * r6.xy;
    r6.x = gameTime.w * r6.z;
    r11.z = -r6.x * flowParams.y + r11.y;
    r6.xy = normalMap.SampleLevel(normalSampler_s, r11.xz, r5.w).xy;
    r6.xy = r6.xy * r7.zz + r7.ww;
    r7.x = dot(r6.xy, r10.yz);
    r7.y = dot(r6.xy, -r10.xy);
    r2.xy = r2.xy * float2(-1,1) + float2(1,-1);
    r6.x = dot(r2.xy, r2.xy);
    r6.x = sqrt(r6.x);
    r6.x = max(9.99999975e-06, r6.x);
    r10.xy = r2.xy / r6.xx;
    r10.z = -r10.x;
    r2.x = dot(v2.xy, r10.yz);
    r2.y = dot(v2.xy, -r10.xy);
    r11.xy = normalMapScale.xy * r2.xy;
    r2.x = gameTime.w * r6.x;
    r11.z = -r2.x * flowParams.y + r11.y;
    r2.xy = normalMap.SampleLevel(normalSampler_s, r11.xz, r5.w).xy;
    r2.xy = r2.xy * r7.zz + r7.ww;
    r6.x = dot(r2.xy, r10.yz);
    r6.y = dot(r2.xy, -r10.xy);
    r2.xy = r6.xy + -r7.xy;
    r2.xy = r4.zz * r2.xy + r7.xy;
    r2.xy = r2.xy + -r4.xy;
    r0.zw = r4.ww * r2.xy + r4.xy;
  }
  r2.x = r2.z * r2.w;
  r0.zw = r2.xx * r0.zw;
  r2.xyz = v6.xyz * r0.www;
  r2.xyz = v5.xyz * r0.zzz + r2.xyz;
  r2.xyz = v4.xyz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r2.xyz = v10.xxx ? r2.xyz : -r2.xyz;
  r0.z = dot(v7.xyz, v7.xyz);
  r0.w = rsqrt(r0.z);
  r4.xyz = v7.xyz * r0.www;
  r6.z = saturate(dot(r2.xyz, -r4.xyz));
  if (v10.x != 0) {
    r7.xy = (int2)v0.xy;
    r7.zw = float2(0,0);
    r0.w = ifloatZScene.Load(r7.xyz).x;
    r4.w = cmp(r0.w >= 0.984375);
    r5.w = 1.01587307 * r0.w;
    r0.w = r0.w * 64 + -63;
    r0.w = r4.w ? r0.w : r5.w;
    r0.w = max(9.99999994e-09, r0.w);
    r0.w = rcp(r0.w);
    r0.w = -v0.w + r0.w;
    r0.w = max(0, r0.w);
    r0.w = min(ssrParams.x, r0.w);
    r4.w = opacityScale.y;
  } else {
    r0.w = sqrt(r0.z);
    r4.w = opacityScale.x;
  }
  if (useFoam != 0) {
    r5.w = foamBase.Sample(foamSampler_s, v8.xy).x;
    r7.x = foamBase.Sample(foamSampler_s, v8.zw).x;
    r7.y = foamBase.Sample(foamSampler_s, v9.xy).x;
    r7.z = foamBase.Sample(foamSampler_s, v9.zw).x;
    r5.w = r7.x + r5.w;
    r5.w = r5.w + r7.y;
    r5.w = r5.w + r7.z;
    r5.w = foamColorScale * r5.w;
    r7.x = flowMap.Sample(flowSampler_s, v2.xy).z;
    r7.x = foamSpacing.y * r7.x + foamSpacing.x;
    r5.w = max(0, r5.w);
    r5.w = log2(r5.w);
    r5.w = r7.x * r5.w;
    r5.w = exp2(r5.w);
    r7.x = foamZFeather * r0.w;
    r7.x = min(1, r7.x);
    r7.y = r7.x * r5.w;
    r5.w = -r5.w * r7.x + 1;
    r5.w = normalAdjustAndGloss.z * r5.w;
  } else {
    r7.y = 0;
    r5.w = normalAdjustAndGloss.z;
  }
  r7.x = dot(-v7.xyz, -v7.xyz);
  r7.x = rsqrt(r7.x);
  r10.xyz = -v7.xyz * r7.xxx;
  r7.zw = (uint2)r1.xy;
  r7.z = dot(r7.zw, float2(0.0671105608,0.00583714992));
  r7.z = frac(r7.z);
  r7.z = 52.9829178 * r7.z;
  r7.z = frac(r7.z);
  r7.z = r7.z * 6.28318548 + gameTick.w;
  sincos(r7.z, r11.x, r12.x);
  r7.z = saturate(dot(r2.xyz, r10.xyz));
  r7.w = dot(-r10.xyz, r2.xyz);
  r7.w = r7.w + r7.w;
  r13.xyz = r2.xyz * -r7.www + -r10.xyz;
  r7.w = 1 + -r5.w;
  r9.w = 5 * r7.w;
  r10.w = r7.w * 5 + -2.5;
  r10.w = saturate(0.400000006 * r10.w);
  r10.w = 100 * r10.w;
  r11.yz = -r7.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r11.y = exp2(r11.y);
  r11.y = r11.y * r7.z;
  r11.w = r9.w * r7.w;
  r11.z = -r11.w * 2.0159049 + r11.z;
  r11.z = exp2(r11.z);
  r11.z = r11.z * r7.z;
  r11.yz = float2(9.1368103,9.70808983) * r11.yz;
  r11.y = max(r11.y, r11.z);
  r11.y = max(1.26815999, r11.y);
  r11.z = numRefProbes + -numOverrideProbes;
  r11.w = (int)r11.z & -32;
  r12.y = (int)-r11.w + (int)r11.z;
  r12.z = numRefProbes & -32;
  r12.w = (int)-r12.z + numRefProbes;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r6.xw = float2(1,0);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r14.w = r11.w;
  while (true) {
    r16.w = cmp((uint)r14.w >= numRefProbes);
    if (r16.w != 0) break;
    r14.z = (uint)r14.w >> 5;
    r15.xyz = (int3)r5.xyz + (int3)r14.xyz;
    r14.z = visibleProbes.Load(r15.xyzw).x;
    r15.x = cmp((int)r11.w == (int)r14.w);
    bitmask.y = ((~(-1 << r12.y)) << 0) & 0xffffffff;  r15.y = (((uint)0 << 0) & bitmask.y) | ((uint)r14.z & ~bitmask.y);
    r14.z = r15.x ? r15.y : r14.z;
    r15.x = cmp((int)r12.z == (int)r14.w);
    if (r12.w == 0) r15.y = 0; else if (r12.w+0 < 32) {     r15.y = (uint)r14.z << (32-(r12.w + 0)); r15.y = (uint)r15.y >> (32-r12.w);    } else r15.y = (uint)r14.z >> 0;
    r14.z = r15.x ? r15.y : r14.z;
    r15.x = (int)r14.w + numLights;
    r22.xyzw = r20.xyzw;
    r23.xyz = r21.yzw;
    r15.y = r14.z;
    while (true) {
      if (r15.y == 0) break;
      r15.z = firstbitlow((uint)r15.y);
      r16.w = 1 << (int)r15.z;
      r17.w = (int)r15.y & (int)r16.w;
      if (r17.w != 0) {
        r15.y = (int)r15.y ^ (int)r16.w;
        r16.w = (int)r15.z + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r24.xyzw, r16.w, l(0), t11.xyzw
      r24.x = samp0[]..swiz;
      r24.y = samp0[]..swiz;
      r24.z = samp0[]..swiz;
      r24.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xy, r16.w, l(16), t11.xyxx
      r25.x = samp0[]..swiz;
      r25.y = samp0[]..swiz;
        r24.xyz = -v7.xyz + r24.xyz;
        r25.z = r24.w;
        r24.xyz = cmp(abs(r24.xyz) < r25.zxy);
        r16.w = r24.y ? r24.x : 0;
        r16.w = r24.z ? r16.w : 0;
        if (r16.w != 0) {
          r15.z = (int)r14.w + (int)r15.z;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r15.z, l(0), t15.wxyz
        r24.x = samp0[]..swiz;
        r24.y = samp0[]..swiz;
        r24.z = samp0[]..swiz;
        r24.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xy, r15.z, l(96), t15.xyxx
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r15.z, l(116), t15.zwxy
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
        r26.z = samp0[]..swiz;
        r26.w = samp0[]..swiz;
          r27.xyz = v7.xyz + -r24.yzw;
          r16.w = (int)r26.w & 0x0000ffff;
          if (6 == 0) r17.w = 0; else if (6+25 < 32) {           r17.w = (uint)r26.w << (32-(6 + 25)); r17.w = (uint)r17.w >> (32-6);          } else r17.w = (uint)r26.w >> 25;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r28.xyzw, r16.w, l(0), t16.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r29.xyzw, r16.w, l(16), t16.xyzw
        r29.x = samp0[]..swiz;
        r29.y = samp0[]..swiz;
        r29.z = samp0[]..swiz;
        r29.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r16.w, l(32), t16.xyzw
        r30.x = samp0[]..swiz;
        r30.y = samp0[]..swiz;
        r30.z = samp0[]..swiz;
        r30.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r16.w, l(48), t16.xyzw
        r31.x = samp0[]..swiz;
        r31.y = samp0[]..swiz;
        r31.z = samp0[]..swiz;
        r31.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r16.w, l(64), t16.xyzw
        r32.x = samp0[]..swiz;
        r32.y = samp0[]..swiz;
        r32.z = samp0[]..swiz;
        r32.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r16.w, l(80), t16.xyzw
        r33.x = samp0[]..swiz;
        r33.y = samp0[]..swiz;
        r33.z = samp0[]..swiz;
        r33.w = samp0[]..swiz;
          r18.w = dot(r28.xyz, r27.xyz);
          r18.w = saturate(r18.w + r28.w);
          r19.w = dot(r29.xyz, r27.xyz);
          r19.w = saturate(r19.w + r29.w);
          r18.w = r19.w * r18.w;
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
          r16.x = r19.w * r18.w;
          r18.w = (int)r25.x & 1;
          r25.zw = r18.ww ? r16.xy : r16.zx;
          r16.x = r25.x;
          r28.xy = r25.zw;
          r18.w = 1;
          while (true) {
            r19.w = cmp((int)r18.w >= (int)r17.w);
            if (r19.w != 0) break;
            r19.w = (int)r16.w + (int)r18.w;
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
            r24.w = dot(r30.xyz, r27.xyz);
            r24.w = saturate(r24.w + r30.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r31.xyz, r27.xyz);
            r24.w = saturate(r24.w + r31.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r32.xyz, r27.xyz);
            r24.w = saturate(r24.w + r32.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r33.xyz, r27.xyz);
            r24.w = saturate(r24.w + r33.w);
            r19.w = r24.w * r19.w;
            r24.w = dot(r34.xyz, r27.xyz);
            r24.w = saturate(r24.w + r34.w);
            r28.x = r24.w * r19.w;
            r27.w = (uint)r16.x >> 2;
            if (1 == 0) r28.z = 0; else if (1+2 < 32) {             r28.z = (uint)r16.x << (32-(1 + 2)); r28.z = (uint)r28.z >> (32-1);            } else r28.z = (uint)r16.x >> 2;
            r28.w = (int)r27.w & 2;
            r29.x = max(r28.y, r28.x);
            r19.w = -r19.w * r24.w + 1;
            r19.w = r28.y * r19.w;
            r6.y = r28.w ? r19.w : r29.x;
            r28.xy = r28.zz ? r28.xy : r6.xy;
            r18.w = (int)r18.w + 1;
            r16.x = r27.w;
          }
          r28.y = saturate(r28.y);
          r6.y = r28.y * r25.y;
          r16.x = cmp(0 < r6.y);
          if (r16.x != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r15.z, l(16), t15.xyzw
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r15.z, l(32), t15.yxwz
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r15.z, l(48), t15.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r15.z, l(64), t15.zwxy
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r15.z, l(80), t15.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r15.z, l(132), t15.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r15.z, l(148), t15.zwxy
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r15.z, l(164), t15.zwxy
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r15.z, l(180), t15.zwxy
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r15.z, l(196), t15.xyzw
          r38.x = samp0[]..swiz;
          r38.y = samp0[]..swiz;
          r38.z = samp0[]..swiz;
          r38.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xy, r15.z, l(212), t15.xyxx
          r39.x = samp0[]..swiz;
          r39.y = samp0[]..swiz;
            r23.z = r28.y * r25.y + r23.z;
            r6.y = r6.y * r26.z;
            r26.z = r34.z;
            r15.z = dot(r13.xyz, r26.xyz);
            r16.x = dot(r27.xyz, r26.xyz);
            r16.x = r16.x + -r34.w;
            r16.w = cmp(r16.x >= 0);
            r16.x = max(abs(r16.x), r10.w);
            r16.x = r16.w ? r16.x : -r16.x;
            r15.z = max(1.00000001e-07, -r15.z);
            r15.z = r16.x / r15.z;
            r15.z = min(131072, abs(r15.z));
            r34.z = r35.z;
            r16.x = dot(r13.xyz, r34.xyz);
            r16.w = dot(r27.xyz, r34.xyz);
            r16.w = r16.w + -r35.w;
            r17.w = cmp(r16.w >= 0);
            r16.w = max(abs(r16.w), r10.w);
            r16.w = r17.w ? r16.w : -r16.w;
            r16.x = max(1.00000001e-07, -r16.x);
            r16.x = r16.w / r16.x;
            r15.z = min(abs(r16.x), r15.z);
            r35.z = r36.z;
            r16.x = dot(r13.xyz, r35.xyz);
            r16.w = dot(r27.xyz, r35.xyz);
            r16.w = r16.w + -r36.w;
            r17.w = cmp(r16.w >= 0);
            r16.w = max(abs(r16.w), r10.w);
            r16.w = r17.w ? r16.w : -r16.w;
            r16.x = max(1.00000001e-07, -r16.x);
            r16.x = r16.w / r16.x;
            r15.z = min(abs(r16.x), r15.z);
            r36.z = r37.z;
            r16.x = dot(r13.xyz, r36.xyz);
            r16.w = dot(r27.xyz, r36.xyz);
            r16.w = r16.w + -r37.w;
            r17.w = cmp(r16.w >= 0);
            r16.w = max(abs(r16.w), r10.w);
            r16.w = r17.w ? r16.w : -r16.w;
            r16.x = max(1.00000001e-07, -r16.x);
            r16.x = r16.w / r16.x;
            r15.z = min(abs(r16.x), r15.z);
            r37.z = r38.x;
            r16.x = dot(r13.xyz, r37.xyz);
            r16.w = dot(r27.xyz, r37.xyz);
            r16.w = r16.w + -r38.y;
            r17.w = cmp(r16.w >= 0);
            r16.w = max(abs(r16.w), r10.w);
            r16.w = r17.w ? r16.w : -r16.w;
            r16.x = max(1.00000001e-07, -r16.x);
            r16.x = r16.w / r16.x;
            r15.z = min(abs(r16.x), r15.z);
            r39.zw = r38.zw;
            r16.x = dot(r13.zxy, r39.xzw);
            r16.w = dot(r27.zxy, r39.xzw);
            r16.w = r16.w + -r39.y;
            r17.w = cmp(r16.w >= 0);
            r16.w = max(abs(r16.w), r10.w);
            r16.w = r17.w ? r16.w : -r16.w;
            r16.x = max(1.00000001e-07, -r16.x);
            r16.x = r16.w / r16.x;
            r15.z = min(abs(r16.x), r15.z);
            r25.x = r31.w;
            r25.yz = r32.zw;
            r25.xyz = r25.xyz + r27.xyz;
            r25.xyz = r13.xyz * r15.zzz + r25.xyz;
            r16.x = dot(r25.xyz, r25.xyz);
            r16.x = sqrt(r16.x);
            r15.z = r15.z / r16.x;
            r15.z = r15.z + r15.z;
            r15.z = sqrt(r15.z);
            r15.z = r7.w * 5 + r15.z;
            r15.z = -0.844799995 + r15.z;
            r24.y = r29.z;
            r24.z = r30.x;
            r34.x = dot(r25.xyz, r24.xyz);
            r26.xy = r29.xw;
            r26.z = r30.w;
            r34.y = dot(r25.xyz, r26.xyz);
            r30.x = r29.y;
            r34.z = dot(r25.xyz, r30.xyz);
            if (9 == 0) r16.x = 0; else if (9+16 < 32) {             r16.x = (uint)r26.w << (32-(9 + 16)); r16.x = (uint)r16.x >> (32-9);            } else r16.x = (uint)r26.w >> 16;
            r34.w = (uint)r16.x;
            r25.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r34.xyzw, r15.z).xyz;
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
            r15.z = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r22.xyz = r24.xyz * r26.xyz + r22.xyz;
            r16.x = r15.z * r11.y;
            r24.xyz = r25.xyz * r6.yyy;
            r6.y = dot(r24.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r6.y = r11.y * r15.z + r6.y;
            r6.y = r16.x / r6.y;
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
    r14.w = (int)r14.w + 32;
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
    r23.xyz = r20.xyz;
    r12.z = r21.w;
    r12.w = 0;
    while (true) {
      r14.w = cmp((uint)r12.w >= (uint)r11.z);
      if (r14.w != 0) break;
      r14.z = (uint)r12.w >> 5;
      r15.xyz = (int3)r5.xyz + (int3)r14.xyz;
      r14.z = visibleProbes.Load(r15.xyzw).x;
      r14.w = cmp((int)r11.w == (int)r12.w);
      if (r12.y == 0) r15.x = 0; else if (r12.y+0 < 32) {       r15.x = (uint)r14.z << (32-(r12.y + 0)); r15.x = (uint)r15.x >> (32-r12.y);      } else r15.x = (uint)r14.z >> 0;
      r14.z = r14.w ? r15.x : r14.z;
      r14.w = (int)r12.w + numLights;
      r24.xyzw = r22.xyzw;
      r15.xyz = r23.xyz;
      r16.w = r12.z;
      r17.w = r14.z;
      while (true) {
        if (r17.w == 0) break;
        r18.w = firstbitlow((uint)r17.w);
        r19.w = 1 << (int)r18.w;
        r23.w = (int)r17.w & (int)r19.w;
        if (r23.w != 0) {
          r17.w = (int)r17.w ^ (int)r19.w;
          r19.w = (int)r14.w + (int)r18.w;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r25.xyzw, r19.w, l(0), t11.xyzw
        r25.x = samp0[]..swiz;
        r25.y = samp0[]..swiz;
        r25.z = samp0[]..swiz;
        r25.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r26.xy, r19.w, l(16), t11.xyxx
        r26.x = samp0[]..swiz;
        r26.y = samp0[]..swiz;
          r25.xyz = -v7.xyz + r25.xyz;
          r26.z = r25.w;
          r25.xyz = cmp(abs(r25.xyz) < r26.zxy);
          r19.w = r25.y ? r25.x : 0;
          r19.w = r25.z ? r19.w : 0;
          if (r19.w != 0) {
            r18.w = (int)r12.w + (int)r18.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r18.w, l(0), t15.wxyz
          r25.x = samp0[]..swiz;
          r25.y = samp0[]..swiz;
          r25.z = samp0[]..swiz;
          r25.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xy, r18.w, l(96), t15.xyxx
          r26.x = samp0[]..swiz;
          r26.y = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r18.w, l(116), t15.zwxy
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
            r28.xyz = v7.xyz + -r25.yzw;
            r19.w = (int)r27.w & 0x0000ffff;
            if (6 == 0) r23.w = 0; else if (6+25 < 32) {             r23.w = (uint)r27.w << (32-(6 + 25)); r23.w = (uint)r23.w >> (32-6);            } else r23.w = (uint)r27.w >> 25;
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
            r25.w = dot(r29.xyz, r28.xyz);
            r25.w = saturate(r25.w + r29.w);
            r26.z = dot(r30.xyz, r28.xyz);
            r26.z = saturate(r26.z + r30.w);
            r25.w = r26.z * r25.w;
            r26.z = dot(r31.xyz, r28.xyz);
            r26.z = saturate(r26.z + r31.w);
            r25.w = r26.z * r25.w;
            r26.z = dot(r32.xyz, r28.xyz);
            r26.z = saturate(r26.z + r32.w);
            r25.w = r26.z * r25.w;
            r26.z = dot(r33.xyz, r28.xyz);
            r26.z = saturate(r26.z + r33.w);
            r25.w = r26.z * r25.w;
            r26.z = dot(r34.xyz, r28.xyz);
            r26.z = saturate(r26.z + r34.w);
            r16.x = r26.z * r25.w;
            r25.w = (int)r26.x & 1;
            r26.zw = r25.ww ? r16.xy : r16.zx;
            r16.x = r26.x;
            r29.xy = r26.zw;
            r25.w = 1;
            while (true) {
              r28.w = cmp((int)r25.w >= (int)r23.w);
              if (r28.w != 0) break;
              r28.w = (int)r19.w + (int)r25.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r28.w, l(0), t16.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r28.w, l(16), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r28.w, l(32), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r28.w, l(48), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r28.w, l(64), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r28.w, l(80), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
              r28.w = dot(r30.xyz, r28.xyz);
              r28.w = saturate(r28.w + r30.w);
              r28.w = r29.x * r28.w;
              r29.z = dot(r31.xyz, r28.xyz);
              r29.z = saturate(r29.z + r31.w);
              r28.w = r29.z * r28.w;
              r29.z = dot(r32.xyz, r28.xyz);
              r29.z = saturate(r29.z + r32.w);
              r28.w = r29.z * r28.w;
              r29.z = dot(r33.xyz, r28.xyz);
              r29.z = saturate(r29.z + r33.w);
              r28.w = r29.z * r28.w;
              r29.z = dot(r34.xyz, r28.xyz);
              r29.z = saturate(r29.z + r34.w);
              r28.w = r29.z * r28.w;
              r29.z = dot(r35.xyz, r28.xyz);
              r29.z = saturate(r29.z + r35.w);
              r29.x = r29.z * r28.w;
              r29.w = (uint)r16.x >> 2;
              if (1 == 0) r30.x = 0; else if (1+2 < 32) {               r30.x = (uint)r16.x << (32-(1 + 2)); r30.x = (uint)r30.x >> (32-1);              } else r30.x = (uint)r16.x >> 2;
              r30.y = (int)r29.w & 2;
              r30.z = max(r29.y, r29.x);
              r28.w = -r28.w * r29.z + 1;
              r28.w = r29.y * r28.w;
              r6.y = r30.y ? r28.w : r30.z;
              r29.xy = r30.xx ? r29.xy : r6.xy;
              r25.w = (int)r25.w + 1;
              r16.x = r29.w;
            }
            r6.y = saturate(r29.y + -r16.w);
            r16.x = r6.y * r26.y;
            r19.w = cmp(0 < r16.x);
            if (r19.w != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r18.w, l(16), t15.xyzw
            r30.x = samp0[]..swiz;
            r30.y = samp0[]..swiz;
            r30.z = samp0[]..swiz;
            r30.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r18.w, l(32), t15.yxwz
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r18.w, l(48), t15.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r18.w, l(64), t15.zwxy
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r18.w, l(80), t15.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r18.w, l(132), t15.zwxy
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r18.w, l(148), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r18.w, l(164), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r18.w, l(180), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r18.w, l(196), t15.xyzw
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xy, r18.w, l(212), t15.xyxx
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
              r24.w = r6.y * r26.y + r24.w;
              r6.y = r16.x * r27.z;
              r27.z = r35.z;
              r16.x = dot(r13.xyz, r27.xyz);
              r18.w = dot(r28.xyz, r27.xyz);
              r18.w = r18.w + -r35.w;
              r19.w = cmp(r18.w >= 0);
              r18.w = max(abs(r18.w), r10.w);
              r18.w = r19.w ? r18.w : -r18.w;
              r16.x = max(1.00000001e-07, -r16.x);
              r16.x = r18.w / r16.x;
              r16.x = min(131072, abs(r16.x));
              r35.z = r36.z;
              r18.w = dot(r13.xyz, r35.xyz);
              r19.w = dot(r28.xyz, r35.xyz);
              r19.w = r19.w + -r36.w;
              r23.w = cmp(r19.w >= 0);
              r19.w = max(abs(r19.w), r10.w);
              r19.w = r23.w ? r19.w : -r19.w;
              r18.w = max(1.00000001e-07, -r18.w);
              r18.w = r19.w / r18.w;
              r16.x = min(abs(r18.w), r16.x);
              r36.z = r37.z;
              r18.w = dot(r13.xyz, r36.xyz);
              r19.w = dot(r28.xyz, r36.xyz);
              r19.w = r19.w + -r37.w;
              r23.w = cmp(r19.w >= 0);
              r19.w = max(abs(r19.w), r10.w);
              r19.w = r23.w ? r19.w : -r19.w;
              r18.w = max(1.00000001e-07, -r18.w);
              r18.w = r19.w / r18.w;
              r16.x = min(abs(r18.w), r16.x);
              r37.z = r38.z;
              r18.w = dot(r13.xyz, r37.xyz);
              r19.w = dot(r28.xyz, r37.xyz);
              r19.w = r19.w + -r38.w;
              r23.w = cmp(r19.w >= 0);
              r19.w = max(abs(r19.w), r10.w);
              r19.w = r23.w ? r19.w : -r19.w;
              r18.w = max(1.00000001e-07, -r18.w);
              r18.w = r19.w / r18.w;
              r16.x = min(abs(r18.w), r16.x);
              r38.z = r39.x;
              r18.w = dot(r13.xyz, r38.xyz);
              r19.w = dot(r28.xyz, r38.xyz);
              r19.w = r19.w + -r39.y;
              r23.w = cmp(r19.w >= 0);
              r19.w = max(abs(r19.w), r10.w);
              r19.w = r23.w ? r19.w : -r19.w;
              r18.w = max(1.00000001e-07, -r18.w);
              r18.w = r19.w / r18.w;
              r16.x = min(abs(r18.w), r16.x);
              r40.zw = r39.zw;
              r18.w = dot(r13.zxy, r40.xzw);
              r19.w = dot(r28.zxy, r40.xzw);
              r19.w = r19.w + -r40.y;
              r23.w = cmp(r19.w >= 0);
              r19.w = max(abs(r19.w), r10.w);
              r19.w = r23.w ? r19.w : -r19.w;
              r18.w = max(1.00000001e-07, -r18.w);
              r18.w = r19.w / r18.w;
              r16.x = min(abs(r18.w), r16.x);
              r26.x = r32.w;
              r26.yz = r33.zw;
              r26.xyz = r26.xyz + r28.xyz;
              r26.xyz = r13.xyz * r16.xxx + r26.xyz;
              r18.w = dot(r26.xyz, r26.xyz);
              r18.w = sqrt(r18.w);
              r16.x = r16.x / r18.w;
              r16.x = r16.x + r16.x;
              r16.x = sqrt(r16.x);
              r16.x = r7.w * 5 + r16.x;
              r16.x = -0.844799995 + r16.x;
              r25.y = r30.z;
              r25.z = r31.x;
              r35.x = dot(r26.xyz, r25.xyz);
              r27.xy = r30.xw;
              r27.z = r31.w;
              r35.y = dot(r26.xyz, r27.xyz);
              r31.x = r30.y;
              r35.z = dot(r26.xyz, r31.xyz);
              if (9 == 0) r18.w = 0; else if (9+16 < 32) {               r18.w = (uint)r27.w << (32-(9 + 16)); r18.w = (uint)r18.w >> (32-9);              } else r18.w = (uint)r27.w >> 16;
              r35.w = (uint)r18.w;
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
              r15.xyz = r25.xyz * r27.xyz + r15.xyz;
              r17.z = r16.x * r11.y;
              r25.xyz = r26.xyz * r6.yyy;
              r6.y = dot(r25.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r6.y = r11.y * r16.x + r6.y;
              r6.y = r17.z / r6.y;
              r24.xyz = r25.xyz * r6.yyy + r24.xyz;
            }
          }
        }
      }
      r22.xyzw = r24.xyzw;
      r23.xyz = r15.xyz;
      r12.w = (int)r12.w + 32;
    }
    r21.xyzw = r22.zxyw;
    r20.xyz = r23.xyz;
    r21.xyzw = r21.yzxw;
  } else {
    r21.x = r20.w;
  }
  r5.x = max(1, r21.w);
  r5.x = rcp(r5.x);
  r21.w = saturate(r21.w);
  r11.yzw = r20.xyz * r5.xxx;
  r12.yzw = r21.xyz * r5.xxx;
  r5.y = cmp(r21.w < 0.99000001);
  if (r5.y != 0) {
    r5.y = 1 + -r21.w;
    r5.z = sunConstants.globalProbeExposure * r5.y;
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
    r17.xyz = r17.xyz * r5.zzz;
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
    r11.yzw = r20.xyz * r5.xxx + r14.xyz;
    r13.w = 0;
    r13.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r13.xyzw, r9.w).xyz;
    r5.x = sunConstants.globalProbeExposure * r5.y + -r2.w;
    r2.w = r5.w * r5.x + r2.w;
    r12.yzw = r13.xyz * r2.www + r12.yzw;
  }
  if (useSSR != 0) {
    r2.w = dot(r4.xyz, r2.xyz);
    r2.w = r2.w + r2.w;
    r5.xyz = r2.xyz * -r2.www + r4.xyz;
    r2.w = dot(r4.xyz, -r2.xyz);
    r2.w = r2.w + r2.w;
    r13.xyz = r2.xyz * r2.www + r4.xyz;
    r5.xyz = v10.xxx ? r5.xyz : r13.xyz;
    if (useLoopedSSR != 0) {
      r13.xyz = viewMatrix._m10_m11_m12 * v7.yyy;
      r13.xyz = v7.xxx * viewMatrix._m00_m01_m02 + r13.xyz;
      r13.xyz = v7.zzz * viewMatrix._m20_m21_m22 + r13.xyz;
      r14.xyz = ssrParams.zzz * r5.xyz;
      r15.xyz = viewMatrix._m10_m11_m12 * r14.yyy;
      r14.xyw = r14.xxx * viewMatrix._m00_m01_m02 + r15.xyz;
      r14.xyz = r14.zzz * viewMatrix._m20_m21_m22 + r14.xyw;
      r2.w = min(1000, ssrParams.x);
      r13.xyz = r14.xyz * float3(10,10,10) + r13.xyz;
      r2.w = r2.w / ssrParams.z;
      r15.xyz = r12.yzw;
      r16.xyz = r13.xyz;
      r5.w = 0;
      while (true) {
        r6.x = (int)r5.w;
        r6.x = cmp(r6.x >= r2.w);
        if (r6.x != 0) break;
        r16.xyz = r16.xyz + r14.xyz;
        r17.xyz = projectionMatrix._m10_m11_m13 * r16.yyy;
        r17.xyz = r16.xxx * projectionMatrix._m00_m01_m03 + r17.xyz;
        r17.xyz = r16.zzz * projectionMatrix._m20_m21_m23 + r17.xyz;
        r17.xyz = projectionMatrix._m30_m31_m33 + r17.xyz;
        r6.x = max(abs(r17.x), abs(r17.y));
        r6.x = cmp(r17.z < r6.x);
        if (r6.x != 0) {
          break;
        }
        r6.xy = r17.xy / r17.zz;
        r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.x = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r6.xy, 1).x;
        r6.y = cmp(abs(r6.x) < r16.z);
        r7.w = cmp(abs(r6.x) >= v0.w);
        r6.y = r6.y ? r7.w : 0;
        if (r6.y != 0) {
          r6.x = r16.z + -abs(r6.x);
          r6.x = ssrParams.w * r6.x;
          r17.xyz = -r6.xxx * r14.xyz + r16.xyz;
          r18.xyz = projectionMatrix._m10_m11_m13 * r17.yyy;
          r17.xyw = r17.xxx * projectionMatrix._m00_m01_m03 + r18.xyz;
          r17.xyz = r17.zzz * projectionMatrix._m20_m21_m23 + r17.xyw;
          r17.xyz = projectionMatrix._m30_m31_m33 + r17.xyz;
          r6.xy = r17.xy / r17.zz;
          r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r17.xyz = iResolveScene.SampleLevel(bilinearClamp_s, r6.xy, 0).xyz;
          r17.xyz = relHDRExposure.xxx * r17.xyz;
          r15.xyz = r17.xyz;
          break;
        }
        r5.w = (int)r5.w + 1;
      }
      r12.yzw = r15.xyz;
    } else {
      r2.w = ssrParams.y * r0.w;
      r5.xyz = r5.xyz * r2.www + v7.xyz;
      r13.xyz = viewProjectionMatrix._m10_m11_m13 * r5.yyy;
      r5.xyw = r5.xxx * viewProjectionMatrix._m00_m01_m03 + r13.xyz;
      r5.xyz = r5.zzz * viewProjectionMatrix._m20_m21_m23 + r5.xyw;
      r5.xyz = viewProjectionMatrix._m30_m31_m33 + r5.xyz;
      r5.xy = r5.xy / r5.zz;
      r2.w = max(abs(r5.x), abs(r5.y));
      r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
      r5.z = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r5.xy, 0).x;
      r5.z = cmp(abs(r5.z) >= v0.w);
      r2.w = cmp(r2.w < 1);
      r2.w = r2.w ? r5.z : 0;
      r5.xyz = iResolveScene.Sample(bilinearClamp_s, r5.xy).xyz;
      if (r2.w != 0) {
        r12.yzw = relHDRExposure.xxx * r5.xyz;
      }
    }
  }
  r2.w = dot(r2.xyz, sunConstants.wldDir.xyz);
  r5.x = saturate(r2.w);
  r5.y = cmp(0 >= r5.x);
  if (r5.y != 0) {
    r5.z = 0;
  }
  if (r5.y == 0) {
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r13.xyz = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r13.xyz;
    r13.xyz = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r13.xyz;
    r13.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r13.xyz;
    r5.y = -sunConstants.splitDepthOffset + r13.z;
    r5.y = -r5.y * 6.10351563e-05 + 1;
    r5.w = saturate(r5.y);
    r5.w = cmp(r5.y == r5.w);
    if (r5.w != 0) {
      r5.w = 0;
      r6.x = 0;
      while (true) {
        r6.y = cmp(r5.w >= 3);
        if (r6.y != 0) break;
        r6.y = (uint)r5.w;
        r14.xy = -sunConstants.splitPinTransform[r6.y].xy + r13.xy;
        r7.w = max(abs(r14.x), abs(r14.y));
        r6.x = sunConstants.splitPinTransform[r6.y].z * r7.w;
        r6.y = cmp(r6.x < 1);
        if (r6.y != 0) {
          break;
        }
        r5.w = 1 + r5.w;
        r6.x = 0;
      }
    } else {
      r5.w = 3;
      r6.x = 0;
    }
    r6.y = cmp(r5.w >= 3);
    if (r6.y != 0) {
      r14.xyz = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r15.xz = rcp(r14.xx);
      r15.y = -r15.z;
      r14.xyz = r13.xyx * r15.xyz + r14.yzy;
      r15.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r14.xyz = max(float3(0,0,0), r14.xyz);
      r14.xyz = min(r14.xyz, r15.xyz);
      r15.xy = sunConstants.sstLightingConstants.coordScale * r14.zy;
      r15.xy = floor(r15.xy);
      r7.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r15.y;
      r7.w = r7.w * sunConstants.sstLightingConstants.coordScale + r15.x;
      r7.w = (uint)r7.w;
      r7.w = (int)r7.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r7.w, l(0), t23.xxxx
    r9.w = samp0[]..swiz;
      r10.w = (int)r9.w & 0x40000000;
      r13.w = (uint)r9.w << 2;
      if (r10.w == 0) {
        r10.w = (int)r9.w & 0x01ffffff;
        r15.x = (int)r7.w + (int)r10.w;
        r7.w = (uint)r9.w >> 25;
        r7.w = (uint)r7.w;
        r14.xyz = r14.xyz * r7.www;
        r14.xyz = frac(r14.xyz);
        r14.xyz = float3(128,128,128) * r14.xyz;
        r14.xyz = (uint3)r14.xyz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r16.xy = (uint2)r14.zy >> int2(6,6);
        r7.w = (int)r15.z & 0xc0000000;
        r9.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.w, r9.w, l(0), t23.xxxx
      r9.w = samp0[]..swiz;
        r9.w = r16.y ? r15.z : r9.w;
        r10.w = (uint)r9.w >> 13;
        r9.w = r16.x ? r10.w : r9.w;
        r9.w = (int)r9.w & 8191;
        r16.x = (int)r9.w + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.z, r16.x, l(0), t23.xxxx
      r16.z = samp0[]..swiz;
        r15.y = 0;
        r16.y = 1;
        r16.xyz = r7.www ? r15.xyz : r16.xyz;
        r17.yz = r7.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r18.xy = (uint2)r14.zy >> (uint2)r17.yy;
        r18.xy = (int2)r18.xy & int2(1,1);
        r9.w = (int)r16.z & 0xc0000000;
        r10.w = (int)r16.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r18.y ? r16.z : r10.w;
        r14.w = (uint)r10.w >> 13;
        r10.w = r18.x ? r14.w : r10.w;
        r10.w = (int)r10.w & 8191;
        r17.x = (int)r10.w + (int)r16.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.w, r17.x, l(0), t23.xxxx
      r17.w = samp0[]..swiz;
        r16.xyz = r9.www ? r16.xyz : r17.xzw;
        r15.xyz = r7.www ? r15.xyz : r16.xyz;
        r7.w = (int)r15.z & 0xc0000000;
        if (r7.w == 0) {
          r7.w = (int)-r15.y + 6;
          r16.xy = (uint2)r14.zy >> (uint2)r7.ww;
          r7.w = (int)r15.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r9.w = (((uint)r16.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r9.w = (((uint)r16.x << 0) & bitmask.w) | ((uint)r9.w & ~bitmask.w);
          r9.w = (int)r9.w * 10;
          r7.w = (uint)r7.w >> (uint)r9.w;
          r7.w = (int)r7.w & 1023;
          r16.x = (int)r7.w + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
        r16.w = samp0[]..swiz;
          r16.yz = (int2)r15.yy + int2(1,2);
          r7.w = (int)-r16.y + 6;
          r15.yw = (uint2)r14.zy >> (uint2)r7.ww;
          r7.w = (int)r16.w & 0xc0000000;
          r9.w = (int)r16.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r15.y << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r9.w = (uint)r9.w >> (uint)r10.w;
          r9.w = (int)r9.w & 1023;
          r17.x = (int)r9.w + (int)r16.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r17.z, r17.x, l(0), t23.xxxx
        r17.z = samp0[]..swiz;
          r17.y = r16.z;
          r17.xyz = r7.www ? r16.xyw : r17.xyz;
          r9.w = (int)-r17.y + 6;
          r15.yw = (uint2)r14.zy >> (uint2)r9.ww;
          r9.w = (int)r17.z & 0xc0000000;
          r10.w = (int)r17.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.w = (((uint)r15.w << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.w = (((uint)r15.y << 0) & bitmask.w) | ((uint)r14.w & ~bitmask.w);
          r14.w = (int)r14.w * 10;
          r10.w = (uint)r10.w >> (uint)r14.w;
          r10.w = (int)r10.w & 1023;
          r18.x = (int)r10.w + (int)r17.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r18.y, r18.x, l(0), t23.xxxx
        r18.y = samp0[]..swiz;
          r15.yw = r9.ww ? r17.xz : r18.xy;
          r15.xz = r7.ww ? r16.xw : r15.yw;
        }
        r7.w = (int)r15.z & 0xc0000000;
        if (r7.w == 0) {
          if (14 == 0) r9.w = 0; else if (14+15 < 32) {           r9.w = (uint)r15.z << (32-(14 + 15)); r9.w = (uint)r9.w >> (32-14);          } else r9.w = (uint)r15.z >> 15;
          r9.w = (uint)r9.w;
          r9.w = sunConstants.sstLightingConstants.constants.spanInInches * r9.w;
          r9.w = 6.10388815e-05 * r9.w;
          r15.yw = (int2)r15.zz & int2(32767,536870912);
          r10.w = (uint)r15.y;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 3.05185094e-05 * r10.w;
          r14.w = (int)r14.y & 3;
          r14.w = (int)r14.w + (int)r15.x;
          r14.w = (int)r14.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r16.x = (((uint)r14.x << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r16.y = (((uint)r14.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r16.z = (((uint)r14.z << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r14.x = (uint)r14.w >> (uint)r16.x;
          r14.x = (int)r14.x & 255;
          r14.x = (uint)r14.x;
          r14.x = r14.x * r10.w;
          r14.x = r14.x * 0.00392156886 + r9.w;
          r14.y = (int)r16.y + 1;
          if (1 == 0) r14.z = 0; else if (1+1 < 32) {           r14.z = (uint)r14.z << (32-(1 + 1)); r14.z = (uint)r14.z >> (32-1);          } else r14.z = (uint)r14.z >> 1;
          r14.y = (int)r14.z + (int)r14.y;
          r14.y = (int)r14.y + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.y, r14.y, l(0), t23.xxxx
        r14.y = samp0[]..swiz;
          r14.y = (uint)r14.y >> (uint)r16.z;
          r14.y = (int)r14.y & 0x0000ffff;
          r14.y = (uint)r14.y;
          r10.w = r14.y * r10.w;
          r9.w = r10.w * 1.52590219e-05 + r9.w;
          r13.w = r15.w ? r14.x : r9.w;
        } else {
          r9.w = (int)r15.z & 0x80000000;
          r10.w = (int)r15.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
        r10.w = samp0[]..swiz;
          r9.w = r9.w ? r10.w : 0;
          r10.w = (uint)r15.z << 2;
          r14.x = (uint)r9.w >> 16;
          r14.x = f16tof32(r14.x);
          r9.w = (int)r9.w & 0x0000ffff;
          r9.w = f16tof32(r9.w);
          r10.w = r13.x * r14.x + r10.w;
          r9.w = r13.y * r9.w + r10.w;
          r13.w = r7.w ? r9.w : r13.w;
        }
      }
      r7.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r13.z;
      r7.w = cmp(r13.w < r7.w);
      r5.z = r7.w ? 0 : 1;
    }
    if (r6.y == 0) {
      if (enableDitheredShadow == 0) {
        r6.y = (uint)r5.w;
        r13.zw = -sunConstants.splitPinTransform[r6.y].xy + r13.xy;
        r13.zw = sunConstants.splitPinTransform[r6.y].zz * r13.zw;
        r14.xy = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r6.y = (int16)sunConstants.splitArrayOffset;
        r14.z = r6.y + r5.w;
        r6.y = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r5.y).x;
        r7.w = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
        r6.y = r7.w + r6.y;
        r6.y = saturate(-1 + r6.y);
        r7.w = r6.y * r6.y;
        r5.z = r7.w * r6.y;
      }
      if (enableDitheredShadow != 0) {
        r14.x = -r11.x;
        r6.y = (uint)r5.w;
        r5.w = 1 + r5.w;
        r5.w = min(2, r5.w);
        r5.w = (uint)r5.w;
        r6.x = 1 + -r6.x;
        r6.x = 28 * r6.x;
        r6.x = (uint)r6.x;
        r13.zw = -sunConstants.splitPinTransform[r6.y].xy + r13.xy;
        r13.zw = sunConstants.splitPinTransform[r6.y].zz * r13.zw;
        r13.zw = r13.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r13.xy = -sunConstants.splitPinTransform[r5.w].xy + r13.xy;
        r13.xy = sunConstants.splitPinTransform[r5.w].zz * r13.xy;
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r14.y = r12.x;
        r14.z = r11.x;
        r7.w = 0;
        r9.w = 0;
        while (true) {
          r10.w = cmp((uint)r9.w >= 8);
          if (r10.w != 0) break;
          r10.w = cmp((uint)r6.x < (uint)r9.w);
          r15.xy = r10.ww ? r13.xy : r13.zw;
          r14.w = r10.w ? sunConstants.splitPinTransform[r5.w].w : sunConstants.splitPinTransform[r6.y].w;
          r10.w = r10.w ? r5.w : r6.y;
          r16.x = dot(icb[r9.w+0].yx, r14.xy);
          r16.y = dot(icb[r9.w+0].yx, r14.yz);
          r15.xy = r16.xy * r14.ww + r15.xy;
          r10.w = (int)r10.w + (int16)sunConstants.splitArrayOffset;
          r15.z = (uint)r10.w;
          r10.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r5.y).x;
          r14.w = gTransShadowmapArray.SampleLevel(samp0_s, r15.xyz, 0).x;
          r10.w = r14.w + r10.w;
          r10.w = saturate(-1 + r10.w);
          r7.w = r10.w * 0.125 + r7.w;
          r9.w = (int)r9.w + 1;
        }
        r5.y = r7.w * r7.w;
        r5.z = r5.y * r7.w;
      }
    }
  }
  r5.y = viewmodelSunShadowRaw & 0x0000ffff;
  r5.w = cmp(0 < (uint)r5.y);
  r6.x = cmp(0 < r5.z);
  r5.w = r5.w ? r6.x : 0;
  if (r5.w != 0) {
    r5.y = (int)r5.y + numLights;
    r5.y = (int)r5.y + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r5.w, r5.y, l(52), t12.xxxx
  r5.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xyzw, r5.y, l(68), t12.xyzw
  r13.x = samp0[]..swiz;
  r13.y = samp0[]..swiz;
  r13.z = samp0[]..swiz;
  r13.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r5.y, l(84), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r5.y, l(100), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r5.y, l(116), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r5.y, l(132), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r5.y, l(148), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
    r2.w = abs(r2.w) * -0.200000003 + 0.400000006;
    r19.xyz = r2.xyz * r2.www + v7.xyz;
    r19.w = 1;
    r6.x = dot(r13.xyzw, r19.xyzw);
    r6.y = dot(r14.xyzw, r19.xyzw);
    r2.w = dot(r15.xyzw, r19.xyzw);
    r7.w = dot(r16.xyzw, r19.xyzw);
    r9.w = cmp(r7.w < r2.w);
    r6.xy = r6.xy / r7.ww;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r6.xy = r6.xy + r18.zw;
    r6.xy = r6.xy * r18.xy;
    r13.xy = r5.ww / r17.xz;
    r13.zw = float2(1,1) + -r13.xy;
    r13.zw = cmp(r6.xy >= r13.zw);
    r13.xy = cmp(r13.xy >= r6.xy);
    r13.xy = (int2)r13.xy | (int2)r13.zw;
    r10.w = (int)r13.y | (int)r13.x;
    r9.w = (int)r9.w | (int)r10.w;
    if (r9.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.w, r5.y, l(28), t12.xxxx
    r9.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r13.xy, r5.y, l(164), t12.xyxx
    r13.x = samp0[]..swiz;
    r13.y = samp0[]..swiz;
      r6.xy = saturate(r6.xy);
      r14.xy = r6.xy * r17.xz + r17.yw;
      r5.y = r13.y * r7.w;
      r2.w = r13.x * r7.w + r2.w;
      r2.w = r2.w / r5.y;
      r2.w = max(6.10351563e-05, r2.w);
      r5.y = r9.w ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r13.x = -r11.x;
        r15.z = (uint)r5.y;
        r13.y = r12.x;
        r13.z = r11.x;
        r6.xy = float2(0,0);
        while (true) {
          r7.w = cmp((int)r6.y >= 8);
          if (r7.w != 0) break;
          r16.x = dot(icb[r6.y+0].yx, r13.xy);
          r16.y = dot(icb[r6.y+0].yx, r13.yz);
          r15.xy = r16.xy * r5.ww + r14.xy;
          r7.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r2.w).x;
          r6.x = r7.w * 0.125 + r6.x;
          r6.y = (int)r6.y + 1;
        }
      } else {
        r14.z = (uint)r5.y;
        r6.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r2.w).x;
      }
      r2.w = r6.x * r6.x;
      r2.w = r2.w * r6.x;
    } else {
      r2.w = 1;
    }
    r5.z = r5.z * r2.w;
  }
  r2.w = cmp(0 < r5.x);
  r5.y = cmp(0 < r5.z);
  if (r5.y != 0) {
    if (sunConstants.sunCookieIndex != 0) {
      r3.w = 1;
      r5.y = dot(sunConstants.sunCookieTransform[0].xyzw, r3.xyzw);
      r3.x = dot(sunConstants.sunCookieTransform[1].xyzw, r3.xyzw);
      r13.x = frac(r5.y);
      r13.y = frac(r3.x);
      r3.x = -1 + (int14)sunConstants.sunCookieIndex;
      r13.z = (uint)r3.x;
      r3.xyz = gCookieArray.SampleLevel(samplerLinear_s, r13.xyz, 0).xyz;
      r3.xyz = float3(-1,-1,-1) + r3.xyz;
      r3.xyz = sunConstants.sunCookieIntensity * r3.xyz + float3(1,1,1);
      r3.xyz = sunConstants.color.xyz * r3.xyz;
    } else {
      r3.xyz = sunConstants.color.xyz;
    }
    r3.xyz = r5.zzz * r3.xyz;
    r3.w = r7.z + r5.x;
    r3.w = r5.x / r3.w;
    r5.yzw = r3.xyz * r3.www + r11.yzw;
    r7.xzw = -v7.xyz * r7.xxx + sunConstants.wldDir.xyz;
    r3.w = dot(r7.xzw, r7.xzw);
    r3.w = rsqrt(r3.w);
    r7.xzw = r7.xzw * r3.www;
    r3.w = saturate(dot(r2.xyz, r7.xzw));
    r6.x = saturate(dot(r7.xzw, r10.xyz));
    r6.y = r3.w * r3.w;
    r7.xz = r6.yy * specularLobeRoughnessControl.xz + float2(1,1);
    r7.xz = r7.xz * r7.xz;
    r7.xz = specularLobeRoughnessControl.yw / r7.xz;
    r7.xz = r7.xz * r3.ww;
    r3.w = 4 * r6.x;
    r6.xy = r7.xz / r3.ww;
    r6.xy = lobeWeightingThicknessRefraction.xy * r6.xy;
    r7.xzw = r6.xxx * r3.xyz;
    r7.xzw = r7.xzw * r5.xxx + r12.yzw;
    r3.xyz = r6.yyy * r3.xyz;
    r3.xyz = r3.xyz * r5.xxx + r7.xzw;
  } else {
    r5.yzw = r11.yzw;
    r3.xyz = r12.yzw;
  }
  r5.xyz = r2.www ? r5.yzw : r11.yzw;
  r3.xyz = r2.www ? r3.xyz : r12.yzw;
  r10.xyzw = colorMap.Sample(colorSampler_s, r6.zw).xyzw;
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
  r11.xy = (int2)r2.xy;
  r11.zw = float2(0,0);
  r2.z = ifloatZScene.Load(r11.xyz).x;
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
    r11.xy = (int2)v0.xy;
    r11.zw = float2(0,0);
    r2.xyz = iResolveScene.Load(r11.xyz).xyz;
  }
  r6.xyw = relHDRExposure.xxx * r2.xyz;
  r0.x = r0.w * 2 + 1;
  r0.x = log2(r0.x);
  r11.x = 0.0833333358 * r0.x;
  r11.y = 0;
  r11.xyzw = rColorRamp.Sample(bilinearClamp_s, r11.xy).xyzw;
  r7.xzw = r11.xyz * r6.xyw;
  r0.x = r11.w * r10.w;
  r10.xyz = r10.xyz * r5.xyz + -r7.xzw;
  r7.xzw = r0.xxx * r10.xyz + r7.xzw;
  r2.xyz = -r2.xyz * relHDRExposure.xxx + r7.xzw;
  r2.xyz = r4.www * r2.xyz + r6.xyw;
  r6.xyw = r9.xyz * r5.xyz + -r2.xyz;
  r2.xyz = r8.xxx * r6.xyw + r2.xyz;
  r0.xyw = r3.xyz * r0.yyy + r8.yzw;
  r2.w = 1 + -r6.z;
  r3.x = r2.w * r2.w;
  r3.x = r3.x * r3.x;
  r2.w = r3.x * r2.w;
  r2.w = r2.w * 0.980000019 + 0.0199999996;
  r0.xyw = r0.xyw + -r2.xyz;
  r0.xyw = r2.www * r0.xyw + r2.xyz;
  r2.xyz = foamColor.xyz * r5.xyz + -r0.xyw;
  r2.xyz = r7.yyy * r2.xyz + r0.xyw;
  r0.xyw = useFoam ? r2.xyz : r0.xyw;
  r2.x = cmp(0 < fogConstants.atmosphereExtinctionIntensity);
  if (r2.x != 0) {
    r2.x = sqrt(r0.z);
    r2.y = cmp(0 < fogConstants.blendAmount);
    if (r2.y != 0) {
      r2.yz = r2.xx * fogConstants.atmospherefogdistancedensityscale.xy + fogConstants.atmospherefogdistanceoffset.xy;
      r2.yz = fogConstants.atmospherefogdensityatcamera.xy * r2.yz;
      r2.w = cmp(0.00999999978 < abs(v7.z));
      r3.xy = fogConstants.atmospherefogheightdensityscale.xy * v7.zz;
      r3.zw = float2(-1.44269502,-1.44269502) * r3.xy;
      r3.zw = exp2(r3.zw);
      r3.zw = float2(1,1) + -r3.zw;
      r3.xy = r3.zw / r3.xy;
      r3.xy = r3.xy * r2.yz;
      r2.yz = r2.ww ? r3.xy : r2.yz;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r2.yyy;
      r3.xyz = exp2(r3.xyz);
      r2.yzw = fogConstants.atmosphereTotalDensity.xyz * r2.zzz;
      r2.yzw = exp2(r2.yzw);
      r2.yzw = r2.yzw + -r3.xyz;
      r2.yzw = fogConstants.blendAmount * r2.yzw + r3.xyz;
    } else {
      r3.x = r2.x * fogConstants.atmospherefogdistancedensityscale.x + fogConstants.atmospherefogdistanceoffset.x;
      r3.x = fogConstants.atmospherefogdensityatcamera.x * r3.x;
      r3.y = cmp(0.00999999978 < abs(v7.z));
      r3.z = fogConstants.atmospherefogheightdensityscale.x * v7.z;
      r3.w = -1.44269502 * r3.z;
      r3.w = exp2(r3.w);
      r3.w = 1 + -r3.w;
      r3.z = r3.w / r3.z;
      r3.z = r3.x * r3.z;
      r3.x = r3.y ? r3.z : r3.x;
      r3.xyz = fogConstants.atmosphereTotalDensity.xyz * r3.xxx;
      r2.yzw = exp2(r3.xyz);
    }
    r2.yzw = r2.yzw * fogConstants.atmosphereExtinctionIntensity + float3(1,1,1);
    r2.yzw = saturate(-fogConstants.atmosphereExtinctionIntensity + r2.yzw);
    r3.x = dot(fogConstants.wldSunFogDir.xyz, -r4.xyz);
    r3.y = -fogConstants.atmosphereMieSchlickK * fogConstants.atmosphereMieSchlickK + 1;
    r3.z = fogConstants.atmosphereMieSchlickK * -r3.x + 1;
    r3.z = r3.z * r3.z;
    r3.z = 12.566371 * r3.z;
    r3.y = r3.y / r3.z;
    r2.x = -fogConstants.atmospherehazebasedist + r2.x;
    r2.x = saturate(fogConstants.atmospherehazefadedist * r2.x);
    r2.x = r3.y * r2.x;
    r3.x = saturate(r3.x);
    r3.x = r3.x * r3.x + 1;
    r3.x = r3.x * 0.0596831031 + -1;
    r3.x = fogConstants.atmospheresunstrength * r3.x + 1;
    r3.yzw = fogConstants.atmosphereMieDensity.xyz * r2.xxx;
    r3.xyz = r3.xxx * fogConstants.atmosphereRayleighDensity.xyz + r3.yzw;
    r3.xyz = fogConstants.atmosphereInScatterIntensity * r3.xyz;
    r5.xyz = float3(1,1,1) + -r2.yzw;
    r3.xyz = r5.xyz * r3.xyz;
    r2.xyz = r0.xyw * r2.yzw + r3.xyz;
  } else {
    r2.w = fogConstants.heightFalloff * v7.z;
    r3.x = fogConstants.heightFalloff * v7.z + fogConstants.K0;
    r3.y = cmp(abs(r2.w) < 9.99999975e-05);
    r3.z = min(64, r3.x);
    r3.z = 1.44269502 * r3.z;
    r3.z = exp2(r3.z);
    r3.w = saturate(fogConstants.K0b);
    r4.w = cmp(r3.x < 0);
    r3.x = 1 + r3.x;
    r3.x = r4.w ? r3.z : r3.x;
    r3.x = -fogConstants.K0b + r3.x;
    r2.w = r3.y ? 1 : r2.w;
    r2.w = r3.x / r2.w;
    r2.w = r3.y ? r3.w : r2.w;
    r2.w = fogConstants.expMul * r2.w;
    r0.z = sqrt(r0.z);
    r0.z = r2.w * r0.z + fogConstants.expAdd;
    r0.z = exp2(r0.z);
    r0.z = min(1, r0.z);
    r0.z = 1 + -r0.z;
    r2.w = dot(fogConstants.wldSunFogDir.xyz, r4.xyz);
    r2.w = saturate(fogConstants.sunFogAngles.y * r2.w + fogConstants.sunFogAngles.x);
    r3.xyzw = -fogConstants.sunFogColor.xyzw + fogConstants.fogColor.xyzw;
    r3.xyzw = r2.wwww * r3.xyzw + fogConstants.sunFogColor.xyzw;
    r0.z = r3.w * r0.z;
    r3.xyz = r3.xyz + -r0.xyw;
    r2.xyz = r0.zzz * r3.xyz + r0.xyw;
  }
  r0.xyz = relHDRExposure.yyy * r2.xyz;
  r2.xyz = cmp(r0.xyz >= float3(6.10351563e-05,6.10351563e-05,6.10351563e-05));
  r0.xyz = r2.xyz ? r0.xyz : 0;
  r0.xyz = min(float3(65024,65024,64512), r0.xyz);
  // Needs manual fix for instruction:
imm_atomic_iadd r2.x, u6, r1.xyxx, l(1)
  InterlockedAdd(dest, imm_value, orig_value);
  r1.zw = r2.xx ? float2(0,0) : 0;
  r2.x = cmp((uint)r1.w < oitMaxEntries);
  if (r2.x != 0) {
    r2.yzw = max(float3(0,0,0), r0.xyz);
    r3.x = max(r2.z, r2.w);
    r3.x = max(r3.x, r2.y);
    r3.x = (int)r3.x & 0x7f800000;
    r3.x = (int)r3.x + 0x00800000;
    r2.yzw = r3.xxx + r2.yzw;
    if (8 == 0) r2.y = 0; else if (8+15 < 32) {     r2.y = (uint)r2.y << (32-(8 + 15)); r2.y = (uint)r2.y >> (32-8);    } else r2.y = (uint)r2.y >> 15;
    r2.zw = (uint2)r2.zw >> int2(15,15);
    bitmask.z = ((~(-1 << 8)) << 8) & 0xffffffff;  r2.z = (((uint)r2.z << 8) & bitmask.z) | ((uint)0 & ~bitmask.z);
    bitmask.w = ((~(-1 << 8)) << 16) & 0xffffffff;  r2.w = (((uint)r2.w << 16) & bitmask.w) | ((uint)0 & ~bitmask.w);
    r2.y = (int)r2.z + (int)r2.y;
    r2.y = (int)r2.w + (int)r2.y;
    r2.z = (uint)r3.x << 1;
    r3.xzw = (int3)r2.zzz + (int3)r2.yyy;
    r2.y = (uint)v0.z << 2;
    bitmask.y = ((~(-1 << 11)) << 0) & 0xffffffff;  r3.y = (((uint)2046 << 0) & bitmask.y) | ((uint)r2.y & ~bitmask.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u7.xyzw, r1.xyzw, r3.xyzw
  }
  r0.w = 1;
  o0.xyzw = r2.xxxx ? float4(0,0,0,0) : r0.xyzw;
  return;
}