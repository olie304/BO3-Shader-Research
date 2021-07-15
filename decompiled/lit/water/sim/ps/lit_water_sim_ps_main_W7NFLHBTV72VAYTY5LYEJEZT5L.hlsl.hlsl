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
TextureCubeArray<float3> gReflectionProbeArray : register(t8);
Texture2DArray<float> gSpotShadowmapArray : register(t9);
StructuredBuffer<gCullConstants> gCullConstants : register(t11);
StructuredBuffer<lightConstants> lightConstants : register(t12);
Texture2DArray<float> gSunShadowmapArray : register(t13);
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
// unknown dcl_: dcl_resource_structured t23, 4
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t36, 128
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
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
  r4.xy = r2.zw * r2.xy;
  normalMap.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r4.zw = fDest.xy;
  r4.zw = r4.zw * r1.xy;
  r5.xy = ddx_coarse(r4.zw);
  r4.zw = ddy_coarse(r4.zw);
  r5.x = dot(r5.xy, r5.xy);
  r4.z = dot(r4.zw, r4.zw);
  r4.z = max(r5.x, r4.z);
  r4.z = log2(r4.z);
  r4.z = 0.5 * r4.z;
  r5.xy = floor(r1.zw);
  r5.xy = r5.xy / flowParams.xx;
  r5.xy = flowMap.Sample(flowSampler_s, r5.xy).xy;
  r5.xy = r5.xy + r5.xy;
  r6.xyzw = float4(1,0,0,1) + r1.zwzw;
  r6.xyzw = floor(r6.xyzw);
  r6.xyzw = r6.xyzw / flowParams.xxxx;
  r5.zw = flowMap.Sample(flowSampler_s, r6.xy).xy;
  r5.zw = r5.zw + r5.zw;
  r6.xy = flowMap.Sample(flowSampler_s, r6.zw).xy;
  r6.xy = r6.xy + r6.xy;
  r1.zw = float2(1,1) + r1.zw;
  r1.zw = floor(r1.zw);
  r1.zw = r1.zw / flowParams.xx;
  r1.zw = flowMap.Sample(flowSampler_s, r1.zw).xy;
  r1.zw = r1.zw + r1.zw;
  if (useSpecularZFeather != 0) {
    r6.zw = flowMap.Sample(flowSampler_s, v2.xy).xy;
    r9.xy = r6.zw + r6.zw;
    r9.zw = r9.xy * float2(-1,1) + float2(1,-1);
    r6.zw = r9.xw * float2(-1,1) + float2(1,0);
    r4.w = dot(r9.zw, r6.zw);
    r4.w = sqrt(r4.w);
    r4.w = r4.w * normalsFlowScaleMin.y + normalsFlowScaleMin.x;
    r6.zw = normalAdjustAndGloss.xy * r4.ww;
  } else {
    r6.zw = normalAdjustAndGloss.xy;
  }
  r2.xy = -r2.zw * r2.xy + float2(1,1);
  r2.xy = r2.xy * r2.xy;
  r2.xy = r4.xy * r4.xy + r2.xy;
  r2.xy = rsqrt(r2.xy);
  if (useOrientedNormalMap == 0) {
    r2.z = gameTime.w * flowParams.y;
    r9.xy = r5.xy * float2(-1,1) + float2(1,-1);
    r9.xy = r9.xy * r2.zz + r1.xy;
    r9.xy = normalMap.SampleLevel(normalSampler_s, r9.xy, r4.z).xy;
    r9.zw = r5.zw * float2(-1,1) + float2(1,-1);
    r9.zw = r9.zw * r2.zz + r1.xy;
    r9.zw = normalMap.SampleLevel(normalSampler_s, r9.zw, r4.z).xy;
    r9.zw = r9.zw + -r9.xy;
    r9.xy = r4.xx * r9.zw + r9.xy;
    r9.zw = r6.xy * float2(-1,1) + float2(1,-1);
    r9.zw = r9.zw * r2.zz + r1.xy;
    r9.zw = normalMap.SampleLevel(normalSampler_s, r9.zw, r4.z).xy;
    r10.xy = r1.zw * float2(-1,1) + float2(1,-1);
    r1.xy = r10.xy * r2.zz + r1.xy;
    r1.xy = normalMap.SampleLevel(normalSampler_s, r1.xy, r4.z).xy;
    r1.xy = r1.xy + -r9.zw;
    r1.xy = r4.xx * r1.xy + r9.zw;
    r1.xy = r1.xy + -r9.xy;
    r1.xy = r4.yy * r1.xy + r9.xy;
    r1.xy = r1.xy * r6.zz + r6.ww;
  } else {
    r2.zw = r5.xy * float2(-1,1) + float2(1,-1);
    r4.w = dot(r2.zw, r2.zw);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r9.xy = r2.zw / r4.ww;
    r9.z = -r9.x;
    r5.x = dot(v2.xy, r9.yz);
    r5.y = dot(v2.xy, -r9.xy);
    r10.xy = normalMapScale.xy * r5.xy;
    r2.z = gameTime.w * r4.w;
    r10.z = -r2.z * flowParams.y + r10.y;
    r2.zw = normalMap.SampleLevel(normalSampler_s, r10.xz, r4.z).xy;
    r2.zw = r2.zw * r6.zz + r6.ww;
    r5.x = dot(r2.zw, r9.yz);
    r5.y = dot(r2.zw, -r9.xy);
    r2.zw = r5.zw * float2(-1,1) + float2(1,-1);
    r4.w = dot(r2.zw, r2.zw);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r9.xy = r2.zw / r4.ww;
    r9.z = -r9.x;
    r10.x = dot(v2.xy, r9.yz);
    r10.y = dot(v2.xy, -r9.xy);
    r10.xy = normalMapScale.xy * r10.xy;
    r2.z = gameTime.w * r4.w;
    r10.z = -r2.z * flowParams.y + r10.y;
    r2.zw = normalMap.SampleLevel(normalSampler_s, r10.xz, r4.z).xy;
    r2.zw = r2.zw * r6.zz + r6.ww;
    r10.x = dot(r2.zw, r9.yz);
    r10.y = dot(r2.zw, -r9.xy);
    r2.zw = r10.xy + -r5.xy;
    r2.zw = r4.xx * r2.zw + r5.xy;
    r5.xy = r6.xy * float2(-1,1) + float2(1,-1);
    r4.w = dot(r5.xy, r5.xy);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r5.xy = r5.xy / r4.ww;
    r5.z = -r5.x;
    r6.x = dot(v2.xy, r5.yz);
    r6.y = dot(v2.xy, -r5.xy);
    r9.xy = normalMapScale.xy * r6.xy;
    r4.w = gameTime.w * r4.w;
    r9.z = -r4.w * flowParams.y + r9.y;
    r6.xy = normalMap.SampleLevel(normalSampler_s, r9.xz, r4.z).xy;
    r6.xy = r6.xy * r6.zz + r6.ww;
    r9.x = dot(r6.xy, r5.yz);
    r9.y = dot(r6.xy, -r5.xy);
    r1.zw = r1.zw * float2(-1,1) + float2(1,-1);
    r4.w = dot(r1.zw, r1.zw);
    r4.w = sqrt(r4.w);
    r4.w = max(9.99999975e-06, r4.w);
    r5.xy = r1.zw / r4.ww;
    r5.z = -r5.x;
    r6.x = dot(v2.xy, r5.yz);
    r6.y = dot(v2.xy, -r5.xy);
    r10.xy = normalMapScale.xy * r6.xy;
    r1.z = gameTime.w * r4.w;
    r10.z = -r1.z * flowParams.y + r10.y;
    r1.zw = normalMap.SampleLevel(normalSampler_s, r10.xz, r4.z).xy;
    r1.zw = r1.zw * r6.zz + r6.ww;
    r6.x = dot(r1.zw, r5.yz);
    r6.y = dot(r1.zw, -r5.xy);
    r1.zw = r6.xy + -r9.xy;
    r1.zw = r4.xx * r1.zw + r9.xy;
    r1.zw = r1.zw + -r2.zw;
    r1.xy = r4.yy * r1.zw + r2.zw;
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
  r4.x = saturate(dot(r1.xyz, -r2.yzw));
  if (v10.x != 0) {
    r5.xy = (int2)v0.xy;
    r5.zw = float2(0,0);
    r5.x = ifloatZScene.Load(r5.xyz).x;
    r5.y = cmp(r5.x >= 0.984375);
    r5.z = 1.01587307 * r5.x;
    r5.x = r5.x * 64 + -63;
    r5.x = r5.y ? r5.x : r5.z;
    r5.x = max(9.99999994e-09, r5.x);
    r5.x = rcp(r5.x);
    r5.x = -v0.w + r5.x;
    r5.x = max(0, r5.x);
    r5.x = min(ssrParams.x, r5.x);
    r5.y = opacityScale.y;
  } else {
    r5.x = sqrt(r2.x);
    r5.y = opacityScale.x;
  }
  if (useFoam != 0) {
    r5.z = foamBase.Sample(foamSampler_s, v8.xy).x;
    r5.w = foamBase.Sample(foamSampler_s, v8.zw).x;
    r6.x = foamBase.Sample(foamSampler_s, v9.xy).x;
    r6.y = foamBase.Sample(foamSampler_s, v9.zw).x;
    r5.z = r5.z + r5.w;
    r5.z = r5.z + r6.x;
    r5.z = r5.z + r6.y;
    r5.z = foamColorScale * r5.z;
    r5.w = flowMap.Sample(flowSampler_s, v2.xy).z;
    r5.w = foamSpacing.y * r5.w + foamSpacing.x;
    r5.z = max(0, r5.z);
    r5.z = log2(r5.z);
    r5.z = r5.w * r5.z;
    r5.z = exp2(r5.z);
    r5.w = foamZFeather * r5.x;
    r5.w = min(1, r5.w);
    r6.x = r5.z * r5.w;
    r5.z = -r5.z * r5.w + 1;
    r5.z = normalAdjustAndGloss.z * r5.z;
  } else {
    r6.x = 0;
    r5.z = normalAdjustAndGloss.z;
  }
  r5.w = dot(-v7.xyz, -v7.xyz);
  r5.w = rsqrt(r5.w);
  r6.yzw = -v7.xyz * r5.www;
  r0.yz = (uint2)r0.yz;
  r0.y = dot(r0.yz, float2(0.0671105608,0.00583714992));
  r0.y = frac(r0.y);
  r0.y = 52.9829178 * r0.y;
  r0.y = frac(r0.y);
  r0.y = r0.y * 6.28318548 + gameTick.w;
  sincos(r0.y, r9.x, r10.x);
  r0.y = dot(-r6.yzw, r1.xyz);
  r0.y = r0.y + r0.y;
  r11.xyz = r1.xyz * -r0.yyy + -r6.yzw;
  r0.y = 1 + -r5.z;
  r0.y = 5 * r0.y;
  r9.yzw = -globalProbeConstants.data[0].xyz + v7.xyz;
  r12.x = globalProbeConstants.data[0].w * r9.y;
  r12.yz = globalProbeConstants.data[1].xy * r9.zw;
  r9.yzw = saturate(float3(0.5,0.5,0.5) + r12.xyz);
  r12.xy = globalProbeConstants.data[1].zw * r9.yz;
  r12.z = globalProbeConstants.data[2].x * r9.w;
  r9.yzw = globalProbeConstants.data[2].yzw + r12.xyz;
  r10.yzw = cmp(float3(0,0,0) < r1.xyz);
  r12.xyz = r10.yzw ? float3(0,0,0) : float3(0.5,0.5,0.5);
  r12.w = 0;
  r10.yzw = r12.wwx + r9.yzw;
  r10.yzw = gProbeXArray.SampleLevel(samplerLinearClamp_s, r10.yzw, 0).xyz;
  r13.xyz = r1.xyz * r1.xyz;
  r13.xyz = sunConstants.globalProbeExposure * r13.xyz;
  r14.xyz = r12.wwy + r9.yzw;
  r14.xyz = gProbeYArray.SampleLevel(samplerLinearClamp_s, r14.xyz, 0).xyz;
  r14.xyz = r14.xyz * r13.yyy;
  r10.yzw = r10.yzw * r13.xxx + r14.xyz;
  r9.yzw = r12.wwz + r9.yzw;
  r9.yzw = gProbeZArray.SampleLevel(samplerLinearClamp_s, r9.yzw, 0).xyz;
  r9.yzw = r9.yzw * r13.zzz + r10.yzw;
  r1.w = 0;
  r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r1.xyzw, 6).xyz;
  r9.yzw = r10.yzw * r9.yzw;
  r0.z = dot(r9.yzw, float3(0.212599993,0.715200007,0.0722000003));
  r11.w = 0;
  r10.yzw = gReflectionProbeArray.SampleLevel(samplerLinear_s, r11.xyzw, r0.y).xyz;
  r0.y = sunConstants.globalProbeExposure + -r0.z;
  r0.y = r5.z * r0.y + r0.z;
  r10.yzw = r10.yzw * r0.yyy;
  if (useSSR != 0) {
    r0.y = dot(r2.yzw, r1.xyz);
    r0.y = r0.y + r0.y;
    r11.xyz = r1.xyz * -r0.yyy + r2.yzw;
    r0.y = dot(r2.yzw, -r1.xyz);
    r0.y = r0.y + r0.y;
    r12.xyz = r1.xyz * r0.yyy + r2.yzw;
    r11.xyz = v10.xxx ? r11.xyz : r12.xyz;
    if (useLoopedSSR != 0) {
      r12.xyz = viewMatrix._m10_m11_m12 * v7.yyy;
      r12.xyz = v7.xxx * viewMatrix._m00_m01_m02 + r12.xyz;
      r12.xyz = v7.zzz * viewMatrix._m20_m21_m22 + r12.xyz;
      r13.xyz = ssrParams.zzz * r11.xyz;
      r14.xyz = viewMatrix._m10_m11_m12 * r13.yyy;
      r13.xyw = r13.xxx * viewMatrix._m00_m01_m02 + r14.xyz;
      r13.xyz = r13.zzz * viewMatrix._m20_m21_m22 + r13.xyw;
      r0.y = min(1000, ssrParams.x);
      r12.xyz = r13.xyz * float3(10,10,10) + r12.xyz;
      r0.y = r0.y / ssrParams.z;
      r14.xyz = r10.yzw;
      r15.xyz = r12.xyz;
      r0.z = 0;
      while (true) {
        r1.w = (int)r0.z;
        r1.w = cmp(r1.w >= r0.y);
        if (r1.w != 0) break;
        r15.xyz = r15.xyz + r13.xyz;
        r16.xyz = projectionMatrix._m10_m11_m13 * r15.yyy;
        r16.xyz = r15.xxx * projectionMatrix._m00_m01_m03 + r16.xyz;
        r16.xyz = r15.zzz * projectionMatrix._m20_m21_m23 + r16.xyz;
        r16.xyz = projectionMatrix._m30_m31_m33 + r16.xyz;
        r1.w = max(abs(r16.x), abs(r16.y));
        r1.w = cmp(r16.z < r1.w);
        if (r1.w != 0) {
          break;
        }
        r16.xy = r16.xy / r16.zz;
        r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r1.w = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r16.xy, 1).x;
        r5.z = cmp(abs(r1.w) < r15.z);
        r8.w = cmp(abs(r1.w) >= v0.w);
        r5.z = r5.z ? r8.w : 0;
        if (r5.z != 0) {
          r1.w = r15.z + -abs(r1.w);
          r1.w = ssrParams.w * r1.w;
          r16.xyz = -r1.www * r13.xyz + r15.xyz;
          r17.xyz = projectionMatrix._m10_m11_m13 * r16.yyy;
          r16.xyw = r16.xxx * projectionMatrix._m00_m01_m03 + r17.xyz;
          r16.xyz = r16.zzz * projectionMatrix._m20_m21_m23 + r16.xyw;
          r16.xyz = projectionMatrix._m30_m31_m33 + r16.xyz;
          r16.xy = r16.xy / r16.zz;
          r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r16.xyz = iResolveScene.SampleLevel(bilinearClamp_s, r16.xy, 0).xyz;
          r16.xyz = relHDRExposure.xxx * r16.xyz;
          r14.xyz = r16.xyz;
          break;
        }
        r0.z = (int)r0.z + 1;
      }
      r10.yzw = r14.xyz;
    } else {
      r0.y = ssrParams.y * r5.x;
      r11.xyz = r11.xyz * r0.yyy + v7.xyz;
      r12.xyz = viewProjectionMatrix._m10_m11_m13 * r11.yyy;
      r11.xyw = r11.xxx * viewProjectionMatrix._m00_m01_m03 + r12.xyz;
      r11.xyz = r11.zzz * viewProjectionMatrix._m20_m21_m23 + r11.xyw;
      r11.xyz = viewProjectionMatrix._m30_m31_m33 + r11.xyz;
      r0.yz = r11.xy / r11.zz;
      r1.w = max(abs(r0.y), abs(r0.z));
      r0.yz = r0.yz * float2(0.5,-0.5) + float2(0.5,0.5);
      r5.z = ifloatZSceneDownsampled.SampleLevel(bilinearClamp_s, r0.yz, 0).x;
      r5.z = cmp(abs(r5.z) >= v0.w);
      r1.w = cmp(r1.w < 1);
      r1.w = r1.w ? r5.z : 0;
      r11.xyz = iResolveScene.Sample(bilinearClamp_s, r0.yz).xyz;
      if (r1.w != 0) {
        r10.yzw = relHDRExposure.xxx * r11.xyz;
      }
    }
  }
  r0.y = dot(r1.xyz, sunConstants.wldDir.xyz);
  r0.z = saturate(r0.y);
  r1.w = cmp(0 >= r0.z);
  if (r1.w != 0) {
    r5.z = 0;
  }
  if (r1.w == 0) {
    r11.xyz = sunConstants.sstLightingConstants.offToPinTransform._m10_m11_m12 * v7.yyy;
    r11.xyz = v7.xxx * sunConstants.sstLightingConstants.offToPinTransform._m00_m01_m02 + r11.xyz;
    r11.xyz = v7.zzz * sunConstants.sstLightingConstants.offToPinTransform._m20_m21_m22 + r11.xyz;
    r11.xyz = sunConstants.sstLightingConstants.offToPinTransform._m30_m31_m32 + r11.xyz;
    r1.w = -sunConstants.splitDepthOffset + r11.z;
    r1.w = -r1.w * 6.10351563e-05 + 1;
    r8.w = saturate(r1.w);
    r8.w = cmp(r1.w == r8.w);
    if (r8.w != 0) {
      r8.w = 0;
      r11.w = 0;
      while (true) {
        r12.x = cmp(r8.w >= 3);
        if (r12.x != 0) break;
        r12.x = (uint)r8.w;
        r12.yz = -sunConstants.splitPinTransform[r12.x].xy + r11.xy;
        r12.y = max(abs(r12.y), abs(r12.z));
        r11.w = sunConstants.splitPinTransform[r12.x].z * r12.y;
        r12.x = cmp(r11.w < 1);
        if (r12.x != 0) {
          break;
        }
        r8.w = 1 + r8.w;
        r11.w = 0;
      }
    } else {
      r8.w = 3;
      r11.w = 0;
    }
    r12.x = cmp(r8.w >= 3);
    if (r12.x != 0) {
      r12.yzw = sunConstants.sstLightingConstants.constants.inchesPerTexel * float3(128,0.5,0.5);
      r13.xz = rcp(r12.yy);
      r13.y = -r13.z;
      r12.yzw = r11.xyx * r13.xyz + r12.zwz;
      r13.xyz = sunConstants.sstLightingConstants.constants.dimensionInTiles.xyx + float3(-0.0078125,-0.0078125,-0.0078125);
      r12.yzw = max(float3(0,0,0), r12.yzw);
      r12.yzw = min(r12.yzw, r13.xyz);
      r13.xy = sunConstants.sstLightingConstants.coordScale * r12.wz;
      r13.xy = floor(r13.xy);
      r13.y = sunConstants.sstLightingConstants.constants.dimensionInTiles.x * r13.y;
      r13.x = r13.y * sunConstants.sstLightingConstants.coordScale + r13.x;
      r13.x = (uint)r13.x;
      r13.x = (int)r13.x + (int10)sunConstants.sstLightingConstants.rootOffset;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r13.y, r13.x, l(0), t23.xxxx
    r13.y = samp0[]..swiz;
      r13.z = (int)r13.y & 0x40000000;
      r13.w = (uint)r13.y << 2;
      if (r13.z == 0) {
        r13.z = (int)r13.y & 0x01ffffff;
        r14.x = (int)r13.z + (int)r13.x;
        r13.x = (uint)r13.y >> 25;
        r13.x = (uint)r13.x;
        r12.yzw = r13.xxx * r12.yzw;
        r12.yzw = frac(r12.yzw);
        r12.yzw = float3(128,128,128) * r12.yzw;
        r12.yzw = (uint3)r12.yzw;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.z, r14.x, l(0), t23.xxxx
      r14.z = samp0[]..swiz;
        r13.xy = (uint2)r12.wz >> int2(6,6);
        r13.z = (int)r14.z & 0xc0000000;
        r14.w = (int)r14.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
      r14.w = samp0[]..swiz;
        r13.y = r13.y ? r14.z : r14.w;
        r14.w = (uint)r13.y >> 13;
        r13.x = r13.x ? r14.w : r13.y;
        r13.x = (int)r13.x & 8191;
        r15.x = (int)r13.x + (int)r14.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
      r15.z = samp0[]..swiz;
        r14.y = 0;
        r15.y = 1;
        r15.xyz = r13.zzz ? r14.xyz : r15.xyz;
        r16.yz = r13.zz ? float2(8.40779079e-45,1.40129846e-45) : float2(7.00649232e-45,2.80259693e-45);
        r13.xy = (uint2)r12.wz >> (uint2)r16.yy;
        r13.xy = (int2)r13.xy & int2(1,1);
        r14.w = (int)r15.z & 0xc0000000;
        r15.w = (int)r15.x + 1;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.w, r15.w, l(0), t23.xxxx
      r15.w = samp0[]..swiz;
        r13.y = r13.y ? r15.z : r15.w;
        r15.w = (uint)r13.y >> 13;
        r13.x = r13.x ? r15.w : r13.y;
        r13.x = (int)r13.x & 8191;
        r16.x = (int)r13.x + (int)r15.x;
      // Known bad code for instruction (needs manual fix):
            ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.w, r16.x, l(0), t23.xxxx
      r16.w = samp0[]..swiz;
        r15.xyz = r14.www ? r15.xyz : r16.xzw;
        r13.xyz = r13.zzz ? r14.xyz : r15.xyz;
        r14.x = (int)r13.z & 0xc0000000;
        if (r14.x == 0) {
          r14.x = (int)-r13.y + 6;
          r14.xy = (uint2)r12.wz >> (uint2)r14.xx;
          r14.z = (int)r13.z | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.y = (((uint)r14.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.x = (((uint)r14.x << 0) & bitmask.x) | ((uint)r14.y & ~bitmask.x);
          r14.x = (int)r14.x * 10;
          r14.x = (uint)r14.z >> (uint)r14.x;
          r14.x = (int)r14.x & 1023;
          r14.x = (int)r13.x + (int)r14.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.x, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          r14.yz = (int2)r13.yy + int2(1,2);
          r13.y = (int)-r14.y + 6;
          r15.xy = (uint2)r12.wz >> (uint2)r13.yy;
          r13.y = (int)r14.w & 0xc0000000;
          r15.z = (int)r14.w | 0x40000000;
          bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r15.y = (((uint)r15.y << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.x = ((~(-1 << 1)) << 0) & 0xffffffff;  r15.x = (((uint)r15.x << 0) & bitmask.x) | ((uint)r15.y & ~bitmask.x);
          r15.x = (int)r15.x * 10;
          r15.x = (uint)r15.z >> (uint)r15.x;
          r15.x = (int)r15.x & 1023;
          r15.x = (int)r14.x + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r15.z, r15.x, l(0), t23.xxxx
        r15.z = samp0[]..swiz;
          r15.y = r14.z;
          r15.xyz = r13.yyy ? r14.xyw : r15.xyz;
          r14.y = (int)-r15.y + 6;
          r14.yz = (uint2)r12.wz >> (uint2)r14.yy;
          r15.y = (int)r15.z & 0xc0000000;
          r15.w = (int)r15.z | 0x40000000;
          bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r14.z = (((uint)r14.z << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
          bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r14.y = (((uint)r14.y << 0) & bitmask.y) | ((uint)r14.z & ~bitmask.y);
          r14.y = (int)r14.y * 10;
          r14.y = (uint)r15.w >> (uint)r14.y;
          r14.y = (int)r14.y & 1023;
          r16.x = (int)r14.y + (int)r15.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r16.y, r16.x, l(0), t23.xxxx
        r16.y = samp0[]..swiz;
          r14.yz = r15.yy ? r15.xz : r16.xy;
          r13.xz = r13.yy ? r14.xw : r14.yz;
        }
        r13.y = (int)r13.z & 0xc0000000;
        if (r13.y == 0) {
          if (14 == 0) r14.x = 0; else if (14+15 < 32) {           r14.x = (uint)r13.z << (32-(14 + 15)); r14.x = (uint)r14.x >> (32-14);          } else r14.x = (uint)r13.z >> 15;
          r14.x = (uint)r14.x;
          r14.x = sunConstants.sstLightingConstants.constants.spanInInches * r14.x;
          r14.yz = (int2)r13.zz & int2(32767,536870912);
          r14.y = (uint)r14.y;
          r14.y = sunConstants.sstLightingConstants.constants.spanInInches * r14.y;
          r14.xy = float2(6.10388815e-05,3.05185094e-05) * r14.xy;
          r14.w = (int)r12.z & 3;
          r14.w = (int)r13.x + (int)r14.w;
          r14.w = (int)r14.w + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r14.w, r14.w, l(0), t23.xxxx
        r14.w = samp0[]..swiz;
          bitmask.x = ((~(-1 << 2)) << 3) & 0xffffffff;  r15.x = (((uint)r12.y << 3) & bitmask.x) | ((uint)0 & ~bitmask.x);
          bitmask.y = ((~(-1 << 2)) << 1) & 0xffffffff;  r15.y = (((uint)r12.z << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
          bitmask.z = ((~(-1 << 1)) << 4) & 0xffffffff;  r15.z = (((uint)r12.w << 4) & bitmask.z) | ((uint)0 & ~bitmask.z);
          r12.y = (uint)r14.w >> (uint)r15.x;
          r12.y = (int)r12.y & 255;
          r12.y = (uint)r12.y;
          r12.y = r12.y * r14.y;
          r12.y = r12.y * 0.00392156886 + r14.x;
          r12.z = (int)r15.y + 1;
          if (1 == 0) r12.w = 0; else if (1+1 < 32) {           r12.w = (uint)r12.w << (32-(1 + 1)); r12.w = (uint)r12.w >> (32-1);          } else r12.w = (uint)r12.w >> 1;
          r12.z = (int)r12.w + (int)r12.z;
          r12.z = (int)r12.z + (int)r13.x;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          r12.z = (uint)r12.z >> (uint)r15.z;
          r12.z = (int)r12.z & 0x0000ffff;
          r12.z = (uint)r12.z;
          r12.z = r12.z * r14.y;
          r12.z = r12.z * 1.52590219e-05 + r14.x;
          r13.w = r14.z ? r12.y : r12.z;
        } else {
          r12.y = (int)r13.z & 0x80000000;
          r12.z = (int)r13.x + 1;
        // Known bad code for instruction (needs manual fix):
                ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r12.z, r12.z, l(0), t23.xxxx
        r12.z = samp0[]..swiz;
          r12.y = r12.y ? r12.z : 0;
          r12.z = (uint)r13.z << 2;
          r12.w = (uint)r12.y >> 16;
          r12.y = (int)r12.y & 0x0000ffff;
          r12.yw = f16tof32(r12.yw);
          r12.z = r11.x * r12.w + r12.z;
          r12.y = r11.y * r12.y + r12.z;
          r13.w = r13.y ? r12.y : r13.w;
        }
      }
      r11.z = -sunConstants.sstLightingConstants.constants.inchesPerTexel * 2 + r11.z;
      r11.z = cmp(r13.w < r11.z);
      r5.z = r11.z ? 0 : 1;
    }
    if (r12.x == 0) {
      if (enableDitheredShadow == 0) {
        r11.z = (uint)r8.w;
        r12.xy = -sunConstants.splitPinTransform[r11.z].xy + r11.xy;
        r12.xy = sunConstants.splitPinTransform[r11.z].zz * r12.xy;
        r12.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.z = (int16)sunConstants.splitArrayOffset;
        r12.z = r11.z + r8.w;
        r11.z = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r1.w).x;
        r12.x = gTransShadowmapArray.SampleLevel(samp0_s, r12.xyz, 0).x;
        r11.z = r12.x + r11.z;
        r11.z = saturate(-1 + r11.z);
        r12.x = r11.z * r11.z;
        r5.z = r12.x * r11.z;
      }
      if (enableDitheredShadow != 0) {
        r12.x = -r9.x;
        r11.z = (uint)r8.w;
        r8.w = 1 + r8.w;
        r8.w = min(2, r8.w);
        r8.w = (uint)r8.w;
        r11.w = 1 + -r11.w;
        r11.w = 28 * r11.w;
        r11.w = (uint)r11.w;
        r13.xy = -sunConstants.splitPinTransform[r11.z].xy + r11.xy;
        r13.xy = sunConstants.splitPinTransform[r11.z].zz * r13.xy;
        r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r11.xy = -sunConstants.splitPinTransform[r8.w].xy + r11.xy;
        r11.xy = sunConstants.splitPinTransform[r8.w].zz * r11.xy;
        r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
        r12.y = r10.x;
        r12.z = r9.x;
        r12.w = 0;
        r13.z = 0;
        while (true) {
          r13.w = cmp((uint)r13.z >= 8);
          if (r13.w != 0) break;
          r13.w = cmp((uint)r11.w < (uint)r13.z);
          r14.xy = r13.ww ? r11.xy : r13.xy;
          r14.z = r13.w ? sunConstants.splitPinTransform[r8.w].w : sunConstants.splitPinTransform[r11.z].w;
          r13.w = r13.w ? r8.w : r11.z;
          r15.x = dot(icb[r13.z+0].yx, r12.xy);
          r15.y = dot(icb[r13.z+0].yx, r12.yz);
          r14.xy = r15.xy * r14.zz + r14.xy;
          r13.w = (int)r13.w + (int16)sunConstants.splitArrayOffset;
          r14.z = (uint)r13.w;
          r13.w = gSunShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r14.xyz, r1.w).x;
          r14.x = gTransShadowmapArray.SampleLevel(samp0_s, r14.xyz, 0).x;
          r13.w = r14.x + r13.w;
          r13.w = saturate(-1 + r13.w);
          r12.w = r13.w * 0.125 + r12.w;
          r13.z = (int)r13.z + 1;
        }
        r1.w = r12.w * r12.w;
        r5.z = r1.w * r12.w;
      }
    }
  }
  r1.w = viewmodelSunShadowRaw & 0x0000ffff;
  r8.w = cmp(0 < (uint)r1.w);
  r11.x = cmp(0 < r5.z);
  r8.w = r8.w ? r11.x : 0;
  if (r8.w != 0) {
    r1.w = (int)r1.w + numLights;
    r1.w = (int)r1.w + -1;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r8.w, r1.w, l(52), t12.xxxx
  r8.w = samp0[]..swiz;
  // Known bad code for instruction (needs manual fix):
    ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.xyzw, r1.w, l(68), t12.xyzw
  r11.x = samp0[]..swiz;
  r11.y = samp0[]..swiz;
  r11.z = samp0[]..swiz;
  r11.w = samp0[]..swiz;
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
    r17.xyz = r1.xyz * r0.yyy + v7.xyz;
    r17.w = 1;
    r11.x = dot(r11.xyzw, r17.xyzw);
    r11.y = dot(r12.xyzw, r17.xyzw);
    r0.y = dot(r13.xyzw, r17.xyzw);
    r11.z = dot(r14.xyzw, r17.xyzw);
    r11.w = cmp(r11.z < r0.y);
    r11.xy = r11.xy / r11.zz;
    r11.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xy = r11.xy + r16.zw;
    r11.xy = r11.xy * r16.xy;
    r12.xy = r8.ww / r15.xz;
    r12.zw = float2(1,1) + -r12.xy;
    r12.zw = cmp(r11.xy >= r12.zw);
    r12.xy = cmp(r12.xy >= r11.xy);
    r12.xy = (int2)r12.xy | (int2)r12.zw;
    r12.x = (int)r12.y | (int)r12.x;
    r11.w = (int)r11.w | (int)r12.x;
    if (r11.w == 0) {
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r11.w, r1.w, l(28), t12.xxxx
    r11.w = samp0[]..swiz;
    // Known bad code for instruction (needs manual fix):
        ld_structured_indexable(structured_buffer, stride=240)(mixed,mixed,mixed,mixed) r12.xy, r1.w, l(164), t12.xyxx
    r12.x = samp0[]..swiz;
    r12.y = samp0[]..swiz;
      r11.xy = saturate(r11.xy);
      r13.xy = r11.xy * r15.xz + r15.yw;
      r1.w = r12.y * r11.z;
      r0.y = r12.x * r11.z + r0.y;
      r0.y = r0.y / r1.w;
      r0.y = max(6.10351563e-05, r0.y);
      r1.w = r11.w ? 0.000000 : 0;
      if (enableDitheredShadow != 0) {
        r11.x = -r9.x;
        r12.z = (uint)r1.w;
        r11.y = r10.x;
        r11.z = r9.x;
        r9.x = 0;
        r10.x = 0;
        while (true) {
          r11.w = cmp((int)r10.x >= 8);
          if (r11.w != 0) break;
          r14.x = dot(icb[r10.x+0].yx, r11.xy);
          r14.y = dot(icb[r10.x+0].yx, r11.yz);
          r12.xy = r14.xy * r8.ww + r13.xy;
          r11.w = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r12.xyz, r0.y).x;
          r9.x = r11.w * 0.125 + r9.x;
          r10.x = (int)r10.x + 1;
        }
      } else {
        r13.z = (uint)r1.w;
        r9.x = gSpotShadowmapArray.SampleCmpLevelZero(ShadowSamplerComparisonState_s, r13.xyz, r0.y).x;
      }
      r0.y = r9.x * r9.x;
      r0.y = r0.y * r9.x;
    } else {
      r0.y = 1;
    }
    r5.z = r5.z * r0.y;
  }
  r0.y = cmp(0 < r0.z);
  r1.w = cmp(0 < r5.z);
  if (r1.w != 0) {
    if (sunConstants.sunCookieIndex != 0) {
      r3.w = 1;
      r1.w = dot(sunConstants.sunCookieTransform[0].xyzw, r3.xyzw);
      r3.x = dot(sunConstants.sunCookieTransform[1].xyzw, r3.xyzw);
      r11.x = frac(r1.w);
      r11.y = frac(r3.x);
      r1.w = -1 + (int14)sunConstants.sunCookieIndex;
      r11.z = (uint)r1.w;
      r3.xyz = gCookieArray.SampleLevel(samplerLinear_s, r11.xyz, 0).xyz;
      r3.xyz = float3(-1,-1,-1) + r3.xyz;
      r3.xyz = sunConstants.sunCookieIntensity * r3.xyz + float3(1,1,1);
      r3.xyz = sunConstants.color.xyz * r3.xyz;
    } else {
      r3.xyz = sunConstants.color.xyz;
    }
    r3.xyz = r5.zzz * r3.xyz;
    r1.w = saturate(dot(r1.xyz, r6.yzw));
    r1.w = r1.w + r0.z;
    r1.w = r0.z / r1.w;
    r11.xyz = r3.xyz * r1.www + r9.yzw;
    r12.xyz = -v7.xyz * r5.www + sunConstants.wldDir.xyz;
    r1.w = dot(r12.xyz, r12.xyz);
    r1.w = rsqrt(r1.w);
    r12.xyz = r12.xyz * r1.www;
    r1.z = saturate(dot(r1.xyz, r12.xyz));
    r1.w = saturate(dot(r12.xyz, r6.yzw));
    r3.w = r1.z * r1.z;
    r5.zw = r3.ww * specularLobeRoughnessControl.xz + float2(1,1);
    r5.zw = r5.zw * r5.zw;
    r5.zw = specularLobeRoughnessControl.yw / r5.zw;
    r5.zw = r5.zw * r1.zz;
    r1.z = 4 * r1.w;
    r1.zw = r5.zw / r1.zz;
    r1.zw = lobeWeightingThicknessRefraction.xy * r1.zw;
    r6.yzw = r3.xyz * r1.zzz;
    r6.yzw = r6.yzw * r0.zzz + r10.yzw;
    r3.xyz = r3.xyz * r1.www;
    r3.xyz = r3.xyz * r0.zzz + r6.yzw;
  } else {
    r11.xyz = r9.yzw;
    r3.xyz = r10.yzw;
  }
  r6.yzw = r0.yyy ? r11.xyz : r9.yzw;
  r3.xyz = r0.yyy ? r3.xyz : r10.yzw;
  r4.yw = float2(0,0);
  r9.xyzw = colorMap.Sample(colorSampler_s, r4.xy).xyzw;
  r0.y = 1 + r5.x;
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
  r1.w = r5.x * 2 + 1;
  r1.w = log2(r1.w);
  r4.z = 0.0833333358 * r1.w;
  r10.xyzw = rColorRamp.Sample(bilinearClamp_s, r4.zw).xyzw;
  r4.yzw = r10.xyz * r0.xyz;
  r1.w = r10.w * r9.w;
  r5.xzw = r9.xyz * r6.yzw + -r4.yzw;
  r4.yzw = r1.www * r5.xzw + r4.yzw;
  r1.xyz = -r1.xyz * relHDRExposure.xxx + r4.yzw;
  r0.xyz = r5.yyy * r1.xyz + r0.xyz;
  r1.xyz = r8.xyz * r6.yzw + -r0.xyz;
  r0.xyz = r7.xxx * r1.xyz + r0.xyz;
  r1.xyz = r3.xyz * r0.www + r7.yzw;
  r0.w = 1 + -r4.x;
  r1.w = r0.w * r0.w;
  r1.w = r1.w * r1.w;
  r0.w = r1.w * r0.w;
  r0.w = r0.w * 0.980000019 + 0.0199999996;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  r1.xyz = foamColor.xyz * r6.yzw + -r0.xyz;
  r1.xyz = r6.xxx * r1.xyz + r0.xyz;
  r0.xyz = useFoam ? r1.xyz : r0.xyz;
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