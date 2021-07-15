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
  float4 specularLobeRoughnessControl : packoffset(c12);
  float4 lobeWeightingThicknessRefraction : packoffset(c13);
  float3 normalAdjustAndGloss : packoffset(c14);
  float4 decalTint : packoffset(c15);
  float2 opacityScale : packoffset(c16);
  float invZFeatherDepth : packoffset(c16.z);
  float2 normalsFlowScaleMin : packoffset(c17);
  float4 ssrParams : packoffset(c18);
  float translucentShadowOpacity : packoffset(c19);
  bool useFoam : packoffset(c19.y);
  bool useSSR : packoffset(c19.z);
  bool useLoopedSSR : packoffset(c19.w);
  bool useSpecularZFeather : packoffset(c20);
  bool scaleNormalsWithFlow : packoffset(c20.y);
  bool doubleSidedLighting : packoffset(c20.z);
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
SamplerState bilinearClamp_s : register(s5);
SamplerState pointClamp_s : register(s6);
SamplerComparisonState ShadowSamplerComparisonState_s : register(s13);
Texture2D<float4> colorMap : register(t0);
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
Texture2D<float4> normalMap : register(t21);
Texture2D<float4> ifloatZSceneDownsampled : register(t22);
StructuredBuffer<gSunShadowTree> gSunShadowTree : register(t23);
Texture2D<float4> ifloatZScene : register(t24);
Texture2D<float4> iResolveScene : register(t25);
Texture2D<float4> rColorRamp : register(t26);
Texture2DArray<float> gTransShadowmapArray : register(t31);
Texture2DArray<uint> visibleDecals : register(t35);
StructuredBuffer<forwardDecalConstants> forwardDecalConstants : register(t36);
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
  uint v7 : SV_IsFrontFace0,
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
  r1.xy = normalMap.Sample(normalSampler_s, r1.xy).xy;
  r1.xy = r1.xy * normalAdjustAndGloss.xx + normalAdjustAndGloss.yy;
  r1.yzw = v5.xyz * r1.yyy;
  r1.xyz = v4.xyz * r1.xxx + r1.yzw;
  r1.xyz = v3.xyz + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = v7.xxx ? r1.xyz : -r1.xyz;
  r2.x = dot(v6.xyz, v6.xyz);
  r2.y = rsqrt(r2.x);
  r2.yzw = v6.xyz * r2.yyy;
  r4.z = saturate(dot(r1.xyz, -r2.yzw));
  if (v7.x != 0) {
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
  r5.y = cmp(useSpecularZFeather != 0);
  r5.z = dot(-v6.xyz, -v6.xyz);
  r5.z = rsqrt(r5.z);
  r6.xyz = -v6.xyz * r5.zzz;
  r7.xy = (uint2)r0.zy;
  r5.w = dot(r7.yx, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r9.x, r10.x);
  r5.w = dot(r7.xy, float2(0.0671105608,0.00583714992));
  r5.w = frac(r5.w);
  r5.w = 52.9829178 * r5.w;
  r5.w = frac(r5.w);
  r5.w = r5.w * 6.28318548 + gameTick.w;
  sincos(r5.w, r7.x, r11.x);
  r5.w = saturate(dot(r1.xyz, r6.xyz));
  r6.w = dot(-r6.xyz, r1.xyz);
  r6.w = r6.w + r6.w;
  r12.xyz = r1.xyz * -r6.www + -r6.xyz;
  r6.w = 1 + -normalAdjustAndGloss.z;
  r7.y = 5 * r6.w;
  r7.z = r6.w * 5 + -2.5;
  r7.z = saturate(0.400000006 * r7.z);
  r7.z = 100 * r7.z;
  r9.zw = -r6.ww * float2(10,5) + float2(6.85740995,7.08500004);
  r7.w = exp2(r9.z);
  r7.w = r7.w * r5.w;
  r7.w = 9.1368103 * r7.w;
  r9.z = r7.y * r6.w;
  r9.z = -r9.z * 2.0159049 + r9.w;
  r9.z = exp2(r9.z);
  r9.z = r9.z * r5.w;
  r9.z = 9.70808983 * r9.z;
  r7.w = max(r9.z, r7.w);
  r7.w = max(1.26815999, r7.w);
  r9.z = 0.0078125 * r0.x;
  r9.z = min(15, r9.z);
  r9.z = (uint)r9.z;
  r13.xy = (uint2)r0.yz >> int2(6,6);
  r13.z = (uint)r9.z << 4;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.yz = float2(0,1);
  r17.xy = float2(0,0);
  r18.xy = float2(0,0);
  r19.xy = float2(0,0);
  r4.xw = float2(1,0);
  r20.xyzw = float4(0,0,0,0);
  r21.yzw = float3(0,0,0);
  r22.w = 0;
  r0.yz = float2(0,0);
  while (true) {
    r9.z = cmp((uint)r0.z >= numRefProbes);
    if (r9.z != 0) break;
    r14.z = (uint)r0.z >> 5;
    r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
    r9.z = visibleProbes.Load(r15.xyzw).x;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r23.xyzw, r0.z, l(0), t15.wxyz
  r23.x = samp0[]..swiz;
  r23.y = samp0[]..swiz;
  r23.z = samp0[]..swiz;
  r23.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r24.xyzw, r0.z, l(16), t15.xyzw
  r24.x = samp0[]..swiz;
  r24.y = samp0[]..swiz;
  r24.z = samp0[]..swiz;
  r24.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r25.xyzw, r0.z, l(32), t15.yxwz
  r25.x = samp0[]..swiz;
  r25.y = samp0[]..swiz;
  r25.z = samp0[]..swiz;
  r25.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r26.xyzw, r0.z, l(48), t15.xyzw
  r26.x = samp0[]..swiz;
  r26.y = samp0[]..swiz;
  r26.z = samp0[]..swiz;
  r26.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r0.z, l(64), t15.zwxy
  r27.x = samp0[]..swiz;
  r27.y = samp0[]..swiz;
  r27.z = samp0[]..swiz;
  r27.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r0.z, l(80), t15.xyzw
  r28.x = samp0[]..swiz;
  r28.y = samp0[]..swiz;
  r28.z = samp0[]..swiz;
  r28.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r11.yz, r0.z, l(96), t15.xxyx
  r11.y = samp0[]..swiz;
  r11.z = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r0.z, l(116), t15.xyzw
  r29.x = samp0[]..swiz;
  r29.y = samp0[]..swiz;
  r29.z = samp0[]..swiz;
  r29.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r30.xyzw, r0.z, l(132), t15.zwxy
  r30.x = samp0[]..swiz;
  r30.y = samp0[]..swiz;
  r30.z = samp0[]..swiz;
  r30.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r0.z, l(148), t15.zwxy
  r31.x = samp0[]..swiz;
  r31.y = samp0[]..swiz;
  r31.z = samp0[]..swiz;
  r31.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r0.z, l(164), t15.zwxy
  r32.x = samp0[]..swiz;
  r32.y = samp0[]..swiz;
  r32.z = samp0[]..swiz;
  r32.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r0.z, l(180), t15.zwxy
  r33.x = samp0[]..swiz;
  r33.y = samp0[]..swiz;
  r33.z = samp0[]..swiz;
  r33.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r0.z, l(196), t15.xyzw
  r34.x = samp0[]..swiz;
  r34.y = samp0[]..swiz;
  r34.z = samp0[]..swiz;
  r34.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xy, r0.z, l(212), t15.xyxx
  r35.x = samp0[]..swiz;
  r35.y = samp0[]..swiz;
    r15.xyz = v6.xyz + -r23.yzw;
    r9.w = dot(r15.xyz, r15.xyz);
    r9.w = sqrt(r9.w);
    r9.w = cmp(probeDebugRadius >= r9.w);
    r10.w = (int)r29.y & 0x0000ffff;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r10.w, l(0), t16.xyzw
  r36.x = samp0[]..swiz;
  r36.y = samp0[]..swiz;
  r36.z = samp0[]..swiz;
  r36.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r10.w, l(16), t16.xyzw
  r37.x = samp0[]..swiz;
  r37.y = samp0[]..swiz;
  r37.z = samp0[]..swiz;
  r37.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r38.xyzw, r10.w, l(32), t16.xyzw
  r38.x = samp0[]..swiz;
  r38.y = samp0[]..swiz;
  r38.z = samp0[]..swiz;
  r38.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r39.xyzw, r10.w, l(48), t16.xyzw
  r39.x = samp0[]..swiz;
  r39.y = samp0[]..swiz;
  r39.z = samp0[]..swiz;
  r39.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r40.xyzw, r10.w, l(64), t16.xyzw
  r40.x = samp0[]..swiz;
  r40.y = samp0[]..swiz;
  r40.z = samp0[]..swiz;
  r40.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r41.xyzw, r10.w, l(80), t16.xyzw
  r41.x = samp0[]..swiz;
  r41.y = samp0[]..swiz;
  r41.z = samp0[]..swiz;
  r41.w = samp0[]..swiz;
    r11.w = dot(r36.xyz, r15.xyz);
    r11.w = saturate(r11.w + r36.w);
    r13.w = dot(r37.xyz, r15.xyz);
    r13.w = saturate(r13.w + r37.w);
    r11.w = r13.w * r11.w;
    r13.w = dot(r38.xyz, r15.xyz);
    r13.w = saturate(r13.w + r38.w);
    r11.w = r13.w * r11.w;
    r13.w = dot(r39.xyz, r15.xyz);
    r13.w = saturate(r13.w + r39.w);
    r11.w = r13.w * r11.w;
    r13.w = dot(r40.xyz, r15.xyz);
    r13.w = saturate(r13.w + r40.w);
    r11.w = r13.w * r11.w;
    r13.w = dot(r41.xyz, r15.xyz);
    r13.w = saturate(r13.w + r41.w);
    r16.x = r13.w * r11.w;
    r11.w = (int)r11.y & 1;
    r14.zw = r11.ww ? r16.xy : r16.zx;
    r36.xy = r29.zw;
    r36.z = r30.z;
    r11.w = dot(r12.xyz, r36.xyz);
    r13.w = dot(r15.xyz, r36.xyz);
    r13.w = r13.w + -r30.w;
    r16.x = cmp(r13.w >= 0);
    r13.w = max(abs(r13.w), r7.z);
    r13.w = r16.x ? r13.w : -r13.w;
    r11.w = max(1.00000001e-07, -r11.w);
    r11.w = r13.w / r11.w;
    r11.w = min(131072, abs(r11.w));
    r30.z = r31.z;
    r13.w = dot(r12.xyz, r30.xyz);
    r16.x = dot(r15.xyz, r30.xyz);
    r16.x = r16.x + -r31.w;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r7.z);
    r16.x = r16.w ? r16.x : -r16.x;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r16.x / r13.w;
    r11.w = min(abs(r13.w), r11.w);
    r31.z = r32.z;
    r13.w = dot(r12.xyz, r31.xyz);
    r16.x = dot(r15.xyz, r31.xyz);
    r16.x = r16.x + -r32.w;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r7.z);
    r16.x = r16.w ? r16.x : -r16.x;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r16.x / r13.w;
    r11.w = min(abs(r13.w), r11.w);
    r32.z = r33.z;
    r13.w = dot(r12.xyz, r32.xyz);
    r16.x = dot(r15.xyz, r32.xyz);
    r16.x = r16.x + -r33.w;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r7.z);
    r16.x = r16.w ? r16.x : -r16.x;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r16.x / r13.w;
    r11.w = min(abs(r13.w), r11.w);
    r33.z = r34.x;
    r13.w = dot(r12.xyz, r33.xyz);
    r16.x = dot(r15.xyz, r33.xyz);
    r16.x = r16.x + -r34.y;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r7.z);
    r16.x = r16.w ? r16.x : -r16.x;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r16.x / r13.w;
    r11.w = min(abs(r13.w), r11.w);
    r35.zw = r34.zw;
    r13.w = dot(r12.zxy, r35.xzw);
    r16.x = dot(r15.zxy, r35.xzw);
    r16.x = r16.x + -r35.y;
    r16.w = cmp(r16.x >= 0);
    r16.x = max(abs(r16.x), r7.z);
    r16.x = r16.w ? r16.x : -r16.x;
    r13.w = max(1.00000001e-07, -r13.w);
    r13.w = r16.x / r13.w;
    r11.w = min(abs(r13.w), r11.w);
    r30.x = r26.w;
    r30.yz = r27.zw;
    r30.xyz = r30.xyz + r15.xyz;
    r30.xyz = r12.xyz * r11.www + r30.xyz;
    r13.w = dot(r30.xyz, r30.xyz);
    r13.w = sqrt(r13.w);
    r11.w = r11.w / r13.w;
    r11.w = r11.w + r11.w;
    r11.w = sqrt(r11.w);
    r11.w = r6.w * 5 + r11.w;
    r11.w = -0.844799995 + r11.w;
    r23.y = r24.z;
    r23.z = r25.x;
    r31.x = dot(r30.xyz, r23.xyz);
    r32.xy = r24.xw;
    r32.z = r25.w;
    r31.y = dot(r30.xyz, r32.xyz);
    r25.x = r24.y;
    r31.z = dot(r30.xyz, r25.xyz);
    if (6 == 0) r16.x = 0; else if (6+25 < 32) {     r16.x = (uint)r29.y << (32-(6 + 25)); r16.x = (uint)r16.x >> (32-6);    } else r16.x = (uint)r29.y >> 25;
    if (9 == 0) r16.w = 0; else if (9+16 < 32) {     r16.w = (uint)r29.y << (32-(9 + 16)); r16.w = (uint)r16.w >> (32-9);    } else r16.w = (uint)r29.y >> 16;
    r31.w = (uint)r16.w;
    r24.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, r11.w).xyz;
    r29.yzw = (int3)r24.xyz & int3(-2147483648,-2147483648,-2147483648);
    r29.yzw = cmp((int3)r29.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r29.z | (int)r29.y;
    r11.w = (int)r29.w | (int)r11.w;
    r24.xyz = r11.www ? float3(1,1,0) : r24.xyz;
    r30.x = dot(r15.xyz, r23.xyz);
    r30.y = dot(r15.xyz, r32.xyz);
    r30.z = dot(r15.xyz, r25.xyz);
    r26.xyz = saturate(r30.xyz * r26.xyz + float3(0.5,0.5,0.5));
    r27.z = r28.x;
    r26.xyz = r26.xyz * r27.xyz + r28.yzw;
    r31.x = dot(r1.xyz, r23.xyz);
    r31.y = dot(r1.xyz, r32.xyz);
    r31.z = dot(r1.xyz, r25.xyz);
    r23.xyz = cmp(float3(0,0,0) < r31.xyz);
    r17.z = r23.x ? 0 : 0.5;
    r25.xyz = r26.xyz + r17.xyz;
    r25.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r25.xyz, 0).xyz;
    r18.z = r23.y ? 0 : 0.5;
    r23.xyw = r26.xyz + r18.xyz;
    r23.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r23.xyw, 0).xyz;
    r19.z = r23.z ? 0 : 0.5;
    r26.xyz = r26.xyz + r19.xyz;
    r26.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r26.xyz, 0).xyz;
    r27.xyz = r31.xyz * r31.xyz;
    r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r31.xyzw, 6).xyz;
    r29.yzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
    r29.yzw = cmp((int3)r29.yzw == int3(2139095040,2139095040,2139095040));
    r11.w = (int)r29.z | (int)r29.y;
    r11.w = (int)r29.w | (int)r11.w;
    r28.xyz = r11.www ? float3(1,1,0) : r28.xyz;
    r30.xyzw = r20.xyzw;
    r29.yzw = r21.yzw;
    r11.w = r22.w;
    r13.w = r0.y;
    r16.w = r9.z;
    while (true) {
      if (r16.w == 0) break;
      r17.z = firstbitlow((uint)r16.w);
      r17.z = 1 << (int)r17.z;
      r17.w = (int)r16.w & (int)r17.z;
      if (r17.w != 0) {
        r17.z = ~(int)r17.z;
        r16.w = (int)r16.w & (int)r17.z;
        if (r9.w != 0) {
          r17.z = r11.y;
          r31.xy = r14.zw;
          r17.w = 1;
          while (true) {
            r18.z = cmp((int)r17.w >= (int)r16.x);
            if (r18.z != 0) break;
            r18.z = (int)r10.w + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r18.z, l(0), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r18.z, l(16), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r18.z, l(32), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r18.z, l(48), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r18.z, l(64), t16.xyzw
          r36.x = samp0[]..swiz;
          r36.y = samp0[]..swiz;
          r36.z = samp0[]..swiz;
          r36.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r37.xyzw, r18.z, l(80), t16.xyzw
          r37.x = samp0[]..swiz;
          r37.y = samp0[]..swiz;
          r37.z = samp0[]..swiz;
          r37.w = samp0[]..swiz;
            r18.z = dot(r32.xyz, r15.xyz);
            r18.z = saturate(r18.z + r32.w);
            r18.z = r31.x * r18.z;
            r18.w = dot(r33.xyz, r15.xyz);
            r18.w = saturate(r18.w + r33.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r34.xyz, r15.xyz);
            r18.w = saturate(r18.w + r34.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r35.xyz, r15.xyz);
            r18.w = saturate(r18.w + r35.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r36.xyz, r15.xyz);
            r18.w = saturate(r18.w + r36.w);
            r18.z = r18.z * r18.w;
            r18.w = dot(r37.xyz, r15.xyz);
            r18.w = saturate(r18.w + r37.w);
            r31.x = r18.z * r18.w;
            r19.z = (uint)r17.z >> 2;
            if (1 == 0) r19.w = 0; else if (1+2 < 32) {             r19.w = (uint)r17.z << (32-(1 + 2)); r19.w = (uint)r19.w >> (32-1);            } else r19.w = (uint)r17.z >> 2;
            r23.z = (int)r19.z & 2;
            r24.w = max(r31.y, r31.x);
            r18.z = -r18.z * r18.w + 1;
            r18.z = r31.y * r18.z;
            r4.y = r23.z ? r18.z : r24.w;
            r31.xy = r19.ww ? r31.xy : r4.xy;
            r17.w = (int)r17.w + 1;
            r17.z = r19.z;
          }
          r31.y = saturate(r31.y);
          r4.y = r31.y * r11.z;
          r17.z = cmp(0 < r4.y);
          if (r17.z != 0) {
            r17.z = (int)r11.w + 257;
            r32.z = r31.y * r11.z + r29.w;
            r4.y = r4.y * r29.x;
            r31.xzw = r27.xyz * r4.yyy;
            r33.xyz = r31.zzz * r23.xyw;
            r33.xyz = r25.xyz * r31.xxx + r33.xyz;
            r31.xzw = r26.xyz * r31.www + r33.xyz;
            r33.xyz = r31.xzw * r28.xyz;
            r17.w = dot(r33.xyz, float3(0.212599993,0.715200007,0.0722000003));
            r33.xyz = r31.xzw * r28.xyz + r30.xyz;
            r18.z = r17.w * r7.w;
            r31.xzw = r24.xyz * r4.yyy;
            r4.y = dot(r31.xzw, float3(0.212599993,0.715200007,0.0722000003));
            r4.y = r7.w * r17.w + r4.y;
            r4.y = r18.z / r4.y;
            r34.x = r30.w;
            r34.yz = r29.yz;
            r32.xyw = r31.zwx * r4.yyy + r34.yzx;
            r33.w = r32.w;
          } else {
            r17.z = (int)r11.w + 1;
            r33.xyzw = r30.xyzw;
            r32.xyz = r29.yzw;
          }
          r13.w = -1;
          r30.xyzw = r33.xyzw;
          r29.yzw = r32.xyz;
          r11.w = r17.z;
          break;
        }
      }
    }
    if (r13.w != 0) {
      r20.xyzw = r30.xyzw;
      r21.yzw = r29.yzw;
      r22.w = r11.w;
      r0.y = -1;
      break;
    }
    r0.z = (int)r0.z + 32;
    r20.xyzw = r30.xyzw;
    r21.yzw = r29.yzw;
    r22.w = r11.w;
    r0.y = r13.w;
  }
  if (r0.y == 0) {
    r0.y = numRefProbes + -numOverrideProbes;
    r0.z = (int)r0.y & -32;
    r4.x = (int)-r0.z + (int)r0.y;
    r4.y = numRefProbes & -32;
    r9.z = (int)-r4.y + numRefProbes;
    r14.xy = float2(0,0);
    r15.w = 0;
    r16.yz = float2(0,1);
    r17.xy = float2(0,0);
    r18.x = 1;
    r19.xy = float2(0,0);
    r23.xy = float2(0,0);
    r24.xyzw = r20.wxyz;
    r25.xyz = r21.yzw;
    r25.w = r22.w;
    r9.w = r0.z;
    while (true) {
      r10.w = cmp((uint)r9.w >= numRefProbes);
      if (r10.w != 0) break;
      r14.z = (uint)r9.w >> 5;
      r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
      r10.w = visibleProbes.Load(r15.xyzw).x;
      r11.y = cmp((int)r0.z == (int)r9.w);
      bitmask.z = ((~(-1 << r4.x)) << 0) & 0xffffffff;  r11.z = (((uint)0 << 0) & bitmask.z) | ((uint)r10.w & ~bitmask.z);
      r10.w = r11.y ? r11.z : r10.w;
      r11.y = cmp((int)r4.y == (int)r9.w);
      if (r9.z == 0) r11.z = 0; else if (r9.z+0 < 32) {       r11.z = (uint)r10.w << (32-(r9.z + 0)); r11.z = (uint)r11.z >> (32-r9.z);      } else r11.z = (uint)r10.w >> 0;
      r10.w = r11.y ? r11.z : r10.w;
      r11.y = (int)r9.w + numLights;
      r26.xyzw = r24.yzwx;
      r27.xyzw = r25.xyzw;
      r11.z = r10.w;
      while (true) {
        if (r11.z == 0) break;
        r11.w = firstbitlow((uint)r11.z);
        r13.w = 1 << (int)r11.w;
        r14.z = (int)r11.z & (int)r13.w;
        if (r14.z != 0) {
          r11.z = (int)r11.z ^ (int)r13.w;
          r13.w = (int)r11.w + (int)r11.y;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(0), t11.xyzw
        r28.x = samp0[]..swiz;
        r28.y = samp0[]..swiz;
        r28.z = samp0[]..swiz;
        r28.w = samp0[]..swiz;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r15.xy, r13.w, l(16), t11.xyxx
        r15.x = samp0[]..swiz;
        r15.y = samp0[]..swiz;
          r28.xyz = -v6.xyz + r28.xyz;
          r15.z = r28.w;
          r15.xyz = cmp(abs(r28.xyz) < r15.zxy);
          r13.w = r15.y ? r15.x : 0;
          r13.w = r15.z ? r13.w : 0;
          if (r13.w != 0) {
            r11.w = (int)r9.w + (int)r11.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xyzw, r11.w, l(0), t15.wxyz
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
          r28.z = samp0[]..swiz;
          r28.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r14.zw, r11.w, l(96), t15.xxxy
          r14.z = samp0[]..swiz;
          r14.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r11.w, l(116), t15.zwxy
          r29.x = samp0[]..swiz;
          r29.y = samp0[]..swiz;
          r29.z = samp0[]..swiz;
          r29.w = samp0[]..swiz;
            r15.xyz = v6.xyz + -r28.yzw;
            r13.w = (int)r29.w & 0x0000ffff;
            if (6 == 0) r16.w = 0; else if (6+25 < 32) {             r16.w = (uint)r29.w << (32-(6 + 25)); r16.w = (uint)r16.w >> (32-6);            } else r16.w = (uint)r29.w >> 25;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(0), t16.xyzw
          r30.x = samp0[]..swiz;
          r30.y = samp0[]..swiz;
          r30.z = samp0[]..swiz;
          r30.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(16), t16.xyzw
          r31.x = samp0[]..swiz;
          r31.y = samp0[]..swiz;
          r31.z = samp0[]..swiz;
          r31.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(32), t16.xyzw
          r32.x = samp0[]..swiz;
          r32.y = samp0[]..swiz;
          r32.z = samp0[]..swiz;
          r32.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r13.w, l(48), t16.xyzw
          r33.x = samp0[]..swiz;
          r33.y = samp0[]..swiz;
          r33.z = samp0[]..swiz;
          r33.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(64), t16.xyzw
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(80), t16.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r17.w = dot(r30.xyz, r15.xyz);
            r17.w = saturate(r17.w + r30.w);
            r18.z = dot(r31.xyz, r15.xyz);
            r18.z = saturate(r18.z + r31.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r32.xyz, r15.xyz);
            r18.z = saturate(r18.z + r32.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r33.xyz, r15.xyz);
            r18.z = saturate(r18.z + r33.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r34.xyz, r15.xyz);
            r18.z = saturate(r18.z + r34.w);
            r17.w = r18.z * r17.w;
            r18.z = dot(r35.xyz, r15.xyz);
            r18.z = saturate(r18.z + r35.w);
            r16.x = r18.z * r17.w;
            r17.w = (int)r14.z & 1;
            r18.zw = r17.ww ? r16.xy : r16.zx;
            r16.x = r14.z;
            r30.xy = r18.zw;
            r17.w = 1;
            while (true) {
              r19.w = cmp((int)r17.w >= (int)r16.w);
              if (r19.w != 0) break;
              r19.w = (int)r13.w + (int)r17.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r19.w = dot(r31.xyz, r15.xyz);
              r19.w = saturate(r19.w + r31.w);
              r19.w = r30.x * r19.w;
              r23.w = dot(r32.xyz, r15.xyz);
              r23.w = saturate(r23.w + r32.w);
              r19.w = r23.w * r19.w;
              r23.w = dot(r33.xyz, r15.xyz);
              r23.w = saturate(r23.w + r33.w);
              r19.w = r23.w * r19.w;
              r23.w = dot(r34.xyz, r15.xyz);
              r23.w = saturate(r23.w + r34.w);
              r19.w = r23.w * r19.w;
              r23.w = dot(r35.xyz, r15.xyz);
              r23.w = saturate(r23.w + r35.w);
              r19.w = r23.w * r19.w;
              r23.w = dot(r36.xyz, r15.xyz);
              r23.w = saturate(r23.w + r36.w);
              r30.x = r23.w * r19.w;
              r28.w = (uint)r16.x >> 2;
              if (1 == 0) r30.z = 0; else if (1+2 < 32) {               r30.z = (uint)r16.x << (32-(1 + 2)); r30.z = (uint)r30.z >> (32-1);              } else r30.z = (uint)r16.x >> 2;
              r30.w = (int)r28.w & 2;
              r31.x = max(r30.y, r30.x);
              r19.w = -r19.w * r23.w + 1;
              r19.w = r30.y * r19.w;
              r18.y = r30.w ? r19.w : r31.x;
              r30.xy = r30.zz ? r30.xy : r18.xy;
              r17.w = (int)r17.w + 1;
              r16.x = r28.w;
            }
            r30.y = saturate(r30.y);
            r13.w = r30.y * r14.w;
            r14.z = cmp(0 < r13.w);
            if (r14.z != 0) {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r31.xyzw, r11.w, l(16), t15.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r11.w, l(32), t15.yxwz
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r11.w, l(48), t15.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r11.w, l(64), t15.zwxy
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r11.w, l(80), t15.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r11.w, l(132), t15.zwxy
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r11.w, l(148), t15.zwxy
            r37.x = samp0[]..swiz;
            r37.y = samp0[]..swiz;
            r37.z = samp0[]..swiz;
            r37.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r11.w, l(164), t15.zwxy
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r11.w, l(180), t15.zwxy
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r11.w, l(196), t15.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xy, r11.w, l(212), t15.xyxx
            r41.x = samp0[]..swiz;
            r41.y = samp0[]..swiz;
              r27.w = (int)r27.w + 257;
              r27.z = r30.y * r14.w + r27.z;
              r11.w = r13.w * r29.z;
              r29.z = r36.z;
              r13.w = dot(r12.xyz, r29.xyz);
              r14.z = dot(r15.xyz, r29.xyz);
              r14.z = r14.z + -r36.w;
              r14.w = cmp(r14.z >= 0);
              r14.z = max(abs(r14.z), r7.z);
              r14.z = r14.w ? r14.z : -r14.z;
              r13.w = max(1.00000001e-07, -r13.w);
              r13.w = r14.z / r13.w;
              r13.w = min(131072, abs(r13.w));
              r36.z = r37.z;
              r14.z = dot(r12.xyz, r36.xyz);
              r14.w = dot(r15.xyz, r36.xyz);
              r14.w = r14.w + -r37.w;
              r16.x = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r7.z);
              r14.w = r16.x ? r14.w : -r14.w;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r14.w / r14.z;
              r13.w = min(abs(r14.z), r13.w);
              r37.z = r38.z;
              r14.z = dot(r12.xyz, r37.xyz);
              r14.w = dot(r15.xyz, r37.xyz);
              r14.w = r14.w + -r38.w;
              r16.x = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r7.z);
              r14.w = r16.x ? r14.w : -r14.w;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r14.w / r14.z;
              r13.w = min(abs(r14.z), r13.w);
              r38.z = r39.z;
              r14.z = dot(r12.xyz, r38.xyz);
              r14.w = dot(r15.xyz, r38.xyz);
              r14.w = r14.w + -r39.w;
              r16.x = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r7.z);
              r14.w = r16.x ? r14.w : -r14.w;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r14.w / r14.z;
              r13.w = min(abs(r14.z), r13.w);
              r39.z = r40.x;
              r14.z = dot(r12.xyz, r39.xyz);
              r14.w = dot(r15.xyz, r39.xyz);
              r14.w = r14.w + -r40.y;
              r16.x = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r7.z);
              r14.w = r16.x ? r14.w : -r14.w;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r14.w / r14.z;
              r13.w = min(abs(r14.z), r13.w);
              r41.zw = r40.zw;
              r14.z = dot(r12.zxy, r41.xzw);
              r14.w = dot(r15.zxy, r41.xzw);
              r14.w = r14.w + -r41.y;
              r16.x = cmp(r14.w >= 0);
              r14.w = max(abs(r14.w), r7.z);
              r14.w = r16.x ? r14.w : -r14.w;
              r14.z = max(1.00000001e-07, -r14.z);
              r14.z = r14.w / r14.z;
              r13.w = min(abs(r14.z), r13.w);
              r29.x = r33.w;
              r29.yz = r34.zw;
              r18.yzw = r29.xyz + r15.xyz;
              r18.yzw = r12.xyz * r13.www + r18.yzw;
              r14.z = dot(r18.yzw, r18.yzw);
              r14.z = sqrt(r14.z);
              r13.w = r13.w / r14.z;
              r13.w = r13.w + r13.w;
              r13.w = sqrt(r13.w);
              r13.w = r6.w * 5 + r13.w;
              r13.w = -0.844799995 + r13.w;
              r28.y = r31.z;
              r28.z = r32.x;
              r36.x = dot(r18.yzw, r28.xyz);
              r29.xy = r31.xw;
              r29.z = r32.w;
              r36.y = dot(r18.yzw, r29.xyz);
              r32.x = r31.y;
              r36.z = dot(r18.yzw, r32.xyz);
              if (9 == 0) r14.z = 0; else if (9+16 < 32) {               r14.z = (uint)r29.w << (32-(9 + 16)); r14.z = (uint)r14.z >> (32-9);              } else r14.z = (uint)r29.w >> 16;
              r36.w = (uint)r14.z;
              r18.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, r13.w).xyz;
              r30.xzw = (int3)r18.yzw & int3(-2147483648,-2147483648,-2147483648);
              r30.xzw = cmp((int3)r30.xzw == int3(2139095040,2139095040,2139095040));
              r13.w = (int)r30.z | (int)r30.x;
              r13.w = (int)r30.w | (int)r13.w;
              r18.yzw = r13.www ? float3(1,1,0) : r18.yzw;
              r31.x = dot(r15.xyz, r28.xyz);
              r31.y = dot(r15.xyz, r29.xyz);
              r31.z = dot(r15.xyz, r32.xyz);
              r15.xyz = saturate(r31.xyz * r33.xyz + float3(0.5,0.5,0.5));
              r34.z = r35.x;
              r15.xyz = r15.xyz * r34.xyz + r35.yzw;
              r36.x = dot(r1.xyz, r28.xyz);
              r36.y = dot(r1.xyz, r29.xyz);
              r36.z = dot(r1.xyz, r32.xyz);
              r28.xyz = cmp(float3(0,0,0) < r36.xyz);
              r17.z = r28.x ? 0 : 0.5;
              r29.xyz = r17.xyz + r15.xyz;
              r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
              r30.xzw = r36.xyz * r36.xyz;
              r30.xzw = r30.xzw * r11.www;
              r19.z = r28.y ? 0 : 0.5;
              r28.xyw = r19.xyz + r15.xyz;
              r28.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r28.xyw, 0).xyz;
              r28.xyw = r28.xyw * r30.zzz;
              r28.xyw = r29.xyz * r30.xxx + r28.xyw;
              r23.z = r28.z ? 0 : 0.5;
              r15.xyz = r23.xyz + r15.xyz;
              r15.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r15.xyz, 0).xyz;
              r15.xyz = r15.xyz * r30.www + r28.xyw;
              r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r36.xyzw, 6).xyz;
              r29.xyz = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
              r29.xyz = cmp((int3)r29.xyz == int3(2139095040,2139095040,2139095040));
              r13.w = (int)r29.y | (int)r29.x;
              r13.w = (int)r29.z | (int)r13.w;
              r28.xyz = r13.www ? float3(1,1,0) : r28.xyz;
              r29.xyz = r28.xyz * r15.xyz;
              r13.w = dot(r29.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r26.xyz = r15.xyz * r28.xyz + r26.xyz;
              r14.z = r13.w * r7.w;
              r15.xyz = r18.yzw * r11.www;
              r11.w = dot(r15.xyz, float3(0.212599993,0.715200007,0.0722000003));
              r11.w = r7.w * r13.w + r11.w;
              r11.w = r14.z / r11.w;
              r28.x = r26.w;
              r28.yz = r27.xy;
              r15.xyz = r15.xyz * r11.www + r28.xyz;
              r26.w = r15.x;
              r27.xy = r15.yz;
            } else {
              r27.w = (int)r27.w + 1;
            }
          }
        }
      }
      r24.xyzw = r26.wxyz;
      r25.xyzw = r27.xyzw;
      r9.w = (int)r9.w + 32;
    }
    r22.xyzw = r25.zxyw;
    r4.y = cmp(r22.x < 1);
    if (r4.y != 0) {
      r14.xy = float2(0,0);
      r15.w = 0;
      r16.yz = float2(0,1);
      r17.xy = float2(0,0);
      r18.x = 1;
      r19.xy = float2(0,0);
      r23.xy = float2(0,0);
      r11.yzw = r24.yzw;
      r25.x = r24.x;
      r25.yz = r22.yz;
      r9.zw = r22.xw;
      r4.y = r22.x;
      r10.w = 0;
      while (true) {
        r13.w = cmp((uint)r10.w >= (uint)r0.y);
        if (r13.w != 0) break;
        r14.z = (uint)r10.w >> 5;
        r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
        r13.w = visibleProbes.Load(r15.xyzw).x;
        r14.z = cmp((int)r0.z == (int)r10.w);
        if (r4.x == 0) r14.w = 0; else if (r4.x+0 < 32) {         r14.w = (uint)r13.w << (32-(r4.x + 0)); r14.w = (uint)r14.w >> (32-r4.x);        } else r14.w = (uint)r13.w >> 0;
        r13.w = r14.z ? r14.w : r13.w;
        r14.z = (int)r10.w + numLights;
        r15.xyz = r11.yzw;
        r26.xyz = r25.xyz;
        r18.zw = r9.zw;
        r14.w = r4.y;
        r16.w = r13.w;
        while (true) {
          if (r16.w == 0) break;
          r17.w = firstbitlow((uint)r16.w);
          r19.w = 1 << (int)r17.w;
          r21.w = (int)r16.w & (int)r19.w;
          if (r21.w != 0) {
            r16.w = (int)r16.w ^ (int)r19.w;
            r19.w = (int)r14.z + (int)r17.w;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r27.xyzw, r19.w, l(0), t11.xyzw
          r27.x = samp0[]..swiz;
          r27.y = samp0[]..swiz;
          r27.z = samp0[]..swiz;
          r27.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=80)(mixed,mixed,mixed,mixed) r28.xy, r19.w, l(16), t11.xyxx
          r28.x = samp0[]..swiz;
          r28.y = samp0[]..swiz;
            r27.xyz = -v6.xyz + r27.xyz;
            r28.z = r27.w;
            r27.xyz = cmp(abs(r27.xyz) < r28.zxy);
            r19.w = r27.y ? r27.x : 0;
            r19.w = r27.z ? r19.w : 0;
            if (r19.w != 0) {
              r17.w = (int)r10.w + (int)r17.w;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r27.xyzw, r17.w, l(0), t15.wxyz
            r27.x = samp0[]..swiz;
            r27.y = samp0[]..swiz;
            r27.z = samp0[]..swiz;
            r27.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r28.xy, r17.w, l(96), t15.xyxx
            r28.x = samp0[]..swiz;
            r28.y = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r29.xyzw, r17.w, l(116), t15.zwxy
            r29.x = samp0[]..swiz;
            r29.y = samp0[]..swiz;
            r29.z = samp0[]..swiz;
            r29.w = samp0[]..swiz;
              r30.xyz = v6.xyz + -r27.yzw;
              r19.w = (int)r29.w & 0x0000ffff;
              if (6 == 0) r21.w = 0; else if (6+25 < 32) {               r21.w = (uint)r29.w << (32-(6 + 25)); r21.w = (uint)r21.w >> (32-6);              } else r21.w = (uint)r29.w >> 25;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r31.xyzw, r19.w, l(0), t16.xyzw
            r31.x = samp0[]..swiz;
            r31.y = samp0[]..swiz;
            r31.z = samp0[]..swiz;
            r31.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r32.xyzw, r19.w, l(16), t16.xyzw
            r32.x = samp0[]..swiz;
            r32.y = samp0[]..swiz;
            r32.z = samp0[]..swiz;
            r32.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r33.xyzw, r19.w, l(32), t16.xyzw
            r33.x = samp0[]..swiz;
            r33.y = samp0[]..swiz;
            r33.z = samp0[]..swiz;
            r33.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r34.xyzw, r19.w, l(48), t16.xyzw
            r34.x = samp0[]..swiz;
            r34.y = samp0[]..swiz;
            r34.z = samp0[]..swiz;
            r34.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r35.xyzw, r19.w, l(64), t16.xyzw
            r35.x = samp0[]..swiz;
            r35.y = samp0[]..swiz;
            r35.z = samp0[]..swiz;
            r35.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=96)(mixed,mixed,mixed,mixed) r36.xyzw, r19.w, l(80), t16.xyzw
            r36.x = samp0[]..swiz;
            r36.y = samp0[]..swiz;
            r36.z = samp0[]..swiz;
            r36.w = samp0[]..swiz;
              r23.w = dot(r31.xyz, r30.xyz);
              r23.w = saturate(r23.w + r31.w);
              r25.w = dot(r32.xyz, r30.xyz);
              r25.w = saturate(r25.w + r32.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r33.xyz, r30.xyz);
              r25.w = saturate(r25.w + r33.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r34.xyz, r30.xyz);
              r25.w = saturate(r25.w + r34.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r35.xyz, r30.xyz);
              r25.w = saturate(r25.w + r35.w);
              r23.w = r25.w * r23.w;
              r25.w = dot(r36.xyz, r30.xyz);
              r25.w = saturate(r25.w + r36.w);
              r16.x = r25.w * r23.w;
              r23.w = (int)r28.x & 1;
              r28.zw = r23.ww ? r16.xy : r16.zx;
              r16.x = r28.x;
              r31.xy = r28.zw;
              r23.w = 1;
              while (true) {
                r25.w = cmp((int)r23.w >= (int)r21.w);
                if (r25.w != 0) break;
                r25.w = (int)r19.w + (int)r23.w;
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
                r27.w = (uint)r16.x >> 2;
                if (1 == 0) r30.w = 0; else if (1+2 < 32) {                 r30.w = (uint)r16.x << (32-(1 + 2)); r30.w = (uint)r30.w >> (32-1);                } else r30.w = (uint)r16.x >> 2;
                r31.z = (int)r27.w & 2;
                r31.w = max(r31.y, r31.x);
                r25.w = -r25.w * r26.w + 1;
                r25.w = r31.y * r25.w;
                r18.y = r31.z ? r25.w : r31.w;
                r31.xy = r30.ww ? r31.xy : r18.xy;
                r23.w = (int)r23.w + 1;
                r16.x = r27.w;
              }
              r16.x = saturate(r31.y + -r14.w);
              r18.y = r16.x * r28.y;
              r19.w = cmp(0 < r18.y);
              if (r19.w != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r32.xyzw, r17.w, l(16), t15.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r33.xyzw, r17.w, l(32), t15.yxwz
              r33.x = samp0[]..swiz;
              r33.y = samp0[]..swiz;
              r33.z = samp0[]..swiz;
              r33.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r34.xyzw, r17.w, l(48), t15.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r35.xyzw, r17.w, l(64), t15.zwxy
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r36.xyzw, r17.w, l(80), t15.xyzw
              r36.x = samp0[]..swiz;
              r36.y = samp0[]..swiz;
              r36.z = samp0[]..swiz;
              r36.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r37.xyzw, r17.w, l(132), t15.zwxy
              r37.x = samp0[]..swiz;
              r37.y = samp0[]..swiz;
              r37.z = samp0[]..swiz;
              r37.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r38.xyzw, r17.w, l(148), t15.zwxy
              r38.x = samp0[]..swiz;
              r38.y = samp0[]..swiz;
              r38.z = samp0[]..swiz;
              r38.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r39.xyzw, r17.w, l(164), t15.zwxy
              r39.x = samp0[]..swiz;
              r39.y = samp0[]..swiz;
              r39.z = samp0[]..swiz;
              r39.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r40.xyzw, r17.w, l(180), t15.zwxy
              r40.x = samp0[]..swiz;
              r40.y = samp0[]..swiz;
              r40.z = samp0[]..swiz;
              r40.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r41.xyzw, r17.w, l(196), t15.xyzw
              r41.x = samp0[]..swiz;
              r41.y = samp0[]..swiz;
              r41.z = samp0[]..swiz;
              r41.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=224)(mixed,mixed,mixed,mixed) r42.xy, r17.w, l(212), t15.xyxx
              r42.x = samp0[]..swiz;
              r42.y = samp0[]..swiz;
                r18.w = (int)r18.w + 257;
                r18.z = r16.x * r28.y + r18.z;
                r16.x = r18.y * r29.z;
                r29.z = r37.z;
                r17.w = dot(r12.xyz, r29.xyz);
                r18.y = dot(r30.xyz, r29.xyz);
                r18.y = r18.y + -r37.w;
                r19.w = cmp(r18.y >= 0);
                r18.y = max(abs(r18.y), r7.z);
                r18.y = r19.w ? r18.y : -r18.y;
                r17.w = max(1.00000001e-07, -r17.w);
                r17.w = r18.y / r17.w;
                r17.w = min(131072, abs(r17.w));
                r37.z = r38.z;
                r18.y = dot(r12.xyz, r37.xyz);
                r19.w = dot(r30.xyz, r37.xyz);
                r19.w = r19.w + -r38.w;
                r21.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r7.z);
                r19.w = r21.w ? r19.w : -r19.w;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r19.w / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r38.z = r39.z;
                r18.y = dot(r12.xyz, r38.xyz);
                r19.w = dot(r30.xyz, r38.xyz);
                r19.w = r19.w + -r39.w;
                r21.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r7.z);
                r19.w = r21.w ? r19.w : -r19.w;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r19.w / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r39.z = r40.z;
                r18.y = dot(r12.xyz, r39.xyz);
                r19.w = dot(r30.xyz, r39.xyz);
                r19.w = r19.w + -r40.w;
                r21.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r7.z);
                r19.w = r21.w ? r19.w : -r19.w;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r19.w / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r40.z = r41.x;
                r18.y = dot(r12.xyz, r40.xyz);
                r19.w = dot(r30.xyz, r40.xyz);
                r19.w = r19.w + -r41.y;
                r21.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r7.z);
                r19.w = r21.w ? r19.w : -r19.w;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r19.w / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r42.zw = r41.zw;
                r18.y = dot(r12.zxy, r42.xzw);
                r19.w = dot(r30.zxy, r42.xzw);
                r19.w = r19.w + -r42.y;
                r21.w = cmp(r19.w >= 0);
                r19.w = max(abs(r19.w), r7.z);
                r19.w = r21.w ? r19.w : -r19.w;
                r18.y = max(1.00000001e-07, -r18.y);
                r18.y = r19.w / r18.y;
                r17.w = min(abs(r18.y), r17.w);
                r28.x = r34.w;
                r28.yz = r35.zw;
                r28.xyz = r28.xyz + r30.xyz;
                r28.xyz = r12.xyz * r17.www + r28.xyz;
                r18.y = dot(r28.xyz, r28.xyz);
                r18.y = sqrt(r18.y);
                r17.w = r17.w / r18.y;
                r17.w = r17.w + r17.w;
                r17.w = sqrt(r17.w);
                r17.w = r6.w * 5 + r17.w;
                r17.w = -0.844799995 + r17.w;
                r27.y = r32.z;
                r27.z = r33.x;
                r37.x = dot(r28.xyz, r27.xyz);
                r29.xy = r32.xw;
                r29.z = r33.w;
                r37.y = dot(r28.xyz, r29.xyz);
                r33.x = r32.y;
                r37.z = dot(r28.xyz, r33.xyz);
                if (9 == 0) r18.y = 0; else if (9+16 < 32) {                 r18.y = (uint)r29.w << (32-(9 + 16)); r18.y = (uint)r18.y >> (32-9);                } else r18.y = (uint)r29.w >> 16;
                r37.w = (uint)r18.y;
                r28.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, r17.w).xyz;
                r31.xzw = (int3)r28.xyz & int3(-2147483648,-2147483648,-2147483648);
                r31.xzw = cmp((int3)r31.xzw == int3(2139095040,2139095040,2139095040));
                r17.w = (int)r31.z | (int)r31.x;
                r17.w = (int)r31.w | (int)r17.w;
                r28.xyz = r17.www ? float3(1,1,0) : r28.xyz;
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
                r17.z = r27.x ? 0 : 0.5;
                r29.xyz = r30.xyz + r17.xyz;
                r29.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
                r31.xzw = r37.xyz * r37.xyz;
                r31.xzw = r31.xzw * r16.xxx;
                r19.z = r27.y ? 0 : 0.5;
                r27.xyw = r30.xyz + r19.xyz;
                r27.xyw = gProbeYArray.SampleLevel(samplerLinearClamp_s, r27.xyw, 0).xyz;
                r27.xyw = r27.xyw * r31.zzz;
                r27.xyw = r29.xyz * r31.xxx + r27.xyw;
                r23.z = r27.z ? 0 : 0.5;
                r29.xyz = r30.xyz + r23.xyz;
                r29.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r29.xyz, 0).xyz;
                r27.xyz = r29.xyz * r31.www + r27.xyw;
                r29.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r37.xyzw, 6).xyz;
                r30.xyz = (int3)r29.xyz & int3(-2147483648,-2147483648,-2147483648);
                r30.xyz = cmp((int3)r30.xyz == int3(2139095040,2139095040,2139095040));
                r17.z = (int)r30.y | (int)r30.x;
                r17.z = (int)r30.z | (int)r17.z;
                r29.xyz = r17.zzz ? float3(1,1,0) : r29.xyz;
                r30.xyz = r29.xyz * r27.xyz;
                r17.z = dot(r30.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r15.xyz = r27.xyz * r29.xyz + r15.xyz;
                r17.w = r17.z * r7.w;
                r27.xyz = r28.xyz * r16.xxx;
                r16.x = dot(r27.xyz, float3(0.212599993,0.715200007,0.0722000003));
                r16.x = r7.w * r17.z + r16.x;
                r16.x = r17.w / r16.x;
                r26.xyz = r27.xyz * r16.xxx + r26.xyz;
              } else {
                r18.w = (int)r18.w + 1;
              }
            }
          }
        }
        r11.yzw = r15.xyz;
        r25.xyz = r26.xyz;
        r9.zw = r18.zw;
        r10.w = (int)r10.w + 32;
      }
      r24.xyz = r25.xyz;
      r22.yw = r9.zw;
      r22.xw = r22.yw;
    } else {
      r11.yzw = r24.yzw;
      r24.yz = r22.yz;
    }
    r0.y = max(1, r22.x);
    r0.y = rcp(r0.y);
    r22.x = saturate(r22.x);
    r20.xyz = r11.yzw * r0.yyy;
    r21.xyz = r24.xyz * r0.yyy;
    r0.z = cmp(r22.x < 0.99000001);
    if (r0.z != 0) {
      r22.w = (int)r22.w + 256;
      r0.z = 1 + -r22.x;
      r4.x = sunConstants.globalProbeExposure * r0.z;
      r14.xyz = -globalProbeConstants.data[0].xyz + v6.xyz;
      r15.x = globalProbeConstants.data[0].w * r14.x;
      r15.yz = globalProbeConstants.data[1].xy * r14.yz;
      r14.xyz = saturate(float3(0.5,0.5,0.5) + r15.xyz);
      r15.xy = globalProbeConstants.data[1].zw * r14.xy;
      r15.z = globalProbeConstants.data[2].x * r14.z;
      r14.xyz = globalProbeConstants.data[2].yzw + r15.xyz;
      r15.xyz = cmp(float3(0,0,0) < r1.xyz);
      r15.xyz = r15.xyz ? float3(0,0,0) : float3(0.5,0.5,0.5);
      r15.w = 0;
      r16.xyz = r15.wwx + r14.xyz;
      r16.xyz = gProbeXArray.SampleLevel(samplerLinearClamp_s, r16.xyz, 0).xyz;
      r17.xyz = r1.xyz * r1.xyz;
      r17.xyz = r17.xyz * r4.xxx;
      r18.xyz = r15.wwy + r14.xyz;
      r18.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r18.xyz, 0).xyz;
      r18.xyz = r18.xyz * r17.yyy;
      r16.xyz = r16.xyz * r17.xxx + r18.xyz;
      r14.xyz = r15.wwz + r14.xyz;
      r14.xyz = gProbeZArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
      r14.xyz = r14.xyz * r17.zzz + r16.xyz;
      r1.w = 0;
      r15.xyz = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
      r14.xyz = r15.xyz * r14.xyz;
      r1.w = dot(r14.xyz, float3(0.212599993,0.715200007,0.0722000003));
      r20.xyz = r11.yzw * r0.yyy + r14.xyz;
      r12.w = 0;
      r7.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r12.xyzw, r7.y).xyz;
      r0.y = sunConstants.globalProbeExposure * r0.z + -r1.w;
      r0.y = normalAdjustAndGloss.z * r0.y + r1.w;
      r21.xyz = r7.yzw * r0.yyy + r21.xyz;
    }
  } else {
    r21.x = r20.w;
  }
  if (useSSR != 0) {
    r0.y = dot(r2.yzw, r1.xyz);
    r0.y = r0.y + r0.y;
    r7.yzw = r1.xyz * -r0.yyy + r2.yzw;
    r0.y = dot(r2.yzw, -r1.xyz);
    r0.y = r0.y + r0.y;
    r11.yzw = r1.xyz * r0.yyy + r2.yzw;
    r7.yzw = v7.xxx ? r7.yzw : r11.yzw;
    if (useLoopedSSR != 0) {
      r11.yzw = viewMatrix._m10_m11_m12 * v6.yyy;
      r11.yzw = v6.xxx * viewMatrix._m00_m01_m02 + r11.yzw;
      r11.yzw = v6.zzz * viewMatrix._m20_m21_m22 + r11.yzw;
      r12.xyz = ssrParams.zzz * r7.yzw;
      r14.xyz = viewMatrix._m10_m11_m12 * r12.yyy;
      r12.xyw = r12.xxx * viewMatrix._m00_m01_m02 + r14.xyz;
      r12.xyz = r12.zzz * viewMatrix._m20_m21_m22 + r12.xyw;
      r0.y = min(1000, ssrParams.x);
      r11.yzw = r12.xyz * float3(10,10,10) + r11.yzw;
      r0.y = r0.y / ssrParams.z;
      r14.xyz = r21.xyz;
      r15.xyz = r11.yzw;
      r0.z = 0;
      while (true) {
        r1.w = (int)r0.z;
        r1.w = cmp(r1.w >= r0.y);
        if (r1.w != 0) break;
        r15.xyz = r15.xyz + r12.xyz;
        r16.xyz = projectionMatrix._m10_m11_m13 * r15.yyy;
        r16.xyz = r15.xxx * projectionMatrix._m00_m01_m03 + r16.xyz;
        r16.xyz = r15.zzz * projectionMatrix._m20_m21_m23 + r16.xyz;
        r16.xyz = projectionMatrix._m30_m31_m33 + r16.xyz;
        r1.w = max(abs(r16.x), abs(r16.y));
        r1.w = cmp(r16.z < r1.w);
        if (r1.w != 0) {
          break;
        }
        r4.xy = r16.xy / r16.zz;
        r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r1.w = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r4.xy, 1).x;
        r4.x = cmp(abs(r1.w) < r15.z);
        r4.y = cmp(abs(r1.w) >= v0.w);
        r4.x = r4.y ? r4.x : 0;
        if (r4.x != 0) {
          r1.w = r15.z + -abs(r1.w);
          r1.w = ssrParams.w * r1.w;
          r16.xyz = -r1.www * r12.xyz + r15.xyz;
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
        r0.z = (int)r0.z + 1;
      }
      r21.xyz = r14.xyz;
    } else {
      r0.y = ssrParams.y * r3.y;
      r7.yzw = r7.yzw * r0.yyy + v6.xyz;
      r11.yzw = viewProjectionMatrix._m10_m11_m13 * r7.zzz;
      r11.yzw = r7.yyy * viewProjectionMatrix._m00_m01_m03 + r11.yzw;
      r7.yzw = r7.www * viewProjectionMatrix._m20_m21_m23 + r11.yzw;
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
        r21.xyz = relHDRExposure.xxx * r7.yzw;
      }
    }
  }
  r0.y = dot(r1.xyz, sunConstants.wldDir.xyz);
  r0.z = saturate(r0.y);
  r1.w = useSpecularZFeather ? abs(r0.y) : r0.z;
  r1.w = cmp(0 >= r1.w);
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
      r6.w = 0;
      while (true) {
        r9.z = cmp(r4.y >= 3);
        if (r9.z != 0) break;
        r9.z = (uint)r4.y;
        r11.yz = -sunConstants.splitPinTransform[r9.z].xy + r7.yz;
        r9.w = max(abs(r11.y), abs(r11.z));
        r6.w = sunConstants.splitPinTransform[r9.z].z * r9.w;
        r9.z = cmp(r6.w < 1);
        if (r9.z != 0) {
          break;
        }
        r4.y = 1 + r4.y;
        r6.w = 0;
      }
    } else {
      r4.y = 3;
      r6.w = 0;
    }
    r9.z = cmp(r4.y >= 3);
    if (r9.z != 0) {
      r11.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r12.xz = rcp(r11.yy);
      r12.y = -r12.z;
      r11.yzw = r7.yzy * r12.xyz + r11.zwz;
      r12.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r11.yzw = max(float3(0,0,0), r11.yzw);
      r11.yzw = min(r11.yzw, r12.xyz);
      r12.xy = sunConstants.sstLightingConstants.coordScale * r11.wz;
      r12.xy = floor(r12.xy);
      r9.w = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r12.y;
      r9.w = r9.w * sunConstants.sstLightingConstants.coordScale + r12.x;
      r9.w = (uint)r9.w;
      r9.w = (int)r9.w + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r9.w, l(0), t23.xxxx
    r10.w = samp0[]..swiz;
      r12.x = (int)r10.w & 0x40000000;
      r12.y = (uint)r10.w << 2;
      if (r12.x == 0) {
        r12.x = (int)r10.w & 0x01ffffff;
        r14.x = (int)r9.w + (int)r12.x;
        r9.w = (uint)r10.w >> 25;
        r9.w = (uint)r9.w;
        r11.yzw = r11.yzw * r9.www;
        r11.yzw = frac(r11.yzw);
        r11.yzw = float3(128,128,128) * r11.yzw;
        r11.yzw = (uint3)r11.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
      r14.z = samp0[]..swiz;
        r12.xz = (uint2)r11.wz >> int2(6,6);
        r9.w = (int)r14.z & 0xc0000000;
        r10.w = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r10.w, r10.w, l(0), t23.xxxx
      r10.w = samp0[]..swiz;
        r10.w = r12.z ? r14.z : r10.w;
        r12.z = (uint)r10.w >> 13;
        r10.w = r12.x ? r12.z : r10.w;
        r10.w = (int)r10.w & 8191;
        r15.x = (int)r10.w + (int)r14.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.y = 0;
        r15.y = 1;
        r12.xzw = r9.www ? r14.xyz : r15.xyz;
        r15.yz = r9.ww ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r16.xy = (uint2)r11.wz >> (uint2)r15.yy;
        r16.xy = (int2)r16.xy & int2(1,1);
        r10.w = (int)r12.w & 0xc0000000;
        r13.w = (int)r12.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
      r13.w = samp0[]..swiz;
        r13.w = r16.y ? r12.w : r13.w;
        r14.w = (uint)r13.w >> 13;
        r13.w = r16.x ? r14.w : r13.w;
        r13.w = (int)r13.w & 8191;
        r15.x = (int)r12.x + (int)r13.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.x, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r12.xzw = r10.www ? r12.xzw : r15.xzw;
        r12.xzw = r9.www ? r14.xyz : r12.xzw;
        r9.w = (int)r12.w & 0xc0000000;
        if (r9.w == 0) {
          r9.w = (int)-r12.z + 6;
          r14.xy = (uint2)r11.wz >> (uint2)r9.ww;
          r9.w = (int)r12.w | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r10.w = (((uint)r14.y << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r10.w = (((uint)r14.x << 0) & bitmask.w) | ((uint)r10.w & ~bitmask.w);
          r10.w = (int)r10.w * 10;
          r9.w = (uint)r9.w >> (uint)r10.w;
          r9.w = (int)r9.w & 1023;
          r14.x = (int)r9.w + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r14.yz = (int2)r12.zz + int2(1,2);
          r9.w = (int)-r14.y + 6;
          r15.xy = (uint2)r11.wz >> (uint2)r9.ww;
          r9.w = (int)r14.w & 0xc0000000;
          r10.w = (int)r14.w | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r12.z = (((uint)r15.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.z = ((~(-1 << 1)) << 0) & 0xffffffff;  r12.z = (((uint)r15.x << 0) & bitmask.z) | ((uint)r12.z & ~bitmask.z);
          r12.z = (int)r12.z * 10;
          r10.w = (uint)r10.w >> (uint)r12.z;
          r10.w = (int)r10.w & 1023;
          r15.x = (int)r10.w + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r14.z;
          r15.xyz = r9.www ? r14.xyw : r15.xyz;
          r10.w = (int)-r15.y + 6;
          r14.yz = (uint2)r11.wz >> (uint2)r10.ww;
          r10.w = (int)r15.z & 0xc0000000;
          r12.z = (int)r15.z | 0x40000000;
          bitmask.w = ((~(-1 << 1)) << 1) & 0xffffffff;  r13.w = (((uint)r14.z << 1) & bitmask.w) | ((uint)0 & ~bitmask.w);
          bitmask.w = ((~(-1 << 1)) << 0) & 0xffffffff;  r13.w = (((uint)r14.y << 0) & bitmask.w) | ((uint)r13.w & ~bitmask.w);
          r13.w = (int)r13.w * 10;
          r12.z = (uint)r12.z >> (uint)r13.w;
          r12.z = (int)r12.z & 1023;
          r16.x = (int)r12.z + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r14.yz = r10.ww ? r15.xz : r16.xy;
          r12.xw = r9.ww ? r14.xw : r14.yz;
        }
        r9.w = (int)r12.w & 0xc0000000;
        if (r9.w == 0) {
          if (14 == 0) r10.w = 0; else if (14+15 < 32) {           r10.w = (uint)r12.w << (32-(14 + 15)); r10.w = (uint)r10.w >> (32-14);          } else r10.w = (uint)r12.w >> 15;
          r10.w = (uint)r10.w;
          r10.w = sunConstants.sstLightingConstants.constants.spanInInches * r10.w;
          r10.w = 6.10388815e-05 * r10.w;
          r14.xy = (int2)r12.ww & int2(32767,536870912);
          r12.z = (uint)r14.x;
          r12.z = sunConstants.sstLightingConstants.constants.spanInInches * r12.z;
          r12.z = 3.05185094e-05 * r12.z;
          r13.w = (int)r11.z & 3;
          r13.w = (int)r12.x + (int)r13.w;
          r13.w = (int)r13.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.w, r13.w, l(0), t23.xxxx
        r13.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r14.x = (((uint)r11.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.z = ((~(-1 << 2)) << 1) & 0xffffffff;  r14.z = (((uint)r11.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.w = ((~(-1 << 1)) << 4) & 0xffffffff;  r14.w = (((uint)r11.w << 4) & bitmask.w) | ((uint)0 & ~bitmask.w);
          r11.y = (uint)r13.w >> (uint)r14.x;
          r11.y = (int)r11.y & 255;
          r11.y = (uint)r11.y;
          r11.y = r11.y * r12.z;
          r11.y = r11.y * 0.00392156886 + r10.w;
          r11.z = (int)r14.z + 1;
          if (1 == 0) r11.w = 0; else if (1+1 < 32) {           r11.w = (uint)r11.w << (32-(1 + 1)); r11.w = (uint)r11.w >> (32-1);          } else r11.w = (uint)r11.w >> 1;
          r11.z = (int)r11.w + (int)r11.z;
          r11.z = (int)r11.z + (int)r12.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.z, r11.z, l(0), t23.xxxx
        r11.z = samp0[]..swiz;
          r11.z = (uint)r11.z >> (uint)r14.w;
          r11.z = (int)r11.z & 0x0000ffff;
          r11.z = (uint)r11.z;
          r11.z = r11.z * r12.z;
          r10.w = r11.z * 1.52590219e-05 + r10.w;
          r12.y = r14.y ? r11.y : r10.w;
        } else {
          r10.w = (int)r12.w & 0x80000000;
          r11.y = (int)r12.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r11.y, r11.y, l(0), t23.xxxx
        r11.y = samp0[]..swiz;
          r10.w = r10.w ? r11.y : 0;
          r11.y = (uint)r12.w << 2;
          r11.z = (uint)r10.w >> 16;
          r11.z = f16tof32(r11.z);
          r10.w = (int)r10.w & 0x0000ffff;
          r10.w = f16tof32(r10.w);
          r11.y = r7.y * r11.z + r11.y;
          r10.w = r7.z * r10.w + r11.y;
          r12.y = r9.w ? r10.w : r12.y;
        }
      }
      r7.w = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r7.w;
      r7.w = cmp(r12.y < r7.w);
      r4.x = r7.w ? 0 : 1;
    }
    if (r9.z == 0) {
      if (enableDitheredShadow == 0) {
        r7.w = (uint)r4.y;
        r9.zw = -sunConstants.splitPinTransform[r7.w].xy + r7.yz;
        r9.zw = sunConstants.splitPinTransform[r7.w].zz * r9.zw;
        r12.xy = r9.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.w = (int16)sunConstants.splitArrayOffset;
        r12.z = r7.w + r4.y;
        r7.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r1.w).x;
        r9.z = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
        r7.w = r9.z + r7.w;
        r7.w = saturate(-1 + r7.w);
        r9.z = r7.w * r7.w;
        r4.x = r9.z * r7.w;
      }
      if (enableDitheredShadow != 0) {
        r12.x = -r9.x;
        r7.w = (uint)r4.y;
        r4.y = 1 + r4.y;
        r4.y = min(2, r4.y);
        r4.y = (uint)r4.y;
        r6.w = 1 + -r6.w;
        r6.w = 28 * r6.w;
        r6.w = (uint)r6.w;
        r9.zw = -sunConstants.splitPinTransform[r7.w].xy + r7.yz;
        r9.zw = sunConstants.splitPinTransform[r7.w].zz * r9.zw;
        r9.zw = r9.zw * float2(0.5,-0.5) + float2(0.5,0.5);
        r7.yz = -sunConstants.splitPinTransform[r4.y].xy + r7.yz;
        r7.yz = sunConstants.splitPinTransform[r4.y].zz * r7.yz;
        r7.yz = r7.yz * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.y = r10.x;
        r12.z = r9.x;
        r10.w = 0;
        r11.y = 0;
        while (true) {
          r11.z = cmp((uint)r11.y >= 8);
          if (r11.z != 0) break;
          r11.z = cmp((uint)r6.w < (uint)r11.y);
          r14.xy = r11.zz ? r7.yz : r9.zw;
          r11.w = r11.z ? sunConstants.splitPinTransform[r4.y].w : sunConstants.splitPinTransform[r7.w].w;
          r11.z = r11.z ? r4.y : r7.w;
          r15.x = dot(icb[r11.y+0].yx, r12.xy);
          r15.y = dot(icb[r11.y+0].yx, r12.yz);
          r14.xy = r15.xy * r11.ww + r14.xy;
          r11.z = (int)r11.z + (int16)sunConstants.splitArrayOffset;
          r14.z = (uint)r11.z;
          r11.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r1.w).x;
          r11.w = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
          r11.z = r11.z + r11.w;
          r11.z = saturate(-1 + r11.z);
          r10.w = r11.z * 0.125 + r10.w;
          r11.y = (int)r11.y + 1;
        }
        r1.w = r10.w * r10.w;
        r4.x = r1.w * r10.w;
      }
    }
  }
  r1.w = viewmodelSunShadowRaw & 0x0000ffff;
  r4.y = cmp(0 < (uint)r1.w);
  r6.w = cmp(0 < r4.x);
  r4.y = r4.y ? r6.w : 0;
  if (r4.y != 0) {
    r1.w = (int)r1.w + numLights;
    r1.w = (int)r1.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r4.y, r1.w, l(52), t12.xxxx
  r4.y = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xyzw, r1.w, l(68), t12.xyzw
  r12.x = samp0[]..swiz;
  r12.y = samp0[]..swiz;
  r12.z = samp0[]..swiz;
  r12.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r14.xyzw, r1.w, l(84), t12.xyzw
  r14.x = samp0[]..swiz;
  r14.y = samp0[]..swiz;
  r14.z = samp0[]..swiz;
  r14.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r15.xyzw, r1.w, l(100), t12.xyzw
  r15.x = samp0[]..swiz;
  r15.y = samp0[]..swiz;
  r15.z = samp0[]..swiz;
  r15.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r16.xyzw, r1.w, l(116), t12.xyzw
  r16.x = samp0[]..swiz;
  r16.y = samp0[]..swiz;
  r16.z = samp0[]..swiz;
  r16.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.xyzw, r1.w, l(132), t12.xyzw
  r17.x = samp0[]..swiz;
  r17.y = samp0[]..swiz;
  r17.z = samp0[]..swiz;
  r17.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.xyzw, r1.w, l(148), t12.xyzw
  r18.x = samp0[]..swiz;
  r18.y = samp0[]..swiz;
  r18.z = samp0[]..swiz;
  r18.w = samp0[]..swiz;
    r6.w = abs(r0.y) * -0.200000003 + 0.400000006;
    r0.y = cmp(r0.y < 0);
    r0.y = r0.y ? r5.y : 0;
    r0.y = r0.y ? -r6.w : r6.w;
    r19.xyz = r1.xyz * r0.yyy + v6.xyz;
    r19.w = 1;
    r12.x = dot(r12.xyzw, r19.xyzw);
    r12.y = dot(r14.xyzw, r19.xyzw);
    r0.y = dot(r15.xyzw, r19.xyzw);
    r6.w = dot(r16.xyzw, r19.xyzw);
    r7.y = cmp(r6.w < r0.y);
    r7.zw = r12.xy / r6.ww;
    r7.zw = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r7.zw = r7.zw + r18.zw;
    r7.zw = r7.zw * r18.xy;
    r9.zw = r4.yy / r17.xz;
    r11.yz = float2(1,1) + -r9.zw;
    r11.yz = cmp(r7.zw >= r11.yz);
    r9.zw = cmp(r9.zw >= r7.zw);
    r9.zw = (int2)r9.zw | (int2)r11.yz;
    r9.z = (int)r9.w | (int)r9.z;
    r7.y = (int)r7.y | (int)r9.z;
    if (r7.y == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r7.y, r1.w, l(28), t12.xxxx
    r7.y = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r9.zw, r1.w, l(164), t12.xxxy
    r9.z = samp0[]..swiz;
    r9.w = samp0[]..swiz;
      r7.zw = saturate(r7.zw);
      r12.xy = r7.zw * r17.xz + r17.yw;
      r1.w = r9.w * r6.w;
      r0.y = r9.z * r6.w + r0.y;
      r0.y = r0.y / r1.w;
      r0.y = max(6.10351563e-05, r0.y);
      r1.w = r7.y ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r14.x = -r9.x;
        r15.z = (uint)r1.w;
        r14.y = r10.x;
        r14.z = r9.x;
        r6.w = 0;
        r7.y = 0;
        while (true) {
          r7.z = cmp((int)r7.y >= 8);
          if (r7.z != 0) break;
          r16.x = dot(icb[r7.y+0].yx, r14.xy);
          r16.y = dot(icb[r7.y+0].yx, r14.yz);
          r15.xy = r16.xy * r4.yy + r12.xy;
          r7.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r15.xyz, r0.y).x;
          r6.w = r7.z * 0.125 + r6.w;
          r7.y = (int)r7.y + 1;
        }
      } else {
        r12.z = (uint)r1.w;
        r6.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r0.y).x;
      }
      r0.y = r6.w * r6.w;
      r0.y = r0.y * r6.w;
    } else {
      r0.y = 1;
    }
    r4.x = r4.x * r0.y;
  }
  r0.y = cmp(0 < r0.z);
  r1.w = cmp(0 < r4.x);
  if (r1.w != 0) {
    if (sunConstants.sunCookieIndex != 0) {
      r12.xyz = eyeOffset.xyz + v6.xyz;
      r12.w = 1;
      r1.w = dot(sunConstants.sunCookieTransform[0].xyzw, r12.xyzw);
      r4.y = dot(sunConstants.sunCookieTransform[1].xyzw, r12.xyzw);
      r12.x = frac(r1.w);
      r12.y = frac(r4.y);
      r1.w = -1 + (int14)sunConstants.sunCookieIndex;
      r12.z = (uint)r1.w;
      r7.yzw = gCookieArray.SampleLevel(samplerLinear_s, r12.xyz, 0).xyz;
      r7.yzw = float3(-1,-1,-1) + r7.yzw;
      r7.yzw = sunConstants.sunCookieIntensity * r7.yzw + float3(1,1,1);
      r7.yzw = sunConstants.color.xyz * r7.yzw;
    } else {
      r7.yzw = sunConstants.color.xyz;
    }
    r7.yzw = r7.yzw * r4.xxx;
    r1.w = r5.w + r0.z;
    r1.w = r0.z / r1.w;
    r11.yzw = r7.yzw * r1.www + r20.xyz;
    r12.xyz = -v6.xyz * r5.zzz + sunConstants.wldDir.xyz;
    r1.w = dot(r12.xyz, r12.xyz);
    r1.w = rsqrt(r1.w);
    r12.xyz = r12.xyz * r1.www;
    r1.w = saturate(dot(r1.xyz, r12.xyz));
    r4.x = saturate(dot(r12.xyz, r6.xyz));
    r4.y = r1.w * r1.w;
    r9.zw = r4.yy * specularLobeRoughnessControl.xz + float2(1,1);
    r9.zw = r9.zw * r9.zw;
    r9.zw = specularLobeRoughnessControl.yw / r9.zw;
    r9.zw = r9.zw * r1.ww;
    r1.w = 4 * r4.x;
    r4.xy = r9.zw / r1.ww;
    r4.xy = lobeWeightingThicknessRefraction.xy * r4.xy;
    r12.xyz = r7.yzw * r4.xxx;
    r12.xyz = r12.xyz * r0.zzz + r21.xyz;
    r7.yzw = r7.yzw * r4.yyy;
    r7.yzw = r7.yzw * r0.zzz + r12.xyz;
    r4.xy = float2(1,1);
  } else {
    r11.yzw = r20.xyz;
    r7.yzw = r21.xyz;
    r4.xy = float2(0,0);
  }
  r11.yzw = r0.yyy ? r11.yzw : r20.xyz;
  r7.yzw = r0.yyy ? r7.yzw : r21.xyz;
  r0.yz = r0.yy ? r4.xy : 0;
  r12.x = -r9.x;
  r14.xy = float2(0,0);
  r15.w = 0;
  r16.xyz = v6.xyz;
  r16.w = 1;
  r17.w = 1;
  r12.z = r9.x;
  r18.z = 1;
  r19.w = 1;
  r12.yw = r10.xx;
  r9.y = r12.w;
  r20.w = 1;
  r10.y = r12.x;
  r10.z = r9.x;
  r21.x = r10.x;
  r21.y = r12.x;
  r21.z = r9.x;
  r22.y = 1;
  r22.xz = r0.zy;
  r23.xyz = r11.yzw;
  r24.xyz = r7.yzw;
  r1.w = enableDitheredShadow;
  r4.x = 0;
  while (true) {
    r4.y = cmp((uint)r4.x >= numLights);
    if (r4.y != 0) break;
    r14.z = (uint)r4.x >> 5;
    r15.xyz = (int3)r13.xyz + (int3)r14.xyz;
    r4.y = visibleLights.Load(r15.xyzw).x;
    r15.xyz = r23.xyz;
    r25.xyz = r24.xyz;
    r5.z = r1.w;
    r6.w = r22.y;
    r9.zw = r22.zx;
    r10.w = r4.y;
    while (true) {
      if (r10.w == 0) break;
      r13.w = firstbitlow((uint)r10.w);
      r14.z = 1 << (int)r13.w;
      r14.w = (int)r10.w & (int)r14.z;
      if (r14.w != 0) {
        r10.w = (int)r10.w ^ (int)r14.z;
        r13.w = (int)r4.x + (int)r13.w;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xyzw, r13.w, l(0), t12.xyzw
      r26.x = samp0[]..swiz;
      r26.y = samp0[]..swiz;
      r26.z = samp0[]..swiz;
      r26.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xy, r13.w, l(16), t12.xyxx
      r27.x = samp0[]..swiz;
      r27.y = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r13.w, l(28), t12.xyzw
      r28.x = samp0[]..swiz;
      r28.y = samp0[]..swiz;
      r28.z = samp0[]..swiz;
      r28.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r13.w, l(44), t12.xyzw
      r29.x = samp0[]..swiz;
      r29.y = samp0[]..swiz;
      r29.z = samp0[]..swiz;
      r29.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r13.w, l(60), t12.zwxy
      r30.x = samp0[]..swiz;
      r30.y = samp0[]..swiz;
      r30.z = samp0[]..swiz;
      r30.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r13.w, l(76), t12.xyzw
      r31.x = samp0[]..swiz;
      r31.y = samp0[]..swiz;
      r31.z = samp0[]..swiz;
      r31.w = samp0[]..swiz;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r13.w, l(92), t12.zwxy
      r32.x = samp0[]..swiz;
      r32.y = samp0[]..swiz;
      r32.z = samp0[]..swiz;
      r32.w = samp0[]..swiz;
        if (3 == 0) r14.z = 0; else if (3+24 < 32) {         r14.z = (uint)r28.x << (32-(3 + 24)); r14.z = (uint)r14.z >> (32-3);        } else r14.z = (uint)r28.x >> 24;
        switch (r14.z) {
          case 4 :          r14.z = cmp(0 < r32.x);
          r33.x = r31.w;
          r33.yz = r32.zw;
          r34.xyz = -r33.xyz * float3(0.5,0.5,0.5) + r26.xyz;
          r35.xyz = -v6.xyz + r34.xyz;
          r14.w = dot(r33.xyz, r35.xyz);
          r14.w = saturate(-r14.w / r32.x);
          r33.xyz = r14.www * r33.xyz + r34.xyz;
          r33.xyz = r14.zzz ? r33.xyz : r26.xyz;
          r33.xyz = -v6.xyz + r33.xyz;
          r14.z = dot(r33.xyz, r33.xyz);
          r14.w = rsqrt(r14.z);
          r34.xyz = r33.xyz * r14.www;
          r18.w = dot(r1.xyz, r34.xyz);
          r21.w = saturate(r18.w);
          r21.w = useSpecularZFeather ? abs(r18.w) : r21.w;
          r23.w = cmp(0 < r21.w);
          if (r23.w != 0) {
            r23.w = sqrt(r14.z);
            r24.w = r29.y * r29.y;
            r14.z = r24.w / r14.z;
            r14.z = min(1, r14.z);
            r24.w = saturate(r23.w * r28.y + r28.z);
            r23.w = saturate(r23.w * r28.w + r29.x);
            r25.w = r24.w * r24.w;
            r24.w = r24.w * -2 + 3;
            r24.w = r25.w * r24.w;
            r14.z = r24.w * r14.z;
            r24.w = r23.w * r23.w;
            r23.w = r23.w * -2 + 3;
            r23.w = r24.w * r23.w;
            r14.z = r23.w * r14.z;
            r23.w = cmp(0 < r14.z);
            if (r23.w != 0) {
              r9.z = (int)r9.z + 1;
              if (3 == 0) r34.x = 0; else if (3+27 < 32) {               r34.x = (uint)r28.x << (32-(3 + 27)); r34.x = (uint)r34.x >> (32-3);              } else r34.x = (uint)r28.x >> 27;
              if (4 == 0) r34.y = 0; else if (4+20 < 32) {               r34.y = (uint)r28.x << (32-(4 + 20)); r34.y = (uint)r34.y >> (32-4);              } else r34.y = (uint)r28.x >> 20;
              r23.w = cmp((int)r34.x != 1);
              if (r23.w != 0) {
                r23.w = abs(r18.w) * -0.200000003 + 0.400000006;
                r24.w = cmp(r18.w < 0);
                r24.w = r5.y ? r24.w : 0;
                r23.w = r24.w ? -r23.w : r23.w;
                r34.xzw = r1.xyz * r23.www + v6.xyz;
                r30.z = r31.x;
                r34.xzw = r34.xzw + -r30.xyz;
                r23.w = max(abs(r34.z), abs(r34.w));
                r23.w = max(abs(r34.x), r23.w);
                r23.w = r31.y / r23.w;
                r23.w = r23.w + r31.z;
                r24.w = dot(r34.xzw, r34.xzw);
                r24.w = rsqrt(r24.w);
                r23.w = max(6.10351563e-05, r23.w);
                r25.w = (int)r28.x & 0x0000ffff;
                r35.w = (uint)r25.w;
                r25.w = 0;
                r33.w = 0;
                while (true) {
                  r36.x = cmp((int)r33.w >= 8);
                  if (r36.x != 0) break;
                  r36.y = dot(icb[r33.w+0].yx, r12.xy);
                  r36.z = dot(icb[r33.w+0].yx, r12.yz);
                  r36.yz = r36.yz * r29.zz;
                  r36.x = r36.y * r11.x;
                  r36.w = r36.y * r7.x;
                  r35.xyz = r34.xzw * r24.www + r36.xzw;
                  r35.x = gOmniShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyzw, r23.w).x;
                  r25.w = r35.x * 0.125 + r25.w;
                  r33.w = (int)r33.w + 1;
                }
              } else {
                r25.w = 1;
              }
              r14.z = r25.w * r14.z;
              if (r34.y != 0) {
                r23.w = (int)r34.y + numLights;
                r23.w = (int)r23.w + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r24.w, r23.w, l(52), t12.xxxx
              r24.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r23.w, l(100), t12.xyzw
              r34.x = samp0[]..swiz;
              r34.y = samp0[]..swiz;
              r34.z = samp0[]..swiz;
              r34.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r23.w, l(116), t12.xyzw
              r35.x = samp0[]..swiz;
              r35.y = samp0[]..swiz;
              r35.z = samp0[]..swiz;
              r35.w = samp0[]..swiz;
                r33.w = abs(r18.w) * -0.200000003 + 0.400000006;
                r18.w = cmp(r18.w < 0);
                r18.w = r5.y ? r18.w : 0;
                r18.w = r18.w ? -r33.w : r33.w;
                r17.xyz = r1.xyz * r18.www + v6.xyz;
                r18.w = dot(r34.xyzw, r17.xyzw);
                r33.w = dot(r35.xyzw, r17.xyzw);
                r34.x = cmp(r33.w < r18.w);
                if (r34.x == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r23.w, l(68), t12.xyzw
                r35.x = samp0[]..swiz;
                r35.y = samp0[]..swiz;
                r35.z = samp0[]..swiz;
                r35.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r36.xyzw, r23.w, l(84), t12.xyzw
                r36.x = samp0[]..swiz;
                r36.y = samp0[]..swiz;
                r36.z = samp0[]..swiz;
                r36.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r37.xyzw, r23.w, l(132), t12.xyzw
                r37.x = samp0[]..swiz;
                r37.y = samp0[]..swiz;
                r37.z = samp0[]..swiz;
                r37.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r23.w, l(148), t12.xyzw
                r38.x = samp0[]..swiz;
                r38.y = samp0[]..swiz;
                r38.z = samp0[]..swiz;
                r38.w = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.yz, r23.w, l(164), t12.xxyx
                r34.y = samp0[]..swiz;
                r34.z = samp0[]..swiz;
                  r35.x = dot(r35.xyzw, r17.xyzw);
                  r35.y = dot(r36.xyzw, r17.xyzw);
                  r17.xy = r35.xy / r33.ww;
                  r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                  r17.xy = r17.xy + r38.zw;
                  r17.xy = r17.xy * r38.xy;
                  r35.xy = r24.ww / r37.xz;
                  r35.zw = float2(1,1) + -r35.xy;
                  r35.zw = cmp(r17.xy >= r35.zw);
                  r35.xy = cmp(r35.xy >= r17.xy);
                  r35.xy = (int2)r35.xy | (int2)r35.zw;
                  r17.z = (int)r35.y | (int)r35.x;
                  r17.xy = saturate(r17.xy);
                  r35.xy = r17.xy * r37.xz + r37.yw;
                  r17.x = r34.z * r33.w;
                  r17.y = r34.y * r33.w + r18.w;
                  r17.x = r17.y / r17.x;
                } else {
                  r17.z = -1;
                }
                r17.y = (int)r34.x | (int)r17.z;
                if (r17.y == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r17.y, r23.w, l(28), t12.xxxx
                r17.y = samp0[]..swiz;
                  r17.x = max(6.10351563e-05, r17.x);
                  r17.y = (int)r17.y & 0x0000ffff;
                  if (r5.z != 0) {
                    r34.z = (uint)r17.y;
                    r17.z = 0;
                    r18.w = 0;
                    while (true) {
                      r23.w = cmp((int)r18.w >= 8);
                      if (r23.w != 0) break;
                      r36.x = dot(icb[r18.w+0].yx, r12.xw);
                      r36.y = dot(icb[r18.w+0].xy, r9.xy);
                      r34.xy = r36.xy * r24.ww + r35.xy;
                      r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r34.xyz, r17.x).x;
                      r17.z = r23.w * 0.125 + r17.z;
                      r18.w = (int)r18.w + 1;
                    }
                  } else {
                    r35.z = (uint)r17.y;
                    r17.z = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r35.xyz, r17.x).x;
                  }
                  r17.x = r17.z * r17.z;
                  r17.x = r17.x * r17.z;
                } else {
                  r17.x = 1;
                }
                r14.z = r17.x * r14.z;
              }
              r17.x = cmp(0 < r14.z);
              if (r17.x != 0) {
                r9.w = (int)r9.w + 1;
                r27.z = r26.w;
                r34.xyz = r14.zzz * r27.zxy;
                r14.z = r21.w + r5.w;
                r14.z = r21.w / r14.z;
                r15.xyz = r34.xyz * r14.zzz + r15.xyz;
                r33.xyz = r33.xyz * r14.www + r6.xyz;
                r14.z = dot(r33.xyz, r33.xyz);
                r14.z = rsqrt(r14.z);
                r33.xyz = r33.xyz * r14.zzz;
                r14.z = saturate(dot(r1.xyz, r33.xyz));
                r14.w = saturate(dot(r33.xyz, r6.xyz));
                r17.x = r14.z * r14.z;
                r17.xy = r17.xx * specularLobeRoughnessControl.xz + float2(1,1);
                r17.xy = r17.xy * r17.xy;
                r17.xy = specularLobeRoughnessControl.yw / r17.xy;
                r17.xy = r17.xy * r14.zz;
                r14.z = 4 * r14.w;
                r14.zw = r17.xy / r14.zz;
                r14.zw = lobeWeightingThicknessRefraction.xy * r14.zw;
                r33.xyz = r34.xyz * r14.zzz;
                r33.xyz = r33.xyz * r21.www + r25.xyz;
                r34.xyz = r34.xyz * r14.www;
                r25.xyz = r34.xyz * r21.www + r33.xyz;
              }
            }
          }
          break;
          case 2 :          r33.x = r29.w;
          r33.yz = r30.zw;
          r33.xyz = -v6.xyz + r33.xyz;
          r14.z = dot(r33.xyz, r33.xyz);
          r14.z = rsqrt(r14.z);
          r34.xyz = r33.xyz * r14.zzz;
          r14.w = dot(r1.xyz, r34.xyz);
          r17.x = saturate(r14.w);
          r17.x = useSpecularZFeather ? abs(r14.w) : r17.x;
          r17.y = cmp(0 < r17.x);
          if (r17.y != 0) {
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r34.xyzw, r13.w, l(108), t12.zwxy
          r34.x = samp0[]..swiz;
          r34.y = samp0[]..swiz;
          r34.z = samp0[]..swiz;
          r34.w = samp0[]..swiz;
          // Known bad code for instruction (needs manual fix):
                    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xyzw, r13.w, l(124), t12.xyzw
          r35.x = samp0[]..swiz;
          r35.y = samp0[]..swiz;
          r35.z = samp0[]..swiz;
          r35.w = samp0[]..swiz;
            r36.xy = r34.xy;
            r36.zw = r35.xy;
            r17.y = dot(r36.xyzw, r16.xyzw);
            r18.w = cmp(r17.y < 1);
            if (r18.w != 0) {
              r37.xyz = float3(1,1,1);
              r18.w = 0;
            } else {
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r38.xyzw, r13.w, l(172), t12.yzwx
            r38.x = samp0[]..swiz;
            r38.y = samp0[]..swiz;
            r38.z = samp0[]..swiz;
            r38.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r39.xyzw, r13.w, l(188), t12.wxyz
            r39.x = samp0[]..swiz;
            r39.y = samp0[]..swiz;
            r39.z = samp0[]..swiz;
            r39.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r40.xyzw, r13.w, l(204), t12.xyzw
            r40.x = samp0[]..swiz;
            r40.y = samp0[]..swiz;
            r40.z = samp0[]..swiz;
            r40.w = samp0[]..swiz;
            // Known bad code for instruction (needs manual fix):
                        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r21.w, r13.w, l(236), t12.xxxx
            r21.w = samp0[]..swiz;
              r26.xyz = -v6.xyz + r26.xyz;
              r23.w = r29.y * r29.y;
              r24.w = dot(r26.xyz, r26.xyz);
              r23.w = r23.w / r24.w;
              r23.w = min(1, r23.w);
              r24.w = saturate(r17.y * r28.y + r28.z);
              r26.x = saturate(r17.y * r28.w + r29.x);
              r26.y = r24.w * r24.w;
              r24.w = r24.w * -2 + 3;
              r24.w = r26.y * r24.w;
              r23.w = r24.w * r23.w;
              r24.w = r26.x * r26.x;
              r26.x = r26.x * -2 + 3;
              r24.w = r26.x * r24.w;
              r23.w = r24.w * r23.w;
              r30.zw = r31.xy;
              r26.x = dot(r30.xyzw, r16.xyzw);
              r41.xy = r31.zw;
              r41.zw = r32.zw;
              r26.y = dot(r41.xyzw, r16.xyzw);
              r18.xy = r26.xy / r17.yy;
              r17.y = cmp(r38.w < 0.00048828125);
              if (r17.y != 0) {
                r39.y = r40.x;
                r26.xy = saturate(abs(r18.xy) * r39.zw + r39.xy);
                r28.yz = r26.xy * r26.xy;
                r26.xy = r26.xy * float2(-2,-2) + float2(3,3);
                r26.xy = r28.yz * r26.xy;
                r17.y = r26.x * r26.y;
              } else {
                r38.w = r39.y;
                r38.xyzw = saturate(r38.xyzw * abs(r18.yyxx));
                r38.xyzw = log2(r38.xyzw);
                r38.xyzw = r39.xxxx * r38.xyzw;
                r38.xyzw = exp2(r38.xyzw);
                r26.xy = r38.xy + r38.zw;
                r26.xy = log2(r26.xy);
                r26.xy = r40.xx * r26.xy;
                r26.xy = exp2(r26.xy);
                r24.w = r39.z * r26.x;
                r26.x = r39.w * r26.y + -1;
                r24.w = r39.w * r26.y + -r24.w;
                r24.w = saturate(r26.x / r24.w);
                r26.x = r24.w * r24.w;
                r24.w = r24.w * -2 + 3;
                r17.y = r26.x * r24.w;
              }
              r18.w = r23.w * r17.y;
              r17.y = (int)r21.w & 255;
              if (r17.y != 0) {
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r26.xyz, r13.w, l(220), t12.xyzx
              r26.x = samp0[]..swiz;
              r26.y = samp0[]..swiz;
              r26.z = samp0[]..swiz;
                r21.w = dot(r40.yzw, r18.xyz);
                r18.x = dot(r26.xyz, r18.xyz);
                r26.x = frac(r21.w);
                r26.y = frac(r18.x);
                r17.y = (int)r17.y + -1;
                r26.z = (uint)r17.y;
                r37.xyz = gCookieArray.SampleLevel(samplerLinear_s, r26.xyz, 0).xyz;
              } else {
                r37.xyz = float3(1,1,1);
              }
            }
            r27.w = r26.w;
            r26.xyz = r37.xyz * r27.wxy;
            r17.y = cmp(0 < r18.w);
            if (r17.y != 0) {
              r9.z = (int)r9.z + 1;
              if (3 == 0) r18.x = 0; else if (3+27 < 32) {               r18.x = (uint)r28.x << (32-(3 + 27)); r18.x = (uint)r18.x >> (32-3);              } else r18.x = (uint)r28.x >> 27;
              if (4 == 0) r18.y = 0; else if (4+20 < 32) {               r18.y = (uint)r28.x << (32-(4 + 20)); r18.y = (uint)r18.y >> (32-4);              } else r18.y = (uint)r28.x >> 20;
              r17.y = cmp((int)r18.x != 1);
              if (r17.y != 0) {
                r17.y = abs(r14.w) * -0.200000003 + 0.400000006;
                r18.x = cmp(r14.w < 0);
                r18.x = r5.y ? r18.x : 0;
                r17.y = r18.x ? -r17.y : r17.y;
                r19.xyz = r1.xyz * r17.yyy + v6.xyz;
                r34.xy = r32.xy;
                r17.y = dot(r34.xyzw, r19.xyzw);
                r18.x = dot(r36.xyzw, r19.xyzw);
                r21.w = cmp(r18.x >= r17.y);
                if (r21.w != 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r35.xy, r13.w, l(140), t12.xyxx
                r35.x = samp0[]..swiz;
                r35.y = samp0[]..swiz;
                  r30.zw = r31.xy;
                  r27.x = dot(r30.xyzw, r19.xyzw);
                  r32.xy = r31.zw;
                  r27.y = dot(r32.xyzw, r19.xyzw);
                  r19.xy = r27.xy / r18.xx;
                  r19.xy = saturate(r19.xy * float2(0.5,-0.5) + float2(0.5,0.5));
                  r19.xy = r19.xy * r35.zx + r35.wy;
                  r13.w = r17.y / r18.x;
                  r13.w = max(6.10351563e-05, r13.w);
                  r17.y = (int)r28.x & 0x0000ffff;
                  if (r5.z != 0) {
                    r27.z = (uint)r17.y;
                    r18.x = 0;
                    r21.w = 0;
                    while (true) {
                      r23.w = cmp((int)r21.w >= 8);
                      if (r23.w != 0) break;
                      r28.x = dot(icb[r21.w+0].xy, r10.xy);
                      r28.y = dot(icb[r21.w+0].yx, r10.xz);
                      r27.xy = r28.xy * r29.zz + r19.xy;
                      r23.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r13.w).x;
                      r18.x = r23.w * 0.125 + r18.x;
                      r21.w = (int)r21.w + 1;
                    }
                  } else {
                    r19.z = (uint)r17.y;
                    r18.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r13.w).x;
                  }
                  r13.w = r18.x * r18.x;
                  r13.w = r13.w * r18.x;
                } else {
                  r13.w = 1;
                }
              } else {
                r13.w = 1;
              }
              r13.w = r18.w * r13.w;
              if (r18.y != 0) {
                r17.y = (int)r18.y + numLights;
                r17.y = (int)r17.y + -1;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r18.y, r17.y, l(52), t12.xxxx
              r18.y = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r27.xyzw, r17.y, l(68), t12.xyzw
              r27.x = samp0[]..swiz;
              r27.y = samp0[]..swiz;
              r27.z = samp0[]..swiz;
              r27.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r28.xyzw, r17.y, l(84), t12.xyzw
              r28.x = samp0[]..swiz;
              r28.y = samp0[]..swiz;
              r28.z = samp0[]..swiz;
              r28.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r29.xyzw, r17.y, l(100), t12.xyzw
              r29.x = samp0[]..swiz;
              r29.y = samp0[]..swiz;
              r29.z = samp0[]..swiz;
              r29.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r30.xyzw, r17.y, l(116), t12.xyzw
              r30.x = samp0[]..swiz;
              r30.y = samp0[]..swiz;
              r30.z = samp0[]..swiz;
              r30.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r31.xyzw, r17.y, l(132), t12.xyzw
              r31.x = samp0[]..swiz;
              r31.y = samp0[]..swiz;
              r31.z = samp0[]..swiz;
              r31.w = samp0[]..swiz;
              // Known bad code for instruction (needs manual fix):
                            ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r32.xyzw, r17.y, l(148), t12.xyzw
              r32.x = samp0[]..swiz;
              r32.y = samp0[]..swiz;
              r32.z = samp0[]..swiz;
              r32.w = samp0[]..swiz;
                r18.w = abs(r14.w) * -0.200000003 + 0.400000006;
                r14.w = cmp(r14.w < 0);
                r14.w = r5.y ? r14.w : 0;
                r14.w = r14.w ? -r18.w : r18.w;
                r20.xyz = r1.xyz * r14.www + v6.xyz;
                r19.x = dot(r27.xyzw, r20.xyzw);
                r19.y = dot(r28.xyzw, r20.xyzw);
                r14.w = dot(r29.xyzw, r20.xyzw);
                r18.w = dot(r30.xyzw, r20.xyzw);
                r19.z = cmp(r18.w < r14.w);
                r19.xy = r19.xy / r18.ww;
                r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
                r19.xy = r19.xy + r32.zw;
                r19.xy = r19.xy * r32.xy;
                r20.xy = r18.yy / r31.xz;
                r27.xy = float2(1,1) + -r20.xy;
                r27.xy = cmp(r19.xy >= r27.xy);
                r20.xy = cmp(r20.xy >= r19.xy);
                r20.xy = (int2)r20.xy | (int2)r27.xy;
                r20.x = (int)r20.y | (int)r20.x;
                r19.z = (int)r19.z | (int)r20.x;
                if (r19.z == 0) {
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r19.z, r17.y, l(28), t12.xxxx
                r19.z = samp0[]..swiz;
                // Known bad code for instruction (needs manual fix):
                                ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r20.xy, r17.y, l(164), t12.xyxx
                r20.x = samp0[]..swiz;
                r20.y = samp0[]..swiz;
                  r19.xy = saturate(r19.xy);
                  r27.xy = r19.xy * r31.xz + r31.yw;
                  r17.y = r20.y * r18.w;
                  r14.w = r20.x * r18.w + r14.w;
                  r14.w = r14.w / r17.y;
                  r14.w = max(6.10351563e-05, r14.w);
                  r17.y = r19.z ? 0.000000 : 0;
                  if (r5.z != 0) {
                    r19.z = (uint)r17.y;
                    r18.w = 0;
                    r20.x = 0;
                    while (true) {
                      r20.y = cmp((int)r20.x >= 8);
                      if (r20.y != 0) break;
                      r28.x = dot(icb[r20.x+0].xy, r21.xy);
                      r28.y = dot(icb[r20.x+0].yx, r21.xz);
                      r19.xy = r28.xy * r18.yy + r27.xy;
                      r19.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r19.xyz, r14.w).x;
                      r18.w = r19.x * 0.125 + r18.w;
                      r20.x = (int)r20.x + 1;
                    }
                  } else {
                    r27.z = (uint)r17.y;
                    r18.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r27.xyz, r14.w).x;
                  }
                  r14.w = r18.w * r18.w;
                  r14.w = r14.w * r18.w;
                } else {
                  r14.w = 1;
                }
                r13.w = r14.w * r13.w;
              }
              r14.w = cmp(0 < r13.w);
              if (r14.w != 0) {
                r9.w = (int)r9.w + 1;
                r19.xyz = r13.www * r26.xyz;
                r13.w = r17.x + r5.w;
                r13.w = r17.x / r13.w;
                r15.xyz = r19.xyz * r13.www + r15.xyz;
                r20.xyz = r33.xyz * r14.zzz + r6.xyz;
                r13.w = dot(r20.xyz, r20.xyz);
                r13.w = rsqrt(r13.w);
                r20.xyz = r20.xyz * r13.www;
                r13.w = saturate(dot(r1.xyz, r20.xyz));
                r14.z = saturate(dot(r20.xyz, r6.xyz));
                r14.w = r13.w * r13.w;
                r20.xy = r14.ww * specularLobeRoughnessControl.xz + float2(1,1);
                r20.xy = r20.xy * r20.xy;
                r20.xy = specularLobeRoughnessControl.yw / r20.xy;
                r20.xy = r20.xy * r13.ww;
                r13.w = 4 * r14.z;
                r14.zw = r20.xy / r13.ww;
                r14.zw = lobeWeightingThicknessRefraction.xy * r14.zw;
                r20.xyz = r19.xyz * r14.zzz;
                r20.xyz = r20.xyz * r17.xxx + r25.xyz;
                r19.xyz = r19.xyz * r14.www;
                r25.xyz = r19.xyz * r17.xxx + r20.xyz;
              }
            }
          }
          break;
          default :
          break;
        }
        r6.w = (int)r6.w + 1;
      }
    }
    r23.xyz = r15.xyz;
    r24.xyz = r25.xyz;
    r22.y = r6.w;
    r22.xz = r9.wz;
    r4.x = (int)r4.x + 32;
  }
  r6.xyzw = colorMap.Sample(colorSampler_s, r4.zw).xyzw;
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
    r7.xy = (int2)v0.xy;
    r7.zw = float2(0,0);
    r1.xyz = iResolveScene.Load(r7.xyz).xyz;
  }
  r0.xyz = relHDRExposure.xxx * r1.xyz;
  r1.w = r3.y * 2 + 1;
  r1.w = log2(r1.w);
  r4.x = 0.0833333358 * r1.w;
  r4.y = 0;
  r7.xyzw = rColorRamp.Sample(bilinearClamp_s, r4.xy).xyzw;
  r4.xyw = r7.xyz * r0.xyz;
  r1.w = r7.w * r6.w;
  r5.yzw = r6.xyz * r23.xyz + -r4.xyw;
  r4.xyw = r1.www * r5.yzw + r4.xyw;
  r1.xyz = -r1.xyz * relHDRExposure.xxx + r4.xyw;
  r0.xyz = r5.xxx * r1.xyz + r0.xyz;
  r1.xyz = r3.xzw * r23.xyz + -r0.xyz;
  r0.xyz = r8.www * r1.xyz + r0.xyz;
  r1.xyz = r24.xyz * r0.www + r8.xyz;
  r0.w = 1 + -r4.z;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = r0.w * 0.980000019 + 0.0199999996;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  if (enableCountDebug != 0) {
    if (debugDrawOverlayType != 0) {
      switch (cb2[53].y) {
        case 1 :        r22.x = r22.y;
        break;
        case 2 :        r22.x = r22.z;
        break;
        case 3 :        break;
        case 4 :        r22.x = (int)r22.w & 255;
        break;
        case 5 :        if (8 == 0) r22.x = 0; else if (8+8 < 32) {         r22.x = (uint)r22.w << (32-(8 + 8)); r22.x = (uint)r22.x >> (32-8);        } else r22.x = (uint)r22.w >> 8;
        break;
        default :
        r22.x = 0;
        break;
      }
      r0.w = (uint)r22.x;
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